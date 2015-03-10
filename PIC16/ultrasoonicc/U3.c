#include <htc.h>						//INCLUDE PIC HEADER FILE

__CONFIG (0x2F0A);

unsigned int TIME,TOTAL;
 
interrupt timer(void)
{
	if(TMR0IF == 1)
	{ 
		TIME += 256
	}
	 TMR0IF=0;
	 TMR0IE=1;	
}

void main(void)
{
   TRISB=0XFF;
	
	while(!RB0);
   T0CS = 0;
   TOSE=0 ;
   PSA = 0;
   PS2=PS1=PS0=0;
   GIE = 1;
   TMR0IE= 1;
   	
	while(RB1);
T0CS=1;
 TOTAL = (TIME + TMR0)*(0.0000005);
 
 
 }
 
		