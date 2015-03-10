	#include "main.h"
	#include<math.h>

// MAIN FUNCTION
void main(void)
{
	float x = 0.00;
	unsigned char a0=0,d1=0,d2=0;
	unsigned int number=0;
	unsigned char t=0,ca0=0,cd1=0,cd2=0;
	InitializeSerialCommunication();		// INITIALIZE SERIAL COMMUNICATION
	while(1)
	{
		for(t=0;t<=100;t++)
		{
		a0=d1=d2=0;
		ca0=cd1=cd2=0;
		number=0;
		x = 0.00;
		
		x = 3 + 3*sin(2*3.14*t/50);
		
		number = x;
		a0 = number;
		
		x = x*10;
		x = x - number*10; 
		number = x/1;
		d1 = number;
	
		x = x*10;
		x = x - number*10; 
		number = x/1;
		d2 = number;
		
		/*d1 = x/1;
		x = x - d1;
		x = x*10;

		d2 = x/1;
		x = x - d2;
		x = x*10;*/
		
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