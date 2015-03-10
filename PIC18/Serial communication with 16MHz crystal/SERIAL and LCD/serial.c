

#include "main.h"

unsigned char count=0,i=0,startup[20]={'e','n','t','e','r',' ','c','o','d','e',0x0A,0x0D};
unsigned char end[6]={'e','n','d',0x0A,0x0D};
unsigned char idno[16]={0};
// MAIN FUNCTION
void main(void)
{
	unsigned char SerialData;				// DECLARE A VARIABLE FOR STORING DATA
	InitializeSerialCommunication();		// INITIALIZE SERIAL COMMUNICATION
	LCDInitialize();
    CMCON |= 0X07;
    LCDDisplayInitializing();

	for(i=0;i<11;i++)
	{
		SendByteSerially(startup[i]);
		Delay(10);
	}

	SerialData='0';

	while(SerialData!='c') 								// LOOP FOR EVER
    {
		SerialData = ReceiveByteSerially();	// RECEIVE DATA FROM SERIAL PORT AND STORE TO VARIABLE
		SendByteSerially(SerialData);		// SEND A DATA TO SERIAL POT
		
	}										
	
	for(i=0;i<5;i++)
	{
		SendByteSerially(end[i]);
		Delay(10);
	}
	while(1);

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

/*
void SendStringSerially(unsigned char a[20])
{	
	unsigned char k=0;
	while(a[k]!=0x0D)
		{
		SendByteSerially(a[k]);
		k++;
		}
	
}
*/
unsigned char ReceiveByteSerially(void)
 {
	/* retrieve one byte */
	while(! PIR1bits.RCIF)	/* set when register is not empty */
		continue;
	return RCREG;	
}
