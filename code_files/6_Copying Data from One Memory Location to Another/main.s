RAM1_ADDER		EQU		0x20000000  ;memory starting area
RAM2_ADDER		EQU		0x20000100
	
				AREA	myCode,CODE,READONLY
				ENTRY
				EXPORT __main
__main
				BL		FILL
				BL		COPY
				
stop			B		stop


FILL			LDR		R1,= RAM1_ADDER
				MOV		R0,#10
				LDR		R2,=0xDEADBEEF
				
L1				STR		R2,[R1]
				ADD		R1,R1,#4
				SUBS	R0,R0,#1
				BNE		L1
				BX		LR

COPY			LDR		R1,=RAM1_ADDER
				LDR		R2,=RAM2_ADDER
				MOV		R0,#10

L2				LDR		R3,[R1]
				STR		R3,[R2]
				ADD		R1,R1,#4
				ADD		R2,R2,#4
				SUBS	R0,R0,#1
				BNE		L2
				BX		LR
				
				END