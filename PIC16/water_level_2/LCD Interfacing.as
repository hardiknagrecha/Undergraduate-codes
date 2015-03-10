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
# 15 "C:\Users\hardik - admin\Desktop\royproj_level_pc_2\main.h"
	psect config,class=CONFIG,delta=2 ;#
# 15 "C:\Users\hardik - admin\Desktop\royproj_level_pc_2\main.h"
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
	file	"C:\Users\hardik - admin\Desktop\royproj_level_pc_2\main.h"
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
	file	"C:\Users\hardik - admin\Desktop\royproj_level_pc_2\main.h"
	line	27
_AT0:
       ds      15

psect	dataBANK0
	file	"C:\Users\hardik - admin\Desktop\royproj_level_pc_2\main.h"
	line	29
_AT2:
       ds      12

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"C:\Users\hardik - admin\Desktop\royproj_level_pc_2\main.h"
	line	26
_AT:
       ds      30

psect	dataBANK1
	file	"C:\Users\hardik - admin\Desktop\royproj_level_pc_2\main.h"
	line	28
_AT1:
       ds      20

psect	dataBANK1
	file	"C:\Users\hardik - admin\Desktop\royproj_level_pc_2\main.h"
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
	ds	3
	global	main@temp2
main@temp2:	; 1 bytes @ 0x8
	ds	1
;;Data sizes: Strings 0, constant 0, data 97, bss 29, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80      9      65
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 4     4      0    1046
;;                                              5 BANK0      4     4      0
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
;;DATA                 0      0      97      12        0.0%
;;ABS                  0      0      95       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50      9      41       5       81.3%
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
;;		line 8 in file "C:\Users\hardik - admin\Desktop\royproj_level_pc_2\main.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  temp2           1    8[BANK0 ] char 
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
;;      Locals:         0       1       0       0       0
;;      Temps:          0       3       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
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
	file	"C:\Users\hardik - admin\Desktop\royproj_level_pc_2\main.c"
	line	8
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	10
	
l3066:	
;main.c: 9: signed char temp2;
;main.c: 10: TRISB = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	11
	
l3068:	
;main.c: 11: TRISD=0x00;
	clrf	(136)^080h	;volatile
	line	12
	
l3070:	
;main.c: 12: RBPU=0;
	bcf	(1039/8)^080h,(1039)&7
	line	13
	
l3072:	
;main.c: 13: PORTD=0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	14
	
l3074:	
;main.c: 14: MainSystemInitialize();
	fcall	_MainSystemInitialize
	line	16
	
l3076:	
;main.c: 16: for(i=0;i<20;i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	
l3078:	
	movlw	(014h)
	subwf	(_i),w
	skipc
	goto	u3051
	goto	u3050
u3051:
	goto	l3082
u3050:
	goto	l3088
	
l3080:	
	goto	l3088
	line	17
	
l610:	
	line	18
	
l3082:	
;main.c: 17: {
;main.c: 18: SendByteSerially(AT[i]);
	movf	(_i),w
	addlw	_AT&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_SendByteSerially
	line	16
	
l3084:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_i),f
	
l3086:	
	movlw	(014h)
	subwf	(_i),w
	skipc
	goto	u3061
	goto	u3060
u3061:
	goto	l3082
u3060:
	goto	l3088
	
l611:	
	line	21
	
l3088:	
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
	
l3090:	
;main.c: 28: for(i=0;i<14;i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	
l3092:	
	movlw	(0Eh)
	subwf	(_i),w
	skipc
	goto	u3071
	goto	u3070
u3071:
	goto	l3096
u3070:
	goto	l3102
	
l3094:	
	goto	l3102
	line	29
	
l612:	
	line	30
	
l3096:	
;main.c: 29: {
;main.c: 30: SendByteSerially(AT0[i]);
	movf	(_i),w
	addlw	_AT0&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_SendByteSerially
	line	28
	
l3098:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_i),f
	
l3100:	
	movlw	(0Eh)
	subwf	(_i),w
	skipc
	goto	u3081
	goto	u3080
u3081:
	goto	l3096
u3080:
	goto	l3102
	
l613:	
	line	33
	
l3102:	
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
	
l3104:	
;main.c: 38: for(i=0;i<16;i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	
l3106:	
	movlw	(010h)
	subwf	(_i),w
	skipc
	goto	u3091
	goto	u3090
u3091:
	goto	l3110
u3090:
	goto	l3116
	
l3108:	
	goto	l3116
	line	39
	
l614:	
	line	40
	
l3110:	
;main.c: 39: {
;main.c: 40: SendByteSerially(AT1[i]);
	movf	(_i),w
	addlw	_AT1&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_SendByteSerially
	line	38
	
l3112:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_i),f
	
l3114:	
	movlw	(010h)
	subwf	(_i),w
	skipc
	goto	u3101
	goto	u3100
u3101:
	goto	l3110
u3100:
	goto	l3116
	
l615:	
	line	43
	
l3116:	
;main.c: 41: }
;main.c: 43: Delay(500);
	movlw	low(01F4h)
	movwf	(?_Delay)
	movlw	high(01F4h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	44
	
l3118:	
;main.c: 44: j=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_j)
	goto	l3120
	line	46
;main.c: 46: do
	
l616:	
	line	48
	
l3120:	
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
	
l3122:	
;main.c: 49: j++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_j),f
	line	51
	
l3124:	
;main.c: 50: }
;main.c: 51: while(receivesp[j-1]!='.');
	movf	(_j),w
	addlw	0FFh
	addlw	_receivesp&0ffh
	movwf	fsr0
	movf	indf,w
	xorlw	02Eh
	skipz
	goto	u3111
	goto	u3110
u3111:
	goto	l3120
u3110:
	goto	l3126
	
l617:	
	line	53
	
l3126:	
;main.c: 53: for(i=0;i<2;i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_i)
	
l3128:	
	movlw	(02h)
	subwf	(_i),w
	skipc
	goto	u3121
	goto	u3120
u3121:
	goto	l3132
u3120:
	goto	l3138
	
l3130:	
	goto	l3138
	line	54
	
l618:	
	line	55
	
l3132:	
;main.c: 54: {
;main.c: 55: SendByteSerially(receivesp[i]);
	movf	(_i),w
	addlw	_receivesp&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_SendByteSerially
	line	53
	
l3134:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_i),f
	
l3136:	
	movlw	(02h)
	subwf	(_i),w
	skipc
	goto	u3131
	goto	u3130
u3131:
	goto	l3132
u3130:
	goto	l3138
	
l619:	
	line	58
	
l3138:	
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
	
l3140:	
;main.c: 63: temp2 = current - sp;
	decf	(_sp),w
	xorlw	0ffh
	addwf	(_current),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@temp2)
	goto	l3142
	line	65
;main.c: 65: while(1)
	
l620:	
	line	68
	
l3142:	
;main.c: 66: {
;main.c: 68: currentlevel();
	fcall	_currentlevel
	line	69
;main.c: 69: for(i=0;i<10;i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_i)
	
l3144:	
	movlw	(0Ah)
	subwf	(_i),w
	skipc
	goto	u3141
	goto	u3140
u3141:
	goto	l3148
u3140:
	goto	l3154
	
l3146:	
	goto	l3154
	line	70
	
l621:	
	line	71
	
l3148:	
;main.c: 70: {
;main.c: 71: SendByteSerially(AT2[i]);
	movf	(_i),w
	addlw	_AT2&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	fcall	_SendByteSerially
	line	69
	
l3150:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_i),f
	
l3152:	
	movlw	(0Ah)
	subwf	(_i),w
	skipc
	goto	u3151
	goto	u3150
u3151:
	goto	l3148
u3150:
	goto	l3154
	
l622:	
	line	74
	
l3154:	
;main.c: 72: }
;main.c: 74: SeriallyDisplayByte(current);
	movf	(_current),w
	fcall	_SeriallyDisplayByte
	line	76
;main.c: 76: SendByteSerially(0x0D);
	movlw	(0Dh)
	fcall	_SendByteSerially
	line	77
;main.c: 77: SendByteSerially(0x0A);
	movlw	(0Ah)
	fcall	_SendByteSerially
	line	79
	
l3156:	
;main.c: 79: if((temp2)<0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(main@temp2),7
	goto	u3161
	goto	u3160
u3161:
	goto	l3204
u3160:
	line	81
	
l3158:	
;main.c: 80: {
;main.c: 81: error=sp-current;
	decf	(_current),w
	xorlw	0ffh
	addwf	(_sp),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_error)
	line	82
	
l3160:	
;main.c: 82: if(current==sp)
	movf	(_current),w
	xorwf	(_sp),w
	skipz
	goto	u3171
	goto	u3170
u3171:
	goto	l3180
u3170:
	line	84
	
l3162:	
;main.c: 83: {
;main.c: 84: PORTD=0x00;
	clrf	(8)	;volatile
	line	85
	
l3164:	
;main.c: 85: for(i=0;i<17;i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_i)
	
l3166:	
	movlw	(011h)
	subwf	(_i),w
	skipc
	goto	u3181
	goto	u3180
u3181:
	goto	l3170
u3180:
	goto	l3176
	
l3168:	
	goto	l3176
	line	86
	
l625:	
	line	87
	
l3170:	
;main.c: 86: {
;main.c: 87: SendByteSerially(AT3[i]);
	movf	(_i),w
	addlw	_AT3&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_SendByteSerially
	line	85
	
l3172:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_i),f
	
l3174:	
	movlw	(011h)
	subwf	(_i),w
	skipc
	goto	u3191
	goto	u3190
u3191:
	goto	l3170
u3190:
	goto	l3176
	
l626:	
	line	90
	
l3176:	
;main.c: 88: }
;main.c: 90: SendByteSerially(0x0D);
	movlw	(0Dh)
	fcall	_SendByteSerially
	line	91
;main.c: 91: SendByteSerially(0x0A);
	movlw	(0Ah)
	fcall	_SendByteSerially
	line	92
;main.c: 92: break;
	goto	l654
	line	93
	
l3178:	
;main.c: 93: }
	goto	l3142
	line	94
	
l624:	
	
l3180:	
;main.c: 94: else if((error>0)&&(error<=20))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_error),w
	xorlw	80h
	addlw	-((01h)^80h)
	skipc
	goto	u3201
	goto	u3200
u3201:
	goto	l3186
u3200:
	
l3182:	
	movf	(_error),w
	xorlw	80h
	addlw	-((015h)^80h)
	skipnc
	goto	u3211
	goto	u3210
u3211:
	goto	l3186
u3210:
	line	95
	
l3184:	
;main.c: 95: {PORTD=0x80;}
	movlw	(080h)
	movwf	(8)	;volatile
	goto	l3142
	line	96
	
l629:	
	
l3186:	
;main.c: 96: else if((error>20)&&(error<=40))
	movf	(_error),w
	xorlw	80h
	addlw	-((015h)^80h)
	skipc
	goto	u3221
	goto	u3220
u3221:
	goto	l3192
u3220:
	
l3188:	
	movf	(_error),w
	xorlw	80h
	addlw	-((029h)^80h)
	skipnc
	goto	u3231
	goto	u3230
u3231:
	goto	l3192
u3230:
	line	97
	
l3190:	
;main.c: 97: {PORTD=0xc0;}
	movlw	(0C0h)
	movwf	(8)	;volatile
	goto	l3142
	line	98
	
l631:	
	
l3192:	
;main.c: 98: else if((error>40)&&(error<=60))
	movf	(_error),w
	xorlw	80h
	addlw	-((029h)^80h)
	skipc
	goto	u3241
	goto	u3240
u3241:
	goto	l3198
u3240:
	
l3194:	
	movf	(_error),w
	xorlw	80h
	addlw	-((03Dh)^80h)
	skipnc
	goto	u3251
	goto	u3250
u3251:
	goto	l3198
u3250:
	line	99
	
l3196:	
;main.c: 99: {PORTD=0xe0;}
	movlw	(0E0h)
	movwf	(8)	;volatile
	goto	l3142
	line	100
	
l633:	
	
l3198:	
;main.c: 100: else if((error>60)&&(error<=80))
	movf	(_error),w
	xorlw	80h
	addlw	-((03Dh)^80h)
	skipc
	goto	u3261
	goto	u3260
u3261:
	goto	l3142
u3260:
	
l3200:	
	movf	(_error),w
	xorlw	80h
	addlw	-((051h)^80h)
	skipnc
	goto	u3271
	goto	u3270
u3271:
	goto	l3142
u3270:
	line	101
	
l3202:	
;main.c: 101: {PORTD=0xf0;}
	movlw	(0F0h)
	movwf	(8)	;volatile
	goto	l3142
	
l635:	
	goto	l3142
	line	102
	
l634:	
	goto	l3142
	
l632:	
	goto	l3142
	
l630:	
	goto	l3142
	
l628:	
;main.c: 102: }
	goto	l3142
	line	104
	
l623:	
	
l3204:	
;main.c: 104: else if((temp2)>0)
	movf	(main@temp2),w
	xorlw	80h
	addlw	-((01h)^80h)
	skipc
	goto	u3281
	goto	u3280
u3281:
	goto	l3252
u3280:
	line	106
	
l3206:	
;main.c: 105: {
;main.c: 106: error=current-sp;
	decf	(_sp),w
	xorlw	0ffh
	addwf	(_current),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_error)
	line	107
	
l3208:	
;main.c: 107: if(current==sp)
	movf	(_current),w
	xorwf	(_sp),w
	skipz
	goto	u3291
	goto	u3290
u3291:
	goto	l3228
u3290:
	line	109
	
l3210:	
;main.c: 108: {
;main.c: 109: PORTD=0x00;
	clrf	(8)	;volatile
	line	110
	
l3212:	
;main.c: 110: for(i=0;i<17;i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_i)
	
l3214:	
	movlw	(011h)
	subwf	(_i),w
	skipc
	goto	u3301
	goto	u3300
u3301:
	goto	l3218
u3300:
	goto	l3224
	
l3216:	
	goto	l3224
	line	111
	
l639:	
	line	112
	
l3218:	
;main.c: 111: {
;main.c: 112: SendByteSerially(AT3[i]);
	movf	(_i),w
	addlw	_AT3&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_SendByteSerially
	line	110
	
l3220:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_i),f
	
l3222:	
	movlw	(011h)
	subwf	(_i),w
	skipc
	goto	u3311
	goto	u3310
u3311:
	goto	l3218
u3310:
	goto	l3224
	
l640:	
	line	115
	
l3224:	
;main.c: 113: }
;main.c: 115: SendByteSerially(0x0D);
	movlw	(0Dh)
	fcall	_SendByteSerially
	line	116
;main.c: 116: SendByteSerially(0x0A);
	movlw	(0Ah)
	fcall	_SendByteSerially
	line	117
;main.c: 117: break;
	goto	l654
	line	118
	
l3226:	
;main.c: 118: }
	goto	l3142
	line	119
	
l638:	
	
l3228:	
;main.c: 119: else if((error>0)&&(error<=20))
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_error),w
	xorlw	80h
	addlw	-((01h)^80h)
	skipc
	goto	u3321
	goto	u3320
u3321:
	goto	l3234
u3320:
	
l3230:	
	movf	(_error),w
	xorlw	80h
	addlw	-((015h)^80h)
	skipnc
	goto	u3331
	goto	u3330
u3331:
	goto	l3234
u3330:
	line	120
	
l3232:	
;main.c: 120: {PORTD=0x08;}
	movlw	(08h)
	movwf	(8)	;volatile
	goto	l3142
	line	121
	
l642:	
	
l3234:	
;main.c: 121: else if((error>20)&&(error<=40))
	movf	(_error),w
	xorlw	80h
	addlw	-((015h)^80h)
	skipc
	goto	u3341
	goto	u3340
u3341:
	goto	l3240
u3340:
	
l3236:	
	movf	(_error),w
	xorlw	80h
	addlw	-((029h)^80h)
	skipnc
	goto	u3351
	goto	u3350
u3351:
	goto	l3240
u3350:
	line	122
	
l3238:	
;main.c: 122: {PORTD=0x0c;}
	movlw	(0Ch)
	movwf	(8)	;volatile
	goto	l3142
	line	123
	
l644:	
	
l3240:	
;main.c: 123: else if((error>40)&&(error<=60))
	movf	(_error),w
	xorlw	80h
	addlw	-((029h)^80h)
	skipc
	goto	u3361
	goto	u3360
u3361:
	goto	l3246
u3360:
	
l3242:	
	movf	(_error),w
	xorlw	80h
	addlw	-((03Dh)^80h)
	skipnc
	goto	u3371
	goto	u3370
u3371:
	goto	l3246
u3370:
	line	124
	
l3244:	
;main.c: 124: {PORTD=0x0e;}
	movlw	(0Eh)
	movwf	(8)	;volatile
	goto	l3142
	line	125
	
l646:	
	
l3246:	
;main.c: 125: else if((error>60)&&(error<=80))
	movf	(_error),w
	xorlw	80h
	addlw	-((03Dh)^80h)
	skipc
	goto	u3381
	goto	u3380
u3381:
	goto	l3142
u3380:
	
l3248:	
	movf	(_error),w
	xorlw	80h
	addlw	-((051h)^80h)
	skipnc
	goto	u3391
	goto	u3390
u3391:
	goto	l3142
u3390:
	line	126
	
l3250:	
;main.c: 126: {PORTD=0x0f;}
	movlw	(0Fh)
	movwf	(8)	;volatile
	goto	l3142
	
l648:	
	goto	l3142
	line	127
	
l647:	
	goto	l3142
	
l645:	
	goto	l3142
	
l643:	
	goto	l3142
	
l641:	
;main.c: 127: }
	goto	l3142
	line	128
	
l637:	
	
l3252:	
;main.c: 128: else if(temp2==0)
	movf	(main@temp2),f
	skipz
	goto	u3401
	goto	u3400
u3401:
	goto	l3142
u3400:
	line	130
	
l3254:	
;main.c: 129: {
;main.c: 130: PORTD=0x00;
	clrf	(8)	;volatile
	line	131
	
l3256:	
;main.c: 131: for(i=0;i<17;i++)
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_i)
	
l3258:	
	movlw	(011h)
	subwf	(_i),w
	skipc
	goto	u3411
	goto	u3410
u3411:
	goto	l3262
u3410:
	goto	l3268
	
l3260:	
	goto	l3268
	line	132
	
l651:	
	line	133
	
l3262:	
;main.c: 132: {
;main.c: 133: SendByteSerially(AT3[i]);
	movf	(_i),w
	addlw	_AT3&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	movf	indf,w
	fcall	_SendByteSerially
	line	131
	
l3264:	
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_i),f
	
l3266:	
	movlw	(011h)
	subwf	(_i),w
	skipc
	goto	u3421
	goto	u3420
u3421:
	goto	l3262
u3420:
	goto	l3268
	
l652:	
	line	136
	
l3268:	
;main.c: 134: }
;main.c: 136: SendByteSerially(0x0D);
	movlw	(0Dh)
	fcall	_SendByteSerially
	line	137
;main.c: 137: SendByteSerially(0x0A);
	movlw	(0Ah)
	fcall	_SendByteSerially
	line	138
;main.c: 138: break;
	goto	l654
	line	139
	
l650:	
	goto	l3142
	line	141
	
l649:	
	goto	l3142
	
l636:	
	goto	l3142
	
l653:	
	line	65
	goto	l3142
	
l627:	
	line	142
	
l654:	
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
;;		line 31 in file "C:\Users\hardik - admin\Desktop\royproj_level_pc_2\serial.c"
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
	file	"C:\Users\hardik - admin\Desktop\royproj_level_pc_2\serial.c"
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
	
l3044:	
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
	goto	u3021
	goto	u3020
u3021:
	goto	l3048
u3020:
	line	34
	
l3046:	
;serial.c: 34: SendByteSerially(0x20);
	movlw	(020h)
	fcall	_SendByteSerially
	goto	l1256
	line	35
	
l1255:	
	line	36
	
l3048:	
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
	
l1256:	
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
	goto	u3031
	goto	u3030
u3031:
	goto	l3056
u3030:
	line	39
	
l3050:	
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
	goto	u3041
	goto	u3040
u3041:
	goto	l3054
u3040:
	line	40
	
l3052:	
;serial.c: 40: SendByteSerially(0x20);
	movlw	(020h)
	fcall	_SendByteSerially
	goto	l1260
	line	41
	
l1258:	
	line	42
	
l3054:	
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
	goto	l1260
	
l1259:	
	goto	l1260
	line	43
	
l1257:	
	line	44
	
l3056:	
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
	
l1260:	
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
	
l3058:	
;serial.c: 47: }
;serial.c: 48: Value++;
	movlw	(01h)
	movwf	(??_SeriallyDisplayByte+0)+0
	movf	(??_SeriallyDisplayByte+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(SeriallyDisplayByte@Value),f
	line	49
	
l3060:	
;serial.c: 49: SendByteSerially(0x0D);
	movlw	(0Dh)
	fcall	_SendByteSerially
	line	50
	
l3062:	
;serial.c: 50: SendByteSerially(0x0A);
	movlw	(0Ah)
	fcall	_SendByteSerially
	line	51
	
l3064:	
;serial.c: 51: Delay(500);
	movlw	low(01F4h)
	movwf	(?_Delay)
	movlw	high(01F4h)
	movwf	((?_Delay))+1
	fcall	_Delay
	line	53
	
l1261:	
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
;;		line 145 in file "C:\Users\hardik - admin\Desktop\royproj_level_pc_2\main.c"
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
	file	"C:\Users\hardik - admin\Desktop\royproj_level_pc_2\main.c"
	line	145
	global	__size_of_MainSystemInitialize
	__size_of_MainSystemInitialize	equ	__end_of_MainSystemInitialize-_MainSystemInitialize
	
_MainSystemInitialize:	
	opt	stack 6
; Regs used in _MainSystemInitialize: [wreg+status,2+status,0+pclath+cstack]
	line	146
	
l3042:	
;main.c: 146: InitializeSerialCommunication();
	fcall	_InitializeSerialCommunication
	line	147
	
l657:	
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
	
l3006:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___awmod@sign)
	line	9
	
l3008:	
	btfss	(___awmod@dividend+1),7
	goto	u2931
	goto	u2930
u2931:
	goto	l3012
u2930:
	line	10
	
l3010:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l3012
	line	12
	
l1478:	
	line	13
	
l3012:	
	btfss	(___awmod@divisor+1),7
	goto	u2941
	goto	u2940
u2941:
	goto	l3016
u2940:
	line	14
	
l3014:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l3016
	
l1479:	
	line	15
	
l3016:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2951
	goto	u2950
u2951:
	goto	l3034
u2950:
	line	16
	
l3018:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l3024
	
l1482:	
	line	18
	
l3020:	
	movlw	01h
	
u2965:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2965
	line	19
	
l3022:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l3024
	line	20
	
l1481:	
	line	17
	
l3024:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2971
	goto	u2970
u2971:
	goto	l3020
u2970:
	goto	l3026
	
l1483:	
	goto	l3026
	line	21
	
l1484:	
	line	22
	
l3026:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2985
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2985:
	skipc
	goto	u2981
	goto	u2980
u2981:
	goto	l3030
u2980:
	line	23
	
l3028:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l3030
	
l1485:	
	line	24
	
l3030:	
	movlw	01h
	
u2995:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2995
	line	25
	
l3032:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3001
	goto	u3000
u3001:
	goto	l3026
u3000:
	goto	l3034
	
l1486:	
	goto	l3034
	line	26
	
l1480:	
	line	27
	
l3034:	
	movf	(___awmod@sign),w
	skipz
	goto	u3010
	goto	l3038
u3010:
	line	28
	
l3036:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l3038
	
l1487:	
	line	29
	
l3038:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1488
	
l3040:	
	line	30
	
l1488:	
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
	
l2968:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___awdiv@sign)
	line	10
	
l2970:	
	btfss	(___awdiv@divisor+1),7
	goto	u2831
	goto	u2830
u2831:
	goto	l2974
u2830:
	line	11
	
l2972:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2974
	line	13
	
l1410:	
	line	14
	
l2974:	
	btfss	(___awdiv@dividend+1),7
	goto	u2841
	goto	u2840
u2841:
	goto	l1411
u2840:
	line	15
	
l2976:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2978:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	line	17
	
l1411:	
	line	18
	movlw	low(0)
	movwf	(___awdiv@quotient)
	movlw	high(0)
	movwf	((___awdiv@quotient))+1
	line	19
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2851
	goto	u2850
u2851:
	goto	l2998
u2850:
	line	20
	
l2980:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2986
	
l1414:	
	line	22
	
l2982:	
	movlw	01h
	
u2865:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2865
	line	23
	
l2984:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2986
	line	24
	
l1413:	
	line	21
	
l2986:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2871
	goto	u2870
u2871:
	goto	l2982
u2870:
	goto	l2988
	
l1415:	
	goto	l2988
	line	25
	
l1416:	
	line	26
	
l2988:	
	movlw	01h
	
u2885:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2885
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2895
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2895:
	skipc
	goto	u2891
	goto	u2890
u2891:
	goto	l2994
u2890:
	line	28
	
l2990:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2992:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2994
	line	30
	
l1417:	
	line	31
	
l2994:	
	movlw	01h
	
u2905:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2905
	line	32
	
l2996:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2911
	goto	u2910
u2911:
	goto	l2988
u2910:
	goto	l2998
	
l1418:	
	goto	l2998
	line	33
	
l1412:	
	line	34
	
l2998:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2920
	goto	l3002
u2920:
	line	35
	
l3000:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3002
	
l1419:	
	line	36
	
l3002:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1420
	
l3004:	
	line	37
	
l1420:	
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
	
l2952:	
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(___bmul@product)
	goto	l2954
	line	6
	
l1264:	
	line	7
	
l2954:	
	btfss	(___bmul@multiplier),(0)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l2958
u2810:
	line	8
	
l2956:	
	movf	(___bmul@multiplicand),w
	movwf	(??___bmul+0)+0
	movf	(??___bmul+0)+0,w
	addwf	(___bmul@product),f
	goto	l2958
	
l1265:	
	line	9
	
l2958:	
	clrc
	rlf	(___bmul@multiplicand),f

	line	10
	
l2960:	
	clrc
	rrf	(___bmul@multiplier),f

	line	11
	
l2962:	
	movf	(___bmul@multiplier),f
	skipz
	goto	u2821
	goto	u2820
u2821:
	goto	l2954
u2820:
	goto	l2964
	
l1266:	
	line	12
	
l2964:	
	movf	(___bmul@product),w
	goto	l1267
	
l2966:	
	line	13
	
l1267:	
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
;;		line 6 in file "C:\Users\hardik - admin\Desktop\royproj_level_pc_2\serial.c"
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
	file	"C:\Users\hardik - admin\Desktop\royproj_level_pc_2\serial.c"
	line	6
	global	__size_of_InitializeSerialCommunication
	__size_of_InitializeSerialCommunication	equ	__end_of_InitializeSerialCommunication-_InitializeSerialCommunication
	
_InitializeSerialCommunication:	
	opt	stack 6
; Regs used in _InitializeSerialCommunication: [wreg]
	line	8
	
l2948:	
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
	
l2950:	
;serial.c: 11: SYNC=0;
	bcf	(1220/8)^080h,(1220)&7
	line	12
	
l1240:	
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
;;		line 23 in file "C:\Users\hardik - admin\Desktop\royproj_level_pc_2\serial.c"
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
	file	"C:\Users\hardik - admin\Desktop\royproj_level_pc_2\serial.c"
	line	23
	global	__size_of_ReceiveByteSerially
	__size_of_ReceiveByteSerially	equ	__end_of_ReceiveByteSerially-_ReceiveByteSerially
	
_ReceiveByteSerially:	
	opt	stack 7
; Regs used in _ReceiveByteSerially: [wreg]
	line	25
	
l2942:	
;serial.c: 25: while(!RCIF)
	goto	l1249
	
l1250:	
	line	26
;serial.c: 26: continue;
	
l1249:	
	line	25
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u2801
	goto	u2800
u2801:
	goto	l1249
u2800:
	goto	l2944
	
l1251:	
	line	27
	
l2944:	
;serial.c: 27: return RCREG;
	movf	(26),w	;volatile
	goto	l1252
	
l2946:	
	line	28
	
l1252:	
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
;;		line 150 in file "C:\Users\hardik - admin\Desktop\royproj_level_pc_2\main.c"
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
	file	"C:\Users\hardik - admin\Desktop\royproj_level_pc_2\main.c"
	line	150
	global	__size_of_currentlevel
	__size_of_currentlevel	equ	__end_of_currentlevel-_currentlevel
	
_currentlevel:	
	opt	stack 7
; Regs used in _currentlevel: [wreg+status,2+status,0]
	line	152
	
l2906:	
;main.c: 152: temp=PORTB;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(6),w	;volatile
	movwf	(??_currentlevel+0)+0
	movf	(??_currentlevel+0)+0,w
	movwf	(_temp)
	line	154
;main.c: 154: if(temp==0xff)
	movf	(_temp),w
	xorlw	0FFh
	skipz
	goto	u2711
	goto	u2710
u2711:
	goto	l2910
u2710:
	line	155
	
l2908:	
;main.c: 155: current=0;
	clrc
	movlw	0
	btfsc	status,0
	movlw	1
	movwf	(_current)
	goto	l677
	line	157
	
l660:	
	
l2910:	
;main.c: 157: else if(temp==0xfe)
	movf	(_temp),w
	xorlw	0FEh
	skipz
	goto	u2721
	goto	u2720
u2721:
	goto	l2914
u2720:
	line	158
	
l2912:	
;main.c: 158: current=10;
	movlw	(0Ah)
	movwf	(??_currentlevel+0)+0
	movf	(??_currentlevel+0)+0,w
	movwf	(_current)
	goto	l677
	line	160
	
l662:	
	
l2914:	
;main.c: 160: else if(temp==0xfc)
	movf	(_temp),w
	xorlw	0FCh
	skipz
	goto	u2731
	goto	u2730
u2731:
	goto	l2918
u2730:
	line	161
	
l2916:	
;main.c: 161: current=20;
	movlw	(014h)
	movwf	(??_currentlevel+0)+0
	movf	(??_currentlevel+0)+0,w
	movwf	(_current)
	goto	l677
	line	163
	
l664:	
	
l2918:	
;main.c: 163: else if(temp==0xf8)
	movf	(_temp),w
	xorlw	0F8h
	skipz
	goto	u2741
	goto	u2740
u2741:
	goto	l2922
u2740:
	line	164
	
l2920:	
;main.c: 164: current=30;
	movlw	(01Eh)
	movwf	(??_currentlevel+0)+0
	movf	(??_currentlevel+0)+0,w
	movwf	(_current)
	goto	l677
	line	166
	
l666:	
	
l2922:	
;main.c: 166: else if(temp==0xf0)
	movf	(_temp),w
	xorlw	0F0h
	skipz
	goto	u2751
	goto	u2750
u2751:
	goto	l2926
u2750:
	line	167
	
l2924:	
;main.c: 167: current=40;
	movlw	(028h)
	movwf	(??_currentlevel+0)+0
	movf	(??_currentlevel+0)+0,w
	movwf	(_current)
	goto	l677
	line	169
	
l668:	
	
l2926:	
;main.c: 169: else if(temp==0xe0)
	movf	(_temp),w
	xorlw	0E0h
	skipz
	goto	u2761
	goto	u2760
u2761:
	goto	l2930
u2760:
	line	170
	
l2928:	
;main.c: 170: current=50;
	movlw	(032h)
	movwf	(??_currentlevel+0)+0
	movf	(??_currentlevel+0)+0,w
	movwf	(_current)
	goto	l677
	line	172
	
l670:	
	
l2930:	
;main.c: 172: else if(temp==0xc0)
	movf	(_temp),w
	xorlw	0C0h
	skipz
	goto	u2771
	goto	u2770
u2771:
	goto	l2934
u2770:
	line	173
	
l2932:	
;main.c: 173: current=60;
	movlw	(03Ch)
	movwf	(??_currentlevel+0)+0
	movf	(??_currentlevel+0)+0,w
	movwf	(_current)
	goto	l677
	line	175
	
l672:	
	
l2934:	
;main.c: 175: else if(temp==0x80)
	movf	(_temp),w
	xorlw	080h
	skipz
	goto	u2781
	goto	u2780
u2781:
	goto	l2938
u2780:
	line	176
	
l2936:	
;main.c: 176: current=70;
	movlw	(046h)
	movwf	(??_currentlevel+0)+0
	movf	(??_currentlevel+0)+0,w
	movwf	(_current)
	goto	l677
	line	178
	
l674:	
	
l2938:	
;main.c: 178: else if(temp==0x00)
	movf	(_temp),f
	skipz
	goto	u2791
	goto	u2790
u2791:
	goto	l677
u2790:
	line	179
	
l2940:	
;main.c: 179: current=80;
	movlw	(050h)
	movwf	(??_currentlevel+0)+0
	movf	(??_currentlevel+0)+0,w
	movwf	(_current)
	goto	l677
	
l676:	
	goto	l677
	line	181
	
l675:	
	goto	l677
	
l673:	
	goto	l677
	
l671:	
	goto	l677
	
l669:	
	goto	l677
	
l667:	
	goto	l677
	
l665:	
	goto	l677
	
l663:	
	goto	l677
	
l661:	
	
l677:	
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
;;		line 15 in file "C:\Users\hardik - admin\Desktop\royproj_level_pc_2\serial.c"
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
	file	"C:\Users\hardik - admin\Desktop\royproj_level_pc_2\serial.c"
	line	15
	global	__size_of_SendByteSerially
	__size_of_SendByteSerially	equ	__end_of_SendByteSerially-_SendByteSerially
	
_SendByteSerially:	
	opt	stack 6
; Regs used in _SendByteSerially: [wreg]
;SendByteSerially@byte stored from wreg
	movwf	(SendByteSerially@byte)
	line	17
	
l2902:	
;serial.c: 17: while(!TXIF)
	goto	l1243
	
l1244:	
	line	18
;serial.c: 18: continue;
	
l1243:	
	line	17
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7
	goto	u2701
	goto	u2700
u2701:
	goto	l1243
u2700:
	goto	l2904
	
l1245:	
	line	19
	
l2904:	
;serial.c: 19: TXREG = byte;
	movf	(SendByteSerially@byte),w
	movwf	(25)	;volatile
	line	20
	
l1246:	
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
;;		line 4 in file "C:\Users\hardik - admin\Desktop\royproj_level_pc_2\delay.c"
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
	file	"C:\Users\hardik - admin\Desktop\royproj_level_pc_2\delay.c"
	line	4
	global	__size_of_Delay
	__size_of_Delay	equ	__end_of_Delay-_Delay
	
_Delay:	
	opt	stack 7
; Regs used in _Delay: [wreg+status,2+status,0]
	line	6
	
l2892:	
;delay.c: 5: unsigned char pause;
;delay.c: 6: while( time > 0)
	goto	l2900
	
l4:	
	line	8
	
l2894:	
;delay.c: 7: {
;delay.c: 8: pause = 255;
	movlw	(0FFh)
	movwf	(??_Delay+0)+0
	movf	(??_Delay+0)+0,w
	movwf	(Delay@pause)
	line	9
;delay.c: 9: while(pause--);
	goto	l2896
	
l6:	
	goto	l2896
	
l5:	
	
l2896:	
	movlw	low(01h)
	subwf	(Delay@pause),f
	movf	((Delay@pause)),w
	xorlw	0FFh
	skipz
	goto	u2681
	goto	u2680
u2681:
	goto	l2896
u2680:
	goto	l2898
	
l7:	
	line	10
	
l2898:	
;delay.c: 10: time--;
	movlw	low(01h)
	subwf	(Delay@time),f
	movlw	high(01h)
	skipc
	decf	(Delay@time+1),f
	subwf	(Delay@time+1),f
	goto	l2900
	line	11
	
l3:	
	line	6
	
l2900:	
	movf	((Delay@time+1)),w
	iorwf	((Delay@time)),w
	skipz
	goto	u2691
	goto	u2690
u2691:
	goto	l2894
u2690:
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
