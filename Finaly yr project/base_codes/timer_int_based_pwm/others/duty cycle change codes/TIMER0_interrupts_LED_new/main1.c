#include "main.h"
// MAIN FUNCTIONS
long int count=0;
unsigned char ds=30;	//duty cycle constant
//count is indicator of main freq

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
		
		if(count<=(ds/5))	
		PORTCbits.RC1 = 1;
		else if(count>(ds/5))
		PORTCbits.RC1 = 0;
			
		if(count>=20)
		count=0;

		count++;
		TMR0L=0xfe;
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
  T0CONbits.T0PS0  = 1;
}

void main(void)
{
  TRISC = 0x00;	
  PORTC = 0x00;
  count = 0;
	 
  timer0_initialize();
	 
  TMR0L= 0xfe; 
  //TMR0H= 0x00;
  INTCONbits.GIE=1;
  INTCON2bits.TMR0IP=1;
  INTCONbits.TMR0IE=1;	
  INTCONbits.TMR0IF=0;
  
  
  while(1)
  {}

}								// END OF MAIN FUNCTION

