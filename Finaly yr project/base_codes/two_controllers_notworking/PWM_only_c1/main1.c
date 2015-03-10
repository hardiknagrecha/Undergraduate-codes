//minimum duty cycle value in reg required for it to move is 246

#include "main.h"

volatile unsigned char temp_ds=240;

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
	if(PIR1bits.TMR2IF==1)
		{		
	    	temp_ds = PORTB;
			CCPR1L = 255-temp_ds;					    //normal case
			PIE1bits.TMR2IE = 1;
			PIR1bits.TMR2IF = 0;  
  			
		}

	return;
}

#pragma code

void PWM_initialize(void)
{
	//PWM initialize
    
	PR2 = 0xf0;
	TMR2 = 0x00;
	T2CON = 0x04;		// T2CONbits.T2CKPS1 = 1 T2CONbits.T2CKPS0 = 1 T2CONbits.TMR2ON = 1 enable TIMER2
	CCPR1L = 128;
	CCP1CON = 0x0C;			//PWM mode, bits 5 and 4 ->CCP1CONbits.DCxB1 = 1 and CCP1CONbits.DCxB0 = 0;
	INTCONbits.GIE = 1;
	INTCONbits.PEIE = 1;
	PIE1bits.CCP1IE = 0;
	PIE1bits.TMR2IE = 1;
	
	//PWM generation started
}

	
void main(void)
{
  
  TRISC = 0xFB;	//pin c2 used for PWM gen
  PORTCbits.RC2 = 0;
  TRISB = 0xFF;
  INTCON2bits.RBPU=0;	//PORTB pull ups enabled			  
  PWM_initialize();
  
  while(1)
  {
	//temp_ds=PORTB;
  }

}								// END OF MAIN FUNCTION

