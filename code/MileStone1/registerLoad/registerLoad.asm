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
