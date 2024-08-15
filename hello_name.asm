section .data
    text1 db "what is your name? "
    text2 db "hello, "

section .bss
    name resb 20

section .text
    global _start
_start:
    call _printText1
    call _getName
    call _printText2
    call _printName

    mov rax, 60
    mov rdi, 0
    syscall

_getName:
    mov rax, 0      ; get user input
    mov rdi, 0      ; file descriptor 0 is stdin
    mov rsi, name   ; where to store the input
    mov rdx, 20     ; how many bytes to read
    syscall
    ret

_printText1:
    mov rax, 1
    mov rdi, 1
    mov rsi, text1
    mov rdx, 19
    syscall
    ret

_printText2:
    mov rax, 1
    mov rdi, 1
    mov rsi, text2
    mov rdx, 7
    syscall
    ret

_printName:
    mov rax, 1
    mov rdi, 1
    mov rsi, name
    mov rdx, 20
    syscall
    ret
