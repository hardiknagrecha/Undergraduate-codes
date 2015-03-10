
/*TMRH=0xff; TMRL - 0xfe: freq is 26.60 kHz
 		 	 		0xfd: freq is 26.60 kHz
		 	 		0xf0: freq is 23.58 kHz
		 	 		0xe0: freq is 18.12 kHz
		 	 		0xd0: freq is 14.71 kHz
			 		0xa0: freq is 9.398 kHz			
		 	 		0x00: freq is 4.283 kHz
  TMRH=0xf0; TMRL - 0xfe: freq is 320.5 Hz
		 	 		0xf0: freq is 320.5 Hz
		 	 		0xe0: freq is 319.5 Hz
		 	 		0xd0: freq is 317.5 Hz
			 		0xa0: freq is 315 Hz			
		 	 		0x00: freq is 303 Hz
  TMRL=0x00; TMRH - 0xfe: freq is 2.273 kHz
 		 	 		0xf0: freq is 302 Hz 
		 	 		0xa0: freq is 50.76 Hz
		 	 		0x00: freq is 303 Hz
  		
*/

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

		//if(count%10==0)
			
		local_flag = PORTBbits.RB1;
		PORTBbits.RB1 = (local_flag)^(0x01);
			

		count++;
    	TMR1L= 0xfe;
		TMR1H= 0xf0;	 
		PIR1bits.TMR1IF=0;
		PIE1bits.TMR1IE=1;	
		
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
  count=0;

  timer1_ini();	
  TMR1L= 0xfe;
  TMR1H= 0xf0;	 
  INTCONbits.GIE=1;
  INTCONbits.PEIE=1;
  PIR1bits.TMR1IF=0;
  PIE1bits.TMR1IE=1;	
  
  for(;;){}
}								// END OF MAIN FUNCTION

