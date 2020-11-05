
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000c10')]      |
| SIG_REGION                | [('0x80003204', '0x80003640', '135 dwords')]      |
| COV_LABELS                | srai      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srai-01.S/srai-01.S    |
| Total Number of coverpoints| 222     |
| Total Coverpoints Hit     | 222      |
| Total Signature Updates   | 134      |
| STAT1                     | 133      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bf8]:srai a1, a0, 42
      [0x80000bfc]:sd a1, 872(ra)
 -- Signature Address: 0x80003630 Data: 0x0000000000000004
 -- Redundant Coverpoints hit by the op
      - opcode : srai
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == 17592186044416
      - imm_val == 42






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

|s.no|            signature             |                                                                        coverpoints                                                                         |                                code                                 |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFFFFFFFFFFFFD|- opcode : srai<br> - rs1 : x19<br> - rd : x19<br> - rs1 == rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == -1025<br>              |[0x8000039c]:srai s3, s3, 9<br> [0x800003a0]:sd s3, 0(a3)<br>        |
|   2|[0x80003218]<br>0x0000000000000000|- rs1 : x21<br> - rd : x23<br> - rs1 != rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == 2<br> - imm_val == 4<br>                   |[0x800003a8]:srai s7, s5, 4<br> [0x800003ac]:sd s7, 8(a3)<br>        |
|   3|[0x80003220]<br>0xFFEFFFFFFFFFFFFF|- rs1 : x12<br> - rd : x28<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -4503599627370497<br>                                                        |[0x800003bc]:srai t3, a2, 0<br> [0x800003c0]:sd t3, 16(a3)<br>       |
|   4|[0x80003228]<br>0x2000000000000000|- rs1 : x23<br> - rd : x31<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 2305843009213693952<br>                                                      |[0x800003cc]:srai t6, s7, 0<br> [0x800003d0]:sd t6, 24(a3)<br>       |
|   5|[0x80003230]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x14<br> - rd : x4<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -549755813889<br>                                                      |[0x800003e0]:srai tp, a4, 63<br> [0x800003e4]:sd tp, 32(a3)<br>      |
|   6|[0x80003238]<br>0x0000000000000000|- rs1 : x11<br> - rd : x17<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 524288<br>                                                            |[0x800003ec]:srai a7, a1, 63<br> [0x800003f0]:sd a7, 40(a3)<br>      |
|   7|[0x80003240]<br>0x0000000000000000|- rs1 : x26<br> - rd : x3<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val == 16<br> - imm_val == 16<br>                           |[0x800003f8]:srai gp, s10, 16<br> [0x800003fc]:sd gp, 48(a3)<br>     |
|   8|[0x80003248]<br>0xFFF0000000000000|- rs1 : x9<br> - rd : x2<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -9223372036854775808<br>                      |[0x80000408]:srai sp, s1, 11<br> [0x8000040c]:sd sp, 56(a3)<br>      |
|   9|[0x80003250]<br>0x0000000000000000|- rs1 : x17<br> - rd : x9<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br>                                                                        |[0x80000414]:srai s1, a7, 11<br> [0x80000418]:sd s1, 64(a3)<br>      |
|  10|[0x80003258]<br>0x0000000000000003|- rs1 : x10<br> - rd : x6<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 9223372036854775807<br> - imm_val == 61<br> |[0x80000428]:srai t1, a0, 61<br> [0x8000042c]:sd t1, 72(a3)<br>      |
|  11|[0x80003260]<br>0x0000000000000000|- rs1 : x3<br> - rd : x5<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br>                                                      |[0x80000434]:srai t0, gp, 6<br> [0x80000438]:sd t0, 80(a3)<br>       |
|  12|[0x80003268]<br>0x0004000000000000|- rs1 : x22<br> - rd : x26<br> - rs1_val == 2251799813685248<br> - imm_val == 1<br>                                                                         |[0x80000444]:srai s10, s6, 1<br> [0x80000448]:sd s10, 88(a3)<br>     |
|  13|[0x80003270]<br>0x0040000000000000|- rs1 : x24<br> - rd : x10<br> - rs1_val == 72057594037927936<br> - imm_val == 2<br>                                                                        |[0x80000454]:srai a0, s8, 2<br> [0x80000458]:sd a0, 96(a3)<br>       |
|  14|[0x80003278]<br>0xFFFDFFFFFFFFFFFF|- rs1 : x5<br> - rd : x16<br> - rs1_val == -144115188075855873<br> - imm_val == 8<br>                                                                       |[0x80000468]:srai a6, t0, 8<br> [0x8000046c]:sd a6, 104(a3)<br>      |
|  15|[0x80003280]<br>0x0000000000000000|- rs1 : x20<br> - rd : x29<br> - rs1_val == 512<br> - imm_val == 32<br>                                                                                     |[0x80000474]:srai t4, s4, 32<br> [0x80000478]:sd t4, 112(a3)<br>     |
|  16|[0x80003288]<br>0x0000000000000000|- rs1 : x4<br> - rd : x14<br> - imm_val == 62<br>                                                                                                           |[0x80000484]:srai a4, tp, 62<br> [0x80000488]:sd a4, 120(a3)<br>     |
|  17|[0x80003290]<br>0x0000000000000002|- rs1 : x28<br> - rd : x27<br> - rs1_val == 1152921504606846976<br> - imm_val == 59<br>                                                                     |[0x80000494]:srai s11, t3, 59<br> [0x80000498]:sd s11, 128(a3)<br>   |
|  18|[0x80003298]<br>0x0000000000000000|- rs1 : x7<br> - rd : x1<br> - rs1_val == 4398046511104<br> - imm_val == 55<br>                                                                             |[0x800004a4]:srai ra, t2, 55<br> [0x800004a8]:sd ra, 136(a3)<br>     |
|  19|[0x800032a0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x1<br> - rd : x24<br> - rs1_val == -2049<br> - imm_val == 47<br>                                                                                    |[0x800004b4]:srai s8, ra, 47<br> [0x800004b8]:sd s8, 144(a3)<br>     |
|  20|[0x800032a8]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x29<br> - rd : x8<br> - rs1_val == -4097<br> - imm_val == 31<br>                                                                                    |[0x800004c4]:srai fp, t4, 31<br> [0x800004c8]:sd fp, 152(a3)<br>     |
|  21|[0x800032b0]<br>0x0000000000000000|- rs1 : x6<br> - rd : x20<br> - rs1_val == 4096<br> - imm_val == 21<br>                                                                                     |[0x800004d0]:srai s4, t1, 21<br> [0x800004d4]:sd s4, 160(a3)<br>     |
|  22|[0x800032b8]<br>0x0000000000000000|- rs1 : x25<br> - rd : x0<br> - rs1_val == 17592186044416<br> - imm_val == 42<br>                                                                           |[0x800004e0]:srai zero, s9, 42<br> [0x800004e4]:sd zero, 168(a3)<br> |
|  23|[0x800032c0]<br>0x0000000000000000|- rs1 : x18<br> - rd : x25<br> - rs1_val == 4<br>                                                                                                           |[0x800004ec]:srai s9, s2, 8<br> [0x800004f0]:sd s9, 176(a3)<br>      |
|  24|[0x800032c8]<br>0x0000000000000000|- rs1 : x16<br> - rd : x15<br> - rs1_val == 8<br>                                                                                                           |[0x80000500]:srai a5, a6, 31<br> [0x80000504]:sd a5, 0(ra)<br>       |
|  25|[0x800032d0]<br>0x0000000000000000|- rs1 : x27<br> - rd : x11<br> - rs1_val == 32<br>                                                                                                          |[0x8000050c]:srai a1, s11, 55<br> [0x80000510]:sd a1, 8(ra)<br>      |
|  26|[0x800032d8]<br>0x0000000000000000|- rs1 : x30<br> - rd : x21<br> - rs1_val == 64<br>                                                                                                          |[0x80000518]:srai s5, t5, 16<br> [0x8000051c]:sd s5, 16(ra)<br>      |
|  27|[0x800032e0]<br>0x0000000000000010|- rs1 : x13<br> - rd : x7<br> - rs1_val == 128<br>                                                                                                          |[0x80000524]:srai t2, a3, 3<br> [0x80000528]:sd t2, 24(ra)<br>       |
|  28|[0x800032e8]<br>0x0000000000000002|- rs1 : x31<br> - rd : x12<br> - rs1_val == 256<br>                                                                                                         |[0x80000530]:srai a2, t6, 7<br> [0x80000534]:sd a2, 32(ra)<br>       |
|  29|[0x800032f0]<br>0x0000000000000000|- rs1 : x15<br> - rd : x30<br> - rs1_val == 1024<br>                                                                                                        |[0x8000053c]:srai t5, a5, 13<br> [0x80000540]:sd t5, 40(ra)<br>      |
|  30|[0x800032f8]<br>0x0000000000000008|- rs1 : x8<br> - rd : x22<br> - rs1_val == 2048<br>                                                                                                         |[0x8000054c]:srai s6, fp, 8<br> [0x80000550]:sd s6, 48(ra)<br>       |
|  31|[0x80003300]<br>0x0000000000000400|- rs1 : x2<br> - rd : x18<br> - rs1_val == 8192<br>                                                                                                         |[0x80000558]:srai s2, sp, 3<br> [0x8000055c]:sd s2, 56(ra)<br>       |
|  32|[0x80003308]<br>0x0000000000000000|- rs1 : x0<br> - rd : x13<br>                                                                                                                               |[0x80000568]:srai a3, zero, 3<br> [0x8000056c]:sd a3, 64(ra)<br>     |
|  33|[0x80003310]<br>0x0000000000000001|- rs1_val == 32768<br>                                                                                                                                      |[0x80000574]:srai a1, a0, 15<br> [0x80000578]:sd a1, 72(ra)<br>      |
|  34|[0x80003318]<br>0x0000000000000000|- rs1_val == 65536<br>                                                                                                                                      |[0x80000580]:srai a1, a0, 47<br> [0x80000584]:sd a1, 80(ra)<br>      |
|  35|[0x80003320]<br>0x0000000000000400|- rs1_val == 131072<br>                                                                                                                                     |[0x8000058c]:srai a1, a0, 7<br> [0x80000590]:sd a1, 88(ra)<br>       |
|  36|[0x80003328]<br>0x0000000000000000|- rs1_val == 262144<br>                                                                                                                                     |[0x80000598]:srai a1, a0, 31<br> [0x8000059c]:sd a1, 96(ra)<br>      |
|  37|[0x80003330]<br>0x0000000000000000|- rs1_val == 1048576<br>                                                                                                                                    |[0x800005a4]:srai a1, a0, 31<br> [0x800005a8]:sd a1, 104(ra)<br>     |
|  38|[0x80003338]<br>0x0000000000010000|- rs1_val == 2097152<br>                                                                                                                                    |[0x800005b0]:srai a1, a0, 5<br> [0x800005b4]:sd a1, 112(ra)<br>      |
|  39|[0x80003340]<br>0x0000000000020000|- rs1_val == 4194304<br>                                                                                                                                    |[0x800005bc]:srai a1, a0, 5<br> [0x800005c0]:sd a1, 120(ra)<br>      |
|  40|[0x80003348]<br>0x0000000000080000|- rs1_val == 8388608<br>                                                                                                                                    |[0x800005c8]:srai a1, a0, 4<br> [0x800005cc]:sd a1, 128(ra)<br>      |
|  41|[0x80003350]<br>0x0000000000020000|- rs1_val == 16777216<br>                                                                                                                                   |[0x800005d4]:srai a1, a0, 7<br> [0x800005d8]:sd a1, 136(ra)<br>      |
|  42|[0x80003358]<br>0x0000000000000000|- rs1_val == 33554432<br>                                                                                                                                   |[0x800005e0]:srai a1, a0, 62<br> [0x800005e4]:sd a1, 144(ra)<br>     |
|  43|[0x80003360]<br>0x0000000000000080|- rs1_val == 67108864<br>                                                                                                                                   |[0x800005ec]:srai a1, a0, 19<br> [0x800005f0]:sd a1, 152(ra)<br>     |
|  44|[0x80003368]<br>0x0000000000100000|- rs1_val == 134217728<br>                                                                                                                                  |[0x800005f8]:srai a1, a0, 7<br> [0x800005fc]:sd a1, 160(ra)<br>      |
|  45|[0x80003370]<br>0x0000000000008000|- rs1_val == 268435456<br>                                                                                                                                  |[0x80000604]:srai a1, a0, 13<br> [0x80000608]:sd a1, 168(ra)<br>     |
|  46|[0x80003378]<br>0x0000000000000000|- rs1_val == 536870912<br>                                                                                                                                  |[0x80000610]:srai a1, a0, 31<br> [0x80000614]:sd a1, 176(ra)<br>     |
|  47|[0x80003380]<br>0x0000000000000000|- rs1_val == 1073741824<br>                                                                                                                                 |[0x8000061c]:srai a1, a0, 31<br> [0x80000620]:sd a1, 184(ra)<br>     |
|  48|[0x80003388]<br>0x0000000000000400|- rs1_val == 2147483648<br>                                                                                                                                 |[0x8000062c]:srai a1, a0, 21<br> [0x80000630]:sd a1, 192(ra)<br>     |
|  49|[0x80003390]<br>0x0000000100000000|- rs1_val == 4294967296<br>                                                                                                                                 |[0x8000063c]:srai a1, a0, 0<br> [0x80000640]:sd a1, 200(ra)<br>      |
|  50|[0x80003398]<br>0x0000000010000000|- rs1_val == 8589934592<br>                                                                                                                                 |[0x8000064c]:srai a1, a0, 5<br> [0x80000650]:sd a1, 208(ra)<br>      |
|  51|[0x800033a0]<br>0x0000000080000000|- rs1_val == 17179869184<br>                                                                                                                                |[0x8000065c]:srai a1, a0, 3<br> [0x80000660]:sd a1, 216(ra)<br>      |
|  52|[0x800033a8]<br>0x0000000000100000|- rs1_val == 34359738368<br>                                                                                                                                |[0x8000066c]:srai a1, a0, 15<br> [0x80000670]:sd a1, 224(ra)<br>     |
|  53|[0x800033b0]<br>0x0000000000000010|- rs1_val == 68719476736<br>                                                                                                                                |[0x8000067c]:srai a1, a0, 32<br> [0x80000680]:sd a1, 232(ra)<br>     |
|  54|[0x800033b8]<br>0x0000000004000000|- rs1_val == 137438953472<br>                                                                                                                               |[0x8000068c]:srai a1, a0, 11<br> [0x80000690]:sd a1, 240(ra)<br>     |
|  55|[0x800033c0]<br>0x0000000010000000|- rs1_val == 274877906944<br>                                                                                                                               |[0x8000069c]:srai a1, a0, 10<br> [0x800006a0]:sd a1, 248(ra)<br>     |
|  56|[0x800033c8]<br>0x0000008000000000|- rs1_val == 549755813888<br>                                                                                                                               |[0x800006ac]:srai a1, a0, 0<br> [0x800006b0]:sd a1, 256(ra)<br>      |
|  57|[0x800033d0]<br>0x0000000800000000|- rs1_val == 1099511627776<br>                                                                                                                              |[0x800006bc]:srai a1, a0, 5<br> [0x800006c0]:sd a1, 264(ra)<br>      |
|  58|[0x800033d8]<br>0x0000010000000000|- rs1_val == 2199023255552<br>                                                                                                                              |[0x800006cc]:srai a1, a0, 1<br> [0x800006d0]:sd a1, 272(ra)<br>      |
|  59|[0x800033e0]<br>0x0000000020000000|- rs1_val == 8796093022208<br>                                                                                                                              |[0x800006dc]:srai a1, a0, 14<br> [0x800006e0]:sd a1, 280(ra)<br>     |
|  60|[0x800033e8]<br>0x0000000020000000|- rs1_val == 35184372088832<br>                                                                                                                             |[0x800006ec]:srai a1, a0, 16<br> [0x800006f0]:sd a1, 288(ra)<br>     |
|  61|[0x800033f0]<br>0x0000000020000000|- rs1_val == 70368744177664<br>                                                                                                                             |[0x800006fc]:srai a1, a0, 17<br> [0x80000700]:sd a1, 296(ra)<br>     |
|  62|[0x800033f8]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                                            |[0x8000070c]:srai a1, a0, 62<br> [0x80000710]:sd a1, 304(ra)<br>     |
|  63|[0x80003400]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                                            |[0x8000071c]:srai a1, a0, 61<br> [0x80000720]:sd a1, 312(ra)<br>     |
|  64|[0x80003408]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                                                            |[0x8000072c]:srai a1, a0, 62<br> [0x80000730]:sd a1, 320(ra)<br>     |
|  65|[0x80003410]<br>0x0000000000040000|- rs1_val == 1125899906842624<br>                                                                                                                           |[0x8000073c]:srai a1, a0, 32<br> [0x80000740]:sd a1, 328(ra)<br>     |
|  66|[0x80003418]<br>0x0000002000000000|- rs1_val == 4503599627370496<br>                                                                                                                           |[0x8000074c]:srai a1, a0, 15<br> [0x80000750]:sd a1, 336(ra)<br>     |
|  67|[0x80003420]<br>0x0000000400000000|- rs1_val == 9007199254740992<br>                                                                                                                           |[0x8000075c]:srai a1, a0, 19<br> [0x80000760]:sd a1, 344(ra)<br>     |
|  68|[0x80003428]<br>0x0000000200000000|- rs1_val == 18014398509481984<br>                                                                                                                          |[0x8000076c]:srai a1, a0, 21<br> [0x80000770]:sd a1, 352(ra)<br>     |
|  69|[0x80003430]<br>0x0000080000000000|- rs1_val == 36028797018963968<br>                                                                                                                          |[0x8000077c]:srai a1, a0, 12<br> [0x80000780]:sd a1, 360(ra)<br>     |
|  70|[0x80003438]<br>0xFFFFFFFFFDFFFFFF|- rs1_val == -1099511627777<br>                                                                                                                             |[0x80000790]:srai a1, a0, 15<br> [0x80000794]:sd a1, 368(ra)<br>     |
|  71|[0x80003440]<br>0xFFFFFFFF7FFFFFFF|- rs1_val == -2199023255553<br>                                                                                                                             |[0x800007a4]:srai a1, a0, 10<br> [0x800007a8]:sd a1, 376(ra)<br>     |
|  72|[0x80003448]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4398046511105<br>                                                                                                                             |[0x800007b8]:srai a1, a0, 47<br> [0x800007bc]:sd a1, 384(ra)<br>     |
|  73|[0x80003450]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8796093022209<br>                                                                                                                             |[0x800007cc]:srai a1, a0, 63<br> [0x800007d0]:sd a1, 392(ra)<br>     |
|  74|[0x80003458]<br>0xFFFFFFFEFFFFFFFF|- rs1_val == -17592186044417<br>                                                                                                                            |[0x800007e0]:srai a1, a0, 12<br> [0x800007e4]:sd a1, 400(ra)<br>     |
|  75|[0x80003460]<br>0xFFFFF7FFFFFFFFFF|- rs1_val == -35184372088833<br>                                                                                                                            |[0x800007f4]:srai a1, a0, 2<br> [0x800007f8]:sd a1, 408(ra)<br>      |
|  76|[0x80003468]<br>0xFFFFFEFFFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                                            |[0x80000808]:srai a1, a0, 6<br> [0x8000080c]:sd a1, 416(ra)<br>      |
|  77|[0x80003470]<br>0xFFFFFFFEFFFFFFFF|- rs1_val == -140737488355329<br>                                                                                                                           |[0x8000081c]:srai a1, a0, 15<br> [0x80000820]:sd a1, 424(ra)<br>     |
|  78|[0x80003478]<br>0xFFFFFFBFFFFFFFFF|- rs1_val == -281474976710657<br>                                                                                                                           |[0x80000830]:srai a1, a0, 10<br> [0x80000834]:sd a1, 432(ra)<br>     |
|  79|[0x80003480]<br>0xFFFFFFF7FFFFFFFF|- rs1_val == -562949953421313<br>                                                                                                                           |[0x80000844]:srai a1, a0, 14<br> [0x80000848]:sd a1, 440(ra)<br>     |
|  80|[0x80003488]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                                          |[0x80000858]:srai a1, a0, 62<br> [0x8000085c]:sd a1, 448(ra)<br>     |
|  81|[0x80003490]<br>0xFFFFFEFFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                                          |[0x8000086c]:srai a1, a0, 11<br> [0x80000870]:sd a1, 456(ra)<br>     |
|  82|[0x80003498]<br>0xFFFFFFFEFFFFFFFF|- rs1_val == -9007199254740993<br>                                                                                                                          |[0x80000880]:srai a1, a0, 21<br> [0x80000884]:sd a1, 464(ra)<br>     |
|  83|[0x800034a0]<br>0xFFFFFF7FFFFFFFFF|- rs1_val == -18014398509481985<br>                                                                                                                         |[0x80000894]:srai a1, a0, 15<br> [0x80000898]:sd a1, 472(ra)<br>     |
|  84|[0x800034a8]<br>0xFFF7FFFFFFFFFFFF|- rs1_val == -36028797018963969<br>                                                                                                                         |[0x800008a8]:srai a1, a0, 4<br> [0x800008ac]:sd a1, 480(ra)<br>      |
|  85|[0x800034b0]<br>0xFFFFFBFFFFFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                                         |[0x800008bc]:srai a1, a0, 14<br> [0x800008c0]:sd a1, 488(ra)<br>     |
|  86|[0x800034b8]<br>0xFFEFFFFFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                                        |[0x800008d0]:srai a1, a0, 6<br> [0x800008d4]:sd a1, 496(ra)<br>      |
|  87|[0x800034c0]<br>0xFFFDFFFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                                        |[0x800008e4]:srai a1, a0, 10<br> [0x800008e8]:sd a1, 504(ra)<br>     |
|  88|[0x800034c8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                                       |[0x800008f8]:srai a1, a0, 62<br> [0x800008fc]:sd a1, 512(ra)<br>     |
|  89|[0x800034d0]<br>0xFF7FFFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                                       |[0x8000090c]:srai a1, a0, 6<br> [0x80000910]:sd a1, 520(ra)<br>      |
|  90|[0x800034d8]<br>0xFFFFFDFFFFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                                       |[0x80000920]:srai a1, a0, 21<br> [0x80000924]:sd a1, 528(ra)<br>     |
|  91|[0x800034e0]<br>0x0001555555555555|- rs1_val == 6148914691236517205<br>                                                                                                                        |[0x80000948]:srai a1, a0, 14<br> [0x8000094c]:sd a1, 536(ra)<br>     |
|  92|[0x800034e8]<br>0xFF55555555555555|- rs1_val == -6148914691236517206<br>                                                                                                                       |[0x80000970]:srai a1, a0, 7<br> [0x80000974]:sd a1, 544(ra)<br>      |
|  93|[0x800034f0]<br>0x0000000004000000|- rs1_val == 144115188075855872<br>                                                                                                                         |[0x80000980]:srai a1, a0, 31<br> [0x80000984]:sd a1, 552(ra)<br>     |
|  94|[0x800034f8]<br>0x0000000000000800|- rs1_val == 288230376151711744<br>                                                                                                                         |[0x80000990]:srai a1, a0, 47<br> [0x80000994]:sd a1, 560(ra)<br>     |
|  95|[0x80003500]<br>0x0000010000000000|- rs1_val == 576460752303423488<br>                                                                                                                         |[0x800009a0]:srai a1, a0, 19<br> [0x800009a4]:sd a1, 568(ra)<br>     |
|  96|[0x80003508]<br>0x0010000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                        |[0x800009b0]:srai a1, a0, 10<br> [0x800009b4]:sd a1, 576(ra)<br>     |
|  97|[0x80003510]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2<br>                                                                                                                                         |[0x800009bc]:srai a1, a0, 16<br> [0x800009c0]:sd a1, 584(ra)<br>     |
|  98|[0x80003518]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -3<br>                                                                                                                                         |[0x800009c8]:srai a1, a0, 12<br> [0x800009cc]:sd a1, 592(ra)<br>     |
|  99|[0x80003520]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -5<br>                                                                                                                                         |[0x800009d4]:srai a1, a0, 17<br> [0x800009d8]:sd a1, 600(ra)<br>     |
| 100|[0x80003528]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -9<br>                                                                                                                                         |[0x800009e0]:srai a1, a0, 17<br> [0x800009e4]:sd a1, 608(ra)<br>     |
| 101|[0x80003530]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17<br>                                                                                                                                        |[0x800009ec]:srai a1, a0, 10<br> [0x800009f0]:sd a1, 616(ra)<br>     |
| 102|[0x80003538]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -33<br>                                                                                                                                        |[0x800009f8]:srai a1, a0, 12<br> [0x800009fc]:sd a1, 624(ra)<br>     |
| 103|[0x80003540]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -65<br>                                                                                                                                        |[0x80000a04]:srai a1, a0, 42<br> [0x80000a08]:sd a1, 632(ra)<br>     |
| 104|[0x80003548]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -129<br>                                                                                                                                       |[0x80000a10]:srai a1, a0, 61<br> [0x80000a14]:sd a1, 640(ra)<br>     |
| 105|[0x80003550]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -257<br>                                                                                                                                       |[0x80000a1c]:srai a1, a0, 32<br> [0x80000a20]:sd a1, 648(ra)<br>     |
| 106|[0x80003558]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -513<br>                                                                                                                                       |[0x80000a28]:srai a1, a0, 62<br> [0x80000a2c]:sd a1, 656(ra)<br>     |
| 107|[0x80003560]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8193<br>                                                                                                                                      |[0x80000a38]:srai a1, a0, 31<br> [0x80000a3c]:sd a1, 664(ra)<br>     |
| 108|[0x80003568]<br>0xFFFFFFFFFFFFFFFD|- rs1_val == -16385<br>                                                                                                                                     |[0x80000a48]:srai a1, a0, 13<br> [0x80000a4c]:sd a1, 672(ra)<br>     |
| 109|[0x80003570]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -32769<br>                                                                                                                                     |[0x80000a58]:srai a1, a0, 31<br> [0x80000a5c]:sd a1, 680(ra)<br>     |
| 110|[0x80003578]<br>0xFFFFFFFFFFFEFFFF|- rs1_val == -65537<br>                                                                                                                                     |[0x80000a68]:srai a1, a0, 0<br> [0x80000a6c]:sd a1, 688(ra)<br>      |
| 111|[0x80003580]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -131073<br>                                                                                                                                    |[0x80000a78]:srai a1, a0, 31<br> [0x80000a7c]:sd a1, 696(ra)<br>     |
| 112|[0x80003588]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -262145<br>                                                                                                                                    |[0x80000a88]:srai a1, a0, 55<br> [0x80000a8c]:sd a1, 704(ra)<br>     |
| 113|[0x80003590]<br>0xFFFFFFFFFFFFEFFF|- rs1_val == -524289<br>                                                                                                                                    |[0x80000a98]:srai a1, a0, 7<br> [0x80000a9c]:sd a1, 712(ra)<br>      |
| 114|[0x80003598]<br>0xFFFFFFFFFFFFFF7F|- rs1_val == -1048577<br>                                                                                                                                   |[0x80000aa8]:srai a1, a0, 13<br> [0x80000aac]:sd a1, 720(ra)<br>     |
| 115|[0x800035a0]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -2097153<br>                                                                                                                                   |[0x80000ab8]:srai a1, a0, 21<br> [0x80000abc]:sd a1, 728(ra)<br>     |
| 116|[0x800035a8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4194305<br>                                                                                                                                   |[0x80000ac8]:srai a1, a0, 61<br> [0x80000acc]:sd a1, 736(ra)<br>     |
| 117|[0x800035b0]<br>0xFFFFFFFFFFDFFFFF|- rs1_val == -8388609<br>                                                                                                                                   |[0x80000ad8]:srai a1, a0, 2<br> [0x80000adc]:sd a1, 744(ra)<br>      |
| 118|[0x800035b8]<br>0xFFFFFFFFFFEFFFFF|- rs1_val == -16777217<br>                                                                                                                                  |[0x80000ae8]:srai a1, a0, 4<br> [0x80000aec]:sd a1, 752(ra)<br>      |
| 119|[0x800035c0]<br>0xFFFFFFFFFF7FFFFF|- rs1_val == -33554433<br>                                                                                                                                  |[0x80000af8]:srai a1, a0, 2<br> [0x80000afc]:sd a1, 760(ra)<br>      |
| 120|[0x800035c8]<br>0xFFFFFFFFFDFFFFFF|- rs1_val == -67108865<br>                                                                                                                                  |[0x80000b08]:srai a1, a0, 1<br> [0x80000b0c]:sd a1, 768(ra)<br>      |
| 121|[0x800035d0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -134217729<br>                                                                                                                                 |[0x80000b18]:srai a1, a0, 59<br> [0x80000b1c]:sd a1, 776(ra)<br>     |
| 122|[0x800035d8]<br>0xFFFFFFFFFFFFFF7F|- rs1_val == -268435457<br>                                                                                                                                 |[0x80000b28]:srai a1, a0, 21<br> [0x80000b2c]:sd a1, 784(ra)<br>     |
| 123|[0x800035e0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -536870913<br>                                                                                                                                 |[0x80000b38]:srai a1, a0, 47<br> [0x80000b3c]:sd a1, 792(ra)<br>     |
| 124|[0x800035e8]<br>0xFFFFFFFFFFFEFFFF|- rs1_val == -1073741825<br>                                                                                                                                |[0x80000b48]:srai a1, a0, 14<br> [0x80000b4c]:sd a1, 800(ra)<br>     |
| 125|[0x800035f0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2147483649<br>                                                                                                                                |[0x80000b5c]:srai a1, a0, 47<br> [0x80000b60]:sd a1, 808(ra)<br>     |
| 126|[0x800035f8]<br>0xFFFFFFFFFFFFBFFF|- rs1_val == -4294967297<br>                                                                                                                                |[0x80000b70]:srai a1, a0, 18<br> [0x80000b74]:sd a1, 816(ra)<br>     |
| 127|[0x80003600]<br>0xFFFFFFFFEFFFFFFF|- rs1_val == -8589934593<br>                                                                                                                                |[0x80000b84]:srai a1, a0, 5<br> [0x80000b88]:sd a1, 824(ra)<br>      |
| 128|[0x80003608]<br>0xFFFFFFFFFFDFFFFF|- rs1_val == -17179869185<br>                                                                                                                               |[0x80000b98]:srai a1, a0, 13<br> [0x80000b9c]:sd a1, 832(ra)<br>     |
| 129|[0x80003610]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -34359738369<br>                                                                                                                               |[0x80000bac]:srai a1, a0, 61<br> [0x80000bb0]:sd a1, 840(ra)<br>     |
| 130|[0x80003618]<br>0xFFFFFFF7FFFFFFFF|- rs1_val == -68719476737<br>                                                                                                                               |[0x80000bc0]:srai a1, a0, 1<br> [0x80000bc4]:sd a1, 848(ra)<br>      |
| 131|[0x80003620]<br>0xFFFFFFFFFFFBFFFF|- rs1_val == -137438953473<br>                                                                                                                              |[0x80000bd4]:srai a1, a0, 19<br> [0x80000bd8]:sd a1, 856(ra)<br>     |
| 132|[0x80003628]<br>0xFFFFFFEFFFFFFFFF|- rs1_val == -274877906945<br>                                                                                                                              |[0x80000be8]:srai a1, a0, 2<br> [0x80000bec]:sd a1, 864(ra)<br>      |
| 133|[0x80003638]<br>0x0000000000000800|- rs1_val == 16384<br>                                                                                                                                      |[0x80000c04]:srai a1, a0, 3<br> [0x80000c08]:sd a1, 880(ra)<br>      |
