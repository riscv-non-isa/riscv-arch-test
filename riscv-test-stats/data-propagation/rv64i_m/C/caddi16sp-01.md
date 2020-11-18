
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000b00')]      |
| SIG_REGION                | [('0x80002208', '0x80002638', '134 dwords')]      |
| COV_LABELS                | caddi16sp      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/caddi16sp-01.S/caddi16sp-01.S    |
| Total Number of coverpoints| 155     |
| Total Coverpoints Hit     | 155      |
| Total Signature Updates   | 134      |
| STAT1                     | 134      |
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
|   1|[0x80002208]<br>0x0000000000000100|- opcode : c.addi16sp<br> - rd : x2<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 128<br> - imm_val == 128<br> |[0x8000039c]:c.addi16sp 8<br> [0x8000039e]:sd sp, 0(ra)<br>     |
|   2|[0x80002210]<br>0x000007FFFFFFFFA0|- rs1_val != imm_val<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 8796093022208<br>                                                    |[0x800003aa]:c.addi16sp 58<br> [0x800003ac]:sd sp, 8(ra)<br>    |
|   3|[0x80002218]<br>0xFFFFFFFFFFFFE14F|- rs1_val < 0 and imm_val > 0<br> - rs1_val == -8193<br> - imm_val == 336<br>                                                                |[0x800003b8]:c.addi16sp 21<br> [0x800003ba]:sd sp, 16(ra)<br>   |
|   4|[0x80002220]<br>0xBFFFFFFFFFFFFFBF|- rs1_val < 0 and imm_val < 0<br> - rs1_val == -4611686018427387905<br>                                                                      |[0x800003ca]:c.addi16sp 60<br> [0x800003cc]:sd sp, 24(ra)<br>   |
|   5|[0x80002228]<br>0x8000000000000070|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br>                                                                        |[0x800003d8]:c.addi16sp 7<br> [0x800003da]:sd sp, 32(ra)<br>    |
|   6|[0x80002230]<br>0xFFFFFFFFFFFFFFF0|- rs1_val == 0<br>                                                                                                                           |[0x800003e2]:c.addi16sp 63<br> [0x800003e4]:sd sp, 40(ra)<br>   |
|   7|[0x80002238]<br>0x800000000000000F|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br> - imm_val == 16<br>                                                    |[0x800003f4]:c.addi16sp 1<br> [0x800003f6]:sd sp, 48(ra)<br>    |
|   8|[0x80002240]<br>0xFFFFFFFFFFFFFEF1|- rs1_val == 1<br> - imm_val == -272<br>                                                                                                     |[0x800003fe]:c.addi16sp 47<br> [0x80000400]:sd sp, 56(ra)<br>   |
|   9|[0x80002248]<br>0xFFFFFFFFFFFFFDFF|- imm_val == -512<br>                                                                                                                        |[0x80000408]:c.addi16sp 32<br> [0x8000040a]:sd sp, 64(ra)<br>   |
|  10|[0x80002250]<br>0xFF000000000001EF|- imm_val == 496<br> - rs1_val == -72057594037927937<br>                                                                                     |[0x8000041a]:c.addi16sp 31<br> [0x8000041c]:sd sp, 72(ra)<br>   |
|  11|[0x80002258]<br>0xFFFFFFFFFFFFFFE2|- rs1_val == 2<br> - imm_val == -32<br>                                                                                                      |[0x80000424]:c.addi16sp 62<br> [0x80000426]:sd sp, 80(ra)<br>   |
|  12|[0x80002260]<br>0xFFFFFFFFFFFFFFA4|- rs1_val == 4<br>                                                                                                                           |[0x8000042e]:c.addi16sp 58<br> [0x80000430]:sd sp, 88(ra)<br>   |
|  13|[0x80002268]<br>0x0000000000000028|- rs1_val == 8<br> - imm_val == 32<br>                                                                                                       |[0x80000438]:c.addi16sp 2<br> [0x8000043a]:sd sp, 96(ra)<br>    |
|  14|[0x80002270]<br>0xFFFFFFFFFFFFFF80|- rs1_val == 16<br> - imm_val == -144<br>                                                                                                    |[0x80000442]:c.addi16sp 55<br> [0x80000444]:sd sp, 104(ra)<br>  |
|  15|[0x80002278]<br>0xFFFFFFFFFFFFFF10|- rs1_val == 32<br>                                                                                                                          |[0x8000044c]:c.addi16sp 47<br> [0x8000044e]:sd sp, 112(ra)<br>  |
|  16|[0x80002280]<br>0x0000000000000230|- rs1_val == 64<br>                                                                                                                          |[0x80000456]:c.addi16sp 31<br> [0x80000458]:sd sp, 120(ra)<br>  |
|  17|[0x80002288]<br>0x0000000000000150|- rs1_val == 256<br>                                                                                                                         |[0x80000460]:c.addi16sp 5<br> [0x80000462]:sd sp, 128(ra)<br>   |
|  18|[0x80002290]<br>0x00000000000001C0|- rs1_val == 512<br>                                                                                                                         |[0x8000046a]:c.addi16sp 60<br> [0x8000046c]:sd sp, 136(ra)<br>  |
|  19|[0x80002298]<br>0x0000000000000450|- rs1_val == 1024<br>                                                                                                                        |[0x80000474]:c.addi16sp 5<br> [0x80000476]:sd sp, 144(ra)<br>   |
|  20|[0x800022a0]<br>0x00000000000009F0|- rs1_val == 2048<br>                                                                                                                        |[0x80000482]:c.addi16sp 31<br> [0x80000484]:sd sp, 152(ra)<br>  |
|  21|[0x800022a8]<br>0x0000000000001080|- rs1_val == 4096<br>                                                                                                                        |[0x8000048c]:c.addi16sp 8<br> [0x8000048e]:sd sp, 160(ra)<br>   |
|  22|[0x800022b0]<br>0x0000000000001F00|- rs1_val == 8192<br>                                                                                                                        |[0x80000496]:c.addi16sp 48<br> [0x80000498]:sd sp, 168(ra)<br>  |
|  23|[0x800022b8]<br>0x0000000000004150|- rs1_val == 16384<br>                                                                                                                       |[0x800004a0]:c.addi16sp 21<br> [0x800004a2]:sd sp, 176(ra)<br>  |
|  24|[0x800022c0]<br>0x0000000000007FE0|- rs1_val == 32768<br>                                                                                                                       |[0x800004aa]:c.addi16sp 62<br> [0x800004ac]:sd sp, 184(ra)<br>  |
|  25|[0x800022c8]<br>0x00000000000101F0|- rs1_val == 65536<br>                                                                                                                       |[0x800004b4]:c.addi16sp 31<br> [0x800004b6]:sd sp, 192(ra)<br>  |
|  26|[0x800022d0]<br>0x0000000000020020|- rs1_val == 131072<br>                                                                                                                      |[0x800004be]:c.addi16sp 2<br> [0x800004c0]:sd sp, 200(ra)<br>   |
|  27|[0x800022d8]<br>0x000000000003FFE0|- rs1_val == 262144<br>                                                                                                                      |[0x800004c8]:c.addi16sp 62<br> [0x800004ca]:sd sp, 208(ra)<br>  |
|  28|[0x800022e0]<br>0x000000000007FFC0|- rs1_val == 524288<br>                                                                                                                      |[0x800004d2]:c.addi16sp 60<br> [0x800004d4]:sd sp, 216(ra)<br>  |
|  29|[0x800022e8]<br>0x00000000000FFE00|- rs1_val == 1048576<br>                                                                                                                     |[0x800004dc]:c.addi16sp 32<br> [0x800004de]:sd sp, 224(ra)<br>  |
|  30|[0x800022f0]<br>0x00000000001FFFC0|- rs1_val == 2097152<br>                                                                                                                     |[0x800004e6]:c.addi16sp 60<br> [0x800004e8]:sd sp, 232(ra)<br>  |
|  31|[0x800022f8]<br>0x00000000003FFFA0|- rs1_val == 4194304<br>                                                                                                                     |[0x800004f0]:c.addi16sp 58<br> [0x800004f2]:sd sp, 240(ra)<br>  |
|  32|[0x80002300]<br>0x00000000007FFFF0|- rs1_val == 8388608<br>                                                                                                                     |[0x800004fa]:c.addi16sp 63<br> [0x800004fc]:sd sp, 248(ra)<br>  |
|  33|[0x80002308]<br>0x0000000000FFFE00|- rs1_val == 16777216<br>                                                                                                                    |[0x80000504]:c.addi16sp 32<br> [0x80000506]:sd sp, 256(ra)<br>  |
|  34|[0x80002310]<br>0x0000000002000080|- rs1_val == 33554432<br>                                                                                                                    |[0x8000050e]:c.addi16sp 8<br> [0x80000510]:sd sp, 264(ra)<br>   |
|  35|[0x80002318]<br>0x0000000003FFFFF0|- rs1_val == 67108864<br>                                                                                                                    |[0x80000518]:c.addi16sp 63<br> [0x8000051a]:sd sp, 272(ra)<br>  |
|  36|[0x80002320]<br>0x0000000008000010|- rs1_val == 134217728<br>                                                                                                                   |[0x80000522]:c.addi16sp 1<br> [0x80000524]:sd sp, 280(ra)<br>   |
|  37|[0x80002328]<br>0x000000000FFFFFB0|- rs1_val == 268435456<br> - imm_val == -80<br>                                                                                              |[0x8000052c]:c.addi16sp 59<br> [0x8000052e]:sd sp, 288(ra)<br>  |
|  38|[0x80002330]<br>0x0000000020000020|- rs1_val == 536870912<br>                                                                                                                   |[0x80000536]:c.addi16sp 2<br> [0x80000538]:sd sp, 296(ra)<br>   |
|  39|[0x80002338]<br>0x000000003FFFFFC0|- rs1_val == 1073741824<br>                                                                                                                  |[0x80000540]:c.addi16sp 60<br> [0x80000542]:sd sp, 304(ra)<br>  |
|  40|[0x80002340]<br>0x0000000080000060|- rs1_val == 2147483648<br>                                                                                                                  |[0x8000054e]:c.addi16sp 6<br> [0x80000550]:sd sp, 312(ra)<br>   |
|  41|[0x80002348]<br>0x00000000FFFFFFB0|- rs1_val == 4294967296<br>                                                                                                                  |[0x8000055c]:c.addi16sp 59<br> [0x8000055e]:sd sp, 320(ra)<br>  |
|  42|[0x80002350]<br>0x0000000200000150|- rs1_val == 8589934592<br>                                                                                                                  |[0x8000056a]:c.addi16sp 21<br> [0x8000056c]:sd sp, 328(ra)<br>  |
|  43|[0x80002358]<br>0x00000003FFFFFFD0|- rs1_val == 17179869184<br> - imm_val == -48<br>                                                                                            |[0x80000578]:c.addi16sp 61<br> [0x8000057a]:sd sp, 336(ra)<br>  |
|  44|[0x80002360]<br>0x00000007FFFFFF60|- rs1_val == 34359738368<br>                                                                                                                 |[0x80000586]:c.addi16sp 54<br> [0x80000588]:sd sp, 344(ra)<br>  |
|  45|[0x80002368]<br>0x0000000FFFFFFFC0|- rs1_val == 68719476736<br>                                                                                                                 |[0x80000594]:c.addi16sp 60<br> [0x80000596]:sd sp, 352(ra)<br>  |
|  46|[0x80002370]<br>0x00000020000001F0|- rs1_val == 137438953472<br>                                                                                                                |[0x800005a2]:c.addi16sp 31<br> [0x800005a4]:sd sp, 360(ra)<br>  |
|  47|[0x80002378]<br>0x0000003FFFFFFFA0|- rs1_val == 274877906944<br>                                                                                                                |[0x800005b0]:c.addi16sp 58<br> [0x800005b2]:sd sp, 368(ra)<br>  |
|  48|[0x80002380]<br>0x0000007FFFFFFFB0|- rs1_val == 549755813888<br>                                                                                                                |[0x800005be]:c.addi16sp 59<br> [0x800005c0]:sd sp, 376(ra)<br>  |
|  49|[0x80002388]<br>0x000000FFFFFFFEF0|- rs1_val == 1099511627776<br>                                                                                                               |[0x800005cc]:c.addi16sp 47<br> [0x800005ce]:sd sp, 384(ra)<br>  |
|  50|[0x80002390]<br>0x00000200000001F0|- rs1_val == 2199023255552<br>                                                                                                               |[0x800005da]:c.addi16sp 31<br> [0x800005dc]:sd sp, 392(ra)<br>  |
|  51|[0x80002398]<br>0x000003FFFFFFFF00|- rs1_val == 4398046511104<br>                                                                                                               |[0x800005e8]:c.addi16sp 48<br> [0x800005ea]:sd sp, 400(ra)<br>  |
|  52|[0x800023a0]<br>0x00000FFFFFFFFFD0|- rs1_val == 17592186044416<br>                                                                                                              |[0x800005f6]:c.addi16sp 61<br> [0x800005f8]:sd sp, 408(ra)<br>  |
|  53|[0x800023a8]<br>0x00001FFFFFFFFFE0|- rs1_val == 35184372088832<br>                                                                                                              |[0x80000604]:c.addi16sp 62<br> [0x80000606]:sd sp, 416(ra)<br>  |
|  54|[0x800023b0]<br>0x00004000000001F0|- rs1_val == 70368744177664<br>                                                                                                              |[0x80000612]:c.addi16sp 31<br> [0x80000614]:sd sp, 424(ra)<br>  |
|  55|[0x800023b8]<br>0x0000800000000030|- rs1_val == 140737488355328<br>                                                                                                             |[0x80000620]:c.addi16sp 3<br> [0x80000622]:sd sp, 432(ra)<br>   |
|  56|[0x800023c0]<br>0x0000FFFFFFFFFFC0|- rs1_val == 281474976710656<br>                                                                                                             |[0x8000062e]:c.addi16sp 60<br> [0x80000630]:sd sp, 440(ra)<br>  |
|  57|[0x800023c8]<br>0x0001FFFFFFFFFF80|- rs1_val == 562949953421312<br>                                                                                                             |[0x8000063c]:c.addi16sp 56<br> [0x8000063e]:sd sp, 448(ra)<br>  |
|  58|[0x800023d0]<br>0x0004000000000090|- rs1_val == 1125899906842624<br>                                                                                                            |[0x8000064a]:c.addi16sp 9<br> [0x8000064c]:sd sp, 456(ra)<br>   |
|  59|[0x800023d8]<br>0x0007FFFFFFFFFFF0|- rs1_val == 2251799813685248<br>                                                                                                            |[0x80000658]:c.addi16sp 63<br> [0x8000065a]:sd sp, 464(ra)<br>  |
|  60|[0x800023e0]<br>0x000FFFFFFFFFFFE0|- rs1_val == 4503599627370496<br>                                                                                                            |[0x80000666]:c.addi16sp 62<br> [0x80000668]:sd sp, 472(ra)<br>  |
|  61|[0x800023e8]<br>0x00200000000001F0|- rs1_val == 9007199254740992<br>                                                                                                            |[0x80000674]:c.addi16sp 31<br> [0x80000676]:sd sp, 480(ra)<br>  |
|  62|[0x800023f0]<br>0x003FFFFFFFFFFFC0|- rs1_val == 18014398509481984<br>                                                                                                           |[0x80000682]:c.addi16sp 60<br> [0x80000684]:sd sp, 488(ra)<br>  |
|  63|[0x800023f8]<br>0x0080000000000010|- rs1_val == 36028797018963968<br>                                                                                                           |[0x80000690]:c.addi16sp 1<br> [0x80000692]:sd sp, 496(ra)<br>   |
|  64|[0x80002400]<br>0x00FFFFFFFFFFFF80|- rs1_val == 72057594037927936<br>                                                                                                           |[0x8000069e]:c.addi16sp 56<br> [0x800006a0]:sd sp, 504(ra)<br>  |
|  65|[0x80002408]<br>0x01FFFFFFFFFFFF60|- rs1_val == 144115188075855872<br>                                                                                                          |[0x800006ac]:c.addi16sp 54<br> [0x800006ae]:sd sp, 512(ra)<br>  |
|  66|[0x80002410]<br>0x0400000000000020|- rs1_val == 288230376151711744<br>                                                                                                          |[0x800006ba]:c.addi16sp 2<br> [0x800006bc]:sd sp, 520(ra)<br>   |
|  67|[0x80002418]<br>0x07FFFFFFFFFFFF70|- rs1_val == 576460752303423488<br>                                                                                                          |[0x800006c8]:c.addi16sp 55<br> [0x800006ca]:sd sp, 528(ra)<br>  |
|  68|[0x80002420]<br>0x10000000000001F0|- rs1_val == 1152921504606846976<br>                                                                                                         |[0x800006d6]:c.addi16sp 31<br> [0x800006d8]:sd sp, 536(ra)<br>  |
|  69|[0x80002428]<br>0x2000000000000020|- rs1_val == 2305843009213693952<br>                                                                                                         |[0x800006e4]:c.addi16sp 2<br> [0x800006e6]:sd sp, 544(ra)<br>   |
|  70|[0x80002430]<br>0x3FFFFFFFFFFFFFA0|- rs1_val == 4611686018427387904<br>                                                                                                         |[0x800006f2]:c.addi16sp 58<br> [0x800006f4]:sd sp, 552(ra)<br>  |
|  71|[0x80002438]<br>0x00000000000000EE|- rs1_val == -2<br>                                                                                                                          |[0x800006fc]:c.addi16sp 15<br> [0x800006fe]:sd sp, 560(ra)<br>  |
|  72|[0x80002440]<br>0xFFFFFFFFFFFFFEFD|- rs1_val == -3<br>                                                                                                                          |[0x80000706]:c.addi16sp 48<br> [0x80000708]:sd sp, 568(ra)<br>  |
|  73|[0x80002448]<br>0xFFE000000000004F|- rs1_val == -9007199254740993<br>                                                                                                           |[0x80000718]:c.addi16sp 5<br> [0x8000071a]:sd sp, 576(ra)<br>   |
|  74|[0x80002450]<br>0xFFC00000000001EF|- rs1_val == -18014398509481985<br>                                                                                                          |[0x8000072a]:c.addi16sp 31<br> [0x8000072c]:sd sp, 584(ra)<br>  |
|  75|[0x80002458]<br>0xFF8000000000003F|- rs1_val == -36028797018963969<br> - imm_val == 64<br>                                                                                      |[0x8000073c]:c.addi16sp 4<br> [0x8000073e]:sd sp, 592(ra)<br>   |
|  76|[0x80002460]<br>0xFE000000000001EF|- rs1_val == -144115188075855873<br>                                                                                                         |[0x8000074e]:c.addi16sp 31<br> [0x80000750]:sd sp, 600(ra)<br>  |
|  77|[0x80002468]<br>0xFC0000000000014F|- rs1_val == -288230376151711745<br>                                                                                                         |[0x80000760]:c.addi16sp 21<br> [0x80000762]:sd sp, 608(ra)<br>  |
|  78|[0x80002470]<br>0xF7FFFFFFFFFFFFCF|- rs1_val == -576460752303423489<br>                                                                                                         |[0x80000772]:c.addi16sp 61<br> [0x80000774]:sd sp, 616(ra)<br>  |
|  79|[0x80002478]<br>0xF00000000000004F|- rs1_val == -1152921504606846977<br>                                                                                                        |[0x80000784]:c.addi16sp 5<br> [0x80000786]:sd sp, 624(ra)<br>   |
|  80|[0x80002480]<br>0xDFFFFFFFFFFFFFBF|- rs1_val == -2305843009213693953<br>                                                                                                        |[0x80000796]:c.addi16sp 60<br> [0x80000798]:sd sp, 632(ra)<br>  |
|  81|[0x80002488]<br>0x55555555555555B5|- rs1_val == 6148914691236517205<br>                                                                                                         |[0x800007bc]:c.addi16sp 6<br> [0x800007be]:sd sp, 640(ra)<br>   |
|  82|[0x80002490]<br>0xAAAAAAAAAAAAAB9A|- rs1_val == -6148914691236517206<br>                                                                                                        |[0x800007e2]:c.addi16sp 15<br> [0x800007e4]:sd sp, 648(ra)<br>  |
|  83|[0x80002498]<br>0xE0000000000000FF|- imm_val == 256<br>                                                                                                                         |[0x800007f4]:c.addi16sp 16<br> [0x800007f6]:sd sp, 656(ra)<br>  |
|  84|[0x800024a0]<br>0xFFFFFFFFFFFFFEA3|- imm_val == -352<br>                                                                                                                        |[0x800007fe]:c.addi16sp 42<br> [0x80000800]:sd sp, 664(ra)<br>  |
|  85|[0x800024a8]<br>0x000000000000014B|- rs1_val == -5<br>                                                                                                                          |[0x80000808]:c.addi16sp 21<br> [0x8000080a]:sd sp, 672(ra)<br>  |
|  86|[0x800024b0]<br>0xFFFFFFFFFFFFFFD7|- rs1_val == -9<br>                                                                                                                          |[0x80000812]:c.addi16sp 62<br> [0x80000814]:sd sp, 680(ra)<br>  |
|  87|[0x800024b8]<br>0x000000000000001F|- rs1_val == -17<br>                                                                                                                         |[0x8000081c]:c.addi16sp 3<br> [0x8000081e]:sd sp, 688(ra)<br>   |
|  88|[0x800024c0]<br>0xFFFFFFFFFFFFFF8F|- rs1_val == -33<br>                                                                                                                         |[0x80000826]:c.addi16sp 59<br> [0x80000828]:sd sp, 696(ra)<br>  |
|  89|[0x800024c8]<br>0xFFFFFFFFFFFFFF9F|- rs1_val == -65<br>                                                                                                                         |[0x80000830]:c.addi16sp 62<br> [0x80000832]:sd sp, 704(ra)<br>  |
|  90|[0x800024d0]<br>0xFFFFFFFFFFFFFF0F|- rs1_val == -129<br>                                                                                                                        |[0x8000083a]:c.addi16sp 57<br> [0x8000083c]:sd sp, 712(ra)<br>  |
|  91|[0x800024d8]<br>0xFFFFFFFFFFFFFEBF|- rs1_val == -257<br>                                                                                                                        |[0x80000844]:c.addi16sp 60<br> [0x80000846]:sd sp, 720(ra)<br>  |
|  92|[0x800024e0]<br>0xFFFFFFFFFFFFFDBF|- rs1_val == -513<br>                                                                                                                        |[0x8000084e]:c.addi16sp 60<br> [0x80000850]:sd sp, 728(ra)<br>  |
|  93|[0x800024e8]<br>0xFFFFFFFFFFFFFCEF|- rs1_val == -1025<br>                                                                                                                       |[0x80000858]:c.addi16sp 15<br> [0x8000085a]:sd sp, 736(ra)<br>  |
|  94|[0x800024f0]<br>0xFFFFFFFFFFFFF79F|- rs1_val == -2049<br>                                                                                                                       |[0x80000866]:c.addi16sp 58<br> [0x80000868]:sd sp, 744(ra)<br>  |
|  95|[0x800024f8]<br>0xFFFFFFFFFFFFF06F|- rs1_val == -4097<br>                                                                                                                       |[0x80000874]:c.addi16sp 7<br> [0x80000876]:sd sp, 752(ra)<br>   |
|  96|[0x80002500]<br>0xFFFFFFFFFFFFC02F|- rs1_val == -16385<br>                                                                                                                      |[0x80000882]:c.addi16sp 3<br> [0x80000884]:sd sp, 760(ra)<br>   |
|  97|[0x80002508]<br>0xFFFFFFFFFFFF7F8F|- rs1_val == -32769<br>                                                                                                                      |[0x80000890]:c.addi16sp 57<br> [0x80000892]:sd sp, 768(ra)<br>  |
|  98|[0x80002510]<br>0xFFFFFFFFFFFEFFAF|- rs1_val == -65537<br>                                                                                                                      |[0x8000089e]:c.addi16sp 59<br> [0x800008a0]:sd sp, 776(ra)<br>  |
|  99|[0x80002518]<br>0xFFFFFFFFFFFE008F|- rs1_val == -131073<br>                                                                                                                     |[0x800008ac]:c.addi16sp 9<br> [0x800008ae]:sd sp, 784(ra)<br>   |
| 100|[0x80002520]<br>0xFFFFFFFFFFFC01EF|- rs1_val == -262145<br>                                                                                                                     |[0x800008ba]:c.addi16sp 31<br> [0x800008bc]:sd sp, 792(ra)<br>  |
| 101|[0x80002528]<br>0xFFFFFFFFFFF8002F|- rs1_val == -524289<br>                                                                                                                     |[0x800008c8]:c.addi16sp 3<br> [0x800008ca]:sd sp, 800(ra)<br>   |
| 102|[0x80002530]<br>0xFFFFFFFFFFEFFF7F|- rs1_val == -1048577<br>                                                                                                                    |[0x800008d6]:c.addi16sp 56<br> [0x800008d8]:sd sp, 808(ra)<br>  |
| 103|[0x80002538]<br>0xFFFFFFFFFFE001EF|- rs1_val == -2097153<br>                                                                                                                    |[0x800008e4]:c.addi16sp 31<br> [0x800008e6]:sd sp, 816(ra)<br>  |
| 104|[0x80002540]<br>0xFFFFFFFFFFBFFEFF|- rs1_val == -4194305<br>                                                                                                                    |[0x800008f2]:c.addi16sp 48<br> [0x800008f4]:sd sp, 824(ra)<br>  |
| 105|[0x80002548]<br>0xFFFFFFFFFF8000FF|- rs1_val == -8388609<br>                                                                                                                    |[0x80000900]:c.addi16sp 16<br> [0x80000902]:sd sp, 832(ra)<br>  |
| 106|[0x80002550]<br>0xFFFFFFFFFF0001EF|- rs1_val == -16777217<br>                                                                                                                   |[0x8000090e]:c.addi16sp 31<br> [0x80000910]:sd sp, 840(ra)<br>  |
| 107|[0x80002558]<br>0xFFFFFFFFFE0001EF|- rs1_val == -33554433<br>                                                                                                                   |[0x8000091c]:c.addi16sp 31<br> [0x8000091e]:sd sp, 848(ra)<br>  |
| 108|[0x80002560]<br>0xFFFFFFFFFBFFFE9F|- rs1_val == -67108865<br>                                                                                                                   |[0x8000092a]:c.addi16sp 42<br> [0x8000092c]:sd sp, 856(ra)<br>  |
| 109|[0x80002568]<br>0xFFFFFFFFF7FFFFCF|- rs1_val == -134217729<br>                                                                                                                  |[0x80000938]:c.addi16sp 61<br> [0x8000093a]:sd sp, 864(ra)<br>  |
| 110|[0x80002570]<br>0xFFFFFFFFF000002F|- rs1_val == -268435457<br>                                                                                                                  |[0x80000946]:c.addi16sp 3<br> [0x80000948]:sd sp, 872(ra)<br>   |
| 111|[0x80002578]<br>0xFFFFFFFFDFFFFF5F|- rs1_val == -536870913<br>                                                                                                                  |[0x80000954]:c.addi16sp 54<br> [0x80000956]:sd sp, 880(ra)<br>  |
| 112|[0x80002580]<br>0xFFFFFFFFC000007F|- rs1_val == -1073741825<br>                                                                                                                 |[0x80000962]:c.addi16sp 8<br> [0x80000964]:sd sp, 888(ra)<br>   |
| 113|[0x80002588]<br>0xFFFFFFFF800000FF|- rs1_val == -2147483649<br>                                                                                                                 |[0x80000974]:c.addi16sp 16<br> [0x80000976]:sd sp, 896(ra)<br>  |
| 114|[0x80002590]<br>0xFFFFFFFEFFFFFDFF|- rs1_val == -4294967297<br>                                                                                                                 |[0x80000986]:c.addi16sp 32<br> [0x80000988]:sd sp, 904(ra)<br>  |
| 115|[0x80002598]<br>0xFFFFFFFE0000003F|- rs1_val == -8589934593<br>                                                                                                                 |[0x80000998]:c.addi16sp 4<br> [0x8000099a]:sd sp, 912(ra)<br>   |
| 116|[0x800025a0]<br>0xFFFFFFFBFFFFFF7F|- rs1_val == -17179869185<br>                                                                                                                |[0x800009aa]:c.addi16sp 56<br> [0x800009ac]:sd sp, 920(ra)<br>  |
| 117|[0x800025a8]<br>0xFFFFFFF7FFFFFDFF|- rs1_val == -34359738369<br>                                                                                                                |[0x800009bc]:c.addi16sp 32<br> [0x800009be]:sd sp, 928(ra)<br>  |
| 118|[0x800025b0]<br>0xFFFFFFEFFFFFFF6F|- rs1_val == -68719476737<br>                                                                                                                |[0x800009ce]:c.addi16sp 55<br> [0x800009d0]:sd sp, 936(ra)<br>  |
| 119|[0x800025b8]<br>0xFFFFFFE00000001F|- rs1_val == -137438953473<br>                                                                                                               |[0x800009e0]:c.addi16sp 2<br> [0x800009e2]:sd sp, 944(ra)<br>   |
| 120|[0x800025c0]<br>0xFFFFFFBFFFFFFF6F|- rs1_val == -274877906945<br>                                                                                                               |[0x800009f2]:c.addi16sp 55<br> [0x800009f4]:sd sp, 952(ra)<br>  |
| 121|[0x800025c8]<br>0xFFFFFF800000000F|- rs1_val == -549755813889<br>                                                                                                               |[0x80000a04]:c.addi16sp 1<br> [0x80000a06]:sd sp, 960(ra)<br>   |
| 122|[0x800025d0]<br>0xFFFFFEFFFFFFFEFF|- rs1_val == -1099511627777<br>                                                                                                              |[0x80000a16]:c.addi16sp 48<br> [0x80000a18]:sd sp, 968(ra)<br>  |
| 123|[0x800025d8]<br>0xFFFFFDFFFFFFFF9F|- rs1_val == -2199023255553<br>                                                                                                              |[0x80000a28]:c.addi16sp 58<br> [0x80000a2a]:sd sp, 976(ra)<br>  |
| 124|[0x800025e0]<br>0xFFFFFBFFFFFFFFDF|- rs1_val == -4398046511105<br>                                                                                                              |[0x80000a3a]:c.addi16sp 62<br> [0x80000a3c]:sd sp, 984(ra)<br>  |
| 125|[0x800025e8]<br>0xFFFFF8000000000F|- rs1_val == -8796093022209<br>                                                                                                              |[0x80000a4c]:c.addi16sp 1<br> [0x80000a4e]:sd sp, 992(ra)<br>   |
| 126|[0x800025f0]<br>0xFFFFEFFFFFFFFFDF|- rs1_val == -17592186044417<br>                                                                                                             |[0x80000a5e]:c.addi16sp 62<br> [0x80000a60]:sd sp, 1000(ra)<br> |
| 127|[0x800025f8]<br>0xFFFFE0000000000F|- rs1_val == -35184372088833<br>                                                                                                             |[0x80000a70]:c.addi16sp 1<br> [0x80000a72]:sd sp, 1008(ra)<br>  |
| 128|[0x80002600]<br>0xFFFFC0000000001F|- rs1_val == -70368744177665<br>                                                                                                             |[0x80000a82]:c.addi16sp 2<br> [0x80000a84]:sd sp, 1016(ra)<br>  |
| 129|[0x80002608]<br>0xFFFF7FFFFFFFFEEF|- rs1_val == -140737488355329<br>                                                                                                            |[0x80000a94]:c.addi16sp 47<br> [0x80000a96]:sd sp, 1024(ra)<br> |
| 130|[0x80002610]<br>0xFFFF0000000001EF|- rs1_val == -281474976710657<br>                                                                                                            |[0x80000aa6]:c.addi16sp 31<br> [0x80000aa8]:sd sp, 1032(ra)<br> |
| 131|[0x80002618]<br>0xFFFDFFFFFFFFFFAF|- rs1_val == -562949953421313<br>                                                                                                            |[0x80000ab8]:c.addi16sp 59<br> [0x80000aba]:sd sp, 1040(ra)<br> |
| 132|[0x80002620]<br>0xFFFC00000000004F|- rs1_val == -1125899906842625<br>                                                                                                           |[0x80000aca]:c.addi16sp 5<br> [0x80000acc]:sd sp, 1048(ra)<br>  |
| 133|[0x80002628]<br>0xFFF7FFFFFFFFFFCF|- rs1_val == -2251799813685249<br>                                                                                                           |[0x80000adc]:c.addi16sp 61<br> [0x80000ade]:sd sp, 1056(ra)<br> |
| 134|[0x80002630]<br>0xFFEFFFFFFFFFFEFF|- rs1_val == -4503599627370497<br>                                                                                                           |[0x80000aee]:c.addi16sp 48<br> [0x80000af0]:sd sp, 1064(ra)<br> |
