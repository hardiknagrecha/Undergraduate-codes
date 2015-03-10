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
# 10 "C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\main.h"
	psect config,class=CONFIG,delta=2 ;#
# 10 "C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\main.h"
	dw 0x2F0A ;#
	FNCALL	_main,_ADCInitialize
	FNCALL	_main,_LCDInitialize
	FNCALL	_main,_LCDWriteCommand
	FNCALL	_main,_TimerInitialize
	FNCALL	_main,_ADCReadData
	FNCALL	_main,___ftadd
	FNCALL	_main,___ftdiv
	FNCALL	_main,_LCDWriteFloat
	FNCALL	_main,___ftge
	FNCALL	_main,___ftneg
	FNCALL	_main,___ftmul
	FNCALL	_main,___fttol
	FNCALL	_LCDWriteFloat,_LCDWriteCommand
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
	FNCALL	_LCDWriteByte,_LCDEnable
	FNCALL	_LCDWriteByte,_Delay
	FNCALL	_ADCReadData,_Delay
	FNCALL	_ADCReadData,___lwtoft
	FNCALL	___lwtoft,___ftpack
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	___ftdiv,___ftpack
	FNCALL	___ftadd,___ftpack
	FNCALL	_LCDEnable,_Delay
	FNROOT	_main
	FNCALL	intlevel1,_timer
	global	intlevel1
	FNROOT	intlevel1
	global	_temp2
	global	_count
	global	_ADCON0
psect	text599,local,class=CODE,delta=2
global __ptext599
__ptext599:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTB
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_TMR1H
_TMR1H	set	15
	global	_ADCS0
_ADCS0	set	254
	global	_ADCS1
_ADCS1	set	255
	global	_ADON
_ADON	set	248
	global	_GIE
_GIE	set	95
	global	_PEIE
_PEIE	set	94
	global	_RB0
_RB0	set	48
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_T1CKPS0
_T1CKPS0	set	132
	global	_T1CKPS1
_T1CKPS1	set	133
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR1ON
_TMR1ON	set	128
	global	_ADRESL
_ADRESL	set	158
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
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
	global	_TMR1IE
_TMR1IE	set	1120
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
	
STR_2:	
	retlw	32	;' '
	retlw	32	;' '
	retlw	0
psect	strings
STR_4	equ	STR_2+0
STR_3	equ	STR_2+1
STR_5	equ	STR_2+1
	file	"timer1.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_count:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_temp2:
       ds      1

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
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
	global	?_TimerInitialize
?_TimerInitialize:	; 0 bytes @ 0x0
	global	?_ADCInitialize
?_ADCInitialize:	; 0 bytes @ 0x0
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
	global	??_timer
??_timer:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_timer
?_timer:	; 2 bytes @ 0x0
	ds	8
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_Delay
?_Delay:	; 0 bytes @ 0x0
	global	??_TimerInitialize
??_TimerInitialize:	; 0 bytes @ 0x0
	global	??_ADCInitialize
??_ADCInitialize:	; 0 bytes @ 0x0
	global	?___ftge
?___ftge:	; 1 bit 
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	Delay@time
Delay@time:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	2
	global	??_Delay
??_Delay:	; 0 bytes @ 0x2
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
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
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
	global	?___ftdiv
?___ftdiv:	; 3 bytes @ 0x8
	global	?___ftneg
?___ftneg:	; 3 bytes @ 0x8
	global	?___lwtoft
?___lwtoft:	; 3 bytes @ 0x8
	global	LCDWriteString@lcd_string
LCDWriteString@lcd_string:	; 1 bytes @ 0x8
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
	ds	2
	global	??_LCDWriteInteger
??_LCDWriteInteger:	; 0 bytes @ 0xB
	global	??___ftneg
??___ftneg:	; 0 bytes @ 0xB
	global	??___lwtoft
??___lwtoft:	; 0 bytes @ 0xB
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0xB
	global	?___fttol
?___fttol:	; 4 bytes @ 0xB
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0xB
	global	___ftdiv@f1
___ftdiv@f1:	; 3 bytes @ 0xB
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0xB
	ds	1
	global	LCDWriteInteger@c
LCDWriteInteger@c:	; 6 bytes @ 0xC
	ds	2
	global	??___ftdiv
??___ftdiv:	; 0 bytes @ 0xE
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0xE
	ds	1
	global	??___fttol
??___fttol:	; 0 bytes @ 0xF
	ds	1
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0x10
	ds	2
	global	LCDWriteInteger@i
LCDWriteInteger@i:	; 1 bytes @ 0x12
	global	___ftdiv@cntr
___ftdiv@cntr:	; 1 bytes @ 0x12
	ds	1
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x13
	global	___ftdiv@f3
___ftdiv@f3:	; 3 bytes @ 0x13
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x14
	ds	2
	global	___ftdiv@exp
___ftdiv@exp:	; 1 bytes @ 0x16
	ds	1
	global	___ftdiv@sign
___ftdiv@sign:	; 1 bytes @ 0x17
	ds	1
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x18
	ds	1
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x19
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x19
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0x1C
	ds	3
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x1F
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x23
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x24
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x25
	ds	1
	global	?_ADCReadData
?_ADCReadData:	; 3 bytes @ 0x26
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0x26
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0x26
	ds	3
	global	??_ADCReadData
??_ADCReadData:	; 0 bytes @ 0x29
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0x29
	ds	2
	global	ADCReadData@x
ADCReadData@x:	; 2 bytes @ 0x2B
	ds	1
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x2C
	ds	1
	global	ADCReadData@y
ADCReadData@y:	; 2 bytes @ 0x2D
	ds	2
	global	ADCReadData@ChannelNumber
ADCReadData@ChannelNumber:	; 1 bytes @ 0x2F
	ds	1
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x30
	global	ADCReadData@z
ADCReadData@z:	; 2 bytes @ 0x30
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x31
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x34
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x35
	ds	1
	global	?_LCDWriteFloat
?_LCDWriteFloat:	; 0 bytes @ 0x36
	global	LCDWriteFloat@FloatNumber
LCDWriteFloat@FloatNumber:	; 3 bytes @ 0x36
	ds	3
	global	??_LCDWriteFloat
??_LCDWriteFloat:	; 0 bytes @ 0x39
	ds	1
	global	LCDWriteFloat@c
LCDWriteFloat@c:	; 6 bytes @ 0x3A
	ds	6
	global	_LCDWriteFloat$1311
_LCDWriteFloat$1311:	; 3 bytes @ 0x40
	ds	3
	global	LCDWriteFloat@Temp
LCDWriteFloat@Temp:	; 2 bytes @ 0x43
	ds	2
	global	LCDWriteFloat@i
LCDWriteFloat@i:	; 1 bytes @ 0x45
	ds	1
	global	LCDWriteFloat@n
LCDWriteFloat@n:	; 2 bytes @ 0x46
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x48
	ds	1
	global	main@i
main@i:	; 2 bytes @ 0x49
	ds	2
	global	main@temp
main@temp:	; 3 bytes @ 0x4B
	ds	3
;;Data sizes: Strings 20, constant 0, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8       9
;; BANK0           80     78      79
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___ftdiv	float  size(1) Largest target is 0
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
;; ?_ADCReadData	float  size(1) Largest target is 0
;;
;; ?___lwtoft	float  size(1) Largest target is 0
;;
;; LCDWriteString@lcd_string	PTR const unsigned char  size(1) Largest target is 17
;;		 -> STR_5(CODE[2]), STR_4(CODE[3]), STR_3(CODE[2]), STR_2(CODE[3]), 
;;		 -> STR_1(CODE[17]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _timer in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_LCDWriteFloat
;;   _LCDWriteFloat->___ftmul
;;   _LCDInitialize->_LCDWriteCommand
;;   _LCDWriteInteger->___awdiv
;;   _LCDReset->_LCDWriteCommand
;;   _LCDWriteString->_LCDWriteData
;;   _LCDWriteData->_LCDWriteByte
;;   _LCDWriteCommand->_LCDWriteByte
;;   _LCDWriteByte->_Delay
;;   _ADCReadData->___ftadd
;;   ___lwtoft->___ftpack
;;   ___awtoft->___ftneg
;;   ___ftmul->___ftadd
;;   ___ftdiv->___ftpack
;;   ___ftadd->___fttol
;;   _LCDEnable->_Delay
;;   ___ftneg->___ftpack
;;   ___fttol->___ftneg
;;
;; Critical Paths under _timer in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _timer in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _timer in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _timer in BANK2
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
;; (0) _main                                                 6     6      0    8551
;;                                             72 BANK0      6     6      0
;;                      _ADCInitialize
;;                      _LCDInitialize
;;                    _LCDWriteCommand
;;                    _TimerInitialize
;;                        _ADCReadData
;;                            ___ftadd
;;                            ___ftdiv
;;                      _LCDWriteFloat
;;                             ___ftge
;;                            ___ftneg
;;                            ___ftmul
;;                            ___fttol
;; ---------------------------------------------------------------------------------
;; (1) _LCDWriteFloat                                       18    15      3    4888
;;                                             54 BANK0     18    15      3
;;                    _LCDWriteCommand
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
;;                     _LCDWriteString
;; ---------------------------------------------------------------------------------
;; (1) _LCDInitialize                                        1     1      0     316
;;                                              7 BANK0      1     1      0
;;                           _LCDReset
;;                    _LCDWriteCommand
;; ---------------------------------------------------------------------------------
;; (2) _LCDWriteInteger                                     10     8      2    1003
;;                                              9 BANK0     10     8      2
;;                       _LCDWriteData
;;                            ___awmod
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (2) _LCDReset                                             0     0      0     158
;;                    _LCDWriteCommand
;; ---------------------------------------------------------------------------------
;; (2) _LCDWriteString                                       2     2      0     203
;;                                              7 BANK0      2     2      0
;;                       _LCDWriteData
;; ---------------------------------------------------------------------------------
;; (3) _LCDWriteData                                         1     1      0     158
;;                                              6 BANK0      1     1      0
;;                       _LCDWriteByte
;; ---------------------------------------------------------------------------------
;; (2) _LCDWriteCommand                                      1     1      0     158
;;                                              6 BANK0      1     1      0
;;                       _LCDWriteByte
;; ---------------------------------------------------------------------------------
;; (4) _LCDWriteByte                                         2     2      0     136
;;                                              4 BANK0      2     2      0
;;                          _LCDEnable
;;                              _Delay
;; ---------------------------------------------------------------------------------
;; (1) _ADCReadData                                         13    10      3     369
;;                                             38 BANK0     12     9      3
;;                              _Delay
;;                           ___lwtoft
;;                            ___ftadd (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___lwtoft                                             4     1      3     231
;;                                              8 BANK0      4     1      3
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (2) ___awtoft                                             6     3      3     300
;;                                             11 BANK0      6     3      3
;;                           ___ftpack
;;                            ___ftneg (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___ftmul                                             16    10      6     535
;;                                             38 BANK0     16    10      6
;;                           ___ftpack
;;                            ___ftadd (ARG)
;;                            ___ftneg (ARG)
;;                            ___fttol (ARG)
;;                           ___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___ftdiv                                             16    10      6     489
;;                                              8 BANK0     16    10      6
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (2) ___ftadd                                             13     7      6    1049
;;                                             25 BANK0     13     7      6
;;                           ___ftpack
;;                              _Delay (ARG)
;;                           ___lwtoft (ARG)
;;                            ___ftneg (ARG)
;;                            ___fttol (ARG)
;;                           ___awtoft (ARG)
;; ---------------------------------------------------------------------------------
;; (5) _LCDEnable                                            0     0      0      46
;;                              _Delay
;; ---------------------------------------------------------------------------------
;; (2) ___awmod                                              7     3      4     296
;;                                              0 BANK0      7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___ftge                                              12     6      6     136
;;                                              0 BANK0     12     6      6
;; ---------------------------------------------------------------------------------
;; (1) ___ftneg                                              3     0      3      45
;;                                              8 BANK0      3     0      3
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     300
;;                                              0 BANK0      9     5      4
;; ---------------------------------------------------------------------------------
;; (1) ___fttol                                             14    10      4     252
;;                                             11 BANK0     14    10      4
;;                           ___ftpack (ARG)
;;                            ___ftneg (ARG)
;; ---------------------------------------------------------------------------------
;; (2) ___ftpack                                             8     3      5     209
;;                                              0 BANK0      8     3      5
;; ---------------------------------------------------------------------------------
;; (1) _TimerInitialize                                      0     0      0       0
;; ---------------------------------------------------------------------------------
;; (5) _Delay                                                4     2      2      46
;;                                              0 BANK0      4     2      2
;; ---------------------------------------------------------------------------------
;; (1) _ADCInitialize                                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (7) _timer                                                8     8      0       0
;;                                              0 COMMON     8     8      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 7
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _ADCInitialize
;;   _LCDInitialize
;;     _LCDReset
;;       _LCDWriteCommand
;;         _LCDWriteByte
;;           _LCDEnable
;;             _Delay
;;           _Delay
;;     _LCDWriteCommand
;;       _LCDWriteByte
;;         _LCDEnable
;;           _Delay
;;         _Delay
;;   _LCDWriteCommand
;;     _LCDWriteByte
;;       _LCDEnable
;;         _Delay
;;       _Delay
;;   _TimerInitialize
;;   _ADCReadData
;;     _Delay
;;     ___lwtoft
;;       ___ftpack
;;     ___ftadd (ARG)
;;       ___ftpack
;;       _Delay (ARG)
;;       ___lwtoft (ARG)
;;         ___ftpack
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;   ___ftadd
;;     ___ftpack
;;     _Delay (ARG)
;;     ___lwtoft (ARG)
;;       ___ftpack
;;     ___ftneg (ARG)
;;       ___ftpack (ARG)
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;     ___awtoft (ARG)
;;       ___ftpack
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;   ___ftdiv
;;     ___ftpack
;;   _LCDWriteFloat
;;     _LCDWriteCommand
;;       _LCDWriteByte
;;         _LCDEnable
;;           _Delay
;;         _Delay
;;     ___ftge
;;     _LCDWriteData
;;       _LCDWriteByte
;;         _LCDEnable
;;           _Delay
;;         _Delay
;;     ___ftneg
;;       ___ftpack (ARG)
;;     ___fttol
;;       ___ftpack (ARG)
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
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
;;       _Delay (ARG)
;;       ___lwtoft (ARG)
;;         ___ftpack
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;     ___ftmul
;;       ___ftpack
;;       ___ftadd (ARG)
;;         ___ftpack
;;         _Delay (ARG)
;;         ___lwtoft (ARG)
;;           ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;         ___fttol (ARG)
;;           ___ftpack (ARG)
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;         ___awtoft (ARG)
;;           ___ftpack
;;           ___ftneg (ARG)
;;             ___ftpack (ARG)
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;     ___awmod
;;     ___awdiv
;;     _LCDWriteString
;;       _LCDWriteData
;;         _LCDWriteByte
;;           _LCDEnable
;;             _Delay
;;           _Delay
;;   ___ftge
;;   ___ftneg
;;     ___ftpack (ARG)
;;   ___ftmul
;;     ___ftpack
;;     ___ftadd (ARG)
;;       ___ftpack
;;       _Delay (ARG)
;;       ___lwtoft (ARG)
;;         ___ftpack
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;       ___awtoft (ARG)
;;         ___ftpack
;;         ___ftneg (ARG)
;;           ___ftpack (ARG)
;;     ___ftneg (ARG)
;;       ___ftpack (ARG)
;;     ___fttol (ARG)
;;       ___ftpack (ARG)
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;     ___awtoft (ARG)
;;       ___ftpack
;;       ___ftneg (ARG)
;;         ___ftpack (ARG)
;;   ___fttol
;;     ___ftpack (ARG)
;;     ___ftneg (ARG)
;;       ___ftpack (ARG)
;;
;; _timer (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      8       9       1       64.3%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       6       2        0.0%
;;ABS                  0      0      58       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     4E      4F       5       98.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      5E      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 34 in file "C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\timer1c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp            3   75[BANK0 ] float 
;;  i               2   73[BANK0 ] int 
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
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_ADCInitialize
;;		_LCDInitialize
;;		_LCDWriteCommand
;;		_TimerInitialize
;;		_ADCReadData
;;		___ftadd
;;		___ftdiv
;;		_LCDWriteFloat
;;		___ftge
;;		___ftneg
;;		___ftmul
;;		___fttol
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\timer1c.c"
	line	34
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	35
	
l4911:	
;timer1c.c: 35: float temp=0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@temp)
	movlw	0x0
	movwf	(main@temp+1)
	movlw	0x0
	movwf	(main@temp+2)
	line	39
	
l4913:	
;timer1c.c: 36: int i;
;timer1c.c: 39: TRISB=0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	40
	
l4915:	
;timer1c.c: 40: PORTB|=0xA0;
	movlw	(0A0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	iorwf	(6),f	;volatile
	line	41
	
l4917:	
;timer1c.c: 41: ADCInitialize();
	fcall	_ADCInitialize
	line	42
	
l4919:	
;timer1c.c: 42: LCDInitialize();
	fcall	_LCDInitialize
	line	43
	
l4921:	
;timer1c.c: 43: LCDWriteCommand(0x01);
	movlw	(01h)
	fcall	_LCDWriteCommand
	line	45
	
l4923:	
;timer1c.c: 45: TimerInitialize();
	fcall	_TimerInitialize
	goto	l4925
	line	49
;timer1c.c: 48: for(;;)
	
l1796:	
	line	50
	
l4925:	
;timer1c.c: 49: {
;timer1c.c: 50: temp=0;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@temp)
	movlw	0x0
	movwf	(main@temp+1)
	movlw	0x0
	movwf	(main@temp+2)
	line	52
	
l4927:	
;timer1c.c: 52: for(i=0;i<10;i++)
	movlw	low(0)
	movwf	(main@i)
	movlw	high(0)
	movwf	((main@i))+1
	
l4929:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u3845
	movlw	low(0Ah)
	subwf	(main@i),w
u3845:

	skipc
	goto	u3841
	goto	u3840
u3841:
	goto	l4933
u3840:
	goto	l4939
	
l4931:	
	goto	l4939
	line	53
	
l1797:	
	
l4933:	
;timer1c.c: 53: temp+=ADCReadData(0x00);
	movlw	(0)
	fcall	_ADCReadData
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?_ADCReadData)),w
	movwf	(?___ftadd)
	movf	(1+(?_ADCReadData)),w
	movwf	(?___ftadd+1)
	movf	(2+(?_ADCReadData)),w
	movwf	(?___ftadd+2)
	movf	(main@temp),w
	movwf	0+(?___ftadd)+03h
	movf	(main@temp+1),w
	movwf	1+(?___ftadd)+03h
	movf	(main@temp+2),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(main@temp)
	movf	(1+(?___ftadd)),w
	movwf	(main@temp+1)
	movf	(2+(?___ftadd)),w
	movwf	(main@temp+2)
	line	52
	
l4935:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l4937:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u3855
	movlw	low(0Ah)
	subwf	(main@i),w
u3855:

	skipc
	goto	u3851
	goto	u3850
u3851:
	goto	l4933
u3850:
	goto	l4939
	
l1798:	
	line	55
	
l4939:	
;timer1c.c: 55: temp/=10;
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftdiv)
	movlw	0x20
	movwf	(?___ftdiv+1)
	movlw	0x41
	movwf	(?___ftdiv+2)
	movf	(main@temp),w
	movwf	0+(?___ftdiv)+03h
	movf	(main@temp+1),w
	movwf	1+(?___ftdiv)+03h
	movf	(main@temp+2),w
	movwf	2+(?___ftdiv)+03h
	fcall	___ftdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftdiv)),w
	movwf	(main@temp)
	movf	(1+(?___ftdiv)),w
	movwf	(main@temp+1)
	movf	(2+(?___ftdiv)),w
	movwf	(main@temp+2)
	line	57
	
l4941:	
;timer1c.c: 57: LCDWriteFloat(temp);
	movf	(main@temp),w
	movwf	(?_LCDWriteFloat)
	movf	(main@temp+1),w
	movwf	(?_LCDWriteFloat+1)
	movf	(main@temp+2),w
	movwf	(?_LCDWriteFloat+2)
	fcall	_LCDWriteFloat
	line	59
	
l4943:	
;timer1c.c: 59: if(temp<335)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@temp),w
	movwf	(?___ftge)
	movf	(main@temp+1),w
	movwf	(?___ftge+1)
	movf	(main@temp+2),w
	movwf	(?___ftge+2)
	movlw	0x80
	movwf	0+(?___ftge)+03h
	movlw	0xa7
	movwf	1+(?___ftge)+03h
	movlw	0x43
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u3861
	goto	u3860
u3861:
	goto	l4953
u3860:
	line	61
	
l4945:	
;timer1c.c: 60: {
;timer1c.c: 61: PORTB=0xA0;
	movlw	(0A0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	62
	
l4947:	
;timer1c.c: 62: if(temp<285)
	movf	(main@temp),w
	movwf	(?___ftge)
	movf	(main@temp+1),w
	movwf	(?___ftge+1)
	movf	(main@temp+2),w
	movwf	(?___ftge+2)
	movlw	0x80
	movwf	0+(?___ftge)+03h
	movlw	0x8e
	movwf	1+(?___ftge)+03h
	movlw	0x43
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u3871
	goto	u3870
u3871:
	goto	l4951
u3870:
	line	63
	
l4949:	
;timer1c.c: 63: temp2=(((335-temp)*3)+10);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@temp),w
	movwf	(?___ftneg)
	movf	(main@temp+1),w
	movwf	(?___ftneg+1)
	movf	(main@temp+2),w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___ftneg)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___ftneg)),w
	movwf	2+(?___ftadd)+03h
	movlw	0x80
	movwf	(?___ftadd)
	movlw	0xa7
	movwf	(?___ftadd+1)
	movlw	0x43
	movwf	(?___ftadd+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___ftadd)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___ftadd)),w
	movwf	2+(?___ftmul)+03h
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x40
	movwf	(?___ftmul+1)
	movlw	0x40
	movwf	(?___ftmul+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___ftmul)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___ftmul)),w
	movwf	2+(?___ftadd)+03h
	movlw	0x0
	movwf	(?___ftadd)
	movlw	0x20
	movwf	(?___ftadd+1)
	movlw	0x41
	movwf	(?___ftadd+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?___fttol)
	movf	(1+(?___ftadd)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_temp2)
	goto	l4925
	line	65
	
l1800:	
	line	66
	
l4951:	
;timer1c.c: 65: else
;timer1c.c: 66: temp2=(((335-temp))+10);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@temp),w
	movwf	(?___ftneg)
	movf	(main@temp+1),w
	movwf	(?___ftneg+1)
	movf	(main@temp+2),w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___ftneg)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___ftneg)),w
	movwf	2+(?___ftadd)+03h
	movlw	0x80
	movwf	(?___ftadd)
	movlw	0xac
	movwf	(?___ftadd+1)
	movlw	0x43
	movwf	(?___ftadd+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?___fttol)
	movf	(1+(?___ftadd)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_temp2)
	goto	l4925
	
l1801:	
	line	73
;timer1c.c: 73: }
	goto	l4925
	line	76
	
l1799:	
	
l4953:	
;timer1c.c: 76: else if(temp>335)
	movlw	0x80
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftge)
	movlw	0xa7
	movwf	(?___ftge+1)
	movlw	0x43
	movwf	(?___ftge+2)
	movf	(main@temp),w
	movwf	0+(?___ftge)+03h
	movf	(main@temp+1),w
	movwf	1+(?___ftge)+03h
	movf	(main@temp+2),w
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u3881
	goto	u3880
u3881:
	goto	l4963
u3880:
	line	78
	
l4955:	
;timer1c.c: 77: {
;timer1c.c: 78: PORTB=0x50;
	movlw	(050h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	80
	
l4957:	
;timer1c.c: 80: if(temp>380)
	movlw	0x0
	movwf	(?___ftge)
	movlw	0xbe
	movwf	(?___ftge+1)
	movlw	0x43
	movwf	(?___ftge+2)
	movf	(main@temp),w
	movwf	0+(?___ftge)+03h
	movf	(main@temp+1),w
	movwf	1+(?___ftge)+03h
	movf	(main@temp+2),w
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfsc	status,0
	goto	u3891
	goto	u3890
u3891:
	goto	l4961
u3890:
	line	81
	
l4959:	
;timer1c.c: 81: temp2=(((temp-335)*3)+10);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@temp),w
	movwf	0+(?___ftadd)+03h
	movf	(main@temp+1),w
	movwf	1+(?___ftadd)+03h
	movf	(main@temp+2),w
	movwf	2+(?___ftadd)+03h
	movlw	0x80
	movwf	(?___ftadd)
	movlw	0xa7
	movwf	(?___ftadd+1)
	movlw	0xc3
	movwf	(?___ftadd+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___ftadd)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___ftadd)),w
	movwf	2+(?___ftmul)+03h
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x40
	movwf	(?___ftmul+1)
	movlw	0x40
	movwf	(?___ftmul+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___ftmul)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___ftmul)),w
	movwf	2+(?___ftadd)+03h
	movlw	0x0
	movwf	(?___ftadd)
	movlw	0x20
	movwf	(?___ftadd+1)
	movlw	0x41
	movwf	(?___ftadd+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?___fttol)
	movf	(1+(?___ftadd)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_temp2)
	goto	l4925
	line	83
	
l1804:	
	line	84
	
l4961:	
;timer1c.c: 83: else
;timer1c.c: 84: temp2=(((temp-335))+10);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@temp),w
	movwf	0+(?___ftadd)+03h
	movf	(main@temp+1),w
	movwf	1+(?___ftadd)+03h
	movf	(main@temp+2),w
	movwf	2+(?___ftadd)+03h
	movlw	0x80
	movwf	(?___ftadd)
	movlw	0xa2
	movwf	(?___ftadd+1)
	movlw	0xc3
	movwf	(?___ftadd+2)
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(?___fttol)
	movf	(1+(?___ftadd)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftadd)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	0+(((0+(?___fttol)))),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_temp2)
	goto	l4925
	
l1805:	
	line	88
;timer1c.c: 88: }
	goto	l4925
	line	89
	
l1803:	
	
l4963:	
;timer1c.c: 89: else if(temp==335)
	movlw	0x43
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(main@temp+2),w
	skipz
	goto	u3905
	movlw	0xa7
	xorwf	(main@temp+1),w
	skipz
	goto	u3905
	movlw	0x80
	xorwf	(main@temp),w
u3905:
	skipz
	goto	u3901
	goto	u3900
u3901:
	goto	l4925
u3900:
	line	91
	
l4965:	
;timer1c.c: 90: {
;timer1c.c: 91: PORTB=0x00;
	clrf	(6)	;volatile
	goto	l4925
	line	92
	
l1807:	
	goto	l4925
	line	93
	
l1806:	
	goto	l4925
	
l1802:	
;timer1c.c: 92: }
;timer1c.c: 93: }
	goto	l4925
	
l1808:	
	line	95
	
l1809:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_LCDWriteFloat
psect	text600,local,class=CODE,delta=2
global __ptext600
__ptext600:

;; *************** function _LCDWriteFloat *****************
;; Defined at:
;;		line 90 in file "C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\LCD.c"
;; Parameters:    Size  Location     Type
;;  FloatNumber     3   54[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  c               6   58[BANK0 ] unsigned char [6]
;;  n               2   70[BANK0 ] int 
;;  Temp            2   67[BANK0 ] int 
;;  i               1   69[BANK0 ] unsigned char 
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
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LCDWriteCommand
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
;;		_LCDWriteString
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text600
	file	"C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\LCD.c"
	line	90
	global	__size_of_LCDWriteFloat
	__size_of_LCDWriteFloat	equ	__end_of_LCDWriteFloat-_LCDWriteFloat
	
_LCDWriteFloat:	
	opt	stack 1
; Regs used in _LCDWriteFloat: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	92
	
l4859:	
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
	
l4861:	
;LCD.c: 93: int n, Temp;
;LCD.c: 94: LCDWriteCommand(0x8B);
	movlw	(08Bh)
	fcall	_LCDWriteCommand
	line	95
	
l4863:	
;LCD.c: 95: if(FloatNumber < 0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	u3781
	goto	u3780
u3781:
	goto	l4869
u3780:
	line	97
	
l4865:	
;LCD.c: 96: {
;LCD.c: 97: LCDWriteData('-');
	movlw	(02Dh)
	fcall	_LCDWriteData
	line	98
	
l4867:	
;LCD.c: 98: FloatNumber = -(FloatNumber);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDWriteFloat@FloatNumber),w
	movwf	(?___ftneg)
	movf	(LCDWriteFloat@FloatNumber+1),w
	movwf	(?___ftneg+1)
	movf	(LCDWriteFloat@FloatNumber+2),w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	(LCDWriteFloat@FloatNumber)
	movf	(1+(?___ftneg)),w
	movwf	(LCDWriteFloat@FloatNumber+1)
	movf	(2+(?___ftneg)),w
	movwf	(LCDWriteFloat@FloatNumber+2)
	goto	l4869
	line	99
	
l1172:	
	line	100
	
l4869:	
;LCD.c: 99: }
;LCD.c: 100: n = FloatNumber;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDWriteFloat@FloatNumber),w
	movwf	(?___fttol)
	movf	(LCDWriteFloat@FloatNumber+1),w
	movwf	(?___fttol+1)
	movf	(LCDWriteFloat@FloatNumber+2),w
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(LCDWriteFloat@n+1)
	addwf	(LCDWriteFloat@n+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(LCDWriteFloat@n)
	addwf	(LCDWriteFloat@n)

	line	101
	
l4871:	
;LCD.c: 101: Temp = n;
	movf	(LCDWriteFloat@n+1),w
	clrf	(LCDWriteFloat@Temp+1)
	addwf	(LCDWriteFloat@Temp+1)
	movf	(LCDWriteFloat@n),w
	clrf	(LCDWriteFloat@Temp)
	addwf	(LCDWriteFloat@Temp)

	line	102
	
l4873:	
;LCD.c: 102: LCDWriteInteger(n);
	movf	(LCDWriteFloat@n+1),w
	clrf	(?_LCDWriteInteger+1)
	addwf	(?_LCDWriteInteger+1)
	movf	(LCDWriteFloat@n),w
	clrf	(?_LCDWriteInteger)
	addwf	(?_LCDWriteInteger)

	fcall	_LCDWriteInteger
	line	103
	
l4875:	
;LCD.c: 103: LCDWriteData('.');
	movlw	(02Eh)
	fcall	_LCDWriteData
	line	104
	
l4877:	
;LCD.c: 104: FloatNumber = ((FloatNumber - n) + 1) * 1000;
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awtoft)),w
	movwf	(?___ftneg)
	movf	(1+(?___awtoft)),w
	movwf	(?___ftneg+1)
	movf	(2+(?___awtoft)),w
	movwf	(?___ftneg+2)
	fcall	___ftneg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftneg)),w
	movwf	0+(?___ftadd)+03h
	movf	(1+(?___ftneg)),w
	movwf	1+(?___ftadd)+03h
	movf	(2+(?___ftneg)),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftadd)),w
	movwf	(_LCDWriteFloat$1311)
	movf	(1+(?___ftadd)),w
	movwf	(_LCDWriteFloat$1311+1)
	movf	(2+(?___ftadd)),w
	movwf	(_LCDWriteFloat$1311+2)
	
l4879:	
;LCD.c: 104: FloatNumber = ((FloatNumber - n) + 1) * 1000;
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
	movf	(_LCDWriteFloat$1311),w
	movwf	0+(?___ftadd)+03h
	movf	(_LCDWriteFloat$1311+1),w
	movwf	1+(?___ftadd)+03h
	movf	(_LCDWriteFloat$1311+2),w
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
	line	105
	
l4881:	
;LCD.c: 105: n = FloatNumber;
	movf	(LCDWriteFloat@FloatNumber),w
	movwf	(?___fttol)
	movf	(LCDWriteFloat@FloatNumber+1),w
	movwf	(?___fttol+1)
	movf	(LCDWriteFloat@FloatNumber+2),w
	movwf	(?___fttol+2)
	fcall	___fttol
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___fttol)))),w
	clrf	(LCDWriteFloat@n+1)
	addwf	(LCDWriteFloat@n+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(LCDWriteFloat@n)
	addwf	(LCDWriteFloat@n)

	line	107
;LCD.c: 107: while(n > 0)
	goto	l4889
	
l1174:	
	line	109
	
l4883:	
;LCD.c: 108: {
;LCD.c: 109: c[i++] = (n % 10) + 48;
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(LCDWriteFloat@n+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(LCDWriteFloat@n),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	addlw	030h
	movwf	(??_LCDWriteFloat+0)+0
	movf	(LCDWriteFloat@i),w
	addlw	LCDWriteFloat@c&0ffh
	movwf	fsr0
	movf	(??_LCDWriteFloat+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l4885:	
	movlw	(01h)
	movwf	(??_LCDWriteFloat+0)+0
	movf	(??_LCDWriteFloat+0)+0,w
	addwf	(LCDWriteFloat@i),f
	line	110
	
l4887:	
;LCD.c: 110: n /= 10;
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	clrf	(LCDWriteFloat@n+1)
	addwf	(LCDWriteFloat@n+1)
	movf	(0+(?___awdiv)),w
	clrf	(LCDWriteFloat@n)
	addwf	(LCDWriteFloat@n)

	goto	l4889
	line	111
	
l1173:	
	line	107
	
l4889:	
	movf	(LCDWriteFloat@n+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3795
	movlw	low(01h)
	subwf	(LCDWriteFloat@n),w
u3795:

	skipnc
	goto	u3791
	goto	u3790
u3791:
	goto	l4883
u3790:
	goto	l4891
	
l1175:	
	line	112
	
l4891:	
;LCD.c: 111: }
;LCD.c: 112: i -= 1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(LCDWriteFloat@i),f
	line	113
;LCD.c: 113: while(i-- > 1)
	goto	l4895
	
l1177:	
	line	114
	
l4893:	
;LCD.c: 114: LCDWriteData(c[i]);
	movf	(LCDWriteFloat@i),w
	addlw	LCDWriteFloat@c&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_LCDWriteData
	goto	l4895
	
l1176:	
	line	113
	
l4895:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(LCDWriteFloat@i),f
	btfss	status,2
	goto	u3801
	goto	u3800
u3801:
	goto	l4893
u3800:
	goto	l4897
	
l1178:	
	line	116
	
l4897:	
;LCD.c: 116: if(Temp < 10)
	movf	(LCDWriteFloat@Temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u3815
	movlw	low(0Ah)
	subwf	(LCDWriteFloat@Temp),w
u3815:

	skipnc
	goto	u3811
	goto	u3810
u3811:
	goto	l4903
u3810:
	line	118
	
l4899:	
;LCD.c: 117: {
;LCD.c: 118: LCDWriteCommand(0xcc);
	movlw	(0CCh)
	fcall	_LCDWriteCommand
	line	119
	
l4901:	
;LCD.c: 119: LCDWriteString("  ");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_LCDWriteString
	goto	l4903
	line	121
	
l1179:	
	line	122
	
l4903:	
;LCD.c: 121: }
;LCD.c: 122: if(Temp >= 10 && Temp < 100)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDWriteFloat@Temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u3825
	movlw	low(0Ah)
	subwf	(LCDWriteFloat@Temp),w
u3825:

	skipc
	goto	u3821
	goto	u3820
u3821:
	goto	l1181
u3820:
	
l4905:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDWriteFloat@Temp+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(064h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3835
	movlw	low(064h)
	subwf	(LCDWriteFloat@Temp),w
u3835:

	skipnc
	goto	u3831
	goto	u3830
u3831:
	goto	l1181
u3830:
	line	124
	
l4907:	
;LCD.c: 123: {
;LCD.c: 124: LCDWriteCommand(0xcd);
	movlw	(0CDh)
	fcall	_LCDWriteCommand
	line	125
	
l4909:	
;LCD.c: 125: LCDWriteString(" ");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_LCDWriteString
	goto	l1181
	line	127
	
l1180:	
	line	128
	
l1181:	
	return
	opt stack 0
GLOBAL	__end_of_LCDWriteFloat
	__end_of_LCDWriteFloat:
;; =============== function _LCDWriteFloat ends ============

	signat	_LCDWriteFloat,4216
	global	_LCDInitialize
psect	text601,local,class=CODE,delta=2
global __ptext601
__ptext601:

;; *************** function _LCDInitialize *****************
;; Defined at:
;;		line 32 in file "C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\LCD.c"
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
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    6
;; This function calls:
;;		_LCDReset
;;		_LCDWriteCommand
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text601
	file	"C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\LCD.c"
	line	32
	global	__size_of_LCDInitialize
	__size_of_LCDInitialize	equ	__end_of_LCDInitialize-_LCDInitialize
	
_LCDInitialize:	
	opt	stack 1
; Regs used in _LCDInitialize: [wreg+status,2+status,0+pclath+cstack]
	line	33
	
l4841:	
;LCD.c: 33: TRISD = TRISD & 0x03;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(136)^080h,w
	andlw	03h
	movwf	(136)^080h	;volatile
	line	34
	
l4843:	
;LCD.c: 34: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	35
	
l4845:	
;LCD.c: 35: RD2 = 0;
	bcf	(66/8),(66)&7
	line	36
	
l4847:	
;LCD.c: 36: PORTD &= 0x0f;
	movlw	(0Fh)
	movwf	(??_LCDInitialize+0)+0
	movf	(??_LCDInitialize+0)+0,w
	andwf	(8),f	;volatile
	line	37
	
l4849:	
;LCD.c: 37: LCDReset();
	fcall	_LCDReset
	line	38
	
l4851:	
;LCD.c: 38: LCDWriteCommand(0x28);
	movlw	(028h)
	fcall	_LCDWriteCommand
	line	39
	
l4853:	
;LCD.c: 39: LCDWriteCommand(0x0C);
	movlw	(0Ch)
	fcall	_LCDWriteCommand
	line	40
	
l4855:	
;LCD.c: 40: LCDWriteCommand(0x06);
	movlw	(06h)
	fcall	_LCDWriteCommand
	line	41
	
l4857:	
;LCD.c: 41: LCDWriteCommand(0x01);
	movlw	(01h)
	fcall	_LCDWriteCommand
	line	43
	
l1149:	
	return
	opt stack 0
GLOBAL	__end_of_LCDInitialize
	__end_of_LCDInitialize:
;; =============== function _LCDInitialize ends ============

	signat	_LCDInitialize,88
	global	_LCDWriteInteger
psect	text602,local,class=CODE,delta=2
global __ptext602
__ptext602:

;; *************** function _LCDWriteInteger *****************
;; Defined at:
;;		line 171 in file "C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\LCD.c"
;; Parameters:    Size  Location     Type
;;  IntegerNumbe    2    9[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  c               6   12[BANK0 ] unsigned char [6]
;;  i               1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0      10       0       0       0
;;Total ram usage:       10 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCDWriteData
;;		___awmod
;;		___awdiv
;; This function is called by:
;;		_LCDWriteFloat
;;		_LCDWriteFloat2
;; This function uses a non-reentrant model
;;
psect	text602
	file	"C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\LCD.c"
	line	171
	global	__size_of_LCDWriteInteger
	__size_of_LCDWriteInteger	equ	__end_of_LCDWriteInteger-_LCDWriteInteger
	
_LCDWriteInteger:	
	opt	stack 1
; Regs used in _LCDWriteInteger: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	173
	
l4817:	
;LCD.c: 172: unsigned char c[6];
;LCD.c: 173: unsigned char i = 0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCDWriteInteger@i)
	line	175
	
l4819:	
;LCD.c: 175: if(IntegerNumber < 0)
	btfss	(LCDWriteInteger@IntegerNumber+1),7
	goto	u3741
	goto	u3740
u3741:
	goto	l4825
u3740:
	line	177
	
l4821:	
;LCD.c: 176: {
;LCD.c: 177: LCDWriteData('-');
	movlw	(02Dh)
	fcall	_LCDWriteData
	line	178
	
l4823:	
;LCD.c: 178: IntegerNumber = - (IntegerNumber);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	comf	(LCDWriteInteger@IntegerNumber),f
	comf	(LCDWriteInteger@IntegerNumber+1),f
	incf	(LCDWriteInteger@IntegerNumber),f
	skipnz
	incf	(LCDWriteInteger@IntegerNumber+1),f
	goto	l4825
	line	179
	
l1196:	
	line	181
	
l4825:	
;LCD.c: 179: }
;LCD.c: 181: if(IntegerNumber == 0)
	movf	((LCDWriteInteger@IntegerNumber+1)),w
	iorwf	((LCDWriteInteger@IntegerNumber)),w
	skipz
	goto	u3751
	goto	u3750
u3751:
	goto	l4835
u3750:
	line	182
	
l4827:	
;LCD.c: 182: LCDWriteData(0x30);
	movlw	(030h)
	fcall	_LCDWriteData
	goto	l4835
	
l1197:	
	line	184
;LCD.c: 184: while( IntegerNumber > 0)
	goto	l4835
	
l1199:	
	line	186
	
l4829:	
;LCD.c: 185: {
;LCD.c: 186: c[i++] = ((IntegerNumber % 10) | 0x30);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awmod)),w
	iorlw	030h
	movwf	(??_LCDWriteInteger+0)+0
	movf	(LCDWriteInteger@i),w
	addlw	LCDWriteInteger@c&0ffh
	movwf	fsr0
	movf	(??_LCDWriteInteger+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	
l4831:	
	movlw	(01h)
	movwf	(??_LCDWriteInteger+0)+0
	movf	(??_LCDWriteInteger+0)+0,w
	addwf	(LCDWriteInteger@i),f
	line	187
	
l4833:	
;LCD.c: 187: IntegerNumber /= 10;
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___awdiv)),w
	clrf	(LCDWriteInteger@IntegerNumber+1)
	addwf	(LCDWriteInteger@IntegerNumber+1)
	movf	(0+(?___awdiv)),w
	clrf	(LCDWriteInteger@IntegerNumber)
	addwf	(LCDWriteInteger@IntegerNumber)

	goto	l4835
	line	188
	
l1198:	
	line	184
	
l4835:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDWriteInteger@IntegerNumber+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3765
	movlw	low(01h)
	subwf	(LCDWriteInteger@IntegerNumber),w
u3765:

	skipnc
	goto	u3761
	goto	u3760
u3761:
	goto	l4829
u3760:
	goto	l4839
	
l1200:	
	line	190
;LCD.c: 188: }
;LCD.c: 190: while(i-- > 0)
	goto	l4839
	
l1202:	
	line	191
	
l4837:	
;LCD.c: 191: LCDWriteData(c[i]);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDWriteInteger@i),w
	addlw	LCDWriteInteger@c&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_LCDWriteData
	goto	l4839
	
l1201:	
	line	190
	
l4839:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	subwf	(LCDWriteInteger@i),f
	movf	((LCDWriteInteger@i)),w
	xorlw	0FFh
	skipz
	goto	u3771
	goto	u3770
u3771:
	goto	l4837
u3770:
	goto	l1204
	
l1203:	
	line	194
	
l1204:	
	return
	opt stack 0
GLOBAL	__end_of_LCDWriteInteger
	__end_of_LCDWriteInteger:
;; =============== function _LCDWriteInteger ends ============

	signat	_LCDWriteInteger,4216
	global	_LCDReset
psect	text603,local,class=CODE,delta=2
global __ptext603
__ptext603:

;; *************** function _LCDReset *****************
;; Defined at:
;;		line 45 in file "C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\LCD.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCDWriteCommand
;; This function is called by:
;;		_LCDInitialize
;; This function uses a non-reentrant model
;;
psect	text603
	file	"C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\LCD.c"
	line	45
	global	__size_of_LCDReset
	__size_of_LCDReset	equ	__end_of_LCDReset-_LCDReset
	
_LCDReset:	
	opt	stack 1
; Regs used in _LCDReset: [wreg+status,2+status,0+pclath+cstack]
	line	46
	
l4815:	
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
	
l1152:	
	return
	opt stack 0
GLOBAL	__end_of_LCDReset
	__end_of_LCDReset:
;; =============== function _LCDReset ends ============

	signat	_LCDReset,88
	global	_LCDWriteString
psect	text604,local,class=CODE,delta=2
global __ptext604
__ptext604:

;; *************** function _LCDWriteString *****************
;; Defined at:
;;		line 24 in file "C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\LCD.c"
;; Parameters:    Size  Location     Type
;;  lcd_string      1    wreg     PTR const unsigned char 
;;		 -> STR_5(2), STR_4(3), STR_3(2), STR_2(3), 
;;		 -> STR_1(17), 
;; Auto vars:     Size  Location     Type
;;  lcd_string      1    8[BANK0 ] PTR const unsigned char 
;;		 -> STR_5(2), STR_4(3), STR_3(2), STR_2(3), 
;;		 -> STR_1(17), 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCDWriteData
;; This function is called by:
;;		_LCDWriteFloat
;;		_LCDDisplayInitializing
;;		_LCDWriteFloat2
;; This function uses a non-reentrant model
;;
psect	text604
	file	"C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\LCD.c"
	line	24
	global	__size_of_LCDWriteString
	__size_of_LCDWriteString	equ	__end_of_LCDWriteString-_LCDWriteString
	
_LCDWriteString:	
	opt	stack 1
; Regs used in _LCDWriteString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;LCDWriteString@lcd_string stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCDWriteString@lcd_string)
	line	25
	
l4807:	
;LCD.c: 25: while(*lcd_string)
	goto	l4813
	
l1144:	
	line	27
	
l4809:	
;LCD.c: 26: {
;LCD.c: 27: LCDWriteData(*lcd_string++);
	movf	(LCDWriteString@lcd_string),w
	movwf	fsr0
	fcall	stringdir
	fcall	_LCDWriteData
	
l4811:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCDWriteString+0)+0
	movf	(??_LCDWriteString+0)+0,w
	addwf	(LCDWriteString@lcd_string),f
	goto	l4813
	line	28
	
l1143:	
	line	25
	
l4813:	
	movf	(LCDWriteString@lcd_string),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u3731
	goto	u3730
u3731:
	goto	l4809
u3730:
	goto	l1146
	
l1145:	
	line	29
	
l1146:	
	return
	opt stack 0
GLOBAL	__end_of_LCDWriteString
	__end_of_LCDWriteString:
;; =============== function _LCDWriteString ends ============

	signat	_LCDWriteString,4216
	global	_LCDWriteData
psect	text605,local,class=CODE,delta=2
global __ptext605
__ptext605:

;; *************** function _LCDWriteData *****************
;; Defined at:
;;		line 18 in file "C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\LCD.c"
;; Parameters:    Size  Location     Type
;;  LCDData         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  LCDData         1    6[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCDWriteByte
;; This function is called by:
;;		_LCDWriteString
;;		_LCDWriteFloat
;;		_LCDWriteInteger
;;		_LCDDisplayInitializing
;;		_LCDDisplayByte
;;		_LCDWriteFloat2
;; This function uses a non-reentrant model
;;
psect	text605
	file	"C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\LCD.c"
	line	18
	global	__size_of_LCDWriteData
	__size_of_LCDWriteData	equ	__end_of_LCDWriteData-_LCDWriteData
	
_LCDWriteData:	
	opt	stack 1
; Regs used in _LCDWriteData: [wreg+status,2+status,0+pclath+cstack]
;LCDWriteData@LCDData stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCDWriteData@LCDData)
	line	19
	
l4803:	
;LCD.c: 19: RD2 = 1;
	bsf	(66/8),(66)&7
	line	20
	
l4805:	
;LCD.c: 20: LCDWriteByte(LCDData);
	movf	(LCDWriteData@LCDData),w
	fcall	_LCDWriteByte
	line	21
	
l1140:	
	return
	opt stack 0
GLOBAL	__end_of_LCDWriteData
	__end_of_LCDWriteData:
;; =============== function _LCDWriteData ends ============

	signat	_LCDWriteData,4216
	global	_LCDWriteCommand
psect	text606,local,class=CODE,delta=2
global __ptext606
__ptext606:

;; *************** function _LCDWriteCommand *****************
;; Defined at:
;;		line 12 in file "C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\LCD.c"
;; Parameters:    Size  Location     Type
;;  LCDData         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  LCDData         1    6[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_LCDWriteByte
;; This function is called by:
;;		_LCDInitialize
;;		_LCDReset
;;		_LCDWriteFloat
;;		_main
;;		_LCDDisplayInitializing
;;		_LCDDisplayByte
;;		_LCDWriteFloat2
;; This function uses a non-reentrant model
;;
psect	text606
	file	"C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\LCD.c"
	line	12
	global	__size_of_LCDWriteCommand
	__size_of_LCDWriteCommand	equ	__end_of_LCDWriteCommand-_LCDWriteCommand
	
_LCDWriteCommand:	
	opt	stack 2
; Regs used in _LCDWriteCommand: [wreg+status,2+status,0+pclath+cstack]
;LCDWriteCommand@LCDData stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCDWriteCommand@LCDData)
	line	13
	
l4799:	
;LCD.c: 13: RD2 = 0;
	bcf	(66/8),(66)&7
	line	14
	
l4801:	
;LCD.c: 14: LCDWriteByte(LCDData);
	movf	(LCDWriteCommand@LCDData),w
	fcall	_LCDWriteByte
	line	15
	
l1137:	
	return
	opt stack 0
GLOBAL	__end_of_LCDWriteCommand
	__end_of_LCDWriteCommand:
;; =============== function _LCDWriteCommand ends ============

	signat	_LCDWriteCommand,4216
	global	_LCDWriteByte
psect	text607,local,class=CODE,delta=2
global __ptext607
__ptext607:

;; *************** function _LCDWriteByte *****************
;; Defined at:
;;		line 64 in file "C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\LCD.c"
;; Parameters:    Size  Location     Type
;;  LCDData         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  LCDData         1    5[BANK0 ] unsigned char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_LCDEnable
;;		_Delay
;; This function is called by:
;;		_LCDWriteCommand
;;		_LCDWriteData
;; This function uses a non-reentrant model
;;
psect	text607
	file	"C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\LCD.c"
	line	64
	global	__size_of_LCDWriteByte
	__size_of_LCDWriteByte	equ	__end_of_LCDWriteByte-_LCDWriteByte
	
_LCDWriteByte:	
	opt	stack 1
; Regs used in _LCDWriteByte: [wreg+status,2+status,0+pclath+cstack]
;LCDWriteByte@LCDData stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCDWriteByte@LCDData)
	line	65
	
l4793:	
;LCD.c: 65: PORTD = (PORTD & 0x0F)|(LCDData & 0xF0);
	movlw	(0F0h)
	andwf	(LCDWriteByte@LCDData),w
	movwf	(??_LCDWriteByte+0)+0
	movf	(8),w
	andlw	0Fh
	iorwf	0+(??_LCDWriteByte+0)+0,w
	movwf	(8)	;volatile
	line	66
	
l4795:	
;LCD.c: 66: LCDEnable();
	fcall	_LCDEnable
	line	67
	
l4797:	
;LCD.c: 67: PORTD = (PORTD & 0x0F)|(LCDData << 4);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDWriteByte@LCDData),w
	movwf	(??_LCDWriteByte+0)+0
	movlw	04h
u3725:
	clrc
	rlf	(??_LCDWriteByte+0)+0,f
	addlw	-1
	skipz
	goto	u3725
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_Delay)
	movlw	high(02h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	70
	
l1160:	
	return
	opt stack 0
GLOBAL	__end_of_LCDWriteByte
	__end_of_LCDWriteByte:
;; =============== function _LCDWriteByte ends ============

	signat	_LCDWriteByte,4216
	global	_ADCReadData
psect	text608,local,class=CODE,delta=2
global __ptext608
__ptext608:

;; *************** function _ADCReadData *****************
;; Defined at:
;;		line 12 in file "C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\adc.c"
;; Parameters:    Size  Location     Type
;;  ChannelNumbe    1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ChannelNumbe    1   47[BANK0 ] unsigned char 
;;  z               2   48[BANK0 ] unsigned int 
;;  y               2   45[BANK0 ] unsigned int 
;;  x               2   43[BANK0 ] unsigned int 
;;  count           1    0        unsigned char 
;; Return value:  Size  Location     Type
;;                  3   38[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       7       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Delay
;;		___lwtoft
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text608
	file	"C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\adc.c"
	line	12
	global	__size_of_ADCReadData
	__size_of_ADCReadData	equ	__end_of_ADCReadData-_ADCReadData
	
_ADCReadData:	
	opt	stack 4
; Regs used in _ADCReadData: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;ADCReadData@ChannelNumber stored from wreg
	line	16
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(ADCReadData@ChannelNumber)
	
l4773:	
;adc.c: 13: unsigned char count;
;adc.c: 14: unsigned int x,y,z;
;adc.c: 16: z=0;
	movlw	low(0)
	movwf	(ADCReadData@z)
	movlw	high(0)
	movwf	((ADCReadData@z))+1
	line	17
	
l4775:	
;adc.c: 17: ADCON0 = ((ADCON0 & 0xc7) | (ChannelNumber));
	movf	(31),w
	andlw	0C7h
	iorwf	(ADCReadData@ChannelNumber),w
	movwf	(31)	;volatile
	line	18
	
l4777:	
;adc.c: 18: Delay(1);
	movlw	low(01h)
	movwf	(?_Delay)
	movlw	high(01h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	20
	
l4779:	
;adc.c: 20: ADON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(248/8),(248)&7
	line	21
	
l4781:	
;adc.c: 21: ADCON0 |= 0x04;
	bsf	(31)+(2/8),(2)&7	;volatile
	line	22
;adc.c: 22: while( (ADCON0 & 0x04) == 0x04);
	goto	l564
	
l565:	
	
l564:	
	btfsc	(31),(2)&7
	goto	u3701
	goto	u3700
u3701:
	goto	l564
u3700:
	goto	l4783
	
l566:	
	line	24
	
l4783:	
;adc.c: 24: x=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_ADCReadData+0)+0
	clrf	(??_ADCReadData+0)+0+1
	movf	0+(??_ADCReadData+0)+0,w
	movwf	(ADCReadData@x)
	movf	1+(??_ADCReadData+0)+0,w
	movwf	(ADCReadData@x+1)
	line	25
;adc.c: 25: y=ADRESL;
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
	line	27
	
l4785:	
;adc.c: 27: z=(x*256)+y;
	movf	(ADCReadData@x+1),w
	movwf	(??_ADCReadData+0)+0+1
	movf	(ADCReadData@x),w
	movwf	(??_ADCReadData+0)+0
	movlw	08h
	movwf	btemp+1
u3715:
	clrc
	rlf	(??_ADCReadData+0)+0,f
	rlf	(??_ADCReadData+0)+1,f
	decfsz	btemp+1,f
	goto	u3715
	movf	(ADCReadData@y),w
	addwf	0+(??_ADCReadData+0)+0,w
	movwf	(ADCReadData@z)
	movf	(ADCReadData@y+1),w
	skipnc
	incf	(ADCReadData@y+1),w
	addwf	1+(??_ADCReadData+0)+0,w
	movwf	1+(ADCReadData@z)
	line	30
	
l4787:	
;adc.c: 30: Delay(1);
	movlw	low(01h)
	movwf	(?_Delay)
	movlw	high(01h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	31
	
l4789:	
;adc.c: 31: return z;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(ADCReadData@z+1),w
	clrf	(?___lwtoft+1)
	addwf	(?___lwtoft+1)
	movf	(ADCReadData@z),w
	clrf	(?___lwtoft)
	addwf	(?___lwtoft)

	fcall	___lwtoft
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwtoft)),w
	movwf	(?_ADCReadData)
	movf	(1+(?___lwtoft)),w
	movwf	(?_ADCReadData+1)
	movf	(2+(?___lwtoft)),w
	movwf	(?_ADCReadData+2)
	goto	l567
	
l4791:	
	line	33
	
l567:	
	return
	opt stack 0
GLOBAL	__end_of_ADCReadData
	__end_of_ADCReadData:
;; =============== function _ADCReadData ends ============

	signat	_ADCReadData,4219
	global	___lwtoft
psect	text609,local,class=CODE,delta=2
global __ptext609
__ptext609:

;; *************** function ___lwtoft *****************
;; Defined at:
;;		line 29 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_ADCReadData
;; This function uses a non-reentrant model
;;
psect	text609
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\lwtoft.c"
	line	29
	global	__size_of___lwtoft
	__size_of___lwtoft	equ	__end_of___lwtoft-___lwtoft
	
___lwtoft:	
	opt	stack 4
; Regs used in ___lwtoft: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l4769:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___lwtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___lwtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___lwtoft+2)
	goto	l2044
	
l4771:	
	line	31
	
l2044:	
	return
	opt stack 0
GLOBAL	__end_of___lwtoft
	__end_of___lwtoft:
;; =============== function ___lwtoft ends ============

	signat	___lwtoft,4219
	global	___awtoft
psect	text610,local,class=CODE,delta=2
global __ptext610
__ptext610:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2   11[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   16[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   11[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_LCDWriteFloat
;;		_LCDWriteFloat2
;; This function uses a non-reentrant model
;;
psect	text610
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 4
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l4759:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awtoft@sign)
	line	37
	
l4761:	
	btfss	(___awtoft@c+1),7
	goto	u3691
	goto	u3690
u3691:
	goto	l4765
u3690:
	line	38
	
l4763:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	l4765
	line	40
	
l1957:	
	line	41
	
l4765:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l1958
	
l4767:	
	line	42
	
l1958:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text611,local,class=CODE,delta=2
global __ptext611
__ptext611:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   38[BANK0 ] float 
;;  f2              3   41[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   49[BANK0 ] unsigned um
;;  sign            1   53[BANK0 ] unsigned char 
;;  cntr            1   52[BANK0 ] unsigned char 
;;  exp             1   48[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   38[BANK0 ] float 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_LCDWriteFloat
;;		_main
;;		_LCDWriteFloat2
;; This function uses a non-reentrant model
;;
psect	text611
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 5
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l4709:	
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
	goto	u3551
	goto	u3550
u3551:
	goto	l4715
u3550:
	line	57
	
l4711:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l1920
	
l4713:	
	goto	l1920
	
l1919:	
	line	58
	
l4715:	
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
	goto	u3561
	goto	u3560
u3561:
	goto	l4721
u3560:
	line	59
	
l4717:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l1920
	
l4719:	
	goto	l1920
	
l1921:	
	line	60
	
l4721:	
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
u3575:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3570:
	addlw	-1
	skipz
	goto	u3575
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
u3585:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3580:
	addlw	-1
	skipz
	goto	u3585
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
	
l4723:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l4725:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l4727:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l4729:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l4731:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l4733
	line	70
	
l1922:	
	line	71
	
l4733:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3591
	goto	u3590
u3591:
	goto	l4737
u3590:
	line	72
	
l4735:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3601
	addwf	(___ftmul@f3_as_product+1),f
u3601:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3602
	addwf	(___ftmul@f3_as_product+2),f
u3602:

	goto	l4737
	
l1923:	
	line	73
	
l4737:	
	movlw	01h
u3615:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3615

	line	74
	
l4739:	
	movlw	01h
u3625:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u3625
	line	75
	
l4741:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3631
	goto	u3630
u3631:
	goto	l4733
u3630:
	goto	l4743
	
l1924:	
	line	76
	
l4743:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l4745
	line	77
	
l1925:	
	line	78
	
l4745:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3641
	goto	u3640
u3641:
	goto	l4749
u3640:
	line	79
	
l4747:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3651
	addwf	(___ftmul@f3_as_product+1),f
u3651:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3652
	addwf	(___ftmul@f3_as_product+2),f
u3652:

	goto	l4749
	
l1926:	
	line	80
	
l4749:	
	movlw	01h
u3665:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3665

	line	81
	
l4751:	
	movlw	01h
u3675:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u3675

	line	82
	
l4753:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3681
	goto	u3680
u3681:
	goto	l4745
u3680:
	goto	l4755
	
l1927:	
	line	83
	
l4755:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l1920
	
l4757:	
	line	84
	
l1920:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	___ftdiv
psect	text612,local,class=CODE,delta=2
global __ptext612
__ptext612:

;; *************** function ___ftdiv *****************
;; Defined at:
;;		line 50 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftdiv.c"
;; Parameters:    Size  Location     Type
;;  f2              3    8[BANK0 ] float 
;;  f1              3   11[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3              3   19[BANK0 ] float 
;;  sign            1   23[BANK0 ] unsigned char 
;;  exp             1   22[BANK0 ] unsigned char 
;;  cntr            1   18[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text612
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftdiv.c"
	line	50
	global	__size_of___ftdiv
	__size_of___ftdiv	equ	__end_of___ftdiv-___ftdiv
	
___ftdiv:	
	opt	stack 5
; Regs used in ___ftdiv: [wreg+status,2+status,0+pclath+cstack]
	line	55
	
l4667:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftdiv@f1),w
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
	goto	u3471
	goto	u3470
u3471:
	goto	l4673
u3470:
	line	56
	
l4669:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l1910
	
l4671:	
	goto	l1910
	
l1909:	
	line	57
	
l4673:	
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
	goto	u3481
	goto	u3480
u3481:
	goto	l4679
u3480:
	line	58
	
l4675:	
	movlw	0x0
	movwf	(?___ftdiv)
	movlw	0x0
	movwf	(?___ftdiv+1)
	movlw	0x0
	movwf	(?___ftdiv+2)
	goto	l1910
	
l4677:	
	goto	l1910
	
l1911:	
	line	59
	
l4679:	
	movlw	0
	movwf	(___ftdiv@f3)
	movlw	0
	movwf	(___ftdiv@f3+1)
	movlw	0
	movwf	(___ftdiv@f3+2)
	line	60
	
l4681:	
	movlw	(089h)
	addwf	(___ftdiv@sign),w
	movwf	(??___ftdiv+0)+0
	movf	0+(??___ftdiv+0)+0,w
	subwf	(___ftdiv@exp),f
	line	61
	
l4683:	
	movf	(___ftdiv@f1),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f1+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f1+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3495:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3490:
	addlw	-1
	skipz
	goto	u3495
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	movwf	(___ftdiv@sign)
	line	62
	
l4685:	
	movf	(___ftdiv@f2),w
	movwf	((??___ftdiv+0)+0)
	movf	(___ftdiv@f2+1),w
	movwf	((??___ftdiv+0)+0+1)
	movf	(___ftdiv@f2+2),w
	movwf	((??___ftdiv+0)+0+2)
	movlw	010h
u3505:
	clrc
	rrf	(??___ftdiv+0)+2,f
	rrf	(??___ftdiv+0)+1,f
	rrf	(??___ftdiv+0)+0,f
u3500:
	addlw	-1
	skipz
	goto	u3505
	movf	0+(??___ftdiv+0)+0,w
	movwf	(??___ftdiv+3)+0
	movf	(??___ftdiv+3)+0,w
	xorwf	(___ftdiv@sign),f
	line	63
	
l4687:	
	movlw	(080h)
	movwf	(??___ftdiv+0)+0
	movf	(??___ftdiv+0)+0,w
	andwf	(___ftdiv@sign),f
	line	64
	
l4689:	
	bsf	(___ftdiv@f1)+(15/8),(15)&7
	line	65
	movlw	0FFh
	andwf	(___ftdiv@f1),f
	movlw	0FFh
	andwf	(___ftdiv@f1+1),f
	movlw	0
	andwf	(___ftdiv@f1+2),f
	line	66
	
l4691:	
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
	goto	l4693
	line	69
	
l1912:	
	line	70
	
l4693:	
	movlw	01h
u3515:
	clrc
	rlf	(___ftdiv@f3),f
	rlf	(___ftdiv@f3+1),f
	rlf	(___ftdiv@f3+2),f
	addlw	-1
	skipz
	goto	u3515
	line	71
	
l4695:	
	movf	(___ftdiv@f2+2),w
	subwf	(___ftdiv@f1+2),w
	skipz
	goto	u3525
	movf	(___ftdiv@f2+1),w
	subwf	(___ftdiv@f1+1),w
	skipz
	goto	u3525
	movf	(___ftdiv@f2),w
	subwf	(___ftdiv@f1),w
u3525:
	skipc
	goto	u3521
	goto	u3520
u3521:
	goto	l4701
u3520:
	line	72
	
l4697:	
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
	
l4699:	
	bsf	(___ftdiv@f3)+(0/8),(0)&7
	goto	l4701
	line	74
	
l1913:	
	line	75
	
l4701:	
	movlw	01h
u3535:
	clrc
	rlf	(___ftdiv@f1),f
	rlf	(___ftdiv@f1+1),f
	rlf	(___ftdiv@f1+2),f
	addlw	-1
	skipz
	goto	u3535
	line	76
	
l4703:	
	movlw	low(01h)
	subwf	(___ftdiv@cntr),f
	btfss	status,2
	goto	u3541
	goto	u3540
u3541:
	goto	l4693
u3540:
	goto	l4705
	
l1914:	
	line	77
	
l4705:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftdiv)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftdiv+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftdiv+2)
	goto	l1910
	
l4707:	
	line	78
	
l1910:	
	return
	opt stack 0
GLOBAL	__end_of___ftdiv
	__end_of___ftdiv:
;; =============== function ___ftdiv ends ============

	signat	___ftdiv,8315
	global	___ftadd
psect	text613,local,class=CODE,delta=2
global __ptext613
__ptext613:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3   25[BANK0 ] float 
;;  f2              3   28[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1   37[BANK0 ] unsigned char 
;;  exp2            1   36[BANK0 ] unsigned char 
;;  sign            1   35[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   25[BANK0 ] float 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_LCDWriteFloat
;;		_main
;;		_LCDWriteFloat2
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text613
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 4
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l4595:	
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
	
l4597:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u3230
	goto	l4603
u3230:
	
l4599:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u3241
	goto	u3240
u3241:
	goto	l4607
u3240:
	
l4601:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3251
	goto	u3250
u3251:
	goto	l4607
u3250:
	goto	l4603
	
l1867:	
	line	93
	
l4603:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l1868
	
l4605:	
	goto	l1868
	
l1865:	
	line	94
	
l4607:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u3260
	goto	l1871
u3260:
	
l4609:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3271
	goto	u3270
u3271:
	goto	l4613
u3270:
	
l4611:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u3281
	goto	u3280
u3281:
	goto	l4613
u3280:
	
l1871:	
	line	95
	goto	l1868
	
l1869:	
	line	96
	
l4613:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l4615:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u3291
	goto	u3290
u3291:
	goto	l1872
u3290:
	line	98
	
l4617:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l1872:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3301
	goto	u3300
u3301:
	goto	l1873
u3300:
	line	100
	
l4619:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l1873:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l4621:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l4623:	
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
	goto	u3311
	goto	u3310
u3311:
	goto	l4635
u3310:
	goto	l4625
	line	109
	
l1875:	
	line	110
	
l4625:	
	movlw	01h
u3325:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u3325
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l4627:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3331
	goto	u3330
u3331:
	goto	l4633
u3330:
	
l4629:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3341
	goto	u3340
u3341:
	goto	l4625
u3340:
	goto	l4633
	
l1877:	
	goto	l4633
	
l1878:	
	line	113
	goto	l4633
	
l1880:	
	line	114
	
l4631:	
	movlw	01h
u3355:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u3355

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l4633
	line	116
	
l1879:	
	line	113
	
l4633:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3361
	goto	u3360
u3361:
	goto	l4631
u3360:
	goto	l1882
	
l1881:	
	line	117
	goto	l1882
	
l1874:	
	
l4635:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u3371
	goto	u3370
u3371:
	goto	l1882
u3370:
	goto	l4637
	line	120
	
l1884:	
	line	121
	
l4637:	
	movlw	01h
u3385:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u3385
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l4639:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u3391
	goto	u3390
u3391:
	goto	l4645
u3390:
	
l4641:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u3401
	goto	u3400
u3401:
	goto	l4637
u3400:
	goto	l4645
	
l1886:	
	goto	l4645
	
l1887:	
	line	124
	goto	l4645
	
l1889:	
	line	125
	
l4643:	
	movlw	01h
u3415:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u3415

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l4645
	line	127
	
l1888:	
	line	124
	
l4645:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u3421
	goto	u3420
u3421:
	goto	l4643
u3420:
	goto	l1882
	
l1890:	
	goto	l1882
	line	128
	
l1883:	
	line	129
	
l1882:	
	btfss	(___ftadd@sign),(7)&7
	goto	u3431
	goto	u3430
u3431:
	goto	l4649
u3430:
	line	131
	
l4647:	
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
	goto	l4649
	line	133
	
l1891:	
	line	134
	
l4649:	
	btfss	(___ftadd@sign),(6)&7
	goto	u3441
	goto	u3440
u3441:
	goto	l4653
u3440:
	line	136
	
l4651:	
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
	goto	l4653
	line	138
	
l1892:	
	line	139
	
l4653:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___ftadd@sign)
	line	140
	
l4655:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u3451
	addwf	(___ftadd@f2+1),f
u3451:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u3452
	addwf	(___ftadd@f2+2),f
u3452:

	line	141
	
l4657:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u3461
	goto	u3460
u3461:
	goto	l4663
u3460:
	line	142
	
l4659:	
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
	
l4661:	
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	goto	l4663
	line	145
	
l1893:	
	line	146
	
l4663:	
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
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftpack)),w
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l1868
	
l4665:	
	line	148
	
l1868:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	_LCDEnable
psect	text614,local,class=CODE,delta=2
global __ptext614
__ptext614:

;; *************** function _LCDEnable *****************
;; Defined at:
;;		line 5 in file "C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\LCD.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Delay
;; This function is called by:
;;		_LCDWriteByte
;; This function uses a non-reentrant model
;;
psect	text614
	file	"C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\LCD.c"
	line	5
	global	__size_of_LCDEnable
	__size_of_LCDEnable	equ	__end_of_LCDEnable-_LCDEnable
	
_LCDEnable:	
	opt	stack 1
; Regs used in _LCDEnable: [wreg+status,2+status,0+pclath+cstack]
	line	6
	
l4589:	
;LCD.c: 6: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	7
	
l4591:	
;LCD.c: 7: Delay(10);
	movlw	low(0Ah)
	movwf	(?_Delay)
	movlw	high(0Ah)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	8
	
l4593:	
;LCD.c: 8: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	9
	
l1134:	
	return
	opt stack 0
GLOBAL	__end_of_LCDEnable
	__end_of_LCDEnable:
;; =============== function _LCDEnable ends ============

	signat	_LCDEnable,88
	global	___awmod
psect	text615,local,class=CODE,delta=2
global __ptext615
__ptext615:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[BANK0 ] unsigned char 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       7       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCDWriteFloat
;;		_LCDWriteInteger
;;		_LCDDisplayByte
;;		_LCDWriteFloat2
;; This function uses a non-reentrant model
;;
psect	text615
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l4509:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@sign)
	line	9
	
l4511:	
	btfss	(___awmod@dividend+1),7
	goto	u3081
	goto	u3080
u3081:
	goto	l4515
u3080:
	line	10
	
l4513:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l4515
	line	12
	
l2029:	
	line	13
	
l4515:	
	btfss	(___awmod@divisor+1),7
	goto	u3091
	goto	u3090
u3091:
	goto	l4519
u3090:
	line	14
	
l4517:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l4519
	
l2030:	
	line	15
	
l4519:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3101
	goto	u3100
u3101:
	goto	l4537
u3100:
	line	16
	
l4521:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l4527
	
l2033:	
	line	18
	
l4523:	
	movlw	01h
	
u3115:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3115
	line	19
	
l4525:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l4527
	line	20
	
l2032:	
	line	17
	
l4527:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3121
	goto	u3120
u3121:
	goto	l4523
u3120:
	goto	l4529
	
l2034:	
	goto	l4529
	line	21
	
l2035:	
	line	22
	
l4529:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3135
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3135:
	skipc
	goto	u3131
	goto	u3130
u3131:
	goto	l4533
u3130:
	line	23
	
l4531:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l4533
	
l2036:	
	line	24
	
l4533:	
	movlw	01h
	
u3145:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3145
	line	25
	
l4535:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3151
	goto	u3150
u3151:
	goto	l4529
u3150:
	goto	l4537
	
l2037:	
	goto	l4537
	line	26
	
l2031:	
	line	27
	
l4537:	
	movf	(___awmod@sign),w
	skipz
	goto	u3160
	goto	l4541
u3160:
	line	28
	
l4539:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l4541
	
l2038:	
	line	29
	
l4541:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l2039
	
l4543:	
	line	30
	
l2039:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___ftge
psect	text616,local,class=CODE,delta=2
global __ptext616
__ptext616:

;; *************** function ___ftge *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftge.c"
;; Parameters:    Size  Location     Type
;;  ff1             3    0[BANK0 ] float 
;;  ff2             3    3[BANK0 ] float 
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
;;      Params:         0       6       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       6       0       0       0
;;      Totals:         0      12       0       0       0
;;Total ram usage:       12 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCDWriteFloat
;;		_main
;;		_LCDWriteFloat2
;; This function uses a non-reentrant model
;;
psect	text616
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 6
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l4489:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___ftge@ff1+2),(23)&7
	goto	u3031
	goto	u3030
u3031:
	goto	l4493
u3030:
	line	7
	
l4491:	
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
	goto	u3041
	goto	u3042
u3041:
	addwf	(??___ftge+0)+1,f
	
u3042:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u3043
	goto	u3044
u3043:
	addwf	(??___ftge+0)+2,f
	
u3044:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l4493
	
l1988:	
	line	8
	
l4493:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u3051
	goto	u3050
u3051:
	goto	l4497
u3050:
	line	9
	
l4495:	
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
	goto	u3061
	goto	u3062
u3061:
	addwf	(??___ftge+0)+1,f
	
u3062:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u3063
	goto	u3064
u3063:
	addwf	(??___ftge+0)+2,f
	
u3064:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l4497
	
l1989:	
	line	10
	
l4497:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l4499:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l4501:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u3075
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u3075
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u3075:
	skipnc
	goto	u3071
	goto	u3070
u3071:
	goto	l4505
u3070:
	
l4503:	
	clrc
	
	goto	l1990
	
l4215:	
	
l4505:	
	setc
	
	goto	l1990
	
l4217:	
	goto	l1990
	
l4507:	
	line	13
	
l1990:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftneg
psect	text617,local,class=CODE,delta=2
global __ptext617
__ptext617:

;; *************** function ___ftneg *****************
;; Defined at:
;;		line 16 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftneg.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    8[BANK0 ] float 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       3       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCDWriteFloat
;;		_main
;;		_LCDWriteFloat2
;; This function uses a non-reentrant model
;;
psect	text617
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftneg.c"
	line	16
	global	__size_of___ftneg
	__size_of___ftneg	equ	__end_of___ftneg-___ftneg
	
___ftneg:	
	opt	stack 6
; Regs used in ___ftneg: [wreg]
	line	17
	
l4481:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftneg@f1+2),w
	iorwf	(___ftneg@f1+1),w
	iorwf	(___ftneg@f1),w
	skipnz
	goto	u3021
	goto	u3020
u3021:
	goto	l4485
u3020:
	line	18
	
l4483:	
	movlw	080h
	xorwf	(___ftneg@f1+2),f
	goto	l4485
	
l1984:	
	line	19
	
l4485:	
	goto	l1985
	
l4487:	
	line	20
	
l1985:	
	return
	opt stack 0
GLOBAL	__end_of___ftneg
	__end_of___ftneg:
;; =============== function ___ftneg ends ============

	signat	___ftneg,4219
	global	___awdiv
psect	text618,local,class=CODE,delta=2
global __ptext618
__ptext618:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[BANK0 ] int 
;;  dividend        2    2[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[BANK0 ] int 
;;  sign            1    6[BANK0 ] unsigned char 
;;  counter         1    5[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       9       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCDWriteFloat
;;		_LCDWriteInteger
;;		_LCDDisplayByte
;;		_LCDWriteFloat2
;; This function uses a non-reentrant model
;;
psect	text618
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l4443:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@sign)
	line	10
	
l4445:	
	btfss	(___awdiv@divisor+1),7
	goto	u2921
	goto	u2920
u2921:
	goto	l4449
u2920:
	line	11
	
l4447:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l4449
	line	13
	
l1961:	
	line	14
	
l4449:	
	btfss	(___awdiv@dividend+1),7
	goto	u2931
	goto	u2930
u2931:
	goto	l1962
u2930:
	line	15
	
l4451:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l4453:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l1962:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2941
	goto	u2940
u2941:
	goto	l4473
u2940:
	line	20
	
l4455:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l4461
	
l1965:	
	line	22
	
l4457:	
	movlw	01h
	
u2955:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2955
	line	23
	
l4459:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l4461
	line	24
	
l1964:	
	line	21
	
l4461:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2961
	goto	u2960
u2961:
	goto	l4457
u2960:
	goto	l4463
	
l1966:	
	goto	l4463
	line	25
	
l1967:	
	line	26
	
l4463:	
	movlw	01h
	
u2975:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2975
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2985
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2985:
	skipc
	goto	u2981
	goto	u2980
u2981:
	goto	l4469
u2980:
	line	28
	
l4465:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l4467:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l4469
	line	30
	
l1968:	
	line	31
	
l4469:	
	movlw	01h
	
u2995:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2995
	line	32
	
l4471:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3001
	goto	u3000
u3001:
	goto	l4463
u3000:
	goto	l4473
	
l1969:	
	goto	l4473
	line	33
	
l1963:	
	line	34
	
l4473:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3010
	goto	l4477
u3010:
	line	35
	
l4475:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l4477
	
l1970:	
	line	36
	
l4477:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1971
	
l4479:	
	line	37
	
l1971:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text619,local,class=CODE,delta=2
global __ptext619
__ptext619:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3   11[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  lval            4   20[BANK0 ] unsigned long 
;;  exp1            1   24[BANK0 ] unsigned char 
;;  sign1           1   19[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4   11[BANK0 ] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      14       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCDWriteFloat
;;		_main
;;		_LCDWriteFloat2
;; This function uses a non-reentrant model
;;
psect	text619
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l4385:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	goto	u2811
	goto	u2810
u2811:
	goto	l4391
u2810:
	line	50
	
l4387:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1931
	
l4389:	
	goto	l1931
	
l1930:	
	line	51
	
l4391:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u2825:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u2820:
	addlw	-1
	skipz
	goto	u2825
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l4393:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l4395:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l4397:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l4399:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l4401:	
	btfss	(___fttol@exp1),7
	goto	u2831
	goto	u2830
u2831:
	goto	l4411
u2830:
	line	57
	
l4403:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u2841
	goto	u2840
u2841:
	goto	l4409
u2840:
	line	58
	
l4405:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1931
	
l4407:	
	goto	l1931
	
l1933:	
	goto	l4409
	line	59
	
l1934:	
	line	60
	
l4409:	
	movlw	01h
u2855:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u2855

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u2861
	goto	u2860
u2861:
	goto	l4409
u2860:
	goto	l4421
	
l1935:	
	line	62
	goto	l4421
	
l1932:	
	line	63
	
l4411:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u2871
	goto	u2870
u2871:
	goto	l4419
u2870:
	line	64
	
l4413:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1931
	
l4415:	
	goto	l1931
	
l1937:	
	line	65
	goto	l4419
	
l1939:	
	line	66
	
l4417:	
	movlw	01h
	movwf	(??___fttol+0)+0
u2885:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u2885
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l4419
	line	68
	
l1938:	
	line	65
	
l4419:	
	movf	(___fttol@exp1),f
	skipz
	goto	u2891
	goto	u2890
u2891:
	goto	l4417
u2890:
	goto	l4421
	
l1940:	
	goto	l4421
	line	69
	
l1936:	
	line	70
	
l4421:	
	movf	(___fttol@sign1),w
	skipz
	goto	u2900
	goto	l4425
u2900:
	line	71
	
l4423:	
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
	goto	l4425
	
l1941:	
	line	72
	
l4425:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l1931
	
l4427:	
	line	73
	
l1931:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text620,local,class=CODE,delta=2
global __ptext620
__ptext620:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[BANK0 ] unsigned um
;;  exp             1    3[BANK0 ] unsigned char 
;;  sign            1    4[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       5       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
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
psect	text620
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l4349:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftpack@exp),w
	skipz
	goto	u2700
	goto	l4353
u2700:
	
l4351:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2711
	goto	u2710
u2711:
	goto	l4359
u2710:
	goto	l4353
	
l2155:	
	line	65
	
l4353:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l2156
	
l4355:	
	goto	l2156
	
l2153:	
	line	66
	goto	l4359
	
l2158:	
	line	67
	
l4357:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2725:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2725

	goto	l4359
	line	69
	
l2157:	
	line	66
	
l4359:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2731
	goto	u2730
u2731:
	goto	l4357
u2730:
	goto	l2160
	
l2159:	
	line	70
	goto	l2160
	
l2161:	
	line	71
	
l4361:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l4363:	
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
	
l4365:	
	movlw	01h
u2745:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2745

	line	74
	
l2160:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2751
	goto	u2750
u2751:
	goto	l4361
u2750:
	goto	l4369
	
l2162:	
	line	75
	goto	l4369
	
l2164:	
	line	76
	
l4367:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2765:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2765
	goto	l4369
	line	78
	
l2163:	
	line	75
	
l4369:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l4367
u2770:
	
l2165:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2781
	goto	u2780
u2781:
	goto	l2166
u2780:
	line	80
	
l4371:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l2166:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l4373:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2795:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2790:
	addlw	-1
	skipz
	goto	u2795
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l4375:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2800
	goto	l2167
u2800:
	line	84
	
l4377:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l2167:	
	line	85
	line	86
	
l2156:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	_TimerInitialize
psect	text621,local,class=CODE,delta=2
global __ptext621
__ptext621:

;; *************** function _TimerInitialize *****************
;; Defined at:
;;		line 98 in file "C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\timer1c.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text621
	file	"C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\timer1c.c"
	line	98
	global	__size_of_TimerInitialize
	__size_of_TimerInitialize	equ	__end_of_TimerInitialize-_TimerInitialize
	
_TimerInitialize:	
	opt	stack 6
; Regs used in _TimerInitialize: [wreg]
	line	99
	
l4335:	
;timer1c.c: 99: TMR1H=0xfe;
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(15)	;volatile
	line	100
	
l4337:	
;timer1c.c: 100: T1CKPS1=0;
	bcf	(133/8),(133)&7
	line	101
	
l4339:	
;timer1c.c: 101: T1CKPS0=0;
	bcf	(132/8),(132)&7
	line	102
	
l4341:	
;timer1c.c: 102: TMR1ON=1;
	bsf	(128/8),(128)&7
	line	103
	
l4343:	
;timer1c.c: 103: GIE=1;
	bsf	(95/8),(95)&7
	line	104
	
l4345:	
;timer1c.c: 104: PEIE=1;
	bsf	(94/8),(94)&7
	line	105
	
l4347:	
;timer1c.c: 105: TMR1IE=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	106
	
l1812:	
	return
	opt stack 0
GLOBAL	__end_of_TimerInitialize
	__end_of_TimerInitialize:
;; =============== function _TimerInitialize ends ============

	signat	_TimerInitialize,88
	global	_Delay
psect	text622,local,class=CODE,delta=2
global __ptext622
__ptext622:

;; *************** function _Delay *****************
;; Defined at:
;;		line 4 in file "C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\delay.c"
;; Parameters:    Size  Location     Type
;;  time            2    0[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  pause           1    3[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       2       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_ADCReadData
;;		_LCDEnable
;;		_LCDWriteByte
;;		_LCDDisplayInitializing
;; This function uses a non-reentrant model
;;
psect	text622
	file	"C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\delay.c"
	line	4
	global	__size_of_Delay
	__size_of_Delay	equ	__end_of_Delay-_Delay
	
_Delay:	
	opt	stack 2
; Regs used in _Delay: [wreg+status,2+status,0]
	line	9
	
l4221:	
;delay.c: 8: unsigned char pause;
;delay.c: 9: while( time > 0)
	goto	l4229
	
l1208:	
	line	11
	
l4223:	
;delay.c: 10: {
;delay.c: 11: pause = 250;
	movlw	(0FAh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_Delay+0)+0
	movf	(??_Delay+0)+0,w
	movwf	(Delay@pause)
	line	12
;delay.c: 12: while(pause--);
	goto	l4225
	
l1210:	
	goto	l4225
	
l1209:	
	
l4225:	
	movlw	low(01h)
	subwf	(Delay@pause),f
	movf	((Delay@pause)),w
	xorlw	0FFh
	skipz
	goto	u2531
	goto	u2530
u2531:
	goto	l4225
u2530:
	goto	l4227
	
l1211:	
	line	13
	
l4227:	
;delay.c: 13: time--;
	movlw	low(01h)
	subwf	(Delay@time),f
	movlw	high(01h)
	skipc
	decf	(Delay@time+1),f
	subwf	(Delay@time+1),f
	goto	l4229
	line	14
	
l1207:	
	line	9
	
l4229:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((Delay@time+1)),w
	iorwf	((Delay@time)),w
	skipz
	goto	u2541
	goto	u2540
u2541:
	goto	l4223
u2540:
	goto	l1213
	
l1212:	
	line	15
	
l1213:	
	return
	opt stack 0
GLOBAL	__end_of_Delay
	__end_of_Delay:
;; =============== function _Delay ends ============

	signat	_Delay,4216
	global	_ADCInitialize
psect	text623,local,class=CODE,delta=2
global __ptext623
__ptext623:

;; *************** function _ADCInitialize *****************
;; Defined at:
;;		line 4 in file "C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\adc.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text623
	file	"C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\adc.c"
	line	4
	global	__size_of_ADCInitialize
	__size_of_ADCInitialize	equ	__end_of_ADCInitialize-_ADCInitialize
	
_ADCInitialize:	
	opt	stack 6
; Regs used in _ADCInitialize: []
	line	5
	
l4219:	
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
;adc.c: 8: PCFG3 = PCFG2 = PCFG1 = PCFG0 =0;
	bcf	(1272/8)^080h,(1272)&7
	bcf	(1273/8)^080h,(1273)&7
	bcf	(1274/8)^080h,(1274)&7
	bcf	(1275/8)^080h,(1275)&7
	line	9
	
l561:	
	return
	opt stack 0
GLOBAL	__end_of_ADCInitialize
	__end_of_ADCInitialize:
;; =============== function _ADCInitialize ends ============

	signat	_ADCInitialize,88
	global	_timer
psect	text624,local,class=CODE,delta=2
global __ptext624
__ptext624:

;; *************** function _timer *****************
;; Defined at:
;;		line 8 in file "C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\timer1c.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  1787[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          8       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text624
	file	"C:\Users\X4ROY\Desktop\URE\timer 1 (incomplete) - Copy\timer1c.c"
	line	8
	global	__size_of_timer
	__size_of_timer	equ	__end_of_timer-_timer
	
_timer:	
	opt	stack 1
; Regs used in _timer: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	movf	status,w
	movwf	(??_timer+4)
	movf	fsr0,w
	movwf	(??_timer+5)
	movf	pclath,w
	movwf	(??_timer+6)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_timer+7)
	ljmp	_timer
psect	text624
	line	9
	
i1l4315:	
;timer1c.c: 9: if(TMR1IF==1)
	btfss	(96/8),(96)&7
	goto	u266_21
	goto	u266_20
u266_21:
	goto	i1l1793
u266_20:
	line	12
	
i1l4317:	
;timer1c.c: 10: {
;timer1c.c: 12: if(count<(115-temp2))
	movf	(_temp2),w
	movwf	(??_timer+0)+0
	clrf	(??_timer+0)+0+1
	comf	(??_timer+0)+0,f
	comf	(??_timer+0)+1,f
	incf	(??_timer+0)+0,f
	skipnz
	incf	(??_timer+0)+1,f
	movf	0+(??_timer+0)+0,w
	addlw	low(073h)
	movwf	(??_timer+2)+0
	movf	1+(??_timer+0)+0,w
	skipnc
	addlw	1
	addlw	high(073h)
	movwf	1+(??_timer+2)+0
	movf	1+(??_timer+2)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u267_25
	movf	0+(??_timer+2)+0,w
	subwf	(_count),w
u267_25:

	skipnc
	goto	u267_21
	goto	u267_20
u267_21:
	goto	i1l4321
u267_20:
	line	14
	
i1l4319:	
;timer1c.c: 13: {
;timer1c.c: 14: RB0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	line	15
;timer1c.c: 15: }
	goto	i1l1790
	line	17
	
i1l1789:	
	
i1l4321:	
;timer1c.c: 17: else if(count>=(115-temp2))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_temp2),w
	movwf	(??_timer+0)+0
	clrf	(??_timer+0)+0+1
	comf	(??_timer+0)+0,f
	comf	(??_timer+0)+1,f
	incf	(??_timer+0)+0,f
	skipnz
	incf	(??_timer+0)+1,f
	movf	0+(??_timer+0)+0,w
	addlw	low(073h)
	movwf	(??_timer+2)+0
	movf	1+(??_timer+0)+0,w
	skipnc
	addlw	1
	addlw	high(073h)
	movwf	1+(??_timer+2)+0
	movf	1+(??_timer+2)+0,w
	xorlw	80h
	sublw	080h
	skipz
	goto	u268_25
	movf	0+(??_timer+2)+0,w
	subwf	(_count),w
u268_25:

	skipc
	goto	u268_21
	goto	u268_20
u268_21:
	goto	i1l1790
u268_20:
	line	19
	
i1l4323:	
;timer1c.c: 18: {
;timer1c.c: 19: if(count==115)
	movf	(_count),w
	xorlw	073h
	skipz
	goto	u269_21
	goto	u269_20
u269_21:
	goto	i1l4327
u269_20:
	line	21
	
i1l4325:	
;timer1c.c: 20: {
;timer1c.c: 21: count=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_count)
	goto	i1l4327
	line	22
	
i1l1792:	
	line	23
	
i1l4327:	
;timer1c.c: 22: }
;timer1c.c: 23: RB0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	goto	i1l1790
	line	24
	
i1l1791:	
	line	26
;timer1c.c: 24: }
;timer1c.c: 26: count=count++;
	
i1l1790:	
	movlw	(01h)
	movwf	(??_timer+0)+0
	movf	(??_timer+0)+0,w
	addwf	(_count),f
	line	27
	
i1l4329:	
;timer1c.c: 27: TMR1IF=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(96/8),(96)&7
	line	28
	
i1l4331:	
;timer1c.c: 28: TMR1IE=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1120/8)^080h,(1120)&7
	line	29
	
i1l4333:	
;timer1c.c: 29: TMR1H=0xfe;
	movlw	(0FEh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(15)	;volatile
	goto	i1l1793
	line	30
	
i1l1788:	
	line	31
	
i1l1793:	
	movf	(??_timer+7),w
	movwf	btemp+1
	movf	(??_timer+6),w
	movwf	pclath
	movf	(??_timer+5),w
	movwf	fsr0
	movf	(??_timer+4),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_timer
	__end_of_timer:
;; =============== function _timer ends ============

	signat	_timer,90
psect	text625,local,class=CODE,delta=2
global __ptext625
__ptext625:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
