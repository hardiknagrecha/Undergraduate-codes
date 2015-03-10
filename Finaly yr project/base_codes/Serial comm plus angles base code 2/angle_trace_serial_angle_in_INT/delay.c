#include "delay.h"
// SUB FUNCTIONS

void Delay(unsigned int time)	// SUB FUNCTIONS
{
//unsigned int n;
//for(n=0;n<=4;n++)

	unsigned char pause;		//DECLARE PAUSE AS UNSIGNED CHAR
	while( time > 0)			//LOOP UNTIL TIME IS GREATER THAN ZERO
	{
		pause = 250;			//INITIALIZE PAUSE TO 255
		while(pause--);			//DECREMENT PAUSE UNTIL IT BECOMES ZERO
		time--;					//DECREMENT TIME AND LOOP BACK UNTIL IT BECOMES ZERO
	}							//END OF WHILE FUNCTION 
}								