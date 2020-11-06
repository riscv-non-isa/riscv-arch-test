
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
| SIG_REGION                | [('0x80003204', '0x8000339c', '102 words')]      |
| COV_LABELS                | mulh      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/mulh-01.S/mulh-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 102      |
| STAT1                     | 100      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000678]:mulh a2, a0, a1
      [0x8000067c]:sw a2, 152(ra)
 -- Signature Address: 0x80003324 Data: 0x02000000
 -- Redundant Coverpoints hit by the op
      - opcode : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -268435457
      - rs1_val == -536870913




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000085c]:mulh a2, a0, a1
      [0x80000860]:sw a2, 260(ra)
 -- Signature Address: 0x80003390 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 131072
      - rs1_val == 16






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

|s.no|        signature         |                                                                                                 coverpoints                                                                                                 |                                code                                |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003204]<br>0x04000000|- opcode : mulh<br> - rs1 : x15<br> - rs2 : x15<br> - rd : x12<br> - rs1 == rs2 != rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br> - rs2_val == -536870913<br> - rs1_val == -536870913<br> |[0x8000010c]:mulh a2, a5, a5<br> [0x80000110]:sw a2, 0(gp)<br>      |
|   2|[0x80003208]<br>0x00000000|- rs1 : x30<br> - rs2 : x6<br> - rd : x19<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val != rs2_val<br> - rs1_val == 0<br> - rs2_val == -268435457<br>                                          |[0x80000120]:mulh s3, t5, t1<br> [0x80000124]:sw s3, 4(gp)<br>      |
|   3|[0x8000320c]<br>0x00FFFFFF|- rs1 : x24<br> - rs2 : x5<br> - rd : x5<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 33554432<br> - rs1_val == 2147483647<br>                 |[0x80000134]:mulh t0, s8, t0<br> [0x80000138]:sw t0, 8(gp)<br>      |
|   4|[0x80003210]<br>0xFFFFFFFF|- rs1 : x2<br> - rs2 : x27<br> - rd : x2<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == 1<br> - rs2_val == -131073<br>                                                            |[0x80000148]:mulh sp, sp, s11<br> [0x8000014c]:sw sp, 12(gp)<br>    |
|   5|[0x80003214]<br>0x40000000|- rs1 : x22<br> - rs2 : x22<br> - rd : x22<br> - rs1 == rs2 == rd<br> - rs2_val == (-2**(xlen-1))<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -2147483648<br>              |[0x80000158]:mulh s6, s6, s6<br> [0x8000015c]:sw s6, 16(gp)<br>     |
|   6|[0x80003218]<br>0x00000000|- rs1 : x10<br> - rs2 : x9<br> - rd : x4<br> - rs2_val == 0<br> - rs1_val == 2<br>                                                                                                                           |[0x80000168]:mulh tp, a0, s1<br> [0x8000016c]:sw tp, 20(gp)<br>     |
|   7|[0x8000321c]<br>0x3FFFFFFF|- rs1 : x28<br> - rs2 : x7<br> - rd : x13<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br>                                                                                                   |[0x80000180]:mulh a3, t3, t2<br> [0x80000184]:sw a3, 24(gp)<br>     |
|   8|[0x80003220]<br>0x00000000|- rs1 : x20<br> - rs2 : x17<br> - rd : x26<br> - rs2_val == 1<br> - rs1_val == 268435456<br>                                                                                                                 |[0x80000190]:mulh s10, s4, a7<br> [0x80000194]:sw s10, 28(gp)<br>   |
|   9|[0x80003224]<br>0xFFFFBFFF|- rs1 : x5<br> - rs2 : x1<br> - rd : x11<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == 16777216<br> - rs1_val == -4194305<br>                                                                           |[0x800001a4]:mulh a1, t0, ra<br> [0x800001a8]:sw a1, 32(gp)<br>     |
|  10|[0x80003228]<br>0xFFFFFFFF|- rs1 : x14<br> - rs2 : x23<br> - rd : x9<br> - rs2_val == -8388609<br> - rs1_val == 4<br>                                                                                                                   |[0x800001b8]:mulh s1, a4, s7<br> [0x800001bc]:sw s1, 36(gp)<br>     |
|  11|[0x8000322c]<br>0x00000000|- rs1 : x7<br> - rs2 : x31<br> - rd : x29<br> - rs2_val == 65536<br> - rs1_val == 8<br>                                                                                                                      |[0x800001c8]:mulh t4, t2, t6<br> [0x800001cc]:sw t4, 40(gp)<br>     |
|  12|[0x80003230]<br>0x00000000|- rs1 : x29<br> - rs2 : x30<br> - rd : x0<br> - rs2_val == 131072<br> - rs1_val == 16<br>                                                                                                                    |[0x800001d8]:mulh zero, t4, t5<br> [0x800001dc]:sw zero, 44(gp)<br> |
|  13|[0x80003234]<br>0x00000000|- rs1 : x4<br> - rs2 : x2<br> - rd : x1<br> - rs2_val == 64<br> - rs1_val == 32<br>                                                                                                                          |[0x800001e8]:mulh ra, tp, sp<br> [0x800001ec]:sw ra, 48(gp)<br>     |
|  14|[0x80003238]<br>0x00000000|- rs1 : x11<br> - rs2 : x25<br> - rd : x8<br> - rs2_val == 16<br> - rs1_val == 64<br>                                                                                                                        |[0x800001f8]:mulh fp, a1, s9<br> [0x800001fc]:sw fp, 52(gp)<br>     |
|  15|[0x8000323c]<br>0xFFFFFFFF|- rs1 : x18<br> - rs2 : x14<br> - rd : x28<br> - rs2_val == -524289<br> - rs1_val == 128<br>                                                                                                                 |[0x8000020c]:mulh t3, s2, a4<br> [0x80000210]:sw t3, 56(gp)<br>     |
|  16|[0x80003240]<br>0xFFFFFFFF|- rs1 : x12<br> - rs2 : x20<br> - rd : x15<br> - rs2_val == -4097<br> - rs1_val == 256<br>                                                                                                                   |[0x80000228]:mulh a5, a2, s4<br> [0x8000022c]:sw a5, 0(sp)<br>      |
|  17|[0x80003244]<br>0xFFFFFFFF|- rs1 : x1<br> - rs2 : x28<br> - rd : x25<br> - rs1_val == 512<br>                                                                                                                                           |[0x80000238]:mulh s9, ra, t3<br> [0x8000023c]:sw s9, 4(sp)<br>      |
|  18|[0x80003248]<br>0x00000000|- rs1 : x25<br> - rs2 : x16<br> - rd : x20<br> - rs1_val == 1024<br>                                                                                                                                         |[0x80000248]:mulh s4, s9, a6<br> [0x8000024c]:sw s4, 8(sp)<br>      |
|  19|[0x8000324c]<br>0x00000004|- rs1 : x9<br> - rs2 : x4<br> - rd : x23<br> - rs2_val == 8388608<br> - rs1_val == 2048<br>                                                                                                                  |[0x8000025c]:mulh s7, s1, tp<br> [0x80000260]:sw s7, 12(sp)<br>     |
|  20|[0x80003250]<br>0xFFFFFFFF|- rs1 : x23<br> - rs2 : x11<br> - rd : x7<br> - rs1_val == 4096<br>                                                                                                                                          |[0x8000026c]:mulh t2, s7, a1<br> [0x80000270]:sw t2, 16(sp)<br>     |
|  21|[0x80003254]<br>0xFFFFFFFF|- rs1 : x6<br> - rs2 : x13<br> - rd : x3<br> - rs2_val == -5<br> - rs1_val == 8192<br>                                                                                                                       |[0x8000027c]:mulh gp, t1, a3<br> [0x80000280]:sw gp, 20(sp)<br>     |
|  22|[0x80003258]<br>0x00000000|- rs1 : x19<br> - rs2 : x0<br> - rd : x30<br> - rs1_val == 16384<br>                                                                                                                                         |[0x8000028c]:mulh t5, s3, zero<br> [0x80000290]:sw t5, 24(sp)<br>   |
|  23|[0x8000325c]<br>0xFFFFFFFF|- rs1 : x17<br> - rs2 : x10<br> - rd : x21<br> - rs2_val == -2049<br> - rs1_val == 32768<br>                                                                                                                 |[0x800002a0]:mulh s5, a7, a0<br> [0x800002a4]:sw s5, 28(sp)<br>     |
|  24|[0x80003260]<br>0xFFFFFFFF|- rs1 : x31<br> - rs2 : x26<br> - rd : x24<br> - rs1_val == 65536<br>                                                                                                                                        |[0x800002b4]:mulh s8, t6, s10<br> [0x800002b8]:sw s8, 32(sp)<br>    |
|  25|[0x80003264]<br>0x00000000|- rs1 : x0<br> - rs2 : x12<br> - rd : x16<br> - rs2_val == 262144<br>                                                                                                                                        |[0x800002c8]:mulh a6, zero, a2<br> [0x800002cc]:sw a6, 36(sp)<br>   |
|  26|[0x80003268]<br>0x0000FFFF|- rs1 : x27<br> - rs2 : x18<br> - rd : x17<br> - rs1_val == 262144<br>                                                                                                                                       |[0x800002dc]:mulh a7, s11, s2<br> [0x800002e0]:sw a7, 40(sp)<br>    |
|  27|[0x8000326c]<br>0x00000400|- rs1 : x13<br> - rs2 : x8<br> - rd : x18<br> - rs1_val == 524288<br>                                                                                                                                        |[0x800002ec]:mulh s2, a3, fp<br> [0x800002f0]:sw s2, 44(sp)<br>     |
|  28|[0x80003270]<br>0xFFFFFFFF|- rs1 : x16<br> - rs2 : x24<br> - rd : x31<br> - rs1_val == 1048576<br>                                                                                                                                      |[0x800002fc]:mulh t6, a6, s8<br> [0x80000300]:sw t6, 48(sp)<br>     |
|  29|[0x80003274]<br>0xFFFFFFFF|- rs1 : x8<br> - rs2 : x19<br> - rd : x27<br> - rs1_val == 2097152<br>                                                                                                                                       |[0x8000030c]:mulh s11, fp, s3<br> [0x80000310]:sw s11, 52(sp)<br>   |
|  30|[0x80003278]<br>0x00000000|- rs1 : x3<br> - rs2 : x29<br> - rd : x6<br> - rs1_val == 4194304<br>                                                                                                                                        |[0x8000031c]:mulh t1, gp, t4<br> [0x80000320]:sw t1, 56(sp)<br>     |
|  31|[0x8000327c]<br>0x001FFFFF|- rs1 : x26<br> - rs2 : x3<br> - rd : x10<br> - rs1_val == 8388608<br>                                                                                                                                       |[0x80000330]:mulh a0, s10, gp<br> [0x80000334]:sw a0, 60(sp)<br>    |
|  32|[0x80003280]<br>0xFFFFFFFF|- rs1 : x21<br> - rs2_val == -9<br> - rs1_val == 16777216<br>                                                                                                                                                |[0x80000340]:mulh s2, s5, s4<br> [0x80000344]:sw s2, 64(sp)<br>     |
|  33|[0x80003284]<br>0xFFFFFFDF|- rs2 : x21<br> - rs1_val == 33554432<br>                                                                                                                                                                    |[0x80000354]:mulh t4, t3, s5<br> [0x80000358]:sw t4, 68(sp)<br>     |
|  34|[0x80003288]<br>0x00000800|- rd : x14<br> - rs1_val == 67108864<br>                                                                                                                                                                     |[0x80000364]:mulh a4, a1, s1<br> [0x80000368]:sw a4, 72(sp)<br>     |
|  35|[0x8000328c]<br>0xFFFFFFFE|- rs1_val == 536870912<br>                                                                                                                                                                                   |[0x8000037c]:mulh a2, a0, a1<br> [0x80000380]:sw a2, 0(ra)<br>      |
|  36|[0x80003290]<br>0xFFFFFFF7|- rs2_val == -33<br> - rs1_val == 1073741824<br>                                                                                                                                                             |[0x8000038c]:mulh a2, a0, a1<br> [0x80000390]:sw a2, 4(ra)<br>      |
|  37|[0x80003294]<br>0xFFFFFFFF|- rs2_val == 8192<br> - rs1_val == -2<br>                                                                                                                                                                    |[0x8000039c]:mulh a2, a0, a1<br> [0x800003a0]:sw a2, 8(ra)<br>      |
|  38|[0x80003298]<br>0xFFFFFFFF|- rs1_val == -3<br>                                                                                                                                                                                          |[0x800003ac]:mulh a2, a0, a1<br> [0x800003b0]:sw a2, 12(ra)<br>     |
|  39|[0x8000329c]<br>0x00000000|- rs1_val == -5<br>                                                                                                                                                                                          |[0x800003c0]:mulh a2, a0, a1<br> [0x800003c4]:sw a2, 16(ra)<br>     |
|  40|[0x800032a0]<br>0x00000001|- rs1_val == -9<br>                                                                                                                                                                                          |[0x800003d4]:mulh a2, a0, a1<br> [0x800003d8]:sw a2, 20(ra)<br>     |
|  41|[0x800032a4]<br>0x00000000|- rs1_val == -17<br>                                                                                                                                                                                         |[0x800003e4]:mulh a2, a0, a1<br> [0x800003e8]:sw a2, 24(ra)<br>     |
|  42|[0x800032a8]<br>0xFFFFFFFF|- rs1_val == -33<br>                                                                                                                                                                                         |[0x800003f4]:mulh a2, a0, a1<br> [0x800003f8]:sw a2, 28(ra)<br>     |
|  43|[0x800032ac]<br>0x00000000|- rs1_val == -65<br>                                                                                                                                                                                         |[0x80000404]:mulh a2, a0, a1<br> [0x80000408]:sw a2, 32(ra)<br>     |
|  44|[0x800032b0]<br>0xFFFFFFDF|- rs2_val == 1073741824<br> - rs1_val == -129<br>                                                                                                                                                            |[0x80000414]:mulh a2, a0, a1<br> [0x80000418]:sw a2, 36(ra)<br>     |
|  45|[0x800032b4]<br>0x00000000|- rs2_val == -513<br> - rs1_val == -257<br>                                                                                                                                                                  |[0x80000424]:mulh a2, a0, a1<br> [0x80000428]:sw a2, 40(ra)<br>     |
|  46|[0x800032b8]<br>0x00000000|- rs1_val == -513<br>                                                                                                                                                                                        |[0x80000438]:mulh a2, a0, a1<br> [0x8000043c]:sw a2, 44(ra)<br>     |
|  47|[0x800032bc]<br>0x00000040|- rs2_val == -262145<br> - rs1_val == -1048577<br>                                                                                                                                                           |[0x80000450]:mulh a2, a0, a1<br> [0x80000454]:sw a2, 48(ra)<br>     |
|  48|[0x800032c0]<br>0xFFFFFF7F|- rs2_val == -1048577<br>                                                                                                                                                                                    |[0x80000464]:mulh a2, a0, a1<br> [0x80000468]:sw a2, 52(ra)<br>     |
|  49|[0x800032c4]<br>0xFFFFFFF7|- rs2_val == -2097153<br>                                                                                                                                                                                    |[0x80000478]:mulh a2, a0, a1<br> [0x8000047c]:sw a2, 56(ra)<br>     |
|  50|[0x800032c8]<br>0xFFFFFFFF|- rs2_val == -4194305<br>                                                                                                                                                                                    |[0x8000048c]:mulh a2, a0, a1<br> [0x80000490]:sw a2, 60(ra)<br>     |
|  51|[0x800032cc]<br>0x00001000|- rs2_val == -16777217<br>                                                                                                                                                                                   |[0x800004a4]:mulh a2, a0, a1<br> [0x800004a8]:sw a2, 64(ra)<br>     |
|  52|[0x800032d0]<br>0xFFFFFFBF|- rs2_val == -33554433<br>                                                                                                                                                                                   |[0x800004b8]:mulh a2, a0, a1<br> [0x800004bc]:sw a2, 68(ra)<br>     |
|  53|[0x800032d4]<br>0x00000400|- rs2_val == -67108865<br> - rs1_val == -65537<br>                                                                                                                                                           |[0x800004d0]:mulh a2, a0, a1<br> [0x800004d4]:sw a2, 72(ra)<br>     |
|  54|[0x800032d8]<br>0x00000010|- rs2_val == -134217729<br>                                                                                                                                                                                  |[0x800004e4]:mulh a2, a0, a1<br> [0x800004e8]:sw a2, 76(ra)<br>     |
|  55|[0x800032dc]<br>0xFFFFFFFF|- rs2_val == -1073741825<br>                                                                                                                                                                                 |[0x800004f8]:mulh a2, a0, a1<br> [0x800004fc]:sw a2, 80(ra)<br>     |
|  56|[0x800032e0]<br>0x000000AA|- rs2_val == 1431655765<br>                                                                                                                                                                                  |[0x8000050c]:mulh a2, a0, a1<br> [0x80000510]:sw a2, 84(ra)<br>     |
|  57|[0x800032e4]<br>0x00AAAAAB|- rs2_val == -1431655766<br> - rs1_val == -33554433<br>                                                                                                                                                      |[0x80000524]:mulh a2, a0, a1<br> [0x80000528]:sw a2, 88(ra)<br>     |
|  58|[0x800032e8]<br>0xFFFFFFFF|- rs2_val == 4<br> - rs1_val == -1025<br>                                                                                                                                                                    |[0x80000534]:mulh a2, a0, a1<br> [0x80000538]:sw a2, 92(ra)<br>     |
|  59|[0x800032ec]<br>0xFFFFFFFF|- rs2_val == 32<br> - rs1_val == -2049<br>                                                                                                                                                                   |[0x80000548]:mulh a2, a0, a1<br> [0x8000054c]:sw a2, 96(ra)<br>     |
|  60|[0x800032f0]<br>0xFFFFFFBF|- rs2_val == 67108864<br> - rs1_val == -4097<br>                                                                                                                                                             |[0x8000055c]:mulh a2, a0, a1<br> [0x80000560]:sw a2, 100(ra)<br>    |
|  61|[0x800032f4]<br>0x00000000|- rs2_val == -16385<br> - rs1_val == -8193<br>                                                                                                                                                               |[0x80000574]:mulh a2, a0, a1<br> [0x80000578]:sw a2, 104(ra)<br>    |
|  62|[0x800032f8]<br>0x00000008|- rs1_val == -16385<br>                                                                                                                                                                                      |[0x8000058c]:mulh a2, a0, a1<br> [0x80000590]:sw a2, 108(ra)<br>    |
|  63|[0x800032fc]<br>0xFFFFFFFF|- rs2_val == 512<br> - rs1_val == -32769<br>                                                                                                                                                                 |[0x800005a0]:mulh a2, a0, a1<br> [0x800005a4]:sw a2, 112(ra)<br>    |
|  64|[0x80003300]<br>0xFFFFFEFF|- rs1_val == -131073<br>                                                                                                                                                                                     |[0x800005b4]:mulh a2, a0, a1<br> [0x800005b8]:sw a2, 116(ra)<br>    |
|  65|[0x80003304]<br>0xFFFFFF7F|- rs2_val == 2097152<br> - rs1_val == -262145<br>                                                                                                                                                            |[0x800005c8]:mulh a2, a0, a1<br> [0x800005cc]:sw a2, 120(ra)<br>    |
|  66|[0x80003308]<br>0xFFFFF7FF|- rs1_val == -524289<br>                                                                                                                                                                                     |[0x800005dc]:mulh a2, a0, a1<br> [0x800005e0]:sw a2, 124(ra)<br>    |
|  67|[0x8000330c]<br>0xFFFFFFFF|- rs1_val == -2097153<br>                                                                                                                                                                                    |[0x800005f0]:mulh a2, a0, a1<br> [0x800005f4]:sw a2, 128(ra)<br>    |
|  68|[0x80003310]<br>0x00004000|- rs1_val == -8388609<br>                                                                                                                                                                                    |[0x80000608]:mulh a2, a0, a1<br> [0x8000060c]:sw a2, 132(ra)<br>    |
|  69|[0x80003314]<br>0x00100000|- rs1_val == -16777217<br>                                                                                                                                                                                   |[0x80000620]:mulh a2, a0, a1<br> [0x80000624]:sw a2, 136(ra)<br>    |
|  70|[0x80003318]<br>0x00000000|- rs1_val == -67108865<br>                                                                                                                                                                                   |[0x80000634]:mulh a2, a0, a1<br> [0x80000638]:sw a2, 140(ra)<br>    |
|  71|[0x8000331c]<br>0x00000800|- rs2_val == -65537<br> - rs1_val == -134217729<br>                                                                                                                                                          |[0x8000064c]:mulh a2, a0, a1<br> [0x80000650]:sw a2, 144(ra)<br>    |
|  72|[0x80003320]<br>0x00000001|- rs2_val == -17<br> - rs1_val == -268435457<br>                                                                                                                                                             |[0x80000660]:mulh a2, a0, a1<br> [0x80000664]:sw a2, 148(ra)<br>    |
|  73|[0x80003328]<br>0x00008000|- rs1_val == -1073741825<br>                                                                                                                                                                                 |[0x80000690]:mulh a2, a0, a1<br> [0x80000694]:sw a2, 156(ra)<br>    |
|  74|[0x8000332c]<br>0xFFAAAAAA|- rs1_val == 1431655765<br>                                                                                                                                                                                  |[0x800006a8]:mulh a2, a0, a1<br> [0x800006ac]:sw a2, 160(ra)<br>    |
|  75|[0x80003330]<br>0xEAAAAAAA|- rs1_val == -1431655766<br>                                                                                                                                                                                 |[0x800006bc]:mulh a2, a0, a1<br> [0x800006c0]:sw a2, 164(ra)<br>    |
|  76|[0x80003334]<br>0xFFFFFFFF|- rs2_val == 2<br>                                                                                                                                                                                           |[0x800006cc]:mulh a2, a0, a1<br> [0x800006d0]:sw a2, 168(ra)<br>    |
|  77|[0x80003338]<br>0x00000001|- rs2_val == 8<br>                                                                                                                                                                                           |[0x800006e0]:mulh a2, a0, a1<br> [0x800006e4]:sw a2, 172(ra)<br>    |
|  78|[0x8000333c]<br>0x00000000|- rs2_val == 128<br>                                                                                                                                                                                         |[0x800006f0]:mulh a2, a0, a1<br> [0x800006f4]:sw a2, 176(ra)<br>    |
|  79|[0x80003340]<br>0x00000000|- rs2_val == 256<br>                                                                                                                                                                                         |[0x80000700]:mulh a2, a0, a1<br> [0x80000704]:sw a2, 180(ra)<br>    |
|  80|[0x80003344]<br>0x00000000|- rs2_val == 1024<br>                                                                                                                                                                                        |[0x80000710]:mulh a2, a0, a1<br> [0x80000714]:sw a2, 184(ra)<br>    |
|  81|[0x80003348]<br>0x00000000|- rs2_val == 2048<br>                                                                                                                                                                                        |[0x80000724]:mulh a2, a0, a1<br> [0x80000728]:sw a2, 188(ra)<br>    |
|  82|[0x8000334c]<br>0x00000008|- rs2_val == 4096<br>                                                                                                                                                                                        |[0x80000734]:mulh a2, a0, a1<br> [0x80000738]:sw a2, 192(ra)<br>    |
|  83|[0x80003350]<br>0xFFFFFFFF|- rs2_val == 524288<br>                                                                                                                                                                                      |[0x80000744]:mulh a2, a0, a1<br> [0x80000748]:sw a2, 196(ra)<br>    |
|  84|[0x80003354]<br>0xFFFFDFFF|- rs2_val == 1048576<br>                                                                                                                                                                                     |[0x80000758]:mulh a2, a0, a1<br> [0x8000075c]:sw a2, 200(ra)<br>    |
|  85|[0x80003358]<br>0xFFFFDFFF|- rs2_val == 4194304<br>                                                                                                                                                                                     |[0x8000076c]:mulh a2, a0, a1<br> [0x80000770]:sw a2, 204(ra)<br>    |
|  86|[0x8000335c]<br>0xFFFFFF7F|- rs2_val == 134217728<br>                                                                                                                                                                                   |[0x80000780]:mulh a2, a0, a1<br> [0x80000784]:sw a2, 208(ra)<br>    |
|  87|[0x80003360]<br>0xFFFFFFFF|- rs2_val == 268435456<br>                                                                                                                                                                                   |[0x80000790]:mulh a2, a0, a1<br> [0x80000794]:sw a2, 212(ra)<br>    |
|  88|[0x80003364]<br>0x00020000|- rs2_val == 536870912<br>                                                                                                                                                                                   |[0x800007a0]:mulh a2, a0, a1<br> [0x800007a4]:sw a2, 216(ra)<br>    |
|  89|[0x80003368]<br>0x00000000|- rs2_val == -3<br>                                                                                                                                                                                          |[0x800007b0]:mulh a2, a0, a1<br> [0x800007b4]:sw a2, 220(ra)<br>    |
|  90|[0x8000336c]<br>0xFFFFFFFF|- rs2_val == -65<br>                                                                                                                                                                                         |[0x800007c0]:mulh a2, a0, a1<br> [0x800007c4]:sw a2, 224(ra)<br>    |
|  91|[0x80003370]<br>0x00000000|- rs2_val == -129<br>                                                                                                                                                                                        |[0x800007d0]:mulh a2, a0, a1<br> [0x800007d4]:sw a2, 228(ra)<br>    |
|  92|[0x80003374]<br>0x00000000|- rs2_val == 32768<br>                                                                                                                                                                                       |[0x800007e0]:mulh a2, a0, a1<br> [0x800007e4]:sw a2, 232(ra)<br>    |
|  93|[0x80003378]<br>0x00000004|- rs2_val == -257<br>                                                                                                                                                                                        |[0x800007f4]:mulh a2, a0, a1<br> [0x800007f8]:sw a2, 236(ra)<br>    |
|  94|[0x8000337c]<br>0xFFFFFFFF|- rs2_val == -1025<br>                                                                                                                                                                                       |[0x80000804]:mulh a2, a0, a1<br> [0x80000808]:sw a2, 240(ra)<br>    |
|  95|[0x80003380]<br>0xFFFFFFFF|- rs2_val == -8193<br>                                                                                                                                                                                       |[0x80000818]:mulh a2, a0, a1<br> [0x8000081c]:sw a2, 244(ra)<br>    |
|  96|[0x80003384]<br>0x00000010|- rs2_val == 16384<br>                                                                                                                                                                                       |[0x80000828]:mulh a2, a0, a1<br> [0x8000082c]:sw a2, 248(ra)<br>    |
|  97|[0x80003388]<br>0x00002000|- rs2_val == -32769<br>                                                                                                                                                                                      |[0x8000083c]:mulh a2, a0, a1<br> [0x80000840]:sw a2, 252(ra)<br>    |
|  98|[0x8000338c]<br>0xFC000000|- rs1_val == 134217728<br>                                                                                                                                                                                   |[0x8000084c]:mulh a2, a0, a1<br> [0x80000850]:sw a2, 256(ra)<br>    |
|  99|[0x80003394]<br>0xFFFFFFFF|- rs2_val == -2<br>                                                                                                                                                                                          |[0x8000086c]:mulh a2, a0, a1<br> [0x80000870]:sw a2, 264(ra)<br>    |
| 100|[0x80003398]<br>0x00000008|- rs1_val == 131072<br>                                                                                                                                                                                      |[0x8000087c]:mulh a2, a0, a1<br> [0x80000880]:sw a2, 268(ra)<br>    |
