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
		LCDRow1();
		LCDWriteString("TEMPERATURE:      C ");
		temp = ADCReadData(CHANNEL3);
		temp=(temp/2)*100;
		LCDWriteCommand(0x8C);
		LCDWriteFloat(temp);


		temp = ADCReadData(CHANNEL5);
		LCDWriteCommand(0xDD);
		if(temp>2.8)
		LCDWriteString("GAS DETECTD");
		else if(temp<2.8)
		LCDWriteString("GAS ABSNT");
        
		LCDRow2();
		LCDWriteString("LUM INTENSITY:   Cd ");
		temp = ADCReadData(CHANNEL2);
		temp*=2;
		LCDWriteCommand(0xCF);
		LCDWriteInteger(temp);

		if(RE0 == 1)
		{
		LCDWriteCommand(0xD4);
		LCDWriteString("PROX DET");
		}
		else if(RE0 == 0)
		{
		LCDWriteCommand(0xD4);
		LCDWriteString("OBJ ABS");
		}        
		
		LCDRow3();
		LCDWriteString("HUM:   % ");
		temp = ADCReadData(CHANNEL1);
		temp*=30;
		LCDWriteCommand(0x98);
		LCDWriteInteger(temp);

				 
		if(RE1 == 1)
		{
		LCDWriteCommand(0x9D);
		LCDWriteString("NonMagnetic");
		}
		if(RE1 == 0)
		{
		LCDWriteCommand(0x9D);
		LCDWriteString("Magnetic   ");
		}
}
}

static void MainSystemInitialize(void)
{
	ADCInitialize();
	LCDInitialize();
}

