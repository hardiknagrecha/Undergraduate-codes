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
# 2 "F:\projects\PIC\PIC16\projects PIC\stepper motor\stepper code\stepper.c"
	psect config,class=CONFIG,delta=2 ;#
# 2 "F:\projects\PIC\PIC16\projects PIC\stepper motor\stepper code\stepper.c"
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
	file	"stepper motor.as"
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
;; (0) _main                                                 3     3      0    1457
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
;;		line 5 in file "F:\projects\PIC\PIC16\projects PIC\stepper motor\stepper code\stepper.c"
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
	file	"F:\projects\PIC\PIC16\projects PIC\stepper motor\stepper code\stepper.c"
	line	5
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	6
	
l2233:	
;stepper.c: 6: TRISB=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	goto	l2235
	line	8
;stepper.c: 7: long double i;
;stepper.c: 8: while(1)
	
l559:	
	line	10
	
l2235:	
;stepper.c: 9: {
;stepper.c: 10: for(i=0;i<400;i++)
	movlw	0x0
	bcf	status, 5	;RP0=0, select bank0
	movwf	(main@i)
	movlw	0x0
	movwf	(main@i+1)
	movlw	0x0
	movwf	(main@i+2)
	
l2237:	
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
	goto	u2931
	goto	u2930
u2931:
	goto	l2241
u2930:
	goto	l561
	
l2239:	
	goto	l561
	line	11
	
l560:	
	line	10
	
l2241:	
;stepper.c: 11: {}
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
	goto	u2941
	goto	u2940
u2941:
	goto	l2241
u2940:
	
l561:	
	line	12
;stepper.c: 12: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
	line	13
;stepper.c: 13: RB6=0;
	bcf	(54/8),(54)&7
	line	14
;stepper.c: 14: RB5=0;
	bcf	(53/8),(53)&7
	line	15
;stepper.c: 15: RB4=1;
	bsf	(52/8),(52)&7
	line	19
	
l2243:	
;stepper.c: 19: for(i=0;i<400;i++)
	movlw	0x0
	movwf	(main@i)
	movlw	0x0
	movwf	(main@i+1)
	movlw	0x0
	movwf	(main@i+2)
	
l2245:	
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
	goto	u2951
	goto	u2950
u2951:
	goto	l2249
u2950:
	goto	l563
	
l2247:	
	goto	l563
	line	20
	
l562:	
	line	19
	
l2249:	
;stepper.c: 20: {}
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
	goto	u2961
	goto	u2960
u2961:
	goto	l2249
u2960:
	
l563:	
	line	21
;stepper.c: 21: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
	line	22
;stepper.c: 22: RB6=0;
	bcf	(54/8),(54)&7
	line	23
;stepper.c: 23: RB5=1;
	bsf	(53/8),(53)&7
	line	24
;stepper.c: 24: RB4=0;
	bcf	(52/8),(52)&7
	line	28
	
l2251:	
;stepper.c: 28: for(i=0;i<400;i++)
	movlw	0x0
	movwf	(main@i)
	movlw	0x0
	movwf	(main@i+1)
	movlw	0x0
	movwf	(main@i+2)
	
l2253:	
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
	goto	u2971
	goto	u2970
u2971:
	goto	l2257
u2970:
	goto	l565
	
l2255:	
	goto	l565
	line	29
	
l564:	
	line	28
	
l2257:	
;stepper.c: 29: {}
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
	goto	u2981
	goto	u2980
u2981:
	goto	l2257
u2980:
	
l565:	
	line	30
;stepper.c: 30: RB7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
	line	31
;stepper.c: 31: RB6=1;
	bsf	(54/8),(54)&7
	line	32
;stepper.c: 32: RB5=0;
	bcf	(53/8),(53)&7
	line	33
;stepper.c: 33: RB4=0;
	bcf	(52/8),(52)&7
	line	37
	
l2259:	
;stepper.c: 37: for(i=0;i<400;i++)
	movlw	0x0
	movwf	(main@i)
	movlw	0x0
	movwf	(main@i+1)
	movlw	0x0
	movwf	(main@i+2)
	
l2261:	
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
	goto	l2265
u2990:
	goto	l567
	
l2263:	
	goto	l567
	line	38
	
l566:	
	line	37
	
l2265:	
;stepper.c: 38: {}
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
	goto	l2265
u3000:
	
l567:	
	line	39
;stepper.c: 39: RB7=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	line	40
;stepper.c: 40: RB6=0;
	bcf	(54/8),(54)&7
	line	41
;stepper.c: 41: RB5=0;
	bcf	(53/8),(53)&7
	line	42
;stepper.c: 42: RB4=0;
	bcf	(52/8),(52)&7
	goto	l2235
	line	44
	
l568:	
	line	8
	goto	l2235
	
l569:	
	line	45
	
l570:	
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
	
l2161:	
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
	
l2163:	
	movf	(___ftadd@exp1),w
	skipz
	goto	u2690
	goto	l2169
u2690:
	
l2165:	
	movf	(___ftadd@exp2),w
	subwf	(___ftadd@exp1),w
	skipnc
	goto	u2701
	goto	u2700
u2701:
	goto	l2173
u2700:
	
l2167:	
	decf	(___ftadd@exp1),w
	xorlw	0ffh
	addwf	(___ftadd@exp2),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2711
	goto	u2710
u2711:
	goto	l2173
u2710:
	goto	l2169
	
l625:	
	line	93
	
l2169:	
	movf	(___ftadd@f2),w
	movwf	(?___ftadd)
	movf	(___ftadd@f2+1),w
	movwf	(?___ftadd+1)
	movf	(___ftadd@f2+2),w
	movwf	(?___ftadd+2)
	goto	l626
	
l2171:	
	goto	l626
	
l623:	
	line	94
	
l2173:	
	movf	(___ftadd@exp2),w
	skipz
	goto	u2720
	goto	l629
u2720:
	
l2175:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2731
	goto	u2730
u2731:
	goto	l2179
u2730:
	
l2177:	
	decf	(___ftadd@exp2),w
	xorlw	0ffh
	addwf	(___ftadd@exp1),w
	movwf	(??___ftadd+0)+0
	movlw	(019h)
	subwf	0+(??___ftadd+0)+0,w
	skipc
	goto	u2741
	goto	u2740
u2741:
	goto	l2179
u2740:
	
l629:	
	line	95
	goto	l626
	
l627:	
	line	96
	
l2179:	
	movlw	(06h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	movwf	(___ftadd@sign)
	line	97
	
l2181:	
	btfss	(___ftadd@f1+2),(23)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l630
u2750:
	line	98
	
l2183:	
	bsf	(___ftadd@sign)+(7/8),(7)&7
	
l630:	
	line	99
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l631
u2760:
	line	100
	
l2185:	
	bsf	(___ftadd@sign)+(6/8),(6)&7
	
l631:	
	line	101
	bsf	(___ftadd@f1)+(15/8),(15)&7
	line	102
	
l2187:	
	movlw	0FFh
	andwf	(___ftadd@f1),f
	movlw	0FFh
	andwf	(___ftadd@f1+1),f
	movlw	0
	andwf	(___ftadd@f1+2),f
	line	103
	
l2189:	
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
	goto	u2771
	goto	u2770
u2771:
	goto	l2201
u2770:
	goto	l2191
	line	109
	
l633:	
	line	110
	
l2191:	
	movlw	01h
u2785:
	clrc
	rlf	(___ftadd@f2),f
	rlf	(___ftadd@f2+1),f
	rlf	(___ftadd@f2+2),f
	addlw	-1
	skipz
	goto	u2785
	line	111
	movlw	low(01h)
	subwf	(___ftadd@exp2),f
	line	112
	
l2193:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2791
	goto	u2790
u2791:
	goto	l2199
u2790:
	
l2195:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2801
	goto	u2800
u2801:
	goto	l2191
u2800:
	goto	l2199
	
l635:	
	goto	l2199
	
l636:	
	line	113
	goto	l2199
	
l638:	
	line	114
	
l2197:	
	movlw	01h
u2815:
	clrc
	rrf	(___ftadd@f1+2),f
	rrf	(___ftadd@f1+1),f
	rrf	(___ftadd@f1),f
	addlw	-1
	skipz
	goto	u2815

	line	115
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp1),f
	goto	l2199
	line	116
	
l637:	
	line	113
	
l2199:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2821
	goto	u2820
u2821:
	goto	l2197
u2820:
	goto	l640
	
l639:	
	line	117
	goto	l640
	
l632:	
	
l2201:	
	movf	(___ftadd@exp1),w
	subwf	(___ftadd@exp2),w
	skipnc
	goto	u2831
	goto	u2830
u2831:
	goto	l640
u2830:
	goto	l2203
	line	120
	
l642:	
	line	121
	
l2203:	
	movlw	01h
u2845:
	clrc
	rlf	(___ftadd@f1),f
	rlf	(___ftadd@f1+1),f
	rlf	(___ftadd@f1+2),f
	addlw	-1
	skipz
	goto	u2845
	line	122
	movlw	low(01h)
	subwf	(___ftadd@exp1),f
	line	123
	
l2205:	
	movf	(___ftadd@exp2),w
	xorwf	(___ftadd@exp1),w
	skipnz
	goto	u2851
	goto	u2850
u2851:
	goto	l2211
u2850:
	
l2207:	
	movlw	low(01h)
	subwf	(___ftadd@sign),f
	movf	((___ftadd@sign)),w
	andlw	07h
	btfss	status,2
	goto	u2861
	goto	u2860
u2861:
	goto	l2203
u2860:
	goto	l2211
	
l644:	
	goto	l2211
	
l645:	
	line	124
	goto	l2211
	
l647:	
	line	125
	
l2209:	
	movlw	01h
u2875:
	clrc
	rrf	(___ftadd@f2+2),f
	rrf	(___ftadd@f2+1),f
	rrf	(___ftadd@f2),f
	addlw	-1
	skipz
	goto	u2875

	line	126
	movlw	(01h)
	movwf	(??___ftadd+0)+0
	movf	(??___ftadd+0)+0,w
	addwf	(___ftadd@exp2),f
	goto	l2211
	line	127
	
l646:	
	line	124
	
l2211:	
	movf	(___ftadd@exp1),w
	xorwf	(___ftadd@exp2),w
	skipz
	goto	u2881
	goto	u2880
u2881:
	goto	l2209
u2880:
	goto	l640
	
l648:	
	goto	l640
	line	128
	
l641:	
	line	129
	
l640:	
	btfss	(___ftadd@sign),(7)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l2215
u2890:
	line	131
	
l2213:	
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
	goto	l2215
	line	133
	
l649:	
	line	134
	
l2215:	
	btfss	(___ftadd@sign),(6)&7
	goto	u2901
	goto	u2900
u2901:
	goto	l2219
u2900:
	line	136
	
l2217:	
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
	goto	l2219
	line	138
	
l650:	
	line	139
	
l2219:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___ftadd@sign)
	line	140
	
l2221:	
	movf	(___ftadd@f1),w
	addwf	(___ftadd@f2),f
	movf	(___ftadd@f1+1),w
	clrz
	skipnc
	incf	(___ftadd@f1+1),w
	skipnz
	goto	u2911
	addwf	(___ftadd@f2+1),f
u2911:
	movf	(___ftadd@f1+2),w
	clrz
	skipnc
	incf	(___ftadd@f1+2),w
	skipnz
	goto	u2912
	addwf	(___ftadd@f2+2),f
u2912:

	line	141
	
l2223:	
	btfss	(___ftadd@f2+2),(23)&7
	goto	u2921
	goto	u2920
u2921:
	goto	l2229
u2920:
	line	142
	
l2225:	
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
	
l2227:	
	clrf	(___ftadd@sign)
	bsf	status,0
	rlf	(___ftadd@sign),f
	goto	l2229
	line	145
	
l651:	
	line	146
	
l2229:	
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
	goto	l626
	
l2231:	
	line	148
	
l626:	
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
	
l2093:	
	btfss	(___ftge@ff1+2),(23)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l2097
u2580:
	line	7
	
l2095:	
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
	goto	u2591
	goto	u2592
u2591:
	addwf	(??___ftge+0)+1,f
	
u2592:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u2593
	goto	u2594
u2593:
	addwf	(??___ftge+0)+2,f
	
u2594:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff1)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff1+2)
	goto	l2097
	
l746:	
	line	8
	
l2097:	
	btfss	(___ftge@ff2+2),(23)&7
	goto	u2601
	goto	u2600
u2601:
	goto	l2101
u2600:
	line	9
	
l2099:	
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
	goto	u2611
	goto	u2612
u2611:
	addwf	(??___ftge+0)+1,f
	
u2612:
	movf	2+(??___ftge+3)+0,w
	skipnc
	incfsz	2+(??___ftge+3)+0,w
	goto	u2613
	goto	u2614
u2613:
	addwf	(??___ftge+0)+2,f
	
u2614:
	movf	0+(??___ftge+0)+0,w
	movwf	(___ftge@ff2)
	movf	1+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+1)
	movf	2+(??___ftge+0)+0,w
	movwf	(___ftge@ff2+2)
	goto	l2101
	
l747:	
	line	10
	
l2101:	
	movlw	080h
	xorwf	(___ftge@ff1+2),f
	line	11
	
l2103:	
	movlw	080h
	xorwf	(___ftge@ff2+2),f
	line	12
	
l2105:	
	movf	(___ftge@ff2+2),w
	subwf	(___ftge@ff1+2),w
	skipz
	goto	u2625
	movf	(___ftge@ff2+1),w
	subwf	(___ftge@ff1+1),w
	skipz
	goto	u2625
	movf	(___ftge@ff2),w
	subwf	(___ftge@ff1),w
u2625:
	skipnc
	goto	u2621
	goto	u2620
u2621:
	goto	l2109
u2620:
	
l2107:	
	clrc
	
	goto	l748
	
l1945:	
	
l2109:	
	setc
	
	goto	l748
	
l1947:	
	goto	l748
	
l2111:	
	line	13
	
l748:	
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
	
l1949:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2230
	goto	l1953
u2230:
	
l1951:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2241
	goto	u2240
u2241:
	goto	l1959
u2240:
	goto	l1953
	
l913:	
	line	65
	
l1953:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l914
	
l1955:	
	goto	l914
	
l911:	
	line	66
	goto	l1959
	
l916:	
	line	67
	
l1957:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2255:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2255

	goto	l1959
	line	69
	
l915:	
	line	66
	
l1959:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2261
	goto	u2260
u2261:
	goto	l1957
u2260:
	goto	l918
	
l917:	
	line	70
	goto	l918
	
l919:	
	line	71
	
l1961:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l1963:	
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
	
l1965:	
	movlw	01h
u2275:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2275

	line	74
	
l918:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u2281
	goto	u2280
u2281:
	goto	l1961
u2280:
	goto	l1969
	
l920:	
	line	75
	goto	l1969
	
l922:	
	line	76
	
l1967:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u2295:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u2295
	goto	l1969
	line	78
	
l921:	
	line	75
	
l1969:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l1967
u2300:
	
l923:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l924
u2310:
	line	80
	
l1971:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l924:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l1973:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u2325:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u2320:
	addlw	-1
	skipz
	goto	u2325
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l1975:	
	movf	(___ftpack@sign),w
	skipz
	goto	u2330
	goto	l925
u2330:
	line	84
	
l1977:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l925:	
	line	85
	line	86
	
l914:	
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
