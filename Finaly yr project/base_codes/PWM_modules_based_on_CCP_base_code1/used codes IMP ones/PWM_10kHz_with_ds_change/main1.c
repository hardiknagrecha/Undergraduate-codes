#include "main.h"
// MAIN FUNCTIONS

unsigned int count=0,flag_inc=1;	// not required

#pragma code interpt_fn = 0x0008
void interpt_fn(void)
{
	_asm
	 GOTO check_ISR
	_endasm
}
#pragma code

#pragma interrupt check_ISR

	void check_ISR(void)
	{
		if(PIR1bits.TMR2IF==1)
		{		
	    	PIE1bits.TMR2IE = 1;
			PIR1bits.TMR2IF = 0;    
	  		count++;
			if(count%50==0)
			{CCPR1L++;}
			if(CCPR1L>=250)
			{CCPR1L=0;}

		}
	        return;
	    		
	}
	
#pragma code

void main(void)
{
	TRISC = 0x00;	//mainly port c2 used
	TRISB = 0x00;	
    PORTB = 0xFF;
	PORTC = 0x00;

	PR2 = 0xff;
	TMR2 = 0x00;
	T2CON = 0x05;		// T2CONbits.T2CKPS1 = 1 T2CONbits.T2CKPS0 = 1 T2CONbits.TMR2ON = 1 enable TIMER2
	CCPR1L =0;
	CCP1CON = 0x0C;			//PWM mode, bits 5 and 4 ->CCP1CONbits.DCxB1 = 1 and CCP1CONbits.DCxB0 = 0;
	INTCONbits.GIE = 1;
	INTCONbits.PEIE = 1;
	PIE1bits.CCP1IE = 0;
	PIE1bits.TMR2IE = 1;

	while(1)
	{}	

}								// END OF MAIN FUNCTION

