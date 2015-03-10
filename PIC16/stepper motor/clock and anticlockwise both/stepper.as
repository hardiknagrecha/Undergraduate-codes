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
# 2 "F:\projects\PIC\PIC16\projects PIC\stepper motor\clock and anticlockwise both\stepper.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "F:\projects\PIC\PIC16\projects PIC\stepper motor\clock and anticlockwise both\stepper.c"
	dw 0X2F0A ;#
	FNCALL	_main,___ftge
	FNCALL	_main,___ftadd
	FNCALL	___ftadd,___ftpack
	FNROOT	_main
	global	_RB4
psect	text110,local,class=CODE,delta=2
global __ptext110
__ptext110:
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RB6
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_TRISB
_TRISB	set	134
	file	"stepper.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___ftge
?___ftge:	; 1 bit 
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	___ftge@ff1
___ftge@ff1:	; 3 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	global	___ftge@ff2
___ftge@ff2:	; 3 bytes @ 0x3
	ds	1
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	ds	1
	global	??___ftge
??___ftge:	; 0 bytes @ 0x6
	ds	2
	global	?___ftadd
?___ftadd:	; 3 bytes @ 0x8
	global	___ftadd@f1
___ftadd@f1:	; 3 bytes @ 0x8
	ds	3
	global	___ftadd@f2
___ftadd@f2:	; 3 bytes @ 0xB
	ds	3
	global	??_main
??_main:	; 0 bytes @ 0xE
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??___ftadd
??___ftadd:	; 0 bytes @ 0x0
	ds	4
	global	___ftadd@sign
___ftadd@sign:	; 1 bytes @ 0x4
	ds	1
	global	___ftadd@exp2
___ftadd@exp2:	; 1 bytes @ 0x5
	ds	1
	global	___ftadd@exp1
___ftadd@exp1:	; 1 bytes @ 0x6
	ds	1
	global	main@i
main@i:	; 3 bytes @ 0x7
	ds	3
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     10      10
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___ftadd	float  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___ftadd
;;   ___ftadd->___ftpack
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->___ftadd
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
;; (0) _main                                                 3     3      0    1661
;;                                              7 BANK0      3     3      0
;;                             ___ftge
;;                            ___ftadd
;; ---------------------------------------------------------------------------------
;; (1) ___ftadd                                             13     7      6    1049
;;                                              8 COMMON     6     0      6
;;                                              0 BANK0      7     7      0
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (1) ___ftge                                              12     6      6     136
;;                                              0 COMMON    12     6      6
;; ---------------------------------------------------------------------------------
;; (2) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   ___ftge
;;   ___ftadd
;;     ___ftpack
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
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      A       A       5       12.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 5 in file "F:\projects\PIC\PIC16\projects PIC\stepper motor\clock and anticlockwise both\stepper.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               3    7[BANK0 ] float 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___ftge
;;		___ftadd
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"F:\projects\PIC\PIC16\projects PIC\stepper motor\clock and anticlockwise both\stepper.c"
	line	5
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	6
	
l2389:	
;stepper.c: 6: TRISB=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	goto	l2391
	line	8
;stepper.c: 7: long double i;
;stepper.c: 8: while(1)
	
l559:	
	line	11
	
l2391:	
;stepper.c: 9: {
;stepper.c: 11: for(i=0;i<400;i++)
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(main@i)
	movlw	0x0
	movwf	(main@i+1)
	movlw	0x0
	movwf	(main@i+2)
	
l2393:	
	movf	(main@i),w
	movwf	(?___ftge)
	movf	(main@i+1),w
	movwf	(?___ftge+1)
	movf	(main@i+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0xc8
	movwf	1+(?___ftge)+03h
	movlw	0x43
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u2991
	goto	u2990
u2991:
	goto	l2397
u2990:
	goto	l561
	
l2395:	
	goto	l561
	line	12
	
l560:	
	line	11
	
l2397:	
;stepper.c: 12: {}
	movlw	0x0
	movwf	(?___ftadd)
	movlw	0x80
	movwf	(?___ftadd+1)
	movlw	0x3f
	movwf	(?___ftadd+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	movwf	0+(?___ftadd)+03h
	movf	(main@i+1),w
	movwf	1+(?___ftadd)+03h
	movf	(main@i+2),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	movf	(1+(?___ftadd)),w
	movwf	(main@i+1)
	movf	(2+(?___ftadd)),w
	movwf	(main@i+2)
	movf	(main@i),w
	movwf	(?___ftge)
	movf	(main@i+1),w
	movwf	(?___ftge+1)
	movf	(main@i+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0xc8
	movwf	1+(?___ftge)+03h
	movlw	0x43
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u3001
	goto	u3000
u3001:
	goto	l2397
u3000:
	
l561:	
	line	13
;stepper.c: 13: RB7=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	line	14
;stepper.c: 14: RB6=0;
	bcf	(54/8),(54)&7
	line	15
;stepper.c: 15: RB5=0;
	bcf	(53/8),(53)&7
	line	16
;stepper.c: 16: RB4=0;
	bcf	(52/8),(52)&7
	line	20
	
l2399:	
;stepper.c: 20: for(i=0;i<400;i++)
	movlw	0x0
	movwf	(main@i)
	movlw	0x0
	movwf	(main@i+1)
	movlw	0x0
	movwf	(main@i+2)
	
l2401:	
	movf	(main@i),w
	movwf	(?___ftge)
	movf	(main@i+1),w
	movwf	(?___ftge+1)
	movf	(main@i+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0xc8
	movwf	1+(?___ftge)+03h
	movlw	0x43
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u3011
	goto	u3010
u3011:
	goto	l2405
u3010:
	goto	l563
	
l2403:	
	goto	l563
	line	21
	
l562:	
	line	20
	
l2405:	
;stepper.c: 21: {}
	movlw	0x0
	movwf	(?___ftadd)
	movlw	0x80
	movwf	(?___ftadd+1)
	movlw	0x3f
	movwf	(?___ftadd+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	movwf	0+(?___ftadd)+03h
	movf	(main@i+1),w
	movwf	1+(?___ftadd)+03h
	movf	(main@i+2),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	movf	(1+(?___ftadd)),w
	movwf	(main@i+1)
	movf	(2+(?___ftadd)),w
	movwf	(main@i+2)
	movf	(main@i),w
	movwf	(?___ftge)
	movf	(main@i+1),w
	movwf	(?___ftge+1)
	movf	(main@i+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0xc8
	movwf	1+(?___ftge)+03h
	movlw	0x43
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u3021
	goto	u3020
u3021:
	goto	l2405
u3020:
	
l563:	
	line	22
;stepper.c: 22: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
	line	23
;stepper.c: 23: RB6=1;
	bsf	(54/8),(54)&7
	line	24
;stepper.c: 24: RB5=0;
	bcf	(53/8),(53)&7
	line	25
;stepper.c: 25: RB4=0;
	bcf	(52/8),(52)&7
	line	29
	
l2407:	
;stepper.c: 29: for(i=0;i<400;i++)
	movlw	0x0
	movwf	(main@i)
	movlw	0x0
	movwf	(main@i+1)
	movlw	0x0
	movwf	(main@i+2)
	
l2409:	
	movf	(main@i),w
	movwf	(?___ftge)
	movf	(main@i+1),w
	movwf	(?___ftge+1)
	movf	(main@i+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0xc8
	movwf	1+(?___ftge)+03h
	movlw	0x43
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u3031
	goto	u3030
u3031:
	goto	l2413
u3030:
	goto	l565
	
l2411:	
	goto	l565
	line	30
	
l564:	
	line	29
	
l2413:	
;stepper.c: 30: {}
	movlw	0x0
	movwf	(?___ftadd)
	movlw	0x80
	movwf	(?___ftadd+1)
	movlw	0x3f
	movwf	(?___ftadd+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	movwf	0+(?___ftadd)+03h
	movf	(main@i+1),w
	movwf	1+(?___ftadd)+03h
	movf	(main@i+2),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	movf	(1+(?___ftadd)),w
	movwf	(main@i+1)
	movf	(2+(?___ftadd)),w
	movwf	(main@i+2)
	movf	(main@i),w
	movwf	(?___ftge)
	movf	(main@i+1),w
	movwf	(?___ftge+1)
	movf	(main@i+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0xc8
	movwf	1+(?___ftge)+03h
	movlw	0x43
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u3041
	goto	u3040
u3041:
	goto	l2413
u3040:
	
l565:	
	line	31
;stepper.c: 31: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
	line	32
;stepper.c: 32: RB6=0;
	bcf	(54/8),(54)&7
	line	33
;stepper.c: 33: RB5=1;
	bsf	(53/8),(53)&7
	line	34
;stepper.c: 34: RB4=0;
	bcf	(52/8),(52)&7
	line	38
	
l2415:	
;stepper.c: 38: for(i=0;i<400;i++)
	movlw	0x0
	movwf	(main@i)
	movlw	0x0
	movwf	(main@i+1)
	movlw	0x0
	movwf	(main@i+2)
	
l2417:	
	movf	(main@i),w
	movwf	(?___ftge)
	movf	(main@i+1),w
	movwf	(?___ftge+1)
	movf	(main@i+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0xc8
	movwf	1+(?___ftge)+03h
	movlw	0x43
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u3051
	goto	u3050
u3051:
	goto	l2421
u3050:
	goto	l567
	
l2419:	
	goto	l567
	line	39
	
l566:	
	line	38
	
l2421:	
;stepper.c: 39: {}
	movlw	0x0
	movwf	(?___ftadd)
	movlw	0x80
	movwf	(?___ftadd+1)
	movlw	0x3f
	movwf	(?___ftadd+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	movwf	0+(?___ftadd)+03h
	movf	(main@i+1),w
	movwf	1+(?___ftadd)+03h
	movf	(main@i+2),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	movf	(1+(?___ftadd)),w
	movwf	(main@i+1)
	movf	(2+(?___ftadd)),w
	movwf	(main@i+2)
	movf	(main@i),w
	movwf	(?___ftge)
	movf	(main@i+1),w
	movwf	(?___ftge+1)
	movf	(main@i+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0xc8
	movwf	1+(?___ftge)+03h
	movlw	0x43
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u3061
	goto	u3060
u3061:
	goto	l2421
u3060:
	
l567:	
	line	40
;stepper.c: 40: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
	line	41
;stepper.c: 41: RB6=0;
	bcf	(54/8),(54)&7
	line	42
;stepper.c: 42: RB5=0;
	bcf	(53/8),(53)&7
	line	43
;stepper.c: 43: RB4=1;
	bsf	(52/8),(52)&7
	line	48
	
l2423:	
;stepper.c: 48: for(i=0;i<400;i++)
	movlw	0x0
	movwf	(main@i)
	movlw	0x0
	movwf	(main@i+1)
	movlw	0x0
	movwf	(main@i+2)
	
l2425:	
	movf	(main@i),w
	movwf	(?___ftge)
	movf	(main@i+1),w
	movwf	(?___ftge+1)
	movf	(main@i+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0xc8
	movwf	1+(?___ftge)+03h
	movlw	0x43
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u3071
	goto	u3070
u3071:
	goto	l2429
u3070:
	goto	l569
	
l2427:	
	goto	l569
	line	49
	
l568:	
	line	48
	
l2429:	
;stepper.c: 49: {}
	movlw	0x0
	movwf	(?___ftadd)
	movlw	0x80
	movwf	(?___ftadd+1)
	movlw	0x3f
	movwf	(?___ftadd+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	movwf	0+(?___ftadd)+03h
	movf	(main@i+1),w
	movwf	1+(?___ftadd)+03h
	movf	(main@i+2),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	movf	(1+(?___ftadd)),w
	movwf	(main@i+1)
	movf	(2+(?___ftadd)),w
	movwf	(main@i+2)
	movf	(main@i),w
	movwf	(?___ftge)
	movf	(main@i+1),w
	movwf	(?___ftge+1)
	movf	(main@i+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0xc8
	movwf	1+(?___ftge)+03h
	movlw	0x43
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u3081
	goto	u3080
u3081:
	goto	l2429
u3080:
	
l569:	
	line	50
;stepper.c: 50: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
	line	51
;stepper.c: 51: RB6=0;
	bcf	(54/8),(54)&7
	line	52
;stepper.c: 52: RB5=1;
	bsf	(53/8),(53)&7
	line	53
;stepper.c: 53: RB4=0;
	bcf	(52/8),(52)&7
	line	57
	
l2431:	
;stepper.c: 57: for(i=0;i<400;i++)
	movlw	0x0
	movwf	(main@i)
	movlw	0x0
	movwf	(main@i+1)
	movlw	0x0
	movwf	(main@i+2)
	
l2433:	
	movf	(main@i),w
	movwf	(?___ftge)
	movf	(main@i+1),w
	movwf	(?___ftge+1)
	movf	(main@i+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0xc8
	movwf	1+(?___ftge)+03h
	movlw	0x43
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u3091
	goto	u3090
u3091:
	goto	l2437
u3090:
	goto	l571
	
l2435:	
	goto	l571
	line	58
	
l570:	
	line	57
	
l2437:	
;stepper.c: 58: {}
	movlw	0x0
	movwf	(?___ftadd)
	movlw	0x80
	movwf	(?___ftadd+1)
	movlw	0x3f
	movwf	(?___ftadd+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	movwf	0+(?___ftadd)+03h
	movf	(main@i+1),w
	movwf	1+(?___ftadd)+03h
	movf	(main@i+2),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	movf	(1+(?___ftadd)),w
	movwf	(main@i+1)
	movf	(2+(?___ftadd)),w
	movwf	(main@i+2)
	movf	(main@i),w
	movwf	(?___ftge)
	movf	(main@i+1),w
	movwf	(?___ftge+1)
	movf	(main@i+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0xc8
	movwf	1+(?___ftge)+03h
	movlw	0x43
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u3101
	goto	u3100
u3101:
	goto	l2437
u3100:
	
l571:	
	line	59
;stepper.c: 59: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
	line	60
;stepper.c: 60: RB6=1;
	bsf	(54/8),(54)&7
	line	61
;stepper.c: 61: RB5=0;
	bcf	(53/8),(53)&7
	line	62
;stepper.c: 62: RB4=0;
	bcf	(52/8),(52)&7
	line	66
	
l2439:	
;stepper.c: 66: for(i=0;i<400;i++)
	movlw	0x0
	movwf	(main@i)
	movlw	0x0
	movwf	(main@i+1)
	movlw	0x0
	movwf	(main@i+2)
	
l2441:	
	movf	(main@i),w
	movwf	(?___ftge)
	movf	(main@i+1),w
	movwf	(?___ftge+1)
	movf	(main@i+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0xc8
	movwf	1+(?___ftge)+03h
	movlw	0x43
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u3111
	goto	u3110
u3111:
	goto	l2445
u3110:
	goto	l573
	
l2443:	
	goto	l573
	line	67
	
l572:	
	line	66
	
l2445:	
;stepper.c: 67: {}
	movlw	0x0
	movwf	(?___ftadd)
	movlw	0x80
	movwf	(?___ftadd+1)
	movlw	0x3f
	movwf	(?___ftadd+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	movwf	0+(?___ftadd)+03h
	movf	(main@i+1),w
	movwf	1+(?___ftadd)+03h
	movf	(main@i+2),w
	movwf	2+(?___ftadd)+03h
	fcall	___ftadd
	movf	(0+(?___ftadd)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(main@i)
	movf	(1+(?___ftadd)),w
	movwf	(main@i+1)
	movf	(2+(?___ftadd)),w
	movwf	(main@i+2)
	movf	(main@i),w
	movwf	(?___ftge)
	movf	(main@i+1),w
	movwf	(?___ftge+1)
	movf	(main@i+2),w
	movwf	(?___ftge+2)
	movlw	0x0
	movwf	0+(?___ftge)+03h
	movlw	0xc8
	movwf	1+(?___ftge)+03h
	movlw	0x43
	movwf	2+(?___ftge)+03h
	fcall	___ftge
	btfss	status,0
	goto	u3121
	goto	u3120
u3121:
	goto	l2445
u3120:
	
l573:	
	line	68
;stepper.c: 68: RB7=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	line	69
;stepper.c: 69: RB6=0;
	bcf	(54/8),(54)&7
	line	70
;stepper.c: 70: RB5=0;
	bcf	(53/8),(53)&7
	line	71
;stepper.c: 71: RB4=0;
	bcf	(52/8),(52)&7
	goto	l2391
	line	73
	
l574:	
	line	8
	goto	l2391
	
l575:	
	line	74
	
l576:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	___ftadd
psect	text111,local,class=CODE,delta=2
global __ptext111
__ptext111:

;; *************** function ___ftadd *****************
;; Defined at:
;;		line 87 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftadd.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMMON] float 
;;  f2              3   11[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  exp1            1    6[BANK0 ] unsigned char 
;;  exp2            1    5[BANK0 ] unsigned char 
;;  sign            1    4[BANK0 ] unsigned char 
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
;;      Locals:         0       3       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         6       7       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_main
;;		___ftsub
;; This function uses a non-reentrant model
;;
psect	text111
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftadd.c"
	line	87
	global	__size_of___ftadd
	__size_of___ftadd	equ	__end_of___ftadd-___ftadd
	
___ftadd:	
	opt	stack 6
; Regs used in ___ftadd: [wreg+status,2+status,0+pclath+cstack]
	line	90
	
l2317:	
	movf	(___ftadd@f1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	
l2319:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u2750
	goto	l2325
u2750:
	
l2321:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2761
	goto	u2760
u2761:
	goto	l2329
u2760:
	
l2323:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2771
	goto	u2770
u2771:
	goto	l2329
u2770:
	goto	l2325
	
l631:	
	line	93
	
l2325:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l632
	
l2327:	
	goto	l632
	
l629:	
	line	94
	
l2329:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u2780
	goto	l635
u2780:
	
l2331:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2791
	goto	u2790
u2791:
	goto	l2335
u2790:
	
l2333:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2801
	goto	u2800
u2801:
	goto	l2335
u2800:
	
l635:	
	line	95
	goto	l632
	
l633:	
	line	96
	
l2335:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l2337:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l636
u2810:
	line	98
	
l2339:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l636:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l637
u2820:
	line	100
	
l2341:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l637:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l2343:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l2345:	
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
	goto	u2831
	goto	u2830
u2831:
	goto	l2357
u2830:
	goto	l2347
	line	109
	
l639:	
	line	110
	
l2347:	
	movlw	01h
u2845:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u2845
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l2349:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2851
	goto	u2850
u2851:
	goto	l2355
u2850:
	
l2351:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2861
	goto	u2860
u2861:
	goto	l2347
u2860:
	goto	l2355
	
l641:	
	goto	l2355
	
l642:	
	line	113
	goto	l2355
	
l644:	
	line	114
	
l2353:	
	movlw	01h
u2875:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u2875

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l2355
	line	116
	
l643:	
	line	113
	
l2355:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2881
	goto	u2880
u2881:
	goto	l2353
u2880:
	goto	l646
	
l645:	
	line	117
	goto	l646
	
l638:	
	
l2357:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2891
	goto	u2890
u2891:
	goto	l646
u2890:
	goto	l2359
	line	120
	
l648:	
	line	121
	
l2359:	
	movlw	01h
u2905:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u2905
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l2361:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2911
	goto	u2910
u2911:
	goto	l2367
u2910:
	
l2363:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2921
	goto	u2920
u2921:
	goto	l2359
u2920:
	goto	l2367
	
l650:	
	goto	l2367
	
l651:	
	line	124
	goto	l2367
	
l653:	
	line	125
	
l2365:	
	movlw	01h
u2935:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u2935

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l2367
	line	127
	
l652:	
	line	124
	
l2367:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2941
	goto	u2940
u2941:
	goto	l2365
u2940:
	goto	l646
	
l654:	
	goto	l646
	line	128
	
l647:	
	line	129
	
l646:	
	btfss	(___ftadd@sign),(7)&7
	goto	u2951
	goto	u2950
u2951:
	goto	l2371
u2950:
	line	131
	
l2369:	
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
	goto	l2371
	line	133
	
l655:	
	line	134
	
l2371:	
	btfss	(___ftadd@sign),(6)&7
	goto	u2961
	goto	u2960
u2961:
	goto	l2375
u2960:
	line	136
	
l2373:	
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
	goto	l2375
	line	138
	
l656:	
	line	139
	
l2375:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___ftadd@sign)
	line	140
	
l2377:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u2971
	addwf	(___ftadd@f2+1),f
u2971:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u2972
	addwf	(___ftadd@f2+2),f
u2972:

	line	141
	
l2379:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2981
	goto	u2980
u2981:
	goto	l2385
u2980:
	line	142
	
l2381:	
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
	
l2383:	
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	goto	l2385
	line	145
	
l657:	
	line	146
	
l2385:	
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
	movwf	(?___ftadd)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftadd+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftadd+2)
	goto	l632
	
l2387:	
	line	148
	
l632:	
	return
	opt stack 0
GLOBAL	__end_of___ftadd
	__end_of___ftadd:
;; =============== function ___ftadd ends ============

	signat	___ftadd,8315
	global	___ftge
psect	text112,local,class=CODE,delta=2
global __ptext112
__ptext112:

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
;; This function uses a non-reentrant model
;;
psect	text112
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\ftge.c"
	line	5
	global	__size_of___ftge
	__size_of___ftge	equ	__end_of___ftge-___ftge
	
___ftge:	
	opt	stack 7
; Regs used in ___ftge: [wreg+status,2+status,0]
	line	6
	
l2249:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l2253
u2640:
	line	7
	
l2251:	
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
	goto	u2651
	goto	u2652
u2651:
	addwf	(??___ftge+0)+1,f
	
u2652:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u2653
	goto	u2654
u2653:
	addwf	(??___ftge+0)+2,f
	
u2654:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l2253
	
l752:	
	line	8
	
l2253:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u2661
	goto	u2660
u2661:
	goto	l2257
u2660:
	line	9
	
l2255:	
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
	goto	u2671
	goto	u2672
u2671:
	addwf	(??___ftge+0)+1,f
	
u2672:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u2673
	goto	u2674
u2673:
	addwf	(??___ftge+0)+2,f
	
u2674:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l2257
	
l753:	
	line	10
	
l2257:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l2259:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l2261:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u2685
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u2685
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u2685:
	skipnc
	goto	u2681
	goto	u2680
u2681:
	goto	l2265
u2680:
	
l2263:	
	clrc
	
	goto	l754
	
l2101:	
	
l2265:	
	setc
	
	goto	l754
	
l2103:	
	goto	l754
	
l2267:	
	line	13
	
l754:	
	return
	opt stack 0
GLOBAL	__end_of___ftge
	__end_of___ftge:
;; =============== function ___ftge ends ============

	signat	___ftge,8312
	global	___ftpack
psect	text113,local,class=CODE,delta=2
global __ptext113
__ptext113:

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
;;		___lbtoft
;;		___abtoft
;;		___awtoft
;;		___lwtoft
;;		___altoft
;;		___lltoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text113
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 6
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l2105:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2290
	goto	l2109
u2290:
	
l2107:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2301
	goto	u2300
u2301:
	goto	l2115
u2300:
	goto	l2109
	
l919:	
	line	65
	
l2109:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l920
	
l2111:	
	goto	l920
	
l917:	
	line	66
	goto	l2115
	
l922:	
	line	67
	
l2113:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2315:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2315

	goto	l2115
	line	69
	
l921:	
	line	66
	
l2115:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2321
	goto	u2320
u2321:
	goto	l2113
u2320:
	goto	l924
	
l923:	
	line	70
	goto	l924
	
l925:	
	line	71
	
l2117:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l2119:	
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
	
l2121:	
	movlw	01h
u2335:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2335

	line	74
	
l924:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2341
	goto	u2340
u2341:
	goto	l2117
u2340:
	goto	l2125
	
l926:	
	line	75
	goto	l2125
	
l928:	
	line	76
	
l2123:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2355:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2355
	goto	l2125
	line	78
	
l927:	
	line	75
	
l2125:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l2123
u2360:
	
l929:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2371
	goto	u2370
u2371:
	goto	l930
u2370:
	line	80
	
l2127:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l930:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l2129:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2385:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2380:
	addlw	-1
	skipz
	goto	u2385
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l2131:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2390
	goto	l931
u2390:
	line	84
	
l2133:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l931:	
	line	85
	line	86
	
l920:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
psect	text114,local,class=CODE,delta=2
global __ptext114
__ptext114:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
