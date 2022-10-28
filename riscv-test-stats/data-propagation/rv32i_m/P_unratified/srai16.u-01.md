
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000470')]      |
| SIG_REGION                | [('0x80002210', '0x80002300', '60 words')]      |
| COV_LABELS                | srai16.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/srai16.u-01.S    |
| Total Number of coverpoints| 160     |
| Total Coverpoints Hit     | 155      |
| Total Signature Updates   | 57      |
| STAT1                     | 56      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000042c]:SRAI16_U t6, t5, 10
      [0x80000430]:sw t6, 112(gp)
 -- Signature Address: 0x800022e0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : srai16.u
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 10
      - rs1_h1_val == 0
      - rs1_h0_val == -257






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

|s.no|        signature         |                                                                  coverpoints                                                                   |                                  code                                  |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000FFFE|- opcode : srai16.u<br> - rs1 : x10<br> - rd : x10<br> - rs1 == rd<br> - rs1_h0_val == -32768<br> - imm_val == 14<br> - rs1_h1_val == -2049<br> |[0x80000104]:SRAI16_U a0, a0, 14<br> [0x80000108]:sw a0, 0(s2)<br>      |
|   2|[0x80002214]<br>0x00000000|- rs1 : x30<br> - rd : x24<br> - rs1 != rd<br> - imm_val == 15<br> - rs1_h1_val == 64<br>                                                       |[0x80000110]:SRAI16_U s8, t5, 15<br> [0x80000114]:sw s8, 4(s2)<br>      |
|   3|[0x80002218]<br>0x00000000|- rs1 : x16<br> - rd : x11<br> - imm_val == 13<br> - rs1_h1_val == 256<br> - rs1_h0_val == 128<br>                                              |[0x80000120]:SRAI16_U a1, a6, 13<br> [0x80000124]:sw a1, 8(s2)<br>      |
|   4|[0x8000221c]<br>0x00000000|- rs1 : x15<br> - rd : x21<br> - imm_val == 12<br> - rs1_h1_val == -5<br> - rs1_h0_val == -129<br>                                              |[0x80000130]:SRAI16_U s5, a5, 12<br> [0x80000134]:sw s5, 12(s2)<br>     |
|   5|[0x80002220]<br>0x00000000|- rs1 : x22<br> - rd : x0<br> - imm_val == 11<br> - rs1_h1_val == 8<br> - rs1_h0_val == 0<br>                                                   |[0x8000013c]:SRAI16_U zero, s6, 11<br> [0x80000140]:sw zero, 16(s2)<br> |
|   6|[0x80002224]<br>0xFFFC0008|- rs1 : x12<br> - rd : x3<br> - imm_val == 10<br> - rs1_h1_val == -4097<br> - rs1_h0_val == 8192<br>                                            |[0x80000148]:SRAI16_U gp, a2, 10<br> [0x8000014c]:sw gp, 20(s2)<br>     |
|   7|[0x80002228]<br>0x0000FFFF|- rs1 : x2<br> - rd : x14<br> - imm_val == 9<br> - rs1_h0_val == -257<br>                                                                       |[0x80000158]:SRAI16_U a4, sp, 9<br> [0x8000015c]:sw a4, 24(s2)<br>      |
|   8|[0x8000222c]<br>0x00000000|- rs1 : x0<br> - rd : x6<br> - imm_val == 8<br> - rs1_h1_val == 0<br>                                                                           |[0x80000168]:SRAI16_U t1, zero, 8<br> [0x8000016c]:sw t1, 28(s2)<br>    |
|   9|[0x80002230]<br>0x00000100|- rs1 : x9<br> - rd : x15<br> - imm_val == 7<br> - rs1_h0_val == 32767<br>                                                                      |[0x80000178]:SRAI16_U a5, s1, 7<br> [0x8000017c]:sw a5, 32(s2)<br>      |
|  10|[0x80002234]<br>0x00000010|- rs1 : x28<br> - rd : x13<br> - imm_val == 6<br> - rs1_h1_val == -2<br> - rs1_h0_val == 1024<br>                                               |[0x80000188]:SRAI16_U a3, t3, 6<br> [0x8000018c]:sw a3, 36(s2)<br>      |
|  11|[0x80002238]<br>0x00000400|- rs1 : x17<br> - rd : x27<br> - imm_val == 5<br>                                                                                               |[0x80000198]:SRAI16_U s11, a7, 5<br> [0x8000019c]:sw s11, 40(s2)<br>    |
|  12|[0x8000223c]<br>0x00000020|- rs1 : x14<br> - rd : x8<br> - imm_val == 4<br> - rs1_h0_val == 512<br>                                                                        |[0x800001a8]:SRAI16_U fp, a4, 4<br> [0x800001ac]:sw fp, 44(s2)<br>      |
|  13|[0x80002240]<br>0x00400001|- rs1 : x21<br> - rd : x5<br> - imm_val == 3<br> - rs1_h1_val == 512<br>                                                                        |[0x800001b8]:SRAI16_U t0, s5, 3<br> [0x800001bc]:sw t0, 48(s2)<br>      |
|  14|[0x80002244]<br>0x00020400|- rs1 : x8<br> - rd : x17<br> - imm_val == 2<br> - rs1_h0_val == 4096<br>                                                                       |[0x800001c4]:SRAI16_U a7, fp, 2<br> [0x800001c8]:sw a7, 52(s2)<br>      |
|  15|[0x80002248]<br>0xFFFE0400|- rs1 : x13<br> - rd : x16<br> - imm_val == 1<br> - rs1_h0_val == 2048<br>                                                                      |[0x800001d4]:SRAI16_U a6, a3, 1<br> [0x800001d8]:sw a6, 56(s2)<br>      |
|  16|[0x8000224c]<br>0x1000FFEF|- rs1 : x6<br> - rd : x30<br> - imm_val == 0<br> - rs1_h1_val == 4096<br> - rs1_h0_val == -17<br>                                               |[0x800001e4]:SRAI16_U t5, t1, 0<br> [0x800001e8]:sw t5, 60(s2)<br>      |
|  17|[0x80002250]<br>0xFFABFFFC|- rs1 : x20<br> - rd : x31<br> - rs1_h1_val == -21846<br> - rs1_h0_val == -1025<br>                                                             |[0x800001f4]:SRAI16_U t6, s4, 8<br> [0x800001f8]:sw t6, 64(s2)<br>      |
|  18|[0x80002254]<br>0x55554000|- rs1 : x27<br> - rd : x1<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 16384<br>                                                               |[0x80000200]:SRAI16_U ra, s11, 0<br> [0x80000204]:sw ra, 68(s2)<br>     |
|  19|[0x80002258]<br>0x4000F800|- rs1 : x29<br> - rd : x4<br> - rs1_h1_val == 32767<br> - rs1_h0_val == -4097<br>                                                               |[0x80000210]:SRAI16_U tp, t4, 1<br> [0x80000214]:sw tp, 72(s2)<br>      |
|  20|[0x8000225c]<br>0xFFFE0000|- rs1 : x3<br> - rd : x7<br> - rs1_h1_val == -16385<br>                                                                                         |[0x80000220]:SRAI16_U t2, gp, 13<br> [0x80000224]:sw t2, 76(s2)<br>     |
|  21|[0x80002260]<br>0xFFF80000|- rs1 : x19<br> - rd : x12<br> - rs1_h1_val == -8193<br>                                                                                        |[0x80000230]:SRAI16_U a2, s3, 10<br> [0x80000234]:sw a2, 80(s2)<br>     |
|  22|[0x80002264]<br>0xFFFE0000|- rs1 : x5<br> - rd : x22<br> - rs1_h1_val == -1025<br>                                                                                         |[0x8000023c]:SRAI16_U s6, t0, 9<br> [0x80000240]:sw s6, 84(s2)<br>      |
|  23|[0x80002268]<br>0xFFE0FFFE|- rs1 : x11<br> - rd : x29<br> - rs1_h1_val == -513<br> - rs1_h0_val == -33<br>                                                                 |[0x8000024c]:SRAI16_U t4, a1, 4<br> [0x80000250]:sw t4, 88(s2)<br>      |
|  24|[0x8000226c]<br>0xFF80C000|- rs1 : x31<br> - rd : x26<br> - rs1_h1_val == -257<br>                                                                                         |[0x80000258]:SRAI16_U s10, t6, 1<br> [0x8000025c]:sw s10, 92(s2)<br>    |
|  25|[0x80002270]<br>0x00000000|- rs1 : x1<br> - rd : x20<br> - rs1_h1_val == -129<br> - rs1_h0_val == 8<br>                                                                    |[0x80000270]:SRAI16_U s4, ra, 11<br> [0x80000274]:sw s4, 0(gp)<br>      |
|  26|[0x80002274]<br>0xFFF00001|- rs1 : x24<br> - rd : x18<br> - rs1_h1_val == -65<br> - rs1_h0_val == 2<br>                                                                    |[0x80000280]:SRAI16_U s2, s8, 2<br> [0x80000284]:sw s2, 4(gp)<br>       |
|  27|[0x80002278]<br>0xFFF8FC00|- rs1 : x4<br> - rd : x2<br> - rs1_h1_val == -33<br>                                                                                            |[0x80000290]:SRAI16_U sp, tp, 2<br> [0x80000294]:sw sp, 8(gp)<br>       |
|  28|[0x8000227c]<br>0xFFFEFFE0|- rs1 : x26<br> - rd : x19<br> - rs1_h1_val == -17<br>                                                                                          |[0x800002a0]:SRAI16_U s3, s10, 3<br> [0x800002a4]:sw s3, 12(gp)<br>     |
|  29|[0x80002280]<br>0xFFFF0000|- rs1 : x18<br> - rd : x9<br> - rs1_h1_val == -9<br>                                                                                            |[0x800002ac]:SRAI16_U s1, s2, 4<br> [0x800002b0]:sw s1, 16(gp)<br>      |
|  30|[0x80002284]<br>0xFFFFFFE0|- rs1 : x23<br> - rd : x28<br> - rs1_h0_val == -65<br>                                                                                          |[0x800002bc]:SRAI16_U t3, s7, 1<br> [0x800002c0]:sw t3, 20(gp)<br>      |
|  31|[0x80002288]<br>0xF000FFFE|- rs1 : x7<br> - rd : x25<br> - rs1_h0_val == -9<br>                                                                                            |[0x800002cc]:SRAI16_U s9, t2, 2<br> [0x800002d0]:sw s9, 24(gp)<br>      |
|  32|[0x8000228c]<br>0x00000000|- rs1 : x25<br> - rd : x23<br> - rs1_h0_val == -5<br>                                                                                           |[0x800002dc]:SRAI16_U s7, s9, 15<br> [0x800002e0]:sw s7, 28(gp)<br>     |
|  33|[0x80002290]<br>0xFFFC0000|- rs1_h0_val == -3<br>                                                                                                                          |[0x800002ec]:SRAI16_U t6, t5, 10<br> [0x800002f0]:sw t6, 32(gp)<br>     |
|  34|[0x80002294]<br>0xE0000000|- rs1_h1_val == -32768<br> - rs1_h0_val == -2<br>                                                                                               |[0x800002fc]:SRAI16_U t6, t5, 2<br> [0x80000300]:sw t6, 36(gp)<br>      |
|  35|[0x80002298]<br>0x00000000|- rs1_h0_val == 256<br>                                                                                                                         |[0x8000030c]:SRAI16_U t6, t5, 14<br> [0x80000310]:sw t6, 40(gp)<br>     |
|  36|[0x8000229c]<br>0x00050000|- rs1_h0_val == 64<br>                                                                                                                          |[0x8000031c]:SRAI16_U t6, t5, 12<br> [0x80000320]:sw t6, 44(gp)<br>     |
|  37|[0x800022a0]<br>0x00000000|- rs1_h0_val == 32<br>                                                                                                                          |[0x8000032c]:SRAI16_U t6, t5, 7<br> [0x80000330]:sw t6, 48(gp)<br>      |
|  38|[0x800022a4]<br>0x00000000|- rs1_h0_val == 16<br>                                                                                                                          |[0x8000033c]:SRAI16_U t6, t5, 7<br> [0x80000340]:sw t6, 52(gp)<br>      |
|  39|[0x800022a8]<br>0x00000000|- rs1_h0_val == 4<br>                                                                                                                           |[0x8000034c]:SRAI16_U t6, t5, 12<br> [0x80000350]:sw t6, 56(gp)<br>     |
|  40|[0x800022ac]<br>0xFFFF0000|- rs1_h0_val == 1<br>                                                                                                                           |[0x8000035c]:SRAI16_U t6, t5, 14<br> [0x80000360]:sw t6, 60(gp)<br>     |
|  41|[0x800022b0]<br>0x00000000|- rs1_h0_val == -1<br>                                                                                                                          |[0x8000036c]:SRAI16_U t6, t5, 8<br> [0x80000370]:sw t6, 64(gp)<br>      |
|  42|[0x800022b4]<br>0x00000000|- rs1_h1_val == -3<br>                                                                                                                          |[0x8000037c]:SRAI16_U t6, t5, 4<br> [0x80000380]:sw t6, 68(gp)<br>      |
|  43|[0x800022b8]<br>0x2000E000|- rs1_h1_val == 16384<br> - rs1_h0_val == -16385<br>                                                                                            |[0x8000038c]:SRAI16_U t6, t5, 1<br> [0x80000390]:sw t6, 72(gp)<br>      |
|  44|[0x800022bc]<br>0x00080000|- rs1_h1_val == 8192<br>                                                                                                                        |[0x8000039c]:SRAI16_U t6, t5, 10<br> [0x800003a0]:sw t6, 76(gp)<br>     |
|  45|[0x800022c0]<br>0x00200000|- rs1_h1_val == 2048<br>                                                                                                                        |[0x800003ac]:SRAI16_U t6, t5, 6<br> [0x800003b0]:sw t6, 80(gp)<br>      |
|  46|[0x800022c4]<br>0x00020000|- rs1_h1_val == 1024<br>                                                                                                                        |[0x800003bc]:SRAI16_U t6, t5, 9<br> [0x800003c0]:sw t6, 84(gp)<br>      |
|  47|[0x800022c8]<br>0x00010000|- rs1_h1_val == 128<br>                                                                                                                         |[0x800003cc]:SRAI16_U t6, t5, 8<br> [0x800003d0]:sw t6, 88(gp)<br>      |
|  48|[0x800022cc]<br>0x00000000|- rs1_h1_val == 32<br>                                                                                                                          |[0x800003dc]:SRAI16_U t6, t5, 8<br> [0x800003e0]:sw t6, 92(gp)<br>      |
|  49|[0x800022d0]<br>0x0000FFC0|- rs1_h1_val == 16<br> - rs1_h0_val == -8193<br>                                                                                                |[0x800003ec]:SRAI16_U t6, t5, 7<br> [0x800003f0]:sw t6, 96(gp)<br>      |
|  50|[0x800022d4]<br>0x0000FFE0|- rs1_h1_val == 4<br> - rs1_h0_val == -2049<br>                                                                                                 |[0x800003fc]:SRAI16_U t6, t5, 6<br> [0x80000400]:sw t6, 100(gp)<br>     |
|  51|[0x800022d8]<br>0x0000FFF8|- rs1_h1_val == 2<br>                                                                                                                           |[0x8000040c]:SRAI16_U t6, t5, 4<br> [0x80000410]:sw t6, 104(gp)<br>     |
|  52|[0x800022dc]<br>0x00000000|- rs1_h1_val == 1<br>                                                                                                                           |[0x8000041c]:SRAI16_U t6, t5, 10<br> [0x80000420]:sw t6, 108(gp)<br>    |
|  53|[0x800022e4]<br>0x2000FF80|- rs1_h0_val == -513<br>                                                                                                                        |[0x8000043c]:SRAI16_U t6, t5, 2<br> [0x80000440]:sw t6, 116(gp)<br>     |
|  54|[0x800022e8]<br>0x00000000|- rs1_h1_val == -1<br>                                                                                                                          |[0x80000448]:SRAI16_U t6, t5, 9<br> [0x8000044c]:sw t6, 120(gp)<br>     |
|  55|[0x800022ec]<br>0x0000FFD5|- rs1_h0_val == -21846<br>                                                                                                                      |[0x80000458]:SRAI16_U t6, t5, 9<br> [0x8000045c]:sw t6, 124(gp)<br>     |
|  56|[0x800022f0]<br>0x0010000B|- rs1_h0_val == 21845<br>                                                                                                                       |[0x80000468]:SRAI16_U t6, t5, 11<br> [0x8000046c]:sw t6, 128(gp)<br>    |
