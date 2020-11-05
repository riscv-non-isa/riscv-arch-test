
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000820')]      |
| SIG_REGION                | [('0x80003204', '0x80003398', '101 words')]      |
| COV_LABELS                | mul      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/mul-01.S/mul-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 98      |
| STAT1                     | 96      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007d4]:mul a2, a0, a1
      [0x800007d8]:sw a2, 300(t0)
 -- Signature Address: 0x80003384 Data: 0x80000000
 -- Redundant Coverpoints hit by the op
      - opcode : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val != rs2_val
      - rs1_val == (-2**(xlen-1))
      - rs2_val == -129
      - rs1_val == -2147483648




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000818]:mul a2, a0, a1
      [0x8000081c]:sw a2, 316(t0)
 -- Signature Address: 0x80003394 Data: 0x00800000
 -- Redundant Coverpoints hit by the op
      - opcode : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 1
      - rs1_val == 8388608






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

|s.no|        signature         |                                                                                          coverpoints                                                                                           |                               code                                |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00004101|- opcode : mul<br> - rs1 : x30<br> - rs2 : x30<br> - rd : x30<br> - rs1 == rs2 == rd<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == rs2_val<br> - rs2_val == -129<br> - rs1_val == -129<br> |[0x80000108]:mul t5, t5, t5<br> [0x8000010c]:sw t5, 0(tp)<br>      |
|   2|[0x80003214]<br>0x00000000|- rs1 : x19<br> - rs2 : x21<br> - rd : x21<br> - rs2 == rd != rs1<br> - rs1_val != rs2_val<br> - rs1_val == 0<br> - rs2_val == 4194304<br>                                                      |[0x80000118]:mul s5, s3, s5<br> [0x8000011c]:sw s5, 4(tp)<br>      |
|   3|[0x80003218]<br>0xFFFFFFFE|- rs1 : x31<br> - rs2 : x13<br> - rd : x31<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs2_val == 2<br> - rs1_val == 2147483647<br>         |[0x8000012c]:mul t6, t6, a3<br> [0x80000130]:sw t6, 8(tp)<br>      |
|   4|[0x8000321c]<br>0x08000000|- rs1 : x5<br> - rs2 : x11<br> - rd : x6<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == 1<br> - rs2_val == 134217728<br>                                                        |[0x8000013c]:mul t1, t0, a1<br> [0x80000140]:sw t1, 12(tp)<br>     |
|   5|[0x80003220]<br>0x00000000|- rs1 : x28<br> - rs2 : x28<br> - rd : x1<br> - rs1 == rs2 != rd<br> - rs2_val == (-2**(xlen-1))<br> - rs1_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == -2147483648<br>  |[0x8000014c]:mul ra, t3, t3<br> [0x80000150]:sw ra, 16(tp)<br>     |
|   6|[0x80003224]<br>0x00000000|- rs1 : x15<br> - rs2 : x18<br> - rd : x28<br> - rs2_val == 0<br> - rs1_val == 1073741824<br>                                                                                                   |[0x8000015c]:mul t3, a5, s2<br> [0x80000160]:sw t3, 20(tp)<br>     |
|   7|[0x80003228]<br>0xFC000000|- rs1 : x11<br> - rs2 : x3<br> - rd : x12<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == 67108864<br>                                                            |[0x80000170]:mul a2, a1, gp<br> [0x80000174]:sw a2, 24(tp)<br>     |
|   8|[0x8000322c]<br>0xFFFFEFFF|- rs1 : x18<br> - rs2 : x7<br> - rd : x16<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == 1<br> - rs1_val == -4097<br>                                                                       |[0x80000184]:mul a6, s2, t2<br> [0x80000188]:sw a6, 28(tp)<br>     |
|   9|[0x80003230]<br>0x00000010|- rs1 : x10<br> - rs2 : x24<br> - rd : x20<br> - rs2_val == 4<br> - rs1_val == 4<br>                                                                                                            |[0x80000194]:mul s4, a0, s8<br> [0x80000198]:sw s4, 32(tp)<br>     |
|  10|[0x80003234]<br>0xFFFFFFFA|- rs1 : x17<br> - rs2 : x26<br> - rd : x3<br> - rs1_val > 0 and rs2_val < 0<br> - rs2_val == -3<br> - rs1_val == 2<br>                                                                          |[0x800001a4]:mul gp, a7, s10<br> [0x800001a8]:sw gp, 36(tp)<br>    |
|  11|[0x80003238]<br>0x00080000|- rs1 : x24<br> - rs2 : x5<br> - rd : x7<br> - rs2_val == 32768<br> - rs1_val == 16<br>                                                                                                         |[0x800001b4]:mul t2, s8, t0<br> [0x800001b8]:sw t2, 40(tp)<br>     |
|  12|[0x8000323c]<br>0x00000000|- rs1 : x0<br> - rs2 : x6<br> - rd : x5<br> - rs2_val == -65<br>                                                                                                                                |[0x800001c4]:mul t0, zero, t1<br> [0x800001c8]:sw t0, 44(tp)<br>   |
|  13|[0x80003240]<br>0xFFFFF7C0|- rs1 : x22<br> - rs2 : x17<br> - rd : x13<br> - rs2_val == -33<br> - rs1_val == 64<br>                                                                                                         |[0x800001d4]:mul a3, s6, a7<br> [0x800001d8]:sw a3, 48(tp)<br>     |
|  14|[0x80003244]<br>0xFFFFFF80|- rs1 : x25<br> - rs2 : x2<br> - rd : x10<br> - rs2_val == -1073741825<br> - rs1_val == 128<br>                                                                                                 |[0x800001e8]:mul a0, s9, sp<br> [0x800001ec]:sw a0, 52(tp)<br>     |
|  15|[0x80003248]<br>0x02000000|- rs1 : x16<br> - rs2 : x12<br> - rd : x15<br> - rs2_val == 131072<br> - rs1_val == 256<br>                                                                                                     |[0x800001f8]:mul a5, a6, a2<br> [0x800001fc]:sw a5, 56(tp)<br>     |
|  16|[0x8000324c]<br>0x00000E00|- rs1 : x26<br> - rs2 : x31<br> - rd : x29<br> - rs1_val == 512<br>                                                                                                                             |[0x80000208]:mul t4, s10, t6<br> [0x8000020c]:sw t4, 60(tp)<br>    |
|  17|[0x80003250]<br>0x00002400|- rs1 : x7<br> - rs2 : x22<br> - rd : x19<br> - rs1_val == 1024<br>                                                                                                                             |[0x80000218]:mul s3, t2, s6<br> [0x8000021c]:sw s3, 64(tp)<br>     |
|  18|[0x80003254]<br>0x00001800|- rs1 : x23<br> - rs2 : x9<br> - rd : x8<br> - rs1_val == 2048<br>                                                                                                                              |[0x8000022c]:mul fp, s7, s1<br> [0x80000230]:sw fp, 68(tp)<br>     |
|  19|[0x80003258]<br>0xAAAAA000|- rs1 : x6<br> - rs2 : x4<br> - rd : x9<br> - rs2_val == -1431655766<br> - rs1_val == 4096<br>                                                                                                  |[0x80000248]:mul s1, t1, tp<br> [0x8000024c]:sw s1, 0(t0)<br>      |
|  20|[0x8000325c]<br>0x00200000|- rs1 : x2<br> - rs2 : x8<br> - rd : x22<br> - rs2_val == 256<br> - rs1_val == 8192<br>                                                                                                         |[0x80000258]:mul s6, sp, fp<br> [0x8000025c]:sw s6, 4(t0)<br>      |
|  21|[0x80003260]<br>0x00000000|- rs1 : x8<br> - rs2 : x0<br> - rd : x14<br> - rs1_val == 16384<br>                                                                                                                             |[0x8000026c]:mul a4, fp, zero<br> [0x80000270]:sw a4, 8(t0)<br>    |
|  22|[0x80003264]<br>0x00000000|- rs1 : x20<br> - rs2 : x29<br> - rd : x26<br> - rs1_val == 32768<br>                                                                                                                           |[0x8000027c]:mul s10, s4, t4<br> [0x80000280]:sw s10, 12(t0)<br>   |
|  23|[0x80003268]<br>0x00000000|- rs1 : x27<br> - rs2 : x14<br> - rd : x17<br> - rs1_val == 65536<br>                                                                                                                           |[0x8000028c]:mul a7, s11, a4<br> [0x80000290]:sw a7, 16(t0)<br>    |
|  24|[0x8000326c]<br>0xFFFE0000|- rs1 : x9<br> - rs2 : x25<br> - rd : x4<br> - rs2_val == -134217729<br> - rs1_val == 131072<br>                                                                                                |[0x800002a0]:mul tp, s1, s9<br> [0x800002a4]:sw tp, 20(t0)<br>     |
|  25|[0x80003270]<br>0x01000000|- rs1 : x21<br> - rs2 : x27<br> - rd : x24<br> - rs2_val == 64<br> - rs1_val == 262144<br>                                                                                                      |[0x800002b0]:mul s8, s5, s11<br> [0x800002b4]:sw s8, 24(t0)<br>    |
|  26|[0x80003274]<br>0x02000000|- rs1 : x13<br> - rs2 : x10<br> - rd : x27<br> - rs1_val == 524288<br>                                                                                                                          |[0x800002c0]:mul s11, a3, a0<br> [0x800002c4]:sw s11, 28(t0)<br>   |
|  27|[0x80003278]<br>0xFFF00000|- rs1 : x12<br> - rs2 : x1<br> - rd : x11<br> - rs2_val == -524289<br> - rs1_val == 1048576<br>                                                                                                 |[0x800002d4]:mul a1, a2, ra<br> [0x800002d8]:sw a1, 32(t0)<br>     |
|  28|[0x8000327c]<br>0x00200000|- rs1 : x4<br> - rs2 : x23<br> - rd : x18<br> - rs1_val == 2097152<br>                                                                                                                          |[0x800002e4]:mul s2, tp, s7<br> [0x800002e8]:sw s2, 36(t0)<br>     |
|  29|[0x80003280]<br>0xFFC00000|- rs1 : x29<br> - rs2 : x16<br> - rd : x2<br> - rs1_val == 4194304<br>                                                                                                                          |[0x800002f8]:mul sp, t4, a6<br> [0x800002fc]:sw sp, 40(t0)<br>     |
|  30|[0x80003284]<br>0x00000000|- rs1 : x14<br> - rs2 : x19<br> - rd : x0<br> - rs1_val == 8388608<br>                                                                                                                          |[0x80000308]:mul zero, a4, s3<br> [0x8000030c]:sw zero, 44(t0)<br> |
|  31|[0x80003288]<br>0x00000000|- rs1 : x1<br> - rs2 : x15<br> - rd : x23<br> - rs2_val == 262144<br> - rs1_val == 16777216<br>                                                                                                 |[0x80000318]:mul s7, ra, a5<br> [0x8000031c]:sw s7, 48(t0)<br>     |
|  32|[0x8000328c]<br>0xF0000000|- rs1 : x3<br> - rs2 : x20<br> - rd : x25<br> - rs1_val == 33554432<br>                                                                                                                         |[0x80000328]:mul s9, gp, s4<br> [0x8000032c]:sw s9, 52(t0)<br>     |
|  33|[0x80003290]<br>0xF8000000|- rs2_val == -33554433<br> - rs1_val == 134217728<br>                                                                                                                                           |[0x8000033c]:mul a2, a0, a1<br> [0x80000340]:sw a2, 56(t0)<br>     |
|  34|[0x80003294]<br>0xF0000000|- rs2_val == -4194305<br> - rs1_val == 268435456<br>                                                                                                                                            |[0x80000350]:mul a2, a0, a1<br> [0x80000354]:sw a2, 60(t0)<br>     |
|  35|[0x80003298]<br>0x00000000|- rs2_val == 32<br> - rs1_val == 536870912<br>                                                                                                                                                  |[0x80000360]:mul a2, a0, a1<br> [0x80000364]:sw a2, 64(t0)<br>     |
|  36|[0x8000329c]<br>0x10000002|- rs1_val == -2<br>                                                                                                                                                                             |[0x80000374]:mul a2, a0, a1<br> [0x80000378]:sw a2, 68(t0)<br>     |
|  37|[0x800032a0]<br>0xFFFFA000|- rs2_val == 8192<br> - rs1_val == -3<br>                                                                                                                                                       |[0x80000384]:mul a2, a0, a1<br> [0x80000388]:sw a2, 72(t0)<br>     |
|  38|[0x800032a4]<br>0x00000023|- rs1_val == -5<br>                                                                                                                                                                             |[0x80000394]:mul a2, a0, a1<br> [0x80000398]:sw a2, 76(t0)<br>     |
|  39|[0x800032a8]<br>0xFFFFFB80|- rs2_val == 128<br> - rs1_val == -9<br>                                                                                                                                                        |[0x800003a4]:mul a2, a0, a1<br> [0x800003a8]:sw a2, 80(t0)<br>     |
|  40|[0x800032ac]<br>0x00000000|- rs1_val == -17<br>                                                                                                                                                                            |[0x800003b4]:mul a2, a0, a1<br> [0x800003b8]:sw a2, 84(t0)<br>     |
|  41|[0x800032b0]<br>0xDF000000|- rs2_val == 16777216<br> - rs1_val == -33<br>                                                                                                                                                  |[0x800003c4]:mul a2, a0, a1<br> [0x800003c8]:sw a2, 88(t0)<br>     |
|  42|[0x800032b4]<br>0x00000861|- rs1_val == -65<br>                                                                                                                                                                            |[0x800003d4]:mul a2, a0, a1<br> [0x800003d8]:sw a2, 92(t0)<br>     |
|  43|[0x800032b8]<br>0xFFFEFE00|- rs2_val == 512<br>                                                                                                                                                                            |[0x800003e4]:mul a2, a0, a1<br> [0x800003e8]:sw a2, 96(t0)<br>     |
|  44|[0x800032bc]<br>0x00048001|- rs2_val == -262145<br> - rs1_val == -32769<br>                                                                                                                                                |[0x800003fc]:mul a2, a0, a1<br> [0x80000400]:sw a2, 100(t0)<br>    |
|  45|[0x800032c0]<br>0x00100001|- rs2_val == -1048577<br>                                                                                                                                                                       |[0x80000410]:mul a2, a0, a1<br> [0x80000414]:sw a2, 104(t0)<br>    |
|  46|[0x800032c4]<br>0xFF1FFFF9|- rs2_val == -2097153<br>                                                                                                                                                                       |[0x80000424]:mul a2, a0, a1<br> [0x80000428]:sw a2, 108(t0)<br>    |
|  47|[0x800032c8]<br>0x00801001|- rs2_val == -8388609<br>                                                                                                                                                                       |[0x8000043c]:mul a2, a0, a1<br> [0x80000440]:sw a2, 112(t0)<br>    |
|  48|[0x800032cc]<br>0xFFF80000|- rs2_val == -16777217<br>                                                                                                                                                                      |[0x80000450]:mul a2, a0, a1<br> [0x80000454]:sw a2, 116(t0)<br>    |
|  49|[0x800032d0]<br>0x10000201|- rs2_val == -268435457<br> - rs1_val == -513<br>                                                                                                                                               |[0x80000464]:mul a2, a0, a1<br> [0x80000468]:sw a2, 120(t0)<br>    |
|  50|[0x800032d4]<br>0x00000008|- rs2_val == -536870913<br>                                                                                                                                                                     |[0x80000478]:mul a2, a0, a1<br> [0x8000047c]:sw a2, 124(t0)<br>    |
|  51|[0x800032d8]<br>0x71C71C72|- rs2_val == 1431655765<br> - rs1_val == -1431655766<br>                                                                                                                                        |[0x80000490]:mul a2, a0, a1<br> [0x80000494]:sw a2, 128(t0)<br>    |
|  52|[0x800032dc]<br>0x80000000|- rs1_val == -257<br>                                                                                                                                                                           |[0x800004a0]:mul a2, a0, a1<br> [0x800004a4]:sw a2, 132(t0)<br>    |
|  53|[0x800032e0]<br>0x00004411|- rs2_val == -17<br> - rs1_val == -1025<br>                                                                                                                                                     |[0x800004b0]:mul a2, a0, a1<br> [0x800004b4]:sw a2, 136(t0)<br>    |
|  54|[0x800032e4]<br>0x00002805|- rs2_val == -5<br> - rs1_val == -2049<br>                                                                                                                                                      |[0x800004c4]:mul a2, a0, a1<br> [0x800004c8]:sw a2, 140(t0)<br>    |
|  55|[0x800032e8]<br>0x00102001|- rs1_val == -8193<br>                                                                                                                                                                          |[0x800004dc]:mul a2, a0, a1<br> [0x800004e0]:sw a2, 144(t0)<br>    |
|  56|[0x800032ec]<br>0xFFF80000|- rs2_val == 524288<br> - rs1_val == -16385<br>                                                                                                                                                 |[0x800004f0]:mul a2, a0, a1<br> [0x800004f4]:sw a2, 148(t0)<br>    |
|  57|[0x800032f0]<br>0xFF800000|- rs2_val == 8388608<br> - rs1_val == -65537<br>                                                                                                                                                |[0x80000504]:mul a2, a0, a1<br> [0x80000508]:sw a2, 152(t0)<br>    |
|  58|[0x800032f4]<br>0x000A0001|- rs1_val == -131073<br>                                                                                                                                                                        |[0x8000051c]:mul a2, a0, a1<br> [0x80000520]:sw a2, 156(t0)<br>    |
|  59|[0x800032f8]<br>0xFFDFFFF8|- rs2_val == 8<br> - rs1_val == -262145<br>                                                                                                                                                     |[0x80000530]:mul a2, a0, a1<br> [0x80000534]:sw a2, 160(t0)<br>    |
|  60|[0x800032fc]<br>0x01080021|- rs1_val == -524289<br>                                                                                                                                                                        |[0x80000544]:mul a2, a0, a1<br> [0x80000548]:sw a2, 164(t0)<br>    |
|  61|[0x80003300]<br>0x80000000|- rs1_val == -1048577<br>                                                                                                                                                                       |[0x80000558]:mul a2, a0, a1<br> [0x8000055c]:sw a2, 168(t0)<br>    |
|  62|[0x80003304]<br>0xFFFFF000|- rs2_val == 4096<br> - rs1_val == -2097153<br>                                                                                                                                                 |[0x8000056c]:mul a2, a0, a1<br> [0x80000570]:sw a2, 172(t0)<br>    |
|  63|[0x80003308]<br>0x20400001|- rs1_val == -4194305<br>                                                                                                                                                                       |[0x80000584]:mul a2, a0, a1<br> [0x80000588]:sw a2, 176(t0)<br>    |
|  64|[0x8000330c]<br>0xFF000000|- rs1_val == -8388609<br>                                                                                                                                                                       |[0x80000598]:mul a2, a0, a1<br> [0x8000059c]:sw a2, 180(t0)<br>    |
|  65|[0x80003310]<br>0xFE000000|- rs2_val == 33554432<br> - rs1_val == -16777217<br>                                                                                                                                            |[0x800005ac]:mul a2, a0, a1<br> [0x800005b0]:sw a2, 184(t0)<br>    |
|  66|[0x80003314]<br>0x1400000A|- rs1_val == -33554433<br>                                                                                                                                                                      |[0x800005c0]:mul a2, a0, a1<br> [0x800005c4]:sw a2, 188(t0)<br>    |
|  67|[0x80003318]<br>0x05000001|- rs1_val == -67108865<br>                                                                                                                                                                      |[0x800005d8]:mul a2, a0, a1<br> [0x800005dc]:sw a2, 192(t0)<br>    |
|  68|[0x8000331c]<br>0x08000101|- rs2_val == -257<br> - rs1_val == -134217729<br>                                                                                                                                               |[0x800005ec]:mul a2, a0, a1<br> [0x800005f0]:sw a2, 196(t0)<br>    |
|  69|[0x80003320]<br>0xF8000000|- rs1_val == -268435457<br>                                                                                                                                                                     |[0x80000600]:mul a2, a0, a1<br> [0x80000604]:sw a2, 200(t0)<br>    |
|  70|[0x80003324]<br>0x00000000|- rs1_val == -536870913<br>                                                                                                                                                                     |[0x80000614]:mul a2, a0, a1<br> [0x80000618]:sw a2, 204(t0)<br>    |
|  71|[0x80003328]<br>0x40020001|- rs2_val == -131073<br> - rs1_val == -1073741825<br>                                                                                                                                           |[0x8000062c]:mul a2, a0, a1<br> [0x80000630]:sw a2, 208(t0)<br>    |
|  72|[0x8000332c]<br>0xAAAAAAA0|- rs1_val == 1431655765<br>                                                                                                                                                                     |[0x80000640]:mul a2, a0, a1<br> [0x80000644]:sw a2, 212(t0)<br>    |
|  73|[0x80003330]<br>0xFFFFEFF0|- rs2_val == 16<br>                                                                                                                                                                             |[0x80000650]:mul a2, a0, a1<br> [0x80000654]:sw a2, 216(t0)<br>    |
|  74|[0x80003334]<br>0x7FFFFC00|- rs2_val == 1024<br>                                                                                                                                                                           |[0x80000664]:mul a2, a0, a1<br> [0x80000668]:sw a2, 220(t0)<br>    |
|  75|[0x80003338]<br>0xFFFFF800|- rs2_val == 2048<br>                                                                                                                                                                           |[0x8000067c]:mul a2, a0, a1<br> [0x80000680]:sw a2, 224(t0)<br>    |
|  76|[0x8000333c]<br>0xFBFFC000|- rs2_val == 16384<br>                                                                                                                                                                          |[0x80000690]:mul a2, a0, a1<br> [0x80000694]:sw a2, 228(t0)<br>    |
|  77|[0x80003340]<br>0x00000000|- rs2_val == 65536<br>                                                                                                                                                                          |[0x800006a0]:mul a2, a0, a1<br> [0x800006a4]:sw a2, 232(t0)<br>    |
|  78|[0x80003344]<br>0xF7F00000|- rs2_val == 1048576<br>                                                                                                                                                                        |[0x800006b0]:mul a2, a0, a1<br> [0x800006b4]:sw a2, 236(t0)<br>    |
|  79|[0x80003348]<br>0x00200000|- rs2_val == 2097152<br>                                                                                                                                                                        |[0x800006c0]:mul a2, a0, a1<br> [0x800006c4]:sw a2, 240(t0)<br>    |
|  80|[0x8000334c]<br>0x00000000|- rs2_val == 67108864<br>                                                                                                                                                                       |[0x800006d0]:mul a2, a0, a1<br> [0x800006d4]:sw a2, 244(t0)<br>    |
|  81|[0x80003350]<br>0xF0000000|- rs2_val == 268435456<br>                                                                                                                                                                      |[0x800006e4]:mul a2, a0, a1<br> [0x800006e8]:sw a2, 248(t0)<br>    |
|  82|[0x80003354]<br>0x60000000|- rs2_val == 536870912<br>                                                                                                                                                                      |[0x800006f4]:mul a2, a0, a1<br> [0x800006f8]:sw a2, 252(t0)<br>    |
|  83|[0x80003358]<br>0x80000000|- rs2_val == 1073741824<br>                                                                                                                                                                     |[0x80000704]:mul a2, a0, a1<br> [0x80000708]:sw a2, 256(t0)<br>    |
|  84|[0x8000335c]<br>0x00000000|- rs2_val == -2<br>                                                                                                                                                                             |[0x80000714]:mul a2, a0, a1<br> [0x80000718]:sw a2, 260(t0)<br>    |
|  85|[0x80003360]<br>0xFFFFFFEE|- rs2_val == -9<br>                                                                                                                                                                             |[0x80000724]:mul a2, a0, a1<br> [0x80000728]:sw a2, 264(t0)<br>    |
|  86|[0x80003364]<br>0xFC000000|- rs2_val == -513<br>                                                                                                                                                                           |[0x80000734]:mul a2, a0, a1<br> [0x80000738]:sw a2, 268(t0)<br>    |
|  87|[0x80003368]<br>0x00002008|- rs2_val == -1025<br>                                                                                                                                                                          |[0x80000744]:mul a2, a0, a1<br> [0x80000748]:sw a2, 272(t0)<br>    |
|  88|[0x8000336c]<br>0x40000801|- rs2_val == -2049<br>                                                                                                                                                                          |[0x8000075c]:mul a2, a0, a1<br> [0x80000760]:sw a2, 276(t0)<br>    |
|  89|[0x80003370]<br>0xAAAAB556|- rs2_val == -4097<br>                                                                                                                                                                          |[0x80000774]:mul a2, a0, a1<br> [0x80000778]:sw a2, 280(t0)<br>    |
|  90|[0x80003374]<br>0xFF7FFC00|- rs2_val == -8193<br>                                                                                                                                                                          |[0x80000788]:mul a2, a0, a1<br> [0x8000078c]:sw a2, 284(t0)<br>    |
|  91|[0x80003378]<br>0xDFFF8000|- rs2_val == -16385<br>                                                                                                                                                                         |[0x8000079c]:mul a2, a0, a1<br> [0x800007a0]:sw a2, 288(t0)<br>    |
|  92|[0x8000337c]<br>0xFFC00000|- rs2_val == -32769<br>                                                                                                                                                                         |[0x800007b0]:mul a2, a0, a1<br> [0x800007b4]:sw a2, 292(t0)<br>    |
|  93|[0x80003380]<br>0x40000000|- rs2_val == -65537<br>                                                                                                                                                                         |[0x800007c4]:mul a2, a0, a1<br> [0x800007c8]:sw a2, 296(t0)<br>    |
|  94|[0x80003388]<br>0x00000000|- rs1_val == 8<br>                                                                                                                                                                              |[0x800007e4]:mul a2, a0, a1<br> [0x800007e8]:sw a2, 304(t0)<br>    |
|  95|[0x8000338c]<br>0xFFFFF7E0|- rs1_val == 32<br>                                                                                                                                                                             |[0x800007f4]:mul a2, a0, a1<br> [0x800007f8]:sw a2, 308(t0)<br>    |
|  96|[0x80003390]<br>0xFFFFC000|- rs2_val == -67108865<br>                                                                                                                                                                      |[0x80000808]:mul a2, a0, a1<br> [0x8000080c]:sw a2, 312(t0)<br>    |
