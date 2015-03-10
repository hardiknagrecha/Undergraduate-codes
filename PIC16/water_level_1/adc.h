#ifndef ADC_H
#define ADC_H

//INCLUDE HEADER FILE
#include <htc.h>
#include "delay.h"

//USER DEFINED DATA TYPE
typedef unsigned char ADCUbyte;

//DEFINE CONSTANT
#define AVERAGEVALUE 	5

//FUNCTION PROTOTYPE
void ADCInitialize(void);
float ADCReadData(unsigned char ChannelNumber);

#endif

