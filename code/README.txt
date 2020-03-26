Code Snippet 1 "HELLO WORLD":
-----------------------------
section .data
    Hello db "Hello World!",10,0
    len equ $ - Hello

section .text
        global _start

start:
        mov eax,4
        mov ebx,1
        mov ecx,Hello
        mov edx,len
        int 80h

        mov eax,1
        mov ebx,0
        int 0x80