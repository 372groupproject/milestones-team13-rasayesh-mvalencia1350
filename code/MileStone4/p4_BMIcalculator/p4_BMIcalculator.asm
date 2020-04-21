; Compile this code with gcc
; nasm -f elf32 p4_struct.asm -o p4_struct.o
; gcc -m32 p4_struct.o -o p4_struct
;
; http://www.science.smith.edu/dftwiki/index.php/CSC231_Floating-Point_Assembly_Examples

global main
extern printf, scanf

section .data
	msg1 db "Enter your weight(in lb): ",0
    msg2 db "Enter your height(in lb): ",0
    msg3 db "Your BMI is -> %.2f",10,0
    format db "%f",0
    
section .bss
    height: resb 4
    weight: resb 4
    result: resb 4

section .text
main:
    push ebp                ; Prologue
    mov  ebp, esp

    push msg1               ; printf("Enter your weight(in lb): \n")
    call printf
    pop eax

    push weight             ; scanf("%f", weight)
    push format
    call scanf
    add esp, 8

    push msg2               ; printf("Enter your height(In): \n")
    call printf
    pop eax

    push height             ; scanf("%f", height)
    push format
    call scanf 
    add esp, 8

    call calcBMI            ; function calcBMI

    mov eax, 0
    mov esp, ebp        ; Epilogue    
    pop ebp  
    ret

calcBMI:
    ; Prologue
    push ebp
    mov  ebp, esp

    fld	dword [height]      ; need to convert 32-bit to 64-bit
	fld	dword [height]
	fmul
	fstp	dword [result]  ; store sum in result

    fld	dword [weight]      ; need to convert 32-bit to 64-bit
	fld	dword [result]
	fdiv
	fstp	dword [result]  ; store sum in result

    push	__float32__( 703.0 )	; put 32-bit float 3.5 in memory (actually in stack)
	fld	dword [esp]
	fld	dword [result]
	fmul
	fstp	dword [result]  ; store sum in result

    sub esp, 8
    mov ebx, result
    fld dword [ebx]
    fstp qword [esp]
    push msg3
    call printf
    add esp, 12

    ; Epilogue
    mov esp, ebp          
    pop ebp  
    ret