
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000e90')]      |
| SIG_REGION                | [('0x80003208', '0x80003660', '139 dwords')]      |
| COV_LABELS                | srl      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srl-01.S/srl-01.S    |
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
      [0x80000e6c]:srl a2, a0, a1
      [0x80000e70]:sd a2, 856(ra)
 -- Signature Address: 0x80003650 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : srl
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 4194304
      - rs2_val == 55




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e84]:srl a2, a0, a1
      [0x80000e88]:sd a2, 864(ra)
 -- Signature Address: 0x80003658 Data: 0x000000000001FEFF
 -- Redundant Coverpoints hit by the op
      - opcode : srl
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == -36028797018963969
      - rs2_val == 47






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

|s.no|            signature             |                                                                               coverpoints                                                                               |                                code                                |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003208]<br>0x03FFFFFFFFFBFFFF|- opcode : srl<br> - rs1 : x17<br> - rs2 : x16<br> - rd : x16<br> - rs2 == rd != rs1<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == -16777217<br> |[0x800003a4]:srl a6, a7, a6<br> [0x800003a8]:sd a6, 0(tp)<br>       |
|   2|[0x80003210]<br>0x0000000000000002|- rs1 : x5<br> - rs2 : x17<br> - rd : x5<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == 1024<br>                           |[0x800003b4]:srl t0, t0, a7<br> [0x800003b8]:sd t0, 8(tp)<br>       |
|   3|[0x80003218]<br>0x0000000000000000|- rs1 : x22<br> - rs2 : x22<br> - rd : x22<br> - rs1 == rs2 == rd<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br>                                             |[0x800003c4]:srl s6, s6, s6<br> [0x800003c8]:sd s6, 16(tp)<br>      |
|   4|[0x80003220]<br>0x0000000000000000|- rs1 : x10<br> - rs2 : x10<br> - rd : x15<br> - rs1 == rs2 != rd<br>                                                                                                    |[0x800003d8]:srl a5, a0, a0<br> [0x800003dc]:sd a5, 24(tp)<br>      |
|   5|[0x80003228]<br>0x0000000000000000|- rs1 : x18<br> - rs2 : x28<br> - rd : x14<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br>                 |[0x800003e8]:srl a4, s2, t3<br> [0x800003ec]:sd a4, 32(tp)<br>      |
|   6|[0x80003230]<br>0x0010000000000000|- rs1 : x23<br> - rs2 : x1<br> - rd : x21<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -9223372036854775808<br>                  |[0x800003fc]:srl s5, s7, ra<br> [0x80000400]:sd s5, 40(tp)<br>      |
|   7|[0x80003238]<br>0x0000000000000000|- rs1 : x30<br> - rs2 : x11<br> - rd : x19<br> - rs2_val == 42<br>                                                                                                       |[0x8000040c]:srl s3, t5, a1<br> [0x80000410]:sd s3, 48(tp)<br>      |
|   8|[0x80003240]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x2<br> - rd : x11<br> - rs2_val == 61<br>                                                                                                         |[0x80000424]:srl a1, zero, sp<br> [0x80000428]:sd a1, 56(tp)<br>    |
|   9|[0x80003248]<br>0x0000000000000000|- rs1 : x3<br> - rs2 : x19<br> - rd : x26<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br> - rs2_val == 32<br>                              |[0x80000434]:srl s10, gp, s3<br> [0x80000438]:sd s10, 64(tp)<br>    |
|  10|[0x80003250]<br>0x7FFFFFFFFF7FFFFF|- rs1 : x14<br> - rs2 : x9<br> - rd : x3<br> - rs2_val == 1<br>                                                                                                          |[0x80000448]:srl gp, a4, s1<br> [0x8000044c]:sd gp, 72(tp)<br>      |
|  11|[0x80003258]<br>0x2000000000000000|- rs1 : x25<br> - rs2 : x27<br> - rd : x13<br> - rs2_val == 2<br>                                                                                                        |[0x8000045c]:srl a3, s9, s11<br> [0x80000460]:sd a3, 80(tp)<br>     |
|  12|[0x80003260]<br>0x0FFFFFFFFFFFFFFF|- rs1 : x24<br> - rs2 : x12<br> - rd : x8<br> - rs1_val == -2<br> - rs2_val == 4<br>                                                                                     |[0x8000046c]:srl fp, s8, a2<br> [0x80000470]:sd fp, 88(tp)<br>      |
|  13|[0x80003268]<br>0x0000000001000000|- rs1 : x1<br> - rs2 : x25<br> - rd : x28<br> - rs1_val == 4294967296<br> - rs2_val == 8<br>                                                                             |[0x80000480]:srl t3, ra, s9<br> [0x80000484]:sd t3, 96(tp)<br>      |
|  14|[0x80003270]<br>0x0000000000080000|- rs1 : x2<br> - rs2 : x3<br> - rd : x24<br> - rs1_val == 34359738368<br> - rs2_val == 16<br>                                                                            |[0x80000494]:srl s8, sp, gp<br> [0x80000498]:sd s8, 104(tp)<br>     |
|  15|[0x80003278]<br>0x0000000000000003|- rs1 : x6<br> - rs2 : x26<br> - rd : x31<br> - rs1_val == -9<br> - rs2_val == 62<br>                                                                                    |[0x800004a4]:srl t6, t1, s10<br> [0x800004a8]:sd t6, 112(tp)<br>    |
|  16|[0x80003280]<br>0x000000000000001F|- rs1 : x12<br> - rs2 : x23<br> - rd : x27<br> - rs1_val == -3<br> - rs2_val == 59<br>                                                                                   |[0x800004b4]:srl s11, a2, s7<br> [0x800004b8]:sd s11, 120(tp)<br>   |
|  17|[0x80003288]<br>0x0000000000000000|- rs1 : x29<br> - rs2 : x13<br> - rd : x0<br> - rs1_val == 4194304<br> - rs2_val == 55<br>                                                                               |[0x800004c4]:srl zero, t4, a3<br> [0x800004c8]:sd zero, 128(tp)<br> |
|  18|[0x80003290]<br>0xFF7FFFFFFFFFFFFF|- rs1 : x9<br> - rs2 : x0<br> - rd : x17<br> - rs1_val < 0 and rs2_val == 0<br> - rs1_val == -36028797018963969<br>                                                      |[0x800004e4]:srl a7, s1, zero<br> [0x800004e8]:sd a7, 0(gp)<br>     |
|  19|[0x80003298]<br>0x00000001FFFFFFFF|- rs1 : x28<br> - rs2 : x29<br> - rd : x30<br> - rs1_val == -268435457<br> - rs2_val == 31<br>                                                                           |[0x800004f8]:srl t5, t3, t4<br> [0x800004fc]:sd t5, 8(gp)<br>       |
|  20|[0x800032a0]<br>0x0000000000000000|- rs1 : x7<br> - rs2 : x24<br> - rd : x2<br> - rs1_val == 32768<br> - rs2_val == 21<br>                                                                                  |[0x80000508]:srl sp, t2, s8<br> [0x8000050c]:sd sp, 16(gp)<br>      |
|  21|[0x800032a8]<br>0x0000000000000000|- rs1 : x27<br> - rs2 : x31<br> - rd : x6<br> - rs1_val == 2<br>                                                                                                         |[0x80000518]:srl t1, s11, t6<br> [0x8000051c]:sd t1, 24(gp)<br>     |
|  22|[0x800032b0]<br>0x0000000000000000|- rs1 : x20<br> - rs2 : x5<br> - rd : x25<br> - rs1_val == 4<br>                                                                                                         |[0x80000528]:srl s9, s4, t0<br> [0x8000052c]:sd s9, 32(gp)<br>      |
|  23|[0x800032b8]<br>0x0000000000000002|- rs1 : x4<br> - rs2 : x30<br> - rd : x18<br> - rs1_val == 8<br>                                                                                                         |[0x80000538]:srl s2, tp, t5<br> [0x8000053c]:sd s2, 40(gp)<br>      |
|  24|[0x800032c0]<br>0x0000000000000008|- rs1 : x26<br> - rs2 : x4<br> - rd : x10<br> - rs1_val == 16<br>                                                                                                        |[0x80000548]:srl a0, s10, tp<br> [0x8000054c]:sd a0, 48(gp)<br>     |
|  25|[0x800032c8]<br>0x0000000000000010|- rs1 : x31<br> - rs2 : x8<br> - rd : x20<br> - rs1_val == 32<br>                                                                                                        |[0x80000558]:srl s4, t6, fp<br> [0x8000055c]:sd s4, 56(gp)<br>      |
|  26|[0x800032d0]<br>0x0000000000000001|- rs1 : x19<br> - rs2 : x15<br> - rd : x12<br> - rs1_val == 64<br>                                                                                                       |[0x80000568]:srl a2, s3, a5<br> [0x8000056c]:sd a2, 64(gp)<br>      |
|  27|[0x800032d8]<br>0x0000000000000000|- rs1 : x8<br> - rs2 : x21<br> - rd : x29<br> - rs1_val == 128<br>                                                                                                       |[0x80000578]:srl t4, fp, s5<br> [0x8000057c]:sd t4, 72(gp)<br>      |
|  28|[0x800032e0]<br>0x0000000000000080|- rs1 : x11<br> - rs2 : x14<br> - rd : x7<br> - rs1_val == 256<br>                                                                                                       |[0x80000588]:srl t2, a1, a4<br> [0x8000058c]:sd t2, 80(gp)<br>      |
|  29|[0x800032e8]<br>0x0000000000000000|- rs1 : x16<br> - rs2 : x7<br> - rd : x1<br> - rs1_val == 512<br>                                                                                                        |[0x80000598]:srl ra, a6, t2<br> [0x8000059c]:sd ra, 88(gp)<br>      |
|  30|[0x800032f0]<br>0x0000000000001000|- rs1 : x15<br> - rs2 : x6<br> - rd : x23<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val == 4096<br>                                                                   |[0x800005a8]:srl s7, a5, t1<br> [0x800005ac]:sd s7, 96(gp)<br>      |
|  31|[0x800032f8]<br>0x0000000000002000|- rs1 : x21<br> - rs2 : x18<br> - rd : x9<br> - rs1_val == 8192<br>                                                                                                      |[0x800005c0]:srl s1, s5, s2<br> [0x800005c4]:sd s1, 0(ra)<br>       |
|  32|[0x80003300]<br>0x0000000000000020|- rs1 : x13<br> - rs2 : x20<br> - rd : x4<br> - rs1_val == 16384<br>                                                                                                     |[0x800005d0]:srl tp, a3, s4<br> [0x800005d4]:sd tp, 8(ra)<br>       |
|  33|[0x80003308]<br>0x0000000000000000|- rs1_val == 65536<br>                                                                                                                                                   |[0x800005e0]:srl a2, a0, a1<br> [0x800005e4]:sd a2, 16(ra)<br>      |
|  34|[0x80003310]<br>0x0000000000000800|- rs1_val == 131072<br>                                                                                                                                                  |[0x800005f0]:srl a2, a0, a1<br> [0x800005f4]:sd a2, 24(ra)<br>      |
|  35|[0x80003318]<br>0x0000000000000200|- rs1_val == 262144<br>                                                                                                                                                  |[0x80000600]:srl a2, a0, a1<br> [0x80000604]:sd a2, 32(ra)<br>      |
|  36|[0x80003320]<br>0x0000000000020000|- rs1_val == 524288<br>                                                                                                                                                  |[0x80000610]:srl a2, a0, a1<br> [0x80000614]:sd a2, 40(ra)<br>      |
|  37|[0x80003328]<br>0x0000000000000004|- rs1_val == 1048576<br>                                                                                                                                                 |[0x80000620]:srl a2, a0, a1<br> [0x80000624]:sd a2, 48(ra)<br>      |
|  38|[0x80003330]<br>0x0000000000020000|- rs1_val == 2097152<br>                                                                                                                                                 |[0x80000630]:srl a2, a0, a1<br> [0x80000634]:sd a2, 56(ra)<br>      |
|  39|[0x80003338]<br>0x0000000000000010|- rs1_val == 8388608<br>                                                                                                                                                 |[0x80000640]:srl a2, a0, a1<br> [0x80000644]:sd a2, 64(ra)<br>      |
|  40|[0x80003340]<br>0x0000000000002000|- rs1_val == 16777216<br>                                                                                                                                                |[0x80000650]:srl a2, a0, a1<br> [0x80000654]:sd a2, 72(ra)<br>      |
|  41|[0x80003348]<br>0x0000000000000000|- rs1_val == 33554432<br>                                                                                                                                                |[0x80000660]:srl a2, a0, a1<br> [0x80000664]:sd a2, 80(ra)<br>      |
|  42|[0x80003350]<br>0x0000000000008000|- rs1_val == 67108864<br>                                                                                                                                                |[0x80000670]:srl a2, a0, a1<br> [0x80000674]:sd a2, 88(ra)<br>      |
|  43|[0x80003358]<br>0x0000000000000800|- rs1_val == 134217728<br>                                                                                                                                               |[0x80000680]:srl a2, a0, a1<br> [0x80000684]:sd a2, 96(ra)<br>      |
|  44|[0x80003360]<br>0x0000000000400000|- rs1_val == 268435456<br>                                                                                                                                               |[0x80000690]:srl a2, a0, a1<br> [0x80000694]:sd a2, 104(ra)<br>     |
|  45|[0x80003368]<br>0x0000000000020000|- rs1_val == 536870912<br>                                                                                                                                               |[0x800006a0]:srl a2, a0, a1<br> [0x800006a4]:sd a2, 112(ra)<br>     |
|  46|[0x80003370]<br>0x0000000001000000|- rs1_val == 1073741824<br>                                                                                                                                              |[0x800006b0]:srl a2, a0, a1<br> [0x800006b4]:sd a2, 120(ra)<br>     |
|  47|[0x80003378]<br>0x0000000000000000|- rs1_val == 2147483648<br> - rs2_val == 47<br>                                                                                                                          |[0x800006c4]:srl a2, a0, a1<br> [0x800006c8]:sd a2, 128(ra)<br>     |
|  48|[0x80003380]<br>0x0000000000080000|- rs1_val == 8589934592<br>                                                                                                                                              |[0x800006d8]:srl a2, a0, a1<br> [0x800006dc]:sd a2, 136(ra)<br>     |
|  49|[0x80003388]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                                                                             |[0x800006ec]:srl a2, a0, a1<br> [0x800006f0]:sd a2, 144(ra)<br>     |
|  50|[0x80003390]<br>0x0000000100000000|- rs1_val == 68719476736<br>                                                                                                                                             |[0x80000700]:srl a2, a0, a1<br> [0x80000704]:sd a2, 152(ra)<br>     |
|  51|[0x80003398]<br>0x0000000040000000|- rs1_val == 137438953472<br>                                                                                                                                            |[0x80000714]:srl a2, a0, a1<br> [0x80000718]:sd a2, 160(ra)<br>     |
|  52|[0x800033a0]<br>0x0000000200000000|- rs1_val == 274877906944<br>                                                                                                                                            |[0x80000728]:srl a2, a0, a1<br> [0x8000072c]:sd a2, 168(ra)<br>     |
|  53|[0x800033a8]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                                                                            |[0x8000073c]:srl a2, a0, a1<br> [0x80000740]:sd a2, 176(ra)<br>     |
|  54|[0x800033b0]<br>0x0000000000000000|- rs1_val == 1099511627776<br>                                                                                                                                           |[0x80000750]:srl a2, a0, a1<br> [0x80000754]:sd a2, 184(ra)<br>     |
|  55|[0x800033b8]<br>0x0000000004000000|- rs1_val == 2199023255552<br>                                                                                                                                           |[0x80000764]:srl a2, a0, a1<br> [0x80000768]:sd a2, 192(ra)<br>     |
|  56|[0x800033c0]<br>0x0000000100000000|- rs1_val == 4398046511104<br>                                                                                                                                           |[0x80000778]:srl a2, a0, a1<br> [0x8000077c]:sd a2, 200(ra)<br>     |
|  57|[0x800033c8]<br>0x0000000000000000|- rs1_val == 8796093022208<br>                                                                                                                                           |[0x8000078c]:srl a2, a0, a1<br> [0x80000790]:sd a2, 208(ra)<br>     |
|  58|[0x800033d0]<br>0x0000004000000000|- rs1_val == 17592186044416<br>                                                                                                                                          |[0x800007a0]:srl a2, a0, a1<br> [0x800007a4]:sd a2, 216(ra)<br>     |
|  59|[0x800033d8]<br>0x0000000000004000|- rs1_val == 35184372088832<br>                                                                                                                                          |[0x800007b4]:srl a2, a0, a1<br> [0x800007b8]:sd a2, 224(ra)<br>     |
|  60|[0x800033e0]<br>0x0000000040000000|- rs1_val == 70368744177664<br>                                                                                                                                          |[0x800007c8]:srl a2, a0, a1<br> [0x800007cc]:sd a2, 232(ra)<br>     |
|  61|[0x800033e8]<br>0x0000000000000001|- rs1_val == 140737488355328<br>                                                                                                                                         |[0x800007dc]:srl a2, a0, a1<br> [0x800007e0]:sd a2, 240(ra)<br>     |
|  62|[0x800033f0]<br>0x0000000800000000|- rs1_val == 281474976710656<br>                                                                                                                                         |[0x800007f0]:srl a2, a0, a1<br> [0x800007f4]:sd a2, 248(ra)<br>     |
|  63|[0x800033f8]<br>0x0000000000000004|- rs1_val == 562949953421312<br>                                                                                                                                         |[0x80000804]:srl a2, a0, a1<br> [0x80000808]:sd a2, 256(ra)<br>     |
|  64|[0x80003400]<br>0x0000008000000000|- rs1_val == 1125899906842624<br>                                                                                                                                        |[0x80000818]:srl a2, a0, a1<br> [0x8000081c]:sd a2, 264(ra)<br>     |
|  65|[0x80003408]<br>0x0000000000000000|- rs1_val == 2251799813685248<br>                                                                                                                                        |[0x8000082c]:srl a2, a0, a1<br> [0x80000830]:sd a2, 272(ra)<br>     |
|  66|[0x80003410]<br>0x0000000000000000|- rs1_val == 4503599627370496<br>                                                                                                                                        |[0x80000840]:srl a2, a0, a1<br> [0x80000844]:sd a2, 280(ra)<br>     |
|  67|[0x80003418]<br>0x0020000000000000|- rs1_val == 9007199254740992<br>                                                                                                                                        |[0x80000854]:srl a2, a0, a1<br> [0x80000858]:sd a2, 288(ra)<br>     |
|  68|[0x80003420]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                                                       |[0x80000868]:srl a2, a0, a1<br> [0x8000086c]:sd a2, 296(ra)<br>     |
|  69|[0x80003428]<br>0x0008000000000000|- rs1_val == 36028797018963968<br>                                                                                                                                       |[0x8000087c]:srl a2, a0, a1<br> [0x80000880]:sd a2, 304(ra)<br>     |
|  70|[0x80003430]<br>0x0100000000000000|- rs1_val == 72057594037927936<br>                                                                                                                                       |[0x80000890]:srl a2, a0, a1<br> [0x80000894]:sd a2, 312(ra)<br>     |
|  71|[0x80003438]<br>0x0000001000000000|- rs1_val == 144115188075855872<br>                                                                                                                                      |[0x800008a4]:srl a2, a0, a1<br> [0x800008a8]:sd a2, 320(ra)<br>     |
|  72|[0x80003440]<br>0x0000100000000000|- rs1_val == 288230376151711744<br>                                                                                                                                      |[0x800008b8]:srl a2, a0, a1<br> [0x800008bc]:sd a2, 328(ra)<br>     |
|  73|[0x80003448]<br>0x001FFFFFBFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                                                          |[0x800008d0]:srl a2, a0, a1<br> [0x800008d4]:sd a2, 336(ra)<br>     |
|  74|[0x80003450]<br>0x07FFFFDFFFFFFFFF|- rs1_val == -4398046511105<br>                                                                                                                                          |[0x800008e8]:srl a2, a0, a1<br> [0x800008ec]:sd a2, 344(ra)<br>     |
|  75|[0x80003458]<br>0x01FFFFEFFFFFFFFF|- rs1_val == -8796093022209<br>                                                                                                                                          |[0x80000900]:srl a2, a0, a1<br> [0x80000904]:sd a2, 352(ra)<br>     |
|  76|[0x80003460]<br>0x1FFFFDFFFFFFFFFF|- rs1_val == -17592186044417<br>                                                                                                                                         |[0x80000918]:srl a2, a0, a1<br> [0x8000091c]:sd a2, 360(ra)<br>     |
|  77|[0x80003468]<br>0x0001FFFFBFFFFFFF|- rs1_val == -35184372088833<br>                                                                                                                                         |[0x80000930]:srl a2, a0, a1<br> [0x80000934]:sd a2, 368(ra)<br>     |
|  78|[0x80003470]<br>0x0001FFFF7FFFFFFF|- rs1_val == -70368744177665<br>                                                                                                                                         |[0x80000948]:srl a2, a0, a1<br> [0x8000094c]:sd a2, 376(ra)<br>     |
|  79|[0x80003478]<br>0x00007FFFBFFFFFFF|- rs1_val == -140737488355329<br>                                                                                                                                        |[0x80000960]:srl a2, a0, a1<br> [0x80000964]:sd a2, 384(ra)<br>     |
|  80|[0x80003480]<br>0x00FFFEFFFFFFFFFF|- rs1_val == -281474976710657<br>                                                                                                                                        |[0x80000978]:srl a2, a0, a1<br> [0x8000097c]:sd a2, 392(ra)<br>     |
|  81|[0x80003488]<br>0x00003FFF7FFFFFFF|- rs1_val == -562949953421313<br>                                                                                                                                        |[0x80000990]:srl a2, a0, a1<br> [0x80000994]:sd a2, 400(ra)<br>     |
|  82|[0x80003490]<br>0x0001FFF7FFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                                                       |[0x800009a8]:srl a2, a0, a1<br> [0x800009ac]:sd a2, 408(ra)<br>     |
|  83|[0x80003498]<br>0x007FFBFFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                                                       |[0x800009c0]:srl a2, a0, a1<br> [0x800009c4]:sd a2, 416(ra)<br>     |
|  84|[0x800034a0]<br>0x000000000000001F|- rs1_val == -4503599627370497<br>                                                                                                                                       |[0x800009d8]:srl a2, a0, a1<br> [0x800009dc]:sd a2, 424(ra)<br>     |
|  85|[0x800034a8]<br>0x007FEFFFFFFFFFFF|- rs1_val == -9007199254740993<br>                                                                                                                                       |[0x800009f0]:srl a2, a0, a1<br> [0x800009f4]:sd a2, 432(ra)<br>     |
|  86|[0x800034b0]<br>0x00000000000001FF|- rs1_val == -18014398509481985<br>                                                                                                                                      |[0x80000a08]:srl a2, a0, a1<br> [0x80000a0c]:sd a2, 440(ra)<br>     |
|  87|[0x800034b8]<br>0x0003FBFFFFFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                                                      |[0x80000a20]:srl a2, a0, a1<br> [0x80000a24]:sd a2, 448(ra)<br>     |
|  88|[0x800034c0]<br>0x07EFFFFFFFFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                                                     |[0x80000a38]:srl a2, a0, a1<br> [0x80000a3c]:sd a2, 456(ra)<br>     |
|  89|[0x800034c8]<br>0x0000000000000001|- rs1_val == -288230376151711745<br>                                                                                                                                     |[0x80000a50]:srl a2, a0, a1<br> [0x80000a54]:sd a2, 464(ra)<br>     |
|  90|[0x800034d0]<br>0x3DFFFFFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                                                     |[0x80000a68]:srl a2, a0, a1<br> [0x80000a6c]:sd a2, 472(ra)<br>     |
|  91|[0x800034d8]<br>0x0001DFFFFFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                                                    |[0x80000a80]:srl a2, a0, a1<br> [0x80000a84]:sd a2, 480(ra)<br>     |
|  92|[0x800034e0]<br>0x0001BFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                                                    |[0x80000a98]:srl a2, a0, a1<br> [0x80000a9c]:sd a2, 488(ra)<br>     |
|  93|[0x800034e8]<br>0x002FFFFFFFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                                                    |[0x80000ab0]:srl a2, a0, a1<br> [0x80000ab4]:sd a2, 496(ra)<br>     |
|  94|[0x800034f0]<br>0x00000000000000AA|- rs1_val == 6148914691236517205<br>                                                                                                                                     |[0x80000adc]:srl a2, a0, a1<br> [0x80000ae0]:sd a2, 504(ra)<br>     |
|  95|[0x800034f8]<br>0x0000000000000155|- rs1_val == -6148914691236517206<br>                                                                                                                                    |[0x80000b08]:srl a2, a0, a1<br> [0x80000b0c]:sd a2, 512(ra)<br>     |
|  96|[0x80003500]<br>0x0000080000000000|- rs1_val == 576460752303423488<br>                                                                                                                                      |[0x80000b1c]:srl a2, a0, a1<br> [0x80000b20]:sd a2, 520(ra)<br>     |
|  97|[0x80003508]<br>0x0000000020000000|- rs1_val == 1152921504606846976<br>                                                                                                                                     |[0x80000b30]:srl a2, a0, a1<br> [0x80000b34]:sd a2, 528(ra)<br>     |
|  98|[0x80003510]<br>0x0002000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                                     |[0x80000b44]:srl a2, a0, a1<br> [0x80000b48]:sd a2, 536(ra)<br>     |
|  99|[0x80003518]<br>0x0004000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                                     |[0x80000b58]:srl a2, a0, a1<br> [0x80000b5c]:sd a2, 544(ra)<br>     |
| 100|[0x80003520]<br>0x0007FFFFFFFFFFFF|- rs1_val == -5<br>                                                                                                                                                      |[0x80000b68]:srl a2, a0, a1<br> [0x80000b6c]:sd a2, 552(ra)<br>     |
| 101|[0x80003528]<br>0x0001FFFFFFFFFFFF|- rs1_val == -17<br>                                                                                                                                                     |[0x80000b78]:srl a2, a0, a1<br> [0x80000b7c]:sd a2, 560(ra)<br>     |
| 102|[0x80003530]<br>0x00000001FFFFFFFF|- rs1_val == -33<br>                                                                                                                                                     |[0x80000b88]:srl a2, a0, a1<br> [0x80000b8c]:sd a2, 568(ra)<br>     |
| 103|[0x80003538]<br>0x0FFFFFFFFFFFFFFB|- rs1_val == -65<br>                                                                                                                                                     |[0x80000b98]:srl a2, a0, a1<br> [0x80000b9c]:sd a2, 576(ra)<br>     |
| 104|[0x80003540]<br>0x00003FFFFFFFFFFF|- rs1_val == -129<br>                                                                                                                                                    |[0x80000ba8]:srl a2, a0, a1<br> [0x80000bac]:sd a2, 584(ra)<br>     |
| 105|[0x80003548]<br>0x3FFFFFFFFFFFFFBF|- rs1_val == -257<br>                                                                                                                                                    |[0x80000bb8]:srl a2, a0, a1<br> [0x80000bbc]:sd a2, 592(ra)<br>     |
| 106|[0x80003550]<br>0x00000000003FFFFF|- rs1_val == -513<br>                                                                                                                                                    |[0x80000bc8]:srl a2, a0, a1<br> [0x80000bcc]:sd a2, 600(ra)<br>     |
| 107|[0x80003558]<br>0x000000000001FFFF|- rs1_val == -1025<br>                                                                                                                                                   |[0x80000bd8]:srl a2, a0, a1<br> [0x80000bdc]:sd a2, 608(ra)<br>     |
| 108|[0x80003560]<br>0x1FFFFFFFFFFFFEFF|- rs1_val == -2049<br>                                                                                                                                                   |[0x80000bec]:srl a2, a0, a1<br> [0x80000bf0]:sd a2, 616(ra)<br>     |
| 109|[0x80003568]<br>0x0000000000000001|- rs1_val == -4097<br>                                                                                                                                                   |[0x80000c00]:srl a2, a0, a1<br> [0x80000c04]:sd a2, 624(ra)<br>     |
| 110|[0x80003570]<br>0x0001FFFFFFFFFFFF|- rs1_val == -8193<br>                                                                                                                                                   |[0x80000c14]:srl a2, a0, a1<br> [0x80000c18]:sd a2, 632(ra)<br>     |
| 111|[0x80003578]<br>0xFFFFFFFFFFFFBFFF|- rs1_val == -16385<br>                                                                                                                                                  |[0x80000c28]:srl a2, a0, a1<br> [0x80000c2c]:sd a2, 640(ra)<br>     |
| 112|[0x80003580]<br>0x000FFFFFFFFFFFF7|- rs1_val == -32769<br>                                                                                                                                                  |[0x80000c3c]:srl a2, a0, a1<br> [0x80000c40]:sd a2, 648(ra)<br>     |
| 113|[0x80003588]<br>0x000000000000001F|- rs1_val == -65537<br>                                                                                                                                                  |[0x80000c50]:srl a2, a0, a1<br> [0x80000c54]:sd a2, 656(ra)<br>     |
| 114|[0x80003590]<br>0x03FFFFFFFFFFF7FF|- rs1_val == -131073<br>                                                                                                                                                 |[0x80000c64]:srl a2, a0, a1<br> [0x80000c68]:sd a2, 664(ra)<br>     |
| 115|[0x80003598]<br>0x00000000003FFFFF|- rs1_val == -262145<br>                                                                                                                                                 |[0x80000c78]:srl a2, a0, a1<br> [0x80000c7c]:sd a2, 672(ra)<br>     |
| 116|[0x800035a0]<br>0x07FFFFFFFFFFBFFF|- rs1_val == -524289<br>                                                                                                                                                 |[0x80000c8c]:srl a2, a0, a1<br> [0x80000c90]:sd a2, 680(ra)<br>     |
| 117|[0x800035a8]<br>0x0000000000000007|- rs1_val == -1048577<br>                                                                                                                                                |[0x80000ca0]:srl a2, a0, a1<br> [0x80000ca4]:sd a2, 688(ra)<br>     |
| 118|[0x800035b0]<br>0x03FFFFFFFFFF7FFF|- rs1_val == -2097153<br>                                                                                                                                                |[0x80000cb4]:srl a2, a0, a1<br> [0x80000cb8]:sd a2, 696(ra)<br>     |
| 119|[0x800035b8]<br>0x03FFFFFFFFFEFFFF|- rs1_val == -4194305<br>                                                                                                                                                |[0x80000cc8]:srl a2, a0, a1<br> [0x80000ccc]:sd a2, 704(ra)<br>     |
| 120|[0x800035c0]<br>0x7FFFFFFFFFBFFFFF|- rs1_val == -8388609<br>                                                                                                                                                |[0x80000cdc]:srl a2, a0, a1<br> [0x80000ce0]:sd a2, 712(ra)<br>     |
| 121|[0x800035c8]<br>0x03FFFFFFFFF7FFFF|- rs1_val == -33554433<br>                                                                                                                                               |[0x80000cf0]:srl a2, a0, a1<br> [0x80000cf4]:sd a2, 720(ra)<br>     |
| 122|[0x800035d0]<br>0x00000000FFFFFFFF|- rs1_val == -67108865<br>                                                                                                                                               |[0x80000d04]:srl a2, a0, a1<br> [0x80000d08]:sd a2, 728(ra)<br>     |
| 123|[0x800035d8]<br>0x0000FFFFFFFFF7FF|- rs1_val == -134217729<br>                                                                                                                                              |[0x80000d18]:srl a2, a0, a1<br> [0x80000d1c]:sd a2, 736(ra)<br>     |
| 124|[0x800035e0]<br>0x003FFFFFFFF7FFFF|- rs1_val == -536870913<br>                                                                                                                                              |[0x80000d2c]:srl a2, a0, a1<br> [0x80000d30]:sd a2, 744(ra)<br>     |
| 125|[0x800035e8]<br>0x00000001FFFFFFFF|- rs1_val == -1073741825<br>                                                                                                                                             |[0x80000d40]:srl a2, a0, a1<br> [0x80000d44]:sd a2, 752(ra)<br>     |
| 126|[0x800035f0]<br>0x003FFFFFFFDFFFFF|- rs1_val == -2147483649<br>                                                                                                                                             |[0x80000d58]:srl a2, a0, a1<br> [0x80000d5c]:sd a2, 760(ra)<br>     |
| 127|[0x800035f8]<br>0x00003FFFFFFFBFFF|- rs1_val == -4294967297<br>                                                                                                                                             |[0x80000d70]:srl a2, a0, a1<br> [0x80000d74]:sd a2, 768(ra)<br>     |
| 128|[0x80003600]<br>0x003FFFFFFF7FFFFF|- rs1_val == -8589934593<br>                                                                                                                                             |[0x80000d88]:srl a2, a0, a1<br> [0x80000d8c]:sd a2, 776(ra)<br>     |
| 129|[0x80003608]<br>0x0FFFFFFFBFFFFFFF|- rs1_val == -17179869185<br>                                                                                                                                            |[0x80000da0]:srl a2, a0, a1<br> [0x80000da4]:sd a2, 784(ra)<br>     |
| 130|[0x80003610]<br>0xFFFFFFF7FFFFFFFF|- rs1_val == -34359738369<br>                                                                                                                                            |[0x80000db8]:srl a2, a0, a1<br> [0x80000dbc]:sd a2, 792(ra)<br>     |
| 131|[0x80003618]<br>0x00003FFFFFFBFFFF|- rs1_val == -68719476737<br>                                                                                                                                            |[0x80000dd0]:srl a2, a0, a1<br> [0x80000dd4]:sd a2, 800(ra)<br>     |
| 132|[0x80003620]<br>0x3FFFFFF7FFFFFFFF|- rs1_val == -137438953473<br>                                                                                                                                           |[0x80000de8]:srl a2, a0, a1<br> [0x80000dec]:sd a2, 808(ra)<br>     |
| 133|[0x80003628]<br>0x000000000000001F|- rs1_val == -274877906945<br>                                                                                                                                           |[0x80000e00]:srl a2, a0, a1<br> [0x80000e04]:sd a2, 816(ra)<br>     |
| 134|[0x80003630]<br>0x007FFFFFBFFFFFFF|- rs1_val == -549755813889<br>                                                                                                                                           |[0x80000e18]:srl a2, a0, a1<br> [0x80000e1c]:sd a2, 824(ra)<br>     |
| 135|[0x80003638]<br>0x7FFFFF7FFFFFFFFF|- rs1_val == -1099511627777<br>                                                                                                                                          |[0x80000e30]:srl a2, a0, a1<br> [0x80000e34]:sd a2, 832(ra)<br>     |
| 136|[0x80003640]<br>0x0000000000000800|- rs1_val == 2048<br>                                                                                                                                                    |[0x80000e44]:srl a2, a0, a1<br> [0x80000e48]:sd a2, 840(ra)<br>     |
| 137|[0x80003648]<br>0x0000000000000003|- rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 9223372036854775807<br>                                                                |[0x80000e5c]:srl a2, a0, a1<br> [0x80000e60]:sd a2, 848(ra)<br>     |
