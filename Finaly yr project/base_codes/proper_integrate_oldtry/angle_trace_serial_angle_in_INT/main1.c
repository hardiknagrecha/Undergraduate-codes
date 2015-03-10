
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
		
		  if(theta_req>theta_current)
		  {
			//motor needs to be sent 10 input, but as opto iso inverts, 01 is sent i.e. fixed line high, PWM in its inverse mode
		    PORTDbits.RD0 = 1;
			ds_app = ds;
		  }
		  else if(theta_req<=theta_current)
		  {
			PORTDbits.RD4=1;	//1 as opto-iso inverts line
			PORTDbits.RD0=1;
			ds_app=0;			//stop PWM
			}	 	
		  
		INTCONbits.INT0IF = 0;
  		INTCONbits.INT0IE = 1;
		
  	}

	else if(PIR1bits.TMR2IF==1)
		{		
	    	PIE1bits.TMR2IE = 1;
			PIR1bits.TMR2IF = 0;    
			CCPR1L= ds_app*256/100;							//0 to 256 of CCPR1L to be mapped to 0 to 100 percent duty cycle
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
  PORTD = 0x00;			
  
  InitializeSerialCommunication();		
  get_angle();
  opto_initialize();		
  PWM_initialize();

  //we need to compute error and start the motors in a specific direction n ds
  //before that lets just do direction control with one PWM line and other normal line with fixed ds!
  //theta_current initialized zero. set it according to position in the code

  if(theta_req<theta_current)	//optical isolator invert the lines
  {
	//motor needs to be sent 01 input,but as opto iso inverts, 10 is sent i.e. fixed line grounded, PWM in its normal mode
    PORTDbits.RD0 = 0;
	ds_app = 100-ds;
	direction = 0;
	}	
  else if(theta_req>theta_current)
  {
	//motor needs to be sent 10 input, but as opto iso inverts, 01 is sent i.e. fixed line high, PWM in its inverse mode
    PORTDbits.RD0 = 1;
	ds_app = ds;
	direction = 1;
    }
  
  //C2 will be one pin used for running motor via PWM; the other pin is D0, D4 is the master enable pin 		
  //PORTD=0xed;
  PORTDbits.RD4 = 0;	//start the supply line i.e. enable, and 0 given as the opto-iso inverts lines!
  
  while(1)
  {}

}								// END OF MAIN FUNCTION

