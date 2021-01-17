#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include <string.h>

#include <kernel/io.h>
#include <kernel/tty.h>

#include "vga.h"

void enable_cursor(uint8_t cursor_start, uint8_t cursor_end);
void disable_cursor();
void update_cursor(int x, int y);
void get_cursor_position(int *x, int *y);

static const size_t VGA_WIDTH = 80;
static const size_t VGA_HEIGHT = 25;
static uint16_t* const VGA_MEMORY = (uint16_t*) 0xB8000;

static size_t terminal_row;
static size_t terminal_column;
static uint8_t terminal_color;
static uint16_t* terminal_buffer;


char input_buffer[2048] = {0};
size_t input_buffer_pos = 0;

void terminal_initialize(void) {
	terminal_row = 0;
	terminal_column = 0;
	terminal_color = vga_entry_color(VGA_COLOR_LIGHT_GREY, VGA_COLOR_BLACK);
	terminal_buffer = VGA_MEMORY;
	for (size_t y = 0; y < VGA_HEIGHT; y++) {
		for (size_t x = 0; x < VGA_WIDTH; x++) {
			const size_t index = y * VGA_WIDTH + x;
			terminal_buffer[index] = vga_entry(' ', terminal_color);
		}
	}
}

char * terminal_get_input_buffer() {
	return input_buffer;
}

void terminal_setcolor(uint8_t color) {
	terminal_color = color;
}

void enable_cursor(uint8_t cursor_start, uint8_t cursor_end)
{
	outb(0x3D4, 0x0A);
	outb(0x3D5, (inb(0x3D5) & 0xC0) | cursor_start);
 
	outb(0x3D4, 0x0B);
	outb(0x3D5, (inb(0x3D5) & 0xE0) | cursor_end);
}

void disable_cursor()
{
	outb(0x3D4, 0x0A);
	outb(0x3D5, 0x20);
}

void update_cursor(int x, int y) //x = column, y = row
{
	uint16_t pos = y * VGA_WIDTH + x;
 
	outb(0x3D4, 0x0F);
	outb(0x3D5, (uint8_t) (pos & 0xFF));
	outb(0x3D4, 0x0E);
	outb(0x3D5, (uint8_t) ((pos >> 8) & 0xFF));
}

void get_cursor_position(int *x, int *y)
{
    uint16_t pos = 0;
    outb(0x3D4, 0x0F);
    pos |= inb(0x3D5);
    outb(0x3D4, 0x0E);
    pos |= ((uint16_t)inb(0x3D5)) << 8;
	*x = pos % VGA_WIDTH;
	*y = pos / VGA_WIDTH;
}
void terminal_putentryat(unsigned char c, uint8_t color, size_t x, size_t y) {
	const size_t index = y * VGA_WIDTH + x;
	terminal_buffer[index] = vga_entry(c, color);
}

void terminal_putstring(char *string) {
	size_t i = 0;
	while(string[i] != '\0') {
		terminal_putchar(string[i]);
		i++;
	}
	update_cursor(terminal_column, terminal_row);
}
void terminal_flush() {
	for(size_t y = 0; y < VGA_HEIGHT; y++)
		for(size_t x = 0; x < VGA_WIDTH; x++)
			terminal_buffer[y * VGA_WIDTH + x] = vga_entry(' ', terminal_color);
	terminal_row = terminal_column = 0;
}
 
void terminal_putchar(char c) {
	unsigned char uc = c;
	if(uc == '\b') {
		--terminal_column;
		terminal_buffer[terminal_row * VGA_WIDTH + terminal_column] = vga_entry(' ', terminal_color);
		if(terminal_column == (size_t) -1) {
			if(terminal_row != 0) {
				--terminal_row;
				terminal_column = VGA_WIDTH - 1;
			} else
				terminal_column = 0;
		}
	} else {
		if(uc != '\n') {
		terminal_putentryat(uc, terminal_color, terminal_column, terminal_row);
		++terminal_column;
		}
		if (uc == '\n' || terminal_column == VGA_WIDTH) {
			++terminal_row;
			if (terminal_row == VGA_HEIGHT) {
				for(size_t y = 0; y < VGA_HEIGHT - 1; y++)
					for(size_t x = 0; x < VGA_WIDTH; x++)
						terminal_buffer[y * VGA_WIDTH + x] = terminal_buffer[(y + 1) * VGA_WIDTH + x];
				for(size_t x = 0; x < VGA_WIDTH; x++)
					terminal_buffer[(VGA_HEIGHT-1)*VGA_WIDTH + x] = vga_entry(' ', terminal_color);
				terminal_row--;
				terminal_column = 0;
				if(uc != '\n') {
					terminal_putentryat(uc, terminal_color, terminal_column, terminal_row);
					++terminal_column;
				}
			} else 
				terminal_column = 0;
		}
	}
}

void terminal_write(const char* data, size_t size) {
	for (size_t i = 0; i < size; i++)
		terminal_putchar(data[i]);
	update_cursor(terminal_column, terminal_row);
}

void terminal_writestring(const char* data) {
	terminal_write(data, strlen(data));
}
