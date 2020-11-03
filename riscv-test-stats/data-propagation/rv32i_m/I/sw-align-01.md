
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000900')]      |
| SIG_REGION                | [('0x80003204', '0x80003324', '72 words')]      |
| COV_LABELS                | sw-align      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sw-align-01.S/sw-align-01.S    |
| Total Number of coverpoints| 141     |
| Total Signature Updates   | 69      |
| Total Coverpoints Covered | 141      |
| STAT1                     | 68      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008e8]:sw a1, 32(a0)
 -- Signature Address: 0x80003320 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : sw
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - rs2_val == 0
      - ea_align == 0 and (imm_val % 4) == 0
      - imm_val > 0






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

|s.no|        signature         |                                                                     coverpoints                                                                     |               code               |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------|
|   1|[0x80003210]<br>0x00000200|- opcode : sw<br> - rs1 : x13<br> - rs2 : x22<br> - rs1 != rs2<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val > 0<br> - rs2_val == 512<br> |[0x80000110]:sw s6, 64(a3)<br>    |
|   2|[0x80003214]<br>0xFFFBFFFF|- rs1 : x26<br> - rs2 : x2<br> - ea_align == 0 and (imm_val % 4) == 1<br> - imm_val < 0<br> - rs2_val == -262145<br>                                 |[0x80000130]:sw sp, 4089(s10)<br> |
|   3|[0x80003218]<br>0xFFFEFFFF|- rs1 : x10<br> - rs2 : x19<br> - ea_align == 0 and (imm_val % 4) == 2<br> - rs2_val == -65537<br>                                                   |[0x80000150]:sw s3, 6(a0)<br>     |
|   4|[0x8000321c]<br>0xFFFFFFFC|- rs1 : x14<br> - rs2 : x6<br> - ea_align == 0 and (imm_val % 4) == 3<br>                                                                            |[0x8000016c]:sw t1, 3583(a4)<br>  |
|   5|[0x80003220]<br>0x00100000|- rs1 : x24<br> - rs2 : x11<br> - imm_val == 0<br> - rs2_val == 1048576<br>                                                                          |[0x80000188]:sw a1, 0(s8)<br>     |
|   6|[0x80003224]<br>0x80000000|- rs1 : x8<br> - rs2 : x29<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br>                                                          |[0x800001a4]:sw t4, 1024(fp)<br>  |
|   7|[0x80003228]<br>0x00000000|- rs1 : x18<br> - rs2 : x0<br> - rs2_val == 0<br>                                                                                                    |[0x800001c0]:sw zero, 32(s2)<br>  |
|   8|[0x8000322c]<br>0x7FFFFFFF|- rs1 : x28<br> - rs2 : x12<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br>                                                         |[0x800001e0]:sw a2, 9(t3)<br>     |
|   9|[0x80003230]<br>0x00000001|- rs1 : x23<br> - rs2 : x13<br> - rs2_val == 1<br>                                                                                                   |[0x800001fc]:sw a3, 4089(s7)<br>  |
|  10|[0x80003234]<br>0x00000002|- rs1 : x21<br> - rs2 : x7<br> - rs2_val == 2<br>                                                                                                    |[0x80000218]:sw t2, 4094(s5)<br>  |
|  11|[0x80003238]<br>0x00000004|- rs1 : x16<br> - rs2 : x28<br> - rs2_val == 4<br>                                                                                                   |[0x80000234]:sw t3, 4063(a6)<br>  |
|  12|[0x8000323c]<br>0x00000008|- rs1 : x17<br> - rs2 : x3<br> - rs2_val == 8<br>                                                                                                    |[0x80000250]:sw gp, 4094(a7)<br>  |
|  13|[0x80003240]<br>0x00000010|- rs1 : x31<br> - rs2 : x30<br> - rs2_val == 16<br>                                                                                                  |[0x8000026c]:sw t5, 3967(t6)<br>  |
|  14|[0x80003244]<br>0x00000020|- rs1 : x12<br> - rs2 : x1<br> - rs2_val == 32<br>                                                                                                   |[0x80000288]:sw ra, 4087(a2)<br>  |
|  15|[0x80003248]<br>0x00000040|- rs1 : x11<br> - rs2 : x16<br> - rs2_val == 64<br>                                                                                                  |[0x800002a4]:sw a6, 1(a1)<br>     |
|  16|[0x8000324c]<br>0x00000080|- rs1 : x3<br> - rs2 : x5<br> - rs2_val == 128<br>                                                                                                   |[0x800002c0]:sw t0, 2047(gp)<br>  |
|  17|[0x80003250]<br>0x00000100|- rs1 : x4<br> - rs2 : x21<br> - rs2_val == 256<br>                                                                                                  |[0x800002dc]:sw s5, 4090(tp)<br>  |
|  18|[0x80003254]<br>0x00000400|- rs1 : x30<br> - rs2 : x17<br> - rs2_val == 1024<br>                                                                                                |[0x800002f8]:sw a7, 3(t5)<br>     |
|  19|[0x80003258]<br>0x00000800|- rs1 : x19<br> - rs2 : x26<br> - rs2_val == 2048<br>                                                                                                |[0x80000318]:sw s10, 2047(s3)<br> |
|  20|[0x8000325c]<br>0x00001000|- rs1 : x25<br> - rs2 : x8<br> - rs2_val == 4096<br>                                                                                                 |[0x80000334]:sw fp, 6(s9)<br>     |
|  21|[0x80003260]<br>0x00002000|- rs1 : x29<br> - rs2 : x4<br> - rs2_val == 8192<br>                                                                                                 |[0x80000350]:sw tp, 4087(t4)<br>  |
|  22|[0x80003264]<br>0x00004000|- rs1 : x1<br> - rs2 : x9<br> - rs2_val == 16384<br>                                                                                                 |[0x8000036c]:sw s1, 2048(ra)<br>  |
|  23|[0x80003268]<br>0x00008000|- rs1 : x7<br> - rs2 : x18<br> - rs2_val == 32768<br>                                                                                                |[0x80000390]:sw s2, 6(t2)<br>     |
|  24|[0x8000326c]<br>0x00010000|- rs1 : x9<br> - rs2 : x23<br> - rs2_val == 65536<br>                                                                                                |[0x800003ac]:sw s7, 128(s1)<br>   |
|  25|[0x80003270]<br>0x00020000|- rs1 : x20<br> - rs2 : x15<br> - rs2_val == 131072<br>                                                                                              |[0x800003c8]:sw a5, 7(s4)<br>     |
|  26|[0x80003274]<br>0x00040000|- rs1 : x22<br> - rs2 : x10<br> - rs2_val == 262144<br>                                                                                              |[0x800003e4]:sw a0, 4063(s6)<br>  |
|  27|[0x80003278]<br>0x00080000|- rs1 : x5<br> - rs2 : x27<br> - rs2_val == 524288<br>                                                                                               |[0x80000400]:sw s11, 4093(t0)<br> |
|  28|[0x8000327c]<br>0x00200000|- rs1 : x27<br> - rs2 : x31<br> - rs2_val == 2097152<br>                                                                                             |[0x8000041c]:sw t6, 1(s11)<br>    |
|  29|[0x80003280]<br>0x00400000|- rs1 : x15<br> - rs2 : x14<br> - rs2_val == 4194304<br>                                                                                             |[0x80000438]:sw a4, 4090(a5)<br>  |
|  30|[0x80003284]<br>0x00800000|- rs1 : x2<br> - rs2 : x20<br> - rs2_val == 8388608<br>                                                                                              |[0x80000454]:sw s4, 4093(sp)<br>  |
|  31|[0x80003288]<br>0x01000000|- rs1 : x6<br> - rs2 : x24<br> - rs2_val == 16777216<br>                                                                                             |[0x80000470]:sw s8, 2048(t1)<br>  |
|  32|[0x8000328c]<br>0x02000000|- rs2 : x25<br> - rs2_val == 33554432<br>                                                                                                            |[0x8000048c]:sw s9, 3(s6)<br>     |
|  33|[0x80003290]<br>0x04000000|- rs2_val == 67108864<br>                                                                                                                            |[0x800004a8]:sw a1, 7(a0)<br>     |
|  34|[0x80003294]<br>0x08000000|- rs2_val == 134217728<br>                                                                                                                           |[0x800004c4]:sw a1, 9(a0)<br>     |
|  35|[0x80003298]<br>0x10000000|- rs2_val == 268435456<br>                                                                                                                           |[0x800004e0]:sw a1, 1(a0)<br>     |
|  36|[0x8000329c]<br>0x20000000|- rs2_val == 536870912<br>                                                                                                                           |[0x800004fc]:sw a1, 4063(a0)<br>  |
|  37|[0x800032a0]<br>0x40000000|- rs2_val == 1073741824<br>                                                                                                                          |[0x80000518]:sw a1, 16(a0)<br>    |
|  38|[0x800032a4]<br>0xFFBFFFFF|- rs2_val == -4194305<br>                                                                                                                            |[0x80000538]:sw a1, 4094(a0)<br>  |
|  39|[0x800032a8]<br>0xFF7FFFFF|- rs2_val == -8388609<br>                                                                                                                            |[0x80000558]:sw a1, 4088(a0)<br>  |
|  40|[0x800032ac]<br>0xFEFFFFFF|- rs2_val == -16777217<br>                                                                                                                           |[0x80000578]:sw a1, 4095(a0)<br>  |
|  41|[0x800032b0]<br>0xFDFFFFFF|- rs2_val == -33554433<br>                                                                                                                           |[0x80000598]:sw a1, 4087(a0)<br>  |
|  42|[0x800032b4]<br>0xFBFFFFFF|- rs2_val == -67108865<br>                                                                                                                           |[0x800005b8]:sw a1, 7(a0)<br>     |
|  43|[0x800032b8]<br>0xF7FFFFFF|- rs2_val == -134217729<br>                                                                                                                          |[0x800005d8]:sw a1, 9(a0)<br>     |
|  44|[0x800032bc]<br>0xEFFFFFFF|- rs2_val == -268435457<br>                                                                                                                          |[0x800005f8]:sw a1, 1(a0)<br>     |
|  45|[0x800032c0]<br>0xDFFFFFFF|- rs2_val == -536870913<br>                                                                                                                          |[0x80000618]:sw a1, 7(a0)<br>     |
|  46|[0x800032c4]<br>0xBFFFFFFF|- rs2_val == -1073741825<br>                                                                                                                         |[0x80000638]:sw a1, 2(a0)<br>     |
|  47|[0x800032c8]<br>0x55555555|- rs2_val == 1431655765<br>                                                                                                                          |[0x80000658]:sw a1, 256(a0)<br>   |
|  48|[0x800032cc]<br>0xAAAAAAAA|- rs2_val == -1431655766<br>                                                                                                                         |[0x80000678]:sw a1, 4031(a0)<br>  |
|  49|[0x800032d0]<br>0xFFFFFFFE|- rs2_val == -2<br>                                                                                                                                  |[0x80000694]:sw a1, 4031(a0)<br>  |
|  50|[0x800032d4]<br>0xFFFFFFFD|- rs2_val == -3<br>                                                                                                                                  |[0x800006b0]:sw a1, 3071(a0)<br>  |
|  51|[0x800032d8]<br>0xFFFFFFFB|- rs2_val == -5<br>                                                                                                                                  |[0x800006cc]:sw a1, 4031(a0)<br>  |
|  52|[0x800032dc]<br>0xFFFFFFF7|- rs2_val == -9<br>                                                                                                                                  |[0x800006e8]:sw a1, 128(a0)<br>   |
|  53|[0x800032e0]<br>0xFFFFFFEF|- rs2_val == -17<br>                                                                                                                                 |[0x80000704]:sw a1, 1(a0)<br>     |
|  54|[0x800032e4]<br>0xFFFFFFDF|- rs2_val == -33<br>                                                                                                                                 |[0x80000720]:sw a1, 4063(a0)<br>  |
|  55|[0x800032e8]<br>0xFFFFFFBF|- rs2_val == -65<br>                                                                                                                                 |[0x8000073c]:sw a1, 0(a0)<br>     |
|  56|[0x800032ec]<br>0xFFFFFF7F|- rs2_val == -129<br>                                                                                                                                |[0x80000758]:sw a1, 4091(a0)<br>  |
|  57|[0x800032f0]<br>0xFFFFFEFF|- rs2_val == -257<br>                                                                                                                                |[0x80000774]:sw a1, 3839(a0)<br>  |
|  58|[0x800032f4]<br>0xFFFFFDFF|- rs2_val == -513<br>                                                                                                                                |[0x80000790]:sw a1, 4088(a0)<br>  |
|  59|[0x800032f8]<br>0xFFFFFBFF|- rs2_val == -1025<br>                                                                                                                               |[0x800007ac]:sw a1, 4079(a0)<br>  |
|  60|[0x800032fc]<br>0xFFFFF7FF|- rs2_val == -2049<br>                                                                                                                               |[0x800007cc]:sw a1, 1024(a0)<br>  |
|  61|[0x80003300]<br>0xFFFFEFFF|- rs2_val == -4097<br>                                                                                                                               |[0x800007ec]:sw a1, 256(a0)<br>   |
|  62|[0x80003304]<br>0xFFFFDFFF|- rs2_val == -8193<br>                                                                                                                               |[0x8000080c]:sw a1, 1(a0)<br>     |
|  63|[0x80003308]<br>0xFFFFBFFF|- rs2_val == -16385<br>                                                                                                                              |[0x8000082c]:sw a1, 512(a0)<br>   |
|  64|[0x8000330c]<br>0xFFFF7FFF|- rs2_val == -32769<br>                                                                                                                              |[0x8000084c]:sw a1, 9(a0)<br>     |
|  65|[0x80003310]<br>0xFFFDFFFF|- rs2_val == -131073<br>                                                                                                                             |[0x8000086c]:sw a1, 4(a0)<br>     |
|  66|[0x80003314]<br>0xFFF7FFFF|- rs2_val == -524289<br>                                                                                                                             |[0x8000088c]:sw a1, 4079(a0)<br>  |
|  67|[0x80003318]<br>0xFFEFFFFF|- rs2_val == -1048577<br>                                                                                                                            |[0x800008ac]:sw a1, 32(a0)<br>    |
|  68|[0x8000331c]<br>0xFFDFFFFF|- rs2_val == -2097153<br>                                                                                                                            |[0x800008cc]:sw a1, 4079(a0)<br>  |
