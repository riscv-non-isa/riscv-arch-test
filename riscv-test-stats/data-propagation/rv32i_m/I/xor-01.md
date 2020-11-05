
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000870')]      |
| SIG_REGION                | [('0x80003204', '0x8000339c', '102 words')]      |
| COV_LABELS                | xor      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/xor-01.S/xor-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 102      |
| STAT1                     | 101      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000854]:xor a2, a0, a1
      [0x80000858]:sw a2, 276(ra)
 -- Signature Address: 0x80003394 Data: 0x7FFFFF7F
 -- Redundant Coverpoints hit by the op
      - opcode : xor
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs1_val == (-2**(xlen-1))
      - rs2_val == -129
      - rs1_val == -2147483648






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

|s.no|        signature         |                                                                                          coverpoints                                                                                           |                                 code                                  |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000000|- opcode : xor<br> - rs1 : x13<br> - rs2 : x13<br> - rd : x4<br> - rs1 == rs2 != rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br> - rs2_val == -129<br> - rs1_val == -129<br>  |[0x80000108]:xor tp, a3, a3<br> [0x8000010c]:sw tp, 0(s1)<br>          |
|   2|[0x80003208]<br>0xFFFFFEFF|- rs1 : x28<br> - rs2 : x26<br> - rd : x26<br> - rs2 == rd != rs1<br> - rs1_val != rs2_val<br> - rs1_val == 0<br> - rs2_val == -257<br>                                                         |[0x80000118]:xor s10, t3, s10<br> [0x8000011c]:sw s10, 4(s1)<br>       |
|   3|[0x8000320c]<br>0x88000000|- rs1 : x21<br> - rs2 : x7<br> - rd : x21<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == -134217729<br> - rs1_val == 2147483647<br> |[0x80000130]:xor s5, s5, t2<br> [0x80000134]:sw s5, 8(s1)<br>          |
|   4|[0x80003210]<br>0x00000000|- rs1 : x0<br> - rs2 : x0<br> - rd : x0<br> - rs1 == rs2 == rd<br> - rs2_val == 0<br>                                                                                                           |[0x80000144]:xor zero, zero, zero<br> [0x80000148]:sw zero, 12(s1)<br> |
|   5|[0x80003214]<br>0x7BFFFFFF|- rs1 : x12<br> - rs2 : x2<br> - rd : x28<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -67108865<br>             |[0x80000158]:xor t3, a2, sp<br> [0x8000015c]:sw t3, 16(s1)<br>         |
|   6|[0x80003218]<br>0x01000000|- rs1 : x3<br> - rs2 : x11<br> - rd : x14<br> - rs1_val == 16777216<br>                                                                                                                         |[0x80000168]:xor a4, gp, a1<br> [0x8000016c]:sw a4, 20(s1)<br>         |
|   7|[0x8000321c]<br>0x80000004|- rs1 : x27<br> - rs2 : x25<br> - rd : x29<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == -5<br>                               |[0x8000017c]:xor t4, s11, s9<br> [0x80000180]:sw t4, 24(s1)<br>        |
|   8|[0x80003220]<br>0x00000081|- rs1 : x18<br> - rs2 : x20<br> - rd : x15<br> - rs1_val > 0 and rs2_val > 0<br> - rs2_val == 1<br> - rs1_val == 128<br>                                                                        |[0x8000018c]:xor a5, s2, s4<br> [0x80000190]:sw a5, 28(s1)<br>         |
|   9|[0x80003224]<br>0x00000000|- rs1 : x6<br> - rs2 : x31<br> - rd : x5<br> - rs2_val == -4194305<br> - rs1_val == -4194305<br>                                                                                                |[0x800001a4]:xor t0, t1, t6<br> [0x800001a8]:sw t0, 32(s1)<br>         |
|  10|[0x80003228]<br>0xFFFFFFFD|- rs1 : x19<br> - rs2 : x16<br> - rd : x30<br> - rs1_val == 2<br>                                                                                                                               |[0x800001b4]:xor t5, s3, a6<br> [0x800001b8]:sw t5, 36(s1)<br>         |
|  11|[0x8000322c]<br>0x00000000|- rs1 : x15<br> - rs2 : x5<br> - rd : x11<br> - rs2_val == 4<br> - rs1_val == 4<br>                                                                                                             |[0x800001c4]:xor a1, a5, t0<br> [0x800001c8]:sw a1, 40(s1)<br>         |
|  12|[0x80003230]<br>0x00000048|- rs1 : x11<br> - rs2 : x12<br> - rd : x3<br> - rs2_val == 64<br> - rs1_val == 8<br>                                                                                                            |[0x800001d4]:xor gp, a1, a2<br> [0x800001d8]:sw gp, 44(s1)<br>         |
|  13|[0x80003234]<br>0xFFEFFFEF|- rs1 : x22<br> - rs2 : x24<br> - rd : x16<br> - rs2_val == -1048577<br> - rs1_val == 16<br>                                                                                                    |[0x800001e8]:xor a6, s6, s8<br> [0x800001ec]:sw a6, 48(s1)<br>         |
|  14|[0x80003238]<br>0x7FFFFFDF|- rs1 : x5<br> - rs2 : x23<br> - rd : x6<br> - rs1_val == 32<br>                                                                                                                                |[0x800001fc]:xor t1, t0, s7<br> [0x80000200]:sw t1, 52(s1)<br>         |
|  15|[0x8000323c]<br>0x80000040|- rs1 : x8<br> - rs2 : x4<br> - rd : x20<br> - rs1_val == 64<br>                                                                                                                                |[0x8000020c]:xor s4, fp, tp<br> [0x80000210]:sw s4, 56(s1)<br>         |
|  16|[0x80003240]<br>0x00002100|- rs1 : x1<br> - rs2 : x30<br> - rd : x7<br> - rs2_val == 8192<br> - rs1_val == 256<br>                                                                                                         |[0x8000021c]:xor t2, ra, t5<br> [0x80000220]:sw t2, 60(s1)<br>         |
|  17|[0x80003244]<br>0xFFFFFDFD|- rs1 : x4<br> - rs2 : x8<br> - rd : x22<br> - rs2_val == -3<br> - rs1_val == 512<br>                                                                                                           |[0x80000234]:xor s6, tp, fp<br> [0x80000238]:sw s6, 0(t0)<br>          |
|  18|[0x80003248]<br>0xFFFFBBFF|- rs1 : x29<br> - rs2 : x21<br> - rd : x13<br> - rs2_val == -16385<br> - rs1_val == 1024<br>                                                                                                    |[0x80000248]:xor a3, t4, s5<br> [0x8000024c]:sw a3, 4(t0)<br>          |
|  19|[0x8000324c]<br>0x00000809|- rs1 : x20<br> - rs2 : x18<br> - rd : x24<br> - rs1_val == 2048<br>                                                                                                                            |[0x8000025c]:xor s8, s4, s2<br> [0x80000260]:sw s8, 8(t0)<br>          |
|  20|[0x80003250]<br>0x00001006|- rs1 : x30<br> - rs2 : x15<br> - rd : x9<br> - rs1_val == 4096<br>                                                                                                                             |[0x8000026c]:xor s1, t5, a5<br> [0x80000270]:sw s1, 12(t0)<br>         |
|  21|[0x80003254]<br>0xFFFFDBFF|- rs1 : x7<br> - rs2 : x6<br> - rd : x25<br> - rs2_val == -1025<br> - rs1_val == 8192<br>                                                                                                       |[0x8000027c]:xor s9, t2, t1<br> [0x80000280]:sw s9, 16(t0)<br>         |
|  22|[0x80003258]<br>0x00004007|- rs1 : x31<br> - rs2 : x22<br> - rd : x1<br> - rs1_val == 16384<br>                                                                                                                            |[0x8000028c]:xor ra, t6, s6<br> [0x80000290]:sw ra, 20(t0)<br>         |
|  23|[0x8000325c]<br>0x00008002|- rs1 : x26<br> - rs2 : x17<br> - rd : x19<br> - rs2_val == 2<br> - rs1_val == 32768<br>                                                                                                        |[0x8000029c]:xor s3, s10, a7<br> [0x800002a0]:sw s3, 24(t0)<br>        |
|  24|[0x80003260]<br>0xFFBEFFFF|- rs1 : x9<br> - rs2 : x29<br> - rd : x17<br> - rs1_val == 65536<br>                                                                                                                            |[0x800002b0]:xor a7, s1, t4<br> [0x800002b4]:sw a7, 28(t0)<br>         |
|  25|[0x80003264]<br>0x00028000|- rs1 : x25<br> - rs2 : x19<br> - rd : x10<br> - rs2_val == 32768<br> - rs1_val == 131072<br>                                                                                                   |[0x800002c0]:xor a0, s9, s3<br> [0x800002c4]:sw a0, 32(t0)<br>         |
|  26|[0x80003268]<br>0x00140000|- rs1 : x17<br> - rs2 : x1<br> - rd : x23<br> - rs2_val == 1048576<br> - rs1_val == 262144<br>                                                                                                  |[0x800002d0]:xor s7, a7, ra<br> [0x800002d4]:sw s7, 36(t0)<br>         |
|  27|[0x8000326c]<br>0xFFF7F7FF|- rs1 : x16<br> - rs2 : x28<br> - rd : x12<br> - rs2_val == -2049<br> - rs1_val == 524288<br>                                                                                                   |[0x800002e4]:xor a2, a6, t3<br> [0x800002e8]:sw a2, 40(t0)<br>         |
|  28|[0x80003270]<br>0xFFEF7FFF|- rs1 : x23<br> - rs2 : x10<br> - rd : x8<br> - rs2_val == -32769<br> - rs1_val == 1048576<br>                                                                                                  |[0x800002f8]:xor fp, s7, a0<br> [0x800002fc]:sw fp, 44(t0)<br>         |
|  29|[0x80003274]<br>0xFFDFBFFF|- rs1 : x10<br> - rs2 : x14<br> - rd : x31<br> - rs1_val == 2097152<br>                                                                                                                         |[0x8000030c]:xor t6, a0, a4<br> [0x80000310]:sw t6, 48(t0)<br>         |
|  30|[0x80003278]<br>0x00402000|- rs1 : x24<br> - rs2 : x9<br> - rd : x27<br> - rs1_val == 4194304<br>                                                                                                                          |[0x8000031c]:xor s11, s8, s1<br> [0x80000320]:sw s11, 52(t0)<br>       |
|  31|[0x8000327c]<br>0xFF6FFFFF|- rs1 : x14<br> - rs2 : x3<br> - rd : x2<br> - rs1_val == 8388608<br>                                                                                                                           |[0x80000330]:xor sp, a4, gp<br> [0x80000334]:sw sp, 56(t0)<br>         |
|  32|[0x80003280]<br>0xFDFFFFF6|- rs1 : x2<br> - rs2 : x27<br> - rd : x18<br> - rs1_val == 33554432<br>                                                                                                                         |[0x80000348]:xor s2, sp, s11<br> [0x8000034c]:sw s2, 0(ra)<br>         |
|  33|[0x80003284]<br>0xFBFFFFFF|- rs1_val == 67108864<br>                                                                                                                                                                       |[0x80000358]:xor a2, a0, a1<br> [0x8000035c]:sw a2, 4(ra)<br>          |
|  34|[0x80003288]<br>0x08000006|- rs1_val == 134217728<br>                                                                                                                                                                      |[0x80000368]:xor a2, a0, a1<br> [0x8000036c]:sw a2, 8(ra)<br>          |
|  35|[0x8000328c]<br>0xEFFBFFFF|- rs2_val == -262145<br> - rs1_val == 268435456<br>                                                                                                                                             |[0x8000037c]:xor a2, a0, a1<br> [0x80000380]:sw a2, 12(ra)<br>         |
|  36|[0x80003290]<br>0xDFFFFFFC|- rs1_val == 536870912<br>                                                                                                                                                                      |[0x8000038c]:xor a2, a0, a1<br> [0x80000390]:sw a2, 16(ra)<br>         |
|  37|[0x80003294]<br>0x7FFFFFFF|- rs1_val == 1073741824<br>                                                                                                                                                                     |[0x800003a0]:xor a2, a0, a1<br> [0x800003a4]:sw a2, 20(ra)<br>         |
|  38|[0x80003298]<br>0x00000401|- rs1_val == -2<br>                                                                                                                                                                             |[0x800003b0]:xor a2, a0, a1<br> [0x800003b4]:sw a2, 24(ra)<br>         |
|  39|[0x8000329c]<br>0xFFFDFFFD|- rs2_val == 131072<br> - rs1_val == -3<br>                                                                                                                                                     |[0x800003c0]:xor a2, a0, a1<br> [0x800003c4]:sw a2, 28(ra)<br>         |
|  40|[0x800032a0]<br>0xFFFFFFF3|- rs1_val == -9<br>                                                                                                                                                                             |[0x800003d0]:xor a2, a0, a1<br> [0x800003d4]:sw a2, 32(ra)<br>         |
|  41|[0x800032a4]<br>0x00000019|- rs1_val == -17<br>                                                                                                                                                                            |[0x800003e0]:xor a2, a0, a1<br> [0x800003e4]:sw a2, 36(ra)<br>         |
|  42|[0x800032a8]<br>0xFFFBFFDF|- rs2_val == 262144<br> - rs1_val == -33<br>                                                                                                                                                    |[0x800003f0]:xor a2, a0, a1<br> [0x800003f4]:sw a2, 40(ra)<br>         |
|  43|[0x800032ac]<br>0x00000042|- rs1_val == -65<br>                                                                                                                                                                            |[0x80000400]:xor a2, a0, a1<br> [0x80000404]:sw a2, 44(ra)<br>         |
|  44|[0x800032b0]<br>0x00800080|- rs2_val == -8388609<br>                                                                                                                                                                       |[0x80000414]:xor a2, a0, a1<br> [0x80000418]:sw a2, 48(ra)<br>         |
|  45|[0x800032b4]<br>0xFFFFF6FF|- rs2_val == 2048<br> - rs1_val == -257<br>                                                                                                                                                     |[0x80000428]:xor a2, a0, a1<br> [0x8000042c]:sw a2, 52(ra)<br>         |
|  46|[0x800032b8]<br>0x00000300|- rs1_val == -513<br>                                                                                                                                                                           |[0x80000438]:xor a2, a0, a1<br> [0x8000043c]:sw a2, 56(ra)<br>         |
|  47|[0x800032bc]<br>0x7FF7FFFF|- rs1_val == (-2**(xlen-1))<br> - rs2_val == -524289<br> - rs1_val == -2147483648<br>                                                                                                           |[0x8000044c]:xor a2, a0, a1<br> [0x80000450]:sw a2, 60(ra)<br>         |
|  48|[0x800032c0]<br>0x00280000|- rs2_val == -2097153<br> - rs1_val == -524289<br>                                                                                                                                              |[0x80000464]:xor a2, a0, a1<br> [0x80000468]:sw a2, 64(ra)<br>         |
|  49|[0x800032c4]<br>0x01000008|- rs2_val == -16777217<br>                                                                                                                                                                      |[0x80000478]:xor a2, a0, a1<br> [0x8000047c]:sw a2, 68(ra)<br>         |
|  50|[0x800032c8]<br>0xFDFFFFFD|- rs2_val == -33554433<br>                                                                                                                                                                      |[0x8000048c]:xor a2, a0, a1<br> [0x80000490]:sw a2, 72(ra)<br>         |
|  51|[0x800032cc]<br>0x04000000|- rs2_val == -67108865<br>                                                                                                                                                                      |[0x800004a0]:xor a2, a0, a1<br> [0x800004a4]:sw a2, 76(ra)<br>         |
|  52|[0x800032d0]<br>0x90000000|- rs2_val == -268435457<br>                                                                                                                                                                     |[0x800004b8]:xor a2, a0, a1<br> [0x800004bc]:sw a2, 80(ra)<br>         |
|  53|[0x800032d4]<br>0x24000000|- rs2_val == -536870913<br>                                                                                                                                                                     |[0x800004d0]:xor a2, a0, a1<br> [0x800004d4]:sw a2, 84(ra)<br>         |
|  54|[0x800032d8]<br>0x40000010|- rs2_val == -1073741825<br>                                                                                                                                                                    |[0x800004e4]:xor a2, a0, a1<br> [0x800004e8]:sw a2, 88(ra)<br>         |
|  55|[0x800032dc]<br>0x5D555555|- rs2_val == 1431655765<br>                                                                                                                                                                     |[0x800004f8]:xor a2, a0, a1<br> [0x800004fc]:sw a2, 92(ra)<br>         |
|  56|[0x800032e0]<br>0xAAA2AAAA|- rs2_val == -1431655766<br>                                                                                                                                                                    |[0x8000050c]:xor a2, a0, a1<br> [0x80000510]:sw a2, 96(ra)<br>         |
|  57|[0x800032e4]<br>0xC0000400|- rs1_val == -1025<br>                                                                                                                                                                          |[0x80000520]:xor a2, a0, a1<br> [0x80000524]:sw a2, 100(ra)<br>        |
|  58|[0x800032e8]<br>0xFFFDF7FF|- rs1_val == -2049<br>                                                                                                                                                                          |[0x80000534]:xor a2, a0, a1<br> [0x80000538]:sw a2, 104(ra)<br>        |
|  59|[0x800032ec]<br>0xC0001000|- rs1_val == -4097<br>                                                                                                                                                                          |[0x8000054c]:xor a2, a0, a1<br> [0x80000550]:sw a2, 108(ra)<br>        |
|  60|[0x800032f0]<br>0xFFFFDF7F|- rs2_val == 128<br> - rs1_val == -8193<br>                                                                                                                                                     |[0x80000560]:xor a2, a0, a1<br> [0x80000564]:sw a2, 112(ra)<br>        |
|  61|[0x800032f4]<br>0xFEFFBFFF|- rs2_val == 16777216<br> - rs1_val == -16385<br>                                                                                                                                               |[0x80000574]:xor a2, a0, a1<br> [0x80000578]:sw a2, 116(ra)<br>        |
|  62|[0x800032f8]<br>0x5555D555|- rs1_val == -32769<br>                                                                                                                                                                         |[0x8000058c]:xor a2, a0, a1<br> [0x80000590]:sw a2, 120(ra)<br>        |
|  63|[0x800032fc]<br>0xFFFE7FFF|- rs1_val == -65537<br>                                                                                                                                                                         |[0x800005a0]:xor a2, a0, a1<br> [0x800005a4]:sw a2, 124(ra)<br>        |
|  64|[0x80003300]<br>0x00020020|- rs2_val == -33<br> - rs1_val == -131073<br>                                                                                                                                                   |[0x800005b4]:xor a2, a0, a1<br> [0x800005b8]:sw a2, 128(ra)<br>        |
|  65|[0x80003304]<br>0xFFFBFFBF|- rs1_val == -262145<br>                                                                                                                                                                        |[0x800005c8]:xor a2, a0, a1<br> [0x800005cc]:sw a2, 132(ra)<br>        |
|  66|[0x80003308]<br>0xFFEFFBFF|- rs2_val == 1024<br> - rs1_val == -1048577<br>                                                                                                                                                 |[0x800005dc]:xor a2, a0, a1<br> [0x800005e0]:sw a2, 136(ra)<br>        |
|  67|[0x8000330c]<br>0x00200008|- rs2_val == -9<br> - rs1_val == -2097153<br>                                                                                                                                                   |[0x800005f0]:xor a2, a0, a1<br> [0x800005f4]:sw a2, 140(ra)<br>        |
|  68|[0x80003310]<br>0x00800800|- rs1_val == -8388609<br>                                                                                                                                                                       |[0x80000608]:xor a2, a0, a1<br> [0x8000060c]:sw a2, 144(ra)<br>        |
|  69|[0x80003314]<br>0x01200000|- rs1_val == -16777217<br>                                                                                                                                                                      |[0x80000620]:xor a2, a0, a1<br> [0x80000624]:sw a2, 148(ra)<br>        |
|  70|[0x80003318]<br>0x02000040|- rs2_val == -65<br> - rs1_val == -33554433<br>                                                                                                                                                 |[0x80000634]:xor a2, a0, a1<br> [0x80000638]:sw a2, 152(ra)<br>        |
|  71|[0x8000331c]<br>0xF7FFFFFE|- rs1_val == -134217729<br>                                                                                                                                                                     |[0x80000648]:xor a2, a0, a1<br> [0x8000064c]:sw a2, 156(ra)<br>        |
|  72|[0x80003320]<br>0xEFFFDFFF|- rs1_val == -268435457<br>                                                                                                                                                                     |[0x8000065c]:xor a2, a0, a1<br> [0x80000660]:sw a2, 160(ra)<br>        |
|  73|[0x80003324]<br>0xDFFFFBFF|- rs1_val == -536870913<br>                                                                                                                                                                     |[0x80000670]:xor a2, a0, a1<br> [0x80000674]:sw a2, 164(ra)<br>        |
|  74|[0x80003328]<br>0xBFFFFFFC|- rs1_val == -1073741825<br>                                                                                                                                                                    |[0x80000684]:xor a2, a0, a1<br> [0x80000688]:sw a2, 168(ra)<br>        |
|  75|[0x8000332c]<br>0x55755555|- rs2_val == 2097152<br> - rs1_val == 1431655765<br>                                                                                                                                            |[0x80000698]:xor a2, a0, a1<br> [0x8000069c]:sw a2, 172(ra)<br>        |
|  76|[0x80003330]<br>0xABAAAAAA|- rs1_val == -1431655766<br>                                                                                                                                                                    |[0x800006ac]:xor a2, a0, a1<br> [0x800006b0]:sw a2, 176(ra)<br>        |
|  77|[0x80003334]<br>0x00000048|- rs2_val == 8<br>                                                                                                                                                                              |[0x800006bc]:xor a2, a0, a1<br> [0x800006c0]:sw a2, 180(ra)<br>        |
|  78|[0x80003338]<br>0xDFFFFFEF|- rs2_val == 16<br>                                                                                                                                                                             |[0x800006d0]:xor a2, a0, a1<br> [0x800006d4]:sw a2, 184(ra)<br>        |
|  79|[0x8000333c]<br>0xFFFFFF5F|- rs2_val == 32<br>                                                                                                                                                                             |[0x800006e0]:xor a2, a0, a1<br> [0x800006e4]:sw a2, 188(ra)<br>        |
|  80|[0x80003340]<br>0x00000108|- rs2_val == 256<br>                                                                                                                                                                            |[0x800006f0]:xor a2, a0, a1<br> [0x800006f4]:sw a2, 192(ra)<br>        |
|  81|[0x80003344]<br>0x00200200|- rs2_val == 512<br>                                                                                                                                                                            |[0x80000700]:xor a2, a0, a1<br> [0x80000704]:sw a2, 196(ra)<br>        |
|  82|[0x80003348]<br>0x00001010|- rs2_val == 4096<br>                                                                                                                                                                           |[0x80000710]:xor a2, a0, a1<br> [0x80000714]:sw a2, 200(ra)<br>        |
|  83|[0x8000334c]<br>0x00000000|- rs2_val == 16384<br>                                                                                                                                                                          |[0x80000720]:xor a2, a0, a1<br> [0x80000724]:sw a2, 204(ra)<br>        |
|  84|[0x80003350]<br>0x00030000|- rs2_val == 65536<br>                                                                                                                                                                          |[0x80000730]:xor a2, a0, a1<br> [0x80000734]:sw a2, 208(ra)<br>        |
|  85|[0x80003354]<br>0xFFF7FFF9|- rs2_val == 524288<br>                                                                                                                                                                         |[0x80000740]:xor a2, a0, a1<br> [0x80000744]:sw a2, 212(ra)<br>        |
|  86|[0x80003358]<br>0xFF9FFFFF|- rs2_val == 4194304<br>                                                                                                                                                                        |[0x80000754]:xor a2, a0, a1<br> [0x80000758]:sw a2, 216(ra)<br>        |
|  87|[0x8000335c]<br>0x00800009|- rs2_val == 8388608<br>                                                                                                                                                                        |[0x80000764]:xor a2, a0, a1<br> [0x80000768]:sw a2, 220(ra)<br>        |
|  88|[0x80003360]<br>0x22000000|- rs2_val == 33554432<br>                                                                                                                                                                       |[0x80000774]:xor a2, a0, a1<br> [0x80000778]:sw a2, 224(ra)<br>        |
|  89|[0x80003364]<br>0xFBFFFFFB|- rs2_val == 67108864<br>                                                                                                                                                                       |[0x80000784]:xor a2, a0, a1<br> [0x80000788]:sw a2, 228(ra)<br>        |
|  90|[0x80003368]<br>0xF7FFF7FF|- rs2_val == 134217728<br>                                                                                                                                                                      |[0x80000798]:xor a2, a0, a1<br> [0x8000079c]:sw a2, 232(ra)<br>        |
|  91|[0x8000336c]<br>0x10040000|- rs2_val == 268435456<br>                                                                                                                                                                      |[0x800007a8]:xor a2, a0, a1<br> [0x800007ac]:sw a2, 236(ra)<br>        |
|  92|[0x80003370]<br>0x28000000|- rs2_val == 536870912<br>                                                                                                                                                                      |[0x800007b8]:xor a2, a0, a1<br> [0x800007bc]:sw a2, 240(ra)<br>        |
|  93|[0x80003374]<br>0x40000010|- rs2_val == 1073741824<br>                                                                                                                                                                     |[0x800007c8]:xor a2, a0, a1<br> [0x800007cc]:sw a2, 244(ra)<br>        |
|  94|[0x80003378]<br>0x0000000D|- rs2_val == -5<br>                                                                                                                                                                             |[0x800007d8]:xor a2, a0, a1<br> [0x800007dc]:sw a2, 248(ra)<br>        |
|  95|[0x8000337c]<br>0xFFFEFFEF|- rs2_val == -17<br>                                                                                                                                                                            |[0x800007e8]:xor a2, a0, a1<br> [0x800007ec]:sw a2, 252(ra)<br>        |
|  96|[0x80003380]<br>0x00000206|- rs2_val == -513<br>                                                                                                                                                                           |[0x800007f8]:xor a2, a0, a1<br> [0x800007fc]:sw a2, 256(ra)<br>        |
|  97|[0x80003384]<br>0x00001040|- rs2_val == -4097<br>                                                                                                                                                                          |[0x8000080c]:xor a2, a0, a1<br> [0x80000810]:sw a2, 260(ra)<br>        |
|  98|[0x80003388]<br>0x00002009|- rs2_val == -8193<br>                                                                                                                                                                          |[0x80000820]:xor a2, a0, a1<br> [0x80000824]:sw a2, 264(ra)<br>        |
|  99|[0x8000338c]<br>0xFFFFFFF8|- rs2_val == -2<br>                                                                                                                                                                             |[0x80000830]:xor a2, a0, a1<br> [0x80000834]:sw a2, 268(ra)<br>        |
| 100|[0x80003390]<br>0xFFFDFFF8|- rs2_val == -131073<br>                                                                                                                                                                        |[0x80000844]:xor a2, a0, a1<br> [0x80000848]:sw a2, 272(ra)<br>        |
| 101|[0x80003398]<br>0xFFFEFFFE|- rs1_val == 1<br> - rs2_val == -65537<br>                                                                                                                                                      |[0x80000868]:xor a2, a0, a1<br> [0x8000086c]:sw a2, 280(ra)<br>        |
