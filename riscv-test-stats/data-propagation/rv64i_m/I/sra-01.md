
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000e80')]      |
| SIG_REGION                | [('0x80003208', '0x80003660', '139 dwords')]      |
| COV_LABELS                | sra      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sra-01.S/sra-01.S    |
| Total Number of coverpoints| 255     |
| Total Coverpoints Hit     | 255      |
| Total Signature Updates   | 139      |
| STAT1                     | 137      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e48]:sra a2, a0, a1
      [0x80000e4c]:sd a2, 936(ra)
 -- Signature Address: 0x80003648 Data: 0xFFFFFFFFFFFFF7FF
 -- Redundant Coverpoints hit by the op
      - opcode : sra
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == -524289
      - rs2_val == 8




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e70]:sra a2, a0, a1
      [0x80000e74]:sd a2, 952(ra)
 -- Signature Address: 0x80003658 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : sra
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 8192
      - rs2_val == 21






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

|s.no|            signature             |                                                                                         coverpoints                                                                                          |                                code                                |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003208]<br>0xFFFFFFFFFFFFFFFF|- opcode : sra<br> - rs1 : x6<br> - rs2 : x12<br> - rd : x12<br> - rs2 == rd != rs1<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br>                                                  |[0x800003a0]:sra a2, t1, a2<br> [0x800003a4]:sd a2, 0(s1)<br>       |
|   2|[0x80003210]<br>0x0000000000000020|- rs1 : x30<br> - rs2 : x29<br> - rd : x30<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == 16777216<br>                                          |[0x800003b0]:sra t5, t5, t4<br> [0x800003b4]:sd t5, 8(s1)<br>       |
|   3|[0x80003218]<br>0x0000000000000000|- rs1 : x21<br> - rs2 : x21<br> - rd : x21<br> - rs1 == rs2 == rd<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br>                                                                  |[0x800003c4]:sra s5, s5, s5<br> [0x800003c8]:sd s5, 16(s1)<br>      |
|   4|[0x80003220]<br>0x0000000000000000|- rs1 : x5<br> - rs2 : x5<br> - rd : x10<br> - rs1 == rs2 != rd<br>                                                                                                                           |[0x800003d4]:sra a0, t0, t0<br> [0x800003d8]:sd a0, 24(s1)<br>      |
|   5|[0x80003228]<br>0x0000000000000000|- rs1 : x18<br> - rs2 : x1<br> - rd : x23<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == 2<br> - rs2_val == 2<br> |[0x800003e4]:sra s7, s2, ra<br> [0x800003e8]:sd s7, 32(s1)<br>      |
|   6|[0x80003230]<br>0x0000000000000000|- rs1 : x17<br> - rs2 : x7<br> - rd : x4<br>                                                                                                                                                  |[0x800003f4]:sra tp, a7, t2<br> [0x800003f8]:sd tp, 40(s1)<br>      |
|   7|[0x80003238]<br>0x000000000000000F|- rs1 : x24<br> - rs2 : x28<br> - rd : x17<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 9223372036854775807<br> - rs2_val == 59<br>                  |[0x8000040c]:sra a7, s8, t3<br> [0x80000410]:sd a7, 48(s1)<br>      |
|   8|[0x80003240]<br>0x0000000000000000|- rs1 : x19<br> - rs2 : x16<br> - rd : x2<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br> - rs2_val == 16<br>                                                   |[0x8000041c]:sra sp, s3, a6<br> [0x80000420]:sd sp, 56(s1)<br>      |
|   9|[0x80003248]<br>0x0040000000000000|- rs1 : x14<br> - rs2 : x25<br> - rd : x22<br> - rs1_val == 36028797018963968<br> - rs2_val == 1<br>                                                                                          |[0x80000430]:sra s6, a4, s9<br> [0x80000434]:sd s6, 64(s1)<br>      |
|  10|[0x80003250]<br>0x0000000000000000|- rs1 : x11<br> - rs2 : x31<br> - rd : x18<br> - rs2_val == 4<br>                                                                                                                             |[0x80000440]:sra s2, a1, t6<br> [0x80000444]:sd s2, 72(s1)<br>      |
|  11|[0x80003258]<br>0x0000000000000000|- rs1 : x7<br> - rs2 : x24<br> - rd : x0<br> - rs1_val == -524289<br> - rs2_val == 8<br>                                                                                                      |[0x80000454]:sra zero, t2, s8<br> [0x80000458]:sd zero, 80(s1)<br>  |
|  12|[0x80003260]<br>0x0000000000000000|- rs1 : x2<br> - rs2 : x22<br> - rd : x11<br> - rs1_val == 4<br> - rs2_val == 32<br>                                                                                                          |[0x80000464]:sra a1, sp, s6<br> [0x80000468]:sd a1, 88(s1)<br>      |
|  13|[0x80003268]<br>0x0000000000000000|- rs1 : x31<br> - rs2 : x2<br> - rd : x6<br> - rs1_val == 2305843009213693952<br> - rs2_val == 62<br>                                                                                         |[0x80000478]:sra t1, t6, sp<br> [0x8000047c]:sd t1, 96(s1)<br>      |
|  14|[0x80003270]<br>0x0000000000000000|- rs1 : x3<br> - rs2 : x26<br> - rd : x8<br> - rs1_val == 16<br> - rs2_val == 61<br>                                                                                                          |[0x80000488]:sra fp, gp, s10<br> [0x8000048c]:sd fp, 104(s1)<br>    |
|  15|[0x80003278]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x4<br> - rd : x27<br> - rs2_val == 55<br>                                                                                                                              |[0x800004a0]:sra s11, zero, tp<br> [0x800004a4]:sd s11, 112(s1)<br> |
|  16|[0x80003280]<br>0x0000000000000000|- rs1 : x26<br> - rs2 : x23<br> - rd : x1<br> - rs1_val == 64<br> - rs2_val == 47<br>                                                                                                         |[0x800004b0]:sra ra, s10, s7<br> [0x800004b4]:sd ra, 120(s1)<br>    |
|  17|[0x80003288]<br>0x0000000000000000|- rs1 : x10<br> - rs2 : x14<br> - rd : x5<br> - rs2_val == 31<br>                                                                                                                             |[0x800004c0]:sra t0, a0, a4<br> [0x800004c4]:sd t0, 128(s1)<br>     |
|  18|[0x80003290]<br>0x0000000000002000|- rs1 : x1<br> - rs2 : x0<br> - rd : x24<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val == 8192<br>                                                                                         |[0x800004d0]:sra s8, ra, zero<br> [0x800004d4]:sd s8, 136(s1)<br>   |
|  19|[0x80003298]<br>0xFFFFFFFFFFFFFFBF|- rs1 : x8<br> - rs2 : x15<br> - rd : x25<br> - rs1_val == -281474976710657<br> - rs2_val == 42<br>                                                                                           |[0x800004e8]:sra s9, fp, a5<br> [0x800004ec]:sd s9, 144(s1)<br>     |
|  20|[0x800032a0]<br>0x0000000000000000|- rs1 : x27<br> - rs2 : x11<br> - rd : x15<br> - rs1_val == 8<br>                                                                                                                             |[0x80000500]:sra a5, s11, a1<br> [0x80000504]:sd a5, 0(ra)<br>      |
|  21|[0x800032a8]<br>0x0000000000000000|- rs1 : x4<br> - rs2 : x27<br> - rd : x20<br> - rs1_val == 32<br>                                                                                                                             |[0x80000510]:sra s4, tp, s11<br> [0x80000514]:sd s4, 8(ra)<br>      |
|  22|[0x800032b0]<br>0x0000000000000000|- rs1 : x16<br> - rs2 : x8<br> - rd : x14<br> - rs1_val == 128<br>                                                                                                                            |[0x80000520]:sra a4, a6, fp<br> [0x80000524]:sd a4, 16(ra)<br>      |
|  23|[0x800032b8]<br>0x0000000000000000|- rs1 : x23<br> - rs2 : x3<br> - rd : x28<br> - rs1_val == 512<br>                                                                                                                            |[0x80000530]:sra t3, s7, gp<br> [0x80000534]:sd t3, 24(ra)<br>      |
|  24|[0x800032c0]<br>0x0000000000000008|- rs1 : x12<br> - rs2 : x17<br> - rd : x7<br> - rs1_val == 1024<br>                                                                                                                           |[0x80000540]:sra t2, a2, a7<br> [0x80000544]:sd t2, 32(ra)<br>      |
|  25|[0x800032c8]<br>0x0000000000000000|- rs1 : x28<br> - rs2 : x20<br> - rd : x29<br> - rs1_val == 2048<br>                                                                                                                          |[0x80000554]:sra t4, t3, s4<br> [0x80000558]:sd t4, 40(ra)<br>      |
|  26|[0x800032d0]<br>0x0000000000000000|- rs1 : x13<br> - rs2 : x9<br> - rd : x16<br> - rs1_val == 4096<br>                                                                                                                           |[0x80000564]:sra a6, a3, s1<br> [0x80000568]:sd a6, 48(ra)<br>      |
|  27|[0x800032d8]<br>0x0000000000000008|- rs1 : x22<br> - rs2 : x13<br> - rd : x19<br> - rs1_val == 16384<br>                                                                                                                         |[0x80000574]:sra s3, s6, a3<br> [0x80000578]:sd s3, 56(ra)<br>      |
|  28|[0x800032e0]<br>0x0000000000000004|- rs1 : x15<br> - rs2 : x30<br> - rd : x31<br> - rs1_val == 32768<br>                                                                                                                         |[0x80000584]:sra t6, a5, t5<br> [0x80000588]:sd t6, 64(ra)<br>      |
|  29|[0x800032e8]<br>0x0000000000000000|- rs1 : x25<br> - rs2 : x6<br> - rd : x26<br> - rs1_val == 65536<br>                                                                                                                          |[0x80000594]:sra s10, s9, t1<br> [0x80000598]:sd s10, 72(ra)<br>    |
|  30|[0x800032f0]<br>0x0000000000000000|- rs1 : x29<br> - rs2 : x19<br> - rd : x13<br> - rs1_val == 131072<br>                                                                                                                        |[0x800005a4]:sra a3, t4, s3<br> [0x800005a8]:sd a3, 80(ra)<br>      |
|  31|[0x800032f8]<br>0x0000000000000020|- rs1 : x9<br> - rs2 : x18<br> - rd : x3<br> - rs1_val == 262144<br>                                                                                                                          |[0x800005b4]:sra gp, s1, s2<br> [0x800005b8]:sd gp, 88(ra)<br>      |
|  32|[0x80003300]<br>0x0000000000000080|- rs1 : x20<br> - rs2 : x10<br> - rd : x9<br> - rs1_val == 524288<br>                                                                                                                         |[0x800005c4]:sra s1, s4, a0<br> [0x800005c8]:sd s1, 96(ra)<br>      |
|  33|[0x80003308]<br>0x0000000000002000|- rs1_val == 1048576<br>                                                                                                                                                                      |[0x800005d4]:sra a2, a0, a1<br> [0x800005d8]:sd a2, 104(ra)<br>     |
|  34|[0x80003310]<br>0x0000000000008000|- rs1_val == 2097152<br>                                                                                                                                                                      |[0x800005e4]:sra a2, a0, a1<br> [0x800005e8]:sd a2, 112(ra)<br>     |
|  35|[0x80003318]<br>0x0000000000000000|- rs1_val == 4194304<br>                                                                                                                                                                      |[0x800005f4]:sra a2, a0, a1<br> [0x800005f8]:sd a2, 120(ra)<br>     |
|  36|[0x80003320]<br>0x0000000000080000|- rs1_val == 8388608<br>                                                                                                                                                                      |[0x80000604]:sra a2, a0, a1<br> [0x80000608]:sd a2, 128(ra)<br>     |
|  37|[0x80003328]<br>0x0000000000004000|- rs1_val == 33554432<br>                                                                                                                                                                     |[0x80000614]:sra a2, a0, a1<br> [0x80000618]:sd a2, 136(ra)<br>     |
|  38|[0x80003330]<br>0x0000000000000000|- rs1_val == 67108864<br>                                                                                                                                                                     |[0x80000624]:sra a2, a0, a1<br> [0x80000628]:sd a2, 144(ra)<br>     |
|  39|[0x80003338]<br>0x0000000000000000|- rs1_val == 134217728<br>                                                                                                                                                                    |[0x80000634]:sra a2, a0, a1<br> [0x80000638]:sd a2, 152(ra)<br>     |
|  40|[0x80003340]<br>0x0000000008000000|- rs1_val == 268435456<br>                                                                                                                                                                    |[0x80000644]:sra a2, a0, a1<br> [0x80000648]:sd a2, 160(ra)<br>     |
|  41|[0x80003348]<br>0x0000000000200000|- rs1_val == 536870912<br>                                                                                                                                                                    |[0x80000654]:sra a2, a0, a1<br> [0x80000658]:sd a2, 168(ra)<br>     |
|  42|[0x80003350]<br>0x0000000020000000|- rs1_val == 1073741824<br>                                                                                                                                                                   |[0x80000664]:sra a2, a0, a1<br> [0x80000668]:sd a2, 176(ra)<br>     |
|  43|[0x80003358]<br>0x0000000000000000|- rs1_val == 2147483648<br>                                                                                                                                                                   |[0x80000678]:sra a2, a0, a1<br> [0x8000067c]:sd a2, 184(ra)<br>     |
|  44|[0x80003360]<br>0x0000000000000001|- rs1_val == 4294967296<br>                                                                                                                                                                   |[0x8000068c]:sra a2, a0, a1<br> [0x80000690]:sd a2, 192(ra)<br>     |
|  45|[0x80003368]<br>0x0000000100000000|- rs1_val == 8589934592<br>                                                                                                                                                                   |[0x800006a0]:sra a2, a0, a1<br> [0x800006a4]:sd a2, 200(ra)<br>     |
|  46|[0x80003370]<br>0x0000000000010000|- rs1_val == 17179869184<br>                                                                                                                                                                  |[0x800006b4]:sra a2, a0, a1<br> [0x800006b8]:sd a2, 208(ra)<br>     |
|  47|[0x80003378]<br>0x0000000800000000|- rs1_val == 34359738368<br>                                                                                                                                                                  |[0x800006c8]:sra a2, a0, a1<br> [0x800006cc]:sd a2, 216(ra)<br>     |
|  48|[0x80003380]<br>0x0000000010000000|- rs1_val == 68719476736<br>                                                                                                                                                                  |[0x800006dc]:sra a2, a0, a1<br> [0x800006e0]:sd a2, 224(ra)<br>     |
|  49|[0x80003388]<br>0x0000000000000000|- rs1_val == 137438953472<br>                                                                                                                                                                 |[0x800006f0]:sra a2, a0, a1<br> [0x800006f4]:sd a2, 232(ra)<br>     |
|  50|[0x80003390]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                                                                                                 |[0x80000704]:sra a2, a0, a1<br> [0x80000708]:sd a2, 240(ra)<br>     |
|  51|[0x80003398]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                                                                                                 |[0x80000718]:sra a2, a0, a1<br> [0x8000071c]:sd a2, 248(ra)<br>     |
|  52|[0x800033a0]<br>0x0000000200000000|- rs1_val == 1099511627776<br>                                                                                                                                                                |[0x8000072c]:sra a2, a0, a1<br> [0x80000730]:sd a2, 256(ra)<br>     |
|  53|[0x800033a8]<br>0x0000020000000000|- rs1_val == 2199023255552<br>                                                                                                                                                                |[0x80000740]:sra a2, a0, a1<br> [0x80000744]:sd a2, 264(ra)<br>     |
|  54|[0x800033b0]<br>0x0000000001000000|- rs1_val == 4398046511104<br>                                                                                                                                                                |[0x80000754]:sra a2, a0, a1<br> [0x80000758]:sd a2, 272(ra)<br>     |
|  55|[0x800033b8]<br>0x0000000000000000|- rs1_val == 8796093022208<br>                                                                                                                                                                |[0x80000768]:sra a2, a0, a1<br> [0x8000076c]:sd a2, 280(ra)<br>     |
|  56|[0x800033c0]<br>0x0000001000000000|- rs1_val == 17592186044416<br>                                                                                                                                                               |[0x8000077c]:sra a2, a0, a1<br> [0x80000780]:sd a2, 288(ra)<br>     |
|  57|[0x800033c8]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                                                                               |[0x80000790]:sra a2, a0, a1<br> [0x80000794]:sd a2, 296(ra)<br>     |
|  58|[0x800033d0]<br>0x0000000000008000|- rs1_val == 70368744177664<br>                                                                                                                                                               |[0x800007a4]:sra a2, a0, a1<br> [0x800007a8]:sd a2, 304(ra)<br>     |
|  59|[0x800033d8]<br>0x0000000400000000|- rs1_val == 140737488355328<br>                                                                                                                                                              |[0x800007b8]:sra a2, a0, a1<br> [0x800007bc]:sd a2, 312(ra)<br>     |
|  60|[0x800033e0]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                                                                              |[0x800007cc]:sra a2, a0, a1<br> [0x800007d0]:sd a2, 320(ra)<br>     |
|  61|[0x800033e8]<br>0x0000100000000000|- rs1_val == 562949953421312<br>                                                                                                                                                              |[0x800007e0]:sra a2, a0, a1<br> [0x800007e4]:sd a2, 328(ra)<br>     |
|  62|[0x800033f0]<br>0x0000008000000000|- rs1_val == 1125899906842624<br>                                                                                                                                                             |[0x800007f4]:sra a2, a0, a1<br> [0x800007f8]:sd a2, 336(ra)<br>     |
|  63|[0x800033f8]<br>0x0000002000000000|- rs1_val == 2251799813685248<br>                                                                                                                                                             |[0x80000808]:sra a2, a0, a1<br> [0x8000080c]:sd a2, 344(ra)<br>     |
|  64|[0x80003400]<br>0x0010000000000000|- rs1_val == 4503599627370496<br>                                                                                                                                                             |[0x8000081c]:sra a2, a0, a1<br> [0x80000820]:sd a2, 352(ra)<br>     |
|  65|[0x80003408]<br>0x0008000000000000|- rs1_val == 9007199254740992<br>                                                                                                                                                             |[0x80000830]:sra a2, a0, a1<br> [0x80000834]:sd a2, 360(ra)<br>     |
|  66|[0x80003410]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                                                                            |[0x80000844]:sra a2, a0, a1<br> [0x80000848]:sd a2, 368(ra)<br>     |
|  67|[0x80003418]<br>0x0000100000000000|- rs1_val == 72057594037927936<br>                                                                                                                                                            |[0x80000858]:sra a2, a0, a1<br> [0x8000085c]:sd a2, 376(ra)<br>     |
|  68|[0x80003420]<br>0x0000000000000400|- rs1_val == 144115188075855872<br>                                                                                                                                                           |[0x8000086c]:sra a2, a0, a1<br> [0x80000870]:sd a2, 384(ra)<br>     |
|  69|[0x80003428]<br>0x0010000000000000|- rs1_val == 288230376151711744<br>                                                                                                                                                           |[0x80000880]:sra a2, a0, a1<br> [0x80000884]:sd a2, 392(ra)<br>     |
|  70|[0x80003430]<br>0x0200000000000000|- rs1_val == 576460752303423488<br>                                                                                                                                                           |[0x80000894]:sra a2, a0, a1<br> [0x80000898]:sd a2, 400(ra)<br>     |
|  71|[0x80003438]<br>0x0000200000000000|- rs1_val == 1152921504606846976<br>                                                                                                                                                          |[0x800008a8]:sra a2, a0, a1<br> [0x800008ac]:sd a2, 408(ra)<br>     |
|  72|[0x80003440]<br>0xFFFFFFFFEFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                                                                               |[0x800008c0]:sra a2, a0, a1<br> [0x800008c4]:sd a2, 416(ra)<br>     |
|  73|[0x80003448]<br>0xFFFFFEFFFFFFFFFF|- rs1_val == -4398046511105<br>                                                                                                                                                               |[0x800008d8]:sra a2, a0, a1<br> [0x800008dc]:sd a2, 424(ra)<br>     |
|  74|[0x80003450]<br>0xFFFFFFFDFFFFFFFF|- rs1_val == -8796093022209<br>                                                                                                                                                               |[0x800008f0]:sra a2, a0, a1<br> [0x800008f4]:sd a2, 432(ra)<br>     |
|  75|[0x80003458]<br>0xFFFFFFDFFFFFFFFF|- rs1_val == -17592186044417<br>                                                                                                                                                              |[0x80000908]:sra a2, a0, a1<br> [0x8000090c]:sd a2, 440(ra)<br>     |
|  76|[0x80003460]<br>0xFFFFFFFFDFFFFFFF|- rs1_val == -35184372088833<br>                                                                                                                                                              |[0x80000920]:sra a2, a0, a1<br> [0x80000924]:sd a2, 448(ra)<br>     |
|  77|[0x80003468]<br>0xFFFFFDFFFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                                                                              |[0x80000938]:sra a2, a0, a1<br> [0x8000093c]:sd a2, 456(ra)<br>     |
|  78|[0x80003470]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -140737488355329<br>                                                                                                                                                             |[0x80000950]:sra a2, a0, a1<br> [0x80000954]:sd a2, 464(ra)<br>     |
|  79|[0x80003478]<br>0xFFFFFFFDFFFFFFFF|- rs1_val == -562949953421313<br>                                                                                                                                                             |[0x80000968]:sra a2, a0, a1<br> [0x8000096c]:sd a2, 472(ra)<br>     |
|  80|[0x80003480]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                                                                            |[0x80000980]:sra a2, a0, a1<br> [0x80000984]:sd a2, 480(ra)<br>     |
|  81|[0x80003488]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                                                                            |[0x80000998]:sra a2, a0, a1<br> [0x8000099c]:sd a2, 488(ra)<br>     |
|  82|[0x80003490]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -9007199254740993<br>                                                                                                                                                            |[0x800009b0]:sra a2, a0, a1<br> [0x800009b4]:sd a2, 496(ra)<br>     |
|  83|[0x80003498]<br>0xFFFFFFBFFFFFFFFF|- rs1_val == -18014398509481985<br>                                                                                                                                                           |[0x800009c8]:sra a2, a0, a1<br> [0x800009cc]:sd a2, 504(ra)<br>     |
|  84|[0x800034a0]<br>0xFFFFFEFFFFFFFFFF|- rs1_val == -36028797018963969<br>                                                                                                                                                           |[0x800009e0]:sra a2, a0, a1<br> [0x800009e4]:sd a2, 512(ra)<br>     |
|  85|[0x800034a8]<br>0xFFFBFFFFFFFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                                                                           |[0x800009f8]:sra a2, a0, a1<br> [0x800009fc]:sd a2, 520(ra)<br>     |
|  86|[0x800034b0]<br>0xFFF7FFFFFFFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                                                                          |[0x80000a10]:sra a2, a0, a1<br> [0x80000a14]:sd a2, 528(ra)<br>     |
|  87|[0x800034b8]<br>0xFFEFFFFFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                                                                          |[0x80000a28]:sra a2, a0, a1<br> [0x80000a2c]:sd a2, 536(ra)<br>     |
|  88|[0x800034c0]<br>0xFFFFFEFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                                                                          |[0x80000a40]:sra a2, a0, a1<br> [0x80000a44]:sd a2, 544(ra)<br>     |
|  89|[0x800034c8]<br>0xFFEFFFFFFFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                                                                         |[0x80000a58]:sra a2, a0, a1<br> [0x80000a5c]:sd a2, 552(ra)<br>     |
|  90|[0x800034d0]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == -2305843009213693953<br>                                                                                                                                                         |[0x80000a70]:sra a2, a0, a1<br> [0x80000a74]:sd a2, 560(ra)<br>     |
|  91|[0x800034d8]<br>0xFFF7FFFFFFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                                                                         |[0x80000a88]:sra a2, a0, a1<br> [0x80000a8c]:sd a2, 568(ra)<br>     |
|  92|[0x800034e0]<br>0x00000000AAAAAAAA|- rs1_val == 6148914691236517205<br>                                                                                                                                                          |[0x80000ab4]:sra a2, a0, a1<br> [0x80000ab8]:sd a2, 576(ra)<br>     |
|  93|[0x800034e8]<br>0xFFFFFFFFFFEAAAAA|- rs1_val == -6148914691236517206<br>                                                                                                                                                         |[0x80000ae0]:sra a2, a0, a1<br> [0x80000ae4]:sd a2, 584(ra)<br>     |
|  94|[0x800034f0]<br>0x0000400000000000|- rs1_val == 4611686018427387904<br>                                                                                                                                                          |[0x80000af4]:sra a2, a0, a1<br> [0x80000af8]:sd a2, 592(ra)<br>     |
|  95|[0x800034f8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2<br>                                                                                                                                                                           |[0x80000b04]:sra a2, a0, a1<br> [0x80000b08]:sd a2, 600(ra)<br>     |
|  96|[0x80003500]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -3<br>                                                                                                                                                                           |[0x80000b14]:sra a2, a0, a1<br> [0x80000b18]:sd a2, 608(ra)<br>     |
|  97|[0x80003508]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -5<br> - rs2_val == 21<br>                                                                                                                                                       |[0x80000b24]:sra a2, a0, a1<br> [0x80000b28]:sd a2, 616(ra)<br>     |
|  98|[0x80003510]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -9<br>                                                                                                                                                                           |[0x80000b34]:sra a2, a0, a1<br> [0x80000b38]:sd a2, 624(ra)<br>     |
|  99|[0x80003518]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17<br>                                                                                                                                                                          |[0x80000b44]:sra a2, a0, a1<br> [0x80000b48]:sd a2, 632(ra)<br>     |
| 100|[0x80003520]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -33<br>                                                                                                                                                                          |[0x80000b54]:sra a2, a0, a1<br> [0x80000b58]:sd a2, 640(ra)<br>     |
| 101|[0x80003528]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -65<br>                                                                                                                                                                          |[0x80000b64]:sra a2, a0, a1<br> [0x80000b68]:sd a2, 648(ra)<br>     |
| 102|[0x80003530]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -129<br>                                                                                                                                                                         |[0x80000b74]:sra a2, a0, a1<br> [0x80000b78]:sd a2, 656(ra)<br>     |
| 103|[0x80003538]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -257<br>                                                                                                                                                                         |[0x80000b84]:sra a2, a0, a1<br> [0x80000b88]:sd a2, 664(ra)<br>     |
| 104|[0x80003540]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -513<br>                                                                                                                                                                         |[0x80000b94]:sra a2, a0, a1<br> [0x80000b98]:sd a2, 672(ra)<br>     |
| 105|[0x80003548]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1025<br>                                                                                                                                                                        |[0x80000ba4]:sra a2, a0, a1<br> [0x80000ba8]:sd a2, 680(ra)<br>     |
| 106|[0x80003550]<br>0xFFFFFFFFFFFFF7FF|- rs1_val < 0 and rs2_val == 0<br> - rs1_val == -2049<br>                                                                                                                                     |[0x80000bb8]:sra a2, a0, a1<br> [0x80000bbc]:sd a2, 688(ra)<br>     |
| 107|[0x80003558]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -4097<br>                                                                                                                                                                        |[0x80000bcc]:sra a2, a0, a1<br> [0x80000bd0]:sd a2, 696(ra)<br>     |
| 108|[0x80003560]<br>0xFFFFFFFFFFFFFFBF|- rs1_val == -8193<br>                                                                                                                                                                        |[0x80000be0]:sra a2, a0, a1<br> [0x80000be4]:sd a2, 704(ra)<br>     |
| 109|[0x80003568]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -16385<br>                                                                                                                                                                       |[0x80000bf4]:sra a2, a0, a1<br> [0x80000bf8]:sd a2, 712(ra)<br>     |
| 110|[0x80003570]<br>0xFFFFFFFFFFFFFBFF|- rs1_val == -32769<br>                                                                                                                                                                       |[0x80000c08]:sra a2, a0, a1<br> [0x80000c0c]:sd a2, 720(ra)<br>     |
| 111|[0x80003578]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -65537<br>                                                                                                                                                                       |[0x80000c1c]:sra a2, a0, a1<br> [0x80000c20]:sd a2, 728(ra)<br>     |
| 112|[0x80003580]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -131073<br>                                                                                                                                                                      |[0x80000c30]:sra a2, a0, a1<br> [0x80000c34]:sd a2, 736(ra)<br>     |
| 113|[0x80003588]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -262145<br>                                                                                                                                                                      |[0x80000c44]:sra a2, a0, a1<br> [0x80000c48]:sd a2, 744(ra)<br>     |
| 114|[0x80003590]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1048577<br>                                                                                                                                                                     |[0x80000c58]:sra a2, a0, a1<br> [0x80000c5c]:sd a2, 752(ra)<br>     |
| 115|[0x80003598]<br>0xFFFFFFFFFFDFFFFF|- rs1_val == -2097153<br>                                                                                                                                                                     |[0x80000c6c]:sra a2, a0, a1<br> [0x80000c70]:sd a2, 760(ra)<br>     |
| 116|[0x800035a0]<br>0xFFFFFFFFFFBFFFFF|- rs1_val == -4194305<br>                                                                                                                                                                     |[0x80000c80]:sra a2, a0, a1<br> [0x80000c84]:sd a2, 768(ra)<br>     |
| 117|[0x800035a8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8388609<br>                                                                                                                                                                     |[0x80000c94]:sra a2, a0, a1<br> [0x80000c98]:sd a2, 776(ra)<br>     |
| 118|[0x800035b0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -16777217<br>                                                                                                                                                                    |[0x80000ca8]:sra a2, a0, a1<br> [0x80000cac]:sd a2, 784(ra)<br>     |
| 119|[0x800035b8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -33554433<br>                                                                                                                                                                    |[0x80000cbc]:sra a2, a0, a1<br> [0x80000cc0]:sd a2, 792(ra)<br>     |
| 120|[0x800035c0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -67108865<br>                                                                                                                                                                    |[0x80000cd0]:sra a2, a0, a1<br> [0x80000cd4]:sd a2, 800(ra)<br>     |
| 121|[0x800035c8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -134217729<br>                                                                                                                                                                   |[0x80000ce4]:sra a2, a0, a1<br> [0x80000ce8]:sd a2, 808(ra)<br>     |
| 122|[0x800035d0]<br>0xFFFFFFFFFFEFFFFF|- rs1_val == -268435457<br>                                                                                                                                                                   |[0x80000cf8]:sra a2, a0, a1<br> [0x80000cfc]:sd a2, 816(ra)<br>     |
| 123|[0x800035d8]<br>0xFFFFFFFFFF7FFFFF|- rs1_val == -536870913<br>                                                                                                                                                                   |[0x80000d0c]:sra a2, a0, a1<br> [0x80000d10]:sd a2, 824(ra)<br>     |
| 124|[0x800035e0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1073741825<br>                                                                                                                                                                  |[0x80000d20]:sra a2, a0, a1<br> [0x80000d24]:sd a2, 832(ra)<br>     |
| 125|[0x800035e8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2147483649<br>                                                                                                                                                                  |[0x80000d38]:sra a2, a0, a1<br> [0x80000d3c]:sd a2, 840(ra)<br>     |
| 126|[0x800035f0]<br>0xFFFFFFFFFFFFBFFF|- rs1_val == -4294967297<br>                                                                                                                                                                  |[0x80000d50]:sra a2, a0, a1<br> [0x80000d54]:sd a2, 848(ra)<br>     |
| 127|[0x800035f8]<br>0xFFFFFFFFDFFFFFFF|- rs1_val == -8589934593<br>                                                                                                                                                                  |[0x80000d68]:sra a2, a0, a1<br> [0x80000d6c]:sd a2, 856(ra)<br>     |
| 128|[0x80003600]<br>0xFFFFFFFFFFFF7FFF|- rs1_val == -17179869185<br>                                                                                                                                                                 |[0x80000d80]:sra a2, a0, a1<br> [0x80000d84]:sd a2, 864(ra)<br>     |
| 129|[0x80003608]<br>0xFFFFFFFFFEFFFFFF|- rs1_val == -34359738369<br>                                                                                                                                                                 |[0x80000d98]:sra a2, a0, a1<br> [0x80000d9c]:sd a2, 872(ra)<br>     |
| 130|[0x80003610]<br>0xFFFFFFFFFF7FFFFF|- rs1_val == -68719476737<br>                                                                                                                                                                 |[0x80000db0]:sra a2, a0, a1<br> [0x80000db4]:sd a2, 880(ra)<br>     |
| 131|[0x80003618]<br>0xFFFFFFFBFFFFFFFF|- rs1_val == -137438953473<br>                                                                                                                                                                |[0x80000dc8]:sra a2, a0, a1<br> [0x80000dcc]:sd a2, 888(ra)<br>     |
| 132|[0x80003620]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -274877906945<br>                                                                                                                                                                |[0x80000de0]:sra a2, a0, a1<br> [0x80000de4]:sd a2, 896(ra)<br>     |
| 133|[0x80003628]<br>0xFFFFFFFFEFFFFFFF|- rs1_val == -549755813889<br>                                                                                                                                                                |[0x80000df8]:sra a2, a0, a1<br> [0x80000dfc]:sd a2, 904(ra)<br>     |
| 134|[0x80003630]<br>0xFFFFFFFFEFFFFFFF|- rs1_val == -1099511627777<br>                                                                                                                                                               |[0x80000e10]:sra a2, a0, a1<br> [0x80000e14]:sd a2, 912(ra)<br>     |
| 135|[0x80003638]<br>0x8000000000000000|- rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -9223372036854775808<br>                                                                                     |[0x80000e24]:sra a2, a0, a1<br> [0x80000e28]:sd a2, 920(ra)<br>     |
| 136|[0x80003640]<br>0x0000000000000100|- rs1_val == 256<br>                                                                                                                                                                          |[0x80000e34]:sra a2, a0, a1<br> [0x80000e38]:sd a2, 928(ra)<br>     |
| 137|[0x80003650]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                                                                            |[0x80000e60]:sra a2, a0, a1<br> [0x80000e64]:sd a2, 944(ra)<br>     |
