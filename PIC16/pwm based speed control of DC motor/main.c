//INCLUDE MAIN HEADER FILE
#include"main.h"
int i=48,j=48,k=48;
//MAIN PROGRAM BEGINS
unsigned int count=0,count1=0,c=1,times=300;
interrupt timer(void) 
{
	if(TMR0IF==1)
	{
		count++;
		count1++;
		
				
		if(count==300)
		count=0;		
	
	
		if(count<(300-c))		// T off time
		RB0=0;
		if(count>=(300-c))		// T on time
		RB0=1;			
	
		if(count1%times==0)
		c++;

		
		if(c==300)
		c=1;
		
		TMR0IF=0;
		TMR0IE=1;
		TMR0=0x01;
		
		}
}


void main(void)
{
	unsigned char Count;
	MainSystemInitialize();
	LCDDisplayInitializing();
	
//PWM code from here

//RBPU=0;
TRISB=0;
PORTB=0;

T0CS=0;
T0SE=0;
PSA=0;
PS2=PS1=PS0=0;
GIE=1;
TMR0=0x01;
TMR0IF=0;
TMR0IE=1;

while(1);
	
}

static void MainSystemInitialize(void)
{
	LCDInitialize();
}

