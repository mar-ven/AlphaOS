#ifndef ARCH_I386_GRUB_H
#define ARCH_I386_GRUB_H

#include <grub/multiboot.h>
#include <kernel/debug.h>
void check_multiboot(multiboot_info_t* mbd, unsigned int magic);

#endif