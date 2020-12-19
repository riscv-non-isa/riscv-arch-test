
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80002ad0')]      |
| SIG_REGION                | [('0x80004010', '0x80004dd0', '440 dwords')]      |
| COV_LABELS                | candi      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/candi-01.S/candi-01.S    |
| Total Number of coverpoints| 473     |
| Total Coverpoints Hit     | 473      |
| Total Signature Updates   | 439      |
| STAT1                     | 439      |
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

|s.no|            signature             |                                                    coverpoints                                                    |                              code                              |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80004010]<br>0x0000000000000009|- opcode : c.andi<br> - rs1 : x9<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br>                    |[0x8000039c]:c.andi s1, 9<br> [0x8000039e]:sd s1, 0(ra)<br>     |
|   2|[0x80004018]<br>0xFFFFFFFFFFFFFFF5|- rs1 : x10<br> - rs1_val != imm_val<br> - rs1_val < 0 and imm_val < 0<br> - imm_val == -3<br> - rs1_val == -9<br> |[0x800003a6]:c.andi a0, 61<br> [0x800003a8]:sd a0, 8(ra)<br>    |
|   3|[0x80004020]<br>0x0000000000000004|- rs1 : x11<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 4<br>                                               |[0x800003b0]:c.andi a1, 54<br> [0x800003b2]:sd a1, 16(ra)<br>   |
|   4|[0x80004028]<br>0x0000000000000003|- rs1 : x12<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -129<br>                                            |[0x800003ba]:c.andi a2, 3<br> [0x800003bc]:sd a2, 24(ra)<br>    |
|   5|[0x80004030]<br>0x0000000000002000|- rs1 : x14<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> - rs1_val == 8192<br>                            |[0x800003c4]:c.andi a4, 32<br> [0x800003c6]:sd a4, 32(ra)<br>   |
|   6|[0x80004038]<br>0x0000000000000000|- rs1 : x8<br> - imm_val == 0<br> - rs1_val == 70368744177664<br>                                                  |[0x800003d2]:c.andi s0, 0<br> [0x800003d4]:sd fp, 40(ra)<br>    |
|   7|[0x80004040]<br>0x000000000000001F|- rs1 : x15<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br> - rs1_val == -68719476737<br>                    |[0x800003e4]:c.andi a5, 31<br> [0x800003e6]:sd a5, 48(ra)<br>   |
|   8|[0x80004048]<br>0x0000000000000000|- rs1 : x13<br> - imm_val == 1<br> - rs1_val == 0<br>                                                              |[0x800003ee]:c.andi a3, 1<br> [0x800003f0]:sd a3, 56(ra)<br>    |
|   9|[0x80004050]<br>0x8000000000000000|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br>                                              |[0x800003fc]:c.andi a0, 60<br> [0x800003fe]:sd a0, 64(ra)<br>   |
|  10|[0x80004058]<br>0x0000000000000005|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>                                              |[0x8000040e]:c.andi a0, 5<br> [0x80000410]:sd a0, 72(ra)<br>    |
|  11|[0x80004060]<br>0x0000000000000000|- rs1_val == 1<br> - imm_val == -2<br>                                                                             |[0x80000418]:c.andi a0, 62<br> [0x8000041a]:sd a0, 80(ra)<br>   |
|  12|[0x80004068]<br>0x0000000000000000|- imm_val == 2<br> - rs1_val == 268435456<br>                                                                      |[0x80000422]:c.andi a0, 2<br> [0x80000424]:sd a0, 88(ra)<br>    |
|  13|[0x80004070]<br>0x0000000000000000|- imm_val == 4<br> - rs1_val==-6148914691236517205 and imm_val==4<br>                                              |[0x80000448]:c.andi a0, 4<br> [0x8000044a]:sd a0, 96(ra)<br>    |
|  14|[0x80004078]<br>0x0000000000000008|- imm_val == 8<br> - rs1_val == -262145<br>                                                                        |[0x80000456]:c.andi a0, 8<br> [0x80000458]:sd a0, 104(ra)<br>   |
|  15|[0x80004080]<br>0x0000000000000010|- imm_val == 16<br> - rs1_val == -4611686018427387905<br>                                                          |[0x80000468]:c.andi a0, 16<br> [0x8000046a]:sd a0, 112(ra)<br>  |
|  16|[0x80004088]<br>0x0000000000000003|- imm_val == -5<br>                                                                                                |[0x80000472]:c.andi a0, 59<br> [0x80000474]:sd a0, 120(ra)<br>  |
|  17|[0x80004090]<br>0xFFFFFFFFFFFF7FF7|- imm_val == -9<br> - rs1_val == -32769<br>                                                                        |[0x80000480]:c.andi a0, 55<br> [0x80000482]:sd a0, 128(ra)<br>  |
|  18|[0x80004098]<br>0x0040000000000000|- imm_val == -17<br> - rs1_val == 18014398509481984<br>                                                            |[0x8000048e]:c.andi a0, 47<br> [0x80000490]:sd a0, 136(ra)<br>  |
|  19|[0x800040a0]<br>0x0000000000000000|- imm_val == 21<br>                                                                                                |[0x80000498]:c.andi a0, 21<br> [0x8000049a]:sd a0, 144(ra)<br>  |
|  20|[0x800040a8]<br>0x0080000000000000|- imm_val == -22<br> - rs1_val == 36028797018963968<br>                                                            |[0x800004a6]:c.andi a0, 42<br> [0x800004a8]:sd a0, 152(ra)<br>  |
|  21|[0x800040b0]<br>0x0000000000000002|- rs1_val == 2<br> - rs1_val==2 and imm_val==-2<br>                                                                |[0x800004b0]:c.andi a0, 62<br> [0x800004b2]:sd a0, 160(ra)<br>  |
|  22|[0x800040b8]<br>0x0000000000000000|- rs1_val == 8<br>                                                                                                 |[0x800004ba]:c.andi a0, 0<br> [0x800004bc]:sd a0, 168(ra)<br>   |
|  23|[0x800040c0]<br>0x0000000000000000|- rs1_val == 16<br>                                                                                                |[0x800004c4]:c.andi a0, 4<br> [0x800004c6]:sd a0, 176(ra)<br>   |
|  24|[0x800040c8]<br>0x0000000000000020|- rs1_val == 32<br>                                                                                                |[0x800004ce]:c.andi a0, 59<br> [0x800004d0]:sd a0, 184(ra)<br>  |
|  25|[0x800040d0]<br>0x0000000000000000|- rs1_val == 64<br>                                                                                                |[0x800004d8]:c.andi a0, 3<br> [0x800004da]:sd a0, 192(ra)<br>   |
|  26|[0x800040d8]<br>0x0000000000000000|- rs1_val == 128<br>                                                                                               |[0x800004e2]:c.andi a0, 1<br> [0x800004e4]:sd a0, 200(ra)<br>   |
|  27|[0x800040e0]<br>0x0000000000000100|- rs1_val == 256<br>                                                                                               |[0x800004ec]:c.andi a0, 61<br> [0x800004ee]:sd a0, 208(ra)<br>  |
|  28|[0x800040e8]<br>0x0000000000000000|- rs1_val == 512<br>                                                                                               |[0x800004f6]:c.andi a0, 21<br> [0x800004f8]:sd a0, 216(ra)<br>  |
|  29|[0x800040f0]<br>0x0000000000000400|- rs1_val == 1024<br>                                                                                              |[0x80000500]:c.andi a0, 63<br> [0x80000502]:sd a0, 224(ra)<br>  |
|  30|[0x800040f8]<br>0x0000000000000000|- rs1_val == 2048<br>                                                                                              |[0x8000050e]:c.andi a0, 6<br> [0x80000510]:sd a0, 232(ra)<br>   |
|  31|[0x80004100]<br>0x0000000000000000|- rs1_val == 4096<br>                                                                                              |[0x80000518]:c.andi a0, 2<br> [0x8000051a]:sd a0, 240(ra)<br>   |
|  32|[0x80004108]<br>0x0000000000000000|- rs1_val == 16384<br>                                                                                             |[0x80000522]:c.andi a0, 5<br> [0x80000524]:sd a0, 248(ra)<br>   |
|  33|[0x80004110]<br>0x0000000000008000|- rs1_val == 32768<br>                                                                                             |[0x8000052c]:c.andi a0, 62<br> [0x8000052e]:sd a0, 256(ra)<br>  |
|  34|[0x80004118]<br>0x0000000000010000|- rs1_val == 65536<br>                                                                                             |[0x80000536]:c.andi a0, 42<br> [0x80000538]:sd a0, 264(ra)<br>  |
|  35|[0x80004120]<br>0x0000000000020000|- rs1_val == 131072<br>                                                                                            |[0x80000540]:c.andi a0, 32<br> [0x80000542]:sd a0, 272(ra)<br>  |
|  36|[0x80004128]<br>0x0000000000040000|- rs1_val == 262144<br>                                                                                            |[0x8000054a]:c.andi a0, 63<br> [0x8000054c]:sd a0, 280(ra)<br>  |
|  37|[0x80004130]<br>0x0000000000000000|- rs1_val == 524288<br>                                                                                            |[0x80000554]:c.andi a0, 0<br> [0x80000556]:sd a0, 288(ra)<br>   |
|  38|[0x80004138]<br>0x0000000000000000|- rs1_val == 1048576<br>                                                                                           |[0x8000055e]:c.andi a0, 6<br> [0x80000560]:sd a0, 296(ra)<br>   |
|  39|[0x80004140]<br>0x0000000000000000|- rs1_val == 2097152<br>                                                                                           |[0x80000568]:c.andi a0, 9<br> [0x8000056a]:sd a0, 304(ra)<br>   |
|  40|[0x80004148]<br>0x0000000000000000|- rs1_val == 4194304<br>                                                                                           |[0x80000572]:c.andi a0, 9<br> [0x80000574]:sd a0, 312(ra)<br>   |
|  41|[0x80004150]<br>0x0000000000000000|- rs1_val == 8388608<br>                                                                                           |[0x8000057c]:c.andi a0, 15<br> [0x8000057e]:sd a0, 320(ra)<br>  |
|  42|[0x80004158]<br>0x0000000001000000|- rs1_val == 16777216<br>                                                                                          |[0x80000586]:c.andi a0, 63<br> [0x80000588]:sd a0, 328(ra)<br>  |
|  43|[0x80004160]<br>0x0000000000000000|- rs1_val == 33554432<br>                                                                                          |[0x80000590]:c.andi a0, 5<br> [0x80000592]:sd a0, 336(ra)<br>   |
|  44|[0x80004168]<br>0x0000000000000000|- rs1_val == 67108864<br>                                                                                          |[0x8000059a]:c.andi a0, 4<br> [0x8000059c]:sd a0, 344(ra)<br>   |
|  45|[0x80004170]<br>0x0000000000000000|- rs1_val == 134217728<br>                                                                                         |[0x800005a4]:c.andi a0, 1<br> [0x800005a6]:sd a0, 352(ra)<br>   |
|  46|[0x80004178]<br>0x0000000020000000|- rs1_val == 536870912<br>                                                                                         |[0x800005ae]:c.andi a0, 59<br> [0x800005b0]:sd a0, 360(ra)<br>  |
|  47|[0x80004180]<br>0x0000000000000000|- rs1_val == 1073741824<br>                                                                                        |[0x800005b8]:c.andi a0, 4<br> [0x800005ba]:sd a0, 368(ra)<br>   |
|  48|[0x80004188]<br>0x0000000000000000|- rs1_val == 2147483648<br>                                                                                        |[0x800005c6]:c.andi a0, 4<br> [0x800005c8]:sd a0, 376(ra)<br>   |
|  49|[0x80004190]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                        |[0x800005d4]:c.andi a0, 5<br> [0x800005d6]:sd a0, 384(ra)<br>   |
|  50|[0x80004198]<br>0x0000000200000000|- rs1_val == 8589934592<br>                                                                                        |[0x800005e2]:c.andi a0, 62<br> [0x800005e4]:sd a0, 392(ra)<br>  |
|  51|[0x800041a0]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                       |[0x800005f0]:c.andi a0, 9<br> [0x800005f2]:sd a0, 400(ra)<br>   |
|  52|[0x800041a8]<br>0x0000000800000000|- rs1_val == 34359738368<br>                                                                                       |[0x800005fe]:c.andi a0, 47<br> [0x80000600]:sd a0, 408(ra)<br>  |
|  53|[0x800041b0]<br>0x0000000000000000|- rs1_val == 68719476736<br>                                                                                       |[0x8000060c]:c.andi a0, 1<br> [0x8000060e]:sd a0, 416(ra)<br>   |
|  54|[0x800041b8]<br>0x0000000000000000|- rs1_val == 137438953472<br>                                                                                      |[0x8000061a]:c.andi a0, 6<br> [0x8000061c]:sd a0, 424(ra)<br>   |
|  55|[0x800041c0]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                      |[0x80000628]:c.andi a0, 3<br> [0x8000062a]:sd a0, 432(ra)<br>   |
|  56|[0x800041c8]<br>0x0000000000000000|- rs1_val == 549755813888<br>                                                                                      |[0x80000636]:c.andi a0, 4<br> [0x80000638]:sd a0, 440(ra)<br>   |
|  57|[0x800041d0]<br>0x0000000000000000|- rs1_val == 1099511627776<br>                                                                                     |[0x80000644]:c.andi a0, 21<br> [0x80000646]:sd a0, 448(ra)<br>  |
|  58|[0x800041d8]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                     |[0x80000652]:c.andi a0, 4<br> [0x80000654]:sd a0, 456(ra)<br>   |
|  59|[0x800041e0]<br>0x0000000000000000|- rs1_val == 4398046511104<br>                                                                                     |[0x80000660]:c.andi a0, 4<br> [0x80000662]:sd a0, 464(ra)<br>   |
|  60|[0x800041e8]<br>0x0000000000000000|- rs1_val == 8796093022208<br>                                                                                     |[0x8000066e]:c.andi a0, 4<br> [0x80000670]:sd a0, 472(ra)<br>   |
|  61|[0x800041f0]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                    |[0x8000067c]:c.andi a0, 4<br> [0x8000067e]:sd a0, 480(ra)<br>   |
|  62|[0x800041f8]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                    |[0x8000068a]:c.andi a0, 4<br> [0x8000068c]:sd a0, 488(ra)<br>   |
|  63|[0x80004200]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                   |[0x80000698]:c.andi a0, 3<br> [0x8000069a]:sd a0, 496(ra)<br>   |
|  64|[0x80004208]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                   |[0x800006a6]:c.andi a0, 31<br> [0x800006a8]:sd a0, 504(ra)<br>  |
|  65|[0x80004210]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                   |[0x800006b4]:c.andi a0, 3<br> [0x800006b6]:sd a0, 512(ra)<br>   |
|  66|[0x80004218]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                  |[0x800006c2]:c.andi a0, 0<br> [0x800006c4]:sd a0, 520(ra)<br>   |
|  67|[0x80004220]<br>0x0000000000000000|- rs1_val == 2251799813685248<br>                                                                                  |[0x800006d0]:c.andi a0, 5<br> [0x800006d2]:sd a0, 528(ra)<br>   |
|  68|[0x80004228]<br>0x0010000000000000|- rs1_val == 4503599627370496<br>                                                                                  |[0x800006de]:c.andi a0, 47<br> [0x800006e0]:sd a0, 536(ra)<br>  |
|  69|[0x80004230]<br>0x0020000000000000|- rs1_val == 9007199254740992<br>                                                                                  |[0x800006ec]:c.andi a0, 62<br> [0x800006ee]:sd a0, 544(ra)<br>  |
|  70|[0x80004238]<br>0x0100000000000000|- rs1_val == 72057594037927936<br>                                                                                 |[0x800006fa]:c.andi a0, 54<br> [0x800006fc]:sd a0, 552(ra)<br>  |
|  71|[0x80004240]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                |[0x80000708]:c.andi a0, 3<br> [0x8000070a]:sd a0, 560(ra)<br>   |
|  72|[0x80004248]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                |[0x80000716]:c.andi a0, 2<br> [0x80000718]:sd a0, 568(ra)<br>   |
|  73|[0x80004250]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                |[0x80000724]:c.andi a0, 5<br> [0x80000726]:sd a0, 576(ra)<br>   |
|  74|[0x80004258]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                               |[0x80000732]:c.andi a0, 3<br> [0x80000734]:sd a0, 584(ra)<br>   |
|  75|[0x80004260]<br>0x2000000000000000|- rs1_val == 2305843009213693952<br>                                                                               |[0x80000740]:c.andi a0, 62<br> [0x80000742]:sd a0, 592(ra)<br>  |
|  76|[0x80004268]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                               |[0x8000074e]:c.andi a0, 5<br> [0x80000750]:sd a0, 600(ra)<br>   |
|  77|[0x80004270]<br>0xFFFFFFFFFFFFFFF8|- rs1_val == -2<br>                                                                                                |[0x80000758]:c.andi a0, 57<br> [0x8000075a]:sd a0, 608(ra)<br>  |
|  78|[0x80004278]<br>0xFFFFFFFFFFFFFFFD|- rs1_val == -3<br>                                                                                                |[0x80000762]:c.andi a0, 63<br> [0x80000764]:sd a0, 616(ra)<br>  |
|  79|[0x80004280]<br>0xFFFFFFFFFFFFFFF8|- rs1_val == -5<br>                                                                                                |[0x8000076c]:c.andi a0, 60<br> [0x8000076e]:sd a0, 624(ra)<br>  |
|  80|[0x80004288]<br>0x0000000000000007|- rs1_val == -17<br>                                                                                               |[0x80000776]:c.andi a0, 7<br> [0x80000778]:sd a0, 632(ra)<br>   |
|  81|[0x80004290]<br>0xFFFFFFFFFFFFFFC0|- rs1_val == -33<br>                                                                                               |[0x80000780]:c.andi a0, 32<br> [0x80000782]:sd a0, 640(ra)<br>  |
|  82|[0x80004298]<br>0x0000000000000006|- rs1_val == -65<br>                                                                                               |[0x8000078a]:c.andi a0, 6<br> [0x8000078c]:sd a0, 648(ra)<br>   |
|  83|[0x800042a0]<br>0x0000000000000007|- rs1_val == -257<br>                                                                                              |[0x80000794]:c.andi a0, 7<br> [0x80000796]:sd a0, 656(ra)<br>   |
|  84|[0x800042a8]<br>0x0000000000000004|- rs1_val == -513<br>                                                                                              |[0x8000079e]:c.andi a0, 4<br> [0x800007a0]:sd a0, 664(ra)<br>   |
|  85|[0x800042b0]<br>0x0000000000000000|- rs1_val == -1025<br>                                                                                             |[0x800007a8]:c.andi a0, 0<br> [0x800007aa]:sd a0, 672(ra)<br>   |
|  86|[0x800042b8]<br>0x0000000000000004|- rs1_val == -2049<br>                                                                                             |[0x800007b6]:c.andi a0, 4<br> [0x800007b8]:sd a0, 680(ra)<br>   |
|  87|[0x800042c0]<br>0x0000000000000007|- rs1_val == -4097<br>                                                                                             |[0x800007c4]:c.andi a0, 7<br> [0x800007c6]:sd a0, 688(ra)<br>   |
|  88|[0x800042c8]<br>0x0000000000000004|- rs1_val == -8193<br>                                                                                             |[0x800007d2]:c.andi a0, 4<br> [0x800007d4]:sd a0, 696(ra)<br>   |
|  89|[0x800042d0]<br>0x0000000000000004|- rs1_val == -16385<br>                                                                                            |[0x800007e0]:c.andi a0, 4<br> [0x800007e2]:sd a0, 704(ra)<br>   |
|  90|[0x800042d8]<br>0x0000000000000003|- rs1_val == -65537<br>                                                                                            |[0x800007ee]:c.andi a0, 3<br> [0x800007f0]:sd a0, 712(ra)<br>   |
|  91|[0x800042e0]<br>0xFFFFFFFFFFFDFFFD|- rs1_val == -131073<br>                                                                                           |[0x800007fc]:c.andi a0, 61<br> [0x800007fe]:sd a0, 720(ra)<br>  |
|  92|[0x800042e8]<br>0xFFFFFFFFFFF7FFF6|- rs1_val == -524289<br>                                                                                           |[0x8000080a]:c.andi a0, 54<br> [0x8000080c]:sd a0, 728(ra)<br>  |
|  93|[0x800042f0]<br>0xFFFFFFFFFFEFFFFC|- rs1_val == -1048577<br>                                                                                          |[0x80000818]:c.andi a0, 60<br> [0x8000081a]:sd a0, 736(ra)<br>  |
|  94|[0x800042f8]<br>0x0000000000000003|- rs1_val == -2097153<br>                                                                                          |[0x80000826]:c.andi a0, 3<br> [0x80000828]:sd a0, 744(ra)<br>   |
|  95|[0x80004300]<br>0x0000000000000004|- rs1_val == -4194305<br>                                                                                          |[0x80000834]:c.andi a0, 4<br> [0x80000836]:sd a0, 752(ra)<br>   |
|  96|[0x80004308]<br>0xFFFFFFFFFF7FFFFF|- rs1_val == -8388609<br>                                                                                          |[0x80000842]:c.andi a0, 63<br> [0x80000844]:sd a0, 760(ra)<br>  |
|  97|[0x80004310]<br>0xFFFFFFFFFEFFFFFE|- rs1_val == -16777217<br>                                                                                         |[0x80000850]:c.andi a0, 62<br> [0x80000852]:sd a0, 768(ra)<br>  |
|  98|[0x80004318]<br>0xFFFFFFFFFDFFFFFA|- rs1_val == -33554433<br>                                                                                         |[0x8000085e]:c.andi a0, 58<br> [0x80000860]:sd a0, 776(ra)<br>  |
|  99|[0x80004320]<br>0xFFFFFFFFFBFFFFFB|- rs1_val == -67108865<br>                                                                                         |[0x8000086c]:c.andi a0, 59<br> [0x8000086e]:sd a0, 784(ra)<br>  |
| 100|[0x80004328]<br>0xFFFFFFFFF7FFFFFE|- rs1_val == -134217729<br>                                                                                        |[0x8000087a]:c.andi a0, 62<br> [0x8000087c]:sd a0, 792(ra)<br>  |
| 101|[0x80004330]<br>0x000000000000000F|- rs1_val == -268435457<br>                                                                                        |[0x80000888]:c.andi a0, 15<br> [0x8000088a]:sd a0, 800(ra)<br>  |
| 102|[0x80004338]<br>0xFFFFFFFFDFFFFFFC|- rs1_val == -536870913<br>                                                                                        |[0x80000896]:c.andi a0, 60<br> [0x80000898]:sd a0, 808(ra)<br>  |
| 103|[0x80004340]<br>0xFFFFFFFFBFFFFFEF|- rs1_val == -1073741825<br>                                                                                       |[0x800008a4]:c.andi a0, 47<br> [0x800008a6]:sd a0, 816(ra)<br>  |
| 104|[0x80004348]<br>0x0000000000000006|- rs1_val == -2147483649<br>                                                                                       |[0x800008b6]:c.andi a0, 6<br> [0x800008b8]:sd a0, 824(ra)<br>   |
| 105|[0x80004350]<br>0xFFFFFFFEFFFFFFFE|- rs1_val == -4294967297<br>                                                                                       |[0x800008c8]:c.andi a0, 62<br> [0x800008ca]:sd a0, 832(ra)<br>  |
| 106|[0x80004358]<br>0xFFFFFFFDFFFFFFFB|- rs1_val == -8589934593<br>                                                                                       |[0x800008da]:c.andi a0, 59<br> [0x800008dc]:sd a0, 840(ra)<br>  |
| 107|[0x80004360]<br>0x0000000000000002|- rs1_val == -17179869185<br>                                                                                      |[0x800008ec]:c.andi a0, 2<br> [0x800008ee]:sd a0, 848(ra)<br>   |
| 108|[0x80004368]<br>0x0000000000000000|- rs1_val == -34359738369<br>                                                                                      |[0x800008fe]:c.andi a0, 0<br> [0x80000900]:sd a0, 856(ra)<br>   |
| 109|[0x80004370]<br>0xFFFFFFDFFFFFFFFD|- rs1_val == -137438953473<br>                                                                                     |[0x80000910]:c.andi a0, 61<br> [0x80000912]:sd a0, 864(ra)<br>  |
| 110|[0x80004378]<br>0x0000000000000009|- rs1_val == -274877906945<br>                                                                                     |[0x80000922]:c.andi a0, 9<br> [0x80000924]:sd a0, 872(ra)<br>   |
| 111|[0x80004380]<br>0x0000000000000006|- rs1_val == -549755813889<br>                                                                                     |[0x80000934]:c.andi a0, 6<br> [0x80000936]:sd a0, 880(ra)<br>   |
| 112|[0x80004388]<br>0xFFFFFEFFFFFFFFFE|- rs1_val == -1099511627777<br>                                                                                    |[0x80000946]:c.andi a0, 62<br> [0x80000948]:sd a0, 888(ra)<br>  |
| 113|[0x80004390]<br>0x0000000000000005|- rs1_val == -2199023255553<br>                                                                                    |[0x80000958]:c.andi a0, 5<br> [0x8000095a]:sd a0, 896(ra)<br>   |
| 114|[0x80004398]<br>0xFFFFFBFFFFFFFFE0|- rs1_val == -4398046511105<br>                                                                                    |[0x8000096a]:c.andi a0, 32<br> [0x8000096c]:sd a0, 904(ra)<br>  |
| 115|[0x800043a0]<br>0x000000000000000F|- rs1_val == -8796093022209<br>                                                                                    |[0x8000097c]:c.andi a0, 15<br> [0x8000097e]:sd a0, 912(ra)<br>  |
| 116|[0x800043a8]<br>0x0000000000000006|- rs1_val == -17592186044417<br>                                                                                   |[0x8000098e]:c.andi a0, 6<br> [0x80000990]:sd a0, 920(ra)<br>   |
| 117|[0x800043b0]<br>0x0000000000000005|- rs1_val == -35184372088833<br>                                                                                   |[0x800009a0]:c.andi a0, 5<br> [0x800009a2]:sd a0, 928(ra)<br>   |
| 118|[0x800043b8]<br>0x0000000000000004|- rs1_val == -70368744177665<br>                                                                                   |[0x800009b2]:c.andi a0, 4<br> [0x800009b4]:sd a0, 936(ra)<br>   |
| 119|[0x800043c0]<br>0xFFFF7FFFFFFFFFFE|- rs1_val == -140737488355329<br>                                                                                  |[0x800009c4]:c.andi a0, 62<br> [0x800009c6]:sd a0, 944(ra)<br>  |
| 120|[0x800043c8]<br>0x0000000000000005|- rs1_val == -281474976710657<br>                                                                                  |[0x800009d6]:c.andi a0, 5<br> [0x800009d8]:sd a0, 952(ra)<br>   |
| 121|[0x800043d0]<br>0x0000000000000006|- rs1_val == -562949953421313<br>                                                                                  |[0x800009e8]:c.andi a0, 6<br> [0x800009ea]:sd a0, 960(ra)<br>   |
| 122|[0x800043d8]<br>0x000000000000000F|- rs1_val == -1125899906842625<br>                                                                                 |[0x800009fa]:c.andi a0, 15<br> [0x800009fc]:sd a0, 968(ra)<br>  |
| 123|[0x800043e0]<br>0xFFF7FFFFFFFFFFFB|- rs1_val == -2251799813685249<br>                                                                                 |[0x80000a0c]:c.andi a0, 59<br> [0x80000a0e]:sd a0, 976(ra)<br>  |
| 124|[0x800043e8]<br>0x0000000000000005|- rs1_val == -4503599627370497<br>                                                                                 |[0x80000a1e]:c.andi a0, 5<br> [0x80000a20]:sd a0, 984(ra)<br>   |
| 125|[0x800043f0]<br>0x0000000000000003|- rs1_val == -9007199254740993<br>                                                                                 |[0x80000a30]:c.andi a0, 3<br> [0x80000a32]:sd a0, 992(ra)<br>   |
| 126|[0x800043f8]<br>0xFFBFFFFFFFFFFFFC|- rs1_val == -18014398509481985<br>                                                                                |[0x80000a42]:c.andi a0, 60<br> [0x80000a44]:sd a0, 1000(ra)<br> |
| 127|[0x80004400]<br>0x0000000000000009|- rs1_val == -36028797018963969<br>                                                                                |[0x80000a54]:c.andi a0, 9<br> [0x80000a56]:sd a0, 1008(ra)<br>  |
| 128|[0x80004408]<br>0x0000000000000008|- rs1_val == -72057594037927937<br>                                                                                |[0x80000a66]:c.andi a0, 8<br> [0x80000a68]:sd a0, 1016(ra)<br>  |
| 129|[0x80004410]<br>0xFDFFFFFFFFFFFFEA|- rs1_val == -144115188075855873<br>                                                                               |[0x80000a78]:c.andi a0, 42<br> [0x80000a7a]:sd a0, 1024(ra)<br> |
| 130|[0x80004418]<br>0xFBFFFFFFFFFFFFFE|- rs1_val == -288230376151711745<br>                                                                               |[0x80000a8a]:c.andi a0, 62<br> [0x80000a8c]:sd a0, 1032(ra)<br> |
| 131|[0x80004420]<br>0xF7FFFFFFFFFFFFFD|- rs1_val == -576460752303423489<br>                                                                               |[0x80000a9c]:c.andi a0, 61<br> [0x80000a9e]:sd a0, 1040(ra)<br> |
| 132|[0x80004428]<br>0x0000000000000002|- rs1_val == -1152921504606846977<br>                                                                              |[0x80000aae]:c.andi a0, 2<br> [0x80000ab0]:sd a0, 1048(ra)<br>  |
| 133|[0x80004430]<br>0xDFFFFFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                              |[0x80000ac0]:c.andi a0, 63<br> [0x80000ac2]:sd a0, 1056(ra)<br> |
| 134|[0x80004438]<br>0x5555555555555555|- rs1_val == 6148914691236517205<br> - rs1_val==6148914691236517205 and imm_val==-1<br>                            |[0x80000ae6]:c.andi a0, 63<br> [0x80000ae8]:sd a0, 1064(ra)<br> |
| 135|[0x80004440]<br>0x0000000000000008|- rs1_val == -6148914691236517206<br> - rs1_val==-6148914691236517206 and imm_val==9<br>                           |[0x80000b0c]:c.andi a0, 9<br> [0x80000b0e]:sd a0, 1072(ra)<br>  |
| 136|[0x80004448]<br>0x0000000000000003|- rs1_val==3 and imm_val==3<br>                                                                                    |[0x80000b16]:c.andi a0, 3<br> [0x80000b18]:sd a0, 1080(ra)<br>  |
| 137|[0x80004450]<br>0x0000000000000001|- rs1_val==3 and imm_val==5<br>                                                                                    |[0x80000b20]:c.andi a0, 5<br> [0x80000b22]:sd a0, 1088(ra)<br>  |
| 138|[0x80004458]<br>0x0000000000000002|- rs1_val==3 and imm_val==10<br>                                                                                   |[0x80000b2a]:c.andi a0, 10<br> [0x80000b2c]:sd a0, 1096(ra)<br> |
| 139|[0x80004460]<br>0x0000000000000002|- rs1_val==3 and imm_val==6<br>                                                                                    |[0x80000b34]:c.andi a0, 6<br> [0x80000b36]:sd a0, 1104(ra)<br>  |
| 140|[0x80004468]<br>0x0000000000000002|- rs1_val==3 and imm_val==-2<br>                                                                                   |[0x80000b3e]:c.andi a0, 62<br> [0x80000b40]:sd a0, 1112(ra)<br> |
| 141|[0x80004470]<br>0x0000000000000003|- rs1_val==3 and imm_val==-5<br>                                                                                   |[0x80000b48]:c.andi a0, 59<br> [0x80000b4a]:sd a0, 1120(ra)<br> |
| 142|[0x80004478]<br>0x0000000000000002|- rs1_val==3 and imm_val==2<br>                                                                                    |[0x80000b52]:c.andi a0, 2<br> [0x80000b54]:sd a0, 1128(ra)<br>  |
| 143|[0x80004480]<br>0x0000000000000000|- rs1_val==3 and imm_val==4<br>                                                                                    |[0x80000b5c]:c.andi a0, 4<br> [0x80000b5e]:sd a0, 1136(ra)<br>  |
| 144|[0x80004488]<br>0x0000000000000001|- rs1_val==3 and imm_val==9<br>                                                                                    |[0x80000b66]:c.andi a0, 9<br> [0x80000b68]:sd a0, 1144(ra)<br>  |
| 145|[0x80004490]<br>0x0000000000000000|- rs1_val==3 and imm_val==0<br>                                                                                    |[0x80000b70]:c.andi a0, 0<br> [0x80000b72]:sd a0, 1152(ra)<br>  |
| 146|[0x80004498]<br>0x0000000000000003|- rs1_val==3 and imm_val==11<br>                                                                                   |[0x80000b7a]:c.andi a0, 11<br> [0x80000b7c]:sd a0, 1160(ra)<br> |
| 147|[0x800044a0]<br>0x0000000000000003|- rs1_val==3 and imm_val==7<br>                                                                                    |[0x80000b84]:c.andi a0, 7<br> [0x80000b86]:sd a0, 1168(ra)<br>  |
| 148|[0x800044a8]<br>0x0000000000000003|- rs1_val==3 and imm_val==-1<br>                                                                                   |[0x80000b8e]:c.andi a0, 63<br> [0x80000b90]:sd a0, 1176(ra)<br> |
| 149|[0x800044b0]<br>0x0000000000000000|- rs1_val==3 and imm_val==-4<br>                                                                                   |[0x80000b98]:c.andi a0, 60<br> [0x80000b9a]:sd a0, 1184(ra)<br> |
| 150|[0x800044b8]<br>0x0000000000000001|- rs1_val==6148914691236517205 and imm_val==3<br>                                                                  |[0x80000bbe]:c.andi a0, 3<br> [0x80000bc0]:sd a0, 1192(ra)<br>  |
| 151|[0x800044c0]<br>0x0000000000000005|- rs1_val==6148914691236517205 and imm_val==5<br>                                                                  |[0x80000be4]:c.andi a0, 5<br> [0x80000be6]:sd a0, 1200(ra)<br>  |
| 152|[0x800044c8]<br>0x0000000000000000|- rs1_val==6148914691236517205 and imm_val==10<br>                                                                 |[0x80000c0a]:c.andi a0, 10<br> [0x80000c0c]:sd a0, 1208(ra)<br> |
| 153|[0x800044d0]<br>0x0000000000000004|- rs1_val==6148914691236517205 and imm_val==6<br>                                                                  |[0x80000c30]:c.andi a0, 6<br> [0x80000c32]:sd a0, 1216(ra)<br>  |
| 154|[0x800044d8]<br>0x5555555555555554|- rs1_val==6148914691236517205 and imm_val==-2<br>                                                                 |[0x80000c56]:c.andi a0, 62<br> [0x80000c58]:sd a0, 1224(ra)<br> |
| 155|[0x800044e0]<br>0x5555555555555551|- rs1_val==6148914691236517205 and imm_val==-5<br>                                                                 |[0x80000c7c]:c.andi a0, 59<br> [0x80000c7e]:sd a0, 1232(ra)<br> |
| 156|[0x800044e8]<br>0x0000000000000000|- rs1_val==6148914691236517205 and imm_val==2<br>                                                                  |[0x80000ca2]:c.andi a0, 2<br> [0x80000ca4]:sd a0, 1240(ra)<br>  |
| 157|[0x800044f0]<br>0x0000000000000004|- rs1_val==6148914691236517205 and imm_val==4<br>                                                                  |[0x80000cc8]:c.andi a0, 4<br> [0x80000cca]:sd a0, 1248(ra)<br>  |
| 158|[0x800044f8]<br>0x0000000000000001|- rs1_val==6148914691236517205 and imm_val==9<br>                                                                  |[0x80000cee]:c.andi a0, 9<br> [0x80000cf0]:sd a0, 1256(ra)<br>  |
| 159|[0x80004500]<br>0x0000000000000000|- rs1_val==6148914691236517205 and imm_val==0<br>                                                                  |[0x80000d14]:c.andi a0, 0<br> [0x80000d16]:sd a0, 1264(ra)<br>  |
| 160|[0x80004508]<br>0x0000000000000001|- rs1_val==6148914691236517205 and imm_val==11<br>                                                                 |[0x80000d3a]:c.andi a0, 11<br> [0x80000d3c]:sd a0, 1272(ra)<br> |
| 161|[0x80004510]<br>0x0000000000000005|- rs1_val==6148914691236517205 and imm_val==7<br>                                                                  |[0x80000d60]:c.andi a0, 7<br> [0x80000d62]:sd a0, 1280(ra)<br>  |
| 162|[0x80004518]<br>0x5555555555555554|- rs1_val==6148914691236517205 and imm_val==-4<br>                                                                 |[0x80000d86]:c.andi a0, 60<br> [0x80000d88]:sd a0, 1288(ra)<br> |
| 163|[0x80004520]<br>0x0000000000000002|- rs1_val==-6148914691236517206 and imm_val==3<br>                                                                 |[0x80000dac]:c.andi a0, 3<br> [0x80000dae]:sd a0, 1296(ra)<br>  |
| 164|[0x80004528]<br>0x0000000000000000|- rs1_val==-6148914691236517206 and imm_val==5<br>                                                                 |[0x80000dd2]:c.andi a0, 5<br> [0x80000dd4]:sd a0, 1304(ra)<br>  |
| 165|[0x80004530]<br>0x000000000000000A|- rs1_val==-6148914691236517206 and imm_val==10<br>                                                                |[0x80000df8]:c.andi a0, 10<br> [0x80000dfa]:sd a0, 1312(ra)<br> |
| 166|[0x80004538]<br>0x0000000000000002|- rs1_val==-6148914691236517206 and imm_val==6<br>                                                                 |[0x80000e1e]:c.andi a0, 6<br> [0x80000e20]:sd a0, 1320(ra)<br>  |
| 167|[0x80004540]<br>0xAAAAAAAAAAAAAAAA|- rs1_val==-6148914691236517206 and imm_val==-2<br>                                                                |[0x80000e44]:c.andi a0, 62<br> [0x80000e46]:sd a0, 1328(ra)<br> |
| 168|[0x80004548]<br>0xAAAAAAAAAAAAAAAA|- rs1_val==-6148914691236517206 and imm_val==-5<br>                                                                |[0x80000e6a]:c.andi a0, 59<br> [0x80000e6c]:sd a0, 1336(ra)<br> |
| 169|[0x80004550]<br>0x0000000000000002|- rs1_val==-6148914691236517206 and imm_val==2<br>                                                                 |[0x80000e90]:c.andi a0, 2<br> [0x80000e92]:sd a0, 1344(ra)<br>  |
| 170|[0x80004558]<br>0x0000000000000000|- rs1_val==-6148914691236517206 and imm_val==4<br>                                                                 |[0x80000eb6]:c.andi a0, 4<br> [0x80000eb8]:sd a0, 1352(ra)<br>  |
| 171|[0x80004560]<br>0x0000000000000000|- rs1_val==-6148914691236517206 and imm_val==0<br>                                                                 |[0x80000edc]:c.andi a0, 0<br> [0x80000ede]:sd a0, 1360(ra)<br>  |
| 172|[0x80004568]<br>0x000000000000000A|- rs1_val==-6148914691236517206 and imm_val==11<br>                                                                |[0x80000f02]:c.andi a0, 11<br> [0x80000f04]:sd a0, 1368(ra)<br> |
| 173|[0x80004570]<br>0x0000000000000002|- rs1_val==-6148914691236517206 and imm_val==7<br>                                                                 |[0x80000f28]:c.andi a0, 7<br> [0x80000f2a]:sd a0, 1376(ra)<br>  |
| 174|[0x80004578]<br>0xAAAAAAAAAAAAAAAA|- rs1_val==-6148914691236517206 and imm_val==-1<br>                                                                |[0x80000f4e]:c.andi a0, 63<br> [0x80000f50]:sd a0, 1384(ra)<br> |
| 175|[0x80004580]<br>0xAAAAAAAAAAAAAAA8|- rs1_val==-6148914691236517206 and imm_val==-4<br>                                                                |[0x80000f74]:c.andi a0, 60<br> [0x80000f76]:sd a0, 1392(ra)<br> |
| 176|[0x80004588]<br>0x0000000000000001|- rs1_val==5 and imm_val==3<br>                                                                                    |[0x80000f7e]:c.andi a0, 3<br> [0x80000f80]:sd a0, 1400(ra)<br>  |
| 177|[0x80004590]<br>0x0000000000000005|- rs1_val==5 and imm_val==5<br>                                                                                    |[0x80000f88]:c.andi a0, 5<br> [0x80000f8a]:sd a0, 1408(ra)<br>  |
| 178|[0x80004598]<br>0x0000000000000000|- rs1_val==5 and imm_val==10<br>                                                                                   |[0x80000f92]:c.andi a0, 10<br> [0x80000f94]:sd a0, 1416(ra)<br> |
| 179|[0x800045a0]<br>0x0000000000000004|- rs1_val==5 and imm_val==6<br>                                                                                    |[0x80000f9c]:c.andi a0, 6<br> [0x80000f9e]:sd a0, 1424(ra)<br>  |
| 180|[0x800045a8]<br>0x0000000000000004|- rs1_val==5 and imm_val==-2<br>                                                                                   |[0x80000fa6]:c.andi a0, 62<br> [0x80000fa8]:sd a0, 1432(ra)<br> |
| 181|[0x800045b0]<br>0x0000000000000001|- rs1_val==5 and imm_val==-5<br>                                                                                   |[0x80000fb0]:c.andi a0, 59<br> [0x80000fb2]:sd a0, 1440(ra)<br> |
| 182|[0x800045b8]<br>0x0000000000000000|- rs1_val==5 and imm_val==2<br>                                                                                    |[0x80000fba]:c.andi a0, 2<br> [0x80000fbc]:sd a0, 1448(ra)<br>  |
| 183|[0x800045c0]<br>0x0000000000000004|- rs1_val==5 and imm_val==4<br>                                                                                    |[0x80000fc4]:c.andi a0, 4<br> [0x80000fc6]:sd a0, 1456(ra)<br>  |
| 184|[0x800045c8]<br>0x0000000000000001|- rs1_val==5 and imm_val==9<br>                                                                                    |[0x80000fce]:c.andi a0, 9<br> [0x80000fd0]:sd a0, 1464(ra)<br>  |
| 185|[0x800045d0]<br>0x0000000000000000|- rs1_val==5 and imm_val==0<br>                                                                                    |[0x80000fd8]:c.andi a0, 0<br> [0x80000fda]:sd a0, 1472(ra)<br>  |
| 186|[0x800045d8]<br>0x0000000000000001|- rs1_val==5 and imm_val==11<br>                                                                                   |[0x80000fe2]:c.andi a0, 11<br> [0x80000fe4]:sd a0, 1480(ra)<br> |
| 187|[0x800045e0]<br>0x0000000000000005|- rs1_val==5 and imm_val==7<br>                                                                                    |[0x80000fec]:c.andi a0, 7<br> [0x80000fee]:sd a0, 1488(ra)<br>  |
| 188|[0x800045e8]<br>0x0000000000000005|- rs1_val==5 and imm_val==-1<br>                                                                                   |[0x80000ff6]:c.andi a0, 63<br> [0x80000ff8]:sd a0, 1496(ra)<br> |
| 189|[0x800045f0]<br>0x0000000000000004|- rs1_val==5 and imm_val==-4<br>                                                                                   |[0x80001000]:c.andi a0, 60<br> [0x80001002]:sd a0, 1504(ra)<br> |
| 190|[0x800045f8]<br>0x0000000000000003|- rs1_val==3689348814741910323 and imm_val==3<br>                                                                  |[0x80001026]:c.andi a0, 3<br> [0x80001028]:sd a0, 1512(ra)<br>  |
| 191|[0x80004600]<br>0x0000000000000001|- rs1_val==3689348814741910323 and imm_val==5<br>                                                                  |[0x8000104c]:c.andi a0, 5<br> [0x8000104e]:sd a0, 1520(ra)<br>  |
| 192|[0x80004608]<br>0x0000000000000002|- rs1_val==3689348814741910323 and imm_val==10<br>                                                                 |[0x80001072]:c.andi a0, 10<br> [0x80001074]:sd a0, 1528(ra)<br> |
| 193|[0x80004610]<br>0x0000000000000002|- rs1_val==3689348814741910323 and imm_val==6<br>                                                                  |[0x80001098]:c.andi a0, 6<br> [0x8000109a]:sd a0, 1536(ra)<br>  |
| 194|[0x80004618]<br>0x3333333333333332|- rs1_val==3689348814741910323 and imm_val==-2<br>                                                                 |[0x800010be]:c.andi a0, 62<br> [0x800010c0]:sd a0, 1544(ra)<br> |
| 195|[0x80004620]<br>0x3333333333333333|- rs1_val==3689348814741910323 and imm_val==-5<br>                                                                 |[0x800010e4]:c.andi a0, 59<br> [0x800010e6]:sd a0, 1552(ra)<br> |
| 196|[0x80004628]<br>0x0000000000000002|- rs1_val==3689348814741910323 and imm_val==2<br>                                                                  |[0x8000110a]:c.andi a0, 2<br> [0x8000110c]:sd a0, 1560(ra)<br>  |
| 197|[0x80004630]<br>0x0000000000000000|- rs1_val==3689348814741910323 and imm_val==4<br>                                                                  |[0x80001130]:c.andi a0, 4<br> [0x80001132]:sd a0, 1568(ra)<br>  |
| 198|[0x80004638]<br>0x0000000000000001|- rs1_val==3689348814741910323 and imm_val==9<br>                                                                  |[0x80001156]:c.andi a0, 9<br> [0x80001158]:sd a0, 1576(ra)<br>  |
| 199|[0x80004640]<br>0x0000000000000000|- rs1_val==3689348814741910323 and imm_val==0<br>                                                                  |[0x8000117c]:c.andi a0, 0<br> [0x8000117e]:sd a0, 1584(ra)<br>  |
| 200|[0x80004648]<br>0x0000000000000003|- rs1_val==3689348814741910323 and imm_val==11<br>                                                                 |[0x800011a2]:c.andi a0, 11<br> [0x800011a4]:sd a0, 1592(ra)<br> |
| 201|[0x80004650]<br>0x0000000000000003|- rs1_val==3689348814741910323 and imm_val==7<br>                                                                  |[0x800011c8]:c.andi a0, 7<br> [0x800011ca]:sd a0, 1600(ra)<br>  |
| 202|[0x80004658]<br>0x3333333333333333|- rs1_val==3689348814741910323 and imm_val==-1<br>                                                                 |[0x800011ee]:c.andi a0, 63<br> [0x800011f0]:sd a0, 1608(ra)<br> |
| 203|[0x80004660]<br>0x3333333333333330|- rs1_val==3689348814741910323 and imm_val==-4<br>                                                                 |[0x80001214]:c.andi a0, 60<br> [0x80001216]:sd a0, 1616(ra)<br> |
| 204|[0x80004668]<br>0x0000000000000002|- rs1_val==7378697629483820646 and imm_val==3<br>                                                                  |[0x8000123a]:c.andi a0, 3<br> [0x8000123c]:sd a0, 1624(ra)<br>  |
| 205|[0x80004670]<br>0x0000000000000004|- rs1_val==7378697629483820646 and imm_val==5<br>                                                                  |[0x80001260]:c.andi a0, 5<br> [0x80001262]:sd a0, 1632(ra)<br>  |
| 206|[0x80004678]<br>0x0000000000000002|- rs1_val==7378697629483820646 and imm_val==10<br>                                                                 |[0x80001286]:c.andi a0, 10<br> [0x80001288]:sd a0, 1640(ra)<br> |
| 207|[0x80004680]<br>0x0000000000000006|- rs1_val==7378697629483820646 and imm_val==6<br>                                                                  |[0x800012ac]:c.andi a0, 6<br> [0x800012ae]:sd a0, 1648(ra)<br>  |
| 208|[0x80004688]<br>0x6666666666666666|- rs1_val==7378697629483820646 and imm_val==-2<br>                                                                 |[0x800012d2]:c.andi a0, 62<br> [0x800012d4]:sd a0, 1656(ra)<br> |
| 209|[0x80004690]<br>0x6666666666666662|- rs1_val==7378697629483820646 and imm_val==-5<br>                                                                 |[0x800012f8]:c.andi a0, 59<br> [0x800012fa]:sd a0, 1664(ra)<br> |
| 210|[0x80004698]<br>0x0000000000000002|- rs1_val==7378697629483820646 and imm_val==2<br>                                                                  |[0x8000131e]:c.andi a0, 2<br> [0x80001320]:sd a0, 1672(ra)<br>  |
| 211|[0x800046a0]<br>0x0000000000000004|- rs1_val==7378697629483820646 and imm_val==4<br>                                                                  |[0x80001344]:c.andi a0, 4<br> [0x80001346]:sd a0, 1680(ra)<br>  |
| 212|[0x800046a8]<br>0x0000000000000000|- rs1_val==7378697629483820646 and imm_val==9<br>                                                                  |[0x8000136a]:c.andi a0, 9<br> [0x8000136c]:sd a0, 1688(ra)<br>  |
| 213|[0x800046b0]<br>0x0000000000000000|- rs1_val==7378697629483820646 and imm_val==0<br>                                                                  |[0x80001390]:c.andi a0, 0<br> [0x80001392]:sd a0, 1696(ra)<br>  |
| 214|[0x800046b8]<br>0x0000000000000002|- rs1_val==7378697629483820646 and imm_val==11<br>                                                                 |[0x800013b6]:c.andi a0, 11<br> [0x800013b8]:sd a0, 1704(ra)<br> |
| 215|[0x800046c0]<br>0x0000000000000006|- rs1_val==7378697629483820646 and imm_val==7<br>                                                                  |[0x800013dc]:c.andi a0, 7<br> [0x800013de]:sd a0, 1712(ra)<br>  |
| 216|[0x800046c8]<br>0x6666666666666666|- rs1_val==7378697629483820646 and imm_val==-1<br>                                                                 |[0x80001402]:c.andi a0, 63<br> [0x80001404]:sd a0, 1720(ra)<br> |
| 217|[0x800046d0]<br>0x6666666666666664|- rs1_val==7378697629483820646 and imm_val==-4<br>                                                                 |[0x80001428]:c.andi a0, 60<br> [0x8000142a]:sd a0, 1728(ra)<br> |
| 218|[0x800046d8]<br>0x0000000000000001|- rs1_val==-3037000499 and imm_val==3<br>                                                                          |[0x8000143e]:c.andi a0, 3<br> [0x80001440]:sd a0, 1736(ra)<br>  |
| 219|[0x800046e0]<br>0x0000000000000005|- rs1_val==-3037000499 and imm_val==5<br>                                                                          |[0x80001454]:c.andi a0, 5<br> [0x80001456]:sd a0, 1744(ra)<br>  |
| 220|[0x800046e8]<br>0x0000000000000008|- rs1_val==-3037000499 and imm_val==10<br>                                                                         |[0x8000146a]:c.andi a0, 10<br> [0x8000146c]:sd a0, 1752(ra)<br> |
| 221|[0x800046f0]<br>0x0000000000000004|- rs1_val==-3037000499 and imm_val==6<br>                                                                          |[0x80001480]:c.andi a0, 6<br> [0x80001482]:sd a0, 1760(ra)<br>  |
| 222|[0x800046f8]<br>0xFFFFFFFF4AFB0CCC|- rs1_val==-3037000499 and imm_val==-2<br>                                                                         |[0x80001496]:c.andi a0, 62<br> [0x80001498]:sd a0, 1768(ra)<br> |
| 223|[0x80004700]<br>0xFFFFFFFF4AFB0CC9|- rs1_val==-3037000499 and imm_val==-5<br>                                                                         |[0x800014ac]:c.andi a0, 59<br> [0x800014ae]:sd a0, 1776(ra)<br> |
| 224|[0x80004708]<br>0x0000000000000000|- rs1_val==-3037000499 and imm_val==2<br>                                                                          |[0x800014c2]:c.andi a0, 2<br> [0x800014c4]:sd a0, 1784(ra)<br>  |
| 225|[0x80004710]<br>0x0000000000000004|- rs1_val==-3037000499 and imm_val==4<br>                                                                          |[0x800014d8]:c.andi a0, 4<br> [0x800014da]:sd a0, 1792(ra)<br>  |
| 226|[0x80004718]<br>0x0000000000000009|- rs1_val==-3037000499 and imm_val==9<br>                                                                          |[0x800014ee]:c.andi a0, 9<br> [0x800014f0]:sd a0, 1800(ra)<br>  |
| 227|[0x80004720]<br>0x0000000000000000|- rs1_val==-3037000499 and imm_val==0<br>                                                                          |[0x80001504]:c.andi a0, 0<br> [0x80001506]:sd a0, 1808(ra)<br>  |
| 228|[0x80004728]<br>0x0000000000000009|- rs1_val==-3037000499 and imm_val==11<br>                                                                         |[0x8000151a]:c.andi a0, 11<br> [0x8000151c]:sd a0, 1816(ra)<br> |
| 229|[0x80004730]<br>0x0000000000000005|- rs1_val==-3037000499 and imm_val==7<br>                                                                          |[0x80001530]:c.andi a0, 7<br> [0x80001532]:sd a0, 1824(ra)<br>  |
| 230|[0x80004738]<br>0xFFFFFFFF4AFB0CCD|- rs1_val==-3037000499 and imm_val==-1<br>                                                                         |[0x80001546]:c.andi a0, 63<br> [0x80001548]:sd a0, 1832(ra)<br> |
| 231|[0x80004740]<br>0xFFFFFFFF4AFB0CCC|- rs1_val==-3037000499 and imm_val==-4<br>                                                                         |[0x8000155c]:c.andi a0, 60<br> [0x8000155e]:sd a0, 1840(ra)<br> |
| 232|[0x80004748]<br>0x0000000000000003|- rs1_val==3037000499 and imm_val==3<br>                                                                           |[0x80001572]:c.andi a0, 3<br> [0x80001574]:sd a0, 1848(ra)<br>  |
| 233|[0x80004750]<br>0x0000000000000001|- rs1_val==3037000499 and imm_val==5<br>                                                                           |[0x80001588]:c.andi a0, 5<br> [0x8000158a]:sd a0, 1856(ra)<br>  |
| 234|[0x80004758]<br>0x0000000000000002|- rs1_val==3037000499 and imm_val==10<br>                                                                          |[0x8000159e]:c.andi a0, 10<br> [0x800015a0]:sd a0, 1864(ra)<br> |
| 235|[0x80004760]<br>0x0000000000000002|- rs1_val==3037000499 and imm_val==6<br>                                                                           |[0x800015b4]:c.andi a0, 6<br> [0x800015b6]:sd a0, 1872(ra)<br>  |
| 236|[0x80004768]<br>0x00000000B504F332|- rs1_val==3037000499 and imm_val==-2<br>                                                                          |[0x800015ca]:c.andi a0, 62<br> [0x800015cc]:sd a0, 1880(ra)<br> |
| 237|[0x80004770]<br>0x00000000B504F333|- rs1_val==3037000499 and imm_val==-5<br>                                                                          |[0x800015e0]:c.andi a0, 59<br> [0x800015e2]:sd a0, 1888(ra)<br> |
| 238|[0x80004778]<br>0x0000000000000002|- rs1_val==3037000499 and imm_val==2<br>                                                                           |[0x800015f6]:c.andi a0, 2<br> [0x800015f8]:sd a0, 1896(ra)<br>  |
| 239|[0x80004780]<br>0x0000000000000000|- rs1_val==3037000499 and imm_val==4<br>                                                                           |[0x8000160c]:c.andi a0, 4<br> [0x8000160e]:sd a0, 1904(ra)<br>  |
| 240|[0x80004788]<br>0x0000000000000001|- rs1_val==3037000499 and imm_val==9<br>                                                                           |[0x80001622]:c.andi a0, 9<br> [0x80001624]:sd a0, 1912(ra)<br>  |
| 241|[0x80004790]<br>0x0000000000000000|- rs1_val==3037000499 and imm_val==0<br>                                                                           |[0x80001638]:c.andi a0, 0<br> [0x8000163a]:sd a0, 1920(ra)<br>  |
| 242|[0x80004798]<br>0x0000000000000003|- rs1_val==3037000499 and imm_val==11<br>                                                                          |[0x8000164e]:c.andi a0, 11<br> [0x80001650]:sd a0, 1928(ra)<br> |
| 243|[0x800047a0]<br>0x0000000000000003|- rs1_val==3037000499 and imm_val==7<br>                                                                           |[0x80001664]:c.andi a0, 7<br> [0x80001666]:sd a0, 1936(ra)<br>  |
| 244|[0x800047a8]<br>0x00000000B504F333|- rs1_val==3037000499 and imm_val==-1<br>                                                                          |[0x8000167a]:c.andi a0, 63<br> [0x8000167c]:sd a0, 1944(ra)<br> |
| 245|[0x800047b0]<br>0x00000000B504F330|- rs1_val==3037000499 and imm_val==-4<br>                                                                          |[0x80001690]:c.andi a0, 60<br> [0x80001692]:sd a0, 1952(ra)<br> |
| 246|[0x800047b8]<br>0x0000000000000002|- rs1_val==2 and imm_val==3<br>                                                                                    |[0x8000169a]:c.andi a0, 3<br> [0x8000169c]:sd a0, 1960(ra)<br>  |
| 247|[0x800047c0]<br>0x0000000000000000|- rs1_val==2 and imm_val==5<br>                                                                                    |[0x800016a4]:c.andi a0, 5<br> [0x800016a6]:sd a0, 1968(ra)<br>  |
| 248|[0x800047c8]<br>0x0000000000000002|- rs1_val==2 and imm_val==10<br>                                                                                   |[0x800016ae]:c.andi a0, 10<br> [0x800016b0]:sd a0, 1976(ra)<br> |
| 249|[0x800047d0]<br>0x0000000000000002|- rs1_val==2 and imm_val==6<br>                                                                                    |[0x800016b8]:c.andi a0, 6<br> [0x800016ba]:sd a0, 1984(ra)<br>  |
| 250|[0x800047d8]<br>0x0000000000000002|- rs1_val==2 and imm_val==-5<br>                                                                                   |[0x800016c2]:c.andi a0, 59<br> [0x800016c4]:sd a0, 1992(ra)<br> |
| 251|[0x800047e0]<br>0x0000000000000002|- rs1_val==2 and imm_val==2<br>                                                                                    |[0x800016cc]:c.andi a0, 2<br> [0x800016ce]:sd a0, 2000(ra)<br>  |
| 252|[0x800047e8]<br>0x0000000000000000|- rs1_val==2 and imm_val==4<br>                                                                                    |[0x800016d6]:c.andi a0, 4<br> [0x800016d8]:sd a0, 2008(ra)<br>  |
| 253|[0x800047f0]<br>0x0000000000000000|- rs1_val==2 and imm_val==9<br>                                                                                    |[0x800016e0]:c.andi a0, 9<br> [0x800016e2]:sd a0, 2016(ra)<br>  |
| 254|[0x800047f8]<br>0x0000000000000000|- rs1_val==2 and imm_val==0<br>                                                                                    |[0x800016ea]:c.andi a0, 0<br> [0x800016ec]:sd a0, 2024(ra)<br>  |
| 255|[0x80004800]<br>0x0000000000000002|- rs1_val==2 and imm_val==11<br>                                                                                   |[0x800016f4]:c.andi a0, 11<br> [0x800016f6]:sd a0, 2032(ra)<br> |
| 256|[0x80004808]<br>0x0000000000000002|- rs1_val==2 and imm_val==7<br>                                                                                    |[0x800016fe]:c.andi a0, 7<br> [0x80001700]:sd a0, 2040(ra)<br>  |
| 257|[0x80004810]<br>0x0000000000000002|- rs1_val==2 and imm_val==-1<br>                                                                                   |[0x80001710]:c.andi a0, 63<br> [0x80001712]:sd a0, 0(ra)<br>    |
| 258|[0x80004818]<br>0x0000000000000000|- rs1_val==2 and imm_val==-4<br>                                                                                   |[0x8000171a]:c.andi a0, 60<br> [0x8000171c]:sd a0, 8(ra)<br>    |
| 259|[0x80004820]<br>0x0000000000000000|- rs1_val==6148914691236517204 and imm_val==3<br>                                                                  |[0x80001740]:c.andi a0, 3<br> [0x80001742]:sd a0, 16(ra)<br>    |
| 260|[0x80004828]<br>0x0000000000000004|- rs1_val==6148914691236517204 and imm_val==5<br>                                                                  |[0x80001766]:c.andi a0, 5<br> [0x80001768]:sd a0, 24(ra)<br>    |
| 261|[0x80004830]<br>0x0000000000000000|- rs1_val==6148914691236517204 and imm_val==10<br>                                                                 |[0x8000178c]:c.andi a0, 10<br> [0x8000178e]:sd a0, 32(ra)<br>   |
| 262|[0x80004838]<br>0x0000000000000004|- rs1_val==6148914691236517204 and imm_val==6<br>                                                                  |[0x800017b2]:c.andi a0, 6<br> [0x800017b4]:sd a0, 40(ra)<br>    |
| 263|[0x80004840]<br>0x5555555555555554|- rs1_val==6148914691236517204 and imm_val==-2<br>                                                                 |[0x800017d8]:c.andi a0, 62<br> [0x800017da]:sd a0, 48(ra)<br>   |
| 264|[0x80004848]<br>0x5555555555555550|- rs1_val==6148914691236517204 and imm_val==-5<br>                                                                 |[0x800017fe]:c.andi a0, 59<br> [0x80001800]:sd a0, 56(ra)<br>   |
| 265|[0x80004850]<br>0x0000000000000000|- rs1_val==6148914691236517204 and imm_val==2<br>                                                                  |[0x80001824]:c.andi a0, 2<br> [0x80001826]:sd a0, 64(ra)<br>    |
| 266|[0x80004858]<br>0x0000000000000004|- rs1_val==6148914691236517204 and imm_val==4<br>                                                                  |[0x8000184a]:c.andi a0, 4<br> [0x8000184c]:sd a0, 72(ra)<br>    |
| 267|[0x80004860]<br>0x0000000000000000|- rs1_val==6148914691236517204 and imm_val==9<br>                                                                  |[0x80001870]:c.andi a0, 9<br> [0x80001872]:sd a0, 80(ra)<br>    |
| 268|[0x80004868]<br>0x0000000000000000|- rs1_val==6148914691236517204 and imm_val==0<br>                                                                  |[0x80001896]:c.andi a0, 0<br> [0x80001898]:sd a0, 88(ra)<br>    |
| 269|[0x80004870]<br>0x0000000000000000|- rs1_val==6148914691236517204 and imm_val==11<br>                                                                 |[0x800018bc]:c.andi a0, 11<br> [0x800018be]:sd a0, 96(ra)<br>   |
| 270|[0x80004878]<br>0x0000000000000004|- rs1_val==6148914691236517204 and imm_val==7<br>                                                                  |[0x800018e2]:c.andi a0, 7<br> [0x800018e4]:sd a0, 104(ra)<br>   |
| 271|[0x80004880]<br>0x5555555555555554|- rs1_val==6148914691236517204 and imm_val==-1<br>                                                                 |[0x80001908]:c.andi a0, 63<br> [0x8000190a]:sd a0, 112(ra)<br>  |
| 272|[0x80004888]<br>0x5555555555555554|- rs1_val==6148914691236517204 and imm_val==-4<br>                                                                 |[0x8000192e]:c.andi a0, 60<br> [0x80001930]:sd a0, 120(ra)<br>  |
| 273|[0x80004890]<br>0x0000000000000000|- rs1_val==0 and imm_val==3<br>                                                                                    |[0x80001938]:c.andi a0, 3<br> [0x8000193a]:sd a0, 128(ra)<br>   |
| 274|[0x80004898]<br>0x0000000000000000|- rs1_val==0 and imm_val==5<br>                                                                                    |[0x80001942]:c.andi a0, 5<br> [0x80001944]:sd a0, 136(ra)<br>   |
| 275|[0x800048a0]<br>0x0000000000000000|- rs1_val==0 and imm_val==10<br>                                                                                   |[0x8000194c]:c.andi a0, 10<br> [0x8000194e]:sd a0, 144(ra)<br>  |
| 276|[0x800048a8]<br>0x0000000000000000|- rs1_val==0 and imm_val==6<br>                                                                                    |[0x80001956]:c.andi a0, 6<br> [0x80001958]:sd a0, 152(ra)<br>   |
| 277|[0x800048b0]<br>0x0000000000000000|- rs1_val==0 and imm_val==-2<br>                                                                                   |[0x80001960]:c.andi a0, 62<br> [0x80001962]:sd a0, 160(ra)<br>  |
| 278|[0x800048b8]<br>0x0000000000000000|- rs1_val==0 and imm_val==-5<br>                                                                                   |[0x8000196a]:c.andi a0, 59<br> [0x8000196c]:sd a0, 168(ra)<br>  |
| 279|[0x800048c0]<br>0x0000000000000000|- rs1_val==0 and imm_val==2<br>                                                                                    |[0x80001974]:c.andi a0, 2<br> [0x80001976]:sd a0, 176(ra)<br>   |
| 280|[0x800048c8]<br>0x0000000000000000|- rs1_val==0 and imm_val==4<br>                                                                                    |[0x8000197e]:c.andi a0, 4<br> [0x80001980]:sd a0, 184(ra)<br>   |
| 281|[0x800048d0]<br>0x0000000000000000|- rs1_val==0 and imm_val==9<br>                                                                                    |[0x80001988]:c.andi a0, 9<br> [0x8000198a]:sd a0, 192(ra)<br>   |
| 282|[0x800048d8]<br>0x0000000000000000|- rs1_val==0 and imm_val==0<br>                                                                                    |[0x80001992]:c.andi a0, 0<br> [0x80001994]:sd a0, 200(ra)<br>   |
| 283|[0x800048e0]<br>0x0000000000000000|- rs1_val==0 and imm_val==11<br>                                                                                   |[0x8000199c]:c.andi a0, 11<br> [0x8000199e]:sd a0, 208(ra)<br>  |
| 284|[0x800048e8]<br>0x0000000000000000|- rs1_val==0 and imm_val==7<br>                                                                                    |[0x800019a6]:c.andi a0, 7<br> [0x800019a8]:sd a0, 216(ra)<br>   |
| 285|[0x800048f0]<br>0x0000000000000000|- rs1_val==0 and imm_val==-1<br>                                                                                   |[0x800019b0]:c.andi a0, 63<br> [0x800019b2]:sd a0, 224(ra)<br>  |
| 286|[0x800048f8]<br>0x0000000000000000|- rs1_val==0 and imm_val==-4<br>                                                                                   |[0x800019ba]:c.andi a0, 60<br> [0x800019bc]:sd a0, 232(ra)<br>  |
| 287|[0x80004900]<br>0x0000000000000000|- rs1_val==4 and imm_val==3<br>                                                                                    |[0x800019c4]:c.andi a0, 3<br> [0x800019c6]:sd a0, 240(ra)<br>   |
| 288|[0x80004908]<br>0x0000000000000004|- rs1_val==4 and imm_val==5<br>                                                                                    |[0x800019ce]:c.andi a0, 5<br> [0x800019d0]:sd a0, 248(ra)<br>   |
| 289|[0x80004910]<br>0x0000000000000000|- rs1_val==4 and imm_val==10<br>                                                                                   |[0x800019d8]:c.andi a0, 10<br> [0x800019da]:sd a0, 256(ra)<br>  |
| 290|[0x80004918]<br>0x0000000000000004|- rs1_val==4 and imm_val==6<br>                                                                                    |[0x800019e2]:c.andi a0, 6<br> [0x800019e4]:sd a0, 264(ra)<br>   |
| 291|[0x80004920]<br>0x0000000000000004|- rs1_val==4 and imm_val==-2<br>                                                                                   |[0x800019ec]:c.andi a0, 62<br> [0x800019ee]:sd a0, 272(ra)<br>  |
| 292|[0x80004928]<br>0x0000000000000000|- rs1_val==4 and imm_val==-5<br>                                                                                   |[0x800019f6]:c.andi a0, 59<br> [0x800019f8]:sd a0, 280(ra)<br>  |
| 293|[0x80004930]<br>0x0000000000000000|- rs1_val==4 and imm_val==2<br>                                                                                    |[0x80001a00]:c.andi a0, 2<br> [0x80001a02]:sd a0, 288(ra)<br>   |
| 294|[0x80004938]<br>0x0000000000000004|- rs1_val==4 and imm_val==4<br>                                                                                    |[0x80001a0a]:c.andi a0, 4<br> [0x80001a0c]:sd a0, 296(ra)<br>   |
| 295|[0x80004940]<br>0x0000000000000000|- rs1_val==4 and imm_val==9<br>                                                                                    |[0x80001a14]:c.andi a0, 9<br> [0x80001a16]:sd a0, 304(ra)<br>   |
| 296|[0x80004948]<br>0x0000000000000000|- rs1_val==4 and imm_val==0<br>                                                                                    |[0x80001a1e]:c.andi a0, 0<br> [0x80001a20]:sd a0, 312(ra)<br>   |
| 297|[0x80004950]<br>0x0000000000000000|- rs1_val==4 and imm_val==11<br>                                                                                   |[0x80001a28]:c.andi a0, 11<br> [0x80001a2a]:sd a0, 320(ra)<br>  |
| 298|[0x80004958]<br>0x0000000000000004|- rs1_val==4 and imm_val==7<br>                                                                                    |[0x80001a32]:c.andi a0, 7<br> [0x80001a34]:sd a0, 328(ra)<br>   |
| 299|[0x80004960]<br>0x0000000000000004|- rs1_val==4 and imm_val==-1<br>                                                                                   |[0x80001a3c]:c.andi a0, 63<br> [0x80001a3e]:sd a0, 336(ra)<br>  |
| 300|[0x80004968]<br>0x0000000000000004|- rs1_val==4 and imm_val==-4<br>                                                                                   |[0x80001a46]:c.andi a0, 60<br> [0x80001a48]:sd a0, 344(ra)<br>  |
| 301|[0x80004970]<br>0x0000000000000002|- rs1_val==3689348814741910322 and imm_val==3<br>                                                                  |[0x80001a6c]:c.andi a0, 3<br> [0x80001a6e]:sd a0, 352(ra)<br>   |
| 302|[0x80004978]<br>0x0000000000000000|- rs1_val==3689348814741910322 and imm_val==5<br>                                                                  |[0x80001a92]:c.andi a0, 5<br> [0x80001a94]:sd a0, 360(ra)<br>   |
| 303|[0x80004980]<br>0x0000000000000002|- rs1_val==3689348814741910322 and imm_val==10<br>                                                                 |[0x80001ab8]:c.andi a0, 10<br> [0x80001aba]:sd a0, 368(ra)<br>  |
| 304|[0x80004988]<br>0x0000000000000002|- rs1_val==3689348814741910322 and imm_val==6<br>                                                                  |[0x80001ade]:c.andi a0, 6<br> [0x80001ae0]:sd a0, 376(ra)<br>   |
| 305|[0x80004990]<br>0x3333333333333332|- rs1_val==3689348814741910322 and imm_val==-2<br>                                                                 |[0x80001b04]:c.andi a0, 62<br> [0x80001b06]:sd a0, 384(ra)<br>  |
| 306|[0x80004998]<br>0x3333333333333332|- rs1_val==3689348814741910322 and imm_val==-5<br>                                                                 |[0x80001b2a]:c.andi a0, 59<br> [0x80001b2c]:sd a0, 392(ra)<br>  |
| 307|[0x800049a0]<br>0x0000000000000002|- rs1_val==3689348814741910322 and imm_val==2<br>                                                                  |[0x80001b50]:c.andi a0, 2<br> [0x80001b52]:sd a0, 400(ra)<br>   |
| 308|[0x800049a8]<br>0x0000000000000000|- rs1_val==3689348814741910322 and imm_val==4<br>                                                                  |[0x80001b76]:c.andi a0, 4<br> [0x80001b78]:sd a0, 408(ra)<br>   |
| 309|[0x800049b0]<br>0x0000000000000000|- rs1_val==3689348814741910322 and imm_val==9<br>                                                                  |[0x80001b9c]:c.andi a0, 9<br> [0x80001b9e]:sd a0, 416(ra)<br>   |
| 310|[0x800049b8]<br>0x0000000000000000|- rs1_val==3689348814741910322 and imm_val==0<br>                                                                  |[0x80001bc2]:c.andi a0, 0<br> [0x80001bc4]:sd a0, 424(ra)<br>   |
| 311|[0x800049c0]<br>0x0000000000000002|- rs1_val==3689348814741910322 and imm_val==11<br>                                                                 |[0x80001be8]:c.andi a0, 11<br> [0x80001bea]:sd a0, 432(ra)<br>  |
| 312|[0x800049c8]<br>0x0000000000000002|- rs1_val==3689348814741910322 and imm_val==7<br>                                                                  |[0x80001c0e]:c.andi a0, 7<br> [0x80001c10]:sd a0, 440(ra)<br>   |
| 313|[0x800049d0]<br>0x3333333333333332|- rs1_val==3689348814741910322 and imm_val==-1<br>                                                                 |[0x80001c34]:c.andi a0, 63<br> [0x80001c36]:sd a0, 448(ra)<br>  |
| 314|[0x800049d8]<br>0x3333333333333330|- rs1_val==3689348814741910322 and imm_val==-4<br>                                                                 |[0x80001c5a]:c.andi a0, 60<br> [0x80001c5c]:sd a0, 456(ra)<br>  |
| 315|[0x800049e0]<br>0x0000000000000001|- rs1_val==7378697629483820645 and imm_val==3<br>                                                                  |[0x80001c80]:c.andi a0, 3<br> [0x80001c82]:sd a0, 464(ra)<br>   |
| 316|[0x800049e8]<br>0x0000000000000005|- rs1_val==7378697629483820645 and imm_val==5<br>                                                                  |[0x80001ca6]:c.andi a0, 5<br> [0x80001ca8]:sd a0, 472(ra)<br>   |
| 317|[0x800049f0]<br>0x0000000000000000|- rs1_val==7378697629483820645 and imm_val==10<br>                                                                 |[0x80001ccc]:c.andi a0, 10<br> [0x80001cce]:sd a0, 480(ra)<br>  |
| 318|[0x800049f8]<br>0x0000000000000004|- rs1_val==7378697629483820645 and imm_val==6<br>                                                                  |[0x80001cf2]:c.andi a0, 6<br> [0x80001cf4]:sd a0, 488(ra)<br>   |
| 319|[0x80004a00]<br>0x6666666666666664|- rs1_val==7378697629483820645 and imm_val==-2<br>                                                                 |[0x80001d18]:c.andi a0, 62<br> [0x80001d1a]:sd a0, 496(ra)<br>  |
| 320|[0x80004a08]<br>0x6666666666666661|- rs1_val==7378697629483820645 and imm_val==-5<br>                                                                 |[0x80001d3e]:c.andi a0, 59<br> [0x80001d40]:sd a0, 504(ra)<br>  |
| 321|[0x80004a10]<br>0x0000000000000000|- rs1_val==7378697629483820645 and imm_val==2<br>                                                                  |[0x80001d64]:c.andi a0, 2<br> [0x80001d66]:sd a0, 512(ra)<br>   |
| 322|[0x80004a18]<br>0x0000000000000004|- rs1_val==7378697629483820645 and imm_val==4<br>                                                                  |[0x80001d8a]:c.andi a0, 4<br> [0x80001d8c]:sd a0, 520(ra)<br>   |
| 323|[0x80004a20]<br>0x0000000000000001|- rs1_val==7378697629483820645 and imm_val==9<br>                                                                  |[0x80001db0]:c.andi a0, 9<br> [0x80001db2]:sd a0, 528(ra)<br>   |
| 324|[0x80004a28]<br>0x0000000000000000|- rs1_val==7378697629483820645 and imm_val==0<br>                                                                  |[0x80001dd6]:c.andi a0, 0<br> [0x80001dd8]:sd a0, 536(ra)<br>   |
| 325|[0x80004a30]<br>0x0000000000000001|- rs1_val==7378697629483820645 and imm_val==11<br>                                                                 |[0x80001dfc]:c.andi a0, 11<br> [0x80001dfe]:sd a0, 544(ra)<br>  |
| 326|[0x80004a38]<br>0x0000000000000005|- rs1_val==7378697629483820645 and imm_val==7<br>                                                                  |[0x80001e22]:c.andi a0, 7<br> [0x80001e24]:sd a0, 552(ra)<br>   |
| 327|[0x80004a40]<br>0x6666666666666665|- rs1_val==7378697629483820645 and imm_val==-1<br>                                                                 |[0x80001e48]:c.andi a0, 63<br> [0x80001e4a]:sd a0, 560(ra)<br>  |
| 328|[0x80004a48]<br>0x6666666666666664|- rs1_val==7378697629483820645 and imm_val==-4<br>                                                                 |[0x80001e6e]:c.andi a0, 60<br> [0x80001e70]:sd a0, 568(ra)<br>  |
| 329|[0x80004a50]<br>0x0000000000000002|- rs1_val==3037000498 and imm_val==3<br>                                                                           |[0x80001e84]:c.andi a0, 3<br> [0x80001e86]:sd a0, 576(ra)<br>   |
| 330|[0x80004a58]<br>0x0000000000000000|- rs1_val==3037000498 and imm_val==5<br>                                                                           |[0x80001e9a]:c.andi a0, 5<br> [0x80001e9c]:sd a0, 584(ra)<br>   |
| 331|[0x80004a60]<br>0x0000000000000002|- rs1_val==3037000498 and imm_val==10<br>                                                                          |[0x80001eb0]:c.andi a0, 10<br> [0x80001eb2]:sd a0, 592(ra)<br>  |
| 332|[0x80004a68]<br>0x0000000000000002|- rs1_val==3037000498 and imm_val==6<br>                                                                           |[0x80001ec6]:c.andi a0, 6<br> [0x80001ec8]:sd a0, 600(ra)<br>   |
| 333|[0x80004a70]<br>0x00000000B504F332|- rs1_val==3037000498 and imm_val==-2<br>                                                                          |[0x80001edc]:c.andi a0, 62<br> [0x80001ede]:sd a0, 608(ra)<br>  |
| 334|[0x80004a78]<br>0x00000000B504F332|- rs1_val==3037000498 and imm_val==-5<br>                                                                          |[0x80001ef2]:c.andi a0, 59<br> [0x80001ef4]:sd a0, 616(ra)<br>  |
| 335|[0x80004a80]<br>0x0000000000000002|- rs1_val==3037000498 and imm_val==2<br>                                                                           |[0x80001f08]:c.andi a0, 2<br> [0x80001f0a]:sd a0, 624(ra)<br>   |
| 336|[0x80004a88]<br>0x0000000000000000|- rs1_val==3037000498 and imm_val==4<br>                                                                           |[0x80001f1e]:c.andi a0, 4<br> [0x80001f20]:sd a0, 632(ra)<br>   |
| 337|[0x80004a90]<br>0x0000000000000000|- rs1_val==3037000498 and imm_val==9<br>                                                                           |[0x80001f34]:c.andi a0, 9<br> [0x80001f36]:sd a0, 640(ra)<br>   |
| 338|[0x80004a98]<br>0x0000000000000000|- rs1_val==3037000498 and imm_val==0<br>                                                                           |[0x80001f4a]:c.andi a0, 0<br> [0x80001f4c]:sd a0, 648(ra)<br>   |
| 339|[0x80004aa0]<br>0x0000000000000002|- rs1_val==3037000498 and imm_val==11<br>                                                                          |[0x80001f60]:c.andi a0, 11<br> [0x80001f62]:sd a0, 656(ra)<br>  |
| 340|[0x80004aa8]<br>0x0000000000000002|- rs1_val==3037000498 and imm_val==7<br>                                                                           |[0x80001f76]:c.andi a0, 7<br> [0x80001f78]:sd a0, 664(ra)<br>   |
| 341|[0x80004ab0]<br>0x00000000B504F332|- rs1_val==3037000498 and imm_val==-1<br>                                                                          |[0x80001f8c]:c.andi a0, 63<br> [0x80001f8e]:sd a0, 672(ra)<br>  |
| 342|[0x80004ab8]<br>0x00000000B504F330|- rs1_val==3037000498 and imm_val==-4<br>                                                                          |[0x80001fa2]:c.andi a0, 60<br> [0x80001fa4]:sd a0, 680(ra)<br>  |
| 343|[0x80004ac0]<br>0x0000000000000002|- rs1_val==6148914691236517206 and imm_val==3<br>                                                                  |[0x80001fc8]:c.andi a0, 3<br> [0x80001fca]:sd a0, 688(ra)<br>   |
| 344|[0x80004ac8]<br>0x0000000000000004|- rs1_val==6148914691236517206 and imm_val==5<br>                                                                  |[0x80001fee]:c.andi a0, 5<br> [0x80001ff0]:sd a0, 696(ra)<br>   |
| 345|[0x80004ad0]<br>0x0000000000000002|- rs1_val==6148914691236517206 and imm_val==10<br>                                                                 |[0x80002014]:c.andi a0, 10<br> [0x80002016]:sd a0, 704(ra)<br>  |
| 346|[0x80004ad8]<br>0x0000000000000006|- rs1_val==6148914691236517206 and imm_val==6<br>                                                                  |[0x8000203a]:c.andi a0, 6<br> [0x8000203c]:sd a0, 712(ra)<br>   |
| 347|[0x80004ae0]<br>0x5555555555555556|- rs1_val==6148914691236517206 and imm_val==-2<br>                                                                 |[0x80002060]:c.andi a0, 62<br> [0x80002062]:sd a0, 720(ra)<br>  |
| 348|[0x80004ae8]<br>0x5555555555555552|- rs1_val==6148914691236517206 and imm_val==-5<br>                                                                 |[0x80002086]:c.andi a0, 59<br> [0x80002088]:sd a0, 728(ra)<br>  |
| 349|[0x80004af0]<br>0x0000000000000002|- rs1_val==6148914691236517206 and imm_val==2<br>                                                                  |[0x800020ac]:c.andi a0, 2<br> [0x800020ae]:sd a0, 736(ra)<br>   |
| 350|[0x80004af8]<br>0x0000000000000004|- rs1_val==6148914691236517206 and imm_val==4<br>                                                                  |[0x800020d2]:c.andi a0, 4<br> [0x800020d4]:sd a0, 744(ra)<br>   |
| 351|[0x80004b00]<br>0x0000000000000000|- rs1_val==6148914691236517206 and imm_val==9<br>                                                                  |[0x800020f8]:c.andi a0, 9<br> [0x800020fa]:sd a0, 752(ra)<br>   |
| 352|[0x80004b08]<br>0x0000000000000000|- rs1_val==6148914691236517206 and imm_val==0<br>                                                                  |[0x8000211e]:c.andi a0, 0<br> [0x80002120]:sd a0, 760(ra)<br>   |
| 353|[0x80004b10]<br>0x0000000000000002|- rs1_val==6148914691236517206 and imm_val==11<br>                                                                 |[0x80002144]:c.andi a0, 11<br> [0x80002146]:sd a0, 768(ra)<br>  |
| 354|[0x80004b18]<br>0x0000000000000006|- rs1_val==6148914691236517206 and imm_val==7<br>                                                                  |[0x8000216a]:c.andi a0, 7<br> [0x8000216c]:sd a0, 776(ra)<br>   |
| 355|[0x80004b20]<br>0x5555555555555556|- rs1_val==6148914691236517206 and imm_val==-1<br>                                                                 |[0x80002190]:c.andi a0, 63<br> [0x80002192]:sd a0, 784(ra)<br>  |
| 356|[0x80004b28]<br>0x5555555555555554|- rs1_val==6148914691236517206 and imm_val==-4<br>                                                                 |[0x800021b6]:c.andi a0, 60<br> [0x800021b8]:sd a0, 792(ra)<br>  |
| 357|[0x80004b30]<br>0x0000000000000003|- rs1_val==-6148914691236517205 and imm_val==3<br>                                                                 |[0x800021dc]:c.andi a0, 3<br> [0x800021de]:sd a0, 800(ra)<br>   |
| 358|[0x80004b38]<br>0x0000000000000001|- rs1_val==-6148914691236517205 and imm_val==5<br>                                                                 |[0x80002202]:c.andi a0, 5<br> [0x80002204]:sd a0, 808(ra)<br>   |
| 359|[0x80004b40]<br>0x000000000000000A|- rs1_val==-6148914691236517205 and imm_val==10<br>                                                                |[0x80002228]:c.andi a0, 10<br> [0x8000222a]:sd a0, 816(ra)<br>  |
| 360|[0x80004b48]<br>0x0000000000000002|- rs1_val==-6148914691236517205 and imm_val==6<br>                                                                 |[0x8000224e]:c.andi a0, 6<br> [0x80002250]:sd a0, 824(ra)<br>   |
| 361|[0x80004b50]<br>0xAAAAAAAAAAAAAAAA|- rs1_val==-6148914691236517205 and imm_val==-2<br>                                                                |[0x80002274]:c.andi a0, 62<br> [0x80002276]:sd a0, 832(ra)<br>  |
| 362|[0x80004b58]<br>0xAAAAAAAAAAAAAAAB|- rs1_val==-6148914691236517205 and imm_val==-5<br>                                                                |[0x8000229a]:c.andi a0, 59<br> [0x8000229c]:sd a0, 840(ra)<br>  |
| 363|[0x80004b60]<br>0x0000000000000002|- rs1_val==-6148914691236517205 and imm_val==2<br>                                                                 |[0x800022c0]:c.andi a0, 2<br> [0x800022c2]:sd a0, 848(ra)<br>   |
| 364|[0x80004b68]<br>0x0000000000000009|- rs1_val==-6148914691236517205 and imm_val==9<br>                                                                 |[0x800022e6]:c.andi a0, 9<br> [0x800022e8]:sd a0, 856(ra)<br>   |
| 365|[0x80004b70]<br>0x0000000000000000|- rs1_val==-6148914691236517205 and imm_val==0<br>                                                                 |[0x8000230c]:c.andi a0, 0<br> [0x8000230e]:sd a0, 864(ra)<br>   |
| 366|[0x80004b78]<br>0x000000000000000B|- rs1_val==-6148914691236517205 and imm_val==11<br>                                                                |[0x80002332]:c.andi a0, 11<br> [0x80002334]:sd a0, 872(ra)<br>  |
| 367|[0x80004b80]<br>0x0000000000000003|- rs1_val==-6148914691236517205 and imm_val==7<br>                                                                 |[0x80002358]:c.andi a0, 7<br> [0x8000235a]:sd a0, 880(ra)<br>   |
| 368|[0x80004b88]<br>0xAAAAAAAAAAAAAAAB|- rs1_val==-6148914691236517205 and imm_val==-1<br>                                                                |[0x8000237e]:c.andi a0, 63<br> [0x80002380]:sd a0, 888(ra)<br>  |
| 369|[0x80004b90]<br>0xAAAAAAAAAAAAAAA8|- rs1_val==-6148914691236517205 and imm_val==-4<br>                                                                |[0x800023a4]:c.andi a0, 60<br> [0x800023a6]:sd a0, 896(ra)<br>  |
| 370|[0x80004b98]<br>0x0000000000000002|- rs1_val==6 and imm_val==3<br>                                                                                    |[0x800023ae]:c.andi a0, 3<br> [0x800023b0]:sd a0, 904(ra)<br>   |
| 371|[0x80004ba0]<br>0x0000000000000004|- rs1_val==6 and imm_val==5<br>                                                                                    |[0x800023b8]:c.andi a0, 5<br> [0x800023ba]:sd a0, 912(ra)<br>   |
| 372|[0x80004ba8]<br>0x0000000000000002|- rs1_val==6 and imm_val==10<br>                                                                                   |[0x800023c2]:c.andi a0, 10<br> [0x800023c4]:sd a0, 920(ra)<br>  |
| 373|[0x80004bb0]<br>0x0000000000000006|- rs1_val==6 and imm_val==6<br>                                                                                    |[0x800023cc]:c.andi a0, 6<br> [0x800023ce]:sd a0, 928(ra)<br>   |
| 374|[0x80004bb8]<br>0x0000000000000006|- rs1_val==6 and imm_val==-2<br>                                                                                   |[0x800023d6]:c.andi a0, 62<br> [0x800023d8]:sd a0, 936(ra)<br>  |
| 375|[0x80004bc0]<br>0x0000000000000002|- rs1_val==6 and imm_val==-5<br>                                                                                   |[0x800023e0]:c.andi a0, 59<br> [0x800023e2]:sd a0, 944(ra)<br>  |
| 376|[0x80004bc8]<br>0x0000000000000002|- rs1_val==6 and imm_val==2<br>                                                                                    |[0x800023ea]:c.andi a0, 2<br> [0x800023ec]:sd a0, 952(ra)<br>   |
| 377|[0x80004bd0]<br>0x0000000000000004|- rs1_val==6 and imm_val==4<br>                                                                                    |[0x800023f4]:c.andi a0, 4<br> [0x800023f6]:sd a0, 960(ra)<br>   |
| 378|[0x80004bd8]<br>0x0000000000000000|- rs1_val==6 and imm_val==9<br>                                                                                    |[0x800023fe]:c.andi a0, 9<br> [0x80002400]:sd a0, 968(ra)<br>   |
| 379|[0x80004be0]<br>0x0000000000000000|- rs1_val==6 and imm_val==0<br>                                                                                    |[0x80002408]:c.andi a0, 0<br> [0x8000240a]:sd a0, 976(ra)<br>   |
| 380|[0x80004be8]<br>0x0000000000000002|- rs1_val==6 and imm_val==11<br>                                                                                   |[0x80002412]:c.andi a0, 11<br> [0x80002414]:sd a0, 984(ra)<br>  |
| 381|[0x80004bf0]<br>0x0000000000000006|- rs1_val==6 and imm_val==7<br>                                                                                    |[0x8000241c]:c.andi a0, 7<br> [0x8000241e]:sd a0, 992(ra)<br>   |
| 382|[0x80004bf8]<br>0x0000000000000006|- rs1_val==6 and imm_val==-1<br>                                                                                   |[0x80002426]:c.andi a0, 63<br> [0x80002428]:sd a0, 1000(ra)<br> |
| 383|[0x80004c00]<br>0x0000000000000004|- rs1_val==6 and imm_val==-4<br>                                                                                   |[0x80002430]:c.andi a0, 60<br> [0x80002432]:sd a0, 1008(ra)<br> |
| 384|[0x80004c08]<br>0x0000000000000000|- rs1_val==3689348814741910324 and imm_val==3<br>                                                                  |[0x80002456]:c.andi a0, 3<br> [0x80002458]:sd a0, 1016(ra)<br>  |
| 385|[0x80004c10]<br>0x0000000000000004|- rs1_val==3689348814741910324 and imm_val==5<br>                                                                  |[0x8000247c]:c.andi a0, 5<br> [0x8000247e]:sd a0, 1024(ra)<br>  |
| 386|[0x80004c18]<br>0x0000000000000000|- rs1_val==3689348814741910324 and imm_val==10<br>                                                                 |[0x800024a2]:c.andi a0, 10<br> [0x800024a4]:sd a0, 1032(ra)<br> |
| 387|[0x80004c20]<br>0x0000000000000004|- rs1_val==3689348814741910324 and imm_val==6<br>                                                                  |[0x800024c8]:c.andi a0, 6<br> [0x800024ca]:sd a0, 1040(ra)<br>  |
| 388|[0x80004c28]<br>0x3333333333333334|- rs1_val==3689348814741910324 and imm_val==-2<br>                                                                 |[0x800024ee]:c.andi a0, 62<br> [0x800024f0]:sd a0, 1048(ra)<br> |
| 389|[0x80004c30]<br>0x3333333333333330|- rs1_val==3689348814741910324 and imm_val==-5<br>                                                                 |[0x80002514]:c.andi a0, 59<br> [0x80002516]:sd a0, 1056(ra)<br> |
| 390|[0x80004c38]<br>0x0000000000000000|- rs1_val==3689348814741910324 and imm_val==2<br>                                                                  |[0x8000253a]:c.andi a0, 2<br> [0x8000253c]:sd a0, 1064(ra)<br>  |
| 391|[0x80004c40]<br>0x0000000000000004|- rs1_val==3689348814741910324 and imm_val==4<br>                                                                  |[0x80002560]:c.andi a0, 4<br> [0x80002562]:sd a0, 1072(ra)<br>  |
| 392|[0x80004c48]<br>0x0000000000000000|- rs1_val==3689348814741910324 and imm_val==9<br>                                                                  |[0x80002586]:c.andi a0, 9<br> [0x80002588]:sd a0, 1080(ra)<br>  |
| 393|[0x80004c50]<br>0x0000000000000000|- rs1_val==3689348814741910324 and imm_val==0<br>                                                                  |[0x800025ac]:c.andi a0, 0<br> [0x800025ae]:sd a0, 1088(ra)<br>  |
| 394|[0x80004c58]<br>0x0000000000000000|- rs1_val==3689348814741910324 and imm_val==11<br>                                                                 |[0x800025d2]:c.andi a0, 11<br> [0x800025d4]:sd a0, 1096(ra)<br> |
| 395|[0x80004c60]<br>0x0000000000000004|- rs1_val==3689348814741910324 and imm_val==7<br>                                                                  |[0x800025f8]:c.andi a0, 7<br> [0x800025fa]:sd a0, 1104(ra)<br>  |
| 396|[0x80004c68]<br>0x3333333333333334|- rs1_val==3689348814741910324 and imm_val==-1<br>                                                                 |[0x8000261e]:c.andi a0, 63<br> [0x80002620]:sd a0, 1112(ra)<br> |
| 397|[0x80004c70]<br>0x3333333333333334|- rs1_val==3689348814741910324 and imm_val==-4<br>                                                                 |[0x80002644]:c.andi a0, 60<br> [0x80002646]:sd a0, 1120(ra)<br> |
| 398|[0x80004c78]<br>0x0000000000000003|- rs1_val==7378697629483820647 and imm_val==3<br>                                                                  |[0x8000266a]:c.andi a0, 3<br> [0x8000266c]:sd a0, 1128(ra)<br>  |
| 399|[0x80004c80]<br>0x0000000000000005|- rs1_val==7378697629483820647 and imm_val==5<br>                                                                  |[0x80002690]:c.andi a0, 5<br> [0x80002692]:sd a0, 1136(ra)<br>  |
| 400|[0x80004c88]<br>0x0000000000000002|- rs1_val==7378697629483820647 and imm_val==10<br>                                                                 |[0x800026b6]:c.andi a0, 10<br> [0x800026b8]:sd a0, 1144(ra)<br> |
| 401|[0x80004c90]<br>0x0000000000000006|- rs1_val==7378697629483820647 and imm_val==6<br>                                                                  |[0x800026dc]:c.andi a0, 6<br> [0x800026de]:sd a0, 1152(ra)<br>  |
| 402|[0x80004c98]<br>0x6666666666666666|- rs1_val==7378697629483820647 and imm_val==-2<br>                                                                 |[0x80002702]:c.andi a0, 62<br> [0x80002704]:sd a0, 1160(ra)<br> |
| 403|[0x80004ca0]<br>0x6666666666666663|- rs1_val==7378697629483820647 and imm_val==-5<br>                                                                 |[0x80002728]:c.andi a0, 59<br> [0x8000272a]:sd a0, 1168(ra)<br> |
| 404|[0x80004ca8]<br>0x0000000000000002|- rs1_val==7378697629483820647 and imm_val==2<br>                                                                  |[0x8000274e]:c.andi a0, 2<br> [0x80002750]:sd a0, 1176(ra)<br>  |
| 405|[0x80004cb0]<br>0x0000000000000004|- rs1_val==7378697629483820647 and imm_val==4<br>                                                                  |[0x80002774]:c.andi a0, 4<br> [0x80002776]:sd a0, 1184(ra)<br>  |
| 406|[0x80004cb8]<br>0x0000000000000001|- rs1_val==7378697629483820647 and imm_val==9<br>                                                                  |[0x8000279a]:c.andi a0, 9<br> [0x8000279c]:sd a0, 1192(ra)<br>  |
| 407|[0x80004cc0]<br>0x0000000000000000|- rs1_val==7378697629483820647 and imm_val==0<br>                                                                  |[0x800027c0]:c.andi a0, 0<br> [0x800027c2]:sd a0, 1200(ra)<br>  |
| 408|[0x80004cc8]<br>0x0000000000000003|- rs1_val==7378697629483820647 and imm_val==11<br>                                                                 |[0x800027e6]:c.andi a0, 11<br> [0x800027e8]:sd a0, 1208(ra)<br> |
| 409|[0x80004cd0]<br>0xFFFFFFFF4AFB0CCE|- rs1_val==-3037000498 and imm_val==-1<br>                                                                         |[0x800027fc]:c.andi a0, 63<br> [0x800027fe]:sd a0, 1216(ra)<br> |
| 410|[0x80004cd8]<br>0xFFFFFFFF4AFB0CCC|- rs1_val==-3037000498 and imm_val==-4<br>                                                                         |[0x80002812]:c.andi a0, 60<br> [0x80002814]:sd a0, 1224(ra)<br> |
| 411|[0x80004ce0]<br>0x0000000000000000|- rs1_val==3037000500 and imm_val==3<br>                                                                           |[0x80002828]:c.andi a0, 3<br> [0x8000282a]:sd a0, 1232(ra)<br>  |
| 412|[0x80004ce8]<br>0x0000000000000004|- rs1_val==3037000500 and imm_val==5<br>                                                                           |[0x8000283e]:c.andi a0, 5<br> [0x80002840]:sd a0, 1240(ra)<br>  |
| 413|[0x80004cf0]<br>0x0000000000000000|- rs1_val==3037000500 and imm_val==10<br>                                                                          |[0x80002854]:c.andi a0, 10<br> [0x80002856]:sd a0, 1248(ra)<br> |
| 414|[0x80004cf8]<br>0x0000000000000004|- rs1_val==3037000500 and imm_val==6<br>                                                                           |[0x8000286a]:c.andi a0, 6<br> [0x8000286c]:sd a0, 1256(ra)<br>  |
| 415|[0x80004d00]<br>0x00000000B504F334|- rs1_val==3037000500 and imm_val==-2<br>                                                                          |[0x80002880]:c.andi a0, 62<br> [0x80002882]:sd a0, 1264(ra)<br> |
| 416|[0x80004d08]<br>0x00000000B504F330|- rs1_val==3037000500 and imm_val==-5<br>                                                                          |[0x80002896]:c.andi a0, 59<br> [0x80002898]:sd a0, 1272(ra)<br> |
| 417|[0x80004d10]<br>0x0000000000000000|- rs1_val==3037000500 and imm_val==2<br>                                                                           |[0x800028ac]:c.andi a0, 2<br> [0x800028ae]:sd a0, 1280(ra)<br>  |
| 418|[0x80004d18]<br>0x0000000000000004|- rs1_val==3037000500 and imm_val==4<br>                                                                           |[0x800028c2]:c.andi a0, 4<br> [0x800028c4]:sd a0, 1288(ra)<br>  |
| 419|[0x80004d20]<br>0x0000000000000000|- rs1_val==3037000500 and imm_val==9<br>                                                                           |[0x800028d8]:c.andi a0, 9<br> [0x800028da]:sd a0, 1296(ra)<br>  |
| 420|[0x80004d28]<br>0x0000000000000000|- rs1_val==3037000500 and imm_val==0<br>                                                                           |[0x800028ee]:c.andi a0, 0<br> [0x800028f0]:sd a0, 1304(ra)<br>  |
| 421|[0x80004d30]<br>0x0000000000000000|- rs1_val==3037000500 and imm_val==11<br>                                                                          |[0x80002904]:c.andi a0, 11<br> [0x80002906]:sd a0, 1312(ra)<br> |
| 422|[0x80004d38]<br>0x0000000000000004|- rs1_val==3037000500 and imm_val==7<br>                                                                           |[0x8000291a]:c.andi a0, 7<br> [0x8000291c]:sd a0, 1320(ra)<br>  |
| 423|[0x80004d40]<br>0x00000000B504F334|- rs1_val==3037000500 and imm_val==-1<br>                                                                          |[0x80002930]:c.andi a0, 63<br> [0x80002932]:sd a0, 1328(ra)<br> |
| 424|[0x80004d48]<br>0x00000000B504F334|- rs1_val==3037000500 and imm_val==-4<br>                                                                          |[0x80002946]:c.andi a0, 60<br> [0x80002948]:sd a0, 1336(ra)<br> |
| 425|[0x80004d50]<br>0x0000000000000007|- rs1_val==7378697629483820647 and imm_val==7<br>                                                                  |[0x8000296c]:c.andi a0, 7<br> [0x8000296e]:sd a0, 1344(ra)<br>  |
| 426|[0x80004d58]<br>0x6666666666666667|- rs1_val==7378697629483820647 and imm_val==-1<br>                                                                 |[0x80002992]:c.andi a0, 63<br> [0x80002994]:sd a0, 1352(ra)<br> |
| 427|[0x80004d60]<br>0x6666666666666664|- rs1_val==7378697629483820647 and imm_val==-4<br>                                                                 |[0x800029b8]:c.andi a0, 60<br> [0x800029ba]:sd a0, 1360(ra)<br> |
| 428|[0x80004d68]<br>0x0000000000000002|- rs1_val==-3037000498 and imm_val==3<br>                                                                          |[0x800029ce]:c.andi a0, 3<br> [0x800029d0]:sd a0, 1368(ra)<br>  |
| 429|[0x80004d70]<br>0x0000000000000004|- rs1_val==-3037000498 and imm_val==5<br>                                                                          |[0x800029e4]:c.andi a0, 5<br> [0x800029e6]:sd a0, 1376(ra)<br>  |
| 430|[0x80004d78]<br>0x000000000000000A|- rs1_val==-3037000498 and imm_val==10<br>                                                                         |[0x800029fa]:c.andi a0, 10<br> [0x800029fc]:sd a0, 1384(ra)<br> |
| 431|[0x80004d80]<br>0x0000000000000006|- rs1_val==-3037000498 and imm_val==6<br>                                                                          |[0x80002a10]:c.andi a0, 6<br> [0x80002a12]:sd a0, 1392(ra)<br>  |
| 432|[0x80004d88]<br>0xFFFFFFFF4AFB0CCE|- rs1_val==-3037000498 and imm_val==-2<br>                                                                         |[0x80002a26]:c.andi a0, 62<br> [0x80002a28]:sd a0, 1400(ra)<br> |
| 433|[0x80004d90]<br>0xFFFFFFFF4AFB0CCA|- rs1_val==-3037000498 and imm_val==-5<br>                                                                         |[0x80002a3c]:c.andi a0, 59<br> [0x80002a3e]:sd a0, 1408(ra)<br> |
| 434|[0x80004d98]<br>0x0000000000000002|- rs1_val==-3037000498 and imm_val==2<br>                                                                          |[0x80002a52]:c.andi a0, 2<br> [0x80002a54]:sd a0, 1416(ra)<br>  |
| 435|[0x80004da0]<br>0x0000000000000004|- rs1_val==-3037000498 and imm_val==4<br>                                                                          |[0x80002a68]:c.andi a0, 4<br> [0x80002a6a]:sd a0, 1424(ra)<br>  |
| 436|[0x80004da8]<br>0x0000000000000008|- rs1_val==-3037000498 and imm_val==9<br>                                                                          |[0x80002a7e]:c.andi a0, 9<br> [0x80002a80]:sd a0, 1432(ra)<br>  |
| 437|[0x80004db0]<br>0x0000000000000000|- rs1_val==-3037000498 and imm_val==0<br>                                                                          |[0x80002a94]:c.andi a0, 0<br> [0x80002a96]:sd a0, 1440(ra)<br>  |
| 438|[0x80004db8]<br>0x000000000000000A|- rs1_val==-3037000498 and imm_val==11<br>                                                                         |[0x80002aaa]:c.andi a0, 11<br> [0x80002aac]:sd a0, 1448(ra)<br> |
| 439|[0x80004dc0]<br>0x0000000000000006|- rs1_val==-3037000498 and imm_val==7<br>                                                                          |[0x80002ac0]:c.andi a0, 7<br> [0x80002ac2]:sd a0, 1456(ra)<br>  |
