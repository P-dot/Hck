.data
HellosWorldString: .ascii "Hello World\n"
ByteLocation: .byte 10
Int32: .int 3
Int16: .int 2
Float: .float 10, 22
IntegerArray: .int 1,2,3,4,5

.text
         .globl _start
         
          _start:
                 nop
                 movl $10, %eax 
                 movl $20, Int16
                 movl %eax, %ebx
                 movb $3, %al
                 movb %al, ByteLocation
                 movl $0, %ecx
                 movl $2, %edi
                 movl $30, IntegerArray(%ecx, %edi, 4)

                 movl $1, %eax
                 movl $0, %ebx
                 int  $0x80
