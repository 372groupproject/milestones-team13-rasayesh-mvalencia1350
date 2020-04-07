section .data
	equal db "eax is equal to 1",10,0	;equal = "eax is equal to 1\n"
	len equ $ - equal			;get length of equal

global _start

section .text
_start:
	mov ebx, 0	; set ebx to 0
	mov eax, 1	; set eax to 1
	cmp eax, 1	; compare eax to 1
	je equalTo1	; jump if eax is equal to 1
	mov ebx, 100	; set exit status to 100
	int 0x80	; interrupt code = 80

equalTo1:
	mov eax,4	;eax = 4
	mov ebx,1	;ebx = 1
	mov ecx,equal	;ecx = equal
	mov edx,len	;edx = len
	int 80h		;interrupt code 80h

	mov eax,1 	;system exit call 
	mov ebx,0	;argument returned 0
	int 0x80	;interrupt code 0x80
	
