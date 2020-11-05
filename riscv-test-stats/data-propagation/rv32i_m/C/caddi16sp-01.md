
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

|s.no|        signature         |                                                                coverpoints                                                                 |                             code                              |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80003204]<br>0xFFFFFE02|- opcode : c.addi16sp<br> - rd : x2<br> - rs1_val != imm_val<br> - rs1_val > 0 and imm_val < 0<br> - imm_val == -512<br> - rs1_val == 2<br> |[0x80000104]:c.addi16sp 32<br> [0x80000106]:sw sp, 0(ra)<br>   |
|   2|[0x80003208]<br>0x002001F0|- rs1_val > 0 and imm_val > 0<br> - imm_val == 496<br> - rs1_val == 2097152<br>                                                             |[0x8000010e]:c.addi16sp 31<br> [0x80000110]:sw sp, 4(ra)<br>   |
|   3|[0x8000320c]<br>0x80000150|- rs1_val < 0 and imm_val > 0<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br> - imm_val == 336<br>                         |[0x80000118]:c.addi16sp 21<br> [0x8000011a]:sw sp, 8(ra)<br>   |
|   4|[0x80003210]<br>0xFFFFFF60|- rs1_val == 0<br>                                                                                                                          |[0x80000122]:c.addi16sp 54<br> [0x80000124]:sw sp, 12(ra)<br>  |
|   5|[0x80003214]<br>0x7FFFFF7F|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                                                |[0x80000130]:c.addi16sp 56<br> [0x80000132]:sw sp, 16(ra)<br>  |
|   6|[0x80003218]<br>0xFFFFFFD1|- rs1_val == 1<br> - imm_val == -48<br>                                                                                                     |[0x8000013a]:c.addi16sp 61<br> [0x8000013c]:sw sp, 20(ra)<br>  |
|   7|[0x8000321c]<br>0x00000080|- rs1_val == imm_val<br> - rs1_val == 64<br> - imm_val == 64<br>                                                                            |[0x80000144]:c.addi16sp 4<br> [0x80000146]:sw sp, 24(ra)<br>   |
|   8|[0x80003220]<br>0xFFFFFF6A|- rs1_val < 0 and imm_val < 0<br> - imm_val == -144<br>                                                                                     |[0x8000014e]:c.addi16sp 55<br> [0x80000150]:sw sp, 28(ra)<br>  |
|   9|[0x80003224]<br>0x00040010|- rs1_val == 262144<br> - imm_val == 16<br>                                                                                                 |[0x80000158]:c.addi16sp 1<br> [0x8000015a]:sw sp, 32(ra)<br>   |
|  10|[0x80003228]<br>0x0000000F|- rs1_val == -17<br> - imm_val == 32<br>                                                                                                    |[0x80000162]:c.addi16sp 2<br> [0x80000164]:sw sp, 36(ra)<br>   |
|  11|[0x8000322c]<br>0x00400080|- rs1_val == 4194304<br> - imm_val == 128<br>                                                                                               |[0x8000016c]:c.addi16sp 8<br> [0x8000016e]:sw sp, 40(ra)<br>   |
|  12|[0x80003230]<br>0x00000103|- imm_val == 256<br>                                                                                                                        |[0x80000176]:c.addi16sp 16<br> [0x80000178]:sw sp, 44(ra)<br>  |
|  13|[0x80003234]<br>0xFFFFFF9F|- rs1_val == -65<br> - imm_val == -32<br>                                                                                                   |[0x80000180]:c.addi16sp 62<br> [0x80000182]:sw sp, 48(ra)<br>  |
|  14|[0x80003238]<br>0xDFFFFFAF|- rs1_val == -536870913<br> - imm_val == -80<br>                                                                                            |[0x8000018e]:c.addi16sp 59<br> [0x80000190]:sw sp, 52(ra)<br>  |
|  15|[0x8000323c]<br>0xFFFFF6EF|- rs1_val == -2049<br> - imm_val == -272<br>                                                                                                |[0x8000019c]:c.addi16sp 47<br> [0x8000019e]:sw sp, 56(ra)<br>  |
|  16|[0x80003240]<br>0x3FFFFE9F|- imm_val == -352<br>                                                                                                                       |[0x800001aa]:c.addi16sp 42<br> [0x800001ac]:sw sp, 60(ra)<br>  |
|  17|[0x80003244]<br>0x000001F4|- rs1_val == 4<br>                                                                                                                          |[0x800001b4]:c.addi16sp 31<br> [0x800001b6]:sw sp, 64(ra)<br>  |
|  18|[0x80003248]<br>0x00000108|- rs1_val == 8<br>                                                                                                                          |[0x800001be]:c.addi16sp 16<br> [0x800001c0]:sw sp, 68(ra)<br>  |
|  19|[0x8000324c]<br>0x00000090|- rs1_val == 16<br>                                                                                                                         |[0x800001c8]:c.addi16sp 8<br> [0x800001ca]:sw sp, 72(ra)<br>   |
|  20|[0x80003250]<br>0x00000110|- rs1_val == 32<br>                                                                                                                         |[0x800001d2]:c.addi16sp 15<br> [0x800001d4]:sw sp, 76(ra)<br>  |
|  21|[0x80003254]<br>0x00000270|- rs1_val == 128<br>                                                                                                                        |[0x800001dc]:c.addi16sp 31<br> [0x800001de]:sw sp, 80(ra)<br>  |
|  22|[0x80003258]<br>0x000000E0|- rs1_val == 256<br>                                                                                                                        |[0x800001e6]:c.addi16sp 62<br> [0x800001e8]:sw sp, 84(ra)<br>  |
|  23|[0x8000325c]<br>0x000001B0|- rs1_val == 512<br>                                                                                                                        |[0x800001f0]:c.addi16sp 59<br> [0x800001f2]:sw sp, 88(ra)<br>  |
|  24|[0x80003260]<br>0x000005F0|- rs1_val == 1024<br>                                                                                                                       |[0x800001fa]:c.addi16sp 31<br> [0x800001fc]:sw sp, 92(ra)<br>  |
|  25|[0x80003264]<br>0x000007D0|- rs1_val == 2048<br>                                                                                                                       |[0x80000208]:c.addi16sp 61<br> [0x8000020a]:sw sp, 96(ra)<br>  |
|  26|[0x80003268]<br>0x00000EF0|- rs1_val == 4096<br>                                                                                                                       |[0x80000212]:c.addi16sp 47<br> [0x80000214]:sw sp, 100(ra)<br> |
|  27|[0x8000326c]<br>0x00001FB0|- rs1_val == 8192<br>                                                                                                                       |[0x8000021c]:c.addi16sp 59<br> [0x8000021e]:sw sp, 104(ra)<br> |
|  28|[0x80003270]<br>0x00003F70|- rs1_val == 16384<br>                                                                                                                      |[0x80000226]:c.addi16sp 55<br> [0x80000228]:sw sp, 108(ra)<br> |
|  29|[0x80003274]<br>0x00008010|- rs1_val == 32768<br>                                                                                                                      |[0x80000230]:c.addi16sp 1<br> [0x80000232]:sw sp, 112(ra)<br>  |
|  30|[0x80003278]<br>0x0000FFE0|- rs1_val == 65536<br>                                                                                                                      |[0x8000023a]:c.addi16sp 62<br> [0x8000023c]:sw sp, 116(ra)<br> |
|  31|[0x8000327c]<br>0x0001FF80|- rs1_val == 131072<br>                                                                                                                     |[0x80000244]:c.addi16sp 56<br> [0x80000246]:sw sp, 120(ra)<br> |
|  32|[0x80003280]<br>0x0007FFC0|- rs1_val == 524288<br>                                                                                                                     |[0x8000024e]:c.addi16sp 60<br> [0x80000250]:sw sp, 124(ra)<br> |
|  33|[0x80003284]<br>0x00100070|- rs1_val == 1048576<br>                                                                                                                    |[0x80000258]:c.addi16sp 7<br> [0x8000025a]:sw sp, 128(ra)<br>  |
|  34|[0x80003288]<br>0x007FFF00|- rs1_val == 8388608<br>                                                                                                                    |[0x80000262]:c.addi16sp 48<br> [0x80000264]:sw sp, 132(ra)<br> |
|  35|[0x8000328c]<br>0x00FFFF80|- rs1_val == 16777216<br>                                                                                                                   |[0x8000026c]:c.addi16sp 56<br> [0x8000026e]:sw sp, 136(ra)<br> |
|  36|[0x80003290]<br>0x01FFFFA0|- rs1_val == 33554432<br>                                                                                                                   |[0x80000276]:c.addi16sp 58<br> [0x80000278]:sw sp, 140(ra)<br> |
|  37|[0x80003294]<br>0x03FFFEA0|- rs1_val == 67108864<br>                                                                                                                   |[0x80000280]:c.addi16sp 42<br> [0x80000282]:sw sp, 144(ra)<br> |
|  38|[0x80003298]<br>0x08000010|- rs1_val == 134217728<br>                                                                                                                  |[0x8000028a]:c.addi16sp 1<br> [0x8000028c]:sw sp, 148(ra)<br>  |
|  39|[0x8000329c]<br>0x10000010|- rs1_val == 268435456<br>                                                                                                                  |[0x80000294]:c.addi16sp 1<br> [0x80000296]:sw sp, 152(ra)<br>  |
|  40|[0x800032a0]<br>0xFFFFFCEF|- rs1_val == -513<br>                                                                                                                       |[0x8000029e]:c.addi16sp 47<br> [0x800002a0]:sw sp, 156(ra)<br> |
|  41|[0x800032a4]<br>0xFFFFFBCF|- rs1_val == -1025<br>                                                                                                                      |[0x800002a8]:c.addi16sp 61<br> [0x800002aa]:sw sp, 160(ra)<br> |
|  42|[0x800032a8]<br>0xFFFFF02F|- rs1_val == -4097<br>                                                                                                                      |[0x800002b6]:c.addi16sp 3<br> [0x800002b8]:sw sp, 164(ra)<br>  |
|  43|[0x800032ac]<br>0xFFFFDF9F|- rs1_val == -8193<br>                                                                                                                      |[0x800002c4]:c.addi16sp 58<br> [0x800002c6]:sw sp, 168(ra)<br> |
|  44|[0x800032b0]<br>0xFFFFC1EF|- rs1_val == -16385<br>                                                                                                                     |[0x800002d2]:c.addi16sp 31<br> [0x800002d4]:sw sp, 172(ra)<br> |
|  45|[0x800032b4]<br>0xFFFF81EF|- rs1_val == -32769<br>                                                                                                                     |[0x800002e0]:c.addi16sp 31<br> [0x800002e2]:sw sp, 176(ra)<br> |
|  46|[0x800032b8]<br>0xFFFF00EF|- rs1_val == -65537<br>                                                                                                                     |[0x800002ee]:c.addi16sp 15<br> [0x800002f0]:sw sp, 180(ra)<br> |
|  47|[0x800032bc]<br>0xFFFDFFDF|- rs1_val == -131073<br>                                                                                                                    |[0x800002fc]:c.addi16sp 62<br> [0x800002fe]:sw sp, 184(ra)<br> |
|  48|[0x800032c0]<br>0xFFFC004F|- rs1_val == -262145<br>                                                                                                                    |[0x8000030a]:c.addi16sp 5<br> [0x8000030c]:sw sp, 188(ra)<br>  |
|  49|[0x800032c4]<br>0xFFF8003F|- rs1_val == -524289<br>                                                                                                                    |[0x80000318]:c.addi16sp 4<br> [0x8000031a]:sw sp, 192(ra)<br>  |
|  50|[0x800032c8]<br>0xFFF0006F|- rs1_val == -1048577<br>                                                                                                                   |[0x80000326]:c.addi16sp 7<br> [0x80000328]:sw sp, 196(ra)<br>  |
|  51|[0x800032cc]<br>0xFFE0001F|- rs1_val == -2097153<br>                                                                                                                   |[0x80000334]:c.addi16sp 2<br> [0x80000336]:sw sp, 200(ra)<br>  |
|  52|[0x800032d0]<br>0xFFBFFE9F|- rs1_val == -4194305<br>                                                                                                                   |[0x80000342]:c.addi16sp 42<br> [0x80000344]:sw sp, 204(ra)<br> |
|  53|[0x800032d4]<br>0xFF80004F|- rs1_val == -8388609<br>                                                                                                                   |[0x80000350]:c.addi16sp 5<br> [0x80000352]:sw sp, 208(ra)<br>  |
|  54|[0x800032d8]<br>0xFF00006F|- rs1_val == -16777217<br>                                                                                                                  |[0x8000035e]:c.addi16sp 7<br> [0x80000360]:sw sp, 212(ra)<br>  |
|  55|[0x800032dc]<br>0xFDFFFEEF|- rs1_val == -33554433<br>                                                                                                                  |[0x8000036c]:c.addi16sp 47<br> [0x8000036e]:sw sp, 216(ra)<br> |
|  56|[0x800032e0]<br>0xFFFFFEF7|- rs1_val == -9<br>                                                                                                                         |[0x80000376]:c.addi16sp 48<br> [0x80000378]:sw sp, 220(ra)<br> |
|  57|[0x800032e4]<br>0xFFFFFF7B|- rs1_val == -5<br>                                                                                                                         |[0x80000380]:c.addi16sp 56<br> [0x80000382]:sw sp, 224(ra)<br> |
|  58|[0x800032e8]<br>0xFC00006F|- rs1_val == -67108865<br>                                                                                                                  |[0x8000038e]:c.addi16sp 7<br> [0x80000390]:sw sp, 228(ra)<br>  |
|  59|[0x800032ec]<br>0xF80000FF|- rs1_val == -134217729<br>                                                                                                                 |[0x8000039c]:c.addi16sp 16<br> [0x8000039e]:sw sp, 232(ra)<br> |
|  60|[0x800032f0]<br>0xEFFFFFCF|- rs1_val == -268435457<br>                                                                                                                 |[0x800003aa]:c.addi16sp 61<br> [0x800003ac]:sw sp, 236(ra)<br> |
|  61|[0x800032f4]<br>0x20000100|- rs1_val == 536870912<br>                                                                                                                  |[0x800003b4]:c.addi16sp 16<br> [0x800003b6]:sw sp, 240(ra)<br> |
|  62|[0x800032f8]<br>0xC000005F|- rs1_val == -1073741825<br>                                                                                                                |[0x800003c2]:c.addi16sp 6<br> [0x800003c4]:sw sp, 244(ra)<br>  |
|  63|[0x800032fc]<br>0x400001F0|- rs1_val == 1073741824<br>                                                                                                                 |[0x800003cc]:c.addi16sp 31<br> [0x800003ce]:sw sp, 248(ra)<br> |
|  64|[0x80003300]<br>0x55555645|- rs1_val == 1431655765<br>                                                                                                                 |[0x800003da]:c.addi16sp 15<br> [0x800003dc]:sw sp, 252(ra)<br> |
|  65|[0x80003304]<br>0x0000004E|- rs1_val == -2<br>                                                                                                                         |[0x800003e4]:c.addi16sp 5<br> [0x800003e6]:sw sp, 256(ra)<br>  |
|  66|[0x80003308]<br>0xAAAAABFA|- rs1_val == -1431655766<br>                                                                                                                |[0x800003f2]:c.addi16sp 21<br> [0x800003f4]:sw sp, 260(ra)<br> |
|  67|[0x8000330c]<br>0xFFFFFFBD|- rs1_val == -3<br>                                                                                                                         |[0x800003fc]:c.addi16sp 60<br> [0x800003fe]:sw sp, 264(ra)<br> |
|  68|[0x80003310]<br>0x000001CF|- rs1_val == -33<br>                                                                                                                        |[0x80000406]:c.addi16sp 31<br> [0x80000408]:sw sp, 268(ra)<br> |
|  69|[0x80003314]<br>0xFFFFFEEF|- rs1_val == -129<br>                                                                                                                       |[0x80000410]:c.addi16sp 55<br> [0x80000412]:sw sp, 272(ra)<br> |
|  70|[0x80003318]<br>0xFFFFFECF|- rs1_val == -257<br>                                                                                                                       |[0x8000041a]:c.addi16sp 61<br> [0x8000041c]:sw sp, 276(ra)<br> |
