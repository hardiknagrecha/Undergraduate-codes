//INCLUDE MAIN HEADER FILE
#include"main.h"
int i=48,j=48,k=48;
//MAIN PROGRAM BEGINS
void main(void)
{
	unsigned char Count;
	unsigned int z,temp,x,y,c=0xff;
	float p=0,f;
	MainSystemInitialize();
	LCDDisplayInitializing();
	
	//ADC PART FROM HERE
	
	TRISC=0;
	TRISD=0;

	ADON = 1;								//A/D converter module is powered up
	ADFM = 1;								//Left justified. Six (6) Least Significant bits of ADRESL are read as ‘0’.
    ADCS2 = ADCS1 = ADCS0 = 0;				//FOSC/2
    PCFG3 = PCFG2 = PCFG1 =1;
    PCFG0 = 0;
	//ADCON0=0x81;
	//ADCON1=0xCE;
	ADON=1;
	while(1)
	{
		Delay(1);
		ADCON0|=0x04;//GO=1 or start conversion
		while((ADCON0&0x02)==1);//checking if DONE=0 or over 
		PORTB=ADRESL;
		PORTD=ADRESH;
		x=ADRESH;
		y=ADRESL;
		z=(x*c)+y;
		f=z; // Integer to float conversion
		p =(f*5)/1023;
		LCDClear();
		LCDWriteFloat(p);
		Delay(2000);
		
	}
	
}

static void MainSystemInitialize(void)
{
	LCDInitialize();
}

