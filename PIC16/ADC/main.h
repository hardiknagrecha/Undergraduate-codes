#include <htc.h>
#include "delay.h"
#include "lcd.h"
#include "adc.h"
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
static void MainDisplayCompanyName(void);
static void MainDisplayMessage(void);

static unsigned char AT[26] = {'T','E','M','P','E','R','A','T','U','R','E',' ','C','O','N','T','R','O','L','L','E','R',' ','K','I','T'};
static unsigned char AT0[16] = {'R','o','o','m',' ', 'T','e','m','p','e','r','a','t','u','r','e' };
static unsigned char AT1[31] = {'P','l','e','a','s','e',' ','E','n','t','e','r',' ','T','e','m','p','e','r','a','t','u','r','e',' ','L','i','m','i','t','s'};
static unsigned char AT2[8] = {'T','-','H','i','g','h',' ',':'};
static unsigned char AT3[7] = {'T','-','L','o','w',' ',':'};
static unsigned char HYS_Err[32] ={'T','e','m','p','e','r','a','t','u','r','e',' ','l','i','m','i','t','s',' ','a','r','e',' ','t','o','o',' ','c','l','o','s','e'};
static unsigned char TH_Err[35] ={'T','e','m','p','e','r','a','t','u','r','e',' ','u','p','p','e','r',' ','l','i','m','i','t',' ','i','s',' ','t','o','o',' ','h','i','g','h'};
static unsigned char TL_Err[34] ={'T','e','m','p','e','r','a','t','u','r','e',' ','l','o','w','e','r',' ','l','i','m','i','t',' ','i','s',' ','t','o','o',' ','l','o','w'};

unsigned char THigh[4]=0;
unsigned char TLow[4]=0;

