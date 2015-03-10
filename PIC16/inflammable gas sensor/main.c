//INCLUDE MAIN HEADER FILE
#include"main.h"
int i=48,j=48,k=48;
//MAIN PROGRAM BEGINS
void main(void)
{
	unsigned char Count;
	unsigned int z,temp,x,y,c=0xff;
	float g,q,r,p=0,f,volt,check;
	MainSystemInitialize();
	LCDDisplayInitializing();
	
	//ADC PART FROM HERE
	
	TRISC=0;
	TRISD=0;

	ADON = 1;								//A/D converter module is powered up
	ADFM = 1;								//Left justified. Six (6) Least Significant bits of ADRESL are read as ‘0’.
    ADCS2 =  ADCS0 = 0;						//NOTE SETTING THIS WAS MOST IMPORTANT. CORRECT VALUE GAVE CORRECT O/P.
	ADCS1 =0;				
    PCFG3 = PCFG2 = PCFG1 =0;
    PCFG0 = 0;
	//ADCON0=0x81;
	//ADCON1=0xCE;
	ADON=1;
	
	LCDClear();
	LCDWriteString("the voltage is:");
	
	while(1)
	{
		r=0;
		volt=0;
		for(q=0;q<100;q++)
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
		p =(f*5.79)/1023;
		r=r+p;
		}
		
		volt=r/100;
		
		LCDClear();
		LCDRow1();
		LCDWriteString("voltage is: ");
		LCDWriteFloat(volt);
		Delay(50);
		if(volt>=4.69)
		{
			LCDRow2();
			LCDWriteString("gas present");
			Delay(1000);
			}
		else
		{
			LCDRow2();
			LCDWriteString("gas absent");
			Delay(500);
			
			}	
	}
	
}

static void MainSystemInitialize(void)
{
	LCDInitialize();
}

