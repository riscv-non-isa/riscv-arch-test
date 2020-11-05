
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
| SIG_REGION                | [('0x80003204', '0x80003394', '100 words')]      |
| COV_LABELS                | add      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/add-01.S/add-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 100      |
| STAT1                     | 97      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000820]:add a2, a0, a1
      [0x80000824]:sw a2, 292(t1)
 -- Signature Address: 0x80003384 Data: 0x00020001
 -- Redundant Coverpoints hit by the op
      - opcode : add
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs1_val == 1
      - rs2_val == 131072




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000084c]:add a2, a0, a1
      [0x80000850]:sw a2, 300(t1)
 -- Signature Address: 0x8000338c Data: 0x8000001F
 -- Redundant Coverpoints hit by the op
      - opcode : add
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == (2**(xlen-1)-1)
      - rs2_val == 2147483647
      - rs1_val == 32




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000860]:add a2, a0, a1
      [0x80000864]:sw a2, 304(t1)
 -- Signature Address: 0x80003390 Data: 0xFFC00FFF
 -- Redundant Coverpoints hit by the op
      - opcode : add
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -4194305
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

|s.no|        signature         |                                                                                            coverpoints                                                                                             |                               code                                |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00080000|- opcode : add<br> - rs1 : x18<br> - rs2 : x18<br> - rd : x10<br> - rs1 == rs2 != rd<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == rs2_val<br> - rs2_val == 262144<br> - rs1_val == 262144<br> |[0x80000108]:add a0, s2, s2<br> [0x8000010c]:sw a0, 0(tp)<br>      |
|   2|[0x80003208]<br>0xC0000000|- rs1 : x26<br> - rs2 : x28<br> - rd : x28<br> - rs2 == rd != rs1<br> - rs1_val != rs2_val<br> - rs1_val == 0<br>                                                                                   |[0x80000118]:add t3, s10, t3<br> [0x8000011c]:sw t3, 4(tp)<br>     |
|   3|[0x8000320c]<br>0x7FFFFFFE|- rs1 : x19<br> - rs2 : x29<br> - rd : x19<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                |[0x8000012c]:add s3, s3, t4<br> [0x80000130]:sw s3, 8(tp)<br>      |
|   4|[0x80003210]<br>0x00040000|- rs1 : x31<br> - rs2 : x31<br> - rd : x31<br> - rs1 == rs2 == rd<br> - rs2_val == 131072<br> - rs1_val == 131072<br>                                                                               |[0x8000013c]:add t6, t6, t6<br> [0x80000140]:sw t6, 12(tp)<br>     |
|   5|[0x80003214]<br>0x80000004|- rs1 : x22<br> - rs2 : x6<br> - rd : x5<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == 4<br>                          |[0x8000014c]:add t0, s6, t1<br> [0x80000150]:sw t0, 16(tp)<br>     |
|   6|[0x80003218]<br>0x00000200|- rs1 : x3<br> - rs2 : x22<br> - rd : x15<br> - rs2_val == 0<br> - rs1_val == 512<br>                                                                                                               |[0x8000015c]:add a5, gp, s6<br> [0x80000160]:sw a5, 20(tp)<br>     |
|   7|[0x8000321c]<br>0x7FFFFFFF|- rs1 : x0<br> - rs2 : x27<br> - rd : x6<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br>                                                                                           |[0x80000174]:add t1, zero, s11<br> [0x80000178]:sw t1, 24(tp)<br>  |
|   8|[0x80003220]<br>0xFFFFFFFA|- rs1 : x7<br> - rs2 : x1<br> - rd : x26<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == 1<br>                                                                                                   |[0x80000184]:add s10, t2, ra<br> [0x80000188]:sw s10, 28(tp)<br>   |
|   9|[0x80003224]<br>0xF77FFFFE|- rs1 : x1<br> - rs2 : x2<br> - rd : x16<br> - rs1_val < 0 and rs2_val < 0<br> - rs2_val == -134217729<br> - rs1_val == -8388609<br>                                                                |[0x8000019c]:add a6, ra, sp<br> [0x800001a0]:sw a6, 32(tp)<br>     |
|  10|[0x80003228]<br>0x00001000|- rs1 : x11<br> - rs2 : x3<br> - rd : x17<br> - rs2_val == 2048<br> - rs1_val == 2048<br>                                                                                                           |[0x800001b4]:add a7, a1, gp<br> [0x800001b8]:sw a7, 36(tp)<br>     |
|  11|[0x8000322c]<br>0x00080002|- rs1 : x13<br> - rs2 : x12<br> - rd : x7<br> - rs2_val == 524288<br> - rs1_val == 2<br>                                                                                                            |[0x800001c4]:add t2, a3, a2<br> [0x800001c8]:sw t2, 40(tp)<br>     |
|  12|[0x80003230]<br>0xFFFFFE07|- rs1 : x16<br> - rs2 : x17<br> - rd : x29<br> - rs2_val == -513<br> - rs1_val == 8<br>                                                                                                             |[0x800001d4]:add t4, a6, a7<br> [0x800001d8]:sw t4, 44(tp)<br>     |
|  13|[0x80003234]<br>0x00000012|- rs1 : x29<br> - rs2 : x21<br> - rd : x22<br> - rs2_val == 2<br> - rs1_val == 16<br>                                                                                                               |[0x800001e4]:add s6, t4, s5<br> [0x800001e8]:sw s6, 48(tp)<br>     |
|  14|[0x80003238]<br>0x00000020|- rs1 : x2<br> - rs2 : x0<br> - rd : x14<br> - rs1_val == 32<br>                                                                                                                                    |[0x800001f8]:add a4, sp, zero<br> [0x800001fc]:sw a4, 52(tp)<br>   |
|  15|[0x8000323c]<br>0x40000040|- rs1 : x21<br> - rs2 : x11<br> - rd : x13<br> - rs2_val == 1073741824<br> - rs1_val == 64<br>                                                                                                      |[0x80000208]:add a3, s5, a1<br> [0x8000020c]:sw a3, 56(tp)<br>     |
|  16|[0x80003240]<br>0x4000007F|- rs1 : x10<br> - rs2 : x25<br> - rd : x11<br> - rs1_val == 128<br>                                                                                                                                 |[0x8000021c]:add a1, a0, s9<br> [0x80000220]:sw a1, 60(tp)<br>     |
|  17|[0x80003244]<br>0xE00000FF|- rs1 : x24<br> - rs2 : x19<br> - rd : x8<br> - rs2_val == -536870913<br> - rs1_val == 256<br>                                                                                                      |[0x80000230]:add fp, s8, s3<br> [0x80000234]:sw fp, 64(tp)<br>     |
|  18|[0x80003248]<br>0x00000500|- rs1 : x27<br> - rs2 : x13<br> - rd : x18<br> - rs2_val == 256<br> - rs1_val == 1024<br>                                                                                                           |[0x80000240]:add s2, s11, a3<br> [0x80000244]:sw s2, 68(tp)<br>    |
|  19|[0x8000324c]<br>0x00000000|- rs1 : x25<br> - rs2 : x10<br> - rd : x0<br> - rs2_val == -4194305<br> - rs1_val == 4096<br>                                                                                                       |[0x80000254]:add zero, s9, a0<br> [0x80000258]:sw zero, 72(tp)<br> |
|  20|[0x80003250]<br>0x00002020|- rs1 : x17<br> - rs2 : x14<br> - rd : x25<br> - rs2_val == 32<br> - rs1_val == 8192<br>                                                                                                            |[0x80000264]:add s9, a7, a4<br> [0x80000268]:sw s9, 76(tp)<br>     |
|  21|[0x80003254]<br>0xC0003FFF|- rs1 : x6<br> - rs2 : x20<br> - rd : x12<br> - rs2_val == -1073741825<br> - rs1_val == 16384<br>                                                                                                   |[0x80000278]:add a2, t1, s4<br> [0x8000027c]:sw a2, 80(tp)<br>     |
|  22|[0x80003258]<br>0x00008004|- rs1 : x28<br> - rs2 : x15<br> - rd : x20<br> - rs2_val == 4<br> - rs1_val == 32768<br>                                                                                                            |[0x80000288]:add s4, t3, a5<br> [0x8000028c]:sw s4, 84(tp)<br>     |
|  23|[0x8000325c]<br>0x55565555|- rs1 : x9<br> - rs2 : x16<br> - rd : x24<br> - rs2_val == 1431655765<br> - rs1_val == 65536<br>                                                                                                    |[0x8000029c]:add s8, s1, a6<br> [0x800002a0]:sw s8, 88(tp)<br>     |
|  24|[0x80003260]<br>0x00020020|- rs1 : x12<br> - rs2 : x8<br> - rd : x9<br>                                                                                                                                                        |[0x800002b4]:add s1, a2, fp<br> [0x800002b8]:sw s1, 0(t1)<br>      |
|  25|[0x80003264]<br>0x0003DFFF|- rs1 : x14<br> - rs2 : x5<br> - rd : x2<br> - rs2_val == -8193<br>                                                                                                                                 |[0x800002c8]:add sp, a4, t0<br> [0x800002cc]:sw sp, 4(t1)<br>      |
|  26|[0x80003268]<br>0x0007FFF6|- rs1 : x5<br> - rs2 : x9<br> - rd : x23<br> - rs1_val == 524288<br>                                                                                                                                |[0x800002d8]:add s7, t0, s1<br> [0x800002dc]:sw s7, 8(t1)<br>      |
|  27|[0x8000326c]<br>0x000FBFFF|- rs1 : x20<br> - rs2 : x7<br> - rd : x27<br> - rs2_val == -16385<br> - rs1_val == 1048576<br>                                                                                                      |[0x800002ec]:add s11, s4, t2<br> [0x800002f0]:sw s11, 12(t1)<br>   |
|  28|[0x80003270]<br>0x00200200|- rs1 : x4<br> - rs2 : x26<br> - rd : x1<br> - rs2_val == 512<br> - rs1_val == 2097152<br>                                                                                                          |[0x800002fc]:add ra, tp, s10<br> [0x80000300]:sw ra, 16(t1)<br>    |
|  29|[0x80003274]<br>0x00800000|- rs1 : x23<br> - rs2 : x30<br> - rd : x21<br> - rs2_val == 4194304<br> - rs1_val == 4194304<br>                                                                                                    |[0x8000030c]:add s5, s7, t5<br> [0x80000310]:sw s5, 20(t1)<br>     |
|  30|[0x80003278]<br>0x10800000|- rs1 : x15<br> - rs2 : x24<br> - rd : x3<br> - rs2_val == 268435456<br> - rs1_val == 8388608<br>                                                                                                   |[0x8000031c]:add gp, a5, s8<br> [0x80000320]:sw gp, 24(t1)<br>     |
|  31|[0x8000327c]<br>0x00FFFFEF|- rs1 : x8<br> - rs2 : x23<br> - rd : x4<br> - rs2_val == -17<br> - rs1_val == 16777216<br>                                                                                                         |[0x8000032c]:add tp, fp, s7<br> [0x80000330]:sw tp, 28(t1)<br>     |
|  32|[0x80003280]<br>0x02000040|- rs1 : x30<br> - rs2_val == 64<br> - rs1_val == 33554432<br>                                                                                                                                       |[0x8000033c]:add s9, t5, s2<br> [0x80000340]:sw s9, 32(t1)<br>     |
|  33|[0x80003284]<br>0x03FFFFBF|- rs2 : x4<br> - rs2_val == -65<br> - rs1_val == 67108864<br>                                                                                                                                       |[0x8000034c]:add ra, t0, tp<br> [0x80000350]:sw ra, 36(t1)<br>     |
|  34|[0x80003288]<br>0x48000000|- rd : x30<br> - rs1_val == 134217728<br>                                                                                                                                                           |[0x8000035c]:add t5, s3, sp<br> [0x80000360]:sw t5, 40(t1)<br>     |
|  35|[0x8000328c]<br>0x0FFFFBFF|- rs2_val == -1025<br> - rs1_val == 268435456<br>                                                                                                                                                   |[0x8000036c]:add a2, a0, a1<br> [0x80000370]:sw a2, 44(t1)<br>     |
|  36|[0x80003290]<br>0x1EFFFFFF|- rs2_val == -16777217<br> - rs1_val == 536870912<br>                                                                                                                                               |[0x80000380]:add a2, a0, a1<br> [0x80000384]:sw a2, 48(t1)<br>     |
|  37|[0x80003294]<br>0xEAAAAAAA|- rs2_val == -1431655766<br> - rs1_val == 1073741824<br>                                                                                                                                            |[0x80000394]:add a2, a0, a1<br> [0x80000398]:sw a2, 52(t1)<br>     |
|  38|[0x80003298]<br>0xFFFFFFF9|- rs2_val == -5<br> - rs1_val == -2<br>                                                                                                                                                             |[0x800003a4]:add a2, a0, a1<br> [0x800003a8]:sw a2, 56(t1)<br>     |
|  39|[0x8000329c]<br>0x55555552|- rs1_val == -3<br>                                                                                                                                                                                 |[0x800003b8]:add a2, a0, a1<br> [0x800003bc]:sw a2, 60(t1)<br>     |
|  40|[0x800032a0]<br>0x00000002|- rs1_val == -5<br>                                                                                                                                                                                 |[0x800003c8]:add a2, a0, a1<br> [0x800003cc]:sw a2, 64(t1)<br>     |
|  41|[0x800032a4]<br>0x03FFFFF7|- rs2_val == 67108864<br> - rs1_val == -9<br>                                                                                                                                                       |[0x800003d8]:add a2, a0, a1<br> [0x800003dc]:sw a2, 68(t1)<br>     |
|  42|[0x800032a8]<br>0xF7FBFFFE|- rs2_val == -262145<br> - rs1_val == -134217729<br>                                                                                                                                                |[0x800003f0]:add a2, a0, a1<br> [0x800003f4]:sw a2, 72(t1)<br>     |
|  43|[0x800032ac]<br>0xF7F7FFFE|- rs2_val == -524289<br>                                                                                                                                                                            |[0x80000408]:add a2, a0, a1<br> [0x8000040c]:sw a2, 76(t1)<br>     |
|  44|[0x800032b0]<br>0xFFF00002|- rs2_val == -1048577<br>                                                                                                                                                                           |[0x8000041c]:add a2, a0, a1<br> [0x80000420]:sw a2, 80(t1)<br>     |
|  45|[0x800032b4]<br>0xEFDFFFFE|- rs2_val == -2097153<br> - rs1_val == -268435457<br>                                                                                                                                               |[0x80000434]:add a2, a0, a1<br> [0x80000438]:sw a2, 84(t1)<br>     |
|  46|[0x800032b8]<br>0xFF800001|- rs2_val == -8388609<br>                                                                                                                                                                           |[0x80000448]:add a2, a0, a1<br> [0x8000044c]:sw a2, 88(t1)<br>     |
|  47|[0x800032bc]<br>0x3DFFFFFE|- rs2_val == -33554433<br>                                                                                                                                                                          |[0x80000460]:add a2, a0, a1<br> [0x80000464]:sw a2, 92(t1)<br>     |
|  48|[0x800032c0]<br>0xFBFFFDFE|- rs2_val == -67108865<br> - rs1_val == -513<br>                                                                                                                                                    |[0x80000474]:add a2, a0, a1<br> [0x80000478]:sw a2, 96(t1)<br>     |
|  49|[0x800032c4]<br>0xF0007FFF|- rs2_val == -268435457<br>                                                                                                                                                                         |[0x80000488]:add a2, a0, a1<br> [0x8000048c]:sw a2, 100(t1)<br>    |
|  50|[0x800032c8]<br>0x000001EF|- rs1_val == -17<br>                                                                                                                                                                                |[0x80000498]:add a2, a0, a1<br> [0x8000049c]:sw a2, 104(t1)<br>    |
|  51|[0x800032cc]<br>0x7FFFFFDF|- rs1_val == -33<br>                                                                                                                                                                                |[0x800004a8]:add a2, a0, a1<br> [0x800004ac]:sw a2, 108(t1)<br>    |
|  52|[0x800032d0]<br>0xFFFFFFB9|- rs1_val == -65<br>                                                                                                                                                                                |[0x800004b8]:add a2, a0, a1<br> [0x800004bc]:sw a2, 112(t1)<br>    |
|  53|[0x800032d4]<br>0x3FFFFF7E|- rs1_val == -129<br>                                                                                                                                                                               |[0x800004cc]:add a2, a0, a1<br> [0x800004d0]:sw a2, 116(t1)<br>    |
|  54|[0x800032d8]<br>0x003FFEFF|- rs1_val == -257<br>                                                                                                                                                                               |[0x800004dc]:add a2, a0, a1<br> [0x800004e0]:sw a2, 120(t1)<br>    |
|  55|[0x800032dc]<br>0xFFFFFC1F|- rs1_val == -1025<br>                                                                                                                                                                              |[0x800004ec]:add a2, a0, a1<br> [0x800004f0]:sw a2, 124(t1)<br>    |
|  56|[0x800032e0]<br>0xFFFFF800|- rs1_val == -2049<br>                                                                                                                                                                              |[0x80000500]:add a2, a0, a1<br> [0x80000504]:sw a2, 128(t1)<br>    |
|  57|[0x800032e4]<br>0xFFFFF008|- rs1_val == -4097<br>                                                                                                                                                                              |[0x80000514]:add a2, a0, a1<br> [0x80000518]:sw a2, 132(t1)<br>    |
|  58|[0x800032e8]<br>0xFFFFDFDE|- rs2_val == -33<br> - rs1_val == -8193<br>                                                                                                                                                         |[0x80000528]:add a2, a0, a1<br> [0x8000052c]:sw a2, 136(t1)<br>    |
|  59|[0x800032ec]<br>0x003FBFFF|- rs1_val == -16385<br>                                                                                                                                                                             |[0x8000053c]:add a2, a0, a1<br> [0x80000540]:sw a2, 140(t1)<br>    |
|  60|[0x800032f0]<br>0xAAAA2AA9|- rs1_val == -32769<br>                                                                                                                                                                             |[0x80000554]:add a2, a0, a1<br> [0x80000558]:sw a2, 144(t1)<br>    |
|  61|[0x800032f4]<br>0xFFFAFFFE|- rs1_val == -65537<br>                                                                                                                                                                             |[0x8000056c]:add a2, a0, a1<br> [0x80000570]:sw a2, 148(t1)<br>    |
|  62|[0x800032f8]<br>0x00FDFFFF|- rs2_val == 16777216<br> - rs1_val == -131073<br>                                                                                                                                                  |[0x80000580]:add a2, a0, a1<br> [0x80000584]:sw a2, 152(t1)<br>    |
|  63|[0x800032fc]<br>0xFFF3FFFE|- rs1_val == -262145<br>                                                                                                                                                                            |[0x80000598]:add a2, a0, a1<br> [0x8000059c]:sw a2, 156(t1)<br>    |
|  64|[0x80003300]<br>0x554D5554|- rs1_val == -524289<br>                                                                                                                                                                            |[0x800005b0]:add a2, a0, a1<br> [0x800005b4]:sw a2, 160(t1)<br>    |
|  65|[0x80003304]<br>0xFFFFFFFF|- rs2_val == 1048576<br> - rs1_val == -1048577<br>                                                                                                                                                  |[0x800005c4]:add a2, a0, a1<br> [0x800005c8]:sw a2, 164(t1)<br>    |
|  66|[0x80003308]<br>0xFFBFFEFE|- rs2_val == -257<br> - rs1_val == -4194305<br>                                                                                                                                                     |[0x800005d8]:add a2, a0, a1<br> [0x800005dc]:sw a2, 168(t1)<br>    |
|  67|[0x8000330c]<br>0xFEFFFFF8|- rs1_val == -16777217<br>                                                                                                                                                                          |[0x800005ec]:add a2, a0, a1<br> [0x800005f0]:sw a2, 172(t1)<br>    |
|  68|[0x80003310]<br>0xFE07FFFF|- rs1_val == -33554433<br>                                                                                                                                                                          |[0x80000600]:add a2, a0, a1<br> [0x80000604]:sw a2, 176(t1)<br>    |
|  69|[0x80003314]<br>0xFBFFFFFA|- rs1_val == -67108865<br>                                                                                                                                                                          |[0x80000614]:add a2, a0, a1<br> [0x80000618]:sw a2, 180(t1)<br>    |
|  70|[0x80003318]<br>0xDBFFFFFE|- rs1_val == -536870913<br>                                                                                                                                                                         |[0x8000062c]:add a2, a0, a1<br> [0x80000630]:sw a2, 184(t1)<br>    |
|  71|[0x8000331c]<br>0xC0001FFF|- rs2_val == 8192<br> - rs1_val == -1073741825<br>                                                                                                                                                  |[0x80000640]:add a2, a0, a1<br> [0x80000644]:sw a2, 188(t1)<br>    |
|  72|[0x80003320]<br>0x55555154|- rs1_val == 1431655765<br>                                                                                                                                                                         |[0x80000654]:add a2, a0, a1<br> [0x80000658]:sw a2, 192(t1)<br>    |
|  73|[0x80003324]<br>0xAAAAA8A9|- rs1_val == -1431655766<br>                                                                                                                                                                        |[0x80000668]:add a2, a0, a1<br> [0x8000066c]:sw a2, 196(t1)<br>    |
|  74|[0x80003328]<br>0xC0000008|- rs2_val == 8<br>                                                                                                                                                                                  |[0x80000678]:add a2, a0, a1<br> [0x8000067c]:sw a2, 200(t1)<br>    |
|  75|[0x8000332c]<br>0xFFFFFFCF|- rs2_val == 16<br>                                                                                                                                                                                 |[0x80000688]:add a2, a0, a1<br> [0x8000068c]:sw a2, 204(t1)<br>    |
|  76|[0x80003330]<br>0x00000081|- rs1_val == 1<br> - rs2_val == 128<br>                                                                                                                                                             |[0x80000698]:add a2, a0, a1<br> [0x8000069c]:sw a2, 208(t1)<br>    |
|  77|[0x80003334]<br>0x00040400|- rs2_val == 1024<br>                                                                                                                                                                               |[0x800006a8]:add a2, a0, a1<br> [0x800006ac]:sw a2, 212(t1)<br>    |
|  78|[0x80003338]<br>0x00000F7F|- rs2_val == 4096<br>                                                                                                                                                                               |[0x800006b8]:add a2, a0, a1<br> [0x800006bc]:sw a2, 216(t1)<br>    |
|  79|[0x8000333c]<br>0xFFF83FFF|- rs2_val == 16384<br>                                                                                                                                                                              |[0x800006cc]:add a2, a0, a1<br> [0x800006d0]:sw a2, 220(t1)<br>    |
|  80|[0x80003340]<br>0x00009000|- rs2_val == 32768<br>                                                                                                                                                                              |[0x800006dc]:add a2, a0, a1<br> [0x800006e0]:sw a2, 224(t1)<br>    |
|  81|[0x80003344]<br>0x00240000|- rs2_val == 2097152<br>                                                                                                                                                                            |[0x800006ec]:add a2, a0, a1<br> [0x800006f0]:sw a2, 228(t1)<br>    |
|  82|[0x80003348]<br>0x007FF7FF|- rs2_val == 8388608<br>                                                                                                                                                                            |[0x80000700]:add a2, a0, a1<br> [0x80000704]:sw a2, 232(t1)<br>    |
|  83|[0x8000334c]<br>0x1FFEFFFF|- rs2_val == -65537<br>                                                                                                                                                                             |[0x80000714]:add a2, a0, a1<br> [0x80000718]:sw a2, 236(t1)<br>    |
|  84|[0x80003350]<br>0xF9FFFFFF|- rs2_val == 33554432<br>                                                                                                                                                                           |[0x80000728]:add a2, a0, a1<br> [0x8000072c]:sw a2, 240(t1)<br>    |
|  85|[0x80003354]<br>0x07FFBFFF|- rs2_val == 134217728<br>                                                                                                                                                                          |[0x8000073c]:add a2, a0, a1<br> [0x80000740]:sw a2, 244(t1)<br>    |
|  86|[0x80003358]<br>0x1FFFFFBF|- rs2_val == 536870912<br>                                                                                                                                                                          |[0x8000074c]:add a2, a0, a1<br> [0x80000750]:sw a2, 248(t1)<br>    |
|  87|[0x8000335c]<br>0xF7FFFFFD|- rs2_val == -2<br>                                                                                                                                                                                 |[0x80000760]:add a2, a0, a1<br> [0x80000764]:sw a2, 252(t1)<br>    |
|  88|[0x80003360]<br>0xFFFFFFF5|- rs2_val == -3<br>                                                                                                                                                                                 |[0x80000770]:add a2, a0, a1<br> [0x80000774]:sw a2, 256(t1)<br>    |
|  89|[0x80003364]<br>0xFFFFFFFB|- rs2_val == -9<br>                                                                                                                                                                                 |[0x80000780]:add a2, a0, a1<br> [0x80000784]:sw a2, 260(t1)<br>    |
|  90|[0x80003368]<br>0xFFFFFFBF|- rs2_val == -129<br>                                                                                                                                                                               |[0x80000790]:add a2, a0, a1<br> [0x80000794]:sw a2, 264(t1)<br>    |
|  91|[0x8000336c]<br>0x3FFFF7FF|- rs2_val == -2049<br>                                                                                                                                                                              |[0x800007a4]:add a2, a0, a1<br> [0x800007a8]:sw a2, 268(t1)<br>    |
|  92|[0x80003370]<br>0xFEFFEFFE|- rs2_val == -4097<br>                                                                                                                                                                              |[0x800007bc]:add a2, a0, a1<br> [0x800007c0]:sw a2, 272(t1)<br>    |
|  93|[0x80003374]<br>0xFFF77FFE|- rs2_val == -32769<br>                                                                                                                                                                             |[0x800007d4]:add a2, a0, a1<br> [0x800007d8]:sw a2, 276(t1)<br>    |
|  94|[0x80003378]<br>0x4000FFFF|- rs2_val == 65536<br>                                                                                                                                                                              |[0x800007e8]:add a2, a0, a1<br> [0x800007ec]:sw a2, 280(t1)<br>    |
|  95|[0x8000337c]<br>0x55535554|- rs2_val == -131073<br>                                                                                                                                                                            |[0x80000800]:add a2, a0, a1<br> [0x80000804]:sw a2, 284(t1)<br>    |
|  96|[0x80003380]<br>0x80040000|- rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                                                                                                                                        |[0x80000810]:add a2, a0, a1<br> [0x80000814]:sw a2, 288(t1)<br>    |
|  97|[0x80003388]<br>0x7FDFFFFE|- rs1_val == -2097153<br>                                                                                                                                                                           |[0x80000838]:add a2, a0, a1<br> [0x8000083c]:sw a2, 296(t1)<br>    |
