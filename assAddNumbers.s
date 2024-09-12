section .data
	num1 DB 4
	num2 DB 3
	result DB 0
	ascii_result DB '0', 0xA ; Need convert sum to text format

section .text
global _start

_start:	
	MOV AL, [num1]		; Load num1 to register AL
	ADD AL, [num2] 		; ADD num2 to AL
	
	MOV [result], AL	; Save register result to variable

	; Convert result to ASCII	
	ADD AL, 48		; ADD 48 that convert result to ASCII sign
	MOV [ascii_result], AL  ; Save ASCII result
	
	; View result
	MOV eax, 4 		; sys_write
	MOV ebx, 1		; stdout
	LEA ecx, [ascii_result] ; Address result in form ASCII
	MOV edx, 2		; Number of byte to view (1 number plus new line)
	INT 0x80
	
	; END PROGRAM
	MOV eax, 1		; sys_exit
	XOR ebx, ebx		; End code 0
	INT 0x80			; sys_call 
	
