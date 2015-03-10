//INCLUDE MAIN HEADER FILE
#include"main.h"

//MAIN PROGRAM BEGINS
void main(void)
{

	float temp;
	TRISE |= 0x07;
	PORTE |= 0x07;
	MainSystemInitialize();

for(;;)
{

		temp = ADCReadData(CHANNEL1);
		LCDRow1();
		LCDWriteFloat(temp);
		
		temp = ADCReadData(CHANNEL2);
		LCDWriteCommand(0x8A);
		LCDWriteFloat(temp);
		
		temp = ADCReadData(CHANNEL3);
		LCDRow2();
		LCDWriteFloat(temp);

		temp = ADCReadData(CHANNEL5);
		LCDWriteCommand(0xCA);
		LCDWriteFloat(temp);

		if(RE0 == 1)
		{
		LCDRow3();
		LCDWriteString("IR ON ");
		}
		else if(RE0 == 0)
		{
		LCDRow3();
		LCDWriteString("IR OFF");
		}        
		 
		if(RE1 == 1)
		{
		LCDRow4();
		LCDWriteString("hALL ON ");
		}
		if(RE1 == 0)
		{
		LCDRow4();
		LCDWriteString("hALL Off");
		}
}
}

static void MainSystemInitialize(void)
{
	ADCInitialize();
	LCDInitialize();
}

