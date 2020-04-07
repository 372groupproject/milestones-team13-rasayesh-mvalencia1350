Smallish program - "Factoring Program":
-----------------------------
  
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

Description: The point of this code is to factor the number that is
set for the register ebx in the beginning. And output the factorial of 
said number.

How to run: 
1. Open lectura, locate "factor" directory and cd into it.
2. once you are inside "factor" directory
   type "./factor" into command line.
3. after typing "./factor" type "echo $?" into command
   line and the output will be shown.


Code Snippet 1 "Jump":
-----------------------------
section .data
	Msg1 db "This won't be printed.",10,0	;Msg1 = "is  won't be  printed.\n"
	Msg1Len equ $ - Msg1		        ;get length of Hello
        Msg2 db "This will be printed.",10,0	;Hello = "This will be printed.\n"
	Msg2Len equ $ - Msg2		        ;get length of Hello

section .text
	global _start

_start:
	mov eax,4	    ;eax = 4
	mov ebx,1	    ;ebx = 1
	mov ecx,Msg2	    ;ecx = Msg2
	mov edx,Msg2Len	    ;edx = Msg2Len
    jmp skip                ;jumps to skip
	mov ecx,Msg1	    ;ecx = Msg1
	mov edx,Msg1Len	    ;edx = Msg1Len
skip:
	int 80h		    ;interrupt code 80h

	mov eax,1 	;system exit call 
	mov ebx,0	;argument returned 0
	int 0x80	;interrupt code 0x80

Description: Prints "This will be printed." demonstrates use of jmp

How to run: 
1. Open lectura, locate "jump" directory and cd into it.
2. once you are inside "jump" directory
   type "./jump" into command line.


Code Snippet 2 "JumpEqual":
-----------------------------
section .data
	equal db "eax is equal to 1",10,0	;equal = "eax is equal to 1\n"
	len equ $ - equal			;get length of equal

global _start

section .text
_start:
	mov ebx, 0	; set ebx to 0
	mov eax, 1	; set eax to 1
	cmp eax, 1	; compare eax to 1
	je equalTo1	; jump if eax is equal to 1
	mov ebx, 100	; set exit status to 100
	int 0x80	; interrupt code = 80
	jmp end		; if eax not equal to 1 end program.

equalTo1:
	mov eax,4	;eax = 4
	mov ebx,1	;ebx = 1
	mov ecx,equal	;ecx = equal
	mov edx,len	;edx = len
	int 80h		;interrupt code 80h

	mov eax,1 	;system exit call 
	mov ebx,0	;argument returned 0
	int 0x80	;interrupt code 0x80

end:
	mov eax,1 	;system exit call 
	mov ebx,0	;argument returned 0
	int 0x80	;interrupt code 0x80
	
Description: Prints "eax is equal to 1" demonstrates use of je

How to run: 
1. Open lectura, locate "jumpEqual" directory and cd into it.
2. once you are inside "jumpEqual" directory
   type "./jumpEqual" into command line.
   

Code Snippet 3 "jumpGreaterThanEqual":
-----------------------------
section .data
	greater db "eax is greater/equal than 10",10,0	;equal = "eax is greater than 10 \n"
	len equ $ - greater				;get length of equal

global _start

section .text
_start:
	mov ebx, 0	; set ebx to 0
	mov eax, 11	; set eax to 11
	cmp eax, 10	; compare eax to 10
	jge lessThan10	; jump if eax is less than 10
	mov ebx, 100	; set exit status to 100
	int 0x80	; interrupt code = 80
	jmp end		; if eax is not greater than 10 end program.

lessThan10:
	mov eax,4	;eax = 4
	mov ebx,1	;ebx = 1
	mov ecx,greater	;ecx = greater
	mov edx,len	;edx = len
	int 0x80	;interrupt code 0x80

	mov eax,1 	;system exit call 
	mov ebx,0	;argument returned 0
	int 0x80	;interrupt code 0x80

end:
	mov eax,1 	;system exit call 
	mov ebx,0	;argument returned 0
	int 0x80	;interrupt code 0x80

Description: Prints "eax is greater/equal than 10" demonstrates use of jge

How to run: 
1. Open lectura, locate "jumpGreaterThanEqual" directory and cd into it.
2. once you are inside "jumpGreaterThanEqual" directory
   type "./jumpGreaterThanEqual" into command line.
   
   
Code Snippet 4 "jumpGreaterThan":
-----------------------------
section .data
	greater db "eax is greater than 10",10,0	;equal = "eax is greater than 10 \n"
	len equ $ - greater				;get length of equal

global _start

section .text
_start:
	mov ebx, 0	; set ebx to 0
	mov eax, 11	; set eax to 11
	cmp eax, 10	; compare eax to 10
	jG lessThan10	; jump if eax is less than 10
	mov ebx, 100	; set exit status to 100
	int 0x80	; interrupt code = 80
	jmp end		; if eax is not greater than 10 end program.

lessThan10:
	mov eax,4	;eax = 4
	mov ebx,1	;ebx = 1
	mov ecx,greater	;ecx = greater
	mov edx,len	;edx = len
	int 0x80	;interrupt code 0x80

	mov eax,1 	;system exit call 
	mov ebx,0	;argument returned 0
	int 0x80	;interrupt code 0x80

end:
	mov eax,1 	;system exit call 
	mov ebx,0	;argument returned 0
	int 0x80	;interrupt code 0x80

Description: Prints "eax is greater than 10" demonstrates use of jG

How to run: 
1. Open lectura, locate "jumpGreaterThan" directory and cd into it.
2. once you are inside "jumpGreaterThan" directory
   type "./jumpGreaterThan" into command line.
   
   
Code Snippet 5 "jumpIfNotSigned":
-----------------------------
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
    int 80h		    ;interrupt code 80h
    mov ecx,10      ;ecx = -10
    jns  skip       ;if ecx is not a signed number jump to skip
	mov eax,4	    ;eax = 4
	mov ebx,1	    ;ebx = 1
	mov ecx,Msg1	;ecx = Msg1
	mov edx,Msg1Len	;edx = Msg1Len
    int 80h		    ;interrupt code 80h
skip:

	mov eax,1 	;system exit call 
	mov ebx,0	;argument returned 0
	int 0x80	;interrupt code 0x80

Description: Prints "This will be printed." demonstrates use of jns

How to run: 
1. Open lectura, locate "jumpIfNotSigned" directory and cd into it.
2. once you are inside "jumpIfNotSigned" directory
   type "./jumpIfNotSigned" into command line.
   
   
Code Snippet 6 "jumpIfSigned":
-----------------------------
section .data
	Msg1 db "This won't be printed.",10,0	    ;Msg1 = "is  won't be  printed.\n"
	Msg1Len equ $ - Msg1		            ;get length of Hello
    	Msg2 db "This will be printed.",10,0	    ;Hello = "This will be printed.\n"
	Msg2Len equ $ - Msg2		            ;get length of Hello

section .text
	global _start

_start:
	mov eax,4	    ;eax = 4
	mov ebx,1	    ;ebx = 1
	mov ecx,Msg2	    ;ecx = Msg2
	mov edx,Msg2Len	    ;edx = Msg2Len
    int 80h		    ;interrupt code 80h
    mov ecx,-10             ;ecx = -10
    js  skip        	    ;if ecx is a signed number jump to skip
	mov eax,4	    ;eax = 4
	mov ebx,1	    ;ebx = 1
	mov ecx,Msg1	    ;ecx = Msg1
	mov edx,Msg1Len	    ;edx = Msg1Len
    int 80h		    ;interrupt code 80h
skip:

	mov eax,1 	;system exit call 
	mov ebx,0	;argument returned 0
	int 0x80	;interrupt code 0x80

Description: Prints "This will be printed." demonstrates use of js

How to run: 
1. Open lectura, locate "jumpIfSigned" directory and cd into it.
2. once you are inside "jumpIfSigned" directory
   type "./jumpIfSigned" into command line.
   
  
Code Snippet 7 "jumpLessThan":
-----------------------------
  
section .data
	less db "eax is less than 10",10,0	;equal = "eax is less than 10 \n"
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
	mov eax,4	; eax = 4
	mov ebx,1	; ebx = 1
	mov ecx,less	; ecx = less
	mov edx,len	; edx = len
	int 0x80	; interrupt code 0x80

	mov eax,1 	; system exit call 
	mov ebx,0	; argument returned 0
	int 0x80	; interrupt code 0x80

end:
	mov eax,1 	; system exit call 
	mov ebx,0	; argument returned 0
	int 0x80	; interrupt code 0x80

Description: Prints "eax is less/equal than 10" demonstrates use of jle

How to run: 
1. Open lectura, locate "jumpLessThan" directory and cd into it.
2. once you are inside "jumpLessThan" directory
   type "./jumpLessThan" into command line.
 
 
Code Snippet 8 "jumpLessThanEqual":
-----------------------------
  
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
	mov eax,4	; eax = 4
	mov ebx,1	; ebx = 1
	mov ecx,less	; ecx = less
	mov edx,len	; edx = len
	int 0x80	; interrupt code 0x80

	mov eax,1 	; system exit call 
	mov ebx,0	; argument returned 0
	int 0x80	; interrupt code 0x80

end:
	mov eax,1 	; system exit call 
	mov ebx,0	; argument returned 0
	int 0x80	; interrupt code 0x80

Description: Prints "eax is less/equal than 10" demonstrates use of jle

How to run: 
1. Open lectura, locate "jumpLessThanEqual" directory and cd into it.
2. once you are inside "jumpLessThanEqual" directory
   type "./jumpLessThanEqual" into command line.
   
   
Code Snippet 9 "jumpNotEqual":
-----------------------------
;https://asmtutor.com/
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
    int 80h		    ;interrupt code 80h
    cmp ecx, 100    ;ecx = 10
    jne skip        ;if ecx != 100 jump to skip
	mov eax,4	    ;eax = 4
	mov ebx,1	    ;ebx = 1
	mov ecx,Msg1	;ecx = Msg1
	mov edx,Msg1Len	;edx = Msg1Len
    int 80h		    ;interrupt code 80h
skip:

	mov eax,1 	;system exit call 
	mov ebx,0	;argument returned 0
	int 0x80	;interrupt code 0x80
	
Description: Prints "This will be printed." demonstrates use of jne

How to run: 
1. Open lectura, locate "jumpNotEqual" directory and cd into it.
2. once you are inside "jumpNotEqual" directory
   type "./jumpNotEqual" into command line.
