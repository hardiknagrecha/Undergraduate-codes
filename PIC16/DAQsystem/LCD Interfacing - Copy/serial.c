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

void SendCharSerially(unsigned char Value)
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


void SendIntegerSerially(int IntegerNumber)
{
	unsigned char c[6];
	unsigned char i = 0;
	
	if(IntegerNumber < 0)
	{
		SendByteSerially('-');
		IntegerNumber = - (IntegerNumber);
	}
		
	if(IntegerNumber == 0)
		SendByteSerially(0x30);
	
	while( IntegerNumber > 0)
	{
		c[i++] = ((IntegerNumber % 10) | 0x30);
		IntegerNumber /= 10;
	}
	
	while(i-- > 0)
		SendByteSerially(c[i]);
		
	
}

void SendFloatSerially(float FloatNumber)
{
	unsigned char c[4];
	unsigned char i = 0;
	int n, Temp;

	if(FloatNumber < 0)
	{
		SendByteSerially('-');
		FloatNumber = -(FloatNumber);
	}
	n = FloatNumber;
	Temp = n;
	SendIntegerSerially(n);
	SendByteSerially('.');
	FloatNumber = ((FloatNumber - n) + 1) * 1000;
	n = FloatNumber;

	while(n > 0)
	{
		c[i++] = (n % 10) + 48;
		n /= 10;
	}
	i -= 1;
	while(i-- > 1)
		SendByteSerially(c[i]);

	if(Temp < 10)
	{
		SendByteSerially("  ");

	}
	if(Temp >= 10 && Temp < 100)
	{
		SendByteSerially(" ");

	} 
} 
