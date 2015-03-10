#include <htc.h>
#include "adc.h"
#include "LCD.h"
#include "delay.h"

__CONFIG(0x2F0A);

unsigned int count2=0;
unsigned char temp=1,count=0;



interrupt timer(void)
{
	if(TMR1IF==1)
	{	
		
		if(count==115-temp)
		{
			RB0=1;
		}
		if(count==115)
		{
			RB0=0;
			count=0;
		}
		if((count2/1000)==50)
		{   
			count2=0;
			if(temp>=115)
				{temp=1;}
			else
				{temp=temp+5;}
		}
		count=count++;
		count2++;
		TMR1IF=0;
		TMR1IE=1;
		TMR1H=0xfe;	
	}		
}

void main(void)
{
float temp=0;
int i;
	TRISB=0x00;
	PORTB=1;
	ADCInitialize();
	LCDInitialize();
	TMR1H=0xfe;
	T1CKPS1=0;	//setting prescalar 1:1
	T1CKPS0=0;
	TMR1ON=1;
	GIE=1;
	PEIE=1;
	TMR1IE=1;
	for(;;)
	{
	temp=0;
	for(i=0;i<200;i++)
	temp+=ADCReadData(0x00);
	temp/=200;
	LCDWriteFloat((temp*50)/1023);
	
	}
}










