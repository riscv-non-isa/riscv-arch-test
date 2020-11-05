
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000c30')]      |
| SIG_REGION                | [('0x80003208', '0x80003640', '135 dwords')]      |
| COV_LABELS                | ori      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/ori-01.S/ori-01.S    |
| Total Number of coverpoints| 235     |
| Total Coverpoints Hit     | 235      |
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
      [0x80000c1c]:ori a1, a0, 0
      [0x80000c20]:sd a1, 880(tp)
 -- Signature Address: 0x80003638 Data: 0x0000000000200000
 -- Redundant Coverpoints hit by the op
      - opcode : ori
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - imm_val == 0
      - rs1_val != imm_val
      - rs1_val == 2097152






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

|s.no|            signature             |                                                                           coverpoints                                                                           |                               code                                |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003208]<br>0x0000000000000004|- opcode : ori<br> - rs1 : x4<br> - rd : x5<br> - rs1 != rd<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br> - imm_val == 4<br> - rs1_val == 4<br> |[0x8000039c]:ori t0, tp, 4<br> [0x800003a0]:sd t0, 0(ra)<br>       |
|   2|[0x80003210]<br>0x00000000000027FF|- rs1 : x25<br> - rd : x25<br> - rs1 == rd<br> - imm_val == (2**(12-1)-1)<br> - rs1_val != imm_val<br> - imm_val == 2047<br> - rs1_val == 8192<br>               |[0x800003a8]:ori s9, s9, 2047<br> [0x800003ac]:sd s9, 8(ra)<br>    |
|   3|[0x80003218]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x14<br> - rd : x13<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 1152921504606846976<br>                                                            |[0x800003b8]:ori a3, a4, 4095<br> [0x800003bc]:sd a3, 16(ra)<br>   |
|   4|[0x80003220]<br>0xFFFFFFFFDFFFFFFF|- rs1 : x19<br> - rd : x22<br> - imm_val == 1<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -536870913<br>                                                  |[0x800003c8]:ori s6, s3, 1<br> [0x800003cc]:sd s6, 24(ra)<br>      |
|   5|[0x80003228]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x9<br> - rd : x21<br> - rs1_val < 0 and imm_val < 0<br> - imm_val == -1366<br> - rs1_val == -281474976710657<br>                                         |[0x800003dc]:ori s5, s1, 2730<br> [0x800003e0]:sd s5, 32(ra)<br>   |
|   6|[0x80003230]<br>0x8000000000000040|- rs1 : x24<br> - rd : x8<br> - rs1_val == (-2**(xlen-1))<br> - imm_val == 64<br> - rs1_val == -9223372036854775808<br>                                          |[0x800003ec]:ori fp, s8, 64<br> [0x800003f0]:sd fp, 40(ra)<br>     |
|   7|[0x80003238]<br>0x0000000000000000|- rs1 : x10<br> - rd : x30<br> - imm_val == 0<br> - rs1_val == 0<br>                                                                                             |[0x800003f8]:ori t5, a0, 0<br> [0x800003fc]:sd t5, 48(ra)<br>      |
|   8|[0x80003240]<br>0x0000000000000200|- rs1 : x0<br> - rd : x20<br> - imm_val == 512<br>                                                                                                               |[0x8000040c]:ori s4, zero, 512<br> [0x80000410]:sd s4, 56(ra)<br>  |
|   9|[0x80003248]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x17<br> - rd : x9<br> - rs1_val == 1<br>                                                                                                                 |[0x80000418]:ori s1, a7, 4095<br> [0x8000041c]:sd s1, 64(ra)<br>   |
|  10|[0x80003250]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x30<br> - rd : x10<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br> - rs1_val == -68719476737<br>                                                |[0x8000042c]:ori a0, t5, 2048<br> [0x80000430]:sd a0, 72(ra)<br>   |
|  11|[0x80003258]<br>0xFFFFFFFFFFFFFFBF|- rs1 : x2<br> - rd : x16<br> - imm_val == -65<br> - rs1_val == 2<br>                                                                                            |[0x80000438]:ori a6, sp, 4031<br> [0x8000043c]:sd a6, 80(ra)<br>   |
|  12|[0x80003260]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x20<br> - rd : x27<br> - rs1_val == 8<br>                                                                                                                |[0x80000444]:ori s11, s4, 4095<br> [0x80000448]:sd s11, 88(ra)<br> |
|  13|[0x80003268]<br>0xFFFFFFFFFFFFFFF8|- rs1 : x31<br> - rd : x6<br> - rs1_val == 16<br>                                                                                                                |[0x80000450]:ori t1, t6, 4088<br> [0x80000454]:sd t1, 96(ra)<br>   |
|  14|[0x80003270]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x26<br> - rd : x28<br> - imm_val == -2<br> - rs1_val == 32<br>                                                                                           |[0x8000045c]:ori t3, s10, 4094<br> [0x80000460]:sd t3, 104(ra)<br> |
|  15|[0x80003278]<br>0x0000000000000047|- rs1 : x15<br> - rd : x12<br> - rs1_val == 64<br>                                                                                                               |[0x80000468]:ori a2, a5, 7<br> [0x8000046c]:sd a2, 112(ra)<br>     |
|  16|[0x80003280]<br>0xFFFFFFFFFFFFFFFA|- rs1 : x8<br> - rd : x17<br> - rs1_val == 128<br>                                                                                                               |[0x80000474]:ori a7, fp, 4090<br> [0x80000478]:sd a7, 120(ra)<br>  |
|  17|[0x80003288]<br>0x00000000000003FF|- rs1 : x27<br> - rd : x18<br> - rs1_val == 256<br>                                                                                                              |[0x80000480]:ori s2, s11, 1023<br> [0x80000484]:sd s2, 128(ra)<br> |
|  18|[0x80003290]<br>0xFFFFFFFFFFFFFA00|- rs1 : x11<br> - rd : x15<br> - rs1_val == 512<br>                                                                                                              |[0x8000048c]:ori a5, a1, 2048<br> [0x80000490]:sd a5, 136(ra)<br>  |
|  19|[0x80003298]<br>0x0000000000000400|- rs1 : x12<br> - rd : x26<br> - rs1_val == 1024<br>                                                                                                             |[0x80000498]:ori s10, a2, 0<br> [0x8000049c]:sd s10, 144(ra)<br>   |
|  20|[0x800032a0]<br>0x0000000000000802|- rs1 : x23<br> - rd : x4<br> - imm_val == 2<br> - rs1_val == 2048<br>                                                                                           |[0x800004a8]:ori tp, s7, 2<br> [0x800004ac]:sd tp, 152(ra)<br>     |
|  21|[0x800032a8]<br>0xFFFFFFFFFFFFFFF7|- rs1 : x28<br> - rd : x11<br> - imm_val == -9<br> - rs1_val == 4096<br>                                                                                         |[0x800004b4]:ori a1, t3, 4087<br> [0x800004b8]:sd a1, 160(ra)<br>  |
|  22|[0x800032b0]<br>0x0000000000004008|- rs1 : x13<br> - rd : x14<br> - imm_val == 8<br> - rs1_val == 16384<br>                                                                                         |[0x800004c0]:ori a4, a3, 8<br> [0x800004c4]:sd a4, 168(ra)<br>     |
|  23|[0x800032b8]<br>0x0000000000008006|- rs1 : x18<br> - rd : x24<br> - rs1_val == 32768<br>                                                                                                            |[0x800004cc]:ori s8, s2, 6<br> [0x800004d0]:sd s8, 176(ra)<br>     |
|  24|[0x800032c0]<br>0x00000000000103FF|- rs1 : x3<br> - rd : x31<br> - rs1_val == 65536<br>                                                                                                             |[0x800004d8]:ori t6, gp, 1023<br> [0x800004dc]:sd t6, 184(ra)<br>  |
|  25|[0x800032c8]<br>0xFFFFFFFFFFFFFFEF|- rs1 : x22<br> - rd : x7<br> - imm_val == -17<br> - rs1_val == 131072<br>                                                                                       |[0x800004ec]:ori t2, s6, 4079<br> [0x800004f0]:sd t2, 0(tp)<br>    |
|  26|[0x800032d0]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x6<br> - rd : x23<br> - rs1_val == 262144<br>                                                                                                            |[0x800004f8]:ori s7, t1, 4094<br> [0x800004fc]:sd s7, 8(tp)<br>    |
|  27|[0x800032d8]<br>0x0000000000080004|- rs1 : x16<br> - rd : x2<br> - rs1_val == 524288<br>                                                                                                            |[0x80000504]:ori sp, a6, 4<br> [0x80000508]:sd sp, 16(tp)<br>      |
|  28|[0x800032e0]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x29<br> - rd : x1<br> - rs1_val == 1048576<br>                                                                                                           |[0x80000510]:ori ra, t4, 4094<br> [0x80000514]:sd ra, 24(tp)<br>   |
|  29|[0x800032e8]<br>0x0000000000000000|- rs1 : x21<br> - rd : x0<br> - rs1_val == 2097152<br>                                                                                                           |[0x8000051c]:ori zero, s5, 0<br> [0x80000520]:sd zero, 32(tp)<br>  |
|  30|[0x800032f0]<br>0x0000000000400020|- rs1 : x7<br> - rd : x29<br> - imm_val == 32<br> - rs1_val == 4194304<br>                                                                                       |[0x80000528]:ori t4, t2, 32<br> [0x8000052c]:sd t4, 40(tp)<br>     |
|  31|[0x800032f8]<br>0x0000000000800080|- rs1 : x1<br> - rd : x3<br> - imm_val == 128<br> - rs1_val == 8388608<br>                                                                                       |[0x80000534]:ori gp, ra, 128<br> [0x80000538]:sd gp, 48(tp)<br>    |
|  32|[0x80003300]<br>0xFFFFFFFFFFFFFFF9|- rs1 : x5<br> - rd : x19<br> - rs1_val == 16777216<br>                                                                                                          |[0x80000540]:ori s3, t0, 4089<br> [0x80000544]:sd s3, 56(tp)<br>   |
|  33|[0x80003308]<br>0x0000000002000006|- rs1_val == 33554432<br>                                                                                                                                        |[0x8000054c]:ori a1, a0, 6<br> [0x80000550]:sd a1, 64(tp)<br>      |
|  34|[0x80003310]<br>0x0000000004000100|- imm_val == 256<br> - rs1_val == 67108864<br>                                                                                                                   |[0x80000558]:ori a1, a0, 256<br> [0x8000055c]:sd a1, 72(tp)<br>    |
|  35|[0x80003318]<br>0x0000000008000007|- rs1_val == 134217728<br>                                                                                                                                       |[0x80000564]:ori a1, a0, 7<br> [0x80000568]:sd a1, 80(tp)<br>      |
|  36|[0x80003320]<br>0x0000000010000004|- rs1_val == 268435456<br>                                                                                                                                       |[0x80000570]:ori a1, a0, 4<br> [0x80000574]:sd a1, 88(tp)<br>      |
|  37|[0x80003328]<br>0x0000000020000007|- rs1_val == 536870912<br>                                                                                                                                       |[0x8000057c]:ori a1, a0, 7<br> [0x80000580]:sd a1, 96(tp)<br>      |
|  38|[0x80003330]<br>0x0000000040000008|- rs1_val == 1073741824<br>                                                                                                                                      |[0x80000588]:ori a1, a0, 8<br> [0x8000058c]:sd a1, 104(tp)<br>     |
|  39|[0x80003338]<br>0x0000000080000000|- rs1_val == 2147483648<br>                                                                                                                                      |[0x80000598]:ori a1, a0, 0<br> [0x8000059c]:sd a1, 112(tp)<br>     |
|  40|[0x80003340]<br>0x0000000100000000|- rs1_val == 4294967296<br>                                                                                                                                      |[0x800005a8]:ori a1, a0, 0<br> [0x800005ac]:sd a1, 120(tp)<br>     |
|  41|[0x80003348]<br>0xFFFFFFFFFFFFFAAA|- rs1_val == 8589934592<br>                                                                                                                                      |[0x800005b8]:ori a1, a0, 2730<br> [0x800005bc]:sd a1, 128(tp)<br>  |
|  42|[0x80003350]<br>0xFFFFFFFFFFFFF800|- rs1_val == 17179869184<br>                                                                                                                                     |[0x800005c8]:ori a1, a0, 2048<br> [0x800005cc]:sd a1, 136(tp)<br>  |
|  43|[0x80003358]<br>0x0000000800000200|- rs1_val == 34359738368<br>                                                                                                                                     |[0x800005d8]:ori a1, a0, 512<br> [0x800005dc]:sd a1, 144(tp)<br>   |
|  44|[0x80003360]<br>0x0000001000000100|- rs1_val == 68719476736<br>                                                                                                                                     |[0x800005e8]:ori a1, a0, 256<br> [0x800005ec]:sd a1, 152(tp)<br>   |
|  45|[0x80003368]<br>0x0000002000000020|- rs1_val == 137438953472<br>                                                                                                                                    |[0x800005f8]:ori a1, a0, 32<br> [0x800005fc]:sd a1, 160(tp)<br>    |
|  46|[0x80003370]<br>0x0000004000000040|- rs1_val == 274877906944<br>                                                                                                                                    |[0x80000608]:ori a1, a0, 64<br> [0x8000060c]:sd a1, 168(tp)<br>    |
|  47|[0x80003378]<br>0xFFFFFFFFFFFFFFBF|- rs1_val == 549755813888<br>                                                                                                                                    |[0x80000618]:ori a1, a0, 4031<br> [0x8000061c]:sd a1, 176(tp)<br>  |
|  48|[0x80003380]<br>0x0000010000000400|- imm_val == 1024<br> - rs1_val == 1099511627776<br>                                                                                                             |[0x80000628]:ori a1, a0, 1024<br> [0x8000062c]:sd a1, 184(tp)<br>  |
|  49|[0x80003388]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 2199023255552<br>                                                                                                                                   |[0x80000638]:ori a1, a0, 4095<br> [0x8000063c]:sd a1, 192(tp)<br>  |
|  50|[0x80003390]<br>0xFFFFFFFFFFFFFFEF|- rs1_val == 4398046511104<br>                                                                                                                                   |[0x80000648]:ori a1, a0, 4079<br> [0x8000064c]:sd a1, 200(tp)<br>  |
|  51|[0x80003398]<br>0xFFFFFFFFFFFFFDFF|- imm_val == -513<br> - rs1_val == 8796093022208<br>                                                                                                             |[0x80000658]:ori a1, a0, 3583<br> [0x8000065c]:sd a1, 208(tp)<br>  |
|  52|[0x800033a0]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == 17592186044416<br>                                                                                                                                  |[0x80000668]:ori a1, a0, 4087<br> [0x8000066c]:sd a1, 216(tp)<br>  |
|  53|[0x800033a8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 35184372088832<br>                                                                                                                                  |[0x80000678]:ori a1, a0, 4095<br> [0x8000067c]:sd a1, 224(tp)<br>  |
|  54|[0x800033b0]<br>0xFFFFFFFFFFFFFAAA|- rs1_val == 70368744177664<br>                                                                                                                                  |[0x80000688]:ori a1, a0, 2730<br> [0x8000068c]:sd a1, 232(tp)<br>  |
|  55|[0x800033b8]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == 140737488355328<br>                                                                                                                                 |[0x80000698]:ori a1, a0, 4087<br> [0x8000069c]:sd a1, 240(tp)<br>  |
|  56|[0x800033c0]<br>0xFFFFFFFFFFFFFFFB|- imm_val == -5<br> - rs1_val == 281474976710656<br>                                                                                                             |[0x800006a8]:ori a1, a0, 4091<br> [0x800006ac]:sd a1, 248(tp)<br>  |
|  57|[0x800033c8]<br>0x0002000000000009|- rs1_val == 562949953421312<br>                                                                                                                                 |[0x800006b8]:ori a1, a0, 9<br> [0x800006bc]:sd a1, 256(tp)<br>     |
|  58|[0x800033d0]<br>0x0004000000000400|- rs1_val == 1125899906842624<br>                                                                                                                                |[0x800006c8]:ori a1, a0, 1024<br> [0x800006cc]:sd a1, 264(tp)<br>  |
|  59|[0x800033d8]<br>0x0008000000000006|- rs1_val == 2251799813685248<br>                                                                                                                                |[0x800006d8]:ori a1, a0, 6<br> [0x800006dc]:sd a1, 272(tp)<br>     |
|  60|[0x800033e0]<br>0x0010000000000008|- rs1_val == 4503599627370496<br>                                                                                                                                |[0x800006e8]:ori a1, a0, 8<br> [0x800006ec]:sd a1, 280(tp)<br>     |
|  61|[0x800033e8]<br>0x0020000000000080|- rs1_val == 9007199254740992<br>                                                                                                                                |[0x800006f8]:ori a1, a0, 128<br> [0x800006fc]:sd a1, 288(tp)<br>   |
|  62|[0x800033f0]<br>0x00400000000007FF|- rs1_val == 18014398509481984<br>                                                                                                                               |[0x80000708]:ori a1, a0, 2047<br> [0x8000070c]:sd a1, 296(tp)<br>  |
|  63|[0x800033f8]<br>0x0080000000000100|- rs1_val == 36028797018963968<br>                                                                                                                               |[0x80000718]:ori a1, a0, 256<br> [0x8000071c]:sd a1, 304(tp)<br>   |
|  64|[0x80003400]<br>0xFFFFFFFFFFFFFF7F|- imm_val == -129<br> - rs1_val == 72057594037927936<br>                                                                                                         |[0x80000728]:ori a1, a0, 3967<br> [0x8000072c]:sd a1, 312(tp)<br>  |
|  65|[0x80003408]<br>0x0200000000000003|- rs1_val == 144115188075855872<br>                                                                                                                              |[0x80000738]:ori a1, a0, 3<br> [0x8000073c]:sd a1, 320(tp)<br>     |
|  66|[0x80003410]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == 288230376151711744<br>                                                                                                                              |[0x80000748]:ori a1, a0, 4092<br> [0x8000074c]:sd a1, 328(tp)<br>  |
|  67|[0x80003418]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == 576460752303423488<br>                                                                                                                              |[0x80000758]:ori a1, a0, 4094<br> [0x8000075c]:sd a1, 336(tp)<br>  |
|  68|[0x80003420]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 2305843009213693952<br>                                                                                                                             |[0x80000768]:ori a1, a0, 4095<br> [0x8000076c]:sd a1, 344(tp)<br>  |
|  69|[0x80003428]<br>0xFFFFFFFFFFFFFFF9|- rs1_val == 4611686018427387904<br>                                                                                                                             |[0x80000778]:ori a1, a0, 4089<br> [0x8000077c]:sd a1, 352(tp)<br>  |
|  70|[0x80003430]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -2<br>                                                                                                                                              |[0x80000784]:ori a1, a0, 128<br> [0x80000788]:sd a1, 360(tp)<br>   |
|  71|[0x80003438]<br>0xFFFFFFFFFFFFFFFD|- rs1_val == -3<br>                                                                                                                                              |[0x80000790]:ori a1, a0, 0<br> [0x80000794]:sd a1, 368(tp)<br>     |
|  72|[0x80003440]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -5<br>                                                                                                                                              |[0x8000079c]:ori a1, a0, 6<br> [0x800007a0]:sd a1, 376(tp)<br>     |
|  73|[0x80003448]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == -9<br>                                                                                                                                              |[0x800007a8]:ori a1, a0, 0<br> [0x800007ac]:sd a1, 384(tp)<br>     |
|  74|[0x80003450]<br>0xFFFFFFFFFFFFFFEF|- rs1_val == -17<br>                                                                                                                                             |[0x800007b4]:ori a1, a0, 2048<br> [0x800007b8]:sd a1, 392(tp)<br>  |
|  75|[0x80003458]<br>0xFFF7FFFFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                                               |[0x800007c8]:ori a1, a0, 512<br> [0x800007cc]:sd a1, 400(tp)<br>   |
|  76|[0x80003460]<br>0xFFEFFFFFFFFFFFFF|- imm_val == 1365<br> - rs1_val == -4503599627370497<br>                                                                                                         |[0x800007dc]:ori a1, a0, 1365<br> [0x800007e0]:sd a1, 408(tp)<br>  |
|  77|[0x80003468]<br>0xFFDFFFFFFFFFFFFF|- rs1_val == -9007199254740993<br>                                                                                                                               |[0x800007f0]:ori a1, a0, 1365<br> [0x800007f4]:sd a1, 416(tp)<br>  |
|  78|[0x80003470]<br>0xFFFFFFFFFFFFFFFF|- imm_val == -257<br> - rs1_val == -18014398509481985<br>                                                                                                        |[0x80000804]:ori a1, a0, 3839<br> [0x80000808]:sd a1, 424(tp)<br>  |
|  79|[0x80003478]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -36028797018963969<br>                                                                                                                              |[0x80000818]:ori a1, a0, 4094<br> [0x8000081c]:sd a1, 432(tp)<br>  |
|  80|[0x80003480]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -72057594037927937<br>                                                                                                                              |[0x8000082c]:ori a1, a0, 3583<br> [0x80000830]:sd a1, 440(tp)<br>  |
|  81|[0x80003488]<br>0xFDFFFFFFFFFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                                             |[0x80000840]:ori a1, a0, 6<br> [0x80000844]:sd a1, 448(tp)<br>     |
|  82|[0x80003490]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -288230376151711745<br>                                                                                                                             |[0x80000854]:ori a1, a0, 4031<br> [0x80000858]:sd a1, 456(tp)<br>  |
|  83|[0x80003498]<br>0xF7FFFFFFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                                             |[0x80000868]:ori a1, a0, 9<br> [0x8000086c]:sd a1, 464(tp)<br>     |
|  84|[0x800034a0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                                            |[0x8000087c]:ori a1, a0, 4091<br> [0x80000880]:sd a1, 472(tp)<br>  |
|  85|[0x800034a8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                                            |[0x80000890]:ori a1, a0, 4094<br> [0x80000894]:sd a1, 480(tp)<br>  |
|  86|[0x800034b0]<br>0xFFFFFFFFFFFFFFFF|- imm_val == -1025<br> - rs1_val == -4611686018427387905<br>                                                                                                     |[0x800008a4]:ori a1, a0, 3071<br> [0x800008a8]:sd a1, 488(tp)<br>  |
|  87|[0x800034b8]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == 6148914691236517205<br>                                                                                                                             |[0x800008cc]:ori a1, a0, 4087<br> [0x800008d0]:sd a1, 496(tp)<br>  |
|  88|[0x800034c0]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == -6148914691236517206<br>                                                                                                                            |[0x800008f4]:ori a1, a0, 4091<br> [0x800008f8]:sd a1, 504(tp)<br>  |
|  89|[0x800034c8]<br>0xFEFFFFFFFFFFFFFF|- imm_val == 16<br>                                                                                                                                              |[0x80000908]:ori a1, a0, 16<br> [0x8000090c]:sd a1, 512(tp)<br>    |
|  90|[0x800034d0]<br>0xFFFFFFFFFFFFFFFF|- imm_val == -3<br> - rs1_val == -2199023255553<br>                                                                                                              |[0x8000091c]:ori a1, a0, 4093<br> [0x80000920]:sd a1, 520(tp)<br>  |
|  91|[0x800034d8]<br>0xFFFFFFFFFFFFFFFF|- imm_val == -33<br>                                                                                                                                             |[0x80000930]:ori a1, a0, 4063<br> [0x80000934]:sd a1, 528(tp)<br>  |
|  92|[0x800034e0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -33<br>                                                                                                                                             |[0x8000093c]:ori a1, a0, 4087<br> [0x80000940]:sd a1, 536(tp)<br>  |
|  93|[0x800034e8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -65<br>                                                                                                                                             |[0x80000948]:ori a1, a0, 3071<br> [0x8000094c]:sd a1, 544(tp)<br>  |
|  94|[0x800034f0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -129<br>                                                                                                                                            |[0x80000954]:ori a1, a0, 2047<br> [0x80000958]:sd a1, 552(tp)<br>  |
|  95|[0x800034f8]<br>0xFFFFFFFFFFFFFEFF|- rs1_val == -257<br>                                                                                                                                            |[0x80000960]:ori a1, a0, 1<br> [0x80000964]:sd a1, 560(tp)<br>     |
|  96|[0x80003500]<br>0xFFFFFFFFFFFFFDFF|- rs1_val == -513<br>                                                                                                                                            |[0x8000096c]:ori a1, a0, 7<br> [0x80000970]:sd a1, 568(tp)<br>     |
|  97|[0x80003508]<br>0xFFFFFFFFFFFFFBFF|- rs1_val == -1025<br>                                                                                                                                           |[0x80000978]:ori a1, a0, 2730<br> [0x8000097c]:sd a1, 576(tp)<br>  |
|  98|[0x80003510]<br>0xFFFFFFFFFFFFF7FF|- rs1_val == -2049<br>                                                                                                                                           |[0x80000988]:ori a1, a0, 1023<br> [0x8000098c]:sd a1, 584(tp)<br>  |
|  99|[0x80003518]<br>0xFFFFFFFFFFFFEFFF|- rs1_val == -4097<br>                                                                                                                                           |[0x80000998]:ori a1, a0, 3<br> [0x8000099c]:sd a1, 592(tp)<br>     |
| 100|[0x80003520]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8193<br>                                                                                                                                           |[0x800009a8]:ori a1, a0, 2730<br> [0x800009ac]:sd a1, 600(tp)<br>  |
| 101|[0x80003528]<br>0xFFFFFFFFFFFFBFFF|- rs1_val == -16385<br>                                                                                                                                          |[0x800009b8]:ori a1, a0, 16<br> [0x800009bc]:sd a1, 608(tp)<br>    |
| 102|[0x80003530]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -32769<br>                                                                                                                                          |[0x800009c8]:ori a1, a0, 4091<br> [0x800009cc]:sd a1, 616(tp)<br>  |
| 103|[0x80003538]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -65537<br>                                                                                                                                          |[0x800009d8]:ori a1, a0, 3071<br> [0x800009dc]:sd a1, 624(tp)<br>  |
| 104|[0x80003540]<br>0xFFFFFFFFFFFDFFFF|- rs1_val == -131073<br>                                                                                                                                         |[0x800009e8]:ori a1, a0, 16<br> [0x800009ec]:sd a1, 632(tp)<br>    |
| 105|[0x80003548]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -262145<br>                                                                                                                                         |[0x800009f8]:ori a1, a0, 2048<br> [0x800009fc]:sd a1, 640(tp)<br>  |
| 106|[0x80003550]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -524289<br>                                                                                                                                         |[0x80000a08]:ori a1, a0, 4063<br> [0x80000a0c]:sd a1, 648(tp)<br>  |
| 107|[0x80003558]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1048577<br>                                                                                                                                        |[0x80000a18]:ori a1, a0, 4093<br> [0x80000a1c]:sd a1, 656(tp)<br>  |
| 108|[0x80003560]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -2097153<br>                                                                                                                                        |[0x80000a28]:ori a1, a0, 4063<br> [0x80000a2c]:sd a1, 664(tp)<br>  |
| 109|[0x80003568]<br>0xFFFFFFFFFFBFFFFF|- rs1_val == -4194305<br>                                                                                                                                        |[0x80000a38]:ori a1, a0, 1023<br> [0x80000a3c]:sd a1, 672(tp)<br>  |
| 110|[0x80003570]<br>0xFFFFFFFFFF7FFFFF|- rs1_val == -8388609<br>                                                                                                                                        |[0x80000a48]:ori a1, a0, 128<br> [0x80000a4c]:sd a1, 680(tp)<br>   |
| 111|[0x80003578]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -16777217<br>                                                                                                                                       |[0x80000a58]:ori a1, a0, 4094<br> [0x80000a5c]:sd a1, 688(tp)<br>  |
| 112|[0x80003580]<br>0xFFFFFFFFFDFFFFFF|- rs1_val == -33554433<br>                                                                                                                                       |[0x80000a68]:ori a1, a0, 6<br> [0x80000a6c]:sd a1, 696(tp)<br>     |
| 113|[0x80003588]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -67108865<br>                                                                                                                                       |[0x80000a78]:ori a1, a0, 4090<br> [0x80000a7c]:sd a1, 704(tp)<br>  |
| 114|[0x80003590]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -134217729<br>                                                                                                                                      |[0x80000a88]:ori a1, a0, 4094<br> [0x80000a8c]:sd a1, 712(tp)<br>  |
| 115|[0x80003598]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -268435457<br>                                                                                                                                      |[0x80000a98]:ori a1, a0, 4093<br> [0x80000a9c]:sd a1, 720(tp)<br>  |
| 116|[0x800035a0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1073741825<br>                                                                                                                                     |[0x80000aa8]:ori a1, a0, 4079<br> [0x80000aac]:sd a1, 728(tp)<br>  |
| 117|[0x800035a8]<br>0xFFFFFFFF7FFFFFFF|- rs1_val == -2147483649<br>                                                                                                                                     |[0x80000abc]:ori a1, a0, 6<br> [0x80000ac0]:sd a1, 736(tp)<br>     |
| 118|[0x800035b0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -4294967297<br>                                                                                                                                     |[0x80000ad0]:ori a1, a0, 4079<br> [0x80000ad4]:sd a1, 744(tp)<br>  |
| 119|[0x800035b8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8589934593<br>                                                                                                                                     |[0x80000ae4]:ori a1, a0, 3967<br> [0x80000ae8]:sd a1, 752(tp)<br>  |
| 120|[0x800035c0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17179869185<br>                                                                                                                                    |[0x80000af8]:ori a1, a0, 3967<br> [0x80000afc]:sd a1, 760(tp)<br>  |
| 121|[0x800035c8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -34359738369<br>                                                                                                                                    |[0x80000b0c]:ori a1, a0, 4093<br> [0x80000b10]:sd a1, 768(tp)<br>  |
| 122|[0x800035d0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -137438953473<br>                                                                                                                                   |[0x80000b20]:ori a1, a0, 3967<br> [0x80000b24]:sd a1, 776(tp)<br>  |
| 123|[0x800035d8]<br>0xFFFFFFBFFFFFFFFF|- rs1_val == -274877906945<br>                                                                                                                                   |[0x80000b34]:ori a1, a0, 128<br> [0x80000b38]:sd a1, 784(tp)<br>   |
| 124|[0x800035e0]<br>0xFFFFFF7FFFFFFFFF|- rs1_val == -549755813889<br>                                                                                                                                   |[0x80000b48]:ori a1, a0, 5<br> [0x80000b4c]:sd a1, 792(tp)<br>     |
| 125|[0x800035e8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1099511627777<br>                                                                                                                                  |[0x80000b5c]:ori a1, a0, 4095<br> [0x80000b60]:sd a1, 800(tp)<br>  |
| 126|[0x800035f0]<br>0xFFFFFBFFFFFFFFFF|- rs1_val == -4398046511105<br>                                                                                                                                  |[0x80000b70]:ori a1, a0, 1365<br> [0x80000b74]:sd a1, 808(tp)<br>  |
| 127|[0x800035f8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -8796093022209<br>                                                                                                                                  |[0x80000b84]:ori a1, a0, 3072<br> [0x80000b88]:sd a1, 816(tp)<br>  |
| 128|[0x80003600]<br>0xFFFFEFFFFFFFFFFF|- rs1_val == -17592186044417<br>                                                                                                                                 |[0x80000b98]:ori a1, a0, 1024<br> [0x80000b9c]:sd a1, 824(tp)<br>  |
| 129|[0x80003608]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -35184372088833<br>                                                                                                                                 |[0x80000bac]:ori a1, a0, 2730<br> [0x80000bb0]:sd a1, 832(tp)<br>  |
| 130|[0x80003610]<br>0xFFFFBFFFFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                                                 |[0x80000bc0]:ori a1, a0, 1<br> [0x80000bc4]:sd a1, 840(tp)<br>     |
| 131|[0x80003618]<br>0xFFFF7FFFFFFFFFFF|- rs1_val == -140737488355329<br>                                                                                                                                |[0x80000bd4]:ori a1, a0, 2047<br> [0x80000bd8]:sd a1, 848(tp)<br>  |
| 132|[0x80003620]<br>0xFFFDFFFFFFFFFFFF|- rs1_val == -562949953421313<br>                                                                                                                                |[0x80000be8]:ori a1, a0, 2<br> [0x80000bec]:sd a1, 856(tp)<br>     |
| 133|[0x80003628]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -1125899906842625<br>                                                                                                                               |[0x80000bfc]:ori a1, a0, 3071<br> [0x80000c00]:sd a1, 864(tp)<br>  |
| 134|[0x80003630]<br>0x7FFFFFFFFFFFFFFF|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>                                                                                            |[0x80000c10]:ori a1, a0, 512<br> [0x80000c14]:sd a1, 872(tp)<br>   |
