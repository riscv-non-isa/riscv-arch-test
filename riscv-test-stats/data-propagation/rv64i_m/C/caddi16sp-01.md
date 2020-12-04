
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
| SIG_REGION                | [('0x80002010', '0x80002440', '134 dwords')]      |
| COV_LABELS                | caddi16sp      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/caddi16sp-01.S/caddi16sp-01.S    |
| Total Number of coverpoints| 155     |
| Total Coverpoints Hit     | 155      |
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

|s.no|            signature             |                                                                coverpoints                                                                |                              code                              |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80002010]<br>0x0000000000000080|- opcode : c.addi16sp<br> - rd : x2<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 64<br> - imm_val == 64<br> |[0x8000039c]:c.addi16sp 4<br> [0x8000039e]:sd sp, 0(ra)<br>     |
|   2|[0x80002018]<br>0xFFFFFFFFFFFFFF1F|- rs1_val != imm_val<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -129<br>                                                           |[0x800003a6]:c.addi16sp 58<br> [0x800003a8]:sd sp, 8(ra)<br>    |
|   3|[0x80002020]<br>0x0003FFFFFFFFFEF0|- rs1_val > 0 and imm_val < 0<br> - rs1_val == 1125899906842624<br> - imm_val == -272<br>                                                  |[0x800003b4]:c.addi16sp 47<br> [0x800003b6]:sd sp, 16(ra)<br>   |
|   4|[0x80002028]<br>0xFFFFFFF00000000F|- rs1_val < 0 and imm_val > 0<br> - rs1_val == -68719476737<br> - imm_val == 16<br>                                                        |[0x800003c6]:c.addi16sp 1<br> [0x800003c8]:sd sp, 24(ra)<br>    |
|   5|[0x80002030]<br>0x7FFFFFFFFFFFFFA0|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br>                                                                      |[0x800003d4]:c.addi16sp 58<br> [0x800003d6]:sd sp, 32(ra)<br>   |
|   6|[0x80002038]<br>0x0000000000000150|- rs1_val == 0<br> - imm_val == 336<br>                                                                                                    |[0x800003de]:c.addi16sp 21<br> [0x800003e0]:sd sp, 40(ra)<br>   |
|   7|[0x80002040]<br>0x800000000000003F|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>                                                                      |[0x800003f0]:c.addi16sp 4<br> [0x800003f2]:sd sp, 48(ra)<br>    |
|   8|[0x80002048]<br>0x0000000000000151|- rs1_val == 1<br>                                                                                                                         |[0x800003fa]:c.addi16sp 21<br> [0x800003fc]:sd sp, 56(ra)<br>   |
|   9|[0x80002050]<br>0xFFFFFFFFFFFFFDDF|- imm_val == -512<br> - rs1_val == -33<br>                                                                                                 |[0x80000404]:c.addi16sp 32<br> [0x80000406]:sd sp, 64(ra)<br>   |
|  10|[0x80002058]<br>0x00000000000001F9|- imm_val == 496<br>                                                                                                                       |[0x8000040e]:c.addi16sp 31<br> [0x80000410]:sd sp, 72(ra)<br>   |
|  11|[0x80002060]<br>0xFFFFFFFFFFFFFEA2|- rs1_val == 2<br> - imm_val == -352<br>                                                                                                   |[0x80000418]:c.addi16sp 42<br> [0x8000041a]:sd sp, 80(ra)<br>   |
|  12|[0x80002068]<br>0x0000000000000044|- rs1_val == 4<br>                                                                                                                         |[0x80000422]:c.addi16sp 4<br> [0x80000424]:sd sp, 88(ra)<br>    |
|  13|[0x80002070]<br>0x0000000000000018|- rs1_val == 8<br>                                                                                                                         |[0x8000042c]:c.addi16sp 1<br> [0x8000042e]:sd sp, 96(ra)<br>    |
|  14|[0x80002078]<br>0x0000000000000000|- rs1_val == 16<br>                                                                                                                        |[0x80000436]:c.addi16sp 63<br> [0x80000438]:sd sp, 104(ra)<br>  |
|  15|[0x80002080]<br>0x0000000000000050|- rs1_val == 32<br>                                                                                                                        |[0x80000440]:c.addi16sp 3<br> [0x80000442]:sd sp, 112(ra)<br>   |
|  16|[0x80002088]<br>0x00000000000000C0|- rs1_val == 128<br>                                                                                                                       |[0x8000044a]:c.addi16sp 4<br> [0x8000044c]:sd sp, 120(ra)<br>   |
|  17|[0x80002090]<br>0xFFFFFFFFFFFFFFF0|- rs1_val == 256<br>                                                                                                                       |[0x80000454]:c.addi16sp 47<br> [0x80000456]:sd sp, 128(ra)<br>  |
|  18|[0x80002098]<br>0x00000000000003F0|- rs1_val == 512<br>                                                                                                                       |[0x8000045e]:c.addi16sp 31<br> [0x80000460]:sd sp, 136(ra)<br>  |
|  19|[0x800020a0]<br>0x00000000000005F0|- rs1_val == 1024<br>                                                                                                                      |[0x80000468]:c.addi16sp 31<br> [0x8000046a]:sd sp, 144(ra)<br>  |
|  20|[0x800020a8]<br>0x0000000000000870|- rs1_val == 2048<br>                                                                                                                      |[0x80000476]:c.addi16sp 7<br> [0x80000478]:sd sp, 152(ra)<br>   |
|  21|[0x800020b0]<br>0x0000000000000FA0|- rs1_val == 4096<br>                                                                                                                      |[0x80000480]:c.addi16sp 58<br> [0x80000482]:sd sp, 160(ra)<br>  |
|  22|[0x800020b8]<br>0x0000000000002090|- rs1_val == 8192<br>                                                                                                                      |[0x8000048a]:c.addi16sp 9<br> [0x8000048c]:sd sp, 168(ra)<br>   |
|  23|[0x800020c0]<br>0x0000000000004010|- rs1_val == 16384<br>                                                                                                                     |[0x80000494]:c.addi16sp 1<br> [0x80000496]:sd sp, 176(ra)<br>   |
|  24|[0x800020c8]<br>0x0000000000008020|- rs1_val == 32768<br> - imm_val == 32<br>                                                                                                 |[0x8000049e]:c.addi16sp 2<br> [0x800004a0]:sd sp, 184(ra)<br>   |
|  25|[0x800020d0]<br>0x0000000000010060|- rs1_val == 65536<br>                                                                                                                     |[0x800004a8]:c.addi16sp 6<br> [0x800004aa]:sd sp, 192(ra)<br>   |
|  26|[0x800020d8]<br>0x000000000001FEF0|- rs1_val == 131072<br>                                                                                                                    |[0x800004b2]:c.addi16sp 47<br> [0x800004b4]:sd sp, 200(ra)<br>  |
|  27|[0x800020e0]<br>0x0000000000040150|- rs1_val == 262144<br>                                                                                                                    |[0x800004bc]:c.addi16sp 21<br> [0x800004be]:sd sp, 208(ra)<br>  |
|  28|[0x800020e8]<br>0x000000000007FE00|- rs1_val == 524288<br>                                                                                                                    |[0x800004c6]:c.addi16sp 32<br> [0x800004c8]:sd sp, 216(ra)<br>  |
|  29|[0x800020f0]<br>0x00000000001001F0|- rs1_val == 1048576<br>                                                                                                                   |[0x800004d0]:c.addi16sp 31<br> [0x800004d2]:sd sp, 224(ra)<br>  |
|  30|[0x800020f8]<br>0x00000000001FFFF0|- rs1_val == 2097152<br>                                                                                                                   |[0x800004da]:c.addi16sp 63<br> [0x800004dc]:sd sp, 232(ra)<br>  |
|  31|[0x80002100]<br>0x0000000000400030|- rs1_val == 4194304<br>                                                                                                                   |[0x800004e4]:c.addi16sp 3<br> [0x800004e6]:sd sp, 240(ra)<br>   |
|  32|[0x80002108]<br>0x0000000000800030|- rs1_val == 8388608<br>                                                                                                                   |[0x800004ee]:c.addi16sp 3<br> [0x800004f0]:sd sp, 248(ra)<br>   |
|  33|[0x80002110]<br>0x0000000001000060|- rs1_val == 16777216<br>                                                                                                                  |[0x800004f8]:c.addi16sp 6<br> [0x800004fa]:sd sp, 256(ra)<br>   |
|  34|[0x80002118]<br>0x0000000002000100|- rs1_val == 33554432<br> - imm_val == 256<br>                                                                                             |[0x80000502]:c.addi16sp 16<br> [0x80000504]:sd sp, 264(ra)<br>  |
|  35|[0x80002120]<br>0x0000000003FFFFF0|- rs1_val == 67108864<br>                                                                                                                  |[0x8000050c]:c.addi16sp 63<br> [0x8000050e]:sd sp, 272(ra)<br>  |
|  36|[0x80002128]<br>0x0000000008000080|- rs1_val == 134217728<br> - imm_val == 128<br>                                                                                            |[0x80000516]:c.addi16sp 8<br> [0x80000518]:sd sp, 280(ra)<br>   |
|  37|[0x80002130]<br>0x0000000010000150|- rs1_val == 268435456<br>                                                                                                                 |[0x80000520]:c.addi16sp 21<br> [0x80000522]:sd sp, 288(ra)<br>  |
|  38|[0x80002138]<br>0x0000000020000020|- rs1_val == 536870912<br>                                                                                                                 |[0x8000052a]:c.addi16sp 2<br> [0x8000052c]:sd sp, 296(ra)<br>   |
|  39|[0x80002140]<br>0x0000000040000040|- rs1_val == 1073741824<br>                                                                                                                |[0x80000534]:c.addi16sp 4<br> [0x80000536]:sd sp, 304(ra)<br>   |
|  40|[0x80002148]<br>0x00000000800001F0|- rs1_val == 2147483648<br>                                                                                                                |[0x80000542]:c.addi16sp 31<br> [0x80000544]:sd sp, 312(ra)<br>  |
|  41|[0x80002150]<br>0x00000000FFFFFEA0|- rs1_val == 4294967296<br>                                                                                                                |[0x80000550]:c.addi16sp 42<br> [0x80000552]:sd sp, 320(ra)<br>  |
|  42|[0x80002158]<br>0x00000001FFFFFFE0|- rs1_val == 8589934592<br> - imm_val == -32<br>                                                                                           |[0x8000055e]:c.addi16sp 62<br> [0x80000560]:sd sp, 328(ra)<br>  |
|  43|[0x80002160]<br>0x0000000400000080|- rs1_val == 17179869184<br>                                                                                                               |[0x8000056c]:c.addi16sp 8<br> [0x8000056e]:sd sp, 336(ra)<br>   |
|  44|[0x80002168]<br>0x0000000800000060|- rs1_val == 34359738368<br>                                                                                                               |[0x8000057a]:c.addi16sp 6<br> [0x8000057c]:sd sp, 344(ra)<br>   |
|  45|[0x80002170]<br>0x0000001000000010|- rs1_val == 68719476736<br>                                                                                                               |[0x80000588]:c.addi16sp 1<br> [0x8000058a]:sd sp, 352(ra)<br>   |
|  46|[0x80002178]<br>0x0000002000000070|- rs1_val == 137438953472<br>                                                                                                              |[0x80000596]:c.addi16sp 7<br> [0x80000598]:sd sp, 360(ra)<br>   |
|  47|[0x80002180]<br>0x0000004000000040|- rs1_val == 274877906944<br>                                                                                                              |[0x800005a4]:c.addi16sp 4<br> [0x800005a6]:sd sp, 368(ra)<br>   |
|  48|[0x80002188]<br>0x0000007FFFFFFFD0|- rs1_val == 549755813888<br> - imm_val == -48<br>                                                                                         |[0x800005b2]:c.addi16sp 61<br> [0x800005b4]:sd sp, 376(ra)<br>  |
|  49|[0x80002190]<br>0x000000FFFFFFFFC0|- rs1_val == 1099511627776<br>                                                                                                             |[0x800005c0]:c.addi16sp 60<br> [0x800005c2]:sd sp, 384(ra)<br>  |
|  50|[0x80002198]<br>0x000001FFFFFFFFF0|- rs1_val == 2199023255552<br>                                                                                                             |[0x800005ce]:c.addi16sp 63<br> [0x800005d0]:sd sp, 392(ra)<br>  |
|  51|[0x800021a0]<br>0x000003FFFFFFFFB0|- rs1_val == 4398046511104<br> - imm_val == -80<br>                                                                                        |[0x800005dc]:c.addi16sp 59<br> [0x800005de]:sd sp, 400(ra)<br>  |
|  52|[0x800021a8]<br>0x00000800000000F0|- rs1_val == 8796093022208<br>                                                                                                             |[0x800005ea]:c.addi16sp 15<br> [0x800005ec]:sd sp, 408(ra)<br>  |
|  53|[0x800021b0]<br>0x00001000000000F0|- rs1_val == 17592186044416<br>                                                                                                            |[0x800005f8]:c.addi16sp 15<br> [0x800005fa]:sd sp, 416(ra)<br>  |
|  54|[0x800021b8]<br>0x00001FFFFFFFFF80|- rs1_val == 35184372088832<br>                                                                                                            |[0x80000606]:c.addi16sp 56<br> [0x80000608]:sd sp, 424(ra)<br>  |
|  55|[0x800021c0]<br>0x00004000000000F0|- rs1_val == 70368744177664<br>                                                                                                            |[0x80000614]:c.addi16sp 15<br> [0x80000616]:sd sp, 432(ra)<br>  |
|  56|[0x800021c8]<br>0x0000800000000010|- rs1_val == 140737488355328<br>                                                                                                           |[0x80000622]:c.addi16sp 1<br> [0x80000624]:sd sp, 440(ra)<br>   |
|  57|[0x800021d0]<br>0x0000FFFFFFFFFFA0|- rs1_val == 281474976710656<br>                                                                                                           |[0x80000630]:c.addi16sp 58<br> [0x80000632]:sd sp, 448(ra)<br>  |
|  58|[0x800021d8]<br>0x0002000000000030|- rs1_val == 562949953421312<br>                                                                                                           |[0x8000063e]:c.addi16sp 3<br> [0x80000640]:sd sp, 456(ra)<br>   |
|  59|[0x800021e0]<br>0x0008000000000020|- rs1_val == 2251799813685248<br>                                                                                                          |[0x8000064c]:c.addi16sp 2<br> [0x8000064e]:sd sp, 464(ra)<br>   |
|  60|[0x800021e8]<br>0x000FFFFFFFFFFF90|- rs1_val == 4503599627370496<br>                                                                                                          |[0x8000065a]:c.addi16sp 57<br> [0x8000065c]:sd sp, 472(ra)<br>  |
|  61|[0x800021f0]<br>0x001FFFFFFFFFFFC0|- rs1_val == 9007199254740992<br>                                                                                                          |[0x80000668]:c.addi16sp 60<br> [0x8000066a]:sd sp, 480(ra)<br>  |
|  62|[0x800021f8]<br>0x0040000000000020|- rs1_val == 18014398509481984<br>                                                                                                         |[0x80000676]:c.addi16sp 2<br> [0x80000678]:sd sp, 488(ra)<br>   |
|  63|[0x80002200]<br>0x0080000000000020|- rs1_val == 36028797018963968<br>                                                                                                         |[0x80000684]:c.addi16sp 2<br> [0x80000686]:sd sp, 496(ra)<br>   |
|  64|[0x80002208]<br>0x00FFFFFFFFFFFF60|- rs1_val == 72057594037927936<br>                                                                                                         |[0x80000692]:c.addi16sp 54<br> [0x80000694]:sd sp, 504(ra)<br>  |
|  65|[0x80002210]<br>0x0200000000000050|- rs1_val == 144115188075855872<br>                                                                                                        |[0x800006a0]:c.addi16sp 5<br> [0x800006a2]:sd sp, 512(ra)<br>   |
|  66|[0x80002218]<br>0x0400000000000090|- rs1_val == 288230376151711744<br>                                                                                                        |[0x800006ae]:c.addi16sp 9<br> [0x800006b0]:sd sp, 520(ra)<br>   |
|  67|[0x80002220]<br>0x0800000000000100|- rs1_val == 576460752303423488<br>                                                                                                        |[0x800006bc]:c.addi16sp 16<br> [0x800006be]:sd sp, 528(ra)<br>  |
|  68|[0x80002228]<br>0x1000000000000020|- rs1_val == 1152921504606846976<br>                                                                                                       |[0x800006ca]:c.addi16sp 2<br> [0x800006cc]:sd sp, 536(ra)<br>   |
|  69|[0x80002230]<br>0x2000000000000030|- rs1_val == 2305843009213693952<br>                                                                                                       |[0x800006d8]:c.addi16sp 3<br> [0x800006da]:sd sp, 544(ra)<br>   |
|  70|[0x80002238]<br>0x4000000000000100|- rs1_val == 4611686018427387904<br>                                                                                                       |[0x800006e6]:c.addi16sp 16<br> [0x800006e8]:sd sp, 552(ra)<br>  |
|  71|[0x80002240]<br>0xFFDFFFFFFFFFFEEF|- rs1_val == -9007199254740993<br>                                                                                                         |[0x800006f8]:c.addi16sp 47<br> [0x800006fa]:sd sp, 560(ra)<br>  |
|  72|[0x80002248]<br>0xFFBFFFFFFFFFFEEF|- rs1_val == -18014398509481985<br>                                                                                                        |[0x8000070a]:c.addi16sp 47<br> [0x8000070c]:sd sp, 568(ra)<br>  |
|  73|[0x80002250]<br>0xFF8000000000005F|- rs1_val == -36028797018963969<br>                                                                                                        |[0x8000071c]:c.addi16sp 6<br> [0x8000071e]:sd sp, 576(ra)<br>   |
|  74|[0x80002258]<br>0xFF000000000001EF|- rs1_val == -72057594037927937<br>                                                                                                        |[0x8000072e]:c.addi16sp 31<br> [0x80000730]:sd sp, 584(ra)<br>  |
|  75|[0x80002260]<br>0xFDFFFFFFFFFFFDFF|- rs1_val == -144115188075855873<br>                                                                                                       |[0x80000740]:c.addi16sp 32<br> [0x80000742]:sd sp, 592(ra)<br>  |
|  76|[0x80002268]<br>0xFBFFFFFFFFFFFF5F|- rs1_val == -288230376151711745<br>                                                                                                       |[0x80000752]:c.addi16sp 54<br> [0x80000754]:sd sp, 600(ra)<br>  |
|  77|[0x80002270]<br>0xF80000000000008F|- rs1_val == -576460752303423489<br>                                                                                                       |[0x80000764]:c.addi16sp 9<br> [0x80000766]:sd sp, 608(ra)<br>   |
|  78|[0x80002278]<br>0xEFFFFFFFFFFFFFEF|- rs1_val == -1152921504606846977<br>                                                                                                      |[0x80000776]:c.addi16sp 63<br> [0x80000778]:sd sp, 616(ra)<br>  |
|  79|[0x80002280]<br>0xE0000000000001EF|- rs1_val == -2305843009213693953<br>                                                                                                      |[0x80000788]:c.addi16sp 31<br> [0x8000078a]:sd sp, 624(ra)<br>  |
|  80|[0x80002288]<br>0xC0000000000001EF|- rs1_val == -4611686018427387905<br>                                                                                                      |[0x8000079a]:c.addi16sp 31<br> [0x8000079c]:sd sp, 632(ra)<br>  |
|  81|[0x80002290]<br>0x5555555555555355|- rs1_val == 6148914691236517205<br>                                                                                                       |[0x800007c0]:c.addi16sp 32<br> [0x800007c2]:sd sp, 640(ra)<br>  |
|  82|[0x80002298]<br>0xAAAAAAAAAAAAAADA|- rs1_val == -6148914691236517206<br>                                                                                                      |[0x800007e6]:c.addi16sp 3<br> [0x800007e8]:sd sp, 648(ra)<br>   |
|  83|[0x800022a0]<br>0x00000000007FFF70|- imm_val == -144<br>                                                                                                                      |[0x800007f0]:c.addi16sp 55<br> [0x800007f2]:sd sp, 656(ra)<br>  |
|  84|[0x800022a8]<br>0xFFFFFFFFFFFFFF5E|- rs1_val == -2<br>                                                                                                                        |[0x800007fa]:c.addi16sp 54<br> [0x800007fc]:sd sp, 664(ra)<br>  |
|  85|[0x800022b0]<br>0xFFFFFFFFFFFFFF9D|- rs1_val == -3<br>                                                                                                                        |[0x80000804]:c.addi16sp 58<br> [0x80000806]:sd sp, 672(ra)<br>  |
|  86|[0x800022b8]<br>0xFFFFFFFFFFFFFFDB|- rs1_val == -5<br>                                                                                                                        |[0x8000080e]:c.addi16sp 62<br> [0x80000810]:sd sp, 680(ra)<br>  |
|  87|[0x800022c0]<br>0xFFFFFFFFFFFFFF67|- rs1_val == -9<br>                                                                                                                        |[0x80000818]:c.addi16sp 55<br> [0x8000081a]:sd sp, 688(ra)<br>  |
|  88|[0x800022c8]<br>0xFFFFFFFFFFFFFEDF|- rs1_val == -17<br>                                                                                                                       |[0x80000822]:c.addi16sp 47<br> [0x80000824]:sd sp, 696(ra)<br>  |
|  89|[0x800022d0]<br>0x000000000000003F|- rs1_val == -65<br>                                                                                                                       |[0x8000082c]:c.addi16sp 8<br> [0x8000082e]:sd sp, 704(ra)<br>   |
|  90|[0x800022d8]<br>0xFFFFFFFFFFFFFFFF|- rs1_val == -257<br>                                                                                                                      |[0x80000836]:c.addi16sp 16<br> [0x80000838]:sd sp, 712(ra)<br>  |
|  91|[0x800022e0]<br>0xFFFFFFFFFFFFFE0F|- rs1_val == -513<br>                                                                                                                      |[0x80000840]:c.addi16sp 1<br> [0x80000842]:sd sp, 720(ra)<br>   |
|  92|[0x800022e8]<br>0xFFFFFFFFFFFFFBDF|- rs1_val == -1025<br>                                                                                                                     |[0x8000084a]:c.addi16sp 62<br> [0x8000084c]:sd sp, 728(ra)<br>  |
|  93|[0x800022f0]<br>0xFFFFFFFFFFFFF80F|- rs1_val == -2049<br>                                                                                                                     |[0x80000858]:c.addi16sp 1<br> [0x8000085a]:sd sp, 736(ra)<br>   |
|  94|[0x800022f8]<br>0xFFFFFFFFFFFFF14F|- rs1_val == -4097<br>                                                                                                                     |[0x80000866]:c.addi16sp 21<br> [0x80000868]:sd sp, 744(ra)<br>  |
|  95|[0x80002300]<br>0xFFFFFFFFFFFFDFAF|- rs1_val == -8193<br>                                                                                                                     |[0x80000874]:c.addi16sp 59<br> [0x80000876]:sd sp, 752(ra)<br>  |
|  96|[0x80002308]<br>0xFFFFFFFFFFFFC14F|- rs1_val == -16385<br>                                                                                                                    |[0x80000882]:c.addi16sp 21<br> [0x80000884]:sd sp, 760(ra)<br>  |
|  97|[0x80002310]<br>0xFFFFFFFFFFFF808F|- rs1_val == -32769<br>                                                                                                                    |[0x80000890]:c.addi16sp 9<br> [0x80000892]:sd sp, 768(ra)<br>   |
|  98|[0x80002318]<br>0xFFFFFFFFFFFEFF5F|- rs1_val == -65537<br>                                                                                                                    |[0x8000089e]:c.addi16sp 54<br> [0x800008a0]:sd sp, 776(ra)<br>  |
|  99|[0x80002320]<br>0xFFFFFFFFFFFE006F|- rs1_val == -131073<br>                                                                                                                   |[0x800008ac]:c.addi16sp 7<br> [0x800008ae]:sd sp, 784(ra)<br>   |
| 100|[0x80002328]<br>0xFFFFFFFFFFFBFFEF|- rs1_val == -262145<br>                                                                                                                   |[0x800008ba]:c.addi16sp 63<br> [0x800008bc]:sd sp, 792(ra)<br>  |
| 101|[0x80002330]<br>0xFFFFFFFFFFF8008F|- rs1_val == -524289<br>                                                                                                                   |[0x800008c8]:c.addi16sp 9<br> [0x800008ca]:sd sp, 800(ra)<br>   |
| 102|[0x80002338]<br>0xFFFFFFFFFFF0006F|- rs1_val == -1048577<br>                                                                                                                  |[0x800008d6]:c.addi16sp 7<br> [0x800008d8]:sd sp, 808(ra)<br>   |
| 103|[0x80002340]<br>0xFFFFFFFFFFE0002F|- rs1_val == -2097153<br>                                                                                                                  |[0x800008e4]:c.addi16sp 3<br> [0x800008e6]:sd sp, 816(ra)<br>   |
| 104|[0x80002348]<br>0xFFFFFFFFFFC0008F|- rs1_val == -4194305<br>                                                                                                                  |[0x800008f2]:c.addi16sp 9<br> [0x800008f4]:sd sp, 824(ra)<br>   |
| 105|[0x80002350]<br>0xFFFFFFFFFF7FFE9F|- rs1_val == -8388609<br>                                                                                                                  |[0x80000900]:c.addi16sp 42<br> [0x80000902]:sd sp, 832(ra)<br>  |
| 106|[0x80002358]<br>0xFFFFFFFFFF00005F|- rs1_val == -16777217<br>                                                                                                                 |[0x8000090e]:c.addi16sp 6<br> [0x80000910]:sd sp, 840(ra)<br>   |
| 107|[0x80002360]<br>0xFFFFFFFFFE00004F|- rs1_val == -33554433<br>                                                                                                                 |[0x8000091c]:c.addi16sp 5<br> [0x8000091e]:sd sp, 848(ra)<br>   |
| 108|[0x80002368]<br>0xFFFFFFFFFBFFFEFF|- rs1_val == -67108865<br>                                                                                                                 |[0x8000092a]:c.addi16sp 48<br> [0x8000092c]:sd sp, 856(ra)<br>  |
| 109|[0x80002370]<br>0xFFFFFFFFF7FFFF7F|- rs1_val == -134217729<br>                                                                                                                |[0x80000938]:c.addi16sp 56<br> [0x8000093a]:sd sp, 864(ra)<br>  |
| 110|[0x80002378]<br>0xFFFFFFFFF000006F|- rs1_val == -268435457<br>                                                                                                                |[0x80000946]:c.addi16sp 7<br> [0x80000948]:sd sp, 872(ra)<br>   |
| 111|[0x80002380]<br>0xFFFFFFFFE000004F|- rs1_val == -536870913<br>                                                                                                                |[0x80000954]:c.addi16sp 5<br> [0x80000956]:sd sp, 880(ra)<br>   |
| 112|[0x80002388]<br>0xFFFFFFFFBFFFFFDF|- rs1_val == -1073741825<br>                                                                                                               |[0x80000962]:c.addi16sp 62<br> [0x80000964]:sd sp, 888(ra)<br>  |
| 113|[0x80002390]<br>0xFFFFFFFF7FFFFF7F|- rs1_val == -2147483649<br>                                                                                                               |[0x80000974]:c.addi16sp 56<br> [0x80000976]:sd sp, 896(ra)<br>  |
| 114|[0x80002398]<br>0xFFFFFFFF000000EF|- rs1_val == -4294967297<br>                                                                                                               |[0x80000986]:c.addi16sp 15<br> [0x80000988]:sd sp, 904(ra)<br>  |
| 115|[0x800023a0]<br>0xFFFFFFFE000000EF|- rs1_val == -8589934593<br>                                                                                                               |[0x80000998]:c.addi16sp 15<br> [0x8000099a]:sd sp, 912(ra)<br>  |
| 116|[0x800023a8]<br>0xFFFFFFFBFFFFFE9F|- rs1_val == -17179869185<br>                                                                                                              |[0x800009aa]:c.addi16sp 42<br> [0x800009ac]:sd sp, 920(ra)<br>  |
| 117|[0x800023b0]<br>0xFFFFFFF80000001F|- rs1_val == -34359738369<br>                                                                                                              |[0x800009bc]:c.addi16sp 2<br> [0x800009be]:sd sp, 928(ra)<br>   |
| 118|[0x800023b8]<br>0xFFFFFFE00000003F|- rs1_val == -137438953473<br>                                                                                                             |[0x800009ce]:c.addi16sp 4<br> [0x800009d0]:sd sp, 936(ra)<br>   |
| 119|[0x800023c0]<br>0xFFFFFFC00000003F|- rs1_val == -274877906945<br>                                                                                                             |[0x800009e0]:c.addi16sp 4<br> [0x800009e2]:sd sp, 944(ra)<br>   |
| 120|[0x800023c8]<br>0xFFFFFF7FFFFFFF5F|- rs1_val == -549755813889<br>                                                                                                             |[0x800009f2]:c.addi16sp 54<br> [0x800009f4]:sd sp, 952(ra)<br>  |
| 121|[0x800023d0]<br>0xFFFFFF000000002F|- rs1_val == -1099511627777<br>                                                                                                            |[0x80000a04]:c.addi16sp 3<br> [0x80000a06]:sd sp, 960(ra)<br>   |
| 122|[0x800023d8]<br>0xFFFFFE00000001EF|- rs1_val == -2199023255553<br>                                                                                                            |[0x80000a16]:c.addi16sp 31<br> [0x80000a18]:sd sp, 968(ra)<br>  |
| 123|[0x800023e0]<br>0xFFFFFBFFFFFFFF8F|- rs1_val == -4398046511105<br>                                                                                                            |[0x80000a28]:c.addi16sp 57<br> [0x80000a2a]:sd sp, 976(ra)<br>  |
| 124|[0x800023e8]<br>0xFFFFF7FFFFFFFF7F|- rs1_val == -8796093022209<br>                                                                                                            |[0x80000a3a]:c.addi16sp 56<br> [0x80000a3c]:sd sp, 984(ra)<br>  |
| 125|[0x800023f0]<br>0xFFFFF0000000003F|- rs1_val == -17592186044417<br>                                                                                                           |[0x80000a4c]:c.addi16sp 4<br> [0x80000a4e]:sd sp, 992(ra)<br>   |
| 126|[0x800023f8]<br>0xFFFFE0000000000F|- rs1_val == -35184372088833<br>                                                                                                           |[0x80000a5e]:c.addi16sp 1<br> [0x80000a60]:sd sp, 1000(ra)<br>  |
| 127|[0x80002400]<br>0xFFFFC000000000FF|- rs1_val == -70368744177665<br>                                                                                                           |[0x80000a70]:c.addi16sp 16<br> [0x80000a72]:sd sp, 1008(ra)<br> |
| 128|[0x80002408]<br>0xFFFF80000000000F|- rs1_val == -140737488355329<br>                                                                                                          |[0x80000a82]:c.addi16sp 1<br> [0x80000a84]:sd sp, 1016(ra)<br>  |
| 129|[0x80002410]<br>0xFFFF00000000007F|- rs1_val == -281474976710657<br>                                                                                                          |[0x80000a94]:c.addi16sp 8<br> [0x80000a96]:sd sp, 1024(ra)<br>  |
| 130|[0x80002418]<br>0xFFFDFFFFFFFFFF6F|- rs1_val == -562949953421313<br>                                                                                                          |[0x80000aa6]:c.addi16sp 55<br> [0x80000aa8]:sd sp, 1032(ra)<br> |
| 131|[0x80002420]<br>0xFFFBFFFFFFFFFFEF|- rs1_val == -1125899906842625<br>                                                                                                         |[0x80000ab8]:c.addi16sp 63<br> [0x80000aba]:sd sp, 1040(ra)<br> |
| 132|[0x80002428]<br>0xFFF7FFFFFFFFFFBF|- rs1_val == -2251799813685249<br>                                                                                                         |[0x80000aca]:c.addi16sp 60<br> [0x80000acc]:sd sp, 1048(ra)<br> |
| 133|[0x80002430]<br>0xFFF000000000008F|- rs1_val == -4503599627370497<br>                                                                                                         |[0x80000adc]:c.addi16sp 9<br> [0x80000ade]:sd sp, 1056(ra)<br>  |
