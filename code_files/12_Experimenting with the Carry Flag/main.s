			AREA myCode,CODE,READONLY
			ENTRY
			EXPORT __main
__main
			LDR		R0,=0XF62562FA
			LDR		R1,=0XF412963B
			
			MOV		R2,#35
			MOV		R3,#21
			
			ADDS	R5,R1,R0
			ADC		R6,R2,R3	;R6 = R2 + R3 + Carry_of_line_11
			
stop		B		stop
			END