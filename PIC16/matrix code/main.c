//INCLUDE MAIN HEADER FILE
#include"main.h"
__CONFIG(0x2F0A);
int i=48,j=48,k=48;
//MAIN PROGRAM BEGINS

unsigned char KYB[16] = {'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};

void interrupt timer(void)
{
	unsigned char temp, COL=0 , ROW=4;
	Delay(50);
	temp = PORTB;
	temp^= 0xF0;
	if(!temp)
		return;
	else
	{
		RC3=1;
		while(temp<<=1)
		COL++;
		PORTB=0xFE;	
		if(PORTB!=0xFE)
			ROW=0;
			else
			{
				PORTB=0xFD;
				if(PORTB!=0xFD)
					ROW=1;	
					else
					{
						PORTB=0xFB;
						if(PORTB!=0xFB)
							ROW=2;
							else
							{
								PORTB=0xF7;
									if(PORTB!=0xF7)
										ROW=3;	
							}
					}
			}
	}	
		
	if(ROW<=4)
		{
		LCDWriteData(KYB[(4*ROW)+COL]);
		}
	while(PORTB!=0xF0)
		PORTB=0xF0;
	
	RBIF=0;
	RBIE=1;
}
							


void main(void)
{
	unsigned char Count;
	LCDInitialize();
	LCDDisplayInitializing();
	

	  TRISC=0x00;
	  PORTC=0x00;
	  //CMCON |= 0X07;
	  RBPU=0;
	  TRISB |= 0xF0;
	  TRISB &= 0xF0;
	  PORTB = 0xF0;
	  while(PORTB!=0xF0);
	  GIE=1;
	  RBIE=1;	
	  RBIF=0;
  	  while(1);
}

