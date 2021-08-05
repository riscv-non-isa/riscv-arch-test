
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x800019c0')]      |
| SIG_REGION                | [('0x80003204', '0x80003354', '84 words')]      |
| COV_LABELS                | cbeqz      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/cbeqz-01.S/cbeqz-01.S    |
| Total Number of coverpoints| 109     |
| Total Coverpoints Hit     | 105      |
| Total Signature Updates   | 84      |
| STAT1                     | 84      |
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

|s.no|        signature         |                                                  coverpoints                                                  |                                                             code                                                             |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003204]<br>0xFF76DF58|- opcode : c.beqz<br> - rs1 : x10<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -4097<br>                 |[0x80000138]:c.beqz a0, 170<br> [0x8000013a]:addi sp, sp, 2<br> [0x8000013e]:jal zero, 6<br> [0x80000144]:sw sp, 0(ra)<br>    |
|   2|[0x80003208]<br>0xFF76DF5A|- rs1 : x14<br> - rs1_val == 2147483647<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val > 0 and imm_val < 0<br> |[0x80000168]:c.beqz a4, 246<br> [0x8000016a]:addi sp, sp, 2<br> [0x8000016e]:jal zero, 6<br> [0x80000174]:sw sp, 4(ra)<br>    |
|   3|[0x8000320c]<br>0xFF76DF5C|- rs1 : x8<br> - rs1_val == -1073741825<br> - rs1_val < 0 and imm_val > 0<br>                                  |[0x8000018c]:c.beqz s0, 16<br> [0x8000018e]:addi sp, sp, 2<br> [0x80000192]:jal zero, 28<br> [0x800001ae]:sw sp, 8(ra)<br>    |
|   4|[0x80003210]<br>0xFF76DF5E|- rs1 : x15<br> - rs1_val == -536870913<br>                                                                    |[0x8000026a]:c.beqz a5, 170<br> [0x8000026c]:addi sp, sp, 2<br> [0x80000270]:jal zero, 6<br> [0x80000276]:sw sp, 12(ra)<br>   |
|   5|[0x80003214]<br>0xFF76DF60|- rs1 : x12<br> - rs1_val == -268435457<br>                                                                    |[0x8000028e]:c.beqz a2, 9<br> [0x80000290]:addi sp, sp, 2<br> [0x80000294]:jal zero, 14<br> [0x800002a2]:sw sp, 16(ra)<br>    |
|   6|[0x80003218]<br>0xFF76DF62|- rs1 : x13<br> - rs1_val == -134217729<br>                                                                    |[0x800002ba]:c.beqz a3, 63<br> [0x800002bc]:addi sp, sp, 2<br> [0x800002c0]:jal zero, 122<br> [0x8000033a]:sw sp, 20(ra)<br>  |
|   7|[0x8000321c]<br>0xFF76DF64|- rs1 : x11<br> - rs1_val == -67108865<br>                                                                     |[0x80000358]:c.beqz a1, 249<br> [0x8000035a]:addi sp, sp, 2<br> [0x8000035e]:jal zero, 6<br> [0x80000364]:sw sp, 24(ra)<br>   |
|   8|[0x80003220]<br>0xFF76DF66|- rs1 : x9<br> - rs1_val == -33554433<br>                                                                      |[0x80000380]:c.beqz s1, 250<br> [0x80000382]:addi sp, sp, 2<br> [0x80000386]:jal zero, 6<br> [0x8000038c]:sw sp, 28(ra)<br>   |
|   9|[0x80003224]<br>0xFF76DF68|- rs1_val == -16777217<br>                                                                                     |[0x800003a4]:c.beqz a0, 16<br> [0x800003a6]:addi sp, sp, 2<br> [0x800003aa]:jal zero, 28<br> [0x800003c6]:sw sp, 32(ra)<br>   |
|  10|[0x80003228]<br>0xFF76DF6A|- rs1_val == -8388609<br>                                                                                      |[0x80000456]:c.beqz a0, 192<br> [0x80000458]:addi sp, sp, 2<br> [0x8000045c]:jal zero, 6<br> [0x80000462]:sw sp, 36(ra)<br>   |
|  11|[0x8000322c]<br>0xFF76DF6C|- rs1_val == -4194305<br>                                                                                      |[0x80000480]:c.beqz a0, 249<br> [0x80000482]:addi sp, sp, 2<br> [0x80000486]:jal zero, 6<br> [0x8000048c]:sw sp, 40(ra)<br>   |
|  12|[0x80003230]<br>0xFF76DF6E|- rs1_val == -2097153<br>                                                                                      |[0x800004a4]:c.beqz a0, 32<br> [0x800004a6]:addi sp, sp, 2<br> [0x800004aa]:jal zero, 60<br> [0x800004e6]:sw sp, 44(ra)<br>   |
|  13|[0x80003234]<br>0xFF76DF70|- rs1_val == -1048577<br>                                                                                      |[0x80000518]:c.beqz a0, 239<br> [0x8000051a]:addi sp, sp, 2<br> [0x8000051e]:jal zero, 6<br> [0x80000524]:sw sp, 48(ra)<br>   |
|  14|[0x80003238]<br>0xFF76DF72|- rs1_val == -524289<br>                                                                                       |[0x800005b6]:c.beqz a0, 191<br> [0x800005b8]:addi sp, sp, 2<br> [0x800005bc]:jal zero, 6<br> [0x800005c2]:sw sp, 52(ra)<br>   |
|  15|[0x8000323c]<br>0xFF76DF74|- rs1_val == -262145<br>                                                                                       |[0x800005da]:c.beqz a0, 6<br> [0x800005dc]:addi sp, sp, 2<br> [0x800005e0]:jal zero, 8<br> [0x800005e8]:sw sp, 56(ra)<br>     |
|  16|[0x80003240]<br>0xFF76DF76|- rs1_val == -131073<br>                                                                                       |[0x80000600]:c.beqz a0, 5<br> [0x80000602]:addi sp, sp, 2<br> [0x80000606]:jal zero, 6<br> [0x8000060c]:sw sp, 60(ra)<br>     |
|  17|[0x80003244]<br>0xFF76DF78|- rs1_val == -65537<br>                                                                                        |[0x80000624]:c.beqz a0, 9<br> [0x80000626]:addi sp, sp, 2<br> [0x8000062a]:jal zero, 14<br> [0x80000638]:sw sp, 64(ra)<br>    |
|  18|[0x80003248]<br>0xFF76DF7A|- rs1_val == -32769<br>                                                                                        |[0x8000068a]:c.beqz a0, 223<br> [0x8000068c]:addi sp, sp, 2<br> [0x80000690]:jal zero, 6<br> [0x80000696]:sw sp, 68(ra)<br>   |
|  19|[0x8000324c]<br>0xFF76DF7C|- rs1_val == -16385<br>                                                                                        |[0x800006ae]:c.beqz a0, 64<br> [0x800006b0]:addi sp, sp, 2<br> [0x800006b4]:jal zero, 124<br> [0x80000730]:sw sp, 72(ra)<br>  |
|  20|[0x80003250]<br>0xFF76DF7E|- rs1_val == -8193<br>                                                                                         |[0x80000748]:c.beqz a0, 63<br> [0x8000074a]:addi sp, sp, 2<br> [0x8000074e]:jal zero, 122<br> [0x800007c8]:sw sp, 76(ra)<br>  |
|  21|[0x80003254]<br>0xFF76DF80|- rs1_val == -2049<br>                                                                                         |[0x800007e6]:c.beqz a0, 249<br> [0x800007e8]:addi sp, sp, 2<br> [0x800007ec]:jal zero, 6<br> [0x800007f2]:sw sp, 80(ra)<br>   |
|  22|[0x80003258]<br>0xFF76DF82|- rs1_val == -1025<br>                                                                                         |[0x8000087e]:c.beqz a0, 192<br> [0x80000880]:addi sp, sp, 2<br> [0x80000884]:jal zero, 6<br> [0x8000088a]:sw sp, 84(ra)<br>   |
|  23|[0x8000325c]<br>0xFF76DF84|- rs1_val == -513<br>                                                                                          |[0x8000089e]:c.beqz a0, 6<br> [0x800008a0]:addi sp, sp, 2<br> [0x800008a4]:jal zero, 8<br> [0x800008ac]:sw sp, 88(ra)<br>     |
|  24|[0x80003260]<br>0xFF76DF86|- rs1_val == -257<br>                                                                                          |[0x800008c2]:c.beqz a0, 251<br> [0x800008c4]:addi sp, sp, 2<br> [0x800008c8]:jal zero, 6<br> [0x800008ce]:sw sp, 92(ra)<br>   |
|  25|[0x80003264]<br>0xFF76DF88|- rs1_val == -129<br>                                                                                          |[0x800008ee]:c.beqz a0, 246<br> [0x800008f0]:addi sp, sp, 2<br> [0x800008f4]:jal zero, 6<br> [0x800008fa]:sw sp, 96(ra)<br>   |
|  26|[0x80003268]<br>0xFF76DF8A|- rs1_val == -65<br>                                                                                           |[0x80000910]:c.beqz a0, 251<br> [0x80000912]:addi sp, sp, 2<br> [0x80000916]:jal zero, 6<br> [0x8000091c]:sw sp, 100(ra)<br>  |
|  27|[0x8000326c]<br>0xFF76DF8C|- rs1_val == -33<br>                                                                                           |[0x800009d4]:c.beqz a0, 170<br> [0x800009d6]:addi sp, sp, 2<br> [0x800009da]:jal zero, 6<br> [0x800009e0]:sw sp, 104(ra)<br>  |
|  28|[0x80003270]<br>0xFF76DF8E|- rs1_val == -17<br>                                                                                           |[0x800009fe]:c.beqz a0, 247<br> [0x80000a00]:addi sp, sp, 2<br> [0x80000a04]:jal zero, 6<br> [0x80000a0a]:sw sp, 108(ra)<br>  |
|  29|[0x80003274]<br>0xFF76DF90|- rs1_val == -9<br>                                                                                            |[0x80000a1e]:c.beqz a0, 16<br> [0x80000a20]:addi sp, sp, 2<br> [0x80000a24]:jal zero, 28<br> [0x80000a40]:sw sp, 112(ra)<br>  |
|  30|[0x80003278]<br>0xFF76DF92|- rs1_val == -5<br>                                                                                            |[0x80000a8e]:c.beqz a0, 223<br> [0x80000a90]:addi sp, sp, 2<br> [0x80000a94]:jal zero, 6<br> [0x80000a9a]:sw sp, 116(ra)<br>  |
|  31|[0x8000327c]<br>0xFF76DF94|- rs1_val == -3<br>                                                                                            |[0x80000ae8]:c.beqz a0, 223<br> [0x80000aea]:addi sp, sp, 2<br> [0x80000aee]:jal zero, 6<br> [0x80000af4]:sw sp, 120(ra)<br>  |
|  32|[0x80003280]<br>0xFF76DF96|- rs1_val == -2<br>                                                                                            |[0x80000b08]:c.beqz a0, 5<br> [0x80000b0a]:addi sp, sp, 2<br> [0x80000b0e]:jal zero, 6<br> [0x80000b14]:sw sp, 124(ra)<br>    |
|  33|[0x80003284]<br>0xFF76DF98|- rs1_val == -2147483648<br> - rs1_val == (-2**(xlen-1))<br>                                                   |[0x80000b28]:c.beqz a0, 5<br> [0x80000b2a]:addi sp, sp, 2<br> [0x80000b2e]:jal zero, 6<br> [0x80000b34]:sw sp, 128(ra)<br>    |
|  34|[0x80003288]<br>0xFF76DF9A|- rs1_val == 1073741824<br> - rs1_val > 0 and imm_val > 0<br>                                                  |[0x80000b48]:c.beqz a0, 63<br> [0x80000b4a]:addi sp, sp, 2<br> [0x80000b4e]:jal zero, 122<br> [0x80000bc8]:sw sp, 132(ra)<br> |
|  35|[0x8000328c]<br>0xFF76DF9C|- rs1_val == 536870912<br>                                                                                     |[0x80000bf6]:c.beqz a0, 239<br> [0x80000bf8]:addi sp, sp, 2<br> [0x80000bfc]:jal zero, 6<br> [0x80000c02]:sw sp, 136(ra)<br>  |
|  36|[0x80003290]<br>0xFF76DF9E|- rs1_val == 268435456<br>                                                                                     |[0x80000c16]:c.beqz a0, 32<br> [0x80000c18]:addi sp, sp, 2<br> [0x80000c1c]:jal zero, 60<br> [0x80000c58]:sw sp, 140(ra)<br>  |
|  37|[0x80003294]<br>0xFF76DFA0|- rs1_val == 134217728<br>                                                                                     |[0x80000c6c]:c.beqz a0, 64<br> [0x80000c6e]:addi sp, sp, 2<br> [0x80000c72]:jal zero, 124<br> [0x80000cee]:sw sp, 144(ra)<br> |
|  38|[0x80003298]<br>0xFF76DFA2|- rs1_val == 67108864<br>                                                                                      |[0x80000d02]:c.beqz a0, 64<br> [0x80000d04]:addi sp, sp, 2<br> [0x80000d08]:jal zero, 124<br> [0x80000d84]:sw sp, 148(ra)<br> |
|  39|[0x8000329c]<br>0xFF76DFA4|- rs1_val == 33554432<br>                                                                                      |[0x80000db2]:c.beqz a0, 239<br> [0x80000db4]:addi sp, sp, 2<br> [0x80000db8]:jal zero, 6<br> [0x80000dbe]:sw sp, 152(ra)<br>  |
|  40|[0x800032a0]<br>0xFF76DFA6|- rs1_val == 16777216<br>                                                                                      |[0x80000dd2]:c.beqz a0, 32<br> [0x80000dd4]:addi sp, sp, 2<br> [0x80000dd8]:jal zero, 60<br> [0x80000e14]:sw sp, 156(ra)<br>  |
|  41|[0x800032a4]<br>0xFF76DFA8|- rs1_val == 8388608<br>                                                                                       |[0x80000e28]:c.beqz a0, 7<br> [0x80000e2a]:addi sp, sp, 2<br> [0x80000e2e]:jal zero, 10<br> [0x80000e38]:sw sp, 160(ra)<br>   |
|  42|[0x800032a8]<br>0xFF76DFAA|- rs1_val == 4194304<br>                                                                                       |[0x80000e4c]:c.beqz a0, 64<br> [0x80000e4e]:addi sp, sp, 2<br> [0x80000e52]:jal zero, 124<br> [0x80000ece]:sw sp, 164(ra)<br> |
|  43|[0x800032ac]<br>0xFF76DFAC|- rs1_val == 2097152<br>                                                                                       |[0x80000ee2]:c.beqz a0, 7<br> [0x80000ee4]:addi sp, sp, 2<br> [0x80000ee8]:jal zero, 10<br> [0x80000ef2]:sw sp, 168(ra)<br>   |
|  44|[0x800032b0]<br>0xFF76DFAE|- rs1_val == 1048576<br>                                                                                       |[0x80000f06]:c.beqz a0, 252<br> [0x80000f08]:addi sp, sp, 2<br> [0x80000f0c]:jal zero, 6<br> [0x80000f12]:sw sp, 172(ra)<br>  |
|  45|[0x800032b4]<br>0xFF76DFB0|- rs1_val == 524288<br>                                                                                        |[0x80000fa0]:c.beqz a0, 191<br> [0x80000fa2]:addi sp, sp, 2<br> [0x80000fa6]:jal zero, 6<br> [0x80000fac]:sw sp, 176(ra)<br>  |
|  46|[0x800032b8]<br>0xFF76DFB2|- rs1_val == 262144<br>                                                                                        |[0x80000ffa]:c.beqz a0, 223<br> [0x80000ffc]:addi sp, sp, 2<br> [0x80001000]:jal zero, 6<br> [0x80001006]:sw sp, 180(ra)<br>  |
|  47|[0x800032bc]<br>0xFF76DFB4|- rs1_val == 131072<br>                                                                                        |[0x8000101e]:c.beqz a0, 250<br> [0x80001020]:addi sp, sp, 2<br> [0x80001024]:jal zero, 6<br> [0x8000102a]:sw sp, 184(ra)<br>  |
|  48|[0x800032c0]<br>0xFF76DFB6|- rs1_val == 65536<br>                                                                                         |[0x800010b8]:c.beqz a0, 191<br> [0x800010ba]:addi sp, sp, 2<br> [0x800010be]:jal zero, 6<br> [0x800010c4]:sw sp, 188(ra)<br>  |
|  49|[0x800032c4]<br>0xFF76DFB8|- rs1_val == 32768<br>                                                                                         |[0x800010d8]:c.beqz a0, 252<br> [0x800010da]:addi sp, sp, 2<br> [0x800010de]:jal zero, 6<br> [0x800010e4]:sw sp, 192(ra)<br>  |
|  50|[0x800032c8]<br>0xFF76DFBA|- rs1_val == 16384<br>                                                                                         |[0x800010fa]:c.beqz a0, 251<br> [0x800010fc]:addi sp, sp, 2<br> [0x80001100]:jal zero, 6<br> [0x80001106]:sw sp, 196(ra)<br>  |
|  51|[0x800032cc]<br>0xFF76DFBC|- rs1_val == 8192<br>                                                                                          |[0x80001192]:c.beqz a0, 192<br> [0x80001194]:addi sp, sp, 2<br> [0x80001198]:jal zero, 6<br> [0x8000119e]:sw sp, 200(ra)<br>  |
|  52|[0x800032d0]<br>0xFF76DFBE|- rs1_val == 4096<br>                                                                                          |[0x800011b2]:c.beqz a0, 32<br> [0x800011b4]:addi sp, sp, 2<br> [0x800011b8]:jal zero, 60<br> [0x800011f4]:sw sp, 204(ra)<br>  |
|  53|[0x800032d4]<br>0xFF76DFC0|- rs1_val == 2048<br>                                                                                          |[0x8000120c]:c.beqz a0, 16<br> [0x8000120e]:addi sp, sp, 2<br> [0x80001212]:jal zero, 28<br> [0x8000122e]:sw sp, 208(ra)<br>  |
|  54|[0x800032d8]<br>0xFF76DFC2|- rs1_val == 1024<br>                                                                                          |[0x80001242]:c.beqz a0, 6<br> [0x80001244]:addi sp, sp, 2<br> [0x80001248]:jal zero, 8<br> [0x80001250]:sw sp, 212(ra)<br>    |
|  55|[0x800032dc]<br>0xFF76DFC4|- rs1_val == 512<br>                                                                                           |[0x8000126c]:c.beqz a0, 248<br> [0x8000126e]:addi sp, sp, 2<br> [0x80001272]:jal zero, 6<br> [0x80001278]:sw sp, 216(ra)<br>  |
|  56|[0x800032e0]<br>0xFF76DFC6|- rs1_val == 256<br>                                                                                           |[0x8000128c]:c.beqz a0, 63<br> [0x8000128e]:addi sp, sp, 2<br> [0x80001292]:jal zero, 122<br> [0x8000130c]:sw sp, 220(ra)<br> |
|  57|[0x800032e4]<br>0xFF76DFC8|- rs1_val == 128<br>                                                                                           |[0x80001320]:c.beqz a0, 5<br> [0x80001322]:addi sp, sp, 2<br> [0x80001326]:jal zero, 6<br> [0x8000132c]:sw sp, 224(ra)<br>    |
|  58|[0x800032e8]<br>0xFF76DFCA|- rs1_val == 64<br>                                                                                            |[0x80001340]:c.beqz a0, 5<br> [0x80001342]:addi sp, sp, 2<br> [0x80001346]:jal zero, 6<br> [0x8000134c]:sw sp, 228(ra)<br>    |
|  59|[0x800032ec]<br>0xFF76DFCC|- rs1_val == 32<br>                                                                                            |[0x8000136a]:c.beqz a0, 247<br> [0x8000136c]:addi sp, sp, 2<br> [0x80001370]:jal zero, 6<br> [0x80001376]:sw sp, 232(ra)<br>  |
|  60|[0x800032f0]<br>0xFF76DFCE|- rs1_val == 16<br>                                                                                            |[0x8000138a]:c.beqz a0, 252<br> [0x8000138c]:addi sp, sp, 2<br> [0x80001390]:jal zero, 6<br> [0x80001396]:sw sp, 236(ra)<br>  |
|  61|[0x800032f4]<br>0xFF76DFD0|- rs1_val == 1<br>                                                                                             |[0x800013aa]:c.beqz a0, 7<br> [0x800013ac]:addi sp, sp, 2<br> [0x800013b0]:jal zero, 10<br> [0x800013ba]:sw sp, 240(ra)<br>   |
|  62|[0x800032f8]<br>0xFF76DFD2|- rs1_val==46341<br>                                                                                           |[0x800013da]:c.beqz a0, 248<br> [0x800013dc]:addi sp, sp, 2<br> [0x800013e0]:jal zero, 6<br> [0x800013e6]:sw sp, 244(ra)<br>  |
|  63|[0x800032fc]<br>0xFF76DFD4|- rs1_val==-46339<br>                                                                                          |[0x80001478]:c.beqz a0, 191<br> [0x8000147a]:addi sp, sp, 2<br> [0x8000147e]:jal zero, 6<br> [0x80001484]:sw sp, 248(ra)<br>  |
|  64|[0x80003300]<br>0xFF76DFD6|- rs1_val==1717986919<br>                                                                                      |[0x8000149c]:c.beqz a0, 5<br> [0x8000149e]:addi sp, sp, 2<br> [0x800014a2]:jal zero, 6<br> [0x800014a8]:sw sp, 252(ra)<br>    |
|  65|[0x80003304]<br>0xFF76DFD8|- rs1_val==858993460<br>                                                                                       |[0x800014c0]:c.beqz a0, 5<br> [0x800014c2]:addi sp, sp, 2<br> [0x800014c6]:jal zero, 6<br> [0x800014cc]:sw sp, 256(ra)<br>    |
|  66|[0x80003308]<br>0xFF76DFDA|- rs1_val==6<br>                                                                                               |[0x800014e0]:c.beqz a0, 252<br> [0x800014e2]:addi sp, sp, 2<br> [0x800014e6]:jal zero, 6<br> [0x800014ec]:sw sp, 260(ra)<br>  |
|  67|[0x8000330c]<br>0xFF76DFDC|- rs1_val==-1431655765<br>                                                                                     |[0x80001504]:c.beqz a0, 64<br> [0x80001506]:addi sp, sp, 2<br> [0x8000150a]:jal zero, 124<br> [0x80001586]:sw sp, 264(ra)<br> |
|  68|[0x80003310]<br>0xFF76DFDE|- rs1_val==1431655766<br>                                                                                      |[0x800015aa]:c.beqz a0, 246<br> [0x800015ac]:addi sp, sp, 2<br> [0x800015b0]:jal zero, 6<br> [0x800015b6]:sw sp, 268(ra)<br>  |
|  69|[0x80003314]<br>0xFF76DFE0|- rs1_val == 4<br> - rs1_val==4<br>                                                                            |[0x80001644]:c.beqz a0, 191<br> [0x80001646]:addi sp, sp, 2<br> [0x8000164a]:jal zero, 6<br> [0x80001650]:sw sp, 272(ra)<br>  |
|  70|[0x80003318]<br>0xFF76DFE2|- rs1_val==46339<br>                                                                                           |[0x80001674]:c.beqz a0, 246<br> [0x80001676]:addi sp, sp, 2<br> [0x8000167a]:jal zero, 6<br> [0x80001680]:sw sp, 276(ra)<br>  |
|  71|[0x8000331c]<br>0xFF76DFE5|- rs1_val==0<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val > 0<br>                                         |[0x80001694]:c.beqz a0, 7<br> [0x800016a2]:c.addi sp, 3<br> [0x800016a4]:sw sp, 280(ra)<br>                                   |
|  72|[0x80003320]<br>0xFF76DFE7|- rs1_val==1717986917<br>                                                                                      |[0x800016bc]:c.beqz a0, 64<br> [0x800016be]:addi sp, sp, 2<br> [0x800016c2]:jal zero, 124<br> [0x8000173e]:sw sp, 284(ra)<br> |
|  73|[0x80003324]<br>0xFF76DFE9|- rs1_val==858993458<br>                                                                                       |[0x80001758]:c.beqz a0, 251<br> [0x8000175a]:addi sp, sp, 2<br> [0x8000175e]:jal zero, 6<br> [0x80001764]:sw sp, 288(ra)<br>  |
|  74|[0x80003328]<br>0xFF76DFEB|- rs1_val==1431655764<br>                                                                                      |[0x80001780]:c.beqz a0, 250<br> [0x80001782]:addi sp, sp, 2<br> [0x80001786]:jal zero, 6<br> [0x8000178c]:sw sp, 292(ra)<br>  |
|  75|[0x8000332c]<br>0xFF76DFED|- rs1_val == 2<br> - rs1_val==2<br>                                                                            |[0x800017a2]:c.beqz a0, 251<br> [0x800017a4]:addi sp, sp, 2<br> [0x800017a8]:jal zero, 6<br> [0x800017ae]:sw sp, 296(ra)<br>  |
|  76|[0x80003330]<br>0xFF76DFEF|- rs1_val==46340<br>                                                                                           |[0x800017c6]:c.beqz a0, 252<br> [0x800017c8]:addi sp, sp, 2<br> [0x800017cc]:jal zero, 6<br> [0x800017d2]:sw sp, 300(ra)<br>  |
|  77|[0x80003334]<br>0xFF76DFF1|- rs1_val==-46340<br>                                                                                          |[0x800017ea]:c.beqz a0, 63<br> [0x800017ec]:addi sp, sp, 2<br> [0x800017f0]:jal zero, 122<br> [0x8000186a]:sw sp, 304(ra)<br> |
|  78|[0x80003338]<br>0xFF76DFF3|- rs1_val==1717986918<br>                                                                                      |[0x80001882]:c.beqz a0, 7<br> [0x80001884]:addi sp, sp, 2<br> [0x80001888]:jal zero, 10<br> [0x80001892]:sw sp, 308(ra)<br>   |
|  79|[0x8000333c]<br>0xFF76DFF5|- rs1_val==858993459<br>                                                                                       |[0x800018aa]:c.beqz a0, 9<br> [0x800018ac]:addi sp, sp, 2<br> [0x800018b0]:jal zero, 14<br> [0x800018be]:sw sp, 312(ra)<br>   |
|  80|[0x80003340]<br>0xFF76DFF7|- rs1_val==5<br>                                                                                               |[0x800018da]:c.beqz a0, 248<br> [0x800018dc]:addi sp, sp, 2<br> [0x800018e0]:jal zero, 6<br> [0x800018e6]:sw sp, 316(ra)<br>  |
|  81|[0x80003344]<br>0xFF76DFF9|- rs1_val==-1431655766<br> - rs1_val == -1431655766<br>                                                        |[0x800018fe]:c.beqz a0, 32<br> [0x80001900]:addi sp, sp, 2<br> [0x80001904]:jal zero, 60<br> [0x80001940]:sw sp, 320(ra)<br>  |
|  82|[0x80003348]<br>0xFF76DFFB|- rs1_val==1431655765<br> - rs1_val == 1431655765<br>                                                          |[0x80001962]:c.beqz a0, 247<br> [0x80001964]:addi sp, sp, 2<br> [0x80001968]:jal zero, 6<br> [0x8000196e]:sw sp, 324(ra)<br>  |
|  83|[0x8000334c]<br>0xFF76DFFD|- rs1_val == 8<br>                                                                                             |[0x80001988]:c.beqz a0, 249<br> [0x8000198a]:addi sp, sp, 2<br> [0x8000198e]:jal zero, 6<br> [0x80001994]:sw sp, 328(ra)<br>  |
|  84|[0x80003350]<br>0xFF76DFFF|- rs1_val==3<br>                                                                                               |[0x800019a8]:c.beqz a0, 252<br> [0x800019aa]:addi sp, sp, 2<br> [0x800019ae]:jal zero, 6<br> [0x800019b4]:sw sp, 332(ra)<br>  |
