#include <stdio.h>
#include <string.h>

//
// 7.7. Unit-stride Fault-Only-First Loads
// strlen example using unit-stride fault-only-first instruction

int vec_strlen(const char *str) {
    int result = 0;
    asm(
        "    mv         a3, %3        \n" // # Save start
        "1:                           \n" //
        "    vsetvli    a1, x0, e8    \n" // # Vector of bytes of maximum length
        "    vlbff.v    v1, (a3)      \n" // # Load bytes
        "    csrr a1,   vl            \n" // # Get bytes read
        "    vmseq.vi   v0, v1, 0     \n" // # Set v0[i] where v1[i] = 0
        "    vmfirst.m  a2, v0        \n" // # Find first set bit
        "    add        a3, a3, a1    \n" // # Bump pointer
        "    bltz       a2, 1b        \n" // # Not found?

        "    add        %1, %3, a1    \n" // # Sum start + bump
        "    add        a3, a3, a2    \n" // # Add index
        "    sub        %0, a3, %2    \n" // # Subtract start address+bump

        : "=r" (result), "=r" (str)
        : "r"  (result), "r"  (str)

    );
    return result;
}

#define LEN 256
int main () {

    char str[LEN];
    int len;

    bzero(str, LEN);

    len = strlen(str);
    printf("REPORT: strlen(str)=%d\n", len);
    len = vec_strlen(str);
    printf("REPORT: vec_strlen(str)=%d\n", len);

    sprintf(str, "Hello World from all at RISCV - Vector Extensions");
    printf("REPORT: str=\"%s\"\n", str);
    len = strlen(str);
    printf("REPORT: strlen(str)=%d\n", len);
    len = vec_strlen(str);
    printf("REPORT: vec_strlen(str)=%d\n", len);

    printf("REPORT: Test Complete\n");
}
