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

const unsigned char AT1[5]={'A','T','E','0',0x0D};
const unsigned char AT[3]={'A','T',0x0D};
const unsigned char ATSMS[10]={'A','T','+','C','M','G','F','=','1',0x0D};
const unsigned char ATSMS2[22]={'A','T','+','C','M','G','S','=','"','0','7','6','3','9','4','7','3','1','1','1','"',0x0D};
const unsigned char ATSMS3[18]={'A','T','+','C','N','M','I','=','2',',','2',',','2',',','0',',','0',0x0D};
