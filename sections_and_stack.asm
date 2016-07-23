                                          ; HELLO! ASSEMBLY LANGUAGE PROGRAMMERS :D
                                          ; The Assembly programming language gives you a way to organize your
                                          ; and usually assembly programmers split their programs in sections/segments,
                                          ; to do this you can use the "segment" or "section"(mean the same)
                                          ; keywords. So, lets take a look at this.
segment .rodata                           ; this section is used to declare your constants
        %assign myconstant 25             ; example of constant var 'myconstant', that will have the value 25
        
segment .data                             ; this can be  used to declare your initiallized data
        name db 'Jozadaque',10,0          ; declaring var 'name' with my name define as BYTE(db = define byte)
        arr times 10 dw 0                 ; 10 means '\n' and 0 the end of string.
        arr times 10 dw 0                 ; this line declare an array, where [var_name][times][qtd_of_pos][content]
                                          
segment .bss                              ; and this will be for your unitiallized data
        othervar resb 11                  ; allocate 11 bytes in memory you can use to RESB(means byte),
        another resw 3                    ; RESW(means word), RESD(means double word), RESQ(means quad double word)
                                          ; that data types are respectively 8bits,16bits,32bits,64bits
                                          ; where 8bits represent 1 byte.
                                          
segment .text                             ; this segment will be your source code section
        mov eax,0x5                       ; assign 5 to eax register
        mov ebx,0x7                       ; assign 7 to ebx register
        sub eax,ebx                       ; subtract eax from ebx and stores the result in the eax register
        xchg eax,ebx                      ; exchange eax and ebx values
        sub ebx,3                         ; subtract
        add eax,ebx                       ; and add
        push eax                          ; after all that stuff, push valueof eax to the stack(I'll explain that later)
        
        mov eax,1                         ; now I want to exit the program, then I assign the value 1 to eax(sys_exit)
        mov ebx,0                         ; and 0 that will be the return
        int 0x80                          ; then I call the kernel to do the task
                                          ; that's it, I'll explain more about systemcalls and stack later.
                                          
                                          ; note: more assembly segments exists, but this will be the main section/segments
                                          ;       to know about.
                                          ; more info: http://www.nasm.us/doc
