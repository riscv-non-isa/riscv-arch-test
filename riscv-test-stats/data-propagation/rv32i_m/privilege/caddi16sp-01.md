
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000422')]      |
| SIG_REGION                | [('0x80002204', '0x8000231c', '70 words')]      |
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

|s.no|        signature         |                                                                coverpoints                                                                |                             code                              |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80002204]<br>0x00000020|- opcode : c.addi16sp<br> - rd : x2<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 16<br> - imm_val == 16<br> |[0x80000104]:c.addi16sp 1<br> [0x80000106]:sw sp, 0(ra)<br>    |
|   2|[0x80002208]<br>0x00000098|- rs1_val != imm_val<br> - rs1_val == 8<br>                                                                                                |[0x8000010e]:c.addi16sp 9<br> [0x80000110]:sw sp, 4(ra)<br>    |
|   3|[0x8000220c]<br>0x00000040|- rs1_val > 0 and imm_val < 0<br> - rs1_val == 128<br>                                                                                     |[0x80000118]:c.addi16sp 60<br> [0x8000011a]:sw sp, 8(ra)<br>   |
|   4|[0x80002210]<br>0x0000004E|- rs1_val < 0 and imm_val > 0<br> - rs1_val == -2<br>                                                                                      |[0x80000122]:c.addi16sp 5<br> [0x80000124]:sw sp, 12(ra)<br>   |
|   5|[0x80002214]<br>0xFFFFFE8F|- rs1_val < 0 and imm_val < 0<br> - rs1_val == -257<br>                                                                                    |[0x8000012c]:c.addi16sp 57<br> [0x8000012e]:sw sp, 16(ra)<br>  |
|   6|[0x80002218]<br>0x7FFFFEF0|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br> - imm_val == -272<br>                                                         |[0x80000136]:c.addi16sp 47<br> [0x80000138]:sw sp, 20(ra)<br>  |
|   7|[0x8000221c]<br>0xFFFFFFA0|- rs1_val == 0<br>                                                                                                                         |[0x80000140]:c.addi16sp 58<br> [0x80000142]:sw sp, 24(ra)<br>  |
|   8|[0x80002220]<br>0x7FFFFF7F|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                                               |[0x8000014e]:c.addi16sp 56<br> [0x80000150]:sw sp, 28(ra)<br>  |
|   9|[0x80002224]<br>0xFFFFFFC1|- rs1_val == 1<br>                                                                                                                         |[0x80000158]:c.addi16sp 60<br> [0x8000015a]:sw sp, 32(ra)<br>  |
|  10|[0x80002228]<br>0x55555355|- imm_val == -512<br> - rs1_val == 1431655765<br>                                                                                          |[0x80000166]:c.addi16sp 32<br> [0x80000168]:sw sp, 36(ra)<br>  |
|  11|[0x8000222c]<br>0x000000EF|- imm_val == 496<br>                                                                                                                       |[0x80000170]:c.addi16sp 31<br> [0x80000172]:sw sp, 40(ra)<br>  |
|  12|[0x80002230]<br>0xFFFFFF82|- rs1_val == 2<br>                                                                                                                         |[0x8000017a]:c.addi16sp 56<br> [0x8000017c]:sw sp, 44(ra)<br>  |
|  13|[0x80002234]<br>0xFFFFFF84|- rs1_val == 4<br>                                                                                                                         |[0x80000184]:c.addi16sp 56<br> [0x80000186]:sw sp, 48(ra)<br>  |
|  14|[0x80002238]<br>0x00000090|- rs1_val == 32<br>                                                                                                                        |[0x8000018e]:c.addi16sp 7<br> [0x80000190]:sw sp, 52(ra)<br>   |
|  15|[0x8000223c]<br>0xFFFFFE40|- rs1_val == 64<br>                                                                                                                        |[0x80000198]:c.addi16sp 32<br> [0x8000019a]:sw sp, 56(ra)<br>  |
|  16|[0x80002240]<br>0x00000170|- rs1_val == 256<br>                                                                                                                       |[0x800001a2]:c.addi16sp 7<br> [0x800001a4]:sw sp, 60(ra)<br>   |
|  17|[0x80002244]<br>0x00000180|- rs1_val == 512<br>                                                                                                                       |[0x800001ac]:c.addi16sp 56<br> [0x800001ae]:sw sp, 64(ra)<br>  |
|  18|[0x80002248]<br>0x00000550|- rs1_val == 1024<br> - imm_val == 336<br>                                                                                                 |[0x800001b6]:c.addi16sp 21<br> [0x800001b8]:sw sp, 68(ra)<br>  |
|  19|[0x8000224c]<br>0x00000880|- rs1_val == 2048<br> - imm_val == 128<br>                                                                                                 |[0x800001c4]:c.addi16sp 8<br> [0x800001c6]:sw sp, 72(ra)<br>   |
|  20|[0x80002250]<br>0x00001020|- rs1_val == 4096<br> - imm_val == 32<br>                                                                                                  |[0x800001ce]:c.addi16sp 2<br> [0x800001d0]:sw sp, 76(ra)<br>   |
|  21|[0x80002254]<br>0x00001FB0|- rs1_val == 8192<br> - imm_val == -80<br>                                                                                                 |[0x800001d8]:c.addi16sp 59<br> [0x800001da]:sw sp, 80(ra)<br>  |
|  22|[0x80002258]<br>0x00003FC0|- rs1_val == 16384<br>                                                                                                                     |[0x800001e2]:c.addi16sp 60<br> [0x800001e4]:sw sp, 84(ra)<br>  |
|  23|[0x8000225c]<br>0x00008100|- rs1_val == 32768<br> - imm_val == 256<br>                                                                                                |[0x800001ec]:c.addi16sp 16<br> [0x800001ee]:sw sp, 88(ra)<br>  |
|  24|[0x80002260]<br>0x0000FF60|- rs1_val == 65536<br>                                                                                                                     |[0x800001f6]:c.addi16sp 54<br> [0x800001f8]:sw sp, 92(ra)<br>  |
|  25|[0x80002264]<br>0x00020080|- rs1_val == 131072<br>                                                                                                                    |[0x80000200]:c.addi16sp 8<br> [0x80000202]:sw sp, 96(ra)<br>   |
|  26|[0x80002268]<br>0x00040070|- rs1_val == 262144<br>                                                                                                                    |[0x8000020a]:c.addi16sp 7<br> [0x8000020c]:sw sp, 100(ra)<br>  |
|  27|[0x8000226c]<br>0x00080100|- rs1_val == 524288<br>                                                                                                                    |[0x80000214]:c.addi16sp 16<br> [0x80000216]:sw sp, 104(ra)<br> |
|  28|[0x80002270]<br>0x001001F0|- rs1_val == 1048576<br>                                                                                                                   |[0x8000021e]:c.addi16sp 31<br> [0x80000220]:sw sp, 108(ra)<br> |
|  29|[0x80002274]<br>0x001FFFE0|- rs1_val == 2097152<br> - imm_val == -32<br>                                                                                              |[0x80000228]:c.addi16sp 62<br> [0x8000022a]:sw sp, 112(ra)<br> |
|  30|[0x80002278]<br>0x003FFE00|- rs1_val == 4194304<br>                                                                                                                   |[0x80000232]:c.addi16sp 32<br> [0x80000234]:sw sp, 116(ra)<br> |
|  31|[0x8000227c]<br>0x00800050|- rs1_val == 8388608<br>                                                                                                                   |[0x8000023c]:c.addi16sp 5<br> [0x8000023e]:sw sp, 120(ra)<br>  |
|  32|[0x80002280]<br>0x01000150|- rs1_val == 16777216<br>                                                                                                                  |[0x80000246]:c.addi16sp 21<br> [0x80000248]:sw sp, 124(ra)<br> |
|  33|[0x80002284]<br>0x02000090|- rs1_val == 33554432<br>                                                                                                                  |[0x80000250]:c.addi16sp 9<br> [0x80000252]:sw sp, 128(ra)<br>  |
|  34|[0x80002288]<br>0x03FFFFD0|- rs1_val == 67108864<br> - imm_val == -48<br>                                                                                             |[0x8000025a]:c.addi16sp 61<br> [0x8000025c]:sw sp, 132(ra)<br> |
|  35|[0x8000228c]<br>0x08000020|- rs1_val == 134217728<br>                                                                                                                 |[0x80000264]:c.addi16sp 2<br> [0x80000266]:sw sp, 136(ra)<br>  |
|  36|[0x80002290]<br>0x10000050|- rs1_val == 268435456<br>                                                                                                                 |[0x8000026e]:c.addi16sp 5<br> [0x80000270]:sw sp, 140(ra)<br>  |
|  37|[0x80002294]<br>0x1FFFFE00|- rs1_val == 536870912<br>                                                                                                                 |[0x80000278]:c.addi16sp 32<br> [0x8000027a]:sw sp, 144(ra)<br> |
|  38|[0x80002298]<br>0x3FFFFFD0|- rs1_val == 1073741824<br>                                                                                                                |[0x80000282]:c.addi16sp 61<br> [0x80000284]:sw sp, 148(ra)<br> |
|  39|[0x8000229c]<br>0x000001ED|- rs1_val == -3<br>                                                                                                                        |[0x8000028c]:c.addi16sp 31<br> [0x8000028e]:sw sp, 152(ra)<br> |
|  40|[0x800022a0]<br>0x0000005B|- rs1_val == -5<br>                                                                                                                        |[0x80000296]:c.addi16sp 6<br> [0x80000298]:sw sp, 156(ra)<br>  |
|  41|[0x800022a4]<br>0xFFE001EF|- rs1_val == -2097153<br>                                                                                                                  |[0x800002a4]:c.addi16sp 31<br> [0x800002a6]:sw sp, 160(ra)<br> |
|  42|[0x800022a8]<br>0xFFBFFFAF|- rs1_val == -4194305<br>                                                                                                                  |[0x800002b2]:c.addi16sp 59<br> [0x800002b4]:sw sp, 164(ra)<br> |
|  43|[0x800022ac]<br>0xFF7FFFEF|- rs1_val == -8388609<br>                                                                                                                  |[0x800002c0]:c.addi16sp 63<br> [0x800002c2]:sw sp, 168(ra)<br> |
|  44|[0x800022b0]<br>0xFF00008F|- rs1_val == -16777217<br>                                                                                                                 |[0x800002ce]:c.addi16sp 9<br> [0x800002d0]:sw sp, 172(ra)<br>  |
|  45|[0x800022b4]<br>0xFE00002F|- rs1_val == -33554433<br>                                                                                                                 |[0x800002dc]:c.addi16sp 3<br> [0x800002de]:sw sp, 176(ra)<br>  |
|  46|[0x800022b8]<br>0xFBFFFFBF|- rs1_val == -67108865<br>                                                                                                                 |[0x800002ea]:c.addi16sp 60<br> [0x800002ec]:sw sp, 180(ra)<br> |
|  47|[0x800022bc]<br>0xF80001EF|- rs1_val == -134217729<br>                                                                                                                |[0x800002f8]:c.addi16sp 31<br> [0x800002fa]:sw sp, 184(ra)<br> |
|  48|[0x800022c0]<br>0xEFFFFF8F|- rs1_val == -268435457<br>                                                                                                                |[0x80000306]:c.addi16sp 57<br> [0x80000308]:sw sp, 188(ra)<br> |
|  49|[0x800022c4]<br>0xDFFFFF8F|- rs1_val == -536870913<br>                                                                                                                |[0x80000314]:c.addi16sp 57<br> [0x80000316]:sw sp, 192(ra)<br> |
|  50|[0x800022c8]<br>0xBFFFFF9F|- rs1_val == -1073741825<br>                                                                                                               |[0x80000322]:c.addi16sp 58<br> [0x80000324]:sw sp, 196(ra)<br> |
|  51|[0x800022cc]<br>0xAAAAAA5A|- rs1_val == -1431655766<br>                                                                                                               |[0x80000330]:c.addi16sp 59<br> [0x80000332]:sw sp, 200(ra)<br> |
|  52|[0x800022d0]<br>0x00000039|- imm_val == 64<br>                                                                                                                        |[0x8000033a]:c.addi16sp 4<br> [0x8000033c]:sw sp, 204(ra)<br>  |
|  53|[0x800022d4]<br>0xFFEFFF6F|- rs1_val == -1048577<br> - imm_val == -144<br>                                                                                            |[0x80000348]:c.addi16sp 55<br> [0x8000034a]:sw sp, 208(ra)<br> |
|  54|[0x800022d8]<br>0xFFFFFEE0|- imm_val == -352<br>                                                                                                                      |[0x80000352]:c.addi16sp 42<br> [0x80000354]:sw sp, 212(ra)<br> |
|  55|[0x800022dc]<br>0x00000007|- rs1_val == -9<br>                                                                                                                        |[0x8000035c]:c.addi16sp 1<br> [0x8000035e]:sw sp, 216(ra)<br>  |
|  56|[0x800022e0]<br>0xFFFFFF7F|- rs1_val == -17<br>                                                                                                                       |[0x80000366]:c.addi16sp 57<br> [0x80000368]:sw sp, 220(ra)<br> |
|  57|[0x800022e4]<br>0xFFFFFF7F|- rs1_val == -33<br>                                                                                                                       |[0x80000370]:c.addi16sp 58<br> [0x80000372]:sw sp, 224(ra)<br> |
|  58|[0x800022e8]<br>0xFFFFFF3F|- rs1_val == -65<br>                                                                                                                       |[0x8000037a]:c.addi16sp 56<br> [0x8000037c]:sw sp, 228(ra)<br> |
|  59|[0x800022ec]<br>0xFFFFFEDF|- rs1_val == -129<br>                                                                                                                      |[0x80000384]:c.addi16sp 54<br> [0x80000386]:sw sp, 232(ra)<br> |
|  60|[0x800022f0]<br>0xFFFFFE6F|- rs1_val == -513<br>                                                                                                                      |[0x8000038e]:c.addi16sp 7<br> [0x80000390]:sw sp, 236(ra)<br>  |
|  61|[0x800022f4]<br>0xFFFFFBAF|- rs1_val == -1025<br>                                                                                                                     |[0x80000398]:c.addi16sp 59<br> [0x8000039a]:sw sp, 240(ra)<br> |
|  62|[0x800022f8]<br>0xFFFFF69F|- rs1_val == -2049<br>                                                                                                                     |[0x800003a6]:c.addi16sp 42<br> [0x800003a8]:sw sp, 244(ra)<br> |
|  63|[0x800022fc]<br>0xFFFFEEEF|- rs1_val == -4097<br>                                                                                                                     |[0x800003b4]:c.addi16sp 47<br> [0x800003b6]:sw sp, 248(ra)<br> |
|  64|[0x80002300]<br>0xFFFFE04F|- rs1_val == -8193<br>                                                                                                                     |[0x800003c2]:c.addi16sp 5<br> [0x800003c4]:sw sp, 252(ra)<br>  |
|  65|[0x80002304]<br>0xFFFFBFCF|- rs1_val == -16385<br>                                                                                                                    |[0x800003d0]:c.addi16sp 61<br> [0x800003d2]:sw sp, 256(ra)<br> |
|  66|[0x80002308]<br>0xFFFF7EEF|- rs1_val == -32769<br>                                                                                                                    |[0x800003de]:c.addi16sp 47<br> [0x800003e0]:sw sp, 260(ra)<br> |
|  67|[0x8000230c]<br>0xFFFEFFCF|- rs1_val == -65537<br>                                                                                                                    |[0x800003ec]:c.addi16sp 61<br> [0x800003ee]:sw sp, 264(ra)<br> |
|  68|[0x80002310]<br>0xFFFE01EF|- rs1_val == -131073<br>                                                                                                                   |[0x800003fa]:c.addi16sp 31<br> [0x800003fc]:sw sp, 268(ra)<br> |
|  69|[0x80002314]<br>0xFFFBFF5F|- rs1_val == -262145<br>                                                                                                                   |[0x80000408]:c.addi16sp 54<br> [0x8000040a]:sw sp, 272(ra)<br> |
|  70|[0x80002318]<br>0xFFF8007F|- rs1_val == -524289<br>                                                                                                                   |[0x80000416]:c.addi16sp 8<br> [0x80000418]:sw sp, 276(ra)<br>  |
