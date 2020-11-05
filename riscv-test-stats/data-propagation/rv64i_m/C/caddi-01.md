
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000ae0')]      |
| SIG_REGION                | [('0x80003204', '0x80003630', '133 dwords')]      |
| COV_LABELS                | caddi      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/caddi-01.S/caddi-01.S    |
| Total Number of coverpoints| 188     |
| Total Coverpoints Hit     | 188      |
| Total Signature Updates   | 132      |
| STAT1                     | 132      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


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

|s.no|            signature             |                                                                             coverpoints                                                                             |                              code                              |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80003210]<br>0x8000000000000003|- opcode : c.addi<br> - rd : x4<br> - rs1_val != imm_val<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br> |[0x800003a0]:c.addi tp, 3<br> [0x800003a2]:sd tp, 0(t2)<br>     |
|   2|[0x80003218]<br>0xFFFFFFFFFFFFFFFD|- rd : x21<br> - rs1_val == 0<br> - imm_val == -3<br>                                                                                                                |[0x800003aa]:c.addi s5, 61<br> [0x800003ac]:sd s5, 8(t2)<br>    |
|   3|[0x80003220]<br>0x7FFFFFFFFFFFFFF9|- rd : x15<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>                                               |[0x800003bc]:c.addi a5, 58<br> [0x800003be]:sd a5, 16(t2)<br>   |
|   4|[0x80003228]<br>0xFFFFFFFFFFFFFFF9|- rd : x12<br> - rs1_val == 1<br>                                                                                                                                    |[0x800003c6]:c.addi a2, 56<br> [0x800003c8]:sd a2, 24(t2)<br>   |
|   5|[0x80003230]<br>0xEFFFFFFFFFFFFFDF|- rd : x29<br> - rs1_val < 0 and imm_val < 0<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> - rs1_val == -1152921504606846977<br>                             |[0x800003d8]:c.addi t4, 32<br> [0x800003da]:sd t4, 32(t2)<br>   |
|   6|[0x80003238]<br>0xFFFFFFFFFFFFFFF7|- rd : x18<br> - imm_val == 0<br> - rs1_val == -9<br>                                                                                                                |[0x800003e2]:c.addi.hint.s2<br> [0x800003e4]:sd s2, 40(t2)<br>  |
|   7|[0x80003240]<br>0x0000000000000018|- rd : x16<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br>                                                                                                     |[0x800003ec]:c.addi a6, 31<br> [0x800003ee]:sd a6, 48(t2)<br>   |
|   8|[0x80003248]<br>0xFFFFFFC000000000|- rd : x11<br> - imm_val == 1<br> - rs1_val == -274877906945<br>                                                                                                     |[0x800003fe]:c.addi a1, 1<br> [0x80000400]:sd a1, 56(t2)<br>    |
|   9|[0x80003250]<br>0xFFFFFFFFFFFFFFDE|- rd : x26<br> - rs1_val == imm_val<br> - imm_val == -17<br> - rs1_val == -17<br>                                                                                    |[0x80000408]:c.addi s10, 47<br> [0x8000040a]:sd s10, 64(t2)<br> |
|  10|[0x80003258]<br>0x0400000000000015|- rd : x25<br> - rs1_val > 0 and imm_val > 0<br> - imm_val == 21<br> - rs1_val == 288230376151711744<br>                                                             |[0x80000416]:c.addi s9, 21<br> [0x80000418]:sd s9, 72(t2)<br>   |
|  11|[0x80003260]<br>0x000000000000000B|- rd : x22<br> - rs1_val == 2<br>                                                                                                                                    |[0x80000420]:c.addi s6, 9<br> [0x80000422]:sd s6, 80(t2)<br>    |
|  12|[0x80003268]<br>0x0000000000000005|- rd : x19<br> - rs1_val == 4<br>                                                                                                                                    |[0x8000042a]:c.addi s3, 1<br> [0x8000042c]:sd s3, 88(t2)<br>    |
|  13|[0x80003270]<br>0x000000000000000E|- rd : x28<br> - rs1_val == 8<br>                                                                                                                                    |[0x80000434]:c.addi t3, 6<br> [0x80000436]:sd t3, 96(t2)<br>    |
|  14|[0x80003278]<br>0x000000000000000B|- rd : x8<br> - imm_val == -5<br> - rs1_val == 16<br>                                                                                                                |[0x8000043e]:c.addi fp, 59<br> [0x80000440]:sd fp, 104(t2)<br>  |
|  15|[0x80003280]<br>0x0000000000000022|- rd : x27<br> - imm_val == 2<br> - rs1_val == 32<br>                                                                                                                |[0x80000448]:c.addi s11, 2<br> [0x8000044a]:sd s11, 112(t2)<br> |
|  16|[0x80003288]<br>0x0000000000000042|- rd : x23<br> - rs1_val == 64<br>                                                                                                                                   |[0x80000452]:c.addi s7, 2<br> [0x80000454]:sd s7, 120(t2)<br>   |
|  17|[0x80003290]<br>0x0000000000000082|- rd : x17<br> - rs1_val == 128<br>                                                                                                                                  |[0x8000045c]:c.addi a7, 2<br> [0x8000045e]:sd a7, 128(t2)<br>   |
|  18|[0x80003298]<br>0x00000000000000E0|- rd : x5<br> - rs1_val == 256<br>                                                                                                                                   |[0x80000466]:c.addi t0, 32<br> [0x80000468]:sd t0, 136(t2)<br>  |
|  19|[0x800032a0]<br>0x0000000000000215|- rd : x31<br> - rs1_val == 512<br>                                                                                                                                  |[0x80000470]:c.addi t6, 21<br> [0x80000472]:sd t6, 144(t2)<br>  |
|  20|[0x800032a8]<br>0x0000000000000400|- rd : x2<br> - rs1_val == 1024<br>                                                                                                                                  |[0x8000047a]:c.addi.hint.sp<br> [0x8000047c]:sd sp, 152(t2)<br> |
|  21|[0x800032b0]<br>0x00000000000007F9|- rd : x3<br> - rs1_val == 2048<br>                                                                                                                                  |[0x80000488]:c.addi gp, 57<br> [0x8000048a]:sd gp, 160(t2)<br>  |
|  22|[0x800032b8]<br>0x0000000000001007|- rd : x10<br> - rs1_val == 4096<br>                                                                                                                                 |[0x80000492]:c.addi a0, 7<br> [0x80000494]:sd a0, 168(t2)<br>   |
|  23|[0x800032c0]<br>0x0000000000001FE0|- rd : x9<br> - rs1_val == 8192<br>                                                                                                                                  |[0x8000049c]:c.addi s1, 32<br> [0x8000049e]:sd s1, 176(t2)<br>  |
|  24|[0x800032c8]<br>0x0000000000004009|- rd : x30<br> - rs1_val == 16384<br>                                                                                                                                |[0x800004a6]:c.addi t5, 9<br> [0x800004a8]:sd t5, 184(t2)<br>   |
|  25|[0x800032d0]<br>0x0000000000008008|- rd : x6<br> - imm_val == 8<br> - rs1_val == 32768<br>                                                                                                              |[0x800004b0]:c.addi t1, 8<br> [0x800004b2]:sd t1, 192(t2)<br>   |
|  26|[0x800032d8]<br>0x000000000000FFF0|- rd : x13<br> - rs1_val == 65536<br>                                                                                                                                |[0x800004ba]:c.addi a3, 48<br> [0x800004bc]:sd a3, 200(t2)<br>  |
|  27|[0x800032e0]<br>0x000000000001FFFA|- rd : x1<br> - rs1_val == 131072<br>                                                                                                                                |[0x800004c4]:c.addi ra, 58<br> [0x800004c6]:sd ra, 208(t2)<br>  |
|  28|[0x800032e8]<br>0x000000000003FFFF|- rd : x14<br> - rs1_val == 262144<br>                                                                                                                               |[0x800004ce]:c.addi a4, 63<br> [0x800004d0]:sd a4, 216(t2)<br>  |
|  29|[0x800032f0]<br>0x000000000007FFEF|- rd : x7<br> - rs1_val == 524288<br>                                                                                                                                |[0x800004e0]:c.addi t2, 47<br> [0x800004e2]:sd t2, 0(ra)<br>    |
|  30|[0x800032f8]<br>0x00000000000FFFEF|- rd : x20<br> - rs1_val == 1048576<br>                                                                                                                              |[0x800004ea]:c.addi s4, 47<br> [0x800004ec]:sd s4, 8(ra)<br>    |
|  31|[0x80003300]<br>0x00000000001FFFFD|- rd : x24<br> - rs1_val == 2097152<br>                                                                                                                              |[0x800004f4]:c.addi s8, 61<br> [0x800004f6]:sd s8, 16(ra)<br>   |
|  32|[0x80003308]<br>0x00000000003FFFF9|- rs1_val == 4194304<br>                                                                                                                                             |[0x800004fe]:c.addi a0, 57<br> [0x80000500]:sd a0, 24(ra)<br>   |
|  33|[0x80003310]<br>0x00000000007FFFEF|- rs1_val == 8388608<br>                                                                                                                                             |[0x80000508]:c.addi a0, 47<br> [0x8000050a]:sd a0, 32(ra)<br>   |
|  34|[0x80003318]<br>0x0000000000FFFFF7|- imm_val == -9<br> - rs1_val == 16777216<br>                                                                                                                        |[0x80000512]:c.addi a0, 55<br> [0x80000514]:sd a0, 40(ra)<br>   |
|  35|[0x80003320]<br>0x000000000200001F|- rs1_val == 33554432<br>                                                                                                                                            |[0x8000051c]:c.addi a0, 31<br> [0x8000051e]:sd a0, 48(ra)<br>   |
|  36|[0x80003328]<br>0x0000000003FFFFF7|- rs1_val == 67108864<br>                                                                                                                                            |[0x80000526]:c.addi a0, 55<br> [0x80000528]:sd a0, 56(ra)<br>   |
|  37|[0x80003330]<br>0x0000000007FFFFEF|- rs1_val == 134217728<br>                                                                                                                                           |[0x80000530]:c.addi a0, 47<br> [0x80000532]:sd a0, 64(ra)<br>   |
|  38|[0x80003338]<br>0x000000001000000F|- rs1_val == 268435456<br>                                                                                                                                           |[0x8000053a]:c.addi a0, 15<br> [0x8000053c]:sd a0, 72(ra)<br>   |
|  39|[0x80003340]<br>0x000000001FFFFFFB|- rs1_val == 536870912<br>                                                                                                                                           |[0x80000544]:c.addi a0, 59<br> [0x80000546]:sd a0, 80(ra)<br>   |
|  40|[0x80003348]<br>0x000000004000000F|- rs1_val == 1073741824<br>                                                                                                                                          |[0x8000054e]:c.addi a0, 15<br> [0x80000550]:sd a0, 88(ra)<br>   |
|  41|[0x80003350]<br>0x000000007FFFFFEF|- rs1_val == 2147483648<br>                                                                                                                                          |[0x8000055c]:c.addi a0, 47<br> [0x8000055e]:sd a0, 96(ra)<br>   |
|  42|[0x80003358]<br>0x0000000100000006|- rs1_val == 4294967296<br>                                                                                                                                          |[0x8000056a]:c.addi a0, 6<br> [0x8000056c]:sd a0, 104(ra)<br>   |
|  43|[0x80003360]<br>0x00000001FFFFFFF7|- rs1_val == 8589934592<br>                                                                                                                                          |[0x80000578]:c.addi a0, 55<br> [0x8000057a]:sd a0, 112(ra)<br>  |
|  44|[0x80003368]<br>0x00000003FFFFFFEF|- rs1_val == 17179869184<br>                                                                                                                                         |[0x80000586]:c.addi a0, 47<br> [0x80000588]:sd a0, 120(ra)<br>  |
|  45|[0x80003370]<br>0x0000000800000015|- rs1_val == 34359738368<br>                                                                                                                                         |[0x80000594]:c.addi a0, 21<br> [0x80000596]:sd a0, 128(ra)<br>  |
|  46|[0x80003378]<br>0x0000000FFFFFFFF8|- rs1_val == 68719476736<br>                                                                                                                                         |[0x800005a2]:c.addi a0, 56<br> [0x800005a4]:sd a0, 136(ra)<br>  |
|  47|[0x80003380]<br>0x0000002000000000|- rs1_val == 137438953472<br>                                                                                                                                        |[0x800005b0]:c.addi.hint.a0<br> [0x800005b2]:sd a0, 144(ra)<br> |
|  48|[0x80003388]<br>0x0000004000000009|- rs1_val == 274877906944<br>                                                                                                                                        |[0x800005be]:c.addi a0, 9<br> [0x800005c0]:sd a0, 152(ra)<br>   |
|  49|[0x80003390]<br>0x0000007FFFFFFFF8|- rs1_val == 549755813888<br>                                                                                                                                        |[0x800005cc]:c.addi a0, 56<br> [0x800005ce]:sd a0, 160(ra)<br>  |
|  50|[0x80003398]<br>0x000000FFFFFFFFEF|- rs1_val == 1099511627776<br>                                                                                                                                       |[0x800005da]:c.addi a0, 47<br> [0x800005dc]:sd a0, 168(ra)<br>  |
|  51|[0x800033a0]<br>0x000001FFFFFFFFEA|- imm_val == -22<br> - rs1_val == 2199023255552<br>                                                                                                                  |[0x800005e8]:c.addi a0, 42<br> [0x800005ea]:sd a0, 176(ra)<br>  |
|  52|[0x800033a8]<br>0x0000040000000015|- rs1_val == 4398046511104<br>                                                                                                                                       |[0x800005f6]:c.addi a0, 21<br> [0x800005f8]:sd a0, 184(ra)<br>  |
|  53|[0x800033b0]<br>0x0000080000000015|- rs1_val == 8796093022208<br>                                                                                                                                       |[0x80000604]:c.addi a0, 21<br> [0x80000606]:sd a0, 192(ra)<br>  |
|  54|[0x800033b8]<br>0x00000FFFFFFFFFF9|- rs1_val == 17592186044416<br>                                                                                                                                      |[0x80000612]:c.addi a0, 57<br> [0x80000614]:sd a0, 200(ra)<br>  |
|  55|[0x800033c0]<br>0x00001FFFFFFFFFFC|- rs1_val == 35184372088832<br>                                                                                                                                      |[0x80000620]:c.addi a0, 60<br> [0x80000622]:sd a0, 208(ra)<br>  |
|  56|[0x800033c8]<br>0x000040000000001F|- rs1_val == 70368744177664<br>                                                                                                                                      |[0x8000062e]:c.addi a0, 31<br> [0x80000630]:sd a0, 216(ra)<br>  |
|  57|[0x800033d0]<br>0x0000800000000010|- imm_val == 16<br> - rs1_val == 140737488355328<br>                                                                                                                 |[0x8000063c]:c.addi a0, 16<br> [0x8000063e]:sd a0, 224(ra)<br>  |
|  58|[0x800033d8]<br>0x0001000000000010|- rs1_val == 281474976710656<br>                                                                                                                                     |[0x8000064a]:c.addi a0, 16<br> [0x8000064c]:sd a0, 232(ra)<br>  |
|  59|[0x800033e0]<br>0x0002000000000003|- rs1_val == 562949953421312<br>                                                                                                                                     |[0x80000658]:c.addi a0, 3<br> [0x8000065a]:sd a0, 240(ra)<br>   |
|  60|[0x800033e8]<br>0x0003FFFFFFFFFFE0|- rs1_val == 1125899906842624<br>                                                                                                                                    |[0x80000666]:c.addi a0, 32<br> [0x80000668]:sd a0, 248(ra)<br>  |
|  61|[0x800033f0]<br>0x0007FFFFFFFFFFEF|- rs1_val == 2251799813685248<br>                                                                                                                                    |[0x80000674]:c.addi a0, 47<br> [0x80000676]:sd a0, 256(ra)<br>  |
|  62|[0x800033f8]<br>0x000FFFFFFFFFFFEA|- rs1_val == 4503599627370496<br>                                                                                                                                    |[0x80000682]:c.addi a0, 42<br> [0x80000684]:sd a0, 264(ra)<br>  |
|  63|[0x80003400]<br>0x001FFFFFFFFFFFEA|- rs1_val == 9007199254740992<br>                                                                                                                                    |[0x80000690]:c.addi a0, 42<br> [0x80000692]:sd a0, 272(ra)<br>  |
|  64|[0x80003408]<br>0x0040000000000010|- rs1_val == 18014398509481984<br>                                                                                                                                   |[0x8000069e]:c.addi a0, 16<br> [0x800006a0]:sd a0, 280(ra)<br>  |
|  65|[0x80003410]<br>0x0080000000000008|- rs1_val == 36028797018963968<br>                                                                                                                                   |[0x800006ac]:c.addi a0, 8<br> [0x800006ae]:sd a0, 288(ra)<br>   |
|  66|[0x80003418]<br>0x00FFFFFFFFFFFFFC|- rs1_val == 72057594037927936<br>                                                                                                                                   |[0x800006ba]:c.addi a0, 60<br> [0x800006bc]:sd a0, 296(ra)<br>  |
|  67|[0x80003420]<br>0x01FFFFFFFFFFFFE0|- rs1_val == 144115188075855872<br>                                                                                                                                  |[0x800006c8]:c.addi a0, 32<br> [0x800006ca]:sd a0, 304(ra)<br>  |
|  68|[0x80003428]<br>0x07FFFFFFFFFFFFF8|- rs1_val == 576460752303423488<br>                                                                                                                                  |[0x800006d6]:c.addi a0, 56<br> [0x800006d8]:sd a0, 312(ra)<br>  |
|  69|[0x80003430]<br>0x0FFFFFFFFFFFFFF7|- rs1_val == 1152921504606846976<br>                                                                                                                                 |[0x800006e4]:c.addi a0, 55<br> [0x800006e6]:sd a0, 320(ra)<br>  |
|  70|[0x80003438]<br>0x2000000000000002|- rs1_val == 2305843009213693952<br>                                                                                                                                 |[0x800006f2]:c.addi a0, 2<br> [0x800006f4]:sd a0, 328(ra)<br>   |
|  71|[0x80003440]<br>0x4000000000000008|- rs1_val == 4611686018427387904<br>                                                                                                                                 |[0x80000700]:c.addi a0, 8<br> [0x80000702]:sd a0, 336(ra)<br>   |
|  72|[0x80003448]<br>0xFFF8000000000005|- rs1_val == -2251799813685249<br>                                                                                                                                   |[0x80000712]:c.addi a0, 6<br> [0x80000714]:sd a0, 344(ra)<br>   |
|  73|[0x80003450]<br>0xFFF0000000000000|- rs1_val == -4503599627370497<br>                                                                                                                                   |[0x80000724]:c.addi a0, 1<br> [0x80000726]:sd a0, 352(ra)<br>   |
|  74|[0x80003458]<br>0xFFE0000000000008|- rs1_val == -9007199254740993<br>                                                                                                                                   |[0x80000736]:c.addi a0, 9<br> [0x80000738]:sd a0, 360(ra)<br>   |
|  75|[0x80003460]<br>0xFFC0000000000003|- imm_val == 4<br> - rs1_val == -18014398509481985<br>                                                                                                               |[0x80000748]:c.addi a0, 4<br> [0x8000074a]:sd a0, 368(ra)<br>   |
|  76|[0x80003468]<br>0xFF80000000000005|- rs1_val == -36028797018963969<br>                                                                                                                                  |[0x8000075a]:c.addi a0, 6<br> [0x8000075c]:sd a0, 376(ra)<br>   |
|  77|[0x80003470]<br>0xFEFFFFFFFFFFFFF6|- rs1_val == -72057594037927937<br>                                                                                                                                  |[0x8000076c]:c.addi a0, 55<br> [0x8000076e]:sd a0, 384(ra)<br>  |
|  78|[0x80003478]<br>0xFDFFFFFFFFFFFFF8|- rs1_val == -144115188075855873<br>                                                                                                                                 |[0x8000077e]:c.addi a0, 57<br> [0x80000780]:sd a0, 392(ra)<br>  |
|  79|[0x80003480]<br>0xFBFFFFFFFFFFFFEF|- rs1_val == -288230376151711745<br>                                                                                                                                 |[0x80000790]:c.addi a0, 48<br> [0x80000792]:sd a0, 400(ra)<br>  |
|  80|[0x80003488]<br>0xF7FFFFFFFFFFFFF6|- rs1_val == -576460752303423489<br>                                                                                                                                 |[0x800007a2]:c.addi a0, 55<br> [0x800007a4]:sd a0, 408(ra)<br>  |
|  81|[0x80003490]<br>0xDFFFFFFFFFFFFFF7|- rs1_val == -2305843009213693953<br>                                                                                                                                |[0x800007b4]:c.addi a0, 56<br> [0x800007b6]:sd a0, 416(ra)<br>  |
|  82|[0x80003498]<br>0xBFFFFFFFFFFFFFDF|- rs1_val == -4611686018427387905<br>                                                                                                                                |[0x800007c6]:c.addi a0, 32<br> [0x800007c8]:sd a0, 424(ra)<br>  |
|  83|[0x800034a0]<br>0x555555555555554E|- rs1_val == 6148914691236517205<br>                                                                                                                                 |[0x800007ec]:c.addi a0, 57<br> [0x800007ee]:sd a0, 432(ra)<br>  |
|  84|[0x800034a8]<br>0xAAAAAAAAAAAAAAA3|- rs1_val == -6148914691236517206<br>                                                                                                                                |[0x80000812]:c.addi a0, 57<br> [0x80000814]:sd a0, 440(ra)<br>  |
|  85|[0x800034b0]<br>0xFFFFFFFEFFFFFFFD|- imm_val == -2<br> - rs1_val == -4294967297<br>                                                                                                                     |[0x80000824]:c.addi a0, 62<br> [0x80000826]:sd a0, 448(ra)<br>  |
|  86|[0x800034b8]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == -2<br>                                                                                                                                                  |[0x8000082e]:c.addi a0, 61<br> [0x80000830]:sd a0, 456(ra)<br>  |
|  87|[0x800034c0]<br>0x0000000000000005|- rs1_val == -3<br>                                                                                                                                                  |[0x80000838]:c.addi a0, 8<br> [0x8000083a]:sd a0, 464(ra)<br>   |
|  88|[0x800034c8]<br>0xFFFFFFFFFFFFFFFA|- rs1_val == -5<br>                                                                                                                                                  |[0x80000842]:c.addi a0, 63<br> [0x80000844]:sd a0, 472(ra)<br>  |
|  89|[0x800034d0]<br>0xFFFFFFFFFFFFFFDA|- rs1_val == -33<br>                                                                                                                                                 |[0x8000084c]:c.addi a0, 59<br> [0x8000084e]:sd a0, 480(ra)<br>  |
|  90|[0x800034d8]<br>0xFFFFFFFFFFFFFFBD|- rs1_val == -65<br>                                                                                                                                                 |[0x80000856]:c.addi a0, 62<br> [0x80000858]:sd a0, 488(ra)<br>  |
|  91|[0x800034e0]<br>0xFFFFFFFFFFFFFF6F|- rs1_val == -129<br>                                                                                                                                                |[0x80000860]:c.addi a0, 48<br> [0x80000862]:sd a0, 496(ra)<br>  |
|  92|[0x800034e8]<br>0xFFFFFFFFFFFFFEF7|- rs1_val == -257<br>                                                                                                                                                |[0x8000086a]:c.addi a0, 56<br> [0x8000086c]:sd a0, 504(ra)<br>  |
|  93|[0x800034f0]<br>0xFFFFFFFFFFFFFE07|- rs1_val == -513<br>                                                                                                                                                |[0x80000874]:c.addi a0, 8<br> [0x80000876]:sd a0, 512(ra)<br>   |
|  94|[0x800034f8]<br>0xFFFFFFFFFFFFFC00|- rs1_val == -1025<br>                                                                                                                                               |[0x8000087e]:c.addi a0, 1<br> [0x80000880]:sd a0, 520(ra)<br>   |
|  95|[0x80003500]<br>0xFFFFFFFFFFFFF7EF|- rs1_val == -2049<br>                                                                                                                                               |[0x8000088c]:c.addi a0, 48<br> [0x8000088e]:sd a0, 528(ra)<br>  |
|  96|[0x80003508]<br>0xFFFFFFFFFFFFEFEF|- rs1_val == -4097<br>                                                                                                                                               |[0x8000089a]:c.addi a0, 48<br> [0x8000089c]:sd a0, 536(ra)<br>  |
|  97|[0x80003510]<br>0xFFFFFFFFFFFFE014|- rs1_val == -8193<br>                                                                                                                                               |[0x800008a8]:c.addi a0, 21<br> [0x800008aa]:sd a0, 544(ra)<br>  |
|  98|[0x80003518]<br>0xFFFFFFFFFFFFBFF8|- rs1_val == -16385<br>                                                                                                                                              |[0x800008b6]:c.addi a0, 57<br> [0x800008b8]:sd a0, 552(ra)<br>  |
|  99|[0x80003520]<br>0xFFFFFFFFFFFF7FFB|- rs1_val == -32769<br>                                                                                                                                              |[0x800008c4]:c.addi a0, 60<br> [0x800008c6]:sd a0, 560(ra)<br>  |
| 100|[0x80003528]<br>0xFFFFFFFFFFFEFFFA|- rs1_val == -65537<br>                                                                                                                                              |[0x800008d2]:c.addi a0, 59<br> [0x800008d4]:sd a0, 568(ra)<br>  |
| 101|[0x80003530]<br>0xFFFFFFFFFFFDFFEE|- rs1_val == -131073<br>                                                                                                                                             |[0x800008e0]:c.addi a0, 47<br> [0x800008e2]:sd a0, 576(ra)<br>  |
| 102|[0x80003538]<br>0xFFFFFFFFFFFBFFFB|- rs1_val == -262145<br>                                                                                                                                             |[0x800008ee]:c.addi a0, 60<br> [0x800008f0]:sd a0, 584(ra)<br>  |
| 103|[0x80003540]<br>0xFFFFFFFFFFF7FFF8|- rs1_val == -524289<br>                                                                                                                                             |[0x800008fc]:c.addi a0, 57<br> [0x800008fe]:sd a0, 592(ra)<br>  |
| 104|[0x80003548]<br>0xFFFFFFFFFFF00003|- rs1_val == -1048577<br>                                                                                                                                            |[0x8000090a]:c.addi a0, 4<br> [0x8000090c]:sd a0, 600(ra)<br>   |
| 105|[0x80003550]<br>0xFFFFFFFFFFDFFFEF|- rs1_val == -2097153<br>                                                                                                                                            |[0x80000918]:c.addi a0, 48<br> [0x8000091a]:sd a0, 608(ra)<br>  |
| 106|[0x80003558]<br>0xFFFFFFFFFFBFFFFD|- rs1_val == -4194305<br>                                                                                                                                            |[0x80000926]:c.addi a0, 62<br> [0x80000928]:sd a0, 616(ra)<br>  |
| 107|[0x80003560]<br>0xFFFFFFFFFF800006|- rs1_val == -8388609<br>                                                                                                                                            |[0x80000934]:c.addi a0, 7<br> [0x80000936]:sd a0, 624(ra)<br>   |
| 108|[0x80003568]<br>0xFFFFFFFFFEFFFFF8|- rs1_val == -16777217<br>                                                                                                                                           |[0x80000942]:c.addi a0, 57<br> [0x80000944]:sd a0, 632(ra)<br>  |
| 109|[0x80003570]<br>0xFFFFFFFFFE000005|- rs1_val == -33554433<br>                                                                                                                                           |[0x80000950]:c.addi a0, 6<br> [0x80000952]:sd a0, 640(ra)<br>   |
| 110|[0x80003578]<br>0xFFFFFFFFFC000014|- rs1_val == -67108865<br>                                                                                                                                           |[0x8000095e]:c.addi a0, 21<br> [0x80000960]:sd a0, 648(ra)<br>  |
| 111|[0x80003580]<br>0xFFFFFFFFF8000005|- rs1_val == -134217729<br>                                                                                                                                          |[0x8000096c]:c.addi a0, 6<br> [0x8000096e]:sd a0, 656(ra)<br>   |
| 112|[0x80003588]<br>0xFFFFFFFFEFFFFFFB|- rs1_val == -268435457<br>                                                                                                                                          |[0x8000097a]:c.addi a0, 60<br> [0x8000097c]:sd a0, 664(ra)<br>  |
| 113|[0x80003590]<br>0xFFFFFFFFE0000008|- rs1_val == -536870913<br>                                                                                                                                          |[0x80000988]:c.addi a0, 9<br> [0x8000098a]:sd a0, 672(ra)<br>   |
| 114|[0x80003598]<br>0xFFFFFFFFC0000008|- rs1_val == -1073741825<br>                                                                                                                                         |[0x80000996]:c.addi a0, 9<br> [0x80000998]:sd a0, 680(ra)<br>   |
| 115|[0x800035a0]<br>0xFFFFFFFF80000008|- rs1_val == -2147483649<br>                                                                                                                                         |[0x800009a8]:c.addi a0, 9<br> [0x800009aa]:sd a0, 688(ra)<br>   |
| 116|[0x800035a8]<br>0xFFFFFFFDFFFFFFFF|- rs1_val == -8589934593<br>                                                                                                                                         |[0x800009ba]:c.addi.hint.a0<br> [0x800009bc]:sd a0, 696(ra)<br> |
| 117|[0x800035b0]<br>0xFFFFFFFBFFFFFFF9|- rs1_val == -17179869185<br>                                                                                                                                        |[0x800009cc]:c.addi a0, 58<br> [0x800009ce]:sd a0, 704(ra)<br>  |
| 118|[0x800035b8]<br>0xFFFFFFF7FFFFFFF5|- rs1_val == -34359738369<br>                                                                                                                                        |[0x800009de]:c.addi a0, 54<br> [0x800009e0]:sd a0, 712(ra)<br>  |
| 119|[0x800035c0]<br>0xFFFFFFF00000001E|- rs1_val == -68719476737<br>                                                                                                                                        |[0x800009f0]:c.addi a0, 31<br> [0x800009f2]:sd a0, 720(ra)<br>  |
| 120|[0x800035c8]<br>0xFFFFFFE000000004|- rs1_val == -137438953473<br>                                                                                                                                       |[0x80000a02]:c.addi a0, 5<br> [0x80000a04]:sd a0, 728(ra)<br>   |
| 121|[0x800035d0]<br>0xFFFFFF7FFFFFFFF6|- rs1_val == -549755813889<br>                                                                                                                                       |[0x80000a14]:c.addi a0, 55<br> [0x80000a16]:sd a0, 736(ra)<br>  |
| 122|[0x800035d8]<br>0xFFFFFF0000000000|- rs1_val == -1099511627777<br>                                                                                                                                      |[0x80000a26]:c.addi a0, 1<br> [0x80000a28]:sd a0, 744(ra)<br>   |
| 123|[0x800035e0]<br>0xFFFFFE000000000E|- rs1_val == -2199023255553<br>                                                                                                                                      |[0x80000a38]:c.addi a0, 15<br> [0x80000a3a]:sd a0, 752(ra)<br>  |
| 124|[0x800035e8]<br>0xFFFFFBFFFFFFFFFA|- rs1_val == -4398046511105<br>                                                                                                                                      |[0x80000a4a]:c.addi a0, 59<br> [0x80000a4c]:sd a0, 760(ra)<br>  |
| 125|[0x800035f0]<br>0xFFFFF7FFFFFFFFEE|- rs1_val == -8796093022209<br>                                                                                                                                      |[0x80000a5c]:c.addi a0, 47<br> [0x80000a5e]:sd a0, 768(ra)<br>  |
| 126|[0x800035f8]<br>0xFFFFF0000000000E|- rs1_val == -17592186044417<br>                                                                                                                                     |[0x80000a6e]:c.addi a0, 15<br> [0x80000a70]:sd a0, 776(ra)<br>  |
| 127|[0x80003600]<br>0xFFFFE00000000005|- rs1_val == -35184372088833<br>                                                                                                                                     |[0x80000a80]:c.addi a0, 6<br> [0x80000a82]:sd a0, 784(ra)<br>   |
| 128|[0x80003608]<br>0xFFFFC00000000000|- rs1_val == -70368744177665<br>                                                                                                                                     |[0x80000a92]:c.addi a0, 1<br> [0x80000a94]:sd a0, 792(ra)<br>   |
| 129|[0x80003610]<br>0xFFFF7FFFFFFFFFDF|- rs1_val == -140737488355329<br>                                                                                                                                    |[0x80000aa4]:c.addi a0, 32<br> [0x80000aa6]:sd a0, 800(ra)<br>  |
| 130|[0x80003618]<br>0xFFFEFFFFFFFFFFEF|- rs1_val == -281474976710657<br>                                                                                                                                    |[0x80000ab6]:c.addi a0, 48<br> [0x80000ab8]:sd a0, 808(ra)<br>  |
| 131|[0x80003620]<br>0xFFFDFFFFFFFFFFFE|- rs1_val == -562949953421313<br>                                                                                                                                    |[0x80000ac8]:c.addi a0, 63<br> [0x80000aca]:sd a0, 816(ra)<br>  |
| 132|[0x80003628]<br>0xFFFC000000000007|- rs1_val == -1125899906842625<br>                                                                                                                                   |[0x80000ada]:c.addi a0, 8<br> [0x80000adc]:sd a0, 824(ra)<br>   |
