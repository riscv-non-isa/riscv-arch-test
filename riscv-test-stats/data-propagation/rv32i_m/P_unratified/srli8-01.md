
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000420')]      |
| SIG_REGION                | [('0x80002210', '0x800022e0', '52 words')]      |
| COV_LABELS                | srli8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/srli8-01.S    |
| Total Number of coverpoints| 160     |
| Total Coverpoints Hit     | 155      |
| Total Signature Updates   | 49      |
| STAT1                     | 49      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```

```

## Details of STAT5:



## Details of STAT1:

- The first column indicates the signature address and the data at that location in hexadecimal in the following format: 
  ```
  [Address]
  Data
  ```

- The second column captures all the coverpoints which have been captured by that particular signature location

- The third column captures all the insrtuctions since the time a coverpoint was
  hit to the point when a store to the signature was performed. Each line has
  the following format:
  ```
  [PC of instruction] : mnemonic
  ```
- The order in the table is based on the order of signatures occuring in the
  test. These need not necessarily be in increasing or decreasing order of the
  address in the signature region.

|s.no|        signature         |                                                                        coverpoints                                                                        |                                code                                |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00010100|- opcode : srli8<br> - rs1 : x9<br> - rd : x9<br> - rs1 == rd<br> - rs1_b0_val == 0<br> - imm_val == 7<br> - rs1_b2_val == 251<br> - rs1_b1_val == 251<br> |[0x80000108]:SRLI8 s1, s1, 7<br> [0x8000010c]:sw s1, 0(ra)<br>      |
|   2|[0x80002214]<br>0x00030300|- rs1 : x5<br> - rd : x14<br> - rs1 != rd<br> - imm_val == 6<br> - rs1_b2_val == 255<br> - rs1_b1_val == 254<br>                                           |[0x80000118]:SRLI8 a4, t0, 6<br> [0x8000011c]:sw a4, 4(ra)<br>      |
|   3|[0x80002218]<br>0x00000000|- rs1 : x21<br> - rd : x20<br> - imm_val == 5<br> - rs1_b3_val == 16<br>                                                                                   |[0x80000128]:SRLI8 s4, s5, 5<br> [0x8000012c]:sw s4, 8(ra)<br>      |
|   4|[0x8000221c]<br>0x02000F00|- rs1 : x4<br> - rd : x31<br> - imm_val == 4<br> - rs1_b3_val == 32<br> - rs1_b0_val == 2<br>                                                              |[0x80000138]:SRLI8 t6, tp, 4<br> [0x8000013c]:sw t6, 12(ra)<br>     |
|   5|[0x80002220]<br>0x0A01001F|- rs1 : x25<br> - rd : x11<br> - imm_val == 3<br> - rs1_b3_val == 85<br> - rs1_b0_val == 255<br>                                                           |[0x80000148]:SRLI8 a1, s9, 3<br> [0x8000014c]:sw a1, 16(ra)<br>     |
|   6|[0x80002224]<br>0x3F2A0015|- rs1 : x14<br> - rd : x27<br> - imm_val == 2<br> - rs1_b3_val == 255<br> - rs1_b2_val == 170<br> - rs1_b0_val == 85<br>                                   |[0x80000158]:SRLI8 s11, a4, 2<br> [0x8000015c]:sw s11, 20(ra)<br>   |
|   7|[0x80002228]<br>0x037F7F07|- rs1 : x12<br> - rd : x10<br> - imm_val == 1<br>                                                                                                          |[0x80000168]:SRLI8 a0, a2, 1<br> [0x8000016c]:sw a0, 24(ra)<br>     |
|   8|[0x8000222c]<br>0x400E0C04|- rs1 : x23<br> - rd : x4<br> - imm_val == 0<br> - rs1_b3_val == 64<br> - rs1_b0_val == 4<br>                                                              |[0x80000178]:SRLI8 tp, s7, 0<br> [0x8000017c]:sw tp, 28(ra)<br>     |
|   9|[0x80002230]<br>0x151F011F|- rs1 : x2<br> - rd : x16<br> - rs1_b3_val == 170<br> - rs1_b2_val == 253<br> - rs1_b0_val == 253<br>                                                      |[0x80000188]:SRLI8 a6, sp, 3<br> [0x8000018c]:sw a6, 32(ra)<br>     |
|  10|[0x80002234]<br>0x00000000|- rs1 : x17<br> - rd : x3<br> - rs1_b3_val == 127<br> - rs1_b0_val == 32<br>                                                                               |[0x80000198]:SRLI8 gp, a7, 7<br> [0x8000019c]:sw gp, 36(ra)<br>     |
|  11|[0x80002238]<br>0x17100001|- rs1 : x31<br> - rd : x19<br> - rs1_b3_val == 191<br> - rs1_b2_val == 128<br>                                                                             |[0x800001a8]:SRLI8 s3, t6, 3<br> [0x800001ac]:sw s3, 40(ra)<br>     |
|  12|[0x8000223c]<br>0x0D0F0000|- rs1 : x7<br> - rd : x17<br> - rs1_b3_val == 223<br> - rs1_b2_val == 254<br>                                                                              |[0x800001b8]:SRLI8 a7, t2, 4<br> [0x800001bc]:sw a7, 44(ra)<br>     |
|  13|[0x80002240]<br>0x01000100|- rs1 : x26<br> - rd : x8<br> - rs1_b3_val == 239<br> - rs1_b1_val == 239<br>                                                                              |[0x800001c8]:SRLI8 fp, s10, 7<br> [0x800001cc]:sw fp, 48(ra)<br>    |
|  14|[0x80002244]<br>0x7B555F03|- rs1 : x8<br> - rd : x18<br> - rs1_b3_val == 247<br> - rs1_b1_val == 191<br>                                                                              |[0x800001d8]:SRLI8 s2, fp, 1<br> [0x800001dc]:sw s2, 52(ra)<br>     |
|  15|[0x80002248]<br>0x3E010308|- rs1 : x13<br> - rd : x29<br> - rs1_b3_val == 251<br> - rs1_b2_val == 4<br>                                                                               |[0x800001e8]:SRLI8 t4, a3, 2<br> [0x800001ec]:sw t4, 56(ra)<br>     |
|  16|[0x8000224c]<br>0x0F01000A|- rs1 : x11<br> - rd : x12<br> - rs1_b3_val == 253<br> - rs1_b0_val == 170<br>                                                                             |[0x800001f8]:SRLI8 a2, a1, 4<br> [0x800001fc]:sw a2, 60(ra)<br>     |
|  17|[0x80002250]<br>0x03000100|- rs1 : x30<br> - rd : x25<br> - rs1_b3_val == 254<br> - rs1_b2_val == 8<br> - rs1_b1_val == 85<br>                                                        |[0x80000208]:SRLI8 s9, t5, 6<br> [0x8000020c]:sw s9, 64(ra)<br>     |
|  18|[0x80002254]<br>0x04000000|- rs1 : x16<br> - rd : x7<br> - rs1_b3_val == 128<br>                                                                                                      |[0x80000218]:SRLI8 t2, a6, 5<br> [0x8000021c]:sw t2, 68(ra)<br>     |
|  19|[0x80002258]<br>0x00000000|- rs1 : x18<br> - rd : x28<br> - rs1_b3_val == 8<br> - rs1_b2_val == 0<br>                                                                                 |[0x80000228]:SRLI8 t3, s2, 7<br> [0x8000022c]:sw t3, 72(ra)<br>     |
|  20|[0x8000225c]<br>0x00070000|- rs1 : x3<br> - rd : x24<br> - rs1_b3_val == 4<br> - rs1_b1_val == 0<br> - rs1_b0_val == 1<br>                                                            |[0x80000238]:SRLI8 s8, gp, 5<br> [0x8000023c]:sw s8, 76(ra)<br>     |
|  21|[0x80002260]<br>0x00000000|- rs1 : x6<br> - rd : x0<br> - rs1_b3_val == 2<br>                                                                                                         |[0x80000248]:SRLI8 zero, t1, 0<br> [0x8000024c]:sw zero, 80(ra)<br> |
|  22|[0x80002264]<br>0x00070002|- rs1 : x24<br> - rd : x26<br> - rs1_b3_val == 1<br> - rs1_b0_val == 64<br>                                                                                |[0x80000260]:SRLI8 s10, s8, 5<br> [0x80000264]:sw s10, 0(gp)<br>    |
|  23|[0x80002268]<br>0x003E2F04|- rs1 : x29<br> - rd : x23<br> - rs1_b3_val == 0<br>                                                                                                       |[0x80000270]:SRLI8 s7, t4, 2<br> [0x80000274]:sw s7, 4(gp)<br>      |
|  24|[0x8000226c]<br>0x00010000|- rs1 : x1<br> - rd : x15<br> - rs1_b2_val == 85<br>                                                                                                       |[0x80000280]:SRLI8 a5, ra, 6<br> [0x80000284]:sw a5, 8(gp)<br>      |
|  25|[0x80002270]<br>0x00000000|- rs1 : x0<br> - rd : x21<br>                                                                                                                              |[0x80000290]:SRLI8 s5, zero, 3<br> [0x80000294]:sw s5, 12(gp)<br>   |
|  26|[0x80002274]<br>0x0BBF0F0B|- rs1 : x15<br> - rd : x22<br> - rs1_b2_val == 191<br>                                                                                                     |[0x800002a0]:SRLI8 s6, a5, 0<br> [0x800002a4]:sw s6, 16(gp)<br>     |
|  27|[0x80002278]<br>0x01030403|- rs1 : x27<br> - rd : x6<br> - rs1_b1_val == 4<br>                                                                                                        |[0x800002b0]:SRLI8 t1, s11, 0<br> [0x800002b4]:sw t1, 20(gp)<br>    |
|  28|[0x8000227c]<br>0x00000000|- rs1 : x22<br> - rd : x5<br> - rs1_b1_val == 2<br>                                                                                                        |[0x800002c0]:SRLI8 t0, s6, 4<br> [0x800002c4]:sw t0, 24(gp)<br>     |
|  29|[0x80002280]<br>0x02BF0110|- rs1 : x20<br> - rd : x1<br> - rs1_b1_val == 1<br> - rs1_b0_val == 16<br>                                                                                 |[0x800002d0]:SRLI8 ra, s4, 0<br> [0x800002d4]:sw ra, 28(gp)<br>     |
|  30|[0x80002284]<br>0xFD11FF10|- rs1 : x10<br> - rd : x2<br> - rs1_b1_val == 255<br>                                                                                                      |[0x800002e0]:SRLI8 sp, a0, 0<br> [0x800002e4]:sw sp, 32(gp)<br>     |
|  31|[0x80002288]<br>0x00010000|- rs1 : x19<br> - rd : x30<br> - rs1_b0_val == 127<br>                                                                                                     |[0x800002f0]:SRLI8 t5, s3, 7<br> [0x800002f4]:sw t5, 36(gp)<br>     |
|  32|[0x8000228c]<br>0x01000001|- rs1 : x28<br> - rd : x13<br> - rs1_b2_val == 32<br> - rs1_b1_val == 127<br> - rs1_b0_val == 191<br>                                                      |[0x80000300]:SRLI8 a3, t3, 7<br> [0x80000304]:sw a3, 40(gp)<br>     |
|  33|[0x80002290]<br>0xF70109DF|- rs1_b2_val == 1<br> - rs1_b0_val == 223<br>                                                                                                              |[0x80000310]:SRLI8 t6, t5, 0<br> [0x80000314]:sw t6, 44(gp)<br>     |
|  34|[0x80002294]<br>0x10065F77|- rs1_b0_val == 239<br>                                                                                                                                    |[0x80000320]:SRLI8 t6, t5, 1<br> [0x80000324]:sw t6, 48(gp)<br>     |
|  35|[0x80002298]<br>0x13FE80F7|- rs1_b1_val == 128<br> - rs1_b0_val == 247<br>                                                                                                            |[0x80000330]:SRLI8 t6, t5, 0<br> [0x80000334]:sw t6, 52(gp)<br>     |
|  36|[0x8000229c]<br>0x3F027B7D|- rs1_b1_val == 247<br> - rs1_b0_val == 251<br>                                                                                                            |[0x80000340]:SRLI8 t6, t5, 1<br> [0x80000344]:sw t6, 56(gp)<br>     |
|  37|[0x800022a0]<br>0x07000007|- rs1_b0_val == 254<br>                                                                                                                                    |[0x80000350]:SRLI8 t6, t5, 5<br> [0x80000354]:sw t6, 60(gp)<br>     |
|  38|[0x800022a4]<br>0x021B0017|- rs1_b2_val == 223<br>                                                                                                                                    |[0x80000360]:SRLI8 t6, t5, 3<br> [0x80000364]:sw t6, 64(gp)<br>     |
|  39|[0x800022a8]<br>0x00010100|- rs1_b2_val == 239<br> - rs1_b1_val == 253<br>                                                                                                            |[0x80000370]:SRLI8 t6, t5, 7<br> [0x80000374]:sw t6, 68(gp)<br>     |
|  40|[0x800022ac]<br>0xFFF7AA0B|- rs1_b2_val == 247<br> - rs1_b1_val == 170<br>                                                                                                            |[0x80000380]:SRLI8 t6, t5, 0<br> [0x80000384]:sw t6, 72(gp)<br>     |
|  41|[0x800022b0]<br>0x0004040D|- rs1_b2_val == 64<br> - rs1_b1_val == 64<br>                                                                                                              |[0x80000390]:SRLI8 t6, t5, 4<br> [0x80000394]:sw t6, 76(gp)<br>     |
|  42|[0x800022b4]<br>0x00000503|- rs1_b2_val == 16<br>                                                                                                                                     |[0x800003a0]:SRLI8 t6, t5, 5<br> [0x800003a4]:sw t6, 80(gp)<br>     |
|  43|[0x800022b8]<br>0x00000000|- rs1_b1_val == 8<br>                                                                                                                                      |[0x800003b0]:SRLI8 t6, t5, 4<br> [0x800003b4]:sw t6, 84(gp)<br>     |
|  44|[0x800022bc]<br>0x07000005|- rs1_b2_val == 2<br>                                                                                                                                      |[0x800003c0]:SRLI8 t6, t5, 5<br> [0x800003c4]:sw t6, 88(gp)<br>     |
|  45|[0x800022c0]<br>0x01DF2010|- rs1_b1_val == 32<br>                                                                                                                                     |[0x800003d0]:SRLI8 t6, t5, 0<br> [0x800003d4]:sw t6, 92(gp)<br>     |
|  46|[0x800022c4]<br>0x00000300|- rs1_b1_val == 223<br>                                                                                                                                    |[0x800003e0]:SRLI8 t6, t5, 6<br> [0x800003e4]:sw t6, 96(gp)<br>     |
|  47|[0x800022c8]<br>0x01100200|- rs1_b1_val == 16<br>                                                                                                                                     |[0x800003f0]:SRLI8 t6, t5, 3<br> [0x800003f4]:sw t6, 100(gp)<br>    |
|  48|[0x800022cc]<br>0x00000002|- rs1_b0_val == 128<br>                                                                                                                                    |[0x80000400]:SRLI8 t6, t5, 6<br> [0x80000404]:sw t6, 104(gp)<br>    |
|  49|[0x800022d0]<br>0x010F0001|- rs1_b2_val == 127<br> - rs1_b0_val == 8<br>                                                                                                              |[0x80000410]:SRLI8 t6, t5, 3<br> [0x80000414]:sw t6, 108(gp)<br>    |
