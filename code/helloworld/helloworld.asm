section .data
	Hello db "hello world",10,0	;Hello = "hello world\n"
	len equ $ - Hello		;get length of Hello

section .text
	global _start

_start:
	mov eax,4	;eax = 4
	mov ebx,1	;ebx = 1
	mov ecx,Hello	;ecx = Hello
	mov edx,len	;edx = len
	int 80h		;interrupt code 80h

	mov eax,1 	;system exit call 
	mov ebx,0	;argument returned 0
	int 0x80	;interrupt code 0x80
