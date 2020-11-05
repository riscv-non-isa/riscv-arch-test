
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
| SIG_REGION                | [('0x80003204', '0x800033a4', '104 words')]      |
| COV_LABELS                | slt      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/slt-01.S/slt-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 101      |
| STAT1                     | 96      |
| STAT2                     | 5      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000810]:slt a2, a0, a1
      [0x80000814]:sw a2, 256(ra)
 -- Signature Address: 0x80003390 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - opcode : slt
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val == 0
      - rs2_val == 8




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000824]:slt a2, a0, a1
      [0x80000828]:sw a2, 260(ra)
 -- Signature Address: 0x80003394 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : slt
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs1_val == (2**(xlen-1)-1)
      - rs2_val == 16
      - rs1_val == 2147483647




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000834]:slt a2, a0, a1
      [0x80000838]:sw a2, 264(ra)
 -- Signature Address: 0x80003398 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - opcode : slt
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000848]:slt a2, a0, a1
      [0x8000084c]:sw a2, 268(ra)
 -- Signature Address: 0x8000339c Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - opcode : slt
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == (2**(xlen-1)-1)
      - rs2_val == 2147483647
      - rs1_val == -1025




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000085c]:slt a2, a0, a1
      [0x80000860]:sw a2, 272(ra)
 -- Signature Address: 0x800033a0 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - opcode : slt
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 1431655765
      - rs1_val == 131072






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
|   1|[0x80003210]<br>0x00000001|- opcode : slt<br> - rs1 : x16<br> - rs2 : x29<br> - rd : x16<br> - rs1 == rd != rs2<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val != rs2_val<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -131073<br> - rs1_val == -2147483648<br> |[0x8000010c]:slt a6, a6, t4<br> [0x80000110]:sw a6, 0(t2)<br>      |
|   2|[0x80003214]<br>0x00000000|- rs1 : x6<br> - rs2 : x6<br> - rd : x19<br> - rs1 == rs2 != rd<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == rs2_val<br> - rs2_val == 8<br> - rs1_val == 8<br>                                                                      |[0x8000011c]:slt s3, t1, t1<br> [0x80000120]:sw s3, 4(t2)<br>      |
|   3|[0x80003218]<br>0x00000000|- rs1 : x22<br> - rs2 : x22<br> - rd : x22<br> - rs1 == rs2 == rd<br> - rs2_val == 16<br> - rs1_val == 16<br>                                                                                                                             |[0x80000130]:slt s6, s6, s6<br> [0x80000134]:sw s6, 8(t2)<br>      |
|   4|[0x8000321c]<br>0x00000000|- rs1 : x26<br> - rs2 : x30<br> - rd : x30<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == 1<br> - rs2_val == -524289<br>                                                                                       |[0x80000144]:slt t5, s10, t5<br> [0x80000148]:sw t5, 12(t2)<br>    |
|   5|[0x80003220]<br>0x00000000|- rs1 : x9<br> - rs2 : x25<br> - rd : x20<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == 268435456<br>                                                       |[0x80000154]:slt s4, s1, s9<br> [0x80000158]:sw s4, 16(t2)<br>     |
|   6|[0x80003224]<br>0x00000000|- rs1 : x0<br> - rs2 : x1<br> - rd : x6<br> - rs2_val == 0<br> - rs1_val == 0<br>                                                                                                                                                         |[0x80000164]:slt t1, zero, ra<br> [0x80000168]:sw t1, 20(t2)<br>   |
|   7|[0x80003228]<br>0x00000000|- rs1 : x2<br> - rs2 : x23<br> - rd : x0<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == -1025<br>                                                                        |[0x80000178]:slt zero, sp, s7<br> [0x8000017c]:sw zero, 24(t2)<br> |
|   8|[0x8000322c]<br>0x00000001|- rs1 : x20<br> - rs2 : x10<br> - rd : x17<br> - rs2_val == 1<br> - rs1_val == -268435457<br>                                                                                                                                             |[0x8000018c]:slt a7, s4, a0<br> [0x80000190]:sw a7, 28(t2)<br>     |
|   9|[0x80003230]<br>0x00000000|- rs1 : x4<br> - rs2 : x17<br> - rd : x23<br>                                                                                                                                                                                             |[0x8000019c]:slt s7, tp, a7<br> [0x800001a0]:sw s7, 32(t2)<br>     |
|  10|[0x80003234]<br>0x00000001|- rs1 : x5<br> - rs2 : x15<br> - rd : x27<br> - rs2_val == 1024<br> - rs1_val == 2<br>                                                                                                                                                    |[0x800001ac]:slt s11, t0, a5<br> [0x800001b0]:sw s11, 36(t2)<br>   |
|  11|[0x80003238]<br>0x00000000|- rs1 : x30<br> - rs2 : x2<br> - rd : x11<br> - rs2_val == -268435457<br> - rs1_val == 4<br>                                                                                                                                              |[0x800001c0]:slt a1, t5, sp<br> [0x800001c4]:sw a1, 40(t2)<br>     |
|  12|[0x8000323c]<br>0x00000000|- rs1 : x10<br> - rs2 : x18<br> - rd : x31<br> - rs2_val == -9<br>                                                                                                                                                                        |[0x800001d0]:slt t6, a0, s2<br> [0x800001d4]:sw t6, 44(t2)<br>     |
|  13|[0x80003240]<br>0x00000000|- rs1 : x3<br> - rs2 : x19<br> - rd : x13<br> - rs2_val == -4194305<br>                                                                                                                                                                   |[0x800001e4]:slt a3, gp, s3<br> [0x800001e8]:sw a3, 48(t2)<br>     |
|  14|[0x80003244]<br>0x00000000|- rs1 : x21<br> - rs2 : x13<br> - rd : x28<br> - rs2_val == -2097153<br> - rs1_val == 32<br>                                                                                                                                              |[0x800001f8]:slt t3, s5, a3<br> [0x800001fc]:sw t3, 52(t2)<br>     |
|  15|[0x80003248]<br>0x00000001|- rs1 : x8<br> - rs2 : x24<br> - rd : x18<br> - rs2_val == 8388608<br> - rs1_val == 64<br>                                                                                                                                                |[0x80000208]:slt s2, fp, s8<br> [0x8000020c]:sw s2, 56(t2)<br>     |
|  16|[0x8000324c]<br>0x00000000|- rs1 : x14<br> - rs2 : x7<br> - rd : x10<br> - rs1_val == 128<br>                                                                                                                                                                        |[0x80000220]:slt a0, a4, t2<br> [0x80000224]:sw a0, 0(t1)<br>      |
|  17|[0x80003250]<br>0x00000001|- rs1 : x15<br> - rs2 : x16<br> - rd : x5<br> - rs2_val == 512<br> - rs1_val == 256<br>                                                                                                                                                   |[0x80000230]:slt t0, a5, a6<br> [0x80000234]:sw t0, 4(t1)<br>      |
|  18|[0x80003254]<br>0x00000001|- rs1 : x28<br> - rs2 : x14<br> - rd : x29<br> - rs1_val == 512<br>                                                                                                                                                                       |[0x80000244]:slt t4, t3, a4<br> [0x80000248]:sw t4, 8(t1)<br>      |
|  19|[0x80003258]<br>0x00000001|- rs1 : x25<br> - rs2 : x9<br> - rd : x8<br> - rs2_val == 65536<br> - rs1_val == 1024<br>                                                                                                                                                 |[0x80000254]:slt fp, s9, s1<br> [0x80000258]:sw fp, 12(t1)<br>     |
|  20|[0x8000325c]<br>0x00000001|- rs1 : x24<br> - rs2 : x11<br> - rd : x26<br> - rs2_val == 8192<br> - rs1_val == 2048<br>                                                                                                                                                |[0x80000268]:slt s10, s8, a1<br> [0x8000026c]:sw s10, 16(t1)<br>   |
|  21|[0x80003260]<br>0x00000001|- rs1 : x17<br> - rs2 : x5<br> - rd : x2<br> - rs1_val == 4096<br>                                                                                                                                                                        |[0x80000278]:slt sp, a7, t0<br> [0x8000027c]:sw sp, 20(t1)<br>     |
|  22|[0x80003264]<br>0x00000000|- rs1 : x11<br> - rs2 : x31<br> - rd : x21<br> - rs1_val == 8192<br>                                                                                                                                                                      |[0x80000288]:slt s5, a1, t6<br> [0x8000028c]:sw s5, 24(t1)<br>     |
|  23|[0x80003268]<br>0x00000000|- rs1 : x27<br> - rs2 : x28<br> - rd : x1<br> - rs2_val == -16777217<br> - rs1_val == 16384<br>                                                                                                                                           |[0x8000029c]:slt ra, s11, t3<br> [0x800002a0]:sw ra, 28(t1)<br>    |
|  24|[0x8000326c]<br>0x00000000|- rs1 : x1<br> - rs2 : x8<br> - rd : x14<br> - rs2_val == -17<br> - rs1_val == 32768<br>                                                                                                                                                  |[0x800002ac]:slt a4, ra, fp<br> [0x800002b0]:sw a4, 32(t1)<br>     |
|  25|[0x80003270]<br>0x00000001|- rs1 : x23<br> - rs2 : x20<br> - rd : x4<br> - rs2_val == 1048576<br> - rs1_val == 65536<br>                                                                                                                                             |[0x800002bc]:slt tp, s7, s4<br> [0x800002c0]:sw tp, 36(t1)<br>     |
|  26|[0x80003274]<br>0x00000000|- rs1 : x19<br> - rs2 : x0<br> - rd : x7<br> - rs1_val == 131072<br>                                                                                                                                                                      |[0x800002d0]:slt t2, s3, zero<br> [0x800002d4]:sw t2, 40(t1)<br>   |
|  27|[0x80003278]<br>0x00000001|- rs1 : x29<br> - rs2 : x3<br> - rd : x9<br> - rs2_val == 268435456<br> - rs1_val == 262144<br>                                                                                                                                           |[0x800002e0]:slt s1, t4, gp<br> [0x800002e4]:sw s1, 44(t1)<br>     |
|  28|[0x8000327c]<br>0x00000001|- rs1 : x7<br> - rs2 : x21<br> - rd : x24<br> - rs2_val == 1073741824<br> - rs1_val == 524288<br>                                                                                                                                         |[0x800002f0]:slt s8, t2, s5<br> [0x800002f4]:sw s8, 48(t1)<br>     |
|  29|[0x80003280]<br>0x00000000|- rs1 : x12<br> - rs2 : x27<br> - rd : x15<br> - rs1_val == 1048576<br>                                                                                                                                                                   |[0x80000300]:slt a5, a2, s11<br> [0x80000304]:sw a5, 52(t1)<br>    |
|  30|[0x80003284]<br>0x00000000|- rs1 : x31<br> - rs2 : x4<br> - rd : x12<br> - rs2_val == 64<br> - rs1_val == 2097152<br>                                                                                                                                                |[0x80000310]:slt a2, t6, tp<br> [0x80000314]:sw a2, 56(t1)<br>     |
|  31|[0x80003288]<br>0x00000000|- rs1 : x18<br> - rs2 : x26<br> - rd : x3<br> - rs1_val == 4194304<br>                                                                                                                                                                    |[0x80000320]:slt gp, s2, s10<br> [0x80000324]:sw gp, 60(t1)<br>    |
|  32|[0x8000328c]<br>0x00000000|- rs1 : x13<br> - rs2 : x12<br> - rd : x25<br> - rs2_val == 32768<br> - rs1_val == 8388608<br>                                                                                                                                            |[0x80000330]:slt s9, a3, a2<br> [0x80000334]:sw s9, 64(t1)<br>     |
|  33|[0x80003290]<br>0x00000001|- rs2_val == 33554432<br> - rs1_val == 16777216<br>                                                                                                                                                                                       |[0x80000348]:slt a2, a0, a1<br> [0x8000034c]:sw a2, 0(ra)<br>      |
|  34|[0x80003294]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                                                                                                                                 |[0x80000358]:slt a2, a0, a1<br> [0x8000035c]:sw a2, 4(ra)<br>      |
|  35|[0x80003298]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                                                                                                                 |[0x80000368]:slt a2, a0, a1<br> [0x8000036c]:sw a2, 8(ra)<br>      |
|  36|[0x8000329c]<br>0x00000000|- rs2_val == -536870913<br> - rs1_val == 134217728<br>                                                                                                                                                                                    |[0x8000037c]:slt a2, a0, a1<br> [0x80000380]:sw a2, 12(ra)<br>     |
|  37|[0x800032a0]<br>0x00000000|- rs2_val == 262144<br> - rs1_val == 536870912<br>                                                                                                                                                                                        |[0x8000038c]:slt a2, a0, a1<br> [0x80000390]:sw a2, 16(ra)<br>     |
|  38|[0x800032a4]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                                                                                                               |[0x8000039c]:slt a2, a0, a1<br> [0x800003a0]:sw a2, 20(ra)<br>     |
|  39|[0x800032a8]<br>0x00000000|- rs1_val == -2<br>                                                                                                                                                                                                                       |[0x800003ac]:slt a2, a0, a1<br> [0x800003b0]:sw a2, 24(ra)<br>     |
|  40|[0x800032ac]<br>0x00000000|- rs2_val == -16385<br> - rs1_val == -3<br>                                                                                                                                                                                               |[0x800003c0]:slt a2, a0, a1<br> [0x800003c4]:sw a2, 28(ra)<br>     |
|  41|[0x800032b0]<br>0x00000001|- rs1_val == -5<br>                                                                                                                                                                                                                       |[0x800003d0]:slt a2, a0, a1<br> [0x800003d4]:sw a2, 32(ra)<br>     |
|  42|[0x800032b4]<br>0x00000000|- rs1_val == -9<br>                                                                                                                                                                                                                       |[0x800003e0]:slt a2, a0, a1<br> [0x800003e4]:sw a2, 36(ra)<br>     |
|  43|[0x800032b8]<br>0x00000001|- rs1_val == -17<br>                                                                                                                                                                                                                      |[0x800003f0]:slt a2, a0, a1<br> [0x800003f4]:sw a2, 40(ra)<br>     |
|  44|[0x800032bc]<br>0x00000001|- rs2_val == 524288<br> - rs1_val == -33<br>                                                                                                                                                                                              |[0x80000400]:slt a2, a0, a1<br> [0x80000404]:sw a2, 44(ra)<br>     |
|  45|[0x800032c0]<br>0x00000001|- rs2_val == -262145<br> - rs1_val == -2097153<br>                                                                                                                                                                                        |[0x80000418]:slt a2, a0, a1<br> [0x8000041c]:sw a2, 48(ra)<br>     |
|  46|[0x800032c4]<br>0x00000000|- rs2_val == -1048577<br> - rs1_val == -16385<br>                                                                                                                                                                                         |[0x80000430]:slt a2, a0, a1<br> [0x80000434]:sw a2, 52(ra)<br>     |
|  47|[0x800032c8]<br>0x00000001|- rs2_val == -8388609<br> - rs1_val == -134217729<br>                                                                                                                                                                                     |[0x80000448]:slt a2, a0, a1<br> [0x8000044c]:sw a2, 56(ra)<br>     |
|  48|[0x800032cc]<br>0x00000000|- rs2_val == -33554433<br>                                                                                                                                                                                                                |[0x8000045c]:slt a2, a0, a1<br> [0x80000460]:sw a2, 60(ra)<br>     |
|  49|[0x800032d0]<br>0x00000000|- rs2_val == -67108865<br> - rs1_val == -129<br>                                                                                                                                                                                          |[0x80000470]:slt a2, a0, a1<br> [0x80000474]:sw a2, 64(ra)<br>     |
|  50|[0x800032d4]<br>0x00000000|- rs2_val == -134217729<br> - rs1_val == -65<br>                                                                                                                                                                                          |[0x80000484]:slt a2, a0, a1<br> [0x80000488]:sw a2, 68(ra)<br>     |
|  51|[0x800032d8]<br>0x00000000|- rs2_val == -1073741825<br>                                                                                                                                                                                                              |[0x80000498]:slt a2, a0, a1<br> [0x8000049c]:sw a2, 72(ra)<br>     |
|  52|[0x800032dc]<br>0x00000000|- rs2_val == -1431655766<br>                                                                                                                                                                                                              |[0x800004ac]:slt a2, a0, a1<br> [0x800004b0]:sw a2, 76(ra)<br>     |
|  53|[0x800032e0]<br>0x00000001|- rs1_val == -257<br>                                                                                                                                                                                                                     |[0x800004bc]:slt a2, a0, a1<br> [0x800004c0]:sw a2, 80(ra)<br>     |
|  54|[0x800032e4]<br>0x00000001|- rs2_val == -2<br> - rs1_val == -513<br>                                                                                                                                                                                                 |[0x800004cc]:slt a2, a0, a1<br> [0x800004d0]:sw a2, 84(ra)<br>     |
|  55|[0x800032e8]<br>0x00000000|- rs1_val == -2049<br>                                                                                                                                                                                                                    |[0x800004e4]:slt a2, a0, a1<br> [0x800004e8]:sw a2, 88(ra)<br>     |
|  56|[0x800032ec]<br>0x00000001|- rs1_val == -4097<br>                                                                                                                                                                                                                    |[0x800004f8]:slt a2, a0, a1<br> [0x800004fc]:sw a2, 92(ra)<br>     |
|  57|[0x800032f0]<br>0x00000001|- rs1_val == -8193<br>                                                                                                                                                                                                                    |[0x8000050c]:slt a2, a0, a1<br> [0x80000510]:sw a2, 96(ra)<br>     |
|  58|[0x800032f4]<br>0x00000001|- rs2_val == -2049<br> - rs1_val == -32769<br>                                                                                                                                                                                            |[0x80000524]:slt a2, a0, a1<br> [0x80000528]:sw a2, 100(ra)<br>    |
|  59|[0x800032f8]<br>0x00000001|- rs1_val == -65537<br>                                                                                                                                                                                                                   |[0x80000538]:slt a2, a0, a1<br> [0x8000053c]:sw a2, 104(ra)<br>    |
|  60|[0x800032fc]<br>0x00000001|- rs1_val == -131073<br>                                                                                                                                                                                                                  |[0x8000054c]:slt a2, a0, a1<br> [0x80000550]:sw a2, 108(ra)<br>    |
|  61|[0x80003300]<br>0x00000001|- rs1_val == -262145<br>                                                                                                                                                                                                                  |[0x80000560]:slt a2, a0, a1<br> [0x80000564]:sw a2, 112(ra)<br>    |
|  62|[0x80003304]<br>0x00000001|- rs2_val == 134217728<br> - rs1_val == -524289<br>                                                                                                                                                                                       |[0x80000574]:slt a2, a0, a1<br> [0x80000578]:sw a2, 116(ra)<br>    |
|  63|[0x80003308]<br>0x00000001|- rs1_val == -1048577<br>                                                                                                                                                                                                                 |[0x80000588]:slt a2, a0, a1<br> [0x8000058c]:sw a2, 120(ra)<br>    |
|  64|[0x8000330c]<br>0x00000001|- rs1_val == -4194305<br>                                                                                                                                                                                                                 |[0x8000059c]:slt a2, a0, a1<br> [0x800005a0]:sw a2, 124(ra)<br>    |
|  65|[0x80003310]<br>0x00000001|- rs1_val == -8388609<br>                                                                                                                                                                                                                 |[0x800005b0]:slt a2, a0, a1<br> [0x800005b4]:sw a2, 128(ra)<br>    |
|  66|[0x80003314]<br>0x00000001|- rs2_val == 4096<br> - rs1_val == -16777217<br>                                                                                                                                                                                          |[0x800005c4]:slt a2, a0, a1<br> [0x800005c8]:sw a2, 132(ra)<br>    |
|  67|[0x80003318]<br>0x00000001|- rs2_val == 1431655765<br> - rs1_val == -33554433<br>                                                                                                                                                                                    |[0x800005dc]:slt a2, a0, a1<br> [0x800005e0]:sw a2, 136(ra)<br>    |
|  68|[0x8000331c]<br>0x00000001|- rs1_val == -67108865<br>                                                                                                                                                                                                                |[0x800005f0]:slt a2, a0, a1<br> [0x800005f4]:sw a2, 140(ra)<br>    |
|  69|[0x80003320]<br>0x00000001|- rs1_val == -536870913<br>                                                                                                                                                                                                               |[0x80000608]:slt a2, a0, a1<br> [0x8000060c]:sw a2, 144(ra)<br>    |
|  70|[0x80003324]<br>0x00000001|- rs2_val == -65537<br> - rs1_val == -1073741825<br>                                                                                                                                                                                      |[0x80000620]:slt a2, a0, a1<br> [0x80000624]:sw a2, 148(ra)<br>    |
|  71|[0x80003328]<br>0x00000000|- rs1_val == 1431655765<br>                                                                                                                                                                                                               |[0x80000634]:slt a2, a0, a1<br> [0x80000638]:sw a2, 152(ra)<br>    |
|  72|[0x8000332c]<br>0x00000001|- rs1_val == -1431655766<br>                                                                                                                                                                                                              |[0x8000064c]:slt a2, a0, a1<br> [0x80000650]:sw a2, 156(ra)<br>    |
|  73|[0x80003330]<br>0x00000001|- rs2_val == 2<br>                                                                                                                                                                                                                        |[0x80000660]:slt a2, a0, a1<br> [0x80000664]:sw a2, 160(ra)<br>    |
|  74|[0x80003334]<br>0x00000001|- rs2_val == 4<br>                                                                                                                                                                                                                        |[0x80000670]:slt a2, a0, a1<br> [0x80000674]:sw a2, 164(ra)<br>    |
|  75|[0x80003338]<br>0x00000001|- rs2_val == 32<br>                                                                                                                                                                                                                       |[0x80000684]:slt a2, a0, a1<br> [0x80000688]:sw a2, 168(ra)<br>    |
|  76|[0x8000333c]<br>0x00000001|- rs2_val == 128<br>                                                                                                                                                                                                                      |[0x80000698]:slt a2, a0, a1<br> [0x8000069c]:sw a2, 172(ra)<br>    |
|  77|[0x80003340]<br>0x00000001|- rs2_val == 256<br>                                                                                                                                                                                                                      |[0x800006a8]:slt a2, a0, a1<br> [0x800006ac]:sw a2, 176(ra)<br>    |
|  78|[0x80003344]<br>0x00000000|- rs2_val == 2048<br>                                                                                                                                                                                                                     |[0x800006c0]:slt a2, a0, a1<br> [0x800006c4]:sw a2, 180(ra)<br>    |
|  79|[0x80003348]<br>0x00000001|- rs2_val == 16384<br>                                                                                                                                                                                                                    |[0x800006d0]:slt a2, a0, a1<br> [0x800006d4]:sw a2, 184(ra)<br>    |
|  80|[0x8000334c]<br>0x00000001|- rs2_val == 131072<br>                                                                                                                                                                                                                   |[0x800006e0]:slt a2, a0, a1<br> [0x800006e4]:sw a2, 188(ra)<br>    |
|  81|[0x80003350]<br>0x00000001|- rs2_val == 2097152<br>                                                                                                                                                                                                                  |[0x800006f0]:slt a2, a0, a1<br> [0x800006f4]:sw a2, 192(ra)<br>    |
|  82|[0x80003354]<br>0x00000001|- rs2_val == 4194304<br>                                                                                                                                                                                                                  |[0x80000704]:slt a2, a0, a1<br> [0x80000708]:sw a2, 196(ra)<br>    |
|  83|[0x80003358]<br>0x00000001|- rs2_val == 16777216<br>                                                                                                                                                                                                                 |[0x80000714]:slt a2, a0, a1<br> [0x80000718]:sw a2, 200(ra)<br>    |
|  84|[0x8000335c]<br>0x00000001|- rs2_val == 67108864<br>                                                                                                                                                                                                                 |[0x80000728]:slt a2, a0, a1<br> [0x8000072c]:sw a2, 204(ra)<br>    |
|  85|[0x80003360]<br>0x00000001|- rs2_val == 536870912<br>                                                                                                                                                                                                                |[0x80000738]:slt a2, a0, a1<br> [0x8000073c]:sw a2, 208(ra)<br>    |
|  86|[0x80003364]<br>0x00000000|- rs2_val == -3<br>                                                                                                                                                                                                                       |[0x80000748]:slt a2, a0, a1<br> [0x8000074c]:sw a2, 212(ra)<br>    |
|  87|[0x80003368]<br>0x00000000|- rs1_val == (2**(xlen-1)-1)<br> - rs2_val == -5<br> - rs1_val == 2147483647<br>                                                                                                                                                          |[0x8000075c]:slt a2, a0, a1<br> [0x80000760]:sw a2, 216(ra)<br>    |
|  88|[0x8000336c]<br>0x00000000|- rs2_val == -33<br>                                                                                                                                                                                                                      |[0x8000076c]:slt a2, a0, a1<br> [0x80000770]:sw a2, 220(ra)<br>    |
|  89|[0x80003370]<br>0x00000001|- rs2_val == -65<br>                                                                                                                                                                                                                      |[0x8000077c]:slt a2, a0, a1<br> [0x80000780]:sw a2, 224(ra)<br>    |
|  90|[0x80003374]<br>0x00000000|- rs2_val == -129<br>                                                                                                                                                                                                                     |[0x8000078c]:slt a2, a0, a1<br> [0x80000790]:sw a2, 228(ra)<br>    |
|  91|[0x80003378]<br>0x00000001|- rs2_val == -257<br>                                                                                                                                                                                                                     |[0x8000079c]:slt a2, a0, a1<br> [0x800007a0]:sw a2, 232(ra)<br>    |
|  92|[0x8000337c]<br>0x00000001|- rs2_val == -513<br>                                                                                                                                                                                                                     |[0x800007b0]:slt a2, a0, a1<br> [0x800007b4]:sw a2, 236(ra)<br>    |
|  93|[0x80003380]<br>0x00000001|- rs2_val == -1025<br>                                                                                                                                                                                                                    |[0x800007c4]:slt a2, a0, a1<br> [0x800007c8]:sw a2, 240(ra)<br>    |
|  94|[0x80003384]<br>0x00000000|- rs2_val == -4097<br>                                                                                                                                                                                                                    |[0x800007d8]:slt a2, a0, a1<br> [0x800007dc]:sw a2, 244(ra)<br>    |
|  95|[0x80003388]<br>0x00000000|- rs2_val == -8193<br>                                                                                                                                                                                                                    |[0x800007ec]:slt a2, a0, a1<br> [0x800007f0]:sw a2, 248(ra)<br>    |
|  96|[0x8000338c]<br>0x00000000|- rs2_val == -32769<br>                                                                                                                                                                                                                   |[0x80000800]:slt a2, a0, a1<br> [0x80000804]:sw a2, 252(ra)<br>    |
