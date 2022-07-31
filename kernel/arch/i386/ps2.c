#include <kernel/ps2.h>
#include <kernel/io.h>

#include <stdio.h>
#include <stddef.h>

bool sendByteToPS2(uint8_t byte) {
    int i = 0;
    uint8_t status_reg;
    while(i < 60) {
        status_reg = inb(PS2_STATUS_REGISTER);
        if((status_reg & 0x2) != 0) {
            io_wait();
            i++;
        } else 
            break;        
    }
    if(i == 60)
        return false;
    outb(PS2_DATA_PORT, byte);
    return true;
}

uint8_t receiveByteFromPS2ByInterrupt() {
    return inb(PS2_DATA_PORT);
}

uint8_t receiveByteFromPS2ByPolling(bool *check) {
    int i = 0;
    uint8_t status_register;
    do {
        io_wait();
        status_register = inb(PS2_STATUS_REGISTER);
        if((status_register & 0x1) == 0) {
            io_wait();
            i++;
        } else
            break;
    } while (i < 60);
    if(check != NULL) {
        if(i == 60)
            *check = false;
        else
            *check = true;
    }
    return inb(PS2_DATA_PORT);
}

bool init_PS2() {
    //DISABLE DEVICES
    outb(PS2_COMMAND_REGISTER, 0xAD);
    io_wait();
    outb(PS2_COMMAND_REGISTER, 0xA7);
    io_wait();
    #ifdef PS2_DEBUG
        printf("Finished 1\n");
    #endif
    //FLUSH THE OUTPUT BUFFER
    int i = 0;
    uint8_t status_register;
    
    uint8_t fake_read = inb(PS2_DATA_PORT);
    
    #ifdef PS2_DEBUG
        printf("Finished 2\n");
    #endif
    //SET THE CONTROLLER CONFIGURATION BYTE
    outb(PS2_COMMAND_REGISTER, 0x20);
    i = 0;
    do {
        io_wait();
        status_register = inb(PS2_STATUS_REGISTER);
        if((status_register & 0x1) == 0) {
            io_wait();
            i++;
        } else
            break;
    } while (i < 60);
    if(i == 60)
        return false;
    uint8_t conf_byte = inb(PS2_DATA_PORT);
    #ifdef PS2_DEBUG
        if((conf_byte & 0x32) == 32)
            printf("DUAL CHANNEL\n");
            
        else {
            printf("NOT DUAL CHANNEL\n");
        }
    #endif
    conf_byte &= 188;
    outb(PS2_COMMAND_REGISTER, 0x60);
    i = 0;
    do {
        io_wait();
        status_register = inb(PS2_STATUS_REGISTER);
        if((status_register & 0x2) != 0) {
            io_wait();
            i++;
        } else
            break;
    } while (i < 60);
    if(i == 60)
        return false;
    outb(PS2_DATA_PORT, conf_byte);
    io_wait();
    
    #ifdef PS2_DEBUG
        printf("Finished 3\n");
    #endif
    //PERFORM CONTROLLER SELF-TEST
    outb(PS2_COMMAND_REGISTER, 0xAA);
    i = 0;
    do {
        io_wait();
        status_register = inb(PS2_STATUS_REGISTER);
        if((status_register & 0x1) == 0) {
            io_wait();
            i++;
        } else
            break;
    } while (i < 60);
    if(i == 60)
        return false;
    uint8_t answer = inb(PS2_DATA_PORT);
    #ifdef PS2_DEBUG
        printf("%s\n", (answer == 0x55) ? "Everything good." : "Oh no!\n");
        printf("Finished 4\n");
    #endif
    //PERFORM INTERFACE TESTS
    outb(PS2_COMMAND_REGISTER, 0xAB);
    i = 0;
    do {
        io_wait();
        status_register = inb(PS2_STATUS_REGISTER);
        if((status_register & 0x1) == 0) {
            io_wait();
            i++;
        } else
            break;
    } while (i < 60);
    if(i == 60)
        return false;
    answer = inb(PS2_DATA_PORT);
    #ifdef PS2_DEBUG
        printf("Result of interface test is: %u\n", answer);
    #endif
    //ENABLE DEVICES
    outb(PS2_COMMAND_REGISTER, 0xAE);
    io_wait();
    outb(PS2_COMMAND_REGISTER, 0xA8);
    io_wait();
    outb(PS2_COMMAND_REGISTER, 0x20);
    i = 0;
    do {
        io_wait();
        status_register = inb(PS2_STATUS_REGISTER);
        if((status_register & 0x1) == 0) {
            io_wait();
            i++;
        } else
            break;
    } while (i < 60);
    if(i == 60)
        return false;
    conf_byte = inb(PS2_DATA_PORT);
    conf_byte |= 1; //keyboard enabled, mouse not enbled?
    outb(PS2_COMMAND_REGISTER, 0x60);
    i = 0;
    do {
        io_wait();
        status_register = inb(PS2_STATUS_REGISTER);
        if((status_register & 0x2) != 0) {
            io_wait();
            i++;
        } else
            break;
    } while (i < 60);
    if(i == 60)
        return false;
    outb(PS2_DATA_PORT, conf_byte);
    io_wait();
    #ifdef PS2_DEBUG
        printf("Finished 6\n");
    //RESET DEVICE
        printf("FINISHED 7: status: %u\n", sendByteToPS2(0xFF));
    #endif
    i = 0;
    do {
        io_wait();
        status_register = inb(PS2_STATUS_REGISTER);
        if((status_register & 0x1) == 0) {
            io_wait();
            i++;
        } else
            break;
    } while (i < 60);
    if(i == 60)
        return false;
    answer = inb(PS2_DATA_PORT);
    #ifdef PS2_DEBUG
        printf("%s\n", (answer == 0xFA) ? "Reset successful.\n" : "Reset NOT successful.\n");
    #endif
    /*i = 0;
    do {
        io_wait();
        status_register = inb(PS2_STATUS_REGISTER);
        if((status_register & 0x1) == 0) {
            io_wait();
            i++;
        } else
            break;
    } while (i < 60);
    if(i == 60)
        return false;
    answer = inb(PS2_DATA_PORT);
     printf("%s\n", (answer == 0xAA) ? "Reset successful part 2.\n" : "Reset NOT successful in part 2.\n");
    i = 0;
    do {
        io_wait();
        status_register = inb(PS2_STATUS_REGISTER);
        if((status_register & 0x1) == 0) {
            io_wait();
            i++;
        } else
            break;
    } while (i < 60);
    if(i == 60)
        return false;
    answer = inb(PS2_DATA_PORT);
     printf("%s\n", (answer == 0x0) ? "Mouse ID detected.\n" : "Mouse ID not detected.\n");
    */
    #ifdef PS2_DEBUG
        printf("%u %u\n", inb(PS2_DATA_PORT), inb(PS2_DATA_PORT));
    #endif
   io_wait();
   #ifdef PS2_DEBUG
        printf("%u %u\n", inb(PS2_DATA_PORT), inb(PS2_DATA_PORT));
    #endif
   io_wait();
   #ifdef PS2_DEBUG
        printf("%u %u\n", inb(PS2_DATA_PORT), inb(PS2_DATA_PORT));
    #endif
   
   return true;
}

void detect_PS2_devices() {
    int i = 0;
    uint8_t status_register, answer;
    //DISABLE SCANNING
    do {
        outb(PS2_DATA_PORT, 0xF5);
        i = 0;
        do {
            io_wait();
            status_register = inb(PS2_STATUS_REGISTER);
            if((status_register & 0x1) == 0) {
                io_wait();
                i++;
            } else
                break;
        } while (i < 60);
        answer = inb(PS2_DATA_PORT);
        #ifdef PS2_DEBUG
            printf("DETECT: 1: %u\n", answer);
        #endif
    } while(answer != 0xFA);

    //IDENTIFY
    do {
        outb(PS2_DATA_PORT, 0xF2);
        i = 0;
        do {
            io_wait();
            status_register = inb(PS2_STATUS_REGISTER);
            if((status_register & 0x1) == 0) {
                io_wait();
                i++;
            } else
                break;
        } while (i < 60);
        answer = inb(PS2_DATA_PORT);
        #ifdef PS2_DEBUG
            printf("DETECT: 2: %u\n", answer);
        #endif
    } while(answer != 0xFA);
    
    //UP TO 2 BYTES OF REPLY
    i = 0;
    do {
        io_wait();
        status_register = inb(PS2_STATUS_REGISTER);
        if((status_register & 0x1) == 0) {
            io_wait();
            i++;
        } else
            break;
    } while (i < 60);
    answer = inb(PS2_DATA_PORT);
    #ifdef PS2_DEBUG
        printf("FIRST BYTE: %u\n", answer);
    #endif
    i = 0;
    do {
        io_wait();
        status_register = inb(PS2_STATUS_REGISTER);
        if((status_register & 0x1) == 0) {
            io_wait();
            i++;
        } else
            break;
    } while (i < 60);
    answer = inb(PS2_DATA_PORT);
    #ifdef PS2_DEBUG
        printf("SECOND BYTE: %u\n", answer);
    #endif

    //ENABLE DEVICES
    uint8_t conf_byte;
    outb(PS2_COMMAND_REGISTER, 0xAE);
    io_wait();
    outb(PS2_COMMAND_REGISTER, 0xA8);
    io_wait();
    outb(PS2_COMMAND_REGISTER, 0x20);
    i = 0;
    do {
        io_wait();
        status_register = inb(PS2_STATUS_REGISTER);
        if((status_register & 0x1) == 0) {
            io_wait();
            i++;
        } else
            break;
    } while (i < 60);
    conf_byte = inb(PS2_DATA_PORT);
    conf_byte |= 1; //keyboard enabled, mouse not enbled?
    outb(PS2_COMMAND_REGISTER, 0x60);
    i = 0;
    do {
        io_wait();
        status_register = inb(PS2_STATUS_REGISTER);
        if((status_register & 0x2) != 0) {
            io_wait();
            i++;
        } else
            break;
    } while (i < 60);
    outb(PS2_DATA_PORT, conf_byte);
    io_wait();
}