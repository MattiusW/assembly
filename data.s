section .data
	char DB 'M', 0xA
	char1 DB 'A', 0xA
	sign DB 'T', 0xA
	sign2 DB 'I', 0xA

section .text
global _start

_start:
	MOV eax, 4	;sys_write
	MOV ebx, 1	;stdout
	LEA ecx, [char]
	MOV edx, 2 	;number of bytes
	INT 80h

	MOV eax, 4
	MOV ebx, 1
	LEA ecx, [char1]
	MOV edx, 2
	INT 80h

	MOV eax, 4
	MOV ebx, 1
	LEA ecx, [sign]
	MOV edx, 2
	INT 80h
	
	MOV eax, 4
	MOV ebx, 1
	LEA ecx, [sign2]
	MOV edx, 2
	INT 80h
	
	MOV eax, 1	;sys_exit
	XOR ebx, ebx 	;Code of ending (0)
	INT 80h
