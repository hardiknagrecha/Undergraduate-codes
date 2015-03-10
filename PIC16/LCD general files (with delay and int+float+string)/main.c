//INCLUDE MAIN HEADER FILE
#include"main.h"
int i=48,j=48,k=48;
//MAIN PROGRAM BEGINS
void main(void)
{
	unsigned char Count;
	MainSystemInitialize();
	LCDDisplayInitializing();
	
	while(1)
	{
	LCDWriteFloat(3.134);
	Delay(1000);
	LCDClear();
	LCDWriteInteger(2);
	Delay(1000);
	LCDClear();
	}	
	
}

static void MainSystemInitialize(void)
{
	LCDInitialize();
}

