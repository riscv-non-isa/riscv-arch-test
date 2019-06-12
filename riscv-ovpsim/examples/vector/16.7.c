#include <stdio.h>
#include <string.h>

//
// example 16.7
//

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

#define LEN 256
int main () {

    char src[LEN], dst[LEN];

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
