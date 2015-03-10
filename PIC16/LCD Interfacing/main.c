//INCLUDE MAIN HEADER FILE
#include"main.h"

//MAIN PROGRAM BEGINS
void main(void)
{

	unsigned char Count;
	MainSystemInitialize();
	for(;;)
	{
		MainDisplayCompanyName();
		MainDisplayMessage();
		Delay(2000);
	}
}

static void MainSystemInitialize(void)
{
	LCDInitialize();
}

static void MainDisplayCompanyName(void)
{
	LCDClear();
	LCDWriteString("HPS ELECTRONICS");
	Delay(500);
	LCDWriteCommand(0xc3);
	LCDWriteString("BANGALORE");
	Delay(3000);
}
static void MainDisplayMessage(void)
{
	LCDClear();
	LCDWriteString("PIC DEVELOPMENT");
	LCDRow2();
	LCDWriteString("KIT VER 3.0");

}