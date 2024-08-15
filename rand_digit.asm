section .data
    digit db 0, 10

section .text
	global _start
_start:
    ;; division
	; mov rax, 6
    ; mov rbx, 2
    ; div rbx ; rax = 6/2 = 3

    ;; addition
    mov rax, 4
    add rax, 5 ; rax = 4+6 = 9

    call _printRAXDIGIT

    mov rax, 60
    mov rdi, 0
    syscall

_printRAXDIGIT:
    add rax, 48 ; 48is the ASCII value of 0, rax is added with 0
    mov [digit], al ; store the ASCII value of rax in digit, the lower byte of rax
    mov rax, 1
    mov rdi, 1
    mov rsi, digit
    mov rdx, 2
    syscall
    ret
