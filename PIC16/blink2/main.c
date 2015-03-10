#include<htc.h>
__CONFIG(0x2F0A);


void main()
{
	RBPU=0;
	TRISB=0;
	long int i,j,count;
	while(1)
	{
	count=60000;
	RB1=0;
	while(count>0)
		{
			count--;
		}

	count=60000;
	RB1=1;
	while(count>0)
	{
		count--;
	}
	}	
	

}