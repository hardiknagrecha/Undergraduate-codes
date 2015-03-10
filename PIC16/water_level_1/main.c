//INCLUDE MAIN HEADER FILE
#include"main.h"
signed char current=0,error=0;
unsigned char Count,i,j=0,k=0,temp;

//MAIN PROGRAM BEGINS
void main(void)
{
	
	TRISB = 0xFF;	//scanning levels in port b
	TRISD=0x00;
	RBPU=0;
	
	MainSystemInitialize();
	
	for(i=0;i<20;i++)
		{
		SendByteSerially(AT[i]);
		}
	
	SendByteSerially(0x0D);
	SendByteSerially(0x0A);
	SendByteSerially(0x0D);
	SendByteSerially(0x0A);
	
	currentlevel();
	
	for(i=0;i<14;i++)
	{
		SendByteSerially(AT0[i]);
	}

	SeriallyDisplayByte(current);

	SendByteSerially(0x0D);
	SendByteSerially(0x0A);

	for(i=0;i<16;i++)
	{
		SendByteSerially(AT1[i]);
	}
	
	Delay(500);
	j=0;
	
	do									//problem in this loop!!
	{
	receivesp[j]=ReceiveByteSerially();
	j++;
	}
	while(receivesp[j-1]!='.');
	
	for(i=0;i<2;i++)
	{
		SendByteSerially(receivesp[i]);
	}
	
	SendByteSerially(0x0D);
	SendByteSerially(0x0A);
		
	sp =((receivesp[0]-48)*10)+(receivesp[1]-48);
		
	while(1)
	{

	currentlevel();
	for(i=0;i<10;i++)
	{
		SendByteSerially(AT2[i]);
	}

	SeriallyDisplayByte(current);

	SendByteSerially(0x0D);
	SendByteSerially(0x0A);	
	if((current-sp)<0)
		{
			error=sp-current;
			if((error>0)&&(error<=10))
			{PORTD=0x01;}
			else if((error>10)&&(error<=20))
			{PORTD=0x03;}
			else if((error>20)&&(error<=30))
			{PORTD=0x07;}		
			else if((error>30)&&(error<=40))
			{PORTD=0x0f;}
			else if((error>40)&&(error<=50))
			{PORTD=0x1f;}
			else if((error>50)&&(error<=60))
			{PORTD=0x3f;}	
			else if((error>60)&&(error<=70))
			{PORTD=0x7f;}
			else if((error>70)&&(error<=80))
			{PORTD=0xff;}

			
		}
	else if((current-sp)>0)
		{
			error=current-sp;
			if((error>0)&&(error<=10))
			{PORTD=0x01;}
			else if((error>10)&&(error<=20))
			{PORTD=0x03;}
			else if((error>20)&&(error<=30))
			{PORTD=0x07;}		
			else if((error>30)&&(error<=40))
			{PORTD=0x0f;}
			else if((error>40)&&(error<=50))
			{PORTD=0x1f;}
			else if((error>50)&&(error<=60))
			{PORTD=0x3f;}	
			else if((error>60)&&(error<=70))
			{PORTD=0x7f;}
			else if((error>70)&&(error<=80))
			{PORTD=0xff;}

		}

	else if(current==sp)		//sp reached
		{
			PORTD=0x00;
			for(i=0;i<17;i++)
			{
				SendByteSerially(AT3[i]);
			}

		SendByteSerially(0x0D);
		SendByteSerially(0x0A);	
		break;	
		}
	}		
}

static void MainSystemInitialize(void)
{
	InitializeSerialCommunication();
}

void currentlevel(void)
{
	//checking current level
	temp=PORTB;
	
	if(temp==0xff)
	current=80;

	else if(temp==0x7f)
	current=70;

	else if(temp==0x3f)
	current=60;

	else if(temp==0x1F)
	current=50;
		
	else if(temp==0x0F)
	current=40;

	else if(temp==0x07)
	current=30;

	else if(temp==0x03)
	current=20;

	else if(temp==0x01)
	current=10;

	else if(temp==0x00)
	current=0;

}