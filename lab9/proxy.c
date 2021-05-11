/*
 * proxy.c - ICS Web proxy
 *
 * 518021910xxx AlanHN
 */

#include "csapp.h"
#include <stdarg.h>
#include <sys/select.h>

/*
 * Function prototypes
 */
int parse_uri(char *uri, char *target_addr, char *path, char *port);
void format_log_entry(char *logstring, struct sockaddr_in *sockaddr, char *uri, size_t size);

/*
 * New wrappers for robust I/O routines
 */
ssize_t Rio_readn_w(int fd, void *ptr, size_t nbytes);
ssize_t Rio_readnb_w(rio_t *rp, void *usrbuf, size_t n);
ssize_t Rio_readlineb_w(rio_t *rp, void *usrbuf, size_t maxlen);
void Rio_writen_w(int fd, void *usrbuf, size_t n);

/*
 * New wrappers for reentrant protocol-independent helpers
 */
int Open_clientfd_w(char *hostname, char *port);
int Open_listenfd_w(char *port);

// argument for threads
typedef struct
{
    int connfd;
    struct sockaddr_in clientaddr;
} targ_t;

void *thread(void *vargp);
void doit(targ_t *vargp);

sem_t mutex;
/*
 * main - Main routine for the proxy program
 */
int main(int argc, char **argv)
{
    int listenfd, connfd;
    socklen_t clientlen;
    struct sockaddr_in clientaddr;

    pthread_t tid;
    targ_t *arg;

    /* Check arguments */
    if (argc != 2)
    {
        fprintf(stderr, "Usage: %s <port number>\n", argv[0]);
        exit(0);
    }

    if(0 > (listenfd = Open_listenfd_w(argv[1])))
    {
        fprintf(stderr, "can't open listen fd: %s\n", argv[1]);
        exit(0);
    }
    
    Signal(SIGPIPE, SIG_IGN);
    Sem_init(&mutex, 0, 1);

    while (1)
    {
        clientlen = sizeof(clientaddr);
        connfd = Accept(listenfd, (SA *)(&(clientaddr)), &clientlen);

        arg = Malloc(sizeof(targ_t));
        arg->connfd = connfd;
        arg->clientaddr = clientaddr;

        Pthread_create(&tid, NULL, thread, arg);
    }

    exit(0);
}

void *thread(void *vargp)
{
    Pthread_detach(Pthread_self());
    doit((targ_t *)vargp);
    return NULL;
}

void doit(targ_t *vargp)
{
    char buf[MAXLINE], method[MAXLINE], uri[MAXLINE], version[MAXLINE];
    char hostname[MAXLINE], pathname[MAXLINE], port[MAXLINE];
    char request_line[4 * MAXLINE];
    char logstring[MAXLINE];
    int client_connfd, server_connfd;
    int content_length = 0, receive_size = 0;
    int rc;
    rio_t client_rio, server_rio;

    client_connfd = vargp->connfd;

    //handle client
    Rio_readinitb(&client_rio, client_connfd);

    if (0 == Rio_readlineb_w(&client_rio, buf, MAXLINE))
    {
        fprintf(stderr, "cannot get request line\n");
        Close(client_connfd);
        return;
    }

    if( 3 != sscanf(buf, "%s %s %s", method, uri, version))
    {
        fprintf(stderr, "wrong format\n");
        Close(client_connfd);
        return;
    }

    if(-1 == parse_uri(uri, hostname, pathname, port))
    {
        fprintf(stderr, "can't parse uri\n");
        Close(client_connfd);
        return;
    }
    
    // handle server
    // Remember to use the wrapped function, or it may be timeout.
    if(0 > (server_connfd = Open_clientfd_w(hostname, port)))
    {
        fprintf(stderr, "cannot connect to server");
        Close(client_connfd);
        return;
    }

    Rio_readinitb(&server_rio, server_connfd);
    sprintf(request_line, "%s /%s %s\r\n", method, pathname, version);
    Rio_writen_w(server_connfd, request_line, strlen(request_line));

    //handle request header
    while (0 != (rc = Rio_readlineb_w(&client_rio, buf, MAXLINE)))
    {
        Rio_writen_w(server_connfd, buf, rc);
        if (!strcmp(buf,"\r\n"))
        {
            break;
        }
        if (!strncmp(buf,"Content-Length: ", 16))
        {
            sscanf(buf + 16, "%d", &content_length);
        }
    }

    // handle request body
    if (strcmp(method,"GET"))
    {
        if (0 == content_length)
        {
            while (0 != (rc = Rio_readlineb_w(&client_rio, buf, MAXLINE)))
            {
                Rio_writen_w(server_connfd, buf, rc);
                if (!strcmp(buf, "\r\n"))
                {
                    break;
                }
            }
        }
        else
        {
            for (int i = 0; i < content_length; i++)
            {
                if (0 < Rio_readnb_w(&client_rio, buf, 1))
                {
                    Rio_writen_w(server_connfd, buf, 1);
                }
            }
        }
    }
    content_length = 0;

    // response header
    while (0 != (rc = Rio_readlineb_w(&server_rio, buf, MAXLINE)) && strcmp("\r\n", buf))
    {
        Rio_writen_w(client_connfd, buf, rc);
        receive_size += rc;
        if (!strncmp(buf,"Content-Length: ", 16))
        {
            sscanf(buf + 16, "%d", &content_length);
        }
    }

    //empty line
    Rio_writen_w(client_connfd, "\r\n", 2);
    receive_size += 2;

    //response body
    if (0 == content_length)
    {
        while (0 != (rc = Rio_readlineb_w(&server_rio, buf, MAXLINE)))
        {
            Rio_writen_w(client_connfd, buf, rc);
            receive_size += rc;
            if (!strcmp( buf,"\r\n"))
            {
                break;
            }
        }
    }
    else
    {
        for (int i = 0; i < content_length; i++)
        {
            if (0 < Rio_readnb_w(&server_rio, buf, 1))
            {
                Rio_writen_w(client_connfd, buf, 1);
                receive_size++;
            }
        }
    }

    // write to log
    P(&mutex);
    FILE *file = fopen("proxy.log", "a");
    format_log_entry(logstring, &vargp->clientaddr, uri, receive_size);
    printf("%s\n", logstring);
    fclose(file);
    V(&mutex);

    // close
    Close(client_connfd);
    Close(server_connfd);
    Free(vargp);
    return;
}

/*
 * parse_uri - URI parser
 *
 * Given a URI from an HTTP proxy GET request (i.e., a URL), extract
 * the host name, path name, and port.  The memory for hostname and
 * pathname must already be allocated and should be at least MAXLINE
 * bytes. Return -1 if there are any problems.
 */
int parse_uri(char *uri, char *hostname, char *pathname, char *port)
{
    char *hostbegin;
    char *hostend;
    char *pathbegin;
    int len;

    if (strncasecmp(uri, "http://", 7) != 0)
    {
        hostname[0] = '\0';
        return -1;
    }

    /* Extract the host name */
    hostbegin = uri + 7;
    hostend = strpbrk(hostbegin, " :/\r\n\0");
    if (hostend == NULL)
        return -1;
    len = hostend - hostbegin;
    strncpy(hostname, hostbegin, len);
    hostname[len] = '\0';

    /* Extract the port number */
    if (*hostend == ':')
    {
        char *p = hostend + 1;
        while (isdigit(*p))
            *port++ = *p++;
        *port = '\0';
    }
    else
    {
        strcpy(port, "80");
    }

    /* Extract the path */
    pathbegin = strchr(hostbegin, '/');
    if (pathbegin == NULL)
    {
        pathname[0] = '\0';
    }
    else
    {
        pathbegin++;
        strcpy(pathname, pathbegin);
    }

    return 0;
}

/*
 * format_log_entry - Create a formatted log entry in logstring.
 *
 * The inputs are the socket address of the requesting client
 * (sockaddr), the URI from the request (uri), the number of bytes
 * from the server (size).
 */
void format_log_entry(char *logstring, struct sockaddr_in *sockaddr,
                      char *uri, size_t size)
{
    time_t now;
    char time_str[MAXLINE];
    char host[INET_ADDRSTRLEN];

    /* Get a formatted time string */
    now = time(NULL);
    strftime(time_str, MAXLINE, "%a %d %b %Y %H:%M:%S %Z", localtime(&now));

    if (inet_ntop(AF_INET, &sockaddr->sin_addr, host, sizeof(host)) == NULL)
        unix_error("Convert sockaddr_in to string representation failed\n");

    /* Return the formatted log entry string */
    sprintf(logstring, "%s: %s %s %zu", time_str, host, uri, size);
}

/*
 * New wrappers for robust I/O routines
 */
ssize_t Rio_readn_w(int fd, void *ptr, size_t nbytes)
{
    ssize_t n;

    if ((n = rio_readn(fd, ptr, nbytes)) < 0)
    {
        n = 0;
        fprintf(stderr, "Rio_readn_w error\n");
    }
    return n;
}

ssize_t Rio_readnb_w(rio_t *rp, void *usrbuf, size_t n)
{
    ssize_t rc;

    if ((rc = rio_readnb(rp, usrbuf, n)) < 0)
    {
        rc = 0;
        fprintf(stderr, "Rio_readnb_w error\n");
    }
    return rc;
}

ssize_t Rio_readlineb_w(rio_t *rp, void *usrbuf, size_t maxlen)
{
    ssize_t rc;

    if ((rc = rio_readlineb(rp, usrbuf, maxlen)) < 0)
    {
        rc = 0;
        fprintf(stderr, "Rio_readlineb_w error\n");
    }
    return rc;
}

void Rio_writen_w(int fd, void *usrbuf, size_t n)
{
    if (rio_writen(fd, usrbuf, n) != n)
    {
        fprintf(stderr, "Rio_writen_w error\n");
    }
}

/*
 * New wrappers for reentrant protocol-independent helpers
 */
int Open_clientfd_w(char *hostname, char *port) 
{
    int rc;

    if ((rc = open_clientfd(hostname, port)) < 0) 
    {
        fprintf(stderr, "Open_clientfd_w error\n");
    }
    return rc;
}

int Open_listenfd_w(char *port) 
{
    int rc;

    if ((rc = open_listenfd(port)) < 0)
    {
        fprintf(stderr, "Open_listenfd_w error\n");
    }
    return rc;
}