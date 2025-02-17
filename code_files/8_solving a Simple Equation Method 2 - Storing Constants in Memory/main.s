;P = Q + R + S
;LET Q = 2,R = 4,S = 5

		AREA	simpleAddData,DATA,READONLY
		
P		SPACE		4 ;reserve 4 bytes of memory
Q		DCD			2 ; create variable Q with internal value 2,Q = 0x00000002
R		DCD			4 ; create variable R with internal value 4,R = 0x00000004
S		DCD			5 ; create variable S with internal value 5,S = 0x00000005
	
		AREA	simpleAddCode,CODE,READONLY
		ENTRY
		EXPORT __main
__main
		LDR		R1,Q
		LDR		R2,R
		LDR		R3,S
		
		ADD		R0,R1,R2
		ADD		R0,R0,R3
		
stop	B		stop
		END