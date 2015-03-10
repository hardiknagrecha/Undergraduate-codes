#include "main.h"
// MAIN FUNCTIONS
unsigned int count;

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
	unsigned char temp;
	if(INTCONbits.TMR0IF==1)
	{
	count++;
	if(count == 100)
		{
			count = 0;
			temp = PORTC;
			PORTC = ~temp;
		}
	INTCONbits.TMR0IF=0;
    INTCONbits.TMR0IE=1;	

	}
	}
#pragma code

void main(void)
{
  TRISC = 0x00;	
  PORTC = 0xFF;
;	

// TMR0 Module Initialze
  T0CONbits.TMR0ON = 1;
  T0CONbits.T08BIT = 1;
  T0CONbits.T0CS   = 0;
  T0CONbits.T0SE   = 0;
  T0CONbits.PSA    = 0;
  T0CONbits.T0PS2  = 1;
  T0CONbits.T0PS1  = 1;
  T0CONbits.T0PS0  = 1;					// END OF FOR LOOP
// 
  INTCONbits.GIE=1;
  INTCONbits.TMR0IE=1;	
  INTCONbits.TMR0IF=0;
  INTCON2bits.TMR0IP=1;
  while(1);
}								// END OF MAIN FUNCTION

