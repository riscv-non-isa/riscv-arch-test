
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
| SIG_REGION                | [('0x80003204', '0x80003334', '76 words')]      |
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
      [0x80000618]:sw a2, 224(ra)
 -- Signature Address: 0x8000332c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : srl
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 16
      - rs2_val == 15




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000624]:srl a2, a0, a1
      [0x80000628]:sw a2, 228(ra)
 -- Signature Address: 0x80003330 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : srl
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 32768






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

|s.no|        signature         |                                                                              coverpoints                                                                               |                               code                                |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003204]<br>0x0003BFFF|- opcode : srl<br> - rs1 : x23<br> - rs2 : x9<br> - rd : x9<br> - rs2 == rd != rs1<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == -268435457<br> |[0x8000010c]:srl s1, s7, s1<br> [0x80000110]:sw s1, 0(a0)<br>      |
|   2|[0x80003208]<br>0x00000020|- rs1 : x6<br> - rs2 : x25<br> - rd : x28<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == 16384<br> |[0x8000011c]:srl t3, t1, s9<br> [0x80000120]:sw t3, 4(a0)<br>      |
|   3|[0x8000320c]<br>0x00000000|- rs1 : x27<br> - rs2 : x27<br> - rd : x1<br> - rs1 == rs2 != rd<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br>                                             |[0x8000012c]:srl ra, s11, s11<br> [0x80000130]:sw ra, 8(a0)<br>    |
|   4|[0x80003210]<br>0x00000000|- rs1 : x3<br> - rs2 : x3<br> - rd : x3<br> - rs1 == rs2 == rd<br>                                                                                                      |[0x8000013c]:srl gp, gp, gp<br> [0x80000140]:sw gp, 12(a0)<br>     |
|   5|[0x80003214]<br>0x00000000|- rs1 : x21<br> - rs2 : x20<br> - rd : x21<br> - rs1 == rd != rs2<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br>                                       |[0x8000014c]:srl s5, s5, s4<br> [0x80000150]:sw s5, 16(a0)<br>     |
|   6|[0x80003218]<br>0x00000000|- rs1 : x7<br> - rs2 : x18<br> - rd : x22<br> - rs2_val == 27<br>                                                                                                       |[0x8000015c]:srl s6, t2, s2<br> [0x80000160]:sw s6, 20(a0)<br>     |
|   7|[0x8000321c]<br>0x00000FFF|- rs1 : x17<br> - rs2 : x8<br> - rd : x2<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 2147483647<br>                           |[0x80000170]:srl sp, a7, fp<br> [0x80000174]:sw sp, 24(a0)<br>     |
|   8|[0x80003220]<br>0x00000000|- rs1 : x29<br> - rs2 : x31<br> - rd : x13<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br>                                                |[0x80000180]:srl a3, t4, t6<br> [0x80000184]:sw a3, 28(a0)<br>     |
|   9|[0x80003224]<br>0x7FFBFFFF|- rs1 : x15<br> - rs2 : x11<br> - rd : x26<br> - rs1_val == -524289<br> - rs2_val == 1<br>                                                                              |[0x80000194]:srl s10, a5, a1<br> [0x80000198]:sw s10, 32(a0)<br>   |
|  10|[0x80003228]<br>0x00000080|- rs1 : x25<br> - rs2 : x12<br> - rd : x27<br> - rs1_val == 512<br> - rs2_val == 2<br>                                                                                  |[0x800001a4]:srl s11, s9, a2<br> [0x800001a8]:sw s11, 36(a0)<br>   |
|  11|[0x8000322c]<br>0x00000010|- rs1 : x9<br> - rs2 : x13<br> - rd : x18<br> - rs1_val == 256<br> - rs2_val == 4<br>                                                                                   |[0x800001b4]:srl s2, s1, a3<br> [0x800001b8]:sw s2, 40(a0)<br>     |
|  12|[0x80003230]<br>0x00010000|- rs1 : x20<br> - rs2 : x1<br> - rd : x23<br> - rs1_val == 16777216<br> - rs2_val == 8<br>                                                                              |[0x800001c4]:srl s7, s4, ra<br> [0x800001c8]:sw s7, 44(a0)<br>     |
|  13|[0x80003234]<br>0x0000FFFF|- rs1 : x30<br> - rs2 : x28<br> - rd : x6<br> - rs2_val == 16<br>                                                                                                       |[0x800001d4]:srl t1, t5, t3<br> [0x800001d8]:sw t1, 48(a0)<br>     |
|  14|[0x80003238]<br>0x00000003|- rs1 : x13<br> - rs2 : x21<br> - rd : x4<br> - rs1_val == -32769<br> - rs2_val == 30<br>                                                                               |[0x800001e8]:srl tp, a3, s5<br> [0x800001ec]:sw tp, 52(a0)<br>     |
|  15|[0x8000323c]<br>0x00000007|- rs1 : x1<br> - rs2 : x2<br> - rd : x5<br> - rs2_val == 29<br>                                                                                                         |[0x800001f8]:srl t0, ra, sp<br> [0x800001fc]:sw t0, 56(a0)<br>     |
|  16|[0x80003240]<br>0x00000000|- rs1 : x12<br> - rs2 : x23<br> - rd : x29<br> - rs2_val == 23<br>                                                                                                      |[0x80000208]:srl t4, a2, s7<br> [0x8000020c]:sw t4, 60(a0)<br>     |
|  17|[0x80003244]<br>0x00008000|- rs1 : x2<br> - rs2 : x16<br> - rd : x15<br> - rs1_val == 1073741824<br> - rs2_val == 15<br>                                                                           |[0x80000218]:srl a5, sp, a6<br> [0x8000021c]:sw a5, 64(a0)<br>     |
|  18|[0x80003248]<br>0x000002AA|- rs1 : x24<br> - rs2 : x5<br> - rd : x20<br> - rs1_val == 1431655765<br> - rs2_val == 21<br>                                                                           |[0x8000022c]:srl s4, s8, t0<br> [0x80000230]:sw s4, 68(a0)<br>     |
|  19|[0x8000324c]<br>0x00000000|- rs1 : x0<br> - rs2 : x19<br> - rd : x12<br> - rs2_val == 10<br>                                                                                                       |[0x80000248]:srl a2, zero, s3<br> [0x8000024c]:sw a2, 0(ra)<br>    |
|  20|[0x80003250]<br>0x00000000|- rs1 : x26<br> - rs2 : x7<br> - rd : x16<br> - rs1_val == 2<br>                                                                                                        |[0x80000258]:srl a6, s10, t2<br> [0x8000025c]:sw a6, 4(ra)<br>     |
|  21|[0x80003254]<br>0x00000000|- rs1 : x11<br> - rs2 : x22<br> - rd : x30<br> - rs1_val == 8<br>                                                                                                       |[0x80000268]:srl t5, a1, s6<br> [0x8000026c]:sw t5, 8(ra)<br>      |
|  22|[0x80003258]<br>0x00000000|- rs1 : x10<br> - rs2 : x30<br> - rd : x0<br> - rs1_val == 16<br>                                                                                                       |[0x80000278]:srl zero, a0, t5<br> [0x8000027c]:sw zero, 12(ra)<br> |
|  23|[0x8000325c]<br>0x00000000|- rs1 : x5<br> - rs2 : x4<br> - rd : x19<br> - rs1_val == 32<br>                                                                                                        |[0x80000288]:srl s3, t0, tp<br> [0x8000028c]:sw s3, 16(ra)<br>     |
|  24|[0x80003260]<br>0x00000000|- rs1 : x22<br> - rs2 : x26<br> - rd : x31<br> - rs1_val == 64<br>                                                                                                      |[0x80000298]:srl t6, s6, s10<br> [0x8000029c]:sw t6, 20(ra)<br>    |
|  25|[0x80003264]<br>0x00000004|- rs1 : x18<br> - rs2 : x10<br> - rd : x8<br> - rs1_val == 128<br>                                                                                                      |[0x800002a8]:srl fp, s2, a0<br> [0x800002ac]:sw fp, 24(ra)<br>     |
|  26|[0x80003268]<br>0x00000004|- rs1 : x19<br> - rs2 : x29<br> - rd : x11<br> - rs1_val == 1024<br>                                                                                                    |[0x800002b8]:srl a1, s3, t4<br> [0x800002bc]:sw a1, 28(ra)<br>     |
|  27|[0x8000326c]<br>0x00000000|- rs1 : x31<br> - rs2 : x6<br> - rd : x10<br> - rs1_val == 2048<br>                                                                                                     |[0x800002cc]:srl a0, t6, t1<br> [0x800002d0]:sw a0, 32(ra)<br>     |
|  28|[0x80003270]<br>0x00000000|- rs1 : x14<br> - rs2 : x17<br> - rd : x24<br> - rs1_val == 4096<br>                                                                                                    |[0x800002dc]:srl s8, a4, a7<br> [0x800002e0]:sw s8, 36(ra)<br>     |
|  29|[0x80003274]<br>0x00000800|- rs1 : x16<br> - rs2 : x24<br> - rd : x17<br> - rs1_val == 8192<br>                                                                                                    |[0x800002ec]:srl a7, a6, s8<br> [0x800002f0]:sw a7, 40(ra)<br>     |
|  30|[0x80003278]<br>0x00008000|- rs1 : x8<br> - rs2 : x0<br> - rd : x25<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val == 32768<br>                                                                  |[0x800002fc]:srl s9, fp, zero<br> [0x80000300]:sw s9, 44(ra)<br>   |
|  31|[0x8000327c]<br>0x00000400|- rs1 : x28<br> - rs2 : x15<br> - rd : x14<br> - rs1_val == 65536<br>                                                                                                   |[0x8000030c]:srl a4, t3, a5<br> [0x80000310]:sw a4, 48(ra)<br>     |
|  32|[0x80003280]<br>0x00010000|- rs1 : x4<br> - rs2 : x14<br> - rd : x7<br> - rs1_val == 131072<br>                                                                                                    |[0x8000031c]:srl t2, tp, a4<br> [0x80000320]:sw t2, 52(ra)<br>     |
|  33|[0x80003284]<br>0x00004000|- rs1_val == 262144<br>                                                                                                                                                 |[0x8000032c]:srl a2, a0, a1<br> [0x80000330]:sw a2, 56(ra)<br>     |
|  34|[0x80003288]<br>0x00000004|- rs1_val == 524288<br>                                                                                                                                                 |[0x8000033c]:srl a2, a0, a1<br> [0x80000340]:sw a2, 60(ra)<br>     |
|  35|[0x8000328c]<br>0x00002000|- rs1_val == 1048576<br>                                                                                                                                                |[0x8000034c]:srl a2, a0, a1<br> [0x80000350]:sw a2, 64(ra)<br>     |
|  36|[0x80003290]<br>0x00400000|- rs1_val == 4194304<br>                                                                                                                                                |[0x8000035c]:srl a2, a0, a1<br> [0x80000360]:sw a2, 68(ra)<br>     |
|  37|[0x80003294]<br>0x00001000|- rs1_val == 8388608<br>                                                                                                                                                |[0x8000036c]:srl a2, a0, a1<br> [0x80000370]:sw a2, 72(ra)<br>     |
|  38|[0x80003298]<br>0x00040000|- rs1_val == 33554432<br>                                                                                                                                               |[0x8000037c]:srl a2, a0, a1<br> [0x80000380]:sw a2, 76(ra)<br>     |
|  39|[0x8000329c]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                                               |[0x8000038c]:srl a2, a0, a1<br> [0x80000390]:sw a2, 80(ra)<br>     |
|  40|[0x800032a0]<br>0x04000000|- rs1_val == 134217728<br>                                                                                                                                              |[0x8000039c]:srl a2, a0, a1<br> [0x800003a0]:sw a2, 84(ra)<br>     |
|  41|[0x800032a4]<br>0x7FFFFBFF|- rs1_val == -2049<br>                                                                                                                                                  |[0x800003b0]:srl a2, a0, a1<br> [0x800003b4]:sw a2, 88(ra)<br>     |
|  42|[0x800032a8]<br>0x0000001F|- rs1_val == -4097<br>                                                                                                                                                  |[0x800003c4]:srl a2, a0, a1<br> [0x800003c8]:sw a2, 92(ra)<br>     |
|  43|[0x800032ac]<br>0x000001FF|- rs1_val == -8193<br>                                                                                                                                                  |[0x800003d8]:srl a2, a0, a1<br> [0x800003dc]:sw a2, 96(ra)<br>     |
|  44|[0x800032b0]<br>0x001FFFF7|- rs1_val == -16385<br>                                                                                                                                                 |[0x800003ec]:srl a2, a0, a1<br> [0x800003f0]:sw a2, 100(ra)<br>    |
|  45|[0x800032b4]<br>0x001FFFDF|- rs1_val == -65537<br>                                                                                                                                                 |[0x80000400]:srl a2, a0, a1<br> [0x80000404]:sw a2, 104(ra)<br>    |
|  46|[0x800032b8]<br>0x00007FFE|- rs1_val == -131073<br>                                                                                                                                                |[0x80000414]:srl a2, a0, a1<br> [0x80000418]:sw a2, 108(ra)<br>    |
|  47|[0x800032bc]<br>0x7FFDFFFF|- rs1_val == -262145<br>                                                                                                                                                |[0x80000428]:srl a2, a0, a1<br> [0x8000042c]:sw a2, 112(ra)<br>    |
|  48|[0x800032c0]<br>0x3FFBFFFF|- rs1_val == -1048577<br>                                                                                                                                               |[0x8000043c]:srl a2, a0, a1<br> [0x80000440]:sw a2, 116(ra)<br>    |
|  49|[0x800032c4]<br>0x003FF7FF|- rs1_val == -2097153<br>                                                                                                                                               |[0x80000450]:srl a2, a0, a1<br> [0x80000454]:sw a2, 120(ra)<br>    |
|  50|[0x800032c8]<br>0x00000007|- rs1_val == -4194305<br>                                                                                                                                               |[0x80000464]:srl a2, a0, a1<br> [0x80000468]:sw a2, 124(ra)<br>    |
|  51|[0x800032cc]<br>0x00000003|- rs1_val == -8388609<br>                                                                                                                                               |[0x80000478]:srl a2, a0, a1<br> [0x8000047c]:sw a2, 128(ra)<br>    |
|  52|[0x800032d0]<br>0x00000007|- rs1_val == -16777217<br>                                                                                                                                              |[0x8000048c]:srl a2, a0, a1<br> [0x80000490]:sw a2, 132(ra)<br>    |
|  53|[0x800032d4]<br>0x00000003|- rs1_val == -33554433<br>                                                                                                                                              |[0x800004a0]:srl a2, a0, a1<br> [0x800004a4]:sw a2, 136(ra)<br>    |
|  54|[0x800032d8]<br>0x0000001F|- rs1_val == -67108865<br>                                                                                                                                              |[0x800004b4]:srl a2, a0, a1<br> [0x800004b8]:sw a2, 140(ra)<br>    |
|  55|[0x800032dc]<br>0xF7FFFFFF|- rs1_val < 0 and rs2_val == 0<br> - rs1_val == -134217729<br>                                                                                                          |[0x800004c8]:srl a2, a0, a1<br> [0x800004cc]:sw a2, 144(ra)<br>    |
|  56|[0x800032e0]<br>0x6FFFFFFF|- rs1_val == -536870913<br>                                                                                                                                             |[0x800004dc]:srl a2, a0, a1<br> [0x800004e0]:sw a2, 148(ra)<br>    |
|  57|[0x800032e4]<br>0x01FFFFFF|- rs1_val == -33<br>                                                                                                                                                    |[0x800004ec]:srl a2, a0, a1<br> [0x800004f0]:sw a2, 152(ra)<br>    |
|  58|[0x800032e8]<br>0x00001000|- rs1_val == 268435456<br>                                                                                                                                              |[0x800004fc]:srl a2, a0, a1<br> [0x80000500]:sw a2, 156(ra)<br>    |
|  59|[0x800032ec]<br>0x00200000|- rs1_val == 536870912<br>                                                                                                                                              |[0x8000050c]:srl a2, a0, a1<br> [0x80000510]:sw a2, 160(ra)<br>    |
|  60|[0x800032f0]<br>0x00005FFF|- rs1_val == -1073741825<br>                                                                                                                                            |[0x80000520]:srl a2, a0, a1<br> [0x80000524]:sw a2, 164(ra)<br>    |
|  61|[0x800032f4]<br>0x3FFFFFFF|- rs1_val == -2<br>                                                                                                                                                     |[0x80000530]:srl a2, a0, a1<br> [0x80000534]:sw a2, 168(ra)<br>    |
|  62|[0x800032f8]<br>0x00000007|- rs1_val == -5<br>                                                                                                                                                     |[0x80000540]:srl a2, a0, a1<br> [0x80000544]:sw a2, 172(ra)<br>    |
|  63|[0x800032fc]<br>0x000AAAAA|- rs1_val == -1431655766<br>                                                                                                                                            |[0x80000554]:srl a2, a0, a1<br> [0x80000558]:sw a2, 176(ra)<br>    |
|  64|[0x80003300]<br>0x00000003|- rs1_val == -3<br>                                                                                                                                                     |[0x80000564]:srl a2, a0, a1<br> [0x80000568]:sw a2, 180(ra)<br>    |
|  65|[0x80003304]<br>0x00001FFF|- rs1_val == -9<br>                                                                                                                                                     |[0x80000574]:srl a2, a0, a1<br> [0x80000578]:sw a2, 184(ra)<br>    |
|  66|[0x80003308]<br>0x3FFFFFFB|- rs1_val == -17<br>                                                                                                                                                    |[0x80000584]:srl a2, a0, a1<br> [0x80000588]:sw a2, 188(ra)<br>    |
|  67|[0x8000330c]<br>0x00000003|- rs1_val == -65<br>                                                                                                                                                    |[0x80000594]:srl a2, a0, a1<br> [0x80000598]:sw a2, 192(ra)<br>    |
|  68|[0x80003310]<br>0x00000003|- rs1_val == -129<br>                                                                                                                                                   |[0x800005a4]:srl a2, a0, a1<br> [0x800005a8]:sw a2, 196(ra)<br>    |
|  69|[0x80003314]<br>0x00003FFF|- rs1_val == -257<br>                                                                                                                                                   |[0x800005b4]:srl a2, a0, a1<br> [0x800005b8]:sw a2, 200(ra)<br>    |
|  70|[0x80003318]<br>0x0007FFFF|- rs1_val == -513<br>                                                                                                                                                   |[0x800005c4]:srl a2, a0, a1<br> [0x800005c8]:sw a2, 204(ra)<br>    |
|  71|[0x8000331c]<br>0x0007FFFF|- rs1_val == -1025<br>                                                                                                                                                  |[0x800005d4]:srl a2, a0, a1<br> [0x800005d8]:sw a2, 208(ra)<br>    |
|  72|[0x80003320]<br>0x80000000|- rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -2147483648<br>                                                                        |[0x800005e4]:srl a2, a0, a1<br> [0x800005e8]:sw a2, 212(ra)<br>    |
|  73|[0x80003324]<br>0x00000004|- rs1_val == 4<br>                                                                                                                                                      |[0x800005f4]:srl a2, a0, a1<br> [0x800005f8]:sw a2, 216(ra)<br>    |
|  74|[0x80003328]<br>0x00000800|- rs1_val == 2097152<br>                                                                                                                                                |[0x80000604]:srl a2, a0, a1<br> [0x80000608]:sw a2, 220(ra)<br>    |
