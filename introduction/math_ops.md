in form:

    op register, value/register

example:

    add rax, 5
    sub rbx, rax


| op name | op name (signed) | description |
| :---: | :---: | :---: |
| add a, b | - | a = a+b |
| sub a, b | - | a = a-b |
| mul reg | imulreg | rax = rax*reg |
| div reg | idiv reg | rax = rax/reg |
| neg reg | - | reg = -reg |
| inc reg | - | reg = reg+1 |
| dec reg | - | reg = reg-1 |
| adc a, b | - | a = a+b+CF |
| sbb a, b | - | a = a-b-CF |
