//1 revolution is 18 counts = 360 degrees

#include "main.h"
// MAIN FUNCTIONS
unsigned int temp=0,count=0, theta_current=0, theta_req=90, sensorop=0;
unsigned char initial_message[9] = {'S','e','r','i','a','l',0x0A,0x0D};
unsigned char cnt=0, angles[10]={0}, enter_angles[] = {"Enter angles as - theta1,theta2 and end with @ : "};
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
  SendByteSerially(0x0A);
  SendByteSerially(0x0D);
  SendStringSerially(initial_message);
  SendStringSerially(enter_angles);
  
  //receiiving angles from user
   			do
			{
			while((!PIR1bits.RCIF))			   // come outside if a bit is received in serial port
			{} 	            
			angles[cnt]=RCREG;
			cnt++;
			}while(angles[cnt-1]!='@');
  
  SendByteSerially(0x0A);
  SendByteSerially(0x0D);					
  SendStringSerially(angles);	
		
  INTCON2bits.RBPU = 0;
  INTCONbits.GIE = 1;
  INTCON2bits.INTEDG0 = 0;	//interrupt on falling edge
  INTCONbits.INT0IF = 0;
  INTCONbits.INT0IE = 1;
  PORTD=0x12;

  while(1)
  {}
}
		
	