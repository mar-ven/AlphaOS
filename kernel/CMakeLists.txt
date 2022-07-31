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
        kernel/arch/i386/*.c
        kernel/arch/i386/*.h
        grub/*
        kernel/data_structures/*.c
        kernel/include/*
        kernel/kernel/kernel.c
        libc/*
        sysroot/*
        kernel.c
        )
