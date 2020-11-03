
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000c20')]      |
| SIG_REGION                | [('0x80003204', '0x80003650', '137 dwords')]      |
| COV_LABELS                | srliw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srliw-01.S/srliw-01.S    |
| Total Number of coverpoints| 220     |
| Total Signature Updates   | 136      |
| Total Coverpoints Covered | 220      |
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

|s.no|            signature             |                                                                            coverpoints                                                                             |                                code                                |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000003|- opcode : srliw<br> - rs1 : x2<br> - rd : x2<br> - rs1 == rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < 32<br> - rs1_val == -16777217<br> - imm_val == 30<br> |[0x800003a0]:srli sp, sp, 30<br> [0x800003a4]:sd sp, 0(tp)<br>      |
|   2|[0x80003218]<br>0x0000000000000000|- rs1 : x14<br> - rd : x21<br> - rs1 != rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < 32<br>                                                                   |[0x800003ac]:srli s5, a4, 13<br> [0x800003b0]:sd s5, 8(tp)<br>      |
|   3|[0x80003220]<br>0xFFFFFFFFFFFFFFEF|- rs1 : x28<br> - rd : x25<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -17<br>                                                                              |[0x800003b8]:srli s9, t3, 0<br> [0x800003bc]:sd s9, 16(tp)<br>      |
|   4|[0x80003228]<br>0x0000000000020000|- rs1 : x21<br> - rd : x10<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 131072<br>                                                                           |[0x800003c4]:srli a0, s5, 0<br> [0x800003c8]:sd a0, 24(tp)<br>      |
|   5|[0x80003230]<br>0x0000000000000000|- rs1 : x7<br> - rd : x0<br> - rs1_val < 0 and imm_val == 31<br>                                                                                                    |[0x800003d0]:srli zero, t2, 31<br> [0x800003d4]:sd zero, 32(tp)<br> |
|   6|[0x80003238]<br>0x0000000000000000|- rs1 : x10<br> - rd : x11<br> - rs1_val > 0 and imm_val == 31<br> - rs1_val == 8796093022208<br>                                                                   |[0x800003e0]:srli a1, a0, 31<br> [0x800003e4]:sd a1, 40(tp)<br>     |
|   7|[0x80003240]<br>0x0000000000000000|- rs1 : x26<br> - rd : x24<br> - rs1_val == imm_val and imm_val > 0 and imm_val < 32<br>                                                                            |[0x800003ec]:srli s8, s10, 6<br> [0x800003f0]:sd s8, 48(tp)<br>     |
|   8|[0x80003248]<br>0x0000000000000000|- rs1 : x27<br> - rd : x7<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < 32<br> - rs1_val == -9223372036854775808<br>                               |[0x800003fc]:srli t2, s11, 5<br> [0x80000400]:sd t2, 56(tp)<br>     |
|   9|[0x80003250]<br>0x0000000000000000|- rs1 : x31<br> - rd : x9<br> - rs1_val == 0 and imm_val >= 0 and imm_val < 32<br> - imm_val == 16<br>                                                              |[0x80000408]:srli s1, t6, 16<br> [0x8000040c]:sd s1, 64(tp)<br>     |
|  10|[0x80003258]<br>0x000000000000001F|- rs1 : x8<br> - rd : x26<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < 32<br> - rs1_val == 9223372036854775807<br> - imm_val == 27<br>           |[0x8000041c]:srli s10, fp, 27<br> [0x80000420]:sd s10, 72(tp)<br>   |
|  11|[0x80003260]<br>0x0000000000000000|- rs1 : x3<br> - rd : x19<br> - rs1_val == 1 and imm_val >= 0 and imm_val < 32<br> - rs1_val == 1<br>                                                               |[0x80000428]:srli s3, gp, 27<br> [0x8000042c]:sd s3, 80(tp)<br>     |
|  12|[0x80003268]<br>0x0000000000000000|- rs1 : x0<br> - rd : x31<br> - imm_val == 1<br>                                                                                                                    |[0x80000438]:srli t6, zero, 1<br> [0x8000043c]:sd t6, 88(tp)<br>    |
|  13|[0x80003270]<br>0x000000003FFFFFFF|- rs1 : x18<br> - rd : x29<br> - rs1_val == -9007199254740993<br> - imm_val == 2<br>                                                                                |[0x8000044c]:srli t4, s2, 2<br> [0x80000450]:sd t4, 96(tp)<br>      |
|  14|[0x80003278]<br>0x0000000000000000|- rs1 : x19<br> - rd : x15<br> - rs1_val == 144115188075855872<br> - imm_val == 4<br>                                                                               |[0x8000045c]:srli a5, s3, 4<br> [0x80000460]:sd a5, 104(tp)<br>     |
|  15|[0x80003280]<br>0x0000000000000000|- rs1 : x6<br> - rd : x1<br> - rs1_val == 576460752303423488<br> - imm_val == 8<br>                                                                                 |[0x8000046c]:srli ra, t1, 8<br> [0x80000470]:sd ra, 112(tp)<br>     |
|  16|[0x80003288]<br>0x0000000000000000|- rs1 : x16<br> - rd : x13<br> - rs1_val == 128<br> - imm_val == 29<br>                                                                                             |[0x80000478]:srli a3, a6, 29<br> [0x8000047c]:sd a3, 120(tp)<br>    |
|  17|[0x80003290]<br>0x00000000000001FF|- rs1 : x12<br> - rd : x18<br> - rs1_val == -131073<br> - imm_val == 23<br>                                                                                         |[0x80000488]:srli s2, a2, 23<br> [0x8000048c]:sd s2, 128(tp)<br>    |
|  18|[0x80003298]<br>0x0000000000000000|- rs1 : x11<br> - rd : x30<br> - rs1_val == 9007199254740992<br> - imm_val == 15<br>                                                                                |[0x80000498]:srli t5, a1, 15<br> [0x8000049c]:sd t5, 136(tp)<br>    |
|  19|[0x800032a0]<br>0x00000000000007FF|- rs1 : x5<br> - rd : x17<br> - rs1_val == -5<br> - imm_val == 21<br>                                                                                               |[0x800004a4]:srli a7, t0, 21<br> [0x800004a8]:sd a7, 144(tp)<br>    |
|  20|[0x800032a8]<br>0x00000000003FFF7F|- rs1 : x24<br> - rd : x20<br> - imm_val == 10<br>                                                                                                                  |[0x800004b4]:srli s4, s8, 10<br> [0x800004b8]:sd s4, 152(tp)<br>    |
|  21|[0x800032b0]<br>0x0000000000000000|- rs1 : x29<br> - rd : x27<br> - rs1_val == 2<br>                                                                                                                   |[0x800004c8]:srli s11, t4, 12<br> [0x800004cc]:sd s11, 0(sp)<br>    |
|  22|[0x800032b8]<br>0x0000000000000000|- rs1 : x1<br> - rd : x5<br> - rs1_val == 4<br>                                                                                                                     |[0x800004d4]:srli t0, ra, 12<br> [0x800004d8]:sd t0, 8(sp)<br>      |
|  23|[0x800032c0]<br>0x0000000000000000|- rs1 : x13<br> - rd : x28<br> - rs1_val == 8<br>                                                                                                                   |[0x800004e0]:srli t3, a3, 18<br> [0x800004e4]:sd t3, 16(sp)<br>     |
|  24|[0x800032c8]<br>0x0000000000000000|- rs1 : x4<br> - rd : x23<br> - rs1_val == 16<br>                                                                                                                   |[0x800004ec]:srli s7, tp, 10<br> [0x800004f0]:sd s7, 24(sp)<br>     |
|  25|[0x800032d0]<br>0x0000000000000000|- rs1 : x17<br> - rd : x8<br> - rs1_val == 32<br>                                                                                                                   |[0x800004f8]:srli fp, a7, 15<br> [0x800004fc]:sd fp, 32(sp)<br>     |
|  26|[0x800032d8]<br>0x0000000000000000|- rs1 : x9<br> - rd : x12<br> - rs1_val == 64<br>                                                                                                                   |[0x80000504]:srli a2, s1, 13<br> [0x80000508]:sd a2, 40(sp)<br>     |
|  27|[0x800032e0]<br>0x0000000000000000|- rs1 : x15<br> - rd : x16<br> - rs1_val == 256<br>                                                                                                                 |[0x80000510]:srli a6, a5, 18<br> [0x80000514]:sd a6, 48(sp)<br>     |
|  28|[0x800032e8]<br>0x0000000000000000|- rs1 : x30<br> - rd : x14<br> - rs1_val == 512<br>                                                                                                                 |[0x8000051c]:srli a4, t5, 18<br> [0x80000520]:sd a4, 56(sp)<br>     |
|  29|[0x800032f0]<br>0x0000000000000000|- rs1 : x20<br> - rd : x22<br> - rs1_val == 1024<br>                                                                                                                |[0x80000528]:srli s6, s4, 15<br> [0x8000052c]:sd s6, 64(sp)<br>     |
|  30|[0x800032f8]<br>0x0000000000000020|- rs1 : x23<br> - rd : x3<br> - rs1_val == 2048<br>                                                                                                                 |[0x80000538]:srli gp, s7, 6<br> [0x8000053c]:sd gp, 72(sp)<br>      |
|  31|[0x80003300]<br>0x0000000000000004|- rs1 : x25<br> - rd : x6<br> - rs1_val == 4096<br>                                                                                                                 |[0x80000544]:srli t1, s9, 10<br> [0x80000548]:sd t1, 80(sp)<br>     |
|  32|[0x80003308]<br>0x0000000000000800|- rs1 : x22<br> - rd : x4<br> - rs1_val == 8192<br>                                                                                                                 |[0x80000550]:srli tp, s6, 2<br> [0x80000554]:sd tp, 88(sp)<br>      |
|  33|[0x80003310]<br>0x0000000000000001|- rs1_val == 16384<br>                                                                                                                                              |[0x8000055c]:srli a1, a0, 14<br> [0x80000560]:sd a1, 96(sp)<br>     |
|  34|[0x80003318]<br>0x0000000000000000|- rs1_val == 32768<br>                                                                                                                                              |[0x80000568]:srli a1, a0, 18<br> [0x8000056c]:sd a1, 104(sp)<br>    |
|  35|[0x80003320]<br>0x0000000000000000|- rs1_val == 65536<br>                                                                                                                                              |[0x80000574]:srli a1, a0, 21<br> [0x80000578]:sd a1, 112(sp)<br>    |
|  36|[0x80003328]<br>0x0000000000040000|- rs1_val == 262144<br>                                                                                                                                             |[0x80000580]:srli a1, a0, 0<br> [0x80000584]:sd a1, 120(sp)<br>     |
|  37|[0x80003330]<br>0x0000000000000010|- rs1_val == 524288<br>                                                                                                                                             |[0x8000058c]:srli a1, a0, 15<br> [0x80000590]:sd a1, 128(sp)<br>    |
|  38|[0x80003338]<br>0x0000000000000010|- rs1_val == 1048576<br>                                                                                                                                            |[0x80000598]:srli a1, a0, 16<br> [0x8000059c]:sd a1, 136(sp)<br>    |
|  39|[0x80003340]<br>0x0000000000000001|- rs1_val == 2097152<br>                                                                                                                                            |[0x800005a4]:srli a1, a0, 21<br> [0x800005a8]:sd a1, 144(sp)<br>    |
|  40|[0x80003348]<br>0x0000000000000000|- rs1_val == 4194304<br>                                                                                                                                            |[0x800005b0]:srli a1, a0, 30<br> [0x800005b4]:sd a1, 152(sp)<br>    |
|  41|[0x80003350]<br>0x0000000000002000|- rs1_val == 8388608<br>                                                                                                                                            |[0x800005bc]:srli a1, a0, 10<br> [0x800005c0]:sd a1, 160(sp)<br>    |
|  42|[0x80003358]<br>0x0000000000001000|- rs1_val == 16777216<br>                                                                                                                                           |[0x800005c8]:srli a1, a0, 12<br> [0x800005cc]:sd a1, 168(sp)<br>    |
|  43|[0x80003360]<br>0x0000000000000400|- rs1_val == 33554432<br>                                                                                                                                           |[0x800005d4]:srli a1, a0, 15<br> [0x800005d8]:sd a1, 176(sp)<br>    |
|  44|[0x80003368]<br>0x0000000000000100|- rs1_val == 67108864<br>                                                                                                                                           |[0x800005e0]:srli a1, a0, 18<br> [0x800005e4]:sd a1, 184(sp)<br>    |
|  45|[0x80003370]<br>0x0000000000000000|- rs1_val == 134217728<br>                                                                                                                                          |[0x800005ec]:srli a1, a0, 30<br> [0x800005f0]:sd a1, 192(sp)<br>    |
|  46|[0x80003378]<br>0x0000000000080000|- rs1_val == 268435456<br>                                                                                                                                          |[0x800005f8]:srli a1, a0, 9<br> [0x800005fc]:sd a1, 200(sp)<br>     |
|  47|[0x80003380]<br>0x0000000000000000|- rs1_val == 536870912<br>                                                                                                                                          |[0x80000604]:srli a1, a0, 30<br> [0x80000608]:sd a1, 208(sp)<br>    |
|  48|[0x80003388]<br>0x0000000000002000|- rs1_val == 1073741824<br>                                                                                                                                         |[0x80000610]:srli a1, a0, 17<br> [0x80000614]:sd a1, 216(sp)<br>    |
|  49|[0x80003390]<br>0x0000000000000010|- rs1_val == 2147483648<br>                                                                                                                                         |[0x80000620]:srli a1, a0, 27<br> [0x80000624]:sd a1, 224(sp)<br>    |
|  50|[0x80003398]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                                                                         |[0x80000630]:srli a1, a0, 9<br> [0x80000634]:sd a1, 232(sp)<br>     |
|  51|[0x800033a0]<br>0x0000000000000000|- rs1_val == 8589934592<br>                                                                                                                                         |[0x80000640]:srli a1, a0, 14<br> [0x80000644]:sd a1, 240(sp)<br>    |
|  52|[0x800033a8]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                                                                        |[0x80000650]:srli a1, a0, 18<br> [0x80000654]:sd a1, 248(sp)<br>    |
|  53|[0x800033b0]<br>0x0000000000000000|- rs1_val == 34359738368<br>                                                                                                                                        |[0x80000660]:srli a1, a0, 0<br> [0x80000664]:sd a1, 256(sp)<br>     |
|  54|[0x800033b8]<br>0x0000000000000000|- rs1_val == 68719476736<br>                                                                                                                                        |[0x80000670]:srli a1, a0, 12<br> [0x80000674]:sd a1, 264(sp)<br>    |
|  55|[0x800033c0]<br>0x0000000000000000|- rs1_val == 137438953472<br>                                                                                                                                       |[0x80000680]:srli a1, a0, 6<br> [0x80000684]:sd a1, 272(sp)<br>     |
|  56|[0x800033c8]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                                                                       |[0x80000690]:srli a1, a0, 21<br> [0x80000694]:sd a1, 280(sp)<br>    |
|  57|[0x800033d0]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                                                                       |[0x800006a0]:srli a1, a0, 31<br> [0x800006a4]:sd a1, 288(sp)<br>    |
|  58|[0x800033d8]<br>0x0000000000000000|- rs1_val == 1099511627776<br>                                                                                                                                      |[0x800006b0]:srli a1, a0, 13<br> [0x800006b4]:sd a1, 296(sp)<br>    |
|  59|[0x800033e0]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                                                      |[0x800006c0]:srli a1, a0, 30<br> [0x800006c4]:sd a1, 304(sp)<br>    |
|  60|[0x800033e8]<br>0x0000000000000000|- rs1_val == 4398046511104<br>                                                                                                                                      |[0x800006d0]:srli a1, a0, 31<br> [0x800006d4]:sd a1, 312(sp)<br>    |
|  61|[0x800033f0]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                                                     |[0x800006e0]:srli a1, a0, 8<br> [0x800006e4]:sd a1, 320(sp)<br>     |
|  62|[0x800033f8]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                                                     |[0x800006f0]:srli a1, a0, 19<br> [0x800006f4]:sd a1, 328(sp)<br>    |
|  63|[0x80003400]<br>0x0000000000000000|- rs1_val == 70368744177664<br>                                                                                                                                     |[0x80000700]:srli a1, a0, 30<br> [0x80000704]:sd a1, 336(sp)<br>    |
|  64|[0x80003408]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                                                    |[0x80000710]:srli a1, a0, 19<br> [0x80000714]:sd a1, 344(sp)<br>    |
|  65|[0x80003410]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                                                    |[0x80000720]:srli a1, a0, 15<br> [0x80000724]:sd a1, 352(sp)<br>    |
|  66|[0x80003418]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                                                                    |[0x80000730]:srli a1, a0, 3<br> [0x80000734]:sd a1, 360(sp)<br>     |
|  67|[0x80003420]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                                                   |[0x80000740]:srli a1, a0, 16<br> [0x80000744]:sd a1, 368(sp)<br>    |
|  68|[0x80003428]<br>0x0000000000000000|- rs1_val == 2251799813685248<br>                                                                                                                                   |[0x80000750]:srli a1, a0, 3<br> [0x80000754]:sd a1, 376(sp)<br>     |
|  69|[0x80003430]<br>0x0000000000000000|- rs1_val == 4503599627370496<br>                                                                                                                                   |[0x80000760]:srli a1, a0, 29<br> [0x80000764]:sd a1, 384(sp)<br>    |
|  70|[0x80003438]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                                                  |[0x80000770]:srli a1, a0, 11<br> [0x80000774]:sd a1, 392(sp)<br>    |
|  71|[0x80003440]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                                                  |[0x80000780]:srli a1, a0, 7<br> [0x80000784]:sd a1, 400(sp)<br>     |
|  72|[0x80003448]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                                                                  |[0x80000790]:srli a1, a0, 21<br> [0x80000794]:sd a1, 408(sp)<br>    |
|  73|[0x80003450]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                                                 |[0x800007a0]:srli a1, a0, 10<br> [0x800007a4]:sd a1, 416(sp)<br>    |
|  74|[0x80003458]<br>0x000000007FFFFFFF|- rs1_val == -2199023255553<br>                                                                                                                                     |[0x800007b4]:srli a1, a0, 1<br> [0x800007b8]:sd a1, 424(sp)<br>     |
|  75|[0x80003460]<br>0x0000000000000001|- rs1_val == -4398046511105<br>                                                                                                                                     |[0x800007c8]:srli a1, a0, 31<br> [0x800007cc]:sd a1, 432(sp)<br>    |
|  76|[0x80003468]<br>0x000000000FFFFFFF|- rs1_val == -8796093022209<br>                                                                                                                                     |[0x800007dc]:srli a1, a0, 4<br> [0x800007e0]:sd a1, 440(sp)<br>     |
|  77|[0x80003470]<br>0x000000000FFFFFFF|- rs1_val == -17592186044417<br>                                                                                                                                    |[0x800007f0]:srli a1, a0, 4<br> [0x800007f4]:sd a1, 448(sp)<br>     |
|  78|[0x80003478]<br>0x0000000003FFFFFF|- rs1_val == -35184372088833<br>                                                                                                                                    |[0x80000804]:srli a1, a0, 6<br> [0x80000808]:sd a1, 456(sp)<br>     |
|  79|[0x80003480]<br>0x0000000001FFFFFF|- rs1_val == -70368744177665<br>                                                                                                                                    |[0x80000818]:srli a1, a0, 7<br> [0x8000081c]:sd a1, 464(sp)<br>     |
|  80|[0x80003488]<br>0x000000003FFFFFFF|- rs1_val == -140737488355329<br>                                                                                                                                   |[0x8000082c]:srli a1, a0, 2<br> [0x80000830]:sd a1, 472(sp)<br>     |
|  81|[0x80003490]<br>0x000000000FFFFFFF|- rs1_val == -281474976710657<br>                                                                                                                                   |[0x80000840]:srli a1, a0, 4<br> [0x80000844]:sd a1, 480(sp)<br>     |
|  82|[0x80003498]<br>0x00000000000FFFFF|- rs1_val == -562949953421313<br>                                                                                                                                   |[0x80000854]:srli a1, a0, 12<br> [0x80000858]:sd a1, 488(sp)<br>    |
|  83|[0x800034a0]<br>0x0000000003FFFFFF|- rs1_val == -1125899906842625<br>                                                                                                                                  |[0x80000868]:srli a1, a0, 6<br> [0x8000086c]:sd a1, 496(sp)<br>     |
|  84|[0x800034a8]<br>0x00000000001FFFFF|- rs1_val == -2251799813685249<br>                                                                                                                                  |[0x8000087c]:srli a1, a0, 11<br> [0x80000880]:sd a1, 504(sp)<br>    |
|  85|[0x800034b0]<br>0x000000000001FFFF|- rs1_val == -4503599627370497<br>                                                                                                                                  |[0x80000890]:srli a1, a0, 15<br> [0x80000894]:sd a1, 512(sp)<br>    |
|  86|[0x800034b8]<br>0x00000000001FFFFF|- rs1_val == -18014398509481985<br>                                                                                                                                 |[0x800008a4]:srli a1, a0, 11<br> [0x800008a8]:sd a1, 520(sp)<br>    |
|  87|[0x800034c0]<br>0x000000000000001F|- rs1_val == -36028797018963969<br>                                                                                                                                 |[0x800008b8]:srli a1, a0, 27<br> [0x800008bc]:sd a1, 528(sp)<br>    |
|  88|[0x800034c8]<br>0x00000000003FFFFF|- rs1_val == -72057594037927937<br>                                                                                                                                 |[0x800008cc]:srli a1, a0, 10<br> [0x800008d0]:sd a1, 536(sp)<br>    |
|  89|[0x800034d0]<br>0x0000000007FFFFFF|- rs1_val == -144115188075855873<br>                                                                                                                                |[0x800008e0]:srli a1, a0, 5<br> [0x800008e4]:sd a1, 544(sp)<br>     |
|  90|[0x800034d8]<br>0x0000000000007FFF|- rs1_val == -288230376151711745<br>                                                                                                                                |[0x800008f4]:srli a1, a0, 17<br> [0x800008f8]:sd a1, 552(sp)<br>    |
|  91|[0x800034e0]<br>0x0000000000003FFF|- rs1_val == -576460752303423489<br>                                                                                                                                |[0x80000908]:srli a1, a0, 18<br> [0x8000090c]:sd a1, 560(sp)<br>    |
|  92|[0x800034e8]<br>0x00000000001FFFFF|- rs1_val == -1152921504606846977<br>                                                                                                                               |[0x8000091c]:srli a1, a0, 11<br> [0x80000920]:sd a1, 568(sp)<br>    |
|  93|[0x800034f0]<br>0x000000000001FFFF|- rs1_val == -2305843009213693953<br>                                                                                                                               |[0x80000930]:srli a1, a0, 15<br> [0x80000934]:sd a1, 576(sp)<br>    |
|  94|[0x800034f8]<br>0x000000003FFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                                               |[0x80000944]:srli a1, a0, 2<br> [0x80000948]:sd a1, 584(sp)<br>     |
|  95|[0x80003500]<br>0x0000000000001555|- rs1_val == 6148914691236517205<br>                                                                                                                                |[0x8000096c]:srli a1, a0, 18<br> [0x80000970]:sd a1, 592(sp)<br>    |
|  96|[0x80003508]<br>0x000000000AAAAAAA|- rs1_val == -6148914691236517206<br>                                                                                                                               |[0x80000994]:srli a1, a0, 4<br> [0x80000998]:sd a1, 600(sp)<br>     |
|  97|[0x80003510]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                                |[0x800009a4]:srli a1, a0, 5<br> [0x800009a8]:sd a1, 608(sp)<br>     |
|  98|[0x80003518]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                                |[0x800009b4]:srli a1, a0, 3<br> [0x800009b8]:sd a1, 616(sp)<br>     |
|  99|[0x80003520]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                                |[0x800009c4]:srli a1, a0, 8<br> [0x800009c8]:sd a1, 624(sp)<br>     |
| 100|[0x80003528]<br>0x0000000003FFFFFF|- rs1_val == -2<br>                                                                                                                                                 |[0x800009d0]:srli a1, a0, 6<br> [0x800009d4]:sd a1, 632(sp)<br>     |
| 101|[0x80003530]<br>0xFFFFFFFFFFFFFFFD|- rs1_val == -3<br>                                                                                                                                                 |[0x800009dc]:srli a1, a0, 0<br> [0x800009e0]:sd a1, 640(sp)<br>     |
| 102|[0x80003538]<br>0x0000000003FFFFFF|- rs1_val == -9<br>                                                                                                                                                 |[0x800009e8]:srli a1, a0, 6<br> [0x800009ec]:sd a1, 648(sp)<br>     |
| 103|[0x80003540]<br>0x0000000007FFFFFE|- rs1_val == -33<br>                                                                                                                                                |[0x800009f4]:srli a1, a0, 5<br> [0x800009f8]:sd a1, 656(sp)<br>     |
| 104|[0x80003548]<br>0x0000000003FFFFFE|- rs1_val == -65<br>                                                                                                                                                |[0x80000a00]:srli a1, a0, 6<br> [0x80000a04]:sd a1, 664(sp)<br>     |
| 105|[0x80003550]<br>0x00000000000FFFFF|- rs1_val == -129<br>                                                                                                                                               |[0x80000a0c]:srli a1, a0, 12<br> [0x80000a10]:sd a1, 672(sp)<br>    |
| 106|[0x80003558]<br>0x000000000003FFFF|- rs1_val == -257<br>                                                                                                                                               |[0x80000a18]:srli a1, a0, 14<br> [0x80000a1c]:sd a1, 680(sp)<br>    |
| 107|[0x80003560]<br>0x000000000FFFFFDF|- rs1_val == -513<br>                                                                                                                                               |[0x80000a24]:srli a1, a0, 4<br> [0x80000a28]:sd a1, 688(sp)<br>     |
| 108|[0x80003568]<br>0x00000000000001FF|- rs1_val == -1025<br>                                                                                                                                              |[0x80000a30]:srli a1, a0, 23<br> [0x80000a34]:sd a1, 696(sp)<br>    |
| 109|[0x80003570]<br>0x000000000000001F|- rs1_val == -2049<br>                                                                                                                                              |[0x80000a40]:srli a1, a0, 27<br> [0x80000a44]:sd a1, 704(sp)<br>    |
| 110|[0x80003578]<br>0x000000003FFFFBFF|- rs1_val == -4097<br>                                                                                                                                              |[0x80000a50]:srli a1, a0, 2<br> [0x80000a54]:sd a1, 712(sp)<br>     |
| 111|[0x80003580]<br>0x00000000003FFFF7|- rs1_val == -8193<br>                                                                                                                                              |[0x80000a60]:srli a1, a0, 10<br> [0x80000a64]:sd a1, 720(sp)<br>    |
| 112|[0x80003588]<br>0x0000000000001FFF|- rs1_val == -16385<br>                                                                                                                                             |[0x80000a70]:srli a1, a0, 19<br> [0x80000a74]:sd a1, 728(sp)<br>    |
| 113|[0x80003590]<br>0x000000000007FFFB|- rs1_val == -32769<br>                                                                                                                                             |[0x80000a80]:srli a1, a0, 13<br> [0x80000a84]:sd a1, 736(sp)<br>    |
| 114|[0x80003598]<br>0x0000000007FFF7FF|- rs1_val == -65537<br>                                                                                                                                             |[0x80000a90]:srli a1, a0, 5<br> [0x80000a94]:sd a1, 744(sp)<br>     |
| 115|[0x800035a0]<br>0x0000000000FFFBFF|- rs1_val == -262145<br>                                                                                                                                            |[0x80000aa0]:srli a1, a0, 8<br> [0x80000aa4]:sd a1, 752(sp)<br>     |
| 116|[0x800035a8]<br>0x000000000000FFF7|- rs1_val == -524289<br>                                                                                                                                            |[0x80000ab0]:srli a1, a0, 16<br> [0x80000ab4]:sd a1, 760(sp)<br>    |
| 117|[0x800035b0]<br>0x00000000000001FF|- rs1_val == -1048577<br>                                                                                                                                           |[0x80000ac0]:srli a1, a0, 23<br> [0x80000ac4]:sd a1, 768(sp)<br>    |
| 118|[0x800035b8]<br>0x0000000000FFDFFF|- rs1_val == -2097153<br>                                                                                                                                           |[0x80000ad0]:srli a1, a0, 8<br> [0x80000ad4]:sd a1, 776(sp)<br>     |
| 119|[0x800035c0]<br>0x0000000000000001|- rs1_val == -4194305<br>                                                                                                                                           |[0x80000ae0]:srli a1, a0, 31<br> [0x80000ae4]:sd a1, 784(sp)<br>    |
| 120|[0x800035c8]<br>0x0000000000000003|- rs1_val == -8388609<br>                                                                                                                                           |[0x80000af0]:srli a1, a0, 30<br> [0x80000af4]:sd a1, 792(sp)<br>    |
| 121|[0x800035d0]<br>0x00000000000001FB|- rs1_val == -33554433<br>                                                                                                                                          |[0x80000b00]:srli a1, a0, 23<br> [0x80000b04]:sd a1, 800(sp)<br>    |
| 122|[0x800035d8]<br>0x0000000001F7FFFF|- rs1_val == -67108865<br>                                                                                                                                          |[0x80000b10]:srli a1, a0, 7<br> [0x80000b14]:sd a1, 808(sp)<br>     |
| 123|[0x800035e0]<br>0x0000000000000003|- rs1_val == -134217729<br>                                                                                                                                         |[0x80000b20]:srli a1, a0, 30<br> [0x80000b24]:sd a1, 816(sp)<br>    |
| 124|[0x800035e8]<br>0x0000000003BFFFFF|- rs1_val == -268435457<br>                                                                                                                                         |[0x80000b30]:srli a1, a0, 6<br> [0x80000b34]:sd a1, 824(sp)<br>     |
| 125|[0x800035f0]<br>0x00000000000DFFFF|- rs1_val == -536870913<br>                                                                                                                                         |[0x80000b40]:srli a1, a0, 12<br> [0x80000b44]:sd a1, 832(sp)<br>    |
| 126|[0x800035f8]<br>0x00000000002FFFFF|- rs1_val == -1073741825<br>                                                                                                                                        |[0x80000b50]:srli a1, a0, 10<br> [0x80000b54]:sd a1, 840(sp)<br>    |
| 127|[0x80003600]<br>0x00000000000FFFFF|- rs1_val == -2147483649<br>                                                                                                                                        |[0x80000b64]:srli a1, a0, 11<br> [0x80000b68]:sd a1, 848(sp)<br>    |
| 128|[0x80003608]<br>0x000000000000FFFF|- rs1_val == -4294967297<br>                                                                                                                                        |[0x80000b78]:srli a1, a0, 16<br> [0x80000b7c]:sd a1, 856(sp)<br>    |
| 129|[0x80003610]<br>0x0000000000000007|- rs1_val == -8589934593<br>                                                                                                                                        |[0x80000b8c]:srli a1, a0, 29<br> [0x80000b90]:sd a1, 864(sp)<br>    |
| 130|[0x80003618]<br>0x0000000001FFFFFF|- rs1_val == -17179869185<br>                                                                                                                                       |[0x80000ba0]:srli a1, a0, 7<br> [0x80000ba4]:sd a1, 872(sp)<br>     |
| 131|[0x80003620]<br>0x000000000000001F|- rs1_val == -34359738369<br>                                                                                                                                       |[0x80000bb4]:srli a1, a0, 27<br> [0x80000bb8]:sd a1, 880(sp)<br>    |
| 132|[0x80003628]<br>0x00000000000001FF|- rs1_val == -68719476737<br>                                                                                                                                       |[0x80000bc8]:srli a1, a0, 23<br> [0x80000bcc]:sd a1, 888(sp)<br>    |
| 133|[0x80003630]<br>0x0000000000000003|- rs1_val == -137438953473<br>                                                                                                                                      |[0x80000bdc]:srli a1, a0, 30<br> [0x80000be0]:sd a1, 896(sp)<br>    |
| 134|[0x80003638]<br>0x00000000000001FF|- rs1_val == -274877906945<br>                                                                                                                                      |[0x80000bf0]:srli a1, a0, 23<br> [0x80000bf4]:sd a1, 904(sp)<br>    |
| 135|[0x80003640]<br>0x000000007FFFFFFF|- rs1_val == -549755813889<br>                                                                                                                                      |[0x80000c04]:srli a1, a0, 1<br> [0x80000c08]:sd a1, 912(sp)<br>     |
| 136|[0x80003648]<br>0x000000007FFFFFFF|- rs1_val == -1099511627777<br>                                                                                                                                     |[0x80000c18]:srli a1, a0, 1<br> [0x80000c1c]:sd a1, 920(sp)<br>     |
