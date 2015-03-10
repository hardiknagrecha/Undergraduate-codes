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
# 14 "F:\projects\PIC\PIC16\projects PIC\LCD\main.h"
	psect config,class=CONFIG,delta=2 ;#
# 14 "F:\projects\PIC\PIC16\projects PIC\LCD\main.h"
	dw 0x2F0A ;#
	FNCALL	_main,_MainSystemInitialize
	FNCALL	_main,_value
	FNCALL	_main,_Delay
	FNCALL	_main,_numbersdisplay
	FNCALL	_MainSystemInitialize,_LCDInitialize
	FNCALL	_value,_LCDWriteCommand
	FNCALL	_value,_LCDWriteString
	FNCALL	_LCDInitialize,_LCDReset
	FNCALL	_LCDInitialize,_LCDWriteCommand
	FNCALL	_numbersdisplay,_LCDWriteCommand
	FNCALL	_numbersdisplay,_LCDWriteData
	FNCALL	_numbersdisplay,_Delay
	FNCALL	_LCDReset,_LCDWriteCommand
	FNCALL	_LCDWriteString,_LCDWriteData
	FNCALL	_LCDWriteData,_LCDWriteByte
	FNCALL	_LCDWriteCommand,_LCDWriteByte
	FNCALL	_LCDWriteByte,_LCDEnable
	FNCALL	_LCDWriteByte,_Delay
	FNCALL	_LCDEnable,_Delay
	FNROOT	_main
	global	_k
	global	_i
	global	_j
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"F:\projects\PIC\PIC16\projects PIC\LCD\main.c"
	line	3

;initializer for _k
	retlw	030h
	retlw	0


;initializer for _i
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	retlw	030h
	retlw	0


;initializer for _j
	retlw	030h
	retlw	0

	global	_PORTD
_PORTD	set	8
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_TRISD
_TRISD	set	136
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
	retlw	78	;'N'
	retlw	85	;'U'
	retlw	77	;'M'
	retlw	66	;'B'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	83	;'S'
	retlw	32	;' '
	retlw	70	;'F'
	retlw	82	;'R'
	retlw	79	;'O'
	retlw	77	;'M'
	retlw	0
psect	strings
	
STR_3:	
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	48	;'0'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	79	;'O'
	retlw	32	;' '
	retlw	57	;'9'
	retlw	57	;'9'
	retlw	57	;'9'
	retlw	0
psect	strings
	file	"display.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"F:\projects\PIC\PIC16\projects PIC\LCD\main.c"
_i:
       ds      2

psect	dataCOMMON
	file	"F:\projects\PIC\PIC16\projects PIC\LCD\main.c"
_j:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"F:\projects\PIC\PIC16\projects PIC\LCD\main.c"
_k:
       ds      2

; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
	fcall	__pidataCOMMON+1		;fetch initializer
	movwf	__pdataCOMMON+1&07fh		
	fcall	__pidataCOMMON+2		;fetch initializer
	movwf	__pdataCOMMON+2&07fh		
	fcall	__pidataCOMMON+3		;fetch initializer
	movwf	__pdataCOMMON+3&07fh		
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
	global	?_value
?_value:	; 0 bytes @ 0x0
	global	?_numbersdisplay
?_numbersdisplay:	; 0 bytes @ 0x0
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
	global	Delay@time
Delay@time:	; 2 bytes @ 0x0
	ds	2
	global	??_Delay
??_Delay:	; 0 bytes @ 0x2
	ds	1
	global	Delay@pause
Delay@pause:	; 1 bytes @ 0x3
	ds	1
	global	??_LCDWriteByte
??_LCDWriteByte:	; 0 bytes @ 0x4
	global	??_LCDEnable
??_LCDEnable:	; 0 bytes @ 0x4
	ds	1
	global	LCDWriteByte@LCDData
LCDWriteByte@LCDData:	; 1 bytes @ 0x5
	ds	1
	global	??_LCDWriteCommand
??_LCDWriteCommand:	; 0 bytes @ 0x6
	global	??_LCDWriteData
??_LCDWriteData:	; 0 bytes @ 0x6
	global	LCDWriteCommand@LCDData
LCDWriteCommand@LCDData:	; 1 bytes @ 0x6
	global	LCDWriteData@LCDData
LCDWriteData@LCDData:	; 1 bytes @ 0x6
	ds	1
	global	??_LCDReset
??_LCDReset:	; 0 bytes @ 0x7
	global	??_numbersdisplay
??_numbersdisplay:	; 0 bytes @ 0x7
	global	??_LCDWriteString
??_LCDWriteString:	; 0 bytes @ 0x7
	global	??_LCDInitialize
??_LCDInitialize:	; 0 bytes @ 0x7
	ds	1
	global	??_MainSystemInitialize
??_MainSystemInitialize:	; 0 bytes @ 0x8
	global	LCDWriteString@lcd_string
LCDWriteString@lcd_string:	; 1 bytes @ 0x8
	ds	1
	global	??_value
??_value:	; 0 bytes @ 0x9
	global	??_main
??_main:	; 0 bytes @ 0x9
;;Data sizes: Strings 41, constant 0, data 6, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9      13
;; BANK0           80      0       2
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; LCDWriteString@lcd_string	PTR const unsigned char  size(1) Largest target is 17
;;		 -> STR_3(CODE[11]), STR_2(CODE[13]), STR_1(CODE[17]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _MainSystemInitialize->_LCDInitialize
;;   _value->_LCDWriteString
;;   _LCDInitialize->_LCDWriteCommand
;;   _numbersdisplay->_LCDWriteCommand
;;   _numbersdisplay->_LCDWriteData
;;   _LCDReset->_LCDWriteCommand
;;   _LCDWriteString->_LCDWriteData
;;   _LCDWriteData->_LCDWriteByte
;;   _LCDWriteCommand->_LCDWriteByte
;;   _LCDWriteByte->_Delay
;;   _LCDEnable->_Delay
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0    1085
;;               _MainSystemInitialize
;;                              _value
;;                              _Delay
;;                     _numbersdisplay
;; ---------------------------------------------------------------------------------
;; (1) _MainSystemInitialize                                 0     0      0     316
;;                      _LCDInitialize
;; ---------------------------------------------------------------------------------
;; (1) _value                                                0     0      0     361
;;                    _LCDWriteCommand
;;                     _LCDWriteString
;; ---------------------------------------------------------------------------------
;; (2) _LCDInitialize                                        1     1      0     316
;;                                              7 COMMON     1     1      0
;;                           _LCDReset
;;                    _LCDWriteCommand
;; ---------------------------------------------------------------------------------
;; (1) _numbersdisplay                                       0     0      0     362
;;                    _LCDWriteCommand
;;                       _LCDWriteData
;;                              _Delay
;; ---------------------------------------------------------------------------------
;; (3) _LCDReset                                             0     0      0     158
;;                    _LCDWriteCommand
;; ---------------------------------------------------------------------------------
;; (2) _LCDWriteString                                       2     2      0     203
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
;; (3) _LCDWriteByte                                         2     2      0     136
;;                                              4 COMMON     2     2      0
;;                          _LCDEnable
;;                              _Delay
;; ---------------------------------------------------------------------------------
;; (4) _LCDEnable                                            0     0      0      46
;;                              _Delay
;; ---------------------------------------------------------------------------------
;; (2) _Delay                                                4     2      2      46
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _MainSystemInitialize
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
;;   _value
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
;;   _Delay
;;   _numbersdisplay
;;     _LCDWriteCommand
;;       _LCDWriteByte
;;         _LCDEnable
;;           _Delay
;;         _Delay
;;     _LCDWriteData
;;       _LCDWriteByte
;;         _LCDEnable
;;           _Delay
;;         _Delay
;;     _Delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      16      12        0.0%
;;ABS                  0      0       F       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       7       2        0.0%
;;BANK0               50      0       2       5        2.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      9       D       1       92.9%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 6 in file "F:\projects\PIC\PIC16\projects PIC\LCD\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Count           1    0        unsigned char 
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    7
;; This function calls:
;;		_MainSystemInitialize
;;		_value
;;		_Delay
;;		_numbersdisplay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\projects\PIC\PIC16\projects PIC\LCD\main.c"
	line	6
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 1
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	9
	
l2765:	
;main.c: 8: unsigned char Count;
;main.c: 9: MainSystemInitialize();
	fcall	_MainSystemInitialize
	line	10
	
l2767:	
;main.c: 10: value();
	fcall	_value
	line	11
	
l2769:	
;main.c: 11: Delay(2000);
	movlw	low(07D0h)
	movwf	(?_Delay)
	movlw	high(07D0h)
	movwf	((?_Delay))+1
	fcall	_Delay
	goto	l2771
	line	13
;main.c: 12: for(;;)
	
l1190:	
	line	14
	
l2771:	
;main.c: 13: {
;main.c: 14: numbersdisplay();
	fcall	_numbersdisplay
	line	15
	
l2773:	
;main.c: 15: Delay(50);
	movlw	low(032h)
	movwf	(?_Delay)
	movlw	high(032h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	17
;main.c: 17: }
	goto	l2771
	
l1191:	
	line	18
	
l1192:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_MainSystemInitialize
psect	text251,local,class=CODE,delta=2
global __ptext251
__ptext251:

;; *************** function _MainSystemInitialize *****************
;; Defined at:
;;		line 21 in file "F:\projects\PIC\PIC16\projects PIC\LCD\main.c"
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
;;		_LCDInitialize
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text251
	file	"F:\projects\PIC\PIC16\projects PIC\LCD\main.c"
	line	21
	global	__size_of_MainSystemInitialize
	__size_of_MainSystemInitialize	equ	__end_of_MainSystemInitialize-_MainSystemInitialize
	
_MainSystemInitialize:	
	opt	stack 1
; Regs used in _MainSystemInitialize: [wreg+status,2+status,0+pclath+cstack]
	line	22
	
l2763:	
;main.c: 22: LCDInitialize();
	fcall	_LCDInitialize
	line	23
	
l1195:	
	return
	opt stack 0
GLOBAL	__end_of_MainSystemInitialize
	__end_of_MainSystemInitialize:
;; =============== function _MainSystemInitialize ends ============

	signat	_MainSystemInitialize,88
	global	_value
psect	text252,local,class=CODE,delta=2
global __ptext252
__ptext252:

;; *************** function _value *****************
;; Defined at:
;;		line 54 in file "F:\projects\PIC\PIC16\projects PIC\LCD\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_LCDWriteCommand
;;		_LCDWriteString
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text252
	file	"F:\projects\PIC\PIC16\projects PIC\LCD\main.c"
	line	54
	global	__size_of_value
	__size_of_value	equ	__end_of_value-_value
	
_value:	
	opt	stack 2
; Regs used in _value: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	55
	
l2753:	
;main.c: 55: LCDWriteCommand(0x01);
	movlw	(01h)
	fcall	_LCDWriteCommand
	line	56
;main.c: 56: LCDWriteCommand(0x82);
	movlw	(082h)
	fcall	_LCDWriteCommand
	line	57
	
l2755:	
;main.c: 57: LCDWriteString("NUMBERS FROM");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_LCDWriteString
	line	58
	
l2757:	
;main.c: 58: LCDWriteCommand(0xC0);
	movlw	(0C0h)
	fcall	_LCDWriteCommand
	line	59
	
l2759:	
;main.c: 59: LCDWriteCommand(0xc2);
	movlw	(0C2h)
	fcall	_LCDWriteCommand
	line	60
	
l2761:	
;main.c: 60: LCDWriteString("000 TO 999");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_LCDWriteString
	line	62
	
l1204:	
	return
	opt stack 0
GLOBAL	__end_of_value
	__end_of_value:
;; =============== function _value ends ============

	signat	_value,88
	global	_LCDInitialize
psect	text253,local,class=CODE,delta=2
global __ptext253
__ptext253:

;; *************** function _LCDInitialize *****************
;; Defined at:
;;		line 32 in file "F:\projects\PIC\PIC16\projects PIC\LCD\LCD.c"
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
psect	text253
	file	"F:\projects\PIC\PIC16\projects PIC\LCD\LCD.c"
	line	32
	global	__size_of_LCDInitialize
	__size_of_LCDInitialize	equ	__end_of_LCDInitialize-_LCDInitialize
	
_LCDInitialize:	
	opt	stack 1
; Regs used in _LCDInitialize: [wreg+status,2+status,0+pclath+cstack]
	line	33
	
l2735:	
;LCD.c: 33: TRISD = TRISD & 0x03;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(136)^080h,w
	andlw	03h
	movwf	(136)^080h	;volatile
	line	34
	
l2737:	
;LCD.c: 34: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	35
	
l2739:	
;LCD.c: 35: RD2 = 0;
	bcf	(66/8),(66)&7
	line	36
	
l2741:	
;LCD.c: 36: PORTD &= 0x0f;
	movlw	(0Fh)
	movwf	(??_LCDInitialize+0)+0
	movf	(??_LCDInitialize+0)+0,w
	andwf	(8),f	;volatile
	line	37
	
l2743:	
;LCD.c: 37: LCDReset();
	fcall	_LCDReset
	line	38
	
l2745:	
;LCD.c: 38: LCDWriteCommand(0x28);
	movlw	(028h)
	fcall	_LCDWriteCommand
	line	39
	
l2747:	
;LCD.c: 39: LCDWriteCommand(0x0C);
	movlw	(0Ch)
	fcall	_LCDWriteCommand
	line	40
	
l2749:	
;LCD.c: 40: LCDWriteCommand(0x06);
	movlw	(06h)
	fcall	_LCDWriteCommand
	line	41
	
l2751:	
;LCD.c: 41: LCDWriteCommand(0x01);
	movlw	(01h)
	fcall	_LCDWriteCommand
	line	43
	
l589:	
	return
	opt stack 0
GLOBAL	__end_of_LCDInitialize
	__end_of_LCDInitialize:
;; =============== function _LCDInitialize ends ============

	signat	_LCDInitialize,88
	global	_numbersdisplay
psect	text254,local,class=CODE,delta=2
global __ptext254
__ptext254:

;; *************** function _numbersdisplay *****************
;; Defined at:
;;		line 26 in file "F:\projects\PIC\PIC16\projects PIC\LCD\main.c"
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
;;		_LCDWriteData
;;		_Delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text254
	file	"F:\projects\PIC\PIC16\projects PIC\LCD\main.c"
	line	26
	global	__size_of_numbersdisplay
	__size_of_numbersdisplay	equ	__end_of_numbersdisplay-_numbersdisplay
	
_numbersdisplay:	
	opt	stack 3
; Regs used in _numbersdisplay: [wreg+status,2+status,0+pclath+cstack]
	line	27
	
l2723:	
;main.c: 27: LCDWriteCommand(0x01);
	movlw	(01h)
	fcall	_LCDWriteCommand
	line	29
;main.c: 29: LCDWriteCommand(0xC0);
	movlw	(0C0h)
	fcall	_LCDWriteCommand
	line	30
;main.c: 30: LCDWriteData(k);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_k),w
	fcall	_LCDWriteData
	line	31
;main.c: 31: LCDWriteData(j);
	movf	(_j),w
	fcall	_LCDWriteData
	line	32
;main.c: 32: LCDWriteData(i);
	movf	(_i),w
	fcall	_LCDWriteData
	line	34
;main.c: 34: Delay(50);
	movlw	low(032h)
	movwf	(?_Delay)
	movlw	high(032h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	35
	
l2725:	
;main.c: 35: i++;
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	line	36
	
l2727:	
;main.c: 36: if(i==58)
	movlw	03Ah
	xorwf	(_i),w
	iorwf	(_i+1),w
	skipz
	goto	u2351
	goto	u2350
u2351:
	goto	l1201
u2350:
	line	38
	
l2729:	
;main.c: 37: {
;main.c: 38: i=48;
	movlw	low(030h)
	movwf	(_i)
	movlw	high(030h)
	movwf	((_i))+1
	line	39
;main.c: 39: j++;
	movlw	low(01h)
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	line	40
;main.c: 40: if(j==58)
	movlw	03Ah
	xorwf	(_j),w
	iorwf	(_j+1),w
	skipz
	goto	u2361
	goto	u2360
u2361:
	goto	l1201
u2360:
	line	42
	
l2731:	
;main.c: 41: {
;main.c: 42: j=48;
	movlw	low(030h)
	movwf	(_j)
	movlw	high(030h)
	movwf	((_j))+1
	line	43
;main.c: 43: k++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(_k),f
	skipnc
	incf	(_k+1),f
	movlw	high(01h)
	addwf	(_k+1),f
	line	44
;main.c: 44: if(k==58)
	movlw	03Ah
	xorwf	(_k),w
	iorwf	(_k+1),w
	skipz
	goto	u2371
	goto	u2370
u2371:
	goto	l1201
u2370:
	line	46
	
l2733:	
;main.c: 45: {
;main.c: 46: k=48;
	movlw	low(030h)
	movwf	(_k)
	movlw	high(030h)
	movwf	((_k))+1
	goto	l1201
	line	47
	
l1200:	
	goto	l1201
	line	48
	
l1199:	
	goto	l1201
	line	49
	
l1198:	
	line	51
	
l1201:	
	return
	opt stack 0
GLOBAL	__end_of_numbersdisplay
	__end_of_numbersdisplay:
;; =============== function _numbersdisplay ends ============

	signat	_numbersdisplay,88
	global	_LCDReset
psect	text255,local,class=CODE,delta=2
global __ptext255
__ptext255:

;; *************** function _LCDReset *****************
;; Defined at:
;;		line 45 in file "F:\projects\PIC\PIC16\projects PIC\LCD\LCD.c"
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
psect	text255
	file	"F:\projects\PIC\PIC16\projects PIC\LCD\LCD.c"
	line	45
	global	__size_of_LCDReset
	__size_of_LCDReset	equ	__end_of_LCDReset-_LCDReset
	
_LCDReset:	
	opt	stack 1
; Regs used in _LCDReset: [wreg+status,2+status,0+pclath+cstack]
	line	46
	
l2721:	
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
	
l592:	
	return
	opt stack 0
GLOBAL	__end_of_LCDReset
	__end_of_LCDReset:
;; =============== function _LCDReset ends ============

	signat	_LCDReset,88
	global	_LCDWriteString
psect	text256,local,class=CODE,delta=2
global __ptext256
__ptext256:

;; *************** function _LCDWriteString *****************
;; Defined at:
;;		line 24 in file "F:\projects\PIC\PIC16\projects PIC\LCD\LCD.c"
;; Parameters:    Size  Location     Type
;;  lcd_string      1    wreg     PTR const unsigned char 
;;		 -> STR_3(11), STR_2(13), STR_1(17), 
;; Auto vars:     Size  Location     Type
;;  lcd_string      1    8[COMMON] PTR const unsigned char 
;;		 -> STR_3(11), STR_2(13), STR_1(17), 
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
;;		_value
;;		_LCDDisplayInitializing
;; This function uses a non-reentrant model
;;
psect	text256
	file	"F:\projects\PIC\PIC16\projects PIC\LCD\LCD.c"
	line	24
	global	__size_of_LCDWriteString
	__size_of_LCDWriteString	equ	__end_of_LCDWriteString-_LCDWriteString
	
_LCDWriteString:	
	opt	stack 2
; Regs used in _LCDWriteString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;LCDWriteString@lcd_string stored from wreg
	movwf	(LCDWriteString@lcd_string)
	line	25
	
l2713:	
;LCD.c: 25: while(*lcd_string)
	goto	l2719
	
l584:	
	line	27
	
l2715:	
;LCD.c: 26: {
;LCD.c: 27: LCDWriteData(*lcd_string++);
	movf	(LCDWriteString@lcd_string),w
	movwf	fsr0
	fcall	stringdir
	fcall	_LCDWriteData
	
l2717:	
	movlw	(01h)
	movwf	(??_LCDWriteString+0)+0
	movf	(??_LCDWriteString+0)+0,w
	addwf	(LCDWriteString@lcd_string),f
	goto	l2719
	line	28
	
l583:	
	line	25
	
l2719:	
	movf	(LCDWriteString@lcd_string),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2341
	goto	u2340
u2341:
	goto	l2715
u2340:
	goto	l586
	
l585:	
	line	29
	
l586:	
	return
	opt stack 0
GLOBAL	__end_of_LCDWriteString
	__end_of_LCDWriteString:
;; =============== function _LCDWriteString ends ============

	signat	_LCDWriteString,4216
	global	_LCDWriteData
psect	text257,local,class=CODE,delta=2
global __ptext257
__ptext257:

;; *************** function _LCDWriteData *****************
;; Defined at:
;;		line 18 in file "F:\projects\PIC\PIC16\projects PIC\LCD\LCD.c"
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
;;		_numbersdisplay
;;		_LCDDisplayInitializing
;;		_LCDDisplayByte
;; This function uses a non-reentrant model
;;
psect	text257
	file	"F:\projects\PIC\PIC16\projects PIC\LCD\LCD.c"
	line	18
	global	__size_of_LCDWriteData
	__size_of_LCDWriteData	equ	__end_of_LCDWriteData-_LCDWriteData
	
_LCDWriteData:	
	opt	stack 3
; Regs used in _LCDWriteData: [wreg+status,2+status,0+pclath+cstack]
;LCDWriteData@LCDData stored from wreg
	movwf	(LCDWriteData@LCDData)
	line	19
	
l2709:	
;LCD.c: 19: RD2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(66/8),(66)&7
	line	20
	
l2711:	
;LCD.c: 20: LCDWriteByte(LCDData);
	movf	(LCDWriteData@LCDData),w
	fcall	_LCDWriteByte
	line	21
	
l580:	
	return
	opt stack 0
GLOBAL	__end_of_LCDWriteData
	__end_of_LCDWriteData:
;; =============== function _LCDWriteData ends ============

	signat	_LCDWriteData,4216
	global	_LCDWriteCommand
psect	text258,local,class=CODE,delta=2
global __ptext258
__ptext258:

;; *************** function _LCDWriteCommand *****************
;; Defined at:
;;		line 12 in file "F:\projects\PIC\PIC16\projects PIC\LCD\LCD.c"
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
;;		_numbersdisplay
;;		_value
;;		_LCDDisplayInitializing
;;		_LCDDisplayByte
;; This function uses a non-reentrant model
;;
psect	text258
	file	"F:\projects\PIC\PIC16\projects PIC\LCD\LCD.c"
	line	12
	global	__size_of_LCDWriteCommand
	__size_of_LCDWriteCommand	equ	__end_of_LCDWriteCommand-_LCDWriteCommand
	
_LCDWriteCommand:	
	opt	stack 3
; Regs used in _LCDWriteCommand: [wreg+status,2+status,0+pclath+cstack]
;LCDWriteCommand@LCDData stored from wreg
	movwf	(LCDWriteCommand@LCDData)
	line	13
	
l2705:	
;LCD.c: 13: RD2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(66/8),(66)&7
	line	14
	
l2707:	
;LCD.c: 14: LCDWriteByte(LCDData);
	movf	(LCDWriteCommand@LCDData),w
	fcall	_LCDWriteByte
	line	15
	
l577:	
	return
	opt stack 0
GLOBAL	__end_of_LCDWriteCommand
	__end_of_LCDWriteCommand:
;; =============== function _LCDWriteCommand ends ============

	signat	_LCDWriteCommand,4216
	global	_LCDWriteByte
psect	text259,local,class=CODE,delta=2
global __ptext259
__ptext259:

;; *************** function _LCDWriteByte *****************
;; Defined at:
;;		line 64 in file "F:\projects\PIC\PIC16\projects PIC\LCD\LCD.c"
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
psect	text259
	file	"F:\projects\PIC\PIC16\projects PIC\LCD\LCD.c"
	line	64
	global	__size_of_LCDWriteByte
	__size_of_LCDWriteByte	equ	__end_of_LCDWriteByte-_LCDWriteByte
	
_LCDWriteByte:	
	opt	stack 3
; Regs used in _LCDWriteByte: [wreg+status,2+status,0+pclath+cstack]
;LCDWriteByte@LCDData stored from wreg
	movwf	(LCDWriteByte@LCDData)
	line	65
	
l2699:	
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
	
l2701:	
;LCD.c: 66: LCDEnable();
	fcall	_LCDEnable
	line	67
	
l2703:	
;LCD.c: 67: PORTD = (PORTD & 0x0F)|(LCDData << 4);
	movf	(LCDWriteByte@LCDData),w
	movwf	(??_LCDWriteByte+0)+0
	movlw	04h
u2335:
	clrc
	rlf	(??_LCDWriteByte+0)+0,f
	addlw	-1
	skipz
	goto	u2335
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
	
l600:	
	return
	opt stack 0
GLOBAL	__end_of_LCDWriteByte
	__end_of_LCDWriteByte:
;; =============== function _LCDWriteByte ends ============

	signat	_LCDWriteByte,4216
	global	_LCDEnable
psect	text260,local,class=CODE,delta=2
global __ptext260
__ptext260:

;; *************** function _LCDEnable *****************
;; Defined at:
;;		line 5 in file "F:\projects\PIC\PIC16\projects PIC\LCD\LCD.c"
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
psect	text260
	file	"F:\projects\PIC\PIC16\projects PIC\LCD\LCD.c"
	line	5
	global	__size_of_LCDEnable
	__size_of_LCDEnable	equ	__end_of_LCDEnable-_LCDEnable
	
_LCDEnable:	
	opt	stack 3
; Regs used in _LCDEnable: [wreg+status,2+status,0+pclath+cstack]
	line	6
	
l2693:	
;LCD.c: 6: RD3 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(67/8),(67)&7
	line	7
	
l2695:	
;LCD.c: 7: Delay(10);
	movlw	low(0Ah)
	movwf	(?_Delay)
	movlw	high(0Ah)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	8
	
l2697:	
;LCD.c: 8: RD3 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(67/8),(67)&7
	line	9
	
l574:	
	return
	opt stack 0
GLOBAL	__end_of_LCDEnable
	__end_of_LCDEnable:
;; =============== function _LCDEnable ends ============

	signat	_LCDEnable,88
	global	_Delay
psect	text261,local,class=CODE,delta=2
global __ptext261
__ptext261:

;; *************** function _Delay *****************
;; Defined at:
;;		line 4 in file "F:\projects\PIC\PIC16\projects PIC\LCD\delay.c"
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
;;		_main
;;		_numbersdisplay
;;		_LCDDisplayInitializing
;; This function uses a non-reentrant model
;;
psect	text261
	file	"F:\projects\PIC\PIC16\projects PIC\LCD\delay.c"
	line	4
	global	__size_of_Delay
	__size_of_Delay	equ	__end_of_Delay-_Delay
	
_Delay:	
	opt	stack 6
; Regs used in _Delay: [wreg+status,2+status,0]
	line	6
	
l2651:	
;delay.c: 5: unsigned char pause;
;delay.c: 6: while( time > 0)
	goto	l2659
	
l4:	
	line	8
	
l2653:	
;delay.c: 7: {
;delay.c: 8: pause = 255;
	movlw	(0FFh)
	movwf	(??_Delay+0)+0
	movf	(??_Delay+0)+0,w
	movwf	(Delay@pause)
	line	9
;delay.c: 9: while(pause--);
	goto	l2655
	
l6:	
	goto	l2655
	
l5:	
	
l2655:	
	movlw	low(01h)
	subwf	(Delay@pause),f
	movf	((Delay@pause)),w
	xorlw	0FFh
	skipz
	goto	u2261
	goto	u2260
u2261:
	goto	l2655
u2260:
	goto	l2657
	
l7:	
	line	10
	
l2657:	
;delay.c: 10: time--;
	movlw	low(01h)
	subwf	(Delay@time),f
	movlw	high(01h)
	skipc
	decf	(Delay@time+1),f
	subwf	(Delay@time+1),f
	goto	l2659
	line	11
	
l3:	
	line	6
	
l2659:	
	movf	((Delay@time+1)),w
	iorwf	((Delay@time)),w
	skipz
	goto	u2271
	goto	u2270
u2271:
	goto	l2653
u2270:
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
psect	text262,local,class=CODE,delta=2
global __ptext262
__ptext262:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
