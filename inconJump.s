
.data
LabelStart: .asciz "Start Label\n"
Label1Str: .asciz "Label 1\n"
Label2Str: .asciz "Label 2\n"
Label3Str: .asciz "Label 3\n"

.text 
        .globl _start
        _start:
               movl $4, %eax 
               movl $1, %ebx
               movl $11, %edx
               movl $LabelStart, %ecx
               int $0x80
               jmp Label1
          
         Label1:
               movl $4,%%eax 
               movl $1, %ebx
               movl $7, %edx
               movl $Label1Str, %ecx 
               int $0x80
               jmp Exit

         Exit:
               movl $1, %eax
               movl $0, %ebx
               int $0x80


      
