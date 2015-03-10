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

void SeriallyDisplayByte(unsigned char Value)	
	{
		{
				if(( Value / 100 ) == 0)
					SendByteSerially(0x20);			//put space
			    else
					SendByteSerially((Value / 100) | 0x30);
			   
			    if(((Value % 100) / 10) == 0)
					if(( Value / 100 ) == 0)
							SendByteSerially(0x20);	
				else
					SendByteSerially(((Value % 100) / 10) | 0x30);
			  	else
					SendByteSerially(((Value % 100) / 10) | 0x30);
			
					SendByteSerially((Value % 10) | 0x30);
		}
		Value++;
		SendByteSerially(0x0D);
		SendByteSerially(0x0A);
		Delay(500);
			
	}
