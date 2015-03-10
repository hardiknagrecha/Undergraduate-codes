
#ifndef MAIN_H
#define MAIN_H

#include<p18f458.h>						//INCLUDE PIC HEADER FILE

#include "delay.h"

//DEFINE CRYSTAL FREQUENCY
#define _XTAL_FREQ	40000000


void InitializeSerialCommunication(void);
unsigned char ReceiveByteSerially(void);
void SendByteSerially (unsigned char byte);
void SendStringSerially(const char *serial_string);


#endif