#include "main.h"
// MAIN FUNCTIONS
long int count=0;

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
	if(INTCONbits.TMR0IF==1)
	{
		unsigned char local_flag;

		if(count%1000==0)
			{
				local_flag = PORTBbits.RB1;
				PORTBbits.RB1 = (local_flag)^(0x01);
			}

		count++;
		TMR0L=0x00;
		//TMR0H=0x00;
		INTCONbits.TMR0IF=0;
	    INTCONbits.TMR0IE=1;	
		
	}
	}

#pragma code

void timer0_initialize(void)
{
  T0CONbits.TMR0ON = 1;	//replace by one statement
  T0CONbits.T08BIT = 1;
  T0CONbits.T0CS   = 0;
  T0CONbits.T0SE   = 0;
  T0CONbits.PSA    = 0;	//prescalars included, not bypassed
  T0CONbits.T0PS2  = 0;
  T0CONbits.T0PS1  = 0;
  T0CONbits.T0PS0  = 0;
}

void main(void)
{
  TRISB = 0x00;	
  PORTB = 0x00;
  count = 0;
	 
  timer0_initialize();
	 
  TMR0L= 0x00; 
  //TMR0H= 0x00;
  INTCONbits.GIE=1;
  INTCON2bits.TMR0IP=1;
  INTCONbits.TMR0IE=1;	
  INTCONbits.TMR0IF=0;
  
  
  while(1)
  {}

}								// END OF MAIN FUNCTION

