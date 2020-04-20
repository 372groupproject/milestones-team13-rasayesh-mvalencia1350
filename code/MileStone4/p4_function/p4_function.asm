section .data
	Msg1 db "This will print inside the function func.",10,0	
	Msg1Len equ $ - Msg1    ;get length of Msg1

section .text

global _start

_start:
    call func
    mov eax, 1
    int 0x80

func:
    ; Prologue
    push ebp
    mov  ebp, esp

    mov eax,4	        ; sys_write system call
	mov ebx,1	        ; stdout file descriptior 
	mov ecx,Msg1	    ; bytes to write 
	mov edx,Msg1Len	    ; number of bytes to write
    int 0x80            ; perform system call

    ; Epilogue
    mov esp, ebp          
    pop ebp  
    ret

