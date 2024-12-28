global start

%include "syslin.inc"

section .text
    start:

        align 16
        mov rdi, msg.pointer
        mov rsi, msg.length
        call sys_write

        jmp sys_exit

section .rodata
    msg:
        .pointer: db "Hola Mundo", 0xD, 0xA, 0x0
        .length: equ $ - msg.pointer