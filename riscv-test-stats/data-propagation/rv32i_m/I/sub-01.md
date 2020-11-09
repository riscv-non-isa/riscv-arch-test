
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
| SIG_REGION                | [('0x80003204', '0x8000339c', '102 words')]      |
| COV_LABELS                | sub      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sub-01.S/sub-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 102      |
| STAT1                     | 100      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000084c]:sub a2, a0, a1
      [0x80000850]:sw a2, 336(gp)
 -- Signature Address: 0x80003394 Data: 0x00900001
 -- Redundant Coverpoints hit by the op
      - opcode : sub
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs2_val == -1048577
      - rs1_val == 8388608




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000085c]:sub a2, a0, a1
      [0x80000860]:sw a2, 340(gp)
 -- Signature Address: 0x80003398 Data: 0x00FFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : sub
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 1
      - rs1_val == 16777216






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

|s.no|        signature         |                                                                                                 coverpoints                                                                                                  |                                code                                 |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80003204]<br>0x7FFFFFFD|- opcode : sub<br> - rs1 : x4<br> - rs2 : x3<br> - rd : x3<br> - rs2 == rd != rs1<br> - rs1_val < 0 and rs2_val > 0<br> - rs1_val != rs2_val<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br> |[0x80000108]:sub gp, tp, gp<br> [0x8000010c]:sw gp, 0(t0)<br>        |
|   2|[0x80003208]<br>0xFFC00000|- rs1 : x15<br> - rs2 : x14<br> - rd : x12<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == 0<br> - rs2_val == 4194304<br>                                                                      |[0x80000118]:sub a2, a5, a4<br> [0x8000011c]:sw a2, 4(t0)<br>        |
|   3|[0x8000320c]<br>0x00000000|- rs1 : x19<br> - rs2 : x19<br> - rd : x1<br> - rs1 == rs2 != rd<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == rs2_val<br> - rs2_val == 16<br> - rs1_val == 16<br>                                       |[0x8000012c]:sub ra, s3, s3<br> [0x80000130]:sw ra, 8(t0)<br>        |
|   4|[0x80003210]<br>0x00000000|- rs1 : x17<br> - rs2 : x17<br> - rd : x17<br> - rs1 == rs2 == rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs2_val == -33554433<br> - rs1_val == -33554433<br>                                                 |[0x80000140]:sub a7, a7, a7<br> [0x80000144]:sw a7, 12(t0)<br>       |
|   5|[0x80003214]<br>0x00000000|- rs1 : x0<br> - rs2 : x21<br> - rd : x0<br> - rs1 == rd != rs2<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br>                                                                              |[0x80000150]:sub zero, zero, s5<br> [0x80000154]:sw zero, 16(t0)<br> |
|   6|[0x80003218]<br>0xFFFFFFFB|- rs1 : x8<br> - rs2 : x2<br> - rd : x26<br> - rs2_val == 0<br> - rs1_val == -5<br>                                                                                                                           |[0x80000160]:sub s10, fp, sp<br> [0x80000164]:sw s10, 20(t0)<br>     |
|   7|[0x8000321c]<br>0x40000000|- rs1 : x21<br> - rs2 : x11<br> - rd : x7<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == -1073741825<br>                                                                       |[0x80000178]:sub t2, s5, a1<br> [0x8000017c]:sw t2, 24(t0)<br>       |
|   8|[0x80003220]<br>0xFFFF7FFE|- rs1 : x14<br> - rs2 : x27<br> - rd : x18<br> - rs2_val == 1<br> - rs1_val == -32769<br>                                                                                                                     |[0x8000018c]:sub s2, a4, s11<br> [0x80000190]:sw s2, 28(t0)<br>      |
|   9|[0x80003224]<br>0x00000000|- rs1 : x18<br> - rs2 : x25<br> - rd : x21<br> - rs2_val == 2097152<br> - rs1_val == 2097152<br>                                                                                                              |[0x8000019c]:sub s5, s2, s9<br> [0x800001a0]:sw s5, 32(t0)<br>       |
|  10|[0x80003228]<br>0xFFFF0002|- rs1 : x23<br> - rs2 : x15<br> - rd : x13<br> - rs2_val == 65536<br> - rs1_val == 2<br>                                                                                                                      |[0x800001ac]:sub a3, s7, a5<br> [0x800001b0]:sw a3, 36(t0)<br>       |
|  11|[0x8000322c]<br>0xFFFFFF84|- rs1 : x13<br> - rs2 : x6<br> - rd : x28<br> - rs2_val == 128<br> - rs1_val == 4<br>                                                                                                                         |[0x800001bc]:sub t3, a3, t1<br> [0x800001c0]:sw t3, 40(t0)<br>       |
|  12|[0x80003230]<br>0xF8000008|- rs1 : x25<br> - rs2 : x1<br> - rd : x19<br> - rs2_val == 134217728<br> - rs1_val == 8<br>                                                                                                                   |[0x800001cc]:sub s3, s9, ra<br> [0x800001d0]:sw s3, 44(t0)<br>       |
|  13|[0x80003234]<br>0xFFFFFF10|- rs1 : x3<br> - rs2 : x26<br> - rd : x29<br> - rs2_val == 256<br>                                                                                                                                            |[0x800001dc]:sub t4, gp, s10<br> [0x800001e0]:sw t4, 48(t0)<br>      |
|  14|[0x80003238]<br>0xFFFFFC20|- rs1 : x2<br> - rs2 : x23<br> - rd : x9<br> - rs2_val == 1024<br> - rs1_val == 32<br>                                                                                                                        |[0x800001ec]:sub s1, sp, s7<br> [0x800001f0]:sw s1, 52(t0)<br>       |
|  15|[0x8000323c]<br>0xFFFFF840|- rs1 : x16<br> - rs2 : x30<br> - rd : x31<br> - rs2_val == 2048<br> - rs1_val == 64<br>                                                                                                                      |[0x80000200]:sub t6, a6, t5<br> [0x80000204]:sw t6, 56(t0)<br>       |
|  16|[0x80003240]<br>0xF8000080|- rs1 : x9<br> - rs2 : x20<br> - rd : x10<br> - rs1_val == 128<br>                                                                                                                                            |[0x80000210]:sub a0, s1, s4<br> [0x80000214]:sw a0, 60(t0)<br>       |
|  17|[0x80003244]<br>0x000000F9|- rs1 : x24<br> - rs2 : x8<br> - rd : x15<br> - rs1_val == 256<br>                                                                                                                                            |[0x80000228]:sub a5, s8, fp<br> [0x8000022c]:sw a5, 0(gp)<br>        |
|  18|[0x80003248]<br>0xFFFFFE00|- rs1 : x5<br> - rs2 : x13<br> - rd : x23<br> - rs1_val == 512<br>                                                                                                                                            |[0x80000238]:sub s7, t0, a3<br> [0x8000023c]:sw s7, 4(gp)<br>        |
|  19|[0x8000324c]<br>0x80000401|- rs1 : x31<br> - rs2 : x22<br> - rd : x14<br> - rs1_val == 1024<br>                                                                                                                                          |[0x8000024c]:sub a4, t6, s6<br> [0x80000250]:sw a4, 8(gp)<br>        |
|  20|[0x80003250]<br>0x00001801|- rs1 : x7<br> - rs2 : x4<br> - rd : x22<br> - rs1_val > 0 and rs2_val < 0<br> - rs2_val == -4097<br> - rs1_val == 2048<br>                                                                                   |[0x80000264]:sub s6, t2, tp<br> [0x80000268]:sw s6, 12(gp)<br>       |
|  21|[0x80003254]<br>0x00000FF0|- rs1 : x22<br> - rs2 : x5<br> - rd : x27<br> - rs1_val == 4096<br>                                                                                                                                           |[0x80000274]:sub s11, s6, t0<br> [0x80000278]:sw s11, 16(gp)<br>     |
|  22|[0x80003258]<br>0xFFF82000|- rs1 : x27<br> - rs2 : x24<br> - rd : x20<br> - rs2_val == 524288<br> - rs1_val == 8192<br>                                                                                                                  |[0x80000284]:sub s4, s11, s8<br> [0x80000288]:sw s4, 20(gp)<br>      |
|  23|[0x8000325c]<br>0xFFE04000|- rs1 : x10<br> - rs2 : x7<br> - rd : x25<br> - rs1_val == 16384<br>                                                                                                                                          |[0x80000294]:sub s9, a0, t2<br> [0x80000298]:sw s9, 24(gp)<br>       |
|  24|[0x80003260]<br>0x00007FFC|- rs1 : x6<br> - rs2 : x16<br> - rd : x24<br> - rs2_val == 4<br> - rs1_val == 32768<br>                                                                                                                       |[0x800002a4]:sub s8, t1, a6<br> [0x800002a8]:sw s8, 28(gp)<br>       |
|  25|[0x80003264]<br>0x00012001|- rs1 : x12<br> - rs2 : x28<br> - rd : x30<br> - rs2_val == -8193<br> - rs1_val == 65536<br>                                                                                                                  |[0x800002b8]:sub t5, a2, t3<br> [0x800002bc]:sw t5, 32(gp)<br>       |
|  26|[0x80003268]<br>0x00010000|- rs1 : x28<br> - rs2 : x31<br> - rd : x4<br> - rs1_val == 131072<br>                                                                                                                                         |[0x800002c8]:sub tp, t3, t6<br> [0x800002cc]:sw tp, 36(gp)<br>       |
|  27|[0x8000326c]<br>0x40040001|- rs1 : x20<br> - rs2 : x10<br> - rd : x5<br> - rs2_val == -1073741825<br> - rs1_val == 262144<br>                                                                                                            |[0x800002dc]:sub t0, s4, a0<br> [0x800002e0]:sw t0, 40(gp)<br>       |
|  28|[0x80003270]<br>0x40080001|- rs1 : x26<br> - rs2 : x18<br> - rd : x11<br> - rs1_val == 524288<br>                                                                                                                                        |[0x800002f0]:sub a1, s10, s2<br> [0x800002f4]:sw a1, 44(gp)<br>      |
|  29|[0x80003274]<br>0x00500001|- rs1 : x1<br> - rs2 : x9<br> - rd : x8<br> - rs2_val == -4194305<br> - rs1_val == 1048576<br>                                                                                                                |[0x80000304]:sub fp, ra, s1<br> [0x80000308]:sw fp, 48(gp)<br>       |
|  30|[0x80003278]<br>0x00380000|- rs1 : x11<br> - rs2 : x12<br> - rd : x16<br> - rs1_val == 4194304<br>                                                                                                                                       |[0x80000314]:sub a6, a1, a2<br> [0x80000318]:sw a6, 52(gp)<br>       |
|  31|[0x8000327c]<br>0x00800000|- rs1 : x30<br> - rs2 : x0<br> - rd : x2<br> - rs1_val == 8388608<br>                                                                                                                                         |[0x80000328]:sub sp, t5, zero<br> [0x8000032c]:sw sp, 56(gp)<br>     |
|  32|[0x80003280]<br>0x01000000|- rs1 : x29<br> - rs1_val == 16777216<br>                                                                                                                                                                     |[0x80000338]:sub s10, t4, zero<br> [0x8000033c]:sw s10, 60(gp)<br>   |
|  33|[0x80003284]<br>0x01FFFFFD|- rs2 : x29<br> - rs1_val == 33554432<br>                                                                                                                                                                     |[0x80000348]:sub a1, a4, t4<br> [0x8000034c]:sw a1, 64(gp)<br>       |
|  34|[0x80003288]<br>0x03FFFFFE|- rd : x6<br> - rs2_val == 2<br> - rs1_val == 67108864<br>                                                                                                                                                    |[0x80000358]:sub t1, s2, a4<br> [0x8000035c]:sw t1, 68(gp)<br>       |
|  35|[0x8000328c]<br>0x08000101|- rs2_val == -257<br> - rs1_val == 134217728<br>                                                                                                                                                              |[0x80000368]:sub a2, a0, a1<br> [0x8000036c]:sw a2, 72(gp)<br>       |
|  36|[0x80003290]<br>0x18000001|- rs2_val == -134217729<br> - rs1_val == 268435456<br>                                                                                                                                                        |[0x8000037c]:sub a2, a0, a1<br> [0x80000380]:sw a2, 76(gp)<br>       |
|  37|[0x80003294]<br>0x1FF00000|- rs2_val == 1048576<br> - rs1_val == 536870912<br>                                                                                                                                                           |[0x8000038c]:sub a2, a0, a1<br> [0x80000390]:sw a2, 80(gp)<br>       |
|  38|[0x80003298]<br>0x38000000|- rs1_val == 1073741824<br>                                                                                                                                                                                   |[0x8000039c]:sub a2, a0, a1<br> [0x800003a0]:sw a2, 84(gp)<br>       |
|  39|[0x8000329c]<br>0x7FFFFFFE|- rs1_val == -2<br>                                                                                                                                                                                           |[0x800003ac]:sub a2, a0, a1<br> [0x800003b0]:sw a2, 88(gp)<br>       |
|  40|[0x800032a0]<br>0x3FFFFFFD|- rs1_val == -3<br>                                                                                                                                                                                           |[0x800003bc]:sub a2, a0, a1<br> [0x800003c0]:sw a2, 92(gp)<br>       |
|  41|[0x800032a4]<br>0x7FFFFFF7|- rs1_val == -9<br>                                                                                                                                                                                           |[0x800003cc]:sub a2, a0, a1<br> [0x800003d0]:sw a2, 96(gp)<br>       |
|  42|[0x800032a8]<br>0xFFFFFF6F|- rs1_val == -17<br>                                                                                                                                                                                          |[0x800003dc]:sub a2, a0, a1<br> [0x800003e0]:sw a2, 100(gp)<br>      |
|  43|[0x800032ac]<br>0xFFFFFFE0|- rs1_val == -33<br>                                                                                                                                                                                          |[0x800003ec]:sub a2, a0, a1<br> [0x800003f0]:sw a2, 104(gp)<br>      |
|  44|[0x800032b0]<br>0x000FFFC0|- rs2_val == -1048577<br> - rs1_val == -65<br>                                                                                                                                                                |[0x80000400]:sub a2, a0, a1<br> [0x80000404]:sw a2, 108(gp)<br>      |
|  45|[0x800032b4]<br>0xFFFFFF78|- rs1_val == -129<br>                                                                                                                                                                                         |[0x80000410]:sub a2, a0, a1<br> [0x80000414]:sw a2, 112(gp)<br>      |
|  46|[0x800032b8]<br>0xAAAAA9AA|- rs2_val == 1431655765<br> - rs1_val == -257<br>                                                                                                                                                             |[0x80000424]:sub a2, a0, a1<br> [0x80000428]:sw a2, 116(gp)<br>      |
|  47|[0x800032bc]<br>0x00007E00|- rs2_val == -32769<br> - rs1_val == -513<br>                                                                                                                                                                 |[0x80000438]:sub a2, a0, a1<br> [0x8000043c]:sw a2, 120(gp)<br>      |
|  48|[0x800032c0]<br>0x0004000A|- rs2_val == -262145<br>                                                                                                                                                                                      |[0x8000044c]:sub a2, a0, a1<br> [0x80000450]:sw a2, 124(gp)<br>      |
|  49|[0x800032c4]<br>0x0007FFFC|- rs2_val == -524289<br>                                                                                                                                                                                      |[0x80000460]:sub a2, a0, a1<br> [0x80000464]:sw a2, 128(gp)<br>      |
|  50|[0x800032c8]<br>0x001FE000|- rs2_val == -2097153<br> - rs1_val == -8193<br>                                                                                                                                                              |[0x80000478]:sub a2, a0, a1<br> [0x8000047c]:sw a2, 132(gp)<br>      |
|  51|[0x800032cc]<br>0xC0800001|- rs2_val == -8388609<br>                                                                                                                                                                                     |[0x8000048c]:sub a2, a0, a1<br> [0x80000490]:sw a2, 136(gp)<br>      |
|  52|[0x800032d0]<br>0x01000011|- rs2_val == -16777217<br>                                                                                                                                                                                    |[0x800004a0]:sub a2, a0, a1<br> [0x800004a4]:sw a2, 140(gp)<br>      |
|  53|[0x800032d4]<br>0xC4000000|- rs2_val == -67108865<br>                                                                                                                                                                                    |[0x800004b8]:sub a2, a0, a1<br> [0x800004bc]:sw a2, 144(gp)<br>      |
|  54|[0x800032d8]<br>0x10200001|- rs2_val == -268435457<br>                                                                                                                                                                                   |[0x800004cc]:sub a2, a0, a1<br> [0x800004d0]:sw a2, 148(gp)<br>      |
|  55|[0x800032dc]<br>0x1FFFFF80|- rs2_val == -536870913<br>                                                                                                                                                                                   |[0x800004e0]:sub a2, a0, a1<br> [0x800004e4]:sw a2, 152(gp)<br>      |
|  56|[0x800032e0]<br>0x75555556|- rs2_val == -1431655766<br>                                                                                                                                                                                  |[0x800004f4]:sub a2, a0, a1<br> [0x800004f8]:sw a2, 156(gp)<br>      |
|  57|[0x800032e4]<br>0xFFF7FBFF|- rs1_val == -1025<br>                                                                                                                                                                                        |[0x80000504]:sub a2, a0, a1<br> [0x80000508]:sw a2, 160(gp)<br>      |
|  58|[0x800032e8]<br>0xFFFFF803|- rs1_val == -2049<br>                                                                                                                                                                                        |[0x80000518]:sub a2, a0, a1<br> [0x8000051c]:sw a2, 164(gp)<br>      |
|  59|[0x800032ec]<br>0xFFFFF010|- rs2_val == -17<br> - rs1_val == -4097<br>                                                                                                                                                                   |[0x8000052c]:sub a2, a0, a1<br> [0x80000530]:sw a2, 168(gp)<br>      |
|  60|[0x800032f0]<br>0xEFFFBFFF|- rs2_val == 268435456<br> - rs1_val == -16385<br>                                                                                                                                                            |[0x80000540]:sub a2, a0, a1<br> [0x80000544]:sw a2, 172(gp)<br>      |
|  61|[0x800032f4]<br>0xFFFF0008|- rs2_val == -9<br> - rs1_val == -65537<br>                                                                                                                                                                   |[0x80000554]:sub a2, a0, a1<br> [0x80000558]:sw a2, 176(gp)<br>      |
|  62|[0x800032f8]<br>0xFDFDFFFF|- rs2_val == 33554432<br> - rs1_val == -131073<br>                                                                                                                                                            |[0x80000568]:sub a2, a0, a1<br> [0x8000056c]:sw a2, 180(gp)<br>      |
|  63|[0x800032fc]<br>0x00040000|- rs1_val == -262145<br>                                                                                                                                                                                      |[0x80000580]:sub a2, a0, a1<br> [0x80000584]:sw a2, 184(gp)<br>      |
|  64|[0x80003300]<br>0xFFF80001|- rs2_val == -2<br> - rs1_val == -524289<br>                                                                                                                                                                  |[0x80000594]:sub a2, a0, a1<br> [0x80000598]:sw a2, 188(gp)<br>      |
|  65|[0x80003304]<br>0xFFF00004|- rs2_val == -5<br> - rs1_val == -1048577<br>                                                                                                                                                                 |[0x800005a8]:sub a2, a0, a1<br> [0x800005ac]:sw a2, 192(gp)<br>      |
|  66|[0x80003308]<br>0xFFDFFEFF|- rs1_val == -2097153<br>                                                                                                                                                                                     |[0x800005bc]:sub a2, a0, a1<br> [0x800005c0]:sw a2, 196(gp)<br>      |
|  67|[0x8000330c]<br>0xFFC00200|- rs2_val == -513<br> - rs1_val == -4194305<br>                                                                                                                                                               |[0x800005d0]:sub a2, a0, a1<br> [0x800005d4]:sw a2, 200(gp)<br>      |
|  68|[0x80003310]<br>0xF77FFFFF|- rs1_val == -8388609<br>                                                                                                                                                                                     |[0x800005e4]:sub a2, a0, a1<br> [0x800005e8]:sw a2, 204(gp)<br>      |
|  69|[0x80003314]<br>0x01000000|- rs1_val == -16777217<br>                                                                                                                                                                                    |[0x800005fc]:sub a2, a0, a1<br> [0x80000600]:sw a2, 208(gp)<br>      |
|  70|[0x80003318]<br>0xFE000020|- rs2_val == -33<br>                                                                                                                                                                                          |[0x80000610]:sub a2, a0, a1<br> [0x80000614]:sw a2, 212(gp)<br>      |
|  71|[0x8000331c]<br>0xFC008000|- rs1_val == -67108865<br>                                                                                                                                                                                    |[0x80000628]:sub a2, a0, a1<br> [0x8000062c]:sw a2, 216(gp)<br>      |
|  72|[0x80003320]<br>0xF7FEFFFF|- rs1_val == -134217729<br>                                                                                                                                                                                   |[0x8000063c]:sub a2, a0, a1<br> [0x80000640]:sw a2, 220(gp)<br>      |
|  73|[0x80003324]<br>0xEFF7FFFF|- rs1_val == -268435457<br>                                                                                                                                                                                   |[0x80000650]:sub a2, a0, a1<br> [0x80000654]:sw a2, 224(gp)<br>      |
|  74|[0x80003328]<br>0xE0100000|- rs1_val == -536870913<br>                                                                                                                                                                                   |[0x80000668]:sub a2, a0, a1<br> [0x8000066c]:sw a2, 228(gp)<br>      |
|  75|[0x8000332c]<br>0x5555555D|- rs1_val == 1431655765<br>                                                                                                                                                                                   |[0x8000067c]:sub a2, a0, a1<br> [0x80000680]:sw a2, 232(gp)<br>      |
|  76|[0x80003330]<br>0x55555555|- rs1_val == -1431655766<br>                                                                                                                                                                                  |[0x80000694]:sub a2, a0, a1<br> [0x80000698]:sw a2, 236(gp)<br>      |
|  77|[0x80003334]<br>0xFFFFFFEF|- rs2_val == 8<br>                                                                                                                                                                                            |[0x800006a4]:sub a2, a0, a1<br> [0x800006a8]:sw a2, 240(gp)<br>      |
|  78|[0x80003338]<br>0xF7FFFFDF|- rs2_val == 32<br>                                                                                                                                                                                           |[0x800006b8]:sub a2, a0, a1<br> [0x800006bc]:sw a2, 244(gp)<br>      |
|  79|[0x8000333c]<br>0xFFFFFFD0|- rs2_val == 64<br>                                                                                                                                                                                           |[0x800006c8]:sub a2, a0, a1<br> [0x800006cc]:sw a2, 248(gp)<br>      |
|  80|[0x80003340]<br>0xFFFFFE07|- rs2_val == 512<br>                                                                                                                                                                                          |[0x800006d8]:sub a2, a0, a1<br> [0x800006dc]:sw a2, 252(gp)<br>      |
|  81|[0x80003344]<br>0xFFFFEEFF|- rs2_val == 4096<br>                                                                                                                                                                                         |[0x800006e8]:sub a2, a0, a1<br> [0x800006ec]:sw a2, 256(gp)<br>      |
|  82|[0x80003348]<br>0xFFFFE200|- rs2_val == 8192<br>                                                                                                                                                                                         |[0x800006f8]:sub a2, a0, a1<br> [0x800006fc]:sw a2, 260(gp)<br>      |
|  83|[0x8000334c]<br>0xFFFFC001|- rs1_val == 1<br> - rs2_val == 16384<br>                                                                                                                                                                     |[0x80000708]:sub a2, a0, a1<br> [0x8000070c]:sw a2, 264(gp)<br>      |
|  84|[0x80003350]<br>0xFFFF8002|- rs2_val == 32768<br>                                                                                                                                                                                        |[0x80000718]:sub a2, a0, a1<br> [0x8000071c]:sw a2, 268(gp)<br>      |
|  85|[0x80003354]<br>0xFFFC0009|- rs2_val == 262144<br>                                                                                                                                                                                       |[0x80000728]:sub a2, a0, a1<br> [0x8000072c]:sw a2, 272(gp)<br>      |
|  86|[0x80003358]<br>0xFF6FFFFF|- rs2_val == 8388608<br>                                                                                                                                                                                      |[0x8000073c]:sub a2, a0, a1<br> [0x80000740]:sw a2, 276(gp)<br>      |
|  87|[0x8000335c]<br>0xFEFEFFFF|- rs2_val == 16777216<br>                                                                                                                                                                                     |[0x80000750]:sub a2, a0, a1<br> [0x80000754]:sw a2, 280(gp)<br>      |
|  88|[0x80003360]<br>0xFBFFFDFF|- rs2_val == 67108864<br>                                                                                                                                                                                     |[0x80000760]:sub a2, a0, a1<br> [0x80000764]:sw a2, 284(gp)<br>      |
|  89|[0x80003364]<br>0xDFFFFFF7|- rs2_val == 536870912<br>                                                                                                                                                                                    |[0x80000770]:sub a2, a0, a1<br> [0x80000774]:sw a2, 288(gp)<br>      |
|  90|[0x80003368]<br>0xBDFFFFFF|- rs2_val == 1073741824<br>                                                                                                                                                                                   |[0x80000784]:sub a2, a0, a1<br> [0x80000788]:sw a2, 292(gp)<br>      |
|  91|[0x8000336c]<br>0x10020001|- rs2_val == -131073<br>                                                                                                                                                                                      |[0x80000798]:sub a2, a0, a1<br> [0x8000079c]:sw a2, 296(gp)<br>      |
|  92|[0x80003370]<br>0xFFFFFFE2|- rs2_val == -3<br>                                                                                                                                                                                           |[0x800007a8]:sub a2, a0, a1<br> [0x800007ac]:sw a2, 300(gp)<br>      |
|  93|[0x80003374]<br>0x08000041|- rs2_val == -65<br>                                                                                                                                                                                          |[0x800007b8]:sub a2, a0, a1<br> [0x800007bc]:sw a2, 304(gp)<br>      |
|  94|[0x80003378]<br>0x40000081|- rs2_val == -129<br>                                                                                                                                                                                         |[0x800007c8]:sub a2, a0, a1<br> [0x800007cc]:sw a2, 308(gp)<br>      |
|  95|[0x8000337c]<br>0x00000421|- rs2_val == -1025<br>                                                                                                                                                                                        |[0x800007d8]:sub a2, a0, a1<br> [0x800007dc]:sw a2, 312(gp)<br>      |
|  96|[0x80003380]<br>0x00000807|- rs2_val == -2049<br>                                                                                                                                                                                        |[0x800007ec]:sub a2, a0, a1<br> [0x800007f0]:sw a2, 316(gp)<br>      |
|  97|[0x80003384]<br>0x80004001|- rs2_val == -16385<br>                                                                                                                                                                                       |[0x80000800]:sub a2, a0, a1<br> [0x80000804]:sw a2, 320(gp)<br>      |
|  98|[0x80003388]<br>0x08010001|- rs2_val == -65537<br>                                                                                                                                                                                       |[0x80000814]:sub a2, a0, a1<br> [0x80000818]:sw a2, 324(gp)<br>      |
|  99|[0x8000338c]<br>0xFFFDFFEF|- rs2_val == 131072<br>                                                                                                                                                                                       |[0x80000824]:sub a2, a0, a1<br> [0x80000828]:sw a2, 328(gp)<br>      |
| 100|[0x80003390]<br>0x7FFFFFEF|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                                                                                                                  |[0x80000838]:sub a2, a0, a1<br> [0x8000083c]:sw a2, 332(gp)<br>      |
