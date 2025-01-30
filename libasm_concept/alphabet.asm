BITS 64

global print_alphabet	; export the print_alphabet func
section .text
	; void print_alphabet(void)
	; Prints the lowercase alphabet

print_alphabet:
	push rbp	; setup stack frame
	mov rbp, rsp	; equivalent to enter

	; save registers that are going to be used,
	; in case thry were used before
	push rsi
	push rax
	push rdi
	push rdx

	add rsp, -1	; increase the stack by 1 byte to store char
	mov byte [rsp], 97	; store ascii value of a

	; set up write syscall
	mov rax, 1	; write syscall
	mov rdi, 1	; write to stdout
	mov rdx, 1	; write 1 byte
	mov rsi, rsp	; addr of the char to be printed 

	; loop_alphabet -> while (@r8 <= 122)
loop_alphabet:
	syscall
	inc byte[rsp]	; inc our var in stack
	cmp byte[rsp], 122	; cmp the value our char to z
	jle loop_alphabet	; jmp loop only if char is lowere than z

	; restoration of registers saved in teh stack and
	; restoration of prev stack frame
end:
	add rsp, 1	; discard the local var
	pop rdx		; restore registers
	pop rdi
	pop rax
	pop rsi

	mov rsp, rbp	; restore prev stack frame
	pop rbp

	ret

