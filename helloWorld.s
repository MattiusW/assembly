section .data
	msg DB "Hello World!", 0xA ;Text write with new line
	
section .text
global _start

_start: 
	;Call sys_write

	MOV eax, 4 	;Syscall 4 = sys_write
	MOV ebx, 1 	;File descriptor 1 = Standart output stdout 
	MOV ecx, msg  	;Pass text addres to ecx
	MOV edx, 13	;Text length (without end sing but new line)
	INT 80h
	
	;Call sys_exit

	MOV eax, 1 	;Syscall 1 = sys_exit
	XOR ebx, ebx	;Exit status 0 (succeed)
	INT 80h 	;System call (syscall)

