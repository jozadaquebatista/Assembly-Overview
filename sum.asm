%define syscall 0x80

segment .data
	      mesg	db 	'Hello sum!',0xa,0

%macro 	write 2
	      mov eax,0x4
	      mov ebx,0x1
	      mov ecx,%1
	      mov edx,%2
	      syscall
%endmacro

%macro  exit 1
	      mov eax,0x1
	      mov ebx,%1
	      syscall
%endmacro

segment .text
	      global _start
_start:
	      mov eax,4
	      add eax,7
	      inc eax
	      
	      push eax

	      write mesg, len
	      exit 0
