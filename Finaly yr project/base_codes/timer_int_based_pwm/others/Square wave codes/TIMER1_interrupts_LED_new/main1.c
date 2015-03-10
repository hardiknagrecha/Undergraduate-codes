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
	if(PIR1bits.TMR1IF==1)
	{
		unsigned char local_flag;

		if(count%100==0)
			{
				local_flag = PORTBbits.RB1;
				PORTBbits.RB1 = (local_flag)^(0x01);
			}

		count++;
    	TMR1L= 0x00;
		TMR1H= 0x00;	 
		PIR1bits.TMR1IF=0;
		PIE1bits.TMR1IE=1;	
		
	}
	}

#pragma code

void timer1_ini(void)
{
  //TMR1 Module Initialze
  T1CONbits.TMR1ON = 1;
  T1CONbits.RD16 = 1;
  T1CONbits.T1CKPS0 = 0;
  T1CONbits.T1CKPS1 = 0;
  T1CONbits.T1OSCEN = 1;
  T1CONbits.TMR1CS = 0;
  IPR1bits.TMR1IP = 1;
  RCONbits.IPEN=1;	
	
}	

void main(void)
{
  TRISB = 0x00;	
  PORTB = 0x00;
  count=0;

  timer1_ini();	
  TMR1L= 0x00;
  TMR1H= 0x00;	 
  INTCONbits.GIE=1;
  INTCONbits.PEIE=1;
  PIR1bits.TMR1IF=0;
  PIE1bits.TMR1IE=1;	
  
  while(1)
  {;}

}								// END OF MAIN FUNCTION

