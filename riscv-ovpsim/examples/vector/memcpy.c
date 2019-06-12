#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "vsupport.h"

void vec_memcpy(void* dest, const void* src, int n) {
    // # a0=dest, a1=src, a2=n
    asm(
        "    mv a3, a0              \n" // # Copy destination
        "1:                         \n" //
        "    vsetvli t0, a2, e8,m8  \n" // # Vectors of 8b
        "    vlb.v   v0, (a1)       \n" // # Load bytes
        "    add a1, a1, t0         \n" // # Bump pointer
        "    sub a2, a2, t0         \n" // # Decrement count
        "    vsb.v   v0, (a3)       \n" // # Store bytes
        "    add     a3, a3, t0     \n" // # Bump pointer
        "    bnez    a2, 1b         \n" // # Any more?
        :
        : "r" (dest), "r" (src), "r" (n)
    );
}

#define MBYTE 1024*1024
int main () {

    Uns8 *buf1 = (Uns8 *)malloc(MBYTE);
    Uns8 *buf2 = (Uns8 *)malloc(MBYTE);
    Uns8 *buf3 = (Uns8 *)malloc(MBYTE);

    int i;
    for(i=0; i<MBYTE; i++) {
        *(buf1+i) = (Uns8)i;
    }
    memcpy(buf2, buf1, MBYTE);
    vec_memcpy(buf3, buf1, MBYTE);

    int diff1 = memcmp(buf2, buf1, MBYTE);
    int diff2 = memcmp(buf2, buf1, MBYTE);

    printf("REPORT: diff1=%d diff2=%d\n", diff1, diff2);
    printf("REPORT: Test Complete\n");
}
