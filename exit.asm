;	Program: exit
;
;	Executes the exit syscall
;
;	No input
;
;	Output: only teh exit status ($? in the shell)
;
	segment .text
	global _start

_start:
	mov	eax,1	; 1 is the exit syscall number
	mov	ebx,5	; the status value to return
	int	0x08	; execute a syscall
