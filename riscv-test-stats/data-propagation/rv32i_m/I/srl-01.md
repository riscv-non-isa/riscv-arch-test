
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000620')]      |
| SIG_REGION                | [('0x80003204', '0x8000333c', '78 words')]      |
| COV_LABELS                | srl      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srl-01.S/srl-01.S    |
| Total Number of coverpoints| 189     |
| Total Coverpoints Hit     | 189      |
| Total Signature Updates   | 75      |
| STAT1                     | 72      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005e8]:srl a2, a0, a1
      [0x800005ec]:sw a2, 216(sp)
 -- Signature Address: 0x8000332c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : srl
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen
      - rs1_val == 1
      - rs2_val == 1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000608]:srl a2, a0, a1
      [0x8000060c]:sw a2, 224(sp)
 -- Signature Address: 0x80003334 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : srl
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 8
      - rs2_val == 8




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000618]:srl a2, a0, a1
      [0x8000061c]:sw a2, 228(sp)
 -- Signature Address: 0x80003338 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : srl
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 16384
      - rs2_val == 23






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

|s.no|        signature         |                                                                                                                  coverpoints                                                                                                                   |                               code                                |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000000|- opcode : srl<br> - rs1 : x6<br> - rs2 : x6<br> - rd : x21<br> - rs1 == rs2 != rd<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == 16<br> - rs2_val == 16<br> |[0x8000010c]:srl s5, t1, t1<br> [0x80000110]:sw s5, 0(a0)<br>      |
|   2|[0x80003214]<br>0x00000080|- rs1 : x18<br> - rs2 : x15<br> - rd : x15<br> - rs2 == rd != rs1<br> - rs1_val == 33554432<br>                                                                                                                                                 |[0x8000011c]:srl a5, s2, a5<br> [0x80000120]:sw a5, 4(a0)<br>      |
|   3|[0x80003218]<br>0xC0000000|- rs1 : x25<br> - rs2 : x12<br> - rd : x25<br> - rs1 == rd != rs2<br> - rs1_val < 0 and rs2_val == 0<br>                                                                                                                                        |[0x8000012c]:srl s9, s9, a2<br> [0x80000130]:sw s9, 8(a0)<br>      |
|   4|[0x8000321c]<br>0x7FFFFFFF|- rs1 : x31<br> - rs2 : x20<br> - rd : x22<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 2147483647<br>                |[0x80000140]:srl s6, t6, s4<br> [0x80000144]:sw s6, 12(a0)<br>     |
|   5|[0x80003220]<br>0x00000000|- rs1 : x2<br> - rs2 : x2<br> - rd : x2<br> - rs1 == rs2 == rd<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br> - rs2_val == 1<br>                                                                                 |[0x80000150]:srl sp, sp, sp<br> [0x80000154]:sw sp, 16(a0)<br>     |
|   6|[0x80003224]<br>0x00000000|- rs1 : x0<br> - rs2 : x24<br> - rd : x8<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br> - rs2_val == 10<br>                                                                                                                         |[0x80000164]:srl fp, zero, s8<br> [0x80000168]:sw fp, 20(a0)<br>   |
|   7|[0x80003228]<br>0x00000000|- rs1 : x27<br> - rs2 : x7<br> - rd : x28<br>                                                                                                                                                                                                   |[0x80000174]:srl t3, s11, t2<br> [0x80000178]:sw t3, 24(a0)<br>    |
|   8|[0x8000322c]<br>0x3BFFFFFF|- rs1 : x26<br> - rs2 : x19<br> - rd : x9<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == -268435457<br> - rs2_val == 2<br>                                                                                               |[0x80000188]:srl s1, s10, s3<br> [0x8000018c]:sw s1, 28(a0)<br>    |
|   9|[0x80003230]<br>0x00000800|- rs1 : x11<br> - rs2 : x29<br> - rd : x24<br> - rs1_val == 32768<br> - rs2_val == 4<br>                                                                                                                                                        |[0x80000198]:srl s8, a1, t4<br> [0x8000019c]:sw s8, 32(a0)<br>     |
|  10|[0x80003234]<br>0x00000080|- rs1 : x24<br> - rs2 : x28<br> - rd : x4<br> - rs2_val == 8<br>                                                                                                                                                                                |[0x800001a8]:srl tp, s8, t3<br> [0x800001ac]:sw tp, 36(a0)<br>     |
|  11|[0x80003238]<br>0x00000000|- rs1 : x3<br> - rs2 : x31<br> - rd : x20<br> - rs1_val == 131072<br> - rs2_val == 30<br>                                                                                                                                                       |[0x800001b8]:srl s4, gp, t6<br> [0x800001bc]:sw s4, 40(a0)<br>     |
|  12|[0x8000323c]<br>0x00000000|- rs1 : x29<br> - rs2 : x23<br> - rd : x3<br> - rs1_val == 262144<br> - rs2_val == 29<br>                                                                                                                                                       |[0x800001c8]:srl gp, t4, s7<br> [0x800001cc]:sw gp, 44(a0)<br>     |
|  13|[0x80003240]<br>0x0000001F|- rs1 : x8<br> - rs2 : x13<br> - rd : x29<br> - rs1_val == -65<br> - rs2_val == 27<br>                                                                                                                                                          |[0x800001d8]:srl t4, fp, a3<br> [0x800001dc]:sw t4, 48(a0)<br>     |
|  14|[0x80003244]<br>0x00000180|- rs1 : x21<br> - rs2 : x17<br> - rd : x11<br> - rs2_val == 23<br>                                                                                                                                                                              |[0x800001e8]:srl a1, s5, a7<br> [0x800001ec]:sw a1, 52(a0)<br>     |
|  15|[0x80003248]<br>0x00000000|- rs1 : x28<br> - rs2 : x26<br> - rd : x27<br> - rs1_val == 8192<br> - rs2_val == 15<br>                                                                                                                                                        |[0x800001f8]:srl s11, t3, s10<br> [0x800001fc]:sw s11, 56(a0)<br>  |
|  16|[0x8000324c]<br>0x000002AA|- rs1 : x5<br> - rs2 : x8<br> - rd : x12<br> - rs1_val == 1431655765<br> - rs2_val == 21<br>                                                                                                                                                    |[0x8000020c]:srl a2, t0, fp<br> [0x80000210]:sw a2, 60(a0)<br>     |
|  17|[0x80003250]<br>0x00000000|- rs1 : x1<br> - rs2 : x16<br> - rd : x18<br> - rs1_val == 2<br>                                                                                                                                                                                |[0x8000021c]:srl s2, ra, a6<br> [0x80000220]:sw s2, 64(a0)<br>     |
|  18|[0x80003254]<br>0x00000000|- rs1 : x13<br> - rs2 : x11<br> - rd : x17<br> - rs1_val == 4<br>                                                                                                                                                                               |[0x80000234]:srl a7, a3, a1<br> [0x80000238]:sw a7, 0(sp)<br>      |
|  19|[0x80003258]<br>0x00000000|- rs1 : x30<br> - rs2 : x27<br> - rd : x0<br> - rs1_val == 8<br>                                                                                                                                                                                |[0x80000244]:srl zero, t5, s11<br> [0x80000248]:sw zero, 4(sp)<br> |
|  20|[0x8000325c]<br>0x00000000|- rs1 : x4<br> - rs2 : x5<br> - rd : x10<br>                                                                                                                                                                                                    |[0x80000254]:srl a0, tp, t0<br> [0x80000258]:sw a0, 8(sp)<br>      |
|  21|[0x80003260]<br>0x00000000|- rs1 : x12<br> - rs2 : x3<br> - rd : x6<br> - rs1_val == 32<br>                                                                                                                                                                                |[0x80000264]:srl t1, a2, gp<br> [0x80000268]:sw t1, 12(sp)<br>     |
|  22|[0x80003264]<br>0x00000008|- rs1 : x19<br> - rs2 : x10<br> - rd : x1<br> - rs1_val == 64<br>                                                                                                                                                                               |[0x80000274]:srl ra, s3, a0<br> [0x80000278]:sw ra, 16(sp)<br>     |
|  23|[0x80003268]<br>0x00000010|- rs1 : x22<br> - rs2 : x4<br> - rd : x13<br> - rs1_val == 128<br>                                                                                                                                                                              |[0x80000284]:srl a3, s6, tp<br> [0x80000288]:sw a3, 20(sp)<br>     |
|  24|[0x8000326c]<br>0x00000000|- rs1 : x9<br> - rs2 : x30<br> - rd : x16<br> - rs1_val == 256<br>                                                                                                                                                                              |[0x80000294]:srl a6, s1, t5<br> [0x80000298]:sw a6, 24(sp)<br>     |
|  25|[0x80003270]<br>0x00000002|- rs1 : x17<br> - rs2 : x18<br> - rd : x30<br> - rs1_val == 512<br>                                                                                                                                                                             |[0x800002a4]:srl t5, a7, s2<br> [0x800002a8]:sw t5, 28(sp)<br>     |
|  26|[0x80003274]<br>0x00000000|- rs1 : x15<br> - rs2 : x21<br> - rd : x14<br> - rs1_val == 1024<br>                                                                                                                                                                            |[0x800002b4]:srl a4, a5, s5<br> [0x800002b8]:sw a4, 32(sp)<br>     |
|  27|[0x80003278]<br>0x00000000|- rs1 : x10<br> - rs2 : x14<br> - rd : x7<br> - rs1_val == 2048<br>                                                                                                                                                                             |[0x800002c8]:srl t2, a0, a4<br> [0x800002cc]:sw t2, 36(sp)<br>     |
|  28|[0x8000327c]<br>0x00000080|- rs1 : x16<br> - rs2 : x9<br> - rd : x5<br> - rs1_val == 4096<br>                                                                                                                                                                              |[0x800002d8]:srl t0, a6, s1<br> [0x800002dc]:sw t0, 40(sp)<br>     |
|  29|[0x80003280]<br>0x00004000|- rs1 : x14<br> - rs2 : x0<br> - rd : x26<br> - rs1_val == 16384<br>                                                                                                                                                                            |[0x800002e8]:srl s10, a4, zero<br> [0x800002ec]:sw s10, 44(sp)<br> |
|  30|[0x80003284]<br>0x00000000|- rs1 : x23<br> - rs2 : x25<br> - rd : x31<br> - rs1_val == 65536<br>                                                                                                                                                                           |[0x800002f8]:srl t6, s7, s9<br> [0x800002fc]:sw t6, 48(sp)<br>     |
|  31|[0x80003288]<br>0x00000040|- rs1 : x7<br> - rs2 : x1<br> - rd : x19<br> - rs1_val == 524288<br>                                                                                                                                                                            |[0x80000308]:srl s3, t2, ra<br> [0x8000030c]:sw s3, 52(sp)<br>     |
|  32|[0x8000328c]<br>0x00000010|- rs1 : x20<br> - rs2 : x22<br> - rd : x23<br> - rs1_val == 1048576<br>                                                                                                                                                                         |[0x80000318]:srl s7, s4, s6<br> [0x8000031c]:sw s7, 56(sp)<br>     |
|  33|[0x80003290]<br>0x00000200|- rs1_val == 2097152<br>                                                                                                                                                                                                                        |[0x80000328]:srl a2, a0, a1<br> [0x8000032c]:sw a2, 60(sp)<br>     |
|  34|[0x80003294]<br>0x00000000|- rs1_val == 4194304<br>                                                                                                                                                                                                                        |[0x80000338]:srl a2, a0, a1<br> [0x8000033c]:sw a2, 64(sp)<br>     |
|  35|[0x80003298]<br>0x00000004|- rs1_val == 8388608<br>                                                                                                                                                                                                                        |[0x80000348]:srl a2, a0, a1<br> [0x8000034c]:sw a2, 68(sp)<br>     |
|  36|[0x8000329c]<br>0x00000008|- rs1_val == 16777216<br>                                                                                                                                                                                                                       |[0x80000358]:srl a2, a0, a1<br> [0x8000035c]:sw a2, 72(sp)<br>     |
|  37|[0x800032a0]<br>0x00000200|- rs1_val == 67108864<br>                                                                                                                                                                                                                       |[0x80000368]:srl a2, a0, a1<br> [0x8000036c]:sw a2, 76(sp)<br>     |
|  38|[0x800032a4]<br>0x00002000|- rs1_val == 134217728<br>                                                                                                                                                                                                                      |[0x80000378]:srl a2, a0, a1<br> [0x8000037c]:sw a2, 80(sp)<br>     |
|  39|[0x800032a8]<br>0x00010000|- rs1_val == 268435456<br>                                                                                                                                                                                                                      |[0x80000388]:srl a2, a0, a1<br> [0x8000038c]:sw a2, 84(sp)<br>     |
|  40|[0x800032ac]<br>0x07FFFFBF|- rs1_val == -2049<br>                                                                                                                                                                                                                          |[0x8000039c]:srl a2, a0, a1<br> [0x800003a0]:sw a2, 88(sp)<br>     |
|  41|[0x800032b0]<br>0x01FFFFDF|- rs1_val == -4097<br>                                                                                                                                                                                                                          |[0x800003b0]:srl a2, a0, a1<br> [0x800003b4]:sw a2, 92(sp)<br>     |
|  42|[0x800032b4]<br>0x0001FFFF|- rs1_val == -8193<br>                                                                                                                                                                                                                          |[0x800003c4]:srl a2, a0, a1<br> [0x800003c8]:sw a2, 96(sp)<br>     |
|  43|[0x800032b8]<br>0x0007FFFD|- rs1_val == -16385<br>                                                                                                                                                                                                                         |[0x800003d8]:srl a2, a0, a1<br> [0x800003dc]:sw a2, 100(sp)<br>    |
|  44|[0x800032bc]<br>0x00000007|- rs1_val == -32769<br>                                                                                                                                                                                                                         |[0x800003ec]:srl a2, a0, a1<br> [0x800003f0]:sw a2, 104(sp)<br>    |
|  45|[0x800032c0]<br>0x00001FFF|- rs1_val == -65537<br>                                                                                                                                                                                                                         |[0x80000400]:srl a2, a0, a1<br> [0x80000404]:sw a2, 108(sp)<br>    |
|  46|[0x800032c4]<br>0x3FFF7FFF|- rs1_val == -131073<br>                                                                                                                                                                                                                        |[0x80000414]:srl a2, a0, a1<br> [0x80000418]:sw a2, 112(sp)<br>    |
|  47|[0x800032c8]<br>0x0000001F|- rs1_val == -262145<br>                                                                                                                                                                                                                        |[0x80000428]:srl a2, a0, a1<br> [0x8000042c]:sw a2, 116(sp)<br>    |
|  48|[0x800032cc]<br>0x03FFDFFF|- rs1_val == -524289<br>                                                                                                                                                                                                                        |[0x8000043c]:srl a2, a0, a1<br> [0x80000440]:sw a2, 120(sp)<br>    |
|  49|[0x800032d0]<br>0x000001FF|- rs1_val == -1048577<br>                                                                                                                                                                                                                       |[0x80000450]:srl a2, a0, a1<br> [0x80000454]:sw a2, 124(sp)<br>    |
|  50|[0x800032d4]<br>0x7FEFFFFF|- rs1_val == -2097153<br>                                                                                                                                                                                                                       |[0x80000464]:srl a2, a0, a1<br> [0x80000468]:sw a2, 128(sp)<br>    |
|  51|[0x800032d8]<br>0x7FDFFFFF|- rs1_val == -4194305<br>                                                                                                                                                                                                                       |[0x80000478]:srl a2, a0, a1<br> [0x8000047c]:sw a2, 132(sp)<br>    |
|  52|[0x800032dc]<br>0x000FF7FF|- rs1_val == -8388609<br>                                                                                                                                                                                                                       |[0x8000048c]:srl a2, a0, a1<br> [0x80000490]:sw a2, 136(sp)<br>    |
|  53|[0x800032e0]<br>0x07F7FFFF|- rs1_val == -16777217<br>                                                                                                                                                                                                                      |[0x800004a0]:srl a2, a0, a1<br> [0x800004a4]:sw a2, 140(sp)<br>    |
|  54|[0x800032e4]<br>0x00FDFFFF|- rs1_val == -33554433<br>                                                                                                                                                                                                                      |[0x800004b4]:srl a2, a0, a1<br> [0x800004b8]:sw a2, 144(sp)<br>    |
|  55|[0x800032e8]<br>0x000007DF|- rs1_val == -67108865<br>                                                                                                                                                                                                                      |[0x800004c8]:srl a2, a0, a1<br> [0x800004cc]:sw a2, 148(sp)<br>    |
|  56|[0x800032ec]<br>0xFFFFFFDF|- rs1_val == -33<br>                                                                                                                                                                                                                            |[0x800004d8]:srl a2, a0, a1<br> [0x800004dc]:sw a2, 152(sp)<br>    |
|  57|[0x800032f0]<br>0x0001EFFF|- rs1_val == -134217729<br>                                                                                                                                                                                                                     |[0x800004ec]:srl a2, a0, a1<br> [0x800004f0]:sw a2, 156(sp)<br>    |
|  58|[0x800032f4]<br>0x0006FFFF|- rs1_val == -536870913<br>                                                                                                                                                                                                                     |[0x80000500]:srl a2, a0, a1<br> [0x80000504]:sw a2, 160(sp)<br>    |
|  59|[0x800032f8]<br>0x00008000|- rs1_val == 536870912<br>                                                                                                                                                                                                                      |[0x80000510]:srl a2, a0, a1<br> [0x80000514]:sw a2, 164(sp)<br>    |
|  60|[0x800032fc]<br>0x00400000|- rs1_val == 1073741824<br>                                                                                                                                                                                                                     |[0x80000520]:srl a2, a0, a1<br> [0x80000524]:sw a2, 168(sp)<br>    |
|  61|[0x80003300]<br>0x00007FFF|- rs1_val == -2<br>                                                                                                                                                                                                                             |[0x80000530]:srl a2, a0, a1<br> [0x80000534]:sw a2, 172(sp)<br>    |
|  62|[0x80003304]<br>0x0003FFFF|- rs1_val == -5<br>                                                                                                                                                                                                                             |[0x80000540]:srl a2, a0, a1<br> [0x80000544]:sw a2, 176(sp)<br>    |
|  63|[0x80003308]<br>0x00555555|- rs1_val == -1431655766<br>                                                                                                                                                                                                                    |[0x80000554]:srl a2, a0, a1<br> [0x80000558]:sw a2, 180(sp)<br>    |
|  64|[0x8000330c]<br>0x03FFFFFF|- rs1_val == -3<br>                                                                                                                                                                                                                             |[0x80000564]:srl a2, a0, a1<br> [0x80000568]:sw a2, 184(sp)<br>    |
|  65|[0x80003310]<br>0x00001FFF|- rs1_val == -9<br>                                                                                                                                                                                                                             |[0x80000574]:srl a2, a0, a1<br> [0x80000578]:sw a2, 188(sp)<br>    |
|  66|[0x80003314]<br>0x00FFFFFF|- rs1_val == -17<br>                                                                                                                                                                                                                            |[0x80000584]:srl a2, a0, a1<br> [0x80000588]:sw a2, 192(sp)<br>    |
|  67|[0x80003318]<br>0x3FFFFFDF|- rs1_val == -129<br>                                                                                                                                                                                                                           |[0x80000594]:srl a2, a0, a1<br> [0x80000598]:sw a2, 196(sp)<br>    |
|  68|[0x8000331c]<br>0x7FFFFF7F|- rs1_val == -257<br>                                                                                                                                                                                                                           |[0x800005a4]:srl a2, a0, a1<br> [0x800005a8]:sw a2, 200(sp)<br>    |
|  69|[0x80003320]<br>0x0001FFFF|- rs1_val == -513<br>                                                                                                                                                                                                                           |[0x800005b4]:srl a2, a0, a1<br> [0x800005b8]:sw a2, 204(sp)<br>    |
|  70|[0x80003324]<br>0x7FFFFDFF|- rs1_val == -1025<br>                                                                                                                                                                                                                          |[0x800005c4]:srl a2, a0, a1<br> [0x800005c8]:sw a2, 208(sp)<br>    |
|  71|[0x80003328]<br>0x0000BFFF|- rs1_val == -1073741825<br>                                                                                                                                                                                                                    |[0x800005d8]:srl a2, a0, a1<br> [0x800005dc]:sw a2, 212(sp)<br>    |
|  72|[0x80003330]<br>0x00200000|- rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -2147483648<br>                                                                                                                                                |[0x800005f8]:srl a2, a0, a1<br> [0x800005fc]:sw a2, 220(sp)<br>    |
