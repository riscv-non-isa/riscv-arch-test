/*
 *
 * Copyright (c) 2005-2020 Imperas Software Ltd., www.imperas.com
 *
 * The contents of this file are provided under the Software License
 * Agreement that you accepted before downloading this file.
 *
 * This source forms part of the Software and can be used for educational,
 * training, and demonstration purposes but cannot be used for derivative
 * works except in cases where the derivative works require OVP technology
 * to run.
 *
 * For open source models released under licenses that you can use for
 * derivative works, please visit www.OVPworld.org or www.imperas.com
 * for the location of the open source models.
 *
 */

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

    enableVEC();

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
