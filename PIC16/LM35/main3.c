//INCLUDE MAIN HEADER FILE
#include"main.h"

//MAIN PROGRAM BEGINS
void main(void)
{

	float temp;
	TRISB = 0x00;
	TRISE |= 0x07;
	PORTE |= 0x07;
	MainSystemInitialize();

		
for(;;)
	{
			temp = ADCReadData(CHANNEL1);
			temp=temp*100;
			LCDWriteCommand(0x80);
			LCDWriteFloat(temp);
			
			if(temp>35)
				RB1=1;
			else if(temp<35)
				RB1=0;
		
	
	}
}

static void MainSystemInitialize(void)
{
	ADCInitialize();
	LCDInitialize();
}

