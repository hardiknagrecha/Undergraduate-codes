#ifndef LCD_H
#define LCD_H


//INCLUDES
#include<p18f458.h>	
#include "delay.h"


//DEFINE CONSTANT
#define LOW		0
#define HIGH	1
#define OUTPUTPIN 0


//DEFINES PORT/PINS
#define LCD_DDR					  TRISD
#define LCDEnablePin 		      PORTDbits.RD3
#define LCDRegisterSelectPin      PORTDbits.RD2
#define LCDDataPort			      PORTD

//DEFINE MACROS 
#define LCDClear() LCDWriteCommand(0x01)	  /* Clear display LCD */
#define LCDRow1()  LCDWriteCommand(0x80)	  /* Begin at Line 1 */
#define LCDRow2()  LCDWriteCommand(0xC0)   /* Begin at Line 2 */

//USERDEFINE DATA TYPES
typedef unsigned char LCDubyte; 

//DEFINE PROTOTYPES
static void  LCDEnable(void);
void LCDWriteCommand(LCDubyte command);
void LCDWriteData(LCDubyte ascii);
void LCDWriteString(char *lcd_string);
static void LCDWriteByte(LCDubyte  LCDData);
void LCDInitialize(void);
void LCDDisplayInitializing(void);
void LCDDisplayByte(LCDubyte LCDAdress, LCDubyte Value);
static void LCDReset(void);
void LCDDisplayByte(LCDubyte LCDAdress, LCDubyte Value);
void LCDWriteInteger(int IntegerNumber);
void LCDWriteFloat(float FloatNumber);
#endif

