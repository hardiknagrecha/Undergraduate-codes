//INCLUDE MAIN HEADER FILE

#include"main.h"
unsigned char flameflag=0,smokeflag=0;
static void sms(void);


//MAIN PROGRAM BEGINS

void main(void)
{	
	TRISB= 0xF0;
	PORTB= 0x00;
	CMCON |= 0X07;
	MainSystemInitialize();

	while(1)
	{
	
	if((PORTBbits.RB7==1)||(PORTBbits.RB6==1))
	{
		if(PORTBbits.RB6==1)
		{
		smokeflag=1;
		}
	
		else if(PORTBbits.RB7==1) 
		{
		flameflag=1;
		}
		sms();
	}
	}	
}

static void MainSystemInitialize(void)
{
	TRISC |= 0xC0;
	InitializeSerialCommunication();		// INITIALIZE SERIAL COMMUNICATION
    LCDInitialize();
    LCDDisplayInitializing();
	Delay(1000);
}

static void sms(void)
{
	unsigned char flag=0,flag2=0;

	do
	{
		flag = GSM_initialize();
	}while(flag);							// send 1 to display AT again
	InitializeSerialCommunication();		// INITIALIZE SERIAL COMMUNICATION
    LCDInitialize();
	do
	{
	flag2 =	AT_SMS();
	}while(flag2);							
	
	InitializeSerialCommunication();		// INITIALIZE SERIAL COMMUNICATION
    LCDInitialize();

	if(flameflag==1)
	do
	{
	flag =	AT_NUMBER();
		if(!flag)
		{
		for(;;)
			{
			PORTBbits.RB1=1;
			Delay(1000);	
			PORTBbits.RB1=0;
			Delay(1000);	
			}
		}
	}while(flag);
	
	else if (smokeflag==1)
	do
	{
	flag =	AT_NUMBER2();
		if(!flag)
		{  
		for(;;)
			{
			PORTBbits.RB1=1;
			Delay(1000);	
			PORTBbits.RB1=0;
			Delay(1000);	
			}
		}
	}while(flag);	
}



