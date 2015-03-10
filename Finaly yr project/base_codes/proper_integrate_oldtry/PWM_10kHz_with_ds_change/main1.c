#include "main.h"
// MAIN FUNCTIONS

unsigned char ds=11;

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
			CCPR1L= ds*256/100;							//0 to 256 of CCPR1L to be mapped to 0 to 100 percent duty cycle
			
		}
	        return;
	    		
	}
	
#pragma code

void main(void)
{
	TRISC &= 0xFB;	//pin c2 used
	PORTC &= 0xFB;

	PR2 = 0xf0;
	TMR2 = 0x00;
	T2CON = 0x04;		// T2CONbits.T2CKPS1 = 1 T2CONbits.T2CKPS0 = 1 T2CONbits.TMR2ON = 1 enable TIMER2
	CCPR1L = 125;
	CCP1CON = 0x0C;			//PWM mode, bits 5 and 4 ->CCP1CONbits.DCxB1 = 1 and CCP1CONbits.DCxB0 = 0;
	INTCONbits.GIE = 1;
	INTCONbits.PEIE = 1;
	PIE1bits.CCP1IE = 0;
	PIE1bits.TMR2IE = 1;

	while(1)
	{}	

}								// END OF MAIN FUNCTION

