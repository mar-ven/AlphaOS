#ifndef _KERNEL_TTY_H
#define _KERNEL_TTY_H

#include <stddef.h>

extern char input_buffer[2048];
extern size_t input_buffer_pos;

void terminal_initialize(void);
void terminal_putchar(char c);
void terminal_write(const char* data, size_t size);
void terminal_writestring(const char* data);
char * terminal_get_input_buffer();
extern void test();
#endif
