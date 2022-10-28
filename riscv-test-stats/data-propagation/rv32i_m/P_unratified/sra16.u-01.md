
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000560')]      |
| SIG_REGION                | [('0x80002210', '0x800022f0', '56 words')]      |
| COV_LABELS                | sra16.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/sra16.u-01.S    |
| Total Number of coverpoints| 190     |
| Total Coverpoints Hit     | 184      |
| Total Signature Updates   | 56      |
| STAT1                     | 54      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003b0]:SRA16_U t6, t5, t4
      [0x800003b4]:sw t6, 16(ra)
 -- Signature Address: 0x80002298 Data: 0xFFBF0000
 -- Redundant Coverpoints hit by the op
      - opcode : sra16.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == -65
      - rs1_h0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000538]:SRA16_U t6, t5, t4
      [0x8000053c]:sw t6, 96(ra)
 -- Signature Address: 0x800022e8 Data: 0xFFC00008
 -- Redundant Coverpoints hit by the op
      - opcode : sra16.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 4
      - rs1_h1_val == -1025
      - rs1_h0_val == 128






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

|s.no|        signature         |                                                              coverpoints                                                              |                                 code                                  |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : sra16.u<br> - rs1 : x18<br> - rs2 : x18<br> - rd : x18<br> - rs1 == rs2 == rd<br> - rs2_val == 5<br> - rs1_h1_val == 0<br>  |[0x8000010c]:SRA16_U s2, s2, s2<br> [0x80000110]:sw s2, 0(gp)<br>      |
|   2|[0x80002214]<br>0x00000000|- rs1 : x25<br> - rs2 : x25<br> - rd : x8<br> - rs1 == rs2 != rd<br> - rs2_val == 7<br>                                                |[0x80000120]:SRA16_U fp, s9, s9<br> [0x80000124]:sw fp, 4(gp)<br>      |
|   3|[0x80002218]<br>0x00000000|- rs1 : x16<br> - rs2 : x26<br> - rd : x2<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 11<br> - rs1_h1_val == -2<br> |[0x80000134]:SRA16_U sp, a6, s10<br> [0x80000138]:sw sp, 8(gp)<br>     |
|   4|[0x8000221c]<br>0x00000000|- rs1 : x21<br> - rs2 : x31<br> - rd : x31<br> - rs2 == rd != rs1<br> - rs2_val == 13<br> - rs1_h1_val == 1024<br>                     |[0x80000148]:SRA16_U t6, s5, t6<br> [0x8000014c]:sw t6, 12(gp)<br>     |
|   5|[0x80002220]<br>0x00000000|- rs1 : x28<br> - rs2 : x11<br> - rd : x28<br> - rs1 == rd != rs2<br> - rs2_val == 14<br>                                              |[0x8000015c]:SRA16_U t3, t3, a1<br> [0x80000160]:sw t3, 16(gp)<br>     |
|   6|[0x80002224]<br>0x0000FF80|- rs1 : x27<br> - rs2 : x1<br> - rd : x26<br> - rs2_val == 8<br> - rs1_h1_val == -17<br> - rs1_h0_val == -32768<br>                    |[0x8000016c]:SRA16_U s10, s11, ra<br> [0x80000170]:sw s10, 20(gp)<br>  |
|   7|[0x80002228]<br>0x00000000|- rs1 : x12<br> - rs2 : x10<br> - rd : x0<br> - rs2_val == 4<br> - rs1_h1_val == -1025<br> - rs1_h0_val == 128<br>                     |[0x80000180]:SRA16_U zero, a2, a0<br> [0x80000184]:sw zero, 24(gp)<br> |
|   8|[0x8000222c]<br>0x00020000|- rs1 : x7<br> - rs2 : x4<br> - rd : x14<br> - rs2_val == 2<br> - rs1_h0_val == 1<br>                                                  |[0x80000194]:SRA16_U a4, t2, tp<br> [0x80000198]:sw a4, 28(gp)<br>     |
|   9|[0x80002230]<br>0x0004FF00|- rs1 : x2<br> - rs2 : x6<br> - rd : x4<br> - rs2_val == 1<br> - rs1_h1_val == 8<br> - rs1_h0_val == -513<br>                          |[0x800001a8]:SRA16_U tp, sp, t1<br> [0x800001ac]:sw tp, 32(gp)<br>     |
|  10|[0x80002234]<br>0xFAABFFFE|- rs1 : x20<br> - rs2 : x21<br> - rd : x13<br> - rs1_h1_val == -21846<br> - rs1_h0_val == -33<br>                                      |[0x800001bc]:SRA16_U a3, s4, s5<br> [0x800001c0]:sw a3, 36(gp)<br>     |
|  11|[0x80002238]<br>0x00010000|- rs1 : x15<br> - rs2 : x5<br> - rd : x6<br> - rs1_h1_val == 21845<br> - rs1_h0_val == -5<br>                                          |[0x800001d0]:SRA16_U t1, a5, t0<br> [0x800001d4]:sw t1, 40(gp)<br>     |
|  12|[0x8000223c]<br>0x7FFFFFFD|- rs1 : x8<br> - rs2 : x0<br> - rd : x22<br> - rs1_h1_val == 32767<br> - rs1_h0_val == -3<br>                                          |[0x800001e4]:SRA16_U s6, fp, zero<br> [0x800001e8]:sw s6, 44(gp)<br>   |
|  13|[0x80002240]<br>0xE000FFFF|- rs1 : x29<br> - rs2 : x16<br> - rd : x20<br> - rs1_h1_val == -16385<br> - rs1_h0_val == -2<br>                                       |[0x800001f8]:SRA16_U s4, t4, a6<br> [0x800001fc]:sw s4, 48(gp)<br>     |
|  14|[0x80002244]<br>0xF800FE00|- rs1 : x10<br> - rs2 : x24<br> - rd : x19<br> - rs1_h1_val == -8193<br> - rs1_h0_val == -2049<br>                                     |[0x8000020c]:SRA16_U s3, a0, s8<br> [0x80000210]:sw s3, 52(gp)<br>     |
|  15|[0x80002248]<br>0xF8004000|- rs1 : x30<br> - rs2 : x9<br> - rd : x10<br> - rs1_h1_val == -4097<br> - rs1_h0_val == 32767<br>                                      |[0x80000220]:SRA16_U a0, t5, s1<br> [0x80000224]:sw a0, 56(gp)<br>     |
|  16|[0x8000224c]<br>0xFFFF0000|- rs1 : x5<br> - rs2 : x15<br> - rd : x17<br> - rs1_h1_val == -2049<br>                                                                |[0x8000023c]:SRA16_U a7, t0, a5<br> [0x80000240]:sw a7, 0(sp)<br>      |
|  17|[0x80002250]<br>0x00000000|- rs1 : x11<br> - rs2 : x12<br> - rd : x21<br> - rs1_h1_val == -513<br>                                                                |[0x80000250]:SRA16_U s5, a1, a2<br> [0x80000254]:sw s5, 4(sp)<br>      |
|  18|[0x80002254]<br>0xFFFC0020|- rs1 : x14<br> - rs2 : x8<br> - rd : x30<br> - rs1_h1_val == -257<br> - rs1_h0_val == 2048<br>                                        |[0x80000264]:SRA16_U t5, a4, fp<br> [0x80000268]:sw t5, 8(sp)<br>      |
|  19|[0x80002258]<br>0x00000000|- rs1 : x3<br> - rs2 : x14<br> - rd : x24<br> - rs1_h1_val == -129<br>                                                                 |[0x80000278]:SRA16_U s8, gp, a4<br> [0x8000027c]:sw s8, 12(sp)<br>     |
|  20|[0x8000225c]<br>0xFFF00010|- rs1 : x1<br> - rs2 : x23<br> - rd : x9<br> - rs1_h1_val == -65<br> - rs1_h0_val == 64<br>                                            |[0x8000028c]:SRA16_U s1, ra, s7<br> [0x80000290]:sw s1, 16(sp)<br>     |
|  21|[0x80002260]<br>0xFFF80040|- rs1 : x6<br> - rs2 : x13<br> - rd : x11<br> - rs1_h1_val == -33<br> - rs1_h0_val == 256<br>                                          |[0x800002a0]:SRA16_U a1, t1, a3<br> [0x800002a4]:sw a1, 20(sp)<br>     |
|  22|[0x80002264]<br>0x0000FF55|- rs1 : x23<br> - rs2 : x28<br> - rd : x27<br> - rs1_h1_val == -9<br> - rs1_h0_val == -21846<br>                                       |[0x800002b4]:SRA16_U s11, s7, t3<br> [0x800002b8]:sw s11, 24(sp)<br>   |
|  23|[0x80002268]<br>0x00000001|- rs1 : x19<br> - rs2 : x7<br> - rd : x12<br> - rs1_h1_val == -5<br> - rs1_h0_val == 8192<br>                                          |[0x800002c4]:SRA16_U a2, s3, t2<br> [0x800002c8]:sw a2, 28(sp)<br>     |
|  24|[0x8000226c]<br>0x00000000|- rs1 : x0<br> - rs2 : x3<br> - rd : x15<br> - rs1_h0_val == 0<br> - rs2_val == 10<br>                                                 |[0x800002d8]:SRA16_U a5, zero, gp<br> [0x800002dc]:sw a5, 32(sp)<br>   |
|  25|[0x80002270]<br>0xFF800000|- rs1 : x13<br> - rs2 : x30<br> - rd : x7<br> - rs1_h1_val == -32768<br> - rs1_h0_val == 8<br>                                         |[0x800002ec]:SRA16_U t2, a3, t5<br> [0x800002f0]:sw t2, 36(sp)<br>     |
|  26|[0x80002274]<br>0x0800FF00|- rs1 : x17<br> - rs2 : x20<br> - rd : x16<br> - rs1_h1_val == 16384<br>                                                               |[0x80000300]:SRA16_U a6, a7, s4<br> [0x80000304]:sw a6, 40(sp)<br>     |
|  27|[0x80002278]<br>0x00202000|- rs1 : x9<br> - rs2 : x19<br> - rd : x5<br> - rs1_h1_val == 64<br> - rs1_h0_val == 16384<br>                                          |[0x80000310]:SRA16_U t0, s1, s3<br> [0x80000314]:sw t0, 44(sp)<br>     |
|  28|[0x8000227c]<br>0x00010002|- rs1 : x31<br> - rs2 : x27<br> - rd : x29<br> - rs1_h1_val == 2048<br> - rs1_h0_val == 4096<br>                                       |[0x80000320]:SRA16_U t4, t6, s11<br> [0x80000324]:sw t4, 48(sp)<br>    |
|  29|[0x80002280]<br>0x00000002|- rs1 : x22<br> - rs2 : x17<br> - rd : x25<br> - rs1_h0_val == 1024<br>                                                                |[0x80000334]:SRA16_U s9, s6, a7<br> [0x80000338]:sw s9, 52(sp)<br>     |
|  30|[0x80002284]<br>0xF0000080|- rs1 : x4<br> - rs2 : x22<br> - rd : x1<br> - rs1_h0_val == 512<br>                                                                   |[0x80000348]:SRA16_U ra, tp, s6<br> [0x8000034c]:sw ra, 56(sp)<br>     |
|  31|[0x80002288]<br>0x00020000|- rs1 : x24<br> - rs2 : x29<br> - rd : x3<br> - rs1_h1_val == 256<br> - rs1_h0_val == 32<br>                                           |[0x80000364]:SRA16_U gp, s8, t4<br> [0x80000368]:sw gp, 0(ra)<br>      |
|  32|[0x8000228c]<br>0x00000000|- rs1 : x26<br> - rs2 : x2<br> - rd : x23<br> - rs1_h0_val == 16<br>                                                                   |[0x80000378]:SRA16_U s7, s10, sp<br> [0x8000037c]:sw s7, 4(ra)<br>     |
|  33|[0x80002290]<br>0x00000000|- rs1_h0_val == 4<br>                                                                                                                  |[0x8000038c]:SRA16_U t6, t5, t4<br> [0x80000390]:sw t6, 8(ra)<br>      |
|  34|[0x80002294]<br>0x00080000|- rs1_h0_val == 2<br>                                                                                                                  |[0x800003a0]:SRA16_U t6, t5, t4<br> [0x800003a4]:sw t6, 12(ra)<br>     |
|  35|[0x8000229c]<br>0x00000000|- rs1_h0_val == -1<br>                                                                                                                 |[0x800003c4]:SRA16_U t6, t5, t4<br> [0x800003c8]:sw t6, 20(ra)<br>     |
|  36|[0x800022a0]<br>0x10000100|- rs1_h1_val == 8192<br>                                                                                                               |[0x800003d8]:SRA16_U t6, t5, t4<br> [0x800003dc]:sw t6, 24(ra)<br>     |
|  37|[0x800022a4]<br>0x0800FFFC|- rs1_h1_val == 4096<br>                                                                                                               |[0x800003ec]:SRA16_U t6, t5, t4<br> [0x800003f0]:sw t6, 28(ra)<br>     |
|  38|[0x800022a8]<br>0x00020000|- rs1_h1_val == 512<br>                                                                                                                |[0x80000400]:SRA16_U t6, t5, t4<br> [0x80000404]:sw t6, 32(ra)<br>     |
|  39|[0x800022ac]<br>0x00000000|- rs1_h1_val == 128<br>                                                                                                                |[0x80000414]:SRA16_U t6, t5, t4<br> [0x80000418]:sw t6, 36(ra)<br>     |
|  40|[0x800022b0]<br>0x00010000|- rs1_h1_val == 32<br>                                                                                                                 |[0x80000428]:SRA16_U t6, t5, t4<br> [0x8000042c]:sw t6, 40(ra)<br>     |
|  41|[0x800022b4]<br>0x00000100|- rs1_h1_val == 16<br>                                                                                                                 |[0x8000043c]:SRA16_U t6, t5, t4<br> [0x80000440]:sw t6, 44(ra)<br>     |
|  42|[0x800022b8]<br>0x00000000|- rs1_h1_val == 4<br>                                                                                                                  |[0x8000044c]:SRA16_U t6, t5, t4<br> [0x80000450]:sw t6, 48(ra)<br>     |
|  43|[0x800022bc]<br>0x00000000|- rs1_h1_val == 2<br> - rs1_h0_val == -65<br>                                                                                          |[0x80000460]:SRA16_U t6, t5, t4<br> [0x80000464]:sw t6, 52(ra)<br>     |
|  44|[0x800022c0]<br>0x00000000|- rs1_h1_val == 1<br>                                                                                                                  |[0x80000474]:SRA16_U t6, t5, t4<br> [0x80000478]:sw t6, 56(ra)<br>     |
|  45|[0x800022c4]<br>0x0000FFF0|- rs1_h0_val == -4097<br>                                                                                                              |[0x80000488]:SRA16_U t6, t5, t4<br> [0x8000048c]:sw t6, 60(ra)<br>     |
|  46|[0x800022c8]<br>0x00000000|- rs1_h1_val == -1<br>                                                                                                                 |[0x80000498]:SRA16_U t6, t5, t4<br> [0x8000049c]:sw t6, 64(ra)<br>     |
|  47|[0x800022cc]<br>0x0000F800|- rs1_h0_val == -16385<br>                                                                                                             |[0x800004ac]:SRA16_U t6, t5, t4<br> [0x800004b0]:sw t6, 68(ra)<br>     |
|  48|[0x800022d0]<br>0x0040F800|- rs1_h0_val == -8193<br>                                                                                                              |[0x800004c0]:SRA16_U t6, t5, t4<br> [0x800004c4]:sw t6, 72(ra)<br>     |
|  49|[0x800022d4]<br>0x0000002B|- rs1_h1_val == -3<br> - rs1_h0_val == 21845<br>                                                                                       |[0x800004d4]:SRA16_U t6, t5, t4<br> [0x800004d8]:sw t6, 76(ra)<br>     |
|  50|[0x800022d8]<br>0xFFF00000|- rs1_h0_val == -17<br>                                                                                                                |[0x800004e8]:SRA16_U t6, t5, t4<br> [0x800004ec]:sw t6, 80(ra)<br>     |
|  51|[0x800022dc]<br>0x00000000|- rs1_h0_val == -1025<br>                                                                                                              |[0x800004fc]:SRA16_U t6, t5, t4<br> [0x80000500]:sw t6, 84(ra)<br>     |
|  52|[0x800022e0]<br>0xFFF0FFFC|- rs1_h0_val == -257<br>                                                                                                               |[0x80000510]:SRA16_U t6, t5, t4<br> [0x80000514]:sw t6, 88(ra)<br>     |
|  53|[0x800022e4]<br>0x0000FFFF|- rs1_h0_val == -129<br>                                                                                                               |[0x80000524]:SRA16_U t6, t5, t4<br> [0x80000528]:sw t6, 92(ra)<br>     |
|  54|[0x800022ec]<br>0x00000000|- rs1_h0_val == -9<br>                                                                                                                 |[0x8000054c]:SRA16_U t6, t5, t4<br> [0x80000550]:sw t6, 100(ra)<br>    |
