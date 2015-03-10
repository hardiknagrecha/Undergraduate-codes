	#include "main.h"
	#include<math.h>

	unsigned char c[15]={0}, cnt=0, angle2[4]={0};
	float xc=0, yc=0, l1=7.5, l2=10, theta2=0, fraction = 0;	//the x co-ordinate
	int theta_req = 0, copy=0;

// MAIN FUNCTION
void main(void)
{

	InitializeSerialCommunication();		// INITIALIZE SERIAL COMMUNICATION
		
	
	  SendByteSerially(0x0A);
	  SendByteSerially(0x0D);
	  SendStringSerially("Enter x,y co-ordinate (AA,BB@): ");
	  
	  //receiving c from user
	   			do
				{
				while((!PIR1bits.RCIF))		// come outside if a bit is received in serial port
				{} 	            
				c[cnt]=RCREG;
				cnt++;
				}while(c[cnt-1]!='@');
	
	  c[0]-='0';
	  c[1]-='0';
	  c[3]-='0';				//char to int conversion
	  c[4]-='0';
	  xc = c[0]*10+c[1];
	  yc = c[3]*10+c[4];
	  fraction = ((l1*l1+l2*l2)-(xc*xc+yc*yc))/((xc*xc+yc*yc)-(l1*l1-l2*l2));	
	  theta2 = 2*atan(sqrt(fraction));														//in radian and can be negative
	  theta2 = theta2*180/3.14;																//converted to degrees
	  theta_req = theta2;

	  copy = theta_req;
	  angle2[0] = (copy /10) + '0';
	  copy = copy%10;
	  angle2[1] = copy + '0';
	  	
      SendByteSerially(0x0A);
	  SendByteSerially(0x0D);
	  SendStringSerially("theta 2 is: ");
	  SendStringSerially(angle2);
	  				
	  Delay(1000);
	
}


// SUB FUNCTIONS
void InitializeSerialCommunication(void)
{

	SPBRG = 64;		     					// LOAD BAUD RATE VALUE FOR 9600
	RCSTA = 0x90;							// ENABLE SERIAL PORT AND CONTINUOUS RECEIVE
	TXSTA = 0x24;        			 		// ENABLE TRANSMIT BIT AND HIGH SPEED
}

void SendByteSerially (unsigned char byte) 
{
	/* output one byte */
	while(! PIR1bits.TXIF)	/* set when register is empty */
		continue;
	TXREG = byte;
}

unsigned char ReceiveByteSerially(void)
 {
	/* retrieve one byte */
	while(! PIR1bits.RCIF)	/* set when register is not empty */
		continue;
	return RCREG;	
}


void SendStringSerially(const char *serial_string)
{	while(*serial_string)
	{
		SendByteSerially(*serial_string);
		serial_string++;
	}
}
