
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80001330')]      |
| SIG_REGION                | [('0x80004204', '0x80004314', '68 words')]      |
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

|s.no|        signature         |                                        coverpoints                                         |                                                             code                                                              |
|---:|--------------------------|--------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80004204]<br>0xFF76DF59|- opcode : c.bnez<br> - rs1 : x13<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 64<br> |[0x80000112]:c.bnez a3, 7<br> [0x80000120]:c.addi sp, 3<br> [0x80000122]:sw sp, 0(ra)<br>                                      |
|   2|[0x80004208]<br>0xFF76DF5C|- rs1 : x10<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -67108865<br>                |[0x8000013c]:c.bnez a0, 64<br> [0x800001bc]:c.addi sp, 3<br> [0x800001be]:sw sp, 4(ra)<br>                                     |
|   3|[0x8000420c]<br>0xFF76DF5E|- rs1 : x9<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val > 0<br>                        |[0x800001d4]:c.bnez s1, 7<br> [0x800001d6]:addi sp, sp, 2<br> [0x800001da]:jal zero, 10<br> [0x800001e4]:sw sp, 8(ra)<br>      |
|   4|[0x80004210]<br>0xFF76DF5F|- rs1 : x15<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 16777216<br>                 |[0x80000272]:c.bnez a5, 192<br> [0x800001f2]:addi sp, sp, 1<br> [0x800001f6]:jal zero, 136<br> [0x8000027e]:sw sp, 12(ra)<br>  |
|   5|[0x80004214]<br>0xFF76DF60|- rs1 : x8<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -9<br>                        |[0x8000029a]:c.bnez s0, 249<br> [0x8000028c]:addi sp, sp, 1<br> [0x80000290]:jal zero, 22<br> [0x800002a6]:sw sp, 16(ra)<br>   |
|   6|[0x80004218]<br>0xFF76DF62|- rs1 : x11<br> - rs1_val == 0 and imm_val < 0<br>                                          |[0x800002c4]:c.bnez a1, 248<br> [0x800002c6]:addi sp, sp, 2<br> [0x800002ca]:jal zero, 6<br> [0x800002d0]:sw sp, 20(ra)<br>    |
|   7|[0x8000421c]<br>0xFF76DF63|- rs1 : x12<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                |[0x800002e6]:c.bnez a2, 252<br> [0x800002de]:addi sp, sp, 1<br> [0x800002e2]:jal zero, 16<br> [0x800002f2]:sw sp, 24(ra)<br>   |
|   8|[0x80004220]<br>0xFF76DF66|- rs1 : x14<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                |[0x8000030c]:c.bnez a4, 6<br> [0x80000318]:c.addi sp, 3<br> [0x8000031a]:sw sp, 28(ra)<br>                                     |
|   9|[0x80004224]<br>0xFF76DF67|- rs1_val == 1<br>                                                                          |[0x80000332]:c.bnez a0, 251<br> [0x80000328]:addi sp, sp, 1<br> [0x8000032c]:jal zero, 18<br> [0x8000033e]:sw sp, 32(ra)<br>   |
|  10|[0x80004228]<br>0xFF76DF68|- rs1_val == 2<br>                                                                          |[0x80000358]:c.bnez a0, 250<br> [0x8000034c]:addi sp, sp, 1<br> [0x80000350]:jal zero, 20<br> [0x80000364]:sw sp, 36(ra)<br>   |
|  11|[0x8000422c]<br>0xFF76DF69|- rs1_val == 4<br>                                                                          |[0x800003f2]:c.bnez a0, 192<br> [0x80000372]:addi sp, sp, 1<br> [0x80000376]:jal zero, 136<br> [0x800003fe]:sw sp, 40(ra)<br>  |
|  12|[0x80004230]<br>0xFF76DF6C|- rs1_val == 8<br>                                                                          |[0x80000414]:c.bnez a0, 9<br> [0x80000426]:c.addi sp, 3<br> [0x80000428]:sw sp, 44(ra)<br>                                     |
|  13|[0x80004234]<br>0xFF76DF6D|- rs1_val == 16<br>                                                                         |[0x8000043e]:c.bnez a0, 252<br> [0x80000436]:addi sp, sp, 1<br> [0x8000043a]:jal zero, 16<br> [0x8000044a]:sw sp, 48(ra)<br>   |
|  14|[0x80004238]<br>0xFF76DF6E|- rs1_val == 32<br>                                                                         |[0x8000046c]:c.bnez a0, 246<br> [0x80000458]:addi sp, sp, 1<br> [0x8000045c]:jal zero, 28<br> [0x80000478]:sw sp, 52(ra)<br>   |
|  15|[0x8000423c]<br>0xFF76DF71|- rs1_val == 128<br>                                                                        |[0x8000048e]:c.bnez a0, 5<br> [0x80000498]:c.addi sp, 3<br> [0x8000049a]:sw sp, 56(ra)<br>                                     |
|  16|[0x80004240]<br>0xFF76DF72|- rs1_val == 256<br>                                                                        |[0x80000554]:c.bnez a0, 170<br> [0x800004a8]:addi sp, sp, 1<br> [0x800004ac]:jal zero, 180<br> [0x80000560]:sw sp, 60(ra)<br>  |
|  17|[0x80004244]<br>0xFF76DF73|- rs1_val == 512<br>                                                                        |[0x8000057e]:c.bnez a0, 248<br> [0x8000056e]:addi sp, sp, 1<br> [0x80000572]:jal zero, 24<br> [0x8000058a]:sw sp, 64(ra)<br>   |
|  18|[0x80004248]<br>0xFF76DF76|- rs1_val == 1024<br>                                                                       |[0x800005a0]:c.bnez a0, 32<br> [0x800005e0]:c.addi sp, 3<br> [0x800005e2]:sw sp, 68(ra)<br>                                    |
|  19|[0x8000424c]<br>0xFF76DF79|- rs1_val == 2048<br>                                                                       |[0x800005fc]:c.bnez a0, 5<br> [0x80000606]:c.addi sp, 3<br> [0x80000608]:sw sp, 72(ra)<br>                                     |
|  20|[0x80004250]<br>0xFF76DF7A|- rs1_val == 4096<br>                                                                       |[0x80000624]:c.bnez a0, 249<br> [0x80000616]:addi sp, sp, 1<br> [0x8000061a]:jal zero, 22<br> [0x80000630]:sw sp, 76(ra)<br>   |
|  21|[0x80004254]<br>0xFF76DF7D|- rs1_val == 8192<br>                                                                       |[0x80000646]:c.bnez a0, 9<br> [0x80000658]:c.addi sp, 3<br> [0x8000065a]:sw sp, 80(ra)<br>                                     |
|  22|[0x80004258]<br>0xFF76DF7E|- rs1_val == 16384<br>                                                                      |[0x800006aa]:c.bnez a0, 223<br> [0x80000668]:addi sp, sp, 1<br> [0x8000066c]:jal zero, 74<br> [0x800006b6]:sw sp, 84(ra)<br>   |
|  23|[0x8000425c]<br>0xFF76DF7F|- rs1_val == 32768<br>                                                                      |[0x800006cc]:c.bnez a0, 252<br> [0x800006c4]:addi sp, sp, 1<br> [0x800006c8]:jal zero, 16<br> [0x800006d8]:sw sp, 88(ra)<br>   |
|  24|[0x80004260]<br>0xFF76DF82|- rs1_val == 65536<br>                                                                      |[0x800006ee]:c.bnez a0, 63<br> [0x8000076c]:c.addi sp, 3<br> [0x8000076e]:sw sp, 92(ra)<br>                                    |
|  25|[0x80004264]<br>0xFF76DF83|- rs1_val == 131072<br>                                                                     |[0x800007fe]:c.bnez a0, 191<br> [0x8000077c]:addi sp, sp, 1<br> [0x80000780]:jal zero, 138<br> [0x8000080a]:sw sp, 96(ra)<br>  |
|  26|[0x80004268]<br>0xFF76DF86|- rs1_val == 262144<br>                                                                     |[0x80000820]:c.bnez a0, 7<br> [0x8000082e]:c.addi sp, 3<br> [0x80000830]:sw sp, 100(ra)<br>                                    |
|  27|[0x8000426c]<br>0xFF76DF89|- rs1_val == 524288<br>                                                                     |[0x80000846]:c.bnez a0, 5<br> [0x80000850]:c.addi sp, 3<br> [0x80000852]:sw sp, 104(ra)<br>                                    |
|  28|[0x80004270]<br>0xFF76DF8A|- rs1_val == 1048576<br>                                                                    |[0x8000086e]:c.bnez a0, 249<br> [0x80000860]:addi sp, sp, 1<br> [0x80000864]:jal zero, 22<br> [0x8000087a]:sw sp, 108(ra)<br>  |
|  29|[0x80004274]<br>0xFF76DF8D|- rs1_val == 2097152<br>                                                                    |[0x80000890]:c.bnez a0, 8<br> [0x800008a0]:c.addi sp, 3<br> [0x800008a2]:sw sp, 112(ra)<br>                                    |
|  30|[0x80004278]<br>0xFF76DF8E|- rs1_val == 4194304<br>                                                                    |[0x800008d2]:c.bnez a0, 239<br> [0x800008b0]:addi sp, sp, 1<br> [0x800008b4]:jal zero, 42<br> [0x800008de]:sw sp, 116(ra)<br>  |
|  31|[0x8000427c]<br>0xFF76DF8F|- rs1_val == 8388608<br>                                                                    |[0x800008fa]:c.bnez a0, 249<br> [0x800008ec]:addi sp, sp, 1<br> [0x800008f0]:jal zero, 22<br> [0x80000906]:sw sp, 120(ra)<br>  |
|  32|[0x80004280]<br>0xFF76DF90|- rs1_val == 33554432<br>                                                                   |[0x80000996]:c.bnez a0, 191<br> [0x80000914]:addi sp, sp, 1<br> [0x80000918]:jal zero, 138<br> [0x800009a2]:sw sp, 124(ra)<br> |
|  33|[0x80004284]<br>0xFF76DF93|- rs1_val == 67108864<br>                                                                   |[0x800009b8]:c.bnez a0, 32<br> [0x800009f8]:c.addi sp, 3<br> [0x800009fa]:sw sp, 128(ra)<br>                                   |
|  34|[0x80004288]<br>0xFF76DF94|- rs1_val == 134217728<br>                                                                  |[0x80000a10]:c.bnez a0, 252<br> [0x80000a08]:addi sp, sp, 1<br> [0x80000a0c]:jal zero, 16<br> [0x80000a1c]:sw sp, 132(ra)<br>  |
|  35|[0x8000428c]<br>0xFF76DF95|- rs1_val == 268435456<br>                                                                  |[0x80000a36]:c.bnez a0, 250<br> [0x80000a2a]:addi sp, sp, 1<br> [0x80000a2e]:jal zero, 20<br> [0x80000a42]:sw sp, 136(ra)<br>  |
|  36|[0x80004290]<br>0xFF76DF96|- rs1_val == 536870912<br>                                                                  |[0x80000a64]:c.bnez a0, 246<br> [0x80000a50]:addi sp, sp, 1<br> [0x80000a54]:jal zero, 28<br> [0x80000a70]:sw sp, 140(ra)<br>  |
|  37|[0x80004294]<br>0xFF76DF97|- rs1_val == 1073741824<br>                                                                 |[0x80000ac0]:c.bnez a0, 223<br> [0x80000a7e]:addi sp, sp, 1<br> [0x80000a82]:jal zero, 74<br> [0x80000acc]:sw sp, 144(ra)<br>  |
|  38|[0x80004298]<br>0xFF76DF98|- rs1_val == -8388609<br>                                                                   |[0x80000b20]:c.bnez a0, 223<br> [0x80000ade]:addi sp, sp, 1<br> [0x80000ae2]:jal zero, 74<br> [0x80000b2c]:sw sp, 148(ra)<br>  |
|  39|[0x8000429c]<br>0xFF76DF99|- rs1_val == -16777217<br>                                                                  |[0x80000b48]:c.bnez a0, 251<br> [0x80000b3e]:addi sp, sp, 1<br> [0x80000b42]:jal zero, 18<br> [0x80000b54]:sw sp, 152(ra)<br>  |
|  40|[0x800042a0]<br>0xFF76DF9A|- rs1_val == -33554433<br>                                                                  |[0x80000b72]:c.bnez a0, 250<br> [0x80000b66]:addi sp, sp, 1<br> [0x80000b6a]:jal zero, 20<br> [0x80000b7e]:sw sp, 156(ra)<br>  |
|  41|[0x800042a4]<br>0xFF76DF9D|- rs1_val == -134217729<br>                                                                 |[0x80000b98]:c.bnez a0, 7<br> [0x80000ba6]:c.addi sp, 3<br> [0x80000ba8]:sw sp, 160(ra)<br>                                    |
|  42|[0x800042a8]<br>0xFF76DFA0|- rs1_val == -268435457<br>                                                                 |[0x80000bc2]:c.bnez a0, 5<br> [0x80000bcc]:c.addi sp, 3<br> [0x80000bce]:sw sp, 164(ra)<br>                                    |
|  43|[0x800042ac]<br>0xFF76DFA1|- rs1_val == -536870913<br>                                                                 |[0x80000bf0]:c.bnez a0, 248<br> [0x80000be0]:addi sp, sp, 1<br> [0x80000be4]:jal zero, 24<br> [0x80000bfc]:sw sp, 168(ra)<br>  |
|  44|[0x800042b0]<br>0xFF76DFA2|- rs1_val == -1073741825<br>                                                                |[0x80000c20]:c.bnez a0, 247<br> [0x80000c0e]:addi sp, sp, 1<br> [0x80000c12]:jal zero, 26<br> [0x80000c2c]:sw sp, 172(ra)<br>  |
|  45|[0x800042b4]<br>0xFF76DFA3|- rs1_val == 1431655765<br>                                                                 |[0x80000c4c]:c.bnez a0, 249<br> [0x80000c3e]:addi sp, sp, 1<br> [0x80000c42]:jal zero, 22<br> [0x80000c58]:sw sp, 176(ra)<br>  |
|  46|[0x800042b8]<br>0xFF76DFA4|- rs1_val == -1431655766<br>                                                                |[0x80000c7e]:c.bnez a0, 246<br> [0x80000c6a]:addi sp, sp, 1<br> [0x80000c6e]:jal zero, 28<br> [0x80000c8a]:sw sp, 180(ra)<br>  |
|  47|[0x800042bc]<br>0xFF76DFA7|- rs1_val == -2<br>                                                                         |[0x80000ca0]:c.bnez a0, 9<br> [0x80000cb2]:c.addi sp, 3<br> [0x80000cb4]:sw sp, 184(ra)<br>                                    |
|  48|[0x800042c0]<br>0xFF76DFAA|- rs1_val == -3<br>                                                                         |[0x80000cca]:c.bnez a0, 64<br> [0x80000d4a]:c.addi sp, 3<br> [0x80000d4c]:sw sp, 188(ra)<br>                                   |
|  49|[0x800042c4]<br>0xFF76DFAB|- rs1_val == -5<br>                                                                         |[0x80000d6c]:c.bnez a0, 247<br> [0x80000d5a]:addi sp, sp, 1<br> [0x80000d5e]:jal zero, 26<br> [0x80000d78]:sw sp, 192(ra)<br>  |
|  50|[0x800042c8]<br>0xFF76DFAC|- rs1_val == -17<br>                                                                        |[0x80000dc8]:c.bnez a0, 223<br> [0x80000d86]:addi sp, sp, 1<br> [0x80000d8a]:jal zero, 74<br> [0x80000dd4]:sw sp, 196(ra)<br>  |
|  51|[0x800042cc]<br>0xFF76DFAF|- rs1_val == -33<br>                                                                        |[0x80000dea]:c.bnez a0, 8<br> [0x80000dfa]:c.addi sp, 3<br> [0x80000dfc]:sw sp, 200(ra)<br>                                    |
|  52|[0x800042d0]<br>0xFF76DFB2|- rs1_val == -65<br>                                                                        |[0x80000e12]:c.bnez a0, 63<br> [0x80000e90]:c.addi sp, 3<br> [0x80000e92]:sw sp, 204(ra)<br>                                   |
|  53|[0x800042d4]<br>0xFF76DFB5|- rs1_val == -129<br>                                                                       |[0x80000ea8]:c.bnez a0, 63<br> [0x80000f26]:c.addi sp, 3<br> [0x80000f28]:sw sp, 208(ra)<br>                                   |
|  54|[0x800042d8]<br>0xFF76DFB8|- rs1_val == -257<br>                                                                       |[0x80000f3e]:c.bnez a0, 64<br> [0x80000fbe]:c.addi sp, 3<br> [0x80000fc0]:sw sp, 212(ra)<br>                                   |
|  55|[0x800042dc]<br>0xFF76DFB9|- rs1_val == -513<br>                                                                       |[0x80000fda]:c.bnez a0, 250<br> [0x80000fce]:addi sp, sp, 1<br> [0x80000fd2]:jal zero, 20<br> [0x80000fe6]:sw sp, 216(ra)<br>  |
|  56|[0x800042e0]<br>0xFF76DFBA|- rs1_val == -1025<br>                                                                      |[0x80001008]:c.bnez a0, 246<br> [0x80000ff4]:addi sp, sp, 1<br> [0x80000ff8]:jal zero, 28<br> [0x80001014]:sw sp, 220(ra)<br>  |
|  57|[0x800042e4]<br>0xFF76DFBB|- rs1_val == -2049<br>                                                                      |[0x80001034]:c.bnez a0, 249<br> [0x80001026]:addi sp, sp, 1<br> [0x8000102a]:jal zero, 22<br> [0x80001040]:sw sp, 224(ra)<br>  |
|  58|[0x800042e8]<br>0xFF76DFBC|- rs1_val == -4097<br>                                                                      |[0x8000105c]:c.bnez a0, 251<br> [0x80001052]:addi sp, sp, 1<br> [0x80001056]:jal zero, 18<br> [0x80001068]:sw sp, 228(ra)<br>  |
|  59|[0x800042ec]<br>0xFF76DFBF|- rs1_val == -8193<br>                                                                      |[0x80001082]:c.bnez a0, 5<br> [0x8000108c]:c.addi sp, 3<br> [0x8000108e]:sw sp, 232(ra)<br>                                    |
|  60|[0x800042f0]<br>0xFF76DFC2|- rs1_val == -16385<br>                                                                     |[0x800010a8]:c.bnez a0, 7<br> [0x800010b6]:c.addi sp, 3<br> [0x800010b8]:sw sp, 236(ra)<br>                                    |
|  61|[0x800042f4]<br>0xFF76DFC5|- rs1_val == -32769<br>                                                                     |[0x800010d2]:c.bnez a0, 85<br> [0x8000117c]:c.addi sp, 3<br> [0x8000117e]:sw sp, 240(ra)<br>                                   |
|  62|[0x800042f8]<br>0xFF76DFC6|- rs1_val == -65537<br>                                                                     |[0x80001198]:c.bnez a0, 252<br> [0x80001190]:addi sp, sp, 1<br> [0x80001194]:jal zero, 16<br> [0x800011a4]:sw sp, 244(ra)<br>  |
|  63|[0x800042fc]<br>0xFF76DFC7|- rs1_val == -131073<br>                                                                    |[0x800011c4]:c.bnez a0, 249<br> [0x800011b6]:addi sp, sp, 1<br> [0x800011ba]:jal zero, 22<br> [0x800011d0]:sw sp, 248(ra)<br>  |
|  64|[0x80004300]<br>0xFF76DFCA|- rs1_val == -262145<br>                                                                    |[0x800011ea]:c.bnez a0, 64<br> [0x8000126a]:c.addi sp, 3<br> [0x8000126c]:sw sp, 252(ra)<br>                                   |
|  65|[0x80004304]<br>0xFF76DFCD|- rs1_val == -524289<br>                                                                    |[0x80001286]:c.bnez a0, 5<br> [0x80001290]:c.addi sp, 3<br> [0x80001292]:sw sp, 256(ra)<br>                                    |
|  66|[0x80004308]<br>0xFF76DFCE|- rs1_val == -1048577<br>                                                                   |[0x800012c6]:c.bnez a0, 239<br> [0x800012a4]:addi sp, sp, 1<br> [0x800012a8]:jal zero, 42<br> [0x800012d2]:sw sp, 260(ra)<br>  |
|  67|[0x8000430c]<br>0xFF76DFD1|- rs1_val == -2097153<br>                                                                   |[0x800012ec]:c.bnez a0, 5<br> [0x800012f6]:c.addi sp, 3<br> [0x800012f8]:sw sp, 264(ra)<br>                                    |
|  68|[0x80004310]<br>0xFF76DFD2|- rs1_val == -4194305<br>                                                                   |[0x8000131c]:c.bnez a0, 247<br> [0x8000130a]:addi sp, sp, 1<br> [0x8000130e]:jal zero, 26<br> [0x80001328]:sw sp, 268(ra)<br>  |
