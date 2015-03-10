#ifndef SERIAL_H
#define SERIAL_H

//DEFINE CONSTANTS
#define BAUD 9600      
#define FOSC 40000000L



#define DIVIDER 64

//FUNCTION PROTOTYPES
unsigned char ReceiveByteSerially();
void SendByteSerially (unsigned char byte);
void InitializeSerialCommunication(void);
unsigned char ReceiveWithTimeout(void);
unsigned char OK_Check(void);
unsigned char NUM_Check(void);
void SendStringSerially(const char *serial_string);

#endif
