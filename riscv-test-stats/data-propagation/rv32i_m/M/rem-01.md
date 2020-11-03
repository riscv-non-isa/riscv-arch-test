
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000880')]      |
| SIG_REGION                | [('0x80003204', '0x800033a8', '105 words')]      |
| COV_LABELS                | rem      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/rem-01.S/rem-01.S    |
| Total Number of coverpoints| 246     |
| Total Signature Updates   | 102      |
| Total Coverpoints Covered | 246      |
| STAT1                     | 101      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000870]:rem a2, a0, a1
      [0x80000874]:sw a2, 332(t1)
 -- Signature Address: 0x800033a4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : rem
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 1
      - rs1_val == 268435456






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

|s.no|        signature         |                                                                                       coverpoints                                                                                        |                               code                                |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000000|- opcode : rem<br> - rs1 : x20<br> - rs2 : x20<br> - rd : x20<br> - rs1 == rs2 == rd<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == rs2_val<br>                                       |[0x80000108]:rem s4, s4, s4<br> [0x8000010c]:sw s4, 0(fp)<br>      |
|   2|[0x80003214]<br>0x00000000|- rs1 : x3<br> - rs2 : x27<br> - rd : x27<br> - rs2 == rd != rs1<br> - rs1_val != rs2_val<br> - rs1_val == 0<br> - rs2_val == -2097153<br>                                                |[0x8000011c]:rem s11, gp, s11<br> [0x80000120]:sw s11, 4(fp)<br>   |
|   3|[0x80003218]<br>0x0000003E|- rs1 : x28<br> - rs2 : x13<br> - rd : x28<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == -65<br> - rs1_val == 2147483647<br> |[0x80000130]:rem t3, t3, a3<br> [0x80000134]:sw t3, 8(fp)<br>      |
|   4|[0x8000321c]<br>0x00000001|- rs1 : x6<br> - rs2 : x19<br> - rd : x9<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == 1<br>                                                                             |[0x80000140]:rem s1, t1, s3<br> [0x80000144]:sw s1, 12(fp)<br>     |
|   5|[0x80003220]<br>0x00000000|- rs1 : x0<br> - rs2 : x0<br> - rd : x29<br> - rs1 == rs2 != rd<br> - rs2_val == 0<br>                                                                                                    |[0x80000154]:rem t4, zero, zero<br> [0x80000158]:sw t4, 16(fp)<br> |
|   6|[0x80003224]<br>0x00200000|- rs1 : x1<br> - rs2 : x14<br> - rd : x23<br> - rs1_val == 2097152<br>                                                                                                                    |[0x80000164]:rem s7, ra, a4<br> [0x80000168]:sw s7, 20(fp)<br>     |
|   7|[0x80003228]<br>0xFFFFFFFA|- rs1 : x27<br> - rs2 : x4<br> - rd : x1<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br>                                               |[0x80000178]:rem ra, s11, tp<br> [0x8000017c]:sw ra, 24(fp)<br>    |
|   8|[0x8000322c]<br>0x00000000|- rs1 : x18<br> - rs2 : x30<br> - rd : x0<br> - rs2_val == 1<br> - rs1_val == 268435456<br>                                                                                               |[0x80000188]:rem zero, s2, t5<br> [0x8000018c]:sw zero, 28(fp)<br> |
|   9|[0x80003230]<br>0x00000000|- rs1 : x30<br> - rs2 : x2<br> - rd : x6<br> - rs1_val < 0 and rs2_val < 0<br> - rs2_val == -8388609<br> - rs1_val == -8388609<br>                                                        |[0x800001a0]:rem t1, t5, sp<br> [0x800001a4]:sw t1, 32(fp)<br>     |
|  10|[0x80003234]<br>0x00000002|- rs1 : x29<br> - rs2 : x17<br> - rd : x11<br> - rs2_val == 1431655765<br> - rs1_val == 2<br>                                                                                             |[0x800001b4]:rem a1, t4, a7<br> [0x800001b8]:sw a1, 36(fp)<br>     |
|  11|[0x80003238]<br>0x00000004|- rs1 : x31<br> - rs2 : x21<br> - rd : x19<br> - rs2_val == -4097<br> - rs1_val == 4<br>                                                                                                  |[0x800001c8]:rem s3, t6, s5<br> [0x800001cc]:sw s3, 40(fp)<br>     |
|  12|[0x8000323c]<br>0x00000000|- rs1 : x7<br> - rs2 : x11<br> - rd : x5<br> - rs2_val == -2<br> - rs1_val == 8<br>                                                                                                       |[0x800001d8]:rem t0, t2, a1<br> [0x800001dc]:sw t0, 44(fp)<br>     |
|  13|[0x80003240]<br>0x00000001|- rs1 : x10<br> - rs2 : x29<br> - rd : x16<br> - rs2_val == -5<br> - rs1_val == 16<br>                                                                                                    |[0x800001e8]:rem a6, a0, t4<br> [0x800001ec]:sw a6, 48(fp)<br>     |
|  14|[0x80003244]<br>0x00000020|- rs1 : x23<br> - rs2 : x15<br> - rd : x31<br> - rs1_val == 32<br>                                                                                                                        |[0x800001fc]:rem t6, s7, a5<br> [0x80000200]:sw t6, 52(fp)<br>     |
|  15|[0x80003248]<br>0x00000040|- rs1 : x2<br> - rs2 : x22<br> - rd : x7<br> - rs2_val == 256<br> - rs1_val == 64<br>                                                                                                     |[0x8000020c]:rem t2, sp, s6<br> [0x80000210]:sw t2, 56(fp)<br>     |
|  16|[0x8000324c]<br>0x00000080|- rs1 : x14<br> - rs2 : x25<br> - rd : x13<br> - rs2_val == 1048576<br> - rs1_val == 128<br>                                                                                              |[0x8000021c]:rem a3, a4, s9<br> [0x80000220]:sw a3, 60(fp)<br>     |
|  17|[0x80003250]<br>0x00000100|- rs1 : x11<br> - rs2 : x5<br> - rd : x22<br> - rs2_val == -16385<br> - rs1_val == 256<br>                                                                                                |[0x80000230]:rem s6, a1, t0<br> [0x80000234]:sw s6, 64(fp)<br>     |
|  18|[0x80003254]<br>0x00000200|- rs1 : x12<br> - rs2 : x6<br> - rd : x10<br> - rs2_val == -1025<br> - rs1_val == 512<br>                                                                                                 |[0x80000240]:rem a0, a2, t1<br> [0x80000244]:sw a0, 68(fp)<br>     |
|  19|[0x80003258]<br>0x00000400|- rs1 : x9<br> - rs2 : x26<br> - rd : x3<br> - rs2_val == 2097152<br> - rs1_val == 1024<br>                                                                                               |[0x80000258]:rem gp, s1, s10<br> [0x8000025c]:sw gp, 0(t1)<br>     |
|  20|[0x8000325c]<br>0x00000800|- rs1 : x25<br> - rs2 : x7<br> - rd : x21<br> - rs2_val == -8193<br> - rs1_val == 2048<br>                                                                                                |[0x80000270]:rem s5, s9, t2<br> [0x80000274]:sw s5, 4(t1)<br>      |
|  21|[0x80003260]<br>0x00001000|- rs1 : x5<br> - rs2 : x9<br> - rd : x2<br> - rs2_val == -536870913<br> - rs1_val == 4096<br>                                                                                             |[0x80000284]:rem sp, t0, s1<br> [0x80000288]:sw sp, 8(t1)<br>      |
|  22|[0x80003264]<br>0x00000041|- rs1 : x13<br> - rs2 : x1<br> - rd : x18<br> - rs2_val == -129<br> - rs1_val == 8192<br>                                                                                                 |[0x80000294]:rem s2, a3, ra<br> [0x80000298]:sw s2, 12(t1)<br>     |
|  23|[0x80003268]<br>0x00000001|- rs1 : x21<br> - rs2 : x12<br> - rd : x25<br> - rs2_val == -3<br> - rs1_val == 16384<br>                                                                                                 |[0x800002a4]:rem s9, s5, a2<br> [0x800002a8]:sw s9, 16(t1)<br>     |
|  24|[0x8000326c]<br>0x00000009|- rs1 : x17<br> - rs2 : x31<br> - rd : x4<br> - rs2_val == -17<br> - rs1_val == 32768<br>                                                                                                 |[0x800002b4]:rem tp, a7, t6<br> [0x800002b8]:sw tp, 20(t1)<br>     |
|  25|[0x80003270]<br>0x00010000|- rs1 : x22<br> - rs2 : x18<br> - rd : x24<br> - rs2_val == 524288<br> - rs1_val == 65536<br>                                                                                             |[0x800002c4]:rem s8, s6, s2<br> [0x800002c8]:sw s8, 24(t1)<br>     |
|  26|[0x80003274]<br>0x00020000|- rs1 : x24<br> - rs2 : x10<br> - rd : x14<br> - rs2_val == 134217728<br> - rs1_val == 131072<br>                                                                                         |[0x800002d4]:rem a4, s8, a0<br> [0x800002d8]:sw a4, 28(t1)<br>     |
|  27|[0x80003278]<br>0x00040000|- rs1 : x26<br> - rs2 : x3<br> - rd : x17<br> - rs2_val == -16777217<br> - rs1_val == 262144<br>                                                                                          |[0x800002e8]:rem a7, s10, gp<br> [0x800002ec]:sw a7, 32(t1)<br>    |
|  28|[0x8000327c]<br>0x00080000|- rs1 : x4<br> - rs2 : x23<br> - rd : x30<br> - rs2_val == 67108864<br> - rs1_val == 524288<br>                                                                                           |[0x800002f8]:rem t5, tp, s7<br> [0x800002fc]:sw t5, 36(t1)<br>     |
|  29|[0x80003280]<br>0x00100000|- rs1 : x16<br> - rs2 : x28<br> - rd : x26<br> - rs1_val == 1048576<br>                                                                                                                   |[0x80000308]:rem s10, a6, t3<br> [0x8000030c]:sw s10, 40(t1)<br>   |
|  30|[0x80003284]<br>0x00000000|- rs1 : x8<br> - rs2 : x24<br> - rd : x12<br> - rs2_val == 2048<br> - rs1_val == 4194304<br>                                                                                              |[0x8000031c]:rem a2, fp, s8<br> [0x80000320]:sw a2, 44(t1)<br>     |
|  31|[0x80003288]<br>0x00000002|- rs1 : x15<br> - rs2 : x16<br> - rd : x8<br> - rs1_val == 8388608<br>                                                                                                                    |[0x8000032c]:rem fp, a5, a6<br> [0x80000330]:sw fp, 48(t1)<br>     |
|  32|[0x8000328c]<br>0x00000001|- rs1 : x19<br> - rs2 : x8<br> - rd : x15<br> - rs1_val == 16777216<br>                                                                                                                   |[0x8000033c]:rem a5, s3, fp<br> [0x80000340]:sw a5, 52(t1)<br>     |
|  33|[0x80003290]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                                                                                 |[0x80000350]:rem a2, a0, a1<br> [0x80000354]:sw a2, 56(t1)<br>     |
|  34|[0x80003294]<br>0x04000000|- rs1_val == 67108864<br>                                                                                                                                                                 |[0x80000360]:rem a2, a0, a1<br> [0x80000364]:sw a2, 60(t1)<br>     |
|  35|[0x80003298]<br>0x08000000|- rs2_val == 1073741824<br> - rs1_val == 134217728<br>                                                                                                                                    |[0x80000370]:rem a2, a0, a1<br> [0x80000374]:sw a2, 64(t1)<br>     |
|  36|[0x8000329c]<br>0x20000000|- rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == 536870912<br>                                                                                                   |[0x80000380]:rem a2, a0, a1<br> [0x80000384]:sw a2, 68(t1)<br>     |
|  37|[0x800032a0]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                                                               |[0x80000390]:rem a2, a0, a1<br> [0x80000394]:sw a2, 72(t1)<br>     |
|  38|[0x800032a4]<br>0xFFFFFFFE|- rs2_val == -9<br> - rs1_val == -2<br>                                                                                                                                                   |[0x800003a0]:rem a2, a0, a1<br> [0x800003a4]:sw a2, 76(t1)<br>     |
|  39|[0x800032a8]<br>0xFFFFFFFD|- rs1_val == -3<br>                                                                                                                                                                       |[0x800003b4]:rem a2, a0, a1<br> [0x800003b8]:sw a2, 80(t1)<br>     |
|  40|[0x800032ac]<br>0xFFFFFFFB|- rs2_val == -134217729<br> - rs1_val == -5<br>                                                                                                                                           |[0x800003c8]:rem a2, a0, a1<br> [0x800003cc]:sw a2, 84(t1)<br>     |
|  41|[0x800032b0]<br>0xFFFFFFF7|- rs2_val == -131073<br> - rs1_val == -9<br>                                                                                                                                              |[0x800003dc]:rem a2, a0, a1<br> [0x800003e0]:sw a2, 88(t1)<br>     |
|  42|[0x800032b4]<br>0xFFFFFFEF|- rs2_val == -33<br> - rs1_val == -17<br>                                                                                                                                                 |[0x800003ec]:rem a2, a0, a1<br> [0x800003f0]:sw a2, 92(t1)<br>     |
|  43|[0x800032b8]<br>0xFFFFFFDF|- rs1_val == -33<br>                                                                                                                                                                      |[0x800003fc]:rem a2, a0, a1<br> [0x80000400]:sw a2, 96(t1)<br>     |
|  44|[0x800032bc]<br>0xFFFFFBFF|- rs2_val == -262145<br> - rs1_val == -1025<br>                                                                                                                                           |[0x80000410]:rem a2, a0, a1<br> [0x80000414]:sw a2, 100(t1)<br>    |
|  45|[0x800032c0]<br>0x00000200|- rs2_val == -524289<br>                                                                                                                                                                  |[0x80000424]:rem a2, a0, a1<br> [0x80000428]:sw a2, 104(t1)<br>    |
|  46|[0x800032c4]<br>0xFFFFFFFD|- rs2_val == -1048577<br>                                                                                                                                                                 |[0x80000438]:rem a2, a0, a1<br> [0x8000043c]:sw a2, 108(t1)<br>    |
|  47|[0x800032c8]<br>0x00000008|- rs2_val == -4194305<br>                                                                                                                                                                 |[0x8000044c]:rem a2, a0, a1<br> [0x80000450]:sw a2, 112(t1)<br>    |
|  48|[0x800032cc]<br>0x00000003|- rs2_val == -33554433<br>                                                                                                                                                                |[0x80000460]:rem a2, a0, a1<br> [0x80000464]:sw a2, 116(t1)<br>    |
|  49|[0x800032d0]<br>0x00000003|- rs2_val == -67108865<br>                                                                                                                                                                |[0x80000474]:rem a2, a0, a1<br> [0x80000478]:sw a2, 120(t1)<br>    |
|  50|[0x800032d4]<br>0x00020000|- rs2_val == -268435457<br>                                                                                                                                                               |[0x80000488]:rem a2, a0, a1<br> [0x8000048c]:sw a2, 124(t1)<br>    |
|  51|[0x800032d8]<br>0x02000000|- rs2_val == -1073741825<br>                                                                                                                                                              |[0x8000049c]:rem a2, a0, a1<br> [0x800004a0]:sw a2, 128(t1)<br>    |
|  52|[0x800032dc]<br>0xFFFFF7FF|- rs2_val == -1431655766<br> - rs1_val == -2049<br>                                                                                                                                       |[0x800004b4]:rem a2, a0, a1<br> [0x800004b8]:sw a2, 132(t1)<br>    |
|  53|[0x800032e0]<br>0xFFFFFFBF|- rs1_val == -65<br>                                                                                                                                                                      |[0x800004c8]:rem a2, a0, a1<br> [0x800004cc]:sw a2, 136(t1)<br>    |
|  54|[0x800032e4]<br>0xFFFFFF7F|- rs1_val == -129<br>                                                                                                                                                                     |[0x800004dc]:rem a2, a0, a1<br> [0x800004e0]:sw a2, 140(t1)<br>    |
|  55|[0x800032e8]<br>0xFFFFFEFF|- rs1_val == -257<br>                                                                                                                                                                     |[0x800004f0]:rem a2, a0, a1<br> [0x800004f4]:sw a2, 144(t1)<br>    |
|  56|[0x800032ec]<br>0xFFFFFDFF|- rs1_val == -513<br>                                                                                                                                                                     |[0x80000504]:rem a2, a0, a1<br> [0x80000508]:sw a2, 148(t1)<br>    |
|  57|[0x800032f0]<br>0xFFFFEFFF|- rs1_val == -4097<br>                                                                                                                                                                    |[0x80000518]:rem a2, a0, a1<br> [0x8000051c]:sw a2, 152(t1)<br>    |
|  58|[0x800032f4]<br>0x00000000|- rs1_val == -8193<br>                                                                                                                                                                    |[0x8000052c]:rem a2, a0, a1<br> [0x80000530]:sw a2, 156(t1)<br>    |
|  59|[0x800032f8]<br>0xFFFFFFEF|- rs1_val == -16385<br>                                                                                                                                                                   |[0x80000540]:rem a2, a0, a1<br> [0x80000544]:sw a2, 160(t1)<br>    |
|  60|[0x800032fc]<br>0xFFFF7FFF|- rs1_val == -32769<br>                                                                                                                                                                   |[0x80000558]:rem a2, a0, a1<br> [0x8000055c]:sw a2, 164(t1)<br>    |
|  61|[0x80003300]<br>0xFFFFFFFF|- rs2_val == 16384<br> - rs1_val == -65537<br>                                                                                                                                            |[0x8000056c]:rem a2, a0, a1<br> [0x80000570]:sw a2, 168(t1)<br>    |
|  62|[0x80003304]<br>0xFFFFFFFB|- rs1_val == -131073<br>                                                                                                                                                                  |[0x80000580]:rem a2, a0, a1<br> [0x80000584]:sw a2, 172(t1)<br>    |
|  63|[0x80003308]<br>0xFFFFFFFF|- rs1_val == -262145<br>                                                                                                                                                                  |[0x80000594]:rem a2, a0, a1<br> [0x80000598]:sw a2, 176(t1)<br>    |
|  64|[0x8000330c]<br>0xFFF7FFFF|- rs1_val == -524289<br>                                                                                                                                                                  |[0x800005a8]:rem a2, a0, a1<br> [0x800005ac]:sw a2, 180(t1)<br>    |
|  65|[0x80003310]<br>0xFFFFFFFB|- rs2_val == -513<br> - rs1_val == -1048577<br>                                                                                                                                           |[0x800005bc]:rem a2, a0, a1<br> [0x800005c0]:sw a2, 184(t1)<br>    |
|  66|[0x80003314]<br>0xFFFFFFFF|- rs1_val == -2097153<br>                                                                                                                                                                 |[0x800005d0]:rem a2, a0, a1<br> [0x800005d4]:sw a2, 188(t1)<br>    |
|  67|[0x80003318]<br>0xFFFFFFBF|- rs2_val == -257<br> - rs1_val == -4194305<br>                                                                                                                                           |[0x800005e4]:rem a2, a0, a1<br> [0x800005e8]:sw a2, 192(t1)<br>    |
|  68|[0x8000331c]<br>0xFFFFFFEF|- rs1_val == -16777217<br>                                                                                                                                                                |[0x800005f8]:rem a2, a0, a1<br> [0x800005fc]:sw a2, 196(t1)<br>    |
|  69|[0x80003320]<br>0xFFFE00FE|- rs1_val == -33554433<br>                                                                                                                                                                |[0x80000610]:rem a2, a0, a1<br> [0x80000614]:sw a2, 200(t1)<br>    |
|  70|[0x80003324]<br>0xFFFFFFFF|- rs1_val == -67108865<br>                                                                                                                                                                |[0x80000624]:rem a2, a0, a1<br> [0x80000628]:sw a2, 204(t1)<br>    |
|  71|[0x80003328]<br>0xFFE0003E|- rs1_val == -134217729<br>                                                                                                                                                               |[0x8000063c]:rem a2, a0, a1<br> [0x80000640]:sw a2, 208(t1)<br>    |
|  72|[0x8000332c]<br>0xFFFFFFFF|- rs1_val == -268435457<br>                                                                                                                                                               |[0x80000650]:rem a2, a0, a1<br> [0x80000654]:sw a2, 212(t1)<br>    |
|  73|[0x80003330]<br>0xDFFFFFFF|- rs1_val == -536870913<br>                                                                                                                                                               |[0x80000668]:rem a2, a0, a1<br> [0x8000066c]:sw a2, 216(t1)<br>    |
|  74|[0x80003334]<br>0xFC00000E|- rs1_val == -1073741825<br>                                                                                                                                                              |[0x80000680]:rem a2, a0, a1<br> [0x80000684]:sw a2, 220(t1)<br>    |
|  75|[0x80003338]<br>0x00000555|- rs1_val == 1431655765<br>                                                                                                                                                               |[0x80000698]:rem a2, a0, a1<br> [0x8000069c]:sw a2, 224(t1)<br>    |
|  76|[0x8000333c]<br>0xAAAAAAAA|- rs1_val == -1431655766<br>                                                                                                                                                              |[0x800006ac]:rem a2, a0, a1<br> [0x800006b0]:sw a2, 228(t1)<br>    |
|  77|[0x80003340]<br>0xFFFFFFFF|- rs2_val == 2<br>                                                                                                                                                                        |[0x800006c0]:rem a2, a0, a1<br> [0x800006c4]:sw a2, 232(t1)<br>    |
|  78|[0x80003344]<br>0x00000000|- rs2_val == 4<br>                                                                                                                                                                        |[0x800006d0]:rem a2, a0, a1<br> [0x800006d4]:sw a2, 236(t1)<br>    |
|  79|[0x80003348]<br>0xFFFFFFFF|- rs2_val == 8<br>                                                                                                                                                                        |[0x800006e0]:rem a2, a0, a1<br> [0x800006e4]:sw a2, 240(t1)<br>    |
|  80|[0x8000334c]<br>0x00000007|- rs2_val == 16<br>                                                                                                                                                                       |[0x800006f0]:rem a2, a0, a1<br> [0x800006f4]:sw a2, 244(t1)<br>    |
|  81|[0x80003350]<br>0x00000001|- rs2_val == 32<br>                                                                                                                                                                       |[0x80000700]:rem a2, a0, a1<br> [0x80000704]:sw a2, 248(t1)<br>    |
|  82|[0x80003354]<br>0x00000000|- rs2_val == 64<br>                                                                                                                                                                       |[0x80000710]:rem a2, a0, a1<br> [0x80000714]:sw a2, 252(t1)<br>    |
|  83|[0x80003358]<br>0xFFFFFFF8|- rs2_val == 128<br>                                                                                                                                                                      |[0x80000720]:rem a2, a0, a1<br> [0x80000724]:sw a2, 256(t1)<br>    |
|  84|[0x8000335c]<br>0x00000100|- rs2_val == 512<br>                                                                                                                                                                      |[0x80000730]:rem a2, a0, a1<br> [0x80000734]:sw a2, 260(t1)<br>    |
|  85|[0x80003360]<br>0x00000005|- rs2_val == 1024<br>                                                                                                                                                                     |[0x80000740]:rem a2, a0, a1<br> [0x80000744]:sw a2, 264(t1)<br>    |
|  86|[0x80003364]<br>0xFFFFFFFF|- rs2_val == 262144<br>                                                                                                                                                                   |[0x80000754]:rem a2, a0, a1<br> [0x80000758]:sw a2, 268(t1)<br>    |
|  87|[0x80003368]<br>0x00000000|- rs2_val == 4194304<br>                                                                                                                                                                  |[0x80000764]:rem a2, a0, a1<br> [0x80000768]:sw a2, 272(t1)<br>    |
|  88|[0x8000336c]<br>0xFFFFF7FF|- rs2_val == -65537<br>                                                                                                                                                                   |[0x8000077c]:rem a2, a0, a1<br> [0x80000780]:sw a2, 276(t1)<br>    |
|  89|[0x80003370]<br>0x00040000|- rs2_val == 8388608<br>                                                                                                                                                                  |[0x8000078c]:rem a2, a0, a1<br> [0x80000790]:sw a2, 280(t1)<br>    |
|  90|[0x80003374]<br>0x00000002|- rs2_val == 16777216<br>                                                                                                                                                                 |[0x8000079c]:rem a2, a0, a1<br> [0x800007a0]:sw a2, 284(t1)<br>    |
|  91|[0x80003378]<br>0x00800000|- rs2_val == 33554432<br>                                                                                                                                                                 |[0x800007ac]:rem a2, a0, a1<br> [0x800007b0]:sw a2, 288(t1)<br>    |
|  92|[0x8000337c]<br>0x00020000|- rs2_val == 268435456<br>                                                                                                                                                                |[0x800007bc]:rem a2, a0, a1<br> [0x800007c0]:sw a2, 292(t1)<br>    |
|  93|[0x80003380]<br>0xFFBFFFFF|- rs2_val == 536870912<br>                                                                                                                                                                |[0x800007d0]:rem a2, a0, a1<br> [0x800007d4]:sw a2, 296(t1)<br>    |
|  94|[0x80003384]<br>0xFFFFEFFF|- rs2_val == -32769<br>                                                                                                                                                                   |[0x800007e8]:rem a2, a0, a1<br> [0x800007ec]:sw a2, 300(t1)<br>    |
|  95|[0x80003388]<br>0xFFFFF80E|- rs2_val == -2049<br>                                                                                                                                                                    |[0x80000800]:rem a2, a0, a1<br> [0x80000804]:sw a2, 304(t1)<br>    |
|  96|[0x8000338c]<br>0x00000005|- rs2_val == 4096<br>                                                                                                                                                                     |[0x80000810]:rem a2, a0, a1<br> [0x80000814]:sw a2, 308(t1)<br>    |
|  97|[0x80003390]<br>0x00000200|- rs2_val == 8192<br>                                                                                                                                                                     |[0x80000820]:rem a2, a0, a1<br> [0x80000824]:sw a2, 312(t1)<br>    |
|  98|[0x80003394]<br>0x00000040|- rs2_val == 32768<br>                                                                                                                                                                    |[0x80000830]:rem a2, a0, a1<br> [0x80000834]:sw a2, 316(t1)<br>    |
|  99|[0x80003398]<br>0xFFFFFFEF|- rs2_val == 65536<br>                                                                                                                                                                    |[0x80000840]:rem a2, a0, a1<br> [0x80000844]:sw a2, 320(t1)<br>    |
| 100|[0x8000339c]<br>0x00000000|- rs2_val == 131072<br>                                                                                                                                                                   |[0x80000850]:rem a2, a0, a1<br> [0x80000854]:sw a2, 324(t1)<br>    |
| 101|[0x800033a0]<br>0xFFFFFFFE|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                                                                                                                              |[0x80000860]:rem a2, a0, a1<br> [0x80000864]:sw a2, 328(t1)<br>    |
