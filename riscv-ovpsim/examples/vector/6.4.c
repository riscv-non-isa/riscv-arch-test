#include <stdio.h>
#include <string.h>

#include "vsupport.h"

//
// 6.4
// strlen example using unit-stride fault-only-first instruction
//

//                  a0         a1          a2         a3
void func1(Uns32 count, v512P src , v512P dst, Uns32 mul) {
    asm(
        "1:                          \n"
        "    vsetvli t0, %0, e32,m8  \n" //  # Use only 32-bit elements
        "    vlh.v   v8, (%1)        \n" //  # Sign-extend 16b load values to 32b elements
        "    sll t1, t0, 1           \n" //  # Multiply length by two bytes/element
        "    add %1, %1, t1          \n" //  # Bump pointer
        "    vmul.vx v8, v8, %3      \n" //  # 32b multiply result
        "    vsrl.vi v8, v8, 3       \n" //  # Shift elements
        "    vsw.v   v8, (%2)        \n" //  # Store vector of 32b results
        "    sll t1, t0, 2           \n" //  # Multiply length by four bytes/element
        "    add %2, %2, t1          \n" //  # Bump pointer
        "    sub %0, %0, t0          \n" //  # Decrement count
        "    bnez %0,1b              \n" //  # Any more?
        :
        : "r" (count), "r" (src), "r" (dst), "r" (mul)
    );
}

//                  a0         a1          a2         a3
void func2(Uns32 count, v512P src , v512P dst, Uns32 mul) {
    asm(
        "1:                          \n"
        "    vsetvli  t0, %0, e16,m4 \n" //  # vtype = 16-bit integer vectors
        "    vlh.v    v4, (%1)       \n" //  # Get 16b vector
        "    slli     t1, t0, 1      \n" //  # Multiply length by two bytes/element
        "    add      %1, %1, t1     \n" //  # Bump pointer
        "    vwmul.vx v8, v4, %3     \n" //  # 32b in <v8--v15>
        "                            \n" //
        "    vsetvli x0, %0, e32,m8  \n" //  # Operate on 32b values
        "    vsrl.vi v8, v8, 3       \n" //
        "    vsw.v   v8, (%2)        \n" //  # Store vector of 32b
        "    slli    t1, t0, 2       \n" //  # Multiply length by four bytes/element
        "    add     %2, %2, t1      \n" //  # Bump pointer
        "    sub     %0, %0, t0      \n" //  # Decrement count
        "    bnez    %0, 1b          \n" //  # Any more?
        :
        : "r" (count), "r" (src), "r" (dst), "r" (mul)
    );
}

#define LEN 256
int main () {

    v512T v0;
    v512T v1[2];
    v512T v2[2];

    v512P v0P = &v0;
    v512P v1P0 = &v1[0];
    v512P v1P1 = &v1[1];
    v512P v2P0 = &v2[0];
    v512P v2P1 = &v2[1];

    int i;
    for (i=0; i<VEC16; i++) {
        v0P->vu16[i] = i+1;
    }
    vec_print(v0P, 16, "%d");
    printf("REPORT: func1()\n");
    func1(32, v0P, v1P0, 16);
    vec_print(v1P0, 32, "%d");
    vec_print(v1P1, 32, "%d");

    printf("REPORT: func2()\n");
    func2(32, v0P, v2P0, 16);
    vec_print(v2P0, 32, "%d");
    vec_print(v2P1, 32, "%d");

    if (memcmp(v1P0, v2P0, (2*sizeof(v512T)))) {
        printf("REPORT: Memory Compare Failed\n");
    } else {
        printf("REPORT: Memory Compare Passed\n");
    }

    printf("REPORT: Test Complete\n");
}
