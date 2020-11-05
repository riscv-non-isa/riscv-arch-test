
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000870')]      |
| SIG_REGION                | [('0x80003204', '0x80003394', '100 words')]      |
| COV_LABELS                | sltu      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sltu-01.S/sltu-01.S    |
| Total Number of coverpoints| 241     |
| Total Coverpoints Hit     | 241      |
| Total Signature Updates   | 100      |
| STAT1                     | 99      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000850]:sltu a2, a0, a1
      [0x80000854]:sw a2, 272(ra)
 -- Signature Address: 0x8000338c Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - opcode : sltu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 0
      - rs2_val == 2048






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

|s.no|        signature         |                                                                                                        coverpoints                                                                                                        |                                code                                |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000000|- opcode : sltu<br> - rs1 : x0<br> - rs2 : x0<br> - rd : x30<br> - rs1 == rs2 != rd<br> - rs2_val == 0<br> - rs1_val == 0<br>                                                                                              |[0x8000010c]:sltu t5, zero, zero<br> [0x80000110]:sw t5, 0(gp)<br>  |
|   2|[0x80003208]<br>0x00000000|- rs1 : x4<br> - rs2 : x19<br> - rd : x19<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs1_val == (2**(xlen)-1)<br> - rs2_val == 4294965247<br> |[0x80000120]:sltu s3, tp, s3<br> [0x80000124]:sw s3, 4(gp)<br>      |
|   3|[0x8000320c]<br>0x00000001|- rs1 : x6<br> - rs2 : x20<br> - rd : x6<br> - rs1 == rd != rs2<br> - rs1_val == 1<br>                                                                                                                                     |[0x80000130]:sltu t1, t1, s4<br> [0x80000134]:sw t1, 8(gp)<br>      |
|   4|[0x80003210]<br>0x00000000|- rs1 : x17<br> - rs2 : x17<br> - rd : x17<br> - rs1 == rs2 == rd<br>                                                                                                                                                      |[0x80000144]:sltu a7, a7, a7<br> [0x80000148]:sw a7, 12(gp)<br>     |
|   5|[0x80003214]<br>0x00000001|- rs1 : x20<br> - rs2 : x27<br> - rd : x12<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == (2**(xlen)-1)<br> - rs1_val == 4294443007<br>                                                                    |[0x80000158]:sltu a2, s4, s11<br> [0x8000015c]:sw a2, 16(gp)<br>    |
|   6|[0x80003218]<br>0x00000000|- rs1 : x5<br> - rs2 : x22<br> - rd : x24<br> - rs2_val == 1<br> - rs1_val == 4294967293<br>                                                                                                                               |[0x80000168]:sltu s8, t0, s6<br> [0x8000016c]:sw s8, 20(gp)<br>     |
|   7|[0x8000321c]<br>0x00000000|- rs1 : x24<br> - rs2 : x18<br> - rd : x29<br> - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs2_val == 8<br> - rs1_val == 8<br>                                                                              |[0x80000178]:sltu t4, s8, s2<br> [0x8000017c]:sw t4, 24(gp)<br>     |
|   8|[0x80003220]<br>0x00000001|- rs1 : x21<br> - rs2 : x15<br> - rd : x2<br> - rs2_val == 134217728<br> - rs1_val == 2<br>                                                                                                                                |[0x80000188]:sltu sp, s5, a5<br> [0x8000018c]:sw sp, 28(gp)<br>     |
|   9|[0x80003224]<br>0x00000001|- rs1 : x13<br> - rs2 : x28<br> - rd : x10<br> - rs2_val == 4294934527<br> - rs1_val == 4<br>                                                                                                                              |[0x8000019c]:sltu a0, a3, t3<br> [0x800001a0]:sw a0, 32(gp)<br>     |
|  10|[0x80003228]<br>0x00000001|- rs1 : x27<br> - rs2 : x8<br> - rd : x1<br> - rs2_val == 4294959103<br> - rs1_val == 16<br>                                                                                                                               |[0x800001b0]:sltu ra, s11, fp<br> [0x800001b4]:sw ra, 36(gp)<br>    |
|  11|[0x8000322c]<br>0x00000001|- rs1 : x11<br> - rs2 : x1<br> - rd : x25<br> - rs2_val == 32768<br> - rs1_val == 32<br>                                                                                                                                   |[0x800001c0]:sltu s9, a1, ra<br> [0x800001c4]:sw s9, 40(gp)<br>     |
|  12|[0x80003230]<br>0x00000000|- rs1 : x8<br> - rs2 : x13<br> - rd : x31<br> - rs1_val == 64<br>                                                                                                                                                          |[0x800001d0]:sltu t6, fp, a3<br> [0x800001d4]:sw t6, 44(gp)<br>     |
|  13|[0x80003234]<br>0x00000001|- rs1 : x7<br> - rs2 : x31<br> - rd : x14<br> - rs2_val == 4286578687<br> - rs1_val == 128<br>                                                                                                                             |[0x800001e4]:sltu a4, t2, t6<br> [0x800001e8]:sw a4, 48(gp)<br>     |
|  14|[0x80003238]<br>0x00000001|- rs1 : x29<br> - rs2 : x30<br> - rd : x13<br> - rs2_val == 536870912<br> - rs1_val == 256<br>                                                                                                                             |[0x800001f4]:sltu a3, t4, t5<br> [0x800001f8]:sw a3, 52(gp)<br>     |
|  15|[0x8000323c]<br>0x00000001|- rs1 : x9<br> - rs2 : x4<br> - rd : x16<br> - rs2_val == 1024<br> - rs1_val == 512<br>                                                                                                                                    |[0x80000204]:sltu a6, s1, tp<br> [0x80000208]:sw a6, 56(gp)<br>     |
|  16|[0x80003240]<br>0x00000001|- rs1 : x31<br> - rs2 : x25<br> - rd : x11<br> - rs2_val == 2147483647<br> - rs1_val == 1024<br>                                                                                                                           |[0x80000220]:sltu a1, t6, s9<br> [0x80000224]:sw a1, 0(t1)<br>      |
|  17|[0x80003244]<br>0x00000000|- rs1 : x1<br> - rs2 : x11<br> - rd : x27<br> - rs1_val == 2048<br>                                                                                                                                                        |[0x80000234]:sltu s11, ra, a1<br> [0x80000238]:sw s11, 4(t1)<br>    |
|  18|[0x80003248]<br>0x00000001|- rs1 : x2<br> - rs2 : x23<br> - rd : x20<br> - rs2_val == 4294966271<br> - rs1_val == 4096<br>                                                                                                                            |[0x80000244]:sltu s4, sp, s7<br> [0x80000248]:sw s4, 8(t1)<br>      |
|  19|[0x8000324c]<br>0x00000001|- rs1 : x10<br> - rs2 : x16<br> - rd : x15<br> - rs2_val == 1048576<br> - rs1_val == 8192<br>                                                                                                                              |[0x80000254]:sltu a5, a0, a6<br> [0x80000258]:sw a5, 12(t1)<br>     |
|  20|[0x80003250]<br>0x00000001|- rs1 : x12<br> - rs2 : x9<br> - rd : x28<br> - rs2_val == 16777216<br> - rs1_val == 16384<br>                                                                                                                             |[0x80000264]:sltu t3, a2, s1<br> [0x80000268]:sw t3, 16(t1)<br>     |
|  21|[0x80003254]<br>0x00000001|- rs1 : x16<br> - rs2 : x10<br> - rd : x7<br> - rs2_val == 4294967291<br> - rs1_val == 32768<br>                                                                                                                           |[0x80000274]:sltu t2, a6, a0<br> [0x80000278]:sw t2, 20(t1)<br>     |
|  22|[0x80003258]<br>0x00000001|- rs1 : x18<br> - rs2 : x29<br> - rd : x26<br> - rs2_val == 4160749567<br> - rs1_val == 65536<br>                                                                                                                          |[0x80000288]:sltu s10, s2, t4<br> [0x8000028c]:sw s10, 24(t1)<br>   |
|  23|[0x8000325c]<br>0x00000001|- rs1 : x22<br> - rs2 : x24<br> - rd : x4<br> - rs1_val == 131072<br>                                                                                                                                                      |[0x8000029c]:sltu tp, s6, s8<br> [0x800002a0]:sw tp, 28(t1)<br>     |
|  24|[0x80003260]<br>0x00000001|- rs1 : x26<br> - rs2 : x14<br> - rd : x22<br> - rs2_val == 4294443007<br> - rs1_val == 262144<br>                                                                                                                         |[0x800002b0]:sltu s6, s10, a4<br> [0x800002b4]:sw s6, 32(t1)<br>    |
|  25|[0x80003264]<br>0x00000000|- rs1 : x14<br> - rs2 : x26<br> - rd : x9<br> - rs1_val == 524288<br>                                                                                                                                                      |[0x800002c0]:sltu s1, a4, s10<br> [0x800002c4]:sw s1, 36(t1)<br>    |
|  26|[0x80003268]<br>0x00000000|- rs1 : x19<br> - rs2 : x7<br> - rd : x0<br> - rs2_val == 4294967294<br> - rs1_val == 1048576<br>                                                                                                                          |[0x800002d0]:sltu zero, s3, t2<br> [0x800002d4]:sw zero, 40(t1)<br> |
|  27|[0x8000326c]<br>0x00000001|- rs1 : x23<br> - rs2 : x2<br> - rd : x8<br> - rs2_val == 4292870143<br> - rs1_val == 2097152<br>                                                                                                                          |[0x800002e4]:sltu fp, s7, sp<br> [0x800002e8]:sw fp, 44(t1)<br>     |
|  28|[0x80003270]<br>0x00000001|- rs1 : x28<br> - rs2 : x12<br> - rd : x5<br> - rs1_val == 4194304<br>                                                                                                                                                     |[0x800002f4]:sltu t0, t3, a2<br> [0x800002f8]:sw t0, 48(t1)<br>     |
|  29|[0x80003274]<br>0x00000001|- rs1 : x30<br> - rs2 : x21<br> - rd : x18<br> - rs2_val == 3221225471<br> - rs1_val == 8388608<br>                                                                                                                        |[0x80000308]:sltu s2, t5, s5<br> [0x8000030c]:sw s2, 52(t1)<br>     |
|  30|[0x80003278]<br>0x00000001|- rs1 : x15<br> - rs2 : x5<br> - rd : x3<br> - rs2_val == 4278190079<br> - rs1_val == 16777216<br>                                                                                                                         |[0x8000031c]:sltu gp, a5, t0<br> [0x80000320]:sw gp, 56(t1)<br>     |
|  31|[0x8000327c]<br>0x00000001|- rs1 : x3<br> - rs2 : x6<br> - rd : x23<br> - rs1_val == 33554432<br>                                                                                                                                                     |[0x80000334]:sltu s7, gp, t1<br> [0x80000338]:sw s7, 0(ra)<br>      |
|  32|[0x80003280]<br>0x00000000|- rs1 : x25<br> - rs2 : x3<br> - rd : x21<br> - rs2_val == 128<br> - rs1_val == 67108864<br>                                                                                                                               |[0x80000344]:sltu s5, s9, gp<br> [0x80000348]:sw s5, 4(ra)<br>      |
|  33|[0x80003284]<br>0x00000001|- rs2_val == 2147483648<br> - rs1_val == 134217728<br>                                                                                                                                                                     |[0x80000354]:sltu a2, a0, a1<br> [0x80000358]:sw a2, 8(ra)<br>      |
|  34|[0x80003288]<br>0x00000001|- rs1_val == 268435456<br>                                                                                                                                                                                                 |[0x80000364]:sltu a2, a0, a1<br> [0x80000368]:sw a2, 12(ra)<br>     |
|  35|[0x8000328c]<br>0x00000001|- rs2_val == 1431655765<br> - rs1_val == 536870912<br>                                                                                                                                                                     |[0x80000378]:sltu a2, a0, a1<br> [0x8000037c]:sw a2, 16(ra)<br>     |
|  36|[0x80003290]<br>0x00000000|- rs2_val == 32<br> - rs1_val == 1073741824<br>                                                                                                                                                                            |[0x80000388]:sltu a2, a0, a1<br> [0x8000038c]:sw a2, 20(ra)<br>     |
|  37|[0x80003294]<br>0x00000000|- rs1_val == 2147483648<br>                                                                                                                                                                                                |[0x80000398]:sltu a2, a0, a1<br> [0x8000039c]:sw a2, 24(ra)<br>     |
|  38|[0x80003298]<br>0x00000000|- rs1_val == 4294967294<br>                                                                                                                                                                                                |[0x800003a8]:sltu a2, a0, a1<br> [0x800003ac]:sw a2, 28(ra)<br>     |
|  39|[0x8000329c]<br>0x00000000|- rs2_val == 256<br> - rs1_val == 4294967291<br>                                                                                                                                                                           |[0x800003b8]:sltu a2, a0, a1<br> [0x800003bc]:sw a2, 32(ra)<br>     |
|  40|[0x800032a0]<br>0x00000000|- rs1_val == 4294967287<br>                                                                                                                                                                                                |[0x800003c8]:sltu a2, a0, a1<br> [0x800003cc]:sw a2, 36(ra)<br>     |
|  41|[0x800032a4]<br>0x00000001|- rs1_val == 4294967279<br>                                                                                                                                                                                                |[0x800003d8]:sltu a2, a0, a1<br> [0x800003dc]:sw a2, 40(ra)<br>     |
|  42|[0x800032a8]<br>0x00000000|- rs1_val == 4294967263<br>                                                                                                                                                                                                |[0x800003e8]:sltu a2, a0, a1<br> [0x800003ec]:sw a2, 44(ra)<br>     |
|  43|[0x800032ac]<br>0x00000000|- rs2_val == 4096<br> - rs1_val == 4294967231<br>                                                                                                                                                                          |[0x800003f8]:sltu a2, a0, a1<br> [0x800003fc]:sw a2, 48(ra)<br>     |
|  44|[0x800032b0]<br>0x00000000|- rs2_val == 33554432<br> - rs1_val == 4294967167<br>                                                                                                                                                                      |[0x80000408]:sltu a2, a0, a1<br> [0x8000040c]:sw a2, 52(ra)<br>     |
|  45|[0x800032b4]<br>0x00000001|- rs2_val == 4261412863<br>                                                                                                                                                                                                |[0x8000041c]:sltu a2, a0, a1<br> [0x80000420]:sw a2, 56(ra)<br>     |
|  46|[0x800032b8]<br>0x00000000|- rs2_val == 4227858431<br> - rs1_val == 4294966783<br>                                                                                                                                                                    |[0x80000430]:sltu a2, a0, a1<br> [0x80000434]:sw a2, 60(ra)<br>     |
|  47|[0x800032bc]<br>0x00000001|- rs2_val == 4026531839<br>                                                                                                                                                                                                |[0x80000444]:sltu a2, a0, a1<br> [0x80000448]:sw a2, 64(ra)<br>     |
|  48|[0x800032c0]<br>0x00000001|- rs2_val == 3758096383<br>                                                                                                                                                                                                |[0x8000045c]:sltu a2, a0, a1<br> [0x80000460]:sw a2, 68(ra)<br>     |
|  49|[0x800032c4]<br>0x00000000|- rs2_val == 2863311530<br> - rs1_val == 4160749567<br>                                                                                                                                                                    |[0x80000474]:sltu a2, a0, a1<br> [0x80000478]:sw a2, 72(ra)<br>     |
|  50|[0x800032c8]<br>0x00000000|- rs1_val == 4294967039<br>                                                                                                                                                                                                |[0x80000488]:sltu a2, a0, a1<br> [0x8000048c]:sw a2, 76(ra)<br>     |
|  51|[0x800032cc]<br>0x00000001|- rs2_val == 4294967231<br> - rs1_val == 4294966271<br>                                                                                                                                                                    |[0x80000498]:sltu a2, a0, a1<br> [0x8000049c]:sw a2, 80(ra)<br>     |
|  52|[0x800032d0]<br>0x00000001|- rs1_val == 4294965247<br>                                                                                                                                                                                                |[0x800004ac]:sltu a2, a0, a1<br> [0x800004b0]:sw a2, 84(ra)<br>     |
|  53|[0x800032d4]<br>0x00000000|- rs2_val == 2048<br> - rs1_val == 4294963199<br>                                                                                                                                                                          |[0x800004c4]:sltu a2, a0, a1<br> [0x800004c8]:sw a2, 88(ra)<br>     |
|  54|[0x800032d8]<br>0x00000001|- rs1_val == 4294959103<br>                                                                                                                                                                                                |[0x800004d8]:sltu a2, a0, a1<br> [0x800004dc]:sw a2, 92(ra)<br>     |
|  55|[0x800032dc]<br>0x00000000|- rs2_val == 4294950911<br> - rs1_val == 4294950911<br>                                                                                                                                                                    |[0x800004f0]:sltu a2, a0, a1<br> [0x800004f4]:sw a2, 96(ra)<br>     |
|  56|[0x800032e0]<br>0x00000000|- rs2_val == 8388608<br> - rs1_val == 4294934527<br>                                                                                                                                                                       |[0x80000504]:sltu a2, a0, a1<br> [0x80000508]:sw a2, 100(ra)<br>    |
|  57|[0x800032e4]<br>0x00000000|- rs1_val == 4294901759<br>                                                                                                                                                                                                |[0x80000518]:sltu a2, a0, a1<br> [0x8000051c]:sw a2, 104(ra)<br>    |
|  58|[0x800032e8]<br>0x00000000|- rs1_val == 4294836223<br>                                                                                                                                                                                                |[0x8000052c]:sltu a2, a0, a1<br> [0x80000530]:sw a2, 108(ra)<br>    |
|  59|[0x800032ec]<br>0x00000000|- rs1_val == 4294705151<br>                                                                                                                                                                                                |[0x80000544]:sltu a2, a0, a1<br> [0x80000548]:sw a2, 112(ra)<br>    |
|  60|[0x800032f0]<br>0x00000000|- rs1_val == 4293918719<br>                                                                                                                                                                                                |[0x80000558]:sltu a2, a0, a1<br> [0x8000055c]:sw a2, 116(ra)<br>    |
|  61|[0x800032f4]<br>0x00000000|- rs2_val == 16<br> - rs1_val == 4292870143<br>                                                                                                                                                                            |[0x8000056c]:sltu a2, a0, a1<br> [0x80000570]:sw a2, 120(ra)<br>    |
|  62|[0x800032f8]<br>0x00000000|- rs1_val == 4290772991<br>                                                                                                                                                                                                |[0x80000580]:sltu a2, a0, a1<br> [0x80000584]:sw a2, 124(ra)<br>    |
|  63|[0x800032fc]<br>0x00000001|- rs1_val == 4286578687<br>                                                                                                                                                                                                |[0x80000598]:sltu a2, a0, a1<br> [0x8000059c]:sw a2, 128(ra)<br>    |
|  64|[0x80003300]<br>0x00000000|- rs1_val == 4261412863<br>                                                                                                                                                                                                |[0x800005ac]:sltu a2, a0, a1<br> [0x800005b0]:sw a2, 132(ra)<br>    |
|  65|[0x80003304]<br>0x00000000|- rs1_val == 4227858431<br>                                                                                                                                                                                                |[0x800005c4]:sltu a2, a0, a1<br> [0x800005c8]:sw a2, 136(ra)<br>    |
|  66|[0x80003308]<br>0x00000000|- rs1_val == 4026531839<br>                                                                                                                                                                                                |[0x800005dc]:sltu a2, a0, a1<br> [0x800005e0]:sw a2, 140(ra)<br>    |
|  67|[0x8000330c]<br>0x00000001|- rs1_val == 3758096383<br>                                                                                                                                                                                                |[0x800005f4]:sltu a2, a0, a1<br> [0x800005f8]:sw a2, 144(ra)<br>    |
|  68|[0x80003310]<br>0x00000000|- rs1_val == 3221225471<br>                                                                                                                                                                                                |[0x80000608]:sltu a2, a0, a1<br> [0x8000060c]:sw a2, 148(ra)<br>    |
|  69|[0x80003314]<br>0x00000000|- rs1_val == 2147483647<br>                                                                                                                                                                                                |[0x8000061c]:sltu a2, a0, a1<br> [0x80000620]:sw a2, 152(ra)<br>    |
|  70|[0x80003318]<br>0x00000000|- rs1_val == 1431655765<br>                                                                                                                                                                                                |[0x80000630]:sltu a2, a0, a1<br> [0x80000634]:sw a2, 156(ra)<br>    |
|  71|[0x8000331c]<br>0x00000000|- rs2_val == 4194304<br> - rs1_val == 2863311530<br>                                                                                                                                                                       |[0x80000644]:sltu a2, a0, a1<br> [0x80000648]:sw a2, 160(ra)<br>    |
|  72|[0x80003320]<br>0x00000000|- rs2_val == 2<br>                                                                                                                                                                                                         |[0x80000658]:sltu a2, a0, a1<br> [0x8000065c]:sw a2, 164(ra)<br>    |
|  73|[0x80003324]<br>0x00000000|- rs2_val == 4<br>                                                                                                                                                                                                         |[0x8000066c]:sltu a2, a0, a1<br> [0x80000670]:sw a2, 168(ra)<br>    |
|  74|[0x80003328]<br>0x00000000|- rs2_val == 64<br>                                                                                                                                                                                                        |[0x8000067c]:sltu a2, a0, a1<br> [0x80000680]:sw a2, 172(ra)<br>    |
|  75|[0x8000332c]<br>0x00000001|- rs2_val == 512<br>                                                                                                                                                                                                       |[0x8000068c]:sltu a2, a0, a1<br> [0x80000690]:sw a2, 176(ra)<br>    |
|  76|[0x80003330]<br>0x00000000|- rs2_val == 8192<br>                                                                                                                                                                                                      |[0x8000069c]:sltu a2, a0, a1<br> [0x800006a0]:sw a2, 180(ra)<br>    |
|  77|[0x80003334]<br>0x00000000|- rs2_val == 16384<br>                                                                                                                                                                                                     |[0x800006b0]:sltu a2, a0, a1<br> [0x800006b4]:sw a2, 184(ra)<br>    |
|  78|[0x80003338]<br>0x00000000|- rs2_val == 65536<br>                                                                                                                                                                                                     |[0x800006c4]:sltu a2, a0, a1<br> [0x800006c8]:sw a2, 188(ra)<br>    |
|  79|[0x8000333c]<br>0x00000000|- rs2_val == 131072<br>                                                                                                                                                                                                    |[0x800006d8]:sltu a2, a0, a1<br> [0x800006dc]:sw a2, 192(ra)<br>    |
|  80|[0x80003340]<br>0x00000000|- rs2_val == 262144<br>                                                                                                                                                                                                    |[0x800006e8]:sltu a2, a0, a1<br> [0x800006ec]:sw a2, 196(ra)<br>    |
|  81|[0x80003344]<br>0x00000000|- rs2_val == 524288<br>                                                                                                                                                                                                    |[0x800006fc]:sltu a2, a0, a1<br> [0x80000700]:sw a2, 200(ra)<br>    |
|  82|[0x80003348]<br>0x00000001|- rs2_val == 2097152<br>                                                                                                                                                                                                   |[0x8000070c]:sltu a2, a0, a1<br> [0x80000710]:sw a2, 204(ra)<br>    |
|  83|[0x8000334c]<br>0x00000001|- rs2_val == 67108864<br>                                                                                                                                                                                                  |[0x8000071c]:sltu a2, a0, a1<br> [0x80000720]:sw a2, 208(ra)<br>    |
|  84|[0x80003350]<br>0x00000000|- rs2_val == 268435456<br>                                                                                                                                                                                                 |[0x80000730]:sltu a2, a0, a1<br> [0x80000734]:sw a2, 212(ra)<br>    |
|  85|[0x80003354]<br>0x00000001|- rs2_val == 1073741824<br>                                                                                                                                                                                                |[0x80000740]:sltu a2, a0, a1<br> [0x80000744]:sw a2, 216(ra)<br>    |
|  86|[0x80003358]<br>0x00000001|- rs2_val == 4294967293<br>                                                                                                                                                                                                |[0x80000750]:sltu a2, a0, a1<br> [0x80000754]:sw a2, 220(ra)<br>    |
|  87|[0x8000335c]<br>0x00000001|- rs2_val == 4294967287<br>                                                                                                                                                                                                |[0x80000760]:sltu a2, a0, a1<br> [0x80000764]:sw a2, 224(ra)<br>    |
|  88|[0x80003360]<br>0x00000001|- rs2_val == 4294967279<br>                                                                                                                                                                                                |[0x80000774]:sltu a2, a0, a1<br> [0x80000778]:sw a2, 228(ra)<br>    |
|  89|[0x80003364]<br>0x00000000|- rs2_val == 4294967263<br>                                                                                                                                                                                                |[0x80000784]:sltu a2, a0, a1<br> [0x80000788]:sw a2, 232(ra)<br>    |
|  90|[0x80003368]<br>0x00000001|- rs2_val == 4294967167<br>                                                                                                                                                                                                |[0x80000794]:sltu a2, a0, a1<br> [0x80000798]:sw a2, 236(ra)<br>    |
|  91|[0x8000336c]<br>0x00000000|- rs2_val == 4294967039<br>                                                                                                                                                                                                |[0x800007a4]:sltu a2, a0, a1<br> [0x800007a8]:sw a2, 240(ra)<br>    |
|  92|[0x80003370]<br>0x00000001|- rs2_val == 4294966783<br>                                                                                                                                                                                                |[0x800007b8]:sltu a2, a0, a1<br> [0x800007bc]:sw a2, 244(ra)<br>    |
|  93|[0x80003374]<br>0x00000000|- rs2_val == 4294963199<br>                                                                                                                                                                                                |[0x800007cc]:sltu a2, a0, a1<br> [0x800007d0]:sw a2, 248(ra)<br>    |
|  94|[0x80003378]<br>0x00000000|- rs2_val == 4294901759<br>                                                                                                                                                                                                |[0x800007e4]:sltu a2, a0, a1<br> [0x800007e8]:sw a2, 252(ra)<br>    |
|  95|[0x8000337c]<br>0x00000001|- rs2_val == 4294836223<br>                                                                                                                                                                                                |[0x800007fc]:sltu a2, a0, a1<br> [0x80000800]:sw a2, 256(ra)<br>    |
|  96|[0x80003380]<br>0x00000001|- rs2_val == 4294705151<br>                                                                                                                                                                                                |[0x80000810]:sltu a2, a0, a1<br> [0x80000814]:sw a2, 260(ra)<br>    |
|  97|[0x80003384]<br>0x00000001|- rs2_val == 4293918719<br>                                                                                                                                                                                                |[0x80000828]:sltu a2, a0, a1<br> [0x8000082c]:sw a2, 264(ra)<br>    |
|  98|[0x80003388]<br>0x00000001|- rs2_val == 4290772991<br>                                                                                                                                                                                                |[0x8000083c]:sltu a2, a0, a1<br> [0x80000840]:sw a2, 268(ra)<br>    |
|  99|[0x80003390]<br>0x00000000|- rs1_val == 4278190079<br>                                                                                                                                                                                                |[0x80000864]:sltu a2, a0, a1<br> [0x80000868]:sw a2, 276(ra)<br>    |
