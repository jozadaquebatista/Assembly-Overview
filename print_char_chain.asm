
[bits 32]

%define syscall 0x80

%macro print 10
        push %1
        push %2
        push %3
        push %4
        push %5
        push %6
        push %7
        push %8
        push %9
        push %10
        
        jmp p_routine
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
        print 'J','o','z','a','d','a','q','u','e',0xa
        exit 0
        
p_routine:
        mov eax,0x04      ; sys_write      
        mov ebx,0x01      ; fd
        
        mov ecx, esp      ; esp *---> 'A'
        mov edx,0x01      ; len char
        int syscall
        cmp ecx,0xa
        inc esp
        jne p_routine
