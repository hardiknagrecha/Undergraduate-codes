//1 revolution is 18 counts = 360 degrees
#include "main.h"
// MAIN FUNCTIONS
unsigned int temp=0,count=0, theta_current=0, theta_req=90, sensorop=0;

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
	if(INTCONbits.INT0IF==1)	//external interrupt high priority at RB0
	{
		count++;
		theta_current+=10;
		if(count >=(theta_req/9))
		{
				PORTD=0x00;
		}
		if(INTCON2bits.INTEDG0 == 0)	//CANT PUT THIS HERE, WE NEED TO CHECK A DIFF INTERRUPT..to enable interrupt on both rise n fall edges!
		{INTCON2bits.INTEDG0 = 1;}		//there should be a diff INTERRUPT BIT CHECK for this
		else
		{INTCON2bits.INTEDG0 = 0;}

		INTCONbits.INT0IF = 0;
  		INTCONbits.INT0IE = 1;
		
  	}
	return;
}

#pragma code

void main(void)
{
  
  TRISB = 0xFF;
  TRISD = 0x00; 
  PORTD = 0x00;			
  sensorop = PORTBbits.RB0;
  /*if(sensorop==1)
	{
		theta_req-=10;
	}
  */
		
  INTCON2bits.RBPU = 0;
  INTCONbits.GIE = 1;
  INTCON2bits.INTEDG0 = 0;	//interrupt on falling edge
  INTCONbits.INT0IF = 0;
  INTCONbits.INT0IE = 1;
  PORTD=0x02;

  while(1)
  {
		
		
		
  }

}								// END OF MAIN FUNCTION

