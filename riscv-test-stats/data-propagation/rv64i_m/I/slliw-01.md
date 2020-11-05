
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000c40')]      |
| SIG_REGION                | [('0x80003204', '0x80003658', '138 dwords')]      |
| COV_LABELS                | slliw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/slliw-01.S/slliw-01.S    |
| Total Number of coverpoints| 220     |
| Total Coverpoints Hit     | 220      |
| Total Signature Updates   | 137      |
| STAT1                     | 136      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c30]:slli a1, a0, 0
      [0x80000c34]:sd a1, 904(sp)
 -- Signature Address: 0x80003650 Data: 0xFFFFFFFFFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : slliw
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val < 0 and imm_val == 0
      - rs1_val == -34359738369






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

|s.no|            signature             |                                                                    coverpoints                                                                     |                               code                                |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFFFFFFFFFF800|- opcode : slliw<br> - rs1 : x15<br> - rd : x15<br> - rs1 == rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < 32<br> - rs1_val == -8589934593<br> |[0x800003a4]:slli a5, a5, 11<br> [0x800003a8]:sd a5, 0(gp)<br>     |
|   2|[0x80003218]<br>0x00000000000001C0|- rs1 : x24<br> - rd : x23<br> - rs1 != rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < 32<br>                                                   |[0x800003b0]:slli s7, s8, 6<br> [0x800003b4]:sd s7, 8(gp)<br>      |
|   3|[0x80003220]<br>0x0000000000000000|- rs1 : x31<br> - rd : x0<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -34359738369<br>                                                      |[0x800003c4]:slli zero, t6, 0<br> [0x800003c8]:sd zero, 16(gp)<br> |
|   4|[0x80003228]<br>0x0000000000800000|- rs1 : x20<br> - rd : x28<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 8388608<br>                                                          |[0x800003d0]:slli t3, s4, 0<br> [0x800003d4]:sd t3, 24(gp)<br>     |
|   5|[0x80003230]<br>0x0000000000000000|- rs1 : x0<br> - rd : x18<br> - rs1_val == 0 and imm_val >= 0 and imm_val < 32<br>                                                                  |[0x800003dc]:slli s2, zero, 31<br> [0x800003e0]:sd s2, 32(gp)<br>  |
|   6|[0x80003238]<br>0x0000000000000000|- rs1 : x11<br> - rd : x29<br> - rs1_val > 0 and imm_val == 31<br> - rs1_val == 32768<br>                                                           |[0x800003e8]:slli t4, a1, 31<br> [0x800003ec]:sd t4, 40(gp)<br>    |
|   7|[0x80003240]<br>0x0000000000100000|- rs1 : x5<br> - rd : x27<br> - rs1_val == imm_val and imm_val > 0 and imm_val < 32<br> - rs1_val == 16<br> - imm_val == 16<br>                     |[0x800003f4]:slli s11, t0, 16<br> [0x800003f8]:sd s11, 48(gp)<br>  |
|   8|[0x80003248]<br>0x0000000000000000|- rs1 : x22<br> - rd : x7<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < 32<br> - rs1_val == -9223372036854775808<br>               |[0x80000404]:slli t2, s6, 12<br> [0x80000408]:sd t2, 56(gp)<br>    |
|   9|[0x80003250]<br>0x0000000000000000|- rs1 : x29<br> - rd : x12<br>                                                                                                                      |[0x80000410]:slli a2, t4, 17<br> [0x80000414]:sd a2, 64(gp)<br>    |
|  10|[0x80003258]<br>0xFFFFFFFF80000000|- rs1 : x6<br> - rd : x2<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < 32<br> - rs1_val == 9223372036854775807<br>                |[0x80000424]:slli sp, t1, 31<br> [0x80000428]:sd sp, 72(gp)<br>    |
|  11|[0x80003260]<br>0x0000000000080000|- rs1 : x28<br> - rd : x19<br> - rs1_val == 1 and imm_val >= 0 and imm_val < 32<br> - rs1_val == 1<br>                                              |[0x80000430]:slli s3, t3, 19<br> [0x80000434]:sd s3, 80(gp)<br>    |
|  12|[0x80003268]<br>0x0000000000000000|- rs1 : x14<br> - rd : x5<br> - imm_val == 1<br>                                                                                                    |[0x80000440]:slli t0, a4, 1<br> [0x80000444]:sd t0, 88(gp)<br>     |
|  13|[0x80003270]<br>0xFFFFFFFFFFFFFFFC|- rs1 : x17<br> - rd : x25<br> - imm_val == 2<br>                                                                                                   |[0x80000454]:slli s9, a7, 2<br> [0x80000458]:sd s9, 96(gp)<br>     |
|  14|[0x80003278]<br>0x0000000000200000|- rs1 : x16<br> - rd : x8<br> - rs1_val == 131072<br> - imm_val == 4<br>                                                                            |[0x80000460]:slli fp, a6, 4<br> [0x80000464]:sd fp, 104(gp)<br>    |
|  15|[0x80003280]<br>0xFFFFFFFFFFFFFF00|- rs1 : x25<br> - rd : x21<br> - rs1_val == -140737488355329<br> - imm_val == 8<br>                                                                 |[0x80000474]:slli s5, s9, 8<br> [0x80000478]:sd s5, 112(gp)<br>    |
|  16|[0x80003288]<br>0xFFFFFFFFC0000000|- rs1 : x4<br> - rd : x24<br> - rs1_val == -131073<br> - imm_val == 30<br>                                                                          |[0x80000484]:slli s8, tp, 30<br> [0x80000488]:sd s8, 120(gp)<br>   |
|  17|[0x80003290]<br>0xFFFFFFFFE0000000|- rs1 : x26<br> - rd : x16<br> - imm_val == 29<br>                                                                                                  |[0x80000490]:slli a6, s10, 29<br> [0x80000494]:sd a6, 128(gp)<br>  |
|  18|[0x80003298]<br>0xFFFFFFFFF8000000|- rs1 : x9<br> - rd : x6<br> - rs1_val == -134217729<br> - imm_val == 27<br>                                                                        |[0x800004a0]:slli t1, s1, 27<br> [0x800004a4]:sd t1, 136(gp)<br>   |
|  19|[0x800032a0]<br>0xFFFFFFFFBF800000|- rs1 : x2<br> - rd : x17<br> - rs1_val == -129<br> - imm_val == 23<br>                                                                             |[0x800004ac]:slli a7, sp, 23<br> [0x800004b0]:sd a7, 144(gp)<br>   |
|  20|[0x800032a8]<br>0x0000000000000000|- rs1 : x30<br> - rd : x4<br> - rs1_val == 137438953472<br> - imm_val == 15<br>                                                                     |[0x800004bc]:slli tp, t5, 15<br> [0x800004c0]:sd tp, 152(gp)<br>   |
|  21|[0x800032b0]<br>0xFFFFFFFFFFE00000|- rs1 : x27<br> - rd : x9<br> - rs1_val == -4398046511105<br> - imm_val == 21<br>                                                                   |[0x800004d0]:slli s1, s11, 21<br> [0x800004d4]:sd s1, 160(gp)<br>  |
|  22|[0x800032b8]<br>0xFFFFFFFFFFFFFC00|- rs1 : x19<br> - rd : x31<br> - rs1_val == -4503599627370497<br> - imm_val == 10<br>                                                               |[0x800004e4]:slli t6, s3, 10<br> [0x800004e8]:sd t6, 168(gp)<br>   |
|  23|[0x800032c0]<br>0x0000000000000004|- rs1 : x1<br> - rd : x26<br> - rs1_val == 2<br>                                                                                                    |[0x800004f0]:slli s10, ra, 1<br> [0x800004f4]:sd s10, 176(gp)<br>  |
|  24|[0x800032c8]<br>0x0000000020000000|- rs1 : x7<br> - rd : x1<br> - rs1_val == 4<br>                                                                                                     |[0x80000504]:slli ra, t2, 27<br> [0x80000508]:sd ra, 0(sp)<br>     |
|  25|[0x800032d0]<br>0x0000000000000000|- rs1 : x10<br> - rd : x14<br> - rs1_val == 8<br>                                                                                                   |[0x80000510]:slli a4, a0, 29<br> [0x80000514]:sd a4, 8(sp)<br>     |
|  26|[0x800032d8]<br>0x0000000000000040|- rs1 : x3<br> - rd : x11<br> - rs1_val == 32<br>                                                                                                   |[0x8000051c]:slli a1, gp, 1<br> [0x80000520]:sd a1, 16(sp)<br>     |
|  27|[0x800032e0]<br>0x0000000000020000|- rs1 : x18<br> - rd : x20<br> - rs1_val == 64<br>                                                                                                  |[0x80000528]:slli s4, s2, 11<br> [0x8000052c]:sd s4, 24(sp)<br>    |
|  28|[0x800032e8]<br>0x0000000000010000|- rs1 : x12<br> - rd : x13<br> - rs1_val == 128<br>                                                                                                 |[0x80000534]:slli a3, a2, 9<br> [0x80000538]:sd a3, 32(sp)<br>     |
|  29|[0x800032f0]<br>0x0000000000400000|- rs1 : x23<br> - rd : x3<br> - rs1_val == 256<br>                                                                                                  |[0x80000540]:slli gp, s7, 14<br> [0x80000544]:sd gp, 40(sp)<br>    |
|  30|[0x800032f8]<br>0x0000000040000000|- rs1 : x8<br> - rd : x30<br> - rs1_val == 512<br>                                                                                                  |[0x8000054c]:slli t5, fp, 21<br> [0x80000550]:sd t5, 48(sp)<br>    |
|  31|[0x80003300]<br>0xFFFFFFFF80000000|- rs1 : x13<br> - rd : x22<br> - rs1_val == 1024<br>                                                                                                |[0x80000558]:slli s6, a3, 21<br> [0x8000055c]:sd s6, 56(sp)<br>    |
|  32|[0x80003308]<br>0x0000000040000000|- rs1 : x21<br> - rd : x10<br> - rs1_val == 2048<br>                                                                                                |[0x80000568]:slli a0, s5, 19<br> [0x8000056c]:sd a0, 64(sp)<br>    |
|  33|[0x80003310]<br>0x0000000000000000|- rs1_val == 4096<br>                                                                                                                               |[0x80000574]:slli a1, a0, 30<br> [0x80000578]:sd a1, 72(sp)<br>    |
|  34|[0x80003318]<br>0x0000000000000000|- rs1_val == 8192<br>                                                                                                                               |[0x80000580]:slli a1, a0, 19<br> [0x80000584]:sd a1, 80(sp)<br>    |
|  35|[0x80003320]<br>0x0000000000800000|- rs1_val == 16384<br>                                                                                                                              |[0x8000058c]:slli a1, a0, 9<br> [0x80000590]:sd a1, 88(sp)<br>     |
|  36|[0x80003328]<br>0x0000000001000000|- rs1_val == 65536<br>                                                                                                                              |[0x80000598]:slli a1, a0, 8<br> [0x8000059c]:sd a1, 96(sp)<br>     |
|  37|[0x80003330]<br>0x0000000002000000|- rs1_val == 262144<br>                                                                                                                             |[0x800005a4]:slli a1, a0, 7<br> [0x800005a8]:sd a1, 104(sp)<br>    |
|  38|[0x80003338]<br>0x0000000002000000|- rs1_val == 524288<br>                                                                                                                             |[0x800005b0]:slli a1, a0, 6<br> [0x800005b4]:sd a1, 112(sp)<br>    |
|  39|[0x80003340]<br>0x0000000000000000|- rs1_val == 1048576<br>                                                                                                                            |[0x800005bc]:slli a1, a0, 17<br> [0x800005c0]:sd a1, 120(sp)<br>   |
|  40|[0x80003348]<br>0x0000000002000000|- rs1_val == 2097152<br>                                                                                                                            |[0x800005c8]:slli a1, a0, 4<br> [0x800005cc]:sd a1, 128(sp)<br>    |
|  41|[0x80003350]<br>0x0000000010000000|- rs1_val == 4194304<br>                                                                                                                            |[0x800005d4]:slli a1, a0, 6<br> [0x800005d8]:sd a1, 136(sp)<br>    |
|  42|[0x80003358]<br>0xFFFFFFFF80000000|- rs1_val == 16777216<br>                                                                                                                           |[0x800005e0]:slli a1, a0, 7<br> [0x800005e4]:sd a1, 144(sp)<br>    |
|  43|[0x80003360]<br>0x0000000000000000|- rs1_val == 33554432<br>                                                                                                                           |[0x800005ec]:slli a1, a0, 11<br> [0x800005f0]:sd a1, 152(sp)<br>   |
|  44|[0x80003368]<br>0x0000000020000000|- rs1_val == 67108864<br>                                                                                                                           |[0x800005f8]:slli a1, a0, 3<br> [0x800005fc]:sd a1, 160(sp)<br>    |
|  45|[0x80003370]<br>0x0000000000000000|- rs1_val == 134217728<br>                                                                                                                          |[0x80000604]:slli a1, a0, 8<br> [0x80000608]:sd a1, 168(sp)<br>    |
|  46|[0x80003378]<br>0x0000000000000000|- rs1_val == 268435456<br>                                                                                                                          |[0x80000610]:slli a1, a0, 13<br> [0x80000614]:sd a1, 176(sp)<br>   |
|  47|[0x80003380]<br>0x0000000000000000|- rs1_val == 536870912<br>                                                                                                                          |[0x8000061c]:slli a1, a0, 16<br> [0x80000620]:sd a1, 184(sp)<br>   |
|  48|[0x80003388]<br>0x0000000040000000|- rs1_val == 1073741824<br>                                                                                                                         |[0x80000628]:slli a1, a0, 0<br> [0x8000062c]:sd a1, 192(sp)<br>    |
|  49|[0x80003390]<br>0x0000000000000000|- rs1_val == 2147483648<br>                                                                                                                         |[0x80000638]:slli a1, a0, 6<br> [0x8000063c]:sd a1, 200(sp)<br>    |
|  50|[0x80003398]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                                                         |[0x80000648]:slli a1, a0, 23<br> [0x8000064c]:sd a1, 208(sp)<br>   |
|  51|[0x800033a0]<br>0x0000000000000000|- rs1_val == 8589934592<br>                                                                                                                         |[0x80000658]:slli a1, a0, 2<br> [0x8000065c]:sd a1, 216(sp)<br>    |
|  52|[0x800033a8]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                                                        |[0x80000668]:slli a1, a0, 14<br> [0x8000066c]:sd a1, 224(sp)<br>   |
|  53|[0x800033b0]<br>0x0000000000000000|- rs1_val == 34359738368<br>                                                                                                                        |[0x80000678]:slli a1, a0, 30<br> [0x8000067c]:sd a1, 232(sp)<br>   |
|  54|[0x800033b8]<br>0x0000000000000000|- rs1_val == 68719476736<br>                                                                                                                        |[0x80000688]:slli a1, a0, 4<br> [0x8000068c]:sd a1, 240(sp)<br>    |
|  55|[0x800033c0]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                                                       |[0x80000698]:slli a1, a0, 13<br> [0x8000069c]:sd a1, 248(sp)<br>   |
|  56|[0x800033c8]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                                                       |[0x800006a8]:slli a1, a0, 1<br> [0x800006ac]:sd a1, 256(sp)<br>    |
|  57|[0x800033d0]<br>0x0000000000000000|- rs1_val == 1099511627776<br>                                                                                                                      |[0x800006b8]:slli a1, a0, 8<br> [0x800006bc]:sd a1, 264(sp)<br>    |
|  58|[0x800033d8]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                                      |[0x800006c8]:slli a1, a0, 18<br> [0x800006cc]:sd a1, 272(sp)<br>   |
|  59|[0x800033e0]<br>0x0000000000000000|- rs1_val == 4398046511104<br>                                                                                                                      |[0x800006d8]:slli a1, a0, 27<br> [0x800006dc]:sd a1, 280(sp)<br>   |
|  60|[0x800033e8]<br>0x0000000000000000|- rs1_val == 8796093022208<br>                                                                                                                      |[0x800006e8]:slli a1, a0, 0<br> [0x800006ec]:sd a1, 288(sp)<br>    |
|  61|[0x800033f0]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                                     |[0x800006f8]:slli a1, a0, 10<br> [0x800006fc]:sd a1, 296(sp)<br>   |
|  62|[0x800033f8]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                                     |[0x80000708]:slli a1, a0, 4<br> [0x8000070c]:sd a1, 304(sp)<br>    |
|  63|[0x80003400]<br>0x0000000000000000|- rs1_val == 70368744177664<br>                                                                                                                     |[0x80000718]:slli a1, a0, 11<br> [0x8000071c]:sd a1, 312(sp)<br>   |
|  64|[0x80003408]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                                    |[0x80000728]:slli a1, a0, 0<br> [0x8000072c]:sd a1, 320(sp)<br>    |
|  65|[0x80003410]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                                    |[0x80000738]:slli a1, a0, 3<br> [0x8000073c]:sd a1, 328(sp)<br>    |
|  66|[0x80003418]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                                                    |[0x80000748]:slli a1, a0, 10<br> [0x8000074c]:sd a1, 336(sp)<br>   |
|  67|[0x80003420]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                                   |[0x80000758]:slli a1, a0, 10<br> [0x8000075c]:sd a1, 344(sp)<br>   |
|  68|[0x80003428]<br>0x0000000000000000|- rs1_val == 2251799813685248<br>                                                                                                                   |[0x80000768]:slli a1, a0, 31<br> [0x8000076c]:sd a1, 352(sp)<br>   |
|  69|[0x80003430]<br>0x0000000000000000|- rs1_val == 4503599627370496<br>                                                                                                                   |[0x80000778]:slli a1, a0, 27<br> [0x8000077c]:sd a1, 360(sp)<br>   |
|  70|[0x80003438]<br>0x0000000000000000|- rs1_val == 9007199254740992<br>                                                                                                                   |[0x80000788]:slli a1, a0, 3<br> [0x8000078c]:sd a1, 368(sp)<br>    |
|  71|[0x80003440]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                                  |[0x80000798]:slli a1, a0, 29<br> [0x8000079c]:sd a1, 376(sp)<br>   |
|  72|[0x80003448]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                                  |[0x800007a8]:slli a1, a0, 13<br> [0x800007ac]:sd a1, 384(sp)<br>   |
|  73|[0x80003450]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                                                  |[0x800007b8]:slli a1, a0, 10<br> [0x800007bc]:sd a1, 392(sp)<br>   |
|  74|[0x80003458]<br>0xFFFFFFFFFFFFE000|- rs1_val == -2199023255553<br>                                                                                                                     |[0x800007cc]:slli a1, a0, 13<br> [0x800007d0]:sd a1, 400(sp)<br>   |
|  75|[0x80003460]<br>0xFFFFFFFFFFFFFFC0|- rs1_val == -8796093022209<br>                                                                                                                     |[0x800007e0]:slli a1, a0, 6<br> [0x800007e4]:sd a1, 408(sp)<br>    |
|  76|[0x80003468]<br>0xFFFFFFFFFFFFFFF0|- rs1_val == -17592186044417<br>                                                                                                                    |[0x800007f4]:slli a1, a0, 4<br> [0x800007f8]:sd a1, 416(sp)<br>    |
|  77|[0x80003470]<br>0xFFFFFFFFFF800000|- rs1_val == -35184372088833<br>                                                                                                                    |[0x80000808]:slli a1, a0, 23<br> [0x8000080c]:sd a1, 424(sp)<br>   |
|  78|[0x80003478]<br>0xFFFFFFFFFFFFFFC0|- rs1_val == -70368744177665<br>                                                                                                                    |[0x8000081c]:slli a1, a0, 6<br> [0x80000820]:sd a1, 432(sp)<br>    |
|  79|[0x80003480]<br>0xFFFFFFFFFFFFFE00|- rs1_val == -281474976710657<br>                                                                                                                   |[0x80000830]:slli a1, a0, 9<br> [0x80000834]:sd a1, 440(sp)<br>    |
|  80|[0x80003488]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -562949953421313<br>                                                                                                                   |[0x80000844]:slli a1, a0, 1<br> [0x80000848]:sd a1, 448(sp)<br>    |
|  81|[0x80003490]<br>0xFFFFFFFFFFE00000|- rs1_val == -1125899906842625<br>                                                                                                                  |[0x80000858]:slli a1, a0, 21<br> [0x8000085c]:sd a1, 456(sp)<br>   |
|  82|[0x80003498]<br>0xFFFFFFFFFFE00000|- rs1_val == -2251799813685249<br>                                                                                                                  |[0x8000086c]:slli a1, a0, 21<br> [0x80000870]:sd a1, 464(sp)<br>   |
|  83|[0x800034a0]<br>0xFFFFFFFFFFFFF000|- rs1_val == -9007199254740993<br>                                                                                                                  |[0x80000880]:slli a1, a0, 12<br> [0x80000884]:sd a1, 472(sp)<br>   |
|  84|[0x800034a8]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == -18014398509481985<br>                                                                                                                 |[0x80000894]:slli a1, a0, 2<br> [0x80000898]:sd a1, 480(sp)<br>    |
|  85|[0x800034b0]<br>0xFFFFFFFFFFFFF000|- rs1_val == -36028797018963969<br>                                                                                                                 |[0x800008a8]:slli a1, a0, 12<br> [0x800008ac]:sd a1, 488(sp)<br>   |
|  86|[0x800034b8]<br>0xFFFFFFFFFFFF0000|- rs1_val == -72057594037927937<br>                                                                                                                 |[0x800008bc]:slli a1, a0, 16<br> [0x800008c0]:sd a1, 496(sp)<br>   |
|  87|[0x800034c0]<br>0xFFFFFFFFFFFE0000|- rs1_val == -144115188075855873<br>                                                                                                                |[0x800008d0]:slli a1, a0, 17<br> [0x800008d4]:sd a1, 504(sp)<br>   |
|  88|[0x800034c8]<br>0xFFFFFFFFFFFF8000|- rs1_val == -288230376151711745<br>                                                                                                                |[0x800008e4]:slli a1, a0, 15<br> [0x800008e8]:sd a1, 512(sp)<br>   |
|  89|[0x800034d0]<br>0xFFFFFFFFFFF80000|- rs1_val == -576460752303423489<br>                                                                                                                |[0x800008f8]:slli a1, a0, 19<br> [0x800008fc]:sd a1, 520(sp)<br>   |
|  90|[0x800034d8]<br>0xFFFFFFFFFFF80000|- rs1_val == -1152921504606846977<br>                                                                                                               |[0x8000090c]:slli a1, a0, 19<br> [0x80000910]:sd a1, 528(sp)<br>   |
|  91|[0x800034e0]<br>0xFFFFFFFFFFFFFFE0|- rs1_val == -2305843009213693953<br>                                                                                                               |[0x80000920]:slli a1, a0, 5<br> [0x80000924]:sd a1, 536(sp)<br>    |
|  92|[0x800034e8]<br>0xFFFFFFFFE0000000|- rs1_val == -4611686018427387905<br>                                                                                                               |[0x80000934]:slli a1, a0, 29<br> [0x80000938]:sd a1, 544(sp)<br>   |
|  93|[0x800034f0]<br>0xFFFFFFFFAAAAA000|- rs1_val == 6148914691236517205<br>                                                                                                                |[0x8000095c]:slli a1, a0, 13<br> [0x80000960]:sd a1, 552(sp)<br>   |
|  94|[0x800034f8]<br>0xFFFFFFFF80000000|- rs1_val == -6148914691236517206<br>                                                                                                               |[0x80000984]:slli a1, a0, 30<br> [0x80000988]:sd a1, 560(sp)<br>   |
|  95|[0x80003500]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                                 |[0x80000994]:slli a1, a0, 7<br> [0x80000998]:sd a1, 568(sp)<br>    |
|  96|[0x80003508]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                                 |[0x800009a4]:slli a1, a0, 9<br> [0x800009a8]:sd a1, 576(sp)<br>    |
|  97|[0x80003510]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                                 |[0x800009b4]:slli a1, a0, 18<br> [0x800009b8]:sd a1, 584(sp)<br>   |
|  98|[0x80003518]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                |[0x800009c4]:slli a1, a0, 30<br> [0x800009c8]:sd a1, 592(sp)<br>   |
|  99|[0x80003520]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                |[0x800009d4]:slli a1, a0, 9<br> [0x800009d8]:sd a1, 600(sp)<br>    |
| 100|[0x80003528]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                |[0x800009e4]:slli a1, a0, 19<br> [0x800009e8]:sd a1, 608(sp)<br>   |
| 101|[0x80003530]<br>0xFFFFFFFFFFFF8000|- rs1_val == -2<br>                                                                                                                                 |[0x800009f0]:slli a1, a0, 14<br> [0x800009f4]:sd a1, 616(sp)<br>   |
| 102|[0x80003538]<br>0xFFFFFFFFFFFFFFD0|- rs1_val == -3<br>                                                                                                                                 |[0x800009fc]:slli a1, a0, 4<br> [0x80000a00]:sd a1, 624(sp)<br>    |
| 103|[0x80003540]<br>0xFFFFFFFFFFF60000|- rs1_val == -5<br>                                                                                                                                 |[0x80000a08]:slli a1, a0, 17<br> [0x80000a0c]:sd a1, 632(sp)<br>   |
| 104|[0x80003548]<br>0xFFFFFFFFFFFEE000|- rs1_val == -9<br>                                                                                                                                 |[0x80000a14]:slli a1, a0, 13<br> [0x80000a18]:sd a1, 640(sp)<br>   |
| 105|[0x80003550]<br>0x0000000078000000|- rs1_val == -17<br>                                                                                                                                |[0x80000a20]:slli a1, a0, 27<br> [0x80000a24]:sd a1, 648(sp)<br>   |
| 106|[0x80003558]<br>0xFFFFFFFFFFFFF7C0|- rs1_val == -33<br>                                                                                                                                |[0x80000a2c]:slli a1, a0, 6<br> [0x80000a30]:sd a1, 656(sp)<br>    |
| 107|[0x80003560]<br>0xFFFFFFFFFFDF8000|- rs1_val == -65<br>                                                                                                                                |[0x80000a38]:slli a1, a0, 15<br> [0x80000a3c]:sd a1, 664(sp)<br>   |
| 108|[0x80003568]<br>0xFFFFFFFFFFEFF000|- rs1_val == -257<br>                                                                                                                               |[0x80000a44]:slli a1, a0, 12<br> [0x80000a48]:sd a1, 672(sp)<br>   |
| 109|[0x80003570]<br>0xFFFFFFFFBFE00000|- rs1_val == -513<br>                                                                                                                               |[0x80000a50]:slli a1, a0, 21<br> [0x80000a54]:sd a1, 680(sp)<br>   |
| 110|[0x80003578]<br>0xFFFFFFFFFF800000|- rs1_val == -1025<br>                                                                                                                              |[0x80000a5c]:slli a1, a0, 23<br> [0x80000a60]:sd a1, 688(sp)<br>   |
| 111|[0x80003580]<br>0xFFFFFFFFFEFFE000|- rs1_val == -2049<br>                                                                                                                              |[0x80000a6c]:slli a1, a0, 13<br> [0x80000a70]:sd a1, 696(sp)<br>   |
| 112|[0x80003588]<br>0xFFFFFFFFBFFC0000|- rs1_val == -4097<br>                                                                                                                              |[0x80000a7c]:slli a1, a0, 18<br> [0x80000a80]:sd a1, 704(sp)<br>   |
| 113|[0x80003590]<br>0xFFFFFFFFFFFDFFF0|- rs1_val == -8193<br>                                                                                                                              |[0x80000a8c]:slli a1, a0, 4<br> [0x80000a90]:sd a1, 712(sp)<br>    |
| 114|[0x80003598]<br>0xFFFFFFFFFFFFBFFF|- rs1_val == -16385<br>                                                                                                                             |[0x80000a9c]:slli a1, a0, 0<br> [0x80000aa0]:sd a1, 720(sp)<br>    |
| 115|[0x800035a0]<br>0xFFFFFFFF80000000|- rs1_val < 0 and imm_val == 31<br> - rs1_val == -32769<br>                                                                                         |[0x80000aac]:slli a1, a0, 31<br> [0x80000ab0]:sd a1, 728(sp)<br>   |
| 116|[0x800035a8]<br>0xFFFFFFFFDFFFE000|- rs1_val == -65537<br>                                                                                                                             |[0x80000abc]:slli a1, a0, 13<br> [0x80000ac0]:sd a1, 736(sp)<br>   |
| 117|[0x800035b0]<br>0xFFFFFFFFC0000000|- rs1_val == -262145<br>                                                                                                                            |[0x80000acc]:slli a1, a0, 30<br> [0x80000ad0]:sd a1, 744(sp)<br>   |
| 118|[0x800035b8]<br>0x000000007FFFF000|- rs1_val == -524289<br>                                                                                                                            |[0x80000adc]:slli a1, a0, 12<br> [0x80000ae0]:sd a1, 752(sp)<br>   |
| 119|[0x800035c0]<br>0xFFFFFFFFFDFFFFE0|- rs1_val == -1048577<br>                                                                                                                           |[0x80000aec]:slli a1, a0, 5<br> [0x80000af0]:sd a1, 760(sp)<br>    |
| 120|[0x800035c8]<br>0xFFFFFFFFBFFFFE00|- rs1_val == -2097153<br>                                                                                                                           |[0x80000afc]:slli a1, a0, 9<br> [0x80000b00]:sd a1, 768(sp)<br>    |
| 121|[0x800035d0]<br>0xFFFFFFFFFFFFE000|- rs1_val == -4194305<br>                                                                                                                           |[0x80000b0c]:slli a1, a0, 13<br> [0x80000b10]:sd a1, 776(sp)<br>   |
| 122|[0x800035d8]<br>0xFFFFFFFFFFFFF000|- rs1_val == -8388609<br>                                                                                                                           |[0x80000b1c]:slli a1, a0, 12<br> [0x80000b20]:sd a1, 784(sp)<br>   |
| 123|[0x800035e0]<br>0xFFFFFFFF80000000|- rs1_val == -16777217<br>                                                                                                                          |[0x80000b2c]:slli a1, a0, 31<br> [0x80000b30]:sd a1, 792(sp)<br>   |
| 124|[0x800035e8]<br>0xFFFFFFFFFFFFFC00|- rs1_val == -33554433<br>                                                                                                                          |[0x80000b3c]:slli a1, a0, 10<br> [0x80000b40]:sd a1, 800(sp)<br>   |
| 125|[0x800035f0]<br>0xFFFFFFFFF8000000|- rs1_val == -67108865<br>                                                                                                                          |[0x80000b4c]:slli a1, a0, 27<br> [0x80000b50]:sd a1, 808(sp)<br>   |
| 126|[0x800035f8]<br>0xFFFFFFFFC0000000|- rs1_val == -268435457<br>                                                                                                                         |[0x80000b5c]:slli a1, a0, 30<br> [0x80000b60]:sd a1, 816(sp)<br>   |
| 127|[0x80003600]<br>0xFFFFFFFFFFFF8000|- rs1_val == -536870913<br>                                                                                                                         |[0x80000b6c]:slli a1, a0, 15<br> [0x80000b70]:sd a1, 824(sp)<br>   |
| 128|[0x80003608]<br>0xFFFFFFFFFFFF0000|- rs1_val == -1073741825<br>                                                                                                                        |[0x80000b7c]:slli a1, a0, 16<br> [0x80000b80]:sd a1, 832(sp)<br>   |
| 129|[0x80003610]<br>0xFFFFFFFFF8000000|- rs1_val == -2147483649<br>                                                                                                                        |[0x80000b90]:slli a1, a0, 27<br> [0x80000b94]:sd a1, 840(sp)<br>   |
| 130|[0x80003618]<br>0xFFFFFFFFFFFFC000|- rs1_val == -4294967297<br>                                                                                                                        |[0x80000ba4]:slli a1, a0, 14<br> [0x80000ba8]:sd a1, 848(sp)<br>   |
| 131|[0x80003620]<br>0xFFFFFFFFFF800000|- rs1_val == -17179869185<br>                                                                                                                       |[0x80000bb8]:slli a1, a0, 23<br> [0x80000bbc]:sd a1, 856(sp)<br>   |
| 132|[0x80003628]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -68719476737<br>                                                                                                                       |[0x80000bcc]:slli a1, a0, 1<br> [0x80000bd0]:sd a1, 864(sp)<br>    |
| 133|[0x80003630]<br>0xFFFFFFFFFFFC0000|- rs1_val == -137438953473<br>                                                                                                                      |[0x80000be0]:slli a1, a0, 18<br> [0x80000be4]:sd a1, 872(sp)<br>   |
| 134|[0x80003638]<br>0xFFFFFFFFFFFC0000|- rs1_val == -274877906945<br>                                                                                                                      |[0x80000bf4]:slli a1, a0, 18<br> [0x80000bf8]:sd a1, 880(sp)<br>   |
| 135|[0x80003640]<br>0xFFFFFFFFFF800000|- rs1_val == -549755813889<br>                                                                                                                      |[0x80000c08]:slli a1, a0, 23<br> [0x80000c0c]:sd a1, 888(sp)<br>   |
| 136|[0x80003648]<br>0xFFFFFFFFFFFFFE00|- rs1_val == -1099511627777<br>                                                                                                                     |[0x80000c1c]:slli a1, a0, 9<br> [0x80000c20]:sd a1, 896(sp)<br>    |
