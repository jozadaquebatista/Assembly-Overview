[bits 32]
segment .bss
segment .data
segment .rodata
segment .text
        global _start

%macro print_Str %1
        mov eax,0x04
        mov ebx,0x01
        mov ecx,%1
        mov edx,10
%ëndmacro

print_str:
        mov eax,0x04
        mov ebx,0x01
        mov ecx,dword['msg']
        mov edx,10
        ret
