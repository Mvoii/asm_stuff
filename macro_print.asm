section .data
    digit db 0, 10

section .text
	global _start

%macro exit 0
    mov rax, 60
    mov rdi, 0
    syscall
%endmacro

%macro printDigit 1
    mov rax, %1
    ;; add rax, 48
    ;; mov [digit], al
    ;; mov rax, 1
    ;; mov rdi, 1
    ;; mov rsi, digit
    ;; mov rdx, 2
    ;; syscall

    call _printRAXDIGIT

%endmacro

%macro printDigitSum 2
    mov rax, %1
    add rax, %2
    call _printRAXDIGIT
%endmacro

_start:
    printDigit 3
    printDigitSum 4, 5

    exit

_printRAXDIGIT:
    add rax, 48 ; 48is the ASCII value of 0, rax is added with 0
    mov [digit], al ; store the ASCII value of rax in digit, the lower byte of rax
    mov rax, 1
    mov rdi, 1
    mov rsi, digit
    mov rdx, 2
    syscall
    ret
