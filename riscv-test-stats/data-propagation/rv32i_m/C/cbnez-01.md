
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80001660')]      |
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
|   2|[0x80003208]<br>0xFF76DF5B|- rs1 : x8<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val > 0<br> - rs1_val==0<br>                                                |[0x80000134]:c.bnez s0, 7<br> [0x80000136]:addi sp, sp, 2<br> [0x8000013a]:jal zero, 10<br> [0x80000144]:sw sp, 4(ra)<br>      |
|   3|[0x8000320c]<br>0xFF76DF5C|- rs1 : x12<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 2147483647<br>                       |[0x80000202]:c.bnez a2, 170<br> [0x80000156]:addi sp, sp, 1<br> [0x8000015a]:jal zero, 180<br> [0x8000020e]:sw sp, 8(ra)<br>   |
|   4|[0x80003210]<br>0xFF76DF5F|- rs1 : x15<br> - rs1_val == 1<br> - rs1_val > 0 and imm_val > 0<br>                                                                 |[0x80000224]:c.bnez a5, 32<br> [0x80000264]:c.addi sp, 3<br> [0x80000266]:sw sp, 12(ra)<br>                                    |
|   5|[0x80003214]<br>0xFF76DF60|- rs1 : x13<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -1048577<br>                                                          |[0x80000324]:c.bnez a3, 170<br> [0x80000278]:addi sp, sp, 1<br> [0x8000027c]:jal zero, 180<br> [0x80000330]:sw sp, 16(ra)<br>  |
|   6|[0x80003218]<br>0xFF76DF62|- rs1 : x11<br> - rs1_val == 0 and imm_val < 0<br>                                                                                   |[0x80000346]:c.bnez a1, 252<br> [0x80000348]:addi sp, sp, 2<br> [0x8000034c]:jal zero, 6<br> [0x80000352]:sw sp, 20(ra)<br>    |
|   7|[0x8000321c]<br>0xFF76DF63|- rs1 : x14<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                                  |[0x80000374]:c.bnez a4, 246<br> [0x80000360]:addi sp, sp, 1<br> [0x80000364]:jal zero, 28<br> [0x80000380]:sw sp, 24(ra)<br>   |
|   8|[0x80003220]<br>0xFF76DF64|- rs1 : x9<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                                   |[0x8000039c]:c.bnez s1, 249<br> [0x8000038e]:addi sp, sp, 1<br> [0x80000392]:jal zero, 22<br> [0x800003a8]:sw sp, 28(ra)<br>   |
|   9|[0x80003224]<br>0xFF76DF67|- rs1_val == 8<br>                                                                                                                   |[0x800003be]:c.bnez a0, 32<br> [0x800003fe]:c.addi sp, 3<br> [0x80000400]:sw sp, 32(ra)<br>                                    |
|  10|[0x80003228]<br>0xFF76DF6A|- rs1_val == 16<br>                                                                                                                  |[0x80000416]:c.bnez a0, 5<br> [0x80000420]:c.addi sp, 3<br> [0x80000422]:sw sp, 36(ra)<br>                                     |
|  11|[0x8000322c]<br>0xFF76DF6B|- rs1_val == 32<br>                                                                                                                  |[0x8000043c]:c.bnez a0, 250<br> [0x80000430]:addi sp, sp, 1<br> [0x80000434]:jal zero, 20<br> [0x80000448]:sw sp, 40(ra)<br>   |
|  12|[0x80003230]<br>0xFF76DF6C|- rs1_val == 64<br>                                                                                                                  |[0x8000045e]:c.bnez a0, 252<br> [0x80000456]:addi sp, sp, 1<br> [0x8000045a]:jal zero, 16<br> [0x8000046a]:sw sp, 44(ra)<br>   |
|  13|[0x80003234]<br>0xFF76DF6D|- rs1_val == 128<br>                                                                                                                 |[0x80000524]:c.bnez a0, 170<br> [0x80000478]:addi sp, sp, 1<br> [0x8000047c]:jal zero, 180<br> [0x80000530]:sw sp, 48(ra)<br>  |
|  14|[0x80003238]<br>0xFF76DF70|- rs1_val == 256<br>                                                                                                                 |[0x80000546]:c.bnez a0, 7<br> [0x80000554]:c.addi sp, 3<br> [0x80000556]:sw sp, 52(ra)<br>                                     |
|  15|[0x8000323c]<br>0xFF76DF73|- rs1_val == 512<br>                                                                                                                 |[0x8000056c]:c.bnez a0, 8<br> [0x8000057c]:c.addi sp, 3<br> [0x8000057e]:sw sp, 56(ra)<br>                                     |
|  16|[0x80003240]<br>0xFF76DF76|- rs1_val == 1024<br>                                                                                                                |[0x80000594]:c.bnez a0, 5<br> [0x8000059e]:c.addi sp, 3<br> [0x800005a0]:sw sp, 60(ra)<br>                                     |
|  17|[0x80003244]<br>0xFF76DF79|- rs1_val == 2048<br>                                                                                                                |[0x800005ba]:c.bnez a0, 16<br> [0x800005da]:c.addi sp, 3<br> [0x800005dc]:sw sp, 64(ra)<br>                                    |
|  18|[0x80003248]<br>0xFF76DF7A|- rs1_val == 4096<br>                                                                                                                |[0x800005fe]:c.bnez a0, 246<br> [0x800005ea]:addi sp, sp, 1<br> [0x800005ee]:jal zero, 28<br> [0x8000060a]:sw sp, 68(ra)<br>   |
|  19|[0x8000324c]<br>0xFF76DF7B|- rs1_val == 8192<br>                                                                                                                |[0x80000620]:c.bnez a0, 252<br> [0x80000618]:addi sp, sp, 1<br> [0x8000061c]:jal zero, 16<br> [0x8000062c]:sw sp, 72(ra)<br>   |
|  20|[0x80003250]<br>0xFF76DF7E|- rs1_val == 16384<br>                                                                                                               |[0x80000642]:c.bnez a0, 5<br> [0x8000064c]:c.addi sp, 3<br> [0x8000064e]:sw sp, 76(ra)<br>                                     |
|  21|[0x80003254]<br>0xFF76DF81|- rs1_val == 32768<br>                                                                                                               |[0x80000664]:c.bnez a0, 16<br> [0x80000684]:c.addi sp, 3<br> [0x80000686]:sw sp, 80(ra)<br>                                    |
|  22|[0x80003258]<br>0xFF76DF82|- rs1_val == 65536<br>                                                                                                               |[0x800006a4]:c.bnez a0, 248<br> [0x80000694]:addi sp, sp, 1<br> [0x80000698]:jal zero, 24<br> [0x800006b0]:sw sp, 84(ra)<br>   |
|  23|[0x8000325c]<br>0xFF76DF85|- rs1_val == 131072<br>                                                                                                              |[0x800006c6]:c.bnez a0, 6<br> [0x800006d2]:c.addi sp, 3<br> [0x800006d4]:sw sp, 88(ra)<br>                                     |
|  24|[0x80003260]<br>0xFF76DF86|- rs1_val == 262144<br>                                                                                                              |[0x800006ee]:c.bnez a0, 250<br> [0x800006e2]:addi sp, sp, 1<br> [0x800006e6]:jal zero, 20<br> [0x800006fa]:sw sp, 92(ra)<br>   |
|  25|[0x80003264]<br>0xFF76DF87|- rs1_val == 524288<br>                                                                                                              |[0x80000712]:c.bnez a0, 251<br> [0x80000708]:addi sp, sp, 1<br> [0x8000070c]:jal zero, 18<br> [0x8000071e]:sw sp, 96(ra)<br>   |
|  26|[0x80003268]<br>0xFF76DF88|- rs1_val == 1048576<br>                                                                                                             |[0x8000073a]:c.bnez a0, 249<br> [0x8000072c]:addi sp, sp, 1<br> [0x80000730]:jal zero, 22<br> [0x80000746]:sw sp, 100(ra)<br>  |
|  27|[0x8000326c]<br>0xFF76DF89|- rs1_val == 2097152<br>                                                                                                             |[0x80000768]:c.bnez a0, 246<br> [0x80000754]:addi sp, sp, 1<br> [0x80000758]:jal zero, 28<br> [0x80000774]:sw sp, 104(ra)<br>  |
|  28|[0x80003270]<br>0xFF76DF8A|- rs1_val == 4194304<br>                                                                                                             |[0x8000078a]:c.bnez a0, 252<br> [0x80000782]:addi sp, sp, 1<br> [0x80000786]:jal zero, 16<br> [0x80000796]:sw sp, 108(ra)<br>  |
|  29|[0x80003274]<br>0xFF76DF8D|- rs1_val == 8388608<br>                                                                                                             |[0x800007ac]:c.bnez a0, 5<br> [0x800007b6]:c.addi sp, 3<br> [0x800007b8]:sw sp, 112(ra)<br>                                    |
|  30|[0x80003278]<br>0xFF76DF8E|- rs1_val == 16777216<br>                                                                                                            |[0x800007ce]:c.bnez a0, 252<br> [0x800007c6]:addi sp, sp, 1<br> [0x800007ca]:jal zero, 16<br> [0x800007da]:sw sp, 116(ra)<br>  |
|  31|[0x8000327c]<br>0xFF76DF8F|- rs1_val == 33554432<br>                                                                                                            |[0x80000894]:c.bnez a0, 170<br> [0x800007e8]:addi sp, sp, 1<br> [0x800007ec]:jal zero, 180<br> [0x800008a0]:sw sp, 120(ra)<br> |
|  32|[0x80003280]<br>0xFF76DF92|- rs1_val == 67108864<br>                                                                                                            |[0x800008b6]:c.bnez a0, 5<br> [0x800008c0]:c.addi sp, 3<br> [0x800008c2]:sw sp, 124(ra)<br>                                    |
|  33|[0x80003284]<br>0xFF76DF93|- rs1_val == 134217728<br>                                                                                                           |[0x8000097c]:c.bnez a0, 170<br> [0x800008d0]:addi sp, sp, 1<br> [0x800008d4]:jal zero, 180<br> [0x80000988]:sw sp, 128(ra)<br> |
|  34|[0x80003288]<br>0xFF76DF94|- rs1_val == 268435456<br>                                                                                                           |[0x800009a2]:c.bnez a0, 250<br> [0x80000996]:addi sp, sp, 1<br> [0x8000099a]:jal zero, 20<br> [0x800009ae]:sw sp, 132(ra)<br>  |
|  35|[0x8000328c]<br>0xFF76DF95|- rs1_val == 536870912<br>                                                                                                           |[0x800009ce]:c.bnez a0, 247<br> [0x800009bc]:addi sp, sp, 1<br> [0x800009c0]:jal zero, 26<br> [0x800009da]:sw sp, 136(ra)<br>  |
|  36|[0x80003290]<br>0xFF76DF98|- rs1_val == 1073741824<br>                                                                                                          |[0x800009f0]:c.bnez a0, 32<br> [0x80000a30]:c.addi sp, 3<br> [0x80000a32]:sw sp, 140(ra)<br>                                   |
|  37|[0x80003294]<br>0xFF76DF99|- rs1_val == -2<br>                                                                                                                  |[0x80000ac2]:c.bnez a0, 191<br> [0x80000a40]:addi sp, sp, 1<br> [0x80000a44]:jal zero, 138<br> [0x80000ace]:sw sp, 144(ra)<br> |
|  38|[0x80003298]<br>0xFF76DF9A|- rs1_val == -3<br>                                                                                                                  |[0x80000afe]:c.bnez a0, 239<br> [0x80000adc]:addi sp, sp, 1<br> [0x80000ae0]:jal zero, 42<br> [0x80000b0a]:sw sp, 148(ra)<br>  |
|  39|[0x8000329c]<br>0xFF76DF9B|- rs1_val == -5<br>                                                                                                                  |[0x80000b5a]:c.bnez a0, 223<br> [0x80000b18]:addi sp, sp, 1<br> [0x80000b1c]:jal zero, 74<br> [0x80000b66]:sw sp, 152(ra)<br>  |
|  40|[0x800032a0]<br>0xFF76DF9E|- rs1_val == -9<br>                                                                                                                  |[0x80000b7c]:c.bnez a0, 9<br> [0x80000b8e]:c.addi sp, 3<br> [0x80000b90]:sw sp, 156(ra)<br>                                    |
|  41|[0x800032a4]<br>0xFF76DF9F|- rs1_val == -17<br>                                                                                                                 |[0x80000bb0]:c.bnez a0, 247<br> [0x80000b9e]:addi sp, sp, 1<br> [0x80000ba2]:jal zero, 26<br> [0x80000bbc]:sw sp, 160(ra)<br>  |
|  42|[0x800032a8]<br>0xFF76DFA2|- rs1_val == -33<br>                                                                                                                 |[0x80000bd2]:c.bnez a0, 32<br> [0x80000c12]:c.addi sp, 3<br> [0x80000c14]:sw sp, 164(ra)<br>                                   |
|  43|[0x800032ac]<br>0xFF76DFA3|- rs1_val == -65<br>                                                                                                                 |[0x80000c36]:c.bnez a0, 246<br> [0x80000c22]:addi sp, sp, 1<br> [0x80000c26]:jal zero, 28<br> [0x80000c42]:sw sp, 168(ra)<br>  |
|  44|[0x800032b0]<br>0xFF76DFA4|- rs1_val == -129<br>                                                                                                                |[0x80000c60]:c.bnez a0, 248<br> [0x80000c50]:addi sp, sp, 1<br> [0x80000c54]:jal zero, 24<br> [0x80000c6c]:sw sp, 172(ra)<br>  |
|  45|[0x800032b4]<br>0xFF76DFA5|- rs1_val == -257<br>                                                                                                                |[0x80000c82]:c.bnez a0, 252<br> [0x80000c7a]:addi sp, sp, 1<br> [0x80000c7e]:jal zero, 16<br> [0x80000c8e]:sw sp, 176(ra)<br>  |
|  46|[0x800032b8]<br>0xFF76DFA6|- rs1_val == -513<br>                                                                                                                |[0x80000ca6]:c.bnez a0, 251<br> [0x80000c9c]:addi sp, sp, 1<br> [0x80000ca0]:jal zero, 18<br> [0x80000cb2]:sw sp, 180(ra)<br>  |
|  47|[0x800032bc]<br>0xFF76DFA7|- rs1_val == -1025<br>                                                                                                               |[0x80000cca]:c.bnez a0, 251<br> [0x80000cc0]:addi sp, sp, 1<br> [0x80000cc4]:jal zero, 18<br> [0x80000cd6]:sw sp, 184(ra)<br>  |
|  48|[0x800032c0]<br>0xFF76DFAA|- rs1_val == -2049<br>                                                                                                               |[0x80000cf0]:c.bnez a0, 5<br> [0x80000cfa]:c.addi sp, 3<br> [0x80000cfc]:sw sp, 188(ra)<br>                                    |
|  49|[0x800032c4]<br>0xFF76DFAD|- rs1_val == -4097<br>                                                                                                               |[0x80000d16]:c.bnez a0, 9<br> [0x80000d28]:c.addi sp, 3<br> [0x80000d2a]:sw sp, 192(ra)<br>                                    |
|  50|[0x800032c8]<br>0xFF76DFAE|- rs1_val == -8193<br>                                                                                                               |[0x80000d44]:c.bnez a0, 252<br> [0x80000d3c]:addi sp, sp, 1<br> [0x80000d40]:jal zero, 16<br> [0x80000d50]:sw sp, 196(ra)<br>  |
|  51|[0x800032cc]<br>0xFF76DFAF|- rs1_val == -16385<br>                                                                                                              |[0x80000d76]:c.bnez a0, 246<br> [0x80000d62]:addi sp, sp, 1<br> [0x80000d66]:jal zero, 28<br> [0x80000d82]:sw sp, 200(ra)<br>  |
|  52|[0x800032d0]<br>0xFF76DFB0|- rs1_val == -32769<br>                                                                                                              |[0x80000da6]:c.bnez a0, 247<br> [0x80000d94]:addi sp, sp, 1<br> [0x80000d98]:jal zero, 26<br> [0x80000db2]:sw sp, 204(ra)<br>  |
|  53|[0x800032d4]<br>0xFF76DFB3|- rs1_val == -65537<br>                                                                                                              |[0x80000dcc]:c.bnez a0, 8<br> [0x80000ddc]:c.addi sp, 3<br> [0x80000dde]:sw sp, 208(ra)<br>                                    |
|  54|[0x800032d8]<br>0xFF76DFB6|- rs1_val == -131073<br>                                                                                                             |[0x80000df8]:c.bnez a0, 8<br> [0x80000e08]:c.addi sp, 3<br> [0x80000e0a]:sw sp, 212(ra)<br>                                    |
|  55|[0x800032dc]<br>0xFF76DFB7|- rs1_val == -262145<br>                                                                                                             |[0x80000e2a]:c.bnez a0, 249<br> [0x80000e1c]:addi sp, sp, 1<br> [0x80000e20]:jal zero, 22<br> [0x80000e36]:sw sp, 216(ra)<br>  |
|  56|[0x800032e0]<br>0xFF76DFB8|- rs1_val == -524289<br>                                                                                                             |[0x80000e6a]:c.bnez a0, 239<br> [0x80000e48]:addi sp, sp, 1<br> [0x80000e4c]:jal zero, 42<br> [0x80000e76]:sw sp, 220(ra)<br>  |
|  57|[0x800032e4]<br>0xFF76DFBB|- rs1_val == -8388609<br>                                                                                                            |[0x80000e90]:c.bnez a0, 7<br> [0x80000e9e]:c.addi sp, 3<br> [0x80000ea0]:sw sp, 224(ra)<br>                                    |
|  58|[0x800032e8]<br>0xFF76DFBC|- rs1_val == -16777217<br>                                                                                                           |[0x80000eba]:c.bnez a0, 252<br> [0x80000eb2]:addi sp, sp, 1<br> [0x80000eb6]:jal zero, 16<br> [0x80000ec6]:sw sp, 228(ra)<br>  |
|  59|[0x800032ec]<br>0xFF76DFBD|- rs1_val == -33554433<br>                                                                                                           |[0x80000eea]:c.bnez a0, 247<br> [0x80000ed8]:addi sp, sp, 1<br> [0x80000edc]:jal zero, 26<br> [0x80000ef6]:sw sp, 232(ra)<br>  |
|  60|[0x800032f0]<br>0xFF76DFBE|- rs1_val == -67108865<br>                                                                                                           |[0x80000f10]:c.bnez a0, 252<br> [0x80000f08]:addi sp, sp, 1<br> [0x80000f0c]:jal zero, 16<br> [0x80000f1c]:sw sp, 236(ra)<br>  |
|  61|[0x800032f4]<br>0xFF76DFC1|- rs1_val == -134217729<br>                                                                                                          |[0x80000f36]:c.bnez a0, 5<br> [0x80000f40]:c.addi sp, 3<br> [0x80000f42]:sw sp, 240(ra)<br>                                    |
|  62|[0x800032f8]<br>0xFF76DFC4|- rs1_val == -268435457<br>                                                                                                          |[0x80000f5c]:c.bnez a0, 64<br> [0x80000fdc]:c.addi sp, 3<br> [0x80000fde]:sw sp, 244(ra)<br>                                   |
|  63|[0x800032fc]<br>0xFF76DFC5|- rs1_val == -536870913<br>                                                                                                          |[0x80000ff8]:c.bnez a0, 252<br> [0x80000ff0]:addi sp, sp, 1<br> [0x80000ff4]:jal zero, 16<br> [0x80001004]:sw sp, 248(ra)<br>  |
|  64|[0x80003300]<br>0xFF76DFC8|- rs1_val == -1073741825<br>                                                                                                         |[0x8000101e]:c.bnez a0, 16<br> [0x8000103e]:c.addi sp, 3<br> [0x80001040]:sw sp, 252(ra)<br>                                   |
|  65|[0x80003304]<br>0xFF76DFCB|- rs1_val == 1431655765<br> - rs1_val==1431655765<br>                                                                                |[0x8000105a]:c.bnez a0, 9<br> [0x8000106c]:c.addi sp, 3<br> [0x8000106e]:sw sp, 256(ra)<br>                                    |
|  66|[0x80003308]<br>0xFF76DFCE|- rs1_val == -1431655766<br> - rs1_val==-1431655766<br>                                                                              |[0x80001088]:c.bnez a0, 85<br> [0x80001132]:c.addi sp, 3<br> [0x80001134]:sw sp, 260(ra)<br>                                   |
|  67|[0x8000330c]<br>0xFF76DFD1|- rs1_val==3<br>                                                                                                                     |[0x8000114a]:c.bnez a0, 5<br> [0x80001154]:c.addi sp, 3<br> [0x80001156]:sw sp, 264(ra)<br>                                    |
|  68|[0x80003310]<br>0xFF76DFD2|- rs1_val==5<br>                                                                                                                     |[0x8000116c]:c.bnez a0, 252<br> [0x80001164]:addi sp, sp, 1<br> [0x80001168]:jal zero, 16<br> [0x80001178]:sw sp, 268(ra)<br>  |
|  69|[0x80003314]<br>0xFF76DFD3|- rs1_val==858993459<br>                                                                                                             |[0x80001192]:c.bnez a0, 252<br> [0x8000118a]:addi sp, sp, 1<br> [0x8000118e]:jal zero, 16<br> [0x8000119e]:sw sp, 272(ra)<br>  |
|  70|[0x80003318]<br>0xFF76DFD4|- rs1_val==1717986918<br>                                                                                                            |[0x800011bc]:c.bnez a0, 250<br> [0x800011b0]:addi sp, sp, 1<br> [0x800011b4]:jal zero, 20<br> [0x800011c8]:sw sp, 276(ra)<br>  |
|  71|[0x8000331c]<br>0xFF76DFD5|- rs1_val==46341<br>                                                                                                                 |[0x800011e2]:c.bnez a0, 252<br> [0x800011da]:addi sp, sp, 1<br> [0x800011de]:jal zero, 16<br> [0x800011ee]:sw sp, 280(ra)<br>  |
|  72|[0x80003320]<br>0xFF76DFD8|- rs1_val==-46340<br>                                                                                                                |[0x80001208]:c.bnez a0, 63<br> [0x80001286]:c.addi sp, 3<br> [0x80001288]:sw sp, 284(ra)<br>                                   |
|  73|[0x80003324]<br>0xFF76DFD9|- rs1_val==46340<br>                                                                                                                 |[0x800012a2]:c.bnez a0, 252<br> [0x8000129a]:addi sp, sp, 1<br> [0x8000129e]:jal zero, 16<br> [0x800012ae]:sw sp, 288(ra)<br>  |
|  74|[0x80003328]<br>0xFF76DFDA|- rs1_val==1431655764<br>                                                                                                            |[0x800012cc]:c.bnez a0, 250<br> [0x800012c0]:addi sp, sp, 1<br> [0x800012c4]:jal zero, 20<br> [0x800012d8]:sw sp, 292(ra)<br>  |
|  75|[0x8000332c]<br>0xFF76DFDD|- rs1_val == -4194305<br>                                                                                                            |[0x800012f2]:c.bnez a0, 6<br> [0x800012fe]:c.addi sp, 3<br> [0x80001300]:sw sp, 296(ra)<br>                                    |
|  76|[0x80003330]<br>0xFF76DFDE|- rs1_val==1717986919<br>                                                                                                            |[0x8000131a]:c.bnez a0, 252<br> [0x80001312]:addi sp, sp, 1<br> [0x80001316]:jal zero, 16<br> [0x80001326]:sw sp, 300(ra)<br>  |
|  77|[0x80003334]<br>0xFF76DFDF|- rs1_val==858993458<br>                                                                                                             |[0x80001342]:c.bnez a0, 251<br> [0x80001338]:addi sp, sp, 1<br> [0x8000133c]:jal zero, 18<br> [0x8000134e]:sw sp, 304(ra)<br>  |
|  78|[0x80003338]<br>0xFF76DFE0|- rs1_val==1717986917<br>                                                                                                            |[0x80001372]:c.bnez a0, 247<br> [0x80001360]:addi sp, sp, 1<br> [0x80001364]:jal zero, 26<br> [0x8000137e]:sw sp, 308(ra)<br>  |
|  79|[0x8000333c]<br>0xFF76DFE3|- rs1_val==46339<br>                                                                                                                 |[0x80001398]:c.bnez a0, 85<br> [0x80001442]:c.addi sp, 3<br> [0x80001444]:sw sp, 312(ra)<br>                                   |
|  80|[0x80003340]<br>0xFF76DFE6|- rs1_val==1431655766<br>                                                                                                            |[0x8000145e]:c.bnez a0, 64<br> [0x800014de]:c.addi sp, 3<br> [0x800014e0]:sw sp, 316(ra)<br>                                   |
|  81|[0x80003344]<br>0xFF76DFE9|- rs1_val==-1431655765<br>                                                                                                           |[0x800014fa]:c.bnez a0, 63<br> [0x80001578]:c.addi sp, 3<br> [0x8000157a]:sw sp, 320(ra)<br>                                   |
|  82|[0x80003348]<br>0xFF76DFEC|- rs1_val==6<br>                                                                                                                     |[0x80001590]:c.bnez a0, 6<br> [0x8000159c]:c.addi sp, 3<br> [0x8000159e]:sw sp, 324(ra)<br>                                    |
|  83|[0x8000334c]<br>0xFF76DFED|- rs1_val==858993460<br>                                                                                                             |[0x800015f2]:c.bnez a0, 223<br> [0x800015b0]:addi sp, sp, 1<br> [0x800015b4]:jal zero, 74<br> [0x800015fe]:sw sp, 328(ra)<br>  |
|  84|[0x80003350]<br>0xFF76DFF0|- rs1_val == -2097153<br>                                                                                                            |[0x80001618]:c.bnez a0, 9<br> [0x8000162a]:c.addi sp, 3<br> [0x8000162c]:sw sp, 332(ra)<br>                                    |
|  85|[0x80003354]<br>0xFF76DFF3|- rs1_val==-46339<br>                                                                                                                |[0x80001646]:c.bnez a0, 7<br> [0x80001654]:c.addi sp, 3<br> [0x80001656]:sw sp, 336(ra)<br>                                    |
