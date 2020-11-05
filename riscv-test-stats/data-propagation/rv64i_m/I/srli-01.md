
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
| COV_LABELS                | srli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srli-01.S/srli-01.S    |
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
      [0x80000bf0]:srli a1, a0, 62
      [0x80000bf4]:sd a1, 888(tp)
 -- Signature Address: 0x80003630 Data: 0x0000000000000002
 -- Redundant Coverpoints hit by the op
      - opcode : srli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val < 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen
      - rs1_val == -9223372036854775808
      - imm_val == 62






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

|s.no|            signature             |                                                                               coverpoints                                                                                |                                code                                |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000FFFFFDFFFFFF|- opcode : srli<br> - rs1 : x5<br> - rd : x5<br> - rs1 == rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == -2199023255553<br> - imm_val == 16<br> |[0x800003a4]:srli t0, t0, 16<br> [0x800003a8]:sd t0, 0(a6)<br>      |
|   2|[0x80003218]<br>0x0000000100000000|- rs1 : x22<br> - rd : x18<br> - rs1 != rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == 17179869184<br> - imm_val == 2<br>                       |[0x800003b4]:srli s2, s6, 2<br> [0x800003b8]:sd s2, 8(a6)<br>       |
|   3|[0x80003220]<br>0xFFFFFFFFFFFFFFBF|- rs1 : x24<br> - rd : x7<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -65<br>                                                                                     |[0x800003c0]:srli t2, s8, 0<br> [0x800003c4]:sd t2, 16(a6)<br>      |
|   4|[0x80003228]<br>0x0000000000100000|- rs1 : x30<br> - rd : x15<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 1048576<br>                                                                                |[0x800003cc]:srli a5, t5, 0<br> [0x800003d0]:sd a5, 24(a6)<br>      |
|   5|[0x80003230]<br>0x0000000000000001|- rs1 : x14<br> - rd : x17<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -4294967297<br>                                                                     |[0x800003e0]:srli a7, a4, 63<br> [0x800003e4]:sd a7, 32(a6)<br>     |
|   6|[0x80003238]<br>0x0000000000000000|- rs1 : x9<br> - rd : x13<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 536870912<br>                                                                        |[0x800003ec]:srli a3, s1, 63<br> [0x800003f0]:sd a3, 40(a6)<br>     |
|   7|[0x80003240]<br>0x0000000000000000|- rs1 : x10<br> - rd : x6<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val == 8<br> - imm_val == 8<br>                                           |[0x800003f8]:srli t1, a0, 8<br> [0x800003fc]:sd t1, 48(a6)<br>      |
|   8|[0x80003248]<br>0x0000000000000000|- rs1 : x13<br> - rd : x0<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -9223372036854775808<br> - imm_val == 62<br>               |[0x80000408]:srli zero, a3, 62<br> [0x8000040c]:sd zero, 56(a6)<br> |
|   9|[0x80003250]<br>0x0000000000000000|- rs1 : x6<br> - rd : x26<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br>                                                                                      |[0x80000414]:srli s10, t1, 0<br> [0x80000418]:sd s10, 64(a6)<br>    |
|  10|[0x80003258]<br>0x000000007FFFFFFF|- rs1 : x12<br> - rd : x2<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 9223372036854775807<br> - imm_val == 32<br>               |[0x80000428]:srli sp, a2, 32<br> [0x8000042c]:sd sp, 72(a6)<br>     |
|  11|[0x80003260]<br>0x0000000000000000|- rs1 : x23<br> - rd : x14<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br>                                                                  |[0x80000434]:srli a4, s7, 13<br> [0x80000438]:sd a4, 80(a6)<br>     |
|  12|[0x80003268]<br>0x7FFFFFFBFFFFFFFF|- rs1 : x4<br> - rd : x31<br> - rs1_val == -34359738369<br> - imm_val == 1<br>                                                                                            |[0x80000448]:srli t6, tp, 1<br> [0x8000044c]:sd t6, 88(a6)<br>      |
|  13|[0x80003270]<br>0x0FFBFFFFFFFFFFFF|- rs1 : x27<br> - rd : x30<br> - rs1_val == -18014398509481985<br> - imm_val == 4<br>                                                                                     |[0x8000045c]:srli t5, s11, 4<br> [0x80000460]:sd t5, 96(a6)<br>     |
|  14|[0x80003278]<br>0x0000000000000007|- rs1 : x8<br> - rd : x9<br> - rs1_val == -4398046511105<br> - imm_val == 61<br>                                                                                          |[0x80000470]:srli s1, fp, 61<br> [0x80000474]:sd s1, 104(a6)<br>    |
|  15|[0x80003280]<br>0x0000000000000000|- rs1 : x29<br> - rd : x19<br> - rs1_val == 1073741824<br> - imm_val == 59<br>                                                                                            |[0x8000047c]:srli s3, t4, 59<br> [0x80000480]:sd s3, 112(a6)<br>    |
|  16|[0x80003288]<br>0x0000000000000000|- rs1 : x18<br> - rd : x23<br> - rs1_val == 1024<br> - imm_val == 55<br>                                                                                                  |[0x80000488]:srli s7, s2, 55<br> [0x8000048c]:sd s7, 120(a6)<br>    |
|  17|[0x80003290]<br>0x0000000000000000|- rs1 : x21<br> - rd : x1<br> - imm_val == 47<br>                                                                                                                         |[0x80000494]:srli ra, s5, 47<br> [0x80000498]:sd ra, 128(a6)<br>    |
|  18|[0x80003298]<br>0x0000000000000000|- rs1 : x28<br> - rd : x11<br> - rs1_val == 67108864<br> - imm_val == 31<br>                                                                                              |[0x800004a0]:srli a1, t3, 31<br> [0x800004a4]:sd a1, 136(a6)<br>    |
|  19|[0x800032a0]<br>0x0000010000000000|- rs1 : x11<br> - rd : x24<br> - rs1_val == 2305843009213693952<br> - imm_val == 21<br>                                                                                   |[0x800004b0]:srli s8, a1, 21<br> [0x800004b4]:sd s8, 144(a6)<br>    |
|  20|[0x800032a8]<br>0x0000000000000000|- rs1 : x31<br> - rd : x4<br> - rs1_val == 4294967296<br> - imm_val == 42<br>                                                                                             |[0x800004c0]:srli tp, t6, 42<br> [0x800004c4]:sd tp, 152(a6)<br>    |
|  21|[0x800032b0]<br>0x0000000000000000|- rs1 : x3<br> - rd : x20<br> - rs1_val == 2<br>                                                                                                                          |[0x800004cc]:srli s4, gp, 17<br> [0x800004d0]:sd s4, 160(a6)<br>    |
|  22|[0x800032b8]<br>0x0000000000000000|- rs1 : x7<br> - rd : x22<br> - rs1_val == 4<br>                                                                                                                          |[0x800004e0]:srli s6, t2, 8<br> [0x800004e4]:sd s6, 0(tp)<br>       |
|  23|[0x800032c0]<br>0x0000000000000000|- rs1 : x1<br> - rd : x10<br> - rs1_val == 16<br>                                                                                                                         |[0x800004ec]:srli a0, ra, 8<br> [0x800004f0]:sd a0, 8(tp)<br>       |
|  24|[0x800032c8]<br>0x0000000000000000|- rs1 : x0<br> - rd : x27<br>                                                                                                                                             |[0x800004f8]:srli s11, zero, 47<br> [0x800004fc]:sd s11, 16(tp)<br> |
|  25|[0x800032d0]<br>0x0000000000000000|- rs1 : x16<br> - rd : x25<br> - rs1_val == 64<br>                                                                                                                        |[0x80000504]:srli s9, a6, 31<br> [0x80000508]:sd s9, 24(tp)<br>     |
|  26|[0x800032d8]<br>0x0000000000000000|- rs1 : x20<br> - rd : x8<br> - rs1_val == 128<br>                                                                                                                        |[0x80000510]:srli fp, s4, 21<br> [0x80000514]:sd fp, 32(tp)<br>     |
|  27|[0x800032e0]<br>0x0000000000000000|- rs1 : x2<br> - rd : x3<br> - rs1_val == 256<br>                                                                                                                         |[0x8000051c]:srli gp, sp, 47<br> [0x80000520]:sd gp, 40(tp)<br>     |
|  28|[0x800032e8]<br>0x0000000000000000|- rs1 : x25<br> - rd : x16<br> - rs1_val == 512<br>                                                                                                                       |[0x80000528]:srli a6, s9, 61<br> [0x8000052c]:sd a6, 48(tp)<br>     |
|  29|[0x800032f0]<br>0x0000000000000000|- rs1 : x26<br> - rd : x28<br> - rs1_val == 2048<br>                                                                                                                      |[0x80000538]:srli t3, s10, 17<br> [0x8000053c]:sd t3, 56(tp)<br>    |
|  30|[0x800032f8]<br>0x0000000000000000|- rs1 : x17<br> - rd : x21<br> - rs1_val == 4096<br>                                                                                                                      |[0x80000544]:srli s5, a7, 18<br> [0x80000548]:sd s5, 64(tp)<br>     |
|  31|[0x80003300]<br>0x0000000000000000|- rs1 : x15<br> - rd : x12<br> - rs1_val == 8192<br>                                                                                                                      |[0x80000550]:srli a2, a5, 59<br> [0x80000554]:sd a2, 72(tp)<br>     |
|  32|[0x80003308]<br>0x0000000000000008|- rs1 : x19<br> - rd : x29<br> - rs1_val == 16384<br>                                                                                                                     |[0x8000055c]:srli t4, s3, 11<br> [0x80000560]:sd t4, 80(tp)<br>     |
|  33|[0x80003310]<br>0x0000000000001000|- rs1_val == 32768<br>                                                                                                                                                    |[0x80000568]:srli a1, a0, 3<br> [0x8000056c]:sd a1, 88(tp)<br>      |
|  34|[0x80003318]<br>0x0000000000008000|- rs1_val == 65536<br>                                                                                                                                                    |[0x80000574]:srli a1, a0, 1<br> [0x80000578]:sd a1, 96(tp)<br>      |
|  35|[0x80003320]<br>0x0000000000000000|- rs1_val == 131072<br>                                                                                                                                                   |[0x80000580]:srli a1, a0, 18<br> [0x80000584]:sd a1, 104(tp)<br>    |
|  36|[0x80003328]<br>0x0000000000004000|- rs1_val == 262144<br>                                                                                                                                                   |[0x8000058c]:srli a1, a0, 4<br> [0x80000590]:sd a1, 112(tp)<br>     |
|  37|[0x80003330]<br>0x0000000000000010|- rs1_val == 524288<br>                                                                                                                                                   |[0x80000598]:srli a1, a0, 15<br> [0x8000059c]:sd a1, 120(tp)<br>    |
|  38|[0x80003338]<br>0x0000000000000000|- rs1_val == 2097152<br>                                                                                                                                                  |[0x800005a4]:srli a1, a0, 47<br> [0x800005a8]:sd a1, 128(tp)<br>    |
|  39|[0x80003340]<br>0x0000000000000010|- rs1_val == 4194304<br>                                                                                                                                                  |[0x800005b0]:srli a1, a0, 18<br> [0x800005b4]:sd a1, 136(tp)<br>    |
|  40|[0x80003348]<br>0x0000000000000000|- rs1_val == 8388608<br>                                                                                                                                                  |[0x800005bc]:srli a1, a0, 31<br> [0x800005c0]:sd a1, 144(tp)<br>    |
|  41|[0x80003350]<br>0x0000000000000400|- rs1_val == 16777216<br>                                                                                                                                                 |[0x800005c8]:srli a1, a0, 14<br> [0x800005cc]:sd a1, 152(tp)<br>    |
|  42|[0x80003358]<br>0x0000000000000200|- rs1_val == 33554432<br>                                                                                                                                                 |[0x800005d4]:srli a1, a0, 16<br> [0x800005d8]:sd a1, 160(tp)<br>    |
|  43|[0x80003360]<br>0x0000000000001000|- rs1_val == 134217728<br>                                                                                                                                                |[0x800005e0]:srli a1, a0, 15<br> [0x800005e4]:sd a1, 168(tp)<br>    |
|  44|[0x80003368]<br>0x0000000000000000|- rs1_val == 268435456<br>                                                                                                                                                |[0x800005ec]:srli a1, a0, 61<br> [0x800005f0]:sd a1, 176(tp)<br>    |
|  45|[0x80003370]<br>0x0000000000000000|- rs1_val == 2147483648<br>                                                                                                                                               |[0x800005fc]:srli a1, a0, 55<br> [0x80000600]:sd a1, 184(tp)<br>    |
|  46|[0x80003378]<br>0x0000000000200000|- rs1_val == 8589934592<br>                                                                                                                                               |[0x8000060c]:srli a1, a0, 12<br> [0x80000610]:sd a1, 192(tp)<br>    |
|  47|[0x80003380]<br>0x0000000000000000|- rs1_val == 34359738368<br>                                                                                                                                              |[0x8000061c]:srli a1, a0, 55<br> [0x80000620]:sd a1, 200(tp)<br>    |
|  48|[0x80003388]<br>0x0000000080000000|- rs1_val == 68719476736<br>                                                                                                                                              |[0x8000062c]:srli a1, a0, 5<br> [0x80000630]:sd a1, 208(tp)<br>     |
|  49|[0x80003390]<br>0x0000000000000000|- rs1_val == 137438953472<br>                                                                                                                                             |[0x8000063c]:srli a1, a0, 47<br> [0x80000640]:sd a1, 216(tp)<br>    |
|  50|[0x80003398]<br>0x0000000000020000|- rs1_val == 274877906944<br>                                                                                                                                             |[0x8000064c]:srli a1, a0, 21<br> [0x80000650]:sd a1, 224(tp)<br>    |
|  51|[0x800033a0]<br>0x0000000000100000|- rs1_val == 549755813888<br>                                                                                                                                             |[0x8000065c]:srli a1, a0, 19<br> [0x80000660]:sd a1, 232(tp)<br>    |
|  52|[0x800033a8]<br>0x0000000004000000|- rs1_val == 1099511627776<br>                                                                                                                                            |[0x8000066c]:srli a1, a0, 14<br> [0x80000670]:sd a1, 240(tp)<br>    |
|  53|[0x800033b0]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                                                            |[0x8000067c]:srli a1, a0, 61<br> [0x80000680]:sd a1, 248(tp)<br>    |
|  54|[0x800033b8]<br>0x0000000000000001|- rs1_val == 4398046511104<br>                                                                                                                                            |[0x8000068c]:srli a1, a0, 42<br> [0x80000690]:sd a1, 256(tp)<br>    |
|  55|[0x800033c0]<br>0x0000000008000000|- rs1_val == 8796093022208<br>                                                                                                                                            |[0x8000069c]:srli a1, a0, 16<br> [0x800006a0]:sd a1, 264(tp)<br>    |
|  56|[0x800033c8]<br>0x0000020000000000|- rs1_val == 17592186044416<br>                                                                                                                                           |[0x800006ac]:srli a1, a0, 3<br> [0x800006b0]:sd a1, 272(tp)<br>     |
|  57|[0x800033d0]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                                                           |[0x800006bc]:srli a1, a0, 63<br> [0x800006c0]:sd a1, 280(tp)<br>    |
|  58|[0x800033d8]<br>0x0000000000000000|- rs1_val == 70368744177664<br>                                                                                                                                           |[0x800006cc]:srli a1, a0, 63<br> [0x800006d0]:sd a1, 288(tp)<br>    |
|  59|[0x800033e0]<br>0x0000000200000000|- rs1_val == 140737488355328<br>                                                                                                                                          |[0x800006dc]:srli a1, a0, 14<br> [0x800006e0]:sd a1, 296(tp)<br>    |
|  60|[0x800033e8]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                                                          |[0x800006ec]:srli a1, a0, 63<br> [0x800006f0]:sd a1, 304(tp)<br>    |
|  61|[0x800033f0]<br>0x0001000000000000|- rs1_val == 562949953421312<br>                                                                                                                                          |[0x800006fc]:srli a1, a0, 1<br> [0x80000700]:sd a1, 312(tp)<br>     |
|  62|[0x800033f8]<br>0x0000000100000000|- rs1_val == 1125899906842624<br>                                                                                                                                         |[0x8000070c]:srli a1, a0, 18<br> [0x80000710]:sd a1, 320(tp)<br>    |
|  63|[0x80003400]<br>0x0000000000080000|- rs1_val == 2251799813685248<br>                                                                                                                                         |[0x8000071c]:srli a1, a0, 32<br> [0x80000720]:sd a1, 328(tp)<br>    |
|  64|[0x80003408]<br>0x0000080000000000|- rs1_val == 4503599627370496<br>                                                                                                                                         |[0x8000072c]:srli a1, a0, 9<br> [0x80000730]:sd a1, 336(tp)<br>     |
|  65|[0x80003410]<br>0x0000200000000000|- rs1_val == 9007199254740992<br>                                                                                                                                         |[0x8000073c]:srli a1, a0, 8<br> [0x80000740]:sd a1, 344(tp)<br>     |
|  66|[0x80003418]<br>0x0000000000001000|- rs1_val == 18014398509481984<br>                                                                                                                                        |[0x8000074c]:srli a1, a0, 42<br> [0x80000750]:sd a1, 352(tp)<br>    |
|  67|[0x80003420]<br>0x0010000000000000|- rs1_val == 36028797018963968<br>                                                                                                                                        |[0x8000075c]:srli a1, a0, 3<br> [0x80000760]:sd a1, 360(tp)<br>     |
|  68|[0x80003428]<br>0x0000400000000000|- rs1_val == 72057594037927936<br>                                                                                                                                        |[0x8000076c]:srli a1, a0, 10<br> [0x80000770]:sd a1, 368(tp)<br>    |
|  69|[0x80003430]<br>0x0020000000000000|- rs1_val == 144115188075855872<br>                                                                                                                                       |[0x8000077c]:srli a1, a0, 4<br> [0x80000780]:sd a1, 376(tp)<br>     |
|  70|[0x80003438]<br>0x0000000000000003|- rs1_val == -549755813889<br>                                                                                                                                            |[0x80000790]:srli a1, a0, 62<br> [0x80000794]:sd a1, 384(tp)<br>    |
|  71|[0x80003440]<br>0x007FFFFF7FFFFFFF|- rs1_val == -1099511627777<br>                                                                                                                                           |[0x800007a4]:srli a1, a0, 9<br> [0x800007a8]:sd a1, 392(tp)<br>     |
|  72|[0x80003448]<br>0x00000000FFFFF7FF|- rs1_val == -8796093022209<br>                                                                                                                                           |[0x800007b8]:srli a1, a0, 32<br> [0x800007bc]:sd a1, 400(tp)<br>    |
|  73|[0x80003450]<br>0x00001FFFFDFFFFFF|- rs1_val == -17592186044417<br>                                                                                                                                          |[0x800007cc]:srli a1, a0, 19<br> [0x800007d0]:sd a1, 408(tp)<br>    |
|  74|[0x80003458]<br>0x0007FFFEFFFFFFFF|- rs1_val == -35184372088833<br>                                                                                                                                          |[0x800007e0]:srli a1, a0, 13<br> [0x800007e4]:sd a1, 416(tp)<br>    |
|  75|[0x80003460]<br>0x00FFFFBFFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                                                          |[0x800007f4]:srli a1, a0, 8<br> [0x800007f8]:sd a1, 424(tp)<br>     |
|  76|[0x80003468]<br>0x00000001FFFEFFFF|- rs1_val == -140737488355329<br>                                                                                                                                         |[0x80000808]:srli a1, a0, 31<br> [0x8000080c]:sd a1, 432(tp)<br>    |
|  77|[0x80003470]<br>0x0FFFEFFFFFFFFFFF|- rs1_val == -281474976710657<br>                                                                                                                                         |[0x8000081c]:srli a1, a0, 4<br> [0x80000820]:sd a1, 440(tp)<br>     |
|  78|[0x80003478]<br>0x00003FFF7FFFFFFF|- rs1_val == -562949953421313<br>                                                                                                                                         |[0x80000830]:srli a1, a0, 18<br> [0x80000834]:sd a1, 448(tp)<br>    |
|  79|[0x80003480]<br>0x00000001FFF7FFFF|- rs1_val == -1125899906842625<br>                                                                                                                                        |[0x80000844]:srli a1, a0, 31<br> [0x80000848]:sd a1, 456(tp)<br>    |
|  80|[0x80003488]<br>0x00FFF7FFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                                                        |[0x80000858]:srli a1, a0, 8<br> [0x8000085c]:sd a1, 464(tp)<br>     |
|  81|[0x80003490]<br>0x00000000FFEFFFFF|- rs1_val == -4503599627370497<br>                                                                                                                                        |[0x8000086c]:srli a1, a0, 32<br> [0x80000870]:sd a1, 472(tp)<br>    |
|  82|[0x80003498]<br>0x001FFBFFFFFFFFFF|- rs1_val == -9007199254740993<br>                                                                                                                                        |[0x80000880]:srli a1, a0, 11<br> [0x80000884]:sd a1, 480(tp)<br>    |
|  83|[0x800034a0]<br>0x00000000000001FE|- rs1_val == -36028797018963969<br>                                                                                                                                       |[0x80000894]:srli a1, a0, 55<br> [0x80000898]:sd a1, 488(tp)<br>    |
|  84|[0x800034a8]<br>0x00000001FDFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                                                       |[0x800008a8]:srli a1, a0, 31<br> [0x800008ac]:sd a1, 496(tp)<br>    |
|  85|[0x800034b0]<br>0x0000000000000007|- rs1_val == -144115188075855873<br>                                                                                                                                      |[0x800008bc]:srli a1, a0, 61<br> [0x800008c0]:sd a1, 504(tp)<br>    |
|  86|[0x800034b8]<br>0x000000000000001F|- rs1_val == -288230376151711745<br>                                                                                                                                      |[0x800008d0]:srli a1, a0, 59<br> [0x800008d4]:sd a1, 512(tp)<br>    |
|  87|[0x800034c0]<br>0x0000000000000003|- rs1_val == -576460752303423489<br>                                                                                                                                      |[0x800008e4]:srli a1, a0, 62<br> [0x800008e8]:sd a1, 520(tp)<br>    |
|  88|[0x800034c8]<br>0x000000000001DFFF|- rs1_val == -1152921504606846977<br>                                                                                                                                     |[0x800008f8]:srli a1, a0, 47<br> [0x800008fc]:sd a1, 528(tp)<br>    |
|  89|[0x800034d0]<br>0x00006FFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                                                     |[0x8000090c]:srli a1, a0, 17<br> [0x80000910]:sd a1, 536(tp)<br>    |
|  90|[0x800034d8]<br>0x0BFFFFFFFFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                                                     |[0x80000920]:srli a1, a0, 4<br> [0x80000924]:sd a1, 544(tp)<br>     |
|  91|[0x800034e0]<br>0x0000AAAAAAAAAAAA|- rs1_val == 6148914691236517205<br>                                                                                                                                      |[0x80000948]:srli a1, a0, 15<br> [0x8000094c]:sd a1, 552(tp)<br>    |
|  92|[0x800034e8]<br>0x0000155555555555|- rs1_val == -6148914691236517206<br>                                                                                                                                     |[0x80000970]:srli a1, a0, 19<br> [0x80000974]:sd a1, 560(tp)<br>    |
|  93|[0x800034f0]<br>0x0000000000000800|- rs1_val == 288230376151711744<br>                                                                                                                                       |[0x80000980]:srli a1, a0, 47<br> [0x80000984]:sd a1, 568(tp)<br>    |
|  94|[0x800034f8]<br>0x0008000000000000|- rs1_val == 576460752303423488<br>                                                                                                                                       |[0x80000990]:srli a1, a0, 8<br> [0x80000994]:sd a1, 576(tp)<br>     |
|  95|[0x80003500]<br>0x0000800000000000|- rs1_val == 1152921504606846976<br>                                                                                                                                      |[0x800009a0]:srli a1, a0, 13<br> [0x800009a4]:sd a1, 584(tp)<br>    |
|  96|[0x80003508]<br>0x0200000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                                      |[0x800009b0]:srli a1, a0, 5<br> [0x800009b4]:sd a1, 592(tp)<br>     |
|  97|[0x80003510]<br>0x000007FFFFFFFFFF|- rs1_val == -2<br>                                                                                                                                                       |[0x800009bc]:srli a1, a0, 21<br> [0x800009c0]:sd a1, 600(tp)<br>    |
|  98|[0x80003518]<br>0x00000001FFFFFFFF|- rs1_val == -3<br>                                                                                                                                                       |[0x800009c8]:srli a1, a0, 31<br> [0x800009cc]:sd a1, 608(tp)<br>    |
|  99|[0x80003520]<br>0x0000000000000001|- rs1_val == -5<br>                                                                                                                                                       |[0x800009d4]:srli a1, a0, 63<br> [0x800009d8]:sd a1, 616(tp)<br>    |
| 100|[0x80003528]<br>0x00000000003FFFFF|- rs1_val == -9<br>                                                                                                                                                       |[0x800009e0]:srli a1, a0, 42<br> [0x800009e4]:sd a1, 624(tp)<br>    |
| 101|[0x80003530]<br>0x00003FFFFFFFFFFF|- rs1_val == -17<br>                                                                                                                                                      |[0x800009ec]:srli a1, a0, 18<br> [0x800009f0]:sd a1, 632(tp)<br>    |
| 102|[0x80003538]<br>0x3FFFFFFFFFFFFFF7|- rs1_val == -33<br>                                                                                                                                                      |[0x800009f8]:srli a1, a0, 2<br> [0x800009fc]:sd a1, 640(tp)<br>     |
| 103|[0x80003540]<br>0x00000000FFFFFFFF|- rs1_val == -129<br>                                                                                                                                                     |[0x80000a04]:srli a1, a0, 32<br> [0x80000a08]:sd a1, 648(tp)<br>    |
| 104|[0x80003548]<br>0x0000FFFFFFFFFFFF|- rs1_val == -257<br>                                                                                                                                                     |[0x80000a10]:srli a1, a0, 16<br> [0x80000a14]:sd a1, 656(tp)<br>    |
| 105|[0x80003550]<br>0x0FFFFFFFFFFFFFDF|- rs1_val == -513<br>                                                                                                                                                     |[0x80000a1c]:srli a1, a0, 4<br> [0x80000a20]:sd a1, 664(tp)<br>     |
| 106|[0x80003558]<br>0x3FFFFFFFFFFFFEFF|- rs1_val == -1025<br>                                                                                                                                                    |[0x80000a28]:srli a1, a0, 2<br> [0x80000a2c]:sd a1, 672(tp)<br>     |
| 107|[0x80003560]<br>0x01FFFFFFFFFFFFEF|- rs1_val == -2049<br>                                                                                                                                                    |[0x80000a38]:srli a1, a0, 7<br> [0x80000a3c]:sd a1, 680(tp)<br>     |
| 108|[0x80003568]<br>0x0FFFFFFFFFFFFEFF|- rs1_val == -4097<br>                                                                                                                                                    |[0x80000a48]:srli a1, a0, 4<br> [0x80000a4c]:sd a1, 688(tp)<br>     |
| 109|[0x80003570]<br>0x07FFFFFFFFFFFEFF|- rs1_val == -8193<br>                                                                                                                                                    |[0x80000a58]:srli a1, a0, 5<br> [0x80000a5c]:sd a1, 696(tp)<br>     |
| 110|[0x80003578]<br>0x00000000003FFFFF|- rs1_val == -16385<br>                                                                                                                                                   |[0x80000a68]:srli a1, a0, 42<br> [0x80000a6c]:sd a1, 704(tp)<br>    |
| 111|[0x80003580]<br>0x7FFFFFFFFFFFBFFF|- rs1_val == -32769<br>                                                                                                                                                   |[0x80000a78]:srli a1, a0, 1<br> [0x80000a7c]:sd a1, 712(tp)<br>     |
| 112|[0x80003588]<br>0x0000FFFFFFFFFFFE|- rs1_val == -65537<br>                                                                                                                                                   |[0x80000a88]:srli a1, a0, 16<br> [0x80000a8c]:sd a1, 720(tp)<br>    |
| 113|[0x80003590]<br>0x001FFFFFFFFFFFBF|- rs1_val == -131073<br>                                                                                                                                                  |[0x80000a98]:srli a1, a0, 11<br> [0x80000a9c]:sd a1, 728(tp)<br>    |
| 114|[0x80003598]<br>0x00000000003FFFFF|- rs1_val == -262145<br>                                                                                                                                                  |[0x80000aa8]:srli a1, a0, 42<br> [0x80000aac]:sd a1, 736(tp)<br>    |
| 115|[0x800035a0]<br>0x0007FFFFFFFFFFBF|- rs1_val == -524289<br>                                                                                                                                                  |[0x80000ab8]:srli a1, a0, 13<br> [0x80000abc]:sd a1, 744(tp)<br>    |
| 116|[0x800035a8]<br>0x00003FFFFFFFFFFB|- rs1_val == -1048577<br>                                                                                                                                                 |[0x80000ac8]:srli a1, a0, 18<br> [0x80000acc]:sd a1, 752(tp)<br>    |
| 117|[0x800035b0]<br>0x000007FFFFFFFFFE|- rs1_val == -2097153<br>                                                                                                                                                 |[0x80000ad8]:srli a1, a0, 21<br> [0x80000adc]:sd a1, 760(tp)<br>    |
| 118|[0x800035b8]<br>0xFFFFFFFFFFBFFFFF|- rs1_val == -4194305<br>                                                                                                                                                 |[0x80000ae8]:srli a1, a0, 0<br> [0x80000aec]:sd a1, 768(tp)<br>     |
| 119|[0x800035c0]<br>0x0001FFFFFFFFFEFF|- rs1_val == -8388609<br>                                                                                                                                                 |[0x80000af8]:srli a1, a0, 15<br> [0x80000afc]:sd a1, 776(tp)<br>    |
| 120|[0x800035c8]<br>0x0000000000000001|- rs1_val == -16777217<br>                                                                                                                                                |[0x80000b08]:srli a1, a0, 63<br> [0x80000b0c]:sd a1, 784(tp)<br>    |
| 121|[0x800035d0]<br>0x07FFFFFFFFEFFFFF|- rs1_val == -33554433<br>                                                                                                                                                |[0x80000b18]:srli a1, a0, 5<br> [0x80000b1c]:sd a1, 792(tp)<br>     |
| 122|[0x800035d8]<br>0x00FFFFFFFFFBFFFF|- rs1_val == -67108865<br>                                                                                                                                                |[0x80000b28]:srli a1, a0, 8<br> [0x80000b2c]:sd a1, 800(tp)<br>     |
| 123|[0x800035e0]<br>0x00007FFFFFFFFBFF|- rs1_val == -134217729<br>                                                                                                                                               |[0x80000b38]:srli a1, a0, 17<br> [0x80000b3c]:sd a1, 808(tp)<br>    |
| 124|[0x800035e8]<br>0x000000000001FFFF|- rs1_val == -268435457<br>                                                                                                                                               |[0x80000b48]:srli a1, a0, 47<br> [0x80000b4c]:sd a1, 816(tp)<br>    |
| 125|[0x800035f0]<br>0x0000000000000003|- rs1_val == -536870913<br>                                                                                                                                               |[0x80000b58]:srli a1, a0, 62<br> [0x80000b5c]:sd a1, 824(tp)<br>    |
| 126|[0x800035f8]<br>0x00007FFFFFFFDFFF|- rs1_val == -1073741825<br>                                                                                                                                              |[0x80000b68]:srli a1, a0, 17<br> [0x80000b6c]:sd a1, 832(tp)<br>    |
| 127|[0x80003600]<br>0xFFFFFFFF7FFFFFFF|- rs1_val == -2147483649<br>                                                                                                                                              |[0x80000b7c]:srli a1, a0, 0<br> [0x80000b80]:sd a1, 840(tp)<br>     |
| 128|[0x80003608]<br>0x0007FFFFFFEFFFFF|- rs1_val == -8589934593<br>                                                                                                                                              |[0x80000b90]:srli a1, a0, 13<br> [0x80000b94]:sd a1, 848(tp)<br>    |
| 129|[0x80003610]<br>0x007FFFFFFDFFFFFF|- rs1_val == -17179869185<br>                                                                                                                                             |[0x80000ba4]:srli a1, a0, 9<br> [0x80000ba8]:sd a1, 856(tp)<br>     |
| 130|[0x80003618]<br>0x0FFFFFFEFFFFFFFF|- rs1_val == -68719476737<br>                                                                                                                                             |[0x80000bb8]:srli a1, a0, 4<br> [0x80000bbc]:sd a1, 864(tp)<br>     |
| 131|[0x80003620]<br>0x07FFFFFEFFFFFFFF|- rs1_val == -137438953473<br>                                                                                                                                            |[0x80000bcc]:srli a1, a0, 5<br> [0x80000bd0]:sd a1, 872(tp)<br>     |
| 132|[0x80003628]<br>0x00003FFFFFEFFFFF|- rs1_val == -274877906945<br>                                                                                                                                            |[0x80000be0]:srli a1, a0, 18<br> [0x80000be4]:sd a1, 880(tp)<br>    |
| 133|[0x80003638]<br>0x0000000000000000|- rs1_val == 32<br>                                                                                                                                                       |[0x80000bfc]:srli a1, a0, 47<br> [0x80000c00]:sd a1, 896(tp)<br>    |
