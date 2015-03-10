#include<htc.h>
__CONFIG(0x2F0A);

void main()
{
	long int time;
	RBPU=0;
	TRISB=0;
	while(1)
	{
	PORTB=0X00;
	time=60000;
	while(time>0)
	{
		time--;
	}


	PORTB=0xff;
	time=60000;
	while(time>0)
	{
		time--;
	}
	
	}
}



