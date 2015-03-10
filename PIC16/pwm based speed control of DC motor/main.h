#include <htc.h>
#include "delay.h"
#include "lcd.h"

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

