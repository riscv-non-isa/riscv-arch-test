
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000c40')]      |
| SIG_REGION                | [('0x80003204', '0x80003658', '138 dwords')]      |
| COV_LABELS                | sraiw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sraiw-01.S/sraiw-01.S    |
| Total Number of coverpoints| 220     |
| Total Signature Updates   | 137      |
| Total Coverpoints Covered | 220      |
| STAT1                     | 136      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c34]:srai a1, a0, 30
      [0x80000c38]:sd a1, 920(gp)
 -- Signature Address: 0x80003650 Data: 0xFFFFFFFFFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : sraiw
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val < 0 and imm_val > 0 and imm_val < 32
      - rs1_val == -4398046511105
      - imm_val == 30






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

|s.no|            signature             |                                                               coverpoints                                                               |                                code                                 |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFFFFFFFFFFFFF|- opcode : sraiw<br> - rs1 : x29<br> - rd : x29<br> - rs1 == rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < 32<br>                   |[0x8000039c]:srai t4, t4, 6<br> [0x800003a0]:sd t4, 0(tp)<br>        |
|   2|[0x80003218]<br>0x0000000000000000|- rs1 : x3<br> - rd : x30<br> - rs1 != rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < 32<br> - imm_val == 21<br>                     |[0x800003a8]:srai t5, gp, 21<br> [0x800003ac]:sd t5, 8(tp)<br>       |
|   3|[0x80003220]<br>0xFFFFFFFFFFFFBFFF|- rs1 : x20<br> - rd : x10<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -16385<br>                                                |[0x800003b8]:srai a0, s4, 0<br> [0x800003bc]:sd a0, 16(tp)<br>       |
|   4|[0x80003228]<br>0x0000000000000000|- rs1 : x0<br> - rd : x31<br> - rs1_val == 0 and imm_val >= 0 and imm_val < 32<br>                                                       |[0x800003c8]:srai t6, zero, 0<br> [0x800003cc]:sd t6, 24(tp)<br>     |
|   5|[0x80003230]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x23<br> - rd : x3<br> - rs1_val < 0 and imm_val == 31<br> - rs1_val == -68719476737<br>                                          |[0x800003dc]:srai gp, s7, 31<br> [0x800003e0]:sd gp, 32(tp)<br>      |
|   6|[0x80003238]<br>0x0000000000000000|- rs1 : x2<br> - rd : x18<br> - rs1_val > 0 and imm_val == 31<br> - rs1_val == 134217728<br>                                             |[0x800003e8]:srai s2, sp, 31<br> [0x800003ec]:sd s2, 40(tp)<br>      |
|   7|[0x80003240]<br>0x0000000000000000|- rs1 : x26<br> - rd : x17<br> - rs1_val == imm_val and imm_val > 0 and imm_val < 32<br> - rs1_val == 8<br> - imm_val == 8<br>           |[0x800003f4]:srai a7, s10, 8<br> [0x800003f8]:sd a7, 48(tp)<br>      |
|   8|[0x80003248]<br>0x0000000000000000|- rs1 : x25<br> - rd : x9<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < 32<br> - rs1_val == -9223372036854775808<br>    |[0x80000404]:srai s1, s9, 17<br> [0x80000408]:sd s1, 56(tp)<br>      |
|   9|[0x80003250]<br>0x0000000000000000|- rs1 : x17<br> - rd : x26<br> - imm_val == 10<br>                                                                                       |[0x80000410]:srai s10, a7, 10<br> [0x80000414]:sd s10, 64(tp)<br>    |
|  10|[0x80003258]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x7<br> - rd : x27<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < 32<br> - rs1_val == 9223372036854775807<br>    |[0x80000424]:srai s11, t2, 18<br> [0x80000428]:sd s11, 72(tp)<br>    |
|  11|[0x80003260]<br>0x0000000000000001|- rs1 : x5<br> - rd : x24<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 1 and imm_val >= 0 and imm_val < 32<br> - rs1_val == 1<br> |[0x80000430]:srai s8, t0, 0<br> [0x80000434]:sd s8, 80(tp)<br>       |
|  12|[0x80003268]<br>0x0000000000000000|- rs1 : x9<br> - rd : x28<br> - rs1_val == 72057594037927936<br> - imm_val == 1<br>                                                      |[0x80000440]:srai t3, s1, 1<br> [0x80000444]:sd t3, 88(tp)<br>       |
|  13|[0x80003270]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x22<br> - rd : x7<br> - rs1_val == -17592186044417<br> - imm_val == 2<br>                                                        |[0x80000454]:srai t2, s6, 2<br> [0x80000458]:sd t2, 96(tp)<br>       |
|  14|[0x80003278]<br>0xFFFFFFFFFFFFFBFF|- rs1 : x10<br> - rd : x21<br> - imm_val == 4<br>                                                                                        |[0x80000464]:srai s5, a0, 4<br> [0x80000468]:sd s5, 104(tp)<br>      |
|  15|[0x80003280]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x18<br> - rd : x19<br> - rs1_val == -34359738369<br> - imm_val == 16<br>                                                         |[0x80000478]:srai s3, s2, 16<br> [0x8000047c]:sd s3, 112(tp)<br>     |
|  16|[0x80003288]<br>0x0000000000000000|- rs1 : x11<br> - rd : x0<br> - rs1_val == -4398046511105<br> - imm_val == 30<br>                                                        |[0x8000048c]:srai zero, a1, 30<br> [0x80000490]:sd zero, 120(tp)<br> |
|  17|[0x80003290]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x13<br> - rd : x20<br> - rs1_val == -1099511627777<br> - imm_val == 29<br>                                                       |[0x800004a0]:srai s4, a3, 29<br> [0x800004a4]:sd s4, 128(tp)<br>     |
|  18|[0x80003298]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x14<br> - rd : x23<br> - imm_val == 27<br>                                                                                       |[0x800004b4]:srai s7, a4, 27<br> [0x800004b8]:sd s7, 136(tp)<br>     |
|  19|[0x800032a0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x8<br> - rd : x11<br> - rs1_val == -562949953421313<br> - imm_val == 23<br>                                                      |[0x800004c8]:srai a1, fp, 23<br> [0x800004cc]:sd a1, 144(tp)<br>     |
|  20|[0x800032a8]<br>0x0000000000000001|- rs1 : x6<br> - rd : x1<br> - rs1_val == 32768<br> - imm_val == 15<br>                                                                  |[0x800004d4]:srai ra, t1, 15<br> [0x800004d8]:sd ra, 152(tp)<br>     |
|  21|[0x800032b0]<br>0x0000000000000000|- rs1 : x28<br> - rd : x16<br> - rs1_val == 2<br>                                                                                        |[0x800004e0]:srai a6, t3, 30<br> [0x800004e4]:sd a6, 160(tp)<br>     |
|  22|[0x800032b8]<br>0x0000000000000000|- rs1 : x15<br> - rd : x12<br> - rs1_val == 4<br>                                                                                        |[0x800004f4]:srai a2, a5, 21<br> [0x800004f8]:sd a2, 0(gp)<br>       |
|  23|[0x800032c0]<br>0x0000000000000001|- rs1 : x1<br> - rd : x22<br> - rs1_val == 16<br>                                                                                        |[0x80000500]:srai s6, ra, 4<br> [0x80000504]:sd s6, 8(gp)<br>        |
|  24|[0x800032c8]<br>0x0000000000000000|- rs1 : x31<br> - rd : x6<br> - rs1_val == 32<br>                                                                                        |[0x8000050c]:srai t1, t6, 17<br> [0x80000510]:sd t1, 16(gp)<br>      |
|  25|[0x800032d0]<br>0x0000000000000002|- rs1 : x16<br> - rd : x13<br> - rs1_val == 64<br>                                                                                       |[0x80000518]:srai a3, a6, 5<br> [0x8000051c]:sd a3, 24(gp)<br>       |
|  26|[0x800032d8]<br>0x0000000000000000|- rs1 : x12<br> - rd : x8<br> - rs1_val == 128<br>                                                                                       |[0x80000524]:srai fp, a2, 8<br> [0x80000528]:sd fp, 32(gp)<br>       |
|  27|[0x800032e0]<br>0x0000000000000000|- rs1 : x4<br> - rd : x25<br> - rs1_val == 256<br>                                                                                       |[0x80000530]:srai s9, tp, 14<br> [0x80000534]:sd s9, 40(gp)<br>      |
|  28|[0x800032e8]<br>0x0000000000000010|- rs1 : x19<br> - rd : x4<br> - rs1_val == 512<br>                                                                                       |[0x8000053c]:srai tp, s3, 5<br> [0x80000540]:sd tp, 48(gp)<br>       |
|  29|[0x800032f0]<br>0x0000000000000000|- rs1 : x30<br> - rd : x14<br> - rs1_val == 1024<br>                                                                                     |[0x80000548]:srai a4, t5, 19<br> [0x8000054c]:sd a4, 56(gp)<br>      |
|  30|[0x800032f8]<br>0x0000000000000000|- rs1 : x24<br> - rd : x2<br> - rs1_val == 2048<br>                                                                                      |[0x80000558]:srai sp, s8, 18<br> [0x8000055c]:sd sp, 64(gp)<br>      |
|  31|[0x80003300]<br>0x0000000000000000|- rs1 : x21<br> - rd : x15<br> - rs1_val == 4096<br>                                                                                     |[0x80000564]:srai a5, s5, 19<br> [0x80000568]:sd a5, 72(gp)<br>      |
|  32|[0x80003308]<br>0x0000000000000001|- rs1 : x27<br> - rd : x5<br> - rs1_val == 8192<br>                                                                                      |[0x80000570]:srai t0, s11, 13<br> [0x80000574]:sd t0, 80(gp)<br>     |
|  33|[0x80003310]<br>0x0000000000000000|- rs1_val == 16384<br>                                                                                                                   |[0x8000057c]:srai a1, a0, 17<br> [0x80000580]:sd a1, 88(gp)<br>      |
|  34|[0x80003318]<br>0x0000000000000000|- rs1_val == 65536<br>                                                                                                                   |[0x80000588]:srai a1, a0, 31<br> [0x8000058c]:sd a1, 96(gp)<br>      |
|  35|[0x80003320]<br>0x0000000000000040|- rs1_val == 131072<br>                                                                                                                  |[0x80000594]:srai a1, a0, 11<br> [0x80000598]:sd a1, 104(gp)<br>     |
|  36|[0x80003328]<br>0x0000000000010000|- rs1_val == 262144<br>                                                                                                                  |[0x800005a0]:srai a1, a0, 2<br> [0x800005a4]:sd a1, 112(gp)<br>      |
|  37|[0x80003330]<br>0x0000000000000000|- rs1_val == 524288<br>                                                                                                                  |[0x800005ac]:srai a1, a0, 21<br> [0x800005b0]:sd a1, 120(gp)<br>     |
|  38|[0x80003338]<br>0x0000000000004000|- rs1_val == 1048576<br>                                                                                                                 |[0x800005b8]:srai a1, a0, 6<br> [0x800005bc]:sd a1, 128(gp)<br>      |
|  39|[0x80003340]<br>0x0000000000004000|- rs1_val == 2097152<br>                                                                                                                 |[0x800005c4]:srai a1, a0, 7<br> [0x800005c8]:sd a1, 136(gp)<br>      |
|  40|[0x80003348]<br>0x0000000000000200|- rs1_val == 4194304<br>                                                                                                                 |[0x800005d0]:srai a1, a0, 13<br> [0x800005d4]:sd a1, 144(gp)<br>     |
|  41|[0x80003350]<br>0x0000000000002000|- rs1_val == 8388608<br>                                                                                                                 |[0x800005dc]:srai a1, a0, 10<br> [0x800005e0]:sd a1, 152(gp)<br>     |
|  42|[0x80003358]<br>0x0000000000080000|- rs1_val == 16777216<br>                                                                                                                |[0x800005e8]:srai a1, a0, 5<br> [0x800005ec]:sd a1, 160(gp)<br>      |
|  43|[0x80003360]<br>0x0000000000400000|- rs1_val == 33554432<br>                                                                                                                |[0x800005f4]:srai a1, a0, 3<br> [0x800005f8]:sd a1, 168(gp)<br>      |
|  44|[0x80003368]<br>0x0000000000001000|- rs1_val == 67108864<br>                                                                                                                |[0x80000600]:srai a1, a0, 14<br> [0x80000604]:sd a1, 176(gp)<br>     |
|  45|[0x80003370]<br>0x0000000000000400|- rs1_val == 268435456<br>                                                                                                               |[0x8000060c]:srai a1, a0, 18<br> [0x80000610]:sd a1, 184(gp)<br>     |
|  46|[0x80003378]<br>0x0000000000000400|- rs1_val == 536870912<br>                                                                                                               |[0x80000618]:srai a1, a0, 19<br> [0x8000061c]:sd a1, 192(gp)<br>     |
|  47|[0x80003380]<br>0x0000000000100000|- rs1_val == 1073741824<br>                                                                                                              |[0x80000624]:srai a1, a0, 10<br> [0x80000628]:sd a1, 200(gp)<br>     |
|  48|[0x80003388]<br>0xFFFFFFFFFFFF8000|- rs1_val == 2147483648<br>                                                                                                              |[0x80000634]:srai a1, a0, 16<br> [0x80000638]:sd a1, 208(gp)<br>     |
|  49|[0x80003390]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                                              |[0x80000644]:srai a1, a0, 18<br> [0x80000648]:sd a1, 216(gp)<br>     |
|  50|[0x80003398]<br>0x0000000000000000|- rs1_val == 8589934592<br>                                                                                                              |[0x80000654]:srai a1, a0, 3<br> [0x80000658]:sd a1, 224(gp)<br>      |
|  51|[0x800033a0]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                                             |[0x80000664]:srai a1, a0, 0<br> [0x80000668]:sd a1, 232(gp)<br>      |
|  52|[0x800033a8]<br>0x0000000000000000|- rs1_val == 34359738368<br>                                                                                                             |[0x80000674]:srai a1, a0, 30<br> [0x80000678]:sd a1, 240(gp)<br>     |
|  53|[0x800033b0]<br>0x0000000000000000|- rs1_val == 68719476736<br>                                                                                                             |[0x80000684]:srai a1, a0, 7<br> [0x80000688]:sd a1, 248(gp)<br>      |
|  54|[0x800033b8]<br>0x0000000000000000|- rs1_val == 137438953472<br>                                                                                                            |[0x80000694]:srai a1, a0, 14<br> [0x80000698]:sd a1, 256(gp)<br>     |
|  55|[0x800033c0]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                                            |[0x800006a4]:srai a1, a0, 7<br> [0x800006a8]:sd a1, 264(gp)<br>      |
|  56|[0x800033c8]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                                            |[0x800006b4]:srai a1, a0, 23<br> [0x800006b8]:sd a1, 272(gp)<br>     |
|  57|[0x800033d0]<br>0x0000000000000000|- rs1_val == 1099511627776<br>                                                                                                           |[0x800006c4]:srai a1, a0, 29<br> [0x800006c8]:sd a1, 280(gp)<br>     |
|  58|[0x800033d8]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                           |[0x800006d4]:srai a1, a0, 31<br> [0x800006d8]:sd a1, 288(gp)<br>     |
|  59|[0x800033e0]<br>0x0000000000000000|- rs1_val == 4398046511104<br>                                                                                                           |[0x800006e4]:srai a1, a0, 5<br> [0x800006e8]:sd a1, 296(gp)<br>      |
|  60|[0x800033e8]<br>0x0000000000000000|- rs1_val == 8796093022208<br>                                                                                                           |[0x800006f4]:srai a1, a0, 19<br> [0x800006f8]:sd a1, 304(gp)<br>     |
|  61|[0x800033f0]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                          |[0x80000704]:srai a1, a0, 23<br> [0x80000708]:sd a1, 312(gp)<br>     |
|  62|[0x800033f8]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                          |[0x80000714]:srai a1, a0, 27<br> [0x80000718]:sd a1, 320(gp)<br>     |
|  63|[0x80003400]<br>0x0000000000000000|- rs1_val == 70368744177664<br>                                                                                                          |[0x80000724]:srai a1, a0, 17<br> [0x80000728]:sd a1, 328(gp)<br>     |
|  64|[0x80003408]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                         |[0x80000734]:srai a1, a0, 16<br> [0x80000738]:sd a1, 336(gp)<br>     |
|  65|[0x80003410]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                         |[0x80000744]:srai a1, a0, 10<br> [0x80000748]:sd a1, 344(gp)<br>     |
|  66|[0x80003418]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                                         |[0x80000754]:srai a1, a0, 19<br> [0x80000758]:sd a1, 352(gp)<br>     |
|  67|[0x80003420]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                        |[0x80000764]:srai a1, a0, 9<br> [0x80000768]:sd a1, 360(gp)<br>      |
|  68|[0x80003428]<br>0x0000000000000000|- rs1_val == 2251799813685248<br>                                                                                                        |[0x80000774]:srai a1, a0, 1<br> [0x80000778]:sd a1, 368(gp)<br>      |
|  69|[0x80003430]<br>0x0000000000000000|- rs1_val == 4503599627370496<br>                                                                                                        |[0x80000784]:srai a1, a0, 7<br> [0x80000788]:sd a1, 376(gp)<br>      |
|  70|[0x80003438]<br>0x0000000000000000|- rs1_val == 9007199254740992<br>                                                                                                        |[0x80000794]:srai a1, a0, 15<br> [0x80000798]:sd a1, 384(gp)<br>     |
|  71|[0x80003440]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                       |[0x800007a4]:srai a1, a0, 7<br> [0x800007a8]:sd a1, 392(gp)<br>      |
|  72|[0x80003448]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                       |[0x800007b4]:srai a1, a0, 3<br> [0x800007b8]:sd a1, 400(gp)<br>      |
|  73|[0x80003450]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                          |[0x800007c8]:srai a1, a0, 14<br> [0x800007cc]:sd a1, 408(gp)<br>     |
|  74|[0x80003458]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8796093022209<br>                                                                                                          |[0x800007dc]:srai a1, a0, 19<br> [0x800007e0]:sd a1, 416(gp)<br>     |
|  75|[0x80003460]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -35184372088833<br>                                                                                                         |[0x800007f0]:srai a1, a0, 11<br> [0x800007f4]:sd a1, 424(gp)<br>     |
|  76|[0x80003468]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                         |[0x80000804]:srai a1, a0, 14<br> [0x80000808]:sd a1, 432(gp)<br>     |
|  77|[0x80003470]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -140737488355329<br>                                                                                                        |[0x80000818]:srai a1, a0, 5<br> [0x8000081c]:sd a1, 440(gp)<br>      |
|  78|[0x80003478]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -281474976710657<br>                                                                                                        |[0x8000082c]:srai a1, a0, 8<br> [0x80000830]:sd a1, 448(gp)<br>      |
|  79|[0x80003480]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                       |[0x80000840]:srai a1, a0, 1<br> [0x80000844]:sd a1, 456(gp)<br>      |
|  80|[0x80003488]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                       |[0x80000854]:srai a1, a0, 31<br> [0x80000858]:sd a1, 464(gp)<br>     |
|  81|[0x80003490]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                       |[0x80000868]:srai a1, a0, 31<br> [0x8000086c]:sd a1, 472(gp)<br>     |
|  82|[0x80003498]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -9007199254740993<br>                                                                                                       |[0x8000087c]:srai a1, a0, 5<br> [0x80000880]:sd a1, 480(gp)<br>      |
|  83|[0x800034a0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -18014398509481985<br>                                                                                                      |[0x80000890]:srai a1, a0, 9<br> [0x80000894]:sd a1, 488(gp)<br>      |
|  84|[0x800034a8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -36028797018963969<br>                                                                                                      |[0x800008a4]:srai a1, a0, 4<br> [0x800008a8]:sd a1, 496(gp)<br>      |
|  85|[0x800034b0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                      |[0x800008b8]:srai a1, a0, 1<br> [0x800008bc]:sd a1, 504(gp)<br>      |
|  86|[0x800034b8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                     |[0x800008cc]:srai a1, a0, 23<br> [0x800008d0]:sd a1, 512(gp)<br>     |
|  87|[0x800034c0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                     |[0x800008e0]:srai a1, a0, 10<br> [0x800008e4]:sd a1, 520(gp)<br>     |
|  88|[0x800034c8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                     |[0x800008f4]:srai a1, a0, 21<br> [0x800008f8]:sd a1, 528(gp)<br>     |
|  89|[0x800034d0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                    |[0x80000908]:srai a1, a0, 6<br> [0x8000090c]:sd a1, 536(gp)<br>      |
|  90|[0x800034d8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                    |[0x8000091c]:srai a1, a0, 5<br> [0x80000920]:sd a1, 544(gp)<br>      |
|  91|[0x800034e0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                    |[0x80000930]:srai a1, a0, 27<br> [0x80000934]:sd a1, 552(gp)<br>     |
|  92|[0x800034e8]<br>0x00000000000AAAAA|- rs1_val == 6148914691236517205<br>                                                                                                     |[0x80000958]:srai a1, a0, 11<br> [0x8000095c]:sd a1, 560(gp)<br>     |
|  93|[0x800034f0]<br>0xFFFFFFFFFFFFFF55|- rs1_val == -6148914691236517206<br>                                                                                                    |[0x80000980]:srai a1, a0, 23<br> [0x80000984]:sd a1, 568(gp)<br>     |
|  94|[0x800034f8]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                      |[0x80000990]:srai a1, a0, 31<br> [0x80000994]:sd a1, 576(gp)<br>     |
|  95|[0x80003500]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                      |[0x800009a0]:srai a1, a0, 17<br> [0x800009a4]:sd a1, 584(gp)<br>     |
|  96|[0x80003508]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                     |[0x800009b0]:srai a1, a0, 8<br> [0x800009b4]:sd a1, 592(gp)<br>      |
|  97|[0x80003510]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                     |[0x800009c0]:srai a1, a0, 27<br> [0x800009c4]:sd a1, 600(gp)<br>     |
|  98|[0x80003518]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                     |[0x800009d0]:srai a1, a0, 16<br> [0x800009d4]:sd a1, 608(gp)<br>     |
|  99|[0x80003520]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2<br>                                                                                                                      |[0x800009dc]:srai a1, a0, 5<br> [0x800009e0]:sd a1, 616(gp)<br>      |
| 100|[0x80003528]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -3<br>                                                                                                                      |[0x800009e8]:srai a1, a0, 10<br> [0x800009ec]:sd a1, 624(gp)<br>     |
| 101|[0x80003530]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -5<br>                                                                                                                      |[0x800009f4]:srai a1, a0, 12<br> [0x800009f8]:sd a1, 632(gp)<br>     |
| 102|[0x80003538]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == -9<br>                                                                                                                      |[0x80000a00]:srai a1, a0, 1<br> [0x80000a04]:sd a1, 640(gp)<br>      |
| 103|[0x80003540]<br>0xFFFFFFFFFFFFFFEF|- rs1_val == -17<br>                                                                                                                     |[0x80000a0c]:srai a1, a0, 0<br> [0x80000a10]:sd a1, 648(gp)<br>      |
| 104|[0x80003548]<br>0xFFFFFFFFFFFFFFDF|- rs1_val == -33<br>                                                                                                                     |[0x80000a18]:srai a1, a0, 0<br> [0x80000a1c]:sd a1, 656(gp)<br>      |
| 105|[0x80003550]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -65<br>                                                                                                                     |[0x80000a24]:srai a1, a0, 31<br> [0x80000a28]:sd a1, 664(gp)<br>     |
| 106|[0x80003558]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -129<br>                                                                                                                    |[0x80000a30]:srai a1, a0, 14<br> [0x80000a34]:sd a1, 672(gp)<br>     |
| 107|[0x80003560]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -257<br>                                                                                                                    |[0x80000a3c]:srai a1, a0, 19<br> [0x80000a40]:sd a1, 680(gp)<br>     |
| 108|[0x80003568]<br>0xFFFFFFFFFFFFFFDF|- rs1_val == -513<br>                                                                                                                    |[0x80000a48]:srai a1, a0, 4<br> [0x80000a4c]:sd a1, 688(gp)<br>      |
| 109|[0x80003570]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1025<br>                                                                                                                   |[0x80000a54]:srai a1, a0, 19<br> [0x80000a58]:sd a1, 696(gp)<br>     |
| 110|[0x80003578]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2049<br>                                                                                                                   |[0x80000a64]:srai a1, a0, 31<br> [0x80000a68]:sd a1, 704(gp)<br>     |
| 111|[0x80003580]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4097<br>                                                                                                                   |[0x80000a74]:srai a1, a0, 16<br> [0x80000a78]:sd a1, 712(gp)<br>     |
| 112|[0x80003588]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8193<br>                                                                                                                   |[0x80000a84]:srai a1, a0, 14<br> [0x80000a88]:sd a1, 720(gp)<br>     |
| 113|[0x80003590]<br>0xFFFFFFFFFFFFFF7F|- rs1_val == -32769<br>                                                                                                                  |[0x80000a94]:srai a1, a0, 8<br> [0x80000a98]:sd a1, 728(gp)<br>      |
| 114|[0x80003598]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -65537<br>                                                                                                                  |[0x80000aa4]:srai a1, a0, 23<br> [0x80000aa8]:sd a1, 736(gp)<br>     |
| 115|[0x800035a0]<br>0xFFFFFFFFFFFFFFEF|- rs1_val == -131073<br>                                                                                                                 |[0x80000ab4]:srai a1, a0, 13<br> [0x80000ab8]:sd a1, 744(gp)<br>     |
| 116|[0x800035a8]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == -262145<br>                                                                                                                 |[0x80000ac4]:srai a1, a0, 16<br> [0x80000ac8]:sd a1, 752(gp)<br>     |
| 117|[0x800035b0]<br>0xFFFFFFFFFFF7FFFF|- rs1_val == -524289<br>                                                                                                                 |[0x80000ad4]:srai a1, a0, 0<br> [0x80000ad8]:sd a1, 760(gp)<br>      |
| 118|[0x800035b8]<br>0xFFFFFFFFFFF7FFFF|- rs1_val == -1048577<br>                                                                                                                |[0x80000ae4]:srai a1, a0, 1<br> [0x80000ae8]:sd a1, 768(gp)<br>      |
| 119|[0x800035c0]<br>0xFFFFFFFFFFFFFFDF|- rs1_val == -2097153<br>                                                                                                                |[0x80000af4]:srai a1, a0, 16<br> [0x80000af8]:sd a1, 776(gp)<br>     |
| 120|[0x800035c8]<br>0xFFFFFFFFFFBFFFFF|- rs1_val == -4194305<br>                                                                                                                |[0x80000b04]:srai a1, a0, 0<br> [0x80000b08]:sd a1, 784(gp)<br>      |
| 121|[0x800035d0]<br>0xFFFFFFFFFFF7FFFF|- rs1_val == -8388609<br>                                                                                                                |[0x80000b14]:srai a1, a0, 4<br> [0x80000b18]:sd a1, 792(gp)<br>      |
| 122|[0x800035d8]<br>0xFFFFFFFFFFFFFBFF|- rs1_val == -16777217<br>                                                                                                               |[0x80000b24]:srai a1, a0, 14<br> [0x80000b28]:sd a1, 800(gp)<br>     |
| 123|[0x800035e0]<br>0xFFFFFFFFFFFBFFFF|- rs1_val == -33554433<br>                                                                                                               |[0x80000b34]:srai a1, a0, 7<br> [0x80000b38]:sd a1, 808(gp)<br>      |
| 124|[0x800035e8]<br>0xFFFFFFFFFFFF7FFF|- rs1_val == -67108865<br>                                                                                                               |[0x80000b44]:srai a1, a0, 11<br> [0x80000b48]:sd a1, 816(gp)<br>     |
| 125|[0x800035f0]<br>0xFFFFFFFFFFFFFFEF|- rs1_val == -134217729<br>                                                                                                              |[0x80000b54]:srai a1, a0, 23<br> [0x80000b58]:sd a1, 824(gp)<br>     |
| 126|[0x800035f8]<br>0xFFFFFFFFFFFEFFFF|- rs1_val == -268435457<br>                                                                                                              |[0x80000b64]:srai a1, a0, 12<br> [0x80000b68]:sd a1, 832(gp)<br>     |
| 127|[0x80003600]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -536870913<br>                                                                                                              |[0x80000b74]:srai a1, a0, 31<br> [0x80000b78]:sd a1, 840(gp)<br>     |
| 128|[0x80003608]<br>0xFFFFFFFFFFFFEFFF|- rs1_val == -1073741825<br>                                                                                                             |[0x80000b84]:srai a1, a0, 18<br> [0x80000b88]:sd a1, 848(gp)<br>     |
| 129|[0x80003610]<br>0x00000000000FFFFF|- rs1_val == -2147483649<br>                                                                                                             |[0x80000b98]:srai a1, a0, 11<br> [0x80000b9c]:sd a1, 856(gp)<br>     |
| 130|[0x80003618]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4294967297<br>                                                                                                             |[0x80000bac]:srai a1, a0, 10<br> [0x80000bb0]:sd a1, 864(gp)<br>     |
| 131|[0x80003620]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8589934593<br>                                                                                                             |[0x80000bc0]:srai a1, a0, 17<br> [0x80000bc4]:sd a1, 872(gp)<br>     |
| 132|[0x80003628]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17179869185<br>                                                                                                            |[0x80000bd4]:srai a1, a0, 6<br> [0x80000bd8]:sd a1, 880(gp)<br>      |
| 133|[0x80003630]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -137438953473<br>                                                                                                           |[0x80000be8]:srai a1, a0, 7<br> [0x80000bec]:sd a1, 888(gp)<br>      |
| 134|[0x80003638]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -274877906945<br>                                                                                                           |[0x80000bfc]:srai a1, a0, 10<br> [0x80000c00]:sd a1, 896(gp)<br>     |
| 135|[0x80003640]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -549755813889<br>                                                                                                           |[0x80000c10]:srai a1, a0, 29<br> [0x80000c14]:sd a1, 904(gp)<br>     |
| 136|[0x80003648]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                      |[0x80000c20]:srai a1, a0, 0<br> [0x80000c24]:sd a1, 912(gp)<br>      |
