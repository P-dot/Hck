.data 
HelloWorldStr: .asciz "Hello World\n"

.bss 
.lcomm Destination, 100

.text 
         .globl _start 

         _start:
                nop
                movl $HelloWorldStr, %esi 
                movl $Destination, %edi
                cld
                movl $11, %ecx
                rep movsb
                movl $1, %eax 
                movl $0, %ebx
                int $0x80
