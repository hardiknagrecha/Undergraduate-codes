
#include"font2.h"

//         do not change these value  //

#define DISPLAY_ON         0x3f
#define DISPLAY_OFF        0x3e
#define DISPLAY_STARTLINE  0xc0
#define DISPLAY_PAGE_SET   0xb8
#define DISPLAY_COLUMN_SET 0x40
#define DATAREG 1
#define CONTROL 0
#define LCD_ENABLE      1	 //                        Zero Bit
#define LCD_CS1         0	 //                        1'st Bit
#define LCD_CS2         6	 //                        2'nd Bit
#define LCD_inst        8	 //  RS ( 4'th Pin)  ==>>  3'rd Bit

code unsigned char value=0;
unsigned char CurrentColumn=0;	//,DisplayData[8][1];

void delay(unsigned int j)
{
	unsigned int i;
	for(i=0;i<j;i++);
}


void OmaDelay(void)
{
	delay(2);
}


void output(int port, unsigned char value)
{
	if(port) DATAPORT=value;
	else
	{
		if(value&1) value&=0XFE; else value|=1;
		if(value&2) value&=0XFD; else value|=2;
		if(value&8) value&=0XF7; else value|=8;
		PORTC = value<<6 ;
		PORTD = value<<2 ;
	}
}



void SendLCDCommand(byte value, byte CS)
{
	output(CONTROL,  CS | LCD_inst);
	OmaDelay();
	output(DATAREG, value);
	OmaDelay();
	output(CONTROL, LCD_ENABLE | CS | LCD_inst);
	OmaDelay();
	OmaDelay();
}


void SendLCDData(  unsigned char * values, unsigned int amount)
{
	byte c_s;
	unsigned int counter;
	for (counter=0; counter < amount;counter++)
		{
			c_s = CurrentColumn>63?LCD_CS2:LCD_CS1;
			output(CONTROL, c_s );
			OmaDelay();
			output(DATAREG, values[counter]);
			OmaDelay();
			output(CONTROL, LCD_ENABLE | c_s );
			OmaDelay();
			CurrentColumn++;
			if (CurrentColumn > 127)  return;
		}
}




void SetColumn(unsigned char y)
{
	CurrentColumn = y;
	if (y < 64)
		{
			SendLCDCommand(DISPLAY_COLUMN_SET | (y&63), LCD_CS1);
			SendLCDCommand(DISPLAY_COLUMN_SET | 0, LCD_CS2);
		}
	else
		{
			SendLCDCommand(DISPLAY_COLUMN_SET | 63, LCD_CS1);
			SendLCDCommand(DISPLAY_COLUMN_SET | ((y-64)&63), LCD_CS2);
		}
}




void SetPage(unsigned char x)
{
	SendLCDCommand(DISPLAY_PAGE_SET | x, LCD_CS1);
	SendLCDCommand(DISPLAY_PAGE_SET | x, LCD_CS2);
}


void SetStartLine(unsigned char line)
{
	SendLCDCommand(DISPLAY_STARTLINE | (line & 63), LCD_CS1);
	SendLCDCommand(DISPLAY_STARTLINE | (line & 63), LCD_CS2);
}




void show(unsigned char * a,unsigned int delay1)
{
	unsigned char i,j;
	unsigned int temp;
	SetColumn(0);
	SetPage(0);
	for (j=0;j<8;j++)
		{
			SetPage(j);
			SetColumn(0);
			for (i=0;i<128;i++)
				{
					temp=(unsigned int)128*j;
					temp+=i;
					SendLCDData(&a[temp],1);
					delay(delay1);
				}
		}
}


void LCDprintf(unsigned char y, unsigned char page,  unsigned char *Str)
{
	unsigned char n;
	unsigned int yy;
	SetColumn(y);
	SetPage(page);
	SetColumn(y);
	for (n = 0;Str[n]!=0;n++)
		{
			yy=(*(Str+n));
			yy*=8;
			SendLCDData(&Character8x8[yy], 8);
		}
}

void LCDprintf2(unsigned char y, unsigned char page,  unsigned char *Str)
{
	unsigned char n;
	unsigned int yy;
	SetColumn(y);
	SetPage(page);
	SetColumn(y);

	for (n = 0;Str[n]!=0;n++)
		{
			yy=(*(Str+n)-32);
			yy*=5;
			SendLCDData(&font5x7[yy],5);
			SendLCDData(&value,1);
		}
}




void clear(void)
{
	unsigned char x,a;
	for (x=0;x < 8;x++)
		{
	  		SetPage(x);SetColumn(0);
	  		for (a = 0 ;a < 128; a++)
		 	SendLCDData(&value,1);
		}
}

void on(void)
{
	SendLCDCommand(DISPLAY_ON, LCD_CS1);
	SendLCDCommand(DISPLAY_ON, LCD_CS2);
}

void off(void)
{
	SendLCDCommand(DISPLAY_OFF, LCD_CS1);
	SendLCDCommand(DISPLAY_OFF, LCD_CS2);
}

