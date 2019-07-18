.data 
HelloWorldString: .asciz "Hello World\n"
Another: .asciz "Another me\n"
.bss
.lcomm Destination, 100
.lcomm DestinationRep, 100
.lcomm DestinationStos, 100

.text 
         .globl _start

         _start:
                nop
                movl $HelloWorldString, %esi
                movl $Destination, %edi
                movsb #mueve el caracter 'H', 1 byte, esi se desplaza un byte
                movsw #mueve los caracteres "el", 2 bytes, esi se desplaza dos bytes 
                movsl #mueve los caracteres "lo w", 4 bytes, esi se desplaza cuatro bytes
                mov $1, %eax
                mov $0, %ebx
                int $0x80
