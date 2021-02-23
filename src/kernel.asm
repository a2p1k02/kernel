bits 32

MAGIC       equ 0x1BADB002
FLAGS       equ 0x0
CHECKSUM    equ -MAGIC

section .text
    align 4
    dd MAGIC
    dd FLAGS
    dd CHECKSUM

global start
extern kmain

start:
    cli
    mov esp, stack_space
    call kmain
    hlt
    
section .bss
resb 8192
stack_space: