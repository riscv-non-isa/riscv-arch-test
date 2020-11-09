
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000c20')]      |
| SIG_REGION                | [('0x80003208', '0x80003640', '135 dwords')]      |
| COV_LABELS                | slliw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/slliw-01.S/slliw-01.S    |
| Total Number of coverpoints| 220     |
| Total Coverpoints Hit     | 220      |
| Total Signature Updates   | 135      |
| STAT1                     | 134      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c18]:slli a1, a0, 29
      [0x80000c1c]:sd a1, 928(gp)
 -- Signature Address: 0x80003638 Data: 0xFFFFFFFFE0000000
 -- Redundant Coverpoints hit by the op
      - opcode : slliw
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val < 0 and imm_val > 0 and imm_val < 32
      - rs1_val == -72057594037927937
      - imm_val == 29






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
|   1|[0x80003208]<br>0xFFFFFFFFFFFFFFFE|- opcode : slliw<br> - rs1 : x6<br> - rd : x6<br> - rs1 == rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < 32<br> - rs1_val == -8796093022209<br> - imm_val == 1<br> |[0x800003a4]:slli t1, t1, 1<br> [0x800003a8]:sd t1, 0(tp)<br>        |
|   2|[0x80003210]<br>0xFFFFFFFFAAAAA000|- rs1 : x17<br> - rd : x23<br> - rs1 != rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < 32<br> - rs1_val == 6148914691236517205<br>                                  |[0x800003cc]:slli s7, a7, 13<br> [0x800003d0]:sd s7, 8(tp)<br>       |
|   3|[0x80003218]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x20<br> - rd : x12<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -68719476737<br>                                                                         |[0x800003e0]:slli a2, s4, 0<br> [0x800003e4]:sd a2, 16(tp)<br>       |
|   4|[0x80003220]<br>0x0000000000000400|- rs1 : x1<br> - rd : x3<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 1024<br>                                                                                   |[0x800003ec]:slli gp, ra, 0<br> [0x800003f0]:sd gp, 24(tp)<br>       |
|   5|[0x80003228]<br>0x0000000000000000|- rs1 : x0<br> - rd : x19<br> - rs1_val == 0 and imm_val >= 0 and imm_val < 32<br>                                                                                      |[0x80000400]:slli s3, zero, 31<br> [0x80000404]:sd s3, 32(tp)<br>    |
|   6|[0x80003230]<br>0x0000000000000000|- rs1 : x14<br> - rd : x17<br> - rs1_val > 0 and imm_val == 31<br> - rs1_val == 70368744177664<br>                                                                      |[0x80000410]:slli a7, a4, 31<br> [0x80000414]:sd a7, 40(tp)<br>      |
|   7|[0x80003238]<br>0x0000000000000002|- rs1 : x5<br> - rd : x31<br> - rs1_val == imm_val and imm_val > 0 and imm_val < 32<br> - rs1_val == 1 and imm_val >= 0 and imm_val < 32<br> - rs1_val == 1<br>         |[0x8000041c]:slli t6, t0, 1<br> [0x80000420]:sd t6, 48(tp)<br>       |
|   8|[0x80003240]<br>0x0000000000000000|- rs1 : x24<br> - rd : x21<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < 32<br> - rs1_val == -9223372036854775808<br>                                  |[0x8000042c]:slli s5, s8, 6<br> [0x80000430]:sd s5, 56(tp)<br>       |
|   9|[0x80003248]<br>0x0000000000000000|- rs1 : x30<br> - rd : x16<br> - imm_val == 8<br>                                                                                                                       |[0x80000438]:slli a6, t5, 8<br> [0x8000043c]:sd a6, 64(tp)<br>       |
|  10|[0x80003250]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x15<br> - rd : x13<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < 32<br> - rs1_val == 9223372036854775807<br>                                  |[0x8000044c]:slli a3, a5, 0<br> [0x80000450]:sd a3, 72(tp)<br>       |
|  11|[0x80003258]<br>0xFFFFFFFFFFFFFFFC|- rs1 : x8<br> - rd : x2<br> - rs1_val == -17592186044417<br> - imm_val == 2<br>                                                                                        |[0x80000460]:slli sp, fp, 2<br> [0x80000464]:sd sp, 80(tp)<br>       |
|  12|[0x80003260]<br>0x0000000000000000|- rs1 : x10<br> - rd : x28<br> - rs1_val == 8796093022208<br> - imm_val == 4<br>                                                                                        |[0x80000470]:slli t3, a0, 4<br> [0x80000474]:sd t3, 88(tp)<br>       |
|  13|[0x80003268]<br>0x0000000000000000|- rs1 : x31<br> - rd : x22<br> - rs1_val == 67108864<br> - imm_val == 16<br>                                                                                            |[0x8000047c]:slli s6, t6, 16<br> [0x80000480]:sd s6, 96(tp)<br>      |
|  14|[0x80003270]<br>0xFFFFFFFF80000000|- rs1 : x7<br> - rd : x26<br> - imm_val == 30<br>                                                                                                                       |[0x80000488]:slli s10, t2, 30<br> [0x8000048c]:sd s10, 104(tp)<br>   |
|  15|[0x80003278]<br>0x0000000000000000|- rs1 : x11<br> - rd : x0<br> - rs1_val == -72057594037927937<br> - imm_val == 29<br>                                                                                   |[0x8000049c]:slli zero, a1, 29<br> [0x800004a0]:sd zero, 112(tp)<br> |
|  16|[0x80003280]<br>0x0000000000000000|- rs1 : x3<br> - rd : x8<br> - rs1_val == 562949953421312<br> - imm_val == 27<br>                                                                                       |[0x800004ac]:slli fp, gp, 27<br> [0x800004b0]:sd fp, 120(tp)<br>     |
|  17|[0x80003288]<br>0x0000000000000000|- rs1 : x19<br> - rd : x9<br> - rs1_val == 134217728<br> - imm_val == 23<br>                                                                                            |[0x800004b8]:slli s1, s3, 23<br> [0x800004bc]:sd s1, 128(tp)<br>     |
|  18|[0x80003290]<br>0xFFFFFFFFFDFF8000|- rs1 : x27<br> - rd : x25<br> - rs1_val == -1025<br> - imm_val == 15<br>                                                                                               |[0x800004c4]:slli s9, s11, 15<br> [0x800004c8]:sd s9, 136(tp)<br>    |
|  19|[0x80003298]<br>0x0000000000000000|- rs1 : x13<br> - rd : x4<br> - rs1_val == 2199023255552<br> - imm_val == 21<br>                                                                                        |[0x800004dc]:slli tp, a3, 21<br> [0x800004e0]:sd tp, 0(gp)<br>       |
|  20|[0x800032a0]<br>0x0000000000000000|- rs1 : x12<br> - rd : x29<br> - imm_val == 10<br>                                                                                                                      |[0x800004ec]:slli t4, a2, 10<br> [0x800004f0]:sd t4, 8(gp)<br>       |
|  21|[0x800032a8]<br>0x0000000000000004|- rs1 : x21<br> - rd : x30<br> - rs1_val == 2<br>                                                                                                                       |[0x800004f8]:slli t5, s5, 1<br> [0x800004fc]:sd t5, 16(gp)<br>       |
|  22|[0x800032b0]<br>0x0000000000008000|- rs1 : x26<br> - rd : x15<br> - rs1_val == 4<br>                                                                                                                       |[0x80000504]:slli a5, s10, 13<br> [0x80000508]:sd a5, 24(gp)<br>     |
|  23|[0x800032b8]<br>0x0000000000000000|- rs1 : x25<br> - rd : x10<br> - rs1_val == 8<br>                                                                                                                       |[0x80000510]:slli a0, s9, 31<br> [0x80000514]:sd a0, 32(gp)<br>      |
|  24|[0x800032c0]<br>0x0000000000020000|- rs1 : x9<br> - rd : x14<br> - rs1_val == 16<br>                                                                                                                       |[0x8000051c]:slli a4, s1, 13<br> [0x80000520]:sd a4, 40(gp)<br>      |
|  25|[0x800032c8]<br>0x0000000000800000|- rs1 : x2<br> - rd : x18<br> - rs1_val == 32<br>                                                                                                                       |[0x80000528]:slli s2, sp, 18<br> [0x8000052c]:sd s2, 48(gp)<br>      |
|  26|[0x800032d0]<br>0x0000000000020000|- rs1 : x4<br> - rd : x20<br> - rs1_val == 64<br>                                                                                                                       |[0x80000534]:slli s4, tp, 11<br> [0x80000538]:sd s4, 56(gp)<br>      |
|  27|[0x800032d8]<br>0x0000000000800000|- rs1 : x18<br> - rd : x11<br> - rs1_val == 128<br>                                                                                                                     |[0x80000540]:slli a1, s2, 16<br> [0x80000544]:sd a1, 64(gp)<br>      |
|  28|[0x800032e0]<br>0x0000000000004000|- rs1 : x28<br> - rd : x5<br> - rs1_val == 256<br>                                                                                                                      |[0x8000054c]:slli t0, t3, 6<br> [0x80000550]:sd t0, 72(gp)<br>       |
|  29|[0x800032e8]<br>0x0000000010000000|- rs1 : x16<br> - rd : x27<br> - rs1_val == 512<br>                                                                                                                     |[0x80000558]:slli s11, a6, 19<br> [0x8000055c]:sd s11, 80(gp)<br>    |
|  30|[0x800032f0]<br>0x0000000000000000|- rs1 : x29<br> - rd : x1<br> - rs1_val == 2048<br>                                                                                                                     |[0x80000568]:slli ra, t4, 27<br> [0x8000056c]:sd ra, 88(gp)<br>      |
|  31|[0x800032f8]<br>0x0000000000080000|- rs1 : x22<br> - rd : x7<br> - rs1_val == 4096<br>                                                                                                                     |[0x80000574]:slli t2, s6, 7<br> [0x80000578]:sd t2, 96(gp)<br>       |
|  32|[0x80003300]<br>0x0000000000002000|- rs1 : x23<br> - rd : x24<br> - rs1_val == 8192<br>                                                                                                                    |[0x80000580]:slli s8, s7, 0<br> [0x80000584]:sd s8, 104(gp)<br>      |
|  33|[0x80003308]<br>0x0000000010000000|- rs1_val == 16384<br>                                                                                                                                                  |[0x8000058c]:slli a1, a0, 14<br> [0x80000590]:sd a1, 112(gp)<br>     |
|  34|[0x80003310]<br>0x0000000000040000|- rs1_val == 32768<br>                                                                                                                                                  |[0x80000598]:slli a1, a0, 3<br> [0x8000059c]:sd a1, 120(gp)<br>      |
|  35|[0x80003318]<br>0x0000000000020000|- rs1_val == 65536<br>                                                                                                                                                  |[0x800005a4]:slli a1, a0, 1<br> [0x800005a8]:sd a1, 128(gp)<br>      |
|  36|[0x80003320]<br>0x0000000010000000|- rs1_val == 131072<br>                                                                                                                                                 |[0x800005b0]:slli a1, a0, 11<br> [0x800005b4]:sd a1, 136(gp)<br>     |
|  37|[0x80003328]<br>0x0000000000100000|- rs1_val == 262144<br>                                                                                                                                                 |[0x800005bc]:slli a1, a0, 2<br> [0x800005c0]:sd a1, 144(gp)<br>      |
|  38|[0x80003330]<br>0x0000000000000000|- rs1_val == 524288<br>                                                                                                                                                 |[0x800005c8]:slli a1, a0, 30<br> [0x800005cc]:sd a1, 152(gp)<br>     |
|  39|[0x80003338]<br>0x0000000000200000|- rs1_val == 1048576<br>                                                                                                                                                |[0x800005d4]:slli a1, a0, 1<br> [0x800005d8]:sd a1, 160(gp)<br>      |
|  40|[0x80003340]<br>0x0000000000000000|- rs1_val == 2097152<br>                                                                                                                                                |[0x800005e0]:slli a1, a0, 23<br> [0x800005e4]:sd a1, 168(gp)<br>     |
|  41|[0x80003348]<br>0x0000000000400000|- rs1_val == 4194304<br>                                                                                                                                                |[0x800005ec]:slli a1, a0, 0<br> [0x800005f0]:sd a1, 176(gp)<br>      |
|  42|[0x80003350]<br>0x0000000000000000|- rs1_val == 8388608<br>                                                                                                                                                |[0x800005f8]:slli a1, a0, 15<br> [0x800005fc]:sd a1, 184(gp)<br>     |
|  43|[0x80003358]<br>0xFFFFFFFF80000000|- rs1_val == 16777216<br>                                                                                                                                               |[0x80000604]:slli a1, a0, 7<br> [0x80000608]:sd a1, 192(gp)<br>      |
|  44|[0x80003360]<br>0x0000000000000000|- rs1_val == 33554432<br>                                                                                                                                               |[0x80000610]:slli a1, a0, 23<br> [0x80000614]:sd a1, 200(gp)<br>     |
|  45|[0x80003368]<br>0x0000000000000000|- rs1_val == 268435456<br>                                                                                                                                              |[0x8000061c]:slli a1, a0, 16<br> [0x80000620]:sd a1, 208(gp)<br>     |
|  46|[0x80003370]<br>0x0000000000000000|- rs1_val == 536870912<br>                                                                                                                                              |[0x80000628]:slli a1, a0, 11<br> [0x8000062c]:sd a1, 216(gp)<br>     |
|  47|[0x80003378]<br>0x0000000000000000|- rs1_val == 1073741824<br>                                                                                                                                             |[0x80000634]:slli a1, a0, 21<br> [0x80000638]:sd a1, 224(gp)<br>     |
|  48|[0x80003380]<br>0x0000000000000000|- rs1_val == 2147483648<br>                                                                                                                                             |[0x80000644]:slli a1, a0, 7<br> [0x80000648]:sd a1, 232(gp)<br>      |
|  49|[0x80003388]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                                                                             |[0x80000654]:slli a1, a0, 9<br> [0x80000658]:sd a1, 240(gp)<br>      |
|  50|[0x80003390]<br>0x0000000000000000|- rs1_val == 8589934592<br>                                                                                                                                             |[0x80000664]:slli a1, a0, 11<br> [0x80000668]:sd a1, 248(gp)<br>     |
|  51|[0x80003398]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                                                                            |[0x80000674]:slli a1, a0, 5<br> [0x80000678]:sd a1, 256(gp)<br>      |
|  52|[0x800033a0]<br>0x0000000000000000|- rs1_val == 34359738368<br>                                                                                                                                            |[0x80000684]:slli a1, a0, 15<br> [0x80000688]:sd a1, 264(gp)<br>     |
|  53|[0x800033a8]<br>0x0000000000000000|- rs1_val == 68719476736<br>                                                                                                                                            |[0x80000694]:slli a1, a0, 6<br> [0x80000698]:sd a1, 272(gp)<br>      |
|  54|[0x800033b0]<br>0x0000000000000000|- rs1_val == 137438953472<br>                                                                                                                                           |[0x800006a4]:slli a1, a0, 10<br> [0x800006a8]:sd a1, 280(gp)<br>     |
|  55|[0x800033b8]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                                                                           |[0x800006b4]:slli a1, a0, 8<br> [0x800006b8]:sd a1, 288(gp)<br>      |
|  56|[0x800033c0]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                                                                           |[0x800006c4]:slli a1, a0, 3<br> [0x800006c8]:sd a1, 296(gp)<br>      |
|  57|[0x800033c8]<br>0x0000000000000000|- rs1_val == 1099511627776<br>                                                                                                                                          |[0x800006d4]:slli a1, a0, 18<br> [0x800006d8]:sd a1, 304(gp)<br>     |
|  58|[0x800033d0]<br>0x0000000000000000|- rs1_val == 4398046511104<br>                                                                                                                                          |[0x800006e4]:slli a1, a0, 18<br> [0x800006e8]:sd a1, 312(gp)<br>     |
|  59|[0x800033d8]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                                                         |[0x800006f4]:slli a1, a0, 5<br> [0x800006f8]:sd a1, 320(gp)<br>      |
|  60|[0x800033e0]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                                                         |[0x80000704]:slli a1, a0, 12<br> [0x80000708]:sd a1, 328(gp)<br>     |
|  61|[0x800033e8]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                                                        |[0x80000714]:slli a1, a0, 0<br> [0x80000718]:sd a1, 336(gp)<br>      |
|  62|[0x800033f0]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                                                        |[0x80000724]:slli a1, a0, 19<br> [0x80000728]:sd a1, 344(gp)<br>     |
|  63|[0x800033f8]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                                                       |[0x80000734]:slli a1, a0, 0<br> [0x80000738]:sd a1, 352(gp)<br>      |
|  64|[0x80003400]<br>0x0000000000000000|- rs1_val == 2251799813685248<br>                                                                                                                                       |[0x80000744]:slli a1, a0, 21<br> [0x80000748]:sd a1, 360(gp)<br>     |
|  65|[0x80003408]<br>0x0000000000000000|- rs1_val == 4503599627370496<br>                                                                                                                                       |[0x80000754]:slli a1, a0, 17<br> [0x80000758]:sd a1, 368(gp)<br>     |
|  66|[0x80003410]<br>0x0000000000000000|- rs1_val == 9007199254740992<br>                                                                                                                                       |[0x80000764]:slli a1, a0, 29<br> [0x80000768]:sd a1, 376(gp)<br>     |
|  67|[0x80003418]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                                                      |[0x80000774]:slli a1, a0, 29<br> [0x80000778]:sd a1, 384(gp)<br>     |
|  68|[0x80003420]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                                                      |[0x80000784]:slli a1, a0, 17<br> [0x80000788]:sd a1, 392(gp)<br>     |
|  69|[0x80003428]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                                                                      |[0x80000794]:slli a1, a0, 21<br> [0x80000798]:sd a1, 400(gp)<br>     |
|  70|[0x80003430]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                                                     |[0x800007a4]:slli a1, a0, 14<br> [0x800007a8]:sd a1, 408(gp)<br>     |
|  71|[0x80003438]<br>0xFFFFFFFFFFFFFC00|- rs1_val == -2199023255553<br>                                                                                                                                         |[0x800007b8]:slli a1, a0, 10<br> [0x800007bc]:sd a1, 416(gp)<br>     |
|  72|[0x80003440]<br>0xFFFFFFFFFFFF0000|- rs1_val == -4398046511105<br>                                                                                                                                         |[0x800007cc]:slli a1, a0, 16<br> [0x800007d0]:sd a1, 424(gp)<br>     |
|  73|[0x80003448]<br>0xFFFFFFFFFFFFFFF0|- rs1_val == -35184372088833<br>                                                                                                                                        |[0x800007e0]:slli a1, a0, 4<br> [0x800007e4]:sd a1, 432(gp)<br>      |
|  74|[0x80003450]<br>0xFFFFFFFFFFFFFFF0|- rs1_val == -70368744177665<br>                                                                                                                                        |[0x800007f4]:slli a1, a0, 4<br> [0x800007f8]:sd a1, 440(gp)<br>      |
|  75|[0x80003458]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -140737488355329<br>                                                                                                                                       |[0x80000808]:slli a1, a0, 0<br> [0x8000080c]:sd a1, 448(gp)<br>      |
|  76|[0x80003460]<br>0xFFFFFFFFFFFFE000|- rs1_val == -281474976710657<br>                                                                                                                                       |[0x8000081c]:slli a1, a0, 13<br> [0x80000820]:sd a1, 456(gp)<br>     |
|  77|[0x80003468]<br>0xFFFFFFFFF8000000|- rs1_val == -562949953421313<br>                                                                                                                                       |[0x80000830]:slli a1, a0, 27<br> [0x80000834]:sd a1, 464(gp)<br>     |
|  78|[0x80003470]<br>0xFFFFFFFFFFF80000|- rs1_val == -1125899906842625<br>                                                                                                                                      |[0x80000844]:slli a1, a0, 19<br> [0x80000848]:sd a1, 472(gp)<br>     |
|  79|[0x80003478]<br>0xFFFFFFFFFFFF0000|- rs1_val == -2251799813685249<br>                                                                                                                                      |[0x80000858]:slli a1, a0, 16<br> [0x8000085c]:sd a1, 480(gp)<br>     |
|  80|[0x80003480]<br>0xFFFFFFFFFFFFFF00|- rs1_val == -4503599627370497<br>                                                                                                                                      |[0x8000086c]:slli a1, a0, 8<br> [0x80000870]:sd a1, 488(gp)<br>      |
|  81|[0x80003488]<br>0xFFFFFFFFFFFFFF00|- rs1_val == -18014398509481985<br>                                                                                                                                     |[0x80000880]:slli a1, a0, 8<br> [0x80000884]:sd a1, 496(gp)<br>      |
|  82|[0x80003490]<br>0xFFFFFFFFFFFFFFC0|- rs1_val == -36028797018963969<br>                                                                                                                                     |[0x80000894]:slli a1, a0, 6<br> [0x80000898]:sd a1, 504(gp)<br>      |
|  83|[0x80003498]<br>0xFFFFFFFFFFFFFFC0|- rs1_val == -144115188075855873<br>                                                                                                                                    |[0x800008a8]:slli a1, a0, 6<br> [0x800008ac]:sd a1, 512(gp)<br>      |
|  84|[0x800034a0]<br>0xFFFFFFFFFFFE0000|- rs1_val == -288230376151711745<br>                                                                                                                                    |[0x800008bc]:slli a1, a0, 17<br> [0x800008c0]:sd a1, 520(gp)<br>     |
|  85|[0x800034a8]<br>0xFFFFFFFFC0000000|- rs1_val == -576460752303423489<br>                                                                                                                                    |[0x800008d0]:slli a1, a0, 30<br> [0x800008d4]:sd a1, 528(gp)<br>     |
|  86|[0x800034b0]<br>0xFFFFFFFFFFFFF800|- rs1_val == -1152921504606846977<br>                                                                                                                                   |[0x800008e4]:slli a1, a0, 11<br> [0x800008e8]:sd a1, 536(gp)<br>     |
|  87|[0x800034b8]<br>0xFFFFFFFF80000000|- rs1_val < 0 and imm_val == 31<br> - rs1_val == -2305843009213693953<br>                                                                                               |[0x800008f8]:slli a1, a0, 31<br> [0x800008fc]:sd a1, 544(gp)<br>     |
|  88|[0x800034c0]<br>0xFFFFFFFFC0000000|- rs1_val == -4611686018427387905<br>                                                                                                                                   |[0x8000090c]:slli a1, a0, 30<br> [0x80000910]:sd a1, 552(gp)<br>     |
|  89|[0x800034c8]<br>0x0000000000000000|- rs1_val == -6148914691236517206<br>                                                                                                                                   |[0x80000934]:slli a1, a0, 31<br> [0x80000938]:sd a1, 560(gp)<br>     |
|  90|[0x800034d0]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                                                     |[0x80000944]:slli a1, a0, 23<br> [0x80000948]:sd a1, 568(gp)<br>     |
|  91|[0x800034d8]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                                                     |[0x80000954]:slli a1, a0, 3<br> [0x80000958]:sd a1, 576(gp)<br>      |
|  92|[0x800034e0]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                                                    |[0x80000964]:slli a1, a0, 29<br> [0x80000968]:sd a1, 584(gp)<br>     |
|  93|[0x800034e8]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                                                    |[0x80000974]:slli a1, a0, 2<br> [0x80000978]:sd a1, 592(gp)<br>      |
|  94|[0x800034f0]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                                                    |[0x80000984]:slli a1, a0, 18<br> [0x80000988]:sd a1, 600(gp)<br>     |
|  95|[0x800034f8]<br>0xFFFFFFFFFFFF0000|- rs1_val == -2<br>                                                                                                                                                     |[0x80000990]:slli a1, a0, 15<br> [0x80000994]:sd a1, 608(gp)<br>     |
|  96|[0x80003500]<br>0xFFFFFFFFFFFE8000|- rs1_val == -3<br>                                                                                                                                                     |[0x8000099c]:slli a1, a0, 15<br> [0x800009a0]:sd a1, 616(gp)<br>     |
|  97|[0x80003508]<br>0xFFFFFFFFD8000000|- rs1_val == -5<br>                                                                                                                                                     |[0x800009a8]:slli a1, a0, 27<br> [0x800009ac]:sd a1, 624(gp)<br>     |
|  98|[0x80003510]<br>0xFFFFFFFFB8000000|- rs1_val == -9<br>                                                                                                                                                     |[0x800009b4]:slli a1, a0, 27<br> [0x800009b8]:sd a1, 632(gp)<br>     |
|  99|[0x80003518]<br>0xFFFFFFFFFDE00000|- rs1_val == -17<br>                                                                                                                                                    |[0x800009c0]:slli a1, a0, 21<br> [0x800009c4]:sd a1, 640(gp)<br>     |
| 100|[0x80003520]<br>0xFFFFFFFFFFFFDF00|- rs1_val == -33<br>                                                                                                                                                    |[0x800009cc]:slli a1, a0, 8<br> [0x800009d0]:sd a1, 648(gp)<br>      |
| 101|[0x80003528]<br>0xFFFFFFFFFFFFF7E0|- rs1_val == -65<br>                                                                                                                                                    |[0x800009d8]:slli a1, a0, 5<br> [0x800009dc]:sd a1, 656(gp)<br>      |
| 102|[0x80003530]<br>0xFFFFFFFFFFFFFF7F|- rs1_val == -129<br>                                                                                                                                                   |[0x800009e4]:slli a1, a0, 0<br> [0x800009e8]:sd a1, 664(gp)<br>      |
| 103|[0x80003538]<br>0xFFFFFFFFFFFFEFF0|- rs1_val == -257<br>                                                                                                                                                   |[0x800009f0]:slli a1, a0, 4<br> [0x800009f4]:sd a1, 672(gp)<br>      |
| 104|[0x80003540]<br>0xFFFFFFFFFF7FC000|- rs1_val == -513<br>                                                                                                                                                   |[0x800009fc]:slli a1, a0, 14<br> [0x80000a00]:sd a1, 680(gp)<br>     |
| 105|[0x80003548]<br>0xFFFFFFFFFF7FF000|- rs1_val == -2049<br>                                                                                                                                                  |[0x80000a0c]:slli a1, a0, 12<br> [0x80000a10]:sd a1, 688(gp)<br>     |
| 106|[0x80003550]<br>0xFFFFFFFFFFF7FF80|- rs1_val == -4097<br>                                                                                                                                                  |[0x80000a1c]:slli a1, a0, 7<br> [0x80000a20]:sd a1, 696(gp)<br>      |
| 107|[0x80003558]<br>0xFFFFFFFFEFFF8000|- rs1_val == -8193<br>                                                                                                                                                  |[0x80000a2c]:slli a1, a0, 15<br> [0x80000a30]:sd a1, 704(gp)<br>     |
| 108|[0x80003560]<br>0xFFFFFFFFFFF80000|- rs1_val == -16385<br>                                                                                                                                                 |[0x80000a3c]:slli a1, a0, 19<br> [0x80000a40]:sd a1, 712(gp)<br>     |
| 109|[0x80003568]<br>0xFFFFFFFFF7FFF000|- rs1_val == -32769<br>                                                                                                                                                 |[0x80000a4c]:slli a1, a0, 12<br> [0x80000a50]:sd a1, 720(gp)<br>     |
| 110|[0x80003570]<br>0xFFFFFFFFFFFC0000|- rs1_val == -65537<br>                                                                                                                                                 |[0x80000a5c]:slli a1, a0, 18<br> [0x80000a60]:sd a1, 728(gp)<br>     |
| 111|[0x80003578]<br>0xFFFFFFFFFFE00000|- rs1_val == -131073<br>                                                                                                                                                |[0x80000a6c]:slli a1, a0, 21<br> [0x80000a70]:sd a1, 736(gp)<br>     |
| 112|[0x80003580]<br>0xFFFFFFFFFFFF0000|- rs1_val == -262145<br>                                                                                                                                                |[0x80000a7c]:slli a1, a0, 16<br> [0x80000a80]:sd a1, 744(gp)<br>     |
| 113|[0x80003588]<br>0xFFFFFFFFFFFF0000|- rs1_val == -524289<br>                                                                                                                                                |[0x80000a8c]:slli a1, a0, 16<br> [0x80000a90]:sd a1, 752(gp)<br>     |
| 114|[0x80003590]<br>0xFFFFFFFFFEFFFFF0|- rs1_val == -1048577<br>                                                                                                                                               |[0x80000a9c]:slli a1, a0, 4<br> [0x80000aa0]:sd a1, 760(gp)<br>      |
| 115|[0x80003598]<br>0xFFFFFFFFFFFFE000|- rs1_val == -2097153<br>                                                                                                                                               |[0x80000aac]:slli a1, a0, 13<br> [0x80000ab0]:sd a1, 768(gp)<br>     |
| 116|[0x800035a0]<br>0xFFFFFFFFFFFFFC00|- rs1_val == -4194305<br>                                                                                                                                               |[0x80000abc]:slli a1, a0, 10<br> [0x80000ac0]:sd a1, 776(gp)<br>     |
| 117|[0x800035a8]<br>0xFFFFFFFFE0000000|- rs1_val == -8388609<br>                                                                                                                                               |[0x80000acc]:slli a1, a0, 29<br> [0x80000ad0]:sd a1, 784(gp)<br>     |
| 118|[0x800035b0]<br>0xFFFFFFFFFEFFFFFF|- rs1_val == -16777217<br>                                                                                                                                              |[0x80000adc]:slli a1, a0, 0<br> [0x80000ae0]:sd a1, 792(gp)<br>      |
| 119|[0x800035b8]<br>0xFFFFFFFFFFFFFF80|- rs1_val == -33554433<br>                                                                                                                                              |[0x80000aec]:slli a1, a0, 7<br> [0x80000af0]:sd a1, 800(gp)<br>      |
| 120|[0x800035c0]<br>0xFFFFFFFFFFFFE000|- rs1_val == -67108865<br>                                                                                                                                              |[0x80000afc]:slli a1, a0, 13<br> [0x80000b00]:sd a1, 808(gp)<br>     |
| 121|[0x800035c8]<br>0xFFFFFFFFFFFFF800|- rs1_val == -134217729<br>                                                                                                                                             |[0x80000b0c]:slli a1, a0, 11<br> [0x80000b10]:sd a1, 816(gp)<br>     |
| 122|[0x800035d0]<br>0xFFFFFFFFFFFFFE00|- rs1_val == -268435457<br>                                                                                                                                             |[0x80000b1c]:slli a1, a0, 9<br> [0x80000b20]:sd a1, 824(gp)<br>      |
| 123|[0x800035d8]<br>0xFFFFFFFFFFFFF800|- rs1_val == -536870913<br>                                                                                                                                             |[0x80000b2c]:slli a1, a0, 11<br> [0x80000b30]:sd a1, 832(gp)<br>     |
| 124|[0x800035e0]<br>0xFFFFFFFFFFFFFFF0|- rs1_val == -1073741825<br>                                                                                                                                            |[0x80000b3c]:slli a1, a0, 4<br> [0x80000b40]:sd a1, 840(gp)<br>      |
| 125|[0x800035e8]<br>0xFFFFFFFFC0000000|- rs1_val == -2147483649<br>                                                                                                                                            |[0x80000b50]:slli a1, a0, 30<br> [0x80000b54]:sd a1, 848(gp)<br>     |
| 126|[0x800035f0]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -4294967297<br>                                                                                                                                            |[0x80000b64]:slli a1, a0, 1<br> [0x80000b68]:sd a1, 856(gp)<br>      |
| 127|[0x800035f8]<br>0xFFFFFFFFFFFFF000|- rs1_val == -8589934593<br>                                                                                                                                            |[0x80000b78]:slli a1, a0, 12<br> [0x80000b7c]:sd a1, 864(gp)<br>     |
| 128|[0x80003600]<br>0xFFFFFFFFFFE00000|- rs1_val == -17179869185<br>                                                                                                                                           |[0x80000b8c]:slli a1, a0, 21<br> [0x80000b90]:sd a1, 872(gp)<br>     |
| 129|[0x80003608]<br>0xFFFFFFFFE0000000|- rs1_val == -34359738369<br>                                                                                                                                           |[0x80000ba0]:slli a1, a0, 29<br> [0x80000ba4]:sd a1, 880(gp)<br>     |
| 130|[0x80003610]<br>0xFFFFFFFFFFFFFF80|- rs1_val == -137438953473<br>                                                                                                                                          |[0x80000bb4]:slli a1, a0, 7<br> [0x80000bb8]:sd a1, 888(gp)<br>      |
| 131|[0x80003618]<br>0xFFFFFFFFFFFC0000|- rs1_val == -274877906945<br>                                                                                                                                          |[0x80000bc8]:slli a1, a0, 18<br> [0x80000bcc]:sd a1, 896(gp)<br>     |
| 132|[0x80003620]<br>0xFFFFFFFFFFFFC000|- rs1_val == -549755813889<br>                                                                                                                                          |[0x80000bdc]:slli a1, a0, 14<br> [0x80000be0]:sd a1, 904(gp)<br>     |
| 133|[0x80003628]<br>0xFFFFFFFFFFFFF000|- rs1_val == -1099511627777<br>                                                                                                                                         |[0x80000bf0]:slli a1, a0, 12<br> [0x80000bf4]:sd a1, 912(gp)<br>     |
| 134|[0x80003630]<br>0xFFFFFFFF80000000|- rs1_val == -9007199254740993<br>                                                                                                                                      |[0x80000c04]:slli a1, a0, 31<br> [0x80000c08]:sd a1, 920(gp)<br>     |
