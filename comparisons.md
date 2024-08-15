<h4>Comparisons</h4>
 - allow prorams to be able to taek diff paths based on certaion conditions

 - are done on reisters

 the general format of a comparison is
                    ```
                        cmp register, register/value
                    ```

   Example:
            ```
            cmp rax, 23
            cmp rax, rbx
            ```
After comparisons, certains flags are set

---------------------------
| a = b  |      ZF = 1    |
---------------------------
| a =! b |      ZF = 0    |
---------------------------
|   -    | SF = msb(a-b)  |
---------------------------

etc

After a comparison, a conditional jump can be made

conditional jumps are based on the flag status

conditional jumps in code are written like unconditional jumps, however,
"jmp" is replaced by the symbol for the conditional jump

-----------------------------------------------------------------------
| jump symbol (signed) |  Jump symbol (unsigned) | Result of cmp a, b |
-----------------------------------------------------------------------
|         je           |            -            |       a = b        |
-----------------------------------------------------------------------
|         jne          |            -            |       a =! b       |
-----------------------------------------------------------------------
|         jg           |           ja            |       a > b        |
-----------------------------------------------------------------------
|         jge          |           jae           |      a >= b        |
-----------------------------------------------------------------------
|          jl          |           jb            |       a < b        |
-----------------------------------------------------------------------
|         jle          |           jbe           |      a =< b        |
-----------------------------------------------------------------------
|         jz           |            -            |       a = 0        |
-----------------------------------------------------------------------
|         jnz          |            -            |      a =! 0        |
-----------------------------------------------------------------------
|         jo           |            -            |     overflowed     |
-----------------------------------------------------------------------
|         jno          |            -            |   not overflowed   |
-----------------------------------------------------------------------
|         js           |            -            |   jump if signed   |
-----------------------------------------------------------------------
|         jns          |            -            |  jump if unsigned  |
-----------------------------------------------------------------------

<h6>Examples</h6>
jumps tp teh addr of label "_doThis" if and only if the value in rax = 23
    ```
    cmp rax, 23
    je _doThis
    ```

jumps to teh addr "_doThis" if and onlu if the value in rax is greater than value in rbx
    ```
    cmp rax, rbx
    jg _doThis
    ```

