opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 6738"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 6 "C:\Users\X4ROY\Desktop\CR\graphic LCD\MAIN.c"
	psect config,class=CONFIG,delta=2 ;#
# 6 "C:\Users\X4ROY\Desktop\CR\graphic LCD\MAIN.c"
	dw 0x2F0A ;#
	FNCALL	_main,_MainSystemInitailize
	FNCALL	_main,_Delay
	FNCALL	_MainSystemInitailize,_MainDisplayProjectTitle
	FNCALL	_MainSystemInitailize,_Delay
	FNCALL	_MainDisplayProjectTitle,_on
	FNCALL	_MainDisplayProjectTitle,_SetStartLine
	FNCALL	_MainDisplayProjectTitle,_clear
	FNCALL	_MainDisplayProjectTitle,_LCDprintf
	FNCALL	_MainDisplayProjectTitle,_LCDprintf2
	FNCALL	_clear,_SetPage
	FNCALL	_clear,_SetColumn
	FNCALL	_clear,_SendLCDData
	FNCALL	_LCDprintf2,_SetColumn
	FNCALL	_LCDprintf2,_SetPage
	FNCALL	_LCDprintf2,___wmul
	FNCALL	_LCDprintf2,_SendLCDData
	FNCALL	_LCDprintf,_SetColumn
	FNCALL	_LCDprintf,_SetPage
	FNCALL	_LCDprintf,_SendLCDData
	FNCALL	_on,_SendLCDCommand
	FNCALL	_SetStartLine,_SendLCDCommand
	FNCALL	_SetPage,_SendLCDCommand
	FNCALL	_SetColumn,_SendLCDCommand
	FNCALL	_SendLCDData,_output
	FNCALL	_SendLCDData,_OmaDelay
	FNCALL	_SendLCDCommand,_output
	FNCALL	_SendLCDCommand,_OmaDelay
	FNCALL	_OmaDelay,_delay
	FNROOT	_main
	global	_Character8x8
psect	stringtext,class=STRCODE,delta=2,reloc=256
global __pstringtext
__pstringtext:
;	global	stringtab,__stringbase
stringtab:
;	String table - string pointers are 2 bytes each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:
	movf btemp+1,w
andlw 7Fh
movwf	pclath
	movf	fsr,w
incf fsr
skipnz
incf btemp+1
	movwf pc
__stringbase:
	file	"C:\Users\X4ROY\Desktop\CR\graphic LCD\font.h"
	line	2
_Character8x8:
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	07Eh
	retlw	081h
	retlw	095h
	retlw	0B1h
	retlw	0B1h
	retlw	095h
	retlw	081h
	retlw	07Eh
	retlw	07Eh
	retlw	0FFh
	retlw	0EBh
	retlw	0CFh
	retlw	0CFh
	retlw	0EBh
	retlw	0FFh
	retlw	07Eh
	retlw	0Eh
	retlw	01Fh
	retlw	03Fh
	retlw	07Eh
	retlw	03Fh
	retlw	01Fh
	retlw	0Eh
	retlw	0
	retlw	08h
	retlw	01Ch
	retlw	03Eh
	retlw	07Fh
	retlw	03Eh
	retlw	01Ch
	retlw	08h
	retlw	0
	retlw	018h
	retlw	0BAh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0BAh
	retlw	018h
	retlw	0
	retlw	010h
	retlw	0B8h
	retlw	0FCh
	retlw	0FFh
	retlw	0FCh
	retlw	0B8h
	retlw	010h
	retlw	0
	retlw	0
	retlw	0
	retlw	018h
	retlw	03Ch
	retlw	03Ch
	retlw	018h
	retlw	0
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	0E7h
	retlw	0C3h
	retlw	0C3h
	retlw	0E7h
	retlw	0FFh
	retlw	0FFh
	retlw	0
	retlw	03Ch
	retlw	066h
	retlw	042h
	retlw	042h
	retlw	066h
	retlw	03Ch
	retlw	0
	retlw	0FFh
	retlw	0C3h
	retlw	099h
	retlw	0BDh
	retlw	0BDh
	retlw	099h
	retlw	0C3h
	retlw	0FFh
	retlw	070h
	retlw	0F8h
	retlw	088h
	retlw	088h
	retlw	0FDh
	retlw	07Fh
	retlw	07h
	retlw	0Fh
	retlw	0
	retlw	04Eh
	retlw	05Fh
	retlw	0F1h
	retlw	0F1h
	retlw	05Fh
	retlw	04Eh
	retlw	0
	retlw	0C0h
	retlw	0E0h
	retlw	0FFh
	retlw	07Fh
	retlw	05h
	retlw	05h
	retlw	07h
	retlw	07h
	retlw	0C0h
	retlw	0FFh
	retlw	07Fh
	retlw	05h
	retlw	05h
	retlw	065h
	retlw	07Fh
	retlw	03Fh
	retlw	099h
	retlw	05Ah
	retlw	03Ch
	retlw	0E7h
	retlw	0E7h
	retlw	03Ch
	retlw	05Ah
	retlw	099h
	retlw	07Fh
	retlw	03Eh
	retlw	03Eh
	retlw	01Ch
	retlw	01Ch
	retlw	08h
	retlw	08h
	retlw	0
	retlw	08h
	retlw	08h
	retlw	01Ch
	retlw	01Ch
	retlw	03Eh
	retlw	03Eh
	retlw	07Fh
	retlw	0
	retlw	0
	retlw	024h
	retlw	066h
	retlw	0FFh
	retlw	0FFh
	retlw	066h
	retlw	024h
	retlw	0
	retlw	0
	retlw	05Fh
	retlw	05Fh
	retlw	0
	retlw	0
	retlw	05Fh
	retlw	05Fh
	retlw	0
	retlw	06h
	retlw	0Fh
	retlw	09h
	retlw	07Fh
	retlw	07Fh
	retlw	01h
	retlw	07Fh
	retlw	07Fh
	retlw	040h
	retlw	0DAh
	retlw	0BFh
	retlw	0A5h
	retlw	0FDh
	retlw	059h
	retlw	03h
	retlw	02h
	retlw	0
	retlw	070h
	retlw	070h
	retlw	070h
	retlw	070h
	retlw	070h
	retlw	070h
	retlw	0
	retlw	080h
	retlw	094h
	retlw	0B6h
	retlw	0FFh
	retlw	0FFh
	retlw	0B6h
	retlw	094h
	retlw	080h
	retlw	0
	retlw	04h
	retlw	06h
	retlw	07Fh
	retlw	07Fh
	retlw	06h
	retlw	04h
	retlw	0
	retlw	0
	retlw	010h
	retlw	030h
	retlw	07Fh
	retlw	07Fh
	retlw	030h
	retlw	010h
	retlw	0
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	02Ah
	retlw	03Eh
	retlw	01Ch
	retlw	08h
	retlw	0
	retlw	08h
	retlw	01Ch
	retlw	03Eh
	retlw	02Ah
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	0
	retlw	03Ch
	retlw	03Ch
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	0
	retlw	08h
	retlw	01Ch
	retlw	03Eh
	retlw	08h
	retlw	08h
	retlw	03Eh
	retlw	01Ch
	retlw	08h
	retlw	030h
	retlw	038h
	retlw	03Ch
	retlw	03Eh
	retlw	03Eh
	retlw	03Ch
	retlw	038h
	retlw	030h
	retlw	06h
	retlw	0Eh
	retlw	01Eh
	retlw	03Eh
	retlw	03Eh
	retlw	01Eh
	retlw	0Eh
	retlw	06h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	06h
	retlw	05Fh
	retlw	05Fh
	retlw	06h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	07h
	retlw	07h
	retlw	0
	retlw	07h
	retlw	07h
	retlw	0
	retlw	0
	retlw	014h
	retlw	07Fh
	retlw	07Fh
	retlw	014h
	retlw	07Fh
	retlw	07Fh
	retlw	014h
	retlw	0
	retlw	024h
	retlw	02Eh
	retlw	06Bh
	retlw	06Bh
	retlw	03Ah
	retlw	012h
	retlw	0
	retlw	0
	retlw	046h
	retlw	066h
	retlw	030h
	retlw	018h
	retlw	0Ch
	retlw	066h
	retlw	062h
	retlw	0
	retlw	030h
	retlw	07Ah
	retlw	04Fh
	retlw	05Dh
	retlw	037h
	retlw	07Ah
	retlw	048h
	retlw	0
	retlw	04h
	retlw	07h
	retlw	03h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01Ch
	retlw	03Eh
	retlw	063h
	retlw	041h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	041h
	retlw	063h
	retlw	03Eh
	retlw	01Ch
	retlw	0
	retlw	0
	retlw	0
	retlw	08h
	retlw	02Ah
	retlw	03Eh
	retlw	01Ch
	retlw	01Ch
	retlw	03Eh
	retlw	02Ah
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	03Eh
	retlw	03Eh
	retlw	08h
	retlw	08h
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	0E0h
	retlw	060h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	060h
	retlw	060h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	060h
	retlw	030h
	retlw	018h
	retlw	0Ch
	retlw	06h
	retlw	03h
	retlw	01h
	retlw	0
	retlw	03Eh
	retlw	07Fh
	retlw	071h
	retlw	059h
	retlw	04Dh
	retlw	07Fh
	retlw	03Eh
	retlw	0
	retlw	040h
	retlw	042h
	retlw	07Fh
	retlw	07Fh
	retlw	040h
	retlw	040h
	retlw	0
	retlw	0
	retlw	062h
	retlw	073h
	retlw	059h
	retlw	049h
	retlw	06Fh
	retlw	066h
	retlw	0
	retlw	0
	retlw	022h
	retlw	063h
	retlw	049h
	retlw	049h
	retlw	07Fh
	retlw	036h
	retlw	0
	retlw	0
	retlw	018h
	retlw	01Ch
	retlw	016h
	retlw	053h
	retlw	07Fh
	retlw	07Fh
	retlw	050h
	retlw	0
	retlw	027h
	retlw	067h
	retlw	045h
	retlw	045h
	retlw	07Dh
	retlw	039h
	retlw	0
	retlw	0
	retlw	03Ch
	retlw	07Eh
	retlw	04Bh
	retlw	049h
	retlw	079h
	retlw	030h
	retlw	0
	retlw	0
	retlw	03h
	retlw	03h
	retlw	071h
	retlw	079h
	retlw	0Fh
	retlw	07h
	retlw	0
	retlw	0
	retlw	036h
	retlw	07Fh
	retlw	049h
	retlw	049h
	retlw	07Fh
	retlw	036h
	retlw	0
	retlw	0
	retlw	06h
	retlw	04Fh
	retlw	049h
	retlw	069h
	retlw	03Fh
	retlw	01Eh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	066h
	retlw	066h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	080h
	retlw	0E6h
	retlw	066h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	08h
	retlw	01Ch
	retlw	036h
	retlw	063h
	retlw	041h
	retlw	0
	retlw	0
	retlw	0
	retlw	024h
	retlw	024h
	retlw	024h
	retlw	024h
	retlw	024h
	retlw	024h
	retlw	0
	retlw	0
	retlw	0
	retlw	041h
	retlw	063h
	retlw	036h
	retlw	01Ch
	retlw	08h
	retlw	0
	retlw	0
	retlw	02h
	retlw	03h
	retlw	051h
	retlw	059h
	retlw	0Fh
	retlw	06h
	retlw	0
	retlw	0
	retlw	03Eh
	retlw	07Fh
	retlw	041h
	retlw	05Dh
	retlw	05Dh
	retlw	01Fh
	retlw	01Eh
	retlw	0
	retlw	07Ch
	retlw	07Eh
	retlw	013h
	retlw	013h
	retlw	07Eh
	retlw	07Ch
	retlw	0
	retlw	0
	retlw	041h
	retlw	07Fh
	retlw	07Fh
	retlw	049h
	retlw	049h
	retlw	07Fh
	retlw	036h
	retlw	0
	retlw	01Ch
	retlw	03Eh
	retlw	063h
	retlw	041h
	retlw	041h
	retlw	063h
	retlw	022h
	retlw	0
	retlw	041h
	retlw	07Fh
	retlw	07Fh
	retlw	041h
	retlw	063h
	retlw	03Eh
	retlw	01Ch
	retlw	0
	retlw	041h
	retlw	07Fh
	retlw	07Fh
	retlw	049h
	retlw	05Dh
	retlw	041h
	retlw	063h
	retlw	0
	retlw	041h
	retlw	07Fh
	retlw	07Fh
	retlw	049h
	retlw	01Dh
	retlw	01h
	retlw	03h
	retlw	0
	retlw	01Ch
	retlw	03Eh
	retlw	063h
	retlw	041h
	retlw	051h
	retlw	073h
	retlw	072h
	retlw	0
	retlw	07Fh
	retlw	07Fh
	retlw	08h
	retlw	08h
	retlw	07Fh
	retlw	07Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	041h
	retlw	07Fh
	retlw	07Fh
	retlw	041h
	retlw	0
	retlw	0
	retlw	0
	retlw	030h
	retlw	070h
	retlw	040h
	retlw	041h
	retlw	07Fh
	retlw	03Fh
	retlw	01h
	retlw	0
	retlw	041h
	retlw	07Fh
	retlw	07Fh
	retlw	08h
	retlw	01Ch
	retlw	077h
	retlw	063h
	retlw	0
	retlw	041h
	retlw	07Fh
	retlw	07Fh
	retlw	041h
	retlw	040h
	retlw	060h
	retlw	070h
	retlw	0
	retlw	07Fh
	retlw	07Fh
	retlw	0Eh
	retlw	01Ch
	retlw	0Eh
	retlw	07Fh
	retlw	07Fh
	retlw	0
	retlw	07Fh
	retlw	07Fh
	retlw	06h
	retlw	0Ch
	retlw	018h
	retlw	07Fh
	retlw	07Fh
	retlw	0
	retlw	01Ch
	retlw	03Eh
	retlw	063h
	retlw	041h
	retlw	063h
	retlw	03Eh
	retlw	01Ch
	retlw	0
	retlw	041h
	retlw	07Fh
	retlw	07Fh
	retlw	049h
	retlw	09h
	retlw	0Fh
	retlw	06h
	retlw	0
	retlw	01Eh
	retlw	03Fh
	retlw	021h
	retlw	071h
	retlw	07Fh
	retlw	05Eh
	retlw	0
	retlw	0
	retlw	041h
	retlw	07Fh
	retlw	07Fh
	retlw	09h
	retlw	019h
	retlw	07Fh
	retlw	066h
	retlw	0
	retlw	026h
	retlw	06Fh
	retlw	04Dh
	retlw	059h
	retlw	073h
	retlw	032h
	retlw	0
	retlw	0
	retlw	03h
	retlw	041h
	retlw	07Fh
	retlw	07Fh
	retlw	041h
	retlw	03h
	retlw	0
	retlw	0
	retlw	07Fh
	retlw	07Fh
	retlw	040h
	retlw	040h
	retlw	07Fh
	retlw	07Fh
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	03Fh
	retlw	060h
	retlw	060h
	retlw	03Fh
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	07Fh
	retlw	07Fh
	retlw	030h
	retlw	018h
	retlw	030h
	retlw	07Fh
	retlw	07Fh
	retlw	0
	retlw	043h
	retlw	067h
	retlw	03Ch
	retlw	018h
	retlw	03Ch
	retlw	067h
	retlw	043h
	retlw	0
	retlw	07h
	retlw	04Fh
	retlw	078h
	retlw	078h
	retlw	04Fh
	retlw	07h
	retlw	0
	retlw	0
	retlw	047h
	retlw	063h
	retlw	071h
	retlw	059h
	retlw	04Dh
	retlw	067h
	retlw	073h
	retlw	0
	retlw	0
	retlw	07Fh
	retlw	07Fh
	retlw	041h
	retlw	041h
	retlw	0
	retlw	0
	retlw	0
	retlw	01h
	retlw	03h
	retlw	06h
	retlw	0Ch
	retlw	018h
	retlw	030h
	retlw	060h
	retlw	0
	retlw	0
	retlw	041h
	retlw	041h
	retlw	07Fh
	retlw	07Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	08h
	retlw	0Ch
	retlw	06h
	retlw	03h
	retlw	06h
	retlw	0Ch
	retlw	08h
	retlw	0
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	080h
	retlw	0
	retlw	0
	retlw	03h
	retlw	07h
	retlw	04h
	retlw	0
	retlw	0
	retlw	0
	retlw	020h
	retlw	074h
	retlw	054h
	retlw	054h
	retlw	03Ch
	retlw	078h
	retlw	040h
	retlw	0
	retlw	041h
	retlw	07Fh
	retlw	03Fh
	retlw	048h
	retlw	048h
	retlw	078h
	retlw	030h
	retlw	0
	retlw	038h
	retlw	07Ch
	retlw	044h
	retlw	044h
	retlw	06Ch
	retlw	028h
	retlw	0
	retlw	0
	retlw	030h
	retlw	078h
	retlw	048h
	retlw	049h
	retlw	03Fh
	retlw	07Fh
	retlw	040h
	retlw	0
	retlw	038h
	retlw	07Ch
	retlw	054h
	retlw	054h
	retlw	05Ch
	retlw	018h
	retlw	0
	retlw	0
	retlw	048h
	retlw	07Eh
	retlw	07Fh
	retlw	049h
	retlw	03h
	retlw	02h
	retlw	0
	retlw	0
	retlw	098h
	retlw	0BCh
	retlw	0A4h
	retlw	0A4h
	retlw	0F8h
	retlw	07Ch
	retlw	04h
	retlw	0
	retlw	041h
	retlw	07Fh
	retlw	07Fh
	retlw	08h
	retlw	04h
	retlw	07Ch
	retlw	078h
	retlw	0
	retlw	0
	retlw	044h
	retlw	07Dh
	retlw	07Dh
	retlw	040h
	retlw	0
	retlw	0
	retlw	0
	retlw	060h
	retlw	0E0h
	retlw	080h
	retlw	080h
	retlw	0FDh
	retlw	07Dh
	retlw	0
	retlw	0
	retlw	041h
	retlw	07Fh
	retlw	07Fh
	retlw	010h
	retlw	038h
	retlw	06Ch
	retlw	044h
	retlw	0
	retlw	0
	retlw	041h
	retlw	07Fh
	retlw	07Fh
	retlw	040h
	retlw	0
	retlw	0
	retlw	0
	retlw	07Ch
	retlw	07Ch
	retlw	018h
	retlw	038h
	retlw	01Ch
	retlw	07Ch
	retlw	078h
	retlw	0
	retlw	07Ch
	retlw	07Ch
	retlw	04h
	retlw	04h
	retlw	07Ch
	retlw	078h
	retlw	0
	retlw	0
	retlw	038h
	retlw	07Ch
	retlw	044h
	retlw	044h
	retlw	07Ch
	retlw	038h
	retlw	0
	retlw	0
	retlw	084h
	retlw	0FCh
	retlw	0F8h
	retlw	0A4h
	retlw	024h
	retlw	03Ch
	retlw	018h
	retlw	0
	retlw	018h
	retlw	03Ch
	retlw	024h
	retlw	0A4h
	retlw	0F8h
	retlw	0FCh
	retlw	084h
	retlw	0
	retlw	044h
	retlw	07Ch
	retlw	078h
	retlw	04Ch
	retlw	04h
	retlw	01Ch
	retlw	018h
	retlw	0
	retlw	048h
	retlw	05Ch
	retlw	054h
	retlw	054h
	retlw	074h
	retlw	024h
	retlw	0
	retlw	0
	retlw	0
	retlw	04h
	retlw	03Eh
	retlw	07Fh
	retlw	044h
	retlw	024h
	retlw	0
	retlw	0
	retlw	03Ch
	retlw	07Ch
	retlw	040h
	retlw	040h
	retlw	03Ch
	retlw	07Ch
	retlw	040h
	retlw	0
	retlw	01Ch
	retlw	03Ch
	retlw	060h
	retlw	060h
	retlw	03Ch
	retlw	01Ch
	retlw	0
	retlw	0
	retlw	03Ch
	retlw	07Ch
	retlw	070h
	retlw	038h
	retlw	070h
	retlw	07Ch
	retlw	03Ch
	retlw	0
	retlw	044h
	retlw	06Ch
	retlw	038h
	retlw	010h
	retlw	038h
	retlw	06Ch
	retlw	044h
	retlw	0
	retlw	09Ch
	retlw	0BCh
	retlw	0A0h
	retlw	0A0h
	retlw	0FCh
	retlw	07Ch
	retlw	0
	retlw	0
	retlw	04Ch
	retlw	064h
	retlw	074h
	retlw	05Ch
	retlw	04Ch
	retlw	064h
	retlw	0
	retlw	0
	retlw	08h
	retlw	08h
	retlw	03Eh
	retlw	077h
	retlw	041h
	retlw	041h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	077h
	retlw	077h
	retlw	0
	retlw	0
	retlw	0
	retlw	041h
	retlw	041h
	retlw	077h
	retlw	03Eh
	retlw	08h
	retlw	08h
	retlw	0
	retlw	0
	retlw	02h
	retlw	03h
	retlw	01h
	retlw	03h
	retlw	02h
	retlw	03h
	retlw	01h
	retlw	0
	retlw	070h
	retlw	078h
	retlw	04Ch
	retlw	046h
	retlw	04Ch
	retlw	078h
	retlw	070h
	retlw	0
	retlw	0Eh
	retlw	09Fh
	retlw	091h
	retlw	0B1h
	retlw	0FBh
	retlw	04Ah
	retlw	0
	retlw	0
	retlw	03Ah
	retlw	07Ah
	retlw	040h
	retlw	040h
	retlw	07Ah
	retlw	07Ah
	retlw	040h
	retlw	0
	retlw	038h
	retlw	07Ch
	retlw	054h
	retlw	055h
	retlw	05Dh
	retlw	019h
	retlw	0
	retlw	0
	retlw	02h
	retlw	023h
	retlw	075h
	retlw	055h
	retlw	055h
	retlw	07Dh
	retlw	07Bh
	retlw	042h
	retlw	021h
	retlw	075h
	retlw	054h
	retlw	054h
	retlw	07Dh
	retlw	079h
	retlw	040h
	retlw	0
	retlw	021h
	retlw	075h
	retlw	055h
	retlw	054h
	retlw	07Ch
	retlw	078h
	retlw	040h
	retlw	0
	retlw	020h
	retlw	074h
	retlw	057h
	retlw	057h
	retlw	07Ch
	retlw	078h
	retlw	040h
	retlw	0
	retlw	018h
	retlw	03Ch
	retlw	0A4h
	retlw	0A4h
	retlw	0E4h
	retlw	040h
	retlw	0
	retlw	0
	retlw	02h
	retlw	03Bh
	retlw	07Dh
	retlw	055h
	retlw	055h
	retlw	05Dh
	retlw	01Bh
	retlw	02h
	retlw	039h
	retlw	07Dh
	retlw	054h
	retlw	054h
	retlw	05Dh
	retlw	019h
	retlw	0
	retlw	0
	retlw	039h
	retlw	07Dh
	retlw	055h
	retlw	054h
	retlw	05Ch
	retlw	018h
	retlw	0
	retlw	0
	retlw	01h
	retlw	045h
	retlw	07Ch
	retlw	07Ch
	retlw	041h
	retlw	01h
	retlw	0
	retlw	0
	retlw	02h
	retlw	03h
	retlw	045h
	retlw	07Dh
	retlw	07Dh
	retlw	043h
	retlw	02h
	retlw	0
	retlw	01h
	retlw	045h
	retlw	07Dh
	retlw	07Ch
	retlw	040h
	retlw	0
	retlw	0
	retlw	0
	retlw	079h
	retlw	07Dh
	retlw	016h
	retlw	012h
	retlw	016h
	retlw	07Dh
	retlw	079h
	retlw	0
	retlw	070h
	retlw	078h
	retlw	02Bh
	retlw	02Bh
	retlw	078h
	retlw	070h
	retlw	0
	retlw	0
	retlw	044h
	retlw	07Ch
	retlw	07Ch
	retlw	055h
	retlw	055h
	retlw	045h
	retlw	0
	retlw	0
	retlw	020h
	retlw	074h
	retlw	054h
	retlw	054h
	retlw	07Ch
	retlw	07Ch
	retlw	054h
	retlw	054h
	retlw	07Ch
	retlw	07Eh
	retlw	0Bh
	retlw	09h
	retlw	07Fh
	retlw	07Fh
	retlw	049h
	retlw	0
	retlw	032h
	retlw	07Bh
	retlw	049h
	retlw	049h
	retlw	07Bh
	retlw	032h
	retlw	0
	retlw	0
	retlw	032h
	retlw	07Ah
	retlw	048h
	retlw	048h
	retlw	07Ah
	retlw	032h
	retlw	0
	retlw	0
	retlw	032h
	retlw	07Ah
	retlw	04Ah
	retlw	048h
	retlw	078h
	retlw	030h
	retlw	0
	retlw	0
	retlw	03Ah
	retlw	07Bh
	retlw	041h
	retlw	041h
	retlw	07Bh
	retlw	07Ah
	retlw	040h
	retlw	0
	retlw	03Ah
	retlw	07Ah
	retlw	042h
	retlw	040h
	retlw	078h
	retlw	078h
	retlw	040h
	retlw	0
	retlw	09Ah
	retlw	0BAh
	retlw	0A0h
	retlw	0A0h
	retlw	0FAh
	retlw	07Ah
	retlw	0
	retlw	0
	retlw	01h
	retlw	019h
	retlw	03Ch
	retlw	066h
	retlw	066h
	retlw	03Ch
	retlw	019h
	retlw	01h
	retlw	03Dh
	retlw	07Dh
	retlw	040h
	retlw	040h
	retlw	07Dh
	retlw	03Dh
	retlw	0
	retlw	0
	retlw	018h
	retlw	03Ch
	retlw	024h
	retlw	0E7h
	retlw	0E7h
	retlw	024h
	retlw	024h
	retlw	0
	retlw	068h
	retlw	07Eh
	retlw	07Fh
	retlw	049h
	retlw	043h
	retlw	066h
	retlw	020h
	retlw	0
	retlw	02Bh
	retlw	02Fh
	retlw	0FCh
	retlw	0FCh
	retlw	02Fh
	retlw	02Bh
	retlw	0
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	09h
	retlw	09h
	retlw	02Fh
	retlw	0F6h
	retlw	0F8h
	retlw	0A0h
	retlw	040h
	retlw	0C0h
	retlw	088h
	retlw	0FEh
	retlw	07Fh
	retlw	09h
	retlw	03h
	retlw	02h
	retlw	020h
	retlw	074h
	retlw	054h
	retlw	055h
	retlw	07Dh
	retlw	079h
	retlw	040h
	retlw	0
	retlw	0
	retlw	044h
	retlw	07Dh
	retlw	07Dh
	retlw	041h
	retlw	0
	retlw	0
	retlw	0
	retlw	030h
	retlw	078h
	retlw	048h
	retlw	04Ah
	retlw	07Ah
	retlw	032h
	retlw	0
	retlw	0
	retlw	038h
	retlw	078h
	retlw	040h
	retlw	042h
	retlw	07Ah
	retlw	07Ah
	retlw	040h
	retlw	0
	retlw	07Ah
	retlw	07Ah
	retlw	0Ah
	retlw	0Ah
	retlw	07Ah
	retlw	070h
	retlw	0
	retlw	0
	retlw	07Dh
	retlw	07Dh
	retlw	019h
	retlw	031h
	retlw	07Dh
	retlw	07Dh
	retlw	0
	retlw	0
	retlw	0
	retlw	026h
	retlw	02Fh
	retlw	029h
	retlw	02Fh
	retlw	02Fh
	retlw	028h
	retlw	0
	retlw	0
	retlw	026h
	retlw	02Fh
	retlw	029h
	retlw	02Fh
	retlw	026h
	retlw	0
	retlw	0
	retlw	030h
	retlw	078h
	retlw	04Dh
	retlw	045h
	retlw	060h
	retlw	020h
	retlw	0
	retlw	0
	retlw	038h
	retlw	038h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	0
	retlw	0
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	038h
	retlw	038h
	retlw	0
	retlw	0
	retlw	04Fh
	retlw	06Fh
	retlw	030h
	retlw	018h
	retlw	0CCh
	retlw	0EEh
	retlw	0BBh
	retlw	091h
	retlw	04Fh
	retlw	06Fh
	retlw	030h
	retlw	018h
	retlw	06Ch
	retlw	076h
	retlw	0FBh
	retlw	0F9h
	retlw	0
	retlw	0
	retlw	0
	retlw	07Bh
	retlw	07Bh
	retlw	0
	retlw	0
	retlw	0
	retlw	08h
	retlw	01Ch
	retlw	036h
	retlw	022h
	retlw	08h
	retlw	01Ch
	retlw	036h
	retlw	022h
	retlw	022h
	retlw	036h
	retlw	01Ch
	retlw	08h
	retlw	022h
	retlw	036h
	retlw	01Ch
	retlw	08h
	retlw	0AAh
	retlw	0
	retlw	055h
	retlw	0
	retlw	0AAh
	retlw	0
	retlw	055h
	retlw	0
	retlw	0AAh
	retlw	055h
	retlw	0AAh
	retlw	055h
	retlw	0AAh
	retlw	055h
	retlw	0AAh
	retlw	055h
	retlw	0DDh
	retlw	0FFh
	retlw	0AAh
	retlw	077h
	retlw	0DDh
	retlw	0AAh
	retlw	0FFh
	retlw	077h
	retlw	0
	retlw	0
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	0
	retlw	0
	retlw	0
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	0FFh
	retlw	0FFh
	retlw	0
	retlw	0
	retlw	0
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	0FFh
	retlw	0FFh
	retlw	0
	retlw	0
	retlw	0
	retlw	010h
	retlw	010h
	retlw	0FFh
	retlw	0FFh
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	0
	retlw	010h
	retlw	010h
	retlw	0F0h
	retlw	0F0h
	retlw	010h
	retlw	0F0h
	retlw	0F0h
	retlw	0
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	0FCh
	retlw	0FCh
	retlw	0
	retlw	0
	retlw	0
	retlw	014h
	retlw	014h
	retlw	0F7h
	retlw	0F7h
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	0
	retlw	0
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	0
	retlw	014h
	retlw	014h
	retlw	0F4h
	retlw	0F4h
	retlw	04h
	retlw	0FCh
	retlw	0FCh
	retlw	0
	retlw	014h
	retlw	014h
	retlw	017h
	retlw	017h
	retlw	010h
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	010h
	retlw	010h
	retlw	01Fh
	retlw	01Fh
	retlw	010h
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	0F0h
	retlw	0F0h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	01Fh
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	01Fh
	retlw	01Fh
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	0F0h
	retlw	0F0h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	0
	retlw	0
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	0FFh
	retlw	0FFh
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	0
	retlw	0
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	0
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	010h
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	01Fh
	retlw	010h
	retlw	017h
	retlw	017h
	retlw	014h
	retlw	0
	retlw	0
	retlw	0FCh
	retlw	0FCh
	retlw	04h
	retlw	0F4h
	retlw	0F4h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	017h
	retlw	017h
	retlw	010h
	retlw	017h
	retlw	017h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	0F4h
	retlw	0F4h
	retlw	04h
	retlw	0F4h
	retlw	0F4h
	retlw	014h
	retlw	0
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	0
	retlw	0F7h
	retlw	0F7h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	0F7h
	retlw	0F7h
	retlw	0
	retlw	0F7h
	retlw	0F7h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	017h
	retlw	017h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	010h
	retlw	010h
	retlw	01Fh
	retlw	01Fh
	retlw	010h
	retlw	01Fh
	retlw	01Fh
	retlw	010h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	0F4h
	retlw	0F4h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	010h
	retlw	010h
	retlw	0F0h
	retlw	0F0h
	retlw	010h
	retlw	0F0h
	retlw	0F0h
	retlw	010h
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	01Fh
	retlw	010h
	retlw	01Fh
	retlw	01Fh
	retlw	010h
	retlw	0
	retlw	0
	retlw	0
	retlw	01Fh
	retlw	01Fh
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	0
	retlw	0
	retlw	0
	retlw	0FCh
	retlw	0FCh
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	0
	retlw	0
	retlw	0F0h
	retlw	0F0h
	retlw	010h
	retlw	0F0h
	retlw	0F0h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	0FFh
	retlw	0FFh
	retlw	010h
	retlw	0FFh
	retlw	0FFh
	retlw	010h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	0FFh
	retlw	0FFh
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	01Fh
	retlw	01Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0F0h
	retlw	0F0h
	retlw	010h
	retlw	010h
	retlw	010h
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0F0h
	retlw	0F0h
	retlw	0F0h
	retlw	0F0h
	retlw	0F0h
	retlw	0F0h
	retlw	0F0h
	retlw	0F0h
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0FFh
	retlw	0Fh
	retlw	0Fh
	retlw	0Fh
	retlw	0Fh
	retlw	0Fh
	retlw	0Fh
	retlw	0Fh
	retlw	0Fh
	retlw	038h
	retlw	07Ch
	retlw	044h
	retlw	06Ch
	retlw	038h
	retlw	06Ch
	retlw	044h
	retlw	0
	retlw	0FCh
	retlw	0FEh
	retlw	02Ah
	retlw	02Ah
	retlw	03Eh
	retlw	014h
	retlw	0
	retlw	0
	retlw	07Eh
	retlw	07Eh
	retlw	02h
	retlw	02h
	retlw	06h
	retlw	06h
	retlw	0
	retlw	0
	retlw	02h
	retlw	07Eh
	retlw	07Eh
	retlw	02h
	retlw	07Eh
	retlw	07Eh
	retlw	02h
	retlw	0
	retlw	063h
	retlw	077h
	retlw	05Dh
	retlw	049h
	retlw	063h
	retlw	063h
	retlw	0
	retlw	0
	retlw	038h
	retlw	07Ch
	retlw	044h
	retlw	07Ch
	retlw	03Ch
	retlw	04h
	retlw	04h
	retlw	0
	retlw	080h
	retlw	0FEh
	retlw	07Eh
	retlw	020h
	retlw	020h
	retlw	03Eh
	retlw	01Eh
	retlw	0
	retlw	04h
	retlw	06h
	retlw	02h
	retlw	07Eh
	retlw	07Ch
	retlw	06h
	retlw	02h
	retlw	0
	retlw	099h
	retlw	0BDh
	retlw	0E7h
	retlw	0E7h
	retlw	0BDh
	retlw	099h
	retlw	0
	retlw	0
	retlw	01Ch
	retlw	03Eh
	retlw	06Bh
	retlw	049h
	retlw	06Bh
	retlw	03Eh
	retlw	01Ch
	retlw	0
	retlw	04Ch
	retlw	07Eh
	retlw	073h
	retlw	01h
	retlw	073h
	retlw	07Eh
	retlw	04Ch
	retlw	0
	retlw	030h
	retlw	078h
	retlw	04Ah
	retlw	04Fh
	retlw	07Dh
	retlw	039h
	retlw	0
	retlw	0
	retlw	018h
	retlw	03Ch
	retlw	024h
	retlw	03Ch
	retlw	03Ch
	retlw	024h
	retlw	03Ch
	retlw	018h
	retlw	098h
	retlw	0FCh
	retlw	064h
	retlw	03Ch
	retlw	03Eh
	retlw	027h
	retlw	03Dh
	retlw	018h
	retlw	01Ch
	retlw	03Eh
	retlw	06Bh
	retlw	049h
	retlw	049h
	retlw	0
	retlw	0
	retlw	0
	retlw	07Eh
	retlw	07Fh
	retlw	01h
	retlw	01h
	retlw	07Fh
	retlw	07Eh
	retlw	0
	retlw	0
	retlw	02Ah
	retlw	02Ah
	retlw	02Ah
	retlw	02Ah
	retlw	02Ah
	retlw	02Ah
	retlw	0
	retlw	0
	retlw	044h
	retlw	044h
	retlw	05Fh
	retlw	05Fh
	retlw	044h
	retlw	044h
	retlw	0
	retlw	0
	retlw	040h
	retlw	051h
	retlw	05Bh
	retlw	04Eh
	retlw	044h
	retlw	040h
	retlw	0
	retlw	0
	retlw	040h
	retlw	044h
	retlw	04Eh
	retlw	05Bh
	retlw	051h
	retlw	040h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0FEh
	retlw	0FFh
	retlw	01h
	retlw	07h
	retlw	06h
	retlw	060h
	retlw	0E0h
	retlw	080h
	retlw	0FFh
	retlw	07Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	08h
	retlw	08h
	retlw	06Bh
	retlw	06Bh
	retlw	08h
	retlw	08h
	retlw	0
	retlw	0
	retlw	024h
	retlw	036h
	retlw	012h
	retlw	036h
	retlw	024h
	retlw	036h
	retlw	012h
	retlw	0
	retlw	0
	retlw	06h
	retlw	0Fh
	retlw	09h
	retlw	0Fh
	retlw	06h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	018h
	retlw	018h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	010h
	retlw	010h
	retlw	0
	retlw	0
	retlw	0
	retlw	010h
	retlw	030h
	retlw	070h
	retlw	0C0h
	retlw	0FFh
	retlw	0FFh
	retlw	01h
	retlw	01h
	retlw	0
	retlw	01Fh
	retlw	01Fh
	retlw	01h
	retlw	01Fh
	retlw	01Eh
	retlw	0
	retlw	0
	retlw	0
	retlw	019h
	retlw	01Dh
	retlw	017h
	retlw	012h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	03Ch
	retlw	03Ch
	retlw	03Ch
	retlw	03Ch
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global	_font5x7
psect	stringtext
	file	"C:\Users\X4ROY\Desktop\CR\graphic LCD\font2.h"
	line	6
_font5x7:
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	05Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	07h
	retlw	0
	retlw	07h
	retlw	0
	retlw	014h
	retlw	07Fh
	retlw	014h
	retlw	07Fh
	retlw	014h
	retlw	024h
	retlw	02Ah
	retlw	07Fh
	retlw	02Ah
	retlw	012h
	retlw	023h
	retlw	013h
	retlw	08h
	retlw	064h
	retlw	062h
	retlw	036h
	retlw	049h
	retlw	055h
	retlw	022h
	retlw	050h
	retlw	0
	retlw	05h
	retlw	03h
	retlw	0
	retlw	0
	retlw	0
	retlw	01Ch
	retlw	022h
	retlw	041h
	retlw	0
	retlw	0
	retlw	041h
	retlw	022h
	retlw	01Ch
	retlw	0
	retlw	08h
	retlw	02Ah
	retlw	01Ch
	retlw	02Ah
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	03Eh
	retlw	08h
	retlw	08h
	retlw	0
	retlw	050h
	retlw	030h
	retlw	0
	retlw	0
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	0
	retlw	030h
	retlw	030h
	retlw	0
	retlw	0
	retlw	020h
	retlw	010h
	retlw	08h
	retlw	04h
	retlw	02h
	retlw	03Eh
	retlw	051h
	retlw	049h
	retlw	045h
	retlw	03Eh
	retlw	0
	retlw	042h
	retlw	07Fh
	retlw	040h
	retlw	0
	retlw	042h
	retlw	061h
	retlw	051h
	retlw	049h
	retlw	046h
	retlw	021h
	retlw	041h
	retlw	045h
	retlw	04Bh
	retlw	031h
	retlw	018h
	retlw	014h
	retlw	012h
	retlw	07Fh
	retlw	010h
	retlw	027h
	retlw	045h
	retlw	045h
	retlw	045h
	retlw	039h
	retlw	03Ch
	retlw	04Ah
	retlw	049h
	retlw	049h
	retlw	030h
	retlw	01h
	retlw	071h
	retlw	09h
	retlw	05h
	retlw	03h
	retlw	036h
	retlw	049h
	retlw	049h
	retlw	049h
	retlw	036h
	retlw	06h
	retlw	049h
	retlw	049h
	retlw	029h
	retlw	01Eh
	retlw	0
	retlw	036h
	retlw	036h
	retlw	0
	retlw	0
	retlw	0
	retlw	056h
	retlw	036h
	retlw	0
	retlw	0
	retlw	0
	retlw	08h
	retlw	014h
	retlw	022h
	retlw	041h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	041h
	retlw	022h
	retlw	014h
	retlw	08h
	retlw	0
	retlw	02h
	retlw	01h
	retlw	051h
	retlw	09h
	retlw	06h
	retlw	032h
	retlw	049h
	retlw	079h
	retlw	041h
	retlw	03Eh
	retlw	07Eh
	retlw	011h
	retlw	011h
	retlw	011h
	retlw	07Eh
	retlw	07Fh
	retlw	049h
	retlw	049h
	retlw	049h
	retlw	036h
	retlw	03Eh
	retlw	041h
	retlw	041h
	retlw	041h
	retlw	022h
	retlw	07Fh
	retlw	041h
	retlw	041h
	retlw	022h
	retlw	01Ch
	retlw	07Fh
	retlw	049h
	retlw	049h
	retlw	049h
	retlw	041h
	retlw	07Fh
	retlw	09h
	retlw	09h
	retlw	01h
	retlw	01h
	retlw	03Eh
	retlw	041h
	retlw	041h
	retlw	051h
	retlw	032h
	retlw	07Fh
	retlw	08h
	retlw	08h
	retlw	08h
	retlw	07Fh
	retlw	0
	retlw	041h
	retlw	07Fh
	retlw	041h
	retlw	0
	retlw	020h
	retlw	040h
	retlw	041h
	retlw	03Fh
	retlw	01h
	retlw	07Fh
	retlw	08h
	retlw	014h
	retlw	022h
	retlw	041h
	retlw	07Fh
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	07Fh
	retlw	02h
	retlw	04h
	retlw	02h
	retlw	07Fh
	retlw	07Fh
	retlw	04h
	retlw	08h
	retlw	010h
	retlw	07Fh
	retlw	03Eh
	retlw	041h
	retlw	041h
	retlw	041h
	retlw	03Eh
	retlw	07Fh
	retlw	09h
	retlw	09h
	retlw	09h
	retlw	06h
	retlw	03Eh
	retlw	041h
	retlw	051h
	retlw	021h
	retlw	05Eh
	retlw	07Fh
	retlw	09h
	retlw	019h
	retlw	029h
	retlw	046h
	retlw	046h
	retlw	049h
	retlw	049h
	retlw	049h
	retlw	031h
	retlw	01h
	retlw	01h
	retlw	07Fh
	retlw	01h
	retlw	01h
	retlw	03Fh
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	03Fh
	retlw	01Fh
	retlw	020h
	retlw	040h
	retlw	020h
	retlw	01Fh
	retlw	07Fh
	retlw	020h
	retlw	018h
	retlw	020h
	retlw	07Fh
	retlw	063h
	retlw	014h
	retlw	08h
	retlw	014h
	retlw	063h
	retlw	03h
	retlw	04h
	retlw	078h
	retlw	04h
	retlw	03h
	retlw	061h
	retlw	051h
	retlw	049h
	retlw	045h
	retlw	043h
	retlw	0
	retlw	0
	retlw	07Fh
	retlw	041h
	retlw	041h
	retlw	02h
	retlw	04h
	retlw	08h
	retlw	010h
	retlw	020h
	retlw	041h
	retlw	041h
	retlw	07Fh
	retlw	0
	retlw	0
	retlw	04h
	retlw	02h
	retlw	01h
	retlw	02h
	retlw	04h
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	040h
	retlw	0
	retlw	01h
	retlw	02h
	retlw	04h
	retlw	0
	retlw	020h
	retlw	054h
	retlw	054h
	retlw	054h
	retlw	078h
	retlw	07Fh
	retlw	048h
	retlw	044h
	retlw	044h
	retlw	038h
	retlw	038h
	retlw	044h
	retlw	044h
	retlw	044h
	retlw	020h
	retlw	038h
	retlw	044h
	retlw	044h
	retlw	048h
	retlw	07Fh
	retlw	038h
	retlw	054h
	retlw	054h
	retlw	054h
	retlw	018h
	retlw	08h
	retlw	07Eh
	retlw	09h
	retlw	01h
	retlw	02h
	retlw	08h
	retlw	014h
	retlw	054h
	retlw	054h
	retlw	03Ch
	retlw	07Fh
	retlw	08h
	retlw	04h
	retlw	04h
	retlw	078h
	retlw	0
	retlw	044h
	retlw	07Dh
	retlw	040h
	retlw	0
	retlw	020h
	retlw	040h
	retlw	044h
	retlw	03Dh
	retlw	0
	retlw	0
	retlw	07Fh
	retlw	010h
	retlw	028h
	retlw	044h
	retlw	0
	retlw	041h
	retlw	07Fh
	retlw	040h
	retlw	0
	retlw	07Ch
	retlw	04h
	retlw	018h
	retlw	04h
	retlw	078h
	retlw	07Ch
	retlw	08h
	retlw	04h
	retlw	04h
	retlw	078h
	retlw	038h
	retlw	044h
	retlw	044h
	retlw	044h
	retlw	038h
	retlw	07Ch
	retlw	014h
	retlw	014h
	retlw	014h
	retlw	08h
	retlw	08h
	retlw	014h
	retlw	014h
	retlw	018h
	retlw	07Ch
	retlw	07Ch
	retlw	08h
	retlw	04h
	retlw	04h
	retlw	08h
	retlw	048h
	retlw	054h
	retlw	054h
	retlw	054h
	retlw	020h
	retlw	04h
	retlw	03Fh
	retlw	044h
	retlw	040h
	retlw	020h
	retlw	03Ch
	retlw	040h
	retlw	040h
	retlw	020h
	retlw	07Ch
	retlw	01Ch
	retlw	020h
	retlw	040h
	retlw	020h
	retlw	01Ch
	retlw	03Ch
	retlw	040h
	retlw	030h
	retlw	040h
	retlw	03Ch
	retlw	044h
	retlw	028h
	retlw	010h
	retlw	028h
	retlw	044h
	retlw	0Ch
	retlw	050h
	retlw	050h
	retlw	050h
	retlw	03Ch
	retlw	044h
	retlw	064h
	retlw	054h
	retlw	04Ch
	retlw	044h
	retlw	0
	retlw	08h
	retlw	036h
	retlw	041h
	retlw	0
	retlw	0
	retlw	0
	retlw	07Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	041h
	retlw	036h
	retlw	08h
	retlw	0
	retlw	08h
	retlw	08h
	retlw	02Ah
	retlw	01Ch
	retlw	08h
	retlw	08h
	retlw	01Ch
	retlw	02Ah
	retlw	08h
	retlw	08h
	global	_a2
psect	stringtext
	file	"C:\Users\X4ROY\Desktop\CR\graphic LCD\MAIN.c"
	line	31
_a2:
	retlw	020h
	retlw	020h
	retlw	020h
	retlw	047h
	retlw	052h
	retlw	041h
	retlw	050h
	retlw	048h
	retlw	049h
	retlw	043h
	retlw	041h
	retlw	04Ch
	retlw	020h
	retlw	04Ch
	retlw	043h
	retlw	044h
	retlw	020h
	retlw	020h
	retlw	0
	retlw	0
	global	_a1
psect	stringtext
	file	"C:\Users\X4ROY\Desktop\CR\graphic LCD\MAIN.c"
	line	30
_a1:
	retlw	020h
	retlw	048h
	retlw	050h
	retlw	053h
	retlw	020h
	retlw	020h
	retlw	045h
	retlw	04Dh
	retlw	042h
	retlw	045h
	retlw	044h
	retlw	044h
	retlw	045h
	retlw	044h
	retlw	020h
	retlw	0
	global	_Character8x8
	global	_font5x7
	global	_a2
	global	_a1
	global	_CurrentColumn
	global	_value
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	file	"ultra.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_CurrentColumn:
       ds      1

_value:
       ds      1

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_MainSystemInitailize
?_MainSystemInitailize:	; 0 bytes @ 0x0
	global	?_Delay
?_Delay:	; 0 bytes @ 0x0
	global	?_MainDisplayProjectTitle
?_MainDisplayProjectTitle:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_OmaDelay
?_OmaDelay:	; 0 bytes @ 0x0
	global	?_output
?_output:	; 0 bytes @ 0x0
	global	?_SetColumn
?_SetColumn:	; 0 bytes @ 0x0
	global	?_SetPage
?_SetPage:	; 0 bytes @ 0x0
	global	?_SetStartLine
?_SetStartLine:	; 0 bytes @ 0x0
	global	?_clear
?_clear:	; 0 bytes @ 0x0
	global	?_on
?_on:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	delay@j
delay@j:	; 2 bytes @ 0x0
	global	output@port
output@port:	; 2 bytes @ 0x0
	global	Delay@time
Delay@time:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	ds	2
	global	??_Delay
??_Delay:	; 0 bytes @ 0x2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	output@value
output@value:	; 1 bytes @ 0x2
	global	delay@i
delay@i:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	1
	global	??_output
??_output:	; 0 bytes @ 0x3
	global	Delay@pause
Delay@pause:	; 1 bytes @ 0x3
	ds	1
	global	??_OmaDelay
??_OmaDelay:	; 0 bytes @ 0x4
	global	?_SendLCDCommand
?_SendLCDCommand:	; 0 bytes @ 0x4
	global	?_SendLCDData
?_SendLCDData:	; 0 bytes @ 0x4
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	SendLCDCommand@CS
SendLCDCommand@CS:	; 1 bytes @ 0x4
	global	SendLCDData@values
SendLCDData@values:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	??_SendLCDCommand
??_SendLCDCommand:	; 0 bytes @ 0x5
	ds	1
	global	SendLCDCommand@value
SendLCDCommand@value:	; 1 bytes @ 0x6
	global	SendLCDData@amount
SendLCDData@amount:	; 2 bytes @ 0x6
	ds	1
	global	??_SetColumn
??_SetColumn:	; 0 bytes @ 0x7
	global	??_SetPage
??_SetPage:	; 0 bytes @ 0x7
	global	??_SetStartLine
??_SetStartLine:	; 0 bytes @ 0x7
	global	??_on
??_on:	; 0 bytes @ 0x7
	ds	1
	global	??_SendLCDData
??_SendLCDData:	; 0 bytes @ 0x8
	global	SetColumn@y
SetColumn@y:	; 1 bytes @ 0x8
	global	SetPage@x
SetPage@x:	; 1 bytes @ 0x8
	global	SetStartLine@line
SetStartLine@line:	; 1 bytes @ 0x8
	ds	1
	global	_SendLCDData$331
_SendLCDData$331:	; 2 bytes @ 0x9
	ds	2
	global	SendLCDData@counter
SendLCDData@counter:	; 2 bytes @ 0xB
	ds	2
	global	SendLCDData@c_s
SendLCDData@c_s:	; 1 bytes @ 0xD
	ds	1
	global	??_MainSystemInitailize
??_MainSystemInitailize:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_LCDprintf
?_LCDprintf:	; 0 bytes @ 0x0
	global	?_LCDprintf2
?_LCDprintf2:	; 0 bytes @ 0x0
	global	??_clear
??_clear:	; 0 bytes @ 0x0
	global	LCDprintf@page
LCDprintf@page:	; 1 bytes @ 0x0
	global	LCDprintf2@page
LCDprintf2@page:	; 1 bytes @ 0x0
	ds	1
	global	clear@a
clear@a:	; 1 bytes @ 0x1
	global	LCDprintf@Str
LCDprintf@Str:	; 2 bytes @ 0x1
	global	LCDprintf2@Str
LCDprintf2@Str:	; 2 bytes @ 0x1
	ds	1
	global	clear@x
clear@x:	; 1 bytes @ 0x2
	ds	1
	global	??_LCDprintf
??_LCDprintf:	; 0 bytes @ 0x3
	global	??_LCDprintf2
??_LCDprintf2:	; 0 bytes @ 0x3
	ds	4
	global	LCDprintf2@y
LCDprintf2@y:	; 1 bytes @ 0x7
	global	LCDprintf@yy
LCDprintf@yy:	; 2 bytes @ 0x7
	ds	1
	global	LCDprintf2@yy
LCDprintf2@yy:	; 2 bytes @ 0x8
	ds	1
	global	LCDprintf@y
LCDprintf@y:	; 1 bytes @ 0x9
	ds	1
	global	LCDprintf@n
LCDprintf@n:	; 1 bytes @ 0xA
	global	LCDprintf2@n
LCDprintf2@n:	; 1 bytes @ 0xA
	ds	1
	global	??_MainDisplayProjectTitle
??_MainDisplayProjectTitle:	; 0 bytes @ 0xB
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xC
	ds	1
;;Data sizes: Strings 0, constant 2564, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     13      15
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; LCDprintf2@Str	PTR unsigned char  size(2) Largest target is 20
;;		 -> a2(CODE[20]), 
;;
;; LCDprintf@Str	PTR unsigned char  size(2) Largest target is 16
;;		 -> a1(CODE[16]), 
;;
;; SendLCDData@values	PTR unsigned char  size(2) Largest target is 2048
;;		 -> value(BANK0[1]), font5x7(CODE[480]), Character8x8(CODE[2048]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _clear->_SendLCDData
;;   _LCDprintf2->_SendLCDData
;;   _LCDprintf->_SendLCDData
;;   _on->_SendLCDCommand
;;   _SetStartLine->_SendLCDCommand
;;   _SetPage->_SendLCDCommand
;;   _SetColumn->_SendLCDCommand
;;   _SendLCDData->_output
;;   _SendLCDCommand->_output
;;   _OmaDelay->_delay
;;
;; Critical Paths under _main in BANK0
;;
;;   _MainSystemInitailize->_MainDisplayProjectTitle
;;   _MainDisplayProjectTitle->_LCDprintf
;;   _MainDisplayProjectTitle->_LCDprintf2
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0    4359
;;                                             12 BANK0      1     1      0
;;               _MainSystemInitailize
;;                              _Delay
;; ---------------------------------------------------------------------------------
;; (1) _MainSystemInitailize                                 0     0      0    4329
;;            _MainDisplayProjectTitle
;;                              _Delay
;; ---------------------------------------------------------------------------------
;; (2) _MainDisplayProjectTitle                              1     1      0    4299
;;                                             11 BANK0      1     1      0
;;                                 _on
;;                       _SetStartLine
;;                              _clear
;;                          _LCDprintf
;;                         _LCDprintf2
;; ---------------------------------------------------------------------------------
;; (3) _clear                                                3     3      0    1155
;;                                              0 BANK0      3     3      0
;;                            _SetPage
;;                          _SetColumn
;;                        _SendLCDData
;; ---------------------------------------------------------------------------------
;; (3) _LCDprintf2                                          11     8      3    1335
;;                                              0 BANK0     11     8      3
;;                          _SetColumn
;;                            _SetPage
;;                             ___wmul
;;                        _SendLCDData
;; ---------------------------------------------------------------------------------
;; (3) _LCDprintf                                           11     8      3    1221
;;                                              0 BANK0     11     8      3
;;                          _SetColumn
;;                            _SetPage
;;                        _SendLCDData
;; ---------------------------------------------------------------------------------
;; (3) _on                                                   1     1      0     272
;;                                              7 COMMON     1     1      0
;;                     _SendLCDCommand
;; ---------------------------------------------------------------------------------
;; (3) _SetStartLine                                         2     2      0     316
;;                                              7 COMMON     2     2      0
;;                     _SendLCDCommand
;; ---------------------------------------------------------------------------------
;; (4) _SetPage                                              2     2      0     316
;;                                              7 COMMON     2     2      0
;;                     _SendLCDCommand
;; ---------------------------------------------------------------------------------
;; (4) _SetColumn                                            2     2      0     360
;;                                              7 COMMON     2     2      0
;;                     _SendLCDCommand
;; ---------------------------------------------------------------------------------
;; (4) _SendLCDData                                         10     6      4     365
;;                                              4 COMMON    10     6      4
;;                             _output
;;                           _OmaDelay
;; ---------------------------------------------------------------------------------
;; (5) _SendLCDCommand                                       3     2      1     272
;;                                              4 COMMON     3     2      1
;;                             _output
;;                           _OmaDelay
;; ---------------------------------------------------------------------------------
;; (5) _OmaDelay                                             0     0      0      46
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (4) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (1) _Delay                                                4     2      2      30
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (5) _output                                               4     1      3     160
;;                                              0 COMMON     4     1      3
;; ---------------------------------------------------------------------------------
;; (6) _delay                                                4     2      2      46
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 6
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _MainSystemInitailize
;;     _MainDisplayProjectTitle
;;       _on
;;         _SendLCDCommand
;;           _output
;;           _OmaDelay
;;             _delay
;;       _SetStartLine
;;         _SendLCDCommand
;;           _output
;;           _OmaDelay
;;             _delay
;;       _clear
;;         _SetPage
;;           _SendLCDCommand
;;             _output
;;             _OmaDelay
;;               _delay
;;         _SetColumn
;;           _SendLCDCommand
;;             _output
;;             _OmaDelay
;;               _delay
;;         _SendLCDData
;;           _output
;;           _OmaDelay
;;             _delay
;;       _LCDprintf
;;         _SetColumn
;;           _SendLCDCommand
;;             _output
;;             _OmaDelay
;;               _delay
;;         _SetPage
;;           _SendLCDCommand
;;             _output
;;             _OmaDelay
;;               _delay
;;         _SendLCDData
;;           _output
;;           _OmaDelay
;;             _delay
;;       _LCDprintf2
;;         _SetColumn
;;           _SendLCDCommand
;;             _output
;;             _OmaDelay
;;               _delay
;;         _SetPage
;;           _SendLCDCommand
;;             _output
;;             _OmaDelay
;;               _delay
;;         ___wmul
;;         _SendLCDData
;;           _output
;;           _OmaDelay
;;             _delay
;;     _Delay
;;   _Delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       7       2        0.0%
;;ABS                  0      0      1D       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      D       F       5       18.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      24      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 35 in file "C:\Users\X4ROY\Desktop\CR\graphic LCD\MAIN.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_MainSystemInitailize
;;		_Delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\X4ROY\Desktop\CR\graphic LCD\MAIN.c"
	line	35
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	37
	
l2200:	
;MAIN.c: 37: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	38
	
l2202:	
;MAIN.c: 38: TRISC |= 0x00;
	movf	(135)^080h,w	;volatile
	line	39
	
l2204:	
;MAIN.c: 39: TRISC &= 0x3F;
	movlw	(03Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(135)^080h,f	;volatile
	line	40
	
l2206:	
;MAIN.c: 40: TRISD |= 0x00;
	movf	(136)^080h,w	;volatile
	line	41
	
l2208:	
;MAIN.c: 41: TRISD &= 0xCF;
	movlw	(0CFh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	andwf	(136)^080h,f	;volatile
	goto	l2210
	line	44
;MAIN.c: 43: for(;;)
	
l652:	
	line	45
	
l2210:	
;MAIN.c: 44: {
;MAIN.c: 45: MainSystemInitailize();
	fcall	_MainSystemInitailize
	line	46
	
l2212:	
;MAIN.c: 46: Delay(20000);
	movlw	low(04E20h)
	movwf	(?_Delay)
	movlw	high(04E20h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	47
;MAIN.c: 47: }
	goto	l2210
	
l653:	
	line	48
	
l654:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_MainSystemInitailize
psect	text315,local,class=CODE,delta=2
global __ptext315
__ptext315:

;; *************** function _MainSystemInitailize *****************
;; Defined at:
;;		line 51 in file "C:\Users\X4ROY\Desktop\CR\graphic LCD\MAIN.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_MainDisplayProjectTitle
;;		_Delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text315
	file	"C:\Users\X4ROY\Desktop\CR\graphic LCD\MAIN.c"
	line	51
	global	__size_of_MainSystemInitailize
	__size_of_MainSystemInitailize	equ	__end_of_MainSystemInitailize-_MainSystemInitailize
	
_MainSystemInitailize:	
	opt	stack 1
; Regs used in _MainSystemInitailize: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	52
	
l2196:	
;MAIN.c: 52: MainDisplayProjectTitle();
	fcall	_MainDisplayProjectTitle
	line	53
	
l2198:	
;MAIN.c: 53: Delay(2000);
	movlw	low(07D0h)
	movwf	(?_Delay)
	movlw	high(07D0h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	54
	
l657:	
	return
	opt stack 0
GLOBAL	__end_of_MainSystemInitailize
	__end_of_MainSystemInitailize:
;; =============== function _MainSystemInitailize ends ============

	signat	_MainSystemInitailize,88
	global	_MainDisplayProjectTitle
psect	text316,local,class=CODE,delta=2
global __ptext316
__ptext316:

;; *************** function _MainDisplayProjectTitle *****************
;; Defined at:
;;		line 57 in file "C:\Users\X4ROY\Desktop\CR\graphic LCD\MAIN.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_on
;;		_SetStartLine
;;		_clear
;;		_LCDprintf
;;		_LCDprintf2
;; This function is called by:
;;		_MainSystemInitailize
;; This function uses a non-reentrant model
;;
psect	text316
	file	"C:\Users\X4ROY\Desktop\CR\graphic LCD\MAIN.c"
	line	57
	global	__size_of_MainDisplayProjectTitle
	__size_of_MainDisplayProjectTitle	equ	__end_of_MainDisplayProjectTitle-_MainDisplayProjectTitle
	
_MainDisplayProjectTitle:	
	opt	stack 1
; Regs used in _MainDisplayProjectTitle: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	58
	
l2188:	
;MAIN.c: 58: on();
	fcall	_on
	line	59
;MAIN.c: 59: SetStartLine(0);
	movlw	(0)
	fcall	_SetStartLine
	line	60
	
l2190:	
;MAIN.c: 60: clear();
	fcall	_clear
	line	62
	
l2192:	
;MAIN.c: 62: LCDprintf(0,1,a1);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(?_LCDprintf)
	bsf	status,0
	rlf	(?_LCDprintf),f
	movlw	low(_a1|8000h)
	movwf	(0+?_LCDprintf+01h)
	movlw	high(_a1|8000h)
	movwf	((0+?_LCDprintf+01h))+1
	movlw	(0)
	fcall	_LCDprintf
	line	63
	
l2194:	
;MAIN.c: 63: LCDprintf2(0,3,a2);
	movlw	(03h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_MainDisplayProjectTitle+0)+0
	movf	(??_MainDisplayProjectTitle+0)+0,w
	movwf	(?_LCDprintf2)
	movlw	low(_a2|8000h)
	movwf	(0+?_LCDprintf2+01h)
	movlw	high(_a2|8000h)
	movwf	((0+?_LCDprintf2+01h))+1
	movlw	(0)
	fcall	_LCDprintf2
	line	64
	
l660:	
	return
	opt stack 0
GLOBAL	__end_of_MainDisplayProjectTitle
	__end_of_MainDisplayProjectTitle:
;; =============== function _MainDisplayProjectTitle ends ============

	signat	_MainDisplayProjectTitle,88
	global	_clear
psect	text317,local,class=CODE,delta=2
global __ptext317
__ptext317:

;; *************** function _clear *****************
;; Defined at:
;;		line 174 in file "C:\Users\X4ROY\Desktop\CR\graphic LCD\glcd.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  x               1    2[BANK0 ] unsigned char 
;;  a               1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SetPage
;;		_SetColumn
;;		_SendLCDData
;; This function is called by:
;;		_MainDisplayProjectTitle
;; This function uses a non-reentrant model
;;
psect	text317
	file	"C:\Users\X4ROY\Desktop\CR\graphic LCD\glcd.h"
	line	174
	global	__size_of_clear
	__size_of_clear	equ	__end_of_clear-_clear
	
_clear:	
	opt	stack 1
; Regs used in _clear: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	176
	
l2164:	
;glcd.h: 175: unsigned char x,a;
;glcd.h: 176: for (x=0;x < 8;x++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(clear@x)
	
l2166:	
	movlw	(08h)
	subwf	(clear@x),w
	skipc
	goto	u2621
	goto	u2620
u2621:
	goto	l2170
u2620:
	goto	l643
	
l2168:	
	goto	l643
	line	177
	
l639:	
	line	178
	
l2170:	
;glcd.h: 177: {
;glcd.h: 178: SetPage(x);SetColumn(0);
	movf	(clear@x),w
	fcall	_SetPage
	movlw	(0)
	fcall	_SetColumn
	line	179
	
l2172:	
;glcd.h: 179: for (a = 0 ;a < 128; a++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(clear@a)
	
l2174:	
	movlw	(080h)
	subwf	(clear@a),w
	skipc
	goto	u2631
	goto	u2630
u2631:
	goto	l2178
u2630:
	goto	l2184
	
l2176:	
	goto	l2184
	line	180
	
l641:	
	
l2178:	
;glcd.h: 180: SendLCDData(&value,1);
	movlw	(_value&0ffh)
	movwf	(?_SendLCDData)
	movlw	(0x0/2)
	movwf	(?_SendLCDData+1)
	movlw	low(01h)
	movwf	0+(?_SendLCDData)+02h
	movlw	high(01h)
	movwf	(0+(?_SendLCDData)+02h)+1
	fcall	_SendLCDData
	line	179
	
l2180:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_clear+0)+0
	movf	(??_clear+0)+0,w
	addwf	(clear@a),f
	
l2182:	
	movlw	(080h)
	subwf	(clear@a),w
	skipc
	goto	u2641
	goto	u2640
u2641:
	goto	l2178
u2640:
	goto	l2184
	
l642:	
	line	176
	
l2184:	
	movlw	(01h)
	movwf	(??_clear+0)+0
	movf	(??_clear+0)+0,w
	addwf	(clear@x),f
	
l2186:	
	movlw	(08h)
	subwf	(clear@x),w
	skipc
	goto	u2651
	goto	u2650
u2651:
	goto	l2170
u2650:
	goto	l643
	
l640:	
	line	182
	
l643:	
	return
	opt stack 0
GLOBAL	__end_of_clear
	__end_of_clear:
;; =============== function _clear ends ============

	signat	_clear,88
	global	_LCDprintf2
psect	text318,local,class=CODE,delta=2
global __ptext318
__ptext318:

;; *************** function _LCDprintf2 *****************
;; Defined at:
;;		line 154 in file "C:\Users\X4ROY\Desktop\CR\graphic LCD\glcd.h"
;; Parameters:    Size  Location     Type
;;  y               1    wreg     unsigned char 
;;  page            1    0[BANK0 ] unsigned char 
;;  Str             2    1[BANK0 ] PTR unsigned char 
;;		 -> a2(20), 
;; Auto vars:     Size  Location     Type
;;  y               1    7[BANK0 ] unsigned char 
;;  yy              2    8[BANK0 ] unsigned int 
;;  n               1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      11       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SetColumn
;;		_SetPage
;;		___wmul
;;		_SendLCDData
;; This function is called by:
;;		_MainDisplayProjectTitle
;; This function uses a non-reentrant model
;;
psect	text318
	file	"C:\Users\X4ROY\Desktop\CR\graphic LCD\glcd.h"
	line	154
	global	__size_of_LCDprintf2
	__size_of_LCDprintf2	equ	__end_of_LCDprintf2-_LCDprintf2
	
_LCDprintf2:	
	opt	stack 1
; Regs used in _LCDprintf2: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;LCDprintf2@y stored from wreg
	line	157
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCDprintf2@y)
	
l2148:	
;glcd.h: 155: unsigned char n;
;glcd.h: 156: unsigned int yy;
;glcd.h: 157: SetColumn(y);
	movf	(LCDprintf2@y),w
	fcall	_SetColumn
	line	158
;glcd.h: 158: SetPage(page);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDprintf2@page),w
	fcall	_SetPage
	line	159
;glcd.h: 159: SetColumn(y);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDprintf2@y),w
	fcall	_SetColumn
	line	161
	
l2150:	
;glcd.h: 161: for (n = 0;Str[n]!=0;n++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCDprintf2@n)
	goto	l2162
	line	162
	
l634:	
	line	163
	
l2152:	
;glcd.h: 162: {
;glcd.h: 163: yy=(*(Str+n)-32);
	movf	(LCDprintf2@n),w
	addwf	(LCDprintf2@Str),w
	movwf	fsr0
	movf	(LCDprintf2@Str+1),w
	skipnc
	incf	(LCDprintf2@Str+1),w
	movwf	btemp+1
	fcall	stringtab
	addlw	low(-32)
	movwf	(LCDprintf2@yy)
	movlw	high(-32)
	skipnc
	movlw	(high(-32)+1)&0ffh
	movwf	((LCDprintf2@yy))+1
	line	164
	
l2154:	
;glcd.h: 164: yy*=5;
	movlw	low(05h)
	movwf	(?___wmul)
	movlw	high(05h)
	movwf	((?___wmul))+1
	movf	(LCDprintf2@yy+1),w
	clrf	1+(?___wmul)+02h
	addwf	1+(?___wmul)+02h
	movf	(LCDprintf2@yy),w
	clrf	0+(?___wmul)+02h
	addwf	0+(?___wmul)+02h

	fcall	___wmul
	movf	(1+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDprintf2@yy+1)
	addwf	(LCDprintf2@yy+1)
	movf	(0+(?___wmul)),w
	clrf	(LCDprintf2@yy)
	addwf	(LCDprintf2@yy)

	line	165
	
l2156:	
;glcd.h: 165: SendLCDData(&font5x7[yy],5);
	movlw	low(_font5x7|8000h)
	movwf	(??_LCDprintf2+0)+0
	movlw	high(_font5x7|8000h)
	movwf	(??_LCDprintf2+0)+0+1
	movf	(LCDprintf2@yy),w
	addwf	0+(??_LCDprintf2+0)+0,w
	movwf	(??_LCDprintf2+2)+0
	movf	(LCDprintf2@yy+1),w
	skipnc
	incf	(LCDprintf2@yy+1),w
	addwf	1+(??_LCDprintf2+0)+0,w
	movwf	1+(??_LCDprintf2+2)+0
	movf	0+(??_LCDprintf2+2)+0,w
	movwf	(?_SendLCDData)
	movf	1+(??_LCDprintf2+2)+0,w
	movwf	(?_SendLCDData+1)
	movlw	low(05h)
	movwf	0+(?_SendLCDData)+02h
	movlw	high(05h)
	movwf	(0+(?_SendLCDData)+02h)+1
	fcall	_SendLCDData
	line	166
	
l2158:	
;glcd.h: 166: SendLCDData(&value,1);
	movlw	(_value&0ffh)
	movwf	(?_SendLCDData)
	movlw	(0x0/2)
	movwf	(?_SendLCDData+1)
	movlw	low(01h)
	movwf	0+(?_SendLCDData)+02h
	movlw	high(01h)
	movwf	(0+(?_SendLCDData)+02h)+1
	fcall	_SendLCDData
	line	161
	
l2160:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCDprintf2+0)+0
	movf	(??_LCDprintf2+0)+0,w
	addwf	(LCDprintf2@n),f
	goto	l2162
	
l633:	
	
l2162:	
	movf	(LCDprintf2@n),w
	addwf	(LCDprintf2@Str),w
	movwf	fsr0
	movf	(LCDprintf2@Str+1),w
	skipnc
	incf	(LCDprintf2@Str+1),w
	movwf	btemp+1
	fcall	stringtab
	iorlw	0
	skipz
	goto	u2611
	goto	u2610
u2611:
	goto	l2152
u2610:
	goto	l636
	
l635:	
	line	168
	
l636:	
	return
	opt stack 0
GLOBAL	__end_of_LCDprintf2
	__end_of_LCDprintf2:
;; =============== function _LCDprintf2 ends ============

	signat	_LCDprintf2,12408
	global	_LCDprintf
psect	text319,local,class=CODE,delta=2
global __ptext319
__ptext319:

;; *************** function _LCDprintf *****************
;; Defined at:
;;		line 140 in file "C:\Users\X4ROY\Desktop\CR\graphic LCD\glcd.h"
;; Parameters:    Size  Location     Type
;;  y               1    wreg     unsigned char 
;;  page            1    0[BANK0 ] unsigned char 
;;  Str             2    1[BANK0 ] PTR unsigned char 
;;		 -> a1(16), 
;; Auto vars:     Size  Location     Type
;;  y               1    9[BANK0 ] unsigned char 
;;  yy              2    7[BANK0 ] unsigned int 
;;  n               1   10[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      11       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_SetColumn
;;		_SetPage
;;		_SendLCDData
;; This function is called by:
;;		_MainDisplayProjectTitle
;; This function uses a non-reentrant model
;;
psect	text319
	file	"C:\Users\X4ROY\Desktop\CR\graphic LCD\glcd.h"
	line	140
	global	__size_of_LCDprintf
	__size_of_LCDprintf	equ	__end_of_LCDprintf-_LCDprintf
	
_LCDprintf:	
	opt	stack 1
; Regs used in _LCDprintf: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;LCDprintf@y stored from wreg
	line	143
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCDprintf@y)
	
l2134:	
;glcd.h: 141: unsigned char n;
;glcd.h: 142: unsigned int yy;
;glcd.h: 143: SetColumn(y);
	movf	(LCDprintf@y),w
	fcall	_SetColumn
	line	144
;glcd.h: 144: SetPage(page);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDprintf@page),w
	fcall	_SetPage
	line	145
;glcd.h: 145: SetColumn(y);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDprintf@y),w
	fcall	_SetColumn
	line	146
	
l2136:	
;glcd.h: 146: for (n = 0;Str[n]!=0;n++){
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCDprintf@n)
	goto	l2146
	
l628:	
	line	147
	
l2138:	
;glcd.h: 147: yy=(*(Str+n));
	movf	(LCDprintf@n),w
	addwf	(LCDprintf@Str),w
	movwf	fsr0
	movf	(LCDprintf@Str+1),w
	skipnc
	incf	(LCDprintf@Str+1),w
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_LCDprintf+0)+0
	clrf	(??_LCDprintf+0)+0+1
	movf	0+(??_LCDprintf+0)+0,w
	movwf	(LCDprintf@yy)
	movf	1+(??_LCDprintf+0)+0,w
	movwf	(LCDprintf@yy+1)
	line	148
	
l2140:	
;glcd.h: 148: yy*=8;
	movlw	03h
	
u2595:
	clrc
	rlf	(LCDprintf@yy),f
	rlf	(LCDprintf@yy+1),f
	addlw	-1
	skipz
	goto	u2595
	line	149
	
l2142:	
;glcd.h: 149: SendLCDData(&Character8x8[yy], 8);
	movlw	low(_Character8x8|8000h)
	movwf	(??_LCDprintf+0)+0
	movlw	high(_Character8x8|8000h)
	movwf	(??_LCDprintf+0)+0+1
	movf	(LCDprintf@yy),w
	addwf	0+(??_LCDprintf+0)+0,w
	movwf	(??_LCDprintf+2)+0
	movf	(LCDprintf@yy+1),w
	skipnc
	incf	(LCDprintf@yy+1),w
	addwf	1+(??_LCDprintf+0)+0,w
	movwf	1+(??_LCDprintf+2)+0
	movf	0+(??_LCDprintf+2)+0,w
	movwf	(?_SendLCDData)
	movf	1+(??_LCDprintf+2)+0,w
	movwf	(?_SendLCDData+1)
	movlw	low(08h)
	movwf	0+(?_SendLCDData)+02h
	movlw	high(08h)
	movwf	(0+(?_SendLCDData)+02h)+1
	fcall	_SendLCDData
	line	146
	
l2144:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCDprintf+0)+0
	movf	(??_LCDprintf+0)+0,w
	addwf	(LCDprintf@n),f
	goto	l2146
	
l627:	
	
l2146:	
	movf	(LCDprintf@n),w
	addwf	(LCDprintf@Str),w
	movwf	fsr0
	movf	(LCDprintf@Str+1),w
	skipnc
	incf	(LCDprintf@Str+1),w
	movwf	btemp+1
	fcall	stringtab
	iorlw	0
	skipz
	goto	u2601
	goto	u2600
u2601:
	goto	l2138
u2600:
	goto	l630
	
l629:	
	line	151
	
l630:	
	return
	opt stack 0
GLOBAL	__end_of_LCDprintf
	__end_of_LCDprintf:
;; =============== function _LCDprintf ends ============

	signat	_LCDprintf,12408
	global	_on
psect	text320,local,class=CODE,delta=2
global __ptext320
__ptext320:

;; *************** function _on *****************
;; Defined at:
;;		line 185 in file "C:\Users\X4ROY\Desktop\CR\graphic LCD\glcd.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_SendLCDCommand
;; This function is called by:
;;		_MainDisplayProjectTitle
;; This function uses a non-reentrant model
;;
psect	text320
	file	"C:\Users\X4ROY\Desktop\CR\graphic LCD\glcd.h"
	line	185
	global	__size_of_on
	__size_of_on	equ	__end_of_on-_on
	
_on:	
	opt	stack 2
; Regs used in _on: [wreg+status,2+status,0+pclath+cstack]
	line	186
	
l2132:	
;glcd.h: 186: SendLCDCommand(0x3f, 0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_SendLCDCommand)
	movlw	(03Fh)
	fcall	_SendLCDCommand
	line	187
;glcd.h: 187: SendLCDCommand(0x3f, 6);
	movlw	(06h)
	movwf	(??_on+0)+0
	movf	(??_on+0)+0,w
	movwf	(?_SendLCDCommand)
	movlw	(03Fh)
	fcall	_SendLCDCommand
	line	188
	
l646:	
	return
	opt stack 0
GLOBAL	__end_of_on
	__end_of_on:
;; =============== function _on ends ============

	signat	_on,88
	global	_SetStartLine
psect	text321,local,class=CODE,delta=2
global __ptext321
__ptext321:

;; *************** function _SetStartLine *****************
;; Defined at:
;;		line 111 in file "C:\Users\X4ROY\Desktop\CR\graphic LCD\glcd.h"
;; Parameters:    Size  Location     Type
;;  line            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  line            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_SendLCDCommand
;; This function is called by:
;;		_MainDisplayProjectTitle
;; This function uses a non-reentrant model
;;
psect	text321
	file	"C:\Users\X4ROY\Desktop\CR\graphic LCD\glcd.h"
	line	111
	global	__size_of_SetStartLine
	__size_of_SetStartLine	equ	__end_of_SetStartLine-_SetStartLine
	
_SetStartLine:	
	opt	stack 2
; Regs used in _SetStartLine: [wreg+status,2+status,0+pclath+cstack]
;SetStartLine@line stored from wreg
	movwf	(SetStartLine@line)
	line	112
	
l2130:	
;glcd.h: 112: SendLCDCommand(0xc0 | (line & 63), 0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_SendLCDCommand)
	movf	(SetStartLine@line),w
	andlw	03Fh
	iorlw	0C0h
	fcall	_SendLCDCommand
	line	113
;glcd.h: 113: SendLCDCommand(0xc0 | (line & 63), 6);
	movlw	(06h)
	movwf	(??_SetStartLine+0)+0
	movf	(??_SetStartLine+0)+0,w
	movwf	(?_SendLCDCommand)
	movf	(SetStartLine@line),w
	andlw	03Fh
	iorlw	0C0h
	fcall	_SendLCDCommand
	line	114
	
l617:	
	return
	opt stack 0
GLOBAL	__end_of_SetStartLine
	__end_of_SetStartLine:
;; =============== function _SetStartLine ends ============

	signat	_SetStartLine,4216
	global	_SetPage
psect	text322,local,class=CODE,delta=2
global __ptext322
__ptext322:

;; *************** function _SetPage *****************
;; Defined at:
;;		line 104 in file "C:\Users\X4ROY\Desktop\CR\graphic LCD\glcd.h"
;; Parameters:    Size  Location     Type
;;  x               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  x               1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_SendLCDCommand
;; This function is called by:
;;		_LCDprintf
;;		_LCDprintf2
;;		_clear
;;		_show
;; This function uses a non-reentrant model
;;
psect	text322
	file	"C:\Users\X4ROY\Desktop\CR\graphic LCD\glcd.h"
	line	104
	global	__size_of_SetPage
	__size_of_SetPage	equ	__end_of_SetPage-_SetPage
	
_SetPage:	
	opt	stack 1
; Regs used in _SetPage: [wreg+status,2+status,0+pclath+cstack]
;SetPage@x stored from wreg
	movwf	(SetPage@x)
	line	105
	
l2128:	
;glcd.h: 105: SendLCDCommand(0xb8 | x, 0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_SendLCDCommand)
	movf	(SetPage@x),w
	iorlw	0B8h
	fcall	_SendLCDCommand
	line	106
;glcd.h: 106: SendLCDCommand(0xb8 | x, 6);
	movlw	(06h)
	movwf	(??_SetPage+0)+0
	movf	(??_SetPage+0)+0,w
	movwf	(?_SendLCDCommand)
	movf	(SetPage@x),w
	iorlw	0B8h
	fcall	_SendLCDCommand
	line	107
	
l614:	
	return
	opt stack 0
GLOBAL	__end_of_SetPage
	__end_of_SetPage:
;; =============== function _SetPage ends ============

	signat	_SetPage,4216
	global	_SetColumn
psect	text323,local,class=CODE,delta=2
global __ptext323
__ptext323:

;; *************** function _SetColumn *****************
;; Defined at:
;;		line 86 in file "C:\Users\X4ROY\Desktop\CR\graphic LCD\glcd.h"
;; Parameters:    Size  Location     Type
;;  y               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  y               1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_SendLCDCommand
;; This function is called by:
;;		_LCDprintf
;;		_LCDprintf2
;;		_clear
;;		_show
;; This function uses a non-reentrant model
;;
psect	text323
	file	"C:\Users\X4ROY\Desktop\CR\graphic LCD\glcd.h"
	line	86
	global	__size_of_SetColumn
	__size_of_SetColumn	equ	__end_of_SetColumn-_SetColumn
	
_SetColumn:	
	opt	stack 1
; Regs used in _SetColumn: [wreg+status,2+status,0+pclath+cstack]
;SetColumn@y stored from wreg
	movwf	(SetColumn@y)
	line	87
	
l2122:	
;glcd.h: 87: CurrentColumn = y;
	movf	(SetColumn@y),w
	movwf	(??_SetColumn+0)+0
	movf	(??_SetColumn+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_CurrentColumn)
	line	88
;glcd.h: 88: if (y < 64)
	movlw	(040h)
	subwf	(SetColumn@y),w
	skipnc
	goto	u2581
	goto	u2580
u2581:
	goto	l2126
u2580:
	line	90
	
l2124:	
;glcd.h: 89: {
;glcd.h: 90: SendLCDCommand(0x40 | (y&63), 0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_SendLCDCommand)
	movf	(SetColumn@y),w
	andlw	03Fh
	iorlw	040h
	fcall	_SendLCDCommand
	line	91
;glcd.h: 91: SendLCDCommand(0x40 | 0, 6);
	movlw	(06h)
	movwf	(??_SetColumn+0)+0
	movf	(??_SetColumn+0)+0,w
	movwf	(?_SendLCDCommand)
	movlw	(040h)
	fcall	_SendLCDCommand
	line	92
;glcd.h: 92: }
	goto	l611
	line	93
	
l609:	
	line	95
	
l2126:	
;glcd.h: 93: else
;glcd.h: 94: {
;glcd.h: 95: SendLCDCommand(0x40 | 63, 0);
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(?_SendLCDCommand)
	movlw	(07Fh)
	fcall	_SendLCDCommand
	line	96
;glcd.h: 96: SendLCDCommand(0x40 | ((y-64)&63), 6);
	movlw	(06h)
	movwf	(??_SetColumn+0)+0
	movf	(??_SetColumn+0)+0,w
	movwf	(?_SendLCDCommand)
	movf	(SetColumn@y),w
	addlw	0C0h
	andlw	03Fh
	iorlw	040h
	fcall	_SendLCDCommand
	goto	l611
	line	97
	
l610:	
	line	98
	
l611:	
	return
	opt stack 0
GLOBAL	__end_of_SetColumn
	__end_of_SetColumn:
;; =============== function _SetColumn ends ============

	signat	_SetColumn,4216
	global	_SendLCDData
psect	text324,local,class=CODE,delta=2
global __ptext324
__ptext324:

;; *************** function _SendLCDData *****************
;; Defined at:
;;		line 65 in file "C:\Users\X4ROY\Desktop\CR\graphic LCD\glcd.h"
;; Parameters:    Size  Location     Type
;;  values          2    4[COMMON] PTR unsigned char 
;;		 -> value(1), font5x7(480), Character8x8(2048), 
;;  amount          2    6[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         2   11[COMMON] unsigned int 
;;  c_s             1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:        10       0       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_output
;;		_OmaDelay
;; This function is called by:
;;		_LCDprintf
;;		_LCDprintf2
;;		_clear
;;		_show
;; This function uses a non-reentrant model
;;
psect	text324
	file	"C:\Users\X4ROY\Desktop\CR\graphic LCD\glcd.h"
	line	65
	global	__size_of_SendLCDData
	__size_of_SendLCDData	equ	__end_of_SendLCDData-_SendLCDData
	
_SendLCDData:	
	opt	stack 2
; Regs used in _SendLCDData: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	68
	
l2096:	
;glcd.h: 66: unsigned char c_s;
;glcd.h: 67: unsigned int counter;
;glcd.h: 68: for (counter=0; counter < amount;counter++)
	movlw	low(0)
	movwf	(SendLCDData@counter)
	movlw	high(0)
	movwf	((SendLCDData@counter))+1
	goto	l600
	line	69
	
l601:	
	line	70
	
l2098:	
;glcd.h: 69: {
;glcd.h: 70: c_s = CurrentColumn>63?6:0;
	movlw	low(0)
	movwf	(_SendLCDData$331)
	movlw	high(0)
	movwf	((_SendLCDData$331))+1
	movlw	(040h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(_CurrentColumn),w
	skipc
	goto	u2551
	goto	u2550
u2551:
	goto	l603
u2550:
	
l2100:	
	movlw	low(06h)
	movwf	(_SendLCDData$331)
	movlw	high(06h)
	movwf	((_SendLCDData$331))+1
	
l603:	
	movf	(_SendLCDData$331),w
	movwf	(??_SendLCDData+0)+0
	movf	(??_SendLCDData+0)+0,w
	movwf	(SendLCDData@c_s)
	line	71
	
l2102:	
;glcd.h: 71: output(0, c_s );
	movlw	low(0)
	movwf	(?_output)
	movlw	high(0)
	movwf	((?_output))+1
	movf	(SendLCDData@c_s),w
	movwf	(??_SendLCDData+0)+0
	movf	(??_SendLCDData+0)+0,w
	movwf	0+(?_output)+02h
	fcall	_output
	line	72
	
l2104:	
;glcd.h: 72: OmaDelay();
	fcall	_OmaDelay
	line	73
	
l2106:	
;glcd.h: 73: output(1, values[counter]);
	movlw	low(01h)
	movwf	(?_output)
	movlw	high(01h)
	movwf	((?_output))+1
	movf	(SendLCDData@counter),w
	addwf	(SendLCDData@values),w
	movwf	fsr0
	movf	(SendLCDData@counter+1),w
	skipnc
	incf	(SendLCDData@counter+1),w
	addwf	(SendLCDData@values+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	fcall	stringtab
	movwf	(??_SendLCDData+0)+0
	movf	(??_SendLCDData+0)+0,w
	movwf	0+(?_output)+02h
	fcall	_output
	line	74
	
l2108:	
;glcd.h: 74: OmaDelay();
	fcall	_OmaDelay
	line	75
	
l2110:	
;glcd.h: 75: output(0, 1 | c_s );
	movlw	low(0)
	movwf	(?_output)
	movlw	high(0)
	movwf	((?_output))+1
	movf	(SendLCDData@c_s),w
	iorlw	01h
	movwf	(??_SendLCDData+0)+0
	movf	(??_SendLCDData+0)+0,w
	movwf	0+(?_output)+02h
	fcall	_output
	line	76
	
l2112:	
;glcd.h: 76: OmaDelay();
	fcall	_OmaDelay
	line	77
	
l2114:	
;glcd.h: 77: CurrentColumn++;
	movlw	(01h)
	movwf	(??_SendLCDData+0)+0
	movf	(??_SendLCDData+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_CurrentColumn),f
	line	78
	
l2116:	
;glcd.h: 78: if (CurrentColumn > 127) return;
	movlw	(080h)
	subwf	(_CurrentColumn),w
	skipc
	goto	u2561
	goto	u2560
u2561:
	goto	l2120
u2560:
	goto	l605
	
l2118:	
	goto	l605
	
l604:	
	line	68
	
l2120:	
	movlw	low(01h)
	addwf	(SendLCDData@counter),f
	skipnc
	incf	(SendLCDData@counter+1),f
	movlw	high(01h)
	addwf	(SendLCDData@counter+1),f
	
l600:	
	movf	(SendLCDData@amount+1),w
	subwf	(SendLCDData@counter+1),w
	skipz
	goto	u2575
	movf	(SendLCDData@amount),w
	subwf	(SendLCDData@counter),w
u2575:
	skipc
	goto	u2571
	goto	u2570
u2571:
	goto	l2098
u2570:
	goto	l605
	
l606:	
	line	80
	
l605:	
	return
	opt stack 0
GLOBAL	__end_of_SendLCDData
	__end_of_SendLCDData:
;; =============== function _SendLCDData ends ============

	signat	_SendLCDData,8312
	global	_SendLCDCommand
psect	text325,local,class=CODE,delta=2
global __ptext325
__ptext325:

;; *************** function _SendLCDCommand *****************
;; Defined at:
;;		line 53 in file "C:\Users\X4ROY\Desktop\CR\graphic LCD\glcd.h"
;; Parameters:    Size  Location     Type
;;  value           1    wreg     unsigned char 
;;  CS              1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  value           1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_output
;;		_OmaDelay
;; This function is called by:
;;		_SetColumn
;;		_SetPage
;;		_SetStartLine
;;		_on
;;		_off
;; This function uses a non-reentrant model
;;
psect	text325
	file	"C:\Users\X4ROY\Desktop\CR\graphic LCD\glcd.h"
	line	53
	global	__size_of_SendLCDCommand
	__size_of_SendLCDCommand	equ	__end_of_SendLCDCommand-_SendLCDCommand
	
_SendLCDCommand:	
	opt	stack 1
; Regs used in _SendLCDCommand: [wreg+status,2+status,0+pclath+cstack]
;SendLCDCommand@value stored from wreg
	movwf	(SendLCDCommand@value)
	line	54
	
l2094:	
;glcd.h: 54: output(0, CS | 8);
	movlw	low(0)
	movwf	(?_output)
	movlw	high(0)
	movwf	((?_output))+1
	movf	(SendLCDCommand@CS),w
	iorlw	08h
	movwf	(??_SendLCDCommand+0)+0
	movf	(??_SendLCDCommand+0)+0,w
	movwf	0+(?_output)+02h
	fcall	_output
	line	55
;glcd.h: 55: OmaDelay();
	fcall	_OmaDelay
	line	56
;glcd.h: 56: output(1, value);
	movlw	low(01h)
	movwf	(?_output)
	movlw	high(01h)
	movwf	((?_output))+1
	movf	(SendLCDCommand@value),w
	movwf	(??_SendLCDCommand+0)+0
	movf	(??_SendLCDCommand+0)+0,w
	movwf	0+(?_output)+02h
	fcall	_output
	line	57
;glcd.h: 57: OmaDelay();
	fcall	_OmaDelay
	line	58
;glcd.h: 58: output(0, 1 | CS | 8);
	movlw	low(0)
	movwf	(?_output)
	movlw	high(0)
	movwf	((?_output))+1
	movf	(SendLCDCommand@CS),w
	iorlw	09h
	movwf	(??_SendLCDCommand+0)+0
	movf	(??_SendLCDCommand+0)+0,w
	movwf	0+(?_output)+02h
	fcall	_output
	line	59
;glcd.h: 59: OmaDelay();
	fcall	_OmaDelay
	line	60
;glcd.h: 60: OmaDelay();
	fcall	_OmaDelay
	line	61
	
l597:	
	return
	opt stack 0
GLOBAL	__end_of_SendLCDCommand
	__end_of_SendLCDCommand:
;; =============== function _SendLCDCommand ends ============

	signat	_SendLCDCommand,8312
	global	_OmaDelay
psect	text326,local,class=CODE,delta=2
global __ptext326
__ptext326:

;; *************** function _OmaDelay *****************
;; Defined at:
;;		line 29 in file "C:\Users\X4ROY\Desktop\CR\graphic LCD\glcd.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_SendLCDCommand
;;		_SendLCDData
;; This function uses a non-reentrant model
;;
psect	text326
	file	"C:\Users\X4ROY\Desktop\CR\graphic LCD\glcd.h"
	line	29
	global	__size_of_OmaDelay
	__size_of_OmaDelay	equ	__end_of_OmaDelay-_OmaDelay
	
_OmaDelay:	
	opt	stack 2
; Regs used in _OmaDelay: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l2092:	
;glcd.h: 30: delay(2);
	movlw	low(02h)
	movwf	(?_delay)
	movlw	high(02h)
	movwf	((?_delay))+1
	fcall	_delay
	line	31
	
l583:	
	return
	opt stack 0
GLOBAL	__end_of_OmaDelay
	__end_of_OmaDelay:
;; =============== function _OmaDelay ends ============

	signat	_OmaDelay,88
	global	___wmul
psect	text327,local,class=CODE,delta=2
global __ptext327
__ptext327:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCDprintf2
;; This function uses a non-reentrant model
;;
psect	text327
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 4
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l2080:	
	movlw	low(0)
	movwf	(___wmul@product)
	movlw	high(0)
	movwf	((___wmul@product))+1
	goto	l2082
	line	6
	
l678:	
	line	7
	
l2082:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2511
	goto	u2510
u2511:
	goto	l679
u2510:
	line	8
	
l2084:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l679:	
	line	9
	movlw	01h
	
u2525:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u2525
	line	10
	
l2086:	
	movlw	01h
	
u2535:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u2535
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2541
	goto	u2540
u2541:
	goto	l2082
u2540:
	goto	l2088
	
l680:	
	line	12
	
l2088:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l681
	
l2090:	
	line	13
	
l681:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_Delay
psect	text328,local,class=CODE,delta=2
global __ptext328
__ptext328:

;; *************** function _Delay *****************
;; Defined at:
;;		line 4 in file "C:\Users\X4ROY\Desktop\CR\graphic LCD\delay.c"
;; Parameters:    Size  Location     Type
;;  time            2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  pause           1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_MainSystemInitailize
;; This function uses a non-reentrant model
;;
psect	text328
	file	"C:\Users\X4ROY\Desktop\CR\graphic LCD\delay.c"
	line	4
	global	__size_of_Delay
	__size_of_Delay	equ	__end_of_Delay-_Delay
	
_Delay:	
	opt	stack 7
; Regs used in _Delay: [wreg+status,2+status,0]
	line	6
	
l1106:	
;delay.c: 5: unsigned char pause;
;delay.c: 6: while( time > 0)
	goto	l1114
	
l664:	
	line	8
	
l1108:	
;delay.c: 7: {
;delay.c: 8: pause = 255;
	movlw	(0FFh)
	movwf	(??_Delay+0)+0
	movf	(??_Delay+0)+0,w
	movwf	(Delay@pause)
	line	9
;delay.c: 9: while(pause--);
	goto	l1110
	
l666:	
	goto	l1110
	
l665:	
	
l1110:	
	movlw	low(01h)
	subwf	(Delay@pause),f
	movf	((Delay@pause)),w
	xorlw	0FFh
	skipz
	goto	u131
	goto	u130
u131:
	goto	l1110
u130:
	goto	l1112
	
l667:	
	line	10
	
l1112:	
;delay.c: 10: time--;
	movlw	low(01h)
	subwf	(Delay@time),f
	movlw	high(01h)
	skipc
	decf	(Delay@time+1),f
	subwf	(Delay@time+1),f
	goto	l1114
	line	11
	
l663:	
	line	6
	
l1114:	
	movf	((Delay@time+1)),w
	iorwf	((Delay@time)),w
	skipz
	goto	u141
	goto	u140
u141:
	goto	l1108
u140:
	goto	l669
	
l668:	
	line	12
	
l669:	
	return
	opt stack 0
GLOBAL	__end_of_Delay
	__end_of_Delay:
;; =============== function _Delay ends ============

	signat	_Delay,4216
	global	_output
psect	text329,local,class=CODE,delta=2
global __ptext329
__ptext329:

;; *************** function _output *****************
;; Defined at:
;;		line 35 in file "C:\Users\X4ROY\Desktop\CR\graphic LCD\glcd.h"
;; Parameters:    Size  Location     Type
;;  port            2    0[COMMON] int 
;;  value           1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SendLCDCommand
;;		_SendLCDData
;; This function uses a non-reentrant model
;;
psect	text329
	file	"C:\Users\X4ROY\Desktop\CR\graphic LCD\glcd.h"
	line	35
	global	__size_of_output
	__size_of_output	equ	__end_of_output-_output
	
_output:	
	opt	stack 3
; Regs used in _output: [wreg+status,2+status,0]
	line	36
	
l2034:	
;glcd.h: 36: if(port)
	movf	(output@port+1),w
	iorwf	(output@port),w
	skipnz
	goto	u2401
	goto	u2400
u2401:
	goto	l586
u2400:
	line	38
	
l2036:	
;glcd.h: 37: {
;glcd.h: 38: PORTB = value;
	movf	(output@value),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	39
;glcd.h: 39: }
	goto	l594
	line	40
	
l586:	
	line	42
;glcd.h: 40: else
;glcd.h: 41: {
;glcd.h: 42: if(value&1) value&=0XFE; else value|=1;
	btfss	(output@value),(0)&7
	goto	u2411
	goto	u2410
u2411:
	goto	l588
u2410:
	
l2038:	
	movlw	(0FEh)
	movwf	(??_output+0)+0
	movf	(??_output+0)+0,w
	andwf	(output@value),f
	goto	l589
	
l588:	
	bsf	(output@value)+(0/8),(0)&7
	
l589:	
	line	43
;glcd.h: 43: if(value&2) value&=0XFD; else value|=2;
	btfss	(output@value),(1)&7
	goto	u2421
	goto	u2420
u2421:
	goto	l590
u2420:
	
l2040:	
	movlw	(0FDh)
	movwf	(??_output+0)+0
	movf	(??_output+0)+0,w
	andwf	(output@value),f
	goto	l591
	
l590:	
	bsf	(output@value)+(1/8),(1)&7
	
l591:	
	line	44
;glcd.h: 44: if(value&8) value&=0XF7; else value|=8;
	btfss	(output@value),(3)&7
	goto	u2431
	goto	u2430
u2431:
	goto	l592
u2430:
	
l2042:	
	movlw	(0F7h)
	movwf	(??_output+0)+0
	movf	(??_output+0)+0,w
	andwf	(output@value),f
	goto	l2044
	
l592:	
	bsf	(output@value)+(3/8),(3)&7
	goto	l2044
	
l593:	
	line	45
	
l2044:	
;glcd.h: 45: PORTC = value<<6 ;
	movf	(output@value),w
	movwf	(??_output+0)+0
	movlw	(06h)-1
u2445:
	clrc
	rlf	(??_output+0)+0,f
	addlw	-1
	skipz
	goto	u2445
	clrc
	rlf	(??_output+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	46
;glcd.h: 46: PORTD = value<<2 ;
	movf	(output@value),w
	movwf	(??_output+0)+0
	movlw	(02h)-1
u2455:
	clrc
	rlf	(??_output+0)+0,f
	addlw	-1
	skipz
	goto	u2455
	clrc
	rlf	(??_output+0)+0,w
	movwf	(8)	;volatile
	goto	l594
	line	47
	
l587:	
	line	48
	
l594:	
	return
	opt stack 0
GLOBAL	__end_of_output
	__end_of_output:
;; =============== function _output ends ============

	signat	_output,8312
	global	_delay
psect	text330,local,class=CODE,delta=2
global __ptext330
__ptext330:

;; *************** function _delay *****************
;; Defined at:
;;		line 22 in file "C:\Users\X4ROY\Desktop\CR\graphic LCD\glcd.h"
;; Parameters:    Size  Location     Type
;;  j               2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  i               2    2[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_OmaDelay
;;		_show
;; This function uses a non-reentrant model
;;
psect	text330
	file	"C:\Users\X4ROY\Desktop\CR\graphic LCD\glcd.h"
	line	22
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 2
; Regs used in _delay: [wreg]
	line	24
	
l2030:	
;glcd.h: 23: unsigned int i;
;glcd.h: 24: for(i=0;i<j;i++);
	movlw	low(0)
	movwf	(delay@i)
	movlw	high(0)
	movwf	((delay@i))+1
	goto	l577
	
l578:	
	
l2032:	
	movlw	low(01h)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(01h)
	addwf	(delay@i+1),f
	
l577:	
	movf	(delay@j+1),w
	subwf	(delay@i+1),w
	skipz
	goto	u2395
	movf	(delay@j),w
	subwf	(delay@i),w
u2395:
	skipc
	goto	u2391
	goto	u2390
u2391:
	goto	l2032
u2390:
	goto	l580
	
l579:	
	line	25
	
l580:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text331,local,class=CODE,delta=2
global __ptext331
__ptext331:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
