	#include "main.h"
	#include<math.h>

// MAIN FUNCTION
void main(void)
{
	float x = 0.00, copy = 0.00;
	unsigned char a0=0,d1=0,d2=0;
	unsigned int number=0;
	unsigned char t=0,ca0=0,cd1=0,cd2=0;
	InitializeSerialCommunication();		// INITIALIZE SERIAL COMMUNICATION
	while(1)
	{
		for(t=0;t<=100;t++)
		{		
		x = 3 + 3*sin(2*3.14*t/50);
		copy = x;
		number = x;
		a0 = number;
		
		copy = copy*10;
		copy = copy - 10*number;
		number = copy/1;
		d1 = number;
	
		copy = x*100;
		copy = copy - 100*a0 - 10*d1; 
		number = copy/1;
		d2 = number;
		
		ca0 = a0 + '0';
		cd1 = d1 + '0';
		cd2 = d2 + '0';
		SendByteSerially(ca0);
		SendByteSerially('.');
		SendByteSerially(cd1);
		SendByteSerially(cd2);
		SendByteSerially(0x0A);
		SendByteSerially(0x0D);
		
		Delay(1000);
		}
	}										// END OF FOR LOOP
}											// END OF FUNCTION

// SUB FUNCTIONS
void InitializeSerialCommunication(void)
{

	SPBRG = 22;		     					// LOAD BAUD RATE VALUE FOR 115200
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