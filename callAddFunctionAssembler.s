extern cAddFunction
extern exit

section .data
	returnValue DB 0
	ascii_result DB '0', 0xA

section .text
global main

main:
	PUSH 3
	PUSH 4
	CALL cAddFunction
	PUSH returnValue 	; catch return value and put to variable
	MOV [returnValue], al
	ADD al, 48		; convert to ascii
	MOV [ascii_result], al

	; View value
	MOV eax, 4
	MOV ebx, 1
	LEA ecx, [ascii_result]
	INT 0x80
	CALL exit
