# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Disable VCS-based implicit rules.
% : %,v


# Disable VCS-based implicit rules.
% : RCS/%


# Disable VCS-based implicit rules.
% : RCS/%,v


# Disable VCS-based implicit rules.
% : SCCS/s.%


# Disable VCS-based implicit rules.
% : s.%


.SUFFIXES: .hpux_make_needs_suffix_list


# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /cygdrive/c/Users/marco/AppData/Local/JetBrains/CLion2020.3/cygwin_cmake/bin/cmake.exe

# The command to remove a file.
RM = /cygdrive/c/Users/marco/AppData/Local/JetBrains/CLion2020.3/cygwin_cmake/bin/cmake.exe -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "//wsl\$$/Ubuntu/home/marco/Alpha"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Alpha.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Alpha.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Alpha.dir/flags.make

CMakeFiles/Alpha.dir/kernel/arch/i386/gdt_c.c.o: CMakeFiles/Alpha.dir/flags.make
CMakeFiles/Alpha.dir/kernel/arch/i386/gdt_c.c.o: ../kernel/arch/i386/gdt_c.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Alpha.dir/kernel/arch/i386/gdt_c.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Alpha.dir/kernel/arch/i386/gdt_c.c.o   -c "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/gdt_c.c"

CMakeFiles/Alpha.dir/kernel/arch/i386/gdt_c.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Alpha.dir/kernel/arch/i386/gdt_c.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/gdt_c.c" > CMakeFiles/Alpha.dir/kernel/arch/i386/gdt_c.c.i

CMakeFiles/Alpha.dir/kernel/arch/i386/gdt_c.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Alpha.dir/kernel/arch/i386/gdt_c.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/gdt_c.c" -o CMakeFiles/Alpha.dir/kernel/arch/i386/gdt_c.c.s

CMakeFiles/Alpha.dir/kernel/arch/i386/idt_c.c.o: CMakeFiles/Alpha.dir/flags.make
CMakeFiles/Alpha.dir/kernel/arch/i386/idt_c.c.o: ../kernel/arch/i386/idt_c.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Alpha.dir/kernel/arch/i386/idt_c.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Alpha.dir/kernel/arch/i386/idt_c.c.o   -c "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/idt_c.c"

CMakeFiles/Alpha.dir/kernel/arch/i386/idt_c.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Alpha.dir/kernel/arch/i386/idt_c.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/idt_c.c" > CMakeFiles/Alpha.dir/kernel/arch/i386/idt_c.c.i

CMakeFiles/Alpha.dir/kernel/arch/i386/idt_c.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Alpha.dir/kernel/arch/i386/idt_c.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/idt_c.c" -o CMakeFiles/Alpha.dir/kernel/arch/i386/idt_c.c.s

CMakeFiles/Alpha.dir/kernel/arch/i386/isr_c.c.o: CMakeFiles/Alpha.dir/flags.make
CMakeFiles/Alpha.dir/kernel/arch/i386/isr_c.c.o: ../kernel/arch/i386/isr_c.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/Alpha.dir/kernel/arch/i386/isr_c.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Alpha.dir/kernel/arch/i386/isr_c.c.o   -c "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/isr_c.c"

CMakeFiles/Alpha.dir/kernel/arch/i386/isr_c.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Alpha.dir/kernel/arch/i386/isr_c.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/isr_c.c" > CMakeFiles/Alpha.dir/kernel/arch/i386/isr_c.c.i

CMakeFiles/Alpha.dir/kernel/arch/i386/isr_c.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Alpha.dir/kernel/arch/i386/isr_c.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/isr_c.c" -o CMakeFiles/Alpha.dir/kernel/arch/i386/isr_c.c.s

CMakeFiles/Alpha.dir/kernel/arch/i386/keyboard.c.o: CMakeFiles/Alpha.dir/flags.make
CMakeFiles/Alpha.dir/kernel/arch/i386/keyboard.c.o: ../kernel/arch/i386/keyboard.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building C object CMakeFiles/Alpha.dir/kernel/arch/i386/keyboard.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Alpha.dir/kernel/arch/i386/keyboard.c.o   -c "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/keyboard.c"

CMakeFiles/Alpha.dir/kernel/arch/i386/keyboard.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Alpha.dir/kernel/arch/i386/keyboard.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/keyboard.c" > CMakeFiles/Alpha.dir/kernel/arch/i386/keyboard.c.i

CMakeFiles/Alpha.dir/kernel/arch/i386/keyboard.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Alpha.dir/kernel/arch/i386/keyboard.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/keyboard.c" -o CMakeFiles/Alpha.dir/kernel/arch/i386/keyboard.c.s

CMakeFiles/Alpha.dir/kernel/arch/i386/pic.c.o: CMakeFiles/Alpha.dir/flags.make
CMakeFiles/Alpha.dir/kernel/arch/i386/pic.c.o: ../kernel/arch/i386/pic.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building C object CMakeFiles/Alpha.dir/kernel/arch/i386/pic.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Alpha.dir/kernel/arch/i386/pic.c.o   -c "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/pic.c"

CMakeFiles/Alpha.dir/kernel/arch/i386/pic.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Alpha.dir/kernel/arch/i386/pic.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/pic.c" > CMakeFiles/Alpha.dir/kernel/arch/i386/pic.c.i

CMakeFiles/Alpha.dir/kernel/arch/i386/pic.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Alpha.dir/kernel/arch/i386/pic.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/pic.c" -o CMakeFiles/Alpha.dir/kernel/arch/i386/pic.c.s

CMakeFiles/Alpha.dir/kernel/arch/i386/ps2.c.o: CMakeFiles/Alpha.dir/flags.make
CMakeFiles/Alpha.dir/kernel/arch/i386/ps2.c.o: ../kernel/arch/i386/ps2.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building C object CMakeFiles/Alpha.dir/kernel/arch/i386/ps2.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Alpha.dir/kernel/arch/i386/ps2.c.o   -c "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/ps2.c"

CMakeFiles/Alpha.dir/kernel/arch/i386/ps2.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Alpha.dir/kernel/arch/i386/ps2.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/ps2.c" > CMakeFiles/Alpha.dir/kernel/arch/i386/ps2.c.i

CMakeFiles/Alpha.dir/kernel/arch/i386/ps2.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Alpha.dir/kernel/arch/i386/ps2.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/ps2.c" -o CMakeFiles/Alpha.dir/kernel/arch/i386/ps2.c.s

CMakeFiles/Alpha.dir/kernel/arch/i386/timer.c.o: CMakeFiles/Alpha.dir/flags.make
CMakeFiles/Alpha.dir/kernel/arch/i386/timer.c.o: ../kernel/arch/i386/timer.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building C object CMakeFiles/Alpha.dir/kernel/arch/i386/timer.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Alpha.dir/kernel/arch/i386/timer.c.o   -c "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/timer.c"

CMakeFiles/Alpha.dir/kernel/arch/i386/timer.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Alpha.dir/kernel/arch/i386/timer.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/timer.c" > CMakeFiles/Alpha.dir/kernel/arch/i386/timer.c.i

CMakeFiles/Alpha.dir/kernel/arch/i386/timer.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Alpha.dir/kernel/arch/i386/timer.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/timer.c" -o CMakeFiles/Alpha.dir/kernel/arch/i386/timer.c.s

CMakeFiles/Alpha.dir/kernel/arch/i386/tty.c.o: CMakeFiles/Alpha.dir/flags.make
CMakeFiles/Alpha.dir/kernel/arch/i386/tty.c.o: ../kernel/arch/i386/tty.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Building C object CMakeFiles/Alpha.dir/kernel/arch/i386/tty.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Alpha.dir/kernel/arch/i386/tty.c.o   -c "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/tty.c"

CMakeFiles/Alpha.dir/kernel/arch/i386/tty.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Alpha.dir/kernel/arch/i386/tty.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/tty.c" > CMakeFiles/Alpha.dir/kernel/arch/i386/tty.c.i

CMakeFiles/Alpha.dir/kernel/arch/i386/tty.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Alpha.dir/kernel/arch/i386/tty.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/tty.c" -o CMakeFiles/Alpha.dir/kernel/arch/i386/tty.c.s

CMakeFiles/Alpha.dir/kernel/data_structures/cQueue.c.o: CMakeFiles/Alpha.dir/flags.make
CMakeFiles/Alpha.dir/kernel/data_structures/cQueue.c.o: ../kernel/data_structures/cQueue.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "Building C object CMakeFiles/Alpha.dir/kernel/data_structures/cQueue.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Alpha.dir/kernel/data_structures/cQueue.c.o   -c "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/data_structures/cQueue.c"

CMakeFiles/Alpha.dir/kernel/data_structures/cQueue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Alpha.dir/kernel/data_structures/cQueue.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/data_structures/cQueue.c" > CMakeFiles/Alpha.dir/kernel/data_structures/cQueue.c.i

CMakeFiles/Alpha.dir/kernel/data_structures/cQueue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Alpha.dir/kernel/data_structures/cQueue.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/data_structures/cQueue.c" -o CMakeFiles/Alpha.dir/kernel/data_structures/cQueue.c.s

CMakeFiles/Alpha.dir/kernel/kernel/kernel.c.o: CMakeFiles/Alpha.dir/flags.make
CMakeFiles/Alpha.dir/kernel/kernel/kernel.c.o: ../kernel/kernel/kernel.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_10) "Building C object CMakeFiles/Alpha.dir/kernel/kernel/kernel.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Alpha.dir/kernel/kernel/kernel.c.o   -c "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/kernel/kernel.c"

CMakeFiles/Alpha.dir/kernel/kernel/kernel.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Alpha.dir/kernel/kernel/kernel.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/kernel/kernel.c" > CMakeFiles/Alpha.dir/kernel/kernel/kernel.c.i

CMakeFiles/Alpha.dir/kernel/kernel/kernel.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Alpha.dir/kernel/kernel/kernel.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/kernel/kernel.c" -o CMakeFiles/Alpha.dir/kernel/kernel/kernel.c.s

CMakeFiles/Alpha.dir/libc/stdio/printf.c.o: CMakeFiles/Alpha.dir/flags.make
CMakeFiles/Alpha.dir/libc/stdio/printf.c.o: ../libc/stdio/printf.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_11) "Building C object CMakeFiles/Alpha.dir/libc/stdio/printf.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Alpha.dir/libc/stdio/printf.c.o   -c "//wsl\$$/Ubuntu/home/marco/Alpha/libc/stdio/printf.c"

CMakeFiles/Alpha.dir/libc/stdio/printf.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Alpha.dir/libc/stdio/printf.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "//wsl\$$/Ubuntu/home/marco/Alpha/libc/stdio/printf.c" > CMakeFiles/Alpha.dir/libc/stdio/printf.c.i

CMakeFiles/Alpha.dir/libc/stdio/printf.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Alpha.dir/libc/stdio/printf.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "//wsl\$$/Ubuntu/home/marco/Alpha/libc/stdio/printf.c" -o CMakeFiles/Alpha.dir/libc/stdio/printf.c.s

CMakeFiles/Alpha.dir/libc/stdio/putchar.c.o: CMakeFiles/Alpha.dir/flags.make
CMakeFiles/Alpha.dir/libc/stdio/putchar.c.o: ../libc/stdio/putchar.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_12) "Building C object CMakeFiles/Alpha.dir/libc/stdio/putchar.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Alpha.dir/libc/stdio/putchar.c.o   -c "//wsl\$$/Ubuntu/home/marco/Alpha/libc/stdio/putchar.c"

CMakeFiles/Alpha.dir/libc/stdio/putchar.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Alpha.dir/libc/stdio/putchar.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "//wsl\$$/Ubuntu/home/marco/Alpha/libc/stdio/putchar.c" > CMakeFiles/Alpha.dir/libc/stdio/putchar.c.i

CMakeFiles/Alpha.dir/libc/stdio/putchar.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Alpha.dir/libc/stdio/putchar.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "//wsl\$$/Ubuntu/home/marco/Alpha/libc/stdio/putchar.c" -o CMakeFiles/Alpha.dir/libc/stdio/putchar.c.s

CMakeFiles/Alpha.dir/libc/stdio/puts.c.o: CMakeFiles/Alpha.dir/flags.make
CMakeFiles/Alpha.dir/libc/stdio/puts.c.o: ../libc/stdio/puts.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_13) "Building C object CMakeFiles/Alpha.dir/libc/stdio/puts.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Alpha.dir/libc/stdio/puts.c.o   -c "//wsl\$$/Ubuntu/home/marco/Alpha/libc/stdio/puts.c"

CMakeFiles/Alpha.dir/libc/stdio/puts.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Alpha.dir/libc/stdio/puts.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "//wsl\$$/Ubuntu/home/marco/Alpha/libc/stdio/puts.c" > CMakeFiles/Alpha.dir/libc/stdio/puts.c.i

CMakeFiles/Alpha.dir/libc/stdio/puts.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Alpha.dir/libc/stdio/puts.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "//wsl\$$/Ubuntu/home/marco/Alpha/libc/stdio/puts.c" -o CMakeFiles/Alpha.dir/libc/stdio/puts.c.s

CMakeFiles/Alpha.dir/libc/stdlib/abort.c.o: CMakeFiles/Alpha.dir/flags.make
CMakeFiles/Alpha.dir/libc/stdlib/abort.c.o: ../libc/stdlib/abort.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_14) "Building C object CMakeFiles/Alpha.dir/libc/stdlib/abort.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Alpha.dir/libc/stdlib/abort.c.o   -c "//wsl\$$/Ubuntu/home/marco/Alpha/libc/stdlib/abort.c"

CMakeFiles/Alpha.dir/libc/stdlib/abort.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Alpha.dir/libc/stdlib/abort.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "//wsl\$$/Ubuntu/home/marco/Alpha/libc/stdlib/abort.c" > CMakeFiles/Alpha.dir/libc/stdlib/abort.c.i

CMakeFiles/Alpha.dir/libc/stdlib/abort.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Alpha.dir/libc/stdlib/abort.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "//wsl\$$/Ubuntu/home/marco/Alpha/libc/stdlib/abort.c" -o CMakeFiles/Alpha.dir/libc/stdlib/abort.c.s

CMakeFiles/Alpha.dir/libc/string/memcmp.c.o: CMakeFiles/Alpha.dir/flags.make
CMakeFiles/Alpha.dir/libc/string/memcmp.c.o: ../libc/string/memcmp.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_15) "Building C object CMakeFiles/Alpha.dir/libc/string/memcmp.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Alpha.dir/libc/string/memcmp.c.o   -c "//wsl\$$/Ubuntu/home/marco/Alpha/libc/string/memcmp.c"

CMakeFiles/Alpha.dir/libc/string/memcmp.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Alpha.dir/libc/string/memcmp.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "//wsl\$$/Ubuntu/home/marco/Alpha/libc/string/memcmp.c" > CMakeFiles/Alpha.dir/libc/string/memcmp.c.i

CMakeFiles/Alpha.dir/libc/string/memcmp.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Alpha.dir/libc/string/memcmp.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "//wsl\$$/Ubuntu/home/marco/Alpha/libc/string/memcmp.c" -o CMakeFiles/Alpha.dir/libc/string/memcmp.c.s

CMakeFiles/Alpha.dir/libc/string/memcpy.c.o: CMakeFiles/Alpha.dir/flags.make
CMakeFiles/Alpha.dir/libc/string/memcpy.c.o: ../libc/string/memcpy.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_16) "Building C object CMakeFiles/Alpha.dir/libc/string/memcpy.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Alpha.dir/libc/string/memcpy.c.o   -c "//wsl\$$/Ubuntu/home/marco/Alpha/libc/string/memcpy.c"

CMakeFiles/Alpha.dir/libc/string/memcpy.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Alpha.dir/libc/string/memcpy.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "//wsl\$$/Ubuntu/home/marco/Alpha/libc/string/memcpy.c" > CMakeFiles/Alpha.dir/libc/string/memcpy.c.i

CMakeFiles/Alpha.dir/libc/string/memcpy.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Alpha.dir/libc/string/memcpy.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "//wsl\$$/Ubuntu/home/marco/Alpha/libc/string/memcpy.c" -o CMakeFiles/Alpha.dir/libc/string/memcpy.c.s

CMakeFiles/Alpha.dir/libc/string/memmove.c.o: CMakeFiles/Alpha.dir/flags.make
CMakeFiles/Alpha.dir/libc/string/memmove.c.o: ../libc/string/memmove.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_17) "Building C object CMakeFiles/Alpha.dir/libc/string/memmove.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Alpha.dir/libc/string/memmove.c.o   -c "//wsl\$$/Ubuntu/home/marco/Alpha/libc/string/memmove.c"

CMakeFiles/Alpha.dir/libc/string/memmove.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Alpha.dir/libc/string/memmove.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "//wsl\$$/Ubuntu/home/marco/Alpha/libc/string/memmove.c" > CMakeFiles/Alpha.dir/libc/string/memmove.c.i

CMakeFiles/Alpha.dir/libc/string/memmove.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Alpha.dir/libc/string/memmove.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "//wsl\$$/Ubuntu/home/marco/Alpha/libc/string/memmove.c" -o CMakeFiles/Alpha.dir/libc/string/memmove.c.s

CMakeFiles/Alpha.dir/libc/string/memset.c.o: CMakeFiles/Alpha.dir/flags.make
CMakeFiles/Alpha.dir/libc/string/memset.c.o: ../libc/string/memset.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_18) "Building C object CMakeFiles/Alpha.dir/libc/string/memset.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Alpha.dir/libc/string/memset.c.o   -c "//wsl\$$/Ubuntu/home/marco/Alpha/libc/string/memset.c"

CMakeFiles/Alpha.dir/libc/string/memset.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Alpha.dir/libc/string/memset.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "//wsl\$$/Ubuntu/home/marco/Alpha/libc/string/memset.c" > CMakeFiles/Alpha.dir/libc/string/memset.c.i

CMakeFiles/Alpha.dir/libc/string/memset.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Alpha.dir/libc/string/memset.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "//wsl\$$/Ubuntu/home/marco/Alpha/libc/string/memset.c" -o CMakeFiles/Alpha.dir/libc/string/memset.c.s

CMakeFiles/Alpha.dir/libc/string/strlen.c.o: CMakeFiles/Alpha.dir/flags.make
CMakeFiles/Alpha.dir/libc/string/strlen.c.o: ../libc/string/strlen.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_19) "Building C object CMakeFiles/Alpha.dir/libc/string/strlen.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Alpha.dir/libc/string/strlen.c.o   -c "//wsl\$$/Ubuntu/home/marco/Alpha/libc/string/strlen.c"

CMakeFiles/Alpha.dir/libc/string/strlen.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Alpha.dir/libc/string/strlen.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "//wsl\$$/Ubuntu/home/marco/Alpha/libc/string/strlen.c" > CMakeFiles/Alpha.dir/libc/string/strlen.c.i

CMakeFiles/Alpha.dir/libc/string/strlen.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Alpha.dir/libc/string/strlen.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "//wsl\$$/Ubuntu/home/marco/Alpha/libc/string/strlen.c" -o CMakeFiles/Alpha.dir/libc/string/strlen.c.s

CMakeFiles/Alpha.dir/kernel.c.o: CMakeFiles/Alpha.dir/flags.make
CMakeFiles/Alpha.dir/kernel.c.o: ../kernel.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_20) "Building C object CMakeFiles/Alpha.dir/kernel.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Alpha.dir/kernel.c.o   -c "//wsl\$$/Ubuntu/home/marco/Alpha/kernel.c"

CMakeFiles/Alpha.dir/kernel.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Alpha.dir/kernel.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "//wsl\$$/Ubuntu/home/marco/Alpha/kernel.c" > CMakeFiles/Alpha.dir/kernel.c.i

CMakeFiles/Alpha.dir/kernel.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Alpha.dir/kernel.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "//wsl\$$/Ubuntu/home/marco/Alpha/kernel.c" -o CMakeFiles/Alpha.dir/kernel.c.s

CMakeFiles/Alpha.dir/kernel/arch/i386/heap.c.o: CMakeFiles/Alpha.dir/flags.make
CMakeFiles/Alpha.dir/kernel/arch/i386/heap.c.o: ../kernel/arch/i386/heap.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_21) "Building C object CMakeFiles/Alpha.dir/kernel/arch/i386/heap.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/Alpha.dir/kernel/arch/i386/heap.c.o   -c "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/heap.c"

CMakeFiles/Alpha.dir/kernel/arch/i386/heap.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Alpha.dir/kernel/arch/i386/heap.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/heap.c" > CMakeFiles/Alpha.dir/kernel/arch/i386/heap.c.i

CMakeFiles/Alpha.dir/kernel/arch/i386/heap.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Alpha.dir/kernel/arch/i386/heap.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "//wsl\$$/Ubuntu/home/marco/Alpha/kernel/arch/i386/heap.c" -o CMakeFiles/Alpha.dir/kernel/arch/i386/heap.c.s

# Object files for target Alpha
Alpha_OBJECTS = \
"CMakeFiles/Alpha.dir/kernel/arch/i386/gdt_c.c.o" \
"CMakeFiles/Alpha.dir/kernel/arch/i386/idt_c.c.o" \
"CMakeFiles/Alpha.dir/kernel/arch/i386/isr_c.c.o" \
"CMakeFiles/Alpha.dir/kernel/arch/i386/keyboard.c.o" \
"CMakeFiles/Alpha.dir/kernel/arch/i386/pic.c.o" \
"CMakeFiles/Alpha.dir/kernel/arch/i386/ps2.c.o" \
"CMakeFiles/Alpha.dir/kernel/arch/i386/timer.c.o" \
"CMakeFiles/Alpha.dir/kernel/arch/i386/tty.c.o" \
"CMakeFiles/Alpha.dir/kernel/data_structures/cQueue.c.o" \
"CMakeFiles/Alpha.dir/kernel/kernel/kernel.c.o" \
"CMakeFiles/Alpha.dir/libc/stdio/printf.c.o" \
"CMakeFiles/Alpha.dir/libc/stdio/putchar.c.o" \
"CMakeFiles/Alpha.dir/libc/stdio/puts.c.o" \
"CMakeFiles/Alpha.dir/libc/stdlib/abort.c.o" \
"CMakeFiles/Alpha.dir/libc/string/memcmp.c.o" \
"CMakeFiles/Alpha.dir/libc/string/memcpy.c.o" \
"CMakeFiles/Alpha.dir/libc/string/memmove.c.o" \
"CMakeFiles/Alpha.dir/libc/string/memset.c.o" \
"CMakeFiles/Alpha.dir/libc/string/strlen.c.o" \
"CMakeFiles/Alpha.dir/kernel.c.o" \
"CMakeFiles/Alpha.dir/kernel/arch/i386/heap.c.o"

# External object files for target Alpha
Alpha_EXTERNAL_OBJECTS =

Alpha.exe: CMakeFiles/Alpha.dir/kernel/arch/i386/gdt_c.c.o
Alpha.exe: CMakeFiles/Alpha.dir/kernel/arch/i386/idt_c.c.o
Alpha.exe: CMakeFiles/Alpha.dir/kernel/arch/i386/isr_c.c.o
Alpha.exe: CMakeFiles/Alpha.dir/kernel/arch/i386/keyboard.c.o
Alpha.exe: CMakeFiles/Alpha.dir/kernel/arch/i386/pic.c.o
Alpha.exe: CMakeFiles/Alpha.dir/kernel/arch/i386/ps2.c.o
Alpha.exe: CMakeFiles/Alpha.dir/kernel/arch/i386/timer.c.o
Alpha.exe: CMakeFiles/Alpha.dir/kernel/arch/i386/tty.c.o
Alpha.exe: CMakeFiles/Alpha.dir/kernel/data_structures/cQueue.c.o
Alpha.exe: CMakeFiles/Alpha.dir/kernel/kernel/kernel.c.o
Alpha.exe: CMakeFiles/Alpha.dir/libc/stdio/printf.c.o
Alpha.exe: CMakeFiles/Alpha.dir/libc/stdio/putchar.c.o
Alpha.exe: CMakeFiles/Alpha.dir/libc/stdio/puts.c.o
Alpha.exe: CMakeFiles/Alpha.dir/libc/stdlib/abort.c.o
Alpha.exe: CMakeFiles/Alpha.dir/libc/string/memcmp.c.o
Alpha.exe: CMakeFiles/Alpha.dir/libc/string/memcpy.c.o
Alpha.exe: CMakeFiles/Alpha.dir/libc/string/memmove.c.o
Alpha.exe: CMakeFiles/Alpha.dir/libc/string/memset.c.o
Alpha.exe: CMakeFiles/Alpha.dir/libc/string/strlen.c.o
Alpha.exe: CMakeFiles/Alpha.dir/kernel.c.o
Alpha.exe: CMakeFiles/Alpha.dir/kernel/arch/i386/heap.c.o
Alpha.exe: CMakeFiles/Alpha.dir/build.make
Alpha.exe: CMakeFiles/Alpha.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_22) "Linking C executable Alpha.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Alpha.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Alpha.dir/build: Alpha.exe

.PHONY : CMakeFiles/Alpha.dir/build

CMakeFiles/Alpha.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Alpha.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Alpha.dir/clean

CMakeFiles/Alpha.dir/depend:
	cd "//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "//wsl\$$/Ubuntu/home/marco/Alpha" "//wsl\$$/Ubuntu/home/marco/Alpha" "//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug" "//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug" "//wsl\$$/Ubuntu/home/marco/Alpha/cmake-build-debug/CMakeFiles/Alpha.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Alpha.dir/depend

