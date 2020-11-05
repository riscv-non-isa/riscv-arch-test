
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80002ff0')]      |
| SIG_REGION                | [('0x80005204', '0x80005640', '135 dwords')]      |
| COV_LABELS                | cbnez      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cbnez-01.S/cbnez-01.S    |
| Total Number of coverpoints| 148     |
| Total Coverpoints Hit     | 148      |
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

|s.no|            signature             |                                                coverpoints                                                 |                                                              code                                                              |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80005210]<br>0xFF76DF56FF76DF59|- opcode : c.bnez<br> - rs1 : x15<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 576460752303423488<br> |[0x800003ae]:c.bnez a5, 63<br> [0x8000042c]:c.addi sp, 3<br> [0x8000042e]:sd sp, 0(ra)<br>                                      |
|   2|[0x80005218]<br>0xFF76DF56FF76DF5C|- rs1 : x8<br> - rs1_val < 0 and imm_val > 0<br>                                                            |[0x80000444]:c.bnez s0, 32<br> [0x80000484]:c.addi sp, 3<br> [0x80000486]:sd sp, 8(ra)<br>                                      |
|   3|[0x80005220]<br>0xFF76DF56FF76DF5E|- rs1 : x14<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val > 0<br>                                       |[0x8000049c]:c.bnez a4, 85<br> [0x8000049e]:addi sp, sp, 2<br> [0x800004a2]:jal zero, 166<br> [0x80000548]:sd sp, 16(ra)<br>    |
|   4|[0x80005228]<br>0xFF76DF56FF76DF5F|- rs1 : x13<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 140737488355328<br>                          |[0x8000056c]:c.bnez a3, 247<br> [0x8000055a]:addi sp, sp, 1<br> [0x8000055e]:jal zero, 26<br> [0x80000578]:sd sp, 24(ra)<br>    |
|   5|[0x80005230]<br>0xFF76DF56FF76DF60|- rs1 : x10<br> - rs1_val < 0 and imm_val < 0<br>                                                           |[0x80000594]:c.bnez a0, 249<br> [0x80000586]:addi sp, sp, 1<br> [0x8000058a]:jal zero, 22<br> [0x800005a0]:sd sp, 32(ra)<br>    |
|   6|[0x80005238]<br>0xFF76DF56FF76DF62|- rs1 : x12<br> - rs1_val == 0 and imm_val < 0<br>                                                          |[0x800005be]:c.bnez a2, 248<br> [0x800005c0]:addi sp, sp, 2<br> [0x800005c4]:jal zero, 6<br> [0x800005ca]:sd sp, 40(ra)<br>     |
|   7|[0x80005240]<br>0xFF76DF56FF76DF65|- rs1 : x11<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br>                       |[0x800005e4]:c.bnez a1, 7<br> [0x800005f2]:c.addi sp, 3<br> [0x800005f4]:sd sp, 48(ra)<br>                                      |
|   8|[0x80005248]<br>0xFF76DF56FF76DF66|- rs1 : x9<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>                        |[0x8000064c]:c.bnez s1, 223<br> [0x8000060a]:addi sp, sp, 1<br> [0x8000060e]:jal zero, 74<br> [0x80000658]:sd sp, 56(ra)<br>    |
|   9|[0x80005250]<br>0xFF76DF56FF76DF69|- rs1_val == 1<br>                                                                                          |[0x8000066e]:c.bnez a0, 9<br> [0x80000680]:c.addi sp, 3<br> [0x80000682]:sd sp, 64(ra)<br>                                      |
|  10|[0x80005258]<br>0xFF76DF56FF76DF6A|- rs1_val == 2<br>                                                                                          |[0x80000698]:c.bnez a0, 252<br> [0x80000690]:addi sp, sp, 1<br> [0x80000694]:jal zero, 16<br> [0x800006a4]:sd sp, 72(ra)<br>    |
|  11|[0x80005260]<br>0xFF76DF56FF76DF6D|- rs1_val == 4<br>                                                                                          |[0x800006ba]:c.bnez a0, 32<br> [0x800006fa]:c.addi sp, 3<br> [0x800006fc]:sd sp, 80(ra)<br>                                     |
|  12|[0x80005268]<br>0xFF76DF56FF76DF6E|- rs1_val == 8<br>                                                                                          |[0x8000078c]:c.bnez a0, 191<br> [0x8000070a]:addi sp, sp, 1<br> [0x8000070e]:jal zero, 138<br> [0x80000798]:sd sp, 88(ra)<br>   |
|  13|[0x80005270]<br>0xFF76DF56FF76DF6F|- rs1_val == 16<br>                                                                                         |[0x800007ae]:c.bnez a0, 252<br> [0x800007a6]:addi sp, sp, 1<br> [0x800007aa]:jal zero, 16<br> [0x800007ba]:sd sp, 96(ra)<br>    |
|  14|[0x80005278]<br>0xFF76DF56FF76DF70|- rs1_val == 32<br>                                                                                         |[0x80000848]:c.bnez a0, 192<br> [0x800007c8]:addi sp, sp, 1<br> [0x800007cc]:jal zero, 136<br> [0x80000854]:sd sp, 104(ra)<br>  |
|  15|[0x80005280]<br>0xFF76DF56FF76DF73|- rs1_val == 64<br>                                                                                         |[0x8000086a]:c.bnez a0, 9<br> [0x8000087c]:c.addi sp, 3<br> [0x8000087e]:sd sp, 112(ra)<br>                                     |
|  16|[0x80005288]<br>0xFF76DF56FF76DF74|- rs1_val == 128<br>                                                                                        |[0x80000898]:c.bnez a0, 250<br> [0x8000088c]:addi sp, sp, 1<br> [0x80000890]:jal zero, 20<br> [0x800008a4]:sd sp, 120(ra)<br>   |
|  17|[0x80005290]<br>0xFF76DF56FF76DF75|- rs1_val == 256<br>                                                                                        |[0x800008c4]:c.bnez a0, 247<br> [0x800008b2]:addi sp, sp, 1<br> [0x800008b6]:jal zero, 26<br> [0x800008d0]:sd sp, 128(ra)<br>   |
|  18|[0x80005298]<br>0xFF76DF56FF76DF78|- rs1_val == 512<br>                                                                                        |[0x800008e6]:c.bnez a0, 63<br> [0x80000964]:c.addi sp, 3<br> [0x80000966]:sd sp, 136(ra)<br>                                    |
|  19|[0x800052a0]<br>0xFF76DF56FF76DF7B|- rs1_val == 1024<br>                                                                                       |[0x8000097c]:c.bnez a0, 16<br> [0x8000099c]:c.addi sp, 3<br> [0x8000099e]:sd sp, 144(ra)<br>                                    |
|  20|[0x800052a8]<br>0xFF76DF56FF76DF7C|- rs1_val == 2048<br>                                                                                       |[0x800009b8]:c.bnez a0, 252<br> [0x800009b0]:addi sp, sp, 1<br> [0x800009b4]:jal zero, 16<br> [0x800009c4]:sd sp, 152(ra)<br>   |
|  21|[0x800052b0]<br>0xFF76DF56FF76DF7F|- rs1_val == 4096<br>                                                                                       |[0x800009da]:c.bnez a0, 9<br> [0x800009ec]:c.addi sp, 3<br> [0x800009ee]:sd sp, 160(ra)<br>                                     |
|  22|[0x800052b8]<br>0xFF76DF56FF76DF82|- rs1_val == 8192<br>                                                                                       |[0x80000a04]:c.bnez a0, 64<br> [0x80000a84]:c.addi sp, 3<br> [0x80000a86]:sd sp, 168(ra)<br>                                    |
|  23|[0x800052c0]<br>0xFF76DF56FF76DF83|- rs1_val == 16384<br>                                                                                      |[0x80000a9c]:c.bnez a0, 252<br> [0x80000a94]:addi sp, sp, 1<br> [0x80000a98]:jal zero, 16<br> [0x80000aa8]:sd sp, 176(ra)<br>   |
|  24|[0x800052c8]<br>0xFF76DF56FF76DF86|- rs1_val == 32768<br>                                                                                      |[0x80000abe]:c.bnez a0, 5<br> [0x80000ac8]:c.addi sp, 3<br> [0x80000aca]:sd sp, 184(ra)<br>                                     |
|  25|[0x800052d0]<br>0xFF76DF56FF76DF89|- rs1_val == 65536<br>                                                                                      |[0x80000ae0]:c.bnez a0, 16<br> [0x80000b00]:c.addi sp, 3<br> [0x80000b02]:sd sp, 192(ra)<br>                                    |
|  26|[0x800052d8]<br>0xFF76DF56FF76DF8A|- rs1_val == 131072<br>                                                                                     |[0x80000bbc]:c.bnez a0, 170<br> [0x80000b10]:addi sp, sp, 1<br> [0x80000b14]:jal zero, 180<br> [0x80000bc8]:sd sp, 200(ra)<br>  |
|  27|[0x800052e0]<br>0xFF76DF56FF76DF8D|- rs1_val == 262144<br>                                                                                     |[0x80000bde]:c.bnez a0, 5<br> [0x80000be8]:c.addi sp, 3<br> [0x80000bea]:sd sp, 208(ra)<br>                                     |
|  28|[0x800052e8]<br>0xFF76DF56FF76DF90|- rs1_val == 524288<br>                                                                                     |[0x80000c00]:c.bnez a0, 7<br> [0x80000c0e]:c.addi sp, 3<br> [0x80000c10]:sd sp, 216(ra)<br>                                     |
|  29|[0x800052f0]<br>0xFF76DF56FF76DF91|- rs1_val == 1048576<br>                                                                                    |[0x80000c30]:c.bnez a0, 247<br> [0x80000c1e]:addi sp, sp, 1<br> [0x80000c22]:jal zero, 26<br> [0x80000c3c]:sd sp, 224(ra)<br>   |
|  30|[0x800052f8]<br>0xFF76DF56FF76DF92|- rs1_val == 2097152<br>                                                                                    |[0x80000c5e]:c.bnez a0, 246<br> [0x80000c4a]:addi sp, sp, 1<br> [0x80000c4e]:jal zero, 28<br> [0x80000c6a]:sd sp, 232(ra)<br>   |
|  31|[0x80005300]<br>0xFF76DF56FF76DF93|- rs1_val == 4194304<br>                                                                                    |[0x80000c9a]:c.bnez a0, 239<br> [0x80000c78]:addi sp, sp, 1<br> [0x80000c7c]:jal zero, 42<br> [0x80000ca6]:sd sp, 240(ra)<br>   |
|  32|[0x80005308]<br>0xFF76DF56FF76DF94|- rs1_val == 8388608<br>                                                                                    |[0x80000d34]:c.bnez a0, 192<br> [0x80000cb4]:addi sp, sp, 1<br> [0x80000cb8]:jal zero, 136<br> [0x80000d40]:sd sp, 248(ra)<br>  |
|  33|[0x80005310]<br>0xFF76DF56FF76DF97|- rs1_val == 16777216<br>                                                                                   |[0x80000d56]:c.bnez a0, 32<br> [0x80000d96]:c.addi sp, 3<br> [0x80000d98]:sd sp, 256(ra)<br>                                    |
|  34|[0x80005318]<br>0xFF76DF56FF76DF9A|- rs1_val == 33554432<br>                                                                                   |[0x80000dae]:c.bnez a0, 8<br> [0x80000dbe]:c.addi sp, 3<br> [0x80000dc0]:sd sp, 264(ra)<br>                                     |
|  35|[0x80005320]<br>0xFF76DF56FF76DF9B|- rs1_val == 67108864<br>                                                                                   |[0x80000dd6]:c.bnez a0, 252<br> [0x80000dce]:addi sp, sp, 1<br> [0x80000dd2]:jal zero, 16<br> [0x80000de2]:sd sp, 272(ra)<br>   |
|  36|[0x80005328]<br>0xFF76DF56FF76DF9E|- rs1_val == 134217728<br>                                                                                  |[0x80000df8]:c.bnez a0, 5<br> [0x80000e02]:c.addi sp, 3<br> [0x80000e04]:sd sp, 280(ra)<br>                                     |
|  37|[0x80005330]<br>0xFF76DF56FF76DF9F|- rs1_val == 268435456<br>                                                                                  |[0x80000e1a]:c.bnez a0, 252<br> [0x80000e12]:addi sp, sp, 1<br> [0x80000e16]:jal zero, 16<br> [0x80000e26]:sd sp, 288(ra)<br>   |
|  38|[0x80005338]<br>0xFF76DF56FF76DFA0|- rs1_val == 536870912<br>                                                                                  |[0x80000ee0]:c.bnez a0, 170<br> [0x80000e34]:addi sp, sp, 1<br> [0x80000e38]:jal zero, 180<br> [0x80000eec]:sd sp, 296(ra)<br>  |
|  39|[0x80005340]<br>0xFF76DF56FF76DFA3|- rs1_val == 1073741824<br>                                                                                 |[0x80000f02]:c.bnez a0, 85<br> [0x80000fac]:c.addi sp, 3<br> [0x80000fae]:sd sp, 304(ra)<br>                                    |
|  40|[0x80005348]<br>0xFF76DF56FF76DFA6|- rs1_val == 2147483648<br>                                                                                 |[0x80000fc8]:c.bnez a0, 63<br> [0x80001046]:c.addi sp, 3<br> [0x80001048]:sd sp, 312(ra)<br>                                    |
|  41|[0x80005350]<br>0xFF76DF56FF76DFA9|- rs1_val == 4294967296<br>                                                                                 |[0x80001062]:c.bnez a0, 63<br> [0x800010e0]:c.addi sp, 3<br> [0x800010e2]:sd sp, 320(ra)<br>                                    |
|  42|[0x80005358]<br>0xFF76DF56FF76DFAC|- rs1_val == 8589934592<br>                                                                                 |[0x800010fc]:c.bnez a0, 8<br> [0x8000110c]:c.addi sp, 3<br> [0x8000110e]:sd sp, 328(ra)<br>                                     |
|  43|[0x80005360]<br>0xFF76DF56FF76DFAD|- rs1_val == 17179869184<br>                                                                                |[0x80001128]:c.bnez a0, 252<br> [0x80001120]:addi sp, sp, 1<br> [0x80001124]:jal zero, 16<br> [0x80001134]:sd sp, 336(ra)<br>   |
|  44|[0x80005368]<br>0xFF76DF56FF76DFAE|- rs1_val == 34359738368<br>                                                                                |[0x80001168]:c.bnez a0, 239<br> [0x80001146]:addi sp, sp, 1<br> [0x8000114a]:jal zero, 42<br> [0x80001174]:sd sp, 344(ra)<br>   |
|  45|[0x80005370]<br>0xFF76DF56FF76DFB1|- rs1_val == 68719476736<br>                                                                                |[0x8000118e]:c.bnez a0, 64<br> [0x8000120e]:c.addi sp, 3<br> [0x80001210]:sd sp, 352(ra)<br>                                    |
|  46|[0x80005378]<br>0xFF76DF56FF76DFB4|- rs1_val == 137438953472<br>                                                                               |[0x8000122a]:c.bnez a0, 6<br> [0x80001236]:c.addi sp, 3<br> [0x80001238]:sd sp, 360(ra)<br>                                     |
|  47|[0x80005380]<br>0xFF76DF56FF76DFB7|- rs1_val == 274877906944<br>                                                                               |[0x80001252]:c.bnez a0, 85<br> [0x800012fc]:c.addi sp, 3<br> [0x800012fe]:sd sp, 368(ra)<br>                                    |
|  48|[0x80005388]<br>0xFF76DF56FF76DFBA|- rs1_val == 549755813888<br>                                                                               |[0x80001318]:c.bnez a0, 32<br> [0x80001358]:c.addi sp, 3<br> [0x8000135a]:sd sp, 376(ra)<br>                                    |
|  49|[0x80005390]<br>0xFF76DF56FF76DFBB|- rs1_val == 1099511627776<br>                                                                              |[0x80001374]:c.bnez a0, 252<br> [0x8000136c]:addi sp, sp, 1<br> [0x80001370]:jal zero, 16<br> [0x80001380]:sd sp, 384(ra)<br>   |
|  50|[0x80005398]<br>0xFF76DF56FF76DFBE|- rs1_val == 2199023255552<br>                                                                              |[0x8000139a]:c.bnez a0, 32<br> [0x800013da]:c.addi sp, 3<br> [0x800013dc]:sd sp, 392(ra)<br>                                    |
|  51|[0x800053a0]<br>0xFF76DF56FF76DFBF|- rs1_val == 4398046511104<br>                                                                              |[0x80001402]:c.bnez a0, 246<br> [0x800013ee]:addi sp, sp, 1<br> [0x800013f2]:jal zero, 28<br> [0x8000140e]:sd sp, 400(ra)<br>   |
|  52|[0x800053a8]<br>0xFF76DF56FF76DFC2|- rs1_val == 8796093022208<br>                                                                              |[0x80001428]:c.bnez a0, 64<br> [0x800014a8]:c.addi sp, 3<br> [0x800014aa]:sd sp, 408(ra)<br>                                    |
|  53|[0x800053b0]<br>0xFF76DF56FF76DFC5|- rs1_val == 17592186044416<br>                                                                             |[0x800014c4]:c.bnez a0, 5<br> [0x800014ce]:c.addi sp, 3<br> [0x800014d0]:sd sp, 416(ra)<br>                                     |
|  54|[0x800053b8]<br>0xFF76DF56FF76DFC8|- rs1_val == 35184372088832<br>                                                                             |[0x800014ea]:c.bnez a0, 63<br> [0x80001568]:c.addi sp, 3<br> [0x8000156a]:sd sp, 424(ra)<br>                                    |
|  55|[0x800053c0]<br>0xFF76DF56FF76DFC9|- rs1_val == 70368744177664<br>                                                                             |[0x80001584]:c.bnez a0, 252<br> [0x8000157c]:addi sp, sp, 1<br> [0x80001580]:jal zero, 16<br> [0x80001590]:sd sp, 432(ra)<br>   |
|  56|[0x800053c8]<br>0xFF76DF56FF76DFCC|- rs1_val == 281474976710656<br>                                                                            |[0x800015aa]:c.bnez a0, 64<br> [0x8000162a]:c.addi sp, 3<br> [0x8000162c]:sd sp, 440(ra)<br>                                    |
|  57|[0x800053d0]<br>0xFF76DF56FF76DFCD|- rs1_val == 562949953421312<br>                                                                            |[0x800016be]:c.bnez a0, 192<br> [0x8000163e]:addi sp, sp, 1<br> [0x80001642]:jal zero, 136<br> [0x800016ca]:sd sp, 448(ra)<br>  |
|  58|[0x800053d8]<br>0xFF76DF56FF76DFD0|- rs1_val == 1125899906842624<br>                                                                           |[0x800016e4]:c.bnez a0, 6<br> [0x800016f0]:c.addi sp, 3<br> [0x800016f2]:sd sp, 456(ra)<br>                                     |
|  59|[0x800053e0]<br>0xFF76DF56FF76DFD1|- rs1_val == 2251799813685248<br>                                                                           |[0x80001714]:c.bnez a0, 248<br> [0x80001704]:addi sp, sp, 1<br> [0x80001708]:jal zero, 24<br> [0x80001720]:sd sp, 464(ra)<br>   |
|  60|[0x800053e8]<br>0xFF76DF56FF76DFD4|- rs1_val == 4503599627370496<br>                                                                           |[0x8000173a]:c.bnez a0, 16<br> [0x8000175a]:c.addi sp, 3<br> [0x8000175c]:sd sp, 472(ra)<br>                                    |
|  61|[0x800053f0]<br>0xFF76DF56FF76DFD5|- rs1_val == 9007199254740992<br>                                                                           |[0x8000177a]:c.bnez a0, 250<br> [0x8000176e]:addi sp, sp, 1<br> [0x80001772]:jal zero, 20<br> [0x80001786]:sd sp, 480(ra)<br>   |
|  62|[0x800053f8]<br>0xFF76DF56FF76DFD6|- rs1_val == 18014398509481984<br>                                                                          |[0x8000181a]:c.bnez a0, 191<br> [0x80001798]:addi sp, sp, 1<br> [0x8000179c]:jal zero, 138<br> [0x80001826]:sd sp, 488(ra)<br>  |
|  63|[0x80005400]<br>0xFF76DF56FF76DFD7|- rs1_val == 36028797018963968<br>                                                                          |[0x80001848]:c.bnez a0, 248<br> [0x80001838]:addi sp, sp, 1<br> [0x8000183c]:jal zero, 24<br> [0x80001854]:sd sp, 496(ra)<br>   |
|  64|[0x80005408]<br>0xFF76DF56FF76DFDA|- rs1_val == 72057594037927936<br>                                                                          |[0x8000186e]:c.bnez a0, 63<br> [0x800018ec]:c.addi sp, 3<br> [0x800018ee]:sd sp, 504(ra)<br>                                    |
|  65|[0x80005410]<br>0xFF76DF56FF76DFDB|- rs1_val == 144115188075855872<br>                                                                         |[0x80001942]:c.bnez a0, 223<br> [0x80001900]:addi sp, sp, 1<br> [0x80001904]:jal zero, 74<br> [0x8000194e]:sd sp, 512(ra)<br>   |
|  66|[0x80005418]<br>0xFF76DF56FF76DFDC|- rs1_val == 288230376151711744<br>                                                                         |[0x8000196c]:c.bnez a0, 250<br> [0x80001960]:addi sp, sp, 1<br> [0x80001964]:jal zero, 20<br> [0x80001978]:sd sp, 520(ra)<br>   |
|  67|[0x80005420]<br>0xFF76DF56FF76DFDF|- rs1_val == 1152921504606846976<br>                                                                        |[0x80001992]:c.bnez a0, 9<br> [0x800019a4]:c.addi sp, 3<br> [0x800019a6]:sd sp, 528(ra)<br>                                     |
|  68|[0x80005428]<br>0xFF76DF56FF76DFE2|- rs1_val == 2305843009213693952<br>                                                                        |[0x800019c0]:c.bnez a0, 16<br> [0x800019e0]:c.addi sp, 3<br> [0x800019e2]:sd sp, 536(ra)<br>                                    |
|  69|[0x80005430]<br>0xFF76DF56FF76DFE3|- rs1_val == 4611686018427387904<br>                                                                        |[0x800019fe]:c.bnez a0, 251<br> [0x800019f4]:addi sp, sp, 1<br> [0x800019f8]:jal zero, 18<br> [0x80001a0a]:sd sp, 544(ra)<br>   |
|  70|[0x80005438]<br>0xFF76DF56FF76DFE6|- rs1_val == -2<br>                                                                                         |[0x80001a20]:c.bnez a0, 16<br> [0x80001a40]:c.addi sp, 3<br> [0x80001a42]:sd sp, 552(ra)<br>                                    |
|  71|[0x80005440]<br>0xFF76DF56FF76DFE7|- rs1_val == -3<br>                                                                                         |[0x80001a58]:c.bnez a0, 252<br> [0x80001a50]:addi sp, sp, 1<br> [0x80001a54]:jal zero, 16<br> [0x80001a64]:sd sp, 560(ra)<br>   |
|  72|[0x80005448]<br>0xFF76DF56FF76DFE8|- rs1_val == -36028797018963969<br>                                                                         |[0x80001afc]:c.bnez a0, 191<br> [0x80001a7a]:addi sp, sp, 1<br> [0x80001a7e]:jal zero, 138<br> [0x80001b08]:sd sp, 568(ra)<br>  |
|  73|[0x80005450]<br>0xFF76DF56FF76DFEB|- rs1_val == -72057594037927937<br>                                                                         |[0x80001b26]:c.bnez a0, 63<br> [0x80001ba4]:c.addi sp, 3<br> [0x80001ba6]:sd sp, 576(ra)<br>                                    |
|  74|[0x80005458]<br>0xFF76DF56FF76DFEC|- rs1_val == -144115188075855873<br>                                                                        |[0x80001bc4]:c.bnez a0, 252<br> [0x80001bbc]:addi sp, sp, 1<br> [0x80001bc0]:jal zero, 16<br> [0x80001bd0]:sd sp, 584(ra)<br>   |
|  75|[0x80005460]<br>0xFF76DF56FF76DFEF|- rs1_val == -288230376151711745<br>                                                                        |[0x80001bee]:c.bnez a0, 64<br> [0x80001c6e]:c.addi sp, 3<br> [0x80001c70]:sd sp, 592(ra)<br>                                    |
|  76|[0x80005468]<br>0xFF76DF56FF76DFF2|- rs1_val == -576460752303423489<br>                                                                        |[0x80001c8e]:c.bnez a0, 5<br> [0x80001c98]:c.addi sp, 3<br> [0x80001c9a]:sd sp, 600(ra)<br>                                     |
|  77|[0x80005470]<br>0xFF76DF56FF76DFF3|- rs1_val == -1152921504606846977<br>                                                                       |[0x80001d32]:c.bnez a0, 191<br> [0x80001cb0]:addi sp, sp, 1<br> [0x80001cb4]:jal zero, 138<br> [0x80001d3e]:sd sp, 608(ra)<br>  |
|  78|[0x80005478]<br>0xFF76DF56FF76DFF6|- rs1_val == -2305843009213693953<br>                                                                       |[0x80001d5c]:c.bnez a0, 85<br> [0x80001e06]:c.addi sp, 3<br> [0x80001e08]:sd sp, 616(ra)<br>                                    |
|  79|[0x80005480]<br>0xFF76DF56FF76DFF7|- rs1_val == -4611686018427387905<br>                                                                       |[0x80001e40]:c.bnez a0, 239<br> [0x80001e1e]:addi sp, sp, 1<br> [0x80001e22]:jal zero, 42<br> [0x80001e4c]:sd sp, 624(ra)<br>   |
|  80|[0x80005488]<br>0xFF76DF56FF76DFFA|- rs1_val == 6148914691236517205<br>                                                                        |[0x80001e7e]:c.bnez a0, 63<br> [0x80001efc]:c.addi sp, 3<br> [0x80001efe]:sd sp, 632(ra)<br>                                    |
|  81|[0x80005490]<br>0xFF76DF56FF76DFFB|- rs1_val == -6148914691236517206<br>                                                                       |[0x80001faa]:c.bnez a0, 191<br> [0x80001f28]:addi sp, sp, 1<br> [0x80001f2c]:jal zero, 138<br> [0x80001fb6]:sd sp, 640(ra)<br>  |
|  82|[0x80005498]<br>0xFF76DF56FF76DFFE|- rs1_val == -5<br>                                                                                         |[0x80001fcc]:c.bnez a0, 5<br> [0x80001fd6]:c.addi sp, 3<br> [0x80001fd8]:sd sp, 648(ra)<br>                                     |
|  83|[0x800054a0]<br>0xFF76DF56FF76DFFF|- rs1_val == -9<br>                                                                                         |[0x80001fee]:c.bnez a0, 252<br> [0x80001fe6]:addi sp, sp, 1<br> [0x80001fea]:jal zero, 16<br> [0x80001ffa]:sd sp, 656(ra)<br>   |
|  84|[0x800054a8]<br>0xFF76DF56FF76E000|- rs1_val == -17<br>                                                                                        |[0x80002010]:c.bnez a0, 252<br> [0x80002008]:addi sp, sp, 1<br> [0x8000200c]:jal zero, 16<br> [0x8000201c]:sd sp, 664(ra)<br>   |
|  85|[0x800054b0]<br>0xFF76DF56FF76E001|- rs1_val == -33<br>                                                                                        |[0x8000204c]:c.bnez a0, 239<br> [0x8000202a]:addi sp, sp, 1<br> [0x8000202e]:jal zero, 42<br> [0x80002058]:sd sp, 672(ra)<br>   |
|  86|[0x800054b8]<br>0xFF76DF56FF76E002|- rs1_val == -65<br>                                                                                        |[0x8000206e]:c.bnez a0, 252<br> [0x80002066]:addi sp, sp, 1<br> [0x8000206a]:jal zero, 16<br> [0x8000207a]:sd sp, 680(ra)<br>   |
|  87|[0x800054c0]<br>0xFF76DF56FF76E005|- rs1_val == -129<br>                                                                                       |[0x80002090]:c.bnez a0, 63<br> [0x8000210e]:c.addi sp, 3<br> [0x80002110]:sd sp, 688(ra)<br>                                    |
|  88|[0x800054c8]<br>0xFF76DF56FF76E008|- rs1_val == -257<br>                                                                                       |[0x80002126]:c.bnez a0, 5<br> [0x80002130]:c.addi sp, 3<br> [0x80002132]:sd sp, 696(ra)<br>                                     |
|  89|[0x800054d0]<br>0xFF76DF56FF76E009|- rs1_val == -513<br>                                                                                       |[0x8000214e]:c.bnez a0, 249<br> [0x80002140]:addi sp, sp, 1<br> [0x80002144]:jal zero, 22<br> [0x8000215a]:sd sp, 704(ra)<br>   |
|  90|[0x800054d8]<br>0xFF76DF56FF76E00A|- rs1_val == -1025<br>                                                                                      |[0x80002176]:c.bnez a0, 249<br> [0x80002168]:addi sp, sp, 1<br> [0x8000216c]:jal zero, 22<br> [0x80002182]:sd sp, 712(ra)<br>   |
|  91|[0x800054e0]<br>0xFF76DF56FF76E00D|- rs1_val == -2049<br>                                                                                      |[0x8000219c]:c.bnez a0, 63<br> [0x8000221a]:c.addi sp, 3<br> [0x8000221c]:sd sp, 720(ra)<br>                                    |
|  92|[0x800054e8]<br>0xFF76DF56FF76E00E|- rs1_val == -4097<br>                                                                                      |[0x80002242]:c.bnez a0, 246<br> [0x8000222e]:addi sp, sp, 1<br> [0x80002232]:jal zero, 28<br> [0x8000224e]:sd sp, 728(ra)<br>   |
|  93|[0x800054f0]<br>0xFF76DF56FF76E00F|- rs1_val == -8193<br>                                                                                      |[0x80002270]:c.bnez a0, 248<br> [0x80002260]:addi sp, sp, 1<br> [0x80002264]:jal zero, 24<br> [0x8000227c]:sd sp, 736(ra)<br>   |
|  94|[0x800054f8]<br>0xFF76DF56FF76E010|- rs1_val == -16385<br>                                                                                     |[0x8000229c]:c.bnez a0, 249<br> [0x8000228e]:addi sp, sp, 1<br> [0x80002292]:jal zero, 22<br> [0x800022a8]:sd sp, 744(ra)<br>   |
|  95|[0x80005500]<br>0xFF76DF56FF76E013|- rs1_val == -32769<br>                                                                                     |[0x800022c2]:c.bnez a0, 16<br> [0x800022e2]:c.addi sp, 3<br> [0x800022e4]:sd sp, 752(ra)<br>                                    |
|  96|[0x80005508]<br>0xFF76DF56FF76E014|- rs1_val == -65537<br>                                                                                     |[0x800023a2]:c.bnez a0, 170<br> [0x800022f6]:addi sp, sp, 1<br> [0x800022fa]:jal zero, 180<br> [0x800023ae]:sd sp, 760(ra)<br>  |
|  97|[0x80005510]<br>0xFF76DF56FF76E017|- rs1_val == -131073<br>                                                                                    |[0x800023c8]:c.bnez a0, 6<br> [0x800023d4]:c.addi sp, 3<br> [0x800023d6]:sd sp, 768(ra)<br>                                     |
|  98|[0x80005518]<br>0xFF76DF56FF76E01A|- rs1_val == -262145<br>                                                                                    |[0x800023f0]:c.bnez a0, 9<br> [0x80002402]:c.addi sp, 3<br> [0x80002404]:sd sp, 776(ra)<br>                                     |
|  99|[0x80005520]<br>0xFF76DF56FF76E01B|- rs1_val == -524289<br>                                                                                    |[0x80002424]:c.bnez a0, 249<br> [0x80002416]:addi sp, sp, 1<br> [0x8000241a]:jal zero, 22<br> [0x80002430]:sd sp, 784(ra)<br>   |
| 100|[0x80005528]<br>0xFF76DF56FF76E01E|- rs1_val == -1048577<br>                                                                                   |[0x8000244a]:c.bnez a0, 5<br> [0x80002454]:c.addi sp, 3<br> [0x80002456]:sd sp, 792(ra)<br>                                     |
| 101|[0x80005530]<br>0xFF76DF56FF76E021|- rs1_val == -2097153<br>                                                                                   |[0x80002470]:c.bnez a0, 5<br> [0x8000247a]:c.addi sp, 3<br> [0x8000247c]:sd sp, 800(ra)<br>                                     |
| 102|[0x80005538]<br>0xFF76DF56FF76E022|- rs1_val == -4194305<br>                                                                                   |[0x80002496]:c.bnez a0, 252<br> [0x8000248e]:addi sp, sp, 1<br> [0x80002492]:jal zero, 16<br> [0x800024a2]:sd sp, 808(ra)<br>   |
| 103|[0x80005540]<br>0xFF76DF56FF76E023|- rs1_val == -8388609<br>                                                                                   |[0x80002560]:c.bnez a0, 170<br> [0x800024b4]:addi sp, sp, 1<br> [0x800024b8]:jal zero, 180<br> [0x8000256c]:sd sp, 816(ra)<br>  |
| 104|[0x80005548]<br>0xFF76DF56FF76E024|- rs1_val == -16777217<br>                                                                                  |[0x8000262a]:c.bnez a0, 170<br> [0x8000257e]:addi sp, sp, 1<br> [0x80002582]:jal zero, 180<br> [0x80002636]:sd sp, 824(ra)<br>  |
| 105|[0x80005550]<br>0xFF76DF56FF76E027|- rs1_val == -33554433<br>                                                                                  |[0x80002650]:c.bnez a0, 5<br> [0x8000265a]:c.addi sp, 3<br> [0x8000265c]:sd sp, 832(ra)<br>                                     |
| 106|[0x80005558]<br>0xFF76DF56FF76E028|- rs1_val == -67108865<br>                                                                                  |[0x800026ee]:c.bnez a0, 192<br> [0x8000266e]:addi sp, sp, 1<br> [0x80002672]:jal zero, 136<br> [0x800026fa]:sd sp, 840(ra)<br>  |
| 107|[0x80005560]<br>0xFF76DF56FF76E02B|- rs1_val == -134217729<br>                                                                                 |[0x80002714]:c.bnez a0, 5<br> [0x8000271e]:c.addi sp, 3<br> [0x80002720]:sd sp, 848(ra)<br>                                     |
| 108|[0x80005568]<br>0xFF76DF56FF76E02E|- rs1_val == -268435457<br>                                                                                 |[0x8000273a]:c.bnez a0, 5<br> [0x80002744]:c.addi sp, 3<br> [0x80002746]:sd sp, 856(ra)<br>                                     |
| 109|[0x80005570]<br>0xFF76DF56FF76E02F|- rs1_val == -536870913<br>                                                                                 |[0x800027da]:c.bnez a0, 191<br> [0x80002758]:addi sp, sp, 1<br> [0x8000275c]:jal zero, 138<br> [0x800027e6]:sd sp, 864(ra)<br>  |
| 110|[0x80005578]<br>0xFF76DF56FF76E030|- rs1_val == -1073741825<br>                                                                                |[0x80002802]:c.bnez a0, 251<br> [0x800027f8]:addi sp, sp, 1<br> [0x800027fc]:jal zero, 18<br> [0x8000280e]:sd sp, 872(ra)<br>   |
| 111|[0x80005580]<br>0xFF76DF56FF76E033|- rs1_val == -2147483649<br>                                                                                |[0x8000282c]:c.bnez a0, 6<br> [0x80002838]:c.addi sp, 3<br> [0x8000283a]:sd sp, 880(ra)<br>                                     |
| 112|[0x80005588]<br>0xFF76DF56FF76E034|- rs1_val == -4294967297<br>                                                                                |[0x80002860]:c.bnez a0, 248<br> [0x80002850]:addi sp, sp, 1<br> [0x80002854]:jal zero, 24<br> [0x8000286c]:sd sp, 888(ra)<br>   |
| 113|[0x80005590]<br>0xFF76DF56FF76E037|- rs1_val == -8589934593<br>                                                                                |[0x8000288a]:c.bnez a0, 5<br> [0x80002894]:c.addi sp, 3<br> [0x80002896]:sd sp, 896(ra)<br>                                     |
| 114|[0x80005598]<br>0xFF76DF56FF76E03A|- rs1_val == -17179869185<br>                                                                               |[0x800028b4]:c.bnez a0, 5<br> [0x800028be]:c.addi sp, 3<br> [0x800028c0]:sd sp, 904(ra)<br>                                     |
| 115|[0x800055a0]<br>0xFF76DF56FF76E03D|- rs1_val == -34359738369<br>                                                                               |[0x800028de]:c.bnez a0, 85<br> [0x80002988]:c.addi sp, 3<br> [0x8000298a]:sd sp, 912(ra)<br>                                    |
| 116|[0x800055a8]<br>0xFF76DF56FF76E03E|- rs1_val == -68719476737<br>                                                                               |[0x800029a8]:c.bnez a0, 252<br> [0x800029a0]:addi sp, sp, 1<br> [0x800029a4]:jal zero, 16<br> [0x800029b4]:sd sp, 920(ra)<br>   |
| 117|[0x800055b0]<br>0xFF76DF56FF76E041|- rs1_val == -137438953473<br>                                                                              |[0x800029d2]:c.bnez a0, 85<br> [0x80002a7c]:c.addi sp, 3<br> [0x80002a7e]:sd sp, 928(ra)<br>                                    |
| 118|[0x800055b8]<br>0xFF76DF56FF76E044|- rs1_val == -274877906945<br>                                                                              |[0x80002a9c]:c.bnez a0, 32<br> [0x80002adc]:c.addi sp, 3<br> [0x80002ade]:sd sp, 936(ra)<br>                                    |
| 119|[0x800055c0]<br>0xFF76DF56FF76E045|- rs1_val == -549755813889<br>                                                                              |[0x80002afc]:c.bnez a0, 252<br> [0x80002af4]:addi sp, sp, 1<br> [0x80002af8]:jal zero, 16<br> [0x80002b08]:sd sp, 944(ra)<br>   |
| 120|[0x800055c8]<br>0xFF76DF56FF76E046|- rs1_val == -1099511627777<br>                                                                             |[0x80002b32]:c.bnez a0, 246<br> [0x80002b1e]:addi sp, sp, 1<br> [0x80002b22]:jal zero, 28<br> [0x80002b3e]:sd sp, 952(ra)<br>   |
| 121|[0x800055d0]<br>0xFF76DF56FF76E047|- rs1_val == -2199023255553<br>                                                                             |[0x80002c00]:c.bnez a0, 170<br> [0x80002b54]:addi sp, sp, 1<br> [0x80002b58]:jal zero, 180<br> [0x80002c0c]:sd sp, 960(ra)<br>  |
| 122|[0x800055d8]<br>0xFF76DF56FF76E04A|- rs1_val == -4398046511105<br>                                                                             |[0x80002c2a]:c.bnez a0, 5<br> [0x80002c34]:c.addi sp, 3<br> [0x80002c36]:sd sp, 968(ra)<br>                                     |
| 123|[0x800055e0]<br>0xFF76DF56FF76E04B|- rs1_val == -8796093022209<br>                                                                             |[0x80002c56]:c.bnez a0, 251<br> [0x80002c4c]:addi sp, sp, 1<br> [0x80002c50]:jal zero, 18<br> [0x80002c62]:sd sp, 976(ra)<br>   |
| 124|[0x800055e8]<br>0xFF76DF56FF76E04C|- rs1_val == -17592186044417<br>                                                                            |[0x80002c80]:c.bnez a0, 252<br> [0x80002c78]:addi sp, sp, 1<br> [0x80002c7c]:jal zero, 16<br> [0x80002c8c]:sd sp, 984(ra)<br>   |
| 125|[0x800055f0]<br>0xFF76DF56FF76E04D|- rs1_val == -35184372088833<br>                                                                            |[0x80002cb4]:c.bnez a0, 247<br> [0x80002ca2]:addi sp, sp, 1<br> [0x80002ca6]:jal zero, 26<br> [0x80002cc0]:sd sp, 992(ra)<br>   |
| 126|[0x800055f8]<br>0xFF76DF56FF76E04E|- rs1_val == -70368744177665<br>                                                                            |[0x80002d18]:c.bnez a0, 223<br> [0x80002cd6]:addi sp, sp, 1<br> [0x80002cda]:jal zero, 74<br> [0x80002d24]:sd sp, 1000(ra)<br>  |
| 127|[0x80005600]<br>0xFF76DF56FF76E04F|- rs1_val == -140737488355329<br>                                                                           |[0x80002d4c]:c.bnez a0, 247<br> [0x80002d3a]:addi sp, sp, 1<br> [0x80002d3e]:jal zero, 26<br> [0x80002d58]:sd sp, 1008(ra)<br>  |
| 128|[0x80005608]<br>0xFF76DF56FF76E052|- rs1_val == -281474976710657<br>                                                                           |[0x80002d76]:c.bnez a0, 5<br> [0x80002d80]:c.addi sp, 3<br> [0x80002d82]:sd sp, 1016(ra)<br>                                    |
| 129|[0x80005610]<br>0xFF76DF56FF76E053|- rs1_val == -562949953421313<br>                                                                           |[0x80002e1a]:c.bnez a0, 191<br> [0x80002d98]:addi sp, sp, 1<br> [0x80002d9c]:jal zero, 138<br> [0x80002e26]:sd sp, 1024(ra)<br> |
| 130|[0x80005618]<br>0xFF76DF56FF76E056|- rs1_val == -1125899906842625<br>                                                                          |[0x80002e44]:c.bnez a0, 64<br> [0x80002ec4]:c.addi sp, 3<br> [0x80002ec6]:sd sp, 1032(ra)<br>                                   |
| 131|[0x80005620]<br>0xFF76DF56FF76E059|- rs1_val == -2251799813685249<br>                                                                          |[0x80002ee4]:c.bnez a0, 5<br> [0x80002eee]:c.addi sp, 3<br> [0x80002ef0]:sd sp, 1040(ra)<br>                                    |
| 132|[0x80005628]<br>0xFF76DF56FF76E05C|- rs1_val == -4503599627370497<br>                                                                          |[0x80002f0e]:c.bnez a0, 32<br> [0x80002f4e]:c.addi sp, 3<br> [0x80002f50]:sd sp, 1048(ra)<br>                                   |
| 133|[0x80005630]<br>0xFF76DF56FF76E05D|- rs1_val == -9007199254740993<br>                                                                          |[0x80002fa8]:c.bnez a0, 223<br> [0x80002f66]:addi sp, sp, 1<br> [0x80002f6a]:jal zero, 74<br> [0x80002fb4]:sd sp, 1056(ra)<br>  |
| 134|[0x80005638]<br>0xFF76DF56FF76E060|- rs1_val == -18014398509481985<br>                                                                         |[0x80002fd2]:c.bnez a0, 6<br> [0x80002fde]:c.addi sp, 3<br> [0x80002fe0]:sd sp, 1064(ra)<br>                                    |
