
#ifndef MAIN_H
#define MAIN_H

#include<p18f458.h>						//INCLUDE PIC HEADER FILE
#include"lcd.h"

#include "delay.h"

//DEFINE CRYSTAL FREQUENCY
#define _XTAL_FREQ	10000000


//DEFINE PORTS
#define LED		RB1

//MACROS
#define LEDOn()			PORTBbits.LED = 1
#define LEDOff()		PORTBbits.LED = 0

#endif