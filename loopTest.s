.section .data 
        output:
               .asciz "El valor es: %d\n"
.globl _start
_start:
       movl $3, %ecx 
       movl $0, %rax

looping:
       inc %rax 
       loop looping
       pushq %rax 
       pushl $output 
       call printf                  #Invocación función PRINTF de C.
       addl $8, %esp
       movl $4, %edx 

loopingNonZero:
       dec %edx
       loopnz loopingNonZero
       movl $1, %rax
       movl $0, %ebx 
       int $0x80
        
