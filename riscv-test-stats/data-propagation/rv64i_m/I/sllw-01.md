
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000e70')]      |
| SIG_REGION                | [('0x80003204', '0x80003660', '139 dwords')]      |
| COV_LABELS                | sllw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sllw-01.S/sllw-01.S    |
| Total Number of coverpoints| 253     |
| Total Coverpoints Hit     | 253      |
| Total Signature Updates   | 138      |
| STAT1                     | 136      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e50]:sllw a2, a0, a1
      [0x80000e54]:sd a2, 952(a6)
 -- Signature Address: 0x80003650 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : sllw
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 1024




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e60]:sllw a2, a0, a1
      [0x80000e64]:sd a2, 960(a6)
 -- Signature Address: 0x80003658 Data: 0x0000000000400000
 -- Redundant Coverpoints hit by the op
      - opcode : sllw
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 4096
      - rs2_val == 10






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

|s.no|            signature             |                                                                                                   coverpoints                                                                                                    |                                code                                |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000005800|- opcode : sllw<br> - rs1 : x21<br> - rs2 : x21<br> - rd : x21<br> - rs1 == rs2 == rd<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br>        |[0x800003a0]:sllw s5, s5, s5<br> [0x800003a4]:sd s5, 0(sp)<br>      |
|   2|[0x80003218]<br>0x0000000000000000|- rs1 : x1<br> - rs2 : x19<br> - rd : x1<br> - rs1 == rd != rs2<br> - rs1_val == 70368744177664<br> - rs2_val == 21<br>                                                                                           |[0x800003b4]:sllw ra, ra, s3<br> [0x800003b8]:sd ra, 8(sp)<br>      |
|   3|[0x80003220]<br>0x0000000000000000|- rs1 : x7<br> - rs2 : x31<br> - rd : x31<br> - rs2 == rd != rs1<br> - rs1_val < 0 and rs2_val == 0<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -9223372036854775808<br> |[0x800003c8]:sllw t6, t2, t6<br> [0x800003cc]:sd t6, 16(sp)<br>     |
|   4|[0x80003228]<br>0x0000000000000000|- rs1 : x12<br> - rs2 : x12<br> - rd : x4<br> - rs1 == rs2 != rd<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br>                                                                                       |[0x800003d8]:sllw tp, a2, a2<br> [0x800003dc]:sd tp, 24(sp)<br>     |
|   5|[0x80003230]<br>0x0000000000000380|- rs1 : x17<br> - rs2 : x29<br> - rd : x16<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br>                                                                                                                      |[0x800003e8]:sllw a6, a7, t4<br> [0x800003ec]:sd a6, 32(sp)<br>     |
|   6|[0x80003238]<br>0x0000000000000000|- rs1 : x24<br> - rs2 : x5<br> - rd : x14<br> - rs2_val == 4<br>                                                                                                                                                  |[0x800003f8]:sllw a4, s8, t0<br> [0x800003fc]:sd a4, 40(sp)<br>     |
|   7|[0x80003240]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x26<br> - rs2 : x8<br> - rd : x18<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 9223372036854775807<br>                        |[0x80000410]:sllw s2, s10, fp<br> [0x80000414]:sd s2, 48(sp)<br>    |
|   8|[0x80003248]<br>0x0000000000000020|- rs1 : x16<br> - rs2 : x13<br> - rd : x17<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br>                                                                                          |[0x80000420]:sllw a7, a6, a3<br> [0x80000424]:sd a7, 56(sp)<br>     |
|   9|[0x80003250]<br>0x0000000000080000|- rs1 : x23<br> - rs2 : x20<br> - rd : x15<br> - rs1_val == 262144<br> - rs2_val == 1<br>                                                                                                                         |[0x80000430]:sllw a5, s7, s4<br> [0x80000434]:sd a5, 64(sp)<br>     |
|  10|[0x80003258]<br>0xFFFFFFFFFFF7FFFC|- rs1 : x10<br> - rs2 : x28<br> - rd : x5<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == -131073<br> - rs2_val == 2<br>                                                                    |[0x80000444]:sllw t0, a0, t3<br> [0x80000448]:sd t0, 72(sp)<br>     |
|  11|[0x80003260]<br>0xFFFFFFFFFFFFFF00|- rs1 : x11<br> - rs2 : x16<br> - rd : x6<br> - rs1_val == -268435457<br> - rs2_val == 8<br>                                                                                                                      |[0x80000458]:sllw t1, a1, a6<br> [0x8000045c]:sd t1, 80(sp)<br>     |
|  12|[0x80003268]<br>0xFFFFFFFFFFFF0000|- rs1 : x25<br> - rs2 : x18<br> - rd : x11<br> - rs1_val == -33554433<br> - rs2_val == 16<br>                                                                                                                     |[0x8000046c]:sllw a1, s9, s2<br> [0x80000470]:sd a1, 88(sp)<br>     |
|  13|[0x80003270]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x10<br> - rd : x25<br> - rs2_val == 30<br>                                                                                                                                                 |[0x80000484]:sllw s9, zero, a0<br> [0x80000488]:sd s9, 96(sp)<br>   |
|  14|[0x80003278]<br>0x0000000000000000|- rs1 : x31<br> - rs2 : x26<br> - rd : x13<br> - rs1_val == 32768<br> - rs2_val == 29<br>                                                                                                                         |[0x80000494]:sllw a3, t6, s10<br> [0x80000498]:sd a3, 104(sp)<br>   |
|  15|[0x80003280]<br>0xFFFFFFFFF8000000|- rs1 : x30<br> - rs2 : x3<br> - rd : x26<br> - rs2_val == 27<br>                                                                                                                                                 |[0x800004ac]:sllw s10, t5, gp<br> [0x800004b0]:sd s10, 112(sp)<br>  |
|  16|[0x80003288]<br>0xFFFFFFFFFF800000|- rs1 : x29<br> - rs2 : x25<br> - rd : x10<br> - rs1_val == -144115188075855873<br> - rs2_val == 23<br>                                                                                                           |[0x800004c4]:sllw a0, t4, s9<br> [0x800004c8]:sd a0, 120(sp)<br>    |
|  17|[0x80003290]<br>0x0000000000080000|- rs1 : x22<br> - rs2 : x7<br> - rd : x20<br> - rs1_val == 16<br> - rs2_val == 15<br>                                                                                                                             |[0x800004d4]:sllw s4, s6, t2<br> [0x800004d8]:sd s4, 128(sp)<br>    |
|  18|[0x80003298]<br>0x0000000000000000|- rs1 : x3<br> - rs2 : x23<br> - rd : x8<br> - rs1_val == 68719476736<br> - rs2_val == 10<br>                                                                                                                     |[0x800004f0]:sllw fp, gp, s7<br> [0x800004f4]:sd fp, 0(a6)<br>      |
|  19|[0x800032a0]<br>0x0000000000000100|- rs1 : x19<br> - rs2 : x24<br> - rd : x23<br> - rs1_val == 2<br>                                                                                                                                                 |[0x80000500]:sllw s7, s3, s8<br> [0x80000504]:sd s7, 8(a6)<br>      |
|  20|[0x800032a8]<br>0x0000000002000000|- rs1 : x14<br> - rs2 : x22<br> - rd : x29<br> - rs1_val == 4<br>                                                                                                                                                 |[0x80000510]:sllw t4, a4, s6<br> [0x80000514]:sd t4, 16(a6)<br>     |
|  21|[0x800032b0]<br>0x0000000040000000|- rs1 : x15<br> - rs2 : x1<br> - rd : x3<br> - rs1_val == 8<br>                                                                                                                                                   |[0x80000520]:sllw gp, a5, ra<br> [0x80000524]:sd gp, 24(a6)<br>     |
|  22|[0x800032b8]<br>0x0000000000000800|- rs1 : x13<br> - rs2 : x27<br> - rd : x12<br> - rs1_val == 32<br>                                                                                                                                                |[0x80000530]:sllw a2, a3, s11<br> [0x80000534]:sd a2, 32(a6)<br>    |
|  23|[0x800032c0]<br>0x0000000000004000|- rs1 : x4<br> - rs2 : x14<br> - rd : x22<br> - rs1_val == 64<br>                                                                                                                                                 |[0x80000540]:sllw s6, tp, a4<br> [0x80000544]:sd s6, 40(a6)<br>     |
|  24|[0x800032c8]<br>0x0000000000020000|- rs1 : x28<br> - rs2 : x11<br> - rd : x2<br> - rs1_val == 128<br>                                                                                                                                                |[0x80000550]:sllw sp, t3, a1<br> [0x80000554]:sd sp, 48(a6)<br>     |
|  25|[0x800032d0]<br>0x0000000004000000|- rs1 : x8<br> - rs2 : x4<br> - rd : x28<br> - rs1_val == 256<br>                                                                                                                                                 |[0x80000560]:sllw t3, fp, tp<br> [0x80000564]:sd t3, 56(a6)<br>     |
|  26|[0x800032d8]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : x6<br> - rd : x24<br> - rs1_val == 512<br>                                                                                                                                                 |[0x80000570]:sllw s8, s1, t1<br> [0x80000574]:sd s8, 64(a6)<br>     |
|  27|[0x800032e0]<br>0x0000000000000400|- rs1 : x6<br> - rs2 : x0<br> - rd : x19<br> - rs1_val == 1024<br>                                                                                                                                                |[0x80000580]:sllw s3, t1, zero<br> [0x80000584]:sd s3, 72(a6)<br>   |
|  28|[0x800032e8]<br>0x0000000000000000|- rs1 : x20<br> - rs2 : x2<br> - rd : x9<br> - rs1_val == 2048<br>                                                                                                                                                |[0x80000594]:sllw s1, s4, sp<br> [0x80000598]:sd s1, 80(a6)<br>     |
|  29|[0x800032f0]<br>0x0000000000000000|- rs1 : x2<br> - rs2 : x17<br> - rd : x0<br> - rs1_val == 4096<br>                                                                                                                                                |[0x800005a4]:sllw zero, sp, a7<br> [0x800005a8]:sd zero, 88(a6)<br> |
|  30|[0x800032f8]<br>0x0000000040000000|- rs1 : x5<br> - rs2 : x30<br> - rd : x27<br> - rs1_val == 8192<br>                                                                                                                                               |[0x800005b4]:sllw s11, t0, t5<br> [0x800005b8]:sd s11, 96(a6)<br>   |
|  31|[0x80003300]<br>0x0000000000000000|- rs1 : x27<br> - rs2 : x9<br> - rd : x30<br> - rs1_val == 16384<br>                                                                                                                                              |[0x800005c4]:sllw t5, s11, s1<br> [0x800005c8]:sd t5, 104(a6)<br>   |
|  32|[0x80003308]<br>0xFFFFFFFF80000000|- rs1 : x18<br> - rs2 : x15<br> - rd : x7<br> - rs1_val == 65536<br>                                                                                                                                              |[0x800005d4]:sllw t2, s2, a5<br> [0x800005d8]:sd t2, 112(a6)<br>    |
|  33|[0x80003310]<br>0x0000000000100000|- rs1_val == 131072<br>                                                                                                                                                                                           |[0x800005e4]:sllw a2, a0, a1<br> [0x800005e8]:sd a2, 120(a6)<br>    |
|  34|[0x80003318]<br>0x0000000000000000|- rs1_val == 524288<br>                                                                                                                                                                                           |[0x800005f4]:sllw a2, a0, a1<br> [0x800005f8]:sd a2, 128(a6)<br>    |
|  35|[0x80003320]<br>0x0000000000000000|- rs1_val == 1048576<br>                                                                                                                                                                                          |[0x80000604]:sllw a2, a0, a1<br> [0x80000608]:sd a2, 136(a6)<br>    |
|  36|[0x80003328]<br>0x0000000000000000|- rs1_val == 2097152<br>                                                                                                                                                                                          |[0x80000614]:sllw a2, a0, a1<br> [0x80000618]:sd a2, 144(a6)<br>    |
|  37|[0x80003330]<br>0x0000000000800000|- rs1_val == 4194304<br>                                                                                                                                                                                          |[0x80000624]:sllw a2, a0, a1<br> [0x80000628]:sd a2, 152(a6)<br>    |
|  38|[0x80003338]<br>0x0000000000000000|- rs1_val == 8388608<br>                                                                                                                                                                                          |[0x80000634]:sllw a2, a0, a1<br> [0x80000638]:sd a2, 160(a6)<br>    |
|  39|[0x80003340]<br>0x0000000000000000|- rs1_val == 16777216<br>                                                                                                                                                                                         |[0x80000644]:sllw a2, a0, a1<br> [0x80000648]:sd a2, 168(a6)<br>    |
|  40|[0x80003348]<br>0x0000000000000000|- rs1_val == 33554432<br>                                                                                                                                                                                         |[0x80000654]:sllw a2, a0, a1<br> [0x80000658]:sd a2, 176(a6)<br>    |
|  41|[0x80003350]<br>0x0000000000000000|- rs1_val == 67108864<br>                                                                                                                                                                                         |[0x80000664]:sllw a2, a0, a1<br> [0x80000668]:sd a2, 184(a6)<br>    |
|  42|[0x80003358]<br>0x0000000040000000|- rs1_val == 134217728<br>                                                                                                                                                                                        |[0x80000674]:sllw a2, a0, a1<br> [0x80000678]:sd a2, 192(a6)<br>    |
|  43|[0x80003360]<br>0x0000000000000000|- rs1_val == 268435456<br>                                                                                                                                                                                        |[0x80000684]:sllw a2, a0, a1<br> [0x80000688]:sd a2, 200(a6)<br>    |
|  44|[0x80003368]<br>0x0000000000000000|- rs1_val == 536870912<br>                                                                                                                                                                                        |[0x80000694]:sllw a2, a0, a1<br> [0x80000698]:sd a2, 208(a6)<br>    |
|  45|[0x80003370]<br>0x0000000000000000|- rs1_val == 1073741824<br>                                                                                                                                                                                       |[0x800006a4]:sllw a2, a0, a1<br> [0x800006a8]:sd a2, 216(a6)<br>    |
|  46|[0x80003378]<br>0x0000000000000000|- rs1_val == 2147483648<br>                                                                                                                                                                                       |[0x800006b8]:sllw a2, a0, a1<br> [0x800006bc]:sd a2, 224(a6)<br>    |
|  47|[0x80003380]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                                                                                                                       |[0x800006cc]:sllw a2, a0, a1<br> [0x800006d0]:sd a2, 232(a6)<br>    |
|  48|[0x80003388]<br>0x0000000000000000|- rs1_val == 8589934592<br>                                                                                                                                                                                       |[0x800006e0]:sllw a2, a0, a1<br> [0x800006e4]:sd a2, 240(a6)<br>    |
|  49|[0x80003390]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                                                                                                                      |[0x800006f4]:sllw a2, a0, a1<br> [0x800006f8]:sd a2, 248(a6)<br>    |
|  50|[0x80003398]<br>0x0000000000000000|- rs1_val == 34359738368<br>                                                                                                                                                                                      |[0x80000708]:sllw a2, a0, a1<br> [0x8000070c]:sd a2, 256(a6)<br>    |
|  51|[0x800033a0]<br>0x0000000000000000|- rs1_val == 137438953472<br>                                                                                                                                                                                     |[0x8000071c]:sllw a2, a0, a1<br> [0x80000720]:sd a2, 264(a6)<br>    |
|  52|[0x800033a8]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                                                                                                                     |[0x80000730]:sllw a2, a0, a1<br> [0x80000734]:sd a2, 272(a6)<br>    |
|  53|[0x800033b0]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                                                                                                                     |[0x80000744]:sllw a2, a0, a1<br> [0x80000748]:sd a2, 280(a6)<br>    |
|  54|[0x800033b8]<br>0x0000000000000000|- rs1_val == 1099511627776<br>                                                                                                                                                                                    |[0x80000758]:sllw a2, a0, a1<br> [0x8000075c]:sd a2, 288(a6)<br>    |
|  55|[0x800033c0]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                                                                                                    |[0x8000076c]:sllw a2, a0, a1<br> [0x80000770]:sd a2, 296(a6)<br>    |
|  56|[0x800033c8]<br>0x0000000000000000|- rs1_val == 4398046511104<br>                                                                                                                                                                                    |[0x80000780]:sllw a2, a0, a1<br> [0x80000784]:sd a2, 304(a6)<br>    |
|  57|[0x800033d0]<br>0x0000000000000000|- rs1_val == 8796093022208<br>                                                                                                                                                                                    |[0x80000794]:sllw a2, a0, a1<br> [0x80000798]:sd a2, 312(a6)<br>    |
|  58|[0x800033d8]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                                                                                                   |[0x800007a8]:sllw a2, a0, a1<br> [0x800007ac]:sd a2, 320(a6)<br>    |
|  59|[0x800033e0]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                                                                                                   |[0x800007bc]:sllw a2, a0, a1<br> [0x800007c0]:sd a2, 328(a6)<br>    |
|  60|[0x800033e8]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                                                                                                  |[0x800007d0]:sllw a2, a0, a1<br> [0x800007d4]:sd a2, 336(a6)<br>    |
|  61|[0x800033f0]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                                                                                                  |[0x800007e4]:sllw a2, a0, a1<br> [0x800007e8]:sd a2, 344(a6)<br>    |
|  62|[0x800033f8]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                                                                                                                  |[0x800007f8]:sllw a2, a0, a1<br> [0x800007fc]:sd a2, 352(a6)<br>    |
|  63|[0x80003400]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                                                                                                 |[0x8000080c]:sllw a2, a0, a1<br> [0x80000810]:sd a2, 360(a6)<br>    |
|  64|[0x80003408]<br>0x0000000000000000|- rs1_val == 2251799813685248<br>                                                                                                                                                                                 |[0x80000820]:sllw a2, a0, a1<br> [0x80000824]:sd a2, 368(a6)<br>    |
|  65|[0x80003410]<br>0x0000000000000000|- rs1_val == 4503599627370496<br>                                                                                                                                                                                 |[0x80000834]:sllw a2, a0, a1<br> [0x80000838]:sd a2, 376(a6)<br>    |
|  66|[0x80003418]<br>0x0000000000000000|- rs1_val == 9007199254740992<br>                                                                                                                                                                                 |[0x80000848]:sllw a2, a0, a1<br> [0x8000084c]:sd a2, 384(a6)<br>    |
|  67|[0x80003420]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                                                                                                |[0x8000085c]:sllw a2, a0, a1<br> [0x80000860]:sd a2, 392(a6)<br>    |
|  68|[0x80003428]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                                                                                                |[0x80000870]:sllw a2, a0, a1<br> [0x80000874]:sd a2, 400(a6)<br>    |
|  69|[0x80003430]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                                                                                                                |[0x80000884]:sllw a2, a0, a1<br> [0x80000888]:sd a2, 408(a6)<br>    |
|  70|[0x80003438]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                                                                                               |[0x80000898]:sllw a2, a0, a1<br> [0x8000089c]:sd a2, 416(a6)<br>    |
|  71|[0x80003440]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                                                                                               |[0x800008ac]:sllw a2, a0, a1<br> [0x800008b0]:sd a2, 424(a6)<br>    |
|  72|[0x80003448]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                                                                                               |[0x800008c0]:sllw a2, a0, a1<br> [0x800008c4]:sd a2, 432(a6)<br>    |
|  73|[0x80003450]<br>0xFFFFFFFFFFFFFE00|- rs1_val == -8796093022209<br>                                                                                                                                                                                   |[0x800008d8]:sllw a2, a0, a1<br> [0x800008dc]:sd a2, 440(a6)<br>    |
|  74|[0x80003458]<br>0xFFFFFFFFFFFFFFF8|- rs1_val == -17592186044417<br>                                                                                                                                                                                  |[0x800008f0]:sllw a2, a0, a1<br> [0x800008f4]:sd a2, 448(a6)<br>    |
|  75|[0x80003460]<br>0xFFFFFFFFFFFF0000|- rs1_val == -35184372088833<br>                                                                                                                                                                                  |[0x80000908]:sllw a2, a0, a1<br> [0x8000090c]:sd a2, 456(a6)<br>    |
|  76|[0x80003468]<br>0xFFFFFFFFFFFF0000|- rs1_val == -70368744177665<br>                                                                                                                                                                                  |[0x80000920]:sllw a2, a0, a1<br> [0x80000924]:sd a2, 464(a6)<br>    |
|  77|[0x80003470]<br>0xFFFFFFFFFFFE0000|- rs1_val == -140737488355329<br>                                                                                                                                                                                 |[0x80000938]:sllw a2, a0, a1<br> [0x8000093c]:sd a2, 472(a6)<br>    |
|  78|[0x80003478]<br>0xFFFFFFFFFFFF0000|- rs1_val == -281474976710657<br>                                                                                                                                                                                 |[0x80000950]:sllw a2, a0, a1<br> [0x80000954]:sd a2, 480(a6)<br>    |
|  79|[0x80003480]<br>0xFFFFFFFFC0000000|- rs1_val == -562949953421313<br>                                                                                                                                                                                 |[0x80000968]:sllw a2, a0, a1<br> [0x8000096c]:sd a2, 488(a6)<br>    |
|  80|[0x80003488]<br>0xFFFFFFFFC0000000|- rs1_val == -1125899906842625<br>                                                                                                                                                                                |[0x80000980]:sllw a2, a0, a1<br> [0x80000984]:sd a2, 496(a6)<br>    |
|  81|[0x80003490]<br>0xFFFFFFFFFFFFFFE0|- rs1_val == -2251799813685249<br>                                                                                                                                                                                |[0x80000998]:sllw a2, a0, a1<br> [0x8000099c]:sd a2, 504(a6)<br>    |
|  82|[0x80003498]<br>0xFFFFFFFFFFFFC000|- rs1_val == -4503599627370497<br>                                                                                                                                                                                |[0x800009b0]:sllw a2, a0, a1<br> [0x800009b4]:sd a2, 512(a6)<br>    |
|  83|[0x800034a0]<br>0xFFFFFFFFFFFFFC00|- rs1_val == -9007199254740993<br>                                                                                                                                                                                |[0x800009c8]:sllw a2, a0, a1<br> [0x800009cc]:sd a2, 520(a6)<br>    |
|  84|[0x800034a8]<br>0xFFFFFFFFFFFFFFC0|- rs1_val == -18014398509481985<br>                                                                                                                                                                               |[0x800009e0]:sllw a2, a0, a1<br> [0x800009e4]:sd a2, 528(a6)<br>    |
|  85|[0x800034b0]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == -36028797018963969<br>                                                                                                                                                                               |[0x800009f8]:sllw a2, a0, a1<br> [0x800009fc]:sd a2, 536(a6)<br>    |
|  86|[0x800034b8]<br>0xFFFFFFFFFFFFFC00|- rs1_val == -72057594037927937<br>                                                                                                                                                                               |[0x80000a10]:sllw a2, a0, a1<br> [0x80000a14]:sd a2, 544(a6)<br>    |
|  87|[0x800034c0]<br>0xFFFFFFFFFF800000|- rs1_val == -288230376151711745<br>                                                                                                                                                                              |[0x80000a28]:sllw a2, a0, a1<br> [0x80000a2c]:sd a2, 552(a6)<br>    |
|  88|[0x800034c8]<br>0xFFFFFFFFFFFFC000|- rs1_val == -576460752303423489<br>                                                                                                                                                                              |[0x80000a40]:sllw a2, a0, a1<br> [0x80000a44]:sd a2, 560(a6)<br>    |
|  89|[0x800034d0]<br>0xFFFFFFFFFFFFFF00|- rs1_val == -1152921504606846977<br>                                                                                                                                                                             |[0x80000a58]:sllw a2, a0, a1<br> [0x80000a5c]:sd a2, 568(a6)<br>    |
|  90|[0x800034d8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                                                                                             |[0x80000a70]:sllw a2, a0, a1<br> [0x80000a74]:sd a2, 576(a6)<br>    |
|  91|[0x800034e0]<br>0xFFFFFFFFFFFF8000|- rs1_val == -4611686018427387905<br>                                                                                                                                                                             |[0x80000a88]:sllw a2, a0, a1<br> [0x80000a8c]:sd a2, 584(a6)<br>    |
|  92|[0x800034e8]<br>0x0000000055555550|- rs1_val == 6148914691236517205<br>                                                                                                                                                                              |[0x80000ab4]:sllw a2, a0, a1<br> [0x80000ab8]:sd a2, 592(a6)<br>    |
|  93|[0x800034f0]<br>0xFFFFFFFFAAAAAA00|- rs1_val == -6148914691236517206<br>                                                                                                                                                                             |[0x80000ae0]:sllw a2, a0, a1<br> [0x80000ae4]:sd a2, 600(a6)<br>    |
|  94|[0x800034f8]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                                                                              |[0x80000af4]:sllw a2, a0, a1<br> [0x80000af8]:sd a2, 608(a6)<br>    |
|  95|[0x80003500]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                                                                              |[0x80000b08]:sllw a2, a0, a1<br> [0x80000b0c]:sd a2, 616(a6)<br>    |
|  96|[0x80003508]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                                                                              |[0x80000b1c]:sllw a2, a0, a1<br> [0x80000b20]:sd a2, 624(a6)<br>    |
|  97|[0x80003510]<br>0xFFFFFFFFFFFE0000|- rs1_val == -2<br>                                                                                                                                                                                               |[0x80000b2c]:sllw a2, a0, a1<br> [0x80000b30]:sd a2, 632(a6)<br>    |
|  98|[0x80003518]<br>0xFFFFFFFF80000000|- rs1_val == -3<br>                                                                                                                                                                                               |[0x80000b3c]:sllw a2, a0, a1<br> [0x80000b40]:sd a2, 640(a6)<br>    |
|  99|[0x80003520]<br>0xFFFFFFFFFFFFFD80|- rs1_val == -5<br>                                                                                                                                                                                               |[0x80000b4c]:sllw a2, a0, a1<br> [0x80000b50]:sd a2, 648(a6)<br>    |
| 100|[0x80003528]<br>0xFFFFFFFFFFFFFB80|- rs1_val == -9<br>                                                                                                                                                                                               |[0x80000b5c]:sllw a2, a0, a1<br> [0x80000b60]:sd a2, 656(a6)<br>    |
| 101|[0x80003530]<br>0xFFFFFFFFE0000000|- rs1_val == -17<br>                                                                                                                                                                                              |[0x80000b6c]:sllw a2, a0, a1<br> [0x80000b70]:sd a2, 664(a6)<br>    |
| 102|[0x80003538]<br>0xFFFFFFFFFBE00000|- rs1_val == -33<br>                                                                                                                                                                                              |[0x80000b7c]:sllw a2, a0, a1<br> [0x80000b80]:sd a2, 672(a6)<br>    |
| 103|[0x80003540]<br>0xFFFFFFFFFFF7E000|- rs1_val == -65<br>                                                                                                                                                                                              |[0x80000b8c]:sllw a2, a0, a1<br> [0x80000b90]:sd a2, 680(a6)<br>    |
| 104|[0x80003548]<br>0xFFFFFFFFFFFEFE00|- rs1_val == -129<br>                                                                                                                                                                                             |[0x80000b9c]:sllw a2, a0, a1<br> [0x80000ba0]:sd a2, 688(a6)<br>    |
| 105|[0x80003550]<br>0xFFFFFFFFDFE00000|- rs1_val == -257<br>                                                                                                                                                                                             |[0x80000bac]:sllw a2, a0, a1<br> [0x80000bb0]:sd a2, 696(a6)<br>    |
| 106|[0x80003558]<br>0xFFFFFFFFE0000000|- rs1_val == -513<br>                                                                                                                                                                                             |[0x80000bbc]:sllw a2, a0, a1<br> [0x80000bc0]:sd a2, 704(a6)<br>    |
| 107|[0x80003560]<br>0xFFFFFFFFFFFF7FE0|- rs1_val == -1025<br>                                                                                                                                                                                            |[0x80000bcc]:sllw a2, a0, a1<br> [0x80000bd0]:sd a2, 712(a6)<br>    |
| 108|[0x80003568]<br>0xFFFFFFFFFF800000|- rs1_val == -2049<br>                                                                                                                                                                                            |[0x80000be0]:sllw a2, a0, a1<br> [0x80000be4]:sd a2, 720(a6)<br>    |
| 109|[0x80003570]<br>0xFFFFFFFFFFEFFF00|- rs1_val == -4097<br>                                                                                                                                                                                            |[0x80000bf4]:sllw a2, a0, a1<br> [0x80000bf8]:sd a2, 728(a6)<br>    |
| 110|[0x80003578]<br>0xFFFFFFFFF7FFC000|- rs1_val == -8193<br>                                                                                                                                                                                            |[0x80000c08]:sllw a2, a0, a1<br> [0x80000c0c]:sd a2, 736(a6)<br>    |
| 111|[0x80003580]<br>0xFFFFFFFFFFEFFFC0|- rs1_val == -16385<br>                                                                                                                                                                                           |[0x80000c1c]:sllw a2, a0, a1<br> [0x80000c20]:sd a2, 744(a6)<br>    |
| 112|[0x80003588]<br>0xFFFFFFFFFFFBFFF8|- rs1_val == -32769<br>                                                                                                                                                                                           |[0x80000c30]:sllw a2, a0, a1<br> [0x80000c34]:sd a2, 752(a6)<br>    |
| 113|[0x80003590]<br>0xFFFFFFFFBFFFC000|- rs1_val == -65537<br>                                                                                                                                                                                           |[0x80000c44]:sllw a2, a0, a1<br> [0x80000c48]:sd a2, 760(a6)<br>    |
| 114|[0x80003598]<br>0xFFFFFFFFFFBFFFF0|- rs1_val == -262145<br>                                                                                                                                                                                          |[0x80000c58]:sllw a2, a0, a1<br> [0x80000c5c]:sd a2, 768(a6)<br>    |
| 115|[0x800035a0]<br>0xFFFFFFFF80000000|- rs1_val == -524289<br>                                                                                                                                                                                          |[0x80000c6c]:sllw a2, a0, a1<br> [0x80000c70]:sd a2, 776(a6)<br>    |
| 116|[0x800035a8]<br>0x000000007FFFF800|- rs1_val == -1048577<br>                                                                                                                                                                                         |[0x80000c80]:sllw a2, a0, a1<br> [0x80000c84]:sd a2, 784(a6)<br>    |
| 117|[0x800035b0]<br>0xFFFFFFFFBFFFFE00|- rs1_val == -2097153<br>                                                                                                                                                                                         |[0x80000c94]:sllw a2, a0, a1<br> [0x80000c98]:sd a2, 792(a6)<br>    |
| 118|[0x800035b8]<br>0xFFFFFFFFFF800000|- rs1_val == -4194305<br>                                                                                                                                                                                         |[0x80000ca8]:sllw a2, a0, a1<br> [0x80000cac]:sd a2, 800(a6)<br>    |
| 119|[0x800035c0]<br>0xFFFFFFFFBFFFFF80|- rs1_val == -8388609<br>                                                                                                                                                                                         |[0x80000cbc]:sllw a2, a0, a1<br> [0x80000cc0]:sd a2, 808(a6)<br>    |
| 120|[0x800035c8]<br>0xFFFFFFFFFFFFC000|- rs1_val == -16777217<br>                                                                                                                                                                                        |[0x80000cd0]:sllw a2, a0, a1<br> [0x80000cd4]:sd a2, 816(a6)<br>    |
| 121|[0x800035d0]<br>0xFFFFFFFFFFFE0000|- rs1_val == -67108865<br>                                                                                                                                                                                        |[0x80000ce4]:sllw a2, a0, a1<br> [0x80000ce8]:sd a2, 824(a6)<br>    |
| 122|[0x800035d8]<br>0xFFFFFFFFFFFFFFE0|- rs1_val == -134217729<br>                                                                                                                                                                                       |[0x80000cf8]:sllw a2, a0, a1<br> [0x80000cfc]:sd a2, 832(a6)<br>    |
| 123|[0x800035e0]<br>0xFFFFFFFFFFFF8000|- rs1_val == -536870913<br>                                                                                                                                                                                       |[0x80000d0c]:sllw a2, a0, a1<br> [0x80000d10]:sd a2, 840(a6)<br>    |
| 124|[0x800035e8]<br>0xFFFFFFFFFFFFF000|- rs1_val == -1073741825<br>                                                                                                                                                                                      |[0x80000d20]:sllw a2, a0, a1<br> [0x80000d24]:sd a2, 848(a6)<br>    |
| 125|[0x800035f0]<br>0xFFFFFFFFFFFFFFF0|- rs1_val == -2147483649<br>                                                                                                                                                                                      |[0x80000d38]:sllw a2, a0, a1<br> [0x80000d3c]:sd a2, 856(a6)<br>    |
| 126|[0x800035f8]<br>0xFFFFFFFFFFFFFF00|- rs1_val == -4294967297<br>                                                                                                                                                                                      |[0x80000d50]:sllw a2, a0, a1<br> [0x80000d54]:sd a2, 864(a6)<br>    |
| 127|[0x80003600]<br>0xFFFFFFFFFFFC0000|- rs1_val == -8589934593<br>                                                                                                                                                                                      |[0x80000d68]:sllw a2, a0, a1<br> [0x80000d6c]:sd a2, 872(a6)<br>    |
| 128|[0x80003608]<br>0xFFFFFFFFFFE00000|- rs1_val == -17179869185<br>                                                                                                                                                                                     |[0x80000d80]:sllw a2, a0, a1<br> [0x80000d84]:sd a2, 880(a6)<br>    |
| 129|[0x80003610]<br>0xFFFFFFFFFFFFFF00|- rs1_val == -34359738369<br>                                                                                                                                                                                     |[0x80000d98]:sllw a2, a0, a1<br> [0x80000d9c]:sd a2, 888(a6)<br>    |
| 130|[0x80003618]<br>0xFFFFFFFFFFFFF000|- rs1_val == -68719476737<br>                                                                                                                                                                                     |[0x80000db0]:sllw a2, a0, a1<br> [0x80000db4]:sd a2, 896(a6)<br>    |
| 131|[0x80003620]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == -137438953473<br>                                                                                                                                                                                    |[0x80000dc8]:sllw a2, a0, a1<br> [0x80000dcc]:sd a2, 904(a6)<br>    |
| 132|[0x80003628]<br>0xFFFFFFFFFFFC0000|- rs1_val == -549755813889<br>                                                                                                                                                                                    |[0x80000de0]:sllw a2, a0, a1<br> [0x80000de4]:sd a2, 912(a6)<br>    |
| 133|[0x80003630]<br>0xFFFFFFFFC0000000|- rs1_val == -1099511627777<br>                                                                                                                                                                                   |[0x80000df8]:sllw a2, a0, a1<br> [0x80000dfc]:sd a2, 920(a6)<br>    |
| 134|[0x80003638]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                                                                                                   |[0x80000e10]:sllw a2, a0, a1<br> [0x80000e14]:sd a2, 928(a6)<br>    |
| 135|[0x80003640]<br>0xFFFFFFFFC0000000|- rs1_val == -4398046511105<br>                                                                                                                                                                                   |[0x80000e28]:sllw a2, a0, a1<br> [0x80000e2c]:sd a2, 936(a6)<br>    |
| 136|[0x80003648]<br>0xFFFFFFFFC0000000|- rs1_val == -274877906945<br>                                                                                                                                                                                    |[0x80000e40]:sllw a2, a0, a1<br> [0x80000e44]:sd a2, 944(a6)<br>    |
