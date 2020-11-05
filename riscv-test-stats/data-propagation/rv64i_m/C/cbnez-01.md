
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80002670')]      |
| SIG_REGION                | [('0x80005208', '0x80005628', '132 dwords')]      |
| COV_LABELS                | cbnez      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cbnez-01.S/cbnez-01.S    |
| Total Number of coverpoints| 148     |
| Total Coverpoints Hit     | 148      |
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

|s.no|            signature             |                                           coverpoints                                           |                                                             code                                                              |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80005208]<br>0xFF76DF56FF76DF59|- opcode : c.bnez<br> - rs1 : x14<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 8388608<br> |[0x800003aa]:c.bnez a4, 5<br> [0x800003b4]:c.addi sp, 3<br> [0x800003b6]:sd sp, 0(ra)<br>                                      |
|   2|[0x80005210]<br>0xFF76DF56FF76DF5C|- rs1 : x9<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -257<br>                           |[0x800003cc]:c.bnez s1, 9<br> [0x800003de]:c.addi sp, 3<br> [0x800003e0]:sd sp, 8(ra)<br>                                      |
|   3|[0x80005218]<br>0xFF76DF56FF76DF5E|- rs1 : x13<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val > 0<br>                            |[0x800003f6]:c.bnez a3, 7<br> [0x800003f8]:addi sp, sp, 2<br> [0x800003fc]:jal zero, 10<br> [0x80000406]:sd sp, 16(ra)<br>     |
|   4|[0x80005220]<br>0xFF76DF56FF76DF5F|- rs1 : x8<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 134217728<br>                      |[0x8000041c]:c.bnez s0, 252<br> [0x80000414]:addi sp, sp, 1<br> [0x80000418]:jal zero, 16<br> [0x80000428]:sd sp, 24(ra)<br>   |
|   5|[0x80005228]<br>0xFF76DF56FF76DF60|- rs1 : x15<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -144115188075855873<br>           |[0x80000448]:c.bnez a5, 251<br> [0x8000043e]:addi sp, sp, 1<br> [0x80000442]:jal zero, 18<br> [0x80000454]:sd sp, 32(ra)<br>   |
|   6|[0x80005230]<br>0xFF76DF56FF76DF62|- rs1 : x10<br> - rs1_val == 0 and imm_val < 0<br>                                               |[0x8000046c]:c.bnez a0, 251<br> [0x8000046e]:addi sp, sp, 2<br> [0x80000472]:jal zero, 6<br> [0x80000478]:sd sp, 40(ra)<br>    |
|   7|[0x80005238]<br>0xFF76DF56FF76DF65|- rs1 : x11<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br>            |[0x80000492]:c.bnez a1, 64<br> [0x80000512]:c.addi sp, 3<br> [0x80000514]:sd sp, 48(ra)<br>                                    |
|   8|[0x80005240]<br>0xFF76DF56FF76DF66|- rs1 : x12<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>            |[0x80000532]:c.bnez a2, 252<br> [0x8000052a]:addi sp, sp, 1<br> [0x8000052e]:jal zero, 16<br> [0x8000053e]:sd sp, 56(ra)<br>   |
|   9|[0x80005248]<br>0xFF76DF56FF76DF67|- rs1_val == 1<br>                                                                               |[0x80000554]:c.bnez a0, 252<br> [0x8000054c]:addi sp, sp, 1<br> [0x80000550]:jal zero, 16<br> [0x80000560]:sd sp, 64(ra)<br>   |
|  10|[0x80005250]<br>0xFF76DF56FF76DF6A|- rs1_val == 2<br>                                                                               |[0x80000576]:c.bnez a0, 63<br> [0x800005f4]:c.addi sp, 3<br> [0x800005f6]:sd sp, 72(ra)<br>                                    |
|  11|[0x80005258]<br>0xFF76DF56FF76DF6B|- rs1_val == 4<br>                                                                               |[0x8000060c]:c.bnez a0, 252<br> [0x80000604]:addi sp, sp, 1<br> [0x80000608]:jal zero, 16<br> [0x80000618]:sd sp, 80(ra)<br>   |
|  12|[0x80005260]<br>0xFF76DF56FF76DF6C|- rs1_val == 8<br>                                                                               |[0x80000648]:c.bnez a0, 239<br> [0x80000626]:addi sp, sp, 1<br> [0x8000062a]:jal zero, 42<br> [0x80000654]:sd sp, 88(ra)<br>   |
|  13|[0x80005268]<br>0xFF76DF56FF76DF6D|- rs1_val == 16<br>                                                                              |[0x800006e2]:c.bnez a0, 192<br> [0x80000662]:addi sp, sp, 1<br> [0x80000666]:jal zero, 136<br> [0x800006ee]:sd sp, 96(ra)<br>  |
|  14|[0x80005270]<br>0xFF76DF56FF76DF70|- rs1_val == 32<br>                                                                              |[0x80000704]:c.bnez a0, 7<br> [0x80000712]:c.addi sp, 3<br> [0x80000714]:sd sp, 104(ra)<br>                                    |
|  15|[0x80005278]<br>0xFF76DF56FF76DF73|- rs1_val == 64<br>                                                                              |[0x8000072a]:c.bnez a0, 5<br> [0x80000734]:c.addi sp, 3<br> [0x80000736]:sd sp, 112(ra)<br>                                    |
|  16|[0x80005280]<br>0xFF76DF56FF76DF76|- rs1_val == 128<br>                                                                             |[0x8000074c]:c.bnez a0, 6<br> [0x80000758]:c.addi sp, 3<br> [0x8000075a]:sd sp, 120(ra)<br>                                    |
|  17|[0x80005288]<br>0xFF76DF56FF76DF77|- rs1_val == 256<br>                                                                             |[0x800007aa]:c.bnez a0, 223<br> [0x80000768]:addi sp, sp, 1<br> [0x8000076c]:jal zero, 74<br> [0x800007b6]:sd sp, 128(ra)<br>  |
|  18|[0x80005290]<br>0xFF76DF56FF76DF7A|- rs1_val == 512<br>                                                                             |[0x800007cc]:c.bnez a0, 5<br> [0x800007d6]:c.addi sp, 3<br> [0x800007d8]:sd sp, 136(ra)<br>                                    |
|  19|[0x80005298]<br>0xFF76DF56FF76DF7D|- rs1_val == 1024<br>                                                                            |[0x800007ee]:c.bnez a0, 16<br> [0x8000080e]:c.addi sp, 3<br> [0x80000810]:sd sp, 144(ra)<br>                                   |
|  20|[0x800052a0]<br>0xFF76DF56FF76DF80|- rs1_val == 2048<br>                                                                            |[0x8000082a]:c.bnez a0, 7<br> [0x80000838]:c.addi sp, 3<br> [0x8000083a]:sd sp, 152(ra)<br>                                    |
|  21|[0x800052a8]<br>0xFF76DF56FF76DF81|- rs1_val == 4096<br>                                                                            |[0x8000086a]:c.bnez a0, 239<br> [0x80000848]:addi sp, sp, 1<br> [0x8000084c]:jal zero, 42<br> [0x80000876]:sd sp, 160(ra)<br>  |
|  22|[0x800052b0]<br>0xFF76DF56FF76DF84|- rs1_val == 8192<br>                                                                            |[0x8000088c]:c.bnez a0, 85<br> [0x80000936]:c.addi sp, 3<br> [0x80000938]:sd sp, 168(ra)<br>                                   |
|  23|[0x800052b8]<br>0xFF76DF56FF76DF87|- rs1_val == 16384<br>                                                                           |[0x8000094e]:c.bnez a0, 16<br> [0x8000096e]:c.addi sp, 3<br> [0x80000970]:sd sp, 176(ra)<br>                                   |
|  24|[0x800052c0]<br>0xFF76DF56FF76DF88|- rs1_val == 32768<br>                                                                           |[0x80000988]:c.bnez a0, 251<br> [0x8000097e]:addi sp, sp, 1<br> [0x80000982]:jal zero, 18<br> [0x80000994]:sd sp, 184(ra)<br>  |
|  25|[0x800052c8]<br>0xFF76DF56FF76DF8B|- rs1_val == 65536<br>                                                                           |[0x800009aa]:c.bnez a0, 32<br> [0x800009ea]:c.addi sp, 3<br> [0x800009ec]:sd sp, 192(ra)<br>                                   |
|  26|[0x800052d0]<br>0xFF76DF56FF76DF8C|- rs1_val == 131072<br>                                                                          |[0x80000a3c]:c.bnez a0, 223<br> [0x800009fa]:addi sp, sp, 1<br> [0x800009fe]:jal zero, 74<br> [0x80000a48]:sd sp, 200(ra)<br>  |
|  27|[0x800052d8]<br>0xFF76DF56FF76DF8D|- rs1_val == 262144<br>                                                                          |[0x80000a62]:c.bnez a0, 250<br> [0x80000a56]:addi sp, sp, 1<br> [0x80000a5a]:jal zero, 20<br> [0x80000a6e]:sd sp, 208(ra)<br>  |
|  28|[0x800052e0]<br>0xFF76DF56FF76DF8E|- rs1_val == 524288<br>                                                                          |[0x80000a84]:c.bnez a0, 252<br> [0x80000a7c]:addi sp, sp, 1<br> [0x80000a80]:jal zero, 16<br> [0x80000a90]:sd sp, 216(ra)<br>  |
|  29|[0x800052e8]<br>0xFF76DF56FF76DF8F|- rs1_val == 1048576<br>                                                                         |[0x80000ab2]:c.bnez a0, 246<br> [0x80000a9e]:addi sp, sp, 1<br> [0x80000aa2]:jal zero, 28<br> [0x80000abe]:sd sp, 224(ra)<br>  |
|  30|[0x800052f0]<br>0xFF76DF56FF76DF90|- rs1_val == 2097152<br>                                                                         |[0x80000ad4]:c.bnez a0, 252<br> [0x80000acc]:addi sp, sp, 1<br> [0x80000ad0]:jal zero, 16<br> [0x80000ae0]:sd sp, 232(ra)<br>  |
|  31|[0x800052f8]<br>0xFF76DF56FF76DF93|- rs1_val == 4194304<br>                                                                         |[0x80000af6]:c.bnez a0, 5<br> [0x80000b00]:c.addi sp, 3<br> [0x80000b02]:sd sp, 240(ra)<br>                                    |
|  32|[0x80005300]<br>0xFF76DF56FF76DF94|- rs1_val == 16777216<br>                                                                        |[0x80000b24]:c.bnez a0, 246<br> [0x80000b10]:addi sp, sp, 1<br> [0x80000b14]:jal zero, 28<br> [0x80000b30]:sd sp, 248(ra)<br>  |
|  33|[0x80005308]<br>0xFF76DF56FF76DF97|- rs1_val == 33554432<br>                                                                        |[0x80000b46]:c.bnez a0, 8<br> [0x80000b56]:c.addi sp, 3<br> [0x80000b58]:sd sp, 256(ra)<br>                                    |
|  34|[0x80005310]<br>0xFF76DF56FF76DF9A|- rs1_val == 67108864<br>                                                                        |[0x80000b6e]:c.bnez a0, 5<br> [0x80000b78]:c.addi sp, 3<br> [0x80000b7a]:sd sp, 264(ra)<br>                                    |
|  35|[0x80005318]<br>0xFF76DF56FF76DF9B|- rs1_val == 268435456<br>                                                                       |[0x80000c34]:c.bnez a0, 170<br> [0x80000b88]:addi sp, sp, 1<br> [0x80000b8c]:jal zero, 180<br> [0x80000c40]:sd sp, 272(ra)<br> |
|  36|[0x80005320]<br>0xFF76DF56FF76DF9E|- rs1_val == 536870912<br>                                                                       |[0x80000c56]:c.bnez a0, 32<br> [0x80000c96]:c.addi sp, 3<br> [0x80000c98]:sd sp, 280(ra)<br>                                   |
|  37|[0x80005328]<br>0xFF76DF56FF76DF9F|- rs1_val == 1073741824<br>                                                                      |[0x80000cae]:c.bnez a0, 252<br> [0x80000ca6]:addi sp, sp, 1<br> [0x80000caa]:jal zero, 16<br> [0x80000cba]:sd sp, 288(ra)<br>  |
|  38|[0x80005330]<br>0xFF76DF56FF76DFA2|- rs1_val == 2147483648<br>                                                                      |[0x80000cd4]:c.bnez a0, 5<br> [0x80000cde]:c.addi sp, 3<br> [0x80000ce0]:sd sp, 296(ra)<br>                                    |
|  39|[0x80005338]<br>0xFF76DF56FF76DFA5|- rs1_val == 4294967296<br>                                                                      |[0x80000cfa]:c.bnez a0, 5<br> [0x80000d04]:c.addi sp, 3<br> [0x80000d06]:sd sp, 304(ra)<br>                                    |
|  40|[0x80005340]<br>0xFF76DF56FF76DFA8|- rs1_val == 8589934592<br>                                                                      |[0x80000d20]:c.bnez a0, 7<br> [0x80000d2e]:c.addi sp, 3<br> [0x80000d30]:sd sp, 312(ra)<br>                                    |
|  41|[0x80005348]<br>0xFF76DF56FF76DFAB|- rs1_val == 17179869184<br>                                                                     |[0x80000d4a]:c.bnez a0, 5<br> [0x80000d54]:c.addi sp, 3<br> [0x80000d56]:sd sp, 320(ra)<br>                                    |
|  42|[0x80005350]<br>0xFF76DF56FF76DFAC|- rs1_val == 34359738368<br>                                                                     |[0x80000d8a]:c.bnez a0, 239<br> [0x80000d68]:addi sp, sp, 1<br> [0x80000d6c]:jal zero, 42<br> [0x80000d96]:sd sp, 328(ra)<br>  |
|  43|[0x80005358]<br>0xFF76DF56FF76DFAD|- rs1_val == 68719476736<br>                                                                     |[0x80000db8]:c.bnez a0, 248<br> [0x80000da8]:addi sp, sp, 1<br> [0x80000dac]:jal zero, 24<br> [0x80000dc4]:sd sp, 336(ra)<br>  |
|  44|[0x80005360]<br>0xFF76DF56FF76DFB0|- rs1_val == 137438953472<br>                                                                    |[0x80000dde]:c.bnez a0, 64<br> [0x80000e5e]:c.addi sp, 3<br> [0x80000e60]:sd sp, 344(ra)<br>                                   |
|  45|[0x80005368]<br>0xFF76DF56FF76DFB3|- rs1_val == 274877906944<br>                                                                    |[0x80000e7a]:c.bnez a0, 9<br> [0x80000e8c]:c.addi sp, 3<br> [0x80000e8e]:sd sp, 352(ra)<br>                                    |
|  46|[0x80005370]<br>0xFF76DF56FF76DFB4|- rs1_val == 549755813888<br>                                                                    |[0x80000f22]:c.bnez a0, 191<br> [0x80000ea0]:addi sp, sp, 1<br> [0x80000ea4]:jal zero, 138<br> [0x80000f2e]:sd sp, 360(ra)<br> |
|  47|[0x80005378]<br>0xFF76DF56FF76DFB5|- rs1_val == 1099511627776<br>                                                                   |[0x80000f4e]:c.bnez a0, 249<br> [0x80000f40]:addi sp, sp, 1<br> [0x80000f44]:jal zero, 22<br> [0x80000f5a]:sd sp, 368(ra)<br>  |
|  48|[0x80005380]<br>0xFF76DF56FF76DFB6|- rs1_val == 2199023255552<br>                                                                   |[0x80000f74]:c.bnez a0, 252<br> [0x80000f6c]:addi sp, sp, 1<br> [0x80000f70]:jal zero, 16<br> [0x80000f80]:sd sp, 376(ra)<br>  |
|  49|[0x80005388]<br>0xFF76DF56FF76DFB7|- rs1_val == 4398046511104<br>                                                                   |[0x80000fd4]:c.bnez a0, 223<br> [0x80000f92]:addi sp, sp, 1<br> [0x80000f96]:jal zero, 74<br> [0x80000fe0]:sd sp, 384(ra)<br>  |
|  50|[0x80005390]<br>0xFF76DF56FF76DFBA|- rs1_val == 8796093022208<br>                                                                   |[0x80000ffa]:c.bnez a0, 5<br> [0x80001004]:c.addi sp, 3<br> [0x80001006]:sd sp, 392(ra)<br>                                    |
|  51|[0x80005398]<br>0xFF76DF56FF76DFBD|- rs1_val == 17592186044416<br>                                                                  |[0x80001020]:c.bnez a0, 63<br> [0x8000109e]:c.addi sp, 3<br> [0x800010a0]:sd sp, 400(ra)<br>                                   |
|  52|[0x800053a0]<br>0xFF76DF56FF76DFC0|- rs1_val == 35184372088832<br>                                                                  |[0x800010ba]:c.bnez a0, 32<br> [0x800010fa]:c.addi sp, 3<br> [0x800010fc]:sd sp, 408(ra)<br>                                   |
|  53|[0x800053a8]<br>0xFF76DF56FF76DFC3|- rs1_val == 70368744177664<br>                                                                  |[0x80001116]:c.bnez a0, 5<br> [0x80001120]:c.addi sp, 3<br> [0x80001122]:sd sp, 416(ra)<br>                                    |
|  54|[0x800053b0]<br>0xFF76DF56FF76DFC6|- rs1_val == 140737488355328<br>                                                                 |[0x8000113c]:c.bnez a0, 32<br> [0x8000117c]:c.addi sp, 3<br> [0x8000117e]:sd sp, 424(ra)<br>                                   |
|  55|[0x800053b8]<br>0xFF76DF56FF76DFC9|- rs1_val == 281474976710656<br>                                                                 |[0x80001198]:c.bnez a0, 8<br> [0x800011a8]:c.addi sp, 3<br> [0x800011aa]:sd sp, 432(ra)<br>                                    |
|  56|[0x800053c0]<br>0xFF76DF56FF76DFCC|- rs1_val == 562949953421312<br>                                                                 |[0x800011c4]:c.bnez a0, 64<br> [0x80001244]:c.addi sp, 3<br> [0x80001246]:sd sp, 440(ra)<br>                                   |
|  57|[0x800053c8]<br>0xFF76DF56FF76DFCD|- rs1_val == 1125899906842624<br>                                                                |[0x80001260]:c.bnez a0, 252<br> [0x80001258]:addi sp, sp, 1<br> [0x8000125c]:jal zero, 16<br> [0x8000126c]:sd sp, 448(ra)<br>  |
|  58|[0x800053d0]<br>0xFF76DF56FF76DFCE|- rs1_val == 2251799813685248<br>                                                                |[0x80001290]:c.bnez a0, 247<br> [0x8000127e]:addi sp, sp, 1<br> [0x80001282]:jal zero, 26<br> [0x8000129c]:sd sp, 456(ra)<br>  |
|  59|[0x800053d8]<br>0xFF76DF56FF76DFCF|- rs1_val == 4503599627370496<br>                                                                |[0x800012ba]:c.bnez a0, 250<br> [0x800012ae]:addi sp, sp, 1<br> [0x800012b2]:jal zero, 20<br> [0x800012c6]:sd sp, 464(ra)<br>  |
|  60|[0x800053e0]<br>0xFF76DF56FF76DFD0|- rs1_val == 9007199254740992<br>                                                                |[0x800012e0]:c.bnez a0, 252<br> [0x800012d8]:addi sp, sp, 1<br> [0x800012dc]:jal zero, 16<br> [0x800012ec]:sd sp, 472(ra)<br>  |
|  61|[0x800053e8]<br>0xFF76DF56FF76DFD3|- rs1_val == 18014398509481984<br>                                                               |[0x80001306]:c.bnez a0, 5<br> [0x80001310]:c.addi sp, 3<br> [0x80001312]:sd sp, 480(ra)<br>                                    |
|  62|[0x800053f0]<br>0xFF76DF56FF76DFD6|- rs1_val == 36028797018963968<br>                                                               |[0x8000132c]:c.bnez a0, 5<br> [0x80001336]:c.addi sp, 3<br> [0x80001338]:sd sp, 488(ra)<br>                                    |
|  63|[0x800053f8]<br>0xFF76DF56FF76DFD9|- rs1_val == 72057594037927936<br>                                                               |[0x80001352]:c.bnez a0, 63<br> [0x800013d0]:c.addi sp, 3<br> [0x800013d2]:sd sp, 496(ra)<br>                                   |
|  64|[0x80005400]<br>0xFF76DF56FF76DFDA|- rs1_val == 144115188075855872<br>                                                              |[0x800013ec]:c.bnez a0, 252<br> [0x800013e4]:addi sp, sp, 1<br> [0x800013e8]:jal zero, 16<br> [0x800013f8]:sd sp, 504(ra)<br>  |
|  65|[0x80005408]<br>0xFF76DF56FF76DFDD|- rs1_val == 288230376151711744<br>                                                              |[0x80001412]:c.bnez a0, 32<br> [0x80001452]:c.addi sp, 3<br> [0x80001454]:sd sp, 512(ra)<br>                                   |
|  66|[0x80005410]<br>0xFF76DF56FF76DFE0|- rs1_val == 576460752303423488<br>                                                              |[0x8000146e]:c.bnez a0, 63<br> [0x800014ec]:c.addi sp, 3<br> [0x800014ee]:sd sp, 520(ra)<br>                                   |
|  67|[0x80005418]<br>0xFF76DF56FF76DFE3|- rs1_val == 1152921504606846976<br>                                                             |[0x80001508]:c.bnez a0, 7<br> [0x80001516]:c.addi sp, 3<br> [0x80001518]:sd sp, 528(ra)<br>                                    |
|  68|[0x80005420]<br>0xFF76DF56FF76DFE6|- rs1_val == 2305843009213693952<br>                                                             |[0x80001532]:c.bnez a0, 8<br> [0x80001542]:c.addi sp, 3<br> [0x80001544]:sd sp, 536(ra)<br>                                    |
|  69|[0x80005428]<br>0xFF76DF56FF76DFE9|- rs1_val == 4611686018427387904<br>                                                             |[0x8000155e]:c.bnez a0, 7<br> [0x8000156c]:c.addi sp, 3<br> [0x8000156e]:sd sp, 544(ra)<br>                                    |
|  70|[0x80005430]<br>0xFF76DF56FF76DFEA|- rs1_val == -36028797018963969<br>                                                              |[0x80001606]:c.bnez a0, 191<br> [0x80001584]:addi sp, sp, 1<br> [0x80001588]:jal zero, 138<br> [0x80001612]:sd sp, 552(ra)<br> |
|  71|[0x80005438]<br>0xFF76DF56FF76DFED|- rs1_val == -72057594037927937<br>                                                              |[0x80001630]:c.bnez a0, 5<br> [0x8000163a]:c.addi sp, 3<br> [0x8000163c]:sd sp, 560(ra)<br>                                    |
|  72|[0x80005440]<br>0xFF76DF56FF76DFF0|- rs1_val == -288230376151711745<br>                                                             |[0x8000165a]:c.bnez a0, 5<br> [0x80001664]:c.addi sp, 3<br> [0x80001666]:sd sp, 568(ra)<br>                                    |
|  73|[0x80005448]<br>0xFF76DF56FF76DFF1|- rs1_val == -576460752303423489<br>                                                             |[0x80001684]:c.bnez a0, 252<br> [0x8000167c]:addi sp, sp, 1<br> [0x80001680]:jal zero, 16<br> [0x80001690]:sd sp, 576(ra)<br>  |
|  74|[0x80005450]<br>0xFF76DF56FF76DFF4|- rs1_val == -1152921504606846977<br>                                                            |[0x800016ae]:c.bnez a0, 5<br> [0x800016b8]:c.addi sp, 3<br> [0x800016ba]:sd sp, 584(ra)<br>                                    |
|  75|[0x80005458]<br>0xFF76DF56FF76DFF7|- rs1_val == -2305843009213693953<br>                                                            |[0x800016d8]:c.bnez a0, 5<br> [0x800016e2]:c.addi sp, 3<br> [0x800016e4]:sd sp, 592(ra)<br>                                    |
|  76|[0x80005460]<br>0xFF76DF56FF76DFFA|- rs1_val == -4611686018427387905<br>                                                            |[0x80001702]:c.bnez a0, 5<br> [0x8000170c]:c.addi sp, 3<br> [0x8000170e]:sd sp, 600(ra)<br>                                    |
|  77|[0x80005468]<br>0xFF76DF56FF76DFFD|- rs1_val == 6148914691236517205<br>                                                             |[0x80001740]:c.bnez a0, 5<br> [0x8000174a]:c.addi sp, 3<br> [0x8000174c]:sd sp, 608(ra)<br>                                    |
|  78|[0x80005470]<br>0xFF76DF56FF76DFFE|- rs1_val == -6148914691236517206<br>                                                            |[0x8000177e]:c.bnez a0, 252<br> [0x80001776]:addi sp, sp, 1<br> [0x8000177a]:jal zero, 16<br> [0x8000178a]:sd sp, 616(ra)<br>  |
|  79|[0x80005478]<br>0xFF76DF56FF76E001|- rs1_val == -2<br>                                                                              |[0x800017a0]:c.bnez a0, 5<br> [0x800017aa]:c.addi sp, 3<br> [0x800017ac]:sd sp, 624(ra)<br>                                    |
|  80|[0x80005480]<br>0xFF76DF56FF76E002|- rs1_val == -3<br>                                                                              |[0x800017dc]:c.bnez a0, 239<br> [0x800017ba]:addi sp, sp, 1<br> [0x800017be]:jal zero, 42<br> [0x800017e8]:sd sp, 632(ra)<br>  |
|  81|[0x80005488]<br>0xFF76DF56FF76E005|- rs1_val == -5<br>                                                                              |[0x800017fe]:c.bnez a0, 64<br> [0x8000187e]:c.addi sp, 3<br> [0x80001880]:sd sp, 640(ra)<br>                                   |
|  82|[0x80005490]<br>0xFF76DF56FF76E008|- rs1_val == -9<br>                                                                              |[0x80001896]:c.bnez a0, 5<br> [0x800018a0]:c.addi sp, 3<br> [0x800018a2]:sd sp, 648(ra)<br>                                    |
|  83|[0x80005498]<br>0xFF76DF56FF76E009|- rs1_val == -17<br>                                                                             |[0x800018c0]:c.bnez a0, 248<br> [0x800018b0]:addi sp, sp, 1<br> [0x800018b4]:jal zero, 24<br> [0x800018cc]:sd sp, 656(ra)<br>  |
|  84|[0x800054a0]<br>0xFF76DF56FF76E00C|- rs1_val == -33<br>                                                                             |[0x800018e2]:c.bnez a0, 85<br> [0x8000198c]:c.addi sp, 3<br> [0x8000198e]:sd sp, 664(ra)<br>                                   |
|  85|[0x800054a8]<br>0xFF76DF56FF76E00F|- rs1_val == -65<br>                                                                             |[0x800019a4]:c.bnez a0, 85<br> [0x80001a4e]:c.addi sp, 3<br> [0x80001a50]:sd sp, 672(ra)<br>                                   |
|  86|[0x800054b0]<br>0xFF76DF56FF76E012|- rs1_val == -129<br>                                                                            |[0x80001a66]:c.bnez a0, 5<br> [0x80001a70]:c.addi sp, 3<br> [0x80001a72]:sd sp, 680(ra)<br>                                    |
|  87|[0x800054b8]<br>0xFF76DF56FF76E013|- rs1_val == -513<br>                                                                            |[0x80001a8e]:c.bnez a0, 249<br> [0x80001a80]:addi sp, sp, 1<br> [0x80001a84]:jal zero, 22<br> [0x80001a9a]:sd sp, 688(ra)<br>  |
|  88|[0x800054c0]<br>0xFF76DF56FF76E014|- rs1_val == -1025<br>                                                                           |[0x80001ab8]:c.bnez a0, 248<br> [0x80001aa8]:addi sp, sp, 1<br> [0x80001aac]:jal zero, 24<br> [0x80001ac4]:sd sp, 696(ra)<br>  |
|  89|[0x800054c8]<br>0xFF76DF56FF76E017|- rs1_val == -2049<br>                                                                           |[0x80001ade]:c.bnez a0, 8<br> [0x80001aee]:c.addi sp, 3<br> [0x80001af0]:sd sp, 704(ra)<br>                                    |
|  90|[0x800054d0]<br>0xFF76DF56FF76E018|- rs1_val == -4097<br>                                                                           |[0x80001b10]:c.bnez a0, 249<br> [0x80001b02]:addi sp, sp, 1<br> [0x80001b06]:jal zero, 22<br> [0x80001b1c]:sd sp, 712(ra)<br>  |
|  91|[0x800054d8]<br>0xFF76DF56FF76E01B|- rs1_val == -8193<br>                                                                           |[0x80001b36]:c.bnez a0, 7<br> [0x80001b44]:c.addi sp, 3<br> [0x80001b46]:sd sp, 720(ra)<br>                                    |
|  92|[0x800054e0]<br>0xFF76DF56FF76E01E|- rs1_val == -16385<br>                                                                          |[0x80001b60]:c.bnez a0, 7<br> [0x80001b6e]:c.addi sp, 3<br> [0x80001b70]:sd sp, 728(ra)<br>                                    |
|  93|[0x800054e8]<br>0xFF76DF56FF76E021|- rs1_val == -32769<br>                                                                          |[0x80001b8a]:c.bnez a0, 9<br> [0x80001b9c]:c.addi sp, 3<br> [0x80001b9e]:sd sp, 736(ra)<br>                                    |
|  94|[0x800054f0]<br>0xFF76DF56FF76E024|- rs1_val == -65537<br>                                                                          |[0x80001bb8]:c.bnez a0, 63<br> [0x80001c36]:c.addi sp, 3<br> [0x80001c38]:sd sp, 744(ra)<br>                                   |
|  95|[0x800054f8]<br>0xFF76DF56FF76E025|- rs1_val == -131073<br>                                                                         |[0x80001c8c]:c.bnez a0, 223<br> [0x80001c4a]:addi sp, sp, 1<br> [0x80001c4e]:jal zero, 74<br> [0x80001c98]:sd sp, 752(ra)<br>  |
|  96|[0x80005500]<br>0xFF76DF56FF76E028|- rs1_val == -262145<br>                                                                         |[0x80001cb2]:c.bnez a0, 63<br> [0x80001d30]:c.addi sp, 3<br> [0x80001d32]:sd sp, 760(ra)<br>                                   |
|  97|[0x80005508]<br>0xFF76DF56FF76E02B|- rs1_val == -524289<br>                                                                         |[0x80001d4c]:c.bnez a0, 7<br> [0x80001d5a]:c.addi sp, 3<br> [0x80001d5c]:sd sp, 768(ra)<br>                                    |
|  98|[0x80005510]<br>0xFF76DF56FF76E02E|- rs1_val == -1048577<br>                                                                        |[0x80001d76]:c.bnez a0, 63<br> [0x80001df4]:c.addi sp, 3<br> [0x80001df6]:sd sp, 776(ra)<br>                                   |
|  99|[0x80005518]<br>0xFF76DF56FF76E02F|- rs1_val == -2097153<br>                                                                        |[0x80001e18]:c.bnez a0, 248<br> [0x80001e08]:addi sp, sp, 1<br> [0x80001e0c]:jal zero, 24<br> [0x80001e24]:sd sp, 784(ra)<br>  |
| 100|[0x80005520]<br>0xFF76DF56FF76E032|- rs1_val == -4194305<br>                                                                        |[0x80001e3e]:c.bnez a0, 5<br> [0x80001e48]:c.addi sp, 3<br> [0x80001e4a]:sd sp, 792(ra)<br>                                    |
| 101|[0x80005528]<br>0xFF76DF56FF76E035|- rs1_val == -8388609<br>                                                                        |[0x80001e64]:c.bnez a0, 85<br> [0x80001f0e]:c.addi sp, 3<br> [0x80001f10]:sd sp, 800(ra)<br>                                   |
| 102|[0x80005530]<br>0xFF76DF56FF76E036|- rs1_val == -16777217<br>                                                                       |[0x80001f2e]:c.bnez a0, 250<br> [0x80001f22]:addi sp, sp, 1<br> [0x80001f26]:jal zero, 20<br> [0x80001f3a]:sd sp, 808(ra)<br>  |
| 103|[0x80005538]<br>0xFF76DF56FF76E037|- rs1_val == -33554433<br>                                                                       |[0x80001f54]:c.bnez a0, 252<br> [0x80001f4c]:addi sp, sp, 1<br> [0x80001f50]:jal zero, 16<br> [0x80001f60]:sd sp, 816(ra)<br>  |
| 104|[0x80005540]<br>0xFF76DF56FF76E038|- rs1_val == -67108865<br>                                                                       |[0x80001f7a]:c.bnez a0, 252<br> [0x80001f72]:addi sp, sp, 1<br> [0x80001f76]:jal zero, 16<br> [0x80001f86]:sd sp, 824(ra)<br>  |
| 105|[0x80005548]<br>0xFF76DF56FF76E03B|- rs1_val == -134217729<br>                                                                      |[0x80001fa0]:c.bnez a0, 7<br> [0x80001fae]:c.addi sp, 3<br> [0x80001fb0]:sd sp, 832(ra)<br>                                    |
| 106|[0x80005550]<br>0xFF76DF56FF76E03C|- rs1_val == -268435457<br>                                                                      |[0x80002004]:c.bnez a0, 223<br> [0x80001fc2]:addi sp, sp, 1<br> [0x80001fc6]:jal zero, 74<br> [0x80002010]:sd sp, 840(ra)<br>  |
| 107|[0x80005558]<br>0xFF76DF56FF76E03D|- rs1_val == -536870913<br>                                                                      |[0x800020ce]:c.bnez a0, 170<br> [0x80002022]:addi sp, sp, 1<br> [0x80002026]:jal zero, 180<br> [0x800020da]:sd sp, 848(ra)<br> |
| 108|[0x80005560]<br>0xFF76DF56FF76E03E|- rs1_val == -1073741825<br>                                                                     |[0x800020fa]:c.bnez a0, 249<br> [0x800020ec]:addi sp, sp, 1<br> [0x800020f0]:jal zero, 22<br> [0x80002106]:sd sp, 856(ra)<br>  |
| 109|[0x80005568]<br>0xFF76DF56FF76E03F|- rs1_val == -2147483649<br>                                                                     |[0x800021c8]:c.bnez a0, 170<br> [0x8000211c]:addi sp, sp, 1<br> [0x80002120]:jal zero, 180<br> [0x800021d4]:sd sp, 864(ra)<br> |
| 110|[0x80005570]<br>0xFF76DF56FF76E040|- rs1_val == -4294967297<br>                                                                     |[0x800021f2]:c.bnez a0, 252<br> [0x800021ea]:addi sp, sp, 1<br> [0x800021ee]:jal zero, 16<br> [0x800021fe]:sd sp, 872(ra)<br>  |
| 111|[0x80005578]<br>0xFF76DF56FF76E043|- rs1_val == -8589934593<br>                                                                     |[0x8000221c]:c.bnez a0, 63<br> [0x8000229a]:c.addi sp, 3<br> [0x8000229c]:sd sp, 880(ra)<br>                                   |
| 112|[0x80005580]<br>0xFF76DF56FF76E046|- rs1_val == -17179869185<br>                                                                    |[0x800022ba]:c.bnez a0, 5<br> [0x800022c4]:c.addi sp, 3<br> [0x800022c6]:sd sp, 888(ra)<br>                                    |
| 113|[0x80005588]<br>0xFF76DF56FF76E047|- rs1_val == -34359738369<br>                                                                    |[0x800022e4]:c.bnez a0, 252<br> [0x800022dc]:addi sp, sp, 1<br> [0x800022e0]:jal zero, 16<br> [0x800022f0]:sd sp, 896(ra)<br>  |
| 114|[0x80005590]<br>0xFF76DF56FF76E04A|- rs1_val == -68719476737<br>                                                                    |[0x8000230e]:c.bnez a0, 5<br> [0x80002318]:c.addi sp, 3<br> [0x8000231a]:sd sp, 904(ra)<br>                                    |
| 115|[0x80005598]<br>0xFF76DF56FF76E04D|- rs1_val == -137438953473<br>                                                                   |[0x80002338]:c.bnez a0, 8<br> [0x80002348]:c.addi sp, 3<br> [0x8000234a]:sd sp, 912(ra)<br>                                    |
| 116|[0x800055a0]<br>0xFF76DF56FF76E04E|- rs1_val == -274877906945<br>                                                                   |[0x8000236e]:c.bnez a0, 249<br> [0x80002360]:addi sp, sp, 1<br> [0x80002364]:jal zero, 22<br> [0x8000237a]:sd sp, 920(ra)<br>  |
| 117|[0x800055a8]<br>0xFF76DF56FF76E051|- rs1_val == -549755813889<br>                                                                   |[0x80002398]:c.bnez a0, 6<br> [0x800023a4]:c.addi sp, 3<br> [0x800023a6]:sd sp, 928(ra)<br>                                    |
| 118|[0x800055b0]<br>0xFF76DF56FF76E052|- rs1_val == -1099511627777<br>                                                                  |[0x800023c4]:c.bnez a0, 252<br> [0x800023bc]:addi sp, sp, 1<br> [0x800023c0]:jal zero, 16<br> [0x800023d0]:sd sp, 936(ra)<br>  |
| 119|[0x800055b8]<br>0xFF76DF56FF76E053|- rs1_val == -2199023255553<br>                                                                  |[0x800023ee]:c.bnez a0, 252<br> [0x800023e6]:addi sp, sp, 1<br> [0x800023ea]:jal zero, 16<br> [0x800023fa]:sd sp, 944(ra)<br>  |
| 120|[0x800055c0]<br>0xFF76DF56FF76E054|- rs1_val == -4398046511105<br>                                                                  |[0x8000241e]:c.bnez a0, 249<br> [0x80002410]:addi sp, sp, 1<br> [0x80002414]:jal zero, 22<br> [0x8000242a]:sd sp, 952(ra)<br>  |
| 121|[0x800055c8]<br>0xFF76DF56FF76E057|- rs1_val == -8796093022209<br>                                                                  |[0x80002448]:c.bnez a0, 5<br> [0x80002452]:c.addi sp, 3<br> [0x80002454]:sd sp, 960(ra)<br>                                    |
| 122|[0x800055d0]<br>0xFF76DF56FF76E05A|- rs1_val == -17592186044417<br>                                                                 |[0x80002472]:c.bnez a0, 7<br> [0x80002480]:c.addi sp, 3<br> [0x80002482]:sd sp, 968(ra)<br>                                    |
| 123|[0x800055d8]<br>0xFF76DF56FF76E05D|- rs1_val == -35184372088833<br>                                                                 |[0x800024a0]:c.bnez a0, 5<br> [0x800024aa]:c.addi sp, 3<br> [0x800024ac]:sd sp, 976(ra)<br>                                    |
| 124|[0x800055e0]<br>0xFF76DF56FF76E05E|- rs1_val == -70368744177665<br>                                                                 |[0x800024d2]:c.bnez a0, 248<br> [0x800024c2]:addi sp, sp, 1<br> [0x800024c6]:jal zero, 24<br> [0x800024de]:sd sp, 984(ra)<br>  |
| 125|[0x800055e8]<br>0xFF76DF56FF76E05F|- rs1_val == -140737488355329<br>                                                                |[0x80002502]:c.bnez a0, 249<br> [0x800024f4]:addi sp, sp, 1<br> [0x800024f8]:jal zero, 22<br> [0x8000250e]:sd sp, 992(ra)<br>  |
| 126|[0x800055f0]<br>0xFF76DF56FF76E062|- rs1_val == -281474976710657<br>                                                                |[0x8000252c]:c.bnez a0, 5<br> [0x80002536]:c.addi sp, 3<br> [0x80002538]:sd sp, 1000(ra)<br>                                   |
| 127|[0x800055f8]<br>0xFF76DF56FF76E065|- rs1_val == -562949953421313<br>                                                                |[0x80002556]:c.bnez a0, 8<br> [0x80002566]:c.addi sp, 3<br> [0x80002568]:sd sp, 1008(ra)<br>                                   |
| 128|[0x80005600]<br>0xFF76DF56FF76E066|- rs1_val == -1125899906842625<br>                                                               |[0x80002592]:c.bnez a0, 246<br> [0x8000257e]:addi sp, sp, 1<br> [0x80002582]:jal zero, 28<br> [0x8000259e]:sd sp, 1016(ra)<br> |
| 129|[0x80005608]<br>0xFF76DF56FF76E067|- rs1_val == -2251799813685249<br>                                                               |[0x800025c0]:c.bnez a0, 250<br> [0x800025b4]:addi sp, sp, 1<br> [0x800025b8]:jal zero, 20<br> [0x800025cc]:sd sp, 1024(ra)<br> |
| 130|[0x80005610]<br>0xFF76DF56FF76E06A|- rs1_val == -4503599627370497<br>                                                               |[0x800025ea]:c.bnez a0, 9<br> [0x800025fc]:c.addi sp, 3<br> [0x800025fe]:sd sp, 1032(ra)<br>                                   |
| 131|[0x80005618]<br>0xFF76DF56FF76E06B|- rs1_val == -9007199254740993<br>                                                               |[0x8000261e]:c.bnez a0, 251<br> [0x80002614]:addi sp, sp, 1<br> [0x80002618]:jal zero, 18<br> [0x8000262a]:sd sp, 1040(ra)<br> |
| 132|[0x80005620]<br>0xFF76DF56FF76E06E|- rs1_val == -18014398509481985<br>                                                              |[0x80002648]:c.bnez a0, 16<br> [0x80002668]:c.addi sp, 3<br> [0x8000266a]:sd sp, 1048(ra)<br>                                  |
