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

//            a0       a1       a2       a3       a4
void func1(int n, v512P x, v512P a, v512P b, v512P z) {
    // # (int16) z[i] = ((int8) x[i] < 5) ? (int16) a[i] : (int16) b[i];
    // #
    // # Fixed 16b SEW:
    asm (
        "1:                           \n" //
        "    vsetvli  t0, %0, e16     \n" // # Use 16b elements.
        "    vlb.v    v0, (%1)        \n" // # Get x[i], sign-extended to 16b
        "    sub      %0, %0, t0      \n" // # Decrement element count
        "    add      %1, %1, t0      \n" // # x[i] Bump pointer
        "    vmslt.vi v0, v0, 5       \n" // # Set mask in v0
        "    slli     t0, t0, 1       \n" // # Multiply by 2 bytes
        "    vlh.v    v1, (%2), v0.t  \n" // # z[i] = a[i] case
        "    vmnot.m  v0, v0          \n" // # Invert v0
        "    add      %2, %2, t0      \n" // # a[i] bump pointer
        "    vlh.v    v1, (%3), v0.t  \n" // # z[i] = b[i] case
        "    add      %3, %3, t0      \n" // # b[i] bump pointer
        "    vsh.v    v1, (%4)        \n" // # Store z
        "    add      %4, %4, t0      \n" // # b[i] bump pointer
        "    bnez     %0, 1b          \n" //
        :
        : "r" (n), "r" (x), "r" (a), "r" (b), "r" (z)
    );
}

void check(int verbose, v512P x, v512P a, v512P b, v512P z) {
    int i;
    for (i=0; i<VEC16; i++) {
        Uns32 v0 = x->vu8[i];
        Uns32 v1 = a->vu16[i];
        Uns32 v2 = b->vu16[i];
        Uns32 v3 = (v0 < 5) ? v1 : v2;
        if (v3 != z->vu16[i]) {
            printf("REPORT: Error, [%d](%d < 5) ? %d : %d = %d (not %d)\n",
                i, v0, v1, v2, v3, z->vu16[i]);
            exit(1);
        } else {
            if (verbose) {
                printf("REPORT: [%d](%d < 5) ? %d : %d = %d\n",
                    i, v0, v1, v2, v3);
            }
        }
    }
}

// (int16) z[i] = ((int8) x[i] < 5) ? (int16) a[i] : (int16) b[i];
int main () {

    enableVEC();

    v512P a = malloc(sizeof(v512T));
    v512P b = malloc(sizeof(v512T));
    v512P x = malloc(sizeof(v512T));
    v512P z = malloc(sizeof(v512T));

    int i, j;

    for (j=0; j<500000; j++) {
        for (i=0; i<VEC16; i++) {
            x->vu8[i]  = rand()%10;
            a->vu16[i] = rand();
            b->vu16[i] = rand();
        }
        func1(VEC16, x, a, b, z);
        check(0, x, a, b, z);
    }
    check(1, x, a, b, z);

    printf("REPORT: Test Complete\n");
}
