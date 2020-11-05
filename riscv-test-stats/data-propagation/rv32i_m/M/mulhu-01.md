
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000890')]      |
| SIG_REGION                | [('0x80003204', '0x800033a0', '103 words')]      |
| COV_LABELS                | mulhu      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/mulhu-01.S/mulhu-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 103      |
| STAT1                     | 102      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000884]:mulhu a2, a0, a1
      [0x80000888]:sw a2, 324(sp)
 -- Signature Address: 0x8000339c Data: 0x00001FFF
 -- Redundant Coverpoints hit by the op
      - opcode : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -32769
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

|s.no|        signature         |                                                                                                                  coverpoints                                                                                                                  |                                code                                |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003204]<br>0x2AAAAAAA|- opcode : mulhu<br> - rs1 : x21<br> - rs2 : x23<br> - rd : x21<br> - rs1 == rd != rs2<br> - rs1_val < 0 and rs2_val > 0<br> - rs1_val != rs2_val<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == 1431655765<br> - rs1_val == -2147483648<br> |[0x8000010c]:mulhu s5, s5, s7<br> [0x80000110]:sw s5, 0(ra)<br>     |
|   2|[0x80003208]<br>0x00000000|- rs1 : x20<br> - rs2 : x28<br> - rd : x27<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == 0<br> - rs2_val == 1024<br>                                                                                                          |[0x8000011c]:mulhu s11, s4, t3<br> [0x80000120]:sw s11, 4(ra)<br>   |
|   3|[0x8000320c]<br>0x7FFFFBFE|- rs1 : x30<br> - rs2 : x10<br> - rd : x10<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == -2049<br> - rs1_val == 2147483647<br>                                                    |[0x80000134]:mulhu a0, t5, a0<br> [0x80000138]:sw a0, 8(ra)<br>     |
|   4|[0x80003210]<br>0xFFFFFFFE|- rs1 : x8<br> - rs2 : x8<br> - rd : x8<br> - rs1 == rs2 == rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br>                                                                                                                  |[0x80000144]:mulhu fp, fp, fp<br> [0x80000148]:sw fp, 12(ra)<br>    |
|   5|[0x80003214]<br>0x40000000|- rs1 : x22<br> - rs2 : x22<br> - rd : x14<br> - rs1 == rs2 != rd<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br>                                                                                                             |[0x80000158]:mulhu a4, s6, s6<br> [0x8000015c]:sw a4, 16(ra)<br>    |
|   6|[0x80003218]<br>0x00000000|- rs1 : x7<br> - rs2 : x16<br> - rd : x28<br> - rs2_val == 0<br> - rs1_val == -129<br>                                                                                                                                                         |[0x80000168]:mulhu t3, t2, a6<br> [0x8000016c]:sw t3, 20(ra)<br>    |
|   7|[0x8000321c]<br>0x001FFFFF|- rs1 : x18<br> - rs2 : x13<br> - rd : x23<br> - rs1_val > 0 and rs2_val > 0<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == 4194304<br>                                                                         |[0x8000017c]:mulhu s7, s2, a3<br> [0x80000180]:sw s7, 24(ra)<br>    |
|   8|[0x80003220]<br>0x00000000|- rs1 : x10<br> - rs2 : x24<br> - rd : x29<br> - rs2_val == 1<br>                                                                                                                                                                              |[0x8000018c]:mulhu t4, a0, s8<br> [0x80000190]:sw t4, 28(ra)<br>    |
|   9|[0x80003224]<br>0xFFFFFEFE|- rs1 : x11<br> - rs2 : x20<br> - rd : x19<br> - rs2_val == -129<br>                                                                                                                                                                           |[0x8000019c]:mulhu s3, a1, s4<br> [0x800001a0]:sw s3, 32(ra)<br>    |
|  10|[0x80003228]<br>0x00000000|- rs1 : x12<br> - rs2 : x21<br> - rd : x4<br> - rs2_val == 64<br> - rs1_val == 2<br>                                                                                                                                                           |[0x800001ac]:mulhu tp, a2, s5<br> [0x800001b0]:sw tp, 36(ra)<br>    |
|  11|[0x8000322c]<br>0x00000000|- rs1 : x2<br> - rs2 : x27<br> - rd : x11<br> - rs2_val == 536870912<br> - rs1_val == 4<br>                                                                                                                                                    |[0x800001bc]:mulhu a1, sp, s11<br> [0x800001c0]:sw a1, 40(ra)<br>   |
|  12|[0x80003230]<br>0x00000007|- rs1 : x29<br> - rs2 : x3<br> - rd : x25<br> - rs2_val == -5<br> - rs1_val == 8<br>                                                                                                                                                           |[0x800001cc]:mulhu s9, t4, gp<br> [0x800001d0]:sw s9, 44(ra)<br>    |
|  13|[0x80003234]<br>0x00000000|- rs1 : x9<br> - rs2 : x0<br> - rd : x18<br> - rs1_val == 16<br>                                                                                                                                                                               |[0x800001e0]:mulhu s2, s1, zero<br> [0x800001e4]:sw s2, 48(ra)<br>  |
|  14|[0x80003238]<br>0x00000000|- rs1 : x25<br> - rs2 : x14<br> - rd : x17<br> - rs2_val == 128<br> - rs1_val == 32<br>                                                                                                                                                        |[0x800001f0]:mulhu a7, s9, a4<br> [0x800001f4]:sw a7, 52(ra)<br>    |
|  15|[0x8000323c]<br>0x0000003F|- rs1 : x5<br> - rs2 : x4<br> - rd : x16<br> - rs2_val == -65<br> - rs1_val == 64<br>                                                                                                                                                          |[0x80000200]:mulhu a6, t0, tp<br> [0x80000204]:sw a6, 56(ra)<br>    |
|  16|[0x80003240]<br>0x0000007F|- rs1 : x19<br> - rs2 : x18<br> - rd : x26<br> - rs2_val == -2097153<br> - rs1_val == 128<br>                                                                                                                                                  |[0x80000214]:mulhu s10, s3, s2<br> [0x80000218]:sw s10, 60(ra)<br>  |
|  17|[0x80003244]<br>0x00000000|- rs1 : x24<br> - rs2 : x9<br> - rd : x12<br> - rs2_val == 524288<br> - rs1_val == 256<br>                                                                                                                                                     |[0x80000224]:mulhu a2, s8, s1<br> [0x80000228]:sw a2, 64(ra)<br>    |
|  18|[0x80003248]<br>0x000001BF|- rs1 : x4<br> - rs2 : x2<br> - rd : x20<br> - rs2_val == -536870913<br> - rs1_val == 512<br>                                                                                                                                                  |[0x80000238]:mulhu s4, tp, sp<br> [0x8000023c]:sw s4, 68(ra)<br>    |
|  19|[0x8000324c]<br>0x00000200|- rs1 : x28<br> - rs2 : x19<br> - rd : x5<br> - rs1_val == 1024<br>                                                                                                                                                                            |[0x80000248]:mulhu t0, t3, s3<br> [0x8000024c]:sw t0, 72(ra)<br>    |
|  20|[0x80003250]<br>0x00000004|- rs1 : x27<br> - rs2 : x25<br> - rd : x2<br> - rs2_val == 8388608<br> - rs1_val == 2048<br>                                                                                                                                                   |[0x8000025c]:mulhu sp, s11, s9<br> [0x80000260]:sw sp, 76(ra)<br>   |
|  21|[0x80003254]<br>0x00000000|- rs1 : x0<br> - rs2 : x11<br> - rd : x15<br>                                                                                                                                                                                                  |[0x80000274]:mulhu a5, zero, a1<br> [0x80000278]:sw a5, 80(ra)<br>  |
|  22|[0x80003258]<br>0x00000000|- rs1 : x17<br> - rs2 : x7<br> - rd : x0<br> - rs2_val == -32769<br> - rs1_val == 8192<br>                                                                                                                                                     |[0x80000290]:mulhu zero, a7, t2<br> [0x80000294]:sw zero, 0(sp)<br> |
|  23|[0x8000325c]<br>0x00000080|- rs1 : x6<br> - rs2 : x26<br> - rd : x22<br> - rs2_val == 33554432<br> - rs1_val == 16384<br>                                                                                                                                                 |[0x800002a0]:mulhu s6, t1, s10<br> [0x800002a4]:sw s6, 4(sp)<br>    |
|  24|[0x80003260]<br>0x00007FFF|- rs1 : x15<br> - rs2 : x5<br> - rd : x13<br> - rs2_val == -17<br> - rs1_val == 32768<br>                                                                                                                                                      |[0x800002b0]:mulhu a3, a5, t0<br> [0x800002b4]:sw a3, 8(sp)<br>     |
|  25|[0x80003264]<br>0x0000C000|- rs1 : x1<br> - rs2 : x15<br> - rd : x31<br> - rs1_val == 65536<br>                                                                                                                                                                           |[0x800002c0]:mulhu t6, ra, a5<br> [0x800002c4]:sw t6, 12(sp)<br>    |
|  26|[0x80003268]<br>0x00000000|- rs1 : x23<br> - rs2 : x30<br> - rd : x1<br> - rs2_val == 8192<br> - rs1_val == 131072<br>                                                                                                                                                    |[0x800002d0]:mulhu ra, s7, t5<br> [0x800002d4]:sw ra, 16(sp)<br>    |
|  27|[0x8000326c]<br>0x0003FFFF|- rs1 : x31<br> - rs2 : x29<br> - rd : x9<br> - rs1_val == 262144<br>                                                                                                                                                                          |[0x800002e0]:mulhu s1, t6, t4<br> [0x800002e4]:sw s1, 20(sp)<br>    |
|  28|[0x80003270]<br>0x00000000|- rs1 : x26<br> - rs2 : x17<br> - rd : x7<br> - rs2_val == 8<br> - rs1_val == 524288<br>                                                                                                                                                       |[0x800002f0]:mulhu t2, s10, a7<br> [0x800002f4]:sw t2, 24(sp)<br>   |
|  29|[0x80003274]<br>0x00000400|- rs1 : x16<br> - rs2 : x12<br> - rd : x6<br> - rs2_val == 4194304<br> - rs1_val == 1048576<br>                                                                                                                                                |[0x80000300]:mulhu t1, a6, a2<br> [0x80000304]:sw t1, 28(sp)<br>    |
|  30|[0x80003278]<br>0x00000004|- rs1 : x14<br> - rs2 : x1<br> - rd : x3<br> - rs1_val == 2097152<br>                                                                                                                                                                          |[0x80000310]:mulhu gp, a4, ra<br> [0x80000314]:sw gp, 32(sp)<br>    |
|  31|[0x8000327c]<br>0x00000080|- rs1 : x3<br> - rs2 : x6<br> - rd : x30<br> - rs2_val == 65536<br> - rs1_val == 8388608<br>                                                                                                                                                   |[0x80000320]:mulhu t5, gp, t1<br> [0x80000324]:sw t5, 36(sp)<br>    |
|  32|[0x80003280]<br>0x00FFFEFF|- rs1 : x13<br> - rs2 : x31<br> - rd : x24<br> - rs2_val == -65537<br> - rs1_val == 16777216<br>                                                                                                                                               |[0x80000334]:mulhu s8, a3, t6<br> [0x80000338]:sw s8, 40(sp)<br>    |
|  33|[0x80003284]<br>0x00000020|- rs2_val == 4096<br> - rs1_val == 33554432<br>                                                                                                                                                                                                |[0x80000344]:mulhu a2, a0, a1<br> [0x80000348]:sw a2, 44(sp)<br>    |
|  34|[0x80003288]<br>0x03FFFFFE|- rs1_val == 67108864<br>                                                                                                                                                                                                                      |[0x80000354]:mulhu a2, a0, a1<br> [0x80000358]:sw a2, 48(sp)<br>    |
|  35|[0x8000328c]<br>0x06000000|- rs1_val == 134217728<br>                                                                                                                                                                                                                     |[0x80000364]:mulhu a2, a0, a1<br> [0x80000368]:sw a2, 52(sp)<br>    |
|  36|[0x80003290]<br>0x00000020|- rs2_val == 512<br> - rs1_val == 268435456<br>                                                                                                                                                                                                |[0x80000374]:mulhu a2, a0, a1<br> [0x80000378]:sw a2, 56(sp)<br>    |
|  37|[0x80003294]<br>0x0AAAAAAA|- rs1_val == 536870912<br>                                                                                                                                                                                                                     |[0x80000388]:mulhu a2, a0, a1<br> [0x8000038c]:sw a2, 60(sp)<br>    |
|  38|[0x80003298]<br>0x00020000|- rs1_val == 1073741824<br>                                                                                                                                                                                                                    |[0x80000398]:mulhu a2, a0, a1<br> [0x8000039c]:sw a2, 64(sp)<br>    |
|  39|[0x8000329c]<br>0xF7FFFFFD|- rs2_val == -134217729<br> - rs1_val == -2<br>                                                                                                                                                                                                |[0x800003ac]:mulhu a2, a0, a1<br> [0x800003b0]:sw a2, 68(sp)<br>    |
|  40|[0x800032a0]<br>0x00001FFF|- rs1_val == -3<br>                                                                                                                                                                                                                            |[0x800003bc]:mulhu a2, a0, a1<br> [0x800003c0]:sw a2, 72(sp)<br>    |
|  41|[0x800032a4]<br>0xDFFFFFFA|- rs1_val == -5<br>                                                                                                                                                                                                                            |[0x800003d0]:mulhu a2, a0, a1<br> [0x800003d4]:sw a2, 76(sp)<br>    |
|  42|[0x800032a8]<br>0x0FFFFFFF|- rs2_val == 268435456<br> - rs1_val == -9<br>                                                                                                                                                                                                 |[0x800003e0]:mulhu a2, a0, a1<br> [0x800003e4]:sw a2, 80(sp)<br>    |
|  43|[0x800032ac]<br>0x7FFFFFF6|- rs1_val == -17<br>                                                                                                                                                                                                                           |[0x800003f4]:mulhu a2, a0, a1<br> [0x800003f8]:sw a2, 84(sp)<br>    |
|  44|[0x800032b0]<br>0xFFFBFF7E|- rs2_val == -262145<br>                                                                                                                                                                                                                       |[0x80000408]:mulhu a2, a0, a1<br> [0x8000040c]:sw a2, 88(sp)<br>    |
|  45|[0x800032b4]<br>0x00000006|- rs2_val == -524289<br>                                                                                                                                                                                                                       |[0x8000041c]:mulhu a2, a0, a1<br> [0x80000420]:sw a2, 92(sp)<br>    |
|  46|[0x800032b8]<br>0xFEF00FFE|- rs2_val == -1048577<br> - rs1_val == -16777217<br>                                                                                                                                                                                           |[0x80000434]:mulhu a2, a0, a1<br> [0x80000438]:sw a2, 96(sp)<br>    |
|  47|[0x800032bc]<br>0x3FEFFFFF|- rs2_val == -4194305<br>                                                                                                                                                                                                                      |[0x80000448]:mulhu a2, a0, a1<br> [0x8000044c]:sw a2, 100(sp)<br>   |
|  48|[0x800032c0]<br>0xFF7F007E|- rs2_val == -8388609<br> - rs1_val == -65537<br>                                                                                                                                                                                              |[0x80000460]:mulhu a2, a0, a1<br> [0x80000464]:sw a2, 104(sp)<br>   |
|  49|[0x800032c4]<br>0x0FEFFFFF|- rs2_val == -16777217<br>                                                                                                                                                                                                                     |[0x80000474]:mulhu a2, a0, a1<br> [0x80000478]:sw a2, 108(sp)<br>   |
|  50|[0x800032c8]<br>0xFDFFFFFD|- rs2_val == -33554433<br>                                                                                                                                                                                                                     |[0x80000488]:mulhu a2, a0, a1<br> [0x8000048c]:sw a2, 112(sp)<br>   |
|  51|[0x800032cc]<br>0x00000007|- rs2_val == -67108865<br>                                                                                                                                                                                                                     |[0x8000049c]:mulhu a2, a0, a1<br> [0x800004a0]:sw a2, 116(sp)<br>   |
|  52|[0x800032d0]<br>0x00003BFF|- rs2_val == -268435457<br>                                                                                                                                                                                                                    |[0x800004b0]:mulhu a2, a0, a1<br> [0x800004b4]:sw a2, 120(sp)<br>   |
|  53|[0x800032d4]<br>0x8FFFFFFF|- rs2_val == -1073741825<br>                                                                                                                                                                                                                   |[0x800004c4]:mulhu a2, a0, a1<br> [0x800004c8]:sw a2, 124(sp)<br>   |
|  54|[0x800032d8]<br>0xAAAAAAA7|- rs2_val == -1431655766<br>                                                                                                                                                                                                                   |[0x800004d8]:mulhu a2, a0, a1<br> [0x800004dc]:sw a2, 128(sp)<br>   |
|  55|[0x800032dc]<br>0xFFFFFFCE|- rs1_val == -33<br>                                                                                                                                                                                                                           |[0x800004e8]:mulhu a2, a0, a1<br> [0x800004ec]:sw a2, 132(sp)<br>   |
|  56|[0x800032e0]<br>0xFFFFF7BE|- rs1_val == -65<br>                                                                                                                                                                                                                           |[0x800004fc]:mulhu a2, a0, a1<br> [0x80000500]:sw a2, 136(sp)<br>   |
|  57|[0x800032e4]<br>0x0000003F|- rs1_val == -257<br>                                                                                                                                                                                                                          |[0x8000050c]:mulhu a2, a0, a1<br> [0x80000510]:sw a2, 140(sp)<br>   |
|  58|[0x800032e8]<br>0x00000007|- rs1_val == -513<br>                                                                                                                                                                                                                          |[0x8000051c]:mulhu a2, a0, a1<br> [0x80000520]:sw a2, 144(sp)<br>   |
|  59|[0x800032ec]<br>0xFFFFFBDE|- rs2_val == -33<br> - rs1_val == -1025<br>                                                                                                                                                                                                    |[0x8000052c]:mulhu a2, a0, a1<br> [0x80000530]:sw a2, 148(sp)<br>   |
|  60|[0x800032f0]<br>0xFFFFF7F6|- rs2_val == -9<br> - rs1_val == -2049<br>                                                                                                                                                                                                     |[0x80000540]:mulhu a2, a0, a1<br> [0x80000544]:sw a2, 152(sp)<br>   |
|  61|[0x800032f4]<br>0xEFFFF0FE|- rs1_val == -4097<br>                                                                                                                                                                                                                         |[0x80000558]:mulhu a2, a0, a1<br> [0x8000055c]:sw a2, 156(sp)<br>   |
|  62|[0x800032f8]<br>0xFBFFE07E|- rs1_val == -8193<br>                                                                                                                                                                                                                         |[0x80000570]:mulhu a2, a0, a1<br> [0x80000574]:sw a2, 160(sp)<br>   |
|  63|[0x800032fc]<br>0x7FFFDFFF|- rs1_val == -16385<br>                                                                                                                                                                                                                        |[0x80000584]:mulhu a2, a0, a1<br> [0x80000588]:sw a2, 164(sp)<br>   |
|  64|[0x80003300]<br>0x0000001F|- rs2_val == 32<br> - rs1_val == -32769<br>                                                                                                                                                                                                    |[0x80000598]:mulhu a2, a0, a1<br> [0x8000059c]:sw a2, 168(sp)<br>   |
|  65|[0x80003304]<br>0x07FFEFFF|- rs2_val == 134217728<br> - rs1_val == -131073<br>                                                                                                                                                                                            |[0x800005ac]:mulhu a2, a0, a1<br> [0x800005b0]:sw a2, 172(sp)<br>   |
|  66|[0x80003308]<br>0x00000000|- rs1_val == -262145<br>                                                                                                                                                                                                                       |[0x800005c0]:mulhu a2, a0, a1<br> [0x800005c4]:sw a2, 176(sp)<br>   |
|  67|[0x8000330c]<br>0x0001FFEF|- rs2_val == 131072<br> - rs1_val == -524289<br>                                                                                                                                                                                               |[0x800005d4]:mulhu a2, a0, a1<br> [0x800005d8]:sw a2, 180(sp)<br>   |
|  68|[0x80003310]<br>0x00001FFD|- rs1_val == -1048577<br>                                                                                                                                                                                                                      |[0x800005e8]:mulhu a2, a0, a1<br> [0x800005ec]:sw a2, 184(sp)<br>   |
|  69|[0x80003314]<br>0x00000006|- rs1_val == -2097153<br>                                                                                                                                                                                                                      |[0x800005fc]:mulhu a2, a0, a1<br> [0x80000600]:sw a2, 188(sp)<br>   |
|  70|[0x80003318]<br>0x0000001F|- rs1_val == -4194305<br>                                                                                                                                                                                                                      |[0x80000610]:mulhu a2, a0, a1<br> [0x80000614]:sw a2, 192(sp)<br>   |
|  71|[0x8000331c]<br>0x7FBFFFFF|- rs1_val == -8388609<br>                                                                                                                                                                                                                      |[0x80000624]:mulhu a2, a0, a1<br> [0x80000628]:sw a2, 196(sp)<br>   |
|  72|[0x80003320]<br>0xEE1FFFFE|- rs1_val == -33554433<br>                                                                                                                                                                                                                     |[0x8000063c]:mulhu a2, a0, a1<br> [0x80000640]:sw a2, 200(sp)<br>   |
|  73|[0x80003324]<br>0xBCFFFFFF|- rs1_val == -67108865<br>                                                                                                                                                                                                                     |[0x80000650]:mulhu a2, a0, a1<br> [0x80000654]:sw a2, 204(sp)<br>   |
|  74|[0x80003328]<br>0x001EFFFF|- rs2_val == 2097152<br> - rs1_val == -134217729<br>                                                                                                                                                                                           |[0x80000664]:mulhu a2, a0, a1<br> [0x80000668]:sw a2, 208(sp)<br>   |
|  75|[0x8000332c]<br>0x06FFFFFF|- rs1_val == -536870913<br>                                                                                                                                                                                                                    |[0x80000678]:mulhu a2, a0, a1<br> [0x8000067c]:sw a2, 212(sp)<br>   |
|  76|[0x80003330]<br>0x17FFFFFF|- rs1_val == -1073741825<br>                                                                                                                                                                                                                   |[0x8000068c]:mulhu a2, a0, a1<br> [0x80000690]:sw a2, 216(sp)<br>   |
|  77|[0x80003334]<br>0x00005555|- rs1_val == 1431655765<br>                                                                                                                                                                                                                    |[0x800006a0]:mulhu a2, a0, a1<br> [0x800006a4]:sw a2, 220(sp)<br>   |
|  78|[0x80003338]<br>0xAAAAAA54|- rs1_val == -1431655766<br>                                                                                                                                                                                                                   |[0x800006b4]:mulhu a2, a0, a1<br> [0x800006b8]:sw a2, 224(sp)<br>   |
|  79|[0x8000333c]<br>0x00000001|- rs2_val == 2<br>                                                                                                                                                                                                                             |[0x800006c8]:mulhu a2, a0, a1<br> [0x800006cc]:sw a2, 228(sp)<br>   |
|  80|[0x80003340]<br>0x00000003|- rs2_val == 4<br>                                                                                                                                                                                                                             |[0x800006dc]:mulhu a2, a0, a1<br> [0x800006e0]:sw a2, 232(sp)<br>   |
|  81|[0x80003344]<br>0x00000000|- rs2_val == 16<br>                                                                                                                                                                                                                            |[0x800006ec]:mulhu a2, a0, a1<br> [0x800006f0]:sw a2, 236(sp)<br>   |
|  82|[0x80003348]<br>0x00000004|- rs2_val == 256<br>                                                                                                                                                                                                                           |[0x800006fc]:mulhu a2, a0, a1<br> [0x80000700]:sw a2, 240(sp)<br>   |
|  83|[0x8000334c]<br>0x00000002|- rs2_val == 2048<br>                                                                                                                                                                                                                          |[0x80000710]:mulhu a2, a0, a1<br> [0x80000714]:sw a2, 244(sp)<br>   |
|  84|[0x80003350]<br>0x000FEFFF|- rs2_val == 1048576<br>                                                                                                                                                                                                                       |[0x80000724]:mulhu a2, a0, a1<br> [0x80000728]:sw a2, 248(sp)<br>   |
|  85|[0x80003354]<br>0x00FFFFFF|- rs2_val == 16777216<br>                                                                                                                                                                                                                      |[0x80000734]:mulhu a2, a0, a1<br> [0x80000738]:sw a2, 252(sp)<br>   |
|  86|[0x80003358]<br>0x00400000|- rs2_val == 67108864<br>                                                                                                                                                                                                                      |[0x80000744]:mulhu a2, a0, a1<br> [0x80000748]:sw a2, 256(sp)<br>   |
|  87|[0x8000335c]<br>0x2AAAAAAA|- rs2_val == 1073741824<br>                                                                                                                                                                                                                    |[0x80000758]:mulhu a2, a0, a1<br> [0x8000075c]:sw a2, 260(sp)<br>   |
|  88|[0x80003360]<br>0x00000003|- rs2_val == -2<br>                                                                                                                                                                                                                            |[0x80000768]:mulhu a2, a0, a1<br> [0x8000076c]:sw a2, 264(sp)<br>   |
|  89|[0x80003364]<br>0xFFFBFFFC|- rs2_val == -3<br>                                                                                                                                                                                                                            |[0x8000077c]:mulhu a2, a0, a1<br> [0x80000780]:sw a2, 268(sp)<br>   |
|  90|[0x80003368]<br>0xAAAA7FFE|- rs2_val == -16385<br>                                                                                                                                                                                                                        |[0x80000794]:mulhu a2, a0, a1<br> [0x80000798]:sw a2, 272(sp)<br>   |
|  91|[0x8000336c]<br>0x0003FFFF|- rs2_val == -257<br>                                                                                                                                                                                                                          |[0x800007a4]:mulhu a2, a0, a1<br> [0x800007a8]:sw a2, 276(sp)<br>   |
|  92|[0x80003370]<br>0xAAAAA954|- rs2_val == -513<br>                                                                                                                                                                                                                          |[0x800007b8]:mulhu a2, a0, a1<br> [0x800007bc]:sw a2, 280(sp)<br>   |
|  93|[0x80003374]<br>0x0000001F|- rs2_val == -1025<br>                                                                                                                                                                                                                         |[0x800007c8]:mulhu a2, a0, a1<br> [0x800007cc]:sw a2, 284(sp)<br>   |
|  94|[0x80003378]<br>0xBFFFF3FF|- rs2_val == -4097<br>                                                                                                                                                                                                                         |[0x800007dc]:mulhu a2, a0, a1<br> [0x800007e0]:sw a2, 288(sp)<br>   |
|  95|[0x8000337c]<br>0x01FFFFBF|- rs2_val == -8193<br>                                                                                                                                                                                                                         |[0x800007f0]:mulhu a2, a0, a1<br> [0x800007f4]:sw a2, 292(sp)<br>   |
|  96|[0x80003380]<br>0x00000001|- rs2_val == 16384<br>                                                                                                                                                                                                                         |[0x80000800]:mulhu a2, a0, a1<br> [0x80000804]:sw a2, 296(sp)<br>   |
|  97|[0x80003384]<br>0x00007DFF|- rs2_val == 32768<br>                                                                                                                                                                                                                         |[0x80000814]:mulhu a2, a0, a1<br> [0x80000818]:sw a2, 300(sp)<br>   |
|  98|[0x80003388]<br>0x00003FFF|- rs2_val == -131073<br>                                                                                                                                                                                                                       |[0x80000828]:mulhu a2, a0, a1<br> [0x8000082c]:sw a2, 304(sp)<br>   |
|  99|[0x8000338c]<br>0x00000000|- rs1_val == 1<br>                                                                                                                                                                                                                             |[0x80000838]:mulhu a2, a0, a1<br> [0x8000083c]:sw a2, 308(sp)<br>   |
| 100|[0x80003390]<br>0x77FFFFFF|- rs1_val == -268435457<br>                                                                                                                                                                                                                    |[0x8000084c]:mulhu a2, a0, a1<br> [0x80000850]:sw a2, 312(sp)<br>   |
| 101|[0x80003394]<br>0x00000000|- rs2_val == 262144<br>                                                                                                                                                                                                                        |[0x8000085c]:mulhu a2, a0, a1<br> [0x80000860]:sw a2, 316(sp)<br>   |
| 102|[0x80003398]<br>0x000007FF|- rs1_val == 4096<br>                                                                                                                                                                                                                          |[0x80000870]:mulhu a2, a0, a1<br> [0x80000874]:sw a2, 320(sp)<br>   |
