/*
 * Lan Haoning 518021910270
 */
#include "cachelab.h"
#include <getopt.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <stdint.h>

typedef struct cache_line
{
    int64_t tag;
    int64_t timestamp;
} cache_line_t;

int main(int argc, char *argv[])
{
    int s = 0, E = 0, b = 0;
    FILE *tracefile;
    int hits = 0, misses = 0, evictions = 0;

    // parse the command
    int opt;
    while ((opt = getopt(argc, argv, "s:E:b:t:")) != -1)
    {
        switch (opt)
        {
        case 's':
            s = atoi(optarg);
            break;
        case 'E':
            E = atoi(optarg);
            break;
        case 'b':
            b = atoi(optarg);
            break;
        case 't':
            tracefile = fopen(optarg, "r");
            if (tracefile == NULL)
            {
                printf("no such tracefile\n");
                return 0;
            }
            break;
        default:
            printf("wrong input\n");
            return 0;
            break;
        }
    }

    int S = 1 << s;
    char line[100]; // store a line of tracefile
    cache_line_t *cache = (cache_line_t *)calloc(S, E * sizeof(cache_line_t));

    while (fgets(line, 100, tracefile))
    {
        int isMiss = 1;
        int isEvict = 1;
        int maxTimestamp = 0;

        if (line[1] == 'M' || line[1] == 'L' || line[1] == 'S')
        {
            if (line[1] == 'M')
            {
                hits++;
            }

            char addr[10] = "";
            for (int i = 3; line[i] != ','; i++)
            {
                addr[i - 3] = line[i];
            }

            int64_t address = strtoll(addr, NULL, 16);
            int64_t index = (address >> b) % S;
            int64_t tag = (address >> b) >> s;

            for (int i = index * E; i < (index + 1) * E; i++)
            {
                // hit
                if (cache[i].tag == tag && cache[i].timestamp != 0)
                {
                    hits++;
                    isMiss = 0;
                    isEvict = 0;

                    // all history++
                    for (int j = index * E; cache[j].timestamp != 0 && j < (index + 1) * E; j++)
                    {
                        cache[j].timestamp++;
                    }

                    // hit history set min
                    cache[i].timestamp = 1;
                    break;
                }
            }

            if (isMiss)
            {
                misses++;

                for (int i = index * E; i < (index + 1) * E; i++)
                {
                    // find a blank line, no need to isEvict
                    if (cache[i].tag == 0 && cache[i].timestamp == 0)
                    {
                        isEvict = 0;
                        cache[i].tag = tag;
                        // all history++
                        for (int j = index * E; j <= i; j++)
                        {
                            cache[j].timestamp++;
                        }
                        break;
                    }
                    // LRU
                    if (maxTimestamp < cache[i].timestamp)
                    {
                        maxTimestamp = cache[i].timestamp;
                    }
                }
            }

            if (isEvict)
            {
                evictions++;
                // find the evict line and update it
                for (int i = index * E; i < (index + 1) * E; i++)
                {
                    if (cache[i].timestamp == maxTimestamp)
                    {
                        cache[i].tag = tag;
                        cache[i].timestamp = 0;
                        break;
                    }
                }
                // all history ++
                for (int i = index * E; i < (index + 1) * E; i++)
                {
                    cache[i].timestamp++;
                }
            }
        }
    }

    free(cache);
    fclose(tracefile);
    printSummary(hits, misses, evictions);
    return 0;
}
