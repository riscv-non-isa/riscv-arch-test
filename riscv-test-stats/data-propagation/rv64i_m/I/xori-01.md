
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
| SIG_REGION                | [('0x80003208', '0x80003648', '136 dwords')]      |
| COV_LABELS                | xori      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/xori-01.S/xori-01.S    |
| Total Number of coverpoints| 235     |
| Total Coverpoints Hit     | 235      |
| Total Signature Updates   | 136      |
| STAT1                     | 135      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c1c]:xori a1, a0, 8
      [0x80000c20]:sd a1, 920(gp)
 -- Signature Address: 0x80003640 Data: 0x0000000000000808
 -- Redundant Coverpoints hit by the op
      - opcode : xori
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val > 0
      - imm_val == 8
      - rs1_val == 2048






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

|s.no|            signature             |                                                         coverpoints                                                         |                                code                                 |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003208]<br>0x0000000000000000|- opcode : xori<br> - rs1 : x4<br> - rd : x15<br> - rs1 != rd<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br> |[0x8000039c]:xori a5, tp, 5<br> [0x800003a0]:sd a5, 0(sp)<br>        |
|   2|[0x80003210]<br>0x0000000000000201|- rs1 : x6<br> - rd : x6<br> - rs1 == rd<br> - rs1_val == 1<br> - rs1_val != imm_val<br> - imm_val == 512<br>                |[0x800003a8]:xori t1, t1, 512<br> [0x800003ac]:sd t1, 8(sp)<br>      |
|   3|[0x80003218]<br>0xFFFFFFFFBFFFFFFA|- rs1 : x15<br> - rd : x31<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 1073741824<br>                                 |[0x800003b4]:xori t6, a5, 4090<br> [0x800003b8]:sd t6, 16(sp)<br>    |
|   4|[0x80003220]<br>0xFFFFFFFFFFFFF809|- rs1 : x27<br> - rd : x26<br> - imm_val == (2**(12-1)-1)<br> - rs1_val < 0 and imm_val > 0<br> - imm_val == 2047<br>        |[0x800003c0]:xori s10, s11, 2047<br> [0x800003c4]:sd s10, 24(sp)<br> |
|   5|[0x80003228]<br>0x0000000004000000|- rs1 : x17<br> - rd : x12<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -67108865<br>                                  |[0x800003d0]:xori a2, a7, 4095<br> [0x800003d4]:sd a2, 32(sp)<br>    |
|   6|[0x80003230]<br>0x7FFFFFFFFFFFFF7F|- rs1 : x20<br> - rd : x29<br> - rs1_val == (-2**(xlen-1))<br> - imm_val == -129<br> - rs1_val == -9223372036854775808<br>   |[0x800003e0]:xori t4, s4, 3967<br> [0x800003e4]:sd t4, 40(sp)<br>    |
|   7|[0x80003238]<br>0xFFFFFFFFFFFFFFBF|- rs1 : x21<br> - rd : x23<br> - rs1_val == 0<br> - imm_val == -65<br>                                                       |[0x800003ec]:xori s7, s5, 4031<br> [0x800003f0]:sd s7, 48(sp)<br>    |
|   8|[0x80003240]<br>0x8000000000000000|- rs1 : x16<br> - rd : x7<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>                          |[0x80000400]:xori t2, a6, 4095<br> [0x80000404]:sd t2, 56(sp)<br>    |
|   9|[0x80003248]<br>0xFFFFFFFFEFFFF800|- rs1 : x29<br> - rd : x25<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br> - rs1_val == 268435456<br>               |[0x8000040c]:xori s9, t4, 2048<br> [0x80000410]:sd s9, 64(sp)<br>    |
|  10|[0x80003250]<br>0x0800000000000000|- rs1 : x1<br> - rd : x3<br> - imm_val == 0<br> - rs1_val == 576460752303423488<br>                                          |[0x8000041c]:xori gp, ra, 0<br> [0x80000420]:sd gp, 72(sp)<br>       |
|  11|[0x80003258]<br>0xFFFFFFFFFFFBFFFE|- rs1 : x7<br> - rd : x8<br> - imm_val == 1<br> - rs1_val == -262145<br>                                                     |[0x8000042c]:xori fp, t2, 1<br> [0x80000430]:sd fp, 80(sp)<br>       |
|  12|[0x80003260]<br>0x0000000000000100|- rs1 : x0<br> - rd : x11<br> - imm_val == 256<br>                                                                           |[0x80000438]:xori a1, zero, 256<br> [0x8000043c]:sd a1, 88(sp)<br>   |
|  13|[0x80003268]<br>0xFFFFFFFFFFFFFFFC|- rs1 : x19<br> - rd : x5<br> - rs1_val == 4<br>                                                                             |[0x80000444]:xori t0, s3, 4088<br> [0x80000448]:sd t0, 96(sp)<br>    |
|  14|[0x80003270]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x23<br> - rd : x9<br> - rs1_val == 8<br>                                                                             |[0x80000450]:xori s1, s7, 4086<br> [0x80000454]:sd s1, 104(sp)<br>   |
|  15|[0x80003278]<br>0x0000000000000011|- rs1 : x24<br> - rd : x13<br> - rs1_val == 16<br>                                                                           |[0x8000045c]:xori a3, s8, 1<br> [0x80000460]:sd a3, 112(sp)<br>      |
|  16|[0x80003280]<br>0xFFFFFFFFFFFFFFD8|- rs1 : x22<br> - rd : x18<br> - rs1_val == 32<br>                                                                           |[0x80000468]:xori s2, s6, 4088<br> [0x8000046c]:sd s2, 120(sp)<br>   |
|  17|[0x80003288]<br>0x0000000000000043|- rs1 : x9<br> - rd : x19<br> - rs1_val == 64<br>                                                                            |[0x80000474]:xori s3, s1, 3<br> [0x80000478]:sd s3, 128(sp)<br>      |
|  18|[0x80003290]<br>0x0000000000000090|- rs1 : x25<br> - rd : x21<br> - imm_val == 16<br> - rs1_val == 128<br>                                                      |[0x80000480]:xori s5, s9, 16<br> [0x80000484]:sd s5, 136(sp)<br>     |
|  19|[0x80003298]<br>0x0000000000000180|- rs1 : x11<br> - rd : x14<br> - imm_val == 128<br> - rs1_val == 256<br>                                                     |[0x8000048c]:xori a4, a1, 128<br> [0x80000490]:sd a4, 144(sp)<br>    |
|  20|[0x800032a0]<br>0x0000000000000207|- rs1 : x3<br> - rd : x28<br> - rs1_val == 512<br>                                                                           |[0x80000498]:xori t3, gp, 7<br> [0x8000049c]:sd t3, 152(sp)<br>      |
|  21|[0x800032a8]<br>0xFFFFFFFFFFFFFBFF|- rs1 : x31<br> - rd : x10<br> - rs1_val == 1024<br>                                                                         |[0x800004ac]:xori a0, t6, 4095<br> [0x800004b0]:sd a0, 0(gp)<br>     |
|  22|[0x800032b0]<br>0x0000000000000000|- rs1 : x8<br> - rd : x0<br> - imm_val == 8<br> - rs1_val == 2048<br>                                                        |[0x800004bc]:xori zero, fp, 8<br> [0x800004c0]:sd zero, 8(gp)<br>    |
|  23|[0x800032b8]<br>0x0000000000001020|- rs1 : x14<br> - rd : x17<br> - imm_val == 32<br> - rs1_val == 4096<br>                                                     |[0x800004c8]:xori a7, a4, 32<br> [0x800004cc]:sd a7, 16(gp)<br>      |
|  24|[0x800032c0]<br>0xFFFFFFFFFFFFDFEF|- rs1 : x5<br> - rd : x27<br> - imm_val == -17<br> - rs1_val == 8192<br>                                                     |[0x800004d4]:xori s11, t0, 4079<br> [0x800004d8]:sd s11, 24(gp)<br>  |
|  25|[0x800032c8]<br>0x0000000000004005|- rs1 : x2<br> - rd : x4<br> - rs1_val == 16384<br>                                                                          |[0x800004e0]:xori tp, sp, 5<br> [0x800004e4]:sd tp, 32(gp)<br>       |
|  26|[0x800032d0]<br>0x0000000000008002|- rs1 : x12<br> - rd : x1<br> - imm_val == 2<br> - rs1_val == 32768<br>                                                      |[0x800004ec]:xori ra, a2, 2<br> [0x800004f0]:sd ra, 40(gp)<br>       |
|  27|[0x800032d8]<br>0x0000000000010400|- rs1 : x10<br> - rd : x30<br> - imm_val == 1024<br> - rs1_val == 65536<br>                                                  |[0x800004f8]:xori t5, a0, 1024<br> [0x800004fc]:sd t5, 48(gp)<br>    |
|  28|[0x800032e0]<br>0xFFFFFFFFFFFDF800|- rs1 : x13<br> - rd : x20<br> - rs1_val == 131072<br>                                                                       |[0x80000504]:xori s4, a3, 2048<br> [0x80000508]:sd s4, 56(gp)<br>    |
|  29|[0x800032e8]<br>0xFFFFFFFFFFFBFFF6|- rs1 : x30<br> - rd : x22<br> - rs1_val == 262144<br>                                                                       |[0x80000510]:xori s6, t5, 4086<br> [0x80000514]:sd s6, 64(gp)<br>    |
|  30|[0x800032f0]<br>0x0000000000080004|- rs1 : x28<br> - rd : x24<br> - imm_val == 4<br> - rs1_val == 524288<br>                                                    |[0x8000051c]:xori s8, t3, 4<br> [0x80000520]:sd s8, 72(gp)<br>       |
|  31|[0x800032f8]<br>0x0000000000100004|- rs1 : x18<br> - rd : x16<br> - rs1_val == 1048576<br>                                                                      |[0x80000528]:xori a6, s2, 4<br> [0x8000052c]:sd a6, 80(gp)<br>       |
|  32|[0x80003300]<br>0xFFFFFFFFFFDFFFFB|- rs1 : x26<br> - rd : x2<br> - imm_val == -5<br> - rs1_val == 2097152<br>                                                   |[0x80000534]:xori sp, s10, 4091<br> [0x80000538]:sd sp, 88(gp)<br>   |
|  33|[0x80003308]<br>0xFFFFFFFFFFBFFDFF|- imm_val == -513<br> - rs1_val == 4194304<br>                                                                               |[0x80000540]:xori a1, a0, 3583<br> [0x80000544]:sd a1, 96(gp)<br>    |
|  34|[0x80003310]<br>0x0000000000800001|- rs1_val == 8388608<br>                                                                                                     |[0x8000054c]:xori a1, a0, 1<br> [0x80000550]:sd a1, 104(gp)<br>      |
|  35|[0x80003318]<br>0xFFFFFFFFFEFFFFFE|- imm_val == -2<br> - rs1_val == 16777216<br>                                                                                |[0x80000558]:xori a1, a0, 4094<br> [0x8000055c]:sd a1, 112(gp)<br>   |
|  36|[0x80003320]<br>0x0000000002000007|- rs1_val == 33554432<br>                                                                                                    |[0x80000564]:xori a1, a0, 7<br> [0x80000568]:sd a1, 120(gp)<br>      |
|  37|[0x80003328]<br>0x0000000004000007|- rs1_val == 67108864<br>                                                                                                    |[0x80000570]:xori a1, a0, 7<br> [0x80000574]:sd a1, 128(gp)<br>      |
|  38|[0x80003330]<br>0xFFFFFFFFF7FFFFF8|- rs1_val == 134217728<br>                                                                                                   |[0x8000057c]:xori a1, a0, 4088<br> [0x80000580]:sd a1, 136(gp)<br>   |
|  39|[0x80003338]<br>0xFFFFFFFFDFFFFFF9|- rs1_val == 536870912<br>                                                                                                   |[0x80000588]:xori a1, a0, 4089<br> [0x8000058c]:sd a1, 144(gp)<br>   |
|  40|[0x80003340]<br>0x00000000800007FF|- rs1_val == 2147483648<br>                                                                                                  |[0x80000598]:xori a1, a0, 2047<br> [0x8000059c]:sd a1, 152(gp)<br>   |
|  41|[0x80003348]<br>0x0000000100000200|- rs1_val == 4294967296<br>                                                                                                  |[0x800005a8]:xori a1, a0, 512<br> [0x800005ac]:sd a1, 160(gp)<br>    |
|  42|[0x80003350]<br>0xFFFFFFFDFFFFFDFF|- rs1_val == 8589934592<br>                                                                                                  |[0x800005b8]:xori a1, a0, 3583<br> [0x800005bc]:sd a1, 168(gp)<br>   |
|  43|[0x80003358]<br>0xFFFFFFFBFFFFFFF6|- rs1_val == 17179869184<br>                                                                                                 |[0x800005c8]:xori a1, a0, 4086<br> [0x800005cc]:sd a1, 176(gp)<br>   |
|  44|[0x80003360]<br>0x0000000800000040|- imm_val == 64<br> - rs1_val == 34359738368<br>                                                                             |[0x800005d8]:xori a1, a0, 64<br> [0x800005dc]:sd a1, 184(gp)<br>     |
|  45|[0x80003368]<br>0x0000001000000005|- rs1_val == 68719476736<br>                                                                                                 |[0x800005e8]:xori a1, a0, 5<br> [0x800005ec]:sd a1, 192(gp)<br>      |
|  46|[0x80003370]<br>0x0000002000000010|- rs1_val == 137438953472<br>                                                                                                |[0x800005f8]:xori a1, a0, 16<br> [0x800005fc]:sd a1, 200(gp)<br>     |
|  47|[0x80003378]<br>0x0000004000000002|- rs1_val == 274877906944<br>                                                                                                |[0x80000608]:xori a1, a0, 2<br> [0x8000060c]:sd a1, 208(gp)<br>      |
|  48|[0x80003380]<br>0xFFFFFF7FFFFFFFF9|- rs1_val == 549755813888<br>                                                                                                |[0x80000618]:xori a1, a0, 4089<br> [0x8000061c]:sd a1, 216(gp)<br>   |
|  49|[0x80003388]<br>0x0000010000000005|- rs1_val == 1099511627776<br>                                                                                               |[0x80000628]:xori a1, a0, 5<br> [0x8000062c]:sd a1, 224(gp)<br>      |
|  50|[0x80003390]<br>0x0000020000000200|- rs1_val == 2199023255552<br>                                                                                               |[0x80000638]:xori a1, a0, 512<br> [0x8000063c]:sd a1, 232(gp)<br>    |
|  51|[0x80003398]<br>0x00000400000007FF|- rs1_val == 4398046511104<br>                                                                                               |[0x80000648]:xori a1, a0, 2047<br> [0x8000064c]:sd a1, 240(gp)<br>   |
|  52|[0x800033a0]<br>0xFFFFF7FFFFFFFC00|- rs1_val == 8796093022208<br>                                                                                               |[0x80000658]:xori a1, a0, 3072<br> [0x8000065c]:sd a1, 248(gp)<br>   |
|  53|[0x800033a8]<br>0xFFFFEFFFFFFFFFF7|- imm_val == -9<br> - rs1_val == 17592186044416<br>                                                                          |[0x80000668]:xori a1, a0, 4087<br> [0x8000066c]:sd a1, 256(gp)<br>   |
|  54|[0x800033b0]<br>0xFFFFDFFFFFFFF800|- rs1_val == 35184372088832<br>                                                                                              |[0x80000678]:xori a1, a0, 2048<br> [0x8000067c]:sd a1, 264(gp)<br>   |
|  55|[0x800033b8]<br>0x0000400000000006|- rs1_val == 70368744177664<br>                                                                                              |[0x80000688]:xori a1, a0, 6<br> [0x8000068c]:sd a1, 272(gp)<br>      |
|  56|[0x800033c0]<br>0xFFFF7FFFFFFFFAAA|- imm_val == -1366<br> - rs1_val == 140737488355328<br>                                                                      |[0x80000698]:xori a1, a0, 2730<br> [0x8000069c]:sd a1, 280(gp)<br>   |
|  57|[0x800033c8]<br>0xFFFEFFFFFFFFFFFA|- rs1_val == 281474976710656<br>                                                                                             |[0x800006a8]:xori a1, a0, 4090<br> [0x800006ac]:sd a1, 288(gp)<br>   |
|  58|[0x800033d0]<br>0xFFFDFFFFFFFFFFFA|- rs1_val == 562949953421312<br>                                                                                             |[0x800006b8]:xori a1, a0, 4090<br> [0x800006bc]:sd a1, 296(gp)<br>   |
|  59|[0x800033d8]<br>0xFFFBFFFFFFFFFFF9|- rs1_val == 1125899906842624<br>                                                                                            |[0x800006c8]:xori a1, a0, 4089<br> [0x800006cc]:sd a1, 304(gp)<br>   |
|  60|[0x800033e0]<br>0x0008000000000555|- imm_val == 1365<br> - rs1_val == 2251799813685248<br>                                                                      |[0x800006d8]:xori a1, a0, 1365<br> [0x800006dc]:sd a1, 312(gp)<br>   |
|  61|[0x800033e8]<br>0xFFEFFFFFFFFFFFBF|- rs1_val == 4503599627370496<br>                                                                                            |[0x800006e8]:xori a1, a0, 4031<br> [0x800006ec]:sd a1, 320(gp)<br>   |
|  62|[0x800033f0]<br>0xFFDFFFFFFFFFFFFB|- rs1_val == 9007199254740992<br>                                                                                            |[0x800006f8]:xori a1, a0, 4091<br> [0x800006fc]:sd a1, 328(gp)<br>   |
|  63|[0x800033f8]<br>0x0040000000000006|- rs1_val == 18014398509481984<br>                                                                                           |[0x80000708]:xori a1, a0, 6<br> [0x8000070c]:sd a1, 336(gp)<br>      |
|  64|[0x80003400]<br>0xFF7FFFFFFFFFFFFB|- rs1_val == 36028797018963968<br>                                                                                           |[0x80000718]:xori a1, a0, 4091<br> [0x8000071c]:sd a1, 344(gp)<br>   |
|  65|[0x80003408]<br>0x0100000000000007|- rs1_val == 72057594037927936<br>                                                                                           |[0x80000728]:xori a1, a0, 7<br> [0x8000072c]:sd a1, 352(gp)<br>      |
|  66|[0x80003410]<br>0xFDFFFFFFFFFFFFF6|- rs1_val == 144115188075855872<br>                                                                                          |[0x80000738]:xori a1, a0, 4086<br> [0x8000073c]:sd a1, 360(gp)<br>   |
|  67|[0x80003418]<br>0x0400000000000008|- rs1_val == 288230376151711744<br>                                                                                          |[0x80000748]:xori a1, a0, 8<br> [0x8000074c]:sd a1, 368(gp)<br>      |
|  68|[0x80003420]<br>0xEFFFFFFFFFFFFFF6|- rs1_val == 1152921504606846976<br>                                                                                         |[0x80000758]:xori a1, a0, 4086<br> [0x8000075c]:sd a1, 376(gp)<br>   |
|  69|[0x80003428]<br>0x2000000000000006|- rs1_val == 2305843009213693952<br>                                                                                         |[0x80000768]:xori a1, a0, 6<br> [0x8000076c]:sd a1, 384(gp)<br>      |
|  70|[0x80003430]<br>0x4000000000000000|- rs1_val == 4611686018427387904<br>                                                                                         |[0x80000778]:xori a1, a0, 0<br> [0x8000077c]:sd a1, 392(gp)<br>      |
|  71|[0x80003438]<br>0x0000000000000008|- rs1_val == -2<br>                                                                                                          |[0x80000784]:xori a1, a0, 4086<br> [0x80000788]:sd a1, 400(gp)<br>   |
|  72|[0x80003440]<br>0x0000000000000006|- rs1_val == -3<br>                                                                                                          |[0x80000790]:xori a1, a0, 4091<br> [0x80000794]:sd a1, 408(gp)<br>   |
|  73|[0x80003448]<br>0xFFFFFFFFFFFFFFF9|- rs1_val == -5<br>                                                                                                          |[0x8000079c]:xori a1, a0, 2<br> [0x800007a0]:sd a1, 416(gp)<br>      |
|  74|[0x80003450]<br>0x0000000000000108|- imm_val == -257<br> - rs1_val == -9<br>                                                                                    |[0x800007a8]:xori a1, a0, 3839<br> [0x800007ac]:sd a1, 424(gp)<br>   |
|  75|[0x80003458]<br>0x00080000000003FF|- rs1_val == -2251799813685249<br>                                                                                           |[0x800007bc]:xori a1, a0, 3072<br> [0x800007c0]:sd a1, 432(gp)<br>   |
|  76|[0x80003460]<br>0xFFEFFFFFFFFFFFF8|- rs1_val == -4503599627370497<br>                                                                                           |[0x800007d0]:xori a1, a0, 7<br> [0x800007d4]:sd a1, 440(gp)<br>      |
|  77|[0x80003468]<br>0xFFDFFFFFFFFFFFFC|- rs1_val == -9007199254740993<br>                                                                                           |[0x800007e4]:xori a1, a0, 3<br> [0x800007e8]:sd a1, 448(gp)<br>      |
|  78|[0x80003470]<br>0x0040000000000005|- rs1_val == -18014398509481985<br>                                                                                          |[0x800007f8]:xori a1, a0, 4090<br> [0x800007fc]:sd a1, 456(gp)<br>   |
|  79|[0x80003478]<br>0xFF7FFFFFFFFFFFDF|- rs1_val == -36028797018963969<br>                                                                                          |[0x8000080c]:xori a1, a0, 32<br> [0x80000810]:sd a1, 464(gp)<br>     |
|  80|[0x80003480]<br>0xFEFFFFFFFFFFF800|- rs1_val == -72057594037927937<br>                                                                                          |[0x80000820]:xori a1, a0, 2047<br> [0x80000824]:sd a1, 472(gp)<br>   |
|  81|[0x80003488]<br>0x0200000000000020|- imm_val == -33<br> - rs1_val == -144115188075855873<br>                                                                    |[0x80000834]:xori a1, a0, 4063<br> [0x80000838]:sd a1, 480(gp)<br>   |
|  82|[0x80003490]<br>0xFBFFFFFFFFFFFFFD|- rs1_val == -288230376151711745<br>                                                                                         |[0x80000848]:xori a1, a0, 2<br> [0x8000084c]:sd a1, 488(gp)<br>      |
|  83|[0x80003498]<br>0xF7FFFFFFFFFFFBFF|- rs1_val == -576460752303423489<br>                                                                                         |[0x8000085c]:xori a1, a0, 1024<br> [0x80000860]:sd a1, 496(gp)<br>   |
|  84|[0x800034a0]<br>0x1000000000000040|- rs1_val == -1152921504606846977<br>                                                                                        |[0x80000870]:xori a1, a0, 4031<br> [0x80000874]:sd a1, 504(gp)<br>   |
|  85|[0x800034a8]<br>0xDFFFFFFFFFFFFAAA|- rs1_val == -2305843009213693953<br>                                                                                        |[0x80000884]:xori a1, a0, 1365<br> [0x80000888]:sd a1, 512(gp)<br>   |
|  86|[0x800034b0]<br>0x4000000000000005|- rs1_val == -4611686018427387905<br>                                                                                        |[0x80000898]:xori a1, a0, 4090<br> [0x8000089c]:sd a1, 520(gp)<br>   |
|  87|[0x800034b8]<br>0x5555555555555550|- rs1_val == 6148914691236517205<br>                                                                                         |[0x800008c0]:xori a1, a0, 5<br> [0x800008c4]:sd a1, 528(gp)<br>      |
|  88|[0x800034c0]<br>0xAAAAAAAAAAAAAAAD|- rs1_val == -6148914691236517206<br>                                                                                        |[0x800008e8]:xori a1, a0, 7<br> [0x800008ec]:sd a1, 536(gp)<br>      |
|  89|[0x800034c8]<br>0x0400000000000002|- imm_val == -3<br>                                                                                                          |[0x800008fc]:xori a1, a0, 4093<br> [0x80000900]:sd a1, 544(gp)<br>   |
|  90|[0x800034d0]<br>0x0000000000000C00|- imm_val == -1025<br> - rs1_val == -2049<br>                                                                                |[0x8000090c]:xori a1, a0, 3071<br> [0x80000910]:sd a1, 552(gp)<br>   |
|  91|[0x800034d8]<br>0xFFFFFFFFFFFFFDEF|- rs1_val == -17<br>                                                                                                         |[0x80000918]:xori a1, a0, 512<br> [0x8000091c]:sd a1, 560(gp)<br>    |
|  92|[0x800034e0]<br>0x0000000000000022|- rs1_val == -33<br>                                                                                                         |[0x80000924]:xori a1, a0, 4093<br> [0x80000928]:sd a1, 568(gp)<br>   |
|  93|[0x800034e8]<br>0x0000000000000047|- rs1_val == -65<br>                                                                                                         |[0x80000930]:xori a1, a0, 4088<br> [0x80000934]:sd a1, 576(gp)<br>   |
|  94|[0x800034f0]<br>0xFFFFFFFFFFFFFF3F|- rs1_val == -129<br>                                                                                                        |[0x8000093c]:xori a1, a0, 64<br> [0x80000940]:sd a1, 584(gp)<br>     |
|  95|[0x800034f8]<br>0xFFFFFFFFFFFFFEFF|- rs1_val == -257<br>                                                                                                        |[0x80000948]:xori a1, a0, 0<br> [0x8000094c]:sd a1, 592(gp)<br>      |
|  96|[0x80003500]<br>0xFFFFFFFFFFFFFDF7|- rs1_val == -513<br>                                                                                                        |[0x80000954]:xori a1, a0, 8<br> [0x80000958]:sd a1, 600(gp)<br>      |
|  97|[0x80003508]<br>0xFFFFFFFFFFFFFBFD|- rs1_val == -1025<br>                                                                                                       |[0x80000960]:xori a1, a0, 2<br> [0x80000964]:sd a1, 608(gp)<br>      |
|  98|[0x80003510]<br>0x0000000000001003|- rs1_val == -4097<br>                                                                                                       |[0x80000970]:xori a1, a0, 4092<br> [0x80000974]:sd a1, 616(gp)<br>   |
|  99|[0x80003518]<br>0x0000000000002003|- rs1_val == -8193<br>                                                                                                       |[0x80000980]:xori a1, a0, 4092<br> [0x80000984]:sd a1, 624(gp)<br>   |
| 100|[0x80003520]<br>0x0000000000004007|- rs1_val == -16385<br>                                                                                                      |[0x80000990]:xori a1, a0, 4088<br> [0x80000994]:sd a1, 632(gp)<br>   |
| 101|[0x80003528]<br>0x00000000000087FF|- rs1_val == -32769<br>                                                                                                      |[0x800009a0]:xori a1, a0, 2048<br> [0x800009a4]:sd a1, 640(gp)<br>   |
| 102|[0x80003530]<br>0x0000000000010008|- rs1_val == -65537<br>                                                                                                      |[0x800009b0]:xori a1, a0, 4087<br> [0x800009b4]:sd a1, 648(gp)<br>   |
| 103|[0x80003538]<br>0x00000000000207FF|- rs1_val == -131073<br>                                                                                                     |[0x800009c0]:xori a1, a0, 2048<br> [0x800009c4]:sd a1, 656(gp)<br>   |
| 104|[0x80003540]<br>0x0000000000080005|- rs1_val == -524289<br>                                                                                                     |[0x800009d0]:xori a1, a0, 4090<br> [0x800009d4]:sd a1, 664(gp)<br>   |
| 105|[0x80003548]<br>0xFFFFFFFFFFEFFFF7|- rs1_val == -1048577<br>                                                                                                    |[0x800009e0]:xori a1, a0, 8<br> [0x800009e4]:sd a1, 672(gp)<br>      |
| 106|[0x80003550]<br>0x0000000000200100|- rs1_val == -2097153<br>                                                                                                    |[0x800009f0]:xori a1, a0, 3839<br> [0x800009f4]:sd a1, 680(gp)<br>   |
| 107|[0x80003558]<br>0xFFFFFFFFFFBFFFF7|- rs1_val == -4194305<br>                                                                                                    |[0x80000a00]:xori a1, a0, 8<br> [0x80000a04]:sd a1, 688(gp)<br>      |
| 108|[0x80003560]<br>0xFFFFFFFFFF7FFFFB|- rs1_val == -8388609<br>                                                                                                    |[0x80000a10]:xori a1, a0, 4<br> [0x80000a14]:sd a1, 696(gp)<br>      |
| 109|[0x80003568]<br>0x0000000001000100|- rs1_val == -16777217<br>                                                                                                   |[0x80000a20]:xori a1, a0, 3839<br> [0x80000a24]:sd a1, 704(gp)<br>   |
| 110|[0x80003570]<br>0xFFFFFFFFFDFFFDFF|- rs1_val == -33554433<br>                                                                                                   |[0x80000a30]:xori a1, a0, 512<br> [0x80000a34]:sd a1, 712(gp)<br>    |
| 111|[0x80003578]<br>0x0000000008000004|- rs1_val == -134217729<br>                                                                                                  |[0x80000a40]:xori a1, a0, 4091<br> [0x80000a44]:sd a1, 720(gp)<br>   |
| 112|[0x80003580]<br>0x0000000010000020|- rs1_val == -268435457<br>                                                                                                  |[0x80000a50]:xori a1, a0, 4063<br> [0x80000a54]:sd a1, 728(gp)<br>   |
| 113|[0x80003588]<br>0x0000000020000020|- rs1_val == -536870913<br>                                                                                                  |[0x80000a60]:xori a1, a0, 4063<br> [0x80000a64]:sd a1, 736(gp)<br>   |
| 114|[0x80003590]<br>0xFFFFFFFFBFFFFFF6|- rs1_val == -1073741825<br>                                                                                                 |[0x80000a70]:xori a1, a0, 9<br> [0x80000a74]:sd a1, 744(gp)<br>      |
| 115|[0x80003598]<br>0x0000000080000002|- rs1_val == -2147483649<br>                                                                                                 |[0x80000a84]:xori a1, a0, 4093<br> [0x80000a88]:sd a1, 752(gp)<br>   |
| 116|[0x800035a0]<br>0x00000001000003FF|- rs1_val == -4294967297<br>                                                                                                 |[0x80000a98]:xori a1, a0, 3072<br> [0x80000a9c]:sd a1, 760(gp)<br>   |
| 117|[0x800035a8]<br>0x0000000200000020|- rs1_val == -8589934593<br>                                                                                                 |[0x80000aac]:xori a1, a0, 4063<br> [0x80000ab0]:sd a1, 768(gp)<br>   |
| 118|[0x800035b0]<br>0x0000000400000008|- rs1_val == -17179869185<br>                                                                                                |[0x80000ac0]:xori a1, a0, 4087<br> [0x80000ac4]:sd a1, 776(gp)<br>   |
| 119|[0x800035b8]<br>0xFFFFFFF7FFFFFFF7|- rs1_val == -34359738369<br>                                                                                                |[0x80000ad4]:xori a1, a0, 8<br> [0x80000ad8]:sd a1, 784(gp)<br>      |
| 120|[0x800035c0]<br>0xFFFFFFEFFFFFFFFF|- rs1_val == -68719476737<br>                                                                                                |[0x80000ae8]:xori a1, a0, 0<br> [0x80000aec]:sd a1, 792(gp)<br>      |
| 121|[0x800035c8]<br>0xFFFFFFDFFFFFFFF6|- rs1_val == -137438953473<br>                                                                                               |[0x80000afc]:xori a1, a0, 9<br> [0x80000b00]:sd a1, 800(gp)<br>      |
| 122|[0x800035d0]<br>0xFFFFFFBFFFFFF800|- rs1_val == -274877906945<br>                                                                                               |[0x80000b10]:xori a1, a0, 2047<br> [0x80000b14]:sd a1, 808(gp)<br>   |
| 123|[0x800035d8]<br>0xFFFFFF7FFFFFFFEF|- rs1_val == -549755813889<br>                                                                                               |[0x80000b24]:xori a1, a0, 16<br> [0x80000b28]:sd a1, 816(gp)<br>     |
| 124|[0x800035e0]<br>0x0000010000000009|- rs1_val == -1099511627777<br>                                                                                              |[0x80000b38]:xori a1, a0, 4086<br> [0x80000b3c]:sd a1, 824(gp)<br>   |
| 125|[0x800035e8]<br>0x0000020000000004|- rs1_val == -2199023255553<br>                                                                                              |[0x80000b4c]:xori a1, a0, 4091<br> [0x80000b50]:sd a1, 832(gp)<br>   |
| 126|[0x800035f0]<br>0x0000040000000005|- rs1_val == -4398046511105<br>                                                                                              |[0x80000b60]:xori a1, a0, 4090<br> [0x80000b64]:sd a1, 840(gp)<br>   |
| 127|[0x800035f8]<br>0x0000080000000002|- rs1_val == -8796093022209<br>                                                                                              |[0x80000b74]:xori a1, a0, 4093<br> [0x80000b78]:sd a1, 848(gp)<br>   |
| 128|[0x80003600]<br>0x0000100000000001|- rs1_val == -17592186044417<br>                                                                                             |[0x80000b88]:xori a1, a0, 4094<br> [0x80000b8c]:sd a1, 856(gp)<br>   |
| 129|[0x80003608]<br>0x0000200000000002|- rs1_val == -35184372088833<br>                                                                                             |[0x80000b9c]:xori a1, a0, 4093<br> [0x80000ba0]:sd a1, 864(gp)<br>   |
| 130|[0x80003610]<br>0x0000400000000009|- rs1_val == -70368744177665<br>                                                                                             |[0x80000bb0]:xori a1, a0, 4086<br> [0x80000bb4]:sd a1, 872(gp)<br>   |
| 131|[0x80003618]<br>0x00008000000007FF|- rs1_val == -140737488355329<br>                                                                                            |[0x80000bc4]:xori a1, a0, 2048<br> [0x80000bc8]:sd a1, 880(gp)<br>   |
| 132|[0x80003620]<br>0xFFFEFFFFFFFFFFF7|- rs1_val == -281474976710657<br>                                                                                            |[0x80000bd8]:xori a1, a0, 8<br> [0x80000bdc]:sd a1, 888(gp)<br>      |
| 133|[0x80003628]<br>0xFFFDFFFFFFFFFFFC|- rs1_val == -562949953421313<br>                                                                                            |[0x80000bec]:xori a1, a0, 3<br> [0x80000bf0]:sd a1, 896(gp)<br>      |
| 134|[0x80003630]<br>0xFFFBFFFFFFFFFFFD|- rs1_val == -1125899906842625<br>                                                                                           |[0x80000c00]:xori a1, a0, 2<br> [0x80000c04]:sd a1, 904(gp)<br>      |
| 135|[0x80003638]<br>0x0000000000000102|- rs1_val == 2<br>                                                                                                           |[0x80000c0c]:xori a1, a0, 256<br> [0x80000c10]:sd a1, 912(gp)<br>    |
