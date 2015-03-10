#include <htc.h>
#include "delay.h"
#include "font.h"
#include "glcd.h"

__CONFIG (0x2F0A);

#define ONE 			  	0x01
//DEFINE CONSTANT

typedef unsigned char byte;


void delay(unsigned int);
void OmaDelay(void);
void output(int,unsigned char);
void SendLCDCommand(byte,byte);
void SendLCDData(unsigned char*,unsigned int);
void SetColumn(unsigned char);
void SetPage(unsigned char);
void SetStartLine(unsigned char);
void show(unsigned char *,unsigned int);
void LCDprintf(unsigned char,unsigned char,unsigned char *);
void LCDprintf2(unsigned char,unsigned char,unsigned char *);
static void MainSystemInitailize(void);
static void MainDisplayProjectTitle(void);



const char a1[16]=" HPS  EMBEDDED ";
const char a2[20]="   GRAPHICAL LCD  ";


void main()
{

TRISB  = 0x00;
TRISC |= 0x00;
TRISC &= 0x3F;
TRISD |= 0x00;
TRISD &= 0xCF;
	
	for(;;)
	{
		MainSystemInitailize();
		Delay(20000);
	}
}

static void MainSystemInitailize(void)
{
	MainDisplayProjectTitle();
	Delay(2000);
}	

static void MainDisplayProjectTitle(void)
{
	on();
	SetStartLine(0);
	clear();

	LCDprintf(0,1,a1);			
	LCDprintf2(0,3,a2);			
}
