#include <stdio.h>
#include <kernel/grub.h>

void check_multiboot(multiboot_info_t* mbd, unsigned int magic) {
/* Make sure the magic number matches for memory mapping*/
    if(magic != MULTIBOOT_BOOTLOADER_MAGIC) {
        #ifdef GRUB_DEBUG
            printf("invalid magic number!");
        #endif
    }
 
    /* Check bit 6 to see if we have a valid memory map */
    if(!(mbd->flags >> 6 & 0x1)) {
        #ifdef GRUB_DEBUG
            printf("invalid memory map given by GRUB bootloader");
        #endif
    }
    
    #ifdef GRUB_DEBUG
        printf("Sono qui");
    #endif
    long long total_low = 0, total_high = 0;
    /* Loop through the memory map and display the values */
    unsigned int i;
    for(i = 0; i < mbd->mmap_length; 
        i += sizeof(multiboot_memory_map_t)) 
    {
        multiboot_memory_map_t* mmmt = 
            (multiboot_memory_map_t*) (mbd->mmap_addr + i);
        #ifdef GRUB_DEBUG
            printf("Start Addr High: %u | Addr Low: %u | Length High: %u | Length Low: %u | Size: %u | Type: %u\n",
                mmmt->addr_high, mmmt->addr_low, mmmt->len_high, mmmt->len_low, mmmt->size, mmmt->type);
        #endif

        if(mmmt->type == MULTIBOOT_MEMORY_AVAILABLE) {
            /* 
             * Do something with this memory block!
             * BE WARNED that some of memory shown as availiable is actually 
             * actively being used by the kernel! You'll need to take that
             * into account before writing to memory!
             */
            total_low += mmmt->len_low;
            total_high += mmmt->len_high;
        }
    }
    printf("Total available memory: high: %u, low: %u\n", total_high, total_low);
}