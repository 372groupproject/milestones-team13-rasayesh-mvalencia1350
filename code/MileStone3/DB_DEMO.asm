section .data

	DB_DEMO	DB	'y', 0x10 ; allocates 1 byte


section .text
   global _start          	; define program entry point for linker
	
_start:                   		
	mov eax, 1		; move 1 into general purpose register eax
	mov ebx, 42		; move DB_DEMO into ebx register
	int 0x80		; System Interrupt


