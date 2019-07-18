
.data 
HelloWorldString: .asciz "Hello World\n"


.text 
.globl _start
_start:
       nop
       cld #Limpia direction flag.
       leal HelloWorldString, %esi
       lodsb #Mueve 1 byte
       movb $0, %al #Limpia register al
       dec %esi #Es necesario decrementar el esi manualmente

       lodsw #Mueve 2 bytes 
       movw $0, %ax #Limpia register al
       subl $2, %esi #se necesita decrementar esi manualmente
       lodsl #Mueve 4 bytes.
   
       movl $1, %eax
       movl $0, %ebx
       int $0x80
