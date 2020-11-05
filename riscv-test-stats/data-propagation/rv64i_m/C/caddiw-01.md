
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000af0')]      |
| SIG_REGION                | [('0x80003208', '0x80003630', '133 dwords')]      |
| COV_LABELS                | caddiw      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/caddiw-01.S/caddiw-01.S    |
| Total Number of coverpoints| 188     |
| Total Coverpoints Hit     | 188      |
| Total Signature Updates   | 133      |
| STAT1                     | 133      |
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

|s.no|            signature             |                                                                             coverpoints                                                                              |                               code                               |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------|
|   1|[0x80003208]<br>0xFFFFFFFFFFFFFFF6|- opcode : c.addiw<br> - rd : x9<br> - rs1_val != imm_val<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br> |[0x800003a0]:c.addiw s1, 54<br> [0x800003a2]:sd s1, 0(t0)<br>     |
|   2|[0x80003210]<br>0xFFFFFFFFFFFFFFF6|- rd : x8<br> - rs1_val == 0<br>                                                                                                                                      |[0x800003aa]:c.addiw fp, 54<br> [0x800003ac]:sd fp, 8(t0)<br>     |
|   3|[0x80003218]<br>0xFFFFFFFFFFFFFFFA|- rd : x15<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == (2**(xlen-1)-1)<br> - imm_val == -5<br> - rs1_val == 9223372036854775807<br>                            |[0x800003bc]:c.addiw a5, 59<br> [0x800003be]:sd a5, 16(t0)<br>    |
|   4|[0x80003220]<br>0x0000000000000006|- rd : x16<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 1<br>                                                                                                   |[0x800003c6]:c.addiw a6, 5<br> [0x800003c8]:sd a6, 24(t0)<br>     |
|   5|[0x80003228]<br>0xFFFFFFFFFFFF7FDF|- rd : x31<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> - rs1_val == -32769<br>                                                                              |[0x800003d4]:c.addiw t6, 32<br> [0x800003d6]:sd t6, 32(t0)<br>    |
|   6|[0x80003230]<br>0x0000000000000001|- rd : x6<br> - imm_val == 0<br>                                                                                                                                      |[0x800003de]:c.addiw t1, 0<br> [0x800003e0]:sd t1, 40(t0)<br>     |
|   7|[0x80003238]<br>0x000000000000001E|- rd : x4<br> - rs1_val < 0 and imm_val > 0<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br> - rs1_val == -1099511627777<br>                                     |[0x800003f0]:c.addiw tp, 31<br> [0x800003f2]:sd tp, 48(t0)<br>    |
|   8|[0x80003240]<br>0x0000000000000000|- rd : x19<br> - imm_val == 1<br> - rs1_val == -18014398509481985<br>                                                                                                 |[0x80000402]:c.addiw s3, 1<br> [0x80000404]:sd s3, 56(t0)<br>     |
|   9|[0x80003248]<br>0xFFFFFFFFFFFFFFDE|- rd : x18<br> - rs1_val == imm_val<br> - imm_val == -17<br> - rs1_val == -17<br>                                                                                     |[0x8000040c]:c.addiw s2, 47<br> [0x8000040e]:sd s2, 64(t0)<br>    |
|  10|[0x80003250]<br>0x000000000000000A|- rd : x1<br> - imm_val == 8<br> - rs1_val == 2<br>                                                                                                                   |[0x80000416]:c.addiw ra, 8<br> [0x80000418]:sd ra, 72(t0)<br>     |
|  11|[0x80003258]<br>0x0000000000000003|- rd : x12<br> - rs1_val == 4<br>                                                                                                                                     |[0x80000420]:c.addiw a2, 63<br> [0x80000422]:sd a2, 80(t0)<br>    |
|  12|[0x80003260]<br>0x0000000000000004|- rd : x26<br> - rs1_val == 8<br>                                                                                                                                     |[0x8000042a]:c.addiw s10, 60<br> [0x8000042c]:sd s10, 88(t0)<br>  |
|  13|[0x80003268]<br>0x000000000000000F|- rd : x25<br> - rs1_val == 16<br>                                                                                                                                    |[0x80000434]:c.addiw s9, 63<br> [0x80000436]:sd s9, 96(t0)<br>    |
|  14|[0x80003270]<br>0x0000000000000018|- rd : x27<br> - rs1_val == 32<br>                                                                                                                                    |[0x8000043e]:c.addiw s11, 56<br> [0x80000440]:sd s11, 104(t0)<br> |
|  15|[0x80003278]<br>0x000000000000002F|- rd : x10<br> - rs1_val == 64<br>                                                                                                                                    |[0x80000448]:c.addiw a0, 47<br> [0x8000044a]:sd a0, 112(t0)<br>   |
|  16|[0x80003280]<br>0x000000000000007E|- rd : x14<br> - imm_val == -2<br> - rs1_val == 128<br>                                                                                                               |[0x80000452]:c.addiw a4, 62<br> [0x80000454]:sd a4, 120(t0)<br>   |
|  17|[0x80003288]<br>0x00000000000000EF|- rd : x23<br> - rs1_val == 256<br>                                                                                                                                   |[0x8000045c]:c.addiw s7, 47<br> [0x8000045e]:sd s7, 128(t0)<br>   |
|  18|[0x80003290]<br>0x0000000000000203|- rd : x11<br> - rs1_val == 512<br>                                                                                                                                   |[0x80000466]:c.addiw a1, 3<br> [0x80000468]:sd a1, 136(t0)<br>    |
|  19|[0x80003298]<br>0x00000000000003FE|- rd : x7<br> - rs1_val == 1024<br>                                                                                                                                   |[0x80000470]:c.addiw t2, 62<br> [0x80000472]:sd t2, 144(t0)<br>   |
|  20|[0x800032a0]<br>0x0000000000000810|- rd : x20<br> - imm_val == 16<br> - rs1_val == 2048<br>                                                                                                              |[0x8000047e]:c.addiw s4, 16<br> [0x80000480]:sd s4, 152(t0)<br>   |
|  21|[0x800032a8]<br>0x0000000000000FFB|- rd : x13<br> - rs1_val == 4096<br>                                                                                                                                  |[0x80000488]:c.addiw a3, 59<br> [0x8000048a]:sd a3, 160(t0)<br>   |
|  22|[0x800032b0]<br>0x0000000000002007|- rd : x29<br> - rs1_val == 8192<br>                                                                                                                                  |[0x80000492]:c.addiw t4, 7<br> [0x80000494]:sd t4, 168(t0)<br>    |
|  23|[0x800032b8]<br>0x0000000000004002|- rd : x2<br> - imm_val == 2<br> - rs1_val == 16384<br>                                                                                                               |[0x8000049c]:c.addiw sp, 2<br> [0x8000049e]:sd sp, 176(t0)<br>    |
|  24|[0x800032c0]<br>0x0000000000008003|- rd : x30<br> - rs1_val == 32768<br>                                                                                                                                 |[0x800004a6]:c.addiw t5, 3<br> [0x800004a8]:sd t5, 184(t0)<br>    |
|  25|[0x800032c8]<br>0x000000000000FFF0|- rd : x24<br> - rs1_val == 65536<br>                                                                                                                                 |[0x800004b0]:c.addiw s8, 48<br> [0x800004b2]:sd s8, 192(t0)<br>   |
|  26|[0x800032d0]<br>0x000000000001FFF9|- rd : x28<br> - rs1_val == 131072<br>                                                                                                                                |[0x800004ba]:c.addiw t3, 57<br> [0x800004bc]:sd t3, 200(t0)<br>   |
|  27|[0x800032d8]<br>0x000000000003FFF6|- rd : x3<br> - rs1_val == 262144<br>                                                                                                                                 |[0x800004c4]:c.addiw gp, 54<br> [0x800004c6]:sd gp, 208(t0)<br>   |
|  28|[0x800032e0]<br>0x000000000007FFF6|- rd : x22<br> - rs1_val == 524288<br>                                                                                                                                |[0x800004ce]:c.addiw s6, 54<br> [0x800004d0]:sd s6, 216(t0)<br>   |
|  29|[0x800032e8]<br>0x0000000000100001|- rd : x21<br> - rs1_val == 1048576<br>                                                                                                                               |[0x800004e0]:c.addiw s5, 1<br> [0x800004e2]:sd s5, 0(ra)<br>      |
|  30|[0x800032f0]<br>0x00000000001FFFEA|- rd : x17<br> - imm_val == -22<br> - rs1_val == 2097152<br>                                                                                                          |[0x800004ea]:c.addiw a7, 42<br> [0x800004ec]:sd a7, 8(ra)<br>     |
|  31|[0x800032f8]<br>0x0000000000400003|- rd : x5<br> - rs1_val == 4194304<br>                                                                                                                                |[0x800004f4]:c.addiw t0, 3<br> [0x800004f6]:sd t0, 16(ra)<br>     |
|  32|[0x80003300]<br>0x00000000007FFFFF|- rs1_val == 8388608<br>                                                                                                                                              |[0x800004fe]:c.addiw a0, 63<br> [0x80000500]:sd a0, 24(ra)<br>    |
|  33|[0x80003308]<br>0x0000000001000005|- rs1_val == 16777216<br>                                                                                                                                             |[0x80000508]:c.addiw a0, 5<br> [0x8000050a]:sd a0, 32(ra)<br>     |
|  34|[0x80003310]<br>0x0000000002000000|- rs1_val == 33554432<br>                                                                                                                                             |[0x80000512]:c.addiw a0, 0<br> [0x80000514]:sd a0, 40(ra)<br>     |
|  35|[0x80003318]<br>0x000000000400001F|- rs1_val == 67108864<br>                                                                                                                                             |[0x8000051c]:c.addiw a0, 31<br> [0x8000051e]:sd a0, 48(ra)<br>    |
|  36|[0x80003320]<br>0x0000000007FFFFF0|- rs1_val == 134217728<br>                                                                                                                                            |[0x80000526]:c.addiw a0, 48<br> [0x80000528]:sd a0, 56(ra)<br>    |
|  37|[0x80003328]<br>0x000000000FFFFFF7|- imm_val == -9<br> - rs1_val == 268435456<br>                                                                                                                        |[0x80000530]:c.addiw a0, 55<br> [0x80000532]:sd a0, 64(ra)<br>    |
|  38|[0x80003330]<br>0x0000000020000000|- rs1_val == 536870912<br>                                                                                                                                            |[0x8000053a]:c.addiw a0, 0<br> [0x8000053c]:sd a0, 72(ra)<br>     |
|  39|[0x80003338]<br>0x000000003FFFFFF9|- rs1_val == 1073741824<br>                                                                                                                                           |[0x80000544]:c.addiw a0, 57<br> [0x80000546]:sd a0, 80(ra)<br>    |
|  40|[0x80003340]<br>0x000000007FFFFFF0|- rs1_val == 2147483648<br>                                                                                                                                           |[0x80000552]:c.addiw a0, 48<br> [0x80000554]:sd a0, 88(ra)<br>    |
|  41|[0x80003348]<br>0x0000000000000007|- rs1_val == 4294967296<br>                                                                                                                                           |[0x80000560]:c.addiw a0, 7<br> [0x80000562]:sd a0, 96(ra)<br>     |
|  42|[0x80003350]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == 8589934592<br>                                                                                                                                           |[0x8000056e]:c.addiw a0, 59<br> [0x80000570]:sd a0, 104(ra)<br>   |
|  43|[0x80003358]<br>0x0000000000000004|- imm_val == 4<br> - rs1_val == 17179869184<br>                                                                                                                       |[0x8000057c]:c.addiw a0, 4<br> [0x8000057e]:sd a0, 112(ra)<br>    |
|  44|[0x80003360]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == 34359738368<br>                                                                                                                                          |[0x8000058a]:c.addiw a0, 55<br> [0x8000058c]:sd a0, 120(ra)<br>   |
|  45|[0x80003368]<br>0x0000000000000004|- rs1_val == 68719476736<br>                                                                                                                                          |[0x80000598]:c.addiw a0, 4<br> [0x8000059a]:sd a0, 128(ra)<br>    |
|  46|[0x80003370]<br>0x0000000000000008|- rs1_val == 137438953472<br>                                                                                                                                         |[0x800005a6]:c.addiw a0, 8<br> [0x800005a8]:sd a0, 136(ra)<br>    |
|  47|[0x80003378]<br>0x000000000000000F|- rs1_val == 274877906944<br>                                                                                                                                         |[0x800005b4]:c.addiw a0, 15<br> [0x800005b6]:sd a0, 144(ra)<br>   |
|  48|[0x80003380]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == 549755813888<br>                                                                                                                                         |[0x800005c2]:c.addiw a0, 59<br> [0x800005c4]:sd a0, 152(ra)<br>   |
|  49|[0x80003388]<br>0x0000000000000004|- rs1_val == 1099511627776<br>                                                                                                                                        |[0x800005d0]:c.addiw a0, 4<br> [0x800005d2]:sd a0, 160(ra)<br>    |
|  50|[0x80003390]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == 2199023255552<br>                                                                                                                                        |[0x800005de]:c.addiw a0, 63<br> [0x800005e0]:sd a0, 168(ra)<br>   |
|  51|[0x80003398]<br>0x0000000000000003|- rs1_val == 4398046511104<br>                                                                                                                                        |[0x800005ec]:c.addiw a0, 3<br> [0x800005ee]:sd a0, 176(ra)<br>    |
|  52|[0x800033a0]<br>0xFFFFFFFFFFFFFFE0|- rs1_val == 8796093022208<br>                                                                                                                                        |[0x800005fa]:c.addiw a0, 32<br> [0x800005fc]:sd a0, 184(ra)<br>   |
|  53|[0x800033a8]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == 17592186044416<br>                                                                                                                                       |[0x80000608]:c.addiw a0, 59<br> [0x8000060a]:sd a0, 192(ra)<br>   |
|  54|[0x800033b0]<br>0x0000000000000008|- rs1_val == 35184372088832<br>                                                                                                                                       |[0x80000616]:c.addiw a0, 8<br> [0x80000618]:sd a0, 200(ra)<br>    |
|  55|[0x800033b8]<br>0xFFFFFFFFFFFFFFFA|- rs1_val == 70368744177664<br>                                                                                                                                       |[0x80000624]:c.addiw a0, 58<br> [0x80000626]:sd a0, 208(ra)<br>   |
|  56|[0x800033c0]<br>0x0000000000000001|- rs1_val == 140737488355328<br>                                                                                                                                      |[0x80000632]:c.addiw a0, 1<br> [0x80000634]:sd a0, 216(ra)<br>    |
|  57|[0x800033c8]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == 281474976710656<br>                                                                                                                                      |[0x80000640]:c.addiw a0, 60<br> [0x80000642]:sd a0, 224(ra)<br>   |
|  58|[0x800033d0]<br>0xFFFFFFFFFFFFFFFD|- imm_val == -3<br> - rs1_val == 562949953421312<br>                                                                                                                  |[0x8000064e]:c.addiw a0, 61<br> [0x80000650]:sd a0, 232(ra)<br>   |
|  59|[0x800033d8]<br>0x000000000000001F|- rs1_val == 1125899906842624<br>                                                                                                                                     |[0x8000065c]:c.addiw a0, 31<br> [0x8000065e]:sd a0, 240(ra)<br>   |
|  60|[0x800033e0]<br>0xFFFFFFFFFFFFFFE0|- rs1_val == 2251799813685248<br>                                                                                                                                     |[0x8000066a]:c.addiw a0, 32<br> [0x8000066c]:sd a0, 248(ra)<br>   |
|  61|[0x800033e8]<br>0x0000000000000009|- rs1_val == 4503599627370496<br>                                                                                                                                     |[0x80000678]:c.addiw a0, 9<br> [0x8000067a]:sd a0, 256(ra)<br>    |
|  62|[0x800033f0]<br>0x0000000000000004|- rs1_val == 9007199254740992<br>                                                                                                                                     |[0x80000686]:c.addiw a0, 4<br> [0x80000688]:sd a0, 264(ra)<br>    |
|  63|[0x800033f8]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == 18014398509481984<br>                                                                                                                                    |[0x80000694]:c.addiw a0, 59<br> [0x80000696]:sd a0, 272(ra)<br>   |
|  64|[0x80003400]<br>0xFFFFFFFFFFFFFFEF|- rs1_val == 36028797018963968<br>                                                                                                                                    |[0x800006a2]:c.addiw a0, 47<br> [0x800006a4]:sd a0, 280(ra)<br>   |
|  65|[0x80003408]<br>0xFFFFFFFFFFFFFFE0|- rs1_val == 72057594037927936<br>                                                                                                                                    |[0x800006b0]:c.addiw a0, 32<br> [0x800006b2]:sd a0, 288(ra)<br>   |
|  66|[0x80003410]<br>0x0000000000000001|- rs1_val == 144115188075855872<br>                                                                                                                                   |[0x800006be]:c.addiw a0, 1<br> [0x800006c0]:sd a0, 296(ra)<br>    |
|  67|[0x80003418]<br>0xFFFFFFFFFFFFFFFA|- rs1_val == 288230376151711744<br>                                                                                                                                   |[0x800006cc]:c.addiw a0, 58<br> [0x800006ce]:sd a0, 304(ra)<br>   |
|  68|[0x80003420]<br>0x0000000000000003|- rs1_val == 576460752303423488<br>                                                                                                                                   |[0x800006da]:c.addiw a0, 3<br> [0x800006dc]:sd a0, 312(ra)<br>    |
|  69|[0x80003428]<br>0x0000000000000009|- rs1_val == 1152921504606846976<br>                                                                                                                                  |[0x800006e8]:c.addiw a0, 9<br> [0x800006ea]:sd a0, 320(ra)<br>    |
|  70|[0x80003430]<br>0xFFFFFFFFFFFFFFFA|- rs1_val == 2305843009213693952<br>                                                                                                                                  |[0x800006f6]:c.addiw a0, 58<br> [0x800006f8]:sd a0, 328(ra)<br>   |
|  71|[0x80003438]<br>0xFFFFFFFFFFFFFFFA|- rs1_val == -2251799813685249<br>                                                                                                                                    |[0x80000708]:c.addiw a0, 59<br> [0x8000070a]:sd a0, 336(ra)<br>   |
|  72|[0x80003440]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == -4503599627370497<br>                                                                                                                                    |[0x8000071a]:c.addiw a0, 56<br> [0x8000071c]:sd a0, 344(ra)<br>   |
|  73|[0x80003448]<br>0xFFFFFFFFFFFFFFF5|- rs1_val == -9007199254740993<br>                                                                                                                                    |[0x8000072c]:c.addiw a0, 54<br> [0x8000072e]:sd a0, 352(ra)<br>   |
|  74|[0x80003450]<br>0xFFFFFFFFFFFFFFDF|- rs1_val == -36028797018963969<br>                                                                                                                                   |[0x8000073e]:c.addiw a0, 32<br> [0x80000740]:sd a0, 360(ra)<br>   |
|  75|[0x80003458]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == -72057594037927937<br>                                                                                                                                   |[0x80000750]:c.addiw a0, 61<br> [0x80000752]:sd a0, 368(ra)<br>   |
|  76|[0x80003460]<br>0x0000000000000007|- rs1_val == -144115188075855873<br>                                                                                                                                  |[0x80000762]:c.addiw a0, 8<br> [0x80000764]:sd a0, 376(ra)<br>    |
|  77|[0x80003468]<br>0xFFFFFFFFFFFFFFF5|- rs1_val == -288230376151711745<br>                                                                                                                                  |[0x80000774]:c.addiw a0, 54<br> [0x80000776]:sd a0, 384(ra)<br>   |
|  78|[0x80003470]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -576460752303423489<br>                                                                                                                                  |[0x80000786]:c.addiw a0, 63<br> [0x80000788]:sd a0, 392(ra)<br>   |
|  79|[0x80003478]<br>0xFFFFFFFFFFFFFFFD|- rs1_val == -1152921504606846977<br>                                                                                                                                 |[0x80000798]:c.addiw a0, 62<br> [0x8000079a]:sd a0, 400(ra)<br>   |
|  80|[0x80003480]<br>0xFFFFFFFFFFFFFFFD|- rs1_val == -2305843009213693953<br>                                                                                                                                 |[0x800007aa]:c.addiw a0, 62<br> [0x800007ac]:sd a0, 408(ra)<br>   |
|  81|[0x80003488]<br>0x0000000000000003|- rs1_val == -4611686018427387905<br>                                                                                                                                 |[0x800007bc]:c.addiw a0, 4<br> [0x800007be]:sd a0, 416(ra)<br>    |
|  82|[0x80003490]<br>0x000000005555555D|- rs1_val == 6148914691236517205<br>                                                                                                                                  |[0x800007e2]:c.addiw a0, 8<br> [0x800007e4]:sd a0, 424(ra)<br>    |
|  83|[0x80003498]<br>0xFFFFFFFFAAAAAAAB|- rs1_val == -6148914691236517206<br>                                                                                                                                 |[0x80000808]:c.addiw a0, 1<br> [0x8000080a]:sd a0, 432(ra)<br>    |
|  84|[0x800034a0]<br>0x000000000000001C|- imm_val == 21<br>                                                                                                                                                   |[0x80000812]:c.addiw a0, 21<br> [0x80000814]:sd a0, 440(ra)<br>   |
|  85|[0x800034a8]<br>0xFFFFFFFFFFFFFFFA|- rs1_val == 4611686018427387904<br>                                                                                                                                  |[0x80000820]:c.addiw a0, 58<br> [0x80000822]:sd a0, 448(ra)<br>   |
|  86|[0x800034b0]<br>0x0000000000000001|- rs1_val == -2<br>                                                                                                                                                   |[0x8000082a]:c.addiw a0, 3<br> [0x8000082c]:sd a0, 456(ra)<br>    |
|  87|[0x800034b8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -3<br>                                                                                                                                                   |[0x80000834]:c.addiw a0, 2<br> [0x80000836]:sd a0, 464(ra)<br>    |
|  88|[0x800034c0]<br>0xFFFFFFFFFFFFFFF3|- rs1_val == -5<br>                                                                                                                                                   |[0x8000083e]:c.addiw a0, 56<br> [0x80000840]:sd a0, 472(ra)<br>   |
|  89|[0x800034c8]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == -9<br>                                                                                                                                                   |[0x80000848]:c.addiw a0, 0<br> [0x8000084a]:sd a0, 480(ra)<br>    |
|  90|[0x800034d0]<br>0xFFFFFFFFFFFFFFFE|- rs1_val == -33<br>                                                                                                                                                  |[0x80000852]:c.addiw a0, 31<br> [0x80000854]:sd a0, 488(ra)<br>   |
|  91|[0x800034d8]<br>0xFFFFFFFFFFFFFFA9|- rs1_val == -65<br>                                                                                                                                                  |[0x8000085c]:c.addiw a0, 42<br> [0x8000085e]:sd a0, 496(ra)<br>   |
|  92|[0x800034e0]<br>0xFFFFFFFFFFFFFF7D|- rs1_val == -129<br>                                                                                                                                                 |[0x80000866]:c.addiw a0, 62<br> [0x80000868]:sd a0, 504(ra)<br>   |
|  93|[0x800034e8]<br>0xFFFFFFFFFFFFFF04|- rs1_val == -257<br>                                                                                                                                                 |[0x80000870]:c.addiw a0, 5<br> [0x80000872]:sd a0, 512(ra)<br>    |
|  94|[0x800034f0]<br>0xFFFFFFFFFFFFFE0E|- rs1_val == -513<br>                                                                                                                                                 |[0x8000087a]:c.addiw a0, 15<br> [0x8000087c]:sd a0, 520(ra)<br>   |
|  95|[0x800034f8]<br>0xFFFFFFFFFFFFFC03|- rs1_val == -1025<br>                                                                                                                                                |[0x80000884]:c.addiw a0, 4<br> [0x80000886]:sd a0, 528(ra)<br>    |
|  96|[0x80003500]<br>0xFFFFFFFFFFFFF80F|- rs1_val == -2049<br>                                                                                                                                                |[0x80000892]:c.addiw a0, 16<br> [0x80000894]:sd a0, 536(ra)<br>   |
|  97|[0x80003508]<br>0xFFFFFFFFFFFFEFDF|- rs1_val == -4097<br>                                                                                                                                                |[0x800008a0]:c.addiw a0, 32<br> [0x800008a2]:sd a0, 544(ra)<br>   |
|  98|[0x80003510]<br>0xFFFFFFFFFFFFE000|- rs1_val == -8193<br>                                                                                                                                                |[0x800008ae]:c.addiw a0, 1<br> [0x800008b0]:sd a0, 552(ra)<br>    |
|  99|[0x80003518]<br>0xFFFFFFFFFFFFC006|- rs1_val == -16385<br>                                                                                                                                               |[0x800008bc]:c.addiw a0, 7<br> [0x800008be]:sd a0, 560(ra)<br>    |
| 100|[0x80003520]<br>0xFFFFFFFFFFFEFFFE|- rs1_val == -65537<br>                                                                                                                                               |[0x800008ca]:c.addiw a0, 63<br> [0x800008cc]:sd a0, 568(ra)<br>   |
| 101|[0x80003528]<br>0xFFFFFFFFFFFDFFFE|- rs1_val == -131073<br>                                                                                                                                              |[0x800008d8]:c.addiw a0, 63<br> [0x800008da]:sd a0, 576(ra)<br>   |
| 102|[0x80003530]<br>0xFFFFFFFFFFFBFFEE|- rs1_val == -262145<br>                                                                                                                                              |[0x800008e6]:c.addiw a0, 47<br> [0x800008e8]:sd a0, 584(ra)<br>   |
| 103|[0x80003538]<br>0xFFFFFFFFFFF80014|- rs1_val == -524289<br>                                                                                                                                              |[0x800008f4]:c.addiw a0, 21<br> [0x800008f6]:sd a0, 592(ra)<br>   |
| 104|[0x80003540]<br>0xFFFFFFFFFFEFFFFC|- rs1_val == -1048577<br>                                                                                                                                             |[0x80000902]:c.addiw a0, 61<br> [0x80000904]:sd a0, 600(ra)<br>   |
| 105|[0x80003548]<br>0xFFFFFFFFFFDFFFFE|- rs1_val == -2097153<br>                                                                                                                                             |[0x80000910]:c.addiw a0, 63<br> [0x80000912]:sd a0, 608(ra)<br>   |
| 106|[0x80003550]<br>0xFFFFFFFFFFBFFFEF|- rs1_val == -4194305<br>                                                                                                                                             |[0x8000091e]:c.addiw a0, 48<br> [0x80000920]:sd a0, 616(ra)<br>   |
| 107|[0x80003558]<br>0xFFFFFFFFFF80001E|- rs1_val == -8388609<br>                                                                                                                                             |[0x8000092c]:c.addiw a0, 31<br> [0x8000092e]:sd a0, 624(ra)<br>   |
| 108|[0x80003560]<br>0xFFFFFFFFFEFFFFFE|- rs1_val == -16777217<br>                                                                                                                                            |[0x8000093a]:c.addiw a0, 63<br> [0x8000093c]:sd a0, 632(ra)<br>   |
| 109|[0x80003568]<br>0xFFFFFFFFFE000002|- rs1_val == -33554433<br>                                                                                                                                            |[0x80000948]:c.addiw a0, 3<br> [0x8000094a]:sd a0, 640(ra)<br>    |
| 110|[0x80003570]<br>0xFFFFFFFFFBFFFFF8|- rs1_val == -67108865<br>                                                                                                                                            |[0x80000956]:c.addiw a0, 57<br> [0x80000958]:sd a0, 648(ra)<br>   |
| 111|[0x80003578]<br>0xFFFFFFFFF7FFFFF9|- rs1_val == -134217729<br>                                                                                                                                           |[0x80000964]:c.addiw a0, 58<br> [0x80000966]:sd a0, 656(ra)<br>   |
| 112|[0x80003580]<br>0xFFFFFFFFF000000F|- rs1_val == -268435457<br>                                                                                                                                           |[0x80000972]:c.addiw a0, 16<br> [0x80000974]:sd a0, 664(ra)<br>   |
| 113|[0x80003588]<br>0xFFFFFFFFDFFFFFFA|- rs1_val == -536870913<br>                                                                                                                                           |[0x80000980]:c.addiw a0, 59<br> [0x80000982]:sd a0, 672(ra)<br>   |
| 114|[0x80003590]<br>0xFFFFFFFFBFFFFFF8|- rs1_val == -1073741825<br>                                                                                                                                          |[0x8000098e]:c.addiw a0, 57<br> [0x80000990]:sd a0, 680(ra)<br>   |
| 115|[0x80003598]<br>0xFFFFFFFF80000002|- rs1_val == -2147483649<br>                                                                                                                                          |[0x800009a0]:c.addiw a0, 3<br> [0x800009a2]:sd a0, 688(ra)<br>    |
| 116|[0x800035a0]<br>0x0000000000000003|- rs1_val == -4294967297<br>                                                                                                                                          |[0x800009b2]:c.addiw a0, 4<br> [0x800009b4]:sd a0, 696(ra)<br>    |
| 117|[0x800035a8]<br>0x0000000000000008|- rs1_val == -8589934593<br>                                                                                                                                          |[0x800009c4]:c.addiw a0, 9<br> [0x800009c6]:sd a0, 704(ra)<br>    |
| 118|[0x800035b0]<br>0x0000000000000014|- rs1_val == -17179869185<br>                                                                                                                                         |[0x800009d6]:c.addiw a0, 21<br> [0x800009d8]:sd a0, 712(ra)<br>   |
| 119|[0x800035b8]<br>0xFFFFFFFFFFFFFFF9|- rs1_val == -34359738369<br>                                                                                                                                         |[0x800009e8]:c.addiw a0, 58<br> [0x800009ea]:sd a0, 720(ra)<br>   |
| 120|[0x800035c0]<br>0xFFFFFFFFFFFFFFFD|- rs1_val == -68719476737<br>                                                                                                                                         |[0x800009fa]:c.addiw a0, 62<br> [0x800009fc]:sd a0, 728(ra)<br>   |
| 121|[0x800035c8]<br>0xFFFFFFFFFFFFFFEF|- rs1_val == -137438953473<br>                                                                                                                                        |[0x80000a0c]:c.addiw a0, 48<br> [0x80000a0e]:sd a0, 736(ra)<br>   |
| 122|[0x800035d0]<br>0xFFFFFFFFFFFFFFEF|- rs1_val == -274877906945<br>                                                                                                                                        |[0x80000a1e]:c.addiw a0, 48<br> [0x80000a20]:sd a0, 744(ra)<br>   |
| 123|[0x800035d8]<br>0x0000000000000014|- rs1_val == -549755813889<br>                                                                                                                                        |[0x80000a30]:c.addiw a0, 21<br> [0x80000a32]:sd a0, 752(ra)<br>   |
| 124|[0x800035e0]<br>0x0000000000000003|- rs1_val == -2199023255553<br>                                                                                                                                       |[0x80000a42]:c.addiw a0, 4<br> [0x80000a44]:sd a0, 760(ra)<br>    |
| 125|[0x800035e8]<br>0xFFFFFFFFFFFFFFF9|- rs1_val == -4398046511105<br>                                                                                                                                       |[0x80000a54]:c.addiw a0, 58<br> [0x80000a56]:sd a0, 768(ra)<br>   |
| 126|[0x800035f0]<br>0x000000000000001E|- rs1_val == -8796093022209<br>                                                                                                                                       |[0x80000a66]:c.addiw a0, 31<br> [0x80000a68]:sd a0, 776(ra)<br>   |
| 127|[0x800035f8]<br>0x0000000000000000|- rs1_val == -17592186044417<br>                                                                                                                                      |[0x80000a78]:c.addiw a0, 1<br> [0x80000a7a]:sd a0, 784(ra)<br>    |
| 128|[0x80003600]<br>0xFFFFFFFFFFFFFFF5|- rs1_val == -35184372088833<br>                                                                                                                                      |[0x80000a8a]:c.addiw a0, 54<br> [0x80000a8c]:sd a0, 792(ra)<br>   |
| 129|[0x80003608]<br>0xFFFFFFFFFFFFFFFA|- rs1_val == -70368744177665<br>                                                                                                                                      |[0x80000a9c]:c.addiw a0, 59<br> [0x80000a9e]:sd a0, 800(ra)<br>   |
| 130|[0x80003610]<br>0x0000000000000006|- rs1_val == -140737488355329<br>                                                                                                                                     |[0x80000aae]:c.addiw a0, 7<br> [0x80000ab0]:sd a0, 808(ra)<br>    |
| 131|[0x80003618]<br>0xFFFFFFFFFFFFFFFD|- rs1_val == -281474976710657<br>                                                                                                                                     |[0x80000ac0]:c.addiw a0, 62<br> [0x80000ac2]:sd a0, 816(ra)<br>   |
| 132|[0x80003620]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == -562949953421313<br>                                                                                                                                     |[0x80000ad2]:c.addiw a0, 61<br> [0x80000ad4]:sd a0, 824(ra)<br>   |
| 133|[0x80003628]<br>0xFFFFFFFFFFFFFFF8|- rs1_val == -1125899906842625<br>                                                                                                                                    |[0x80000ae4]:c.addiw a0, 57<br> [0x80000ae6]:sd a0, 832(ra)<br>   |
