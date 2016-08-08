[bits 32]

%macro exit %1
        mov eax,1
        mov ebx,%1
        int 0x80
%enmacro

%macro write %2

        push eax

        mov eax,4
        mov ebx,1
        mov ecx,%1
        mov edx,%2
        int 0x80
        
        pop eax
%enmacro

segment .text
        global _start
        
        _start:
        mov eax,10
        
        jmp conditional
        
conditional:
        write msg,len
        
        mov ebx,eax
        sub ebx,1
        cmp ebx,0
        jnle codintional
        
        exit 0
        
segment .data
        msg: db 'greater than zero.',0xa,0
        len: equ $-msg
