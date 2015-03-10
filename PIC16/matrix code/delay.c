#include "delay.h"

void Delay(unsigned int time)
{
	unsigned char pause;
	while( time > 0)
	{
		pause = 255;
		while(pause--);
		time--;
	}
}
