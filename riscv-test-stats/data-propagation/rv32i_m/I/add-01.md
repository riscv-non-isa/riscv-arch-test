
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
| SIG_REGION                | [('0x80003204', '0x80003398', '101 words')]      |
| COV_LABELS                | add      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/add-01.S/add-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 101      |
| STAT1                     | 100      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000854]:add a2, a0, a1
      [0x80000858]:sw a2, 268(ra)
 -- Signature Address: 0x80003390 Data: 0x00201000
 -- Redundant Coverpoints hit by the op
      - opcode : add
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 2097152
      - rs1_val == 4096






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

|s.no|        signature         |                                                                                                               coverpoints                                                                                                               |                               code                               |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------|
|   1|[0x80003204]<br>0x7FEFFFFF|- opcode : add<br> - rs1 : x12<br> - rs2 : x2<br> - rd : x2<br> - rs2 == rd != rs1<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val != rs2_val<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -1048577<br> - rs1_val == -2147483648<br> |[0x8000010c]:add sp, a2, sp<br> [0x80000110]:sw sp, 0(gp)<br>     |
|   2|[0x80003208]<br>0x55555555|- rs1 : x0<br> - rs2 : x21<br> - rd : x4<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == 0<br> - rs2_val == 1431655765<br>                                                                                                |[0x80000120]:add tp, zero, s5<br> [0x80000124]:sw tp, 4(gp)<br>   |
|   3|[0x8000320c]<br>0xEFFFFFFE|- rs1 : x15<br> - rs2 : x15<br> - rd : x19<br> - rs1 == rs2 != rd<br> - rs1_val == rs2_val<br> - rs2_val == -134217729<br> - rs1_val == -134217729<br>                                                                                   |[0x80000138]:add s3, a5, a5<br> [0x8000013c]:sw s3, 8(gp)<br>     |
|   4|[0x80003210]<br>0x00000000|- rs1 : x7<br> - rs2 : x7<br> - rd : x7<br> - rs1 == rs2 == rd<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br>                                                                                                          |[0x80000148]:add t2, t2, t2<br> [0x8000014c]:sw t2, 12(gp)<br>    |
|   5|[0x80003214]<br>0x80000000|- rs1 : x28<br> - rs2 : x27<br> - rd : x28<br> - rs1 == rd != rs2<br> - rs2_val == 0<br>                                                                                                                                                 |[0x80000158]:add t3, t3, s11<br> [0x8000015c]:sw t3, 16(gp)<br>   |
|   6|[0x80003218]<br>0x8000001F|- rs1 : x6<br> - rs2 : x9<br> - rd : x11<br> - rs1_val > 0 and rs2_val > 0<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == 32<br>                                                                          |[0x8000016c]:add a1, t1, s1<br> [0x80000170]:sw a1, 20(gp)<br>    |
|   7|[0x8000321c]<br>0xFF000000|- rs1 : x1<br> - rs2 : x8<br> - rd : x10<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == 1<br> - rs1_val == -16777217<br>                                                                                                             |[0x80000180]:add a0, ra, fp<br> [0x80000184]:sw a0, 24(gp)<br>    |
|   8|[0x80003220]<br>0x00400000|- rs1 : x18<br> - rs2 : x23<br> - rd : x8<br> - rs2_val == 2097152<br> - rs1_val == 2097152<br>                                                                                                                                          |[0x80000190]:add fp, s2, s7<br> [0x80000194]:sw fp, 28(gp)<br>    |
|   9|[0x80003224]<br>0x04000002|- rs1 : x8<br> - rs2 : x19<br> - rd : x6<br> - rs2_val == 67108864<br> - rs1_val == 2<br>                                                                                                                                                |[0x800001a0]:add t1, fp, s3<br> [0x800001a4]:sw t1, 32(gp)<br>    |
|  10|[0x80003228]<br>0x55555559|- rs1 : x27<br> - rs2 : x12<br> - rd : x1<br> - rs1_val == 4<br>                                                                                                                                                                         |[0x800001b4]:add ra, s11, a2<br> [0x800001b8]:sw ra, 36(gp)<br>   |
|  11|[0x8000322c]<br>0xFF800007|- rs1 : x30<br> - rs2 : x10<br> - rd : x26<br> - rs1_val > 0 and rs2_val < 0<br> - rs2_val == -8388609<br> - rs1_val == 8<br>                                                                                                            |[0x800001c8]:add s10, t5, a0<br> [0x800001cc]:sw s10, 40(gp)<br>  |
|  12|[0x80003230]<br>0x00000030|- rs1 : x9<br> - rs2 : x14<br> - rd : x17<br> - rs2_val == 32<br> - rs1_val == 16<br>                                                                                                                                                    |[0x800001d8]:add a7, s1, a4<br> [0x800001dc]:sw a7, 44(gp)<br>    |
|  13|[0x80003234]<br>0xAAAAAAEA|- rs1 : x11<br> - rs2 : x29<br> - rd : x5<br> - rs2_val == -1431655766<br> - rs1_val == 64<br>                                                                                                                                           |[0x800001ec]:add t0, a1, t4<br> [0x800001f0]:sw t0, 48(gp)<br>    |
|  14|[0x80003238]<br>0x00000080|- rs1 : x13<br> - rs2 : x26<br> - rd : x20<br> - rs1_val == 128<br>                                                                                                                                                                      |[0x800001fc]:add s4, a3, s10<br> [0x80000200]:sw s4, 52(gp)<br>   |
|  15|[0x8000323c]<br>0x00000120|- rs1 : x31<br> - rs2 : x16<br> - rd : x29<br> - rs1_val == 256<br>                                                                                                                                                                      |[0x8000020c]:add t4, t6, a6<br> [0x80000210]:sw t4, 56(gp)<br>    |
|  16|[0x80003240]<br>0xFFFE01FF|- rs1 : x17<br> - rs2 : x11<br> - rd : x25<br> - rs2_val == -131073<br> - rs1_val == 512<br>                                                                                                                                             |[0x80000220]:add s9, a7, a1<br> [0x80000224]:sw s9, 60(gp)<br>    |
|  17|[0x80003244]<br>0x400003FF|- rs1 : x23<br> - rs2 : x4<br> - rd : x18<br> - rs1_val == 1024<br>                                                                                                                                                                      |[0x8000023c]:add s2, s7, tp<br> [0x80000240]:sw s2, 0(t2)<br>     |
|  18|[0x80003248]<br>0x04000800|- rs1 : x29<br> - rs2 : x31<br> - rd : x16<br> - rs1_val == 2048<br>                                                                                                                                                                     |[0x80000250]:add a6, t4, t6<br> [0x80000254]:sw a6, 4(t2)<br>     |
|  19|[0x8000324c]<br>0x00000000|- rs1 : x19<br> - rs2 : x6<br> - rd : x0<br> - rs1_val == 4096<br>                                                                                                                                                                       |[0x80000260]:add zero, s3, t1<br> [0x80000264]:sw zero, 8(t2)<br> |
|  20|[0x80003250]<br>0x00082000|- rs1 : x21<br> - rs2 : x17<br> - rd : x12<br> - rs2_val == 524288<br> - rs1_val == 8192<br>                                                                                                                                             |[0x80000270]:add a2, s5, a7<br> [0x80000274]:sw a2, 12(t2)<br>    |
|  21|[0x80003254]<br>0x00008000|- rs1 : x16<br> - rs2 : x1<br> - rd : x31<br> - rs2_val == 16384<br> - rs1_val == 16384<br>                                                                                                                                              |[0x80000280]:add t6, a6, ra<br> [0x80000284]:sw t6, 16(t2)<br>    |
|  22|[0x80003258]<br>0xFF007FFF|- rs1 : x4<br> - rs2 : x22<br> - rd : x30<br> - rs2_val == -16777217<br> - rs1_val == 32768<br>                                                                                                                                          |[0x80000294]:add t5, tp, s6<br> [0x80000298]:sw t5, 20(t2)<br>    |
|  23|[0x8000325c]<br>0x0000FDFF|- rs1 : x14<br> - rs2 : x28<br> - rd : x15<br> - rs2_val == -513<br> - rs1_val == 65536<br>                                                                                                                                              |[0x800002a4]:add a5, a4, t3<br> [0x800002a8]:sw a5, 24(t2)<br>    |
|  24|[0x80003260]<br>0x00020000|- rs1 : x3<br> - rs2 : x0<br> - rd : x13<br> - rs1_val == 131072<br>                                                                                                                                                                     |[0x800002b4]:add a3, gp, zero<br> [0x800002b8]:sw a3, 28(t2)<br>  |
|  25|[0x80003264]<br>0x0003FFFA|- rs1 : x2<br> - rs2 : x30<br> - rd : x21<br> - rs1_val == 262144<br>                                                                                                                                                                    |[0x800002c4]:add s5, sp, t5<br> [0x800002c8]:sw s5, 32(t2)<br>    |
|  26|[0x80003268]<br>0x00280000|- rs1 : x26<br> - rs2 : x13<br> - rd : x3<br> - rs1_val == 524288<br>                                                                                                                                                                    |[0x800002d4]:add gp, s10, a3<br> [0x800002d8]:sw gp, 36(t2)<br>   |
|  27|[0x8000326c]<br>0x00100800|- rs1 : x22<br> - rs2 : x25<br> - rd : x23<br> - rs2_val == 2048<br> - rs1_val == 1048576<br>                                                                                                                                            |[0x800002e8]:add s7, s6, s9<br> [0x800002ec]:sw s7, 40(t2)<br>    |
|  28|[0x80003270]<br>0x00400003|- rs1 : x25<br> - rs2 : x3<br> - rd : x22<br> - rs1_val == 4194304<br>                                                                                                                                                                   |[0x800002f8]:add s6, s9, gp<br> [0x800002fc]:sw s6, 44(t2)<br>    |
|  29|[0x80003274]<br>0x007FFFFB|- rs1 : x20<br> - rs2 : x24<br> - rd : x9<br> - rs2_val == -5<br> - rs1_val == 8388608<br>                                                                                                                                               |[0x80000308]:add s1, s4, s8<br> [0x8000030c]:sw s1, 48(t2)<br>    |
|  30|[0x80003278]<br>0x11000000|- rs1 : x24<br> - rs2 : x5<br> - rd : x14<br> - rs2_val == 268435456<br> - rs1_val == 16777216<br>                                                                                                                                       |[0x80000318]:add a4, s8, t0<br> [0x8000031c]:sw a4, 52(t2)<br>    |
|  31|[0x8000327c]<br>0x01FFFDFF|- rs1 : x5<br> - rs2 : x18<br> - rd : x27<br> - rs1_val == 33554432<br>                                                                                                                                                                  |[0x80000328]:add s11, t0, s2<br> [0x8000032c]:sw s11, 56(t2)<br>  |
|  32|[0x80003280]<br>0x03FFFFFB|- rs1 : x10<br> - rs2 : x20<br> - rd : x24<br> - rs1_val == 67108864<br>                                                                                                                                                                 |[0x80000338]:add s8, a0, s4<br> [0x8000033c]:sw s8, 60(t2)<br>    |
|  33|[0x80003284]<br>0x07FFFFF8|- rs1_val == 134217728<br>                                                                                                                                                                                                               |[0x80000350]:add a2, a0, a1<br> [0x80000354]:sw a2, 0(ra)<br>     |
|  34|[0x80003288]<br>0x10400000|- rs2_val == 4194304<br> - rs1_val == 268435456<br>                                                                                                                                                                                      |[0x80000360]:add a2, a0, a1<br> [0x80000364]:sw a2, 4(ra)<br>     |
|  35|[0x8000328c]<br>0x20020000|- rs2_val == 131072<br> - rs1_val == 536870912<br>                                                                                                                                                                                       |[0x80000370]:add a2, a0, a1<br> [0x80000374]:sw a2, 8(ra)<br>     |
|  36|[0x80003290]<br>0x40100000|- rs2_val == 1048576<br> - rs1_val == 1073741824<br>                                                                                                                                                                                     |[0x80000380]:add a2, a0, a1<br> [0x80000384]:sw a2, 12(ra)<br>    |
|  37|[0x80003294]<br>0xFFFDFFFD|- rs1_val == -2<br>                                                                                                                                                                                                                      |[0x80000394]:add a2, a0, a1<br> [0x80000398]:sw a2, 16(ra)<br>    |
|  38|[0x80003298]<br>0xFFFFFFF6|- rs1_val == -3<br>                                                                                                                                                                                                                      |[0x800003a4]:add a2, a0, a1<br> [0x800003a8]:sw a2, 20(ra)<br>    |
|  39|[0x8000329c]<br>0x0FFFFFFB|- rs1_val == -5<br>                                                                                                                                                                                                                      |[0x800003b4]:add a2, a0, a1<br> [0x800003b8]:sw a2, 24(ra)<br>    |
|  40|[0x800032a0]<br>0x00007FF7|- rs2_val == 32768<br> - rs1_val == -9<br>                                                                                                                                                                                               |[0x800003c4]:add a2, a0, a1<br> [0x800003c8]:sw a2, 28(ra)<br>    |
|  41|[0x800032a4]<br>0xFFFFFFDE|- rs2_val == -17<br> - rs1_val == -17<br>                                                                                                                                                                                                |[0x800003d4]:add a2, a0, a1<br> [0x800003d8]:sw a2, 32(ra)<br>    |
|  42|[0x800032a8]<br>0x0007FFDF|- rs1_val == -33<br>                                                                                                                                                                                                                     |[0x800003e4]:add a2, a0, a1<br> [0x800003e8]:sw a2, 36(ra)<br>    |
|  43|[0x800032ac]<br>0x0007FFBF|- rs1_val == -65<br>                                                                                                                                                                                                                     |[0x800003f4]:add a2, a0, a1<br> [0x800003f8]:sw a2, 40(ra)<br>    |
|  44|[0x800032b0]<br>0x00003F7F|- rs1_val == -129<br>                                                                                                                                                                                                                    |[0x80000404]:add a2, a0, a1<br> [0x80000408]:sw a2, 44(ra)<br>    |
|  45|[0x800032b4]<br>0xFBFFFEFE|- rs2_val == -67108865<br> - rs1_val == -257<br>                                                                                                                                                                                         |[0x80000418]:add a2, a0, a1<br> [0x8000041c]:sw a2, 48(ra)<br>    |
|  46|[0x800032b8]<br>0x0000FDFF|- rs2_val == 65536<br> - rs1_val == -513<br>                                                                                                                                                                                             |[0x80000428]:add a2, a0, a1<br> [0x8000042c]:sw a2, 52(ra)<br>    |
|  47|[0x800032bc]<br>0xFFFBFFFB|- rs2_val == -262145<br>                                                                                                                                                                                                                 |[0x8000043c]:add a2, a0, a1<br> [0x80000440]:sw a2, 56(ra)<br>    |
|  48|[0x800032c0]<br>0xFFF8001F|- rs2_val == -524289<br>                                                                                                                                                                                                                 |[0x80000450]:add a2, a0, a1<br> [0x80000454]:sw a2, 60(ra)<br>    |
|  49|[0x800032c4]<br>0xFFDFFFBE|- rs2_val == -2097153<br>                                                                                                                                                                                                                |[0x80000464]:add a2, a0, a1<br> [0x80000468]:sw a2, 64(ra)<br>    |
|  50|[0x800032c8]<br>0xAA6AAAA9|- rs2_val == -4194305<br> - rs1_val == -1431655766<br>                                                                                                                                                                                   |[0x8000047c]:add a2, a0, a1<br> [0x80000480]:sw a2, 68(ra)<br>    |
|  51|[0x800032cc]<br>0xFDFF7FFE|- rs2_val == -33554433<br> - rs1_val == -32769<br>                                                                                                                                                                                       |[0x80000494]:add a2, a0, a1<br> [0x80000498]:sw a2, 72(ra)<br>    |
|  52|[0x800032d0]<br>0xF3FFFFFF|- rs2_val == -268435457<br>                                                                                                                                                                                                              |[0x800004a8]:add a2, a0, a1<br> [0x800004ac]:sw a2, 76(ra)<br>    |
|  53|[0x800032d4]<br>0xE007FFFF|- rs2_val == -536870913<br>                                                                                                                                                                                                              |[0x800004bc]:add a2, a0, a1<br> [0x800004c0]:sw a2, 80(ra)<br>    |
|  54|[0x800032d8]<br>0xC0FFFFFF|- rs2_val == -1073741825<br>                                                                                                                                                                                                             |[0x800004d0]:add a2, a0, a1<br> [0x800004d4]:sw a2, 84(ra)<br>    |
|  55|[0x800032dc]<br>0x007FFBFF|- rs2_val == 8388608<br> - rs1_val == -1025<br>                                                                                                                                                                                          |[0x800004e0]:add a2, a0, a1<br> [0x800004e4]:sw a2, 88(ra)<br>    |
|  56|[0x800032e0]<br>0xFFFFF7F6|- rs2_val == -9<br> - rs1_val == -2049<br>                                                                                                                                                                                               |[0x800004f4]:add a2, a0, a1<br> [0x800004f8]:sw a2, 92(ra)<br>    |
|  57|[0x800032e4]<br>0xFBFFEFFE|- rs1_val == -4097<br>                                                                                                                                                                                                                   |[0x8000050c]:add a2, a0, a1<br> [0x80000510]:sw a2, 96(ra)<br>    |
|  58|[0x800032e8]<br>0xFFFFDFFE|- rs1_val == -8193<br>                                                                                                                                                                                                                   |[0x80000520]:add a2, a0, a1<br> [0x80000524]:sw a2, 100(ra)<br>   |
|  59|[0x800032ec]<br>0xFFFF3FFE|- rs2_val == -32769<br> - rs1_val == -16385<br>                                                                                                                                                                                          |[0x80000538]:add a2, a0, a1<br> [0x8000053c]:sw a2, 104(ra)<br>   |
|  60|[0x800032f0]<br>0xFFFEFFBE|- rs2_val == -65<br> - rs1_val == -65537<br>                                                                                                                                                                                             |[0x8000054c]:add a2, a0, a1<br> [0x80000550]:sw a2, 108(ra)<br>   |
|  61|[0x800032f4]<br>0xFFFEFFFF|- rs1_val == -131073<br>                                                                                                                                                                                                                 |[0x80000560]:add a2, a0, a1<br> [0x80000564]:sw a2, 112(ra)<br>   |
|  62|[0x800032f8]<br>0x3FFBFFFF|- rs2_val == 1073741824<br> - rs1_val == -262145<br>                                                                                                                                                                                     |[0x80000574]:add a2, a0, a1<br> [0x80000578]:sw a2, 116(ra)<br>   |
|  63|[0x800032fc]<br>0xFFF7FFF5|- rs1_val == -524289<br>                                                                                                                                                                                                                 |[0x80000588]:add a2, a0, a1<br> [0x8000058c]:sw a2, 120(ra)<br>   |
|  64|[0x80003300]<br>0xF7EFFFFE|- rs1_val == -1048577<br>                                                                                                                                                                                                                |[0x800005a0]:add a2, a0, a1<br> [0x800005a4]:sw a2, 124(ra)<br>   |
|  65|[0x80003304]<br>0xFDDFFFFE|- rs1_val == -2097153<br>                                                                                                                                                                                                                |[0x800005b8]:add a2, a0, a1<br> [0x800005bc]:sw a2, 128(ra)<br>   |
|  66|[0x80003308]<br>0x55155554|- rs1_val == -4194305<br>                                                                                                                                                                                                                |[0x800005d0]:add a2, a0, a1<br> [0x800005d4]:sw a2, 132(ra)<br>   |
|  67|[0x8000330c]<br>0xFF8001FF|- rs2_val == 512<br> - rs1_val == -8388609<br>                                                                                                                                                                                           |[0x800005e4]:add a2, a0, a1<br> [0x800005e8]:sw a2, 136(ra)<br>   |
|  68|[0x80003310]<br>0xFDFFFFFB|- rs1_val == -33554433<br>                                                                                                                                                                                                               |[0x800005f8]:add a2, a0, a1<br> [0x800005fc]:sw a2, 140(ra)<br>   |
|  69|[0x80003314]<br>0xA6AAAAA9|- rs1_val == -67108865<br>                                                                                                                                                                                                               |[0x80000610]:add a2, a0, a1<br> [0x80000614]:sw a2, 144(ra)<br>   |
|  70|[0x80003318]<br>0xF80000FF|- rs2_val == 256<br>                                                                                                                                                                                                                     |[0x80000624]:add a2, a0, a1<br> [0x80000628]:sw a2, 148(ra)<br>   |
|  71|[0x8000331c]<br>0xF000007F|- rs2_val == 128<br> - rs1_val == -268435457<br>                                                                                                                                                                                         |[0x80000638]:add a2, a0, a1<br> [0x8000063c]:sw a2, 152(ra)<br>   |
|  72|[0x80003320]<br>0x35555554|- rs1_val == -536870913<br>                                                                                                                                                                                                              |[0x80000650]:add a2, a0, a1<br> [0x80000654]:sw a2, 156(ra)<br>   |
|  73|[0x80003324]<br>0xBFFBFFFE|- rs1_val == -1073741825<br>                                                                                                                                                                                                             |[0x80000668]:add a2, a0, a1<br> [0x8000066c]:sw a2, 160(ra)<br>   |
|  74|[0x80003328]<br>0x55555755|- rs1_val == 1431655765<br>                                                                                                                                                                                                              |[0x8000067c]:add a2, a0, a1<br> [0x80000680]:sw a2, 164(ra)<br>   |
|  75|[0x8000332c]<br>0x00000005|- rs2_val == 2<br>                                                                                                                                                                                                                       |[0x8000068c]:add a2, a0, a1<br> [0x80000690]:sw a2, 168(ra)<br>   |
|  76|[0x80003330]<br>0xFFFFFFFC|- rs2_val == 4<br>                                                                                                                                                                                                                       |[0x8000069c]:add a2, a0, a1<br> [0x800006a0]:sw a2, 172(ra)<br>   |
|  77|[0x80003334]<br>0x00040008|- rs2_val == 8<br>                                                                                                                                                                                                                       |[0x800006ac]:add a2, a0, a1<br> [0x800006b0]:sw a2, 176(ra)<br>   |
|  78|[0x80003338]<br>0x04000040|- rs2_val == 64<br>                                                                                                                                                                                                                      |[0x800006bc]:add a2, a0, a1<br> [0x800006c0]:sw a2, 180(ra)<br>   |
|  79|[0x8000333c]<br>0x40000400|- rs2_val == 1024<br>                                                                                                                                                                                                                    |[0x800006cc]:add a2, a0, a1<br> [0x800006d0]:sw a2, 184(ra)<br>   |
|  80|[0x80003340]<br>0xFFFFCFFF|- rs2_val == 4096<br>                                                                                                                                                                                                                    |[0x800006e0]:add a2, a0, a1<br> [0x800006e4]:sw a2, 188(ra)<br>   |
|  81|[0x80003344]<br>0x00001FFB|- rs2_val == 8192<br>                                                                                                                                                                                                                    |[0x800006f0]:add a2, a0, a1<br> [0x800006f4]:sw a2, 192(ra)<br>   |
|  82|[0x80003348]<br>0x00060000|- rs2_val == 262144<br>                                                                                                                                                                                                                  |[0x80000700]:add a2, a0, a1<br> [0x80000704]:sw a2, 196(ra)<br>   |
|  83|[0x8000334c]<br>0x00FF7FFF|- rs2_val == 16777216<br>                                                                                                                                                                                                                |[0x80000714]:add a2, a0, a1<br> [0x80000718]:sw a2, 200(ra)<br>   |
|  84|[0x80003350]<br>0x02000000|- rs2_val == 33554432<br>                                                                                                                                                                                                                |[0x80000724]:add a2, a0, a1<br> [0x80000728]:sw a2, 204(ra)<br>   |
|  85|[0x80003354]<br>0x07FBFFFF|- rs2_val == 134217728<br>                                                                                                                                                                                                               |[0x80000738]:add a2, a0, a1<br> [0x8000073c]:sw a2, 208(ra)<br>   |
|  86|[0x80003358]<br>0x20000005|- rs2_val == 536870912<br>                                                                                                                                                                                                               |[0x80000748]:add a2, a0, a1<br> [0x8000074c]:sw a2, 212(ra)<br>   |
|  87|[0x8000335c]<br>0xFFFFFFDD|- rs2_val == -2<br>                                                                                                                                                                                                                      |[0x80000758]:add a2, a0, a1<br> [0x8000075c]:sw a2, 216(ra)<br>   |
|  88|[0x80003360]<br>0xFFFBFFFC|- rs2_val == -3<br>                                                                                                                                                                                                                      |[0x8000076c]:add a2, a0, a1<br> [0x80000770]:sw a2, 220(ra)<br>   |
|  89|[0x80003364]<br>0xFFFFFFDA|- rs2_val == -33<br>                                                                                                                                                                                                                     |[0x8000077c]:add a2, a0, a1<br> [0x80000780]:sw a2, 224(ra)<br>   |
|  90|[0x80003368]<br>0x001FFF7F|- rs2_val == -129<br>                                                                                                                                                                                                                    |[0x8000078c]:add a2, a0, a1<br> [0x80000790]:sw a2, 228(ra)<br>   |
|  91|[0x8000336c]<br>0x0003FEFF|- rs2_val == -257<br>                                                                                                                                                                                                                    |[0x8000079c]:add a2, a0, a1<br> [0x800007a0]:sw a2, 232(ra)<br>   |
|  92|[0x80003370]<br>0xFFFFFC1F|- rs2_val == -1025<br>                                                                                                                                                                                                                   |[0x800007ac]:add a2, a0, a1<br> [0x800007b0]:sw a2, 236(ra)<br>   |
|  93|[0x80003374]<br>0xFFF7F7FE|- rs2_val == -2049<br>                                                                                                                                                                                                                   |[0x800007c4]:add a2, a0, a1<br> [0x800007c8]:sw a2, 240(ra)<br>   |
|  94|[0x80003378]<br>0xF7FFEFFE|- rs2_val == -4097<br>                                                                                                                                                                                                                   |[0x800007dc]:add a2, a0, a1<br> [0x800007e0]:sw a2, 244(ra)<br>   |
|  95|[0x8000337c]<br>0xFFFFE07F|- rs2_val == -8193<br>                                                                                                                                                                                                                   |[0x800007f0]:add a2, a0, a1<br> [0x800007f4]:sw a2, 248(ra)<br>   |
|  96|[0x80003380]<br>0xFFFFC01F|- rs2_val == -16385<br>                                                                                                                                                                                                                  |[0x80000804]:add a2, a0, a1<br> [0x80000808]:sw a2, 252(ra)<br>   |
|  97|[0x80003384]<br>0xFFFAFFFE|- rs2_val == -65537<br>                                                                                                                                                                                                                  |[0x8000081c]:add a2, a0, a1<br> [0x80000820]:sw a2, 256(ra)<br>   |
|  98|[0x80003388]<br>0x77FFFFFE|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                                                                                                                                             |[0x80000834]:add a2, a0, a1<br> [0x80000838]:sw a2, 260(ra)<br>   |
|  99|[0x8000338c]<br>0x80000001|- rs1_val == 1<br>                                                                                                                                                                                                                       |[0x80000844]:add a2, a0, a1<br> [0x80000848]:sw a2, 264(ra)<br>   |
| 100|[0x80003394]<br>0x00020010|- rs2_val == 16<br>                                                                                                                                                                                                                      |[0x80000864]:add a2, a0, a1<br> [0x80000868]:sw a2, 272(ra)<br>   |
