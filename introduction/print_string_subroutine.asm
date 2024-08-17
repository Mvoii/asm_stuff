section .data
    text db "Hello, World!", 10, 0

section .text
    global _start

_start: 
    mov rax, text
    call _print

    mov rax, 60
    mov rdi, 0
    syscall

;; to count the bytes for text until it meets the 0
;input : rax = address of text
;output : print string at rax
_print:
    push rax
    mov rbx, 0  ; counter of length of string
_print_loop:
    inc rax
    inc rbx
    mov cl, [rax]
    cmp cl, 0
    jne _print_loop

    mov rax, 1
    mov rdi, 1
    pop rsi ; pop to rsi
    mov rdx, rbx
    syscall

    ret
