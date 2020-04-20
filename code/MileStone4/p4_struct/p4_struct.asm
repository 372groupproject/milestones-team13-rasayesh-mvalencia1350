; Compile this code with gcc
; nasm -f elf32 p4_struct.asm -o p4_struct.o
; gcc -m32 p4_struct.o -o p4_struct

section .data
	msg1 db "The struct containts:",10,0
    msg2 db "mt_long: %ld",10,0
    msg3 db "mt_word: %d",10,0
    msg4 db "mt_byte: %c",10,0
    msg5 db "mt_str: %s",10,0

struc   mytype 
  mt_long:      resd    1 
  mt_word:      resw    1 
  mt_byte:      resb    1 
  mt_str:       resb    32 
endstruc

mystruc: 
    istruc mytype 
        at mt_long, dd      123456 
        at mt_word, dw      42
        at mt_byte, db      'x' 
        at mt_str,  db      'hello, world', 13, 10, 0 
    iend

section .text

global main
extern printf

main:
    push ebp                ; Prologue
    mov ebp, esp

    push msg1
    call printf
    pop eax

    push word [mystruc + 4]
    push msg3
    call printf

    mov eax, 0
    mov esp, ebp            ; Epilogue    
    pop ebp  
    ret
    