#include<htc.h>
__CONFIG(0x2F0A);

void main()
{
	TRISB=0;
	RBPU=0;
	PORTB=0Xff;
	long int i;	
	
	while(1)
	{
	for(i=0;i<60000;i++)
	{
		RB7=0;
		RB6=0;
		RB5=0;
		RB4=0;
		RB3=0;
		RB2=0;
		RB1=1;
		RB0=1;
	}
	

	for(i=0;i<60000;i++)
	{
		RB7=1;
		RB6=0;
		RB5=0;
		RB4=1;
		RB3=1;
		RB2=1;
		RB1=1;
		RB0=1;
	}

	for(i=0;i<60000;i++)
	{
		RB7=0;
		RB6=0;
		RB5=1;
		RB4=0;
		RB3=0;
		RB2=1;
		RB1=0;
		RB0=1;
	}

	for(i=0;i<60000;i++)
	{
		RB7=0;
		RB6=0;
		RB5=0;
		RB4=0;
		RB3=1;
		RB2=1;
		RB1=0;
		RB0=1;
	}

	for(i=0;i<60000;i++)
	{
		RB7=1;
		RB6=0;
		RB5=0;
		RB4=1;
		RB3=1;
		RB2=0;
		RB1=0;
		RB0=1;
	}

	for(i=0;i<60000;i++)
	{
		RB7=0;
		RB6=1;
		RB5=0;
		RB4=0;
		RB3=1;
		RB2=0;
		RB1=0;
		RB0=1;
	}

for(i=0;i<60000;i++)
	{
		RB7=0;
		RB6=1;
		RB5=0;
		RB4=0;
		RB3=0;
		RB2=0;
		RB1=0;
		RB0=1;
	}

	for(i=0;i<60000;i++)
	{
		RB7=0;
		RB6=0;
		RB5=0;
		RB4=1;
		RB3=1;
		RB2=1;
		RB1=1;
		RB0=1;
	}

	for(i=0;i<60000;i++)
	{
		RB7=0;
		RB6=0;
		RB5=0;
		RB4=0;
		RB3=0;
		RB2=0;
		RB1=0;
		RB0=1;
	}

	for(i=0;i<60000;i++)
	{
		RB7=0;
		RB6=0;
		RB5=0;
		RB4=0;
		RB3=1;
		RB2=0;
		RB1=0;
		RB0=1;
	}


	
}		

	}