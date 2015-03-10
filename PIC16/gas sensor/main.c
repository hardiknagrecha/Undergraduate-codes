#include"main.h"

main()
{
	TRISB=1;	// Setting PORTB pins as input
	PORTB=0;	// Setting all pins of PORTB initially low
	RBPU=0;		//enabling internal pull up resistors
	
	//RB0 is the input from alcohol sensor
	//RB1 is the input from smoke sensor
	
	while(1)
	{
		if(RB0==1)
		{
		LCDRow1();
		LCDWriteString("Alcohol Detected");
			}
		else
		{
		LCDRow1();
		LCDWriteString("Alcohol Absent");
			}

		
		if(RB1==1)
		{
		LCDRow2();
		LCDWriteString("Smoke Detected");
			}
		else
		{
		LCDRow2();
		LCDWriteString("Smoke Absent");
			}
	}
}