section .data
	less db "eax is less/equal than 10",10,0	;equal = "eax is less than 10 \n"
	len equ $ - less			;get length of equal

global _start

section .text
_start:
	mov ebx, 0	; set ebx to 0
	mov eax, 5	; set eax to 5
	cmp eax, 10	; compare eax to 10
	jle lessThan10	; jump if eax is less than 10
	mov ebx, 100	; set exit status to 100
	int 0x80	; interrupt code = 80
	jmp end		; if eax is not less than 10 end program.

lessThan10:
	mov eax,4	;eax = 4
	mov ebx,1	;ebx = 1
	mov ecx,less	;ecx = less
	mov edx,len	;edx = len
	int 0x80	;interrupt code 0x80

	mov eax,1 	;system exit call 
	mov ebx,0	;argument returned 0
	int 0x80	;interrupt code 0x80

end:
	mov eax,1 	;system exit call 
	mov ebx,0	;argument returned 0
	int 0x80	;interrupt code 0x80

