
%macro exit 1
        mov eax,1
        mov ebx,%1
        int 80h
%endmacro

segment .bss
        mvar  resb 10
        nvar  resd 10
        
segment .text
        global _start
        
        _start:
        mov [mvar],dword "yep!"
        exit0
