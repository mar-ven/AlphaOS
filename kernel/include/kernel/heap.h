//
// Created by marco on 22/12/2020.
//

#ifndef HEAP_H
#define HEAP_H
#include <stdint.h>
typedef struct _KHEAPBLOCKBM {
    struct _KHEAPBLOCKBM	                *next;
    uint32_t					size;
    uint32_t					used;
    uint32_t					bsize;
    uint32_t                                  lfb;
} kernel_heap_block;

typedef struct _KHEAPBM {
    kernel_heap_block			*fblock;
} kernel_heap;

void kheap_init(kernel_heap *heap);
int kheap_add_block(kernel_heap *heap, uint32_t addr, uint32_t size, uint32_t bsize);
void *_kmalloc(kernel_heap *heap, uint32_t size);
void _kfree(kernel_heap *heap, void *ptr);
void init_heap(uint32_t size);
void *kmalloc(uint32_t size);
void kfree(void *ptr);
#endif //HEAP_H
