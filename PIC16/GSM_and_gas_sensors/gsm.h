#ifndef GSM_H
#define GSM_H

#include "serial.h"
#include "delay.h"

//FUNCTION PROTOTYPES
unsigned char GSM_initialize(void);
unsigned char AT_SMS(void);
unsigned char AT_NUMBER(void);
unsigned char AT_NUMBER2(void);
//DEFINE MACROS
#define SendCarriageReturn() SendByteSerially(0x0D);

#endif