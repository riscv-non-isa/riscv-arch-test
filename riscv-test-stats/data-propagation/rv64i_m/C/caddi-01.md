
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
| SIG_REGION                | [('0x80003208', '0x80003628', '132 dwords')]      |
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

|s.no|            signature             |                                                                             coverpoints                                                                              |                              code                              |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80003208]<br>0x8000000000000003|- opcode : c.addi<br> - rd : x12<br> - rs1_val != imm_val<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br> |[0x800003a0]:c.addi a2, 3<br> [0x800003a2]:sd a2, 0(t2)<br>     |
|   2|[0x80003210]<br>0xFFFFFFFFFFFFFFF0|- rd : x26<br> - rs1_val == 0<br>                                                                                                                                     |[0x800003aa]:c.addi s10, 48<br> [0x800003ac]:sd s10, 8(t2)<br>  |
|   3|[0x80003218]<br>0x8000000000000000|- rd : x6<br> - rs1_val > 0 and imm_val > 0<br> - imm_val == 1<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>                              |[0x800003bc]:c.addi t1, 1<br> [0x800003be]:sd t1, 16(t2)<br>    |
|   4|[0x80003220]<br>0x0000000000000011|- rd : x21<br> - rs1_val == 1<br> - imm_val == 16<br>                                                                                                                 |[0x800003c6]:c.addi s5, 16<br> [0x800003c8]:sd s5, 24(t2)<br>   |
|   5|[0x80003228]<br>0xFFFFFFFF7FFFFFDF|- rd : x3<br> - rs1_val < 0 and imm_val < 0<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> - rs1_val == -2147483649<br>                                        |[0x800003d8]:c.addi gp, 32<br> [0x800003da]:sd gp, 32(t2)<br>   |
|   6|[0x80003230]<br>0x0000000000004000|- rd : x2<br> - imm_val == 0<br> - rs1_val == 16384<br>                                                                                                               |[0x800003e2]:c.addi.hint.sp<br> [0x800003e4]:sd sp, 40(t2)<br>  |
|   7|[0x80003238]<br>0x000000000100001F|- rd : x30<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br> - rs1_val == 16777216<br>                                                                            |[0x800003ec]:c.addi t5, 31<br> [0x800003ee]:sd t5, 48(t2)<br>   |
|   8|[0x80003240]<br>0x000000000000000C|- rd : x28<br> - rs1_val == imm_val<br>                                                                                                                               |[0x800003f6]:c.addi t3, 6<br> [0x800003f8]:sd t3, 56(t2)<br>    |
|   9|[0x80003248]<br>0x0000007FFFFFFFF8|- rd : x10<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 549755813888<br>                                                                                        |[0x80000404]:c.addi a0, 56<br> [0x80000406]:sd a0, 64(t2)<br>   |
|  10|[0x80003250]<br>0x0000000000000011|- rd : x17<br> - rs1_val == 2<br>                                                                                                                                     |[0x8000040e]:c.addi a7, 15<br> [0x80000410]:sd a7, 72(t2)<br>   |
|  11|[0x80003258]<br>0xFFFFFFFFFFFFFFFC|- rd : x18<br> - rs1_val == 4<br>                                                                                                                                     |[0x80000418]:c.addi s2, 56<br> [0x8000041a]:sd s2, 80(t2)<br>   |
|  12|[0x80003260]<br>0x0000000000000005|- rd : x16<br> - imm_val == -3<br> - rs1_val == 8<br>                                                                                                                 |[0x80000422]:c.addi a6, 61<br> [0x80000424]:sd a6, 88(t2)<br>   |
|  13|[0x80003268]<br>0x0000000000000010|- rd : x29<br> - rs1_val == 16<br>                                                                                                                                    |[0x8000042c]:c.addi.hint.t4<br> [0x8000042e]:sd t4, 96(t2)<br>  |
|  14|[0x80003270]<br>0x000000000000001D|- rd : x25<br> - rs1_val == 32<br>                                                                                                                                    |[0x80000436]:c.addi s9, 61<br> [0x80000438]:sd s9, 104(t2)<br>  |
|  15|[0x80003278]<br>0x0000000000000042|- rd : x9<br> - imm_val == 2<br> - rs1_val == 64<br>                                                                                                                  |[0x80000440]:c.addi s1, 2<br> [0x80000442]:sd s1, 112(t2)<br>   |
|  16|[0x80003280]<br>0x0000000000000088|- rd : x19<br> - imm_val == 8<br> - rs1_val == 128<br>                                                                                                                |[0x8000044a]:c.addi s3, 8<br> [0x8000044c]:sd s3, 120(t2)<br>   |
|  17|[0x80003288]<br>0x0000000000000105|- rd : x5<br> - rs1_val == 256<br>                                                                                                                                    |[0x80000454]:c.addi t0, 5<br> [0x80000456]:sd t0, 128(t2)<br>   |
|  18|[0x80003290]<br>0x0000000000000208|- rd : x27<br> - rs1_val == 512<br>                                                                                                                                   |[0x8000045e]:c.addi s11, 8<br> [0x80000460]:sd s11, 136(t2)<br> |
|  19|[0x80003298]<br>0x00000000000003E0|- rd : x14<br> - rs1_val == 1024<br>                                                                                                                                  |[0x80000468]:c.addi a4, 32<br> [0x8000046a]:sd a4, 144(t2)<br>  |
|  20|[0x800032a0]<br>0x0000000000000801|- rd : x23<br> - rs1_val == 2048<br>                                                                                                                                  |[0x80000476]:c.addi s7, 1<br> [0x80000478]:sd s7, 152(t2)<br>   |
|  21|[0x800032a8]<br>0x0000000000001005|- rd : x24<br> - rs1_val == 4096<br>                                                                                                                                  |[0x80000480]:c.addi s8, 5<br> [0x80000482]:sd s8, 160(t2)<br>   |
|  22|[0x800032b0]<br>0x0000000000002002|- rd : x20<br> - rs1_val == 8192<br>                                                                                                                                  |[0x8000048a]:c.addi s4, 2<br> [0x8000048c]:sd s4, 168(t2)<br>   |
|  23|[0x800032b8]<br>0x0000000000007FFB|- rd : x8<br> - imm_val == -5<br> - rs1_val == 32768<br>                                                                                                              |[0x80000494]:c.addi fp, 59<br> [0x80000496]:sd fp, 176(t2)<br>  |
|  24|[0x800032c0]<br>0x0000000000010008|- rd : x22<br> - rs1_val == 65536<br>                                                                                                                                 |[0x8000049e]:c.addi s6, 8<br> [0x800004a0]:sd s6, 184(t2)<br>   |
|  25|[0x800032c8]<br>0x000000000001FFF6|- rd : x4<br> - rs1_val == 131072<br>                                                                                                                                 |[0x800004a8]:c.addi tp, 54<br> [0x800004aa]:sd tp, 192(t2)<br>  |
|  26|[0x800032d0]<br>0x0000000000040005|- rd : x1<br> - rs1_val == 262144<br>                                                                                                                                 |[0x800004b2]:c.addi ra, 5<br> [0x800004b4]:sd ra, 200(t2)<br>   |
|  27|[0x800032d8]<br>0x0000000000080001|- rd : x31<br> - rs1_val == 524288<br>                                                                                                                                |[0x800004bc]:c.addi t6, 1<br> [0x800004be]:sd t6, 208(t2)<br>   |
|  28|[0x800032e0]<br>0x00000000000FFFFC|- rd : x11<br> - rs1_val == 1048576<br>                                                                                                                               |[0x800004c6]:c.addi a1, 60<br> [0x800004c8]:sd a1, 216(t2)<br>  |
|  29|[0x800032e8]<br>0x00000000001FFFFB|- rd : x15<br> - rs1_val == 2097152<br>                                                                                                                               |[0x800004d8]:c.addi a5, 59<br> [0x800004da]:sd a5, 0(ra)<br>    |
|  30|[0x800032f0]<br>0x0000000000400004|- rd : x7<br> - imm_val == 4<br> - rs1_val == 4194304<br>                                                                                                             |[0x800004e2]:c.addi t2, 4<br> [0x800004e4]:sd t2, 8(ra)<br>     |
|  31|[0x800032f8]<br>0x00000000007FFFFE|- rd : x13<br> - imm_val == -2<br> - rs1_val == 8388608<br>                                                                                                           |[0x800004ec]:c.addi a3, 62<br> [0x800004ee]:sd a3, 16(ra)<br>   |
|  32|[0x80003300]<br>0x0000000002000004|- rs1_val == 33554432<br>                                                                                                                                             |[0x800004f6]:c.addi a0, 4<br> [0x800004f8]:sd a0, 24(ra)<br>    |
|  33|[0x80003308]<br>0x0000000003FFFFEA|- imm_val == -22<br> - rs1_val == 67108864<br>                                                                                                                        |[0x80000500]:c.addi a0, 42<br> [0x80000502]:sd a0, 32(ra)<br>   |
|  34|[0x80003310]<br>0x0000000008000000|- rs1_val == 134217728<br>                                                                                                                                            |[0x8000050a]:c.addi.hint.a0<br> [0x8000050c]:sd a0, 40(ra)<br>  |
|  35|[0x80003318]<br>0x000000000FFFFFF8|- rs1_val == 268435456<br>                                                                                                                                            |[0x80000514]:c.addi a0, 56<br> [0x80000516]:sd a0, 48(ra)<br>   |
|  36|[0x80003320]<br>0x0000000020000006|- rs1_val == 536870912<br>                                                                                                                                            |[0x8000051e]:c.addi a0, 6<br> [0x80000520]:sd a0, 56(ra)<br>    |
|  37|[0x80003328]<br>0x000000003FFFFFF6|- rs1_val == 1073741824<br>                                                                                                                                           |[0x80000528]:c.addi a0, 54<br> [0x8000052a]:sd a0, 64(ra)<br>   |
|  38|[0x80003330]<br>0x000000007FFFFFF6|- rs1_val == 2147483648<br>                                                                                                                                           |[0x80000536]:c.addi a0, 54<br> [0x80000538]:sd a0, 72(ra)<br>   |
|  39|[0x80003338]<br>0x0000000100000009|- rs1_val == 4294967296<br>                                                                                                                                           |[0x80000544]:c.addi a0, 9<br> [0x80000546]:sd a0, 80(ra)<br>    |
|  40|[0x80003340]<br>0x00000001FFFFFFF9|- rs1_val == 8589934592<br>                                                                                                                                           |[0x80000552]:c.addi a0, 57<br> [0x80000554]:sd a0, 88(ra)<br>   |
|  41|[0x80003348]<br>0x0000000400000008|- rs1_val == 17179869184<br>                                                                                                                                          |[0x80000560]:c.addi a0, 8<br> [0x80000562]:sd a0, 96(ra)<br>    |
|  42|[0x80003350]<br>0x00000007FFFFFFF7|- imm_val == -9<br> - rs1_val == 34359738368<br>                                                                                                                      |[0x8000056e]:c.addi a0, 55<br> [0x80000570]:sd a0, 104(ra)<br>  |
|  43|[0x80003358]<br>0x0000000FFFFFFFF6|- rs1_val == 68719476736<br>                                                                                                                                          |[0x8000057c]:c.addi a0, 54<br> [0x8000057e]:sd a0, 112(ra)<br>  |
|  44|[0x80003360]<br>0x0000001FFFFFFFFE|- rs1_val == 137438953472<br>                                                                                                                                         |[0x8000058a]:c.addi a0, 62<br> [0x8000058c]:sd a0, 120(ra)<br>  |
|  45|[0x80003368]<br>0x0000004000000008|- rs1_val == 274877906944<br>                                                                                                                                         |[0x80000598]:c.addi a0, 8<br> [0x8000059a]:sd a0, 128(ra)<br>   |
|  46|[0x80003370]<br>0x000000FFFFFFFFF0|- rs1_val == 1099511627776<br>                                                                                                                                        |[0x800005a6]:c.addi a0, 48<br> [0x800005a8]:sd a0, 136(ra)<br>  |
|  47|[0x80003378]<br>0x000001FFFFFFFFFB|- rs1_val == 2199023255552<br>                                                                                                                                        |[0x800005b4]:c.addi a0, 59<br> [0x800005b6]:sd a0, 144(ra)<br>  |
|  48|[0x80003380]<br>0x000004000000000F|- rs1_val == 4398046511104<br>                                                                                                                                        |[0x800005c2]:c.addi a0, 15<br> [0x800005c4]:sd a0, 152(ra)<br>  |
|  49|[0x80003388]<br>0x000007FFFFFFFFF0|- rs1_val == 8796093022208<br>                                                                                                                                        |[0x800005d0]:c.addi a0, 48<br> [0x800005d2]:sd a0, 160(ra)<br>  |
|  50|[0x80003390]<br>0x0000100000000002|- rs1_val == 17592186044416<br>                                                                                                                                       |[0x800005de]:c.addi a0, 2<br> [0x800005e0]:sd a0, 168(ra)<br>   |
|  51|[0x80003398]<br>0x00001FFFFFFFFFFC|- rs1_val == 35184372088832<br>                                                                                                                                       |[0x800005ec]:c.addi a0, 60<br> [0x800005ee]:sd a0, 176(ra)<br>  |
|  52|[0x800033a0]<br>0x0000400000000000|- rs1_val == 70368744177664<br>                                                                                                                                       |[0x800005fa]:c.addi.hint.a0<br> [0x800005fc]:sd a0, 184(ra)<br> |
|  53|[0x800033a8]<br>0x0000800000000009|- rs1_val == 140737488355328<br>                                                                                                                                      |[0x80000608]:c.addi a0, 9<br> [0x8000060a]:sd a0, 192(ra)<br>   |
|  54|[0x800033b0]<br>0x0000FFFFFFFFFFF8|- rs1_val == 281474976710656<br>                                                                                                                                      |[0x80000616]:c.addi a0, 56<br> [0x80000618]:sd a0, 200(ra)<br>  |
|  55|[0x800033b8]<br>0x0002000000000015|- imm_val == 21<br> - rs1_val == 562949953421312<br>                                                                                                                  |[0x80000624]:c.addi a0, 21<br> [0x80000626]:sd a0, 208(ra)<br>  |
|  56|[0x800033c0]<br>0x0004000000000004|- rs1_val == 1125899906842624<br>                                                                                                                                     |[0x80000632]:c.addi a0, 4<br> [0x80000634]:sd a0, 216(ra)<br>   |
|  57|[0x800033c8]<br>0x0007FFFFFFFFFFF8|- rs1_val == 2251799813685248<br>                                                                                                                                     |[0x80000640]:c.addi a0, 56<br> [0x80000642]:sd a0, 224(ra)<br>  |
|  58|[0x800033d0]<br>0x0010000000000010|- rs1_val == 4503599627370496<br>                                                                                                                                     |[0x8000064e]:c.addi a0, 16<br> [0x80000650]:sd a0, 232(ra)<br>  |
|  59|[0x800033d8]<br>0x001FFFFFFFFFFFFC|- rs1_val == 9007199254740992<br>                                                                                                                                     |[0x8000065c]:c.addi a0, 60<br> [0x8000065e]:sd a0, 240(ra)<br>  |
|  60|[0x800033e0]<br>0x003FFFFFFFFFFFFF|- rs1_val == 18014398509481984<br>                                                                                                                                    |[0x8000066a]:c.addi a0, 63<br> [0x8000066c]:sd a0, 248(ra)<br>  |
|  61|[0x800033e8]<br>0x008000000000000F|- rs1_val == 36028797018963968<br>                                                                                                                                    |[0x80000678]:c.addi a0, 15<br> [0x8000067a]:sd a0, 256(ra)<br>  |
|  62|[0x800033f0]<br>0x00FFFFFFFFFFFFE0|- rs1_val == 72057594037927936<br>                                                                                                                                    |[0x80000686]:c.addi a0, 32<br> [0x80000688]:sd a0, 264(ra)<br>  |
|  63|[0x800033f8]<br>0x01FFFFFFFFFFFFFA|- rs1_val == 144115188075855872<br>                                                                                                                                   |[0x80000694]:c.addi a0, 58<br> [0x80000696]:sd a0, 272(ra)<br>  |
|  64|[0x80003400]<br>0x0400000000000006|- rs1_val == 288230376151711744<br>                                                                                                                                   |[0x800006a2]:c.addi a0, 6<br> [0x800006a4]:sd a0, 280(ra)<br>   |
|  65|[0x80003408]<br>0x0800000000000001|- rs1_val == 576460752303423488<br>                                                                                                                                   |[0x800006b0]:c.addi a0, 1<br> [0x800006b2]:sd a0, 288(ra)<br>   |
|  66|[0x80003410]<br>0x1000000000000007|- rs1_val == 1152921504606846976<br>                                                                                                                                  |[0x800006be]:c.addi a0, 7<br> [0x800006c0]:sd a0, 296(ra)<br>   |
|  67|[0x80003418]<br>0x2000000000000002|- rs1_val == 2305843009213693952<br>                                                                                                                                  |[0x800006cc]:c.addi a0, 2<br> [0x800006ce]:sd a0, 304(ra)<br>   |
|  68|[0x80003420]<br>0x400000000000001F|- rs1_val == 4611686018427387904<br>                                                                                                                                  |[0x800006da]:c.addi a0, 31<br> [0x800006dc]:sd a0, 312(ra)<br>  |
|  69|[0x80003428]<br>0xFFFFFFFFFFFFFFFB|- rs1_val == -2<br>                                                                                                                                                   |[0x800006e4]:c.addi a0, 61<br> [0x800006e6]:sd a0, 320(ra)<br>  |
|  70|[0x80003430]<br>0xFFFFFFFFFFFFFFFA|- rs1_val == -3<br>                                                                                                                                                   |[0x800006ee]:c.addi a0, 61<br> [0x800006f0]:sd a0, 328(ra)<br>  |
|  71|[0x80003438]<br>0xFFF8000000000001|- rs1_val == -2251799813685249<br>                                                                                                                                    |[0x80000700]:c.addi a0, 2<br> [0x80000702]:sd a0, 336(ra)<br>   |
|  72|[0x80003440]<br>0xFFEFFFFFFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                                                    |[0x80000712]:c.addi.hint.a0<br> [0x80000714]:sd a0, 344(ra)<br> |
|  73|[0x80003448]<br>0xFFDFFFFFFFFFFFF5|- rs1_val == -9007199254740993<br>                                                                                                                                    |[0x80000724]:c.addi a0, 54<br> [0x80000726]:sd a0, 352(ra)<br>  |
|  74|[0x80003450]<br>0xFFBFFFFFFFFFFFF9|- rs1_val == -18014398509481985<br>                                                                                                                                   |[0x80000736]:c.addi a0, 58<br> [0x80000738]:sd a0, 360(ra)<br>  |
|  75|[0x80003458]<br>0xFF7FFFFFFFFFFFF6|- rs1_val == -36028797018963969<br>                                                                                                                                   |[0x80000748]:c.addi a0, 55<br> [0x8000074a]:sd a0, 368(ra)<br>  |
|  76|[0x80003460]<br>0xFEFFFFFFFFFFFFFC|- rs1_val == -72057594037927937<br>                                                                                                                                   |[0x8000075a]:c.addi a0, 61<br> [0x8000075c]:sd a0, 376(ra)<br>  |
|  77|[0x80003468]<br>0xFDFFFFFFFFFFFFFB|- rs1_val == -144115188075855873<br>                                                                                                                                  |[0x8000076c]:c.addi a0, 60<br> [0x8000076e]:sd a0, 384(ra)<br>  |
|  78|[0x80003470]<br>0xFBFFFFFFFFFFFFF6|- rs1_val == -288230376151711745<br>                                                                                                                                  |[0x8000077e]:c.addi a0, 55<br> [0x80000780]:sd a0, 392(ra)<br>  |
|  79|[0x80003478]<br>0xF7FFFFFFFFFFFFDF|- rs1_val == -576460752303423489<br>                                                                                                                                  |[0x80000790]:c.addi a0, 32<br> [0x80000792]:sd a0, 400(ra)<br>  |
|  80|[0x80003480]<br>0xEFFFFFFFFFFFFFFA|- rs1_val == -1152921504606846977<br>                                                                                                                                 |[0x800007a2]:c.addi a0, 59<br> [0x800007a4]:sd a0, 408(ra)<br>  |
|  81|[0x80003488]<br>0xE000000000000000|- rs1_val == -2305843009213693953<br>                                                                                                                                 |[0x800007b4]:c.addi a0, 1<br> [0x800007b6]:sd a0, 416(ra)<br>   |
|  82|[0x80003490]<br>0xBFFFFFFFFFFFFFFD|- rs1_val == -4611686018427387905<br>                                                                                                                                 |[0x800007c6]:c.addi a0, 62<br> [0x800007c8]:sd a0, 424(ra)<br>  |
|  83|[0x80003498]<br>0x555555555555554F|- rs1_val == 6148914691236517205<br>                                                                                                                                  |[0x800007ec]:c.addi a0, 58<br> [0x800007ee]:sd a0, 432(ra)<br>  |
|  84|[0x800034a0]<br>0xAAAAAAAAAAAAAA8A|- rs1_val == -6148914691236517206<br>                                                                                                                                 |[0x80000812]:c.addi a0, 32<br> [0x80000814]:sd a0, 440(ra)<br>  |
|  85|[0x800034a8]<br>0xFFFFFFFFFFFFDFEE|- imm_val == -17<br> - rs1_val == -8193<br>                                                                                                                           |[0x80000820]:c.addi a0, 47<br> [0x80000822]:sd a0, 448(ra)<br>  |
|  86|[0x800034b0]<br>0x0000000000000004|- rs1_val == -5<br>                                                                                                                                                   |[0x8000082a]:c.addi a0, 9<br> [0x8000082c]:sd a0, 456(ra)<br>   |
|  87|[0x800034b8]<br>0xFFFFFFFFFFFFFFE1|- rs1_val == -9<br>                                                                                                                                                   |[0x80000834]:c.addi a0, 42<br> [0x80000836]:sd a0, 464(ra)<br>  |
|  88|[0x800034c0]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -17<br>                                                                                                                                                  |[0x8000083e]:c.addi a0, 16<br> [0x80000840]:sd a0, 472(ra)<br>  |
|  89|[0x800034c8]<br>0xFFFFFFFFFFFFFFDC|- rs1_val == -33<br>                                                                                                                                                  |[0x80000848]:c.addi a0, 61<br> [0x8000084a]:sd a0, 480(ra)<br>  |
|  90|[0x800034d0]<br>0xFFFFFFFFFFFFFFAE|- rs1_val == -65<br>                                                                                                                                                  |[0x80000852]:c.addi a0, 47<br> [0x80000854]:sd a0, 488(ra)<br>  |
|  91|[0x800034d8]<br>0xFFFFFFFFFFFFFF9E|- rs1_val == -129<br>                                                                                                                                                 |[0x8000085c]:c.addi a0, 31<br> [0x8000085e]:sd a0, 496(ra)<br>  |
|  92|[0x800034e0]<br>0xFFFFFFFFFFFFFEF8|- rs1_val == -257<br>                                                                                                                                                 |[0x80000866]:c.addi a0, 57<br> [0x80000868]:sd a0, 504(ra)<br>  |
|  93|[0x800034e8]<br>0xFFFFFFFFFFFFFDEF|- rs1_val == -513<br>                                                                                                                                                 |[0x80000870]:c.addi a0, 48<br> [0x80000872]:sd a0, 512(ra)<br>  |
|  94|[0x800034f0]<br>0xFFFFFFFFFFFFFC03|- rs1_val == -1025<br>                                                                                                                                                |[0x8000087a]:c.addi a0, 4<br> [0x8000087c]:sd a0, 520(ra)<br>   |
|  95|[0x800034f8]<br>0xFFFFFFFFFFFFF7FB|- rs1_val == -2049<br>                                                                                                                                                |[0x80000888]:c.addi a0, 60<br> [0x8000088a]:sd a0, 528(ra)<br>  |
|  96|[0x80003500]<br>0xFFFFFFFFFFFFEFFB|- rs1_val == -4097<br>                                                                                                                                                |[0x80000896]:c.addi a0, 60<br> [0x80000898]:sd a0, 536(ra)<br>  |
|  97|[0x80003508]<br>0xFFFFFFFFFFFFC000|- rs1_val == -16385<br>                                                                                                                                               |[0x800008a4]:c.addi a0, 1<br> [0x800008a6]:sd a0, 544(ra)<br>   |
|  98|[0x80003510]<br>0xFFFFFFFFFFFF7FFA|- rs1_val == -32769<br>                                                                                                                                               |[0x800008b2]:c.addi a0, 59<br> [0x800008b4]:sd a0, 552(ra)<br>  |
|  99|[0x80003518]<br>0xFFFFFFFFFFFEFFF8|- rs1_val == -65537<br>                                                                                                                                               |[0x800008c0]:c.addi a0, 57<br> [0x800008c2]:sd a0, 560(ra)<br>  |
| 100|[0x80003520]<br>0xFFFFFFFFFFFDFFE9|- rs1_val == -131073<br>                                                                                                                                              |[0x800008ce]:c.addi a0, 42<br> [0x800008d0]:sd a0, 568(ra)<br>  |
| 101|[0x80003528]<br>0xFFFFFFFFFFFC0001|- rs1_val == -262145<br>                                                                                                                                              |[0x800008dc]:c.addi a0, 2<br> [0x800008de]:sd a0, 576(ra)<br>   |
| 102|[0x80003530]<br>0xFFFFFFFFFFF80014|- rs1_val == -524289<br>                                                                                                                                              |[0x800008ea]:c.addi a0, 21<br> [0x800008ec]:sd a0, 584(ra)<br>  |
| 103|[0x80003538]<br>0xFFFFFFFFFFEFFFDF|- rs1_val == -1048577<br>                                                                                                                                             |[0x800008f8]:c.addi a0, 32<br> [0x800008fa]:sd a0, 592(ra)<br>  |
| 104|[0x80003540]<br>0xFFFFFFFFFFDFFFF7|- rs1_val == -2097153<br>                                                                                                                                             |[0x80000906]:c.addi a0, 56<br> [0x80000908]:sd a0, 600(ra)<br>  |
| 105|[0x80003548]<br>0xFFFFFFFFFFBFFFFB|- rs1_val == -4194305<br>                                                                                                                                             |[0x80000914]:c.addi a0, 60<br> [0x80000916]:sd a0, 608(ra)<br>  |
| 106|[0x80003550]<br>0xFFFFFFFFFF800008|- rs1_val == -8388609<br>                                                                                                                                             |[0x80000922]:c.addi a0, 9<br> [0x80000924]:sd a0, 616(ra)<br>   |
| 107|[0x80003558]<br>0xFFFFFFFFFEFFFFF7|- rs1_val == -16777217<br>                                                                                                                                            |[0x80000930]:c.addi a0, 56<br> [0x80000932]:sd a0, 624(ra)<br>  |
| 108|[0x80003560]<br>0xFFFFFFFFFDFFFFF7|- rs1_val == -33554433<br>                                                                                                                                            |[0x8000093e]:c.addi a0, 56<br> [0x80000940]:sd a0, 632(ra)<br>  |
| 109|[0x80003568]<br>0xFFFFFFFFFBFFFFEE|- rs1_val == -67108865<br>                                                                                                                                            |[0x8000094c]:c.addi a0, 47<br> [0x8000094e]:sd a0, 640(ra)<br>  |
| 110|[0x80003570]<br>0xFFFFFFFFF7FFFFF8|- rs1_val == -134217729<br>                                                                                                                                           |[0x8000095a]:c.addi a0, 57<br> [0x8000095c]:sd a0, 648(ra)<br>  |
| 111|[0x80003578]<br>0xFFFFFFFFEFFFFFF6|- rs1_val == -268435457<br>                                                                                                                                           |[0x80000968]:c.addi a0, 55<br> [0x8000096a]:sd a0, 656(ra)<br>  |
| 112|[0x80003580]<br>0xFFFFFFFFE000001E|- rs1_val == -536870913<br>                                                                                                                                           |[0x80000976]:c.addi a0, 31<br> [0x80000978]:sd a0, 664(ra)<br>  |
| 113|[0x80003588]<br>0xFFFFFFFFBFFFFFFE|- rs1_val == -1073741825<br>                                                                                                                                          |[0x80000984]:c.addi a0, 63<br> [0x80000986]:sd a0, 672(ra)<br>  |
| 114|[0x80003590]<br>0xFFFFFFFEFFFFFFFC|- rs1_val == -4294967297<br>                                                                                                                                          |[0x80000996]:c.addi a0, 61<br> [0x80000998]:sd a0, 680(ra)<br>  |
| 115|[0x80003598]<br>0xFFFFFFFDFFFFFFF9|- rs1_val == -8589934593<br>                                                                                                                                          |[0x800009a8]:c.addi a0, 58<br> [0x800009aa]:sd a0, 688(ra)<br>  |
| 116|[0x800035a0]<br>0xFFFFFFFC00000008|- rs1_val == -17179869185<br>                                                                                                                                         |[0x800009ba]:c.addi a0, 9<br> [0x800009bc]:sd a0, 696(ra)<br>   |
| 117|[0x800035a8]<br>0xFFFFFFF800000008|- rs1_val == -34359738369<br>                                                                                                                                         |[0x800009cc]:c.addi a0, 9<br> [0x800009ce]:sd a0, 704(ra)<br>   |
| 118|[0x800035b0]<br>0xFFFFFFF000000007|- rs1_val == -68719476737<br>                                                                                                                                         |[0x800009de]:c.addi a0, 8<br> [0x800009e0]:sd a0, 712(ra)<br>   |
| 119|[0x800035b8]<br>0xFFFFFFE000000006|- rs1_val == -137438953473<br>                                                                                                                                        |[0x800009f0]:c.addi a0, 7<br> [0x800009f2]:sd a0, 720(ra)<br>   |
| 120|[0x800035c0]<br>0xFFFFFFC000000004|- rs1_val == -274877906945<br>                                                                                                                                        |[0x80000a02]:c.addi a0, 5<br> [0x80000a04]:sd a0, 728(ra)<br>   |
| 121|[0x800035c8]<br>0xFFFFFF7FFFFFFFF5|- rs1_val == -549755813889<br>                                                                                                                                        |[0x80000a14]:c.addi a0, 54<br> [0x80000a16]:sd a0, 736(ra)<br>  |
| 122|[0x800035d0]<br>0xFFFFFEFFFFFFFFEE|- rs1_val == -1099511627777<br>                                                                                                                                       |[0x80000a26]:c.addi a0, 47<br> [0x80000a28]:sd a0, 744(ra)<br>  |
| 123|[0x800035d8]<br>0xFFFFFDFFFFFFFFF5|- rs1_val == -2199023255553<br>                                                                                                                                       |[0x80000a38]:c.addi a0, 54<br> [0x80000a3a]:sd a0, 752(ra)<br>  |
| 124|[0x800035e0]<br>0xFFFFFBFFFFFFFFEE|- rs1_val == -4398046511105<br>                                                                                                                                       |[0x80000a4a]:c.addi a0, 47<br> [0x80000a4c]:sd a0, 760(ra)<br>  |
| 125|[0x800035e8]<br>0xFFFFF80000000003|- rs1_val == -8796093022209<br>                                                                                                                                       |[0x80000a5c]:c.addi a0, 4<br> [0x80000a5e]:sd a0, 768(ra)<br>   |
| 126|[0x800035f0]<br>0xFFFFEFFFFFFFFFF9|- rs1_val == -17592186044417<br>                                                                                                                                      |[0x80000a6e]:c.addi a0, 58<br> [0x80000a70]:sd a0, 776(ra)<br>  |
| 127|[0x800035f8]<br>0xFFFFE00000000001|- rs1_val == -35184372088833<br>                                                                                                                                      |[0x80000a80]:c.addi a0, 2<br> [0x80000a82]:sd a0, 784(ra)<br>   |
| 128|[0x80003600]<br>0xFFFFBFFFFFFFFFF9|- rs1_val == -70368744177665<br>                                                                                                                                      |[0x80000a92]:c.addi a0, 58<br> [0x80000a94]:sd a0, 792(ra)<br>  |
| 129|[0x80003608]<br>0xFFFF7FFFFFFFFFF9|- rs1_val == -140737488355329<br>                                                                                                                                     |[0x80000aa4]:c.addi a0, 58<br> [0x80000aa6]:sd a0, 800(ra)<br>  |
| 130|[0x80003610]<br>0xFFFEFFFFFFFFFFDF|- rs1_val == -281474976710657<br>                                                                                                                                     |[0x80000ab6]:c.addi a0, 32<br> [0x80000ab8]:sd a0, 808(ra)<br>  |
| 131|[0x80003618]<br>0xFFFDFFFFFFFFFFF5|- rs1_val == -562949953421313<br>                                                                                                                                     |[0x80000ac8]:c.addi a0, 54<br> [0x80000aca]:sd a0, 816(ra)<br>  |
| 132|[0x80003620]<br>0xFFFC000000000014|- rs1_val == -1125899906842625<br>                                                                                                                                    |[0x80000ada]:c.addi a0, 21<br> [0x80000adc]:sd a0, 824(ra)<br>  |
