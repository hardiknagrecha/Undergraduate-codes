
#include "main.h"

unsigned int count2=0;
unsigned char temp2=1,count=0;

interrupt timer(void)
{
	if(TMR1IF==1)
	{	
		
		if(count==115-temp2)
		{
			RB0=1;
		}
		if(count==115)
		{
			RB0=0;
			count=0;
		}
		
		count=count++;
		TMR1IF=0;
		TMR1IE=1;
		TMR1H=0xfe;	
	}		
}

void main(void)
{
	float temp=0;
	int i , temp3;
	TRISB=0x00;
	PORTB=1;
	TimerInitialize();
	ADCInitialize();
	LCDInitialize();
		
	for(;;)
	{
		temp=0;
	
		for(i=0;i<100;i++)
		temp+=ADCReadData(0x00);
	
		temp/=100;
	
		LCDWriteFloat((temp*50)/1023);
	
	 	temp3 = (temp*50)/1023;
	
		if((temp3<24)&&(temp2<115))
		{
			temp2++;
		}
	
		else if((temp3>24)&&(temp2>1))
		{
			temp2--;
		}
	    if (temp2==115)
		{
			temp2 = 114;
		}
	}

}

void TimerInitialize(void)
{
	TMR1H=0xfe;
	T1CKPS1=0;	//setting prescalar 1:1
	T1CKPS0=0;
	TMR1ON=1;
	GIE=1;
	PEIE=1;
	TMR1IE=1;
}







