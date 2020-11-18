
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
| COV_LABELS                | xor      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/xor-01.S/xor-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 101      |
| STAT1                     | 101      |
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

|s.no|        signature         |                                                                                                             coverpoints                                                                                                              |                               code                                |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003204]<br>0x7FFFEFFF|- opcode : xor<br> - rs1 : x26<br> - rs2 : x8<br> - rd : x8<br> - rs2 == rd != rs1<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val != rs2_val<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -4097<br> - rs1_val == -2147483648<br> |[0x8000010c]:xor fp, s10, fp<br> [0x80000110]:sw fp, 0(s3)<br>     |
|   2|[0x80003208]<br>0x00000000|- rs1 : x21<br> - rs2 : x0<br> - rd : x2<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == rs2_val<br> - rs2_val == 0<br> - rs1_val == 0<br>                                                                             |[0x80000120]:xor sp, s5, zero<br> [0x80000124]:sw sp, 4(s3)<br>    |
|   3|[0x8000320c]<br>0x00000000|- rs1 : x4<br> - rs2 : x4<br> - rd : x18<br> - rs1 == rs2 != rd<br> - rs1_val > 0 and rs2_val > 0<br> - rs2_val == 32<br> - rs1_val == 32<br>                                                                                         |[0x80000134]:xor s2, tp, tp<br> [0x80000138]:sw s2, 8(s3)<br>      |
|   4|[0x80003210]<br>0x00000000|- rs1 : x22<br> - rs2 : x22<br> - rd : x22<br> - rs1 == rs2 == rd<br> - rs2_val == 131072<br> - rs1_val == 131072<br>                                                                                                                 |[0x80000144]:xor s6, s6, s6<br> [0x80000148]:sw s6, 12(s3)<br>     |
|   5|[0x80003214]<br>0x7FFDFFFF|- rs1 : x14<br> - rs2 : x23<br> - rd : x14<br> - rs1 == rd != rs2<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -131073<br>                                                                           |[0x80000158]:xor a4, a4, s7<br> [0x8000015c]:sw a4, 16(s3)<br>     |
|   6|[0x80003218]<br>0xFDFFFFFF|- rs1 : x12<br> - rs2 : x27<br> - rd : x7<br> - rs1_val == -33554433<br>                                                                                                                                                              |[0x8000016c]:xor t2, a2, s11<br> [0x80000170]:sw t2, 20(s3)<br>    |
|   7|[0x8000321c]<br>0x7FFFFFFF|- rs1 : x0<br> - rs2 : x9<br> - rd : x10<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br>                                                                                                                             |[0x80000184]:xor a0, zero, s1<br> [0x80000188]:sw a0, 24(s3)<br>   |
|   8|[0x80003220]<br>0x20000001|- rs1 : x29<br> - rs2 : x12<br> - rd : x9<br> - rs2_val == 1<br> - rs1_val == 536870912<br>                                                                                                                                           |[0x80000194]:xor s1, t4, a2<br> [0x80000198]:sw s1, 28(s3)<br>     |
|   9|[0x80003224]<br>0xAA2AAAAA|- rs1 : x23<br> - rs2 : x25<br> - rd : x16<br> - rs1_val > 0 and rs2_val < 0<br> - rs2_val == -1431655766<br> - rs1_val == 8388608<br>                                                                                                |[0x800001a8]:xor a6, s7, s9<br> [0x800001ac]:sw a6, 32(s3)<br>     |
|  10|[0x80003228]<br>0x00000000|- rs1 : x6<br> - rs2 : x17<br> - rd : x25<br>                                                                                                                                                                                         |[0x800001b8]:xor s9, t1, a7<br> [0x800001bc]:sw s9, 36(s3)<br>     |
|  11|[0x8000322c]<br>0x00400002|- rs1 : x20<br> - rs2 : x1<br> - rd : x21<br> - rs2_val == 4194304<br> - rs1_val == 2<br>                                                                                                                                             |[0x800001c8]:xor s5, s4, ra<br> [0x800001cc]:sw s5, 40(s3)<br>     |
|  12|[0x80003230]<br>0xFFEFFFFB|- rs1 : x30<br> - rs2 : x18<br> - rd : x6<br> - rs2_val == -1048577<br> - rs1_val == 4<br>                                                                                                                                            |[0x800001dc]:xor t1, t5, s2<br> [0x800001e0]:sw t1, 44(s3)<br>     |
|  13|[0x80003234]<br>0x00000001|- rs1 : x15<br> - rs2 : x11<br> - rd : x12<br> - rs1_val == 8<br>                                                                                                                                                                     |[0x800001ec]:xor a2, a5, a1<br> [0x800001f0]:sw a2, 48(s3)<br>     |
|  14|[0x80003238]<br>0xFFFFEFEF|- rs1 : x8<br> - rs2 : x13<br> - rd : x23<br> - rs1_val == 16<br>                                                                                                                                                                     |[0x80000200]:xor s7, fp, a3<br> [0x80000204]:sw s7, 52(s3)<br>     |
|  15|[0x8000323c]<br>0xFFFFFFFF|- rs1 : x9<br> - rs2 : x26<br> - rd : x5<br> - rs2_val == -33<br>                                                                                                                                                                     |[0x80000210]:xor t0, s1, s10<br> [0x80000214]:sw t0, 56(s3)<br>    |
|  16|[0x80003240]<br>0x04000040|- rs1 : x25<br> - rs2 : x30<br> - rd : x15<br> - rs2_val == 67108864<br> - rs1_val == 64<br>                                                                                                                                          |[0x80000220]:xor a5, s9, t5<br> [0x80000224]:sw a5, 60(s3)<br>     |
|  17|[0x80003244]<br>0x00000084|- rs1 : x2<br> - rs2 : x10<br> - rd : x4<br> - rs2_val == 4<br> - rs1_val == 128<br>                                                                                                                                                  |[0x80000230]:xor tp, sp, a0<br> [0x80000234]:sw tp, 64(s3)<br>     |
|  18|[0x80003248]<br>0xC0000100|- rs1 : x28<br> - rs2 : x3<br> - rd : x30<br> - rs1_val == 256<br>                                                                                                                                                                    |[0x80000240]:xor t5, t3, gp<br> [0x80000244]:sw t5, 68(s3)<br>     |
|  19|[0x8000324c]<br>0x3FFFFDFF|- rs1 : x17<br> - rs2 : x29<br> - rd : x3<br> - rs1_val == 512<br>                                                                                                                                                                    |[0x8000025c]:xor gp, a7, t4<br> [0x80000260]:sw gp, 0(tp)<br>      |
|  20|[0x80003250]<br>0x00000408|- rs1 : x19<br> - rs2 : x21<br> - rd : x11<br> - rs2_val == 8<br> - rs1_val == 1024<br>                                                                                                                                               |[0x8000026c]:xor a1, s3, s5<br> [0x80000270]:sw a1, 4(tp)<br>      |
|  21|[0x80003254]<br>0x00400800|- rs1 : x16<br> - rs2 : x6<br> - rd : x27<br> - rs1_val == 2048<br>                                                                                                                                                                   |[0x80000280]:xor s11, a6, t1<br> [0x80000284]:sw s11, 8(tp)<br>    |
|  22|[0x80003258]<br>0x00000000|- rs1 : x3<br> - rs2 : x5<br> - rd : x0<br> - rs2_val == 1431655765<br> - rs1_val == 4096<br>                                                                                                                                         |[0x80000294]:xor zero, gp, t0<br> [0x80000298]:sw zero, 12(tp)<br> |
|  23|[0x8000325c]<br>0x00002006|- rs1 : x1<br> - rs2 : x2<br> - rd : x31<br> - rs1_val == 8192<br>                                                                                                                                                                    |[0x800002a4]:xor t6, ra, sp<br> [0x800002a8]:sw t6, 16(tp)<br>     |
|  24|[0x80003260]<br>0x00004007|- rs1 : x31<br> - rs2 : x19<br> - rd : x1<br> - rs1_val == 16384<br>                                                                                                                                                                  |[0x800002b4]:xor ra, t6, s3<br> [0x800002b8]:sw ra, 20(tp)<br>     |
|  25|[0x80003264]<br>0xFFFF6FFF|- rs1 : x13<br> - rs2 : x16<br> - rd : x19<br> - rs1_val == 32768<br>                                                                                                                                                                 |[0x800002c8]:xor s3, a3, a6<br> [0x800002cc]:sw s3, 24(tp)<br>     |
|  26|[0x80003268]<br>0x80010000|- rs1 : x5<br> - rs2 : x14<br> - rd : x26<br> - rs1_val == 65536<br>                                                                                                                                                                  |[0x800002d8]:xor s10, t0, a4<br> [0x800002dc]:sw s10, 28(tp)<br>   |
|  27|[0x8000326c]<br>0x7FFDFFFF|- rs1 : x24<br> - rs2 : x31<br> - rd : x28<br>                                                                                                                                                                                        |[0x800002ec]:xor t3, s8, t6<br> [0x800002f0]:sw t3, 32(tp)<br>     |
|  28|[0x80003270]<br>0x00040008|- rs1 : x27<br> - rs2 : x28<br> - rd : x29<br> - rs1_val == 262144<br>                                                                                                                                                                |[0x800002fc]:xor t4, s11, t3<br> [0x80000300]:sw t4, 36(tp)<br>    |
|  29|[0x80003274]<br>0xC0080000|- rs1 : x11<br> - rs2 : x24<br> - rd : x20<br> - rs1_val == 524288<br>                                                                                                                                                                |[0x8000030c]:xor s4, a1, s8<br> [0x80000310]:sw s4, 40(tp)<br>     |
|  30|[0x80003278]<br>0x01100000|- rs1 : x18<br> - rs2 : x15<br> - rd : x17<br> - rs2_val == 16777216<br> - rs1_val == 1048576<br>                                                                                                                                     |[0x8000031c]:xor a7, s2, a5<br> [0x80000320]:sw a7, 44(tp)<br>     |
|  31|[0x8000327c]<br>0xFFDFFFFA|- rs1 : x10<br> - rs2 : x20<br> - rd : x13<br> - rs1_val == 2097152<br>                                                                                                                                                               |[0x8000032c]:xor a3, a0, s4<br> [0x80000330]:sw a3, 48(tp)<br>     |
|  32|[0x80003280]<br>0x00401000|- rs1 : x7<br> - rs2_val == 4096<br> - rs1_val == 4194304<br>                                                                                                                                                                         |[0x8000033c]:xor t5, t2, gp<br> [0x80000340]:sw t5, 52(tp)<br>     |
|  33|[0x80003284]<br>0xFEFFFFF7|- rs2 : x7<br> - rs2_val == -9<br> - rs1_val == 16777216<br>                                                                                                                                                                          |[0x8000034c]:xor s6, t3, t2<br> [0x80000350]:sw s6, 56(tp)<br>     |
|  34|[0x80003288]<br>0x02000400|- rd : x24<br> - rs2_val == 1024<br> - rs1_val == 33554432<br>                                                                                                                                                                        |[0x8000035c]:xor s8, s5, a4<br> [0x80000360]:sw s8, 60(tp)<br>     |
|  35|[0x8000328c]<br>0x04000800|- rs2_val == 2048<br> - rs1_val == 67108864<br>                                                                                                                                                                                       |[0x80000370]:xor a2, a0, a1<br> [0x80000374]:sw a2, 64(tp)<br>     |
|  36|[0x80003290]<br>0x08000100|- rs2_val == 256<br> - rs1_val == 134217728<br>                                                                                                                                                                                       |[0x80000380]:xor a2, a0, a1<br> [0x80000384]:sw a2, 68(tp)<br>     |
|  37|[0x80003294]<br>0x45555555|- rs1_val == 268435456<br>                                                                                                                                                                                                            |[0x80000394]:xor a2, a0, a1<br> [0x80000398]:sw a2, 72(tp)<br>     |
|  38|[0x80003298]<br>0xBFFFFEFF|- rs2_val == -257<br> - rs1_val == 1073741824<br>                                                                                                                                                                                     |[0x800003a4]:xor a2, a0, a1<br> [0x800003a8]:sw a2, 76(tp)<br>     |
|  39|[0x8000329c]<br>0xEFFFFFFE|- rs1_val < 0 and rs2_val > 0<br> - rs2_val == 268435456<br> - rs1_val == -2<br>                                                                                                                                                      |[0x800003b4]:xor a2, a0, a1<br> [0x800003b8]:sw a2, 80(tp)<br>     |
|  40|[0x800032a0]<br>0x00020002|- rs2_val == -131073<br> - rs1_val == -3<br>                                                                                                                                                                                          |[0x800003c8]:xor a2, a0, a1<br> [0x800003cc]:sw a2, 84(tp)<br>     |
|  41|[0x800032a4]<br>0x00004004|- rs2_val == -16385<br> - rs1_val == -5<br>                                                                                                                                                                                           |[0x800003dc]:xor a2, a0, a1<br> [0x800003e0]:sw a2, 88(tp)<br>     |
|  42|[0x800032a8]<br>0x00001008|- rs1_val == -9<br>                                                                                                                                                                                                                   |[0x800003f0]:xor a2, a0, a1<br> [0x800003f4]:sw a2, 92(tp)<br>     |
|  43|[0x800032ac]<br>0x00080010|- rs2_val == -524289<br> - rs1_val == -17<br>                                                                                                                                                                                         |[0x80000404]:xor a2, a0, a1<br> [0x80000408]:sw a2, 96(tp)<br>     |
|  44|[0x800032b0]<br>0xFFBFFFDF|- rs1_val == -33<br>                                                                                                                                                                                                                  |[0x80000414]:xor a2, a0, a1<br> [0x80000418]:sw a2, 100(tp)<br>    |
|  45|[0x800032b4]<br>0x00080040|- rs1_val == -65<br>                                                                                                                                                                                                                  |[0x80000428]:xor a2, a0, a1<br> [0x8000042c]:sw a2, 104(tp)<br>    |
|  46|[0x800032b8]<br>0x00000880|- rs2_val == -2049<br> - rs1_val == -129<br>                                                                                                                                                                                          |[0x8000043c]:xor a2, a0, a1<br> [0x80000440]:sw a2, 108(tp)<br>    |
|  47|[0x800032bc]<br>0x00002100|- rs2_val == -8193<br> - rs1_val == -257<br>                                                                                                                                                                                          |[0x80000450]:xor a2, a0, a1<br> [0x80000454]:sw a2, 112(tp)<br>    |
|  48|[0x800032c0]<br>0xBFFBFFFF|- rs2_val == -262145<br>                                                                                                                                                                                                              |[0x80000464]:xor a2, a0, a1<br> [0x80000468]:sw a2, 116(tp)<br>    |
|  49|[0x800032c4]<br>0xFFDFBFFF|- rs2_val == -2097153<br>                                                                                                                                                                                                             |[0x80000478]:xor a2, a0, a1<br> [0x8000047c]:sw a2, 120(tp)<br>    |
|  50|[0x800032c8]<br>0xFFBFEFFF|- rs2_val == -4194305<br>                                                                                                                                                                                                             |[0x8000048c]:xor a2, a0, a1<br> [0x80000490]:sw a2, 124(tp)<br>    |
|  51|[0x800032cc]<br>0x20800000|- rs2_val == -8388609<br> - rs1_val == -536870913<br>                                                                                                                                                                                 |[0x800004a4]:xor a2, a0, a1<br> [0x800004a8]:sw a2, 128(tp)<br>    |
|  52|[0x800032d0]<br>0x01000040|- rs2_val == -16777217<br>                                                                                                                                                                                                            |[0x800004b8]:xor a2, a0, a1<br> [0x800004bc]:sw a2, 132(tp)<br>    |
|  53|[0x800032d4]<br>0x02000004|- rs2_val == -33554433<br>                                                                                                                                                                                                            |[0x800004cc]:xor a2, a0, a1<br> [0x800004d0]:sw a2, 136(tp)<br>    |
|  54|[0x800032d8]<br>0xFBFFFFFA|- rs2_val == -67108865<br>                                                                                                                                                                                                            |[0x800004e0]:xor a2, a0, a1<br> [0x800004e4]:sw a2, 140(tp)<br>    |
|  55|[0x800032dc]<br>0x08080000|- rs2_val == -134217729<br> - rs1_val == -524289<br>                                                                                                                                                                                  |[0x800004f8]:xor a2, a0, a1<br> [0x800004fc]:sw a2, 144(tp)<br>    |
|  56|[0x800032e0]<br>0x10000003|- rs2_val == -268435457<br>                                                                                                                                                                                                           |[0x8000050c]:xor a2, a0, a1<br> [0x80000510]:sw a2, 148(tp)<br>    |
|  57|[0x800032e4]<br>0x20000007|- rs2_val == -536870913<br>                                                                                                                                                                                                           |[0x80000520]:xor a2, a0, a1<br> [0x80000524]:sw a2, 152(tp)<br>    |
|  58|[0x800032e8]<br>0x40010000|- rs2_val == -1073741825<br> - rs1_val == -65537<br>                                                                                                                                                                                  |[0x80000538]:xor a2, a0, a1<br> [0x8000053c]:sw a2, 156(tp)<br>    |
|  59|[0x800032ec]<br>0x01000200|- rs1_val == -513<br>                                                                                                                                                                                                                 |[0x8000054c]:xor a2, a0, a1<br> [0x80000550]:sw a2, 160(tp)<br>    |
|  60|[0x800032f0]<br>0xFDFFFBFF|- rs2_val == 33554432<br> - rs1_val == -1025<br>                                                                                                                                                                                      |[0x8000055c]:xor a2, a0, a1<br> [0x80000560]:sw a2, 164(tp)<br>    |
|  61|[0x800032f4]<br>0xFFFFF5FF|- rs2_val == 512<br> - rs1_val == -2049<br>                                                                                                                                                                                           |[0x80000570]:xor a2, a0, a1<br> [0x80000574]:sw a2, 168(tp)<br>    |
|  62|[0x800032f8]<br>0xFFFFFFFF|- rs1_val == -4097<br>                                                                                                                                                                                                                |[0x80000584]:xor a2, a0, a1<br> [0x80000588]:sw a2, 172(tp)<br>    |
|  63|[0x800032fc]<br>0x00002003|- rs1_val == -8193<br>                                                                                                                                                                                                                |[0x80000598]:xor a2, a0, a1<br> [0x8000059c]:sw a2, 176(tp)<br>    |
|  64|[0x80003300]<br>0xFFFFBFF7|- rs1_val == -16385<br>                                                                                                                                                                                                               |[0x800005ac]:xor a2, a0, a1<br> [0x800005b0]:sw a2, 180(tp)<br>    |
|  65|[0x80003304]<br>0x00008800|- rs1_val == -32769<br>                                                                                                                                                                                                               |[0x800005c4]:xor a2, a0, a1<br> [0x800005c8]:sw a2, 184(tp)<br>    |
|  66|[0x80003308]<br>0xFFFBFFEF|- rs2_val == 16<br> - rs1_val == -262145<br>                                                                                                                                                                                          |[0x800005d8]:xor a2, a0, a1<br> [0x800005dc]:sw a2, 188(tp)<br>    |
|  67|[0x8000330c]<br>0xAABAAAAA|- rs1_val == -1048577<br>                                                                                                                                                                                                             |[0x800005f0]:xor a2, a0, a1<br> [0x800005f4]:sw a2, 192(tp)<br>    |
|  68|[0x80003310]<br>0x00200080|- rs2_val == -129<br> - rs1_val == -2097153<br>                                                                                                                                                                                       |[0x80000604]:xor a2, a0, a1<br> [0x80000608]:sw a2, 196(tp)<br>    |
|  69|[0x80003314]<br>0x3FBFFFFF|- rs1_val == -4194305<br>                                                                                                                                                                                                             |[0x80000618]:xor a2, a0, a1<br> [0x8000061c]:sw a2, 200(tp)<br>    |
|  70|[0x80003318]<br>0xFF7FFEFF|- rs1_val == -8388609<br>                                                                                                                                                                                                             |[0x8000062c]:xor a2, a0, a1<br> [0x80000630]:sw a2, 204(tp)<br>    |
|  71|[0x8000331c]<br>0xFEFDFFFF|- rs1_val == -16777217<br>                                                                                                                                                                                                            |[0x80000640]:xor a2, a0, a1<br> [0x80000644]:sw a2, 208(tp)<br>    |
|  72|[0x80003320]<br>0x04000009|- rs1_val == -67108865<br>                                                                                                                                                                                                            |[0x80000654]:xor a2, a0, a1<br> [0x80000658]:sw a2, 212(tp)<br>    |
|  73|[0x80003324]<br>0x08000100|- rs1_val == -134217729<br>                                                                                                                                                                                                           |[0x80000668]:xor a2, a0, a1<br> [0x8000066c]:sw a2, 216(tp)<br>    |
|  74|[0x80003328]<br>0x18000000|- rs1_val == -268435457<br>                                                                                                                                                                                                           |[0x80000680]:xor a2, a0, a1<br> [0x80000684]:sw a2, 220(tp)<br>    |
|  75|[0x8000332c]<br>0x40010000|- rs2_val == -65537<br> - rs1_val == -1073741825<br>                                                                                                                                                                                  |[0x80000698]:xor a2, a0, a1<br> [0x8000069c]:sw a2, 224(tp)<br>    |
|  76|[0x80003330]<br>0x55555755|- rs1_val == 1431655765<br>                                                                                                                                                                                                           |[0x800006ac]:xor a2, a0, a1<br> [0x800006b0]:sw a2, 228(tp)<br>    |
|  77|[0x80003334]<br>0xAEAAAAAA|- rs1_val == -1431655766<br>                                                                                                                                                                                                          |[0x800006c0]:xor a2, a0, a1<br> [0x800006c4]:sw a2, 232(tp)<br>    |
|  78|[0x80003338]<br>0x00000004|- rs2_val == 2<br>                                                                                                                                                                                                                    |[0x800006d0]:xor a2, a0, a1<br> [0x800006d4]:sw a2, 236(tp)<br>    |
|  79|[0x8000333c]<br>0xFBFFFFBF|- rs2_val == 64<br>                                                                                                                                                                                                                   |[0x800006e4]:xor a2, a0, a1<br> [0x800006e8]:sw a2, 240(tp)<br>    |
|  80|[0x80003340]<br>0x00002080|- rs2_val == 128<br>                                                                                                                                                                                                                  |[0x800006f4]:xor a2, a0, a1<br> [0x800006f8]:sw a2, 244(tp)<br>    |
|  81|[0x80003344]<br>0xF7FFDFFF|- rs2_val == 8192<br>                                                                                                                                                                                                                 |[0x80000708]:xor a2, a0, a1<br> [0x8000070c]:sw a2, 248(tp)<br>    |
|  82|[0x80003348]<br>0xFFDFBFFF|- rs2_val == 16384<br>                                                                                                                                                                                                                |[0x8000071c]:xor a2, a0, a1<br> [0x80000720]:sw a2, 252(tp)<br>    |
|  83|[0x8000334c]<br>0xFFFF6FFF|- rs2_val == 32768<br>                                                                                                                                                                                                                |[0x80000730]:xor a2, a0, a1<br> [0x80000734]:sw a2, 256(tp)<br>    |
|  84|[0x80003350]<br>0x08010000|- rs2_val == 65536<br>                                                                                                                                                                                                                |[0x80000740]:xor a2, a0, a1<br> [0x80000744]:sw a2, 260(tp)<br>    |
|  85|[0x80003354]<br>0x10040000|- rs2_val == 262144<br>                                                                                                                                                                                                               |[0x80000750]:xor a2, a0, a1<br> [0x80000754]:sw a2, 264(tp)<br>    |
|  86|[0x80003358]<br>0xFFF7FEFF|- rs2_val == 524288<br>                                                                                                                                                                                                               |[0x80000760]:xor a2, a0, a1<br> [0x80000764]:sw a2, 268(tp)<br>    |
|  87|[0x8000335c]<br>0x10100000|- rs2_val == 1048576<br>                                                                                                                                                                                                              |[0x80000770]:xor a2, a0, a1<br> [0x80000774]:sw a2, 272(tp)<br>    |
|  88|[0x80003360]<br>0x20200000|- rs2_val == 2097152<br>                                                                                                                                                                                                              |[0x80000780]:xor a2, a0, a1<br> [0x80000784]:sw a2, 276(tp)<br>    |
|  89|[0x80003364]<br>0x00800800|- rs2_val == 8388608<br>                                                                                                                                                                                                              |[0x80000794]:xor a2, a0, a1<br> [0x80000798]:sw a2, 280(tp)<br>    |
|  90|[0x80003368]<br>0xF7FFFFFD|- rs2_val == 134217728<br>                                                                                                                                                                                                            |[0x800007a4]:xor a2, a0, a1<br> [0x800007a8]:sw a2, 284(tp)<br>    |
|  91|[0x8000336c]<br>0x20000000|- rs2_val == 536870912<br>                                                                                                                                                                                                            |[0x800007b4]:xor a2, a0, a1<br> [0x800007b8]:sw a2, 288(tp)<br>    |
|  92|[0x80003370]<br>0xBFFDFFFF|- rs2_val == 1073741824<br>                                                                                                                                                                                                           |[0x800007c8]:xor a2, a0, a1<br> [0x800007cc]:sw a2, 292(tp)<br>    |
|  93|[0x80003374]<br>0x00000001|- rs2_val == -2<br>                                                                                                                                                                                                                   |[0x800007d8]:xor a2, a0, a1<br> [0x800007dc]:sw a2, 296(tp)<br>    |
|  94|[0x80003378]<br>0xFFFFFF7B|- rs2_val == -5<br>                                                                                                                                                                                                                   |[0x800007e8]:xor a2, a0, a1<br> [0x800007ec]:sw a2, 300(tp)<br>    |
|  95|[0x8000337c]<br>0xFFFFFFEF|- rs2_val == -17<br>                                                                                                                                                                                                                  |[0x800007f8]:xor a2, a0, a1<br> [0x800007fc]:sw a2, 304(tp)<br>    |
|  96|[0x80003380]<br>0xFFFFFFB8|- rs2_val == -65<br>                                                                                                                                                                                                                  |[0x80000808]:xor a2, a0, a1<br> [0x8000080c]:sw a2, 308(tp)<br>    |
|  97|[0x80003384]<br>0x01000400|- rs2_val == -1025<br>                                                                                                                                                                                                                |[0x8000081c]:xor a2, a0, a1<br> [0x80000820]:sw a2, 312(tp)<br>    |
|  98|[0x80003388]<br>0x00002200|- rs2_val == -513<br>                                                                                                                                                                                                                 |[0x80000830]:xor a2, a0, a1<br> [0x80000834]:sw a2, 316(tp)<br>    |
|  99|[0x8000338c]<br>0xFFFF7FFD|- rs2_val == -32769<br>                                                                                                                                                                                                               |[0x80000844]:xor a2, a0, a1<br> [0x80000848]:sw a2, 320(tp)<br>    |
| 100|[0x80003390]<br>0xFFFFFFFC|- rs1_val == 1<br> - rs2_val == -3<br>                                                                                                                                                                                                |[0x80000854]:xor a2, a0, a1<br> [0x80000858]:sw a2, 324(tp)<br>    |
| 101|[0x80003394]<br>0x7FFFFFDF|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                                                                                                                                          |[0x80000868]:xor a2, a0, a1<br> [0x8000086c]:sw a2, 328(tp)<br>    |