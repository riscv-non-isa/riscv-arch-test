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


float fmadd_s(float a, float x, float y) {
    // fmadd.s = (a * x) + y
    float result = y;
    asm (
        "    fmadd.s %1, %2, %3, %4\n"
        : "=f" (result)
        : "f" (result), "f" (a), "f" (x), "f" (y)
    );
    return result;
}

//            a0            fa0              a1        a2
void vecfmadd(int n, const float a, const float *x, float *y) {
    // # void
    // # saxpy(size_t n, const float a, const float *x, float *y)
    // # {
    // #   size_t i;
    // #   for (i=0; i<n; i++)
    // #     y[i] = a * x[i] + y[i];
    // # }
    // #
    // # register arguments:
    // #     a0      n
    // #     fa0     a
    // #     a1      x
    // #     a2      y
    asm (
        "1:                             \n"
        "    vsetvli   t0, %0, e32, m8  \n"
        "    vlw.v     v0, (%2)         \n"
        "    sub       %0, %0, t0       \n"
        "    slli      t0, t0, 2        \n"
        "    add       %2, %2, t0       \n"
        "    vlw.v     v8, (%3)         \n"
        "    vfmacc.vf v8, %1, v0       \n"
        "    vsw.v     v8, (%3)         \n"
        "    add       %3, %3, t0       \n"
        "    bnez      %0, 1b           \n"
        :
        : "r" (n), "f" (a), "r" (x), "r" (y)
    );
}

// y = (a * x) + y
void check(int verbose, float a, v512P x, v512P y, v512P y1) {
    float exp0;

    int i;
    for (i=0; i<VEC32; i++) {
        exp0 = fmadd_s(a, x->vf32[i], y1->vf32[i]);

        if (exp0 != y->vf32[i]) {
            printf("REPORT: Error, (%f * %f) + %f = %f(exp) (not %f(act))\n",
                a, x->vf32[i], y1->vf32[i], exp0, y->vf32[i]);
            exit(1);
        } else {
            if (verbose) {
                printf("REPORT: (%f * %f) + %f = %f\n",
                    a, x->vf32[i], y1->vf32[i], y->vf32[i]);
            }
        }
    }
}

float randf() {
    static int init = 0;
    if (!init) {
        srand((unsigned)0x12341234);
        init = 1;
    }
    float f = (float)rand()/RAND_MAX;
    return f;
}

void op() {
    float a;
    v512P x  = malloc(sizeof(v512T));
    v512P y  = malloc(sizeof(v512T));
    v512P y1 = malloc(sizeof(v512T));

    int i, j;
    a = randf();

    for (j=0; j<500000; j++) {
        for (i=0; i<VEC32; i++) {
            x->vf32[i] = randf();
            y->vf32[i] = randf();

            y1->vf32[i] = y->vf32[i];
        }
        vecfmadd(VEC32, a, (Flt32 *)x, (Flt32 *)y);

        check(0, a, x, y, y1);
    }
    check(1, a, x, y, y1);

    printf("REPORT: Test Complete\n");
}

int main () {
    enableVEC();
    enableFP();
    op();
}
