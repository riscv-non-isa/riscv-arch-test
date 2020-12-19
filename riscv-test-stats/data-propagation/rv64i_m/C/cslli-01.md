
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000cb0')]      |
| SIG_REGION                | [('0x80002010', '0x800024b0', '148 dwords')]      |
| COV_LABELS                | cslli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cslli-01.S/cslli-01.S    |
| Total Number of coverpoints| 182     |
| Total Coverpoints Hit     | 182      |
| Total Signature Updates   | 148      |
| STAT1                     | 148      |
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

|s.no|            signature             |                                                                 coverpoints                                                                 |                              code                              |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80002010]<br>0xFBFFFFFFFFFE0000|- opcode : c.slli<br> - rd : x15<br> - rs1_val < 0 and imm_val < xlen<br> - rs1_val == -2199023255553<br>                                    |[0x800003a4]:c.slli a5, 17<br> [0x800003a6]:sd a5, 0(ra)<br>    |
|   2|[0x80002018]<br>0x000000B504F33400|- rd : x10<br> - rs1_val > 0 and imm_val < xlen<br> - rs1_val==3037000500<br> - imm_val == 8<br>                                             |[0x800003ba]:c.slli a0, 8<br> [0x800003bc]:sd a0, 8(ra)<br>     |
|   3|[0x80002020]<br>0x0000000000000800|- rd : x14<br> - rs1_val == imm_val and imm_val != 0  and imm_val < xlen<br> - rs1_val == 8<br>                                              |[0x800003c4]:c.slli a4, 8<br> [0x800003c6]:sd a4, 16(ra)<br>    |
|   4|[0x80002028]<br>0x0000000000000000|- rd : x9<br> - rs1_val == (-2**(xlen-1)) and imm_val != 0 and imm_val < xlen<br> - rs1_val == -9223372036854775808<br> - imm_val == 1<br>   |[0x800003d2]:c.slli s1, 1<br> [0x800003d4]:sd s1, 24(ra)<br>    |
|   5|[0x80002030]<br>0x0000000000000000|- rd : x8<br> - rs1_val == 0 and imm_val != 0 and imm_val < xlen<br> - rs1_val==0<br>                                                        |[0x800003dc]:c.slli fp, 17<br> [0x800003de]:sd fp, 32(ra)<br>   |
|   6|[0x80002038]<br>0xFFFFFFFF00000000|- rd : x11<br> - rs1_val == (2**(xlen-1)-1) and imm_val != 0 and imm_val < xlen<br> - rs1_val == 9223372036854775807<br> - imm_val == 32<br> |[0x800003ee]:c.slli a1, 32<br> [0x800003f0]:sd a1, 40(ra)<br>   |
|   7|[0x80002040]<br>0x0000000000001000|- rd : x13<br> - rs1_val == 1 and imm_val != 0 and imm_val < xlen<br> - rs1_val == 1<br>                                                     |[0x800003f8]:c.slli a3, 12<br> [0x800003fa]:sd a3, 48(ra)<br>   |
|   8|[0x80002048]<br>0x0100000000000000|- rd : x12<br> - rs1_val == 2<br> - rs1_val==2<br> - imm_val == 55<br>                                                                       |[0x80000402]:c.slli a2, 55<br> [0x80000404]:sd a2, 56(ra)<br>   |
|   9|[0x80002050]<br>0x0000000200000000|- rs1_val == 4<br> - rs1_val==4<br> - imm_val == 31<br>                                                                                      |[0x8000040c]:c.slli a0, 31<br> [0x8000040e]:sd a0, 64(ra)<br>   |
|  10|[0x80002058]<br>0x0000000000000200|- rs1_val == 16<br>                                                                                                                          |[0x80000416]:c.slli a0, 5<br> [0x80000418]:sd a0, 72(ra)<br>    |
|  11|[0x80002060]<br>0x0000000000008000|- rs1_val == 32<br>                                                                                                                          |[0x80000420]:c.slli a0, 10<br> [0x80000422]:sd a0, 80(ra)<br>   |
|  12|[0x80002068]<br>0x0000000000000200|- rs1_val == 64<br>                                                                                                                          |[0x8000042a]:c.slli a0, 3<br> [0x8000042c]:sd a0, 88(ra)<br>    |
|  13|[0x80002070]<br>0x0000000000002000|- rs1_val == 128<br>                                                                                                                         |[0x80000434]:c.slli a0, 6<br> [0x80000436]:sd a0, 96(ra)<br>    |
|  14|[0x80002078]<br>0x0000000000010000|- rs1_val == 256<br>                                                                                                                         |[0x8000043e]:c.slli a0, 8<br> [0x80000440]:sd a0, 104(ra)<br>   |
|  15|[0x80002080]<br>0x0000000000000000|- rs1_val == 512<br> - imm_val == 61<br>                                                                                                     |[0x80000448]:c.slli a0, 61<br> [0x8000044a]:sd a0, 112(ra)<br>  |
|  16|[0x80002088]<br>0x0000000000080000|- rs1_val == 1024<br>                                                                                                                        |[0x80000452]:c.slli a0, 9<br> [0x80000454]:sd a0, 120(ra)<br>   |
|  17|[0x80002090]<br>0x0000000040000000|- rs1_val == 2048<br>                                                                                                                        |[0x80000460]:c.slli a0, 19<br> [0x80000462]:sd a0, 128(ra)<br>  |
|  18|[0x80002098]<br>0x0000000000000000|- rs1_val == 4096<br> - imm_val == 62<br>                                                                                                    |[0x8000046a]:c.slli a0, 62<br> [0x8000046c]:sd a0, 136(ra)<br>  |
|  19|[0x800020a0]<br>0x0000000100000000|- rs1_val == 8192<br>                                                                                                                        |[0x80000474]:c.slli a0, 19<br> [0x80000476]:sd a0, 144(ra)<br>  |
|  20|[0x800020a8]<br>0x0000000020000000|- rs1_val == 16384<br>                                                                                                                       |[0x8000047e]:c.slli a0, 15<br> [0x80000480]:sd a0, 152(ra)<br>  |
|  21|[0x800020b0]<br>0x0000000100000000|- rs1_val == 32768<br>                                                                                                                       |[0x80000488]:c.slli a0, 17<br> [0x8000048a]:sd a0, 160(ra)<br>  |
|  22|[0x800020b8]<br>0x0000000000000000|- rs1_val == 65536<br>                                                                                                                       |[0x80000492]:c.slli a0, 63<br> [0x80000494]:sd a0, 168(ra)<br>  |
|  23|[0x800020c0]<br>0x0000000080000000|- rs1_val == 131072<br>                                                                                                                      |[0x8000049c]:c.slli a0, 14<br> [0x8000049e]:sd a0, 176(ra)<br>  |
|  24|[0x800020c8]<br>0x0000000008000000|- rs1_val == 262144<br>                                                                                                                      |[0x800004a6]:c.slli a0, 9<br> [0x800004a8]:sd a0, 184(ra)<br>   |
|  25|[0x800020d0]<br>0x0000000200000000|- rs1_val == 524288<br>                                                                                                                      |[0x800004b0]:c.slli a0, 14<br> [0x800004b2]:sd a0, 192(ra)<br>  |
|  26|[0x800020d8]<br>0x0010000000000000|- rs1_val == 1048576<br>                                                                                                                     |[0x800004ba]:c.slli a0, 32<br> [0x800004bc]:sd a0, 200(ra)<br>  |
|  27|[0x800020e0]<br>0x0020000000000000|- rs1_val == 2097152<br>                                                                                                                     |[0x800004c4]:c.slli a0, 32<br> [0x800004c6]:sd a0, 208(ra)<br>  |
|  28|[0x800020e8]<br>0x0000002000000000|- rs1_val == 4194304<br>                                                                                                                     |[0x800004ce]:c.slli a0, 15<br> [0x800004d0]:sd a0, 216(ra)<br>  |
|  29|[0x800020f0]<br>0x0000000400000000|- rs1_val == 8388608<br>                                                                                                                     |[0x800004d8]:c.slli a0, 11<br> [0x800004da]:sd a0, 224(ra)<br>  |
|  30|[0x800020f8]<br>0x0000000002000000|- rs1_val == 16777216<br>                                                                                                                    |[0x800004e2]:c.slli a0, 1<br> [0x800004e4]:sd a0, 232(ra)<br>   |
|  31|[0x80002100]<br>0x0000000000000000|- rs1_val == 33554432<br>                                                                                                                    |[0x800004ec]:c.slli a0, 61<br> [0x800004ee]:sd a0, 240(ra)<br>  |
|  32|[0x80002108]<br>0x0000001000000000|- rs1_val == 67108864<br>                                                                                                                    |[0x800004f6]:c.slli a0, 10<br> [0x800004f8]:sd a0, 248(ra)<br>  |
|  33|[0x80002110]<br>0x0001000000000000|- rs1_val == 134217728<br> - imm_val == 21<br>                                                                                               |[0x80000500]:c.slli a0, 21<br> [0x80000502]:sd a0, 256(ra)<br>  |
|  34|[0x80002118]<br>0x0000002000000000|- rs1_val == 268435456<br>                                                                                                                   |[0x8000050a]:c.slli a0, 9<br> [0x8000050c]:sd a0, 264(ra)<br>   |
|  35|[0x80002120]<br>0x0000010000000000|- rs1_val == 536870912<br>                                                                                                                   |[0x80000514]:c.slli a0, 11<br> [0x80000516]:sd a0, 272(ra)<br>  |
|  36|[0x80002128]<br>0x0002000000000000|- rs1_val == 1073741824<br>                                                                                                                  |[0x8000051e]:c.slli a0, 19<br> [0x80000520]:sd a0, 280(ra)<br>  |
|  37|[0x80002130]<br>0x0000000000000000|- rs1_val == 2147483648<br> - imm_val == 42<br>                                                                                              |[0x8000052c]:c.slli a0, 42<br> [0x8000052e]:sd a0, 288(ra)<br>  |
|  38|[0x80002138]<br>0x0000000000000000|- rs1_val == 4294967296<br>                                                                                                                  |[0x8000053a]:c.slli a0, 42<br> [0x8000053c]:sd a0, 296(ra)<br>  |
|  39|[0x80002140]<br>0x0000008000000000|- rs1_val == 8589934592<br>                                                                                                                  |[0x80000548]:c.slli a0, 6<br> [0x8000054a]:sd a0, 304(ra)<br>   |
|  40|[0x80002148]<br>0x0000004000000000|- rs1_val == 17179869184<br> - imm_val == 4<br>                                                                                              |[0x80000556]:c.slli a0, 4<br> [0x80000558]:sd a0, 312(ra)<br>   |
|  41|[0x80002150]<br>0x0000400000000000|- rs1_val == 34359738368<br>                                                                                                                 |[0x80000564]:c.slli a0, 11<br> [0x80000566]:sd a0, 320(ra)<br>  |
|  42|[0x80002158]<br>0x0000040000000000|- rs1_val == 68719476736<br>                                                                                                                 |[0x80000572]:c.slli a0, 6<br> [0x80000574]:sd a0, 328(ra)<br>   |
|  43|[0x80002160]<br>0x0000000000000000|- rs1_val == 137438953472<br> - imm_val == 47<br>                                                                                            |[0x80000580]:c.slli a0, 47<br> [0x80000582]:sd a0, 336(ra)<br>  |
|  44|[0x80002168]<br>0x0000040000000000|- rs1_val == 274877906944<br>                                                                                                                |[0x8000058e]:c.slli a0, 4<br> [0x80000590]:sd a0, 344(ra)<br>   |
|  45|[0x80002170]<br>0x0000000000000000|- rs1_val == 549755813888<br> - imm_val == 59<br>                                                                                            |[0x8000059c]:c.slli a0, 59<br> [0x8000059e]:sd a0, 352(ra)<br>  |
|  46|[0x80002178]<br>0x0010000000000000|- rs1_val == 1099511627776<br>                                                                                                               |[0x800005aa]:c.slli a0, 12<br> [0x800005ac]:sd a0, 360(ra)<br>  |
|  47|[0x80002180]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                               |[0x800005b8]:c.slli a0, 62<br> [0x800005ba]:sd a0, 368(ra)<br>  |
|  48|[0x80002188]<br>0x0002000000000000|- rs1_val == 4398046511104<br>                                                                                                               |[0x800005c6]:c.slli a0, 7<br> [0x800005c8]:sd a0, 376(ra)<br>   |
|  49|[0x80002190]<br>0x0004000000000000|- rs1_val == 8796093022208<br>                                                                                                               |[0x800005d4]:c.slli a0, 7<br> [0x800005d6]:sd a0, 384(ra)<br>   |
|  50|[0x80002198]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                              |[0x800005e2]:c.slli a0, 32<br> [0x800005e4]:sd a0, 392(ra)<br>  |
|  51|[0x800021a0]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                              |[0x800005f0]:c.slli a0, 21<br> [0x800005f2]:sd a0, 400(ra)<br>  |
|  52|[0x800021a8]<br>0x0000000000000000|- rs1_val == 70368744177664<br>                                                                                                              |[0x800005fe]:c.slli a0, 61<br> [0x80000600]:sd a0, 408(ra)<br>  |
|  53|[0x800021b0]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                             |[0x8000060c]:c.slli a0, 47<br> [0x8000060e]:sd a0, 416(ra)<br>  |
|  54|[0x800021b8]<br>0x8000000000000000|- rs1_val == 281474976710656<br>                                                                                                             |[0x8000061a]:c.slli a0, 15<br> [0x8000061c]:sd a0, 424(ra)<br>  |
|  55|[0x800021c0]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                                             |[0x80000628]:c.slli a0, 62<br> [0x8000062a]:sd a0, 432(ra)<br>  |
|  56|[0x800021c8]<br>0x0800000000000000|- rs1_val == 1125899906842624<br>                                                                                                            |[0x80000636]:c.slli a0, 9<br> [0x80000638]:sd a0, 440(ra)<br>   |
|  57|[0x800021d0]<br>0x0000000000000000|- rs1_val == 2251799813685248<br>                                                                                                            |[0x80000644]:c.slli a0, 13<br> [0x80000646]:sd a0, 448(ra)<br>  |
|  58|[0x800021d8]<br>0x0000000000000000|- rs1_val == 4503599627370496<br>                                                                                                            |[0x80000652]:c.slli a0, 31<br> [0x80000654]:sd a0, 456(ra)<br>  |
|  59|[0x800021e0]<br>0x0040000000000000|- rs1_val == 9007199254740992<br>                                                                                                            |[0x80000660]:c.slli a0, 1<br> [0x80000662]:sd a0, 464(ra)<br>   |
|  60|[0x800021e8]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                           |[0x8000066e]:c.slli a0, 15<br> [0x80000670]:sd a0, 472(ra)<br>  |
|  61|[0x800021f0]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                           |[0x8000067c]:c.slli a0, 63<br> [0x8000067e]:sd a0, 480(ra)<br>  |
|  62|[0x800021f8]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                                           |[0x8000068a]:c.slli a0, 14<br> [0x8000068c]:sd a0, 488(ra)<br>  |
|  63|[0x80002200]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                          |[0x80000698]:c.slli a0, 55<br> [0x8000069a]:sd a0, 496(ra)<br>  |
|  64|[0x80002208]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                          |[0x800006a6]:c.slli a0, 59<br> [0x800006a8]:sd a0, 504(ra)<br>  |
|  65|[0x80002210]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                          |[0x800006b4]:c.slli a0, 42<br> [0x800006b6]:sd a0, 512(ra)<br>  |
|  66|[0x80002218]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                         |[0x800006c2]:c.slli a0, 15<br> [0x800006c4]:sd a0, 520(ra)<br>  |
|  67|[0x80002220]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                         |[0x800006d0]:c.slli a0, 9<br> [0x800006d2]:sd a0, 528(ra)<br>   |
|  68|[0x80002228]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                         |[0x800006de]:c.slli a0, 47<br> [0x800006e0]:sd a0, 536(ra)<br>  |
|  69|[0x80002230]<br>0xFFFFFFFFFFFFFC00|- rs1_val == -2<br>                                                                                                                          |[0x800006e8]:c.slli a0, 9<br> [0x800006ea]:sd a0, 544(ra)<br>   |
|  70|[0x80002238]<br>0xFFFFFFFFFFFFFA00|- rs1_val == -3<br>                                                                                                                          |[0x800006f2]:c.slli a0, 9<br> [0x800006f4]:sd a0, 552(ra)<br>   |
|  71|[0x80002240]<br>0xFFFFFFFFFFFF6000|- rs1_val == -5<br>                                                                                                                          |[0x800006fc]:c.slli a0, 13<br> [0x800006fe]:sd a0, 560(ra)<br>  |
|  72|[0x80002248]<br>0xFFFFFFFFFFFFFEE0|- rs1_val == -9<br>                                                                                                                          |[0x80000706]:c.slli a0, 5<br> [0x80000708]:sd a0, 568(ra)<br>   |
|  73|[0x80002250]<br>0xFFFFFFFFFFFFFF78|- rs1_val == -17<br>                                                                                                                         |[0x80000710]:c.slli a0, 3<br> [0x80000712]:sd a0, 576(ra)<br>   |
|  74|[0x80002258]<br>0xFFFFFFFFFFBE0000|- rs1_val == -33<br>                                                                                                                         |[0x8000071a]:c.slli a0, 17<br> [0x8000071c]:sd a0, 584(ra)<br>  |
|  75|[0x80002260]<br>0xFFFFFFFFFFBF0000|- rs1_val == -65<br> - imm_val == 16<br>                                                                                                     |[0x80000724]:c.slli a0, 16<br> [0x80000726]:sd a0, 592(ra)<br>  |
|  76|[0x80002268]<br>0xFFFFFFFFFDFC0000|- rs1_val == -129<br>                                                                                                                        |[0x8000072e]:c.slli a0, 18<br> [0x80000730]:sd a0, 600(ra)<br>  |
|  77|[0x80002270]<br>0xFFFFFFFFFFFFDFE0|- rs1_val == -257<br>                                                                                                                        |[0x80000738]:c.slli a0, 5<br> [0x8000073a]:sd a0, 608(ra)<br>   |
|  78|[0x80002278]<br>0xFFFFFFFFFFFFFBFE|- rs1_val == -513<br>                                                                                                                        |[0x80000742]:c.slli a0, 1<br> [0x80000744]:sd a0, 616(ra)<br>   |
|  79|[0x80002280]<br>0xFFFFFFFFFFFF7FE0|- rs1_val == -1025<br>                                                                                                                       |[0x8000074c]:c.slli a0, 5<br> [0x8000074e]:sd a0, 624(ra)<br>   |
|  80|[0x80002288]<br>0x8000000000000000|- rs1_val == -2049<br>                                                                                                                       |[0x8000075a]:c.slli a0, 63<br> [0x8000075c]:sd a0, 632(ra)<br>  |
|  81|[0x80002290]<br>0xFFBFFC0000000000|- rs1_val == -4097<br>                                                                                                                       |[0x80000768]:c.slli a0, 42<br> [0x8000076a]:sd a0, 640(ra)<br>  |
|  82|[0x80002298]<br>0xFFFFDFFF00000000|- rs1_val == -8193<br>                                                                                                                       |[0x80000776]:c.slli a0, 32<br> [0x80000778]:sd a0, 648(ra)<br>  |
|  83|[0x800022a0]<br>0xFFFFFFFF7FFE0000|- rs1_val == -16385<br>                                                                                                                      |[0x80000784]:c.slli a0, 17<br> [0x80000786]:sd a0, 656(ra)<br>  |
|  84|[0x800022a8]<br>0xFFFFFFFFFFDFFFC0|- rs1_val == -32769<br>                                                                                                                      |[0x80000792]:c.slli a0, 6<br> [0x80000794]:sd a0, 664(ra)<br>   |
|  85|[0x800022b0]<br>0xFFFFFFFFFFFBFFFC|- rs1_val == -65537<br> - imm_val == 2<br>                                                                                                   |[0x800007a0]:c.slli a0, 2<br> [0x800007a2]:sd a0, 672(ra)<br>   |
|  86|[0x800022b8]<br>0xF7FFFC0000000000|- rs1_val == -131073<br>                                                                                                                     |[0x800007ae]:c.slli a0, 42<br> [0x800007b0]:sd a0, 680(ra)<br>  |
|  87|[0x800022c0]<br>0xFFFFFFFFFDFFFF80|- rs1_val == -262145<br>                                                                                                                     |[0x800007bc]:c.slli a0, 7<br> [0x800007be]:sd a0, 688(ra)<br>   |
|  88|[0x800022c8]<br>0xDFFFFFFFFFFFFFF0|- rs1_val == -144115188075855873<br>                                                                                                         |[0x800007ce]:c.slli a0, 4<br> [0x800007d0]:sd a0, 696(ra)<br>   |
|  89|[0x800022d0]<br>0x7FFFFFFFFFFFFFE0|- rs1_val == -288230376151711745<br>                                                                                                         |[0x800007e0]:c.slli a0, 5<br> [0x800007e2]:sd a0, 704(ra)<br>   |
|  90|[0x800022d8]<br>0xFFFFFFFFFFFF0000|- rs1_val == -576460752303423489<br>                                                                                                         |[0x800007f2]:c.slli a0, 16<br> [0x800007f4]:sd a0, 712(ra)<br>  |
|  91|[0x800022e0]<br>0xE000000000000000|- rs1_val == -1152921504606846977<br>                                                                                                        |[0x80000804]:c.slli a0, 61<br> [0x80000806]:sd a0, 720(ra)<br>  |
|  92|[0x800022e8]<br>0xC000000000000000|- rs1_val == -2305843009213693953<br>                                                                                                        |[0x80000816]:c.slli a0, 62<br> [0x80000818]:sd a0, 728(ra)<br>  |
|  93|[0x800022f0]<br>0xF800000000000000|- rs1_val == -4611686018427387905<br>                                                                                                        |[0x80000828]:c.slli a0, 59<br> [0x8000082a]:sd a0, 736(ra)<br>  |
|  94|[0x800022f8]<br>0x5555555555555540|- rs1_val == 6148914691236517205<br> - rs1_val==6148914691236517205<br>                                                                      |[0x8000084e]:c.slli a0, 6<br> [0x80000850]:sd a0, 744(ra)<br>   |
|  95|[0x80002300]<br>0x5555555555554000|- rs1_val == -6148914691236517206<br> - rs1_val==-6148914691236517206<br>                                                                    |[0x80000874]:c.slli a0, 13<br> [0x80000876]:sd a0, 752(ra)<br>  |
|  96|[0x80002308]<br>0x0000000000018000|- rs1_val==3<br>                                                                                                                             |[0x8000087e]:c.slli a0, 15<br> [0x80000880]:sd a0, 760(ra)<br>  |
|  97|[0x80002310]<br>0x0000000280000000|- rs1_val==5<br>                                                                                                                             |[0x80000888]:c.slli a0, 31<br> [0x8000088a]:sd a0, 768(ra)<br>  |
|  98|[0x80002318]<br>0x9980000000000000|- rs1_val==3689348814741910323<br>                                                                                                           |[0x800008ae]:c.slli a0, 55<br> [0x800008b0]:sd a0, 776(ra)<br>  |
|  99|[0x80002320]<br>0xCCCCCCCCCCCC0000|- rs1_val==7378697629483820646<br>                                                                                                           |[0x800008d4]:c.slli a0, 17<br> [0x800008d6]:sd a0, 784(ra)<br>  |
| 100|[0x80002328]<br>0xEC33340000000000|- rs1_val==-3037000499<br>                                                                                                                   |[0x800008ea]:c.slli a0, 42<br> [0x800008ec]:sd a0, 792(ra)<br>  |
| 101|[0x80002330]<br>0x000005A827999800|- rs1_val==3037000499<br>                                                                                                                    |[0x80000900]:c.slli a0, 11<br> [0x80000902]:sd a0, 800(ra)<br>  |
| 102|[0x80002338]<br>0x5555555555555550|- rs1_val==6148914691236517204<br>                                                                                                           |[0x80000926]:c.slli a0, 2<br> [0x80000928]:sd a0, 808(ra)<br>   |
| 103|[0x80002340]<br>0x6666666666640000|- rs1_val==3689348814741910322<br>                                                                                                           |[0x8000094c]:c.slli a0, 17<br> [0x8000094e]:sd a0, 816(ra)<br>  |
| 104|[0x80002348]<br>0x9999999999994000|- rs1_val==7378697629483820645<br>                                                                                                           |[0x80000972]:c.slli a0, 14<br> [0x80000974]:sd a0, 824(ra)<br>  |
| 105|[0x80002350]<br>0x00000002D413CCC8|- rs1_val==3037000498<br>                                                                                                                    |[0x80000988]:c.slli a0, 2<br> [0x8000098a]:sd a0, 832(ra)<br>   |
| 106|[0x80002358]<br>0xAAAAAAAAAAAB0000|- rs1_val==6148914691236517206<br>                                                                                                           |[0x800009ae]:c.slli a0, 15<br> [0x800009b0]:sd a0, 840(ra)<br>  |
| 107|[0x80002360]<br>0xAAAAAAAAAAAB0000|- rs1_val==-6148914691236517205<br>                                                                                                          |[0x800009d4]:c.slli a0, 16<br> [0x800009d6]:sd a0, 848(ra)<br>  |
| 108|[0x80002368]<br>0x0000000000000300|- rs1_val==6<br>                                                                                                                             |[0x800009de]:c.slli a0, 7<br> [0x800009e0]:sd a0, 856(ra)<br>   |
| 109|[0x80002370]<br>0xCCCCCCCCCCCCCCD0|- rs1_val==3689348814741910324<br>                                                                                                           |[0x80000a04]:c.slli a0, 2<br> [0x80000a06]:sd a0, 864(ra)<br>   |
| 110|[0x80002378]<br>0x999999999999C000|- rs1_val==7378697629483820647<br>                                                                                                           |[0x80000a2a]:c.slli a0, 14<br> [0x80000a2c]:sd a0, 872(ra)<br>  |
| 111|[0x80002380]<br>0xC000000000000000|- rs1_val==-3037000498<br>                                                                                                                   |[0x80000a40]:c.slli a0, 61<br> [0x80000a42]:sd a0, 880(ra)<br>  |
| 112|[0x80002388]<br>0xFFFFFFDFFFFC0000|- rs1_val == -524289<br>                                                                                                                     |[0x80000a4e]:c.slli a0, 18<br> [0x80000a50]:sd a0, 888(ra)<br>  |
| 113|[0x80002390]<br>0xFFFFFFFFFEFFFFF0|- rs1_val == -1048577<br>                                                                                                                    |[0x80000a5c]:c.slli a0, 4<br> [0x80000a5e]:sd a0, 896(ra)<br>   |
| 114|[0x80002398]<br>0xFFFFFFFBFFFFE000|- rs1_val == -2097153<br>                                                                                                                    |[0x80000a6a]:c.slli a0, 13<br> [0x80000a6c]:sd a0, 904(ra)<br>  |
| 115|[0x800023a0]<br>0xFFFFFEFFFFFC0000|- rs1_val == -4194305<br>                                                                                                                    |[0x80000a78]:c.slli a0, 18<br> [0x80000a7a]:sd a0, 912(ra)<br>  |
| 116|[0x800023a8]<br>0xFFFFFFFFF7FFFFF0|- rs1_val == -8388609<br>                                                                                                                    |[0x80000a86]:c.slli a0, 4<br> [0x80000a88]:sd a0, 920(ra)<br>   |
| 117|[0x800023b0]<br>0xFFFFF7FFFFF80000|- rs1_val == -16777217<br>                                                                                                                   |[0x80000a94]:c.slli a0, 19<br> [0x80000a96]:sd a0, 928(ra)<br>  |
| 118|[0x800023b8]<br>0xFFFFF7FFFFFC0000|- rs1_val == -33554433<br>                                                                                                                   |[0x80000aa2]:c.slli a0, 18<br> [0x80000aa4]:sd a0, 936(ra)<br>  |
| 119|[0x800023c0]<br>0xFFFFFFEFFFFFFC00|- rs1_val == -67108865<br>                                                                                                                   |[0x80000ab0]:c.slli a0, 10<br> [0x80000ab2]:sd a0, 944(ra)<br>  |
| 120|[0x800023c8]<br>0xFFFFF7FFFFFF0000|- rs1_val == -134217729<br>                                                                                                                  |[0x80000abe]:c.slli a0, 16<br> [0x80000ac0]:sd a0, 952(ra)<br>  |
| 121|[0x800023d0]<br>0xFFFF800000000000|- rs1_val == -268435457<br>                                                                                                                  |[0x80000acc]:c.slli a0, 47<br> [0x80000ace]:sd a0, 960(ra)<br>  |
| 122|[0x800023d8]<br>0x8000000000000000|- rs1_val == -536870913<br>                                                                                                                  |[0x80000ada]:c.slli a0, 63<br> [0x80000adc]:sd a0, 968(ra)<br>  |
| 123|[0x800023e0]<br>0xFFFFFF7FFFFFFE00|- rs1_val == -1073741825<br>                                                                                                                 |[0x80000ae8]:c.slli a0, 9<br> [0x80000aea]:sd a0, 976(ra)<br>   |
| 124|[0x800023e8]<br>0xFFFDFFFFFFFC0000|- rs1_val == -2147483649<br>                                                                                                                 |[0x80000afa]:c.slli a0, 18<br> [0x80000afc]:sd a0, 984(ra)<br>  |
| 125|[0x800023f0]<br>0xE000000000000000|- rs1_val == -4294967297<br>                                                                                                                 |[0x80000b0c]:c.slli a0, 61<br> [0x80000b0e]:sd a0, 992(ra)<br>  |
| 126|[0x800023f8]<br>0xE000000000000000|- rs1_val == -8589934593<br>                                                                                                                 |[0x80000b1e]:c.slli a0, 61<br> [0x80000b20]:sd a0, 1000(ra)<br> |
| 127|[0x80002400]<br>0xFFFFFBFFFFFFFF00|- rs1_val == -17179869185<br>                                                                                                                |[0x80000b30]:c.slli a0, 8<br> [0x80000b32]:sd a0, 1008(ra)<br>  |
| 128|[0x80002408]<br>0xFFFFFEFFFFFFFFE0|- rs1_val == -34359738369<br>                                                                                                                |[0x80000b42]:c.slli a0, 5<br> [0x80000b44]:sd a0, 1016(ra)<br>  |
| 129|[0x80002410]<br>0xFFEFFFFFFFFF0000|- rs1_val == -68719476737<br>                                                                                                                |[0x80000b54]:c.slli a0, 16<br> [0x80000b56]:sd a0, 1024(ra)<br> |
| 130|[0x80002418]<br>0xFF7FFFFFFFFC0000|- rs1_val == -137438953473<br>                                                                                                               |[0x80000b66]:c.slli a0, 18<br> [0x80000b68]:sd a0, 1032(ra)<br> |
| 131|[0x80002420]<br>0xFFBFFFFFFFFF0000|- rs1_val == -274877906945<br>                                                                                                               |[0x80000b78]:c.slli a0, 16<br> [0x80000b7a]:sd a0, 1040(ra)<br> |
| 132|[0x80002428]<br>0xFFFF7FFFFFFFFF00|- rs1_val == -549755813889<br>                                                                                                               |[0x80000b8a]:c.slli a0, 8<br> [0x80000b8c]:sd a0, 1048(ra)<br>  |
| 133|[0x80002430]<br>0xFF80000000000000|- rs1_val == -1099511627777<br>                                                                                                              |[0x80000b9c]:c.slli a0, 55<br> [0x80000b9e]:sd a0, 1056(ra)<br> |
| 134|[0x80002438]<br>0xFFEFFFFFFFFFFC00|- rs1_val == -4398046511105<br>                                                                                                              |[0x80000bae]:c.slli a0, 10<br> [0x80000bb0]:sd a0, 1064(ra)<br> |
| 135|[0x80002440]<br>0xE000000000000000|- rs1_val == -8796093022209<br>                                                                                                              |[0x80000bc0]:c.slli a0, 61<br> [0x80000bc2]:sd a0, 1072(ra)<br> |
| 136|[0x80002448]<br>0xFFFFBFFFFFFFFFFC|- rs1_val == -17592186044417<br>                                                                                                             |[0x80000bd2]:c.slli a0, 2<br> [0x80000bd4]:sd a0, 1080(ra)<br>  |
| 137|[0x80002450]<br>0xFF80000000000000|- rs1_val == -35184372088833<br>                                                                                                             |[0x80000be4]:c.slli a0, 55<br> [0x80000be6]:sd a0, 1088(ra)<br> |
| 138|[0x80002458]<br>0xFF80000000000000|- rs1_val == -70368744177665<br>                                                                                                             |[0x80000bf6]:c.slli a0, 55<br> [0x80000bf8]:sd a0, 1096(ra)<br> |
| 139|[0x80002460]<br>0xFF80000000000000|- rs1_val == -140737488355329<br>                                                                                                            |[0x80000c08]:c.slli a0, 55<br> [0x80000c0a]:sd a0, 1104(ra)<br> |
| 140|[0x80002468]<br>0xF800000000000000|- rs1_val == -281474976710657<br>                                                                                                            |[0x80000c1a]:c.slli a0, 59<br> [0x80000c1c]:sd a0, 1112(ra)<br> |
| 141|[0x80002470]<br>0xFFFFFFFF80000000|- rs1_val == -562949953421313<br>                                                                                                            |[0x80000c2c]:c.slli a0, 31<br> [0x80000c2e]:sd a0, 1120(ra)<br> |
| 142|[0x80002478]<br>0xFFEFFFFFFFFFFFFC|- rs1_val == -1125899906842625<br>                                                                                                           |[0x80000c3e]:c.slli a0, 2<br> [0x80000c40]:sd a0, 1128(ra)<br>  |
| 143|[0x80002480]<br>0xFF7FFFFFFFFFFFF0|- rs1_val == -2251799813685249<br>                                                                                                           |[0x80000c50]:c.slli a0, 4<br> [0x80000c52]:sd a0, 1136(ra)<br>  |
| 144|[0x80002488]<br>0xFFFFFFFFFFFFF000|- rs1_val == -4503599627370497<br>                                                                                                           |[0x80000c62]:c.slli a0, 12<br> [0x80000c64]:sd a0, 1144(ra)<br> |
| 145|[0x80002490]<br>0xFFFFFC0000000000|- rs1_val == -9007199254740993<br>                                                                                                           |[0x80000c74]:c.slli a0, 42<br> [0x80000c76]:sd a0, 1152(ra)<br> |
| 146|[0x80002498]<br>0xE000000000000000|- rs1_val == -18014398509481985<br>                                                                                                          |[0x80000c86]:c.slli a0, 61<br> [0x80000c88]:sd a0, 1160(ra)<br> |
| 147|[0x800024a0]<br>0xFF80000000000000|- rs1_val == -36028797018963969<br>                                                                                                          |[0x80000c98]:c.slli a0, 55<br> [0x80000c9a]:sd a0, 1168(ra)<br> |
| 148|[0x800024a8]<br>0xF7FFFFFFFFFFFFF8|- rs1_val == -72057594037927937<br>                                                                                                          |[0x80000caa]:c.slli a0, 3<br> [0x80000cac]:sd a0, 1176(ra)<br>  |
