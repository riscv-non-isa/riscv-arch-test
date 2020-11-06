
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000420')]      |
| SIG_REGION                | [('0x80003204', '0x8000331c', '70 words')]      |
| COV_LABELS                | caddi16sp      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/caddi16sp-01.S/caddi16sp-01.S    |
| Total Number of coverpoints| 91     |
| Total Coverpoints Hit     | 91      |
| Total Signature Updates   | 70      |
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

|s.no|        signature         |                                                                  coverpoints                                                                   |                             code                              |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80003204]<br>0xFFFFF5FF|- opcode : c.addi16sp<br> - rd : x2<br> - rs1_val != imm_val<br> - rs1_val < 0 and imm_val < 0<br> - imm_val == -512<br> - rs1_val == -2049<br> |[0x80000108]:c.addi16sp 32<br> [0x8000010a]:sw sp, 0(ra)<br>   |
|   2|[0x80003208]<br>0xFFE001EF|- rs1_val < 0 and imm_val > 0<br> - imm_val == 496<br> - rs1_val == -2097153<br>                                                                |[0x80000116]:c.addi16sp 31<br> [0x80000118]:sw sp, 4(ra)<br>   |
|   3|[0x8000320c]<br>0x7FFFFF60|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                                                                                    |[0x80000120]:c.addi16sp 54<br> [0x80000122]:sw sp, 8(ra)<br>   |
|   4|[0x80003210]<br>0x00000050|- rs1_val == 0<br>                                                                                                                              |[0x8000012a]:c.addi16sp 5<br> [0x8000012c]:sw sp, 12(ra)<br>   |
|   5|[0x80003214]<br>0x7FFFFF9F|- rs1_val > 0 and imm_val < 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                  |[0x80000138]:c.addi16sp 58<br> [0x8000013a]:sw sp, 16(ra)<br>  |
|   6|[0x80003218]<br>0xFFFFFFB1|- rs1_val == 1<br> - imm_val == -80<br>                                                                                                         |[0x80000142]:c.addi16sp 59<br> [0x80000144]:sw sp, 20(ra)<br>  |
|   7|[0x8000321c]<br>0x00000040|- rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 32<br> - imm_val == 32<br>                                              |[0x8000014c]:c.addi16sp 2<br> [0x8000014e]:sw sp, 24(ra)<br>   |
|   8|[0x80003220]<br>0x00100010|- rs1_val == 1048576<br> - imm_val == 16<br>                                                                                                    |[0x80000156]:c.addi16sp 1<br> [0x80000158]:sw sp, 28(ra)<br>   |
|   9|[0x80003224]<br>0xFFF8003F|- rs1_val == -524289<br> - imm_val == 64<br>                                                                                                    |[0x80000164]:c.addi16sp 4<br> [0x80000166]:sw sp, 32(ra)<br>   |
|  10|[0x80003228]<br>0xFFFFFF7F|- rs1_val == -257<br> - imm_val == 128<br>                                                                                                      |[0x8000016e]:c.addi16sp 8<br> [0x80000170]:sw sp, 36(ra)<br>   |
|  11|[0x8000322c]<br>0x00000120|- imm_val == 256<br>                                                                                                                            |[0x80000178]:c.addi16sp 16<br> [0x8000017a]:sw sp, 40(ra)<br>  |
|  12|[0x80003230]<br>0xFFFFFFD8|- imm_val == -32<br>                                                                                                                            |[0x80000182]:c.addi16sp 62<br> [0x80000184]:sw sp, 44(ra)<br>  |
|  13|[0x80003234]<br>0xFFFFFFCE|- rs1_val == -2<br> - imm_val == -48<br>                                                                                                        |[0x8000018c]:c.addi16sp 61<br> [0x8000018e]:sw sp, 48(ra)<br>  |
|  14|[0x80003238]<br>0xFFFFEF6F|- rs1_val == -4097<br> - imm_val == -144<br>                                                                                                    |[0x8000019a]:c.addi16sp 55<br> [0x8000019c]:sw sp, 52(ra)<br>  |
|  15|[0x8000323c]<br>0xFFFF7EEF|- rs1_val == -32769<br> - imm_val == -272<br>                                                                                                   |[0x800001a8]:c.addi16sp 47<br> [0x800001aa]:sw sp, 56(ra)<br>  |
|  16|[0x80003240]<br>0x000000CF|- rs1_val == -129<br> - imm_val == 336<br>                                                                                                      |[0x800001b2]:c.addi16sp 21<br> [0x800001b4]:sw sp, 60(ra)<br>  |
|  17|[0x80003244]<br>0xFFFFFE9E|- imm_val == -352<br>                                                                                                                           |[0x800001bc]:c.addi16sp 42<br> [0x800001be]:sw sp, 64(ra)<br>  |
|  18|[0x80003248]<br>0x00000032|- rs1_val == 2<br>                                                                                                                              |[0x800001c6]:c.addi16sp 3<br> [0x800001c8]:sw sp, 68(ra)<br>   |
|  19|[0x8000324c]<br>0x00000024|- rs1_val == 4<br>                                                                                                                              |[0x800001d0]:c.addi16sp 2<br> [0x800001d2]:sw sp, 72(ra)<br>   |
|  20|[0x80003250]<br>0x00000078|- rs1_val == 8<br>                                                                                                                              |[0x800001da]:c.addi16sp 7<br> [0x800001dc]:sw sp, 76(ra)<br>   |
|  21|[0x80003254]<br>0xFFFFFF90|- rs1_val == 16<br>                                                                                                                             |[0x800001e4]:c.addi16sp 56<br> [0x800001e6]:sw sp, 80(ra)<br>  |
|  22|[0x80003258]<br>0x000000A0|- rs1_val == 64<br>                                                                                                                             |[0x800001ee]:c.addi16sp 6<br> [0x800001f0]:sw sp, 84(ra)<br>   |
|  23|[0x8000325c]<br>0xFFFFFF20|- rs1_val == 128<br>                                                                                                                            |[0x800001f8]:c.addi16sp 42<br> [0x800001fa]:sw sp, 88(ra)<br>  |
|  24|[0x80003260]<br>0x00000080|- rs1_val == 256<br>                                                                                                                            |[0x80000202]:c.addi16sp 56<br> [0x80000204]:sw sp, 92(ra)<br>  |
|  25|[0x80003264]<br>0x00000160|- rs1_val == 512<br>                                                                                                                            |[0x8000020c]:c.addi16sp 54<br> [0x8000020e]:sw sp, 96(ra)<br>  |
|  26|[0x80003268]<br>0x00000420|- rs1_val == 1024<br>                                                                                                                           |[0x80000216]:c.addi16sp 2<br> [0x80000218]:sw sp, 100(ra)<br>  |
|  27|[0x8000326c]<br>0x00000780|- rs1_val == 2048<br>                                                                                                                           |[0x80000224]:c.addi16sp 56<br> [0x80000226]:sw sp, 104(ra)<br> |
|  28|[0x80003270]<br>0x00000FF0|- rs1_val == 4096<br>                                                                                                                           |[0x8000022e]:c.addi16sp 63<br> [0x80000230]:sw sp, 108(ra)<br> |
|  29|[0x80003274]<br>0x00001EA0|- rs1_val == 8192<br>                                                                                                                           |[0x80000238]:c.addi16sp 42<br> [0x8000023a]:sw sp, 112(ra)<br> |
|  30|[0x80003278]<br>0x00003F60|- rs1_val == 16384<br>                                                                                                                          |[0x80000242]:c.addi16sp 54<br> [0x80000244]:sw sp, 116(ra)<br> |
|  31|[0x8000327c]<br>0x00008090|- rs1_val == 32768<br>                                                                                                                          |[0x8000024c]:c.addi16sp 9<br> [0x8000024e]:sw sp, 120(ra)<br>  |
|  32|[0x80003280]<br>0x0000FFA0|- rs1_val == 65536<br>                                                                                                                          |[0x80000256]:c.addi16sp 58<br> [0x80000258]:sw sp, 124(ra)<br> |
|  33|[0x80003284]<br>0x0001FEA0|- rs1_val == 131072<br>                                                                                                                         |[0x80000260]:c.addi16sp 42<br> [0x80000262]:sw sp, 128(ra)<br> |
|  34|[0x80003288]<br>0x00040090|- rs1_val == 262144<br>                                                                                                                         |[0x8000026a]:c.addi16sp 9<br> [0x8000026c]:sw sp, 132(ra)<br>  |
|  35|[0x8000328c]<br>0x00080010|- rs1_val == 524288<br>                                                                                                                         |[0x80000274]:c.addi16sp 1<br> [0x80000276]:sw sp, 136(ra)<br>  |
|  36|[0x80003290]<br>0x001FFF60|- rs1_val == 2097152<br>                                                                                                                        |[0x8000027e]:c.addi16sp 54<br> [0x80000280]:sw sp, 140(ra)<br> |
|  37|[0x80003294]<br>0x003FFEA0|- rs1_val == 4194304<br>                                                                                                                        |[0x80000288]:c.addi16sp 42<br> [0x8000028a]:sw sp, 144(ra)<br> |
|  38|[0x80003298]<br>0x00800150|- rs1_val == 8388608<br>                                                                                                                        |[0x80000292]:c.addi16sp 21<br> [0x80000294]:sw sp, 148(ra)<br> |
|  39|[0x8000329c]<br>0x01000060|- rs1_val == 16777216<br>                                                                                                                       |[0x8000029c]:c.addi16sp 6<br> [0x8000029e]:sw sp, 152(ra)<br>  |
|  40|[0x800032a0]<br>0xFFFFFD6F|- rs1_val == -513<br>                                                                                                                           |[0x800002a6]:c.addi16sp 55<br> [0x800002a8]:sw sp, 156(ra)<br> |
|  41|[0x800032a4]<br>0xFFFFFC4F|- rs1_val == -1025<br>                                                                                                                          |[0x800002b0]:c.addi16sp 5<br> [0x800002b2]:sw sp, 160(ra)<br>  |
|  42|[0x800032a8]<br>0xFFFFDFDF|- rs1_val == -8193<br>                                                                                                                          |[0x800002be]:c.addi16sp 62<br> [0x800002c0]:sw sp, 164(ra)<br> |
|  43|[0x800032ac]<br>0xFFFFC01F|- rs1_val == -16385<br>                                                                                                                         |[0x800002cc]:c.addi16sp 2<br> [0x800002ce]:sw sp, 168(ra)<br>  |
|  44|[0x800032b0]<br>0xFFFEFF7F|- rs1_val == -65537<br>                                                                                                                         |[0x800002da]:c.addi16sp 56<br> [0x800002dc]:sw sp, 172(ra)<br> |
|  45|[0x800032b4]<br>0xFFFE001F|- rs1_val == -131073<br>                                                                                                                        |[0x800002e8]:c.addi16sp 2<br> [0x800002ea]:sw sp, 176(ra)<br>  |
|  46|[0x800032b8]<br>0xFFFBFEEF|- rs1_val == -262145<br>                                                                                                                        |[0x800002f6]:c.addi16sp 47<br> [0x800002f8]:sw sp, 180(ra)<br> |
|  47|[0x800032bc]<br>0xFFF0014F|- rs1_val == -1048577<br>                                                                                                                       |[0x80000304]:c.addi16sp 21<br> [0x80000306]:sw sp, 184(ra)<br> |
|  48|[0x800032c0]<br>0xFFC0005F|- rs1_val == -4194305<br>                                                                                                                       |[0x80000312]:c.addi16sp 6<br> [0x80000314]:sw sp, 188(ra)<br>  |
|  49|[0x800032c4]<br>0xFF7FFF8F|- rs1_val == -8388609<br>                                                                                                                       |[0x80000320]:c.addi16sp 57<br> [0x80000322]:sw sp, 192(ra)<br> |
|  50|[0x800032c8]<br>0xFF00006F|- rs1_val == -16777217<br>                                                                                                                      |[0x8000032e]:c.addi16sp 7<br> [0x80000330]:sw sp, 196(ra)<br>  |
|  51|[0x800032cc]<br>0xFDFFFDFF|- rs1_val == -33554433<br>                                                                                                                      |[0x8000033c]:c.addi16sp 32<br> [0x8000033e]:sw sp, 200(ra)<br> |
|  52|[0x800032d0]<br>0xFC00006F|- rs1_val == -67108865<br>                                                                                                                      |[0x8000034a]:c.addi16sp 7<br> [0x8000034c]:sw sp, 204(ra)<br>  |
|  53|[0x800032d4]<br>0xF7FFFF8F|- rs1_val == -134217729<br>                                                                                                                     |[0x80000358]:c.addi16sp 57<br> [0x8000035a]:sw sp, 208(ra)<br> |
|  54|[0x800032d8]<br>0xEFFFFFBF|- rs1_val == -268435457<br>                                                                                                                     |[0x80000366]:c.addi16sp 60<br> [0x80000368]:sw sp, 212(ra)<br> |
|  55|[0x800032dc]<br>0xDFFFFE9F|- rs1_val == -536870913<br>                                                                                                                     |[0x80000374]:c.addi16sp 42<br> [0x80000376]:sw sp, 216(ra)<br> |
|  56|[0x800032e0]<br>0x00000147|- rs1_val == -9<br>                                                                                                                             |[0x8000037e]:c.addi16sp 21<br> [0x80000380]:sw sp, 220(ra)<br> |
|  57|[0x800032e4]<br>0x020001F0|- rs1_val == 33554432<br>                                                                                                                       |[0x80000388]:c.addi16sp 31<br> [0x8000038a]:sw sp, 224(ra)<br> |
|  58|[0x800032e8]<br>0x03FFFEF0|- rs1_val == 67108864<br>                                                                                                                       |[0x80000392]:c.addi16sp 47<br> [0x80000394]:sw sp, 228(ra)<br> |
|  59|[0x800032ec]<br>0x07FFFFF0|- rs1_val == 134217728<br>                                                                                                                      |[0x8000039c]:c.addi16sp 63<br> [0x8000039e]:sw sp, 232(ra)<br> |
|  60|[0x800032f0]<br>0x10000090|- rs1_val == 268435456<br>                                                                                                                      |[0x800003a6]:c.addi16sp 9<br> [0x800003a8]:sw sp, 236(ra)<br>  |
|  61|[0x800032f4]<br>0x1FFFFFF0|- rs1_val == 536870912<br>                                                                                                                      |[0x800003b0]:c.addi16sp 63<br> [0x800003b2]:sw sp, 240(ra)<br> |
|  62|[0x800032f8]<br>0xC000002F|- rs1_val == -1073741825<br>                                                                                                                    |[0x800003be]:c.addi16sp 3<br> [0x800003c0]:sw sp, 244(ra)<br>  |
|  63|[0x800032fc]<br>0x3FFFFFE0|- rs1_val == 1073741824<br>                                                                                                                     |[0x800003c8]:c.addi16sp 62<br> [0x800003ca]:sw sp, 248(ra)<br> |
|  64|[0x80003300]<br>0x555554F5|- rs1_val == 1431655765<br>                                                                                                                     |[0x800003d6]:c.addi16sp 58<br> [0x800003d8]:sw sp, 252(ra)<br> |
|  65|[0x80003304]<br>0xAAAAAA8A|- rs1_val == -1431655766<br>                                                                                                                    |[0x800003e4]:c.addi16sp 62<br> [0x800003e6]:sw sp, 256(ra)<br> |
|  66|[0x80003308]<br>0x000000ED|- rs1_val == -3<br>                                                                                                                             |[0x800003ee]:c.addi16sp 15<br> [0x800003f0]:sw sp, 260(ra)<br> |
|  67|[0x8000330c]<br>0xFFFFFEFB|- rs1_val == -5<br>                                                                                                                             |[0x800003f8]:c.addi16sp 48<br> [0x800003fa]:sw sp, 264(ra)<br> |
|  68|[0x80003310]<br>0x000001DF|- rs1_val == -17<br>                                                                                                                            |[0x80000402]:c.addi16sp 31<br> [0x80000404]:sw sp, 268(ra)<br> |
|  69|[0x80003314]<br>0xFFFFFF6F|- rs1_val == -33<br>                                                                                                                            |[0x8000040c]:c.addi16sp 57<br> [0x8000040e]:sw sp, 272(ra)<br> |
|  70|[0x80003318]<br>0x000000BF|- rs1_val == -65<br>                                                                                                                            |[0x80000416]:c.addi16sp 16<br> [0x80000418]:sw sp, 276(ra)<br> |
