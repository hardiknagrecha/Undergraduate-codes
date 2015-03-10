
//Try storing theta_current in EEPROM. For now assume it to be 0 degrees, i.e. motor always starts from 0 deg

#include "main.h"
// MAIN FUNCTIONS
unsigned int temp=0,count=0, theta_current=0, theta_req=0, sensorop=0;
unsigned char initial_message[9] = {'S','e','r','i','a','l',0x0A,0x0D};
unsigned char cnt=0, angle[10]={0}, enter_angle[] = {"Enter angle as - theta1@ : "};
unsigned int angle_int=0;
unsigned char ds=50, ds_app=0, direction=0;	//setting duty cycle for now

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
		theta_current+=20;
		
		  if(theta_req<=theta_current)
		  {
			PORTDbits.RD4=1;	//1 as opto-iso inverts line
			PORTDbits.RD0=1;
		  }	 	
		  
		INTCONbits.INT0IF = 0;
  		INTCONbits.INT0IE = 1;
		
  	}

	else if(PIR1bits.TMR2IF==1)
		{		
	    	PIE1bits.TMR2IE = 1;
			PIR1bits.TMR2IF = 0;    
			CCPR1L= ds*256/100;							//0 to 256 of CCPR1L to be mapped to 0 to 100 percent duty cycle
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

void PWM_initialize(void)
{
	//PWM initialize
    
	PR2 = 0xf0;
	TMR2 = 0x00;
	T2CON = 0x04;		// T2CONbits.T2CKPS1 = 1 T2CONbits.T2CKPS0 = 1 T2CONbits.TMR2ON = 1 enable TIMER2
	CCPR1L = 125;
	CCP1CON = 0x0C;			//PWM mode, bits 5 and 4 ->CCP1CONbits.DCxB1 = 1 and CCP1CONbits.DCxB0 = 0;
	INTCONbits.GIE = 1;
	INTCONbits.PEIE = 1;
	PIE1bits.CCP1IE = 0;
	PIE1bits.TMR2IE = 1;
	
	//PWM generation started
}

	
void main(void)
{
  
  TRISC &= 0xFB;	//pin c2 used for PWM gen
  PORTC &= 0xFB;
  TRISB = 0xFF;
  TRISD = 0x00; 
  PORTD = 0x11;			
  
  InitializeSerialCommunication();		
  get_angle();
  opto_initialize();		
  PWM_initialize();
  PORTDbits.RD4=0;		//enable the power
  while(1)
  {}

}								// END OF MAIN FUNCTION

