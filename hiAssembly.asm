section .data   ; sessao que que trata das var armazenadas
msg db 'Hello, I'm assembly', 0AH
len equ $-msg

section .bss
var_qualquer db 4

section .text   ; sessao que fica armazenadas as intrucoes
global _start
_start:

        mov edx, len
        mov ecx, msg
        mov ebx, 1
        mov eax, 4
        int 80h

        mov ebx, 0
        mov eax, 1
        int 80h
