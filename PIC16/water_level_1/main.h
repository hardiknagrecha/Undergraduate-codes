#include <htc.h>
#include "delay.h"
#include "lcd.h"
#include "serial.h"

#define _XTAL_FREQ	16000000
#define PRESSED		0

//DEFINE CONSTANT
#define PRESENT			1
#define DETECTED		1
#define NOT_DETECTED	0

//DEFINE MACROS
__CONFIG (0x2F0A);


//MACROS
//NO MACROS DEFINED

//FUNCTION PROTOTYPES
void main(void);
static void MainSystemInitialize(void);
void currentlevel(void);

static unsigned char AT[30]     = {'L','E','V','E','L',' ','C','O','N','T','R','O','L','L','E','R',' ','K','I','T'};
static unsigned char AT0[15]    = {'C','u','r','r','e','n','t',' ','l','e','v','e','l',':'};
static unsigned char AT1[20]    = {'E','n','t','e','r',' ','S','e','t',' ','p','o','i','n','t',':'};
static unsigned char AT2[12]    = {'N','e','w',' ','l','e','v','e','l',':'};
static unsigned char AT3[20]    = {'S','e','t',' ','P','o','i','n','t',' ','r','e','a','c','h','e','d'};

unsigned char receivesp[20]={0};
signed char sp=0;

