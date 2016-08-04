segment .rodata
segment .data
segment .bss

%define syscall 0x80

print:
        mov eax,0x04      ; sys_write      
        mov ebx,0x01      ; fd
                          ;           ' '
        push 'J'          ;           ' '
        mov ecx, esp      ; esp *---> 'J' <-- STACK
        mov edx,0x01      ; len char
        int syscall
        add esp,0x04      ; restore esp
        ret

exit:
        mov eax,0x01      ; sys_exit            
        mov ebx,0            
        int syscall

  section .text
        global _start

  _start:
        call print
        jmp exit
