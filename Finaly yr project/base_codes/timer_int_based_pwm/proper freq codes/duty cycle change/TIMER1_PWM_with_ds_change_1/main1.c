
/* TMRH=0xff; TMRL - 0xfe: freq is 50 kHz 
		 	 		0x80: freq is
					0x00: freq is 
*/
// play with another flag variable n play code inside void main.
// set or reset wrt global count. if not req to change, returnn 
// use if-else structures n declare static variable

#include "main.h"
// MAIN FUNCTIONS
//if count max kept 10, freq about 25 kHz, else if count max kept at 100, freq is about 2.5 kHz

unsigned char flag_interrupt=0,count=0;
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
	unsigned char ds=3;
	if(PIR1bits.TMR1IF==1)
	{		
        flag_interrupt = 1;	
		
		  count++;
		  if(count<=ds)
		  	{PORTBbits.RB2=1;}
		  else
			{PORTBbits.RB2=0;}
		
		if(count>=11)				
		  {count=0;}	
        return;
    }
}

#pragma code

void timer1_ini(void)
{
  //TMR1 Module Initialze
  IPR1bits.TMR1IP = 1;
  RCONbits.IPEN=1;
  T1CONbits.TMR1ON = 1;
  T1CONbits.RD16 = 1;
  T1CONbits.T1CKPS0 = 0;
  T1CONbits.T1CKPS1 = 0;
  T1CONbits.T1OSCEN = 1;
  T1CONbits.TMR1CS = 0;
	
}	

void main(void)
{
  TRISB = 0x00;	
  PORTB = 0x00;

  timer1_ini();	
  TMR1L= 0xf0;
  TMR1H= 0xff;	 
  INTCONbits.GIE=1;
  INTCONbits.PEIE=1;
  PIR1bits.TMR1IF=0;
  PIE1bits.TMR1IE=1;	
  
  while(1)
  {
      if(flag_interrupt)
      {
          flag_interrupt = 0;
		  	 			                  
          TMR1L= 0xf0;
          TMR1H= 0xff;	 
          PIR1bits.TMR1IF=0;
          PIE1bits.TMR1IE=1;	
      }   
  }
}								// END OF MAIN FUNCTION

