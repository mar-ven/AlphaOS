#include "kernel/heap.h"

/*
kernel_heap kheap;

void kheap_init(kernel_heap *heap) {
    heap->fblock = 0;
}

int kheap_add_block(kernel_heap *heap, uint32_t addr, uint32_t size, uint32_t bsize) {
    kernel_heap_block		*b;
    uint32_t				bcnt;
    uint32_t				x;
    uint8_t				*bm;

    b = (kernel_heap_block*)addr;
    b->size = size - sizeof(kernel_heap_block);
    b->bsize = bsize;

    b->next = heap->fblock;
    heap->fblock = b;

    bcnt = b->size / b->bsize;
    bm = (uint8_t*)&b[1];


    for (x = 0; x < bcnt; ++x) {
        bm[x] = 0;
    }


    bcnt = (bcnt / bsize) * bsize < bcnt ? bcnt / bsize + 1 : bcnt / bsize;
    for (x = 0; x < bcnt; ++x) {
        bm[x] = 5;
    }

    b->lfb = bcnt - 1;

    b->used = bcnt;

    return 1;
}

static uint8_t k_heapBMGetNID(uint8_t a, uint8_t b) {
    uint8_t		c;
    for (c = a + 1; c == b || c == 0; ++c);
    return c;
}

void init_heap(uint32_t size) {
    kheap_init(&kheap);
    kheap_add_block(&kheap, 0x200000, size, 16);
}

void *kmalloc(uint32_t size) {
    return _kmalloc(&kheap, size);
}

void kfree(void *ptr) {
    _kfree(&kheap, ptr);
}

void *_kmalloc(kernel_heap *heap, uint32_t size) {
    kernel_heap_block		*b;
    uint8_t				*bm;
    uint32_t				bcnt;
    uint32_t				x, y, z;
    uint32_t				bneed;
    uint8_t				nid;


    for (b = heap->fblock; b; b = b->next) {

        if (b->size - (b->used * b->bsize) >= size) {

            bcnt = b->size / b->bsize;
            bneed = (size / b->bsize) * b->bsize < size ? size / b->bsize + 1 : size / b->bsize;
            bm = (uint8_t*)&b[1];

            for (x = (b->lfb + 1 >= bcnt ? 0 : b->lfb + 1); x < b->lfb; ++x) {

                if (x >= bcnt) {
                    x = 0;
                }

                if (bm[x] == 0) {

                    for (y = 0; bm[x + y] == 0 && y < bneed && (x + y) < bcnt; ++y);


                    if (y == bneed) {

                        nid = k_heapBMGetNID(bm[x - 1], bm[x + y]);


                        for (z = 0; z < y; ++z) {
                            bm[x + z] = nid;
                        }


                        b->lfb = (x + bneed) - 2;


                        b->used += y;

                        return (void*)(x * b->bsize + (uint32_t)&b[1]);
                    }


                    x += (y - 1);
                    continue;
                }
            }
        }
    }

    return 0;
}

void _kfree(kernel_heap *heap, void *ptr) {
    kernel_heap_block		*b;
    uint32_t				ptroff;
    uint32_t				bi, x;
    uint8_t				*bm;
    uint8_t				id;
    uint32_t				max;

    for (b = heap->fblock; b; b = b->next) {
        if ((uint32_t)ptr > (uint32_t)b && (uint32_t)ptr < (uint32_t)b + sizeof(kernel_heap_block) + b->size) {
            /* found block
            ptroff = (uint32_t)ptr - (uint32_t)&b[1];  /* get offset to get block
            /* block offset in BM
            bi = ptroff / b->bsize;
            /* ..
            bm = (uint8_t*)&b[1];
            /* clear allocation
            id = bm[bi];
            /* oddly.. GCC did not optimize this
            max = b->size / b->bsize;
            for (x = bi; bm[x] == id && x < max; ++x) {
                bm[x] = 0;
            }
            /* update free block count
            b->used -= x - bi;
            return;
        }
    }

    /* this error needs to be raised or reported somehow
    return;
}
*/

typedef struct _KHEAPBLOCKSS {
    struct _KHEAPBLOCKSS	*next;
    uint32_t					top;
    uint32_t				max;
    uint32_t					size;			/* total size in bytes including this header */
} k_heap_block;

typedef struct _KHEAPSS {
    k_heap_block			*fblock;
    uint32_t					bsize;
} k_heap;




void k_heapSSInit(k_heap *heap, uint32_t bsize) {
    heap->fblock = 0;
    heap->bsize = bsize;
}

int k_heapSSAddBlock(k_heap *heap, uint32_t addr, uint32_t size) {
    k_heap_block		*b;
    uint32_t				x;
    uint32_t				*stack;
    uint32_t				stacksz;
    uint32_t			slotres;

    b = (k_heap_block*)addr;
    b->next = heap->fblock;
    heap->fblock = b;

    b->size = size;

    size = size - sizeof(k_heap_block);

    b->max = size / (heap->bsize);

    stacksz = b->max * 4;
    slotres = (stacksz / heap->bsize) * heap->bsize < stacksz ? (stacksz / heap->bsize) + 1 : stacksz / heap->bsize;

    b->top = slotres;

    stack = (uint32_t*)&b[1];
    for (x = slotres; x < b->max; ++x) {
        stack[x] = x * heap->bsize;
    }

    return 1;
}

void *k_heapSSAlloc(k_heap *heap, uint32_t size) {
    k_heap_block		*b;
    uint32_t				ptr;
    uint32_t				*stack;

    /* too big */
    if (size > heap->bsize) {
        return 0;
    }

    for (b = heap->fblock; b; b = b->next) {
        if (b->top != b->max) {
            stack = (uint32_t*)&b[1];
            ptr = stack[b->top++];
            ptr = (uint32_t)&b[1] + ptr;
            return (void*)ptr;
        }
    }

    /* no more space left */
    return 0;
}

void k_heapSSFree(k_heap *heap, void *ptr) {
    k_heap_block		*b;
    uint32_t				_ptr;
    uint32_t				*stack;

    /* find block */
    _ptr = (uint32_t)ptr;
    for (b = heap->fblock; b; b = b->next) {
        if (_ptr > (uint32_t)b && _ptr < ((uint32_t)b + b->size))
            break;
    }

    /* might want to catch this somehow or somewhere.. kinda means corruption */
    if (!b)
        return;

    /* get stack */
    stack = (uint32_t*)&b[1];
    /* normalize offset to after block header */
    /* decrement top index */
    /* place entry back into stack */
    stack[--b->top] = _ptr - (uint32_t)&b[1];
    return;
}

k_heap heap;

void init_heap(uint32_t size) {
    k_heapSSInit(&heap, 16);
    k_heapSSAddBlock(&heap, 0x200000, size);
}

void *kmalloc(uint32_t size) {
    return k_heapSSAlloc(&heap, size);
}

void kfree(void *ptr) {
    k_heapSSFree(&heap, ptr);
}