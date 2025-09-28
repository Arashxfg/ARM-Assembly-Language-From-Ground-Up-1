		AREA MyCode,CODE,READONLY
		ENTRY
		EXPORT __main
__main
		MOV		R2,#4
		MOV		R3,#2
		MOV		R4,#4
		
		SUBS	R5,R2,R3
		SUBS	R5,R2,R4
		
stop	B		stop
		END