section .data

	DD_DEMO	DD	1234.5678, 0x10	; allocates 4 bytes

section .text
   global _start          	; define program entry point for linker
	
_start:                   		
	mov eax, 1		; move 1 into general purpose register eax
	mov ebx, 42		; move DD_DEMO into ebx register
	int 0x80		; System Interrupt
