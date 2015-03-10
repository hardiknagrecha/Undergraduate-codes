#include	<htc.h>                         //INCLUDE PIC HEADER FILE

//DEFINE CONSTANTS
#define BAUD 9600      
#define FOSC 16000000L



#define DIVIDER ((int)(FOSC/(16UL * BAUD) -1))

//FUNCTION PROTOTYPES
unsigned char ReceiveByteSerially();
void SendByteSerially (unsigned char byte);
void InitializeSerialCommunication(void);
void SendStringSerially(const char *serial_string);