
#ifndef MAIN_H
#define MAIN_H

#include<p18f458.h>						//INCLUDE PIC HEADER FILE

#include "delay.h"
#include "serial.h"
//#include "lcd.h"

//DEFINE CRYSTAL FREQUENCY
#define _XTAL_FREQ	40000000


void interpt_fn(void);
void check_ISR(void);
void get_angle(void);
void opto_initialize(void);
void PWM_initialize(void);


#endif