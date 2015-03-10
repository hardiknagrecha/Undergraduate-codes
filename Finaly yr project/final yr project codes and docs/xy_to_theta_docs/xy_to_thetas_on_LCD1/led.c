#include "main.h"
#include <math.h>

unsigned char c[15]={0}, cnt=0, angle2[4]={0};
float xc = 5, yc = 15, l1=7.5, l2=10, theta1c = 0, theta1 = 0, theta2c=0, theta2 = 0,fraction = 0, fraction2 = 0,root=0, phi = 0, sai = 0;	//the x co-ordinate
int theta_req = 0, copy=0;


void main(void)
{
  TRISB = 0x00;				// CONFIGURE LED AS OUTPUT PORT
  LCDInitialize();
  CMCON |= 0X07;
  LCDDisplayInitializing();

  fraction = (((l1+l2)*(l1+l2))-(xc*xc+yc*yc))/((xc*xc+yc*yc)-((l1-l2)*(l1-l2)));
  root = sqrt(fraction);

  //Displaying on LCD
  LCDClear();
  LCDRow1();
  LCDWriteFloat(fraction);
  
  LCDRow2();																			//converted to degrees
  LCDWriteFloat(root);
  Delay(8000);

	
  theta2c = 2*atan(root);														//in radian and can be negative
  theta2 = (theta2c*180)/3.14;
  phi = atan(yc/xc);
  fraction2 = ((l2*sin(theta2c))/(l1+(l2*cos(theta2c))));
  sai = atan (fraction2);
  theta1c = phi - sai;
  theta1 = (theta1c*180)/3.14;
  
  //Displaying on LCD
  LCDClear();
  LCDRow1();
  LCDWriteFloat(theta1);
  
  LCDRow2();																			//converted to degrees
  LCDWriteFloat(theta2);
  Delay(1000);
  while(1)
	{}
			
}  		
