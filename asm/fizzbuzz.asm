section .text
global _start

_start:
    mov rax, 4 ; sys_write
    mov rbx, 1 ; stdout
    mov rcx, msg
    mov rdx, msg_len
    int 0x80

    mov rax, 1 ; exit
    mov rbx, 0
    int 0x80

section .data
msg db 'Hello, World!', 0xa ; 0xa = \n
msg_len equ $-msg
