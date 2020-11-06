
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
| SIG_REGION                | [('0x80003204', '0x80003398', '101 words')]      |
| COV_LABELS                | mul      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/mul-01.S/mul-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 101      |
| STAT1                     | 99      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000824]:mul a2, a0, a1
      [0x80000828]:sw a2, 308(ra)
 -- Signature Address: 0x80003388 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs1_val == (-2**(xlen-1))
      - rs2_val == 1073741824
      - rs1_val == -2147483648




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000858]:mul a2, a0, a1
      [0x8000085c]:sw a2, 320(ra)
 -- Signature Address: 0x80003394 Data: 0x00001000
 -- Redundant Coverpoints hit by the op
      - opcode : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val == rs2_val
      - rs2_val == 64
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

|s.no|        signature         |                                                                                                           coverpoints                                                                                                            |                               code                                |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000000|- opcode : mul<br> - rs1 : x26<br> - rs2 : x26<br> - rd : x15<br> - rs1 == rs2 != rd<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == rs2_val<br> - rs2_val == 1073741824<br> - rs1_val == 1073741824<br>                       |[0x80000108]:mul a5, s10, s10<br> [0x8000010c]:sw a5, 0(a7)<br>    |
|   2|[0x80003208]<br>0x00000000|- rs1 : x16<br> - rs2 : x2<br> - rd : x29<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val != rs2_val<br> - rs1_val == 0<br> - rs2_val == 8388608<br>                                                                  |[0x80000118]:mul t4, a6, sp<br> [0x8000011c]:sw t4, 4(a7)<br>      |
|   3|[0x8000320c]<br>0xFFFF0000|- rs1 : x22<br> - rs2 : x30<br> - rd : x30<br> - rs2 == rd != rs1<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 65536<br> - rs1_val == 2147483647<br>                                                                         |[0x8000012c]:mul t5, s6, t5<br> [0x80000130]:sw t5, 8(a7)<br>      |
|   4|[0x80003210]<br>0xFFFFFFF9|- rs1 : x19<br> - rs2 : x7<br> - rd : x19<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == 1<br>                                                                                                         |[0x8000013c]:mul s3, s3, t2<br> [0x80000140]:sw s3, 12(a7)<br>     |
|   5|[0x80003214]<br>0x00000000|- rs1 : x27<br> - rs2 : x27<br> - rd : x27<br> - rs1 == rs2 == rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs2_val == (-2**(xlen-1))<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -2147483648<br> |[0x8000014c]:mul s11, s11, s11<br> [0x80000150]:sw s11, 16(a7)<br> |
|   6|[0x80003218]<br>0x00000000|- rs1 : x2<br> - rs2 : x1<br> - rd : x24<br> - rs2_val == 0<br> - rs1_val == -8193<br>                                                                                                                                            |[0x80000160]:mul s8, sp, ra<br> [0x80000164]:sw s8, 20(a7)<br>     |
|   7|[0x8000321c]<br>0x00000000|- rs1 : x0<br> - rs2 : x28<br> - rd : x14<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br>                                                                                                                        |[0x80000174]:mul a4, zero, t3<br> [0x80000178]:sw a4, 24(a7)<br>   |
|   8|[0x80003220]<br>0xFFFFDFFF|- rs1 : x8<br> - rs2 : x11<br> - rd : x10<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == 1<br>                                                                                                                                |[0x80000188]:mul a0, fp, a1<br> [0x8000018c]:sw a0, 28(a7)<br>     |
|   9|[0x80003224]<br>0x00000028|- rs1 : x6<br> - rs2 : x9<br> - rd : x5<br>                                                                                                                                                                                       |[0x80000198]:mul t0, t1, s1<br> [0x8000019c]:sw t0, 32(a7)<br>     |
|  10|[0x80003228]<br>0x00000010|- rs1 : x9<br> - rs2 : x23<br> - rd : x11<br>                                                                                                                                                                                     |[0x800001a8]:mul a1, s1, s7<br> [0x800001ac]:sw a1, 36(a7)<br>     |
|  11|[0x8000322c]<br>0xFF7FFFFE|- rs1 : x23<br> - rs2 : x19<br> - rd : x28<br> - rs2_val == -4194305<br> - rs1_val == 2<br>                                                                                                                                       |[0x800001bc]:mul t3, s7, s3<br> [0x800001c0]:sw t3, 40(a7)<br>     |
|  12|[0x80003230]<br>0xFFFDFFFC|- rs1 : x30<br> - rs2 : x24<br> - rd : x2<br> - rs2_val == -32769<br> - rs1_val == 4<br>                                                                                                                                          |[0x800001d0]:mul sp, t5, s8<br> [0x800001d4]:sw sp, 44(a7)<br>     |
|  13|[0x80003234]<br>0x00000000|- rs1 : x14<br> - rs2 : x0<br> - rd : x9<br> - rs1_val == 8<br>                                                                                                                                                                   |[0x800001e0]:mul s1, a4, zero<br> [0x800001e4]:sw s1, 48(a7)<br>   |
|  14|[0x80003238]<br>0xFEFFFFE0|- rs1 : x15<br> - rs2 : x22<br> - rd : x7<br> - rs2_val == -524289<br> - rs1_val == 32<br>                                                                                                                                        |[0x800001f4]:mul t2, a5, s6<br> [0x800001f8]:sw t2, 52(a7)<br>     |
|  15|[0x8000323c]<br>0x00000000|- rs1 : x21<br> - rs2 : x13<br> - rd : x0<br> - rs2_val == 64<br> - rs1_val == 64<br>                                                                                                                                             |[0x80000204]:mul zero, s5, a3<br> [0x80000208]:sw zero, 56(a7)<br> |
|  16|[0x80003240]<br>0x00000000|- rs1 : x11<br> - rs2 : x21<br> - rd : x31<br> - rs1_val == 128<br>                                                                                                                                                               |[0x80000214]:mul t6, a1, s5<br> [0x80000218]:sw t6, 60(a7)<br>     |
|  17|[0x80003244]<br>0x00000000|- rs1 : x5<br> - rs2 : x16<br> - rd : x25<br> - rs2_val == 536870912<br> - rs1_val == 256<br>                                                                                                                                     |[0x80000224]:mul s9, t0, a6<br> [0x80000228]:sw s9, 64(a7)<br>     |
|  18|[0x80003248]<br>0x00004000|- rs1 : x3<br> - rs2 : x5<br> - rd : x23<br> - rs2_val == 32<br> - rs1_val == 512<br>                                                                                                                                             |[0x80000234]:mul s7, gp, t0<br> [0x80000238]:sw s7, 68(a7)<br>     |
|  19|[0x8000324c]<br>0x02000000|- rs1 : x4<br> - rs2 : x29<br> - rd : x1<br> - rs2_val == 32768<br> - rs1_val == 1024<br>                                                                                                                                         |[0x80000244]:mul ra, tp, t4<br> [0x80000248]:sw ra, 72(a7)<br>     |
|  20|[0x80003250]<br>0xFDFFF800|- rs1 : x1<br> - rs2 : x12<br> - rd : x26<br> - rs2_val == -16385<br> - rs1_val == 2048<br>                                                                                                                                       |[0x8000025c]:mul s10, ra, a2<br> [0x80000260]:sw s10, 76(a7)<br>   |
|  21|[0x80003254]<br>0xFFFFD000|- rs1 : x17<br> - rs2 : x20<br> - rd : x21<br> - rs2_val == -3<br> - rs1_val == 4096<br>                                                                                                                                          |[0x80000274]:mul s5, a7, s4<br> [0x80000278]:sw s5, 0(ra)<br>      |
|  22|[0x80003258]<br>0x00000000|- rs1 : x18<br> - rs2 : x25<br> - rd : x22<br> - rs1_val == 8192<br>                                                                                                                                                              |[0x80000284]:mul s6, s2, s9<br> [0x80000288]:sw s6, 4(ra)<br>      |
|  23|[0x8000325c]<br>0xFFFBC000|- rs1 : x28<br> - rs2 : x10<br> - rd : x20<br> - rs2_val == -17<br> - rs1_val == 16384<br>                                                                                                                                        |[0x80000294]:mul s4, t3, a0<br> [0x80000298]:sw s4, 8(ra)<br>      |
|  24|[0x80003260]<br>0x00000000|- rs1 : x12<br> - rs2 : x14<br> - rd : x16<br> - rs1_val == 32768<br>                                                                                                                                                             |[0x800002a4]:mul a6, a2, a4<br> [0x800002a8]:sw a6, 12(ra)<br>     |
|  25|[0x80003264]<br>0xFFF60000|- rs1 : x10<br> - rs2 : x17<br> - rd : x3<br> - rs1_val == 65536<br>                                                                                                                                                              |[0x800002b4]:mul gp, a0, a7<br> [0x800002b8]:sw gp, 16(ra)<br>     |
|  26|[0x80003268]<br>0x00000000|- rs1 : x24<br> - rs2 : x15<br> - rd : x4<br> - rs2_val == 2097152<br> - rs1_val == 131072<br>                                                                                                                                    |[0x800002c4]:mul tp, s8, a5<br> [0x800002c8]:sw tp, 20(ra)<br>     |
|  27|[0x8000326c]<br>0x00200000|- rs1 : x20<br> - rs2 : x4<br> - rd : x17<br> - rs2_val == 8<br> - rs1_val == 262144<br>                                                                                                                                          |[0x800002d4]:mul a7, s4, tp<br> [0x800002d8]:sw a7, 24(ra)<br>     |
|  28|[0x80003270]<br>0xFFD80000|- rs1 : x25<br> - rs2 : x8<br> - rd : x6<br> - rs2_val == -5<br> - rs1_val == 524288<br>                                                                                                                                          |[0x800002e4]:mul t1, s9, fp<br> [0x800002e8]:sw t1, 28(ra)<br>     |
|  29|[0x80003274]<br>0x00100000|- rs1 : x7<br> - rs2 : x6<br> - rd : x8<br> - rs1_val == 1048576<br>                                                                                                                                                              |[0x800002f4]:mul fp, t2, t1<br> [0x800002f8]:sw fp, 32(ra)<br>     |
|  30|[0x80003278]<br>0xFFC00000|- rs1 : x29<br> - rs2 : x18<br> - rd : x13<br> - rs2_val == -2049<br> - rs1_val == 4194304<br>                                                                                                                                    |[0x80000308]:mul a3, t4, s2<br> [0x8000030c]:sw a3, 36(ra)<br>     |
|  31|[0x8000327c]<br>0xFF800000|- rs1 : x13<br> - rs2 : x31<br> - rd : x18<br> - rs2_val == -1025<br> - rs1_val == 8388608<br>                                                                                                                                    |[0x80000318]:mul s2, a3, t6<br> [0x8000031c]:sw s2, 40(ra)<br>     |
|  32|[0x80003280]<br>0x00000000|- rs1 : x31<br> - rs2 : x3<br> - rd : x12<br> - rs2_val == 16384<br> - rs1_val == 16777216<br>                                                                                                                                    |[0x80000328]:mul a2, t6, gp<br> [0x8000032c]:sw a2, 44(ra)<br>     |
|  33|[0x80003284]<br>0x08000000|- rs2_val == 4<br> - rs1_val == 33554432<br>                                                                                                                                                                                      |[0x80000338]:mul a2, a0, a1<br> [0x8000033c]:sw a2, 48(ra)<br>     |
|  34|[0x80003288]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                                                                                                         |[0x80000348]:mul a2, a0, a1<br> [0x8000034c]:sw a2, 52(ra)<br>     |
|  35|[0x8000328c]<br>0xD8000000|- rs1_val == 134217728<br>                                                                                                                                                                                                        |[0x80000358]:mul a2, a0, a1<br> [0x8000035c]:sw a2, 56(ra)<br>     |
|  36|[0x80003290]<br>0x30000000|- rs1_val == 268435456<br>                                                                                                                                                                                                        |[0x80000368]:mul a2, a0, a1<br> [0x8000036c]:sw a2, 60(ra)<br>     |
|  37|[0x80003294]<br>0xE0000000|- rs1_val == 536870912<br>                                                                                                                                                                                                        |[0x80000378]:mul a2, a0, a1<br> [0x8000037c]:sw a2, 64(ra)<br>     |
|  38|[0x80003298]<br>0x00000000|- rs2_val == 262144<br>                                                                                                                                                                                                           |[0x80000388]:mul a2, a0, a1<br> [0x8000038c]:sw a2, 68(ra)<br>     |
|  39|[0x8000329c]<br>0x00000002|- rs1_val == -2<br>                                                                                                                                                                                                               |[0x8000039c]:mul a2, a0, a1<br> [0x800003a0]:sw a2, 72(ra)<br>     |
|  40|[0x800032a0]<br>0xFFFFFFF7|- rs1_val == -3<br>                                                                                                                                                                                                               |[0x800003ac]:mul a2, a0, a1<br> [0x800003b0]:sw a2, 76(ra)<br>     |
|  41|[0x800032a4]<br>0xF6000000|- rs2_val == 33554432<br> - rs1_val == -5<br>                                                                                                                                                                                     |[0x800003bc]:mul a2, a0, a1<br> [0x800003c0]:sw a2, 80(ra)<br>     |
|  42|[0x800032a8]<br>0xFF700000|- rs2_val == 1048576<br> - rs1_val == -9<br>                                                                                                                                                                                      |[0x800003cc]:mul a2, a0, a1<br> [0x800003d0]:sw a2, 84(ra)<br>     |
|  43|[0x800032ac]<br>0x22000011|- rs2_val == -33554433<br> - rs1_val == -17<br>                                                                                                                                                                                   |[0x800003e0]:mul a2, a0, a1<br> [0x800003e4]:sw a2, 88(ra)<br>     |
|  44|[0x800032b0]<br>0xFDF00000|- rs1_val == -33<br>                                                                                                                                                                                                              |[0x800003f0]:mul a2, a0, a1<br> [0x800003f4]:sw a2, 92(ra)<br>     |
|  45|[0x800032b4]<br>0x00082041|- rs2_val == -8193<br> - rs1_val == -65<br>                                                                                                                                                                                       |[0x80000404]:mul a2, a0, a1<br> [0x80000408]:sw a2, 96(ra)<br>     |
|  46|[0x800032b8]<br>0x00180006|- rs2_val == -262145<br>                                                                                                                                                                                                          |[0x80000418]:mul a2, a0, a1<br> [0x8000041c]:sw a2, 100(ra)<br>    |
|  47|[0x800032bc]<br>0xFFFFC000|- rs2_val == -1048577<br>                                                                                                                                                                                                         |[0x8000042c]:mul a2, a0, a1<br> [0x80000430]:sw a2, 104(ra)<br>    |
|  48|[0x800032c0]<br>0xFF000000|- rs2_val == -2097153<br>                                                                                                                                                                                                         |[0x80000440]:mul a2, a0, a1<br> [0x80000444]:sw a2, 108(ra)<br>    |
|  49|[0x800032c4]<br>0xFFE00000|- rs2_val == -8388609<br> - rs1_val == 2097152<br>                                                                                                                                                                                |[0x80000454]:mul a2, a0, a1<br> [0x80000458]:sw a2, 112(ra)<br>    |
|  50|[0x800032c8]<br>0xDFFFFFE0|- rs2_val == -16777217<br>                                                                                                                                                                                                        |[0x80000468]:mul a2, a0, a1<br> [0x8000046c]:sw a2, 116(ra)<br>    |
|  51|[0x800032cc]<br>0x04000001|- rs2_val == -67108865<br>                                                                                                                                                                                                        |[0x8000047c]:mul a2, a0, a1<br> [0x80000480]:sw a2, 120(ra)<br>    |
|  52|[0x800032d0]<br>0x08080001|- rs2_val == -134217729<br> - rs1_val == -524289<br>                                                                                                                                                                              |[0x80000494]:mul a2, a0, a1<br> [0x80000498]:sw a2, 124(ra)<br>    |
|  53|[0x800032d4]<br>0x10000001|- rs2_val == -268435457<br>                                                                                                                                                                                                       |[0x800004a8]:mul a2, a0, a1<br> [0x800004ac]:sw a2, 128(ra)<br>    |
|  54|[0x800032d8]<br>0xFFFF0000|- rs2_val == -536870913<br>                                                                                                                                                                                                       |[0x800004bc]:mul a2, a0, a1<br> [0x800004c0]:sw a2, 132(ra)<br>    |
|  55|[0x800032dc]<br>0xC0000000|- rs2_val == -1073741825<br>                                                                                                                                                                                                      |[0x800004d0]:mul a2, a0, a1<br> [0x800004d4]:sw a2, 136(ra)<br>    |
|  56|[0x800032e0]<br>0x00AAAAAB|- rs2_val == 1431655765<br> - rs1_val == -33554433<br>                                                                                                                                                                            |[0x800004e8]:mul a2, a0, a1<br> [0x800004ec]:sw a2, 140(ra)<br>    |
|  57|[0x800032e4]<br>0x55554000|- rs2_val == -1431655766<br>                                                                                                                                                                                                      |[0x800004fc]:mul a2, a0, a1<br> [0x80000500]:sw a2, 144(ra)<br>    |
|  58|[0x800032e8]<br>0x08000081|- rs1_val == -129<br>                                                                                                                                                                                                             |[0x80000510]:mul a2, a0, a1<br> [0x80000514]:sw a2, 148(ra)<br>    |
|  59|[0x800032ec]<br>0xFFFFF9FA|- rs1_val == -257<br>                                                                                                                                                                                                             |[0x80000520]:mul a2, a0, a1<br> [0x80000524]:sw a2, 152(ra)<br>    |
|  60|[0x800032f0]<br>0xFF000000|- rs2_val == 16777216<br> - rs1_val == -513<br>                                                                                                                                                                                   |[0x80000530]:mul a2, a0, a1<br> [0x80000534]:sw a2, 156(ra)<br>    |
|  61|[0x800032f4]<br>0x04000401|- rs1_val == -1025<br>                                                                                                                                                                                                            |[0x80000544]:mul a2, a0, a1<br> [0x80000548]:sw a2, 160(ra)<br>    |
|  62|[0x800032f8]<br>0xFF7FF000|- rs2_val == 4096<br> - rs1_val == -2049<br>                                                                                                                                                                                      |[0x80000558]:mul a2, a0, a1<br> [0x8000055c]:sw a2, 164(ra)<br>    |
|  63|[0x800032fc]<br>0x00003003|- rs1_val == -4097<br>                                                                                                                                                                                                            |[0x8000056c]:mul a2, a0, a1<br> [0x80000570]:sw a2, 168(ra)<br>    |
|  64|[0x80003300]<br>0xFFF00000|- rs1_val == -16385<br>                                                                                                                                                                                                           |[0x80000580]:mul a2, a0, a1<br> [0x80000584]:sw a2, 172(ra)<br>    |
|  65|[0x80003304]<br>0xFDFFFC00|- rs2_val == 1024<br> - rs1_val == -32769<br>                                                                                                                                                                                     |[0x80000594]:mul a2, a0, a1<br> [0x80000598]:sw a2, 176(ra)<br>    |
|  66|[0x80003308]<br>0xF0000000|- rs2_val == 268435456<br> - rs1_val == -65537<br>                                                                                                                                                                                |[0x800005a8]:mul a2, a0, a1<br> [0x800005ac]:sw a2, 180(ra)<br>    |
|  67|[0x8000330c]<br>0xFEFFFF80|- rs2_val == 128<br> - rs1_val == -131073<br>                                                                                                                                                                                     |[0x800005bc]:mul a2, a0, a1<br> [0x800005c0]:sw a2, 184(ra)<br>    |
|  68|[0x80003310]<br>0x00060001|- rs2_val == -131073<br> - rs1_val == -262145<br>                                                                                                                                                                                 |[0x800005d4]:mul a2, a0, a1<br> [0x800005d8]:sw a2, 188(ra)<br>    |
|  69|[0x80003314]<br>0x00900001|- rs1_val == -1048577<br>                                                                                                                                                                                                         |[0x800005ec]:mul a2, a0, a1<br> [0x800005f0]:sw a2, 192(ra)<br>    |
|  70|[0x80003318]<br>0x00200801|- rs1_val == -2097153<br>                                                                                                                                                                                                         |[0x80000604]:mul a2, a0, a1<br> [0x80000608]:sw a2, 196(ra)<br>    |
|  71|[0x8000331c]<br>0x01400001|- rs1_val == -4194305<br>                                                                                                                                                                                                         |[0x8000061c]:mul a2, a0, a1<br> [0x80000620]:sw a2, 200(ra)<br>    |
|  72|[0x80003320]<br>0xFFFE0000|- rs2_val == 131072<br> - rs1_val == -8388609<br>                                                                                                                                                                                 |[0x80000630]:mul a2, a0, a1<br> [0x80000634]:sw a2, 204(ra)<br>    |
|  73|[0x80003324]<br>0x11000001|- rs1_val == -16777217<br>                                                                                                                                                                                                        |[0x80000648]:mul a2, a0, a1<br> [0x8000064c]:sw a2, 208(ra)<br>    |
|  74|[0x80003328]<br>0xEBFFFFFB|- rs1_val == -67108865<br>                                                                                                                                                                                                        |[0x8000065c]:mul a2, a0, a1<br> [0x80000660]:sw a2, 212(ra)<br>    |
|  75|[0x8000332c]<br>0x80000000|- rs1_val == -134217729<br>                                                                                                                                                                                                       |[0x80000670]:mul a2, a0, a1<br> [0x80000674]:sw a2, 216(ra)<br>    |
|  76|[0x80003330]<br>0x90000009|- rs2_val == -9<br> - rs1_val == -268435457<br>                                                                                                                                                                                   |[0x80000684]:mul a2, a0, a1<br> [0x80000688]:sw a2, 220(ra)<br>    |
|  77|[0x80003334]<br>0x20000009|- rs1_val == -536870913<br>                                                                                                                                                                                                       |[0x80000698]:mul a2, a0, a1<br> [0x8000069c]:sw a2, 224(ra)<br>    |
|  78|[0x80003338]<br>0xE0000000|- rs1_val == -1073741825<br>                                                                                                                                                                                                      |[0x800006ac]:mul a2, a0, a1<br> [0x800006b0]:sw a2, 228(ra)<br>    |
|  79|[0x8000333c]<br>0xAAAA0000|- rs1_val == 1431655765<br>                                                                                                                                                                                                       |[0x800006c0]:mul a2, a0, a1<br> [0x800006c4]:sw a2, 232(ra)<br>    |
|  80|[0x80003340]<br>0xD5555556|- rs1_val == -1431655766<br>                                                                                                                                                                                                      |[0x800006d8]:mul a2, a0, a1<br> [0x800006dc]:sw a2, 236(ra)<br>    |
|  81|[0x80003344]<br>0xFFFFFFF6|- rs2_val == 2<br>                                                                                                                                                                                                                |[0x800006e8]:mul a2, a0, a1<br> [0x800006ec]:sw a2, 240(ra)<br>    |
|  82|[0x80003348]<br>0xDFFFFFF0|- rs2_val == 16<br>                                                                                                                                                                                                               |[0x800006fc]:mul a2, a0, a1<br> [0x80000700]:sw a2, 244(ra)<br>    |
|  83|[0x8000334c]<br>0xFFF80000|- rs2_val == 524288<br>                                                                                                                                                                                                           |[0x80000710]:mul a2, a0, a1<br> [0x80000714]:sw a2, 248(ra)<br>    |
|  84|[0x80003350]<br>0xFFC00000|- rs2_val == 4194304<br>                                                                                                                                                                                                          |[0x80000724]:mul a2, a0, a1<br> [0x80000728]:sw a2, 252(ra)<br>    |
|  85|[0x80003354]<br>0x0C000000|- rs2_val == 67108864<br>                                                                                                                                                                                                         |[0x80000734]:mul a2, a0, a1<br> [0x80000738]:sw a2, 256(ra)<br>    |
|  86|[0x80003358]<br>0xF8000000|- rs2_val == 134217728<br>                                                                                                                                                                                                        |[0x80000744]:mul a2, a0, a1<br> [0x80000748]:sw a2, 260(ra)<br>    |
|  87|[0x8000335c]<br>0xFFFFF000|- rs2_val == -2<br>                                                                                                                                                                                                               |[0x80000758]:mul a2, a0, a1<br> [0x8000075c]:sw a2, 264(ra)<br>    |
|  88|[0x80003360]<br>0xFFFBE000|- rs2_val == -33<br>                                                                                                                                                                                                              |[0x80000768]:mul a2, a0, a1<br> [0x8000076c]:sw a2, 268(ra)<br>    |
|  89|[0x80003364]<br>0xFFBF0000|- rs2_val == -65<br>                                                                                                                                                                                                              |[0x80000778]:mul a2, a0, a1<br> [0x8000077c]:sw a2, 272(ra)<br>    |
|  90|[0x80003368]<br>0xFF800000|- rs2_val == -513<br>                                                                                                                                                                                                             |[0x80000788]:mul a2, a0, a1<br> [0x8000078c]:sw a2, 276(ra)<br>    |
|  91|[0x8000336c]<br>0x04080081|- rs2_val == -129<br>                                                                                                                                                                                                             |[0x8000079c]:mul a2, a0, a1<br> [0x800007a0]:sw a2, 280(ra)<br>    |
|  92|[0x80003370]<br>0x00404101|- rs2_val == -257<br>                                                                                                                                                                                                             |[0x800007b0]:mul a2, a0, a1<br> [0x800007b4]:sw a2, 284(ra)<br>    |
|  93|[0x80003374]<br>0x55555400|- rs2_val == 512<br>                                                                                                                                                                                                              |[0x800007c4]:mul a2, a0, a1<br> [0x800007c8]:sw a2, 288(ra)<br>    |
|  94|[0x80003378]<br>0x00000000|- rs2_val == 2048<br>                                                                                                                                                                                                             |[0x800007d8]:mul a2, a0, a1<br> [0x800007dc]:sw a2, 292(ra)<br>    |
|  95|[0x8000337c]<br>0x08009001|- rs2_val == -4097<br>                                                                                                                                                                                                            |[0x800007f0]:mul a2, a0, a1<br> [0x800007f4]:sw a2, 296(ra)<br>    |
|  96|[0x80003380]<br>0x00000000|- rs2_val == 8192<br>                                                                                                                                                                                                             |[0x80000800]:mul a2, a0, a1<br> [0x80000804]:sw a2, 300(ra)<br>    |
|  97|[0x80003384]<br>0x00020002|- rs2_val == -65537<br>                                                                                                                                                                                                           |[0x80000814]:mul a2, a0, a1<br> [0x80000818]:sw a2, 304(ra)<br>    |
|  98|[0x8000338c]<br>0xFFFFFFF0|- rs1_val == 16<br>                                                                                                                                                                                                               |[0x80000838]:mul a2, a0, a1<br> [0x8000083c]:sw a2, 312(ra)<br>    |
|  99|[0x80003390]<br>0x00000800|- rs2_val == 256<br>                                                                                                                                                                                                              |[0x80000848]:mul a2, a0, a1<br> [0x8000084c]:sw a2, 316(ra)<br>    |
