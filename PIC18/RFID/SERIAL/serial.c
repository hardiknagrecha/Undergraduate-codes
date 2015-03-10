

#include "main.h"

	unsigned char count=0,t=0,i=0,startup[16]={'e','n','t','e','r',' ','c','o','d','e',0x0A,0x0D};
	unsigned char end[6]={'e','n','d',0x0A,0x0D};
	unsigned char idno[15]={'0','0','0','0','0','0','0','0','0','0','0','0',0x0A,0x0D};
	unsigned char rec[11]={'r','e','c','e','i','v','e','d',0x0A,0x0D};
	unsigned char key[15]={'8','4','0','0','8','5','8','1','0','E','8','E',0x0A,0x0D};
	unsigned char m[6]="match";
	unsigned char nm[10]="not match";
//840085810E8E

// MAIN FUNCTION
void main(void)
{
	unsigned char pause,SerialData;				// DECLARE A VARIABLE FOR STORING DATA
	InitializeSerialCommunication();		// INITIALIZE SERIAL COMMUNICATION
	LCDInitialize();
    CMCON |= 0X07;
    RCSTAbits.CREN = 1;
	LCDDisplayInitializing();
	LCDClear();
	LCDWriteString(startup);
	Delay(100);
	i=0;
	while(i<12)
		{
			while(!PIR1bits.RCIF)
			{
				pause = 255;
				while(pause--);
				
			}
			idno[i]=RCREG;
			i++;
		}
	
	LCDClear();
	LCDWriteString(rec);
	LCDRow2();
	for(i=0;i<12;i++)
	{
		LCDWriteData(idno[i]);
		Delay(10);
	}
	Delay(2000);
	
	t=0;
	for(i=0;i<12;i++)
	{
		if(idno[i]==key[i])
		continue;
		else
		{
			t=1;
			break;
		}	
	}
	
	if(t==1)
	{
		LCDClear();
		LCDWriteString(nm);
		Delay(2000);
	
	}
	else if(t==0)
	{
		LCDClear();
		LCDWriteString(m);
		Delay(2000);
		
	}
	
	LCDClear();
	LCDWriteString(end);
	Delay(2000);
	
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
