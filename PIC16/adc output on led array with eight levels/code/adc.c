#include "adc.h"

void ADCInitialize(void)
{
	ADON = 1;								//A/D converter module is powered up
	ADFM = 1;								//Left justified. Six (6) Least Significant bits of ADRESL are read as �0�.
    ADCS2 = ADCS1 = ADCS0 = 0;				//FOSC/2
	PCFG3=PCFG2=PCFG1=PCFG0=0;				//ANALOG INPUT
}

float ADCReadData(unsigned char ChannelNumber)
{
	unsigned char count;
	unsigned  x,y,c=0xff,z;
	float p=0,f=0;

	ADCON0 = ((ADCON0 & 0xC7) | ChannelNumber);
	Delay(1);

    for(count = 0 ; count < 20; count++)
    {

	    ADON = 1;
		ADCON0 |= 0x04;							// start conversion
		while( (ADCON0 & 0x04) == 0x04); 			//WAIT FOR CONVERSION TO COMPLETE
	
		x=ADRESH;     //ADC result higher 2 bits
		y=ADRESL;     //ADC result lower 8 bits
		z=x*c+y;       //combined 10 bit number formation
		f=z;           //unsigned to float conversion
		p +=(f*5)/1023;    //equivalent voltage calculation from ADC output
		Delay(1);
	
	}

	p /= 20;
	Delay(1);
	return p;
}

