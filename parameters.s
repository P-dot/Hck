
.section .data
        output1:
                        .asciz "Hay %d parametros: \n"
        output2:
                        .asciz "%s\n"
.section .text 
.globl _start
_start:
       movl (%esp), %ecx     #Referencia del ESP en ECX para conocer el número de elementos insertados (parámetros)
       pushl %ecx
       pushl $output1
       call printf 
       addl $4, %esp         #Limpia la Stack del parametro output1
       popl %ecx                      #Extrae el valor del ECX la Stack
       movl %esp, %ebp       #EBP apuntará al ES
       addl $4, %ebp         #Sumamos 4 al EBP, ahora el EBP apunta al primer parámetro insertado en la stack

loop1:
               pushl %ecx             #Numero de iteraciones (número de argumentos insertados en la stack)
               pushl (%ebp)  #Valor de una variable
               pushl output2
               call printf
               addl $8, %esp #Limpia la Stack de argumentos los argumentos 
               popl %ecx              #Extrae de la stack el valor del register ECX
               addl $4, %ebp #Se mueve el register EBP a la siguiente variable del programa
               loop loop1
Finish:
               pushl $0
               call exit     #Función exit de C para salir del programa
