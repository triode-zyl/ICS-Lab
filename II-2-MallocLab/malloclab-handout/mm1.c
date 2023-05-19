/*
 * mm-naive.c - The fastest, least memory-efficient malloc package.
 * 
 * In this naive approach, a block is allocated by simply incrementing
 * the brk pointer.  A block is pure payload. There are no headers or
 * footers.  Blocks are never coalesced or reused. Realloc is
 * implemented directly using mm_malloc and mm_free.
 *
 * NOTE TO STUDENTS: Replace this header comment with your own header
 * comment that gives a high level description of your solution.
 */
#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>
#include <string.h>

#include "mm.h"
#include "memlib.h"

/*********************************************************
 * NOTE TO STUDENTS: Before you do anything else, please
 * provide your team information in the following struct.
 ********************************************************/
team_t team = {
    /* Team name */
    "light triode",
    /* First member's full name */
    "周炎亮",
    /* First member's email address */
    "1287546402@qq.com",
    /* Second member's full name (leave blank if none) */
    "",
    /* Second member's email address (leave blank if none) */
    ""
};

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(size) (((size) + (ALIGNMENT-1)) & ~0x7)


#define SIZE_T_SIZE (ALIGN(sizeof(size_t)))

#define WSIZE       4       /* Word and header/footer size (bytes) */ 
#define DSIZE       8       /* Double word size (bytes) */
#define CHUNKSIZE  (1<<12)  /* Extend heap by this amount (bytes) */

#define MAX(x, y) ((x) > (y)? (x) : (y))  

/* Pack a size and allocated bit into a word */
#define PACK(size, alloc)  ((size) | (alloc)) 

/* Read and write a word at address p */
#define GET(p)       (*(unsigned int *)(p))           //读取p的值
#define PUT(p, val)  (*(unsigned int *)(p) = (val))   //对p赋值

/* Read the size and allocated fields from address p */
#define GET_SIZE(p)  (GET(p) & ~0x7)                  //该块的大小
#define GET_ALLOC(p) (GET(p) & 0x1)                   //是否已分配

/* Given block ptr bp, compute address of its header and footer */
#define HDRP(bp)       ((char *)(bp) - WSIZE)                      //块头部的指针
#define FTRP(bp)       ((char *)(bp) + GET_SIZE(HDRP(bp)) - DSIZE) //块尾部的指针

/* Given block ptr bp, compute address of next and previous blocks */
#define NEXT_BLKP(bp)  ((char *)(bp) + GET_SIZE(((char *)(bp) - WSIZE)))    //后面块的指针
#define PREV_BLKP(bp)  ((char *)(bp) - GET_SIZE(((char *)(bp) - DSIZE)))    //前面块的指针

#define PREV_LINKED_BLKP(bp) ((char *)(bp)) //同一链表中前一个的指针
#define NEXT_LINKED_BLKP(bp) ((char *)(bp)+WSIZE) //同一链表中后一个的指针

static void* find_asize_loc(size_t asize)
{
    void* heap_listp = mem_heap_lo();
    //if(asize <= 8) return(heap_listp + 1 * WSIZE);
    if(asize <= 16) return(heap_listp + 1 * WSIZE);
    if(asize <= 32) return(heap_listp + 2 * WSIZE);
    if(asize <= 64) return(heap_listp + 3 * WSIZE);
    if(asize <= 128) return(heap_listp + 4 * WSIZE);
    if(asize <= 256) return(heap_listp + 5 * WSIZE);
    if(asize <= 512) return(heap_listp + 6 * WSIZE);
    if(asize <= 1024) return(heap_listp + 7 * WSIZE);
    if(asize <= 2048) return(heap_listp + 8 * WSIZE);
    if(asize <= 4096) return(heap_listp + 9 * WSIZE);
    return(heap_listp + 10 * WSIZE);
}

void add_block(void* bp, size_t asize)
{
    void* heap_listp = find_asize_loc(asize);
    if(GET(heap_listp) == NULL){    //该链表中尚无元素
        PUT(heap_listp, bp);
        PUT(PREV_LINKED_BLKP(bp), heap_listp);
    }
    else{
        void* next = GET(heap_listp);
        void* prev = heap_listp;
        while(next != NULL && GET_SIZE(next)<asize){
            prev = next;
            next = NEXT_LINKED_BLKP(next);
        }
        PUT(PREV_LINKED_BLKP(bp), prev);
        PUT(NEXT_LINKED_BLKP(bp), next);
        if(prev == heap_listp){
            PUT(prev, bp);
        }
        else{
            PUT(NEXT_LINKED_BLKP(prev), bp);
        }
        if(next != NULL) PUT(PREV_LINKED_BLKP(next), bp);
    }
    
}

void delete_block(void* bp, size_t asize)
{
    void* heap_listp = find_asize_loc(asize);
    void* prev = GET(PREV_LINKED_BLKP(bp));
    void* next = GET(NEXT_LINKED_BLKP(bp));
    if(prev == heap_listp){
        PUT(prev, next);
    }
    else{
        PUT(NEXT_LINKED_BLKP(prev), next);
    }
    if(next != NULL){
        PUT(PREV_LINKED_BLKP(next), prev);
    }
}


static void *coalesce(void *bp) 
{
    size_t prev_alloc = GET_ALLOC(HDRP(PREV_BLKP(bp)));
    size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(bp)));
    size_t size = GET_SIZE(HDRP(bp));

    if (prev_alloc && next_alloc) {            /* Case 1 */
        add_block(bp, size);
        return bp;
    }
    else if (prev_alloc && !next_alloc) {      /* Case 2 */
        delete_block(NEXT_BLKP(bp), GET_SIZE(HDRP(NEXT_BLKP(bp))));
        size += GET_SIZE(HDRP(NEXT_BLKP(bp)));
        PUT(HDRP(bp), PACK(size, 0));
        PUT(FTRP(bp), PACK(size,0));
        PUT(PREV_LINKED_BLKP(bp), NULL);
        PUT(NEXT_LINKED_BLKP(bp), NULL);
        add_block(bp, size);
    }
    else if (!prev_alloc && next_alloc) {      /* Case 3 */
        delete_block(PREV_BLKP(bp), GET_SIZE(HDRP(PREV_BLKP(bp))));
        size += GET_SIZE(HDRP(PREV_BLKP(bp)));
        PUT(FTRP(bp), PACK(size, 0));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
        PUT(PREV_LINKED_BLKP(bp), NULL);
        PUT(NEXT_LINKED_BLKP(bp), NULL);
        add_block(bp, size);
    }
    else {                                     /* Case 4 */
        delete_block(NEXT_BLKP(bp), GET_SIZE(HDRP(NEXT_BLKP(bp))));
        delete_block(PREV_BLKP(bp), GET_SIZE(HDRP(PREV_BLKP(bp))));
        size += GET_SIZE(HDRP(PREV_BLKP(bp))) + 
            GET_SIZE(FTRP(NEXT_BLKP(bp)));
        PUT(HDRP(PREV_BLKP(bp)), PACK(size, 0));
        PUT(FTRP(NEXT_BLKP(bp)), PACK(size, 0));
        bp = PREV_BLKP(bp);
        PUT(PREV_LINKED_BLKP(bp), NULL);
        PUT(NEXT_LINKED_BLKP(bp), NULL);
        add_block(bp, size);
    }

    return bp;
}

static void *extend_heap(size_t words) 
{
    char *bp;
    size_t size;

    /* Allocate an even number of words to maintain alignment */
    size = (words % 2) ? (words+1) * WSIZE : words * WSIZE; 
    if ((long)(bp = mem_sbrk(size)) == -1)  
        return NULL;                                        

    /* Initialize free block header/footer and the epilogue header */
    PUT(HDRP(bp), PACK(size, 0));         /* Free block header */  
    PUT(FTRP(bp), PACK(size, 0));         /* Free block footer */   
    PUT(HDRP(NEXT_BLKP(bp)), PACK(0, 1)); /* New epilogue header */ 
    PUT(PREV_LINKED_BLKP(bp), NULL); //对新块初始化
    PUT(NEXT_LINKED_BLKP(bp), NULL);
    /* Coalesce if the previous block was free */
    return coalesce(bp);                                          
}

/* 
 * mm_init - initialize the malloc package.
 */
int mm_init(void)
{
    /* Create the initial empty heap */
    void* heap_listp = mem_heap_lo();
    if ((heap_listp = mem_sbrk(14*WSIZE)) == (void *)-1) 
        return -1;
    PUT(heap_listp, 0);                          /* Alignment padding */
    //PUT(heap_listp + (1 * WSIZE), PACK(DSIZE, 1)); /* Prologue header */ 
    //PUT(heap_listp + (2 * WSIZE), PACK(DSIZE, 1)); /* Prologue footer */ 
    PUT(heap_listp + (1 * WSIZE), NULL); //<=16
    PUT(heap_listp + (2 * WSIZE), NULL); //<=32
    PUT(heap_listp + (3 * WSIZE), NULL); //<=64
    PUT(heap_listp + (4 * WSIZE), NULL); //<=128
    PUT(heap_listp + (5 * WSIZE), NULL); //<=256
    PUT(heap_listp + (6 * WSIZE), NULL); //<=512
    PUT(heap_listp + (7 * WSIZE), NULL); //<=1024
    PUT(heap_listp + (8 * WSIZE), NULL); //<=2048
    PUT(heap_listp + (9 * WSIZE), NULL); //<=4096
    PUT(heap_listp + (10 * WSIZE), NULL); //>4096
    //PUT(heap_listp + (11 * WSIZE), NULL); //>4096
    PUT(heap_listp + (11 * WSIZE), PACK(DSIZE, 1)); /* Prologue header */ 
    PUT(heap_listp + (12 * WSIZE), PACK(DSIZE, 1)); /* Prologue footer */ 
    PUT(heap_listp + (13 * WSIZE), PACK(0,1)); /* Epilogue header */
    //heap_listp += (2*WSIZE);                      

    /* Extend the empty heap with a free block of CHUNKSIZE bytes */
    if (extend_heap(CHUNKSIZE/WSIZE) == NULL) 
        return -1;
    return 0;
}



static void *find_fit(size_t asize)
{
    //void *bp = NULL;
    //size_t min = 0xffffffff;
    /*void* heap_listp;
    for(size_t i = asize; i<8193; i *= 2)
    {
    //heap_listp = GET(find_asize_loc(i));
    heap_listp = find_asize_loc(i);
    for (void* tmp = GET(heap_listp); tmp != NULL && GET_SIZE(HDRP(tmp)) > 0; tmp = NEXT_LINKED_BLKP(tmp)) {
        if (asize <= GET_SIZE(HDRP(tmp))) {
            return tmp;
        }
    }
    }
    return NULL; /* No fit */
    void* heap_listp = find_asize_loc(asize);
    void* list_table = mem_heap_lo();
    for(;heap_listp<=list_table + 10*WSIZE;heap_listp+=WSIZE){
        void *st = GET(heap_listp);
        while(st!=NULL){
            if(GET_SIZE(HDRP(st)) >= asize) return st;
            st = GET(NEXT_LINKED_BLKP(st));
        }
    }
    return NULL;
}


static void place(void *bp, size_t asize)
{
    size_t csize = GET_SIZE(HDRP(bp));   
    delete_block(bp, csize);
    if ((csize - asize) >= (2*DSIZE)) { 
        PUT(HDRP(bp), PACK(asize, 1));
        PUT(FTRP(bp), PACK(asize, 1));
        bp = NEXT_BLKP(bp);
        PUT(HDRP(bp), PACK(csize-asize, 0));
        PUT(FTRP(bp), PACK(csize-asize, 0));
        PUT(PREV_LINKED_BLKP(bp), NULL); //对新块初始化
        PUT(NEXT_LINKED_BLKP(bp), NULL);
        add_block(bp,csize-asize);
    }
    else { 
        PUT(HDRP(bp), PACK(csize, 1));
        PUT(FTRP(bp), PACK(csize, 1));
    }
}

/* 
 * mm_malloc - Allocate a block by incrementing the brk pointer.
 *     Always allocate a block whose size is a multiple of the alignment.
 */
void *mm_malloc(size_t size)
{
    size_t asize;      /* Adjusted block size */
    size_t extendsize; /* Amount to extend heap if no fit */
    char *bp;      
    /*void *heap_listp = mem_heap_lo();
    heap_listp += 2*WSIZE;
    if (heap_listp == 0){
        mm_init();
    }*/

    /* Ignore spurious requests */
    if (size == 0)
        return NULL;

    /* Adjust block size to include overhead and alignment reqs. */
    if (size <= DSIZE)                                         
        asize = 2*DSIZE;                                      
    else
        asize = DSIZE * ((size + (DSIZE) + (DSIZE-1)) / DSIZE); 

    /* Search the free list for a fit */
    if ((bp = find_fit(asize)) != NULL) {  
        place(bp, asize);                  
        return bp;
    }

    /* No fit found. Get more memory and place the block */
    extendsize = MAX(asize,CHUNKSIZE);                
    if ((bp = extend_heap(extendsize/WSIZE)) == NULL)  
        return NULL;                                 
    place(bp, asize);                             
    return bp;
}

/*
 * mm_free - Freeing a block does nothing.
 */
void mm_free(void *ptr)
{
    if (ptr == NULL) 
        return;

    size_t size = GET_SIZE(HDRP(ptr));

    PUT(HDRP(ptr), PACK(size, 0));
    PUT(FTRP(ptr), PACK(size, 0));
    PUT(PREV_LINKED_BLKP(ptr), NULL);
    PUT(NEXT_LINKED_BLKP(ptr), NULL);
    coalesce(ptr);
}

/*
 * mm_realloc - Implemented simply in terms of mm_malloc and mm_free
 */


void *mm_realloc(void *ptr, size_t size)
{
    if(ptr == NULL){
        return mm_malloc(size);
    }
    if(size == 0){
        mm_free(ptr);
        return NULL;
    }

    size_t asize;
    if(size <= DSIZE) asize  = 2 * DSIZE;
    else asize = DSIZE * ((size + (DSIZE) + (DSIZE - 1))/DSIZE);

    size_t oldsize = GET_SIZE(HDRP(ptr));
    if(oldsize == asize) return ptr;
    else if(oldsize > asize){
        if(oldsize - asize>=2*DSIZE){
            PUT(HDRP(ptr), PACK(asize, 1));
            PUT(FTRP(ptr), PACK(asize, 1));
            void *bp = ptr;
            bp = NEXT_BLKP(bp);
            PUT(HDRP(bp), PACK(oldsize - asize, 0));
            PUT(FTRP(bp), PACK(oldsize - asize, 0));
            PUT(PREV_LINKED_BLKP(bp), NULL);
            PUT(NEXT_LINKED_BLKP(bp), NULL);

            coalesce(bp);
        }
        else{
            PUT(HDRP(ptr), PACK(oldsize, 1));
            PUT(FTRP(ptr), PACK(oldsize, 1));
        }
        //immediate or delay
        return ptr;
    }
    else{
        size_t next_alloc = GET_ALLOC(HDRP(NEXT_BLKP(ptr)));
        if(!next_alloc && GET_SIZE(HDRP(NEXT_BLKP(ptr))) + oldsize >= asize) {
            delete_block(NEXT_BLKP(ptr), GET_SIZE(HDRP(NEXT_BLKP(ptr))));
            size_t ssize = GET_SIZE(HDRP(NEXT_BLKP(ptr))) + oldsize;
            size_t last = ssize - asize;
            if(last >= 2*DSIZE){
                PUT(HDRP(ptr), PACK(asize, 1));
                PUT(FTRP(ptr), PACK(asize, 1));
                char *bp = NEXT_BLKP(ptr);
                PUT(HDRP(bp), PACK(last, 0));
                PUT(FTRP(bp), PACK(last, 0));
                PUT(NEXT_LINKED_BLKP(bp), NULL);
                PUT(PREV_LINKED_BLKP(bp), NULL);
                add_block(bp, last);
            }
            else{
                PUT(HDRP(ptr), PACK(ssize, 1));
                PUT(FTRP(ptr), PACK(ssize, 1));
            }
            return ptr;
        }
        else{
            char *newptr = mm_malloc(asize);
            if(newptr == NULL) return NULL;
            memcpy(newptr, ptr, oldsize - DSIZE);
            mm_free(ptr);
            return newptr;
        }
    }
}












