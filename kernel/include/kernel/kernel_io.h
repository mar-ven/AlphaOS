//
// Created by marco on 19/12/2020.
//

#ifndef KERNEL_IO_H
#define KERNEL_IO_H
#include "include/string.h"
#include "include/stdlib.h"
#define KERNEL_IO_BUFFER_SIZE 1024
typedef struct kernel_io_buff {
    char buffer[KERNEL_IO_BUFFER_SIZE];
    size_t read = 0;
    size_t write = 0;
};

void kernel_io_write(kernel_io_buff *buffer, char * str) {
    size_t beg = buffer->write;
    size_t len = strlen(str);
    size_t end = (buffer->write + len) % KERNEL_IO_BUFFER_SIZE;
    //bisogna ritornare all'inizio
    if(end < beg) {
        size_t partial = KERNEL_IO_BUFFER_SIZE - beg;
        memcpy(buffer->buffer + beg, str, partial);
        memcpy(buffer->buffer, str + partial, len - partial);
        buffer->write = len - partial;
    } else {
        memcpy(buffer->buffer, str, len);
        buffer->write += len;
    }
}



char * kernel_io_read_line(kernel_io_buff * buffer) {
    int end = 0, len = 0;
    while(buffer->buffer[end] != '\n') {
        end = (end + 1) % KERNEL_IO_BUFFER_SIZE;
        len++;
    }
    char str[len];
    if(end < beg) {
        size_t partial = KERNEL_IO_BUFFER_SIZE - buffer->read;
        memcpy(str, buffer->buffer + buffer->read, partial);
        memcpy(str + partial, buffer->buffer, len - partial);
    } else {
        memcpy(str, buffer->buffer + buffer->read, len);
    }
    buffer->read = (buffer->read + len) % KERNEL_IO_BUFFER_SIZE;
    return str;
}

#endif //KERNEL_IO_H
