bits 64

global sys_open: function

section .text
    sys_open:
        mov eax, 2
        syscall
        ret
    .pic: dq $ - sys_open