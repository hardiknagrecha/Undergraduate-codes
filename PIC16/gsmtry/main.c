//INCLUDE MAIN HEADER FILE
#include"main.h"
unsigned char pause,i,cnt=0,Count;
unsigned long int time = 60000;
unsigned char RX[10];
	


void main()
{
	TRISB= 0x00;
	PORTB= 0x00;
	
	MainSystemInitialize();
	LCDDisplayInitializing();
	Delay(5000);
	
	while(1)
	{

	for(i= 0;  i < 5; i++)
	        {
	           SendByteSerially(AT1[i]);			   // SEND ATE0
	        }									
		
	Delay(2000);

	for(i= 0;  i < 3; i++)
	        {
	           SendByteSerially(AT[i]);			   // SEND AT
	        }									
		
	Delay(2000);

	for(i= 0;  i < 10; i++)
		        {
		           SendByteSerially(ATSMS[i]);			   // SEND ATE0
		        }									
			
		Delay(2000);
	
	for(i= 0;  i < 22; i++)
		        {
		           SendByteSerially(ATSMS2[i]);			   // SEND ATE0
		        }									
			
		Delay(2000);
	
	



	/*
	for(i= 0;  i < 5; i++)
	        {
	           SendByteSerially(AT1[i]);			   // SEND ATE0
	        }									
			
		CREN = 1;

         do
			{
				while((time > 0)&&(!RCIF))			   // come outside if a bit is received in serial port
				{
					pause = 255;
					while(pause--);
					time--;
				} 
	            
			RX[cnt]=RCREG;
			cnt++;
			}while(RX[cnt-1]!='K'&&(time!=0));
			
				if(time==0)							   // TIME OUT 3 SEC gone
				{
					LCDClear();
					LCDWriteString("time out");
					Delay(1000);	
				}	 	
				
				else 
				{
					LCDClear();
					LCDWriteString("ECHO_OFF");
					Delay(2000);
				}


		for(i= 0;  i < 3; i++)
	        {
	           SendByteSerially(AT[i]);			   // SEND AT
	        }									
			
		CREN = 1;

        do
			{
				while((time > 0)&&(!RCIF))			   // come outside if a bit is received in serial port
				{
					pause = 255;
					while(pause--);
					time--;
				} 
	            
			RX[cnt]=RCREG;
			cnt++;
			}while(RX[cnt-1]!='K'&&(time!=0));
			
				if(time==0)							   // TIME OUT 3 SEC gone
				{
					LCDClear();
					LCDWriteString("time out");
					Delay(1000);	
				}	 	
				
				else 
				{
					LCDClear();
					LCDWriteString("AT_SENT");
					Delay(2000);
				}


	
	*/
	}
}

static void MainSystemInitialize(void)
{
	LCDInitialize();
	InitializeSerialCommunication();
}

