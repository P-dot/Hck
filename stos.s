
.data
HelloWorldString: .asciz "Hello World\n"

.bss
.lcomm DestinationStos, 100

.text
.globl _start 
_start:
       nop 
       movl HelloWorldString, %eax
       leal DestinationStos, %edi
       stosb
       stosw
       stosl

       movl $1, %eax
       movl $0, %ebx
       int $0x80
      
