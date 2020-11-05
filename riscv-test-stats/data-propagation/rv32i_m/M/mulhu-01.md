
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000880')]      |
| SIG_REGION                | [('0x80003204', '0x800033a8', '105 words')]      |
| COV_LABELS                | mulhu      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/mulhu-01.S/mulhu-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 102      |
| STAT1                     | 99      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000840]:mulhu a2, a0, a1
      [0x80000844]:sw a2, 324(sp)
 -- Signature Address: 0x80003398 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0
      - rs1_val == (-2**(xlen-1))
      - rs1_val == -2147483648




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000850]:mulhu a2, a0, a1
      [0x80000854]:sw a2, 328(sp)
 -- Signature Address: 0x8000339c Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - opcode : mulhu
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
      [0x80000864]:mulhu a2, a0, a1
      [0x80000868]:sw a2, 332(sp)
 -- Signature Address: 0x800033a0 Data: 0x00001FFB
 -- Redundant Coverpoints hit by the op
      - opcode : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -2097153
      - rs1_val == 8192






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

|s.no|        signature         |                                                                                                          coverpoints                                                                                                           |                                code                                 |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000000|- opcode : mulhu<br> - rs1 : x19<br> - rs2 : x19<br> - rd : x19<br> - rs1 == rs2 == rd<br> - rs1_val == rs2_val<br> - rs2_val == 0<br> - rs1_val == 0<br>                                                                       |[0x80000108]:mulhu s3, s3, s3<br> [0x8000010c]:sw s3, 0(a1)<br>      |
|   2|[0x80003214]<br>0x00000000|- rs1 : x31<br> - rs2 : x3<br> - rd : x3<br> - rs2 == rd != rs1<br> - rs1_val != rs2_val<br> - rs2_val == -2<br>                                                                                                                |[0x80000118]:mulhu gp, t6, gp<br> [0x8000011c]:sw gp, 4(a1)<br>      |
|   3|[0x80003218]<br>0x07FFFFFF|- rs1 : x8<br> - rs2 : x20<br> - rd : x8<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 268435456<br> - rs1_val == 2147483647<br>                                   |[0x8000012c]:mulhu fp, fp, s4<br> [0x80000130]:sw fp, 8(a1)<br>      |
|   4|[0x8000321c]<br>0x00000000|- rs1 : x17<br> - rs2 : x26<br> - rd : x14<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == 1<br> - rs2_val == 1048576<br>                                                                                        |[0x8000013c]:mulhu a4, a7, s10<br> [0x80000140]:sw a4, 12(a1)<br>    |
|   5|[0x80003220]<br>0x40000000|- rs1 : x2<br> - rs2 : x2<br> - rd : x10<br> - rs1 == rs2 != rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs2_val == (-2**(xlen-1))<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -2147483648<br> |[0x8000014c]:mulhu a0, sp, sp<br> [0x80000150]:sw a0, 16(a1)<br>     |
|   6|[0x80003224]<br>0x77FFFFFE|- rs1 : x16<br> - rs2 : x6<br> - rd : x1<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == -268435457<br>                                                         |[0x80000164]:mulhu ra, a6, t1<br> [0x80000168]:sw ra, 20(a1)<br>     |
|   7|[0x80003228]<br>0x00000000|- rs1 : x30<br> - rs2 : x16<br> - rd : x12<br> - rs2_val == 1<br> - rs1_val == -65<br>                                                                                                                                          |[0x80000174]:mulhu a2, t5, a6<br> [0x80000178]:sw a2, 24(a1)<br>     |
|   8|[0x8000322c]<br>0xFFFF5FFE|- rs1 : x9<br> - rs2 : x31<br> - rd : x20<br> - rs2_val == -32769<br> - rs1_val == -8193<br>                                                                                                                                    |[0x8000018c]:mulhu s4, s1, t6<br> [0x80000190]:sw s4, 28(a1)<br>     |
|   9|[0x80003230]<br>0x00000004|- rs1 : x27<br> - rs2 : x15<br> - rd : x30<br> - rs2_val == 131072<br> - rs1_val == 131072<br>                                                                                                                                  |[0x8000019c]:mulhu t5, s11, a5<br> [0x800001a0]:sw t5, 32(a1)<br>    |
|  10|[0x80003234]<br>0x00000000|- rs1 : x21<br> - rs2 : x24<br> - rd : x5<br> - rs2_val == 33554432<br> - rs1_val == 2<br>                                                                                                                                      |[0x800001ac]:mulhu t0, s5, s8<br> [0x800001b0]:sw t0, 36(a1)<br>     |
|  11|[0x80003238]<br>0x00000003|- rs1 : x7<br> - rs2 : x21<br> - rd : x13<br> - rs1_val > 0 and rs2_val < 0<br> - rs2_val == -17<br> - rs1_val == 4<br>                                                                                                         |[0x800001bc]:mulhu a3, t2, s5<br> [0x800001c0]:sw a3, 40(a1)<br>     |
|  12|[0x8000323c]<br>0x00000000|- rs1 : x18<br> - rs2 : x9<br> - rd : x4<br> - rs1_val == 8<br>                                                                                                                                                                 |[0x800001cc]:mulhu tp, s2, s1<br> [0x800001d0]:sw tp, 44(a1)<br>     |
|  13|[0x80003240]<br>0x00000000|- rs1 : x0<br> - rs2 : x8<br> - rd : x2<br>                                                                                                                                                                                     |[0x800001dc]:mulhu sp, zero, fp<br> [0x800001e0]:sw sp, 48(a1)<br>   |
|  14|[0x80003244]<br>0x0000000F|- rs1 : x24<br> - rs2 : x14<br> - rd : x9<br> - rs1_val == 32<br>                                                                                                                                                               |[0x800001f0]:mulhu s1, s8, a4<br> [0x800001f4]:sw s1, 52(a1)<br>     |
|  15|[0x80003248]<br>0x00000000|- rs1 : x1<br> - rs2 : x25<br> - rd : x28<br> - rs2_val == 4<br> - rs1_val == 64<br>                                                                                                                                            |[0x80000200]:mulhu t3, ra, s9<br> [0x80000204]:sw t3, 56(a1)<br>     |
|  16|[0x8000324c]<br>0x00000000|- rs1 : x6<br> - rs2 : x27<br> - rd : x7<br> - rs2_val == 16384<br> - rs1_val == 128<br>                                                                                                                                        |[0x80000210]:mulhu t2, t1, s11<br> [0x80000214]:sw t2, 60(a1)<br>    |
|  17|[0x80003250]<br>0x000000FF|- rs1 : x3<br> - rs2 : x23<br> - rd : x25<br> - rs2_val == -2049<br> - rs1_val == 256<br>                                                                                                                                       |[0x80000224]:mulhu s9, gp, s7<br> [0x80000228]:sw s9, 64(a1)<br>     |
|  18|[0x80003254]<br>0x000001FF|- rs1 : x25<br> - rs2 : x7<br> - rd : x24<br> - rs1_val == 512<br>                                                                                                                                                              |[0x8000023c]:mulhu s8, s9, t2<br> [0x80000240]:sw s8, 0(sp)<br>      |
|  19|[0x80003258]<br>0x000003FF|- rs1 : x5<br> - rs2 : x17<br> - rd : x21<br> - rs1_val == 1024<br>                                                                                                                                                             |[0x8000024c]:mulhu s5, t0, a7<br> [0x80000250]:sw s5, 4(sp)<br>      |
|  20|[0x8000325c]<br>0x00000555|- rs1 : x15<br> - rs2 : x30<br> - rd : x22<br> - rs2_val == -1431655766<br> - rs1_val == 2048<br>                                                                                                                               |[0x80000264]:mulhu s6, a5, t5<br> [0x80000268]:sw s6, 8(sp)<br>      |
|  21|[0x80003260]<br>0x00000DFF|- rs1 : x13<br> - rs2 : x1<br> - rd : x15<br> - rs2_val == -536870913<br> - rs1_val == 4096<br>                                                                                                                                 |[0x80000278]:mulhu a5, a3, ra<br> [0x8000027c]:sw a5, 12(sp)<br>     |
|  22|[0x80003264]<br>0x00000000|- rs1 : x10<br> - rs2 : x13<br> - rd : x0<br> - rs2_val == -2097153<br> - rs1_val == 8192<br>                                                                                                                                   |[0x8000028c]:mulhu zero, a0, a3<br> [0x80000290]:sw zero, 16(sp)<br> |
|  23|[0x80003268]<br>0x00003FFF|- rs1 : x4<br> - rs2 : x29<br> - rd : x6<br> - rs1_val == 16384<br>                                                                                                                                                             |[0x8000029c]:mulhu t1, tp, t4<br> [0x800002a0]:sw t1, 20(sp)<br>     |
|  24|[0x8000326c]<br>0x00000000|- rs1 : x20<br> - rs2 : x10<br> - rd : x31<br> - rs2_val == 512<br> - rs1_val == 32768<br>                                                                                                                                      |[0x800002ac]:mulhu t6, s4, a0<br> [0x800002b0]:sw t6, 24(sp)<br>     |
|  25|[0x80003270]<br>0x0000FFFF|- rs1 : x11<br> - rs2 : x4<br> - rd : x18<br> - rs2_val == -1025<br> - rs1_val == 65536<br>                                                                                                                                     |[0x800002bc]:mulhu s2, a1, tp<br> [0x800002c0]:sw s2, 28(sp)<br>     |
|  26|[0x80003274]<br>0x00000200|- rs1 : x23<br> - rs2 : x11<br> - rd : x29<br> - rs2_val == 8388608<br> - rs1_val == 262144<br>                                                                                                                                 |[0x800002cc]:mulhu t4, s7, a1<br> [0x800002d0]:sw t4, 32(sp)<br>     |
|  27|[0x80003278]<br>0x0006FFFF|- rs1 : x26<br> - rs2 : x5<br> - rd : x23<br> - rs1_val == 524288<br>                                                                                                                                                           |[0x800002e0]:mulhu s7, s10, t0<br> [0x800002e4]:sw s7, 36(sp)<br>    |
|  28|[0x8000327c]<br>0x00000008|- rs1 : x29<br> - rs2 : x18<br> - rd : x26<br> - rs2_val == 32768<br> - rs1_val == 1048576<br>                                                                                                                                  |[0x800002f0]:mulhu s10, t4, s2<br> [0x800002f4]:sw s10, 40(sp)<br>   |
|  29|[0x80003280]<br>0x00000000|- rs1 : x14<br> - rs2 : x22<br> - rd : x11<br> - rs2_val == 32<br> - rs1_val == 2097152<br>                                                                                                                                     |[0x80000300]:mulhu a1, a4, s6<br> [0x80000304]:sw a1, 44(sp)<br>     |
|  30|[0x80003284]<br>0x00000000|- rs1 : x28<br> - rs2 : x0<br> - rd : x27<br> - rs1_val == 4194304<br>                                                                                                                                                          |[0x80000314]:mulhu s11, t3, zero<br> [0x80000318]:sw s11, 48(sp)<br> |
|  31|[0x80003288]<br>0x00000040|- rs1 : x22<br> - rs2 : x12<br> - rd : x16<br> - rs1_val == 8388608<br>                                                                                                                                                         |[0x80000324]:mulhu a6, s6, a2<br> [0x80000328]:sw a6, 52(sp)<br>     |
|  32|[0x8000328c]<br>0x00FFFFFF|- rs1 : x12<br> - rs2 : x28<br> - rd : x17<br> - rs2_val == -9<br> - rs1_val == 16777216<br>                                                                                                                                    |[0x80000334]:mulhu a7, a2, t3<br> [0x80000338]:sw a7, 56(sp)<br>     |
|  33|[0x80003290]<br>0x01FFFFFF|- rs1_val == 33554432<br>                                                                                                                                                                                                       |[0x80000344]:mulhu a2, a0, a1<br> [0x80000348]:sw a2, 60(sp)<br>     |
|  34|[0x80003294]<br>0x03FBFFFF|- rs2_val == -16777217<br> - rs1_val == 67108864<br>                                                                                                                                                                            |[0x80000358]:mulhu a2, a0, a1<br> [0x8000035c]:sw a2, 64(sp)<br>     |
|  35|[0x80003298]<br>0x00000008|- rs2_val == 256<br> - rs1_val == 134217728<br>                                                                                                                                                                                 |[0x80000368]:mulhu a2, a0, a1<br> [0x8000036c]:sw a2, 68(sp)<br>     |
|  36|[0x8000329c]<br>0x00010000|- rs1_val == 268435456<br>                                                                                                                                                                                                      |[0x80000378]:mulhu a2, a0, a1<br> [0x8000037c]:sw a2, 72(sp)<br>     |
|  37|[0x800032a0]<br>0x1FFBFFFF|- rs1_val == 536870912<br>                                                                                                                                                                                                      |[0x8000038c]:mulhu a2, a0, a1<br> [0x80000390]:sw a2, 76(sp)<br>     |
|  38|[0x800032a4]<br>0x3FFFFFFF|- rs1_val == 1073741824<br>                                                                                                                                                                                                     |[0x8000039c]:mulhu a2, a0, a1<br> [0x800003a0]:sw a2, 80(sp)<br>     |
|  39|[0x800032a8]<br>0xFFFFFFED|- rs1_val == -2<br>                                                                                                                                                                                                             |[0x800003ac]:mulhu a2, a0, a1<br> [0x800003b0]:sw a2, 84(sp)<br>     |
|  40|[0x800032ac]<br>0x0001FFFF|- rs1_val == -3<br>                                                                                                                                                                                                             |[0x800003bc]:mulhu a2, a0, a1<br> [0x800003c0]:sw a2, 88(sp)<br>     |
|  41|[0x800032b0]<br>0xFFFFFF7A|- rs2_val == -129<br> - rs1_val == -5<br>                                                                                                                                                                                       |[0x800003cc]:mulhu a2, a0, a1<br> [0x800003d0]:sw a2, 92(sp)<br>     |
|  42|[0x800032b4]<br>0x0000001F|- rs1_val == -9<br>                                                                                                                                                                                                             |[0x800003dc]:mulhu a2, a0, a1<br> [0x800003e0]:sw a2, 96(sp)<br>     |
|  43|[0x800032b8]<br>0x0003FFFF|- rs2_val == 262144<br> - rs1_val == -17<br>                                                                                                                                                                                    |[0x800003ec]:mulhu a2, a0, a1<br> [0x800003f0]:sw a2, 100(sp)<br>    |
|  44|[0x800032bc]<br>0xAAAAAA94|- rs1_val == -33<br>                                                                                                                                                                                                            |[0x80000400]:mulhu a2, a0, a1<br> [0x80000404]:sw a2, 104(sp)<br>    |
|  45|[0x800032c0]<br>0xFFBC00FE|- rs2_val == -262145<br> - rs1_val == -4194305<br>                                                                                                                                                                              |[0x80000418]:mulhu a2, a0, a1<br> [0x8000041c]:sw a2, 108(sp)<br>    |
|  46|[0x800032c4]<br>0xFFF7FFFA|- rs2_val == -524289<br>                                                                                                                                                                                                        |[0x8000042c]:mulhu a2, a0, a1<br> [0x80000430]:sw a2, 112(sp)<br>    |
|  47|[0x800032c8]<br>0x00FFEFFF|- rs2_val == -1048577<br>                                                                                                                                                                                                       |[0x80000440]:mulhu a2, a0, a1<br> [0x80000444]:sw a2, 116(sp)<br>    |
|  48|[0x800032cc]<br>0x000000FF|- rs2_val == -4194305<br>                                                                                                                                                                                                       |[0x80000454]:mulhu a2, a0, a1<br> [0x80000458]:sw a2, 120(sp)<br>    |
|  49|[0x800032d0]<br>0x00000003|- rs2_val == -33554433<br>                                                                                                                                                                                                      |[0x80000468]:mulhu a2, a0, a1<br> [0x8000046c]:sw a2, 124(sp)<br>    |
|  50|[0x800032d4]<br>0x0001F7FF|- rs2_val == -67108865<br>                                                                                                                                                                                                      |[0x8000047c]:mulhu a2, a0, a1<br> [0x80000480]:sw a2, 128(sp)<br>    |
|  51|[0x800032d8]<br>0xF7FFC1FE|- rs2_val == -134217729<br> - rs1_val == -16385<br>                                                                                                                                                                             |[0x80000494]:mulhu a2, a0, a1<br> [0x80000498]:sw a2, 132(sp)<br>    |
|  52|[0x800032dc]<br>0xEFFFFFFE|- rs2_val == -268435457<br>                                                                                                                                                                                                     |[0x800004a8]:mulhu a2, a0, a1<br> [0x800004ac]:sw a2, 136(sp)<br>    |
|  53|[0x800032e0]<br>0xBFFFE7FE|- rs2_val == -1073741825<br>                                                                                                                                                                                                    |[0x800004c0]:mulhu a2, a0, a1<br> [0x800004c4]:sw a2, 140(sp)<br>    |
|  54|[0x800032e4]<br>0x555554FF|- rs2_val == 1431655765<br> - rs1_val == -257<br>                                                                                                                                                                               |[0x800004d4]:mulhu a2, a0, a1<br> [0x800004d8]:sw a2, 144(sp)<br>    |
|  55|[0x800032e8]<br>0x3FFFFFDE|- rs1_val == -129<br>                                                                                                                                                                                                           |[0x800004e8]:mulhu a2, a0, a1<br> [0x800004ec]:sw a2, 148(sp)<br>    |
|  56|[0x800032ec]<br>0xFFBFFDFE|- rs1_val == -513<br>                                                                                                                                                                                                           |[0x800004fc]:mulhu a2, a0, a1<br> [0x80000500]:sw a2, 152(sp)<br>    |
|  57|[0x800032f0]<br>0x00000005|- rs1_val == -1025<br>                                                                                                                                                                                                          |[0x8000050c]:mulhu a2, a0, a1<br> [0x80000510]:sw a2, 156(sp)<br>    |
|  58|[0x800032f4]<br>0x0000007F|- rs2_val == 128<br> - rs1_val == -2049<br>                                                                                                                                                                                     |[0x80000520]:mulhu a2, a0, a1<br> [0x80000524]:sw a2, 160(sp)<br>    |
|  59|[0x800032f8]<br>0xFFFFDFFE|- rs2_val == -4097<br> - rs1_val == -4097<br>                                                                                                                                                                                   |[0x80000538]:mulhu a2, a0, a1<br> [0x8000053c]:sw a2, 164(sp)<br>    |
|  60|[0x800032fc]<br>0xFFFF7BFE|- rs1_val == -32769<br>                                                                                                                                                                                                         |[0x8000054c]:mulhu a2, a0, a1<br> [0x80000550]:sw a2, 168(sp)<br>    |
|  61|[0x80003300]<br>0xFFFEFEFE|- rs2_val == -257<br> - rs1_val == -65537<br>                                                                                                                                                                                   |[0x80000560]:mulhu a2, a0, a1<br> [0x80000564]:sw a2, 172(sp)<br>    |
|  62|[0x80003304]<br>0x00000004|- rs1_val == -131073<br>                                                                                                                                                                                                        |[0x80000574]:mulhu a2, a0, a1<br> [0x80000578]:sw a2, 176(sp)<br>    |
|  63|[0x80003308]<br>0x0000003F|- rs2_val == 64<br> - rs1_val == -262145<br>                                                                                                                                                                                    |[0x80000588]:mulhu a2, a0, a1<br> [0x8000058c]:sw a2, 180(sp)<br>    |
|  64|[0x8000330c]<br>0xFFF0003E|- rs1_val == -524289<br>                                                                                                                                                                                                        |[0x800005a0]:mulhu a2, a0, a1<br> [0x800005a4]:sw a2, 184(sp)<br>    |
|  65|[0x80003310]<br>0xAA9FFFFE|- rs1_val == -1048577<br>                                                                                                                                                                                                       |[0x800005b8]:mulhu a2, a0, a1<br> [0x800005bc]:sw a2, 188(sp)<br>    |
|  66|[0x80003314]<br>0xFFDC007E|- rs1_val == -2097153<br>                                                                                                                                                                                                       |[0x800005d0]:mulhu a2, a0, a1<br> [0x800005d4]:sw a2, 192(sp)<br>    |
|  67|[0x80003318]<br>0xFE807FFE|- rs1_val == -8388609<br>                                                                                                                                                                                                       |[0x800005e8]:mulhu a2, a0, a1<br> [0x800005ec]:sw a2, 196(sp)<br>    |
|  68|[0x8000331c]<br>0xBF3FFFFF|- rs1_val == -16777217<br>                                                                                                                                                                                                      |[0x800005fc]:mulhu a2, a0, a1<br> [0x80000600]:sw a2, 200(sp)<br>    |
|  69|[0x80003320]<br>0xEE1FFFFE|- rs1_val == -33554433<br>                                                                                                                                                                                                      |[0x80000614]:mulhu a2, a0, a1<br> [0x80000618]:sw a2, 204(sp)<br>    |
|  70|[0x80003324]<br>0xFA07FFFE|- rs1_val == -67108865<br>                                                                                                                                                                                                      |[0x8000062c]:mulhu a2, a0, a1<br> [0x80000630]:sw a2, 208(sp)<br>    |
|  71|[0x80003328]<br>0x00001EFF|- rs2_val == 8192<br> - rs1_val == -134217729<br>                                                                                                                                                                               |[0x80000640]:mulhu a2, a0, a1<br> [0x80000644]:sw a2, 212(sp)<br>    |
|  72|[0x8000332c]<br>0xA7FFFFFF|- rs1_val == -536870913<br>                                                                                                                                                                                                     |[0x80000654]:mulhu a2, a0, a1<br> [0x80000658]:sw a2, 216(sp)<br>    |
|  73|[0x80003330]<br>0x00000005|- rs2_val == 8<br> - rs1_val == -1073741825<br>                                                                                                                                                                                 |[0x80000668]:mulhu a2, a0, a1<br> [0x8000066c]:sw a2, 220(sp)<br>    |
|  74|[0x80003334]<br>0x54AAAAAA|- rs1_val == 1431655765<br>                                                                                                                                                                                                     |[0x80000680]:mulhu a2, a0, a1<br> [0x80000684]:sw a2, 224(sp)<br>    |
|  75|[0x80003338]<br>0x000000AA|- rs1_val == -1431655766<br>                                                                                                                                                                                                    |[0x80000694]:mulhu a2, a0, a1<br> [0x80000698]:sw a2, 228(sp)<br>    |
|  76|[0x8000333c]<br>0x00000001|- rs2_val == 2<br>                                                                                                                                                                                                              |[0x800006a4]:mulhu a2, a0, a1<br> [0x800006a8]:sw a2, 232(sp)<br>    |
|  77|[0x80003340]<br>0x0000000F|- rs2_val == 16<br>                                                                                                                                                                                                             |[0x800006b4]:mulhu a2, a0, a1<br> [0x800006b8]:sw a2, 236(sp)<br>    |
|  78|[0x80003344]<br>0x00000020|- rs2_val == 1024<br>                                                                                                                                                                                                           |[0x800006c4]:mulhu a2, a0, a1<br> [0x800006c8]:sw a2, 240(sp)<br>    |
|  79|[0x80003348]<br>0x000007FF|- rs2_val == 2048<br>                                                                                                                                                                                                           |[0x800006d8]:mulhu a2, a0, a1<br> [0x800006dc]:sw a2, 244(sp)<br>    |
|  80|[0x8000334c]<br>0x00000FFF|- rs2_val == 4096<br>                                                                                                                                                                                                           |[0x800006e8]:mulhu a2, a0, a1<br> [0x800006ec]:sw a2, 248(sp)<br>    |
|  81|[0x80003350]<br>0x00007FFF|- rs2_val == 65536<br>                                                                                                                                                                                                          |[0x800006fc]:mulhu a2, a0, a1<br> [0x80000700]:sw a2, 252(sp)<br>    |
|  82|[0x80003354]<br>0x0007FFDF|- rs2_val == 524288<br>                                                                                                                                                                                                         |[0x80000710]:mulhu a2, a0, a1<br> [0x80000714]:sw a2, 256(sp)<br>    |
|  83|[0x80003358]<br>0x001BFFFF|- rs2_val == 2097152<br>                                                                                                                                                                                                        |[0x80000724]:mulhu a2, a0, a1<br> [0x80000728]:sw a2, 260(sp)<br>    |
|  84|[0x8000335c]<br>0x00000400|- rs2_val == 4194304<br>                                                                                                                                                                                                        |[0x80000734]:mulhu a2, a0, a1<br> [0x80000738]:sw a2, 264(sp)<br>    |
|  85|[0x80003360]<br>0x00000000|- rs2_val == 16777216<br> - rs1_val == 16<br>                                                                                                                                                                                   |[0x80000744]:mulhu a2, a0, a1<br> [0x80000748]:sw a2, 268(sp)<br>    |
|  86|[0x80003364]<br>0x03FFFDFF|- rs2_val == 67108864<br>                                                                                                                                                                                                       |[0x80000758]:mulhu a2, a0, a1<br> [0x8000075c]:sw a2, 272(sp)<br>    |
|  87|[0x80003368]<br>0x00040000|- rs2_val == 134217728<br>                                                                                                                                                                                                      |[0x80000768]:mulhu a2, a0, a1<br> [0x8000076c]:sw a2, 276(sp)<br>    |
|  88|[0x8000336c]<br>0x1FFFFFFF|- rs2_val == 536870912<br>                                                                                                                                                                                                      |[0x80000778]:mulhu a2, a0, a1<br> [0x8000077c]:sw a2, 280(sp)<br>    |
|  89|[0x80003370]<br>0x00010000|- rs2_val == 1073741824<br>                                                                                                                                                                                                     |[0x80000788]:mulhu a2, a0, a1<br> [0x8000078c]:sw a2, 284(sp)<br>    |
|  90|[0x80003374]<br>0x3FFFFFFE|- rs2_val == -3<br>                                                                                                                                                                                                             |[0x8000079c]:mulhu a2, a0, a1<br> [0x800007a0]:sw a2, 288(sp)<br>    |
|  91|[0x80003378]<br>0x003FFFFF|- rs2_val == -5<br>                                                                                                                                                                                                             |[0x800007ac]:mulhu a2, a0, a1<br> [0x800007b0]:sw a2, 292(sp)<br>    |
|  92|[0x8000337c]<br>0xFFFFFF5E|- rs2_val == -33<br>                                                                                                                                                                                                            |[0x800007bc]:mulhu a2, a0, a1<br> [0x800007c0]:sw a2, 296(sp)<br>    |
|  93|[0x80003380]<br>0x00000002|- rs2_val == -65<br>                                                                                                                                                                                                            |[0x800007cc]:mulhu a2, a0, a1<br> [0x800007d0]:sw a2, 300(sp)<br>    |
|  94|[0x80003384]<br>0xFFFFF9FE|- rs2_val == -513<br>                                                                                                                                                                                                           |[0x800007dc]:mulhu a2, a0, a1<br> [0x800007e0]:sw a2, 304(sp)<br>    |
|  95|[0x80003388]<br>0x00FFFFDF|- rs2_val == -8193<br>                                                                                                                                                                                                          |[0x800007f0]:mulhu a2, a0, a1<br> [0x800007f4]:sw a2, 308(sp)<br>    |
|  96|[0x8000338c]<br>0xFFFFBF7E|- rs2_val == -16385<br>                                                                                                                                                                                                         |[0x80000804]:mulhu a2, a0, a1<br> [0x80000808]:sw a2, 312(sp)<br>    |
|  97|[0x80003390]<br>0xFBFF03FE|- rs2_val == -65537<br>                                                                                                                                                                                                         |[0x8000081c]:mulhu a2, a0, a1<br> [0x80000820]:sw a2, 316(sp)<br>    |
|  98|[0x80003394]<br>0x00000005|- rs2_val == -131073<br>                                                                                                                                                                                                        |[0x80000830]:mulhu a2, a0, a1<br> [0x80000834]:sw a2, 320(sp)<br>    |
|  99|[0x800033a4]<br>0x003FDFFF|- rs2_val == -8388609<br>                                                                                                                                                                                                       |[0x80000878]:mulhu a2, a0, a1<br> [0x8000087c]:sw a2, 336(sp)<br>    |
