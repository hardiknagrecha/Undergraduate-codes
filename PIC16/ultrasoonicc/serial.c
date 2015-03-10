#include        "serial.h"
unsigned char flag1;
										
void InitializeSerialCommunication(void)
{

	SPBRG = DIVIDER;     					// LOAD BAUD RATE VALUE
	RCSTA = 0x90;							// ENABLE SERIAL PORT AND CONTINUOUS RECEIVE
	TXSTA = 0x24;        			 		// ENABLE TRANSMIT BIT AND HIGH SPEED
	SYNC=0;
}

void SendByteSerially (unsigned char byte) 
{
	/* output one byte */
	while(!TXIF)	/* set when register is empty */
		continue;
	TXREG = byte;
}

unsigned char ReceiveByteSerially()
{
	/* retrieve one byte */
	while(!RCIF)	/* set when register is not empty */
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

