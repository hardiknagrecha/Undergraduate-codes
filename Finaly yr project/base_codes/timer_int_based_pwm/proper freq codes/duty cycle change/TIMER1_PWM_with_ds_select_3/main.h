
#ifndef MAIN_H
#define MAIN_H

#include<p18f458.h>						//INCLUDE PIC HEADER FILE

#include "delay.h"

//DEFINE CRYSTAL FREQUENCY
#define _XTAL_FREQ	10000000

void interpt_fn(void);
void check_ISR(void);
void timer1_ini(void);


#endif