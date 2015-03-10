#ifndef ADC_H
#define ADC_H

//INCLUDE HEADER FILE
#include <htc.h>
#include "delay.h"

//USER DEFINED DATA TYPE
typedef unsigned char ADCUbyte;

//DEFINE CONSTANT
#define AVERAGEVALUE 	5
#define CHANNEL1 0x00
#define CHANNEL2 0x08
#define CHANNEL3 0x10
#define CHANNEL4 0x18
#define CHANNEL5 0x20
#define CHANNEL6 0x28
#define CHANNEL7 0x30
#define CHANNEL8 0x38

//FUNCTION PROTOTYPE
void ADCInitialize(void);
float ADCReadData(unsigned char ChannelNumber);

#endif

