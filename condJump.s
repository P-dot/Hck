
.data
LabelStart: .asciz "Start Label"
Label1: .asciz "Label 1"
Label2: .asciz "Label 2"
Label3: .asciz "Label 3"

.section .text
.globl _start
_start:

       nop 
       movl $15, %eax
       movl $10, %ebx
       cmp %eax, %ebx
       jle lessorequals #Salto condicional si ZF = 1 o SF<>OF
       movl $1, %eax


lessorequals:
       movl $10, %eax
       movl $15, %ebx
       cmp %eax, %ebx
       jge greaterorequals #Salto condicional si ZF = 1 o SF=OF

greaterorequals:
       movl $10, %eax 
       movl $10, %ebx
       cmp %eax, %ebx

Exit:
       movl $1, %eax
       movl $0, %ebx
       int $0x80
