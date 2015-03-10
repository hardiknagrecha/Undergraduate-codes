//INCLUDE MAIN HEADER FILE
#include"main.h"

//MAIN PROGRAM BEGINS
void main(void)
{

	float temp;
	unsigned int temp1;
	TRISE |= 0x07;
	PORTE |= 0x07;
	MainSystemInitialize();

for(;;)
{
	
		SendStringSerially("TEMPERATURE :");    
		temp = ADCReadData(CHANNEL3);
		temp=(temp/2)*100;
		SendFloatSerially(temp);
		SendStringSerially("  C     ");

Delay(200);

		temp = ADCReadData(CHANNEL5);
		if(temp>2.8)
		SendStringSerially("GAS DETECTED     ");
		else if(temp<2.8)
		SendStringSerially("GAS ABSENT     ");

Delay(200);
        
 		SendStringSerially("LUMINOUS INTENSITY :");   
		temp = ADCReadData(CHANNEL2);
		temp*=2;
		temp1=temp;
		SendIntegerSerially(temp1);
		SendStringSerially(" Cd     ");

Delay(200);

		if(RE0 == 1)
		{
		SendStringSerially("PROXIMITY ALERT     ");
		}
		else if(RE0 == 0)
		{
		SendStringSerially("OBJECT ABSENT     ");
		}        

Delay(200);

		SendStringSerially("HUMIDITY :");   
		temp = ADCReadData(CHANNEL1);
		temp*=30;
		temp1=temp;
		SendIntegerSerially(temp1);
        SendStringSerially("%     ");

Delay(200);
				 
		if(RE1 == 1)
		{
		SendStringSerially("Non Magnetic ");
		}
		if(RE1 == 0)
		{
		SendStringSerially("Magnetic ");
		}
SendByteSerially(0x0A);
SendByteSerially(0x0D);

Delay(3000);
}
}

static void MainSystemInitialize(void)
{
	ADCInitialize();
	InitializeSerialCommunication();
}

