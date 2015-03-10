#include "main.h"
// MAIN FUNCTIONS
unsigned char temp=0,count=0;

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
		PORTD = count;

		INTCONbits.RBIF=0;
	    INTCONbits.RBIE=1;
	}
}

#pragma code

void main(void)
{
  
  TRISB = 0xFF;
  TRISC = 0x00;
  PORTC = 0x00;	
  TRISD = 0x00; 
  PORTD = 0x00;			
  count=0;
  
  INTCON2bits.RBPU = 1;
  INTCONbits.GIE = 1;
  INTCON2bits.RBIP = 1;

  INTCONbits.RBIF = 0;
  INTCONbits.RBIE = 1;

  while(1)
  {
		
  }

}								// END OF MAIN FUNCTION

