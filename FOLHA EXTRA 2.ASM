	MOV BL,90
	MOV CL,00

LER:	IN 00
	CMP AL,0D
	JZ DIS1 
	CMP AL,30
	JS LER
	CMP AL,0D 
	CMP AL,3A 
	JNS LER 
	INC CL
	MOV [BL],AL
	INC BL
	JMP LER 
DIS1:	PUSH	CL
	POP	BL
DIS:
	MOV CL,C0
	MOV DL,90
LA:
	MOV AL,[DL]
	MOV [CL],AL
	INC DL
	INC CL
	DEC BL
	JNZ LA
	END
	

		















