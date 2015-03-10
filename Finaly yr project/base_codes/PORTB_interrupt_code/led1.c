#include "main.h"
unsigned char count=0;

// MAIN FUNCTIONS

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
	if(INTCONbits.RBIF==1)
	{
		count++;
		INTCONbits.RBIF=0;
		PORTC=count;
		
	}
	}
#pragma code

void main(void)
{
  TRISC=0x00;
  PORTC=0x00;
  
  INTCON2bits.RBPU=0;
  TRISB |= 0xF0;
  TRISB &= 0xF0;
  PORTB = 0xF0;
  while(PORTB!=0xF0);
  INTCONbits.GIE=1;
  INTCONbits.RBIE=1;	
  INTCONbits.RBIF=0;
  while(1);
}								// END OF MAIN FUNCTION

