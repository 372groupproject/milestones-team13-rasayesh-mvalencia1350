References
------------

Authors:

Reza Munoz-Asayesh [rasayesh@email.arizona.edu](mailto:rasayesh@email.arizona.edu)  
Martin Valencia    [mvalencia1350@email.arizona.edu](mailto:mvalencia1350@email.arizona.edu)  

## Book
* https://archive.org/details/8086808880286ass0000scan/page/n5

## Website
* https://cs.lmu.edu/~ray/notes/x86assembly/
* https://www.nayuki.io/page/a-fundamental-introduction-to-x86-assembly-programming
* https://ccm.net/faq/1559-compiling-an-assembly-program-with-nasm
* https://www.youtube.com/playlist?list=PLmxT2pVYo5LB5EzTPZGfFN0c2GDiSXgQe

## Reference Manual
* https://docs.oracle.com/cd/E19253-01/817-5477/817-5477.pdf

## Community
* https://www.reddit.com/r/x86/

## Major Project
* https://www.youtube.com/watch?v=5v1Pz0bzO1g
* https://www.youtube.com/watch?v=kXbMCKMJXXQ

## Compiler/Interpreter 
* Using nasm assembler

## Executing Assembly program
* Open lectura, locate file to execute.
* To run a program, use ```./executablename```
* Ex. to run helloworld use ```./helloworld```

NOTES:
------------
* Remember to change file permissions:
1. the user can read, write, and execute it;
2. members of your group can read and execute it; 
3. and others may only read it.
```
 chmod u=rwx,g=rx,o=r myfile 
```
* Steps to get from .asm file to exec file in Ubuntu. 
```
.asm (1.assemble) -> .o (2.link)  -> 3.executable
```
1. nasm -f elf filename
2. ld -m elf_i386 filename.o -o filename
3. ./filename (run the file)

* Helpful website for Makefiles:
https://www.gnu.org/software/make/manual/html_node/Introduction.html


