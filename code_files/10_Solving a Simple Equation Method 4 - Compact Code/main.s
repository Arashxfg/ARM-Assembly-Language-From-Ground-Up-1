;P = Q + R + S
;Q = 2, R = 4, S = 5

		AREA	eg4,CODE,READONLY
		ENTRY
		EXPORT __main
__main			
		ADRL	R0,P
		LDR		R1,[R0,#4]
		LDR		R2,[R0,#8]
		
		ADD		R2,R1,R2
		
		LDR		R1,[R0,#12]
		
		ADD		R2,R1,R2
		
stop	B		stop
		
		AREA	eg4,DATA,READONLY

P		SPACE		4
Q		DCD			2
R		DCD			4
S		DCD			5

		ALIGN
		END