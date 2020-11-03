
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800008e0')]      |
| SIG_REGION                | [('0x80003204', '0x800033bc', '110 words')]      |
| COV_LABELS                | remu      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/remu-01.S/remu-01.S    |
| Total Number of coverpoints| 246     |
| Total Signature Updates   | 107      |
| Total Coverpoints Covered | 246      |
| STAT1                     | 105      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008b0]:remu a2, a0, a1
      [0x800008b4]:sw a2, 348(ra)
 -- Signature Address: 0x800033b0 Data: 0x7FFF7FFF
 -- Redundant Coverpoints hit by the op
      - opcode : remu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == (-2**(xlen-1))
      - rs2_val == -2147483648
      - rs1_val == -32769




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008d4]:remu a2, a0, a1
      [0x800008d8]:sw a2, 356(ra)
 -- Signature Address: 0x800033b8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : remu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 32768
      - rs1_val == 8388608






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

|s.no|        signature         |                                                                                                          coverpoints                                                                                                           |                                code                                |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000000|- opcode : remu<br> - rs1 : x12<br> - rs2 : x12<br> - rd : x12<br> - rs1 == rs2 == rd<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == rs2_val<br>                                                                            |[0x80000108]:remu a2, a2, a2<br> [0x8000010c]:sw a2, 0(t2)<br>      |
|   2|[0x80003214]<br>0x00000000|- rs1 : x28<br> - rs2 : x23<br> - rd : x23<br> - rs2 == rd != rs1<br> - rs1_val != rs2_val<br> - rs1_val == 0<br> - rs2_val == 8388608<br>                                                                                      |[0x80000118]:remu s7, t3, s7<br> [0x8000011c]:sw s7, 4(t2)<br>      |
|   3|[0x80003218]<br>0x01FFFFFF|- rs1 : x8<br> - rs2 : x3<br> - rd : x8<br> - rs1 == rd != rs2<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 33554432<br> - rs1_val == 2147483647<br>                                                                       |[0x8000012c]:remu fp, fp, gp<br> [0x80000130]:sw fp, 8(t2)<br>      |
|   4|[0x8000321c]<br>0x00000001|- rs1 : x4<br> - rs2 : x9<br> - rd : x1<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == 1<br> - rs2_val == -33554433<br>                                                       |[0x80000140]:remu ra, tp, s1<br> [0x80000144]:sw ra, 12(t2)<br>     |
|   5|[0x80003220]<br>0x00000000|- rs1 : x5<br> - rs2 : x5<br> - rd : x18<br> - rs1 == rs2 != rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs2_val == (-2**(xlen-1))<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -2147483648<br> |[0x80000154]:remu s2, t0, t0<br> [0x80000158]:sw s2, 16(t2)<br>     |
|   6|[0x80003224]<br>0xAAAAAAAA|- rs1 : x11<br> - rs2 : x8<br> - rd : x10<br> - rs2_val == 0<br> - rs1_val == -1431655766<br>                                                                                                                                   |[0x80000168]:remu a0, a1, fp<br> [0x8000016c]:sw a0, 20(t2)<br>     |
|   7|[0x80003228]<br>0x00001000|- rs1 : x20<br> - rs2 : x28<br> - rd : x21<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == 4096<br>                                                                                               |[0x8000017c]:remu s5, s4, t3<br> [0x80000180]:sw s5, 24(t2)<br>     |
|   8|[0x8000322c]<br>0x00000000|- rs1 : x6<br> - rs2 : x10<br> - rd : x0<br> - rs2_val == 1<br>                                                                                                                                                                 |[0x80000190]:remu zero, t1, a0<br> [0x80000194]:sw zero, 28(t2)<br> |
|   9|[0x80003230]<br>0x00000000|- rs1 : x24<br> - rs2 : x20<br> - rd : x16<br> - rs2_val == 131072<br> - rs1_val == 131072<br>                                                                                                                                  |[0x800001a0]:remu a6, s8, s4<br> [0x800001a4]:sw a6, 32(t2)<br>     |
|  10|[0x80003234]<br>0x00000002|- rs1 : x10<br> - rs2 : x17<br> - rd : x15<br> - rs1_val == 2<br>                                                                                                                                                               |[0x800001b4]:remu a5, a0, a7<br> [0x800001b8]:sw a5, 36(t2)<br>     |
|  11|[0x80003238]<br>0x00000004|- rs1 : x21<br> - rs2 : x2<br> - rd : x11<br> - rs2_val == -33<br> - rs1_val == 4<br>                                                                                                                                           |[0x800001c4]:remu a1, s5, sp<br> [0x800001c8]:sw a1, 40(t2)<br>     |
|  12|[0x8000323c]<br>0x00000008|- rs1 : x1<br> - rs2 : x14<br> - rd : x24<br> - rs2_val == -65<br> - rs1_val == 8<br>                                                                                                                                           |[0x800001d4]:remu s8, ra, a4<br> [0x800001d8]:sw s8, 44(t2)<br>     |
|  13|[0x80003240]<br>0x00000010|- rs1 : x13<br> - rs2 : x19<br> - rd : x6<br> - rs1_val == 16<br>                                                                                                                                                               |[0x800001e4]:remu t1, a3, s3<br> [0x800001e8]:sw t1, 48(t2)<br>     |
|  14|[0x80003244]<br>0x00000020|- rs1 : x18<br> - rs2 : x4<br> - rd : x30<br> - rs2_val == -17<br> - rs1_val == 32<br>                                                                                                                                          |[0x800001f4]:remu t5, s2, tp<br> [0x800001f8]:sw t5, 52(t2)<br>     |
|  15|[0x80003248]<br>0x00000040|- rs1 : x22<br> - rs2 : x24<br> - rd : x27<br> - rs2_val == -1431655766<br> - rs1_val == 64<br>                                                                                                                                 |[0x80000208]:remu s11, s6, s8<br> [0x8000020c]:sw s11, 56(t2)<br>   |
|  16|[0x8000324c]<br>0x00000080|- rs1 : x25<br> - rs2 : x1<br> - rd : x5<br> - rs2_val == 8192<br> - rs1_val == 128<br>                                                                                                                                         |[0x80000218]:remu t0, s9, ra<br> [0x8000021c]:sw t0, 60(t2)<br>     |
|  17|[0x80003250]<br>0x00000100|- rs1 : x17<br> - rs2 : x27<br> - rd : x31<br> - rs2_val == -1073741825<br> - rs1_val == 256<br>                                                                                                                                |[0x8000022c]:remu t6, a7, s11<br> [0x80000230]:sw t6, 64(t2)<br>    |
|  18|[0x80003254]<br>0x00000200|- rs1 : x31<br> - rs2 : x6<br> - rd : x7<br> - rs1_val == 512<br>                                                                                                                                                               |[0x80000244]:remu t2, t6, t1<br> [0x80000248]:sw t2, 0(ra)<br>      |
|  19|[0x80003258]<br>0x00000400|- rs1 : x27<br> - rs2 : x25<br> - rd : x4<br> - rs2_val == 65536<br> - rs1_val == 1024<br>                                                                                                                                      |[0x80000254]:remu tp, s11, s9<br> [0x80000258]:sw tp, 4(ra)<br>     |
|  20|[0x8000325c]<br>0x00000000|- rs1 : x0<br> - rs2 : x16<br> - rd : x17<br> - rs2_val == 4194304<br>                                                                                                                                                          |[0x80000268]:remu a7, zero, a6<br> [0x8000026c]:sw a7, 8(ra)<br>    |
|  21|[0x80003260]<br>0x00000000|- rs1 : x16<br> - rs2 : x13<br> - rd : x22<br> - rs1_val == 8192<br>                                                                                                                                                            |[0x80000278]:remu s6, a6, a3<br> [0x8000027c]:sw s6, 12(ra)<br>     |
|  22|[0x80003264]<br>0x00000004|- rs1 : x15<br> - rs2 : x22<br> - rd : x25<br> - rs1_val == 16384<br>                                                                                                                                                           |[0x80000288]:remu s9, a5, s6<br> [0x8000028c]:sw s9, 16(ra)<br>     |
|  23|[0x80003268]<br>0x00008000|- rs1 : x7<br> - rs2 : x31<br> - rd : x29<br> - rs1_val == 32768<br>                                                                                                                                                            |[0x8000029c]:remu t4, t2, t6<br> [0x800002a0]:sw t4, 20(ra)<br>     |
|  24|[0x8000326c]<br>0x00000000|- rs1 : x30<br> - rs2 : x21<br> - rd : x26<br> - rs2_val == 32<br> - rs1_val == 65536<br>                                                                                                                                       |[0x800002ac]:remu s10, t5, s5<br> [0x800002b0]:sw s10, 24(ra)<br>   |
|  25|[0x80003270]<br>0x00000000|- rs1 : x29<br> - rs2 : x26<br> - rd : x28<br> - rs2_val == 1024<br> - rs1_val == 262144<br>                                                                                                                                    |[0x800002bc]:remu t3, t4, s10<br> [0x800002c0]:sw t3, 28(ra)<br>    |
|  26|[0x80003274]<br>0x00000000|- rs1 : x14<br> - rs2 : x18<br> - rd : x9<br> - rs2_val == 64<br> - rs1_val == 524288<br>                                                                                                                                       |[0x800002cc]:remu s1, a4, s2<br> [0x800002d0]:sw s1, 32(ra)<br>     |
|  27|[0x80003278]<br>0x00100000|- rs1 : x23<br> - rs2 : x29<br> - rd : x14<br> - rs1_val == 1048576<br>                                                                                                                                                         |[0x800002dc]:remu a4, s7, t4<br> [0x800002e0]:sw a4, 36(ra)<br>     |
|  28|[0x8000327c]<br>0x00200000|- rs1 : x19<br> - rs2 : x15<br> - rd : x2<br> - rs2_val == -2<br> - rs1_val == 2097152<br>                                                                                                                                      |[0x800002ec]:remu sp, s3, a5<br> [0x800002f0]:sw sp, 40(ra)<br>     |
|  29|[0x80003280]<br>0x00000000|- rs1 : x2<br> - rs2 : x30<br> - rd : x3<br> - rs1_val == 4194304<br>                                                                                                                                                           |[0x800002fc]:remu gp, sp, t5<br> [0x80000300]:sw gp, 44(ra)<br>     |
|  30|[0x80003284]<br>0x00800000|- rs1 : x3<br> - rs2 : x0<br> - rd : x13<br> - rs1_val == 8388608<br>                                                                                                                                                           |[0x80000310]:remu a3, gp, zero<br> [0x80000314]:sw a3, 48(ra)<br>   |
|  31|[0x80003288]<br>0x01000000|- rs1 : x26<br> - rs2 : x11<br> - rd : x19<br> - rs2_val == -67108865<br> - rs1_val == 16777216<br>                                                                                                                             |[0x80000324]:remu s3, s10, a1<br> [0x80000328]:sw s3, 52(ra)<br>    |
|  32|[0x8000328c]<br>0x02000000|- rs1 : x9<br> - rs2 : x7<br> - rd : x20<br> - rs2_val == 67108864<br> - rs1_val == 33554432<br>                                                                                                                                |[0x80000334]:remu s4, s1, t2<br> [0x80000338]:sw s4, 56(ra)<br>     |
|  33|[0x80003290]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                                                                                                       |[0x80000344]:remu a2, a0, a1<br> [0x80000348]:sw a2, 60(ra)<br>     |
|  34|[0x80003294]<br>0x00000000|- rs1_val == 134217728<br>                                                                                                                                                                                                      |[0x80000354]:remu a2, a0, a1<br> [0x80000358]:sw a2, 64(ra)<br>     |
|  35|[0x80003298]<br>0x00000000|- rs2_val == 2<br> - rs1_val == 268435456<br>                                                                                                                                                                                   |[0x80000364]:remu a2, a0, a1<br> [0x80000368]:sw a2, 68(ra)<br>     |
|  36|[0x8000329c]<br>0x00000000|- rs2_val == 32768<br> - rs1_val == 536870912<br>                                                                                                                                                                               |[0x80000374]:remu a2, a0, a1<br> [0x80000378]:sw a2, 72(ra)<br>     |
|  37|[0x800032a0]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                                                                                                     |[0x80000384]:remu a2, a0, a1<br> [0x80000388]:sw a2, 76(ra)<br>     |
|  38|[0x800032a4]<br>0x0001FFFE|- rs1_val < 0 and rs2_val > 0<br> - rs1_val == -2<br>                                                                                                                                                                           |[0x80000394]:remu a2, a0, a1<br> [0x80000398]:sw a2, 80(ra)<br>     |
|  39|[0x800032a8]<br>0x000003FE|- rs2_val == -1025<br> - rs1_val == -3<br>                                                                                                                                                                                      |[0x800003a4]:remu a2, a0, a1<br> [0x800003a8]:sw a2, 84(ra)<br>     |
|  40|[0x800032ac]<br>0x0000003C|- rs1_val == -5<br>                                                                                                                                                                                                             |[0x800003b4]:remu a2, a0, a1<br> [0x800003b8]:sw a2, 88(ra)<br>     |
|  41|[0x800032b0]<br>0x0000FFF7|- rs1_val == -9<br>                                                                                                                                                                                                             |[0x800003c4]:remu a2, a0, a1<br> [0x800003c8]:sw a2, 92(ra)<br>     |
|  42|[0x800032b4]<br>0x00007FF0|- rs2_val == -32769<br> - rs1_val == -17<br>                                                                                                                                                                                    |[0x800003d8]:remu a2, a0, a1<br> [0x800003dc]:sw a2, 96(ra)<br>     |
|  43|[0x800032b8]<br>0x0003FFE0|- rs2_val == -262145<br> - rs1_val == -33<br>                                                                                                                                                                                   |[0x800003ec]:remu a2, a0, a1<br> [0x800003f0]:sw a2, 100(ra)<br>    |
|  44|[0x800032bc]<br>0x00000000|- rs1_val == -65<br>                                                                                                                                                                                                            |[0x800003fc]:remu a2, a0, a1<br> [0x80000400]:sw a2, 104(ra)<br>    |
|  45|[0x800032c0]<br>0x00000001|- rs1_val == -129<br>                                                                                                                                                                                                           |[0x8000040c]:remu a2, a0, a1<br> [0x80000410]:sw a2, 108(ra)<br>    |
|  46|[0x800032c4]<br>0x80000000|- rs2_val == -524289<br>                                                                                                                                                                                                        |[0x80000420]:remu a2, a0, a1<br> [0x80000424]:sw a2, 112(ra)<br>    |
|  47|[0x800032c8]<br>0x00000400|- rs2_val == -1048577<br>                                                                                                                                                                                                       |[0x80000434]:remu a2, a0, a1<br> [0x80000438]:sw a2, 116(ra)<br>    |
|  48|[0x800032cc]<br>0x20000000|- rs2_val == -2097153<br>                                                                                                                                                                                                       |[0x80000448]:remu a2, a0, a1<br> [0x8000044c]:sw a2, 120(ra)<br>    |
|  49|[0x800032d0]<br>0x00000040|- rs2_val == -4194305<br>                                                                                                                                                                                                       |[0x8000045c]:remu a2, a0, a1<br> [0x80000460]:sw a2, 124(ra)<br>    |
|  50|[0x800032d4]<br>0x55555555|- rs2_val == -8388609<br> - rs1_val == 1431655765<br>                                                                                                                                                                           |[0x80000474]:remu a2, a0, a1<br> [0x80000478]:sw a2, 128(ra)<br>    |
|  51|[0x800032d8]<br>0x00000007|- rs2_val == -16777217<br>                                                                                                                                                                                                      |[0x80000488]:remu a2, a0, a1<br> [0x8000048c]:sw a2, 132(ra)<br>    |
|  52|[0x800032dc]<br>0xC0000000|- rs2_val == -134217729<br>                                                                                                                                                                                                     |[0x8000049c]:remu a2, a0, a1<br> [0x800004a0]:sw a2, 136(ra)<br>    |
|  53|[0x800032e0]<br>0x00000007|- rs2_val == -268435457<br>                                                                                                                                                                                                     |[0x800004b0]:remu a2, a0, a1<br> [0x800004b4]:sw a2, 140(ra)<br>    |
|  54|[0x800032e4]<br>0x00000003|- rs2_val == -536870913<br>                                                                                                                                                                                                     |[0x800004c4]:remu a2, a0, a1<br> [0x800004c8]:sw a2, 144(ra)<br>    |
|  55|[0x800032e8]<br>0x555554D5|- rs2_val == 1431655765<br>                                                                                                                                                                                                     |[0x800004d8]:remu a2, a0, a1<br> [0x800004dc]:sw a2, 148(ra)<br>    |
|  56|[0x800032ec]<br>0x003FFEFF|- rs1_val == -257<br>                                                                                                                                                                                                           |[0x800004e8]:remu a2, a0, a1<br> [0x800004ec]:sw a2, 152(ra)<br>    |
|  57|[0x800032f0]<br>0xFFFFFDFF|- rs2_val == -9<br> - rs1_val == -513<br>                                                                                                                                                                                       |[0x800004f8]:remu a2, a0, a1<br> [0x800004fc]:sw a2, 156(ra)<br>    |
|  58|[0x800032f4]<br>0x00000000|- rs1_val == -1025<br>                                                                                                                                                                                                          |[0x80000508]:remu a2, a0, a1<br> [0x8000050c]:sw a2, 160(ra)<br>    |
|  59|[0x800032f8]<br>0xFFFFF7FF|- rs1_val == -2049<br>                                                                                                                                                                                                          |[0x8000051c]:remu a2, a0, a1<br> [0x80000520]:sw a2, 164(ra)<br>    |
|  60|[0x800032fc]<br>0xFFFFEFFF|- rs1_val == -4097<br>                                                                                                                                                                                                          |[0x80000530]:remu a2, a0, a1<br> [0x80000534]:sw a2, 168(ra)<br>    |
|  61|[0x80003300]<br>0x1FFFE000|- rs1_val == -8193<br>                                                                                                                                                                                                          |[0x80000548]:remu a2, a0, a1<br> [0x8000054c]:sw a2, 172(ra)<br>    |
|  62|[0x80003304]<br>0x00004000|- rs1_val == -16385<br>                                                                                                                                                                                                         |[0x80000560]:remu a2, a0, a1<br> [0x80000564]:sw a2, 176(ra)<br>    |
|  63|[0x80003308]<br>0x03FF0000|- rs1_val == -65537<br>                                                                                                                                                                                                         |[0x80000578]:remu a2, a0, a1<br> [0x8000057c]:sw a2, 180(ra)<br>    |
|  64|[0x8000330c]<br>0x00FE0000|- rs1_val == -131073<br>                                                                                                                                                                                                        |[0x80000590]:remu a2, a0, a1<br> [0x80000594]:sw a2, 184(ra)<br>    |
|  65|[0x80003310]<br>0x1FFC0000|- rs1_val == -262145<br>                                                                                                                                                                                                        |[0x800005a8]:remu a2, a0, a1<br> [0x800005ac]:sw a2, 188(ra)<br>    |
|  66|[0x80003314]<br>0x00001FFF|- rs1_val == -524289<br>                                                                                                                                                                                                        |[0x800005bc]:remu a2, a0, a1<br> [0x800005c0]:sw a2, 192(ra)<br>    |
|  67|[0x80003318]<br>0x00000000|- rs1_val == -1048577<br>                                                                                                                                                                                                       |[0x800005d0]:remu a2, a0, a1<br> [0x800005d4]:sw a2, 196(ra)<br>    |
|  68|[0x8000331c]<br>0xFFDFFFFF|- rs1_val == -2097153<br>                                                                                                                                                                                                       |[0x800005e4]:remu a2, a0, a1<br> [0x800005e8]:sw a2, 200(ra)<br>    |
|  69|[0x80003320]<br>0xFFBFFFFF|- rs1_val == -4194305<br>                                                                                                                                                                                                       |[0x800005f8]:remu a2, a0, a1<br> [0x800005fc]:sw a2, 204(ra)<br>    |
|  70|[0x80003324]<br>0x07800000|- rs1_val == -8388609<br>                                                                                                                                                                                                       |[0x80000610]:remu a2, a0, a1<br> [0x80000614]:sw a2, 208(ra)<br>    |
|  71|[0x80003328]<br>0xFEFFFFFF|- rs2_val == -4097<br> - rs1_val == -16777217<br>                                                                                                                                                                               |[0x80000628]:remu a2, a0, a1<br> [0x8000062c]:sw a2, 212(ra)<br>    |
|  72|[0x8000332c]<br>0xFDFFFFFF|- rs1_val == -33554433<br>                                                                                                                                                                                                      |[0x8000063c]:remu a2, a0, a1<br> [0x80000640]:sw a2, 216(ra)<br>    |
|  73|[0x80003330]<br>0x3BFFFFFF|- rs2_val == 1073741824<br> - rs1_val == -67108865<br>                                                                                                                                                                          |[0x80000650]:remu a2, a0, a1<br> [0x80000654]:sw a2, 220(ra)<br>    |
|  74|[0x80003334]<br>0x00000002|- rs1_val == -134217729<br>                                                                                                                                                                                                     |[0x80000664]:remu a2, a0, a1<br> [0x80000668]:sw a2, 224(ra)<br>    |
|  75|[0x80003338]<br>0xEFFFFFFF|- rs1_val == -268435457<br>                                                                                                                                                                                                     |[0x80000678]:remu a2, a0, a1<br> [0x8000067c]:sw a2, 228(ra)<br>    |
|  76|[0x8000333c]<br>0x0000003F|- rs1_val == -536870913<br>                                                                                                                                                                                                     |[0x8000068c]:remu a2, a0, a1<br> [0x80000690]:sw a2, 232(ra)<br>    |
|  77|[0x80003340]<br>0x0001FFFF|- rs1_val == -1073741825<br>                                                                                                                                                                                                    |[0x800006a0]:remu a2, a0, a1<br> [0x800006a4]:sw a2, 236(ra)<br>    |
|  78|[0x80003344]<br>0x00000003|- rs2_val == 4<br>                                                                                                                                                                                                              |[0x800006b4]:remu a2, a0, a1<br> [0x800006b8]:sw a2, 240(ra)<br>    |
|  79|[0x80003348]<br>0x00000007|- rs2_val == 8<br>                                                                                                                                                                                                              |[0x800006c8]:remu a2, a0, a1<br> [0x800006cc]:sw a2, 244(ra)<br>    |
|  80|[0x8000334c]<br>0x0000000F|- rs2_val == 16<br>                                                                                                                                                                                                             |[0x800006d8]:remu a2, a0, a1<br> [0x800006dc]:sw a2, 248(ra)<br>    |
|  81|[0x80003350]<br>0x00000055|- rs2_val == 128<br>                                                                                                                                                                                                            |[0x800006ec]:remu a2, a0, a1<br> [0x800006f0]:sw a2, 252(ra)<br>    |
|  82|[0x80003354]<br>0x00000055|- rs2_val == 256<br>                                                                                                                                                                                                            |[0x80000700]:remu a2, a0, a1<br> [0x80000704]:sw a2, 256(ra)<br>    |
|  83|[0x80003358]<br>0x00000000|- rs2_val == 512<br>                                                                                                                                                                                                            |[0x80000710]:remu a2, a0, a1<br> [0x80000714]:sw a2, 260(ra)<br>    |
|  84|[0x8000335c]<br>0x000007BF|- rs2_val == 2048<br>                                                                                                                                                                                                           |[0x80000724]:remu a2, a0, a1<br> [0x80000728]:sw a2, 264(ra)<br>    |
|  85|[0x80003360]<br>0x00000006|- rs2_val == 4096<br>                                                                                                                                                                                                           |[0x80000734]:remu a2, a0, a1<br> [0x80000738]:sw a2, 268(ra)<br>    |
|  86|[0x80003364]<br>0x00003FFF|- rs2_val == 16384<br>                                                                                                                                                                                                          |[0x80000744]:remu a2, a0, a1<br> [0x80000748]:sw a2, 272(ra)<br>    |
|  87|[0x80003368]<br>0x00000000|- rs2_val == 262144<br>                                                                                                                                                                                                         |[0x80000754]:remu a2, a0, a1<br> [0x80000758]:sw a2, 276(ra)<br>    |
|  88|[0x8000336c]<br>0x0007FFF9|- rs2_val == 524288<br>                                                                                                                                                                                                         |[0x80000764]:remu a2, a0, a1<br> [0x80000768]:sw a2, 280(ra)<br>    |
|  89|[0x80003370]<br>0x000FFFFF|- rs2_val == 1048576<br>                                                                                                                                                                                                        |[0x80000778]:remu a2, a0, a1<br> [0x8000077c]:sw a2, 284(ra)<br>    |
|  90|[0x80003374]<br>0x001FFFFF|- rs2_val == 2097152<br>                                                                                                                                                                                                        |[0x8000078c]:remu a2, a0, a1<br> [0x80000790]:sw a2, 288(ra)<br>    |
|  91|[0x80003378]<br>0x00FFFFFF|- rs2_val == 16777216<br>                                                                                                                                                                                                       |[0x800007a0]:remu a2, a0, a1<br> [0x800007a4]:sw a2, 292(ra)<br>    |
|  92|[0x8000337c]<br>0x00000007|- rs2_val == 134217728<br>                                                                                                                                                                                                      |[0x800007b0]:remu a2, a0, a1<br> [0x800007b4]:sw a2, 296(ra)<br>    |
|  93|[0x80003380]<br>0x0FEFFFFF|- rs2_val == 268435456<br>                                                                                                                                                                                                      |[0x800007c4]:remu a2, a0, a1<br> [0x800007c8]:sw a2, 300(ra)<br>    |
|  94|[0x80003384]<br>0x1FFFFF7F|- rs2_val == 536870912<br>                                                                                                                                                                                                      |[0x800007d4]:remu a2, a0, a1<br> [0x800007d8]:sw a2, 304(ra)<br>    |
|  95|[0x80003388]<br>0xFFFFFBFF|- rs2_val == -3<br>                                                                                                                                                                                                             |[0x800007e4]:remu a2, a0, a1<br> [0x800007e8]:sw a2, 308(ra)<br>    |
|  96|[0x8000338c]<br>0xFDFFFFFF|- rs2_val == -5<br>                                                                                                                                                                                                             |[0x800007f8]:remu a2, a0, a1<br> [0x800007fc]:sw a2, 312(ra)<br>    |
|  97|[0x80003390]<br>0xBFFFFFFF|- rs2_val == -129<br>                                                                                                                                                                                                           |[0x8000080c]:remu a2, a0, a1<br> [0x80000810]:sw a2, 316(ra)<br>    |
|  98|[0x80003394]<br>0xC0000000|- rs2_val == -257<br>                                                                                                                                                                                                           |[0x8000081c]:remu a2, a0, a1<br> [0x80000820]:sw a2, 320(ra)<br>    |
|  99|[0x80003398]<br>0xFFFF7FFF|- rs2_val == -513<br> - rs1_val == -32769<br>                                                                                                                                                                                   |[0x80000830]:remu a2, a0, a1<br> [0x80000834]:sw a2, 324(ra)<br>    |
| 100|[0x8000339c]<br>0x08000000|- rs2_val == -2049<br>                                                                                                                                                                                                          |[0x80000844]:remu a2, a0, a1<br> [0x80000848]:sw a2, 328(ra)<br>    |
| 101|[0x800033a0]<br>0x10000000|- rs2_val == -8193<br>                                                                                                                                                                                                          |[0x80000858]:remu a2, a0, a1<br> [0x8000085c]:sw a2, 332(ra)<br>    |
| 102|[0x800033a4]<br>0xFFFEFFFF|- rs2_val == -16385<br>                                                                                                                                                                                                         |[0x80000870]:remu a2, a0, a1<br> [0x80000874]:sw a2, 336(ra)<br>    |
| 103|[0x800033a8]<br>0xFBFFFFFF|- rs2_val == -65537<br>                                                                                                                                                                                                         |[0x80000888]:remu a2, a0, a1<br> [0x8000088c]:sw a2, 340(ra)<br>    |
| 104|[0x800033ac]<br>0x0001FFFD|- rs2_val == -131073<br>                                                                                                                                                                                                        |[0x8000089c]:remu a2, a0, a1<br> [0x800008a0]:sw a2, 344(ra)<br>    |
| 105|[0x800033b4]<br>0x00000800|- rs1_val == 2048<br>                                                                                                                                                                                                           |[0x800008c4]:remu a2, a0, a1<br> [0x800008c8]:sw a2, 352(ra)<br>    |
