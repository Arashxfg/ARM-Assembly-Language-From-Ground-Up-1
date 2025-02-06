		AREA FFT,CODE,READONLY
		ENTRY
	
start	MOV		R0,#10		;set up parameters
		MOV		R1,#3
		
		ADD		R0,R0,R1	; R0 = R0 + R1
		
stop	B		stop
		END