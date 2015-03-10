	#include "main.h"
	#include<math.h>

// MAIN FUNCTION
void main(void)
{
	unsigned char SerialData,x;				// DECLARE A VARIABLE FOR STORING DATA
	InitializeSerialCommunication();		// INITIALIZE SERIAL COMMUNICATION
	for(;;) 								// LOOP FOR EVER
    {
		SendByteSerially('1');
		SendByteSerially(0x0A);
		SendByteSerially(0x0D);

		Delay(100);
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