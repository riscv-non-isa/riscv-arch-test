
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800008b0')]      |
| SIG_REGION                | [('0x80003204', '0x800033b0', '107 words')]      |
| COV_LABELS                | sltu      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sltu-01.S/sltu-01.S    |
| Total Number of coverpoints| 241     |
| Total Coverpoints Hit     | 241      |
| Total Signature Updates   | 104      |
| STAT1                     | 102      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000087c]:sltu a2, a0, a1
      [0x80000880]:sw a2, 328(gp)
 -- Signature Address: 0x800033a4 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - opcode : sltu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 0
      - rs2_val == 16




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008a4]:sltu a2, a0, a1
      [0x800008a8]:sw a2, 336(gp)
 -- Signature Address: 0x800033ac Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - opcode : sltu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs2_val == 4026531839
      - rs1_val == 128






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

|s.no|        signature         |                                                                                                         coverpoints                                                                                                         |                                code                                |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000000|- opcode : sltu<br> - rs1 : x25<br> - rs2 : x25<br> - rd : x21<br> - rs1 == rs2 != rd<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs2_val == 16<br> - rs1_val == 16<br> |[0x80000108]:sltu s5, s9, s9<br> [0x8000010c]:sw s5, 0(s1)<br>      |
|   2|[0x80003214]<br>0x00000000|- rs1 : x2<br> - rs2 : x27<br> - rd : x27<br> - rs2 == rd != rs1<br> - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs1_val == (2**(xlen)-1)<br> - rs2_val == 4261412863<br>                                     |[0x8000011c]:sltu s11, sp, s11<br> [0x80000120]:sw s11, 4(s1)<br>   |
|   3|[0x80003218]<br>0x00000001|- rs1 : x11<br> - rs2 : x18<br> - rd : x11<br> - rs1 == rd != rs2<br> - rs1_val == 1<br>                                                                                                                                     |[0x8000012c]:sltu a1, a1, s2<br> [0x80000130]:sw a1, 8(s1)<br>      |
|   4|[0x8000321c]<br>0x00000000|- rs1 : x6<br> - rs2 : x4<br> - rd : x29<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 0<br> - rs1_val == 4026531839<br>                                                                                    |[0x80000140]:sltu t4, t1, tp<br> [0x80000144]:sw t4, 12(s1)<br>     |
|   5|[0x80003220]<br>0x00000000|- rs1 : x8<br> - rs2 : x8<br> - rd : x8<br> - rs1 == rs2 == rd<br> - rs2_val == (2**(xlen)-1)<br>                                                                                                                            |[0x80000150]:sltu fp, fp, fp<br> [0x80000154]:sw fp, 16(s1)<br>     |
|   6|[0x80003224]<br>0x00000000|- rs1 : x1<br> - rs2 : x21<br> - rd : x2<br> - rs2_val == 1<br> - rs1_val == 4278190079<br>                                                                                                                                  |[0x80000164]:sltu sp, ra, s5<br> [0x80000168]:sw sp, 20(s1)<br>     |
|   7|[0x80003228]<br>0x00000000|- rs1 : x7<br> - rs2 : x20<br> - rd : x6<br>                                                                                                                                                                                 |[0x80000174]:sltu t1, t2, s4<br> [0x80000178]:sw t1, 24(s1)<br>     |
|   8|[0x8000322c]<br>0x00000001|- rs1 : x0<br> - rs2 : x3<br> - rd : x30<br> - rs1_val == 0<br> - rs2_val == 1431655765<br>                                                                                                                                  |[0x80000188]:sltu t5, zero, gp<br> [0x8000018c]:sw t5, 28(s1)<br>   |
|   9|[0x80003230]<br>0x00000001|- rs1 : x26<br> - rs2 : x22<br> - rd : x10<br> - rs1_val == 4<br>                                                                                                                                                            |[0x80000198]:sltu a0, s10, s6<br> [0x8000019c]:sw a0, 32(s1)<br>    |
|  10|[0x80003234]<br>0x00000001|- rs1 : x30<br> - rs2 : x19<br> - rd : x7<br> - rs1_val == 8<br>                                                                                                                                                             |[0x800001a8]:sltu t2, t5, s3<br> [0x800001ac]:sw t2, 36(s1)<br>     |
|  11|[0x80003238]<br>0x00000001|- rs1 : x21<br> - rs2 : x29<br> - rd : x19<br> - rs2_val == 4292870143<br>                                                                                                                                                   |[0x800001bc]:sltu s3, s5, t4<br> [0x800001c0]:sw s3, 40(s1)<br>     |
|  12|[0x8000323c]<br>0x00000001|- rs1 : x31<br> - rs2 : x7<br> - rd : x15<br> - rs2_val == 65536<br> - rs1_val == 32<br>                                                                                                                                     |[0x800001cc]:sltu a5, t6, t2<br> [0x800001d0]:sw a5, 44(s1)<br>     |
|  13|[0x80003240]<br>0x00000001|- rs1 : x3<br> - rs2 : x17<br> - rd : x23<br> - rs2_val == 4096<br> - rs1_val == 64<br>                                                                                                                                      |[0x800001dc]:sltu s7, gp, a7<br> [0x800001e0]:sw s7, 48(s1)<br>     |
|  14|[0x80003244]<br>0x00000000|- rs1 : x10<br> - rs2 : x6<br> - rd : x0<br> - rs2_val == 4026531839<br> - rs1_val == 128<br>                                                                                                                                |[0x800001f0]:sltu zero, a0, t1<br> [0x800001f4]:sw zero, 52(s1)<br> |
|  15|[0x80003248]<br>0x00000001|- rs1 : x15<br> - rs2 : x1<br> - rd : x25<br> - rs2_val == 4294967263<br> - rs1_val == 256<br>                                                                                                                               |[0x80000200]:sltu s9, a5, ra<br> [0x80000204]:sw s9, 56(s1)<br>     |
|  16|[0x8000324c]<br>0x00000001|- rs1 : x29<br> - rs2 : x31<br> - rd : x28<br> - rs2_val == 131072<br> - rs1_val == 512<br>                                                                                                                                  |[0x80000210]:sltu t3, t4, t6<br> [0x80000214]:sw t3, 60(s1)<br>     |
|  17|[0x80003250]<br>0x00000001|- rs1 : x28<br> - rs2 : x12<br> - rd : x4<br> - rs1_val == 1024<br>                                                                                                                                                          |[0x80000224]:sltu tp, t3, a2<br> [0x80000228]:sw tp, 64(s1)<br>     |
|  18|[0x80003254]<br>0x00000001|- rs1 : x13<br> - rs2 : x28<br> - rd : x20<br> - rs1_val == 2048<br>                                                                                                                                                         |[0x8000023c]:sltu s4, a3, t3<br> [0x80000240]:sw s4, 68(s1)<br>     |
|  19|[0x80003258]<br>0x00000001|- rs1 : x16<br> - rs2 : x5<br> - rd : x3<br> - rs2_val == 4278190079<br> - rs1_val == 4096<br>                                                                                                                               |[0x80000250]:sltu gp, a6, t0<br> [0x80000254]:sw gp, 72(s1)<br>     |
|  20|[0x8000325c]<br>0x00000001|- rs1 : x22<br> - rs2 : x16<br> - rd : x17<br> - rs2_val == 2147483648<br> - rs1_val == 8192<br>                                                                                                                             |[0x80000268]:sltu a7, s6, a6<br> [0x8000026c]:sw a7, 0(gp)<br>      |
|  21|[0x80003260]<br>0x00000001|- rs1 : x19<br> - rs2 : x26<br> - rd : x31<br> - rs2_val == 4294967279<br> - rs1_val == 16384<br>                                                                                                                            |[0x80000278]:sltu t6, s3, s10<br> [0x8000027c]:sw t6, 4(gp)<br>     |
|  22|[0x80003264]<br>0x00000001|- rs1 : x4<br> - rs2 : x11<br> - rd : x22<br> - rs2_val == 4294967231<br> - rs1_val == 32768<br>                                                                                                                             |[0x80000288]:sltu s6, tp, a1<br> [0x8000028c]:sw s6, 8(gp)<br>      |
|  23|[0x80003268]<br>0x00000000|- rs1 : x5<br> - rs2 : x24<br> - rd : x16<br> - rs1_val == 65536<br>                                                                                                                                                         |[0x80000298]:sltu a6, t0, s8<br> [0x8000029c]:sw a6, 12(gp)<br>     |
|  24|[0x8000326c]<br>0x00000001|- rs1 : x18<br> - rs2 : x23<br> - rd : x26<br> - rs2_val == 4294966783<br> - rs1_val == 131072<br>                                                                                                                           |[0x800002a8]:sltu s10, s2, s7<br> [0x800002ac]:sw s10, 16(gp)<br>   |
|  25|[0x80003270]<br>0x00000000|- rs1 : x9<br> - rs2 : x10<br> - rd : x18<br> - rs1_val == 262144<br>                                                                                                                                                        |[0x800002b8]:sltu s2, s1, a0<br> [0x800002bc]:sw s2, 20(gp)<br>     |
|  26|[0x80003274]<br>0x00000000|- rs1 : x20<br> - rs2 : x30<br> - rd : x14<br> - rs2_val == 64<br> - rs1_val == 524288<br>                                                                                                                                   |[0x800002c8]:sltu a4, s4, t5<br> [0x800002cc]:sw a4, 24(gp)<br>     |
|  27|[0x80003278]<br>0x00000001|- rs1 : x12<br> - rs2 : x14<br> - rd : x24<br> - rs2_val == 3221225471<br> - rs1_val == 1048576<br>                                                                                                                          |[0x800002dc]:sltu s8, a2, a4<br> [0x800002e0]:sw s8, 28(gp)<br>     |
|  28|[0x8000327c]<br>0x00000001|- rs1 : x23<br> - rs2 : x2<br> - rd : x1<br> - rs1_val == 2097152<br>                                                                                                                                                        |[0x800002ec]:sltu ra, s7, sp<br> [0x800002f0]:sw ra, 32(gp)<br>     |
|  29|[0x80003280]<br>0x00000000|- rs1 : x27<br> - rs2 : x9<br> - rd : x13<br> - rs2_val == 256<br> - rs1_val == 4194304<br>                                                                                                                                  |[0x800002fc]:sltu a3, s11, s1<br> [0x80000300]:sw a3, 36(gp)<br>    |
|  30|[0x80003284]<br>0x00000000|- rs1 : x14<br> - rs2 : x0<br> - rd : x9<br> - rs1_val == 8388608<br>                                                                                                                                                        |[0x80000310]:sltu s1, a4, zero<br> [0x80000314]:sw s1, 40(gp)<br>   |
|  31|[0x80003288]<br>0x00000000|- rs1 : x24<br> - rs2 : x13<br> - rd : x12<br> - rs1_val == 16777216<br>                                                                                                                                                     |[0x80000320]:sltu a2, s8, a3<br> [0x80000324]:sw a2, 44(gp)<br>     |
|  32|[0x8000328c]<br>0x00000000|- rs1 : x17<br> - rs2 : x15<br> - rd : x5<br> - rs1_val == 33554432<br>                                                                                                                                                      |[0x80000330]:sltu t0, a7, a5<br> [0x80000334]:sw t0, 48(gp)<br>     |
|  33|[0x80003290]<br>0x00000001|- rs2_val == 4294959103<br> - rs1_val == 67108864<br>                                                                                                                                                                        |[0x80000344]:sltu a2, a0, a1<br> [0x80000348]:sw a2, 52(gp)<br>     |
|  34|[0x80003294]<br>0x00000000|- rs2_val == 262144<br> - rs1_val == 134217728<br>                                                                                                                                                                           |[0x80000354]:sltu a2, a0, a1<br> [0x80000358]:sw a2, 56(gp)<br>     |
|  35|[0x80003298]<br>0x00000000|- rs1_val == 268435456<br>                                                                                                                                                                                                   |[0x80000364]:sltu a2, a0, a1<br> [0x80000368]:sw a2, 60(gp)<br>     |
|  36|[0x8000329c]<br>0x00000001|- rs2_val == 4294967291<br> - rs1_val == 536870912<br>                                                                                                                                                                       |[0x80000374]:sltu a2, a0, a1<br> [0x80000378]:sw a2, 64(gp)<br>     |
|  37|[0x800032a0]<br>0x00000001|- rs2_val == 3758096383<br> - rs1_val == 1073741824<br>                                                                                                                                                                      |[0x80000388]:sltu a2, a0, a1<br> [0x8000038c]:sw a2, 68(gp)<br>     |
|  38|[0x800032a4]<br>0x00000000|- rs2_val == 2147483647<br> - rs1_val == 2147483648<br>                                                                                                                                                                      |[0x8000039c]:sltu a2, a0, a1<br> [0x800003a0]:sw a2, 72(gp)<br>     |
|  39|[0x800032a8]<br>0x00000000|- rs1_val == 4294967294<br>                                                                                                                                                                                                  |[0x800003ac]:sltu a2, a0, a1<br> [0x800003b0]:sw a2, 76(gp)<br>     |
|  40|[0x800032ac]<br>0x00000000|- rs1_val == 4294967293<br>                                                                                                                                                                                                  |[0x800003c0]:sltu a2, a0, a1<br> [0x800003c4]:sw a2, 80(gp)<br>     |
|  41|[0x800032b0]<br>0x00000000|- rs1_val == 4294967291<br>                                                                                                                                                                                                  |[0x800003d0]:sltu a2, a0, a1<br> [0x800003d4]:sw a2, 84(gp)<br>     |
|  42|[0x800032b4]<br>0x00000000|- rs1_val == 4294967287<br>                                                                                                                                                                                                  |[0x800003e4]:sltu a2, a0, a1<br> [0x800003e8]:sw a2, 88(gp)<br>     |
|  43|[0x800032b8]<br>0x00000000|- rs1_val == 4294967279<br>                                                                                                                                                                                                  |[0x800003f4]:sltu a2, a0, a1<br> [0x800003f8]:sw a2, 92(gp)<br>     |
|  44|[0x800032bc]<br>0x00000000|- rs2_val == 8388608<br> - rs1_val == 4294967263<br>                                                                                                                                                                         |[0x80000404]:sltu a2, a0, a1<br> [0x80000408]:sw a2, 96(gp)<br>     |
|  45|[0x800032c0]<br>0x00000000|- rs1_val == 4294967231<br>                                                                                                                                                                                                  |[0x80000414]:sltu a2, a0, a1<br> [0x80000418]:sw a2, 100(gp)<br>    |
|  46|[0x800032c4]<br>0x00000000|- rs1_val == 4294967167<br>                                                                                                                                                                                                  |[0x80000424]:sltu a2, a0, a1<br> [0x80000428]:sw a2, 104(gp)<br>    |
|  47|[0x800032c8]<br>0x00000001|- rs1_val == 4294967039<br>                                                                                                                                                                                                  |[0x80000434]:sltu a2, a0, a1<br> [0x80000438]:sw a2, 108(gp)<br>    |
|  48|[0x800032cc]<br>0x00000000|- rs2_val == 536870912<br> - rs1_val == 4294966783<br>                                                                                                                                                                       |[0x80000444]:sltu a2, a0, a1<br> [0x80000448]:sw a2, 112(gp)<br>    |
|  49|[0x800032d0]<br>0x00000001|- rs2_val == 4286578687<br>                                                                                                                                                                                                  |[0x80000458]:sltu a2, a0, a1<br> [0x8000045c]:sw a2, 116(gp)<br>    |
|  50|[0x800032d4]<br>0x00000001|- rs2_val == 4227858431<br>                                                                                                                                                                                                  |[0x8000046c]:sltu a2, a0, a1<br> [0x80000470]:sw a2, 120(gp)<br>    |
|  51|[0x800032d8]<br>0x00000001|- rs2_val == 4160749567<br> - rs1_val == 3221225471<br>                                                                                                                                                                      |[0x80000484]:sltu a2, a0, a1<br> [0x80000488]:sw a2, 124(gp)<br>    |
|  52|[0x800032dc]<br>0x00000000|- rs2_val == 2863311530<br> - rs1_val == 4294443007<br>                                                                                                                                                                      |[0x8000049c]:sltu a2, a0, a1<br> [0x800004a0]:sw a2, 128(gp)<br>    |
|  53|[0x800032e0]<br>0x00000000|- rs1_val == 4294966271<br>                                                                                                                                                                                                  |[0x800004ac]:sltu a2, a0, a1<br> [0x800004b0]:sw a2, 132(gp)<br>    |
|  54|[0x800032e4]<br>0x00000000|- rs1_val == 4294965247<br>                                                                                                                                                                                                  |[0x800004c0]:sltu a2, a0, a1<br> [0x800004c4]:sw a2, 136(gp)<br>    |
|  55|[0x800032e8]<br>0x00000000|- rs2_val == 4294705151<br> - rs1_val == 4294963199<br>                                                                                                                                                                      |[0x800004d8]:sltu a2, a0, a1<br> [0x800004dc]:sw a2, 140(gp)<br>    |
|  56|[0x800032ec]<br>0x00000000|- rs2_val == 16384<br> - rs1_val == 4294959103<br>                                                                                                                                                                           |[0x800004ec]:sltu a2, a0, a1<br> [0x800004f0]:sw a2, 144(gp)<br>    |
|  57|[0x800032f0]<br>0x00000000|- rs2_val == 524288<br> - rs1_val == 4294950911<br>                                                                                                                                                                          |[0x80000500]:sltu a2, a0, a1<br> [0x80000504]:sw a2, 148(gp)<br>    |
|  58|[0x800032f4]<br>0x00000001|- rs2_val == 4294963199<br> - rs1_val == 4294934527<br>                                                                                                                                                                      |[0x80000518]:sltu a2, a0, a1<br> [0x8000051c]:sw a2, 152(gp)<br>    |
|  59|[0x800032f8]<br>0x00000000|- rs2_val == 2048<br> - rs1_val == 4294901759<br>                                                                                                                                                                            |[0x80000530]:sltu a2, a0, a1<br> [0x80000534]:sw a2, 156(gp)<br>    |
|  60|[0x800032fc]<br>0x00000001|- rs1_val == 4294836223<br>                                                                                                                                                                                                  |[0x80000544]:sltu a2, a0, a1<br> [0x80000548]:sw a2, 160(gp)<br>    |
|  61|[0x80003300]<br>0x00000000|- rs2_val == 4290772991<br> - rs1_val == 4294705151<br>                                                                                                                                                                      |[0x8000055c]:sltu a2, a0, a1<br> [0x80000560]:sw a2, 164(gp)<br>    |
|  62|[0x80003304]<br>0x00000000|- rs1_val == 4293918719<br>                                                                                                                                                                                                  |[0x80000570]:sltu a2, a0, a1<br> [0x80000574]:sw a2, 168(gp)<br>    |
|  63|[0x80003308]<br>0x00000000|- rs1_val == 4292870143<br>                                                                                                                                                                                                  |[0x80000584]:sltu a2, a0, a1<br> [0x80000588]:sw a2, 172(gp)<br>    |
|  64|[0x8000330c]<br>0x00000001|- rs1_val == 4290772991<br>                                                                                                                                                                                                  |[0x8000059c]:sltu a2, a0, a1<br> [0x800005a0]:sw a2, 176(gp)<br>    |
|  65|[0x80003310]<br>0x00000001|- rs1_val == 4286578687<br>                                                                                                                                                                                                  |[0x800005b0]:sltu a2, a0, a1<br> [0x800005b4]:sw a2, 180(gp)<br>    |
|  66|[0x80003314]<br>0x00000000|- rs2_val == 1073741824<br> - rs1_val == 4261412863<br>                                                                                                                                                                      |[0x800005c4]:sltu a2, a0, a1<br> [0x800005c8]:sw a2, 184(gp)<br>    |
|  67|[0x80003318]<br>0x00000000|- rs1_val == 4227858431<br>                                                                                                                                                                                                  |[0x800005dc]:sltu a2, a0, a1<br> [0x800005e0]:sw a2, 188(gp)<br>    |
|  68|[0x8000331c]<br>0x00000001|- rs2_val == 4294967294<br> - rs1_val == 4160749567<br>                                                                                                                                                                      |[0x800005f0]:sltu a2, a0, a1<br> [0x800005f4]:sw a2, 192(gp)<br>    |
|  69|[0x80003320]<br>0x00000000|- rs1_val == 3758096383<br>                                                                                                                                                                                                  |[0x80000608]:sltu a2, a0, a1<br> [0x8000060c]:sw a2, 196(gp)<br>    |
|  70|[0x80003324]<br>0x00000001|- rs1_val == 2147483647<br>                                                                                                                                                                                                  |[0x8000061c]:sltu a2, a0, a1<br> [0x80000620]:sw a2, 200(gp)<br>    |
|  71|[0x80003328]<br>0x00000001|- rs1_val == 1431655765<br>                                                                                                                                                                                                  |[0x80000634]:sltu a2, a0, a1<br> [0x80000638]:sw a2, 204(gp)<br>    |
|  72|[0x8000332c]<br>0x00000001|- rs1_val == 2863311530<br>                                                                                                                                                                                                  |[0x8000064c]:sltu a2, a0, a1<br> [0x80000650]:sw a2, 208(gp)<br>    |
|  73|[0x80003330]<br>0x00000000|- rs2_val == 2<br>                                                                                                                                                                                                           |[0x80000660]:sltu a2, a0, a1<br> [0x80000664]:sw a2, 212(gp)<br>    |
|  74|[0x80003334]<br>0x00000000|- rs2_val == 4<br>                                                                                                                                                                                                           |[0x80000674]:sltu a2, a0, a1<br> [0x80000678]:sw a2, 216(gp)<br>    |
|  75|[0x80003338]<br>0x00000000|- rs2_val == 8<br>                                                                                                                                                                                                           |[0x80000688]:sltu a2, a0, a1<br> [0x8000068c]:sw a2, 220(gp)<br>    |
|  76|[0x8000333c]<br>0x00000000|- rs2_val == 32<br>                                                                                                                                                                                                          |[0x80000698]:sltu a2, a0, a1<br> [0x8000069c]:sw a2, 224(gp)<br>    |
|  77|[0x80003340]<br>0x00000000|- rs2_val == 128<br>                                                                                                                                                                                                         |[0x800006a8]:sltu a2, a0, a1<br> [0x800006ac]:sw a2, 228(gp)<br>    |
|  78|[0x80003344]<br>0x00000001|- rs2_val == 512<br>                                                                                                                                                                                                         |[0x800006b8]:sltu a2, a0, a1<br> [0x800006bc]:sw a2, 232(gp)<br>    |
|  79|[0x80003348]<br>0x00000000|- rs2_val == 1024<br>                                                                                                                                                                                                        |[0x800006c8]:sltu a2, a0, a1<br> [0x800006cc]:sw a2, 236(gp)<br>    |
|  80|[0x8000334c]<br>0x00000001|- rs2_val == 8192<br>                                                                                                                                                                                                        |[0x800006d8]:sltu a2, a0, a1<br> [0x800006dc]:sw a2, 240(gp)<br>    |
|  81|[0x80003350]<br>0x00000000|- rs2_val == 32768<br>                                                                                                                                                                                                       |[0x800006ec]:sltu a2, a0, a1<br> [0x800006f0]:sw a2, 244(gp)<br>    |
|  82|[0x80003354]<br>0x00000000|- rs2_val == 1048576<br>                                                                                                                                                                                                     |[0x800006fc]:sltu a2, a0, a1<br> [0x80000700]:sw a2, 248(gp)<br>    |
|  83|[0x80003358]<br>0x00000001|- rs2_val == 2097152<br>                                                                                                                                                                                                     |[0x8000070c]:sltu a2, a0, a1<br> [0x80000710]:sw a2, 252(gp)<br>    |
|  84|[0x8000335c]<br>0x00000001|- rs2_val == 4194304<br>                                                                                                                                                                                                     |[0x8000071c]:sltu a2, a0, a1<br> [0x80000720]:sw a2, 256(gp)<br>    |
|  85|[0x80003360]<br>0x00000000|- rs2_val == 16777216<br>                                                                                                                                                                                                    |[0x80000730]:sltu a2, a0, a1<br> [0x80000734]:sw a2, 260(gp)<br>    |
|  86|[0x80003364]<br>0x00000000|- rs2_val == 33554432<br>                                                                                                                                                                                                    |[0x80000744]:sltu a2, a0, a1<br> [0x80000748]:sw a2, 264(gp)<br>    |
|  87|[0x80003368]<br>0x00000001|- rs2_val == 67108864<br>                                                                                                                                                                                                    |[0x80000754]:sltu a2, a0, a1<br> [0x80000758]:sw a2, 268(gp)<br>    |
|  88|[0x8000336c]<br>0x00000000|- rs2_val == 134217728<br>                                                                                                                                                                                                   |[0x80000768]:sltu a2, a0, a1<br> [0x8000076c]:sw a2, 272(gp)<br>    |
|  89|[0x80003370]<br>0x00000000|- rs2_val == 268435456<br>                                                                                                                                                                                                   |[0x80000778]:sltu a2, a0, a1<br> [0x8000077c]:sw a2, 276(gp)<br>    |
|  90|[0x80003374]<br>0x00000001|- rs2_val == 4294967293<br>                                                                                                                                                                                                  |[0x80000788]:sltu a2, a0, a1<br> [0x8000078c]:sw a2, 280(gp)<br>    |
|  91|[0x80003378]<br>0x00000001|- rs2_val == 4294967287<br>                                                                                                                                                                                                  |[0x80000798]:sltu a2, a0, a1<br> [0x8000079c]:sw a2, 284(gp)<br>    |
|  92|[0x8000337c]<br>0x00000001|- rs2_val == 4294967167<br>                                                                                                                                                                                                  |[0x800007ac]:sltu a2, a0, a1<br> [0x800007b0]:sw a2, 288(gp)<br>    |
|  93|[0x80003380]<br>0x00000001|- rs2_val == 4294967039<br>                                                                                                                                                                                                  |[0x800007bc]:sltu a2, a0, a1<br> [0x800007c0]:sw a2, 292(gp)<br>    |
|  94|[0x80003384]<br>0x00000001|- rs2_val == 4294966271<br>                                                                                                                                                                                                  |[0x800007cc]:sltu a2, a0, a1<br> [0x800007d0]:sw a2, 296(gp)<br>    |
|  95|[0x80003388]<br>0x00000000|- rs2_val == 4294965247<br>                                                                                                                                                                                                  |[0x800007e4]:sltu a2, a0, a1<br> [0x800007e8]:sw a2, 300(gp)<br>    |
|  96|[0x8000338c]<br>0x00000001|- rs2_val == 4294950911<br>                                                                                                                                                                                                  |[0x800007f8]:sltu a2, a0, a1<br> [0x800007fc]:sw a2, 304(gp)<br>    |
|  97|[0x80003390]<br>0x00000001|- rs2_val == 4294934527<br>                                                                                                                                                                                                  |[0x80000810]:sltu a2, a0, a1<br> [0x80000814]:sw a2, 308(gp)<br>    |
|  98|[0x80003394]<br>0x00000000|- rs2_val == 4294901759<br>                                                                                                                                                                                                  |[0x80000824]:sltu a2, a0, a1<br> [0x80000828]:sw a2, 312(gp)<br>    |
|  99|[0x80003398]<br>0x00000001|- rs2_val == 4294836223<br>                                                                                                                                                                                                  |[0x8000083c]:sltu a2, a0, a1<br> [0x80000840]:sw a2, 316(gp)<br>    |
| 100|[0x8000339c]<br>0x00000000|- rs2_val == 4294443007<br>                                                                                                                                                                                                  |[0x80000854]:sltu a2, a0, a1<br> [0x80000858]:sw a2, 320(gp)<br>    |
| 101|[0x800033a0]<br>0x00000001|- rs2_val == 4293918719<br>                                                                                                                                                                                                  |[0x8000086c]:sltu a2, a0, a1<br> [0x80000870]:sw a2, 324(gp)<br>    |
| 102|[0x800033a8]<br>0x00000001|- rs1_val == 2<br>                                                                                                                                                                                                           |[0x80000890]:sltu a2, a0, a1<br> [0x80000894]:sw a2, 332(gp)<br>    |
