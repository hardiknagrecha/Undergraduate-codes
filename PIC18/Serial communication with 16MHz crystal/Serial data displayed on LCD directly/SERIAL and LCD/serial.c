

#include "main.h"

unsigned char count=0,i=0,startup[20]={'e','n','t','e','r',' ','c','o','d','e',0x0A,0x0D};
unsigned char end[6]={'e','n','d',0x0A,0x0D};
unsigned char idno[16]={0};
// MAIN FUNCTION
void main(void)
{
	unsigned char SerialData,counter,key1;				// DECLARE A VARIABLE FOR STORING DATA
	InitializeSerialCommunication();		// INITIALIZE SERIAL COMMUNICATION
	LCDInitialize();
    CMCON |= 0X07;
    LCDDisplayInitializing();

	SerialData='0';
	counter=0;
	key1=0;
	for(;;) 								// LOOP FOR EVER
    {
		if((count%16)==0)
		{
			key1=key1^1;
			if(key1==1)	
			LCDRow1();
			else
			LCDRow2();
			
		}
		
		SerialData = ReceiveByteSerially();	// RECEIVE DATA FROM SERIAL PORT AND STORE TO VARIABLE
		LCDWriteData(SerialData);		// SEND A DATA TO SERIAL POT
		count++;
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
