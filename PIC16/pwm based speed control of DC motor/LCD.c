
#include "LCD.h"

static void  LCDEnable(void)
{
    LCDEnablePin = HIGH; 
    Delay(10);
    LCDEnablePin = LOW; 
}

void LCDWriteCommand(LCDubyte LCDData)
{
    LCDRegisterSelectPin = LOW; 
    LCDWriteByte(LCDData);
}

void LCDWriteData(LCDubyte LCDData)
{
    LCDRegisterSelectPin = HIGH; 
    LCDWriteByte(LCDData);
}

 
void LCDWriteString(const char *lcd_string)
{
	while(*lcd_string) 
	{
		LCDWriteData(*lcd_string++);
	}
}


void LCDInitialize(void)
{
    LCD_DDR = LCD_DDR & 0x03;
	LCDEnablePin   = OUTPUTPIN; 
    LCDRegisterSelectPin = OUTPUTPIN;
    LCDDataPort    &=  0x0f;
	LCDReset();
    LCDWriteCommand(0x28);
    LCDWriteCommand(0x0C);
    LCDWriteCommand(0x06);
    LCDWriteCommand(0x01); 

}
static void LCDReset(void)
{
	LCDWriteCommand(0x33);
	LCDWriteCommand(0x33);
	LCDWriteCommand(0x32);
}
void LCDDisplayInitializing(void)
{
	
	LCDubyte i;
	LCDWriteString("INITIALIZING....");
	LCDRow2();
	for(i = 0 ; i < 16; i++)
	{
		LCDWriteData(46);			// ascii value of '.' in decimanl
		Delay(100);
	}
	LCDClear();
}
static void  LCDWriteByte(LCDubyte  LCDData)
{
    LCDDataPort = (LCDDataPort & 0x0F)|(LCDData & 0xF0);
    LCDEnable();
    LCDDataPort = (LCDDataPort & 0x0F)|(LCDData << 4);
    LCDEnable();
    Delay(2);
}
void LCDDisplayByte(LCDubyte LCDAdress, LCDubyte Value)
{
	LCDWriteCommand(LCDAdress);
	if(( Value / 100 ) == 0)
		LCDWriteData(0x20);			//put space
  	else
		LCDWriteData((Value / 100) | 0x30);
   
    if(((Value % 100) / 10) == 0)
		if(( Value / 100 ) == 0)
			LCDWriteData(0x20);	
		else
			LCDWriteData(((Value % 100) / 10) | 0x30);
  	else
		LCDWriteData(((Value % 100) / 10) | 0x30);

	LCDWriteData((Value % 10) | 0x30);
}	

void LCDWriteFloat(float FloatNumber)
{
	unsigned char c[6];
	unsigned char i = 0;
	int n, Temp;
	if(FloatNumber < 0)
	{
		LCDWriteData('-');
		FloatNumber = -(FloatNumber);
	}
	n = FloatNumber;
	Temp = n;
	LCDWriteInteger(n);
	LCDWriteData('.');
	FloatNumber = ((FloatNumber - n) + 1) * 1000;
	n = FloatNumber;

	while(n > 0)
	{
		c[i++] = (n % 10) + 48;
		n /= 10;
	}
	i -= 1;
	while(i-- > 1)
		LCDWriteData(c[i]);

	if(Temp < 10)
	{
		LCDWriteCommand(0xcc);
		LCDWriteString("  ");

	}
	if(Temp >= 10 && Temp < 100)
	{
		LCDWriteCommand(0xcd);
		LCDWriteString(" ");

	} 
} 
void LCDWriteInteger(int IntegerNumber)
{
	unsigned char c[6];
	unsigned char i = 0;
	
	if(IntegerNumber < 0)
	{
		LCDWriteData('-');
		IntegerNumber = - (IntegerNumber);
	}
		
	if(IntegerNumber == 0)
		LCDWriteData(0x30);
	
	while( IntegerNumber > 0)
	{
		c[i++] = ((IntegerNumber % 10) | 0x30);
		IntegerNumber /= 10;
	}
	
	while(i-- > 0)
		LCDWriteData(c[i]);
		
	
}