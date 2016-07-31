%include  'yourheader.asm'                                 ; include some external file

section .bss
segment .rodata
section .data
        _str:
            db      'Hello, brave new world!', 0Ah
        __str:
            db      'This is how we recycle in NASM.', 0Ah
segment .text
        global  _start
 
        _start:
        mov     eax,_str
        call    printer
 
        mov     eax,__str                                     ; move the address of our second message string into EAX
        call    printer                                       ; call an imaginary printer func

        call    exit                                          ; call an imaginary exit function from include
