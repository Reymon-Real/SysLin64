bits 64

global sys_write: function

section .text
    sys_write:
        mov rdx, rsi
        mov rsi, rdi
        mov edi, 1
        mov eax, 1
        syscall
        ret
    .pic: dq $ - sys_write