#include<htc.h>
__CONFIG(0x2F0A);
long double i,j;
void display(int a)
{
	if(a==0)
	{
		for(i=0;i<20;i++)
		{
			RB7=0;
			RB6=0;
			RB5=0;
			RB4=0;
			RB3=0;
			RB2=0;
			RB1=1;
			RB0=1;
		}	
	}
	
	if(a==1)
	{
		
		for(i=0;i<20;i++)
		{
			RB7=1;
			RB6=0;
			RB5=0;
			RB4=1;
			RB3=1;
			RB2=1;
			RB1=1;
			RB0=1;
		}
	}
	
		
	if(a==2)
	{
		for(i=0;i<20;i++)
		{
			RB7=0;
			RB6=0;
			RB5=1;
			RB4=0;
			RB3=0;
			RB2=1;
			RB1=0;
			RB0=1;
		}
	
	}	
		
		
	if(a==3)
	{
		for(i=0;i<20;i++)
		{
		RB7=0;
		RB6=0;
		RB5=0;
		RB4=0;
		RB3=1;
		RB2=1;
		RB1=0;
		RB0=1;
		}	

	}


	if(a==4)
	{
		for(i=0;i<20;i++)
		{
		RB7=1;
		RB6=0;
		RB5=0;
		RB4=1;
		RB3=1;
		RB2=0;
		RB1=0;
		RB0=1;
		}
		


	}
		
	if(a==5)
	{
		for(i=0;i<20;i++)
		{
		RB7=0;
		RB6=1;
		RB5=0;
		RB4=0;
		RB3=1;
		RB2=0;
		RB1=0;
		RB0=1;
		}		

	}
	
	if(a==6)
	{
		for(i=0;i<20;i++)
		{
		RB7=0;
		RB6=1;
		RB5=0;
		RB4=0;
		RB3=0;
		RB2=0;
		RB1=0;
		RB0=1;
		}
	}
		


	if(a==7)
	{
			for(i=0;i<20;i++)
		{
		RB7=0;
		RB6=0;
		RB5=0;
		RB4=1;
		RB3=1;
		RB2=1;
		RB1=1;
		RB0=1;
		}	

	}


	if(a==8)
	{
		for(i=0;i<20;i++)
		{
		RB7=0;
		RB6=0;
		RB5=0;
		RB4=0;
		RB3=0;
		RB2=0;
		RB1=0;
		RB0=1;
		}		


	}	


	if(a==9)
	{
		
			for(i=0;i<20;i++)
		{
		RB7=0;
		RB6=0;
		RB5=0;
		RB4=0;
		RB3=1;
		RB2=0;
		RB1=0;
		RB0=1;
		}
	}




}

void main()
{
	TRISB=0;
	RBPU=0;
	TRISA=0;
	PORTB=0Xff;
		
	int b=0,c=0,d=0,e=0;
	

	while(1)
	{
	
	for(j=0;j<50;j++)
	{
	RA0=1;
	display(e);
	
	RA1=1;
	display(d);
	
	RA2=1;
	display(c);
	
	RA3=1;
	display(b);
	}
	
	
	b++;
	if(b==10)
		{
			b=0;
			c++;
			if(c==6)
			{
				c=0;
				d++;
				if(d==10)
				{
					d=0;
					e++;
					if(e==6)
					{
						b=c=d=e=0;
					}
				}
			}
		}
	
	
	}
	
}