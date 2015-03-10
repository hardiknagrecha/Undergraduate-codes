//INCLUDE MAIN HEADER FILE
#include"main.h"
int i=48,j=48,k=48;
//MAIN PROGRAM BEGINS
void main(void)
{
	
	unsigned char Count;
	MainSystemInitialize();
	value();
	Delay(2000);
	for(;;)
	{
		numbersdisplay();
		Delay(50);
		
	}
}

static void MainSystemInitialize(void)
{
	LCDInitialize();
}

static void numbersdisplay(void)
{
	LCDClear();

	LCDRow2();
	LCDWriteData(k);
	LCDWriteData(j);
	LCDWriteData(i);

	Delay(50);
	i++;
	if(i==58)
	{
		i=48;
		j++;
			if(j==58)
			{
			j=48;
			k++;
				if(k==58)
				{
					k=48;
				}	
			}
	}
	
}

static void value(void)
{
	LCDClear();
	LCDWriteCommand(0x82);
	LCDWriteString("NUMBERS FROM");
	LCDRow2();
	LCDWriteCommand(0xc2);
	LCDWriteString("000 TO 999");

}