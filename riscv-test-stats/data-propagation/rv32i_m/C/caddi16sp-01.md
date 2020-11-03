
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000420')]      |
| SIG_REGION                | [('0x80003204', '0x80003328', '73 words')]      |
| COV_LABELS                | caddi16sp      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/caddi16sp-01.S/caddi16sp-01.S    |
| Total Number of coverpoints| 91     |
| Total Signature Updates   | 70      |
| Total Coverpoints Covered | 91      |
| STAT1                     | 70      |
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

|s.no|        signature         |                                                                     coverpoints                                                                     |                             code                              |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80003210]<br>0xEFFFFDFF|- opcode : c.addi16sp<br> - rd : x2<br> - rs1_val != imm_val<br> - rs1_val < 0 and imm_val < 0<br> - imm_val == -512<br> - rs1_val == -268435457<br> |[0x80000108]:c.addi16sp 32<br> [0x8000010a]:sw sp, 0(ra)<br>   |
|   2|[0x80003214]<br>0x000001F8|- rs1_val > 0 and imm_val > 0<br> - imm_val == 496<br> - rs1_val == 8<br>                                                                            |[0x80000112]:c.addi16sp 31<br> [0x80000114]:sw sp, 4(ra)<br>   |
|   3|[0x80003218]<br>0x7FFFFF80|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                                                                                         |[0x8000011c]:c.addi16sp 56<br> [0x8000011e]:sw sp, 8(ra)<br>   |
|   4|[0x8000321c]<br>0x00000080|- rs1_val == 0<br> - imm_val == 128<br>                                                                                                              |[0x80000126]:c.addi16sp 8<br> [0x80000128]:sw sp, 12(ra)<br>   |
|   5|[0x80003220]<br>0x8000002F|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                                                         |[0x80000134]:c.addi16sp 3<br> [0x80000136]:sw sp, 16(ra)<br>   |
|   6|[0x80003224]<br>0xFFFFFFF1|- rs1_val > 0 and imm_val < 0<br> - rs1_val == 1<br>                                                                                                 |[0x8000013e]:c.addi16sp 63<br> [0x80000140]:sw sp, 20(ra)<br>  |
|   7|[0x80003228]<br>0x00000020|- rs1_val == imm_val<br> - rs1_val == 16<br> - imm_val == 16<br>                                                                                     |[0x80000148]:c.addi16sp 1<br> [0x8000014a]:sw sp, 24(ra)<br>   |
|   8|[0x8000322c]<br>0x0000000F|- rs1_val < 0 and imm_val > 0<br> - rs1_val == -129<br>                                                                                              |[0x80000152]:c.addi16sp 9<br> [0x80000154]:sw sp, 28(ra)<br>   |
|   9|[0x80003230]<br>0x02000020|- rs1_val == 33554432<br> - imm_val == 32<br>                                                                                                        |[0x8000015c]:c.addi16sp 2<br> [0x8000015e]:sw sp, 32(ra)<br>   |
|  10|[0x80003234]<br>0x00000036|- imm_val == 64<br>                                                                                                                                  |[0x80000166]:c.addi16sp 4<br> [0x80000168]:sw sp, 36(ra)<br>   |
|  11|[0x80003238]<br>0x00000180|- rs1_val == 128<br> - imm_val == 256<br>                                                                                                            |[0x80000170]:c.addi16sp 16<br> [0x80000172]:sw sp, 40(ra)<br>  |
|  12|[0x8000323c]<br>0xFFFFFFD6|- imm_val == -32<br>                                                                                                                                 |[0x8000017a]:c.addi16sp 62<br> [0x8000017c]:sw sp, 44(ra)<br>  |
|  13|[0x80003240]<br>0xFF7FFFCF|- rs1_val == -8388609<br> - imm_val == -48<br>                                                                                                       |[0x80000188]:c.addi16sp 61<br> [0x8000018a]:sw sp, 48(ra)<br>  |
|  14|[0x80003244]<br>0xFFFFFFB9|- imm_val == -80<br>                                                                                                                                 |[0x80000192]:c.addi16sp 59<br> [0x80000194]:sw sp, 52(ra)<br>  |
|  15|[0x80003248]<br>0x001FFF70|- rs1_val == 2097152<br> - imm_val == -144<br>                                                                                                       |[0x8000019c]:c.addi16sp 55<br> [0x8000019e]:sw sp, 56(ra)<br>  |
|  16|[0x8000324c]<br>0x3FFFFEF0|- rs1_val == 1073741824<br> - imm_val == -272<br>                                                                                                    |[0x800001a6]:c.addi16sp 47<br> [0x800001a8]:sw sp, 60(ra)<br>  |
|  17|[0x80003250]<br>0x00000170|- rs1_val == 32<br> - imm_val == 336<br>                                                                                                             |[0x800001b0]:c.addi16sp 21<br> [0x800001b2]:sw sp, 64(ra)<br>  |
|  18|[0x80003254]<br>0xFFFFFEE0|- rs1_val == 64<br> - imm_val == -352<br>                                                                                                            |[0x800001ba]:c.addi16sp 42<br> [0x800001bc]:sw sp, 68(ra)<br>  |
|  19|[0x80003258]<br>0x00000052|- rs1_val == 2<br>                                                                                                                                   |[0x800001c4]:c.addi16sp 5<br> [0x800001c6]:sw sp, 72(ra)<br>   |
|  20|[0x8000325c]<br>0x00000054|- rs1_val == 4<br>                                                                                                                                   |[0x800001ce]:c.addi16sp 5<br> [0x800001d0]:sw sp, 76(ra)<br>   |
|  21|[0x80003260]<br>0x00000000|- rs1_val == 256<br>                                                                                                                                 |[0x800001d8]:c.addi16sp 48<br> [0x800001da]:sw sp, 80(ra)<br>  |
|  22|[0x80003264]<br>0x000003F0|- rs1_val == 512<br>                                                                                                                                 |[0x800001e2]:c.addi16sp 31<br> [0x800001e4]:sw sp, 84(ra)<br>  |
|  23|[0x80003268]<br>0x000005F0|- rs1_val == 1024<br>                                                                                                                                |[0x800001ec]:c.addi16sp 31<br> [0x800001ee]:sw sp, 88(ra)<br>  |
|  24|[0x8000326c]<br>0x000007F0|- rs1_val == 2048<br>                                                                                                                                |[0x800001fa]:c.addi16sp 63<br> [0x800001fc]:sw sp, 92(ra)<br>  |
|  25|[0x80003270]<br>0x00000F80|- rs1_val == 4096<br>                                                                                                                                |[0x80000204]:c.addi16sp 56<br> [0x80000206]:sw sp, 96(ra)<br>  |
|  26|[0x80003274]<br>0x00001F90|- rs1_val == 8192<br>                                                                                                                                |[0x8000020e]:c.addi16sp 57<br> [0x80000210]:sw sp, 100(ra)<br> |
|  27|[0x80003278]<br>0x00004040|- rs1_val == 16384<br>                                                                                                                               |[0x80000218]:c.addi16sp 4<br> [0x8000021a]:sw sp, 104(ra)<br>  |
|  28|[0x8000327c]<br>0x00007F90|- rs1_val == 32768<br>                                                                                                                               |[0x80000222]:c.addi16sp 57<br> [0x80000224]:sw sp, 108(ra)<br> |
|  29|[0x80003280]<br>0x0000FFF0|- rs1_val == 65536<br>                                                                                                                               |[0x8000022c]:c.addi16sp 63<br> [0x8000022e]:sw sp, 112(ra)<br> |
|  30|[0x80003284]<br>0x00020070|- rs1_val == 131072<br>                                                                                                                              |[0x80000236]:c.addi16sp 7<br> [0x80000238]:sw sp, 116(ra)<br>  |
|  31|[0x80003288]<br>0x0003FF00|- rs1_val == 262144<br>                                                                                                                              |[0x80000240]:c.addi16sp 48<br> [0x80000242]:sw sp, 120(ra)<br> |
|  32|[0x8000328c]<br>0x0007FFB0|- rs1_val == 524288<br>                                                                                                                              |[0x8000024a]:c.addi16sp 59<br> [0x8000024c]:sw sp, 124(ra)<br> |
|  33|[0x80003290]<br>0x001000F0|- rs1_val == 1048576<br>                                                                                                                             |[0x80000254]:c.addi16sp 15<br> [0x80000256]:sw sp, 128(ra)<br> |
|  34|[0x80003294]<br>0x003FFF70|- rs1_val == 4194304<br>                                                                                                                             |[0x8000025e]:c.addi16sp 55<br> [0x80000260]:sw sp, 132(ra)<br> |
|  35|[0x80003298]<br>0x007FFF70|- rs1_val == 8388608<br>                                                                                                                             |[0x80000268]:c.addi16sp 55<br> [0x8000026a]:sw sp, 136(ra)<br> |
|  36|[0x8000329c]<br>0x010000F0|- rs1_val == 16777216<br>                                                                                                                            |[0x80000272]:c.addi16sp 15<br> [0x80000274]:sw sp, 140(ra)<br> |
|  37|[0x800032a0]<br>0x03FFFFC0|- rs1_val == 67108864<br>                                                                                                                            |[0x8000027c]:c.addi16sp 60<br> [0x8000027e]:sw sp, 144(ra)<br> |
|  38|[0x800032a4]<br>0x08000010|- rs1_val == 134217728<br>                                                                                                                           |[0x80000286]:c.addi16sp 1<br> [0x80000288]:sw sp, 148(ra)<br>  |
|  39|[0x800032a8]<br>0x0FFFFFB0|- rs1_val == 268435456<br>                                                                                                                           |[0x80000290]:c.addi16sp 59<br> [0x80000292]:sw sp, 152(ra)<br> |
|  40|[0x800032ac]<br>0xFFFFFE5F|- rs1_val == -513<br>                                                                                                                                |[0x8000029a]:c.addi16sp 6<br> [0x8000029c]:sw sp, 156(ra)<br>  |
|  41|[0x800032b0]<br>0xFFFFFB7F|- rs1_val == -1025<br>                                                                                                                               |[0x800002a4]:c.addi16sp 56<br> [0x800002a6]:sw sp, 160(ra)<br> |
|  42|[0x800032b4]<br>0xFFFFF7AF|- rs1_val == -2049<br>                                                                                                                               |[0x800002b2]:c.addi16sp 59<br> [0x800002b4]:sw sp, 164(ra)<br> |
|  43|[0x800032b8]<br>0xFFFFEE9F|- rs1_val == -4097<br>                                                                                                                               |[0x800002c0]:c.addi16sp 42<br> [0x800002c2]:sw sp, 168(ra)<br> |
|  44|[0x800032bc]<br>0xFFFFE03F|- rs1_val == -8193<br>                                                                                                                               |[0x800002ce]:c.addi16sp 4<br> [0x800002d0]:sw sp, 172(ra)<br>  |
|  45|[0x800032c0]<br>0xFFFFC1EF|- rs1_val == -16385<br>                                                                                                                              |[0x800002dc]:c.addi16sp 31<br> [0x800002de]:sw sp, 176(ra)<br> |
|  46|[0x800032c4]<br>0xFFFF7F6F|- rs1_val == -32769<br>                                                                                                                              |[0x800002ea]:c.addi16sp 55<br> [0x800002ec]:sw sp, 180(ra)<br> |
|  47|[0x800032c8]<br>0xFFFF01EF|- rs1_val == -65537<br>                                                                                                                              |[0x800002f8]:c.addi16sp 31<br> [0x800002fa]:sw sp, 184(ra)<br> |
|  48|[0x800032cc]<br>0xFFFE003F|- rs1_val == -131073<br>                                                                                                                             |[0x80000306]:c.addi16sp 4<br> [0x80000308]:sw sp, 188(ra)<br>  |
|  49|[0x800032d0]<br>0xFFFC00EF|- rs1_val == -262145<br>                                                                                                                             |[0x80000314]:c.addi16sp 15<br> [0x80000316]:sw sp, 192(ra)<br> |
|  50|[0x800032d4]<br>0xFFF801EF|- rs1_val == -524289<br>                                                                                                                             |[0x80000322]:c.addi16sp 31<br> [0x80000324]:sw sp, 196(ra)<br> |
|  51|[0x800032d8]<br>0xFFEFFF7F|- rs1_val == -1048577<br>                                                                                                                            |[0x80000330]:c.addi16sp 56<br> [0x80000332]:sw sp, 200(ra)<br> |
|  52|[0x800032dc]<br>0xFFE0006F|- rs1_val == -2097153<br>                                                                                                                            |[0x8000033e]:c.addi16sp 7<br> [0x80000340]:sw sp, 204(ra)<br>  |
|  53|[0x800032e0]<br>0xFFBFFFDF|- rs1_val == -4194305<br>                                                                                                                            |[0x8000034c]:c.addi16sp 62<br> [0x8000034e]:sw sp, 208(ra)<br> |
|  54|[0x800032e4]<br>0xFF00014F|- rs1_val == -16777217<br>                                                                                                                           |[0x8000035a]:c.addi16sp 21<br> [0x8000035c]:sw sp, 212(ra)<br> |
|  55|[0x800032e8]<br>0xFE0000EF|- rs1_val == -33554433<br>                                                                                                                           |[0x80000368]:c.addi16sp 15<br> [0x8000036a]:sw sp, 216(ra)<br> |
|  56|[0x800032ec]<br>0x000001E7|- rs1_val == -9<br>                                                                                                                                  |[0x80000372]:c.addi16sp 31<br> [0x80000374]:sw sp, 220(ra)<br> |
|  57|[0x800032f0]<br>0x0000007B|- rs1_val == -5<br>                                                                                                                                  |[0x8000037c]:c.addi16sp 8<br> [0x8000037e]:sw sp, 224(ra)<br>  |
|  58|[0x800032f4]<br>0xFBFFFFDF|- rs1_val == -67108865<br>                                                                                                                           |[0x8000038a]:c.addi16sp 62<br> [0x8000038c]:sw sp, 228(ra)<br> |
|  59|[0x800032f8]<br>0xF800006F|- rs1_val == -134217729<br>                                                                                                                          |[0x80000398]:c.addi16sp 7<br> [0x8000039a]:sw sp, 232(ra)<br>  |
|  60|[0x800032fc]<br>0xE000001F|- rs1_val == -536870913<br>                                                                                                                          |[0x800003a6]:c.addi16sp 2<br> [0x800003a8]:sw sp, 236(ra)<br>  |
|  61|[0x80003300]<br>0x1FFFFF60|- rs1_val == 536870912<br>                                                                                                                           |[0x800003b0]:c.addi16sp 54<br> [0x800003b2]:sw sp, 240(ra)<br> |
|  62|[0x80003304]<br>0xBFFFFEFF|- rs1_val == -1073741825<br>                                                                                                                         |[0x800003be]:c.addi16sp 48<br> [0x800003c0]:sw sp, 244(ra)<br> |
|  63|[0x80003308]<br>0x000000EE|- rs1_val == -2<br>                                                                                                                                  |[0x800003c8]:c.addi16sp 15<br> [0x800003ca]:sw sp, 248(ra)<br> |
|  64|[0x8000330c]<br>0x555554D5|- rs1_val == 1431655765<br>                                                                                                                          |[0x800003d6]:c.addi16sp 56<br> [0x800003d8]:sw sp, 252(ra)<br> |
|  65|[0x80003310]<br>0xAAAAAA4A|- rs1_val == -1431655766<br>                                                                                                                         |[0x800003e4]:c.addi16sp 58<br> [0x800003e6]:sw sp, 256(ra)<br> |
|  66|[0x80003314]<br>0xFFFFFEFD|- rs1_val == -3<br>                                                                                                                                  |[0x800003ee]:c.addi16sp 48<br> [0x800003f0]:sw sp, 260(ra)<br> |
|  67|[0x80003318]<br>0x0000002F|- rs1_val == -17<br>                                                                                                                                 |[0x800003f8]:c.addi16sp 4<br> [0x800003fa]:sw sp, 264(ra)<br>  |
|  68|[0x8000331c]<br>0x0000005F|- rs1_val == -33<br>                                                                                                                                 |[0x80000402]:c.addi16sp 8<br> [0x80000404]:sw sp, 268(ra)<br>  |
|  69|[0x80003320]<br>0xFFFFFF2F|- rs1_val == -65<br>                                                                                                                                 |[0x8000040c]:c.addi16sp 55<br> [0x8000040e]:sw sp, 272(ra)<br> |
|  70|[0x80003324]<br>0xFFFFFF2F|- rs1_val == -257<br>                                                                                                                                |[0x80000416]:c.addi16sp 3<br> [0x80000418]:sw sp, 276(ra)<br>  |
