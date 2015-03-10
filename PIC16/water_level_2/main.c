//INCLUDE MAIN HEADER FILE
#include"main.h"
signed char current=0,error=0;
unsigned char Count,i,j=0,k=0,temp;

//MAIN PROGRAM BEGINS
void main(void)
{
	signed char temp2;
	TRISB = 0xFF;	//scanning levels in port b
	TRISD=0x00;
	RBPU=0;
	PORTD=0x00;
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
	
	temp2 = current - sp;	
	
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
	
	if((temp2)<0)	//positive error
		{
			error=sp-current;
			if(current==sp)		//sp reached
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
			else if((error>0)&&(error<=20))
			{PORTD=0x80;}
			else if((error>20)&&(error<=40))
			{PORTD=0xc0;}		
			else if((error>40)&&(error<=60))
			{PORTD=0xe0;}
			else if((error>60)&&(error<=80))
			{PORTD=0xf0;}
		}

	else if((temp2)>0)		//negative error
		{
			error=current-sp;
			if(current==sp)		//sp reached
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
			else if((error>0)&&(error<=20))
			{PORTD=0x08;}
			else if((error>20)&&(error<=40))
			{PORTD=0x0c;}
			else if((error>40)&&(error<=60))
			{PORTD=0x0e;}		
			else if((error>60)&&(error<=80))
			{PORTD=0x0f;}
		} 
	else if(temp2==0)		//sp reached
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
	current=0;

	else if(temp==0xfe)
	current=10;

	else if(temp==0xfc)
	current=20;

	else if(temp==0xf8)
	current=30;
		
	else if(temp==0xf0)
	current=40;

	else if(temp==0xe0)
	current=50;

	else if(temp==0xc0)
	current=60;

	else if(temp==0x80)
	current=70;

	else if(temp==0x00)
	current=80;

}