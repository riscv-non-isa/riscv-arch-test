
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800029c0')]      |
| SIG_REGION                | [('0x80005204', '0x80005630', '133 dwords')]      |
| COV_LABELS                | cbeqz      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cbeqz-01.S/cbeqz-01.S    |
| Total Number of coverpoints| 148     |
| Total Signature Updates   | 132      |
| Total Coverpoints Covered | 148      |
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

|s.no|            signature             |                                        coverpoints                                        |                                                             code                                                             |
|---:|----------------------------------|-------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80005210]<br>0xFF76DF56FF76DF58|- opcode : c.beqz<br> - rs1 : x14<br> - rs1_val == 1<br> - rs1_val > 0 and imm_val > 0<br> |[0x800003aa]:c.beqz a4, 16<br> [0x800003ac]:addi sp, sp, 2<br> [0x800003b0]:jal zero, 28<br> [0x800003cc]:sd sp, 0(ra)<br>    |
|   2|[0x80005218]<br>0xFF76DF56FF76DF5A|- rs1 : x15<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -68719476737<br>            |[0x800003ea]:c.beqz a5, 63<br> [0x800003ec]:addi sp, sp, 2<br> [0x800003f0]:jal zero, 122<br> [0x8000046a]:sd sp, 8(ra)<br>   |
|   3|[0x80005220]<br>0xFF76DF56FF76DF5D|- rs1 : x9<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val > 0<br>                       |[0x80000480]:c.beqz s1, 6<br> [0x8000048c]:c.addi sp, 3<br> [0x8000048e]:sd sp, 16(ra)<br>                                    |
|   4|[0x80005228]<br>0xFF76DF56FF76DF5F|- rs1 : x10<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 1048576<br>                 |[0x800004a8]:c.beqz a0, 250<br> [0x800004aa]:addi sp, sp, 2<br> [0x800004ae]:jal zero, 6<br> [0x800004b4]:sd sp, 24(ra)<br>   |
|   5|[0x80005230]<br>0xFF76DF56FF76DF61|- rs1 : x11<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -5<br>                      |[0x800004ce]:c.beqz a1, 250<br> [0x800004d0]:addi sp, sp, 2<br> [0x800004d4]:jal zero, 6<br> [0x800004da]:sd sp, 32(ra)<br>   |
|   6|[0x80005238]<br>0xFF76DF56FF76DF62|- rs1 : x8<br> - rs1_val == 0 and imm_val < 0<br>                                          |[0x8000050a]:c.beqz s0, 239<br> [0x800004e8]:addi sp, sp, 1<br> [0x800004ec]:jal zero, 42<br> [0x80000516]:sd sp, 40(ra)<br>  |
|   7|[0x80005240]<br>0xFF76DF56FF76DF64|- rs1 : x12<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -9223372036854775808<br>      |[0x80000530]:c.beqz a2, 6<br> [0x80000532]:addi sp, sp, 2<br> [0x80000536]:jal zero, 8<br> [0x8000053e]:sd sp, 48(ra)<br>     |
|   8|[0x80005248]<br>0xFF76DF56FF76DF66|- rs1 : x13<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>      |[0x800005d6]:c.beqz a3, 191<br> [0x800005d8]:addi sp, sp, 2<br> [0x800005dc]:jal zero, 6<br> [0x800005e2]:sd sp, 56(ra)<br>   |
|   9|[0x80005250]<br>0xFF76DF56FF76DF68|- rs1_val == 2<br>                                                                         |[0x80000632]:c.beqz a0, 223<br> [0x80000634]:addi sp, sp, 2<br> [0x80000638]:jal zero, 6<br> [0x8000063e]:sd sp, 64(ra)<br>   |
|  10|[0x80005258]<br>0xFF76DF56FF76DF6A|- rs1_val == 4<br>                                                                         |[0x80000654]:c.beqz a0, 32<br> [0x80000656]:addi sp, sp, 2<br> [0x8000065a]:jal zero, 60<br> [0x80000696]:sd sp, 72(ra)<br>   |
|  11|[0x80005260]<br>0xFF76DF56FF76DF6C|- rs1_val == 8<br>                                                                         |[0x800006ac]:c.beqz a0, 8<br> [0x800006ae]:addi sp, sp, 2<br> [0x800006b2]:jal zero, 12<br> [0x800006be]:sd sp, 80(ra)<br>    |
|  12|[0x80005268]<br>0xFF76DF56FF76DF6E|- rs1_val == 16<br>                                                                        |[0x800006d4]:c.beqz a0, 6<br> [0x800006d6]:addi sp, sp, 2<br> [0x800006da]:jal zero, 8<br> [0x800006e2]:sd sp, 88(ra)<br>     |
|  13|[0x80005270]<br>0xFF76DF56FF76DF70|- rs1_val == 32<br>                                                                        |[0x800006f8]:c.beqz a0, 16<br> [0x800006fa]:addi sp, sp, 2<br> [0x800006fe]:jal zero, 28<br> [0x8000071a]:sd sp, 96(ra)<br>   |
|  14|[0x80005278]<br>0xFF76DF56FF76DF72|- rs1_val == 64<br>                                                                        |[0x80000730]:c.beqz a0, 5<br> [0x80000732]:addi sp, sp, 2<br> [0x80000736]:jal zero, 6<br> [0x8000073c]:sd sp, 104(ra)<br>    |
|  15|[0x80005280]<br>0xFF76DF56FF76DF74|- rs1_val == 128<br>                                                                       |[0x80000752]:c.beqz a0, 6<br> [0x80000754]:addi sp, sp, 2<br> [0x80000758]:jal zero, 8<br> [0x80000760]:sd sp, 112(ra)<br>    |
|  16|[0x80005288]<br>0xFF76DF56FF76DF76|- rs1_val == 256<br>                                                                       |[0x80000776]:c.beqz a0, 5<br> [0x80000778]:addi sp, sp, 2<br> [0x8000077c]:jal zero, 6<br> [0x80000782]:sd sp, 120(ra)<br>    |
|  17|[0x80005290]<br>0xFF76DF56FF76DF78|- rs1_val == 512<br>                                                                       |[0x80000798]:c.beqz a0, 63<br> [0x8000079a]:addi sp, sp, 2<br> [0x8000079e]:jal zero, 122<br> [0x80000818]:sd sp, 128(ra)<br> |
|  18|[0x80005298]<br>0xFF76DF56FF76DF7A|- rs1_val == 1024<br>                                                                      |[0x8000082e]:c.beqz a0, 5<br> [0x80000830]:addi sp, sp, 2<br> [0x80000834]:jal zero, 6<br> [0x8000083a]:sd sp, 136(ra)<br>    |
|  19|[0x800052a0]<br>0xFF76DF56FF76DF7C|- rs1_val == 2048<br>                                                                      |[0x80000854]:c.beqz a0, 85<br> [0x80000856]:addi sp, sp, 2<br> [0x8000085a]:jal zero, 166<br> [0x80000900]:sd sp, 144(ra)<br> |
|  20|[0x800052a8]<br>0xFF76DF56FF76DF7E|- rs1_val == 4096<br>                                                                      |[0x8000091c]:c.beqz a0, 249<br> [0x8000091e]:addi sp, sp, 2<br> [0x80000922]:jal zero, 6<br> [0x80000928]:sd sp, 152(ra)<br>  |
|  21|[0x800052b0]<br>0xFF76DF56FF76DF80|- rs1_val == 8192<br>                                                                      |[0x8000093e]:c.beqz a0, 8<br> [0x80000940]:addi sp, sp, 2<br> [0x80000944]:jal zero, 12<br> [0x80000950]:sd sp, 160(ra)<br>   |
|  22|[0x800052b8]<br>0xFF76DF56FF76DF82|- rs1_val == 16384<br>                                                                     |[0x80000a0a]:c.beqz a0, 170<br> [0x80000a0c]:addi sp, sp, 2<br> [0x80000a10]:jal zero, 6<br> [0x80000a16]:sd sp, 168(ra)<br>  |
|  23|[0x800052c0]<br>0xFF76DF56FF76DF84|- rs1_val == 32768<br>                                                                     |[0x80000a2c]:c.beqz a0, 252<br> [0x80000a2e]:addi sp, sp, 2<br> [0x80000a32]:jal zero, 6<br> [0x80000a38]:sd sp, 176(ra)<br>  |
|  24|[0x800052c8]<br>0xFF76DF56FF76DF86|- rs1_val == 65536<br>                                                                     |[0x80000ac8]:c.beqz a0, 191<br> [0x80000aca]:addi sp, sp, 2<br> [0x80000ace]:jal zero, 6<br> [0x80000ad4]:sd sp, 184(ra)<br>  |
|  25|[0x800052d0]<br>0xFF76DF56FF76DF88|- rs1_val == 131072<br>                                                                    |[0x80000aea]:c.beqz a0, 5<br> [0x80000aec]:addi sp, sp, 2<br> [0x80000af0]:jal zero, 6<br> [0x80000af6]:sd sp, 192(ra)<br>    |
|  26|[0x800052d8]<br>0xFF76DF56FF76DF8A|- rs1_val == 262144<br>                                                                    |[0x80000b0c]:c.beqz a0, 252<br> [0x80000b0e]:addi sp, sp, 2<br> [0x80000b12]:jal zero, 6<br> [0x80000b18]:sd sp, 200(ra)<br>  |
|  27|[0x800052e0]<br>0xFF76DF56FF76DF8C|- rs1_val == 524288<br>                                                                    |[0x80000b68]:c.beqz a0, 223<br> [0x80000b6a]:addi sp, sp, 2<br> [0x80000b6e]:jal zero, 6<br> [0x80000b74]:sd sp, 208(ra)<br>  |
|  28|[0x800052e8]<br>0xFF76DF56FF76DF8E|- rs1_val == 2097152<br>                                                                   |[0x80000b8a]:c.beqz a0, 5<br> [0x80000b8c]:addi sp, sp, 2<br> [0x80000b90]:jal zero, 6<br> [0x80000b96]:sd sp, 216(ra)<br>    |
|  29|[0x800052f0]<br>0xFF76DF56FF76DF90|- rs1_val == 4194304<br>                                                                   |[0x80000bac]:c.beqz a0, 5<br> [0x80000bae]:addi sp, sp, 2<br> [0x80000bb2]:jal zero, 6<br> [0x80000bb8]:sd sp, 224(ra)<br>    |
|  30|[0x800052f8]<br>0xFF76DF56FF76DF92|- rs1_val == 8388608<br>                                                                   |[0x80000bd8]:c.beqz a0, 247<br> [0x80000bda]:addi sp, sp, 2<br> [0x80000bde]:jal zero, 6<br> [0x80000be4]:sd sp, 232(ra)<br>  |
|  31|[0x80005300]<br>0xFF76DF56FF76DF94|- rs1_val == 16777216<br>                                                                  |[0x80000bfa]:c.beqz a0, 9<br> [0x80000bfc]:addi sp, sp, 2<br> [0x80000c00]:jal zero, 14<br> [0x80000c0e]:sd sp, 240(ra)<br>   |
|  32|[0x80005308]<br>0xFF76DF56FF76DF96|- rs1_val == 33554432<br>                                                                  |[0x80000c2a]:c.beqz a0, 249<br> [0x80000c2c]:addi sp, sp, 2<br> [0x80000c30]:jal zero, 6<br> [0x80000c36]:sd sp, 248(ra)<br>  |
|  33|[0x80005310]<br>0xFF76DF56FF76DF98|- rs1_val == 67108864<br>                                                                  |[0x80000c50]:c.beqz a0, 250<br> [0x80000c52]:addi sp, sp, 2<br> [0x80000c56]:jal zero, 6<br> [0x80000c5c]:sd sp, 256(ra)<br>  |
|  34|[0x80005318]<br>0xFF76DF56FF76DF9A|- rs1_val == 134217728<br>                                                                 |[0x80000c72]:c.beqz a0, 9<br> [0x80000c74]:addi sp, sp, 2<br> [0x80000c78]:jal zero, 14<br> [0x80000c86]:sd sp, 264(ra)<br>   |
|  35|[0x80005320]<br>0xFF76DF56FF76DF9C|- rs1_val == 268435456<br>                                                                 |[0x80000ca2]:c.beqz a0, 249<br> [0x80000ca4]:addi sp, sp, 2<br> [0x80000ca8]:jal zero, 6<br> [0x80000cae]:sd sp, 272(ra)<br>  |
|  36|[0x80005328]<br>0xFF76DF56FF76DF9E|- rs1_val == 536870912<br>                                                                 |[0x80000cc4]:c.beqz a0, 252<br> [0x80000cc6]:addi sp, sp, 2<br> [0x80000cca]:jal zero, 6<br> [0x80000cd0]:sd sp, 280(ra)<br>  |
|  37|[0x80005330]<br>0xFF76DF56FF76DFA0|- rs1_val == 1073741824<br>                                                                |[0x80000ce6]:c.beqz a0, 252<br> [0x80000ce8]:addi sp, sp, 2<br> [0x80000cec]:jal zero, 6<br> [0x80000cf2]:sd sp, 288(ra)<br>  |
|  38|[0x80005338]<br>0xFF76DF56FF76DFA2|- rs1_val == 2147483648<br>                                                                |[0x80000d0c]:c.beqz a0, 252<br> [0x80000d0e]:addi sp, sp, 2<br> [0x80000d12]:jal zero, 6<br> [0x80000d18]:sd sp, 296(ra)<br>  |
|  39|[0x80005340]<br>0xFF76DF56FF76DFA4|- rs1_val == 4294967296<br>                                                                |[0x80000d32]:c.beqz a0, 32<br> [0x80000d34]:addi sp, sp, 2<br> [0x80000d38]:jal zero, 60<br> [0x80000d74]:sd sp, 304(ra)<br>  |
|  40|[0x80005348]<br>0xFF76DF56FF76DFA6|- rs1_val == 8589934592<br>                                                                |[0x80000d8e]:c.beqz a0, 5<br> [0x80000d90]:addi sp, sp, 2<br> [0x80000d94]:jal zero, 6<br> [0x80000d9a]:sd sp, 312(ra)<br>    |
|  41|[0x80005350]<br>0xFF76DF56FF76DFA8|- rs1_val == 17179869184<br>                                                               |[0x80000db4]:c.beqz a0, 252<br> [0x80000db6]:addi sp, sp, 2<br> [0x80000dba]:jal zero, 6<br> [0x80000dc0]:sd sp, 320(ra)<br>  |
|  42|[0x80005358]<br>0xFF76DF56FF76DFAA|- rs1_val == 34359738368<br>                                                               |[0x80000dda]:c.beqz a0, 7<br> [0x80000ddc]:addi sp, sp, 2<br> [0x80000de0]:jal zero, 10<br> [0x80000dea]:sd sp, 328(ra)<br>   |
|  43|[0x80005360]<br>0xFF76DF56FF76DFAC|- rs1_val == 68719476736<br>                                                               |[0x80000e04]:c.beqz a0, 5<br> [0x80000e06]:addi sp, sp, 2<br> [0x80000e0a]:jal zero, 6<br> [0x80000e10]:sd sp, 336(ra)<br>    |
|  44|[0x80005368]<br>0xFF76DF56FF76DFAE|- rs1_val == 137438953472<br>                                                              |[0x80000e2a]:c.beqz a0, 5<br> [0x80000e2c]:addi sp, sp, 2<br> [0x80000e30]:jal zero, 6<br> [0x80000e36]:sd sp, 344(ra)<br>    |
|  45|[0x80005370]<br>0xFF76DF56FF76DFB0|- rs1_val == 274877906944<br>                                                              |[0x80000e50]:c.beqz a0, 32<br> [0x80000e52]:addi sp, sp, 2<br> [0x80000e56]:jal zero, 60<br> [0x80000e92]:sd sp, 352(ra)<br>  |
|  46|[0x80005378]<br>0xFF76DF56FF76DFB2|- rs1_val == 549755813888<br>                                                              |[0x80000eac]:c.beqz a0, 16<br> [0x80000eae]:addi sp, sp, 2<br> [0x80000eb2]:jal zero, 28<br> [0x80000ece]:sd sp, 360(ra)<br>  |
|  47|[0x80005380]<br>0xFF76DF56FF76DFB4|- rs1_val == 1099511627776<br>                                                             |[0x80000ee8]:c.beqz a0, 252<br> [0x80000eea]:addi sp, sp, 2<br> [0x80000eee]:jal zero, 6<br> [0x80000ef4]:sd sp, 368(ra)<br>  |
|  48|[0x80005388]<br>0xFF76DF56FF76DFB6|- rs1_val == 2199023255552<br>                                                             |[0x80000f86]:c.beqz a0, 192<br> [0x80000f88]:addi sp, sp, 2<br> [0x80000f8c]:jal zero, 6<br> [0x80000f92]:sd sp, 376(ra)<br>  |
|  49|[0x80005390]<br>0xFF76DF56FF76DFB8|- rs1_val == 4398046511104<br>                                                             |[0x80000fac]:c.beqz a0, 8<br> [0x80000fae]:addi sp, sp, 2<br> [0x80000fb2]:jal zero, 12<br> [0x80000fbe]:sd sp, 384(ra)<br>   |
|  50|[0x80005398]<br>0xFF76DF56FF76DFBA|- rs1_val == 8796093022208<br>                                                             |[0x80000fd8]:c.beqz a0, 9<br> [0x80000fda]:addi sp, sp, 2<br> [0x80000fde]:jal zero, 14<br> [0x80000fec]:sd sp, 392(ra)<br>   |
|  51|[0x800053a0]<br>0xFF76DF56FF76DFBC|- rs1_val == 17592186044416<br>                                                            |[0x80001006]:c.beqz a0, 5<br> [0x80001008]:addi sp, sp, 2<br> [0x8000100c]:jal zero, 6<br> [0x80001012]:sd sp, 400(ra)<br>    |
|  52|[0x800053a8]<br>0xFF76DF56FF76DFBE|- rs1_val == 35184372088832<br>                                                            |[0x800010a4]:c.beqz a0, 192<br> [0x800010a6]:addi sp, sp, 2<br> [0x800010aa]:jal zero, 6<br> [0x800010b0]:sd sp, 408(ra)<br>  |
|  53|[0x800053b0]<br>0xFF76DF56FF76DFC0|- rs1_val == 70368744177664<br>                                                            |[0x800010d6]:c.beqz a0, 246<br> [0x800010d8]:addi sp, sp, 2<br> [0x800010dc]:jal zero, 6<br> [0x800010e2]:sd sp, 416(ra)<br>  |
|  54|[0x800053b8]<br>0xFF76DF56FF76DFC2|- rs1_val == 140737488355328<br>                                                           |[0x800010fc]:c.beqz a0, 85<br> [0x800010fe]:addi sp, sp, 2<br> [0x80001102]:jal zero, 166<br> [0x800011a8]:sd sp, 424(ra)<br> |
|  55|[0x800053c0]<br>0xFF76DF56FF76DFC4|- rs1_val == 281474976710656<br>                                                           |[0x800011c2]:c.beqz a0, 64<br> [0x800011c4]:addi sp, sp, 2<br> [0x800011c8]:jal zero, 124<br> [0x80001244]:sd sp, 432(ra)<br> |
|  56|[0x800053c8]<br>0xFF76DF56FF76DFC6|- rs1_val == 562949953421312<br>                                                           |[0x8000125e]:c.beqz a0, 5<br> [0x80001260]:addi sp, sp, 2<br> [0x80001264]:jal zero, 6<br> [0x8000126a]:sd sp, 440(ra)<br>    |
|  57|[0x800053d0]<br>0xFF76DF56FF76DFC8|- rs1_val == 1125899906842624<br>                                                          |[0x800012fe]:c.beqz a0, 191<br> [0x80001300]:addi sp, sp, 2<br> [0x80001304]:jal zero, 6<br> [0x8000130a]:sd sp, 448(ra)<br>  |
|  58|[0x800053d8]<br>0xFF76DF56FF76DFCA|- rs1_val == 2251799813685248<br>                                                          |[0x80001324]:c.beqz a0, 8<br> [0x80001326]:addi sp, sp, 2<br> [0x8000132a]:jal zero, 12<br> [0x80001336]:sd sp, 456(ra)<br>   |
|  59|[0x800053e0]<br>0xFF76DF56FF76DFCC|- rs1_val == 4503599627370496<br>                                                          |[0x80001356]:c.beqz a0, 249<br> [0x80001358]:addi sp, sp, 2<br> [0x8000135c]:jal zero, 6<br> [0x80001362]:sd sp, 464(ra)<br>  |
|  60|[0x800053e8]<br>0xFF76DF56FF76DFCE|- rs1_val == 9007199254740992<br>                                                          |[0x80001386]:c.beqz a0, 247<br> [0x80001388]:addi sp, sp, 2<br> [0x8000138c]:jal zero, 6<br> [0x80001392]:sd sp, 472(ra)<br>  |
|  61|[0x800053f0]<br>0xFF76DF56FF76DFD0|- rs1_val == 18014398509481984<br>                                                         |[0x800013b6]:c.beqz a0, 247<br> [0x800013b8]:addi sp, sp, 2<br> [0x800013bc]:jal zero, 6<br> [0x800013c2]:sd sp, 480(ra)<br>  |
|  62|[0x800053f8]<br>0xFF76DF56FF76DFD2|- rs1_val == 36028797018963968<br>                                                         |[0x800013dc]:c.beqz a0, 64<br> [0x800013de]:addi sp, sp, 2<br> [0x800013e2]:jal zero, 124<br> [0x8000145e]:sd sp, 488(ra)<br> |
|  63|[0x80005400]<br>0xFF76DF56FF76DFD4|- rs1_val == 72057594037927936<br>                                                         |[0x80001482]:c.beqz a0, 247<br> [0x80001484]:addi sp, sp, 2<br> [0x80001488]:jal zero, 6<br> [0x8000148e]:sd sp, 496(ra)<br>  |
|  64|[0x80005408]<br>0xFF76DF56FF76DFD6|- rs1_val == 144115188075855872<br>                                                        |[0x800014a8]:c.beqz a0, 252<br> [0x800014aa]:addi sp, sp, 2<br> [0x800014ae]:jal zero, 6<br> [0x800014b4]:sd sp, 504(ra)<br>  |
|  65|[0x80005410]<br>0xFF76DF56FF76DFD8|- rs1_val == 288230376151711744<br>                                                        |[0x800014ce]:c.beqz a0, 32<br> [0x800014d0]:addi sp, sp, 2<br> [0x800014d4]:jal zero, 60<br> [0x80001510]:sd sp, 512(ra)<br>  |
|  66|[0x80005418]<br>0xFF76DF56FF76DFDA|- rs1_val == 576460752303423488<br>                                                        |[0x800015a4]:c.beqz a0, 191<br> [0x800015a6]:addi sp, sp, 2<br> [0x800015aa]:jal zero, 6<br> [0x800015b0]:sd sp, 520(ra)<br>  |
|  67|[0x80005420]<br>0xFF76DF56FF76DFDC|- rs1_val == 1152921504606846976<br>                                                       |[0x800015e4]:c.beqz a0, 239<br> [0x800015e6]:addi sp, sp, 2<br> [0x800015ea]:jal zero, 6<br> [0x800015f0]:sd sp, 528(ra)<br>  |
|  68|[0x80005428]<br>0xFF76DF56FF76DFDE|- rs1_val == 2305843009213693952<br>                                                       |[0x8000160a]:c.beqz a0, 252<br> [0x8000160c]:addi sp, sp, 2<br> [0x80001610]:jal zero, 6<br> [0x80001616]:sd sp, 536(ra)<br>  |
|  69|[0x80005430]<br>0xFF76DF56FF76DFE0|- rs1_val == 4611686018427387904<br>                                                       |[0x80001630]:c.beqz a0, 5<br> [0x80001632]:addi sp, sp, 2<br> [0x80001636]:jal zero, 6<br> [0x8000163c]:sd sp, 544(ra)<br>    |
|  70|[0x80005438]<br>0xFF76DF56FF76DFE2|- rs1_val == -36028797018963969<br>                                                        |[0x8000165a]:c.beqz a0, 64<br> [0x8000165c]:addi sp, sp, 2<br> [0x80001660]:jal zero, 124<br> [0x800016dc]:sd sp, 552(ra)<br> |
|  71|[0x80005440]<br>0xFF76DF56FF76DFE4|- rs1_val == -72057594037927937<br>                                                        |[0x800016fa]:c.beqz a0, 16<br> [0x800016fc]:addi sp, sp, 2<br> [0x80001700]:jal zero, 28<br> [0x8000171c]:sd sp, 560(ra)<br>  |
|  72|[0x80005448]<br>0xFF76DF56FF76DFE6|- rs1_val == -144115188075855873<br>                                                       |[0x800017b2]:c.beqz a0, 192<br> [0x800017b4]:addi sp, sp, 2<br> [0x800017b8]:jal zero, 6<br> [0x800017be]:sd sp, 568(ra)<br>  |
|  73|[0x80005450]<br>0xFF76DF56FF76DFE8|- rs1_val == -288230376151711745<br>                                                       |[0x800017dc]:c.beqz a0, 252<br> [0x800017de]:addi sp, sp, 2<br> [0x800017e2]:jal zero, 6<br> [0x800017e8]:sd sp, 576(ra)<br>  |
|  74|[0x80005458]<br>0xFF76DF56FF76DFEA|- rs1_val == -576460752303423489<br>                                                       |[0x80001806]:c.beqz a0, 5<br> [0x80001808]:addi sp, sp, 2<br> [0x8000180c]:jal zero, 6<br> [0x80001812]:sd sp, 584(ra)<br>    |
|  75|[0x80005460]<br>0xFF76DF56FF76DFEC|- rs1_val == -1152921504606846977<br>                                                      |[0x80001832]:c.beqz a0, 251<br> [0x80001834]:addi sp, sp, 2<br> [0x80001838]:jal zero, 6<br> [0x8000183e]:sd sp, 592(ra)<br>  |
|  76|[0x80005468]<br>0xFF76DF56FF76DFEE|- rs1_val == -2305843009213693953<br>                                                      |[0x800018d4]:c.beqz a0, 192<br> [0x800018d6]:addi sp, sp, 2<br> [0x800018da]:jal zero, 6<br> [0x800018e0]:sd sp, 600(ra)<br>  |
|  77|[0x80005470]<br>0xFF76DF56FF76DFF0|- rs1_val == -4611686018427387905<br>                                                      |[0x80001908]:c.beqz a0, 247<br> [0x8000190a]:addi sp, sp, 2<br> [0x8000190e]:jal zero, 6<br> [0x80001914]:sd sp, 608(ra)<br>  |
|  78|[0x80005478]<br>0xFF76DF56FF76DFF2|- rs1_val == 6148914691236517205<br>                                                       |[0x80001946]:c.beqz a0, 5<br> [0x80001948]:addi sp, sp, 2<br> [0x8000194c]:jal zero, 6<br> [0x80001952]:sd sp, 616(ra)<br>    |
|  79|[0x80005480]<br>0xFF76DF56FF76DFF4|- rs1_val == -6148914691236517206<br>                                                      |[0x80001984]:c.beqz a0, 64<br> [0x80001986]:addi sp, sp, 2<br> [0x8000198a]:jal zero, 124<br> [0x80001a06]:sd sp, 624(ra)<br> |
|  80|[0x80005488]<br>0xFF76DF56FF76DFF6|- rs1_val == -2<br>                                                                        |[0x80001a1c]:c.beqz a0, 9<br> [0x80001a1e]:addi sp, sp, 2<br> [0x80001a22]:jal zero, 14<br> [0x80001a30]:sd sp, 632(ra)<br>   |
|  81|[0x80005490]<br>0xFF76DF56FF76DFF8|- rs1_val == -3<br>                                                                        |[0x80001a46]:c.beqz a0, 252<br> [0x80001a48]:addi sp, sp, 2<br> [0x80001a4c]:jal zero, 6<br> [0x80001a52]:sd sp, 640(ra)<br>  |
|  82|[0x80005498]<br>0xFF76DF56FF76DFFA|- rs1_val == -9<br>                                                                        |[0x80001a68]:c.beqz a0, 252<br> [0x80001a6a]:addi sp, sp, 2<br> [0x80001a6e]:jal zero, 6<br> [0x80001a74]:sd sp, 648(ra)<br>  |
|  83|[0x800054a0]<br>0xFF76DF56FF76DFFC|- rs1_val == -17<br>                                                                       |[0x80001a8a]:c.beqz a0, 5<br> [0x80001a8c]:addi sp, sp, 2<br> [0x80001a90]:jal zero, 6<br> [0x80001a96]:sd sp, 656(ra)<br>    |
|  84|[0x800054a8]<br>0xFF76DF56FF76DFFE|- rs1_val == -33<br>                                                                       |[0x80001aac]:c.beqz a0, 9<br> [0x80001aae]:addi sp, sp, 2<br> [0x80001ab2]:jal zero, 14<br> [0x80001ac0]:sd sp, 664(ra)<br>   |
|  85|[0x800054b0]<br>0xFF76DF56FF76E000|- rs1_val == -65<br>                                                                       |[0x80001ada]:c.beqz a0, 250<br> [0x80001adc]:addi sp, sp, 2<br> [0x80001ae0]:jal zero, 6<br> [0x80001ae6]:sd sp, 672(ra)<br>  |
|  86|[0x800054b8]<br>0xFF76DF56FF76E002|- rs1_val == -129<br>                                                                      |[0x80001afc]:c.beqz a0, 8<br> [0x80001afe]:addi sp, sp, 2<br> [0x80001b02]:jal zero, 12<br> [0x80001b0e]:sd sp, 680(ra)<br>   |
|  87|[0x800054c0]<br>0xFF76DF56FF76E004|- rs1_val == -257<br>                                                                      |[0x80001b24]:c.beqz a0, 8<br> [0x80001b26]:addi sp, sp, 2<br> [0x80001b2a]:jal zero, 12<br> [0x80001b36]:sd sp, 688(ra)<br>   |
|  88|[0x800054c8]<br>0xFF76DF56FF76E006|- rs1_val == -513<br>                                                                      |[0x80001b4c]:c.beqz a0, 9<br> [0x80001b4e]:addi sp, sp, 2<br> [0x80001b52]:jal zero, 14<br> [0x80001b60]:sd sp, 696(ra)<br>   |
|  89|[0x800054d0]<br>0xFF76DF56FF76E008|- rs1_val == -1025<br>                                                                     |[0x80001b76]:c.beqz a0, 8<br> [0x80001b78]:addi sp, sp, 2<br> [0x80001b7c]:jal zero, 12<br> [0x80001b88]:sd sp, 704(ra)<br>   |
|  90|[0x800054d8]<br>0xFF76DF56FF76E00A|- rs1_val == -2049<br>                                                                     |[0x80001ba2]:c.beqz a0, 5<br> [0x80001ba4]:addi sp, sp, 2<br> [0x80001ba8]:jal zero, 6<br> [0x80001bae]:sd sp, 712(ra)<br>    |
|  91|[0x800054e0]<br>0xFF76DF56FF76E00C|- rs1_val == -4097<br>                                                                     |[0x80001bca]:c.beqz a0, 251<br> [0x80001bcc]:addi sp, sp, 2<br> [0x80001bd0]:jal zero, 6<br> [0x80001bd6]:sd sp, 720(ra)<br>  |
|  92|[0x800054e8]<br>0xFF76DF56FF76E00E|- rs1_val == -8193<br>                                                                     |[0x80001bf0]:c.beqz a0, 5<br> [0x80001bf2]:addi sp, sp, 2<br> [0x80001bf6]:jal zero, 6<br> [0x80001bfc]:sd sp, 728(ra)<br>    |
|  93|[0x800054f0]<br>0xFF76DF56FF76E010|- rs1_val == -16385<br>                                                                    |[0x80001c16]:c.beqz a0, 5<br> [0x80001c18]:addi sp, sp, 2<br> [0x80001c1c]:jal zero, 6<br> [0x80001c22]:sd sp, 736(ra)<br>    |
|  94|[0x800054f8]<br>0xFF76DF56FF76E012|- rs1_val == -32769<br>                                                                    |[0x80001c3c]:c.beqz a0, 64<br> [0x80001c3e]:addi sp, sp, 2<br> [0x80001c42]:jal zero, 124<br> [0x80001cbe]:sd sp, 744(ra)<br> |
|  95|[0x80005500]<br>0xFF76DF56FF76E014|- rs1_val == -65537<br>                                                                    |[0x80001cd8]:c.beqz a0, 9<br> [0x80001cda]:addi sp, sp, 2<br> [0x80001cde]:jal zero, 14<br> [0x80001cec]:sd sp, 752(ra)<br>   |
|  96|[0x80005508]<br>0xFF76DF56FF76E016|- rs1_val == -131073<br>                                                                   |[0x80001d06]:c.beqz a0, 64<br> [0x80001d08]:addi sp, sp, 2<br> [0x80001d0c]:jal zero, 124<br> [0x80001d88]:sd sp, 760(ra)<br> |
|  97|[0x80005510]<br>0xFF76DF56FF76E018|- rs1_val == -262145<br>                                                                   |[0x80001da2]:c.beqz a0, 9<br> [0x80001da4]:addi sp, sp, 2<br> [0x80001da8]:jal zero, 14<br> [0x80001db6]:sd sp, 768(ra)<br>   |
|  98|[0x80005518]<br>0xFF76DF56FF76E01A|- rs1_val == -524289<br>                                                                   |[0x80001dd0]:c.beqz a0, 252<br> [0x80001dd2]:addi sp, sp, 2<br> [0x80001dd6]:jal zero, 6<br> [0x80001ddc]:sd sp, 776(ra)<br>  |
|  99|[0x80005520]<br>0xFF76DF56FF76E01C|- rs1_val == -1048577<br>                                                                  |[0x80001df6]:c.beqz a0, 7<br> [0x80001df8]:addi sp, sp, 2<br> [0x80001dfc]:jal zero, 10<br> [0x80001e06]:sd sp, 784(ra)<br>   |
| 100|[0x80005528]<br>0xFF76DF56FF76E01E|- rs1_val == -2097153<br>                                                                  |[0x80001e9a]:c.beqz a0, 191<br> [0x80001e9c]:addi sp, sp, 2<br> [0x80001ea0]:jal zero, 6<br> [0x80001ea6]:sd sp, 792(ra)<br>  |
| 101|[0x80005530]<br>0xFF76DF56FF76E020|- rs1_val == -4194305<br>                                                                  |[0x80001f38]:c.beqz a0, 192<br> [0x80001f3a]:addi sp, sp, 2<br> [0x80001f3e]:jal zero, 6<br> [0x80001f44]:sd sp, 800(ra)<br>  |
| 102|[0x80005538]<br>0xFF76DF56FF76E022|- rs1_val == -8388609<br>                                                                  |[0x80001f5e]:c.beqz a0, 8<br> [0x80001f60]:addi sp, sp, 2<br> [0x80001f64]:jal zero, 12<br> [0x80001f70]:sd sp, 808(ra)<br>   |
| 103|[0x80005540]<br>0xFF76DF56FF76E024|- rs1_val == -16777217<br>                                                                 |[0x80002002]:c.beqz a0, 192<br> [0x80002004]:addi sp, sp, 2<br> [0x80002008]:jal zero, 6<br> [0x8000200e]:sd sp, 816(ra)<br>  |
| 104|[0x80005548]<br>0xFF76DF56FF76E026|- rs1_val == -33554433<br>                                                                 |[0x80002028]:c.beqz a0, 32<br> [0x8000202a]:addi sp, sp, 2<br> [0x8000202e]:jal zero, 60<br> [0x8000206a]:sd sp, 824(ra)<br>  |
| 105|[0x80005550]<br>0xFF76DF56FF76E028|- rs1_val == -67108865<br>                                                                 |[0x80002084]:c.beqz a0, 64<br> [0x80002086]:addi sp, sp, 2<br> [0x8000208a]:jal zero, 124<br> [0x80002106]:sd sp, 832(ra)<br> |
| 106|[0x80005558]<br>0xFF76DF56FF76E02A|- rs1_val == -134217729<br>                                                                |[0x8000215a]:c.beqz a0, 223<br> [0x8000215c]:addi sp, sp, 2<br> [0x80002160]:jal zero, 6<br> [0x80002166]:sd sp, 840(ra)<br>  |
| 107|[0x80005560]<br>0xFF76DF56FF76E02C|- rs1_val == -268435457<br>                                                                |[0x80002180]:c.beqz a0, 63<br> [0x80002182]:addi sp, sp, 2<br> [0x80002186]:jal zero, 122<br> [0x80002200]:sd sp, 848(ra)<br> |
| 108|[0x80005568]<br>0xFF76DF56FF76E02E|- rs1_val == -536870913<br>                                                                |[0x80002292]:c.beqz a0, 192<br> [0x80002294]:addi sp, sp, 2<br> [0x80002298]:jal zero, 6<br> [0x8000229e]:sd sp, 856(ra)<br>  |
| 109|[0x80005570]<br>0xFF76DF56FF76E030|- rs1_val == -1073741825<br>                                                               |[0x800022b8]:c.beqz a0, 85<br> [0x800022ba]:addi sp, sp, 2<br> [0x800022be]:jal zero, 166<br> [0x80002364]:sd sp, 864(ra)<br> |
| 110|[0x80005578]<br>0xFF76DF56FF76E032|- rs1_val == -2147483649<br>                                                               |[0x80002382]:c.beqz a0, 9<br> [0x80002384]:addi sp, sp, 2<br> [0x80002388]:jal zero, 14<br> [0x80002396]:sd sp, 872(ra)<br>   |
| 111|[0x80005580]<br>0xFF76DF56FF76E034|- rs1_val == -4294967297<br>                                                               |[0x800023b4]:c.beqz a0, 5<br> [0x800023b6]:addi sp, sp, 2<br> [0x800023ba]:jal zero, 6<br> [0x800023c0]:sd sp, 880(ra)<br>    |
| 112|[0x80005588]<br>0xFF76DF56FF76E036|- rs1_val == -8589934593<br>                                                               |[0x800023de]:c.beqz a0, 5<br> [0x800023e0]:addi sp, sp, 2<br> [0x800023e4]:jal zero, 6<br> [0x800023ea]:sd sp, 888(ra)<br>    |
| 113|[0x80005590]<br>0xFF76DF56FF76E038|- rs1_val == -17179869185<br>                                                              |[0x80002408]:c.beqz a0, 6<br> [0x8000240a]:addi sp, sp, 2<br> [0x8000240e]:jal zero, 8<br> [0x80002416]:sd sp, 896(ra)<br>    |
| 114|[0x80005598]<br>0xFF76DF56FF76E03A|- rs1_val == -34359738369<br>                                                              |[0x80002434]:c.beqz a0, 252<br> [0x80002436]:addi sp, sp, 2<br> [0x8000243a]:jal zero, 6<br> [0x80002440]:sd sp, 904(ra)<br>  |
| 115|[0x800055a0]<br>0xFF76DF56FF76E03C|- rs1_val == -137438953473<br>                                                             |[0x8000245e]:c.beqz a0, 5<br> [0x80002460]:addi sp, sp, 2<br> [0x80002464]:jal zero, 6<br> [0x8000246a]:sd sp, 912(ra)<br>    |
| 116|[0x800055a8]<br>0xFF76DF56FF76E03E|- rs1_val == -274877906945<br>                                                             |[0x80002490]:c.beqz a0, 248<br> [0x80002492]:addi sp, sp, 2<br> [0x80002496]:jal zero, 6<br> [0x8000249c]:sd sp, 920(ra)<br>  |
| 117|[0x800055b0]<br>0xFF76DF56FF76E040|- rs1_val == -549755813889<br>                                                             |[0x800024ba]:c.beqz a0, 64<br> [0x800024bc]:addi sp, sp, 2<br> [0x800024c0]:jal zero, 124<br> [0x8000253c]:sd sp, 928(ra)<br> |
| 118|[0x800055b8]<br>0xFF76DF56FF76E042|- rs1_val == -1099511627777<br>                                                            |[0x8000255a]:c.beqz a0, 9<br> [0x8000255c]:addi sp, sp, 2<br> [0x80002560]:jal zero, 14<br> [0x8000256e]:sd sp, 936(ra)<br>   |
| 119|[0x800055c0]<br>0xFF76DF56FF76E044|- rs1_val == -2199023255553<br>                                                            |[0x800025c6]:c.beqz a0, 223<br> [0x800025c8]:addi sp, sp, 2<br> [0x800025cc]:jal zero, 6<br> [0x800025d2]:sd sp, 944(ra)<br>  |
| 120|[0x800055c8]<br>0xFF76DF56FF76E046|- rs1_val == -4398046511105<br>                                                            |[0x8000262a]:c.beqz a0, 223<br> [0x8000262c]:addi sp, sp, 2<br> [0x80002630]:jal zero, 6<br> [0x80002636]:sd sp, 952(ra)<br>  |
| 121|[0x800055d0]<br>0xFF76DF56FF76E048|- rs1_val == -8796093022209<br>                                                            |[0x8000268e]:c.beqz a0, 223<br> [0x80002690]:addi sp, sp, 2<br> [0x80002694]:jal zero, 6<br> [0x8000269a]:sd sp, 960(ra)<br>  |
| 122|[0x800055d8]<br>0xFF76DF56FF76E04A|- rs1_val == -17592186044417<br>                                                           |[0x800026b8]:c.beqz a0, 252<br> [0x800026ba]:addi sp, sp, 2<br> [0x800026be]:jal zero, 6<br> [0x800026c4]:sd sp, 968(ra)<br>  |
| 123|[0x800055e0]<br>0xFF76DF56FF76E04C|- rs1_val == -35184372088833<br>                                                           |[0x800026e2]:c.beqz a0, 63<br> [0x800026e4]:addi sp, sp, 2<br> [0x800026e8]:jal zero, 122<br> [0x80002762]:sd sp, 976(ra)<br> |
| 124|[0x800055e8]<br>0xFF76DF56FF76E04E|- rs1_val == -70368744177665<br>                                                           |[0x80002780]:c.beqz a0, 252<br> [0x80002782]:addi sp, sp, 2<br> [0x80002786]:jal zero, 6<br> [0x8000278c]:sd sp, 984(ra)<br>  |
| 125|[0x800055f0]<br>0xFF76DF56FF76E050|- rs1_val == -140737488355329<br>                                                          |[0x800027aa]:c.beqz a0, 5<br> [0x800027ac]:addi sp, sp, 2<br> [0x800027b0]:jal zero, 6<br> [0x800027b6]:sd sp, 992(ra)<br>    |
| 126|[0x800055f8]<br>0xFF76DF56FF76E052|- rs1_val == -281474976710657<br>                                                          |[0x800027d4]:c.beqz a0, 252<br> [0x800027d6]:addi sp, sp, 2<br> [0x800027da]:jal zero, 6<br> [0x800027e0]:sd sp, 1000(ra)<br> |
| 127|[0x80005600]<br>0xFF76DF56FF76E054|- rs1_val == -562949953421313<br>                                                          |[0x800027fe]:c.beqz a0, 5<br> [0x80002800]:addi sp, sp, 2<br> [0x80002804]:jal zero, 6<br> [0x8000280a]:sd sp, 1008(ra)<br>   |
| 128|[0x80005608]<br>0xFF76DF56FF76E056|- rs1_val == -1125899906842625<br>                                                         |[0x8000282a]:c.beqz a0, 251<br> [0x8000282c]:addi sp, sp, 2<br> [0x80002830]:jal zero, 6<br> [0x80002836]:sd sp, 1016(ra)<br> |
| 129|[0x80005610]<br>0xFF76DF56FF76E058|- rs1_val == -2251799813685249<br>                                                         |[0x80002854]:c.beqz a0, 16<br> [0x80002856]:addi sp, sp, 2<br> [0x8000285a]:jal zero, 28<br> [0x80002876]:sd sp, 1024(ra)<br> |
| 130|[0x80005618]<br>0xFF76DF56FF76E05A|- rs1_val == -4503599627370497<br>                                                         |[0x80002894]:c.beqz a0, 32<br> [0x80002896]:addi sp, sp, 2<br> [0x8000289a]:jal zero, 60<br> [0x800028d6]:sd sp, 1032(ra)<br> |
| 131|[0x80005620]<br>0xFF76DF56FF76E05C|- rs1_val == -9007199254740993<br>                                                         |[0x800028f4]:c.beqz a0, 16<br> [0x800028f6]:addi sp, sp, 2<br> [0x800028fa]:jal zero, 28<br> [0x80002916]:sd sp, 1040(ra)<br> |
| 132|[0x80005628]<br>0xFF76DF56FF76E05E|- rs1_val == -18014398509481985<br>                                                        |[0x800029ac]:c.beqz a0, 192<br> [0x800029ae]:addi sp, sp, 2<br> [0x800029b2]:jal zero, 6<br> [0x800029b8]:sd sp, 1048(ra)<br> |
