
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
| SIG_REGION                | [('0x80002010', '0x80002130', '72 words')]      |
| COV_LABELS                | caddi16sp      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/caddi16sp-01.S/caddi16sp-01.S    |
| Total Number of coverpoints| 91     |
| Total Coverpoints Hit     | 91      |
| Total Signature Updates   | 69      |
| STAT1                     | 69      |
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
|   1|[0x80002010]<br>0x00000020|- opcode : c.addi16sp<br> - rd : x2<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 16<br> - imm_val == 16<br> |[0x80000104]:c.addi16sp 1<br> [0x80000106]:sw sp, 0(ra)<br>    |
|   2|[0x80002014]<br>0xAAAAAA7A|- rs1_val != imm_val<br> - rs1_val < 0 and imm_val < 0<br> - rs1_val == -1431655766<br> - imm_val == -48<br>                               |[0x80000112]:c.addi16sp 61<br> [0x80000114]:sw sp, 4(ra)<br>   |
|   3|[0x80002018]<br>0x3FFFFFDF|- rs1_val > 0 and imm_val < 0<br> - imm_val == -32<br>                                                                                     |[0x80000120]:c.addi16sp 62<br> [0x80000122]:sw sp, 8(ra)<br>   |
|   4|[0x8000201c]<br>0x0000005F|- rs1_val < 0 and imm_val > 0<br> - rs1_val == -17<br>                                                                                     |[0x8000012a]:c.addi16sp 7<br> [0x8000012c]:sw sp, 12(ra)<br>   |
|   5|[0x80002020]<br>0x7FFFFFA0|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                                                                               |[0x80000134]:c.addi16sp 58<br> [0x80000136]:sw sp, 16(ra)<br>  |
|   6|[0x80002024]<br>0x000001F0|- rs1_val == 0<br> - imm_val == 496<br>                                                                                                    |[0x8000013e]:c.addi16sp 31<br> [0x80000140]:sw sp, 20(ra)<br>  |
|   7|[0x80002028]<br>0x8000002F|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                                               |[0x8000014c]:c.addi16sp 3<br> [0x8000014e]:sw sp, 24(ra)<br>   |
|   8|[0x8000202c]<br>0xFFFFFE01|- rs1_val == 1<br> - imm_val == -512<br>                                                                                                   |[0x80000156]:c.addi16sp 32<br> [0x80000158]:sw sp, 28(ra)<br>  |
|   9|[0x80002030]<br>0xFFFFFFF2|- rs1_val == 2<br>                                                                                                                         |[0x80000160]:c.addi16sp 63<br> [0x80000162]:sw sp, 32(ra)<br>  |
|  10|[0x80002034]<br>0x00000044|- rs1_val == 4<br> - imm_val == 64<br>                                                                                                     |[0x8000016a]:c.addi16sp 4<br> [0x8000016c]:sw sp, 36(ra)<br>   |
|  11|[0x80002038]<br>0xFFFFFFC8|- rs1_val == 8<br>                                                                                                                         |[0x80000174]:c.addi16sp 60<br> [0x80000176]:sw sp, 40(ra)<br>  |
|  12|[0x8000203c]<br>0xFFFFFEC0|- rs1_val == 32<br> - imm_val == -352<br>                                                                                                  |[0x8000017e]:c.addi16sp 42<br> [0x80000180]:sw sp, 44(ra)<br>  |
|  13|[0x80002040]<br>0x00000060|- rs1_val == 64<br> - imm_val == 32<br>                                                                                                    |[0x80000188]:c.addi16sp 2<br> [0x8000018a]:sw sp, 48(ra)<br>   |
|  14|[0x80002044]<br>0x00000270|- rs1_val == 128<br>                                                                                                                       |[0x80000192]:c.addi16sp 31<br> [0x80000194]:sw sp, 52(ra)<br>  |
|  15|[0x80002048]<br>0x00000070|- rs1_val == 256<br> - imm_val == -144<br>                                                                                                 |[0x8000019c]:c.addi16sp 55<br> [0x8000019e]:sw sp, 56(ra)<br>  |
|  16|[0x8000204c]<br>0x000001D0|- rs1_val == 512<br>                                                                                                                       |[0x800001a6]:c.addi16sp 61<br> [0x800001a8]:sw sp, 60(ra)<br>  |
|  17|[0x80002050]<br>0x00000490|- rs1_val == 1024<br>                                                                                                                      |[0x800001b0]:c.addi16sp 9<br> [0x800001b2]:sw sp, 64(ra)<br>   |
|  18|[0x80002054]<br>0x00000840|- rs1_val == 2048<br>                                                                                                                      |[0x800001be]:c.addi16sp 4<br> [0x800001c0]:sw sp, 68(ra)<br>   |
|  19|[0x80002058]<br>0x00000F90|- rs1_val == 4096<br>                                                                                                                      |[0x800001c8]:c.addi16sp 57<br> [0x800001ca]:sw sp, 72(ra)<br>  |
|  20|[0x8000205c]<br>0x00001FD0|- rs1_val == 8192<br>                                                                                                                      |[0x800001d2]:c.addi16sp 61<br> [0x800001d4]:sw sp, 76(ra)<br>  |
|  21|[0x80002060]<br>0x00003FC0|- rs1_val == 16384<br>                                                                                                                     |[0x800001dc]:c.addi16sp 60<br> [0x800001de]:sw sp, 80(ra)<br>  |
|  22|[0x80002064]<br>0x00007FB0|- rs1_val == 32768<br> - imm_val == -80<br>                                                                                                |[0x800001e6]:c.addi16sp 59<br> [0x800001e8]:sw sp, 84(ra)<br>  |
|  23|[0x80002068]<br>0x000101F0|- rs1_val == 65536<br>                                                                                                                     |[0x800001f0]:c.addi16sp 31<br> [0x800001f2]:sw sp, 88(ra)<br>  |
|  24|[0x8000206c]<br>0x00020060|- rs1_val == 131072<br>                                                                                                                    |[0x800001fa]:c.addi16sp 6<br> [0x800001fc]:sw sp, 92(ra)<br>   |
|  25|[0x80002070]<br>0x00040030|- rs1_val == 262144<br>                                                                                                                    |[0x80000204]:c.addi16sp 3<br> [0x80000206]:sw sp, 96(ra)<br>   |
|  26|[0x80002074]<br>0x0007FF80|- rs1_val == 524288<br>                                                                                                                    |[0x8000020e]:c.addi16sp 56<br> [0x80000210]:sw sp, 100(ra)<br> |
|  27|[0x80002078]<br>0x00100080|- rs1_val == 1048576<br> - imm_val == 128<br>                                                                                              |[0x80000218]:c.addi16sp 8<br> [0x8000021a]:sw sp, 104(ra)<br>  |
|  28|[0x8000207c]<br>0x001FFEF0|- rs1_val == 2097152<br> - imm_val == -272<br>                                                                                             |[0x80000222]:c.addi16sp 47<br> [0x80000224]:sw sp, 108(ra)<br> |
|  29|[0x80002080]<br>0x004001F0|- rs1_val == 4194304<br>                                                                                                                   |[0x8000022c]:c.addi16sp 31<br> [0x8000022e]:sw sp, 112(ra)<br> |
|  30|[0x80002084]<br>0x007FFF90|- rs1_val == 8388608<br>                                                                                                                   |[0x80000236]:c.addi16sp 57<br> [0x80000238]:sw sp, 116(ra)<br> |
|  31|[0x80002088]<br>0x010000F0|- rs1_val == 16777216<br>                                                                                                                  |[0x80000240]:c.addi16sp 15<br> [0x80000242]:sw sp, 120(ra)<br> |
|  32|[0x8000208c]<br>0x02000010|- rs1_val == 33554432<br>                                                                                                                  |[0x8000024a]:c.addi16sp 1<br> [0x8000024c]:sw sp, 124(ra)<br>  |
|  33|[0x80002090]<br>0x04000070|- rs1_val == 67108864<br>                                                                                                                  |[0x80000254]:c.addi16sp 7<br> [0x80000256]:sw sp, 128(ra)<br>  |
|  34|[0x80002094]<br>0x07FFFEA0|- rs1_val == 134217728<br>                                                                                                                 |[0x8000025e]:c.addi16sp 42<br> [0x80000260]:sw sp, 132(ra)<br> |
|  35|[0x80002098]<br>0x0FFFFFB0|- rs1_val == 268435456<br>                                                                                                                 |[0x80000268]:c.addi16sp 59<br> [0x8000026a]:sw sp, 136(ra)<br> |
|  36|[0x8000209c]<br>0x20000020|- rs1_val == 536870912<br>                                                                                                                 |[0x80000272]:c.addi16sp 2<br> [0x80000274]:sw sp, 140(ra)<br>  |
|  37|[0x800020a0]<br>0x40000070|- rs1_val == 1073741824<br>                                                                                                                |[0x8000027c]:c.addi16sp 7<br> [0x8000027e]:sw sp, 144(ra)<br>  |
|  38|[0x800020a4]<br>0xFFFFFEEE|- rs1_val == -2<br>                                                                                                                        |[0x80000286]:c.addi16sp 47<br> [0x80000288]:sw sp, 148(ra)<br> |
|  39|[0x800020a8]<br>0x000000ED|- rs1_val == -3<br>                                                                                                                        |[0x80000290]:c.addi16sp 15<br> [0x80000292]:sw sp, 152(ra)<br> |
|  40|[0x800020ac]<br>0xFFDFFFEF|- rs1_val == -2097153<br>                                                                                                                  |[0x8000029e]:c.addi16sp 63<br> [0x800002a0]:sw sp, 156(ra)<br> |
|  41|[0x800020b0]<br>0xFFC000FF|- rs1_val == -4194305<br> - imm_val == 256<br>                                                                                             |[0x800002ac]:c.addi16sp 16<br> [0x800002ae]:sw sp, 160(ra)<br> |
|  42|[0x800020b4]<br>0xFF7FFFBF|- rs1_val == -8388609<br>                                                                                                                  |[0x800002ba]:c.addi16sp 60<br> [0x800002bc]:sw sp, 164(ra)<br> |
|  43|[0x800020b8]<br>0xFF00001F|- rs1_val == -16777217<br>                                                                                                                 |[0x800002c8]:c.addi16sp 2<br> [0x800002ca]:sw sp, 168(ra)<br>  |
|  44|[0x800020bc]<br>0xFDFFFFCF|- rs1_val == -33554433<br>                                                                                                                 |[0x800002d6]:c.addi16sp 61<br> [0x800002d8]:sw sp, 172(ra)<br> |
|  45|[0x800020c0]<br>0xFBFFFFEF|- rs1_val == -67108865<br>                                                                                                                 |[0x800002e4]:c.addi16sp 63<br> [0x800002e6]:sw sp, 176(ra)<br> |
|  46|[0x800020c4]<br>0xF7FFFEFF|- rs1_val == -134217729<br>                                                                                                                |[0x800002f2]:c.addi16sp 48<br> [0x800002f4]:sw sp, 180(ra)<br> |
|  47|[0x800020c8]<br>0xF000001F|- rs1_val == -268435457<br>                                                                                                                |[0x80000300]:c.addi16sp 2<br> [0x80000302]:sw sp, 184(ra)<br>  |
|  48|[0x800020cc]<br>0xDFFFFEFF|- rs1_val == -536870913<br>                                                                                                                |[0x8000030e]:c.addi16sp 48<br> [0x80000310]:sw sp, 188(ra)<br> |
|  49|[0x800020d0]<br>0xBFFFFFEF|- rs1_val == -1073741825<br>                                                                                                               |[0x8000031c]:c.addi16sp 63<br> [0x8000031e]:sw sp, 192(ra)<br> |
|  50|[0x800020d4]<br>0x555555E5|- rs1_val == 1431655765<br>                                                                                                                |[0x8000032a]:c.addi16sp 9<br> [0x8000032c]:sw sp, 196(ra)<br>  |
|  51|[0x800020d8]<br>0x00000148|- imm_val == 336<br>                                                                                                                       |[0x80000334]:c.addi16sp 21<br> [0x80000336]:sw sp, 200(ra)<br> |
|  52|[0x800020dc]<br>0xFFFFFF8B|- rs1_val == -5<br>                                                                                                                        |[0x8000033e]:c.addi16sp 57<br> [0x80000340]:sw sp, 204(ra)<br> |
|  53|[0x800020e0]<br>0xFFFFFF77|- rs1_val == -9<br>                                                                                                                        |[0x80000348]:c.addi16sp 56<br> [0x8000034a]:sw sp, 208(ra)<br> |
|  54|[0x800020e4]<br>0xFFFFFE7F|- rs1_val == -33<br>                                                                                                                       |[0x80000352]:c.addi16sp 42<br> [0x80000354]:sw sp, 212(ra)<br> |
|  55|[0x800020e8]<br>0xFFFFFFCF|- rs1_val == -65<br>                                                                                                                       |[0x8000035c]:c.addi16sp 1<br> [0x8000035e]:sw sp, 216(ra)<br>  |
|  56|[0x800020ec]<br>0xFFFFFF2F|- rs1_val == -129<br>                                                                                                                      |[0x80000366]:c.addi16sp 59<br> [0x80000368]:sw sp, 220(ra)<br> |
|  57|[0x800020f0]<br>0xFFFFFF3F|- rs1_val == -257<br>                                                                                                                      |[0x80000370]:c.addi16sp 4<br> [0x80000372]:sw sp, 224(ra)<br>  |
|  58|[0x800020f4]<br>0xFFFFFEFF|- rs1_val == -513<br>                                                                                                                      |[0x8000037a]:c.addi16sp 16<br> [0x8000037c]:sw sp, 228(ra)<br> |
|  59|[0x800020f8]<br>0xFFFFFC3F|- rs1_val == -1025<br>                                                                                                                     |[0x80000384]:c.addi16sp 4<br> [0x80000386]:sw sp, 232(ra)<br>  |
|  60|[0x800020fc]<br>0xFFFFF7CF|- rs1_val == -2049<br>                                                                                                                     |[0x80000392]:c.addi16sp 61<br> [0x80000394]:sw sp, 236(ra)<br> |
|  61|[0x80002100]<br>0xFFFFF05F|- rs1_val == -4097<br>                                                                                                                     |[0x800003a0]:c.addi16sp 6<br> [0x800003a2]:sw sp, 240(ra)<br>  |
|  62|[0x80002104]<br>0xFFFFE04F|- rs1_val == -8193<br>                                                                                                                     |[0x800003ae]:c.addi16sp 5<br> [0x800003b0]:sw sp, 244(ra)<br>  |
|  63|[0x80002108]<br>0xFFFFBFCF|- rs1_val == -16385<br>                                                                                                                    |[0x800003bc]:c.addi16sp 61<br> [0x800003be]:sw sp, 248(ra)<br> |
|  64|[0x8000210c]<br>0xFFFF80EF|- rs1_val == -32769<br>                                                                                                                    |[0x800003ca]:c.addi16sp 15<br> [0x800003cc]:sw sp, 252(ra)<br> |
|  65|[0x80002110]<br>0xFFFEFF7F|- rs1_val == -65537<br>                                                                                                                    |[0x800003d8]:c.addi16sp 56<br> [0x800003da]:sw sp, 256(ra)<br> |
|  66|[0x80002114]<br>0xFFFDFFCF|- rs1_val == -131073<br>                                                                                                                   |[0x800003e6]:c.addi16sp 61<br> [0x800003e8]:sw sp, 260(ra)<br> |
|  67|[0x80002118]<br>0xFFFC008F|- rs1_val == -262145<br>                                                                                                                   |[0x800003f4]:c.addi16sp 9<br> [0x800003f6]:sw sp, 264(ra)<br>  |
|  68|[0x8000211c]<br>0xFFF7FF7F|- rs1_val == -524289<br>                                                                                                                   |[0x80000402]:c.addi16sp 56<br> [0x80000404]:sw sp, 268(ra)<br> |
|  69|[0x80002120]<br>0xFFEFFEFF|- rs1_val == -1048577<br>                                                                                                                  |[0x80000410]:c.addi16sp 48<br> [0x80000412]:sw sp, 272(ra)<br> |
