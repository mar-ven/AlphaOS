#include <kernel/keyboard.h>
#include <kernel/isr.h>
#include <kernel/ps2.h>

#include <stdio.h>
#include <stdbool.h>
#include <stdint.h>
#include <stddef.h>
#include <kernel/io.h>
#include <kernel/tty.h>


char keyboard_set1_decode(uint8_t byte) {
    switch(byte) {
        case 0x01:
            return 27;
        case 0x02:
            return '1';
        case 0x03:
            return '2';
        case 0x04:
            return '3';
        case 0x05:
            return '4';
        case 0x06:
            return '5';
        case 0x07:
            return '6';
        case 0x08:
            return '7';
        case 0x09:
            return '8';
        case 0x0A:
            return '9';
        case 0x0B:
            return '0';
        case 0x0C:
            return '-';
        case 0x0D:
            return '=';
        case 0x0E:
            return 8;
        case 0x0F:
            return '\t';
        case 0x10:
            return 'Q';
        case 0x11:
            return 'W';
        case 0x12:
            return 'E';
        case 0x13:
            return 'R';
        case 0x14:
            return 'T';
        case 0x15:
            return 'Y';
        case 0x16:
            return 'U';
        case 0x17:
            return 'I';
        case 0x18:
            return 'O';
        case 0x19:
            return 'P';
        case 0x1A:
            return '[';
        case 0x1B:
            return ']';
        case 0x1C:
            return '\n';
        case 0x1D:
            return 0; //left control
        case 0x1E:
            return 'A';
        case 0x1F:
            return 'S';
        case 0x20:
            return 'D';
        case 0x21:
            return 'F';
        case 0x22:
            return 'G';
        case 0x23:
            return 'H';
        case 0x24:
            return 'J';
        case 0x25:
            return 'K';
        case 0x26:
            return 'L';
        case 0x27:
            return 59;
        case 0x28:
            return '\'';
        case 0x29:
            return '\'';
        case 0x2A:
            return 0; //left shift
        case 0x2B:
            return '\\';
        case 0x2C:
            return 'Z';
        case 0x2D:
            return 'X';
        case 0x2E:
            return 'C';
        case 0x2F:
            return 'V';
        case 0x30:
            return 'B';
        case 0x31:
            return 'N';
        case 0x32:
            return 'M';
        case 0x33:
            return ',';
        case 0x34:
            return '.';
        case 0x35:
            return '/';
        case 0x36:
            return 0; // right shift
        case 0x37:
            return '*';
        case 0x38:
            return 0; //left alt 
        case 0x39:
            return ' ';
        case 0x3A:
            return 0; //caps lock
        case 0x3B:
            return 0; //f1
        case 0x3C:
            return 0; //f2 
        case 0x3D:
            return 0; //f3
        case 0x3E:
            return 0; //f4
        case 0x3F:
            return 0; //f5
        case 0x40:
            return 0; //f6
        case 0x41:
            return 0; //f7
        case 0x42:
            return 0; //f8
        case 0x43:
            return 0; //f9
        case 0x44:
            return 0; //f10
        case 0x45:
            return 0; //numberlock
        case 0x46:
            return 0; //scrolllock
        case 0x47:
            return '7';
        case 0x48:
            return '8';
        case 0x49:
            return '9';
        case 0x4A:
            return '-';
        case 0x4B:
            return '4';
        case 0x4C:
            return '5';
        case 0x4D:
            return '6';
        case 0x4E:
            return '+';
        case 0x4F:
            return '1';
        case 0x50:
            return '2';
        case 0x51:
            return '3';
        case 0x52:
            return '0';
        case 0x53:
            return '.';
        case 0x57:
            return 0; //f11
        case 0x58:
            return 0; //f12
        default:
            return byte;
    }
}

char keyboard_set2_decode(uint8_t byte) {
    switch(byte) {
        case 0x01:
            return 0; //F9 pressed
        case 0x02:
            return 0; //undefined
        case 0x03:
            return 0; //F5 pressed
        case 0x04:
            return 0; //F3 pressed
        case 0x05:
            return 0; //F1 pressed
        case 0x06:
            return 0; //F2 pressed
        case 0x07:
            return 0; //F12 pressed
        case 0x08:
            return 0; //undefined
        case 0x09:
            return 0; //F10 pressed
        case 0x0A:
            return 0; //F8 pressed
        case 0x0B:
            return 0; //F6 pressed
        case 0x0C:
            return 0; //F4 pressed
        case 0x0D:
            return '\t';
        case 0x0E:
            return '\'';
        case 0x0F:
            return 0; //undefined
        case 0x10:
            return 0; //undefined
        case 0x11:
            return 0; //left alt pressed
        case 0x12:
            return 0; //left shift pressed
        case 0x13:
            return 0; //undefined
        case 0x14:
            return 0; //left control pressed
        case 0x15:
            return 'Q';
        case 0x16:
            return '1';
        case 0x17:
            return 0; //undefined
        case 0x18:
            return 0; //undefined
        case 0x19:
            return 0; //undefined
        case 0x1A:
            return 'Z';
        case 0x1B:
            return 'S';
        case 0x1C:
            return 'A';
        case 0x1D:
            return 'W';
        case 0x1E:
            return '2';
        case 0x1F:
            return 0; //undefined
        case 0x20:
            return 0; //undefined
        case 0x21:
            return 'C';
        case 0x22:
            return 'X';
        case 0x23:
            return 'D';
        case 0x24:
            return 'E';
        case 0x25:
            return '4';
        case 0x26:
            return '3';
        case 0x27:
            return 0; //undefined
        case 0x28:
            return 0; //undefined
        case 0x29:
            return ' ';
        case 0x2A:
            return 'V';
        case 0x2B:
            return 'F';
        case 0x2C:
            return 'T';
        case 0x2D:
            return 'R';
        case 0x2E:
            return '5';
        case 0x2F:
            return 0; //undefined
        case 0x30:
            return 0; //undefined
        case 0x31:
            return 'N';
        case 0x32:
            return 'B';
        case 0x33:
            return 'H';
        case 0x34:
            return 'G';
        case 0x35:
            return 'Y';
        case 0x36:
            return '6';
        case 0x37:
            return 0; //undefined
        case 0x38:
            return 0; //undefined 
        case 0x39:
            return 0; //undefined
        case 0x3A:
            return 'M';
        case 0x3B:
            return 'J';
        case 0x3C:
            return 'U'; 
        case 0x3D:
            return '7';
        case 0x3E:
            return '8';
        case 0x3F:
            return 0;
        case 0x40:
            return 0; 
        case 0x41:
            return ',';
        case 0x42:
            return 'K';
        case 0x43:
            return 'I';
        case 0x44:
            return 'O';
        case 0x45:
            return '0';
        case 0x46:
            return '9';
        case 0x47:
            return 0; //undefined
        case 0x48:
            return 0; //undefined
        case 0x49:
            return '.';
        case 0x4A:
            return '/';
        case 0x4B:
            return 'L';
        case 0x4C:
            return ';';
        case 0x4D:
            return 'P';
        case 0x4E:
            return '-';
        case 0x4F:
            return 0; //undefined
        case 0x50:
            return 0; //undefined
        case 0x51:
            return 0; //undefined
        case 0x52:
            return '\'';
        case 0x53:
            return 0; //undefined
        case 0x54:
            return '[';
        case 0x55:
            return '=';
        case 0x56:
            return 0; //undefined
        case 0x57:
            return 0; //undefined
        case 0x58:
            return 0; //caps lock pressed
        case 0x59:
            return 0; //right shift pressed
        case 0x5A:
            return '\n';
        case 0x5B:
            return ']';
        case 0x5C:
            return 0; //undefined
        case 0x5D:
            return '\\';
        case 0x66:
            return '\b';
        case 0x69:
            return '1';
        case 0x6B:
            return '4';
        case 0x6C:
            return '7';
        case 0x70:
            return '0';
        case 0x71:
            return '.';
        case 0x72:
            return '2';
        case 0x73:
            return '5';
        case 0x74:
            return '6';
        case 0x75:
            return '8';
        case 0x76:
            return 0; //ESC pressed
        case 0x77:
            return 0; //numberlock pressed
        case 0x78:
            return 0; //f11 pressed
        case 0x79:
            return '+';
        case 0x7A:
            return '3';
        case 0x7B:
            return '-';
        case 0x7C:
            return '*';
        case 0x7D:
            return '9';
        case 0x7E:
            return 0; //scrolllock pressed
        case 0x83:
            return 0; //f7 pressed
        default:
            return byte;
    }
}


static void keyboard_callback(registers_t regs)
{   
    
    uint8_t keyboard_answer;    
    static bool isReleased = false;
    keyboard_answer = receiveByteFromPS2ByInterrupt();
    if(keyboard_answer == 0xE0 || keyboard_answer == 0xF0)
        isReleased = true;
    if(!isReleased)
        printf("%c", keyboard_set2_decode(keyboard_answer));
    else if(keyboard_answer != 0xE0 && keyboard_answer != 0xF0)
        isReleased = false;
    /*char c = keyboard_set2_decode(keyboard_answer);
    if(c != 0 && c != keyboard_answer)
        printf("%u", c);*/
    //printf("PS2 says: %u\n", keyboard_answer);
}

static void keyboard12_callback(registers_t regs)
{
    
    uint8_t keyboard_answer;
    keyboard_answer = receiveByteFromPS2ByInterrupt();
    printf("LINE 12: DATA RECEIVED: %u\n", keyboard_answer);
}

void init_keyboard() {
   
    uint8_t fake_read = inb(PS2_DATA_PORT);

    bool check;
    check = sendByteToPS2(0xEE);
    if(!check)
        printf("No communication with keyboard.\n");
    uint8_t response = receiveByteFromPS2ByPolling(&check);
    printf("Response is: %u\n", response);
    
    check = sendByteToPS2(0xF0);
    if(!check)
        printf("No communication with keyboard.\n");
    response = receiveByteFromPS2ByPolling(&check);
    printf("Response is: %u\n", response);
    check = sendByteToPS2(0x0);
    if(!check)
        printf("No communication with keyboard.\n");
    response = receiveByteFromPS2ByPolling(&check);
    printf("Response is: %u\n", response);
   
    register_interrupt_handler(IRQ1, &keyboard_callback);
    register_interrupt_handler(IRQ12, &keyboard12_callback);

    
    
}