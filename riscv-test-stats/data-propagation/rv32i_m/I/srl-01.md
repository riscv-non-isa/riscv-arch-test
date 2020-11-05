
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000630')]      |
| SIG_REGION                | [('0x80003204', '0x80003340', '79 words')]      |
| COV_LABELS                | srl      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srl-01.S/srl-01.S    |
| Total Number of coverpoints| 189     |
| Total Coverpoints Hit     | 189      |
| Total Signature Updates   | 76      |
| STAT1                     | 74      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000614]:srl a2, a0, a1
      [0x80000618]:sw a2, 220(t2)
 -- Signature Address: 0x80003338 Data: 0x00000007
 -- Redundant Coverpoints hit by the op
      - opcode : srl
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == -257
      - rs2_val == 29




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000624]:srl a2, a0, a1
      [0x80000628]:sw a2, 224(t2)
 -- Signature Address: 0x8000333c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : srl
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 8192
      - rs2_val == 29






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

|s.no|        signature         |                                                                                      coverpoints                                                                                      |                                code                                |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003210]<br>0x03FEFFFF|- opcode : srl<br> - rs1 : x30<br> - rs2 : x15<br> - rd : x30<br> - rs1 == rd != rs2<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == -4194305<br>                |[0x8000010c]:srl t5, t5, a5<br> [0x80000110]:sw t5, 0(tp)<br>       |
|   2|[0x80003214]<br>0x00000000|- rs1 : x20<br> - rs2 : x20<br> - rd : x14<br> - rs1 == rs2 != rd<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br> |[0x8000011c]:srl a4, s4, s4<br> [0x80000120]:sw a4, 4(tp)<br>       |
|   3|[0x80003218]<br>0x00000000|- rs1 : x17<br> - rs2 : x17<br> - rd : x17<br> - rs1 == rs2 == rd<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br>                                                           |[0x80000130]:srl a7, a7, a7<br> [0x80000134]:sw a7, 8(tp)<br>       |
|   4|[0x8000321c]<br>0x00200000|- rs1 : x7<br> - rs2 : x29<br> - rd : x29<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val == 2097152<br>                                                       |[0x80000140]:srl t4, t2, t4<br> [0x80000144]:sw t4, 12(tp)<br>      |
|   5|[0x80003220]<br>0x00000000|- rs1 : x19<br> - rs2 : x22<br> - rd : x7<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br>                                                                                            |[0x80000150]:srl t2, s3, s6<br> [0x80000154]:sw t2, 16(tp)<br>      |
|   6|[0x80003224]<br>0x04000000|- rs1 : x18<br> - rs2 : x8<br> - rd : x15<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -2147483648<br>                                         |[0x80000160]:srl a5, s2, fp<br> [0x80000164]:sw a5, 20(tp)<br>      |
|   7|[0x80003228]<br>0x00000000|- rs1 : x21<br> - rs2 : x1<br> - rd : x3<br>                                                                                                                                           |[0x80000170]:srl gp, s5, ra<br> [0x80000174]:sw gp, 24(tp)<br>      |
|   8|[0x8000322c]<br>0x0000000F|- rs1 : x24<br> - rs2 : x14<br> - rd : x13<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 2147483647<br> - rs2_val == 27<br>                    |[0x80000184]:srl a3, s8, a4<br> [0x80000188]:sw a3, 28(tp)<br>      |
|   9|[0x80003230]<br>0x00000000|- rs1 : x23<br> - rs2 : x27<br> - rd : x5<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br>                                                                |[0x80000194]:srl t0, s7, s11<br> [0x80000198]:sw t0, 32(tp)<br>     |
|  10|[0x80003234]<br>0x5FFFFFFF|- rs1 : x6<br> - rs2 : x9<br> - rd : x28<br> - rs1_val == -1073741825<br> - rs2_val == 1<br>                                                                                           |[0x800001a8]:srl t3, t1, s1<br> [0x800001ac]:sw t3, 36(tp)<br>      |
|  11|[0x80003238]<br>0x00000010|- rs1 : x13<br> - rs2 : x7<br> - rd : x1<br> - rs1_val == 64<br> - rs2_val == 2<br>                                                                                                    |[0x800001b8]:srl ra, a3, t2<br> [0x800001bc]:sw ra, 40(tp)<br>      |
|  12|[0x8000323c]<br>0x0FFFFFFD|- rs1 : x9<br> - rs2 : x28<br> - rd : x25<br> - rs1_val == -33<br> - rs2_val == 4<br>                                                                                                  |[0x800001c8]:srl s9, s1, t3<br> [0x800001cc]:sw s9, 44(tp)<br>      |
|  13|[0x80003240]<br>0x00FFFF7F|- rs1 : x25<br> - rs2 : x21<br> - rd : x23<br> - rs1_val == -32769<br> - rs2_val == 8<br>                                                                                              |[0x800001dc]:srl s7, s9, s5<br> [0x800001e0]:sw s7, 48(tp)<br>      |
|  14|[0x80003244]<br>0x00000000|- rs1 : x0<br> - rs2 : x19<br> - rd : x6<br> - rs2_val == 16<br>                                                                                                                       |[0x800001ec]:srl t1, zero, s3<br> [0x800001f0]:sw t1, 52(tp)<br>    |
|  15|[0x80003248]<br>0x00000000|- rs1 : x27<br> - rs2 : x11<br> - rd : x10<br> - rs1_val == 268435456<br> - rs2_val == 30<br>                                                                                          |[0x800001fc]:srl a0, s11, a1<br> [0x80000200]:sw a0, 56(tp)<br>     |
|  16|[0x8000324c]<br>0x00000000|- rs1 : x26<br> - rs2 : x25<br> - rd : x0<br> - rs1_val == -257<br> - rs2_val == 29<br>                                                                                                |[0x8000020c]:srl zero, s10, s9<br> [0x80000210]:sw zero, 60(tp)<br> |
|  17|[0x80003250]<br>0x000001FF|- rs1 : x22<br> - rs2 : x23<br> - rd : x18<br> - rs2_val == 23<br>                                                                                                                     |[0x8000021c]:srl s2, s6, s7<br> [0x80000220]:sw s2, 64(tp)<br>      |
|  18|[0x80003254]<br>0x00000020|- rs1 : x28<br> - rs2 : x2<br> - rd : x27<br> - rs1_val == 1048576<br> - rs2_val == 15<br>                                                                                             |[0x8000022c]:srl s11, t3, sp<br> [0x80000230]:sw s11, 68(tp)<br>    |
|  19|[0x80003258]<br>0x00000000|- rs1 : x11<br> - rs2 : x26<br> - rd : x12<br> - rs2_val == 21<br>                                                                                                                     |[0x8000023c]:srl a2, a1, s10<br> [0x80000240]:sw a2, 72(tp)<br>     |
|  20|[0x8000325c]<br>0x00000000|- rs1 : x3<br> - rs2 : x18<br> - rd : x4<br> - rs2_val == 10<br>                                                                                                                       |[0x80000254]:srl tp, gp, s2<br> [0x80000258]:sw tp, 0(t2)<br>       |
|  21|[0x80003260]<br>0x00000000|- rs1 : x15<br> - rs2 : x3<br> - rd : x26<br> - rs1_val == 2<br>                                                                                                                       |[0x80000264]:srl s10, a5, gp<br> [0x80000268]:sw s10, 4(t2)<br>     |
|  22|[0x80003264]<br>0x00000000|- rs1 : x5<br> - rs2 : x10<br> - rd : x11<br> - rs1_val == 4<br>                                                                                                                       |[0x80000274]:srl a1, t0, a0<br> [0x80000278]:sw a1, 8(t2)<br>       |
|  23|[0x80003268]<br>0x00000000|- rs1 : x2<br> - rs2 : x13<br> - rd : x31<br> - rs1_val == 8<br>                                                                                                                       |[0x80000284]:srl t6, sp, a3<br> [0x80000288]:sw t6, 12(t2)<br>      |
|  24|[0x8000326c]<br>0x00000000|- rs1 : x10<br> - rs2 : x4<br> - rd : x20<br> - rs1_val == 16<br>                                                                                                                      |[0x80000294]:srl s4, a0, tp<br> [0x80000298]:sw s4, 16(t2)<br>      |
|  25|[0x80003270]<br>0x00000008|- rs1 : x16<br> - rs2 : x6<br> - rd : x21<br> - rs1_val == 32<br>                                                                                                                      |[0x800002a4]:srl s5, a6, t1<br> [0x800002a8]:sw s5, 20(t2)<br>      |
|  26|[0x80003274]<br>0x00000000|- rs1 : x4<br> - rs2 : x24<br> - rd : x9<br> - rs1_val == 128<br>                                                                                                                      |[0x800002b4]:srl s1, tp, s8<br> [0x800002b8]:sw s1, 24(t2)<br>      |
|  27|[0x80003278]<br>0x00000080|- rs1 : x1<br> - rs2 : x5<br> - rd : x16<br> - rs1_val == 256<br>                                                                                                                      |[0x800002c4]:srl a6, ra, t0<br> [0x800002c8]:sw a6, 28(t2)<br>      |
|  28|[0x8000327c]<br>0x00000000|- rs1 : x29<br> - rs2 : x31<br> - rd : x22<br> - rs1_val == 512<br>                                                                                                                    |[0x800002d4]:srl s6, t4, t6<br> [0x800002d8]:sw s6, 32(t2)<br>      |
|  29|[0x80003280]<br>0x00000200|- rs1 : x8<br> - rs2 : x30<br> - rd : x19<br> - rs1_val == 1024<br>                                                                                                                    |[0x800002e4]:srl s3, fp, t5<br> [0x800002e8]:sw s3, 36(t2)<br>      |
|  30|[0x80003284]<br>0x00000000|- rs1 : x31<br> - rs2 : x12<br> - rd : x8<br> - rs1_val == 2048<br>                                                                                                                    |[0x800002f8]:srl fp, t6, a2<br> [0x800002fc]:sw fp, 40(t2)<br>      |
|  31|[0x80003288]<br>0x00000000|- rs1 : x12<br> - rs2 : x16<br> - rd : x24<br> - rs1_val == 4096<br>                                                                                                                   |[0x80000308]:srl s8, a2, a6<br> [0x8000030c]:sw s8, 44(t2)<br>      |
|  32|[0x8000328c]<br>0x00002000|- rs1 : x14<br> - rs2 : x0<br> - rd : x2<br> - rs1_val == 8192<br>                                                                                                                     |[0x80000318]:srl sp, a4, zero<br> [0x8000031c]:sw sp, 48(t2)<br>    |
|  33|[0x80003290]<br>0x00000000|- rs1_val == 16384<br>                                                                                                                                                                 |[0x80000328]:srl a2, a0, a1<br> [0x8000032c]:sw a2, 52(t2)<br>      |
|  34|[0x80003294]<br>0x00000100|- rs1_val == 65536<br>                                                                                                                                                                 |[0x80000338]:srl a2, a0, a1<br> [0x8000033c]:sw a2, 56(t2)<br>      |
|  35|[0x80003298]<br>0x00000400|- rs1_val == 131072<br>                                                                                                                                                                |[0x80000348]:srl a2, a0, a1<br> [0x8000034c]:sw a2, 60(t2)<br>      |
|  36|[0x8000329c]<br>0x00000100|- rs1_val == 262144<br>                                                                                                                                                                |[0x80000358]:srl a2, a0, a1<br> [0x8000035c]:sw a2, 64(t2)<br>      |
|  37|[0x800032a0]<br>0x00080000|- rs1_val == 524288<br>                                                                                                                                                                |[0x80000368]:srl a2, a0, a1<br> [0x8000036c]:sw a2, 68(t2)<br>      |
|  38|[0x800032a4]<br>0x00000400|- rs1_val == 4194304<br>                                                                                                                                                               |[0x80000378]:srl a2, a0, a1<br> [0x8000037c]:sw a2, 72(t2)<br>      |
|  39|[0x800032a8]<br>0x00008000|- rs1_val == 8388608<br>                                                                                                                                                               |[0x80000388]:srl a2, a0, a1<br> [0x8000038c]:sw a2, 76(t2)<br>      |
|  40|[0x800032ac]<br>0x00000000|- rs1_val == 16777216<br>                                                                                                                                                              |[0x80000398]:srl a2, a0, a1<br> [0x8000039c]:sw a2, 80(t2)<br>      |
|  41|[0x800032b0]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                                                                              |[0x800003a8]:srl a2, a0, a1<br> [0x800003ac]:sw a2, 84(t2)<br>      |
|  42|[0x800032b4]<br>0x0007FFFF|- rs1_val == -2049<br>                                                                                                                                                                 |[0x800003bc]:srl a2, a0, a1<br> [0x800003c0]:sw a2, 88(t2)<br>      |
|  43|[0x800032b8]<br>0x00007FFF|- rs1_val == -4097<br>                                                                                                                                                                 |[0x800003d0]:srl a2, a0, a1<br> [0x800003d4]:sw a2, 92(t2)<br>      |
|  44|[0x800032bc]<br>0x00000003|- rs1_val == -8193<br>                                                                                                                                                                 |[0x800003e4]:srl a2, a0, a1<br> [0x800003e8]:sw a2, 96(t2)<br>      |
|  45|[0x800032c0]<br>0xFFFFBFFF|- rs1_val < 0 and rs2_val == 0<br> - rs1_val == -16385<br>                                                                                                                             |[0x800003f8]:srl a2, a0, a1<br> [0x800003fc]:sw a2, 100(t2)<br>     |
|  46|[0x800032c4]<br>0x01FFFDFF|- rs1_val == -65537<br>                                                                                                                                                                |[0x8000040c]:srl a2, a0, a1<br> [0x80000410]:sw a2, 104(t2)<br>     |
|  47|[0x800032c8]<br>0x007FFDFF|- rs1_val == -262145<br>                                                                                                                                                               |[0x80000420]:srl a2, a0, a1<br> [0x80000424]:sw a2, 108(t2)<br>     |
|  48|[0x800032cc]<br>0x1FFEFFFF|- rs1_val == -524289<br>                                                                                                                                                               |[0x80000434]:srl a2, a0, a1<br> [0x80000438]:sw a2, 112(t2)<br>     |
|  49|[0x800032d0]<br>0x000007FF|- rs1_val == -1048577<br>                                                                                                                                                              |[0x80000448]:srl a2, a0, a1<br> [0x8000044c]:sw a2, 116(t2)<br>     |
|  50|[0x800032d4]<br>0x00FFDFFF|- rs1_val == -2097153<br>                                                                                                                                                              |[0x8000045c]:srl a2, a0, a1<br> [0x80000460]:sw a2, 120(t2)<br>     |
|  51|[0x800032d8]<br>0x00000001|- rs1_val == -8388609<br>                                                                                                                                                              |[0x80000470]:srl a2, a0, a1<br> [0x80000474]:sw a2, 124(t2)<br>     |
|  52|[0x800032dc]<br>0x00007F7F|- rs1_val == -16777217<br>                                                                                                                                                             |[0x80000484]:srl a2, a0, a1<br> [0x80000488]:sw a2, 128(t2)<br>     |
|  53|[0x800032e0]<br>0x3F7FFFFF|- rs1_val == -33554433<br>                                                                                                                                                             |[0x80000498]:srl a2, a0, a1<br> [0x8000049c]:sw a2, 132(t2)<br>     |
|  54|[0x800032e4]<br>0x000001F7|- rs1_val == -67108865<br>                                                                                                                                                             |[0x800004ac]:srl a2, a0, a1<br> [0x800004b0]:sw a2, 136(t2)<br>     |
|  55|[0x800032e8]<br>0x000F7FFF|- rs1_val == -134217729<br>                                                                                                                                                            |[0x800004c0]:srl a2, a0, a1<br> [0x800004c4]:sw a2, 140(t2)<br>     |
|  56|[0x800032ec]<br>0x0077FFFF|- rs1_val == -268435457<br>                                                                                                                                                            |[0x800004d4]:srl a2, a0, a1<br> [0x800004d8]:sw a2, 144(t2)<br>     |
|  57|[0x800032f0]<br>0x00DFFFFF|- rs1_val == -536870913<br>                                                                                                                                                            |[0x800004e8]:srl a2, a0, a1<br> [0x800004ec]:sw a2, 148(t2)<br>     |
|  58|[0x800032f4]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                                                              |[0x800004f8]:srl a2, a0, a1<br> [0x800004fc]:sw a2, 152(t2)<br>     |
|  59|[0x800032f8]<br>0x0007FFFF|- rs1_val == -17<br>                                                                                                                                                                   |[0x80000508]:srl a2, a0, a1<br> [0x8000050c]:sw a2, 156(t2)<br>     |
|  60|[0x800032fc]<br>0x00080000|- rs1_val == 134217728<br>                                                                                                                                                             |[0x80000518]:srl a2, a0, a1<br> [0x8000051c]:sw a2, 160(t2)<br>     |
|  61|[0x80003300]<br>0x00040000|- rs1_val == 536870912<br>                                                                                                                                                             |[0x80000528]:srl a2, a0, a1<br> [0x8000052c]:sw a2, 164(t2)<br>     |
|  62|[0x80003304]<br>0x00000008|- rs1_val == 1073741824<br>                                                                                                                                                            |[0x80000538]:srl a2, a0, a1<br> [0x8000053c]:sw a2, 168(t2)<br>     |
|  63|[0x80003308]<br>0x000AAAAA|- rs1_val == 1431655765<br>                                                                                                                                                            |[0x8000054c]:srl a2, a0, a1<br> [0x80000550]:sw a2, 172(t2)<br>     |
|  64|[0x8000330c]<br>0x00000001|- rs1_val == -2<br>                                                                                                                                                                    |[0x8000055c]:srl a2, a0, a1<br> [0x80000560]:sw a2, 176(t2)<br>     |
|  65|[0x80003310]<br>0x0001FFFF|- rs1_val == -5<br>                                                                                                                                                                    |[0x8000056c]:srl a2, a0, a1<br> [0x80000570]:sw a2, 180(t2)<br>     |
|  66|[0x80003314]<br>0x0000AAAA|- rs1_val == -1431655766<br>                                                                                                                                                           |[0x80000580]:srl a2, a0, a1<br> [0x80000584]:sw a2, 184(t2)<br>     |
|  67|[0x80003318]<br>0x000007FF|- rs1_val == -3<br>                                                                                                                                                                    |[0x80000590]:srl a2, a0, a1<br> [0x80000594]:sw a2, 188(t2)<br>     |
|  68|[0x8000331c]<br>0x00000007|- rs1_val == -9<br>                                                                                                                                                                    |[0x800005a0]:srl a2, a0, a1<br> [0x800005a4]:sw a2, 192(t2)<br>     |
|  69|[0x80003320]<br>0x0FFFFFFB|- rs1_val == -65<br>                                                                                                                                                                   |[0x800005b0]:srl a2, a0, a1<br> [0x800005b4]:sw a2, 196(t2)<br>     |
|  70|[0x80003324]<br>0x007FFFFF|- rs1_val == -129<br>                                                                                                                                                                  |[0x800005c0]:srl a2, a0, a1<br> [0x800005c4]:sw a2, 200(t2)<br>     |
|  71|[0x80003328]<br>0x01FFFFFB|- rs1_val == -513<br>                                                                                                                                                                  |[0x800005d0]:srl a2, a0, a1<br> [0x800005d4]:sw a2, 204(t2)<br>     |
|  72|[0x8000332c]<br>0x1FFFFF7F|- rs1_val == -1025<br>                                                                                                                                                                 |[0x800005e0]:srl a2, a0, a1<br> [0x800005e4]:sw a2, 208(t2)<br>     |
|  73|[0x80003330]<br>0x00000010|- rs1_val == 32768<br>                                                                                                                                                                 |[0x800005f0]:srl a2, a0, a1<br> [0x800005f4]:sw a2, 212(t2)<br>     |
|  74|[0x80003334]<br>0xFFFDFFFF|- rs1_val == -131073<br>                                                                                                                                                               |[0x80000604]:srl a2, a0, a1<br> [0x80000608]:sw a2, 216(t2)<br>     |
