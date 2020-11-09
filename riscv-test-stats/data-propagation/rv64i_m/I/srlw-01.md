
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
| SIG_REGION                | [('0x80003208', '0x80003658', '138 dwords')]      |
| COV_LABELS                | srlw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srlw-01.S/srlw-01.S    |
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
      [0x80000e3c]:srlw a2, a0, a1
      [0x80000e40]:sd a2, 952(sp)
 -- Signature Address: 0x80003640 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : srlw
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 1152921504606846976
      - rs2_val == 16




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e5c]:srlw a2, a0, a1
      [0x80000e60]:sd a2, 968(sp)
 -- Signature Address: 0x80003650 Data: 0x0000000000000002
 -- Redundant Coverpoints hit by the op
      - opcode : srlw
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 8192






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

|s.no|            signature             |                                                                                  coverpoints                                                                                  |                                code                                |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003208]<br>0x000000000007FFFF|- opcode : srlw<br> - rs1 : x18<br> - rs2 : x5<br> - rd : x5<br> - rs2 == rd != rs1<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == -4294967297<br>      |[0x800003a8]:srlw t0, s2, t0<br> [0x800003ac]:sd t0, 0(a6)<br>      |
|   2|[0x80003210]<br>0x0000000000000000|- rs1 : x2<br> - rs2 : x14<br> - rd : x2<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == 1125899906842624<br> - rs2_val == 29<br> |[0x800003bc]:srlw sp, sp, a4<br> [0x800003c0]:sd sp, 8(a6)<br>      |
|   3|[0x80003218]<br>0x0000000000000000|- rs1 : x25<br> - rs2 : x25<br> - rd : x25<br> - rs1 == rs2 == rd<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br>                                                   |[0x800003cc]:srlw s9, s9, s9<br> [0x800003d0]:sd s9, 16(a6)<br>     |
|   4|[0x80003220]<br>0x0000000000000000|- rs1 : x26<br> - rs2 : x26<br> - rd : x4<br> - rs1 == rs2 != rd<br>                                                                                                           |[0x800003e0]:srlw tp, s10, s10<br> [0x800003e4]:sd tp, 24(a6)<br>   |
|   5|[0x80003228]<br>0x0000000000000000|- rs1 : x24<br> - rs2 : x6<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br>                        |[0x800003f0]:srlw t5, s8, t1<br> [0x800003f4]:sd t5, 32(a6)<br>     |
|   6|[0x80003230]<br>0x0000000000000000|- rs1 : x17<br> - rs2 : x12<br> - rd : x8<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -9223372036854775808<br> - rs2_val == 23<br>    |[0x80000404]:srlw fp, a7, a2<br> [0x80000408]:sd fp, 40(a6)<br>     |
|   7|[0x80003238]<br>0x0000000000000000|- rs1 : x28<br> - rs2 : x7<br> - rd : x14<br> - rs2_val == 1<br>                                                                                                               |[0x80000414]:srlw a4, t3, t2<br> [0x80000418]:sd a4, 48(a6)<br>     |
|   8|[0x80003240]<br>0x000000007FFFFFFF|- rs1 : x23<br> - rs2 : x8<br> - rd : x13<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 9223372036854775807<br>                        |[0x8000042c]:srlw a3, s7, fp<br> [0x80000430]:sd a3, 56(a6)<br>     |
|   9|[0x80003248]<br>0x0000000000000000|- rs1 : x1<br> - rs2 : x24<br> - rd : x7<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br>                                                         |[0x8000043c]:srlw t2, ra, s8<br> [0x80000440]:sd t2, 64(a6)<br>     |
|  10|[0x80003250]<br>0x000000003FFFFFF7|- rs1 : x21<br> - rs2 : x3<br> - rd : x11<br> - rs1_val == -33<br> - rs2_val == 2<br>                                                                                          |[0x8000044c]:srlw a1, s5, gp<br> [0x80000450]:sd a1, 72(a6)<br>     |
|  11|[0x80003258]<br>0x000000000FFFFFFF|- rs1 : x10<br> - rs2 : x17<br> - rd : x3<br> - rs1_val == -137438953473<br> - rs2_val == 4<br>                                                                                |[0x80000464]:srlw gp, a0, a7<br> [0x80000468]:sd gp, 80(a6)<br>     |
|  12|[0x80003260]<br>0x0000000000000000|- rs1 : x22<br> - rs2 : x4<br> - rd : x24<br> - rs1_val == 137438953472<br> - rs2_val == 8<br>                                                                                 |[0x80000478]:srlw s8, s6, tp<br> [0x8000047c]:sd s8, 88(a6)<br>     |
|  13|[0x80003268]<br>0x0000000000000000|- rs1 : x7<br> - rs2 : x9<br> - rd : x0<br> - rs1_val == 1152921504606846976<br> - rs2_val == 16<br>                                                                           |[0x8000048c]:srlw zero, t2, s1<br> [0x80000490]:sd zero, 96(a6)<br> |
|  14|[0x80003270]<br>0x0000000000000001|- rs1 : x15<br> - rs2 : x30<br> - rd : x10<br> - rs1_val == 1073741824<br> - rs2_val == 30<br>                                                                                 |[0x8000049c]:srlw a0, a5, t5<br> [0x800004a0]:sd a0, 104(a6)<br>    |
|  15|[0x80003278]<br>0x000000000000001F|- rs1 : x27<br> - rs2 : x29<br> - rd : x28<br> - rs1_val == -281474976710657<br> - rs2_val == 27<br>                                                                           |[0x800004b4]:srlw t3, s11, t4<br> [0x800004b8]:sd t3, 112(a6)<br>   |
|  16|[0x80003280]<br>0x000000000001FFFF|- rs1 : x8<br> - rs2 : x2<br> - rd : x20<br> - rs1_val == -2<br> - rs2_val == 15<br>                                                                                           |[0x800004c4]:srlw s4, fp, sp<br> [0x800004c8]:sd s4, 120(a6)<br>    |
|  17|[0x80003288]<br>0x0000000000000020|- rs1 : x20<br> - rs2 : x15<br> - rd : x26<br> - rs1_val == 67108864<br> - rs2_val == 21<br>                                                                                   |[0x800004dc]:srlw s10, s4, a5<br> [0x800004e0]:sd s10, 0(sp)<br>    |
|  18|[0x80003290]<br>0x0000000000000000|- rs1 : x13<br> - rs2 : x10<br> - rd : x1<br> - rs2_val == 10<br>                                                                                                              |[0x800004f0]:srlw ra, a3, a0<br> [0x800004f4]:sd ra, 8(sp)<br>      |
|  19|[0x80003298]<br>0x0000000000000000|- rs1 : x12<br> - rs2 : x23<br> - rd : x18<br> - rs1_val == 2<br>                                                                                                              |[0x80000500]:srlw s2, a2, s7<br> [0x80000504]:sd s2, 16(sp)<br>     |
|  20|[0x800032a0]<br>0x0000000000000000|- rs1 : x6<br> - rs2 : x28<br> - rd : x29<br> - rs1_val == 4<br>                                                                                                               |[0x80000510]:srlw t4, t1, t3<br> [0x80000514]:sd t4, 24(sp)<br>     |
|  21|[0x800032a8]<br>0x0000000000000000|- rs1 : x30<br> - rs2 : x1<br> - rd : x15<br> - rs1_val == 8<br>                                                                                                               |[0x80000520]:srlw a5, t5, ra<br> [0x80000524]:sd a5, 32(sp)<br>     |
|  22|[0x800032b0]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : x16<br> - rd : x17<br> - rs1_val == 16<br>                                                                                                              |[0x80000530]:srlw a7, s1, a6<br> [0x80000534]:sd a7, 40(sp)<br>     |
|  23|[0x800032b8]<br>0x0000000000000000|- rs1 : x3<br> - rs2 : x21<br> - rd : x9<br> - rs1_val == 32<br>                                                                                                               |[0x80000540]:srlw s1, gp, s5<br> [0x80000544]:sd s1, 48(sp)<br>     |
|  24|[0x800032c0]<br>0x0000000000000000|- rs1 : x29<br> - rs2 : x18<br> - rd : x6<br> - rs1_val == 64<br>                                                                                                              |[0x80000550]:srlw t1, t4, s2<br> [0x80000554]:sd t1, 56(sp)<br>     |
|  25|[0x800032c8]<br>0x0000000000000000|- rs1 : x5<br> - rs2 : x11<br> - rd : x12<br> - rs1_val == 128<br>                                                                                                             |[0x80000560]:srlw a2, t0, a1<br> [0x80000564]:sd a2, 64(sp)<br>     |
|  26|[0x800032d0]<br>0x0000000000000000|- rs1 : x4<br> - rs2 : x22<br> - rd : x23<br> - rs1_val == 256<br>                                                                                                             |[0x80000570]:srlw s7, tp, s6<br> [0x80000574]:sd s7, 72(sp)<br>     |
|  27|[0x800032d8]<br>0x0000000000000040|- rs1 : x14<br> - rs2 : x31<br> - rd : x16<br> - rs1_val == 512<br>                                                                                                            |[0x80000580]:srlw a6, a4, t6<br> [0x80000584]:sd a6, 80(sp)<br>     |
|  28|[0x800032e0]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x20<br> - rd : x27<br>                                                                                                                                  |[0x80000590]:srlw s11, zero, s4<br> [0x80000594]:sd s11, 88(sp)<br> |
|  29|[0x800032e8]<br>0x0000000000000800|- rs1 : x31<br> - rs2 : x27<br> - rd : x22<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val == 2048<br>                                                                        |[0x800005a4]:srlw s6, t6, s11<br> [0x800005a8]:sd s6, 96(sp)<br>    |
|  30|[0x800032f0]<br>0x0000000000000008|- rs1 : x11<br> - rs2 : x13<br> - rd : x19<br> - rs1_val == 4096<br>                                                                                                           |[0x800005b4]:srlw s3, a1, a3<br> [0x800005b8]:sd s3, 104(sp)<br>    |
|  31|[0x800032f8]<br>0x0000000000002000|- rs1 : x16<br> - rs2 : x0<br> - rd : x21<br> - rs1_val == 8192<br>                                                                                                            |[0x800005c4]:srlw s5, a6, zero<br> [0x800005c8]:sd s5, 112(sp)<br>  |
|  32|[0x80003300]<br>0x0000000000004000|- rs1 : x19<br> - rs1_val == 16384<br>                                                                                                                                         |[0x800005d4]:srlw t1, s3, s6<br> [0x800005d8]:sd t1, 120(sp)<br>    |
|  33|[0x80003308]<br>0x0000000000000020|- rs2 : x19<br> - rs1_val == 32768<br>                                                                                                                                         |[0x800005e4]:srlw tp, s7, s3<br> [0x800005e8]:sd tp, 128(sp)<br>    |
|  34|[0x80003310]<br>0x0000000000000002|- rd : x31<br> - rs1_val == 65536<br>                                                                                                                                          |[0x800005f4]:srlw t6, s6, tp<br> [0x800005f8]:sd t6, 136(sp)<br>    |
|  35|[0x80003318]<br>0x0000000000008000|- rs1_val == 131072<br>                                                                                                                                                        |[0x80000604]:srlw a2, a0, a1<br> [0x80000608]:sd a2, 144(sp)<br>    |
|  36|[0x80003320]<br>0x0000000000000080|- rs1_val == 262144<br>                                                                                                                                                        |[0x80000614]:srlw a2, a0, a1<br> [0x80000618]:sd a2, 152(sp)<br>    |
|  37|[0x80003328]<br>0x0000000000020000|- rs1_val == 524288<br>                                                                                                                                                        |[0x80000624]:srlw a2, a0, a1<br> [0x80000628]:sd a2, 160(sp)<br>    |
|  38|[0x80003330]<br>0x0000000000000000|- rs1_val == 1048576<br>                                                                                                                                                       |[0x80000634]:srlw a2, a0, a1<br> [0x80000638]:sd a2, 168(sp)<br>    |
|  39|[0x80003338]<br>0x0000000000000010|- rs1_val == 2097152<br>                                                                                                                                                       |[0x80000644]:srlw a2, a0, a1<br> [0x80000648]:sd a2, 176(sp)<br>    |
|  40|[0x80003340]<br>0x0000000000080000|- rs1_val == 4194304<br>                                                                                                                                                       |[0x80000654]:srlw a2, a0, a1<br> [0x80000658]:sd a2, 184(sp)<br>    |
|  41|[0x80003348]<br>0x0000000000000080|- rs1_val == 8388608<br>                                                                                                                                                       |[0x80000664]:srlw a2, a0, a1<br> [0x80000668]:sd a2, 192(sp)<br>    |
|  42|[0x80003350]<br>0x0000000000008000|- rs1_val == 16777216<br>                                                                                                                                                      |[0x80000674]:srlw a2, a0, a1<br> [0x80000678]:sd a2, 200(sp)<br>    |
|  43|[0x80003358]<br>0x0000000000008000|- rs1_val == 33554432<br>                                                                                                                                                      |[0x80000684]:srlw a2, a0, a1<br> [0x80000688]:sd a2, 208(sp)<br>    |
|  44|[0x80003360]<br>0x0000000000001000|- rs1_val == 134217728<br>                                                                                                                                                     |[0x80000694]:srlw a2, a0, a1<br> [0x80000698]:sd a2, 216(sp)<br>    |
|  45|[0x80003368]<br>0x0000000010000000|- rs1_val == 268435456<br>                                                                                                                                                     |[0x800006a4]:srlw a2, a0, a1<br> [0x800006a8]:sd a2, 224(sp)<br>    |
|  46|[0x80003370]<br>0x0000000000008000|- rs1_val == 536870912<br>                                                                                                                                                     |[0x800006b4]:srlw a2, a0, a1<br> [0x800006b8]:sd a2, 232(sp)<br>    |
|  47|[0x80003378]<br>0x0000000000008000|- rs1_val == 2147483648<br>                                                                                                                                                    |[0x800006c8]:srlw a2, a0, a1<br> [0x800006cc]:sd a2, 240(sp)<br>    |
|  48|[0x80003380]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                                                                                    |[0x800006dc]:srlw a2, a0, a1<br> [0x800006e0]:sd a2, 248(sp)<br>    |
|  49|[0x80003388]<br>0x0000000000000000|- rs1_val == 8589934592<br>                                                                                                                                                    |[0x800006f0]:srlw a2, a0, a1<br> [0x800006f4]:sd a2, 256(sp)<br>    |
|  50|[0x80003390]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                                                                                   |[0x80000704]:srlw a2, a0, a1<br> [0x80000708]:sd a2, 264(sp)<br>    |
|  51|[0x80003398]<br>0x0000000000000000|- rs1_val == 34359738368<br>                                                                                                                                                   |[0x80000718]:srlw a2, a0, a1<br> [0x8000071c]:sd a2, 272(sp)<br>    |
|  52|[0x800033a0]<br>0x0000000000000000|- rs1_val == 68719476736<br>                                                                                                                                                   |[0x8000072c]:srlw a2, a0, a1<br> [0x80000730]:sd a2, 280(sp)<br>    |
|  53|[0x800033a8]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                                                                                  |[0x80000740]:srlw a2, a0, a1<br> [0x80000744]:sd a2, 288(sp)<br>    |
|  54|[0x800033b0]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                                                                                  |[0x80000754]:srlw a2, a0, a1<br> [0x80000758]:sd a2, 296(sp)<br>    |
|  55|[0x800033b8]<br>0x0000000000000000|- rs1_val == 1099511627776<br>                                                                                                                                                 |[0x80000768]:srlw a2, a0, a1<br> [0x8000076c]:sd a2, 304(sp)<br>    |
|  56|[0x800033c0]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                                                                 |[0x8000077c]:srlw a2, a0, a1<br> [0x80000780]:sd a2, 312(sp)<br>    |
|  57|[0x800033c8]<br>0x0000000000000000|- rs1_val == 4398046511104<br>                                                                                                                                                 |[0x80000790]:srlw a2, a0, a1<br> [0x80000794]:sd a2, 320(sp)<br>    |
|  58|[0x800033d0]<br>0x0000000000000000|- rs1_val == 8796093022208<br>                                                                                                                                                 |[0x800007a4]:srlw a2, a0, a1<br> [0x800007a8]:sd a2, 328(sp)<br>    |
|  59|[0x800033d8]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                                                                |[0x800007b8]:srlw a2, a0, a1<br> [0x800007bc]:sd a2, 336(sp)<br>    |
|  60|[0x800033e0]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                                                                |[0x800007cc]:srlw a2, a0, a1<br> [0x800007d0]:sd a2, 344(sp)<br>    |
|  61|[0x800033e8]<br>0x0000000000000000|- rs1_val == 70368744177664<br>                                                                                                                                                |[0x800007e0]:srlw a2, a0, a1<br> [0x800007e4]:sd a2, 352(sp)<br>    |
|  62|[0x800033f0]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                                                               |[0x800007f4]:srlw a2, a0, a1<br> [0x800007f8]:sd a2, 360(sp)<br>    |
|  63|[0x800033f8]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                                                               |[0x80000808]:srlw a2, a0, a1<br> [0x8000080c]:sd a2, 368(sp)<br>    |
|  64|[0x80003400]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                                                                               |[0x8000081c]:srlw a2, a0, a1<br> [0x80000820]:sd a2, 376(sp)<br>    |
|  65|[0x80003408]<br>0x0000000000000000|- rs1_val == 2251799813685248<br>                                                                                                                                              |[0x80000830]:srlw a2, a0, a1<br> [0x80000834]:sd a2, 384(sp)<br>    |
|  66|[0x80003410]<br>0x0000000000000000|- rs1_val == 4503599627370496<br>                                                                                                                                              |[0x80000844]:srlw a2, a0, a1<br> [0x80000848]:sd a2, 392(sp)<br>    |
|  67|[0x80003418]<br>0x0000000000000000|- rs1_val == 9007199254740992<br>                                                                                                                                              |[0x80000858]:srlw a2, a0, a1<br> [0x8000085c]:sd a2, 400(sp)<br>    |
|  68|[0x80003420]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                                                             |[0x8000086c]:srlw a2, a0, a1<br> [0x80000870]:sd a2, 408(sp)<br>    |
|  69|[0x80003428]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                                                             |[0x80000880]:srlw a2, a0, a1<br> [0x80000884]:sd a2, 416(sp)<br>    |
|  70|[0x80003430]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                                                                             |[0x80000894]:srlw a2, a0, a1<br> [0x80000898]:sd a2, 424(sp)<br>    |
|  71|[0x80003438]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                                                            |[0x800008a8]:srlw a2, a0, a1<br> [0x800008ac]:sd a2, 432(sp)<br>    |
|  72|[0x80003440]<br>0x00000000000FFFFF|- rs1_val == -8796093022209<br>                                                                                                                                                |[0x800008c0]:srlw a2, a0, a1<br> [0x800008c4]:sd a2, 440(sp)<br>    |
|  73|[0x80003448]<br>0x0000000003FFFFFF|- rs1_val == -17592186044417<br>                                                                                                                                               |[0x800008d8]:srlw a2, a0, a1<br> [0x800008dc]:sd a2, 448(sp)<br>    |
|  74|[0x80003450]<br>0x0000000000003FFF|- rs1_val == -35184372088833<br>                                                                                                                                               |[0x800008f0]:srlw a2, a0, a1<br> [0x800008f4]:sd a2, 456(sp)<br>    |
|  75|[0x80003458]<br>0x000000000003FFFF|- rs1_val == -70368744177665<br>                                                                                                                                               |[0x80000908]:srlw a2, a0, a1<br> [0x8000090c]:sd a2, 464(sp)<br>    |
|  76|[0x80003460]<br>0x00000000000FFFFF|- rs1_val == -140737488355329<br>                                                                                                                                              |[0x80000920]:srlw a2, a0, a1<br> [0x80000924]:sd a2, 472(sp)<br>    |
|  77|[0x80003468]<br>0x00000000001FFFFF|- rs1_val == -562949953421313<br>                                                                                                                                              |[0x80000938]:srlw a2, a0, a1<br> [0x8000093c]:sd a2, 480(sp)<br>    |
|  78|[0x80003470]<br>0x000000007FFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                                                             |[0x80000950]:srlw a2, a0, a1<br> [0x80000954]:sd a2, 488(sp)<br>    |
|  79|[0x80003478]<br>0x0000000001FFFFFF|- rs1_val == -2251799813685249<br>                                                                                                                                             |[0x80000968]:srlw a2, a0, a1<br> [0x8000096c]:sd a2, 496(sp)<br>    |
|  80|[0x80003480]<br>0x00000000000007FF|- rs1_val == -4503599627370497<br>                                                                                                                                             |[0x80000980]:srlw a2, a0, a1<br> [0x80000984]:sd a2, 504(sp)<br>    |
|  81|[0x80003488]<br>0x0000000000FFFFFF|- rs1_val == -9007199254740993<br>                                                                                                                                             |[0x80000998]:srlw a2, a0, a1<br> [0x8000099c]:sd a2, 512(sp)<br>    |
|  82|[0x80003490]<br>0x0000000007FFFFFF|- rs1_val == -18014398509481985<br>                                                                                                                                            |[0x800009b0]:srlw a2, a0, a1<br> [0x800009b4]:sd a2, 520(sp)<br>    |
|  83|[0x80003498]<br>0x000000000003FFFF|- rs1_val == -36028797018963969<br>                                                                                                                                            |[0x800009c8]:srlw a2, a0, a1<br> [0x800009cc]:sd a2, 528(sp)<br>    |
|  84|[0x800034a0]<br>0x0000000000000001|- rs1_val == -72057594037927937<br>                                                                                                                                            |[0x800009e0]:srlw a2, a0, a1<br> [0x800009e4]:sd a2, 536(sp)<br>    |
|  85|[0x800034a8]<br>0x000000007FFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                                                           |[0x800009f8]:srlw a2, a0, a1<br> [0x800009fc]:sd a2, 544(sp)<br>    |
|  86|[0x800034b0]<br>0x0000000001FFFFFF|- rs1_val == -288230376151711745<br>                                                                                                                                           |[0x80000a10]:srlw a2, a0, a1<br> [0x80000a14]:sd a2, 552(sp)<br>    |
|  87|[0x800034b8]<br>0x0000000007FFFFFF|- rs1_val == -576460752303423489<br>                                                                                                                                           |[0x80000a28]:srlw a2, a0, a1<br> [0x80000a2c]:sd a2, 560(sp)<br>    |
|  88|[0x800034c0]<br>0x000000000000FFFF|- rs1_val == -1152921504606846977<br>                                                                                                                                          |[0x80000a40]:srlw a2, a0, a1<br> [0x80000a44]:sd a2, 568(sp)<br>    |
|  89|[0x800034c8]<br>0x000000003FFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                                                          |[0x80000a58]:srlw a2, a0, a1<br> [0x80000a5c]:sd a2, 576(sp)<br>    |
|  90|[0x800034d0]<br>0x000000007FFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                                                          |[0x80000a70]:srlw a2, a0, a1<br> [0x80000a74]:sd a2, 584(sp)<br>    |
|  91|[0x800034d8]<br>0x00000000000AAAAA|- rs1_val == 6148914691236517205<br>                                                                                                                                           |[0x80000a9c]:srlw a2, a0, a1<br> [0x80000aa0]:sd a2, 592(sp)<br>    |
|  92|[0x800034e0]<br>0x000000000AAAAAAA|- rs1_val == -6148914691236517206<br>                                                                                                                                          |[0x80000ac8]:srlw a2, a0, a1<br> [0x80000acc]:sd a2, 600(sp)<br>    |
|  93|[0x800034e8]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                                                            |[0x80000adc]:srlw a2, a0, a1<br> [0x80000ae0]:sd a2, 608(sp)<br>    |
|  94|[0x800034f0]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                                           |[0x80000af0]:srlw a2, a0, a1<br> [0x80000af4]:sd a2, 616(sp)<br>    |
|  95|[0x800034f8]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                                           |[0x80000b04]:srlw a2, a0, a1<br> [0x80000b08]:sd a2, 624(sp)<br>    |
|  96|[0x80003500]<br>0x0000000000001FFF|- rs1_val == -3<br>                                                                                                                                                            |[0x80000b14]:srlw a2, a0, a1<br> [0x80000b18]:sd a2, 632(sp)<br>    |
|  97|[0x80003508]<br>0x000000000FFFFFFF|- rs1_val == -5<br>                                                                                                                                                            |[0x80000b24]:srlw a2, a0, a1<br> [0x80000b28]:sd a2, 640(sp)<br>    |
|  98|[0x80003510]<br>0x000000000000001F|- rs1_val == -9<br>                                                                                                                                                            |[0x80000b34]:srlw a2, a0, a1<br> [0x80000b38]:sd a2, 648(sp)<br>    |
|  99|[0x80003518]<br>0x000000000003FFFF|- rs1_val == -17<br>                                                                                                                                                           |[0x80000b44]:srlw a2, a0, a1<br> [0x80000b48]:sd a2, 656(sp)<br>    |
| 100|[0x80003520]<br>0xFFFFFFFFFFFFFFBF|- rs1_val < 0 and rs2_val == 0<br> - rs1_val == -65<br>                                                                                                                        |[0x80000b54]:srlw a2, a0, a1<br> [0x80000b58]:sd a2, 664(sp)<br>    |
| 101|[0x80003528]<br>0x000000000000FFFF|- rs1_val == -129<br>                                                                                                                                                          |[0x80000b64]:srlw a2, a0, a1<br> [0x80000b68]:sd a2, 672(sp)<br>    |
| 102|[0x80003530]<br>0x0000000001FFFFFD|- rs1_val == -257<br>                                                                                                                                                          |[0x80000b74]:srlw a2, a0, a1<br> [0x80000b78]:sd a2, 680(sp)<br>    |
| 103|[0x80003538]<br>0x000000000000001F|- rs1_val == -513<br>                                                                                                                                                          |[0x80000b84]:srlw a2, a0, a1<br> [0x80000b88]:sd a2, 688(sp)<br>    |
| 104|[0x80003540]<br>0x0000000003FFFFEF|- rs1_val == -1025<br>                                                                                                                                                         |[0x80000b94]:srlw a2, a0, a1<br> [0x80000b98]:sd a2, 696(sp)<br>    |
| 105|[0x80003548]<br>0x00000000001FFFFE|- rs1_val == -2049<br>                                                                                                                                                         |[0x80000ba8]:srlw a2, a0, a1<br> [0x80000bac]:sd a2, 704(sp)<br>    |
| 106|[0x80003550]<br>0x0000000003FFFFBF|- rs1_val == -4097<br>                                                                                                                                                         |[0x80000bbc]:srlw a2, a0, a1<br> [0x80000bc0]:sd a2, 712(sp)<br>    |
| 107|[0x80003558]<br>0x0000000000000007|- rs1_val == -8193<br>                                                                                                                                                         |[0x80000bd0]:srlw a2, a0, a1<br> [0x80000bd4]:sd a2, 720(sp)<br>    |
| 108|[0x80003560]<br>0x000000003FFFEFFF|- rs1_val == -16385<br>                                                                                                                                                        |[0x80000be4]:srlw a2, a0, a1<br> [0x80000be8]:sd a2, 728(sp)<br>    |
| 109|[0x80003568]<br>0x00000000001FFFEF|- rs1_val == -32769<br>                                                                                                                                                        |[0x80000bf8]:srlw a2, a0, a1<br> [0x80000bfc]:sd a2, 736(sp)<br>    |
| 110|[0x80003570]<br>0x000000000000FFFE|- rs1_val == -65537<br>                                                                                                                                                        |[0x80000c0c]:srlw a2, a0, a1<br> [0x80000c10]:sd a2, 744(sp)<br>    |
| 111|[0x80003578]<br>0x0000000000003FFF|- rs1_val == -131073<br>                                                                                                                                                       |[0x80000c20]:srlw a2, a0, a1<br> [0x80000c24]:sd a2, 752(sp)<br>    |
| 112|[0x80003580]<br>0x0000000001FFF7FF|- rs1_val == -262145<br>                                                                                                                                                       |[0x80000c34]:srlw a2, a0, a1<br> [0x80000c38]:sd a2, 760(sp)<br>    |
| 113|[0x80003588]<br>0x000000007FFBFFFF|- rs1_val == -524289<br>                                                                                                                                                       |[0x80000c48]:srlw a2, a0, a1<br> [0x80000c4c]:sd a2, 768(sp)<br>    |
| 114|[0x80003590]<br>0x000000000FFEFFFF|- rs1_val == -1048577<br>                                                                                                                                                      |[0x80000c5c]:srlw a2, a0, a1<br> [0x80000c60]:sd a2, 776(sp)<br>    |
| 115|[0x80003598]<br>0x0000000000003FF7|- rs1_val == -2097153<br>                                                                                                                                                      |[0x80000c70]:srlw a2, a0, a1<br> [0x80000c74]:sd a2, 784(sp)<br>    |
| 116|[0x800035a0]<br>0x0000000000000001|- rs1_val == -4194305<br>                                                                                                                                                      |[0x80000c84]:srlw a2, a0, a1<br> [0x80000c88]:sd a2, 792(sp)<br>    |
| 117|[0x800035a8]<br>0x0000000007FBFFFF|- rs1_val == -8388609<br>                                                                                                                                                      |[0x80000c98]:srlw a2, a0, a1<br> [0x80000c9c]:sd a2, 800(sp)<br>    |
| 118|[0x800035b0]<br>0xFFFFFFFFFEFFFFFF|- rs1_val == -16777217<br>                                                                                                                                                     |[0x80000cac]:srlw a2, a0, a1<br> [0x80000cb0]:sd a2, 808(sp)<br>    |
| 119|[0x800035b8]<br>0x0000000007EFFFFF|- rs1_val == -33554433<br>                                                                                                                                                     |[0x80000cc0]:srlw a2, a0, a1<br> [0x80000cc4]:sd a2, 816(sp)<br>    |
| 120|[0x800035c0]<br>0x0000000000000003|- rs1_val == -67108865<br>                                                                                                                                                     |[0x80000cd4]:srlw a2, a0, a1<br> [0x80000cd8]:sd a2, 824(sp)<br>    |
| 121|[0x800035c8]<br>0x0000000001EFFFFF|- rs1_val == -134217729<br>                                                                                                                                                    |[0x80000ce8]:srlw a2, a0, a1<br> [0x80000cec]:sd a2, 832(sp)<br>    |
| 122|[0x800035d0]<br>0x000000000003BFFF|- rs1_val == -268435457<br>                                                                                                                                                    |[0x80000cfc]:srlw a2, a0, a1<br> [0x80000d00]:sd a2, 840(sp)<br>    |
| 123|[0x800035d8]<br>0xFFFFFFFFDFFFFFFF|- rs1_val == -536870913<br>                                                                                                                                                    |[0x80000d10]:srlw a2, a0, a1<br> [0x80000d14]:sd a2, 848(sp)<br>    |
| 124|[0x800035e0]<br>0x00000000000BFFFF|- rs1_val == -1073741825<br>                                                                                                                                                   |[0x80000d24]:srlw a2, a0, a1<br> [0x80000d28]:sd a2, 856(sp)<br>    |
| 125|[0x800035e8]<br>0x0000000000007FFF|- rs1_val == -2147483649<br>                                                                                                                                                   |[0x80000d3c]:srlw a2, a0, a1<br> [0x80000d40]:sd a2, 864(sp)<br>    |
| 126|[0x800035f0]<br>0x0000000000000007|- rs1_val == -8589934593<br>                                                                                                                                                   |[0x80000d54]:srlw a2, a0, a1<br> [0x80000d58]:sd a2, 872(sp)<br>    |
| 127|[0x800035f8]<br>0x0000000000FFFFFF|- rs1_val == -17179869185<br>                                                                                                                                                  |[0x80000d6c]:srlw a2, a0, a1<br> [0x80000d70]:sd a2, 880(sp)<br>    |
| 128|[0x80003600]<br>0x000000000003FFFF|- rs1_val == -34359738369<br>                                                                                                                                                  |[0x80000d84]:srlw a2, a0, a1<br> [0x80000d88]:sd a2, 888(sp)<br>    |
| 129|[0x80003608]<br>0x0000000000000007|- rs1_val == -68719476737<br>                                                                                                                                                  |[0x80000d9c]:srlw a2, a0, a1<br> [0x80000da0]:sd a2, 896(sp)<br>    |
| 130|[0x80003610]<br>0x000000000FFFFFFF|- rs1_val == -274877906945<br>                                                                                                                                                 |[0x80000db4]:srlw a2, a0, a1<br> [0x80000db8]:sd a2, 904(sp)<br>    |
| 131|[0x80003618]<br>0x0000000000001FFF|- rs1_val == -549755813889<br>                                                                                                                                                 |[0x80000dcc]:srlw a2, a0, a1<br> [0x80000dd0]:sd a2, 912(sp)<br>    |
| 132|[0x80003620]<br>0x000000000007FFFF|- rs1_val == -1099511627777<br>                                                                                                                                                |[0x80000de4]:srlw a2, a0, a1<br> [0x80000de8]:sd a2, 920(sp)<br>    |
| 133|[0x80003628]<br>0x00000000003FFFFF|- rs1_val == -2199023255553<br>                                                                                                                                                |[0x80000dfc]:srlw a2, a0, a1<br> [0x80000e00]:sd a2, 928(sp)<br>    |
| 134|[0x80003630]<br>0x0000000001FFFFFF|- rs1_val == -4398046511105<br>                                                                                                                                                |[0x80000e14]:srlw a2, a0, a1<br> [0x80000e18]:sd a2, 936(sp)<br>    |
| 135|[0x80003638]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                                                            |[0x80000e28]:srlw a2, a0, a1<br> [0x80000e2c]:sd a2, 944(sp)<br>    |
| 136|[0x80003648]<br>0x0000000000000000|- rs1_val == 1024<br>                                                                                                                                                          |[0x80000e4c]:srlw a2, a0, a1<br> [0x80000e50]:sd a2, 960(sp)<br>    |
