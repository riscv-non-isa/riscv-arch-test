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

#include "vsupport.h"

//
// example 16.7
//

#if (VVER==7)
char *vec_strcpy(char *dst, char *src) {
    asm(
        "    mv        a2, a0            \n" // # Copy dst
        "1:                              \n" // #
        "    vsetvli   x0, x0, e8        \n" // # Max length vectors of bytes
        "    vlbuff.v  v1, (a1)          \n" // # Get src bytes
        "    csrr      t1, vl            \n" // # Get number of bytes fetched
        "    vmseq.vi  v0, v1, 0         \n" // # Flag zero bytes
        "    vmfirst.m a3, v0            \n" // # Zero found?
        "    add       a1, a1, t1        \n" // # Bump pointer
        "    vmsif.m   v0, v0            \n" // # Set mask up to and including zero byte.
        "    vsb.v     v1, (a2), v0.t    \n" // # Write out bytes
        "    add       a2, a2, t1        \n" // # Bump pointer
        "    bltz      a3, 1b            \n" // # Zero byte not found, so loop
    );
    return 0;
}
#endif

#if (VVER==8)
char *vec_strcpy(char *dst, char *src) {
    asm(
        "    mv        a2, a0            \n" // # Copy dst
        "    li        t0, -1            \n" // # Infinite AVL
        "1:                              \n" // # loop
        "    vsetvli   x0, t0, e8        \n" // # Max length vectors of bytes
        "    vlbuff.v  v1, (a1)          \n" // # Get src bytes
        "    csrr      t1, vl            \n" // # Get number of bytes fetched
        "    vmseq.vi  v0, v1, 0         \n" // # Flag zero bytes
        "    vfirst.m  a3, v0            \n" // # Zero found?
        "    add       a1, a1, t1        \n" // # Bump pointer
        "    vmsif.m   v0, v0            \n" // # Set mask up to and including zero byte.
        "    vsb.v     v1, (a2), v0.t    \n" // # Write out bytes
        "    add       a2, a2, t1        \n" // # Bump pointer
        "    bltz      a3, 1b            \n" // # Zero byte not found, so loop
    );
    return 0;
}
#endif

#if (VVER==7)
char *vec_strncpy(char *dst, char *src, size_t n) {
    asm(
        "    mv        a3, a0            \n" // # Copy dst
        "1:                              \n" //
        "    vsetvli   x0, a2, e8        \n" // # Vectors of bytes.
        "    vlbuff.v  v1, (a1)          \n" // # Get src bytes
        "    vmseq.vi  v0, v1, 0         \n" // # Flag zero bytes
        "    vmfirst.m a4, v0            \n" // # Zero found?
        "    vmsif.m   v0, v0            \n" // # Set mask up to and including zero byte.
        "    vsb.v     v1, (a3), v0.t    \n" // # Write out bytes
        "    bgez      a4, 2f            \n" // # Done
        "    csrr      t1, vl            \n" // # Get number of bytes fetched
        "    add       a1, a1, t1        \n" // # Bump pointer
        "    sub       a2, a2, t1        \n" // # Decrement count.
        "    add       a3, a3, t1        \n" // # Bump pointer
        "    bnez      a2, 1b            \n" // # Anymore?
        "2:                              \n" // # exit
    );
    return 0;
}
#endif

#if (VVER==8)
char *vec_strncpy(char *dst, char *src, size_t n) {
    asm(
        "    mv        a3, a0            \n" // # Copy dst
        "1:                              \n" // loop
        "    vsetvli   x0, a2, e8        \n" // # Vectors of bytes.
        "    vlbuff.v  v1, (a1)          \n" // # Get src bytes
        "    vmseq.vi  v0, v1, 0         \n" // # Flag zero bytes
        "    vfirst.m  a4, v0            \n" // # Zero found?
        "    vmsif.m   v0, v0            \n" // # Set mask up to and including zero byte.
        "    vsb.v     v1, (a3), v0.t    \n" // # Write out bytes
        "    csrr      t1, vl            \n" // # Get number of bytes fetched
        "    sub       a2, a2, t1        \n" // # Decrement count.
        "    bgez      a4, 2f            \n" // # Zero remaining bytes.
        "    add       a1, a1, t1        \n" // # Bump pointer
        "    add       a3, a3, t1        \n" // # Bump pointer
        "    bnez      a2, 1b            \n" // # Anymore?
        "    beqz      zero, 4f          \n" // ret

        "2:                              \n" // zero_tail
        "    vsetvli   x0, a2, e8,m8     \n" // # Vectors of bytes.
        "    vmv.v.i   v0, 0             \n" // # Splat zero."

        "3:                              \n" // zero_loop
        "    vsetvli   t1, a2, e8,m8     \n" // # Vectors of bytes.
        "    vsb.v     v0, (a3)          \n" // # Store zero.
        "    sub       a2, a2, t1        \n" // # Decrement count.
        "    add       a3, a3, t1        \n" // # Bump pointer
        "    bnez      a2, 3b            \n" // # Anymore?

        "4:"

    );
    return 0;
}
#endif

#define LEN 256
int main () {

    char src[LEN], dst[LEN];

    enableVEC();

    bzero(src, LEN);
    bzero(dst, LEN);
    sprintf(src, "Hello World from all at RISCV - Vector Extension");
    strcpy(dst, src);
    printf("REPORT:strcpy(dst,src)\n");
    printf("REPORT:src=%s\n", src);
    printf("REPORT:dst=%s\n", dst);

    bzero(src, LEN);
    bzero(dst, LEN);
    sprintf(src, "Hello World from all at RISCV - Vector Extension");
    vec_strcpy(dst, src);
    printf("REPORT:vec_strcpy(dst,src)\n");
    printf("REPORT:src=%s\n", src);
    printf("REPORT:dst=%s\n", dst);

    bzero(src, LEN);
    bzero(dst, LEN);
    sprintf(src, "Hello World from all at RISCV - Vector Extension");
#pragma GCC diagnostic push
#pragma GCC diagnostic ignored "-Wstringop-truncation"
    strncpy(dst, src, 16);
#pragma GCC diagnostic pop
    printf("REPORT:strncpy(dst,src,16)\n");
    printf("REPORT:src=%s\n", src);
    printf("REPORT:dst=%s\n", dst);

    bzero(src, LEN);
    bzero(dst, LEN);
    sprintf(src, "Hello World from all at RISCV - Vector Extension");
    vec_strncpy(dst, src, 16);
    printf("REPORT:vec_strncpy(dst,src,16)\n");
    printf("REPORT:src=%s\n", src);
    printf("REPORT:dst=%s\n", dst);

    printf("REPORT: Test Complete\n");
}
