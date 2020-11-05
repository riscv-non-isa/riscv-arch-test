
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000c30')]      |
| SIG_REGION                | [('0x80003208', '0x80003648', '136 dwords')]      |
| COV_LABELS                | sraiw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sraiw-01.S/sraiw-01.S    |
| Total Number of coverpoints| 220     |
| Total Coverpoints Hit     | 220      |
| Total Signature Updates   | 136      |
| STAT1                     | 136      |
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

|s.no|            signature             |                                                                        coverpoints                                                                        |                               code                                |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003208]<br>0x0000000000000000|- opcode : sraiw<br> - rs1 : x3<br> - rd : x0<br> - rs1 != rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < 32<br>                                       |[0x800003a0]:srai zero, gp, 11<br> [0x800003a4]:sd zero, 0(t0)<br> |
|   2|[0x80003210]<br>0x0000000000000000|- rs1 : x20<br> - rd : x20<br> - rs1 == rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < 32<br> - rs1_val == 549755813888<br>                            |[0x800003b0]:srai s4, s4, 13<br> [0x800003b4]:sd s4, 8(t0)<br>     |
|   3|[0x80003218]<br>0xFFFFFFFFFFFF7FFF|- rs1 : x12<br> - rd : x19<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -32769<br>                                                                  |[0x800003c0]:srai s3, a2, 0<br> [0x800003c4]:sd s3, 16(t0)<br>     |
|   4|[0x80003220]<br>0x0000000000000020|- rs1 : x21<br> - rd : x29<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 32<br>                                                                      |[0x800003cc]:srai t4, s5, 0<br> [0x800003d0]:sd t4, 24(t0)<br>     |
|   5|[0x80003228]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x31<br> - rd : x16<br> - rs1_val < 0 and imm_val == 31<br> - rs1_val == -6148914691236517206<br>                                                   |[0x800003f4]:srai a6, t6, 31<br> [0x800003f8]:sd a6, 32(t0)<br>    |
|   6|[0x80003230]<br>0x0000000000000000|- rs1 : x14<br> - rd : x15<br> - rs1_val > 0 and imm_val == 31<br> - rs1_val == 64<br>                                                                     |[0x80000400]:srai a5, a4, 31<br> [0x80000404]:sd a5, 40(t0)<br>    |
|   7|[0x80003238]<br>0x0000000000000000|- rs1 : x0<br> - rd : x4<br> - rs1_val == 0 and imm_val >= 0 and imm_val < 32<br>                                                                          |[0x8000040c]:srai tp, zero, 5<br> [0x80000410]:sd tp, 48(t0)<br>   |
|   8|[0x80003240]<br>0x0000000000000000|- rs1 : x6<br> - rd : x17<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < 32<br> - rs1_val == -9223372036854775808<br>                      |[0x8000041c]:srai a7, t1, 0<br> [0x80000420]:sd a7, 56(t0)<br>     |
|   9|[0x80003248]<br>0x0000000000000000|- rs1 : x8<br> - rd : x1<br>                                                                                                                               |[0x80000428]:srai ra, fp, 19<br> [0x8000042c]:sd ra, 64(t0)<br>    |
|  10|[0x80003250]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x23<br> - rd : x22<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < 32<br> - rs1_val == 9223372036854775807<br> - imm_val == 30<br> |[0x8000043c]:srai s6, s7, 30<br> [0x80000440]:sd s6, 72(t0)<br>    |
|  11|[0x80003258]<br>0x0000000000000000|- rs1 : x1<br> - rd : x28<br> - rs1_val == 1 and imm_val >= 0 and imm_val < 32<br> - rs1_val == 1<br>                                                      |[0x80000448]:srai t3, ra, 14<br> [0x8000044c]:sd t3, 80(t0)<br>    |
|  12|[0x80003260]<br>0x0000000000000000|- rs1 : x27<br> - rd : x21<br> - rs1_val == imm_val and imm_val > 0 and imm_val < 32<br> - imm_val == 1<br>                                                |[0x80000454]:srai s5, s11, 1<br> [0x80000458]:sd s5, 88(t0)<br>    |
|  13|[0x80003268]<br>0x0000000000000000|- rs1 : x28<br> - rd : x31<br> - imm_val == 2<br>                                                                                                          |[0x80000464]:srai t6, t3, 2<br> [0x80000468]:sd t6, 96(t0)<br>     |
|  14|[0x80003270]<br>0x0000000000004000|- rs1 : x18<br> - rd : x24<br> - rs1_val == 262144<br> - imm_val == 4<br>                                                                                  |[0x80000470]:srai s8, s2, 4<br> [0x80000474]:sd s8, 104(t0)<br>    |
|  15|[0x80003278]<br>0x0000000000000000|- rs1 : x22<br> - rd : x27<br> - rs1_val == 8589934592<br> - imm_val == 8<br>                                                                              |[0x80000480]:srai s11, s6, 8<br> [0x80000484]:sd s11, 112(t0)<br>  |
|  16|[0x80003280]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x2<br> - rd : x8<br> - rs1_val == -2251799813685249<br> - imm_val == 16<br>                                                                        |[0x80000494]:srai fp, sp, 16<br> [0x80000498]:sd fp, 120(t0)<br>   |
|  17|[0x80003288]<br>0x0000000000000000|- rs1 : x26<br> - rd : x3<br> - rs1_val == 9007199254740992<br> - imm_val == 29<br>                                                                        |[0x800004a4]:srai gp, s10, 29<br> [0x800004a8]:sd gp, 128(t0)<br>  |
|  18|[0x80003290]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x4<br> - rd : x7<br> - rs1_val == -4398046511105<br> - imm_val == 27<br>                                                                           |[0x800004b8]:srai t2, tp, 27<br> [0x800004bc]:sd t2, 136(t0)<br>   |
|  19|[0x80003298]<br>0x0000000000000000|- rs1 : x24<br> - rd : x25<br> - rs1_val == 4398046511104<br> - imm_val == 23<br>                                                                          |[0x800004c8]:srai s9, s8, 23<br> [0x800004cc]:sd s9, 144(t0)<br>   |
|  20|[0x800032a0]<br>0x0000000000000000|- rs1 : x13<br> - rd : x23<br> - rs1_val == 2<br> - imm_val == 15<br>                                                                                      |[0x800004d4]:srai s7, a3, 15<br> [0x800004d8]:sd s7, 152(t0)<br>   |
|  21|[0x800032a8]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x15<br> - rd : x11<br> - rs1_val == -137438953473<br> - imm_val == 21<br>                                                                          |[0x800004e8]:srai a1, a5, 21<br> [0x800004ec]:sd a1, 160(t0)<br>   |
|  22|[0x800032b0]<br>0x0000000000000000|- rs1 : x10<br> - rd : x26<br> - imm_val == 10<br>                                                                                                         |[0x800004f8]:srai s10, a0, 10<br> [0x800004fc]:sd s10, 168(t0)<br> |
|  23|[0x800032b8]<br>0x0000000000000000|- rs1 : x11<br> - rd : x30<br> - rs1_val == 4<br>                                                                                                          |[0x8000050c]:srai t5, a1, 6<br> [0x80000510]:sd t5, 0(ra)<br>      |
|  24|[0x800032c0]<br>0x0000000000000000|- rs1 : x16<br> - rd : x9<br> - rs1_val == 8<br>                                                                                                           |[0x80000518]:srai s1, a6, 23<br> [0x8000051c]:sd s1, 8(ra)<br>     |
|  25|[0x800032c8]<br>0x0000000000000000|- rs1 : x17<br> - rd : x2<br> - rs1_val == 16<br>                                                                                                          |[0x80000524]:srai sp, a7, 14<br> [0x80000528]:sd sp, 16(ra)<br>    |
|  26|[0x800032d0]<br>0x0000000000000000|- rs1 : x19<br> - rd : x14<br> - rs1_val == 128<br>                                                                                                        |[0x80000530]:srai a4, s3, 29<br> [0x80000534]:sd a4, 24(ra)<br>    |
|  27|[0x800032d8]<br>0x0000000000000008|- rs1 : x7<br> - rd : x13<br> - rs1_val == 256<br>                                                                                                         |[0x8000053c]:srai a3, t2, 5<br> [0x80000540]:sd a3, 32(ra)<br>     |
|  28|[0x800032e0]<br>0x0000000000000040|- rs1 : x9<br> - rd : x5<br> - rs1_val == 512<br>                                                                                                          |[0x80000548]:srai t0, s1, 3<br> [0x8000054c]:sd t0, 40(ra)<br>     |
|  29|[0x800032e8]<br>0x0000000000000400|- rs1 : x25<br> - rd : x10<br> - rs1_val == 1024<br>                                                                                                       |[0x80000554]:srai a0, s9, 0<br> [0x80000558]:sd a0, 48(ra)<br>     |
|  30|[0x800032f0]<br>0x0000000000000200|- rs1 : x30<br> - rd : x6<br> - rs1_val == 2048<br>                                                                                                        |[0x80000564]:srai t1, t5, 2<br> [0x80000568]:sd t1, 56(ra)<br>     |
|  31|[0x800032f8]<br>0x0000000000000002|- rs1 : x5<br> - rd : x12<br> - rs1_val == 4096<br>                                                                                                        |[0x80000570]:srai a2, t0, 11<br> [0x80000574]:sd a2, 64(ra)<br>    |
|  32|[0x80003300]<br>0x0000000000000000|- rs1 : x29<br> - rd : x18<br> - rs1_val == 8192<br>                                                                                                       |[0x8000057c]:srai s2, t4, 21<br> [0x80000580]:sd s2, 72(ra)<br>    |
|  33|[0x80003308]<br>0x0000000000000400|- rs1_val == 16384<br>                                                                                                                                     |[0x80000588]:srai a1, a0, 4<br> [0x8000058c]:sd a1, 80(ra)<br>     |
|  34|[0x80003310]<br>0x0000000000000004|- rs1_val == 32768<br>                                                                                                                                     |[0x80000594]:srai a1, a0, 13<br> [0x80000598]:sd a1, 88(ra)<br>    |
|  35|[0x80003318]<br>0x0000000000010000|- rs1_val == 65536<br>                                                                                                                                     |[0x800005a0]:srai a1, a0, 0<br> [0x800005a4]:sd a1, 96(ra)<br>     |
|  36|[0x80003320]<br>0x0000000000000002|- rs1_val == 131072<br>                                                                                                                                    |[0x800005ac]:srai a1, a0, 16<br> [0x800005b0]:sd a1, 104(ra)<br>   |
|  37|[0x80003328]<br>0x0000000000000001|- rs1_val == 524288<br>                                                                                                                                    |[0x800005b8]:srai a1, a0, 19<br> [0x800005bc]:sd a1, 112(ra)<br>   |
|  38|[0x80003330]<br>0x0000000000000000|- rs1_val == 1048576<br>                                                                                                                                   |[0x800005c4]:srai a1, a0, 30<br> [0x800005c8]:sd a1, 120(ra)<br>   |
|  39|[0x80003338]<br>0x0000000000100000|- rs1_val == 2097152<br>                                                                                                                                   |[0x800005d0]:srai a1, a0, 1<br> [0x800005d4]:sd a1, 128(ra)<br>    |
|  40|[0x80003340]<br>0x0000000000000200|- rs1_val == 4194304<br>                                                                                                                                   |[0x800005dc]:srai a1, a0, 13<br> [0x800005e0]:sd a1, 136(ra)<br>   |
|  41|[0x80003348]<br>0x0000000000002000|- rs1_val == 8388608<br>                                                                                                                                   |[0x800005e8]:srai a1, a0, 10<br> [0x800005ec]:sd a1, 144(ra)<br>   |
|  42|[0x80003350]<br>0x0000000000000800|- rs1_val == 16777216<br>                                                                                                                                  |[0x800005f4]:srai a1, a0, 13<br> [0x800005f8]:sd a1, 152(ra)<br>   |
|  43|[0x80003358]<br>0x0000000000000000|- rs1_val == 33554432<br>                                                                                                                                  |[0x80000600]:srai a1, a0, 30<br> [0x80000604]:sd a1, 160(ra)<br>   |
|  44|[0x80003360]<br>0x0000000000000200|- rs1_val == 67108864<br>                                                                                                                                  |[0x8000060c]:srai a1, a0, 17<br> [0x80000610]:sd a1, 168(ra)<br>   |
|  45|[0x80003368]<br>0x0000000002000000|- rs1_val == 134217728<br>                                                                                                                                 |[0x80000618]:srai a1, a0, 2<br> [0x8000061c]:sd a1, 176(ra)<br>    |
|  46|[0x80003370]<br>0x0000000000001000|- rs1_val == 268435456<br>                                                                                                                                 |[0x80000624]:srai a1, a0, 16<br> [0x80000628]:sd a1, 184(ra)<br>   |
|  47|[0x80003378]<br>0x0000000000000100|- rs1_val == 536870912<br>                                                                                                                                 |[0x80000630]:srai a1, a0, 21<br> [0x80000634]:sd a1, 192(ra)<br>   |
|  48|[0x80003380]<br>0x0000000010000000|- rs1_val == 1073741824<br>                                                                                                                                |[0x8000063c]:srai a1, a0, 2<br> [0x80000640]:sd a1, 200(ra)<br>    |
|  49|[0x80003388]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == 2147483648<br>                                                                                                                                |[0x8000064c]:srai a1, a0, 29<br> [0x80000650]:sd a1, 208(ra)<br>   |
|  50|[0x80003390]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                                                                |[0x8000065c]:srai a1, a0, 21<br> [0x80000660]:sd a1, 216(ra)<br>   |
|  51|[0x80003398]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                                                               |[0x8000066c]:srai a1, a0, 23<br> [0x80000670]:sd a1, 224(ra)<br>   |
|  52|[0x800033a0]<br>0x0000000000000000|- rs1_val == 34359738368<br>                                                                                                                               |[0x8000067c]:srai a1, a0, 3<br> [0x80000680]:sd a1, 232(ra)<br>    |
|  53|[0x800033a8]<br>0x0000000000000000|- rs1_val == 68719476736<br>                                                                                                                               |[0x8000068c]:srai a1, a0, 15<br> [0x80000690]:sd a1, 240(ra)<br>   |
|  54|[0x800033b0]<br>0x0000000000000000|- rs1_val == 137438953472<br>                                                                                                                              |[0x8000069c]:srai a1, a0, 10<br> [0x800006a0]:sd a1, 248(ra)<br>   |
|  55|[0x800033b8]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                                                              |[0x800006ac]:srai a1, a0, 29<br> [0x800006b0]:sd a1, 256(ra)<br>   |
|  56|[0x800033c0]<br>0x0000000000000000|- rs1_val == 1099511627776<br>                                                                                                                             |[0x800006bc]:srai a1, a0, 2<br> [0x800006c0]:sd a1, 264(ra)<br>    |
|  57|[0x800033c8]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                                             |[0x800006cc]:srai a1, a0, 9<br> [0x800006d0]:sd a1, 272(ra)<br>    |
|  58|[0x800033d0]<br>0x0000000000000000|- rs1_val == 8796093022208<br>                                                                                                                             |[0x800006dc]:srai a1, a0, 29<br> [0x800006e0]:sd a1, 280(ra)<br>   |
|  59|[0x800033d8]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                                            |[0x800006ec]:srai a1, a0, 29<br> [0x800006f0]:sd a1, 288(ra)<br>   |
|  60|[0x800033e0]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                                            |[0x800006fc]:srai a1, a0, 1<br> [0x80000700]:sd a1, 296(ra)<br>    |
|  61|[0x800033e8]<br>0x0000000000000000|- rs1_val == 70368744177664<br>                                                                                                                            |[0x8000070c]:srai a1, a0, 2<br> [0x80000710]:sd a1, 304(ra)<br>    |
|  62|[0x800033f0]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                                           |[0x8000071c]:srai a1, a0, 13<br> [0x80000720]:sd a1, 312(ra)<br>   |
|  63|[0x800033f8]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                                           |[0x8000072c]:srai a1, a0, 2<br> [0x80000730]:sd a1, 320(ra)<br>    |
|  64|[0x80003400]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                                                           |[0x8000073c]:srai a1, a0, 2<br> [0x80000740]:sd a1, 328(ra)<br>    |
|  65|[0x80003408]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                                          |[0x8000074c]:srai a1, a0, 16<br> [0x80000750]:sd a1, 336(ra)<br>   |
|  66|[0x80003410]<br>0x0000000000000000|- rs1_val == 2251799813685248<br>                                                                                                                          |[0x8000075c]:srai a1, a0, 6<br> [0x80000760]:sd a1, 344(ra)<br>    |
|  67|[0x80003418]<br>0x0000000000000000|- rs1_val == 4503599627370496<br>                                                                                                                          |[0x8000076c]:srai a1, a0, 15<br> [0x80000770]:sd a1, 352(ra)<br>   |
|  68|[0x80003420]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                                         |[0x8000077c]:srai a1, a0, 10<br> [0x80000780]:sd a1, 360(ra)<br>   |
|  69|[0x80003428]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                                         |[0x8000078c]:srai a1, a0, 16<br> [0x80000790]:sd a1, 368(ra)<br>   |
|  70|[0x80003430]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                                                         |[0x8000079c]:srai a1, a0, 5<br> [0x800007a0]:sd a1, 376(ra)<br>    |
|  71|[0x80003438]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                                        |[0x800007ac]:srai a1, a0, 29<br> [0x800007b0]:sd a1, 384(ra)<br>   |
|  72|[0x80003440]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                                        |[0x800007bc]:srai a1, a0, 1<br> [0x800007c0]:sd a1, 392(ra)<br>    |
|  73|[0x80003448]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                                        |[0x800007cc]:srai a1, a0, 9<br> [0x800007d0]:sd a1, 400(ra)<br>    |
|  74|[0x80003450]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                                            |[0x800007e0]:srai a1, a0, 3<br> [0x800007e4]:sd a1, 408(ra)<br>    |
|  75|[0x80003458]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8796093022209<br>                                                                                                                            |[0x800007f4]:srai a1, a0, 8<br> [0x800007f8]:sd a1, 416(ra)<br>    |
|  76|[0x80003460]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17592186044417<br>                                                                                                                           |[0x80000808]:srai a1, a0, 23<br> [0x8000080c]:sd a1, 424(ra)<br>   |
|  77|[0x80003468]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -35184372088833<br>                                                                                                                           |[0x8000081c]:srai a1, a0, 1<br> [0x80000820]:sd a1, 432(ra)<br>    |
|  78|[0x80003470]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                                           |[0x80000830]:srai a1, a0, 5<br> [0x80000834]:sd a1, 440(ra)<br>    |
|  79|[0x80003478]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -140737488355329<br>                                                                                                                          |[0x80000844]:srai a1, a0, 9<br> [0x80000848]:sd a1, 448(ra)<br>    |
|  80|[0x80003480]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -281474976710657<br>                                                                                                                          |[0x80000858]:srai a1, a0, 12<br> [0x8000085c]:sd a1, 456(ra)<br>   |
|  81|[0x80003488]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -562949953421313<br>                                                                                                                          |[0x8000086c]:srai a1, a0, 3<br> [0x80000870]:sd a1, 464(ra)<br>    |
|  82|[0x80003490]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                                         |[0x80000880]:srai a1, a0, 30<br> [0x80000884]:sd a1, 472(ra)<br>   |
|  83|[0x80003498]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                                         |[0x80000894]:srai a1, a0, 9<br> [0x80000898]:sd a1, 480(ra)<br>    |
|  84|[0x800034a0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -9007199254740993<br>                                                                                                                         |[0x800008a8]:srai a1, a0, 12<br> [0x800008ac]:sd a1, 488(ra)<br>   |
|  85|[0x800034a8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -18014398509481985<br>                                                                                                                        |[0x800008bc]:srai a1, a0, 9<br> [0x800008c0]:sd a1, 496(ra)<br>    |
|  86|[0x800034b0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -36028797018963969<br>                                                                                                                        |[0x800008d0]:srai a1, a0, 4<br> [0x800008d4]:sd a1, 504(ra)<br>    |
|  87|[0x800034b8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                                        |[0x800008e4]:srai a1, a0, 15<br> [0x800008e8]:sd a1, 512(ra)<br>   |
|  88|[0x800034c0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                                       |[0x800008f8]:srai a1, a0, 23<br> [0x800008fc]:sd a1, 520(ra)<br>   |
|  89|[0x800034c8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                                       |[0x8000090c]:srai a1, a0, 8<br> [0x80000910]:sd a1, 528(ra)<br>    |
|  90|[0x800034d0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                                       |[0x80000920]:srai a1, a0, 23<br> [0x80000924]:sd a1, 536(ra)<br>   |
|  91|[0x800034d8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                                      |[0x80000934]:srai a1, a0, 5<br> [0x80000938]:sd a1, 544(ra)<br>    |
|  92|[0x800034e0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                                      |[0x80000948]:srai a1, a0, 1<br> [0x8000094c]:sd a1, 552(ra)<br>    |
|  93|[0x800034e8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                                      |[0x8000095c]:srai a1, a0, 3<br> [0x80000960]:sd a1, 560(ra)<br>    |
|  94|[0x800034f0]<br>0x000000000000AAAA|- rs1_val == 6148914691236517205<br>                                                                                                                       |[0x80000984]:srai a1, a0, 15<br> [0x80000988]:sd a1, 568(ra)<br>   |
|  95|[0x800034f8]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                       |[0x80000994]:srai a1, a0, 11<br> [0x80000998]:sd a1, 576(ra)<br>   |
|  96|[0x80003500]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                       |[0x800009a4]:srai a1, a0, 3<br> [0x800009a8]:sd a1, 584(ra)<br>    |
|  97|[0x80003508]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                       |[0x800009b4]:srai a1, a0, 2<br> [0x800009b8]:sd a1, 592(ra)<br>    |
|  98|[0x80003510]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2<br>                                                                                                                                        |[0x800009c0]:srai a1, a0, 7<br> [0x800009c4]:sd a1, 600(ra)<br>    |
|  99|[0x80003518]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -3<br>                                                                                                                                        |[0x800009cc]:srai a1, a0, 15<br> [0x800009d0]:sd a1, 608(ra)<br>   |
| 100|[0x80003520]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -5<br>                                                                                                                                        |[0x800009d8]:srai a1, a0, 10<br> [0x800009dc]:sd a1, 616(ra)<br>   |
| 101|[0x80003528]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -9<br>                                                                                                                                        |[0x800009e4]:srai a1, a0, 7<br> [0x800009e8]:sd a1, 624(ra)<br>    |
| 102|[0x80003530]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17<br>                                                                                                                                       |[0x800009f0]:srai a1, a0, 29<br> [0x800009f4]:sd a1, 632(ra)<br>   |
| 103|[0x80003538]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -33<br>                                                                                                                                       |[0x800009fc]:srai a1, a0, 31<br> [0x80000a00]:sd a1, 640(ra)<br>   |
| 104|[0x80003540]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -65<br>                                                                                                                                       |[0x80000a08]:srai a1, a0, 6<br> [0x80000a0c]:sd a1, 648(ra)<br>    |
| 105|[0x80003548]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == -129<br>                                                                                                                                      |[0x80000a14]:srai a1, a0, 4<br> [0x80000a18]:sd a1, 656(ra)<br>    |
| 106|[0x80003550]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == -257<br>                                                                                                                                      |[0x80000a20]:srai a1, a0, 5<br> [0x80000a24]:sd a1, 664(ra)<br>    |
| 107|[0x80003558]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -513<br>                                                                                                                                      |[0x80000a2c]:srai a1, a0, 17<br> [0x80000a30]:sd a1, 672(ra)<br>   |
| 108|[0x80003560]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1025<br>                                                                                                                                     |[0x80000a38]:srai a1, a0, 16<br> [0x80000a3c]:sd a1, 680(ra)<br>   |
| 109|[0x80003568]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2049<br>                                                                                                                                     |[0x80000a48]:srai a1, a0, 30<br> [0x80000a4c]:sd a1, 688(ra)<br>   |
| 110|[0x80003570]<br>0xFFFFFFFFFFFFF7FF|- rs1_val == -4097<br>                                                                                                                                     |[0x80000a58]:srai a1, a0, 1<br> [0x80000a5c]:sd a1, 696(ra)<br>    |
| 111|[0x80003578]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8193<br>                                                                                                                                     |[0x80000a68]:srai a1, a0, 27<br> [0x80000a6c]:sd a1, 704(ra)<br>   |
| 112|[0x80003580]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -16385<br>                                                                                                                                    |[0x80000a78]:srai a1, a0, 31<br> [0x80000a7c]:sd a1, 712(ra)<br>   |
| 113|[0x80003588]<br>0xFFFFFFFFFFFFFFEF|- rs1_val == -65537<br>                                                                                                                                    |[0x80000a88]:srai a1, a0, 12<br> [0x80000a8c]:sd a1, 720(ra)<br>   |
| 114|[0x80003590]<br>0xFFFFFFFFFFFEFFFF|- rs1_val == -131073<br>                                                                                                                                   |[0x80000a98]:srai a1, a0, 1<br> [0x80000a9c]:sd a1, 728(ra)<br>    |
| 115|[0x80003598]<br>0xFFFFFFFFFFFFBFFF|- rs1_val == -262145<br>                                                                                                                                   |[0x80000aa8]:srai a1, a0, 4<br> [0x80000aac]:sd a1, 736(ra)<br>    |
| 116|[0x800035a0]<br>0xFFFFFFFFFFFFEFFF|- rs1_val == -524289<br>                                                                                                                                   |[0x80000ab8]:srai a1, a0, 7<br> [0x80000abc]:sd a1, 744(ra)<br>    |
| 117|[0x800035a8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1048577<br>                                                                                                                                  |[0x80000ac8]:srai a1, a0, 30<br> [0x80000acc]:sd a1, 752(ra)<br>   |
| 118|[0x800035b0]<br>0xFFFFFFFFFFFEFFFF|- rs1_val == -2097153<br>                                                                                                                                  |[0x80000ad8]:srai a1, a0, 5<br> [0x80000adc]:sd a1, 760(ra)<br>    |
| 119|[0x800035b8]<br>0xFFFFFFFFFFEFFFFF|- rs1_val == -4194305<br>                                                                                                                                  |[0x80000ae8]:srai a1, a0, 2<br> [0x80000aec]:sd a1, 768(ra)<br>    |
| 120|[0x800035c0]<br>0xFFFFFFFFFFFFDFFF|- rs1_val == -8388609<br>                                                                                                                                  |[0x80000af8]:srai a1, a0, 10<br> [0x80000afc]:sd a1, 776(ra)<br>   |
| 121|[0x800035c8]<br>0xFFFFFFFFFFFDFFFF|- rs1_val == -16777217<br>                                                                                                                                 |[0x80000b08]:srai a1, a0, 7<br> [0x80000b0c]:sd a1, 784(ra)<br>    |
| 122|[0x800035d0]<br>0xFFFFFFFFFFFFEFFF|- rs1_val == -33554433<br>                                                                                                                                 |[0x80000b18]:srai a1, a0, 13<br> [0x80000b1c]:sd a1, 792(ra)<br>   |
| 123|[0x800035d8]<br>0xFFFFFFFFFFFFFBFF|- rs1_val == -67108865<br>                                                                                                                                 |[0x80000b28]:srai a1, a0, 16<br> [0x80000b2c]:sd a1, 800(ra)<br>   |
| 124|[0x800035e0]<br>0xFFFFFFFFFFFFBFFF|- rs1_val == -134217729<br>                                                                                                                                |[0x80000b38]:srai a1, a0, 13<br> [0x80000b3c]:sd a1, 808(ra)<br>   |
| 125|[0x800035e8]<br>0xFFFFFFFFFFF7FFFF|- rs1_val == -268435457<br>                                                                                                                                |[0x80000b48]:srai a1, a0, 9<br> [0x80000b4c]:sd a1, 816(ra)<br>    |
| 126|[0x800035f0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -536870913<br>                                                                                                                                |[0x80000b58]:srai a1, a0, 31<br> [0x80000b5c]:sd a1, 824(ra)<br>   |
| 127|[0x800035f8]<br>0xFFFFFFFFFDFFFFFF|- rs1_val == -1073741825<br>                                                                                                                               |[0x80000b68]:srai a1, a0, 5<br> [0x80000b6c]:sd a1, 832(ra)<br>    |
| 128|[0x80003600]<br>0x00000000000FFFFF|- rs1_val == -2147483649<br>                                                                                                                               |[0x80000b7c]:srai a1, a0, 11<br> [0x80000b80]:sd a1, 840(ra)<br>   |
| 129|[0x80003608]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4294967297<br>                                                                                                                               |[0x80000b90]:srai a1, a0, 10<br> [0x80000b94]:sd a1, 848(ra)<br>   |
| 130|[0x80003610]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8589934593<br>                                                                                                                               |[0x80000ba4]:srai a1, a0, 3<br> [0x80000ba8]:sd a1, 856(ra)<br>    |
| 131|[0x80003618]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17179869185<br>                                                                                                                              |[0x80000bb8]:srai a1, a0, 18<br> [0x80000bbc]:sd a1, 864(ra)<br>   |
| 132|[0x80003620]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -34359738369<br>                                                                                                                              |[0x80000bcc]:srai a1, a0, 10<br> [0x80000bd0]:sd a1, 872(ra)<br>   |
| 133|[0x80003628]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -68719476737<br>                                                                                                                              |[0x80000be0]:srai a1, a0, 9<br> [0x80000be4]:sd a1, 880(ra)<br>    |
| 134|[0x80003630]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -274877906945<br>                                                                                                                             |[0x80000bf4]:srai a1, a0, 17<br> [0x80000bf8]:sd a1, 888(ra)<br>   |
| 135|[0x80003638]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -549755813889<br>                                                                                                                             |[0x80000c08]:srai a1, a0, 1<br> [0x80000c0c]:sd a1, 896(ra)<br>    |
| 136|[0x80003640]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1099511627777<br>                                                                                                                            |[0x80000c1c]:srai a1, a0, 7<br> [0x80000c20]:sd a1, 904(ra)<br>    |
