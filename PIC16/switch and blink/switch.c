#include<htc.h>
__CONFIG(0x8F0A);

void main()
{
	long int time,count=0;
	RBPU=0x04;
	TRISB=0x04;
	while(1)
	{
	
	if(RB2==0)   //we learn that switch o/p is active low
	{
		RB1=0;
		count++;
		
	}

	else
	{
	if(count==0)
	{
		RB1=0;
			
	}
	else if(count>0)
	{
	count=count/1.5;	//ask why is this happening????
	while(count>0)
	{
		PORTB=0xff;
		count--;
	}
	
	
	}
	}
	}
}



