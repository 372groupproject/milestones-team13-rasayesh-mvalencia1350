section .data
	Msg1 db "This won't be printed.",10,0	;Msg1 = "is  won't be  printed.\n"
	Msg1Len equ $ - Msg1		            ;get length of Hello
    Msg2 db "This will be printed.",10,0	;Hello = "This will be printed.\n"
	Msg2Len equ $ - Msg2		            ;get length of Hello

section .text
	global _start

_start:
	mov eax,4	    ;eax = 4
	mov ebx,1	    ;ebx = 1
	mov ecx,Msg2	;ecx = Msg2
	mov edx,Msg2Len	;edx = Msg2Len
    jmp skip        ;jumps to skip
	mov ecx,Msg1	;ecx = Msg1
	mov edx,Msg1Len	;edx = Msg1Len
skip:
	int 80h		    ;interrupt code 80h

	mov eax,1 	;system exit call 
	mov ebx,0	;argument returned 0
	int 0x80	;interrupt code 0x80