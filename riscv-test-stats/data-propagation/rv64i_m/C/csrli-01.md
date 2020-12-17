
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000cc0')]      |
| SIG_REGION                | [('0x80002010', '0x800024c0', '150 dwords')]      |
| COV_LABELS                | csrli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/csrli-01.S/csrli-01.S    |
| Total Number of coverpoints| 182     |
| Total Coverpoints Hit     | 182      |
| Total Signature Updates   | 149      |
| STAT1                     | 149      |
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
|   1|[0x80002010]<br>0x1FFF7FFFFFFFFFFF|- opcode : c.srli<br> - rs1 : x13<br> - rs1_val < 0 and imm_val < xlen<br> - rs1_val == -1125899906842625<br>                                |[0x800003a4]:c.srli a3, 3<br> [0x800003a6]:sd a3, 0(ra)<br>     |
|   2|[0x80002018]<br>0x0000000000002000|- rs1 : x11<br> - rs1_val > 0 and imm_val < xlen<br> - rs1_val == 536870912<br> - imm_val == 16<br>                                          |[0x800003ae]:c.srli a1, 16<br> [0x800003b0]:sd a1, 8(ra)<br>    |
|   3|[0x80002020]<br>0x0000000000000000|- rs1 : x12<br> - rs1_val == imm_val and imm_val != 0  and imm_val < xlen<br> - rs1_val==5<br>                                               |[0x800003b8]:c.srli a2, 5<br> [0x800003ba]:sd a2, 16(ra)<br>    |
|   4|[0x80002028]<br>0x0000100000000000|- rs1 : x10<br> - rs1_val == (-2**(xlen-1)) and imm_val != 0 and imm_val < xlen<br> - rs1_val == -9223372036854775808<br>                    |[0x800003c6]:c.srli a0, 19<br> [0x800003c8]:sd a0, 24(ra)<br>   |
|   5|[0x80002030]<br>0x0000000000000000|- rs1 : x15<br> - rs1_val == 0 and imm_val != 0 and imm_val < xlen<br> - rs1_val==0<br>                                                      |[0x800003d0]:c.srli a5, 7<br> [0x800003d2]:sd a5, 32(ra)<br>    |
|   6|[0x80002038]<br>0x007FFFFFFFFFFFFF|- rs1 : x14<br> - rs1_val == (2**(xlen-1)-1) and imm_val != 0 and imm_val < xlen<br> - rs1_val == 9223372036854775807<br> - imm_val == 8<br> |[0x800003e2]:c.srli a4, 8<br> [0x800003e4]:sd a4, 40(ra)<br>    |
|   7|[0x80002040]<br>0x0000000000000000|- rs1 : x9<br> - rs1_val == 1 and imm_val != 0 and imm_val < xlen<br> - rs1_val == 1<br>                                                     |[0x800003ec]:c.srli s1, 8<br> [0x800003ee]:sd s1, 48(ra)<br>    |
|   8|[0x80002048]<br>0x0000000000000000|- rs1 : x8<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                                           |[0x800003f6]:c.srli s0, 5<br> [0x800003f8]:sd fp, 56(ra)<br>    |
|   9|[0x80002050]<br>0x0000000000000000|- rs1_val == 4<br> - rs1_val==4<br> - imm_val == 61<br>                                                                                      |[0x80000400]:c.srli a0, 61<br> [0x80000402]:sd a0, 64(ra)<br>   |
|  10|[0x80002058]<br>0x0000000000000000|- rs1_val == 8<br> - imm_val == 55<br>                                                                                                       |[0x8000040a]:c.srli a0, 55<br> [0x8000040c]:sd a0, 72(ra)<br>   |
|  11|[0x80002060]<br>0x0000000000000000|- rs1_val == 16<br>                                                                                                                          |[0x80000414]:c.srli a0, 63<br> [0x80000416]:sd a0, 80(ra)<br>   |
|  12|[0x80002068]<br>0x0000000000000000|- rs1_val == 32<br> - imm_val == 59<br>                                                                                                      |[0x8000041e]:c.srli a0, 59<br> [0x80000420]:sd a0, 88(ra)<br>   |
|  13|[0x80002070]<br>0x0000000000000000|- rs1_val == 64<br> - imm_val == 21<br>                                                                                                      |[0x80000428]:c.srli a0, 21<br> [0x8000042a]:sd a0, 96(ra)<br>   |
|  14|[0x80002078]<br>0x0000000000000000|- rs1_val == 128<br>                                                                                                                         |[0x80000432]:c.srli a0, 12<br> [0x80000434]:sd a0, 104(ra)<br>  |
|  15|[0x80002080]<br>0x0000000000000040|- rs1_val == 256<br> - imm_val == 2<br>                                                                                                      |[0x8000043c]:c.srli a0, 2<br> [0x8000043e]:sd a0, 112(ra)<br>   |
|  16|[0x80002088]<br>0x0000000000000000|- rs1_val == 512<br>                                                                                                                         |[0x80000446]:c.srli a0, 59<br> [0x80000448]:sd a0, 120(ra)<br>  |
|  17|[0x80002090]<br>0x0000000000000040|- rs1_val == 1024<br> - imm_val == 4<br>                                                                                                     |[0x80000450]:c.srli a0, 4<br> [0x80000452]:sd a0, 128(ra)<br>   |
|  18|[0x80002098]<br>0x0000000000000010|- rs1_val == 2048<br>                                                                                                                        |[0x8000045e]:c.srli a0, 7<br> [0x80000460]:sd a0, 136(ra)<br>   |
|  19|[0x800020a0]<br>0x0000000000000200|- rs1_val == 4096<br>                                                                                                                        |[0x80000468]:c.srli a0, 3<br> [0x8000046a]:sd a0, 144(ra)<br>   |
|  20|[0x800020a8]<br>0x0000000000000000|- rs1_val == 8192<br> - imm_val == 31<br>                                                                                                    |[0x80000472]:c.srli a0, 31<br> [0x80000474]:sd a0, 152(ra)<br>  |
|  21|[0x800020b0]<br>0x0000000000000000|- rs1_val == 16384<br>                                                                                                                       |[0x8000047c]:c.srli a0, 61<br> [0x8000047e]:sd a0, 160(ra)<br>  |
|  22|[0x800020b8]<br>0x0000000000000000|- rs1_val == 32768<br>                                                                                                                       |[0x80000486]:c.srli a0, 16<br> [0x80000488]:sd a0, 168(ra)<br>  |
|  23|[0x800020c0]<br>0x0000000000002000|- rs1_val == 65536<br>                                                                                                                       |[0x80000490]:c.srli a0, 3<br> [0x80000492]:sd a0, 176(ra)<br>   |
|  24|[0x800020c8]<br>0x0000000000010000|- rs1_val == 131072<br> - imm_val == 1<br>                                                                                                   |[0x8000049a]:c.srli a0, 1<br> [0x8000049c]:sd a0, 184(ra)<br>   |
|  25|[0x800020d0]<br>0x0000000000000000|- rs1_val == 262144<br>                                                                                                                      |[0x800004a4]:c.srli a0, 31<br> [0x800004a6]:sd a0, 192(ra)<br>  |
|  26|[0x800020d8]<br>0x0000000000000001|- rs1_val == 524288<br>                                                                                                                      |[0x800004ae]:c.srli a0, 19<br> [0x800004b0]:sd a0, 200(ra)<br>  |
|  27|[0x800020e0]<br>0x0000000000000020|- rs1_val == 1048576<br>                                                                                                                     |[0x800004b8]:c.srli a0, 15<br> [0x800004ba]:sd a0, 208(ra)<br>  |
|  28|[0x800020e8]<br>0x0000000000000020|- rs1_val == 2097152<br>                                                                                                                     |[0x800004c2]:c.srli a0, 16<br> [0x800004c4]:sd a0, 216(ra)<br>  |
|  29|[0x800020f0]<br>0x0000000000040000|- rs1_val == 4194304<br>                                                                                                                     |[0x800004cc]:c.srli a0, 4<br> [0x800004ce]:sd a0, 224(ra)<br>   |
|  30|[0x800020f8]<br>0x0000000000002000|- rs1_val == 8388608<br>                                                                                                                     |[0x800004d6]:c.srli a0, 10<br> [0x800004d8]:sd a0, 232(ra)<br>  |
|  31|[0x80002100]<br>0x0000000000000800|- rs1_val == 16777216<br>                                                                                                                    |[0x800004e0]:c.srli a0, 13<br> [0x800004e2]:sd a0, 240(ra)<br>  |
|  32|[0x80002108]<br>0x0000000000000000|- rs1_val == 33554432<br>                                                                                                                    |[0x800004ea]:c.srli a0, 59<br> [0x800004ec]:sd a0, 248(ra)<br>  |
|  33|[0x80002110]<br>0x0000000000000400|- rs1_val == 67108864<br>                                                                                                                    |[0x800004f4]:c.srli a0, 16<br> [0x800004f6]:sd a0, 256(ra)<br>  |
|  34|[0x80002118]<br>0x0000000000000000|- rs1_val == 134217728<br>                                                                                                                   |[0x800004fe]:c.srli a0, 55<br> [0x80000500]:sd a0, 264(ra)<br>  |
|  35|[0x80002120]<br>0x0000000000200000|- rs1_val == 268435456<br>                                                                                                                   |[0x80000508]:c.srli a0, 7<br> [0x8000050a]:sd a0, 272(ra)<br>   |
|  36|[0x80002128]<br>0x0000000000000000|- rs1_val == 1073741824<br>                                                                                                                  |[0x80000512]:c.srli a0, 59<br> [0x80000514]:sd a0, 280(ra)<br>  |
|  37|[0x80002130]<br>0x0000000000400000|- rs1_val == 2147483648<br>                                                                                                                  |[0x80000520]:c.srli a0, 9<br> [0x80000522]:sd a0, 288(ra)<br>   |
|  38|[0x80002138]<br>0x0000000000040000|- rs1_val == 4294967296<br>                                                                                                                  |[0x8000052e]:c.srli a0, 14<br> [0x80000530]:sd a0, 296(ra)<br>  |
|  39|[0x80002140]<br>0x0000000100000000|- rs1_val == 8589934592<br>                                                                                                                  |[0x8000053c]:c.srli a0, 1<br> [0x8000053e]:sd a0, 304(ra)<br>   |
|  40|[0x80002148]<br>0x0000000000020000|- rs1_val == 17179869184<br>                                                                                                                 |[0x8000054a]:c.srli a0, 17<br> [0x8000054c]:sd a0, 312(ra)<br>  |
|  41|[0x80002150]<br>0x0000000000000000|- rs1_val == 34359738368<br> - imm_val == 62<br>                                                                                             |[0x80000558]:c.srli a0, 62<br> [0x8000055a]:sd a0, 320(ra)<br>  |
|  42|[0x80002158]<br>0x0000000002000000|- rs1_val == 68719476736<br>                                                                                                                 |[0x80000566]:c.srli a0, 11<br> [0x80000568]:sd a0, 328(ra)<br>  |
|  43|[0x80002160]<br>0x0000000080000000|- rs1_val == 137438953472<br>                                                                                                                |[0x80000574]:c.srli a0, 6<br> [0x80000576]:sd a0, 336(ra)<br>   |
|  44|[0x80002168]<br>0x0000000000000080|- rs1_val == 274877906944<br>                                                                                                                |[0x80000582]:c.srli a0, 31<br> [0x80000584]:sd a0, 344(ra)<br>  |
|  45|[0x80002170]<br>0x0000000000040000|- rs1_val == 549755813888<br>                                                                                                                |[0x80000590]:c.srli a0, 21<br> [0x80000592]:sd a0, 352(ra)<br>  |
|  46|[0x80002178]<br>0x0000000080000000|- rs1_val == 1099511627776<br>                                                                                                               |[0x8000059e]:c.srli a0, 9<br> [0x800005a0]:sd a0, 360(ra)<br>   |
|  47|[0x80002180]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                               |[0x800005ac]:c.srli a0, 62<br> [0x800005ae]:sd a0, 368(ra)<br>  |
|  48|[0x80002188]<br>0x0000008000000000|- rs1_val == 4398046511104<br>                                                                                                               |[0x800005ba]:c.srli a0, 3<br> [0x800005bc]:sd a0, 376(ra)<br>   |
|  49|[0x80002190]<br>0x0000002000000000|- rs1_val == 8796093022208<br>                                                                                                               |[0x800005c8]:c.srli a0, 6<br> [0x800005ca]:sd a0, 384(ra)<br>   |
|  50|[0x80002198]<br>0x0000080000000000|- rs1_val == 17592186044416<br>                                                                                                              |[0x800005d6]:c.srli a0, 1<br> [0x800005d8]:sd a0, 392(ra)<br>   |
|  51|[0x800021a0]<br>0x0000040000000000|- rs1_val == 35184372088832<br>                                                                                                              |[0x800005e4]:c.srli a0, 3<br> [0x800005e6]:sd a0, 400(ra)<br>   |
|  52|[0x800021a8]<br>0x0000002000000000|- rs1_val == 70368744177664<br>                                                                                                              |[0x800005f2]:c.srli a0, 9<br> [0x800005f4]:sd a0, 408(ra)<br>   |
|  53|[0x800021b0]<br>0x0000400000000000|- rs1_val == 140737488355328<br>                                                                                                             |[0x80000600]:c.srli a0, 1<br> [0x80000602]:sd a0, 416(ra)<br>   |
|  54|[0x800021b8]<br>0x0000000000000002|- rs1_val == 281474976710656<br> - imm_val == 47<br>                                                                                         |[0x8000060e]:c.srli a0, 47<br> [0x80000610]:sd a0, 424(ra)<br>  |
|  55|[0x800021c0]<br>0x0000000800000000|- rs1_val == 562949953421312<br>                                                                                                             |[0x8000061c]:c.srli a0, 14<br> [0x8000061e]:sd a0, 432(ra)<br>  |
|  56|[0x800021c8]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                            |[0x8000062a]:c.srli a0, 63<br> [0x8000062c]:sd a0, 440(ra)<br>  |
|  57|[0x800021d0]<br>0x0000000000000000|- rs1_val == 2251799813685248<br>                                                                                                            |[0x80000638]:c.srli a0, 63<br> [0x8000063a]:sd a0, 448(ra)<br>  |
|  58|[0x800021d8]<br>0x0000000000000000|- rs1_val == 4503599627370496<br>                                                                                                            |[0x80000646]:c.srli a0, 63<br> [0x80000648]:sd a0, 456(ra)<br>  |
|  59|[0x800021e0]<br>0x0000000800000000|- rs1_val == 9007199254740992<br>                                                                                                            |[0x80000654]:c.srli a0, 18<br> [0x80000656]:sd a0, 464(ra)<br>  |
|  60|[0x800021e8]<br>0x0000001000000000|- rs1_val == 18014398509481984<br>                                                                                                           |[0x80000662]:c.srli a0, 18<br> [0x80000664]:sd a0, 472(ra)<br>  |
|  61|[0x800021f0]<br>0x0000200000000000|- rs1_val == 36028797018963968<br>                                                                                                           |[0x80000670]:c.srli a0, 10<br> [0x80000672]:sd a0, 480(ra)<br>  |
|  62|[0x800021f8]<br>0x0000000800000000|- rs1_val == 72057594037927936<br>                                                                                                           |[0x8000067e]:c.srli a0, 21<br> [0x80000680]:sd a0, 488(ra)<br>  |
|  63|[0x80002200]<br>0x0000400000000000|- rs1_val == 144115188075855872<br>                                                                                                          |[0x8000068c]:c.srli a0, 11<br> [0x8000068e]:sd a0, 496(ra)<br>  |
|  64|[0x80002208]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                          |[0x8000069a]:c.srli a0, 61<br> [0x8000069c]:sd a0, 504(ra)<br>  |
|  65|[0x80002210]<br>0x0000100000000000|- rs1_val == 576460752303423488<br>                                                                                                          |[0x800006a8]:c.srli a0, 15<br> [0x800006aa]:sd a0, 512(ra)<br>  |
|  66|[0x80002218]<br>0x0000000000000002|- rs1_val == 1152921504606846976<br>                                                                                                         |[0x800006b6]:c.srli a0, 59<br> [0x800006b8]:sd a0, 520(ra)<br>  |
|  67|[0x80002220]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                         |[0x800006c4]:c.srli a0, 63<br> [0x800006c6]:sd a0, 528(ra)<br>  |
|  68|[0x80002228]<br>0x0020000000000000|- rs1_val == 4611686018427387904<br>                                                                                                         |[0x800006d2]:c.srli a0, 9<br> [0x800006d4]:sd a0, 536(ra)<br>   |
|  69|[0x80002230]<br>0x0003FFFFFFFFFFFF|- rs1_val == -2<br>                                                                                                                          |[0x800006dc]:c.srli a0, 14<br> [0x800006de]:sd a0, 544(ra)<br>  |
|  70|[0x80002238]<br>0x000FFFFFFFFFFFFF|- rs1_val == -3<br>                                                                                                                          |[0x800006e6]:c.srli a0, 12<br> [0x800006e8]:sd a0, 552(ra)<br>  |
|  71|[0x80002240]<br>0x03FFFFFFFFFFFFFF|- rs1_val == -5<br>                                                                                                                          |[0x800006f0]:c.srli a0, 6<br> [0x800006f2]:sd a0, 560(ra)<br>   |
|  72|[0x80002248]<br>0x00000000FFFFFFFF|- rs1_val == -9<br> - imm_val == 32<br>                                                                                                      |[0x800006fa]:c.srli a0, 32<br> [0x800006fc]:sd a0, 568(ra)<br>  |
|  73|[0x80002250]<br>0x1FFFFFFFFFFFFFFD|- rs1_val == -17<br>                                                                                                                         |[0x80000704]:c.srli a0, 3<br> [0x80000706]:sd a0, 576(ra)<br>   |
|  74|[0x80002258]<br>0x1FFFFFFFFFFFFFFB|- rs1_val == -33<br>                                                                                                                         |[0x8000070e]:c.srli a0, 3<br> [0x80000710]:sd a0, 584(ra)<br>   |
|  75|[0x80002260]<br>0x000000000001FFFF|- rs1_val == -65<br>                                                                                                                         |[0x80000718]:c.srli a0, 47<br> [0x8000071a]:sd a0, 592(ra)<br>  |
|  76|[0x80002268]<br>0x00000000FFFFFFFF|- rs1_val == -129<br>                                                                                                                        |[0x80000722]:c.srli a0, 32<br> [0x80000724]:sd a0, 600(ra)<br>  |
|  77|[0x80002270]<br>0x0000000000000003|- rs1_val == -257<br>                                                                                                                        |[0x8000072c]:c.srli a0, 62<br> [0x8000072e]:sd a0, 608(ra)<br>  |
|  78|[0x80002278]<br>0x00000000000001FF|- rs1_val == -513<br>                                                                                                                        |[0x80000736]:c.srli a0, 55<br> [0x80000738]:sd a0, 616(ra)<br>  |
|  79|[0x80002280]<br>0x0007FFFFFFFFFFFF|- rs1_val == -1025<br>                                                                                                                       |[0x80000740]:c.srli a0, 13<br> [0x80000742]:sd a0, 624(ra)<br>  |
|  80|[0x80002288]<br>0x0FFFFFFFFFFFFF7F|- rs1_val == -2049<br>                                                                                                                       |[0x8000074e]:c.srli a0, 4<br> [0x80000750]:sd a0, 632(ra)<br>   |
|  81|[0x80002290]<br>0x0003FFFFFFFFFFFF|- rs1_val == -4097<br>                                                                                                                       |[0x8000075c]:c.srli a0, 14<br> [0x8000075e]:sd a0, 640(ra)<br>  |
|  82|[0x80002298]<br>0x00007FFFFFFFFFFF|- rs1_val == -8193<br>                                                                                                                       |[0x8000076a]:c.srli a0, 17<br> [0x8000076c]:sd a0, 648(ra)<br>  |
|  83|[0x800022a0]<br>0x07FFFFFFFFFFFDFF|- rs1_val == -16385<br>                                                                                                                      |[0x80000778]:c.srli a0, 5<br> [0x8000077a]:sd a0, 656(ra)<br>   |
|  84|[0x800022a8]<br>0x007FFFFFFFFFFFBF|- rs1_val == -32769<br>                                                                                                                      |[0x80000786]:c.srli a0, 9<br> [0x80000788]:sd a0, 664(ra)<br>   |
|  85|[0x800022b0]<br>0x1FFFFFFFFFFFDFFF|- rs1_val == -65537<br>                                                                                                                      |[0x80000794]:c.srli a0, 3<br> [0x80000796]:sd a0, 672(ra)<br>   |
|  86|[0x800022b8]<br>0x00001FFFFFFFFFFF|- rs1_val == -131073<br>                                                                                                                     |[0x800007a2]:c.srli a0, 19<br> [0x800007a4]:sd a0, 680(ra)<br>  |
|  87|[0x800022c0]<br>0x00000001FFFFFFFF|- rs1_val == -262145<br>                                                                                                                     |[0x800007b0]:c.srli a0, 31<br> [0x800007b2]:sd a0, 688(ra)<br>  |
|  88|[0x800022c8]<br>0x0000FFFFFFFFFFF7|- rs1_val == -524289<br>                                                                                                                     |[0x800007be]:c.srli a0, 16<br> [0x800007c0]:sd a0, 696(ra)<br>  |
|  89|[0x800022d0]<br>0x0000000000000003|- rs1_val == -144115188075855873<br>                                                                                                         |[0x800007d0]:c.srli a0, 62<br> [0x800007d2]:sd a0, 704(ra)<br>  |
|  90|[0x800022d8]<br>0x00000000000001F7|- rs1_val == -288230376151711745<br>                                                                                                         |[0x800007e2]:c.srli a0, 55<br> [0x800007e4]:sd a0, 712(ra)<br>  |
|  91|[0x800022e0]<br>0x000007BFFFFFFFFF|- rs1_val == -576460752303423489<br>                                                                                                         |[0x800007f4]:c.srli a0, 21<br> [0x800007f6]:sd a0, 720(ra)<br>  |
|  92|[0x800022e8]<br>0x0077FFFFFFFFFFFF|- rs1_val == -1152921504606846977<br>                                                                                                        |[0x80000806]:c.srli a0, 9<br> [0x80000808]:sd a0, 728(ra)<br>   |
|  93|[0x800022f0]<br>0x037FFFFFFFFFFFFF|- rs1_val == -2305843009213693953<br>                                                                                                        |[0x80000818]:c.srli a0, 6<br> [0x8000081a]:sd a0, 736(ra)<br>   |
|  94|[0x800022f8]<br>0x0000BFFFFFFFFFFF|- rs1_val == -4611686018427387905<br>                                                                                                        |[0x8000082a]:c.srli a0, 16<br> [0x8000082c]:sd a0, 744(ra)<br>  |
|  95|[0x80002300]<br>0x00000000AAAAAAAA|- rs1_val == 6148914691236517205<br> - rs1_val==6148914691236517205<br>                                                                      |[0x80000850]:c.srli a0, 31<br> [0x80000852]:sd a0, 752(ra)<br>  |
|  96|[0x80002308]<br>0x02AAAAAAAAAAAAAA|- rs1_val == -6148914691236517206<br> - rs1_val==-6148914691236517206<br>                                                                    |[0x80000876]:c.srli a0, 6<br> [0x80000878]:sd a0, 760(ra)<br>   |
|  97|[0x80002310]<br>0x0000000000000000|- rs1_val==3<br>                                                                                                                             |[0x80000880]:c.srli a0, 12<br> [0x80000882]:sd a0, 768(ra)<br>  |
|  98|[0x80002318]<br>0x0000666666666666|- rs1_val==3689348814741910323<br>                                                                                                           |[0x800008a6]:c.srli a0, 15<br> [0x800008a8]:sd a0, 776(ra)<br>  |
|  99|[0x80002320]<br>0x000CCCCCCCCCCCCC|- rs1_val==7378697629483820646<br>                                                                                                           |[0x800008cc]:c.srli a0, 11<br> [0x800008ce]:sd a0, 784(ra)<br>  |
| 100|[0x80002328]<br>0x00000000000001FF|- rs1_val==-3037000499<br>                                                                                                                   |[0x800008e2]:c.srli a0, 55<br> [0x800008e4]:sd a0, 792(ra)<br>  |
| 101|[0x80002330]<br>0x00000000016A09E6|- rs1_val==3037000499<br>                                                                                                                    |[0x800008f8]:c.srli a0, 7<br> [0x800008fa]:sd a0, 800(ra)<br>   |
| 102|[0x80002338]<br>0x0000000055555555|- rs1_val==6148914691236517204<br>                                                                                                           |[0x8000091e]:c.srli a0, 32<br> [0x80000920]:sd a0, 808(ra)<br>  |
| 103|[0x80002340]<br>0x1999999999999999|- rs1_val==3689348814741910322<br>                                                                                                           |[0x80000944]:c.srli a0, 1<br> [0x80000946]:sd a0, 816(ra)<br>   |
| 104|[0x80002348]<br>0x0003333333333333|- rs1_val==7378697629483820645<br>                                                                                                           |[0x8000096a]:c.srli a0, 13<br> [0x8000096c]:sd a0, 824(ra)<br>  |
| 105|[0x80002350]<br>0x00000000002D413C|- rs1_val==3037000498<br>                                                                                                                    |[0x80000980]:c.srli a0, 10<br> [0x80000982]:sd a0, 832(ra)<br>  |
| 106|[0x80002358]<br>0x1555555555555555|- rs1_val==6148914691236517206<br>                                                                                                           |[0x800009a6]:c.srli a0, 2<br> [0x800009a8]:sd a0, 840(ra)<br>   |
| 107|[0x80002360]<br>0x00002AAAAAAAAAAA|- rs1_val==-6148914691236517205<br>                                                                                                          |[0x800009cc]:c.srli a0, 18<br> [0x800009ce]:sd a0, 848(ra)<br>  |
| 108|[0x80002368]<br>0x0000000000000000|- rs1_val==6<br>                                                                                                                             |[0x800009d6]:c.srli a0, 4<br> [0x800009d8]:sd a0, 856(ra)<br>   |
| 109|[0x80002370]<br>0x000CCCCCCCCCCCCC|- rs1_val==3689348814741910324<br>                                                                                                           |[0x800009fc]:c.srli a0, 10<br> [0x800009fe]:sd a0, 864(ra)<br>  |
| 110|[0x80002378]<br>0x0066666666666666|- rs1_val==7378697629483820647<br>                                                                                                           |[0x80000a22]:c.srli a0, 8<br> [0x80000a24]:sd a0, 872(ra)<br>   |
| 111|[0x80002380]<br>0x07FFFFFFFA57D866|- rs1_val==-3037000498<br>                                                                                                                   |[0x80000a38]:c.srli a0, 5<br> [0x80000a3a]:sd a0, 880(ra)<br>   |
| 112|[0x80002388]<br>0x0000000000000000|- rs1_val==3037000500<br>                                                                                                                    |[0x80000a4e]:c.srli a0, 47<br> [0x80000a50]:sd a0, 888(ra)<br>  |
| 113|[0x80002390]<br>0x0000000000004000|- imm_val == 42<br>                                                                                                                          |[0x80000a5c]:c.srli a0, 42<br> [0x80000a5e]:sd a0, 896(ra)<br>  |
| 114|[0x80002398]<br>0x07FFFFFFFFFF7FFF|- rs1_val == -1048577<br>                                                                                                                    |[0x80000a6a]:c.srli a0, 5<br> [0x80000a6c]:sd a0, 904(ra)<br>   |
| 115|[0x800023a0]<br>0x00000000FFFFFFFF|- rs1_val == -2097153<br>                                                                                                                    |[0x80000a78]:c.srli a0, 32<br> [0x80000a7a]:sd a0, 912(ra)<br>  |
| 116|[0x800023a8]<br>0x00FFFFFFFFFFBFFF|- rs1_val == -4194305<br>                                                                                                                    |[0x80000a86]:c.srli a0, 8<br> [0x80000a88]:sd a0, 920(ra)<br>   |
| 117|[0x800023b0]<br>0x0000000000000007|- rs1_val == -8388609<br>                                                                                                                    |[0x80000a94]:c.srli a0, 61<br> [0x80000a96]:sd a0, 928(ra)<br>  |
| 118|[0x800023b8]<br>0x3FFFFFFFFFBFFFFF|- rs1_val == -16777217<br>                                                                                                                   |[0x80000aa2]:c.srli a0, 2<br> [0x80000aa4]:sd a0, 936(ra)<br>   |
| 119|[0x800023c0]<br>0x1FFFFFFFFFBFFFFF|- rs1_val == -33554433<br>                                                                                                                   |[0x80000ab0]:c.srli a0, 3<br> [0x80000ab2]:sd a0, 944(ra)<br>   |
| 120|[0x800023c8]<br>0x003FFFFFFFFEFFFF|- rs1_val == -67108865<br>                                                                                                                   |[0x80000abe]:c.srli a0, 10<br> [0x80000ac0]:sd a0, 952(ra)<br>  |
| 121|[0x800023d0]<br>0x003FFFFFFFFDFFFF|- rs1_val == -134217729<br>                                                                                                                  |[0x80000acc]:c.srli a0, 10<br> [0x80000ace]:sd a0, 960(ra)<br>  |
| 122|[0x800023d8]<br>0x0007FFFFFFFF7FFF|- rs1_val == -268435457<br>                                                                                                                  |[0x80000ada]:c.srli a0, 13<br> [0x80000adc]:sd a0, 968(ra)<br>  |
| 123|[0x800023e0]<br>0x00000001FFFFFFFF|- rs1_val == -536870913<br>                                                                                                                  |[0x80000ae8]:c.srli a0, 31<br> [0x80000aea]:sd a0, 976(ra)<br>  |
| 124|[0x800023e8]<br>0x00000000FFFFFFFF|- rs1_val == -1073741825<br>                                                                                                                 |[0x80000af6]:c.srli a0, 32<br> [0x80000af8]:sd a0, 984(ra)<br>  |
| 125|[0x800023f0]<br>0x0000000000000003|- rs1_val == -2147483649<br>                                                                                                                 |[0x80000b08]:c.srli a0, 62<br> [0x80000b0a]:sd a0, 992(ra)<br>  |
| 126|[0x800023f8]<br>0x00000000000001FF|- rs1_val == -4294967297<br>                                                                                                                 |[0x80000b1a]:c.srli a0, 55<br> [0x80000b1c]:sd a0, 1000(ra)<br> |
| 127|[0x80002400]<br>0x001FFFFFFFBFFFFF|- rs1_val == -8589934593<br>                                                                                                                 |[0x80000b2c]:c.srli a0, 11<br> [0x80000b2e]:sd a0, 1008(ra)<br> |
| 128|[0x80002408]<br>0x000000000001FFFF|- rs1_val == -17179869185<br>                                                                                                                |[0x80000b3e]:c.srli a0, 47<br> [0x80000b40]:sd a0, 1016(ra)<br> |
| 129|[0x80002410]<br>0x0000000000000001|- rs1_val == -34359738369<br>                                                                                                                |[0x80000b50]:c.srli a0, 63<br> [0x80000b52]:sd a0, 1024(ra)<br> |
| 130|[0x80002418]<br>0x07FFFFFF7FFFFFFF|- rs1_val == -68719476737<br>                                                                                                                |[0x80000b62]:c.srli a0, 5<br> [0x80000b64]:sd a0, 1032(ra)<br>  |
| 131|[0x80002420]<br>0x0000000000000007|- rs1_val == -137438953473<br>                                                                                                               |[0x80000b74]:c.srli a0, 61<br> [0x80000b76]:sd a0, 1040(ra)<br> |
| 132|[0x80002428]<br>0x0007FFFFFDFFFFFF|- rs1_val == -274877906945<br>                                                                                                               |[0x80000b86]:c.srli a0, 13<br> [0x80000b88]:sd a0, 1048(ra)<br> |
| 133|[0x80002430]<br>0x001FFFFFEFFFFFFF|- rs1_val == -549755813889<br>                                                                                                               |[0x80000b98]:c.srli a0, 11<br> [0x80000b9a]:sd a0, 1056(ra)<br> |
| 134|[0x80002438]<br>0x000007FFFFF7FFFF|- rs1_val == -1099511627777<br>                                                                                                              |[0x80000baa]:c.srli a0, 21<br> [0x80000bac]:sd a0, 1064(ra)<br> |
| 135|[0x80002440]<br>0x01FFFFFBFFFFFFFF|- rs1_val == -2199023255553<br>                                                                                                              |[0x80000bbc]:c.srli a0, 7<br> [0x80000bbe]:sd a0, 1072(ra)<br>  |
| 136|[0x80002448]<br>0x1FFFFF7FFFFFFFFF|- rs1_val == -4398046511105<br>                                                                                                              |[0x80000bce]:c.srli a0, 3<br> [0x80000bd0]:sd a0, 1080(ra)<br>  |
| 137|[0x80002450]<br>0x003FFFFDFFFFFFFF|- rs1_val == -8796093022209<br>                                                                                                              |[0x80000be0]:c.srli a0, 10<br> [0x80000be2]:sd a0, 1088(ra)<br> |
| 138|[0x80002458]<br>0x0000000000000007|- rs1_val == -17592186044417<br>                                                                                                             |[0x80000bf2]:c.srli a0, 61<br> [0x80000bf4]:sd a0, 1096(ra)<br> |
| 139|[0x80002460]<br>0x00000001FFFFBFFF|- rs1_val == -35184372088833<br>                                                                                                             |[0x80000c04]:c.srli a0, 31<br> [0x80000c06]:sd a0, 1104(ra)<br> |
| 140|[0x80002468]<br>0x000FFFFBFFFFFFFF|- rs1_val == -70368744177665<br>                                                                                                             |[0x80000c16]:c.srli a0, 12<br> [0x80000c18]:sd a0, 1112(ra)<br> |
| 141|[0x80002470]<br>0x7FFFBFFFFFFFFFFF|- rs1_val == -140737488355329<br>                                                                                                            |[0x80000c28]:c.srli a0, 1<br> [0x80000c2a]:sd a0, 1120(ra)<br>  |
| 142|[0x80002478]<br>0x1FFFDFFFFFFFFFFF|- rs1_val == -281474976710657<br>                                                                                                            |[0x80000c3a]:c.srli a0, 3<br> [0x80000c3c]:sd a0, 1128(ra)<br>  |
| 143|[0x80002480]<br>0x3FFF7FFFFFFFFFFF|- rs1_val == -562949953421313<br>                                                                                                            |[0x80000c4c]:c.srli a0, 2<br> [0x80000c4e]:sd a0, 1136(ra)<br>  |
| 144|[0x80002488]<br>0x07FFBFFFFFFFFFFF|- rs1_val == -2251799813685249<br>                                                                                                           |[0x80000c5e]:c.srli a0, 5<br> [0x80000c60]:sd a0, 1144(ra)<br>  |
| 145|[0x80002490]<br>0x00003FFBFFFFFFFF|- rs1_val == -4503599627370497<br>                                                                                                           |[0x80000c70]:c.srli a0, 18<br> [0x80000c72]:sd a0, 1152(ra)<br> |
| 146|[0x80002498]<br>0x00000000000001FF|- rs1_val == -9007199254740993<br>                                                                                                           |[0x80000c82]:c.srli a0, 55<br> [0x80000c84]:sd a0, 1160(ra)<br> |
| 147|[0x800024a0]<br>0x000FFBFFFFFFFFFF|- rs1_val == -18014398509481985<br>                                                                                                          |[0x80000c94]:c.srli a0, 12<br> [0x80000c96]:sd a0, 1168(ra)<br> |
| 148|[0x800024a8]<br>0x00001FEFFFFFFFFF|- rs1_val == -36028797018963969<br>                                                                                                          |[0x80000ca6]:c.srli a0, 19<br> [0x80000ca8]:sd a0, 1176(ra)<br> |
| 149|[0x800024b0]<br>0x000000000001FDFF|- rs1_val == -72057594037927937<br>                                                                                                          |[0x80000cb8]:c.srli a0, 47<br> [0x80000cba]:sd a0, 1184(ra)<br> |
