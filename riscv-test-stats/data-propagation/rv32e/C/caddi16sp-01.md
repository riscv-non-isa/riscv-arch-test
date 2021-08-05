
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x800003c0')]      |
| SIG_REGION                | [('0x80002204', '0x80002324', '72 words')]      |
| COV_LABELS                | caddi16sp      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/caddi16sp-01.S/caddi16sp-01.S    |
| Total Number of coverpoints| 94     |
| Total Coverpoints Hit     | 91      |
| Total Signature Updates   | 72      |
| STAT1                     | 72      |
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

|s.no|        signature         |                                                                   coverpoints                                                                    |                             code                              |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80002204]<br>0x003FFE00|- opcode : c.addi16sp<br> - rd : x2<br> - imm_val == -512<br> - rs1_val == 4194304<br> - rs1_val != imm_val<br> - rs1_val > 0 and imm_val < 0<br> |[0x80000084]:c.addi16sp 32<br> [0x80000086]:sw sp, 0(ra)<br>   |
|   2|[0x80002208]<br>0x8000007F|- rs1_val == 2147483647<br> - imm_val == 128<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val > 0 and imm_val > 0<br>                               |[0x80000092]:c.addi16sp 8<br> [0x80000094]:sw sp, 4(ra)<br>    |
|   3|[0x8000220c]<br>0xC000005F|- rs1_val == -1073741825<br> - rs1_val < 0 and imm_val > 0<br>                                                                                    |[0x800000a0]:c.addi16sp 6<br> [0x800000a2]:sw sp, 8(ra)<br>    |
|   4|[0x80002210]<br>0xDFFFFF9F|- rs1_val == -536870913<br> - rs1_val < 0 and imm_val < 0<br>                                                                                     |[0x800000ae]:c.addi16sp 58<br> [0x800000b0]:sw sp, 12(ra)<br>  |
|   5|[0x80002214]<br>0xEFFFFE9F|- rs1_val == -268435457<br> - imm_val == -352<br>                                                                                                 |[0x800000bc]:c.addi16sp 42<br> [0x800000be]:sw sp, 16(ra)<br>  |
|   6|[0x80002218]<br>0xF7FFFFAF|- rs1_val == -134217729<br> - imm_val == -80<br>                                                                                                  |[0x800000ca]:c.addi16sp 59<br> [0x800000cc]:sw sp, 20(ra)<br>  |
|   7|[0x8000221c]<br>0xFBFFFF6F|- rs1_val == -67108865<br> - imm_val == -144<br>                                                                                                  |[0x800000d8]:c.addi16sp 55<br> [0x800000da]:sw sp, 24(ra)<br>  |
|   8|[0x80002220]<br>0xFE0000EF|- rs1_val == -33554433<br>                                                                                                                        |[0x800000e6]:c.addi16sp 15<br> [0x800000e8]:sw sp, 28(ra)<br>  |
|   9|[0x80002224]<br>0xFEFFFF7F|- rs1_val == -16777217<br>                                                                                                                        |[0x800000f4]:c.addi16sp 56<br> [0x800000f6]:sw sp, 32(ra)<br>  |
|  10|[0x80002228]<br>0xFF7FFF8F|- rs1_val == -8388609<br>                                                                                                                         |[0x80000102]:c.addi16sp 57<br> [0x80000104]:sw sp, 36(ra)<br>  |
|  11|[0x8000222c]<br>0xFFC0003F|- rs1_val == -4194305<br> - imm_val == 64<br>                                                                                                     |[0x80000110]:c.addi16sp 4<br> [0x80000112]:sw sp, 40(ra)<br>   |
|  12|[0x80002230]<br>0xFFDFFE9F|- rs1_val == -2097153<br>                                                                                                                         |[0x8000011e]:c.addi16sp 42<br> [0x80000120]:sw sp, 44(ra)<br>  |
|  13|[0x80002234]<br>0xFFF0000F|- rs1_val == -1048577<br> - imm_val == 16<br>                                                                                                     |[0x8000012c]:c.addi16sp 1<br> [0x8000012e]:sw sp, 48(ra)<br>   |
|  14|[0x80002238]<br>0xFFF8000F|- rs1_val == -524289<br>                                                                                                                          |[0x8000013a]:c.addi16sp 1<br> [0x8000013c]:sw sp, 52(ra)<br>   |
|  15|[0x8000223c]<br>0xFFFBFEFF|- rs1_val == -262145<br>                                                                                                                          |[0x80000148]:c.addi16sp 48<br> [0x8000014a]:sw sp, 56(ra)<br>  |
|  16|[0x80002240]<br>0xFFFE014F|- rs1_val == -131073<br> - imm_val == 336<br>                                                                                                     |[0x80000156]:c.addi16sp 21<br> [0x80000158]:sw sp, 60(ra)<br>  |
|  17|[0x80002244]<br>0xFFFEFFAF|- rs1_val == -65537<br>                                                                                                                           |[0x80000164]:c.addi16sp 59<br> [0x80000166]:sw sp, 64(ra)<br>  |
|  18|[0x80002248]<br>0xFFFF803F|- rs1_val == -32769<br>                                                                                                                           |[0x80000172]:c.addi16sp 4<br> [0x80000174]:sw sp, 68(ra)<br>   |
|  19|[0x8000224c]<br>0xFFFFC04F|- rs1_val == -16385<br>                                                                                                                           |[0x80000180]:c.addi16sp 5<br> [0x80000182]:sw sp, 72(ra)<br>   |
|  20|[0x80002250]<br>0xFFFFDFBF|- rs1_val == -8193<br>                                                                                                                            |[0x8000018e]:c.addi16sp 60<br> [0x80000190]:sw sp, 76(ra)<br>  |
|  21|[0x80002254]<br>0xFFFFF07F|- rs1_val == -4097<br>                                                                                                                            |[0x8000019c]:c.addi16sp 8<br> [0x8000019e]:sw sp, 80(ra)<br>   |
|  22|[0x80002258]<br>0xFFFFF87F|- rs1_val == -2049<br>                                                                                                                            |[0x800001aa]:c.addi16sp 8<br> [0x800001ac]:sw sp, 84(ra)<br>   |
|  23|[0x8000225c]<br>0xFFFFFBEF|- rs1_val == -1025<br>                                                                                                                            |[0x800001b4]:c.addi16sp 63<br> [0x800001b6]:sw sp, 88(ra)<br>  |
|  24|[0x80002260]<br>0xFFFFFF4F|- rs1_val == -513<br>                                                                                                                             |[0x800001be]:c.addi16sp 21<br> [0x800001c0]:sw sp, 92(ra)<br>  |
|  25|[0x80002264]<br>0xFFFFFEDF|- rs1_val == -257<br> - imm_val == -32<br>                                                                                                        |[0x800001c8]:c.addi16sp 62<br> [0x800001ca]:sw sp, 96(ra)<br>  |
|  26|[0x80002268]<br>0xFFFFFF5F|- rs1_val == -129<br>                                                                                                                             |[0x800001d2]:c.addi16sp 62<br> [0x800001d4]:sw sp, 100(ra)<br> |
|  27|[0x8000226c]<br>0x0000004F|- rs1_val == -65<br>                                                                                                                              |[0x800001dc]:c.addi16sp 9<br> [0x800001de]:sw sp, 104(ra)<br>  |
|  28|[0x80002270]<br>0xFFFFFFEF|- rs1_val == -33<br>                                                                                                                              |[0x800001e6]:c.addi16sp 1<br> [0x800001e8]:sw sp, 108(ra)<br>  |
|  29|[0x80002274]<br>0xFFFFFE8F|- rs1_val == -17<br>                                                                                                                              |[0x800001f0]:c.addi16sp 42<br> [0x800001f2]:sw sp, 112(ra)<br> |
|  30|[0x80002278]<br>0xFFFFFF97|- rs1_val == -9<br>                                                                                                                               |[0x800001fa]:c.addi16sp 58<br> [0x800001fc]:sw sp, 116(ra)<br> |
|  31|[0x8000227c]<br>0xFFFFFEFB|- rs1_val == -5<br>                                                                                                                               |[0x80000204]:c.addi16sp 48<br> [0x80000206]:sw sp, 120(ra)<br> |
|  32|[0x80002280]<br>0xFFFFFF6D|- rs1_val == -3<br>                                                                                                                               |[0x8000020e]:c.addi16sp 55<br> [0x80000210]:sw sp, 124(ra)<br> |
|  33|[0x80002284]<br>0x0000006E|- rs1_val == -2<br>                                                                                                                               |[0x80000218]:c.addi16sp 7<br> [0x8000021a]:sw sp, 128(ra)<br>  |
|  34|[0x80002288]<br>0x004001F0|- imm_val == 496<br>                                                                                                                              |[0x80000222]:c.addi16sp 31<br> [0x80000224]:sw sp, 132(ra)<br> |
|  35|[0x8000228c]<br>0xFFFFFEEB|- imm_val == -272<br>                                                                                                                             |[0x8000022c]:c.addi16sp 47<br> [0x8000022e]:sw sp, 136(ra)<br> |
|  36|[0x80002290]<br>0xFFBFFFCF|- imm_val == -48<br>                                                                                                                              |[0x8000023a]:c.addi16sp 61<br> [0x8000023c]:sw sp, 140(ra)<br> |
|  37|[0x80002294]<br>0x7FFFFF60|- rs1_val == -2147483648<br> - rs1_val == (-2**(xlen-1))<br>                                                                                      |[0x80000244]:c.addi16sp 54<br> [0x80000246]:sw sp, 144(ra)<br> |
|  38|[0x80002298]<br>0x40000100|- rs1_val == 1073741824<br> - imm_val == 256<br>                                                                                                  |[0x8000024e]:c.addi16sp 16<br> [0x80000250]:sw sp, 148(ra)<br> |
|  39|[0x8000229c]<br>0x1FFFFFF0|- rs1_val == 536870912<br>                                                                                                                        |[0x80000258]:c.addi16sp 63<br> [0x8000025a]:sw sp, 152(ra)<br> |
|  40|[0x800022a0]<br>0x10000030|- rs1_val == 268435456<br>                                                                                                                        |[0x80000262]:c.addi16sp 3<br> [0x80000264]:sw sp, 156(ra)<br>  |
|  41|[0x800022a4]<br>0x07FFFF60|- rs1_val == 134217728<br>                                                                                                                        |[0x8000026c]:c.addi16sp 54<br> [0x8000026e]:sw sp, 160(ra)<br> |
|  42|[0x800022a8]<br>0x000000C0|- rs1_val == 64<br>                                                                                                                               |[0x80000276]:c.addi16sp 8<br> [0x80000278]:sw sp, 164(ra)<br>  |
|  43|[0x800022ac]<br>0x00000210|- rs1_val == 32<br>                                                                                                                               |[0x80000280]:c.addi16sp 31<br> [0x80000282]:sw sp, 168(ra)<br> |
|  44|[0x800022b0]<br>0x00000200|- rs1_val == 16<br>                                                                                                                               |[0x8000028a]:c.addi16sp 31<br> [0x8000028c]:sw sp, 172(ra)<br> |
|  45|[0x800022b4]<br>0x00000078|- rs1_val == 8<br>                                                                                                                                |[0x80000294]:c.addi16sp 7<br> [0x80000296]:sw sp, 176(ra)<br>  |
|  46|[0x800022b8]<br>0xFFFFFEF4|- rs1_val == 4<br>                                                                                                                                |[0x8000029e]:c.addi16sp 47<br> [0x800002a0]:sw sp, 180(ra)<br> |
|  47|[0x800022bc]<br>0xFFFFFFB2|- rs1_val == 2<br>                                                                                                                                |[0x800002a8]:c.addi16sp 59<br> [0x800002aa]:sw sp, 184(ra)<br> |
|  48|[0x800022c0]<br>0x00000051|- rs1_val == 1<br>                                                                                                                                |[0x800002b2]:c.addi16sp 5<br> [0x800002b4]:sw sp, 188(ra)<br>  |
|  49|[0x800022c4]<br>0x00000029|- imm_val == 32<br>                                                                                                                               |[0x800002bc]:c.addi16sp 2<br> [0x800002be]:sw sp, 192(ra)<br>  |
|  50|[0x800022c8]<br>0xAAAAAADA|- rs1_val == -1431655766<br>                                                                                                                      |[0x800002ca]:c.addi16sp 3<br> [0x800002cc]:sw sp, 196(ra)<br>  |
|  51|[0x800022cc]<br>0x555555B5|- rs1_val == 1431655765<br>                                                                                                                       |[0x800002d8]:c.addi16sp 6<br> [0x800002da]:sw sp, 200(ra)<br>  |
|  52|[0x800022d0]<br>0xFFFFFF00|- rs1_val == 0<br>                                                                                                                                |[0x800002e2]:c.addi16sp 48<br> [0x800002e4]:sw sp, 204(ra)<br> |
|  53|[0x800022d4]<br>0x00000080|- rs1_val == imm_val<br>                                                                                                                          |[0x800002ec]:c.addi16sp 4<br> [0x800002ee]:sw sp, 208(ra)<br>  |
|  54|[0x800022d8]<br>0x03FFFE00|- rs1_val == 67108864<br>                                                                                                                         |[0x800002f6]:c.addi16sp 32<br> [0x800002f8]:sw sp, 212(ra)<br> |
|  55|[0x800022dc]<br>0x01FFFE00|- rs1_val == 33554432<br>                                                                                                                         |[0x80000300]:c.addi16sp 32<br> [0x80000302]:sw sp, 216(ra)<br> |
|  56|[0x800022e0]<br>0x00FFFFC0|- rs1_val == 16777216<br>                                                                                                                         |[0x8000030a]:c.addi16sp 60<br> [0x8000030c]:sw sp, 220(ra)<br> |
|  57|[0x800022e4]<br>0x00800010|- rs1_val == 8388608<br>                                                                                                                          |[0x80000314]:c.addi16sp 1<br> [0x80000316]:sw sp, 224(ra)<br>  |
|  58|[0x800022e8]<br>0x00200020|- rs1_val == 2097152<br>                                                                                                                          |[0x8000031e]:c.addi16sp 2<br> [0x80000320]:sw sp, 228(ra)<br>  |
|  59|[0x800022ec]<br>0x00100090|- rs1_val == 1048576<br>                                                                                                                          |[0x80000328]:c.addi16sp 9<br> [0x8000032a]:sw sp, 232(ra)<br>  |
|  60|[0x800022f0]<br>0x00080050|- rs1_val == 524288<br>                                                                                                                           |[0x80000332]:c.addi16sp 5<br> [0x80000334]:sw sp, 236(ra)<br>  |
|  61|[0x800022f4]<br>0x0003FEA0|- rs1_val == 262144<br>                                                                                                                           |[0x8000033c]:c.addi16sp 42<br> [0x8000033e]:sw sp, 240(ra)<br> |
|  62|[0x800022f8]<br>0x0001FF60|- rs1_val == 131072<br>                                                                                                                           |[0x80000346]:c.addi16sp 54<br> [0x80000348]:sw sp, 244(ra)<br> |
|  63|[0x800022fc]<br>0x00010150|- rs1_val == 65536<br>                                                                                                                            |[0x80000350]:c.addi16sp 21<br> [0x80000352]:sw sp, 248(ra)<br> |
|  64|[0x80002300]<br>0x000081F0|- rs1_val == 32768<br>                                                                                                                            |[0x8000035a]:c.addi16sp 31<br> [0x8000035c]:sw sp, 252(ra)<br> |
|  65|[0x80002304]<br>0x00004040|- rs1_val == 16384<br>                                                                                                                            |[0x80000364]:c.addi16sp 4<br> [0x80000366]:sw sp, 256(ra)<br>  |
|  66|[0x80002308]<br>0x00002080|- rs1_val == 8192<br>                                                                                                                             |[0x8000036e]:c.addi16sp 8<br> [0x80000370]:sw sp, 260(ra)<br>  |
|  67|[0x8000230c]<br>0x000011F0|- rs1_val == 4096<br>                                                                                                                             |[0x80000378]:c.addi16sp 31<br> [0x8000037a]:sw sp, 264(ra)<br> |
|  68|[0x80002310]<br>0x00000900|- rs1_val == 2048<br>                                                                                                                             |[0x80000386]:c.addi16sp 16<br> [0x80000388]:sw sp, 268(ra)<br> |
|  69|[0x80002314]<br>0x000005F0|- rs1_val == 1024<br>                                                                                                                             |[0x80000390]:c.addi16sp 31<br> [0x80000392]:sw sp, 272(ra)<br> |
|  70|[0x80002318]<br>0x00000350|- rs1_val == 512<br>                                                                                                                              |[0x8000039a]:c.addi16sp 21<br> [0x8000039c]:sw sp, 276(ra)<br> |
|  71|[0x8000231c]<br>0x000002F0|- rs1_val == 256<br>                                                                                                                              |[0x800003a4]:c.addi16sp 31<br> [0x800003a6]:sw sp, 280(ra)<br> |
|  72|[0x80002320]<br>0x000000B0|- rs1_val == 128<br>                                                                                                                              |[0x800003ae]:c.addi16sp 3<br> [0x800003b0]:sw sp, 284(ra)<br>  |
