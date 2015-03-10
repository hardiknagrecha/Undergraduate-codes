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
# 16 "C:\Users\X4ROY\Desktop\URE\LCD Interfacing\main.h"
	psect config,class=CONFIG,delta=2 ;#
# 16 "C:\Users\X4ROY\Desktop\URE\LCD Interfacing\main.h"
	dw 0x2F0A ;#
	FNCALL	_main,_MainSystemInitialize
	FNCALL	_main,_ADCReadData
	FNCALL	_main,_LCDWriteCommand
	FNCALL	_main,_LCDWriteFloat
	FNCALL	_main,_LCDWriteString
	FNCALL	_MainSystemInitialize,_ADCInitialize
	FNCALL	_MainSystemInitialize,_LCDInitialize
	FNCALL	_LCDWriteFloat,___ftge
	FNCALL	_LCDWriteFloat,_LCDWriteData
	FNCALL	_LCDWriteFloat,___ftneg
	FNCALL	_LCDWriteFloat,___fttol
	FNCALL	_LCDWriteFloat,_LCDWriteInteger
	FNCALL	_LCDWriteFloat,___awtoft
	FNCALL	_LCDWriteFloat,___ftadd
	FNCALL	_LCDWriteFloat,___ftmul
	FNCALL	_LCDWriteFloat,___awmod
	FNCALL	_LCDWriteFloat,___awdiv
	FNCALL	_LCDWriteFloat,_LCDWriteCommand
	FNCALL	_LCDWriteFloat,_LCDWriteString
	FNCALL	_LCDInitialize,_LCDReset
	FNCALL	_LCDInitialize,_LCDWriteCommand
	FNCALL	_LCDWriteInteger,_LCDWriteData
	FNCALL	_LCDWriteInteger,___awmod
	FNCALL	_LCDWriteInteger,___awdiv
	FNCALL	_LCDReset,_LCDWriteCommand
	FNCALL	_LCDWriteString,_LCDWriteData
	FNCALL	_LCDWriteData,_LCDWriteByte
	FNCALL	_LCDWriteCommand,_LCDWriteByte
	FNCALL	_ADCReadData,_Delay
	FNCALL	_ADCReadData,___wmul
	FNCALL	_ADCReadData,___lwtoft
	FNCALL	_ADCReadData,___ftmul
	FNCALL	_ADCReadData,___ftdiv
	FNCALL	_LCDWriteByte,_LCDEnable
	FNCALL	_LCDWriteByte,_Delay
	FNCALL	___lwtoft,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_LCDEnable,_Delay
	FNROOT	_main
	global	_AT2
	global	_AT3
	global	_TH_Err
	global	_TL_Err
	global	_HYS_Err
	global	_AT1
	global	_AT
	global	_AT0
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing\main.h"
	line	31

;initializer for _AT2
	retlw	054h
	retlw	02Dh
	retlw	048h
	retlw	069h
	retlw	067h
	retlw	068h
	retlw	020h
	retlw	03Ah
	line	32

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
	line	34

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
psect	idataBANK3,class=CODE,space=0,delta=2
global __pidataBANK3
__pidataBANK3:
	line	35

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
	line	33

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
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	30

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
	line	28

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
	line	29

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
	global	_THigh
	global	_TLow
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTD
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
	global	_ADCS0
_ADCS0	set	254
	global	_ADCS1
_ADCS1	set	255
	global	_ADON
_ADON	set	248
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_ADRESL
_ADRESL	set	158
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
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
	
STR_1:	
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	73	;'I'
	retlw	84	;'T'
	retlw	73	;'I'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	73	;'I'
	retlw	90	;'Z'
	retlw	73	;'I'
	retlw	78	;'N'
	retlw	71	;'G'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	46	;'.'
	retlw	0
psect	strings
	
STR_6:	
	retlw	104	;'h'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	76	;'L'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_7:	
	retlw	104	;'h'
	retlw	65	;'A'
	retlw	76	;'L'
	retlw	76	;'L'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	102	;'f'
	retlw	102	;'f'
	retlw	0
psect	strings
	
STR_4:	
	retlw	73	;'I'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_5:	
	retlw	73	;'I'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	0
psect	strings
	
STR_2:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
STR_3	equ	STR_2+1
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

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing\main.h"
	line	31
_AT2:
       ds      8

psect	dataBANK0
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing\main.h"
	line	32
_AT3:
       ds      7

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing\main.h"
	line	30
_AT1:
       ds      31

psect	dataBANK1
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing\main.h"
	line	28
_AT:
       ds      26

psect	dataBANK1
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing\main.h"
	line	29
_AT0:
       ds      16

psect	dataBANK3,class=BANK3,space=1
global __pdataBANK3
__pdataBANK3:
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing\main.h"
	line	35
_TL_Err:
       ds      34

psect	dataBANK3
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing\main.h"
	line	33
_HYS_Err:
       ds      32

psect	dataBANK2,class=BANK2,space=1
global __pdataBANK2
__pdataBANK2:
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing\main.h"
	line	34
_TH_Err:
       ds      35

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
	movlw low(__pdataBANK3+66)
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
	movlw low(__pdataBANK2+35)
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
	movlw low(__pdataBANK1+73)
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
	movlw low(__pdataBANK0+15)
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
	global	?_LCDWriteByte
?_LCDWriteByte:	; 0 bytes @ 0x0
	global	?_LCDReset
?_LCDReset:	; 0 bytes @ 0x0
	global	?_MainSystemInitialize
?_MainSystemInitialize:	; 0 bytes @ 0x0
	global	?_ADCInitialize
?_ADCInitialize:	; 0 bytes @ 0x0
	global	??_ADCInitialize
??_ADCInitialize:	; 0 bytes @ 0x0
	global	?_Delay
?_Delay:	; 0 bytes @ 0x0
	global	?_LCDEnable
?_LCDEnable:	; 0 bytes @ 0x0
	global	?_LCDWriteCommand
?_LCDWriteCommand:	; 0 bytes @ 0x0
	global	?_LCDWriteData
?_LCDWriteData:	; 0 bytes @ 0x0
	global	?_LCDWriteString
?_LCDWriteString:	; 0 bytes @ 0x0
	global	?_LCDInitialize
?_LCDInitialize:	; 0 bytes @ 0x0
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
	ds	2
	global	??_Delay
??_Delay:	; 0 bytes @ 0x2
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
	global	??_LCDWriteByte
??_LCDWriteByte:	; 0 bytes @ 0x4
	global	??_LCDEnable
??_LCDEnable:	; 0 bytes @ 0x4
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
	global	LCDWriteByte@LCDData
LCDWriteByte@LCDData:	; 1 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	??_LCDWriteCommand
??_LCDWriteCommand:	; 0 bytes @ 0x6
	global	??_LCDWriteData
??_LCDWriteData:	; 0 bytes @ 0x6
	global	??___ftge
??___ftge:	; 0 bytes @ 0x6
	global	LCDWriteCommand@LCDData
LCDWriteCommand@LCDData:	; 1 bytes @ 0x6
	global	LCDWriteData@LCDData
LCDWriteData@LCDData:	; 1 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	??_LCDReset
??_LCDReset:	; 0 bytes @ 0x7
	global	??_LCDWriteString
??_LCDWriteString:	; 0 bytes @ 0x7
	global	??_LCDInitialize
??_LCDInitialize:	; 0 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	??_MainSystemInitialize
??_MainSystemInitialize:	; 0 bytes @ 0x8
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x8
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	LCDWriteString@lcd_string
LCDWriteString@lcd_string:	; 1 bytes @ 0x8
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x8
	global	___lwtoft@c
___lwtoft@c:	; 2 bytes @ 0x8
	global	___ftdiv@f2
___ftdiv@f2:	; 3 bytes @ 0x8
	global	___ftneg@f1
___ftneg@f1:	; 3 bytes @ 0x8
	ds	1
	global	?_LCDWriteInteger
?_LCDWriteInteger:	; 0 bytes @ 0x9
	global	LCDWriteInteger@IntegerNumber
LCDWriteInteger@IntegerNumber:	; 2 bytes @ 0x9
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x9
	ds	2
	global	??_LCDWriteInteger
??_LCDWriteInteger:	; 0 bytes @ 0xB
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
	global	LCDWriteInteger@c
LCDWriteInteger@c:	; 6 bytes @ 0x0
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
	global	LCDWriteInteger@i
LCDWriteInteger@i:	; 1 bytes @ 0x6
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
	global	?_LCDWriteFloat
?_LCDWriteFloat:	; 0 bytes @ 0x20
	global	?_ADCReadData
?_ADCReadData:	; 3 bytes @ 0x20
	global	LCDWriteFloat@FloatNumber
LCDWriteFloat@FloatNumber:	; 3 bytes @ 0x20
	ds	3
	global	??_ADCReadData
??_ADCReadData:	; 0 bytes @ 0x23
	global	??_LCDWriteFloat
??_LCDWriteFloat:	; 0 bytes @ 0x23
	ds	1
	global	LCDWriteFloat@c
LCDWriteFloat@c:	; 6 bytes @ 0x24
	ds	1
	global	ADCReadData@f
ADCReadData@f:	; 3 bytes @ 0x25
	ds	3
	global	ADCReadData@x
ADCReadData@x:	; 2 bytes @ 0x28
	ds	2
	global	ADCReadData@y
ADCReadData@y:	; 2 bytes @ 0x2A
	global	_LCDWriteFloat$1282
_LCDWriteFloat$1282:	; 3 bytes @ 0x2A
	ds	2
	global	ADCReadData@c
ADCReadData@c:	; 2 bytes @ 0x2C
	ds	1
	global	LCDWriteFloat@Temp
LCDWriteFloat@Temp:	; 2 bytes @ 0x2D
	ds	1
	global	ADCReadData@z
ADCReadData@z:	; 2 bytes @ 0x2E
	ds	1
	global	LCDWriteFloat@i
LCDWriteFloat@i:	; 1 bytes @ 0x2F
	ds	1
	global	ADCReadData@ChannelNumber
ADCReadData@ChannelNumber:	; 1 bytes @ 0x30
	global	LCDWriteFloat@n
LCDWriteFloat@n:	; 2 bytes @ 0x30
	ds	1
	global	ADCReadData@p
ADCReadData@p:	; 3 bytes @ 0x31
	ds	3
	global	??_main
??_main:	; 0 bytes @ 0x34
	ds	1
	global	main@temp
main@temp:	; 3 bytes @ 0x35
	ds	3
;;Data sizes: Strings 52, constant 0, data 189, bss 8, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     56      79
;; BANK1           80      0      73
;; BANK3           96      0      66
;; BANK2           96      0      35

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?_ADCReadData	float  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
;;
;; ?___lwtoft	float  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftneg	float  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; LCDWriteString@lcd_string	PTR const unsigned char  size(1) Largest target is 17
;;		 -> STR_7(CODE[9]), STR_6(CODE[9]), STR_5(CODE[7]), STR_4(CODE[7]), 
;;		 -> STR_3(CODE[2]), STR_2(CODE[3]), STR_1(CODE[17]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _MainSystemInitialize->_LCDInitialize
;;   _LCDWriteFloat->___fttol
;;   _LCDWriteFloat->___awtoft
;;   _LCDInitialize->_LCDWriteCommand
;;   _LCDWriteInteger->___awdiv
;;   _LCDReset->_LCDWriteCommand
;;   _LCDWriteString->_LCDWriteData
;;   _LCDWriteData->_LCDWriteByte
;;   _LCDWriteCommand->_LCDWriteByte
;;   _ADCReadData->___ftdiv
;;   _LCDWriteByte->_Delay
;;   ___lwtoft->___ftpack
;;   ___awtoft->___ftneg
;;   ___ftmul->___awtoft
;;   ___ftdiv->___ftpack
;;   ___ftadd->___awtoft
;;   _LCDEnable->_Delay
;;   ___ftneg->___ftpack
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_ADCReadData
;;   _LCDWriteFloat->___ftmul
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
;; (0) _main                                                 4     4      0    7234
;;                                             52 BANK0      4     4      0
;;               _MainSystemInitialize
;;                        _ADCReadData
;;                    _LCDWriteCommand
;;                      _LCDWriteFloat
;;                     _LCDWriteString
;; ---------------------------------------------------------------------------------
;; (1) _MainSystemInitialize                                 0     0      0     316
;;                      _ADCInitialize
;;                      _LCDInitialize
;; ---------------------------------------------------------------------------------
;; (1) _LCDWriteFloat                                       18    15      3    4888
;;                                             32 BANK0     18    15      3
;;                             ___ftge
;;                       _LCDWriteData
;;                            ___ftneg
;;                            ___fttol
;;                    _LCDWriteInteger
;;                           ___awtoft
;;                            ___ftadd
;;                            ___ftmul
;;                            ___awmod
;;                            ___awdiv
;;                    _LCDWriteCommand
;;                     _LCDWriteString
;; ---------------------------------------------------------------------------------
;; (2) _LCDInitialize                                        1     1      0     316
;;                                              7 COMMON     1     1      0
;;                           _LCDReset
;;                    _LCDWriteCommand
;; ---------------------------------------------------------------------------------
;; (2) _LCDWriteInteger                                     10     8      2    1003
;;                                              9 COMMON     3     1      2
;;                                              0 BANK0      7     7      0
;;                       _LCDWriteData
;;                            ___awmod
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (3) _LCDReset                                             0     0      0     158
;;                    _LCDWriteCommand
;; ---------------------------------------------------------------------------------
;; (1) _LCDWriteString                                       2     2      0     203
;;                                              7 COMMON     2     2      0
;;                       _LCDWriteData
;; ---------------------------------------------------------------------------------
;; (2) _LCDWriteData                                         1     1      0     158
;;                                              6 COMMON     1     1      0
;;                       _LCDWriteByte
;; ---------------------------------------------------------------------------------
;; (2) _LCDWriteCommand                                      1     1      0     158
;;                                              6 COMMON     1     1      0
;;                       _LCDWriteByte
;; ---------------------------------------------------------------------------------
;; (1) _ADCReadData                                         21    18      3    1577
;;                                             32 BANK0     20    17      3
;;                              _Delay
;;                             ___wmul
;;                           ___lwtoft
;;                            ___ftmul
;;                            ___ftdiv
;; ---------------------------------------------------------------------------------
;; (3) _LCDWriteByte                                         2     2      0     136
;;                                              4 COMMON     2     2      0
;;                          _LCDEnable
;;                              _Delay
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
;; (2) ___ftdiv                                             16    10      6     489
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
;; (4) _LCDEnable                                            0     0      0      46
;;                              _Delay
;; ---------------------------------------------------------------------------------
;; (2) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (2) ___ftge                                              12     6      6     136
;;                                              0 COMMON    12     6      6
;; ---------------------------------------------------------------------------------
;; (2) ___ftneg                                              3     0      3      45
;;                                              8 COMMON     3     0      3
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (2) ___fttol                                             14    10      4     252
;;                                              0 COMMON    14    10      4
;; ---------------------------------------------------------------------------------
;; (3) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) _ADCInitialize                                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; (4) _Delay                                                4     2      2      46
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _MainSystemInitialize
;;     _ADCInitialize
;;     _LCDInitialize
;;       _LCDReset
;;         _LCDWriteCommand
;;           _LCDWriteByte
;;             _LCDEnable
;;               _Delay
;;             _Delay
;;       _LCDWriteCommand
;;         _LCDWriteByte
;;           _LCDEnable
;;             _Delay
;;           _Delay
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
;;   _LCDWriteCommand
;;     _LCDWriteByte
;;       _LCDEnable
;;         _Delay
;;       _Delay
;;   _LCDWriteFloat
;;     ___ftge
;;     _LCDWriteData
;;       _LCDWriteByte
;;         _LCDEnable
;;           _Delay
;;         _Delay
;;     ___ftneg
;;       ___ftpack (ARG)
;;     ___fttol
;;     _LCDWriteInteger
;;       _LCDWriteData
;;         _LCDWriteByte
;;           _LCDEnable
;;             _Delay
;;           _Delay
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
;;     _LCDWriteCommand
;;       _LCDWriteByte
;;         _LCDEnable
;;           _Delay
;;         _Delay
;;     _LCDWriteString
;;       _LCDWriteData
;;         _LCDWriteByte
;;           _LCDEnable
;;             _Delay
;;           _Delay
;;   _LCDWriteString
;;     _LCDWriteData
;;       _LCDWriteByte
;;         _LCDEnable
;;           _Delay
;;         _Delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0      42       9       68.8%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0      23      11       36.5%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0      49       7       91.3%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0     112      12        0.0%
;;ABS                  0      0     10B       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       7       2        0.0%
;;BANK0               50     38      4F       5       98.8%
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
;;		line 6 in file "C:\Users\X4ROY\Desktop\URE\LCD Interfacing\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            3   53[BANK0 ] float 
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
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_MainSystemInitialize
;;		_ADCReadData
;;		_LCDWriteCommand
;;		_LCDWriteFloat
;;		_LCDWriteString
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing\main.c"
	line	6
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	9
	
l4321:	
;main.c: 8: float temp;
;main.c: 9: TRISE |= 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	iorwf	(137)^080h,f	;volatile
	line	10
;main.c: 10: PORTE |= 0x07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	iorwf	(9),f	;volatile
	line	11
	
l4323:	
;main.c: 11: MainSystemInitialize();
	fcall	_MainSystemInitialize
	goto	l4325
	line	14
;main.c: 13: for(;;)
	
l1227:	
	line	16
	
l4325:	
;main.c: 14: {
;main.c: 16: temp = ADCReadData(0x00);
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
	line	17
	
l4327:	
;main.c: 17: LCDWriteCommand(0x80);
	movlw	(080h)
	fcall	_LCDWriteCommand
	line	18
	
l4329:	
;main.c: 18: LCDWriteFloat(temp);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@temp),w
	movwf	(?_LCDWriteFloat)
	movf	(main@temp+1),w
	movwf	(?_LCDWriteFloat+1)
	movf	(main@temp+2),w
	movwf	(?_LCDWriteFloat+2)
	fcall	_LCDWriteFloat
	line	20
	
l4331:	
;main.c: 20: temp = ADCReadData(0x08);
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
	line	21
	
l4333:	
;main.c: 21: LCDWriteCommand(0x8A);
	movlw	(08Ah)
	fcall	_LCDWriteCommand
	line	22
	
l4335:	
;main.c: 22: LCDWriteFloat(temp);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@temp),w
	movwf	(?_LCDWriteFloat)
	movf	(main@temp+1),w
	movwf	(?_LCDWriteFloat+1)
	movf	(main@temp+2),w
	movwf	(?_LCDWriteFloat+2)
	fcall	_LCDWriteFloat
	line	24
	
l4337:	
;main.c: 24: temp = ADCReadData(0x10);
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
	line	25
	
l4339:	
;main.c: 25: LCDWriteCommand(0xC0);
	movlw	(0C0h)
	fcall	_LCDWriteCommand
	line	26
	
l4341:	
;main.c: 26: LCDWriteFloat(temp);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@temp),w
	movwf	(?_LCDWriteFloat)
	movf	(main@temp+1),w
	movwf	(?_LCDWriteFloat+1)
	movf	(main@temp+2),w
	movwf	(?_LCDWriteFloat+2)
	fcall	_LCDWriteFloat
	line	28
	
l4343:	
;main.c: 28: temp = ADCReadData(0x18);
	movlw	(018h)
	fcall	_ADCReadData
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_ADCReadData)),w
	movwf	(main@temp)
	movf	(1+(?_ADCReadData)),w
	movwf	(main@temp+1)
	movf	(2+(?_ADCReadData)),w
	movwf	(main@temp+2)
	line	29
	
l4345:	
;main.c: 29: LCDWriteCommand(0xCA);
	movlw	(0CAh)
	fcall	_LCDWriteCommand
	line	30
	
l4347:	
;main.c: 30: LCDWriteFloat(temp);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@temp),w
	movwf	(?_LCDWriteFloat)
	movf	(main@temp+1),w
	movwf	(?_LCDWriteFloat+1)
	movf	(main@temp+2),w
	movwf	(?_LCDWriteFloat+2)
	fcall	_LCDWriteFloat
	line	32
	
l4349:	
;main.c: 32: if(RE0 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(72/8),(72)&7
	goto	u3631
	goto	u3630
u3631:
	goto	l1228
u3630:
	line	34
	
l4351:	
;main.c: 33: {
;main.c: 34: LCDWriteCommand(0x94);
	movlw	(094h)
	fcall	_LCDWriteCommand
	line	35
	
l4353:	
;main.c: 35: LCDWriteString("IR ON ");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_LCDWriteString
	line	36
;main.c: 36: }
	goto	l4359
	line	37
	
l1228:	
;main.c: 37: else if(RE0 == 0)
	btfsc	(72/8),(72)&7
	goto	u3641
	goto	u3640
u3641:
	goto	l4359
u3640:
	line	39
	
l4355:	
;main.c: 38: {
;main.c: 39: LCDWriteCommand(0x94);
	movlw	(094h)
	fcall	_LCDWriteCommand
	line	40
	
l4357:	
;main.c: 40: LCDWriteString("IR OFF");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_LCDWriteString
	goto	l4359
	line	41
	
l1230:	
	goto	l4359
	line	43
	
l1229:	
	
l4359:	
;main.c: 41: }
;main.c: 43: if(RE1 == 1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(73/8),(73)&7
	goto	u3651
	goto	u3650
u3651:
	goto	l4365
u3650:
	line	45
	
l4361:	
;main.c: 44: {
;main.c: 45: LCDWriteCommand(0xD4);
	movlw	(0D4h)
	fcall	_LCDWriteCommand
	line	46
	
l4363:	
;main.c: 46: LCDWriteString("hALL ON ");
	movlw	((STR_6-__stringbase))&0ffh
	fcall	_LCDWriteString
	goto	l4365
	line	47
	
l1231:	
	line	48
	
l4365:	
;main.c: 47: }
;main.c: 48: if(RE1 == 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(73/8),(73)&7
	goto	u3661
	goto	u3660
u3661:
	goto	l4325
u3660:
	line	50
	
l4367:	
;main.c: 49: {
;main.c: 50: LCDWriteCommand(0xD4);
	movlw	(0D4h)
	fcall	_LCDWriteCommand
	line	51
	
l4369:	
;main.c: 51: LCDWriteString("hALL Off");
	movlw	((STR_7-__stringbase))&0ffh
	fcall	_LCDWriteString
	goto	l4325
	line	52
	
l1232:	
	line	53
;main.c: 52: }
;main.c: 53: }
	goto	l4325
	
l1233:	
	line	54
	
l1234:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_MainSystemInitialize
psect	text510,local,class=CODE,delta=2
global __ptext510
__ptext510:

;; *************** function _MainSystemInitialize *****************
;; Defined at:
;;		line 57 in file "C:\Users\X4ROY\Desktop\URE\LCD Interfacing\main.c"
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_ADCInitialize
;;		_LCDInitialize
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text510
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing\main.c"
	line	57
	global	__size_of_MainSystemInitialize
	__size_of_MainSystemInitialize	equ	__end_of_MainSystemInitialize-_MainSystemInitialize
	
_MainSystemInitialize:	
	opt	stack 1
; Regs used in _MainSystemInitialize: [wreg+status,2+status,0+pclath+cstack]
	line	58
	
l4317:	
;main.c: 58: ADCInitialize();
	fcall	_ADCInitialize
	line	59
	
l4319:	
;main.c: 59: LCDInitialize();
	fcall	_LCDInitialize
	line	60
	
l1237:	
	return
	opt stack 0
GLOBAL	__end_of_MainSystemInitialize
	__end_of_MainSystemInitialize:
;; =============== function _MainSystemInitialize ends ============

	signat	_MainSystemInitialize,88
	global	_LCDWriteFloat
psect	text511,local,class=CODE,delta=2
global __ptext511
__ptext511:

;; *************** function _LCDWriteFloat *****************
;; Defined at:
;;		line 90 in file "C:\Users\X4ROY\Desktop\URE\LCD Interfacing\LCD.c"
;; Parameters:    Size  Location     Type
;;  FloatNumber     3   32[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  c               6   36[BANK0 ] unsigned char [6]
;;  n               2   48[BANK0 ] int 
;;  Temp            2   45[BANK0 ] int 
;;  i               1   47[BANK0 ] unsigned char 
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
;;      Locals:         0      14       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      18       0       0       0
;;Total ram usage:       18 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		___ftge
;;		_LCDWriteData
;;		___ftneg
;;		___fttol
;;		_LCDWriteInteger
;;		___awtoft
;;		___ftadd
;;		___ftmul
;;		___awmod
;;		___awdiv
;;		_LCDWriteCommand
;;		_LCDWriteString
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text511
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing\LCD.c"
	line	90
	global	__size_of_LCDWriteFloat
	__size_of_LCDWriteFloat	equ	__end_of_LCDWriteFloat-_LCDWriteFloat
	
_LCDWriteFloat:	
	opt	stack 2
; Regs used in _LCDWriteFloat: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	92
	
l4267:	
;LCD.c: 91: unsigned char c[6];
;LCD.c: 92: unsigned char i = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCDWriteFloat@i)
	line	94
	
l4269:	
;LCD.c: 93: int n, Temp;
;LCD.c: 94: if(FloatNumber < 0)
	movf	(LCDWriteFloat@FloatNumber),w
	movwf	(?___ftge)
	movf	(LCDWriteFloat@FloatNumber+1),w
	movwf	(?___ftge+1)
	movf	(LCDWriteFloat@FloatNumber+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0x0
	movwf	1+(?___ftge)+03h
	movlw	0x0
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u3571
	goto	u3570
u3571:
	goto	l4275
u3570:
	line	96
	
l4271:	
;LCD.c: 95: {
;LCD.c: 96: LCDWriteData('-');
	movlw	(02Dh)
	fcall	_LCDWriteData
	line	97
	
l4273:	
;LCD.c: 97: FloatNumber = -(FloatNumber);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDWriteFloat@FloatNumber),w
	movwf	(?___ftneg)
	movf	(LCDWriteFloat@FloatNumber+1),w
	movwf	(?___ftneg+1)
	movf	(LCDWriteFloat@FloatNumber+2),w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	movf	(0+(?___ftneg)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCDWriteFloat@FloatNumber)
	movf	(1+(?___ftneg)),w
	movwf	(LCDWriteFloat@FloatNumber+1)
	movf	(2+(?___ftneg)),w
	movwf	(LCDWriteFloat@FloatNumber+2)
	goto	l4275
	line	98
	
l614:	
	line	99
	
l4275:	
;LCD.c: 98: }
;LCD.c: 99: n = FloatNumber;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDWriteFloat@FloatNumber),w
	movwf	(?___fttol)
	movf	(LCDWriteFloat@FloatNumber+1),w
	movwf	(?___fttol+1)
	movf	(LCDWriteFloat@FloatNumber+2),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDWriteFloat@n+1)
	addwf	(LCDWriteFloat@n+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(LCDWriteFloat@n)
	addwf	(LCDWriteFloat@n)

	line	100
	
l4277:	
;LCD.c: 100: Temp = n;
	movf	(LCDWriteFloat@n+1),w
	clrf	(LCDWriteFloat@Temp+1)
	addwf	(LCDWriteFloat@Temp+1)
	movf	(LCDWriteFloat@n),w
	clrf	(LCDWriteFloat@Temp)
	addwf	(LCDWriteFloat@Temp)

	line	101
	
l4279:	
;LCD.c: 101: LCDWriteInteger(n);
	movf	(LCDWriteFloat@n+1),w
	clrf	(?_LCDWriteInteger+1)
	addwf	(?_LCDWriteInteger+1)
	movf	(LCDWriteFloat@n),w
	clrf	(?_LCDWriteInteger)
	addwf	(?_LCDWriteInteger)

	fcall	_LCDWriteInteger
	line	102
	
l4281:	
;LCD.c: 102: LCDWriteData('.');
	movlw	(02Eh)
	fcall	_LCDWriteData
	line	103
	
l4283:	
;LCD.c: 103: FloatNumber = ((FloatNumber - n) + 1) * 1000;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDWriteFloat@FloatNumber),w
	movwf	(?___ftadd)
	movf	(LCDWriteFloat@FloatNumber+1),w
	movwf	(?___ftadd+1)
	movf	(LCDWriteFloat@FloatNumber+2),w
	movwf	(?___ftadd+2)
	movf	(LCDWriteFloat@n+1),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(LCDWriteFloat@n),w
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
	movwf	(_LCDWriteFloat$1282)
	movf	(1+(?___ftadd)),w
	movwf	(_LCDWriteFloat$1282+1)
	movf	(2+(?___ftadd)),w
	movwf	(_LCDWriteFloat$1282+2)
	
l4285:	
;LCD.c: 103: FloatNumber = ((FloatNumber - n) + 1) * 1000;
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
	movf	(_LCDWriteFloat$1282),w
	movwf	0+(?___ftadd)+03h
	movf	(_LCDWriteFloat$1282+1),w
	movwf	1+(?___ftadd)+03h
	movf	(_LCDWriteFloat$1282+2),w
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
	movwf	(LCDWriteFloat@FloatNumber)
	movf	(1+(?___ftmul)),w
	movwf	(LCDWriteFloat@FloatNumber+1)
	movf	(2+(?___ftmul)),w
	movwf	(LCDWriteFloat@FloatNumber+2)
	line	104
	
l4287:	
;LCD.c: 104: n = FloatNumber;
	movf	(LCDWriteFloat@FloatNumber),w
	movwf	(?___fttol)
	movf	(LCDWriteFloat@FloatNumber+1),w
	movwf	(?___fttol+1)
	movf	(LCDWriteFloat@FloatNumber+2),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDWriteFloat@n+1)
	addwf	(LCDWriteFloat@n+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(LCDWriteFloat@n)
	addwf	(LCDWriteFloat@n)

	line	106
;LCD.c: 106: while(n > 0)
	goto	l4295
	
l616:	
	line	108
	
l4289:	
;LCD.c: 107: {
;LCD.c: 108: c[i++] = (n % 10) + 48;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDWriteFloat@n+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(LCDWriteFloat@n),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(0+(?___awmod)),w
	addlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCDWriteFloat+0)+0
	movf	(LCDWriteFloat@i),w
	addlw	LCDWriteFloat@c&0ffh
	movwf	fsr0
	movf	(??_LCDWriteFloat+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l4291:	
	movlw	(01h)
	movwf	(??_LCDWriteFloat+0)+0
	movf	(??_LCDWriteFloat+0)+0,w
	addwf	(LCDWriteFloat@i),f
	line	109
	
l4293:	
;LCD.c: 109: n /= 10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(LCDWriteFloat@n+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(LCDWriteFloat@n),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(LCDWriteFloat@n+1)
	addwf	(LCDWriteFloat@n+1)
	movf	(0+(?___awdiv)),w
	clrf	(LCDWriteFloat@n)
	addwf	(LCDWriteFloat@n)

	goto	l4295
	line	110
	
l615:	
	line	106
	
l4295:	
	movf	(LCDWriteFloat@n+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3585
	movlw	low(01h)
	subwf	(LCDWriteFloat@n),w
u3585:

	skipnc
	goto	u3581
	goto	u3580
u3581:
	goto	l4289
u3580:
	goto	l4297
	
l617:	
	line	111
	
l4297:	
;LCD.c: 110: }
;LCD.c: 111: i -= 1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(LCDWriteFloat@i),f
	line	112
;LCD.c: 112: while(i-- > 1)
	goto	l4301
	
l619:	
	line	113
	
l4299:	
;LCD.c: 113: LCDWriteData(c[i]);
	movf	(LCDWriteFloat@i),w
	addlw	LCDWriteFloat@c&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_LCDWriteData
	goto	l4301
	
l618:	
	line	112
	
l4301:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(LCDWriteFloat@i),f
	btfss	status,2
	goto	u3591
	goto	u3590
u3591:
	goto	l4299
u3590:
	goto	l4303
	
l620:	
	line	115
	
l4303:	
;LCD.c: 115: if(Temp < 10)
	movf	(LCDWriteFloat@Temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u3605
	movlw	low(0Ah)
	subwf	(LCDWriteFloat@Temp),w
u3605:

	skipnc
	goto	u3601
	goto	u3600
u3601:
	goto	l4309
u3600:
	line	117
	
l4305:	
;LCD.c: 116: {
;LCD.c: 117: LCDWriteCommand(0xcc);
	movlw	(0CCh)
	fcall	_LCDWriteCommand
	line	118
	
l4307:	
;LCD.c: 118: LCDWriteString("  ");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_LCDWriteString
	goto	l4309
	line	120
	
l621:	
	line	121
	
l4309:	
;LCD.c: 120: }
;LCD.c: 121: if(Temp >= 10 && Temp < 100)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDWriteFloat@Temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u3615
	movlw	low(0Ah)
	subwf	(LCDWriteFloat@Temp),w
u3615:

	skipc
	goto	u3611
	goto	u3610
u3611:
	goto	l623
u3610:
	
l4311:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDWriteFloat@Temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3625
	movlw	low(064h)
	subwf	(LCDWriteFloat@Temp),w
u3625:

	skipnc
	goto	u3621
	goto	u3620
u3621:
	goto	l623
u3620:
	line	123
	
l4313:	
;LCD.c: 122: {
;LCD.c: 123: LCDWriteCommand(0xcd);
	movlw	(0CDh)
	fcall	_LCDWriteCommand
	line	124
	
l4315:	
;LCD.c: 124: LCDWriteString(" ");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_LCDWriteString
	goto	l623
	line	126
	
l622:	
	line	127
	
l623:	
	return
	opt stack 0
GLOBAL	__end_of_LCDWriteFloat
	__end_of_LCDWriteFloat:
;; =============== function _LCDWriteFloat ends ============

	signat	_LCDWriteFloat,4216
	global	_LCDInitialize
psect	text512,local,class=CODE,delta=2
global __ptext512
__ptext512:

;; *************** function _LCDInitialize *****************
;; Defined at:
;;		line 32 in file "C:\Users\X4ROY\Desktop\URE\LCD Interfacing\LCD.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCDReset
;;		_LCDWriteCommand
;; This function is called by:
;;		_MainSystemInitialize
;; This function uses a non-reentrant model
;;
psect	text512
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing\LCD.c"
	line	32
	global	__size_of_LCDInitialize
	__size_of_LCDInitialize	equ	__end_of_LCDInitialize-_LCDInitialize
	
_LCDInitialize:	
	opt	stack 1
; Regs used in _LCDInitialize: [wreg+status,2+status,0+pclath+cstack]
	line	33
	
l4249:	
;LCD.c: 33: TRISD = TRISD & 0x03;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(136)^080h,w
	andlw	03h
	movwf	(136)^080h	;volatile
	line	34
	
l4251:	
;LCD.c: 34: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	35
	
l4253:	
;LCD.c: 35: RD2 = 0;
	bcf	(66/8),(66)&7
	line	36
	
l4255:	
;LCD.c: 36: PORTD &= 0x0f;
	movlw	(0Fh)
	movwf	(??_LCDInitialize+0)+0
	movf	(??_LCDInitialize+0)+0,w
	andwf	(8),f	;volatile
	line	37
	
l4257:	
;LCD.c: 37: LCDReset();
	fcall	_LCDReset
	line	38
	
l4259:	
;LCD.c: 38: LCDWriteCommand(0x28);
	movlw	(028h)
	fcall	_LCDWriteCommand
	line	39
	
l4261:	
;LCD.c: 39: LCDWriteCommand(0x0C);
	movlw	(0Ch)
	fcall	_LCDWriteCommand
	line	40
	
l4263:	
;LCD.c: 40: LCDWriteCommand(0x06);
	movlw	(06h)
	fcall	_LCDWriteCommand
	line	41
	
l4265:	
;LCD.c: 41: LCDWriteCommand(0x01);
	movlw	(01h)
	fcall	_LCDWriteCommand
	line	43
	
l591:	
	return
	opt stack 0
GLOBAL	__end_of_LCDInitialize
	__end_of_LCDInitialize:
;; =============== function _LCDInitialize ends ============

	signat	_LCDInitialize,88
	global	_LCDWriteInteger
psect	text513,local,class=CODE,delta=2
global __ptext513
__ptext513:

;; *************** function _LCDWriteInteger *****************
;; Defined at:
;;		line 129 in file "C:\Users\X4ROY\Desktop\URE\LCD Interfacing\LCD.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCDWriteData
;;		___awmod
;;		___awdiv
;; This function is called by:
;;		_LCDWriteFloat
;; This function uses a non-reentrant model
;;
psect	text513
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing\LCD.c"
	line	129
	global	__size_of_LCDWriteInteger
	__size_of_LCDWriteInteger	equ	__end_of_LCDWriteInteger-_LCDWriteInteger
	
_LCDWriteInteger:	
	opt	stack 2
; Regs used in _LCDWriteInteger: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	131
	
l4225:	
;LCD.c: 130: unsigned char c[6];
;LCD.c: 131: unsigned char i = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCDWriteInteger@i)
	line	133
	
l4227:	
;LCD.c: 133: if(IntegerNumber < 0)
	btfss	(LCDWriteInteger@IntegerNumber+1),7
	goto	u3531
	goto	u3530
u3531:
	goto	l4233
u3530:
	line	135
	
l4229:	
;LCD.c: 134: {
;LCD.c: 135: LCDWriteData('-');
	movlw	(02Dh)
	fcall	_LCDWriteData
	line	136
	
l4231:	
;LCD.c: 136: IntegerNumber = - (IntegerNumber);
	comf	(LCDWriteInteger@IntegerNumber),f
	comf	(LCDWriteInteger@IntegerNumber+1),f
	incf	(LCDWriteInteger@IntegerNumber),f
	skipnz
	incf	(LCDWriteInteger@IntegerNumber+1),f
	goto	l4233
	line	137
	
l626:	
	line	139
	
l4233:	
;LCD.c: 137: }
;LCD.c: 139: if(IntegerNumber == 0)
	movf	((LCDWriteInteger@IntegerNumber+1)),w
	iorwf	((LCDWriteInteger@IntegerNumber)),w
	skipz
	goto	u3541
	goto	u3540
u3541:
	goto	l4243
u3540:
	line	140
	
l4235:	
;LCD.c: 140: LCDWriteData(0x30);
	movlw	(030h)
	fcall	_LCDWriteData
	goto	l4243
	
l627:	
	line	142
;LCD.c: 142: while( IntegerNumber > 0)
	goto	l4243
	
l629:	
	line	144
	
l4237:	
;LCD.c: 143: {
;LCD.c: 144: c[i++] = ((IntegerNumber % 10) | 0x30);
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(LCDWriteInteger@IntegerNumber+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(LCDWriteInteger@IntegerNumber),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(0+(?___awmod)),w
	iorlw	030h
	movwf	(??_LCDWriteInteger+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDWriteInteger@i),w
	addlw	LCDWriteInteger@c&0ffh
	movwf	fsr0
	movf	(??_LCDWriteInteger+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l4239:	
	movlw	(01h)
	movwf	(??_LCDWriteInteger+0)+0
	movf	(??_LCDWriteInteger+0)+0,w
	addwf	(LCDWriteInteger@i),f
	line	145
	
l4241:	
;LCD.c: 145: IntegerNumber /= 10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(LCDWriteInteger@IntegerNumber+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(LCDWriteInteger@IntegerNumber),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	clrf	(LCDWriteInteger@IntegerNumber+1)
	addwf	(LCDWriteInteger@IntegerNumber+1)
	movf	(0+(?___awdiv)),w
	clrf	(LCDWriteInteger@IntegerNumber)
	addwf	(LCDWriteInteger@IntegerNumber)

	goto	l4243
	line	146
	
l628:	
	line	142
	
l4243:	
	movf	(LCDWriteInteger@IntegerNumber+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3555
	movlw	low(01h)
	subwf	(LCDWriteInteger@IntegerNumber),w
u3555:

	skipnc
	goto	u3551
	goto	u3550
u3551:
	goto	l4237
u3550:
	goto	l4247
	
l630:	
	line	148
;LCD.c: 146: }
;LCD.c: 148: while(i-- > 0)
	goto	l4247
	
l632:	
	line	149
	
l4245:	
;LCD.c: 149: LCDWriteData(c[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDWriteInteger@i),w
	addlw	LCDWriteInteger@c&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_LCDWriteData
	goto	l4247
	
l631:	
	line	148
	
l4247:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(LCDWriteInteger@i),f
	movf	((LCDWriteInteger@i)),w
	xorlw	0FFh
	skipz
	goto	u3561
	goto	u3560
u3561:
	goto	l4245
u3560:
	goto	l634
	
l633:	
	line	152
	
l634:	
	return
	opt stack 0
GLOBAL	__end_of_LCDWriteInteger
	__end_of_LCDWriteInteger:
;; =============== function _LCDWriteInteger ends ============

	signat	_LCDWriteInteger,4216
	global	_LCDReset
psect	text514,local,class=CODE,delta=2
global __ptext514
__ptext514:

;; *************** function _LCDReset *****************
;; Defined at:
;;		line 45 in file "C:\Users\X4ROY\Desktop\URE\LCD Interfacing\LCD.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCDWriteCommand
;; This function is called by:
;;		_LCDInitialize
;; This function uses a non-reentrant model
;;
psect	text514
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing\LCD.c"
	line	45
	global	__size_of_LCDReset
	__size_of_LCDReset	equ	__end_of_LCDReset-_LCDReset
	
_LCDReset:	
	opt	stack 1
; Regs used in _LCDReset: [wreg+status,2+status,0+pclath+cstack]
	line	46
	
l4223:	
;LCD.c: 46: LCDWriteCommand(0x33);
	movlw	(033h)
	fcall	_LCDWriteCommand
	line	47
;LCD.c: 47: LCDWriteCommand(0x33);
	movlw	(033h)
	fcall	_LCDWriteCommand
	line	48
;LCD.c: 48: LCDWriteCommand(0x32);
	movlw	(032h)
	fcall	_LCDWriteCommand
	line	49
	
l594:	
	return
	opt stack 0
GLOBAL	__end_of_LCDReset
	__end_of_LCDReset:
;; =============== function _LCDReset ends ============

	signat	_LCDReset,88
	global	_LCDWriteString
psect	text515,local,class=CODE,delta=2
global __ptext515
__ptext515:

;; *************** function _LCDWriteString *****************
;; Defined at:
;;		line 24 in file "C:\Users\X4ROY\Desktop\URE\LCD Interfacing\LCD.c"
;; Parameters:    Size  Location     Type
;;  lcd_string      1    wreg     PTR const unsigned char 
;;		 -> STR_7(9), STR_6(9), STR_5(7), STR_4(7), 
;;		 -> STR_3(2), STR_2(3), STR_1(17), 
;; Auto vars:     Size  Location     Type
;;  lcd_string      1    8[COMMON] PTR const unsigned char 
;;		 -> STR_7(9), STR_6(9), STR_5(7), STR_4(7), 
;;		 -> STR_3(2), STR_2(3), STR_1(17), 
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCDWriteData
;; This function is called by:
;;		_LCDWriteFloat
;;		_main
;;		_LCDDisplayInitializing
;; This function uses a non-reentrant model
;;
psect	text515
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing\LCD.c"
	line	24
	global	__size_of_LCDWriteString
	__size_of_LCDWriteString	equ	__end_of_LCDWriteString-_LCDWriteString
	
_LCDWriteString:	
	opt	stack 3
; Regs used in _LCDWriteString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;LCDWriteString@lcd_string stored from wreg
	movwf	(LCDWriteString@lcd_string)
	line	25
	
l4215:	
;LCD.c: 25: while(*lcd_string)
	goto	l4221
	
l586:	
	line	27
	
l4217:	
;LCD.c: 26: {
;LCD.c: 27: LCDWriteData(*lcd_string++);
	movf	(LCDWriteString@lcd_string),w
	movwf	fsr0
	fcall	stringdir
	fcall	_LCDWriteData
	
l4219:	
	movlw	(01h)
	movwf	(??_LCDWriteString+0)+0
	movf	(??_LCDWriteString+0)+0,w
	addwf	(LCDWriteString@lcd_string),f
	goto	l4221
	line	28
	
l585:	
	line	25
	
l4221:	
	movf	(LCDWriteString@lcd_string),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3521
	goto	u3520
u3521:
	goto	l4217
u3520:
	goto	l588
	
l587:	
	line	29
	
l588:	
	return
	opt stack 0
GLOBAL	__end_of_LCDWriteString
	__end_of_LCDWriteString:
;; =============== function _LCDWriteString ends ============

	signat	_LCDWriteString,4216
	global	_LCDWriteData
psect	text516,local,class=CODE,delta=2
global __ptext516
__ptext516:

;; *************** function _LCDWriteData *****************
;; Defined at:
;;		line 18 in file "C:\Users\X4ROY\Desktop\URE\LCD Interfacing\LCD.c"
;; Parameters:    Size  Location     Type
;;  LCDData         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  LCDData         1    6[COMMON] unsigned char 
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
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCDWriteByte
;; This function is called by:
;;		_LCDWriteString
;;		_LCDWriteFloat
;;		_LCDWriteInteger
;;		_LCDDisplayInitializing
;;		_LCDDisplayByte
;; This function uses a non-reentrant model
;;
psect	text516
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing\LCD.c"
	line	18
	global	__size_of_LCDWriteData
	__size_of_LCDWriteData	equ	__end_of_LCDWriteData-_LCDWriteData
	
_LCDWriteData:	
	opt	stack 3
; Regs used in _LCDWriteData: [wreg+status,2+status,0+pclath+cstack]
;LCDWriteData@LCDData stored from wreg
	movwf	(LCDWriteData@LCDData)
	line	19
	
l4211:	
;LCD.c: 19: RD2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7
	line	20
	
l4213:	
;LCD.c: 20: LCDWriteByte(LCDData);
	movf	(LCDWriteData@LCDData),w
	fcall	_LCDWriteByte
	line	21
	
l582:	
	return
	opt stack 0
GLOBAL	__end_of_LCDWriteData
	__end_of_LCDWriteData:
;; =============== function _LCDWriteData ends ============

	signat	_LCDWriteData,4216
	global	_LCDWriteCommand
psect	text517,local,class=CODE,delta=2
global __ptext517
__ptext517:

;; *************** function _LCDWriteCommand *****************
;; Defined at:
;;		line 12 in file "C:\Users\X4ROY\Desktop\URE\LCD Interfacing\LCD.c"
;; Parameters:    Size  Location     Type
;;  LCDData         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  LCDData         1    6[COMMON] unsigned char 
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
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCDWriteByte
;; This function is called by:
;;		_LCDInitialize
;;		_LCDReset
;;		_LCDWriteFloat
;;		_main
;;		_LCDDisplayInitializing
;;		_LCDDisplayByte
;; This function uses a non-reentrant model
;;
psect	text517
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing\LCD.c"
	line	12
	global	__size_of_LCDWriteCommand
	__size_of_LCDWriteCommand	equ	__end_of_LCDWriteCommand-_LCDWriteCommand
	
_LCDWriteCommand:	
	opt	stack 3
; Regs used in _LCDWriteCommand: [wreg+status,2+status,0+pclath+cstack]
;LCDWriteCommand@LCDData stored from wreg
	movwf	(LCDWriteCommand@LCDData)
	line	13
	
l4207:	
;LCD.c: 13: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	14
	
l4209:	
;LCD.c: 14: LCDWriteByte(LCDData);
	movf	(LCDWriteCommand@LCDData),w
	fcall	_LCDWriteByte
	line	15
	
l579:	
	return
	opt stack 0
GLOBAL	__end_of_LCDWriteCommand
	__end_of_LCDWriteCommand:
;; =============== function _LCDWriteCommand ends ============

	signat	_LCDWriteCommand,4216
	global	_ADCReadData
psect	text518,local,class=CODE,delta=2
global __ptext518
__ptext518:

;; *************** function _ADCReadData *****************
;; Defined at:
;;		line 13 in file "C:\Users\X4ROY\Desktop\URE\LCD Interfacing\adc.c"
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
psect	text518
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing\adc.c"
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
	
l4179:	
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
	
l4181:	
;adc.c: 18: ADCON0 = ((ADCON0 & 0xc7) | (ChannelNumber));
	movf	(31),w
	andlw	0C7h
	iorwf	(ADCReadData@ChannelNumber),w
	movwf	(31)	;volatile
	line	19
	
l4183:	
;adc.c: 19: Delay(1);
	movlw	low(01h)
	movwf	(?_Delay)
	movlw	high(01h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	21
	
l4185:	
;adc.c: 21: ADON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(248/8),(248)&7
	line	22
	
l4187:	
;adc.c: 22: ADCON0 |= 0x04;
	bsf	(31)+(2/8),(2)&7	;volatile
	line	23
;adc.c: 23: while( (ADCON0 & 0x02) == 1);
	goto	l4189
	
l1802:	
	goto	l4189
	
l1801:	
	
l4189:	
	movf	(31),w
	andlw	02h
	xorlw	01h
	skipnz
	goto	u3511
	goto	u3510
u3511:
	goto	l4189
u3510:
	goto	l4191
	
l1803:	
	line	25
	
l4191:	
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
	
l4193:	
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
	
l4195:	
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
	
l4197:	
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
	
l4199:	
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
	
l4201:	
;adc.c: 32: Delay(1);
	movlw	low(01h)
	movwf	(?_Delay)
	movlw	high(01h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	33
	
l4203:	
;adc.c: 33: return p;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ADCReadData@p),w
	movwf	(?_ADCReadData)
	movf	(ADCReadData@p+1),w
	movwf	(?_ADCReadData+1)
	movf	(ADCReadData@p+2),w
	movwf	(?_ADCReadData+2)
	goto	l1804
	
l4205:	
	line	35
	
l1804:	
	return
	opt stack 0
GLOBAL	__end_of_ADCReadData
	__end_of_ADCReadData:
;; =============== function _ADCReadData ends ============

	signat	_ADCReadData,4219
	global	_LCDWriteByte
psect	text519,local,class=CODE,delta=2
global __ptext519
__ptext519:

;; *************** function _LCDWriteByte *****************
;; Defined at:
;;		line 64 in file "C:\Users\X4ROY\Desktop\URE\LCD Interfacing\LCD.c"
;; Parameters:    Size  Location     Type
;;  LCDData         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  LCDData         1    5[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_LCDEnable
;;		_Delay
;; This function is called by:
;;		_LCDWriteCommand
;;		_LCDWriteData
;; This function uses a non-reentrant model
;;
psect	text519
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing\LCD.c"
	line	64
	global	__size_of_LCDWriteByte
	__size_of_LCDWriteByte	equ	__end_of_LCDWriteByte-_LCDWriteByte
	
_LCDWriteByte:	
	opt	stack 3
; Regs used in _LCDWriteByte: [wreg+status,2+status,0+pclath+cstack]
;LCDWriteByte@LCDData stored from wreg
	movwf	(LCDWriteByte@LCDData)
	line	65
	
l4173:	
;LCD.c: 65: PORTD = (PORTD & 0x0F)|(LCDData & 0xF0);
	movlw	(0F0h)
	andwf	(LCDWriteByte@LCDData),w
	movwf	(??_LCDWriteByte+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w
	andlw	0Fh
	iorwf	0+(??_LCDWriteByte+0)+0,w
	movwf	(8)	;volatile
	line	66
	
l4175:	
;LCD.c: 66: LCDEnable();
	fcall	_LCDEnable
	line	67
	
l4177:	
;LCD.c: 67: PORTD = (PORTD & 0x0F)|(LCDData << 4);
	movf	(LCDWriteByte@LCDData),w
	movwf	(??_LCDWriteByte+0)+0
	movlw	04h
u3505:
	clrc
	rlf	(??_LCDWriteByte+0)+0,f
	addlw	-1
	skipz
	goto	u3505
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(8),w
	andlw	0Fh
	iorwf	0+(??_LCDWriteByte+0)+0,w
	movwf	(8)	;volatile
	line	68
;LCD.c: 68: LCDEnable();
	fcall	_LCDEnable
	line	69
;LCD.c: 69: Delay(2);
	movlw	low(02h)
	movwf	(?_Delay)
	movlw	high(02h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	70
	
l602:	
	return
	opt stack 0
GLOBAL	__end_of_LCDWriteByte
	__end_of_LCDWriteByte:
;; =============== function _LCDWriteByte ends ============

	signat	_LCDWriteByte,4216
	global	___lwtoft
psect	text520,local,class=CODE,delta=2
global __ptext520
__ptext520:

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
psect	text520
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwtoft.c"
	line	29
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
	opt	stack 5
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l4169:	
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
	goto	l2036
	
l4171:	
	line	31
	
l2036:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
;; =============== function ___lwtoft ends ============

	signat	___lwtoft,4219
	global	___awtoft
psect	text521,local,class=CODE,delta=2
global __ptext521
__ptext521:

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
;;		_LCDWriteFloat
;; This function uses a non-reentrant model
;;
psect	text521
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 5
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l4159:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awtoft@sign)
	line	37
	
l4161:	
	btfss	(___awtoft@c+1),7
	goto	u3491
	goto	u3490
u3491:
	goto	l4165
u3490:
	line	38
	
l4163:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	l4165
	line	40
	
l1949:	
	line	41
	
l4165:	
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
	goto	l1950
	
l4167:	
	line	42
	
l1950:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text522,local,class=CODE,delta=2
global __ptext522
__ptext522:

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
;;		_LCDWriteFloat
;;		_ADCReadData
;; This function uses a non-reentrant model
;;
psect	text522
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 5
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l4109:	
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
	goto	u3351
	goto	u3350
u3351:
	goto	l4115
u3350:
	line	57
	
l4111:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l1912
	
l4113:	
	goto	l1912
	
l1911:	
	line	58
	
l4115:	
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
	goto	u3361
	goto	u3360
u3361:
	goto	l4121
u3360:
	line	59
	
l4117:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l1912
	
l4119:	
	goto	l1912
	
l1913:	
	line	60
	
l4121:	
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
u3375:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3370:
	addlw	-1
	skipz
	goto	u3375
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
u3385:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3380:
	addlw	-1
	skipz
	goto	u3385
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
	
l4123:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l4125:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l4127:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l4129:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l4131:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l4133
	line	70
	
l1914:	
	line	71
	
l4133:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3391
	goto	u3390
u3391:
	goto	l4137
u3390:
	line	72
	
l4135:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3401
	addwf	(___ftmul@f3_as_product+1),f
u3401:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3402
	addwf	(___ftmul@f3_as_product+2),f
u3402:

	goto	l4137
	
l1915:	
	line	73
	
l4137:	
	movlw	01h
u3415:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3415

	line	74
	
l4139:	
	movlw	01h
u3425:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u3425
	line	75
	
l4141:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3431
	goto	u3430
u3431:
	goto	l4133
u3430:
	goto	l4143
	
l1916:	
	line	76
	
l4143:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l4145
	line	77
	
l1917:	
	line	78
	
l4145:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3441
	goto	u3440
u3441:
	goto	l4149
u3440:
	line	79
	
l4147:	
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

	goto	l4149
	
l1918:	
	line	80
	
l4149:	
	movlw	01h
u3465:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3465

	line	81
	
l4151:	
	movlw	01h
u3475:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u3475

	line	82
	
l4153:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3481
	goto	u3480
u3481:
	goto	l4145
u3480:
	goto	l4155
	
l1919:	
	line	83
	
l4155:	
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
	goto	l1912
	
l4157:	
	line	84
	
l1912:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text523,local,class=CODE,delta=2
global __ptext523
__ptext523:

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
;; This function uses a non-reentrant model
;;
psect	text523
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 5
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l4067:	
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
	goto	u3271
	goto	u3270
u3271:
	goto	l4073
u3270:
	line	56
	
l4069:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l1902
	
l4071:	
	goto	l1902
	
l1901:	
	line	57
	
l4073:	
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
	goto	u3281
	goto	u3280
u3281:
	goto	l4079
u3280:
	line	58
	
l4075:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l1902
	
l4077:	
	goto	l1902
	
l1903:	
	line	59
	
l4079:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l4081:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l4083:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3295:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3290:
	addlw	-1
	skipz
	goto	u3295
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l4085:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3305:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3300:
	addlw	-1
	skipz
	goto	u3305
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l4087:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l4089:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l4091:	
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
	goto	l4093
	line	69
	
l1904:	
	line	70
	
l4093:	
	movlw	01h
u3315:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u3315
	line	71
	
l4095:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u3325
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u3325
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u3325:
	skipc
	goto	u3321
	goto	u3320
u3321:
	goto	l4101
u3320:
	line	72
	
l4097:	
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
	
l4099:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l4101
	line	74
	
l1905:	
	line	75
	
l4101:	
	movlw	01h
u3335:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u3335
	line	76
	
l4103:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u3341
	goto	u3340
u3341:
	goto	l4093
u3340:
	goto	l4105
	
l1906:	
	line	77
	
l4105:	
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
	goto	l1902
	
l4107:	
	line	78
	
l1902:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___ftadd
psect	text524,local,class=CODE,delta=2
global __ptext524
__ptext524:

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
;;		_LCDWriteFloat
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text524
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 5
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l3995:	
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
	
l3997:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u3030
	goto	l4003
u3030:
	
l3999:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u3041
	goto	u3040
u3041:
	goto	l4007
u3040:
	
l4001:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3051
	goto	u3050
u3051:
	goto	l4007
u3050:
	goto	l4003
	
l1859:	
	line	93
	
l4003:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l1860
	
l4005:	
	goto	l1860
	
l1857:	
	line	94
	
l4007:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u3060
	goto	l1863
u3060:
	
l4009:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3071
	goto	u3070
u3071:
	goto	l4013
u3070:
	
l4011:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3081
	goto	u3080
u3081:
	goto	l4013
u3080:
	
l1863:	
	line	95
	goto	l1860
	
l1861:	
	line	96
	
l4013:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l4015:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u3091
	goto	u3090
u3091:
	goto	l1864
u3090:
	line	98
	
l4017:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l1864:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3101
	goto	u3100
u3101:
	goto	l1865
u3100:
	line	100
	
l4019:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l1865:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l4021:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l4023:	
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
	goto	u3111
	goto	u3110
u3111:
	goto	l4035
u3110:
	goto	l4025
	line	109
	
l1867:	
	line	110
	
l4025:	
	movlw	01h
u3125:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u3125
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l4027:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3131
	goto	u3130
u3131:
	goto	l4033
u3130:
	
l4029:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3141
	goto	u3140
u3141:
	goto	l4025
u3140:
	goto	l4033
	
l1869:	
	goto	l4033
	
l1870:	
	line	113
	goto	l4033
	
l1872:	
	line	114
	
l4031:	
	movlw	01h
u3155:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u3155

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l4033
	line	116
	
l1871:	
	line	113
	
l4033:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3161
	goto	u3160
u3161:
	goto	l4031
u3160:
	goto	l1874
	
l1873:	
	line	117
	goto	l1874
	
l1866:	
	
l4035:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3171
	goto	u3170
u3171:
	goto	l1874
u3170:
	goto	l4037
	line	120
	
l1876:	
	line	121
	
l4037:	
	movlw	01h
u3185:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u3185
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l4039:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3191
	goto	u3190
u3191:
	goto	l4045
u3190:
	
l4041:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3201
	goto	u3200
u3201:
	goto	l4037
u3200:
	goto	l4045
	
l1878:	
	goto	l4045
	
l1879:	
	line	124
	goto	l4045
	
l1881:	
	line	125
	
l4043:	
	movlw	01h
u3215:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u3215

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l4045
	line	127
	
l1880:	
	line	124
	
l4045:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3221
	goto	u3220
u3221:
	goto	l4043
u3220:
	goto	l1874
	
l1882:	
	goto	l1874
	line	128
	
l1875:	
	line	129
	
l1874:	
	btfss	(___ftadd@sign),(7)&7
	goto	u3231
	goto	u3230
u3231:
	goto	l4049
u3230:
	line	131
	
l4047:	
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
	goto	l4049
	line	133
	
l1883:	
	line	134
	
l4049:	
	btfss	(___ftadd@sign),(6)&7
	goto	u3241
	goto	u3240
u3241:
	goto	l4053
u3240:
	line	136
	
l4051:	
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
	goto	l4053
	line	138
	
l1884:	
	line	139
	
l4053:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___ftadd@sign)
	line	140
	
l4055:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u3251
	addwf	(___ftadd@f2+1),f
u3251:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u3252
	addwf	(___ftadd@f2+2),f
u3252:

	line	141
	
l4057:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3261
	goto	u3260
u3261:
	goto	l4063
u3260:
	line	142
	
l4059:	
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
	
l4061:	
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	goto	l4063
	line	145
	
l1885:	
	line	146
	
l4063:	
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
	goto	l1860
	
l4065:	
	line	148
	
l1860:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_LCDEnable
psect	text525,local,class=CODE,delta=2
global __ptext525
__ptext525:

;; *************** function _LCDEnable *****************
;; Defined at:
;;		line 5 in file "C:\Users\X4ROY\Desktop\URE\LCD Interfacing\LCD.c"
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
;;		_Delay
;; This function is called by:
;;		_LCDWriteByte
;; This function uses a non-reentrant model
;;
psect	text525
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing\LCD.c"
	line	5
	global	__size_of_LCDEnable
	__size_of_LCDEnable	equ	__end_of_LCDEnable-_LCDEnable
	
_LCDEnable:	
	opt	stack 3
; Regs used in _LCDEnable: [wreg+status,2+status,0+pclath+cstack]
	line	6
	
l3989:	
;LCD.c: 6: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	7
	
l3991:	
;LCD.c: 7: Delay(10);
	movlw	low(0Ah)
	movwf	(?_Delay)
	movlw	high(0Ah)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	8
	
l3993:	
;LCD.c: 8: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	9
	
l576:	
	return
	opt stack 0
GLOBAL	__end_of_LCDEnable
	__end_of_LCDEnable:
;; =============== function _LCDEnable ends ============

	signat	_LCDEnable,88
	global	___awmod
psect	text526,local,class=CODE,delta=2
global __ptext526
__ptext526:

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
;;		_LCDWriteFloat
;;		_LCDWriteInteger
;;		_LCDDisplayByte
;; This function uses a non-reentrant model
;;
psect	text526
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l3909:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l3911:	
	btfss	(___awmod@dividend+1),7
	goto	u2881
	goto	u2880
u2881:
	goto	l3915
u2880:
	line	10
	
l3913:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l3915
	line	12
	
l2021:	
	line	13
	
l3915:	
	btfss	(___awmod@divisor+1),7
	goto	u2891
	goto	u2890
u2891:
	goto	l3919
u2890:
	line	14
	
l3917:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l3919
	
l2022:	
	line	15
	
l3919:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2901
	goto	u2900
u2901:
	goto	l3937
u2900:
	line	16
	
l3921:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l3927
	
l2025:	
	line	18
	
l3923:	
	movlw	01h
	
u2915:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2915
	line	19
	
l3925:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l3927
	line	20
	
l2024:	
	line	17
	
l3927:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2921
	goto	u2920
u2921:
	goto	l3923
u2920:
	goto	l3929
	
l2026:	
	goto	l3929
	line	21
	
l2027:	
	line	22
	
l3929:	
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
	goto	l3933
u2930:
	line	23
	
l3931:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l3933
	
l2028:	
	line	24
	
l3933:	
	movlw	01h
	
u2945:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2945
	line	25
	
l3935:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2951
	goto	u2950
u2951:
	goto	l3929
u2950:
	goto	l3937
	
l2029:	
	goto	l3937
	line	26
	
l2023:	
	line	27
	
l3937:	
	movf	(___awmod@sign),w
	skipz
	goto	u2960
	goto	l3941
u2960:
	line	28
	
l3939:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l3941
	
l2030:	
	line	29
	
l3941:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l2031
	
l3943:	
	line	30
	
l2031:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___ftge
psect	text527,local,class=CODE,delta=2
global __ptext527
__ptext527:

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
;;		_LCDWriteFloat
;; This function uses a non-reentrant model
;;
psect	text527
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 6
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l3889:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u2831
	goto	u2830
u2831:
	goto	l3893
u2830:
	line	7
	
l3891:	
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
	goto	l3893
	
l1980:	
	line	8
	
l3893:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u2851
	goto	u2850
u2851:
	goto	l3897
u2850:
	line	9
	
l3895:	
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
	goto	l3897
	
l1981:	
	line	10
	
l3897:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l3899:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l3901:	
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
	goto	l3905
u2870:
	
l3903:	
	clrc
	
	goto	l1982
	
l3689:	
	
l3905:	
	setc
	
	goto	l1982
	
l3691:	
	goto	l1982
	
l3907:	
	line	13
	
l1982:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text528,local,class=CODE,delta=2
global __ptext528
__ptext528:

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
;;		_LCDWriteFloat
;; This function uses a non-reentrant model
;;
psect	text528
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 6
; Regs used in ___ftneg: [wreg]
	line	17
	
l3881:	
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u2821
	goto	u2820
u2821:
	goto	l3885
u2820:
	line	18
	
l3883:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l3885
	
l1976:	
	line	19
	
l3885:	
	goto	l1977
	
l3887:	
	line	20
	
l1977:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___awdiv
psect	text529,local,class=CODE,delta=2
global __ptext529
__ptext529:

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
;;		_LCDWriteFloat
;;		_LCDWriteInteger
;;		_LCDDisplayByte
;; This function uses a non-reentrant model
;;
psect	text529
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3843:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awdiv@sign)
	line	10
	
l3845:	
	btfss	(___awdiv@divisor+1),7
	goto	u2721
	goto	u2720
u2721:
	goto	l3849
u2720:
	line	11
	
l3847:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l3849
	line	13
	
l1953:	
	line	14
	
l3849:	
	btfss	(___awdiv@dividend+1),7
	goto	u2731
	goto	u2730
u2731:
	goto	l1954
u2730:
	line	15
	
l3851:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3853:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l1954:	
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
	goto	l3873
u2740:
	line	20
	
l3855:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l3861
	
l1957:	
	line	22
	
l3857:	
	movlw	01h
	
u2755:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2755
	line	23
	
l3859:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3861
	line	24
	
l1956:	
	line	21
	
l3861:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l3857
u2760:
	goto	l3863
	
l1958:	
	goto	l3863
	line	25
	
l1959:	
	line	26
	
l3863:	
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
	goto	l3869
u2780:
	line	28
	
l3865:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3867:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3869
	line	30
	
l1960:	
	line	31
	
l3869:	
	movlw	01h
	
u2795:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2795
	line	32
	
l3871:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l3863
u2800:
	goto	l3873
	
l1961:	
	goto	l3873
	line	33
	
l1955:	
	line	34
	
l3873:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2810
	goto	l3877
u2810:
	line	35
	
l3875:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3877
	
l1962:	
	line	36
	
l3877:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1963
	
l3879:	
	line	37
	
l1963:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text530,local,class=CODE,delta=2
global __ptext530
__ptext530:

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
;;		_LCDWriteFloat
;; This function uses a non-reentrant model
;;
psect	text530
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l3785:	
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
	goto	l3791
u2610:
	line	50
	
l3787:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1923
	
l3789:	
	goto	l1923
	
l1922:	
	line	51
	
l3791:	
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
	
l3793:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l3795:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l3797:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l3799:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l3801:	
	btfss	(___fttol@exp1),7
	goto	u2631
	goto	u2630
u2631:
	goto	l3811
u2630:
	line	57
	
l3803:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2641
	goto	u2640
u2641:
	goto	l3809
u2640:
	line	58
	
l3805:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1923
	
l3807:	
	goto	l1923
	
l1925:	
	goto	l3809
	line	59
	
l1926:	
	line	60
	
l3809:	
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
	goto	l3809
u2660:
	goto	l3821
	
l1927:	
	line	62
	goto	l3821
	
l1924:	
	line	63
	
l3811:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2671
	goto	u2670
u2671:
	goto	l3819
u2670:
	line	64
	
l3813:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1923
	
l3815:	
	goto	l1923
	
l1929:	
	line	65
	goto	l3819
	
l1931:	
	line	66
	
l3817:	
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
	goto	l3819
	line	68
	
l1930:	
	line	65
	
l3819:	
	movf	(___fttol@exp1),f
	skipz
	goto	u2691
	goto	u2690
u2691:
	goto	l3817
u2690:
	goto	l3821
	
l1932:	
	goto	l3821
	line	69
	
l1928:	
	line	70
	
l3821:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2700
	goto	l3825
u2700:
	line	71
	
l3823:	
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
	goto	l3825
	
l1933:	
	line	72
	
l3825:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l1923
	
l3827:	
	line	73
	
l1923:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text531,local,class=CODE,delta=2
global __ptext531
__ptext531:

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
psect	text531
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l3749:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2500
	goto	l3753
u2500:
	
l3751:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2511
	goto	u2510
u2511:
	goto	l3759
u2510:
	goto	l3753
	
l2147:	
	line	65
	
l3753:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l2148
	
l3755:	
	goto	l2148
	
l2145:	
	line	66
	goto	l3759
	
l2150:	
	line	67
	
l3757:	
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

	goto	l3759
	line	69
	
l2149:	
	line	66
	
l3759:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2531
	goto	u2530
u2531:
	goto	l3757
u2530:
	goto	l2152
	
l2151:	
	line	70
	goto	l2152
	
l2153:	
	line	71
	
l3761:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l3763:	
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
	
l3765:	
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
	
l2152:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2551
	goto	u2550
u2551:
	goto	l3761
u2550:
	goto	l3769
	
l2154:	
	line	75
	goto	l3769
	
l2156:	
	line	76
	
l3767:	
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
	goto	l3769
	line	78
	
l2155:	
	line	75
	
l3769:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2571
	goto	u2570
u2571:
	goto	l3767
u2570:
	
l2157:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l2158
u2580:
	line	80
	
l3771:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l2158:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l3773:	
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
	
l3775:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2600
	goto	l2159
u2600:
	line	84
	
l3777:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l2159:	
	line	85
	line	86
	
l2148:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	___wmul
psect	text532,local,class=CODE,delta=2
global __ptext532
__ptext532:

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
psect	text532
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l3737:	
	movlw	low(0)
	movwf	(___wmul@product)
	movlw	high(0)
	movwf	((___wmul@product))+1
	goto	l3739
	line	6
	
l1813:	
	line	7
	
l3739:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l1814
u2460:
	line	8
	
l3741:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l1814:	
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
	
l3743:	
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
	goto	l3739
u2490:
	goto	l3745
	
l1815:	
	line	12
	
l3745:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l1816
	
l3747:	
	line	13
	
l1816:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_ADCInitialize
psect	text533,local,class=CODE,delta=2
global __ptext533
__ptext533:

;; *************** function _ADCInitialize *****************
;; Defined at:
;;		line 4 in file "C:\Users\X4ROY\Desktop\URE\LCD Interfacing\adc.c"
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
psect	text533
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing\adc.c"
	line	4
	global	__size_of_ADCInitialize
	__size_of_ADCInitialize	equ	__end_of_ADCInitialize-_ADCInitialize
	
_ADCInitialize:	
	opt	stack 6
; Regs used in _ADCInitialize: []
	line	5
	
l3735:	
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
	
l1798:	
	return
	opt stack 0
GLOBAL	__end_of_ADCInitialize
	__end_of_ADCInitialize:
;; =============== function _ADCInitialize ends ============

	signat	_ADCInitialize,88
	global	_Delay
psect	text534,local,class=CODE,delta=2
global __ptext534
__ptext534:

;; *************** function _Delay *****************
;; Defined at:
;;		line 4 in file "C:\Users\X4ROY\Desktop\URE\LCD Interfacing\delay.c"
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
;;		_LCDEnable
;;		_LCDWriteByte
;;		_ADCReadData
;;		_LCDDisplayInitializing
;; This function uses a non-reentrant model
;;
psect	text534
	file	"C:\Users\X4ROY\Desktop\URE\LCD Interfacing\delay.c"
	line	4
	global	__size_of_Delay
	__size_of_Delay	equ	__end_of_Delay-_Delay
	
_Delay:	
	opt	stack 4
; Regs used in _Delay: [wreg+status,2+status,0]
	line	6
	
l3693:	
;delay.c: 5: unsigned char pause;
;delay.c: 6: while( time > 0)
	goto	l3701
	
l4:	
	line	8
	
l3695:	
;delay.c: 7: {
;delay.c: 8: pause = 255;
	movlw	(0FFh)
	movwf	(??_Delay+0)+0
	movf	(??_Delay+0)+0,w
	movwf	(Delay@pause)
	line	9
;delay.c: 9: while(pause--);
	goto	l3697
	
l6:	
	goto	l3697
	
l5:	
	
l3697:	
	movlw	low(01h)
	subwf	(Delay@pause),f
	movf	((Delay@pause)),w
	xorlw	0FFh
	skipz
	goto	u2391
	goto	u2390
u2391:
	goto	l3697
u2390:
	goto	l3699
	
l7:	
	line	10
	
l3699:	
;delay.c: 10: time--;
	movlw	low(01h)
	subwf	(Delay@time),f
	movlw	high(01h)
	skipc
	decf	(Delay@time+1),f
	subwf	(Delay@time+1),f
	goto	l3701
	line	11
	
l3:	
	line	6
	
l3701:	
	movf	((Delay@time+1)),w
	iorwf	((Delay@time)),w
	skipz
	goto	u2401
	goto	u2400
u2401:
	goto	l3695
u2400:
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
psect	text535,local,class=CODE,delta=2
global __ptext535
__ptext535:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
