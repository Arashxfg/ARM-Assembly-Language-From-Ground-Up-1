		AREA swap,CODE,READONLY
		ENTRY
		EXPORT __main
__main
		LDR		R0,=0XBABEFACE
		LDR		R1,=0XDEADBEEF
		
		EOR		R0,R0,R1
		EOR		R1,R0,R1
		EOR		R0,R0,R1
		
stop	B		stop
		ALIGN
		END
		