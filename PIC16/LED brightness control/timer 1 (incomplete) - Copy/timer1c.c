
#include "main.h"

unsigned int stepsize=0,count=0, cycles=0;


interrupt timer(void)
{
	if(TMR1IF==1)
	{	
		
		
		if(count>=(115-stepsize))
		{
			if(count==115)
			{
				count=0;
				cycles++;
				
			}
		
			RB1=0;
		}
		
		else if(count<(115-stepsize))
		{
			RB1=1;
		}
		

		if(cycles%50==0)
			{
			if(stepsize>=115)
			{stepsize=0;}
			else
			stepsize=stepsize+3;
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
	int i;
	

	TRISB=0x00;
	PORTB|=0xA0;
	ADCInitialize();
	LCDInitialize();
	LCDClear();

	TimerInitialize();

	while(1);	
	
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

