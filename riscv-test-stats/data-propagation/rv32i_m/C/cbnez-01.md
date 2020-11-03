
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800012f0')]      |
| SIG_REGION                | [('0x80004204', '0x80004320', '71 words')]      |
| COV_LABELS                | cbnez      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cbnez-01.S/cbnez-01.S    |
| Total Number of coverpoints| 84     |
| Total Signature Updates   | 68      |
| Total Coverpoints Covered | 84      |
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
|   1|[0x80004210]<br>0xFF76DF59|- opcode : c.bnez<br> - rs1 : x15<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 16<br> |[0x80000112]:c.bnez a5, 5<br> [0x8000011c]:c.addi sp, 3<br> [0x8000011e]:sw sp, 0(ra)<br>                                      |
|   2|[0x80004214]<br>0xFF76DF5C|- rs1 : x8<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -67108865<br>                 |[0x80000138]:c.bnez s0, 64<br> [0x800001b8]:c.addi sp, 3<br> [0x800001ba]:sw sp, 4(ra)<br>                                     |
|   3|[0x80004218]<br>0xFF76DF5E|- rs1 : x11<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val > 0<br>                       |[0x800001d0]:c.bnez a1, 64<br> [0x800001d2]:addi sp, sp, 2<br> [0x800001d6]:jal zero, 124<br> [0x80000252]:sw sp, 8(ra)<br>    |
|   4|[0x8000421c]<br>0xFF76DF5F|- rs1 : x9<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 2048<br>                      |[0x80000272]:c.bnez s1, 249<br> [0x80000264]:addi sp, sp, 1<br> [0x80000268]:jal zero, 22<br> [0x8000027e]:sw sp, 12(ra)<br>   |
|   5|[0x80004220]<br>0xFF76DF60|- rs1 : x13<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -8388609<br>                 |[0x8000029c]:c.bnez a3, 250<br> [0x80000290]:addi sp, sp, 1<br> [0x80000294]:jal zero, 20<br> [0x800002a8]:sw sp, 16(ra)<br>   |
|   6|[0x80004224]<br>0xFF76DF62|- rs1 : x14<br> - rs1_val == 0 and imm_val < 0<br>                                          |[0x800002be]:c.bnez a4, 252<br> [0x800002c0]:addi sp, sp, 2<br> [0x800002c4]:jal zero, 6<br> [0x800002ca]:sw sp, 20(ra)<br>    |
|   7|[0x80004228]<br>0xFF76DF65|- rs1 : x12<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                |[0x800002e0]:c.bnez a2, 16<br> [0x80000300]:c.addi sp, 3<br> [0x80000302]:sw sp, 24(ra)<br>                                    |
|   8|[0x8000422c]<br>0xFF76DF66|- rs1 : x10<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                |[0x80000328]:c.bnez a0, 246<br> [0x80000314]:addi sp, sp, 1<br> [0x80000318]:jal zero, 28<br> [0x80000334]:sw sp, 28(ra)<br>   |
|   9|[0x80004230]<br>0xFF76DF67|- rs1_val == 1<br>                                                                          |[0x8000034a]:c.bnez a0, 252<br> [0x80000342]:addi sp, sp, 1<br> [0x80000346]:jal zero, 16<br> [0x80000356]:sw sp, 32(ra)<br>   |
|  10|[0x80004234]<br>0xFF76DF68|- rs1_val == 2<br>                                                                          |[0x800003e6]:c.bnez a0, 191<br> [0x80000364]:addi sp, sp, 1<br> [0x80000368]:jal zero, 138<br> [0x800003f2]:sw sp, 36(ra)<br>  |
|  11|[0x80004238]<br>0xFF76DF6B|- rs1_val == 4<br>                                                                          |[0x80000408]:c.bnez a0, 6<br> [0x80000414]:c.addi sp, 3<br> [0x80000416]:sw sp, 40(ra)<br>                                     |
|  12|[0x8000423c]<br>0xFF76DF6E|- rs1_val == 8<br>                                                                          |[0x8000042c]:c.bnez a0, 5<br> [0x80000436]:c.addi sp, 3<br> [0x80000438]:sw sp, 44(ra)<br>                                     |
|  13|[0x80004240]<br>0xFF76DF6F|- rs1_val == 32<br>                                                                         |[0x80000458]:c.bnez a0, 247<br> [0x80000446]:addi sp, sp, 1<br> [0x8000044a]:jal zero, 26<br> [0x80000464]:sw sp, 48(ra)<br>   |
|  14|[0x80004244]<br>0xFF76DF70|- rs1_val == 64<br>                                                                         |[0x800004f2]:c.bnez a0, 192<br> [0x80000472]:addi sp, sp, 1<br> [0x80000476]:jal zero, 136<br> [0x800004fe]:sw sp, 52(ra)<br>  |
|  15|[0x80004248]<br>0xFF76DF73|- rs1_val == 128<br>                                                                        |[0x80000514]:c.bnez a0, 7<br> [0x80000522]:c.addi sp, 3<br> [0x80000524]:sw sp, 56(ra)<br>                                     |
|  16|[0x8000424c]<br>0xFF76DF74|- rs1_val == 256<br>                                                                        |[0x80000554]:c.bnez a0, 239<br> [0x80000532]:addi sp, sp, 1<br> [0x80000536]:jal zero, 42<br> [0x80000560]:sw sp, 60(ra)<br>   |
|  17|[0x80004250]<br>0xFF76DF75|- rs1_val == 512<br>                                                                        |[0x80000576]:c.bnez a0, 252<br> [0x8000056e]:addi sp, sp, 1<br> [0x80000572]:jal zero, 16<br> [0x80000582]:sw sp, 64(ra)<br>   |
|  18|[0x80004254]<br>0xFF76DF76|- rs1_val == 1024<br>                                                                       |[0x80000598]:c.bnez a0, 252<br> [0x80000590]:addi sp, sp, 1<br> [0x80000594]:jal zero, 16<br> [0x800005a4]:sw sp, 68(ra)<br>   |
|  19|[0x80004258]<br>0xFF76DF77|- rs1_val == 4096<br>                                                                       |[0x800005ba]:c.bnez a0, 252<br> [0x800005b2]:addi sp, sp, 1<br> [0x800005b6]:jal zero, 16<br> [0x800005c6]:sw sp, 72(ra)<br>   |
|  20|[0x8000425c]<br>0xFF76DF7A|- rs1_val == 8192<br>                                                                       |[0x800005dc]:c.bnez a0, 8<br> [0x800005ec]:c.addi sp, 3<br> [0x800005ee]:sw sp, 76(ra)<br>                                     |
|  21|[0x80004260]<br>0xFF76DF7B|- rs1_val == 16384<br>                                                                      |[0x80000604]:c.bnez a0, 252<br> [0x800005fc]:addi sp, sp, 1<br> [0x80000600]:jal zero, 16<br> [0x80000610]:sw sp, 80(ra)<br>   |
|  22|[0x80004264]<br>0xFF76DF7E|- rs1_val == 32768<br>                                                                      |[0x80000626]:c.bnez a0, 5<br> [0x80000630]:c.addi sp, 3<br> [0x80000632]:sw sp, 84(ra)<br>                                     |
|  23|[0x80004268]<br>0xFF76DF7F|- rs1_val == 65536<br>                                                                      |[0x80000648]:c.bnez a0, 252<br> [0x80000640]:addi sp, sp, 1<br> [0x80000644]:jal zero, 16<br> [0x80000654]:sw sp, 88(ra)<br>   |
|  24|[0x8000426c]<br>0xFF76DF82|- rs1_val == 131072<br>                                                                     |[0x8000066a]:c.bnez a0, 5<br> [0x80000674]:c.addi sp, 3<br> [0x80000676]:sw sp, 92(ra)<br>                                     |
|  25|[0x80004270]<br>0xFF76DF83|- rs1_val == 262144<br>                                                                     |[0x8000068c]:c.bnez a0, 252<br> [0x80000684]:addi sp, sp, 1<br> [0x80000688]:jal zero, 16<br> [0x80000698]:sw sp, 96(ra)<br>   |
|  26|[0x80004274]<br>0xFF76DF84|- rs1_val == 524288<br>                                                                     |[0x800006b0]:c.bnez a0, 251<br> [0x800006a6]:addi sp, sp, 1<br> [0x800006aa]:jal zero, 18<br> [0x800006bc]:sw sp, 100(ra)<br>  |
|  27|[0x80004278]<br>0xFF76DF87|- rs1_val == 1048576<br>                                                                    |[0x800006d2]:c.bnez a0, 5<br> [0x800006dc]:c.addi sp, 3<br> [0x800006de]:sw sp, 104(ra)<br>                                    |
|  28|[0x8000427c]<br>0xFF76DF88|- rs1_val == 2097152<br>                                                                    |[0x800006fc]:c.bnez a0, 248<br> [0x800006ec]:addi sp, sp, 1<br> [0x800006f0]:jal zero, 24<br> [0x80000708]:sw sp, 108(ra)<br>  |
|  29|[0x80004280]<br>0xFF76DF89|- rs1_val == 4194304<br>                                                                    |[0x80000724]:c.bnez a0, 249<br> [0x80000716]:addi sp, sp, 1<br> [0x8000071a]:jal zero, 22<br> [0x80000730]:sw sp, 112(ra)<br>  |
|  30|[0x80004284]<br>0xFF76DF8A|- rs1_val == 8388608<br>                                                                    |[0x80000746]:c.bnez a0, 252<br> [0x8000073e]:addi sp, sp, 1<br> [0x80000742]:jal zero, 16<br> [0x80000752]:sw sp, 116(ra)<br>  |
|  31|[0x80004288]<br>0xFF76DF8B|- rs1_val == 16777216<br>                                                                   |[0x80000782]:c.bnez a0, 239<br> [0x80000760]:addi sp, sp, 1<br> [0x80000764]:jal zero, 42<br> [0x8000078e]:sw sp, 120(ra)<br>  |
|  32|[0x8000428c]<br>0xFF76DF8C|- rs1_val == 33554432<br>                                                                   |[0x800007a8]:c.bnez a0, 250<br> [0x8000079c]:addi sp, sp, 1<br> [0x800007a0]:jal zero, 20<br> [0x800007b4]:sw sp, 124(ra)<br>  |
|  33|[0x80004290]<br>0xFF76DF8D|- rs1_val == 67108864<br>                                                                   |[0x800007ca]:c.bnez a0, 252<br> [0x800007c2]:addi sp, sp, 1<br> [0x800007c6]:jal zero, 16<br> [0x800007d6]:sw sp, 128(ra)<br>  |
|  34|[0x80004294]<br>0xFF76DF90|- rs1_val == 134217728<br>                                                                  |[0x800007ec]:c.bnez a0, 85<br> [0x80000896]:c.addi sp, 3<br> [0x80000898]:sw sp, 132(ra)<br>                                   |
|  35|[0x80004298]<br>0xFF76DF93|- rs1_val == 268435456<br>                                                                  |[0x800008ae]:c.bnez a0, 5<br> [0x800008b8]:c.addi sp, 3<br> [0x800008ba]:sw sp, 136(ra)<br>                                    |
|  36|[0x8000429c]<br>0xFF76DF94|- rs1_val == 536870912<br>                                                                  |[0x800008da]:c.bnez a0, 247<br> [0x800008c8]:addi sp, sp, 1<br> [0x800008cc]:jal zero, 26<br> [0x800008e6]:sw sp, 140(ra)<br>  |
|  37|[0x800042a0]<br>0xFF76DF95|- rs1_val == 1073741824<br>                                                                 |[0x80000974]:c.bnez a0, 192<br> [0x800008f4]:addi sp, sp, 1<br> [0x800008f8]:jal zero, 136<br> [0x80000980]:sw sp, 144(ra)<br> |
|  38|[0x800042a4]<br>0xFF76DF98|- rs1_val == -16777217<br>                                                                  |[0x8000099a]:c.bnez a0, 5<br> [0x800009a4]:c.addi sp, 3<br> [0x800009a6]:sw sp, 148(ra)<br>                                    |
|  39|[0x800042a8]<br>0xFF76DF99|- rs1_val == -33554433<br>                                                                  |[0x80000a38]:c.bnez a0, 192<br> [0x800009b8]:addi sp, sp, 1<br> [0x800009bc]:jal zero, 136<br> [0x80000a44]:sw sp, 152(ra)<br> |
|  40|[0x800042ac]<br>0xFF76DF9C|- rs1_val == -134217729<br>                                                                 |[0x80000a5e]:c.bnez a0, 85<br> [0x80000b08]:c.addi sp, 3<br> [0x80000b0a]:sw sp, 156(ra)<br>                                   |
|  41|[0x800042b0]<br>0xFF76DF9D|- rs1_val == -268435457<br>                                                                 |[0x80000b3e]:c.bnez a0, 239<br> [0x80000b1c]:addi sp, sp, 1<br> [0x80000b20]:jal zero, 42<br> [0x80000b4a]:sw sp, 160(ra)<br>  |
|  42|[0x800042b4]<br>0xFF76DFA0|- rs1_val == -536870913<br>                                                                 |[0x80000b64]:c.bnez a0, 64<br> [0x80000be4]:c.addi sp, 3<br> [0x80000be6]:sw sp, 164(ra)<br>                                   |
|  43|[0x800042b8]<br>0xFF76DFA1|- rs1_val == -1073741825<br>                                                                |[0x80000c78]:c.bnez a0, 192<br> [0x80000bf8]:addi sp, sp, 1<br> [0x80000bfc]:jal zero, 136<br> [0x80000c84]:sw sp, 168(ra)<br> |
|  44|[0x800042bc]<br>0xFF76DFA4|- rs1_val == 1431655765<br>                                                                 |[0x80000c9e]:c.bnez a0, 5<br> [0x80000ca8]:c.addi sp, 3<br> [0x80000caa]:sw sp, 172(ra)<br>                                    |
|  45|[0x800042c0]<br>0xFF76DFA7|- rs1_val == -1431655766<br>                                                                |[0x80000cc4]:c.bnez a0, 85<br> [0x80000d6e]:c.addi sp, 3<br> [0x80000d70]:sw sp, 176(ra)<br>                                   |
|  46|[0x800042c4]<br>0xFF76DFAA|- rs1_val == -2<br>                                                                         |[0x80000d86]:c.bnez a0, 6<br> [0x80000d92]:c.addi sp, 3<br> [0x80000d94]:sw sp, 180(ra)<br>                                    |
|  47|[0x800042c8]<br>0xFF76DFAD|- rs1_val == -3<br>                                                                         |[0x80000daa]:c.bnez a0, 32<br> [0x80000dea]:c.addi sp, 3<br> [0x80000dec]:sw sp, 184(ra)<br>                                   |
|  48|[0x800042cc]<br>0xFF76DFAE|- rs1_val == -5<br>                                                                         |[0x80000e02]:c.bnez a0, 252<br> [0x80000dfa]:addi sp, sp, 1<br> [0x80000dfe]:jal zero, 16<br> [0x80000e0e]:sw sp, 188(ra)<br>  |
|  49|[0x800042d0]<br>0xFF76DFAF|- rs1_val == -9<br>                                                                         |[0x80000e24]:c.bnez a0, 252<br> [0x80000e1c]:addi sp, sp, 1<br> [0x80000e20]:jal zero, 16<br> [0x80000e30]:sw sp, 192(ra)<br>  |
|  50|[0x800042d4]<br>0xFF76DFB2|- rs1_val == -17<br>                                                                        |[0x80000e46]:c.bnez a0, 9<br> [0x80000e58]:c.addi sp, 3<br> [0x80000e5a]:sw sp, 196(ra)<br>                                    |
|  51|[0x800042d8]<br>0xFF76DFB3|- rs1_val == -33<br>                                                                        |[0x80000e8a]:c.bnez a0, 239<br> [0x80000e68]:addi sp, sp, 1<br> [0x80000e6c]:jal zero, 42<br> [0x80000e96]:sw sp, 200(ra)<br>  |
|  52|[0x800042dc]<br>0xFF76DFB4|- rs1_val == -65<br>                                                                        |[0x80000eac]:c.bnez a0, 252<br> [0x80000ea4]:addi sp, sp, 1<br> [0x80000ea8]:jal zero, 16<br> [0x80000eb8]:sw sp, 204(ra)<br>  |
|  53|[0x800042e0]<br>0xFF76DFB5|- rs1_val == -129<br>                                                                       |[0x80000ed6]:c.bnez a0, 248<br> [0x80000ec6]:addi sp, sp, 1<br> [0x80000eca]:jal zero, 24<br> [0x80000ee2]:sw sp, 208(ra)<br>  |
|  54|[0x800042e4]<br>0xFF76DFB8|- rs1_val == -257<br>                                                                       |[0x80000ef8]:c.bnez a0, 5<br> [0x80000f02]:c.addi sp, 3<br> [0x80000f04]:sw sp, 212(ra)<br>                                    |
|  55|[0x800042e8]<br>0xFF76DFBB|- rs1_val == -513<br>                                                                       |[0x80000f1a]:c.bnez a0, 5<br> [0x80000f24]:c.addi sp, 3<br> [0x80000f26]:sw sp, 216(ra)<br>                                    |
|  56|[0x800042ec]<br>0xFF76DFBC|- rs1_val == -1025<br>                                                                      |[0x80000f46]:c.bnez a0, 247<br> [0x80000f34]:addi sp, sp, 1<br> [0x80000f38]:jal zero, 26<br> [0x80000f52]:sw sp, 220(ra)<br>  |
|  57|[0x800042f0]<br>0xFF76DFBD|- rs1_val == -2049<br>                                                                      |[0x80000f72]:c.bnez a0, 249<br> [0x80000f64]:addi sp, sp, 1<br> [0x80000f68]:jal zero, 22<br> [0x80000f7e]:sw sp, 224(ra)<br>  |
|  58|[0x800042f4]<br>0xFF76DFC0|- rs1_val == -4097<br>                                                                      |[0x80000f98]:c.bnez a0, 16<br> [0x80000fb8]:c.addi sp, 3<br> [0x80000fba]:sw sp, 228(ra)<br>                                   |
|  59|[0x800042f8]<br>0xFF76DFC3|- rs1_val == -8193<br>                                                                      |[0x80000fd4]:c.bnez a0, 32<br> [0x80001014]:c.addi sp, 3<br> [0x80001016]:sw sp, 232(ra)<br>                                   |
|  60|[0x800042fc]<br>0xFF76DFC4|- rs1_val == -16385<br>                                                                     |[0x80001032]:c.bnez a0, 251<br> [0x80001028]:addi sp, sp, 1<br> [0x8000102c]:jal zero, 18<br> [0x8000103e]:sw sp, 236(ra)<br>  |
|  61|[0x80004300]<br>0xFF76DFC5|- rs1_val == -32769<br>                                                                     |[0x80001092]:c.bnez a0, 223<br> [0x80001050]:addi sp, sp, 1<br> [0x80001054]:jal zero, 74<br> [0x8000109e]:sw sp, 240(ra)<br>  |
|  62|[0x80004304]<br>0xFF76DFC6|- rs1_val == -65537<br>                                                                     |[0x800010b8]:c.bnez a0, 252<br> [0x800010b0]:addi sp, sp, 1<br> [0x800010b4]:jal zero, 16<br> [0x800010c4]:sw sp, 244(ra)<br>  |
|  63|[0x80004308]<br>0xFF76DFC9|- rs1_val == -131073<br>                                                                    |[0x800010de]:c.bnez a0, 85<br> [0x80001188]:c.addi sp, 3<br> [0x8000118a]:sw sp, 248(ra)<br>                                   |
|  64|[0x8000430c]<br>0xFF76DFCC|- rs1_val == -262145<br>                                                                    |[0x800011a4]:c.bnez a0, 85<br> [0x8000124e]:c.addi sp, 3<br> [0x80001250]:sw sp, 252(ra)<br>                                   |
|  65|[0x80004310]<br>0xFF76DFCF|- rs1_val == -524289<br>                                                                    |[0x8000126a]:c.bnez a0, 5<br> [0x80001274]:c.addi sp, 3<br> [0x80001276]:sw sp, 256(ra)<br>                                    |
|  66|[0x80004314]<br>0xFF76DFD0|- rs1_val == -1048577<br>                                                                   |[0x80001290]:c.bnez a0, 252<br> [0x80001288]:addi sp, sp, 1<br> [0x8000128c]:jal zero, 16<br> [0x8000129c]:sw sp, 260(ra)<br>  |
|  67|[0x80004318]<br>0xFF76DFD1|- rs1_val == -2097153<br>                                                                   |[0x800012b6]:c.bnez a0, 252<br> [0x800012ae]:addi sp, sp, 1<br> [0x800012b2]:jal zero, 16<br> [0x800012c2]:sw sp, 264(ra)<br>  |
|  68|[0x8000431c]<br>0xFF76DFD2|- rs1_val == -4194305<br>                                                                   |[0x800012e0]:c.bnez a0, 250<br> [0x800012d4]:addi sp, sp, 1<br> [0x800012d8]:jal zero, 20<br> [0x800012ec]:sw sp, 268(ra)<br>  |
