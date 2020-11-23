
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
|   1|[0x80002010]<br>0x00000080|- opcode : c.addi16sp<br> - rd : x2<br> - rs1_val == imm_val<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 64<br> - imm_val == 64<br> |[0x80000104]:c.addi16sp 4<br> [0x80000106]:sw sp, 0(ra)<br>    |
|   2|[0x80002014]<br>0x00008040|- rs1_val != imm_val<br> - rs1_val == 32768<br>                                                                                            |[0x8000010e]:c.addi16sp 4<br> [0x80000110]:sw sp, 4(ra)<br>    |
|   3|[0x80002018]<br>0x00FFFEF0|- rs1_val > 0 and imm_val < 0<br> - rs1_val == 16777216<br> - imm_val == -272<br>                                                          |[0x80000118]:c.addi16sp 47<br> [0x8000011a]:sw sp, 8(ra)<br>   |
|   4|[0x8000201c]<br>0x00000048|- rs1_val < 0 and imm_val > 0<br>                                                                                                          |[0x80000122]:c.addi16sp 5<br> [0x80000124]:sw sp, 12(ra)<br>   |
|   5|[0x80002020]<br>0xFF7FFFEF|- rs1_val < 0 and imm_val < 0<br> - rs1_val == -8388609<br>                                                                                |[0x80000130]:c.addi16sp 63<br> [0x80000132]:sw sp, 16(ra)<br>  |
|   6|[0x80002024]<br>0x7FFFFE00|- rs1_val == (-2**(xlen-1))<br> - imm_val == -512<br> - rs1_val == -2147483648<br>                                                         |[0x8000013a]:c.addi16sp 32<br> [0x8000013c]:sw sp, 20(ra)<br>  |
|   7|[0x80002028]<br>0xFFFFFEA0|- rs1_val == 0<br> - imm_val == -352<br>                                                                                                   |[0x80000144]:c.addi16sp 42<br> [0x80000146]:sw sp, 24(ra)<br>  |
|   8|[0x8000202c]<br>0x800001EF|- rs1_val == (2**(xlen-1)-1)<br> - imm_val == 496<br> - rs1_val == 2147483647<br>                                                          |[0x80000152]:c.addi16sp 31<br> [0x80000154]:sw sp, 28(ra)<br>  |
|   9|[0x80002030]<br>0xFFFFFFD1|- rs1_val == 1<br> - imm_val == -48<br>                                                                                                    |[0x8000015c]:c.addi16sp 61<br> [0x8000015e]:sw sp, 32(ra)<br>  |
|  10|[0x80002034]<br>0x00000022|- rs1_val == 2<br> - imm_val == 32<br>                                                                                                     |[0x80000166]:c.addi16sp 2<br> [0x80000168]:sw sp, 36(ra)<br>   |
|  11|[0x80002038]<br>0xFFFFFF04|- rs1_val == 4<br>                                                                                                                         |[0x80000170]:c.addi16sp 48<br> [0x80000172]:sw sp, 40(ra)<br>  |
|  12|[0x8000203c]<br>0x00000108|- rs1_val == 8<br> - imm_val == 256<br>                                                                                                    |[0x8000017a]:c.addi16sp 16<br> [0x8000017c]:sw sp, 44(ra)<br>  |
|  13|[0x80002040]<br>0xFFFFFF70|- rs1_val == 16<br>                                                                                                                        |[0x80000184]:c.addi16sp 54<br> [0x80000186]:sw sp, 48(ra)<br>  |
|  14|[0x80002044]<br>0x000000B0|- rs1_val == 32<br>                                                                                                                        |[0x8000018e]:c.addi16sp 9<br> [0x80000190]:sw sp, 52(ra)<br>   |
|  15|[0x80002048]<br>0x000000B0|- rs1_val == 128<br>                                                                                                                       |[0x80000198]:c.addi16sp 3<br> [0x8000019a]:sw sp, 56(ra)<br>   |
|  16|[0x8000204c]<br>0x000001F0|- rs1_val == 256<br>                                                                                                                       |[0x800001a2]:c.addi16sp 15<br> [0x800001a4]:sw sp, 60(ra)<br>  |
|  17|[0x80002050]<br>0x00000280|- rs1_val == 512<br> - imm_val == 128<br>                                                                                                  |[0x800001ac]:c.addi16sp 8<br> [0x800001ae]:sw sp, 64(ra)<br>   |
|  18|[0x80002054]<br>0x00000440|- rs1_val == 1024<br>                                                                                                                      |[0x800001b6]:c.addi16sp 4<br> [0x800001b8]:sw sp, 68(ra)<br>   |
|  19|[0x80002058]<br>0x000009F0|- rs1_val == 2048<br>                                                                                                                      |[0x800001c4]:c.addi16sp 31<br> [0x800001c6]:sw sp, 72(ra)<br>  |
|  20|[0x8000205c]<br>0x00000FA0|- rs1_val == 4096<br>                                                                                                                      |[0x800001ce]:c.addi16sp 58<br> [0x800001d0]:sw sp, 76(ra)<br>  |
|  21|[0x80002060]<br>0x00001E00|- rs1_val == 8192<br>                                                                                                                      |[0x800001d8]:c.addi16sp 32<br> [0x800001da]:sw sp, 80(ra)<br>  |
|  22|[0x80002064]<br>0x00003FC0|- rs1_val == 16384<br>                                                                                                                     |[0x800001e2]:c.addi16sp 60<br> [0x800001e4]:sw sp, 84(ra)<br>  |
|  23|[0x80002068]<br>0x00010060|- rs1_val == 65536<br>                                                                                                                     |[0x800001ec]:c.addi16sp 6<br> [0x800001ee]:sw sp, 88(ra)<br>   |
|  24|[0x8000206c]<br>0x00020080|- rs1_val == 131072<br>                                                                                                                    |[0x800001f6]:c.addi16sp 8<br> [0x800001f8]:sw sp, 92(ra)<br>   |
|  25|[0x80002070]<br>0x0003FFD0|- rs1_val == 262144<br>                                                                                                                    |[0x80000200]:c.addi16sp 61<br> [0x80000202]:sw sp, 96(ra)<br>  |
|  26|[0x80002074]<br>0x000801F0|- rs1_val == 524288<br>                                                                                                                    |[0x8000020a]:c.addi16sp 31<br> [0x8000020c]:sw sp, 100(ra)<br> |
|  27|[0x80002078]<br>0x00100150|- rs1_val == 1048576<br> - imm_val == 336<br>                                                                                              |[0x80000214]:c.addi16sp 21<br> [0x80000216]:sw sp, 104(ra)<br> |
|  28|[0x8000207c]<br>0x001FFFB0|- rs1_val == 2097152<br> - imm_val == -80<br>                                                                                              |[0x8000021e]:c.addi16sp 59<br> [0x80000220]:sw sp, 108(ra)<br> |
|  29|[0x80002080]<br>0x004001F0|- rs1_val == 4194304<br>                                                                                                                   |[0x80000228]:c.addi16sp 31<br> [0x8000022a]:sw sp, 112(ra)<br> |
|  30|[0x80002084]<br>0x00800010|- rs1_val == 8388608<br> - imm_val == 16<br>                                                                                               |[0x80000232]:c.addi16sp 1<br> [0x80000234]:sw sp, 116(ra)<br>  |
|  31|[0x80002088]<br>0x02000070|- rs1_val == 33554432<br>                                                                                                                  |[0x8000023c]:c.addi16sp 7<br> [0x8000023e]:sw sp, 120(ra)<br>  |
|  32|[0x8000208c]<br>0x03FFFF60|- rs1_val == 67108864<br>                                                                                                                  |[0x80000246]:c.addi16sp 54<br> [0x80000248]:sw sp, 124(ra)<br> |
|  33|[0x80002090]<br>0x07FFFF60|- rs1_val == 134217728<br>                                                                                                                 |[0x80000250]:c.addi16sp 54<br> [0x80000252]:sw sp, 128(ra)<br> |
|  34|[0x80002094]<br>0x0FFFFFF0|- rs1_val == 268435456<br>                                                                                                                 |[0x8000025a]:c.addi16sp 63<br> [0x8000025c]:sw sp, 132(ra)<br> |
|  35|[0x80002098]<br>0x1FFFFFB0|- rs1_val == 536870912<br>                                                                                                                 |[0x80000264]:c.addi16sp 59<br> [0x80000266]:sw sp, 136(ra)<br> |
|  36|[0x8000209c]<br>0x40000040|- rs1_val == 1073741824<br>                                                                                                                |[0x8000026e]:c.addi16sp 4<br> [0x80000270]:sw sp, 140(ra)<br>  |
|  37|[0x800020a0]<br>0x000000EE|- rs1_val == -2<br>                                                                                                                        |[0x80000278]:c.addi16sp 15<br> [0x8000027a]:sw sp, 144(ra)<br> |
|  38|[0x800020a4]<br>0x000001ED|- rs1_val == -3<br>                                                                                                                        |[0x80000282]:c.addi16sp 31<br> [0x80000284]:sw sp, 148(ra)<br> |
|  39|[0x800020a8]<br>0xFFFFFF5B|- rs1_val == -5<br>                                                                                                                        |[0x8000028c]:c.addi16sp 54<br> [0x8000028e]:sw sp, 152(ra)<br> |
|  40|[0x800020ac]<br>0xFFDFFFCF|- rs1_val == -2097153<br>                                                                                                                  |[0x8000029a]:c.addi16sp 61<br> [0x8000029c]:sw sp, 156(ra)<br> |
|  41|[0x800020b0]<br>0xFFC0007F|- rs1_val == -4194305<br>                                                                                                                  |[0x800002a8]:c.addi16sp 8<br> [0x800002aa]:sw sp, 160(ra)<br>  |
|  42|[0x800020b4]<br>0xFEFFFF9F|- rs1_val == -16777217<br>                                                                                                                 |[0x800002b6]:c.addi16sp 58<br> [0x800002b8]:sw sp, 164(ra)<br> |
|  43|[0x800020b8]<br>0xFE00008F|- rs1_val == -33554433<br>                                                                                                                 |[0x800002c4]:c.addi16sp 9<br> [0x800002c6]:sw sp, 168(ra)<br>  |
|  44|[0x800020bc]<br>0xFBFFFFCF|- rs1_val == -67108865<br>                                                                                                                 |[0x800002d2]:c.addi16sp 61<br> [0x800002d4]:sw sp, 172(ra)<br> |
|  45|[0x800020c0]<br>0xF7FFFEFF|- rs1_val == -134217729<br>                                                                                                                |[0x800002e0]:c.addi16sp 48<br> [0x800002e2]:sw sp, 176(ra)<br> |
|  46|[0x800020c4]<br>0xEFFFFF5F|- rs1_val == -268435457<br>                                                                                                                |[0x800002ee]:c.addi16sp 54<br> [0x800002f0]:sw sp, 180(ra)<br> |
|  47|[0x800020c8]<br>0xE000005F|- rs1_val == -536870913<br>                                                                                                                |[0x800002fc]:c.addi16sp 6<br> [0x800002fe]:sw sp, 184(ra)<br>  |
|  48|[0x800020cc]<br>0xC000014F|- rs1_val == -1073741825<br>                                                                                                               |[0x8000030a]:c.addi16sp 21<br> [0x8000030c]:sw sp, 188(ra)<br> |
|  49|[0x800020d0]<br>0x555555B5|- rs1_val == 1431655765<br>                                                                                                                |[0x80000318]:c.addi16sp 6<br> [0x8000031a]:sw sp, 192(ra)<br>  |
|  50|[0x800020d4]<br>0xAAAAAA4A|- rs1_val == -1431655766<br>                                                                                                               |[0x80000326]:c.addi16sp 58<br> [0x80000328]:sw sp, 196(ra)<br> |
|  51|[0x800020d8]<br>0x55555535|- imm_val == -32<br>                                                                                                                       |[0x80000334]:c.addi16sp 62<br> [0x80000336]:sw sp, 200(ra)<br> |
|  52|[0x800020dc]<br>0xFFFFF76F|- rs1_val == -2049<br> - imm_val == -144<br>                                                                                               |[0x80000342]:c.addi16sp 55<br> [0x80000344]:sw sp, 204(ra)<br> |
|  53|[0x800020e0]<br>0xFFFFFDF7|- rs1_val == -9<br>                                                                                                                        |[0x8000034c]:c.addi16sp 32<br> [0x8000034e]:sw sp, 208(ra)<br> |
|  54|[0x800020e4]<br>0xFFFFFEDF|- rs1_val == -17<br>                                                                                                                       |[0x80000356]:c.addi16sp 47<br> [0x80000358]:sw sp, 212(ra)<br> |
|  55|[0x800020e8]<br>0xFFFFFECF|- rs1_val == -33<br>                                                                                                                       |[0x80000360]:c.addi16sp 47<br> [0x80000362]:sw sp, 216(ra)<br> |
|  56|[0x800020ec]<br>0xFFFFFF9F|- rs1_val == -65<br>                                                                                                                       |[0x8000036a]:c.addi16sp 62<br> [0x8000036c]:sw sp, 220(ra)<br> |
|  57|[0x800020f0]<br>0xFFFFFFDF|- rs1_val == -129<br>                                                                                                                      |[0x80000374]:c.addi16sp 6<br> [0x80000376]:sw sp, 224(ra)<br>  |
|  58|[0x800020f4]<br>0xFFFFFF4F|- rs1_val == -257<br>                                                                                                                      |[0x8000037e]:c.addi16sp 5<br> [0x80000380]:sw sp, 228(ra)<br>  |
|  59|[0x800020f8]<br>0xFFFFFE5F|- rs1_val == -513<br>                                                                                                                      |[0x80000388]:c.addi16sp 6<br> [0x8000038a]:sw sp, 232(ra)<br>  |
|  60|[0x800020fc]<br>0xFFFFFB9F|- rs1_val == -1025<br>                                                                                                                     |[0x80000392]:c.addi16sp 58<br> [0x80000394]:sw sp, 236(ra)<br> |
|  61|[0x80002100]<br>0xFFFFF05F|- rs1_val == -4097<br>                                                                                                                     |[0x800003a0]:c.addi16sp 6<br> [0x800003a2]:sw sp, 240(ra)<br>  |
|  62|[0x80002104]<br>0xFFFFE02F|- rs1_val == -8193<br>                                                                                                                     |[0x800003ae]:c.addi16sp 3<br> [0x800003b0]:sw sp, 244(ra)<br>  |
|  63|[0x80002108]<br>0xFFFFBFEF|- rs1_val == -16385<br>                                                                                                                    |[0x800003bc]:c.addi16sp 63<br> [0x800003be]:sw sp, 248(ra)<br> |
|  64|[0x8000210c]<br>0xFFFF7F5F|- rs1_val == -32769<br>                                                                                                                    |[0x800003ca]:c.addi16sp 54<br> [0x800003cc]:sw sp, 252(ra)<br> |
|  65|[0x80002110]<br>0xFFFF002F|- rs1_val == -65537<br>                                                                                                                    |[0x800003d8]:c.addi16sp 3<br> [0x800003da]:sw sp, 256(ra)<br>  |
|  66|[0x80002114]<br>0xFFFDFEEF|- rs1_val == -131073<br>                                                                                                                   |[0x800003e6]:c.addi16sp 47<br> [0x800003e8]:sw sp, 260(ra)<br> |
|  67|[0x80002118]<br>0xFFFBFEFF|- rs1_val == -262145<br>                                                                                                                   |[0x800003f4]:c.addi16sp 48<br> [0x800003f6]:sw sp, 264(ra)<br> |
|  68|[0x8000211c]<br>0xFFF7FF5F|- rs1_val == -524289<br>                                                                                                                   |[0x80000402]:c.addi16sp 54<br> [0x80000404]:sw sp, 268(ra)<br> |
|  69|[0x80002120]<br>0xFFEFFF5F|- rs1_val == -1048577<br>                                                                                                                  |[0x80000410]:c.addi16sp 54<br> [0x80000412]:sw sp, 272(ra)<br> |
