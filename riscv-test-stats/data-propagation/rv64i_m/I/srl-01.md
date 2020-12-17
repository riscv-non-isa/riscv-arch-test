
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800010a0')]      |
| SIG_REGION                | [('0x80003010', '0x800034e0', '154 dwords')]      |
| COV_LABELS                | srl      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srl-01.S/srl-01.S    |
| Total Number of coverpoints| 277     |
| Total Coverpoints Hit     | 277      |
| Total Signature Updates   | 153      |
| STAT1                     | 151      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001080]:srl a2, a0, a1
      [0x80001084]:sd a2, 1072(sp)
 -- Signature Address: 0x800034c8 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : srl
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 512




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001090]:srl a2, a0, a1
      [0x80001094]:sd a2, 1080(sp)
 -- Signature Address: 0x800034d0 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : srl
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 4096
      - rs2_val == 31






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

|s.no|            signature             |                                                                              coverpoints                                                                               |                                code                                 |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003010]<br>0x8000000000000000|- opcode : srl<br> - rs1 : x2<br> - rs2 : x2<br> - rd : x13<br> - rs1 == rs2 != rd<br> - rs1_val == -9223372036854775808<br>                                            |[0x800003a8]:srl a3, sp, sp<br> [0x800003ac]:sd a3, 0(tp)<br>        |
|   2|[0x80003018]<br>0x0000000010000000|- rs1 : x30<br> - rs2 : x21<br> - rd : x21<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == 137438953472<br>                |[0x800003bc]:srl s5, t5, s5<br> [0x800003c0]:sd s5, 8(tp)<br>        |
|   3|[0x80003020]<br>0x0000000000000001|- rs1 : x29<br> - rs2 : x29<br> - rd : x29<br> - rs1 == rs2 == rd<br> - rs1_val == -17179869185<br>                                                                     |[0x800003dc]:srl t4, t4, t4<br> [0x800003e0]:sd t4, 16(tp)<br>       |
|   4|[0x80003028]<br>0x0000000000002000|- rs1 : x24<br> - rs2 : x9<br> - rd : x2<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val == 8192<br>                     |[0x800003ec]:srl sp, s8, s1<br> [0x800003f0]:sd sp, 24(tp)<br>       |
|   5|[0x80003030]<br>0x0000000000000000|- rs1 : x28<br> - rs2 : x22<br> - rd : x28<br> - rs1 == rd != rs2<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == 8<br> - rs2_val == 8<br> |[0x800003fc]:srl t3, t3, s6<br> [0x80000400]:sd t3, 32(tp)<br>       |
|   6|[0x80003038]<br>0x0000000000000000|- rs1 : x27<br> - rs2 : x8<br> - rd : x24<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val==0<br>                                                   |[0x8000040c]:srl s8, s11, fp<br> [0x80000410]:sd s8, 40(tp)<br>      |
|   7|[0x80003040]<br>0x003FFFFFFFFFFFFF|- rs1 : x19<br> - rs2 : x24<br> - rd : x27<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 9223372036854775807<br>                |[0x80000424]:srl s11, s3, s8<br> [0x80000428]:sd s11, 48(tp)<br>     |
|   8|[0x80003048]<br>0x0000000000000000|- rs1 : x13<br> - rs2 : x1<br> - rd : x7<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br> - rs2_val == 21<br>                              |[0x80000434]:srl t2, a3, ra<br> [0x80000438]:sd t2, 56(tp)<br>       |
|   9|[0x80003050]<br>0x0000000000000000|- rs1 : x17<br> - rs2 : x5<br> - rd : x20<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                                       |[0x80000444]:srl s4, a7, t0<br> [0x80000448]:sd s4, 64(tp)<br>       |
|  10|[0x80003058]<br>0x0000000000000000|- rs1 : x15<br> - rs2 : x19<br> - rd : x12<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                                      |[0x80000454]:srl a2, a5, s3<br> [0x80000458]:sd a2, 72(tp)<br>       |
|  11|[0x80003060]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x11<br> - rd : x6<br> - rs2_val == 59<br>                                                                                                        |[0x80000464]:srl t1, zero, a1<br> [0x80000468]:sd t1, 80(tp)<br>     |
|  12|[0x80003068]<br>0x0000000000000002|- rs1 : x7<br> - rs2 : x27<br> - rd : x26<br> - rs1_val == 32<br> - rs2_val == 4<br>                                                                                    |[0x80000474]:srl s10, t2, s11<br> [0x80000478]:sd s10, 88(tp)<br>    |
|  13|[0x80003070]<br>0x0000000000000000|- rs1 : x16<br> - rs2 : x20<br> - rd : x3<br> - rs1_val == 64<br> - rs2_val == 61<br>                                                                                   |[0x80000484]:srl gp, a6, s4<br> [0x80000488]:sd gp, 96(tp)<br>       |
|  14|[0x80003078]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : x10<br> - rd : x25<br> - rs1_val == 128<br>                                                                                                      |[0x80000494]:srl s9, s1, a0<br> [0x80000498]:sd s9, 104(tp)<br>      |
|  15|[0x80003080]<br>0x0000000000000080|- rs1 : x8<br> - rs2 : x31<br> - rd : x22<br> - rs1_val == 256<br> - rs2_val == 1<br>                                                                                   |[0x800004a4]:srl s6, fp, t6<br> [0x800004a8]:sd s6, 112(tp)<br>      |
|  16|[0x80003088]<br>0x0000000000000000|- rs1 : x26<br> - rs2 : x25<br> - rd : x0<br> - rs1_val == 512<br>                                                                                                      |[0x800004b4]:srl zero, s10, s9<br> [0x800004b8]:sd zero, 120(tp)<br> |
|  17|[0x80003090]<br>0x0000000000000000|- rs1 : x14<br> - rs2 : x13<br> - rd : x31<br> - rs1_val == 1024<br> - rs2_val == 31<br>                                                                                |[0x800004c4]:srl t6, a4, a3<br> [0x800004c8]:sd t6, 128(tp)<br>      |
|  18|[0x80003098]<br>0x0000000000000000|- rs1 : x6<br> - rs2 : x16<br> - rd : x15<br> - rs1_val == 2048<br>                                                                                                     |[0x800004e0]:srl a5, t1, a6<br> [0x800004e4]:sd a5, 0(sp)<br>        |
|  19|[0x800030a0]<br>0x0000000000001000|- rs1 : x12<br> - rs2 : x0<br> - rd : x14<br> - rs1_val == 4096<br>                                                                                                     |[0x800004f0]:srl a4, a2, zero<br> [0x800004f4]:sd a4, 8(sp)<br>      |
|  20|[0x800030a8]<br>0x0000000000000000|- rs1 : x18<br> - rs2 : x30<br> - rd : x4<br> - rs1_val == 16384<br> - rs2_val == 47<br>                                                                                |[0x80000500]:srl tp, s2, t5<br> [0x80000504]:sd tp, 16(sp)<br>       |
|  21|[0x800030b0]<br>0x0000000000000000|- rs1 : x11<br> - rs2 : x18<br> - rd : x8<br> - rs1_val == 32768<br>                                                                                                    |[0x80000510]:srl fp, a1, s2<br> [0x80000514]:sd fp, 24(sp)<br>       |
|  22|[0x800030b8]<br>0x0000000000002000|- rs1 : x25<br> - rs2 : x23<br> - rd : x5<br> - rs1_val == 65536<br>                                                                                                    |[0x80000520]:srl t0, s9, s7<br> [0x80000524]:sd t0, 32(sp)<br>       |
|  23|[0x800030c0]<br>0x0000000000004000|- rs1 : x3<br> - rs2 : x14<br> - rd : x19<br> - rs1_val == 131072<br>                                                                                                   |[0x80000530]:srl s3, gp, a4<br> [0x80000534]:sd s3, 40(sp)<br>       |
|  24|[0x800030c8]<br>0x0000000000000000|- rs1 : x22<br> - rs2 : x26<br> - rd : x9<br> - rs1_val == 262144<br>                                                                                                   |[0x80000540]:srl s1, s6, s10<br> [0x80000544]:sd s1, 48(sp)<br>      |
|  25|[0x800030d0]<br>0x0000000000000002|- rs1 : x5<br> - rs2 : x6<br> - rd : x30<br> - rs1_val == 524288<br>                                                                                                    |[0x80000550]:srl t5, t0, t1<br> [0x80000554]:sd t5, 56(sp)<br>       |
|  26|[0x800030d8]<br>0x0000000000000008|- rs1 : x23<br> - rs2 : x3<br> - rd : x16<br> - rs1_val == 1048576<br>                                                                                                  |[0x80000560]:srl a6, s7, gp<br> [0x80000564]:sd a6, 64(sp)<br>       |
|  27|[0x800030e0]<br>0x0000000000000001|- rs1 : x1<br> - rs2 : x15<br> - rd : x23<br> - rs1_val == 2097152<br>                                                                                                  |[0x80000570]:srl s7, ra, a5<br> [0x80000574]:sd s7, 72(sp)<br>       |
|  28|[0x800030e8]<br>0x0000000000000080|- rs1 : x10<br> - rs2 : x7<br> - rd : x11<br> - rs1_val == 4194304<br>                                                                                                  |[0x80000580]:srl a1, a0, t2<br> [0x80000584]:sd a1, 80(sp)<br>       |
|  29|[0x800030f0]<br>0x0000000000004000|- rs1 : x31<br> - rs2 : x28<br> - rd : x10<br> - rs1_val == 8388608<br>                                                                                                 |[0x80000590]:srl a0, t6, t3<br> [0x80000594]:sd a0, 88(sp)<br>       |
|  30|[0x800030f8]<br>0x0000000000200000|- rs1 : x21<br> - rs2 : x4<br> - rd : x17<br> - rs1_val == 16777216<br>                                                                                                 |[0x800005a0]:srl a7, s5, tp<br> [0x800005a4]:sd a7, 96(sp)<br>       |
|  31|[0x80003100]<br>0x0000000000200000|- rs1 : x20<br> - rs2 : x17<br> - rd : x1<br> - rs1_val == 33554432<br>                                                                                                 |[0x800005b0]:srl ra, s4, a7<br> [0x800005b4]:sd ra, 104(sp)<br>      |
|  32|[0x80003108]<br>0x0000000000020000|- rs1 : x4<br> - rs2 : x12<br> - rd : x18<br> - rs1_val == 67108864<br>                                                                                                 |[0x800005c0]:srl s2, tp, a2<br> [0x800005c4]:sd s2, 112(sp)<br>      |
|  33|[0x80003110]<br>0x0000000000000200|- rs1_val == 134217728<br>                                                                                                                                              |[0x800005d0]:srl a2, a0, a1<br> [0x800005d4]:sd a2, 120(sp)<br>      |
|  34|[0x80003118]<br>0x0000000000000000|- rs1_val == 268435456<br> - rs2_val == 42<br>                                                                                                                          |[0x800005e0]:srl a2, a0, a1<br> [0x800005e4]:sd a2, 128(sp)<br>      |
|  35|[0x80003120]<br>0x0000000000000000|- rs1_val == 536870912<br>                                                                                                                                              |[0x800005f0]:srl a2, a0, a1<br> [0x800005f4]:sd a2, 136(sp)<br>      |
|  36|[0x80003128]<br>0x0000000000010000|- rs1_val == 1073741824<br>                                                                                                                                             |[0x80000600]:srl a2, a0, a1<br> [0x80000604]:sd a2, 144(sp)<br>      |
|  37|[0x80003130]<br>0x0000000000080000|- rs1_val == 2147483648<br>                                                                                                                                             |[0x80000614]:srl a2, a0, a1<br> [0x80000618]:sd a2, 152(sp)<br>      |
|  38|[0x80003138]<br>0x0000000000000002|- rs1_val == 4294967296<br>                                                                                                                                             |[0x80000628]:srl a2, a0, a1<br> [0x8000062c]:sd a2, 160(sp)<br>      |
|  39|[0x80003140]<br>0x0000000010000000|- rs1_val == 8589934592<br>                                                                                                                                             |[0x8000063c]:srl a2, a0, a1<br> [0x80000640]:sd a2, 168(sp)<br>      |
|  40|[0x80003148]<br>0x0000000200000000|- rs1_val == 17179869184<br>                                                                                                                                            |[0x80000650]:srl a2, a0, a1<br> [0x80000654]:sd a2, 176(sp)<br>      |
|  41|[0x80003150]<br>0x0000000000000000|- rs1_val == 34359738368<br>                                                                                                                                            |[0x80000664]:srl a2, a0, a1<br> [0x80000668]:sd a2, 184(sp)<br>      |
|  42|[0x80003158]<br>0x0000000000000000|- rs1_val == 68719476736<br>                                                                                                                                            |[0x80000678]:srl a2, a0, a1<br> [0x8000067c]:sd a2, 192(sp)<br>      |
|  43|[0x80003160]<br>0x0000000000100000|- rs1_val == 274877906944<br>                                                                                                                                           |[0x8000068c]:srl a2, a0, a1<br> [0x80000690]:sd a2, 200(sp)<br>      |
|  44|[0x80003168]<br>0x0000000002000000|- rs1_val == 549755813888<br>                                                                                                                                           |[0x800006a0]:srl a2, a0, a1<br> [0x800006a4]:sd a2, 208(sp)<br>      |
|  45|[0x80003170]<br>0x0000000000000200|- rs1_val == 1099511627776<br>                                                                                                                                          |[0x800006b4]:srl a2, a0, a1<br> [0x800006b8]:sd a2, 216(sp)<br>      |
|  46|[0x80003178]<br>0x0000000020000000|- rs1_val == 2199023255552<br>                                                                                                                                          |[0x800006c8]:srl a2, a0, a1<br> [0x800006cc]:sd a2, 224(sp)<br>      |
|  47|[0x80003180]<br>0x0000004000000000|- rs1_val == 4398046511104<br>                                                                                                                                          |[0x800006dc]:srl a2, a0, a1<br> [0x800006e0]:sd a2, 232(sp)<br>      |
|  48|[0x80003188]<br>0x0000000040000000|- rs1_val == 8796093022208<br>                                                                                                                                          |[0x800006f0]:srl a2, a0, a1<br> [0x800006f4]:sd a2, 240(sp)<br>      |
|  49|[0x80003190]<br>0x0000000100000000|- rs1_val == 17592186044416<br>                                                                                                                                         |[0x80000704]:srl a2, a0, a1<br> [0x80000708]:sd a2, 248(sp)<br>      |
|  50|[0x80003198]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                                                         |[0x80000718]:srl a2, a0, a1<br> [0x8000071c]:sd a2, 256(sp)<br>      |
|  51|[0x800031a0]<br>0x0000020000000000|- rs1_val == 70368744177664<br>                                                                                                                                         |[0x8000072c]:srl a2, a0, a1<br> [0x80000730]:sd a2, 264(sp)<br>      |
|  52|[0x800031a8]<br>0x0000000000000020|- rs1_val == 140737488355328<br>                                                                                                                                        |[0x80000740]:srl a2, a0, a1<br> [0x80000744]:sd a2, 272(sp)<br>      |
|  53|[0x800031b0]<br>0x0001000000000000|- rs1_val == 281474976710656<br>                                                                                                                                        |[0x80000754]:srl a2, a0, a1<br> [0x80000758]:sd a2, 280(sp)<br>      |
|  54|[0x800031b8]<br>0x0000080000000000|- rs1_val == 562949953421312<br>                                                                                                                                        |[0x80000768]:srl a2, a0, a1<br> [0x8000076c]:sd a2, 288(sp)<br>      |
|  55|[0x800031c0]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                                                       |[0x8000077c]:srl a2, a0, a1<br> [0x80000780]:sd a2, 296(sp)<br>      |
|  56|[0x800031c8]<br>0x0000000100000000|- rs1_val == 2251799813685248<br>                                                                                                                                       |[0x80000790]:srl a2, a0, a1<br> [0x80000794]:sd a2, 304(sp)<br>      |
|  57|[0x800031d0]<br>0x0004000000000000|- rs1_val == 4503599627370496<br> - rs2_val == 2<br>                                                                                                                    |[0x800007a4]:srl a2, a0, a1<br> [0x800007a8]:sd a2, 312(sp)<br>      |
|  58|[0x800031d8]<br>0x0000000000000000|- rs1_val == 9007199254740992<br> - rs2_val == 62<br>                                                                                                                   |[0x800007b8]:srl a2, a0, a1<br> [0x800007bc]:sd a2, 320(sp)<br>      |
|  59|[0x800031e0]<br>0x0000004000000000|- rs1_val == 18014398509481984<br> - rs2_val == 16<br>                                                                                                                  |[0x800007cc]:srl a2, a0, a1<br> [0x800007d0]:sd a2, 328(sp)<br>      |
|  60|[0x800031e8]<br>0x0080000000000000|- rs1_val == 36028797018963968<br>                                                                                                                                      |[0x800007e0]:srl a2, a0, a1<br> [0x800007e4]:sd a2, 336(sp)<br>      |
|  61|[0x800031f0]<br>0x0000008000000000|- rs1_val == 72057594037927936<br>                                                                                                                                      |[0x800007f4]:srl a2, a0, a1<br> [0x800007f8]:sd a2, 344(sp)<br>      |
|  62|[0x800031f8]<br>0x0000200000000000|- rs1_val == 144115188075855872<br>                                                                                                                                     |[0x80000808]:srl a2, a0, a1<br> [0x8000080c]:sd a2, 352(sp)<br>      |
|  63|[0x80003200]<br>0x0000008000000000|- rs1_val == 288230376151711744<br>                                                                                                                                     |[0x8000081c]:srl a2, a0, a1<br> [0x80000820]:sd a2, 360(sp)<br>      |
|  64|[0x80003208]<br>0x0800000000000000|- rs1_val == 576460752303423488<br>                                                                                                                                     |[0x80000830]:srl a2, a0, a1<br> [0x80000834]:sd a2, 368(sp)<br>      |
|  65|[0x80003210]<br>0x0000800000000000|- rs1_val == 1152921504606846976<br>                                                                                                                                    |[0x80000844]:srl a2, a0, a1<br> [0x80000848]:sd a2, 376(sp)<br>      |
|  66|[0x80003218]<br>0x0100000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                                    |[0x80000858]:srl a2, a0, a1<br> [0x8000085c]:sd a2, 384(sp)<br>      |
|  67|[0x80003220]<br>0x0000000000000001|- rs1_val == 4611686018427387904<br>                                                                                                                                    |[0x8000086c]:srl a2, a0, a1<br> [0x80000870]:sd a2, 392(sp)<br>      |
|  68|[0x80003228]<br>0x000000000001FFFF|- rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == -2<br>                                                                                                |[0x8000087c]:srl a2, a0, a1<br> [0x80000880]:sd a2, 400(sp)<br>      |
|  69|[0x80003230]<br>0x07FFFFFFFFFFFFFF|- rs1_val == -3<br>                                                                                                                                                     |[0x8000088c]:srl a2, a0, a1<br> [0x80000890]:sd a2, 408(sp)<br>      |
|  70|[0x80003238]<br>0x000007FFFFFFFFFF|- rs1_val == -5<br>                                                                                                                                                     |[0x8000089c]:srl a2, a0, a1<br> [0x800008a0]:sd a2, 416(sp)<br>      |
|  71|[0x80003240]<br>0x03FFFFFFFFFFFFFF|- rs1_val == -9<br>                                                                                                                                                     |[0x800008ac]:srl a2, a0, a1<br> [0x800008b0]:sd a2, 424(sp)<br>      |
|  72|[0x80003248]<br>0x00FFFFFFFFFFFFFF|- rs1_val == -17<br>                                                                                                                                                    |[0x800008bc]:srl a2, a0, a1<br> [0x800008c0]:sd a2, 432(sp)<br>      |
|  73|[0x80003250]<br>0x07FFFFFFFFFFFFFE|- rs1_val == -33<br>                                                                                                                                                    |[0x800008cc]:srl a2, a0, a1<br> [0x800008d0]:sd a2, 440(sp)<br>      |
|  74|[0x80003258]<br>0x00000000000001FF|- rs1_val == -65<br> - rs2_val == 55<br>                                                                                                                                |[0x800008dc]:srl a2, a0, a1<br> [0x800008e0]:sd a2, 448(sp)<br>      |
|  75|[0x80003260]<br>0x03FFFFFFFFFFFFFD|- rs1_val == -129<br>                                                                                                                                                   |[0x800008ec]:srl a2, a0, a1<br> [0x800008f0]:sd a2, 456(sp)<br>      |
|  76|[0x80003268]<br>0x7FFFFFFFFFFFFF7F|- rs1_val == -257<br>                                                                                                                                                   |[0x800008fc]:srl a2, a0, a1<br> [0x80000900]:sd a2, 464(sp)<br>      |
|  77|[0x80003270]<br>0x7FFFFFFFFFFFFEFF|- rs1_val == -513<br>                                                                                                                                                   |[0x8000090c]:srl a2, a0, a1<br> [0x80000910]:sd a2, 472(sp)<br>      |
|  78|[0x80003278]<br>0x00007FFFFFFFFFFF|- rs1_val == -1025<br>                                                                                                                                                  |[0x8000091c]:srl a2, a0, a1<br> [0x80000920]:sd a2, 480(sp)<br>      |
|  79|[0x80003280]<br>0x0003FFFFFFFFFFFF|- rs1_val == -2049<br>                                                                                                                                                  |[0x80000930]:srl a2, a0, a1<br> [0x80000934]:sd a2, 488(sp)<br>      |
|  80|[0x80003288]<br>0x00003FFFFFFFFFFF|- rs1_val == -4097<br>                                                                                                                                                  |[0x80000944]:srl a2, a0, a1<br> [0x80000948]:sd a2, 496(sp)<br>      |
|  81|[0x80003290]<br>0x0007FFFFFFFFFFFE|- rs1_val == -8193<br>                                                                                                                                                  |[0x80000958]:srl a2, a0, a1<br> [0x8000095c]:sd a2, 504(sp)<br>      |
|  82|[0x80003298]<br>0x03FFFFFFFFFFFEFF|- rs1_val == -16385<br>                                                                                                                                                 |[0x8000096c]:srl a2, a0, a1<br> [0x80000970]:sd a2, 512(sp)<br>      |
|  83|[0x800032a0]<br>0x007FFFFFFFFFFFBF|- rs1_val == -32769<br>                                                                                                                                                 |[0x80000980]:srl a2, a0, a1<br> [0x80000984]:sd a2, 520(sp)<br>      |
|  84|[0x800032a8]<br>0x03FFFFFFFFFFFBFF|- rs1_val == -65537<br>                                                                                                                                                 |[0x80000994]:srl a2, a0, a1<br> [0x80000998]:sd a2, 528(sp)<br>      |
|  85|[0x800032b0]<br>0x00000000000001FF|- rs1_val == -131073<br>                                                                                                                                                |[0x800009a8]:srl a2, a0, a1<br> [0x800009ac]:sd a2, 536(sp)<br>      |
|  86|[0x800032b8]<br>0x0001FFFFFFFFFFF7|- rs1_val == -262145<br>                                                                                                                                                |[0x800009bc]:srl a2, a0, a1<br> [0x800009c0]:sd a2, 544(sp)<br>      |
|  87|[0x800032c0]<br>0x7FFFFFFFFFFBFFFF|- rs1_val == -524289<br>                                                                                                                                                |[0x800009d0]:srl a2, a0, a1<br> [0x800009d4]:sd a2, 552(sp)<br>      |
|  88|[0x800032c8]<br>0x007FFFFFFFFFF7FF|- rs1_val == -1048577<br>                                                                                                                                               |[0x800009e4]:srl a2, a0, a1<br> [0x800009e8]:sd a2, 560(sp)<br>      |
|  89|[0x800032d0]<br>0x3FDFFFFFFFFFFFFF|- rs1_val == -36028797018963969<br>                                                                                                                                     |[0x800009fc]:srl a2, a0, a1<br> [0x80000a00]:sd a2, 568(sp)<br>      |
|  90|[0x800032d8]<br>0x0001FDFFFFFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                                                     |[0x80000a14]:srl a2, a0, a1<br> [0x80000a18]:sd a2, 576(sp)<br>      |
|  91|[0x800032e0]<br>0x00FDFFFFFFFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                                                    |[0x80000a2c]:srl a2, a0, a1<br> [0x80000a30]:sd a2, 584(sp)<br>      |
|  92|[0x800032e8]<br>0x07DFFFFFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                                                    |[0x80000a44]:srl a2, a0, a1<br> [0x80000a48]:sd a2, 592(sp)<br>      |
|  93|[0x800032f0]<br>0x000000000001EFFF|- rs1_val == -576460752303423489<br>                                                                                                                                    |[0x80000a5c]:srl a2, a0, a1<br> [0x80000a60]:sd a2, 600(sp)<br>      |
|  94|[0x800032f8]<br>0x00EFFFFFFFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                                                   |[0x80000a74]:srl a2, a0, a1<br> [0x80000a78]:sd a2, 608(sp)<br>      |
|  95|[0x80003300]<br>0x0001BFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                                                   |[0x80000a8c]:srl a2, a0, a1<br> [0x80000a90]:sd a2, 616(sp)<br>      |
|  96|[0x80003308]<br>0x000000017FFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                                                   |[0x80000aa4]:srl a2, a0, a1<br> [0x80000aa8]:sd a2, 624(sp)<br>      |
|  97|[0x80003310]<br>0x0155555555555555|- rs1_val == 6148914691236517205<br> - rs1_val==6148914691236517205<br>                                                                                                 |[0x80000ad0]:srl a2, a0, a1<br> [0x80000ad4]:sd a2, 632(sp)<br>      |
|  98|[0x80003318]<br>0x0002AAAAAAAAAAAA|- rs1_val == -6148914691236517206<br> - rs1_val==-6148914691236517206<br>                                                                                               |[0x80000afc]:srl a2, a0, a1<br> [0x80000b00]:sd a2, 640(sp)<br>      |
|  99|[0x80003320]<br>0x0000000000000000|- rs1_val==3<br>                                                                                                                                                        |[0x80000b0c]:srl a2, a0, a1<br> [0x80000b10]:sd a2, 648(sp)<br>      |
| 100|[0x80003328]<br>0x0000000000000000|- rs1_val==5<br>                                                                                                                                                        |[0x80000b1c]:srl a2, a0, a1<br> [0x80000b20]:sd a2, 656(sp)<br>      |
| 101|[0x80003330]<br>0x0000000033333333|- rs1_val==3689348814741910323<br> - rs2_val == 32<br>                                                                                                                  |[0x80000b48]:srl a2, a0, a1<br> [0x80000b4c]:sd a2, 664(sp)<br>      |
| 102|[0x80003338]<br>0x0333333333333333|- rs1_val==7378697629483820646<br>                                                                                                                                      |[0x80000b74]:srl a2, a0, a1<br> [0x80000b78]:sd a2, 672(sp)<br>      |
| 103|[0x80003340]<br>0x000FFFFFFFF4AFB0|- rs1_val==-3037000499<br>                                                                                                                                              |[0x80000b90]:srl a2, a0, a1<br> [0x80000b94]:sd a2, 680(sp)<br>      |
| 104|[0x80003348]<br>0x00000000000B504F|- rs1_val==3037000499<br>                                                                                                                                               |[0x80000bac]:srl a2, a0, a1<br> [0x80000bb0]:sd a2, 688(sp)<br>      |
| 105|[0x80003350]<br>0x0001555555555555|- rs1_val==6148914691236517204<br>                                                                                                                                      |[0x80000bd8]:srl a2, a0, a1<br> [0x80000bdc]:sd a2, 696(sp)<br>      |
| 106|[0x80003358]<br>0x0000333333333333|- rs1_val==3689348814741910322<br>                                                                                                                                      |[0x80000c04]:srl a2, a0, a1<br> [0x80000c08]:sd a2, 704(sp)<br>      |
| 107|[0x80003360]<br>0x00000000CCCCCCCC|- rs1_val==7378697629483820645<br>                                                                                                                                      |[0x80000c30]:srl a2, a0, a1<br> [0x80000c34]:sd a2, 712(sp)<br>      |
| 108|[0x80003368]<br>0x000000000005A827|- rs1_val==3037000498<br>                                                                                                                                               |[0x80000c4c]:srl a2, a0, a1<br> [0x80000c50]:sd a2, 720(sp)<br>      |
| 109|[0x80003370]<br>0x2AAAAAAAAAAAAAAB|- rs1_val==6148914691236517206<br>                                                                                                                                      |[0x80000c78]:srl a2, a0, a1<br> [0x80000c7c]:sd a2, 728(sp)<br>      |
| 110|[0x80003378]<br>0x0555555555555555|- rs1_val==-6148914691236517205<br>                                                                                                                                     |[0x80000ca4]:srl a2, a0, a1<br> [0x80000ca8]:sd a2, 736(sp)<br>      |
| 111|[0x80003380]<br>0x0000000000000000|- rs1_val==6<br>                                                                                                                                                        |[0x80000cb4]:srl a2, a0, a1<br> [0x80000cb8]:sd a2, 744(sp)<br>      |
| 112|[0x80003388]<br>0x199999999999999A|- rs1_val==3689348814741910324<br>                                                                                                                                      |[0x80000ce0]:srl a2, a0, a1<br> [0x80000ce4]:sd a2, 752(sp)<br>      |
| 113|[0x80003390]<br>0x0000000000199999|- rs1_val==7378697629483820647<br>                                                                                                                                      |[0x80000d0c]:srl a2, a0, a1<br> [0x80000d10]:sd a2, 760(sp)<br>      |
| 114|[0x80003398]<br>0x0000FFFFFFFF4AFB|- rs1_val==-3037000498<br>                                                                                                                                              |[0x80000d28]:srl a2, a0, a1<br> [0x80000d2c]:sd a2, 768(sp)<br>      |
| 115|[0x800033a0]<br>0x0000000000000000|- rs1_val==3037000500<br>                                                                                                                                               |[0x80000d44]:srl a2, a0, a1<br> [0x80000d48]:sd a2, 776(sp)<br>      |
| 116|[0x800033a8]<br>0x000000000000001F|- rs1_val == -2097153<br>                                                                                                                                               |[0x80000d58]:srl a2, a0, a1<br> [0x80000d5c]:sd a2, 784(sp)<br>      |
| 117|[0x800033b0]<br>0x00003FFFFFFFFFEF|- rs1_val == -4194305<br>                                                                                                                                               |[0x80000d6c]:srl a2, a0, a1<br> [0x80000d70]:sd a2, 792(sp)<br>      |
| 118|[0x800033b8]<br>0x1FFFFFFFFFEFFFFF|- rs1_val == -8388609<br>                                                                                                                                               |[0x80000d80]:srl a2, a0, a1<br> [0x80000d84]:sd a2, 800(sp)<br>      |
| 119|[0x800033c0]<br>0x07FFFFFFFFF7FFFF|- rs1_val == -16777217<br>                                                                                                                                              |[0x80000d94]:srl a2, a0, a1<br> [0x80000d98]:sd a2, 808(sp)<br>      |
| 120|[0x800033c8]<br>0x0001FFFFFFFFFBFF|- rs1_val == -33554433<br>                                                                                                                                              |[0x80000da8]:srl a2, a0, a1<br> [0x80000dac]:sd a2, 816(sp)<br>      |
| 121|[0x800033d0]<br>0x00000001FFFFFFFF|- rs1_val == -67108865<br>                                                                                                                                              |[0x80000dbc]:srl a2, a0, a1<br> [0x80000dc0]:sd a2, 824(sp)<br>      |
| 122|[0x800033d8]<br>0x00003FFFFFFFFDFF|- rs1_val == -134217729<br>                                                                                                                                             |[0x80000dd0]:srl a2, a0, a1<br> [0x80000dd4]:sd a2, 832(sp)<br>      |
| 123|[0x800033e0]<br>0x003FFFFFFFFBFFFF|- rs1_val == -268435457<br>                                                                                                                                             |[0x80000de4]:srl a2, a0, a1<br> [0x80000de8]:sd a2, 840(sp)<br>      |
| 124|[0x800033e8]<br>0x000FFFFFFFFDFFFF|- rs1_val == -536870913<br>                                                                                                                                             |[0x80000df8]:srl a2, a0, a1<br> [0x80000dfc]:sd a2, 848(sp)<br>      |
| 125|[0x800033f0]<br>0x00000000FFFFFFFF|- rs1_val == -1073741825<br>                                                                                                                                            |[0x80000e0c]:srl a2, a0, a1<br> [0x80000e10]:sd a2, 856(sp)<br>      |
| 126|[0x800033f8]<br>0x0000000000000003|- rs1_val == -2147483649<br>                                                                                                                                            |[0x80000e24]:srl a2, a0, a1<br> [0x80000e28]:sd a2, 864(sp)<br>      |
| 127|[0x80003400]<br>0x000000000001FFFF|- rs1_val == -4294967297<br>                                                                                                                                            |[0x80000e3c]:srl a2, a0, a1<br> [0x80000e40]:sd a2, 872(sp)<br>      |
| 128|[0x80003408]<br>0x01FFFFFFFBFFFFFF|- rs1_val == -8589934593<br>                                                                                                                                            |[0x80000e54]:srl a2, a0, a1<br> [0x80000e58]:sd a2, 880(sp)<br>      |
| 129|[0x80003410]<br>0x000FFFFFFF7FFFFF|- rs1_val == -34359738369<br>                                                                                                                                           |[0x80000e6c]:srl a2, a0, a1<br> [0x80000e70]:sd a2, 888(sp)<br>      |
| 130|[0x80003418]<br>0x7FFFFFF7FFFFFFFF|- rs1_val == -68719476737<br>                                                                                                                                           |[0x80000e84]:srl a2, a0, a1<br> [0x80000e88]:sd a2, 896(sp)<br>      |
| 131|[0x80003420]<br>0x001FFFFFFBFFFFFF|- rs1_val == -137438953473<br>                                                                                                                                          |[0x80000e9c]:srl a2, a0, a1<br> [0x80000ea0]:sd a2, 904(sp)<br>      |
| 132|[0x80003428]<br>0x00000000FFFFFFBF|- rs1_val == -274877906945<br>                                                                                                                                          |[0x80000eb4]:srl a2, a0, a1<br> [0x80000eb8]:sd a2, 912(sp)<br>      |
| 133|[0x80003430]<br>0x000007FFFFFBFFFF|- rs1_val == -549755813889<br>                                                                                                                                          |[0x80000ecc]:srl a2, a0, a1<br> [0x80000ed0]:sd a2, 920(sp)<br>      |
| 134|[0x80003438]<br>0x000000000000001F|- rs1_val == -1099511627777<br>                                                                                                                                         |[0x80000ee4]:srl a2, a0, a1<br> [0x80000ee8]:sd a2, 928(sp)<br>      |
| 135|[0x80003440]<br>0x000000000001FFFF|- rs1_val == -2199023255553<br>                                                                                                                                         |[0x80000efc]:srl a2, a0, a1<br> [0x80000f00]:sd a2, 936(sp)<br>      |
| 136|[0x80003448]<br>0x000FFFFFBFFFFFFF|- rs1_val == -4398046511105<br>                                                                                                                                         |[0x80000f14]:srl a2, a0, a1<br> [0x80000f18]:sd a2, 944(sp)<br>      |
| 137|[0x80003450]<br>0x0007FFFFBFFFFFFF|- rs1_val == -8796093022209<br>                                                                                                                                         |[0x80000f2c]:srl a2, a0, a1<br> [0x80000f30]:sd a2, 952(sp)<br>      |
| 138|[0x80003458]<br>0x01FFFFDFFFFFFFFF|- rs1_val == -17592186044417<br>                                                                                                                                        |[0x80000f44]:srl a2, a0, a1<br> [0x80000f48]:sd a2, 960(sp)<br>      |
| 139|[0x80003460]<br>0x0000000000000001|- rs1_val == -35184372088833<br>                                                                                                                                        |[0x80000f5c]:srl a2, a0, a1<br> [0x80000f60]:sd a2, 968(sp)<br>      |
| 140|[0x80003468]<br>0x007FFFDFFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                                                        |[0x80000f74]:srl a2, a0, a1<br> [0x80000f78]:sd a2, 976(sp)<br>      |
| 141|[0x80003470]<br>0x07FFFBFFFFFFFFFF|- rs1_val == -140737488355329<br>                                                                                                                                       |[0x80000f8c]:srl a2, a0, a1<br> [0x80000f90]:sd a2, 984(sp)<br>      |
| 142|[0x80003478]<br>0x00FFFEFFFFFFFFFF|- rs1_val == -281474976710657<br>                                                                                                                                       |[0x80000fa4]:srl a2, a0, a1<br> [0x80000fa8]:sd a2, 992(sp)<br>      |
| 143|[0x80003480]<br>0x001FFFBFFFFFFFFF|- rs1_val == -562949953421313<br>                                                                                                                                       |[0x80000fbc]:srl a2, a0, a1<br> [0x80000fc0]:sd a2, 1000(sp)<br>     |
| 144|[0x80003488]<br>0x0FFFBFFFFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                                                      |[0x80000fd4]:srl a2, a0, a1<br> [0x80000fd8]:sd a2, 1008(sp)<br>     |
| 145|[0x80003490]<br>0x000000000000001F|- rs1_val == -2251799813685249<br>                                                                                                                                      |[0x80000fec]:srl a2, a0, a1<br> [0x80000ff0]:sd a2, 1016(sp)<br>     |
| 146|[0x80003498]<br>0x07FF7FFFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                                                      |[0x80001004]:srl a2, a0, a1<br> [0x80001008]:sd a2, 1024(sp)<br>     |
| 147|[0x800034a0]<br>0x000007FEFFFFFFFF|- rs1_val == -9007199254740993<br>                                                                                                                                      |[0x8000101c]:srl a2, a0, a1<br> [0x80001020]:sd a2, 1032(sp)<br>     |
| 148|[0x800034a8]<br>0x000000000000001F|- rs1_val == -18014398509481985<br>                                                                                                                                     |[0x80001034]:srl a2, a0, a1<br> [0x80001038]:sd a2, 1040(sp)<br>     |
| 149|[0x800034b0]<br>0x0000000000000001|- rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br>                                                                                                     |[0x80001048]:srl a2, a0, a1<br> [0x8000104c]:sd a2, 1048(sp)<br>     |
| 150|[0x800034b8]<br>0xFFFFFFFBFFFFFFFF|- rs1_val < 0 and rs2_val == 0<br>                                                                                                                                      |[0x80001060]:srl a2, a0, a1<br> [0x80001064]:sd a2, 1056(sp)<br>     |
| 151|[0x800034c0]<br>0x0000000000000000|- rs1_val == 16<br>                                                                                                                                                     |[0x80001070]:srl a2, a0, a1<br> [0x80001074]:sd a2, 1064(sp)<br>     |
