
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000810')]      |
| SIG_REGION                | [('0x80003204', '0x80003394', '100 words')]      |
| COV_LABELS                | divu      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/divu-01.S/divu-01.S    |
| Total Number of coverpoints| 246     |
| Total Signature Updates   | 97      |
| Total Coverpoints Covered | 246      |
| STAT1                     | 94      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007d4]:divu a2, a0, a1
      [0x800007d8]:sw a2, 300(sp)
 -- Signature Address: 0x80003384 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : divu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs1_val == (-2**(xlen-1))
      - rs2_val == -4097
      - rs1_val == -2147483648




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007f4]:divu a2, a0, a1
      [0x800007f8]:sw a2, 308(sp)
 -- Signature Address: 0x8000338c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : divu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 262144
      - rs1_val == 32




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000804]:divu a2, a0, a1
      [0x80000808]:sw a2, 312(sp)
 -- Signature Address: 0x80003390 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : divu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 67108864
      - rs1_val == 262144






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

|s.no|        signature         |                                                                                            coverpoints                                                                                            |                                code                                |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000001|- opcode : divu<br> - rs1 : x16<br> - rs2 : x16<br> - rd : x16<br> - rs1 == rs2 == rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br> - rs2_val == -4097<br> - rs1_val == -4097<br> |[0x8000010c]:divu a6, a6, a6<br> [0x80000110]:sw a6, 0(tp)<br>      |
|   2|[0x80003214]<br>0x00000000|- rs1 : x22<br> - rs2 : x27<br> - rd : x27<br> - rs2 == rd != rs1<br> - rs1_val != rs2_val<br> - rs1_val == 0<br> - rs2_val == 131072<br>                                                          |[0x8000011c]:divu s11, s6, s11<br> [0x80000120]:sw s11, 4(tp)<br>   |
|   3|[0x80003218]<br>0x00000FFF|- rs1 : x23<br> - rs2 : x21<br> - rd : x23<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 524288<br> - rs1_val == 2147483647<br>       |[0x80000130]:divu s7, s7, s5<br> [0x80000134]:sw s7, 8(tp)<br>      |
|   4|[0x8000321c]<br>0x00000000|- rs1 : x7<br> - rs2 : x31<br> - rd : x3<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == 1<br> - rs2_val == 32768<br>                                                               |[0x80000140]:divu gp, t2, t6<br> [0x80000144]:sw gp, 12(tp)<br>     |
|   5|[0x80003220]<br>0x00000001|- rs1 : x2<br> - rs2 : x2<br> - rd : x7<br> - rs1 == rs2 != rd<br> - rs2_val == (-2**(xlen-1))<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -2147483648<br>       |[0x80000150]:divu t2, sp, sp<br> [0x80000154]:sw t2, 16(tp)<br>     |
|   6|[0x80003224]<br>0xFFFFFFFF|- rs1 : x1<br> - rs2 : x30<br> - rd : x28<br> - rs2_val == 0<br> - rs1_val == 536870912<br>                                                                                                        |[0x80000160]:divu t3, ra, t5<br> [0x80000164]:sw t3, 20(tp)<br>     |
|   7|[0x80003228]<br>0x00000000|- rs1 : x6<br> - rs2 : x9<br> - rd : x30<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == 4096<br>                                                                    |[0x80000174]:divu t5, t1, s1<br> [0x80000178]:sw t5, 24(tp)<br>     |
|   8|[0x8000322c]<br>0xFFFFFDFF|- rs1 : x10<br> - rs2 : x8<br> - rd : x25<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == 1<br> - rs1_val == -513<br>                                                                           |[0x80000184]:divu s9, a0, fp<br> [0x80000188]:sw s9, 28(tp)<br>     |
|   9|[0x80003230]<br>0x00000001|- rs1 : x26<br> - rs2 : x7<br> - rd : x18<br> - rs2_val == 64<br> - rs1_val == 64<br>                                                                                                              |[0x80000194]:divu s2, s10, t2<br> [0x80000198]:sw s2, 32(tp)<br>    |
|  10|[0x80003234]<br>0x00000000|- rs1 : x25<br> - rs2 : x24<br> - rd : x15<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == 2<br>                                                                                                |[0x800001a4]:divu a5, s9, s8<br> [0x800001a8]:sw a5, 36(tp)<br>     |
|  11|[0x80003238]<br>0x00000000|- rs1 : x30<br> - rs2 : x26<br> - rd : x24<br> - rs1_val == 4<br>                                                                                                                                  |[0x800001b4]:divu s8, t5, s10<br> [0x800001b8]:sw s8, 40(tp)<br>    |
|  12|[0x8000323c]<br>0x00000002|- rs1 : x29<br> - rs2 : x20<br> - rd : x14<br> - rs2_val == 4<br> - rs1_val == 8<br>                                                                                                               |[0x800001c4]:divu a4, t4, s4<br> [0x800001c8]:sw a4, 44(tp)<br>     |
|  13|[0x80003240]<br>0x00000000|- rs1 : x14<br> - rs2 : x23<br> - rd : x21<br> - rs1_val == 16<br>                                                                                                                                 |[0x800001d4]:divu s5, a4, s7<br> [0x800001d8]:sw s5, 48(tp)<br>     |
|  14|[0x80003244]<br>0x00000000|- rs1 : x13<br> - rs2 : x25<br> - rd : x0<br> - rs2_val == 262144<br> - rs1_val == 32<br>                                                                                                          |[0x800001e4]:divu zero, a3, s9<br> [0x800001e8]:sw zero, 52(tp)<br> |
|  15|[0x80003248]<br>0x00000080|- rs1 : x31<br> - rs2 : x10<br> - rd : x9<br> - rs1_val == 128<br>                                                                                                                                 |[0x800001f4]:divu s1, t6, a0<br> [0x800001f8]:sw s1, 56(tp)<br>     |
|  16|[0x8000324c]<br>0x00000000|- rs1 : x12<br> - rs2 : x5<br> - rd : x2<br> - rs2_val == -5<br> - rs1_val == 256<br>                                                                                                              |[0x80000204]:divu sp, a2, t0<br> [0x80000208]:sw sp, 60(tp)<br>     |
|  17|[0x80003250]<br>0x00000000|- rs1 : x24<br> - rs2 : x22<br> - rd : x12<br> - rs2_val == 16384<br> - rs1_val == 512<br>                                                                                                         |[0x80000214]:divu a2, s8, s6<br> [0x80000218]:sw a2, 64(tp)<br>     |
|  18|[0x80003254]<br>0x00000000|- rs1 : x0<br> - rs2 : x18<br> - rd : x17<br>                                                                                                                                                      |[0x80000224]:divu a7, zero, s2<br> [0x80000228]:sw a7, 68(tp)<br>   |
|  19|[0x80003258]<br>0x00000000|- rs1 : x21<br> - rs2 : x3<br> - rd : x19<br> - rs2_val == 134217728<br> - rs1_val == 2048<br>                                                                                                     |[0x80000240]:divu s3, s5, gp<br> [0x80000244]:sw s3, 0(sp)<br>      |
|  20|[0x8000325c]<br>0x00000000|- rs1 : x15<br> - rs2 : x13<br> - rd : x6<br> - rs2_val == -4194305<br> - rs1_val == 8192<br>                                                                                                      |[0x80000254]:divu t1, a5, a3<br> [0x80000258]:sw t1, 4(sp)<br>      |
|  21|[0x80003260]<br>0x00000000|- rs1 : x19<br> - rs2 : x29<br> - rd : x13<br> - rs1_val == 16384<br>                                                                                                                              |[0x80000268]:divu a3, s3, t4<br> [0x8000026c]:sw a3, 8(sp)<br>      |
|  22|[0x80003264]<br>0x00000000|- rs1 : x3<br> - rs2 : x28<br> - rd : x5<br> - rs2_val == -513<br> - rs1_val == 32768<br>                                                                                                          |[0x80000278]:divu t0, gp, t3<br> [0x8000027c]:sw t0, 12(sp)<br>     |
|  23|[0x80003268]<br>0x00000000|- rs1 : x5<br> - rs2 : x19<br> - rd : x1<br> - rs2_val == -536870913<br> - rs1_val == 131072<br>                                                                                                   |[0x8000028c]:divu ra, t0, s3<br> [0x80000290]:sw ra, 16(sp)<br>     |
|  24|[0x8000326c]<br>0xFFFFFFFF|- rs1 : x9<br> - rs2 : x0<br> - rd : x11<br> - rs1_val == 262144<br>                                                                                                                               |[0x800002a0]:divu a1, s1, zero<br> [0x800002a4]:sw a1, 20(sp)<br>   |
|  25|[0x80003270]<br>0x00000000|- rs1 : x27<br> - rs2 : x15<br> - rd : x4<br> - rs2_val == -268435457<br> - rs1_val == 524288<br>                                                                                                  |[0x800002b4]:divu tp, s11, a5<br> [0x800002b8]:sw tp, 24(sp)<br>    |
|  26|[0x80003274]<br>0x00000000|- rs1 : x18<br> - rs2 : x6<br> - rd : x22<br> - rs2_val == -33<br> - rs1_val == 1048576<br>                                                                                                        |[0x800002c4]:divu s6, s2, t1<br> [0x800002c8]:sw s6, 28(sp)<br>     |
|  27|[0x80003278]<br>0x00000000|- rs1 : x20<br> - rs2 : x1<br> - rd : x8<br> - rs2_val == -67108865<br> - rs1_val == 2097152<br>                                                                                                   |[0x800002d8]:divu fp, s4, ra<br> [0x800002dc]:sw fp, 32(sp)<br>     |
|  28|[0x8000327c]<br>0x00000000|- rs1 : x28<br> - rs2 : x17<br> - rd : x29<br> - rs2_val == 67108864<br> - rs1_val == 4194304<br>                                                                                                  |[0x800002e8]:divu t4, t3, a7<br> [0x800002ec]:sw t4, 36(sp)<br>     |
|  29|[0x80003280]<br>0x00000000|- rs1 : x17<br> - rs2 : x11<br> - rd : x10<br> - rs2_val == 268435456<br> - rs1_val == 8388608<br>                                                                                                 |[0x800002f8]:divu a0, a7, a1<br> [0x800002fc]:sw a0, 40(sp)<br>     |
|  30|[0x80003284]<br>0x00000020|- rs1 : x11<br> - rs2 : x14<br> - rd : x31<br> - rs1_val == 16777216<br>                                                                                                                           |[0x80000308]:divu t6, a1, a4<br> [0x8000030c]:sw t6, 44(sp)<br>     |
|  31|[0x80003288]<br>0x00000000|- rs1 : x4<br> - rs2 : x12<br> - rd : x20<br> - rs1_val == 33554432<br>                                                                                                                            |[0x8000031c]:divu s4, tp, a2<br> [0x80000320]:sw s4, 48(sp)<br>     |
|  32|[0x8000328c]<br>0x00000000|- rs1 : x8<br> - rs2 : x4<br> - rd : x26<br> - rs2_val == -65537<br> - rs1_val == 67108864<br>                                                                                                     |[0x80000330]:divu s10, fp, tp<br> [0x80000334]:sw s10, 52(sp)<br>   |
|  33|[0x80003290]<br>0x00000008|- rs2_val == 16777216<br> - rs1_val == 134217728<br>                                                                                                                                               |[0x80000340]:divu a2, a0, a1<br> [0x80000344]:sw a2, 56(sp)<br>     |
|  34|[0x80003294]<br>0x00000000|- rs2_val == -524289<br> - rs1_val == 268435456<br>                                                                                                                                                |[0x80000354]:divu a2, a0, a1<br> [0x80000358]:sw a2, 60(sp)<br>     |
|  35|[0x80003298]<br>0x00000000|- rs2_val == -257<br> - rs1_val == 1073741824<br>                                                                                                                                                  |[0x80000364]:divu a2, a0, a1<br> [0x80000368]:sw a2, 64(sp)<br>     |
|  36|[0x8000329c]<br>0x007FFFFF|- rs2_val == 512<br> - rs1_val == -2<br>                                                                                                                                                           |[0x80000374]:divu a2, a0, a1<br> [0x80000378]:sw a2, 68(sp)<br>     |
|  37|[0x800032a0]<br>0x007FFFFF|- rs1_val == -3<br>                                                                                                                                                                                |[0x80000384]:divu a2, a0, a1<br> [0x80000388]:sw a2, 72(sp)<br>     |
|  38|[0x800032a4]<br>0x00000001|- rs1_val == -5<br>                                                                                                                                                                                |[0x80000398]:divu a2, a0, a1<br> [0x8000039c]:sw a2, 76(sp)<br>     |
|  39|[0x800032a8]<br>0xFFFFFFF7|- rs1_val == -9<br>                                                                                                                                                                                |[0x800003a8]:divu a2, a0, a1<br> [0x800003ac]:sw a2, 80(sp)<br>     |
|  40|[0x800032ac]<br>0x00000001|- rs2_val == -8193<br> - rs1_val == -17<br>                                                                                                                                                        |[0x800003bc]:divu a2, a0, a1<br> [0x800003c0]:sw a2, 84(sp)<br>     |
|  41|[0x800032b0]<br>0x00000FFF|- rs2_val == 1048576<br> - rs1_val == -33<br>                                                                                                                                                      |[0x800003cc]:divu a2, a0, a1<br> [0x800003d0]:sw a2, 88(sp)<br>     |
|  42|[0x800032b4]<br>0x00007FFF|- rs1_val == -65<br>                                                                                                                                                                               |[0x800003dc]:divu a2, a0, a1<br> [0x800003e0]:sw a2, 92(sp)<br>     |
|  43|[0x800032b8]<br>0x00000001|- rs2_val == -262145<br> - rs1_val == -65537<br>                                                                                                                                                   |[0x800003f4]:divu a2, a0, a1<br> [0x800003f8]:sw a2, 96(sp)<br>     |
|  44|[0x800032bc]<br>0x00000001|- rs2_val == -1048577<br>                                                                                                                                                                          |[0x80000408]:divu a2, a0, a1<br> [0x8000040c]:sw a2, 100(sp)<br>    |
|  45|[0x800032c0]<br>0x00000001|- rs2_val == -2097153<br> - rs1_val == -1048577<br>                                                                                                                                                |[0x80000420]:divu a2, a0, a1<br> [0x80000424]:sw a2, 104(sp)<br>    |
|  46|[0x800032c4]<br>0x00000000|- rs2_val == -8388609<br>                                                                                                                                                                          |[0x80000434]:divu a2, a0, a1<br> [0x80000438]:sw a2, 108(sp)<br>    |
|  47|[0x800032c8]<br>0x00000001|- rs2_val == -16777217<br> - rs1_val == -2097153<br>                                                                                                                                               |[0x8000044c]:divu a2, a0, a1<br> [0x80000450]:sw a2, 112(sp)<br>    |
|  48|[0x800032cc]<br>0x00000001|- rs2_val == -33554433<br> - rs1_val == -4194305<br>                                                                                                                                               |[0x80000464]:divu a2, a0, a1<br> [0x80000468]:sw a2, 116(sp)<br>    |
|  49|[0x800032d0]<br>0x00000000|- rs2_val == -134217729<br>                                                                                                                                                                        |[0x80000478]:divu a2, a0, a1<br> [0x8000047c]:sw a2, 120(sp)<br>    |
|  50|[0x800032d4]<br>0x00000001|- rs2_val == -1073741825<br> - rs1_val == -524289<br>                                                                                                                                              |[0x80000490]:divu a2, a0, a1<br> [0x80000494]:sw a2, 124(sp)<br>    |
|  51|[0x800032d8]<br>0x00000002|- rs2_val == 1431655765<br> - rs1_val == -129<br>                                                                                                                                                  |[0x800004a4]:divu a2, a0, a1<br> [0x800004a8]:sw a2, 128(sp)<br>    |
|  52|[0x800032dc]<br>0x00000001|- rs2_val == -1431655766<br>                                                                                                                                                                       |[0x800004bc]:divu a2, a0, a1<br> [0x800004c0]:sw a2, 132(sp)<br>    |
|  53|[0x800032e0]<br>0x1FFFFFDF|- rs2_val == 8<br> - rs1_val == -257<br>                                                                                                                                                           |[0x800004cc]:divu a2, a0, a1<br> [0x800004d0]:sw a2, 136(sp)<br>    |
|  54|[0x800032e4]<br>0x003FFFFE|- rs2_val == 1024<br> - rs1_val == -1025<br>                                                                                                                                                       |[0x800004dc]:divu a2, a0, a1<br> [0x800004e0]:sw a2, 140(sp)<br>    |
|  55|[0x800032e8]<br>0x003FFFFD|- rs1_val == -2049<br>                                                                                                                                                                             |[0x800004f0]:divu a2, a0, a1<br> [0x800004f4]:sw a2, 144(sp)<br>    |
|  56|[0x800032ec]<br>0x00000000|- rs2_val == -2<br>                                                                                                                                                                                |[0x80000504]:divu a2, a0, a1<br> [0x80000508]:sw a2, 148(sp)<br>    |
|  57|[0x800032f0]<br>0x00000000|- rs1_val == -8193<br>                                                                                                                                                                             |[0x80000518]:divu a2, a0, a1<br> [0x8000051c]:sw a2, 152(sp)<br>    |
|  58|[0x800032f4]<br>0x03FFFEFF|- rs1_val == -16385<br>                                                                                                                                                                            |[0x8000052c]:divu a2, a0, a1<br> [0x80000530]:sw a2, 156(sp)<br>    |
|  59|[0x800032f8]<br>0x249236DB|- rs1_val == -32769<br>                                                                                                                                                                            |[0x80000540]:divu a2, a0, a1<br> [0x80000544]:sw a2, 160(sp)<br>    |
|  60|[0x800032fc]<br>0x00000007|- rs2_val == 536870912<br> - rs1_val == -131073<br>                                                                                                                                                |[0x80000554]:divu a2, a0, a1<br> [0x80000558]:sw a2, 164(sp)<br>    |
|  61|[0x80003300]<br>0x1FFF7FFF|- rs1_val == -262145<br>                                                                                                                                                                           |[0x80000568]:divu a2, a0, a1<br> [0x8000056c]:sw a2, 168(sp)<br>    |
|  62|[0x80003304]<br>0x0000000F|- rs1_val == -8388609<br>                                                                                                                                                                          |[0x8000057c]:divu a2, a0, a1<br> [0x80000580]:sw a2, 172(sp)<br>    |
|  63|[0x80003308]<br>0x00000000|- rs2_val == -9<br> - rs1_val == -16777217<br>                                                                                                                                                     |[0x80000590]:divu a2, a0, a1<br> [0x80000594]:sw a2, 176(sp)<br>    |
|  64|[0x8000330c]<br>0x0000007E|- rs2_val == 33554432<br> - rs1_val == -33554433<br>                                                                                                                                               |[0x800005a4]:divu a2, a0, a1<br> [0x800005a8]:sw a2, 180(sp)<br>    |
|  65|[0x80003310]<br>0x00000001|- rs1_val == -67108865<br>                                                                                                                                                                         |[0x800005b8]:divu a2, a0, a1<br> [0x800005bc]:sw a2, 184(sp)<br>    |
|  66|[0x80003314]<br>0x0001EFFF|- rs1_val == -134217729<br>                                                                                                                                                                        |[0x800005cc]:divu a2, a0, a1<br> [0x800005d0]:sw a2, 188(sp)<br>    |
|  67|[0x80003318]<br>0x00000000|- rs1_val == -268435457<br>                                                                                                                                                                        |[0x800005e4]:divu a2, a0, a1<br> [0x800005e8]:sw a2, 192(sp)<br>    |
|  68|[0x8000331c]<br>0x00000000|- rs1_val == -536870913<br>                                                                                                                                                                        |[0x800005f8]:divu a2, a0, a1<br> [0x800005fc]:sw a2, 196(sp)<br>    |
|  69|[0x80003320]<br>0x00000000|- rs1_val == -1073741825<br>                                                                                                                                                                       |[0x80000610]:divu a2, a0, a1<br> [0x80000614]:sw a2, 200(sp)<br>    |
|  70|[0x80003324]<br>0x00000000|- rs1_val == 1431655765<br>                                                                                                                                                                        |[0x80000628]:divu a2, a0, a1<br> [0x8000062c]:sw a2, 204(sp)<br>    |
|  71|[0x80003328]<br>0x38E38E38|- rs1_val == -1431655766<br>                                                                                                                                                                       |[0x8000063c]:divu a2, a0, a1<br> [0x80000640]:sw a2, 208(sp)<br>    |
|  72|[0x8000332c]<br>0x7FBFFFFF|- rs2_val == 2<br>                                                                                                                                                                                 |[0x80000650]:divu a2, a0, a1<br> [0x80000654]:sw a2, 212(sp)<br>    |
|  73|[0x80003330]<br>0x0FFFFFFE|- rs2_val == 16<br>                                                                                                                                                                                |[0x80000660]:divu a2, a0, a1<br> [0x80000664]:sw a2, 216(sp)<br>    |
|  74|[0x80003334]<br>0x03FFFFFF|- rs2_val == 32<br>                                                                                                                                                                                |[0x80000674]:divu a2, a0, a1<br> [0x80000678]:sw a2, 220(sp)<br>    |
|  75|[0x80003338]<br>0x00080000|- rs2_val == 128<br>                                                                                                                                                                               |[0x80000684]:divu a2, a0, a1<br> [0x80000688]:sw a2, 224(sp)<br>    |
|  76|[0x8000333c]<br>0x00FFFFFF|- rs2_val == 256<br>                                                                                                                                                                               |[0x80000694]:divu a2, a0, a1<br> [0x80000698]:sw a2, 228(sp)<br>    |
|  77|[0x80003340]<br>0x001FFFFF|- rs2_val == 2048<br>                                                                                                                                                                              |[0x800006a8]:divu a2, a0, a1<br> [0x800006ac]:sw a2, 232(sp)<br>    |
|  78|[0x80003344]<br>0x0007FFFF|- rs2_val == 4096<br>                                                                                                                                                                              |[0x800006bc]:divu a2, a0, a1<br> [0x800006c0]:sw a2, 236(sp)<br>    |
|  79|[0x80003348]<br>0x00000000|- rs2_val == 2097152<br>                                                                                                                                                                           |[0x800006cc]:divu a2, a0, a1<br> [0x800006d0]:sw a2, 240(sp)<br>    |
|  80|[0x8000334c]<br>0x000003FF|- rs2_val == 4194304<br>                                                                                                                                                                           |[0x800006dc]:divu a2, a0, a1<br> [0x800006e0]:sw a2, 244(sp)<br>    |
|  81|[0x80003350]<br>0x00000000|- rs2_val == 8388608<br> - rs1_val == 1024<br>                                                                                                                                                     |[0x800006ec]:divu a2, a0, a1<br> [0x800006f0]:sw a2, 248(sp)<br>    |
|  82|[0x80003354]<br>0x00000000|- rs2_val == 1073741824<br>                                                                                                                                                                        |[0x800006fc]:divu a2, a0, a1<br> [0x80000700]:sw a2, 252(sp)<br>    |
|  83|[0x80003358]<br>0x00000000|- rs2_val == -3<br>                                                                                                                                                                                |[0x8000070c]:divu a2, a0, a1<br> [0x80000710]:sw a2, 256(sp)<br>    |
|  84|[0x8000335c]<br>0x00000000|- rs2_val == -17<br>                                                                                                                                                                               |[0x8000071c]:divu a2, a0, a1<br> [0x80000720]:sw a2, 260(sp)<br>    |
|  85|[0x80003360]<br>0x00000000|- rs2_val == -65<br>                                                                                                                                                                               |[0x8000072c]:divu a2, a0, a1<br> [0x80000730]:sw a2, 264(sp)<br>    |
|  86|[0x80003364]<br>0x00000001|- rs2_val == -129<br>                                                                                                                                                                              |[0x8000073c]:divu a2, a0, a1<br> [0x80000740]:sw a2, 268(sp)<br>    |
|  87|[0x80003368]<br>0x00000000|- rs2_val == -1025<br>                                                                                                                                                                             |[0x80000750]:divu a2, a0, a1<br> [0x80000754]:sw a2, 272(sp)<br>    |
|  88|[0x8000336c]<br>0x00000000|- rs2_val == -2049<br>                                                                                                                                                                             |[0x80000764]:divu a2, a0, a1<br> [0x80000768]:sw a2, 276(sp)<br>    |
|  89|[0x80003370]<br>0x00004000|- rs2_val == 8192<br>                                                                                                                                                                              |[0x80000774]:divu a2, a0, a1<br> [0x80000778]:sw a2, 280(sp)<br>    |
|  90|[0x80003374]<br>0x00000000|- rs2_val == -16385<br>                                                                                                                                                                            |[0x80000788]:divu a2, a0, a1<br> [0x8000078c]:sw a2, 284(sp)<br>    |
|  91|[0x80003378]<br>0x00000000|- rs2_val == -32769<br>                                                                                                                                                                            |[0x8000079c]:divu a2, a0, a1<br> [0x800007a0]:sw a2, 288(sp)<br>    |
|  92|[0x8000337c]<br>0x00008000|- rs2_val == 65536<br>                                                                                                                                                                             |[0x800007ac]:divu a2, a0, a1<br> [0x800007b0]:sw a2, 292(sp)<br>    |
|  93|[0x80003380]<br>0x00000000|- rs2_val == -131073<br>                                                                                                                                                                           |[0x800007c0]:divu a2, a0, a1<br> [0x800007c4]:sw a2, 296(sp)<br>    |
|  94|[0x80003388]<br>0x00000000|- rs1_val == 65536<br>                                                                                                                                                                             |[0x800007e4]:divu a2, a0, a1<br> [0x800007e8]:sw a2, 304(sp)<br>    |
