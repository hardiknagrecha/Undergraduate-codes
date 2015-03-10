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
# 7 "F:\projects\PIC\PIC16\codes\ultrasoonicc\MAIN.c"
	psect config,class=CONFIG,delta=2 ;#
# 7 "F:\projects\PIC\PIC16\codes\ultrasoonicc\MAIN.c"
	dw 0x2F0A ;#
	FNCALL	_main,_LCDInitialize
	FNCALL	_main,_LCDWriteString
	FNCALL	_main,_LCDDisplayByte
	FNCALL	_main,_Delay
	FNCALL	_LCDInitialize,_LCDReset
	FNCALL	_LCDInitialize,_LCDWriteCommand
	FNCALL	_LCDReset,_LCDWriteCommand
	FNCALL	_LCDDisplayByte,_LCDWriteCommand
	FNCALL	_LCDDisplayByte,___awdiv
	FNCALL	_LCDDisplayByte,_LCDWriteData
	FNCALL	_LCDDisplayByte,___awmod
	FNCALL	_LCDWriteString,_LCDWriteData
	FNCALL	_LCDWriteData,_LCDWriteByte
	FNCALL	_LCDWriteCommand,_LCDWriteByte
	FNCALL	_LCDWriteByte,_LCDEnable
	FNCALL	_LCDWriteByte,_Delay
	FNCALL	_LCDEnable,_Delay
	FNROOT	_main
	FNCALL	intlevel1,_timer
	global	intlevel1
	FNROOT	intlevel1
	global	_TIME
	global	_TOTAL
	global	_flag1
	global	_PORTD
psect	text454,local,class=CODE,delta=2
global __ptext454
__ptext454:
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_T1CON
_T1CON	set	16
	global	_TMR0
_TMR0	set	1
	global	_TMR1H
_TMR1H	set	15
	global	_TMR1L
_TMR1L	set	14
	global	_TXREG
_TXREG	set	25
	global	_GIE
_GIE	set	95
	global	_RB0
_RB0	set	48
	global	_RC4
_RC4	set	60
	global	_RCIF
_RCIF	set	101
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_TMR0IE
_TMR0IE	set	93
	global	_TMR0IF
_TMR0IF	set	90
	global	_TMR1IF
_TMR1IF	set	96
	global	_TMR1ON
_TMR1ON	set	128
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TXSTA
_TXSTA	set	152
	global	_PS0
_PS0	set	1032
	global	_PS1
_PS1	set	1033
	global	_PS2
_PS2	set	1034
	global	_PSA
_PSA	set	1035
	global	_RBPU
_RBPU	set	1039
	global	_SYNC
_SYNC	set	1220
	global	_T0CS
_T0CS	set	1037
	global	_T0SE
_T0SE	set	1036
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
	
STR_2:	
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
	
STR_1:	
	retlw	68	;'D'
	retlw	73	;'I'
	retlw	83	;'S'
	retlw	84	;'T'
	retlw	65	;'A'
	retlw	78	;'N'
	retlw	67	;'C'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	file	"ultra.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_flag1:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_TIME:
       ds      2

_TOTAL:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_LCDInitialize
?_LCDInitialize:	; 0 bytes @ 0x0
	global	?_LCDWriteString
?_LCDWriteString:	; 0 bytes @ 0x0
	global	?_LCDWriteByte
?_LCDWriteByte:	; 0 bytes @ 0x0
	global	?_LCDReset
?_LCDReset:	; 0 bytes @ 0x0
	global	??_timer
??_timer:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_LCDEnable
?_LCDEnable:	; 0 bytes @ 0x0
	global	?_LCDWriteCommand
?_LCDWriteCommand:	; 0 bytes @ 0x0
	global	?_LCDWriteData
?_LCDWriteData:	; 0 bytes @ 0x0
	global	?_timer
?_timer:	; 2 bytes @ 0x0
	ds	4
	global	?_Delay
?_Delay:	; 0 bytes @ 0x4
	global	?___awmod
?___awmod:	; 2 bytes @ 0x4
	global	Delay@time
Delay@time:	; 2 bytes @ 0x4
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x4
	ds	2
	global	??_Delay
??_Delay:	; 0 bytes @ 0x6
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x6
	ds	1
	global	Delay@pause
Delay@pause:	; 1 bytes @ 0x7
	ds	1
	global	??_LCDWriteByte
??_LCDWriteByte:	; 0 bytes @ 0x8
	global	??_LCDEnable
??_LCDEnable:	; 0 bytes @ 0x8
	global	??___awmod
??___awmod:	; 0 bytes @ 0x8
	ds	1
	global	??_LCDReset
??_LCDReset:	; 0 bytes @ 0x9
	global	??_LCDWriteCommand
??_LCDWriteCommand:	; 0 bytes @ 0x9
	global	??_LCDWriteData
??_LCDWriteData:	; 0 bytes @ 0x9
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	LCDWriteByte@LCDData
LCDWriteByte@LCDData:	; 1 bytes @ 0x0
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x0
	ds	1
	global	LCDWriteCommand@LCDData
LCDWriteCommand@LCDData:	; 1 bytes @ 0x1
	global	LCDWriteData@LCDData
LCDWriteData@LCDData:	; 1 bytes @ 0x1
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x1
	ds	1
	global	??_LCDInitialize
??_LCDInitialize:	; 0 bytes @ 0x2
	global	??_LCDWriteString
??_LCDWriteString:	; 0 bytes @ 0x2
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x2
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x2
	ds	1
	global	LCDWriteString@lcd_string
LCDWriteString@lcd_string:	; 1 bytes @ 0x3
	ds	1
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x4
	ds	2
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x6
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x7
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x8
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x9
	ds	2
	global	?_LCDDisplayByte
?_LCDDisplayByte:	; 0 bytes @ 0xB
	global	LCDDisplayByte@Value
LCDDisplayByte@Value:	; 1 bytes @ 0xB
	ds	1
	global	??_LCDDisplayByte
??_LCDDisplayByte:	; 0 bytes @ 0xC
	ds	2
	global	LCDDisplayByte@LCDAdress
LCDDisplayByte@LCDAdress:	; 1 bytes @ 0xE
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xF
	ds	1
;;Data sizes: Strings 29, constant 0, data 0, bss 5, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9      10
;; BANK0           80     16      20
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; LCDWriteString@lcd_string	PTR const unsigned char  size(1) Largest target is 17
;;		 -> STR_2(CODE[17]), STR_1(CODE[12]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _LCDDisplayByte->___awmod
;;   _LCDWriteData->_LCDWriteByte
;;   _LCDWriteCommand->_LCDWriteByte
;;   _LCDWriteByte->_Delay
;;   _LCDEnable->_Delay
;;   ___awdiv->___awmod
;;
;; Critical Paths under _timer in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_LCDDisplayByte
;;   _LCDInitialize->_LCDWriteCommand
;;   _LCDReset->_LCDWriteCommand
;;   _LCDDisplayByte->___awdiv
;;   _LCDWriteString->_LCDWriteData
;;   _LCDWriteData->_LCDWriteByte
;;   _LCDWriteCommand->_LCDWriteByte
;;   ___awdiv->___awmod
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
;; (0) _main                                                 1     1      0    2267
;;                                             15 BANK0      1     1      0
;;                      _LCDInitialize
;;                     _LCDWriteString
;;                     _LCDDisplayByte
;;                              _Delay
;; ---------------------------------------------------------------------------------
;; (1) _LCDInitialize                                        1     1      0     458
;;                                              2 BANK0      1     1      0
;;                           _LCDReset
;;                    _LCDWriteCommand
;; ---------------------------------------------------------------------------------
;; (2) _LCDReset                                             0     0      0     229
;;                    _LCDWriteCommand
;; ---------------------------------------------------------------------------------
;; (1) _LCDDisplayByte                                       4     3      1    1447
;;                                             11 BANK0      4     3      1
;;                    _LCDWriteCommand
;;                            ___awdiv
;;                       _LCDWriteData
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (1) _LCDWriteString                                       2     2      0     294
;;                                              2 BANK0      2     2      0
;;                       _LCDWriteData
;; ---------------------------------------------------------------------------------
;; (2) _LCDWriteData                                         1     1      0     229
;;                                              1 BANK0      1     1      0
;;                       _LCDWriteByte
;; ---------------------------------------------------------------------------------
;; (2) _LCDWriteCommand                                      1     1      0     229
;;                                              1 BANK0      1     1      0
;;                       _LCDWriteByte
;; ---------------------------------------------------------------------------------
;; (3) _LCDWriteByte                                         2     2      0     198
;;                                              8 COMMON     1     1      0
;;                                              0 BANK0      1     1      0
;;                          _LCDEnable
;;                              _Delay
;; ---------------------------------------------------------------------------------
;; (4) _LCDEnable                                            0     0      0      68
;;                              _Delay
;; ---------------------------------------------------------------------------------
;; (2) ___awmod                                              7     3      4     296
;;                                              4 COMMON     5     1      4
;;                                              0 BANK0      2     2      0
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     445
;;                                              2 BANK0      9     5      4
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (1) _Delay                                                4     2      2      68
;;                                              4 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (7) _timer                                                4     4      0       0
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 7
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
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
;;   _LCDWriteString
;;     _LCDWriteData
;;       _LCDWriteByte
;;         _LCDEnable
;;           _Delay
;;         _Delay
;;   _LCDDisplayByte
;;     _LCDWriteCommand
;;       _LCDWriteByte
;;         _LCDEnable
;;           _Delay
;;         _Delay
;;     ___awdiv
;;       ___awmod (ARG)
;;     _LCDWriteData
;;       _LCDWriteByte
;;         _LCDEnable
;;           _Delay
;;         _Delay
;;     ___awmod
;;   _Delay
;;
;; _timer (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      9       A       1       71.4%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       6       2        0.0%
;;ABS                  0      0      1E       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     10      14       5       25.0%
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
;;		line 22 in file "F:\projects\PIC\PIC16\codes\ultrasoonicc\MAIN.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;;		_LCDInitialize
;;		_LCDWriteString
;;		_LCDDisplayByte
;;		_Delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\projects\PIC\PIC16\codes\ultrasoonicc\MAIN.c"
	line	22
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	23
	
l3761:	
;MAIN.c: 23: TRISB |= 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	24
	
l3763:	
;MAIN.c: 24: TRISC &= 0x00;
	clrf	(135)^080h	;volatile
	line	25
	
l3765:	
;MAIN.c: 25: LCDInitialize();
	fcall	_LCDInitialize
	line	27
	
l3767:	
;MAIN.c: 27: LCDWriteString("DISTANCE : ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_LCDWriteString
	goto	l3769
	line	29
;MAIN.c: 29: while(1)
	
l575:	
	line	32
	
l3769:	
;MAIN.c: 30: {
;MAIN.c: 32: RC4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(60/8),(60)&7
	line	33
	
l3771:	
;MAIN.c: 33: RBPU = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1039/8)^080h,(1039)&7
	line	34
	
l3773:	
;MAIN.c: 34: TOTAL =0;
	movlw	low(0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_TOTAL)
	movlw	high(0)
	movwf	((_TOTAL))+1
	line	35
	
l3775:	
;MAIN.c: 35: TIME =0;
	movlw	low(0)
	movwf	(_TIME)
	movlw	high(0)
	movwf	((_TIME))+1
	line	40
	
l3777:	
;MAIN.c: 40: TMR1H = 0xFF;
	movlw	(0FFh)
	movwf	(15)	;volatile
	line	41
	
l3779:	
;MAIN.c: 41: TMR1L = 0xF6;
	movlw	(0F6h)
	movwf	(14)	;volatile
	line	42
	
l3781:	
;MAIN.c: 42: T1CON = 0x20;
	movlw	(020h)
	movwf	(16)	;volatile
	line	43
	
l3783:	
;MAIN.c: 43: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	44
	
l3785:	
;MAIN.c: 44: RC4=1;
	bsf	(60/8),(60)&7
	line	45
	
l3787:	
;MAIN.c: 45: TMR1ON = 1;
	bsf	(128/8),(128)&7
	line	47
;MAIN.c: 47: while(!TMR1IF);
	goto	l576
	
l577:	
	
l576:	
	btfss	(96/8),(96)&7
	goto	u3011
	goto	u3010
u3011:
	goto	l576
u3010:
	
l578:	
	line	48
;MAIN.c: 48: RC4 = 0;
	bcf	(60/8),(60)&7
	line	51
;MAIN.c: 51: RBPU = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1039/8)^080h,(1039)&7
	line	52
;MAIN.c: 52: while(!RB0);
	goto	l579
	
l580:	
	
l579:	
	bcf	status, 5	;RP0=0, select bank0
	btfss	(48/8),(48)&7
	goto	u3021
	goto	u3020
u3021:
	goto	l579
u3020:
	goto	l3789
	
l581:	
	line	53
	
l3789:	
;MAIN.c: 53: TMR0=0;
	clrf	(1)	;volatile
	line	54
	
l3791:	
;MAIN.c: 54: T0CS = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1037/8)^080h,(1037)&7
	line	55
	
l3793:	
;MAIN.c: 55: T0SE=0 ;
	bcf	(1036/8)^080h,(1036)&7
	line	56
	
l3795:	
;MAIN.c: 56: PSA = 0;
	bcf	(1035/8)^080h,(1035)&7
	line	57
	
l3797:	
;MAIN.c: 57: PS2=PS1=PS0=1;
	bsf	(1032/8)^080h,(1032)&7
	btfsc	(1032/8)^080h,(1032)&7
	goto	u3031
	goto	u3030
	
u3031:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1033/8)^080h,(1033)&7
	goto	u3044
u3030:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1033/8)^080h,(1033)&7
u3044:
	btfsc	(1033/8)^080h,(1033)&7
	goto	u3041
	goto	u3040
	
u3041:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1034/8)^080h,(1034)&7
	goto	u3054
u3040:
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1034/8)^080h,(1034)&7
u3054:
	line	58
	
l3799:	
;MAIN.c: 58: GIE = 1;
	bsf	(95/8),(95)&7
	line	59
	
l3801:	
;MAIN.c: 59: TMR0IE= 1;
	bsf	(93/8),(93)&7
	line	61
;MAIN.c: 61: while(RB0);
	goto	l582
	
l583:	
	
l582:	
	bcf	status, 5	;RP0=0, select bank0
	btfsc	(48/8),(48)&7
	goto	u3061
	goto	u3060
u3061:
	goto	l582
u3060:
	
l584:	
	line	62
;MAIN.c: 62: T0CS=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1037/8)^080h,(1037)&7
	line	63
;MAIN.c: 63: GIE = 0;
	bcf	(95/8),(95)&7
	line	64
	
l3803:	
;MAIN.c: 64: TOTAL = TIME+TMR0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1),w	;volatile
	addwf	(_TIME),w
	movwf	(_TOTAL)
	movf	(_TIME+1),w
	skipnc
	incf	(_TIME+1),w
	movwf	((_TOTAL))+1
	line	65
;MAIN.c: 65: if(TOTAL<=256)
	movlw	high(0101h)
	subwf	(_TOTAL+1),w
	movlw	low(0101h)
	skipnz
	subwf	(_TOTAL),w
	skipnc
	goto	u3071
	goto	u3070
u3071:
	goto	l3807
u3070:
	line	66
	
l3805:	
;MAIN.c: 66: {LCDDisplayByte(0x8B,TOTAL);}
	movf	(_TOTAL),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_LCDDisplayByte)
	movlw	(08Bh)
	fcall	_LCDDisplayByte
	goto	l586
	line	67
	
l585:	
	line	68
	
l3807:	
;MAIN.c: 67: else
;MAIN.c: 68: {LCDDisplayByte(0x8B,256);}
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?_LCDDisplayByte)
	movlw	(08Bh)
	fcall	_LCDDisplayByte
	
l586:	
	line	70
;MAIN.c: 70: Delay(200);
	movlw	low(0C8h)
	movwf	(?_Delay)
	movlw	high(0C8h)
	movwf	((?_Delay))+1
	fcall	_Delay
	goto	l3769
	line	71
	
l587:	
	line	29
	goto	l3769
	
l588:	
	line	73
	
l589:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_LCDInitialize
psect	text455,local,class=CODE,delta=2
global __ptext455
__ptext455:

;; *************** function _LCDInitialize *****************
;; Defined at:
;;		line 32 in file "F:\projects\PIC\PIC16\codes\ultrasoonicc\LCD.c"
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
psect	text455
	file	"F:\projects\PIC\PIC16\codes\ultrasoonicc\LCD.c"
	line	32
	global	__size_of_LCDInitialize
	__size_of_LCDInitialize	equ	__end_of_LCDInitialize-_LCDInitialize
	
_LCDInitialize:	
	opt	stack 1
; Regs used in _LCDInitialize: [wreg+status,2+status,0+pclath+cstack]
	line	33
	
l3743:	
;LCD.c: 33: TRISD = TRISD & 0x03;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(136)^080h,w
	andlw	03h
	movwf	(136)^080h	;volatile
	line	34
	
l3745:	
;LCD.c: 34: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	35
	
l3747:	
;LCD.c: 35: RD2 = 0;
	bcf	(66/8),(66)&7
	line	36
	
l3749:	
;LCD.c: 36: PORTD &= 0x0f;
	movlw	(0Fh)
	movwf	(??_LCDInitialize+0)+0
	movf	(??_LCDInitialize+0)+0,w
	andwf	(8),f	;volatile
	line	37
	
l3751:	
;LCD.c: 37: LCDReset();
	fcall	_LCDReset
	line	38
	
l3753:	
;LCD.c: 38: LCDWriteCommand(0x28);
	movlw	(028h)
	fcall	_LCDWriteCommand
	line	39
	
l3755:	
;LCD.c: 39: LCDWriteCommand(0x0C);
	movlw	(0Ch)
	fcall	_LCDWriteCommand
	line	40
	
l3757:	
;LCD.c: 40: LCDWriteCommand(0x06);
	movlw	(06h)
	fcall	_LCDWriteCommand
	line	41
	
l3759:	
;LCD.c: 41: LCDWriteCommand(0x01);
	movlw	(01h)
	fcall	_LCDWriteCommand
	line	43
	
l1748:	
	return
	opt stack 0
GLOBAL	__end_of_LCDInitialize
	__end_of_LCDInitialize:
;; =============== function _LCDInitialize ends ============

	signat	_LCDInitialize,88
	global	_LCDReset
psect	text456,local,class=CODE,delta=2
global __ptext456
__ptext456:

;; *************** function _LCDReset *****************
;; Defined at:
;;		line 45 in file "F:\projects\PIC\PIC16\codes\ultrasoonicc\LCD.c"
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
psect	text456
	file	"F:\projects\PIC\PIC16\codes\ultrasoonicc\LCD.c"
	line	45
	global	__size_of_LCDReset
	__size_of_LCDReset	equ	__end_of_LCDReset-_LCDReset
	
_LCDReset:	
	opt	stack 1
; Regs used in _LCDReset: [wreg+status,2+status,0+pclath+cstack]
	line	46
	
l3741:	
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
	
l1751:	
	return
	opt stack 0
GLOBAL	__end_of_LCDReset
	__end_of_LCDReset:
;; =============== function _LCDReset ends ============

	signat	_LCDReset,88
	global	_LCDDisplayByte
psect	text457,local,class=CODE,delta=2
global __ptext457
__ptext457:

;; *************** function _LCDDisplayByte *****************
;; Defined at:
;;		line 72 in file "F:\projects\PIC\PIC16\codes\ultrasoonicc\LCD.c"
;; Parameters:    Size  Location     Type
;;  LCDAdress       1    wreg     unsigned char 
;;  Value           1   11[BANK0 ] unsigned char 
;; Auto vars:     Size  Location     Type
;;  LCDAdress       1   14[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       1       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCDWriteCommand
;;		___awdiv
;;		_LCDWriteData
;;		___awmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text457
	file	"F:\projects\PIC\PIC16\codes\ultrasoonicc\LCD.c"
	line	72
	global	__size_of_LCDDisplayByte
	__size_of_LCDDisplayByte	equ	__end_of_LCDDisplayByte-_LCDDisplayByte
	
_LCDDisplayByte:	
	opt	stack 2
; Regs used in _LCDDisplayByte: [wreg+status,2+status,0+pclath+cstack]
;LCDDisplayByte@LCDAdress stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCDDisplayByte@LCDAdress)
	line	73
	
l3727:	
;LCD.c: 73: LCDWriteCommand(LCDAdress);
	movf	(LCDDisplayByte@LCDAdress),w
	fcall	_LCDWriteCommand
	line	74
;LCD.c: 74: if(( Value / 100 ) == 0)
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(LCDDisplayByte@Value),w
	movwf	(??_LCDDisplayByte+0)+0
	clrf	(??_LCDDisplayByte+0)+0+1
	movf	0+(??_LCDDisplayByte+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_LCDDisplayByte+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((1+(?___awdiv))),w
	iorwf	((0+(?___awdiv))),w
	skipz
	goto	u2981
	goto	u2980
u2981:
	goto	l3731
u2980:
	line	75
	
l3729:	
;LCD.c: 75: LCDWriteData(0x20);
	movlw	(020h)
	fcall	_LCDWriteData
	goto	l1763
	line	76
	
l1762:	
	line	77
	
l3731:	
;LCD.c: 76: else
;LCD.c: 77: LCDWriteData((Value / 100) | 0x30);
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(LCDDisplayByte@Value),w
	movwf	(??_LCDDisplayByte+0)+0
	clrf	(??_LCDDisplayByte+0)+0+1
	movf	0+(??_LCDDisplayByte+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_LCDDisplayByte+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	iorlw	030h
	fcall	_LCDWriteData
	
l1763:	
	line	79
;LCD.c: 79: if(((Value % 100) / 10) == 0)
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(LCDDisplayByte@Value),w
	movwf	(??_LCDDisplayByte+0)+0
	clrf	(??_LCDDisplayByte+0)+0+1
	movf	0+(??_LCDDisplayByte+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_LCDDisplayByte+0)+0,w
	movwf	1+(?___awmod)+02h
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((1+(?___awdiv))),w
	iorwf	((0+(?___awdiv))),w
	skipz
	goto	u2991
	goto	u2990
u2991:
	goto	l3739
u2990:
	line	80
	
l3733:	
;LCD.c: 80: if(( Value / 100 ) == 0)
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(LCDDisplayByte@Value),w
	movwf	(??_LCDDisplayByte+0)+0
	clrf	(??_LCDDisplayByte+0)+0+1
	movf	0+(??_LCDDisplayByte+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_LCDDisplayByte+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((1+(?___awdiv))),w
	iorwf	((0+(?___awdiv))),w
	skipz
	goto	u3001
	goto	u3000
u3001:
	goto	l3737
u3000:
	line	81
	
l3735:	
;LCD.c: 81: LCDWriteData(0x20);
	movlw	(020h)
	fcall	_LCDWriteData
	goto	l1767
	line	82
	
l1765:	
	line	83
	
l3737:	
;LCD.c: 82: else
;LCD.c: 83: LCDWriteData(((Value % 100) / 10) | 0x30);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(LCDDisplayByte@Value),w
	movwf	(??_LCDDisplayByte+0)+0
	clrf	(??_LCDDisplayByte+0)+0+1
	movf	0+(??_LCDDisplayByte+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_LCDDisplayByte+0)+0,w
	movwf	1+(?___awmod)+02h
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	iorlw	030h
	fcall	_LCDWriteData
	goto	l1767
	
l1766:	
	goto	l1767
	line	84
	
l1764:	
	line	85
	
l3739:	
;LCD.c: 84: else
;LCD.c: 85: LCDWriteData(((Value % 100) / 10) | 0x30);
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(LCDDisplayByte@Value),w
	movwf	(??_LCDDisplayByte+0)+0
	clrf	(??_LCDDisplayByte+0)+0+1
	movf	0+(??_LCDDisplayByte+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_LCDDisplayByte+0)+0,w
	movwf	1+(?___awmod)+02h
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___awdiv)),w
	iorlw	030h
	fcall	_LCDWriteData
	
l1767:	
	line	87
;LCD.c: 87: LCDWriteData((Value % 10) | 0x30);
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDDisplayByte@Value),w
	movwf	(??_LCDDisplayByte+0)+0
	clrf	(??_LCDDisplayByte+0)+0+1
	movf	0+(??_LCDDisplayByte+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_LCDDisplayByte+0)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	iorlw	030h
	fcall	_LCDWriteData
	line	88
	
l1768:	
	return
	opt stack 0
GLOBAL	__end_of_LCDDisplayByte
	__end_of_LCDDisplayByte:
;; =============== function _LCDDisplayByte ends ============

	signat	_LCDDisplayByte,8312
	global	_LCDWriteString
psect	text458,local,class=CODE,delta=2
global __ptext458
__ptext458:

;; *************** function _LCDWriteString *****************
;; Defined at:
;;		line 24 in file "F:\projects\PIC\PIC16\codes\ultrasoonicc\LCD.c"
;; Parameters:    Size  Location     Type
;;  lcd_string      1    wreg     PTR const unsigned char 
;;		 -> STR_2(17), STR_1(12), 
;; Auto vars:     Size  Location     Type
;;  lcd_string      1    3[BANK0 ] PTR const unsigned char 
;;		 -> STR_2(17), STR_1(12), 
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
;;		_main
;;		_LCDDisplayInitializing
;; This function uses a non-reentrant model
;;
psect	text458
	file	"F:\projects\PIC\PIC16\codes\ultrasoonicc\LCD.c"
	line	24
	global	__size_of_LCDWriteString
	__size_of_LCDWriteString	equ	__end_of_LCDWriteString-_LCDWriteString
	
_LCDWriteString:	
	opt	stack 2
; Regs used in _LCDWriteString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;LCDWriteString@lcd_string stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCDWriteString@lcd_string)
	line	25
	
l3719:	
;LCD.c: 25: while(*lcd_string)
	goto	l3725
	
l1743:	
	line	27
	
l3721:	
;LCD.c: 26: {
;LCD.c: 27: LCDWriteData(*lcd_string++);
	movf	(LCDWriteString@lcd_string),w
	movwf	fsr0
	fcall	stringdir
	fcall	_LCDWriteData
	
l3723:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_LCDWriteString+0)+0
	movf	(??_LCDWriteString+0)+0,w
	addwf	(LCDWriteString@lcd_string),f
	goto	l3725
	line	28
	
l1742:	
	line	25
	
l3725:	
	movf	(LCDWriteString@lcd_string),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2971
	goto	u2970
u2971:
	goto	l3721
u2970:
	goto	l1745
	
l1744:	
	line	29
	
l1745:	
	return
	opt stack 0
GLOBAL	__end_of_LCDWriteString
	__end_of_LCDWriteString:
;; =============== function _LCDWriteString ends ============

	signat	_LCDWriteString,4216
	global	_LCDWriteData
psect	text459,local,class=CODE,delta=2
global __ptext459
__ptext459:

;; *************** function _LCDWriteData *****************
;; Defined at:
;;		line 18 in file "F:\projects\PIC\PIC16\codes\ultrasoonicc\LCD.c"
;; Parameters:    Size  Location     Type
;;  LCDData         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  LCDData         1    1[BANK0 ] unsigned char 
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
;;		_LCDDisplayByte
;;		_LCDDisplayInitializing
;;		_LCDWriteInteger
;; This function uses a non-reentrant model
;;
psect	text459
	file	"F:\projects\PIC\PIC16\codes\ultrasoonicc\LCD.c"
	line	18
	global	__size_of_LCDWriteData
	__size_of_LCDWriteData	equ	__end_of_LCDWriteData-_LCDWriteData
	
_LCDWriteData:	
	opt	stack 2
; Regs used in _LCDWriteData: [wreg+status,2+status,0+pclath+cstack]
;LCDWriteData@LCDData stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCDWriteData@LCDData)
	line	19
	
l3715:	
;LCD.c: 19: RD2 = 1;
	bsf	(66/8),(66)&7
	line	20
	
l3717:	
;LCD.c: 20: LCDWriteByte(LCDData);
	movf	(LCDWriteData@LCDData),w
	fcall	_LCDWriteByte
	line	21
	
l1739:	
	return
	opt stack 0
GLOBAL	__end_of_LCDWriteData
	__end_of_LCDWriteData:
;; =============== function _LCDWriteData ends ============

	signat	_LCDWriteData,4216
	global	_LCDWriteCommand
psect	text460,local,class=CODE,delta=2
global __ptext460
__ptext460:

;; *************** function _LCDWriteCommand *****************
;; Defined at:
;;		line 12 in file "F:\projects\PIC\PIC16\codes\ultrasoonicc\LCD.c"
;; Parameters:    Size  Location     Type
;;  LCDData         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  LCDData         1    1[BANK0 ] unsigned char 
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
;;		_LCDDisplayByte
;;		_LCDDisplayInitializing
;;		_LCDWriteInteger
;; This function uses a non-reentrant model
;;
psect	text460
	file	"F:\projects\PIC\PIC16\codes\ultrasoonicc\LCD.c"
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
	
l3711:	
;LCD.c: 13: RD2 = 0;
	bcf	(66/8),(66)&7
	line	14
	
l3713:	
;LCD.c: 14: LCDWriteByte(LCDData);
	movf	(LCDWriteCommand@LCDData),w
	fcall	_LCDWriteByte
	line	15
	
l1736:	
	return
	opt stack 0
GLOBAL	__end_of_LCDWriteCommand
	__end_of_LCDWriteCommand:
;; =============== function _LCDWriteCommand ends ============

	signat	_LCDWriteCommand,4216
	global	_LCDWriteByte
psect	text461,local,class=CODE,delta=2
global __ptext461
__ptext461:

;; *************** function _LCDWriteByte *****************
;; Defined at:
;;		line 64 in file "F:\projects\PIC\PIC16\codes\ultrasoonicc\LCD.c"
;; Parameters:    Size  Location     Type
;;  LCDData         1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  LCDData         1    0[BANK0 ] unsigned char 
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       1       0       0       0
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
psect	text461
	file	"F:\projects\PIC\PIC16\codes\ultrasoonicc\LCD.c"
	line	64
	global	__size_of_LCDWriteByte
	__size_of_LCDWriteByte	equ	__end_of_LCDWriteByte-_LCDWriteByte
	
_LCDWriteByte:	
	opt	stack 2
; Regs used in _LCDWriteByte: [wreg+status,2+status,0+pclath+cstack]
;LCDWriteByte@LCDData stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(LCDWriteByte@LCDData)
	line	65
	
l3705:	
;LCD.c: 65: PORTD = (PORTD & 0x0F)|(LCDData & 0xF0);
	movlw	(0F0h)
	andwf	(LCDWriteByte@LCDData),w
	movwf	(??_LCDWriteByte+0)+0
	movf	(8),w
	andlw	0Fh
	iorwf	0+(??_LCDWriteByte+0)+0,w
	movwf	(8)	;volatile
	line	66
	
l3707:	
;LCD.c: 66: LCDEnable();
	fcall	_LCDEnable
	line	67
	
l3709:	
;LCD.c: 67: PORTD = (PORTD & 0x0F)|(LCDData << 4);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(LCDWriteByte@LCDData),w
	movwf	(??_LCDWriteByte+0)+0
	movlw	04h
u2965:
	clrc
	rlf	(??_LCDWriteByte+0)+0,f
	addlw	-1
	skipz
	goto	u2965
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
	
l1759:	
	return
	opt stack 0
GLOBAL	__end_of_LCDWriteByte
	__end_of_LCDWriteByte:
;; =============== function _LCDWriteByte ends ============

	signat	_LCDWriteByte,4216
	global	_LCDEnable
psect	text462,local,class=CODE,delta=2
global __ptext462
__ptext462:

;; *************** function _LCDEnable *****************
;; Defined at:
;;		line 5 in file "F:\projects\PIC\PIC16\codes\ultrasoonicc\LCD.c"
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
psect	text462
	file	"F:\projects\PIC\PIC16\codes\ultrasoonicc\LCD.c"
	line	5
	global	__size_of_LCDEnable
	__size_of_LCDEnable	equ	__end_of_LCDEnable-_LCDEnable
	
_LCDEnable:	
	opt	stack 2
; Regs used in _LCDEnable: [wreg+status,2+status,0+pclath+cstack]
	line	6
	
l3699:	
;LCD.c: 6: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	7
	
l3701:	
;LCD.c: 7: Delay(10);
	movlw	low(0Ah)
	movwf	(?_Delay)
	movlw	high(0Ah)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	8
	
l3703:	
;LCD.c: 8: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	9
	
l1733:	
	return
	opt stack 0
GLOBAL	__end_of_LCDEnable
	__end_of_LCDEnable:
;; =============== function _LCDEnable ends ============

	signat	_LCDEnable,88
	global	___awmod
psect	text463,local,class=CODE,delta=2
global __ptext463
__ptext463:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    4[COMMON] int 
;;  dividend        2    6[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    4[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       2       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_LCDDisplayByte
;;		_LCDWriteInteger
;; This function uses a non-reentrant model
;;
psect	text463
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 5
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l3437:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awmod@sign)
	line	9
	
l3439:	
	btfss	(___awmod@dividend+1),7
	goto	u2571
	goto	u2570
u2571:
	goto	l3443
u2570:
	line	10
	
l3441:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l3443
	line	12
	
l2005:	
	line	13
	
l3443:	
	btfss	(___awmod@divisor+1),7
	goto	u2581
	goto	u2580
u2581:
	goto	l3447
u2580:
	line	14
	
l3445:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l3447
	
l2006:	
	line	15
	
l3447:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2591
	goto	u2590
u2591:
	goto	l3465
u2590:
	line	16
	
l3449:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l3455
	
l2009:	
	line	18
	
l3451:	
	movlw	01h
	
u2605:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2605
	line	19
	
l3453:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l3455
	line	20
	
l2008:	
	line	17
	
l3455:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2611
	goto	u2610
u2611:
	goto	l3451
u2610:
	goto	l3457
	
l2010:	
	goto	l3457
	line	21
	
l2011:	
	line	22
	
l3457:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2625
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2625:
	skipc
	goto	u2621
	goto	u2620
u2621:
	goto	l3461
u2620:
	line	23
	
l3459:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l3461
	
l2012:	
	line	24
	
l3461:	
	movlw	01h
	
u2635:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2635
	line	25
	
l3463:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2641
	goto	u2640
u2641:
	goto	l3457
u2640:
	goto	l3465
	
l2013:	
	goto	l3465
	line	26
	
l2007:	
	line	27
	
l3465:	
	movf	(___awmod@sign),w
	skipz
	goto	u2650
	goto	l3469
u2650:
	line	28
	
l3467:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l3469
	
l2014:	
	line	29
	
l3469:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l2015
	
l3471:	
	line	30
	
l2015:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text464,local,class=CODE,delta=2
global __ptext464
__ptext464:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[BANK0 ] int 
;;  dividend        2    4[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    9[BANK0 ] int 
;;  sign            1    8[BANK0 ] unsigned char 
;;  counter         1    7[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[BANK0 ] int 
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
;;		_LCDDisplayByte
;;		_LCDWriteInteger
;; This function uses a non-reentrant model
;;
psect	text464
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 5
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3661:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@sign)
	line	10
	
l3663:	
	btfss	(___awdiv@divisor+1),7
	goto	u2861
	goto	u2860
u2861:
	goto	l3667
u2860:
	line	11
	
l3665:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l3667
	line	13
	
l1937:	
	line	14
	
l3667:	
	btfss	(___awdiv@dividend+1),7
	goto	u2871
	goto	u2870
u2871:
	goto	l1938
u2870:
	line	15
	
l3669:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3671:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l1938:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2881
	goto	u2880
u2881:
	goto	l3691
u2880:
	line	20
	
l3673:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l3679
	
l1941:	
	line	22
	
l3675:	
	movlw	01h
	
u2895:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2895
	line	23
	
l3677:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3679
	line	24
	
l1940:	
	line	21
	
l3679:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2901
	goto	u2900
u2901:
	goto	l3675
u2900:
	goto	l3681
	
l1942:	
	goto	l3681
	line	25
	
l1943:	
	line	26
	
l3681:	
	movlw	01h
	
u2915:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2915
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2925
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2925:
	skipc
	goto	u2921
	goto	u2920
u2921:
	goto	l3687
u2920:
	line	28
	
l3683:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3685:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3687
	line	30
	
l1944:	
	line	31
	
l3687:	
	movlw	01h
	
u2935:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2935
	line	32
	
l3689:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2941
	goto	u2940
u2941:
	goto	l3681
u2940:
	goto	l3691
	
l1945:	
	goto	l3691
	line	33
	
l1939:	
	line	34
	
l3691:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2950
	goto	l3695
u2950:
	line	35
	
l3693:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3695
	
l1946:	
	line	36
	
l3695:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1947
	
l3697:	
	line	37
	
l1947:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_Delay
psect	text465,local,class=CODE,delta=2
global __ptext465
__ptext465:

;; *************** function _Delay *****************
;; Defined at:
;;		line 4 in file "F:\projects\PIC\PIC16\codes\ultrasoonicc\delay.c"
;; Parameters:    Size  Location     Type
;;  time            2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  pause           1    7[COMMON] unsigned char 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;;		_LCDEnable
;;		_LCDWriteByte
;;		_LCDDisplayInitializing
;; This function uses a non-reentrant model
;;
psect	text465
	file	"F:\projects\PIC\PIC16\codes\ultrasoonicc\delay.c"
	line	4
	global	__size_of_Delay
	__size_of_Delay	equ	__end_of_Delay-_Delay
	
_Delay:	
	opt	stack 6
; Regs used in _Delay: [wreg+status,2+status,0]
	line	6
	
l3607:	
;delay.c: 5: unsigned char pause;
;delay.c: 6: while( time > 0)
	goto	l3615
	
l1783:	
	line	8
	
l3609:	
;delay.c: 7: {
;delay.c: 8: pause = 255;
	movlw	(0FFh)
	movwf	(??_Delay+0)+0
	movf	(??_Delay+0)+0,w
	movwf	(Delay@pause)
	line	9
;delay.c: 9: while(pause--);
	goto	l3611
	
l1785:	
	goto	l3611
	
l1784:	
	
l3611:	
	movlw	low(01h)
	subwf	(Delay@pause),f
	movf	((Delay@pause)),w
	xorlw	0FFh
	skipz
	goto	u2781
	goto	u2780
u2781:
	goto	l3611
u2780:
	goto	l3613
	
l1786:	
	line	10
	
l3613:	
;delay.c: 10: time--;
	movlw	low(01h)
	subwf	(Delay@time),f
	movlw	high(01h)
	skipc
	decf	(Delay@time+1),f
	subwf	(Delay@time+1),f
	goto	l3615
	line	11
	
l1782:	
	line	6
	
l3615:	
	movf	((Delay@time+1)),w
	iorwf	((Delay@time)),w
	skipz
	goto	u2791
	goto	u2790
u2791:
	goto	l3609
u2790:
	goto	l1788
	
l1787:	
	line	12
	
l1788:	
	return
	opt stack 0
GLOBAL	__end_of_Delay
	__end_of_Delay:
;; =============== function _Delay ends ============

	signat	_Delay,4216
	global	_timer
psect	text466,local,class=CODE,delta=2
global __ptext466
__ptext466:

;; *************** function _timer *****************
;; Defined at:
;;		line 12 in file "F:\projects\PIC\PIC16\codes\ultrasoonicc\MAIN.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  570[COMMON] int 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text466
	file	"F:\projects\PIC\PIC16\codes\ultrasoonicc\MAIN.c"
	global	__size_of_timer
	__size_of_timer	equ	__end_of_timer-_timer
	
_timer:	
	opt	stack 1
; Regs used in _timer: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	movf	status,w
	movwf	(??_timer+0)
	movf	fsr0,w
	movwf	(??_timer+1)
	movf	pclath,w
	movwf	(??_timer+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_timer+3)
	ljmp	_timer
psect	text466
	line	13
	
i1l3337:	
;MAIN.c: 13: if(TMR0IF == 1)
	btfss	(90/8),(90)&7
	goto	u238_21
	goto	u238_20
u238_21:
	goto	i1l3341
u238_20:
	line	15
	
i1l3339:	
;MAIN.c: 14: {
;MAIN.c: 15: TIME += 256;
	movlw	low(0100h)
	addwf	(_TIME),f
	skipnc
	incf	(_TIME+1),f
	movlw	high(0100h)
	addwf	(_TIME+1),f
	goto	i1l3341
	line	16
	
i1l571:	
	line	17
	
i1l3341:	
;MAIN.c: 16: }
;MAIN.c: 17: TMR0IF=0;
	bcf	(90/8),(90)&7
	line	18
	
i1l3343:	
;MAIN.c: 18: TMR0IE=1;
	bsf	(93/8),(93)&7
	line	19
	
i1l572:	
	movf	(??_timer+3),w
	movwf	btemp+1
	movf	(??_timer+2),w
	movwf	pclath
	movf	(??_timer+1),w
	movwf	fsr0
	movf	(??_timer+0),w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_timer
	__end_of_timer:
;; =============== function _timer ends ============

	signat	_timer,90
psect	text467,local,class=CODE,delta=2
global __ptext467
__ptext467:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
