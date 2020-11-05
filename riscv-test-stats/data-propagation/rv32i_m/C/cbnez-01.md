
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80001550')]      |
| SIG_REGION                | [('0x80004204', '0x80004320', '71 words')]      |
| COV_LABELS                | cbnez      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cbnez-01.S/cbnez-01.S    |
| Total Number of coverpoints| 84     |
| Total Coverpoints Hit     | 84      |
| Total Signature Updates   | 68      |
| STAT1                     | 68      |
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

|s.no|        signature         |                                            coverpoints                                             |                                                             code                                                              |
|---:|--------------------------|----------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80004210]<br>0xFF76DF59|- opcode : c.bnez<br> - rs1 : x15<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 1431655765<br> |[0x80000116]:c.bnez a5, 64<br> [0x80000196]:c.addi sp, 3<br> [0x80000198]:sw sp, 0(ra)<br>                                     |
|   2|[0x80004214]<br>0xFF76DF5C|- rs1 : x14<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -8388609<br>                         |[0x800001b2]:c.bnez a4, 5<br> [0x800001bc]:c.addi sp, 3<br> [0x800001be]:sw sp, 4(ra)<br>                                      |
|   3|[0x80004218]<br>0xFF76DF5E|- rs1 : x11<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val > 0<br>                               |[0x800001d4]:c.bnez a1, 64<br> [0x800001d6]:addi sp, sp, 2<br> [0x800001da]:jal zero, 124<br> [0x80000256]:sw sp, 8(ra)<br>    |
|   4|[0x8000421c]<br>0xFF76DF5F|- rs1 : x9<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 524288<br>                            |[0x8000026c]:c.bnez s1, 252<br> [0x80000264]:addi sp, sp, 1<br> [0x80000268]:jal zero, 16<br> [0x80000278]:sw sp, 12(ra)<br>   |
|   5|[0x80004220]<br>0xFF76DF60|- rs1 : x13<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -1431655766<br>                      |[0x8000030c]:c.bnez a3, 191<br> [0x8000028a]:addi sp, sp, 1<br> [0x8000028e]:jal zero, 138<br> [0x80000318]:sw sp, 16(ra)<br>  |
|   6|[0x80004224]<br>0xFF76DF62|- rs1 : x12<br> - rs1_val == 0 and imm_val < 0<br>                                                  |[0x8000033a]:c.bnez a2, 246<br> [0x8000033c]:addi sp, sp, 2<br> [0x80000340]:jal zero, 6<br> [0x80000346]:sw sp, 20(ra)<br>    |
|   7|[0x80004228]<br>0xFF76DF63|- rs1 : x10<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                        |[0x80000364]:c.bnez a0, 248<br> [0x80000354]:addi sp, sp, 1<br> [0x80000358]:jal zero, 24<br> [0x80000370]:sw sp, 24(ra)<br>   |
|   8|[0x8000422c]<br>0xFF76DF66|- rs1 : x8<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                         |[0x8000038a]:c.bnez s0, 5<br> [0x80000394]:c.addi sp, 3<br> [0x80000396]:sw sp, 28(ra)<br>                                     |
|   9|[0x80004230]<br>0xFF76DF67|- rs1_val == 1<br>                                                                                  |[0x80000450]:c.bnez a0, 170<br> [0x800003a4]:addi sp, sp, 1<br> [0x800003a8]:jal zero, 180<br> [0x8000045c]:sw sp, 32(ra)<br>  |
|  10|[0x80004234]<br>0xFF76DF68|- rs1_val == 2<br>                                                                                  |[0x80000472]:c.bnez a0, 252<br> [0x8000046a]:addi sp, sp, 1<br> [0x8000046e]:jal zero, 16<br> [0x8000047e]:sw sp, 36(ra)<br>   |
|  11|[0x80004238]<br>0xFF76DF6B|- rs1_val == 4<br>                                                                                  |[0x80000494]:c.bnez a0, 5<br> [0x8000049e]:c.addi sp, 3<br> [0x800004a0]:sw sp, 40(ra)<br>                                     |
|  12|[0x8000423c]<br>0xFF76DF6C|- rs1_val == 8<br>                                                                                  |[0x800004f0]:c.bnez a0, 223<br> [0x800004ae]:addi sp, sp, 1<br> [0x800004b2]:jal zero, 74<br> [0x800004fc]:sw sp, 44(ra)<br>   |
|  13|[0x80004240]<br>0xFF76DF6F|- rs1_val == 16<br>                                                                                 |[0x80000512]:c.bnez a0, 64<br> [0x80000592]:c.addi sp, 3<br> [0x80000594]:sw sp, 48(ra)<br>                                    |
|  14|[0x80004244]<br>0xFF76DF72|- rs1_val == 32<br>                                                                                 |[0x800005aa]:c.bnez a0, 5<br> [0x800005b4]:c.addi sp, 3<br> [0x800005b6]:sw sp, 52(ra)<br>                                     |
|  15|[0x80004248]<br>0xFF76DF73|- rs1_val == 64<br>                                                                                 |[0x80000646]:c.bnez a0, 191<br> [0x800005c4]:addi sp, sp, 1<br> [0x800005c8]:jal zero, 138<br> [0x80000652]:sw sp, 56(ra)<br>  |
|  16|[0x8000424c]<br>0xFF76DF76|- rs1_val == 128<br>                                                                                |[0x80000668]:c.bnez a0, 6<br> [0x80000674]:c.addi sp, 3<br> [0x80000676]:sw sp, 60(ra)<br>                                     |
|  17|[0x80004250]<br>0xFF76DF77|- rs1_val == 256<br>                                                                                |[0x8000068c]:c.bnez a0, 252<br> [0x80000684]:addi sp, sp, 1<br> [0x80000688]:jal zero, 16<br> [0x80000698]:sw sp, 64(ra)<br>   |
|  18|[0x80004254]<br>0xFF76DF7A|- rs1_val == 512<br>                                                                                |[0x800006ae]:c.bnez a0, 32<br> [0x800006ee]:c.addi sp, 3<br> [0x800006f0]:sw sp, 68(ra)<br>                                    |
|  19|[0x80004258]<br>0xFF76DF7B|- rs1_val == 1024<br>                                                                               |[0x80000708]:c.bnez a0, 251<br> [0x800006fe]:addi sp, sp, 1<br> [0x80000702]:jal zero, 18<br> [0x80000714]:sw sp, 72(ra)<br>   |
|  20|[0x8000425c]<br>0xFF76DF7C|- rs1_val == 2048<br>                                                                               |[0x80000730]:c.bnez a0, 251<br> [0x80000726]:addi sp, sp, 1<br> [0x8000072a]:jal zero, 18<br> [0x8000073c]:sw sp, 76(ra)<br>   |
|  21|[0x80004260]<br>0xFF76DF7F|- rs1_val == 4096<br>                                                                               |[0x80000752]:c.bnez a0, 64<br> [0x800007d2]:c.addi sp, 3<br> [0x800007d4]:sw sp, 80(ra)<br>                                    |
|  22|[0x80004264]<br>0xFF76DF80|- rs1_val == 8192<br>                                                                               |[0x800007ec]:c.bnez a0, 251<br> [0x800007e2]:addi sp, sp, 1<br> [0x800007e6]:jal zero, 18<br> [0x800007f8]:sw sp, 84(ra)<br>   |
|  23|[0x80004268]<br>0xFF76DF83|- rs1_val == 16384<br>                                                                              |[0x8000080e]:c.bnez a0, 5<br> [0x80000818]:c.addi sp, 3<br> [0x8000081a]:sw sp, 88(ra)<br>                                     |
|  24|[0x8000426c]<br>0xFF76DF84|- rs1_val == 32768<br>                                                                              |[0x800008d4]:c.bnez a0, 170<br> [0x80000828]:addi sp, sp, 1<br> [0x8000082c]:jal zero, 180<br> [0x800008e0]:sw sp, 92(ra)<br>  |
|  25|[0x80004270]<br>0xFF76DF85|- rs1_val == 65536<br>                                                                              |[0x80000910]:c.bnez a0, 239<br> [0x800008ee]:addi sp, sp, 1<br> [0x800008f2]:jal zero, 42<br> [0x8000091c]:sw sp, 96(ra)<br>   |
|  26|[0x80004274]<br>0xFF76DF86|- rs1_val == 131072<br>                                                                             |[0x8000093a]:c.bnez a0, 248<br> [0x8000092a]:addi sp, sp, 1<br> [0x8000092e]:jal zero, 24<br> [0x80000946]:sw sp, 100(ra)<br>  |
|  27|[0x80004278]<br>0xFF76DF89|- rs1_val == 262144<br>                                                                             |[0x8000095c]:c.bnez a0, 5<br> [0x80000966]:c.addi sp, 3<br> [0x80000968]:sw sp, 104(ra)<br>                                    |
|  28|[0x8000427c]<br>0xFF76DF8C|- rs1_val == 1048576<br>                                                                            |[0x8000097e]:c.bnez a0, 5<br> [0x80000988]:c.addi sp, 3<br> [0x8000098a]:sw sp, 108(ra)<br>                                    |
|  29|[0x80004280]<br>0xFF76DF8F|- rs1_val == 2097152<br>                                                                            |[0x800009a0]:c.bnez a0, 64<br> [0x80000a20]:c.addi sp, 3<br> [0x80000a22]:sw sp, 112(ra)<br>                                   |
|  30|[0x80004284]<br>0xFF76DF92|- rs1_val == 4194304<br>                                                                            |[0x80000a38]:c.bnez a0, 6<br> [0x80000a44]:c.addi sp, 3<br> [0x80000a46]:sw sp, 116(ra)<br>                                    |
|  31|[0x80004288]<br>0xFF76DF93|- rs1_val == 8388608<br>                                                                            |[0x80000a5c]:c.bnez a0, 252<br> [0x80000a54]:addi sp, sp, 1<br> [0x80000a58]:jal zero, 16<br> [0x80000a68]:sw sp, 120(ra)<br>  |
|  32|[0x8000428c]<br>0xFF76DF94|- rs1_val == 16777216<br>                                                                           |[0x80000af6]:c.bnez a0, 192<br> [0x80000a76]:addi sp, sp, 1<br> [0x80000a7a]:jal zero, 136<br> [0x80000b02]:sw sp, 124(ra)<br> |
|  33|[0x80004290]<br>0xFF76DF95|- rs1_val == 33554432<br>                                                                           |[0x80000b18]:c.bnez a0, 252<br> [0x80000b10]:addi sp, sp, 1<br> [0x80000b14]:jal zero, 16<br> [0x80000b24]:sw sp, 128(ra)<br>  |
|  34|[0x80004294]<br>0xFF76DF98|- rs1_val == 67108864<br>                                                                           |[0x80000b3a]:c.bnez a0, 8<br> [0x80000b4a]:c.addi sp, 3<br> [0x80000b4c]:sw sp, 132(ra)<br>                                    |
|  35|[0x80004298]<br>0xFF76DF99|- rs1_val == 134217728<br>                                                                          |[0x80000b62]:c.bnez a0, 252<br> [0x80000b5a]:addi sp, sp, 1<br> [0x80000b5e]:jal zero, 16<br> [0x80000b6e]:sw sp, 136(ra)<br>  |
|  36|[0x8000429c]<br>0xFF76DF9A|- rs1_val == 268435456<br>                                                                          |[0x80000b84]:c.bnez a0, 252<br> [0x80000b7c]:addi sp, sp, 1<br> [0x80000b80]:jal zero, 16<br> [0x80000b90]:sw sp, 140(ra)<br>  |
|  37|[0x800042a0]<br>0xFF76DF9B|- rs1_val == 536870912<br>                                                                          |[0x80000c4a]:c.bnez a0, 170<br> [0x80000b9e]:addi sp, sp, 1<br> [0x80000ba2]:jal zero, 180<br> [0x80000c56]:sw sp, 144(ra)<br> |
|  38|[0x800042a4]<br>0xFF76DF9E|- rs1_val == -16777217<br>                                                                          |[0x80000c70]:c.bnez a0, 64<br> [0x80000cf0]:c.addi sp, 3<br> [0x80000cf2]:sw sp, 148(ra)<br>                                   |
|  39|[0x800042a8]<br>0xFF76DF9F|- rs1_val == -33554433<br>                                                                          |[0x80000d46]:c.bnez a0, 223<br> [0x80000d04]:addi sp, sp, 1<br> [0x80000d08]:jal zero, 74<br> [0x80000d52]:sw sp, 152(ra)<br>  |
|  40|[0x800042ac]<br>0xFF76DFA0|- rs1_val == -67108865<br>                                                                          |[0x80000d76]:c.bnez a0, 247<br> [0x80000d64]:addi sp, sp, 1<br> [0x80000d68]:jal zero, 26<br> [0x80000d82]:sw sp, 156(ra)<br>  |
|  41|[0x800042b0]<br>0xFF76DFA3|- rs1_val == -134217729<br>                                                                         |[0x80000d9c]:c.bnez a0, 5<br> [0x80000da6]:c.addi sp, 3<br> [0x80000da8]:sw sp, 160(ra)<br>                                    |
|  42|[0x800042b4]<br>0xFF76DFA6|- rs1_val == -268435457<br>                                                                         |[0x80000dc2]:c.bnez a0, 32<br> [0x80000e02]:c.addi sp, 3<br> [0x80000e04]:sw sp, 164(ra)<br>                                   |
|  43|[0x800042b8]<br>0xFF76DFA7|- rs1_val == -536870913<br>                                                                         |[0x80000e96]:c.bnez a0, 192<br> [0x80000e16]:addi sp, sp, 1<br> [0x80000e1a]:jal zero, 136<br> [0x80000ea2]:sw sp, 168(ra)<br> |
|  44|[0x800042bc]<br>0xFF76DFA8|- rs1_val == -1073741825<br>                                                                        |[0x80000f34]:c.bnez a0, 192<br> [0x80000eb4]:addi sp, sp, 1<br> [0x80000eb8]:jal zero, 136<br> [0x80000f40]:sw sp, 172(ra)<br> |
|  45|[0x800042c0]<br>0xFF76DFA9|- rs1_val == 1073741824<br>                                                                         |[0x80000f70]:c.bnez a0, 239<br> [0x80000f4e]:addi sp, sp, 1<br> [0x80000f52]:jal zero, 42<br> [0x80000f7c]:sw sp, 176(ra)<br>  |
|  46|[0x800042c4]<br>0xFF76DFAC|- rs1_val == -2<br>                                                                                 |[0x80000f92]:c.bnez a0, 6<br> [0x80000f9e]:c.addi sp, 3<br> [0x80000fa0]:sw sp, 180(ra)<br>                                    |
|  47|[0x800042c8]<br>0xFF76DFAF|- rs1_val == -3<br>                                                                                 |[0x80000fb6]:c.bnez a0, 9<br> [0x80000fc8]:c.addi sp, 3<br> [0x80000fca]:sw sp, 184(ra)<br>                                    |
|  48|[0x800042cc]<br>0xFF76DFB0|- rs1_val == -5<br>                                                                                 |[0x80000fe0]:c.bnez a0, 252<br> [0x80000fd8]:addi sp, sp, 1<br> [0x80000fdc]:jal zero, 16<br> [0x80000fec]:sw sp, 188(ra)<br>  |
|  49|[0x800042d0]<br>0xFF76DFB3|- rs1_val == -9<br>                                                                                 |[0x80001002]:c.bnez a0, 6<br> [0x8000100e]:c.addi sp, 3<br> [0x80001010]:sw sp, 192(ra)<br>                                    |
|  50|[0x800042d4]<br>0xFF76DFB4|- rs1_val == -17<br>                                                                                |[0x8000102e]:c.bnez a0, 248<br> [0x8000101e]:addi sp, sp, 1<br> [0x80001022]:jal zero, 24<br> [0x8000103a]:sw sp, 196(ra)<br>  |
|  51|[0x800042d8]<br>0xFF76DFB7|- rs1_val == -33<br>                                                                                |[0x80001050]:c.bnez a0, 32<br> [0x80001090]:c.addi sp, 3<br> [0x80001092]:sw sp, 200(ra)<br>                                   |
|  52|[0x800042dc]<br>0xFF76DFBA|- rs1_val == -65<br>                                                                                |[0x800010a8]:c.bnez a0, 9<br> [0x800010ba]:c.addi sp, 3<br> [0x800010bc]:sw sp, 204(ra)<br>                                    |
|  53|[0x800042e0]<br>0xFF76DFBD|- rs1_val == -129<br>                                                                               |[0x800010d2]:c.bnez a0, 85<br> [0x8000117c]:c.addi sp, 3<br> [0x8000117e]:sw sp, 208(ra)<br>                                   |
|  54|[0x800042e4]<br>0xFF76DFBE|- rs1_val == -257<br>                                                                               |[0x80001198]:c.bnez a0, 250<br> [0x8000118c]:addi sp, sp, 1<br> [0x80001190]:jal zero, 20<br> [0x800011a4]:sw sp, 212(ra)<br>  |
|  55|[0x800042e8]<br>0xFF76DFC1|- rs1_val == -513<br>                                                                               |[0x800011ba]:c.bnez a0, 5<br> [0x800011c4]:c.addi sp, 3<br> [0x800011c6]:sw sp, 216(ra)<br>                                    |
|  56|[0x800042ec]<br>0xFF76DFC4|- rs1_val == -1025<br>                                                                              |[0x800011dc]:c.bnez a0, 64<br> [0x8000125c]:c.addi sp, 3<br> [0x8000125e]:sw sp, 220(ra)<br>                                   |
|  57|[0x800042f0]<br>0xFF76DFC5|- rs1_val == -2049<br>                                                                              |[0x8000127e]:c.bnez a0, 249<br> [0x80001270]:addi sp, sp, 1<br> [0x80001274]:jal zero, 22<br> [0x8000128a]:sw sp, 224(ra)<br>  |
|  58|[0x800042f4]<br>0xFF76DFC6|- rs1_val == -4097<br>                                                                              |[0x800012ae]:c.bnez a0, 247<br> [0x8000129c]:addi sp, sp, 1<br> [0x800012a0]:jal zero, 26<br> [0x800012ba]:sw sp, 228(ra)<br>  |
|  59|[0x800042f8]<br>0xFF76DFC9|- rs1_val == -8193<br>                                                                              |[0x800012d4]:c.bnez a0, 6<br> [0x800012e0]:c.addi sp, 3<br> [0x800012e2]:sw sp, 232(ra)<br>                                    |
|  60|[0x800042fc]<br>0xFF76DFCC|- rs1_val == -16385<br>                                                                             |[0x800012fc]:c.bnez a0, 5<br> [0x80001306]:c.addi sp, 3<br> [0x80001308]:sw sp, 236(ra)<br>                                    |
|  61|[0x80004300]<br>0xFF76DFCF|- rs1_val == -32769<br>                                                                             |[0x80001322]:c.bnez a0, 5<br> [0x8000132c]:c.addi sp, 3<br> [0x8000132e]:sw sp, 240(ra)<br>                                    |
|  62|[0x80004304]<br>0xFF76DFD0|- rs1_val == -65537<br>                                                                             |[0x80001350]:c.bnez a0, 248<br> [0x80001340]:addi sp, sp, 1<br> [0x80001344]:jal zero, 24<br> [0x8000135c]:sw sp, 244(ra)<br>  |
|  63|[0x80004308]<br>0xFF76DFD1|- rs1_val == -131073<br>                                                                            |[0x8000137c]:c.bnez a0, 249<br> [0x8000136e]:addi sp, sp, 1<br> [0x80001372]:jal zero, 22<br> [0x80001388]:sw sp, 248(ra)<br>  |
|  64|[0x8000430c]<br>0xFF76DFD4|- rs1_val == -262145<br>                                                                            |[0x800013a2]:c.bnez a0, 8<br> [0x800013b2]:c.addi sp, 3<br> [0x800013b4]:sw sp, 252(ra)<br>                                    |
|  65|[0x80004310]<br>0xFF76DFD7|- rs1_val == -524289<br>                                                                            |[0x800013ce]:c.bnez a0, 64<br> [0x8000144e]:c.addi sp, 3<br> [0x80001450]:sw sp, 256(ra)<br>                                   |
|  66|[0x80004314]<br>0xFF76DFD8|- rs1_val == -1048577<br>                                                                           |[0x80001476]:c.bnez a0, 246<br> [0x80001462]:addi sp, sp, 1<br> [0x80001466]:jal zero, 28<br> [0x80001482]:sw sp, 260(ra)<br>  |
|  67|[0x80004318]<br>0xFF76DFD9|- rs1_val == -2097153<br>                                                                           |[0x80001514]:c.bnez a0, 192<br> [0x80001494]:addi sp, sp, 1<br> [0x80001498]:jal zero, 136<br> [0x80001520]:sw sp, 264(ra)<br> |
|  68|[0x8000431c]<br>0xFF76DFDA|- rs1_val == -4194305<br>                                                                           |[0x8000153a]:c.bnez a0, 252<br> [0x80001532]:addi sp, sp, 1<br> [0x80001536]:jal zero, 16<br> [0x80001546]:sw sp, 268(ra)<br>  |
