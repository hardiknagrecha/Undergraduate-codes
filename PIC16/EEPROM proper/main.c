//INCLUDE MAIN HEADER FILE
#include"main.h"
unsigned char i,count1=0;
//MAIN PROGRAM BEGINS
void main(void)
{

	unsigned char Count,x;
	MainSystemInitialize();
	LCDDisplayInitializing();
	
	EEADR=0x00;
	EEDATA='c';
	EEPGD=0;
	WREN=1;
	GIE=0;
	EECON2=0x55;
	EECON2=0xAA;
	WR=1;
	GIE=1;
	WREN=0;
	LCDClear();
	LCDWriteString("character");
	LCDRow2();
	LCDWriteData(EEDATA);
	Delay(3000);

	
	EEADR=0x00;
	EEPGD=0;
	RD=1;
	LCDClear();
	Delay(2000);
	LCDWriteData(EEDATA);
	Delay(2000);
	LCDClear();
	LCDWriteString("Crossed EEPROM");
	Delay(5000);
	
	


		for(;;)
	{
		write();
		Delay(2000);
	}
}

static void MainSystemInitialize(void)
{
	LCDInitialize();
}

static void write(void)
{
	LCDClear();
	LCDWriteString("Going to build ");
	LCDRow2();
	LCDWriteString("many projects!!!");
	Delay(500);
	LCDClear();
	LCDWriteCommand(0x83);
	LCDWriteString("HELL YEAH!!!");
	Delay(1000);
	
	while(count1<10)
	{
	LCDClear();
	LCDWriteString("tick tock");
	Delay(100);
		
	LCDClear();
	LCDRow2();
	LCDWriteString("tick tock");
	Delay(100);		
	count1++;
	
	}
	count1=0;
	for(i=48;i<59;i++)
	{	
	LCDClear();
	LCDWriteCommand(0x83);
	LCDWriteData(i);
	Delay(500);
	}
}
