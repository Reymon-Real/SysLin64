bits 64

global sys_exit: function

section .text
    sys_exit:
        mov eax, 0x3C
        mov edi, 0x00
        syscall
        ret
    .pic: dq $ - sys_exit