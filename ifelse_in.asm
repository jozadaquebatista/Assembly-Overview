; simple if/else

segment .data
        msg db 'You did it.',0xa,0
        len equ $-msg
        
segment .text
        global _start:
  
        mov eax,0x5f
        cmp eax,0                   ; eax => 0 ?
        jeg bye                     ; jump if equal or greater than
        
        jmp exit
bye:
        mov eax,0x4
        mov ebx,0x1
        mov ecx,msg
        mov edx,len
        
exit:
        xor eax,eax
        mov eax,0x1
        mov ebx,0
        
                                  ; READ MORE: http://unixwiz.net/techtips/x86-jumps.html
