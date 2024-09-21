section .data
	number DB '7', 0xA

section .text
global _start

_start:
	MOV esi, 0 	; put value to not use register 

loop:	
	CMP esi, 3 	; compere value
	JE end    	; if this same go to end
	
	MOV eax, 4
	MOV ebx, 1
	LEA ecx, [number]
	MOV edx, 2
	INT 0x80

	INC esi 
	JMP loop 

end:	
	MOV eax, 1
	XOR ebx, ebx
	INT 0x80
