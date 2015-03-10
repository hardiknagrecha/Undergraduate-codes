//ic tester protoype
/*

PORTA 0,1,2,3,4,5 + PORT D 0,1 - outputs  
PORTB 4,5,6,7 - inputs
PORTB 0,1,2,3 - control lines outputs- row0, row1, col0, col1

pin - port pin

1- A0
2- A1	
3- B4
4- A2
5- A3
6- B5
8- B6
9- A4
10- A5
11- B7 
12- D0
13- D1

*/



//INCLUDE MAIN HEADER FILE
#include"main.h"
int i=48,j=48,k=48;
//MAIN PROGRAM BEGINS
void main(void)
{
	unsigned char Count;
	//MainSystemInitialize();
	LCDInitialize();
	LCDDisplayInitializing();
	
	unsigned int k;
	TRISB=0x0f;
	TRISA=0x00;
	TRISD=0;
	
	//selecting 1st ic
			
			RB0=0;
			RB1=1;
			RB2=1;
			RB3=0;

	k=0;
	while(k==0)
	{
			Delay(500);
			//testing 1st set of inputs
			
		
			//sending inputs 
			
			RC0=0;
			RC1=0;
			RC2=0;
			RC3=0;
			RC4=0;
			RC5=0;
			RC6=0;
			RC7=0;
			
		Delay(3000);
		if(RB4==0)
			{	
				if(RB5==0)
					{
						if(RB6==0)
							{
								if(RB7==0)
									{
									}
																	
									else
									{
									k=1;
									break;
									}	
							}
							
							else
							{
							k=1;
							break;
							}	
					}
				else
				{
				k=1;
				break;
				}	
			}
			else
			{
			k=1;
			break;
			}
	
	
	//testing 2nd set of inputs
			
			Delay(1000);
			//sending inputs 
			
			RC0=0;
			RC1=1;
			RC2=0;
			RC3=1;
			RC4=0;
			RC5=1;
			RC6=0;
			RC7=1;
			
			Delay(3000);
			//checking outputs
		
			if(RB4==1)
			{	
				if(RB5==1)
					{
						if(RB6==1)
							{
								if(RB7==1)
									{
									}
																	
									else
									{
									k=1;
									break;
									}	
							}
							
							else
							{
							k=1;
							break;
							}	
					}
				else
				{
				k=1;
				break;
				}	
			}
			else
			{
			k=1;
			break;
			}

	/*
	//testing 3rd set of inputs
			
		
			//sending inputs 
			
			RC0=1;
			RC1=0;
			RC2=1;
			RC3=0;
			RC4=1;
			RC5=0;
			RC6=1;
			RC7=0;
			
			Delay(100);
	
			//checking outputs
		
			if(RB4==1)
			{	
				if(RB5==1)
					{
						if(RB6==1)
							{
								if(RB7==1)
									{
									}
																	
									else
									{
									k=1;
									break;
									}	
							}
							
							else
							{
							k=1;
							break;
							}	
					}
				else
				{
				k=1;
				break;
				}	
			}
			else
			{
			k=1;
			break;
			}
			
	


	//testing 4th set of inputs
			
		
			//sending inputs 
			
			RC0=1;
			RC1=1;
			RC2=1;
			RC3=1;
			RC4=1;
			RC5=1;
			RC6=1;
			RC7=1;	
			
			Delay(100);
			//checking outputs
			if(RB4==0)
			{	
				if(RB5==0)
					{
						if(RB6==0)
							{
								if(RB7==0)
									{
									}
																	
									else
									{
									k=1;
									break;
									}	
							}
							
							else
							{
							k=1;
							break;
							}	
					}
				else
				{
				k=1;
				break;
				}	
			}
			else
			{
			k=1;
			break;
			}
	*/
	break;
					
	}

	if(k==1)
	{
	LCDWriteString("IC 1 faulty");
	Delay(1000);
	}
	else
	{	
	LCDWriteString("IC 1 proper");
	Delay(1000);
	}
	
}

