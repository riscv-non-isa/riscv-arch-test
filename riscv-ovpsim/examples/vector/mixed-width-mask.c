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

//            a0       a1       a2       a3
void func1(int n, v512P a, v512P b, v512P c) {
    // # Code using one width for predicate and different width for masked
    // # compute.
    // #   int8_t a[]; int32_t b[], c[];
    // #   for (i=0;  i<n; i++) { b[i] =  (a[i] < 5) ? c[i] : 1; }
    // #
    // # Mixed-width code that keeps SEW/LMUL=8
    asm(
        "1:                        \n" //
        "  vsetvli  t0, %0, e8,m1  \n" // # Byte vector for predicate calc
        "  vlb.v    v1, (%1)       \n" // # Load a[i]
        "  add      %1, %1, t0     \n" // # Bump pointer.
        "  vmslt.vi v0, v1, 5      \n" // # a[i] < 5?
        "                          \n" //
        "  vsetvli  x0, %0, e32,m4 \n" // # Vector of 32-bit values.
        "  sub      %0, %0, t0     \n" // # Decrement count
        "  vmv.v.i  v4, 1          \n" // # Splat immediate to destination
        "  vlw.v    v4, (%3), v0.t \n" // # Load requested elements of C.
        "  sll      t1, t0, 2      \n" //
        "  add      %3, %3, t1     \n" // # Bump pointer.
        "  vsw.v    v4, (%2)       \n" // # Store b[i].
        "  add      %2, %2, t1     \n" // # Bump pointer.
        "  bnez     %0, 1b         \n" // # Any more?
        :
        : "r" (n), "r" (a), "r" (b), "r" (c)
    );
}

void check(int verbose, v512P a, v512P b, v512P c) {
    int i;
    for (i=0; i<VEC32; i++) {
        Uns32 v0 = a->vu8[i];
        Uns32 v1 = c->vu32[i];
        Uns32 v2 = (v0 < 5) ? v1 : 1;
        if (v2 != b->vu32[i]) {
            printf("REPORT: Error, [%d](%d < 5) ? %d : 1 = %d (not %d)\n",
                i, v0, v1, v2, b->vu32[i]);
            exit(1);
        } else {
            if (verbose) {
                printf("REPORT: [%d](%d < 5) ? %d : 1 = %d\n",
                    i, v0, v1, v2);
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
            a->vu8[i]  = rand()%16;
            c->vu32[i] = rand();
        }
        func1(VEC32, a, b, c);
        check(0, a, b, c);
    }
    check(1, a, b, c);

    printf("REPORT: Test Complete\n");
}
