//INCLUDE MAIN HEADER FILE
#include"main.h"

//MAIN PROGRAM BEGINS
void main(void)
{

	float temp;
	TRISE |= 0x07;
	PORTE |= 0x07;
	MainSystemInitialize();

		LCDRow1();
		LCDWriteString("VIT UNIVERSITY 2012 ");
		LCDRow2();
		LCDWriteString("$**URE001 PROJECT**$");
		LCDRow3();
		LCDWriteString("-ALL IN ONE SENSOR-");
		Delay(5000);
LCDClear();		
		LCDRow1();
		LCDWriteString("  BY- ABHISHEK ROY  ");
		LCDRow2();
		LCDWriteString("09BEI003,EIE 2009-13");
		LCDRow3();
		LCDWriteString("UNDR THE GUIDANCE OF");
		LCDRow4();
		LCDWriteString("PROF. VIVEKANANDAN S");
		Delay(5000);
LCDClear();
		LCDRow1();
		LCDWriteString("TEMPERATURE:      C ");
		LCDRow2();
		LCDWriteString("LUM INTENSITY:   Cd ");
		LCDRow3();
		LCDWriteString("HUM:   % ");

for(;;)
{
		temp = ADCReadData(CHANNEL3);
		temp=(temp/2)*100;
		LCDWriteCommand(0x8C);
		LCDWriteFloat(temp);


		temp = ADCReadData(CHANNEL5);
		LCDWriteCommand(0xDD);
		if(temp>2.8)
		LCDWriteString("GAS DETECTD");
		else if(temp<2.8)
		LCDWriteString("GAS ABSENT ");
        
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

