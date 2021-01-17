cmake_minimum_required(VERSION 3.17)
project(Alpha C)

set(CMAKE_C_STANDARD 11)

include_directories(kernel/arch/i386)
include_directories(kernel/include)
include_directories(kernel/include/kernel)
include_directories(libc/include)
include_directories(libc/include/sys)
include_directories(sysroot)
include_directories(sysroot/usr)
include_directories(sysroot/usr/include)
include_directories(sysroot/usr/include/kernel)
include_directories(sysroot/usr/include/sys)

add_executable(Alpha
        kernel/arch/i386/gdt_c.c
        kernel/arch/i386/idt_c.c
        kernel/arch/i386/isr_c.c
        kernel/arch/i386/keyboard.c
        kernel/arch/i386/pic.c
        kernel/arch/i386/ps2.c
        kernel/arch/i386/timer.c
        kernel/arch/i386/tty.c
        kernel/arch/i386/vga.h
        kernel/data_structures/cQueue.c
        kernel/include/kernel/cQueue.h
        kernel/include/kernel/gdt.h
        kernel/include/kernel/idt.h
        kernel/include/kernel/io.h
        kernel/include/kernel/isr.h
        kernel/include/kernel/keyboard.h
        kernel/include/kernel/pic.h
        kernel/include/kernel/ps2.h
        kernel/include/kernel/timer.h
        kernel/include/kernel/tty.h
        kernel/kernel/kernel.c
        libc/include/sys/cdefs.h
        libc/include/stdio.h
        libc/include/stdlib.h
        libc/include/string.h
        libc/stdio/printf.c
        libc/stdio/putchar.c
        libc/stdio/puts.c
        libc/stdlib/abort.c
        libc/string/memcmp.c
        libc/string/memcpy.c
        libc/string/memmove.c
        libc/string/memset.c
        libc/string/strlen.c
        sysroot/usr/include/kernel/cQueue.h
        sysroot/usr/include/kernel/gdt.h
        sysroot/usr/include/kernel/idt.h
        sysroot/usr/include/kernel/io.h
        sysroot/usr/include/kernel/isr.h
        sysroot/usr/include/kernel/keyboard.h
        sysroot/usr/include/kernel/pic.h
        sysroot/usr/include/kernel/ps2.h
        sysroot/usr/include/kernel/timer.h
        sysroot/usr/include/kernel/tty.h
        sysroot/usr/include/sys/cdefs.h
        sysroot/usr/include/stdio.h
        sysroot/usr/include/stdlib.h
        sysroot/usr/include/string.h
        kernel.c kernel/include/kernel/kernel_io.h kernel/include/kernel/heap.h kernel/arch/i386/heap.c)
