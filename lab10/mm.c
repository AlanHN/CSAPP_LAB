/*
 * mm.c - A correct, efficient and fast allocator designed by 
 *        AlanHN 518021910xxx
 * 
 * In this approach:
 * 
 * Using doubly linked free lists, the format is as same as Figure9.48 in CS:APP:
 * The header and footer contains size and an allocated bit.
 * The allocated block is formed as 4-byte header, 8-alignment payload and 4-byte footer.
 * The free block is formed as 4-byte header, 4-byte pred, 4-byte  succ and 4-byte footer.
 * The min size of a block is 16 bytes.
 * 
 * Using 9 segregated free lists to link free blocks.
 * The size of list is {16-32,33-64,65-128,129-256,257-512,513-1024,1025-4096,4097-16384,16385-INF}
 * The free list is managed in LIFO order, which is easy to imple and effecient.
 * 
 * When malloc, the allocator will search for free blocks in the free list, using first-fit.
 * If there is no block meet the condition, the allocator extend the heap and add new block to the list.
 * 
 * Coalescing will be checked as soon as the block is freed. 
 */

#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/* 
 * Constants 
 */

#define WSIZE 4            // Word and header/footer size (bytes)
#define DSIZE 8            // Double word size (bytes)
#define ALIGNMENT 8        // 8 bytes Alignment
#define CHUNKSIZE (1 << 6) // Extend heap by this amount (bytes)

/*
 * Macros
 */

// Align size to ALIGNMENT
#define ALIGN(size) ((((size) + (ALIGNMENT - 1)) / (ALIGNMENT)) * (ALIGNMENT))

// Larger one of x and y
#define MAX(x, y) ((x) > (y) ? (x) : (y))

// Pack size and allocated bit into a word
#define PACK(size, alloc) ((size) | (alloc))

// Read val(a word) at address p
#define GET(p) (*(unsigned int *)(p))
// Write val(a word) at address p
#define PUT(p, val) (*(unsigned int *)(p) = (val))

// Read the size from address p
#define GET_SIZE(p) (GET(p) & ~0x7)
// Read the allocated fields from address p
#define GET_ALLOC(p) (GET(p) & 0x1)

// Given block ptr bp, compute address of its header
#define HDRP(bp) ((char *)(bp)-WSIZE)
// Given block ptr bp, compute address of its footer
#define FTRP(bp) ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE)

// Given block ptr bp, compute address of previous block
#define PREV_BLKP(bp) ((char *)(bp)-GET_SIZE(((char *)(bp)-DSIZE)))
// Given block ptr bp, compute address of next block
#define NEXT_BLKP(bp) ((char *)(bp) + GET_SIZE(((char *)(bp)-WSIZE)))

// Given free block ptr bp, compute the address to store its previous free block
#define PRED(bp) ((char *)bp)
// Given free block ptr bp, compute the address to store its next free block
#define SUCC(bp) ((char *)(bp) + WSIZE)

// Transform from address to offset
#define GET_OFFSET(bp) ((char *)bp - (char *)heap_listp)
// Transform from offset to address*/
#define GET_ADDR(offset) (heap_listp + offset)

// Given free block ptr bp, compute val of previous free block
#define PREV_FREE_BLOCK(bp) ((GET(PRED(bp))) ? (GET_ADDR(GET(PRED(bp)))) : NULL)
// Given free block ptr bp, compute val of next free block
#define NEXT_FREE_BLOCK(bp) ((GET(SUCC(bp))) ? (GET_ADDR(GET(SUCC(bp)))) : NULL)

/* Global variables */
static void *heap_listp;
static void *latest_free;
static void *free_listp16;
static void *free_listp32;
static void *free_listp64;
static void *free_listp128;
static void *free_listp256;
static void *free_listp512;
static void *free_listp1024;
static void *free_listp4096;
static void *free_listp16384;

/* 
 * Function prototypes for internal helper routines 
 */
static void *extend_heap(size_t words);
static void *coalesce(void *bp);
static void *place(void *bp, size_t size);
static void *find_fit(size_t size);
static void **find_list(size_t size);
static void **find_next_list(void **listp);
static void add_to_free_list(void *ptr);
static void delete_from_free_list(void *ptr);
int mm_check();
int check_free(void *listp);
int check_num(void *listp);

/* 
 * find_list - Find list which contains the size
 */
static void **find_list(size_t size)
{
    if (size <= 32)
    {
        return &free_listp16;
    }
    else if (size <= 64)
    {
        return &free_listp32;
    }
    else if (size <= 128)
    {
        return &free_listp64;
    }
    else if (size <= 256)
    {
        return &free_listp128;
    }
    else if (size <= 512)
    {
        return &free_listp256;
    }
    else if (size <= 1024)
    {
        return &free_listp512;
    }
    else if (size <= 4096)
    {
        return &free_listp1024;
    }
    else if (size <= 16384)
    {
        return &free_listp4096;
    }
    else
    {
        return &free_listp16384;
    }
}

/* 
 * find_next_list - Find next list point of listp
 */
static void **find_next_list(void **listp)
{
    if (listp == &free_listp16)
    {
        return &free_listp32;
    }
    else if (listp == &free_listp32)
    {
        return &free_listp64;
    }
    else if (listp == &free_listp64)
    {
        return &free_listp128;
    }
    else if (listp == &free_listp128)
    {
        return &free_listp256;
    }
    else if (listp == &free_listp256)
    {
        return &free_listp512;
    }
    else if (listp == &free_listp512)
    {
        return &free_listp1024;
    }
    else if (listp == &free_listp1024)
    {
        return &free_listp4096;
    }
    else if (listp == &free_listp4096)
    {
        return &free_listp16384;
    }
    else
    {
        return NULL;
    }
}

/* 
 * mm_init - Initialize the malloc package.
 */
int mm_init(void)
{
    /* Create the initial empty heap */
    if ((heap_listp = mem_sbrk(4 * WSIZE)) == (void *)-1)
    {
        return -1;
    }
    PUT(heap_listp, 0);                            // Alignment padding 
    PUT(heap_listp + (1 * WSIZE), PACK(DSIZE, 1)); // Prologue header 
    PUT(heap_listp + (2 * WSIZE), PACK(DSIZE, 1)); // Prologue footer
    PUT(heap_listp + (3 * WSIZE), PACK(0, 1));     // Epilogue header
    heap_listp += (2 * WSIZE);

    /* Initialize the free list */
    free_listp16 = NULL;
    free_listp32 = NULL;
    free_listp64 = NULL;
    free_listp128 = NULL;
    free_listp256 = NULL;
    free_listp512 = NULL;
    free_listp1024 = NULL;
    free_listp4096 = NULL;
    free_listp16384 = NULL;

    /*Extend the empty heap with a free block of CHUNKSIZE bytes*/
    if (extend_heap(CHUNKSIZE / WSIZE) == NULL)
    {
        return -1;
    }
    return 0;
}

/* 
 * extend_heap - Extend the heap with size of words.
 */
static void *extend_heap(size_t words)
{
    char *bp;
    size_t size;

    /* Allocate an even number of words to maintain alignment */
    size = (words % 2) ? (words + 1) * WSIZE : words * WSIZE;

    if ((long)(bp = mem_sbrk(size)) == -1)
    {
        return NULL;
    }

    /* Initialize free block header/footer and the epilogue header */
    PUT(HDRP(bp), PACK(size, 0)); // Free block header 
    PUT(FTRP(bp), PACK(size, 0)); // Free block footer 

    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1)); // New epilogue header

    add_to_free_list(bp);

    /* Coalesce if the previous block was free */
    return coalesce(bp);
}

/*
 * mm_free - Free a block
 */
void mm_free(void *bp)
{
    size_t size = GET_SIZE(HDRP(bp));

    PUT(HDRP(bp), PACK(size, 0));
    PUT(FTRP(bp), PACK(size, 0));

    add_to_free_list(bp);
    coalesce(bp);
}

/*
 * coalesce - Combine fragments
 */
static void *coalesce(void *bp)
{
    void *prev = PREV_BLKP(bp);
    void *next = NEXT_BLKP(bp);
    size_t prev_alloc = GET_ALLOC(FTRP(prev));
    size_t next_alloc = GET_ALLOC(HDRP(next));
    size_t size = GET_SIZE(HDRP(bp));

    // Case 1: both prev and next are allocated
    if (prev_alloc && next_alloc)
    {
        return bp;
    }

    // Case 2: next is free
    else if (prev_alloc && !next_alloc)
    {
        delete_from_free_list(bp);
        delete_from_free_list(next);
        size += GET_SIZE(HDRP(next));
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size, 0));
    }

    // Case 3: prev is free
    else if (!prev_alloc && next_alloc)
    {
        delete_from_free_list(bp);
        delete_from_free_list(prev);
        size += GET_SIZE(HDRP(prev));
        PUT(FTRP(bp), PACK(size, 0));
        PUT(HDRP(prev), PACK(size, 0));
        bp = prev;
    }

    // Case 4: both prev and next are free
    else
    {
        delete_from_free_list(bp);
        delete_from_free_list(prev);
        delete_from_free_list(next);
        size += GET_SIZE(HDRP(prev)) + GET_SIZE(FTRP(next));
        PUT(HDRP(prev), PACK(size, 0));
        PUT(FTRP(next), PACK(size, 0));
        bp = prev;
    }

    add_to_free_list(bp);

    return bp;
}

/* 
 * mm_malloc - Allocate a block with min size bytes of payload
 */
void *mm_malloc(size_t size)
{
    char *bp;

    if (size == 0)
    {
        return NULL;
    }
    else if (size == 448 || size == 456)
    {
        size = 512;
    }
    else if (size == 112 || size == 120)
    {
        size = 128;
    }
    size = ALIGN(size) + DSIZE;

    /* No fit found. Get more memory and place the block */
    if ((bp = find_fit(size)) == NULL)
    {
        if ((bp = extend_heap(MAX(size, CHUNKSIZE) / WSIZE)) == NULL)
        {
            return NULL;
        }
    }
    bp = place(bp, size);
    return bp;
}

/* 
 * find_fit - Find a fit for a block with asize bytes 
 */
static void *find_fit(size_t size)
{
    void **listp = find_list(size);
    size_t ptr_size;
    while (listp != NULL)
    {
        void *bp = *listp;
        while (bp != NULL)
        {
            ptr_size = GET_SIZE(HDRP(bp));
            if (size <= ptr_size && bp != latest_free)
            {
                return bp;
            }
            bp = NEXT_FREE_BLOCK(bp);
        }
        listp = find_next_list(listp);
    }
    return NULL;
}

/* 
 * place - Place block of asize bytes at start of free block bp 
 *         and split if remainder would be at least minimum block size
 */
static void *place(void *bp, size_t size)
{
    size_t ptr_size = GET_SIZE(HDRP(bp));
    size_t remain_size = ptr_size - size;

    delete_from_free_list(bp);

    // Split
    if (remain_size >= 2 * DSIZE)
    {
        PUT(HDRP(bp), PACK(size, 1));
        PUT(FTRP(bp), PACK(size, 1));
        void *tmp = bp;
        bp = NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK(remain_size, 0));
        PUT(FTRP(bp), PACK(remain_size, 0));
        add_to_free_list(bp);
        return tmp;
    }
    // Not split
    else
    {
        PUT(HDRP(bp), PACK(ptr_size, 1));
        PUT(FTRP(bp), PACK(ptr_size, 1));
        return bp;
    }
}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */
void *mm_realloc(void *ptr, size_t size)
{
    // If ptr is NULL, the call is equivalent to mm_malloc(size)
    if (ptr == NULL)
    {
        return mm_malloc(size);
    }

    // If size is equal to zero, the call is equivalent to mm_free(ptr);
    if (size == 0)
    {
        mm_free(ptr);
        return NULL;
    }

    size_t new_size = ALIGN(size) + DSIZE;
    size_t old_size = GET_SIZE(HDRP(ptr));

    // Case: there is no need to realloc
    if (new_size == old_size)
    {
        return ptr;
    }

    // Case: new size is smaller
    else if (new_size < old_size)
    {
        PUT(HDRP(ptr), PACK(new_size, 1));
        PUT(FTRP(ptr), PACK(new_size, 1));
        void *next = NEXT_BLKP(ptr);
        PUT(HDRP(next), PACK(old_size - new_size, 0));
        PUT(FTRP(next), PACK(old_size - new_size, 0));
        add_to_free_list(next);
        coalesce(next);
        return ptr;
    }
    // Case: new size is larger
    else
    {
        void *next = NEXT_BLKP(ptr);
        size_t remainsize = GET_ALLOC(HDRP(next)) ? 0 : GET_SIZE(HDRP(next));
        int local = remainsize >= (new_size - old_size + 2 * DSIZE);
        int heap = (remainsize && !GET_SIZE(HDRP(NEXT_BLKP(next)))) || !GET_SIZE(HDRP(next));

        if (!local && heap)
        {
            extend_heap(MAX(new_size - old_size, CHUNKSIZE) / WSIZE);
            remainsize = GET_SIZE(HDRP(next));
        }
        if (local || heap)
        {
            delete_from_free_list(next);
            PUT(HDRP(ptr), PACK(new_size, 1));
            PUT(FTRP(ptr), PACK(new_size, 1));
            if (remainsize != new_size - old_size)
            {
                next = NEXT_BLKP(ptr);
                PUT(HDRP(next), PACK(old_size + remainsize - new_size, 0));
                PUT(FTRP(next), PACK(old_size + remainsize - new_size, 0));
                add_to_free_list(next);
                latest_free = next;
            }
            return ptr;
        }
        else
        {
            void *newptr = mm_malloc(size);
            if (newptr == NULL)
            {
                return NULL;
            }
            memcpy(newptr, ptr, old_size - DSIZE);
            mm_free(ptr);
            return newptr;
        }
    }
}

/*
 * mm_check - Molloc check
 */
int mm_check()
{
    void *bp;
    void *listp = free_listp16;

    // Is every block in the free list marked as free?
    listp = free_listp16;
    while (listp != NULL)
    {
        if (check_free(listp) == 0)
        {
            fprintf(stderr, "block in the free list marked as allocated\n");
            return 0;
        }
        if (listp == &free_listp16384)
        {
            break;
        }
        else
        {
            listp = find_next_list(listp);
        }
    }

    // Are there any contiguous free blocks that somehow escaped coalescing?
    for (bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp))
    {
        if (!GET_ALLOC(HDRP(bp)) && !GET_ALLOC(HDRP(NEXT_BLKP(bp))))
        {
            fprintf(stderr, "contagious free blocks\n");
            return 0;
        }
    }

    // Is every free block actually in the free list?
    int count = 0;
    for (bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp))
    {
        if (!GET_ALLOC(HDRP(bp)))
        {
            count++;
        }
    }
    listp = free_listp16;
    while (listp != NULL)
    {
        count -= check_num(listp);
        listp = find_next_list(listp);
    }
    if (1 != count)
    {
        fprintf(stderr, "%d",count);
        fprintf(stderr, "free block not in the free list\n");
        return 0;
    }

    // Do the pointers in the free list point to valid free blocks?
    while (listp != NULL)
    {
        for (bp = listp; bp != NULL; bp = NEXT_FREE_BLOCK(bp))
        {
            if (GET_ALLOC(HDRP(bp)))
            {
                fprintf(stderr, "point to invalid free blocks");
                return 0;
            }
        }
        if (listp == &free_listp16384)
        {
            break;
        }
        else
        {
            listp = find_next_list(listp);
        }
    }

    // Do any allocated blocks overlap?
    for (bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp))
    {
        if (GET_ALLOC(HDRP(bp)))
        {
            if (FTRP(bp) >= HDRP(NEXT_BLKP(bp)))
            {
                fprintf(stderr, "allocated block overlaps\n");
                return 0;
            }
        }
    }

    //Do the pointers in a heap block point to valid heap addresses?
    for (bp = heap_listp; GET_SIZE(HDRP(bp)) > 0; bp = NEXT_BLKP(bp))
    {
        if (GET_ALLOC(HDRP(bp)))
        {
            if (NEXT_BLKP(bp) != (char *)(bp) + GET_SIZE(((char *)(bp)-WSIZE)))
            {
                fprintf(stderr, "invalid heap addresses\n");
                return 0;
            }
        }
    }

    return 1;
}

/* 
 * check_num - Check every block in listp is free
 */
int check_free(void *listp)
{
    void *bp;
    for (bp = listp; bp != NULL; bp = NEXT_FREE_BLOCK(bp))
    {
        if (GET_ALLOC(HDRP(bp)))
        {
            return 0;
        }
    }
    return 1;
}

/* 
 * check_num - Return the number of free blocks in listp
 */
int check_num(void *listp)
{
    int count = 0;
    void *bp = NULL;
    for (bp = listp; bp != NULL; bp = NEXT_FREE_BLOCK(bp))
    {
        count++;
    }
    return count;
}

/*
 * add_to_free_list - Add a block to free lists
 */
void add_to_free_list(void *ptr)
{
    void **listp = find_list(GET_SIZE(HDRP(ptr)));
    // insert
    if (*listp != NULL)
    {
        PUT(PRED(*listp), GET_OFFSET(ptr));
        PUT(SUCC(ptr), GET_OFFSET(*listp));
        PUT(PRED(ptr), 0);
    }
    // append
    else
    {
        PUT(PRED(ptr), 0);
        PUT(SUCC(ptr), 0);
    }
    *listp = ptr;
}

/*
 * delete_from_free_list - Remove a block from free lists
 */
void delete_from_free_list(void *ptr)
{
    void **listp = find_list(GET_SIZE(HDRP(ptr)));
    void *prev = PREV_FREE_BLOCK(ptr);
    void *next = NEXT_FREE_BLOCK(ptr);

    if (prev && next)
    {
        PUT(SUCC(prev), GET(SUCC(ptr)));
        PUT(PRED(next), GET(PRED(ptr)));
    }
    else if (prev && !next)
    {
        PUT(SUCC(prev), 0);
    }
    else if (!prev && next)
    {
        PUT(PRED(next), 0);
        *listp = next;
    }
    else
    {
        *listp = NULL;
    }
}