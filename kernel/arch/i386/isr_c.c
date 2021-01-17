#include <stdio.h>
#include <kernel/isr.h>
#include <kernel/pic.h>

// This gets called from our ASM interrupt handler stub.
void isr_handler(registers_t regs)
{
   printf("received interrupt: ");
   printf("%u\n", regs.int_no);
   printf("DS: %u\n", regs.ds);
}


isr_t interrupt_handlers[256];
// This gets called from our ASM interrupt handler stub.
void irq_handler(registers_t regs)
{
   // Send an EOI (end of interrupt) signal to the PICs.
   // If this interrupt involved the slave.
  if (regs.int_no >= 40)
   {
       // Send reset signal to slave.
       outb(0xA0, 0x20);
   }
   // Send reset signal to master. (As well as slave, if necessary).
   outb(0x20, 0x20);
   
   //printf("E' stato rilevato: int_no = %u\n", regs.int_no);

   if (interrupt_handlers[regs.int_no] != 0)
   {
       isr_t handler = interrupt_handlers[regs.int_no];
       handler(regs);
   } else {
     //printf("Ole\n");
   }
}


void register_interrupt_handler(uint8_t n, isr_t handler)
{
  interrupt_handlers[n] = handler;
}