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
# 15 "C:\Users\hardik - admin\Desktop\desktop\royproj_level_pc\main.h"
	psect config,class=CONFIG,delta=2 ;#
# 15 "C:\Users\hardik - admin\Desktop\desktop\royproj_level_pc\main.h"
	dw 0x2F0A ;#
	FNCALL	_main,_MainSystemInitialize
	FNCALL	_main,_SendByteSerially
	FNCALL	_main,_currentlevel
	FNCALL	_main,_SeriallyDisplayByte
	FNCALL	_main,_Delay
	FNCALL	_main,_ReceiveByteSerially
	FNCALL	_main,___bmul
	FNCALL	_SeriallyDisplayByte,___awdiv
	FNCALL	_SeriallyDisplayByte,_SendByteSerially
	FNCALL	_SeriallyDisplayByte,___awmod
	FNCALL	_SeriallyDisplayByte,_Delay
	FNCALL	_MainSystemInitialize,_InitializeSerialCommunication
	FNROOT	_main
	global	_AT0
	global	_AT2
	global	_AT
	global	_AT1
	global	_AT3
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\hardik - admin\Desktop\desktop\royproj_level_pc\main.h"
	line	27

;initializer for _AT0
	retlw	043h
	retlw	075h
	retlw	072h
	retlw	072h
	retlw	065h
	retlw	06Eh
	retlw	074h
	retlw	020h
	retlw	06Ch
	retlw	065h
	retlw	076h
	retlw	065h
	retlw	06Ch
	retlw	03Ah
	retlw	0
	line	29

;initializer for _AT2
	retlw	04Eh
	retlw	065h
	retlw	077h
	retlw	020h
	retlw	06Ch
	retlw	065h
	retlw	076h
	retlw	065h
	retlw	06Ch
	retlw	03Ah
	retlw	0
	retlw	0
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	26

;initializer for _AT
	retlw	04Ch
	retlw	045h
	retlw	056h
	retlw	045h
	retlw	04Ch
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
	line	28

;initializer for _AT1
	retlw	045h
	retlw	06Eh
	retlw	074h
	retlw	065h
	retlw	072h
	retlw	020h
	retlw	053h
	retlw	065h
	retlw	074h
	retlw	020h
	retlw	070h
	retlw	06Fh
	retlw	069h
	retlw	06Eh
	retlw	074h
	retlw	03Ah
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	line	30

;initializer for _AT3
	retlw	053h
	retlw	065h
	retlw	074h
	retlw	020h
	retlw	050h
	retlw	06Fh
	retlw	069h
	retlw	06Eh
	retlw	074h
	retlw	020h
	retlw	072h
	retlw	065h
	retlw	061h
	retlw	063h
	retlw	068h
	retlw	065h
	retlw	064h
	retlw	0
	retlw	0
	retlw	0
	global	_Count
	global	_current
	global	_error
	global	_flag1
	global	_i
	global	_j
	global	_k
	global	_sp
	global	_temp
	global	_receivesp
	global	_PORTB
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
	global	_RCIF
_RCIF	set	101
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	global	_TXSTA
_TXSTA	set	152
	global	_RBPU
_RBPU	set	1039
	global	_SYNC
_SYNC	set	1220
	file	"LCD Interfacing.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_Count:
       ds      1

_current:
       ds      1

_error:
       ds      1

_flag1:
       ds      1

_i:
       ds      1

_j:
       ds      1

_k:
       ds      1

_sp:
       ds      1

_temp:
       ds      1

_receivesp:
       ds      20

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\hardik - admin\Desktop\desktop\royproj_level_pc\main.h"
	line	27
_AT0:
       ds      15

psect	dataBANK0
	file	"C:\Users\hardik - admin\Desktop\desktop\royproj_level_pc\main.h"
	line	29
_AT2:
       ds      12

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"C:\Users\hardik - admin\Desktop\desktop\royproj_level_pc\main.h"
	line	26
_AT:
       ds      30

psect	dataBANK1
	file	"C:\Users\hardik - admin\Desktop\desktop\royproj_level_pc\main.h"
	line	28
_AT1:
       ds      20

psect	dataBANK1
	file	"C:\Users\hardik - admin\Desktop\desktop\royproj_level_pc\main.h"
	line	30
_AT3:
       ds      20

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+01Dh)
	fcall	clear_ram
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
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK1
	movlw low(__pdataBANK1+70)
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
	movlw low(__pdataBANK0+27)
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
	global	?_SendByteSerially
?_SendByteSerially:	; 0 bytes @ 0x0
	global	??_SendByteSerially
??_SendByteSerially:	; 0 bytes @ 0x0
	global	?_currentlevel
?_currentlevel:	; 0 bytes @ 0x0
	global	??_currentlevel
??_currentlevel:	; 0 bytes @ 0x0
	global	?_SeriallyDisplayByte
?_SeriallyDisplayByte:	; 0 bytes @ 0x0
	global	??_ReceiveByteSerially
??_ReceiveByteSerially:	; 0 bytes @ 0x0
	global	?_InitializeSerialCommunication
?_InitializeSerialCommunication:	; 0 bytes @ 0x0
	global	??_InitializeSerialCommunication
??_InitializeSerialCommunication:	; 0 bytes @ 0x0
	global	?_Delay
?_Delay:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ReceiveByteSerially
?_ReceiveByteSerially:	; 1 bytes @ 0x0
	global	?___bmul
?___bmul:	; 1 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	SendByteSerially@byte
SendByteSerially@byte:	; 1 bytes @ 0x0
	global	___bmul@multiplicand
___bmul@multiplicand:	; 1 bytes @ 0x0
	global	Delay@time
Delay@time:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	??___bmul
??___bmul:	; 0 bytes @ 0x1
	ds	1
	global	??_Delay
??_Delay:	; 0 bytes @ 0x2
	global	___bmul@product
___bmul@product:	; 1 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	Delay@pause
Delay@pause:	; 1 bytes @ 0x3
	global	___bmul@multiplier
___bmul@multiplier:	; 1 bytes @ 0x3
	ds	1
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	ds	1
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x7
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x7
	ds	2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x9
	ds	2
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0xB
	ds	1
	global	??_SeriallyDisplayByte
??_SeriallyDisplayByte:	; 0 bytes @ 0xC
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x0
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x1
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x2
	ds	2
	global	SeriallyDisplayByte@Value
SeriallyDisplayByte@Value:	; 1 bytes @ 0x4
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x5
	ds	6
;;Data sizes: Strings 0, constant 0, data 97, bss 29, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     11      67
;; BANK1           80      0      70
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_SeriallyDisplayByte
;;   _SeriallyDisplayByte->___awdiv
;;   ___awdiv->___awmod
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_SeriallyDisplayByte
;;   _SeriallyDisplayByte->___awdiv
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
;;Main: autosize = 0, tempsize = 6, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 6     6      0     979
;;                                              5 BANK0      6     6      0
;;               _MainSystemInitialize
;;                   _SendByteSerially
;;                       _currentlevel
;;                _SeriallyDisplayByte
;;                              _Delay
;;                _ReceiveByteSerially
;;                             ___bmul
;; ---------------------------------------------------------------------------------
;; (1) _SeriallyDisplayByte                                  3     3      0     819
;;                                             12 COMMON     2     2      0
;;                                              4 BANK0      1     1      0
;;                            ___awdiv
;;                   _SendByteSerially
;;                            ___awmod
;;                              _Delay
;; ---------------------------------------------------------------------------------
;; (1) _MainSystemInitialize                                 0     0      0       0
;;      _InitializeSerialCommunication
;; ---------------------------------------------------------------------------------
;; (2) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     300
;;                                              7 COMMON     5     1      4
;;                                              0 BANK0      4     4      0
;;                            ___awmod (ARG)
;; ---------------------------------------------------------------------------------
;; (1) ___bmul                                               4     3      1      92
;;                                              0 COMMON     4     3      1
;; ---------------------------------------------------------------------------------
;; (2) _InitializeSerialCommunication                        0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _ReceiveByteSerially                                  0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _currentlevel                                         1     1      0       0
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _SendByteSerially                                     1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (1) _Delay                                                4     2      2      46
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _MainSystemInitialize
;;     _InitializeSerialCommunication
;;   _SendByteSerially
;;   _currentlevel
;;   _SeriallyDisplayByte
;;     ___awdiv
;;       ___awmod (ARG)
;;     _SendByteSerially
;;     ___awmod
;;     _Delay
;;   _Delay
;;   _ReceiveByteSerially
;;   ___bmul
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
;;BANK1               50      0      46       7       87.5%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      99      12        0.0%
;;ABS                  0      0      97       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50      B      43       5       83.8%
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
;;		line 8 in file "C:\Users\hardik - admin\Desktop\desktop\royproj_level_pc\main.c"
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
;;      Temps:          0       6       0       0       0
;;      Totals:         0       6       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_MainSystemInitialize
;;		_SendByteSerially
;;		_currentlevel
;;		_SeriallyDisplayByte
;;		_Delay
;;		_ReceiveByteSerially
;;		___bmul
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"C:\Users\hardik - admin\Desktop\desktop\royproj_level_pc\main.c"
	line	8
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	10
	
l3078:	
;main.c: 10: TRISB = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	11
	
l3080:	
;main.c: 11: TRISD=0x00;
	clrf	(136)^080h	;volatile
	line	12
	
l3082:	
;main.c: 12: RBPU=0;
	bcf	(1039/8)^080h,(1039)&7
	line	14
	
l3084:	
;main.c: 14: MainSystemInitialize();
	fcall	_MainSystemInitialize
	line	16
	
l3086:	
;main.c: 16: for(i=0;i<20;i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	
l3088:	
	movlw	(014h)
	subwf	(_i),w
	skipc
	goto	u3151
	goto	u3150
u3151:
	goto	l3092
u3150:
	goto	l3098
	
l3090:	
	goto	l3098
	line	17
	
l610:	
	line	18
	
l3092:	
;main.c: 17: {
;main.c: 18: SendByteSerially(AT[i]);
	movf	(_i),w
	addlw	_AT&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_SendByteSerially
	line	16
	
l3094:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_i),f
	
l3096:	
	movlw	(014h)
	subwf	(_i),w
	skipc
	goto	u3161
	goto	u3160
u3161:
	goto	l3092
u3160:
	goto	l3098
	
l611:	
	line	21
	
l3098:	
;main.c: 19: }
;main.c: 21: SendByteSerially(0x0D);
	movlw	(0Dh)
	fcall	_SendByteSerially
	line	22
;main.c: 22: SendByteSerially(0x0A);
	movlw	(0Ah)
	fcall	_SendByteSerially
	line	23
;main.c: 23: SendByteSerially(0x0D);
	movlw	(0Dh)
	fcall	_SendByteSerially
	line	24
;main.c: 24: SendByteSerially(0x0A);
	movlw	(0Ah)
	fcall	_SendByteSerially
	line	26
;main.c: 26: currentlevel();
	fcall	_currentlevel
	line	28
	
l3100:	
;main.c: 28: for(i=0;i<14;i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	
l3102:	
	movlw	(0Eh)
	subwf	(_i),w
	skipc
	goto	u3171
	goto	u3170
u3171:
	goto	l3106
u3170:
	goto	l3112
	
l3104:	
	goto	l3112
	line	29
	
l612:	
	line	30
	
l3106:	
;main.c: 29: {
;main.c: 30: SendByteSerially(AT0[i]);
	movf	(_i),w
	addlw	_AT0&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_SendByteSerially
	line	28
	
l3108:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_i),f
	
l3110:	
	movlw	(0Eh)
	subwf	(_i),w
	skipc
	goto	u3181
	goto	u3180
u3181:
	goto	l3106
u3180:
	goto	l3112
	
l613:	
	line	33
	
l3112:	
;main.c: 31: }
;main.c: 33: SeriallyDisplayByte(current);
	movf	(_current),w
	fcall	_SeriallyDisplayByte
	line	35
;main.c: 35: SendByteSerially(0x0D);
	movlw	(0Dh)
	fcall	_SendByteSerially
	line	36
;main.c: 36: SendByteSerially(0x0A);
	movlw	(0Ah)
	fcall	_SendByteSerially
	line	38
	
l3114:	
;main.c: 38: for(i=0;i<16;i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	
l3116:	
	movlw	(010h)
	subwf	(_i),w
	skipc
	goto	u3191
	goto	u3190
u3191:
	goto	l3120
u3190:
	goto	l3126
	
l3118:	
	goto	l3126
	line	39
	
l614:	
	line	40
	
l3120:	
;main.c: 39: {
;main.c: 40: SendByteSerially(AT1[i]);
	movf	(_i),w
	addlw	_AT1&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_SendByteSerially
	line	38
	
l3122:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_i),f
	
l3124:	
	movlw	(010h)
	subwf	(_i),w
	skipc
	goto	u3201
	goto	u3200
u3201:
	goto	l3120
u3200:
	goto	l3126
	
l615:	
	line	43
	
l3126:	
;main.c: 41: }
;main.c: 43: Delay(500);
	movlw	low(01F4h)
	movwf	(?_Delay)
	movlw	high(01F4h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	44
	
l3128:	
;main.c: 44: j=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_j)
	goto	l3130
	line	46
;main.c: 46: do
	
l616:	
	line	48
	
l3130:	
;main.c: 47: {
;main.c: 48: receivesp[j]=ReceiveByteSerially();
	fcall	_ReceiveByteSerially
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(_j),w
	addlw	_receivesp&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	49
	
l3132:	
;main.c: 49: j++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_j),f
	line	51
	
l3134:	
;main.c: 50: }
;main.c: 51: while(receivesp[j-1]!='.');
	movf	(_j),w
	addlw	0FFh
	addlw	_receivesp&0ffh
	movwf	fsr0
	movf	indf,w
	xorlw	02Eh
	skipz
	goto	u3211
	goto	u3210
u3211:
	goto	l3130
u3210:
	goto	l3136
	
l617:	
	line	53
	
l3136:	
;main.c: 53: for(i=0;i<2;i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_i)
	
l3138:	
	movlw	(02h)
	subwf	(_i),w
	skipc
	goto	u3221
	goto	u3220
u3221:
	goto	l3142
u3220:
	goto	l3148
	
l3140:	
	goto	l3148
	line	54
	
l618:	
	line	55
	
l3142:	
;main.c: 54: {
;main.c: 55: SendByteSerially(receivesp[i]);
	movf	(_i),w
	addlw	_receivesp&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_SendByteSerially
	line	53
	
l3144:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_i),f
	
l3146:	
	movlw	(02h)
	subwf	(_i),w
	skipc
	goto	u3231
	goto	u3230
u3231:
	goto	l3142
u3230:
	goto	l3148
	
l619:	
	line	58
	
l3148:	
;main.c: 56: }
;main.c: 58: SendByteSerially(0x0D);
	movlw	(0Dh)
	fcall	_SendByteSerially
	line	59
;main.c: 59: SendByteSerially(0x0A);
	movlw	(0Ah)
	fcall	_SendByteSerially
	line	61
;main.c: 61: sp =((receivesp[0]-48)*10)+(receivesp[1]-48);
	movlw	(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?___bmul)
	movf	(_receivesp),w
	addlw	-48
	fcall	___bmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+1)+0
	movf	0+(_receivesp)+01h,w
	addwf	0+(??_main+1)+0,w
	addlw	-48
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	movwf	(_sp)
	line	63
;main.c: 63: while(1)
	
l620:	
	line	66
;main.c: 64: {
;main.c: 66: currentlevel();
	fcall	_currentlevel
	line	67
	
l3150:	
;main.c: 67: for(i=0;i<10;i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	
l3152:	
	movlw	(0Ah)
	subwf	(_i),w
	skipc
	goto	u3241
	goto	u3240
u3241:
	goto	l3156
u3240:
	goto	l3162
	
l3154:	
	goto	l3162
	line	68
	
l621:	
	line	69
	
l3156:	
;main.c: 68: {
;main.c: 69: SendByteSerially(AT2[i]);
	movf	(_i),w
	addlw	_AT2&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_SendByteSerially
	line	67
	
l3158:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_i),f
	
l3160:	
	movlw	(0Ah)
	subwf	(_i),w
	skipc
	goto	u3251
	goto	u3250
u3251:
	goto	l3156
u3250:
	goto	l3162
	
l622:	
	line	72
	
l3162:	
;main.c: 70: }
;main.c: 72: SeriallyDisplayByte(current);
	movf	(_current),w
	fcall	_SeriallyDisplayByte
	line	74
;main.c: 74: SendByteSerially(0x0D);
	movlw	(0Dh)
	fcall	_SendByteSerially
	line	75
;main.c: 75: SendByteSerially(0x0A);
	movlw	(0Ah)
	fcall	_SendByteSerially
	line	76
	
l3164:	
;main.c: 76: if((current-sp)<0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_sp),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	btfsc	(??_main+0)+0,7
	decf	(??_main+0)+0+1,f
	comf	(??_main+0)+0,f
	comf	(??_main+0)+1,f
	incf	(??_main+0)+0,f
	skipnz
	incf	(??_main+0)+1,f
	movf	(_current),w
	movwf	(??_main+2)+0
	clrf	(??_main+2)+0+1
	btfsc	(??_main+2)+0,7
	decf	(??_main+2)+0+1,f
	movf	0+(??_main+0)+0,w
	addwf	0+(??_main+2)+0,w
	movf	1+(??_main+2)+0,w
	skipnc
	incf	1+(??_main+2)+0,w
	addwf	1+(??_main+0)+0,w
	movwf	(??_main+4)+0
	btfss	(??_main+4)+0,7
	goto	u3261
	goto	u3260
u3261:
	goto	l3216
u3260:
	line	78
	
l3166:	
;main.c: 77: {
;main.c: 78: error=sp-current;
	decf	(_current),w
	xorlw	0ffh
	addwf	(_sp),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_error)
	line	79
	
l3168:	
;main.c: 79: if((error>0)&&(error<=10))
	movf	(_error),w
	xorlw	80h
	addlw	-((01h)^80h)
	skipc
	goto	u3271
	goto	u3270
u3271:
	goto	l3174
u3270:
	
l3170:	
	movf	(_error),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipnc
	goto	u3281
	goto	u3280
u3281:
	goto	l3174
u3280:
	line	80
	
l3172:	
;main.c: 80: {PORTD=0x01;}
	movlw	(01h)
	movwf	(8)	;volatile
	goto	l620
	line	81
	
l624:	
	
l3174:	
;main.c: 81: else if((error>10)&&(error<=20))
	movf	(_error),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u3291
	goto	u3290
u3291:
	goto	l3180
u3290:
	
l3176:	
	movf	(_error),w
	xorlw	80h
	addlw	-((015h)^80h)
	skipnc
	goto	u3301
	goto	u3300
u3301:
	goto	l3180
u3300:
	line	82
	
l3178:	
;main.c: 82: {PORTD=0x03;}
	movlw	(03h)
	movwf	(8)	;volatile
	goto	l620
	line	83
	
l626:	
	
l3180:	
;main.c: 83: else if((error>20)&&(error<=30))
	movf	(_error),w
	xorlw	80h
	addlw	-((015h)^80h)
	skipc
	goto	u3311
	goto	u3310
u3311:
	goto	l3186
u3310:
	
l3182:	
	movf	(_error),w
	xorlw	80h
	addlw	-((01Fh)^80h)
	skipnc
	goto	u3321
	goto	u3320
u3321:
	goto	l3186
u3320:
	line	84
	
l3184:	
;main.c: 84: {PORTD=0x07;}
	movlw	(07h)
	movwf	(8)	;volatile
	goto	l620
	line	85
	
l628:	
	
l3186:	
;main.c: 85: else if((error>30)&&(error<=40))
	movf	(_error),w
	xorlw	80h
	addlw	-((01Fh)^80h)
	skipc
	goto	u3331
	goto	u3330
u3331:
	goto	l3192
u3330:
	
l3188:	
	movf	(_error),w
	xorlw	80h
	addlw	-((029h)^80h)
	skipnc
	goto	u3341
	goto	u3340
u3341:
	goto	l3192
u3340:
	line	86
	
l3190:	
;main.c: 86: {PORTD=0x0f;}
	movlw	(0Fh)
	movwf	(8)	;volatile
	goto	l620
	line	87
	
l630:	
	
l3192:	
;main.c: 87: else if((error>40)&&(error<=50))
	movf	(_error),w
	xorlw	80h
	addlw	-((029h)^80h)
	skipc
	goto	u3351
	goto	u3350
u3351:
	goto	l3198
u3350:
	
l3194:	
	movf	(_error),w
	xorlw	80h
	addlw	-((033h)^80h)
	skipnc
	goto	u3361
	goto	u3360
u3361:
	goto	l3198
u3360:
	line	88
	
l3196:	
;main.c: 88: {PORTD=0x1f;}
	movlw	(01Fh)
	movwf	(8)	;volatile
	goto	l620
	line	89
	
l632:	
	
l3198:	
;main.c: 89: else if((error>50)&&(error<=60))
	movf	(_error),w
	xorlw	80h
	addlw	-((033h)^80h)
	skipc
	goto	u3371
	goto	u3370
u3371:
	goto	l3204
u3370:
	
l3200:	
	movf	(_error),w
	xorlw	80h
	addlw	-((03Dh)^80h)
	skipnc
	goto	u3381
	goto	u3380
u3381:
	goto	l3204
u3380:
	line	90
	
l3202:	
;main.c: 90: {PORTD=0x3f;}
	movlw	(03Fh)
	movwf	(8)	;volatile
	goto	l620
	line	91
	
l634:	
	
l3204:	
;main.c: 91: else if((error>60)&&(error<=70))
	movf	(_error),w
	xorlw	80h
	addlw	-((03Dh)^80h)
	skipc
	goto	u3391
	goto	u3390
u3391:
	goto	l3210
u3390:
	
l3206:	
	movf	(_error),w
	xorlw	80h
	addlw	-((047h)^80h)
	skipnc
	goto	u3401
	goto	u3400
u3401:
	goto	l3210
u3400:
	line	92
	
l3208:	
;main.c: 92: {PORTD=0x7f;}
	movlw	(07Fh)
	movwf	(8)	;volatile
	goto	l620
	line	93
	
l636:	
	
l3210:	
;main.c: 93: else if((error>70)&&(error<=80))
	movf	(_error),w
	xorlw	80h
	addlw	-((047h)^80h)
	skipc
	goto	u3411
	goto	u3410
u3411:
	goto	l620
u3410:
	
l3212:	
	movf	(_error),w
	xorlw	80h
	addlw	-((051h)^80h)
	skipnc
	goto	u3421
	goto	u3420
u3421:
	goto	l620
u3420:
	line	94
	
l3214:	
;main.c: 94: {PORTD=0xff;}
	movlw	(0FFh)
	movwf	(8)	;volatile
	goto	l620
	
l638:	
	goto	l620
	line	97
	
l637:	
	goto	l620
	
l635:	
	goto	l620
	
l633:	
	goto	l620
	
l631:	
	goto	l620
	
l629:	
	goto	l620
	
l627:	
	goto	l620
	
l625:	
;main.c: 97: }
	goto	l620
	line	98
	
l623:	
	
l3216:	
;main.c: 98: else if((current-sp)>0)
	movf	(_sp),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	btfsc	(??_main+0)+0,7
	decf	(??_main+0)+0+1,f
	comf	(??_main+0)+0,f
	comf	(??_main+0)+1,f
	incf	(??_main+0)+0,f
	skipnz
	incf	(??_main+0)+1,f
	movf	(_current),w
	movwf	(??_main+2)+0
	clrf	(??_main+2)+0+1
	btfsc	(??_main+2)+0,7
	decf	(??_main+2)+0+1,f
	movf	0+(??_main+0)+0,w
	addwf	0+(??_main+2)+0,w
	movwf	(??_main+4)+0
	movf	1+(??_main+0)+0,w
	skipnc
	incf	1+(??_main+0)+0,w
	addwf	1+(??_main+2)+0,w
	movwf	1+(??_main+4)+0
	movf	1+(??_main+4)+0,w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3435
	movlw	low(01h)
	subwf	0+(??_main+4)+0,w
u3435:

	skipc
	goto	u3431
	goto	u3430
u3431:
	goto	l3268
u3430:
	line	100
	
l3218:	
;main.c: 99: {
;main.c: 100: error=current-sp;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	decf	(_sp),w
	xorlw	0ffh
	addwf	(_current),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_error)
	line	101
	
l3220:	
;main.c: 101: if((error>0)&&(error<=10))
	movf	(_error),w
	xorlw	80h
	addlw	-((01h)^80h)
	skipc
	goto	u3441
	goto	u3440
u3441:
	goto	l3226
u3440:
	
l3222:	
	movf	(_error),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipnc
	goto	u3451
	goto	u3450
u3451:
	goto	l3226
u3450:
	line	102
	
l3224:	
;main.c: 102: {PORTD=0x01;}
	movlw	(01h)
	movwf	(8)	;volatile
	goto	l620
	line	103
	
l641:	
	
l3226:	
;main.c: 103: else if((error>10)&&(error<=20))
	movf	(_error),w
	xorlw	80h
	addlw	-((0Bh)^80h)
	skipc
	goto	u3461
	goto	u3460
u3461:
	goto	l3232
u3460:
	
l3228:	
	movf	(_error),w
	xorlw	80h
	addlw	-((015h)^80h)
	skipnc
	goto	u3471
	goto	u3470
u3471:
	goto	l3232
u3470:
	line	104
	
l3230:	
;main.c: 104: {PORTD=0x03;}
	movlw	(03h)
	movwf	(8)	;volatile
	goto	l620
	line	105
	
l643:	
	
l3232:	
;main.c: 105: else if((error>20)&&(error<=30))
	movf	(_error),w
	xorlw	80h
	addlw	-((015h)^80h)
	skipc
	goto	u3481
	goto	u3480
u3481:
	goto	l3238
u3480:
	
l3234:	
	movf	(_error),w
	xorlw	80h
	addlw	-((01Fh)^80h)
	skipnc
	goto	u3491
	goto	u3490
u3491:
	goto	l3238
u3490:
	line	106
	
l3236:	
;main.c: 106: {PORTD=0x07;}
	movlw	(07h)
	movwf	(8)	;volatile
	goto	l620
	line	107
	
l645:	
	
l3238:	
;main.c: 107: else if((error>30)&&(error<=40))
	movf	(_error),w
	xorlw	80h
	addlw	-((01Fh)^80h)
	skipc
	goto	u3501
	goto	u3500
u3501:
	goto	l3244
u3500:
	
l3240:	
	movf	(_error),w
	xorlw	80h
	addlw	-((029h)^80h)
	skipnc
	goto	u3511
	goto	u3510
u3511:
	goto	l3244
u3510:
	line	108
	
l3242:	
;main.c: 108: {PORTD=0x0f;}
	movlw	(0Fh)
	movwf	(8)	;volatile
	goto	l620
	line	109
	
l647:	
	
l3244:	
;main.c: 109: else if((error>40)&&(error<=50))
	movf	(_error),w
	xorlw	80h
	addlw	-((029h)^80h)
	skipc
	goto	u3521
	goto	u3520
u3521:
	goto	l3250
u3520:
	
l3246:	
	movf	(_error),w
	xorlw	80h
	addlw	-((033h)^80h)
	skipnc
	goto	u3531
	goto	u3530
u3531:
	goto	l3250
u3530:
	line	110
	
l3248:	
;main.c: 110: {PORTD=0x1f;}
	movlw	(01Fh)
	movwf	(8)	;volatile
	goto	l620
	line	111
	
l649:	
	
l3250:	
;main.c: 111: else if((error>50)&&(error<=60))
	movf	(_error),w
	xorlw	80h
	addlw	-((033h)^80h)
	skipc
	goto	u3541
	goto	u3540
u3541:
	goto	l3256
u3540:
	
l3252:	
	movf	(_error),w
	xorlw	80h
	addlw	-((03Dh)^80h)
	skipnc
	goto	u3551
	goto	u3550
u3551:
	goto	l3256
u3550:
	line	112
	
l3254:	
;main.c: 112: {PORTD=0x3f;}
	movlw	(03Fh)
	movwf	(8)	;volatile
	goto	l620
	line	113
	
l651:	
	
l3256:	
;main.c: 113: else if((error>60)&&(error<=70))
	movf	(_error),w
	xorlw	80h
	addlw	-((03Dh)^80h)
	skipc
	goto	u3561
	goto	u3560
u3561:
	goto	l3262
u3560:
	
l3258:	
	movf	(_error),w
	xorlw	80h
	addlw	-((047h)^80h)
	skipnc
	goto	u3571
	goto	u3570
u3571:
	goto	l3262
u3570:
	line	114
	
l3260:	
;main.c: 114: {PORTD=0x7f;}
	movlw	(07Fh)
	movwf	(8)	;volatile
	goto	l620
	line	115
	
l653:	
	
l3262:	
;main.c: 115: else if((error>70)&&(error<=80))
	movf	(_error),w
	xorlw	80h
	addlw	-((047h)^80h)
	skipc
	goto	u3581
	goto	u3580
u3581:
	goto	l620
u3580:
	
l3264:	
	movf	(_error),w
	xorlw	80h
	addlw	-((051h)^80h)
	skipnc
	goto	u3591
	goto	u3590
u3591:
	goto	l620
u3590:
	line	116
	
l3266:	
;main.c: 116: {PORTD=0xff;}
	movlw	(0FFh)
	movwf	(8)	;volatile
	goto	l620
	
l655:	
	goto	l620
	line	118
	
l654:	
	goto	l620
	
l652:	
	goto	l620
	
l650:	
	goto	l620
	
l648:	
	goto	l620
	
l646:	
	goto	l620
	
l644:	
	goto	l620
	
l642:	
;main.c: 118: }
	goto	l620
	line	120
	
l640:	
	
l3268:	
;main.c: 120: else if(current==sp)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_current),w
	xorwf	(_sp),w
	skipz
	goto	u3601
	goto	u3600
u3601:
	goto	l620
u3600:
	line	122
	
l3270:	
;main.c: 121: {
;main.c: 122: PORTD=0x00;
	clrf	(8)	;volatile
	line	123
	
l3272:	
;main.c: 123: for(i=0;i<17;i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_i)
	
l3274:	
	movlw	(011h)
	subwf	(_i),w
	skipc
	goto	u3611
	goto	u3610
u3611:
	goto	l3278
u3610:
	goto	l3284
	
l3276:	
	goto	l3284
	line	124
	
l658:	
	line	125
	
l3278:	
;main.c: 124: {
;main.c: 125: SendByteSerially(AT3[i]);
	movf	(_i),w
	addlw	_AT3&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_SendByteSerially
	line	123
	
l3280:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_i),f
	
l3282:	
	movlw	(011h)
	subwf	(_i),w
	skipc
	goto	u3621
	goto	u3620
u3621:
	goto	l3278
u3620:
	goto	l3284
	
l659:	
	line	128
	
l3284:	
;main.c: 126: }
;main.c: 128: SendByteSerially(0x0D);
	movlw	(0Dh)
	fcall	_SendByteSerially
	line	129
;main.c: 129: SendByteSerially(0x0A);
	movlw	(0Ah)
	fcall	_SendByteSerially
	line	130
;main.c: 130: break;
	goto	l662
	line	131
	
l657:	
	goto	l620
	line	132
	
l656:	
	goto	l620
	
l639:	
	goto	l620
	
l661:	
	line	63
	goto	l620
	
l660:	
	line	133
	
l662:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_SeriallyDisplayByte
psect	text250,local,class=CODE,delta=2
global __ptext250
__ptext250:

;; *************** function _SeriallyDisplayByte *****************
;; Defined at:
;;		line 31 in file "C:\Users\hardik - admin\Desktop\desktop\royproj_level_pc\serial.c"
;; Parameters:    Size  Location     Type
;;  Value           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  Value           1    4[BANK0 ] unsigned char 
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
;;      Temps:          2       0       0       0       0
;;      Totals:         2       1       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awdiv
;;		_SendByteSerially
;;		___awmod
;;		_Delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text250
	file	"C:\Users\hardik - admin\Desktop\desktop\royproj_level_pc\serial.c"
	line	31
	global	__size_of_SeriallyDisplayByte
	__size_of_SeriallyDisplayByte	equ	__end_of_SeriallyDisplayByte-_SeriallyDisplayByte
	
_SeriallyDisplayByte:	
	opt	stack 6
; Regs used in _SeriallyDisplayByte: [wreg+status,2+status,0+pclath+cstack]
;SeriallyDisplayByte@Value stored from wreg
	line	33
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(SeriallyDisplayByte@Value)
	
l3056:	
;serial.c: 32: {
;serial.c: 33: if(( Value / 100 ) == 0)
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(SeriallyDisplayByte@Value),w
	movwf	(??_SeriallyDisplayByte+0)+0
	clrf	(??_SeriallyDisplayByte+0)+0+1
	movf	0+(??_SeriallyDisplayByte+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_SeriallyDisplayByte+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	((1+(?___awdiv))),w
	iorwf	((0+(?___awdiv))),w
	skipz
	goto	u3121
	goto	u3120
u3121:
	goto	l3060
u3120:
	line	34
	
l3058:	
;serial.c: 34: SendByteSerially(0x20);
	movlw	(020h)
	fcall	_SendByteSerially
	goto	l1264
	line	35
	
l1263:	
	line	36
	
l3060:	
;serial.c: 35: else
;serial.c: 36: SendByteSerially((Value / 100) | 0x30);
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SeriallyDisplayByte@Value),w
	movwf	(??_SeriallyDisplayByte+0)+0
	clrf	(??_SeriallyDisplayByte+0)+0+1
	movf	0+(??_SeriallyDisplayByte+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_SeriallyDisplayByte+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	iorlw	030h
	fcall	_SendByteSerially
	
l1264:	
	line	38
;serial.c: 38: if(((Value % 100) / 10) == 0)
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SeriallyDisplayByte@Value),w
	movwf	(??_SeriallyDisplayByte+0)+0
	clrf	(??_SeriallyDisplayByte+0)+0+1
	movf	0+(??_SeriallyDisplayByte+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_SeriallyDisplayByte+0)+0,w
	movwf	1+(?___awmod)+02h
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	((1+(?___awdiv))),w
	iorwf	((0+(?___awdiv))),w
	skipz
	goto	u3131
	goto	u3130
u3131:
	goto	l3068
u3130:
	line	39
	
l3062:	
;serial.c: 39: if(( Value / 100 ) == 0)
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SeriallyDisplayByte@Value),w
	movwf	(??_SeriallyDisplayByte+0)+0
	clrf	(??_SeriallyDisplayByte+0)+0+1
	movf	0+(??_SeriallyDisplayByte+0)+0,w
	movwf	0+(?___awdiv)+02h
	movf	1+(??_SeriallyDisplayByte+0)+0,w
	movwf	1+(?___awdiv)+02h
	fcall	___awdiv
	movf	((1+(?___awdiv))),w
	iorwf	((0+(?___awdiv))),w
	skipz
	goto	u3141
	goto	u3140
u3141:
	goto	l3066
u3140:
	line	40
	
l3064:	
;serial.c: 40: SendByteSerially(0x20);
	movlw	(020h)
	fcall	_SendByteSerially
	goto	l1268
	line	41
	
l1266:	
	line	42
	
l3066:	
;serial.c: 41: else
;serial.c: 42: SendByteSerially(((Value % 100) / 10) | 0x30);
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SeriallyDisplayByte@Value),w
	movwf	(??_SeriallyDisplayByte+0)+0
	clrf	(??_SeriallyDisplayByte+0)+0+1
	movf	0+(??_SeriallyDisplayByte+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_SeriallyDisplayByte+0)+0,w
	movwf	1+(?___awmod)+02h
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	iorlw	030h
	fcall	_SendByteSerially
	goto	l1268
	
l1267:	
	goto	l1268
	line	43
	
l1265:	
	line	44
	
l3068:	
;serial.c: 43: else
;serial.c: 44: SendByteSerially(((Value % 100) / 10) | 0x30);
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SeriallyDisplayByte@Value),w
	movwf	(??_SeriallyDisplayByte+0)+0
	clrf	(??_SeriallyDisplayByte+0)+0+1
	movf	0+(??_SeriallyDisplayByte+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_SeriallyDisplayByte+0)+0,w
	movwf	1+(?___awmod)+02h
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(0+(?___awmod)),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(0+(?___awdiv)),w
	iorlw	030h
	fcall	_SendByteSerially
	
l1268:	
	line	46
;serial.c: 46: SendByteSerially((Value % 10) | 0x30);
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(SeriallyDisplayByte@Value),w
	movwf	(??_SeriallyDisplayByte+0)+0
	clrf	(??_SeriallyDisplayByte+0)+0+1
	movf	0+(??_SeriallyDisplayByte+0)+0,w
	movwf	0+(?___awmod)+02h
	movf	1+(??_SeriallyDisplayByte+0)+0,w
	movwf	1+(?___awmod)+02h
	fcall	___awmod
	movf	(0+(?___awmod)),w
	iorlw	030h
	fcall	_SendByteSerially
	line	48
	
l3070:	
;serial.c: 47: }
;serial.c: 48: Value++;
	movlw	(01h)
	movwf	(??_SeriallyDisplayByte+0)+0
	movf	(??_SeriallyDisplayByte+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(SeriallyDisplayByte@Value),f
	line	49
	
l3072:	
;serial.c: 49: SendByteSerially(0x0D);
	movlw	(0Dh)
	fcall	_SendByteSerially
	line	50
	
l3074:	
;serial.c: 50: SendByteSerially(0x0A);
	movlw	(0Ah)
	fcall	_SendByteSerially
	line	51
	
l3076:	
;serial.c: 51: Delay(500);
	movlw	low(01F4h)
	movwf	(?_Delay)
	movlw	high(01F4h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	53
	
l1269:	
	return
	opt stack 0
GLOBAL	__end_of_SeriallyDisplayByte
	__end_of_SeriallyDisplayByte:
;; =============== function _SeriallyDisplayByte ends ============

	signat	_SeriallyDisplayByte,4216
	global	_MainSystemInitialize
psect	text251,local,class=CODE,delta=2
global __ptext251
__ptext251:

;; *************** function _MainSystemInitialize *****************
;; Defined at:
;;		line 136 in file "C:\Users\hardik - admin\Desktop\desktop\royproj_level_pc\main.c"
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
;;		_InitializeSerialCommunication
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text251
	file	"C:\Users\hardik - admin\Desktop\desktop\royproj_level_pc\main.c"
	line	136
	global	__size_of_MainSystemInitialize
	__size_of_MainSystemInitialize	equ	__end_of_MainSystemInitialize-_MainSystemInitialize
	
_MainSystemInitialize:	
	opt	stack 6
; Regs used in _MainSystemInitialize: [wreg+status,2+status,0+pclath+cstack]
	line	137
	
l3054:	
;main.c: 137: InitializeSerialCommunication();
	fcall	_InitializeSerialCommunication
	line	138
	
l665:	
	return
	opt stack 0
GLOBAL	__end_of_MainSystemInitialize
	__end_of_MainSystemInitialize:
;; =============== function _MainSystemInitialize ends ============

	signat	_MainSystemInitialize,88
	global	___awmod
psect	text252,local,class=CODE,delta=2
global __ptext252
__ptext252:

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
;;		_SeriallyDisplayByte
;; This function uses a non-reentrant model
;;
psect	text252
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l3018:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l3020:	
	btfss	(___awmod@dividend+1),7
	goto	u3031
	goto	u3030
u3031:
	goto	l3024
u3030:
	line	10
	
l3022:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l3024
	line	12
	
l1486:	
	line	13
	
l3024:	
	btfss	(___awmod@divisor+1),7
	goto	u3041
	goto	u3040
u3041:
	goto	l3028
u3040:
	line	14
	
l3026:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l3028
	
l1487:	
	line	15
	
l3028:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3051
	goto	u3050
u3051:
	goto	l3046
u3050:
	line	16
	
l3030:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l3036
	
l1490:	
	line	18
	
l3032:	
	movlw	01h
	
u3065:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3065
	line	19
	
l3034:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l3036
	line	20
	
l1489:	
	line	17
	
l3036:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3071
	goto	u3070
u3071:
	goto	l3032
u3070:
	goto	l3038
	
l1491:	
	goto	l3038
	line	21
	
l1492:	
	line	22
	
l3038:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3085
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3085:
	skipc
	goto	u3081
	goto	u3080
u3081:
	goto	l3042
u3080:
	line	23
	
l3040:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l3042
	
l1493:	
	line	24
	
l3042:	
	movlw	01h
	
u3095:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3095
	line	25
	
l3044:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3101
	goto	u3100
u3101:
	goto	l3038
u3100:
	goto	l3046
	
l1494:	
	goto	l3046
	line	26
	
l1488:	
	line	27
	
l3046:	
	movf	(___awmod@sign),w
	skipz
	goto	u3110
	goto	l3050
u3110:
	line	28
	
l3048:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l3050
	
l1495:	
	line	29
	
l3050:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1496
	
l3052:	
	line	30
	
l1496:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text253,local,class=CODE,delta=2
global __ptext253
__ptext253:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    7[COMMON] int 
;;  dividend        2    9[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    2[BANK0 ] int 
;;  sign            1    1[BANK0 ] unsigned char 
;;  counter         1    0[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    7[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       4       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       4       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_SeriallyDisplayByte
;; This function uses a non-reentrant model
;;
psect	text253
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2980:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@sign)
	line	10
	
l2982:	
	btfss	(___awdiv@divisor+1),7
	goto	u2931
	goto	u2930
u2931:
	goto	l2986
u2930:
	line	11
	
l2984:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2986
	line	13
	
l1418:	
	line	14
	
l2986:	
	btfss	(___awdiv@dividend+1),7
	goto	u2941
	goto	u2940
u2941:
	goto	l1419
u2940:
	line	15
	
l2988:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2990:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l1419:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2951
	goto	u2950
u2951:
	goto	l3010
u2950:
	line	20
	
l2992:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2998
	
l1422:	
	line	22
	
l2994:	
	movlw	01h
	
u2965:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2965
	line	23
	
l2996:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2998
	line	24
	
l1421:	
	line	21
	
l2998:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2971
	goto	u2970
u2971:
	goto	l2994
u2970:
	goto	l3000
	
l1423:	
	goto	l3000
	line	25
	
l1424:	
	line	26
	
l3000:	
	movlw	01h
	
u2985:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2985
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2995
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2995:
	skipc
	goto	u2991
	goto	u2990
u2991:
	goto	l3006
u2990:
	line	28
	
l3002:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3004:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3006
	line	30
	
l1425:	
	line	31
	
l3006:	
	movlw	01h
	
u3005:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3005
	line	32
	
l3008:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l3000
u3010:
	goto	l3010
	
l1426:	
	goto	l3010
	line	33
	
l1420:	
	line	34
	
l3010:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3020
	goto	l3014
u3020:
	line	35
	
l3012:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3014
	
l1427:	
	line	36
	
l3014:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1428
	
l3016:	
	line	37
	
l1428:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___bmul
psect	text254,local,class=CODE,delta=2
global __ptext254
__ptext254:

;; *************** function ___bmul *****************
;; Defined at:
;;		line 3 in file "bmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      1    wreg     unsigned char 
;;  multiplicand    1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  multiplier      1    3[COMMON] unsigned char 
;;  product         1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text254
	file	"C:\Program Files (x86)\HI-TECH Software\PICC\9.80\sources\bmul.c"
	line	3
	global	__size_of___bmul
	__size_of___bmul	equ	__end_of___bmul-___bmul
	
___bmul:	
	opt	stack 7
; Regs used in ___bmul: [wreg+status,2+status,0]
;___bmul@multiplier stored from wreg
	movwf	(___bmul@multiplier)
	line	4
	
l2964:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___bmul@product)
	goto	l2966
	line	6
	
l1272:	
	line	7
	
l2966:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u2911
	goto	u2910
u2911:
	goto	l2970
u2910:
	line	8
	
l2968:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l2970
	
l1273:	
	line	9
	
l2970:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	10
	
l2972:	
	clrc
	rrf	(___bmul@multiplier),f

	line	11
	
l2974:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u2921
	goto	u2920
u2921:
	goto	l2966
u2920:
	goto	l2976
	
l1274:	
	line	12
	
l2976:	
	movf	(___bmul@product),w
	goto	l1275
	
l2978:	
	line	13
	
l1275:	
	return
	opt stack 0
GLOBAL	__end_of___bmul
	__end_of___bmul:
;; =============== function ___bmul ends ============

	signat	___bmul,8313
	global	_InitializeSerialCommunication
psect	text255,local,class=CODE,delta=2
global __ptext255
__ptext255:

;; *************** function _InitializeSerialCommunication *****************
;; Defined at:
;;		line 6 in file "C:\Users\hardik - admin\Desktop\desktop\royproj_level_pc\serial.c"
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
psect	text255
	file	"C:\Users\hardik - admin\Desktop\desktop\royproj_level_pc\serial.c"
	line	6
	global	__size_of_InitializeSerialCommunication
	__size_of_InitializeSerialCommunication	equ	__end_of_InitializeSerialCommunication-_InitializeSerialCommunication
	
_InitializeSerialCommunication:	
	opt	stack 6
; Regs used in _InitializeSerialCommunication: [wreg]
	line	8
	
l2960:	
;serial.c: 8: SPBRG = ((int)(16000000L/(16UL * 9600) -1));
	movlw	(067h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	9
;serial.c: 9: RCSTA = 0x90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	10
;serial.c: 10: TXSTA = 0x24;
	movlw	(024h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	11
	
l2962:	
;serial.c: 11: SYNC=0;
	bcf	(1220/8)^080h,(1220)&7
	line	12
	
l1248:	
	return
	opt stack 0
GLOBAL	__end_of_InitializeSerialCommunication
	__end_of_InitializeSerialCommunication:
;; =============== function _InitializeSerialCommunication ends ============

	signat	_InitializeSerialCommunication,88
	global	_ReceiveByteSerially
psect	text256,local,class=CODE,delta=2
global __ptext256
__ptext256:

;; *************** function _ReceiveByteSerially *****************
;; Defined at:
;;		line 23 in file "C:\Users\hardik - admin\Desktop\desktop\royproj_level_pc\serial.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text256
	file	"C:\Users\hardik - admin\Desktop\desktop\royproj_level_pc\serial.c"
	line	23
	global	__size_of_ReceiveByteSerially
	__size_of_ReceiveByteSerially	equ	__end_of_ReceiveByteSerially-_ReceiveByteSerially
	
_ReceiveByteSerially:	
	opt	stack 7
; Regs used in _ReceiveByteSerially: [wreg]
	line	25
	
l2954:	
;serial.c: 25: while(!RCIF)
	goto	l1257
	
l1258:	
	line	26
;serial.c: 26: continue;
	
l1257:	
	line	25
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u2901
	goto	u2900
u2901:
	goto	l1257
u2900:
	goto	l2956
	
l1259:	
	line	27
	
l2956:	
;serial.c: 27: return RCREG;
	movf	(26),w	;volatile
	goto	l1260
	
l2958:	
	line	28
	
l1260:	
	return
	opt stack 0
GLOBAL	__end_of_ReceiveByteSerially
	__end_of_ReceiveByteSerially:
;; =============== function _ReceiveByteSerially ends ============

	signat	_ReceiveByteSerially,89
	global	_currentlevel
psect	text257,local,class=CODE,delta=2
global __ptext257
__ptext257:

;; *************** function _currentlevel *****************
;; Defined at:
;;		line 141 in file "C:\Users\hardik - admin\Desktop\desktop\royproj_level_pc\main.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text257
	file	"C:\Users\hardik - admin\Desktop\desktop\royproj_level_pc\main.c"
	line	141
	global	__size_of_currentlevel
	__size_of_currentlevel	equ	__end_of_currentlevel-_currentlevel
	
_currentlevel:	
	opt	stack 7
; Regs used in _currentlevel: [wreg+status,2+status,0]
	line	143
	
l2918:	
;main.c: 143: temp=PORTB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_currentlevel+0)+0
	movf	(??_currentlevel+0)+0,w
	movwf	(_temp)
	line	145
;main.c: 145: if(temp==0xff)
	movf	(_temp),w
	xorlw	0FFh
	skipz
	goto	u2811
	goto	u2810
u2811:
	goto	l2922
u2810:
	line	146
	
l2920:	
;main.c: 146: current=80;
	movlw	(050h)
	movwf	(??_currentlevel+0)+0
	movf	(??_currentlevel+0)+0,w
	movwf	(_current)
	goto	l685
	line	148
	
l668:	
	
l2922:	
;main.c: 148: else if(temp==0x7f)
	movf	(_temp),w
	xorlw	07Fh
	skipz
	goto	u2821
	goto	u2820
u2821:
	goto	l2926
u2820:
	line	149
	
l2924:	
;main.c: 149: current=70;
	movlw	(046h)
	movwf	(??_currentlevel+0)+0
	movf	(??_currentlevel+0)+0,w
	movwf	(_current)
	goto	l685
	line	151
	
l670:	
	
l2926:	
;main.c: 151: else if(temp==0x3f)
	movf	(_temp),w
	xorlw	03Fh
	skipz
	goto	u2831
	goto	u2830
u2831:
	goto	l2930
u2830:
	line	152
	
l2928:	
;main.c: 152: current=60;
	movlw	(03Ch)
	movwf	(??_currentlevel+0)+0
	movf	(??_currentlevel+0)+0,w
	movwf	(_current)
	goto	l685
	line	154
	
l672:	
	
l2930:	
;main.c: 154: else if(temp==0x1F)
	movf	(_temp),w
	xorlw	01Fh
	skipz
	goto	u2841
	goto	u2840
u2841:
	goto	l2934
u2840:
	line	155
	
l2932:	
;main.c: 155: current=50;
	movlw	(032h)
	movwf	(??_currentlevel+0)+0
	movf	(??_currentlevel+0)+0,w
	movwf	(_current)
	goto	l685
	line	157
	
l674:	
	
l2934:	
;main.c: 157: else if(temp==0x0F)
	movf	(_temp),w
	xorlw	0Fh
	skipz
	goto	u2851
	goto	u2850
u2851:
	goto	l2938
u2850:
	line	158
	
l2936:	
;main.c: 158: current=40;
	movlw	(028h)
	movwf	(??_currentlevel+0)+0
	movf	(??_currentlevel+0)+0,w
	movwf	(_current)
	goto	l685
	line	160
	
l676:	
	
l2938:	
;main.c: 160: else if(temp==0x07)
	movf	(_temp),w
	xorlw	07h
	skipz
	goto	u2861
	goto	u2860
u2861:
	goto	l2942
u2860:
	line	161
	
l2940:	
;main.c: 161: current=30;
	movlw	(01Eh)
	movwf	(??_currentlevel+0)+0
	movf	(??_currentlevel+0)+0,w
	movwf	(_current)
	goto	l685
	line	163
	
l678:	
	
l2942:	
;main.c: 163: else if(temp==0x03)
	movf	(_temp),w
	xorlw	03h
	skipz
	goto	u2871
	goto	u2870
u2871:
	goto	l2946
u2870:
	line	164
	
l2944:	
;main.c: 164: current=20;
	movlw	(014h)
	movwf	(??_currentlevel+0)+0
	movf	(??_currentlevel+0)+0,w
	movwf	(_current)
	goto	l685
	line	166
	
l680:	
	
l2946:	
;main.c: 166: else if(temp==0x01)
	movf	(_temp),w
	xorlw	01h
	skipz
	goto	u2881
	goto	u2880
u2881:
	goto	l2950
u2880:
	line	167
	
l2948:	
;main.c: 167: current=10;
	movlw	(0Ah)
	movwf	(??_currentlevel+0)+0
	movf	(??_currentlevel+0)+0,w
	movwf	(_current)
	goto	l685
	line	169
	
l682:	
	
l2950:	
;main.c: 169: else if(temp==0x00)
	movf	(_temp),f
	skipz
	goto	u2891
	goto	u2890
u2891:
	goto	l685
u2890:
	line	170
	
l2952:	
;main.c: 170: current=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_current)
	goto	l685
	
l684:	
	goto	l685
	line	172
	
l683:	
	goto	l685
	
l681:	
	goto	l685
	
l679:	
	goto	l685
	
l677:	
	goto	l685
	
l675:	
	goto	l685
	
l673:	
	goto	l685
	
l671:	
	goto	l685
	
l669:	
	
l685:	
	return
	opt stack 0
GLOBAL	__end_of_currentlevel
	__end_of_currentlevel:
;; =============== function _currentlevel ends ============

	signat	_currentlevel,88
	global	_SendByteSerially
psect	text258,local,class=CODE,delta=2
global __ptext258
__ptext258:

;; *************** function _SendByteSerially *****************
;; Defined at:
;;		line 15 in file "C:\Users\hardik - admin\Desktop\desktop\royproj_level_pc\serial.c"
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
;;		_SeriallyDisplayByte
;; This function uses a non-reentrant model
;;
psect	text258
	file	"C:\Users\hardik - admin\Desktop\desktop\royproj_level_pc\serial.c"
	line	15
	global	__size_of_SendByteSerially
	__size_of_SendByteSerially	equ	__end_of_SendByteSerially-_SendByteSerially
	
_SendByteSerially:	
	opt	stack 6
; Regs used in _SendByteSerially: [wreg]
;SendByteSerially@byte stored from wreg
	movwf	(SendByteSerially@byte)
	line	17
	
l2914:	
;serial.c: 17: while(!TXIF)
	goto	l1251
	
l1252:	
	line	18
;serial.c: 18: continue;
	
l1251:	
	line	17
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u2801
	goto	u2800
u2801:
	goto	l1251
u2800:
	goto	l2916
	
l1253:	
	line	19
	
l2916:	
;serial.c: 19: TXREG = byte;
	movf	(SendByteSerially@byte),w
	movwf	(25)	;volatile
	line	20
	
l1254:	
	return
	opt stack 0
GLOBAL	__end_of_SendByteSerially
	__end_of_SendByteSerially:
;; =============== function _SendByteSerially ends ============

	signat	_SendByteSerially,4216
	global	_Delay
psect	text259,local,class=CODE,delta=2
global __ptext259
__ptext259:

;; *************** function _Delay *****************
;; Defined at:
;;		line 4 in file "C:\Users\hardik - admin\Desktop\desktop\royproj_level_pc\delay.c"
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
;;		_SeriallyDisplayByte
;; This function uses a non-reentrant model
;;
psect	text259
	file	"C:\Users\hardik - admin\Desktop\desktop\royproj_level_pc\delay.c"
	line	4
	global	__size_of_Delay
	__size_of_Delay	equ	__end_of_Delay-_Delay
	
_Delay:	
	opt	stack 7
; Regs used in _Delay: [wreg+status,2+status,0]
	line	6
	
l2904:	
;delay.c: 5: unsigned char pause;
;delay.c: 6: while( time > 0)
	goto	l2912
	
l4:	
	line	8
	
l2906:	
;delay.c: 7: {
;delay.c: 8: pause = 255;
	movlw	(0FFh)
	movwf	(??_Delay+0)+0
	movf	(??_Delay+0)+0,w
	movwf	(Delay@pause)
	line	9
;delay.c: 9: while(pause--);
	goto	l2908
	
l6:	
	goto	l2908
	
l5:	
	
l2908:	
	movlw	low(01h)
	subwf	(Delay@pause),f
	movf	((Delay@pause)),w
	xorlw	0FFh
	skipz
	goto	u2781
	goto	u2780
u2781:
	goto	l2908
u2780:
	goto	l2910
	
l7:	
	line	10
	
l2910:	
;delay.c: 10: time--;
	movlw	low(01h)
	subwf	(Delay@time),f
	movlw	high(01h)
	skipc
	decf	(Delay@time+1),f
	subwf	(Delay@time+1),f
	goto	l2912
	line	11
	
l3:	
	line	6
	
l2912:	
	movf	((Delay@time+1)),w
	iorwf	((Delay@time)),w
	skipz
	goto	u2791
	goto	u2790
u2791:
	goto	l2906
u2790:
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
psect	text260,local,class=CODE,delta=2
global __ptext260
__ptext260:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
