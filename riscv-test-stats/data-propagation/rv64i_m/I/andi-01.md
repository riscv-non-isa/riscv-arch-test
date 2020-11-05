
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
| COV_LABELS                | andi      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/andi-01.S/andi-01.S    |
| Total Number of coverpoints| 235     |
| Total Coverpoints Hit     | 235      |
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
      [0x80000c14]:andi a1, a0, 4092
      [0x80000c18]:sd a1, 872(gp)
 -- Signature Address: 0x80003638 Data: 0xEFFFFFFFFFFFFFFC
 -- Redundant Coverpoints hit by the op
      - opcode : andi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val < 0 and imm_val < 0
      - rs1_val == -1152921504606846977






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

|s.no|            signature             |                                                                           coverpoints                                                                            |                                 code                                 |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003208]<br>0x0000000000000008|- opcode : andi<br> - rs1 : x9<br> - rd : x2<br> - rs1 != rd<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br> - imm_val == 8<br> - rs1_val == 8<br> |[0x8000039c]:andi sp, s1, 8<br> [0x800003a0]:sd sp, 0(s2)<br>         |
|   2|[0x80003210]<br>0x0000000000000080|- rs1 : x4<br> - rd : x4<br> - rs1 == rd<br> - rs1_val != imm_val<br> - rs1_val < 0 and imm_val > 0<br> - imm_val == 128<br> - rs1_val == -1099511627777<br>      |[0x800003b0]:andi tp, tp, 128<br> [0x800003b4]:sd tp, 8(s2)<br>       |
|   3|[0x80003218]<br>0x0000400000000000|- rs1 : x28<br> - rd : x9<br> - rs1_val > 0 and imm_val < 0<br> - imm_val == -513<br> - rs1_val == 70368744177664<br>                                             |[0x800003c0]:andi s1, t3, 3583<br> [0x800003c4]:sd s1, 16(s2)<br>     |
|   4|[0x80003220]<br>0x0000000000000000|- rs1 : x30<br> - rd : x0<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -1152921504606846977<br>                                                             |[0x800003d4]:andi zero, t5, 4092<br> [0x800003d8]:sd zero, 24(s2)<br> |
|   5|[0x80003228]<br>0x0000000000000000|- rs1 : x22<br> - rd : x24<br> - rs1_val == (-2**(xlen-1))<br> - imm_val == 256<br> - rs1_val == -9223372036854775808<br>                                         |[0x800003e4]:andi s8, s6, 256<br> [0x800003e8]:sd s8, 32(s2)<br>      |
|   6|[0x80003230]<br>0x0000000000000000|- rs1 : x15<br> - rd : x16<br> - imm_val == (2**(12-1)-1)<br> - rs1_val == 0<br> - imm_val == 2047<br>                                                            |[0x800003f0]:andi a6, a5, 2047<br> [0x800003f4]:sd a6, 40(s2)<br>     |
|   7|[0x80003238]<br>0x0000000000000003|- rs1 : x5<br> - rd : x12<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>                                                               |[0x80000404]:andi a2, t0, 3<br> [0x80000408]:sd a2, 48(s2)<br>        |
|   8|[0x80003240]<br>0x0000000000000001|- rs1 : x11<br> - rd : x30<br> - rs1_val == 1<br>                                                                                                                 |[0x80000410]:andi t5, a1, 4089<br> [0x80000414]:sd t5, 56(s2)<br>     |
|   9|[0x80003248]<br>0xFFFFFFFFFFFFE800|- rs1 : x10<br> - rd : x17<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br> - rs1_val == -4097<br>                                                        |[0x80000420]:andi a7, a0, 2048<br> [0x80000424]:sd a7, 64(s2)<br>     |
|  10|[0x80003250]<br>0x0000000000000000|- rs1 : x6<br> - rd : x22<br> - imm_val == 0<br> - rs1_val == 4611686018427387904<br>                                                                             |[0x80000430]:andi s6, t1, 0<br> [0x80000434]:sd s6, 72(s2)<br>        |
|  11|[0x80003258]<br>0x0000000000000000|- rs1 : x29<br> - rd : x26<br> - imm_val == 1<br> - rs1_val == 562949953421312<br>                                                                                |[0x80000440]:andi s10, t4, 1<br> [0x80000444]:sd s10, 80(s2)<br>      |
|  12|[0x80003260]<br>0x0000000000000002|- rs1 : x12<br> - rd : x8<br> - rs1_val == 2<br>                                                                                                                  |[0x8000044c]:andi fp, a2, 4090<br> [0x80000450]:sd fp, 88(s2)<br>     |
|  13|[0x80003268]<br>0x0000000000000000|- rs1 : x0<br> - rd : x14<br>                                                                                                                                     |[0x80000458]:andi a4, zero, 3<br> [0x8000045c]:sd a4, 96(s2)<br>      |
|  14|[0x80003270]<br>0x0000000000000010|- rs1 : x8<br> - rd : x28<br> - rs1_val == 16<br>                                                                                                                 |[0x80000464]:andi t3, fp, 3583<br> [0x80000468]:sd t3, 104(s2)<br>    |
|  15|[0x80003278]<br>0x0000000000000000|- rs1 : x26<br> - rd : x1<br> - rs1_val == 32<br>                                                                                                                 |[0x80000470]:andi ra, s10, 3<br> [0x80000474]:sd ra, 112(s2)<br>      |
|  16|[0x80003280]<br>0x0000000000000000|- rs1 : x13<br> - rd : x10<br> - rs1_val == 64<br>                                                                                                                |[0x8000047c]:andi a0, a3, 3072<br> [0x80000480]:sd a0, 120(s2)<br>    |
|  17|[0x80003288]<br>0x0000000000000080|- rs1 : x7<br> - rd : x15<br> - rs1_val == 128<br>                                                                                                                |[0x80000488]:andi a5, t2, 4088<br> [0x8000048c]:sd a5, 128(s2)<br>    |
|  18|[0x80003290]<br>0x0000000000000100|- rs1 : x25<br> - rd : x5<br> - imm_val == -33<br> - rs1_val == 256<br>                                                                                           |[0x80000494]:andi t0, s9, 4063<br> [0x80000498]:sd t0, 136(s2)<br>    |
|  19|[0x80003298]<br>0x0000000000000200|- rs1 : x17<br> - rd : x25<br> - imm_val == -257<br> - rs1_val == 512<br>                                                                                         |[0x800004a0]:andi s9, a7, 3839<br> [0x800004a4]:sd s9, 144(s2)<br>    |
|  20|[0x800032a0]<br>0x0000000000000000|- rs1 : x31<br> - rd : x3<br> - rs1_val == 1024<br>                                                                                                               |[0x800004ac]:andi gp, t6, 8<br> [0x800004b0]:sd gp, 152(s2)<br>       |
|  21|[0x800032a8]<br>0x0000000000000000|- rs1 : x21<br> - rd : x31<br> - rs1_val == 2048<br>                                                                                                              |[0x800004bc]:andi t6, s5, 2047<br> [0x800004c0]:sd t6, 160(s2)<br>    |
|  22|[0x800032b0]<br>0x0000000000001000|- rs1 : x3<br> - rd : x6<br> - rs1_val == 4096<br>                                                                                                                |[0x800004c8]:andi t1, gp, 3072<br> [0x800004cc]:sd t1, 168(s2)<br>    |
|  23|[0x800032b8]<br>0x0000000000000000|- rs1 : x24<br> - rd : x19<br> - imm_val == 1365<br> - rs1_val == 8192<br>                                                                                        |[0x800004d4]:andi s3, s8, 1365<br> [0x800004d8]:sd s3, 176(s2)<br>    |
|  24|[0x800032c0]<br>0x0000000000000000|- rs1 : x19<br> - rd : x29<br> - rs1_val == 16384<br>                                                                                                             |[0x800004e0]:andi t4, s3, 256<br> [0x800004e4]:sd t4, 184(s2)<br>     |
|  25|[0x800032c8]<br>0x0000000000008000|- rs1 : x23<br> - rd : x7<br> - rs1_val == 32768<br>                                                                                                              |[0x800004ec]:andi t2, s7, 4095<br> [0x800004f0]:sd t2, 192(s2)<br>    |
|  26|[0x800032d0]<br>0x0000000000010000|- rs1 : x2<br> - rd : x27<br> - imm_val == -9<br> - rs1_val == 65536<br>                                                                                          |[0x80000500]:andi s11, sp, 4087<br> [0x80000504]:sd s11, 0(gp)<br>    |
|  27|[0x800032d8]<br>0x0000000000020000|- rs1 : x27<br> - rd : x21<br> - rs1_val == 131072<br>                                                                                                            |[0x8000050c]:andi s5, s11, 3072<br> [0x80000510]:sd s5, 8(gp)<br>     |
|  28|[0x800032e0]<br>0x0000000000000000|- rs1 : x1<br> - rd : x23<br> - rs1_val == 262144<br>                                                                                                             |[0x80000518]:andi s7, ra, 3<br> [0x8000051c]:sd s7, 16(gp)<br>        |
|  29|[0x800032e8]<br>0x0000000000080000|- rs1 : x18<br> - rd : x20<br> - rs1_val == 524288<br>                                                                                                            |[0x80000524]:andi s4, s2, 4088<br> [0x80000528]:sd s4, 24(gp)<br>     |
|  30|[0x800032f0]<br>0x0000000000000000|- rs1 : x16<br> - rd : x13<br> - imm_val == 64<br> - rs1_val == 1048576<br>                                                                                       |[0x80000530]:andi a3, a6, 64<br> [0x80000534]:sd a3, 32(gp)<br>       |
|  31|[0x800032f8]<br>0x0000000000000000|- rs1 : x20<br> - rd : x18<br> - imm_val == 32<br> - rs1_val == 2097152<br>                                                                                       |[0x8000053c]:andi s2, s4, 32<br> [0x80000540]:sd s2, 40(gp)<br>       |
|  32|[0x80003300]<br>0x0000000000400000|- rs1 : x14<br> - rd : x11<br> - rs1_val == 4194304<br>                                                                                                           |[0x80000548]:andi a1, a4, 4095<br> [0x8000054c]:sd a1, 48(gp)<br>     |
|  33|[0x80003308]<br>0x0000000000800000|- rs1_val == 8388608<br>                                                                                                                                          |[0x80000554]:andi a1, a0, 2048<br> [0x80000558]:sd a1, 56(gp)<br>     |
|  34|[0x80003310]<br>0x0000000000000000|- imm_val == 16<br> - rs1_val == 16777216<br>                                                                                                                     |[0x80000560]:andi a1, a0, 16<br> [0x80000564]:sd a1, 64(gp)<br>       |
|  35|[0x80003318]<br>0x0000000002000000|- rs1_val == 33554432<br>                                                                                                                                         |[0x8000056c]:andi a1, a0, 4095<br> [0x80000570]:sd a1, 72(gp)<br>     |
|  36|[0x80003320]<br>0x0000000000000000|- rs1_val == 67108864<br>                                                                                                                                         |[0x80000578]:andi a1, a0, 9<br> [0x8000057c]:sd a1, 80(gp)<br>        |
|  37|[0x80003328]<br>0x0000000000000000|- rs1_val == 134217728<br>                                                                                                                                        |[0x80000584]:andi a1, a0, 6<br> [0x80000588]:sd a1, 88(gp)<br>        |
|  38|[0x80003330]<br>0x0000000000000000|- imm_val == 512<br> - rs1_val == 268435456<br>                                                                                                                   |[0x80000590]:andi a1, a0, 512<br> [0x80000594]:sd a1, 96(gp)<br>      |
|  39|[0x80003338]<br>0x0000000020000000|- rs1_val == 536870912<br>                                                                                                                                        |[0x8000059c]:andi a1, a0, 3072<br> [0x800005a0]:sd a1, 104(gp)<br>    |
|  40|[0x80003340]<br>0x0000000040000000|- rs1_val == 1073741824<br>                                                                                                                                       |[0x800005a8]:andi a1, a0, 4089<br> [0x800005ac]:sd a1, 112(gp)<br>    |
|  41|[0x80003348]<br>0x0000000000000000|- imm_val == 1024<br> - rs1_val == 2147483648<br>                                                                                                                 |[0x800005b8]:andi a1, a0, 1024<br> [0x800005bc]:sd a1, 120(gp)<br>    |
|  42|[0x80003350]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                                                                       |[0x800005c8]:andi a1, a0, 6<br> [0x800005cc]:sd a1, 128(gp)<br>       |
|  43|[0x80003358]<br>0x0000000000000000|- rs1_val == 8589934592<br>                                                                                                                                       |[0x800005d8]:andi a1, a0, 1023<br> [0x800005dc]:sd a1, 136(gp)<br>    |
|  44|[0x80003360]<br>0x0000000400000000|- rs1_val == 17179869184<br>                                                                                                                                      |[0x800005e8]:andi a1, a0, 4090<br> [0x800005ec]:sd a1, 144(gp)<br>    |
|  45|[0x80003368]<br>0x0000000000000000|- rs1_val == 34359738368<br>                                                                                                                                      |[0x800005f8]:andi a1, a0, 1365<br> [0x800005fc]:sd a1, 152(gp)<br>    |
|  46|[0x80003370]<br>0x0000000000000000|- rs1_val == 68719476736<br>                                                                                                                                      |[0x80000608]:andi a1, a0, 1024<br> [0x8000060c]:sd a1, 160(gp)<br>    |
|  47|[0x80003378]<br>0x0000002000000000|- imm_val == -17<br> - rs1_val == 137438953472<br>                                                                                                                |[0x80000618]:andi a1, a0, 4079<br> [0x8000061c]:sd a1, 168(gp)<br>    |
|  48|[0x80003380]<br>0x0000004000000000|- imm_val == -1366<br> - rs1_val == 274877906944<br>                                                                                                              |[0x80000628]:andi a1, a0, 2730<br> [0x8000062c]:sd a1, 176(gp)<br>    |
|  49|[0x80003388]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                                                                     |[0x80000638]:andi a1, a0, 128<br> [0x8000063c]:sd a1, 184(gp)<br>     |
|  50|[0x80003390]<br>0x0000000000000000|- rs1_val == 1099511627776<br>                                                                                                                                    |[0x80000648]:andi a1, a0, 1<br> [0x8000064c]:sd a1, 192(gp)<br>       |
|  51|[0x80003398]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                                                    |[0x80000658]:andi a1, a0, 128<br> [0x8000065c]:sd a1, 200(gp)<br>     |
|  52|[0x800033a0]<br>0x0000040000000000|- rs1_val == 4398046511104<br>                                                                                                                                    |[0x80000668]:andi a1, a0, 3072<br> [0x8000066c]:sd a1, 208(gp)<br>    |
|  53|[0x800033a8]<br>0x0000080000000000|- rs1_val == 8796093022208<br>                                                                                                                                    |[0x80000678]:andi a1, a0, 4090<br> [0x8000067c]:sd a1, 216(gp)<br>    |
|  54|[0x800033b0]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                                                   |[0x80000688]:andi a1, a0, 2047<br> [0x8000068c]:sd a1, 224(gp)<br>    |
|  55|[0x800033b8]<br>0x0000200000000000|- imm_val == -2<br> - rs1_val == 35184372088832<br>                                                                                                               |[0x80000698]:andi a1, a0, 4094<br> [0x8000069c]:sd a1, 232(gp)<br>    |
|  56|[0x800033c0]<br>0x0000800000000000|- imm_val == -65<br> - rs1_val == 140737488355328<br>                                                                                                             |[0x800006a8]:andi a1, a0, 4031<br> [0x800006ac]:sd a1, 240(gp)<br>    |
|  57|[0x800033c8]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                                                  |[0x800006b8]:andi a1, a0, 0<br> [0x800006bc]:sd a1, 248(gp)<br>       |
|  58|[0x800033d0]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                                                 |[0x800006c8]:andi a1, a0, 2047<br> [0x800006cc]:sd a1, 256(gp)<br>    |
|  59|[0x800033d8]<br>0x0000000000000000|- rs1_val == 2251799813685248<br>                                                                                                                                 |[0x800006d8]:andi a1, a0, 1<br> [0x800006dc]:sd a1, 264(gp)<br>       |
|  60|[0x800033e0]<br>0x0010000000000000|- rs1_val == 4503599627370496<br>                                                                                                                                 |[0x800006e8]:andi a1, a0, 3072<br> [0x800006ec]:sd a1, 272(gp)<br>    |
|  61|[0x800033e8]<br>0x0000000000000000|- rs1_val == 9007199254740992<br>                                                                                                                                 |[0x800006f8]:andi a1, a0, 2047<br> [0x800006fc]:sd a1, 280(gp)<br>    |
|  62|[0x800033f0]<br>0x0040000000000000|- rs1_val == 18014398509481984<br>                                                                                                                                |[0x80000708]:andi a1, a0, 3072<br> [0x8000070c]:sd a1, 288(gp)<br>    |
|  63|[0x800033f8]<br>0x0080000000000000|- rs1_val == 36028797018963968<br>                                                                                                                                |[0x80000718]:andi a1, a0, 4031<br> [0x8000071c]:sd a1, 296(gp)<br>    |
|  64|[0x80003400]<br>0x0100000000000000|- rs1_val == 72057594037927936<br>                                                                                                                                |[0x80000728]:andi a1, a0, 3583<br> [0x8000072c]:sd a1, 304(gp)<br>    |
|  65|[0x80003408]<br>0x0200000000000000|- rs1_val == 144115188075855872<br>                                                                                                                               |[0x80000738]:andi a1, a0, 2730<br> [0x8000073c]:sd a1, 312(gp)<br>    |
|  66|[0x80003410]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                                               |[0x80000748]:andi a1, a0, 1024<br> [0x8000074c]:sd a1, 320(gp)<br>    |
|  67|[0x80003418]<br>0x0800000000000000|- rs1_val == 576460752303423488<br>                                                                                                                               |[0x80000758]:andi a1, a0, 2730<br> [0x8000075c]:sd a1, 328(gp)<br>    |
|  68|[0x80003420]<br>0x1000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                              |[0x80000768]:andi a1, a0, 4088<br> [0x8000076c]:sd a1, 336(gp)<br>    |
|  69|[0x80003428]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                              |[0x80000778]:andi a1, a0, 1023<br> [0x8000077c]:sd a1, 344(gp)<br>    |
|  70|[0x80003430]<br>0x00000000000007FE|- rs1_val == -2<br>                                                                                                                                               |[0x80000784]:andi a1, a0, 2047<br> [0x80000788]:sd a1, 352(gp)<br>    |
|  71|[0x80003438]<br>0xFFFFFFFFFFFFFBFD|- imm_val == -1025<br> - rs1_val == -3<br>                                                                                                                        |[0x80000790]:andi a1, a0, 3071<br> [0x80000794]:sd a1, 360(gp)<br>    |
|  72|[0x80003440]<br>0x0000000000000002|- imm_val == 2<br> - rs1_val == -5<br>                                                                                                                            |[0x8000079c]:andi a1, a0, 2<br> [0x800007a0]:sd a1, 368(gp)<br>       |
|  73|[0x80003448]<br>0x0000000000000006|- rs1_val == -9<br>                                                                                                                                               |[0x800007a8]:andi a1, a0, 6<br> [0x800007ac]:sd a1, 376(gp)<br>       |
|  74|[0x80003450]<br>0x0000000000000080|- rs1_val == -2251799813685249<br>                                                                                                                                |[0x800007bc]:andi a1, a0, 128<br> [0x800007c0]:sd a1, 384(gp)<br>     |
|  75|[0x80003458]<br>0x0000000000000008|- rs1_val == -4503599627370497<br>                                                                                                                                |[0x800007d0]:andi a1, a0, 8<br> [0x800007d4]:sd a1, 392(gp)<br>       |
|  76|[0x80003460]<br>0x0000000000000007|- rs1_val == -9007199254740993<br>                                                                                                                                |[0x800007e4]:andi a1, a0, 7<br> [0x800007e8]:sd a1, 400(gp)<br>       |
|  77|[0x80003468]<br>0x0000000000000100|- rs1_val == -18014398509481985<br>                                                                                                                               |[0x800007f8]:andi a1, a0, 256<br> [0x800007fc]:sd a1, 408(gp)<br>     |
|  78|[0x80003470]<br>0xFF7FFFFFFFFFFFFA|- rs1_val == -36028797018963969<br>                                                                                                                               |[0x8000080c]:andi a1, a0, 4090<br> [0x80000810]:sd a1, 416(gp)<br>    |
|  79|[0x80003478]<br>0x00000000000007FF|- rs1_val == -72057594037927937<br>                                                                                                                               |[0x80000820]:andi a1, a0, 2047<br> [0x80000824]:sd a1, 424(gp)<br>    |
|  80|[0x80003480]<br>0xFDFFFFFFFFFFFBFF|- rs1_val == -144115188075855873<br>                                                                                                                              |[0x80000834]:andi a1, a0, 3071<br> [0x80000838]:sd a1, 432(gp)<br>    |
|  81|[0x80003488]<br>0x0000000000000555|- rs1_val == -288230376151711745<br>                                                                                                                              |[0x80000848]:andi a1, a0, 1365<br> [0x8000084c]:sd a1, 440(gp)<br>    |
|  82|[0x80003490]<br>0x0000000000000080|- rs1_val == -576460752303423489<br>                                                                                                                              |[0x8000085c]:andi a1, a0, 128<br> [0x80000860]:sd a1, 448(gp)<br>     |
|  83|[0x80003498]<br>0x0000000000000040|- rs1_val == -2305843009213693953<br>                                                                                                                             |[0x80000870]:andi a1, a0, 64<br> [0x80000874]:sd a1, 456(gp)<br>      |
|  84|[0x800034a0]<br>0x0000000000000005|- rs1_val == -4611686018427387905<br>                                                                                                                             |[0x80000884]:andi a1, a0, 5<br> [0x80000888]:sd a1, 464(gp)<br>       |
|  85|[0x800034a8]<br>0x0000000000000000|- rs1_val == 6148914691236517205<br>                                                                                                                              |[0x800008ac]:andi a1, a0, 32<br> [0x800008b0]:sd a1, 472(gp)<br>      |
|  86|[0x800034b0]<br>0x0000000000000000|- rs1_val == -6148914691236517206<br>                                                                                                                             |[0x800008d4]:andi a1, a0, 1365<br> [0x800008d8]:sd a1, 480(gp)<br>    |
|  87|[0x800034b8]<br>0x0000000000000004|- imm_val == 4<br>                                                                                                                                                |[0x800008e8]:andi a1, a0, 4<br> [0x800008ec]:sd a1, 488(gp)<br>       |
|  88|[0x800034c0]<br>0x0000000002000000|- imm_val == -3<br>                                                                                                                                               |[0x800008f4]:andi a1, a0, 4093<br> [0x800008f8]:sd a1, 496(gp)<br>    |
|  89|[0x800034c8]<br>0xFFFFFFFFFFFDFFFB|- imm_val == -5<br> - rs1_val == -131073<br>                                                                                                                      |[0x80000904]:andi a1, a0, 4091<br> [0x80000908]:sd a1, 504(gp)<br>    |
|  90|[0x800034d0]<br>0x0000000000000005|- imm_val == -129<br>                                                                                                                                             |[0x80000910]:andi a1, a0, 3967<br> [0x80000914]:sd a1, 512(gp)<br>    |
|  91|[0x800034d8]<br>0xFFFFFFFFFFFFFFEB|- rs1_val == -17<br>                                                                                                                                              |[0x8000091c]:andi a1, a0, 4091<br> [0x80000920]:sd a1, 520(gp)<br>    |
|  92|[0x800034e0]<br>0xFFFFFFFFFFFFFFD9|- rs1_val == -33<br>                                                                                                                                              |[0x80000928]:andi a1, a0, 4089<br> [0x8000092c]:sd a1, 528(gp)<br>    |
|  93|[0x800034e8]<br>0x0000000000000020|- rs1_val == -65<br>                                                                                                                                              |[0x80000934]:andi a1, a0, 32<br> [0x80000938]:sd a1, 536(gp)<br>      |
|  94|[0x800034f0]<br>0x0000000000000010|- rs1_val == -129<br>                                                                                                                                             |[0x80000940]:andi a1, a0, 16<br> [0x80000944]:sd a1, 544(gp)<br>      |
|  95|[0x800034f8]<br>0x0000000000000001|- rs1_val == -257<br>                                                                                                                                             |[0x8000094c]:andi a1, a0, 1<br> [0x80000950]:sd a1, 552(gp)<br>       |
|  96|[0x80003500]<br>0xFFFFFFFFFFFFFDEF|- rs1_val == -513<br>                                                                                                                                             |[0x80000958]:andi a1, a0, 4079<br> [0x8000095c]:sd a1, 560(gp)<br>    |
|  97|[0x80003508]<br>0xFFFFFFFFFFFFFB7F|- rs1_val == -1025<br>                                                                                                                                            |[0x80000964]:andi a1, a0, 3967<br> [0x80000968]:sd a1, 568(gp)<br>    |
|  98|[0x80003510]<br>0x00000000000007FF|- rs1_val == -2049<br>                                                                                                                                            |[0x80000974]:andi a1, a0, 2047<br> [0x80000978]:sd a1, 576(gp)<br>    |
|  99|[0x80003518]<br>0x0000000000000002|- rs1_val == -8193<br>                                                                                                                                            |[0x80000984]:andi a1, a0, 2<br> [0x80000988]:sd a1, 584(gp)<br>       |
| 100|[0x80003520]<br>0xFFFFFFFFFFFFBFF8|- rs1_val == -16385<br>                                                                                                                                           |[0x80000994]:andi a1, a0, 4088<br> [0x80000998]:sd a1, 592(gp)<br>    |
| 101|[0x80003528]<br>0xFFFFFFFFFFFF7800|- rs1_val == -32769<br>                                                                                                                                           |[0x800009a4]:andi a1, a0, 2048<br> [0x800009a8]:sd a1, 600(gp)<br>    |
| 102|[0x80003530]<br>0x0000000000000003|- rs1_val == -65537<br>                                                                                                                                           |[0x800009b4]:andi a1, a0, 3<br> [0x800009b8]:sd a1, 608(gp)<br>       |
| 103|[0x80003538]<br>0xFFFFFFFFFFFBFFEF|- rs1_val == -262145<br>                                                                                                                                          |[0x800009c4]:andi a1, a0, 4079<br> [0x800009c8]:sd a1, 616(gp)<br>    |
| 104|[0x80003540]<br>0xFFFFFFFFFFF7FFFC|- rs1_val == -524289<br>                                                                                                                                          |[0x800009d4]:andi a1, a0, 4092<br> [0x800009d8]:sd a1, 624(gp)<br>    |
| 105|[0x80003548]<br>0x0000000000000040|- rs1_val == -1048577<br>                                                                                                                                         |[0x800009e4]:andi a1, a0, 64<br> [0x800009e8]:sd a1, 632(gp)<br>      |
| 106|[0x80003550]<br>0xFFFFFFFFFFDFFEFF|- rs1_val == -2097153<br>                                                                                                                                         |[0x800009f4]:andi a1, a0, 3839<br> [0x800009f8]:sd a1, 640(gp)<br>    |
| 107|[0x80003558]<br>0x0000000000000004|- rs1_val == -4194305<br>                                                                                                                                         |[0x80000a04]:andi a1, a0, 4<br> [0x80000a08]:sd a1, 648(gp)<br>       |
| 108|[0x80003560]<br>0x0000000000000003|- rs1_val == -8388609<br>                                                                                                                                         |[0x80000a14]:andi a1, a0, 3<br> [0x80000a18]:sd a1, 656(gp)<br>       |
| 109|[0x80003568]<br>0x0000000000000005|- rs1_val == -16777217<br>                                                                                                                                        |[0x80000a24]:andi a1, a0, 5<br> [0x80000a28]:sd a1, 664(gp)<br>       |
| 110|[0x80003570]<br>0x00000000000003FF|- rs1_val == -33554433<br>                                                                                                                                        |[0x80000a34]:andi a1, a0, 1023<br> [0x80000a38]:sd a1, 672(gp)<br>    |
| 111|[0x80003578]<br>0xFFFFFFFFFBFFFFF7|- rs1_val == -67108865<br>                                                                                                                                        |[0x80000a44]:andi a1, a0, 4087<br> [0x80000a48]:sd a1, 680(gp)<br>    |
| 112|[0x80003580]<br>0xFFFFFFFFF7FFFEFF|- rs1_val == -134217729<br>                                                                                                                                       |[0x80000a54]:andi a1, a0, 3839<br> [0x80000a58]:sd a1, 688(gp)<br>    |
| 113|[0x80003588]<br>0xFFFFFFFFEFFFFFBF|- rs1_val == -268435457<br>                                                                                                                                       |[0x80000a64]:andi a1, a0, 4031<br> [0x80000a68]:sd a1, 696(gp)<br>    |
| 114|[0x80003590]<br>0xFFFFFFFFDFFFF800|- rs1_val == -536870913<br>                                                                                                                                       |[0x80000a74]:andi a1, a0, 2048<br> [0x80000a78]:sd a1, 704(gp)<br>    |
| 115|[0x80003598]<br>0xFFFFFFFFBFFFFFFF|- rs1_val == -1073741825<br>                                                                                                                                      |[0x80000a84]:andi a1, a0, 4095<br> [0x80000a88]:sd a1, 712(gp)<br>    |
| 116|[0x800035a0]<br>0x00000000000007FF|- rs1_val == -2147483649<br>                                                                                                                                      |[0x80000a98]:andi a1, a0, 2047<br> [0x80000a9c]:sd a1, 720(gp)<br>    |
| 117|[0x800035a8]<br>0xFFFFFFFEFFFFFFFC|- rs1_val == -4294967297<br>                                                                                                                                      |[0x80000aac]:andi a1, a0, 4092<br> [0x80000ab0]:sd a1, 728(gp)<br>    |
| 118|[0x800035b0]<br>0x00000000000003FF|- rs1_val == -8589934593<br>                                                                                                                                      |[0x80000ac0]:andi a1, a0, 1023<br> [0x80000ac4]:sd a1, 736(gp)<br>    |
| 119|[0x800035b8]<br>0xFFFFFFFBFFFFFFDF|- rs1_val == -17179869185<br>                                                                                                                                     |[0x80000ad4]:andi a1, a0, 4063<br> [0x80000ad8]:sd a1, 744(gp)<br>    |
| 120|[0x800035c0]<br>0xFFFFFFF7FFFFFFFE|- rs1_val == -34359738369<br>                                                                                                                                     |[0x80000ae8]:andi a1, a0, 4094<br> [0x80000aec]:sd a1, 752(gp)<br>    |
| 121|[0x800035c8]<br>0x0000000000000008|- rs1_val == -68719476737<br>                                                                                                                                     |[0x80000afc]:andi a1, a0, 8<br> [0x80000b00]:sd a1, 760(gp)<br>       |
| 122|[0x800035d0]<br>0xFFFFFFDFFFFFFFFE|- rs1_val == -137438953473<br>                                                                                                                                    |[0x80000b10]:andi a1, a0, 4094<br> [0x80000b14]:sd a1, 768(gp)<br>    |
| 123|[0x800035d8]<br>0xFFFFFFBFFFFFFFF9|- rs1_val == -274877906945<br>                                                                                                                                    |[0x80000b24]:andi a1, a0, 4089<br> [0x80000b28]:sd a1, 776(gp)<br>    |
| 124|[0x800035e0]<br>0xFFFFFF7FFFFFFFEF|- rs1_val == -549755813889<br>                                                                                                                                    |[0x80000b38]:andi a1, a0, 4079<br> [0x80000b3c]:sd a1, 784(gp)<br>    |
| 125|[0x800035e8]<br>0xFFFFFDFFFFFFFFF9|- rs1_val == -2199023255553<br>                                                                                                                                   |[0x80000b4c]:andi a1, a0, 4089<br> [0x80000b50]:sd a1, 792(gp)<br>    |
| 126|[0x800035f0]<br>0x0000000000000080|- rs1_val == -4398046511105<br>                                                                                                                                   |[0x80000b60]:andi a1, a0, 128<br> [0x80000b64]:sd a1, 800(gp)<br>     |
| 127|[0x800035f8]<br>0x0000000000000003|- rs1_val == -8796093022209<br>                                                                                                                                   |[0x80000b74]:andi a1, a0, 3<br> [0x80000b78]:sd a1, 808(gp)<br>       |
| 128|[0x80003600]<br>0xFFFFEFFFFFFFFFF6|- rs1_val == -17592186044417<br>                                                                                                                                  |[0x80000b88]:andi a1, a0, 4086<br> [0x80000b8c]:sd a1, 816(gp)<br>    |
| 129|[0x80003608]<br>0x0000000000000020|- rs1_val == -35184372088833<br>                                                                                                                                  |[0x80000b9c]:andi a1, a0, 32<br> [0x80000ba0]:sd a1, 824(gp)<br>      |
| 130|[0x80003610]<br>0xFFFFBFFFFFFFFFFD|- rs1_val == -70368744177665<br>                                                                                                                                  |[0x80000bb0]:andi a1, a0, 4093<br> [0x80000bb4]:sd a1, 832(gp)<br>    |
| 131|[0x80003618]<br>0xFFFF7FFFFFFFFFFF|- rs1_val == -140737488355329<br>                                                                                                                                 |[0x80000bc4]:andi a1, a0, 4095<br> [0x80000bc8]:sd a1, 840(gp)<br>    |
| 132|[0x80003620]<br>0x0000000000000005|- rs1_val == -281474976710657<br>                                                                                                                                 |[0x80000bd8]:andi a1, a0, 5<br> [0x80000bdc]:sd a1, 848(gp)<br>       |
| 133|[0x80003628]<br>0xFFFDFFFFFFFFFFF6|- rs1_val == -562949953421313<br>                                                                                                                                 |[0x80000bec]:andi a1, a0, 4086<br> [0x80000bf0]:sd a1, 856(gp)<br>    |
| 134|[0x80003630]<br>0xFFFBFFFFFFFFFC00|- rs1_val == -1125899906842625<br>                                                                                                                                |[0x80000c00]:andi a1, a0, 3072<br> [0x80000c04]:sd a1, 864(gp)<br>    |
| 135|[0x80003640]<br>0x0000000000000000|- rs1_val == 4<br>                                                                                                                                                |[0x80000c20]:andi a1, a0, 3<br> [0x80000c24]:sd a1, 880(gp)<br>       |
