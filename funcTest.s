
.data
HelloWorld:
        .asciz "Hw"
CallMeAgain:
        .asciz "Call"
.text
.globl _start
_start:
       nop
       call CallMe
       movl $4, %eax
       movl $1, %ebx
       movl $HelloWorld, %ecx
       movl $2, %edx 
       int $0x80
       jmp Out

callMe:
       pushl %ebp
       movl %esp, %ebp
       #enter
       movl $4, %eax 
       movl $1, %ebx
       movl $CallMeAgain, %ecx
       movl $13, %edx
       int $0x80
       movl %ebp, %esp
       popl %ebp
       #leave 
       ret

Out: 
       movl $1, %eax 
       movl $0, %ebx
       int $0x80
