section .data
	num1 DB 9 
	num2 DB 2
	result DB 0
	ascii_result DB '0', 0xA 	

section .text
global _start

_start:
	MOV AL, [num1]
	SUB AL, [num2]
	MOV [result], AL

	ADD AL, 48
	MOV [ascii_result], AL

	MOV eax, 4
	MOV ebx, 1
	LEA ecx, [ascii_result]
	MOV edx, 2 
	
	INT 0x80

	MOV eax, 1
	MOV ebx, ebx
	INT 0x80
