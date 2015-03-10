#include<htc.h>
__CONFIG(0X2F0A);

void main(void)
{
	TRISB=0;
	long double i;
	while(1)
	{
	for(i=0;i<400;i++)
	{}
	RB7=1;
	RB6=0;
	RB5=0;
	RB4=0;
	
	
	
	for(i=0;i<400;i++)
	{}
	RB7=0;
	RB6=1;
	RB5=0;
	RB4=0;
	
	
	
	for(i=0;i<400;i++)
	{}
	RB7=0;
	RB6=0;
	RB5=1;
	RB4=0;
	
	
	
	for(i=0;i<400;i++)
	{}
	RB7=0;
	RB6=0;
	RB5=0;
	RB4=1;
	
	}
}