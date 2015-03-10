#include<htc.h>
__CONFIG(0X2F0A);
long double i=0;


/*
order of stepper signal is yellow, brown, orange and then black.
the two red go to +12 volts. and use uln2803 as explained. n ideally,
the pattern is 1000, 0100, 0010, 0001 but there is soldering error so 
pattern changed.


*/



void main()
{
	TRISB=0;
	
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
	RB6=0;
	RB5=1;
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
	RB5=0;
	RB4=1;
	
	}
}