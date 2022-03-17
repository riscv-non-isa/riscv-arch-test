
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001800')]      |
| SIG_REGION                | [('0x80003210', '0x80003870', '204 dwords')]      |
| COV_LABELS                | sra.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/sra.u-01.S    |
| Total Number of coverpoints| 380     |
| Total Coverpoints Hit     | 374      |
| Total Signature Updates   | 203      |
| STAT1                     | 198      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008c0]:SRA_U t6, t5, t4
      [0x800008c4]:sd t6, 144(ra)
 -- Signature Address: 0x80003388 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : sra.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == -131073
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000dd0]:SRA_U t6, t5, t4
      [0x80000dd4]:sd t6, 528(ra)
 -- Signature Address: 0x80003508 Data: 0x0008000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : sra.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val == 2251799813685248
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001788]:SRA_U t6, t5, t4
      [0x8000178c]:sd t6, 1352(ra)
 -- Signature Address: 0x80003840 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : sra.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val == -131073
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800017bc]:SRA_U t6, t5, t4
      [0x800017c0]:sd t6, 1368(ra)
 -- Signature Address: 0x80003850 Data: 0x0000000000000001
 -- Redundant Coverpoints hit by the op
      - opcode : sra.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == -288230376151711745
      - rs1_val == 4611686018427387904
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800017dc]:SRA_U t6, t5, t4
      [0x800017e0]:sd t6, 1376(ra)
 -- Signature Address: 0x80003858 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : sra.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == -4503599627370497
      - rs1_val == -2147483649
      - rs1_val < 0 and rs2_val < 0






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

|s.no|            signature             |                                                                                                        coverpoints                                                                                                         |                                code                                 |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000000|- opcode : sra.u<br> - rs1 : x1<br> - rs2 : x1<br> - rd : x24<br> - rs1 == rs2 != rd<br> - rs2_val == -131073<br> - rs1_val == -131073<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br>                       |[0x800003a8]:SRA_U s8, ra, ra<br> [0x800003ac]:sd s8, 0(s1)<br>      |
|   2|[0x80003218]<br>0x0000000000000000|- rs1 : x18<br> - rs2 : x18<br> - rd : x18<br> - rs1 == rs2 == rd<br>                                                                                                                                                       |[0x800003b8]:SRA_U s2, s2, s2<br> [0x800003bc]:sd s2, 8(s1)<br>      |
|   3|[0x80003220]<br>0x0000000000000000|- rs1 : x4<br> - rs2 : x27<br> - rd : x14<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val != rs2_val<br> - rs2_val == -4611686018427387905<br> - rs1_val == 4398046511104<br> - rs1_val > 0 and rs2_val < 0<br> |[0x800003d4]:SRA_U a4, tp, s11<br> [0x800003d8]:sd a4, 16(s1)<br>    |
|   4|[0x80003228]<br>0x0000000000000000|- rs1 : x28<br> - rs2 : x14<br> - rd : x28<br> - rs1 == rd != rs2<br> - rs2_val == -2305843009213693953<br> - rs1_val == -17179869185<br>                                                                                   |[0x800003f4]:SRA_U t3, t3, a4<br> [0x800003f8]:sd t3, 24(s1)<br>     |
|   5|[0x80003230]<br>0x0000000000000001|- rs1 : x23<br> - rs2 : x22<br> - rd : x22<br> - rs2 == rd != rs1<br> - rs2_val == -1152921504606846977<br> - rs1_val == 6148914691236517205<br>                                                                            |[0x80000428]:SRA_U s6, s7, s6<br> [0x8000042c]:sd s6, 32(s1)<br>     |
|   6|[0x80003238]<br>0x0000000000000000|- rs1 : x8<br> - rs2 : x23<br> - rd : x2<br> - rs2_val == -576460752303423489<br> - rs1_val == 2251799813685248<br>                                                                                                         |[0x80000444]:SRA_U sp, fp, s7<br> [0x80000448]:sd sp, 40(s1)<br>     |
|   7|[0x80003240]<br>0x4000000000000000|- rs1 : x19<br> - rs2 : x0<br> - rd : x5<br> - rs1_val == 4611686018427387904<br> - rs2_val == 0<br>                                                                                                                        |[0x80000458]:SRA_U t0, s3, zero<br> [0x8000045c]:sd t0, 48(s1)<br>   |
|   8|[0x80003248]<br>0x0000000000000000|- rs1 : x27<br> - rs2 : x2<br> - rd : x6<br> - rs2_val == -144115188075855873<br>                                                                                                                                           |[0x80000478]:SRA_U t1, s11, sp<br> [0x8000047c]:sd t1, 56(s1)<br>    |
|   9|[0x80003250]<br>0x0000000000000000|- rs1 : x25<br> - rs2 : x7<br> - rd : x21<br> - rs2_val == -72057594037927937<br> - rs1_val == -549755813889<br>                                                                                                            |[0x80000498]:SRA_U s5, s9, t2<br> [0x8000049c]:sd s5, 64(s1)<br>     |
|  10|[0x80003258]<br>0x0000000000000000|- rs1 : x16<br> - rs2 : x31<br> - rd : x19<br> - rs2_val == -36028797018963969<br> - rs1_val == 16<br>                                                                                                                      |[0x800004b0]:SRA_U s3, a6, t6<br> [0x800004b4]:sd s3, 72(s1)<br>     |
|  11|[0x80003260]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x17<br> - rs2 : x6<br> - rd : x20<br> - rs2_val == -18014398509481985<br> - rs1_val == -4611686018427387905<br>                                                                                                     |[0x800004d0]:SRA_U s4, a7, t1<br> [0x800004d4]:sd s4, 80(s1)<br>     |
|  12|[0x80003268]<br>0x0000000000000000|- rs1 : x10<br> - rs2 : x13<br> - rd : x15<br> - rs2_val == -9007199254740993<br> - rs1_val == 4<br>                                                                                                                        |[0x800004e8]:SRA_U a5, a0, a3<br> [0x800004ec]:sd a5, 88(s1)<br>     |
|  13|[0x80003270]<br>0x0000000000000000|- rs1 : x3<br> - rs2 : x24<br> - rd : x0<br> - rs2_val == -4503599627370497<br> - rs1_val == -2147483649<br>                                                                                                                |[0x80000508]:SRA_U zero, gp, s8<br> [0x8000050c]:sd zero, 96(s1)<br> |
|  14|[0x80003278]<br>0x0000000000000000|- rs1 : x5<br> - rs2 : x8<br> - rd : x17<br> - rs2_val == -2251799813685249<br>                                                                                                                                             |[0x80000528]:SRA_U a7, t0, fp<br> [0x8000052c]:sd a7, 104(s1)<br>    |
|  15|[0x80003280]<br>0x0000000000000000|- rs1 : x13<br> - rs2 : x26<br> - rd : x30<br> - rs2_val == -1125899906842625<br>                                                                                                                                           |[0x80000544]:SRA_U t5, a3, s10<br> [0x80000548]:sd t5, 112(s1)<br>   |
|  16|[0x80003288]<br>0x0000000000000000|- rs1 : x14<br> - rs2 : x25<br> - rd : x16<br> - rs2_val == -562949953421313<br>                                                                                                                                            |[0x8000056c]:SRA_U a6, a4, s9<br> [0x80000570]:sd a6, 0(s2)<br>      |
|  17|[0x80003290]<br>0x0000000000000000|- rs1 : x6<br> - rs2 : x11<br> - rd : x27<br> - rs2_val == -281474976710657<br> - rs1_val == 8796093022208<br>                                                                                                              |[0x80000588]:SRA_U s11, t1, a1<br> [0x8000058c]:sd s11, 8(s2)<br>    |
|  18|[0x80003298]<br>0x0000000000000000|- rs1 : x29<br> - rs2 : x9<br> - rd : x7<br> - rs2_val == -140737488355329<br> - rs1_val == -33<br>                                                                                                                         |[0x800005a0]:SRA_U t2, t4, s1<br> [0x800005a4]:sd t2, 16(s2)<br>     |
|  19|[0x800032a0]<br>0x0000000000000000|- rs1 : x24<br> - rs2 : x5<br> - rd : x8<br> - rs2_val == -70368744177665<br> - rs1_val == -576460752303423489<br>                                                                                                          |[0x800005c0]:SRA_U fp, s8, t0<br> [0x800005c4]:sd fp, 24(s2)<br>     |
|  20|[0x800032a8]<br>0x0000000000000000|- rs1 : x20<br> - rs2 : x30<br> - rd : x9<br> - rs2_val == -35184372088833<br> - rs1_val == 4194304<br>                                                                                                                     |[0x800005d8]:SRA_U s1, s4, t5<br> [0x800005dc]:sd s1, 32(s2)<br>     |
|  21|[0x800032b0]<br>0x0000000000000000|- rs1 : x12<br> - rs2 : x21<br> - rd : x11<br> - rs2_val == -17592186044417<br> - rs1_val == -2305843009213693953<br>                                                                                                       |[0x800005f8]:SRA_U a1, a2, s5<br> [0x800005fc]:sd a1, 40(s2)<br>     |
|  22|[0x800032b8]<br>0x0000000000000000|- rs1 : x15<br> - rs2 : x4<br> - rd : x31<br> - rs2_val == -8796093022209<br> - rs1_val == -72057594037927937<br>                                                                                                           |[0x80000618]:SRA_U t6, a5, tp<br> [0x8000061c]:sd t6, 48(s2)<br>     |
|  23|[0x800032c0]<br>0x0000000000000000|- rs1 : x11<br> - rs2 : x15<br> - rd : x12<br> - rs2_val == -4398046511105<br>                                                                                                                                              |[0x8000063c]:SRA_U a2, a1, a5<br> [0x80000640]:sd a2, 56(s2)<br>     |
|  24|[0x800032c8]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : x19<br> - rd : x4<br> - rs2_val == -2199023255553<br> - rs1_val == 0<br>                                                                                                                             |[0x80000654]:SRA_U tp, s1, s3<br> [0x80000658]:sd tp, 64(s2)<br>     |
|  25|[0x800032d0]<br>0x0000000000000000|- rs1 : x2<br> - rs2 : x12<br> - rd : x25<br> - rs2_val == -1099511627777<br> - rs1_val == 140737488355328<br>                                                                                                              |[0x80000670]:SRA_U s9, sp, a2<br> [0x80000674]:sd s9, 72(s2)<br>     |
|  26|[0x800032d8]<br>0x0000000000000000|- rs1 : x26<br> - rs2 : x16<br> - rd : x3<br> - rs2_val == -549755813889<br> - rs1_val == -32769<br>                                                                                                                        |[0x8000068c]:SRA_U gp, s10, a6<br> [0x80000690]:sd gp, 80(s2)<br>    |
|  27|[0x800032e0]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x29<br> - rd : x13<br> - rs2_val == -274877906945<br>                                                                                                                                                |[0x800006a4]:SRA_U a3, zero, t4<br> [0x800006a8]:sd a3, 88(s2)<br>   |
|  28|[0x800032e8]<br>0x0000000000000000|- rs1 : x30<br> - rs2 : x20<br> - rd : x1<br> - rs2_val == -137438953473<br>                                                                                                                                                |[0x800006bc]:SRA_U ra, t5, s4<br> [0x800006c0]:sd ra, 96(s2)<br>     |
|  29|[0x800032f0]<br>0x0000000000000000|- rs1 : x31<br> - rs2 : x17<br> - rd : x10<br> - rs2_val == -68719476737<br>                                                                                                                                                |[0x800006f0]:SRA_U a0, t6, a7<br> [0x800006f4]:sd a0, 104(s2)<br>    |
|  30|[0x800032f8]<br>0x0000000000000000|- rs1 : x22<br> - rs2 : x28<br> - rd : x26<br> - rs2_val == -34359738369<br>                                                                                                                                                |[0x80000710]:SRA_U s10, s6, t3<br> [0x80000714]:sd s10, 0(ra)<br>    |
|  31|[0x80003300]<br>0x0000000000000000|- rs1 : x7<br> - rs2 : x10<br> - rd : x29<br> - rs2_val == -17179869185<br> - rs1_val == 65536<br>                                                                                                                          |[0x80000728]:SRA_U t4, t2, a0<br> [0x8000072c]:sd t4, 8(ra)<br>      |
|  32|[0x80003308]<br>0x0000000000000000|- rs1 : x21<br> - rs2 : x3<br> - rd : x23<br> - rs2_val == -8589934593<br> - rs1_val == 4096<br>                                                                                                                            |[0x80000740]:SRA_U s7, s5, gp<br> [0x80000744]:sd s7, 16(ra)<br>     |
|  33|[0x80003310]<br>0x0000000000000000|- rs2_val == -4294967297<br> - rs1_val == 67108864<br>                                                                                                                                                                      |[0x80000758]:SRA_U t6, t5, t4<br> [0x8000075c]:sd t6, 24(ra)<br>     |
|  34|[0x80003318]<br>0x0000000000000000|- rs2_val == -2147483649<br> - rs1_val == -1099511627777<br>                                                                                                                                                                |[0x80000778]:SRA_U t6, t5, t4<br> [0x8000077c]:sd t6, 32(ra)<br>     |
|  35|[0x80003320]<br>0x0000000000000000|- rs2_val == -1073741825<br>                                                                                                                                                                                                |[0x8000078c]:SRA_U t6, t5, t4<br> [0x80000790]:sd t6, 40(ra)<br>     |
|  36|[0x80003328]<br>0x0000000000000000|- rs2_val == -536870913<br>                                                                                                                                                                                                 |[0x800007a8]:SRA_U t6, t5, t4<br> [0x800007ac]:sd t6, 48(ra)<br>     |
|  37|[0x80003330]<br>0x0000000000000000|- rs2_val == -268435457<br> - rs1_val == 1<br>                                                                                                                                                                              |[0x800007bc]:SRA_U t6, t5, t4<br> [0x800007c0]:sd t6, 56(ra)<br>     |
|  38|[0x80003338]<br>0x0000000000000000|- rs2_val == -134217729<br>                                                                                                                                                                                                 |[0x800007d0]:SRA_U t6, t5, t4<br> [0x800007d4]:sd t6, 64(ra)<br>     |
|  39|[0x80003340]<br>0x0000000000000000|- rs2_val == -67108865<br> - rs1_val == -1025<br>                                                                                                                                                                           |[0x800007e4]:SRA_U t6, t5, t4<br> [0x800007e8]:sd t6, 72(ra)<br>     |
|  40|[0x80003348]<br>0x0000000000000000|- rs2_val == -33554433<br>                                                                                                                                                                                                  |[0x800007f8]:SRA_U t6, t5, t4<br> [0x800007fc]:sd t6, 80(ra)<br>     |
|  41|[0x80003350]<br>0x0000000000000000|- rs2_val == -16777217<br> - rs1_val == 128<br>                                                                                                                                                                             |[0x8000080c]:SRA_U t6, t5, t4<br> [0x80000810]:sd t6, 88(ra)<br>     |
|  42|[0x80003358]<br>0x0000000000000000|- rs2_val == -8388609<br>                                                                                                                                                                                                   |[0x80000820]:SRA_U t6, t5, t4<br> [0x80000824]:sd t6, 96(ra)<br>     |
|  43|[0x80003360]<br>0x0000000000000000|- rs2_val == -4194305<br> - rs1_val == 131072<br>                                                                                                                                                                           |[0x80000834]:SRA_U t6, t5, t4<br> [0x80000838]:sd t6, 104(ra)<br>    |
|  44|[0x80003368]<br>0x0000000000000000|- rs2_val == -2097153<br>                                                                                                                                                                                                   |[0x80000854]:SRA_U t6, t5, t4<br> [0x80000858]:sd t6, 112(ra)<br>    |
|  45|[0x80003370]<br>0x0000000000000001|- rs2_val == -1048577<br>                                                                                                                                                                                                   |[0x80000884]:SRA_U t6, t5, t4<br> [0x80000888]:sd t6, 120(ra)<br>    |
|  46|[0x80003378]<br>0x0000000000000000|- rs2_val == -524289<br> - rs1_val == 262144<br>                                                                                                                                                                            |[0x80000898]:SRA_U t6, t5, t4<br> [0x8000089c]:sd t6, 128(ra)<br>    |
|  47|[0x80003380]<br>0x0000000000000000|- rs2_val == -262145<br> - rs1_val == 1073741824<br>                                                                                                                                                                        |[0x800008ac]:SRA_U t6, t5, t4<br> [0x800008b0]:sd t6, 136(ra)<br>    |
|  48|[0x80003390]<br>0x0000000000000000|- rs2_val == -65537<br>                                                                                                                                                                                                     |[0x800008d4]:SRA_U t6, t5, t4<br> [0x800008d8]:sd t6, 152(ra)<br>    |
|  49|[0x80003398]<br>0x0000000000000000|- rs2_val == -32769<br>                                                                                                                                                                                                     |[0x800008e8]:SRA_U t6, t5, t4<br> [0x800008ec]:sd t6, 160(ra)<br>    |
|  50|[0x800033a0]<br>0x0000000000000000|- rs2_val == -16385<br> - rs1_val == 32<br>                                                                                                                                                                                 |[0x800008fc]:SRA_U t6, t5, t4<br> [0x80000900]:sd t6, 168(ra)<br>    |
|  51|[0x800033a8]<br>0x0000000000000000|- rs2_val == -8193<br> - rs1_val == -5<br>                                                                                                                                                                                  |[0x80000910]:SRA_U t6, t5, t4<br> [0x80000914]:sd t6, 176(ra)<br>    |
|  52|[0x800033b0]<br>0x0000000000000000|- rs2_val == -4097<br> - rs1_val == -536870913<br>                                                                                                                                                                          |[0x80000928]:SRA_U t6, t5, t4<br> [0x8000092c]:sd t6, 184(ra)<br>    |
|  53|[0x800033b8]<br>0x0000000000000001|- rs2_val == -2049<br>                                                                                                                                                                                                      |[0x80000958]:SRA_U t6, t5, t4<br> [0x8000095c]:sd t6, 192(ra)<br>    |
|  54|[0x800033c0]<br>0x0000000000000001|- rs2_val == -1025<br>                                                                                                                                                                                                      |[0x80000984]:SRA_U t6, t5, t4<br> [0x80000988]:sd t6, 200(ra)<br>    |
|  55|[0x800033c8]<br>0x0000000000000000|- rs2_val == -513<br> - rs1_val == -35184372088833<br>                                                                                                                                                                      |[0x8000099c]:SRA_U t6, t5, t4<br> [0x800009a0]:sd t6, 208(ra)<br>    |
|  56|[0x800033d0]<br>0x0000000000000000|- rs2_val == -257<br> - rs1_val == 274877906944<br>                                                                                                                                                                         |[0x800009b0]:SRA_U t6, t5, t4<br> [0x800009b4]:sd t6, 216(ra)<br>    |
|  57|[0x800033d8]<br>0x0000000000000000|- rs2_val == -129<br> - rs1_val == 1048576<br>                                                                                                                                                                              |[0x800009c0]:SRA_U t6, t5, t4<br> [0x800009c4]:sd t6, 224(ra)<br>    |
|  58|[0x800033e0]<br>0x0000000000000000|- rs2_val == -65<br> - rs1_val == -134217729<br>                                                                                                                                                                            |[0x800009d4]:SRA_U t6, t5, t4<br> [0x800009d8]:sd t6, 232(ra)<br>    |
|  59|[0x800033e8]<br>0xFFFFFFFFF0000000|- rs2_val == -33<br>                                                                                                                                                                                                        |[0x800009ec]:SRA_U t6, t5, t4<br> [0x800009f0]:sd t6, 240(ra)<br>    |
|  60|[0x800033f0]<br>0x0000000000000000|- rs2_val == -17<br> - rs1_val == -129<br>                                                                                                                                                                                  |[0x800009fc]:SRA_U t6, t5, t4<br> [0x80000a00]:sd t6, 248(ra)<br>    |
|  61|[0x800033f8]<br>0x0000000000000000|- rs2_val == -9<br>                                                                                                                                                                                                         |[0x80000a0c]:SRA_U t6, t5, t4<br> [0x80000a10]:sd t6, 256(ra)<br>    |
|  62|[0x80003400]<br>0x0000000000000000|- rs2_val == -5<br>                                                                                                                                                                                                         |[0x80000a1c]:SRA_U t6, t5, t4<br> [0x80000a20]:sd t6, 264(ra)<br>    |
|  63|[0x80003408]<br>0x0000000000000000|- rs2_val == -3<br> - rs1_val == -65537<br>                                                                                                                                                                                 |[0x80000a30]:SRA_U t6, t5, t4<br> [0x80000a34]:sd t6, 272(ra)<br>    |
|  64|[0x80003410]<br>0x0000000000000000|- rs2_val == -2<br> - rs1_val == 576460752303423488<br>                                                                                                                                                                     |[0x80000a44]:SRA_U t6, t5, t4<br> [0x80000a48]:sd t6, 280(ra)<br>    |
|  65|[0x80003418]<br>0x0000000000000001|- rs1_val == 9223372036854775807<br> - rs1_val == (2**(xlen-1)-1)<br>                                                                                                                                                       |[0x80000a5c]:SRA_U t6, t5, t4<br> [0x80000a60]:sd t6, 288(ra)<br>    |
|  66|[0x80003420]<br>0xFFFFFFFFFFFFFFF8|- rs1_val == -1152921504606846977<br>                                                                                                                                                                                       |[0x80000a74]:SRA_U t6, t5, t4<br> [0x80000a78]:sd t6, 296(ra)<br>    |
|  67|[0x80003428]<br>0x0000000000000000|- rs1_val == -288230376151711745<br>                                                                                                                                                                                        |[0x80000a94]:SRA_U t6, t5, t4<br> [0x80000a98]:sd t6, 304(ra)<br>    |
|  68|[0x80003430]<br>0xFDFFFFFFFFFFFFFF|- rs1_val == -144115188075855873<br> - rs2_val == 17592186044416<br> - rs1_val < 0 and rs2_val > 0<br>                                                                                                                      |[0x80000ab0]:SRA_U t6, t5, t4<br> [0x80000ab4]:sd t6, 312(ra)<br>    |
|  69|[0x80003438]<br>0x0000000000000000|- rs1_val == -36028797018963969<br>                                                                                                                                                                                         |[0x80000ad0]:SRA_U t6, t5, t4<br> [0x80000ad4]:sd t6, 320(ra)<br>    |
|  70|[0x80003440]<br>0xFFFC000000000000|- rs1_val == -18014398509481985<br> - rs2_val == 4<br>                                                                                                                                                                      |[0x80000ae8]:SRA_U t6, t5, t4<br> [0x80000aec]:sd t6, 328(ra)<br>    |
|  71|[0x80003448]<br>0xFFFE000000000000|- rs1_val == -9007199254740993<br>                                                                                                                                                                                          |[0x80000b00]:SRA_U t6, t5, t4<br> [0x80000b04]:sd t6, 336(ra)<br>    |
|  72|[0x80003450]<br>0x0000000000000000|- rs1_val == -4503599627370497<br>                                                                                                                                                                                          |[0x80000b1c]:SRA_U t6, t5, t4<br> [0x80000b20]:sd t6, 344(ra)<br>    |
|  73|[0x80003458]<br>0x0000000000000000|- rs1_val == -2251799813685249<br>                                                                                                                                                                                          |[0x80000b34]:SRA_U t6, t5, t4<br> [0x80000b38]:sd t6, 352(ra)<br>    |
|  74|[0x80003460]<br>0x0000000000000000|- rs1_val == -1125899906842625<br>                                                                                                                                                                                          |[0x80000b54]:SRA_U t6, t5, t4<br> [0x80000b58]:sd t6, 360(ra)<br>    |
|  75|[0x80003468]<br>0x0000000000000000|- rs1_val == -562949953421313<br>                                                                                                                                                                                           |[0x80000b70]:SRA_U t6, t5, t4<br> [0x80000b74]:sd t6, 368(ra)<br>    |
|  76|[0x80003470]<br>0x0000000000000000|- rs1_val == -281474976710657<br>                                                                                                                                                                                           |[0x80000b8c]:SRA_U t6, t5, t4<br> [0x80000b90]:sd t6, 376(ra)<br>    |
|  77|[0x80003478]<br>0xFFFFFFC000000000|- rs1_val == -140737488355329<br>                                                                                                                                                                                           |[0x80000ba4]:SRA_U t6, t5, t4<br> [0x80000ba8]:sd t6, 384(ra)<br>    |
|  78|[0x80003480]<br>0xFFFFBFFFFFFFFFFF|- rs1_val == -70368744177665<br> - rs2_val == 536870912<br>                                                                                                                                                                 |[0x80000bbc]:SRA_U t6, t5, t4<br> [0x80000bc0]:sd t6, 392(ra)<br>    |
|  79|[0x80003488]<br>0x0000000000000000|- rs1_val == -17592186044417<br>                                                                                                                                                                                            |[0x80000bdc]:SRA_U t6, t5, t4<br> [0x80000be0]:sd t6, 400(ra)<br>    |
|  80|[0x80003490]<br>0x0000000000000000|- rs1_val == -8796093022209<br>                                                                                                                                                                                             |[0x80000bfc]:SRA_U t6, t5, t4<br> [0x80000c00]:sd t6, 408(ra)<br>    |
|  81|[0x80003498]<br>0xFFFFFBFFFFFFFFFF|- rs1_val == -4398046511105<br> - rs2_val == -9223372036854775808<br> - rs2_val == (-2**(xlen-1))<br>                                                                                                                       |[0x80000c18]:SRA_U t6, t5, t4<br> [0x80000c1c]:sd t6, 416(ra)<br>    |
|  82|[0x800034a0]<br>0x0000000000000000|- rs1_val == -2199023255553<br>                                                                                                                                                                                             |[0x80000c30]:SRA_U t6, t5, t4<br> [0x80000c34]:sd t6, 424(ra)<br>    |
|  83|[0x800034a8]<br>0xFFFFFFF000000000|- rs1_val == -274877906945<br> - rs2_val == 2<br>                                                                                                                                                                           |[0x80000c48]:SRA_U t6, t5, t4<br> [0x80000c4c]:sd t6, 432(ra)<br>    |
|  84|[0x800034b0]<br>0x0000000000000000|- rs1_val == -137438953473<br>                                                                                                                                                                                              |[0x80000c68]:SRA_U t6, t5, t4<br> [0x80000c6c]:sd t6, 440(ra)<br>    |
|  85|[0x800034b8]<br>0xFFFFFFFFFFFFFFE0|- rs1_val == -68719476737<br>                                                                                                                                                                                               |[0x80000c80]:SRA_U t6, t5, t4<br> [0x80000c84]:sd t6, 448(ra)<br>    |
|  86|[0x800034c0]<br>0xFFFFFFF7FFFFFFFF|- rs1_val == -34359738369<br> - rs2_val == 2048<br>                                                                                                                                                                         |[0x80000c9c]:SRA_U t6, t5, t4<br> [0x80000ca0]:sd t6, 456(ra)<br>    |
|  87|[0x800034c8]<br>0xFFFFFFFDFFFFFFFF|- rs1_val == -8589934593<br> - rs2_val == 134217728<br>                                                                                                                                                                     |[0x80000cb4]:SRA_U t6, t5, t4<br> [0x80000cb8]:sd t6, 464(ra)<br>    |
|  88|[0x800034d0]<br>0xFFFFFFFFFC000000|- rs1_val == -4294967297<br>                                                                                                                                                                                                |[0x80000ccc]:SRA_U t6, t5, t4<br> [0x80000cd0]:sd t6, 472(ra)<br>    |
|  89|[0x800034d8]<br>0x0000000000000000|- rs1_val == -1073741825<br>                                                                                                                                                                                                |[0x80000ce4]:SRA_U t6, t5, t4<br> [0x80000ce8]:sd t6, 480(ra)<br>    |
|  90|[0x800034e0]<br>0x0000000000000000|- rs2_val == -6148914691236517206<br>                                                                                                                                                                                       |[0x80000d10]:SRA_U t6, t5, t4<br> [0x80000d14]:sd t6, 488(ra)<br>    |
|  91|[0x800034e8]<br>0xFFFFFFFFFFFFFA58|- rs2_val == 6148914691236517205<br>                                                                                                                                                                                        |[0x80000d48]:SRA_U t6, t5, t4<br> [0x80000d4c]:sd t6, 496(ra)<br>    |
|  92|[0x800034f0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -6148914691236517206<br>                                                                                                                                                                                       |[0x80000d78]:SRA_U t6, t5, t4<br> [0x80000d7c]:sd t6, 504(ra)<br>    |
|  93|[0x800034f8]<br>0xFFFFFFFFFFF00000|- rs1_val == -9223372036854775808<br> - rs1_val == (-2**(xlen-1))<br>                                                                                                                                                       |[0x80000da8]:SRA_U t6, t5, t4<br> [0x80000dac]:sd t6, 512(ra)<br>    |
|  94|[0x80003500]<br>0x0000040000000000|- rs2_val == 2097152<br> - rs1_val > 0 and rs2_val > 0<br>                                                                                                                                                                  |[0x80000dbc]:SRA_U t6, t5, t4<br> [0x80000dc0]:sd t6, 520(ra)<br>    |
|  95|[0x80003510]<br>0xFFFFFFFFEFFFFFFF|- rs1_val == -268435457<br>                                                                                                                                                                                                 |[0x80000de4]:SRA_U t6, t5, t4<br> [0x80000de8]:sd t6, 536(ra)<br>    |
|  96|[0x80003518]<br>0x0000000000000000|- rs1_val == -67108865<br>                                                                                                                                                                                                  |[0x80000df8]:SRA_U t6, t5, t4<br> [0x80000dfc]:sd t6, 544(ra)<br>    |
|  97|[0x80003520]<br>0xFFFFFFFFFDFFFFFF|- rs1_val == -33554433<br>                                                                                                                                                                                                  |[0x80000e0c]:SRA_U t6, t5, t4<br> [0x80000e10]:sd t6, 552(ra)<br>    |
|  98|[0x80003528]<br>0xFFFFFFFFFEFFFFFF|- rs1_val == -16777217<br> - rs2_val == 128<br>                                                                                                                                                                             |[0x80000e20]:SRA_U t6, t5, t4<br> [0x80000e24]:sd t6, 560(ra)<br>    |
|  99|[0x80003530]<br>0x0000000000000000|- rs1_val == -8388609<br>                                                                                                                                                                                                   |[0x80000e38]:SRA_U t6, t5, t4<br> [0x80000e3c]:sd t6, 568(ra)<br>    |
| 100|[0x80003538]<br>0x0000000000000000|- rs1_val == -4194305<br>                                                                                                                                                                                                   |[0x80000e4c]:SRA_U t6, t5, t4<br> [0x80000e50]:sd t6, 576(ra)<br>    |
| 101|[0x80003540]<br>0xFFFFFFFFFFDFFFFF|- rs1_val == -2097153<br> - rs2_val == 144115188075855872<br>                                                                                                                                                               |[0x80000e64]:SRA_U t6, t5, t4<br> [0x80000e68]:sd t6, 584(ra)<br>    |
| 102|[0x80003548]<br>0xFFFFFFFFFFEFFFFF|- rs1_val == -1048577<br> - rs2_val == 549755813888<br>                                                                                                                                                                     |[0x80000e7c]:SRA_U t6, t5, t4<br> [0x80000e80]:sd t6, 592(ra)<br>    |
| 103|[0x80003550]<br>0xFFFFFFFFFFF7FFFF|- rs1_val == -524289<br> - rs2_val == 1099511627776<br>                                                                                                                                                                     |[0x80000e94]:SRA_U t6, t5, t4<br> [0x80000e98]:sd t6, 600(ra)<br>    |
| 104|[0x80003558]<br>0xFFFFFFFFFFFBFFFF|- rs1_val == -262145<br> - rs2_val == 137438953472<br>                                                                                                                                                                      |[0x80000eac]:SRA_U t6, t5, t4<br> [0x80000eb0]:sd t6, 608(ra)<br>    |
| 105|[0x80003560]<br>0xFFFFFFFFFFFFFE00|- rs1_val == -16385<br>                                                                                                                                                                                                     |[0x80000ec0]:SRA_U t6, t5, t4<br> [0x80000ec4]:sd t6, 616(ra)<br>    |
| 106|[0x80003568]<br>0xFFFFFFFFFFFFDFFF|- rs1_val == -8193<br>                                                                                                                                                                                                      |[0x80000ed4]:SRA_U t6, t5, t4<br> [0x80000ed8]:sd t6, 624(ra)<br>    |
| 107|[0x80003570]<br>0xFFFFFFFFFFFFEFFF|- rs1_val == -4097<br>                                                                                                                                                                                                      |[0x80000ee8]:SRA_U t6, t5, t4<br> [0x80000eec]:sd t6, 632(ra)<br>    |
| 108|[0x80003578]<br>0x0000000000000000|- rs2_val == -288230376151711745<br> - rs1_val == -2049<br>                                                                                                                                                                 |[0x80000f04]:SRA_U t6, t5, t4<br> [0x80000f08]:sd t6, 640(ra)<br>    |
| 109|[0x80003580]<br>0x0000000000000000|- rs1_val == -513<br>                                                                                                                                                                                                       |[0x80000f30]:SRA_U t6, t5, t4<br> [0x80000f34]:sd t6, 648(ra)<br>    |
| 110|[0x80003588]<br>0x0000000000000000|- rs1_val == -257<br>                                                                                                                                                                                                       |[0x80000f48]:SRA_U t6, t5, t4<br> [0x80000f4c]:sd t6, 656(ra)<br>    |
| 111|[0x80003590]<br>0x0000000000000000|- rs1_val == -65<br>                                                                                                                                                                                                        |[0x80000f58]:SRA_U t6, t5, t4<br> [0x80000f5c]:sd t6, 664(ra)<br>    |
| 112|[0x80003598]<br>0x0000000000000000|- rs1_val == -17<br>                                                                                                                                                                                                        |[0x80000f68]:SRA_U t6, t5, t4<br> [0x80000f6c]:sd t6, 672(ra)<br>    |
| 113|[0x800035a0]<br>0x0000000000000000|- rs1_val == -9<br>                                                                                                                                                                                                         |[0x80000f7c]:SRA_U t6, t5, t4<br> [0x80000f80]:sd t6, 680(ra)<br>    |
| 114|[0x800035a8]<br>0x0000000000000000|- rs1_val == -3<br>                                                                                                                                                                                                         |[0x80000fa8]:SRA_U t6, t5, t4<br> [0x80000fac]:sd t6, 688(ra)<br>    |
| 115|[0x800035b0]<br>0x0000000000000000|- rs1_val == -2<br>                                                                                                                                                                                                         |[0x80000fbc]:SRA_U t6, t5, t4<br> [0x80000fc0]:sd t6, 696(ra)<br>    |
| 116|[0x800035b8]<br>0x0000001000000000|- rs2_val == 4611686018427387904<br> - rs1_val == 68719476736<br>                                                                                                                                                           |[0x80000fd4]:SRA_U t6, t5, t4<br> [0x80000fd8]:sd t6, 704(ra)<br>    |
| 117|[0x800035c0]<br>0xFFFFFFFF7FFFFFFF|- rs2_val == 2305843009213693952<br>                                                                                                                                                                                        |[0x80000ff0]:SRA_U t6, t5, t4<br> [0x80000ff4]:sd t6, 712(ra)<br>    |
| 118|[0x800035c8]<br>0xFFFFFFFFFFFEFFFF|- rs2_val == 1152921504606846976<br>                                                                                                                                                                                        |[0x80001008]:SRA_U t6, t5, t4<br> [0x8000100c]:sd t6, 720(ra)<br>    |
| 119|[0x800035d0]<br>0xAAAAAAAAAAAAAAAA|- rs2_val == 576460752303423488<br>                                                                                                                                                                                         |[0x80001038]:SRA_U t6, t5, t4<br> [0x8000103c]:sd t6, 728(ra)<br>    |
| 120|[0x800035d8]<br>0xEFFFFFFFFFFFFFFF|- rs2_val == 288230376151711744<br>                                                                                                                                                                                         |[0x80001054]:SRA_U t6, t5, t4<br> [0x80001058]:sd t6, 736(ra)<br>    |
| 121|[0x800035e0]<br>0x0000000020000000|- rs2_val == 72057594037927936<br> - rs1_val == 536870912<br>                                                                                                                                                               |[0x80001068]:SRA_U t6, t5, t4<br> [0x8000106c]:sd t6, 744(ra)<br>    |
| 122|[0x800035e8]<br>0xFFFFFFFFFFBFFFFF|- rs2_val == 36028797018963968<br>                                                                                                                                                                                          |[0x80001080]:SRA_U t6, t5, t4<br> [0x80001084]:sd t6, 752(ra)<br>    |
| 123|[0x800035f0]<br>0xFFFFFFFFFFFFFFFB|- rs2_val == 18014398509481984<br>                                                                                                                                                                                          |[0x80001094]:SRA_U t6, t5, t4<br> [0x80001098]:sd t6, 760(ra)<br>    |
| 124|[0x800035f8]<br>0x0002000000000000|- rs2_val == 9007199254740992<br> - rs1_val == 562949953421312<br>                                                                                                                                                          |[0x800010ac]:SRA_U t6, t5, t4<br> [0x800010b0]:sd t6, 768(ra)<br>    |
| 125|[0x80003600]<br>0xFFFFEFFFFFFFFFFF|- rs2_val == 4503599627370496<br>                                                                                                                                                                                           |[0x800010c8]:SRA_U t6, t5, t4<br> [0x800010cc]:sd t6, 776(ra)<br>    |
| 126|[0x80003608]<br>0x0080000000000000|- rs2_val == 2251799813685248<br> - rs1_val == 36028797018963968<br>                                                                                                                                                        |[0x800010e0]:SRA_U t6, t5, t4<br> [0x800010e4]:sd t6, 784(ra)<br>    |
| 127|[0x80003610]<br>0x0000000000080000|- rs2_val == 1125899906842624<br> - rs1_val == 524288<br>                                                                                                                                                                   |[0x800010f4]:SRA_U t6, t5, t4<br> [0x800010f8]:sd t6, 792(ra)<br>    |
| 128|[0x80003618]<br>0x0000000000002000|- rs2_val == 562949953421312<br> - rs1_val == 8192<br>                                                                                                                                                                      |[0x80001108]:SRA_U t6, t5, t4<br> [0x8000110c]:sd t6, 800(ra)<br>    |
| 129|[0x80003620]<br>0xFFFFFFFF4AFB0CCD|- rs2_val == 281474976710656<br>                                                                                                                                                                                            |[0x80001128]:SRA_U t6, t5, t4<br> [0x8000112c]:sd t6, 808(ra)<br>    |
| 130|[0x80003628]<br>0xFFFFFFFDFFFFFFFF|- rs2_val == 140737488355328<br>                                                                                                                                                                                            |[0x80001144]:SRA_U t6, t5, t4<br> [0x80001148]:sd t6, 816(ra)<br>    |
| 131|[0x80003630]<br>0x0000000000000008|- rs2_val == 70368744177664<br> - rs1_val == 8<br>                                                                                                                                                                          |[0x80001158]:SRA_U t6, t5, t4<br> [0x8000115c]:sd t6, 824(ra)<br>    |
| 132|[0x80003638]<br>0xFFFFFFFF4AFB0CCE|- rs2_val == 35184372088832<br>                                                                                                                                                                                             |[0x80001178]:SRA_U t6, t5, t4<br> [0x8000117c]:sd t6, 832(ra)<br>    |
| 133|[0x80003640]<br>0x0000000200000000|- rs2_val == 8796093022208<br> - rs1_val == 8589934592<br>                                                                                                                                                                  |[0x80001190]:SRA_U t6, t5, t4<br> [0x80001194]:sd t6, 840(ra)<br>    |
| 134|[0x80003648]<br>0xFFFFFFFFFFFFF7FF|- rs2_val == 4398046511104<br>                                                                                                                                                                                              |[0x800011a8]:SRA_U t6, t5, t4<br> [0x800011ac]:sd t6, 848(ra)<br>    |
| 135|[0x80003650]<br>0xFFFFFFF7FFFFFFFF|- rs2_val == 2199023255552<br>                                                                                                                                                                                              |[0x800011c4]:SRA_U t6, t5, t4<br> [0x800011c8]:sd t6, 856(ra)<br>    |
| 136|[0x80003658]<br>0xDFFFFFFFFFFFFFFF|- rs2_val == 274877906944<br>                                                                                                                                                                                               |[0x800011e0]:SRA_U t6, t5, t4<br> [0x800011e4]:sd t6, 864(ra)<br>    |
| 137|[0x80003660]<br>0x3333333333333334|- rs2_val == 68719476736<br>                                                                                                                                                                                                |[0x80001210]:SRA_U t6, t5, t4<br> [0x80001214]:sd t6, 872(ra)<br>    |
| 138|[0x80003668]<br>0x0000000000001000|- rs2_val == 34359738368<br>                                                                                                                                                                                                |[0x80001224]:SRA_U t6, t5, t4<br> [0x80001228]:sd t6, 880(ra)<br>    |
| 139|[0x80003670]<br>0x0000000000400000|- rs2_val == 17179869184<br>                                                                                                                                                                                                |[0x80001238]:SRA_U t6, t5, t4<br> [0x8000123c]:sd t6, 888(ra)<br>    |
| 140|[0x80003678]<br>0xFFFFFFFFFFFFDFFF|- rs2_val == 8589934592<br>                                                                                                                                                                                                 |[0x80001250]:SRA_U t6, t5, t4<br> [0x80001254]:sd t6, 896(ra)<br>    |
| 141|[0x80003680]<br>0xFFFFFFFF4AFB0CCE|- rs2_val == 4294967296<br>                                                                                                                                                                                                 |[0x80001270]:SRA_U t6, t5, t4<br> [0x80001274]:sd t6, 904(ra)<br>    |
| 142|[0x80003688]<br>0x0000000002000000|- rs2_val == 2147483648<br> - rs1_val == 33554432<br>                                                                                                                                                                       |[0x80001284]:SRA_U t6, t5, t4<br> [0x80001288]:sd t6, 912(ra)<br>    |
| 143|[0x80003690]<br>0x0000000000000080|- rs2_val == 1073741824<br>                                                                                                                                                                                                 |[0x80001294]:SRA_U t6, t5, t4<br> [0x80001298]:sd t6, 920(ra)<br>    |
| 144|[0x80003698]<br>0xFDFFFFFFFFFFFFFF|- rs2_val == 268435456<br>                                                                                                                                                                                                  |[0x800012ac]:SRA_U t6, t5, t4<br> [0x800012b0]:sd t6, 928(ra)<br>    |
| 145|[0x800036a0]<br>0xFFFFFFFFFFFEFFFF|- rs2_val == 67108864<br>                                                                                                                                                                                                   |[0x800012c0]:SRA_U t6, t5, t4<br> [0x800012c4]:sd t6, 936(ra)<br>    |
| 146|[0x800036a8]<br>0x0000000000000000|- rs2_val == 33554432<br>                                                                                                                                                                                                   |[0x800012d0]:SRA_U t6, t5, t4<br> [0x800012d4]:sd t6, 944(ra)<br>    |
| 147|[0x800036b0]<br>0x8000000000000000|- rs2_val == 16777216<br>                                                                                                                                                                                                   |[0x800012e4]:SRA_U t6, t5, t4<br> [0x800012e8]:sd t6, 952(ra)<br>    |
| 148|[0x800036b8]<br>0x0040000000000000|- rs2_val == 8388608<br> - rs1_val == 18014398509481984<br>                                                                                                                                                                 |[0x800012f8]:SRA_U t6, t5, t4<br> [0x800012fc]:sd t6, 960(ra)<br>    |
| 149|[0x800036c0]<br>0xFFFFFFFFFFFFFFFD|- rs2_val == 4194304<br>                                                                                                                                                                                                    |[0x80001308]:SRA_U t6, t5, t4<br> [0x8000130c]:sd t6, 968(ra)<br>    |
| 150|[0x800036c8]<br>0xFFFFFFFFFFFFFFFB|- rs2_val == 1048576<br>                                                                                                                                                                                                    |[0x80001318]:SRA_U t6, t5, t4<br> [0x8000131c]:sd t6, 976(ra)<br>    |
| 151|[0x800036d0]<br>0xFFFFFFFFF7FFFFFF|- rs2_val == 524288<br>                                                                                                                                                                                                     |[0x8000132c]:SRA_U t6, t5, t4<br> [0x80001330]:sd t6, 984(ra)<br>    |
| 152|[0x800036d8]<br>0x0000000000000010|- rs2_val == 262144<br>                                                                                                                                                                                                     |[0x8000133c]:SRA_U t6, t5, t4<br> [0x80001340]:sd t6, 992(ra)<br>    |
| 153|[0x800036e0]<br>0xFFFDFFFFFFFFFFFF|- rs2_val == 131072<br>                                                                                                                                                                                                     |[0x80001354]:SRA_U t6, t5, t4<br> [0x80001358]:sd t6, 1000(ra)<br>   |
| 154|[0x800036e8]<br>0xFFFFFFFF7FFFFFFF|- rs2_val == 65536<br>                                                                                                                                                                                                      |[0x8000136c]:SRA_U t6, t5, t4<br> [0x80001370]:sd t6, 1008(ra)<br>   |
| 155|[0x800036f0]<br>0x6666666666666665|- rs2_val == 32768<br>                                                                                                                                                                                                      |[0x80001398]:SRA_U t6, t5, t4<br> [0x8000139c]:sd t6, 1016(ra)<br>   |
| 156|[0x800036f8]<br>0xFBFFFFFFFFFFFFFF|- rs2_val == 16384<br>                                                                                                                                                                                                      |[0x800013b0]:SRA_U t6, t5, t4<br> [0x800013b4]:sd t6, 1024(ra)<br>   |
| 157|[0x80003700]<br>0xFFFFEFFFFFFFFFFF|- rs2_val == 8192<br>                                                                                                                                                                                                       |[0x800013c8]:SRA_U t6, t5, t4<br> [0x800013cc]:sd t6, 1032(ra)<br>   |
| 158|[0x80003708]<br>0x0000000000000010|- rs2_val == 4096<br>                                                                                                                                                                                                       |[0x800013d8]:SRA_U t6, t5, t4<br> [0x800013dc]:sd t6, 1040(ra)<br>   |
| 159|[0x80003710]<br>0x0400000000000000|- rs2_val == 1024<br> - rs1_val == 288230376151711744<br>                                                                                                                                                                   |[0x800013ec]:SRA_U t6, t5, t4<br> [0x800013f0]:sd t6, 1048(ra)<br>   |
| 160|[0x80003718]<br>0xFFFFFFFF4AFB0CCE|- rs2_val == 512<br>                                                                                                                                                                                                        |[0x80001408]:SRA_U t6, t5, t4<br> [0x8000140c]:sd t6, 1056(ra)<br>   |
| 161|[0x80003720]<br>0xFFFFFFFFFBFFFFFF|- rs2_val == 256<br>                                                                                                                                                                                                        |[0x8000141c]:SRA_U t6, t5, t4<br> [0x80001420]:sd t6, 1064(ra)<br>   |
| 162|[0x80003728]<br>0xFFFFFFFFFFFF7FFF|- rs2_val == 64<br>                                                                                                                                                                                                         |[0x80001430]:SRA_U t6, t5, t4<br> [0x80001434]:sd t6, 1072(ra)<br>   |
| 163|[0x80003730]<br>0x0000000000000000|- rs2_val == 32<br>                                                                                                                                                                                                         |[0x80001444]:SRA_U t6, t5, t4<br> [0x80001448]:sd t6, 1080(ra)<br>   |
| 164|[0x80003738]<br>0x0000000001000000|- rs2_val == 16<br> - rs1_val == 1099511627776<br>                                                                                                                                                                          |[0x80001458]:SRA_U t6, t5, t4<br> [0x8000145c]:sd t6, 1088(ra)<br>   |
| 165|[0x80003740]<br>0x0000000000001000|- rs2_val == 8<br>                                                                                                                                                                                                          |[0x80001468]:SRA_U t6, t5, t4<br> [0x8000146c]:sd t6, 1096(ra)<br>   |
| 166|[0x80003748]<br>0xFFFFFFF000000000|- rs2_val == 1<br>                                                                                                                                                                                                          |[0x80001480]:SRA_U t6, t5, t4<br> [0x80001484]:sd t6, 1104(ra)<br>   |
| 167|[0x80003750]<br>0x2000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                                                                                        |[0x80001498]:SRA_U t6, t5, t4<br> [0x8000149c]:sd t6, 1112(ra)<br>   |
| 168|[0x80003758]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                                                                                        |[0x800014b4]:SRA_U t6, t5, t4<br> [0x800014b8]:sd t6, 1120(ra)<br>   |
| 169|[0x80003760]<br>0x0004000000000000|- rs1_val == 144115188075855872<br>                                                                                                                                                                                         |[0x800014c8]:SRA_U t6, t5, t4<br> [0x800014cc]:sd t6, 1128(ra)<br>   |
| 170|[0x80003768]<br>0x0000000000000010|- rs1_val == 72057594037927936<br>                                                                                                                                                                                          |[0x800014f8]:SRA_U t6, t5, t4<br> [0x800014fc]:sd t6, 1136(ra)<br>   |
| 171|[0x80003770]<br>0x0000000000000040|- rs1_val == 9007199254740992<br>                                                                                                                                                                                           |[0x8000150c]:SRA_U t6, t5, t4<br> [0x80001510]:sd t6, 1144(ra)<br>   |
| 172|[0x80003778]<br>0x0000004000000000|- rs1_val == 4503599627370496<br>                                                                                                                                                                                           |[0x8000152c]:SRA_U t6, t5, t4<br> [0x80001530]:sd t6, 1152(ra)<br>   |
| 173|[0x80003780]<br>0x0000000000000001|- rs1_val == 1125899906842624<br>                                                                                                                                                                                           |[0x8000154c]:SRA_U t6, t5, t4<br> [0x80001550]:sd t6, 1160(ra)<br>   |
| 174|[0x80003788]<br>0x0001000000000000|- rs1_val == 281474976710656<br>                                                                                                                                                                                            |[0x80001560]:SRA_U t6, t5, t4<br> [0x80001564]:sd t6, 1168(ra)<br>   |
| 175|[0x80003790]<br>0x0000000001000000|- rs1_val == 35184372088832<br>                                                                                                                                                                                             |[0x80001590]:SRA_U t6, t5, t4<br> [0x80001594]:sd t6, 1176(ra)<br>   |
| 176|[0x80003798]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                                                                                                             |[0x800015a4]:SRA_U t6, t5, t4<br> [0x800015a8]:sd t6, 1184(ra)<br>   |
| 177|[0x800037a0]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                                                                                                              |[0x800015c0]:SRA_U t6, t5, t4<br> [0x800015c4]:sd t6, 1192(ra)<br>   |
| 178|[0x800037a8]<br>0x0000008000000000|- rs1_val == 549755813888<br>                                                                                                                                                                                               |[0x800015d8]:SRA_U t6, t5, t4<br> [0x800015dc]:sd t6, 1200(ra)<br>   |
| 179|[0x800037b0]<br>0x0000000000000000|- rs1_val == 137438953472<br>                                                                                                                                                                                               |[0x800015ec]:SRA_U t6, t5, t4<br> [0x800015f0]:sd t6, 1208(ra)<br>   |
| 180|[0x800037b8]<br>0x0000000000000000|- rs1_val == 34359738368<br>                                                                                                                                                                                                |[0x80001604]:SRA_U t6, t5, t4<br> [0x80001608]:sd t6, 1216(ra)<br>   |
| 181|[0x800037c0]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                                                                                                                                |[0x80001620]:SRA_U t6, t5, t4<br> [0x80001624]:sd t6, 1224(ra)<br>   |
| 182|[0x800037c8]<br>0x0000000100000000|- rs1_val == 4294967296<br>                                                                                                                                                                                                 |[0x80001634]:SRA_U t6, t5, t4<br> [0x80001638]:sd t6, 1232(ra)<br>   |
| 183|[0x800037d0]<br>0x0000000000000000|- rs1_val == 2147483648<br>                                                                                                                                                                                                 |[0x80001648]:SRA_U t6, t5, t4<br> [0x8000164c]:sd t6, 1240(ra)<br>   |
| 184|[0x800037d8]<br>0x0000000000400000|- rs1_val == 268435456<br>                                                                                                                                                                                                  |[0x80001658]:SRA_U t6, t5, t4<br> [0x8000165c]:sd t6, 1248(ra)<br>   |
| 185|[0x800037e0]<br>0x0000000000000000|- rs1_val == 134217728<br>                                                                                                                                                                                                  |[0x8000166c]:SRA_U t6, t5, t4<br> [0x80001670]:sd t6, 1256(ra)<br>   |
| 186|[0x800037e8]<br>0x0000000000000000|- rs1_val == 16777216<br>                                                                                                                                                                                                   |[0x80001680]:SRA_U t6, t5, t4<br> [0x80001684]:sd t6, 1264(ra)<br>   |
| 187|[0x800037f0]<br>0x0000000000000000|- rs1_val == 8388608<br>                                                                                                                                                                                                    |[0x80001698]:SRA_U t6, t5, t4<br> [0x8000169c]:sd t6, 1272(ra)<br>   |
| 188|[0x800037f8]<br>0x0000000000000100|- rs1_val == 2097152<br>                                                                                                                                                                                                    |[0x800016b4]:SRA_U t6, t5, t4<br> [0x800016b8]:sd t6, 1280(ra)<br>   |
| 189|[0x80003800]<br>0x0000000000000000|- rs1_val == 32768<br>                                                                                                                                                                                                      |[0x800016e0]:SRA_U t6, t5, t4<br> [0x800016e4]:sd t6, 1288(ra)<br>   |
| 190|[0x80003808]<br>0x0000000000000000|- rs1_val == 16384<br>                                                                                                                                                                                                      |[0x800016f0]:SRA_U t6, t5, t4<br> [0x800016f4]:sd t6, 1296(ra)<br>   |
| 191|[0x80003810]<br>0x0000000000000000|- rs1_val == 2048<br>                                                                                                                                                                                                       |[0x80001710]:SRA_U t6, t5, t4<br> [0x80001714]:sd t6, 1304(ra)<br>   |
| 192|[0x80003818]<br>0x0000000000000400|- rs1_val == 1024<br>                                                                                                                                                                                                       |[0x80001724]:SRA_U t6, t5, t4<br> [0x80001728]:sd t6, 1312(ra)<br>   |
| 193|[0x80003820]<br>0x0000000000000100|- rs1_val == 256<br>                                                                                                                                                                                                        |[0x80001734]:SRA_U t6, t5, t4<br> [0x80001738]:sd t6, 1320(ra)<br>   |
| 194|[0x80003828]<br>0x0000000000000040|- rs1_val == 64<br>                                                                                                                                                                                                         |[0x80001748]:SRA_U t6, t5, t4<br> [0x8000174c]:sd t6, 1328(ra)<br>   |
| 195|[0x80003830]<br>0x0000000000000000|- rs1_val == 2<br>                                                                                                                                                                                                          |[0x80001760]:SRA_U t6, t5, t4<br> [0x80001764]:sd t6, 1336(ra)<br>   |
| 196|[0x80003838]<br>0x0000000000000200|- rs1_val == 512<br>                                                                                                                                                                                                        |[0x80001774]:SRA_U t6, t5, t4<br> [0x80001778]:sd t6, 1344(ra)<br>   |
| 197|[0x80003848]<br>0x0000000000000000|- rs2_val == 9223372036854775807<br> - rs2_val == (2**(xlen-1)-1)<br>                                                                                                                                                       |[0x800017a0]:SRA_U t6, t5, t4<br> [0x800017a4]:sd t6, 1360(ra)<br>   |
| 198|[0x80003860]<br>0x0000000000000000|- rs1_val == 70368744177664<br>                                                                                                                                                                                             |[0x800017f8]:SRA_U t6, t5, t4<br> [0x800017fc]:sd t6, 1384(ra)<br>   |
