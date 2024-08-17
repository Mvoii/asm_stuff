<h3>Syscall list</h3>

| syscall | id | arg 1 | arg 2 | arg 3 |
| :----: | :---: | :---: | :---: | :---: |
| sys_read | 0 | #filedescriptor | $buffer | #count |
| sys_write | 1 | #filedescriptor | $buffer | #count |
| sys_open | 2 | $filename | #flags  | #mode  |
| sys_close | 3  | #filedescriptor |  |  |
| - | - | - | - | - |
| pwritev2   | 328| -  | - | - |


sys_write for "Hello, World!"
--------------------------------------
| syscall   | rax | rdi | rsi  | rdx |
| :---: | :---: | :---: | :---: | :---: |
| sys_write |  1  |  1  | ADDR |  14 |


sys_exit
---------------------------------
| sys_call |  rax  |     rdi    |
| :-----: | :-----: | :----: |
| sys_exit |  60   | #errorcode |


