#include<pic.h>
#include<stdio.h>
#include<htc.h>
__CONFIG (0x2F0A);

#define trig RB0
#define echo RB1


void main(void)
{
	unsigned int count(void);
	unsigned int range;
	long  int Time;
}

unsigned int count(void)
{
long  int Time;
TMR1H = 0x00;
TMR1L = 0x00;
T1CON = 0x29; 
TMR1IF = 0;
trig = 1; 

while(!TMR1IF); 
trig = 0; 
TMR1ON = 0; 
TMR1H = 0; 
TMR1L = 0;
T1CON = 0x20;
TMR1IF = 0;
while(!echo); 
TMR1ON = 1; 
while(echo && !TMR1IF)
{
if(TMR1IF)
{ Time += 65536 ; 
}
else if (!echo)
{ Time =(TMR1H<<8)+ TMR1L;
}
TMR1ON = 0; 
}
}