
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000820')]      |
| SIG_REGION                | [('0x80003204', '0x80003388', '97 words')]      |
| COV_LABELS                | remu      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/remu-01.S/remu-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 97      |
| STAT1                     | 95      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000658]:remu a2, a0, a1
      [0x8000065c]:sw a2, 212(ra)
 -- Signature Address: 0x80003324 Data: 0x55555555
 -- Redundant Coverpoints hit by the op
      - opcode : remu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -16777217
      - rs1_val == 1431655765




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007dc]:remu a2, a0, a1
      [0x800007e0]:sw a2, 296(ra)
 -- Signature Address: 0x80003378 Data: 0x2AAAAAAB
 -- Redundant Coverpoints hit by the op
      - opcode : remu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs1_val == (-2**(xlen-1))
      - rs2_val == 1431655765
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

|s.no|        signature         |                                                                                                           coverpoints                                                                                                            |                                code                                |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000000|- opcode : remu<br> - rs1 : x11<br> - rs2 : x11<br> - rd : x23<br> - rs1 == rs2 != rd<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == rs2_val<br> - rs2_val == 1431655765<br> - rs1_val == 1431655765<br>                      |[0x8000010c]:remu s7, a1, a1<br> [0x80000110]:sw s7, 0(a0)<br>      |
|   2|[0x80003208]<br>0x00000000|- rs1 : x19<br> - rs2 : x20<br> - rd : x2<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val != rs2_val<br> - rs1_val == 0<br>                                                                                           |[0x8000011c]:remu sp, s3, s4<br> [0x80000120]:sw sp, 4(a0)<br>      |
|   3|[0x8000320c]<br>0x7FFFFFFF|- rs1 : x1<br> - rs2 : x6<br> - rd : x6<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == -16777217<br> - rs1_val == 2147483647<br>                                      |[0x80000134]:remu t1, ra, t1<br> [0x80000138]:sw t1, 8(a0)<br>      |
|   4|[0x80003210]<br>0x00000001|- rs1 : x28<br> - rs2 : x31<br> - rd : x28<br> - rs1 == rd != rs2<br> - rs1_val == 1<br> - rs2_val == 536870912<br>                                                                                                               |[0x80000144]:remu t3, t3, t6<br> [0x80000148]:sw t3, 12(a0)<br>     |
|   5|[0x80003214]<br>0x00000000|- rs1 : x14<br> - rs2 : x14<br> - rd : x14<br> - rs1 == rs2 == rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs2_val == (-2**(xlen-1))<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -2147483648<br> |[0x80000158]:remu a4, a4, a4<br> [0x8000015c]:sw a4, 16(a0)<br>     |
|   6|[0x80003218]<br>0xFFFF7FFF|- rs1 : x24<br> - rs2 : x21<br> - rd : x5<br> - rs2_val == 0<br> - rs1_val == -32769<br>                                                                                                                                          |[0x8000016c]:remu t0, s8, s5<br> [0x80000170]:sw t0, 20(a0)<br>     |
|   7|[0x8000321c]<br>0x00008000|- rs1 : x6<br> - rs2 : x1<br> - rd : x20<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == 32768<br>                                                                                                  |[0x80000180]:remu s4, t1, ra<br> [0x80000184]:sw s4, 24(a0)<br>     |
|   8|[0x80003220]<br>0x00000000|- rs1 : x5<br> - rs2 : x30<br> - rd : x15<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == 1<br> - rs1_val == -2097153<br>                                                                                                      |[0x80000194]:remu a5, t0, t5<br> [0x80000198]:sw a5, 28(a0)<br>     |
|   9|[0x80003224]<br>0x00000000|- rs1 : x25<br> - rs2 : x15<br> - rd : x1<br> - rs2_val == -1431655766<br> - rs1_val == -1431655766<br>                                                                                                                           |[0x800001ac]:remu ra, s9, a5<br> [0x800001b0]:sw ra, 32(a0)<br>     |
|  10|[0x80003228]<br>0x00000002|- rs1 : x12<br> - rs2 : x26<br> - rd : x8<br> - rs2_val == 16777216<br> - rs1_val == 2<br>                                                                                                                                        |[0x800001bc]:remu fp, a2, s10<br> [0x800001c0]:sw fp, 36(a0)<br>    |
|  11|[0x8000322c]<br>0x00000004|- rs1 : x3<br> - rs2 : x24<br> - rd : x30<br> - rs2_val == -33554433<br> - rs1_val == 4<br>                                                                                                                                       |[0x800001d0]:remu t5, gp, s8<br> [0x800001d4]:sw t5, 40(a0)<br>     |
|  12|[0x80003230]<br>0x00000000|- rs1 : x2<br> - rs2 : x12<br> - rd : x0<br> - rs1_val == 8<br>                                                                                                                                                                   |[0x800001e4]:remu zero, sp, a2<br> [0x800001e8]:sw zero, 44(a0)<br> |
|  13|[0x80003234]<br>0x00000010|- rs1 : x13<br> - rs2 : x16<br> - rd : x31<br> - rs2_val == -2<br> - rs1_val == 16<br>                                                                                                                                            |[0x800001f4]:remu t6, a3, a6<br> [0x800001f8]:sw t6, 48(a0)<br>     |
|  14|[0x80003238]<br>0x00000020|- rs1 : x27<br> - rs2 : x8<br> - rd : x4<br> - rs2_val == -262145<br> - rs1_val == 32<br>                                                                                                                                         |[0x80000208]:remu tp, s11, fp<br> [0x8000020c]:sw tp, 52(a0)<br>    |
|  15|[0x8000323c]<br>0x00000040|- rs1 : x9<br> - rs2 : x0<br> - rd : x29<br> - rs1_val == 64<br>                                                                                                                                                                  |[0x8000021c]:remu t4, s1, zero<br> [0x80000220]:sw t4, 56(a0)<br>   |
|  16|[0x80003240]<br>0x00000080|- rs1 : x22<br> - rs2 : x4<br> - rd : x26<br> - rs2_val == 1024<br> - rs1_val == 128<br>                                                                                                                                          |[0x8000022c]:remu s10, s6, tp<br> [0x80000230]:sw s10, 60(a0)<br>   |
|  17|[0x80003244]<br>0x00000000|- rs1 : x16<br> - rs2 : x13<br> - rd : x19<br> - rs2_val == 8<br> - rs1_val == 256<br>                                                                                                                                            |[0x8000023c]:remu s3, a6, a3<br> [0x80000240]:sw s3, 64(a0)<br>     |
|  18|[0x80003248]<br>0x00000200|- rs1 : x15<br> - rs2 : x23<br> - rd : x9<br> - rs2_val == 524288<br> - rs1_val == 512<br>                                                                                                                                        |[0x8000024c]:remu s1, a5, s7<br> [0x80000250]:sw s1, 68(a0)<br>     |
|  19|[0x8000324c]<br>0x00000400|- rs1 : x26<br> - rs2 : x7<br> - rd : x22<br> - rs2_val == -524289<br> - rs1_val == 1024<br>                                                                                                                                      |[0x80000260]:remu s6, s10, t2<br> [0x80000264]:sw s6, 72(a0)<br>    |
|  20|[0x80003250]<br>0x00000000|- rs1 : x0<br> - rs2 : x28<br> - rd : x13<br>                                                                                                                                                                                     |[0x8000027c]:remu a3, zero, t3<br> [0x80000280]:sw a3, 0(ra)<br>    |
|  21|[0x80003254]<br>0x00000000|- rs1 : x17<br> - rs2 : x5<br> - rd : x27<br> - rs2_val == 64<br> - rs1_val == 4096<br>                                                                                                                                           |[0x8000028c]:remu s11, a7, t0<br> [0x80000290]:sw s11, 4(ra)<br>    |
|  22|[0x80003258]<br>0x00002000|- rs1 : x23<br> - rs2 : x19<br> - rd : x10<br> - rs2_val == -268435457<br> - rs1_val == 8192<br>                                                                                                                                  |[0x800002a0]:remu a0, s7, s3<br> [0x800002a4]:sw a0, 8(ra)<br>      |
|  23|[0x8000325c]<br>0x00004000|- rs1 : x8<br> - rs2 : x10<br> - rd : x7<br> - rs2_val == 33554432<br> - rs1_val == 16384<br>                                                                                                                                     |[0x800002b0]:remu t2, fp, a0<br> [0x800002b4]:sw t2, 12(ra)<br>     |
|  24|[0x80003260]<br>0x00000000|- rs1 : x30<br> - rs2 : x29<br> - rd : x3<br> - rs2_val == 16<br> - rs1_val == 65536<br>                                                                                                                                          |[0x800002c0]:remu gp, t5, t4<br> [0x800002c4]:sw gp, 16(ra)<br>     |
|  25|[0x80003264]<br>0x00020000|- rs1 : x4<br> - rs2 : x3<br> - rd : x12<br> - rs1_val == 131072<br>                                                                                                                                                              |[0x800002d0]:remu a2, tp, gp<br> [0x800002d4]:sw a2, 20(ra)<br>     |
|  26|[0x80003268]<br>0x00040000|- rs1 : x20<br> - rs2 : x25<br> - rd : x11<br> - rs2_val == -536870913<br> - rs1_val == 262144<br>                                                                                                                                |[0x800002e4]:remu a1, s4, s9<br> [0x800002e8]:sw a1, 24(ra)<br>     |
|  27|[0x8000326c]<br>0x00080000|- rs1 : x29<br> - rs2 : x2<br> - rd : x18<br> - rs2_val == -5<br> - rs1_val == 524288<br>                                                                                                                                         |[0x800002f4]:remu s2, t4, sp<br> [0x800002f8]:sw s2, 28(ra)<br>     |
|  28|[0x80003270]<br>0x00100000|- rs1 : x31<br> - rs2 : x17<br> - rd : x16<br> - rs1_val == 1048576<br>                                                                                                                                                           |[0x80000304]:remu a6, t6, a7<br> [0x80000308]:sw a6, 32(ra)<br>     |
|  29|[0x80003274]<br>0x00000002|- rs1 : x7<br> - rs2 : x18<br> - rd : x17<br> - rs1_val == 2097152<br>                                                                                                                                                            |[0x80000314]:remu a7, t2, s2<br> [0x80000318]:sw a7, 36(ra)<br>     |
|  30|[0x80003278]<br>0x00000000|- rs1 : x18<br> - rs2 : x27<br> - rd : x25<br> - rs2_val == 2<br> - rs1_val == 4194304<br>                                                                                                                                        |[0x80000324]:remu s9, s2, s11<br> [0x80000328]:sw s9, 40(ra)<br>    |
|  31|[0x8000327c]<br>0x00800000|- rs1 : x10<br> - rs2 : x9<br> - rd : x21<br> - rs1_val == 8388608<br>                                                                                                                                                            |[0x80000338]:remu s5, a0, s1<br> [0x8000033c]:sw s5, 44(ra)<br>     |
|  32|[0x80003280]<br>0x00000000|- rs1 : x21<br> - rs2 : x22<br> - rd : x24<br> - rs2_val == 8388608<br> - rs1_val == 16777216<br>                                                                                                                                 |[0x80000348]:remu s8, s5, s6<br> [0x8000034c]:sw s8, 48(ra)<br>     |
|  33|[0x80003284]<br>0x00000000|- rs2_val == 4<br> - rs1_val == 33554432<br>                                                                                                                                                                                      |[0x80000358]:remu a2, a0, a1<br> [0x8000035c]:sw a2, 52(ra)<br>     |
|  34|[0x80003288]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                                                                                                         |[0x80000368]:remu a2, a0, a1<br> [0x8000036c]:sw a2, 56(ra)<br>     |
|  35|[0x8000328c]<br>0x08000000|- rs1_val == 134217728<br>                                                                                                                                                                                                        |[0x80000378]:remu a2, a0, a1<br> [0x8000037c]:sw a2, 60(ra)<br>     |
|  36|[0x80003290]<br>0x10000000|- rs2_val == -8388609<br> - rs1_val == 268435456<br>                                                                                                                                                                              |[0x8000038c]:remu a2, a0, a1<br> [0x80000390]:sw a2, 64(ra)<br>     |
|  37|[0x80003294]<br>0x00000000|- rs2_val == 512<br> - rs1_val == 536870912<br>                                                                                                                                                                                   |[0x8000039c]:remu a2, a0, a1<br> [0x800003a0]:sw a2, 68(ra)<br>     |
|  38|[0x80003298]<br>0x00000001|- rs1_val == 1073741824<br>                                                                                                                                                                                                       |[0x800003b0]:remu a2, a0, a1<br> [0x800003b4]:sw a2, 72(ra)<br>     |
|  39|[0x8000329c]<br>0x000000FE|- rs2_val == 256<br> - rs1_val == -2<br>                                                                                                                                                                                          |[0x800003c0]:remu a2, a0, a1<br> [0x800003c4]:sw a2, 76(ra)<br>     |
|  40|[0x800032a0]<br>0x3FFFFFFD|- rs2_val == 1073741824<br> - rs1_val == -3<br>                                                                                                                                                                                   |[0x800003d0]:remu a2, a0, a1<br> [0x800003d4]:sw a2, 80(ra)<br>     |
|  41|[0x800032a4]<br>0x07FFFFFB|- rs2_val == 134217728<br> - rs1_val == -5<br>                                                                                                                                                                                    |[0x800003e0]:remu a2, a0, a1<br> [0x800003e4]:sw a2, 84(ra)<br>     |
|  42|[0x800032a8]<br>0x00000080|- rs2_val == -1048577<br>                                                                                                                                                                                                         |[0x800003f4]:remu a2, a0, a1<br> [0x800003f8]:sw a2, 88(ra)<br>     |
|  43|[0x800032ac]<br>0x00000002|- rs2_val == -2097153<br>                                                                                                                                                                                                         |[0x80000408]:remu a2, a0, a1<br> [0x8000040c]:sw a2, 92(ra)<br>     |
|  44|[0x800032b0]<br>0x00000008|- rs2_val == -4194305<br>                                                                                                                                                                                                         |[0x8000041c]:remu a2, a0, a1<br> [0x80000420]:sw a2, 96(ra)<br>     |
|  45|[0x800032b4]<br>0x00000200|- rs2_val == -67108865<br>                                                                                                                                                                                                        |[0x80000430]:remu a2, a0, a1<br> [0x80000434]:sw a2, 100(ra)<br>    |
|  46|[0x800032b8]<br>0x80000000|- rs2_val == -134217729<br>                                                                                                                                                                                                       |[0x80000444]:remu a2, a0, a1<br> [0x80000448]:sw a2, 104(ra)<br>    |
|  47|[0x800032bc]<br>0x3FFFFFF7|- rs2_val == -1073741825<br>                                                                                                                                                                                                      |[0x80000458]:remu a2, a0, a1<br> [0x8000045c]:sw a2, 108(ra)<br>    |
|  48|[0x800032c0]<br>0x03FFFFF7|- rs2_val == 67108864<br> - rs1_val == -9<br>                                                                                                                                                                                     |[0x80000468]:remu a2, a0, a1<br> [0x8000046c]:sw a2, 112(ra)<br>    |
|  49|[0x800032c4]<br>0x00FFFFF0|- rs1_val == -17<br>                                                                                                                                                                                                              |[0x8000047c]:remu a2, a0, a1<br> [0x80000480]:sw a2, 116(ra)<br>    |
|  50|[0x800032c8]<br>0x00000007|- rs1_val == -33<br>                                                                                                                                                                                                              |[0x8000048c]:remu a2, a0, a1<br> [0x80000490]:sw a2, 120(ra)<br>    |
|  51|[0x800032cc]<br>0xFFFFFFBF|- rs2_val == -3<br> - rs1_val == -65<br>                                                                                                                                                                                          |[0x8000049c]:remu a2, a0, a1<br> [0x800004a0]:sw a2, 124(ra)<br>    |
|  52|[0x800032d0]<br>0x0001FF80|- rs2_val == -131073<br> - rs1_val == -129<br>                                                                                                                                                                                    |[0x800004b0]:remu a2, a0, a1<br> [0x800004b4]:sw a2, 128(ra)<br>    |
|  53|[0x800032d4]<br>0x000002FF|- rs1_val == -257<br>                                                                                                                                                                                                             |[0x800004c0]:remu a2, a0, a1<br> [0x800004c4]:sw a2, 132(ra)<br>    |
|  54|[0x800032d8]<br>0x0001FDFF|- rs2_val == 131072<br> - rs1_val == -513<br>                                                                                                                                                                                     |[0x800004d0]:remu a2, a0, a1<br> [0x800004d4]:sw a2, 136(ra)<br>    |
|  55|[0x800032dc]<br>0x0000FC00|- rs2_val == -65537<br> - rs1_val == -1025<br>                                                                                                                                                                                    |[0x800004e4]:remu a2, a0, a1<br> [0x800004e8]:sw a2, 140(ra)<br>    |
|  56|[0x800032e0]<br>0x0001F800|- rs1_val == -2049<br>                                                                                                                                                                                                            |[0x800004fc]:remu a2, a0, a1<br> [0x80000500]:sw a2, 144(ra)<br>    |
|  57|[0x800032e4]<br>0x003FEFFF|- rs2_val == 4194304<br> - rs1_val == -4097<br>                                                                                                                                                                                   |[0x80000510]:remu a2, a0, a1<br> [0x80000514]:sw a2, 148(ra)<br>    |
|  58|[0x800032e8]<br>0xFFFFDFFF|- rs1_val == -8193<br>                                                                                                                                                                                                            |[0x80000524]:remu a2, a0, a1<br> [0x80000528]:sw a2, 152(ra)<br>    |
|  59|[0x800032ec]<br>0x1FFFBFFF|- rs1_val == -16385<br>                                                                                                                                                                                                           |[0x80000538]:remu a2, a0, a1<br> [0x8000053c]:sw a2, 156(ra)<br>    |
|  60|[0x800032f0]<br>0x07FEFFFF|- rs1_val == -65537<br>                                                                                                                                                                                                           |[0x8000054c]:remu a2, a0, a1<br> [0x80000550]:sw a2, 160(ra)<br>    |
|  61|[0x800032f4]<br>0xFFFDFFFF|- rs1_val == -131073<br>                                                                                                                                                                                                          |[0x80000564]:remu a2, a0, a1<br> [0x80000568]:sw a2, 164(ra)<br>    |
|  62|[0x800032f8]<br>0xFFFBFFFF|- rs2_val == -257<br> - rs1_val == -262145<br>                                                                                                                                                                                    |[0x80000578]:remu a2, a0, a1<br> [0x8000057c]:sw a2, 168(ra)<br>    |
|  63|[0x800032fc]<br>0xFFF7FFFF|- rs2_val == -129<br> - rs1_val == -524289<br>                                                                                                                                                                                    |[0x8000058c]:remu a2, a0, a1<br> [0x80000590]:sw a2, 172(ra)<br>    |
|  64|[0x80003300]<br>0xFFBFFFFF|- rs1_val == -4194305<br>                                                                                                                                                                                                         |[0x800005a0]:remu a2, a0, a1<br> [0x800005a4]:sw a2, 176(ra)<br>    |
|  65|[0x80003304]<br>0xFF7FFFFF|- rs1_val == -8388609<br>                                                                                                                                                                                                         |[0x800005b4]:remu a2, a0, a1<br> [0x800005b8]:sw a2, 180(ra)<br>    |
|  66|[0x80003308]<br>0xFEFFFFFF|- rs1_val == -16777217<br>                                                                                                                                                                                                        |[0x800005c8]:remu a2, a0, a1<br> [0x800005cc]:sw a2, 184(ra)<br>    |
|  67|[0x8000330c]<br>0x000FFFFF|- rs2_val == 1048576<br> - rs1_val == -33554433<br>                                                                                                                                                                               |[0x800005dc]:remu a2, a0, a1<br> [0x800005e0]:sw a2, 188(ra)<br>    |
|  68|[0x80003310]<br>0xFBFFFFFF|- rs1_val == -67108865<br>                                                                                                                                                                                                        |[0x800005f0]:remu a2, a0, a1<br> [0x800005f4]:sw a2, 192(ra)<br>    |
|  69|[0x80003314]<br>0x00000004|- rs1_val == -134217729<br>                                                                                                                                                                                                       |[0x80000604]:remu a2, a0, a1<br> [0x80000608]:sw a2, 196(ra)<br>    |
|  70|[0x80003318]<br>0x00000000|- rs1_val == -268435457<br>                                                                                                                                                                                                       |[0x80000618]:remu a2, a0, a1<br> [0x8000061c]:sw a2, 200(ra)<br>    |
|  71|[0x8000331c]<br>0x0000001F|- rs2_val == 32<br> - rs1_val == -536870913<br>                                                                                                                                                                                   |[0x8000062c]:remu a2, a0, a1<br> [0x80000630]:sw a2, 204(ra)<br>    |
|  72|[0x80003320]<br>0x0000000F|- rs1_val == -1073741825<br>                                                                                                                                                                                                      |[0x80000640]:remu a2, a0, a1<br> [0x80000644]:sw a2, 208(ra)<br>    |
|  73|[0x80003328]<br>0x0000007F|- rs2_val == 128<br>                                                                                                                                                                                                              |[0x80000668]:remu a2, a0, a1<br> [0x8000066c]:sw a2, 216(ra)<br>    |
|  74|[0x8000332c]<br>0x000007FF|- rs2_val == 2048<br>                                                                                                                                                                                                             |[0x80000680]:remu a2, a0, a1<br> [0x80000684]:sw a2, 220(ra)<br>    |
|  75|[0x80003330]<br>0x00000000|- rs2_val == 4096<br>                                                                                                                                                                                                             |[0x80000690]:remu a2, a0, a1<br> [0x80000694]:sw a2, 224(ra)<br>    |
|  76|[0x80003334]<br>0x00001FF9|- rs2_val == 8192<br>                                                                                                                                                                                                             |[0x800006a0]:remu a2, a0, a1<br> [0x800006a4]:sw a2, 228(ra)<br>    |
|  77|[0x80003338]<br>0x00000004|- rs2_val == 16384<br>                                                                                                                                                                                                            |[0x800006b0]:remu a2, a0, a1<br> [0x800006b4]:sw a2, 232(ra)<br>    |
|  78|[0x8000333c]<br>0x0003FFFD|- rs2_val == 262144<br>                                                                                                                                                                                                           |[0x800006c0]:remu a2, a0, a1<br> [0x800006c4]:sw a2, 236(ra)<br>    |
|  79|[0x80003340]<br>0x0017FFFF|- rs2_val == 2097152<br>                                                                                                                                                                                                          |[0x800006d4]:remu a2, a0, a1<br> [0x800006d8]:sw a2, 240(ra)<br>    |
|  80|[0x80003344]<br>0x0FFBFFFF|- rs2_val == 268435456<br>                                                                                                                                                                                                        |[0x800006e8]:remu a2, a0, a1<br> [0x800006ec]:sw a2, 244(ra)<br>    |
|  81|[0x80003348]<br>0xFFFFFFBF|- rs2_val == -9<br>                                                                                                                                                                                                               |[0x800006f8]:remu a2, a0, a1<br> [0x800006fc]:sw a2, 248(ra)<br>    |
|  82|[0x8000334c]<br>0x00004000|- rs2_val == -17<br>                                                                                                                                                                                                              |[0x80000708]:remu a2, a0, a1<br> [0x8000070c]:sw a2, 252(ra)<br>    |
|  83|[0x80003350]<br>0xFFFFF7FF|- rs2_val == -33<br>                                                                                                                                                                                                              |[0x8000071c]:remu a2, a0, a1<br> [0x80000720]:sw a2, 256(ra)<br>    |
|  84|[0x80003354]<br>0xFEFFFFFF|- rs2_val == -65<br>                                                                                                                                                                                                              |[0x80000730]:remu a2, a0, a1<br> [0x80000734]:sw a2, 260(ra)<br>    |
|  85|[0x80003358]<br>0x000001E0|- rs2_val == -513<br>                                                                                                                                                                                                             |[0x80000740]:remu a2, a0, a1<br> [0x80000744]:sw a2, 264(ra)<br>    |
|  86|[0x8000335c]<br>0x08000000|- rs2_val == -1025<br>                                                                                                                                                                                                            |[0x80000750]:remu a2, a0, a1<br> [0x80000754]:sw a2, 268(ra)<br>    |
|  87|[0x80003360]<br>0x000007F9|- rs2_val == -2049<br>                                                                                                                                                                                                            |[0x80000764]:remu a2, a0, a1<br> [0x80000768]:sw a2, 272(ra)<br>    |
|  88|[0x80003364]<br>0x00000009|- rs2_val == -4097<br>                                                                                                                                                                                                            |[0x80000778]:remu a2, a0, a1<br> [0x8000077c]:sw a2, 276(ra)<br>    |
|  89|[0x80003368]<br>0x00001C00|- rs2_val == -8193<br>                                                                                                                                                                                                            |[0x8000078c]:remu a2, a0, a1<br> [0x80000790]:sw a2, 280(ra)<br>    |
|  90|[0x8000336c]<br>0x00004000|- rs2_val == -16385<br>                                                                                                                                                                                                           |[0x800007a0]:remu a2, a0, a1<br> [0x800007a4]:sw a2, 284(ra)<br>    |
|  91|[0x80003370]<br>0x00100000|- rs2_val == -32769<br>                                                                                                                                                                                                           |[0x800007b4]:remu a2, a0, a1<br> [0x800007b8]:sw a2, 288(ra)<br>    |
|  92|[0x80003374]<br>0x0000FFFF|- rs2_val == 65536<br>                                                                                                                                                                                                            |[0x800007c8]:remu a2, a0, a1<br> [0x800007cc]:sw a2, 292(ra)<br>    |
|  93|[0x8000337c]<br>0x7FEFFFFF|- rs1_val == -1048577<br>                                                                                                                                                                                                         |[0x800007f0]:remu a2, a0, a1<br> [0x800007f4]:sw a2, 300(ra)<br>    |
|  94|[0x80003380]<br>0x00000040|- rs2_val == 32768<br>                                                                                                                                                                                                            |[0x80000800]:remu a2, a0, a1<br> [0x80000804]:sw a2, 304(ra)<br>    |
|  95|[0x80003384]<br>0x00000800|- rs1_val == 2048<br>                                                                                                                                                                                                             |[0x80000814]:remu a2, a0, a1<br> [0x80000818]:sw a2, 308(ra)<br>    |
