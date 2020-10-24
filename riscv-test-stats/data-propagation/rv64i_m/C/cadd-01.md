
## Data Propagation Report

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x800002ce', '0x80000f60')]      |
| SIG_REGION                | [('0x80003210', '0x80003908')]      |
| COV_LABELS                | ('cadd',)      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cadd-01.S/cadd-01.S    |
| Total Unique Coverpoints  | 334      |
| Total Signature Updates   | 376      |
| Ops w/o unique coverpoints | 3      |
| Sig Updates w/o Coverpoints | 0    |

## Report Table

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

|s.no|            signature             |                                                                coverpoints                                                                 |             code              |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------|
|   1|[0x80003210]<br>0xFFFFFFFFFFFFFFFA|- opcode : c.add<br> - rs1 : x18<br> - rs2 : x18<br> - rs1 == rs2<br> - rs2_val < 0<br> - rs2_val == -3<br> - rs1_val == -3<br>             |[0x800002dc]:c.add s2, s2<br>  |
|   2|[0x80003218]<br>0xFFFFFF77FFFFFFFE|- rs1 : x1<br> - rs2 : x25<br> - rs1 != rs2<br> - rs2_val == -34359738369<br> - rs1_val == -549755813889<br>                                |[0x800002f2]:c.add ra, s9<br>  |
|   3|[0x80003220]<br>0x6FFFFFFFFFFFFFFF|- rs1 : x30<br> - rs2 : x27<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -1152921504606846977<br> - rs1_val == -9223372036854775808<br> |[0x80000306]:c.add t5, s11<br> |
|   4|[0x80003228]<br>0xFFFDFFFFFFFFFFFF|- rs1 : x2<br> - rs2 : x11<br> - rs1_val == 0<br> - rs2_val == -562949953421313<br>                                                         |[0x80000316]:c.add sp, a1<br>  |
|   5|[0x80003230]<br>0x6FFFFFFFFFFFFFFE|- rs1 : x23<br> - rs2 : x9<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>                                        |[0x8000032c]:c.add s7, s1<br>  |
|   6|[0x80003238]<br>0x2000000000000001|- rs1 : x20<br> - rs2 : x8<br> - rs1_val == 1<br> - rs2_val > 0<br> - rs2_val == 2305843009213693952<br>                                    |[0x8000033a]:c.add s4, fp<br>  |
|   7|[0x80003240]<br>0x7FFFF7FFFFFFFFFF|- rs1 : x6<br> - rs2 : x4<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -9223372036854775808<br> - rs1_val == -8796093022209<br>         |[0x8000034e]:c.add t1, tp<br>  |
|   8|[0x80003248]<br>0x0000000000000800|- rs1 : x16<br> - rs2 : x5<br> - rs2_val == 0<br> - rs1_val == 2048<br>                                                                     |[0x8000035c]:c.add a6, t0<br>  |
|   9|[0x80003250]<br>0x80000003FFFFFFFF|- rs1 : x29<br> - rs2 : x26<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br> - rs1_val == 17179869184<br>          |[0x80000370]:c.add t4, s10<br> |
|  10|[0x80003258]<br>0x8000000000000000|- rs1 : x26<br> - rs2 : x3<br> - rs2_val == 1<br>                                                                                           |[0x80000380]:c.add s10, gp<br> |
|  11|[0x80003260]<br>0xFFFFFFFFFFFFFFFC|- rs1 : x10<br> - rs2 : x2<br> - rs1_val == 2<br>                                                                                           |[0x8000038a]:c.add a0, sp<br>  |
|  12|[0x80003268]<br>0xFFFFFFFFFFFFFC03|- rs1 : x24<br> - rs2 : x13<br> - rs2_val == -1025<br> - rs1_val == 4<br>                                                                   |[0x80000396]:c.add s8, a3<br>  |
|  13|[0x80003270]<br>0xFE00000000000007|- rs1 : x15<br> - rs2 : x24<br> - rs2_val == -144115188075855873<br> - rs1_val == 8<br>                                                     |[0x800003a6]:c.add a5, s8<br>  |
|  14|[0x80003278]<br>0x0000000000004010|- rs1 : x14<br> - rs2 : x20<br> - rs2_val == 16384<br> - rs1_val == 16<br>                                                                  |[0x800003b0]:c.add a4, s4<br>  |
|  15|[0x80003280]<br>0x0000000040000020|- rs1 : x17<br> - rs2 : x15<br> - rs2_val == 1073741824<br> - rs1_val == 32<br>                                                             |[0x800003be]:c.add a7, a5<br>  |
|  16|[0x80003288]<br>0x5555555555555595|- rs1 : x22<br> - rs2 : x6<br> - rs2_val == 6148914691236517205<br> - rs1_val == 64<br>                                                     |[0x800003e2]:c.add s6, t1<br>  |
|  17|[0x80003290]<br>0x0000000100000080|- rs1 : x28<br> - rs2 : x22<br> - rs2_val == 4294967296<br> - rs1_val == 128<br>                                                            |[0x800003f2]:c.add t3, s6<br>  |
|  18|[0x80003298]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x31<br> - rs2_val == 68719476736<br>                                                                                 |[0x80000402]:c.add.hint.t6<br> |
|  19|[0x800032a0]<br>0x0000000000000203|- rs1 : x12<br> - rs2 : x16<br> - rs1_val == 512<br>                                                                                        |[0x8000040e]:c.add a2, a6<br>  |
|  20|[0x800032a8]<br>0xFFFFFFE0000003FF|- rs1 : x21<br> - rs2 : x19<br> - rs2_val == -137438953473<br> - rs1_val == 1024<br>                                                        |[0x80000428]:c.add s5, s3<br>  |
|  21|[0x800032b0]<br>0xFFFFFFFFFE000FFF|- rs1 : x9<br> - rs2 : x17<br> - rs2_val == -33554433<br> - rs1_val == 4096<br>                                                             |[0x80000434]:c.add s1, a7<br>  |
|  22|[0x800032b8]<br>0x0001000000002000|- rs1 : x7<br> - rs2 : x21<br> - rs2_val == 281474976710656<br> - rs1_val == 8192<br>                                                       |[0x80000440]:c.add t2, s5<br>  |
|  23|[0x800032c0]<br>0xFC00000000003FFF|- rs1 : x11<br> - rs2 : x7<br> - rs2_val == -288230376151711745<br> - rs1_val == 16384<br>                                                  |[0x8000044e]:c.add a1, t2<br>  |
|  24|[0x800032c8]<br>0x0200000000008000|- rs1 : x3<br> - rs2 : x29<br> - rs2_val == 144115188075855872<br> - rs1_val == 32768<br>                                                   |[0x8000045a]:c.add gp, t4<br>  |
|  25|[0x800032d0]<br>0x0000001000010000|- rs1 : x31<br> - rs2 : x12<br> - rs1_val == 65536<br>                                                                                      |[0x80000466]:c.add t6, a2<br>  |
|  26|[0x800032d8]<br>0x1000000000020000|- rs1 : x8<br> - rs2 : x14<br> - rs2_val == 1152921504606846976<br> - rs1_val == 131072<br>                                                 |[0x80000474]:c.add fp, a4<br>  |
|  27|[0x800032e0]<br>0x0008000000040000|- rs1 : x25<br> - rs2 : x1<br> - rs2_val == 2251799813685248<br> - rs1_val == 262144<br>                                                    |[0x80000482]:c.add s9, ra<br>  |
|  28|[0x800032e8]<br>0x0000000000080000|- rs1 : x5<br> - rs2 : x23<br> - rs1_val == 524288<br>                                                                                      |[0x8000048c]:c.add t0, s7<br>  |
|  29|[0x800032f0]<br>0xFFFFFFFFFFEFFFFF|- rs1 : x4<br> - rs2 : x30<br> - rs2_val == -2097153<br> - rs1_val == 1048576<br>                                                           |[0x8000049a]:c.add tp, t5<br>  |
|  30|[0x800032f8]<br>0xFFFFFFFFFE1FFFFF|- rs1 : x13<br> - rs2 : x10<br> - rs1_val == 2097152<br>                                                                                    |[0x800004a8]:c.add a3, a0<br>  |
|  31|[0x80003300]<br>0x0200000000400000|- rs1 : x19<br> - rs2 : x28<br> - rs1_val == 4194304<br>                                                                                    |[0x800004b6]:c.add s3, t3<br>  |
|  32|[0x80003308]<br>0x0000000004800000|- rs1 : x27<br> - rs2_val == 67108864<br> - rs1_val == 8388608<br>                                                                          |[0x800004c2]:c.add s11, a4<br> |
|  33|[0x80003310]<br>0x0000000001000007|- rs1_val == 16777216<br>                                                                                                                   |[0x800004cc]:c.add a0, a1<br>  |
|  34|[0x80003318]<br>0xFFFFFFFF81FFFFFF|- rs2_val == -2147483649<br> - rs1_val == 33554432<br>                                                                                      |[0x800004dc]:c.add a0, a1<br>  |
|  35|[0x80003320]<br>0x8000000003FFFFFF|- rs1_val == 67108864<br>                                                                                                                   |[0x800004ec]:c.add a0, a1<br>  |
|  36|[0x80003328]<br>0x0000000008000003|- rs1_val == 134217728<br>                                                                                                                  |[0x800004f6]:c.add a0, a1<br>  |
|  37|[0x80003330]<br>0x0000004010000000|- rs2_val == 274877906944<br> - rs1_val == 268435456<br>                                                                                    |[0x80000504]:c.add a0, a1<br>  |
|  38|[0x80003338]<br>0x0000000020000002|- rs2_val == 2<br> - rs1_val == 536870912<br>                                                                                               |[0x8000050e]:c.add a0, a1<br>  |
|  39|[0x80003340]<br>0x0008000040000000|- rs1_val == 1073741824<br>                                                                                                                 |[0x8000051c]:c.add a0, a1<br>  |
|  40|[0x80003348]<br>0x0000000080008000|- rs2_val == 32768<br> - rs1_val == 2147483648<br>                                                                                          |[0x80000528]:c.add a0, a1<br>  |
|  41|[0x80003350]<br>0x00000000FF7FFFFF|- rs2_val == -8388609<br> - rs1_val == 4294967296<br>                                                                                       |[0x80000538]:c.add a0, a1<br>  |
|  42|[0x80003358]<br>0x0000800200000000|- rs2_val == 140737488355328<br> - rs1_val == 8589934592<br>                                                                                |[0x80000548]:c.add a0, a1<br>  |
|  43|[0x80003360]<br>0x0000000800000000|- rs1_val == 34359738368<br>                                                                                                                |[0x80000554]:c.add a0, a1<br>  |
|  44|[0x80003368]<br>0x0000401000000000|- rs2_val == 70368744177664<br> - rs1_val == 68719476736<br>                                                                                |[0x80000564]:c.add a0, a1<br>  |
|  45|[0x80003370]<br>0xFFFFF01FFFFFFFFF|- rs2_val == -17592186044417<br> - rs1_val == 137438953472<br>                                                                              |[0x80000576]:c.add a0, a1<br>  |
|  46|[0x80003378]<br>0x00000037FFFFFFFF|- rs1_val == 274877906944<br>                                                                                                               |[0x80000588]:c.add a0, a1<br>  |
|  47|[0x80003380]<br>0x0000009000000000|- rs1_val == 549755813888<br>                                                                                                               |[0x80000598]:c.add a0, a1<br>  |
|  48|[0x80003388]<br>0x0000210000000000|- rs2_val == 35184372088832<br> - rs1_val == 1099511627776<br>                                                                              |[0x800005a8]:c.add a0, a1<br>  |
|  49|[0x80003390]<br>0x000000FFFFFFFFFF|- rs2_val == -1099511627777<br> - rs1_val == 2199023255552<br>                                                                              |[0x800005ba]:c.add a0, a1<br>  |
|  50|[0x80003398]<br>0x0008040000000000|- rs1_val == 4398046511104<br>                                                                                                              |[0x800005ca]:c.add a0, a1<br>  |
|  51|[0x800033a0]<br>0x0000080004000000|- rs1_val == 8796093022208<br>                                                                                                              |[0x800005d8]:c.add a0, a1<br>  |
|  52|[0x800033a8]<br>0x0000100008000000|- rs2_val == 134217728<br> - rs1_val == 17592186044416<br>                                                                                  |[0x800005e6]:c.add a0, a1<br>  |
|  53|[0x800033b0]<br>0xFFFFDFFFFFFFFFFF|- rs2_val == -70368744177665<br> - rs1_val == 35184372088832<br>                                                                            |[0x800005f8]:c.add a0, a1<br>  |
|  54|[0x800033b8]<br>0xAAAAEAAAAAAAAAAA|- rs2_val == -6148914691236517206<br> - rs1_val == 70368744177664<br>                                                                       |[0x8000061c]:c.add a0, a1<br>  |
|  55|[0x800033c0]<br>0x0000800000400000|- rs2_val == 4194304<br> - rs1_val == 140737488355328<br>                                                                                   |[0x8000062a]:c.add a0, a1<br>  |
|  56|[0x800033c8]<br>0x0081000000000000|- rs2_val == 36028797018963968<br> - rs1_val == 281474976710656<br>                                                                         |[0x8000063a]:c.add a0, a1<br>  |
|  57|[0x800033d0]<br>0xFFE1FFFFFFFFFFFF|- rs2_val == -9007199254740993<br> - rs1_val == 562949953421312<br>                                                                         |[0x8000064c]:c.add a0, a1<br>  |
|  58|[0x800033d8]<br>0x0003FFFFFFDFFFFF|- rs1_val == 1125899906842624<br>                                                                                                           |[0x8000065c]:c.add a0, a1<br>  |
|  59|[0x800033e0]<br>0x0007FFFFFFFFF7FF|- rs2_val == -2049<br> - rs1_val == 2251799813685248<br>                                                                                    |[0x8000066c]:c.add a0, a1<br>  |
|  60|[0x800033e8]<br>0x000FFFFFFFFDFFFF|- rs2_val == -131073<br> - rs1_val == 4503599627370496<br>                                                                                  |[0x8000067a]:c.add a0, a1<br>  |
|  61|[0x800033f0]<br>0x001FFFFFFFBFFFFF|- rs2_val == -4194305<br> - rs1_val == 9007199254740992<br>                                                                                 |[0x8000068a]:c.add a0, a1<br>  |
|  62|[0x800033f8]<br>0x003FFFFFFFFFFFEF|- rs2_val == -17<br> - rs1_val == 18014398509481984<br>                                                                                     |[0x80000696]:c.add a0, a1<br>  |
|  63|[0x80003400]<br>0x0080004000000000|- rs1_val == 36028797018963968<br>                                                                                                          |[0x800006a6]:c.add a0, a1<br>  |
|  64|[0x80003408]<br>0x0100000000100000|- rs2_val == 1048576<br> - rs1_val == 72057594037927936<br>                                                                                 |[0x800006b4]:c.add a0, a1<br>  |
|  65|[0x80003410]<br>0x0200000000010000|- rs2_val == 65536<br> - rs1_val == 144115188075855872<br>                                                                                  |[0x800006c0]:c.add a0, a1<br>  |
|  66|[0x80003418]<br>0x03FFFFDFFFFFFFFF|- rs1_val == 288230376151711744<br>                                                                                                         |[0x800006d2]:c.add a0, a1<br>  |
|  67|[0x80003420]<br>0x07FFFFFFFFFEFFFF|- rs2_val == -65537<br> - rs1_val == 576460752303423488<br>                                                                                 |[0x800006e0]:c.add a0, a1<br>  |
|  68|[0x80003428]<br>0x0FFFFFFFDFFFFFFF|- rs2_val == -536870913<br> - rs1_val == 1152921504606846976<br>                                                                            |[0x800006f0]:c.add a0, a1<br>  |
|  69|[0x80003430]<br>0x1FFFFFFFFFFFFDFF|- rs2_val == -513<br> - rs1_val == 2305843009213693952<br>                                                                                  |[0x800006fe]:c.add a0, a1<br>  |
|  70|[0x80003438]<br>0x4000000000000005|- rs1_val == 4611686018427387904<br>                                                                                                        |[0x8000070a]:c.add a0, a1<br>  |
|  71|[0x80003440]<br>0xFFFFF7FFFFFFFFFD|- rs2_val == -8796093022209<br> - rs1_val == -2<br>                                                                                         |[0x80000718]:c.add a0, a1<br>  |
|  72|[0x80003448]<br>0xFFFFFFFFFFFFFFF2|- rs2_val == -9<br> - rs1_val == -5<br>                                                                                                     |[0x80000720]:c.add a0, a1<br>  |
|  73|[0x80003450]<br>0xFFFFFFFFDFFFFFF6|- rs1_val == -9<br>                                                                                                                         |[0x8000072c]:c.add a0, a1<br>  |
|  74|[0x80003458]<br>0xFF7FFFFFFFFFFFEE|- rs2_val == -36028797018963969<br> - rs1_val == -17<br>                                                                                    |[0x8000073a]:c.add a0, a1<br>  |
|  75|[0x80003460]<br>0xFFEFFFFFFFFFFFDE|- rs2_val == -4503599627370497<br> - rs1_val == -33<br>                                                                                     |[0x8000074a]:c.add a0, a1<br>  |
|  76|[0x80003468]<br>0x00003FFFFFFFFFBF|- rs1_val == -65<br>                                                                                                                        |[0x80000758]:c.add a0, a1<br>  |
|  77|[0x80003470]<br>0xFFFFFFFFFFFFFF86|- rs1_val == -129<br>                                                                                                                       |[0x80000762]:c.add a0, a1<br>  |
|  78|[0x80003478]<br>0x000FFFFFFFFFFEFF|- rs2_val == 4503599627370496<br> - rs1_val == -257<br>                                                                                     |[0x80000770]:c.add a0, a1<br>  |
|  79|[0x80003480]<br>0x7FFFFFFFFFFFFDFF|- rs1_val == -513<br>                                                                                                                       |[0x8000077e]:c.add a0, a1<br>  |
|  80|[0x80003488]<br>0xFFFFFFFFFFFFFBF7|- rs1_val == -1025<br>                                                                                                                      |[0x80000788]:c.add a0, a1<br>  |
|  81|[0x80003490]<br>0xFFBFFFFFFFFFF7FE|- rs2_val == -18014398509481985<br> - rs1_val == -2049<br>                                                                                  |[0x8000079a]:c.add a0, a1<br>  |
|  82|[0x80003498]<br>0xBFFFFFFFFFFFEFFE|- rs2_val == -4611686018427387905<br> - rs1_val == -4097<br>                                                                                |[0x800007aa]:c.add a0, a1<br>  |
|  83|[0x800034a0]<br>0xFEDFFFFFFFFFFFFE|- rs2_val == -72057594037927937<br> - rs1_val == -9007199254740993<br>                                                                      |[0x800007be]:c.add a0, a1<br>  |
|  84|[0x800034a8]<br>0xF800000000001FFF|- rs2_val == -576460752303423489<br>                                                                                                        |[0x800007cc]:c.add a0, a1<br>  |
|  85|[0x800034b0]<br>0xE000000000000004|- rs2_val == -2305843009213693953<br>                                                                                                       |[0x800007dc]:c.add a0, a1<br>  |
|  86|[0x800034b8]<br>0xFFFFFFFFFBFFDFFE|- rs2_val == -67108865<br> - rs1_val == -8193<br>                                                                                           |[0x800007ec]:c.add a0, a1<br>  |
|  87|[0x800034c0]<br>0xFF7FFFFFFFFFBFFE|- rs1_val == -16385<br>                                                                                                                     |[0x800007fe]:c.add a0, a1<br>  |
|  88|[0x800034c8]<br>0xFFFFFFFFFBFF7FFE|- rs1_val == -32769<br>                                                                                                                     |[0x8000080e]:c.add a0, a1<br>  |
|  89|[0x800034d0]<br>0xFFFFFFFFFFFEFFF8|- rs1_val == -65537<br>                                                                                                                     |[0x8000081a]:c.add a0, a1<br>  |
|  90|[0x800034d8]<br>0xFEFFFFFFFFFDFFFE|- rs1_val == -131073<br>                                                                                                                    |[0x8000082c]:c.add a0, a1<br>  |
|  91|[0x800034e0]<br>0x0000001FFFFBFFFF|- rs2_val == 137438953472<br> - rs1_val == -262145<br>                                                                                      |[0x8000083e]:c.add a0, a1<br>  |
|  92|[0x800034e8]<br>0xFFFFFFFFFFF7EFFE|- rs2_val == -4097<br> - rs1_val == -524289<br>                                                                                             |[0x8000084e]:c.add a0, a1<br>  |
|  93|[0x800034f0]<br>0xFFBFFFFFFFEFFFFE|- rs1_val == -1048577<br>                                                                                                                   |[0x80000862]:c.add a0, a1<br>  |
|  94|[0x800034f8]<br>0xFEFFFFFFFFDFFFFE|- rs1_val == -2097153<br>                                                                                                                   |[0x80000876]:c.add a0, a1<br>  |
|  95|[0x80003500]<br>0xFFFFFFFBFFBFFFFE|- rs2_val == -17179869185<br> - rs1_val == -4194305<br>                                                                                     |[0x8000088a]:c.add a0, a1<br>  |
|  96|[0x80003508]<br>0xFBFFFFFFFF7FFFFE|- rs1_val == -8388609<br>                                                                                                                   |[0x8000089e]:c.add a0, a1<br>  |
|  97|[0x80003510]<br>0xFFFFFFFFFF07FFFF|- rs2_val == 524288<br> - rs1_val == -16777217<br>                                                                                          |[0x800008ae]:c.add a0, a1<br>  |
|  98|[0x80003518]<br>0xFFFFFFFFFDFFEFFE|- rs1_val == -33554433<br>                                                                                                                  |[0x800008be]:c.add a0, a1<br>  |
|  99|[0x80003520]<br>0x0000003FFBFFFFFF|- rs1_val == -67108865<br>                                                                                                                  |[0x800008d0]:c.add a0, a1<br>  |
| 100|[0x80003528]<br>0x0000000017FFFFFF|- rs2_val == 536870912<br> - rs1_val == -134217729<br>                                                                                      |[0x800008e0]:c.add a0, a1<br>  |
| 101|[0x80003530]<br>0x0001FFFFEFFFFFFF|- rs2_val == 562949953421312<br> - rs1_val == -268435457<br>                                                                                |[0x800008f2]:c.add a0, a1<br>  |
| 102|[0x80003538]<br>0xFFFFFFFFDFFFFFEE|- rs1_val == -536870913<br>                                                                                                                 |[0x80000900]:c.add a0, a1<br>  |
| 103|[0x80003540]<br>0xFFFFFFFFC0001FFF|- rs2_val == 8192<br> - rs1_val == -1073741825<br>                                                                                          |[0x8000090e]:c.add a0, a1<br>  |
| 104|[0x80003548]<br>0xFFFFFFFF5FFFFFFE|- rs1_val == -2147483649<br>                                                                                                                |[0x80000922]:c.add a0, a1<br>  |
| 105|[0x80003550]<br>0xFFFFFFFF00000003|- rs2_val == 4<br> - rs1_val == -4294967297<br>                                                                                             |[0x80000932]:c.add a0, a1<br>  |
| 106|[0x80003558]<br>0xFEFFFFFDFFFFFFFE|- rs1_val == -8589934593<br>                                                                                                                |[0x80000948]:c.add a0, a1<br>  |
| 107|[0x80003560]<br>0xF7FFFFFBFFFFFFFE|- rs1_val == -17179869185<br>                                                                                                               |[0x8000095e]:c.add a0, a1<br>  |
| 108|[0x80003568]<br>0xFFFFFFF7FFFFFFF7|- rs1_val == -34359738369<br>                                                                                                               |[0x8000096e]:c.add a0, a1<br>  |
| 109|[0x80003570]<br>0xFFFFFFF0000007FF|- rs2_val == 2048<br> - rs1_val == -68719476737<br>                                                                                         |[0x80000982]:c.add a0, a1<br>  |
| 110|[0x80003578]<br>0xFFFFFFDFFDFFFFFE|- rs1_val == -137438953473<br>                                                                                                              |[0x80000996]:c.add a0, a1<br>  |
| 111|[0x80003580]<br>0xFFFFF7BFFFFFFFFE|- rs1_val == -274877906945<br>                                                                                                              |[0x800009ac]:c.add a0, a1<br>  |
| 112|[0x80003588]<br>0xFFFFFF3FFFFFFFFF|- rs1_val == -1099511627777<br>                                                                                                             |[0x800009c0]:c.add a0, a1<br>  |
| 113|[0x80003590]<br>0x0000FDFFFFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                             |[0x800009d4]:c.add a0, a1<br>  |
| 114|[0x80003598]<br>0x00000BFFFFFFFFFF|- rs2_val == 17592186044416<br> - rs1_val == -4398046511105<br>                                                                             |[0x800009e8]:c.add a0, a1<br>  |
| 115|[0x800035a0]<br>0xFFFFF0001FFFFFFF|- rs1_val == -17592186044417<br>                                                                                                            |[0x800009fa]:c.add a0, a1<br>  |
| 116|[0x800035a8]<br>0xFFFFDFFFFDFFFFFE|- rs1_val == -35184372088833<br>                                                                                                            |[0x80000a0e]:c.add a0, a1<br>  |
| 117|[0x800035b0]<br>0x03FFBFFFFFFFFFFF|- rs2_val == 288230376151711744<br> - rs1_val == -70368744177665<br>                                                                        |[0x80000a22]:c.add a0, a1<br>  |
| 118|[0x800035b8]<br>0xFFFF7FFDFFFFFFFE|- rs2_val == -8589934593<br> - rs1_val == -140737488355329<br>                                                                              |[0x80000a38]:c.add a0, a1<br>  |
| 119|[0x800035c0]<br>0xFFFF000000000007|- rs2_val == 8<br> - rs1_val == -281474976710657<br>                                                                                        |[0x80000a48]:c.add a0, a1<br>  |
| 120|[0x800035c8]<br>0x01FDFFFFFFFFFFFF|- rs1_val == -562949953421313<br>                                                                                                           |[0x80000a5c]:c.add a0, a1<br>  |
| 121|[0x800035d0]<br>0xFFFC000001FFFFFF|- rs2_val == 33554432<br> - rs1_val == -1125899906842625<br>                                                                                |[0x80000a6e]:c.add a0, a1<br>  |
| 122|[0x800035d8]<br>0xFFF8000000000004|- rs1_val == -2251799813685249<br>                                                                                                          |[0x80000a7e]:c.add a0, a1<br>  |
| 123|[0x800035e0]<br>0xFFEFFFFFFFFFDFFE|- rs2_val == -8193<br> - rs1_val == -4503599627370497<br>                                                                                   |[0x80000a90]:c.add a0, a1<br>  |
| 124|[0x800035e8]<br>0xFFBFFFF7FFFFFFFE|- rs1_val == -18014398509481985<br>                                                                                                         |[0x80000aa6]:c.add a0, a1<br>  |
| 125|[0x800035f0]<br>0xFF7FFFFEFFFFFFFE|- rs2_val == -4294967297<br> - rs1_val == -36028797018963969<br>                                                                            |[0x80000abc]:c.add a0, a1<br>  |
| 126|[0x800035f8]<br>0xFEFFFFFFFFFDFFFE|- rs1_val == -72057594037927937<br>                                                                                                         |[0x80000ace]:c.add a0, a1<br>  |
| 127|[0x80003600]<br>0xFDFFFFDFFFFFFFFE|- rs1_val == -144115188075855873<br>                                                                                                        |[0x80000ae4]:c.add a0, a1<br>  |
| 128|[0x80003608]<br>0xFC00000000000007|- rs1_val == -288230376151711745<br>                                                                                                        |[0x80000af4]:c.add a0, a1<br>  |
| 129|[0x80003610]<br>0xF7FFFFFFFFFEFFFE|- rs1_val == -576460752303423489<br>                                                                                                        |[0x80000b06]:c.add a0, a1<br>  |
| 130|[0x80003618]<br>0xF000000000000007|- rs1_val == -1152921504606846977<br>                                                                                                       |[0x80000b16]:c.add a0, a1<br>  |
| 131|[0x80003620]<br>0xE0000000FFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                       |[0x80000b2a]:c.add a0, a1<br>  |
| 132|[0x80003628]<br>0xBFFFFFFDFFFFFFFE|- rs1_val == -4611686018427387905<br>                                                                                                       |[0x80000b40]:c.add a0, a1<br>  |
| 133|[0x80003630]<br>0x5515555555555554|- rs1_val == 6148914691236517205<br>                                                                                                        |[0x80000b68]:c.add a0, a1<br>  |
| 134|[0x80003638]<br>0xAAAAAAAAAAAAAAAA|- rs1_val == -6148914691236517206<br>                                                                                                       |[0x80000b8a]:c.add a0, a1<br>  |
| 135|[0x80003640]<br>0x0000000000400010|- rs2_val == 16<br>                                                                                                                         |[0x80000b96]:c.add a0, a1<br>  |
| 136|[0x80003648]<br>0xFFFFFFFFFFFFFF9F|- rs2_val == 32<br>                                                                                                                         |[0x80000ba4]:c.add a0, a1<br>  |
| 137|[0x80003650]<br>0x0000000000000044|- rs2_val == 64<br>                                                                                                                         |[0x80000bb0]:c.add a0, a1<br>  |
| 138|[0x80003658]<br>0xAAAAAAAAAAAAAB2A|- rs2_val == 128<br>                                                                                                                        |[0x80000bd4]:c.add a0, a1<br>  |
| 139|[0x80003660]<br>0x0000000000000120|- rs2_val == 256<br>                                                                                                                        |[0x80000be2]:c.add a0, a1<br>  |
| 140|[0x80003668]<br>0xFFFFC000000001FF|- rs2_val == 512<br>                                                                                                                        |[0x80000bf4]:c.add a0, a1<br>  |
| 141|[0x80003670]<br>0x0004000000000400|- rs2_val == 1024<br>                                                                                                                       |[0x80000c04]:c.add a0, a1<br>  |
| 142|[0x80003678]<br>0xFFE0000000000FFF|- rs2_val == 4096<br>                                                                                                                       |[0x80000c14]:c.add a0, a1<br>  |
| 143|[0x80003680]<br>0xFFFF80000001FFFF|- rs2_val == 131072<br>                                                                                                                     |[0x80000c26]:c.add a0, a1<br>  |
| 144|[0x80003688]<br>0xFFFE00000003FFFF|- rs2_val == 262144<br>                                                                                                                     |[0x80000c38]:c.add a0, a1<br>  |
| 145|[0x80003690]<br>0xF0000000001FFFFF|- rs2_val == 2097152<br>                                                                                                                    |[0x80000c4a]:c.add a0, a1<br>  |
| 146|[0x80003698]<br>0xFFFFFFFE007FFFFF|- rs2_val == 8388608<br>                                                                                                                    |[0x80000c5c]:c.add a0, a1<br>  |
| 147|[0x800036a0]<br>0x0000000000FFFFBF|- rs2_val == 16777216<br>                                                                                                                   |[0x80000c6a]:c.add a0, a1<br>  |
| 148|[0x800036a8]<br>0x0000000010002000|- rs2_val == 268435456<br>                                                                                                                  |[0x80000c76]:c.add a0, a1<br>  |
| 149|[0x800036b0]<br>0x0800000080000000|- rs2_val == 2147483648<br>                                                                                                                 |[0x80000c88]:c.add a0, a1<br>  |
| 150|[0x800036b8]<br>0x0000000200000007|- rs2_val == 8589934592<br>                                                                                                                 |[0x80000c96]:c.add a0, a1<br>  |
| 151|[0x800036c0]<br>0x0000000400001000|- rs2_val == 17179869184<br>                                                                                                                |[0x80000ca4]:c.add a0, a1<br>  |
| 152|[0x800036c8]<br>0xF8000007FFFFFFFF|- rs2_val == 34359738368<br>                                                                                                                |[0x80000cb8]:c.add a0, a1<br>  |
| 153|[0x800036d0]<br>0x8000007FFFFFFFFF|- rs2_val == 549755813888<br>                                                                                                               |[0x80000ccc]:c.add a0, a1<br>  |
| 154|[0x800036d8]<br>0x000000EFFFFFFFFF|- rs2_val == 1099511627776<br>                                                                                                              |[0x80000ce0]:c.add a0, a1<br>  |
| 155|[0x800036e0]<br>0x000001FFFBFFFFFF|- rs2_val == 2199023255552<br>                                                                                                              |[0x80000cf2]:c.add a0, a1<br>  |
| 156|[0x800036e8]<br>0x000003FFFFFFFF7F|- rs2_val == 4398046511104<br>                                                                                                              |[0x80000d02]:c.add a0, a1<br>  |
| 157|[0x800036f0]<br>0x000007FF7FFFFFFF|- rs2_val == 8796093022208<br>                                                                                                              |[0x80000d16]:c.add a0, a1<br>  |
| 158|[0x800036f8]<br>0x0006000000000000|- rs2_val == 1125899906842624<br>                                                                                                           |[0x80000d28]:c.add a0, a1<br>  |
| 159|[0x80003700]<br>0x0040000000000100|- rs2_val == 18014398509481984<br> - rs1_val == 256<br>                                                                                     |[0x80000d38]:c.add a0, a1<br>  |
| 160|[0x80003708]<br>0x0100000004000000|- rs2_val == 72057594037927936<br>                                                                                                          |[0x80000d48]:c.add a0, a1<br>  |
| 161|[0x80003710]<br>0x07FFFFFF7FFFFFFF|- rs2_val == 576460752303423488<br>                                                                                                         |[0x80000d5c]:c.add a0, a1<br>  |
| 162|[0x80003718]<br>0x3FFFFFFFFFFFEFFF|- rs2_val == 4611686018427387904<br>                                                                                                        |[0x80000d6c]:c.add a0, a1<br>  |
| 163|[0x80003720]<br>0x0000000000000000|- rs2_val == -2<br>                                                                                                                         |[0x80000d76]:c.add a0, a1<br>  |
| 164|[0x80003730]<br>0xF7FFFFFFFFFFFFFA|- rs2_val == -5<br>                                                                                                                         |[0x80000d94]:c.add a0, a1<br>  |
| 165|[0x80003738]<br>0x0000003FFFFFFFDF|- rs2_val == -33<br>                                                                                                                        |[0x80000da4]:c.add a0, a1<br>  |
| 166|[0x80003740]<br>0xFFFFFDFFFFFFFFBE|- rs2_val == -65<br>                                                                                                                        |[0x80000db6]:c.add a0, a1<br>  |
| 167|[0x80003748]<br>0x00000007FFFFFF7F|- rs2_val == -129<br>                                                                                                                       |[0x80000dc6]:c.add a0, a1<br>  |
| 168|[0x80003750]<br>0x000FFFFFFFFFFEFF|- rs2_val == -257<br>                                                                                                                       |[0x80000dd6]:c.add a0, a1<br>  |
| 169|[0x80003758]<br>0x00000000000FBFFF|- rs2_val == -16385<br>                                                                                                                     |[0x80000de4]:c.add a0, a1<br>  |
| 170|[0x80003760]<br>0xF7FFFFFFFFFF7FFE|- rs2_val == -32769<br>                                                                                                                     |[0x80000df6]:c.add a0, a1<br>  |
| 171|[0x80003768]<br>0x00007FFFFFFBFFFF|- rs2_val == -262145<br>                                                                                                                    |[0x80000e08]:c.add a0, a1<br>  |
| 172|[0x80003770]<br>0xFFFFFFFF7FF7FFFE|- rs2_val == -524289<br>                                                                                                                    |[0x80000e1c]:c.add a0, a1<br>  |
| 173|[0x80003778]<br>0x000007FFFFEFFFFF|- rs2_val == -1048577<br>                                                                                                                   |[0x80000e2e]:c.add a0, a1<br>  |
| 174|[0x80003780]<br>0xFFFFFFFFFEFFEFFE|- rs2_val == -16777217<br>                                                                                                                  |[0x80000e3e]:c.add a0, a1<br>  |
| 175|[0x80003788]<br>0x00FFFFFFF7FFFFFF|- rs2_val == -134217729<br>                                                                                                                 |[0x80000e50]:c.add a0, a1<br>  |
| 176|[0x80003790]<br>0xFFFFFFFFEDFFFFFE|- rs2_val == -268435457<br>                                                                                                                 |[0x80000e62]:c.add a0, a1<br>  |
| 177|[0x80003798]<br>0xFFFFFFFFBFFFFFFE|- rs2_val == -1073741825<br>                                                                                                                |[0x80000e70]:c.add a0, a1<br>  |
| 178|[0x800037a0]<br>0xFFFFFFF00000001F|- rs2_val == -68719476737<br>                                                                                                               |[0x80000e82]:c.add a0, a1<br>  |
| 179|[0x800037a8]<br>0xFFFFFFDFFFFFFFFF|- rs2_val == -274877906945<br>                                                                                                              |[0x80000e96]:c.add a0, a1<br>  |
| 180|[0x800037b0]<br>0xFFFFFF7FFFFFFFF7|- rs2_val == -549755813889<br>                                                                                                              |[0x80000ea6]:c.add a0, a1<br>  |
| 181|[0x800037b8]<br>0xFFFFFE0000000003|- rs2_val == -2199023255553<br>                                                                                                             |[0x80000eb6]:c.add a0, a1<br>  |
| 182|[0x800037c0]<br>0xFFFFFBFFFFFEFFFE|- rs2_val == -4398046511105<br>                                                                                                             |[0x80000ec8]:c.add a0, a1<br>  |
| 183|[0x800037c8]<br>0xFFFFDFFFFFFDFFFE|- rs2_val == -35184372088833<br>                                                                                                            |[0x80000eda]:c.add a0, a1<br>  |
| 184|[0x800037d0]<br>0xFFFF8003FFFFFFFF|- rs2_val == -140737488355329<br>                                                                                                           |[0x80000eee]:c.add a0, a1<br>  |
| 185|[0x800037d8]<br>0xFFFF7FFFFFFFFFFF|- rs2_val == -281474976710657<br>                                                                                                           |[0x80000f02]:c.add a0, a1<br>  |
| 186|[0x800037e0]<br>0xFFEBFFFFFFFFFFFE|- rs2_val == -1125899906842625<br>                                                                                                          |[0x80000f18]:c.add a0, a1<br>  |
| 187|[0x800037e8]<br>0xFFF800000FFFFFFF|- rs2_val == -2251799813685249<br>                                                                                                          |[0x80000f2a]:c.add a0, a1<br>  |
| 188|[0x800037f0]<br>0x001FFFFBFFFFFFFF|- rs2_val == 9007199254740992<br>                                                                                                           |[0x80000f3e]:c.add a0, a1<br>  |
