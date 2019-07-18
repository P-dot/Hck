.section .data 
        output:
                           .asciz "%s\n"
.section .text 
.globl  _start 
        _start:
               mov %esp, %ebp
               add $12, %ebp                #Asumimos que no se han acercado por línea de comandos 
VariablesEntorno:
               cmp $0, (%ebp)
               je Finish
               push (%ebp)
               push $output 
               call printf
               add $8, $esp
               add $4, %ebp
               loop VariablesEntorno
Finish:
               push $0
               call exit                    #Función Exit de C para finalizar el programa
