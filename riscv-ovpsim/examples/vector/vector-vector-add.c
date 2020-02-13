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

void vvaddint32(int n, v512P x, v512P y, v512P z) {
    // # vector-vector add routine of 32-bit integers
    // # void vvaddint32(size_t n, const int*x, const int*y, int*z)
    // # { for (size_t i=0; i<n; i++) { z[i]=x[i]+y[i]; } }
    // #
    // # a0 = n, a1 = x, a2 = y, a3 = z
    asm(
        "1:                           \n" //
        "    vsetvli t0, %0, e32      \n" // # Set vector length based on 32-bit vectors
        "    vlw.v   v0, (%1)         \n" // # Get first vector
        "    sub     %0, %0, t0       \n" // # Decrement number done
        "    slli    t0, t0, 2        \n" // # Multiply number done by 4 bytes
        "    add     %1, %1, t0       \n" // # Bump pointer
        "    vlw.v   v1, (%2)         \n" // # Get second vector
        "    add     %2, %2, t0       \n" // # Bump pointer
        "    vadd.vv v2, v0, v1       \n" // # Sum vectors
        "    vsw.v   v2, (%3)         \n" // # Store result
        "    add     %3, %3, t0       \n" // # Bump pointer
        "    bnez    %0, 1b           \n" // # Loop back
        :
        : "r" (n), "r" (x), "r" (y), "r" (z)
    );
}

void check(int verbose, v512P a, v512P b, v512P c) {
    int i;
    for (i=0; i<VEC32; i++) {
        Uns32 v0 = a->vu32[i];
        Uns32 v1 = b->vu32[i];
        Uns32 v2 = v0 + v1;
        if (v2 != c->vu32[i]) {
            printf("REPORT: Error: %d + %d = %d (not %d)\n",
                v0, v1, v2, c->vu32[i]);
            exit(1);
        } else {
            if (verbose) {
                printf("REPORT: %d + %d = %d\n",
                    v0, v1, v2);
            }
        }
    }
}

int main () {

    enableVEC();

    v512P a = malloc(sizeof(v512T));
    v512P b = malloc(sizeof(v512T));
    v512P c = malloc(sizeof(v512T));

    int i, j;
    for (j=0; j<500000; j++) {
        for (i=0; i<VEC32; i++) {
            a->vu32[i] = rand();
            b->vu32[i] = rand();
        }

        // v2 = v0 + v1;
        vvaddint32(VEC32, a, b, c);
        check(0, a, b, c);
    }
    check(1, a, b, c);

    printf("REPORT: Test Complete\n");
}
