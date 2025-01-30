#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

void print_alphabet(void);

/**
 * main
 * 
 * return: EXIT_SUCCESS or EXIT_FAILURE
 */
int main(void)
{
    print_alphabet();
    write(1, "\n", 1);
    return (EXIT_SUCCESS);
}
