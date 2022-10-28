
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000890')]      |
| SIG_REGION                | [('0x80002210', '0x800023b0', '104 words')]      |
| COV_LABELS                | sra.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/sra.u-01.S    |
| Total Number of coverpoints| 252     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 101      |
| STAT1                     | 101      |
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

|s.no|        signature         |                                                                                                 coverpoints                                                                                                 |                                code                                 |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : sra.u<br> - rs1 : x30<br> - rs2 : x30<br> - rd : x30<br> - rs1 == rs2 == rd<br> - rs2_val == -1048577<br> - rs1_val == -1048577<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br>    |[0x80000110]:SRA_U t5, t5, t5<br> [0x80000114]:sw t5, 0(sp)<br>      |
|   2|[0x80002214]<br>0x03333333|- rs1 : x11<br> - rs2 : x11<br> - rd : x28<br> - rs1 == rs2 != rd<br> - rs1_val > 0 and rs2_val > 0<br>                                                                                                      |[0x80000128]:SRA_U t3, a1, a1<br> [0x8000012c]:sw t3, 4(sp)<br>      |
|   3|[0x80002218]<br>0x00000000|- rs1 : x14<br> - rs2 : x29<br> - rd : x17<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val != rs2_val<br> - rs2_val == -536870913<br> - rs1_val == 1048576<br> - rs1_val > 0 and rs2_val < 0<br> |[0x8000013c]:SRA_U a7, a4, t4<br> [0x80000140]:sw a7, 8(sp)<br>      |
|   4|[0x8000221c]<br>0x00000000|- rs1 : x9<br> - rs2 : x14<br> - rd : x14<br> - rs2 == rd != rs1<br> - rs2_val == -268435457<br> - rs1_val == -33554433<br>                                                                                  |[0x80000154]:SRA_U a4, s1, a4<br> [0x80000158]:sw a4, 12(sp)<br>     |
|   5|[0x80002220]<br>0x00000000|- rs1 : x6<br> - rs2 : x3<br> - rd : x6<br> - rs1 == rd != rs2<br> - rs2_val == -134217729<br> - rs1_val == -268435457<br>                                                                                   |[0x8000016c]:SRA_U t1, t1, gp<br> [0x80000170]:sw t1, 16(sp)<br>     |
|   6|[0x80002224]<br>0x00000000|- rs1 : x19<br> - rs2 : x31<br> - rd : x5<br> - rs2_val == -67108865<br>                                                                                                                                     |[0x80000180]:SRA_U t0, s3, t6<br> [0x80000184]:sw t0, 20(sp)<br>     |
|   7|[0x80002228]<br>0x00000000|- rs1 : x0<br> - rs2 : x10<br> - rd : x20<br> - rs2_val == -33554433<br> - rs1_val == 0<br>                                                                                                                  |[0x80000194]:SRA_U s4, zero, a0<br> [0x80000198]:sw s4, 24(sp)<br>   |
|   8|[0x8000222c]<br>0x00000000|- rs1 : x23<br> - rs2 : x4<br> - rd : x27<br> - rs2_val == -16777217<br>                                                                                                                                     |[0x800001ac]:SRA_U s11, s7, tp<br> [0x800001b0]:sw s11, 28(sp)<br>   |
|   9|[0x80002230]<br>0x00000000|- rs1 : x3<br> - rs2 : x9<br> - rd : x23<br> - rs2_val == -8388609<br> - rs1_val == 256<br>                                                                                                                  |[0x800001c0]:SRA_U s7, gp, s1<br> [0x800001c4]:sw s7, 32(sp)<br>     |
|  10|[0x80002234]<br>0x00000000|- rs1 : x24<br> - rs2 : x17<br> - rd : x12<br> - rs2_val == -4194305<br> - rs1_val == -65<br>                                                                                                                |[0x800001d4]:SRA_U a2, s8, a7<br> [0x800001d8]:sw a2, 36(sp)<br>     |
|  11|[0x80002238]<br>0x00000000|- rs1 : x4<br> - rs2 : x25<br> - rd : x11<br> - rs2_val == -2097153<br> - rs1_val == -16385<br>                                                                                                              |[0x800001ec]:SRA_U a1, tp, s9<br> [0x800001f0]:sw a1, 40(sp)<br>     |
|  12|[0x8000223c]<br>0x00000000|- rs1 : x22<br> - rs2 : x12<br> - rd : x25<br> - rs1_val == 512<br>                                                                                                                                          |[0x80000200]:SRA_U s9, s6, a2<br> [0x80000204]:sw s9, 44(sp)<br>     |
|  13|[0x80002240]<br>0x00000000|- rs1 : x26<br> - rs2 : x23<br> - rd : x15<br> - rs2_val == -524289<br> - rs1_val == 4<br>                                                                                                                   |[0x80000214]:SRA_U a5, s10, s7<br> [0x80000218]:sw a5, 48(sp)<br>    |
|  14|[0x80002244]<br>0x00000000|- rs1 : x21<br> - rs2 : x1<br> - rd : x31<br> - rs2_val == -262145<br> - rs1_val == 8192<br>                                                                                                                 |[0x80000228]:SRA_U t6, s5, ra<br> [0x8000022c]:sw t6, 52(sp)<br>     |
|  15|[0x80002248]<br>0x00000040|- rs1 : x16<br> - rs2 : x0<br> - rd : x1<br> - rs1_val == 64<br> - rs2_val == 0<br>                                                                                                                          |[0x80000238]:SRA_U ra, a6, zero<br> [0x8000023c]:sw ra, 56(sp)<br>   |
|  16|[0x8000224c]<br>0x00000000|- rs1 : x29<br> - rs2 : x19<br> - rd : x13<br> - rs2_val == -65537<br> - rs1_val == -9<br>                                                                                                                   |[0x8000024c]:SRA_U a3, t4, s3<br> [0x80000250]:sw a3, 60(sp)<br>     |
|  17|[0x80002250]<br>0x00000001|- rs1 : x13<br> - rs2 : x2<br> - rd : x16<br> - rs2_val == -32769<br>                                                                                                                                        |[0x8000026c]:SRA_U a6, a3, sp<br> [0x80000270]:sw a6, 0(a1)<br>      |
|  18|[0x80002254]<br>0x00000000|- rs1 : x15<br> - rs2 : x21<br> - rd : x8<br> - rs2_val == -16385<br>                                                                                                                                        |[0x80000280]:SRA_U fp, a5, s5<br> [0x80000284]:sw fp, 4(a1)<br>      |
|  19|[0x80002258]<br>0xFFFFFFFF|- rs1 : x18<br> - rs2 : x8<br> - rd : x4<br> - rs2_val == -8193<br>                                                                                                                                          |[0x80000298]:SRA_U tp, s2, fp<br> [0x8000029c]:sw tp, 8(a1)<br>      |
|  20|[0x8000225c]<br>0x00000000|- rs1 : x20<br> - rs2 : x16<br> - rd : x24<br> - rs2_val == -4097<br>                                                                                                                                        |[0x800002b0]:SRA_U s8, s4, a6<br> [0x800002b4]:sw s8, 12(a1)<br>     |
|  21|[0x80002260]<br>0x00000001|- rs1 : x5<br> - rs2 : x26<br> - rd : x10<br> - rs2_val == -2049<br>                                                                                                                                         |[0x800002c8]:SRA_U a0, t0, s10<br> [0x800002cc]:sw a0, 16(a1)<br>    |
|  22|[0x80002264]<br>0x00000000|- rs1 : x31<br> - rs2 : x24<br> - rd : x2<br> - rs2_val == -1025<br> - rs1_val == -1025<br>                                                                                                                  |[0x800002d8]:SRA_U sp, t6, s8<br> [0x800002dc]:sw sp, 20(a1)<br>     |
|  23|[0x80002268]<br>0x00000000|- rs1 : x2<br> - rs2 : x13<br> - rd : x3<br> - rs2_val == -513<br>                                                                                                                                           |[0x800002e8]:SRA_U gp, sp, a3<br> [0x800002ec]:sw gp, 24(a1)<br>     |
|  24|[0x8000226c]<br>0x00000000|- rs1 : x10<br> - rs2 : x15<br> - rd : x0<br> - rs2_val == -257<br> - rs1_val == 16384<br>                                                                                                                   |[0x800002f8]:SRA_U zero, a0, a5<br> [0x800002fc]:sw zero, 28(a1)<br> |
|  25|[0x80002270]<br>0xFFFFFFFF|- rs1 : x1<br> - rs2 : x5<br> - rd : x19<br> - rs2_val == -129<br> - rs1_val == -1431655766<br>                                                                                                              |[0x8000030c]:SRA_U s3, ra, t0<br> [0x80000310]:sw s3, 32(a1)<br>     |
|  26|[0x80002274]<br>0x00000000|- rs1 : x27<br> - rs2 : x7<br> - rd : x22<br> - rs2_val == -65<br>                                                                                                                                           |[0x8000031c]:SRA_U s6, s11, t2<br> [0x80000320]:sw s6, 36(a1)<br>    |
|  27|[0x80002278]<br>0x00000000|- rs1 : x17<br> - rs2 : x20<br> - rd : x29<br> - rs2_val == -33<br> - rs1_val == 16777216<br>                                                                                                                |[0x8000032c]:SRA_U t4, a7, s4<br> [0x80000330]:sw t4, 40(a1)<br>     |
|  28|[0x8000227c]<br>0xFFFFFC00|- rs1 : x25<br> - rs2 : x27<br> - rd : x9<br> - rs2_val == -17<br>                                                                                                                                           |[0x80000340]:SRA_U s1, s9, s11<br> [0x80000344]:sw s1, 44(a1)<br>    |
|  29|[0x80002280]<br>0x00000000|- rs1 : x8<br> - rs2 : x18<br> - rd : x7<br> - rs2_val == -9<br>                                                                                                                                             |[0x80000350]:SRA_U t2, fp, s2<br> [0x80000354]:sw t2, 48(a1)<br>     |
|  30|[0x80002284]<br>0x00000000|- rs1 : x28<br> - rs2 : x6<br> - rd : x18<br> - rs2_val == -5<br> - rs1_val == 2<br>                                                                                                                         |[0x80000360]:SRA_U s2, t3, t1<br> [0x80000364]:sw s2, 52(a1)<br>     |
|  31|[0x80002288]<br>0x00000000|- rs1 : x12<br> - rs2 : x28<br> - rd : x26<br> - rs2_val == -3<br>                                                                                                                                           |[0x80000370]:SRA_U s10, a2, t3<br> [0x80000374]:sw s10, 56(a1)<br>   |
|  32|[0x8000228c]<br>0x00000001|- rs1 : x7<br> - rs2 : x22<br> - rd : x21<br> - rs2_val == -2<br>                                                                                                                                            |[0x8000038c]:SRA_U s5, t2, s6<br> [0x80000390]:sw s5, 0(ra)<br>      |
|  33|[0x80002290]<br>0x00000001|- rs1_val == 2147483647<br> - rs1_val == (2**(xlen-1)-1)<br>                                                                                                                                                 |[0x800003a0]:SRA_U t6, t5, t4<br> [0x800003a4]:sw t6, 4(ra)<br>      |
|  34|[0x80002294]<br>0xFC000000|- rs1_val == -1073741825<br> - rs2_val == 4<br> - rs1_val < 0 and rs2_val > 0<br>                                                                                                                            |[0x800003b4]:SRA_U t6, t5, t4<br> [0x800003b8]:sw t6, 8(ra)<br>      |
|  35|[0x80002298]<br>0xFE000000|- rs1_val == -536870913<br>                                                                                                                                                                                  |[0x800003c8]:SRA_U t6, t5, t4<br> [0x800003cc]:sw t6, 12(ra)<br>     |
|  36|[0x8000229c]<br>0xF7FFFFFF|- rs1_val == -134217729<br> - rs2_val == -2147483648<br> - rs2_val == (-2**(xlen-1))<br>                                                                                                                     |[0x800003dc]:SRA_U t6, t5, t4<br> [0x800003e0]:sw t6, 16(ra)<br>     |
|  37|[0x800022a0]<br>0x00000000|- rs1_val == -67108865<br>                                                                                                                                                                                   |[0x800003f0]:SRA_U t6, t5, t4<br> [0x800003f4]:sw t6, 20(ra)<br>     |
|  38|[0x800022a4]<br>0xFEFFFFFF|- rs1_val == -16777217<br>                                                                                                                                                                                   |[0x80000404]:SRA_U t6, t5, t4<br> [0x80000408]:sw t6, 24(ra)<br>     |
|  39|[0x800022a8]<br>0xFFFFFFFF|- rs1_val == -8388609<br>                                                                                                                                                                                    |[0x80000418]:SRA_U t6, t5, t4<br> [0x8000041c]:sw t6, 28(ra)<br>     |
|  40|[0x800022ac]<br>0x00000000|- rs1_val == -4194305<br>                                                                                                                                                                                    |[0x8000042c]:SRA_U t6, t5, t4<br> [0x80000430]:sw t6, 32(ra)<br>     |
|  41|[0x800022b0]<br>0xFFF80000|- rs1_val == -2097153<br> - rs2_val == 2<br>                                                                                                                                                                 |[0x80000440]:SRA_U t6, t5, t4<br> [0x80000444]:sw t6, 36(ra)<br>     |
|  42|[0x800022b4]<br>0x00000000|- rs1_val == -524289<br>                                                                                                                                                                                     |[0x80000454]:SRA_U t6, t5, t4<br> [0x80000458]:sw t6, 40(ra)<br>     |
|  43|[0x800022b8]<br>0xFFFBFFFF|- rs1_val == -262145<br> - rs2_val == 16777216<br>                                                                                                                                                           |[0x80000468]:SRA_U t6, t5, t4<br> [0x8000046c]:sw t6, 44(ra)<br>     |
|  44|[0x800022bc]<br>0x00000000|- rs1_val == -131073<br>                                                                                                                                                                                     |[0x80000480]:SRA_U t6, t5, t4<br> [0x80000484]:sw t6, 48(ra)<br>     |
|  45|[0x800022c0]<br>0x00000000|- rs1_val == -65537<br>                                                                                                                                                                                      |[0x80000498]:SRA_U t6, t5, t4<br> [0x8000049c]:sw t6, 52(ra)<br>     |
|  46|[0x800022c4]<br>0x00000000|- rs1_val == -32769<br>                                                                                                                                                                                      |[0x800004b0]:SRA_U t6, t5, t4<br> [0x800004b4]:sw t6, 56(ra)<br>     |
|  47|[0x800022c8]<br>0xFFFFDFFF|- rs1_val == -8193<br> - rs2_val == 262144<br>                                                                                                                                                               |[0x800004c4]:SRA_U t6, t5, t4<br> [0x800004c8]:sw t6, 60(ra)<br>     |
|  48|[0x800022cc]<br>0xFFFFEFFF|- rs1_val == -4097<br> - rs2_val == 268435456<br>                                                                                                                                                            |[0x800004d8]:SRA_U t6, t5, t4<br> [0x800004dc]:sw t6, 64(ra)<br>     |
|  49|[0x800022d0]<br>0xFFFFF7FF|- rs1_val == -2049<br>                                                                                                                                                                                       |[0x800004ec]:SRA_U t6, t5, t4<br> [0x800004f0]:sw t6, 68(ra)<br>     |
|  50|[0x800022d4]<br>0x00000000|- rs1_val == 1<br>                                                                                                                                                                                           |[0x800004fc]:SRA_U t6, t5, t4<br> [0x80000500]:sw t6, 72(ra)<br>     |
|  51|[0x800022d8]<br>0x00000000|- rs1_val == 32<br> - rs2_val == -1431655766<br>                                                                                                                                                             |[0x80000510]:SRA_U t6, t5, t4<br> [0x80000514]:sw t6, 76(ra)<br>     |
|  52|[0x800022dc]<br>0x00000000|- rs2_val == 1431655765<br>                                                                                                                                                                                  |[0x80000524]:SRA_U t6, t5, t4<br> [0x80000528]:sw t6, 80(ra)<br>     |
|  53|[0x800022e0]<br>0x00000001|- rs1_val == 1431655765<br>                                                                                                                                                                                  |[0x80000538]:SRA_U t6, t5, t4<br> [0x8000053c]:sw t6, 84(ra)<br>     |
|  54|[0x800022e4]<br>0x80000000|- rs2_val == 1048576<br> - rs1_val == -2147483648<br> - rs1_val == (-2**(xlen-1))<br>                                                                                                                        |[0x80000548]:SRA_U t6, t5, t4<br> [0x8000054c]:sw t6, 88(ra)<br>     |
|  55|[0x800022e8]<br>0x00000000|- rs1_val == -513<br>                                                                                                                                                                                        |[0x80000558]:SRA_U t6, t5, t4<br> [0x8000055c]:sw t6, 92(ra)<br>     |
|  56|[0x800022ec]<br>0xFFFFFF80|- rs1_val == -257<br> - rs2_val == 1<br>                                                                                                                                                                     |[0x80000568]:SRA_U t6, t5, t4<br> [0x8000056c]:sw t6, 96(ra)<br>     |
|  57|[0x800022f0]<br>0x00000000|- rs1_val == -129<br>                                                                                                                                                                                        |[0x8000057c]:SRA_U t6, t5, t4<br> [0x80000580]:sw t6, 100(ra)<br>    |
|  58|[0x800022f4]<br>0x00000000|- rs1_val == -33<br> - rs2_val == 16<br>                                                                                                                                                                     |[0x8000058c]:SRA_U t6, t5, t4<br> [0x80000590]:sw t6, 104(ra)<br>    |
|  59|[0x800022f8]<br>0x00000000|- rs1_val == -17<br>                                                                                                                                                                                         |[0x8000059c]:SRA_U t6, t5, t4<br> [0x800005a0]:sw t6, 108(ra)<br>    |
|  60|[0x800022fc]<br>0x00000000|- rs1_val == -5<br>                                                                                                                                                                                          |[0x800005ac]:SRA_U t6, t5, t4<br> [0x800005b0]:sw t6, 112(ra)<br>    |
|  61|[0x80002300]<br>0xFFFFFFFD|- rs1_val == -3<br>                                                                                                                                                                                          |[0x800005bc]:SRA_U t6, t5, t4<br> [0x800005c0]:sw t6, 116(ra)<br>    |
|  62|[0x80002304]<br>0xFFFFFFFE|- rs1_val == -2<br>                                                                                                                                                                                          |[0x800005cc]:SRA_U t6, t5, t4<br> [0x800005d0]:sw t6, 120(ra)<br>    |
|  63|[0x80002308]<br>0x00800000|- rs2_val == 1073741824<br> - rs1_val == 8388608<br>                                                                                                                                                         |[0x800005dc]:SRA_U t6, t5, t4<br> [0x800005e0]:sw t6, 124(ra)<br>    |
|  64|[0x8000230c]<br>0x00200000|- rs2_val == 536870912<br> - rs1_val == 2097152<br>                                                                                                                                                          |[0x800005ec]:SRA_U t6, t5, t4<br> [0x800005f0]:sw t6, 128(ra)<br>    |
|  65|[0x80002310]<br>0x00002000|- rs2_val == 134217728<br>                                                                                                                                                                                   |[0x800005fc]:SRA_U t6, t5, t4<br> [0x80000600]:sw t6, 132(ra)<br>    |
|  66|[0x80002314]<br>0xF7FFFFFF|- rs2_val == 67108864<br>                                                                                                                                                                                    |[0x80000610]:SRA_U t6, t5, t4<br> [0x80000614]:sw t6, 136(ra)<br>    |
|  67|[0x80002318]<br>0x3FFFFFFF|- rs2_val == 33554432<br>                                                                                                                                                                                    |[0x80000624]:SRA_U t6, t5, t4<br> [0x80000628]:sw t6, 140(ra)<br>    |
|  68|[0x8000231c]<br>0x00008000|- rs2_val == 8388608<br> - rs1_val == 32768<br>                                                                                                                                                              |[0x80000634]:SRA_U t6, t5, t4<br> [0x80000638]:sw t6, 144(ra)<br>    |
|  69|[0x80002320]<br>0x00000000|- rs2_val == 4194304<br>                                                                                                                                                                                     |[0x80000644]:SRA_U t6, t5, t4<br> [0x80000648]:sw t6, 148(ra)<br>    |
|  70|[0x80002324]<br>0xFFFFFFFA|- rs2_val == 2097152<br>                                                                                                                                                                                     |[0x80000654]:SRA_U t6, t5, t4<br> [0x80000658]:sw t6, 152(ra)<br>    |
|  71|[0x80002328]<br>0x00100000|- rs2_val == 524288<br>                                                                                                                                                                                      |[0x80000664]:SRA_U t6, t5, t4<br> [0x80000668]:sw t6, 156(ra)<br>    |
|  72|[0x8000232c]<br>0x00000800|- rs2_val == 131072<br> - rs1_val == 2048<br>                                                                                                                                                                |[0x80000678]:SRA_U t6, t5, t4<br> [0x8000067c]:sw t6, 160(ra)<br>    |
|  73|[0x80002330]<br>0x00080000|- rs2_val == 65536<br> - rs1_val == 524288<br>                                                                                                                                                               |[0x80000688]:SRA_U t6, t5, t4<br> [0x8000068c]:sw t6, 164(ra)<br>    |
|  74|[0x80002334]<br>0x10000000|- rs2_val == 32768<br> - rs1_val == 268435456<br>                                                                                                                                                            |[0x80000698]:SRA_U t6, t5, t4<br> [0x8000069c]:sw t6, 168(ra)<br>    |
|  75|[0x80002338]<br>0x00004000|- rs2_val == 16384<br>                                                                                                                                                                                       |[0x800006a8]:SRA_U t6, t5, t4<br> [0x800006ac]:sw t6, 172(ra)<br>    |
|  76|[0x8000233c]<br>0xFFFFEFFF|- rs2_val == 8192<br>                                                                                                                                                                                        |[0x800006bc]:SRA_U t6, t5, t4<br> [0x800006c0]:sw t6, 176(ra)<br>    |
|  77|[0x80002340]<br>0xFFFFFF7F|- rs2_val == 4096<br>                                                                                                                                                                                        |[0x800006cc]:SRA_U t6, t5, t4<br> [0x800006d0]:sw t6, 180(ra)<br>    |
|  78|[0x80002344]<br>0x00000008|- rs2_val == 2048<br> - rs1_val == 8<br>                                                                                                                                                                     |[0x800006e0]:SRA_U t6, t5, t4<br> [0x800006e4]:sw t6, 184(ra)<br>    |
|  79|[0x80002348]<br>0xFFFFF7FF|- rs2_val == 1024<br>                                                                                                                                                                                        |[0x800006f4]:SRA_U t6, t5, t4<br> [0x800006f8]:sw t6, 188(ra)<br>    |
|  80|[0x8000234c]<br>0x00008000|- rs2_val == 512<br>                                                                                                                                                                                         |[0x80000704]:SRA_U t6, t5, t4<br> [0x80000708]:sw t6, 192(ra)<br>    |
|  81|[0x80002350]<br>0xC0000000|- rs2_val == 256<br>                                                                                                                                                                                         |[0x80000714]:SRA_U t6, t5, t4<br> [0x80000718]:sw t6, 196(ra)<br>    |
|  82|[0x80002354]<br>0x00000004|- rs2_val == 128<br>                                                                                                                                                                                         |[0x80000724]:SRA_U t6, t5, t4<br> [0x80000728]:sw t6, 200(ra)<br>    |
|  83|[0x80002358]<br>0xFF7FFFFF|- rs2_val == 64<br>                                                                                                                                                                                          |[0x80000738]:SRA_U t6, t5, t4<br> [0x8000073c]:sw t6, 204(ra)<br>    |
|  84|[0x8000235c]<br>0x00004000|- rs1_val == 1073741824<br>                                                                                                                                                                                  |[0x80000748]:SRA_U t6, t5, t4<br> [0x8000074c]:sw t6, 208(ra)<br>    |
|  85|[0x80002360]<br>0x00000020|- rs1_val == 536870912<br>                                                                                                                                                                                   |[0x80000758]:SRA_U t6, t5, t4<br> [0x8000075c]:sw t6, 212(ra)<br>    |
|  86|[0x80002364]<br>0x00000080|- rs1_val == 134217728<br>                                                                                                                                                                                   |[0x8000076c]:SRA_U t6, t5, t4<br> [0x80000770]:sw t6, 216(ra)<br>    |
|  87|[0x80002368]<br>0x00000020|- rs1_val == 67108864<br>                                                                                                                                                                                    |[0x80000780]:SRA_U t6, t5, t4<br> [0x80000784]:sw t6, 220(ra)<br>    |
|  88|[0x8000236c]<br>0x00000200|- rs1_val == 33554432<br>                                                                                                                                                                                    |[0x80000790]:SRA_U t6, t5, t4<br> [0x80000794]:sw t6, 224(ra)<br>    |
|  89|[0x80002370]<br>0x00400000|- rs1_val == 4194304<br>                                                                                                                                                                                     |[0x800007a0]:SRA_U t6, t5, t4<br> [0x800007a4]:sw t6, 228(ra)<br>    |
|  90|[0x80002374]<br>0x00000000|- rs1_val == 262144<br>                                                                                                                                                                                      |[0x800007b0]:SRA_U t6, t5, t4<br> [0x800007b4]:sw t6, 232(ra)<br>    |
|  91|[0x80002378]<br>0x00000000|- rs1_val == 131072<br>                                                                                                                                                                                      |[0x800007c4]:SRA_U t6, t5, t4<br> [0x800007c8]:sw t6, 236(ra)<br>    |
|  92|[0x8000237c]<br>0x00000000|- rs1_val == 65536<br>                                                                                                                                                                                       |[0x800007d8]:SRA_U t6, t5, t4<br> [0x800007dc]:sw t6, 240(ra)<br>    |
|  93|[0x80002380]<br>0x00001000|- rs1_val == 4096<br>                                                                                                                                                                                        |[0x800007e8]:SRA_U t6, t5, t4<br> [0x800007ec]:sw t6, 244(ra)<br>    |
|  94|[0x80002384]<br>0x00000400|- rs1_val == 1024<br>                                                                                                                                                                                        |[0x800007f8]:SRA_U t6, t5, t4<br> [0x800007fc]:sw t6, 248(ra)<br>    |
|  95|[0x80002388]<br>0x00000000|- rs1_val == 128<br>                                                                                                                                                                                         |[0x8000080c]:SRA_U t6, t5, t4<br> [0x80000810]:sw t6, 252(ra)<br>    |
|  96|[0x8000238c]<br>0x66666666|- rs2_val == 32<br>                                                                                                                                                                                          |[0x80000820]:SRA_U t6, t5, t4<br> [0x80000824]:sw t6, 256(ra)<br>    |
|  97|[0x80002390]<br>0x00000000|- rs1_val == 16<br>                                                                                                                                                                                          |[0x80000830]:SRA_U t6, t5, t4<br> [0x80000834]:sw t6, 260(ra)<br>    |
|  98|[0x80002394]<br>0xFFFFFF00|- rs2_val == 8<br>                                                                                                                                                                                           |[0x80000844]:SRA_U t6, t5, t4<br> [0x80000848]:sw t6, 264(ra)<br>    |
|  99|[0x80002398]<br>0x00000000|- rs2_val == 2147483647<br> - rs2_val == (2**(xlen-1)-1)<br>                                                                                                                                                 |[0x8000085c]:SRA_U t6, t5, t4<br> [0x80000860]:sw t6, 268(ra)<br>    |
| 100|[0x8000239c]<br>0x00000001|- rs2_val == -1073741825<br>                                                                                                                                                                                 |[0x80000874]:SRA_U t6, t5, t4<br> [0x80000878]:sw t6, 272(ra)<br>    |
| 101|[0x800023a0]<br>0x00000000|- rs2_val == -131073<br>                                                                                                                                                                                     |[0x80000888]:SRA_U t6, t5, t4<br> [0x8000088c]:sw t6, 276(ra)<br>    |
