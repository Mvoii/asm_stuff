<h4>macros for net wide assembler</h4>

syntax:

    %macro <name> <argc>
        <macro definition>
    %endmacro


    ;; <argc>: is the number of args teh macro takes

example of exit macro:

        %macro exit 0
            mov rax, 60
            mov rdi, 0
            syscall
        %endmacro
