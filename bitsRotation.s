
.text
.globl _start

_start:
       movl $64, %eax
       movl $32, %ebx
       movl $-16, %ecx

       shl $1, %eax # Derecha a Izquierda, Multiplicar por 2 el valor de EAX.
       shr $2, %ebx # Izquierda a Derecha. Dvidir por 4 el valor de EBX.

       sar $1, %ecx # Izquierda a Derecha. Dividir por 2 el valor de ECX conservando el signo.

       movl $12, %ebx
       ror %ebx #Rotación de bits de izquierda a derecha 
       rol %ebx #Rotación de bits de derecha a izquierda

       movl $1, %eax 
       movl $0, %ebx
       int $0x80

