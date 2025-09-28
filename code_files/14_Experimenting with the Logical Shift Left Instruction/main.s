		AREA SimpleShift,CODE,READONLY
		ENTRY
		EXPORT __main
__main
		MOV		R0,0X11		;move 17 into R0
		LSL		R1,R0,#1	;shift 1 bit left = 17 * 2^1 = 34
		LSL		R2,R1,#1	;shift 1 bit left = 34 * 2^1 = 68

stop	B		stop
		END