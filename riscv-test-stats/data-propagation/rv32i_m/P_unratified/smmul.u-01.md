
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800008f0')]      |
| SIG_REGION                | [('0x80002210', '0x800023c0', '108 words')]      |
| COV_LABELS                | smmul.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/smmul.u-01.S    |
| Total Number of coverpoints| 244     |
| Total Coverpoints Hit     | 238      |
| Total Signature Updates   | 105      |
| STAT1                     | 104      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000668]:SMMUL_U t6, t5, t4
      [0x8000066c]:sw t6, 156(ra)
 -- Signature Address: 0x80002328 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : smmul.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == 0






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

|s.no|        signature         |                                                                      coverpoints                                                                       |                                 code                                  |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x01000000|- opcode : smmul.u<br> - rs1 : x5<br> - rs2 : x5<br> - rd : x5<br> - rs1 == rs2 == rd<br> - rs2_w0_val == -268435457<br> - rs1_w0_val == -268435457<br> |[0x8000010c]:SMMUL_U t0, t0, t0<br> [0x80000110]:sw t0, 0(t1)<br>      |
|   2|[0x80002214]<br>0x1C71C71D|- rs1 : x2<br> - rs2 : x2<br> - rd : x23<br> - rs1 == rs2 != rd<br> - rs2_w0_val == -1431655766<br> - rs1_w0_val == -1431655766<br>                     |[0x80000124]:SMMUL_U s7, sp, sp<br> [0x80000128]:sw s7, 4(t1)<br>      |
|   3|[0x80002218]<br>0x00000000|- rs1 : x31<br> - rs2 : x0<br> - rd : x9<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w0_val == 0<br>                                        |[0x80000138]:SMMUL_U s1, t6, zero<br> [0x8000013c]:sw s1, 8(t1)<br>    |
|   4|[0x8000221c]<br>0x00005A81|- rs1 : x29<br> - rs2 : x16<br> - rd : x16<br> - rs2 == rd != rs1<br> - rs2_w0_val == 2147483647<br>                                                    |[0x80000150]:SMMUL_U a6, t4, a6<br> [0x80000154]:sw a6, 12(t1)<br>     |
|   5|[0x80002220]<br>0xE6666666|- rs1 : x26<br> - rs2 : x28<br> - rd : x26<br> - rs1 == rd != rs2<br> - rs2_w0_val == -1073741825<br>                                                   |[0x80000168]:SMMUL_U s10, s10, t3<br> [0x8000016c]:sw s10, 16(t1)<br>  |
|   6|[0x80002224]<br>0x00000000|- rs1 : x15<br> - rs2 : x19<br> - rd : x22<br> - rs2_w0_val == -536870913<br> - rs1_w0_val == -3<br>                                                    |[0x8000017c]:SMMUL_U s6, a5, s3<br> [0x80000180]:sw s6, 20(t1)<br>     |
|   7|[0x80002228]<br>0x00000000|- rs1 : x0<br> - rs2 : x12<br> - rd : x7<br> - rs2_w0_val == -134217729<br> - rs1_w0_val == 0<br>                                                       |[0x80000194]:SMMUL_U t2, zero, a2<br> [0x80000198]:sw t2, 24(t1)<br>   |
|   8|[0x8000222c]<br>0x00004000|- rs1 : x20<br> - rs2 : x3<br> - rd : x11<br> - rs2_w0_val == -67108865<br> - rs1_w0_val == -1048577<br>                                                |[0x800001ac]:SMMUL_U a1, s4, gp<br> [0x800001b0]:sw a1, 28(t1)<br>     |
|   9|[0x80002230]<br>0xFF555555|- rs1 : x14<br> - rs2 : x10<br> - rd : x15<br> - rs2_w0_val == -33554433<br> - rs1_w0_val == 1431655765<br>                                             |[0x800001c4]:SMMUL_U a5, a4, a0<br> [0x800001c8]:sw a5, 32(t1)<br>     |
|  10|[0x80002234]<br>0xFFCCCCCD|- rs1 : x24<br> - rs2 : x30<br> - rd : x10<br> - rs2_w0_val == -16777217<br>                                                                            |[0x800001dc]:SMMUL_U a0, s8, t5<br> [0x800001e0]:sw a0, 36(t1)<br>     |
|  11|[0x80002238]<br>0x00000000|- rs1 : x22<br> - rs2 : x25<br> - rd : x3<br> - rs2_w0_val == -8388609<br>                                                                              |[0x800001f0]:SMMUL_U gp, s6, s9<br> [0x800001f4]:sw gp, 40(t1)<br>     |
|  12|[0x8000223c]<br>0xFFFE0000|- rs1 : x16<br> - rs2 : x8<br> - rd : x29<br> - rs2_w0_val == -4194305<br> - rs1_w0_val == 134217728<br>                                                |[0x80000204]:SMMUL_U t4, a6, fp<br> [0x80000208]:sw t4, 44(t1)<br>     |
|  13|[0x80002240]<br>0x00000000|- rs1 : x13<br> - rs2 : x1<br> - rd : x4<br> - rs2_w0_val == -2097153<br> - rs1_w0_val == 16<br>                                                        |[0x80000218]:SMMUL_U tp, a3, ra<br> [0x8000021c]:sw tp, 48(t1)<br>     |
|  14|[0x80002244]<br>0x00000000|- rs1 : x11<br> - rs2 : x29<br> - rd : x19<br> - rs2_w0_val == -1048577<br>                                                                             |[0x8000022c]:SMMUL_U s3, a1, t4<br> [0x80000230]:sw s3, 52(t1)<br>     |
|  15|[0x80002248]<br>0xFFFFFFFF|- rs1 : x18<br> - rs2 : x21<br> - rd : x25<br> - rs2_w0_val == -524289<br> - rs1_w0_val == 4096<br>                                                     |[0x80000240]:SMMUL_U s9, s2, s5<br> [0x80000244]:sw s9, 56(t1)<br>     |
|  16|[0x8000224c]<br>0xFFFFE000|- rs1 : x12<br> - rs2 : x13<br> - rd : x2<br> - rs2_w0_val == -262145<br>                                                                               |[0x8000025c]:SMMUL_U sp, a2, a3<br> [0x80000260]:sw sp, 0(t0)<br>      |
|  17|[0x80002250]<br>0x00000000|- rs1 : x9<br> - rs2 : x14<br> - rd : x18<br> - rs2_w0_val == -131073<br>                                                                               |[0x80000270]:SMMUL_U s2, s1, a4<br> [0x80000274]:sw s2, 4(t0)<br>      |
|  18|[0x80002254]<br>0x00000000|- rs1 : x19<br> - rs2 : x24<br> - rd : x31<br> - rs2_w0_val == -65537<br>                                                                               |[0x80000284]:SMMUL_U t6, s3, s8<br> [0x80000288]:sw t6, 8(t0)<br>      |
|  19|[0x80002258]<br>0x00001000|- rs1 : x10<br> - rs2 : x22<br> - rd : x30<br> - rs2_w0_val == -32769<br> - rs1_w0_val == -536870913<br>                                                |[0x8000029c]:SMMUL_U t5, a0, s6<br> [0x800002a0]:sw t5, 12(t0)<br>     |
|  20|[0x8000225c]<br>0x00000000|- rs1 : x17<br> - rs2 : x7<br> - rd : x12<br> - rs2_w0_val == -16385<br> - rs1_w0_val == -32769<br>                                                     |[0x800002b4]:SMMUL_U a2, a7, t2<br> [0x800002b8]:sw a2, 16(t0)<br>     |
|  21|[0x80002260]<br>0xFFFFF333|- rs1 : x25<br> - rs2 : x27<br> - rd : x21<br> - rs2_w0_val == -8193<br>                                                                                |[0x800002cc]:SMMUL_U s5, s9, s11<br> [0x800002d0]:sw s5, 20(t0)<br>    |
|  22|[0x80002264]<br>0x00000000|- rs1 : x3<br> - rs2 : x17<br> - rd : x28<br> - rs2_w0_val == -4097<br>                                                                                 |[0x800002e0]:SMMUL_U t3, gp, a7<br> [0x800002e4]:sw t3, 24(t0)<br>     |
|  23|[0x80002268]<br>0x00000000|- rs1 : x21<br> - rs2 : x31<br> - rd : x1<br> - rs2_w0_val == -2049<br>                                                                                 |[0x800002f4]:SMMUL_U ra, s5, t6<br> [0x800002f8]:sw ra, 28(t0)<br>     |
|  24|[0x8000226c]<br>0x00000000|- rs1 : x27<br> - rs2 : x20<br> - rd : x14<br> - rs2_w0_val == -1025<br>                                                                                |[0x80000304]:SMMUL_U a4, s11, s4<br> [0x80000308]:sw a4, 32(t0)<br>    |
|  25|[0x80002270]<br>0x00000000|- rs1 : x23<br> - rs2 : x11<br> - rd : x27<br> - rs2_w0_val == -513<br>                                                                                 |[0x80000314]:SMMUL_U s11, s7, a1<br> [0x80000318]:sw s11, 36(t0)<br>   |
|  26|[0x80002274]<br>0x00000000|- rs1 : x30<br> - rs2 : x6<br> - rd : x13<br> - rs2_w0_val == -257<br> - rs1_w0_val == 32768<br>                                                        |[0x80000324]:SMMUL_U a3, t5, t1<br> [0x80000328]:sw a3, 40(t0)<br>     |
|  27|[0x80002278]<br>0xFFFFFFE6|- rs1 : x7<br> - rs2 : x4<br> - rd : x20<br> - rs2_w0_val == -129<br>                                                                                   |[0x80000338]:SMMUL_U s4, t2, tp<br> [0x8000033c]:sw s4, 44(t0)<br>     |
|  28|[0x8000227c]<br>0x00000016|- rs1 : x6<br> - rs2 : x23<br> - rd : x8<br> - rs2_w0_val == -65<br>                                                                                    |[0x8000034c]:SMMUL_U fp, t1, s7<br> [0x80000350]:sw fp, 48(t0)<br>     |
|  29|[0x80002280]<br>0x00000000|- rs1 : x1<br> - rs2 : x9<br> - rd : x6<br> - rs2_w0_val == -33<br> - rs1_w0_val == 1<br>                                                               |[0x8000035c]:SMMUL_U t1, ra, s1<br> [0x80000360]:sw t1, 52(t0)<br>     |
|  30|[0x80002284]<br>0x00000000|- rs1 : x28<br> - rs2 : x18<br> - rd : x0<br> - rs2_w0_val == -17<br>                                                                                   |[0x80000370]:SMMUL_U zero, t3, s2<br> [0x80000374]:sw zero, 56(t0)<br> |
|  31|[0x80002288]<br>0xFFFFFFFC|- rs1 : x8<br> - rs2 : x15<br> - rd : x24<br> - rs2_w0_val == -9<br> - rs1_w0_val == 2147483647<br>                                                     |[0x80000384]:SMMUL_U s8, fp, a5<br> [0x80000388]:sw s8, 60(t0)<br>     |
|  32|[0x8000228c]<br>0x00000000|- rs1 : x4<br> - rs2 : x26<br> - rd : x17<br> - rs2_w0_val == -5<br> - rs1_w0_val == 32<br>                                                             |[0x8000039c]:SMMUL_U a7, tp, s10<br> [0x800003a0]:sw a7, 0(ra)<br>     |
|  33|[0x80002290]<br>0xFFFFFFFF|- rs2_w0_val == -3<br>                                                                                                                                  |[0x800003b0]:SMMUL_U t6, t5, t4<br> [0x800003b4]:sw t6, 4(ra)<br>      |
|  34|[0x80002294]<br>0x00000000|- rs2_w0_val == -2<br> - rs1_w0_val == -129<br>                                                                                                         |[0x800003c0]:SMMUL_U t6, t5, t4<br> [0x800003c4]:sw t6, 8(ra)<br>      |
|  35|[0x80002298]<br>0x01000001|- rs2_w0_val == -2147483648<br> - rs1_w0_val == -33554433<br>                                                                                           |[0x800003d4]:SMMUL_U t6, t5, t4<br> [0x800003d8]:sw t6, 12(ra)<br>     |
|  36|[0x8000229c]<br>0x00001000|- rs2_w0_val == 1073741824<br> - rs1_w0_val == 16384<br>                                                                                                |[0x800003e4]:SMMUL_U t6, t5, t4<br> [0x800003e8]:sw t6, 16(ra)<br>     |
|  37|[0x800022a0]<br>0x04000000|- rs2_w0_val == 536870912<br> - rs1_w0_val == 536870912<br>                                                                                             |[0x800003f4]:SMMUL_U t6, t5, t4<br> [0x800003f8]:sw t6, 20(ra)<br>     |
|  38|[0x800022a4]<br>0x03333333|- rs2_w0_val == 268435456<br>                                                                                                                           |[0x80000408]:SMMUL_U t6, t5, t4<br> [0x8000040c]:sw t6, 24(ra)<br>     |
|  39|[0x800022a8]<br>0x00008000|- rs2_w0_val == 134217728<br> - rs1_w0_val == 1048576<br>                                                                                               |[0x80000418]:SMMUL_U t6, t5, t4<br> [0x8000041c]:sw t6, 28(ra)<br>     |
|  40|[0x800022ac]<br>0xFFFFFFE0|- rs2_w0_val == 67108864<br> - rs1_w0_val == -2049<br>                                                                                                  |[0x8000042c]:SMMUL_U t6, t5, t4<br> [0x80000430]:sw t6, 32(ra)<br>     |
|  41|[0x800022b0]<br>0x00000000|- rs2_w0_val == 33554432<br> - rs1_w0_val == -9<br>                                                                                                     |[0x8000043c]:SMMUL_U t6, t5, t4<br> [0x80000440]:sw t6, 36(ra)<br>     |
|  42|[0x800022b4]<br>0xFFFFFFE0|- rs2_w0_val == 16777216<br> - rs1_w0_val == -8193<br>                                                                                                  |[0x80000450]:SMMUL_U t6, t5, t4<br> [0x80000454]:sw t6, 40(ra)<br>     |
|  43|[0x800022b8]<br>0x00000000|- rs2_w0_val == 8388608<br> - rs1_w0_val == -2<br>                                                                                                      |[0x80000460]:SMMUL_U t6, t5, t4<br> [0x80000464]:sw t6, 44(ra)<br>     |
|  44|[0x800022bc]<br>0xFFFFC000|- rs2_w0_val == 4194304<br> - rs1_w0_val == -16777217<br>                                                                                               |[0x80000474]:SMMUL_U t6, t5, t4<br> [0x80000478]:sw t6, 48(ra)<br>     |
|  45|[0x800022c0]<br>0x000CCCCD|- rs2_w0_val == 2097152<br>                                                                                                                             |[0x80000488]:SMMUL_U t6, t5, t4<br> [0x8000048c]:sw t6, 52(ra)<br>     |
|  46|[0x800022c4]<br>0x00000000|- rs2_w0_val == 1048576<br> - rs1_w0_val == 1024<br>                                                                                                    |[0x80000498]:SMMUL_U t6, t5, t4<br> [0x8000049c]:sw t6, 56(ra)<br>     |
|  47|[0x800022c8]<br>0xFFFF8000|- rs2_w0_val == 524288<br>                                                                                                                              |[0x800004ac]:SMMUL_U t6, t5, t4<br> [0x800004b0]:sw t6, 60(ra)<br>     |
|  48|[0x800022cc]<br>0x00000000|- rs1_w0_val == 8<br>                                                                                                                                   |[0x800004bc]:SMMUL_U t6, t5, t4<br> [0x800004c0]:sw t6, 64(ra)<br>     |
|  49|[0x800022d0]<br>0x00000000|- rs1_w0_val == 4<br>                                                                                                                                   |[0x800004d0]:SMMUL_U t6, t5, t4<br> [0x800004d4]:sw t6, 68(ra)<br>     |
|  50|[0x800022d4]<br>0x00000000|- rs1_w0_val == 2<br>                                                                                                                                   |[0x800004e4]:SMMUL_U t6, t5, t4<br> [0x800004e8]:sw t6, 72(ra)<br>     |
|  51|[0x800022d8]<br>0x00000000|- rs1_w0_val == -1<br>                                                                                                                                  |[0x800004f8]:SMMUL_U t6, t5, t4<br> [0x800004fc]:sw t6, 76(ra)<br>     |
|  52|[0x800022dc]<br>0xFFFFFFF8|- rs2_w0_val == 262144<br> - rs1_w0_val == -131073<br>                                                                                                  |[0x8000050c]:SMMUL_U t6, t5, t4<br> [0x80000510]:sw t6, 80(ra)<br>     |
|  53|[0x800022e0]<br>0x00006666|- rs2_w0_val == 131072<br>                                                                                                                              |[0x80000520]:SMMUL_U t6, t5, t4<br> [0x80000524]:sw t6, 84(ra)<br>     |
|  54|[0x800022e4]<br>0xFFFFFFF0|- rs2_w0_val == 65536<br>                                                                                                                               |[0x80000534]:SMMUL_U t6, t5, t4<br> [0x80000538]:sw t6, 88(ra)<br>     |
|  55|[0x800022e8]<br>0x00002AAB|- rs2_w0_val == 32768<br>                                                                                                                               |[0x80000548]:SMMUL_U t6, t5, t4<br> [0x8000054c]:sw t6, 92(ra)<br>     |
|  56|[0x800022ec]<br>0x00000800|- rs2_w0_val == 16384<br>                                                                                                                               |[0x80000558]:SMMUL_U t6, t5, t4<br> [0x8000055c]:sw t6, 96(ra)<br>     |
|  57|[0x800022f0]<br>0x00000000|- rs2_w0_val == 8192<br>                                                                                                                                |[0x80000568]:SMMUL_U t6, t5, t4<br> [0x8000056c]:sw t6, 100(ra)<br>    |
|  58|[0x800022f4]<br>0x00000080|- rs2_w0_val == 4096<br>                                                                                                                                |[0x80000578]:SMMUL_U t6, t5, t4<br> [0x8000057c]:sw t6, 104(ra)<br>    |
|  59|[0x800022f8]<br>0x00000200|- rs2_w0_val == 2048<br> - rs1_w0_val == 1073741824<br>                                                                                                 |[0x8000058c]:SMMUL_U t6, t5, t4<br> [0x80000590]:sw t6, 108(ra)<br>    |
|  60|[0x800022fc]<br>0xFFFFFEAB|- rs2_w0_val == 1024<br>                                                                                                                                |[0x800005a0]:SMMUL_U t6, t5, t4<br> [0x800005a4]:sw t6, 112(ra)<br>    |
|  61|[0x80002300]<br>0x00000000|- rs2_w0_val == 512<br> - rs1_w0_val == 262144<br>                                                                                                      |[0x800005b0]:SMMUL_U t6, t5, t4<br> [0x800005b4]:sw t6, 116(ra)<br>    |
|  62|[0x80002304]<br>0x00000020|- rs2_w0_val == 256<br>                                                                                                                                 |[0x800005c0]:SMMUL_U t6, t5, t4<br> [0x800005c4]:sw t6, 120(ra)<br>    |
|  63|[0x80002308]<br>0x00000000|- rs2_w0_val == 128<br>                                                                                                                                 |[0x800005d0]:SMMUL_U t6, t5, t4<br> [0x800005d4]:sw t6, 124(ra)<br>    |
|  64|[0x8000230c]<br>0x00000000|- rs2_w0_val == 64<br> - rs1_w0_val == -65537<br>                                                                                                       |[0x800005e4]:SMMUL_U t6, t5, t4<br> [0x800005e8]:sw t6, 128(ra)<br>    |
|  65|[0x80002310]<br>0x00000000|- rs2_w0_val == 32<br>                                                                                                                                  |[0x800005f4]:SMMUL_U t6, t5, t4<br> [0x800005f8]:sw t6, 132(ra)<br>    |
|  66|[0x80002314]<br>0x00000000|- rs2_w0_val == 16<br>                                                                                                                                  |[0x80000604]:SMMUL_U t6, t5, t4<br> [0x80000608]:sw t6, 136(ra)<br>    |
|  67|[0x80002318]<br>0x00000000|- rs2_w0_val == 8<br>                                                                                                                                   |[0x80000618]:SMMUL_U t6, t5, t4<br> [0x8000061c]:sw t6, 140(ra)<br>    |
|  68|[0x8000231c]<br>0x00000000|- rs2_w0_val == 4<br> - rs1_w0_val == -67108865<br>                                                                                                     |[0x8000062c]:SMMUL_U t6, t5, t4<br> [0x80000630]:sw t6, 144(ra)<br>    |
|  69|[0x80002320]<br>0x00000000|- rs2_w0_val == 2<br>                                                                                                                                   |[0x80000640]:SMMUL_U t6, t5, t4<br> [0x80000644]:sw t6, 148(ra)<br>    |
|  70|[0x80002324]<br>0x00000000|- rs2_w0_val == 1<br>                                                                                                                                   |[0x80000654]:SMMUL_U t6, t5, t4<br> [0x80000658]:sw t6, 152(ra)<br>    |
|  71|[0x8000232c]<br>0x00000000|- rs2_w0_val == -1<br> - rs1_w0_val == -257<br>                                                                                                         |[0x80000678]:SMMUL_U t6, t5, t4<br> [0x8000067c]:sw t6, 160(ra)<br>    |
|  72|[0x80002330]<br>0xFFFFFFFF|- rs1_w0_val == -1073741825<br>                                                                                                                         |[0x8000068c]:SMMUL_U t6, t5, t4<br> [0x80000690]:sw t6, 164(ra)<br>    |
|  73|[0x80002334]<br>0x00000002|- rs1_w0_val == -134217729<br>                                                                                                                          |[0x800006a0]:SMMUL_U t6, t5, t4<br> [0x800006a4]:sw t6, 168(ra)<br>    |
|  74|[0x80002338]<br>0x00000000|- rs1_w0_val == -8388609<br>                                                                                                                            |[0x800006b4]:SMMUL_U t6, t5, t4<br> [0x800006b8]:sw t6, 172(ra)<br>    |
|  75|[0x8000233c]<br>0x00000000|- rs1_w0_val == -4194305<br>                                                                                                                            |[0x800006c8]:SMMUL_U t6, t5, t4<br> [0x800006cc]:sw t6, 176(ra)<br>    |
|  76|[0x80002340]<br>0xFFFFF800|- rs1_w0_val == -2097153<br>                                                                                                                            |[0x800006dc]:SMMUL_U t6, t5, t4<br> [0x800006e0]:sw t6, 180(ra)<br>    |
|  77|[0x80002344]<br>0xFFFFFC00|- rs1_w0_val == -262145<br>                                                                                                                             |[0x800006f0]:SMMUL_U t6, t5, t4<br> [0x800006f4]:sw t6, 184(ra)<br>    |
|  78|[0x80002348]<br>0xFFFFFF00|- rs1_w0_val == -16385<br>                                                                                                                              |[0x80000704]:SMMUL_U t6, t5, t4<br> [0x80000708]:sw t6, 188(ra)<br>    |
|  79|[0x8000234c]<br>0xFFFFFF00|- rs1_w0_val == -4097<br>                                                                                                                               |[0x80000718]:SMMUL_U t6, t5, t4<br> [0x8000071c]:sw t6, 192(ra)<br>    |
|  80|[0x80002350]<br>0x00000000|- rs1_w0_val == -1025<br>                                                                                                                               |[0x8000072c]:SMMUL_U t6, t5, t4<br> [0x80000730]:sw t6, 196(ra)<br>    |
|  81|[0x80002354]<br>0x00000000|- rs1_w0_val == -513<br>                                                                                                                                |[0x80000740]:SMMUL_U t6, t5, t4<br> [0x80000744]:sw t6, 200(ra)<br>    |
|  82|[0x80002358]<br>0x00000000|- rs1_w0_val == -65<br>                                                                                                                                 |[0x80000750]:SMMUL_U t6, t5, t4<br> [0x80000754]:sw t6, 204(ra)<br>    |
|  83|[0x8000235c]<br>0x00000000|- rs1_w0_val == -33<br>                                                                                                                                 |[0x80000760]:SMMUL_U t6, t5, t4<br> [0x80000764]:sw t6, 208(ra)<br>    |
|  84|[0x80002360]<br>0x00000000|- rs1_w0_val == -17<br>                                                                                                                                 |[0x80000774]:SMMUL_U t6, t5, t4<br> [0x80000778]:sw t6, 212(ra)<br>    |
|  85|[0x80002364]<br>0x00000000|- rs1_w0_val == -5<br>                                                                                                                                  |[0x80000784]:SMMUL_U t6, t5, t4<br> [0x80000788]:sw t6, 216(ra)<br>    |
|  86|[0x80002368]<br>0x00400000|- rs1_w0_val == 268435456<br>                                                                                                                           |[0x80000794]:SMMUL_U t6, t5, t4<br> [0x80000798]:sw t6, 220(ra)<br>    |
|  87|[0x8000236c]<br>0x00000000|- rs1_w0_val == 67108864<br>                                                                                                                            |[0x800007a4]:SMMUL_U t6, t5, t4<br> [0x800007a8]:sw t6, 224(ra)<br>    |
|  88|[0x80002370]<br>0xFFFFC000|- rs1_w0_val == 33554432<br>                                                                                                                            |[0x800007b8]:SMMUL_U t6, t5, t4<br> [0x800007bc]:sw t6, 228(ra)<br>    |
|  89|[0x80002374]<br>0xFFFFFFFF|- rs1_w0_val == 16777216<br>                                                                                                                            |[0x800007c8]:SMMUL_U t6, t5, t4<br> [0x800007cc]:sw t6, 232(ra)<br>    |
|  90|[0x80002378]<br>0x0000005B|- rs1_w0_val == 8388608<br>                                                                                                                             |[0x800007dc]:SMMUL_U t6, t5, t4<br> [0x800007e0]:sw t6, 236(ra)<br>    |
|  91|[0x8000237c]<br>0x00000000|- rs1_w0_val == 4194304<br>                                                                                                                             |[0x800007ec]:SMMUL_U t6, t5, t4<br> [0x800007f0]:sw t6, 240(ra)<br>    |
|  92|[0x80002380]<br>0xFFFFFFC0|- rs1_w0_val == 2097152<br>                                                                                                                             |[0x80000800]:SMMUL_U t6, t5, t4<br> [0x80000804]:sw t6, 244(ra)<br>    |
|  93|[0x80002384]<br>0x00000000|- rs1_w0_val == 524288<br>                                                                                                                              |[0x80000810]:SMMUL_U t6, t5, t4<br> [0x80000814]:sw t6, 248(ra)<br>    |
|  94|[0x80002388]<br>0x00000200|- rs1_w0_val == 131072<br>                                                                                                                              |[0x80000820]:SMMUL_U t6, t5, t4<br> [0x80000824]:sw t6, 252(ra)<br>    |
|  95|[0x8000238c]<br>0xFFFFFFFF|- rs1_w0_val == 65536<br>                                                                                                                               |[0x80000834]:SMMUL_U t6, t5, t4<br> [0x80000838]:sw t6, 256(ra)<br>    |
|  96|[0x80002390]<br>0xFFFFFE00|- rs1_w0_val == 8192<br>                                                                                                                                |[0x80000848]:SMMUL_U t6, t5, t4<br> [0x8000084c]:sw t6, 260(ra)<br>    |
|  97|[0x80002394]<br>0x00000000|- rs1_w0_val == 2048<br>                                                                                                                                |[0x8000085c]:SMMUL_U t6, t5, t4<br> [0x80000860]:sw t6, 264(ra)<br>    |
|  98|[0x80002398]<br>0x00000000|- rs1_w0_val == 512<br>                                                                                                                                 |[0x8000086c]:SMMUL_U t6, t5, t4<br> [0x80000870]:sw t6, 268(ra)<br>    |
|  99|[0x8000239c]<br>0x00000000|- rs1_w0_val == 256<br>                                                                                                                                 |[0x8000087c]:SMMUL_U t6, t5, t4<br> [0x80000880]:sw t6, 272(ra)<br>    |
| 100|[0x800023a0]<br>0xFFFFFFD5|- rs1_w0_val == 128<br>                                                                                                                                 |[0x80000890]:SMMUL_U t6, t5, t4<br> [0x80000894]:sw t6, 276(ra)<br>    |
| 101|[0x800023a4]<br>0x00000000|- rs1_w0_val == 64<br>                                                                                                                                  |[0x800008a0]:SMMUL_U t6, t5, t4<br> [0x800008a4]:sw t6, 280(ra)<br>    |
| 102|[0x800023a8]<br>0x08000001|- rs1_w0_val == -2147483648<br>                                                                                                                         |[0x800008b4]:SMMUL_U t6, t5, t4<br> [0x800008b8]:sw t6, 284(ra)<br>    |
| 103|[0x800023ac]<br>0x0002AAAB|- rs1_w0_val == -524289<br>                                                                                                                             |[0x800008cc]:SMMUL_U t6, t5, t4<br> [0x800008d0]:sw t6, 288(ra)<br>    |
| 104|[0x800023b0]<br>0x00000001|- rs2_w0_val == 1431655765<br>                                                                                                                          |[0x800008e0]:SMMUL_U t6, t5, t4<br> [0x800008e4]:sw t6, 292(ra)<br>    |
