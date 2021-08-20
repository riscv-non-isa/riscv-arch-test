
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x80001b80')]      |
| SIG_REGION                | [('0x80003204', '0x80003354', '84 words')]      |
| COV_LABELS                | cbnez      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/cbnez-01.S/cbnez-01.S    |
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

|s.no|        signature         |                                                  coverpoints                                                  |                                                             code                                                              |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003204]<br>0xFF76DF57|- opcode : c.bnez<br> - rs1 : x11<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -524289<br>               |[0x80000094]:c.bnez a1, 252<br> [0x8000008c]:addi sp, sp, 1<br> [0x80000090]:jal zero, 16<br> [0x800000a0]:sw sp, 0(ra)<br>    |
|   2|[0x80003208]<br>0xFF76DF5A|- rs1 : x10<br> - rs1_val == 2147483647<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val > 0 and imm_val > 0<br> |[0x800000b8]:c.bnez a0, 63<br> [0x80000136]:c.addi sp, 3<br> [0x80000138]:sw sp, 4(ra)<br>                                     |
|   3|[0x8000320c]<br>0xFF76DF5D|- rs1 : x8<br> - rs1_val == -1073741825<br> - rs1_val < 0 and imm_val > 0<br>                                  |[0x80000150]:c.bnez s0, 85<br> [0x800001fa]:c.addi sp, 3<br> [0x800001fc]:sw sp, 8(ra)<br>                                     |
|   4|[0x80003210]<br>0xFF76DF5E|- rs1 : x12<br> - rs1_val == -536870913<br>                                                                    |[0x8000021a]:c.bnez a2, 249<br> [0x8000020c]:addi sp, sp, 1<br> [0x80000210]:jal zero, 22<br> [0x80000226]:sw sp, 12(ra)<br>   |
|   5|[0x80003214]<br>0xFF76DF61|- rs1 : x15<br> - rs1_val == -268435457<br>                                                                    |[0x8000023e]:c.bnez a5, 5<br> [0x80000248]:c.addi sp, 3<br> [0x8000024a]:sw sp, 16(ra)<br>                                     |
|   6|[0x80003218]<br>0xFF76DF62|- rs1 : x13<br> - rs1_val == -134217729<br>                                                                    |[0x80000264]:c.bnez a3, 251<br> [0x8000025a]:addi sp, sp, 1<br> [0x8000025e]:jal zero, 18<br> [0x80000270]:sw sp, 20(ra)<br>   |
|   7|[0x8000321c]<br>0xFF76DF63|- rs1 : x9<br> - rs1_val == -67108865<br>                                                                      |[0x8000028e]:c.bnez s1, 249<br> [0x80000280]:addi sp, sp, 1<br> [0x80000284]:jal zero, 22<br> [0x8000029a]:sw sp, 24(ra)<br>   |
|   8|[0x80003220]<br>0xFF76DF66|- rs1 : x14<br> - rs1_val == -33554433<br>                                                                     |[0x800002b2]:c.bnez a4, 5<br> [0x800002bc]:c.addi sp, 3<br> [0x800002be]:sw sp, 28(ra)<br>                                     |
|   9|[0x80003224]<br>0xFF76DF69|- rs1_val == -16777217<br>                                                                                     |[0x800002d6]:c.bnez a0, 85<br> [0x80000380]:c.addi sp, 3<br> [0x80000382]:sw sp, 32(ra)<br>                                    |
|  10|[0x80003228]<br>0xFF76DF6C|- rs1_val == -8388609<br>                                                                                      |[0x8000039a]:c.bnez a0, 6<br> [0x800003a6]:c.addi sp, 3<br> [0x800003a8]:sw sp, 36(ra)<br>                                     |
|  11|[0x8000322c]<br>0xFF76DF6D|- rs1_val == -4194305<br>                                                                                      |[0x800003c0]:c.bnez a0, 252<br> [0x800003b8]:addi sp, sp, 1<br> [0x800003bc]:jal zero, 16<br> [0x800003cc]:sw sp, 40(ra)<br>   |
|  12|[0x80003230]<br>0xFF76DF70|- rs1_val == -2097153<br>                                                                                      |[0x800003e4]:c.bnez a0, 32<br> [0x80000424]:c.addi sp, 3<br> [0x80000426]:sw sp, 44(ra)<br>                                    |
|  13|[0x80003234]<br>0xFF76DF73|- rs1_val == -1048577<br>                                                                                      |[0x8000043e]:c.bnez a0, 85<br> [0x800004e8]:c.addi sp, 3<br> [0x800004ea]:sw sp, 48(ra)<br>                                    |
|  14|[0x80003238]<br>0xFF76DF76|- rs1_val == -262145<br>                                                                                       |[0x80000502]:c.bnez a0, 7<br> [0x80000510]:c.addi sp, 3<br> [0x80000512]:sw sp, 52(ra)<br>                                     |
|  15|[0x8000323c]<br>0xFF76DF79|- rs1_val == -131073<br>                                                                                       |[0x8000052a]:c.bnez a0, 16<br> [0x8000054a]:c.addi sp, 3<br> [0x8000054c]:sw sp, 56(ra)<br>                                    |
|  16|[0x80003240]<br>0xFF76DF7C|- rs1_val == -65537<br>                                                                                        |[0x80000564]:c.bnez a0, 32<br> [0x800005a4]:c.addi sp, 3<br> [0x800005a6]:sw sp, 60(ra)<br>                                    |
|  17|[0x80003244]<br>0xFF76DF7D|- rs1_val == -32769<br>                                                                                        |[0x800005c0]:c.bnez a0, 251<br> [0x800005b6]:addi sp, sp, 1<br> [0x800005ba]:jal zero, 18<br> [0x800005cc]:sw sp, 64(ra)<br>   |
|  18|[0x80003248]<br>0xFF76DF80|- rs1_val == -16385<br>                                                                                        |[0x800005e4]:c.bnez a0, 9<br> [0x800005f6]:c.addi sp, 3<br> [0x800005f8]:sw sp, 68(ra)<br>                                     |
|  19|[0x8000324c]<br>0xFF76DF81|- rs1_val == -8193<br>                                                                                         |[0x80000614]:c.bnez a0, 250<br> [0x80000608]:addi sp, sp, 1<br> [0x8000060c]:jal zero, 20<br> [0x80000620]:sw sp, 72(ra)<br>   |
|  20|[0x80003250]<br>0xFF76DF82|- rs1_val == -4097<br>                                                                                         |[0x80000672]:c.bnez a0, 223<br> [0x80000630]:addi sp, sp, 1<br> [0x80000634]:jal zero, 74<br> [0x8000067e]:sw sp, 76(ra)<br>   |
|  21|[0x80003254]<br>0xFF76DF85|- rs1_val == -2049<br>                                                                                         |[0x80000696]:c.bnez a0, 64<br> [0x80000716]:c.addi sp, 3<br> [0x80000718]:sw sp, 80(ra)<br>                                    |
|  22|[0x80003258]<br>0xFF76DF88|- rs1_val == -1025<br>                                                                                         |[0x8000072c]:c.bnez a0, 9<br> [0x8000073e]:c.addi sp, 3<br> [0x80000740]:sw sp, 84(ra)<br>                                     |
|  23|[0x8000325c]<br>0xFF76DF89|- rs1_val == -513<br>                                                                                          |[0x800007ce]:c.bnez a0, 191<br> [0x8000074c]:addi sp, sp, 1<br> [0x80000750]:jal zero, 138<br> [0x800007da]:sw sp, 88(ra)<br>  |
|  24|[0x80003260]<br>0xFF76DF8A|- rs1_val == -257<br>                                                                                          |[0x80000866]:c.bnez a0, 192<br> [0x800007e6]:addi sp, sp, 1<br> [0x800007ea]:jal zero, 136<br> [0x80000872]:sw sp, 92(ra)<br>  |
|  25|[0x80003264]<br>0xFF76DF8D|- rs1_val == -129<br>                                                                                          |[0x80000886]:c.bnez a0, 7<br> [0x80000894]:c.addi sp, 3<br> [0x80000896]:sw sp, 96(ra)<br>                                     |
|  26|[0x80003268]<br>0xFF76DF90|- rs1_val == -65<br>                                                                                           |[0x800008aa]:c.bnez a0, 8<br> [0x800008ba]:c.addi sp, 3<br> [0x800008bc]:sw sp, 100(ra)<br>                                    |
|  27|[0x8000326c]<br>0xFF76DF93|- rs1_val == -33<br>                                                                                           |[0x800008d0]:c.bnez a0, 63<br> [0x8000094e]:c.addi sp, 3<br> [0x80000950]:sw sp, 104(ra)<br>                                   |
|  28|[0x80003270]<br>0xFF76DF96|- rs1_val == -17<br>                                                                                           |[0x80000964]:c.bnez a0, 16<br> [0x80000984]:c.addi sp, 3<br> [0x80000986]:sw sp, 108(ra)<br>                                   |
|  29|[0x80003274]<br>0xFF76DF97|- rs1_val == -9<br>                                                                                            |[0x8000099a]:c.bnez a0, 252<br> [0x80000992]:addi sp, sp, 1<br> [0x80000996]:jal zero, 16<br> [0x800009a6]:sw sp, 112(ra)<br>  |
|  30|[0x80003278]<br>0xFF76DF98|- rs1_val == -5<br>                                                                                            |[0x80000a32]:c.bnez a0, 192<br> [0x800009b2]:addi sp, sp, 1<br> [0x800009b6]:jal zero, 136<br> [0x80000a3e]:sw sp, 116(ra)<br> |
|  31|[0x8000327c]<br>0xFF76DF9B|- rs1_val == -3<br>                                                                                            |[0x80000a52]:c.bnez a0, 85<br> [0x80000afc]:c.addi sp, 3<br> [0x80000afe]:sw sp, 120(ra)<br>                                   |
|  32|[0x80003280]<br>0xFF76DF9C|- rs1_val == -2<br>                                                                                            |[0x80000b1a]:c.bnez a0, 248<br> [0x80000b0a]:addi sp, sp, 1<br> [0x80000b0e]:jal zero, 24<br> [0x80000b26]:sw sp, 124(ra)<br>  |
|  33|[0x80003284]<br>0xFF76DF9D|- rs1_val == -2147483648<br> - rs1_val == (-2**(xlen-1))<br>                                                   |[0x80000bb2]:c.bnez a0, 192<br> [0x80000b32]:addi sp, sp, 1<br> [0x80000b36]:jal zero, 136<br> [0x80000bbe]:sw sp, 128(ra)<br> |
|  34|[0x80003288]<br>0xFF76DFA0|- rs1_val == 1073741824<br>                                                                                    |[0x80000bd2]:c.bnez a0, 63<br> [0x80000c50]:c.addi sp, 3<br> [0x80000c52]:sw sp, 132(ra)<br>                                   |
|  35|[0x8000328c]<br>0xFF76DFA1|- rs1_val == 536870912<br> - rs1_val > 0 and imm_val < 0<br>                                                   |[0x80000c6a]:c.bnez a0, 250<br> [0x80000c5e]:addi sp, sp, 1<br> [0x80000c62]:jal zero, 20<br> [0x80000c76]:sw sp, 136(ra)<br>  |
|  36|[0x80003290]<br>0xFF76DFA4|- rs1_val == 268435456<br>                                                                                     |[0x80000c8a]:c.bnez a0, 63<br> [0x80000d08]:c.addi sp, 3<br> [0x80000d0a]:sw sp, 140(ra)<br>                                   |
|  37|[0x80003294]<br>0xFF76DFA5|- rs1_val == 134217728<br>                                                                                     |[0x80000d98]:c.bnez a0, 191<br> [0x80000d16]:addi sp, sp, 1<br> [0x80000d1a]:jal zero, 138<br> [0x80000da4]:sw sp, 144(ra)<br> |
|  38|[0x80003298]<br>0xFF76DFA8|- rs1_val == 67108864<br>                                                                                      |[0x80000db8]:c.bnez a0, 85<br> [0x80000e62]:c.addi sp, 3<br> [0x80000e64]:sw sp, 148(ra)<br>                                   |
|  39|[0x8000329c]<br>0xFF76DFA9|- rs1_val == 33554432<br>                                                                                      |[0x80000e7e]:c.bnez a0, 249<br> [0x80000e70]:addi sp, sp, 1<br> [0x80000e74]:jal zero, 22<br> [0x80000e8a]:sw sp, 152(ra)<br>  |
|  40|[0x800032a0]<br>0xFF76DFAC|- rs1_val == 16777216<br>                                                                                      |[0x80000e9e]:c.bnez a0, 6<br> [0x80000eaa]:c.addi sp, 3<br> [0x80000eac]:sw sp, 156(ra)<br>                                    |
|  41|[0x800032a4]<br>0xFF76DFAF|- rs1_val == 8388608<br>                                                                                       |[0x80000ec0]:c.bnez a0, 16<br> [0x80000ee0]:c.addi sp, 3<br> [0x80000ee2]:sw sp, 160(ra)<br>                                   |
|  42|[0x800032a8]<br>0xFF76DFB2|- rs1_val == 4194304<br>                                                                                       |[0x80000ef6]:c.bnez a0, 5<br> [0x80000f00]:c.addi sp, 3<br> [0x80000f02]:sw sp, 164(ra)<br>                                    |
|  43|[0x800032ac]<br>0xFF76DFB3|- rs1_val == 2097152<br>                                                                                       |[0x80000f30]:c.bnez a0, 239<br> [0x80000f0e]:addi sp, sp, 1<br> [0x80000f12]:jal zero, 42<br> [0x80000f3c]:sw sp, 168(ra)<br>  |
|  44|[0x800032b0]<br>0xFF76DFB4|- rs1_val == 1048576<br>                                                                                       |[0x80000f50]:c.bnez a0, 252<br> [0x80000f48]:addi sp, sp, 1<br> [0x80000f4c]:jal zero, 16<br> [0x80000f5c]:sw sp, 172(ra)<br>  |
|  45|[0x800032b4]<br>0xFF76DFB5|- rs1_val == 524288<br>                                                                                        |[0x80000f70]:c.bnez a0, 252<br> [0x80000f68]:addi sp, sp, 1<br> [0x80000f6c]:jal zero, 16<br> [0x80000f7c]:sw sp, 176(ra)<br>  |
|  46|[0x800032b8]<br>0xFF76DFB6|- rs1_val == 262144<br>                                                                                        |[0x80000f90]:c.bnez a0, 252<br> [0x80000f88]:addi sp, sp, 1<br> [0x80000f8c]:jal zero, 16<br> [0x80000f9c]:sw sp, 180(ra)<br>  |
|  47|[0x800032bc]<br>0xFF76DFB7|- rs1_val == 131072<br>                                                                                        |[0x80000fb0]:c.bnez a0, 252<br> [0x80000fa8]:addi sp, sp, 1<br> [0x80000fac]:jal zero, 16<br> [0x80000fbc]:sw sp, 184(ra)<br>  |
|  48|[0x800032c0]<br>0xFF76DFBA|- rs1_val == 65536<br>                                                                                         |[0x80000fd0]:c.bnez a0, 63<br> [0x8000104e]:c.addi sp, 3<br> [0x80001050]:sw sp, 188(ra)<br>                                   |
|  49|[0x800032c4]<br>0xFF76DFBD|- rs1_val == 32768<br>                                                                                         |[0x80001064]:c.bnez a0, 63<br> [0x800010e2]:c.addi sp, 3<br> [0x800010e4]:sw sp, 192(ra)<br>                                   |
|  50|[0x800032c8]<br>0xFF76DFBE|- rs1_val == 16384<br>                                                                                         |[0x8000119c]:c.bnez a0, 170<br> [0x800010f0]:addi sp, sp, 1<br> [0x800010f4]:jal zero, 180<br> [0x800011a8]:sw sp, 196(ra)<br> |
|  51|[0x800032cc]<br>0xFF76DFC1|- rs1_val == 8192<br>                                                                                          |[0x800011bc]:c.bnez a0, 8<br> [0x800011cc]:c.addi sp, 3<br> [0x800011ce]:sw sp, 200(ra)<br>                                    |
|  52|[0x800032d0]<br>0xFF76DFC2|- rs1_val == 4096<br>                                                                                          |[0x800011e6]:c.bnez a0, 250<br> [0x800011da]:addi sp, sp, 1<br> [0x800011de]:jal zero, 20<br> [0x800011f2]:sw sp, 204(ra)<br>  |
|  53|[0x800032d4]<br>0xFF76DFC5|- rs1_val == 2048<br>                                                                                          |[0x8000120a]:c.bnez a0, 63<br> [0x80001288]:c.addi sp, 3<br> [0x8000128a]:sw sp, 208(ra)<br>                                   |
|  54|[0x800032d8]<br>0xFF76DFC6|- rs1_val == 1024<br>                                                                                          |[0x800012a0]:c.bnez a0, 251<br> [0x80001296]:addi sp, sp, 1<br> [0x8000129a]:jal zero, 18<br> [0x800012ac]:sw sp, 212(ra)<br>  |
|  55|[0x800032dc]<br>0xFF76DFC9|- rs1_val == 512<br>                                                                                           |[0x800012c0]:c.bnez a0, 9<br> [0x800012d2]:c.addi sp, 3<br> [0x800012d4]:sw sp, 216(ra)<br>                                    |
|  56|[0x800032e0]<br>0xFF76DFCC|- rs1_val == 256<br>                                                                                           |[0x800012e8]:c.bnez a0, 7<br> [0x800012f6]:c.addi sp, 3<br> [0x800012f8]:sw sp, 220(ra)<br>                                    |
|  57|[0x800032e4]<br>0xFF76DFCD|- rs1_val == 128<br>                                                                                           |[0x80001312]:c.bnez a0, 249<br> [0x80001304]:addi sp, sp, 1<br> [0x80001308]:jal zero, 22<br> [0x8000131e]:sw sp, 224(ra)<br>  |
|  58|[0x800032e8]<br>0xFF76DFCE|- rs1_val == 64<br>                                                                                            |[0x8000134c]:c.bnez a0, 239<br> [0x8000132a]:addi sp, sp, 1<br> [0x8000132e]:jal zero, 42<br> [0x80001358]:sw sp, 228(ra)<br>  |
|  59|[0x800032ec]<br>0xFF76DFCF|- rs1_val == 32<br>                                                                                            |[0x8000136c]:c.bnez a0, 252<br> [0x80001364]:addi sp, sp, 1<br> [0x80001368]:jal zero, 16<br> [0x80001378]:sw sp, 232(ra)<br>  |
|  60|[0x800032f0]<br>0xFF76DFD2|- rs1_val == 16<br>                                                                                            |[0x8000138c]:c.bnez a0, 5<br> [0x80001396]:c.addi sp, 3<br> [0x80001398]:sw sp, 236(ra)<br>                                    |
|  61|[0x800032f4]<br>0xFF76DFD5|- rs1_val == 1<br>                                                                                             |[0x800013ac]:c.bnez a0, 5<br> [0x800013b6]:c.addi sp, 3<br> [0x800013b8]:sw sp, 240(ra)<br>                                    |
|  62|[0x800032f8]<br>0xFF76DFD6|- rs1_val==46341<br>                                                                                           |[0x800013da]:c.bnez a0, 247<br> [0x800013c8]:addi sp, sp, 1<br> [0x800013cc]:jal zero, 26<br> [0x800013e6]:sw sp, 244(ra)<br>  |
|  63|[0x800032fc]<br>0xFF76DFD7|- rs1_val==-46339<br>                                                                                          |[0x80001418]:c.bnez a0, 239<br> [0x800013f6]:addi sp, sp, 1<br> [0x800013fa]:jal zero, 42<br> [0x80001424]:sw sp, 248(ra)<br>  |
|  64|[0x80003300]<br>0xFF76DFDA|- rs1_val==1717986919<br>                                                                                      |[0x8000143c]:c.bnez a0, 5<br> [0x80001446]:c.addi sp, 3<br> [0x80001448]:sw sp, 252(ra)<br>                                    |
|  65|[0x80003304]<br>0xFF76DFDB|- rs1_val==858993460<br>                                                                                       |[0x80001460]:c.bnez a0, 252<br> [0x80001458]:addi sp, sp, 1<br> [0x8000145c]:jal zero, 16<br> [0x8000146c]:sw sp, 256(ra)<br>  |
|  66|[0x80003308]<br>0xFF76DFDC|- rs1_val==6<br>                                                                                               |[0x80001480]:c.bnez a0, 252<br> [0x80001478]:addi sp, sp, 1<br> [0x8000147c]:jal zero, 16<br> [0x8000148c]:sw sp, 260(ra)<br>  |
|  67|[0x8000330c]<br>0xFF76DFDF|- rs1_val==-1431655765<br>                                                                                     |[0x800014a4]:c.bnez a0, 16<br> [0x800014c4]:c.addi sp, 3<br> [0x800014c6]:sw sp, 264(ra)<br>                                   |
|  68|[0x80003310]<br>0xFF76DFE2|- rs1_val==1431655766<br>                                                                                      |[0x800014de]:c.bnez a0, 9<br> [0x800014f0]:c.addi sp, 3<br> [0x800014f2]:sw sp, 268(ra)<br>                                    |
|  69|[0x80003314]<br>0xFF76DFE3|- rs1_val == 4<br> - rs1_val==4<br>                                                                            |[0x800015aa]:c.bnez a0, 170<br> [0x800014fe]:addi sp, sp, 1<br> [0x80001502]:jal zero, 180<br> [0x800015b6]:sw sp, 272(ra)<br> |
|  70|[0x80003318]<br>0xFF76DFE6|- rs1_val==46339<br>                                                                                           |[0x800015ce]:c.bnez a0, 63<br> [0x8000164c]:c.addi sp, 3<br> [0x8000164e]:sw sp, 276(ra)<br>                                   |
|  71|[0x8000331c]<br>0xFF76DFE8|- rs1_val==0<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val < 0<br>                                         |[0x8000166c]:c.bnez a0, 247<br> [0x8000166e]:addi sp, sp, 2<br> [0x80001672]:jal zero, 6<br> [0x80001678]:sw sp, 280(ra)<br>   |
|  72|[0x80003320]<br>0xFF76DFEB|- rs1_val==1717986917<br>                                                                                      |[0x80001690]:c.bnez a0, 5<br> [0x8000169a]:c.addi sp, 3<br> [0x8000169c]:sw sp, 284(ra)<br>                                    |
|  73|[0x80003324]<br>0xFF76DFEC|- rs1_val==858993458<br>                                                                                       |[0x8000172c]:c.bnez a0, 192<br> [0x800016ac]:addi sp, sp, 1<br> [0x800016b0]:jal zero, 136<br> [0x80001738]:sw sp, 288(ra)<br> |
|  74|[0x80003328]<br>0xFF76DFEF|- rs1_val==1431655764<br>                                                                                      |[0x80001750]:c.bnez a0, 9<br> [0x80001762]:c.addi sp, 3<br> [0x80001764]:sw sp, 292(ra)<br>                                    |
|  75|[0x8000332c]<br>0xFF76DFF0|- rs1_val == 2<br> - rs1_val==2<br>                                                                            |[0x80001782]:c.bnez a0, 247<br> [0x80001770]:addi sp, sp, 1<br> [0x80001774]:jal zero, 26<br> [0x8000178e]:sw sp, 296(ra)<br>  |
|  76|[0x80003330]<br>0xFF76DFF3|- rs1_val==46340<br>                                                                                           |[0x800017a6]:c.bnez a0, 85<br> [0x80001850]:c.addi sp, 3<br> [0x80001852]:sw sp, 300(ra)<br>                                   |
|  77|[0x80003334]<br>0xFF76DFF4|- rs1_val==-46340<br>                                                                                          |[0x8000186a]:c.bnez a0, 252<br> [0x80001862]:addi sp, sp, 1<br> [0x80001866]:jal zero, 16<br> [0x80001876]:sw sp, 304(ra)<br>  |
|  78|[0x80003338]<br>0xFF76DFF7|- rs1_val==1717986918<br>                                                                                      |[0x8000188e]:c.bnez a0, 5<br> [0x80001898]:c.addi sp, 3<br> [0x8000189a]:sw sp, 308(ra)<br>                                    |
|  79|[0x8000333c]<br>0xFF76DFF8|- rs1_val==858993459<br>                                                                                       |[0x800018cc]:c.bnez a0, 239<br> [0x800018aa]:addi sp, sp, 1<br> [0x800018ae]:jal zero, 42<br> [0x800018d8]:sw sp, 312(ra)<br>  |
|  80|[0x80003340]<br>0xFF76DFF9|- rs1_val==5<br>                                                                                               |[0x800018f6]:c.bnez a0, 247<br> [0x800018e4]:addi sp, sp, 1<br> [0x800018e8]:jal zero, 26<br> [0x80001902]:sw sp, 316(ra)<br>  |
|  81|[0x80003344]<br>0xFF76DFFA|- rs1_val==-1431655766<br> - rs1_val == -1431655766<br>                                                        |[0x800019be]:c.bnez a0, 170<br> [0x80001912]:addi sp, sp, 1<br> [0x80001916]:jal zero, 180<br> [0x800019ca]:sw sp, 320(ra)<br> |
|  82|[0x80003348]<br>0xFF76DFFB|- rs1_val==1431655765<br> - rs1_val == 1431655765<br>                                                          |[0x800019e2]:c.bnez a0, 252<br> [0x800019da]:addi sp, sp, 1<br> [0x800019de]:jal zero, 16<br> [0x800019ee]:sw sp, 324(ra)<br>  |
|  83|[0x8000334c]<br>0xFF76DFFE|- rs1_val == 8<br>                                                                                             |[0x80001a02]:c.bnez a0, 85<br> [0x80001aac]:c.addi sp, 3<br> [0x80001aae]:sw sp, 328(ra)<br>                                   |
|  84|[0x80003350]<br>0xFF76E001|- rs1_val==3<br>                                                                                               |[0x80001ac2]:c.bnez a0, 85<br> [0x80001b6c]:c.addi sp, 3<br> [0x80001b6e]:sw sp, 332(ra)<br>                                   |
