extern printf
extern exit

section .data
	msg DD "Hello Function C!", 0
	fmt DB "%s", 0xA

section .text
global main

; printf(format, msg)

main:
	PUSH msg  	; Push on stack first in last out!
	PUSH fmt
	CALL printf
	PUSH 1
	CALL exit	
