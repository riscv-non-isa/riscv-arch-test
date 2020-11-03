
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000890')]      |
| SIG_REGION                | [('0x80003204', '0x800033a4', '104 words')]      |
| COV_LABELS                | add      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/add-01.S/add-01.S    |
| Total Number of coverpoints| 246     |
| Total Signature Updates   | 101      |
| Total Coverpoints Covered | 246      |
| STAT1                     | 99      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000086c]:add a2, a0, a1
      [0x80000870]:sw a2, 324(sp)
 -- Signature Address: 0x8000339c Data: 0x7FFFFFF8
 -- Redundant Coverpoints hit by the op
      - opcode : add
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == (-2**(xlen-1))
      - rs2_val == -2147483648




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000087c]:add a2, a0, a1
      [0x80000880]:sw a2, 328(sp)
 -- Signature Address: 0x800033a0 Data: 0x00401000
 -- Redundant Coverpoints hit by the op
      - opcode : add
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 4096
      - rs1_val == 4194304






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

|s.no|        signature         |                                                                                                           coverpoints                                                                                                            |                               code                                |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000000|- opcode : add<br> - rs1 : x0<br> - rs2 : x0<br> - rd : x17<br> - rs1 == rs2 != rd<br> - rs1_val == rs2_val<br> - rs2_val == 0<br> - rs1_val == 0<br>                                                                             |[0x80000110]:add a7, zero, zero<br> [0x80000114]:sw a7, 0(gp)<br>  |
|   2|[0x80003214]<br>0x00000006|- rs1 : x15<br> - rs2 : x2<br> - rd : x2<br> - rs2 == rd != rs1<br> - rs1_val != rs2_val<br>                                                                                                                                      |[0x80000120]:add sp, a5, sp<br> [0x80000124]:sw sp, 4(gp)<br>      |
|   3|[0x80003218]<br>0x8FFFFFFF|- rs1 : x27<br> - rs2 : x7<br> - rd : x27<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 268435456<br> - rs1_val == 2147483647<br>                                    |[0x80000134]:add s11, s11, t2<br> [0x80000138]:sw s11, 8(gp)<br>   |
|   4|[0x8000321c]<br>0xFFFFFFF0|- rs1 : x21<br> - rs2 : x15<br> - rd : x6<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == 1<br> - rs2_val == -17<br>                                                             |[0x80000144]:add t1, s5, a5<br> [0x80000148]:sw t1, 12(gp)<br>     |
|   5|[0x80003220]<br>0x00000000|- rs1 : x24<br> - rs2 : x24<br> - rd : x24<br> - rs1 == rs2 == rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs2_val == (-2**(xlen-1))<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -2147483648<br> |[0x80000154]:add s8, s8, s8<br> [0x80000158]:sw s8, 16(gp)<br>     |
|   6|[0x80003224]<br>0x00000007|- rs1 : x2<br> - rs2 : x30<br> - rd : x9<br>                                                                                                                                                                                      |[0x80000164]:add s1, sp, t5<br> [0x80000168]:sw s1, 20(gp)<br>     |
|   7|[0x80003228]<br>0x80000001|- rs1 : x8<br> - rs2 : x14<br> - rd : x25<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == 2<br>                                                                                                     |[0x80000178]:add s9, fp, a4<br> [0x8000017c]:sw s9, 24(gp)<br>     |
|   8|[0x8000322c]<br>0xFFFFFFE0|- rs1 : x14<br> - rs2 : x1<br> - rd : x21<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == 1<br> - rs1_val == -33<br>                                                                                                           |[0x80000188]:add s5, a4, ra<br> [0x8000018c]:sw s5, 28(gp)<br>     |
|   9|[0x80003230]<br>0xFFFEFFFE|- rs1 : x26<br> - rs2 : x25<br> - rd : x16<br> - rs2_val == -32769<br> - rs1_val == -32769<br>                                                                                                                                    |[0x800001a0]:add a6, s10, s9<br> [0x800001a4]:sw a6, 32(gp)<br>    |
|  10|[0x80003234]<br>0x00000006|- rs1 : x13<br> - rs2 : x28<br> - rd : x30<br> - rs2_val == 2<br> - rs1_val == 4<br>                                                                                                                                              |[0x800001b0]:add t5, a3, t3<br> [0x800001b4]:sw t5, 36(gp)<br>     |
|  11|[0x80003238]<br>0x40000008|- rs1 : x20<br> - rs2 : x26<br> - rd : x28<br> - rs2_val == 1073741824<br> - rs1_val == 8<br>                                                                                                                                     |[0x800001c0]:add t3, s4, s10<br> [0x800001c4]:sw t3, 40(gp)<br>    |
|  12|[0x8000323c]<br>0x00000012|- rs1 : x1<br> - rs2 : x19<br> - rd : x31<br> - rs1_val == 16<br>                                                                                                                                                                 |[0x800001d0]:add t6, ra, s3<br> [0x800001d4]:sw t6, 44(gp)<br>     |
|  13|[0x80003240]<br>0x00400020|- rs1 : x11<br> - rs2 : x13<br> - rd : x5<br> - rs2_val == 4194304<br> - rs1_val == 32<br>                                                                                                                                        |[0x800001e0]:add t0, a1, a3<br> [0x800001e4]:sw t0, 48(gp)<br>     |
|  14|[0x80003244]<br>0xFFFFF03F|- rs1 : x16<br> - rs2 : x6<br> - rd : x15<br> - rs2_val == -4097<br> - rs1_val == 64<br>                                                                                                                                          |[0x800001f4]:add a5, a6, t1<br> [0x800001f8]:sw a5, 52(gp)<br>     |
|  15|[0x80003248]<br>0x00100080|- rs1 : x19<br> - rs2 : x16<br> - rd : x18<br> - rs2_val == 1048576<br> - rs1_val == 128<br>                                                                                                                                      |[0x80000204]:add s2, s3, a6<br> [0x80000208]:sw s2, 56(gp)<br>     |
|  16|[0x8000324c]<br>0x00000900|- rs1 : x4<br> - rs2 : x5<br> - rd : x10<br> - rs2_val == 2048<br> - rs1_val == 256<br>                                                                                                                                           |[0x80000218]:add a0, tp, t0<br> [0x8000021c]:sw a0, 60(gp)<br>     |
|  17|[0x80003250]<br>0x02000200|- rs1 : x7<br> - rs2 : x8<br> - rd : x22<br> - rs2_val == 33554432<br> - rs1_val == 512<br>                                                                                                                                       |[0x80000228]:add s6, t2, fp<br> [0x8000022c]:sw s6, 64(gp)<br>     |
|  18|[0x80003254]<br>0x00200400|- rs1 : x31<br> - rs2 : x17<br> - rd : x29<br> - rs2_val == 2097152<br> - rs1_val == 1024<br>                                                                                                                                     |[0x80000238]:add t4, t6, a7<br> [0x8000023c]:sw t4, 68(gp)<br>     |
|  19|[0x80003258]<br>0x00000820|- rs1 : x23<br> - rs2 : x21<br> - rd : x11<br> - rs2_val == 32<br> - rs1_val == 2048<br>                                                                                                                                          |[0x80000254]:add a1, s7, s5<br> [0x80000258]:sw a1, 0(sp)<br>      |
|  20|[0x8000325c]<br>0xFC000FFF|- rs1 : x5<br> - rs2 : x4<br> - rd : x23<br> - rs2_val == -67108865<br> - rs1_val == 4096<br>                                                                                                                                     |[0x80000268]:add s7, t0, tp<br> [0x8000026c]:sw s7, 4(sp)<br>      |
|  21|[0x80003260]<br>0x00001FFA|- rs1 : x6<br> - rs2 : x31<br> - rd : x3<br> - rs1_val == 8192<br>                                                                                                                                                                |[0x80000278]:add gp, t1, t6<br> [0x8000027c]:sw gp, 8(sp)<br>      |
|  22|[0x80003264]<br>0x00003EFF|- rs1 : x22<br> - rs2 : x12<br> - rd : x26<br> - rs2_val == -257<br> - rs1_val == 16384<br>                                                                                                                                       |[0x80000288]:add s10, s6, a2<br> [0x8000028c]:sw s10, 12(sp)<br>   |
|  23|[0x80003268]<br>0x00008040|- rs1 : x12<br> - rs2 : x10<br> - rd : x7<br> - rs2_val == 64<br> - rs1_val == 32768<br>                                                                                                                                          |[0x80000298]:add t2, a2, a0<br> [0x8000029c]:sw t2, 16(sp)<br>     |
|  24|[0x8000326c]<br>0x00018000|- rs1 : x30<br> - rs2 : x23<br> - rd : x13<br> - rs2_val == 32768<br> - rs1_val == 65536<br>                                                                                                                                      |[0x800002a8]:add a3, t5, s7<br> [0x800002ac]:sw a3, 20(sp)<br>     |
|  25|[0x80003270]<br>0x00220000|- rs1 : x9<br> - rs2 : x27<br> - rd : x19<br> - rs1_val == 131072<br>                                                                                                                                                             |[0x800002b8]:add s3, s1, s11<br> [0x800002bc]:sw s3, 24(sp)<br>    |
|  26|[0x80003274]<br>0x0003FEFF|- rs1 : x10<br> - rs2 : x20<br> - rd : x1<br> - rs1_val == 262144<br>                                                                                                                                                             |[0x800002c8]:add ra, a0, s4<br> [0x800002cc]:sw ra, 28(sp)<br>     |
|  27|[0x80003278]<br>0x00880000|- rs1 : x28<br> - rs2 : x29<br> - rd : x4<br> - rs2_val == 8388608<br> - rs1_val == 524288<br>                                                                                                                                    |[0x800002d8]:add tp, t3, t4<br> [0x800002dc]:sw tp, 32(sp)<br>     |
|  28|[0x8000327c]<br>0x20100000|- rs1 : x18<br> - rs2 : x3<br> - rd : x14<br> - rs2_val == 536870912<br> - rs1_val == 1048576<br>                                                                                                                                 |[0x800002e8]:add a4, s2, gp<br> [0x800002ec]:sw a4, 36(sp)<br>     |
|  29|[0x80003280]<br>0x401FFFFF|- rs1 : x3<br> - rs2 : x9<br> - rd : x12<br> - rs1_val == 2097152<br>                                                                                                                                                             |[0x800002fc]:add a2, gp, s1<br> [0x80000300]:sw a2, 40(sp)<br>     |
|  30|[0x80003284]<br>0x00000000|- rs1 : x17<br> - rs2 : x22<br> - rd : x0<br> - rs2_val == 4096<br> - rs1_val == 4194304<br>                                                                                                                                      |[0x8000030c]:add zero, a7, s6<br> [0x80000310]:sw zero, 44(sp)<br> |
|  31|[0x80003288]<br>0x00800003|- rs1 : x29<br> - rs2 : x18<br> - rd : x20<br> - rs1_val == 8388608<br>                                                                                                                                                           |[0x8000031c]:add s4, t4, s2<br> [0x80000320]:sw s4, 48(sp)<br>     |
|  32|[0x8000328c]<br>0x01000004|- rs1 : x25<br> - rs2 : x11<br> - rd : x8<br> - rs2_val == 4<br> - rs1_val == 16777216<br>                                                                                                                                        |[0x8000032c]:add fp, s9, a1<br> [0x80000330]:sw fp, 52(sp)<br>     |
|  33|[0x80003290]<br>0x02040000|- rs2_val == 262144<br> - rs1_val == 33554432<br>                                                                                                                                                                                 |[0x8000033c]:add a2, a0, a1<br> [0x80000340]:sw a2, 56(sp)<br>     |
|  34|[0x80003294]<br>0x04000040|- rs1_val == 67108864<br>                                                                                                                                                                                                         |[0x8000034c]:add a2, a0, a1<br> [0x80000350]:sw a2, 60(sp)<br>     |
|  35|[0x80003298]<br>0x28000000|- rs1_val == 134217728<br>                                                                                                                                                                                                        |[0x8000035c]:add a2, a0, a1<br> [0x80000360]:sw a2, 64(sp)<br>     |
|  36|[0x8000329c]<br>0x10000008|- rs2_val == 8<br> - rs1_val == 268435456<br>                                                                                                                                                                                     |[0x8000036c]:add a2, a0, a1<br> [0x80000370]:sw a2, 68(sp)<br>     |
|  37|[0x800032a0]<br>0x5FFFFFFF|- rs1_val == 536870912<br>                                                                                                                                                                                                        |[0x80000380]:add a2, a0, a1<br> [0x80000384]:sw a2, 72(sp)<br>     |
|  38|[0x800032a4]<br>0x3FFF7FFF|- rs1_val == 1073741824<br>                                                                                                                                                                                                       |[0x80000394]:add a2, a0, a1<br> [0x80000398]:sw a2, 76(sp)<br>     |
|  39|[0x800032a8]<br>0x1FFFFFFE|- rs1_val == -2<br>                                                                                                                                                                                                               |[0x800003a4]:add a2, a0, a1<br> [0x800003a8]:sw a2, 80(sp)<br>     |
|  40|[0x800032ac]<br>0x0007FFFD|- rs2_val == 524288<br> - rs1_val == -3<br>                                                                                                                                                                                       |[0x800003b4]:add a2, a0, a1<br> [0x800003b8]:sw a2, 84(sp)<br>     |
|  41|[0x800032b0]<br>0xEFFFFFFA|- rs2_val == -268435457<br> - rs1_val == -5<br>                                                                                                                                                                                   |[0x800003c8]:add a2, a0, a1<br> [0x800003cc]:sw a2, 88(sp)<br>     |
|  42|[0x800032b4]<br>0x00000077|- rs2_val == 128<br> - rs1_val == -9<br>                                                                                                                                                                                          |[0x800003d8]:add a2, a0, a1<br> [0x800003dc]:sw a2, 92(sp)<br>     |
|  43|[0x800032b8]<br>0xFFFF7FEE|- rs1_val == -17<br>                                                                                                                                                                                                              |[0x800003ec]:add a2, a0, a1<br> [0x800003f0]:sw a2, 96(sp)<br>     |
|  44|[0x800032bc]<br>0x1FFBFFFF|- rs2_val == -262145<br>                                                                                                                                                                                                          |[0x80000400]:add a2, a0, a1<br> [0x80000404]:sw a2, 100(sp)<br>    |
|  45|[0x800032c0]<br>0xFFF80006|- rs2_val == -524289<br>                                                                                                                                                                                                          |[0x80000414]:add a2, a0, a1<br> [0x80000418]:sw a2, 104(sp)<br>    |
|  46|[0x800032c4]<br>0xFFDFFFFE|- rs2_val == -1048577<br> - rs1_val == -1048577<br>                                                                                                                                                                               |[0x8000042c]:add a2, a0, a1<br> [0x80000430]:sw a2, 108(sp)<br>    |
|  47|[0x800032c8]<br>0xFFE0FFFF|- rs2_val == -2097153<br>                                                                                                                                                                                                         |[0x80000440]:add a2, a0, a1<br> [0x80000444]:sw a2, 112(sp)<br>    |
|  48|[0x800032cc]<br>0xFFC00006|- rs2_val == -4194305<br>                                                                                                                                                                                                         |[0x80000454]:add a2, a0, a1<br> [0x80000458]:sw a2, 116(sp)<br>    |
|  49|[0x800032d0]<br>0xFF7FFFDE|- rs2_val == -8388609<br>                                                                                                                                                                                                         |[0x80000468]:add a2, a0, a1<br> [0x8000046c]:sw a2, 120(sp)<br>    |
|  50|[0x800032d4]<br>0xFEFFFEFE|- rs2_val == -16777217<br> - rs1_val == -257<br>                                                                                                                                                                                  |[0x8000047c]:add a2, a0, a1<br> [0x80000480]:sw a2, 124(sp)<br>    |
|  51|[0x800032d8]<br>0x7DFFFFFF|- rs2_val == -33554433<br>                                                                                                                                                                                                        |[0x80000490]:add a2, a0, a1<br> [0x80000494]:sw a2, 128(sp)<br>    |
|  52|[0x800032dc]<br>0xF7FFFFFA|- rs2_val == -134217729<br>                                                                                                                                                                                                       |[0x800004a4]:add a2, a0, a1<br> [0x800004a8]:sw a2, 132(sp)<br>    |
|  53|[0x800032e0]<br>0xDFFFFFF8|- rs2_val == -536870913<br>                                                                                                                                                                                                       |[0x800004b8]:add a2, a0, a1<br> [0x800004bc]:sw a2, 136(sp)<br>    |
|  54|[0x800032e4]<br>0xBFFFFBFE|- rs2_val == -1073741825<br> - rs1_val == -1025<br>                                                                                                                                                                               |[0x800004cc]:add a2, a0, a1<br> [0x800004d0]:sw a2, 140(sp)<br>    |
|  55|[0x800032e8]<br>0xABAAAAAA|- rs2_val == -1431655766<br>                                                                                                                                                                                                      |[0x800004e0]:add a2, a0, a1<br> [0x800004e4]:sw a2, 144(sp)<br>    |
|  56|[0x800032ec]<br>0x0000003F|- rs1_val == -65<br>                                                                                                                                                                                                              |[0x800004f0]:add a2, a0, a1<br> [0x800004f4]:sw a2, 148(sp)<br>    |
|  57|[0x800032f0]<br>0xFF7FFF7E|- rs1_val == -129<br>                                                                                                                                                                                                             |[0x80000504]:add a2, a0, a1<br> [0x80000508]:sw a2, 152(sp)<br>    |
|  58|[0x800032f4]<br>0xFFFFFDBE|- rs2_val == -65<br> - rs1_val == -513<br>                                                                                                                                                                                        |[0x80000514]:add a2, a0, a1<br> [0x80000518]:sw a2, 156(sp)<br>    |
|  59|[0x800032f8]<br>0xFFFFF7DE|- rs2_val == -33<br> - rs1_val == -2049<br>                                                                                                                                                                                       |[0x80000528]:add a2, a0, a1<br> [0x8000052c]:sw a2, 160(sp)<br>    |
|  60|[0x800032fc]<br>0xFBFFEFFE|- rs1_val == -4097<br>                                                                                                                                                                                                            |[0x80000540]:add a2, a0, a1<br> [0x80000544]:sw a2, 164(sp)<br>    |
|  61|[0x80003300]<br>0xFF7FDFFE|- rs1_val == -8193<br>                                                                                                                                                                                                            |[0x80000558]:add a2, a0, a1<br> [0x8000055c]:sw a2, 168(sp)<br>    |
|  62|[0x80003304]<br>0xFFFFBFFA|- rs2_val == -5<br> - rs1_val == -16385<br>                                                                                                                                                                                       |[0x8000056c]:add a2, a0, a1<br> [0x80000570]:sw a2, 172(sp)<br>    |
|  63|[0x80003308]<br>0xFFFF003F|- rs1_val == -65537<br>                                                                                                                                                                                                           |[0x80000580]:add a2, a0, a1<br> [0x80000584]:sw a2, 176(sp)<br>    |
|  64|[0x8000330c]<br>0xFEFDFFFE|- rs1_val == -131073<br>                                                                                                                                                                                                          |[0x80000598]:add a2, a0, a1<br> [0x8000059c]:sw a2, 180(sp)<br>    |
|  65|[0x80003310]<br>0xFFFBFFF9|- rs1_val == -262145<br>                                                                                                                                                                                                          |[0x800005ac]:add a2, a0, a1<br> [0x800005b0]:sw a2, 184(sp)<br>    |
|  66|[0x80003314]<br>0xFFF81FFF|- rs2_val == 8192<br> - rs1_val == -524289<br>                                                                                                                                                                                    |[0x800005c0]:add a2, a0, a1<br> [0x800005c4]:sw a2, 188(sp)<br>    |
|  67|[0x80003318]<br>0xFBDFFFFE|- rs1_val == -2097153<br>                                                                                                                                                                                                         |[0x800005d8]:add a2, a0, a1<br> [0x800005dc]:sw a2, 192(sp)<br>    |
|  68|[0x8000331c]<br>0xFFC007FF|- rs1_val == -4194305<br>                                                                                                                                                                                                         |[0x800005f0]:add a2, a0, a1<br> [0x800005f4]:sw a2, 196(sp)<br>    |
|  69|[0x80003320]<br>0x0F7FFFFF|- rs1_val == -8388609<br>                                                                                                                                                                                                         |[0x80000604]:add a2, a0, a1<br> [0x80000608]:sw a2, 200(sp)<br>    |
|  70|[0x80003324]<br>0xFF00001F|- rs1_val == -16777217<br>                                                                                                                                                                                                        |[0x80000618]:add a2, a0, a1<br> [0x8000061c]:sw a2, 204(sp)<br>    |
|  71|[0x80003328]<br>0xFDFEFFFE|- rs2_val == -65537<br> - rs1_val == -33554433<br>                                                                                                                                                                                |[0x80000630]:add a2, a0, a1<br> [0x80000634]:sw a2, 208(sp)<br>    |
|  72|[0x8000332c]<br>0xF9FFFFFE|- rs1_val == -67108865<br>                                                                                                                                                                                                        |[0x80000648]:add a2, a0, a1<br> [0x8000064c]:sw a2, 212(sp)<br>    |
|  73|[0x80003330]<br>0xF8000007|- rs1_val == -134217729<br>                                                                                                                                                                                                       |[0x8000065c]:add a2, a0, a1<br> [0x80000660]:sw a2, 216(sp)<br>    |
|  74|[0x80003334]<br>0xE7FFFFFE|- rs1_val == -268435457<br>                                                                                                                                                                                                       |[0x80000674]:add a2, a0, a1<br> [0x80000678]:sw a2, 220(sp)<br>    |
|  75|[0x80003338]<br>0xDEFFFFFE|- rs1_val == -536870913<br>                                                                                                                                                                                                       |[0x8000068c]:add a2, a0, a1<br> [0x80000690]:sw a2, 224(sp)<br>    |
|  76|[0x8000333c]<br>0xBBFFFFFE|- rs1_val == -1073741825<br>                                                                                                                                                                                                      |[0x800006a4]:add a2, a0, a1<br> [0x800006a8]:sw a2, 228(sp)<br>    |
|  77|[0x80003340]<br>0x55455554|- rs1_val == 1431655765<br>                                                                                                                                                                                                       |[0x800006bc]:add a2, a0, a1<br> [0x800006c0]:sw a2, 232(sp)<br>    |
|  78|[0x80003344]<br>0xAAA6AAA9|- rs1_val == -1431655766<br>                                                                                                                                                                                                      |[0x800006d4]:add a2, a0, a1<br> [0x800006d8]:sw a2, 236(sp)<br>    |
|  79|[0x80003348]<br>0xFFC0000F|- rs2_val == 16<br>                                                                                                                                                                                                               |[0x800006e8]:add a2, a0, a1<br> [0x800006ec]:sw a2, 240(sp)<br>    |
|  80|[0x8000334c]<br>0x000000FE|- rs2_val == 256<br>                                                                                                                                                                                                              |[0x800006f8]:add a2, a0, a1<br> [0x800006fc]:sw a2, 244(sp)<br>    |
|  81|[0x80003350]<br>0x000001F9|- rs2_val == 512<br>                                                                                                                                                                                                              |[0x80000708]:add a2, a0, a1<br> [0x8000070c]:sw a2, 248(sp)<br>    |
|  82|[0x80003354]<br>0x00010400|- rs2_val == 1024<br>                                                                                                                                                                                                             |[0x80000718]:add a2, a0, a1<br> [0x8000071c]:sw a2, 252(sp)<br>    |
|  83|[0x80003358]<br>0xFFFF3FFF|- rs2_val == 16384<br>                                                                                                                                                                                                            |[0x8000072c]:add a2, a0, a1<br> [0x80000730]:sw a2, 256(sp)<br>    |
|  84|[0x8000335c]<br>0x01200000|- rs2_val == 16777216<br>                                                                                                                                                                                                         |[0x8000073c]:add a2, a0, a1<br> [0x80000740]:sw a2, 260(sp)<br>    |
|  85|[0x80003360]<br>0x03FFFFFE|- rs2_val == 67108864<br>                                                                                                                                                                                                         |[0x8000074c]:add a2, a0, a1<br> [0x80000750]:sw a2, 264(sp)<br>    |
|  86|[0x80003364]<br>0x07DFFFFF|- rs2_val == 134217728<br>                                                                                                                                                                                                        |[0x80000760]:add a2, a0, a1<br> [0x80000764]:sw a2, 268(sp)<br>    |
|  87|[0x80003368]<br>0x00000003|- rs2_val == -2<br>                                                                                                                                                                                                               |[0x80000770]:add a2, a0, a1<br> [0x80000774]:sw a2, 272(sp)<br>    |
|  88|[0x8000336c]<br>0xFFFDFFFC|- rs2_val == -131073<br>                                                                                                                                                                                                          |[0x80000784]:add a2, a0, a1<br> [0x80000788]:sw a2, 276(sp)<br>    |
|  89|[0x80003370]<br>0x000FFFFD|- rs2_val == -3<br>                                                                                                                                                                                                               |[0x80000794]:add a2, a0, a1<br> [0x80000798]:sw a2, 280(sp)<br>    |
|  90|[0x80003374]<br>0xF7FFFFF6|- rs2_val == -9<br>                                                                                                                                                                                                               |[0x800007a8]:add a2, a0, a1<br> [0x800007ac]:sw a2, 284(sp)<br>    |
|  91|[0x80003378]<br>0xFFFFFF7F|- rs2_val == -129<br>                                                                                                                                                                                                             |[0x800007b8]:add a2, a0, a1<br> [0x800007bc]:sw a2, 288(sp)<br>    |
|  92|[0x8000337c]<br>0xF7FFFDFE|- rs2_val == -513<br>                                                                                                                                                                                                             |[0x800007cc]:add a2, a0, a1<br> [0x800007d0]:sw a2, 292(sp)<br>    |
|  93|[0x80003380]<br>0xFFDFFBFE|- rs2_val == -1025<br>                                                                                                                                                                                                            |[0x800007e0]:add a2, a0, a1<br> [0x800007e4]:sw a2, 296(sp)<br>    |
|  94|[0x80003384]<br>0xFFFFE7FE|- rs2_val == -2049<br>                                                                                                                                                                                                            |[0x800007f8]:add a2, a0, a1<br> [0x800007fc]:sw a2, 300(sp)<br>    |
|  95|[0x80003388]<br>0x7FFFDFFE|- rs2_val == -8193<br>                                                                                                                                                                                                            |[0x80000810]:add a2, a0, a1<br> [0x80000814]:sw a2, 304(sp)<br>    |
|  96|[0x8000338c]<br>0xFFFF3FFE|- rs2_val == -16385<br>                                                                                                                                                                                                           |[0x80000828]:add a2, a0, a1<br> [0x8000082c]:sw a2, 308(sp)<br>    |
|  97|[0x80003390]<br>0x00110000|- rs2_val == 65536<br>                                                                                                                                                                                                            |[0x80000838]:add a2, a0, a1<br> [0x8000083c]:sw a2, 312(sp)<br>    |
|  98|[0x80003394]<br>0x00020400|- rs2_val == 131072<br>                                                                                                                                                                                                           |[0x80000848]:add a2, a0, a1<br> [0x8000084c]:sw a2, 316(sp)<br>    |
|  99|[0x80003398]<br>0xD5555555|- rs2_val == 1431655765<br>                                                                                                                                                                                                       |[0x8000085c]:add a2, a0, a1<br> [0x80000860]:sw a2, 320(sp)<br>    |
