
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000890')]      |
| SIG_REGION                | [('0x80003204', '0x800033a4', '104 words')]      |
| COV_LABELS                | div      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/div-01.S/div-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 104      |
| STAT1                     | 99      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003a8]:div a2, a0, a1
      [0x800003ac]:sw a2, 24(ra)
 -- Signature Address: 0x800032a0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : div
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs1_val == -5




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000844]:div a2, a0, a1
      [0x80000848]:sw a2, 264(ra)
 -- Signature Address: 0x80003390 Data: 0x19999999
 -- Redundant Coverpoints hit by the op
      - opcode : div
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs1_val == (-2**(xlen-1))
      - rs2_val == -5
      - rs1_val == -2147483648




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000854]:div a2, a0, a1
      [0x80000858]:sw a2, 268(ra)
 -- Signature Address: 0x80003394 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : div
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == (-2**(xlen-1))
      - rs2_val == -2147483648




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000864]:div a2, a0, a1
      [0x80000868]:sw a2, 272(ra)
 -- Signature Address: 0x80003398 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : div
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 262144
      - rs1_val == 512




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000884]:div a2, a0, a1
      [0x80000888]:sw a2, 280(ra)
 -- Signature Address: 0x800033a0 Data: 0xFFFFCCCD
 -- Redundant Coverpoints hit by the op
      - opcode : div
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -5
      - rs1_val == 65536






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

|s.no|        signature         |                                                                                          coverpoints                                                                                          |                               code                               |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000001|- opcode : div<br> - rs1 : x15<br> - rs2 : x15<br> - rd : x6<br> - rs1 == rs2 != rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br> - rs2_val == -5<br> - rs1_val == -5<br>     |[0x80000108]:div t1, a5, a5<br> [0x8000010c]:sw t1, 0(a0)<br>     |
|   2|[0x80003208]<br>0x00000000|- rs1 : x22<br> - rs2 : x9<br> - rd : x31<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val != rs2_val<br> - rs1_val == 0<br> - rs2_val == 536870912<br>                             |[0x80000118]:div t6, s6, s1<br> [0x8000011c]:sw t6, 4(a0)<br>     |
|   3|[0x8000320c]<br>0x0000000F|- rs1 : x8<br> - rs2 : x19<br> - rd : x19<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 134217728<br> - rs1_val == 2147483647<br> |[0x8000012c]:div s3, fp, s3<br> [0x80000130]:sw s3, 8(a0)<br>     |
|   4|[0x80003210]<br>0x00000000|- rs1 : x14<br> - rs2 : x3<br> - rd : x14<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == 1<br>                                                                      |[0x8000013c]:div a4, a4, gp<br> [0x80000140]:sw a4, 12(a0)<br>    |
|   5|[0x80003214]<br>0x00000001|- rs1 : x1<br> - rs2 : x1<br> - rd : x1<br> - rs1 == rs2 == rd<br> - rs2_val == (-2**(xlen-1))<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -2147483648<br>   |[0x8000014c]:div ra, ra, ra<br> [0x80000150]:sw ra, 16(a0)<br>    |
|   6|[0x80003218]<br>0xFFFFFFFF|- rs1 : x31<br> - rs2 : x16<br> - rd : x7<br> - rs2_val == 0<br> - rs1_val == 131072<br>                                                                                                       |[0x8000015c]:div t2, t6, a6<br> [0x80000160]:sw t2, 20(a0)<br>    |
|   7|[0x8000321c]<br>0x00000000|- rs1 : x20<br> - rs2 : x12<br> - rd : x26<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == 2048<br>                                                              |[0x80000174]:div s10, s4, a2<br> [0x80000178]:sw s10, 24(a0)<br>  |
|   8|[0x80003220]<br>0xFFFFFFBF|- rs1 : x26<br> - rs2 : x30<br> - rd : x12<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == 1<br> - rs1_val == -65<br>                                                                       |[0x80000184]:div a2, s10, t5<br> [0x80000188]:sw a2, 28(a0)<br>   |
|   9|[0x80003224]<br>0x00000001|- rs1 : x6<br> - rs2 : x22<br> - rd : x5<br>                                                                                                                                                   |[0x80000194]:div t0, t1, s6<br> [0x80000198]:sw t0, 32(a0)<br>    |
|  10|[0x80003228]<br>0x00000000|- rs1 : x9<br> - rs2 : x18<br> - rd : x4<br> - rs2_val == 33554432<br> - rs1_val == 2<br>                                                                                                      |[0x800001a4]:div tp, s1, s2<br> [0x800001a8]:sw tp, 36(a0)<br>    |
|  11|[0x8000322c]<br>0x00000000|- rs1 : x19<br> - rs2 : x25<br> - rd : x27<br> - rs1_val == 4<br>                                                                                                                              |[0x800001b4]:div s11, s3, s9<br> [0x800001b8]:sw s11, 40(a0)<br>  |
|  12|[0x80003230]<br>0xFFFFFFF8|- rs1 : x12<br> - rs2 : x5<br> - rd : x23<br> - rs1_val == 8<br>                                                                                                                               |[0x800001c4]:div s7, a2, t0<br> [0x800001c8]:sw s7, 44(a0)<br>    |
|  13|[0x80003234]<br>0x00000000|- rs1 : x7<br> - rs2 : x11<br> - rd : x2<br> - rs2_val == 16384<br> - rs1_val == 16<br>                                                                                                        |[0x800001d4]:div sp, t2, a1<br> [0x800001d8]:sw sp, 48(a0)<br>    |
|  14|[0x80003238]<br>0x00000000|- rs1 : x29<br> - rs2 : x20<br> - rd : x24<br> - rs2_val == 2097152<br> - rs1_val == 32<br>                                                                                                    |[0x800001e4]:div s8, t4, s4<br> [0x800001e8]:sw s8, 52(a0)<br>    |
|  15|[0x8000323c]<br>0x00000000|- rs1 : x16<br> - rs2 : x14<br> - rd : x29<br> - rs2_val == 131072<br> - rs1_val == 64<br>                                                                                                     |[0x800001f4]:div t4, a6, a4<br> [0x800001f8]:sw t4, 56(a0)<br>    |
|  16|[0x80003240]<br>0x00000000|- rs1 : x28<br> - rs2 : x24<br> - rd : x21<br> - rs2_val == 4096<br> - rs1_val == 128<br>                                                                                                      |[0x80000204]:div s5, t3, s8<br> [0x80000208]:sw s5, 60(a0)<br>    |
|  17|[0x80003244]<br>0x00000000|- rs1 : x5<br> - rs2 : x2<br> - rd : x3<br> - rs1_val == 256<br>                                                                                                                               |[0x8000021c]:div gp, t0, sp<br> [0x80000220]:sw gp, 0(ra)<br>     |
|  18|[0x80003248]<br>0x00000000|- rs1 : x11<br> - rs2 : x17<br> - rd : x0<br> - rs2_val == 262144<br> - rs1_val == 512<br>                                                                                                     |[0x8000022c]:div zero, a1, a7<br> [0x80000230]:sw zero, 4(ra)<br> |
|  19|[0x8000324c]<br>0x00000000|- rs1 : x0<br> - rs2 : x21<br> - rd : x22<br>                                                                                                                                                  |[0x8000023c]:div s6, zero, s5<br> [0x80000240]:sw s6, 8(ra)<br>   |
|  20|[0x80003250]<br>0x00000555|- rs1 : x30<br> - rs2 : x27<br> - rd : x28<br> - rs1_val == 4096<br>                                                                                                                           |[0x8000024c]:div t3, t5, s11<br> [0x80000250]:sw t3, 12(ra)<br>   |
|  21|[0x80003254]<br>0x00000000|- rs1 : x21<br> - rs2 : x23<br> - rd : x30<br> - rs2_val == -1073741825<br> - rs1_val == 8192<br>                                                                                              |[0x80000260]:div t5, s5, s7<br> [0x80000264]:sw t5, 16(ra)<br>    |
|  22|[0x80003258]<br>0xFFFFC000|- rs1 : x10<br> - rs2 : x28<br> - rd : x20<br> - rs1_val == 16384<br>                                                                                                                          |[0x80000270]:div s4, a0, t3<br> [0x80000274]:sw s4, 20(ra)<br>    |
|  23|[0x8000325c]<br>0xFFFFFF02|- rs1 : x17<br> - rs2 : x31<br> - rd : x15<br> - rs2_val == -129<br> - rs1_val == 32768<br>                                                                                                    |[0x80000280]:div a5, a7, t6<br> [0x80000284]:sw a5, 24(ra)<br>    |
|  24|[0x80003260]<br>0xFFFFFFFF|- rs1 : x25<br> - rs2 : x0<br> - rd : x8<br> - rs1_val == 65536<br>                                                                                                                            |[0x80000290]:div fp, s9, zero<br> [0x80000294]:sw fp, 28(ra)<br>  |
|  25|[0x80003264]<br>0xFFFFF810|- rs1 : x27<br> - rs2 : x4<br> - rd : x25<br> - rs1_val == 262144<br>                                                                                                                          |[0x800002a0]:div s9, s11, tp<br> [0x800002a4]:sw s9, 32(ra)<br>   |
|  26|[0x80003268]<br>0xFFFFFF81|- rs1 : x13<br> - rs2 : x29<br> - rd : x10<br> - rs2_val == -4097<br> - rs1_val == 524288<br>                                                                                                  |[0x800002b4]:div a0, a3, t4<br> [0x800002b8]:sw a0, 36(ra)<br>    |
|  27|[0x8000326c]<br>0xFFFFFFFF|- rs1 : x23<br> - rs2 : x7<br> - rd : x17<br> - rs1_val == 1048576<br>                                                                                                                         |[0x800002c4]:div a7, s7, t2<br> [0x800002c8]:sw a7, 40(ra)<br>    |
|  28|[0x80003270]<br>0xFFFC71C8|- rs1 : x2<br> - rs2 : x8<br> - rd : x9<br> - rs2_val == -9<br> - rs1_val == 2097152<br>                                                                                                       |[0x800002d4]:div s1, sp, fp<br> [0x800002d8]:sw s1, 44(ra)<br>    |
|  29|[0x80003274]<br>0xFFFFFF01|- rs1 : x18<br> - rs2 : x13<br> - rd : x11<br> - rs2_val == -16385<br> - rs1_val == 4194304<br>                                                                                                |[0x800002e8]:div a1, s2, a3<br> [0x800002ec]:sw a1, 48(ra)<br>    |
|  30|[0x80003278]<br>0x00000000|- rs1 : x24<br> - rs2 : x10<br> - rd : x13<br> - rs2_val == -268435457<br> - rs1_val == 8388608<br>                                                                                            |[0x800002fc]:div a3, s8, a0<br> [0x80000300]:sw a3, 52(ra)<br>    |
|  31|[0x8000327c]<br>0xFFF0F0F1|- rs1 : x3<br> - rs2 : x6<br> - rd : x18<br> - rs2_val == -17<br> - rs1_val == 16777216<br>                                                                                                    |[0x8000030c]:div s2, gp, t1<br> [0x80000310]:sw s2, 56(ra)<br>    |
|  32|[0x80003280]<br>0x00040000|- rs1 : x4<br> - rs2 : x26<br> - rd : x16<br> - rs2_val == 128<br> - rs1_val == 33554432<br>                                                                                                   |[0x8000031c]:div a6, tp, s10<br> [0x80000320]:sw a6, 60(ra)<br>   |
|  33|[0x80003284]<br>0xFF99999A|- rs1_val == 67108864<br>                                                                                                                                                                      |[0x8000032c]:div a2, a0, a1<br> [0x80000330]:sw a2, 64(ra)<br>    |
|  34|[0x80003288]<br>0x00000000|- rs2_val == 1073741824<br> - rs1_val == 134217728<br>                                                                                                                                         |[0x80000344]:div a2, a0, a1<br> [0x80000348]:sw a2, 0(ra)<br>     |
|  35|[0x8000328c]<br>0xFE666667|- rs1_val == 268435456<br>                                                                                                                                                                     |[0x80000354]:div a2, a0, a1<br> [0x80000358]:sw a2, 4(ra)<br>     |
|  36|[0x80003290]<br>0xFC71C71D|- rs1_val == 536870912<br>                                                                                                                                                                     |[0x80000364]:div a2, a0, a1<br> [0x80000368]:sw a2, 8(ra)<br>     |
|  37|[0x80003294]<br>0x00000040|- rs2_val == 16777216<br> - rs1_val == 1073741824<br>                                                                                                                                          |[0x80000374]:div a2, a0, a1<br> [0x80000378]:sw a2, 12(ra)<br>    |
|  38|[0x80003298]<br>0x00000000|- rs2_val == -32769<br> - rs1_val == -2<br>                                                                                                                                                    |[0x80000388]:div a2, a0, a1<br> [0x8000038c]:sw a2, 16(ra)<br>    |
|  39|[0x8000329c]<br>0x00000000|- rs2_val == -257<br> - rs1_val == -3<br>                                                                                                                                                      |[0x80000398]:div a2, a0, a1<br> [0x8000039c]:sw a2, 20(ra)<br>    |
|  40|[0x800032a4]<br>0x00000000|- rs2_val == -65<br> - rs1_val == -9<br>                                                                                                                                                       |[0x800003b8]:div a2, a0, a1<br> [0x800003bc]:sw a2, 28(ra)<br>    |
|  41|[0x800032a8]<br>0xFFFFFFFF|- rs2_val == 16<br> - rs1_val == -17<br>                                                                                                                                                       |[0x800003c8]:div a2, a0, a1<br> [0x800003cc]:sw a2, 32(ra)<br>    |
|  42|[0x800032ac]<br>0x00000000|- rs1_val == -33<br>                                                                                                                                                                           |[0x800003d8]:div a2, a0, a1<br> [0x800003dc]:sw a2, 36(ra)<br>    |
|  43|[0x800032b0]<br>0x00000000|- rs2_val == -513<br> - rs1_val == -129<br>                                                                                                                                                    |[0x800003e8]:div a2, a0, a1<br> [0x800003ec]:sw a2, 40(ra)<br>    |
|  44|[0x800032b4]<br>0x00000000|- rs1_val == -257<br>                                                                                                                                                                          |[0x800003f8]:div a2, a0, a1<br> [0x800003fc]:sw a2, 44(ra)<br>    |
|  45|[0x800032b8]<br>0x000000FF|- rs2_val == -262145<br> - rs1_val == -67108865<br>                                                                                                                                            |[0x80000410]:div a2, a0, a1<br> [0x80000414]:sw a2, 48(ra)<br>    |
|  46|[0x800032bc]<br>0xFFFFFFFD|- rs2_val == -524289<br>                                                                                                                                                                       |[0x80000424]:div a2, a0, a1<br> [0x80000428]:sw a2, 52(ra)<br>    |
|  47|[0x800032c0]<br>0x00000000|- rs2_val == -1048577<br>                                                                                                                                                                      |[0x80000438]:div a2, a0, a1<br> [0x8000043c]:sw a2, 56(ra)<br>    |
|  48|[0x800032c4]<br>0x00000000|- rs2_val == -2097153<br>                                                                                                                                                                      |[0x8000044c]:div a2, a0, a1<br> [0x80000450]:sw a2, 60(ra)<br>    |
|  49|[0x800032c8]<br>0x00000000|- rs2_val == -4194305<br>                                                                                                                                                                      |[0x80000460]:div a2, a0, a1<br> [0x80000464]:sw a2, 64(ra)<br>    |
|  50|[0x800032cc]<br>0x00000000|- rs2_val == -8388609<br>                                                                                                                                                                      |[0x80000474]:div a2, a0, a1<br> [0x80000478]:sw a2, 68(ra)<br>    |
|  51|[0x800032d0]<br>0x00000000|- rs2_val == -16777217<br> - rs1_val == -4097<br>                                                                                                                                              |[0x8000048c]:div a2, a0, a1<br> [0x80000490]:sw a2, 72(ra)<br>    |
|  52|[0x800032d4]<br>0x00000000|- rs2_val == -33554433<br>                                                                                                                                                                     |[0x800004a0]:div a2, a0, a1<br> [0x800004a4]:sw a2, 76(ra)<br>    |
|  53|[0x800032d8]<br>0xFFFFFFF1|- rs2_val == -67108865<br>                                                                                                                                                                     |[0x800004b4]:div a2, a0, a1<br> [0x800004b8]:sw a2, 80(ra)<br>    |
|  54|[0x800032dc]<br>0x00000000|- rs2_val == -134217729<br> - rs1_val == -2049<br>                                                                                                                                             |[0x800004cc]:div a2, a0, a1<br> [0x800004d0]:sw a2, 84(ra)<br>    |
|  55|[0x800032e0]<br>0x00000000|- rs2_val == -536870913<br>                                                                                                                                                                    |[0x800004e0]:div a2, a0, a1<br> [0x800004e4]:sw a2, 88(ra)<br>    |
|  56|[0x800032e4]<br>0x00000000|- rs2_val == 1431655765<br>                                                                                                                                                                    |[0x800004f4]:div a2, a0, a1<br> [0x800004f8]:sw a2, 92(ra)<br>    |
|  57|[0x800032e8]<br>0x00000000|- rs2_val == -1431655766<br>                                                                                                                                                                   |[0x80000508]:div a2, a0, a1<br> [0x8000050c]:sw a2, 96(ra)<br>    |
|  58|[0x800032ec]<br>0xFFFFFFFE|- rs2_val == 256<br> - rs1_val == -513<br>                                                                                                                                                     |[0x80000518]:div a2, a0, a1<br> [0x8000051c]:sw a2, 100(ra)<br>   |
|  59|[0x800032f0]<br>0x00000000|- rs1_val == -1025<br>                                                                                                                                                                         |[0x8000052c]:div a2, a0, a1<br> [0x80000530]:sw a2, 104(ra)<br>   |
|  60|[0x800032f4]<br>0x00000333|- rs1_val == -8193<br>                                                                                                                                                                         |[0x80000540]:div a2, a0, a1<br> [0x80000544]:sw a2, 108(ra)<br>   |
|  61|[0x800032f8]<br>0x00000000|- rs2_val == 67108864<br> - rs1_val == -16385<br>                                                                                                                                              |[0x80000554]:div a2, a0, a1<br> [0x80000558]:sw a2, 112(ra)<br>   |
|  62|[0x800032fc]<br>0xFFFFFC00|- rs2_val == 32<br> - rs1_val == -32769<br>                                                                                                                                                    |[0x80000568]:div a2, a0, a1<br> [0x8000056c]:sw a2, 116(ra)<br>   |
|  63|[0x80003300]<br>0xFFFFE38F|- rs1_val == -65537<br>                                                                                                                                                                        |[0x8000057c]:div a2, a0, a1<br> [0x80000580]:sw a2, 120(ra)<br>   |
|  64|[0x80003304]<br>0x00000000|- rs1_val == -131073<br>                                                                                                                                                                       |[0x80000594]:div a2, a0, a1<br> [0x80000598]:sw a2, 124(ra)<br>   |
|  65|[0x80003308]<br>0x00000000|- rs1_val == -262145<br>                                                                                                                                                                       |[0x800005a8]:div a2, a0, a1<br> [0x800005ac]:sw a2, 128(ra)<br>   |
|  66|[0x8000330c]<br>0x0002AAAB|- rs2_val == -3<br> - rs1_val == -524289<br>                                                                                                                                                   |[0x800005bc]:div a2, a0, a1<br> [0x800005c0]:sw a2, 132(ra)<br>   |
|  67|[0x80003310]<br>0x00000FF0|- rs1_val == -1048577<br>                                                                                                                                                                      |[0x800005d0]:div a2, a0, a1<br> [0x800005d4]:sw a2, 136(ra)<br>   |
|  68|[0x80003314]<br>0xFFFFFFF0|- rs1_val == -2097153<br>                                                                                                                                                                      |[0x800005e4]:div a2, a0, a1<br> [0x800005e8]:sw a2, 140(ra)<br>   |
|  69|[0x80003318]<br>0x00000000|- rs1_val == -4194305<br>                                                                                                                                                                      |[0x800005fc]:div a2, a0, a1<br> [0x80000600]:sw a2, 144(ra)<br>   |
|  70|[0x8000331c]<br>0x00000000|- rs1_val == -8388609<br>                                                                                                                                                                      |[0x80000614]:div a2, a0, a1<br> [0x80000618]:sw a2, 148(ra)<br>   |
|  71|[0x80003320]<br>0x00000FFF|- rs1_val == -16777217<br>                                                                                                                                                                     |[0x8000062c]:div a2, a0, a1<br> [0x80000630]:sw a2, 152(ra)<br>   |
|  72|[0x80003324]<br>0xFFFC0000|- rs1_val == -33554433<br>                                                                                                                                                                     |[0x80000640]:div a2, a0, a1<br> [0x80000644]:sw a2, 156(ra)<br>   |
|  73|[0x80003328]<br>0xFFFFF000|- rs2_val == 32768<br> - rs1_val == -134217729<br>                                                                                                                                             |[0x80000654]:div a2, a0, a1<br> [0x80000658]:sw a2, 160(ra)<br>   |
|  74|[0x8000332c]<br>0x00000000|- rs1_val == -268435457<br>                                                                                                                                                                    |[0x8000066c]:div a2, a0, a1<br> [0x80000670]:sw a2, 164(ra)<br>   |
|  75|[0x80003330]<br>0x00000000|- rs1_val == -536870913<br>                                                                                                                                                                    |[0x80000684]:div a2, a0, a1<br> [0x80000688]:sw a2, 168(ra)<br>   |
|  76|[0x80003334]<br>0xF3333333|- rs1_val == -1073741825<br>                                                                                                                                                                   |[0x80000698]:div a2, a0, a1<br> [0x8000069c]:sw a2, 172(ra)<br>   |
|  77|[0x80003338]<br>0x00001555|- rs1_val == 1431655765<br>                                                                                                                                                                    |[0x800006ac]:div a2, a0, a1<br> [0x800006b0]:sw a2, 176(ra)<br>   |
|  78|[0x8000333c]<br>0xFEAAAAAB|- rs2_val == 64<br> - rs1_val == -1431655766<br>                                                                                                                                               |[0x800006c0]:div a2, a0, a1<br> [0x800006c4]:sw a2, 180(ra)<br>   |
|  79|[0x80003340]<br>0xFFFFFE00|- rs2_val == 2<br>                                                                                                                                                                             |[0x800006d0]:div a2, a0, a1<br> [0x800006d4]:sw a2, 184(ra)<br>   |
|  80|[0x80003344]<br>0x00001000|- rs2_val == 4<br>                                                                                                                                                                             |[0x800006e0]:div a2, a0, a1<br> [0x800006e4]:sw a2, 188(ra)<br>   |
|  81|[0x80003348]<br>0xFFFFF000|- rs2_val == 8<br>                                                                                                                                                                             |[0x800006f4]:div a2, a0, a1<br> [0x800006f8]:sw a2, 192(ra)<br>   |
|  82|[0x8000334c]<br>0x00100000|- rs2_val == 512<br>                                                                                                                                                                           |[0x80000704]:div a2, a0, a1<br> [0x80000708]:sw a2, 196(ra)<br>   |
|  83|[0x80003350]<br>0x00080000|- rs2_val == 1024<br>                                                                                                                                                                          |[0x80000714]:div a2, a0, a1<br> [0x80000718]:sw a2, 200(ra)<br>   |
|  84|[0x80003354]<br>0x00000000|- rs2_val == 524288<br>                                                                                                                                                                        |[0x80000724]:div a2, a0, a1<br> [0x80000728]:sw a2, 204(ra)<br>   |
|  85|[0x80003358]<br>0x00000000|- rs2_val == 2048<br>                                                                                                                                                                          |[0x80000738]:div a2, a0, a1<br> [0x8000073c]:sw a2, 208(ra)<br>   |
|  86|[0x8000335c]<br>0x00000000|- rs2_val == 1048576<br>                                                                                                                                                                       |[0x80000748]:div a2, a0, a1<br> [0x8000074c]:sw a2, 212(ra)<br>   |
|  87|[0x80003360]<br>0x000001FF|- rs2_val == 4194304<br>                                                                                                                                                                       |[0x8000075c]:div a2, a0, a1<br> [0x80000760]:sw a2, 216(ra)<br>   |
|  88|[0x80003364]<br>0x00000000|- rs2_val == 8388608<br>                                                                                                                                                                       |[0x8000076c]:div a2, a0, a1<br> [0x80000770]:sw a2, 220(ra)<br>   |
|  89|[0x80003368]<br>0x00000000|- rs2_val == 268435456<br>                                                                                                                                                                     |[0x8000077c]:div a2, a0, a1<br> [0x80000780]:sw a2, 224(ra)<br>   |
|  90|[0x8000336c]<br>0x0000001F|- rs2_val == -8193<br>                                                                                                                                                                         |[0x80000794]:div a2, a0, a1<br> [0x80000798]:sw a2, 228(ra)<br>   |
|  91|[0x80003370]<br>0x00001000|- rs2_val == -2<br>                                                                                                                                                                            |[0x800007a8]:div a2, a0, a1<br> [0x800007ac]:sw a2, 232(ra)<br>   |
|  92|[0x80003374]<br>0xFFFFFC20|- rs2_val == -33<br>                                                                                                                                                                           |[0x800007b8]:div a2, a0, a1<br> [0x800007bc]:sw a2, 236(ra)<br>   |
|  93|[0x80003378]<br>0x00005555|- rs2_val == 65536<br>                                                                                                                                                                         |[0x800007cc]:div a2, a0, a1<br> [0x800007d0]:sw a2, 240(ra)<br>   |
|  94|[0x8000337c]<br>0xFFFFFC01|- rs2_val == -1025<br>                                                                                                                                                                         |[0x800007dc]:div a2, a0, a1<br> [0x800007e0]:sw a2, 244(ra)<br>   |
|  95|[0x80003380]<br>0xFFFE0040|- rs2_val == -2049<br>                                                                                                                                                                         |[0x800007f0]:div a2, a0, a1<br> [0x800007f4]:sw a2, 248(ra)<br>   |
|  96|[0x80003384]<br>0xFFFFE000|- rs2_val == 8192<br>                                                                                                                                                                          |[0x80000804]:div a2, a0, a1<br> [0x80000808]:sw a2, 252(ra)<br>   |
|  97|[0x80003388]<br>0x0000007F|- rs2_val == -65537<br>                                                                                                                                                                        |[0x8000081c]:div a2, a0, a1<br> [0x80000820]:sw a2, 256(ra)<br>   |
|  98|[0x8000338c]<br>0x00000000|- rs2_val == -131073<br>                                                                                                                                                                       |[0x80000834]:div a2, a0, a1<br> [0x80000838]:sw a2, 260(ra)<br>   |
|  99|[0x8000339c]<br>0x00000000|- rs1_val == 1024<br>                                                                                                                                                                          |[0x80000874]:div a2, a0, a1<br> [0x80000878]:sw a2, 276(ra)<br>   |
