
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
| COV_LABELS                | srli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srli-01.S/srli-01.S    |
| Total Number of coverpoints| 222     |
| Total Coverpoints Hit     | 222      |
| Total Signature Updates   | 136      |
| STAT1                     | 135      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c1c]:srli a1, a0, 31
      [0x80000c20]:sd a1, 896(ra)
 -- Signature Address: 0x80003640 Data: 0x00000001FFFFBFFF
 -- Redundant Coverpoints hit by the op
      - opcode : srli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val < 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == -35184372088833
      - imm_val == 31






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

|s.no|            signature             |                                                                                      coverpoints                                                                                      |                                code                                 |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003208]<br>0x0000FFEFFFFFFFFF|- opcode : srli<br> - rs1 : x2<br> - rd : x2<br> - rs1 == rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == -4503599627370497<br> - imm_val == 16<br>           |[0x800003a4]:srli sp, sp, 16<br> [0x800003a8]:sd sp, 0(s4)<br>       |
|   2|[0x80003210]<br>0x0000000000000000|- rs1 : x14<br> - rd : x17<br> - rs1 != rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == 4294967296<br> - imm_val == 62<br>                                    |[0x800003b4]:srli a7, a4, 62<br> [0x800003b8]:sd a7, 8(s4)<br>       |
|   3|[0x80003218]<br>0xFFFFFFFFFFFFF7FF|- rs1 : x27<br> - rd : x15<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -2049<br>                                                                                               |[0x800003c4]:srli a5, s11, 0<br> [0x800003c8]:sd a5, 16(s4)<br>      |
|   4|[0x80003220]<br>0x0000000000008000|- rs1 : x23<br> - rd : x27<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 32768<br>                                                                                               |[0x800003d0]:srli s11, s7, 0<br> [0x800003d4]:sd s11, 24(s4)<br>     |
|   5|[0x80003228]<br>0x0000000000000001|- rs1 : x3<br> - rd : x1<br> - rs1_val < 0 and imm_val == (xlen-1)<br>                                                                                                                 |[0x800003dc]:srli ra, gp, 63<br> [0x800003e0]:sd ra, 32(s4)<br>      |
|   6|[0x80003230]<br>0x0000000000000000|- rs1 : x6<br> - rd : x3<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 65536<br>                                                                                          |[0x800003e8]:srli gp, t1, 63<br> [0x800003ec]:sd gp, 40(s4)<br>      |
|   7|[0x80003238]<br>0x0000000000000000|- rs1 : x12<br> - rd : x7<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br> - imm_val == 1<br> |[0x800003f4]:srli t2, a2, 1<br> [0x800003f8]:sd t2, 48(s4)<br>       |
|   8|[0x80003240]<br>0x0000100000000000|- rs1 : x8<br> - rd : x4<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -9223372036854775808<br>                                                 |[0x80000404]:srli tp, fp, 19<br> [0x80000408]:sd tp, 56(s4)<br>      |
|   9|[0x80003248]<br>0x0000000000000000|- rs1 : x31<br> - rd : x18<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br> - imm_val == 8<br>                                                                               |[0x80000410]:srli s2, t6, 8<br> [0x80000414]:sd s2, 64(s4)<br>       |
|  10|[0x80003250]<br>0x003FFFFFFFFFFFFF|- rs1 : x13<br> - rd : x11<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 9223372036854775807<br>                                               |[0x80000424]:srli a1, a3, 9<br> [0x80000428]:sd a1, 72(s4)<br>       |
|  11|[0x80003258]<br>0x0000000000040000|- rs1 : x1<br> - rd : x12<br> - rs1_val == 1048576<br> - imm_val == 2<br>                                                                                                              |[0x80000430]:srli a2, ra, 2<br> [0x80000434]:sd a2, 80(s4)<br>       |
|  12|[0x80003260]<br>0x0FFFFFFFFFFFFFFF|- rs1 : x19<br> - rd : x22<br> - imm_val == 4<br>                                                                                                                                      |[0x8000043c]:srli s6, s3, 4<br> [0x80000440]:sd s6, 88(s4)<br>       |
|  13|[0x80003268]<br>0x00000000FFFFFFFF|- rs1 : x29<br> - rd : x23<br> - imm_val == 32<br>                                                                                                                                     |[0x80000448]:srli s7, t4, 32<br> [0x8000044c]:sd s7, 96(s4)<br>      |
|  14|[0x80003270]<br>0x0000000000000000|- rs1 : x18<br> - rd : x13<br> - rs1_val == 16777216<br> - imm_val == 61<br>                                                                                                           |[0x80000454]:srli a3, s2, 61<br> [0x80000458]:sd a3, 104(s4)<br>     |
|  15|[0x80003278]<br>0x0000000000000000|- rs1 : x0<br> - rd : x29<br> - imm_val == 59<br>                                                                                                                                      |[0x80000464]:srli t4, zero, 59<br> [0x80000468]:sd t4, 112(s4)<br>   |
|  16|[0x80003280]<br>0x0000000000000040|- rs1 : x11<br> - rd : x30<br> - rs1_val == 2305843009213693952<br> - imm_val == 55<br>                                                                                                |[0x80000474]:srli t5, a1, 55<br> [0x80000478]:sd t5, 120(s4)<br>     |
|  17|[0x80003288]<br>0x000000000001FFFF|- rs1 : x26<br> - rd : x14<br> - rs1_val == -70368744177665<br> - imm_val == 47<br>                                                                                                    |[0x80000488]:srli a4, s10, 47<br> [0x8000048c]:sd a4, 128(s4)<br>    |
|  18|[0x80003290]<br>0x0000000000000000|- rs1 : x16<br> - rd : x0<br> - rs1_val == -35184372088833<br> - imm_val == 31<br>                                                                                                     |[0x8000049c]:srli zero, a6, 31<br> [0x800004a0]:sd zero, 136(s4)<br> |
|  19|[0x80003298]<br>0x0000000000000000|- rs1 : x10<br> - rd : x9<br> - rs1_val == 1024<br> - imm_val == 21<br>                                                                                                                |[0x800004a8]:srli s1, a0, 21<br> [0x800004ac]:sd s1, 144(s4)<br>     |
|  20|[0x800032a0]<br>0x00000000003FFFFF|- rs1 : x15<br> - rd : x8<br> - rs1_val == -16777217<br> - imm_val == 42<br>                                                                                                           |[0x800004b8]:srli fp, a5, 42<br> [0x800004bc]:sd fp, 152(s4)<br>     |
|  21|[0x800032a8]<br>0x0000000000000000|- rs1 : x25<br> - rd : x6<br> - rs1_val == 2<br>                                                                                                                                       |[0x800004c4]:srli t1, s9, 18<br> [0x800004c8]:sd t1, 160(s4)<br>     |
|  22|[0x800032b0]<br>0x0000000000000000|- rs1 : x24<br> - rd : x10<br> - rs1_val == 4<br>                                                                                                                                      |[0x800004d0]:srli a0, s8, 21<br> [0x800004d4]:sd a0, 168(s4)<br>     |
|  23|[0x800032b8]<br>0x0000000000000000|- rs1 : x5<br> - rd : x19<br> - rs1_val == 8<br>                                                                                                                                       |[0x800004dc]:srli s3, t0, 21<br> [0x800004e0]:sd s3, 176(s4)<br>     |
|  24|[0x800032c0]<br>0x0000000000000000|- rs1 : x21<br> - rd : x25<br> - rs1_val == 16<br>                                                                                                                                     |[0x800004f0]:srli s9, s5, 7<br> [0x800004f4]:sd s9, 0(ra)<br>        |
|  25|[0x800032c8]<br>0x0000000000000000|- rs1 : x22<br> - rd : x16<br> - rs1_val == 32<br>                                                                                                                                     |[0x800004fc]:srli a6, s6, 42<br> [0x80000500]:sd a6, 8(ra)<br>       |
|  26|[0x800032d0]<br>0x0000000000000000|- rs1 : x28<br> - rd : x31<br> - rs1_val == 64<br>                                                                                                                                     |[0x80000508]:srli t6, t3, 8<br> [0x8000050c]:sd t6, 16(ra)<br>       |
|  27|[0x800032d8]<br>0x0000000000000000|- rs1 : x4<br> - rd : x28<br> - rs1_val == 128<br>                                                                                                                                     |[0x80000514]:srli t3, tp, 18<br> [0x80000518]:sd t3, 24(ra)<br>      |
|  28|[0x800032e0]<br>0x0000000000000000|- rs1 : x17<br> - rd : x24<br> - rs1_val == 256<br>                                                                                                                                    |[0x80000520]:srli s8, a7, 59<br> [0x80000524]:sd s8, 32(ra)<br>      |
|  29|[0x800032e8]<br>0x0000000000000001|- rs1 : x30<br> - rd : x5<br> - rs1_val == 512<br>                                                                                                                                     |[0x8000052c]:srli t0, t5, 9<br> [0x80000530]:sd t0, 40(ra)<br>       |
|  30|[0x800032f0]<br>0x0000000000000000|- rs1 : x9<br> - rd : x26<br> - rs1_val == 2048<br>                                                                                                                                    |[0x8000053c]:srli s10, s1, 19<br> [0x80000540]:sd s10, 48(ra)<br>    |
|  31|[0x800032f8]<br>0x0000000000000000|- rs1 : x20<br> - rd : x21<br> - rs1_val == 4096<br>                                                                                                                                   |[0x80000548]:srli s5, s4, 32<br> [0x8000054c]:sd s5, 56(ra)<br>      |
|  32|[0x80003300]<br>0x0000000000000080|- rs1 : x7<br> - rd : x20<br> - rs1_val == 8192<br>                                                                                                                                    |[0x80000554]:srli s4, t2, 6<br> [0x80000558]:sd s4, 64(ra)<br>       |
|  33|[0x80003308]<br>0x0000000000000000|- rs1_val == 16384<br>                                                                                                                                                                 |[0x80000560]:srli a1, a0, 63<br> [0x80000564]:sd a1, 72(ra)<br>      |
|  34|[0x80003310]<br>0x0000000000004000|- rs1_val == 131072<br>                                                                                                                                                                |[0x8000056c]:srli a1, a0, 3<br> [0x80000570]:sd a1, 80(ra)<br>       |
|  35|[0x80003318]<br>0x0000000000000000|- rs1_val == 262144<br>                                                                                                                                                                |[0x80000578]:srli a1, a0, 59<br> [0x8000057c]:sd a1, 88(ra)<br>      |
|  36|[0x80003320]<br>0x0000000000000020|- rs1_val == 524288<br>                                                                                                                                                                |[0x80000584]:srli a1, a0, 14<br> [0x80000588]:sd a1, 96(ra)<br>      |
|  37|[0x80003328]<br>0x0000000000000040|- rs1_val == 2097152<br>                                                                                                                                                               |[0x80000590]:srli a1, a0, 15<br> [0x80000594]:sd a1, 104(ra)<br>     |
|  38|[0x80003330]<br>0x0000000000020000|- rs1_val == 4194304<br>                                                                                                                                                               |[0x8000059c]:srli a1, a0, 5<br> [0x800005a0]:sd a1, 112(ra)<br>      |
|  39|[0x80003338]<br>0x0000000000000000|- rs1_val == 8388608<br>                                                                                                                                                               |[0x800005a8]:srli a1, a0, 62<br> [0x800005ac]:sd a1, 120(ra)<br>     |
|  40|[0x80003340]<br>0x0000000000040000|- rs1_val == 33554432<br>                                                                                                                                                              |[0x800005b4]:srli a1, a0, 7<br> [0x800005b8]:sd a1, 128(ra)<br>      |
|  41|[0x80003348]<br>0x0000000000000000|- rs1_val == 67108864<br>                                                                                                                                                              |[0x800005c0]:srli a1, a0, 63<br> [0x800005c4]:sd a1, 136(ra)<br>     |
|  42|[0x80003350]<br>0x0000000000000000|- rs1_val == 134217728<br>                                                                                                                                                             |[0x800005cc]:srli a1, a0, 59<br> [0x800005d0]:sd a1, 144(ra)<br>     |
|  43|[0x80003358]<br>0x0000000000000000|- rs1_val == 268435456<br>                                                                                                                                                             |[0x800005d8]:srli a1, a0, 63<br> [0x800005dc]:sd a1, 152(ra)<br>     |
|  44|[0x80003360]<br>0x0000000000010000|- rs1_val == 536870912<br>                                                                                                                                                             |[0x800005e4]:srli a1, a0, 13<br> [0x800005e8]:sd a1, 160(ra)<br>     |
|  45|[0x80003368]<br>0x0000000000000000|- rs1_val == 1073741824<br>                                                                                                                                                            |[0x800005f0]:srli a1, a0, 42<br> [0x800005f4]:sd a1, 168(ra)<br>     |
|  46|[0x80003370]<br>0x0000000010000000|- rs1_val == 2147483648<br>                                                                                                                                                            |[0x80000600]:srli a1, a0, 3<br> [0x80000604]:sd a1, 176(ra)<br>      |
|  47|[0x80003378]<br>0x0000000000000000|- rs1_val == 8589934592<br>                                                                                                                                                            |[0x80000610]:srli a1, a0, 55<br> [0x80000614]:sd a1, 184(ra)<br>     |
|  48|[0x80003380]<br>0x0000000000800000|- rs1_val == 17179869184<br>                                                                                                                                                           |[0x80000620]:srli a1, a0, 11<br> [0x80000624]:sd a1, 192(ra)<br>     |
|  49|[0x80003388]<br>0x0000000010000000|- rs1_val == 34359738368<br>                                                                                                                                                           |[0x80000630]:srli a1, a0, 7<br> [0x80000634]:sd a1, 200(ra)<br>      |
|  50|[0x80003390]<br>0x0000000000000000|- rs1_val == 68719476736<br>                                                                                                                                                           |[0x80000640]:srli a1, a0, 47<br> [0x80000644]:sd a1, 208(ra)<br>     |
|  51|[0x80003398]<br>0x0000000000200000|- rs1_val == 137438953472<br>                                                                                                                                                          |[0x80000650]:srli a1, a0, 16<br> [0x80000654]:sd a1, 216(ra)<br>     |
|  52|[0x800033a0]<br>0x0000000000000080|- rs1_val == 274877906944<br>                                                                                                                                                          |[0x80000660]:srli a1, a0, 31<br> [0x80000664]:sd a1, 224(ra)<br>     |
|  53|[0x800033a8]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                                                                                          |[0x80000670]:srli a1, a0, 55<br> [0x80000674]:sd a1, 232(ra)<br>     |
|  54|[0x800033b0]<br>0x0000002000000000|- rs1_val == 1099511627776<br>                                                                                                                                                         |[0x80000680]:srli a1, a0, 3<br> [0x80000684]:sd a1, 240(ra)<br>      |
|  55|[0x800033b8]<br>0x0000000000800000|- rs1_val == 2199023255552<br>                                                                                                                                                         |[0x80000690]:srli a1, a0, 18<br> [0x80000694]:sd a1, 248(ra)<br>     |
|  56|[0x800033c0]<br>0x0000000800000000|- rs1_val == 4398046511104<br>                                                                                                                                                         |[0x800006a0]:srli a1, a0, 7<br> [0x800006a4]:sd a1, 256(ra)<br>      |
|  57|[0x800033c8]<br>0x0000000200000000|- rs1_val == 8796093022208<br>                                                                                                                                                         |[0x800006b0]:srli a1, a0, 10<br> [0x800006b4]:sd a1, 264(ra)<br>     |
|  58|[0x800033d0]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                                                                        |[0x800006c0]:srli a1, a0, 61<br> [0x800006c4]:sd a1, 272(ra)<br>     |
|  59|[0x800033d8]<br>0x0000000004000000|- rs1_val == 35184372088832<br>                                                                                                                                                        |[0x800006d0]:srli a1, a0, 19<br> [0x800006d4]:sd a1, 280(ra)<br>     |
|  60|[0x800033e0]<br>0x0000001000000000|- rs1_val == 70368744177664<br>                                                                                                                                                        |[0x800006e0]:srli a1, a0, 10<br> [0x800006e4]:sd a1, 288(ra)<br>     |
|  61|[0x800033e8]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                                                                       |[0x800006f0]:srli a1, a0, 62<br> [0x800006f4]:sd a1, 296(ra)<br>     |
|  62|[0x800033f0]<br>0x0000001000000000|- rs1_val == 281474976710656<br>                                                                                                                                                       |[0x80000700]:srli a1, a0, 12<br> [0x80000704]:sd a1, 304(ra)<br>     |
|  63|[0x800033f8]<br>0x0000100000000000|- rs1_val == 562949953421312<br>                                                                                                                                                       |[0x80000710]:srli a1, a0, 5<br> [0x80000714]:sd a1, 312(ra)<br>      |
|  64|[0x80003400]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                                                                      |[0x80000720]:srli a1, a0, 59<br> [0x80000724]:sd a1, 320(ra)<br>     |
|  65|[0x80003408]<br>0x0004000000000000|- rs1_val == 2251799813685248<br>                                                                                                                                                      |[0x80000730]:srli a1, a0, 1<br> [0x80000734]:sd a1, 328(ra)<br>      |
|  66|[0x80003410]<br>0x0002000000000000|- rs1_val == 4503599627370496<br>                                                                                                                                                      |[0x80000740]:srli a1, a0, 3<br> [0x80000744]:sd a1, 336(ra)<br>      |
|  67|[0x80003418]<br>0x0000000800000000|- rs1_val == 9007199254740992<br>                                                                                                                                                      |[0x80000750]:srli a1, a0, 18<br> [0x80000754]:sd a1, 344(ra)<br>     |
|  68|[0x80003420]<br>0x0000080000000000|- rs1_val == 18014398509481984<br>                                                                                                                                                     |[0x80000760]:srli a1, a0, 11<br> [0x80000764]:sd a1, 352(ra)<br>     |
|  69|[0x80003428]<br>0x0000800000000000|- rs1_val == 36028797018963968<br>                                                                                                                                                     |[0x80000770]:srli a1, a0, 8<br> [0x80000774]:sd a1, 360(ra)<br>      |
|  70|[0x80003430]<br>0x0000040000000000|- rs1_val == 72057594037927936<br>                                                                                                                                                     |[0x80000780]:srli a1, a0, 14<br> [0x80000784]:sd a1, 368(ra)<br>     |
|  71|[0x80003438]<br>0x0008000000000000|- rs1_val == 144115188075855872<br>                                                                                                                                                    |[0x80000790]:srli a1, a0, 6<br> [0x80000794]:sd a1, 376(ra)<br>      |
|  72|[0x80003440]<br>0x00001FFFFFEFFFFF|- rs1_val == -549755813889<br>                                                                                                                                                         |[0x800007a4]:srli a1, a0, 19<br> [0x800007a8]:sd a1, 384(ra)<br>     |
|  73|[0x80003448]<br>0x00000000FFFFFEFF|- rs1_val == -1099511627777<br>                                                                                                                                                        |[0x800007b8]:srli a1, a0, 32<br> [0x800007bc]:sd a1, 392(ra)<br>     |
|  74|[0x80003450]<br>0x000FFFFFDFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                                                                        |[0x800007cc]:srli a1, a0, 12<br> [0x800007d0]:sd a1, 400(ra)<br>     |
|  75|[0x80003458]<br>0x000000000001FFFF|- rs1_val == -4398046511105<br>                                                                                                                                                        |[0x800007e0]:srli a1, a0, 47<br> [0x800007e4]:sd a1, 408(ra)<br>     |
|  76|[0x80003460]<br>0x1FFFFEFFFFFFFFFF|- rs1_val == -8796093022209<br>                                                                                                                                                        |[0x800007f4]:srli a1, a0, 3<br> [0x800007f8]:sd a1, 416(ra)<br>      |
|  77|[0x80003468]<br>0x0FFFFEFFFFFFFFFF|- rs1_val == -17592186044417<br>                                                                                                                                                       |[0x80000808]:srli a1, a0, 4<br> [0x8000080c]:sd a1, 424(ra)<br>      |
|  78|[0x80003470]<br>0x001FFFEFFFFFFFFF|- rs1_val == -140737488355329<br>                                                                                                                                                      |[0x8000081c]:srli a1, a0, 11<br> [0x80000820]:sd a1, 432(ra)<br>     |
|  79|[0x80003478]<br>0x007FFF7FFFFFFFFF|- rs1_val == -281474976710657<br>                                                                                                                                                      |[0x80000830]:srli a1, a0, 9<br> [0x80000834]:sd a1, 440(ra)<br>      |
|  80|[0x80003480]<br>0x7FFEFFFFFFFFFFFF|- rs1_val == -562949953421313<br>                                                                                                                                                      |[0x80000844]:srli a1, a0, 1<br> [0x80000848]:sd a1, 448(ra)<br>      |
|  81|[0x80003488]<br>0x3FFEFFFFFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                                                                     |[0x80000858]:srli a1, a0, 2<br> [0x8000085c]:sd a1, 456(ra)<br>      |
|  82|[0x80003490]<br>0xFFF7FFFFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                                                                     |[0x8000086c]:srli a1, a0, 0<br> [0x80000870]:sd a1, 464(ra)<br>      |
|  83|[0x80003498]<br>0x0000000000000007|- rs1_val == -9007199254740993<br>                                                                                                                                                     |[0x80000880]:srli a1, a0, 61<br> [0x80000884]:sd a1, 472(ra)<br>     |
|  84|[0x800034a0]<br>0x000007FDFFFFFFFF|- rs1_val == -18014398509481985<br>                                                                                                                                                    |[0x80000894]:srli a1, a0, 21<br> [0x80000898]:sd a1, 480(ra)<br>     |
|  85|[0x800034a8]<br>0x0000FF7FFFFFFFFF|- rs1_val == -36028797018963969<br>                                                                                                                                                    |[0x800008a8]:srli a1, a0, 16<br> [0x800008ac]:sd a1, 488(ra)<br>     |
|  86|[0x800034b0]<br>0x00000000FEFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                                                                    |[0x800008bc]:srli a1, a0, 32<br> [0x800008c0]:sd a1, 496(ra)<br>     |
|  87|[0x800034b8]<br>0x0000000000000003|- rs1_val == -144115188075855873<br>                                                                                                                                                   |[0x800008d0]:srli a1, a0, 62<br> [0x800008d4]:sd a1, 504(ra)<br>     |
|  88|[0x800034c0]<br>0x0001F7FFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                                                                   |[0x800008e4]:srli a1, a0, 15<br> [0x800008e8]:sd a1, 512(ra)<br>     |
|  89|[0x800034c8]<br>0x00000000F7FFFFFF|- rs1_val == -576460752303423489<br>                                                                                                                                                   |[0x800008f8]:srli a1, a0, 32<br> [0x800008fc]:sd a1, 520(ra)<br>     |
|  90|[0x800034d0]<br>0x0000000000000001|- rs1_val == -1152921504606846977<br>                                                                                                                                                  |[0x8000090c]:srli a1, a0, 63<br> [0x80000910]:sd a1, 528(ra)<br>     |
|  91|[0x800034d8]<br>0x37FFFFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                                                                  |[0x80000920]:srli a1, a0, 2<br> [0x80000924]:sd a1, 536(ra)<br>      |
|  92|[0x800034e0]<br>0x0000000000000001|- rs1_val == -4611686018427387905<br>                                                                                                                                                  |[0x80000934]:srli a1, a0, 63<br> [0x80000938]:sd a1, 544(ra)<br>     |
|  93|[0x800034e8]<br>0x5555555555555555|- rs1_val == 6148914691236517205<br>                                                                                                                                                   |[0x8000095c]:srli a1, a0, 0<br> [0x80000960]:sd a1, 552(ra)<br>      |
|  94|[0x800034f0]<br>0x0000055555555555|- rs1_val == -6148914691236517206<br>                                                                                                                                                  |[0x80000984]:srli a1, a0, 21<br> [0x80000988]:sd a1, 560(ra)<br>     |
|  95|[0x800034f8]<br>0x0000000008000000|- rs1_val == 288230376151711744<br>                                                                                                                                                    |[0x80000994]:srli a1, a0, 31<br> [0x80000998]:sd a1, 568(ra)<br>     |
|  96|[0x80003500]<br>0x0000800000000000|- rs1_val == 576460752303423488<br>                                                                                                                                                    |[0x800009a4]:srli a1, a0, 12<br> [0x800009a8]:sd a1, 576(ra)<br>     |
|  97|[0x80003508]<br>0x0100000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                                                   |[0x800009b4]:srli a1, a0, 4<br> [0x800009b8]:sd a1, 584(ra)<br>      |
|  98|[0x80003510]<br>0x07FFFFFFFFFFFFFF|- rs1_val == -2<br>                                                                                                                                                                    |[0x800009c0]:srli a1, a0, 5<br> [0x800009c4]:sd a1, 592(ra)<br>      |
|  99|[0x80003518]<br>0x0007FFFFFFFFFFFF|- rs1_val == -3<br>                                                                                                                                                                    |[0x800009cc]:srli a1, a0, 13<br> [0x800009d0]:sd a1, 600(ra)<br>     |
| 100|[0x80003520]<br>0x7FFFFFFFFFFFFFFD|- rs1_val == -5<br>                                                                                                                                                                    |[0x800009d8]:srli a1, a0, 1<br> [0x800009dc]:sd a1, 608(ra)<br>      |
| 101|[0x80003528]<br>0x01FFFFFFFFFFFFFF|- rs1_val == -9<br>                                                                                                                                                                    |[0x800009e4]:srli a1, a0, 7<br> [0x800009e8]:sd a1, 616(ra)<br>      |
| 102|[0x80003530]<br>0x000000000000001F|- rs1_val == -17<br>                                                                                                                                                                   |[0x800009f0]:srli a1, a0, 59<br> [0x800009f4]:sd a1, 624(ra)<br>     |
| 103|[0x80003538]<br>0x000007FFFFFFFFFF|- rs1_val == -33<br>                                                                                                                                                                   |[0x800009fc]:srli a1, a0, 21<br> [0x80000a00]:sd a1, 632(ra)<br>     |
| 104|[0x80003540]<br>0x0000000000000003|- rs1_val == -65<br>                                                                                                                                                                   |[0x80000a08]:srli a1, a0, 62<br> [0x80000a0c]:sd a1, 640(ra)<br>     |
| 105|[0x80003548]<br>0x0000000000000001|- rs1_val == -129<br>                                                                                                                                                                  |[0x80000a14]:srli a1, a0, 63<br> [0x80000a18]:sd a1, 648(ra)<br>     |
| 106|[0x80003550]<br>0x0007FFFFFFFFFFFF|- rs1_val == -257<br>                                                                                                                                                                  |[0x80000a20]:srli a1, a0, 13<br> [0x80000a24]:sd a1, 656(ra)<br>     |
| 107|[0x80003558]<br>0x00003FFFFFFFFFFF|- rs1_val == -513<br>                                                                                                                                                                  |[0x80000a2c]:srli a1, a0, 18<br> [0x80000a30]:sd a1, 664(ra)<br>     |
| 108|[0x80003560]<br>0x00003FFFFFFFFFFF|- rs1_val == -1025<br>                                                                                                                                                                 |[0x80000a38]:srli a1, a0, 18<br> [0x80000a3c]:sd a1, 672(ra)<br>     |
| 109|[0x80003568]<br>0x0001FFFFFFFFFFFF|- rs1_val == -4097<br>                                                                                                                                                                 |[0x80000a48]:srli a1, a0, 15<br> [0x80000a4c]:sd a1, 680(ra)<br>     |
| 110|[0x80003570]<br>0x00000000000001FF|- rs1_val == -8193<br>                                                                                                                                                                 |[0x80000a58]:srli a1, a0, 55<br> [0x80000a5c]:sd a1, 688(ra)<br>     |
| 111|[0x80003578]<br>0x00007FFFFFFFFFFF|- rs1_val == -16385<br>                                                                                                                                                                |[0x80000a68]:srli a1, a0, 17<br> [0x80000a6c]:sd a1, 696(ra)<br>     |
| 112|[0x80003580]<br>0x0000000000000003|- rs1_val == -32769<br>                                                                                                                                                                |[0x80000a78]:srli a1, a0, 62<br> [0x80000a7c]:sd a1, 704(ra)<br>     |
| 113|[0x80003588]<br>0x00007FFFFFFFFFFF|- rs1_val == -65537<br>                                                                                                                                                                |[0x80000a88]:srli a1, a0, 17<br> [0x80000a8c]:sd a1, 712(ra)<br>     |
| 114|[0x80003590]<br>0x0007FFFFFFFFFFEF|- rs1_val == -131073<br>                                                                                                                                                               |[0x80000a98]:srli a1, a0, 13<br> [0x80000a9c]:sd a1, 720(ra)<br>     |
| 115|[0x80003598]<br>0x00000000003FFFFF|- rs1_val == -262145<br>                                                                                                                                                               |[0x80000aa8]:srli a1, a0, 42<br> [0x80000aac]:sd a1, 728(ra)<br>     |
| 116|[0x800035a0]<br>0x00FFFFFFFFFFF7FF|- rs1_val == -524289<br>                                                                                                                                                               |[0x80000ab8]:srli a1, a0, 8<br> [0x80000abc]:sd a1, 736(ra)<br>      |
| 117|[0x800035a8]<br>0x00000000003FFFFF|- rs1_val == -1048577<br>                                                                                                                                                              |[0x80000ac8]:srli a1, a0, 42<br> [0x80000acc]:sd a1, 744(ra)<br>     |
| 118|[0x800035b0]<br>0x00FFFFFFFFFFDFFF|- rs1_val == -2097153<br>                                                                                                                                                              |[0x80000ad8]:srli a1, a0, 8<br> [0x80000adc]:sd a1, 752(ra)<br>      |
| 119|[0x800035b8]<br>0x0FFFFFFFFFFBFFFF|- rs1_val == -4194305<br>                                                                                                                                                              |[0x80000ae8]:srli a1, a0, 4<br> [0x80000aec]:sd a1, 760(ra)<br>      |
| 120|[0x800035c0]<br>0x0000000000000001|- rs1_val == -8388609<br>                                                                                                                                                              |[0x80000af8]:srli a1, a0, 63<br> [0x80000afc]:sd a1, 768(ra)<br>     |
| 121|[0x800035c8]<br>0x000FFFFFFFFFDFFF|- rs1_val == -33554433<br>                                                                                                                                                             |[0x80000b08]:srli a1, a0, 12<br> [0x80000b0c]:sd a1, 776(ra)<br>     |
| 122|[0x800035d0]<br>0x0FFFFFFFFFBFFFFF|- rs1_val == -67108865<br>                                                                                                                                                             |[0x80000b18]:srli a1, a0, 4<br> [0x80000b1c]:sd a1, 784(ra)<br>      |
| 123|[0x800035d8]<br>0x007FFFFFFFFBFFFF|- rs1_val == -134217729<br>                                                                                                                                                            |[0x80000b28]:srli a1, a0, 9<br> [0x80000b2c]:sd a1, 792(ra)<br>      |
| 124|[0x800035e0]<br>0x03FFFFFFFFBFFFFF|- rs1_val == -268435457<br>                                                                                                                                                            |[0x80000b38]:srli a1, a0, 6<br> [0x80000b3c]:sd a1, 800(ra)<br>      |
| 125|[0x800035e8]<br>0x7FFFFFFFEFFFFFFF|- rs1_val == -536870913<br>                                                                                                                                                            |[0x80000b48]:srli a1, a0, 1<br> [0x80000b4c]:sd a1, 808(ra)<br>      |
| 126|[0x800035f0]<br>0x0000000000000003|- rs1_val == -1073741825<br>                                                                                                                                                           |[0x80000b58]:srli a1, a0, 62<br> [0x80000b5c]:sd a1, 816(ra)<br>     |
| 127|[0x800035f8]<br>0x003FFFFFFFDFFFFF|- rs1_val == -2147483649<br>                                                                                                                                                           |[0x80000b6c]:srli a1, a0, 10<br> [0x80000b70]:sd a1, 824(ra)<br>     |
| 128|[0x80003600]<br>0x001FFFFFFFDFFFFF|- rs1_val == -4294967297<br>                                                                                                                                                           |[0x80000b80]:srli a1, a0, 11<br> [0x80000b84]:sd a1, 832(ra)<br>     |
| 129|[0x80003608]<br>0x000000000000001F|- rs1_val == -8589934593<br>                                                                                                                                                           |[0x80000b94]:srli a1, a0, 59<br> [0x80000b98]:sd a1, 840(ra)<br>     |
| 130|[0x80003610]<br>0x000000000001FFFF|- rs1_val == -17179869185<br>                                                                                                                                                          |[0x80000ba8]:srli a1, a0, 47<br> [0x80000bac]:sd a1, 848(ra)<br>     |
| 131|[0x80003618]<br>0x00000000FFFFFFF7|- rs1_val == -34359738369<br>                                                                                                                                                          |[0x80000bbc]:srli a1, a0, 32<br> [0x80000bc0]:sd a1, 856(ra)<br>     |
| 132|[0x80003620]<br>0x0000FFFFFFEFFFFF|- rs1_val == -68719476737<br>                                                                                                                                                          |[0x80000bd0]:srli a1, a0, 16<br> [0x80000bd4]:sd a1, 864(ra)<br>     |
| 133|[0x80003628]<br>0x000000000000001F|- rs1_val == -137438953473<br>                                                                                                                                                         |[0x80000be4]:srli a1, a0, 59<br> [0x80000be8]:sd a1, 872(ra)<br>     |
| 134|[0x80003630]<br>0x0001FFFFFF7FFFFF|- rs1_val == -274877906945<br>                                                                                                                                                         |[0x80000bf8]:srli a1, a0, 15<br> [0x80000bfc]:sd a1, 880(ra)<br>     |
| 135|[0x80003638]<br>0x0000000000000008|- rs1_val == 4611686018427387904<br>                                                                                                                                                   |[0x80000c08]:srli a1, a0, 59<br> [0x80000c0c]:sd a1, 888(ra)<br>     |
