
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
| COV_LABELS                | sraw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sraw-01.S/sraw-01.S    |
| Total Number of coverpoints| 253     |
| Total Coverpoints Hit     | 253      |
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
      [0x80000e54]:sraw a2, a0, a1
      [0x80000e58]:sd a2, 944(t0)
 -- Signature Address: 0x80003648 Data: 0xFFFFFFFFFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : sraw
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen
      - rs1_val == 9223372036854775807
      - rs2_val == 10




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e74]:sraw a2, a0, a1
      [0x80000e78]:sd a2, 960(t0)
 -- Signature Address: 0x80003658 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : sraw
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 512






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

|s.no|            signature             |                                                                                                 coverpoints                                                                                                 |                                code                                |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003208]<br>0x0000000000000000|- opcode : sraw<br> - rs1 : x19<br> - rs2 : x19<br> - rd : x6<br> - rs1 == rs2 != rd<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br>    |[0x800003a8]:sraw t1, s3, s3<br> [0x800003ac]:sd t1, 0(sp)<br>      |
|   2|[0x80003210]<br>0x0000000000000080|- rs1 : x30<br> - rs2 : x14<br> - rd : x28<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == 1024<br>                                                                                           |[0x800003b8]:sraw t3, t5, a4<br> [0x800003bc]:sd t3, 8(sp)<br>      |
|   3|[0x80003218]<br>0x0000000000000000|- rs1 : x21<br> - rs2 : x21<br> - rd : x21<br> - rs1 == rs2 == rd<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br>                                                                                 |[0x800003cc]:sraw s5, s5, s5<br> [0x800003d0]:sd s5, 16(sp)<br>     |
|   4|[0x80003220]<br>0x0000000000000001|- rs1 : x18<br> - rs2 : x27<br> - rd : x18<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br>                           |[0x800003dc]:sraw s2, s2, s11<br> [0x800003e0]:sd s2, 24(sp)<br>    |
|   5|[0x80003228]<br>0x0000000000000000|- rs1 : x20<br> - rs2 : x5<br> - rd : x5<br> - rs2 == rd != rs1<br>                                                                                                                                          |[0x800003ec]:sraw t0, s4, t0<br> [0x800003f0]:sd t0, 32(sp)<br>     |
|   6|[0x80003230]<br>0x0000000000000000|- rs1 : x22<br> - rs2 : x3<br> - rd : x27<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -9223372036854775808<br> |[0x80000400]:sraw s11, s6, gp<br> [0x80000404]:sd s11, 40(sp)<br>   |
|   7|[0x80003238]<br>0x0000000000000000|- rs1 : x23<br> - rs2 : x30<br> - rd : x16<br> - rs2_val == 1<br>                                                                                                                                            |[0x80000410]:sraw a6, s7, t5<br> [0x80000414]:sd a6, 48(sp)<br>     |
|   8|[0x80003240]<br>0x0000000000000000|- rs1 : x15<br> - rs2 : x20<br> - rd : x0<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 9223372036854775807<br> - rs2_val == 10<br>                                  |[0x80000428]:sraw zero, a5, s4<br> [0x8000042c]:sd zero, 56(sp)<br> |
|   9|[0x80003248]<br>0x0000000000800000|- rs1 : x7<br> - rs2 : x23<br> - rd : x30<br> - rs1_val == 33554432<br> - rs2_val == 2<br>                                                                                                                   |[0x80000438]:sraw t5, t2, s7<br> [0x8000043c]:sd t5, 64(sp)<br>     |
|  10|[0x80003250]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x5<br> - rs2 : x9<br> - rd : x29<br> - rs2_val == 4<br>                                                                                                                                              |[0x80000448]:sraw t4, t0, s1<br> [0x8000044c]:sd t4, 72(sp)<br>     |
|  11|[0x80003258]<br>0x0000000000000000|- rs1 : x1<br> - rs2 : x26<br> - rd : x9<br> - rs1_val == 137438953472<br> - rs2_val == 8<br>                                                                                                                |[0x8000045c]:sraw s1, ra, s10<br> [0x80000460]:sd s1, 80(sp)<br>    |
|  12|[0x80003260]<br>0x0000000000000080|- rs1 : x28<br> - rs2 : x13<br> - rd : x11<br> - rs1_val == 8388608<br> - rs2_val == 16<br>                                                                                                                  |[0x8000046c]:sraw a1, t3, a3<br> [0x80000470]:sd a1, 88(sp)<br>     |
|  13|[0x80003268]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x27<br> - rs2 : x8<br> - rd : x10<br> - rs1_val == -72057594037927937<br> - rs2_val == 30<br>                                                                                                        |[0x80000484]:sraw a0, s11, fp<br> [0x80000488]:sd a0, 96(sp)<br>    |
|  14|[0x80003270]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x16<br> - rs2 : x7<br> - rd : x13<br> - rs2_val == 29<br>                                                                                                                                            |[0x80000494]:sraw a3, a6, t2<br> [0x80000498]:sd a3, 104(sp)<br>    |
|  15|[0x80003278]<br>0x0000000000000000|- rs1 : x25<br> - rs2 : x6<br> - rd : x15<br> - rs1_val == 8796093022208<br> - rs2_val == 27<br>                                                                                                             |[0x800004a8]:sraw a5, s9, t1<br> [0x800004ac]:sd a5, 112(sp)<br>    |
|  16|[0x80003280]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x26<br> - rs2 : x22<br> - rd : x12<br> - rs1_val == -262145<br> - rs2_val == 23<br>                                                                                                                  |[0x800004bc]:sraw a2, s10, s6<br> [0x800004c0]:sd a2, 120(sp)<br>   |
|  17|[0x80003288]<br>0x0000000000000000|- rs1 : x11<br> - rs2 : x24<br> - rd : x25<br> - rs1_val == 8589934592<br> - rs2_val == 15<br>                                                                                                               |[0x800004d0]:sraw s9, a1, s8<br> [0x800004d4]:sd s9, 128(sp)<br>    |
|  18|[0x80003290]<br>0x0000000000000000|- rs1 : x17<br> - rs2 : x12<br> - rd : x31<br> - rs1_val == 68719476736<br> - rs2_val == 21<br>                                                                                                              |[0x800004e4]:sraw t6, a7, a2<br> [0x800004e8]:sd t6, 136(sp)<br>    |
|  19|[0x80003298]<br>0x0000000000000000|- rs1 : x2<br> - rs2 : x4<br> - rd : x26<br> - rs1_val == 2<br>                                                                                                                                              |[0x800004fc]:sraw s10, sp, tp<br> [0x80000500]:sd s10, 0(t0)<br>    |
|  20|[0x800032a0]<br>0x0000000000000000|- rs1 : x3<br> - rs2 : x16<br> - rd : x14<br> - rs1_val == 4<br>                                                                                                                                             |[0x8000050c]:sraw a4, gp, a6<br> [0x80000510]:sd a4, 8(t0)<br>      |
|  21|[0x800032a8]<br>0x0000000000000000|- rs1 : x29<br> - rs2 : x31<br> - rd : x23<br> - rs1_val == 8<br>                                                                                                                                            |[0x8000051c]:sraw s7, t4, t6<br> [0x80000520]:sd s7, 16(t0)<br>     |
|  22|[0x800032b0]<br>0x0000000000000004|- rs1 : x10<br> - rs2 : x25<br> - rd : x22<br> - rs1_val == 16<br>                                                                                                                                           |[0x8000052c]:sraw s6, a0, s9<br> [0x80000530]:sd s6, 24(t0)<br>     |
|  23|[0x800032b8]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x29<br> - rd : x4<br>                                                                                                                                                                 |[0x8000053c]:sraw tp, zero, t4<br> [0x80000540]:sd tp, 32(t0)<br>   |
|  24|[0x800032c0]<br>0x0000000000000000|- rs1 : x31<br> - rs2 : x15<br> - rd : x20<br> - rs1_val == 64<br>                                                                                                                                           |[0x8000054c]:sraw s4, t6, a5<br> [0x80000550]:sd s4, 40(t0)<br>     |
|  25|[0x800032c8]<br>0x0000000000000040|- rs1 : x24<br> - rs2 : x2<br> - rd : x19<br> - rs1_val == 128<br>                                                                                                                                           |[0x8000055c]:sraw s3, s8, sp<br> [0x80000560]:sd s3, 48(t0)<br>     |
|  26|[0x800032d0]<br>0x0000000000000000|- rs1 : x14<br> - rs2 : x18<br> - rd : x1<br> - rs1_val == 256<br>                                                                                                                                           |[0x8000056c]:sraw ra, a4, s2<br> [0x80000570]:sd ra, 56(t0)<br>     |
|  27|[0x800032d8]<br>0x0000000000000200|- rs1 : x8<br> - rs2 : x0<br> - rd : x17<br> - rs1_val == 512<br>                                                                                                                                            |[0x8000057c]:sraw a7, fp, zero<br> [0x80000580]:sd a7, 64(t0)<br>   |
|  28|[0x800032e0]<br>0x0000000000000000|- rs1 : x13<br> - rs2 : x28<br> - rd : x24<br> - rs1_val == 2048<br>                                                                                                                                         |[0x80000590]:sraw s8, a3, t3<br> [0x80000594]:sd s8, 72(t0)<br>     |
|  29|[0x800032e8]<br>0x0000000000000100|- rs1 : x6<br> - rs2 : x1<br> - rd : x7<br> - rs1_val == 4096<br>                                                                                                                                            |[0x800005a0]:sraw t2, t1, ra<br> [0x800005a4]:sd t2, 80(t0)<br>     |
|  30|[0x800032f0]<br>0x0000000000000020|- rs1 : x12<br> - rs2 : x10<br> - rd : x2<br> - rs1_val == 8192<br>                                                                                                                                          |[0x800005b0]:sraw sp, a2, a0<br> [0x800005b4]:sd sp, 88(t0)<br>     |
|  31|[0x800032f8]<br>0x0000000000000010|- rs1 : x4<br> - rs2 : x11<br> - rd : x8<br> - rs1_val == 16384<br>                                                                                                                                          |[0x800005c0]:sraw fp, tp, a1<br> [0x800005c4]:sd fp, 96(t0)<br>     |
|  32|[0x80003300]<br>0x0000000000000004|- rs1 : x9<br> - rs2 : x17<br> - rd : x3<br> - rs1_val == 32768<br>                                                                                                                                          |[0x800005d0]:sraw gp, s1, a7<br> [0x800005d4]:sd gp, 104(t0)<br>    |
|  33|[0x80003308]<br>0x0000000000000000|- rs1_val == 65536<br>                                                                                                                                                                                       |[0x800005e0]:sraw a2, a0, a1<br> [0x800005e4]:sd a2, 112(t0)<br>    |
|  34|[0x80003310]<br>0x0000000000000000|- rs1_val == 131072<br>                                                                                                                                                                                      |[0x800005f0]:sraw a2, a0, a1<br> [0x800005f4]:sd a2, 120(t0)<br>    |
|  35|[0x80003318]<br>0x0000000000001000|- rs1_val == 262144<br>                                                                                                                                                                                      |[0x80000600]:sraw a2, a0, a1<br> [0x80000604]:sd a2, 128(t0)<br>    |
|  36|[0x80003320]<br>0x0000000000000001|- rs1_val == 524288<br>                                                                                                                                                                                      |[0x80000610]:sraw a2, a0, a1<br> [0x80000614]:sd a2, 136(t0)<br>    |
|  37|[0x80003328]<br>0x0000000000000040|- rs1_val == 1048576<br>                                                                                                                                                                                     |[0x80000620]:sraw a2, a0, a1<br> [0x80000624]:sd a2, 144(t0)<br>    |
|  38|[0x80003330]<br>0x0000000000000000|- rs1_val == 2097152<br>                                                                                                                                                                                     |[0x80000630]:sraw a2, a0, a1<br> [0x80000634]:sd a2, 152(t0)<br>    |
|  39|[0x80003338]<br>0x0000000000000080|- rs1_val == 4194304<br>                                                                                                                                                                                     |[0x80000640]:sraw a2, a0, a1<br> [0x80000644]:sd a2, 160(t0)<br>    |
|  40|[0x80003340]<br>0x0000000000000100|- rs1_val == 16777216<br>                                                                                                                                                                                    |[0x80000650]:sraw a2, a0, a1<br> [0x80000654]:sd a2, 168(t0)<br>    |
|  41|[0x80003348]<br>0x0000000001000000|- rs1_val == 67108864<br>                                                                                                                                                                                    |[0x80000660]:sraw a2, a0, a1<br> [0x80000664]:sd a2, 176(t0)<br>    |
|  42|[0x80003350]<br>0x0000000000010000|- rs1_val == 134217728<br>                                                                                                                                                                                   |[0x80000670]:sraw a2, a0, a1<br> [0x80000674]:sd a2, 184(t0)<br>    |
|  43|[0x80003358]<br>0x0000000002000000|- rs1_val == 268435456<br>                                                                                                                                                                                   |[0x80000680]:sraw a2, a0, a1<br> [0x80000684]:sd a2, 192(t0)<br>    |
|  44|[0x80003360]<br>0x0000000000020000|- rs1_val == 536870912<br>                                                                                                                                                                                   |[0x80000690]:sraw a2, a0, a1<br> [0x80000694]:sd a2, 200(t0)<br>    |
|  45|[0x80003368]<br>0x0000000000001000|- rs1_val == 1073741824<br>                                                                                                                                                                                  |[0x800006a0]:sraw a2, a0, a1<br> [0x800006a4]:sd a2, 208(t0)<br>    |
|  46|[0x80003370]<br>0xFFFFFFFFFFFE0000|- rs1_val == 2147483648<br>                                                                                                                                                                                  |[0x800006b4]:sraw a2, a0, a1<br> [0x800006b8]:sd a2, 216(t0)<br>    |
|  47|[0x80003378]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                                                                                                                  |[0x800006c8]:sraw a2, a0, a1<br> [0x800006cc]:sd a2, 224(t0)<br>    |
|  48|[0x80003380]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                                                                                                                 |[0x800006dc]:sraw a2, a0, a1<br> [0x800006e0]:sd a2, 232(t0)<br>    |
|  49|[0x80003388]<br>0x0000000000000000|- rs1_val == 34359738368<br>                                                                                                                                                                                 |[0x800006f0]:sraw a2, a0, a1<br> [0x800006f4]:sd a2, 240(t0)<br>    |
|  50|[0x80003390]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                                                                                                                |[0x80000704]:sraw a2, a0, a1<br> [0x80000708]:sd a2, 248(t0)<br>    |
|  51|[0x80003398]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                                                                                                                |[0x80000718]:sraw a2, a0, a1<br> [0x8000071c]:sd a2, 256(t0)<br>    |
|  52|[0x800033a0]<br>0x0000000000000000|- rs1_val == 1099511627776<br>                                                                                                                                                                               |[0x8000072c]:sraw a2, a0, a1<br> [0x80000730]:sd a2, 264(t0)<br>    |
|  53|[0x800033a8]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                                                                                               |[0x80000740]:sraw a2, a0, a1<br> [0x80000744]:sd a2, 272(t0)<br>    |
|  54|[0x800033b0]<br>0x0000000000000000|- rs1_val == 4398046511104<br>                                                                                                                                                                               |[0x80000754]:sraw a2, a0, a1<br> [0x80000758]:sd a2, 280(t0)<br>    |
|  55|[0x800033b8]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                                                                                              |[0x80000768]:sraw a2, a0, a1<br> [0x8000076c]:sd a2, 288(t0)<br>    |
|  56|[0x800033c0]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                                                                                              |[0x8000077c]:sraw a2, a0, a1<br> [0x80000780]:sd a2, 296(t0)<br>    |
|  57|[0x800033c8]<br>0x0000000000000000|- rs1_val == 70368744177664<br>                                                                                                                                                                              |[0x80000790]:sraw a2, a0, a1<br> [0x80000794]:sd a2, 304(t0)<br>    |
|  58|[0x800033d0]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                                                                                             |[0x800007a4]:sraw a2, a0, a1<br> [0x800007a8]:sd a2, 312(t0)<br>    |
|  59|[0x800033d8]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                                                                                             |[0x800007b8]:sraw a2, a0, a1<br> [0x800007bc]:sd a2, 320(t0)<br>    |
|  60|[0x800033e0]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                                                                                                             |[0x800007cc]:sraw a2, a0, a1<br> [0x800007d0]:sd a2, 328(t0)<br>    |
|  61|[0x800033e8]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                                                                                            |[0x800007e0]:sraw a2, a0, a1<br> [0x800007e4]:sd a2, 336(t0)<br>    |
|  62|[0x800033f0]<br>0x0000000000000000|- rs1_val == 2251799813685248<br>                                                                                                                                                                            |[0x800007f4]:sraw a2, a0, a1<br> [0x800007f8]:sd a2, 344(t0)<br>    |
|  63|[0x800033f8]<br>0x0000000000000000|- rs1_val == 4503599627370496<br>                                                                                                                                                                            |[0x80000808]:sraw a2, a0, a1<br> [0x8000080c]:sd a2, 352(t0)<br>    |
|  64|[0x80003400]<br>0x0000000000000000|- rs1_val == 9007199254740992<br>                                                                                                                                                                            |[0x8000081c]:sraw a2, a0, a1<br> [0x80000820]:sd a2, 360(t0)<br>    |
|  65|[0x80003408]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                                                                                           |[0x80000830]:sraw a2, a0, a1<br> [0x80000834]:sd a2, 368(t0)<br>    |
|  66|[0x80003410]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                                                                                           |[0x80000844]:sraw a2, a0, a1<br> [0x80000848]:sd a2, 376(t0)<br>    |
|  67|[0x80003418]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                                                                                                           |[0x80000858]:sraw a2, a0, a1<br> [0x8000085c]:sd a2, 384(t0)<br>    |
|  68|[0x80003420]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                                                                                          |[0x8000086c]:sraw a2, a0, a1<br> [0x80000870]:sd a2, 392(t0)<br>    |
|  69|[0x80003428]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                                                                                          |[0x80000880]:sraw a2, a0, a1<br> [0x80000884]:sd a2, 400(t0)<br>    |
|  70|[0x80003430]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                                                                                          |[0x80000894]:sraw a2, a0, a1<br> [0x80000898]:sd a2, 408(t0)<br>    |
|  71|[0x80003438]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                                                                         |[0x800008a8]:sraw a2, a0, a1<br> [0x800008ac]:sd a2, 416(t0)<br>    |
|  72|[0x80003440]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8796093022209<br>                                                                                                                                                                              |[0x800008c0]:sraw a2, a0, a1<br> [0x800008c4]:sd a2, 424(t0)<br>    |
|  73|[0x80003448]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17592186044417<br>                                                                                                                                                                             |[0x800008d8]:sraw a2, a0, a1<br> [0x800008dc]:sd a2, 432(t0)<br>    |
|  74|[0x80003450]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                                                                                             |[0x800008f0]:sraw a2, a0, a1<br> [0x800008f4]:sd a2, 440(t0)<br>    |
|  75|[0x80003458]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -140737488355329<br>                                                                                                                                                                            |[0x80000908]:sraw a2, a0, a1<br> [0x8000090c]:sd a2, 448(t0)<br>    |
|  76|[0x80003460]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -281474976710657<br>                                                                                                                                                                            |[0x80000920]:sraw a2, a0, a1<br> [0x80000924]:sd a2, 456(t0)<br>    |
|  77|[0x80003468]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -562949953421313<br>                                                                                                                                                                            |[0x80000938]:sraw a2, a0, a1<br> [0x8000093c]:sd a2, 464(t0)<br>    |
|  78|[0x80003470]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                                                                                           |[0x80000950]:sraw a2, a0, a1<br> [0x80000954]:sd a2, 472(t0)<br>    |
|  79|[0x80003478]<br>0xFFFFFFFFFFFFFFFF|- rs1_val < 0 and rs2_val == 0<br> - rs1_val == -2251799813685249<br>                                                                                                                                        |[0x80000968]:sraw a2, a0, a1<br> [0x8000096c]:sd a2, 480(t0)<br>    |
|  80|[0x80003480]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                                                                                           |[0x80000980]:sraw a2, a0, a1<br> [0x80000984]:sd a2, 488(t0)<br>    |
|  81|[0x80003488]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -9007199254740993<br>                                                                                                                                                                           |[0x80000998]:sraw a2, a0, a1<br> [0x8000099c]:sd a2, 496(t0)<br>    |
|  82|[0x80003490]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -18014398509481985<br>                                                                                                                                                                          |[0x800009b0]:sraw a2, a0, a1<br> [0x800009b4]:sd a2, 504(t0)<br>    |
|  83|[0x80003498]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -36028797018963969<br>                                                                                                                                                                          |[0x800009c8]:sraw a2, a0, a1<br> [0x800009cc]:sd a2, 512(t0)<br>    |
|  84|[0x800034a0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                                                                                         |[0x800009e0]:sraw a2, a0, a1<br> [0x800009e4]:sd a2, 520(t0)<br>    |
|  85|[0x800034a8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                                                                                         |[0x800009f8]:sraw a2, a0, a1<br> [0x800009fc]:sd a2, 528(t0)<br>    |
|  86|[0x800034b0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                                                                                         |[0x80000a10]:sraw a2, a0, a1<br> [0x80000a14]:sd a2, 536(t0)<br>    |
|  87|[0x800034b8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                                                                                        |[0x80000a28]:sraw a2, a0, a1<br> [0x80000a2c]:sd a2, 544(t0)<br>    |
|  88|[0x800034c0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                                                                                        |[0x80000a40]:sraw a2, a0, a1<br> [0x80000a44]:sd a2, 552(t0)<br>    |
|  89|[0x800034c8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                                                                                        |[0x80000a58]:sraw a2, a0, a1<br> [0x80000a5c]:sd a2, 560(t0)<br>    |
|  90|[0x800034d0]<br>0x000000000002AAAA|- rs1_val == 6148914691236517205<br>                                                                                                                                                                         |[0x80000a84]:sraw a2, a0, a1<br> [0x80000a88]:sd a2, 568(t0)<br>    |
|  91|[0x800034d8]<br>0xFFFFFFFFFAAAAAAA|- rs1_val == -6148914691236517206<br>                                                                                                                                                                        |[0x80000ab0]:sraw a2, a0, a1<br> [0x80000ab4]:sd a2, 576(t0)<br>    |
|  92|[0x800034e0]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                                                                         |[0x80000ac4]:sraw a2, a0, a1<br> [0x80000ac8]:sd a2, 584(t0)<br>    |
|  93|[0x800034e8]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                                                                         |[0x80000ad8]:sraw a2, a0, a1<br> [0x80000adc]:sd a2, 592(t0)<br>    |
|  94|[0x800034f0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2<br>                                                                                                                                                                                          |[0x80000ae8]:sraw a2, a0, a1<br> [0x80000aec]:sd a2, 600(t0)<br>    |
|  95|[0x800034f8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -3<br>                                                                                                                                                                                          |[0x80000af8]:sraw a2, a0, a1<br> [0x80000afc]:sd a2, 608(t0)<br>    |
|  96|[0x80003500]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -5<br>                                                                                                                                                                                          |[0x80000b08]:sraw a2, a0, a1<br> [0x80000b0c]:sd a2, 616(t0)<br>    |
|  97|[0x80003508]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == -9<br>                                                                                                                                                                                          |[0x80000b18]:sraw a2, a0, a1<br> [0x80000b1c]:sd a2, 624(t0)<br>    |
|  98|[0x80003510]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17<br>                                                                                                                                                                                         |[0x80000b28]:sraw a2, a0, a1<br> [0x80000b2c]:sd a2, 632(t0)<br>    |
|  99|[0x80003518]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -33<br>                                                                                                                                                                                         |[0x80000b38]:sraw a2, a0, a1<br> [0x80000b3c]:sd a2, 640(t0)<br>    |
| 100|[0x80003520]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -65<br>                                                                                                                                                                                         |[0x80000b48]:sraw a2, a0, a1<br> [0x80000b4c]:sd a2, 648(t0)<br>    |
| 101|[0x80003528]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -129<br>                                                                                                                                                                                        |[0x80000b58]:sraw a2, a0, a1<br> [0x80000b5c]:sd a2, 656(t0)<br>    |
| 102|[0x80003530]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -257<br>                                                                                                                                                                                        |[0x80000b68]:sraw a2, a0, a1<br> [0x80000b6c]:sd a2, 664(t0)<br>    |
| 103|[0x80003538]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -513<br>                                                                                                                                                                                        |[0x80000b78]:sraw a2, a0, a1<br> [0x80000b7c]:sd a2, 672(t0)<br>    |
| 104|[0x80003540]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1025<br>                                                                                                                                                                                       |[0x80000b88]:sraw a2, a0, a1<br> [0x80000b8c]:sd a2, 680(t0)<br>    |
| 105|[0x80003548]<br>0xFFFFFFFFFFFFFFBF|- rs1_val == -2049<br>                                                                                                                                                                                       |[0x80000b9c]:sraw a2, a0, a1<br> [0x80000ba0]:sd a2, 688(t0)<br>    |
| 106|[0x80003550]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4097<br>                                                                                                                                                                                       |[0x80000bb0]:sraw a2, a0, a1<br> [0x80000bb4]:sd a2, 696(t0)<br>    |
| 107|[0x80003558]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == -8193<br>                                                                                                                                                                                       |[0x80000bc4]:sraw a2, a0, a1<br> [0x80000bc8]:sd a2, 704(t0)<br>    |
| 108|[0x80003560]<br>0xFFFFFFFFFFFFDFFF|- rs1_val == -16385<br>                                                                                                                                                                                      |[0x80000bd8]:sraw a2, a0, a1<br> [0x80000bdc]:sd a2, 712(t0)<br>    |
| 109|[0x80003568]<br>0xFFFFFFFFFFFF7FFF|- rs1_val == -32769<br>                                                                                                                                                                                      |[0x80000bec]:sraw a2, a0, a1<br> [0x80000bf0]:sd a2, 720(t0)<br>    |
| 110|[0x80003570]<br>0xFFFFFFFFFFFFF7FF|- rs1_val == -65537<br>                                                                                                                                                                                      |[0x80000c00]:sraw a2, a0, a1<br> [0x80000c04]:sd a2, 728(t0)<br>    |
| 111|[0x80003578]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -131073<br>                                                                                                                                                                                     |[0x80000c14]:sraw a2, a0, a1<br> [0x80000c18]:sd a2, 736(t0)<br>    |
| 112|[0x80003580]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -524289<br>                                                                                                                                                                                     |[0x80000c28]:sraw a2, a0, a1<br> [0x80000c2c]:sd a2, 744(t0)<br>    |
| 113|[0x80003588]<br>0xFFFFFFFFFFFDFFFF|- rs1_val == -1048577<br>                                                                                                                                                                                    |[0x80000c3c]:sraw a2, a0, a1<br> [0x80000c40]:sd a2, 752(t0)<br>    |
| 114|[0x80003590]<br>0xFFFFFFFFFFFFFFBF|- rs1_val == -2097153<br>                                                                                                                                                                                    |[0x80000c50]:sraw a2, a0, a1<br> [0x80000c54]:sd a2, 760(t0)<br>    |
| 115|[0x80003598]<br>0xFFFFFFFFFFFFFF7F|- rs1_val == -4194305<br>                                                                                                                                                                                    |[0x80000c64]:sraw a2, a0, a1<br> [0x80000c68]:sd a2, 768(t0)<br>    |
| 116|[0x800035a0]<br>0xFFFFFFFFFFFDFFFF|- rs1_val == -8388609<br>                                                                                                                                                                                    |[0x80000c78]:sraw a2, a0, a1<br> [0x80000c7c]:sd a2, 776(t0)<br>    |
| 117|[0x800035a8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -16777217<br>                                                                                                                                                                                   |[0x80000c8c]:sraw a2, a0, a1<br> [0x80000c90]:sd a2, 784(t0)<br>    |
| 118|[0x800035b0]<br>0xFFFFFFFFFFFBFFFF|- rs1_val == -33554433<br>                                                                                                                                                                                   |[0x80000ca0]:sraw a2, a0, a1<br> [0x80000ca4]:sd a2, 792(t0)<br>    |
| 119|[0x800035b8]<br>0xFFFFFFFFFFFDFFFF|- rs1_val == -134217729<br>                                                                                                                                                                                  |[0x80000cb4]:sraw a2, a0, a1<br> [0x80000cb8]:sd a2, 800(t0)<br>    |
| 120|[0x800035c0]<br>0xFFFFFFFFFFFFDFFF|- rs1_val == -268435457<br>                                                                                                                                                                                  |[0x80000cc8]:sraw a2, a0, a1<br> [0x80000ccc]:sd a2, 808(t0)<br>    |
| 121|[0x800035c8]<br>0xFFFFFFFFFFF7FFFF|- rs1_val == -536870913<br>                                                                                                                                                                                  |[0x80000cdc]:sraw a2, a0, a1<br> [0x80000ce0]:sd a2, 816(t0)<br>    |
| 122|[0x800035d0]<br>0xFFFFFFFFBFFFFFFF|- rs1_val == -1073741825<br>                                                                                                                                                                                 |[0x80000cf0]:sraw a2, a0, a1<br> [0x80000cf4]:sd a2, 824(t0)<br>    |
| 123|[0x800035d8]<br>0x0000000000000FFF|- rs1_val == -2147483649<br>                                                                                                                                                                                 |[0x80000d08]:sraw a2, a0, a1<br> [0x80000d0c]:sd a2, 832(t0)<br>    |
| 124|[0x800035e0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4294967297<br>                                                                                                                                                                                 |[0x80000d20]:sraw a2, a0, a1<br> [0x80000d24]:sd a2, 840(t0)<br>    |
| 125|[0x800035e8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8589934593<br>                                                                                                                                                                                 |[0x80000d38]:sraw a2, a0, a1<br> [0x80000d3c]:sd a2, 848(t0)<br>    |
| 126|[0x800035f0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17179869185<br>                                                                                                                                                                                |[0x80000d50]:sraw a2, a0, a1<br> [0x80000d54]:sd a2, 856(t0)<br>    |
| 127|[0x800035f8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -34359738369<br>                                                                                                                                                                                |[0x80000d68]:sraw a2, a0, a1<br> [0x80000d6c]:sd a2, 864(t0)<br>    |
| 128|[0x80003600]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -68719476737<br>                                                                                                                                                                                |[0x80000d80]:sraw a2, a0, a1<br> [0x80000d84]:sd a2, 872(t0)<br>    |
| 129|[0x80003608]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -137438953473<br>                                                                                                                                                                               |[0x80000d98]:sraw a2, a0, a1<br> [0x80000d9c]:sd a2, 880(t0)<br>    |
| 130|[0x80003610]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -274877906945<br>                                                                                                                                                                               |[0x80000db0]:sraw a2, a0, a1<br> [0x80000db4]:sd a2, 888(t0)<br>    |
| 131|[0x80003618]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -549755813889<br>                                                                                                                                                                               |[0x80000dc8]:sraw a2, a0, a1<br> [0x80000dcc]:sd a2, 896(t0)<br>    |
| 132|[0x80003620]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1099511627777<br>                                                                                                                                                                              |[0x80000de0]:sraw a2, a0, a1<br> [0x80000de4]:sd a2, 904(t0)<br>    |
| 133|[0x80003628]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                                                                                              |[0x80000df8]:sraw a2, a0, a1<br> [0x80000dfc]:sd a2, 912(t0)<br>    |
| 134|[0x80003630]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4398046511105<br>                                                                                                                                                                              |[0x80000e10]:sraw a2, a0, a1<br> [0x80000e14]:sd a2, 920(t0)<br>    |
| 135|[0x80003638]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -35184372088833<br>                                                                                                                                                                             |[0x80000e28]:sraw a2, a0, a1<br> [0x80000e2c]:sd a2, 928(t0)<br>    |
| 136|[0x80003640]<br>0xFFFFFFFFFBFFFFFF|- rs1_val == -67108865<br>                                                                                                                                                                                   |[0x80000e3c]:sraw a2, a0, a1<br> [0x80000e40]:sd a2, 936(t0)<br>    |
| 137|[0x80003650]<br>0x0000000000000000|- rs1_val == 32<br>                                                                                                                                                                                          |[0x80000e64]:sraw a2, a0, a1<br> [0x80000e68]:sd a2, 952(t0)<br>    |
