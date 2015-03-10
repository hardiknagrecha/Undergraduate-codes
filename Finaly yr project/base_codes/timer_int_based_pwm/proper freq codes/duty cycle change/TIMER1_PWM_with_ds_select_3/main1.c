

#include "main.h"
volatile int count=0, ds=5, temp=0;
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
	
	if(PIR1bits.TMR1IF==1)	//check if this check can be removed
	{		
        count++;
		if(count<=ds)
		  	{PORTCbits.RC2=1;}
		else
			{PORTCbits.RC2=0;}
		
		if(count>=21)				
		  {count=0;}
    	
          TMR1L= 0xf0;
          TMR1H= 0xff;	 
          PIR1bits.TMR1IF=0;
          PIE1bits.TMR1IE=1;	
      	
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
  TRISC = 0x00;	
  PORTC = 0x00;
  TRISB = 0xff;
  INTCON2bits.RBPU = 0;	//PORTB pull ups enabled	
  
  timer1_ini();	
  TMR1L= 0xf0;
  TMR1H= 0xff;	 
  INTCONbits.GIE=1;
  INTCONbits.PEIE=1;
  PIR1bits.TMR1IF=0;
  PIE1bits.TMR1IE=1;	
  
  while(1)	//wave gen going on, setting ds accordingly
  {
		temp=PORTB;
		if(temp == 0xfe)
			{ds=7;}
		else if(temp == 0xfc)
			{ds=12;}
		else if(temp == 0xf8)
			{ds=18;}
		else 
			{ds=1;}
  
  }
}	
