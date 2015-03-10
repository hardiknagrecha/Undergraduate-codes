//1 revolution is 18 counts = 360 degrees

#include "main.h"
// MAIN FUNCTIONS
unsigned int temp=0,count=0, theta_current=0, theta_req=90, sensorop=0;
unsigned char initial_message[7] = {'S','e','r','i','a','l'};

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
		if(INTCON2bits.INTEDG0 == 0)	//to enable interrupt on both rise n fall edges!
		{INTCON2bits.INTEDG0 = 1;}
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
  InitializeSerialCommunication();		// INITIALIZE SERIAL COMMUNICATION
  //sensorop = PORTBbits.RB0;
  SendStringSerially(initial_message);		// SEND A DATA TO SERIAL POT
	
		
  INTCON2bits.RBPU = 0;
  INTCONbits.GIE = 1;
  INTCON2bits.INTEDG0 = 0;	//interrupt on falling edge
  INTCONbits.INT0IF = 0;
  INTCONbits.INT0IE = 1;
  PORTD=0x12;

  while(1)
  {}
}
		
	