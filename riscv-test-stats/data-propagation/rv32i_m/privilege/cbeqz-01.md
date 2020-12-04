
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80001732')]      |
| SIG_REGION                | [('0x80003204', '0x80003358', '85 words')]      |
| COV_LABELS                | cbeqz      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cbeqz-01.S/cbeqz-01.S    |
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

|s.no|        signature         |                                                             coverpoints                                                             |                                                             code                                                             |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003204]<br>0xFF76DF58|- opcode : c.beqz<br> - rs1 : x14<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -2147483648<br> |[0x8000011e]:c.beqz a4, 246<br> [0x80000120]:addi sp, sp, 2<br> [0x80000124]:jal zero, 6<br> [0x8000012a]:sw sp, 0(ra)<br>    |
|   2|[0x80003208]<br>0xFF76DF59|- rs1 : x13<br> - rs1_val == 0<br> - rs1_val == 0 and imm_val < 0<br> - rs1_val==0<br>                                               |[0x80000146]:c.beqz a3, 249<br> [0x80000138]:addi sp, sp, 1<br> [0x8000013c]:jal zero, 22<br> [0x80000152]:sw sp, 4(ra)<br>   |
|   3|[0x8000320c]<br>0xFF76DF5B|- rs1 : x8<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val > 0 and imm_val < 0<br> - rs1_val == 2147483647<br>                        |[0x80000170]:c.beqz s0, 250<br> [0x80000172]:addi sp, sp, 2<br> [0x80000176]:jal zero, 6<br> [0x8000017c]:sw sp, 8(ra)<br>    |
|   4|[0x80003210]<br>0xFF76DF5D|- rs1 : x10<br> - rs1_val == 1<br>                                                                                                   |[0x800001cc]:c.beqz a0, 223<br> [0x800001ce]:addi sp, sp, 2<br> [0x800001d2]:jal zero, 6<br> [0x800001d8]:sw sp, 12(ra)<br>   |
|   5|[0x80003214]<br>0xFF76DF5F|- rs1 : x11<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 4<br> - rs1_val==4<br>                                                |[0x800001ee]:c.beqz a1, 6<br> [0x800001f0]:addi sp, sp, 2<br> [0x800001f4]:jal zero, 8<br> [0x800001fc]:sw sp, 16(ra)<br>     |
|   6|[0x80003218]<br>0xFF76DF61|- rs1 : x15<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -33<br>                                                               |[0x80000212]:c.beqz a5, 5<br> [0x80000214]:addi sp, sp, 2<br> [0x80000218]:jal zero, 6<br> [0x8000021e]:sw sp, 20(ra)<br>     |
|   7|[0x8000321c]<br>0xFF76DF64|- rs1 : x12<br> - rs1_val == 0 and imm_val > 0<br>                                                                                   |[0x80000234]:c.beqz a2, 5<br> [0x8000023e]:c.addi sp, 3<br> [0x80000240]:sw sp, 24(ra)<br>                                    |
|   8|[0x80003220]<br>0xFF76DF66|- rs1 : x9<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                                   |[0x8000025a]:c.beqz s1, 250<br> [0x8000025c]:addi sp, sp, 2<br> [0x80000260]:jal zero, 6<br> [0x80000266]:sw sp, 28(ra)<br>   |
|   9|[0x80003224]<br>0xFF76DF68|- rs1_val == 8<br>                                                                                                                   |[0x8000027c]:c.beqz a0, 252<br> [0x8000027e]:addi sp, sp, 2<br> [0x80000282]:jal zero, 6<br> [0x80000288]:sw sp, 32(ra)<br>   |
|  10|[0x80003228]<br>0xFF76DF6A|- rs1_val == 16<br>                                                                                                                  |[0x800002a4]:c.beqz a0, 249<br> [0x800002a6]:addi sp, sp, 2<br> [0x800002aa]:jal zero, 6<br> [0x800002b0]:sw sp, 36(ra)<br>   |
|  11|[0x8000322c]<br>0xFF76DF6C|- rs1_val == 32<br>                                                                                                                  |[0x800002c6]:c.beqz a0, 16<br> [0x800002c8]:addi sp, sp, 2<br> [0x800002cc]:jal zero, 28<br> [0x800002e8]:sw sp, 40(ra)<br>   |
|  12|[0x80003230]<br>0xFF76DF6E|- rs1_val == 64<br>                                                                                                                  |[0x800002fe]:c.beqz a0, 5<br> [0x80000300]:addi sp, sp, 2<br> [0x80000304]:jal zero, 6<br> [0x8000030a]:sw sp, 44(ra)<br>     |
|  13|[0x80003234]<br>0xFF76DF70|- rs1_val == 128<br>                                                                                                                 |[0x80000322]:c.beqz a0, 251<br> [0x80000324]:addi sp, sp, 2<br> [0x80000328]:jal zero, 6<br> [0x8000032e]:sw sp, 48(ra)<br>   |
|  14|[0x80003238]<br>0xFF76DF72|- rs1_val == 256<br>                                                                                                                 |[0x80000348]:c.beqz a0, 250<br> [0x8000034a]:addi sp, sp, 2<br> [0x8000034e]:jal zero, 6<br> [0x80000354]:sw sp, 52(ra)<br>   |
|  15|[0x8000323c]<br>0xFF76DF74|- rs1_val == 512<br>                                                                                                                 |[0x8000036a]:c.beqz a0, 5<br> [0x8000036c]:addi sp, sp, 2<br> [0x80000370]:jal zero, 6<br> [0x80000376]:sw sp, 56(ra)<br>     |
|  16|[0x80003240]<br>0xFF76DF76|- rs1_val == 1024<br>                                                                                                                |[0x8000038c]:c.beqz a0, 252<br> [0x8000038e]:addi sp, sp, 2<br> [0x80000392]:jal zero, 6<br> [0x80000398]:sw sp, 60(ra)<br>   |
|  17|[0x80003244]<br>0xFF76DF78|- rs1_val == 2048<br>                                                                                                                |[0x800003b2]:c.beqz a0, 6<br> [0x800003b4]:addi sp, sp, 2<br> [0x800003b8]:jal zero, 8<br> [0x800003c0]:sw sp, 64(ra)<br>     |
|  18|[0x80003248]<br>0xFF76DF7A|- rs1_val == 4096<br>                                                                                                                |[0x800003f0]:c.beqz a0, 239<br> [0x800003f2]:addi sp, sp, 2<br> [0x800003f6]:jal zero, 6<br> [0x800003fc]:sw sp, 68(ra)<br>   |
|  19|[0x8000324c]<br>0xFF76DF7C|- rs1_val == 8192<br>                                                                                                                |[0x80000412]:c.beqz a0, 64<br> [0x80000414]:addi sp, sp, 2<br> [0x80000418]:jal zero, 124<br> [0x80000494]:sw sp, 72(ra)<br>  |
|  20|[0x80003250]<br>0xFF76DF7E|- rs1_val == 16384<br>                                                                                                               |[0x800004b2]:c.beqz a0, 248<br> [0x800004b4]:addi sp, sp, 2<br> [0x800004b8]:jal zero, 6<br> [0x800004be]:sw sp, 76(ra)<br>   |
|  21|[0x80003254]<br>0xFF76DF80|- rs1_val == 32768<br>                                                                                                               |[0x800004d4]:c.beqz a0, 252<br> [0x800004d6]:addi sp, sp, 2<br> [0x800004da]:jal zero, 6<br> [0x800004e0]:sw sp, 80(ra)<br>   |
|  22|[0x80003258]<br>0xFF76DF82|- rs1_val == 65536<br>                                                                                                               |[0x80000502]:c.beqz a0, 246<br> [0x80000504]:addi sp, sp, 2<br> [0x80000508]:jal zero, 6<br> [0x8000050e]:sw sp, 84(ra)<br>   |
|  23|[0x8000325c]<br>0xFF76DF84|- rs1_val == 131072<br>                                                                                                              |[0x80000524]:c.beqz a0, 32<br> [0x80000526]:addi sp, sp, 2<br> [0x8000052a]:jal zero, 60<br> [0x80000566]:sw sp, 88(ra)<br>   |
|  24|[0x80003260]<br>0xFF76DF86|- rs1_val == 262144<br>                                                                                                              |[0x8000057c]:c.beqz a0, 16<br> [0x8000057e]:addi sp, sp, 2<br> [0x80000582]:jal zero, 28<br> [0x8000059e]:sw sp, 92(ra)<br>   |
|  25|[0x80003264]<br>0xFF76DF88|- rs1_val == 524288<br>                                                                                                              |[0x800005b4]:c.beqz a0, 64<br> [0x800005b6]:addi sp, sp, 2<br> [0x800005ba]:jal zero, 124<br> [0x80000636]:sw sp, 96(ra)<br>  |
|  26|[0x80003268]<br>0xFF76DF8A|- rs1_val == 1048576<br>                                                                                                             |[0x8000064c]:c.beqz a0, 5<br> [0x8000064e]:addi sp, sp, 2<br> [0x80000652]:jal zero, 6<br> [0x80000658]:sw sp, 100(ra)<br>    |
|  27|[0x8000326c]<br>0xFF76DF8C|- rs1_val == 2097152<br>                                                                                                             |[0x8000066e]:c.beqz a0, 5<br> [0x80000670]:addi sp, sp, 2<br> [0x80000674]:jal zero, 6<br> [0x8000067a]:sw sp, 104(ra)<br>    |
|  28|[0x80003270]<br>0xFF76DF8E|- rs1_val == 4194304<br>                                                                                                             |[0x80000690]:c.beqz a0, 5<br> [0x80000692]:addi sp, sp, 2<br> [0x80000696]:jal zero, 6<br> [0x8000069c]:sw sp, 108(ra)<br>    |
|  29|[0x80003274]<br>0xFF76DF90|- rs1_val == 8388608<br>                                                                                                             |[0x800006b2]:c.beqz a0, 16<br> [0x800006b4]:addi sp, sp, 2<br> [0x800006b8]:jal zero, 28<br> [0x800006d4]:sw sp, 112(ra)<br>  |
|  30|[0x80003278]<br>0xFF76DF92|- rs1_val == 16777216<br>                                                                                                            |[0x800006ea]:c.beqz a0, 7<br> [0x800006ec]:addi sp, sp, 2<br> [0x800006f0]:jal zero, 10<br> [0x800006fa]:sw sp, 116(ra)<br>   |
|  31|[0x8000327c]<br>0xFF76DF94|- rs1_val == 33554432<br>                                                                                                            |[0x80000788]:c.beqz a0, 192<br> [0x8000078a]:addi sp, sp, 2<br> [0x8000078e]:jal zero, 6<br> [0x80000794]:sw sp, 120(ra)<br>  |
|  32|[0x80003280]<br>0xFF76DF96|- rs1_val == 67108864<br>                                                                                                            |[0x800007aa]:c.beqz a0, 8<br> [0x800007ac]:addi sp, sp, 2<br> [0x800007b0]:jal zero, 12<br> [0x800007bc]:sw sp, 124(ra)<br>   |
|  33|[0x80003284]<br>0xFF76DF98|- rs1_val == 134217728<br>                                                                                                           |[0x800007de]:c.beqz a0, 246<br> [0x800007e0]:addi sp, sp, 2<br> [0x800007e4]:jal zero, 6<br> [0x800007ea]:sw sp, 128(ra)<br>  |
|  34|[0x80003288]<br>0xFF76DF9A|- rs1_val == 268435456<br>                                                                                                           |[0x80000800]:c.beqz a0, 252<br> [0x80000802]:addi sp, sp, 2<br> [0x80000806]:jal zero, 6<br> [0x8000080c]:sw sp, 132(ra)<br>  |
|  35|[0x8000328c]<br>0xFF76DF9C|- rs1_val == 536870912<br>                                                                                                           |[0x80000822]:c.beqz a0, 7<br> [0x80000824]:addi sp, sp, 2<br> [0x80000828]:jal zero, 10<br> [0x80000832]:sw sp, 136(ra)<br>   |
|  36|[0x80003290]<br>0xFF76DF9E|- rs1_val == 1073741824<br>                                                                                                          |[0x80000848]:c.beqz a0, 252<br> [0x8000084a]:addi sp, sp, 2<br> [0x8000084e]:jal zero, 6<br> [0x80000854]:sw sp, 140(ra)<br>  |
|  37|[0x80003294]<br>0xFF76DFA0|- rs1_val == -2<br>                                                                                                                  |[0x8000086a]:c.beqz a0, 252<br> [0x8000086c]:addi sp, sp, 2<br> [0x80000870]:jal zero, 6<br> [0x80000876]:sw sp, 144(ra)<br>  |
|  38|[0x80003298]<br>0xFF76DFA2|- rs1_val == -3<br>                                                                                                                  |[0x8000088c]:c.beqz a0, 32<br> [0x8000088e]:addi sp, sp, 2<br> [0x80000892]:jal zero, 60<br> [0x800008ce]:sw sp, 148(ra)<br>  |
|  39|[0x8000329c]<br>0xFF76DFA4|- rs1_val == -5<br>                                                                                                                  |[0x800008e4]:c.beqz a0, 5<br> [0x800008e6]:addi sp, sp, 2<br> [0x800008ea]:jal zero, 6<br> [0x800008f0]:sw sp, 152(ra)<br>    |
|  40|[0x800032a0]<br>0xFF76DFA6|- rs1_val == -9<br>                                                                                                                  |[0x8000090a]:c.beqz a0, 250<br> [0x8000090c]:addi sp, sp, 2<br> [0x80000910]:jal zero, 6<br> [0x80000916]:sw sp, 156(ra)<br>  |
|  41|[0x800032a4]<br>0xFF76DFA8|- rs1_val == -17<br>                                                                                                                 |[0x8000092c]:c.beqz a0, 5<br> [0x8000092e]:addi sp, sp, 2<br> [0x80000932]:jal zero, 6<br> [0x80000938]:sw sp, 160(ra)<br>    |
|  42|[0x800032a8]<br>0xFF76DFAA|- rs1_val == -65<br>                                                                                                                 |[0x80000956]:c.beqz a0, 248<br> [0x80000958]:addi sp, sp, 2<br> [0x8000095c]:jal zero, 6<br> [0x80000962]:sw sp, 164(ra)<br>  |
|  43|[0x800032ac]<br>0xFF76DFAC|- rs1_val == -129<br>                                                                                                                |[0x80000978]:c.beqz a0, 9<br> [0x8000097a]:addi sp, sp, 2<br> [0x8000097e]:jal zero, 14<br> [0x8000098c]:sw sp, 168(ra)<br>   |
|  44|[0x800032b0]<br>0xFF76DFAE|- rs1_val == -257<br>                                                                                                                |[0x800009a2]:c.beqz a0, 63<br> [0x800009a4]:addi sp, sp, 2<br> [0x800009a8]:jal zero, 122<br> [0x80000a22]:sw sp, 172(ra)<br> |
|  45|[0x800032b4]<br>0xFF76DFB0|- rs1_val == -513<br>                                                                                                                |[0x80000ab0]:c.beqz a0, 192<br> [0x80000ab2]:addi sp, sp, 2<br> [0x80000ab6]:jal zero, 6<br> [0x80000abc]:sw sp, 176(ra)<br>  |
|  46|[0x800032b8]<br>0xFF76DFB2|- rs1_val == -1025<br>                                                                                                               |[0x80000ad2]:c.beqz a0, 63<br> [0x80000ad4]:addi sp, sp, 2<br> [0x80000ad8]:jal zero, 122<br> [0x80000b52]:sw sp, 180(ra)<br> |
|  47|[0x800032bc]<br>0xFF76DFB4|- rs1_val == -2049<br>                                                                                                               |[0x80000b6e]:c.beqz a0, 251<br> [0x80000b70]:addi sp, sp, 2<br> [0x80000b74]:jal zero, 6<br> [0x80000b7a]:sw sp, 184(ra)<br>  |
|  48|[0x800032c0]<br>0xFF76DFB6|- rs1_val == -4097<br>                                                                                                               |[0x80000b94]:c.beqz a0, 252<br> [0x80000b96]:addi sp, sp, 2<br> [0x80000b9a]:jal zero, 6<br> [0x80000ba0]:sw sp, 188(ra)<br>  |
|  49|[0x800032c4]<br>0xFF76DFB8|- rs1_val == -8193<br>                                                                                                               |[0x80000bc6]:c.beqz a0, 246<br> [0x80000bc8]:addi sp, sp, 2<br> [0x80000bcc]:jal zero, 6<br> [0x80000bd2]:sw sp, 192(ra)<br>  |
|  50|[0x800032c8]<br>0xFF76DFBA|- rs1_val == -16385<br>                                                                                                              |[0x80000bec]:c.beqz a0, 5<br> [0x80000bee]:addi sp, sp, 2<br> [0x80000bf2]:jal zero, 6<br> [0x80000bf8]:sw sp, 196(ra)<br>    |
|  51|[0x800032cc]<br>0xFF76DFBC|- rs1_val == -32769<br>                                                                                                              |[0x80000c12]:c.beqz a0, 16<br> [0x80000c14]:addi sp, sp, 2<br> [0x80000c18]:jal zero, 28<br> [0x80000c34]:sw sp, 200(ra)<br>  |
|  52|[0x800032d0]<br>0xFF76DFBE|- rs1_val == -65537<br>                                                                                                              |[0x80000c4e]:c.beqz a0, 5<br> [0x80000c50]:addi sp, sp, 2<br> [0x80000c54]:jal zero, 6<br> [0x80000c5a]:sw sp, 204(ra)<br>    |
|  53|[0x800032d4]<br>0xFF76DFC0|- rs1_val == -131073<br>                                                                                                             |[0x80000c74]:c.beqz a0, 9<br> [0x80000c76]:addi sp, sp, 2<br> [0x80000c7a]:jal zero, 14<br> [0x80000c88]:sw sp, 208(ra)<br>   |
|  54|[0x800032d8]<br>0xFF76DFC2|- rs1_val == -262145<br>                                                                                                             |[0x80000d46]:c.beqz a0, 170<br> [0x80000d48]:addi sp, sp, 2<br> [0x80000d4c]:jal zero, 6<br> [0x80000d52]:sw sp, 212(ra)<br>  |
|  55|[0x800032dc]<br>0xFF76DFC4|- rs1_val == -524289<br>                                                                                                             |[0x80000d6c]:c.beqz a0, 32<br> [0x80000d6e]:addi sp, sp, 2<br> [0x80000d72]:jal zero, 60<br> [0x80000dae]:sw sp, 216(ra)<br>  |
|  56|[0x800032e0]<br>0xFF76DFC6|- rs1_val == -1048577<br>                                                                                                            |[0x80000dc8]:c.beqz a0, 6<br> [0x80000dca]:addi sp, sp, 2<br> [0x80000dce]:jal zero, 8<br> [0x80000dd6]:sw sp, 220(ra)<br>    |
|  57|[0x800032e4]<br>0xFF76DFC8|- rs1_val == -8388609<br>                                                                                                            |[0x80000e94]:c.beqz a0, 170<br> [0x80000e96]:addi sp, sp, 2<br> [0x80000e9a]:jal zero, 6<br> [0x80000ea0]:sw sp, 224(ra)<br>  |
|  58|[0x800032e8]<br>0xFF76DFCA|- rs1_val == -16777217<br>                                                                                                           |[0x80000eba]:c.beqz a0, 32<br> [0x80000ebc]:addi sp, sp, 2<br> [0x80000ec0]:jal zero, 60<br> [0x80000efc]:sw sp, 228(ra)<br>  |
|  59|[0x800032ec]<br>0xFF76DFCC|- rs1_val == -33554433<br>                                                                                                           |[0x80000f16]:c.beqz a0, 5<br> [0x80000f18]:addi sp, sp, 2<br> [0x80000f1c]:jal zero, 6<br> [0x80000f22]:sw sp, 232(ra)<br>    |
|  60|[0x800032f0]<br>0xFF76DFCE|- rs1_val == -67108865<br>                                                                                                           |[0x80000f48]:c.beqz a0, 246<br> [0x80000f4a]:addi sp, sp, 2<br> [0x80000f4e]:jal zero, 6<br> [0x80000f54]:sw sp, 236(ra)<br>  |
|  61|[0x800032f4]<br>0xFF76DFD0|- rs1_val == -134217729<br>                                                                                                          |[0x80000f7a]:c.beqz a0, 246<br> [0x80000f7c]:addi sp, sp, 2<br> [0x80000f80]:jal zero, 6<br> [0x80000f86]:sw sp, 240(ra)<br>  |
|  62|[0x800032f8]<br>0xFF76DFD2|- rs1_val == -268435457<br>                                                                                                          |[0x80000fa0]:c.beqz a0, 8<br> [0x80000fa2]:addi sp, sp, 2<br> [0x80000fa6]:jal zero, 12<br> [0x80000fb2]:sw sp, 244(ra)<br>   |
|  63|[0x800032fc]<br>0xFF76DFD4|- rs1_val == -536870913<br>                                                                                                          |[0x80001006]:c.beqz a0, 223<br> [0x80001008]:addi sp, sp, 2<br> [0x8000100c]:jal zero, 6<br> [0x80001012]:sw sp, 248(ra)<br>  |
|  64|[0x80003300]<br>0xFF76DFD6|- rs1_val == -1073741825<br>                                                                                                         |[0x8000102e]:c.beqz a0, 251<br> [0x80001030]:addi sp, sp, 2<br> [0x80001034]:jal zero, 6<br> [0x8000103a]:sw sp, 252(ra)<br>  |
|  65|[0x80003304]<br>0xFF76DFD8|- rs1_val == 1431655765<br> - rs1_val==1431655765<br>                                                                                |[0x8000105a]:c.beqz a0, 249<br> [0x8000105c]:addi sp, sp, 2<br> [0x80001060]:jal zero, 6<br> [0x80001066]:sw sp, 256(ra)<br>  |
|  66|[0x80003308]<br>0xFF76DFDA|- rs1_val == -1431655766<br> - rs1_val==-1431655766<br>                                                                              |[0x80001080]:c.beqz a0, 5<br> [0x80001082]:addi sp, sp, 2<br> [0x80001086]:jal zero, 6<br> [0x8000108c]:sw sp, 260(ra)<br>    |
|  67|[0x8000330c]<br>0xFF76DFDC|- rs1_val==3<br>                                                                                                                     |[0x800010a2]:c.beqz a0, 5<br> [0x800010a4]:addi sp, sp, 2<br> [0x800010a8]:jal zero, 6<br> [0x800010ae]:sw sp, 264(ra)<br>    |
|  68|[0x80003310]<br>0xFF76DFDE|- rs1_val==5<br>                                                                                                                     |[0x800010de]:c.beqz a0, 239<br> [0x800010e0]:addi sp, sp, 2<br> [0x800010e4]:jal zero, 6<br> [0x800010ea]:sw sp, 268(ra)<br>  |
|  69|[0x80003314]<br>0xFF76DFE0|- rs1_val==858993459<br>                                                                                                             |[0x800011a8]:c.beqz a0, 170<br> [0x800011aa]:addi sp, sp, 2<br> [0x800011ae]:jal zero, 6<br> [0x800011b4]:sw sp, 272(ra)<br>  |
|  70|[0x80003318]<br>0xFF76DFE2|- rs1_val==1717986918<br>                                                                                                            |[0x800011ce]:c.beqz a0, 5<br> [0x800011d0]:addi sp, sp, 2<br> [0x800011d4]:jal zero, 6<br> [0x800011da]:sw sp, 276(ra)<br>    |
|  71|[0x8000331c]<br>0xFF76DFE4|- rs1_val==46341<br>                                                                                                                 |[0x800011f4]:c.beqz a0, 252<br> [0x800011f6]:addi sp, sp, 2<br> [0x800011fa]:jal zero, 6<br> [0x80001200]:sw sp, 280(ra)<br>  |
|  72|[0x80003320]<br>0xFF76DFE6|- rs1_val==-46340<br>                                                                                                                |[0x800012be]:c.beqz a0, 170<br> [0x800012c0]:addi sp, sp, 2<br> [0x800012c4]:jal zero, 6<br> [0x800012ca]:sw sp, 284(ra)<br>  |
|  73|[0x80003324]<br>0xFF76DFE8|- rs1_val==46340<br>                                                                                                                 |[0x800012e4]:c.beqz a0, 252<br> [0x800012e6]:addi sp, sp, 2<br> [0x800012ea]:jal zero, 6<br> [0x800012f0]:sw sp, 288(ra)<br>  |
|  74|[0x80003328]<br>0xFF76DFEA|- rs1_val==1431655764<br>                                                                                                            |[0x80001316]:c.beqz a0, 246<br> [0x80001318]:addi sp, sp, 2<br> [0x8000131c]:jal zero, 6<br> [0x80001322]:sw sp, 292(ra)<br>  |
|  75|[0x8000332c]<br>0xFF76DFEC|- rs1_val == -4194305<br>                                                                                                            |[0x800013e0]:c.beqz a0, 170<br> [0x800013e2]:addi sp, sp, 2<br> [0x800013e6]:jal zero, 6<br> [0x800013ec]:sw sp, 296(ra)<br>  |
|  76|[0x80003330]<br>0xFF76DFEE|- rs1_val==1717986919<br>                                                                                                            |[0x80001406]:c.beqz a0, 6<br> [0x80001408]:addi sp, sp, 2<br> [0x8000140c]:jal zero, 8<br> [0x80001414]:sw sp, 300(ra)<br>    |
|  77|[0x80003334]<br>0xFF76DFF0|- rs1_val==858993458<br>                                                                                                             |[0x8000142e]:c.beqz a0, 16<br> [0x80001430]:addi sp, sp, 2<br> [0x80001434]:jal zero, 28<br> [0x80001450]:sw sp, 304(ra)<br>  |
|  78|[0x80003338]<br>0xFF76DFF2|- rs1_val==1717986917<br>                                                                                                            |[0x8000146a]:c.beqz a0, 5<br> [0x8000146c]:addi sp, sp, 2<br> [0x80001470]:jal zero, 6<br> [0x80001476]:sw sp, 308(ra)<br>    |
|  79|[0x8000333c]<br>0xFF76DFF4|- rs1_val==46339<br>                                                                                                                 |[0x8000149c]:c.beqz a0, 246<br> [0x8000149e]:addi sp, sp, 2<br> [0x800014a2]:jal zero, 6<br> [0x800014a8]:sw sp, 312(ra)<br>  |
|  80|[0x80003340]<br>0xFF76DFF6|- rs1_val==1431655766<br>                                                                                                            |[0x80001566]:c.beqz a0, 170<br> [0x80001568]:addi sp, sp, 2<br> [0x8000156c]:jal zero, 6<br> [0x80001572]:sw sp, 316(ra)<br>  |
|  81|[0x80003344]<br>0xFF76DFF8|- rs1_val==-1431655765<br>                                                                                                           |[0x8000158c]:c.beqz a0, 85<br> [0x8000158e]:addi sp, sp, 2<br> [0x80001592]:jal zero, 166<br> [0x80001638]:sw sp, 320(ra)<br> |
|  82|[0x80003348]<br>0xFF76DFFA|- rs1_val==6<br>                                                                                                                     |[0x80001658]:c.beqz a0, 247<br> [0x8000165a]:addi sp, sp, 2<br> [0x8000165e]:jal zero, 6<br> [0x80001664]:sw sp, 324(ra)<br>  |
|  83|[0x8000334c]<br>0xFF76DFFC|- rs1_val==858993460<br>                                                                                                             |[0x8000167e]:c.beqz a0, 16<br> [0x80001680]:addi sp, sp, 2<br> [0x80001684]:jal zero, 28<br> [0x800016a0]:sw sp, 328(ra)<br>  |
|  84|[0x80003350]<br>0xFF76DFFE|- rs1_val == -2097153<br>                                                                                                            |[0x800016f4]:c.beqz a0, 223<br> [0x800016f6]:addi sp, sp, 2<br> [0x800016fa]:jal zero, 6<br> [0x80001700]:sw sp, 332(ra)<br>  |
|  85|[0x80003354]<br>0xFF76E000|- rs1_val==-46339<br>                                                                                                                |[0x8000171a]:c.beqz a0, 5<br> [0x8000171c]:addi sp, sp, 2<br> [0x80001720]:jal zero, 6<br> [0x80001726]:sw sp, 336(ra)<br>    |
