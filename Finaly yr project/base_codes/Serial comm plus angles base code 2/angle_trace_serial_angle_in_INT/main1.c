#include "main.h"
// MAIN FUNCTIONS
unsigned int temp=0,count=0, theta_current=0, theta_req=0, sensorop=0;
unsigned char initial_message[9] = {'S','e','r','i','a','l',0x0A,0x0D};
unsigned char cnt=0, angle[10]={0}, enter_angle[] = {"Enter angle as - theta1@ : "};
unsigned int angle_int=0;

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
		theta_current+=20;
		if(theta_current>=theta_req)					//if(count >=(theta_req/13))
		{
				PORTD=0xff;
		}

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
  
  InitializeSerialCommunication();		
  //sensorop = PORTBbits.RB0;
  SendByteSerially(0x0A);
  SendByteSerially(0x0D);
  SendStringSerially(initial_message);
  SendStringSerially(enter_angle);
  
  //receiiving angles from user
   			do
			{
			while((!PIR1bits.RCIF))		// come outside if a bit is received in serial port
			{} 	            
			angle[cnt]=RCREG;
			cnt++;
			}while(angle[cnt-1]!='@');
  angle[cnt-1]=' ';
  SendByteSerially(0x0A);
  SendByteSerially(0x0D);					
  SendStringSerially(angle);
  angle[0]-='0';				//char to int conversion
  angle[1]-='0';
  angle[2]-='0';
  angle_int = ((angle[0])*100)+((angle[1])*10)+(angle[2]);
  																//PORTD=angle_int -> check value on port if required and put while(1) after it to make rest code not work!
  theta_req=angle_int;
		
  INTCON2bits.RBPU = 0;
  INTCONbits.GIE = 1;
  INTCON2bits.INTEDG0 = 0;	//interrupt on falling edge
  INTCONbits.INT0IF = 0;
  INTCONbits.INT0IE = 1;
  PORTD=0xed;

  while(1)
  {}

}								// END OF MAIN FUNCTION

