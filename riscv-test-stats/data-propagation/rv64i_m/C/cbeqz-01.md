
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80002d70')]      |
| SIG_REGION                | [('0x80005204', '0x80005638', '134 dwords')]      |
| COV_LABELS                | cbeqz      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cbeqz-01.S/cbeqz-01.S    |
| Total Number of coverpoints| 148     |
| Total Coverpoints Hit     | 148      |
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

|s.no|            signature             |                                        coverpoints                                        |                                                             code                                                              |
|---:|----------------------------------|-------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80005210]<br>0xFF76DF56FF76DF58|- opcode : c.beqz<br> - rs1 : x11<br> - rs1_val == 1<br> - rs1_val > 0 and imm_val > 0<br> |[0x800003aa]:c.beqz a1, 5<br> [0x800003ac]:addi sp, sp, 2<br> [0x800003b0]:jal zero, 6<br> [0x800003b6]:sd sp, 0(ra)<br>       |
|   2|[0x80005218]<br>0xFF76DF56FF76DF5A|- rs1 : x12<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -137438953473<br>           |[0x800003d4]:c.beqz a2, 64<br> [0x800003d6]:addi sp, sp, 2<br> [0x800003da]:jal zero, 124<br> [0x80000456]:sd sp, 8(ra)<br>    |
|   3|[0x80005220]<br>0xFF76DF56FF76DF5D|- rs1 : x8<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val > 0<br>                       |[0x8000046c]:c.beqz s0, 5<br> [0x80000476]:c.addi sp, 3<br> [0x80000478]:sd sp, 16(ra)<br>                                     |
|   4|[0x80005228]<br>0xFF76DF56FF76DF5F|- rs1 : x10<br> - rs1_val > 0 and imm_val < 0<br>                                          |[0x8000048e]:c.beqz a0, 252<br> [0x80000490]:addi sp, sp, 2<br> [0x80000494]:jal zero, 6<br> [0x8000049a]:sd sp, 24(ra)<br>    |
|   5|[0x80005230]<br>0xFF76DF56FF76DF61|- rs1 : x9<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -4398046511105<br>           |[0x800004b8]:c.beqz s1, 252<br> [0x800004ba]:addi sp, sp, 2<br> [0x800004be]:jal zero, 6<br> [0x800004c4]:sd sp, 32(ra)<br>    |
|   6|[0x80005238]<br>0xFF76DF56FF76DF62|- rs1 : x14<br> - rs1_val == 0 and imm_val < 0<br>                                         |[0x8000057e]:c.beqz a4, 170<br> [0x800004d2]:addi sp, sp, 1<br> [0x800004d6]:jal zero, 180<br> [0x8000058a]:sd sp, 40(ra)<br>  |
|   7|[0x80005240]<br>0xFF76DF56FF76DF64|- rs1 : x13<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br>      |[0x800005a4]:c.beqz a3, 252<br> [0x800005a6]:addi sp, sp, 2<br> [0x800005aa]:jal zero, 6<br> [0x800005b0]:sd sp, 48(ra)<br>    |
|   8|[0x80005248]<br>0xFF76DF56FF76DF66|- rs1 : x15<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>      |[0x800005ce]:c.beqz a5, 7<br> [0x800005d0]:addi sp, sp, 2<br> [0x800005d4]:jal zero, 10<br> [0x800005de]:sd sp, 56(ra)<br>     |
|   9|[0x80005250]<br>0xFF76DF56FF76DF68|- rs1_val == 2<br>                                                                         |[0x800005f4]:c.beqz a0, 64<br> [0x800005f6]:addi sp, sp, 2<br> [0x800005fa]:jal zero, 124<br> [0x80000676]:sd sp, 64(ra)<br>   |
|  10|[0x80005258]<br>0xFF76DF56FF76DF6A|- rs1_val == 4<br>                                                                         |[0x80000696]:c.beqz a0, 247<br> [0x80000698]:addi sp, sp, 2<br> [0x8000069c]:jal zero, 6<br> [0x800006a2]:sd sp, 72(ra)<br>    |
|  11|[0x80005260]<br>0xFF76DF56FF76DF6C|- rs1_val == 8<br>                                                                         |[0x800006b8]:c.beqz a0, 64<br> [0x800006ba]:addi sp, sp, 2<br> [0x800006be]:jal zero, 124<br> [0x8000073a]:sd sp, 80(ra)<br>   |
|  12|[0x80005268]<br>0xFF76DF56FF76DF6E|- rs1_val == 16<br>                                                                        |[0x800007ca]:c.beqz a0, 191<br> [0x800007cc]:addi sp, sp, 2<br> [0x800007d0]:jal zero, 6<br> [0x800007d6]:sd sp, 88(ra)<br>    |
|  13|[0x80005270]<br>0xFF76DF56FF76DF70|- rs1_val == 32<br>                                                                        |[0x800007ec]:c.beqz a0, 8<br> [0x800007ee]:addi sp, sp, 2<br> [0x800007f2]:jal zero, 12<br> [0x800007fe]:sd sp, 96(ra)<br>     |
|  14|[0x80005278]<br>0xFF76DF56FF76DF72|- rs1_val == 64<br>                                                                        |[0x8000088e]:c.beqz a0, 191<br> [0x80000890]:addi sp, sp, 2<br> [0x80000894]:jal zero, 6<br> [0x8000089a]:sd sp, 104(ra)<br>   |
|  15|[0x80005280]<br>0xFF76DF56FF76DF74|- rs1_val == 128<br>                                                                       |[0x800008ea]:c.beqz a0, 223<br> [0x800008ec]:addi sp, sp, 2<br> [0x800008f0]:jal zero, 6<br> [0x800008f6]:sd sp, 112(ra)<br>   |
|  16|[0x80005288]<br>0xFF76DF56FF76DF76|- rs1_val == 256<br>                                                                       |[0x8000090c]:c.beqz a0, 5<br> [0x8000090e]:addi sp, sp, 2<br> [0x80000912]:jal zero, 6<br> [0x80000918]:sd sp, 120(ra)<br>     |
|  17|[0x80005290]<br>0xFF76DF56FF76DF78|- rs1_val == 512<br>                                                                       |[0x8000092e]:c.beqz a0, 32<br> [0x80000930]:addi sp, sp, 2<br> [0x80000934]:jal zero, 60<br> [0x80000970]:sd sp, 128(ra)<br>   |
|  18|[0x80005298]<br>0xFF76DF56FF76DF7A|- rs1_val == 1024<br>                                                                      |[0x80000986]:c.beqz a0, 252<br> [0x80000988]:addi sp, sp, 2<br> [0x8000098c]:jal zero, 6<br> [0x80000992]:sd sp, 136(ra)<br>   |
|  19|[0x800052a0]<br>0xFF76DF56FF76DF7C|- rs1_val == 2048<br>                                                                      |[0x800009ac]:c.beqz a0, 9<br> [0x800009ae]:addi sp, sp, 2<br> [0x800009b2]:jal zero, 14<br> [0x800009c0]:sd sp, 144(ra)<br>    |
|  20|[0x800052a8]<br>0xFF76DF56FF76DF7E|- rs1_val == 4096<br>                                                                      |[0x800009d6]:c.beqz a0, 5<br> [0x800009d8]:addi sp, sp, 2<br> [0x800009dc]:jal zero, 6<br> [0x800009e2]:sd sp, 152(ra)<br>     |
|  21|[0x800052b0]<br>0xFF76DF56FF76DF80|- rs1_val == 8192<br>                                                                      |[0x80000a72]:c.beqz a0, 191<br> [0x80000a74]:addi sp, sp, 2<br> [0x80000a78]:jal zero, 6<br> [0x80000a7e]:sd sp, 160(ra)<br>   |
|  22|[0x800052b8]<br>0xFF76DF56FF76DF82|- rs1_val == 16384<br>                                                                     |[0x80000a94]:c.beqz a0, 64<br> [0x80000a96]:addi sp, sp, 2<br> [0x80000a9a]:jal zero, 124<br> [0x80000b16]:sd sp, 168(ra)<br>  |
|  23|[0x800052c0]<br>0xFF76DF56FF76DF84|- rs1_val == 32768<br>                                                                     |[0x80000b2c]:c.beqz a0, 63<br> [0x80000b2e]:addi sp, sp, 2<br> [0x80000b32]:jal zero, 122<br> [0x80000bac]:sd sp, 176(ra)<br>  |
|  24|[0x800052c8]<br>0xFF76DF56FF76DF86|- rs1_val == 65536<br>                                                                     |[0x80000c3a]:c.beqz a0, 192<br> [0x80000c3c]:addi sp, sp, 2<br> [0x80000c40]:jal zero, 6<br> [0x80000c46]:sd sp, 184(ra)<br>   |
|  25|[0x800052d0]<br>0xFF76DF56FF76DF88|- rs1_val == 131072<br>                                                                    |[0x80000c5c]:c.beqz a0, 5<br> [0x80000c5e]:addi sp, sp, 2<br> [0x80000c62]:jal zero, 6<br> [0x80000c68]:sd sp, 192(ra)<br>     |
|  26|[0x800052d8]<br>0xFF76DF56FF76DF8A|- rs1_val == 262144<br>                                                                    |[0x80000c7e]:c.beqz a0, 5<br> [0x80000c80]:addi sp, sp, 2<br> [0x80000c84]:jal zero, 6<br> [0x80000c8a]:sd sp, 200(ra)<br>     |
|  27|[0x800052e0]<br>0xFF76DF56FF76DF8C|- rs1_val == 524288<br>                                                                    |[0x80000ca4]:c.beqz a0, 250<br> [0x80000ca6]:addi sp, sp, 2<br> [0x80000caa]:jal zero, 6<br> [0x80000cb0]:sd sp, 208(ra)<br>   |
|  28|[0x800052e8]<br>0xFF76DF56FF76DF8E|- rs1_val == 1048576<br>                                                                   |[0x80000cc6]:c.beqz a0, 7<br> [0x80000cc8]:addi sp, sp, 2<br> [0x80000ccc]:jal zero, 10<br> [0x80000cd6]:sd sp, 216(ra)<br>    |
|  29|[0x800052f0]<br>0xFF76DF56FF76DF90|- rs1_val == 2097152<br>                                                                   |[0x80000d26]:c.beqz a0, 223<br> [0x80000d28]:addi sp, sp, 2<br> [0x80000d2c]:jal zero, 6<br> [0x80000d32]:sd sp, 224(ra)<br>   |
|  30|[0x800052f8]<br>0xFF76DF56FF76DF92|- rs1_val == 4194304<br>                                                                   |[0x80000d48]:c.beqz a0, 9<br> [0x80000d4a]:addi sp, sp, 2<br> [0x80000d4e]:jal zero, 14<br> [0x80000d5c]:sd sp, 232(ra)<br>    |
|  31|[0x80005300]<br>0xFF76DF56FF76DF94|- rs1_val == 8388608<br>                                                                   |[0x80000d72]:c.beqz a0, 7<br> [0x80000d74]:addi sp, sp, 2<br> [0x80000d78]:jal zero, 10<br> [0x80000d82]:sd sp, 240(ra)<br>    |
|  32|[0x80005308]<br>0xFF76DF56FF76DF96|- rs1_val == 16777216<br>                                                                  |[0x80000d98]:c.beqz a0, 5<br> [0x80000d9a]:addi sp, sp, 2<br> [0x80000d9e]:jal zero, 6<br> [0x80000da4]:sd sp, 248(ra)<br>     |
|  33|[0x80005310]<br>0xFF76DF56FF76DF98|- rs1_val == 33554432<br>                                                                  |[0x80000dba]:c.beqz a0, 252<br> [0x80000dbc]:addi sp, sp, 2<br> [0x80000dc0]:jal zero, 6<br> [0x80000dc6]:sd sp, 256(ra)<br>   |
|  34|[0x80005318]<br>0xFF76DF56FF76DF9A|- rs1_val == 67108864<br>                                                                  |[0x80000e16]:c.beqz a0, 223<br> [0x80000e18]:addi sp, sp, 2<br> [0x80000e1c]:jal zero, 6<br> [0x80000e22]:sd sp, 264(ra)<br>   |
|  35|[0x80005320]<br>0xFF76DF56FF76DF9C|- rs1_val == 134217728<br>                                                                 |[0x80000edc]:c.beqz a0, 170<br> [0x80000ede]:addi sp, sp, 2<br> [0x80000ee2]:jal zero, 6<br> [0x80000ee8]:sd sp, 272(ra)<br>   |
|  36|[0x80005328]<br>0xFF76DF56FF76DF9E|- rs1_val == 268435456<br>                                                                 |[0x80000f02]:c.beqz a0, 250<br> [0x80000f04]:addi sp, sp, 2<br> [0x80000f08]:jal zero, 6<br> [0x80000f0e]:sd sp, 280(ra)<br>   |
|  37|[0x80005330]<br>0xFF76DF56FF76DFA0|- rs1_val == 536870912<br>                                                                 |[0x80000f24]:c.beqz a0, 252<br> [0x80000f26]:addi sp, sp, 2<br> [0x80000f2a]:jal zero, 6<br> [0x80000f30]:sd sp, 288(ra)<br>   |
|  38|[0x80005338]<br>0xFF76DF56FF76DFA2|- rs1_val == 1073741824<br>                                                                |[0x80000fbe]:c.beqz a0, 192<br> [0x80000fc0]:addi sp, sp, 2<br> [0x80000fc4]:jal zero, 6<br> [0x80000fca]:sd sp, 296(ra)<br>   |
|  39|[0x80005340]<br>0xFF76DF56FF76DFA4|- rs1_val == 2147483648<br>                                                                |[0x80000fe4]:c.beqz a0, 16<br> [0x80000fe6]:addi sp, sp, 2<br> [0x80000fea]:jal zero, 28<br> [0x80001006]:sd sp, 304(ra)<br>   |
|  40|[0x80005348]<br>0xFF76DF56FF76DFA6|- rs1_val == 4294967296<br>                                                                |[0x80001020]:c.beqz a0, 252<br> [0x80001022]:addi sp, sp, 2<br> [0x80001026]:jal zero, 6<br> [0x8000102c]:sd sp, 312(ra)<br>   |
|  41|[0x80005350]<br>0xFF76DF56FF76DFA8|- rs1_val == 8589934592<br>                                                                |[0x8000104e]:c.beqz a0, 248<br> [0x80001050]:addi sp, sp, 2<br> [0x80001054]:jal zero, 6<br> [0x8000105a]:sd sp, 320(ra)<br>   |
|  42|[0x80005358]<br>0xFF76DF56FF76DFAA|- rs1_val == 17179869184<br>                                                               |[0x80001074]:c.beqz a0, 252<br> [0x80001076]:addi sp, sp, 2<br> [0x8000107a]:jal zero, 6<br> [0x80001080]:sd sp, 328(ra)<br>   |
|  43|[0x80005360]<br>0xFF76DF56FF76DFAC|- rs1_val == 34359738368<br>                                                               |[0x8000109a]:c.beqz a0, 7<br> [0x8000109c]:addi sp, sp, 2<br> [0x800010a0]:jal zero, 10<br> [0x800010aa]:sd sp, 336(ra)<br>    |
|  44|[0x80005368]<br>0xFF76DF56FF76DFAE|- rs1_val == 68719476736<br>                                                               |[0x800010c4]:c.beqz a0, 6<br> [0x800010c6]:addi sp, sp, 2<br> [0x800010ca]:jal zero, 8<br> [0x800010d2]:sd sp, 344(ra)<br>     |
|  45|[0x80005370]<br>0xFF76DF56FF76DFB0|- rs1_val == 137438953472<br>                                                              |[0x800010f6]:c.beqz a0, 247<br> [0x800010f8]:addi sp, sp, 2<br> [0x800010fc]:jal zero, 6<br> [0x80001102]:sd sp, 352(ra)<br>   |
|  46|[0x80005378]<br>0xFF76DF56FF76DFB2|- rs1_val == 274877906944<br>                                                              |[0x800011c0]:c.beqz a0, 170<br> [0x800011c2]:addi sp, sp, 2<br> [0x800011c6]:jal zero, 6<br> [0x800011cc]:sd sp, 360(ra)<br>   |
|  47|[0x80005380]<br>0xFF76DF56FF76DFB4|- rs1_val == 549755813888<br>                                                              |[0x800011ec]:c.beqz a0, 249<br> [0x800011ee]:addi sp, sp, 2<br> [0x800011f2]:jal zero, 6<br> [0x800011f8]:sd sp, 368(ra)<br>   |
|  48|[0x80005388]<br>0xFF76DF56FF76DFB6|- rs1_val == 1099511627776<br>                                                             |[0x80001212]:c.beqz a0, 32<br> [0x80001214]:addi sp, sp, 2<br> [0x80001218]:jal zero, 60<br> [0x80001254]:sd sp, 376(ra)<br>   |
|  49|[0x80005390]<br>0xFF76DF56FF76DFB8|- rs1_val == 2199023255552<br>                                                             |[0x80001274]:c.beqz a0, 249<br> [0x80001276]:addi sp, sp, 2<br> [0x8000127a]:jal zero, 6<br> [0x80001280]:sd sp, 384(ra)<br>   |
|  50|[0x80005398]<br>0xFF76DF56FF76DFBA|- rs1_val == 4398046511104<br>                                                             |[0x8000129a]:c.beqz a0, 7<br> [0x8000129c]:addi sp, sp, 2<br> [0x800012a0]:jal zero, 10<br> [0x800012aa]:sd sp, 392(ra)<br>    |
|  51|[0x800053a0]<br>0xFF76DF56FF76DFBC|- rs1_val == 8796093022208<br>                                                             |[0x800012c4]:c.beqz a0, 7<br> [0x800012c6]:addi sp, sp, 2<br> [0x800012ca]:jal zero, 10<br> [0x800012d4]:sd sp, 400(ra)<br>    |
|  52|[0x800053a8]<br>0xFF76DF56FF76DFBE|- rs1_val == 17592186044416<br>                                                            |[0x800012ee]:c.beqz a0, 6<br> [0x800012f0]:addi sp, sp, 2<br> [0x800012f4]:jal zero, 8<br> [0x800012fc]:sd sp, 408(ra)<br>     |
|  53|[0x800053b0]<br>0xFF76DF56FF76DFC0|- rs1_val == 35184372088832<br>                                                            |[0x80001320]:c.beqz a0, 247<br> [0x80001322]:addi sp, sp, 2<br> [0x80001326]:jal zero, 6<br> [0x8000132c]:sd sp, 416(ra)<br>   |
|  54|[0x800053b8]<br>0xFF76DF56FF76DFC2|- rs1_val == 70368744177664<br>                                                            |[0x80001346]:c.beqz a0, 252<br> [0x80001348]:addi sp, sp, 2<br> [0x8000134c]:jal zero, 6<br> [0x80001352]:sd sp, 424(ra)<br>   |
|  55|[0x800053c0]<br>0xFF76DF56FF76DFC4|- rs1_val == 140737488355328<br>                                                           |[0x80001374]:c.beqz a0, 248<br> [0x80001376]:addi sp, sp, 2<br> [0x8000137a]:jal zero, 6<br> [0x80001380]:sd sp, 432(ra)<br>   |
|  56|[0x800053c8]<br>0xFF76DF56FF76DFC6|- rs1_val == 281474976710656<br>                                                           |[0x8000139a]:c.beqz a0, 7<br> [0x8000139c]:addi sp, sp, 2<br> [0x800013a0]:jal zero, 10<br> [0x800013aa]:sd sp, 440(ra)<br>    |
|  57|[0x800053d0]<br>0xFF76DF56FF76DFC8|- rs1_val == 562949953421312<br>                                                           |[0x800013c4]:c.beqz a0, 64<br> [0x800013c6]:addi sp, sp, 2<br> [0x800013ca]:jal zero, 124<br> [0x80001446]:sd sp, 448(ra)<br>  |
|  58|[0x800053d8]<br>0xFF76DF56FF76DFCA|- rs1_val == 1125899906842624<br>                                                          |[0x80001460]:c.beqz a0, 6<br> [0x80001462]:addi sp, sp, 2<br> [0x80001466]:jal zero, 8<br> [0x8000146e]:sd sp, 456(ra)<br>     |
|  59|[0x800053e0]<br>0xFF76DF56FF76DFCC|- rs1_val == 2251799813685248<br>                                                          |[0x800014a2]:c.beqz a0, 239<br> [0x800014a4]:addi sp, sp, 2<br> [0x800014a8]:jal zero, 6<br> [0x800014ae]:sd sp, 464(ra)<br>   |
|  60|[0x800053e8]<br>0xFF76DF56FF76DFCE|- rs1_val == 4503599627370496<br>                                                          |[0x800014d2]:c.beqz a0, 247<br> [0x800014d4]:addi sp, sp, 2<br> [0x800014d8]:jal zero, 6<br> [0x800014de]:sd sp, 472(ra)<br>   |
|  61|[0x800053f0]<br>0xFF76DF56FF76DFD0|- rs1_val == 9007199254740992<br>                                                          |[0x80001512]:c.beqz a0, 239<br> [0x80001514]:addi sp, sp, 2<br> [0x80001518]:jal zero, 6<br> [0x8000151e]:sd sp, 480(ra)<br>   |
|  62|[0x800053f8]<br>0xFF76DF56FF76DFD2|- rs1_val == 18014398509481984<br>                                                         |[0x80001538]:c.beqz a0, 5<br> [0x8000153a]:addi sp, sp, 2<br> [0x8000153e]:jal zero, 6<br> [0x80001544]:sd sp, 488(ra)<br>     |
|  63|[0x80005400]<br>0xFF76DF56FF76DFD4|- rs1_val == 36028797018963968<br>                                                         |[0x8000155e]:c.beqz a0, 85<br> [0x80001560]:addi sp, sp, 2<br> [0x80001564]:jal zero, 166<br> [0x8000160a]:sd sp, 496(ra)<br>  |
|  64|[0x80005408]<br>0xFF76DF56FF76DFD6|- rs1_val == 72057594037927936<br>                                                         |[0x80001630]:c.beqz a0, 246<br> [0x80001632]:addi sp, sp, 2<br> [0x80001636]:jal zero, 6<br> [0x8000163c]:sd sp, 504(ra)<br>   |
|  65|[0x80005410]<br>0xFF76DF56FF76DFD8|- rs1_val == 144115188075855872<br>                                                        |[0x80001656]:c.beqz a0, 252<br> [0x80001658]:addi sp, sp, 2<br> [0x8000165c]:jal zero, 6<br> [0x80001662]:sd sp, 512(ra)<br>   |
|  66|[0x80005418]<br>0xFF76DF56FF76DFDA|- rs1_val == 288230376151711744<br>                                                        |[0x8000167c]:c.beqz a0, 252<br> [0x8000167e]:addi sp, sp, 2<br> [0x80001682]:jal zero, 6<br> [0x80001688]:sd sp, 520(ra)<br>   |
|  67|[0x80005420]<br>0xFF76DF56FF76DFDC|- rs1_val == 576460752303423488<br>                                                        |[0x800016a2]:c.beqz a0, 9<br> [0x800016a4]:addi sp, sp, 2<br> [0x800016a8]:jal zero, 14<br> [0x800016b6]:sd sp, 528(ra)<br>    |
|  68|[0x80005428]<br>0xFF76DF56FF76DFDE|- rs1_val == 1152921504606846976<br>                                                       |[0x800016d0]:c.beqz a0, 64<br> [0x800016d2]:addi sp, sp, 2<br> [0x800016d6]:jal zero, 124<br> [0x80001752]:sd sp, 536(ra)<br>  |
|  69|[0x80005430]<br>0xFF76DF56FF76DFE0|- rs1_val == 2305843009213693952<br>                                                       |[0x800017e4]:c.beqz a0, 192<br> [0x800017e6]:addi sp, sp, 2<br> [0x800017ea]:jal zero, 6<br> [0x800017f0]:sd sp, 544(ra)<br>   |
|  70|[0x80005438]<br>0xFF76DF56FF76DFE2|- rs1_val == 4611686018427387904<br>                                                       |[0x8000180a]:c.beqz a0, 5<br> [0x8000180c]:addi sp, sp, 2<br> [0x80001810]:jal zero, 6<br> [0x80001816]:sd sp, 552(ra)<br>     |
|  71|[0x80005440]<br>0xFF76DF56FF76DFE4|- rs1_val == -36028797018963969<br>                                                        |[0x80001834]:c.beqz a0, 9<br> [0x80001836]:addi sp, sp, 2<br> [0x8000183a]:jal zero, 14<br> [0x80001848]:sd sp, 560(ra)<br>    |
|  72|[0x80005448]<br>0xFF76DF56FF76DFE6|- rs1_val == -72057594037927937<br>                                                        |[0x80001866]:c.beqz a0, 32<br> [0x80001868]:addi sp, sp, 2<br> [0x8000186c]:jal zero, 60<br> [0x800018a8]:sd sp, 568(ra)<br>   |
|  73|[0x80005450]<br>0xFF76DF56FF76DFE8|- rs1_val == -144115188075855873<br>                                                       |[0x800018c8]:c.beqz a0, 251<br> [0x800018ca]:addi sp, sp, 2<br> [0x800018ce]:jal zero, 6<br> [0x800018d4]:sd sp, 576(ra)<br>   |
|  74|[0x80005458]<br>0xFF76DF56FF76DFEA|- rs1_val == -288230376151711745<br>                                                       |[0x80001996]:c.beqz a0, 170<br> [0x80001998]:addi sp, sp, 2<br> [0x8000199c]:jal zero, 6<br> [0x800019a2]:sd sp, 584(ra)<br>   |
|  75|[0x80005460]<br>0xFF76DF56FF76DFEC|- rs1_val == -576460752303423489<br>                                                       |[0x80001a38]:c.beqz a0, 192<br> [0x80001a3a]:addi sp, sp, 2<br> [0x80001a3e]:jal zero, 6<br> [0x80001a44]:sd sp, 592(ra)<br>   |
|  76|[0x80005468]<br>0xFF76DF56FF76DFEE|- rs1_val == -1152921504606846977<br>                                                      |[0x80001ada]:c.beqz a0, 192<br> [0x80001adc]:addi sp, sp, 2<br> [0x80001ae0]:jal zero, 6<br> [0x80001ae6]:sd sp, 600(ra)<br>   |
|  77|[0x80005470]<br>0xFF76DF56FF76DFF0|- rs1_val == -2305843009213693953<br>                                                      |[0x80001b04]:c.beqz a0, 85<br> [0x80001b06]:addi sp, sp, 2<br> [0x80001b0a]:jal zero, 166<br> [0x80001bb0]:sd sp, 608(ra)<br>  |
|  78|[0x80005478]<br>0xFF76DF56FF76DFF2|- rs1_val == -4611686018427387905<br>                                                      |[0x80001bd0]:c.beqz a0, 251<br> [0x80001bd2]:addi sp, sp, 2<br> [0x80001bd6]:jal zero, 6<br> [0x80001bdc]:sd sp, 616(ra)<br>   |
|  79|[0x80005480]<br>0xFF76DF56FF76DFF4|- rs1_val == 6148914691236517205<br>                                                       |[0x80001c0e]:c.beqz a0, 252<br> [0x80001c10]:addi sp, sp, 2<br> [0x80001c14]:jal zero, 6<br> [0x80001c1a]:sd sp, 624(ra)<br>   |
|  80|[0x80005488]<br>0xFF76DF56FF76DFF6|- rs1_val == -6148914691236517206<br>                                                      |[0x80001c4c]:c.beqz a0, 5<br> [0x80001c4e]:addi sp, sp, 2<br> [0x80001c52]:jal zero, 6<br> [0x80001c58]:sd sp, 632(ra)<br>     |
|  81|[0x80005490]<br>0xFF76DF56FF76DFF8|- rs1_val == -2<br>                                                                        |[0x80001c6e]:c.beqz a0, 32<br> [0x80001c70]:addi sp, sp, 2<br> [0x80001c74]:jal zero, 60<br> [0x80001cb0]:sd sp, 640(ra)<br>   |
|  82|[0x80005498]<br>0xFF76DF56FF76DFFA|- rs1_val == -3<br>                                                                        |[0x80001cc6]:c.beqz a0, 85<br> [0x80001cc8]:addi sp, sp, 2<br> [0x80001ccc]:jal zero, 166<br> [0x80001d72]:sd sp, 648(ra)<br>  |
|  83|[0x800054a0]<br>0xFF76DF56FF76DFFC|- rs1_val == -5<br>                                                                        |[0x80001d88]:c.beqz a0, 64<br> [0x80001d8a]:addi sp, sp, 2<br> [0x80001d8e]:jal zero, 124<br> [0x80001e0a]:sd sp, 656(ra)<br>  |
|  84|[0x800054a8]<br>0xFF76DF56FF76DFFE|- rs1_val == -9<br>                                                                        |[0x80001e9a]:c.beqz a0, 191<br> [0x80001e9c]:addi sp, sp, 2<br> [0x80001ea0]:jal zero, 6<br> [0x80001ea6]:sd sp, 664(ra)<br>   |
|  85|[0x800054b0]<br>0xFF76DF56FF76E000|- rs1_val == -17<br>                                                                       |[0x80001ebc]:c.beqz a0, 63<br> [0x80001ebe]:addi sp, sp, 2<br> [0x80001ec2]:jal zero, 122<br> [0x80001f3c]:sd sp, 672(ra)<br>  |
|  86|[0x800054b8]<br>0xFF76DF56FF76E002|- rs1_val == -33<br>                                                                       |[0x80001f52]:c.beqz a0, 85<br> [0x80001f54]:addi sp, sp, 2<br> [0x80001f58]:jal zero, 166<br> [0x80001ffe]:sd sp, 680(ra)<br>  |
|  87|[0x800054c0]<br>0xFF76DF56FF76E004|- rs1_val == -65<br>                                                                       |[0x8000204e]:c.beqz a0, 223<br> [0x80002050]:addi sp, sp, 2<br> [0x80002054]:jal zero, 6<br> [0x8000205a]:sd sp, 688(ra)<br>   |
|  88|[0x800054c8]<br>0xFF76DF56FF76E006|- rs1_val == -129<br>                                                                      |[0x8000208a]:c.beqz a0, 239<br> [0x8000208c]:addi sp, sp, 2<br> [0x80002090]:jal zero, 6<br> [0x80002096]:sd sp, 696(ra)<br>   |
|  89|[0x800054d0]<br>0xFF76DF56FF76E008|- rs1_val == -257<br>                                                                      |[0x800020b2]:c.beqz a0, 249<br> [0x800020b4]:addi sp, sp, 2<br> [0x800020b8]:jal zero, 6<br> [0x800020be]:sd sp, 704(ra)<br>   |
|  90|[0x800054d8]<br>0xFF76DF56FF76E00A|- rs1_val == -513<br>                                                                      |[0x8000214c]:c.beqz a0, 192<br> [0x8000214e]:addi sp, sp, 2<br> [0x80002152]:jal zero, 6<br> [0x80002158]:sd sp, 712(ra)<br>   |
|  91|[0x800054e0]<br>0xFF76DF56FF76E00C|- rs1_val == -1025<br>                                                                     |[0x80002172]:c.beqz a0, 250<br> [0x80002174]:addi sp, sp, 2<br> [0x80002178]:jal zero, 6<br> [0x8000217e]:sd sp, 720(ra)<br>   |
|  92|[0x800054e8]<br>0xFF76DF56FF76E00E|- rs1_val == -2049<br>                                                                     |[0x80002198]:c.beqz a0, 32<br> [0x8000219a]:addi sp, sp, 2<br> [0x8000219e]:jal zero, 60<br> [0x800021da]:sd sp, 728(ra)<br>   |
|  93|[0x800054f0]<br>0xFF76DF56FF76E010|- rs1_val == -4097<br>                                                                     |[0x800021f4]:c.beqz a0, 5<br> [0x800021f6]:addi sp, sp, 2<br> [0x800021fa]:jal zero, 6<br> [0x80002200]:sd sp, 736(ra)<br>     |
|  94|[0x800054f8]<br>0xFF76DF56FF76E012|- rs1_val == -8193<br>                                                                     |[0x8000221a]:c.beqz a0, 252<br> [0x8000221c]:addi sp, sp, 2<br> [0x80002220]:jal zero, 6<br> [0x80002226]:sd sp, 744(ra)<br>   |
|  95|[0x80005500]<br>0xFF76DF56FF76E014|- rs1_val == -16385<br>                                                                    |[0x80002240]:c.beqz a0, 32<br> [0x80002242]:addi sp, sp, 2<br> [0x80002246]:jal zero, 60<br> [0x80002282]:sd sp, 752(ra)<br>   |
|  96|[0x80005508]<br>0xFF76DF56FF76E016|- rs1_val == -32769<br>                                                                    |[0x8000229c]:c.beqz a0, 64<br> [0x8000229e]:addi sp, sp, 2<br> [0x800022a2]:jal zero, 124<br> [0x8000231e]:sd sp, 760(ra)<br>  |
|  97|[0x80005510]<br>0xFF76DF56FF76E018|- rs1_val == -65537<br>                                                                    |[0x80002338]:c.beqz a0, 63<br> [0x8000233a]:addi sp, sp, 2<br> [0x8000233e]:jal zero, 122<br> [0x800023b8]:sd sp, 768(ra)<br>  |
|  98|[0x80005518]<br>0xFF76DF56FF76E01A|- rs1_val == -131073<br>                                                                   |[0x800023d6]:c.beqz a0, 250<br> [0x800023d8]:addi sp, sp, 2<br> [0x800023dc]:jal zero, 6<br> [0x800023e2]:sd sp, 776(ra)<br>   |
|  99|[0x80005520]<br>0xFF76DF56FF76E01C|- rs1_val == -262145<br>                                                                   |[0x80002406]:c.beqz a0, 247<br> [0x80002408]:addi sp, sp, 2<br> [0x8000240c]:jal zero, 6<br> [0x80002412]:sd sp, 784(ra)<br>   |
| 100|[0x80005528]<br>0xFF76DF56FF76E01E|- rs1_val == -524289<br>                                                                   |[0x8000242c]:c.beqz a0, 32<br> [0x8000242e]:addi sp, sp, 2<br> [0x80002432]:jal zero, 60<br> [0x8000246e]:sd sp, 792(ra)<br>   |
| 101|[0x80005530]<br>0xFF76DF56FF76E020|- rs1_val == -1048577<br>                                                                  |[0x80002488]:c.beqz a0, 252<br> [0x8000248a]:addi sp, sp, 2<br> [0x8000248e]:jal zero, 6<br> [0x80002494]:sd sp, 800(ra)<br>   |
| 102|[0x80005538]<br>0xFF76DF56FF76E022|- rs1_val == -2097153<br>                                                                  |[0x800024ae]:c.beqz a0, 9<br> [0x800024b0]:addi sp, sp, 2<br> [0x800024b4]:jal zero, 14<br> [0x800024c2]:sd sp, 808(ra)<br>    |
| 103|[0x80005540]<br>0xFF76DF56FF76E024|- rs1_val == -4194305<br>                                                                  |[0x800024dc]:c.beqz a0, 8<br> [0x800024de]:addi sp, sp, 2<br> [0x800024e2]:jal zero, 12<br> [0x800024ee]:sd sp, 816(ra)<br>    |
| 104|[0x80005548]<br>0xFF76DF56FF76E026|- rs1_val == -8388609<br>                                                                  |[0x80002542]:c.beqz a0, 223<br> [0x80002544]:addi sp, sp, 2<br> [0x80002548]:jal zero, 6<br> [0x8000254e]:sd sp, 824(ra)<br>   |
| 105|[0x80005550]<br>0xFF76DF56FF76E028|- rs1_val == -16777217<br>                                                                 |[0x80002568]:c.beqz a0, 5<br> [0x8000256a]:addi sp, sp, 2<br> [0x8000256e]:jal zero, 6<br> [0x80002574]:sd sp, 832(ra)<br>     |
| 106|[0x80005558]<br>0xFF76DF56FF76E02A|- rs1_val == -33554433<br>                                                                 |[0x80002632]:c.beqz a0, 170<br> [0x80002634]:addi sp, sp, 2<br> [0x80002638]:jal zero, 6<br> [0x8000263e]:sd sp, 840(ra)<br>   |
| 107|[0x80005560]<br>0xFF76DF56FF76E02C|- rs1_val == -67108865<br>                                                                 |[0x80002658]:c.beqz a0, 16<br> [0x8000265a]:addi sp, sp, 2<br> [0x8000265e]:jal zero, 28<br> [0x8000267a]:sd sp, 848(ra)<br>   |
| 108|[0x80005568]<br>0xFF76DF56FF76E02E|- rs1_val == -134217729<br>                                                                |[0x80002694]:c.beqz a0, 252<br> [0x80002696]:addi sp, sp, 2<br> [0x8000269a]:jal zero, 6<br> [0x800026a0]:sd sp, 856(ra)<br>   |
| 109|[0x80005570]<br>0xFF76DF56FF76E030|- rs1_val == -268435457<br>                                                                |[0x800026ba]:c.beqz a0, 6<br> [0x800026bc]:addi sp, sp, 2<br> [0x800026c0]:jal zero, 8<br> [0x800026c8]:sd sp, 864(ra)<br>     |
| 110|[0x80005578]<br>0xFF76DF56FF76E032|- rs1_val == -536870913<br>                                                                |[0x800026e2]:c.beqz a0, 5<br> [0x800026e4]:addi sp, sp, 2<br> [0x800026e8]:jal zero, 6<br> [0x800026ee]:sd sp, 872(ra)<br>     |
| 111|[0x80005580]<br>0xFF76DF56FF76E034|- rs1_val == -1073741825<br>                                                               |[0x80002708]:c.beqz a0, 5<br> [0x8000270a]:addi sp, sp, 2<br> [0x8000270e]:jal zero, 6<br> [0x80002714]:sd sp, 880(ra)<br>     |
| 112|[0x80005588]<br>0xFF76DF56FF76E036|- rs1_val == -2147483649<br>                                                               |[0x80002732]:c.beqz a0, 64<br> [0x80002734]:addi sp, sp, 2<br> [0x80002738]:jal zero, 124<br> [0x800027b4]:sd sp, 888(ra)<br>  |
| 113|[0x80005590]<br>0xFF76DF56FF76E038|- rs1_val == -4294967297<br>                                                               |[0x8000280c]:c.beqz a0, 223<br> [0x8000280e]:addi sp, sp, 2<br> [0x80002812]:jal zero, 6<br> [0x80002818]:sd sp, 896(ra)<br>   |
| 114|[0x80005598]<br>0xFF76DF56FF76E03A|- rs1_val == -8589934593<br>                                                               |[0x80002850]:c.beqz a0, 239<br> [0x80002852]:addi sp, sp, 2<br> [0x80002856]:jal zero, 6<br> [0x8000285c]:sd sp, 904(ra)<br>   |
| 115|[0x800055a0]<br>0xFF76DF56FF76E03C|- rs1_val == -17179869185<br>                                                              |[0x80002880]:c.beqz a0, 249<br> [0x80002882]:addi sp, sp, 2<br> [0x80002886]:jal zero, 6<br> [0x8000288c]:sd sp, 912(ra)<br>   |
| 116|[0x800055a8]<br>0xFF76DF56FF76E03E|- rs1_val == -34359738369<br>                                                              |[0x800028b0]:c.beqz a0, 249<br> [0x800028b2]:addi sp, sp, 2<br> [0x800028b6]:jal zero, 6<br> [0x800028bc]:sd sp, 920(ra)<br>   |
| 117|[0x800055b0]<br>0xFF76DF56FF76E040|- rs1_val == -68719476737<br>                                                              |[0x800028e2]:c.beqz a0, 248<br> [0x800028e4]:addi sp, sp, 2<br> [0x800028e8]:jal zero, 6<br> [0x800028ee]:sd sp, 928(ra)<br>   |
| 118|[0x800055b8]<br>0xFF76DF56FF76E042|- rs1_val == -274877906945<br>                                                             |[0x80002910]:c.beqz a0, 250<br> [0x80002912]:addi sp, sp, 2<br> [0x80002916]:jal zero, 6<br> [0x8000291c]:sd sp, 936(ra)<br>   |
| 119|[0x800055c0]<br>0xFF76DF56FF76E044|- rs1_val == -549755813889<br>                                                             |[0x800029b4]:c.beqz a0, 191<br> [0x800029b6]:addi sp, sp, 2<br> [0x800029ba]:jal zero, 6<br> [0x800029c0]:sd sp, 944(ra)<br>   |
| 120|[0x800055c8]<br>0xFF76DF56FF76E046|- rs1_val == -1099511627777<br>                                                            |[0x800029de]:c.beqz a0, 5<br> [0x800029e0]:addi sp, sp, 2<br> [0x800029e4]:jal zero, 6<br> [0x800029ea]:sd sp, 952(ra)<br>     |
| 121|[0x800055d0]<br>0xFF76DF56FF76E048|- rs1_val == -2199023255553<br>                                                            |[0x80002a08]:c.beqz a0, 5<br> [0x80002a0a]:addi sp, sp, 2<br> [0x80002a0e]:jal zero, 6<br> [0x80002a14]:sd sp, 960(ra)<br>     |
| 122|[0x800055d8]<br>0xFF76DF56FF76E04A|- rs1_val == -8796093022209<br>                                                            |[0x80002a32]:c.beqz a0, 5<br> [0x80002a34]:addi sp, sp, 2<br> [0x80002a38]:jal zero, 6<br> [0x80002a3e]:sd sp, 968(ra)<br>     |
| 123|[0x800055e0]<br>0xFF76DF56FF76E04C|- rs1_val == -17592186044417<br>                                                           |[0x80002a5c]:c.beqz a0, 32<br> [0x80002a5e]:addi sp, sp, 2<br> [0x80002a62]:jal zero, 60<br> [0x80002a9e]:sd sp, 976(ra)<br>   |
| 124|[0x800055e8]<br>0xFF76DF56FF76E04E|- rs1_val == -35184372088833<br>                                                           |[0x80002b36]:c.beqz a0, 191<br> [0x80002b38]:addi sp, sp, 2<br> [0x80002b3c]:jal zero, 6<br> [0x80002b42]:sd sp, 984(ra)<br>   |
| 125|[0x800055f0]<br>0xFF76DF56FF76E050|- rs1_val == -70368744177665<br>                                                           |[0x80002b60]:c.beqz a0, 7<br> [0x80002b62]:addi sp, sp, 2<br> [0x80002b66]:jal zero, 10<br> [0x80002b70]:sd sp, 992(ra)<br>    |
| 126|[0x800055f8]<br>0xFF76DF56FF76E052|- rs1_val == -140737488355329<br>                                                          |[0x80002b98]:c.beqz a0, 247<br> [0x80002b9a]:addi sp, sp, 2<br> [0x80002b9e]:jal zero, 6<br> [0x80002ba4]:sd sp, 1000(ra)<br>  |
| 127|[0x80005600]<br>0xFF76DF56FF76E054|- rs1_val == -281474976710657<br>                                                          |[0x80002bc2]:c.beqz a0, 252<br> [0x80002bc4]:addi sp, sp, 2<br> [0x80002bc8]:jal zero, 6<br> [0x80002bce]:sd sp, 1008(ra)<br>  |
| 128|[0x80005608]<br>0xFF76DF56FF76E056|- rs1_val == -562949953421313<br>                                                          |[0x80002bf6]:c.beqz a0, 247<br> [0x80002bf8]:addi sp, sp, 2<br> [0x80002bfc]:jal zero, 6<br> [0x80002c02]:sd sp, 1016(ra)<br>  |
| 129|[0x80005610]<br>0xFF76DF56FF76E058|- rs1_val == -1125899906842625<br>                                                         |[0x80002c20]:c.beqz a0, 6<br> [0x80002c22]:addi sp, sp, 2<br> [0x80002c26]:jal zero, 8<br> [0x80002c2e]:sd sp, 1024(ra)<br>    |
| 130|[0x80005618]<br>0xFF76DF56FF76E05A|- rs1_val == -2251799813685249<br>                                                         |[0x80002c4c]:c.beqz a0, 8<br> [0x80002c4e]:addi sp, sp, 2<br> [0x80002c52]:jal zero, 12<br> [0x80002c5e]:sd sp, 1032(ra)<br>   |
| 131|[0x80005620]<br>0xFF76DF56FF76E05C|- rs1_val == -4503599627370497<br>                                                         |[0x80002c7c]:c.beqz a0, 9<br> [0x80002c7e]:addi sp, sp, 2<br> [0x80002c82]:jal zero, 14<br> [0x80002c90]:sd sp, 1040(ra)<br>   |
| 132|[0x80005628]<br>0xFF76DF56FF76E05E|- rs1_val == -9007199254740993<br>                                                         |[0x80002cb6]:c.beqz a0, 248<br> [0x80002cb8]:addi sp, sp, 2<br> [0x80002cbc]:jal zero, 6<br> [0x80002cc2]:sd sp, 1048(ra)<br>  |
| 133|[0x80005630]<br>0xFF76DF56FF76E060|- rs1_val == -18014398509481985<br>                                                        |[0x80002ce0]:c.beqz a0, 64<br> [0x80002ce2]:addi sp, sp, 2<br> [0x80002ce6]:jal zero, 124<br> [0x80002d62]:sd sp, 1056(ra)<br> |
