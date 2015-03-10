#include <htc.h>

__CONFIG(0x2F0A);

unsigned int count2=0;
unsigned char temp=1,count=0;

interrupt timer(void)
{
	if(T0IF==1)
	{	
		if(count==16-temp)
		{
			RB0=1;
		}
		if(count==16)
		{
			RB0=0;
			count=0;
		}
		if((count2/100)==10)
		{   
			count2=0;
			if(temp==16)
				{temp=1;}
			else
				{temp++;}
		}
		count=count++;
		count2++;
		TMR0=0XFE;
		T0IF=0;
		T0IE=1;
		
	}	
}

void main(void)
{
	TRISB=0x00;
	RB0=0;
	TMR0=0XFE;
	T0CS=0;	//we use internal instruction clock cycle
	T0SE=0;	// it is T zero and not alphabet O
	PSA=0;
	PS2=PS1=PS0=0;
	GIE=1;
	T0IE=1;

	for(;;);

}






