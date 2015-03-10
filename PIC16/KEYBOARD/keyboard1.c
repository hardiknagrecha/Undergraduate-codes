#include "keyboard.h"

unsigned char KYB[16] = {'0','1','2','3','4','5','6','7','8','9','A','B','C','D','E','F'};

void PBchange_ISR()
{
	unsigned char temp , COL=0 , ROW=4;
	Delay(50);
	temp = PORTB;
	temp^= 0xF0;
	PORTCbits.RC2=1;
	if(!temp)
		return;
	else
	{
		PORTCbits.RC3=1;
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
		
	PORTCbits.RC4=1;
	if(ROW<=4)
		{
		LCDClear();
		LCDWriteData(KYB[(4*ROW)+COL],);
		Delay(3000);
		}
	while(PORTB!=0xF0)
		PORTB=0xF0;
	
	INTCONbits.RBIF=0;
	INTCONbits.RBIE=1;
}
							