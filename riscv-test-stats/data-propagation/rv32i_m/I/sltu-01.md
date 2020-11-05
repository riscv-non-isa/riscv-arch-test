
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000860')]      |
| SIG_REGION                | [('0x80003204', '0x800033a0', '103 words')]      |
| COV_LABELS                | sltu      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sltu-01.S/sltu-01.S    |
| Total Number of coverpoints| 241     |
| Total Coverpoints Hit     | 241      |
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
      [0x8000038c]:sltu a2, a0, a1
      [0x80000390]:sw a2, 76(ra)
 -- Signature Address: 0x800032a4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : sltu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val == 4294967294




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005b8]:sltu a2, a0, a1
      [0x800005bc]:sw a2, 188(ra)
 -- Signature Address: 0x80003314 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : sltu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs2_val == 4096
      - rs1_val == 4290772991




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000840]:sltu a2, a0, a1
      [0x80000844]:sw a2, 320(ra)
 -- Signature Address: 0x80003398 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - opcode : sltu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs2_val == 32768
      - rs1_val == 64






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

|s.no|        signature         |                                                                                                       coverpoints                                                                                                       |                                code                                 |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000001|- opcode : sltu<br> - rs1 : x21<br> - rs2 : x30<br> - rd : x21<br> - rs1 == rd != rs2<br> - rs1_val == 0<br> - rs2_val == 4294967279<br>                                                                                 |[0x80000108]:sltu s5, s5, t5<br> [0x8000010c]:sw s5, 0(gp)<br>       |
|   2|[0x80003214]<br>0x00000000|- rs1 : x25<br> - rs2 : x25<br> - rd : x27<br> - rs1 == rs2 != rd<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs2_val == 4290772991<br> - rs1_val == 4290772991<br> |[0x8000011c]:sltu s11, s9, s9<br> [0x80000120]:sw s11, 4(gp)<br>     |
|   3|[0x80003218]<br>0x00000000|- rs1 : x24<br> - rs2 : x24<br> - rd : x24<br> - rs1 == rs2 == rd<br> - rs2_val == 4294967294<br> - rs1_val == 4294967294<br>                                                                                            |[0x8000012c]:sltu s8, s8, s8<br> [0x80000130]:sw s8, 8(gp)<br>       |
|   4|[0x8000321c]<br>0x00000000|- rs1 : x23<br> - rs2 : x15<br> - rd : x15<br> - rs2 == rd != rs1<br> - rs2_val == 0<br> - rs1_val == 2097152<br>                                                                                                        |[0x8000013c]:sltu a5, s7, a5<br> [0x80000140]:sw a5, 12(gp)<br>      |
|   5|[0x80003220]<br>0x00000001|- rs1 : x19<br> - rs2 : x9<br> - rd : x20<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs2_val == (2**(xlen)-1)<br>                                      |[0x8000014c]:sltu s4, s3, s1<br> [0x80000150]:sw s4, 16(gp)<br>      |
|   6|[0x80003224]<br>0x00000000|- rs1 : x17<br> - rs2 : x12<br> - rd : x5<br> - rs2_val == 1<br>                                                                                                                                                         |[0x8000015c]:sltu t0, a7, a2<br> [0x80000160]:sw t0, 20(gp)<br>      |
|   7|[0x80003228]<br>0x00000000|- rs1 : x30<br> - rs2 : x0<br> - rd : x18<br>                                                                                                                                                                            |[0x8000016c]:sltu s2, t5, zero<br> [0x80000170]:sw s2, 24(gp)<br>    |
|   8|[0x8000322c]<br>0x00000001|- rs1 : x14<br> - rs2 : x7<br> - rd : x4<br> - rs2_val == 1024<br> - rs1_val == 2<br>                                                                                                                                    |[0x8000017c]:sltu tp, a4, t2<br> [0x80000180]:sw tp, 28(gp)<br>      |
|   9|[0x80003230]<br>0x00000000|- rs1 : x20<br> - rs2 : x2<br> - rd : x6<br> - rs2_val == 4<br> - rs1_val == 4<br>                                                                                                                                       |[0x8000018c]:sltu t1, s4, sp<br> [0x80000190]:sw t1, 32(gp)<br>      |
|  10|[0x80003234]<br>0x00000001|- rs1 : x18<br> - rs2 : x4<br> - rd : x22<br> - rs2_val == 4294705151<br> - rs1_val == 8<br>                                                                                                                             |[0x800001a0]:sltu s6, s2, tp<br> [0x800001a4]:sw s6, 36(gp)<br>      |
|  11|[0x80003238]<br>0x00000001|- rs1 : x8<br> - rs2 : x27<br> - rd : x25<br> - rs2_val == 4294443007<br> - rs1_val == 16<br>                                                                                                                            |[0x800001b4]:sltu s9, fp, s11<br> [0x800001b8]:sw s9, 40(gp)<br>     |
|  12|[0x8000323c]<br>0x00000001|- rs1 : x28<br> - rs2 : x20<br> - rd : x11<br> - rs2_val == 4294967293<br> - rs1_val == 32<br>                                                                                                                           |[0x800001c4]:sltu a1, t3, s4<br> [0x800001c8]:sw a1, 44(gp)<br>      |
|  13|[0x80003240]<br>0x00000000|- rs1 : x26<br> - rs2 : x5<br> - rd : x0<br> - rs2_val == 32768<br> - rs1_val == 64<br>                                                                                                                                  |[0x800001d4]:sltu zero, s10, t0<br> [0x800001d8]:sw zero, 48(gp)<br> |
|  14|[0x80003244]<br>0x00000001|- rs1 : x5<br> - rs2 : x10<br> - rd : x26<br> - rs1_val == 128<br>                                                                                                                                                       |[0x800001e8]:sltu s10, t0, a0<br> [0x800001ec]:sw s10, 52(gp)<br>    |
|  15|[0x80003248]<br>0x00000001|- rs1 : x0<br> - rs2 : x1<br> - rd : x12<br> - rs2_val == 16384<br>                                                                                                                                                      |[0x800001f8]:sltu a2, zero, ra<br> [0x800001fc]:sw a2, 56(gp)<br>    |
|  16|[0x8000324c]<br>0x00000001|- rs1 : x13<br> - rs2 : x17<br> - rd : x19<br> - rs2_val == 524288<br> - rs1_val == 512<br>                                                                                                                              |[0x80000208]:sltu s3, a3, a7<br> [0x8000020c]:sw s3, 60(gp)<br>      |
|  17|[0x80003250]<br>0x00000001|- rs1 : x27<br> - rs2 : x8<br> - rd : x1<br> - rs2_val == 16777216<br> - rs1_val == 1024<br>                                                                                                                             |[0x80000218]:sltu ra, s11, fp<br> [0x8000021c]:sw ra, 64(gp)<br>     |
|  18|[0x80003254]<br>0x00000000|- rs1 : x1<br> - rs2 : x29<br> - rd : x16<br> - rs1_val == 2048<br>                                                                                                                                                      |[0x8000022c]:sltu a6, ra, t4<br> [0x80000230]:sw a6, 68(gp)<br>      |
|  19|[0x80003258]<br>0x00000000|- rs1 : x9<br> - rs2 : x19<br> - rd : x23<br> - rs2_val == 256<br> - rs1_val == 4096<br>                                                                                                                                 |[0x80000244]:sltu s7, s1, s3<br> [0x80000248]:sw s7, 0(ra)<br>       |
|  20|[0x8000325c]<br>0x00000001|- rs1 : x15<br> - rs2 : x18<br> - rd : x30<br> - rs2_val == 4294950911<br> - rs1_val == 8192<br>                                                                                                                         |[0x80000258]:sltu t5, a5, s2<br> [0x8000025c]:sw t5, 4(ra)<br>       |
|  21|[0x80003260]<br>0x00000001|- rs1 : x6<br> - rs2 : x13<br> - rd : x9<br> - rs2_val == 1431655765<br> - rs1_val == 16384<br>                                                                                                                          |[0x8000026c]:sltu s1, t1, a3<br> [0x80000270]:sw s1, 8(ra)<br>       |
|  22|[0x80003264]<br>0x00000001|- rs1 : x7<br> - rs2 : x28<br> - rd : x14<br> - rs2_val == 4261412863<br> - rs1_val == 32768<br>                                                                                                                         |[0x80000280]:sltu a4, t2, t3<br> [0x80000284]:sw a4, 12(ra)<br>      |
|  23|[0x80003268]<br>0x00000000|- rs1 : x4<br> - rs2 : x21<br> - rd : x8<br> - rs2_val == 64<br> - rs1_val == 65536<br>                                                                                                                                  |[0x80000290]:sltu fp, tp, s5<br> [0x80000294]:sw fp, 16(ra)<br>      |
|  24|[0x8000326c]<br>0x00000001|- rs1 : x29<br> - rs2 : x23<br> - rd : x10<br> - rs2_val == 1073741824<br> - rs1_val == 131072<br>                                                                                                                       |[0x800002a0]:sltu a0, t4, s7<br> [0x800002a4]:sw a0, 20(ra)<br>      |
|  25|[0x80003270]<br>0x00000001|- rs1 : x3<br> - rs2 : x16<br> - rd : x17<br> - rs2_val == 4294967167<br> - rs1_val == 262144<br>                                                                                                                        |[0x800002b0]:sltu a7, gp, a6<br> [0x800002b4]:sw a7, 24(ra)<br>      |
|  26|[0x80003274]<br>0x00000000|- rs1 : x22<br> - rs2 : x6<br> - rd : x29<br> - rs2_val == 4096<br> - rs1_val == 524288<br>                                                                                                                              |[0x800002c0]:sltu t4, s6, t1<br> [0x800002c4]:sw t4, 28(ra)<br>      |
|  27|[0x80003278]<br>0x00000000|- rs1 : x10<br> - rs2 : x26<br> - rd : x28<br> - rs2_val == 8<br> - rs1_val == 1048576<br>                                                                                                                               |[0x800002d0]:sltu t3, a0, s10<br> [0x800002d4]:sw t3, 32(ra)<br>     |
|  28|[0x8000327c]<br>0x00000001|- rs1 : x2<br> - rs2 : x31<br> - rd : x3<br> - rs2_val == 536870912<br> - rs1_val == 4194304<br>                                                                                                                         |[0x800002e0]:sltu gp, sp, t6<br> [0x800002e4]:sw gp, 36(ra)<br>      |
|  29|[0x80003280]<br>0x00000000|- rs1 : x11<br> - rs2 : x22<br> - rd : x7<br> - rs1_val == 8388608<br>                                                                                                                                                   |[0x800002f0]:sltu t2, a1, s6<br> [0x800002f4]:sw t2, 40(ra)<br>      |
|  30|[0x80003284]<br>0x00000000|- rs1 : x12<br> - rs2 : x3<br> - rd : x13<br> - rs1_val == 16777216<br>                                                                                                                                                  |[0x80000300]:sltu a3, a2, gp<br> [0x80000304]:sw a3, 44(ra)<br>      |
|  31|[0x80003288]<br>0x00000000|- rs1 : x31<br> - rs2 : x11<br> - rd : x2<br> - rs1_val == 33554432<br>                                                                                                                                                  |[0x80000310]:sltu sp, t6, a1<br> [0x80000314]:sw sp, 48(ra)<br>      |
|  32|[0x8000328c]<br>0x00000000|- rs1 : x16<br> - rs2 : x14<br> - rd : x31<br> - rs1_val == 67108864<br>                                                                                                                                                 |[0x80000320]:sltu t6, a6, a4<br> [0x80000324]:sw t6, 52(ra)<br>      |
|  33|[0x80003290]<br>0x00000001|- rs2_val == 4294901759<br> - rs1_val == 134217728<br>                                                                                                                                                                   |[0x80000334]:sltu a2, a0, a1<br> [0x80000338]:sw a2, 56(ra)<br>      |
|  34|[0x80003294]<br>0x00000001|- rs2_val == 4294967231<br> - rs1_val == 268435456<br>                                                                                                                                                                   |[0x80000344]:sltu a2, a0, a1<br> [0x80000348]:sw a2, 60(ra)<br>      |
|  35|[0x80003298]<br>0x00000000|- rs2_val == 4194304<br> - rs1_val == 536870912<br>                                                                                                                                                                      |[0x80000354]:sltu a2, a0, a1<br> [0x80000358]:sw a2, 64(ra)<br>      |
|  36|[0x8000329c]<br>0x00000001|- rs2_val == 4278190079<br> - rs1_val == 1073741824<br>                                                                                                                                                                  |[0x80000368]:sltu a2, a0, a1<br> [0x8000036c]:sw a2, 68(ra)<br>      |
|  37|[0x800032a0]<br>0x00000001|- rs2_val == 4294965247<br> - rs1_val == 2147483648<br>                                                                                                                                                                  |[0x8000037c]:sltu a2, a0, a1<br> [0x80000380]:sw a2, 72(ra)<br>      |
|  38|[0x800032a8]<br>0x00000000|- rs1_val == 4294967293<br>                                                                                                                                                                                              |[0x800003a0]:sltu a2, a0, a1<br> [0x800003a4]:sw a2, 80(ra)<br>      |
|  39|[0x800032ac]<br>0x00000000|- rs2_val == 134217728<br> - rs1_val == 4294967291<br>                                                                                                                                                                   |[0x800003b0]:sltu a2, a0, a1<br> [0x800003b4]:sw a2, 84(ra)<br>      |
|  40|[0x800032b0]<br>0x00000000|- rs1_val == 4294967287<br>                                                                                                                                                                                              |[0x800003c0]:sltu a2, a0, a1<br> [0x800003c4]:sw a2, 88(ra)<br>      |
|  41|[0x800032b4]<br>0x00000000|- rs1_val == 4294967279<br>                                                                                                                                                                                              |[0x800003d0]:sltu a2, a0, a1<br> [0x800003d4]:sw a2, 92(ra)<br>      |
|  42|[0x800032b8]<br>0x00000000|- rs2_val == 2147483648<br> - rs1_val == 4294967263<br>                                                                                                                                                                  |[0x800003e0]:sltu a2, a0, a1<br> [0x800003e4]:sw a2, 96(ra)<br>      |
|  43|[0x800032bc]<br>0x00000001|- rs1_val == 4294967231<br>                                                                                                                                                                                              |[0x800003f0]:sltu a2, a0, a1<br> [0x800003f4]:sw a2, 100(ra)<br>     |
|  44|[0x800032c0]<br>0x00000000|- rs2_val == 4286578687<br>                                                                                                                                                                                              |[0x80000404]:sltu a2, a0, a1<br> [0x80000408]:sw a2, 104(ra)<br>     |
|  45|[0x800032c4]<br>0x00000000|- rs2_val == 4227858431<br> - rs1_val == 4294950911<br>                                                                                                                                                                  |[0x8000041c]:sltu a2, a0, a1<br> [0x80000420]:sw a2, 108(ra)<br>     |
|  46|[0x800032c8]<br>0x00000000|- rs2_val == 4160749567<br>                                                                                                                                                                                              |[0x80000434]:sltu a2, a0, a1<br> [0x80000438]:sw a2, 112(ra)<br>     |
|  47|[0x800032cc]<br>0x00000001|- rs2_val == 4026531839<br>                                                                                                                                                                                              |[0x80000448]:sltu a2, a0, a1<br> [0x8000044c]:sw a2, 116(ra)<br>     |
|  48|[0x800032d0]<br>0x00000001|- rs1_val == 1<br> - rs2_val == 3758096383<br>                                                                                                                                                                           |[0x8000045c]:sltu a2, a0, a1<br> [0x80000460]:sw a2, 120(ra)<br>     |
|  49|[0x800032d4]<br>0x00000001|- rs2_val == 3221225471<br>                                                                                                                                                                                              |[0x80000470]:sltu a2, a0, a1<br> [0x80000474]:sw a2, 124(ra)<br>     |
|  50|[0x800032d8]<br>0x00000000|- rs2_val == 2147483647<br> - rs1_val == 4294836223<br>                                                                                                                                                                  |[0x80000488]:sltu a2, a0, a1<br> [0x8000048c]:sw a2, 128(ra)<br>     |
|  51|[0x800032dc]<br>0x00000000|- rs2_val == 2863311530<br>                                                                                                                                                                                              |[0x8000049c]:sltu a2, a0, a1<br> [0x800004a0]:sw a2, 132(ra)<br>     |
|  52|[0x800032e0]<br>0x00000000|- rs2_val == 128<br> - rs1_val == 4294967167<br>                                                                                                                                                                         |[0x800004ac]:sltu a2, a0, a1<br> [0x800004b0]:sw a2, 136(ra)<br>     |
|  53|[0x800032e4]<br>0x00000000|- rs1_val == 4294967039<br>                                                                                                                                                                                              |[0x800004c0]:sltu a2, a0, a1<br> [0x800004c4]:sw a2, 140(ra)<br>     |
|  54|[0x800032e8]<br>0x00000000|- rs1_val == 4294966783<br>                                                                                                                                                                                              |[0x800004d0]:sltu a2, a0, a1<br> [0x800004d4]:sw a2, 144(ra)<br>     |
|  55|[0x800032ec]<br>0x00000000|- rs1_val == 4294966271<br>                                                                                                                                                                                              |[0x800004e4]:sltu a2, a0, a1<br> [0x800004e8]:sw a2, 148(ra)<br>     |
|  56|[0x800032f0]<br>0x00000000|- rs2_val == 4294963199<br> - rs1_val == 4294965247<br>                                                                                                                                                                  |[0x800004fc]:sltu a2, a0, a1<br> [0x80000500]:sw a2, 152(ra)<br>     |
|  57|[0x800032f4]<br>0x00000000|- rs1_val == 4294963199<br>                                                                                                                                                                                              |[0x80000514]:sltu a2, a0, a1<br> [0x80000518]:sw a2, 156(ra)<br>     |
|  58|[0x800032f8]<br>0x00000001|- rs2_val == 4294966271<br> - rs1_val == 4294959103<br>                                                                                                                                                                  |[0x80000528]:sltu a2, a0, a1<br> [0x8000052c]:sw a2, 160(ra)<br>     |
|  59|[0x800032fc]<br>0x00000000|- rs2_val == 2<br> - rs1_val == 4294934527<br>                                                                                                                                                                           |[0x8000053c]:sltu a2, a0, a1<br> [0x80000540]:sw a2, 164(ra)<br>     |
|  60|[0x80003300]<br>0x00000000|- rs1_val == 4294901759<br>                                                                                                                                                                                              |[0x80000550]:sltu a2, a0, a1<br> [0x80000554]:sw a2, 168(ra)<br>     |
|  61|[0x80003304]<br>0x00000000|- rs1_val == 4294705151<br>                                                                                                                                                                                              |[0x80000564]:sltu a2, a0, a1<br> [0x80000568]:sw a2, 172(ra)<br>     |
|  62|[0x80003308]<br>0x00000000|- rs2_val == 65536<br> - rs1_val == 4294443007<br>                                                                                                                                                                       |[0x80000578]:sltu a2, a0, a1<br> [0x8000057c]:sw a2, 176(ra)<br>     |
|  63|[0x8000330c]<br>0x00000001|- rs2_val == 4294967039<br> - rs1_val == 4293918719<br>                                                                                                                                                                  |[0x8000058c]:sltu a2, a0, a1<br> [0x80000590]:sw a2, 180(ra)<br>     |
|  64|[0x80003310]<br>0x00000000|- rs1_val == 4292870143<br>                                                                                                                                                                                              |[0x800005a4]:sltu a2, a0, a1<br> [0x800005a8]:sw a2, 184(ra)<br>     |
|  65|[0x80003318]<br>0x00000000|- rs1_val == 4286578687<br>                                                                                                                                                                                              |[0x800005cc]:sltu a2, a0, a1<br> [0x800005d0]:sw a2, 192(ra)<br>     |
|  66|[0x8000331c]<br>0x00000000|- rs1_val == 4278190079<br>                                                                                                                                                                                              |[0x800005e0]:sltu a2, a0, a1<br> [0x800005e4]:sw a2, 196(ra)<br>     |
|  67|[0x80003320]<br>0x00000000|- rs1_val == 4261412863<br>                                                                                                                                                                                              |[0x800005f4]:sltu a2, a0, a1<br> [0x800005f8]:sw a2, 200(ra)<br>     |
|  68|[0x80003324]<br>0x00000001|- rs1_val == 4227858431<br>                                                                                                                                                                                              |[0x8000060c]:sltu a2, a0, a1<br> [0x80000610]:sw a2, 204(ra)<br>     |
|  69|[0x80003328]<br>0x00000000|- rs1_val == 4160749567<br>                                                                                                                                                                                              |[0x80000624]:sltu a2, a0, a1<br> [0x80000628]:sw a2, 208(ra)<br>     |
|  70|[0x8000332c]<br>0x00000000|- rs1_val == 4026531839<br>                                                                                                                                                                                              |[0x80000638]:sltu a2, a0, a1<br> [0x8000063c]:sw a2, 212(ra)<br>     |
|  71|[0x80003330]<br>0x00000001|- rs1_val == 3758096383<br>                                                                                                                                                                                              |[0x80000650]:sltu a2, a0, a1<br> [0x80000654]:sw a2, 216(ra)<br>     |
|  72|[0x80003334]<br>0x00000001|- rs1_val == 3221225471<br>                                                                                                                                                                                              |[0x80000668]:sltu a2, a0, a1<br> [0x8000066c]:sw a2, 220(ra)<br>     |
|  73|[0x80003338]<br>0x00000001|- rs1_val == 2147483647<br>                                                                                                                                                                                              |[0x80000680]:sltu a2, a0, a1<br> [0x80000684]:sw a2, 224(ra)<br>     |
|  74|[0x8000333c]<br>0x00000000|- rs1_val == 1431655765<br>                                                                                                                                                                                              |[0x80000694]:sltu a2, a0, a1<br> [0x80000698]:sw a2, 228(ra)<br>     |
|  75|[0x80003340]<br>0x00000000|- rs2_val == 512<br> - rs1_val == 2863311530<br>                                                                                                                                                                         |[0x800006a8]:sltu a2, a0, a1<br> [0x800006ac]:sw a2, 232(ra)<br>     |
|  76|[0x80003344]<br>0x00000000|- rs1_val == (2**(xlen)-1)<br> - rs2_val == 16<br>                                                                                                                                                                       |[0x800006b8]:sltu a2, a0, a1<br> [0x800006bc]:sw a2, 236(ra)<br>     |
|  77|[0x80003348]<br>0x00000000|- rs2_val == 32<br>                                                                                                                                                                                                      |[0x800006cc]:sltu a2, a0, a1<br> [0x800006d0]:sw a2, 240(ra)<br>     |
|  78|[0x8000334c]<br>0x00000000|- rs2_val == 2048<br>                                                                                                                                                                                                    |[0x800006e0]:sltu a2, a0, a1<br> [0x800006e4]:sw a2, 244(ra)<br>     |
|  79|[0x80003350]<br>0x00000001|- rs2_val == 8192<br>                                                                                                                                                                                                    |[0x800006f0]:sltu a2, a0, a1<br> [0x800006f4]:sw a2, 248(ra)<br>     |
|  80|[0x80003354]<br>0x00000000|- rs2_val == 131072<br>                                                                                                                                                                                                  |[0x80000704]:sltu a2, a0, a1<br> [0x80000708]:sw a2, 252(ra)<br>     |
|  81|[0x80003358]<br>0x00000000|- rs2_val == 262144<br>                                                                                                                                                                                                  |[0x80000714]:sltu a2, a0, a1<br> [0x80000718]:sw a2, 256(ra)<br>     |
|  82|[0x8000335c]<br>0x00000001|- rs2_val == 8388608<br>                                                                                                                                                                                                 |[0x80000724]:sltu a2, a0, a1<br> [0x80000728]:sw a2, 260(ra)<br>     |
|  83|[0x80003360]<br>0x00000000|- rs2_val == 33554432<br>                                                                                                                                                                                                |[0x80000738]:sltu a2, a0, a1<br> [0x8000073c]:sw a2, 264(ra)<br>     |
|  84|[0x80003364]<br>0x00000000|- rs2_val == 67108864<br>                                                                                                                                                                                                |[0x8000074c]:sltu a2, a0, a1<br> [0x80000750]:sw a2, 268(ra)<br>     |
|  85|[0x80003368]<br>0x00000000|- rs2_val == 268435456<br>                                                                                                                                                                                               |[0x80000760]:sltu a2, a0, a1<br> [0x80000764]:sw a2, 272(ra)<br>     |
|  86|[0x8000336c]<br>0x00000001|- rs2_val == 4292870143<br>                                                                                                                                                                                              |[0x80000774]:sltu a2, a0, a1<br> [0x80000778]:sw a2, 276(ra)<br>     |
|  87|[0x80003370]<br>0x00000001|- rs2_val == 4294967291<br>                                                                                                                                                                                              |[0x80000788]:sltu a2, a0, a1<br> [0x8000078c]:sw a2, 280(ra)<br>     |
|  88|[0x80003374]<br>0x00000001|- rs2_val == 4294967287<br>                                                                                                                                                                                              |[0x8000079c]:sltu a2, a0, a1<br> [0x800007a0]:sw a2, 284(ra)<br>     |
|  89|[0x80003378]<br>0x00000001|- rs2_val == 4294967263<br>                                                                                                                                                                                              |[0x800007ac]:sltu a2, a0, a1<br> [0x800007b0]:sw a2, 288(ra)<br>     |
|  90|[0x8000337c]<br>0x00000001|- rs2_val == 4294966783<br>                                                                                                                                                                                              |[0x800007bc]:sltu a2, a0, a1<br> [0x800007c0]:sw a2, 292(ra)<br>     |
|  91|[0x80003380]<br>0x00000001|- rs2_val == 1048576<br>                                                                                                                                                                                                 |[0x800007cc]:sltu a2, a0, a1<br> [0x800007d0]:sw a2, 296(ra)<br>     |
|  92|[0x80003384]<br>0x00000001|- rs2_val == 4294959103<br>                                                                                                                                                                                              |[0x800007e4]:sltu a2, a0, a1<br> [0x800007e8]:sw a2, 300(ra)<br>     |
|  93|[0x80003388]<br>0x00000001|- rs2_val == 4294934527<br>                                                                                                                                                                                              |[0x800007f8]:sltu a2, a0, a1<br> [0x800007fc]:sw a2, 304(ra)<br>     |
|  94|[0x8000338c]<br>0x00000000|- rs2_val == 4294836223<br>                                                                                                                                                                                              |[0x8000080c]:sltu a2, a0, a1<br> [0x80000810]:sw a2, 308(ra)<br>     |
|  95|[0x80003390]<br>0x00000001|- rs2_val == 4293918719<br>                                                                                                                                                                                              |[0x80000820]:sltu a2, a0, a1<br> [0x80000824]:sw a2, 312(ra)<br>     |
|  96|[0x80003394]<br>0x00000000|- rs2_val == 2097152<br>                                                                                                                                                                                                 |[0x80000830]:sltu a2, a0, a1<br> [0x80000834]:sw a2, 316(ra)<br>     |
|  97|[0x8000339c]<br>0x00000001|- rs1_val == 256<br>                                                                                                                                                                                                     |[0x80000850]:sltu a2, a0, a1<br> [0x80000854]:sw a2, 324(ra)<br>     |
