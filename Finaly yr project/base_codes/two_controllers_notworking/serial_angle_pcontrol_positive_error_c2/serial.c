#include        "serial.h"
#include        "main.h"

unsigned char flag1;
										
void InitializeSerialCommunication(void)
{

	SPBRG = 64;     					// LOAD BAUD RATE VALUE
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


void SendStringSerially(const char *serial_string)
{	while(*serial_string)
	{
		SendByteSerially(*serial_string);
		serial_string++;
	}
}
