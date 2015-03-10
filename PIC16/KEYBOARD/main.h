
#ifndef MAIN_H
#define MAIN_H

#include<p18f458.h>						//INCLUDE PIC HEADER FILE
#include "lcd.h"
#include "keyboard.h"
#include "delay.h"

//DEFINE CRYSTAL FREQUENCY
#define _XTAL_FREQ	16000000

void check_ISR(void);

#endif