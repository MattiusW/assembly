section .data
	pathname DD "/home/mattius/Nauka/assembly/example.txt"

section .bss
	buffer: resb 1024

section .text
global main

main:
	MOV eax, 5
	MOV ebx, pathname
	MOV ecx, 0
	INT 80h
	
	MOV ebx,eax
	MOV eax,3
	MOV ecx, buffer
	MOV edx,1024
	INT 80h
	
