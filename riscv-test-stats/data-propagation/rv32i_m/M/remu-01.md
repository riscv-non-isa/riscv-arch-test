
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800008b0')]      |
| SIG_REGION                | [('0x80003204', '0x800033a8', '105 words')]      |
| COV_LABELS                | remu      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/remu-01.S/remu-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 105      |
| STAT1                     | 103      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000884]:remu a2, a0, a1
      [0x80000888]:sw a2, 340(ra)
 -- Signature Address: 0x8000339c Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - opcode : remu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs1_val == 1
      - rs2_val == 8




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008a8]:remu a2, a0, a1
      [0x800008ac]:sw a2, 348(ra)
 -- Signature Address: 0x800033a4 Data: 0x00100000
 -- Redundant Coverpoints hit by the op
      - opcode : remu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs1_val == 1048576






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

|s.no|        signature         |                                                                                                                                 coverpoints                                                                                                                                  |                                code                                |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000000|- opcode : remu<br> - rs1 : x16<br> - rs2 : x5<br> - rd : x16<br> - rs1 == rd != rs2<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br> - rs2_val == (-2**(xlen-1))<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -2147483648<br> |[0x80000108]:remu a6, a6, t0<br> [0x8000010c]:sw a6, 0(fp)<br>      |
|   2|[0x80003208]<br>0x00000000|- rs1 : x22<br> - rs2 : x18<br> - rd : x10<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val != rs2_val<br> - rs1_val == 0<br> - rs2_val == 4096<br>                                                                                                                |[0x80000118]:remu a0, s6, s2<br> [0x8000011c]:sw a0, 4(fp)<br>      |
|   3|[0x8000320c]<br>0x000000FF|- rs1 : x18<br> - rs2 : x23<br> - rd : x23<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 256<br> - rs1_val == 2147483647<br>                                                                                     |[0x8000012c]:remu s7, s2, s7<br> [0x80000130]:sw s7, 8(fp)<br>      |
|   4|[0x80003210]<br>0x00000000|- rs1 : x25<br> - rs2 : x25<br> - rd : x25<br> - rs1 == rs2 == rd<br> - rs2_val == 8<br> - rs1_val == 8<br>                                                                                                                                                                   |[0x8000013c]:remu s9, s9, s9<br> [0x80000140]:sw s9, 12(fp)<br>     |
|   5|[0x80003214]<br>0x00000000|- rs1 : x21<br> - rs2 : x21<br> - rd : x2<br> - rs1 == rs2 != rd<br> - rs2_val == 0<br>                                                                                                                                                                                       |[0x8000014c]:remu sp, s5, s5<br> [0x80000150]:sw sp, 16(fp)<br>     |
|   6|[0x80003218]<br>0x00010000|- rs1 : x12<br> - rs2 : x0<br> - rd : x6<br> - rs1_val == 65536<br>                                                                                                                                                                                                           |[0x80000160]:remu t1, a2, zero<br> [0x80000164]:sw t1, 20(fp)<br>   |
|   7|[0x8000321c]<br>0x00000000|- rs1 : x14<br> - rs2 : x10<br> - rd : x4<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == 1<br> - rs1_val == -33<br>                                                                                                                                                       |[0x80000170]:remu tp, a4, a0<br> [0x80000174]:sw tp, 24(fp)<br>     |
|   8|[0x80003220]<br>0x00040000|- rs1 : x26<br> - rs2 : x7<br> - rd : x31<br> - rs1_val > 0 and rs2_val < 0<br> - rs2_val == -257<br> - rs1_val == 262144<br>                                                                                                                                                 |[0x80000180]:remu t6, s10, t2<br> [0x80000184]:sw t6, 28(fp)<br>    |
|   9|[0x80003224]<br>0x00000002|- rs1 : x28<br> - rs2 : x20<br> - rd : x14<br> - rs1_val == 2<br>                                                                                                                                                                                                             |[0x80000190]:remu a4, t3, s4<br> [0x80000194]:sw a4, 32(fp)<br>     |
|  10|[0x80003228]<br>0x00000004|- rs1 : x3<br> - rs2 : x13<br> - rd : x30<br> - rs2_val == 268435456<br> - rs1_val == 4<br>                                                                                                                                                                                   |[0x800001a0]:remu t5, gp, a3<br> [0x800001a4]:sw t5, 36(fp)<br>     |
|  11|[0x8000322c]<br>0x00000008|- rs1 : x5<br> - rs2 : x28<br> - rd : x20<br> - rs2_val == 524288<br>                                                                                                                                                                                                         |[0x800001b0]:remu s4, t0, t3<br> [0x800001b4]:sw s4, 40(fp)<br>     |
|  12|[0x80003230]<br>0x00000010|- rs1 : x1<br> - rs2 : x22<br> - rd : x27<br> - rs2_val == 512<br> - rs1_val == 16<br>                                                                                                                                                                                        |[0x800001c0]:remu s11, ra, s6<br> [0x800001c4]:sw s11, 44(fp)<br>   |
|  13|[0x80003234]<br>0x00000000|- rs1 : x10<br> - rs2 : x3<br> - rd : x29<br> - rs1_val == 32<br>                                                                                                                                                                                                             |[0x800001d0]:remu t4, a0, gp<br> [0x800001d4]:sw t4, 48(fp)<br>     |
|  14|[0x80003238]<br>0x00000000|- rs1 : x2<br> - rs2 : x11<br> - rd : x19<br> - rs2_val == 32<br> - rs1_val == 64<br>                                                                                                                                                                                         |[0x800001e0]:remu s3, sp, a1<br> [0x800001e4]:sw s3, 52(fp)<br>     |
|  15|[0x8000323c]<br>0x00000080|- rs1 : x29<br> - rs2 : x1<br> - rd : x17<br> - rs2_val == -8193<br> - rs1_val == 128<br>                                                                                                                                                                                     |[0x800001f4]:remu a7, t4, ra<br> [0x800001f8]:sw a7, 56(fp)<br>     |
|  16|[0x80003240]<br>0x00000200|- rs1 : x20<br> - rs2 : x30<br> - rd : x1<br> - rs2_val == -524289<br> - rs1_val == 512<br>                                                                                                                                                                                   |[0x80000208]:remu ra, s4, t5<br> [0x8000020c]:sw ra, 60(fp)<br>     |
|  17|[0x80003244]<br>0x00000000|- rs1 : x24<br> - rs2 : x15<br> - rd : x28<br> - rs1_val == 1024<br>                                                                                                                                                                                                          |[0x80000218]:remu t3, s8, a5<br> [0x8000021c]:sw t3, 64(fp)<br>     |
|  18|[0x80003248]<br>0x00000800|- rs1 : x31<br> - rs2 : x4<br> - rd : x5<br> - rs2_val == -4194305<br> - rs1_val == 2048<br>                                                                                                                                                                                  |[0x80000238]:remu t0, t6, tp<br> [0x8000023c]:sw t0, 0(ra)<br>      |
|  19|[0x8000324c]<br>0x00001000|- rs1 : x23<br> - rs2 : x27<br> - rd : x15<br> - rs2_val == -17<br> - rs1_val == 4096<br>                                                                                                                                                                                     |[0x80000248]:remu a5, s7, s11<br> [0x8000024c]:sw a5, 4(ra)<br>     |
|  20|[0x80003250]<br>0x00002000|- rs1 : x9<br> - rs2 : x12<br> - rd : x18<br> - rs1_val == 8192<br>                                                                                                                                                                                                           |[0x8000025c]:remu s2, s1, a2<br> [0x80000260]:sw s2, 8(ra)<br>      |
|  21|[0x80003254]<br>0x00004000|- rs1 : x11<br> - rs2 : x19<br> - rd : x12<br> - rs2_val == 4194304<br> - rs1_val == 16384<br>                                                                                                                                                                                |[0x8000026c]:remu a2, a1, s3<br> [0x80000270]:sw a2, 12(ra)<br>     |
|  22|[0x80003258]<br>0x00008000|- rs1 : x30<br> - rs2 : x17<br> - rd : x26<br> - rs1_val == 32768<br>                                                                                                                                                                                                         |[0x80000280]:remu s10, t5, a7<br> [0x80000284]:sw s10, 16(ra)<br>   |
|  23|[0x8000325c]<br>0x00020000|- rs1 : x8<br> - rs2 : x6<br> - rd : x11<br> - rs1_val == 131072<br>                                                                                                                                                                                                          |[0x80000290]:remu a1, fp, t1<br> [0x80000294]:sw a1, 20(ra)<br>     |
|  24|[0x80003260]<br>0x00080000|- rs1 : x17<br> - rs2 : x16<br> - rd : x24<br> - rs2_val == -262145<br> - rs1_val == 524288<br>                                                                                                                                                                               |[0x800002a4]:remu s8, a7, a6<br> [0x800002a8]:sw s8, 24(ra)<br>     |
|  25|[0x80003264]<br>0x00000000|- rs1 : x4<br> - rs2 : x9<br> - rd : x0<br> - rs1_val == 1048576<br>                                                                                                                                                                                                          |[0x800002b4]:remu zero, tp, s1<br> [0x800002b8]:sw zero, 28(ra)<br> |
|  26|[0x80003268]<br>0x00200000|- rs1 : x19<br> - rs2 : x2<br> - rd : x22<br> - rs1_val == 2097152<br>                                                                                                                                                                                                        |[0x800002c4]:remu s6, s3, sp<br> [0x800002c8]:sw s6, 32(ra)<br>     |
|  27|[0x8000326c]<br>0x00400000|- rs1 : x6<br> - rs2 : x14<br> - rd : x8<br> - rs1_val == 4194304<br>                                                                                                                                                                                                         |[0x800002d4]:remu fp, t1, a4<br> [0x800002d8]:sw fp, 36(ra)<br>     |
|  28|[0x80003270]<br>0x00000000|- rs1 : x0<br> - rs2 : x31<br> - rd : x21<br>                                                                                                                                                                                                                                 |[0x800002e8]:remu s5, zero, t6<br> [0x800002ec]:sw s5, 40(ra)<br>   |
|  29|[0x80003274]<br>0x01000000|- rs1 : x27<br> - rs2 : x8<br> - rd : x7<br> - rs1_val == 16777216<br>                                                                                                                                                                                                        |[0x800002f8]:remu t2, s11, fp<br> [0x800002fc]:sw t2, 44(ra)<br>    |
|  30|[0x80003278]<br>0x00000000|- rs1 : x15<br> - rs2 : x24<br> - rd : x3<br> - rs2_val == 2<br> - rs1_val == 33554432<br>                                                                                                                                                                                    |[0x80000308]:remu gp, a5, s8<br> [0x8000030c]:sw gp, 48(ra)<br>     |
|  31|[0x8000327c]<br>0x04000000|- rs1 : x13<br> - rs2 : x29<br> - rd : x9<br> - rs1_val == 67108864<br>                                                                                                                                                                                                       |[0x80000318]:remu s1, a3, t4<br> [0x8000031c]:sw s1, 52(ra)<br>     |
|  32|[0x80003280]<br>0x08000000|- rs1 : x7<br> - rs2 : x26<br> - rd : x13<br> - rs1_val == 134217728<br>                                                                                                                                                                                                      |[0x80000328]:remu a3, t2, s10<br> [0x8000032c]:sw a3, 56(ra)<br>    |
|  33|[0x80003284]<br>0x00000000|- rs2_val == 131072<br> - rs1_val == 268435456<br>                                                                                                                                                                                                                            |[0x80000338]:remu a2, a0, a1<br> [0x8000033c]:sw a2, 60(ra)<br>     |
|  34|[0x80003288]<br>0x20000000|- rs1_val == 536870912<br>                                                                                                                                                                                                                                                    |[0x8000034c]:remu a2, a0, a1<br> [0x80000350]:sw a2, 64(ra)<br>     |
|  35|[0x8000328c]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                                                                                                                                                   |[0x8000035c]:remu a2, a0, a1<br> [0x80000360]:sw a2, 68(ra)<br>     |
|  36|[0x80003290]<br>0x00000000|- rs1_val == -2<br>                                                                                                                                                                                                                                                           |[0x8000036c]:remu a2, a0, a1<br> [0x80000370]:sw a2, 72(ra)<br>     |
|  37|[0x80003294]<br>0x00000005|- rs1_val == -3<br>                                                                                                                                                                                                                                                           |[0x8000037c]:remu a2, a0, a1<br> [0x80000380]:sw a2, 76(ra)<br>     |
|  38|[0x80003298]<br>0x00000006|- rs1_val == -5<br>                                                                                                                                                                                                                                                           |[0x8000038c]:remu a2, a0, a1<br> [0x80000390]:sw a2, 80(ra)<br>     |
|  39|[0x8000329c]<br>0x03FFFFF8|- rs2_val == -67108865<br> - rs1_val == -9<br>                                                                                                                                                                                                                                |[0x800003a0]:remu a2, a0, a1<br> [0x800003a4]:sw a2, 84(ra)<br>     |
|  40|[0x800032a0]<br>0x00000004|- rs1_val == -17<br>                                                                                                                                                                                                                                                          |[0x800003b0]:remu a2, a0, a1<br> [0x800003b4]:sw a2, 88(ra)<br>     |
|  41|[0x800032a4]<br>0x000000BF|- rs1_val == -65<br>                                                                                                                                                                                                                                                          |[0x800003c0]:remu a2, a0, a1<br> [0x800003c4]:sw a2, 92(ra)<br>     |
|  42|[0x800032a8]<br>0x0003FF7F|- rs2_val == 262144<br> - rs1_val == -129<br>                                                                                                                                                                                                                                 |[0x800003d0]:remu a2, a0, a1<br> [0x800003d4]:sw a2, 96(ra)<br>     |
|  43|[0x800032ac]<br>0x001FFEFF|- rs2_val == 2097152<br> - rs1_val == -257<br>                                                                                                                                                                                                                                |[0x800003e0]:remu a2, a0, a1<br> [0x800003e4]:sw a2, 100(ra)<br>    |
|  44|[0x800032b0]<br>0x00000003|- rs1_val == -513<br>                                                                                                                                                                                                                                                         |[0x800003f0]:remu a2, a0, a1<br> [0x800003f4]:sw a2, 104(ra)<br>    |
|  45|[0x800032b4]<br>0xFFFFFBFF|- rs2_val == -2<br> - rs1_val == -1025<br>                                                                                                                                                                                                                                    |[0x80000400]:remu a2, a0, a1<br> [0x80000404]:sw a2, 108(ra)<br>    |
|  46|[0x800032b8]<br>0x0000007F|- rs2_val == 128<br> - rs1_val == -2049<br>                                                                                                                                                                                                                                   |[0x80000414]:remu a2, a0, a1<br> [0x80000418]:sw a2, 112(ra)<br>    |
|  47|[0x800032bc]<br>0x0007EFFF|- rs1_val == -4097<br>                                                                                                                                                                                                                                                        |[0x80000428]:remu a2, a0, a1<br> [0x8000042c]:sw a2, 116(ra)<br>    |
|  48|[0x800032c0]<br>0x00000040|- rs2_val == -1048577<br>                                                                                                                                                                                                                                                     |[0x8000043c]:remu a2, a0, a1<br> [0x80000440]:sw a2, 120(ra)<br>    |
|  49|[0x800032c4]<br>0x001FE000|- rs2_val == -2097153<br> - rs1_val == -8193<br>                                                                                                                                                                                                                              |[0x80000454]:remu a2, a0, a1<br> [0x80000458]:sw a2, 124(ra)<br>    |
|  50|[0x800032c8]<br>0xDFFFFFFF|- rs2_val == -8388609<br> - rs1_val == -536870913<br>                                                                                                                                                                                                                         |[0x8000046c]:remu a2, a0, a1<br> [0x80000470]:sw a2, 128(ra)<br>    |
|  51|[0x800032cc]<br>0x00000005|- rs2_val == -16777217<br>                                                                                                                                                                                                                                                    |[0x80000480]:remu a2, a0, a1<br> [0x80000484]:sw a2, 132(ra)<br>    |
|  52|[0x800032d0]<br>0x00200000|- rs2_val == -33554433<br>                                                                                                                                                                                                                                                    |[0x80000494]:remu a2, a0, a1<br> [0x80000498]:sw a2, 136(ra)<br>    |
|  53|[0x800032d4]<br>0x04000000|- rs2_val == -134217729<br> - rs1_val == -67108865<br>                                                                                                                                                                                                                        |[0x800004ac]:remu a2, a0, a1<br> [0x800004b0]:sw a2, 140(ra)<br>    |
|  54|[0x800032d8]<br>0x00000002|- rs2_val == -268435457<br>                                                                                                                                                                                                                                                   |[0x800004c0]:remu a2, a0, a1<br> [0x800004c4]:sw a2, 144(ra)<br>    |
|  55|[0x800032dc]<br>0x00000020|- rs2_val == -536870913<br>                                                                                                                                                                                                                                                   |[0x800004d4]:remu a2, a0, a1<br> [0x800004d8]:sw a2, 148(ra)<br>    |
|  56|[0x800032e0]<br>0x7FFFFFFF|- rs2_val == -1073741825<br>                                                                                                                                                                                                                                                  |[0x800004ec]:remu a2, a0, a1<br> [0x800004f0]:sw a2, 152(ra)<br>    |
|  57|[0x800032e4]<br>0x554D5555|- rs2_val == 1431655765<br> - rs1_val == -524289<br>                                                                                                                                                                                                                          |[0x80000504]:remu a2, a0, a1<br> [0x80000508]:sw a2, 156(ra)<br>    |
|  58|[0x800032e8]<br>0x5555554D|- rs2_val == -1431655766<br>                                                                                                                                                                                                                                                  |[0x80000518]:remu a2, a0, a1<br> [0x8000051c]:sw a2, 160(ra)<br>    |
|  59|[0x800032ec]<br>0x0FFFC000|- rs1_val == -16385<br>                                                                                                                                                                                                                                                       |[0x80000530]:remu a2, a0, a1<br> [0x80000534]:sw a2, 164(ra)<br>    |
|  60|[0x800032f0]<br>0x00037FFF|- rs1_val == -32769<br>                                                                                                                                                                                                                                                       |[0x80000544]:remu a2, a0, a1<br> [0x80000548]:sw a2, 168(ra)<br>    |
|  61|[0x800032f4]<br>0xFFFEFFFF|- rs1_val == -65537<br>                                                                                                                                                                                                                                                       |[0x8000055c]:remu a2, a0, a1<br> [0x80000560]:sw a2, 172(ra)<br>    |
|  62|[0x800032f8]<br>0x00000001|- rs1_val == -131073<br>                                                                                                                                                                                                                                                      |[0x80000570]:remu a2, a0, a1<br> [0x80000574]:sw a2, 176(ra)<br>    |
|  63|[0x800032fc]<br>0x000001FF|- rs1_val == -262145<br>                                                                                                                                                                                                                                                      |[0x80000584]:remu a2, a0, a1<br> [0x80000588]:sw a2, 180(ra)<br>    |
|  64|[0x80003300]<br>0xFFEFFFFF|- rs1_val == -1048577<br>                                                                                                                                                                                                                                                     |[0x8000059c]:remu a2, a0, a1<br> [0x800005a0]:sw a2, 184(ra)<br>    |
|  65|[0x80003304]<br>0x07E00000|- rs1_val == -2097153<br>                                                                                                                                                                                                                                                     |[0x800005b4]:remu a2, a0, a1<br> [0x800005b8]:sw a2, 188(ra)<br>    |
|  66|[0x80003308]<br>0x00001FFF|- rs2_val == 8192<br> - rs1_val == -4194305<br>                                                                                                                                                                                                                               |[0x800005c8]:remu a2, a0, a1<br> [0x800005cc]:sw a2, 192(ra)<br>    |
|  67|[0x8000330c]<br>0x003FFFFF|- rs1_val == -8388609<br>                                                                                                                                                                                                                                                     |[0x800005dc]:remu a2, a0, a1<br> [0x800005e0]:sw a2, 196(ra)<br>    |
|  68|[0x80003310]<br>0x00000FFF|- rs1_val == -16777217<br>                                                                                                                                                                                                                                                    |[0x800005f0]:remu a2, a0, a1<br> [0x800005f4]:sw a2, 200(ra)<br>    |
|  69|[0x80003314]<br>0x3E000002|- rs1_val == -33554433<br>                                                                                                                                                                                                                                                    |[0x80000608]:remu a2, a0, a1<br> [0x8000060c]:sw a2, 204(ra)<br>    |
|  70|[0x80003318]<br>0x003FFFFF|- rs1_val == -134217729<br>                                                                                                                                                                                                                                                   |[0x8000061c]:remu a2, a0, a1<br> [0x80000620]:sw a2, 208(ra)<br>    |
|  71|[0x8000331c]<br>0x000003FF|- rs2_val == 1024<br> - rs1_val == -268435457<br>                                                                                                                                                                                                                             |[0x80000630]:remu a2, a0, a1<br> [0x80000634]:sw a2, 212(ra)<br>    |
|  72|[0x80003320]<br>0xBFFFFFFF|- rs1_val == -1073741825<br>                                                                                                                                                                                                                                                  |[0x80000648]:remu a2, a0, a1<br> [0x8000064c]:sw a2, 216(ra)<br>    |
|  73|[0x80003324]<br>0x55555555|- rs1_val == 1431655765<br>                                                                                                                                                                                                                                                   |[0x80000660]:remu a2, a0, a1<br> [0x80000664]:sw a2, 220(ra)<br>    |
|  74|[0x80003328]<br>0xAAAAAAAA|- rs2_val == -5<br> - rs1_val == -1431655766<br>                                                                                                                                                                                                                              |[0x80000674]:remu a2, a0, a1<br> [0x80000678]:sw a2, 224(ra)<br>    |
|  75|[0x8000332c]<br>0x00000000|- rs2_val == 4<br>                                                                                                                                                                                                                                                            |[0x80000684]:remu a2, a0, a1<br> [0x80000688]:sw a2, 228(ra)<br>    |
|  76|[0x80003330]<br>0x00000000|- rs2_val == 16<br>                                                                                                                                                                                                                                                           |[0x80000694]:remu a2, a0, a1<br> [0x80000698]:sw a2, 232(ra)<br>    |
|  77|[0x80003334]<br>0x0000001F|- rs2_val == 64<br>                                                                                                                                                                                                                                                           |[0x800006a4]:remu a2, a0, a1<br> [0x800006a8]:sw a2, 236(ra)<br>    |
|  78|[0x80003338]<br>0x000005FF|- rs2_val == 2048<br>                                                                                                                                                                                                                                                         |[0x800006b8]:remu a2, a0, a1<br> [0x800006bc]:sw a2, 240(ra)<br>    |
|  79|[0x8000333c]<br>0x00000000|- rs2_val == 16384<br>                                                                                                                                                                                                                                                        |[0x800006c8]:remu a2, a0, a1<br> [0x800006cc]:sw a2, 244(ra)<br>    |
|  80|[0x80003340]<br>0x00007FFF|- rs2_val == 32768<br>                                                                                                                                                                                                                                                        |[0x800006dc]:remu a2, a0, a1<br> [0x800006e0]:sw a2, 248(ra)<br>    |
|  81|[0x80003344]<br>0x00000000|- rs2_val == 65536<br>                                                                                                                                                                                                                                                        |[0x800006ec]:remu a2, a0, a1<br> [0x800006f0]:sw a2, 252(ra)<br>    |
|  82|[0x80003348]<br>0x00000000|- rs2_val == 1048576<br>                                                                                                                                                                                                                                                      |[0x800006fc]:remu a2, a0, a1<br> [0x80000700]:sw a2, 256(ra)<br>    |
|  83|[0x8000334c]<br>0x00000005|- rs2_val == 8388608<br>                                                                                                                                                                                                                                                      |[0x8000070c]:remu a2, a0, a1<br> [0x80000710]:sw a2, 260(ra)<br>    |
|  84|[0x80003350]<br>0x00001000|- rs2_val == 16777216<br>                                                                                                                                                                                                                                                     |[0x8000071c]:remu a2, a0, a1<br> [0x80000720]:sw a2, 264(ra)<br>    |
|  85|[0x80003354]<br>0x01FFFFDF|- rs2_val == 33554432<br>                                                                                                                                                                                                                                                     |[0x8000072c]:remu a2, a0, a1<br> [0x80000730]:sw a2, 268(ra)<br>    |
|  86|[0x80003358]<br>0x00000100|- rs2_val == 67108864<br> - rs1_val == 256<br>                                                                                                                                                                                                                                |[0x8000073c]:remu a2, a0, a1<br> [0x80000740]:sw a2, 272(ra)<br>    |
|  87|[0x8000335c]<br>0x07FFBFFF|- rs2_val == 134217728<br>                                                                                                                                                                                                                                                    |[0x80000750]:remu a2, a0, a1<br> [0x80000754]:sw a2, 276(ra)<br>    |
|  88|[0x80003360]<br>0x00000001|- rs1_val == 1<br> - rs2_val == 536870912<br>                                                                                                                                                                                                                                 |[0x80000760]:remu a2, a0, a1<br> [0x80000764]:sw a2, 280(ra)<br>    |
|  89|[0x80003364]<br>0x3FF7FFFF|- rs2_val == 1073741824<br>                                                                                                                                                                                                                                                   |[0x80000774]:remu a2, a0, a1<br> [0x80000778]:sw a2, 284(ra)<br>    |
|  90|[0x80003368]<br>0xEFFFFFFF|- rs2_val == -3<br>                                                                                                                                                                                                                                                           |[0x80000788]:remu a2, a0, a1<br> [0x8000078c]:sw a2, 288(ra)<br>    |
|  91|[0x8000336c]<br>0x00000006|- rs2_val == -9<br>                                                                                                                                                                                                                                                           |[0x80000798]:remu a2, a0, a1<br> [0x8000079c]:sw a2, 292(ra)<br>    |
|  92|[0x80003370]<br>0x00800000|- rs2_val == -33<br> - rs1_val == 8388608<br>                                                                                                                                                                                                                                 |[0x800007a8]:remu a2, a0, a1<br> [0x800007ac]:sw a2, 296(ra)<br>    |
|  93|[0x80003374]<br>0xBFFFFFFF|- rs2_val == -65<br>                                                                                                                                                                                                                                                          |[0x800007bc]:remu a2, a0, a1<br> [0x800007c0]:sw a2, 300(ra)<br>    |
|  94|[0x80003378]<br>0xFF7FFFFF|- rs2_val == -129<br>                                                                                                                                                                                                                                                         |[0x800007d0]:remu a2, a0, a1<br> [0x800007d4]:sw a2, 304(ra)<br>    |
|  95|[0x8000337c]<br>0xFFFBFFFF|- rs2_val == -513<br>                                                                                                                                                                                                                                                         |[0x800007e4]:remu a2, a0, a1<br> [0x800007e8]:sw a2, 308(ra)<br>    |
|  96|[0x80003380]<br>0x00400000|- rs2_val == -1025<br>                                                                                                                                                                                                                                                        |[0x800007f4]:remu a2, a0, a1<br> [0x800007f8]:sw a2, 312(ra)<br>    |
|  97|[0x80003384]<br>0xFFF7FFFF|- rs2_val == -2049<br>                                                                                                                                                                                                                                                        |[0x8000080c]:remu a2, a0, a1<br> [0x80000810]:sw a2, 316(ra)<br>    |
|  98|[0x80003388]<br>0x00020000|- rs2_val == -4097<br>                                                                                                                                                                                                                                                        |[0x80000820]:remu a2, a0, a1<br> [0x80000824]:sw a2, 320(ra)<br>    |
|  99|[0x8000338c]<br>0x04000000|- rs2_val == -16385<br>                                                                                                                                                                                                                                                       |[0x80000834]:remu a2, a0, a1<br> [0x80000838]:sw a2, 324(ra)<br>    |
| 100|[0x80003390]<br>0x00040000|- rs2_val == -32769<br>                                                                                                                                                                                                                                                       |[0x80000848]:remu a2, a0, a1<br> [0x8000084c]:sw a2, 328(ra)<br>    |
| 101|[0x80003394]<br>0xFDFFFFFF|- rs2_val == -65537<br>                                                                                                                                                                                                                                                       |[0x80000860]:remu a2, a0, a1<br> [0x80000864]:sw a2, 332(ra)<br>    |
| 102|[0x80003398]<br>0x00000040|- rs2_val == -131073<br>                                                                                                                                                                                                                                                      |[0x80000874]:remu a2, a0, a1<br> [0x80000878]:sw a2, 336(ra)<br>    |
| 103|[0x800033a0]<br>0x00010000|- rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br>                                                                                                                                                                                                                  |[0x80000898]:remu a2, a0, a1<br> [0x8000089c]:sw a2, 344(ra)<br>    |
