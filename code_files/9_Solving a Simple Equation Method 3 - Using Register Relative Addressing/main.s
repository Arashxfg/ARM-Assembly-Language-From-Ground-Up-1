;P = Q + R + S
;Q = 2, R = 4, S = 5

P		EQU		0	; creating simbolic name for offsets
Q		EQU		4	; creating simbolic name for offsets
R		EQU		8	; creating simbolic name for offsets
S		EQU		12	; creating simbolic name for offsets
	
		AREA	eg3,CODE,READONLY
		ENTRY
		EXPORT __main
__main
		ADRL	R4,VALS		;R4 points to VALS area / if we use ADR we got error about out of range
		LDR		R1,[R4,#Q]	;Load Q = 2 into R1. also we can use  LDR R1,[R4,#4]
		LDR		R2,[R4,#R]	;Load R = 4 into R2. also we can use  LDR R2,[R4,#8]
		LDR		R3,[R4,#S]	;Load S = 5 into R3. also we can use  LDR R3,[R4,#12]
		
		ADD		R0,R1,R2
		ADD		R0,R0,R3
		
		STR		R0,[R4,#P]
		
stop	B		stop

		AREA	eg3,DATA,READONLY	; the DATA Area should always place after CODE Area

VALS	SPACE	4
		DCD		2
		DCD		4
		DCD		5
			
		ALIGN
		END