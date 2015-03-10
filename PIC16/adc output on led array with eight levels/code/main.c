//INCLUDE MAIN HEADER FILE
#include"main.h"

//MAIN PROGRAM BEGINS
void main(void)
{
	unsigned char wait=0;
	float val;
	TRISB=0x00;
	PORTB=0x00;
	ADCInitialize();
	
	while(1)
	{
		val = ADCReadData(CHANNEL1);
		
		if((val>0.0)&&(val<0.625))
		{	
			{PORTB=0x01;}				
		}
		else if((val>=0.625)&&(val<1.25))
		{	
			{PORTB=0x03;}					
		}
		else if((val>=1.25)&&(val<1.875))
		{	
			{PORTB=0x07;}					
		}
		else if((val>=1.875)&&(val<2.5))
		{	
			{PORTB=0x0F;}					
		}
		else if((val>=2.5)&&(val<3.125))
		{	
			{PORTB=0x1F;}				
		}
		else if((val>=3.125)&&(val<3.75))
		{	
			{PORTB=0x3F;}					
		}
		else if((val>=3.75)&&(val<4.375))
		{	
			{PORTB=0x7F;}					
		}
		else if((val>=4.375)&&(val<5))
		{	
			{PORTB=0xFF;}					
		}
		else							//incase there is error
		{
			{PORTB=0x00;}
		}
		
		// Small delay provided
		wait=256;
		while(wait>0)
		{
			wait--;
		}
	}
}

