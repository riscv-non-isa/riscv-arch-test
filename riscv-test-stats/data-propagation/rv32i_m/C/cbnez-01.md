
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
| SIG_REGION                | [('0x80004204', '0x80004318', '69 words')]      |
| COV_LABELS                | cbnez      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cbnez-01.S/cbnez-01.S    |
| Total Number of coverpoints| 84     |
| Total Coverpoints Hit     | 84      |
| Total Signature Updates   | 69      |
| STAT1                     | 69      |
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

|s.no|        signature         |                                          coverpoints                                          |                                                             code                                                              |
|---:|--------------------------|-----------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80004204]<br>0xFF76DF59|- opcode : c.bnez<br> - rs1 : x10<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 65536<br> |[0x80000112]:c.bnez a0, 9<br> [0x80000124]:c.addi sp, 3<br> [0x80000126]:sw sp, 0(ra)<br>                                      |
|   2|[0x80004208]<br>0xFF76DF5C|- rs1 : x12<br> - rs1_val < 0 and imm_val > 0<br>                                              |[0x8000013c]:c.bnez a2, 85<br> [0x800001e6]:c.addi sp, 3<br> [0x800001e8]:sw sp, 4(ra)<br>                                     |
|   3|[0x8000420c]<br>0xFF76DF5E|- rs1 : x9<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val > 0<br>                           |[0x800001fe]:c.bnez s1, 32<br> [0x80000200]:addi sp, sp, 2<br> [0x80000204]:jal zero, 60<br> [0x80000240]:sw sp, 8(ra)<br>     |
|   4|[0x80004210]<br>0xFF76DF5F|- rs1 : x11<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 2097152<br>                     |[0x80000256]:c.bnez a1, 252<br> [0x8000024e]:addi sp, sp, 1<br> [0x80000252]:jal zero, 16<br> [0x80000262]:sw sp, 12(ra)<br>   |
|   5|[0x80004214]<br>0xFF76DF60|- rs1 : x8<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -33<br>                          |[0x800002f2]:c.bnez s0, 191<br> [0x80000270]:addi sp, sp, 1<br> [0x80000274]:jal zero, 138<br> [0x800002fe]:sw sp, 16(ra)<br>  |
|   6|[0x80004218]<br>0xFF76DF62|- rs1 : x14<br> - rs1_val == 0 and imm_val < 0<br>                                             |[0x80000320]:c.bnez a4, 246<br> [0x80000322]:addi sp, sp, 2<br> [0x80000326]:jal zero, 6<br> [0x8000032c]:sw sp, 20(ra)<br>    |
|   7|[0x8000421c]<br>0xFF76DF65|- rs1 : x15<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                   |[0x80000342]:c.bnez a5, 9<br> [0x80000354]:c.addi sp, 3<br> [0x80000356]:sw sp, 24(ra)<br>                                     |
|   8|[0x80004220]<br>0xFF76DF68|- rs1 : x13<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                   |[0x80000370]:c.bnez a3, 16<br> [0x80000390]:c.addi sp, 3<br> [0x80000392]:sw sp, 28(ra)<br>                                    |
|   9|[0x80004224]<br>0xFF76DF69|- rs1_val == 1<br>                                                                             |[0x800003c2]:c.bnez a0, 239<br> [0x800003a0]:addi sp, sp, 1<br> [0x800003a4]:jal zero, 42<br> [0x800003ce]:sw sp, 32(ra)<br>   |
|  10|[0x80004228]<br>0xFF76DF6A|- rs1_val == 2<br>                                                                             |[0x800003ea]:c.bnez a0, 249<br> [0x800003dc]:addi sp, sp, 1<br> [0x800003e0]:jal zero, 22<br> [0x800003f6]:sw sp, 36(ra)<br>   |
|  11|[0x8000422c]<br>0xFF76DF6D|- rs1_val == 4<br>                                                                             |[0x8000040c]:c.bnez a0, 63<br> [0x8000048a]:c.addi sp, 3<br> [0x8000048c]:sw sp, 40(ra)<br>                                    |
|  12|[0x80004230]<br>0xFF76DF6E|- rs1_val == 8<br>                                                                             |[0x800004a6]:c.bnez a0, 250<br> [0x8000049a]:addi sp, sp, 1<br> [0x8000049e]:jal zero, 20<br> [0x800004b2]:sw sp, 44(ra)<br>   |
|  13|[0x80004234]<br>0xFF76DF6F|- rs1_val == 16<br>                                                                            |[0x800004ca]:c.bnez a0, 251<br> [0x800004c0]:addi sp, sp, 1<br> [0x800004c4]:jal zero, 18<br> [0x800004d6]:sw sp, 48(ra)<br>   |
|  14|[0x80004238]<br>0xFF76DF72|- rs1_val == 32<br>                                                                            |[0x800004ec]:c.bnez a0, 85<br> [0x80000596]:c.addi sp, 3<br> [0x80000598]:sw sp, 52(ra)<br>                                    |
|  15|[0x8000423c]<br>0xFF76DF75|- rs1_val == 64<br>                                                                            |[0x800005ae]:c.bnez a0, 8<br> [0x800005be]:c.addi sp, 3<br> [0x800005c0]:sw sp, 56(ra)<br>                                     |
|  16|[0x80004240]<br>0xFF76DF76|- rs1_val == 128<br>                                                                           |[0x800005da]:c.bnez a0, 250<br> [0x800005ce]:addi sp, sp, 1<br> [0x800005d2]:jal zero, 20<br> [0x800005e6]:sw sp, 60(ra)<br>   |
|  17|[0x80004244]<br>0xFF76DF79|- rs1_val == 256<br>                                                                           |[0x800005fc]:c.bnez a0, 85<br> [0x800006a6]:c.addi sp, 3<br> [0x800006a8]:sw sp, 64(ra)<br>                                    |
|  18|[0x80004248]<br>0xFF76DF7A|- rs1_val == 512<br>                                                                           |[0x80000736]:c.bnez a0, 192<br> [0x800006b6]:addi sp, sp, 1<br> [0x800006ba]:jal zero, 136<br> [0x80000742]:sw sp, 68(ra)<br>  |
|  19|[0x8000424c]<br>0xFF76DF7D|- rs1_val == 1024<br>                                                                          |[0x80000758]:c.bnez a0, 5<br> [0x80000762]:c.addi sp, 3<br> [0x80000764]:sw sp, 72(ra)<br>                                     |
|  20|[0x80004250]<br>0xFF76DF80|- rs1_val == 2048<br>                                                                          |[0x8000077e]:c.bnez a0, 6<br> [0x8000078a]:c.addi sp, 3<br> [0x8000078c]:sw sp, 76(ra)<br>                                     |
|  21|[0x80004254]<br>0xFF76DF83|- rs1_val == 4096<br>                                                                          |[0x800007a2]:c.bnez a0, 5<br> [0x800007ac]:c.addi sp, 3<br> [0x800007ae]:sw sp, 80(ra)<br>                                     |
|  22|[0x80004258]<br>0xFF76DF84|- rs1_val == 8192<br>                                                                          |[0x800007c4]:c.bnez a0, 252<br> [0x800007bc]:addi sp, sp, 1<br> [0x800007c0]:jal zero, 16<br> [0x800007d0]:sw sp, 84(ra)<br>   |
|  23|[0x8000425c]<br>0xFF76DF87|- rs1_val == 16384<br>                                                                         |[0x800007e6]:c.bnez a0, 5<br> [0x800007f0]:c.addi sp, 3<br> [0x800007f2]:sw sp, 88(ra)<br>                                     |
|  24|[0x80004260]<br>0xFF76DF8A|- rs1_val == 32768<br>                                                                         |[0x80000808]:c.bnez a0, 5<br> [0x80000812]:c.addi sp, 3<br> [0x80000814]:sw sp, 92(ra)<br>                                     |
|  25|[0x80004264]<br>0xFF76DF8D|- rs1_val == 131072<br>                                                                        |[0x8000082a]:c.bnez a0, 6<br> [0x80000836]:c.addi sp, 3<br> [0x80000838]:sw sp, 96(ra)<br>                                     |
|  26|[0x80004268]<br>0xFF76DF8E|- rs1_val == 262144<br>                                                                        |[0x8000084e]:c.bnez a0, 252<br> [0x80000846]:addi sp, sp, 1<br> [0x8000084a]:jal zero, 16<br> [0x8000085a]:sw sp, 100(ra)<br>  |
|  27|[0x8000426c]<br>0xFF76DF8F|- rs1_val == 524288<br>                                                                        |[0x800008e8]:c.bnez a0, 192<br> [0x80000868]:addi sp, sp, 1<br> [0x8000086c]:jal zero, 136<br> [0x800008f4]:sw sp, 104(ra)<br> |
|  28|[0x80004270]<br>0xFF76DF90|- rs1_val == 1048576<br>                                                                       |[0x8000090e]:c.bnez a0, 250<br> [0x80000902]:addi sp, sp, 1<br> [0x80000906]:jal zero, 20<br> [0x8000091a]:sw sp, 108(ra)<br>  |
|  29|[0x80004274]<br>0xFF76DF93|- rs1_val == 4194304<br>                                                                       |[0x80000930]:c.bnez a0, 16<br> [0x80000950]:c.addi sp, 3<br> [0x80000952]:sw sp, 112(ra)<br>                                   |
|  30|[0x80004278]<br>0xFF76DF94|- rs1_val == 8388608<br>                                                                       |[0x80000972]:c.bnez a0, 247<br> [0x80000960]:addi sp, sp, 1<br> [0x80000964]:jal zero, 26<br> [0x8000097e]:sw sp, 116(ra)<br>  |
|  31|[0x8000427c]<br>0xFF76DF95|- rs1_val == 16777216<br>                                                                      |[0x8000099c]:c.bnez a0, 248<br> [0x8000098c]:addi sp, sp, 1<br> [0x80000990]:jal zero, 24<br> [0x800009a8]:sw sp, 120(ra)<br>  |
|  32|[0x80004280]<br>0xFF76DF98|- rs1_val == 33554432<br>                                                                      |[0x800009be]:c.bnez a0, 32<br> [0x800009fe]:c.addi sp, 3<br> [0x80000a00]:sw sp, 124(ra)<br>                                   |
|  33|[0x80004284]<br>0xFF76DF99|- rs1_val == 67108864<br>                                                                      |[0x80000a90]:c.bnez a0, 191<br> [0x80000a0e]:addi sp, sp, 1<br> [0x80000a12]:jal zero, 138<br> [0x80000a9c]:sw sp, 128(ra)<br> |
|  34|[0x80004288]<br>0xFF76DF9C|- rs1_val == 134217728<br>                                                                     |[0x80000ab2]:c.bnez a0, 85<br> [0x80000b5c]:c.addi sp, 3<br> [0x80000b5e]:sw sp, 132(ra)<br>                                   |
|  35|[0x8000428c]<br>0xFF76DF9F|- rs1_val == 268435456<br>                                                                     |[0x80000b74]:c.bnez a0, 6<br> [0x80000b80]:c.addi sp, 3<br> [0x80000b82]:sw sp, 136(ra)<br>                                    |
|  36|[0x80004290]<br>0xFF76DFA0|- rs1_val == 536870912<br>                                                                     |[0x80000c10]:c.bnez a0, 192<br> [0x80000b90]:addi sp, sp, 1<br> [0x80000b94]:jal zero, 136<br> [0x80000c1c]:sw sp, 140(ra)<br> |
|  37|[0x80004294]<br>0xFF76DFA3|- rs1_val == 1073741824<br>                                                                    |[0x80000c32]:c.bnez a0, 64<br> [0x80000cb2]:c.addi sp, 3<br> [0x80000cb4]:sw sp, 144(ra)<br>                                   |
|  38|[0x80004298]<br>0xFF76DFA4|- rs1_val == -2<br>                                                                            |[0x80000cce]:c.bnez a0, 250<br> [0x80000cc2]:addi sp, sp, 1<br> [0x80000cc6]:jal zero, 20<br> [0x80000cda]:sw sp, 148(ra)<br>  |
|  39|[0x8000429c]<br>0xFF76DFA7|- rs1_val == -8388609<br>                                                                      |[0x80000cf4]:c.bnez a0, 9<br> [0x80000d06]:c.addi sp, 3<br> [0x80000d08]:sw sp, 152(ra)<br>                                    |
|  40|[0x800042a0]<br>0xFF76DFA8|- rs1_val == -16777217<br>                                                                     |[0x80000d5c]:c.bnez a0, 223<br> [0x80000d1a]:addi sp, sp, 1<br> [0x80000d1e]:jal zero, 74<br> [0x80000d68]:sw sp, 156(ra)<br>  |
|  41|[0x800042a4]<br>0xFF76DFAB|- rs1_val == -33554433<br>                                                                     |[0x80000d82]:c.bnez a0, 6<br> [0x80000d8e]:c.addi sp, 3<br> [0x80000d90]:sw sp, 160(ra)<br>                                    |
|  42|[0x800042a8]<br>0xFF76DFAE|- rs1_val == -67108865<br>                                                                     |[0x80000daa]:c.bnez a0, 63<br> [0x80000e28]:c.addi sp, 3<br> [0x80000e2a]:sw sp, 164(ra)<br>                                   |
|  43|[0x800042ac]<br>0xFF76DFAF|- rs1_val == -134217729<br>                                                                    |[0x80000e4a]:c.bnez a0, 249<br> [0x80000e3c]:addi sp, sp, 1<br> [0x80000e40]:jal zero, 22<br> [0x80000e56]:sw sp, 168(ra)<br>  |
|  44|[0x800042b0]<br>0xFF76DFB0|- rs1_val == -268435457<br>                                                                    |[0x80000e72]:c.bnez a0, 251<br> [0x80000e68]:addi sp, sp, 1<br> [0x80000e6c]:jal zero, 18<br> [0x80000e7e]:sw sp, 172(ra)<br>  |
|  45|[0x800042b4]<br>0xFF76DFB1|- rs1_val == -536870913<br>                                                                    |[0x80000eb2]:c.bnez a0, 239<br> [0x80000e90]:addi sp, sp, 1<br> [0x80000e94]:jal zero, 42<br> [0x80000ebe]:sw sp, 176(ra)<br>  |
|  46|[0x800042b8]<br>0xFF76DFB4|- rs1_val == -1073741825<br>                                                                   |[0x80000ed8]:c.bnez a0, 63<br> [0x80000f56]:c.addi sp, 3<br> [0x80000f58]:sw sp, 180(ra)<br>                                   |
|  47|[0x800042bc]<br>0xFF76DFB5|- rs1_val == 1431655765<br>                                                                    |[0x80000f8c]:c.bnez a0, 239<br> [0x80000f6a]:addi sp, sp, 1<br> [0x80000f6e]:jal zero, 42<br> [0x80000f98]:sw sp, 184(ra)<br>  |
|  48|[0x800042c0]<br>0xFF76DFB8|- rs1_val == -1431655766<br>                                                                   |[0x80000fb2]:c.bnez a0, 85<br> [0x8000105c]:c.addi sp, 3<br> [0x8000105e]:sw sp, 188(ra)<br>                                   |
|  49|[0x800042c4]<br>0xFF76DFB9|- rs1_val == -3<br>                                                                            |[0x800010ae]:c.bnez a0, 223<br> [0x8000106c]:addi sp, sp, 1<br> [0x80001070]:jal zero, 74<br> [0x800010ba]:sw sp, 192(ra)<br>  |
|  50|[0x800042c8]<br>0xFF76DFBA|- rs1_val == -5<br>                                                                            |[0x800010d2]:c.bnez a0, 251<br> [0x800010c8]:addi sp, sp, 1<br> [0x800010cc]:jal zero, 18<br> [0x800010de]:sw sp, 196(ra)<br>  |
|  51|[0x800042cc]<br>0xFF76DFBD|- rs1_val == -9<br>                                                                            |[0x800010f4]:c.bnez a0, 5<br> [0x800010fe]:c.addi sp, 3<br> [0x80001100]:sw sp, 200(ra)<br>                                    |
|  52|[0x800042d0]<br>0xFF76DFC0|- rs1_val == -17<br>                                                                           |[0x80001116]:c.bnez a0, 5<br> [0x80001120]:c.addi sp, 3<br> [0x80001122]:sw sp, 204(ra)<br>                                    |
|  53|[0x800042d4]<br>0xFF76DFC3|- rs1_val == -65<br>                                                                           |[0x80001138]:c.bnez a0, 5<br> [0x80001142]:c.addi sp, 3<br> [0x80001144]:sw sp, 208(ra)<br>                                    |
|  54|[0x800042d8]<br>0xFF76DFC6|- rs1_val == -129<br>                                                                          |[0x8000115a]:c.bnez a0, 5<br> [0x80001164]:c.addi sp, 3<br> [0x80001166]:sw sp, 212(ra)<br>                                    |
|  55|[0x800042dc]<br>0xFF76DFC7|- rs1_val == -257<br>                                                                          |[0x8000117c]:c.bnez a0, 252<br> [0x80001174]:addi sp, sp, 1<br> [0x80001178]:jal zero, 16<br> [0x80001188]:sw sp, 216(ra)<br>  |
|  56|[0x800042e0]<br>0xFF76DFCA|- rs1_val == -513<br>                                                                          |[0x8000119e]:c.bnez a0, 85<br> [0x80001248]:c.addi sp, 3<br> [0x8000124a]:sw sp, 220(ra)<br>                                   |
|  57|[0x800042e4]<br>0xFF76DFCB|- rs1_val == -1025<br>                                                                         |[0x80001260]:c.bnez a0, 252<br> [0x80001258]:addi sp, sp, 1<br> [0x8000125c]:jal zero, 16<br> [0x8000126c]:sw sp, 224(ra)<br>  |
|  58|[0x800042e8]<br>0xFF76DFCE|- rs1_val == -2049<br>                                                                         |[0x80001286]:c.bnez a0, 5<br> [0x80001290]:c.addi sp, 3<br> [0x80001292]:sw sp, 228(ra)<br>                                    |
|  59|[0x800042ec]<br>0xFF76DFCF|- rs1_val == -4097<br>                                                                         |[0x800012b0]:c.bnez a0, 250<br> [0x800012a4]:addi sp, sp, 1<br> [0x800012a8]:jal zero, 20<br> [0x800012bc]:sw sp, 232(ra)<br>  |
|  60|[0x800042f0]<br>0xFF76DFD0|- rs1_val == -8193<br>                                                                         |[0x800012d8]:c.bnez a0, 251<br> [0x800012ce]:addi sp, sp, 1<br> [0x800012d2]:jal zero, 18<br> [0x800012e4]:sw sp, 236(ra)<br>  |
|  61|[0x800042f4]<br>0xFF76DFD1|- rs1_val == -16385<br>                                                                        |[0x80001318]:c.bnez a0, 239<br> [0x800012f6]:addi sp, sp, 1<br> [0x800012fa]:jal zero, 42<br> [0x80001324]:sw sp, 240(ra)<br>  |
|  62|[0x800042f8]<br>0xFF76DFD4|- rs1_val == -32769<br>                                                                        |[0x8000133e]:c.bnez a0, 16<br> [0x8000135e]:c.addi sp, 3<br> [0x80001360]:sw sp, 244(ra)<br>                                   |
|  63|[0x800042fc]<br>0xFF76DFD7|- rs1_val == -65537<br>                                                                        |[0x8000137a]:c.bnez a0, 5<br> [0x80001384]:c.addi sp, 3<br> [0x80001386]:sw sp, 248(ra)<br>                                    |
|  64|[0x80004300]<br>0xFF76DFD8|- rs1_val == -131073<br>                                                                       |[0x80001418]:c.bnez a0, 192<br> [0x80001398]:addi sp, sp, 1<br> [0x8000139c]:jal zero, 136<br> [0x80001424]:sw sp, 252(ra)<br> |
|  65|[0x80004304]<br>0xFF76DFD9|- rs1_val == -262145<br>                                                                       |[0x80001478]:c.bnez a0, 223<br> [0x80001436]:addi sp, sp, 1<br> [0x8000143a]:jal zero, 74<br> [0x80001484]:sw sp, 256(ra)<br>  |
|  66|[0x80004308]<br>0xFF76DFDA|- rs1_val == -524289<br>                                                                       |[0x800014b8]:c.bnez a0, 239<br> [0x80001496]:addi sp, sp, 1<br> [0x8000149a]:jal zero, 42<br> [0x800014c4]:sw sp, 260(ra)<br>  |
|  67|[0x8000430c]<br>0xFF76DFDB|- rs1_val == -1048577<br>                                                                      |[0x800014de]:c.bnez a0, 252<br> [0x800014d6]:addi sp, sp, 1<br> [0x800014da]:jal zero, 16<br> [0x800014ea]:sw sp, 264(ra)<br>  |
|  68|[0x80004310]<br>0xFF76DFDE|- rs1_val == -2097153<br>                                                                      |[0x80001504]:c.bnez a0, 5<br> [0x8000150e]:c.addi sp, 3<br> [0x80001510]:sw sp, 268(ra)<br>                                    |
|  69|[0x80004314]<br>0xFF76DFE1|- rs1_val == -4194305<br>                                                                      |[0x8000152a]:c.bnez a0, 16<br> [0x8000154a]:c.addi sp, 3<br> [0x8000154c]:sw sp, 272(ra)<br>                                   |
