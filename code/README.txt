Code Snippet 1 "hello world":
-----------------------------
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

Description: Prints "hello world".

How to run: 
1. Open lectura, locate "helloworld" directory and cd into it.
2. once you are inside "helloworld" directory
   type "./helloworld" into command line.


Code Snippet 2 "something else":
-----------------------------
section .text
	global _start

_start:

	mov eax,1	; eax = 1 (32-bit register)
	mov ecx,2	; ecx = 2 (32-bit register)	
	mov edx,3	; edx = 3 (32-bit register)
	mov ebx,4	; ebx = 4 (32-bit register)

	mov ax,5	; ax = 5 (16-bit register)
	mov cx,6	; cx = 6 (16-bit register)
	mov dx,7	; dx = 7 (16-bit register)
	mov bx,8	; bx = 8 (16-bit register)

	mov al,9	; al = 9 (8-bit-low register)
	mov cl,10	; cl = 10 (8-bit-low register)
	mov dl,11	; dl = 11 (8-bit-low register)
	mov bl,12	; bl = 12 (8-bit-low register)

	mov ah,13	; ah = 13 (8-bit-high register)
	mov ch,14	; ch = 14 (8-bit-high register)
	mov dh,15	; dh = 15 (8-bit-high register)
	mov bh,16	; bh = 16 (8-bit-high register)

	mov eax,1	; system exit code eax = 1
	mov ebx,0	; system exit argument = 0
	int 0x80	; system interrupt code = 0x80

Description: The point of this code is to demonstrate in x86 how the user can
load numbers into 32-bit Registers, 16-bit Registers, 8-bit High/Low Registers.
The program does not display/print anything, however the movement of the numbers 
into the registers can be observed using a hexEditor. 

How to run: 
1. Open lectura, locate "registerload" directory and cd into it.
2. once you are inside "registerload" directory
   type "./registerload" into command line.
