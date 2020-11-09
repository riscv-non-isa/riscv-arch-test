
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
| COV_LABELS                | ori      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/ori-01.S/ori-01.S    |
| Total Number of coverpoints| 235     |
| Total Coverpoints Hit     | 235      |
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
      [0x80000bf0]:ori a1, a0, 1024
      [0x80000bf4]:sd a1, 904(gp)
 -- Signature Address: 0x80003628 Data: 0x0000000000000500
 -- Redundant Coverpoints hit by the op
      - opcode : ori
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val > 0
      - imm_val == 1024
      - rs1_val == 256






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

|s.no|            signature             |                                                                              coverpoints                                                                              |                                 code                                  |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80003208]<br>0x0000000000000400|- opcode : ori<br> - rs1 : x4<br> - rd : x4<br> - rs1 == rd<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br> - imm_val == 1024<br> - rs1_val == 1024<br> |[0x8000039c]:ori tp, tp, 1024<br> [0x800003a0]:sd tp, 0(a5)<br>        |
|   2|[0x80003210]<br>0xFFFFFFFFFFFFFFFB|- rs1 : x28<br> - rd : x26<br> - rs1 != rd<br> - rs1_val != imm_val<br> - rs1_val > 0 and imm_val < 0<br> - imm_val == -5<br> - rs1_val == 64<br>                      |[0x800003a8]:ori s10, t3, 4091<br> [0x800003ac]:sd s10, 8(a5)<br>      |
|   3|[0x80003218]<br>0xFFFFFFFF7FFFFFFF|- rs1 : x2<br> - rd : x17<br> - imm_val == 1<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -2147483649<br>                                                        |[0x800003bc]:ori a7, sp, 1<br> [0x800003c0]:sd a7, 16(a5)<br>          |
|   4|[0x80003220]<br>0xFFFFFFFFFFFFFFF7|- rs1 : x31<br> - rd : x8<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -9<br>                                                                                    |[0x800003c8]:ori fp, t6, 4086<br> [0x800003cc]:sd fp, 24(a5)<br>       |
|   5|[0x80003228]<br>0x80000000000007FF|- rs1 : x22<br> - rd : x25<br> - imm_val == (2**(12-1)-1)<br> - rs1_val == (-2**(xlen-1))<br> - imm_val == 2047<br> - rs1_val == -9223372036854775808<br>              |[0x800003d8]:ori s9, s6, 2047<br> [0x800003dc]:sd s9, 32(a5)<br>       |
|   6|[0x80003230]<br>0x0000000000000009|- rs1 : x5<br> - rd : x12<br> - rs1_val == 0<br>                                                                                                                       |[0x800003e4]:ori a2, t0, 9<br> [0x800003e8]:sd a2, 40(a5)<br>          |
|   7|[0x80003238]<br>0x7FFFFFFFFFFFFFFF|- rs1 : x24<br> - rd : x20<br> - rs1_val == (2**(xlen-1)-1)<br> - imm_val == 1365<br> - rs1_val == 9223372036854775807<br>                                             |[0x800003f8]:ori s4, s8, 1365<br> [0x800003fc]:sd s4, 48(a5)<br>       |
|   8|[0x80003240]<br>0x0000000000000005|- rs1 : x14<br> - rd : x11<br> - rs1_val == 1<br>                                                                                                                      |[0x80000404]:ori a1, a4, 5<br> [0x80000408]:sd a1, 56(a5)<br>          |
|   9|[0x80003248]<br>0xFFFFFFFFFFFFFFF9|- rs1 : x16<br> - rd : x23<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br>                                                                                    |[0x80000410]:ori s7, a6, 2048<br> [0x80000414]:sd s7, 64(a5)<br>       |
|  10|[0x80003250]<br>0xFFFFFFFFFFFFFEFF|- rs1 : x29<br> - rd : x31<br> - imm_val == 0<br> - rs1_val == -257<br>                                                                                                |[0x8000041c]:ori t6, t4, 0<br> [0x80000420]:sd t6, 72(a5)<br>          |
|  11|[0x80003258]<br>0x0000000000000012|- rs1 : x19<br> - rd : x1<br> - imm_val == 16<br> - rs1_val == 2<br>                                                                                                   |[0x80000428]:ori ra, s3, 16<br> [0x8000042c]:sd ra, 80(a5)<br>         |
|  12|[0x80003260]<br>0xFFFFFFFFFFFFFFF7|- rs1 : x11<br> - rd : x10<br> - imm_val == -9<br> - rs1_val == 4<br>                                                                                                  |[0x80000434]:ori a0, a1, 4087<br> [0x80000438]:sd a0, 88(a5)<br>       |
|  13|[0x80003268]<br>0xFFFFFFFFFFFFFFEF|- rs1 : x23<br> - rd : x24<br> - imm_val == -17<br> - rs1_val == 8<br>                                                                                                 |[0x80000440]:ori s8, s7, 4079<br> [0x80000444]:sd s8, 96(a5)<br>       |
|  14|[0x80003270]<br>0x0000000000000014|- rs1 : x13<br> - rd : x9<br> - imm_val == 4<br> - rs1_val == 16<br>                                                                                                   |[0x8000044c]:ori s1, a3, 4<br> [0x80000450]:sd s1, 104(a5)<br>         |
|  15|[0x80003278]<br>0x0000000000000220|- rs1 : x25<br> - rd : x3<br> - imm_val == 512<br> - rs1_val == 32<br>                                                                                                 |[0x80000458]:ori gp, s9, 512<br> [0x8000045c]:sd gp, 112(a5)<br>       |
|  16|[0x80003280]<br>0x0000000000000083|- rs1 : x6<br> - rd : x16<br> - rs1_val == 128<br>                                                                                                                     |[0x80000464]:ori a6, t1, 3<br> [0x80000468]:sd a6, 120(a5)<br>         |
|  17|[0x80003288]<br>0x0000000000000000|- rs1 : x27<br> - rd : x0<br> - rs1_val == 256<br>                                                                                                                     |[0x80000470]:ori zero, s11, 1024<br> [0x80000474]:sd zero, 128(a5)<br> |
|  18|[0x80003290]<br>0x0000000000000220|- rs1 : x3<br> - rd : x7<br> - imm_val == 32<br> - rs1_val == 512<br>                                                                                                  |[0x8000047c]:ori t2, gp, 32<br> [0x80000480]:sd t2, 136(a5)<br>        |
|  19|[0x80003298]<br>0x0000000000000804|- rs1 : x20<br> - rd : x30<br> - rs1_val == 2048<br>                                                                                                                   |[0x8000048c]:ori t5, s4, 4<br> [0x80000490]:sd t5, 144(a5)<br>         |
|  20|[0x800032a0]<br>0xFFFFFFFFFFFFFFF9|- rs1 : x26<br> - rd : x15<br> - rs1_val == 4096<br>                                                                                                                   |[0x800004a0]:ori a5, s10, 4089<br> [0x800004a4]:sd a5, 0(gp)<br>       |
|  21|[0x800032a8]<br>0xFFFFFFFFFFFFFC00|- rs1 : x7<br> - rd : x18<br> - rs1_val == 8192<br>                                                                                                                    |[0x800004ac]:ori s2, t2, 3072<br> [0x800004b0]:sd s2, 8(gp)<br>        |
|  22|[0x800032b0]<br>0xFFFFFFFFFFFFFC00|- rs1 : x30<br> - rd : x28<br> - rs1_val == 16384<br>                                                                                                                  |[0x800004b8]:ori t3, t5, 3072<br> [0x800004bc]:sd t3, 16(gp)<br>       |
|  23|[0x800032b8]<br>0x0000000000008555|- rs1 : x17<br> - rd : x19<br> - rs1_val == 32768<br>                                                                                                                  |[0x800004c4]:ori s3, a7, 1365<br> [0x800004c8]:sd s3, 24(gp)<br>       |
|  24|[0x800032c0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x1<br> - rd : x27<br> - rs1_val == 65536<br>                                                                                                                   |[0x800004d0]:ori s11, ra, 4095<br> [0x800004d4]:sd s11, 32(gp)<br>     |
|  25|[0x800032c8]<br>0x0000000000020007|- rs1 : x15<br> - rd : x2<br> - rs1_val == 131072<br>                                                                                                                  |[0x800004dc]:ori sp, a5, 7<br> [0x800004e0]:sd sp, 40(gp)<br>          |
|  26|[0x800032d0]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x8<br> - rd : x5<br> - imm_val == -2<br> - rs1_val == 262144<br>                                                                                               |[0x800004e8]:ori t0, fp, 4094<br> [0x800004ec]:sd t0, 48(gp)<br>       |
|  27|[0x800032d8]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x18<br> - rd : x6<br> - rs1_val == 524288<br>                                                                                                                  |[0x800004f4]:ori t1, s2, 4095<br> [0x800004f8]:sd t1, 56(gp)<br>       |
|  28|[0x800032e0]<br>0x0000000000000001|- rs1 : x0<br> - rd : x22<br>                                                                                                                                          |[0x80000504]:ori s6, zero, 1<br> [0x80000508]:sd s6, 64(gp)<br>        |
|  29|[0x800032e8]<br>0x0000000000200005|- rs1 : x10<br> - rd : x13<br> - rs1_val == 2097152<br>                                                                                                                |[0x80000510]:ori a3, a0, 5<br> [0x80000514]:sd a3, 72(gp)<br>          |
|  30|[0x800032f0]<br>0x0000000000400001|- rs1 : x12<br> - rd : x14<br> - rs1_val == 4194304<br>                                                                                                                |[0x8000051c]:ori a4, a2, 1<br> [0x80000520]:sd a4, 80(gp)<br>          |
|  31|[0x800032f8]<br>0x0000000000800020|- rs1 : x9<br> - rd : x29<br> - rs1_val == 8388608<br>                                                                                                                 |[0x80000528]:ori t4, s1, 32<br> [0x8000052c]:sd t4, 88(gp)<br>         |
|  32|[0x80003300]<br>0xFFFFFFFFFFFFFDFF|- rs1 : x21<br> - imm_val == -513<br> - rs1_val == 16777216<br>                                                                                                        |[0x80000534]:ori s3, s5, 3583<br> [0x80000538]:sd s3, 96(gp)<br>       |
|  33|[0x80003308]<br>0xFFFFFFFFFFFFFFBF|- rd : x21<br> - imm_val == -65<br> - rs1_val == 33554432<br>                                                                                                          |[0x80000540]:ori s5, s10, 4031<br> [0x80000544]:sd s5, 104(gp)<br>     |
|  34|[0x80003310]<br>0x0000000004000040|- imm_val == 64<br> - rs1_val == 67108864<br>                                                                                                                          |[0x8000054c]:ori a1, a0, 64<br> [0x80000550]:sd a1, 112(gp)<br>        |
|  35|[0x80003318]<br>0x0000000008000000|- rs1_val == 134217728<br>                                                                                                                                             |[0x80000558]:ori a1, a0, 0<br> [0x8000055c]:sd a1, 120(gp)<br>         |
|  36|[0x80003320]<br>0xFFFFFFFFFFFFFC00|- rs1_val == 268435456<br>                                                                                                                                             |[0x80000564]:ori a1, a0, 3072<br> [0x80000568]:sd a1, 128(gp)<br>      |
|  37|[0x80003328]<br>0xFFFFFFFFFFFFFAAA|- imm_val == -1366<br> - rs1_val == 536870912<br>                                                                                                                      |[0x80000570]:ori a1, a0, 2730<br> [0x80000574]:sd a1, 136(gp)<br>      |
|  38|[0x80003330]<br>0x0000000040000010|- rs1_val == 1073741824<br>                                                                                                                                            |[0x8000057c]:ori a1, a0, 16<br> [0x80000580]:sd a1, 144(gp)<br>        |
|  39|[0x80003338]<br>0x0000000080000080|- imm_val == 128<br> - rs1_val == 2147483648<br>                                                                                                                       |[0x8000058c]:ori a1, a0, 128<br> [0x80000590]:sd a1, 152(gp)<br>       |
|  40|[0x80003340]<br>0x0000000100000003|- rs1_val == 4294967296<br>                                                                                                                                            |[0x8000059c]:ori a1, a0, 3<br> [0x800005a0]:sd a1, 160(gp)<br>         |
|  41|[0x80003348]<br>0x0000000200000080|- rs1_val == 8589934592<br>                                                                                                                                            |[0x800005ac]:ori a1, a0, 128<br> [0x800005b0]:sd a1, 168(gp)<br>       |
|  42|[0x80003350]<br>0x0000000400000006|- rs1_val == 17179869184<br>                                                                                                                                           |[0x800005bc]:ori a1, a0, 6<br> [0x800005c0]:sd a1, 176(gp)<br>         |
|  43|[0x80003358]<br>0xFFFFFFFFFFFFFFFA|- rs1_val == 34359738368<br>                                                                                                                                           |[0x800005cc]:ori a1, a0, 4090<br> [0x800005d0]:sd a1, 184(gp)<br>      |
|  44|[0x80003360]<br>0xFFFFFFFFFFFFFBFF|- imm_val == -1025<br> - rs1_val == 68719476736<br>                                                                                                                    |[0x800005dc]:ori a1, a0, 3071<br> [0x800005e0]:sd a1, 192(gp)<br>      |
|  45|[0x80003368]<br>0x0000002000000004|- rs1_val == 137438953472<br>                                                                                                                                          |[0x800005ec]:ori a1, a0, 4<br> [0x800005f0]:sd a1, 200(gp)<br>         |
|  46|[0x80003370]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 274877906944<br>                                                                                                                                          |[0x800005fc]:ori a1, a0, 4095<br> [0x80000600]:sd a1, 208(gp)<br>      |
|  47|[0x80003378]<br>0xFFFFFFFFFFFFFFFD|- imm_val == -3<br> - rs1_val == 549755813888<br>                                                                                                                      |[0x8000060c]:ori a1, a0, 4093<br> [0x80000610]:sd a1, 216(gp)<br>      |
|  48|[0x80003380]<br>0xFFFFFFFFFFFFFF7F|- imm_val == -129<br> - rs1_val == 1099511627776<br>                                                                                                                   |[0x8000061c]:ori a1, a0, 3967<br> [0x80000620]:sd a1, 224(gp)<br>      |
|  49|[0x80003388]<br>0x0000020000000200|- rs1_val == 2199023255552<br>                                                                                                                                         |[0x8000062c]:ori a1, a0, 512<br> [0x80000630]:sd a1, 232(gp)<br>       |
|  50|[0x80003390]<br>0x0000040000000005|- rs1_val == 4398046511104<br>                                                                                                                                         |[0x8000063c]:ori a1, a0, 5<br> [0x80000640]:sd a1, 240(gp)<br>         |
|  51|[0x80003398]<br>0xFFFFFFFFFFFFFF7F|- rs1_val == 8796093022208<br>                                                                                                                                         |[0x8000064c]:ori a1, a0, 3967<br> [0x80000650]:sd a1, 248(gp)<br>      |
|  52|[0x800033a0]<br>0x0000100000000008|- imm_val == 8<br> - rs1_val == 17592186044416<br>                                                                                                                     |[0x8000065c]:ori a1, a0, 8<br> [0x80000660]:sd a1, 256(gp)<br>         |
|  53|[0x800033a8]<br>0x00002000000003FF|- rs1_val == 35184372088832<br>                                                                                                                                        |[0x8000066c]:ori a1, a0, 1023<br> [0x80000670]:sd a1, 264(gp)<br>      |
|  54|[0x800033b0]<br>0xFFFFFFFFFFFFFFF8|- rs1_val == 70368744177664<br>                                                                                                                                        |[0x8000067c]:ori a1, a0, 4088<br> [0x80000680]:sd a1, 272(gp)<br>      |
|  55|[0x800033b8]<br>0x0000800000000007|- rs1_val == 140737488355328<br>                                                                                                                                       |[0x8000068c]:ori a1, a0, 7<br> [0x80000690]:sd a1, 280(gp)<br>         |
|  56|[0x800033c0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 281474976710656<br>                                                                                                                                       |[0x8000069c]:ori a1, a0, 4095<br> [0x800006a0]:sd a1, 288(gp)<br>      |
|  57|[0x800033c8]<br>0x0002000000000004|- rs1_val == 562949953421312<br>                                                                                                                                       |[0x800006ac]:ori a1, a0, 4<br> [0x800006b0]:sd a1, 296(gp)<br>         |
|  58|[0x800033d0]<br>0xFFFFFFFFFFFFFFBF|- rs1_val == 1125899906842624<br>                                                                                                                                      |[0x800006bc]:ori a1, a0, 4031<br> [0x800006c0]:sd a1, 304(gp)<br>      |
|  59|[0x800033d8]<br>0xFFFFFFFFFFFFF800|- rs1_val == 2251799813685248<br>                                                                                                                                      |[0x800006cc]:ori a1, a0, 2048<br> [0x800006d0]:sd a1, 312(gp)<br>      |
|  60|[0x800033e0]<br>0x0010000000000003|- rs1_val == 4503599627370496<br>                                                                                                                                      |[0x800006dc]:ori a1, a0, 3<br> [0x800006e0]:sd a1, 320(gp)<br>         |
|  61|[0x800033e8]<br>0x0020000000000100|- imm_val == 256<br> - rs1_val == 9007199254740992<br>                                                                                                                 |[0x800006ec]:ori a1, a0, 256<br> [0x800006f0]:sd a1, 328(gp)<br>       |
|  62|[0x800033f0]<br>0x00400000000007FF|- rs1_val == 18014398509481984<br>                                                                                                                                     |[0x800006fc]:ori a1, a0, 2047<br> [0x80000700]:sd a1, 336(gp)<br>      |
|  63|[0x800033f8]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == 36028797018963968<br>                                                                                                                                     |[0x8000070c]:ori a1, a0, 4092<br> [0x80000710]:sd a1, 344(gp)<br>      |
|  64|[0x80003400]<br>0xFFFFFFFFFFFFFFDF|- imm_val == -33<br> - rs1_val == 72057594037927936<br>                                                                                                                |[0x8000071c]:ori a1, a0, 4063<br> [0x80000720]:sd a1, 352(gp)<br>      |
|  65|[0x80003408]<br>0x0200000000000100|- rs1_val == 144115188075855872<br>                                                                                                                                    |[0x8000072c]:ori a1, a0, 256<br> [0x80000730]:sd a1, 360(gp)<br>       |
|  66|[0x80003410]<br>0x0400000000000400|- rs1_val == 288230376151711744<br>                                                                                                                                    |[0x8000073c]:ori a1, a0, 1024<br> [0x80000740]:sd a1, 368(gp)<br>      |
|  67|[0x80003418]<br>0xFFFFFFFFFFFFFEFF|- imm_val == -257<br> - rs1_val == 576460752303423488<br>                                                                                                              |[0x8000074c]:ori a1, a0, 3839<br> [0x80000750]:sd a1, 376(gp)<br>      |
|  68|[0x80003420]<br>0x1000000000000555|- rs1_val == 1152921504606846976<br>                                                                                                                                   |[0x8000075c]:ori a1, a0, 1365<br> [0x80000760]:sd a1, 384(gp)<br>      |
|  69|[0x80003428]<br>0x20000000000003FF|- rs1_val == 2305843009213693952<br>                                                                                                                                   |[0x8000076c]:ori a1, a0, 1023<br> [0x80000770]:sd a1, 392(gp)<br>      |
|  70|[0x80003430]<br>0x4000000000000100|- rs1_val == 4611686018427387904<br>                                                                                                                                   |[0x8000077c]:ori a1, a0, 256<br> [0x80000780]:sd a1, 400(gp)<br>       |
|  71|[0x80003438]<br>0xFFF7FFFFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                                                     |[0x80000790]:ori a1, a0, 7<br> [0x80000794]:sd a1, 408(gp)<br>         |
|  72|[0x80003440]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                                                     |[0x800007a4]:ori a1, a0, 3071<br> [0x800007a8]:sd a1, 416(gp)<br>      |
|  73|[0x80003448]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -9007199254740993<br>                                                                                                                                     |[0x800007b8]:ori a1, a0, 4093<br> [0x800007bc]:sd a1, 424(gp)<br>      |
|  74|[0x80003450]<br>0xFFBFFFFFFFFFFFFF|- rs1_val == -18014398509481985<br>                                                                                                                                    |[0x800007cc]:ori a1, a0, 16<br> [0x800007d0]:sd a1, 432(gp)<br>        |
|  75|[0x80003458]<br>0xFF7FFFFFFFFFFFFF|- rs1_val == -36028797018963969<br>                                                                                                                                    |[0x800007e0]:ori a1, a0, 256<br> [0x800007e4]:sd a1, 440(gp)<br>       |
|  76|[0x80003460]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                                                    |[0x800007f4]:ori a1, a0, 2730<br> [0x800007f8]:sd a1, 448(gp)<br>      |
|  77|[0x80003468]<br>0xFDFFFFFFFFFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                                                   |[0x80000808]:ori a1, a0, 3<br> [0x8000080c]:sd a1, 456(gp)<br>         |
|  78|[0x80003470]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                                                   |[0x8000081c]:ori a1, a0, 4092<br> [0x80000820]:sd a1, 464(gp)<br>      |
|  79|[0x80003478]<br>0xF7FFFFFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                                                   |[0x80000830]:ori a1, a0, 6<br> [0x80000834]:sd a1, 472(gp)<br>         |
|  80|[0x80003480]<br>0xEFFFFFFFFFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                                                  |[0x80000844]:ori a1, a0, 32<br> [0x80000848]:sd a1, 480(gp)<br>        |
|  81|[0x80003488]<br>0xDFFFFFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                                                  |[0x80000858]:ori a1, a0, 1023<br> [0x8000085c]:sd a1, 488(gp)<br>      |
|  82|[0x80003490]<br>0xBFFFFFFFFFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                                                  |[0x8000086c]:ori a1, a0, 128<br> [0x80000870]:sd a1, 496(gp)<br>       |
|  83|[0x80003498]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 6148914691236517205<br>                                                                                                                                   |[0x80000894]:ori a1, a0, 3071<br> [0x80000898]:sd a1, 504(gp)<br>      |
|  84|[0x800034a0]<br>0xAAAAAAAAAAAAAAAA|- rs1_val == -6148914691236517206<br>                                                                                                                                  |[0x800008bc]:ori a1, a0, 32<br> [0x800008c0]:sd a1, 512(gp)<br>        |
|  85|[0x800034a8]<br>0xFFFFFFEFFFFFFFFF|- imm_val == 2<br> - rs1_val == -68719476737<br>                                                                                                                       |[0x800008d0]:ori a1, a0, 2<br> [0x800008d4]:sd a1, 520(gp)<br>         |
|  86|[0x800034b0]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -2<br>                                                                                                                                                    |[0x800008dc]:ori a1, a0, 4086<br> [0x800008e0]:sd a1, 528(gp)<br>      |
|  87|[0x800034b8]<br>0xFFFFFFFFFFFFFFFD|- rs1_val == -3<br>                                                                                                                                                    |[0x800008e8]:ori a1, a0, 16<br> [0x800008ec]:sd a1, 536(gp)<br>        |
|  88|[0x800034c0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -5<br>                                                                                                                                                    |[0x800008f4]:ori a1, a0, 3071<br> [0x800008f8]:sd a1, 544(gp)<br>      |
|  89|[0x800034c8]<br>0xFFFFFFFFFFFFFFEF|- rs1_val == -17<br>                                                                                                                                                   |[0x80000900]:ori a1, a0, 2048<br> [0x80000904]:sd a1, 552(gp)<br>      |
|  90|[0x800034d0]<br>0xFFFFFFFFFFFFFFDF|- rs1_val == -33<br>                                                                                                                                                   |[0x8000090c]:ori a1, a0, 8<br> [0x80000910]:sd a1, 560(gp)<br>         |
|  91|[0x800034d8]<br>0xFFFFFFFFFFFFFFBF|- rs1_val == -65<br>                                                                                                                                                   |[0x80000918]:ori a1, a0, 2048<br> [0x8000091c]:sd a1, 568(gp)<br>      |
|  92|[0x800034e0]<br>0xFFFFFFFFFFFFFF7F|- rs1_val == -129<br>                                                                                                                                                  |[0x80000924]:ori a1, a0, 32<br> [0x80000928]:sd a1, 576(gp)<br>        |
|  93|[0x800034e8]<br>0xFFFFFFFFFFFFFDFF|- rs1_val == -513<br>                                                                                                                                                  |[0x80000930]:ori a1, a0, 5<br> [0x80000934]:sd a1, 584(gp)<br>         |
|  94|[0x800034f0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1025<br>                                                                                                                                                 |[0x8000093c]:ori a1, a0, 1365<br> [0x80000940]:sd a1, 592(gp)<br>      |
|  95|[0x800034f8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2049<br>                                                                                                                                                 |[0x8000094c]:ori a1, a0, 3583<br> [0x80000950]:sd a1, 600(gp)<br>      |
|  96|[0x80003500]<br>0xFFFFFFFFFFFFEFFF|- rs1_val == -4097<br>                                                                                                                                                 |[0x8000095c]:ori a1, a0, 64<br> [0x80000960]:sd a1, 608(gp)<br>        |
|  97|[0x80003508]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8193<br>                                                                                                                                                 |[0x8000096c]:ori a1, a0, 4091<br> [0x80000970]:sd a1, 616(gp)<br>      |
|  98|[0x80003510]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -16385<br>                                                                                                                                                |[0x8000097c]:ori a1, a0, 3072<br> [0x80000980]:sd a1, 624(gp)<br>      |
|  99|[0x80003518]<br>0xFFFFFFFFFFFF7FFF|- rs1_val == -32769<br>                                                                                                                                                |[0x8000098c]:ori a1, a0, 5<br> [0x80000990]:sd a1, 632(gp)<br>         |
| 100|[0x80003520]<br>0xFFFFFFFFFFFEFFFF|- rs1_val == -65537<br>                                                                                                                                                |[0x8000099c]:ori a1, a0, 256<br> [0x800009a0]:sd a1, 640(gp)<br>       |
| 101|[0x80003528]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -131073<br>                                                                                                                                               |[0x800009ac]:ori a1, a0, 4093<br> [0x800009b0]:sd a1, 648(gp)<br>      |
| 102|[0x80003530]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -262145<br>                                                                                                                                               |[0x800009bc]:ori a1, a0, 4091<br> [0x800009c0]:sd a1, 656(gp)<br>      |
| 103|[0x80003538]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -524289<br>                                                                                                                                               |[0x800009cc]:ori a1, a0, 3071<br> [0x800009d0]:sd a1, 664(gp)<br>      |
| 104|[0x80003540]<br>0xFFFFFFFFFFEFFFFF|- rs1_val == -1048577<br>                                                                                                                                              |[0x800009dc]:ori a1, a0, 9<br> [0x800009e0]:sd a1, 672(gp)<br>         |
| 105|[0x80003548]<br>0xFFFFFFFFFFDFFFFF|- rs1_val == -2097153<br>                                                                                                                                              |[0x800009ec]:ori a1, a0, 6<br> [0x800009f0]:sd a1, 680(gp)<br>         |
| 106|[0x80003550]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4194305<br>                                                                                                                                              |[0x800009fc]:ori a1, a0, 4092<br> [0x80000a00]:sd a1, 688(gp)<br>      |
| 107|[0x80003558]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8388609<br>                                                                                                                                              |[0x80000a0c]:ori a1, a0, 3839<br> [0x80000a10]:sd a1, 696(gp)<br>      |
| 108|[0x80003560]<br>0xFFFFFFFFFEFFFFFF|- rs1_val == -16777217<br>                                                                                                                                             |[0x80000a1c]:ori a1, a0, 5<br> [0x80000a20]:sd a1, 704(gp)<br>         |
| 109|[0x80003568]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -33554433<br>                                                                                                                                             |[0x80000a2c]:ori a1, a0, 4089<br> [0x80000a30]:sd a1, 712(gp)<br>      |
| 110|[0x80003570]<br>0xFFFFFFFFFBFFFFFF|- rs1_val == -67108865<br>                                                                                                                                             |[0x80000a3c]:ori a1, a0, 512<br> [0x80000a40]:sd a1, 720(gp)<br>       |
| 111|[0x80003578]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -134217729<br>                                                                                                                                            |[0x80000a4c]:ori a1, a0, 2048<br> [0x80000a50]:sd a1, 728(gp)<br>      |
| 112|[0x80003580]<br>0xFFFFFFFFEFFFFFFF|- rs1_val == -268435457<br>                                                                                                                                            |[0x80000a5c]:ori a1, a0, 4<br> [0x80000a60]:sd a1, 736(gp)<br>         |
| 113|[0x80003588]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -536870913<br>                                                                                                                                            |[0x80000a6c]:ori a1, a0, 4093<br> [0x80000a70]:sd a1, 744(gp)<br>      |
| 114|[0x80003590]<br>0xFFFFFFFFBFFFFFFF|- rs1_val == -1073741825<br>                                                                                                                                           |[0x80000a7c]:ori a1, a0, 128<br> [0x80000a80]:sd a1, 752(gp)<br>       |
| 115|[0x80003598]<br>0xFFFFFFFEFFFFFFFF|- rs1_val == -4294967297<br>                                                                                                                                           |[0x80000a90]:ori a1, a0, 64<br> [0x80000a94]:sd a1, 760(gp)<br>        |
| 116|[0x800035a0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8589934593<br>                                                                                                                                           |[0x80000aa4]:ori a1, a0, 4063<br> [0x80000aa8]:sd a1, 768(gp)<br>      |
| 117|[0x800035a8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17179869185<br>                                                                                                                                          |[0x80000ab8]:ori a1, a0, 4088<br> [0x80000abc]:sd a1, 776(gp)<br>      |
| 118|[0x800035b0]<br>0xFFFFFFF7FFFFFFFF|- rs1_val == -34359738369<br>                                                                                                                                          |[0x80000acc]:ori a1, a0, 32<br> [0x80000ad0]:sd a1, 784(gp)<br>        |
| 119|[0x800035b8]<br>0xFFFFFFDFFFFFFFFF|- rs1_val == -137438953473<br>                                                                                                                                         |[0x80000ae0]:ori a1, a0, 1024<br> [0x80000ae4]:sd a1, 792(gp)<br>      |
| 120|[0x800035c0]<br>0xFFFFFFBFFFFFFFFF|- rs1_val == -274877906945<br>                                                                                                                                         |[0x80000af4]:ori a1, a0, 4<br> [0x80000af8]:sd a1, 800(gp)<br>         |
| 121|[0x800035c8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -549755813889<br>                                                                                                                                         |[0x80000b08]:ori a1, a0, 4094<br> [0x80000b0c]:sd a1, 808(gp)<br>      |
| 122|[0x800035d0]<br>0xFFFFFEFFFFFFFFFF|- rs1_val == -1099511627777<br>                                                                                                                                        |[0x80000b1c]:ori a1, a0, 16<br> [0x80000b20]:sd a1, 816(gp)<br>        |
| 123|[0x800035d8]<br>0xFFFFFDFFFFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                                                        |[0x80000b30]:ori a1, a0, 5<br> [0x80000b34]:sd a1, 824(gp)<br>         |
| 124|[0x800035e0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4398046511105<br>                                                                                                                                        |[0x80000b44]:ori a1, a0, 4088<br> [0x80000b48]:sd a1, 832(gp)<br>      |
| 125|[0x800035e8]<br>0xFFFFF7FFFFFFFFFF|- rs1_val == -8796093022209<br>                                                                                                                                        |[0x80000b58]:ori a1, a0, 1024<br> [0x80000b5c]:sd a1, 840(gp)<br>      |
| 126|[0x800035f0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17592186044417<br>                                                                                                                                       |[0x80000b6c]:ori a1, a0, 4093<br> [0x80000b70]:sd a1, 848(gp)<br>      |
| 127|[0x800035f8]<br>0xFFFFDFFFFFFFFFFF|- rs1_val == -35184372088833<br>                                                                                                                                       |[0x80000b80]:ori a1, a0, 2<br> [0x80000b84]:sd a1, 856(gp)<br>         |
| 128|[0x80003600]<br>0xFFFFBFFFFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                                                       |[0x80000b94]:ori a1, a0, 1365<br> [0x80000b98]:sd a1, 864(gp)<br>      |
| 129|[0x80003608]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -140737488355329<br>                                                                                                                                      |[0x80000ba8]:ori a1, a0, 4093<br> [0x80000bac]:sd a1, 872(gp)<br>      |
| 130|[0x80003610]<br>0xFFFEFFFFFFFFFFFF|- rs1_val == -281474976710657<br>                                                                                                                                      |[0x80000bbc]:ori a1, a0, 256<br> [0x80000bc0]:sd a1, 880(gp)<br>       |
| 131|[0x80003618]<br>0xFFFDFFFFFFFFFFFF|- rs1_val == -562949953421313<br>                                                                                                                                      |[0x80000bd0]:ori a1, a0, 1<br> [0x80000bd4]:sd a1, 888(gp)<br>         |
| 132|[0x80003620]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                                                     |[0x80000be4]:ori a1, a0, 2048<br> [0x80000be8]:sd a1, 896(gp)<br>      |
| 133|[0x80003630]<br>0x0000000000100001|- rs1_val == 1048576<br>                                                                                                                                               |[0x80000bfc]:ori a1, a0, 1<br> [0x80000c00]:sd a1, 912(gp)<br>         |
