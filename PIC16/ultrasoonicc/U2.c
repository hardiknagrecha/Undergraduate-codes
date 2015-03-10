#include<htc.h>
__CONFIG (0x2F0A);


void main(void)
{
	unsigned int range , flag=0,count=0;
	long  int Time;

	TRISB |= 0x04;
    TRISC  = 0x00;
    RC0  = 0;
	RBPU = 0;

    while(RB2);

		TMR1H   = 0xFF;
		TMR1L   = 0xF6;
	    T1CON   = 0x20;
		TMR1IF=0;
		RC0=1;
		TMR1ON  = 1;
    
	while(!TMR1IF);
	RC0 = 0;	
	for(;;);

}