global _start

section .text
_start:
	mov eax, 1	; eax = 1
	mov ebx, 5	; ebx = 5 --> set this equal to number you want to be factored
	
label:
	mul ebx		; eax *= ebx 
	dec ebx		; ebx -= 1
	cmp ebx, 1	; compare ebx with 1
	jg label	; jump to label if greater
	mov ebx, eax	; ecx = eax
	mov eax, 1	; sys_exit system call
	int 0x80	; interrupt = 0x80
