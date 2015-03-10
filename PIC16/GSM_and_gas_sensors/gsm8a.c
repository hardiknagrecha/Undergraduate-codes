#include "gsm.h"
#include "delay.h"
#include "LCD.h"


const unsigned char AT1[5]={'A','T','E','0',0x0D};
const unsigned char AT[3]={'A','T',0x0D};
const unsigned char ATSMS[10]={'A','T','+','C','M','G','F','=','1',0x0D};
const unsigned char ATSMS2[22]={'A','T','+','C','M','G','S','=','"','0','9','5','9','7','0','9','5','7','6','3','"',0x0D};
const unsigned char TXT1[]="GSM_INI";
const unsigned char TXT2[]="ECHO_OFF";
const unsigned char TXT3[]="AT_OK";
const unsigned char TXT4[]="END";
const unsigned char TXT5[]="ATSMS_OK";
const unsigned char TXT6[]="TIMEOUT";
const unsigned char TXT7[]="ERROR";
const unsigned char TXT8[]="DONE";
const unsigned char MSG[]="Flamable gas detected initiate emergency procedures";
const unsigned char MSG1[]="Smoke detected initiate emergency procedures";
	
unsigned char GSM_initialize(void)

{		
		unsigned char pause,i,cnt=0;
		unsigned long int time = 60000;
		unsigned char RX[10];

		LCDClear();
		LCDWriteString(TXT1);
		Delay(2000);


			for(i= 0;  i < 5; i++)
	        {
	           SendByteSerially(AT1[i]);			   // SEND AT
	        }									
			
			RCSTAbits.CREN = 1;

             do
			{
				while((time > 0)&&(!PIR1bits.RCIF))			   // come outside if a bit is received in serial port
				{
					pause = 255;
					while(pause--);
					time--;
				} 
	            
			RX[cnt]=RCREG;
			cnt++;
			}while(RX[cnt-1]!='K'&&(time!=0));
			
				if(time==0)							   // TIME OUT 3 SEC gone
				{return 1;}
		 	
			LCDClear();
			LCDWriteString(TXT2);
			Delay(2000);

	
				for(i=0;i<3;i++)
		        {
		           SendByteSerially(AT[i]);			   // SEND AT
		        }										
	
				RCSTAbits.CREN = 0;
				RCSTAbits.CREN = 1;
	
				 do
					{
					while((time > 0)&&(!PIR1bits.RCIF))			   // come outside if a bit is received in serial port
					{
						pause = 255;
						while(pause--);
						time--;
					}
					
					RX[cnt]=RCREG;
					cnt++;
					}while((RX[cnt-1]!='K')&&(time!=0));
					
	
			    if(time==0)							   // TIME OUT 3 SEC gone
					{return 1;}
		 					  
				else if((RX[cnt-1]=='K'))
			   			{
						LCDWriteString(TXT3);
						Delay(2000);
						return 0;
						}
				else
					LCDWriteString(TXT4);
					Delay(1000);
					return 1;

}

unsigned char AT_SMS(void)
{

unsigned char RX[16];
unsigned char pause,i,cnt=0;
signed int time = 10000;

     
for(i=0;  i < 10; i++)
{
	SendByteSerially(ATSMS[i]);
}


			RCSTAbits.CREN = 0;
			RCSTAbits.CREN = 1;

             do
			{
			while((time > 0)&&(!PIR1bits.RCIF))		   // come outside if a bit is received in serial port
			{
				pause = 255;
				while(pause--);
				time--;
			} 
            
			RX[cnt]=RCREG;
			cnt++;
			}while(RX[cnt-1]!='K'&&(time!=0));
			
			LCDClear();
				LCDWriteString(TXT5);
		    Delay(3000);

			if(time <= 0)							   // TIME OUT 3 SEC gone
				{
				LCDWriteString(TXT6);
				Delay(3000);
				return 1; 
   				}				 					  
			else if((RX[cnt-1]=='K')&&(RX[cnt-2]=='O'))
			{
				
				return 0;
			}
			else
			{
				LCDWriteString(TXT7);
				 Delay(10000);
			     for(;;);
			}
}




unsigned char AT_NUMBER(void)
{
	unsigned char pause,i,cnt=0;
	unsigned int time = 2000;
	
	unsigned char RX[35];


			for(i=0;i<22;i++)
				SendByteSerially(ATSMS2[i]);

			RCSTAbits.CREN = 0;
			RCSTAbits.CREN = 1;
			i=0;
			do
			{
				RX[i]=ReceiveByteSerially(); 	
     			i++;
			}while(RX[i-1]!='>');
			
			LCDClear();
	
		for(i=4;i<19;i++)
			LCDWriteData(RX[i]);
	
	
			SendStringSerially(MSG);
			SendByteSerially(0x1A) ;
			
		LCDClear();
			LCDWriteString(TXT8);
		
return 0;

}


unsigned char AT_NUMBER2(void)
{
	unsigned char pause,i,cnt=0;
	unsigned int time = 2000;
	
	unsigned char RX[35];


			for(i=0;i<22;i++)
				SendByteSerially(ATSMS2[i]);

			RCSTAbits.CREN = 0;
			RCSTAbits.CREN = 1;
			i=0;
			do
			{
				RX[i]=ReceiveByteSerially(); 	
     			i++;
			}while(RX[i-1]!='>');
			
			LCDClear();
	
		for(i=4;i<19;i++)
			LCDWriteData(RX[i]);
	
	
			SendStringSerially(MSG1);
			SendByteSerially(0x1A) ;
			
		LCDClear();
			LCDWriteString(TXT8);
		
return 0;

}

