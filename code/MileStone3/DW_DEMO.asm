section .data

	DW_DEMO	DW	12345678, 0x10	; allocates 2 bytes

section .text
   global _start          	; define program entry point for linker
	
_start:                   		
	mov eax, 1		; move 1 into general purpose register eax
	mov ebx, 42		; move DW_DEMO into ebx register
	int 0x80		; System Interrupt

