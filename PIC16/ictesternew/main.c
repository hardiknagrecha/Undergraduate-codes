#include"main.h"

//INCLUDE MAIN HEADER FILE

unsigned int k=0,l=0,m=0,n=0;
unsigned char temp;

void ic1on(void)
{
PORTC &= 0x5F;
PORTC |= 0x50;
}

void ic2on(void)
{
PORTC &= 0x9F;
PORTC |= 0x90;
}

void ic3on(void)
{
PORTC &= 0x6F;
PORTC |= 0x60;
}

void ic4on(void)
{
PORTC &= 0xAF;
PORTC |= 0xA0;
}

void alloff(void)
{
PORTC&=0x0f;		
}

void combination0(void)
{
	k=0;
	//inputs to logic ic
	PORTB=0x00;
	Delay(1);
	//outputs from ic as input to controller
	temp=PORTC;
	if((temp&=0x0f)!=0x00)
	k=1;
	else 
	return;
}

void combination1(void)
{
	l=0;
	//inputs to logic ic
	PORTB=0x55;
	Delay(1);
	//outputs from ic as input to controller
	temp=PORTC;
	if((temp&=0x0f)!=0x0f)
	l=1;
	else 
	return;	
}

void combination2(void)
{
	m=0;
	//inputs to logic ic
	PORTB=0xAA;
	Delay(1);
	//outputs from ic as input to controller
	temp=PORTC;
	if((temp&=0x0f)!=0x0f)
	m=1;
	else 
	return;
}

void combination3(void)
{
	n=0;
	//inputs to logic ic
	PORTB=0xFF;
	Delay(1);
	//outputs from ic as input to controller
	temp=PORTC;
	if((temp&=0x0f)!=0x00)
	n=1;
	else 
	return;	
}

void check(void)
{
	combination0();
	Delay(200);
	combination1();
	Delay(200);
	combination2();
	Delay(200);
	combination3();
	Delay(200);
}

void main(void)
{
	TRISC=0x0F;
	PORTC=0x00;
	TRISB=0x00;
	PORTB=0x00;
	TRISD=0X00;
	PORTD=0x00;
	while(1)
	{	
/*	
ic1on();
	check();

	
if(k==0&&l==0&&m==0&&n==0)
{	
PORTD|=0x01;
PORTD&=0xfd;
}
else if(k==1||l==1||n==1||m==1)
{
PORTD|=0x02;
PORTD&=0xfe;	
}

	*/
	
	ic2on();
	check();
	
if(k==0&&l==0&&m==0&&n==0)
{
PORTD|=0x04;
PORTD&=0xf7;
}
else if(k==1||l==1||n==1||m==1)
{
PORTD|=0x08;	
PORTD&=0xfb;
}
/*
	
ic3on();
check();
	
if(k==0&&l==0&&m==0&&n==0)
{
PORTD|=0x10;
PORTD&=0xdf;
}
else if(k==1||l==1||n==1||m==1)
{
PORTD|=0x20;	
PORTD&=0xef;
}

	ic4on();
	check();
	
if(k==0&&l==0&&m==0&&n==0)
{
PORTD|=0x40;
PORTD&=0x7f;
}
else if(k==1||l==1||n==1||m==1)
{
PORTD|=0x80;	
PORTD&=0xbf;
}
*/
}
}
