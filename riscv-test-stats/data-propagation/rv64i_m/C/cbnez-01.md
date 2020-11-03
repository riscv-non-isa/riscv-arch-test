
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80002b10')]      |
| SIG_REGION                | [('0x80005204', '0x80005638', '134 dwords')]      |
| COV_LABELS                | cbnez      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cbnez-01.S/cbnez-01.S    |
| Total Number of coverpoints| 148     |
| Total Signature Updates   | 133      |
| Total Coverpoints Covered | 148      |
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

|s.no|            signature             |                                                 coverpoints                                                 |                                                              code                                                              |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80005210]<br>0xFF76DF56FF76DF59|- opcode : c.bnez<br> - rs1 : x12<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 6148914691236517205<br> |[0x800003c6]:c.bnez a2, 9<br> [0x800003d8]:c.addi sp, 3<br> [0x800003da]:sd sp, 0(ra)<br>                                       |
|   2|[0x80005218]<br>0xFF76DF56FF76DF5C|- rs1 : x11<br> - rs1_val < 0 and imm_val > 0<br>                                                            |[0x800003f0]:c.bnez a1, 5<br> [0x800003fa]:c.addi sp, 3<br> [0x800003fc]:sd sp, 8(ra)<br>                                       |
|   3|[0x80005220]<br>0xFF76DF56FF76DF5E|- rs1 : x9<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val > 0<br>                                         |[0x80000412]:c.bnez s1, 63<br> [0x80000414]:addi sp, sp, 2<br> [0x80000418]:jal zero, 122<br> [0x80000492]:sd sp, 16(ra)<br>    |
|   4|[0x80005228]<br>0xFF76DF56FF76DF5F|- rs1 : x10<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 262144<br>                                    |[0x800004a8]:c.bnez a0, 252<br> [0x800004a0]:addi sp, sp, 1<br> [0x800004a4]:jal zero, 16<br> [0x800004b4]:sd sp, 24(ra)<br>    |
|   5|[0x80005230]<br>0xFF76DF56FF76DF60|- rs1 : x14<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -18014398509481985<br>                        |[0x80000576]:c.bnez a4, 170<br> [0x800004ca]:addi sp, sp, 1<br> [0x800004ce]:jal zero, 180<br> [0x80000582]:sd sp, 32(ra)<br>   |
|   6|[0x80005238]<br>0xFF76DF56FF76DF62|- rs1 : x15<br> - rs1_val == 0 and imm_val < 0<br>                                                           |[0x800005a2]:c.bnez a5, 247<br> [0x800005a4]:addi sp, sp, 2<br> [0x800005a8]:jal zero, 6<br> [0x800005ae]:sd sp, 40(ra)<br>     |
|   7|[0x80005240]<br>0xFF76DF56FF76DF65|- rs1 : x13<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br>                        |[0x800005c8]:c.bnez a3, 64<br> [0x80000648]:c.addi sp, 3<br> [0x8000064a]:sd sp, 48(ra)<br>                                     |
|   8|[0x80005248]<br>0xFF76DF56FF76DF66|- rs1 : x8<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>                         |[0x80000668]:c.bnez s0, 252<br> [0x80000660]:addi sp, sp, 1<br> [0x80000664]:jal zero, 16<br> [0x80000674]:sd sp, 56(ra)<br>    |
|   9|[0x80005250]<br>0xFF76DF56FF76DF67|- rs1_val == 1<br>                                                                                           |[0x80000694]:c.bnez a0, 247<br> [0x80000682]:addi sp, sp, 1<br> [0x80000686]:jal zero, 26<br> [0x800006a0]:sd sp, 64(ra)<br>    |
|  10|[0x80005258]<br>0xFF76DF56FF76DF6A|- rs1_val == 2<br>                                                                                           |[0x800006b6]:c.bnez a0, 5<br> [0x800006c0]:c.addi sp, 3<br> [0x800006c2]:sd sp, 72(ra)<br>                                      |
|  11|[0x80005260]<br>0xFF76DF56FF76DF6B|- rs1_val == 4<br>                                                                                           |[0x800006e4]:c.bnez a0, 246<br> [0x800006d0]:addi sp, sp, 1<br> [0x800006d4]:jal zero, 28<br> [0x800006f0]:sd sp, 80(ra)<br>    |
|  12|[0x80005268]<br>0xFF76DF56FF76DF6C|- rs1_val == 8<br>                                                                                           |[0x800007aa]:c.bnez a0, 170<br> [0x800006fe]:addi sp, sp, 1<br> [0x80000702]:jal zero, 180<br> [0x800007b6]:sd sp, 88(ra)<br>   |
|  13|[0x80005270]<br>0xFF76DF56FF76DF6D|- rs1_val == 16<br>                                                                                          |[0x800007cc]:c.bnez a0, 252<br> [0x800007c4]:addi sp, sp, 1<br> [0x800007c8]:jal zero, 16<br> [0x800007d8]:sd sp, 96(ra)<br>    |
|  14|[0x80005278]<br>0xFF76DF56FF76DF70|- rs1_val == 32<br>                                                                                          |[0x800007ee]:c.bnez a0, 85<br> [0x80000898]:c.addi sp, 3<br> [0x8000089a]:sd sp, 104(ra)<br>                                    |
|  15|[0x80005280]<br>0xFF76DF56FF76DF73|- rs1_val == 64<br>                                                                                          |[0x800008b0]:c.bnez a0, 7<br> [0x800008be]:c.addi sp, 3<br> [0x800008c0]:sd sp, 112(ra)<br>                                     |
|  16|[0x80005288]<br>0xFF76DF56FF76DF76|- rs1_val == 128<br>                                                                                         |[0x800008d6]:c.bnez a0, 85<br> [0x80000980]:c.addi sp, 3<br> [0x80000982]:sd sp, 120(ra)<br>                                    |
|  17|[0x80005290]<br>0xFF76DF56FF76DF77|- rs1_val == 256<br>                                                                                         |[0x8000099e]:c.bnez a0, 249<br> [0x80000990]:addi sp, sp, 1<br> [0x80000994]:jal zero, 22<br> [0x800009aa]:sd sp, 128(ra)<br>   |
|  18|[0x80005298]<br>0xFF76DF56FF76DF7A|- rs1_val == 512<br>                                                                                         |[0x800009c0]:c.bnez a0, 5<br> [0x800009ca]:c.addi sp, 3<br> [0x800009cc]:sd sp, 136(ra)<br>                                     |
|  19|[0x800052a0]<br>0xFF76DF56FF76DF7D|- rs1_val == 1024<br>                                                                                        |[0x800009e2]:c.bnez a0, 64<br> [0x80000a62]:c.addi sp, 3<br> [0x80000a64]:sd sp, 144(ra)<br>                                    |
|  20|[0x800052a8]<br>0xFF76DF56FF76DF80|- rs1_val == 2048<br>                                                                                        |[0x80000a7e]:c.bnez a0, 5<br> [0x80000a88]:c.addi sp, 3<br> [0x80000a8a]:sd sp, 152(ra)<br>                                     |
|  21|[0x800052b0]<br>0xFF76DF56FF76DF81|- rs1_val == 4096<br>                                                                                        |[0x80000aa4]:c.bnez a0, 250<br> [0x80000a98]:addi sp, sp, 1<br> [0x80000a9c]:jal zero, 20<br> [0x80000ab0]:sd sp, 160(ra)<br>   |
|  22|[0x800052b8]<br>0xFF76DF56FF76DF84|- rs1_val == 8192<br>                                                                                        |[0x80000ac6]:c.bnez a0, 6<br> [0x80000ad2]:c.addi sp, 3<br> [0x80000ad4]:sd sp, 168(ra)<br>                                     |
|  23|[0x800052c0]<br>0xFF76DF56FF76DF87|- rs1_val == 16384<br>                                                                                       |[0x80000aea]:c.bnez a0, 5<br> [0x80000af4]:c.addi sp, 3<br> [0x80000af6]:sd sp, 176(ra)<br>                                     |
|  24|[0x800052c8]<br>0xFF76DF56FF76DF88|- rs1_val == 32768<br>                                                                                       |[0x80000b26]:c.bnez a0, 239<br> [0x80000b04]:addi sp, sp, 1<br> [0x80000b08]:jal zero, 42<br> [0x80000b32]:sd sp, 184(ra)<br>   |
|  25|[0x800052d0]<br>0xFF76DF56FF76DF89|- rs1_val == 65536<br>                                                                                       |[0x80000bec]:c.bnez a0, 170<br> [0x80000b40]:addi sp, sp, 1<br> [0x80000b44]:jal zero, 180<br> [0x80000bf8]:sd sp, 192(ra)<br>  |
|  26|[0x800052d8]<br>0xFF76DF56FF76DF8A|- rs1_val == 131072<br>                                                                                      |[0x80000c0e]:c.bnez a0, 252<br> [0x80000c06]:addi sp, sp, 1<br> [0x80000c0a]:jal zero, 16<br> [0x80000c1a]:sd sp, 200(ra)<br>   |
|  27|[0x800052e0]<br>0xFF76DF56FF76DF8D|- rs1_val == 524288<br>                                                                                      |[0x80000c30]:c.bnez a0, 85<br> [0x80000cda]:c.addi sp, 3<br> [0x80000cdc]:sd sp, 208(ra)<br>                                    |
|  28|[0x800052e8]<br>0xFF76DF56FF76DF90|- rs1_val == 1048576<br>                                                                                     |[0x80000cf2]:c.bnez a0, 16<br> [0x80000d12]:c.addi sp, 3<br> [0x80000d14]:sd sp, 216(ra)<br>                                    |
|  29|[0x800052f0]<br>0xFF76DF56FF76DF91|- rs1_val == 2097152<br>                                                                                     |[0x80000d44]:c.bnez a0, 239<br> [0x80000d22]:addi sp, sp, 1<br> [0x80000d26]:jal zero, 42<br> [0x80000d50]:sd sp, 224(ra)<br>   |
|  30|[0x800052f8]<br>0xFF76DF56FF76DF92|- rs1_val == 4194304<br>                                                                                     |[0x80000d70]:c.bnez a0, 247<br> [0x80000d5e]:addi sp, sp, 1<br> [0x80000d62]:jal zero, 26<br> [0x80000d7c]:sd sp, 232(ra)<br>   |
|  31|[0x80005300]<br>0xFF76DF56FF76DF93|- rs1_val == 8388608<br>                                                                                     |[0x80000e36]:c.bnez a0, 170<br> [0x80000d8a]:addi sp, sp, 1<br> [0x80000d8e]:jal zero, 180<br> [0x80000e42]:sd sp, 240(ra)<br>  |
|  32|[0x80005308]<br>0xFF76DF56FF76DF96|- rs1_val == 16777216<br>                                                                                    |[0x80000e58]:c.bnez a0, 7<br> [0x80000e66]:c.addi sp, 3<br> [0x80000e68]:sd sp, 248(ra)<br>                                     |
|  33|[0x80005310]<br>0xFF76DF56FF76DF97|- rs1_val == 33554432<br>                                                                                    |[0x80000ef6]:c.bnez a0, 192<br> [0x80000e76]:addi sp, sp, 1<br> [0x80000e7a]:jal zero, 136<br> [0x80000f02]:sd sp, 256(ra)<br>  |
|  34|[0x80005318]<br>0xFF76DF56FF76DF98|- rs1_val == 67108864<br>                                                                                    |[0x80000f1a]:c.bnez a0, 251<br> [0x80000f10]:addi sp, sp, 1<br> [0x80000f14]:jal zero, 18<br> [0x80000f26]:sd sp, 264(ra)<br>   |
|  35|[0x80005320]<br>0xFF76DF56FF76DF99|- rs1_val == 134217728<br>                                                                                   |[0x80000fb6]:c.bnez a0, 191<br> [0x80000f34]:addi sp, sp, 1<br> [0x80000f38]:jal zero, 138<br> [0x80000fc2]:sd sp, 272(ra)<br>  |
|  36|[0x80005328]<br>0xFF76DF56FF76DF9A|- rs1_val == 268435456<br>                                                                                   |[0x80001052]:c.bnez a0, 191<br> [0x80000fd0]:addi sp, sp, 1<br> [0x80000fd4]:jal zero, 138<br> [0x8000105e]:sd sp, 280(ra)<br>  |
|  37|[0x80005330]<br>0xFF76DF56FF76DF9D|- rs1_val == 536870912<br>                                                                                   |[0x80001074]:c.bnez a0, 9<br> [0x80001086]:c.addi sp, 3<br> [0x80001088]:sd sp, 288(ra)<br>                                     |
|  38|[0x80005338]<br>0xFF76DF56FF76DFA0|- rs1_val == 1073741824<br>                                                                                  |[0x8000109e]:c.bnez a0, 5<br> [0x800010a8]:c.addi sp, 3<br> [0x800010aa]:sd sp, 296(ra)<br>                                     |
|  39|[0x80005340]<br>0xFF76DF56FF76DFA3|- rs1_val == 2147483648<br>                                                                                  |[0x800010c4]:c.bnez a0, 64<br> [0x80001144]:c.addi sp, 3<br> [0x80001146]:sd sp, 304(ra)<br>                                    |
|  40|[0x80005348]<br>0xFF76DF56FF76DFA6|- rs1_val == 4294967296<br>                                                                                  |[0x80001160]:c.bnez a0, 8<br> [0x80001170]:c.addi sp, 3<br> [0x80001172]:sd sp, 312(ra)<br>                                     |
|  41|[0x80005350]<br>0xFF76DF56FF76DFA9|- rs1_val == 8589934592<br>                                                                                  |[0x8000118c]:c.bnez a0, 5<br> [0x80001196]:c.addi sp, 3<br> [0x80001198]:sd sp, 320(ra)<br>                                     |
|  42|[0x80005358]<br>0xFF76DF56FF76DFAA|- rs1_val == 17179869184<br>                                                                                 |[0x800011b4]:c.bnez a0, 251<br> [0x800011aa]:addi sp, sp, 1<br> [0x800011ae]:jal zero, 18<br> [0x800011c0]:sd sp, 328(ra)<br>   |
|  43|[0x80005360]<br>0xFF76DF56FF76DFAD|- rs1_val == 34359738368<br>                                                                                 |[0x800011da]:c.bnez a0, 5<br> [0x800011e4]:c.addi sp, 3<br> [0x800011e6]:sd sp, 336(ra)<br>                                     |
|  44|[0x80005368]<br>0xFF76DF56FF76DFB0|- rs1_val == 68719476736<br>                                                                                 |[0x80001200]:c.bnez a0, 9<br> [0x80001212]:c.addi sp, 3<br> [0x80001214]:sd sp, 344(ra)<br>                                     |
|  45|[0x80005370]<br>0xFF76DF56FF76DFB3|- rs1_val == 137438953472<br>                                                                                |[0x8000122e]:c.bnez a0, 32<br> [0x8000126e]:c.addi sp, 3<br> [0x80001270]:sd sp, 352(ra)<br>                                    |
|  46|[0x80005378]<br>0xFF76DF56FF76DFB6|- rs1_val == 274877906944<br>                                                                                |[0x8000128a]:c.bnez a0, 9<br> [0x8000129c]:c.addi sp, 3<br> [0x8000129e]:sd sp, 360(ra)<br>                                     |
|  47|[0x80005380]<br>0xFF76DF56FF76DFB9|- rs1_val == 549755813888<br>                                                                                |[0x800012b8]:c.bnez a0, 5<br> [0x800012c2]:c.addi sp, 3<br> [0x800012c4]:sd sp, 368(ra)<br>                                     |
|  48|[0x80005388]<br>0xFF76DF56FF76DFBC|- rs1_val == 1099511627776<br>                                                                               |[0x800012de]:c.bnez a0, 9<br> [0x800012f0]:c.addi sp, 3<br> [0x800012f2]:sd sp, 376(ra)<br>                                     |
|  49|[0x80005390]<br>0xFF76DF56FF76DFBD|- rs1_val == 2199023255552<br>                                                                               |[0x80001318]:c.bnez a0, 246<br> [0x80001304]:addi sp, sp, 1<br> [0x80001308]:jal zero, 28<br> [0x80001324]:sd sp, 384(ra)<br>   |
|  50|[0x80005398]<br>0xFF76DF56FF76DFBE|- rs1_val == 4398046511104<br>                                                                               |[0x800013b6]:c.bnez a0, 192<br> [0x80001336]:addi sp, sp, 1<br> [0x8000133a]:jal zero, 136<br> [0x800013c2]:sd sp, 392(ra)<br>  |
|  51|[0x800053a0]<br>0xFF76DF56FF76DFC1|- rs1_val == 8796093022208<br>                                                                               |[0x800013dc]:c.bnez a0, 5<br> [0x800013e6]:c.addi sp, 3<br> [0x800013e8]:sd sp, 400(ra)<br>                                     |
|  52|[0x800053a8]<br>0xFF76DF56FF76DFC2|- rs1_val == 17592186044416<br>                                                                              |[0x80001406]:c.bnez a0, 250<br> [0x800013fa]:addi sp, sp, 1<br> [0x800013fe]:jal zero, 20<br> [0x80001412]:sd sp, 408(ra)<br>   |
|  53|[0x800053b0]<br>0xFF76DF56FF76DFC3|- rs1_val == 35184372088832<br>                                                                              |[0x80001466]:c.bnez a0, 223<br> [0x80001424]:addi sp, sp, 1<br> [0x80001428]:jal zero, 74<br> [0x80001472]:sd sp, 416(ra)<br>   |
|  54|[0x800053b8]<br>0xFF76DF56FF76DFC6|- rs1_val == 70368744177664<br>                                                                              |[0x8000148c]:c.bnez a0, 9<br> [0x8000149e]:c.addi sp, 3<br> [0x800014a0]:sd sp, 424(ra)<br>                                     |
|  55|[0x800053c0]<br>0xFF76DF56FF76DFC7|- rs1_val == 140737488355328<br>                                                                             |[0x800014c4]:c.bnez a0, 247<br> [0x800014b2]:addi sp, sp, 1<br> [0x800014b6]:jal zero, 26<br> [0x800014d0]:sd sp, 432(ra)<br>   |
|  56|[0x800053c8]<br>0xFF76DF56FF76DFCA|- rs1_val == 281474976710656<br>                                                                             |[0x800014ea]:c.bnez a0, 5<br> [0x800014f4]:c.addi sp, 3<br> [0x800014f6]:sd sp, 440(ra)<br>                                     |
|  57|[0x800053d0]<br>0xFF76DF56FF76DFCD|- rs1_val == 562949953421312<br>                                                                             |[0x80001510]:c.bnez a0, 5<br> [0x8000151a]:c.addi sp, 3<br> [0x8000151c]:sd sp, 448(ra)<br>                                     |
|  58|[0x800053d8]<br>0xFF76DF56FF76DFCE|- rs1_val == 1125899906842624<br>                                                                            |[0x80001538]:c.bnez a0, 251<br> [0x8000152e]:addi sp, sp, 1<br> [0x80001532]:jal zero, 18<br> [0x80001544]:sd sp, 456(ra)<br>   |
|  59|[0x800053e0]<br>0xFF76DF56FF76DFCF|- rs1_val == 2251799813685248<br>                                                                            |[0x80001568]:c.bnez a0, 247<br> [0x80001556]:addi sp, sp, 1<br> [0x8000155a]:jal zero, 26<br> [0x80001574]:sd sp, 464(ra)<br>   |
|  60|[0x800053e8]<br>0xFF76DF56FF76DFD0|- rs1_val == 4503599627370496<br>                                                                            |[0x80001592]:c.bnez a0, 250<br> [0x80001586]:addi sp, sp, 1<br> [0x8000158a]:jal zero, 20<br> [0x8000159e]:sd sp, 472(ra)<br>   |
|  61|[0x800053f0]<br>0xFF76DF56FF76DFD3|- rs1_val == 9007199254740992<br>                                                                            |[0x800015b8]:c.bnez a0, 5<br> [0x800015c2]:c.addi sp, 3<br> [0x800015c4]:sd sp, 480(ra)<br>                                     |
|  62|[0x800053f8]<br>0xFF76DF56FF76DFD6|- rs1_val == 18014398509481984<br>                                                                           |[0x800015de]:c.bnez a0, 8<br> [0x800015ee]:c.addi sp, 3<br> [0x800015f0]:sd sp, 488(ra)<br>                                     |
|  63|[0x80005400]<br>0xFF76DF56FF76DFD9|- rs1_val == 36028797018963968<br>                                                                           |[0x8000160a]:c.bnez a0, 64<br> [0x8000168a]:c.addi sp, 3<br> [0x8000168c]:sd sp, 496(ra)<br>                                    |
|  64|[0x80005408]<br>0xFF76DF56FF76DFDA|- rs1_val == 72057594037927936<br>                                                                           |[0x800016a8]:c.bnez a0, 251<br> [0x8000169e]:addi sp, sp, 1<br> [0x800016a2]:jal zero, 18<br> [0x800016b4]:sd sp, 504(ra)<br>   |
|  65|[0x80005410]<br>0xFF76DF56FF76DFDB|- rs1_val == 144115188075855872<br>                                                                          |[0x800016ce]:c.bnez a0, 252<br> [0x800016c6]:addi sp, sp, 1<br> [0x800016ca]:jal zero, 16<br> [0x800016da]:sd sp, 512(ra)<br>   |
|  66|[0x80005418]<br>0xFF76DF56FF76DFDE|- rs1_val == 288230376151711744<br>                                                                          |[0x800016f4]:c.bnez a0, 5<br> [0x800016fe]:c.addi sp, 3<br> [0x80001700]:sd sp, 520(ra)<br>                                     |
|  67|[0x80005420]<br>0xFF76DF56FF76DFDF|- rs1_val == 576460752303423488<br>                                                                          |[0x80001722]:c.bnez a0, 248<br> [0x80001712]:addi sp, sp, 1<br> [0x80001716]:jal zero, 24<br> [0x8000172e]:sd sp, 528(ra)<br>   |
|  68|[0x80005428]<br>0xFF76DF56FF76DFE0|- rs1_val == 1152921504606846976<br>                                                                         |[0x8000174e]:c.bnez a0, 249<br> [0x80001740]:addi sp, sp, 1<br> [0x80001744]:jal zero, 22<br> [0x8000175a]:sd sp, 536(ra)<br>   |
|  69|[0x80005430]<br>0xFF76DF56FF76DFE1|- rs1_val == 2305843009213693952<br>                                                                         |[0x800017ae]:c.bnez a0, 223<br> [0x8000176c]:addi sp, sp, 1<br> [0x80001770]:jal zero, 74<br> [0x800017ba]:sd sp, 544(ra)<br>   |
|  70|[0x80005438]<br>0xFF76DF56FF76DFE4|- rs1_val == 4611686018427387904<br>                                                                         |[0x800017d4]:c.bnez a0, 64<br> [0x80001854]:c.addi sp, 3<br> [0x80001856]:sd sp, 552(ra)<br>                                    |
|  71|[0x80005440]<br>0xFF76DF56FF76DFE5|- rs1_val == -36028797018963969<br>                                                                          |[0x8000188e]:c.bnez a0, 239<br> [0x8000186c]:addi sp, sp, 1<br> [0x80001870]:jal zero, 42<br> [0x8000189a]:sd sp, 560(ra)<br>   |
|  72|[0x80005448]<br>0xFF76DF56FF76DFE6|- rs1_val == -72057594037927937<br>                                                                          |[0x80001932]:c.bnez a0, 191<br> [0x800018b0]:addi sp, sp, 1<br> [0x800018b4]:jal zero, 138<br> [0x8000193e]:sd sp, 568(ra)<br>  |
|  73|[0x80005450]<br>0xFF76DF56FF76DFE7|- rs1_val == -144115188075855873<br>                                                                         |[0x8000195c]:c.bnez a0, 252<br> [0x80001954]:addi sp, sp, 1<br> [0x80001958]:jal zero, 16<br> [0x80001968]:sd sp, 576(ra)<br>   |
|  74|[0x80005458]<br>0xFF76DF56FF76DFE8|- rs1_val == -288230376151711745<br>                                                                         |[0x8000198e]:c.bnez a0, 248<br> [0x8000197e]:addi sp, sp, 1<br> [0x80001982]:jal zero, 24<br> [0x8000199a]:sd sp, 584(ra)<br>   |
|  75|[0x80005460]<br>0xFF76DF56FF76DFE9|- rs1_val == -576460752303423489<br>                                                                         |[0x800019b8]:c.bnez a0, 252<br> [0x800019b0]:addi sp, sp, 1<br> [0x800019b4]:jal zero, 16<br> [0x800019c4]:sd sp, 592(ra)<br>   |
|  76|[0x80005468]<br>0xFF76DF56FF76DFEA|- rs1_val == -1152921504606846977<br>                                                                        |[0x800019ee]:c.bnez a0, 246<br> [0x800019da]:addi sp, sp, 1<br> [0x800019de]:jal zero, 28<br> [0x800019fa]:sd sp, 600(ra)<br>   |
|  77|[0x80005470]<br>0xFF76DF56FF76DFEB|- rs1_val == -2305843009213693953<br>                                                                        |[0x80001a18]:c.bnez a0, 252<br> [0x80001a10]:addi sp, sp, 1<br> [0x80001a14]:jal zero, 16<br> [0x80001a24]:sd sp, 608(ra)<br>   |
|  78|[0x80005478]<br>0xFF76DF56FF76DFEE|- rs1_val == -4611686018427387905<br>                                                                        |[0x80001a42]:c.bnez a0, 85<br> [0x80001aec]:c.addi sp, 3<br> [0x80001aee]:sd sp, 616(ra)<br>                                    |
|  79|[0x80005480]<br>0xFF76DF56FF76DFEF|- rs1_val == -6148914691236517206<br>                                                                        |[0x80001b20]:c.bnez a0, 252<br> [0x80001b18]:addi sp, sp, 1<br> [0x80001b1c]:jal zero, 16<br> [0x80001b2c]:sd sp, 624(ra)<br>   |
|  80|[0x80005488]<br>0xFF76DF56FF76DFF2|- rs1_val == -2<br>                                                                                          |[0x80001b42]:c.bnez a0, 8<br> [0x80001b52]:c.addi sp, 3<br> [0x80001b54]:sd sp, 632(ra)<br>                                     |
|  81|[0x80005490]<br>0xFF76DF56FF76DFF3|- rs1_val == -3<br>                                                                                          |[0x80001b6a]:c.bnez a0, 252<br> [0x80001b62]:addi sp, sp, 1<br> [0x80001b66]:jal zero, 16<br> [0x80001b76]:sd sp, 640(ra)<br>   |
|  82|[0x80005498]<br>0xFF76DF56FF76DFF6|- rs1_val == -5<br>                                                                                          |[0x80001b8c]:c.bnez a0, 5<br> [0x80001b96]:c.addi sp, 3<br> [0x80001b98]:sd sp, 648(ra)<br>                                     |
|  83|[0x800054a0]<br>0xFF76DF56FF76DFF9|- rs1_val == -9<br>                                                                                          |[0x80001bae]:c.bnez a0, 9<br> [0x80001bc0]:c.addi sp, 3<br> [0x80001bc2]:sd sp, 656(ra)<br>                                     |
|  84|[0x800054a8]<br>0xFF76DF56FF76DFFC|- rs1_val == -17<br>                                                                                         |[0x80001bd8]:c.bnez a0, 6<br> [0x80001be4]:c.addi sp, 3<br> [0x80001be6]:sd sp, 664(ra)<br>                                     |
|  85|[0x800054b0]<br>0xFF76DF56FF76DFFD|- rs1_val == -33<br>                                                                                         |[0x80001c02]:c.bnez a0, 249<br> [0x80001bf4]:addi sp, sp, 1<br> [0x80001bf8]:jal zero, 22<br> [0x80001c0e]:sd sp, 672(ra)<br>   |
|  86|[0x800054b8]<br>0xFF76DF56FF76E000|- rs1_val == -65<br>                                                                                         |[0x80001c24]:c.bnez a0, 5<br> [0x80001c2e]:c.addi sp, 3<br> [0x80001c30]:sd sp, 680(ra)<br>                                     |
|  87|[0x800054c0]<br>0xFF76DF56FF76E001|- rs1_val == -129<br>                                                                                        |[0x80001c60]:c.bnez a0, 239<br> [0x80001c3e]:addi sp, sp, 1<br> [0x80001c42]:jal zero, 42<br> [0x80001c6c]:sd sp, 688(ra)<br>   |
|  88|[0x800054c8]<br>0xFF76DF56FF76E004|- rs1_val == -257<br>                                                                                        |[0x80001c82]:c.bnez a0, 8<br> [0x80001c92]:c.addi sp, 3<br> [0x80001c94]:sd sp, 696(ra)<br>                                     |
|  89|[0x800054d0]<br>0xFF76DF56FF76E007|- rs1_val == -513<br>                                                                                        |[0x80001caa]:c.bnez a0, 9<br> [0x80001cbc]:c.addi sp, 3<br> [0x80001cbe]:sd sp, 704(ra)<br>                                     |
|  90|[0x800054d8]<br>0xFF76DF56FF76E008|- rs1_val == -1025<br>                                                                                       |[0x80001d4c]:c.bnez a0, 192<br> [0x80001ccc]:addi sp, sp, 1<br> [0x80001cd0]:jal zero, 136<br> [0x80001d58]:sd sp, 712(ra)<br>  |
|  91|[0x800054e0]<br>0xFF76DF56FF76E009|- rs1_val == -2049<br>                                                                                       |[0x80001d8c]:c.bnez a0, 239<br> [0x80001d6a]:addi sp, sp, 1<br> [0x80001d6e]:jal zero, 42<br> [0x80001d98]:sd sp, 720(ra)<br>   |
|  92|[0x800054e8]<br>0xFF76DF56FF76E00A|- rs1_val == -4097<br>                                                                                       |[0x80001db2]:c.bnez a0, 252<br> [0x80001daa]:addi sp, sp, 1<br> [0x80001dae]:jal zero, 16<br> [0x80001dbe]:sd sp, 728(ra)<br>   |
|  93|[0x800054f0]<br>0xFF76DF56FF76E00D|- rs1_val == -8193<br>                                                                                       |[0x80001dd8]:c.bnez a0, 5<br> [0x80001de2]:c.addi sp, 3<br> [0x80001de4]:sd sp, 736(ra)<br>                                     |
|  94|[0x800054f8]<br>0xFF76DF56FF76E010|- rs1_val == -16385<br>                                                                                      |[0x80001dfe]:c.bnez a0, 5<br> [0x80001e08]:c.addi sp, 3<br> [0x80001e0a]:sd sp, 744(ra)<br>                                     |
|  95|[0x80005500]<br>0xFF76DF56FF76E011|- rs1_val == -32769<br>                                                                                      |[0x80001e2a]:c.bnez a0, 249<br> [0x80001e1c]:addi sp, sp, 1<br> [0x80001e20]:jal zero, 22<br> [0x80001e36]:sd sp, 752(ra)<br>   |
|  96|[0x80005508]<br>0xFF76DF56FF76E012|- rs1_val == -65537<br>                                                                                      |[0x80001e50]:c.bnez a0, 252<br> [0x80001e48]:addi sp, sp, 1<br> [0x80001e4c]:jal zero, 16<br> [0x80001e5c]:sd sp, 760(ra)<br>   |
|  97|[0x80005510]<br>0xFF76DF56FF76E013|- rs1_val == -131073<br>                                                                                     |[0x80001e7c]:c.bnez a0, 249<br> [0x80001e6e]:addi sp, sp, 1<br> [0x80001e72]:jal zero, 22<br> [0x80001e88]:sd sp, 768(ra)<br>   |
|  98|[0x80005518]<br>0xFF76DF56FF76E016|- rs1_val == -262145<br>                                                                                     |[0x80001ea2]:c.bnez a0, 8<br> [0x80001eb2]:c.addi sp, 3<br> [0x80001eb4]:sd sp, 776(ra)<br>                                     |
|  99|[0x80005520]<br>0xFF76DF56FF76E019|- rs1_val == -524289<br>                                                                                     |[0x80001ece]:c.bnez a0, 85<br> [0x80001f78]:c.addi sp, 3<br> [0x80001f7a]:sd sp, 784(ra)<br>                                    |
| 100|[0x80005528]<br>0xFF76DF56FF76E01A|- rs1_val == -1048577<br>                                                                                    |[0x80001f9a]:c.bnez a0, 249<br> [0x80001f8c]:addi sp, sp, 1<br> [0x80001f90]:jal zero, 22<br> [0x80001fa6]:sd sp, 792(ra)<br>   |
| 101|[0x80005530]<br>0xFF76DF56FF76E01D|- rs1_val == -2097153<br>                                                                                    |[0x80001fc0]:c.bnez a0, 9<br> [0x80001fd2]:c.addi sp, 3<br> [0x80001fd4]:sd sp, 800(ra)<br>                                     |
| 102|[0x80005538]<br>0xFF76DF56FF76E01E|- rs1_val == -4194305<br>                                                                                    |[0x80001ff6]:c.bnez a0, 248<br> [0x80001fe6]:addi sp, sp, 1<br> [0x80001fea]:jal zero, 24<br> [0x80002002]:sd sp, 808(ra)<br>   |
| 103|[0x80005540]<br>0xFF76DF56FF76E01F|- rs1_val == -8388609<br>                                                                                    |[0x80002036]:c.bnez a0, 239<br> [0x80002014]:addi sp, sp, 1<br> [0x80002018]:jal zero, 42<br> [0x80002042]:sd sp, 816(ra)<br>   |
| 104|[0x80005548]<br>0xFF76DF56FF76E022|- rs1_val == -16777217<br>                                                                                   |[0x8000205c]:c.bnez a0, 32<br> [0x8000209c]:c.addi sp, 3<br> [0x8000209e]:sd sp, 824(ra)<br>                                    |
| 105|[0x80005550]<br>0xFF76DF56FF76E025|- rs1_val == -33554433<br>                                                                                   |[0x800020b8]:c.bnez a0, 5<br> [0x800020c2]:c.addi sp, 3<br> [0x800020c4]:sd sp, 832(ra)<br>                                     |
| 106|[0x80005558]<br>0xFF76DF56FF76E026|- rs1_val == -67108865<br>                                                                                   |[0x80002118]:c.bnez a0, 223<br> [0x800020d6]:addi sp, sp, 1<br> [0x800020da]:jal zero, 74<br> [0x80002124]:sd sp, 840(ra)<br>   |
| 107|[0x80005560]<br>0xFF76DF56FF76E027|- rs1_val == -134217729<br>                                                                                  |[0x800021b8]:c.bnez a0, 191<br> [0x80002136]:addi sp, sp, 1<br> [0x8000213a]:jal zero, 138<br> [0x800021c4]:sd sp, 848(ra)<br>  |
| 108|[0x80005568]<br>0xFF76DF56FF76E028|- rs1_val == -268435457<br>                                                                                  |[0x800021e6]:c.bnez a0, 248<br> [0x800021d6]:addi sp, sp, 1<br> [0x800021da]:jal zero, 24<br> [0x800021f2]:sd sp, 856(ra)<br>   |
| 109|[0x80005570]<br>0xFF76DF56FF76E029|- rs1_val == -536870913<br>                                                                                  |[0x8000220c]:c.bnez a0, 252<br> [0x80002204]:addi sp, sp, 1<br> [0x80002208]:jal zero, 16<br> [0x80002218]:sd sp, 864(ra)<br>   |
| 110|[0x80005578]<br>0xFF76DF56FF76E02A|- rs1_val == -1073741825<br>                                                                                 |[0x800022d6]:c.bnez a0, 170<br> [0x8000222a]:addi sp, sp, 1<br> [0x8000222e]:jal zero, 180<br> [0x800022e2]:sd sp, 872(ra)<br>  |
| 111|[0x80005580]<br>0xFF76DF56FF76E02D|- rs1_val == -2147483649<br>                                                                                 |[0x80002300]:c.bnez a0, 85<br> [0x800023aa]:c.addi sp, 3<br> [0x800023ac]:sd sp, 880(ra)<br>                                    |
| 112|[0x80005588]<br>0xFF76DF56FF76E030|- rs1_val == -4294967297<br>                                                                                 |[0x800023ca]:c.bnez a0, 6<br> [0x800023d6]:c.addi sp, 3<br> [0x800023d8]:sd sp, 888(ra)<br>                                     |
| 113|[0x80005590]<br>0xFF76DF56FF76E033|- rs1_val == -8589934593<br>                                                                                 |[0x800023f6]:c.bnez a0, 6<br> [0x80002402]:c.addi sp, 3<br> [0x80002404]:sd sp, 896(ra)<br>                                     |
| 114|[0x80005598]<br>0xFF76DF56FF76E034|- rs1_val == -17179869185<br>                                                                                |[0x8000242a]:c.bnez a0, 248<br> [0x8000241a]:addi sp, sp, 1<br> [0x8000241e]:jal zero, 24<br> [0x80002436]:sd sp, 904(ra)<br>   |
| 115|[0x800055a0]<br>0xFF76DF56FF76E037|- rs1_val == -34359738369<br>                                                                                |[0x80002454]:c.bnez a0, 85<br> [0x800024fe]:c.addi sp, 3<br> [0x80002500]:sd sp, 912(ra)<br>                                    |
| 116|[0x800055a8]<br>0xFF76DF56FF76E03A|- rs1_val == -68719476737<br>                                                                                |[0x8000251e]:c.bnez a0, 5<br> [0x80002528]:c.addi sp, 3<br> [0x8000252a]:sd sp, 920(ra)<br>                                     |
| 117|[0x800055b0]<br>0xFF76DF56FF76E03B|- rs1_val == -137438953473<br>                                                                               |[0x8000254c]:c.bnez a0, 250<br> [0x80002540]:addi sp, sp, 1<br> [0x80002544]:jal zero, 20<br> [0x80002558]:sd sp, 928(ra)<br>   |
| 118|[0x800055b8]<br>0xFF76DF56FF76E03E|- rs1_val == -274877906945<br>                                                                               |[0x80002576]:c.bnez a0, 5<br> [0x80002580]:c.addi sp, 3<br> [0x80002582]:sd sp, 936(ra)<br>                                     |
| 119|[0x800055c0]<br>0xFF76DF56FF76E03F|- rs1_val == -549755813889<br>                                                                               |[0x800025a8]:c.bnez a0, 248<br> [0x80002598]:addi sp, sp, 1<br> [0x8000259c]:jal zero, 24<br> [0x800025b4]:sd sp, 944(ra)<br>   |
| 120|[0x800055c8]<br>0xFF76DF56FF76E042|- rs1_val == -1099511627777<br>                                                                              |[0x800025d2]:c.bnez a0, 5<br> [0x800025dc]:c.addi sp, 3<br> [0x800025de]:sd sp, 952(ra)<br>                                     |
| 121|[0x800055d0]<br>0xFF76DF56FF76E045|- rs1_val == -2199023255553<br>                                                                              |[0x800025fc]:c.bnez a0, 8<br> [0x8000260c]:c.addi sp, 3<br> [0x8000260e]:sd sp, 960(ra)<br>                                     |
| 122|[0x800055d8]<br>0xFF76DF56FF76E048|- rs1_val == -4398046511105<br>                                                                              |[0x8000262c]:c.bnez a0, 16<br> [0x8000264c]:c.addi sp, 3<br> [0x8000264e]:sd sp, 968(ra)<br>                                    |
| 123|[0x800055e0]<br>0xFF76DF56FF76E049|- rs1_val == -8796093022209<br>                                                                              |[0x80002674]:c.bnez a0, 248<br> [0x80002664]:addi sp, sp, 1<br> [0x80002668]:jal zero, 24<br> [0x80002680]:sd sp, 976(ra)<br>   |
| 124|[0x800055e8]<br>0xFF76DF56FF76E04A|- rs1_val == -17592186044417<br>                                                                             |[0x80002742]:c.bnez a0, 170<br> [0x80002696]:addi sp, sp, 1<br> [0x8000269a]:jal zero, 180<br> [0x8000274e]:sd sp, 984(ra)<br>  |
| 125|[0x800055f0]<br>0xFF76DF56FF76E04B|- rs1_val == -35184372088833<br>                                                                             |[0x800027a6]:c.bnez a0, 223<br> [0x80002764]:addi sp, sp, 1<br> [0x80002768]:jal zero, 74<br> [0x800027b2]:sd sp, 992(ra)<br>   |
| 126|[0x800055f8]<br>0xFF76DF56FF76E04C|- rs1_val == -70368744177665<br>                                                                             |[0x800027ea]:c.bnez a0, 239<br> [0x800027c8]:addi sp, sp, 1<br> [0x800027cc]:jal zero, 42<br> [0x800027f6]:sd sp, 1000(ra)<br>  |
| 127|[0x80005600]<br>0xFF76DF56FF76E04D|- rs1_val == -140737488355329<br>                                                                            |[0x80002820]:c.bnez a0, 246<br> [0x8000280c]:addi sp, sp, 1<br> [0x80002810]:jal zero, 28<br> [0x8000282c]:sd sp, 1008(ra)<br>  |
| 128|[0x80005608]<br>0xFF76DF56FF76E04E|- rs1_val == -281474976710657<br>                                                                            |[0x800028c4]:c.bnez a0, 191<br> [0x80002842]:addi sp, sp, 1<br> [0x80002846]:jal zero, 138<br> [0x800028d0]:sd sp, 1016(ra)<br> |
| 129|[0x80005610]<br>0xFF76DF56FF76E04F|- rs1_val == -562949953421313<br>                                                                            |[0x80002966]:c.bnez a0, 192<br> [0x800028e6]:addi sp, sp, 1<br> [0x800028ea]:jal zero, 136<br> [0x80002972]:sd sp, 1024(ra)<br> |
| 130|[0x80005618]<br>0xFF76DF56FF76E052|- rs1_val == -1125899906842625<br>                                                                           |[0x80002990]:c.bnez a0, 63<br> [0x80002a0e]:c.addi sp, 3<br> [0x80002a10]:sd sp, 1032(ra)<br>                                   |
| 131|[0x80005620]<br>0xFF76DF56FF76E055|- rs1_val == -2251799813685249<br>                                                                           |[0x80002a2e]:c.bnez a0, 63<br> [0x80002aac]:c.addi sp, 3<br> [0x80002aae]:sd sp, 1040(ra)<br>                                   |
| 132|[0x80005628]<br>0xFF76DF56FF76E058|- rs1_val == -4503599627370497<br>                                                                           |[0x80002acc]:c.bnez a0, 5<br> [0x80002ad6]:c.addi sp, 3<br> [0x80002ad8]:sd sp, 1048(ra)<br>                                    |
| 133|[0x80005630]<br>0xFF76DF56FF76E059|- rs1_val == -9007199254740993<br>                                                                           |[0x80002af6]:c.bnez a0, 252<br> [0x80002aee]:addi sp, sp, 1<br> [0x80002af2]:jal zero, 16<br> [0x80002b02]:sd sp, 1056(ra)<br>  |
