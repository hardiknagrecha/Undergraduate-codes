#include<htc.h>

#include "serial.h"
#include "LCD.h"
#include "delay.h"

__CONFIG (0x2F0A);

unsigned int TIME,TOTAL;
 
interrupt timer(void)
{
	if(TMR0IF == 1)
	{ 
		TIME += 256;
	}
	 TMR0IF=0;
	 TMR0IE=1;	
}

void main(void)
{
	TRISB |= 0xFF;
    TRISC &= 0x00;
    LCDInitialize();
	
LCDWriteString("DISTANCE : ");

	while(1)
{
	
	RC4  = 0;
	RBPU = 0;
	TOTAL =0;
	TIME  =0;
	
	
   // while(RB2);

		TMR1H   = 0xFF;
		TMR1L   = 0xF6;
	    T1CON   = 0x20;
		TMR1IF=0;
		RC4=1;
		TMR1ON  = 1;
    
	while(!TMR1IF);
	RC4 = 0;	
	
	
   RBPU = 1;
	while(!RB0);
   TMR0=0;
   T0CS = 0;
   T0SE=0 ;
   PSA = 0;
   PS2=PS1=PS0=1;
   GIE = 1;
   TMR0IE= 1;
   	
	while(RB0);
T0CS=1;
GIE = 0;
 TOTAL = TIME+TMR0;
if(TOTAL<=256)
 {LCDDisplayByte(0x8B,TOTAL);}
else
 {LCDDisplayByte(0x8B,256);}
 
Delay(200);
 }
 
}	