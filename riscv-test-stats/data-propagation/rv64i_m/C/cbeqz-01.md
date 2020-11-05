
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80002a70')]      |
| SIG_REGION                | [('0x80005208', '0x80005638', '134 dwords')]      |
| COV_LABELS                | cbeqz      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cbeqz-01.S/cbeqz-01.S    |
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

|s.no|            signature             |                                     coverpoints                                      |                                                             code                                                             |
|---:|----------------------------------|--------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80005208]<br>0xFF76DF56FF76DF58|- opcode : c.beqz<br> - rs1 : x15<br> - rs1_val > 0 and imm_val > 0<br>               |[0x800003aa]:c.beqz a5, 32<br> [0x800003ac]:addi sp, sp, 2<br> [0x800003b0]:jal zero, 60<br> [0x800003ec]:sd sp, 0(ra)<br>    |
|   2|[0x80005210]<br>0xFF76DF56FF76DF5A|- rs1 : x14<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -536870913<br>         |[0x80000406]:c.beqz a4, 6<br> [0x80000408]:addi sp, sp, 2<br> [0x8000040c]:jal zero, 8<br> [0x80000414]:sd sp, 8(ra)<br>      |
|   3|[0x80005218]<br>0xFF76DF56FF76DF5D|- rs1 : x8<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val > 0<br>                  |[0x8000042a]:c.beqz s0, 5<br> [0x80000434]:c.addi sp, 3<br> [0x80000436]:sd sp, 16(ra)<br>                                    |
|   4|[0x80005220]<br>0xFF76DF56FF76DF5F|- rs1 : x12<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 68719476736<br>        |[0x8000045c]:c.beqz a2, 246<br> [0x8000045e]:addi sp, sp, 2<br> [0x80000462]:jal zero, 6<br> [0x80000468]:sd sp, 24(ra)<br>   |
|   5|[0x80005228]<br>0xFF76DF56FF76DF61|- rs1 : x11<br> - rs1_val < 0 and imm_val < 0<br>                                     |[0x8000047e]:c.beqz a1, 252<br> [0x80000480]:addi sp, sp, 2<br> [0x80000484]:jal zero, 6<br> [0x8000048a]:sd sp, 32(ra)<br>   |
|   6|[0x80005230]<br>0xFF76DF56FF76DF62|- rs1 : x9<br> - rs1_val == 0 and imm_val < 0<br>                                     |[0x800004ac]:c.beqz s1, 246<br> [0x80000498]:addi sp, sp, 1<br> [0x8000049c]:jal zero, 28<br> [0x800004b8]:sd sp, 40(ra)<br>  |
|   7|[0x80005238]<br>0xFF76DF56FF76DF64|- rs1 : x10<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br> |[0x800004d2]:c.beqz a0, 252<br> [0x800004d4]:addi sp, sp, 2<br> [0x800004d8]:jal zero, 6<br> [0x800004de]:sd sp, 48(ra)<br>   |
|   8|[0x80005240]<br>0xFF76DF56FF76DF66|- rs1 : x13<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br> |[0x800005a0]:c.beqz a3, 170<br> [0x800005a2]:addi sp, sp, 2<br> [0x800005a6]:jal zero, 6<br> [0x800005ac]:sd sp, 56(ra)<br>   |
|   9|[0x80005248]<br>0xFF76DF56FF76DF68|- rs1_val == 1<br>                                                                    |[0x800005c4]:c.beqz a0, 251<br> [0x800005c6]:addi sp, sp, 2<br> [0x800005ca]:jal zero, 6<br> [0x800005d0]:sd sp, 64(ra)<br>   |
|  10|[0x80005250]<br>0xFF76DF56FF76DF6A|- rs1_val == 2<br>                                                                    |[0x800005ea]:c.beqz a0, 250<br> [0x800005ec]:addi sp, sp, 2<br> [0x800005f0]:jal zero, 6<br> [0x800005f6]:sd sp, 72(ra)<br>   |
|  11|[0x80005258]<br>0xFF76DF56FF76DF6C|- rs1_val == 4<br>                                                                    |[0x8000060c]:c.beqz a0, 5<br> [0x8000060e]:addi sp, sp, 2<br> [0x80000612]:jal zero, 6<br> [0x80000618]:sd sp, 80(ra)<br>     |
|  12|[0x80005260]<br>0xFF76DF56FF76DF6E|- rs1_val == 8<br>                                                                    |[0x8000062e]:c.beqz a0, 5<br> [0x80000630]:addi sp, sp, 2<br> [0x80000634]:jal zero, 6<br> [0x8000063a]:sd sp, 88(ra)<br>     |
|  13|[0x80005268]<br>0xFF76DF56FF76DF70|- rs1_val == 16<br>                                                                   |[0x80000658]:c.beqz a0, 248<br> [0x8000065a]:addi sp, sp, 2<br> [0x8000065e]:jal zero, 6<br> [0x80000664]:sd sp, 96(ra)<br>   |
|  14|[0x80005270]<br>0xFF76DF56FF76DF72|- rs1_val == 32<br>                                                                   |[0x8000067a]:c.beqz a0, 5<br> [0x8000067c]:addi sp, sp, 2<br> [0x80000680]:jal zero, 6<br> [0x80000686]:sd sp, 104(ra)<br>    |
|  15|[0x80005278]<br>0xFF76DF56FF76DF74|- rs1_val == 64<br>                                                                   |[0x8000069c]:c.beqz a0, 5<br> [0x8000069e]:addi sp, sp, 2<br> [0x800006a2]:jal zero, 6<br> [0x800006a8]:sd sp, 112(ra)<br>    |
|  16|[0x80005280]<br>0xFF76DF56FF76DF76|- rs1_val == 128<br>                                                                  |[0x800006f8]:c.beqz a0, 223<br> [0x800006fa]:addi sp, sp, 2<br> [0x800006fe]:jal zero, 6<br> [0x80000704]:sd sp, 120(ra)<br>  |
|  17|[0x80005288]<br>0xFF76DF56FF76DF78|- rs1_val == 256<br>                                                                  |[0x8000071a]:c.beqz a0, 7<br> [0x8000071c]:addi sp, sp, 2<br> [0x80000720]:jal zero, 10<br> [0x8000072a]:sd sp, 128(ra)<br>   |
|  18|[0x80005290]<br>0xFF76DF56FF76DF7A|- rs1_val == 512<br>                                                                  |[0x80000740]:c.beqz a0, 6<br> [0x80000742]:addi sp, sp, 2<br> [0x80000746]:jal zero, 8<br> [0x8000074e]:sd sp, 136(ra)<br>    |
|  19|[0x80005298]<br>0xFF76DF56FF76DF7C|- rs1_val == 1024<br>                                                                 |[0x80000764]:c.beqz a0, 8<br> [0x80000766]:addi sp, sp, 2<br> [0x8000076a]:jal zero, 12<br> [0x80000776]:sd sp, 144(ra)<br>   |
|  20|[0x800052a0]<br>0xFF76DF56FF76DF7E|- rs1_val == 2048<br>                                                                 |[0x80000790]:c.beqz a0, 252<br> [0x80000792]:addi sp, sp, 2<br> [0x80000796]:jal zero, 6<br> [0x8000079c]:sd sp, 152(ra)<br>  |
|  21|[0x800052a8]<br>0xFF76DF56FF76DF80|- rs1_val == 4096<br>                                                                 |[0x800007b2]:c.beqz a0, 5<br> [0x800007b4]:addi sp, sp, 2<br> [0x800007b8]:jal zero, 6<br> [0x800007be]:sd sp, 160(ra)<br>    |
|  22|[0x800052b0]<br>0xFF76DF56FF76DF82|- rs1_val == 8192<br>                                                                 |[0x800007de]:c.beqz a0, 247<br> [0x800007e0]:addi sp, sp, 2<br> [0x800007e4]:jal zero, 6<br> [0x800007ea]:sd sp, 168(ra)<br>  |
|  23|[0x800052b8]<br>0xFF76DF56FF76DF84|- rs1_val == 16384<br>                                                                |[0x80000804]:c.beqz a0, 250<br> [0x80000806]:addi sp, sp, 2<br> [0x8000080a]:jal zero, 6<br> [0x80000810]:sd sp, 176(ra)<br>  |
|  24|[0x800052c0]<br>0xFF76DF56FF76DF86|- rs1_val == 32768<br>                                                                |[0x80000826]:c.beqz a0, 252<br> [0x80000828]:addi sp, sp, 2<br> [0x8000082c]:jal zero, 6<br> [0x80000832]:sd sp, 184(ra)<br>  |
|  25|[0x800052c8]<br>0xFF76DF56FF76DF88|- rs1_val == 65536<br>                                                                |[0x80000848]:c.beqz a0, 8<br> [0x8000084a]:addi sp, sp, 2<br> [0x8000084e]:jal zero, 12<br> [0x8000085a]:sd sp, 192(ra)<br>   |
|  26|[0x800052d0]<br>0xFF76DF56FF76DF8A|- rs1_val == 131072<br>                                                               |[0x80000870]:c.beqz a0, 64<br> [0x80000872]:addi sp, sp, 2<br> [0x80000876]:jal zero, 124<br> [0x800008f2]:sd sp, 200(ra)<br> |
|  27|[0x800052d8]<br>0xFF76DF56FF76DF8C|- rs1_val == 262144<br>                                                               |[0x80000908]:c.beqz a0, 85<br> [0x8000090a]:addi sp, sp, 2<br> [0x8000090e]:jal zero, 166<br> [0x800009b4]:sd sp, 208(ra)<br> |
|  28|[0x800052e0]<br>0xFF76DF56FF76DF8E|- rs1_val == 524288<br>                                                               |[0x800009cc]:c.beqz a0, 251<br> [0x800009ce]:addi sp, sp, 2<br> [0x800009d2]:jal zero, 6<br> [0x800009d8]:sd sp, 216(ra)<br>  |
|  29|[0x800052e8]<br>0xFF76DF56FF76DF90|- rs1_val == 1048576<br>                                                              |[0x800009f2]:c.beqz a0, 250<br> [0x800009f4]:addi sp, sp, 2<br> [0x800009f8]:jal zero, 6<br> [0x800009fe]:sd sp, 224(ra)<br>  |
|  30|[0x800052f0]<br>0xFF76DF56FF76DF92|- rs1_val == 2097152<br>                                                              |[0x80000a14]:c.beqz a0, 252<br> [0x80000a16]:addi sp, sp, 2<br> [0x80000a1a]:jal zero, 6<br> [0x80000a20]:sd sp, 232(ra)<br>  |
|  31|[0x800052f8]<br>0xFF76DF56FF76DF94|- rs1_val == 4194304<br>                                                              |[0x80000a38]:c.beqz a0, 251<br> [0x80000a3a]:addi sp, sp, 2<br> [0x80000a3e]:jal zero, 6<br> [0x80000a44]:sd sp, 240(ra)<br>  |
|  32|[0x80005300]<br>0xFF76DF56FF76DF96|- rs1_val == 8388608<br>                                                              |[0x80000a5a]:c.beqz a0, 85<br> [0x80000a5c]:addi sp, sp, 2<br> [0x80000a60]:jal zero, 166<br> [0x80000b06]:sd sp, 248(ra)<br> |
|  33|[0x80005308]<br>0xFF76DF56FF76DF98|- rs1_val == 16777216<br>                                                             |[0x80000b1c]:c.beqz a0, 252<br> [0x80000b1e]:addi sp, sp, 2<br> [0x80000b22]:jal zero, 6<br> [0x80000b28]:sd sp, 256(ra)<br>  |
|  34|[0x80005310]<br>0xFF76DF56FF76DF9A|- rs1_val == 33554432<br>                                                             |[0x80000b3e]:c.beqz a0, 64<br> [0x80000b40]:addi sp, sp, 2<br> [0x80000b44]:jal zero, 124<br> [0x80000bc0]:sd sp, 264(ra)<br> |
|  35|[0x80005318]<br>0xFF76DF56FF76DF9C|- rs1_val == 67108864<br>                                                             |[0x80000bd6]:c.beqz a0, 63<br> [0x80000bd8]:addi sp, sp, 2<br> [0x80000bdc]:jal zero, 122<br> [0x80000c56]:sd sp, 272(ra)<br> |
|  36|[0x80005320]<br>0xFF76DF56FF76DF9E|- rs1_val == 134217728<br>                                                            |[0x80000c6e]:c.beqz a0, 251<br> [0x80000c70]:addi sp, sp, 2<br> [0x80000c74]:jal zero, 6<br> [0x80000c7a]:sd sp, 280(ra)<br>  |
|  37|[0x80005328]<br>0xFF76DF56FF76DFA0|- rs1_val == 268435456<br>                                                            |[0x80000c90]:c.beqz a0, 8<br> [0x80000c92]:addi sp, sp, 2<br> [0x80000c96]:jal zero, 12<br> [0x80000ca2]:sd sp, 288(ra)<br>   |
|  38|[0x80005330]<br>0xFF76DF56FF76DFA2|- rs1_val == 536870912<br>                                                            |[0x80000cb8]:c.beqz a0, 8<br> [0x80000cba]:addi sp, sp, 2<br> [0x80000cbe]:jal zero, 12<br> [0x80000cca]:sd sp, 296(ra)<br>   |
|  39|[0x80005338]<br>0xFF76DF56FF76DFA4|- rs1_val == 1073741824<br>                                                           |[0x80000ce0]:c.beqz a0, 5<br> [0x80000ce2]:addi sp, sp, 2<br> [0x80000ce6]:jal zero, 6<br> [0x80000cec]:sd sp, 304(ra)<br>    |
|  40|[0x80005340]<br>0xFF76DF56FF76DFA6|- rs1_val == 2147483648<br>                                                           |[0x80000d08]:c.beqz a0, 251<br> [0x80000d0a]:addi sp, sp, 2<br> [0x80000d0e]:jal zero, 6<br> [0x80000d14]:sd sp, 312(ra)<br>  |
|  41|[0x80005348]<br>0xFF76DF56FF76DFA8|- rs1_val == 4294967296<br>                                                           |[0x80000d38]:c.beqz a0, 247<br> [0x80000d3a]:addi sp, sp, 2<br> [0x80000d3e]:jal zero, 6<br> [0x80000d44]:sd sp, 320(ra)<br>  |
|  42|[0x80005350]<br>0xFF76DF56FF76DFAA|- rs1_val == 8589934592<br>                                                           |[0x80000dd6]:c.beqz a0, 192<br> [0x80000dd8]:addi sp, sp, 2<br> [0x80000ddc]:jal zero, 6<br> [0x80000de2]:sd sp, 328(ra)<br>  |
|  43|[0x80005358]<br>0xFF76DF56FF76DFAC|- rs1_val == 17179869184<br>                                                          |[0x80000ea0]:c.beqz a0, 170<br> [0x80000ea2]:addi sp, sp, 2<br> [0x80000ea6]:jal zero, 6<br> [0x80000eac]:sd sp, 336(ra)<br>  |
|  44|[0x80005360]<br>0xFF76DF56FF76DFAE|- rs1_val == 34359738368<br>                                                          |[0x80000ec6]:c.beqz a0, 32<br> [0x80000ec8]:addi sp, sp, 2<br> [0x80000ecc]:jal zero, 60<br> [0x80000f08]:sd sp, 344(ra)<br>  |
|  45|[0x80005368]<br>0xFF76DF56FF76DFB0|- rs1_val == 137438953472<br>                                                         |[0x80000f22]:c.beqz a0, 32<br> [0x80000f24]:addi sp, sp, 2<br> [0x80000f28]:jal zero, 60<br> [0x80000f64]:sd sp, 352(ra)<br>  |
|  46|[0x80005370]<br>0xFF76DF56FF76DFB2|- rs1_val == 274877906944<br>                                                         |[0x80000f98]:c.beqz a0, 239<br> [0x80000f9a]:addi sp, sp, 2<br> [0x80000f9e]:jal zero, 6<br> [0x80000fa4]:sd sp, 360(ra)<br>  |
|  47|[0x80005378]<br>0xFF76DF56FF76DFB4|- rs1_val == 549755813888<br>                                                         |[0x80000ff8]:c.beqz a0, 223<br> [0x80000ffa]:addi sp, sp, 2<br> [0x80000ffe]:jal zero, 6<br> [0x80001004]:sd sp, 368(ra)<br>  |
|  48|[0x80005380]<br>0xFF76DF56FF76DFB6|- rs1_val == 1099511627776<br>                                                        |[0x8000101e]:c.beqz a0, 63<br> [0x80001020]:addi sp, sp, 2<br> [0x80001024]:jal zero, 122<br> [0x8000109e]:sd sp, 376(ra)<br> |
|  49|[0x80005388]<br>0xFF76DF56FF76DFB8|- rs1_val == 2199023255552<br>                                                        |[0x800010b8]:c.beqz a0, 5<br> [0x800010ba]:addi sp, sp, 2<br> [0x800010be]:jal zero, 6<br> [0x800010c4]:sd sp, 384(ra)<br>    |
|  50|[0x80005390]<br>0xFF76DF56FF76DFBA|- rs1_val == 4398046511104<br>                                                        |[0x800010e2]:c.beqz a0, 250<br> [0x800010e4]:addi sp, sp, 2<br> [0x800010e8]:jal zero, 6<br> [0x800010ee]:sd sp, 392(ra)<br>  |
|  51|[0x80005398]<br>0xFF76DF56FF76DFBC|- rs1_val == 8796093022208<br>                                                        |[0x80001108]:c.beqz a0, 252<br> [0x8000110a]:addi sp, sp, 2<br> [0x8000110e]:jal zero, 6<br> [0x80001114]:sd sp, 400(ra)<br>  |
|  52|[0x800053a0]<br>0xFF76DF56FF76DFBE|- rs1_val == 17592186044416<br>                                                       |[0x8000112e]:c.beqz a0, 5<br> [0x80001130]:addi sp, sp, 2<br> [0x80001134]:jal zero, 6<br> [0x8000113a]:sd sp, 408(ra)<br>    |
|  53|[0x800053a8]<br>0xFF76DF56FF76DFC0|- rs1_val == 35184372088832<br>                                                       |[0x80001154]:c.beqz a0, 16<br> [0x80001156]:addi sp, sp, 2<br> [0x8000115a]:jal zero, 28<br> [0x80001176]:sd sp, 416(ra)<br>  |
|  54|[0x800053b0]<br>0xFF76DF56FF76DFC2|- rs1_val == 70368744177664<br>                                                       |[0x80001190]:c.beqz a0, 5<br> [0x80001192]:addi sp, sp, 2<br> [0x80001196]:jal zero, 6<br> [0x8000119c]:sd sp, 424(ra)<br>    |
|  55|[0x800053b8]<br>0xFF76DF56FF76DFC4|- rs1_val == 140737488355328<br>                                                      |[0x800011b6]:c.beqz a0, 252<br> [0x800011b8]:addi sp, sp, 2<br> [0x800011bc]:jal zero, 6<br> [0x800011c2]:sd sp, 432(ra)<br>  |
|  56|[0x800053c0]<br>0xFF76DF56FF76DFC6|- rs1_val == 281474976710656<br>                                                      |[0x800011de]:c.beqz a0, 251<br> [0x800011e0]:addi sp, sp, 2<br> [0x800011e4]:jal zero, 6<br> [0x800011ea]:sd sp, 440(ra)<br>  |
|  57|[0x800053c8]<br>0xFF76DF56FF76DFC8|- rs1_val == 562949953421312<br>                                                      |[0x8000127c]:c.beqz a0, 192<br> [0x8000127e]:addi sp, sp, 2<br> [0x80001282]:jal zero, 6<br> [0x80001288]:sd sp, 448(ra)<br>  |
|  58|[0x800053d0]<br>0xFF76DF56FF76DFCA|- rs1_val == 1125899906842624<br>                                                     |[0x800012a2]:c.beqz a0, 64<br> [0x800012a4]:addi sp, sp, 2<br> [0x800012a8]:jal zero, 124<br> [0x80001324]:sd sp, 456(ra)<br> |
|  59|[0x800053d8]<br>0xFF76DF56FF76DFCC|- rs1_val == 2251799813685248<br>                                                     |[0x8000133e]:c.beqz a0, 5<br> [0x80001340]:addi sp, sp, 2<br> [0x80001344]:jal zero, 6<br> [0x8000134a]:sd sp, 464(ra)<br>    |
|  60|[0x800053e0]<br>0xFF76DF56FF76DFCE|- rs1_val == 4503599627370496<br>                                                     |[0x80001364]:c.beqz a0, 6<br> [0x80001366]:addi sp, sp, 2<br> [0x8000136a]:jal zero, 8<br> [0x80001372]:sd sp, 472(ra)<br>    |
|  61|[0x800053e8]<br>0xFF76DF56FF76DFD0|- rs1_val == 9007199254740992<br>                                                     |[0x80001390]:c.beqz a0, 250<br> [0x80001392]:addi sp, sp, 2<br> [0x80001396]:jal zero, 6<br> [0x8000139c]:sd sp, 480(ra)<br>  |
|  62|[0x800053f0]<br>0xFF76DF56FF76DFD2|- rs1_val == 18014398509481984<br>                                                    |[0x800013b6]:c.beqz a0, 8<br> [0x800013b8]:addi sp, sp, 2<br> [0x800013bc]:jal zero, 12<br> [0x800013c8]:sd sp, 488(ra)<br>   |
|  63|[0x800053f8]<br>0xFF76DF56FF76DFD4|- rs1_val == 36028797018963968<br>                                                    |[0x800013e2]:c.beqz a0, 252<br> [0x800013e4]:addi sp, sp, 2<br> [0x800013e8]:jal zero, 6<br> [0x800013ee]:sd sp, 496(ra)<br>  |
|  64|[0x80005400]<br>0xFF76DF56FF76DFD6|- rs1_val == 72057594037927936<br>                                                    |[0x80001408]:c.beqz a0, 63<br> [0x8000140a]:addi sp, sp, 2<br> [0x8000140e]:jal zero, 122<br> [0x80001488]:sd sp, 504(ra)<br> |
|  65|[0x80005408]<br>0xFF76DF56FF76DFD8|- rs1_val == 144115188075855872<br>                                                   |[0x800014a6]:c.beqz a0, 250<br> [0x800014a8]:addi sp, sp, 2<br> [0x800014ac]:jal zero, 6<br> [0x800014b2]:sd sp, 512(ra)<br>  |
|  66|[0x80005410]<br>0xFF76DF56FF76DFDA|- rs1_val == 288230376151711744<br>                                                   |[0x800014cc]:c.beqz a0, 16<br> [0x800014ce]:addi sp, sp, 2<br> [0x800014d2]:jal zero, 28<br> [0x800014ee]:sd sp, 520(ra)<br>  |
|  67|[0x80005418]<br>0xFF76DF56FF76DFDC|- rs1_val == 576460752303423488<br>                                                   |[0x8000150a]:c.beqz a0, 251<br> [0x8000150c]:addi sp, sp, 2<br> [0x80001510]:jal zero, 6<br> [0x80001516]:sd sp, 528(ra)<br>  |
|  68|[0x80005420]<br>0xFF76DF56FF76DFDE|- rs1_val == 1152921504606846976<br>                                                  |[0x80001538]:c.beqz a0, 248<br> [0x8000153a]:addi sp, sp, 2<br> [0x8000153e]:jal zero, 6<br> [0x80001544]:sd sp, 536(ra)<br>  |
|  69|[0x80005428]<br>0xFF76DF56FF76DFE0|- rs1_val == 2305843009213693952<br>                                                  |[0x8000155e]:c.beqz a0, 8<br> [0x80001560]:addi sp, sp, 2<br> [0x80001564]:jal zero, 12<br> [0x80001570]:sd sp, 544(ra)<br>   |
|  70|[0x80005430]<br>0xFF76DF56FF76DFE2|- rs1_val == 4611686018427387904<br>                                                  |[0x80001604]:c.beqz a0, 191<br> [0x80001606]:addi sp, sp, 2<br> [0x8000160a]:jal zero, 6<br> [0x80001610]:sd sp, 552(ra)<br>  |
|  71|[0x80005438]<br>0xFF76DF56FF76DFE4|- rs1_val == -2<br>                                                                   |[0x8000162a]:c.beqz a0, 250<br> [0x8000162c]:addi sp, sp, 2<br> [0x80001630]:jal zero, 6<br> [0x80001636]:sd sp, 560(ra)<br>  |
|  72|[0x80005440]<br>0xFF76DF56FF76DFE6|- rs1_val == -36028797018963969<br>                                                   |[0x80001654]:c.beqz a0, 5<br> [0x80001656]:addi sp, sp, 2<br> [0x8000165a]:jal zero, 6<br> [0x80001660]:sd sp, 568(ra)<br>    |
|  73|[0x80005448]<br>0xFF76DF56FF76DFE8|- rs1_val == -72057594037927937<br>                                                   |[0x8000167e]:c.beqz a0, 6<br> [0x80001680]:addi sp, sp, 2<br> [0x80001684]:jal zero, 8<br> [0x8000168c]:sd sp, 576(ra)<br>    |
|  74|[0x80005450]<br>0xFF76DF56FF76DFEA|- rs1_val == -144115188075855873<br>                                                  |[0x800016aa]:c.beqz a0, 85<br> [0x800016ac]:addi sp, sp, 2<br> [0x800016b0]:jal zero, 166<br> [0x80001756]:sd sp, 584(ra)<br> |
|  75|[0x80005458]<br>0xFF76DF56FF76DFEC|- rs1_val == -288230376151711745<br>                                                  |[0x8000177c]:c.beqz a0, 248<br> [0x8000177e]:addi sp, sp, 2<br> [0x80001782]:jal zero, 6<br> [0x80001788]:sd sp, 592(ra)<br>  |
|  76|[0x80005460]<br>0xFF76DF56FF76DFEE|- rs1_val == -576460752303423489<br>                                                  |[0x80001820]:c.beqz a0, 191<br> [0x80001822]:addi sp, sp, 2<br> [0x80001826]:jal zero, 6<br> [0x8000182c]:sd sp, 600(ra)<br>  |
|  77|[0x80005468]<br>0xFF76DF56FF76DFF0|- rs1_val == -1152921504606846977<br>                                                 |[0x8000184a]:c.beqz a0, 5<br> [0x8000184c]:addi sp, sp, 2<br> [0x80001850]:jal zero, 6<br> [0x80001856]:sd sp, 608(ra)<br>    |
|  78|[0x80005470]<br>0xFF76DF56FF76DFF2|- rs1_val == -2305843009213693953<br>                                                 |[0x80001874]:c.beqz a0, 6<br> [0x80001876]:addi sp, sp, 2<br> [0x8000187a]:jal zero, 8<br> [0x80001882]:sd sp, 616(ra)<br>    |
|  79|[0x80005478]<br>0xFF76DF56FF76DFF4|- rs1_val == -4611686018427387905<br>                                                 |[0x8000191a]:c.beqz a0, 191<br> [0x8000191c]:addi sp, sp, 2<br> [0x80001920]:jal zero, 6<br> [0x80001926]:sd sp, 624(ra)<br>  |
|  80|[0x80005480]<br>0xFF76DF56FF76DFF6|- rs1_val == 6148914691236517205<br>                                                  |[0x80001964]:c.beqz a0, 246<br> [0x80001966]:addi sp, sp, 2<br> [0x8000196a]:jal zero, 6<br> [0x80001970]:sd sp, 632(ra)<br>  |
|  81|[0x80005488]<br>0xFF76DF56FF76DFF8|- rs1_val == -6148914691236517206<br>                                                 |[0x800019a2]:c.beqz a0, 252<br> [0x800019a4]:addi sp, sp, 2<br> [0x800019a8]:jal zero, 6<br> [0x800019ae]:sd sp, 640(ra)<br>  |
|  82|[0x80005490]<br>0xFF76DF56FF76DFFA|- rs1_val == -3<br>                                                                   |[0x800019cc]:c.beqz a0, 248<br> [0x800019ce]:addi sp, sp, 2<br> [0x800019d2]:jal zero, 6<br> [0x800019d8]:sd sp, 648(ra)<br>  |
|  83|[0x80005498]<br>0xFF76DF56FF76DFFC|- rs1_val == -5<br>                                                                   |[0x800019ee]:c.beqz a0, 6<br> [0x800019f0]:addi sp, sp, 2<br> [0x800019f4]:jal zero, 8<br> [0x800019fc]:sd sp, 656(ra)<br>    |
|  84|[0x800054a0]<br>0xFF76DF56FF76DFFE|- rs1_val == -9<br>                                                                   |[0x80001a12]:c.beqz a0, 6<br> [0x80001a14]:addi sp, sp, 2<br> [0x80001a18]:jal zero, 8<br> [0x80001a20]:sd sp, 664(ra)<br>    |
|  85|[0x800054a8]<br>0xFF76DF56FF76E000|- rs1_val == -17<br>                                                                  |[0x80001a3e]:c.beqz a0, 248<br> [0x80001a40]:addi sp, sp, 2<br> [0x80001a44]:jal zero, 6<br> [0x80001a4a]:sd sp, 672(ra)<br>  |
|  86|[0x800054b0]<br>0xFF76DF56FF76E002|- rs1_val == -33<br>                                                                  |[0x80001a60]:c.beqz a0, 5<br> [0x80001a62]:addi sp, sp, 2<br> [0x80001a66]:jal zero, 6<br> [0x80001a6c]:sd sp, 680(ra)<br>    |
|  87|[0x800054b8]<br>0xFF76DF56FF76E004|- rs1_val == -65<br>                                                                  |[0x80001a82]:c.beqz a0, 252<br> [0x80001a84]:addi sp, sp, 2<br> [0x80001a88]:jal zero, 6<br> [0x80001a8e]:sd sp, 688(ra)<br>  |
|  88|[0x800054c0]<br>0xFF76DF56FF76E006|- rs1_val == -129<br>                                                                 |[0x80001aa4]:c.beqz a0, 6<br> [0x80001aa6]:addi sp, sp, 2<br> [0x80001aaa]:jal zero, 8<br> [0x80001ab2]:sd sp, 696(ra)<br>    |
|  89|[0x800054c8]<br>0xFF76DF56FF76E008|- rs1_val == -257<br>                                                                 |[0x80001b6c]:c.beqz a0, 170<br> [0x80001b6e]:addi sp, sp, 2<br> [0x80001b72]:jal zero, 6<br> [0x80001b78]:sd sp, 704(ra)<br>  |
|  90|[0x800054d0]<br>0xFF76DF56FF76E00A|- rs1_val == -513<br>                                                                 |[0x80001b8e]:c.beqz a0, 64<br> [0x80001b90]:addi sp, sp, 2<br> [0x80001b94]:jal zero, 124<br> [0x80001c10]:sd sp, 712(ra)<br> |
|  91|[0x800054d8]<br>0xFF76DF56FF76E00C|- rs1_val == -1025<br>                                                                |[0x80001c32]:c.beqz a0, 246<br> [0x80001c34]:addi sp, sp, 2<br> [0x80001c38]:jal zero, 6<br> [0x80001c3e]:sd sp, 720(ra)<br>  |
|  92|[0x800054e0]<br>0xFF76DF56FF76E00E|- rs1_val == -2049<br>                                                                |[0x80001c58]:c.beqz a0, 63<br> [0x80001c5a]:addi sp, sp, 2<br> [0x80001c5e]:jal zero, 122<br> [0x80001cd8]:sd sp, 728(ra)<br> |
|  93|[0x800054e8]<br>0xFF76DF56FF76E010|- rs1_val == -4097<br>                                                                |[0x80001cf2]:c.beqz a0, 64<br> [0x80001cf4]:addi sp, sp, 2<br> [0x80001cf8]:jal zero, 124<br> [0x80001d74]:sd sp, 736(ra)<br> |
|  94|[0x800054f0]<br>0xFF76DF56FF76E012|- rs1_val == -8193<br>                                                                |[0x80001d94]:c.beqz a0, 249<br> [0x80001d96]:addi sp, sp, 2<br> [0x80001d9a]:jal zero, 6<br> [0x80001da0]:sd sp, 744(ra)<br>  |
|  95|[0x800054f8]<br>0xFF76DF56FF76E014|- rs1_val == -16385<br>                                                               |[0x80001dba]:c.beqz a0, 7<br> [0x80001dbc]:addi sp, sp, 2<br> [0x80001dc0]:jal zero, 10<br> [0x80001dca]:sd sp, 752(ra)<br>   |
|  96|[0x80005500]<br>0xFF76DF56FF76E016|- rs1_val == -32769<br>                                                               |[0x80001de4]:c.beqz a0, 8<br> [0x80001de6]:addi sp, sp, 2<br> [0x80001dea]:jal zero, 12<br> [0x80001df6]:sd sp, 760(ra)<br>   |
|  97|[0x80005508]<br>0xFF76DF56FF76E018|- rs1_val == -65537<br>                                                               |[0x80001e1a]:c.beqz a0, 247<br> [0x80001e1c]:addi sp, sp, 2<br> [0x80001e20]:jal zero, 6<br> [0x80001e26]:sd sp, 768(ra)<br>  |
|  98|[0x80005510]<br>0xFF76DF56FF76E01A|- rs1_val == -131073<br>                                                              |[0x80001e40]:c.beqz a0, 64<br> [0x80001e42]:addi sp, sp, 2<br> [0x80001e46]:jal zero, 124<br> [0x80001ec2]:sd sp, 776(ra)<br> |
|  99|[0x80005518]<br>0xFF76DF56FF76E01C|- rs1_val == -262145<br>                                                              |[0x80001ee2]:c.beqz a0, 249<br> [0x80001ee4]:addi sp, sp, 2<br> [0x80001ee8]:jal zero, 6<br> [0x80001eee]:sd sp, 784(ra)<br>  |
| 100|[0x80005520]<br>0xFF76DF56FF76E01E|- rs1_val == -524289<br>                                                              |[0x80001f08]:c.beqz a0, 252<br> [0x80001f0a]:addi sp, sp, 2<br> [0x80001f0e]:jal zero, 6<br> [0x80001f14]:sd sp, 792(ra)<br>  |
| 101|[0x80005528]<br>0xFF76DF56FF76E020|- rs1_val == -1048577<br>                                                             |[0x80001f30]:c.beqz a0, 251<br> [0x80001f32]:addi sp, sp, 2<br> [0x80001f36]:jal zero, 6<br> [0x80001f3c]:sd sp, 800(ra)<br>  |
| 102|[0x80005530]<br>0xFF76DF56FF76E022|- rs1_val == -2097153<br>                                                             |[0x80001f56]:c.beqz a0, 32<br> [0x80001f58]:addi sp, sp, 2<br> [0x80001f5c]:jal zero, 60<br> [0x80001f98]:sd sp, 808(ra)<br>  |
| 103|[0x80005538]<br>0xFF76DF56FF76E024|- rs1_val == -4194305<br>                                                             |[0x80002056]:c.beqz a0, 170<br> [0x80002058]:addi sp, sp, 2<br> [0x8000205c]:jal zero, 6<br> [0x80002062]:sd sp, 816(ra)<br>  |
| 104|[0x80005540]<br>0xFF76DF56FF76E026|- rs1_val == -8388609<br>                                                             |[0x8000207c]:c.beqz a0, 5<br> [0x8000207e]:addi sp, sp, 2<br> [0x80002082]:jal zero, 6<br> [0x80002088]:sd sp, 824(ra)<br>    |
| 105|[0x80005548]<br>0xFF76DF56FF76E028|- rs1_val == -16777217<br>                                                            |[0x800020dc]:c.beqz a0, 223<br> [0x800020de]:addi sp, sp, 2<br> [0x800020e2]:jal zero, 6<br> [0x800020e8]:sd sp, 832(ra)<br>  |
| 106|[0x80005550]<br>0xFF76DF56FF76E02A|- rs1_val == -33554433<br>                                                            |[0x80002102]:c.beqz a0, 6<br> [0x80002104]:addi sp, sp, 2<br> [0x80002108]:jal zero, 8<br> [0x80002110]:sd sp, 840(ra)<br>    |
| 107|[0x80005558]<br>0xFF76DF56FF76E02C|- rs1_val == -67108865<br>                                                            |[0x8000212a]:c.beqz a0, 63<br> [0x8000212c]:addi sp, sp, 2<br> [0x80002130]:jal zero, 122<br> [0x800021aa]:sd sp, 848(ra)<br> |
| 108|[0x80005560]<br>0xFF76DF56FF76E02E|- rs1_val == -134217729<br>                                                           |[0x800021ce]:c.beqz a0, 247<br> [0x800021d0]:addi sp, sp, 2<br> [0x800021d4]:jal zero, 6<br> [0x800021da]:sd sp, 856(ra)<br>  |
| 109|[0x80005568]<br>0xFF76DF56FF76E030|- rs1_val == -268435457<br>                                                           |[0x80002298]:c.beqz a0, 170<br> [0x8000229a]:addi sp, sp, 2<br> [0x8000229e]:jal zero, 6<br> [0x800022a4]:sd sp, 864(ra)<br>  |
| 110|[0x80005570]<br>0xFF76DF56FF76E032|- rs1_val == -1073741825<br>                                                          |[0x80002336]:c.beqz a0, 192<br> [0x80002338]:addi sp, sp, 2<br> [0x8000233c]:jal zero, 6<br> [0x80002342]:sd sp, 872(ra)<br>  |
| 111|[0x80005578]<br>0xFF76DF56FF76E034|- rs1_val == -2147483649<br>                                                          |[0x8000236a]:c.beqz a0, 247<br> [0x8000236c]:addi sp, sp, 2<br> [0x80002370]:jal zero, 6<br> [0x80002376]:sd sp, 880(ra)<br>  |
| 112|[0x80005580]<br>0xFF76DF56FF76E036|- rs1_val == -4294967297<br>                                                          |[0x800023ce]:c.beqz a0, 223<br> [0x800023d0]:addi sp, sp, 2<br> [0x800023d4]:jal zero, 6<br> [0x800023da]:sd sp, 888(ra)<br>  |
| 113|[0x80005588]<br>0xFF76DF56FF76E038|- rs1_val == -8589934593<br>                                                          |[0x8000249c]:c.beqz a0, 170<br> [0x8000249e]:addi sp, sp, 2<br> [0x800024a2]:jal zero, 6<br> [0x800024a8]:sd sp, 896(ra)<br>  |
| 114|[0x80005590]<br>0xFF76DF56FF76E03A|- rs1_val == -17179869185<br>                                                         |[0x800024c8]:c.beqz a0, 251<br> [0x800024ca]:addi sp, sp, 2<br> [0x800024ce]:jal zero, 6<br> [0x800024d4]:sd sp, 904(ra)<br>  |
| 115|[0x80005598]<br>0xFF76DF56FF76E03C|- rs1_val == -34359738369<br>                                                         |[0x800024f2]:c.beqz a0, 252<br> [0x800024f4]:addi sp, sp, 2<br> [0x800024f8]:jal zero, 6<br> [0x800024fe]:sd sp, 912(ra)<br>  |
| 116|[0x800055a0]<br>0xFF76DF56FF76E03E|- rs1_val == -68719476737<br>                                                         |[0x8000251c]:c.beqz a0, 5<br> [0x8000251e]:addi sp, sp, 2<br> [0x80002522]:jal zero, 6<br> [0x80002528]:sd sp, 920(ra)<br>    |
| 117|[0x800055a8]<br>0xFF76DF56FF76E040|- rs1_val == -137438953473<br>                                                        |[0x80002546]:c.beqz a0, 63<br> [0x80002548]:addi sp, sp, 2<br> [0x8000254c]:jal zero, 122<br> [0x800025c6]:sd sp, 928(ra)<br> |
| 118|[0x800055b0]<br>0xFF76DF56FF76E042|- rs1_val == -274877906945<br>                                                        |[0x8000265c]:c.beqz a0, 192<br> [0x8000265e]:addi sp, sp, 2<br> [0x80002662]:jal zero, 6<br> [0x80002668]:sd sp, 936(ra)<br>  |
| 119|[0x800055b8]<br>0xFF76DF56FF76E044|- rs1_val == -549755813889<br>                                                        |[0x8000268e]:c.beqz a0, 248<br> [0x80002690]:addi sp, sp, 2<br> [0x80002694]:jal zero, 6<br> [0x8000269a]:sd sp, 944(ra)<br>  |
| 120|[0x800055c0]<br>0xFF76DF56FF76E046|- rs1_val == -1099511627777<br>                                                       |[0x800026b8]:c.beqz a0, 5<br> [0x800026ba]:addi sp, sp, 2<br> [0x800026be]:jal zero, 6<br> [0x800026c4]:sd sp, 952(ra)<br>    |
| 121|[0x800055c8]<br>0xFF76DF56FF76E048|- rs1_val == -2199023255553<br>                                                       |[0x800026e2]:c.beqz a0, 5<br> [0x800026e4]:addi sp, sp, 2<br> [0x800026e8]:jal zero, 6<br> [0x800026ee]:sd sp, 960(ra)<br>    |
| 122|[0x800055d0]<br>0xFF76DF56FF76E04A|- rs1_val == -4398046511105<br>                                                       |[0x8000270c]:c.beqz a0, 252<br> [0x8000270e]:addi sp, sp, 2<br> [0x80002712]:jal zero, 6<br> [0x80002718]:sd sp, 968(ra)<br>  |
| 123|[0x800055d8]<br>0xFF76DF56FF76E04C|- rs1_val == -8796093022209<br>                                                       |[0x80002736]:c.beqz a0, 5<br> [0x80002738]:addi sp, sp, 2<br> [0x8000273c]:jal zero, 6<br> [0x80002742]:sd sp, 976(ra)<br>    |
| 124|[0x800055e0]<br>0xFF76DF56FF76E04E|- rs1_val == -17592186044417<br>                                                      |[0x8000277a]:c.beqz a0, 239<br> [0x8000277c]:addi sp, sp, 2<br> [0x80002780]:jal zero, 6<br> [0x80002786]:sd sp, 984(ra)<br>  |
| 125|[0x800055e8]<br>0xFF76DF56FF76E050|- rs1_val == -35184372088833<br>                                                      |[0x8000281e]:c.beqz a0, 191<br> [0x80002820]:addi sp, sp, 2<br> [0x80002824]:jal zero, 6<br> [0x8000282a]:sd sp, 992(ra)<br>  |
| 126|[0x800055f0]<br>0xFF76DF56FF76E052|- rs1_val == -70368744177665<br>                                                      |[0x8000284c]:c.beqz a0, 250<br> [0x8000284e]:addi sp, sp, 2<br> [0x80002852]:jal zero, 6<br> [0x80002858]:sd sp, 1000(ra)<br> |
| 127|[0x800055f8]<br>0xFF76DF56FF76E054|- rs1_val == -140737488355329<br>                                                     |[0x80002876]:c.beqz a0, 252<br> [0x80002878]:addi sp, sp, 2<br> [0x8000287c]:jal zero, 6<br> [0x80002882]:sd sp, 1008(ra)<br> |
| 128|[0x80005600]<br>0xFF76DF56FF76E056|- rs1_val == -281474976710657<br>                                                     |[0x800028a0]:c.beqz a0, 9<br> [0x800028a2]:addi sp, sp, 2<br> [0x800028a6]:jal zero, 14<br> [0x800028b4]:sd sp, 1016(ra)<br>  |
| 129|[0x80005608]<br>0xFF76DF56FF76E058|- rs1_val == -562949953421313<br>                                                     |[0x800028d2]:c.beqz a0, 5<br> [0x800028d4]:addi sp, sp, 2<br> [0x800028d8]:jal zero, 6<br> [0x800028de]:sd sp, 1024(ra)<br>   |
| 130|[0x80005610]<br>0xFF76DF56FF76E05A|- rs1_val == -1125899906842625<br>                                                    |[0x800028fc]:c.beqz a0, 5<br> [0x800028fe]:addi sp, sp, 2<br> [0x80002902]:jal zero, 6<br> [0x80002908]:sd sp, 1032(ra)<br>   |
| 131|[0x80005618]<br>0xFF76DF56FF76E05C|- rs1_val == -2251799813685249<br>                                                    |[0x80002926]:c.beqz a0, 5<br> [0x80002928]:addi sp, sp, 2<br> [0x8000292c]:jal zero, 6<br> [0x80002932]:sd sp, 1040(ra)<br>   |
| 132|[0x80005620]<br>0xFF76DF56FF76E05E|- rs1_val == -4503599627370497<br>                                                    |[0x80002950]:c.beqz a0, 8<br> [0x80002952]:addi sp, sp, 2<br> [0x80002956]:jal zero, 12<br> [0x80002962]:sd sp, 1048(ra)<br>  |
| 133|[0x80005628]<br>0xFF76DF56FF76E060|- rs1_val == -9007199254740993<br>                                                    |[0x800029ba]:c.beqz a0, 223<br> [0x800029bc]:addi sp, sp, 2<br> [0x800029c0]:jal zero, 6<br> [0x800029c6]:sd sp, 1056(ra)<br> |
| 134|[0x80005630]<br>0xFF76DF56FF76E062|- rs1_val == -18014398509481985<br>                                                   |[0x80002a5e]:c.beqz a0, 191<br> [0x80002a60]:addi sp, sp, 2<br> [0x80002a64]:jal zero, 6<br> [0x80002a6a]:sd sp, 1064(ra)<br> |
