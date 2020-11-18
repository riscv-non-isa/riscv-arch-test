
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000c20')]      |
| SIG_REGION                | [('0x80003208', '0x80003640', '135 dwords')]      |
| COV_LABELS                | srliw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srliw-01.S/srliw-01.S    |
| Total Number of coverpoints| 220     |
| Total Coverpoints Hit     | 220      |
| Total Signature Updates   | 135      |
| STAT1                     | 134      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c00]:srli a1, a0, 27
      [0x80000c04]:sd a1, 888(ra)
 -- Signature Address: 0x80003630 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : srliw
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < 32
      - rs1_val == 512
      - imm_val == 27






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

|s.no|            signature             |                                                                               coverpoints                                                                                |                                code                                 |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003208]<br>0x0000000000001FFF|- opcode : srliw<br> - rs1 : x11<br> - rd : x11<br> - rs1 == rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < 32<br> - rs1_val == -35184372088833<br>                   |[0x800003a4]:srli a1, a1, 19<br> [0x800003a8]:sd a1, 0(tp)<br>       |
|   2|[0x80003210]<br>0x0000000000000001|- rs1 : x27<br> - rd : x24<br> - rs1 != rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < 32<br> - rs1_val == 256<br> - imm_val == 8<br>                                 |[0x800003b0]:srli s8, s11, 8<br> [0x800003b4]:sd s8, 8(tp)<br>       |
|   3|[0x80003218]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x30<br> - rd : x26<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -1152921504606846977<br>                                                                   |[0x800003c4]:srli s10, t5, 0<br> [0x800003c8]:sd s10, 16(tp)<br>     |
|   4|[0x80003220]<br>0x0000000040000000|- rs1 : x9<br> - rd : x7<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 1073741824<br>                                                                               |[0x800003d0]:srli t2, s1, 0<br> [0x800003d4]:sd t2, 24(tp)<br>       |
|   5|[0x80003228]<br>0x0000000000000001|- rs1 : x1<br> - rd : x2<br> - rs1_val < 0 and imm_val == 31<br> - rs1_val == -2097153<br>                                                                                |[0x800003e0]:srli sp, ra, 31<br> [0x800003e4]:sd sp, 32(tp)<br>      |
|   6|[0x80003230]<br>0x0000000000000001|- rs1 : x17<br> - rd : x6<br> - rs1_val > 0 and imm_val == 31<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < 32<br> - rs1_val == 9223372036854775807<br> |[0x800003f4]:srli t1, a7, 31<br> [0x800003f8]:sd t1, 40(tp)<br>      |
|   7|[0x80003238]<br>0x0000000000000000|- rs1 : x13<br> - rd : x5<br> - rs1_val == imm_val and imm_val > 0 and imm_val < 32<br> - rs1_val == 8<br>                                                                |[0x80000400]:srli t0, a3, 8<br> [0x80000404]:sd t0, 48(tp)<br>       |
|   8|[0x80003240]<br>0x0000000000000000|- rs1 : x26<br> - rd : x15<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < 32<br> - rs1_val == -9223372036854775808<br> - imm_val == 30<br>                |[0x80000410]:srli a5, s10, 30<br> [0x80000414]:sd a5, 56(tp)<br>     |
|   9|[0x80003248]<br>0x0000000000000000|- rs1 : x22<br> - rd : x21<br> - rs1_val == 0 and imm_val >= 0 and imm_val < 32<br>                                                                                       |[0x8000041c]:srli s5, s6, 30<br> [0x80000420]:sd s5, 64(tp)<br>      |
|  10|[0x80003250]<br>0x0000000000000000|- rs1 : x6<br> - rd : x10<br> - rs1_val == 1 and imm_val >= 0 and imm_val < 32<br> - rs1_val == 1<br> - imm_val == 15<br>                                                 |[0x80000428]:srli a0, t1, 15<br> [0x8000042c]:sd a0, 72(tp)<br>      |
|  11|[0x80003258]<br>0x0000000000000200|- rs1 : x14<br> - rd : x18<br> - rs1_val == 1024<br> - imm_val == 1<br>                                                                                                   |[0x80000434]:srli s2, a4, 1<br> [0x80000438]:sd s2, 80(tp)<br>       |
|  12|[0x80003260]<br>0x000000003FFFFFFF|- rs1 : x8<br> - rd : x17<br> - rs1_val == -549755813889<br> - imm_val == 2<br>                                                                                           |[0x80000448]:srli a7, fp, 2<br> [0x8000044c]:sd a7, 88(tp)<br>       |
|  13|[0x80003268]<br>0x0000000000000000|- rs1 : x16<br> - rd : x27<br> - rs1_val == 2199023255552<br> - imm_val == 4<br>                                                                                          |[0x80000458]:srli s11, a6, 4<br> [0x8000045c]:sd s11, 96(tp)<br>     |
|  14|[0x80003270]<br>0x000000000000FFDF|- rs1 : x31<br> - rd : x1<br> - imm_val == 16<br>                                                                                                                         |[0x80000468]:srli ra, t6, 16<br> [0x8000046c]:sd ra, 104(tp)<br>     |
|  15|[0x80003278]<br>0x0000000000000007|- rs1 : x28<br> - rd : x12<br> - rs1_val == -32769<br> - imm_val == 29<br>                                                                                                |[0x80000478]:srli a2, t3, 29<br> [0x8000047c]:sd a2, 112(tp)<br>     |
|  16|[0x80003280]<br>0x0000000000000000|- rs1 : x23<br> - rd : x0<br> - rs1_val == 512<br> - imm_val == 27<br>                                                                                                    |[0x80000484]:srli zero, s7, 27<br> [0x80000488]:sd zero, 120(tp)<br> |
|  17|[0x80003288]<br>0x00000000000001FF|- rs1 : x21<br> - rd : x3<br> - rs1_val == -129<br> - imm_val == 23<br>                                                                                                   |[0x80000490]:srli gp, s5, 23<br> [0x80000494]:sd gp, 128(tp)<br>     |
|  18|[0x80003290]<br>0x0000000000000000|- rs1 : x15<br> - rd : x28<br> - rs1_val == 4096<br> - imm_val == 21<br>                                                                                                  |[0x8000049c]:srli t3, a5, 21<br> [0x800004a0]:sd t3, 136(tp)<br>     |
|  19|[0x80003298]<br>0x0000000000000001|- rs1 : x29<br> - rd : x13<br> - imm_val == 10<br>                                                                                                                        |[0x800004a8]:srli a3, t4, 10<br> [0x800004ac]:sd a3, 144(tp)<br>     |
|  20|[0x800032a0]<br>0x0000000000000000|- rs1 : x10<br> - rd : x23<br> - rs1_val == 2<br>                                                                                                                         |[0x800004b4]:srli s7, a0, 18<br> [0x800004b8]:sd s7, 152(tp)<br>     |
|  21|[0x800032a8]<br>0x0000000000000000|- rs1 : x3<br> - rd : x30<br> - rs1_val == 4<br>                                                                                                                          |[0x800004c0]:srli t5, gp, 31<br> [0x800004c4]:sd t5, 160(tp)<br>     |
|  22|[0x800032b0]<br>0x0000000000000000|- rs1 : x19<br> - rd : x9<br> - rs1_val == 16<br>                                                                                                                         |[0x800004cc]:srli s1, s3, 31<br> [0x800004d0]:sd s1, 168(tp)<br>     |
|  23|[0x800032b8]<br>0x0000000000000000|- rs1 : x7<br> - rd : x20<br> - rs1_val == 32<br>                                                                                                                         |[0x800004e0]:srli s4, t2, 16<br> [0x800004e4]:sd s4, 0(ra)<br>       |
|  24|[0x800032c0]<br>0x0000000000000000|- rs1 : x20<br> - rd : x19<br> - rs1_val == 64<br>                                                                                                                        |[0x800004ec]:srli s3, s4, 30<br> [0x800004f0]:sd s3, 8(ra)<br>       |
|  25|[0x800032c8]<br>0x0000000000000001|- rs1 : x5<br> - rd : x14<br> - rs1_val == 128<br>                                                                                                                        |[0x800004f8]:srli a4, t0, 7<br> [0x800004fc]:sd a4, 16(ra)<br>       |
|  26|[0x800032d0]<br>0x0000000000000080|- rs1 : x4<br> - rd : x25<br> - rs1_val == 2048<br>                                                                                                                       |[0x80000508]:srli s9, tp, 4<br> [0x8000050c]:sd s9, 24(ra)<br>       |
|  27|[0x800032d8]<br>0x0000000000000200|- rs1 : x2<br> - rd : x29<br> - rs1_val == 8192<br>                                                                                                                       |[0x80000514]:srli t4, sp, 4<br> [0x80000518]:sd t4, 32(ra)<br>       |
|  28|[0x800032e0]<br>0x0000000000000000|- rs1 : x18<br> - rd : x22<br> - rs1_val == 16384<br>                                                                                                                     |[0x80000520]:srli s6, s2, 21<br> [0x80000524]:sd s6, 40(ra)<br>      |
|  29|[0x800032e8]<br>0x0000000000000004|- rs1 : x25<br> - rd : x4<br> - rs1_val == 32768<br>                                                                                                                      |[0x8000052c]:srli tp, s9, 13<br> [0x80000530]:sd tp, 48(ra)<br>      |
|  30|[0x800032f0]<br>0x0000000000000004|- rs1 : x24<br> - rd : x16<br> - rs1_val == 65536<br>                                                                                                                     |[0x80000538]:srli a6, s8, 14<br> [0x8000053c]:sd a6, 56(ra)<br>      |
|  31|[0x800032f8]<br>0x0000000000000000|- rs1 : x0<br> - rd : x31<br>                                                                                                                                             |[0x80000548]:srli t6, zero, 19<br> [0x8000054c]:sd t6, 64(ra)<br>    |
|  32|[0x80003300]<br>0x0000000000000000|- rs1 : x12<br> - rd : x8<br> - rs1_val == 262144<br>                                                                                                                     |[0x80000554]:srli fp, a2, 23<br> [0x80000558]:sd fp, 72(ra)<br>      |
|  33|[0x80003308]<br>0x0000000000008000|- rs1_val == 524288<br>                                                                                                                                                   |[0x80000560]:srli a1, a0, 4<br> [0x80000564]:sd a1, 80(ra)<br>       |
|  34|[0x80003310]<br>0x0000000000000000|- rs1_val == 1048576<br>                                                                                                                                                  |[0x8000056c]:srli a1, a0, 23<br> [0x80000570]:sd a1, 88(ra)<br>      |
|  35|[0x80003318]<br>0x0000000000000004|- rs1_val == 2097152<br>                                                                                                                                                  |[0x80000578]:srli a1, a0, 19<br> [0x8000057c]:sd a1, 96(ra)<br>      |
|  36|[0x80003320]<br>0x0000000000000000|- rs1_val == 4194304<br>                                                                                                                                                  |[0x80000584]:srli a1, a0, 23<br> [0x80000588]:sd a1, 104(ra)<br>     |
|  37|[0x80003328]<br>0x0000000000000100|- rs1_val == 8388608<br>                                                                                                                                                  |[0x80000590]:srli a1, a0, 15<br> [0x80000594]:sd a1, 112(ra)<br>     |
|  38|[0x80003330]<br>0x0000000000004000|- rs1_val == 16777216<br>                                                                                                                                                 |[0x8000059c]:srli a1, a0, 10<br> [0x800005a0]:sd a1, 120(ra)<br>     |
|  39|[0x80003338]<br>0x0000000000000040|- rs1_val == 33554432<br>                                                                                                                                                 |[0x800005a8]:srli a1, a0, 19<br> [0x800005ac]:sd a1, 128(ra)<br>     |
|  40|[0x80003340]<br>0x0000000000040000|- rs1_val == 67108864<br>                                                                                                                                                 |[0x800005b4]:srli a1, a0, 8<br> [0x800005b8]:sd a1, 136(ra)<br>      |
|  41|[0x80003348]<br>0x0000000000008000|- rs1_val == 134217728<br>                                                                                                                                                |[0x800005c0]:srli a1, a0, 12<br> [0x800005c4]:sd a1, 144(ra)<br>     |
|  42|[0x80003350]<br>0x0000000000004000|- rs1_val == 268435456<br>                                                                                                                                                |[0x800005cc]:srli a1, a0, 14<br> [0x800005d0]:sd a1, 152(ra)<br>     |
|  43|[0x80003358]<br>0x0000000000004000|- rs1_val == 536870912<br>                                                                                                                                                |[0x800005d8]:srli a1, a0, 15<br> [0x800005dc]:sd a1, 160(ra)<br>     |
|  44|[0x80003360]<br>0x0000000020000000|- rs1_val == 2147483648<br>                                                                                                                                               |[0x800005e8]:srli a1, a0, 2<br> [0x800005ec]:sd a1, 168(ra)<br>      |
|  45|[0x80003368]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                                                                               |[0x800005f8]:srli a1, a0, 7<br> [0x800005fc]:sd a1, 176(ra)<br>      |
|  46|[0x80003370]<br>0x0000000000000000|- rs1_val == 8589934592<br>                                                                                                                                               |[0x80000608]:srli a1, a0, 8<br> [0x8000060c]:sd a1, 184(ra)<br>      |
|  47|[0x80003378]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                                                                              |[0x80000618]:srli a1, a0, 15<br> [0x8000061c]:sd a1, 192(ra)<br>     |
|  48|[0x80003380]<br>0x0000000000000000|- rs1_val == 34359738368<br>                                                                                                                                              |[0x80000628]:srli a1, a0, 3<br> [0x8000062c]:sd a1, 200(ra)<br>      |
|  49|[0x80003388]<br>0x0000000000000000|- rs1_val == 68719476736<br>                                                                                                                                              |[0x80000638]:srli a1, a0, 2<br> [0x8000063c]:sd a1, 208(ra)<br>      |
|  50|[0x80003390]<br>0x0000000000000000|- rs1_val == 137438953472<br>                                                                                                                                             |[0x80000648]:srli a1, a0, 11<br> [0x8000064c]:sd a1, 216(ra)<br>     |
|  51|[0x80003398]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                                                                             |[0x80000658]:srli a1, a0, 17<br> [0x8000065c]:sd a1, 224(ra)<br>     |
|  52|[0x800033a0]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                                                                             |[0x80000668]:srli a1, a0, 17<br> [0x8000066c]:sd a1, 232(ra)<br>     |
|  53|[0x800033a8]<br>0x0000000000000000|- rs1_val == 1099511627776<br>                                                                                                                                            |[0x80000678]:srli a1, a0, 3<br> [0x8000067c]:sd a1, 240(ra)<br>      |
|  54|[0x800033b0]<br>0x0000000000000000|- rs1_val == 4398046511104<br>                                                                                                                                            |[0x80000688]:srli a1, a0, 16<br> [0x8000068c]:sd a1, 248(ra)<br>     |
|  55|[0x800033b8]<br>0x0000000000000000|- rs1_val == 8796093022208<br>                                                                                                                                            |[0x80000698]:srli a1, a0, 12<br> [0x8000069c]:sd a1, 256(ra)<br>     |
|  56|[0x800033c0]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                                                           |[0x800006a8]:srli a1, a0, 15<br> [0x800006ac]:sd a1, 264(ra)<br>     |
|  57|[0x800033c8]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                                                           |[0x800006b8]:srli a1, a0, 9<br> [0x800006bc]:sd a1, 272(ra)<br>      |
|  58|[0x800033d0]<br>0x0000000000000000|- rs1_val == 70368744177664<br>                                                                                                                                           |[0x800006c8]:srli a1, a0, 0<br> [0x800006cc]:sd a1, 280(ra)<br>      |
|  59|[0x800033d8]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                                                          |[0x800006d8]:srli a1, a0, 16<br> [0x800006dc]:sd a1, 288(ra)<br>     |
|  60|[0x800033e0]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                                                          |[0x800006e8]:srli a1, a0, 0<br> [0x800006ec]:sd a1, 296(ra)<br>      |
|  61|[0x800033e8]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                                                                          |[0x800006f8]:srli a1, a0, 13<br> [0x800006fc]:sd a1, 304(ra)<br>     |
|  62|[0x800033f0]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                                                         |[0x80000708]:srli a1, a0, 0<br> [0x8000070c]:sd a1, 312(ra)<br>      |
|  63|[0x800033f8]<br>0x0000000000000000|- rs1_val == 2251799813685248<br>                                                                                                                                         |[0x80000718]:srli a1, a0, 31<br> [0x8000071c]:sd a1, 320(ra)<br>     |
|  64|[0x80003400]<br>0x0000000000000000|- rs1_val == 4503599627370496<br>                                                                                                                                         |[0x80000728]:srli a1, a0, 5<br> [0x8000072c]:sd a1, 328(ra)<br>      |
|  65|[0x80003408]<br>0x0000000000000000|- rs1_val == 9007199254740992<br>                                                                                                                                         |[0x80000738]:srli a1, a0, 27<br> [0x8000073c]:sd a1, 336(ra)<br>     |
|  66|[0x80003410]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                                                        |[0x80000748]:srli a1, a0, 30<br> [0x8000074c]:sd a1, 344(ra)<br>     |
|  67|[0x80003418]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                                                        |[0x80000758]:srli a1, a0, 31<br> [0x8000075c]:sd a1, 352(ra)<br>     |
|  68|[0x80003420]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                                                                        |[0x80000768]:srli a1, a0, 31<br> [0x8000076c]:sd a1, 360(ra)<br>     |
|  69|[0x80003428]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                                                       |[0x80000778]:srli a1, a0, 5<br> [0x8000077c]:sd a1, 368(ra)<br>      |
|  70|[0x80003430]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                                                       |[0x80000788]:srli a1, a0, 31<br> [0x8000078c]:sd a1, 376(ra)<br>     |
|  71|[0x80003438]<br>0x000000007FFFFFFF|- rs1_val == -2199023255553<br>                                                                                                                                           |[0x8000079c]:srli a1, a0, 1<br> [0x800007a0]:sd a1, 384(ra)<br>      |
|  72|[0x80003440]<br>0x00000000000FFFFF|- rs1_val == -4398046511105<br>                                                                                                                                           |[0x800007b0]:srli a1, a0, 12<br> [0x800007b4]:sd a1, 392(ra)<br>     |
|  73|[0x80003448]<br>0x000000000000FFFF|- rs1_val == -8796093022209<br>                                                                                                                                           |[0x800007c4]:srli a1, a0, 16<br> [0x800007c8]:sd a1, 400(ra)<br>     |
|  74|[0x80003450]<br>0x0000000000001FFF|- rs1_val == -17592186044417<br>                                                                                                                                          |[0x800007d8]:srli a1, a0, 19<br> [0x800007dc]:sd a1, 408(ra)<br>     |
|  75|[0x80003458]<br>0x000000000000001F|- rs1_val == -70368744177665<br>                                                                                                                                          |[0x800007ec]:srli a1, a0, 27<br> [0x800007f0]:sd a1, 416(ra)<br>     |
|  76|[0x80003460]<br>0x0000000000000001|- rs1_val == -140737488355329<br>                                                                                                                                         |[0x80000800]:srli a1, a0, 31<br> [0x80000804]:sd a1, 424(ra)<br>     |
|  77|[0x80003468]<br>0x00000000000FFFFF|- rs1_val == -281474976710657<br>                                                                                                                                         |[0x80000814]:srli a1, a0, 12<br> [0x80000818]:sd a1, 432(ra)<br>     |
|  78|[0x80003470]<br>0x000000000FFFFFFF|- rs1_val == -562949953421313<br>                                                                                                                                         |[0x80000828]:srli a1, a0, 4<br> [0x8000082c]:sd a1, 440(ra)<br>      |
|  79|[0x80003478]<br>0x000000000FFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                                                        |[0x8000083c]:srli a1, a0, 4<br> [0x80000840]:sd a1, 448(ra)<br>      |
|  80|[0x80003480]<br>0x000000000000001F|- rs1_val == -2251799813685249<br>                                                                                                                                        |[0x80000850]:srli a1, a0, 27<br> [0x80000854]:sd a1, 456(ra)<br>     |
|  81|[0x80003488]<br>0x0000000000003FFF|- rs1_val == -4503599627370497<br>                                                                                                                                        |[0x80000864]:srli a1, a0, 18<br> [0x80000868]:sd a1, 464(ra)<br>     |
|  82|[0x80003490]<br>0x00000000000007FF|- rs1_val == -9007199254740993<br>                                                                                                                                        |[0x80000878]:srli a1, a0, 21<br> [0x8000087c]:sd a1, 472(ra)<br>     |
|  83|[0x80003498]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -18014398509481985<br>                                                                                                                                       |[0x8000088c]:srli a1, a0, 0<br> [0x80000890]:sd a1, 480(ra)<br>      |
|  84|[0x800034a0]<br>0x0000000003FFFFFF|- rs1_val == -36028797018963969<br>                                                                                                                                       |[0x800008a0]:srli a1, a0, 6<br> [0x800008a4]:sd a1, 488(ra)<br>      |
|  85|[0x800034a8]<br>0x000000000FFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                                                       |[0x800008b4]:srli a1, a0, 4<br> [0x800008b8]:sd a1, 496(ra)<br>      |
|  86|[0x800034b0]<br>0x0000000000001FFF|- rs1_val == -144115188075855873<br>                                                                                                                                      |[0x800008c8]:srli a1, a0, 19<br> [0x800008cc]:sd a1, 504(ra)<br>     |
|  87|[0x800034b8]<br>0x0000000003FFFFFF|- rs1_val == -288230376151711745<br>                                                                                                                                      |[0x800008dc]:srli a1, a0, 6<br> [0x800008e0]:sd a1, 512(ra)<br>      |
|  88|[0x800034c0]<br>0x00000000000FFFFF|- rs1_val == -576460752303423489<br>                                                                                                                                      |[0x800008f0]:srli a1, a0, 12<br> [0x800008f4]:sd a1, 520(ra)<br>     |
|  89|[0x800034c8]<br>0x00000000000001FF|- rs1_val == -2305843009213693953<br>                                                                                                                                     |[0x80000904]:srli a1, a0, 23<br> [0x80000908]:sd a1, 528(ra)<br>     |
|  90|[0x800034d0]<br>0x000000000001FFFF|- rs1_val == -4611686018427387905<br>                                                                                                                                     |[0x80000918]:srli a1, a0, 15<br> [0x8000091c]:sd a1, 536(ra)<br>     |
|  91|[0x800034d8]<br>0x0000000000005555|- rs1_val == 6148914691236517205<br>                                                                                                                                      |[0x80000940]:srli a1, a0, 16<br> [0x80000944]:sd a1, 544(ra)<br>     |
|  92|[0x800034e0]<br>0xFFFFFFFFAAAAAAAA|- rs1_val == -6148914691236517206<br>                                                                                                                                     |[0x80000968]:srli a1, a0, 0<br> [0x8000096c]:sd a1, 552(ra)<br>      |
|  93|[0x800034e8]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                                                       |[0x80000978]:srli a1, a0, 9<br> [0x8000097c]:sd a1, 560(ra)<br>      |
|  94|[0x800034f0]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                                      |[0x80000988]:srli a1, a0, 5<br> [0x8000098c]:sd a1, 568(ra)<br>      |
|  95|[0x800034f8]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                                      |[0x80000998]:srli a1, a0, 10<br> [0x8000099c]:sd a1, 576(ra)<br>     |
|  96|[0x80003500]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                                      |[0x800009a8]:srli a1, a0, 14<br> [0x800009ac]:sd a1, 584(ra)<br>     |
|  97|[0x80003508]<br>0x000000000000001F|- rs1_val == -2<br>                                                                                                                                                       |[0x800009b4]:srli a1, a0, 27<br> [0x800009b8]:sd a1, 592(ra)<br>     |
|  98|[0x80003510]<br>0x0000000001FFFFFF|- rs1_val == -3<br>                                                                                                                                                       |[0x800009c0]:srli a1, a0, 7<br> [0x800009c4]:sd a1, 600(ra)<br>      |
|  99|[0x80003518]<br>0x0000000000007FFF|- rs1_val == -5<br>                                                                                                                                                       |[0x800009cc]:srli a1, a0, 17<br> [0x800009d0]:sd a1, 608(ra)<br>     |
| 100|[0x80003520]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == -9<br>                                                                                                                                                       |[0x800009d8]:srli a1, a0, 0<br> [0x800009dc]:sd a1, 616(ra)<br>      |
| 101|[0x80003528]<br>0x0000000000007FFF|- rs1_val == -17<br>                                                                                                                                                      |[0x800009e4]:srli a1, a0, 17<br> [0x800009e8]:sd a1, 624(ra)<br>     |
| 102|[0x80003530]<br>0x000000000000001F|- rs1_val == -33<br>                                                                                                                                                      |[0x800009f0]:srli a1, a0, 27<br> [0x800009f4]:sd a1, 632(ra)<br>     |
| 103|[0x80003538]<br>0x00000000001FFFFF|- rs1_val == -65<br>                                                                                                                                                      |[0x800009fc]:srli a1, a0, 11<br> [0x80000a00]:sd a1, 640(ra)<br>     |
| 104|[0x80003540]<br>0x00000000003FFFFF|- rs1_val == -257<br>                                                                                                                                                     |[0x80000a08]:srli a1, a0, 10<br> [0x80000a0c]:sd a1, 648(ra)<br>     |
| 105|[0x80003548]<br>0x00000000003FFFFF|- rs1_val == -513<br>                                                                                                                                                     |[0x80000a14]:srli a1, a0, 10<br> [0x80000a18]:sd a1, 656(ra)<br>     |
| 106|[0x80003550]<br>0x0000000000FFFFFB|- rs1_val == -1025<br>                                                                                                                                                    |[0x80000a20]:srli a1, a0, 8<br> [0x80000a24]:sd a1, 664(ra)<br>      |
| 107|[0x80003558]<br>0x000000000000001F|- rs1_val == -2049<br>                                                                                                                                                    |[0x80000a30]:srli a1, a0, 27<br> [0x80000a34]:sd a1, 672(ra)<br>     |
| 108|[0x80003560]<br>0x0000000000007FFF|- rs1_val == -4097<br>                                                                                                                                                    |[0x80000a40]:srli a1, a0, 17<br> [0x80000a44]:sd a1, 680(ra)<br>     |
| 109|[0x80003568]<br>0x00000000001FFFFB|- rs1_val == -8193<br>                                                                                                                                                    |[0x80000a50]:srli a1, a0, 11<br> [0x80000a54]:sd a1, 688(ra)<br>     |
| 110|[0x80003570]<br>0x0000000000000003|- rs1_val == -16385<br>                                                                                                                                                   |[0x80000a60]:srli a1, a0, 30<br> [0x80000a64]:sd a1, 696(ra)<br>     |
| 111|[0x80003578]<br>0x00000000000FFFEF|- rs1_val == -65537<br>                                                                                                                                                   |[0x80000a70]:srli a1, a0, 12<br> [0x80000a74]:sd a1, 704(ra)<br>     |
| 112|[0x80003580]<br>0x0000000000FFFDFF|- rs1_val == -131073<br>                                                                                                                                                  |[0x80000a80]:srli a1, a0, 8<br> [0x80000a84]:sd a1, 712(ra)<br>      |
| 113|[0x80003588]<br>0x0000000007FFDFFF|- rs1_val == -262145<br>                                                                                                                                                  |[0x80000a90]:srli a1, a0, 5<br> [0x80000a94]:sd a1, 720(ra)<br>      |
| 114|[0x80003590]<br>0x00000000000007FF|- rs1_val == -524289<br>                                                                                                                                                  |[0x80000aa0]:srli a1, a0, 21<br> [0x80000aa4]:sd a1, 728(ra)<br>     |
| 115|[0x80003598]<br>0x000000000000001F|- rs1_val == -1048577<br>                                                                                                                                                 |[0x80000ab0]:srli a1, a0, 27<br> [0x80000ab4]:sd a1, 736(ra)<br>     |
| 116|[0x800035a0]<br>0x00000000003FEFFF|- rs1_val == -4194305<br>                                                                                                                                                 |[0x80000ac0]:srli a1, a0, 10<br> [0x80000ac4]:sd a1, 744(ra)<br>     |
| 117|[0x800035a8]<br>0xFFFFFFFFFF7FFFFF|- rs1_val == -8388609<br>                                                                                                                                                 |[0x80000ad0]:srli a1, a0, 0<br> [0x80000ad4]:sd a1, 752(ra)<br>      |
| 118|[0x800035b0]<br>0x0000000003FBFFFF|- rs1_val == -16777217<br>                                                                                                                                                |[0x80000ae0]:srli a1, a0, 6<br> [0x80000ae4]:sd a1, 760(ra)<br>      |
| 119|[0x800035b8]<br>0x00000000000FDFFF|- rs1_val == -33554433<br>                                                                                                                                                |[0x80000af0]:srli a1, a0, 12<br> [0x80000af4]:sd a1, 768(ra)<br>     |
| 120|[0x800035c0]<br>0x000000000007DFFF|- rs1_val == -67108865<br>                                                                                                                                                |[0x80000b00]:srli a1, a0, 13<br> [0x80000b04]:sd a1, 776(ra)<br>     |
| 121|[0x800035c8]<br>0x0000000000000007|- rs1_val == -134217729<br>                                                                                                                                               |[0x80000b10]:srli a1, a0, 29<br> [0x80000b14]:sd a1, 784(ra)<br>     |
| 122|[0x800035d0]<br>0x0000000000EFFFFF|- rs1_val == -268435457<br>                                                                                                                                               |[0x80000b20]:srli a1, a0, 8<br> [0x80000b24]:sd a1, 792(ra)<br>      |
| 123|[0x800035d8]<br>0x0000000006FFFFFF|- rs1_val == -536870913<br>                                                                                                                                               |[0x80000b30]:srli a1, a0, 5<br> [0x80000b34]:sd a1, 800(ra)<br>      |
| 124|[0x800035e0]<br>0x000000000005FFFF|- rs1_val == -1073741825<br>                                                                                                                                              |[0x80000b40]:srli a1, a0, 13<br> [0x80000b44]:sd a1, 808(ra)<br>     |
| 125|[0x800035e8]<br>0x00000000001FFFFF|- rs1_val == -2147483649<br>                                                                                                                                              |[0x80000b54]:srli a1, a0, 10<br> [0x80000b58]:sd a1, 816(ra)<br>     |
| 126|[0x800035f0]<br>0x00000000000007FF|- rs1_val == -4294967297<br>                                                                                                                                              |[0x80000b68]:srli a1, a0, 21<br> [0x80000b6c]:sd a1, 824(ra)<br>     |
| 127|[0x800035f8]<br>0x00000000000007FF|- rs1_val == -8589934593<br>                                                                                                                                              |[0x80000b7c]:srli a1, a0, 21<br> [0x80000b80]:sd a1, 832(ra)<br>     |
| 128|[0x80003600]<br>0x000000001FFFFFFF|- rs1_val == -17179869185<br>                                                                                                                                             |[0x80000b90]:srli a1, a0, 3<br> [0x80000b94]:sd a1, 840(ra)<br>      |
| 129|[0x80003608]<br>0x000000000FFFFFFF|- rs1_val == -34359738369<br>                                                                                                                                             |[0x80000ba4]:srli a1, a0, 4<br> [0x80000ba8]:sd a1, 848(ra)<br>      |
| 130|[0x80003610]<br>0x000000000FFFFFFF|- rs1_val == -68719476737<br>                                                                                                                                             |[0x80000bb8]:srli a1, a0, 4<br> [0x80000bbc]:sd a1, 856(ra)<br>      |
| 131|[0x80003618]<br>0x0000000007FFFFFF|- rs1_val == -137438953473<br>                                                                                                                                            |[0x80000bcc]:srli a1, a0, 5<br> [0x80000bd0]:sd a1, 864(ra)<br>      |
| 132|[0x80003620]<br>0x000000000001FFFF|- rs1_val == -274877906945<br>                                                                                                                                            |[0x80000be0]:srli a1, a0, 15<br> [0x80000be4]:sd a1, 872(ra)<br>     |
| 133|[0x80003628]<br>0x000000000000FFFF|- rs1_val == -1099511627777<br>                                                                                                                                           |[0x80000bf4]:srli a1, a0, 16<br> [0x80000bf8]:sd a1, 880(ra)<br>     |
| 134|[0x80003638]<br>0x0000000000000000|- rs1_val == 131072<br>                                                                                                                                                   |[0x80000c0c]:srli a1, a0, 19<br> [0x80000c10]:sd a1, 896(ra)<br>     |