#include<htc.h>
__CONFIG(0x2F0A);

void delay(unsigned char t)
{
	long int a;
	unsigned char i;	
	for(i=0;i<t;i++)
	{
	PORTB=0xff;	
	for(a=60000;a>0;a--)
		{
		}
	}
}

void main()
{
	unsigned char i;
	long int a;
	RBPU=0;
	TRISB=0;
	for(i=0;i<100;i++)
	{
	delay(i);
	PORTB=0x00;
	for(a=60000;a>0;a--)
		{
		}
	}

}