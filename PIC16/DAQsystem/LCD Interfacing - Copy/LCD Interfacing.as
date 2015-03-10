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
# 15 "C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\main.h"
	psect config,class=CONFIG,delta=2 ;#
# 15 "C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\main.h"
	dw 0x2F0A ;#
	FNCALL	_main,_MainSystemInitialize
	FNCALL	_main,_SendStringSerially
	FNCALL	_main,_ADCReadData
	FNCALL	_main,___ftdiv
	FNCALL	_main,___ftmul
	FNCALL	_main,_SendFloatSerially
	FNCALL	_main,_Delay
	FNCALL	_main,___ftge
	FNCALL	_main,___fttol
	FNCALL	_main,_SendIntegerSerially
	FNCALL	_main,_SendByteSerially
	FNCALL	_SendFloatSerially,___ftge
	FNCALL	_SendFloatSerially,_SendByteSerially
	FNCALL	_SendFloatSerially,___ftneg
	FNCALL	_SendFloatSerially,___fttol
	FNCALL	_SendFloatSerially,_SendIntegerSerially
	FNCALL	_SendFloatSerially,___awtoft
	FNCALL	_SendFloatSerially,___ftadd
	FNCALL	_SendFloatSerially,___ftmul
	FNCALL	_SendFloatSerially,___awmod
	FNCALL	_SendFloatSerially,___awdiv
	FNCALL	_ADCReadData,_Delay
	FNCALL	_ADCReadData,___wmul
	FNCALL	_ADCReadData,___lwtoft
	FNCALL	_ADCReadData,___ftmul
	FNCALL	_ADCReadData,___ftdiv
	FNCALL	___lwtoft,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_SendIntegerSerially,_SendByteSerially
	FNCALL	_SendIntegerSerially,___awmod
	FNCALL	_SendIntegerSerially,___awdiv
	FNCALL	_SendStringSerially,_SendByteSerially
	FNCALL	_MainSystemInitialize,_ADCInitialize
	FNCALL	_MainSystemInitialize,_InitializeSerialCommunication
	FNROOT	_main
	global	_AT3
	global	_TH_Err
	global	_TL_Err
	global	_HYS_Err
	global	_AT1
	global	_AT
	global	_AT0
	global	_AT2
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\main.h"
	line	31

;initializer for _AT3
	retlw	054h
	retlw	02Dh
	retlw	04Ch
	retlw	06Fh
	retlw	077h
	retlw	020h
	retlw	03Ah
psect	idataBANK2,class=CODE,space=0,delta=2
global __pidataBANK2
__pidataBANK2:
	line	33

;initializer for _TH_Err
	retlw	054h
	retlw	065h
	retlw	06Dh
	retlw	070h
	retlw	065h
	retlw	072h
	retlw	061h
	retlw	074h
	retlw	075h
	retlw	072h
	retlw	065h
	retlw	020h
	retlw	075h
	retlw	070h
	retlw	070h
	retlw	065h
	retlw	072h
	retlw	020h
	retlw	06Ch
	retlw	069h
	retlw	06Dh
	retlw	069h
	retlw	074h
	retlw	020h
	retlw	069h
	retlw	073h
	retlw	020h
	retlw	074h
	retlw	06Fh
	retlw	06Fh
	retlw	020h
	retlw	068h
	retlw	069h
	retlw	067h
	retlw	068h
	line	34

;initializer for _TL_Err
	retlw	054h
	retlw	065h
	retlw	06Dh
	retlw	070h
	retlw	065h
	retlw	072h
	retlw	061h
	retlw	074h
	retlw	075h
	retlw	072h
	retlw	065h
	retlw	020h
	retlw	06Ch
	retlw	06Fh
	retlw	077h
	retlw	065h
	retlw	072h
	retlw	020h
	retlw	06Ch
	retlw	069h
	retlw	06Dh
	retlw	069h
	retlw	074h
	retlw	020h
	retlw	069h
	retlw	073h
	retlw	020h
	retlw	074h
	retlw	06Fh
	retlw	06Fh
	retlw	020h
	retlw	06Ch
	retlw	06Fh
	retlw	077h
psect	idataBANK3,class=CODE,space=0,delta=2
global __pidataBANK3
__pidataBANK3:
	line	32

;initializer for _HYS_Err
	retlw	054h
	retlw	065h
	retlw	06Dh
	retlw	070h
	retlw	065h
	retlw	072h
	retlw	061h
	retlw	074h
	retlw	075h
	retlw	072h
	retlw	065h
	retlw	020h
	retlw	06Ch
	retlw	069h
	retlw	06Dh
	retlw	069h
	retlw	074h
	retlw	073h
	retlw	020h
	retlw	061h
	retlw	072h
	retlw	065h
	retlw	020h
	retlw	074h
	retlw	06Fh
	retlw	06Fh
	retlw	020h
	retlw	063h
	retlw	06Ch
	retlw	06Fh
	retlw	073h
	retlw	065h
	line	29

;initializer for _AT1
	retlw	050h
	retlw	06Ch
	retlw	065h
	retlw	061h
	retlw	073h
	retlw	065h
	retlw	020h
	retlw	045h
	retlw	06Eh
	retlw	074h
	retlw	065h
	retlw	072h
	retlw	020h
	retlw	054h
	retlw	065h
	retlw	06Dh
	retlw	070h
	retlw	065h
	retlw	072h
	retlw	061h
	retlw	074h
	retlw	075h
	retlw	072h
	retlw	065h
	retlw	020h
	retlw	04Ch
	retlw	069h
	retlw	06Dh
	retlw	069h
	retlw	074h
	retlw	073h
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	27

;initializer for _AT
	retlw	054h
	retlw	045h
	retlw	04Dh
	retlw	050h
	retlw	045h
	retlw	052h
	retlw	041h
	retlw	054h
	retlw	055h
	retlw	052h
	retlw	045h
	retlw	020h
	retlw	043h
	retlw	04Fh
	retlw	04Eh
	retlw	054h
	retlw	052h
	retlw	04Fh
	retlw	04Ch
	retlw	04Ch
	retlw	045h
	retlw	052h
	retlw	020h
	retlw	04Bh
	retlw	049h
	retlw	054h
	line	28

;initializer for _AT0
	retlw	052h
	retlw	06Fh
	retlw	06Fh
	retlw	06Dh
	retlw	020h
	retlw	054h
	retlw	065h
	retlw	06Dh
	retlw	070h
	retlw	065h
	retlw	072h
	retlw	061h
	retlw	074h
	retlw	075h
	retlw	072h
	retlw	065h
	line	30

;initializer for _AT2
	retlw	054h
	retlw	02Dh
	retlw	048h
	retlw	069h
	retlw	067h
	retlw	068h
	retlw	020h
	retlw	03Ah
	global	_THigh
	global	_TLow
	global	_flag1
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTE
_PORTE	set	9
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
	global	_ADCS0
_ADCS0	set	254
	global	_ADCS1
_ADCS1	set	255
	global	_ADON
_ADON	set	248
	global	_RCIF
_RCIF	set	101
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_TXIF
_TXIF	set	100
	global	_ADRESL
_ADRESL	set	158
	global	_SPBRG
_SPBRG	set	153
	global	_TRISE
_TRISE	set	137
	global	_TXSTA
_TXSTA	set	152
	global	_ADCS2
_ADCS2	set	1278
	global	_ADFM
_ADFM	set	1279
	global	_PCFG0
_PCFG0	set	1272
	global	_PCFG1
_PCFG1	set	1273
	global	_PCFG2
_PCFG2	set	1274
	global	_PCFG3
_PCFG3	set	1275
	global	_SYNC
_SYNC	set	1220
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_7:	
	retlw	80	;'P'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	88	;'X'
	retlw	73	;'I'
	retlw	77	;'M'
	retlw	73	;'I'
	retlw	84	;'T'
	retlw	89	;'Y'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_5:	
	retlw	76	;'L'
	retlw	85	;'U'
	retlw	77	;'M'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	79	;'O'
	retlw	85	;'U'
	retlw	83	;'S'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	83	;'S'
	retlw	73	;'I'
	retlw	84	;'T'
	retlw	89	;'Y'
	retlw	32	;' '
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_8:	
	retlw	79	;'O'
	retlw	66	;'B'
	retlw	74	;'J'
	retlw	69	;'E'
	retlw	67	;'C'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	66	;'B'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_3:	
	retlw	71	;'G'
	retlw	65	;'A'
	retlw	83	;'S'
	retlw	32	;' '
	retlw	68	;'D'
	retlw	69	;'E'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	67	;'C'
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_4:	
	retlw	71	;'G'
	retlw	65	;'A'
	retlw	83	;'S'
	retlw	32	;' '
	retlw	65	;'A'
	retlw	66	;'B'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	84	;'T'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_11:	
	retlw	78	;'N'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	77	;'M'
	retlw	97	;'a'
	retlw	103	;'g'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	99	;'c'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_1:	
	retlw	84	;'T'
	retlw	69	;'E'
	retlw	77	;'M'
	retlw	80	;'P'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	85	;'U'
	retlw	82	;'R'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_9:	
	retlw	72	;'H'
	retlw	85	;'U'
	retlw	77	;'M'
	retlw	73	;'I'
	retlw	68	;'D'
	retlw	73	;'I'
	retlw	84	;'T'
	retlw	89	;'Y'
	retlw	32	;' '
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_2:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	67	;'C'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_6:	
	retlw	32	;' '
	retlw	67	;'C'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_10:	
	retlw	37	;'%'
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
STR_12	equ	STR_11+4
STR_13	equ	STR_10+4
STR_14	equ	STR_10+5
	file	"LCD Interfacing.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_THigh:
       ds      4

_TLow:
       ds      4

_flag1:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\main.h"
	line	31
_AT3:
       ds      7

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\main.h"
	line	27
_AT:
       ds      26

psect	dataBANK1
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\main.h"
	line	28
_AT0:
       ds      16

psect	dataBANK1
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\main.h"
	line	30
_AT2:
       ds      8

psect	dataBANK3,class=BANK3,space=1
global __pdataBANK3
__pdataBANK3:
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\main.h"
	line	32
_HYS_Err:
       ds      32

psect	dataBANK3
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\main.h"
	line	29
_AT1:
       ds      31

psect	dataBANK2,class=BANK2,space=1
global __pdataBANK2
__pdataBANK2:
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\main.h"
	line	33
_TH_Err:
       ds      35

psect	dataBANK2
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\main.h"
	line	34
_TL_Err:
       ds      34

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK3
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK3
	bsf	status, 7	;select IRP bank2
	movlw low(__pdataBANK3+63)
	movwf btemp-1,f
	movlw high(__pidataBANK3)
	movwf btemp,f
	movlw low(__pidataBANK3)
	movwf btemp+1,f
	movlw low(__pdataBANK3)
	movwf fsr,f
	fcall init_ram
; Initialize objects allocated to BANK2
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK2
	movlw low(__pdataBANK2+69)
	movwf btemp-1,f
	movlw high(__pidataBANK2)
	movwf btemp,f
	movlw low(__pidataBANK2)
	movwf btemp+1,f
	movlw low(__pdataBANK2)
	movwf fsr,f
	fcall init_ram
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK1
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK1+50)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
	movwf fsr,f
	fcall init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	movlw low(__pdataBANK0+7)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_MainSystemInitialize
?_MainSystemInitialize:	; 0 bytes @ 0x0
	global	??_MainSystemInitialize
??_MainSystemInitialize:	; 0 bytes @ 0x0
	global	?_SendStringSerially
?_SendStringSerially:	; 0 bytes @ 0x0
	global	?_SendByteSerially
?_SendByteSerially:	; 0 bytes @ 0x0
	global	??_SendByteSerially
??_SendByteSerially:	; 0 bytes @ 0x0
	global	?_InitializeSerialCommunication
?_InitializeSerialCommunication:	; 0 bytes @ 0x0
	global	??_InitializeSerialCommunication
??_InitializeSerialCommunication:	; 0 bytes @ 0x0
	global	?_Delay
?_Delay:	; 0 bytes @ 0x0
	global	?_ADCInitialize
?_ADCInitialize:	; 0 bytes @ 0x0
	global	??_ADCInitialize
??_ADCInitialize:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___ftge
?___ftge:	; 1 bit 
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	?___fttol
?___fttol:	; 4 bytes @ 0x0
	global	SendByteSerially@byte
SendByteSerially@byte:	; 1 bytes @ 0x0
	global	Delay@time
Delay@time:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	??_SendStringSerially
??_SendStringSerially:	; 0 bytes @ 0x1
	ds	1
	global	??_Delay
??_Delay:	; 0 bytes @ 0x2
	global	SendStringSerially@serial_string
SendStringSerially@serial_string:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	Delay@pause
Delay@pause:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___fttol
??___fttol:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	??___ftge
??___ftge:	; 0 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x8
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x8
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x8
	ds	1
	global	?_SendIntegerSerially
?_SendIntegerSerially:	; 0 bytes @ 0x9
	global	SendIntegerSerially@IntegerNumber
SendIntegerSerially@IntegerNumber:	; 2 bytes @ 0x9
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x9
	ds	2
	global	??_SendIntegerSerially
??_SendIntegerSerially:	; 0 bytes @ 0xB
	global	??___ftneg
??___ftneg:	; 0 bytes @ 0xB
	global	??___lwtoft
??___lwtoft:	; 0 bytes @ 0xB
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0xB
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0xB
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0xB
	ds	2
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0x0
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0x0
	global	SendIntegerSerially@c
SendIntegerSerially@c:	; 6 bytes @ 0x0
	ds	2
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x2
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x3
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x3
	ds	1
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x4
	ds	1
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x5
	ds	1
	global	SendIntegerSerially@i
SendIntegerSerially@i:	; 1 bytes @ 0x6
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x6
	ds	2
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x8
	ds	1
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x9
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x9
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0xD
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0xE
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0xF
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x10
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x10
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x13
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x16
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x1A
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x1B
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x1E
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x1F
	ds	1
	global	?_SendFloatSerially
?_SendFloatSerially:	; 0 bytes @ 0x20
	global	?_ADCReadData
?_ADCReadData:	; 3 bytes @ 0x20
	global	SendFloatSerially@FloatNumber
SendFloatSerially@FloatNumber:	; 3 bytes @ 0x20
	ds	3
	global	??_SendFloatSerially
??_SendFloatSerially:	; 0 bytes @ 0x23
	global	??_ADCReadData
??_ADCReadData:	; 0 bytes @ 0x23
	ds	1
	global	SendFloatSerially@c
SendFloatSerially@c:	; 4 bytes @ 0x24
	ds	1
	global	ADCReadData@f
ADCReadData@f:	; 3 bytes @ 0x25
	ds	3
	global	ADCReadData@x
ADCReadData@x:	; 2 bytes @ 0x28
	global	_SendFloatSerially$1278
_SendFloatSerially$1278:	; 3 bytes @ 0x28
	ds	2
	global	ADCReadData@y
ADCReadData@y:	; 2 bytes @ 0x2A
	ds	1
	global	SendFloatSerially@Temp
SendFloatSerially@Temp:	; 2 bytes @ 0x2B
	ds	1
	global	ADCReadData@c
ADCReadData@c:	; 2 bytes @ 0x2C
	ds	1
	global	SendFloatSerially@i
SendFloatSerially@i:	; 1 bytes @ 0x2D
	ds	1
	global	ADCReadData@z
ADCReadData@z:	; 2 bytes @ 0x2E
	global	SendFloatSerially@n
SendFloatSerially@n:	; 2 bytes @ 0x2E
	ds	2
	global	ADCReadData@ChannelNumber
ADCReadData@ChannelNumber:	; 1 bytes @ 0x30
	ds	1
	global	ADCReadData@p
ADCReadData@p:	; 3 bytes @ 0x31
	ds	3
	global	??_main
??_main:	; 0 bytes @ 0x34
	ds	1
	global	main@temp1
main@temp1:	; 2 bytes @ 0x35
	ds	2
	global	main@temp
main@temp:	; 3 bytes @ 0x37
	ds	3
;;Data sizes: Strings 159, constant 0, data 189, bss 9, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     58      74
;; BANK1           80      0      50
;; BANK3           96      0      63
;; BANK2           96      0      69

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;
;; ?___ftneg	float  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?_ADCReadData	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___lwtoft	float  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; SendStringSerially@serial_string	PTR const unsigned char  size(1) Largest target is 21
;;		 -> STR_12(CODE[10]), STR_11(CODE[14]), STR_10(CODE[7]), STR_9(CODE[11]), 
;;		 -> STR_8(CODE[19]), STR_7(CODE[21]), STR_6(CODE[9]), STR_5(CODE[21]), 
;;		 -> STR_4(CODE[16]), STR_3(CODE[18]), STR_2(CODE[9]), STR_1(CODE[14]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___ftdiv
;;   _main->___fttol
;;   _SendFloatSerially->___fttol
;;   _SendFloatSerially->___awtoft
;;   _ADCReadData->___ftdiv
;;   ___lwtoft->___ftpack
;;   ___awtoft->___ftneg
;;   ___ftmul->___awtoft
;;   ___ftdiv->___ftpack
;;   ___ftadd->___awtoft
;;   _SendIntegerSerially->___awdiv
;;   _SendStringSerially->_SendByteSerially
;;   ___ftneg->___ftpack
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_ADCReadData
;;   _SendFloatSerially->___ftmul
;;   _ADCReadData->___ftmul
;;   ___ftmul->___ftadd
;;   ___ftadd->___awtoft
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
;; (0) _main                                                 6     6      0    8498
;;                                             52 BANK0      6     6      0
;;               _MainSystemInitialize
;;                 _SendStringSerially
;;                        _ADCReadData
;;                            ___ftdiv
;;                            ___ftmul
;;                  _SendFloatSerially
;;                              _Delay
;;                             ___ftge
;;                            ___fttol
;;                _SendIntegerSerially
;;                   _SendByteSerially
;; ---------------------------------------------------------------------------------
;; (1) _SendFloatSerially                                   16    13      3    4255
;;                                             32 BANK0     16    13      3
;;                             ___ftge
;;                   _SendByteSerially
;;                            ___ftneg
;;                            ___fttol
;;                _SendIntegerSerially
;;                           ___awtoft
;;                            ___ftadd
;;                            ___ftmul
;;                            ___awmod
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (1) _ADCReadData                                         21    18      3    1577
;;                                             32 BANK0     20    17      3
;;                              _Delay
;;                             ___wmul
;;                           ___lwtoft
;;                            ___ftmul
;;                            ___ftdiv
;; ---------------------------------------------------------------------------------
;; (2) ___lwtoft                                             4     1      3     231
;;                                              8 COMMON     4     1      3
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (2) ___awtoft                                             6     3      3     300
;;                                             11 COMMON     3     0      3
;;                                              0 BANK0      3     3      0
;;                           ___ftpack
;;                            ___ftneg (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftmul                                             16    10      6     535
;;                                             16 BANK0     16    10      6
;;                           ___ftpack
;;                            ___ftadd (ARG)
;;                            ___ftneg (ARG)
;;                           ___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___ftdiv                                             16    10      6     489
;;                                              8 COMMON     6     0      6
;;                                              0 BANK0     10    10      0
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (2) ___ftadd                                             13     7      6    1049
;;                                              3 BANK0     13     7      6
;;                           ___ftpack
;;                            ___ftneg (ARG)
;;                           ___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _SendIntegerSerially                                 10     8      2     867
;;                                              9 COMMON     3     1      2
;;                                              0 BANK0      7     7      0
;;                   _SendByteSerially
;;                            ___awmod
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (1) _SendStringSerially                                   2     2      0      67
;;                                              1 COMMON     2     2      0
;;                   _SendByteSerially
;; ---------------------------------------------------------------------------------
;; (1) _MainSystemInitialize                                 0     0      0       0
;;                      _ADCInitialize
;;      _InitializeSerialCommunication
;; ---------------------------------------------------------------------------------
;; (2) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___ftge                                              12     6      6     136
;;                                              0 COMMON    12     6      6
;; ---------------------------------------------------------------------------------
;; (2) ___ftneg                                              3     0      3      45
;;                                              8 COMMON     3     0      3
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (1) ___fttol                                             14    10      4     252
;;                                              0 COMMON    14    10      4
;; ---------------------------------------------------------------------------------
;; (3) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) _InitializeSerialCommunication                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _SendByteSerially                                     1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _ADCInitialize                                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _Delay                                                4     2      2      46
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _MainSystemInitialize
;;     _ADCInitialize
;;     _InitializeSerialCommunication
;;   _SendStringSerially
;;     _SendByteSerially
;;   _ADCReadData
;;     _Delay
;;     ___wmul
;;     ___lwtoft
;;       ___ftpack
;;     ___ftmul
;;       ___ftpack
;;       ___ftadd (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;         ___awtoft (ARG)
;;           ___ftpack
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;     ___ftdiv
;;       ___ftpack
;;   ___ftdiv
;;     ___ftpack
;;   ___ftmul
;;     ___ftpack
;;     ___ftadd (ARG)
;;       ___ftpack
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;     ___ftneg (ARG)
;;       ___ftpack (ARG)
;;     ___awtoft (ARG)
;;       ___ftpack
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;   _SendFloatSerially
;;     ___ftge
;;     _SendByteSerially
;;     ___ftneg
;;       ___ftpack (ARG)
;;     ___fttol
;;     _SendIntegerSerially
;;       _SendByteSerially
;;       ___awmod
;;       ___awdiv
;;     ___awtoft
;;       ___ftpack
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;     ___ftadd
;;       ___ftpack
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;     ___ftmul
;;       ___ftpack
;;       ___ftadd (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;         ___awtoft (ARG)
;;           ___ftpack
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;     ___awmod
;;     ___awdiv
;;   _Delay
;;   ___ftge
;;   ___fttol
;;   _SendIntegerSerially
;;     _SendByteSerially
;;     ___awmod
;;     ___awdiv
;;   _SendByteSerially
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0      3F       9       65.6%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0      45      11       71.9%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0      32       7       62.5%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0     111      12        0.0%
;;ABS                  0      0     10E       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       3       2        0.0%
;;BANK0               50     3A      4A       5       92.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 6 in file "C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\main1.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            3   55[BANK0 ] float 
;;  temp1           2   53[BANK0 ] unsigned int 
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
;;      Locals:         0       5       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_MainSystemInitialize
;;		_SendStringSerially
;;		_ADCReadData
;;		___ftdiv
;;		___ftmul
;;		_SendFloatSerially
;;		_Delay
;;		___ftge
;;		___fttol
;;		_SendIntegerSerially
;;		_SendByteSerially
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\main1.c"
	line	6
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	10
	
l4358:	
;main1.c: 8: float temp;
;main1.c: 9: unsigned int temp1;
;main1.c: 10: TRISE |= 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(137)^080h,f	;volatile
	line	11
;main1.c: 11: PORTE |= 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	iorwf	(9),f	;volatile
	line	12
	
l4360:	
;main1.c: 12: MainSystemInitialize();
	fcall	_MainSystemInitialize
	goto	l4362
	line	15
;main1.c: 14: for(;;)
	
l1173:	
	line	17
	
l4362:	
;main1.c: 15: {
;main1.c: 17: SendStringSerially("TEMPERATURE :");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_SendStringSerially
	line	18
	
l4364:	
;main1.c: 18: temp = ADCReadData(0x10);
	movlw	(010h)
	fcall	_ADCReadData
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_ADCReadData)),w
	movwf	(main@temp)
	movf	(1+(?_ADCReadData)),w
	movwf	(main@temp+1)
	movf	(2+(?_ADCReadData)),w
	movwf	(main@temp+2)
	line	19
	
l4366:	
;main1.c: 19: temp=(temp/2)*100;
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x40
	movwf	(?___ftdiv+2)
	movf	(main@temp),w
	movwf	0+(?___ftdiv)+03h
	movf	(main@temp+1),w
	movwf	1+(?___ftdiv)+03h
	movf	(main@temp+2),w
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@temp)
	movf	(1+(?___ftdiv)),w
	movwf	(main@temp+1)
	movf	(2+(?___ftdiv)),w
	movwf	(main@temp+2)
	
l4368:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0xc8
	movwf	(?___ftmul+1)
	movlw	0x42
	movwf	(?___ftmul+2)
	movf	(main@temp),w
	movwf	0+(?___ftmul)+03h
	movf	(main@temp+1),w
	movwf	1+(?___ftmul)+03h
	movf	(main@temp+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(main@temp)
	movf	(1+(?___ftmul)),w
	movwf	(main@temp+1)
	movf	(2+(?___ftmul)),w
	movwf	(main@temp+2)
	line	20
	
l4370:	
;main1.c: 20: SendFloatSerially(temp);
	movf	(main@temp),w
	movwf	(?_SendFloatSerially)
	movf	(main@temp+1),w
	movwf	(?_SendFloatSerially+1)
	movf	(main@temp+2),w
	movwf	(?_SendFloatSerially+2)
	fcall	_SendFloatSerially
	line	21
	
l4372:	
;main1.c: 21: SendStringSerially("  C     ");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_SendStringSerially
	line	23
	
l4374:	
;main1.c: 23: Delay(200);
	movlw	low(0C8h)
	movwf	(?_Delay)
	movlw	high(0C8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	25
	
l4376:	
;main1.c: 25: temp = ADCReadData(0x20);
	movlw	(020h)
	fcall	_ADCReadData
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_ADCReadData)),w
	movwf	(main@temp)
	movf	(1+(?_ADCReadData)),w
	movwf	(main@temp+1)
	movf	(2+(?_ADCReadData)),w
	movwf	(main@temp+2)
	line	26
	
l4378:	
;main1.c: 26: if(temp>2.8)
	movlw	0x33
	movwf	(?___ftge)
	movlw	0x33
	movwf	(?___ftge+1)
	movlw	0x40
	movwf	(?___ftge+2)
	movf	(main@temp),w
	movwf	0+(?___ftge)+03h
	movf	(main@temp+1),w
	movwf	1+(?___ftge)+03h
	movf	(main@temp+2),w
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u3621
	goto	u3620
u3621:
	goto	l4382
u3620:
	line	27
	
l4380:	
;main1.c: 27: SendStringSerially("GAS DETECTED     ");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_SendStringSerially
	goto	l4386
	line	28
	
l1174:	
	
l4382:	
;main1.c: 28: else if(temp<2.8)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@temp),w
	movwf	(?___ftge)
	movf	(main@temp+1),w
	movwf	(?___ftge+1)
	movf	(main@temp+2),w
	movwf	(?___ftge+2)
	movlw	0x33
	movwf	0+(?___ftge)+03h
	movlw	0x33
	movwf	1+(?___ftge)+03h
	movlw	0x40
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u3631
	goto	u3630
u3631:
	goto	l4386
u3630:
	line	29
	
l4384:	
;main1.c: 29: SendStringSerially("GAS ABSENT     ");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_SendStringSerially
	goto	l4386
	
l1176:	
	goto	l4386
	line	31
	
l1175:	
	
l4386:	
;main1.c: 31: Delay(200);
	movlw	low(0C8h)
	movwf	(?_Delay)
	movlw	high(0C8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	33
	
l4388:	
;main1.c: 33: SendStringSerially("LUMINOUS INTENSITY :");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_SendStringSerially
	line	34
;main1.c: 34: temp = ADCReadData(0x08);
	movlw	(08h)
	fcall	_ADCReadData
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_ADCReadData)),w
	movwf	(main@temp)
	movf	(1+(?_ADCReadData)),w
	movwf	(main@temp+1)
	movf	(2+(?_ADCReadData)),w
	movwf	(main@temp+2)
	line	35
;main1.c: 35: temp*=2;
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x40
	movwf	(?___ftmul+2)
	movf	(main@temp),w
	movwf	0+(?___ftmul)+03h
	movf	(main@temp+1),w
	movwf	1+(?___ftmul)+03h
	movf	(main@temp+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(main@temp)
	movf	(1+(?___ftmul)),w
	movwf	(main@temp+1)
	movf	(2+(?___ftmul)),w
	movwf	(main@temp+2)
	line	36
;main1.c: 36: temp1=temp;
	movf	(main@temp),w
	movwf	(?___fttol)
	movf	(main@temp+1),w
	movwf	(?___fttol+1)
	movf	(main@temp+2),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@temp1+1)
	addwf	(main@temp1+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(main@temp1)
	addwf	(main@temp1)

	line	37
	
l4390:	
;main1.c: 37: SendIntegerSerially(temp1);
	movf	(main@temp1+1),w
	clrf	(?_SendIntegerSerially+1)
	addwf	(?_SendIntegerSerially+1)
	movf	(main@temp1),w
	clrf	(?_SendIntegerSerially)
	addwf	(?_SendIntegerSerially)

	fcall	_SendIntegerSerially
	line	38
	
l4392:	
;main1.c: 38: SendStringSerially(" Cd     ");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_SendStringSerially
	line	40
	
l4394:	
;main1.c: 40: Delay(200);
	movlw	low(0C8h)
	movwf	(?_Delay)
	movlw	high(0C8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	42
	
l4396:	
;main1.c: 42: if(RE0 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(72/8),(72)&7
	goto	u3641
	goto	u3640
u3641:
	goto	l1177
u3640:
	line	44
	
l4398:	
;main1.c: 43: {
;main1.c: 44: SendStringSerially("PROXIMITY ALERT     ");
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_SendStringSerially
	line	45
;main1.c: 45: }
	goto	l4402
	line	46
	
l1177:	
;main1.c: 46: else if(RE0 == 0)
	btfsc	(72/8),(72)&7
	goto	u3651
	goto	u3650
u3651:
	goto	l4402
u3650:
	line	48
	
l4400:	
;main1.c: 47: {
;main1.c: 48: SendStringSerially("OBJECT ABSENT     ");
	movlw	((STR_8-__stringbase))&0ffh
	fcall	_SendStringSerially
	goto	l4402
	line	49
	
l1179:	
	goto	l4402
	line	51
	
l1178:	
	
l4402:	
;main1.c: 49: }
;main1.c: 51: Delay(200);
	movlw	low(0C8h)
	movwf	(?_Delay)
	movlw	high(0C8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	53
	
l4404:	
;main1.c: 53: SendStringSerially("HUMIDITY :");
	movlw	((STR_9-__stringbase))&0ffh
	fcall	_SendStringSerially
	line	54
;main1.c: 54: temp = ADCReadData(0x00);
	movlw	(0)
	fcall	_ADCReadData
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_ADCReadData)),w
	movwf	(main@temp)
	movf	(1+(?_ADCReadData)),w
	movwf	(main@temp+1)
	movf	(2+(?_ADCReadData)),w
	movwf	(main@temp+2)
	line	55
;main1.c: 55: temp*=30;
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0xf0
	movwf	(?___ftmul+1)
	movlw	0x41
	movwf	(?___ftmul+2)
	movf	(main@temp),w
	movwf	0+(?___ftmul)+03h
	movf	(main@temp+1),w
	movwf	1+(?___ftmul)+03h
	movf	(main@temp+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(main@temp)
	movf	(1+(?___ftmul)),w
	movwf	(main@temp+1)
	movf	(2+(?___ftmul)),w
	movwf	(main@temp+2)
	line	56
;main1.c: 56: temp1=temp;
	movf	(main@temp),w
	movwf	(?___fttol)
	movf	(main@temp+1),w
	movwf	(?___fttol+1)
	movf	(main@temp+2),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@temp1+1)
	addwf	(main@temp1+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(main@temp1)
	addwf	(main@temp1)

	line	57
	
l4406:	
;main1.c: 57: SendIntegerSerially(temp1);
	movf	(main@temp1+1),w
	clrf	(?_SendIntegerSerially+1)
	addwf	(?_SendIntegerSerially+1)
	movf	(main@temp1),w
	clrf	(?_SendIntegerSerially)
	addwf	(?_SendIntegerSerially)

	fcall	_SendIntegerSerially
	line	58
	
l4408:	
;main1.c: 58: SendStringSerially("%     ");
	movlw	((STR_10-__stringbase))&0ffh
	fcall	_SendStringSerially
	line	60
	
l4410:	
;main1.c: 60: Delay(200);
	movlw	low(0C8h)
	movwf	(?_Delay)
	movlw	high(0C8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	62
	
l4412:	
;main1.c: 62: if(RE1 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(73/8),(73)&7
	goto	u3661
	goto	u3660
u3661:
	goto	l4416
u3660:
	line	64
	
l4414:	
;main1.c: 63: {
;main1.c: 64: SendStringSerially("Non Magnetic ");
	movlw	((STR_11-__stringbase))&0ffh
	fcall	_SendStringSerially
	goto	l4416
	line	65
	
l1180:	
	line	66
	
l4416:	
;main1.c: 65: }
;main1.c: 66: if(RE1 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(73/8),(73)&7
	goto	u3671
	goto	u3670
u3671:
	goto	l4420
u3670:
	line	68
	
l4418:	
;main1.c: 67: {
;main1.c: 68: SendStringSerially("Magnetic ");
	movlw	((STR_12-__stringbase))&0ffh
	fcall	_SendStringSerially
	goto	l4420
	line	69
	
l1181:	
	line	70
	
l4420:	
;main1.c: 69: }
;main1.c: 70: SendByteSerially(0x0A);
	movlw	(0Ah)
	fcall	_SendByteSerially
	line	71
	
l4422:	
;main1.c: 71: SendByteSerially(0x0D);
	movlw	(0Dh)
	fcall	_SendByteSerially
	line	73
	
l4424:	
;main1.c: 73: Delay(3000);
	movlw	low(0BB8h)
	movwf	(?_Delay)
	movlw	high(0BB8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	74
;main1.c: 74: }
	goto	l4362
	
l1182:	
	line	75
	
l1183:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_SendFloatSerially
psect	text426,local,class=CODE,delta=2
global __ptext426
__ptext426:

;; *************** function _SendFloatSerially *****************
;; Defined at:
;;		line 84 in file "C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\serial.c"
;; Parameters:    Size  Location     Type
;;  FloatNumber     3   32[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  c               4   36[BANK0 ] unsigned char [4]
;;  n               2   46[BANK0 ] int 
;;  Temp            2   43[BANK0 ] int 
;;  i               1   45[BANK0 ] unsigned char 
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
;;      Locals:         0      12       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftge
;;		_SendByteSerially
;;		___ftneg
;;		___fttol
;;		_SendIntegerSerially
;;		___awtoft
;;		___ftadd
;;		___ftmul
;;		___awmod
;;		___awdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text426
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\serial.c"
	line	84
	global	__size_of_SendFloatSerially
	__size_of_SendFloatSerially	equ	__end_of_SendFloatSerially-_SendFloatSerially
	
_SendFloatSerially:	
	opt	stack 5
; Regs used in _SendFloatSerially: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	86
	
l4312:	
;serial.c: 85: unsigned char c[4];
;serial.c: 86: unsigned char i = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(SendFloatSerially@i)
	line	89
	
l4314:	
;serial.c: 87: int n, Temp;
;serial.c: 89: if(FloatNumber < 0)
	movf	(SendFloatSerially@FloatNumber),w
	movwf	(?___ftge)
	movf	(SendFloatSerially@FloatNumber+1),w
	movwf	(?___ftge+1)
	movf	(SendFloatSerially@FloatNumber+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x0
	movwf	1+(?___ftge)+03h
	movlw	0x0
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u3561
	goto	u3560
u3561:
	goto	l4320
u3560:
	line	91
	
l4316:	
;serial.c: 90: {
;serial.c: 91: SendByteSerially('-');
	movlw	(02Dh)
	fcall	_SendByteSerially
	line	92
	
l4318:	
;serial.c: 92: FloatNumber = -(FloatNumber);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SendFloatSerially@FloatNumber),w
	movwf	(?___ftneg)
	movf	(SendFloatSerially@FloatNumber+1),w
	movwf	(?___ftneg+1)
	movf	(SendFloatSerially@FloatNumber+2),w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(SendFloatSerially@FloatNumber)
	movf	(1+(?___ftneg)),w
	movwf	(SendFloatSerially@FloatNumber+1)
	movf	(2+(?___ftneg)),w
	movwf	(SendFloatSerially@FloatNumber+2)
	goto	l4320
	line	93
	
l1788:	
	line	94
	
l4320:	
;serial.c: 93: }
;serial.c: 94: n = FloatNumber;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SendFloatSerially@FloatNumber),w
	movwf	(?___fttol)
	movf	(SendFloatSerially@FloatNumber+1),w
	movwf	(?___fttol+1)
	movf	(SendFloatSerially@FloatNumber+2),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SendFloatSerially@n+1)
	addwf	(SendFloatSerially@n+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(SendFloatSerially@n)
	addwf	(SendFloatSerially@n)

	line	95
	
l4322:	
;serial.c: 95: Temp = n;
	movf	(SendFloatSerially@n+1),w
	clrf	(SendFloatSerially@Temp+1)
	addwf	(SendFloatSerially@Temp+1)
	movf	(SendFloatSerially@n),w
	clrf	(SendFloatSerially@Temp)
	addwf	(SendFloatSerially@Temp)

	line	96
	
l4324:	
;serial.c: 96: SendIntegerSerially(n);
	movf	(SendFloatSerially@n+1),w
	clrf	(?_SendIntegerSerially+1)
	addwf	(?_SendIntegerSerially+1)
	movf	(SendFloatSerially@n),w
	clrf	(?_SendIntegerSerially)
	addwf	(?_SendIntegerSerially)

	fcall	_SendIntegerSerially
	line	97
	
l4326:	
;serial.c: 97: SendByteSerially('.');
	movlw	(02Eh)
	fcall	_SendByteSerially
	line	98
	
l4328:	
;serial.c: 98: FloatNumber = ((FloatNumber - n) + 1) * 1000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SendFloatSerially@FloatNumber),w
	movwf	(?___ftadd)
	movf	(SendFloatSerially@FloatNumber+1),w
	movwf	(?___ftadd+1)
	movf	(SendFloatSerially@FloatNumber+2),w
	movwf	(?___ftadd+2)
	movf	(SendFloatSerially@n+1),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(SendFloatSerially@n),w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	movwf	(?___ftneg)
	movf	(1+(?___awtoft)),w
	movwf	(?___ftneg+1)
	movf	(2+(?___awtoft)),w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___ftneg)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___ftneg)),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(_SendFloatSerially$1278)
	movf	(1+(?___ftadd)),w
	movwf	(_SendFloatSerially$1278+1)
	movf	(2+(?___ftadd)),w
	movwf	(_SendFloatSerially$1278+2)
	
l4330:	
;serial.c: 98: FloatNumber = ((FloatNumber - n) + 1) * 1000;
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x7a
	movwf	(?___ftmul+1)
	movlw	0x44
	movwf	(?___ftmul+2)
	movlw	0x0
	movwf	(?___ftadd)
	movlw	0x80
	movwf	(?___ftadd+1)
	movlw	0x3f
	movwf	(?___ftadd+2)
	movf	(_SendFloatSerially$1278),w
	movwf	0+(?___ftadd)+03h
	movf	(_SendFloatSerially$1278+1),w
	movwf	1+(?___ftadd)+03h
	movf	(_SendFloatSerially$1278+2),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___ftadd)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___ftadd)),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(SendFloatSerially@FloatNumber)
	movf	(1+(?___ftmul)),w
	movwf	(SendFloatSerially@FloatNumber+1)
	movf	(2+(?___ftmul)),w
	movwf	(SendFloatSerially@FloatNumber+2)
	line	99
	
l4332:	
;serial.c: 99: n = FloatNumber;
	movf	(SendFloatSerially@FloatNumber),w
	movwf	(?___fttol)
	movf	(SendFloatSerially@FloatNumber+1),w
	movwf	(?___fttol+1)
	movf	(SendFloatSerially@FloatNumber+2),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SendFloatSerially@n+1)
	addwf	(SendFloatSerially@n+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(SendFloatSerially@n)
	addwf	(SendFloatSerially@n)

	line	101
;serial.c: 101: while(n > 0)
	goto	l4340
	
l1790:	
	line	103
	
l4334:	
;serial.c: 102: {
;serial.c: 103: c[i++] = (n % 10) + 48;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SendFloatSerially@n+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(SendFloatSerially@n),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_SendFloatSerially+0)+0
	movf	(SendFloatSerially@i),w
	addlw	SendFloatSerially@c&0ffh
	movwf	fsr0
	movf	(??_SendFloatSerially+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l4336:	
	movlw	(01h)
	movwf	(??_SendFloatSerially+0)+0
	movf	(??_SendFloatSerially+0)+0,w
	addwf	(SendFloatSerially@i),f
	line	104
	
l4338:	
;serial.c: 104: n /= 10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(SendFloatSerially@n+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(SendFloatSerially@n),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(SendFloatSerially@n+1)
	addwf	(SendFloatSerially@n+1)
	movf	(0+(?___awdiv)),w
	clrf	(SendFloatSerially@n)
	addwf	(SendFloatSerially@n)

	goto	l4340
	line	105
	
l1789:	
	line	101
	
l4340:	
	movf	(SendFloatSerially@n+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3575
	movlw	low(01h)
	subwf	(SendFloatSerially@n),w
u3575:

	skipnc
	goto	u3571
	goto	u3570
u3571:
	goto	l4334
u3570:
	goto	l4342
	
l1791:	
	line	106
	
l4342:	
;serial.c: 105: }
;serial.c: 106: i -= 1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(SendFloatSerially@i),f
	line	107
;serial.c: 107: while(i-- > 1)
	goto	l4346
	
l1793:	
	line	108
	
l4344:	
;serial.c: 108: SendByteSerially(c[i]);
	movf	(SendFloatSerially@i),w
	addlw	SendFloatSerially@c&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_SendByteSerially
	goto	l4346
	
l1792:	
	line	107
	
l4346:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(SendFloatSerially@i),f
	btfss	status,2
	goto	u3581
	goto	u3580
u3581:
	goto	l4344
u3580:
	goto	l4348
	
l1794:	
	line	110
	
l4348:	
;serial.c: 110: if(Temp < 10)
	movf	(SendFloatSerially@Temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u3595
	movlw	low(0Ah)
	subwf	(SendFloatSerially@Temp),w
u3595:

	skipnc
	goto	u3591
	goto	u3590
u3591:
	goto	l4352
u3590:
	line	112
	
l4350:	
;serial.c: 111: {
;serial.c: 112: SendByteSerially("  ");
	movlw	(STR_13)&0ffh
	fcall	_SendByteSerially
	goto	l4352
	line	114
	
l1795:	
	line	115
	
l4352:	
;serial.c: 114: }
;serial.c: 115: if(Temp >= 10 && Temp < 100)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SendFloatSerially@Temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u3605
	movlw	low(0Ah)
	subwf	(SendFloatSerially@Temp),w
u3605:

	skipc
	goto	u3601
	goto	u3600
u3601:
	goto	l1797
u3600:
	
l4354:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SendFloatSerially@Temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3615
	movlw	low(064h)
	subwf	(SendFloatSerially@Temp),w
u3615:

	skipnc
	goto	u3611
	goto	u3610
u3611:
	goto	l1797
u3610:
	line	117
	
l4356:	
;serial.c: 116: {
;serial.c: 117: SendByteSerially(" ");
	movlw	(STR_14)&0ffh
	fcall	_SendByteSerially
	goto	l1797
	line	119
	
l1796:	
	line	120
	
l1797:	
	return
	opt stack 0
GLOBAL	__end_of_SendFloatSerially
	__end_of_SendFloatSerially:
;; =============== function _SendFloatSerially ends ============

	signat	_SendFloatSerially,4216
	global	_ADCReadData
psect	text427,local,class=CODE,delta=2
global __ptext427
__ptext427:

;; *************** function _ADCReadData *****************
;; Defined at:
;;		line 13 in file "C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\adc.c"
;; Parameters:    Size  Location     Type
;;  ChannelNumbe    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ChannelNumbe    1   48[BANK0 ] unsigned char 
;;  p               3   49[BANK0 ] float 
;;  f               3   37[BANK0 ] float 
;;  z               2   46[BANK0 ] unsigned int 
;;  c               2   44[BANK0 ] unsigned int 
;;  y               2   42[BANK0 ] unsigned int 
;;  x               2   40[BANK0 ] unsigned int 
;;  count           1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  3   32[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0      15       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      20       0       0       0
;;Total ram usage:       20 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Delay
;;		___wmul
;;		___lwtoft
;;		___ftmul
;;		___ftdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text427
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\adc.c"
	line	13
	global	__size_of_ADCReadData
	__size_of_ADCReadData	equ	__end_of_ADCReadData-_ADCReadData
	
_ADCReadData:	
	opt	stack 5
; Regs used in _ADCReadData: [wreg+status,2+status,0+pclath+cstack]
;ADCReadData@ChannelNumber stored from wreg
	line	15
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ADCReadData@ChannelNumber)
	
l4284:	
;adc.c: 14: unsigned char count;
;adc.c: 15: unsigned x,y,c=0xff,z;
	movlw	low(0FFh)
	movwf	(ADCReadData@c)
	movlw	high(0FFh)
	movwf	((ADCReadData@c))+1
	line	16
;adc.c: 16: float p=0,f;
	movlw	0x0
	movwf	(ADCReadData@p)
	movlw	0x0
	movwf	(ADCReadData@p+1)
	movlw	0x0
	movwf	(ADCReadData@p+2)
	line	18
	
l4286:	
;adc.c: 18: ADCON0 = ((ADCON0 & 0xc7) | (ChannelNumber));
	movf	(31),w
	andlw	0C7h
	iorwf	(ADCReadData@ChannelNumber),w
	movwf	(31)	;volatile
	line	19
	
l4288:	
;adc.c: 19: Delay(1);
	movlw	low(01h)
	movwf	(?_Delay)
	movlw	high(01h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	21
	
l4290:	
;adc.c: 21: ADON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(248/8),(248)&7
	line	22
	
l4292:	
;adc.c: 22: ADCON0 |= 0x04;
	bsf	(31)+(2/8),(2)&7	;volatile
	line	23
;adc.c: 23: while( (ADCON0 & 0x02) == 1);
	goto	l4294
	
l574:	
	goto	l4294
	
l573:	
	
l4294:	
	movf	(31),w
	andlw	02h
	xorlw	01h
	skipnz
	goto	u3551
	goto	u3550
u3551:
	goto	l4294
u3550:
	goto	l4296
	
l575:	
	line	25
	
l4296:	
;adc.c: 25: x=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_ADCReadData+0)+0
	clrf	(??_ADCReadData+0)+0+1
	movf	0+(??_ADCReadData+0)+0,w
	movwf	(ADCReadData@x)
	movf	1+(??_ADCReadData+0)+0,w
	movwf	(ADCReadData@x+1)
	line	26
;adc.c: 26: y=ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_ADCReadData+0)+0
	clrf	(??_ADCReadData+0)+0+1
	movf	0+(??_ADCReadData+0)+0,w
	movwf	(ADCReadData@y)
	movf	1+(??_ADCReadData+0)+0,w
	movwf	(ADCReadData@y+1)
	line	28
	
l4298:	
;adc.c: 28: z=(x*c)+y;
	movf	(ADCReadData@x+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(ADCReadData@x),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	movf	(ADCReadData@c+1),w
	clrf	1+(?___wmul)+02h
	addwf	1+(?___wmul)+02h
	movf	(ADCReadData@c),w
	clrf	0+(?___wmul)+02h
	addwf	0+(?___wmul)+02h

	fcall	___wmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ADCReadData@y),w
	addwf	(0+(?___wmul)),w
	movwf	(ADCReadData@z)
	movf	(ADCReadData@y+1),w
	skipnc
	incf	(ADCReadData@y+1),w
	addwf	(1+(?___wmul)),w
	movwf	1+(ADCReadData@z)
	line	29
	
l4300:	
;adc.c: 29: f=z;
	movf	(ADCReadData@z+1),w
	clrf	(?___lwtoft+1)
	addwf	(?___lwtoft+1)
	movf	(ADCReadData@z),w
	clrf	(?___lwtoft)
	addwf	(?___lwtoft)

	fcall	___lwtoft
	movf	(0+(?___lwtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ADCReadData@f)
	movf	(1+(?___lwtoft)),w
	movwf	(ADCReadData@f+1)
	movf	(2+(?___lwtoft)),w
	movwf	(ADCReadData@f+2)
	line	30
	
l4302:	
;adc.c: 30: p =(f*5)/1023;
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0xa0
	movwf	(?___ftmul+1)
	movlw	0x40
	movwf	(?___ftmul+2)
	movf	(ADCReadData@f),w
	movwf	0+(?___ftmul)+03h
	movf	(ADCReadData@f+1),w
	movwf	1+(?___ftmul)+03h
	movf	(ADCReadData@f+2),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(ADCReadData@p)
	movf	(1+(?___ftmul)),w
	movwf	(ADCReadData@p+1)
	movf	(2+(?___ftmul)),w
	movwf	(ADCReadData@p+2)
	
l4304:	
	movlw	0xc0
	movwf	(?___ftdiv)
	movlw	0x7f
	movwf	(?___ftdiv+1)
	movlw	0x44
	movwf	(?___ftdiv+2)
	movf	(ADCReadData@p),w
	movwf	0+(?___ftdiv)+03h
	movf	(ADCReadData@p+1),w
	movwf	1+(?___ftdiv)+03h
	movf	(ADCReadData@p+2),w
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	movf	(0+(?___ftdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ADCReadData@p)
	movf	(1+(?___ftdiv)),w
	movwf	(ADCReadData@p+1)
	movf	(2+(?___ftdiv)),w
	movwf	(ADCReadData@p+2)
	line	32
	
l4306:	
;adc.c: 32: Delay(1);
	movlw	low(01h)
	movwf	(?_Delay)
	movlw	high(01h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	33
	
l4308:	
;adc.c: 33: return p;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ADCReadData@p),w
	movwf	(?_ADCReadData)
	movf	(ADCReadData@p+1),w
	movwf	(?_ADCReadData+1)
	movf	(ADCReadData@p+2),w
	movwf	(?_ADCReadData+2)
	goto	l576
	
l4310:	
	line	35
	
l576:	
	return
	opt stack 0
GLOBAL	__end_of_ADCReadData
	__end_of_ADCReadData:
;; =============== function _ADCReadData ends ============

	signat	_ADCReadData,4219
	global	___lwtoft
psect	text428,local,class=CODE,delta=2
global __ptext428
__ptext428:

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 29 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ADCReadData
;; This function uses a non-reentrant model
;;
psect	text428
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwtoft.c"
	line	29
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
	opt	stack 5
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l4280:	
	movf	(___lwtoft@c),w
	movwf	(?___ftpack)
	movf	(___lwtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___lwtoft+0)+0
	movf	(??___lwtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	goto	l2029
	
l4282:	
	line	31
	
l2029:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
;; =============== function ___lwtoft ends ============

	signat	___lwtoft,4219
	global	___awtoft
psect	text429,local,class=CODE,delta=2
global __ptext429
__ptext429:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   11[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    2[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   11[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         3       3       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_SendFloatSerially
;; This function uses a non-reentrant model
;;
psect	text429
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 5
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l4270:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awtoft@sign)
	line	37
	
l4272:	
	btfss	(___awtoft@c+1),7
	goto	u3541
	goto	u3540
u3541:
	goto	l4276
u3540:
	line	38
	
l4274:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	l4276
	line	40
	
l1942:	
	line	41
	
l4276:	
	movf	(___awtoft@c),w
	movwf	(?___ftpack)
	movf	(___awtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l1943
	
l4278:	
	line	42
	
l1943:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text430,local,class=CODE,delta=2
global __ptext430
__ptext430:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   16[BANK0 ] float 
;;  f2              3   19[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   27[BANK0 ] unsigned um
;;  sign            1   31[BANK0 ] unsigned char 
;;  cntr            1   30[BANK0 ] unsigned char 
;;  exp             1   26[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   16[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ADCReadData
;;		_main
;;		_SendFloatSerially
;; This function uses a non-reentrant model
;;
psect	text430
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 5
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l4220:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u3401
	goto	u3400
u3401:
	goto	l4226
u3400:
	line	57
	
l4222:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l1905
	
l4224:	
	goto	l1905
	
l1904:	
	line	58
	
l4226:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u3411
	goto	u3410
u3411:
	goto	l4232
u3410:
	line	59
	
l4228:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l1905
	
l4230:	
	goto	l1905
	
l1906:	
	line	60
	
l4232:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	61
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3425:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3420:
	addlw	-1
	skipz
	goto	u3425
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	62
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3435:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3430:
	addlw	-1
	skipz
	goto	u3435
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	64
	
l4234:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l4236:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l4238:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l4240:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l4242:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l4244
	line	70
	
l1907:	
	line	71
	
l4244:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3441
	goto	u3440
u3441:
	goto	l4248
u3440:
	line	72
	
l4246:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3451
	addwf	(___ftmul@f3_as_product+1),f
u3451:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3452
	addwf	(___ftmul@f3_as_product+2),f
u3452:

	goto	l4248
	
l1908:	
	line	73
	
l4248:	
	movlw	01h
u3465:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3465

	line	74
	
l4250:	
	movlw	01h
u3475:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u3475
	line	75
	
l4252:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3481
	goto	u3480
u3481:
	goto	l4244
u3480:
	goto	l4254
	
l1909:	
	line	76
	
l4254:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l4256
	line	77
	
l1910:	
	line	78
	
l4256:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3491
	goto	u3490
u3491:
	goto	l4260
u3490:
	line	79
	
l4258:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3501
	addwf	(___ftmul@f3_as_product+1),f
u3501:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3502
	addwf	(___ftmul@f3_as_product+2),f
u3502:

	goto	l4260
	
l1911:	
	line	80
	
l4260:	
	movlw	01h
u3515:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3515

	line	81
	
l4262:	
	movlw	01h
u3525:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u3525

	line	82
	
l4264:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3531
	goto	u3530
u3531:
	goto	l4256
u3530:
	goto	l4266
	
l1912:	
	line	83
	
l4266:	
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l1905
	
l4268:	
	line	84
	
l1905:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text431,local,class=CODE,delta=2
global __ptext431
__ptext431:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    8[COMMON] float 
;;  f1              3   11[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  f3              3    5[BANK0 ] float 
;;  sign            1    9[BANK0 ] unsigned char 
;;  exp             1    8[BANK0 ] unsigned char 
;;  cntr            1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         6       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         6      10       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ADCReadData
;;		_main
;; This function uses a non-reentrant model
;;
psect	text431
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 6
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l4178:	
	movf	(___ftdiv@f1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@exp)
	movf	((___ftdiv@exp)),f
	skipz
	goto	u3321
	goto	u3320
u3321:
	goto	l4184
u3320:
	line	56
	
l4180:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l1895
	
l4182:	
	goto	l1895
	
l1894:	
	line	57
	
l4184:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	clrc
	rlf	(??___ftdiv+0)+1,w
	rlf	(??___ftdiv+0)+2,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	movf	((___ftdiv@sign)),f
	skipz
	goto	u3331
	goto	u3330
u3331:
	goto	l4190
u3330:
	line	58
	
l4186:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l1895
	
l4188:	
	goto	l1895
	
l1896:	
	line	59
	
l4190:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l4192:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l4194:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3345:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3340:
	addlw	-1
	skipz
	goto	u3345
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l4196:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3355:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3350:
	addlw	-1
	skipz
	goto	u3355
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l4198:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l4200:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l4202:	
	bsf	(___ftdiv@f2)+(15/8),(15)&7
	line	67
	movlw	0FFh
	andwf	(___ftdiv@f2),f
	movlw	0FFh
	andwf	(___ftdiv@f2+1),f
	movlw	0
	andwf	(___ftdiv@f2+2),f
	line	68
	movlw	(018h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	(___ftdiv@cntr)
	goto	l4204
	line	69
	
l1897:	
	line	70
	
l4204:	
	movlw	01h
u3365:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u3365
	line	71
	
l4206:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u3375
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u3375
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u3375:
	skipc
	goto	u3371
	goto	u3370
u3371:
	goto	l4212
u3370:
	line	72
	
l4208:	
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),f
	movf	(___ftdiv@f2+1),w
	skipc
	incfsz	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),f
	movf	(___ftdiv@f2+2),w
	skipc
	incf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),f
	line	73
	
l4210:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l4212
	line	74
	
l1898:	
	line	75
	
l4212:	
	movlw	01h
u3385:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u3385
	line	76
	
l4214:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u3391
	goto	u3390
u3391:
	goto	l4204
u3390:
	goto	l4216
	
l1899:	
	line	77
	
l4216:	
	movf	(___ftdiv@f3),w
	movwf	(?___ftpack)
	movf	(___ftdiv@f3+1),w
	movwf	(?___ftpack+1)
	movf	(___ftdiv@f3+2),w
	movwf	(?___ftpack+2)
	movf	(___ftdiv@exp),w
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftdiv@sign),w
	movwf	(??___ftdiv+1)+0
	movf	(??___ftdiv+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l1895
	
l4218:	
	line	78
	
l1895:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___ftadd
psect	text432,local,class=CODE,delta=2
global __ptext432
__ptext432:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3    3[BANK0 ] float 
;;  f2              3    6[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   15[BANK0 ] unsigned char 
;;  exp2            1   14[BANK0 ] unsigned char 
;;  sign            1   13[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    3[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      13       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_SendFloatSerially
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text432
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 5
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l4106:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftadd@f1),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f1+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f1+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp1)
	line	91
	movf	(___ftadd@f2),w
	movwf	((??___ftadd+0)+0)
	movf	(___ftadd@f2+1),w
	movwf	((??___ftadd+0)+0+1)
	movf	(___ftadd@f2+2),w
	movwf	((??___ftadd+0)+0+2)
	clrc
	rlf	(??___ftadd+0)+1,w
	rlf	(??___ftadd+0)+2,w
	movwf	(??___ftadd+3)+0
	movf	(??___ftadd+3)+0,w
	movwf	(___ftadd@exp2)
	line	92
	
l4108:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u3080
	goto	l4114
u3080:
	
l4110:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u3091
	goto	u3090
u3091:
	goto	l4118
u3090:
	
l4112:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3101
	goto	u3100
u3101:
	goto	l4118
u3100:
	goto	l4114
	
l1852:	
	line	93
	
l4114:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l1853
	
l4116:	
	goto	l1853
	
l1850:	
	line	94
	
l4118:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u3110
	goto	l1856
u3110:
	
l4120:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3121
	goto	u3120
u3121:
	goto	l4124
u3120:
	
l4122:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3131
	goto	u3130
u3131:
	goto	l4124
u3130:
	
l1856:	
	line	95
	goto	l1853
	
l1854:	
	line	96
	
l4124:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l4126:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u3141
	goto	u3140
u3141:
	goto	l1857
u3140:
	line	98
	
l4128:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l1857:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3151
	goto	u3150
u3151:
	goto	l1858
u3150:
	line	100
	
l4130:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l1858:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l4132:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l4134:	
	bsf	(___ftadd@f2)+(15/8),(15)&7
	line	104
	movlw	0FFh
	andwf	(___ftadd@f2),f
	movlw	0FFh
	andwf	(___ftadd@f2+1),f
	movlw	0
	andwf	(___ftadd@f2+2),f
	line	106
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u3161
	goto	u3160
u3161:
	goto	l4146
u3160:
	goto	l4136
	line	109
	
l1860:	
	line	110
	
l4136:	
	movlw	01h
u3175:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u3175
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l4138:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3181
	goto	u3180
u3181:
	goto	l4144
u3180:
	
l4140:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3191
	goto	u3190
u3191:
	goto	l4136
u3190:
	goto	l4144
	
l1862:	
	goto	l4144
	
l1863:	
	line	113
	goto	l4144
	
l1865:	
	line	114
	
l4142:	
	movlw	01h
u3205:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u3205

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l4144
	line	116
	
l1864:	
	line	113
	
l4144:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3211
	goto	u3210
u3211:
	goto	l4142
u3210:
	goto	l1867
	
l1866:	
	line	117
	goto	l1867
	
l1859:	
	
l4146:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3221
	goto	u3220
u3221:
	goto	l1867
u3220:
	goto	l4148
	line	120
	
l1869:	
	line	121
	
l4148:	
	movlw	01h
u3235:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u3235
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l4150:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3241
	goto	u3240
u3241:
	goto	l4156
u3240:
	
l4152:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3251
	goto	u3250
u3251:
	goto	l4148
u3250:
	goto	l4156
	
l1871:	
	goto	l4156
	
l1872:	
	line	124
	goto	l4156
	
l1874:	
	line	125
	
l4154:	
	movlw	01h
u3265:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u3265

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l4156
	line	127
	
l1873:	
	line	124
	
l4156:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3271
	goto	u3270
u3271:
	goto	l4154
u3270:
	goto	l1867
	
l1875:	
	goto	l1867
	line	128
	
l1868:	
	line	129
	
l1867:	
	btfss	(___ftadd@sign),(7)&7
	goto	u3281
	goto	u3280
u3281:
	goto	l4160
u3280:
	line	131
	
l4158:	
	movlw	0FFh
	xorwf	(___ftadd@f1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+1),f
	movlw	0FFh
	xorwf	(___ftadd@f1+2),f
	line	132
	movlw	01h
	addwf	(___ftadd@f1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f1+2),f
	goto	l4160
	line	133
	
l1876:	
	line	134
	
l4160:	
	btfss	(___ftadd@sign),(6)&7
	goto	u3291
	goto	u3290
u3291:
	goto	l4164
u3290:
	line	136
	
l4162:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	137
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	goto	l4164
	line	138
	
l1877:	
	line	139
	
l4164:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___ftadd@sign)
	line	140
	
l4166:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u3301
	addwf	(___ftadd@f2+1),f
u3301:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u3302
	addwf	(___ftadd@f2+2),f
u3302:

	line	141
	
l4168:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3311
	goto	u3310
u3311:
	goto	l4174
u3310:
	line	142
	
l4170:	
	movlw	0FFh
	xorwf	(___ftadd@f2),f
	movlw	0FFh
	xorwf	(___ftadd@f2+1),f
	movlw	0FFh
	xorwf	(___ftadd@f2+2),f
	line	143
	movlw	01h
	addwf	(___ftadd@f2),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftadd@f2+2),f
	line	144
	
l4172:	
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	goto	l4174
	line	145
	
l1878:	
	line	146
	
l4174:	
	movf	(___ftadd@f2),w
	movwf	(?___ftpack)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftpack+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftpack+2)
	movf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftadd@sign),w
	movwf	(??___ftadd+1)+0
	movf	(??___ftadd+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l1853
	
l4176:	
	line	148
	
l1853:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_SendIntegerSerially
psect	text433,local,class=CODE,delta=2
global __ptext433
__ptext433:

;; *************** function _SendIntegerSerially *****************
;; Defined at:
;;		line 58 in file "C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\serial.c"
;; Parameters:    Size  Location     Type
;;  IntegerNumbe    2    9[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  c               6    0[BANK0 ] unsigned char [6]
;;  i               1    6[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       7       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_SendByteSerially
;;		___awmod
;;		___awdiv
;; This function is called by:
;;		_main
;;		_SendFloatSerially
;; This function uses a non-reentrant model
;;
psect	text433
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\serial.c"
	line	58
	global	__size_of_SendIntegerSerially
	__size_of_SendIntegerSerially	equ	__end_of_SendIntegerSerially-_SendIntegerSerially
	
_SendIntegerSerially:	
	opt	stack 6
; Regs used in _SendIntegerSerially: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	60
	
l4082:	
;serial.c: 59: unsigned char c[6];
;serial.c: 60: unsigned char i = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(SendIntegerSerially@i)
	line	62
	
l4084:	
;serial.c: 62: if(IntegerNumber < 0)
	btfss	(SendIntegerSerially@IntegerNumber+1),7
	goto	u3041
	goto	u3040
u3041:
	goto	l4090
u3040:
	line	64
	
l4086:	
;serial.c: 63: {
;serial.c: 64: SendByteSerially('-');
	movlw	(02Dh)
	fcall	_SendByteSerially
	line	65
	
l4088:	
;serial.c: 65: IntegerNumber = - (IntegerNumber);
	comf	(SendIntegerSerially@IntegerNumber),f
	comf	(SendIntegerSerially@IntegerNumber+1),f
	incf	(SendIntegerSerially@IntegerNumber),f
	skipnz
	incf	(SendIntegerSerially@IntegerNumber+1),f
	goto	l4090
	line	66
	
l1777:	
	line	68
	
l4090:	
;serial.c: 66: }
;serial.c: 68: if(IntegerNumber == 0)
	movf	((SendIntegerSerially@IntegerNumber+1)),w
	iorwf	((SendIntegerSerially@IntegerNumber)),w
	skipz
	goto	u3051
	goto	u3050
u3051:
	goto	l4100
u3050:
	line	69
	
l4092:	
;serial.c: 69: SendByteSerially(0x30);
	movlw	(030h)
	fcall	_SendByteSerially
	goto	l4100
	
l1778:	
	line	71
;serial.c: 71: while( IntegerNumber > 0)
	goto	l4100
	
l1780:	
	line	73
	
l4094:	
;serial.c: 72: {
;serial.c: 73: c[i++] = ((IntegerNumber % 10) | 0x30);
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(SendIntegerSerially@IntegerNumber+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(SendIntegerSerially@IntegerNumber),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(0+(?___awmod)),w
	iorlw	030h
	movwf	(??_SendIntegerSerially+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SendIntegerSerially@i),w
	addlw	SendIntegerSerially@c&0ffh
	movwf	fsr0
	movf	(??_SendIntegerSerially+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l4096:	
	movlw	(01h)
	movwf	(??_SendIntegerSerially+0)+0
	movf	(??_SendIntegerSerially+0)+0,w
	addwf	(SendIntegerSerially@i),f
	line	74
	
l4098:	
;serial.c: 74: IntegerNumber /= 10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(SendIntegerSerially@IntegerNumber+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(SendIntegerSerially@IntegerNumber),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	clrf	(SendIntegerSerially@IntegerNumber+1)
	addwf	(SendIntegerSerially@IntegerNumber+1)
	movf	(0+(?___awdiv)),w
	clrf	(SendIntegerSerially@IntegerNumber)
	addwf	(SendIntegerSerially@IntegerNumber)

	goto	l4100
	line	75
	
l1779:	
	line	71
	
l4100:	
	movf	(SendIntegerSerially@IntegerNumber+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3065
	movlw	low(01h)
	subwf	(SendIntegerSerially@IntegerNumber),w
u3065:

	skipnc
	goto	u3061
	goto	u3060
u3061:
	goto	l4094
u3060:
	goto	l4104
	
l1781:	
	line	77
;serial.c: 75: }
;serial.c: 77: while(i-- > 0)
	goto	l4104
	
l1783:	
	line	78
	
l4102:	
;serial.c: 78: SendByteSerially(c[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SendIntegerSerially@i),w
	addlw	SendIntegerSerially@c&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_SendByteSerially
	goto	l4104
	
l1782:	
	line	77
	
l4104:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(SendIntegerSerially@i),f
	movf	((SendIntegerSerially@i)),w
	xorlw	0FFh
	skipz
	goto	u3071
	goto	u3070
u3071:
	goto	l4102
u3070:
	goto	l1785
	
l1784:	
	line	81
	
l1785:	
	return
	opt stack 0
GLOBAL	__end_of_SendIntegerSerially
	__end_of_SendIntegerSerially:
;; =============== function _SendIntegerSerially ends ============

	signat	_SendIntegerSerially,4216
	global	_SendStringSerially
psect	text434,local,class=CODE,delta=2
global __ptext434
__ptext434:

;; *************** function _SendStringSerially *****************
;; Defined at:
;;		line 31 in file "C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\serial.c"
;; Parameters:    Size  Location     Type
;;  serial_strin    1    wreg     PTR const unsigned char 
;;		 -> STR_12(10), STR_11(14), STR_10(7), STR_9(11), 
;;		 -> STR_8(19), STR_7(21), STR_6(9), STR_5(21), 
;;		 -> STR_4(16), STR_3(18), STR_2(9), STR_1(14), 
;; Auto vars:     Size  Location     Type
;;  serial_strin    1    2[COMMON] PTR const unsigned char 
;;		 -> STR_12(10), STR_11(14), STR_10(7), STR_9(11), 
;;		 -> STR_8(19), STR_7(21), STR_6(9), STR_5(21), 
;;		 -> STR_4(16), STR_3(18), STR_2(9), STR_1(14), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_SendByteSerially
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text434
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\serial.c"
	line	31
	global	__size_of_SendStringSerially
	__size_of_SendStringSerially	equ	__end_of_SendStringSerially-_SendStringSerially
	
_SendStringSerially:	
	opt	stack 6
; Regs used in _SendStringSerially: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;SendStringSerially@serial_string stored from wreg
	movwf	(SendStringSerially@serial_string)
	
l4074:	
	goto	l4080
	
l1763:	
	line	33
	
l4076:	
;serial.c: 32: {
;serial.c: 33: SendByteSerially(*serial_string);
	movf	(SendStringSerially@serial_string),w
	movwf	fsr0
	fcall	stringdir
	fcall	_SendByteSerially
	line	34
	
l4078:	
;serial.c: 34: serial_string++;
	movlw	(01h)
	movwf	(??_SendStringSerially+0)+0
	movf	(??_SendStringSerially+0)+0,w
	addwf	(SendStringSerially@serial_string),f
	goto	l4080
	line	35
	
l1762:	
	line	31
	
l4080:	
	movf	(SendStringSerially@serial_string),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3031
	goto	u3030
u3031:
	goto	l4076
u3030:
	goto	l1765
	
l1764:	
	line	36
	
l1765:	
	return
	opt stack 0
GLOBAL	__end_of_SendStringSerially
	__end_of_SendStringSerially:
;; =============== function _SendStringSerially ends ============

	signat	_SendStringSerially,4216
	global	_MainSystemInitialize
psect	text435,local,class=CODE,delta=2
global __ptext435
__ptext435:

;; *************** function _MainSystemInitialize *****************
;; Defined at:
;;		line 78 in file "C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\main1.c"
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
;;		_ADCInitialize
;;		_InitializeSerialCommunication
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text435
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\main1.c"
	line	78
	global	__size_of_MainSystemInitialize
	__size_of_MainSystemInitialize	equ	__end_of_MainSystemInitialize-_MainSystemInitialize
	
_MainSystemInitialize:	
	opt	stack 6
; Regs used in _MainSystemInitialize: [wreg+status,2+status,0+pclath+cstack]
	line	79
	
l4070:	
;main1.c: 79: ADCInitialize();
	fcall	_ADCInitialize
	line	80
	
l4072:	
;main1.c: 80: InitializeSerialCommunication();
	fcall	_InitializeSerialCommunication
	line	81
	
l1186:	
	return
	opt stack 0
GLOBAL	__end_of_MainSystemInitialize
	__end_of_MainSystemInitialize:
;; =============== function _MainSystemInitialize ends ============

	signat	_MainSystemInitialize,88
	global	___awmod
psect	text436,local,class=CODE,delta=2
global __ptext436
__ptext436:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SendIntegerSerially
;;		_SendFloatSerially
;;		_SendCharSerially
;; This function uses a non-reentrant model
;;
psect	text436
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l3990:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l3992:	
	btfss	(___awmod@dividend+1),7
	goto	u2881
	goto	u2880
u2881:
	goto	l3996
u2880:
	line	10
	
l3994:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l3996
	line	12
	
l2014:	
	line	13
	
l3996:	
	btfss	(___awmod@divisor+1),7
	goto	u2891
	goto	u2890
u2891:
	goto	l4000
u2890:
	line	14
	
l3998:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l4000
	
l2015:	
	line	15
	
l4000:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2901
	goto	u2900
u2901:
	goto	l4018
u2900:
	line	16
	
l4002:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l4008
	
l2018:	
	line	18
	
l4004:	
	movlw	01h
	
u2915:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2915
	line	19
	
l4006:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l4008
	line	20
	
l2017:	
	line	17
	
l4008:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2921
	goto	u2920
u2921:
	goto	l4004
u2920:
	goto	l4010
	
l2019:	
	goto	l4010
	line	21
	
l2020:	
	line	22
	
l4010:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2935
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2935:
	skipc
	goto	u2931
	goto	u2930
u2931:
	goto	l4014
u2930:
	line	23
	
l4012:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l4014
	
l2021:	
	line	24
	
l4014:	
	movlw	01h
	
u2945:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2945
	line	25
	
l4016:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2951
	goto	u2950
u2951:
	goto	l4010
u2950:
	goto	l4018
	
l2022:	
	goto	l4018
	line	26
	
l2016:	
	line	27
	
l4018:	
	movf	(___awmod@sign),w
	skipz
	goto	u2960
	goto	l4022
u2960:
	line	28
	
l4020:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l4022
	
l2023:	
	line	29
	
l4022:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l2024
	
l4024:	
	line	30
	
l2024:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___ftge
psect	text437,local,class=CODE,delta=2
global __ptext437
__ptext437:

;; *************** function ___ftge *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[COMMON] float 
;;  ff2             3    3[COMMON] float 
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
;;      Params:         6       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          6       0       0       0       0
;;      Totals:        12       0       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_SendFloatSerially
;; This function uses a non-reentrant model
;;
psect	text437
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 7
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l3970:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u2831
	goto	u2830
u2831:
	goto	l3974
u2830:
	line	7
	
l3972:	
	movlw	0
	movwf	((??___ftge+0)+0)
	movlw	0
	movwf	((??___ftge+0)+0+1)
	movlw	080h
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff1),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff1+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff1+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u2841
	goto	u2842
u2841:
	addwf	(??___ftge+0)+1,f
	
u2842:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u2843
	goto	u2844
u2843:
	addwf	(??___ftge+0)+2,f
	
u2844:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l3974
	
l1973:	
	line	8
	
l3974:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u2851
	goto	u2850
u2851:
	goto	l3978
u2850:
	line	9
	
l3976:	
	movlw	0
	movwf	((??___ftge+0)+0)
	movlw	0
	movwf	((??___ftge+0)+0+1)
	movlw	080h
	movwf	((??___ftge+0)+0+2)
	comf	(___ftge@ff2),w
	movwf	(??___ftge+3)+0
	comf	(___ftge@ff2+1),w
	movwf	((??___ftge+3)+0+1)
	comf	(___ftge@ff2+2),w
	movwf	((??___ftge+3)+0+2)
	incf	(??___ftge+3)+0,f
	skipnz
	incf	((??___ftge+3)+0+1),f
	skipnz
	incf	((??___ftge+3)+0+2),f
	movf	0+(??___ftge+3)+0,w
	addwf	(??___ftge+0)+0,f
	movf	1+(??___ftge+3)+0,w
	skipnc
	incfsz	1+(??___ftge+3)+0,w
	goto	u2861
	goto	u2862
u2861:
	addwf	(??___ftge+0)+1,f
	
u2862:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u2863
	goto	u2864
u2863:
	addwf	(??___ftge+0)+2,f
	
u2864:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l3978
	
l1974:	
	line	10
	
l3978:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l3980:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l3982:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u2875
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u2875
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u2875:
	skipnc
	goto	u2871
	goto	u2870
u2871:
	goto	l3986
u2870:
	
l3984:	
	clrc
	
	goto	l1975
	
l3780:	
	
l3986:	
	setc
	
	goto	l1975
	
l3782:	
	goto	l1975
	
l3988:	
	line	13
	
l1975:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text438,local,class=CODE,delta=2
global __ptext438
__ptext438:

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 16 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMMON] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SendFloatSerially
;; This function uses a non-reentrant model
;;
psect	text438
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 6
; Regs used in ___ftneg: [wreg]
	line	17
	
l3962:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u2821
	goto	u2820
u2821:
	goto	l3966
u2820:
	line	18
	
l3964:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l3966
	
l1969:	
	line	19
	
l3966:	
	goto	l1970
	
l3968:	
	line	20
	
l1970:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___awdiv
psect	text439,local,class=CODE,delta=2
global __ptext439
__ptext439:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SendIntegerSerially
;;		_SendFloatSerially
;;		_SendCharSerially
;; This function uses a non-reentrant model
;;
psect	text439
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3924:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l3926:	
	btfss	(___awdiv@divisor+1),7
	goto	u2721
	goto	u2720
u2721:
	goto	l3930
u2720:
	line	11
	
l3928:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l3930
	line	13
	
l1946:	
	line	14
	
l3930:	
	btfss	(___awdiv@dividend+1),7
	goto	u2731
	goto	u2730
u2731:
	goto	l1947
u2730:
	line	15
	
l3932:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3934:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l1947:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2741
	goto	u2740
u2741:
	goto	l3954
u2740:
	line	20
	
l3936:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l3942
	
l1950:	
	line	22
	
l3938:	
	movlw	01h
	
u2755:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2755
	line	23
	
l3940:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3942
	line	24
	
l1949:	
	line	21
	
l3942:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l3938
u2760:
	goto	l3944
	
l1951:	
	goto	l3944
	line	25
	
l1952:	
	line	26
	
l3944:	
	movlw	01h
	
u2775:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2775
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2785
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2785:
	skipc
	goto	u2781
	goto	u2780
u2781:
	goto	l3950
u2780:
	line	28
	
l3946:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3948:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3950
	line	30
	
l1953:	
	line	31
	
l3950:	
	movlw	01h
	
u2795:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2795
	line	32
	
l3952:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l3944
u2800:
	goto	l3954
	
l1954:	
	goto	l3954
	line	33
	
l1948:	
	line	34
	
l3954:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2810
	goto	l3958
u2810:
	line	35
	
l3956:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3958
	
l1955:	
	line	36
	
l3958:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1956
	
l3960:	
	line	37
	
l1956:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text440,local,class=CODE,delta=2
global __ptext440
__ptext440:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    0[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    9[COMMON] unsigned long 
;;  exp1            1   13[COMMON] unsigned char 
;;  sign1           1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    0[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         6       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:        14       0       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_SendFloatSerially
;; This function uses a non-reentrant model
;;
psect	text440
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 7
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l3866:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u2611
	goto	u2610
u2611:
	goto	l3872
u2610:
	line	50
	
l3868:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1916
	
l3870:	
	goto	l1916
	
l1915:	
	line	51
	
l3872:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2625:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2620:
	addlw	-1
	skipz
	goto	u2625
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l3874:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l3876:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l3878:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l3880:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l3882:	
	btfss	(___fttol@exp1),7
	goto	u2631
	goto	u2630
u2631:
	goto	l3892
u2630:
	line	57
	
l3884:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2641
	goto	u2640
u2641:
	goto	l3890
u2640:
	line	58
	
l3886:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1916
	
l3888:	
	goto	l1916
	
l1918:	
	goto	l3890
	line	59
	
l1919:	
	line	60
	
l3890:	
	movlw	01h
u2655:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u2655

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u2661
	goto	u2660
u2661:
	goto	l3890
u2660:
	goto	l3902
	
l1920:	
	line	62
	goto	l3902
	
l1917:	
	line	63
	
l3892:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2671
	goto	u2670
u2671:
	goto	l3900
u2670:
	line	64
	
l3894:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1916
	
l3896:	
	goto	l1916
	
l1922:	
	line	65
	goto	l3900
	
l1924:	
	line	66
	
l3898:	
	movlw	01h
	movwf	(??___fttol+0)+0
u2685:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u2685
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l3900
	line	68
	
l1923:	
	line	65
	
l3900:	
	movf	(___fttol@exp1),f
	skipz
	goto	u2691
	goto	u2690
u2691:
	goto	l3898
u2690:
	goto	l3902
	
l1925:	
	goto	l3902
	line	69
	
l1921:	
	line	70
	
l3902:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2700
	goto	l3906
u2700:
	line	71
	
l3904:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l3906
	
l1926:	
	line	72
	
l3906:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l1916
	
l3908:	
	line	73
	
l1916:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text441,local,class=CODE,delta=2
global __ptext441
__ptext441:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftadd
;;		___ftdiv
;;		___ftmul
;;		___awtoft
;;		___lwtoft
;;		___lbtoft
;;		___abtoft
;;		___altoft
;;		___lltoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text441
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l3830:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2500
	goto	l3834
u2500:
	
l3832:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2511
	goto	u2510
u2511:
	goto	l3840
u2510:
	goto	l3834
	
l2140:	
	line	65
	
l3834:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l2141
	
l3836:	
	goto	l2141
	
l2138:	
	line	66
	goto	l3840
	
l2143:	
	line	67
	
l3838:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2525:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2525

	goto	l3840
	line	69
	
l2142:	
	line	66
	
l3840:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2531
	goto	u2530
u2531:
	goto	l3838
u2530:
	goto	l2145
	
l2144:	
	line	70
	goto	l2145
	
l2146:	
	line	71
	
l3842:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l3844:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l3846:	
	movlw	01h
u2545:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2545

	line	74
	
l2145:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l3842
u2550:
	goto	l3850
	
l2147:	
	line	75
	goto	l3850
	
l2149:	
	line	76
	
l3848:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2565:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2565
	goto	l3850
	line	78
	
l2148:	
	line	75
	
l3850:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2571
	goto	u2570
u2571:
	goto	l3848
u2570:
	
l2150:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l2151
u2580:
	line	80
	
l3852:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l2151:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l3854:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2595:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2590:
	addlw	-1
	skipz
	goto	u2595
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l3856:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2600
	goto	l2152
u2600:
	line	84
	
l3858:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l2152:	
	line	85
	line	86
	
l2141:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___wmul
psect	text442,local,class=CODE,delta=2
global __ptext442
__ptext442:

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
;;		_ADCReadData
;; This function uses a non-reentrant model
;;
psect	text442
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l3818:	
	movlw	low(0)
	movwf	(___wmul@product)
	movlw	high(0)
	movwf	((___wmul@product))+1
	goto	l3820
	line	6
	
l1806:	
	line	7
	
l3820:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l1807
u2460:
	line	8
	
l3822:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l1807:	
	line	9
	movlw	01h
	
u2475:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u2475
	line	10
	
l3824:	
	movlw	01h
	
u2485:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u2485
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2491
	goto	u2490
u2491:
	goto	l3820
u2490:
	goto	l3826
	
l1808:	
	line	12
	
l3826:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l1809
	
l3828:	
	line	13
	
l1809:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_InitializeSerialCommunication
psect	text443,local,class=CODE,delta=2
global __ptext443
__ptext443:

;; *************** function _InitializeSerialCommunication *****************
;; Defined at:
;;		line 5 in file "C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\serial.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MainSystemInitialize
;; This function uses a non-reentrant model
;;
psect	text443
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\serial.c"
	line	5
	global	__size_of_InitializeSerialCommunication
	__size_of_InitializeSerialCommunication	equ	__end_of_InitializeSerialCommunication-_InitializeSerialCommunication
	
_InitializeSerialCommunication:	
	opt	stack 6
; Regs used in _InitializeSerialCommunication: [wreg]
	line	7
	
l3800:	
;serial.c: 7: SPBRG = ((int)(16000000L/(16UL * 9600) -1));
	movlw	(067h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	8
;serial.c: 8: RCSTA = 0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	9
;serial.c: 9: TXSTA = 0x24;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	10
	
l3802:	
;serial.c: 10: SYNC=0;
	bcf	(1220/8)^080h,(1220)&7
	line	11
	
l1747:	
	return
	opt stack 0
GLOBAL	__end_of_InitializeSerialCommunication
	__end_of_InitializeSerialCommunication:
;; =============== function _InitializeSerialCommunication ends ============

	signat	_InitializeSerialCommunication,88
	global	_SendByteSerially
psect	text444,local,class=CODE,delta=2
global __ptext444
__ptext444:

;; *************** function _SendByteSerially *****************
;; Defined at:
;;		line 14 in file "C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\serial.c"
;; Parameters:    Size  Location     Type
;;  byte            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  byte            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_SendStringSerially
;;		_SendIntegerSerially
;;		_SendFloatSerially
;;		_SendCharSerially
;; This function uses a non-reentrant model
;;
psect	text444
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\serial.c"
	line	14
	global	__size_of_SendByteSerially
	__size_of_SendByteSerially	equ	__end_of_SendByteSerially-_SendByteSerially
	
_SendByteSerially:	
	opt	stack 7
; Regs used in _SendByteSerially: [wreg]
;SendByteSerially@byte stored from wreg
	movwf	(SendByteSerially@byte)
	line	16
	
l3796:	
;serial.c: 16: while(!TXIF)
	goto	l1750
	
l1751:	
	line	17
;serial.c: 17: continue;
	
l1750:	
	line	16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u2421
	goto	u2420
u2421:
	goto	l1750
u2420:
	goto	l3798
	
l1752:	
	line	18
	
l3798:	
;serial.c: 18: TXREG = byte;
	movf	(SendByteSerially@byte),w
	movwf	(25)	;volatile
	line	19
	
l1753:	
	return
	opt stack 0
GLOBAL	__end_of_SendByteSerially
	__end_of_SendByteSerially:
;; =============== function _SendByteSerially ends ============

	signat	_SendByteSerially,4216
	global	_ADCInitialize
psect	text445,local,class=CODE,delta=2
global __ptext445
__ptext445:

;; *************** function _ADCInitialize *****************
;; Defined at:
;;		line 4 in file "C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_MainSystemInitialize
;; This function uses a non-reentrant model
;;
psect	text445
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\adc.c"
	line	4
	global	__size_of_ADCInitialize
	__size_of_ADCInitialize	equ	__end_of_ADCInitialize-_ADCInitialize
	
_ADCInitialize:	
	opt	stack 6
; Regs used in _ADCInitialize: []
	line	5
	
l3794:	
;adc.c: 5: ADON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(248/8),(248)&7
	line	6
;adc.c: 6: ADFM = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1279/8)^080h,(1279)&7
	line	7
;adc.c: 7: ADCS2 = ADCS1 = ADCS0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(254/8),(254)&7
	bcf	(255/8),(255)&7
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1278/8)^080h,(1278)&7
	line	8
;adc.c: 8: PCFG3 = PCFG2 = PCFG0 =0;
	bcf	(1272/8)^080h,(1272)&7
	bcf	(1274/8)^080h,(1274)&7
	bcf	(1275/8)^080h,(1275)&7
	line	9
;adc.c: 9: PCFG1 = 1;
	bsf	(1273/8)^080h,(1273)&7
	line	10
	
l570:	
	return
	opt stack 0
GLOBAL	__end_of_ADCInitialize
	__end_of_ADCInitialize:
;; =============== function _ADCInitialize ends ============

	signat	_ADCInitialize,88
	global	_Delay
psect	text446,local,class=CODE,delta=2
global __ptext446
__ptext446:

;; *************** function _Delay *****************
;; Defined at:
;;		line 4 in file "C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\delay.c"
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
;;		_ADCReadData
;;		_main
;; This function uses a non-reentrant model
;;
psect	text446
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing - Copy\delay.c"
	line	4
	global	__size_of_Delay
	__size_of_Delay	equ	__end_of_Delay-_Delay
	
_Delay:	
	opt	stack 7
; Regs used in _Delay: [wreg+status,2+status,0]
	line	6
	
l3784:	
;delay.c: 5: unsigned char pause;
;delay.c: 6: while( time > 0)
	goto	l3792
	
l4:	
	line	8
	
l3786:	
;delay.c: 7: {
;delay.c: 8: pause = 255;
	movlw	(0FFh)
	movwf	(??_Delay+0)+0
	movf	(??_Delay+0)+0,w
	movwf	(Delay@pause)
	line	9
;delay.c: 9: while(pause--);
	goto	l3788
	
l6:	
	goto	l3788
	
l5:	
	
l3788:	
	movlw	low(01h)
	subwf	(Delay@pause),f
	movf	((Delay@pause)),w
	xorlw	0FFh
	skipz
	goto	u2401
	goto	u2400
u2401:
	goto	l3788
u2400:
	goto	l3790
	
l7:	
	line	10
	
l3790:	
;delay.c: 10: time--;
	movlw	low(01h)
	subwf	(Delay@time),f
	movlw	high(01h)
	skipc
	decf	(Delay@time+1),f
	subwf	(Delay@time+1),f
	goto	l3792
	line	11
	
l3:	
	line	6
	
l3792:	
	movf	((Delay@time+1)),w
	iorwf	((Delay@time)),w
	skipz
	goto	u2411
	goto	u2410
u2411:
	goto	l3786
u2410:
	goto	l9
	
l8:	
	line	12
	
l9:	
	return
	opt stack 0
GLOBAL	__end_of_Delay
	__end_of_Delay:
;; =============== function _Delay ends ============

	signat	_Delay,4216
psect	text447,local,class=CODE,delta=2
global __ptext447
__ptext447:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
