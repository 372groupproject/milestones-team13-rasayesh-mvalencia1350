Code Snippet 1 "hello world":
-----------------------------
section .data
	Hello db "hello world",10,0
	len equ $ - Hello

section .text
	global _start

_start:
	mov eax,4
	mov ebx,1
	mov ecx,Hello
	mov edx,len
	int 80h

	mov eax,1
	mov ebx,0
	int 0x80

Description: Prints "hello world".

How to run: 
1. Open lectura, locate "helloworld" file
2. once you are inside same directory that helloworld file is in
   then type "./helloworld".


Code Snippet 2 "something else":
-----------------------------
