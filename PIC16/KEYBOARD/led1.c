#include "main.h"


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
	INTCONbits.RBIF=0;
	PBchange_ISR();
	}
	}
#pragma code

void main(void)
{
  TRISC=0x00;
  PORTC=0x00;
  LCDInitialize();
  CMCON |= 0X07;
  LCDDisplayInitializing();  						// END OF FOR LOOP
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

