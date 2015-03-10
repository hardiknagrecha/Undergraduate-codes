#include "main.h"
// MAIN FUNCTIONS
unsigned int temp=0;
double times=0,count0=0,count1=0;

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
	if(PIR1bits.TMR1IF==1)
	{
		
		if(count1<1000)
			{
				PORTBbits.RB1=1;	
			}

		else if(count1<2000)
			{
				if(count1==1999)
				count1=0;
				PORTBbits.RB1=0;
			}
		
    	  TMR1L= 0x00;
		  TMR1H= 0x00;	 
		  PIE1bits.TMR1IE=1;	
		  PIR1bits.TMR1IF=0;
		  count1++;
	}
	
	else if(INTCONbits.TMR0IF==1)
	{
		if(count0<40000)
			{
				PORTBbits.RB0=1;	
			}

		else if(count0<80001)
			{
				if(count0==80000)
				count0=0;
				PORTBbits.RB0=0;
			}
		
		TMR0L=0x00;
		INTCONbits.TMR0IF=0;
	    INTCONbits.TMR0IE=1;	
		count0++;
	}
	}

#pragma code

void main(void)
{
  TRISB = 0x00;	
  PORTB = 0x00;
  count1=0,count0=0;

// TMR0 Module Initialze
  T0CONbits.TMR0ON = 1;
  T0CONbits.T08BIT = 1;
  T0CONbits.T0CS   = 0;
  T0CONbits.T0SE   = 0;
  T0CONbits.PSA    = 1;
  T0CONbits.T0PS2  = 0;
  T0CONbits.T0PS1  = 0;
  T0CONbits.T0PS0  = 0;
  TMR0L= 0x00; 
  	  
  // TMR1 Module Initialze
  T1CONbits.TMR1ON = 1;
  T1CONbits.RD16 = 1;
  T1CONbits.T1CKPS0 = 0;
  T1CONbits.T1CKPS1 = 0;
  T1CONbits.T1OSCEN = 1;
  T1CONbits.TMR1CS = 0;
  IPR1bits.TMR1IP = 1;
  RCONbits.IPEN=1;	
	
  TMR1L= 0x00;
  TMR1H= 0x00;	 
  INTCONbits.GIE=1;
  INTCONbits.PEIE=1;
  PIE1bits.TMR1IE=1;	
  PIR1bits.TMR1IF=0;
  INTCONbits.TMR0IE=1;	
  INTCONbits.TMR0IF=0;
  INTCON2bits.TMR0IP=1;



  while(1)
  {}

}								// END OF MAIN FUNCTION


