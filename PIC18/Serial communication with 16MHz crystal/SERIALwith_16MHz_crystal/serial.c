	#include "main.h"

// MAIN FUNCTION
void main(void)
{
	unsigned char SerialData;				// DECLARE A VARIABLE FOR STORING DATA
	InitializeSerialCommunication();		// INITIALIZE SERIAL COMMUNICATION
	for(;;) 								// LOOP FOR EVER
    {
		SerialData = ReceiveByteSerially();	// RECEIVE DATA FROM SERIAL PORT AND STORE TO VARIABLE
		SendByteSerially(SerialData);		// SEND A DATA TO SERIAL POT
	}										// END OF FOR LOOP
}											// END OF FUNCTION

// SUB FUNCTIONS
void InitializeSerialCommunication(void)
{

	SPBRG = 25;		     					// X=25, same example as in datasheet....
	RCSTA = 0x90;							// ENABLE SERIAL PORT AND CONTINUOUS RECEIVE
	TXSTA = 0x20;        			 		// ENABLE TRANSMIT BIT AND HIGH SPEED
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