[bits 32]

%define syscall 0x80

%macro print 1
        mov eax,0x04      ; sys_write      
        mov ebx,0x01      ; fd
        
        push %1
        mov ecx, esp      ; esp *---> 'A'
        mov edx,0x01      ; len char
        int syscall
        add esp,0x04      ; restore esp
%endmacro

%macro exit 1
        mov eax,0x01      ; sys_exit            
        mov ebx,%1            
        int syscall
%endmacro

segment .rodata
segment .data
segment .bss

  section .text
        global _start

  _start:
        print 'J'
        exit 0
