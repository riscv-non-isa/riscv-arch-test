
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000c10')]      |
| SIG_REGION                | [('0x80003204', '0x80003640', '135 dwords')]      |
| COV_LABELS                | ori      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/ori-01.S/ori-01.S    |
| Total Number of coverpoints| 235     |
| Total Signature Updates   | 134      |
| Total Coverpoints Covered | 235      |
| STAT1                     | 133      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c00]:ori a1, a0, 4087
      [0x80000c04]:sd a1, 880(sp)
 -- Signature Address: 0x80003638 Data: 0xFFFFFFFFFFFFFFF7
 -- Redundant Coverpoints hit by the op
      - opcode : ori
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val < 0
      - imm_val == -9
      - rs1_val == 65536






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

|s.no|            signature             |                                                                              coverpoints                                                                              |                                code                                 |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000080|- opcode : ori<br> - rs1 : x31<br> - rd : x31<br> - rs1 == rd<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br> - imm_val == 128<br> - rs1_val == 128<br> |[0x8000039c]:ori t6, t6, 128<br> [0x800003a0]:sd t6, 0(a5)<br>       |
|   2|[0x80003218]<br>0x0000000010000001|- rs1 : x16<br> - rd : x13<br> - rs1 != rd<br> - imm_val == 1<br> - rs1_val != imm_val<br> - rs1_val == 268435456<br>                                                  |[0x800003a8]:ori a3, a6, 1<br> [0x800003ac]:sd a3, 8(a5)<br>         |
|   3|[0x80003220]<br>0xFFFFFFFFFFFFFFF9|- rs1 : x13<br> - rd : x28<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 8388608<br>                                                                              |[0x800003b4]:ori t3, a3, 4089<br> [0x800003b8]:sd t3, 16(a5)<br>     |
|   4|[0x80003228]<br>0xFFFFBFFFFFFFFFFF|- rs1 : x8<br> - rd : x4<br> - rs1_val < 0 and imm_val > 0<br> - imm_val == 256<br> - rs1_val == -70368744177665<br>                                                   |[0x800003c8]:ori tp, fp, 256<br> [0x800003cc]:sd tp, 24(a5)<br>      |
|   5|[0x80003230]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x14<br> - rd : x1<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -274877906945<br>                                                                         |[0x800003dc]:ori ra, a4, 3072<br> [0x800003e0]:sd ra, 32(a5)<br>     |
|   6|[0x80003238]<br>0xFFFFFFFFFFFFFAAA|- rs1 : x11<br> - rd : x25<br> - rs1_val == (-2**(xlen-1))<br> - imm_val == -1366<br> - rs1_val == -9223372036854775808<br>                                            |[0x800003ec]:ori s9, a1, 2730<br> [0x800003f0]:sd s9, 40(a5)<br>     |
|   7|[0x80003240]<br>0xFFFFFFFFFFFFFFBF|- rs1 : x6<br> - rd : x10<br> - rs1_val == 0<br> - imm_val == -65<br>                                                                                                  |[0x800003f8]:ori a0, t1, 4031<br> [0x800003fc]:sd a0, 48(a5)<br>     |
|   8|[0x80003248]<br>0xFFFFFFFFFFFFFFFA|- rs1 : x0<br> - rd : x3<br>                                                                                                                                           |[0x8000040c]:ori gp, zero, 4090<br> [0x80000410]:sd gp, 56(a5)<br>   |
|   9|[0x80003250]<br>0x0000000000000001|- rs1 : x29<br> - rd : x7<br> - rs1_val == 1<br>                                                                                                                       |[0x80000418]:ori t2, t4, 1<br> [0x8000041c]:sd t2, 64(a5)<br>        |
|  10|[0x80003258]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x26<br> - rd : x6<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br> - rs1_val == -4398046511105<br>                                                     |[0x8000042c]:ori t1, s10, 2048<br> [0x80000430]:sd t1, 72(a5)<br>    |
|  11|[0x80003260]<br>0xFFFFFFFFFFFFFFFD|- rs1 : x4<br> - rd : x29<br> - imm_val == 0<br> - rs1_val == -3<br>                                                                                                   |[0x80000438]:ori t4, tp, 0<br> [0x8000043c]:sd t4, 80(a5)<br>        |
|  12|[0x80003268]<br>0x00000000004007FF|- rs1 : x27<br> - rd : x17<br> - imm_val == (2**(12-1)-1)<br> - imm_val == 2047<br> - rs1_val == 4194304<br>                                                           |[0x80000444]:ori a7, s11, 2047<br> [0x80000448]:sd a7, 88(a5)<br>    |
|  13|[0x80003270]<br>0x000000000000000A|- rs1 : x12<br> - rd : x9<br> - imm_val == 8<br> - rs1_val == 2<br>                                                                                                    |[0x80000450]:ori s1, a2, 8<br> [0x80000454]:sd s1, 96(a5)<br>        |
|  14|[0x80003278]<br>0xFFFFFFFFFFFFFFFC|- rs1 : x17<br> - rd : x26<br> - rs1_val == 4<br>                                                                                                                      |[0x8000045c]:ori s10, a7, 4092<br> [0x80000460]:sd s10, 104(a5)<br>  |
|  15|[0x80003280]<br>0xFFFFFFFFFFFFFFF8|- rs1 : x24<br> - rd : x12<br> - rs1_val == 8<br>                                                                                                                      |[0x80000468]:ori a2, s8, 4088<br> [0x8000046c]:sd a2, 112(a5)<br>    |
|  16|[0x80003288]<br>0xFFFFFFFFFFFFFBFF|- rs1 : x25<br> - rd : x23<br> - imm_val == -1025<br> - rs1_val == 16<br>                                                                                              |[0x80000474]:ori s7, s9, 3071<br> [0x80000478]:sd s7, 120(a5)<br>    |
|  17|[0x80003290]<br>0x0000000000000220|- rs1 : x3<br> - rd : x2<br> - imm_val == 512<br> - rs1_val == 32<br>                                                                                                  |[0x80000480]:ori sp, gp, 512<br> [0x80000484]:sd sp, 128(a5)<br>     |
|  18|[0x80003298]<br>0xFFFFFFFFFFFFFBFF|- rs1 : x2<br> - rd : x30<br> - rs1_val == 64<br>                                                                                                                      |[0x8000048c]:ori t5, sp, 3071<br> [0x80000490]:sd t5, 136(a5)<br>    |
|  19|[0x800032a0]<br>0x0000000000000102|- rs1 : x30<br> - rd : x24<br> - imm_val == 2<br> - rs1_val == 256<br>                                                                                                 |[0x80000498]:ori s8, t5, 2<br> [0x8000049c]:sd s8, 144(a5)<br>       |
|  20|[0x800032a8]<br>0xFFFFFFFFFFFFFFF8|- rs1 : x22<br> - rd : x8<br> - rs1_val == 512<br>                                                                                                                     |[0x800004a4]:ori fp, s6, 4088<br> [0x800004a8]:sd fp, 152(a5)<br>    |
|  21|[0x800032b0]<br>0x0000000000000407|- rs1 : x19<br> - rd : x5<br> - rs1_val == 1024<br>                                                                                                                    |[0x800004b0]:ori t0, s3, 7<br> [0x800004b4]:sd t0, 160(a5)<br>       |
|  22|[0x800032b8]<br>0xFFFFFFFFFFFFFBFF|- rs1 : x28<br> - rd : x22<br> - rs1_val == 2048<br>                                                                                                                   |[0x800004c0]:ori s6, t3, 3071<br> [0x800004c4]:sd s6, 168(a5)<br>    |
|  23|[0x800032c0]<br>0x0000000000001020|- rs1 : x20<br> - rd : x21<br> - imm_val == 32<br> - rs1_val == 4096<br>                                                                                               |[0x800004cc]:ori s5, s4, 32<br> [0x800004d0]:sd s5, 176(a5)<br>      |
|  24|[0x800032c8]<br>0x0000000000002555|- rs1 : x15<br> - rd : x20<br> - imm_val == 1365<br> - rs1_val == 8192<br>                                                                                             |[0x800004e0]:ori s4, a5, 1365<br> [0x800004e4]:sd s4, 0(sp)<br>      |
|  25|[0x800032d0]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x7<br> - rd : x14<br> - imm_val == -2<br> - rs1_val == 16384<br>                                                                                               |[0x800004ec]:ori a4, t2, 4094<br> [0x800004f0]:sd a4, 8(sp)<br>      |
|  26|[0x800032d8]<br>0x0000000000008007|- rs1 : x18<br> - rd : x16<br> - rs1_val == 32768<br>                                                                                                                  |[0x800004f8]:ori a6, s2, 7<br> [0x800004fc]:sd a6, 16(sp)<br>        |
|  27|[0x800032e0]<br>0x0000000000000000|- rs1 : x1<br> - rd : x0<br> - imm_val == -9<br> - rs1_val == 65536<br>                                                                                                |[0x80000504]:ori zero, ra, 4087<br> [0x80000508]:sd zero, 24(sp)<br> |
|  28|[0x800032e8]<br>0xFFFFFFFFFFFFFFFA|- rs1 : x21<br> - rd : x11<br> - rs1_val == 131072<br>                                                                                                                 |[0x80000510]:ori a1, s5, 4090<br> [0x80000514]:sd a1, 32(sp)<br>     |
|  29|[0x800032f0]<br>0xFFFFFFFFFFFFFFF7|- rs1 : x23<br> - rd : x19<br> - rs1_val == 262144<br>                                                                                                                 |[0x8000051c]:ori s3, s7, 4087<br> [0x80000520]:sd s3, 40(sp)<br>     |
|  30|[0x800032f8]<br>0x0000000000080008|- rs1 : x9<br> - rd : x27<br> - rs1_val == 524288<br>                                                                                                                  |[0x80000528]:ori s11, s1, 8<br> [0x8000052c]:sd s11, 48(sp)<br>      |
|  31|[0x80003300]<br>0xFFFFFFFFFFFFFFF6|- rs1 : x10<br> - rd : x15<br> - rs1_val == 1048576<br>                                                                                                                |[0x80000534]:ori a5, a0, 4086<br> [0x80000538]:sd a5, 56(sp)<br>     |
|  32|[0x80003308]<br>0x0000000000200007|- rs1 : x5<br> - rd : x18<br> - rs1_val == 2097152<br>                                                                                                                 |[0x80000540]:ori s2, t0, 7<br> [0x80000544]:sd s2, 64(sp)<br>        |
|  33|[0x80003310]<br>0x0000000001000020|- rs1_val == 16777216<br>                                                                                                                                              |[0x8000054c]:ori a1, a0, 32<br> [0x80000550]:sd a1, 72(sp)<br>       |
|  34|[0x80003318]<br>0xFFFFFFFFFFFFFDFF|- imm_val == -513<br> - rs1_val == 33554432<br>                                                                                                                        |[0x80000558]:ori a1, a0, 3583<br> [0x8000055c]:sd a1, 80(sp)<br>     |
|  35|[0x80003320]<br>0x0000000004000100|- rs1_val == 67108864<br>                                                                                                                                              |[0x80000564]:ori a1, a0, 256<br> [0x80000568]:sd a1, 88(sp)<br>      |
|  36|[0x80003328]<br>0xFFFFFFFFFFFFFFF6|- rs1_val == 134217728<br>                                                                                                                                             |[0x80000570]:ori a1, a0, 4086<br> [0x80000574]:sd a1, 96(sp)<br>     |
|  37|[0x80003330]<br>0x0000000020000009|- rs1_val == 536870912<br>                                                                                                                                             |[0x8000057c]:ori a1, a0, 9<br> [0x80000580]:sd a1, 104(sp)<br>       |
|  38|[0x80003338]<br>0x0000000040000400|- imm_val == 1024<br> - rs1_val == 1073741824<br>                                                                                                                      |[0x80000588]:ori a1, a0, 1024<br> [0x8000058c]:sd a1, 112(sp)<br>    |
|  39|[0x80003340]<br>0xFFFFFFFFFFFFFDFF|- rs1_val == 2147483648<br>                                                                                                                                            |[0x80000598]:ori a1, a0, 3583<br> [0x8000059c]:sd a1, 120(sp)<br>    |
|  40|[0x80003348]<br>0xFFFFFFFFFFFFFFFD|- imm_val == -3<br> - rs1_val == 4294967296<br>                                                                                                                        |[0x800005a8]:ori a1, a0, 4093<br> [0x800005ac]:sd a1, 128(sp)<br>    |
|  41|[0x80003350]<br>0xFFFFFFFFFFFFFFBF|- rs1_val == 8589934592<br>                                                                                                                                            |[0x800005b8]:ori a1, a0, 4031<br> [0x800005bc]:sd a1, 136(sp)<br>    |
|  42|[0x80003358]<br>0x0000000400000100|- rs1_val == 17179869184<br>                                                                                                                                           |[0x800005c8]:ori a1, a0, 256<br> [0x800005cc]:sd a1, 144(sp)<br>     |
|  43|[0x80003360]<br>0xFFFFFFFFFFFFFDFF|- rs1_val == 34359738368<br>                                                                                                                                           |[0x800005d8]:ori a1, a0, 3583<br> [0x800005dc]:sd a1, 152(sp)<br>    |
|  44|[0x80003368]<br>0x0000001000000100|- rs1_val == 68719476736<br>                                                                                                                                           |[0x800005e8]:ori a1, a0, 256<br> [0x800005ec]:sd a1, 160(sp)<br>     |
|  45|[0x80003370]<br>0x0000002000000008|- rs1_val == 137438953472<br>                                                                                                                                          |[0x800005f8]:ori a1, a0, 8<br> [0x800005fc]:sd a1, 168(sp)<br>       |
|  46|[0x80003378]<br>0x0000004000000020|- rs1_val == 274877906944<br>                                                                                                                                          |[0x80000608]:ori a1, a0, 32<br> [0x8000060c]:sd a1, 176(sp)<br>      |
|  47|[0x80003380]<br>0xFFFFFFFFFFFFFFDF|- imm_val == -33<br> - rs1_val == 549755813888<br>                                                                                                                     |[0x80000618]:ori a1, a0, 4063<br> [0x8000061c]:sd a1, 184(sp)<br>    |
|  48|[0x80003388]<br>0x0000010000000100|- rs1_val == 1099511627776<br>                                                                                                                                         |[0x80000628]:ori a1, a0, 256<br> [0x8000062c]:sd a1, 192(sp)<br>     |
|  49|[0x80003390]<br>0xFFFFFFFFFFFFFC00|- rs1_val == 2199023255552<br>                                                                                                                                         |[0x80000638]:ori a1, a0, 3072<br> [0x8000063c]:sd a1, 200(sp)<br>    |
|  50|[0x80003398]<br>0xFFFFFFFFFFFFFBFF|- rs1_val == 4398046511104<br>                                                                                                                                         |[0x80000648]:ori a1, a0, 3071<br> [0x8000064c]:sd a1, 208(sp)<br>    |
|  51|[0x800033a0]<br>0x0000080000000009|- rs1_val == 8796093022208<br>                                                                                                                                         |[0x80000658]:ori a1, a0, 9<br> [0x8000065c]:sd a1, 216(sp)<br>       |
|  52|[0x800033a8]<br>0x00001000000007FF|- rs1_val == 17592186044416<br>                                                                                                                                        |[0x80000668]:ori a1, a0, 2047<br> [0x8000066c]:sd a1, 224(sp)<br>    |
|  53|[0x800033b0]<br>0x0000200000000002|- rs1_val == 35184372088832<br>                                                                                                                                        |[0x80000678]:ori a1, a0, 2<br> [0x8000067c]:sd a1, 232(sp)<br>       |
|  54|[0x800033b8]<br>0xFFFFFFFFFFFFFFBF|- rs1_val == 70368744177664<br>                                                                                                                                        |[0x80000688]:ori a1, a0, 4031<br> [0x8000068c]:sd a1, 240(sp)<br>    |
|  55|[0x800033c0]<br>0x0000800000000004|- imm_val == 4<br> - rs1_val == 140737488355328<br>                                                                                                                    |[0x80000698]:ori a1, a0, 4<br> [0x8000069c]:sd a1, 248(sp)<br>       |
|  56|[0x800033c8]<br>0x0001000000000002|- rs1_val == 281474976710656<br>                                                                                                                                       |[0x800006a8]:ori a1, a0, 2<br> [0x800006ac]:sd a1, 256(sp)<br>       |
|  57|[0x800033d0]<br>0x0002000000000020|- rs1_val == 562949953421312<br>                                                                                                                                       |[0x800006b8]:ori a1, a0, 32<br> [0x800006bc]:sd a1, 264(sp)<br>      |
|  58|[0x800033d8]<br>0x0004000000000005|- rs1_val == 1125899906842624<br>                                                                                                                                      |[0x800006c8]:ori a1, a0, 5<br> [0x800006cc]:sd a1, 272(sp)<br>       |
|  59|[0x800033e0]<br>0xFFFFFFFFFFFFFC00|- rs1_val == 2251799813685248<br>                                                                                                                                      |[0x800006d8]:ori a1, a0, 3072<br> [0x800006dc]:sd a1, 280(sp)<br>    |
|  60|[0x800033e8]<br>0xFFFFFFFFFFFFFFF8|- rs1_val == 4503599627370496<br>                                                                                                                                      |[0x800006e8]:ori a1, a0, 4088<br> [0x800006ec]:sd a1, 288(sp)<br>    |
|  61|[0x800033f0]<br>0xFFFFFFFFFFFFFBFF|- rs1_val == 9007199254740992<br>                                                                                                                                      |[0x800006f8]:ori a1, a0, 3071<br> [0x800006fc]:sd a1, 296(sp)<br>    |
|  62|[0x800033f8]<br>0x0040000000000555|- rs1_val == 18014398509481984<br>                                                                                                                                     |[0x80000708]:ori a1, a0, 1365<br> [0x8000070c]:sd a1, 304(sp)<br>    |
|  63|[0x80003400]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == 36028797018963968<br>                                                                                                                                     |[0x80000718]:ori a1, a0, 4094<br> [0x8000071c]:sd a1, 312(sp)<br>    |
|  64|[0x80003408]<br>0xFFFFFFFFFFFFFFBF|- rs1_val == 72057594037927936<br>                                                                                                                                     |[0x80000728]:ori a1, a0, 4031<br> [0x8000072c]:sd a1, 320(sp)<br>    |
|  65|[0x80003410]<br>0xFFFFFFFFFFFFFFFB|- imm_val == -5<br> - rs1_val == 144115188075855872<br>                                                                                                                |[0x80000738]:ori a1, a0, 4091<br> [0x8000073c]:sd a1, 328(sp)<br>    |
|  66|[0x80003418]<br>0xFFFFFFFFFFFFFFFD|- rs1_val == 288230376151711744<br>                                                                                                                                    |[0x80000748]:ori a1, a0, 4093<br> [0x8000074c]:sd a1, 336(sp)<br>    |
|  67|[0x80003420]<br>0x0800000000000040|- imm_val == 64<br> - rs1_val == 576460752303423488<br>                                                                                                                |[0x80000758]:ori a1, a0, 64<br> [0x8000075c]:sd a1, 344(sp)<br>      |
|  68|[0x80003428]<br>0xFFFFFFFFFFFFFF7F|- imm_val == -129<br> - rs1_val == 1152921504606846976<br>                                                                                                             |[0x80000768]:ori a1, a0, 3967<br> [0x8000076c]:sd a1, 352(sp)<br>    |
|  69|[0x80003430]<br>0x2000000000000004|- rs1_val == 2305843009213693952<br>                                                                                                                                   |[0x80000778]:ori a1, a0, 4<br> [0x8000077c]:sd a1, 360(sp)<br>       |
|  70|[0x80003438]<br>0x4000000000000010|- imm_val == 16<br> - rs1_val == 4611686018427387904<br>                                                                                                               |[0x80000788]:ori a1, a0, 16<br> [0x8000078c]:sd a1, 368(sp)<br>      |
|  71|[0x80003440]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -2<br>                                                                                                                                                    |[0x80000794]:ori a1, a0, 2048<br> [0x80000798]:sd a1, 376(sp)<br>    |
|  72|[0x80003448]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                                                     |[0x800007a8]:ori a1, a0, 4089<br> [0x800007ac]:sd a1, 384(sp)<br>    |
|  73|[0x80003450]<br>0xFFEFFFFFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                                                     |[0x800007bc]:ori a1, a0, 9<br> [0x800007c0]:sd a1, 392(sp)<br>       |
|  74|[0x80003458]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -9007199254740993<br>                                                                                                                                     |[0x800007d0]:ori a1, a0, 4094<br> [0x800007d4]:sd a1, 400(sp)<br>    |
|  75|[0x80003460]<br>0xFFFFFFFFFFFFFFFF|- imm_val == -17<br> - rs1_val == -18014398509481985<br>                                                                                                               |[0x800007e4]:ori a1, a0, 4079<br> [0x800007e8]:sd a1, 408(sp)<br>    |
|  76|[0x80003468]<br>0xFF7FFFFFFFFFFFFF|- rs1_val == -36028797018963969<br>                                                                                                                                    |[0x800007f8]:ori a1, a0, 8<br> [0x800007fc]:sd a1, 416(sp)<br>       |
|  77|[0x80003470]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                                                    |[0x8000080c]:ori a1, a0, 3072<br> [0x80000810]:sd a1, 424(sp)<br>    |
|  78|[0x80003478]<br>0xFDFFFFFFFFFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                                                   |[0x80000820]:ori a1, a0, 2047<br> [0x80000824]:sd a1, 432(sp)<br>    |
|  79|[0x80003480]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                                                   |[0x80000834]:ori a1, a0, 4090<br> [0x80000838]:sd a1, 440(sp)<br>    |
|  80|[0x80003488]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                                                   |[0x80000848]:ori a1, a0, 4079<br> [0x8000084c]:sd a1, 448(sp)<br>    |
|  81|[0x80003490]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                                                  |[0x8000085c]:ori a1, a0, 4031<br> [0x80000860]:sd a1, 456(sp)<br>    |
|  82|[0x80003498]<br>0xDFFFFFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                                                  |[0x80000870]:ori a1, a0, 1023<br> [0x80000874]:sd a1, 464(sp)<br>    |
|  83|[0x800034a0]<br>0xBFFFFFFFFFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                                                  |[0x80000884]:ori a1, a0, 0<br> [0x80000888]:sd a1, 472(sp)<br>       |
|  84|[0x800034a8]<br>0x5555555555555557|- rs1_val == 6148914691236517205<br>                                                                                                                                   |[0x800008ac]:ori a1, a0, 3<br> [0x800008b0]:sd a1, 480(sp)<br>       |
|  85|[0x800034b0]<br>0xAAAAAAAAAAAAAFFF|- rs1_val == -6148914691236517206<br>                                                                                                                                  |[0x800008d4]:ori a1, a0, 2047<br> [0x800008d8]:sd a1, 488(sp)<br>    |
|  86|[0x800034b8]<br>0xFFFFFFFFFFFFFEFF|- imm_val == -257<br>                                                                                                                                                  |[0x800008e0]:ori a1, a0, 3839<br> [0x800008e4]:sd a1, 496(sp)<br>    |
|  87|[0x800034c0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -5<br>                                                                                                                                                    |[0x800008ec]:ori a1, a0, 1365<br> [0x800008f0]:sd a1, 504(sp)<br>    |
|  88|[0x800034c8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -9<br>                                                                                                                                                    |[0x800008f8]:ori a1, a0, 3583<br> [0x800008fc]:sd a1, 512(sp)<br>    |
|  89|[0x800034d0]<br>0xFFFFFFFFFFFFFFEF|- rs1_val == -17<br>                                                                                                                                                   |[0x80000904]:ori a1, a0, 64<br> [0x80000908]:sd a1, 520(sp)<br>      |
|  90|[0x800034d8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -33<br>                                                                                                                                                   |[0x80000910]:ori a1, a0, 3583<br> [0x80000914]:sd a1, 528(sp)<br>    |
|  91|[0x800034e0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -65<br>                                                                                                                                                   |[0x8000091c]:ori a1, a0, 4091<br> [0x80000920]:sd a1, 536(sp)<br>    |
|  92|[0x800034e8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -129<br>                                                                                                                                                  |[0x80000928]:ori a1, a0, 4087<br> [0x8000092c]:sd a1, 544(sp)<br>    |
|  93|[0x800034f0]<br>0xFFFFFFFFFFFFFEFF|- rs1_val == -257<br>                                                                                                                                                  |[0x80000934]:ori a1, a0, 2048<br> [0x80000938]:sd a1, 552(sp)<br>    |
|  94|[0x800034f8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -513<br>                                                                                                                                                  |[0x80000940]:ori a1, a0, 4086<br> [0x80000944]:sd a1, 560(sp)<br>    |
|  95|[0x80003500]<br>0xFFFFFFFFFFFFFBFF|- rs1_val == -1025<br>                                                                                                                                                 |[0x8000094c]:ori a1, a0, 512<br> [0x80000950]:sd a1, 568(sp)<br>     |
|  96|[0x80003508]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2049<br>                                                                                                                                                 |[0x8000095c]:ori a1, a0, 4087<br> [0x80000960]:sd a1, 576(sp)<br>    |
|  97|[0x80003510]<br>0xFFFFFFFFFFFFEFFF|- rs1_val == -4097<br>                                                                                                                                                 |[0x8000096c]:ori a1, a0, 2047<br> [0x80000970]:sd a1, 584(sp)<br>    |
|  98|[0x80003518]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8193<br>                                                                                                                                                 |[0x8000097c]:ori a1, a0, 3583<br> [0x80000980]:sd a1, 592(sp)<br>    |
|  99|[0x80003520]<br>0xFFFFFFFFFFFFBFFF|- rs1_val == -16385<br>                                                                                                                                                |[0x8000098c]:ori a1, a0, 256<br> [0x80000990]:sd a1, 600(sp)<br>     |
| 100|[0x80003528]<br>0xFFFFFFFFFFFF7FFF|- rs1_val == -32769<br>                                                                                                                                                |[0x8000099c]:ori a1, a0, 5<br> [0x800009a0]:sd a1, 608(sp)<br>       |
| 101|[0x80003530]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -65537<br>                                                                                                                                                |[0x800009ac]:ori a1, a0, 4093<br> [0x800009b0]:sd a1, 616(sp)<br>    |
| 102|[0x80003538]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -131073<br>                                                                                                                                               |[0x800009bc]:ori a1, a0, 3839<br> [0x800009c0]:sd a1, 624(sp)<br>    |
| 103|[0x80003540]<br>0xFFFFFFFFFFFBFFFF|- rs1_val == -262145<br>                                                                                                                                               |[0x800009cc]:ori a1, a0, 8<br> [0x800009d0]:sd a1, 632(sp)<br>       |
| 104|[0x80003548]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -524289<br>                                                                                                                                               |[0x800009dc]:ori a1, a0, 4087<br> [0x800009e0]:sd a1, 640(sp)<br>    |
| 105|[0x80003550]<br>0xFFFFFFFFFFEFFFFF|- rs1_val == -1048577<br>                                                                                                                                              |[0x800009ec]:ori a1, a0, 9<br> [0x800009f0]:sd a1, 648(sp)<br>       |
| 106|[0x80003558]<br>0xFFFFFFFFFFDFFFFF|- rs1_val == -2097153<br>                                                                                                                                              |[0x800009fc]:ori a1, a0, 5<br> [0x80000a00]:sd a1, 656(sp)<br>       |
| 107|[0x80003560]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4194305<br>                                                                                                                                              |[0x80000a0c]:ori a1, a0, 3071<br> [0x80000a10]:sd a1, 664(sp)<br>    |
| 108|[0x80003568]<br>0xFFFFFFFFFF7FFFFF|- rs1_val == -8388609<br>                                                                                                                                              |[0x80000a1c]:ori a1, a0, 256<br> [0x80000a20]:sd a1, 672(sp)<br>     |
| 109|[0x80003570]<br>0xFFFFFFFFFEFFFFFF|- rs1_val == -16777217<br>                                                                                                                                             |[0x80000a2c]:ori a1, a0, 1<br> [0x80000a30]:sd a1, 680(sp)<br>       |
| 110|[0x80003578]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -33554433<br>                                                                                                                                             |[0x80000a3c]:ori a1, a0, 4094<br> [0x80000a40]:sd a1, 688(sp)<br>    |
| 111|[0x80003580]<br>0xFFFFFFFFFBFFFFFF|- rs1_val == -67108865<br>                                                                                                                                             |[0x80000a4c]:ori a1, a0, 1024<br> [0x80000a50]:sd a1, 696(sp)<br>    |
| 112|[0x80003588]<br>0xFFFFFFFFF7FFFFFF|- rs1_val == -134217729<br>                                                                                                                                            |[0x80000a5c]:ori a1, a0, 512<br> [0x80000a60]:sd a1, 704(sp)<br>     |
| 113|[0x80003590]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -268435457<br>                                                                                                                                            |[0x80000a6c]:ori a1, a0, 4091<br> [0x80000a70]:sd a1, 712(sp)<br>    |
| 114|[0x80003598]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -536870913<br>                                                                                                                                            |[0x80000a7c]:ori a1, a0, 3583<br> [0x80000a80]:sd a1, 720(sp)<br>    |
| 115|[0x800035a0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1073741825<br>                                                                                                                                           |[0x80000a8c]:ori a1, a0, 4091<br> [0x80000a90]:sd a1, 728(sp)<br>    |
| 116|[0x800035a8]<br>0xFFFFFFFF7FFFFFFF|- rs1_val == -2147483649<br>                                                                                                                                           |[0x80000aa0]:ori a1, a0, 3<br> [0x80000aa4]:sd a1, 736(sp)<br>       |
| 117|[0x800035b0]<br>0xFFFFFFFEFFFFFFFF|- rs1_val == -4294967297<br>                                                                                                                                           |[0x80000ab4]:ori a1, a0, 4<br> [0x80000ab8]:sd a1, 744(sp)<br>       |
| 118|[0x800035b8]<br>0xFFFFFFFDFFFFFFFF|- rs1_val == -8589934593<br>                                                                                                                                           |[0x80000ac8]:ori a1, a0, 0<br> [0x80000acc]:sd a1, 752(sp)<br>       |
| 119|[0x800035c0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17179869185<br>                                                                                                                                          |[0x80000adc]:ori a1, a0, 3583<br> [0x80000ae0]:sd a1, 760(sp)<br>    |
| 120|[0x800035c8]<br>0xFFFFFFF7FFFFFFFF|- rs1_val == -34359738369<br>                                                                                                                                          |[0x80000af0]:ori a1, a0, 3<br> [0x80000af4]:sd a1, 768(sp)<br>       |
| 121|[0x800035d0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -68719476737<br>                                                                                                                                          |[0x80000b04]:ori a1, a0, 4079<br> [0x80000b08]:sd a1, 776(sp)<br>    |
| 122|[0x800035d8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -137438953473<br>                                                                                                                                         |[0x80000b18]:ori a1, a0, 4079<br> [0x80000b1c]:sd a1, 784(sp)<br>    |
| 123|[0x800035e0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -549755813889<br>                                                                                                                                         |[0x80000b2c]:ori a1, a0, 4088<br> [0x80000b30]:sd a1, 792(sp)<br>    |
| 124|[0x800035e8]<br>0xFFFFFEFFFFFFFFFF|- rs1_val == -1099511627777<br>                                                                                                                                        |[0x80000b40]:ori a1, a0, 2047<br> [0x80000b44]:sd a1, 800(sp)<br>    |
| 125|[0x800035f0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                                                        |[0x80000b54]:ori a1, a0, 4087<br> [0x80000b58]:sd a1, 808(sp)<br>    |
| 126|[0x800035f8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8796093022209<br>                                                                                                                                        |[0x80000b68]:ori a1, a0, 3072<br> [0x80000b6c]:sd a1, 816(sp)<br>    |
| 127|[0x80003600]<br>0xFFFFEFFFFFFFFFFF|- rs1_val == -17592186044417<br>                                                                                                                                       |[0x80000b7c]:ori a1, a0, 8<br> [0x80000b80]:sd a1, 824(sp)<br>       |
| 128|[0x80003608]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -35184372088833<br>                                                                                                                                       |[0x80000b90]:ori a1, a0, 4089<br> [0x80000b94]:sd a1, 832(sp)<br>    |
| 129|[0x80003610]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -140737488355329<br>                                                                                                                                      |[0x80000ba4]:ori a1, a0, 4095<br> [0x80000ba8]:sd a1, 840(sp)<br>    |
| 130|[0x80003618]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -281474976710657<br>                                                                                                                                      |[0x80000bb8]:ori a1, a0, 4031<br> [0x80000bbc]:sd a1, 848(sp)<br>    |
| 131|[0x80003620]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -562949953421313<br>                                                                                                                                      |[0x80000bcc]:ori a1, a0, 3967<br> [0x80000bd0]:sd a1, 856(sp)<br>    |
| 132|[0x80003628]<br>0xFFFBFFFFFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                                                     |[0x80000be0]:ori a1, a0, 1023<br> [0x80000be4]:sd a1, 864(sp)<br>    |
| 133|[0x80003630]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>                                                                                                  |[0x80000bf4]:ori a1, a0, 4090<br> [0x80000bf8]:sd a1, 872(sp)<br>    |
