bits 32 

global loader 
extern kmain

;Multiboot header
MODULEALIGN equ  1<<0
MEMINFO     equ  1<<1
MAGIC       equ  MODULEALIGN | MEMINFO
MAGIC       equ  0x1BADB002
CHEKSUM     equ -(MAGIC + FLAGS)

Multibootheader:
      dd MAGIC
      dd FLAGS
      dd CHEKSUM

STACKSIZE equ 0x4000       ;16 KB
