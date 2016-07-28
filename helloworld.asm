; LINUX write fd are 0,1,2(stdin,stdout,stderr)
section	.text
    global _start   ; must be declared for linker (ld)
_start:	            ; tells linker entry point
    mov	edx,len     ; message length
    mov	ecx,msg     ; message to write
    mov	ebx,1       ; file descriptor (stdout)
    mov	eax,4       ; system call number (sys_write)
    int	0x80        ; call kernel
	
    mov	eax,1       ; system call number (sys_exit)
    int	0x80        ; call kernel

section	.data
msg db 'Hello, world!',0xa,0  ; our dear string
len equ $-msg     ; length of our dear string
