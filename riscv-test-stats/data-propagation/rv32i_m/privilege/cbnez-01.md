
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80001932')]      |
| SIG_REGION                | [('0x80003204', '0x80003358', '85 words')]      |
| COV_LABELS                | cbnez      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cbnez-01.S/cbnez-01.S    |
| Total Number of coverpoints| 106     |
| Total Coverpoints Hit     | 106      |
| Total Signature Updates   | 85      |
| STAT1                     | 85      |
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

|s.no|        signature         |                                                             coverpoints                                                             |                                                             code                                                              |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003204]<br>0xFF76DF59|- opcode : c.bnez<br> - rs1 : x10<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -2147483648<br> |[0x80000112]:c.bnez a0, 5<br> [0x8000011c]:c.addi sp, 3<br> [0x8000011e]:sw sp, 0(ra)<br>                                      |
|   2|[0x80003208]<br>0xFF76DF5B|- rs1 : x9<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val < 0<br> - rs1_val==0<br>                                                |[0x80000134]:c.bnez s1, 252<br> [0x80000136]:addi sp, sp, 2<br> [0x8000013a]:jal zero, 6<br> [0x80000140]:sw sp, 4(ra)<br>     |
|   3|[0x8000320c]<br>0xFF76DF5C|- rs1 : x8<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 2147483647<br>                        |[0x8000015a]:c.bnez s0, 252<br> [0x80000152]:addi sp, sp, 1<br> [0x80000156]:jal zero, 16<br> [0x80000166]:sw sp, 8(ra)<br>    |
|   4|[0x80003210]<br>0xFF76DF5F|- rs1 : x13<br> - rs1_val == 1<br> - rs1_val > 0 and imm_val > 0<br>                                                                 |[0x8000017c]:c.bnez a3, 9<br> [0x8000018e]:c.addi sp, 3<br> [0x80000190]:sw sp, 12(ra)<br>                                     |
|   5|[0x80003214]<br>0xFF76DF61|- rs1 : x11<br> - rs1_val == 0 and imm_val > 0<br>                                                                                   |[0x800001a6]:c.bnez a1, 5<br> [0x800001a8]:addi sp, sp, 2<br> [0x800001ac]:jal zero, 6<br> [0x800001b2]:sw sp, 16(ra)<br>      |
|   6|[0x80003218]<br>0xFF76DF62|- rs1 : x12<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -262145<br>                                                           |[0x800001d4]:c.bnez a2, 248<br> [0x800001c4]:addi sp, sp, 1<br> [0x800001c8]:jal zero, 24<br> [0x800001e0]:sw sp, 20(ra)<br>   |
|   7|[0x8000321c]<br>0xFF76DF63|- rs1 : x14<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                                  |[0x80000230]:c.bnez a4, 223<br> [0x800001ee]:addi sp, sp, 1<br> [0x800001f2]:jal zero, 74<br> [0x8000023c]:sw sp, 24(ra)<br>   |
|   8|[0x80003220]<br>0xFF76DF66|- rs1 : x15<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                                  |[0x80000252]:c.bnez a5, 85<br> [0x800002fc]:c.addi sp, 3<br> [0x800002fe]:sw sp, 28(ra)<br>                                    |
|   9|[0x80003224]<br>0xFF76DF67|- rs1_val == 8<br>                                                                                                                   |[0x8000031a]:c.bnez a0, 249<br> [0x8000030c]:addi sp, sp, 1<br> [0x80000310]:jal zero, 22<br> [0x80000326]:sw sp, 32(ra)<br>   |
|  10|[0x80003228]<br>0xFF76DF6A|- rs1_val == 16<br>                                                                                                                  |[0x8000033c]:c.bnez a0, 5<br> [0x80000346]:c.addi sp, 3<br> [0x80000348]:sw sp, 36(ra)<br>                                     |
|  11|[0x8000322c]<br>0xFF76DF6D|- rs1_val == 32<br>                                                                                                                  |[0x8000035e]:c.bnez a0, 64<br> [0x800003de]:c.addi sp, 3<br> [0x800003e0]:sw sp, 40(ra)<br>                                    |
|  12|[0x80003230]<br>0xFF76DF6E|- rs1_val == 64<br>                                                                                                                  |[0x800003f6]:c.bnez a0, 252<br> [0x800003ee]:addi sp, sp, 1<br> [0x800003f2]:jal zero, 16<br> [0x80000402]:sw sp, 44(ra)<br>   |
|  13|[0x80003234]<br>0xFF76DF6F|- rs1_val == 128<br>                                                                                                                 |[0x80000490]:c.bnez a0, 192<br> [0x80000410]:addi sp, sp, 1<br> [0x80000414]:jal zero, 136<br> [0x8000049c]:sw sp, 48(ra)<br>  |
|  14|[0x80003238]<br>0xFF76DF70|- rs1_val == 256<br>                                                                                                                 |[0x800004b6]:c.bnez a0, 250<br> [0x800004aa]:addi sp, sp, 1<br> [0x800004ae]:jal zero, 20<br> [0x800004c2]:sw sp, 52(ra)<br>   |
|  15|[0x8000323c]<br>0xFF76DF73|- rs1_val == 512<br>                                                                                                                 |[0x800004d8]:c.bnez a0, 85<br> [0x80000582]:c.addi sp, 3<br> [0x80000584]:sw sp, 56(ra)<br>                                    |
|  16|[0x80003240]<br>0xFF76DF76|- rs1_val == 1024<br>                                                                                                                |[0x8000059a]:c.bnez a0, 5<br> [0x800005a4]:c.addi sp, 3<br> [0x800005a6]:sw sp, 60(ra)<br>                                     |
|  17|[0x80003244]<br>0xFF76DF77|- rs1_val == 2048<br>                                                                                                                |[0x8000063a]:c.bnez a0, 191<br> [0x800005b8]:addi sp, sp, 1<br> [0x800005bc]:jal zero, 138<br> [0x80000646]:sw sp, 64(ra)<br>  |
|  18|[0x80003248]<br>0xFF76DF7A|- rs1_val == 4096<br>                                                                                                                |[0x8000065c]:c.bnez a0, 6<br> [0x80000668]:c.addi sp, 3<br> [0x8000066a]:sw sp, 68(ra)<br>                                     |
|  19|[0x8000324c]<br>0xFF76DF7B|- rs1_val == 8192<br>                                                                                                                |[0x8000068a]:c.bnez a0, 247<br> [0x80000678]:addi sp, sp, 1<br> [0x8000067c]:jal zero, 26<br> [0x80000696]:sw sp, 72(ra)<br>   |
|  20|[0x80003250]<br>0xFF76DF7C|- rs1_val == 16384<br>                                                                                                               |[0x800006b2]:c.bnez a0, 249<br> [0x800006a4]:addi sp, sp, 1<br> [0x800006a8]:jal zero, 22<br> [0x800006be]:sw sp, 76(ra)<br>   |
|  21|[0x80003254]<br>0xFF76DF7F|- rs1_val == 32768<br>                                                                                                               |[0x800006d4]:c.bnez a0, 8<br> [0x800006e4]:c.addi sp, 3<br> [0x800006e6]:sw sp, 80(ra)<br>                                     |
|  22|[0x80003258]<br>0xFF76DF80|- rs1_val == 65536<br>                                                                                                               |[0x800006fc]:c.bnez a0, 252<br> [0x800006f4]:addi sp, sp, 1<br> [0x800006f8]:jal zero, 16<br> [0x80000708]:sw sp, 84(ra)<br>   |
|  23|[0x8000325c]<br>0xFF76DF81|- rs1_val == 131072<br>                                                                                                              |[0x80000722]:c.bnez a0, 250<br> [0x80000716]:addi sp, sp, 1<br> [0x8000071a]:jal zero, 20<br> [0x8000072e]:sw sp, 88(ra)<br>   |
|  24|[0x80003260]<br>0xFF76DF82|- rs1_val == 262144<br>                                                                                                              |[0x80000744]:c.bnez a0, 252<br> [0x8000073c]:addi sp, sp, 1<br> [0x80000740]:jal zero, 16<br> [0x80000750]:sw sp, 92(ra)<br>   |
|  25|[0x80003264]<br>0xFF76DF85|- rs1_val == 524288<br>                                                                                                              |[0x80000766]:c.bnez a0, 16<br> [0x80000786]:c.addi sp, 3<br> [0x80000788]:sw sp, 96(ra)<br>                                    |
|  26|[0x80003268]<br>0xFF76DF88|- rs1_val == 1048576<br>                                                                                                             |[0x8000079e]:c.bnez a0, 32<br> [0x800007de]:c.addi sp, 3<br> [0x800007e0]:sw sp, 100(ra)<br>                                   |
|  27|[0x8000326c]<br>0xFF76DF8B|- rs1_val == 2097152<br>                                                                                                             |[0x800007f6]:c.bnez a0, 5<br> [0x80000800]:c.addi sp, 3<br> [0x80000802]:sw sp, 104(ra)<br>                                    |
|  28|[0x80003270]<br>0xFF76DF8C|- rs1_val == 4194304<br>                                                                                                             |[0x8000081a]:c.bnez a0, 251<br> [0x80000810]:addi sp, sp, 1<br> [0x80000814]:jal zero, 18<br> [0x80000826]:sw sp, 108(ra)<br>  |
|  29|[0x80003274]<br>0xFF76DF8F|- rs1_val == 8388608<br>                                                                                                             |[0x8000083c]:c.bnez a0, 64<br> [0x800008bc]:c.addi sp, 3<br> [0x800008be]:sw sp, 112(ra)<br>                                   |
|  30|[0x80003278]<br>0xFF76DF90|- rs1_val == 16777216<br>                                                                                                            |[0x800008dc]:c.bnez a0, 248<br> [0x800008cc]:addi sp, sp, 1<br> [0x800008d0]:jal zero, 24<br> [0x800008e8]:sw sp, 116(ra)<br>  |
|  31|[0x8000327c]<br>0xFF76DF93|- rs1_val == 33554432<br>                                                                                                            |[0x800008fe]:c.bnez a0, 7<br> [0x8000090c]:c.addi sp, 3<br> [0x8000090e]:sw sp, 120(ra)<br>                                    |
|  32|[0x80003280]<br>0xFF76DF94|- rs1_val == 67108864<br>                                                                                                            |[0x8000099e]:c.bnez a0, 191<br> [0x8000091c]:addi sp, sp, 1<br> [0x80000920]:jal zero, 138<br> [0x800009aa]:sw sp, 124(ra)<br> |
|  33|[0x80003284]<br>0xFF76DF95|- rs1_val == 134217728<br>                                                                                                           |[0x800009da]:c.bnez a0, 239<br> [0x800009b8]:addi sp, sp, 1<br> [0x800009bc]:jal zero, 42<br> [0x800009e6]:sw sp, 128(ra)<br>  |
|  34|[0x80003288]<br>0xFF76DF98|- rs1_val == 268435456<br>                                                                                                           |[0x800009fc]:c.bnez a0, 5<br> [0x80000a06]:c.addi sp, 3<br> [0x80000a08]:sw sp, 132(ra)<br>                                    |
|  35|[0x8000328c]<br>0xFF76DF9B|- rs1_val == 536870912<br>                                                                                                           |[0x80000a1e]:c.bnez a0, 5<br> [0x80000a28]:c.addi sp, 3<br> [0x80000a2a]:sw sp, 136(ra)<br>                                    |
|  36|[0x80003290]<br>0xFF76DF9C|- rs1_val == 1073741824<br>                                                                                                          |[0x80000a40]:c.bnez a0, 252<br> [0x80000a38]:addi sp, sp, 1<br> [0x80000a3c]:jal zero, 16<br> [0x80000a4c]:sw sp, 140(ra)<br>  |
|  37|[0x80003294]<br>0xFF76DF9F|- rs1_val == -2<br>                                                                                                                  |[0x80000a62]:c.bnez a0, 32<br> [0x80000aa2]:c.addi sp, 3<br> [0x80000aa4]:sw sp, 144(ra)<br>                                   |
|  38|[0x80003298]<br>0xFF76DFA2|- rs1_val == -3<br>                                                                                                                  |[0x80000aba]:c.bnez a0, 5<br> [0x80000ac4]:c.addi sp, 3<br> [0x80000ac6]:sw sp, 148(ra)<br>                                    |
|  39|[0x8000329c]<br>0xFF76DFA3|- rs1_val == -5<br>                                                                                                                  |[0x80000af6]:c.bnez a0, 239<br> [0x80000ad4]:addi sp, sp, 1<br> [0x80000ad8]:jal zero, 42<br> [0x80000b02]:sw sp, 152(ra)<br>  |
|  40|[0x800032a0]<br>0xFF76DFA4|- rs1_val == -9<br>                                                                                                                  |[0x80000b32]:c.bnez a0, 239<br> [0x80000b10]:addi sp, sp, 1<br> [0x80000b14]:jal zero, 42<br> [0x80000b3e]:sw sp, 156(ra)<br>  |
|  41|[0x800032a4]<br>0xFF76DFA7|- rs1_val == -17<br>                                                                                                                 |[0x80000b54]:c.bnez a0, 5<br> [0x80000b5e]:c.addi sp, 3<br> [0x80000b60]:sw sp, 160(ra)<br>                                    |
|  42|[0x800032a8]<br>0xFF76DFAA|- rs1_val == -33<br>                                                                                                                 |[0x80000b76]:c.bnez a0, 9<br> [0x80000b88]:c.addi sp, 3<br> [0x80000b8a]:sw sp, 164(ra)<br>                                    |
|  43|[0x800032ac]<br>0xFF76DFAD|- rs1_val == -65<br>                                                                                                                 |[0x80000ba0]:c.bnez a0, 5<br> [0x80000baa]:c.addi sp, 3<br> [0x80000bac]:sw sp, 168(ra)<br>                                    |
|  44|[0x800032b0]<br>0xFF76DFB0|- rs1_val == -129<br>                                                                                                                |[0x80000bc2]:c.bnez a0, 5<br> [0x80000bcc]:c.addi sp, 3<br> [0x80000bce]:sw sp, 172(ra)<br>                                    |
|  45|[0x800032b4]<br>0xFF76DFB1|- rs1_val == -257<br>                                                                                                                |[0x80000bf0]:c.bnez a0, 246<br> [0x80000bdc]:addi sp, sp, 1<br> [0x80000be0]:jal zero, 28<br> [0x80000bfc]:sw sp, 176(ra)<br>  |
|  46|[0x800032b8]<br>0xFF76DFB4|- rs1_val == -513<br>                                                                                                                |[0x80000c12]:c.bnez a0, 7<br> [0x80000c20]:c.addi sp, 3<br> [0x80000c22]:sw sp, 180(ra)<br>                                    |
|  47|[0x800032bc]<br>0xFF76DFB7|- rs1_val == -1025<br>                                                                                                               |[0x80000c38]:c.bnez a0, 5<br> [0x80000c42]:c.addi sp, 3<br> [0x80000c44]:sw sp, 184(ra)<br>                                    |
|  48|[0x800032c0]<br>0xFF76DFB8|- rs1_val == -2049<br>                                                                                                               |[0x80000c6a]:c.bnez a0, 246<br> [0x80000c56]:addi sp, sp, 1<br> [0x80000c5a]:jal zero, 28<br> [0x80000c76]:sw sp, 188(ra)<br>  |
|  49|[0x800032c4]<br>0xFF76DFB9|- rs1_val == -4097<br>                                                                                                               |[0x80000d08]:c.bnez a0, 192<br> [0x80000c88]:addi sp, sp, 1<br> [0x80000c8c]:jal zero, 136<br> [0x80000d14]:sw sp, 192(ra)<br> |
|  50|[0x800032c8]<br>0xFF76DFBA|- rs1_val == -8193<br>                                                                                                               |[0x80000d3a]:c.bnez a0, 246<br> [0x80000d26]:addi sp, sp, 1<br> [0x80000d2a]:jal zero, 28<br> [0x80000d46]:sw sp, 196(ra)<br>  |
|  51|[0x800032cc]<br>0xFF76DFBB|- rs1_val == -16385<br>                                                                                                              |[0x80000dda]:c.bnez a0, 191<br> [0x80000d58]:addi sp, sp, 1<br> [0x80000d5c]:jal zero, 138<br> [0x80000de6]:sw sp, 200(ra)<br> |
|  52|[0x800032d0]<br>0xFF76DFBE|- rs1_val == -32769<br>                                                                                                              |[0x80000e00]:c.bnez a0, 5<br> [0x80000e0a]:c.addi sp, 3<br> [0x80000e0c]:sw sp, 204(ra)<br>                                    |
|  53|[0x800032d4]<br>0xFF76DFBF|- rs1_val == -65537<br>                                                                                                              |[0x80000e60]:c.bnez a0, 223<br> [0x80000e1e]:addi sp, sp, 1<br> [0x80000e22]:jal zero, 74<br> [0x80000e6c]:sw sp, 208(ra)<br>  |
|  54|[0x800032d8]<br>0xFF76DFC2|- rs1_val == -131073<br>                                                                                                             |[0x80000e86]:c.bnez a0, 8<br> [0x80000e96]:c.addi sp, 3<br> [0x80000e98]:sw sp, 212(ra)<br>                                    |
|  55|[0x800032dc]<br>0xFF76DFC5|- rs1_val == -524289<br>                                                                                                             |[0x80000eb2]:c.bnez a0, 5<br> [0x80000ebc]:c.addi sp, 3<br> [0x80000ebe]:sw sp, 216(ra)<br>                                    |
|  56|[0x800032e0]<br>0xFF76DFC6|- rs1_val == -1048577<br>                                                                                                            |[0x80000ed8]:c.bnez a0, 252<br> [0x80000ed0]:addi sp, sp, 1<br> [0x80000ed4]:jal zero, 16<br> [0x80000ee4]:sw sp, 220(ra)<br>  |
|  57|[0x800032e4]<br>0xFF76DFC7|- rs1_val == -8388609<br>                                                                                                            |[0x80000fa2]:c.bnez a0, 170<br> [0x80000ef6]:addi sp, sp, 1<br> [0x80000efa]:jal zero, 180<br> [0x80000fae]:sw sp, 224(ra)<br> |
|  58|[0x800032e8]<br>0xFF76DFCA|- rs1_val == -16777217<br>                                                                                                           |[0x80000fc8]:c.bnez a0, 64<br> [0x80001048]:c.addi sp, 3<br> [0x8000104a]:sw sp, 228(ra)<br>                                   |
|  59|[0x800032ec]<br>0xFF76DFCB|- rs1_val == -33554433<br>                                                                                                           |[0x80001108]:c.bnez a0, 170<br> [0x8000105c]:addi sp, sp, 1<br> [0x80001060]:jal zero, 180<br> [0x80001114]:sw sp, 232(ra)<br> |
|  60|[0x800032f0]<br>0xFF76DFCC|- rs1_val == -67108865<br>                                                                                                           |[0x800011a8]:c.bnez a0, 191<br> [0x80001126]:addi sp, sp, 1<br> [0x8000112a]:jal zero, 138<br> [0x800011b4]:sw sp, 236(ra)<br> |
|  61|[0x800032f4]<br>0xFF76DFCD|- rs1_val == -134217729<br>                                                                                                          |[0x80001248]:c.bnez a0, 191<br> [0x800011c6]:addi sp, sp, 1<br> [0x800011ca]:jal zero, 138<br> [0x80001254]:sw sp, 240(ra)<br> |
|  62|[0x800032f8]<br>0xFF76DFD0|- rs1_val == -268435457<br>                                                                                                          |[0x8000126e]:c.bnez a0, 16<br> [0x8000128e]:c.addi sp, 3<br> [0x80001290]:sw sp, 244(ra)<br>                                   |
|  63|[0x800032fc]<br>0xFF76DFD3|- rs1_val == -536870913<br>                                                                                                          |[0x800012aa]:c.bnez a0, 7<br> [0x800012b8]:c.addi sp, 3<br> [0x800012ba]:sw sp, 248(ra)<br>                                    |
|  64|[0x80003300]<br>0xFF76DFD4|- rs1_val == -1073741825<br>                                                                                                         |[0x800012e0]:c.bnez a0, 246<br> [0x800012cc]:addi sp, sp, 1<br> [0x800012d0]:jal zero, 28<br> [0x800012ec]:sw sp, 252(ra)<br>  |
|  65|[0x80003304]<br>0xFF76DFD5|- rs1_val == 1431655765<br> - rs1_val==1431655765<br>                                                                                |[0x8000130c]:c.bnez a0, 249<br> [0x800012fe]:addi sp, sp, 1<br> [0x80001302]:jal zero, 22<br> [0x80001318]:sw sp, 256(ra)<br>  |
|  66|[0x80003308]<br>0xFF76DFD8|- rs1_val == -1431655766<br> - rs1_val==-1431655766<br>                                                                              |[0x80001332]:c.bnez a0, 5<br> [0x8000133c]:c.addi sp, 3<br> [0x8000133e]:sw sp, 260(ra)<br>                                    |
|  67|[0x8000330c]<br>0xFF76DFD9|- rs1_val==3<br>                                                                                                                     |[0x80001354]:c.bnez a0, 252<br> [0x8000134c]:addi sp, sp, 1<br> [0x80001350]:jal zero, 16<br> [0x80001360]:sw sp, 264(ra)<br>  |
|  68|[0x80003310]<br>0xFF76DFDC|- rs1_val==5<br>                                                                                                                     |[0x80001376]:c.bnez a0, 63<br> [0x800013f4]:c.addi sp, 3<br> [0x800013f6]:sw sp, 268(ra)<br>                                   |
|  69|[0x80003314]<br>0xFF76DFDD|- rs1_val==858993459<br>                                                                                                             |[0x8000141a]:c.bnez a0, 247<br> [0x80001408]:addi sp, sp, 1<br> [0x8000140c]:jal zero, 26<br> [0x80001426]:sw sp, 272(ra)<br>  |
|  70|[0x80003318]<br>0xFF76DFDE|- rs1_val==1717986918<br>                                                                                                            |[0x80001446]:c.bnez a0, 249<br> [0x80001438]:addi sp, sp, 1<br> [0x8000143c]:jal zero, 22<br> [0x80001452]:sw sp, 276(ra)<br>  |
|  71|[0x8000331c]<br>0xFF76DFDF|- rs1_val==46341<br>                                                                                                                 |[0x80001510]:c.bnez a0, 170<br> [0x80001464]:addi sp, sp, 1<br> [0x80001468]:jal zero, 180<br> [0x8000151c]:sw sp, 280(ra)<br> |
|  72|[0x80003320]<br>0xFF76DFE0|- rs1_val==-46340<br>                                                                                                                |[0x8000153e]:c.bnez a0, 248<br> [0x8000152e]:addi sp, sp, 1<br> [0x80001532]:jal zero, 24<br> [0x8000154a]:sw sp, 284(ra)<br>  |
|  73|[0x80003324]<br>0xFF76DFE3|- rs1_val==46340<br>                                                                                                                 |[0x80001564]:c.bnez a0, 5<br> [0x8000156e]:c.addi sp, 3<br> [0x80001570]:sw sp, 288(ra)<br>                                    |
|  74|[0x80003328]<br>0xFF76DFE6|- rs1_val==1431655764<br>                                                                                                            |[0x8000158a]:c.bnez a0, 8<br> [0x8000159a]:c.addi sp, 3<br> [0x8000159c]:sw sp, 292(ra)<br>                                    |
|  75|[0x8000332c]<br>0xFF76DFE7|- rs1_val == -4194305<br>                                                                                                            |[0x80001630]:c.bnez a0, 191<br> [0x800015ae]:addi sp, sp, 1<br> [0x800015b2]:jal zero, 138<br> [0x8000163c]:sw sp, 296(ra)<br> |
|  76|[0x80003330]<br>0xFF76DFE8|- rs1_val==1717986919<br>                                                                                                            |[0x8000165c]:c.bnez a0, 249<br> [0x8000164e]:addi sp, sp, 1<br> [0x80001652]:jal zero, 22<br> [0x80001668]:sw sp, 300(ra)<br>  |
|  77|[0x80003334]<br>0xFF76DFEB|- rs1_val==858993458<br>                                                                                                             |[0x80001682]:c.bnez a0, 85<br> [0x8000172c]:c.addi sp, 3<br> [0x8000172e]:sw sp, 304(ra)<br>                                   |
|  78|[0x80003338]<br>0xFF76DFEE|- rs1_val==1717986917<br>                                                                                                            |[0x80001748]:c.bnez a0, 32<br> [0x80001788]:c.addi sp, 3<br> [0x8000178a]:sw sp, 308(ra)<br>                                   |
|  79|[0x8000333c]<br>0xFF76DFEF|- rs1_val==46339<br>                                                                                                                 |[0x800017a4]:c.bnez a0, 252<br> [0x8000179c]:addi sp, sp, 1<br> [0x800017a0]:jal zero, 16<br> [0x800017b0]:sw sp, 312(ra)<br>  |
|  80|[0x80003340]<br>0xFF76DFF2|- rs1_val==1431655766<br>                                                                                                            |[0x800017ca]:c.bnez a0, 64<br> [0x8000184a]:c.addi sp, 3<br> [0x8000184c]:sw sp, 316(ra)<br>                                   |
|  81|[0x80003344]<br>0xFF76DFF3|- rs1_val==-1431655765<br>                                                                                                           |[0x8000186e]:c.bnez a0, 248<br> [0x8000185e]:addi sp, sp, 1<br> [0x80001862]:jal zero, 24<br> [0x8000187a]:sw sp, 320(ra)<br>  |
|  82|[0x80003348]<br>0xFF76DFF6|- rs1_val==6<br>                                                                                                                     |[0x80001890]:c.bnez a0, 5<br> [0x8000189a]:c.addi sp, 3<br> [0x8000189c]:sw sp, 324(ra)<br>                                    |
|  83|[0x8000334c]<br>0xFF76DFF9|- rs1_val==858993460<br>                                                                                                             |[0x800018b6]:c.bnez a0, 5<br> [0x800018c0]:c.addi sp, 3<br> [0x800018c2]:sw sp, 328(ra)<br>                                    |
|  84|[0x80003350]<br>0xFF76DFFA|- rs1_val == -2097153<br>                                                                                                            |[0x800018e8]:c.bnez a0, 246<br> [0x800018d4]:addi sp, sp, 1<br> [0x800018d8]:jal zero, 28<br> [0x800018f4]:sw sp, 332(ra)<br>  |
|  85|[0x80003354]<br>0xFF76DFFD|- rs1_val==-46339<br>                                                                                                                |[0x8000190e]:c.bnez a0, 9<br> [0x80001920]:c.addi sp, 3<br> [0x80001922]:sw sp, 336(ra)<br>                                    |
