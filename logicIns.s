
.text 
.globl _start
_start:
       nop 
       movl $10, %eax                               
       andl $8, %eax             # 1010 AND 1000 = 1000        
       xorl $8, %eax             # 1000 XOR 1000 = 0000
       notl %eax                 # NOT 0000 = FFFF - No hay valor negativo para el 0, su negación en es -1
       movl $8, %eax 
       test $0, %eax             # 1010 AND 0000 = 0000 - No se altera el valor del register EAX.
       jz Zero 
       movl $1, %eax 
       movl $10, %ebx
       int $0x80
Zero:
       movl $1, %eax
       movl $10, %ebx
       int $0x80
       
