#include <stdio.h>
#include <string.h>

#include <kernel/tty.h>
#include <kernel/gdt.h>
#include <kernel/idt.h>
#include <kernel/pic.h>
#include <kernel/ps2.h>
#include <kernel/keyboard.h>
#include <kernel/heap.h>

void kernel_main(void) {
	terminal_initialize();
	init_gdt();
	init_idt();
	printf("Test12\n");
	PIC_remap(0x20, 0x28);
	printf("Esito init ps2: %u\n", init_PS2() );
	detect_PS2_devices();
	init_keyboard();
	init_heap(0x100000);
	char *str1 = kmalloc(100);
	memcpy(str1, "ciao\0", 5);
	char *str2 = kmalloc(100);
	memcpy(str2, "abc\0", 4);
    printf("%s%s\n",str1,str2);
    kfree(str1);
    printf("%s%s\n",str1,str2);
	kfree(str2);
    printf("%s%s\n",str1,str2);

    asm("sti");


	for(;;)
		asm("hlt");
}
