
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
| SIG_REGION                | [('0x80002010', '0x80002430', '132 dwords')]      |
| COV_LABELS                | caddi16sp      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/caddi16sp-01.S/caddi16sp-01.S    |
| Total Number of coverpoints| 155     |
| Total Coverpoints Hit     | 155      |
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

|s.no|            signature             |                                                                 coverpoints                                                                 |                              code                              |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80002010]<br>0x0000000000000200|- opcode : c.addi16sp<br> - rd : x2<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 256<br> - imm_val == 256<br> |[0x8000039c]:c.addi16sp 16<br> [0x8000039e]:sd sp, 0(ra)<br>    |
|   2|[0x80002018]<br>0x00000000001FFF70|- rs1_val != imm_val<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 2097152<br> - imm_val == -144<br>                                    |[0x800003a6]:c.addi16sp 55<br> [0x800003a8]:sd sp, 8(ra)<br>    |
|   3|[0x80002020]<br>0xFFFFFFC00000008F|- rs1_val < 0 and imm_val > 0<br> - rs1_val == -274877906945<br>                                                                             |[0x800003b8]:c.addi16sp 9<br> [0x800003ba]:sd sp, 16(ra)<br>    |
|   4|[0x80002028]<br>0xFFFFFFFFFFFFFDFE|- rs1_val < 0 and imm_val < 0<br> - imm_val == -512<br> - rs1_val == -2<br>                                                                  |[0x800003c2]:c.addi16sp 32<br> [0x800003c4]:sd sp, 24(ra)<br>   |
|   5|[0x80002030]<br>0x8000000000000010|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br> - imm_val == 16<br>                                                    |[0x800003d0]:c.addi16sp 1<br> [0x800003d2]:sd sp, 32(ra)<br>    |
|   6|[0x80002038]<br>0x0000000000000030|- rs1_val == 0<br>                                                                                                                           |[0x800003da]:c.addi16sp 3<br> [0x800003dc]:sd sp, 40(ra)<br>    |
|   7|[0x80002040]<br>0x800000000000008F|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>                                                                        |[0x800003ec]:c.addi16sp 9<br> [0x800003ee]:sd sp, 48(ra)<br>    |
|   8|[0x80002048]<br>0x00000000000000F1|- rs1_val == 1<br>                                                                                                                           |[0x800003f6]:c.addi16sp 15<br> [0x800003f8]:sd sp, 56(ra)<br>   |
|   9|[0x80002050]<br>0xFFFFFFFFFFFF01EF|- imm_val == 496<br> - rs1_val == -65537<br>                                                                                                 |[0x80000404]:c.addi16sp 31<br> [0x80000406]:sd sp, 64(ra)<br>   |
|  10|[0x80002058]<br>0x0000000000000152|- rs1_val == 2<br> - imm_val == 336<br>                                                                                                      |[0x8000040e]:c.addi16sp 21<br> [0x80000410]:sd sp, 72(ra)<br>   |
|  11|[0x80002060]<br>0xFFFFFFFFFFFFFFD4|- rs1_val == 4<br> - imm_val == -48<br>                                                                                                      |[0x80000418]:c.addi16sp 61<br> [0x8000041a]:sd sp, 80(ra)<br>   |
|  12|[0x80002068]<br>0x0000000000000088|- rs1_val == 8<br> - imm_val == 128<br>                                                                                                      |[0x80000422]:c.addi16sp 8<br> [0x80000424]:sd sp, 88(ra)<br>    |
|  13|[0x80002070]<br>0x0000000000000160|- rs1_val == 16<br>                                                                                                                          |[0x8000042c]:c.addi16sp 21<br> [0x8000042e]:sd sp, 96(ra)<br>   |
|  14|[0x80002078]<br>0xFFFFFFFFFFFFFFD0|- rs1_val == 32<br> - imm_val == -80<br>                                                                                                     |[0x80000436]:c.addi16sp 59<br> [0x80000438]:sd sp, 104(ra)<br>  |
|  15|[0x80002080]<br>0x0000000000000230|- rs1_val == 64<br>                                                                                                                          |[0x80000440]:c.addi16sp 31<br> [0x80000442]:sd sp, 112(ra)<br>  |
|  16|[0x80002088]<br>0x0000000000000270|- rs1_val == 128<br>                                                                                                                         |[0x8000044a]:c.addi16sp 31<br> [0x8000044c]:sd sp, 120(ra)<br>  |
|  17|[0x80002090]<br>0x0000000000000250|- rs1_val == 512<br>                                                                                                                         |[0x80000454]:c.addi16sp 5<br> [0x80000456]:sd sp, 128(ra)<br>   |
|  18|[0x80002098]<br>0x0000000000000440|- rs1_val == 1024<br> - imm_val == 64<br>                                                                                                    |[0x8000045e]:c.addi16sp 4<br> [0x80000460]:sd sp, 136(ra)<br>   |
|  19|[0x800020a0]<br>0x00000000000007B0|- rs1_val == 2048<br>                                                                                                                        |[0x8000046c]:c.addi16sp 59<br> [0x8000046e]:sd sp, 144(ra)<br>  |
|  20|[0x800020a8]<br>0x0000000000000FB0|- rs1_val == 4096<br>                                                                                                                        |[0x80000476]:c.addi16sp 59<br> [0x80000478]:sd sp, 152(ra)<br>  |
|  21|[0x800020b0]<br>0x0000000000002080|- rs1_val == 8192<br>                                                                                                                        |[0x80000480]:c.addi16sp 8<br> [0x80000482]:sd sp, 160(ra)<br>   |
|  22|[0x800020b8]<br>0x00000000000040F0|- rs1_val == 16384<br>                                                                                                                       |[0x8000048a]:c.addi16sp 15<br> [0x8000048c]:sd sp, 168(ra)<br>  |
|  23|[0x800020c0]<br>0x0000000000008010|- rs1_val == 32768<br>                                                                                                                       |[0x80000494]:c.addi16sp 1<br> [0x80000496]:sd sp, 176(ra)<br>   |
|  24|[0x800020c8]<br>0x0000000000010020|- rs1_val == 65536<br> - imm_val == 32<br>                                                                                                   |[0x8000049e]:c.addi16sp 2<br> [0x800004a0]:sd sp, 184(ra)<br>   |
|  25|[0x800020d0]<br>0x0000000000020100|- rs1_val == 131072<br>                                                                                                                      |[0x800004a8]:c.addi16sp 16<br> [0x800004aa]:sd sp, 192(ra)<br>  |
|  26|[0x800020d8]<br>0x0000000000040060|- rs1_val == 262144<br>                                                                                                                      |[0x800004b2]:c.addi16sp 6<br> [0x800004b4]:sd sp, 200(ra)<br>   |
|  27|[0x800020e0]<br>0x0000000000080050|- rs1_val == 524288<br>                                                                                                                      |[0x800004bc]:c.addi16sp 5<br> [0x800004be]:sd sp, 208(ra)<br>   |
|  28|[0x800020e8]<br>0x0000000000100040|- rs1_val == 1048576<br>                                                                                                                     |[0x800004c6]:c.addi16sp 4<br> [0x800004c8]:sd sp, 216(ra)<br>   |
|  29|[0x800020f0]<br>0x0000000000400060|- rs1_val == 4194304<br>                                                                                                                     |[0x800004d0]:c.addi16sp 6<br> [0x800004d2]:sd sp, 224(ra)<br>   |
|  30|[0x800020f8]<br>0x00000000007FFF70|- rs1_val == 8388608<br>                                                                                                                     |[0x800004da]:c.addi16sp 55<br> [0x800004dc]:sd sp, 232(ra)<br>  |
|  31|[0x80002100]<br>0x0000000000FFFFA0|- rs1_val == 16777216<br>                                                                                                                    |[0x800004e4]:c.addi16sp 58<br> [0x800004e6]:sd sp, 240(ra)<br>  |
|  32|[0x80002108]<br>0x0000000001FFFFD0|- rs1_val == 33554432<br>                                                                                                                    |[0x800004ee]:c.addi16sp 61<br> [0x800004f0]:sd sp, 248(ra)<br>  |
|  33|[0x80002110]<br>0x0000000004000070|- rs1_val == 67108864<br>                                                                                                                    |[0x800004f8]:c.addi16sp 7<br> [0x800004fa]:sd sp, 256(ra)<br>   |
|  34|[0x80002118]<br>0x0000000008000030|- rs1_val == 134217728<br>                                                                                                                   |[0x80000502]:c.addi16sp 3<br> [0x80000504]:sd sp, 264(ra)<br>   |
|  35|[0x80002120]<br>0x000000000FFFFF60|- rs1_val == 268435456<br>                                                                                                                   |[0x8000050c]:c.addi16sp 54<br> [0x8000050e]:sd sp, 272(ra)<br>  |
|  36|[0x80002128]<br>0x000000001FFFFFB0|- rs1_val == 536870912<br>                                                                                                                   |[0x80000516]:c.addi16sp 59<br> [0x80000518]:sd sp, 280(ra)<br>  |
|  37|[0x80002130]<br>0x000000003FFFFE00|- rs1_val == 1073741824<br>                                                                                                                  |[0x80000520]:c.addi16sp 32<br> [0x80000522]:sd sp, 288(ra)<br>  |
|  38|[0x80002138]<br>0x000000007FFFFFC0|- rs1_val == 2147483648<br>                                                                                                                  |[0x8000052e]:c.addi16sp 60<br> [0x80000530]:sd sp, 296(ra)<br>  |
|  39|[0x80002140]<br>0x0000000100000020|- rs1_val == 4294967296<br>                                                                                                                  |[0x8000053c]:c.addi16sp 2<br> [0x8000053e]:sd sp, 304(ra)<br>   |
|  40|[0x80002148]<br>0x0000000200000060|- rs1_val == 8589934592<br>                                                                                                                  |[0x8000054a]:c.addi16sp 6<br> [0x8000054c]:sd sp, 312(ra)<br>   |
|  41|[0x80002150]<br>0x00000003FFFFFFC0|- rs1_val == 17179869184<br>                                                                                                                 |[0x80000558]:c.addi16sp 60<br> [0x8000055a]:sd sp, 320(ra)<br>  |
|  42|[0x80002158]<br>0x0000000800000050|- rs1_val == 34359738368<br>                                                                                                                 |[0x80000566]:c.addi16sp 5<br> [0x80000568]:sd sp, 328(ra)<br>   |
|  43|[0x80002160]<br>0x0000001000000080|- rs1_val == 68719476736<br>                                                                                                                 |[0x80000574]:c.addi16sp 8<br> [0x80000576]:sd sp, 336(ra)<br>   |
|  44|[0x80002168]<br>0x0000001FFFFFFFB0|- rs1_val == 137438953472<br>                                                                                                                |[0x80000582]:c.addi16sp 59<br> [0x80000584]:sd sp, 344(ra)<br>  |
|  45|[0x80002170]<br>0x0000003FFFFFFF60|- rs1_val == 274877906944<br>                                                                                                                |[0x80000590]:c.addi16sp 54<br> [0x80000592]:sd sp, 352(ra)<br>  |
|  46|[0x80002178]<br>0x0000007FFFFFFF90|- rs1_val == 549755813888<br>                                                                                                                |[0x8000059e]:c.addi16sp 57<br> [0x800005a0]:sd sp, 360(ra)<br>  |
|  47|[0x80002180]<br>0x000000FFFFFFFFC0|- rs1_val == 1099511627776<br>                                                                                                               |[0x800005ac]:c.addi16sp 60<br> [0x800005ae]:sd sp, 368(ra)<br>  |
|  48|[0x80002188]<br>0x0000020000000070|- rs1_val == 2199023255552<br>                                                                                                               |[0x800005ba]:c.addi16sp 7<br> [0x800005bc]:sd sp, 376(ra)<br>   |
|  49|[0x80002190]<br>0x0000040000000010|- rs1_val == 4398046511104<br>                                                                                                               |[0x800005c8]:c.addi16sp 1<br> [0x800005ca]:sd sp, 384(ra)<br>   |
|  50|[0x80002198]<br>0x000007FFFFFFFFD0|- rs1_val == 8796093022208<br>                                                                                                               |[0x800005d6]:c.addi16sp 61<br> [0x800005d8]:sd sp, 392(ra)<br>  |
|  51|[0x800021a0]<br>0x00001000000001F0|- rs1_val == 17592186044416<br>                                                                                                              |[0x800005e4]:c.addi16sp 31<br> [0x800005e6]:sd sp, 400(ra)<br>  |
|  52|[0x800021a8]<br>0x00002000000000F0|- rs1_val == 35184372088832<br>                                                                                                              |[0x800005f2]:c.addi16sp 15<br> [0x800005f4]:sd sp, 408(ra)<br>  |
|  53|[0x800021b0]<br>0x0000400000000030|- rs1_val == 70368744177664<br>                                                                                                              |[0x80000600]:c.addi16sp 3<br> [0x80000602]:sd sp, 416(ra)<br>   |
|  54|[0x800021b8]<br>0x0000800000000070|- rs1_val == 140737488355328<br>                                                                                                             |[0x8000060e]:c.addi16sp 7<br> [0x80000610]:sd sp, 424(ra)<br>   |
|  55|[0x800021c0]<br>0x0001000000000030|- rs1_val == 281474976710656<br>                                                                                                             |[0x8000061c]:c.addi16sp 3<br> [0x8000061e]:sd sp, 432(ra)<br>   |
|  56|[0x800021c8]<br>0x0002000000000030|- rs1_val == 562949953421312<br>                                                                                                             |[0x8000062a]:c.addi16sp 3<br> [0x8000062c]:sd sp, 440(ra)<br>   |
|  57|[0x800021d0]<br>0x0003FFFFFFFFFEA0|- rs1_val == 1125899906842624<br> - imm_val == -352<br>                                                                                      |[0x80000638]:c.addi16sp 42<br> [0x8000063a]:sd sp, 448(ra)<br>  |
|  58|[0x800021d8]<br>0x0007FFFFFFFFFFD0|- rs1_val == 2251799813685248<br>                                                                                                            |[0x80000646]:c.addi16sp 61<br> [0x80000648]:sd sp, 456(ra)<br>  |
|  59|[0x800021e0]<br>0x0010000000000080|- rs1_val == 4503599627370496<br>                                                                                                            |[0x80000654]:c.addi16sp 8<br> [0x80000656]:sd sp, 464(ra)<br>   |
|  60|[0x800021e8]<br>0x00200000000001F0|- rs1_val == 9007199254740992<br>                                                                                                            |[0x80000662]:c.addi16sp 31<br> [0x80000664]:sd sp, 472(ra)<br>  |
|  61|[0x800021f0]<br>0x00400000000000F0|- rs1_val == 18014398509481984<br>                                                                                                           |[0x80000670]:c.addi16sp 15<br> [0x80000672]:sd sp, 480(ra)<br>  |
|  62|[0x800021f8]<br>0x007FFFFFFFFFFFD0|- rs1_val == 36028797018963968<br>                                                                                                           |[0x8000067e]:c.addi16sp 61<br> [0x80000680]:sd sp, 488(ra)<br>  |
|  63|[0x80002200]<br>0x00FFFFFFFFFFFFE0|- rs1_val == 72057594037927936<br> - imm_val == -32<br>                                                                                      |[0x8000068c]:c.addi16sp 62<br> [0x8000068e]:sd sp, 496(ra)<br>  |
|  64|[0x80002208]<br>0x0200000000000020|- rs1_val == 144115188075855872<br>                                                                                                          |[0x8000069a]:c.addi16sp 2<br> [0x8000069c]:sd sp, 504(ra)<br>   |
|  65|[0x80002210]<br>0x03FFFFFFFFFFFFC0|- rs1_val == 288230376151711744<br>                                                                                                          |[0x800006a8]:c.addi16sp 60<br> [0x800006aa]:sd sp, 512(ra)<br>  |
|  66|[0x80002218]<br>0x0800000000000040|- rs1_val == 576460752303423488<br>                                                                                                          |[0x800006b6]:c.addi16sp 4<br> [0x800006b8]:sd sp, 520(ra)<br>   |
|  67|[0x80002220]<br>0x1000000000000020|- rs1_val == 1152921504606846976<br>                                                                                                         |[0x800006c4]:c.addi16sp 2<br> [0x800006c6]:sd sp, 528(ra)<br>   |
|  68|[0x80002228]<br>0x2000000000000030|- rs1_val == 2305843009213693952<br>                                                                                                         |[0x800006d2]:c.addi16sp 3<br> [0x800006d4]:sd sp, 536(ra)<br>   |
|  69|[0x80002230]<br>0x4000000000000050|- rs1_val == 4611686018427387904<br>                                                                                                         |[0x800006e0]:c.addi16sp 5<br> [0x800006e2]:sd sp, 544(ra)<br>   |
|  70|[0x80002238]<br>0xFFDFFFFFFFFFFFEF|- rs1_val == -9007199254740993<br>                                                                                                           |[0x800006f2]:c.addi16sp 63<br> [0x800006f4]:sd sp, 552(ra)<br>  |
|  71|[0x80002240]<br>0xFFC00000000001EF|- rs1_val == -18014398509481985<br>                                                                                                          |[0x80000704]:c.addi16sp 31<br> [0x80000706]:sd sp, 560(ra)<br>  |
|  72|[0x80002248]<br>0xFF8000000000002F|- rs1_val == -36028797018963969<br>                                                                                                          |[0x80000716]:c.addi16sp 3<br> [0x80000718]:sd sp, 568(ra)<br>   |
|  73|[0x80002250]<br>0xFF0000000000007F|- rs1_val == -72057594037927937<br>                                                                                                          |[0x80000728]:c.addi16sp 8<br> [0x8000072a]:sd sp, 576(ra)<br>   |
|  74|[0x80002258]<br>0xFDFFFFFFFFFFFF7F|- rs1_val == -144115188075855873<br>                                                                                                         |[0x8000073a]:c.addi16sp 56<br> [0x8000073c]:sd sp, 584(ra)<br>  |
|  75|[0x80002260]<br>0xFC0000000000014F|- rs1_val == -288230376151711745<br>                                                                                                         |[0x8000074c]:c.addi16sp 21<br> [0x8000074e]:sd sp, 592(ra)<br>  |
|  76|[0x80002268]<br>0xF7FFFFFFFFFFFFBF|- rs1_val == -576460752303423489<br>                                                                                                         |[0x8000075e]:c.addi16sp 60<br> [0x80000760]:sd sp, 600(ra)<br>  |
|  77|[0x80002270]<br>0xEFFFFFFFFFFFFF8F|- rs1_val == -1152921504606846977<br>                                                                                                        |[0x80000770]:c.addi16sp 57<br> [0x80000772]:sd sp, 608(ra)<br>  |
|  78|[0x80002278]<br>0xDFFFFFFFFFFFFEFF|- rs1_val == -2305843009213693953<br>                                                                                                        |[0x80000782]:c.addi16sp 48<br> [0x80000784]:sd sp, 616(ra)<br>  |
|  79|[0x80002280]<br>0xBFFFFFFFFFFFFF9F|- rs1_val == -4611686018427387905<br>                                                                                                        |[0x80000794]:c.addi16sp 58<br> [0x80000796]:sd sp, 624(ra)<br>  |
|  80|[0x80002288]<br>0x5555555555555655|- rs1_val == 6148914691236517205<br>                                                                                                         |[0x800007ba]:c.addi16sp 16<br> [0x800007bc]:sd sp, 632(ra)<br>  |
|  81|[0x80002290]<br>0xAAAAAAAAAAAAAA6A|- rs1_val == -6148914691236517206<br>                                                                                                        |[0x800007e0]:c.addi16sp 60<br> [0x800007e2]:sd sp, 640(ra)<br>  |
|  82|[0x80002298]<br>0xFFFFFFFFFFFFFFF0|- imm_val == -272<br>                                                                                                                        |[0x800007ea]:c.addi16sp 47<br> [0x800007ec]:sd sp, 648(ra)<br>  |
|  83|[0x800022a0]<br>0x000000000000004D|- rs1_val == -3<br>                                                                                                                          |[0x800007f4]:c.addi16sp 5<br> [0x800007f6]:sd sp, 656(ra)<br>   |
|  84|[0x800022a8]<br>0x000000000000001B|- rs1_val == -5<br>                                                                                                                          |[0x800007fe]:c.addi16sp 2<br> [0x80000800]:sd sp, 664(ra)<br>   |
|  85|[0x800022b0]<br>0xFFFFFFFFFFFFFFB7|- rs1_val == -9<br>                                                                                                                          |[0x80000808]:c.addi16sp 60<br> [0x8000080a]:sd sp, 672(ra)<br>  |
|  86|[0x800022b8]<br>0x000000000000013F|- rs1_val == -17<br>                                                                                                                         |[0x80000812]:c.addi16sp 21<br> [0x80000814]:sd sp, 680(ra)<br>  |
|  87|[0x800022c0]<br>0xFFFFFFFFFFFFFECF|- rs1_val == -33<br>                                                                                                                         |[0x8000081c]:c.addi16sp 47<br> [0x8000081e]:sd sp, 688(ra)<br>  |
|  88|[0x800022c8]<br>0xFFFFFFFFFFFFFF1F|- rs1_val == -65<br>                                                                                                                         |[0x80000826]:c.addi16sp 54<br> [0x80000828]:sd sp, 696(ra)<br>  |
|  89|[0x800022d0]<br>0xFFFFFFFFFFFFFD7F|- rs1_val == -129<br>                                                                                                                        |[0x80000830]:c.addi16sp 32<br> [0x80000832]:sd sp, 704(ra)<br>  |
|  90|[0x800022d8]<br>0xFFFFFFFFFFFFFEBF|- rs1_val == -257<br>                                                                                                                        |[0x8000083a]:c.addi16sp 60<br> [0x8000083c]:sd sp, 712(ra)<br>  |
|  91|[0x800022e0]<br>0xFFFFFFFFFFFFFE5F|- rs1_val == -513<br>                                                                                                                        |[0x80000844]:c.addi16sp 6<br> [0x80000846]:sd sp, 720(ra)<br>   |
|  92|[0x800022e8]<br>0xFFFFFFFFFFFFFDEF|- rs1_val == -1025<br>                                                                                                                       |[0x8000084e]:c.addi16sp 31<br> [0x80000850]:sd sp, 728(ra)<br>  |
|  93|[0x800022f0]<br>0xFFFFFFFFFFFFF83F|- rs1_val == -2049<br>                                                                                                                       |[0x8000085c]:c.addi16sp 4<br> [0x8000085e]:sd sp, 736(ra)<br>   |
|  94|[0x800022f8]<br>0xFFFFFFFFFFFFF04F|- rs1_val == -4097<br>                                                                                                                       |[0x8000086a]:c.addi16sp 5<br> [0x8000086c]:sd sp, 744(ra)<br>   |
|  95|[0x80002300]<br>0xFFFFFFFFFFFFDFEF|- rs1_val == -8193<br>                                                                                                                       |[0x80000878]:c.addi16sp 63<br> [0x8000087a]:sd sp, 752(ra)<br>  |
|  96|[0x80002308]<br>0xFFFFFFFFFFFFBEFF|- rs1_val == -16385<br>                                                                                                                      |[0x80000886]:c.addi16sp 48<br> [0x80000888]:sd sp, 760(ra)<br>  |
|  97|[0x80002310]<br>0xFFFFFFFFFFFF806F|- rs1_val == -32769<br>                                                                                                                      |[0x80000894]:c.addi16sp 7<br> [0x80000896]:sd sp, 768(ra)<br>   |
|  98|[0x80002318]<br>0xFFFFFFFFFFFE008F|- rs1_val == -131073<br>                                                                                                                     |[0x800008a2]:c.addi16sp 9<br> [0x800008a4]:sd sp, 776(ra)<br>   |
|  99|[0x80002320]<br>0xFFFFFFFFFFFC007F|- rs1_val == -262145<br>                                                                                                                     |[0x800008b0]:c.addi16sp 8<br> [0x800008b2]:sd sp, 784(ra)<br>   |
| 100|[0x80002328]<br>0xFFFFFFFFFFF8008F|- rs1_val == -524289<br>                                                                                                                     |[0x800008be]:c.addi16sp 9<br> [0x800008c0]:sd sp, 792(ra)<br>   |
| 101|[0x80002330]<br>0xFFFFFFFFFFEFFFEF|- rs1_val == -1048577<br>                                                                                                                    |[0x800008cc]:c.addi16sp 63<br> [0x800008ce]:sd sp, 800(ra)<br>  |
| 102|[0x80002338]<br>0xFFFFFFFFFFE0002F|- rs1_val == -2097153<br>                                                                                                                    |[0x800008da]:c.addi16sp 3<br> [0x800008dc]:sd sp, 808(ra)<br>   |
| 103|[0x80002340]<br>0xFFFFFFFFFFC0007F|- rs1_val == -4194305<br>                                                                                                                    |[0x800008e8]:c.addi16sp 8<br> [0x800008ea]:sd sp, 816(ra)<br>   |
| 104|[0x80002348]<br>0xFFFFFFFFFF80001F|- rs1_val == -8388609<br>                                                                                                                    |[0x800008f6]:c.addi16sp 2<br> [0x800008f8]:sd sp, 824(ra)<br>   |
| 105|[0x80002350]<br>0xFFFFFFFFFF00007F|- rs1_val == -16777217<br>                                                                                                                   |[0x80000904]:c.addi16sp 8<br> [0x80000906]:sd sp, 832(ra)<br>   |
| 106|[0x80002358]<br>0xFFFFFFFFFE00002F|- rs1_val == -33554433<br>                                                                                                                   |[0x80000912]:c.addi16sp 3<br> [0x80000914]:sd sp, 840(ra)<br>   |
| 107|[0x80002360]<br>0xFFFFFFFFFBFFFFAF|- rs1_val == -67108865<br>                                                                                                                   |[0x80000920]:c.addi16sp 59<br> [0x80000922]:sd sp, 848(ra)<br>  |
| 108|[0x80002368]<br>0xFFFFFFFFF800002F|- rs1_val == -134217729<br>                                                                                                                  |[0x8000092e]:c.addi16sp 3<br> [0x80000930]:sd sp, 856(ra)<br>   |
| 109|[0x80002370]<br>0xFFFFFFFFEFFFFFCF|- rs1_val == -268435457<br>                                                                                                                  |[0x8000093c]:c.addi16sp 61<br> [0x8000093e]:sd sp, 864(ra)<br>  |
| 110|[0x80002378]<br>0xFFFFFFFFDFFFFFBF|- rs1_val == -536870913<br>                                                                                                                  |[0x8000094a]:c.addi16sp 60<br> [0x8000094c]:sd sp, 872(ra)<br>  |
| 111|[0x80002380]<br>0xFFFFFFFFBFFFFEEF|- rs1_val == -1073741825<br>                                                                                                                 |[0x80000958]:c.addi16sp 47<br> [0x8000095a]:sd sp, 880(ra)<br>  |
| 112|[0x80002388]<br>0xFFFFFFFF7FFFFF9F|- rs1_val == -2147483649<br>                                                                                                                 |[0x8000096a]:c.addi16sp 58<br> [0x8000096c]:sd sp, 888(ra)<br>  |
| 113|[0x80002390]<br>0xFFFFFFFF0000006F|- rs1_val == -4294967297<br>                                                                                                                 |[0x8000097c]:c.addi16sp 7<br> [0x8000097e]:sd sp, 896(ra)<br>   |
| 114|[0x80002398]<br>0xFFFFFFFDFFFFFF6F|- rs1_val == -8589934593<br>                                                                                                                 |[0x8000098e]:c.addi16sp 55<br> [0x80000990]:sd sp, 904(ra)<br>  |
| 115|[0x800023a0]<br>0xFFFFFFFBFFFFFF5F|- rs1_val == -17179869185<br>                                                                                                                |[0x800009a0]:c.addi16sp 54<br> [0x800009a2]:sd sp, 912(ra)<br>  |
| 116|[0x800023a8]<br>0xFFFFFFF80000008F|- rs1_val == -34359738369<br>                                                                                                                |[0x800009b2]:c.addi16sp 9<br> [0x800009b4]:sd sp, 920(ra)<br>   |
| 117|[0x800023b0]<br>0xFFFFFFEFFFFFFF5F|- rs1_val == -68719476737<br>                                                                                                                |[0x800009c4]:c.addi16sp 54<br> [0x800009c6]:sd sp, 928(ra)<br>  |
| 118|[0x800023b8]<br>0xFFFFFFE0000000FF|- rs1_val == -137438953473<br>                                                                                                               |[0x800009d6]:c.addi16sp 16<br> [0x800009d8]:sd sp, 936(ra)<br>  |
| 119|[0x800023c0]<br>0xFFFFFF7FFFFFFF5F|- rs1_val == -549755813889<br>                                                                                                               |[0x800009e8]:c.addi16sp 54<br> [0x800009ea]:sd sp, 944(ra)<br>  |
| 120|[0x800023c8]<br>0xFFFFFEFFFFFFFFCF|- rs1_val == -1099511627777<br>                                                                                                              |[0x800009fa]:c.addi16sp 61<br> [0x800009fc]:sd sp, 952(ra)<br>  |
| 121|[0x800023d0]<br>0xFFFFFDFFFFFFFF5F|- rs1_val == -2199023255553<br>                                                                                                              |[0x80000a0c]:c.addi16sp 54<br> [0x80000a0e]:sd sp, 960(ra)<br>  |
| 122|[0x800023d8]<br>0xFFFFFBFFFFFFFEEF|- rs1_val == -4398046511105<br>                                                                                                              |[0x80000a1e]:c.addi16sp 47<br> [0x80000a20]:sd sp, 968(ra)<br>  |
| 123|[0x800023e0]<br>0xFFFFF8000000000F|- rs1_val == -8796093022209<br>                                                                                                              |[0x80000a30]:c.addi16sp 1<br> [0x80000a32]:sd sp, 976(ra)<br>   |
| 124|[0x800023e8]<br>0xFFFFF0000000006F|- rs1_val == -17592186044417<br>                                                                                                             |[0x80000a42]:c.addi16sp 7<br> [0x80000a44]:sd sp, 984(ra)<br>   |
| 125|[0x800023f0]<br>0xFFFFE0000000003F|- rs1_val == -35184372088833<br>                                                                                                             |[0x80000a54]:c.addi16sp 4<br> [0x80000a56]:sd sp, 992(ra)<br>   |
| 126|[0x800023f8]<br>0xFFFFC000000000FF|- rs1_val == -70368744177665<br>                                                                                                             |[0x80000a66]:c.addi16sp 16<br> [0x80000a68]:sd sp, 1000(ra)<br> |
| 127|[0x80002400]<br>0xFFFF80000000003F|- rs1_val == -140737488355329<br>                                                                                                            |[0x80000a78]:c.addi16sp 4<br> [0x80000a7a]:sd sp, 1008(ra)<br>  |
| 128|[0x80002408]<br>0xFFFF0000000001EF|- rs1_val == -281474976710657<br>                                                                                                            |[0x80000a8a]:c.addi16sp 31<br> [0x80000a8c]:sd sp, 1016(ra)<br> |
| 129|[0x80002410]<br>0xFFFDFFFFFFFFFF5F|- rs1_val == -562949953421313<br>                                                                                                            |[0x80000a9c]:c.addi16sp 54<br> [0x80000a9e]:sd sp, 1024(ra)<br> |
| 130|[0x80002418]<br>0xFFFBFFFFFFFFFFEF|- rs1_val == -1125899906842625<br>                                                                                                           |[0x80000aae]:c.addi16sp 63<br> [0x80000ab0]:sd sp, 1032(ra)<br> |
| 131|[0x80002420]<br>0xFFF7FFFFFFFFFF8F|- rs1_val == -2251799813685249<br>                                                                                                           |[0x80000ac0]:c.addi16sp 57<br> [0x80000ac2]:sd sp, 1040(ra)<br> |
| 132|[0x80002428]<br>0xFFEFFFFFFFFFFFDF|- rs1_val == -4503599627370497<br>                                                                                                           |[0x80000ad2]:c.addi16sp 62<br> [0x80000ad4]:sd sp, 1048(ra)<br> |
