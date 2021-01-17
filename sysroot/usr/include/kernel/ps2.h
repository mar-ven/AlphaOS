#ifndef ARCH_I386_PS2_H
#define ARCH_I386_PS2_H

#include <stdint.h>
#include <stdbool.h>

#define PS2_DATA_PORT 0x60
#define PS2_STATUS_REGISTER 0x64
#define PS2_COMMAND_REGISTER 0x64

bool sendByteToPS2(uint8_t byte);
uint8_t receiveByteFromPS2ByInterrupt();
uint8_t receiveByteFromPS2ByPolling(bool *check);
bool init_PS2();
void detect_PS2_devices();
#endif