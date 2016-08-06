
extern print_Str

segment .bss
segment .data
        msg: db 'simple info.',0xa,0
segment .rodata
segment .text
        global _start
  
  _start:
        call print_Str msg
        
        mov eax,0x01
        mov ebx,0x00
        int 0x80
