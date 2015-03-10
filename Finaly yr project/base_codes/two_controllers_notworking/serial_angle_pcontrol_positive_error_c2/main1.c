
//Try storing theta_current in EEPROM. For now assume it to be 0 degrees, i.e. motor always starts from 0 deg
//duty cycle is working and causing proper speed variation. just that below 13, the motor does not move

#include "main.h"
// MAIN FUNCTIONS
unsigned int temp=0, count=0, theta_current=0, theta_req=0;
volatile int error=0;
unsigned char initial_message[9] = {'S','e','r','i','a','l',0x0A,0x0D}, temp_ds=0;
unsigned char cnt=0, angle[10]={0}, enter_angle[] = {"Enter angle as - theta1@ : "},k=0;
unsigned int angle_int=0, ds=50, direction=0;

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
	if(INTCONbits.INT0IF==1)	//external interrupt high priority at RB0 - count for the optical f/b
	{
		count++;
		theta_current+=18;
		error = theta_req - theta_current;
        //ds = 0.7*error;				//ds= k*error and keep k=0.65 normally		  
  		temp_ds = 0.0615*error+245.77;
		PORTD = temp_ds;
	 	
		INTCONbits.INT0IF = 0;
  		INTCONbits.INT0IE = 1;
		
  	}

	return;
}

#pragma code

void get_angle(void)	//this module will fetch us theta_req
{
  SendByteSerially(0x0A);
  SendByteSerially(0x0D);
  SendStringSerially(initial_message);
  SendStringSerially(enter_angle);
  
  //receiving angle from user
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
	
}

void opto_initialize(void)
{
  INTCON2bits.RBPU = 0;
  INTCONbits.GIE = 1;
  INTCON2bits.INTEDG0 = 0;	//interrupt on falling edge
  INTCONbits.INT0IF = 0;
  INTCONbits.INT0IE = 1;	//Enabled the optical encoder sensor!	
}	


void main(void)
{
  TRISD = 0x00;
  PORTD = 0x00;	
  TRISB = 0xFF;
  TRISC &= 0xD0; 			
  PORTCbits.RC3=1;		//disable the power
  
  InitializeSerialCommunication();		
  get_angle();
  opto_initialize();		
  PORTCbits.RC3=0;		//enable the power
  //PORTCbits.RC5=0;
  PORTCbits.RC2=1;

	//RC2 is the other control line for motor
	//RC5 decides the PWM intvert or not!

  while(1)
  {}

}								// END OF MAIN FUNCTION

