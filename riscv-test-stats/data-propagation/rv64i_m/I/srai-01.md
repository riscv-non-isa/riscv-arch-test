
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
| SIG_REGION                | [('0x80003208', '0x80003638', '134 dwords')]      |
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
      [0x80000c04]:srai a1, a0, 21
      [0x80000c08]:sd a1, 888(tp)
 -- Signature Address: 0x80003630 Data: 0xFFFFFFFFFFFFFFFB
 -- Redundant Coverpoints hit by the op
      - opcode : srai
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val < 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == -8388609
      - imm_val == 21






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
|   1|[0x80003208]<br>0xFFFFFFFFFFFFFFFE|- opcode : srai<br> - rs1 : x25<br> - rd : x25<br> - rs1 == rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == -131073<br>            |[0x800003a0]:srai s9, s9, 17<br> [0x800003a4]:sd s9, 0(a5)<br>       |
|   2|[0x80003210]<br>0x002AAAAAAAAAAAAA|- rs1 : x29<br> - rd : x13<br> - rs1 != rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == 6148914691236517205<br>                    |[0x800003c8]:srai a3, t4, 9<br> [0x800003cc]:sd a3, 8(a5)<br>        |
|   3|[0x80003218]<br>0xFFDFFFFFFFFFFFFF|- rs1 : x30<br> - rd : x5<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -9007199254740993<br>                                                         |[0x800003dc]:srai t0, t5, 0<br> [0x800003e0]:sd t0, 16(a5)<br>       |
|   4|[0x80003220]<br>0x0000000200000000|- rs1 : x4<br> - rd : x12<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 8589934592<br>                                                                |[0x800003ec]:srai a2, tp, 0<br> [0x800003f0]:sd a2, 24(a5)<br>       |
|   5|[0x80003228]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x7<br> - rd : x29<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -17592186044417<br>                                                    |[0x80000400]:srai t4, t2, 63<br> [0x80000404]:sd t4, 32(a5)<br>      |
|   6|[0x80003230]<br>0x0000000000000000|- rs1 : x19<br> - rd : x22<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 72057594037927936<br>                                                 |[0x80000410]:srai s6, s3, 63<br> [0x80000414]:sd s6, 40(a5)<br>      |
|   7|[0x80003238]<br>0x0000000000000000|- rs1 : x1<br> - rd : x17<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val == 4<br> - imm_val == 4<br>                             |[0x8000041c]:srai a7, ra, 4<br> [0x80000420]:sd a7, 48(a5)<br>       |
|   8|[0x80003240]<br>0xFFFFFFFFFFE00000|- rs1 : x27<br> - rd : x9<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -9223372036854775808<br> - imm_val == 42<br> |[0x8000042c]:srai s1, s11, 42<br> [0x80000430]:sd s1, 56(a5)<br>     |
|   9|[0x80003248]<br>0x0000000000000000|- rs1 : x2<br> - rd : x6<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br>                                                                         |[0x80000438]:srai t1, sp, 3<br> [0x8000043c]:sd t1, 64(a5)<br>       |
|  10|[0x80003250]<br>0x00000000000000FF|- rs1 : x13<br> - rd : x8<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 9223372036854775807<br> - imm_val == 55<br> |[0x8000044c]:srai fp, a3, 55<br> [0x80000450]:sd fp, 72(a5)<br>      |
|  11|[0x80003258]<br>0x0000000000000000|- rs1 : x17<br> - rd : x11<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br>                                                    |[0x80000458]:srai a1, a7, 11<br> [0x8000045c]:sd a1, 80(a5)<br>      |
|  12|[0x80003260]<br>0xC000000000000000|- rs1 : x16<br> - rd : x10<br> - imm_val == 1<br>                                                                                                           |[0x80000468]:srai a0, a6, 1<br> [0x8000046c]:sd a0, 88(a5)<br>       |
|  13|[0x80003268]<br>0x0000000000020000|- rs1 : x24<br> - rd : x23<br> - rs1_val == 524288<br> - imm_val == 2<br>                                                                                   |[0x80000474]:srai s7, s8, 2<br> [0x80000478]:sd s7, 96(a5)<br>       |
|  14|[0x80003270]<br>0x0002000000000000|- rs1 : x12<br> - rd : x30<br> - rs1_val == 144115188075855872<br> - imm_val == 8<br>                                                                       |[0x80000484]:srai t5, a2, 8<br> [0x80000488]:sd t5, 104(a5)<br>      |
|  15|[0x80003278]<br>0x0000000000000000|- rs1 : x21<br> - rd : x31<br> - rs1_val == 8192<br> - imm_val == 16<br>                                                                                    |[0x80000490]:srai t6, s5, 16<br> [0x80000494]:sd t6, 112(a5)<br>     |
|  16|[0x80003280]<br>0x0000000000000000|- rs1 : x0<br> - rd : x24<br> - imm_val == 32<br>                                                                                                           |[0x800004a0]:srai s8, zero, 32<br> [0x800004a4]:sd s8, 120(a5)<br>   |
|  17|[0x80003288]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x31<br> - rd : x26<br> - rs1_val == -140737488355329<br> - imm_val == 62<br>                                                                        |[0x800004b4]:srai s10, t6, 62<br> [0x800004b8]:sd s10, 128(a5)<br>   |
|  18|[0x80003290]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x3<br> - rd : x20<br> - rs1_val == -8589934593<br> - imm_val == 61<br>                                                                              |[0x800004c8]:srai s4, gp, 61<br> [0x800004cc]:sd s4, 136(a5)<br>     |
|  19|[0x80003298]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x20<br> - rd : x4<br> - rs1_val == -4294967297<br> - imm_val == 59<br>                                                                              |[0x800004dc]:srai tp, s4, 59<br> [0x800004e0]:sd tp, 144(a5)<br>     |
|  20|[0x800032a0]<br>0x0000000000000001|- rs1 : x8<br> - rd : x21<br> - rs1_val == 140737488355328<br> - imm_val == 47<br>                                                                          |[0x800004ec]:srai s5, fp, 47<br> [0x800004f0]:sd s5, 152(a5)<br>     |
|  21|[0x800032a8]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x23<br> - rd : x16<br> - rs1_val == -262145<br> - imm_val == 31<br>                                                                                 |[0x800004fc]:srai a6, s7, 31<br> [0x80000500]:sd a6, 160(a5)<br>     |
|  22|[0x800032b0]<br>0x0000000000000000|- rs1 : x14<br> - rd : x0<br> - rs1_val == -8388609<br> - imm_val == 21<br>                                                                                 |[0x8000050c]:srai zero, a4, 21<br> [0x80000510]:sd zero, 168(a5)<br> |
|  23|[0x800032b8]<br>0x0000000000000000|- rs1 : x15<br> - rd : x28<br> - rs1_val == 2<br>                                                                                                           |[0x80000520]:srai t3, a5, 31<br> [0x80000524]:sd t3, 0(tp)<br>       |
|  24|[0x800032c0]<br>0x0000000000000000|- rs1 : x26<br> - rd : x2<br> - rs1_val == 8<br>                                                                                                            |[0x8000052c]:srai sp, s10, 42<br> [0x80000530]:sd sp, 8(tp)<br>      |
|  25|[0x800032c8]<br>0x0000000000000000|- rs1 : x5<br> - rd : x1<br> - rs1_val == 16<br>                                                                                                            |[0x80000538]:srai ra, t0, 5<br> [0x8000053c]:sd ra, 16(tp)<br>       |
|  26|[0x800032d0]<br>0x0000000000000004|- rs1 : x10<br> - rd : x3<br> - rs1_val == 32<br>                                                                                                           |[0x80000544]:srai gp, a0, 3<br> [0x80000548]:sd gp, 24(tp)<br>       |
|  27|[0x800032d8]<br>0x0000000000000000|- rs1 : x9<br> - rd : x19<br> - rs1_val == 64<br>                                                                                                           |[0x80000550]:srai s3, s1, 13<br> [0x80000554]:sd s3, 32(tp)<br>      |
|  28|[0x800032e0]<br>0x0000000000000080|- rs1 : x22<br> - rd : x7<br> - rs1_val == 128<br>                                                                                                          |[0x8000055c]:srai t2, s6, 0<br> [0x80000560]:sd t2, 40(tp)<br>       |
|  29|[0x800032e8]<br>0x0000000000000000|- rs1 : x6<br> - rd : x18<br> - rs1_val == 256<br>                                                                                                          |[0x80000568]:srai s2, t1, 17<br> [0x8000056c]:sd s2, 48(tp)<br>      |
|  30|[0x800032f0]<br>0x0000000000000000|- rs1 : x18<br> - rd : x27<br> - rs1_val == 512<br>                                                                                                         |[0x80000574]:srai s11, s2, 11<br> [0x80000578]:sd s11, 56(tp)<br>    |
|  31|[0x800032f8]<br>0x0000000000000000|- rs1 : x28<br> - rd : x14<br> - rs1_val == 1024<br>                                                                                                        |[0x80000580]:srai a4, t3, 62<br> [0x80000584]:sd a4, 64(tp)<br>      |
|  32|[0x80003300]<br>0x0000000000000020|- rs1 : x11<br> - rd : x15<br> - rs1_val == 2048<br>                                                                                                        |[0x80000590]:srai a5, a1, 6<br> [0x80000594]:sd a5, 72(tp)<br>       |
|  33|[0x80003308]<br>0x0000000000000004|- rs1_val == 4096<br>                                                                                                                                       |[0x8000059c]:srai a1, a0, 10<br> [0x800005a0]:sd a1, 80(tp)<br>      |
|  34|[0x80003310]<br>0x0000000000000001|- rs1_val == 16384<br>                                                                                                                                      |[0x800005a8]:srai a1, a0, 14<br> [0x800005ac]:sd a1, 88(tp)<br>      |
|  35|[0x80003318]<br>0x0000000000000008|- rs1_val == 32768<br>                                                                                                                                      |[0x800005b4]:srai a1, a0, 12<br> [0x800005b8]:sd a1, 96(tp)<br>      |
|  36|[0x80003320]<br>0x0000000000000200|- rs1_val == 65536<br>                                                                                                                                      |[0x800005c0]:srai a1, a0, 7<br> [0x800005c4]:sd a1, 104(tp)<br>      |
|  37|[0x80003328]<br>0x0000000000000000|- rs1_val == 131072<br>                                                                                                                                     |[0x800005cc]:srai a1, a0, 32<br> [0x800005d0]:sd a1, 112(tp)<br>     |
|  38|[0x80003330]<br>0x0000000000000000|- rs1_val == 262144<br>                                                                                                                                     |[0x800005d8]:srai a1, a0, 32<br> [0x800005dc]:sd a1, 120(tp)<br>     |
|  39|[0x80003338]<br>0x0000000000000010|- rs1_val == 2097152<br>                                                                                                                                    |[0x800005e4]:srai a1, a0, 17<br> [0x800005e8]:sd a1, 128(tp)<br>     |
|  40|[0x80003340]<br>0x0000000000000400|- rs1_val == 4194304<br>                                                                                                                                    |[0x800005f0]:srai a1, a0, 12<br> [0x800005f4]:sd a1, 136(tp)<br>     |
|  41|[0x80003348]<br>0x0000000000002000|- rs1_val == 8388608<br>                                                                                                                                    |[0x800005fc]:srai a1, a0, 10<br> [0x80000600]:sd a1, 144(tp)<br>     |
|  42|[0x80003350]<br>0x0000000001000000|- rs1_val == 16777216<br>                                                                                                                                   |[0x80000608]:srai a1, a0, 0<br> [0x8000060c]:sd a1, 152(tp)<br>      |
|  43|[0x80003358]<br>0x0000000000000080|- rs1_val == 33554432<br>                                                                                                                                   |[0x80000614]:srai a1, a0, 18<br> [0x80000618]:sd a1, 160(tp)<br>     |
|  44|[0x80003360]<br>0x0000000000010000|- rs1_val == 67108864<br>                                                                                                                                   |[0x80000620]:srai a1, a0, 10<br> [0x80000624]:sd a1, 168(tp)<br>     |
|  45|[0x80003368]<br>0x0000000000000040|- rs1_val == 134217728<br>                                                                                                                                  |[0x8000062c]:srai a1, a0, 21<br> [0x80000630]:sd a1, 176(tp)<br>     |
|  46|[0x80003370]<br>0x0000000000000000|- rs1_val == 268435456<br>                                                                                                                                  |[0x80000638]:srai a1, a0, 55<br> [0x8000063c]:sd a1, 184(tp)<br>     |
|  47|[0x80003378]<br>0x0000000000010000|- rs1_val == 536870912<br>                                                                                                                                  |[0x80000644]:srai a1, a0, 13<br> [0x80000648]:sd a1, 192(tp)<br>     |
|  48|[0x80003380]<br>0x0000000000000200|- rs1_val == 1073741824<br>                                                                                                                                 |[0x80000650]:srai a1, a0, 21<br> [0x80000654]:sd a1, 200(tp)<br>     |
|  49|[0x80003388]<br>0x0000000000000001|- rs1_val == 2147483648<br>                                                                                                                                 |[0x80000660]:srai a1, a0, 31<br> [0x80000664]:sd a1, 208(tp)<br>     |
|  50|[0x80003390]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                                                                 |[0x80000670]:srai a1, a0, 47<br> [0x80000674]:sd a1, 216(tp)<br>     |
|  51|[0x80003398]<br>0x0000000008000000|- rs1_val == 17179869184<br>                                                                                                                                |[0x80000680]:srai a1, a0, 7<br> [0x80000684]:sd a1, 224(tp)<br>      |
|  52|[0x800033a0]<br>0x0000000000010000|- rs1_val == 34359738368<br>                                                                                                                                |[0x80000690]:srai a1, a0, 19<br> [0x80000694]:sd a1, 232(tp)<br>     |
|  53|[0x800033a8]<br>0x0000000000400000|- rs1_val == 68719476736<br>                                                                                                                                |[0x800006a0]:srai a1, a0, 14<br> [0x800006a4]:sd a1, 240(tp)<br>     |
|  54|[0x800033b0]<br>0x0000000100000000|- rs1_val == 137438953472<br>                                                                                                                               |[0x800006b0]:srai a1, a0, 5<br> [0x800006b4]:sd a1, 248(tp)<br>      |
|  55|[0x800033b8]<br>0x0000000000080000|- rs1_val == 274877906944<br>                                                                                                                               |[0x800006c0]:srai a1, a0, 19<br> [0x800006c4]:sd a1, 256(tp)<br>     |
|  56|[0x800033c0]<br>0x0000000000800000|- rs1_val == 549755813888<br>                                                                                                                               |[0x800006d0]:srai a1, a0, 16<br> [0x800006d4]:sd a1, 264(tp)<br>     |
|  57|[0x800033c8]<br>0x0000000000800000|- rs1_val == 1099511627776<br>                                                                                                                              |[0x800006e0]:srai a1, a0, 17<br> [0x800006e4]:sd a1, 272(tp)<br>     |
|  58|[0x800033d0]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                                              |[0x800006f0]:srai a1, a0, 42<br> [0x800006f4]:sd a1, 280(tp)<br>     |
|  59|[0x800033d8]<br>0x0000000000000001|- rs1_val == 4398046511104<br>                                                                                                                              |[0x80000700]:srai a1, a0, 42<br> [0x80000704]:sd a1, 288(tp)<br>     |
|  60|[0x800033e0]<br>0x0000040000000000|- rs1_val == 8796093022208<br>                                                                                                                              |[0x80000710]:srai a1, a0, 1<br> [0x80000714]:sd a1, 296(tp)<br>      |
|  61|[0x800033e8]<br>0x0000080000000000|- rs1_val == 17592186044416<br>                                                                                                                             |[0x80000720]:srai a1, a0, 1<br> [0x80000724]:sd a1, 304(tp)<br>      |
|  62|[0x800033f0]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                                             |[0x80000730]:srai a1, a0, 59<br> [0x80000734]:sd a1, 312(tp)<br>     |
|  63|[0x800033f8]<br>0x0000000000000010|- rs1_val == 70368744177664<br>                                                                                                                             |[0x80000740]:srai a1, a0, 42<br> [0x80000744]:sd a1, 320(tp)<br>     |
|  64|[0x80003400]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                                            |[0x80000750]:srai a1, a0, 61<br> [0x80000754]:sd a1, 328(tp)<br>     |
|  65|[0x80003408]<br>0x0000000800000000|- rs1_val == 562949953421312<br>                                                                                                                            |[0x80000760]:srai a1, a0, 14<br> [0x80000764]:sd a1, 336(tp)<br>     |
|  66|[0x80003410]<br>0x0000000000040000|- rs1_val == 1125899906842624<br>                                                                                                                           |[0x80000770]:srai a1, a0, 32<br> [0x80000774]:sd a1, 344(tp)<br>     |
|  67|[0x80003418]<br>0x0000400000000000|- rs1_val == 2251799813685248<br>                                                                                                                           |[0x80000780]:srai a1, a0, 5<br> [0x80000784]:sd a1, 352(tp)<br>      |
|  68|[0x80003420]<br>0x0000400000000000|- rs1_val == 4503599627370496<br>                                                                                                                           |[0x80000790]:srai a1, a0, 6<br> [0x80000794]:sd a1, 360(tp)<br>      |
|  69|[0x80003428]<br>0x0000000000200000|- rs1_val == 9007199254740992<br>                                                                                                                           |[0x800007a0]:srai a1, a0, 32<br> [0x800007a4]:sd a1, 368(tp)<br>     |
|  70|[0x80003430]<br>0xFFFFFFFF7FFFFFFF|- rs1_val == -549755813889<br>                                                                                                                              |[0x800007b4]:srai a1, a0, 8<br> [0x800007b8]:sd a1, 376(tp)<br>      |
|  71|[0x80003438]<br>0xFFFFFFFFFFBFFFFF|- rs1_val == -1099511627777<br>                                                                                                                             |[0x800007c8]:srai a1, a0, 18<br> [0x800007cc]:sd a1, 384(tp)<br>     |
|  72|[0x80003440]<br>0xFFFFFFFFFEFFFFFF|- rs1_val == -2199023255553<br>                                                                                                                             |[0x800007dc]:srai a1, a0, 17<br> [0x800007e0]:sd a1, 392(tp)<br>     |
|  73|[0x80003448]<br>0xFFFFFFFFDFFFFFFF|- rs1_val == -4398046511105<br>                                                                                                                             |[0x800007f0]:srai a1, a0, 13<br> [0x800007f4]:sd a1, 400(tp)<br>     |
|  74|[0x80003450]<br>0xFFFFFFFFFBFFFFFF|- rs1_val == -8796093022209<br>                                                                                                                             |[0x80000804]:srai a1, a0, 17<br> [0x80000808]:sd a1, 408(tp)<br>     |
|  75|[0x80003458]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -35184372088833<br>                                                                                                                            |[0x80000818]:srai a1, a0, 59<br> [0x8000081c]:sd a1, 416(tp)<br>     |
|  76|[0x80003460]<br>0xFFFFFFFBFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                                            |[0x8000082c]:srai a1, a0, 12<br> [0x80000830]:sd a1, 424(tp)<br>     |
|  77|[0x80003468]<br>0xFFFFFF7FFFFFFFFF|- rs1_val == -281474976710657<br>                                                                                                                           |[0x80000840]:srai a1, a0, 9<br> [0x80000844]:sd a1, 432(tp)<br>      |
|  78|[0x80003470]<br>0xFFFF7FFFFFFFFFFF|- rs1_val == -562949953421313<br>                                                                                                                           |[0x80000854]:srai a1, a0, 2<br> [0x80000858]:sd a1, 440(tp)<br>      |
|  79|[0x80003478]<br>0xFFFFFFFFFFFFFEFF|- rs1_val == -1125899906842625<br>                                                                                                                          |[0x80000868]:srai a1, a0, 42<br> [0x8000086c]:sd a1, 448(tp)<br>     |
|  80|[0x80003480]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                                          |[0x8000087c]:srai a1, a0, 62<br> [0x80000880]:sd a1, 456(tp)<br>     |
|  81|[0x80003488]<br>0xFFFFFBFFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                                          |[0x80000890]:srai a1, a0, 10<br> [0x80000894]:sd a1, 464(tp)<br>     |
|  82|[0x80003490]<br>0xFFFFFFFDFFFFFFFF|- rs1_val == -18014398509481985<br>                                                                                                                         |[0x800008a4]:srai a1, a0, 21<br> [0x800008a8]:sd a1, 472(tp)<br>     |
|  83|[0x80003498]<br>0xFFFFEFFFFFFFFFFF|- rs1_val == -36028797018963969<br>                                                                                                                         |[0x800008b8]:srai a1, a0, 11<br> [0x800008bc]:sd a1, 480(tp)<br>     |
|  84|[0x800034a0]<br>0xFF7FFFFFFFFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                                         |[0x800008cc]:srai a1, a0, 1<br> [0x800008d0]:sd a1, 488(tp)<br>      |
|  85|[0x800034a8]<br>0xFFFF7FFFFFFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                                        |[0x800008e0]:srai a1, a0, 10<br> [0x800008e4]:sd a1, 496(tp)<br>     |
|  86|[0x800034b0]<br>0xFFFEFFFFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                                        |[0x800008f4]:srai a1, a0, 10<br> [0x800008f8]:sd a1, 504(tp)<br>     |
|  87|[0x800034b8]<br>0xFFF7FFFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                                        |[0x80000908]:srai a1, a0, 8<br> [0x8000090c]:sd a1, 512(tp)<br>      |
|  88|[0x800034c0]<br>0xFFFF7FFFFFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                                       |[0x8000091c]:srai a1, a0, 13<br> [0x80000920]:sd a1, 520(tp)<br>     |
|  89|[0x800034c8]<br>0xFFDFFFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                                       |[0x80000930]:srai a1, a0, 8<br> [0x80000934]:sd a1, 528(tp)<br>      |
|  90|[0x800034d0]<br>0xFFFFFFFFFFFFFFFD|- rs1_val == -4611686018427387905<br>                                                                                                                       |[0x80000944]:srai a1, a0, 61<br> [0x80000948]:sd a1, 536(tp)<br>     |
|  91|[0x800034d8]<br>0xFFFFFFFF55555555|- rs1_val == -6148914691236517206<br>                                                                                                                       |[0x8000096c]:srai a1, a0, 31<br> [0x80000970]:sd a1, 544(tp)<br>     |
|  92|[0x800034e0]<br>0x0000080000000000|- rs1_val == 18014398509481984<br>                                                                                                                          |[0x8000097c]:srai a1, a0, 11<br> [0x80000980]:sd a1, 552(tp)<br>     |
|  93|[0x800034e8]<br>0x0000200000000000|- rs1_val == 36028797018963968<br>                                                                                                                          |[0x8000098c]:srai a1, a0, 10<br> [0x80000990]:sd a1, 560(tp)<br>     |
|  94|[0x800034f0]<br>0x0200000000000000|- rs1_val == 288230376151711744<br>                                                                                                                         |[0x8000099c]:srai a1, a0, 1<br> [0x800009a0]:sd a1, 568(tp)<br>      |
|  95|[0x800034f8]<br>0x0200000000000000|- rs1_val == 576460752303423488<br>                                                                                                                         |[0x800009ac]:srai a1, a0, 2<br> [0x800009b0]:sd a1, 576(tp)<br>      |
|  96|[0x80003500]<br>0x0004000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                        |[0x800009bc]:srai a1, a0, 10<br> [0x800009c0]:sd a1, 584(tp)<br>     |
|  97|[0x80003508]<br>0x0002000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                        |[0x800009cc]:srai a1, a0, 12<br> [0x800009d0]:sd a1, 592(tp)<br>     |
|  98|[0x80003510]<br>0x4000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                        |[0x800009dc]:srai a1, a0, 0<br> [0x800009e0]:sd a1, 600(tp)<br>      |
|  99|[0x80003518]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2<br>                                                                                                                                         |[0x800009e8]:srai a1, a0, 4<br> [0x800009ec]:sd a1, 608(tp)<br>      |
| 100|[0x80003520]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -3<br>                                                                                                                                         |[0x800009f4]:srai a1, a0, 21<br> [0x800009f8]:sd a1, 616(tp)<br>     |
| 101|[0x80003528]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -5<br>                                                                                                                                         |[0x80000a00]:srai a1, a0, 3<br> [0x80000a04]:sd a1, 624(tp)<br>      |
| 102|[0x80003530]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -9<br>                                                                                                                                         |[0x80000a0c]:srai a1, a0, 9<br> [0x80000a10]:sd a1, 632(tp)<br>      |
| 103|[0x80003538]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17<br>                                                                                                                                        |[0x80000a18]:srai a1, a0, 18<br> [0x80000a1c]:sd a1, 640(tp)<br>     |
| 104|[0x80003540]<br>0xFFFFFFFFFFFFFFEF|- rs1_val == -33<br>                                                                                                                                        |[0x80000a24]:srai a1, a0, 1<br> [0x80000a28]:sd a1, 648(tp)<br>      |
| 105|[0x80003548]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -65<br>                                                                                                                                        |[0x80000a30]:srai a1, a0, 15<br> [0x80000a34]:sd a1, 656(tp)<br>     |
| 106|[0x80003550]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -129<br>                                                                                                                                       |[0x80000a3c]:srai a1, a0, 61<br> [0x80000a40]:sd a1, 664(tp)<br>     |
| 107|[0x80003558]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -257<br>                                                                                                                                       |[0x80000a48]:srai a1, a0, 14<br> [0x80000a4c]:sd a1, 672(tp)<br>     |
| 108|[0x80003560]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -513<br>                                                                                                                                       |[0x80000a54]:srai a1, a0, 62<br> [0x80000a58]:sd a1, 680(tp)<br>     |
| 109|[0x80003568]<br>0xFFFFFFFFFFFFFDFF|- rs1_val == -1025<br>                                                                                                                                      |[0x80000a60]:srai a1, a0, 1<br> [0x80000a64]:sd a1, 688(tp)<br>      |
| 110|[0x80003570]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == -2049<br>                                                                                                                                      |[0x80000a70]:srai a1, a0, 9<br> [0x80000a74]:sd a1, 696(tp)<br>      |
| 111|[0x80003578]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4097<br>                                                                                                                                      |[0x80000a80]:srai a1, a0, 47<br> [0x80000a84]:sd a1, 704(tp)<br>     |
| 112|[0x80003580]<br>0xFFFFFFFFFFFFDFFF|- rs1_val == -8193<br>                                                                                                                                      |[0x80000a90]:srai a1, a0, 0<br> [0x80000a94]:sd a1, 712(tp)<br>      |
| 113|[0x80003588]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -16385<br>                                                                                                                                     |[0x80000aa0]:srai a1, a0, 31<br> [0x80000aa4]:sd a1, 720(tp)<br>     |
| 114|[0x80003590]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == -32769<br>                                                                                                                                     |[0x80000ab0]:srai a1, a0, 13<br> [0x80000ab4]:sd a1, 728(tp)<br>     |
| 115|[0x80003598]<br>0xFFFFFFFFFFFF7FFF|- rs1_val == -65537<br>                                                                                                                                     |[0x80000ac0]:srai a1, a0, 1<br> [0x80000ac4]:sd a1, 736(tp)<br>      |
| 116|[0x800035a0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -524289<br>                                                                                                                                    |[0x80000ad0]:srai a1, a0, 31<br> [0x80000ad4]:sd a1, 744(tp)<br>     |
| 117|[0x800035a8]<br>0xFFFFFFFFFFFFDFFF|- rs1_val == -1048577<br>                                                                                                                                   |[0x80000ae0]:srai a1, a0, 7<br> [0x80000ae4]:sd a1, 752(tp)<br>      |
| 118|[0x800035b0]<br>0xFFFFFFFFFFFBFFFF|- rs1_val == -2097153<br>                                                                                                                                   |[0x80000af0]:srai a1, a0, 3<br> [0x80000af4]:sd a1, 760(tp)<br>      |
| 119|[0x800035b8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4194305<br>                                                                                                                                   |[0x80000b00]:srai a1, a0, 62<br> [0x80000b04]:sd a1, 768(tp)<br>     |
| 120|[0x800035c0]<br>0xFFFFFFFFFFBFFFFF|- rs1_val == -16777217<br>                                                                                                                                  |[0x80000b10]:srai a1, a0, 2<br> [0x80000b14]:sd a1, 776(tp)<br>      |
| 121|[0x800035c8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -33554433<br>                                                                                                                                  |[0x80000b20]:srai a1, a0, 32<br> [0x80000b24]:sd a1, 784(tp)<br>     |
| 122|[0x800035d0]<br>0xFFFFFFFFFFFFFFDF|- rs1_val == -67108865<br>                                                                                                                                  |[0x80000b30]:srai a1, a0, 21<br> [0x80000b34]:sd a1, 792(tp)<br>     |
| 123|[0x800035d8]<br>0xFFFFFFFFFFBFFFFF|- rs1_val == -134217729<br>                                                                                                                                 |[0x80000b40]:srai a1, a0, 5<br> [0x80000b44]:sd a1, 800(tp)<br>      |
| 124|[0x800035e0]<br>0xFFFFFFFFFFFFFF7F|- rs1_val == -268435457<br>                                                                                                                                 |[0x80000b50]:srai a1, a0, 21<br> [0x80000b54]:sd a1, 808(tp)<br>     |
| 125|[0x800035e8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -536870913<br>                                                                                                                                 |[0x80000b60]:srai a1, a0, 55<br> [0x80000b64]:sd a1, 816(tp)<br>     |
| 126|[0x800035f0]<br>0xFFFFFFFFFFFFEFFF|- rs1_val == -1073741825<br>                                                                                                                                |[0x80000b70]:srai a1, a0, 18<br> [0x80000b74]:sd a1, 824(tp)<br>     |
| 127|[0x800035f8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2147483649<br>                                                                                                                                |[0x80000b84]:srai a1, a0, 62<br> [0x80000b88]:sd a1, 832(tp)<br>     |
| 128|[0x80003600]<br>0xFFFFFFFFFFFEFFFF|- rs1_val == -17179869185<br>                                                                                                                               |[0x80000b98]:srai a1, a0, 18<br> [0x80000b9c]:sd a1, 840(tp)<br>     |
| 129|[0x80003608]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == -34359738369<br>                                                                                                                               |[0x80000bac]:srai a1, a0, 32<br> [0x80000bb0]:sd a1, 848(tp)<br>     |
| 130|[0x80003610]<br>0xFFFFFFEFFFFFFFFF|- rs1_val == -68719476737<br>                                                                                                                               |[0x80000bc0]:srai a1, a0, 0<br> [0x80000bc4]:sd a1, 856(tp)<br>      |
| 131|[0x80003618]<br>0xFFFFFFFFFFBFFFFF|- rs1_val == -137438953473<br>                                                                                                                              |[0x80000bd4]:srai a1, a0, 15<br> [0x80000bd8]:sd a1, 864(tp)<br>     |
| 132|[0x80003620]<br>0xFFFFFFFDFFFFFFFF|- rs1_val == -274877906945<br>                                                                                                                              |[0x80000be8]:srai a1, a0, 5<br> [0x80000bec]:sd a1, 872(tp)<br>      |
| 133|[0x80003628]<br>0x0000000000000000|- rs1_val == 1048576<br>                                                                                                                                    |[0x80000bf4]:srai a1, a0, 32<br> [0x80000bf8]:sd a1, 880(tp)<br>     |
