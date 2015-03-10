#include <htc.h>						//INCLUDE PIC HEADER FILE

__CONFIG (0x2F0A);

unsigned int cnt = 0; 

interrupt timer(void)
{
if(TMR0IF == 1)
{
		if(cnt== 305)

		{
		RB1 = ~RB1;
		cnt=0;
		}
	cnt++;
	TMR0IF=0;
	TMR0IE=1;
}
}

// MAIN FUNCTIONS
void main(void)
{
  TRISB = 0x00;				// CONFIGURE LED AS OUTPUT PORT
  RB1 = 1;

  T0CS = 0;
  T0SE = 0;
  PSA = 0;
  PS2=PS1=PS0=1;
  GIE = 1;
  TMR0IE= 1;

	for(;;); 
}								// END OF MAIN FUNCTION
