global start

extern sys_write: function
extern sys_exit: function

section _CODE
    start:

        align 16
        mov rdi, msg.pointer
        mov rsi, msg.length
        call sys_write

        jmp sys_exit

section _DATA
    msg:
        .pointer: db "Hola Mundo", 0xD, 0xA, 0x0
        .length: equ $ - msg.pointer