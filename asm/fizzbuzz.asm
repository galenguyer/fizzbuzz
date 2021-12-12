section .text
global _start

_start:
    mov eax, 4 ; sys_write
    mov ebx, 1 ; stdout
    mov ecx, msg
    mov edx, msg_len
    int 0x80

    mov eax, 1 ; sys_exit
    mov ebx, 0 ; exit code
    int 0x80

section .data
msg db 'Hello, World!', 0xa ; 0xa = \n
msg_len equ $-msg
