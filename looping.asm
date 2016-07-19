[bits 32]
extern printf
; BEGIN

; CONSTANTS
segment .rodata
  %assign syscall 0x80
; end of constants declaration

; MACROS DEFINITION
; [ write ]
  %macro write 2
    mov eax,0x04
    mov ebx,0x01
    mov ecx,%1
    mov edx,%2
    int syscall
  %endmacro
; [ exit ]
  %macro exit 1
    mov eax,1
    mov ebx,%1
    int syscall
  %endmacro
; end of macros

segment .data
  message: db 'looping...',0xa,0  ; message tha will be displayed for every loop
  len equ $-message               ; message length

  error: db 'sorry, no loop can be executed.',0xa,0
  lerror equ $-error

segment .bss
  foo: resb 0xa

segment .text

  global _start                   ; program start

_start:
  xor eax,eax                     ; set EAX = 0
  mov eax,0xa
  ; mov [foo], db'a'
  jmp loop                        ; if EAX <> 0 then jump to loop instruction
  ; write error,lerror              

loop:
  push eax
  write message,len
  pop eax
  sub eax,1
  jnz loop
  exit 0

; END OF PROGRAM  
