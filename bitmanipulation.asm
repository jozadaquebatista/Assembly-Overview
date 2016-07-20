; Like other programming languages, the assembly language let us use shift and logical
; operations, so lets do it. :)

segment .text
  global _start
  
_start:
  mov eax,0x05  ; >> and <<(left, right) bit shifting operations
  mov ebx,0x02
  shl ebx,eax
  shr eax,ebx
  
  xor eax,ecx   ; XOR | example: 0101 xor 1001 = 1100
  and ecx,eax   ; AND | example: 0101 and 1001 = 0001
  or ebx,eax    ; OR  | example: 0101 or 1001 = 1101
  
  push ebx      ; push ebx to stack
  push eax      ; push eax to stack
  push ecx      ; push ecx
  
  mov eax,1     ; exit syscall
  mov ebx,0
  int 80h
  
