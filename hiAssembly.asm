; nasm -s -felf32 hiassembly.asm
; ld -s -melf_i386 -o hiassembly hiassembly.o
; ./hiassembly

section .data                     ; deals with initialized data
msg db 'Hello, I'm assembly', 0AH ; message I want to write on the screen
len equ $-msg                     ; var length

section .bss                      ; unitiallized data
var_qualquer db 4                 ; just declare an unitiallized var

section .text                     ; all src code will be wrote here
global _start                     ; defines start of program
_start:
  ; WRITE
  mov edx, len                    ; pass the length of msg in edx register   
  mov ecx, msg                    ; pass the msg in ecx register
  mov ebx, 1                      ; pass to ebx, the file descriptor nmbr
  mov eax, 4                      ; syscall write nmbr
  int 80h                         ; interrupt that calls the kernel env
  ; EXIT
  mov ebx, 0                      ; return value of exit
  mov eax, 1                      ; pass to ebx, the nmbr of exit syscall
  int 80h                         ; interrupt that calls the kernel to do something
  
  ; ALL RIGHT, that's all folks! õ/ I-Y-L
