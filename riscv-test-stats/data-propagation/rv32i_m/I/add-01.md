
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000840')]      |
| SIG_REGION                | [('0x80003204', '0x80003398', '101 words')]      |
| COV_LABELS                | add      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/add-01.S/add-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 98      |
| STAT1                     | 95      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000570]:add a2, a0, a1
      [0x80000574]:sw a2, 112(ra)
 -- Signature Address: 0x80003300 Data: 0x55545554
 -- Redundant Coverpoints hit by the op
      - opcode : add
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 1431655765
      - rs1_val == -65537




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000810]:add a2, a0, a1
      [0x80000814]:sw a2, 252(ra)
 -- Signature Address: 0x8000338c Data: 0xFFFFFFF9
 -- Redundant Coverpoints hit by the op
      - opcode : add
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000820]:add a2, a0, a1
      [0x80000824]:sw a2, 256(ra)
 -- Signature Address: 0x80003390 Data: 0x80000007
 -- Redundant Coverpoints hit by the op
      - opcode : add
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == (-2**(xlen-1))
      - rs2_val == -2147483648






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

|s.no|        signature         |                                                                                                               coverpoints                                                                                                                |                               code                                |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003210]<br>0x80800000|- opcode : add<br> - rs1 : x25<br> - rs2 : x30<br> - rd : x25<br> - rs1 == rd != rs2<br> - rs1_val < 0 and rs2_val > 0<br> - rs1_val != rs2_val<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == 8388608<br> - rs1_val == -2147483648<br> |[0x80000108]:add s9, s9, t5<br> [0x8000010c]:sw s9, 0(t2)<br>      |
|   2|[0x80003214]<br>0xFFFFFFF2|- rs1 : x27<br> - rs2 : x27<br> - rd : x14<br> - rs1 == rs2 != rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br>                                                                                                          |[0x80000118]:add a4, s11, s11<br> [0x8000011c]:sw a4, 4(t2)<br>    |
|   3|[0x80003218]<br>0xFFFDFFFE|- rs1 : x15<br> - rs2 : x15<br> - rd : x15<br> - rs1 == rs2 == rd<br> - rs2_val == -65537<br> - rs1_val == -65537<br>                                                                                                                     |[0x80000130]:add a5, a5, a5<br> [0x80000134]:sw a5, 8(t2)<br>      |
|   4|[0x8000321c]<br>0x00000006|- rs1 : x18<br> - rs2 : x28<br> - rd : x28<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == 1<br>                                                                                                                |[0x80000140]:add t3, s2, t3<br> [0x80000144]:sw t3, 12(t2)<br>     |
|   5|[0x80003220]<br>0x80000000|- rs1 : x0<br> - rs2 : x2<br> - rd : x18<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == (-2**(xlen-1))<br> - rs1_val == 0<br> - rs2_val == -2147483648<br>                                                                |[0x80000150]:add s2, zero, sp<br> [0x80000154]:sw s2, 16(t2)<br>   |
|   6|[0x80003224]<br>0xFDFFFFFF|- rs1 : x10<br> - rs2 : x5<br> - rd : x22<br> - rs2_val == 0<br> - rs1_val == -33554433<br>                                                                                                                                               |[0x80000164]:add s6, a0, t0<br> [0x80000168]:sw s6, 20(t2)<br>     |
|   7|[0x80003228]<br>0x7FFFFF7E|- rs1 : x9<br> - rs2 : x10<br> - rd : x12<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == -129<br>                                                                                                          |[0x80000178]:add a2, s1, a0<br> [0x8000017c]:sw a2, 24(t2)<br>     |
|   8|[0x8000322c]<br>0x00000000|- rs1 : x6<br> - rs2 : x12<br> - rd : x0<br> - rs2_val == 1<br>                                                                                                                                                                           |[0x80000188]:add zero, t1, a2<br> [0x8000018c]:sw zero, 28(t2)<br> |
|   9|[0x80003230]<br>0xFDFFFEFE|- rs1 : x29<br> - rs2 : x9<br> - rd : x5<br> - rs2_val == -257<br>                                                                                                                                                                        |[0x8000019c]:add t0, t4, s1<br> [0x800001a0]:sw t0, 32(t2)<br>     |
|  10|[0x80003234]<br>0xFFFFFFFE|- rs1 : x16<br> - rs2 : x17<br> - rd : x26<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                                                                                               |[0x800001b4]:add s10, a6, a7<br> [0x800001b8]:sw s10, 36(t2)<br>   |
|  11|[0x80003238]<br>0x00100002|- rs1 : x11<br> - rs2 : x22<br> - rd : x21<br> - rs2_val == 1048576<br> - rs1_val == 2<br>                                                                                                                                                |[0x800001c4]:add s5, a1, s6<br> [0x800001c8]:sw s5, 40(t2)<br>     |
|  12|[0x8000323c]<br>0x00000006|- rs1 : x20<br> - rs2 : x23<br> - rd : x31<br> - rs2_val == 2<br> - rs1_val == 4<br>                                                                                                                                                      |[0x800001d4]:add t6, s4, s7<br> [0x800001d8]:sw t6, 44(t2)<br>     |
|  13|[0x80003240]<br>0x00000108|- rs1 : x17<br> - rs2 : x25<br> - rd : x27<br> - rs2_val == 256<br> - rs1_val == 8<br>                                                                                                                                                    |[0x800001e4]:add s11, a7, s9<br> [0x800001e8]:sw s11, 48(t2)<br>   |
|  14|[0x80003244]<br>0x00000020|- rs1 : x4<br> - rs2 : x1<br> - rd : x11<br> - rs2_val == 16<br> - rs1_val == 16<br>                                                                                                                                                      |[0x800001f4]:add a1, tp, ra<br> [0x800001f8]:sw a1, 52(t2)<br>     |
|  15|[0x80003248]<br>0x04000020|- rs1 : x26<br> - rs2 : x6<br> - rd : x4<br> - rs2_val == 67108864<br> - rs1_val == 32<br>                                                                                                                                                |[0x80000204]:add tp, s10, t1<br> [0x80000208]:sw tp, 56(t2)<br>    |
|  16|[0x8000324c]<br>0xAAAAAAEA|- rs1 : x31<br> - rs2 : x19<br> - rd : x3<br> - rs1_val > 0 and rs2_val < 0<br> - rs2_val == -1431655766<br> - rs1_val == 64<br>                                                                                                          |[0x80000218]:add gp, t6, s3<br> [0x8000021c]:sw gp, 60(t2)<br>     |
|  17|[0x80003250]<br>0xFFFE007F|- rs1 : x19<br> - rs2 : x3<br> - rd : x24<br> - rs2_val == -131073<br> - rs1_val == 128<br>                                                                                                                                               |[0x8000022c]:add s8, s3, gp<br> [0x80000230]:sw s8, 64(t2)<br>     |
|  18|[0x80003254]<br>0xFFFFFFFF|- rs1 : x5<br> - rs2 : x14<br> - rd : x2<br> - rs1_val == 256<br>                                                                                                                                                                         |[0x80000244]:add sp, t0, a4<br> [0x80000248]:sw sp, 0(a5)<br>      |
|  19|[0x80003258]<br>0x000001EF|- rs1 : x24<br> - rs2 : x26<br> - rd : x7<br> - rs2_val == -17<br> - rs1_val == 512<br>                                                                                                                                                   |[0x80000254]:add t2, s8, s10<br> [0x80000258]:sw t2, 4(a5)<br>     |
|  20|[0x8000325c]<br>0xFFE003FF|- rs1 : x13<br> - rs2 : x7<br> - rd : x30<br> - rs2_val == -2097153<br> - rs1_val == 1024<br>                                                                                                                                             |[0x80000268]:add t5, a3, t2<br> [0x8000026c]:sw t5, 8(a5)<br>      |
|  21|[0x80003260]<br>0x08000800|- rs1 : x7<br> - rs2 : x29<br> - rd : x13<br> - rs2_val == 134217728<br> - rs1_val == 2048<br>                                                                                                                                            |[0x8000027c]:add a3, t2, t4<br> [0x80000280]:sw a3, 12(a5)<br>     |
|  22|[0x80003264]<br>0xFFFE0FFF|- rs1 : x14<br> - rs2 : x21<br> - rd : x8<br> - rs1_val == 4096<br>                                                                                                                                                                       |[0x80000290]:add fp, a4, s5<br> [0x80000294]:sw fp, 16(a5)<br>     |
|  23|[0x80003268]<br>0x00000FFF|- rs1 : x1<br> - rs2 : x8<br> - rd : x10<br> - rs2_val == -4097<br> - rs1_val == 8192<br>                                                                                                                                                 |[0x800002a4]:add a0, ra, fp<br> [0x800002a8]:sw a0, 20(a5)<br>     |
|  24|[0x8000326c]<br>0x00003F7F|- rs1 : x2<br> - rs2 : x24<br> - rd : x16<br> - rs2_val == -129<br> - rs1_val == 16384<br>                                                                                                                                                |[0x800002b4]:add a6, sp, s8<br> [0x800002b8]:sw a6, 24(a5)<br>     |
|  25|[0x80003270]<br>0x00008000|- rs1 : x23<br> - rs2 : x0<br> - rd : x9<br> - rs1_val == 32768<br>                                                                                                                                                                       |[0x800002c8]:add s1, s7, zero<br> [0x800002cc]:sw s1, 28(a5)<br>   |
|  26|[0x80003274]<br>0x00014000|- rs1 : x22<br> - rs2 : x31<br> - rd : x29<br> - rs2_val == 16384<br> - rs1_val == 65536<br>                                                                                                                                              |[0x800002d8]:add t4, s6, t6<br> [0x800002dc]:sw t4, 32(a5)<br>     |
|  27|[0x80003278]<br>0xC0020000|- rs1 : x30<br> - rs2 : x11<br> - rd : x6<br> - rs1_val == 131072<br>                                                                                                                                                                     |[0x800002e8]:add t1, t5, a1<br> [0x800002ec]:sw t1, 36(a5)<br>     |
|  28|[0x8000327c]<br>0xC003FFFF|- rs1 : x21<br> - rs2 : x20<br> - rd : x1<br> - rs2_val == -1073741825<br> - rs1_val == 262144<br>                                                                                                                                        |[0x800002fc]:add ra, s5, s4<br> [0x80000300]:sw ra, 40(a5)<br>     |
|  29|[0x80003280]<br>0x00080001|- rs1 : x28<br> - rs2 : x13<br> - rd : x23<br> - rs1_val == 524288<br>                                                                                                                                                                    |[0x8000030c]:add s7, t3, a3<br> [0x80000310]:sw s7, 44(a5)<br>     |
|  30|[0x80003284]<br>0x00100008|- rs1 : x8<br> - rs2 : x18<br> - rd : x19<br> - rs2_val == 8<br> - rs1_val == 1048576<br>                                                                                                                                                 |[0x8000031c]:add s3, fp, s2<br> [0x80000320]:sw s3, 48(a5)<br>     |
|  31|[0x80003288]<br>0x00200003|- rs1 : x12<br> - rs2 : x16<br> - rd : x20<br> - rs1_val == 2097152<br>                                                                                                                                                                   |[0x8000032c]:add s4, a2, a6<br> [0x80000330]:sw s4, 52(a5)<br>     |
|  32|[0x8000328c]<br>0x003FFF7F|- rs1 : x3<br> - rs2 : x4<br> - rd : x17<br> - rs1_val == 4194304<br>                                                                                                                                                                     |[0x8000033c]:add a7, gp, tp<br> [0x80000340]:sw a7, 56(a5)<br>     |
|  33|[0x80003290]<br>0x00820000|- rs2_val == 131072<br> - rs1_val == 8388608<br>                                                                                                                                                                                          |[0x80000354]:add a2, a0, a1<br> [0x80000358]:sw a2, 0(ra)<br>      |
|  34|[0x80003294]<br>0x00FFFFBF|- rs2_val == -65<br> - rs1_val == 16777216<br>                                                                                                                                                                                            |[0x80000364]:add a2, a0, a1<br> [0x80000368]:sw a2, 4(ra)<br>      |
|  35|[0x80003298]<br>0x017FFFFF|- rs2_val == -8388609<br> - rs1_val == 33554432<br>                                                                                                                                                                                       |[0x80000378]:add a2, a0, a1<br> [0x8000037c]:sw a2, 8(ra)<br>      |
|  36|[0x8000329c]<br>0x04000007|- rs1_val == 67108864<br>                                                                                                                                                                                                                 |[0x80000388]:add a2, a0, a1<br> [0x8000038c]:sw a2, 12(ra)<br>     |
|  37|[0x800032a0]<br>0x87FFFFFF|- rs1_val == 134217728<br>                                                                                                                                                                                                                |[0x8000039c]:add a2, a0, a1<br> [0x800003a0]:sw a2, 16(ra)<br>     |
|  38|[0x800032a4]<br>0x0FFFFFF9|- rs1_val == 268435456<br>                                                                                                                                                                                                                |[0x800003ac]:add a2, a0, a1<br> [0x800003b0]:sw a2, 20(ra)<br>     |
|  39|[0x800032a8]<br>0x22000000|- rs2_val == 33554432<br> - rs1_val == 536870912<br>                                                                                                                                                                                      |[0x800003bc]:add a2, a0, a1<br> [0x800003c0]:sw a2, 24(ra)<br>     |
|  40|[0x800032ac]<br>0x3FFFFFEF|- rs1_val == 1073741824<br>                                                                                                                                                                                                               |[0x800003cc]:add a2, a0, a1<br> [0x800003d0]:sw a2, 28(ra)<br>     |
|  41|[0x800032b0]<br>0xFFBFFFFD|- rs2_val == -4194305<br> - rs1_val == -2<br>                                                                                                                                                                                             |[0x800003e0]:add a2, a0, a1<br> [0x800003e4]:sw a2, 32(ra)<br>     |
|  42|[0x800032b4]<br>0x000003FD|- rs2_val == 1024<br> - rs1_val == -3<br>                                                                                                                                                                                                 |[0x800003f0]:add a2, a0, a1<br> [0x800003f4]:sw a2, 36(ra)<br>     |
|  43|[0x800032b8]<br>0xAAAAAAA5|- rs1_val == -5<br>                                                                                                                                                                                                                       |[0x80000404]:add a2, a0, a1<br> [0x80000408]:sw a2, 40(ra)<br>     |
|  44|[0x800032bc]<br>0xF7FFFFF6|- rs2_val == -134217729<br> - rs1_val == -9<br>                                                                                                                                                                                           |[0x80000418]:add a2, a0, a1<br> [0x8000041c]:sw a2, 44(ra)<br>     |
|  45|[0x800032c0]<br>0x000001EF|- rs2_val == 512<br> - rs1_val == -17<br>                                                                                                                                                                                                 |[0x80000428]:add a2, a0, a1<br> [0x8000042c]:sw a2, 48(ra)<br>     |
|  46|[0x800032c4]<br>0xFFF8FFFF|- rs2_val == -524289<br>                                                                                                                                                                                                                  |[0x8000043c]:add a2, a0, a1<br> [0x80000440]:sw a2, 52(ra)<br>     |
|  47|[0x800032c8]<br>0xBFEFFFFF|- rs2_val == -1048577<br>                                                                                                                                                                                                                 |[0x80000450]:add a2, a0, a1<br> [0x80000454]:sw a2, 56(ra)<br>     |
|  48|[0x800032cc]<br>0xBEFFFFFF|- rs2_val == -16777217<br>                                                                                                                                                                                                                |[0x80000464]:add a2, a0, a1<br> [0x80000468]:sw a2, 60(ra)<br>     |
|  49|[0x800032d0]<br>0xFDFFFEFE|- rs2_val == -33554433<br> - rs1_val == -257<br>                                                                                                                                                                                          |[0x80000478]:add a2, a0, a1<br> [0x8000047c]:sw a2, 64(ra)<br>     |
|  50|[0x800032d4]<br>0xDBFFFFFE|- rs2_val == -67108865<br> - rs1_val == -536870913<br>                                                                                                                                                                                    |[0x80000490]:add a2, a0, a1<br> [0x80000494]:sw a2, 68(ra)<br>     |
|  51|[0x800032d8]<br>0xEFFFFFFB|- rs2_val == -268435457<br>                                                                                                                                                                                                               |[0x800004a4]:add a2, a0, a1<br> [0x800004a8]:sw a2, 72(ra)<br>     |
|  52|[0x800032dc]<br>0xDFFF7FFE|- rs2_val == -536870913<br> - rs1_val == -32769<br>                                                                                                                                                                                       |[0x800004bc]:add a2, a0, a1<br> [0x800004c0]:sw a2, 76(ra)<br>     |
|  53|[0x800032e0]<br>0x55554D54|- rs2_val == 1431655765<br> - rs1_val == -2049<br>                                                                                                                                                                                        |[0x800004d4]:add a2, a0, a1<br> [0x800004d8]:sw a2, 80(ra)<br>     |
|  54|[0x800032e4]<br>0xFFBFFFDE|- rs1_val == -33<br>                                                                                                                                                                                                                      |[0x800004e8]:add a2, a0, a1<br> [0x800004ec]:sw a2, 84(ra)<br>     |
|  55|[0x800032e8]<br>0x001FFFBF|- rs2_val == 2097152<br> - rs1_val == -65<br>                                                                                                                                                                                             |[0x800004f8]:add a2, a0, a1<br> [0x800004fc]:sw a2, 88(ra)<br>     |
|  56|[0x800032ec]<br>0xFFFFF9FE|- rs2_val == -1025<br> - rs1_val == -513<br>                                                                                                                                                                                              |[0x80000508]:add a2, a0, a1<br> [0x8000050c]:sw a2, 92(ra)<br>     |
|  57|[0x800032f0]<br>0x0FFFFBFF|- rs2_val == 268435456<br> - rs1_val == -1025<br>                                                                                                                                                                                         |[0x80000518]:add a2, a0, a1<br> [0x8000051c]:sw a2, 96(ra)<br>     |
|  58|[0x800032f4]<br>0xFFFFEFBE|- rs1_val == -4097<br>                                                                                                                                                                                                                    |[0x8000052c]:add a2, a0, a1<br> [0x80000530]:sw a2, 100(ra)<br>    |
|  59|[0x800032f8]<br>0xFFFFCFFE|- rs1_val == -8193<br>                                                                                                                                                                                                                    |[0x80000544]:add a2, a0, a1<br> [0x80000548]:sw a2, 104(ra)<br>    |
|  60|[0x800032fc]<br>0xFFFFBFFE|- rs1_val == -16385<br>                                                                                                                                                                                                                   |[0x80000558]:add a2, a0, a1<br> [0x8000055c]:sw a2, 108(ra)<br>    |
|  61|[0x80003304]<br>0xFFFDFFFB|- rs1_val == -131073<br>                                                                                                                                                                                                                  |[0x80000584]:add a2, a0, a1<br> [0x80000588]:sw a2, 116(ra)<br>    |
|  62|[0x80003308]<br>0x000BFFFF|- rs1_val == -262145<br>                                                                                                                                                                                                                  |[0x80000598]:add a2, a0, a1<br> [0x8000059c]:sw a2, 120(ra)<br>    |
|  63|[0x8000330c]<br>0xFFFBFFFF|- rs2_val == 262144<br> - rs1_val == -524289<br>                                                                                                                                                                                          |[0x800005ac]:add a2, a0, a1<br> [0x800005b0]:sw a2, 124(ra)<br>    |
|  64|[0x80003310]<br>0xFFF00003|- rs2_val == 4<br> - rs1_val == -1048577<br>                                                                                                                                                                                              |[0x800005c0]:add a2, a0, a1<br> [0x800005c4]:sw a2, 128(ra)<br>    |
|  65|[0x80003314]<br>0xFFE001FF|- rs1_val == -2097153<br>                                                                                                                                                                                                                 |[0x800005d4]:add a2, a0, a1<br> [0x800005d8]:sw a2, 132(ra)<br>    |
|  66|[0x80003318]<br>0xFFB7FFFE|- rs1_val == -4194305<br>                                                                                                                                                                                                                 |[0x800005ec]:add a2, a0, a1<br> [0x800005f0]:sw a2, 136(ra)<br>    |
|  67|[0x8000331c]<br>0x54D55554|- rs1_val == -8388609<br>                                                                                                                                                                                                                 |[0x80000604]:add a2, a0, a1<br> [0x80000608]:sw a2, 140(ra)<br>    |
|  68|[0x80003320]<br>0xFF007FFF|- rs2_val == 32768<br> - rs1_val == -16777217<br>                                                                                                                                                                                         |[0x80000618]:add a2, a0, a1<br> [0x8000061c]:sw a2, 144(ra)<br>    |
|  69|[0x80003324]<br>0xFBFDFFFE|- rs1_val == -67108865<br>                                                                                                                                                                                                                |[0x80000630]:add a2, a0, a1<br> [0x80000634]:sw a2, 148(ra)<br>    |
|  70|[0x80003328]<br>0xF7FFFDFE|- rs2_val == -513<br> - rs1_val == -134217729<br>                                                                                                                                                                                         |[0x80000644]:add a2, a0, a1<br> [0x80000648]:sw a2, 152(ra)<br>    |
|  71|[0x8000332c]<br>0xEFFEFFFE|- rs1_val == -268435457<br>                                                                                                                                                                                                               |[0x8000065c]:add a2, a0, a1<br> [0x80000660]:sw a2, 156(ra)<br>    |
|  72|[0x80003330]<br>0xBFFFFFFA|- rs2_val == -5<br> - rs1_val == -1073741825<br>                                                                                                                                                                                          |[0x80000670]:add a2, a0, a1<br> [0x80000674]:sw a2, 160(ra)<br>    |
|  73|[0x80003334]<br>0x55355554|- rs1_val == 1431655765<br>                                                                                                                                                                                                               |[0x80000688]:add a2, a0, a1<br> [0x8000068c]:sw a2, 164(ra)<br>    |
|  74|[0x80003338]<br>0xAAAAAAA0|- rs1_val == -1431655766<br>                                                                                                                                                                                                              |[0x8000069c]:add a2, a0, a1<br> [0x800006a0]:sw a2, 168(ra)<br>    |
|  75|[0x8000333c]<br>0xFFF0001F|- rs2_val == 32<br>                                                                                                                                                                                                                       |[0x800006b0]:add a2, a0, a1<br> [0x800006b4]:sw a2, 172(ra)<br>    |
|  76|[0x80003340]<br>0x00002040|- rs2_val == 64<br>                                                                                                                                                                                                                       |[0x800006c0]:add a2, a0, a1<br> [0x800006c4]:sw a2, 176(ra)<br>    |
|  77|[0x80003344]<br>0x04000080|- rs2_val == 128<br>                                                                                                                                                                                                                      |[0x800006d0]:add a2, a0, a1<br> [0x800006d4]:sw a2, 180(ra)<br>    |
|  78|[0x80003348]<br>0x00100800|- rs2_val == 2048<br>                                                                                                                                                                                                                     |[0x800006e4]:add a2, a0, a1<br> [0x800006e8]:sw a2, 184(ra)<br>    |
|  79|[0x8000334c]<br>0xFFFC0FFF|- rs2_val == 4096<br>                                                                                                                                                                                                                     |[0x800006f8]:add a2, a0, a1<br> [0x800006fc]:sw a2, 188(ra)<br>    |
|  80|[0x80003350]<br>0x000C0000|- rs2_val == 524288<br>                                                                                                                                                                                                                   |[0x80000708]:add a2, a0, a1<br> [0x8000070c]:sw a2, 192(ra)<br>    |
|  81|[0x80003354]<br>0x00440000|- rs2_val == 4194304<br>                                                                                                                                                                                                                  |[0x80000718]:add a2, a0, a1<br> [0x8000071c]:sw a2, 196(ra)<br>    |
|  82|[0x80003358]<br>0x21000000|- rs2_val == 16777216<br>                                                                                                                                                                                                                 |[0x80000728]:add a2, a0, a1<br> [0x8000072c]:sw a2, 200(ra)<br>    |
|  83|[0x8000335c]<br>0x00001FBF|- rs2_val == 8192<br>                                                                                                                                                                                                                     |[0x80000738]:add a2, a0, a1<br> [0x8000073c]:sw a2, 204(ra)<br>    |
|  84|[0x80003360]<br>0x1FFFFFF9|- rs2_val == 536870912<br>                                                                                                                                                                                                                |[0x80000748]:add a2, a0, a1<br> [0x8000074c]:sw a2, 208(ra)<br>    |
|  85|[0x80003364]<br>0x37FFFFFF|- rs2_val == 1073741824<br>                                                                                                                                                                                                               |[0x8000075c]:add a2, a0, a1<br> [0x80000760]:sw a2, 212(ra)<br>    |
|  86|[0x80003368]<br>0x00007FFE|- rs2_val == -2<br>                                                                                                                                                                                                                       |[0x8000076c]:add a2, a0, a1<br> [0x80000770]:sw a2, 216(ra)<br>    |
|  87|[0x8000336c]<br>0xFFFFFFFB|- rs2_val == -3<br>                                                                                                                                                                                                                       |[0x8000077c]:add a2, a0, a1<br> [0x80000780]:sw a2, 220(ra)<br>    |
|  88|[0x80003370]<br>0xBFFFFFF7|- rs2_val == -9<br>                                                                                                                                                                                                                       |[0x8000078c]:add a2, a0, a1<br> [0x80000790]:sw a2, 224(ra)<br>    |
|  89|[0x80003374]<br>0x000003DF|- rs2_val == -33<br>                                                                                                                                                                                                                      |[0x8000079c]:add a2, a0, a1<br> [0x800007a0]:sw a2, 228(ra)<br>    |
|  90|[0x80003378]<br>0xFFFFF7EE|- rs2_val == -2049<br>                                                                                                                                                                                                                    |[0x800007b0]:add a2, a0, a1<br> [0x800007b4]:sw a2, 232(ra)<br>    |
|  91|[0x8000337c]<br>0xFBFFDFFE|- rs2_val == -8193<br>                                                                                                                                                                                                                    |[0x800007c8]:add a2, a0, a1<br> [0x800007cc]:sw a2, 236(ra)<br>    |
|  92|[0x80003380]<br>0xFFFFBFF5|- rs2_val == -16385<br>                                                                                                                                                                                                                   |[0x800007dc]:add a2, a0, a1<br> [0x800007e0]:sw a2, 240(ra)<br>    |
|  93|[0x80003384]<br>0xFFFF7FFA|- rs2_val == -32769<br>                                                                                                                                                                                                                   |[0x800007f0]:add a2, a0, a1<br> [0x800007f4]:sw a2, 244(ra)<br>    |
|  94|[0x80003388]<br>0x00010002|- rs2_val == 65536<br>                                                                                                                                                                                                                    |[0x80000800]:add a2, a0, a1<br> [0x80000804]:sw a2, 248(ra)<br>    |
|  95|[0x80003394]<br>0xFFFC7FFF|- rs2_val == -262145<br>                                                                                                                                                                                                                  |[0x80000834]:add a2, a0, a1<br> [0x80000838]:sw a2, 260(ra)<br>    |
