
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
| SIG_REGION                | [('0x80003204', '0x80003394', '100 words')]      |
| COV_LABELS                | mulhu      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/mulhu-01.S/mulhu-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
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
      [0x80000824]:mulhu a2, a0, a1
      [0x80000828]:sw a2, 316(sp)
 -- Signature Address: 0x80003384 Data: 0x7FFFF7FF
 -- Redundant Coverpoints hit by the op
      - opcode : mulhu
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
      [0x80000834]:mulhu a2, a0, a1
      [0x80000838]:sw a2, 320(sp)
 -- Signature Address: 0x80003388 Data: 0x7FFFFFFB
 -- Redundant Coverpoints hit by the op
      - opcode : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == (-2**(xlen-1))
      - rs2_val == -2147483648
      - rs1_val == -9




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000844]:mulhu a2, a0, a1
      [0x80000848]:sw a2, 324(sp)
 -- Signature Address: 0x8000338c Data: 0x00C00000
 -- Redundant Coverpoints hit by the op
      - opcode : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 16777216






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

|s.no|        signature         |                                                                                            coverpoints                                                                                             |                                code                                 |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003204]<br>0xFFFFDFFE|- opcode : mulhu<br> - rs1 : x23<br> - rs2 : x23<br> - rd : x15<br> - rs1 == rs2 != rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br> - rs2_val == -4097<br> - rs1_val == -4097<br> |[0x8000010c]:mulhu a5, s7, s7<br> [0x80000110]:sw a5, 0(a1)<br>      |
|   2|[0x80003208]<br>0x00000000|- rs1 : x17<br> - rs2 : x22<br> - rd : x3<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val != rs2_val<br> - rs1_val == 0<br>                                                             |[0x80000120]:mulhu gp, a7, s6<br> [0x80000124]:sw gp, 4(a1)<br>      |
|   3|[0x8000320c]<br>0x0003FFFF|- rs1 : x8<br> - rs2 : x20<br> - rd : x20<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 524288<br> - rs1_val == 2147483647<br>         |[0x80000134]:mulhu s4, fp, s4<br> [0x80000138]:sw s4, 8(a1)<br>      |
|   4|[0x80003210]<br>0x00000000|- rs1 : x4<br> - rs2 : x12<br> - rd : x4<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == 1<br>                                                                            |[0x80000144]:mulhu tp, tp, a2<br> [0x80000148]:sw tp, 12(a1)<br>     |
|   5|[0x80003214]<br>0x40000000|- rs1 : x31<br> - rs2 : x31<br> - rd : x31<br> - rs1 == rs2 == rd<br> - rs2_val == (-2**(xlen-1))<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -2147483648<br>     |[0x80000154]:mulhu t6, t6, t6<br> [0x80000158]:sw t6, 16(a1)<br>     |
|   6|[0x80003218]<br>0x00000000|- rs1 : x2<br> - rs2 : x28<br> - rd : x5<br> - rs2_val == 0<br> - rs1_val == -3<br>                                                                                                                 |[0x80000164]:mulhu t0, sp, t3<br> [0x80000168]:sw t0, 20(a1)<br>     |
|   7|[0x8000321c]<br>0x0003FFFF|- rs1 : x28<br> - rs2 : x21<br> - rd : x6<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == 524288<br>                                                                  |[0x80000178]:mulhu t1, t3, s5<br> [0x8000017c]:sw t1, 24(a1)<br>     |
|   8|[0x80003220]<br>0x00000000|- rs1 : x5<br> - rs2 : x17<br> - rd : x1<br> - rs2_val == 1<br> - rs1_val == 262144<br>                                                                                                             |[0x80000188]:mulhu ra, t0, a7<br> [0x8000018c]:sw ra, 28(a1)<br>     |
|   9|[0x80003224]<br>0x00000000|- rs1 : x18<br> - rs2 : x30<br> - rd : x0<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == 16777216<br>                                                                                           |[0x80000198]:mulhu zero, s2, t5<br> [0x8000019c]:sw zero, 32(a1)<br> |
|  10|[0x80003228]<br>0xFFFFDFFE|- rs1 : x13<br> - rs2 : x4<br> - rd : x16<br>                                                                                                                                                       |[0x800001b0]:mulhu a6, a3, tp<br> [0x800001b4]:sw a6, 36(a1)<br>     |
|  11|[0x8000322c]<br>0x00000000|- rs1 : x24<br> - rs2 : x1<br> - rd : x30<br> - rs2_val == 2048<br> - rs1_val == 2<br>                                                                                                              |[0x800001c4]:mulhu t5, s8, ra<br> [0x800001c8]:sw t5, 40(a1)<br>     |
|  12|[0x80003230]<br>0x00000003|- rs1 : x7<br> - rs2 : x24<br> - rd : x22<br> - rs2_val == -524289<br> - rs1_val == 4<br>                                                                                                           |[0x800001d8]:mulhu s6, t2, s8<br> [0x800001dc]:sw s6, 44(a1)<br>     |
|  13|[0x80003234]<br>0x00000007|- rs1 : x15<br> - rs2 : x2<br> - rd : x10<br> - rs2_val == -33554433<br> - rs1_val == 8<br>                                                                                                         |[0x800001ec]:mulhu a0, a5, sp<br> [0x800001f0]:sw a0, 48(a1)<br>     |
|  14|[0x80003238]<br>0x00000000|- rs1 : x10<br> - rs2 : x9<br> - rd : x19<br> - rs2_val == 32768<br> - rs1_val == 16<br>                                                                                                            |[0x800001fc]:mulhu s3, a0, s1<br> [0x80000200]:sw s3, 52(a1)<br>     |
|  15|[0x8000323c]<br>0x00000000|- rs1 : x26<br> - rs2 : x8<br> - rd : x29<br> - rs2_val == 64<br> - rs1_val == 32<br>                                                                                                               |[0x8000020c]:mulhu t4, s10, fp<br> [0x80000210]:sw t4, 56(a1)<br>    |
|  16|[0x80003240]<br>0x0000003F|- rs1 : x3<br> - rs2 : x5<br> - rd : x21<br> - rs2_val == -129<br> - rs1_val == 64<br>                                                                                                              |[0x8000021c]:mulhu s5, gp, t0<br> [0x80000220]:sw s5, 60(a1)<br>     |
|  17|[0x80003244]<br>0x0000007F|- rs1 : x6<br> - rs2 : x14<br> - rd : x2<br> - rs2_val == -65<br> - rs1_val == 128<br>                                                                                                              |[0x8000022c]:mulhu sp, t1, a4<br> [0x80000230]:sw sp, 64(a1)<br>     |
|  18|[0x80003248]<br>0x00000000|- rs1 : x12<br> - rs2 : x15<br> - rd : x28<br> - rs1_val == 256<br>                                                                                                                                 |[0x80000244]:mulhu t3, a2, a5<br> [0x80000248]:sw t3, 0(sp)<br>      |
|  19|[0x8000324c]<br>0x000001FE|- rs1 : x14<br> - rs2 : x3<br> - rd : x25<br> - rs2_val == -8388609<br> - rs1_val == 512<br>                                                                                                        |[0x80000258]:mulhu s9, a4, gp<br> [0x8000025c]:sw s9, 4(sp)<br>      |
|  20|[0x80003250]<br>0x00000000|- rs1 : x27<br> - rs2 : x29<br> - rd : x18<br> - rs1_val == 1024<br>                                                                                                                                |[0x80000268]:mulhu s2, s11, t4<br> [0x8000026c]:sw s2, 8(sp)<br>     |
|  21|[0x80003254]<br>0x00000000|- rs1 : x0<br> - rs2 : x7<br> - rd : x9<br> - rs2_val == -8193<br>                                                                                                                                  |[0x80000280]:mulhu s1, zero, t2<br> [0x80000284]:sw s1, 12(sp)<br>   |
|  22|[0x80003258]<br>0x00000000|- rs1 : x20<br> - rs2 : x0<br> - rd : x26<br> - rs1_val == 4096<br>                                                                                                                                 |[0x80000294]:mulhu s10, s4, zero<br> [0x80000298]:sw s10, 16(sp)<br> |
|  23|[0x8000325c]<br>0x00000000|- rs1 : x29<br> - rs2 : x16<br> - rd : x14<br> - rs2_val == 262144<br> - rs1_val == 8192<br>                                                                                                        |[0x800002a4]:mulhu a4, t4, a6<br> [0x800002a8]:sw a4, 20(sp)<br>     |
|  24|[0x80003260]<br>0x00003FFF|- rs1 : x22<br> - rs2 : x11<br> - rd : x17<br> - rs1_val == 16384<br>                                                                                                                               |[0x800002b4]:mulhu a7, s6, a1<br> [0x800002b8]:sw a7, 24(sp)<br>     |
|  25|[0x80003264]<br>0x00000008|- rs1 : x11<br> - rs2 : x26<br> - rd : x8<br> - rs2_val == 1048576<br> - rs1_val == 32768<br>                                                                                                       |[0x800002c4]:mulhu fp, a1, s10<br> [0x800002c8]:sw fp, 28(sp)<br>    |
|  26|[0x80003268]<br>0x00005555|- rs1 : x25<br> - rs2 : x19<br> - rd : x27<br> - rs2_val == 1431655765<br> - rs1_val == 65536<br>                                                                                                   |[0x800002d8]:mulhu s11, s9, s3<br> [0x800002dc]:sw s11, 32(sp)<br>   |
|  27|[0x8000326c]<br>0x0001FFBF|- rs1 : x21<br> - rs2 : x13<br> - rd : x24<br> - rs2_val == -2097153<br> - rs1_val == 131072<br>                                                                                                    |[0x800002ec]:mulhu s8, s5, a3<br> [0x800002f0]:sw s8, 36(sp)<br>     |
|  28|[0x80003270]<br>0x00000000|- rs1 : x16<br> - rs2 : x6<br> - rd : x11<br> - rs2_val == 16<br> - rs1_val == 1048576<br>                                                                                                          |[0x800002fc]:mulhu a1, a6, t1<br> [0x80000300]:sw a1, 40(sp)<br>     |
|  29|[0x80003274]<br>0x001FFFFF|- rs1 : x19<br> - rs2 : x18<br> - rd : x7<br> - rs1_val == 2097152<br>                                                                                                                              |[0x8000030c]:mulhu t2, s3, s2<br> [0x80000310]:sw t2, 44(sp)<br>     |
|  30|[0x80003278]<br>0x003FFFFF|- rs1 : x9<br> - rs2 : x10<br> - rd : x12<br> - rs2_val == -5<br> - rs1_val == 4194304<br>                                                                                                          |[0x8000031c]:mulhu a2, s1, a0<br> [0x80000320]:sw a2, 48(sp)<br>     |
|  31|[0x8000327c]<br>0x007FFFFF|- rs1 : x30<br> - rs2 : x27<br> - rd : x23<br> - rs1_val == 8388608<br>                                                                                                                             |[0x8000032c]:mulhu s7, t5, s11<br> [0x80000330]:sw s7, 52(sp)<br>    |
|  32|[0x80003280]<br>0x00000000|- rs1 : x1<br> - rs2 : x25<br> - rd : x13<br> - rs2_val == 4<br> - rs1_val == 16777216<br>                                                                                                          |[0x8000033c]:mulhu a3, ra, s9<br> [0x80000340]:sw a3, 56(sp)<br>     |
|  33|[0x80003284]<br>0x00008000|- rs2_val == 4194304<br> - rs1_val == 33554432<br>                                                                                                                                                  |[0x8000034c]:mulhu a2, a0, a1<br> [0x80000350]:sw a2, 60(sp)<br>     |
|  34|[0x80003288]<br>0x03FFFFFF|- rs2_val == -3<br> - rs1_val == 67108864<br>                                                                                                                                                       |[0x8000035c]:mulhu a2, a0, a1<br> [0x80000360]:sw a2, 64(sp)<br>     |
|  35|[0x8000328c]<br>0x00000010|- rs2_val == 512<br> - rs1_val == 134217728<br>                                                                                                                                                     |[0x8000036c]:mulhu a2, a0, a1<br> [0x80000370]:sw a2, 68(sp)<br>     |
|  36|[0x80003290]<br>0x0FFFFDFF|- rs1_val == 268435456<br>                                                                                                                                                                          |[0x80000380]:mulhu a2, a0, a1<br> [0x80000384]:sw a2, 72(sp)<br>     |
|  37|[0x80003294]<br>0x00000000|- rs1_val == 536870912<br>                                                                                                                                                                          |[0x80000390]:mulhu a2, a0, a1<br> [0x80000394]:sw a2, 76(sp)<br>     |
|  38|[0x80003298]<br>0x2AAAAAAA|- rs2_val == -1431655766<br> - rs1_val == 1073741824<br>                                                                                                                                            |[0x800003a4]:mulhu a2, a0, a1<br> [0x800003a8]:sw a2, 80(sp)<br>     |
|  39|[0x8000329c]<br>0x0007FFFF|- rs1_val == -2<br>                                                                                                                                                                                 |[0x800003b4]:mulhu a2, a0, a1<br> [0x800003b8]:sw a2, 84(sp)<br>     |
|  40|[0x800032a0]<br>0x3FFFFFFD|- rs1_val == -5<br>                                                                                                                                                                                 |[0x800003c8]:mulhu a2, a0, a1<br> [0x800003cc]:sw a2, 88(sp)<br>     |
|  41|[0x800032a4]<br>0x01FFFFFF|- rs2_val == 33554432<br> - rs1_val == -17<br>                                                                                                                                                      |[0x800003d8]:mulhu a2, a0, a1<br> [0x800003dc]:sw a2, 92(sp)<br>     |
|  42|[0x800032a8]<br>0xFFFBFFDE|- rs2_val == -262145<br> - rs1_val == -33<br>                                                                                                                                                       |[0x800003ec]:mulhu a2, a0, a1<br> [0x800003f0]:sw a2, 96(sp)<br>     |
|  43|[0x800032ac]<br>0xFFFFFFBB|- rs1_val == -65<br>                                                                                                                                                                                |[0x800003fc]:mulhu a2, a0, a1<br> [0x80000400]:sw a2, 100(sp)<br>    |
|  44|[0x800032b0]<br>0x0FFEFFFF|- rs2_val == -1048577<br>                                                                                                                                                                           |[0x80000410]:mulhu a2, a0, a1<br> [0x80000414]:sw a2, 104(sp)<br>    |
|  45|[0x800032b4]<br>0xFFA007FE|- rs2_val == -4194305<br> - rs1_val == -2097153<br>                                                                                                                                                 |[0x80000428]:mulhu a2, a0, a1<br> [0x8000042c]:sw a2, 108(sp)<br>    |
|  46|[0x800032b8]<br>0xFEFFFFFE|- rs2_val == -16777217<br>                                                                                                                                                                          |[0x8000043c]:mulhu a2, a0, a1<br> [0x80000440]:sw a2, 112(sp)<br>    |
|  47|[0x800032bc]<br>0xFB03FFFE|- rs2_val == -67108865<br> - rs1_val == -16777217<br>                                                                                                                                               |[0x80000454]:mulhu a2, a0, a1<br> [0x80000458]:sw a2, 116(sp)<br>    |
|  48|[0x800032c0]<br>0x00000002|- rs2_val == -134217729<br>                                                                                                                                                                         |[0x80000468]:mulhu a2, a0, a1<br> [0x8000046c]:sw a2, 120(sp)<br>    |
|  49|[0x800032c4]<br>0x000077FF|- rs2_val == -268435457<br>                                                                                                                                                                         |[0x8000047c]:mulhu a2, a0, a1<br> [0x80000480]:sw a2, 124(sp)<br>    |
|  50|[0x800032c8]<br>0x0000037F|- rs2_val == -536870913<br>                                                                                                                                                                         |[0x80000490]:mulhu a2, a0, a1<br> [0x80000494]:sw a2, 128(sp)<br>    |
|  51|[0x800032cc]<br>0x00000004|- rs2_val == -1073741825<br>                                                                                                                                                                        |[0x800004a4]:mulhu a2, a0, a1<br> [0x800004a8]:sw a2, 132(sp)<br>    |
|  52|[0x800032d0]<br>0x001FFFFF|- rs2_val == 2097152<br> - rs1_val == -129<br>                                                                                                                                                      |[0x800004b4]:mulhu a2, a0, a1<br> [0x800004b8]:sw a2, 136(sp)<br>    |
|  53|[0x800032d4]<br>0xBFFFFF3F|- rs1_val == -257<br>                                                                                                                                                                               |[0x800004c4]:mulhu a2, a0, a1<br> [0x800004c8]:sw a2, 140(sp)<br>    |
|  54|[0x800032d8]<br>0x3FFFFF7E|- rs1_val == -513<br>                                                                                                                                                                               |[0x800004d8]:mulhu a2, a0, a1<br> [0x800004dc]:sw a2, 144(sp)<br>    |
|  55|[0x800032dc]<br>0xDFFFFC7E|- rs1_val == -1025<br>                                                                                                                                                                              |[0x800004ec]:mulhu a2, a0, a1<br> [0x800004f0]:sw a2, 148(sp)<br>    |
|  56|[0x800032e0]<br>0x555552AA|- rs1_val == -2049<br>                                                                                                                                                                              |[0x80000504]:mulhu a2, a0, a1<br> [0x80000508]:sw a2, 152(sp)<br>    |
|  57|[0x800032e4]<br>0xFFFFDFFE|- rs1_val == -8193<br>                                                                                                                                                                              |[0x80000518]:mulhu a2, a0, a1<br> [0x8000051c]:sw a2, 156(sp)<br>    |
|  58|[0x800032e8]<br>0xFFFFBFEE|- rs2_val == -17<br> - rs1_val == -16385<br>                                                                                                                                                        |[0x8000052c]:mulhu a2, a0, a1<br> [0x80000530]:sw a2, 160(sp)<br>    |
|  59|[0x800032ec]<br>0x000FFFF7|- rs1_val == -32769<br>                                                                                                                                                                             |[0x80000540]:mulhu a2, a0, a1<br> [0x80000544]:sw a2, 164(sp)<br>    |
|  60|[0x800032f0]<br>0x000000FF|- rs2_val == 256<br> - rs1_val == -65537<br>                                                                                                                                                        |[0x80000554]:mulhu a2, a0, a1<br> [0x80000558]:sw a2, 168(sp)<br>    |
|  61|[0x800032f4]<br>0xFFFC0002|- rs2_val == -131073<br> - rs1_val == -131073<br>                                                                                                                                                   |[0x8000056c]:mulhu a2, a0, a1<br> [0x80000570]:sw a2, 172(sp)<br>    |
|  62|[0x800032f8]<br>0x00003FFE|- rs2_val == 16384<br> - rs1_val == -262145<br>                                                                                                                                                     |[0x80000580]:mulhu a2, a0, a1<br> [0x80000584]:sw a2, 176(sp)<br>    |
|  63|[0x800032fc]<br>0x00007FFB|- rs1_val == -524289<br>                                                                                                                                                                            |[0x80000594]:mulhu a2, a0, a1<br> [0x80000598]:sw a2, 180(sp)<br>    |
|  64|[0x80003300]<br>0x000007FF|- rs1_val == -1048577<br>                                                                                                                                                                           |[0x800005ac]:mulhu a2, a0, a1<br> [0x800005b0]:sw a2, 184(sp)<br>    |
|  65|[0x80003304]<br>0xFFBFFFF9|- rs1_val == -4194305<br>                                                                                                                                                                           |[0x800005c0]:mulhu a2, a0, a1<br> [0x800005c4]:sw a2, 188(sp)<br>    |
|  66|[0x80003308]<br>0xFF7FFFF8|- rs1_val == -8388609<br>                                                                                                                                                                           |[0x800005d4]:mulhu a2, a0, a1<br> [0x800005d8]:sw a2, 192(sp)<br>    |
|  67|[0x8000330c]<br>0xFDFFFFBE|- rs1_val == -33554433<br>                                                                                                                                                                          |[0x800005e8]:mulhu a2, a0, a1<br> [0x800005ec]:sw a2, 196(sp)<br>    |
|  68|[0x80003310]<br>0xFBFFF03E|- rs1_val == -67108865<br>                                                                                                                                                                          |[0x80000600]:mulhu a2, a0, a1<br> [0x80000604]:sw a2, 200(sp)<br>    |
|  69|[0x80003314]<br>0xF7FF83FE|- rs2_val == -32769<br> - rs1_val == -134217729<br>                                                                                                                                                 |[0x80000618]:mulhu a2, a0, a1<br> [0x8000061c]:sw a2, 204(sp)<br>    |
|  70|[0x80003318]<br>0xEFFFFF86|- rs1_val == -268435457<br>                                                                                                                                                                         |[0x8000062c]:mulhu a2, a0, a1<br> [0x80000630]:sw a2, 208(sp)<br>    |
|  71|[0x8000331c]<br>0x00000005|- rs1_val == -536870913<br>                                                                                                                                                                         |[0x80000640]:mulhu a2, a0, a1<br> [0x80000644]:sw a2, 212(sp)<br>    |
|  72|[0x80003320]<br>0x00000005|- rs2_val == 8<br> - rs1_val == -1073741825<br>                                                                                                                                                     |[0x80000654]:mulhu a2, a0, a1<br> [0x80000658]:sw a2, 216(sp)<br>    |
|  73|[0x80003324]<br>0x00000005|- rs1_val == 1431655765<br>                                                                                                                                                                         |[0x80000668]:mulhu a2, a0, a1<br> [0x8000066c]:sw a2, 220(sp)<br>    |
|  74|[0x80003328]<br>0x0002AAAA|- rs1_val == -1431655766<br>                                                                                                                                                                        |[0x8000067c]:mulhu a2, a0, a1<br> [0x80000680]:sw a2, 224(sp)<br>    |
|  75|[0x8000332c]<br>0x00000001|- rs2_val == 2<br>                                                                                                                                                                                  |[0x8000068c]:mulhu a2, a0, a1<br> [0x80000690]:sw a2, 228(sp)<br>    |
|  76|[0x80003330]<br>0x0000001F|- rs2_val == 32<br>                                                                                                                                                                                 |[0x8000069c]:mulhu a2, a0, a1<br> [0x800006a0]:sw a2, 232(sp)<br>    |
|  77|[0x80003334]<br>0x0000007F|- rs2_val == 128<br>                                                                                                                                                                                |[0x800006b0]:mulhu a2, a0, a1<br> [0x800006b4]:sw a2, 236(sp)<br>    |
|  78|[0x80003338]<br>0x00000155|- rs2_val == 1024<br>                                                                                                                                                                               |[0x800006c4]:mulhu a2, a0, a1<br> [0x800006c8]:sw a2, 240(sp)<br>    |
|  79|[0x8000333c]<br>0x00000FFF|- rs2_val == 4096<br>                                                                                                                                                                               |[0x800006d8]:mulhu a2, a0, a1<br> [0x800006dc]:sw a2, 244(sp)<br>    |
|  80|[0x80003340]<br>0x00000000|- rs2_val == 8192<br>                                                                                                                                                                               |[0x800006e8]:mulhu a2, a0, a1<br> [0x800006ec]:sw a2, 248(sp)<br>    |
|  81|[0x80003344]<br>0x00000000|- rs2_val == 65536<br> - rs1_val == 2048<br>                                                                                                                                                        |[0x800006fc]:mulhu a2, a0, a1<br> [0x80000700]:sw a2, 252(sp)<br>    |
|  82|[0x80003348]<br>0x03FFFFFF|- rs2_val == 67108864<br>                                                                                                                                                                           |[0x8000070c]:mulhu a2, a0, a1<br> [0x80000710]:sw a2, 256(sp)<br>    |
|  83|[0x8000334c]<br>0x07FFFFFF|- rs2_val == 134217728<br> - rs1_val == -9<br>                                                                                                                                                      |[0x8000071c]:mulhu a2, a0, a1<br> [0x80000720]:sw a2, 260(sp)<br>    |
|  84|[0x80003350]<br>0x0FFFF7FF|- rs2_val == 268435456<br>                                                                                                                                                                          |[0x80000730]:mulhu a2, a0, a1<br> [0x80000734]:sw a2, 264(sp)<br>    |
|  85|[0x80003354]<br>0x1FFFFDFF|- rs2_val == 536870912<br>                                                                                                                                                                          |[0x80000744]:mulhu a2, a0, a1<br> [0x80000748]:sw a2, 268(sp)<br>    |
|  86|[0x80003358]<br>0x00000010|- rs2_val == 1073741824<br>                                                                                                                                                                         |[0x80000754]:mulhu a2, a0, a1<br> [0x80000758]:sw a2, 272(sp)<br>    |
|  87|[0x8000335c]<br>0x000007FF|- rs2_val == -2<br>                                                                                                                                                                                 |[0x80000768]:mulhu a2, a0, a1<br> [0x8000076c]:sw a2, 276(sp)<br>    |
|  88|[0x80003360]<br>0xFFFFFFB6|- rs2_val == -9<br>                                                                                                                                                                                 |[0x80000778]:mulhu a2, a0, a1<br> [0x8000077c]:sw a2, 280(sp)<br>    |
|  89|[0x80003364]<br>0xFEFFFFDE|- rs2_val == -33<br>                                                                                                                                                                                |[0x8000078c]:mulhu a2, a0, a1<br> [0x80000790]:sw a2, 284(sp)<br>    |
|  90|[0x80003368]<br>0xBFFFFF3F|- rs2_val == -257<br>                                                                                                                                                                               |[0x8000079c]:mulhu a2, a0, a1<br> [0x800007a0]:sw a2, 288(sp)<br>    |
|  91|[0x8000336c]<br>0x1FFFFFBF|- rs2_val == -513<br>                                                                                                                                                                               |[0x800007ac]:mulhu a2, a0, a1<br> [0x800007b0]:sw a2, 292(sp)<br>    |
|  92|[0x80003370]<br>0xDFFFFC7E|- rs2_val == -1025<br>                                                                                                                                                                              |[0x800007c0]:mulhu a2, a0, a1<br> [0x800007c4]:sw a2, 296(sp)<br>    |
|  93|[0x80003374]<br>0xAAAAA554|- rs2_val == -2049<br>                                                                                                                                                                              |[0x800007d8]:mulhu a2, a0, a1<br> [0x800007dc]:sw a2, 300(sp)<br>    |
|  94|[0x80003378]<br>0xFFFFBFBE|- rs2_val == -16385<br>                                                                                                                                                                             |[0x800007ec]:mulhu a2, a0, a1<br> [0x800007f0]:sw a2, 304(sp)<br>    |
|  95|[0x8000337c]<br>0x03FFFBFF|- rs2_val == -65537<br>                                                                                                                                                                             |[0x80000800]:mulhu a2, a0, a1<br> [0x80000804]:sw a2, 308(sp)<br>    |
|  96|[0x80003380]<br>0x00000000|- rs2_val == 131072<br>                                                                                                                                                                             |[0x80000810]:mulhu a2, a0, a1<br> [0x80000814]:sw a2, 312(sp)<br>    |
|  97|[0x80003390]<br>0x00000008|- rs2_val == 8388608<br>                                                                                                                                                                            |[0x80000854]:mulhu a2, a0, a1<br> [0x80000858]:sw a2, 328(sp)<br>    |
