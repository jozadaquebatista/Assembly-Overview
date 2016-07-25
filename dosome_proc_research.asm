; Hello, today I don't had any time to do any kind of preparation or coding, but I will leave a tip about microprocessor ; generations features, that is a good ideia to study what already has been done about microprocessors evolution. That will ; give will a BIG overview, and it'll helps you understand more about the Assembly programming language.

; Some processors have already been manufactured:
; [4 bits]
; 4004
; 4040

; [8 bits]
; 8008
; 8080
; 8085

; [16 bits]
; 8086
; 8088
; 80186
; 81088
; 80286

; [32 bits]
; celeron
; pentium I,II,III,IV
; Intel core 2

; [64 bits]
; Core i3
; Core i5
; Core i7


; IS EXTREMELY IMPORTANT READ THIS CONTENT, AND DO SOME RESEARCH ABOUT THESE TOPICS: 
; |
; ----https://en.wikipedia.org/wiki/List_of_Intel_microprocessors



; It is really interesting to know, that has existed microprocessors from 4 and 8 bits, I never tought about that, and is really interesting some research about its uses like what kind of tech were implemented in the chips, robotics, clock, calculators and so on.

; Thats it, see you later!

section .rodata
        %define END 1
        
section .data
        end db 'thats is all folks',0xa,0
        
section .text
        mov eax,END                         ; syscall id(sys_exit)
        mov ebx,0                           ; return of sys_exit
        int 0x80                            ; calling kernel interrupt
