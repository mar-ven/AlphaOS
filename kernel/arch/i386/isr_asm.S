.intel_syntax noprefix
.section .text

.global isr0
.global isr1
.global isr2
.global isr3
.global isr4
.global isr5
.global isr6
.global isr7
.global isr8
.global isr9
.global isr10
.global isr11
.global isr12
.global isr13
.global isr14
.global isr15
.global isr16
.global isr17
.global isr18
.global isr19
.global isr20
.global isr21
.global isr22
.global isr23
.global isr24
.global isr25
.global isr26
.global isr27
.global isr28
.global isr29
.global isr30
.global isr31
.global isr32
.global isr33
.global isr34
.global isr35
.global isr36
.global isr37
.global isr38
.global isr39
.global isr40
.global isr41
.global isr42
.global isr43
.global isr44
.global isr45
.global isr46
.global isr47
.extern isr_handler
.extern irq_handler

# This is our common ISR stub. It saves the processor state, sets
# up for kernel mode segments, calls the C-level fault handler,
# and finally restores the stack frame.
isr_common_stub:
   pusha                    # Pushes edi,esi,ebp,esp,ebx,edx,ecx,eax

   xor eax, eax
   mov ax, ds               # Lower 16-bits of eax = ds.
   push eax                 # save the data segment descriptor

   mov ax, 0x10  # load the kernel data segment descriptor
   mov ds, ax
   mov es, ax
   mov fs, ax
   mov gs, ax

   call isr_handler

   # comment-pop eax         reload the original data segment descriptor
   mov ax, 0x10
   mov ds, ax
   mov es, ax
   mov fs, ax
   mov gs, ax

   pop eax
   popa                     # Pops edi,esi,ebp...
   add esp, 8     # Cleans up the pushed error code and pushed ISR number
   sti
   iret           # pops 5 things at once: CS, EIP, EFLAGS, SS, and ESP

# This is our common IRQ stub. It saves the processor state, sets
# up for kernel mode segments, calls the C-level fault handler,
# and finally restores the stack frame.
irq_common_stub:
   pusha                    # Pushes edi,esi,ebp,esp,ebx,edx,ecx,eax

   xor eax, eax
   mov ax, ds               # Lower 16-bits of eax = ds.
   push eax                 # save the data segment descriptor

   mov ax, 0x10  # load the kernel data segment descriptor
   mov ds, ax
   mov es, ax
   mov fs, ax
   mov gs, ax

   call irq_handler

   mov ax, 0x10        # reload the original data segment descriptor
   mov ds, ax
   mov es, ax
   mov fs, ax
   mov gs, ax

   pop eax
   
   popa                     # Pops edi,esi,ebp...
   add esp, 8     # Cleans up the pushed error code and pushed ISR number
   sti
   iret           # pops 5 things at once: CS, EIP, EFLAGS, SS, and ESP

isr0:
  cli
  push 0
  push 0
  jmp isr_common_stub
 
isr1:
  cli
  push 0
  push 1
  jmp isr_common_stub
 
isr2:
  cli
  push 0
  push 2
  jmp isr_common_stub

isr3:
  cli
  push 0
  push 3
  jmp isr_common_stub

isr4:
  cli
  push 0
  push 4
  jmp isr_common_stub

isr5:
  cli
  push 0
  push 5
  jmp isr_common_stub

isr6:
  cli
  push 0
  push 6
  jmp isr_common_stub

isr7:
  cli
  push 0
  push 7
  jmp isr_common_stub

isr8:
  cli
  push 0
  push 8
  jmp isr_common_stub

isr9:
  cli
  push 0
  push 9
  jmp isr_common_stub

isr10:
  cli
  push 0
  push 10
  jmp isr_common_stub

isr11:
  cli
  push 0
  push 11
  jmp isr_common_stub

isr12:
  cli
  push 0
  push 12
  jmp isr_common_stub

isr13:
  cli
  push 0
  push 13
  jmp isr_common_stub

isr14:
  cli
  push 0
  push 14
  jmp isr_common_stub

isr15:
  cli
  push 0
  push 15
  jmp isr_common_stub

isr16:
  cli
  push 0
  push 16
  jmp isr_common_stub

isr17:
  cli
  push 0
  push 17
  jmp isr_common_stub

isr18:
  cli
  push 0
  push 18
  jmp isr_common_stub

isr19:
  cli
  push 0
  push 19
  jmp isr_common_stub

isr20:
  cli
  push 0
  push 20
  jmp isr_common_stub

isr21:
  cli
  push 0
  push 21
  jmp isr_common_stub

isr22:
  cli
  push 0
  push 22
  jmp isr_common_stub

isr23:
  cli
  push 0
  push 23
  jmp isr_common_stub

isr24:
  cli
  push 0
  push 24
  jmp isr_common_stub

isr25:
  cli
  push 0
  push 25
  jmp isr_common_stub

isr26:
  cli
  push 0
  push 26
  jmp isr_common_stub

isr27:
  cli
  push 0
  push 27
  jmp isr_common_stub

isr28:
  cli
  push 0
  push 28
  jmp isr_common_stub

isr29:
  cli
  push 0
  push 29
  jmp isr_common_stub

isr30:
  cli
  push 0
  push 30
  jmp isr_common_stub

isr31:
  cli
  push 0
  push 31
  jmp isr_common_stub

isr32:
  cli
  push 0
  push 32
  jmp irq_common_stub

isr33:
  cli
  push 0
  push 33
  jmp irq_common_stub

isr34:
  cli
  push 0
  push 34
  jmp irq_common_stub

isr35:
  cli
  push 0
  push 35
  jmp irq_common_stub

isr36:
  cli
  push 0
  push 36
  jmp irq_common_stub

isr37:
  cli
  push 0
  push 37
  jmp irq_common_stub

isr38:
  cli
  push 0
  push 38
  jmp irq_common_stub

isr39:
  cli
  push 0
  push 39
  jmp irq_common_stub

isr40:
  cli
  push 0
  push 40
  jmp irq_common_stub

isr41:
  cli
  push 0
  push 41
  jmp irq_common_stub

isr42:
  cli
  push 0
  push 42
  jmp irq_common_stub

isr43:
  cli
  push 0
  push 43
  jmp irq_common_stub

isr44:
  cli
  push 0
  push 44
  jmp irq_common_stub

isr45:
  cli
  push 0
  push 45
  jmp irq_common_stub

isr46:
  cli
  push 0
  push 46
  jmp irq_common_stub

isr47:
  cli
  push 0
  push 47
  jmp irq_common_stub
