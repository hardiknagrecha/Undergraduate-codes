//1 revolution is 18 counts = 360 degrees
//do it for two motors!!!!

#include "main.h"
// MAIN FUNCTIONS
unsigned int temp=0,count1=0, count2=0, theta_req1=10, theta_req2 = 50;

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
	if(INTCONbits.INT0IF==1)	//external interrupt high priority at RB0 for motor 2 - away from hinge
	{
		count2++;
		if(count2 >=(theta_req2/9))
		{
				PORTD&=0xd2;			//1101-0011	
		}
		if(INTCON2bits.INTEDG0 == 0)	//to enable interrupt on both rise n fall edges!
		{INTCON2bits.INTEDG0 = 1;}
		else
		{INTCON2bits.INTEDG0 = 0;}

		INTCONbits.INT0IF = 0;
  		INTCONbits.INT0IE = 1;
		
  	}
	else if(INTCON3bits.INT1IF==1)	//external interrupt high priority at RB1 - near hinge for motor 1
	{
		count1++;
		if(count1 >=(theta_req1/9))
		{
				PORTD&=0xec;				//1110-1100
		}
		if(INTCON2bits.INTEDG1 == 0)	//to enable interrupt on both rise n fall edges!
		{INTCON2bits.INTEDG1 = 1;}
		else
		{INTCON2bits.INTEDG1 = 0;}

		INTCON3bits.INT1IF = 0;
		INTCON3bits.INT1IE = 1;
  	}
	return;
}

#pragma code

void main(void)
{
  
  TRISB = 0xFF;
  TRISD = 0x00; 
  PORTD = 0x00;			

  INTCON2bits.RBPU = 0;
  INTCONbits.GIE = 1;
  
  INTCON2bits.INTEDG0 = 0;	//interrupt on falling edge
  INTCONbits.INT0IF = 0;
  INTCONbits.INT0IE = 1;
  INTCON2bits.INTEDG1 = 0;  
  INTCON3bits.INT1IP = 1;
  INTCON3bits.INT1IE = 1;
  INTCON3bits.INT1IF = 0;	
	
  PORTD=0xfa;	//D0,D1 for further motor, D2, D3 for first one, D4 to stop further motor, D5 for the first one

  while(1)
  {}

}								// END OF MAIN FUNCTION

