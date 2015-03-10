
//motor always starts from 0 deg on controller reset
//duty cycle is working and causing proper speed variation. just that below 13, the motor does not move
//motor 1 needs a larger torque as it is holding the ahead shaft!

#include "main.h"
#include <math.h>

volatile int error = 0;
unsigned char initial_message[9] = {'S','e','r','i','a','l',0x0A,0x0D}, cnt=0, cord[10]={0}, enter_cord[] = {"Enter co-ordinates as - XX,YY@ : "};
unsigned int theta_current=0, theta_req=0, ds=50, ds_app=50;
volatile float xc = 0, yc = 0, l1=7.5, l2=10, theta1c = 0, theta1 = 0, theta2c=0, theta2 = 0,fraction = 0, fraction2 = 0,root=0, phi = 0, sai = 0, xv = 0;	

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
		theta_current+=6;
		error = theta_req - theta_current;
        ds = 0.75*error;				//ds= k*error and keep k=0.65 normally		  
  		ds_app = ds;  
		INTCONbits.INT0IF = 0;
  		INTCONbits.INT0IE = 1;
	}

	if(PIR1bits.TMR2IF==1)
		{		
			CCPR1L= ds_app*256/100;							//0 to 256 of CCPR1L to be mapped to 0 to 100 percent duty cycle
		   	PIR1bits.TMR2IF = 0;    
			PIE1bits.TMR2IE = 1;
		
			if(error<=3)
				{
					INTCONbits.GIE = 0;
					PORTDbits.RD4 = 1;
					get_angle();
					PORTDbits.RD4 = 0;
					INTCONbits.GIE = 1;
					
				}
		
		}

	return;
}

#pragma code

void get_angle(void)	//this module will fetch us theta_req
{
  //receiving co-ordinates from user
   			do
			{
			while((!PIR1bits.RCIF))		// come outside if a bit is received in serial port
			{} 	            
			cord[cnt]=RCREG;
			cnt++;
			}while(cord[cnt-1]!='@');

  cord[0]-='0';				//char to int conversion
  cord[1]-='0';
  cord[3]-='0';
  cord[4]-='0';

  xc = (10*cord[0])+cord[1];
  yc = (10*cord[3])+cord[4];
  
  fraction = ((((l1+l2)*(l1+l2))-((xc*xc)+(yc*yc)))/(((xc*xc)+(yc*yc))-((l1-l2)*(l1-l2))));
  root = sqrt(fraction);		//sqrt not working!
  theta2c = 2*(atan(root));
  theta2 = (theta2c*180)/3.14;
  phi = atan(yc/xc);
  fraction2 = ((l2*sin(theta2c))/(l1+(l2*cos(theta2c))));
  sai = atan (fraction2);
  theta1c = phi - sai;
  theta1 = (theta1c*180)/3.14;

 
  theta_req = theta1;
  error = theta_req - theta_current;
  ds = 0.75*error;				//ds= k*error and keep k=0.65 normally		  
  ds_app = ds;  	

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
	CCPR1L = 250;
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
  PORTDbits.RD4=1;		//disable the power
  
  InitializeSerialCommunication();		
  get_angle();
  opto_initialize();		
  PWM_initialize();
  PORTDbits.RD4=0;		//enable the power
  
  while(1)
  {}

}								// END OF MAIN FUNCTION

