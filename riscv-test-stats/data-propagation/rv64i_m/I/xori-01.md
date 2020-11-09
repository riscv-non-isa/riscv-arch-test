
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
| SIG_REGION                | [('0x80003208', '0x80003658', '138 dwords')]      |
| COV_LABELS                | xori      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/xori-01.S/xori-01.S    |
| Total Number of coverpoints| 235     |
| Total Coverpoints Hit     | 235      |
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
      [0x80000c20]:xori a1, a0, 0
      [0x80000c24]:sd a1, 896(ra)
 -- Signature Address: 0x80003648 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : xori
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - imm_val == 0
      - rs1_val == 0
      - rs1_val == imm_val




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c2c]:xori a1, a0, 0
      [0x80000c30]:sd a1, 904(ra)
 -- Signature Address: 0x80003650 Data: 0x0000000000000001
 -- Redundant Coverpoints hit by the op
      - opcode : xori
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - imm_val == 0
      - rs1_val == 1
      - rs1_val != imm_val






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

|s.no|            signature             |                                                                              coverpoints                                                                               |                                code                                |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003208]<br>0x0000000000000000|- opcode : xori<br> - rs1 : x27<br> - rd : x27<br> - rs1 == rd<br> - rs1_val == imm_val<br> - rs1_val < 0 and imm_val < 0<br> - imm_val == -65<br> - rs1_val == -65<br> |[0x8000039c]:xori s11, s11, 4031<br> [0x800003a0]:sd s11, 0(t2)<br> |
|   2|[0x80003210]<br>0x7FFFFFFFFFFFFFF9|- rs1 : x30<br> - rd : x16<br> - rs1 != rd<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val != imm_val<br> - rs1_val == -9223372036854775808<br>                           |[0x800003ac]:xori a6, t5, 4089<br> [0x800003b0]:sd a6, 8(t2)<br>    |
|   3|[0x80003218]<br>0x0000000400000010|- rs1 : x28<br> - rd : x13<br> - rs1_val > 0 and imm_val > 0<br> - imm_val == 16<br> - rs1_val == 17179869184<br>                                                       |[0x800003bc]:xori a3, t3, 16<br> [0x800003c0]:sd a3, 16(t2)<br>     |
|   4|[0x80003220]<br>0xFFFFFFFFFFFFFFFA|- rs1 : x15<br> - rd : x20<br> - rs1_val > 0 and imm_val < 0<br>                                                                                                        |[0x800003c8]:xori s4, a5, 4095<br> [0x800003cc]:sd s4, 24(t2)<br>   |
|   5|[0x80003228]<br>0xFFFFFFFFFFFFFFE8|- rs1 : x14<br> - rd : x22<br> - rs1_val < 0 and imm_val > 0<br>                                                                                                        |[0x800003d4]:xori s6, a4, 16<br> [0x800003d8]:sd s6, 32(t2)<br>     |
|   6|[0x80003230]<br>0x0000000000000000|- rs1 : x0<br> - rd : x9<br> - imm_val == 0<br> - rs1_val == 0<br>                                                                                                      |[0x800003e0]:xori s1, zero, 0<br> [0x800003e4]:sd s1, 40(t2)<br>    |
|   7|[0x80003238]<br>0x8000000000000009|- rs1 : x6<br> - rd : x14<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>                                                                     |[0x800003f4]:xori a4, t1, 4086<br> [0x800003f8]:sd a4, 48(t2)<br>   |
|   8|[0x80003240]<br>0x0000000000000000|- rs1 : x9<br> - rd : x0<br> - rs1_val == 1<br>                                                                                                                         |[0x80000400]:xori zero, s1, 0<br> [0x80000404]:sd zero, 56(t2)<br>  |
|   9|[0x80003248]<br>0x00000000000007FC|- rs1 : x23<br> - rd : x28<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br>                                                                                     |[0x8000040c]:xori t3, s7, 2048<br> [0x80000410]:sd t3, 64(t2)<br>   |
|  10|[0x80003250]<br>0xFFFFFBFFFFFFF800|- rs1 : x16<br> - rd : x18<br> - imm_val == (2**(12-1)-1)<br> - imm_val == 2047<br> - rs1_val == -4398046511105<br>                                                     |[0x80000420]:xori s2, a6, 2047<br> [0x80000424]:sd s2, 72(t2)<br>   |
|  11|[0x80003258]<br>0xFFEFFFFFFFFFFFFE|- rs1 : x31<br> - rd : x24<br> - imm_val == 1<br> - rs1_val == -4503599627370497<br>                                                                                    |[0x80000434]:xori s8, t6, 1<br> [0x80000438]:sd s8, 80(t2)<br>      |
|  12|[0x80003260]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x1<br> - rd : x26<br> - rs1_val == 2<br>                                                                                                                        |[0x80000440]:xori s10, ra, 4092<br> [0x80000444]:sd s10, 88(t2)<br> |
|  13|[0x80003268]<br>0x0000000000000551|- rs1 : x2<br> - rd : x10<br> - imm_val == 1365<br> - rs1_val == 4<br>                                                                                                  |[0x8000044c]:xori a0, sp, 1365<br> [0x80000450]:sd a0, 96(t2)<br>   |
|  14|[0x80003270]<br>0xFFFFFFFFFFFFFFB7|- rs1 : x20<br> - rd : x1<br> - rs1_val == 8<br>                                                                                                                        |[0x80000458]:xori ra, s4, 4031<br> [0x8000045c]:sd ra, 104(t2)<br>  |
|  15|[0x80003278]<br>0x00000000000007EF|- rs1 : x19<br> - rd : x12<br> - rs1_val == 16<br>                                                                                                                      |[0x80000464]:xori a2, s3, 2047<br> [0x80000468]:sd a2, 112(t2)<br>  |
|  16|[0x80003280]<br>0xFFFFFFFFFFFFFFCF|- rs1 : x10<br> - rd : x25<br> - imm_val == -17<br> - rs1_val == 32<br>                                                                                                 |[0x80000470]:xori s9, a0, 4079<br> [0x80000474]:sd s9, 120(t2)<br>  |
|  17|[0x80003288]<br>0x00000000000000C0|- rs1 : x11<br> - rd : x5<br> - imm_val == 128<br> - rs1_val == 64<br>                                                                                                  |[0x8000047c]:xori t0, a1, 128<br> [0x80000480]:sd t0, 128(t2)<br>   |
|  18|[0x80003290]<br>0x00000000000000A0|- rs1 : x3<br> - rd : x6<br> - imm_val == 32<br> - rs1_val == 128<br>                                                                                                   |[0x80000488]:xori t1, gp, 32<br> [0x8000048c]:sd t1, 136(t2)<br>    |
|  19|[0x80003298]<br>0xFFFFFFFFFFFFFEF7|- rs1 : x21<br> - rd : x11<br> - imm_val == -9<br> - rs1_val == 256<br>                                                                                                 |[0x80000494]:xori a1, s5, 4087<br> [0x80000498]:sd a1, 144(t2)<br>  |
|  20|[0x800032a0]<br>0xFFFFFFFFFFFFFDDF|- rs1 : x26<br> - rd : x15<br> - imm_val == -33<br> - rs1_val == 512<br>                                                                                                |[0x800004a0]:xori a5, s10, 4063<br> [0x800004a4]:sd a5, 152(t2)<br> |
|  21|[0x800032a8]<br>0xFFFFFFFFFFFFFBEF|- rs1 : x4<br> - rd : x23<br> - rs1_val == 1024<br>                                                                                                                     |[0x800004ac]:xori s7, tp, 4079<br> [0x800004b0]:sd s7, 160(t2)<br>  |
|  22|[0x800032b0]<br>0xFFFFFFFFFFFFF2AA|- rs1 : x5<br> - rd : x4<br> - imm_val == -1366<br> - rs1_val == 2048<br>                                                                                               |[0x800004bc]:xori tp, t0, 2730<br> [0x800004c0]:sd tp, 168(t2)<br>  |
|  23|[0x800032b8]<br>0xFFFFFFFFFFFFE800|- rs1 : x13<br> - rd : x21<br> - rs1_val == 4096<br>                                                                                                                    |[0x800004c8]:xori s5, a3, 2048<br> [0x800004cc]:sd s5, 176(t2)<br>  |
|  24|[0x800032c0]<br>0x0000000000002009|- rs1 : x29<br> - rd : x30<br> - rs1_val == 8192<br>                                                                                                                    |[0x800004d4]:xori t5, t4, 9<br> [0x800004d8]:sd t5, 184(t2)<br>     |
|  25|[0x800032c8]<br>0xFFFFFFFFFFFFBAAA|- rs1 : x17<br> - rd : x29<br> - rs1_val == 16384<br>                                                                                                                   |[0x800004e8]:xori t4, a7, 2730<br> [0x800004ec]:sd t4, 0(ra)<br>    |
|  26|[0x800032d0]<br>0xFFFFFFFFFFFF7F7F|- rs1 : x24<br> - rd : x17<br> - imm_val == -129<br> - rs1_val == 32768<br>                                                                                             |[0x800004f4]:xori a7, s8, 3967<br> [0x800004f8]:sd a7, 8(ra)<br>    |
|  27|[0x800032d8]<br>0x0000000000010009|- rs1 : x25<br> - rd : x7<br> - rs1_val == 65536<br>                                                                                                                    |[0x80000500]:xori t2, s9, 9<br> [0x80000504]:sd t2, 16(ra)<br>      |
|  28|[0x800032e0]<br>0xFFFFFFFFFFFDFBFF|- rs1 : x18<br> - rd : x2<br> - imm_val == -1025<br> - rs1_val == 131072<br>                                                                                            |[0x8000050c]:xori sp, s2, 3071<br> [0x80000510]:sd sp, 24(ra)<br>   |
|  29|[0x800032e8]<br>0xFFFFFFFFFFFBFFFE|- rs1 : x8<br> - rd : x19<br> - imm_val == -2<br> - rs1_val == 262144<br>                                                                                               |[0x80000518]:xori s3, fp, 4094<br> [0x8000051c]:sd s3, 32(ra)<br>   |
|  30|[0x800032f0]<br>0xFFFFFFFFFFF7FF7F|- rs1 : x7<br> - rd : x3<br> - rs1_val == 524288<br>                                                                                                                    |[0x80000524]:xori gp, t2, 3967<br> [0x80000528]:sd gp, 40(ra)<br>   |
|  31|[0x800032f8]<br>0x00000000001007FF|- rs1 : x12<br> - rd : x31<br> - rs1_val == 1048576<br>                                                                                                                 |[0x80000530]:xori t6, a2, 2047<br> [0x80000534]:sd t6, 48(ra)<br>   |
|  32|[0x80003300]<br>0x0000000000200007|- rs1 : x22<br> - rd : x8<br> - rs1_val == 2097152<br>                                                                                                                  |[0x8000053c]:xori fp, s6, 7<br> [0x80000540]:sd fp, 56(ra)<br>      |
|  33|[0x80003308]<br>0xFFFFFFFFFFBFFAAA|- rs1_val == 4194304<br>                                                                                                                                                |[0x80000548]:xori a1, a0, 2730<br> [0x8000054c]:sd a1, 64(ra)<br>   |
|  34|[0x80003310]<br>0x0000000000800000|- rs1_val == 8388608<br>                                                                                                                                                |[0x80000554]:xori a1, a0, 0<br> [0x80000558]:sd a1, 72(ra)<br>      |
|  35|[0x80003318]<br>0xFFFFFFFFFEFFFBFF|- rs1_val == 16777216<br>                                                                                                                                               |[0x80000560]:xori a1, a0, 3071<br> [0x80000564]:sd a1, 80(ra)<br>   |
|  36|[0x80003320]<br>0x0000000002000009|- rs1_val == 33554432<br>                                                                                                                                               |[0x8000056c]:xori a1, a0, 9<br> [0x80000570]:sd a1, 88(ra)<br>      |
|  37|[0x80003328]<br>0xFFFFFFFFFBFFFAAA|- rs1_val == 67108864<br>                                                                                                                                               |[0x80000578]:xori a1, a0, 2730<br> [0x8000057c]:sd a1, 96(ra)<br>   |
|  38|[0x80003330]<br>0xFFFFFFFFF7FFFFEF|- rs1_val == 134217728<br>                                                                                                                                              |[0x80000584]:xori a1, a0, 4079<br> [0x80000588]:sd a1, 104(ra)<br>  |
|  39|[0x80003338]<br>0xFFFFFFFFEFFFFFFF|- rs1_val == 268435456<br>                                                                                                                                              |[0x80000590]:xori a1, a0, 4095<br> [0x80000594]:sd a1, 112(ra)<br>  |
|  40|[0x80003340]<br>0xFFFFFFFFDFFFFFEF|- rs1_val == 536870912<br>                                                                                                                                              |[0x8000059c]:xori a1, a0, 4079<br> [0x800005a0]:sd a1, 120(ra)<br>  |
|  41|[0x80003348]<br>0xFFFFFFFFBFFFFDFF|- imm_val == -513<br> - rs1_val == 1073741824<br>                                                                                                                       |[0x800005a8]:xori a1, a0, 3583<br> [0x800005ac]:sd a1, 128(ra)<br>  |
|  42|[0x80003350]<br>0xFFFFFFFF7FFFFAAA|- rs1_val == 2147483648<br>                                                                                                                                             |[0x800005b8]:xori a1, a0, 2730<br> [0x800005bc]:sd a1, 136(ra)<br>  |
|  43|[0x80003358]<br>0xFFFFFFFEFFFFFEFF|- imm_val == -257<br> - rs1_val == 4294967296<br>                                                                                                                       |[0x800005c8]:xori a1, a0, 3839<br> [0x800005cc]:sd a1, 144(ra)<br>  |
|  44|[0x80003360]<br>0xFFFFFFFDFFFFFFFD|- imm_val == -3<br> - rs1_val == 8589934592<br>                                                                                                                         |[0x800005d8]:xori a1, a0, 4093<br> [0x800005dc]:sd a1, 152(ra)<br>  |
|  45|[0x80003368]<br>0xFFFFFFF7FFFFFFFE|- rs1_val == 34359738368<br>                                                                                                                                            |[0x800005e8]:xori a1, a0, 4094<br> [0x800005ec]:sd a1, 160(ra)<br>  |
|  46|[0x80003370]<br>0xFFFFFFEFFFFFFDFF|- rs1_val == 68719476736<br>                                                                                                                                            |[0x800005f8]:xori a1, a0, 3583<br> [0x800005fc]:sd a1, 168(ra)<br>  |
|  47|[0x80003378]<br>0xFFFFFFDFFFFFFAAA|- rs1_val == 137438953472<br>                                                                                                                                           |[0x80000608]:xori a1, a0, 2730<br> [0x8000060c]:sd a1, 176(ra)<br>  |
|  48|[0x80003380]<br>0x0000004000000003|- rs1_val == 274877906944<br>                                                                                                                                           |[0x80000618]:xori a1, a0, 3<br> [0x8000061c]:sd a1, 184(ra)<br>     |
|  49|[0x80003388]<br>0xFFFFFF7FFFFFFFDF|- rs1_val == 549755813888<br>                                                                                                                                           |[0x80000628]:xori a1, a0, 4063<br> [0x8000062c]:sd a1, 192(ra)<br>  |
|  50|[0x80003390]<br>0xFFFFFEFFFFFFFDFF|- rs1_val == 1099511627776<br>                                                                                                                                          |[0x80000638]:xori a1, a0, 3583<br> [0x8000063c]:sd a1, 200(ra)<br>  |
|  51|[0x80003398]<br>0x0000020000000555|- rs1_val == 2199023255552<br>                                                                                                                                          |[0x80000648]:xori a1, a0, 1365<br> [0x8000064c]:sd a1, 208(ra)<br>  |
|  52|[0x800033a0]<br>0xFFFFFBFFFFFFFFFD|- rs1_val == 4398046511104<br>                                                                                                                                          |[0x80000658]:xori a1, a0, 4093<br> [0x8000065c]:sd a1, 216(ra)<br>  |
|  53|[0x800033a8]<br>0xFFFFF7FFFFFFFFF7|- rs1_val == 8796093022208<br>                                                                                                                                          |[0x80000668]:xori a1, a0, 4087<br> [0x8000066c]:sd a1, 224(ra)<br>  |
|  54|[0x800033b0]<br>0xFFFFEFFFFFFFFFFA|- rs1_val == 17592186044416<br>                                                                                                                                         |[0x80000678]:xori a1, a0, 4090<br> [0x8000067c]:sd a1, 232(ra)<br>  |
|  55|[0x800033b8]<br>0xFFFFDFFFFFFFFFF9|- rs1_val == 35184372088832<br>                                                                                                                                         |[0x80000688]:xori a1, a0, 4089<br> [0x8000068c]:sd a1, 240(ra)<br>  |
|  56|[0x800033c0]<br>0x0000400000000003|- rs1_val == 70368744177664<br>                                                                                                                                         |[0x80000698]:xori a1, a0, 3<br> [0x8000069c]:sd a1, 248(ra)<br>     |
|  57|[0x800033c8]<br>0x0000800000000200|- imm_val == 512<br> - rs1_val == 140737488355328<br>                                                                                                                   |[0x800006a8]:xori a1, a0, 512<br> [0x800006ac]:sd a1, 256(ra)<br>   |
|  58|[0x800033d0]<br>0xFFFEFFFFFFFFFFFC|- rs1_val == 281474976710656<br>                                                                                                                                        |[0x800006b8]:xori a1, a0, 4092<br> [0x800006bc]:sd a1, 264(ra)<br>  |
|  59|[0x800033d8]<br>0xFFFDFFFFFFFFFFFF|- rs1_val == 562949953421312<br>                                                                                                                                        |[0x800006c8]:xori a1, a0, 4095<br> [0x800006cc]:sd a1, 272(ra)<br>  |
|  60|[0x800033e0]<br>0xFFFBFFFFFFFFFFBF|- rs1_val == 1125899906842624<br>                                                                                                                                       |[0x800006d8]:xori a1, a0, 4031<br> [0x800006dc]:sd a1, 280(ra)<br>  |
|  61|[0x800033e8]<br>0x0008000000000080|- rs1_val == 2251799813685248<br>                                                                                                                                       |[0x800006e8]:xori a1, a0, 128<br> [0x800006ec]:sd a1, 288(ra)<br>   |
|  62|[0x800033f0]<br>0xFFEFFFFFFFFFFFFA|- rs1_val == 4503599627370496<br>                                                                                                                                       |[0x800006f8]:xori a1, a0, 4090<br> [0x800006fc]:sd a1, 296(ra)<br>  |
|  63|[0x800033f8]<br>0x0020000000000009|- rs1_val == 9007199254740992<br>                                                                                                                                       |[0x80000708]:xori a1, a0, 9<br> [0x8000070c]:sd a1, 304(ra)<br>     |
|  64|[0x80003400]<br>0x0040000000000004|- imm_val == 4<br> - rs1_val == 18014398509481984<br>                                                                                                                   |[0x80000718]:xori a1, a0, 4<br> [0x8000071c]:sd a1, 312(ra)<br>     |
|  65|[0x80003408]<br>0x0080000000000005|- rs1_val == 36028797018963968<br>                                                                                                                                      |[0x80000728]:xori a1, a0, 5<br> [0x8000072c]:sd a1, 320(ra)<br>     |
|  66|[0x80003410]<br>0xFEFFFFFFFFFFFFF9|- rs1_val == 72057594037927936<br>                                                                                                                                      |[0x80000738]:xori a1, a0, 4089<br> [0x8000073c]:sd a1, 328(ra)<br>  |
|  67|[0x80003418]<br>0x0200000000000400|- imm_val == 1024<br> - rs1_val == 144115188075855872<br>                                                                                                               |[0x80000748]:xori a1, a0, 1024<br> [0x8000074c]:sd a1, 336(ra)<br>  |
|  68|[0x80003420]<br>0xFBFFFFFFFFFFFFF9|- rs1_val == 288230376151711744<br>                                                                                                                                     |[0x80000758]:xori a1, a0, 4089<br> [0x8000075c]:sd a1, 344(ra)<br>  |
|  69|[0x80003428]<br>0x0800000000000020|- rs1_val == 576460752303423488<br>                                                                                                                                     |[0x80000768]:xori a1, a0, 32<br> [0x8000076c]:sd a1, 352(ra)<br>    |
|  70|[0x80003430]<br>0x1000000000000040|- imm_val == 64<br> - rs1_val == 1152921504606846976<br>                                                                                                                |[0x80000778]:xori a1, a0, 64<br> [0x8000077c]:sd a1, 360(ra)<br>    |
|  71|[0x80003438]<br>0xDFFFFFFFFFFFFEFF|- rs1_val == 2305843009213693952<br>                                                                                                                                    |[0x80000788]:xori a1, a0, 3839<br> [0x8000078c]:sd a1, 368(ra)<br>  |
|  72|[0x80003440]<br>0xBFFFFFFFFFFFFFFC|- rs1_val == 4611686018427387904<br>                                                                                                                                    |[0x80000798]:xori a1, a0, 4092<br> [0x8000079c]:sd a1, 376(ra)<br>  |
|  73|[0x80003448]<br>0x0000000000000002|- rs1_val == -2<br>                                                                                                                                                     |[0x800007a4]:xori a1, a0, 4092<br> [0x800007a8]:sd a1, 384(ra)<br>  |
|  74|[0x80003450]<br>0xFFFFFFFFFFFFFBFD|- rs1_val == -3<br>                                                                                                                                                     |[0x800007b0]:xori a1, a0, 1024<br> [0x800007b4]:sd a1, 392(ra)<br>  |
|  75|[0x80003458]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -5<br>                                                                                                                                                     |[0x800007bc]:xori a1, a0, 5<br> [0x800007c0]:sd a1, 400(ra)<br>     |
|  76|[0x80003460]<br>0x00080000000007FF|- rs1_val == -2251799813685249<br>                                                                                                                                      |[0x800007d0]:xori a1, a0, 2048<br> [0x800007d4]:sd a1, 408(ra)<br>  |
|  77|[0x80003468]<br>0x0020000000000400|- rs1_val == -9007199254740993<br>                                                                                                                                      |[0x800007e4]:xori a1, a0, 3071<br> [0x800007e8]:sd a1, 416(ra)<br>  |
|  78|[0x80003470]<br>0xFFBFFFFFFFFFFFBF|- rs1_val == -18014398509481985<br>                                                                                                                                     |[0x800007f8]:xori a1, a0, 64<br> [0x800007fc]:sd a1, 424(ra)<br>    |
|  79|[0x80003478]<br>0x0080000000000100|- rs1_val == -36028797018963969<br>                                                                                                                                     |[0x8000080c]:xori a1, a0, 3839<br> [0x80000810]:sd a1, 432(ra)<br>  |
|  80|[0x80003480]<br>0xFEFFFFFFFFFFFF7F|- rs1_val == -72057594037927937<br>                                                                                                                                     |[0x80000820]:xori a1, a0, 128<br> [0x80000824]:sd a1, 440(ra)<br>   |
|  81|[0x80003488]<br>0xFDFFFFFFFFFFFFF8|- rs1_val == -144115188075855873<br>                                                                                                                                    |[0x80000834]:xori a1, a0, 7<br> [0x80000838]:sd a1, 448(ra)<br>     |
|  82|[0x80003490]<br>0xFBFFFFFFFFFFFFFC|- rs1_val == -288230376151711745<br>                                                                                                                                    |[0x80000848]:xori a1, a0, 3<br> [0x8000084c]:sd a1, 456(ra)<br>     |
|  83|[0x80003498]<br>0x0800000000000008|- rs1_val == -576460752303423489<br>                                                                                                                                    |[0x8000085c]:xori a1, a0, 4087<br> [0x80000860]:sd a1, 464(ra)<br>  |
|  84|[0x800034a0]<br>0xEFFFFFFFFFFFFC00|- rs1_val == -1152921504606846977<br>                                                                                                                                   |[0x80000870]:xori a1, a0, 1023<br> [0x80000874]:sd a1, 472(ra)<br>  |
|  85|[0x800034a8]<br>0xDFFFFFFFFFFFFFF9|- rs1_val == -2305843009213693953<br>                                                                                                                                   |[0x80000884]:xori a1, a0, 6<br> [0x80000888]:sd a1, 480(ra)<br>     |
|  86|[0x800034b0]<br>0xBFFFFFFFFFFFFDFF|- rs1_val == -4611686018427387905<br>                                                                                                                                   |[0x80000898]:xori a1, a0, 512<br> [0x8000089c]:sd a1, 488(ra)<br>   |
|  87|[0x800034b8]<br>0x555555555555555D|- imm_val == 8<br> - rs1_val == 6148914691236517205<br>                                                                                                                 |[0x800008c0]:xori a1, a0, 8<br> [0x800008c4]:sd a1, 496(ra)<br>     |
|  88|[0x800034c0]<br>0xAAAAAAAAAAAAAAAB|- rs1_val == -6148914691236517206<br>                                                                                                                                   |[0x800008e8]:xori a1, a0, 1<br> [0x800008ec]:sd a1, 504(ra)<br>     |
|  89|[0x800034c8]<br>0x0040000000000002|- imm_val == 2<br>                                                                                                                                                      |[0x800008f8]:xori a1, a0, 2<br> [0x800008fc]:sd a1, 512(ra)<br>     |
|  90|[0x800034d0]<br>0xFFFFFEFFFFFFFEFF|- imm_val == 256<br> - rs1_val == -1099511627777<br>                                                                                                                    |[0x8000090c]:xori a1, a0, 256<br> [0x80000910]:sd a1, 520(ra)<br>   |
|  91|[0x800034d8]<br>0xFFFFFFFFF7FFFFFB|- imm_val == -5<br>                                                                                                                                                     |[0x80000918]:xori a1, a0, 4091<br> [0x8000091c]:sd a1, 528(ra)<br>  |
|  92|[0x800034e0]<br>0x0000000000000408|- rs1_val == -9<br>                                                                                                                                                     |[0x80000924]:xori a1, a0, 3071<br> [0x80000928]:sd a1, 536(ra)<br>  |
|  93|[0x800034e8]<br>0xFFFFFFFFFFFFFFE9|- rs1_val == -17<br>                                                                                                                                                    |[0x80000930]:xori a1, a0, 6<br> [0x80000934]:sd a1, 544(ra)<br>     |
|  94|[0x800034f0]<br>0x0000000000000022|- rs1_val == -33<br>                                                                                                                                                    |[0x8000093c]:xori a1, a0, 4093<br> [0x80000940]:sd a1, 552(ra)<br>  |
|  95|[0x800034f8]<br>0x0000000000000086|- rs1_val == -129<br>                                                                                                                                                   |[0x80000948]:xori a1, a0, 4089<br> [0x8000094c]:sd a1, 560(ra)<br>  |
|  96|[0x80003500]<br>0xFFFFFFFFFFFFFEF7|- rs1_val == -257<br>                                                                                                                                                   |[0x80000954]:xori a1, a0, 8<br> [0x80000958]:sd a1, 568(ra)<br>     |
|  97|[0x80003508]<br>0xFFFFFFFFFFFFFCFF|- rs1_val == -513<br>                                                                                                                                                   |[0x80000960]:xori a1, a0, 256<br> [0x80000964]:sd a1, 576(ra)<br>   |
|  98|[0x80003510]<br>0xFFFFFFFFFFFFFBF8|- rs1_val == -1025<br>                                                                                                                                                  |[0x8000096c]:xori a1, a0, 7<br> [0x80000970]:sd a1, 584(ra)<br>     |
|  99|[0x80003518]<br>0xFFFFFFFFFFFFF000|- rs1_val == -2049<br>                                                                                                                                                  |[0x8000097c]:xori a1, a0, 2047<br> [0x80000980]:sd a1, 592(ra)<br>  |
| 100|[0x80003520]<br>0x0000000000001001|- rs1_val == -4097<br>                                                                                                                                                  |[0x8000098c]:xori a1, a0, 4094<br> [0x80000990]:sd a1, 600(ra)<br>  |
| 101|[0x80003528]<br>0xFFFFFFFFFFFFDFF6|- rs1_val == -8193<br>                                                                                                                                                  |[0x8000099c]:xori a1, a0, 9<br> [0x800009a0]:sd a1, 608(ra)<br>     |
| 102|[0x80003530]<br>0xFFFFFFFFFFFFBFF9|- rs1_val == -16385<br>                                                                                                                                                 |[0x800009ac]:xori a1, a0, 6<br> [0x800009b0]:sd a1, 616(ra)<br>     |
| 103|[0x80003538]<br>0xFFFFFFFFFFFF7FBF|- rs1_val == -32769<br>                                                                                                                                                 |[0x800009bc]:xori a1, a0, 64<br> [0x800009c0]:sd a1, 624(ra)<br>    |
| 104|[0x80003540]<br>0xFFFFFFFFFFFEFFFA|- rs1_val == -65537<br>                                                                                                                                                 |[0x800009cc]:xori a1, a0, 5<br> [0x800009d0]:sd a1, 632(ra)<br>     |
| 105|[0x80003548]<br>0xFFFFFFFFFFFDFFFD|- rs1_val == -131073<br>                                                                                                                                                |[0x800009dc]:xori a1, a0, 2<br> [0x800009e0]:sd a1, 640(ra)<br>     |
| 106|[0x80003550]<br>0x0000000000040005|- rs1_val == -262145<br>                                                                                                                                                |[0x800009ec]:xori a1, a0, 4090<br> [0x800009f0]:sd a1, 648(ra)<br>  |
| 107|[0x80003558]<br>0x0000000000080003|- rs1_val == -524289<br>                                                                                                                                                |[0x800009fc]:xori a1, a0, 4092<br> [0x80000a00]:sd a1, 656(ra)<br>  |
| 108|[0x80003560]<br>0xFFFFFFFFFFEFFDFF|- rs1_val == -1048577<br>                                                                                                                                               |[0x80000a0c]:xori a1, a0, 512<br> [0x80000a10]:sd a1, 664(ra)<br>   |
| 109|[0x80003568]<br>0x0000000000200000|- rs1_val == -2097153<br>                                                                                                                                               |[0x80000a1c]:xori a1, a0, 4095<br> [0x80000a20]:sd a1, 672(ra)<br>  |
| 110|[0x80003570]<br>0xFFFFFFFFFFBFFFF8|- rs1_val == -4194305<br>                                                                                                                                               |[0x80000a2c]:xori a1, a0, 7<br> [0x80000a30]:sd a1, 680(ra)<br>     |
| 111|[0x80003578]<br>0x0000000000800002|- rs1_val == -8388609<br>                                                                                                                                               |[0x80000a3c]:xori a1, a0, 4093<br> [0x80000a40]:sd a1, 688(ra)<br>  |
| 112|[0x80003580]<br>0x0000000001000555|- rs1_val == -16777217<br>                                                                                                                                              |[0x80000a4c]:xori a1, a0, 2730<br> [0x80000a50]:sd a1, 696(ra)<br>  |
| 113|[0x80003588]<br>0x0000000002000002|- rs1_val == -33554433<br>                                                                                                                                              |[0x80000a5c]:xori a1, a0, 4093<br> [0x80000a60]:sd a1, 704(ra)<br>  |
| 114|[0x80003590]<br>0x0000000004000555|- rs1_val == -67108865<br>                                                                                                                                              |[0x80000a6c]:xori a1, a0, 2730<br> [0x80000a70]:sd a1, 712(ra)<br>  |
| 115|[0x80003598]<br>0xFFFFFFFFF7FFFFFC|- rs1_val == -134217729<br>                                                                                                                                             |[0x80000a7c]:xori a1, a0, 3<br> [0x80000a80]:sd a1, 720(ra)<br>     |
| 116|[0x800035a0]<br>0x0000000010000020|- rs1_val == -268435457<br>                                                                                                                                             |[0x80000a8c]:xori a1, a0, 4063<br> [0x80000a90]:sd a1, 728(ra)<br>  |
| 117|[0x800035a8]<br>0xFFFFFFFFDFFFFC00|- rs1_val == -536870913<br>                                                                                                                                             |[0x80000a9c]:xori a1, a0, 1023<br> [0x80000aa0]:sd a1, 736(ra)<br>  |
| 118|[0x800035b0]<br>0x0000000040000080|- rs1_val == -1073741825<br>                                                                                                                                            |[0x80000aac]:xori a1, a0, 3967<br> [0x80000ab0]:sd a1, 744(ra)<br>  |
| 119|[0x800035b8]<br>0x0000000080000000|- rs1_val == -2147483649<br>                                                                                                                                            |[0x80000ac0]:xori a1, a0, 4095<br> [0x80000ac4]:sd a1, 752(ra)<br>  |
| 120|[0x800035c0]<br>0x0000000100000200|- rs1_val == -4294967297<br>                                                                                                                                            |[0x80000ad4]:xori a1, a0, 3583<br> [0x80000ad8]:sd a1, 760(ra)<br>  |
| 121|[0x800035c8]<br>0x0000000200000555|- rs1_val == -8589934593<br>                                                                                                                                            |[0x80000ae8]:xori a1, a0, 2730<br> [0x80000aec]:sd a1, 768(ra)<br>  |
| 122|[0x800035d0]<br>0xFFFFFFFBFFFFFFF6|- rs1_val == -17179869185<br>                                                                                                                                           |[0x80000afc]:xori a1, a0, 9<br> [0x80000b00]:sd a1, 776(ra)<br>     |
| 123|[0x800035d8]<br>0xFFFFFFF7FFFFFF7F|- rs1_val == -34359738369<br>                                                                                                                                           |[0x80000b10]:xori a1, a0, 128<br> [0x80000b14]:sd a1, 784(ra)<br>   |
| 124|[0x800035e0]<br>0x0000001000000009|- rs1_val == -68719476737<br>                                                                                                                                           |[0x80000b24]:xori a1, a0, 4086<br> [0x80000b28]:sd a1, 792(ra)<br>  |
| 125|[0x800035e8]<br>0xFFFFFFDFFFFFFDFF|- rs1_val == -137438953473<br>                                                                                                                                          |[0x80000b38]:xori a1, a0, 512<br> [0x80000b3c]:sd a1, 800(ra)<br>   |
| 126|[0x800035f0]<br>0x0000004000000001|- rs1_val == -274877906945<br>                                                                                                                                          |[0x80000b4c]:xori a1, a0, 4094<br> [0x80000b50]:sd a1, 808(ra)<br>  |
| 127|[0x800035f8]<br>0x0000008000000555|- rs1_val == -549755813889<br>                                                                                                                                          |[0x80000b60]:xori a1, a0, 2730<br> [0x80000b64]:sd a1, 816(ra)<br>  |
| 128|[0x80003600]<br>0xFFFFFDFFFFFFFFFB|- rs1_val == -2199023255553<br>                                                                                                                                         |[0x80000b74]:xori a1, a0, 4<br> [0x80000b78]:sd a1, 824(ra)<br>     |
| 129|[0x80003608]<br>0xFFFFF7FFFFFFFFEF|- rs1_val == -8796093022209<br>                                                                                                                                         |[0x80000b88]:xori a1, a0, 16<br> [0x80000b8c]:sd a1, 832(ra)<br>    |
| 130|[0x80003610]<br>0x00001000000007FF|- rs1_val == -17592186044417<br>                                                                                                                                        |[0x80000b9c]:xori a1, a0, 2048<br> [0x80000ba0]:sd a1, 840(ra)<br>  |
| 131|[0x80003618]<br>0xFFFFDFFFFFFFFDFF|- rs1_val == -35184372088833<br>                                                                                                                                        |[0x80000bb0]:xori a1, a0, 512<br> [0x80000bb4]:sd a1, 848(ra)<br>   |
| 132|[0x80003620]<br>0x0000400000000007|- rs1_val == -70368744177665<br>                                                                                                                                        |[0x80000bc4]:xori a1, a0, 4088<br> [0x80000bc8]:sd a1, 856(ra)<br>  |
| 133|[0x80003628]<br>0xFFFF7FFFFFFFFDFF|- rs1_val == -140737488355329<br>                                                                                                                                       |[0x80000bd8]:xori a1, a0, 512<br> [0x80000bdc]:sd a1, 864(ra)<br>   |
| 134|[0x80003630]<br>0x0001000000000003|- rs1_val == -281474976710657<br>                                                                                                                                       |[0x80000bec]:xori a1, a0, 4092<br> [0x80000bf0]:sd a1, 872(ra)<br>  |
| 135|[0x80003638]<br>0xFFFDFFFFFFFFFFF9|- rs1_val == -562949953421313<br>                                                                                                                                       |[0x80000c00]:xori a1, a0, 6<br> [0x80000c04]:sd a1, 880(ra)<br>     |
| 136|[0x80003640]<br>0x0004000000000020|- rs1_val == -1125899906842625<br>                                                                                                                                      |[0x80000c14]:xori a1, a0, 4063<br> [0x80000c18]:sd a1, 888(ra)<br>  |
