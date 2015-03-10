#include<htc.h>
__CONFIG (0x2F0A);


void main(void)
{
	unsigned int range , flag=0,count=0;
	long  int Time;
	TRISB = 0x00;
    RB1=1;

	label:
	TMR1H   = 0xFF;
	TMR1L   = 0xF6;
    T1CON   = 0x20;
	TMR1IF=0;
	TMR1ON  = 1;

	while(!TMR1IF);
	TMR1ON = 0;

	RB1 = RB1^1; 
			
	goto label;
	
}