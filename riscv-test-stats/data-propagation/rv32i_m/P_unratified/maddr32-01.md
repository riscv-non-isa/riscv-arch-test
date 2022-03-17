
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
| SIG_REGION                | [('0x80002210', '0x800023b0', '104 words')]      |
| COV_LABELS                | maddr32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/maddr32-01.S    |
| Total Number of coverpoints| 244     |
| Total Coverpoints Hit     | 238      |
| Total Signature Updates   | 103      |
| STAT1                     | 100      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000064c]:MADDR32 t6, t5, t4
      [0x80000650]:sw t6, 148(ra)
 -- Signature Address: 0x80002328 Data: 0x723E22DA
 -- Redundant Coverpoints hit by the op
      - opcode : maddr32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000874]:MADDR32 t6, t5, t4
      [0x80000878]:sw t6, 268(ra)
 -- Signature Address: 0x800023a0 Data: 0xE06849D8
 -- Redundant Coverpoints hit by the op
      - opcode : maddr32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == -2147483648
      - rs2_w0_val == 1024




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000088c]:MADDR32 t6, t5, t4
      [0x80000890]:sw t6, 272(ra)
 -- Signature Address: 0x800023a4 Data: 0x0B12F483
 -- Redundant Coverpoints hit by the op
      - opcode : maddr32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_w0_val == 2147483647
      - rs1_w0_val == 1431655765






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

|s.no|        signature         |                                                                  coverpoints                                                                  |                                  code                                   |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00100400|- opcode : maddr32<br> - rs1 : x10<br> - rs2 : x10<br> - rd : x10<br> - rs1 == rs2 == rd<br> - rs2_w0_val == 1024<br> - rs1_w0_val == 1024<br> |[0x80000108]:MADDR32 a0, a0, a0<br> [0x8000010c]:sw a0, 0(t1)<br>        |
|   2|[0x80002214]<br>0xCE6E27BF|- rs1 : x26<br> - rs2 : x26<br> - rd : x13<br> - rs1 == rs2 != rd<br> - rs2_w0_val == -1431655766<br> - rs1_w0_val == -1431655766<br>          |[0x80000120]:MADDR32 a3, s10, s10<br> [0x80000124]:sw a3, 4(t1)<br>      |
|   3|[0x80002218]<br>0x1A5666BC|- rs1 : x18<br> - rs2 : x9<br> - rd : x19<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_w0_val == 1431655765<br>                     |[0x80000138]:MADDR32 s3, s2, s1<br> [0x8000013c]:sw s3, 8(t1)<br>        |
|   4|[0x8000221c]<br>0x00000000|- rs1 : x31<br> - rs2 : x0<br> - rd : x0<br> - rs2 == rd != rs1<br> - rs2_w0_val == 0<br> - rs1_w0_val == 1431655765<br>                       |[0x80000150]:MADDR32 zero, t6, zero<br> [0x80000154]:sw zero, 12(t1)<br> |
|   5|[0x80002220]<br>0x00000000|- rs1 : x29<br> - rs2 : x13<br> - rd : x29<br> - rs1 == rd != rs2<br> - rs2_w0_val == -1073741825<br> - rs1_w0_val == 8192<br>                 |[0x80000164]:MADDR32 t4, t4, a3<br> [0x80000168]:sw t4, 16(t1)<br>       |
|   6|[0x80002224]<br>0x95094519|- rs1 : x17<br> - rs2 : x29<br> - rd : x27<br> - rs2_w0_val == -536870913<br>                                                                  |[0x8000017c]:MADDR32 s11, a7, t4<br> [0x80000180]:sw s11, 20(t1)<br>     |
|   7|[0x80002228]<br>0x57FBB704|- rs1 : x16<br> - rs2 : x21<br> - rd : x7<br> - rs2_w0_val == -268435457<br>                                                                   |[0x80000190]:MADDR32 t2, a6, s5<br> [0x80000194]:sw t2, 24(t1)<br>       |
|   8|[0x8000222c]<br>0x07FF8AFE|- rs1 : x14<br> - rs2 : x3<br> - rd : x18<br> - rs2_w0_val == -134217729<br> - rs1_w0_val == -16385<br>                                        |[0x800001a8]:MADDR32 s2, a4, gp<br> [0x800001ac]:sw s2, 28(t1)<br>       |
|   9|[0x80002230]<br>0xFEB7FDB7|- rs1 : x24<br> - rs2 : x2<br> - rd : x15<br> - rs2_w0_val == -67108865<br> - rs1_w0_val == -513<br>                                           |[0x800001bc]:MADDR32 a5, s8, sp<br> [0x800001c0]:sw a5, 32(t1)<br>       |
|  10|[0x80002234]<br>0xF2020000|- rs1 : x23<br> - rs2 : x22<br> - rd : x21<br> - rs2_w0_val == -33554433<br> - rs1_w0_val == -131073<br>                                       |[0x800001d4]:MADDR32 s5, s7, s6<br> [0x800001d8]:sw s5, 36(t1)<br>       |
|  11|[0x80002238]<br>0x32979998|- rs1 : x21<br> - rs2 : x30<br> - rd : x23<br> - rs2_w0_val == -16777217<br>                                                                   |[0x800001ec]:MADDR32 s7, s5, t5<br> [0x800001f0]:sw s7, 40(t1)<br>       |
|  12|[0x8000223c]<br>0xFE804000|- rs1 : x5<br> - rs2 : x7<br> - rd : x22<br> - rs2_w0_val == -8388609<br>                                                                      |[0x80000204]:MADDR32 s6, t0, t2<br> [0x80000208]:sw s6, 44(t1)<br>       |
|  13|[0x80002240]<br>0xB2EAAACB|- rs1 : x27<br> - rs2 : x11<br> - rd : x26<br> - rs2_w0_val == -4194305<br> - rs1_w0_val == -33<br>                                            |[0x80000218]:MADDR32 s10, s11, a1<br> [0x8000021c]:sw s10, 48(t1)<br>    |
|  14|[0x80002244]<br>0x00201FF7|- rs1 : x2<br> - rs2 : x17<br> - rd : x16<br> - rs2_w0_val == -2097153<br> - rs1_w0_val == -8193<br>                                           |[0x80000230]:MADDR32 a6, sp, a7<br> [0x80000234]:sw a6, 52(t1)<br>       |
|  15|[0x80002248]<br>0xFEEDAEAD|- rs1 : x12<br> - rs2 : x25<br> - rd : x1<br> - rs2_w0_val == -1048577<br> - rs1_w0_val == 4096<br>                                            |[0x80000244]:MADDR32 ra, a2, s9<br> [0x80000248]:sw ra, 56(t1)<br>       |
|  16|[0x8000224c]<br>0xFFFFFDFF|- rs1 : x3<br> - rs2 : x12<br> - rd : x24<br> - rs2_w0_val == -524289<br> - rs1_w0_val == 0<br>                                                |[0x80000258]:MADDR32 s8, gp, a2<br> [0x8000025c]:sw s8, 60(t1)<br>       |
|  17|[0x80002250]<br>0xC1E1B856|- rs1 : x1<br> - rs2 : x23<br> - rd : x4<br> - rs2_w0_val == -262145<br> - rs1_w0_val == -129<br>                                              |[0x8000026c]:MADDR32 tp, ra, s7<br> [0x80000270]:sw tp, 64(t1)<br>       |
|  18|[0x80002254]<br>0x00020020|- rs1 : x6<br> - rs2 : x20<br> - rd : x11<br> - rs2_w0_val == -131073<br>                                                                      |[0x80000288]:MADDR32 a1, t1, s4<br> [0x8000028c]:sw a1, 0(a0)<br>        |
|  19|[0x80002258]<br>0x92BB8AC2|- rs1 : x8<br> - rs2 : x27<br> - rd : x28<br> - rs2_w0_val == -65537<br>                                                                       |[0x800002a0]:MADDR32 t3, fp, s11<br> [0x800002a4]:sw t3, 4(a0)<br>       |
|  20|[0x8000225c]<br>0x04004000|- rs1 : x7<br> - rs2 : x31<br> - rd : x5<br> - rs2_w0_val == -32769<br> - rs1_w0_val == -67108865<br>                                          |[0x800002b8]:MADDR32 t0, t2, t6<br> [0x800002bc]:sw t0, 8(a0)<br>        |
|  21|[0x80002260]<br>0xFFE7FFBF|- rs1 : x20<br> - rs2 : x4<br> - rd : x12<br> - rs2_w0_val == -16385<br> - rs1_w0_val == 64<br>                                                |[0x800002cc]:MADDR32 a2, s4, tp<br> [0x800002d0]:sw a2, 12(a0)<br>       |
|  22|[0x80002264]<br>0xFFEFBF7F|- rs1 : x11<br> - rs2 : x18<br> - rd : x14<br> - rs2_w0_val == -8193<br> - rs1_w0_val == 128<br>                                               |[0x800002e0]:MADDR32 a4, a1, s2<br> [0x800002e4]:sw a4, 16(a0)<br>       |
|  23|[0x80002268]<br>0xFEFF7FF7|- rs1 : x22<br> - rs2 : x19<br> - rd : x30<br> - rs2_w0_val == -4097<br> - rs1_w0_val == 8<br>                                                 |[0x800002f4]:MADDR32 t5, s6, s3<br> [0x800002f8]:sw t5, 20(a0)<br>       |
|  24|[0x8000226c]<br>0x20040841|- rs1 : x13<br> - rs2 : x1<br> - rd : x20<br> - rs2_w0_val == -2049<br> - rs1_w0_val == -262145<br>                                            |[0x8000030c]:MADDR32 s4, a3, ra<br> [0x80000310]:sw s4, 24(a0)<br>       |
|  25|[0x80002270]<br>0xFFFFFFDF|- rs1 : x15<br> - rs2 : x14<br> - rd : x6<br> - rs2_w0_val == -1025<br>                                                                        |[0x8000031c]:MADDR32 t1, a5, a4<br> [0x80000320]:sw t1, 28(a0)<br>       |
|  26|[0x80002274]<br>0x00000000|- rs1 : x9<br> - rs2 : x24<br> - rd : x3<br> - rs2_w0_val == -513<br>                                                                          |[0x8000032c]:MADDR32 gp, s1, s8<br> [0x80000330]:sw gp, 32(a0)<br>       |
|  27|[0x80002278]<br>0x07FF4BFE|- rs1 : x25<br> - rs2 : x15<br> - rd : x8<br> - rs2_w0_val == -257<br> - rs1_w0_val == -134217729<br>                                          |[0x80000340]:MADDR32 fp, s9, a5<br> [0x80000344]:sw fp, 36(a0)<br>       |
|  28|[0x8000227c]<br>0xFFE000AB|- rs1 : x30<br> - rs2 : x8<br> - rd : x17<br> - rs2_w0_val == -129<br>                                                                         |[0x80000354]:MADDR32 a7, t5, fp<br> [0x80000358]:sw a7, 40(a0)<br>       |
|  29|[0x80002280]<br>0xEFBF7FFF|- rs1 : x4<br> - rs2 : x16<br> - rd : x31<br> - rs2_w0_val == -65<br> - rs1_w0_val == 4194304<br>                                              |[0x80000364]:MADDR32 t6, tp, a6<br> [0x80000368]:sw t6, 44(a0)<br>       |
|  30|[0x80002284]<br>0xF80000A4|- rs1 : x28<br> - rs2 : x6<br> - rd : x25<br> - rs2_w0_val == -33<br> - rs1_w0_val == -5<br>                                                   |[0x80000374]:MADDR32 s9, t3, t1<br> [0x80000378]:sw s9, 48(a0)<br>       |
|  31|[0x80002288]<br>0xFFFFDFFF|- rs1 : x0<br> - rs2 : x5<br> - rd : x2<br> - rs2_w0_val == -17<br>                                                                            |[0x80000388]:MADDR32 sp, zero, t0<br> [0x8000038c]:sw sp, 52(a0)<br>     |
|  32|[0x8000228c]<br>0x00000129|- rs1 : x19<br> - rs2 : x28<br> - rd : x9<br> - rs2_w0_val == -9<br>                                                                           |[0x80000398]:MADDR32 s1, s3, t3<br> [0x8000039c]:sw s1, 56(a0)<br>       |
|  33|[0x80002290]<br>0x9A6A2AAD|- rs2_w0_val == -5<br>                                                                                                                         |[0x800003ac]:MADDR32 t6, t5, t4<br> [0x800003b0]:sw t6, 60(a0)<br>       |
|  34|[0x80002294]<br>0x9A6A1EAD|- rs2_w0_val == -3<br>                                                                                                                         |[0x800003c4]:MADDR32 t6, t5, t4<br> [0x800003c8]:sw t6, 0(ra)<br>        |
|  35|[0x80002298]<br>0x9A6A1E9B|- rs2_w0_val == -2<br>                                                                                                                         |[0x800003d4]:MADDR32 t6, t5, t4<br> [0x800003d8]:sw t6, 4(ra)<br>        |
|  36|[0x8000229c]<br>0x1A6A1E9B|- rs2_w0_val == -2147483648<br> - rs1_w0_val == -8388609<br>                                                                                   |[0x800003e8]:MADDR32 t6, t5, t4<br> [0x800003ec]:sw t6, 8(ra)<br>        |
|  37|[0x800022a0]<br>0x1A6A1E9B|- rs2_w0_val == 1073741824<br> - rs1_w0_val == 4<br>                                                                                           |[0x800003f8]:MADDR32 t6, t5, t4<br> [0x800003fc]:sw t6, 12(ra)<br>       |
|  38|[0x800022a4]<br>0x1A6A1E9B|- rs2_w0_val == 536870912<br>                                                                                                                  |[0x80000408]:MADDR32 t6, t5, t4<br> [0x8000040c]:sw t6, 16(ra)<br>       |
|  39|[0x800022a8]<br>0x3A6A1E9B|- rs2_w0_val == 268435456<br>                                                                                                                  |[0x8000041c]:MADDR32 t6, t5, t4<br> [0x80000420]:sw t6, 20(ra)<br>       |
|  40|[0x800022ac]<br>0x326A1E9B|- rs2_w0_val == 134217728<br> - rs1_w0_val == -1025<br>                                                                                        |[0x8000042c]:MADDR32 t6, t5, t4<br> [0x80000430]:sw t6, 24(ra)<br>       |
|  41|[0x800022b0]<br>0x2E6A1E9B|- rs2_w0_val == 67108864<br> - rs1_w0_val == -65<br>                                                                                           |[0x8000043c]:MADDR32 t6, t5, t4<br> [0x80000440]:sw t6, 28(ra)<br>       |
|  42|[0x800022b4]<br>0x346A1E9B|- rs2_w0_val == 33554432<br>                                                                                                                   |[0x8000044c]:MADDR32 t6, t5, t4<br> [0x80000450]:sw t6, 32(ra)<br>       |
|  43|[0x800022b8]<br>0x346A1E9B|- rs2_w0_val == 16777216<br> - rs1_w0_val == 16384<br>                                                                                         |[0x8000045c]:MADDR32 t6, t5, t4<br> [0x80000460]:sw t6, 36(ra)<br>       |
|  44|[0x800022bc]<br>0x376A1E9B|- rs2_w0_val == 8388608<br>                                                                                                                    |[0x8000046c]:MADDR32 t6, t5, t4<br> [0x80000470]:sw t6, 40(ra)<br>       |
|  45|[0x800022c0]<br>0x372A1E9B|- rs2_w0_val == 4194304<br> - rs1_w0_val == -2049<br>                                                                                          |[0x80000480]:MADDR32 t6, t5, t4<br> [0x80000484]:sw t6, 44(ra)<br>       |
|  46|[0x800022c4]<br>0x370A1E9B|- rs2_w0_val == 2097152<br> - rs1_w0_val == -65537<br>                                                                                         |[0x80000494]:MADDR32 t6, t5, t4<br> [0x80000498]:sw t6, 48(ra)<br>       |
|  47|[0x800022c8]<br>0x3709DE7B|- rs1_w0_val == 32<br>                                                                                                                         |[0x800004a4]:MADDR32 t6, t5, t4<br> [0x800004a8]:sw t6, 52(ra)<br>       |
|  48|[0x800022cc]<br>0x3709DDDB|- rs1_w0_val == 16<br>                                                                                                                         |[0x800004b4]:MADDR32 t6, t5, t4<br> [0x800004b8]:sw t6, 56(ra)<br>       |
|  49|[0x800022d0]<br>0x3701DDD9|- rs1_w0_val == 2<br>                                                                                                                          |[0x800004c8]:MADDR32 t6, t5, t4<br> [0x800004cc]:sw t6, 60(ra)<br>       |
|  50|[0x800022d4]<br>0x3F01DDD9|- rs1_w0_val == 1<br>                                                                                                                          |[0x800004d8]:MADDR32 t6, t5, t4<br> [0x800004dc]:sw t6, 64(ra)<br>       |
|  51|[0x800022d8]<br>0x3F01DDD5|- rs2_w0_val == 4<br> - rs1_w0_val == -1<br>                                                                                                   |[0x800004e8]:MADDR32 t6, t5, t4<br> [0x800004ec]:sw t6, 68(ra)<br>       |
|  52|[0x800022dc]<br>0x3EF1DDD5|- rs2_w0_val == 1048576<br> - rs1_w0_val == 2147483647<br>                                                                                     |[0x800004fc]:MADDR32 t6, t5, t4<br> [0x80000500]:sw t6, 72(ra)<br>       |
|  53|[0x800022e0]<br>0x3EF1DDD5|- rs2_w0_val == 524288<br>                                                                                                                     |[0x8000050c]:MADDR32 t6, t5, t4<br> [0x80000510]:sw t6, 76(ra)<br>       |
|  54|[0x800022e4]<br>0x0BB9DDD5|- rs2_w0_val == 262144<br>                                                                                                                     |[0x80000520]:MADDR32 t6, t5, t4<br> [0x80000524]:sw t6, 80(ra)<br>       |
|  55|[0x800022e8]<br>0x0BB9DDD5|- rs2_w0_val == 131072<br> - rs1_w0_val == 8388608<br>                                                                                         |[0x80000530]:MADDR32 t6, t5, t4<br> [0x80000534]:sw t6, 84(ra)<br>       |
|  56|[0x800022ec]<br>0x0BB8DDD5|- rs2_w0_val == 65536<br> - rs1_w0_val == -4194305<br>                                                                                         |[0x80000544]:MADDR32 t6, t5, t4<br> [0x80000548]:sw t6, 88(ra)<br>       |
|  57|[0x800022f0]<br>0xA552DDD5|- rs2_w0_val == 32768<br>                                                                                                                      |[0x80000558]:MADDR32 t6, t5, t4<br> [0x8000055c]:sw t6, 92(ra)<br>       |
|  58|[0x800022f4]<br>0xA5505DD5|- rs2_w0_val == 16384<br>                                                                                                                      |[0x80000568]:MADDR32 t6, t5, t4<br> [0x8000056c]:sw t6, 96(ra)<br>       |
|  59|[0x800022f8]<br>0xA5505DD5|- rs1_w0_val == -2147483648<br> - rs2_w0_val == 8192<br>                                                                                       |[0x80000578]:MADDR32 t6, t5, t4<br> [0x8000057c]:sw t6, 100(ra)<br>      |
|  60|[0x800022fc]<br>0xA5515DD5|- rs2_w0_val == 4096<br>                                                                                                                       |[0x80000588]:MADDR32 t6, t5, t4<br> [0x8000058c]:sw t6, 104(ra)<br>      |
|  61|[0x80002300]<br>0xA55155D5|- rs2_w0_val == 2048<br> - rs1_w0_val == -268435457<br>                                                                                        |[0x800005a0]:MADDR32 t6, t5, t4<br> [0x800005a4]:sw t6, 108(ra)<br>      |
|  62|[0x80002304]<br>0xA57155D5|- rs2_w0_val == 512<br>                                                                                                                        |[0x800005b0]:MADDR32 t6, t5, t4<br> [0x800005b4]:sw t6, 112(ra)<br>      |
|  63|[0x80002308]<br>0xA57153D5|- rs2_w0_val == 256<br> - rs1_w0_val == -2<br>                                                                                                 |[0x800005c0]:MADDR32 t6, t5, t4<br> [0x800005c4]:sw t6, 116(ra)<br>      |
|  64|[0x8000230c]<br>0xA57151D5|- rs2_w0_val == 128<br>                                                                                                                        |[0x800005d0]:MADDR32 t6, t5, t4<br> [0x800005d4]:sw t6, 120(ra)<br>      |
|  65|[0x80002310]<br>0xA5715215|- rs2_w0_val == 64<br>                                                                                                                         |[0x800005e0]:MADDR32 t6, t5, t4<br> [0x800005e4]:sw t6, 124(ra)<br>      |
|  66|[0x80002314]<br>0xA5815215|- rs2_w0_val == 32<br> - rs1_w0_val == 32768<br>                                                                                               |[0x800005f0]:MADDR32 t6, t5, t4<br> [0x800005f4]:sw t6, 128(ra)<br>      |
|  67|[0x80002318]<br>0xA5815615|- rs2_w0_val == 16<br>                                                                                                                         |[0x80000600]:MADDR32 t6, t5, t4<br> [0x80000604]:sw t6, 132(ra)<br>      |
|  68|[0x8000231c]<br>0xA571560D|- rs2_w0_val == 8<br>                                                                                                                          |[0x80000614]:MADDR32 t6, t5, t4<br> [0x80000618]:sw t6, 136(ra)<br>      |
|  69|[0x80002320]<br>0x723E22D7|- rs2_w0_val == 2<br>                                                                                                                          |[0x80000628]:MADDR32 t6, t5, t4<br> [0x8000062c]:sw t6, 140(ra)<br>      |
|  70|[0x80002324]<br>0x723E22DA|- rs2_w0_val == 1<br>                                                                                                                          |[0x80000638]:MADDR32 t6, t5, t4<br> [0x8000063c]:sw t6, 144(ra)<br>      |
|  71|[0x8000232c]<br>0x723DA2DA|- rs2_w0_val == -1<br>                                                                                                                         |[0x8000065c]:MADDR32 t6, t5, t4<br> [0x80000660]:sw t6, 152(ra)<br>      |
|  72|[0x80002330]<br>0x4792F830|- rs1_w0_val == -1073741825<br>                                                                                                                |[0x80000674]:MADDR32 t6, t5, t4<br> [0x80000678]:sw t6, 156(ra)<br>      |
|  73|[0x80002334]<br>0x3F92F830|- rs1_w0_val == -536870913<br>                                                                                                                 |[0x80000688]:MADDR32 t6, t5, t4<br> [0x8000068c]:sw t6, 160(ra)<br>      |
|  74|[0x80002338]<br>0x4192F8B1|- rs1_w0_val == -33554433<br>                                                                                                                  |[0x8000069c]:MADDR32 t6, t5, t4<br> [0x800006a0]:sw t6, 164(ra)<br>      |
|  75|[0x8000233c]<br>0x4392F8B2|- rs1_w0_val == -16777217<br>                                                                                                                  |[0x800006b4]:MADDR32 t6, t5, t4<br> [0x800006b8]:sw t6, 168(ra)<br>      |
|  76|[0x80002340]<br>0x438EF8B2|- rs1_w0_val == -2097153<br>                                                                                                                   |[0x800006c8]:MADDR32 t6, t5, t4<br> [0x800006cc]:sw t6, 172(ra)<br>      |
|  77|[0x80002344]<br>0x238EF6B2|- rs1_w0_val == -1048577<br>                                                                                                                   |[0x800006dc]:MADDR32 t6, t5, t4<br> [0x800006e0]:sw t6, 176(ra)<br>      |
|  78|[0x80002348]<br>0x2416F6C3|- rs1_w0_val == -524289<br>                                                                                                                    |[0x800006f0]:MADDR32 t6, t5, t4<br> [0x800006f4]:sw t6, 180(ra)<br>      |
|  79|[0x8000234c]<br>0xC993C1BE|- rs1_w0_val == -32769<br>                                                                                                                     |[0x80000708]:MADDR32 t6, t5, t4<br> [0x8000070c]:sw t6, 184(ra)<br>      |
|  80|[0x80002350]<br>0x4993C1BE|- rs1_w0_val == -4097<br>                                                                                                                      |[0x8000071c]:MADDR32 t6, t5, t4<br> [0x80000720]:sw t6, 188(ra)<br>      |
|  81|[0x80002354]<br>0x4993CAC7|- rs1_w0_val == -257<br>                                                                                                                       |[0x8000072c]:MADDR32 t6, t5, t4<br> [0x80000730]:sw t6, 192(ra)<br>      |
|  82|[0x80002358]<br>0x4A1BCAD8|- rs1_w0_val == -17<br>                                                                                                                        |[0x80000740]:MADDR32 t6, t5, t4<br> [0x80000744]:sw t6, 196(ra)<br>      |
|  83|[0x8000235c]<br>0xCA1BCAD8|- rs1_w0_val == -9<br>                                                                                                                         |[0x80000750]:MADDR32 t6, t5, t4<br> [0x80000754]:sw t6, 200(ra)<br>      |
|  84|[0x80002360]<br>0x6A1BCAD8|- rs1_w0_val == -3<br>                                                                                                                         |[0x80000760]:MADDR32 t6, t5, t4<br> [0x80000764]:sw t6, 204(ra)<br>      |
|  85|[0x80002364]<br>0x6A1BCAD8|- rs1_w0_val == 1073741824<br>                                                                                                                 |[0x80000770]:MADDR32 t6, t5, t4<br> [0x80000774]:sw t6, 208(ra)<br>      |
|  86|[0x80002368]<br>0x6A1BCAD8|- rs1_w0_val == 536870912<br>                                                                                                                  |[0x80000780]:MADDR32 t6, t5, t4<br> [0x80000784]:sw t6, 212(ra)<br>      |
|  87|[0x8000236c]<br>0x8A1BCAD8|- rs1_w0_val == 268435456<br>                                                                                                                  |[0x80000790]:MADDR32 t6, t5, t4<br> [0x80000794]:sw t6, 216(ra)<br>      |
|  88|[0x80002370]<br>0x8A1BCAD8|- rs1_w0_val == 134217728<br>                                                                                                                  |[0x800007a0]:MADDR32 t6, t5, t4<br> [0x800007a4]:sw t6, 220(ra)<br>      |
|  89|[0x80002374]<br>0x861BCAD8|- rs2_w0_val == 2147483647<br> - rs1_w0_val == 67108864<br>                                                                                    |[0x800007b4]:MADDR32 t6, t5, t4<br> [0x800007b8]:sw t6, 224(ra)<br>      |
|  90|[0x80002378]<br>0x321BCAD8|- rs1_w0_val == 33554432<br>                                                                                                                   |[0x800007c8]:MADDR32 t6, t5, t4<br> [0x800007cc]:sw t6, 228(ra)<br>      |
|  91|[0x8000237c]<br>0x351BCAD8|- rs1_w0_val == 16777216<br>                                                                                                                   |[0x800007d8]:MADDR32 t6, t5, t4<br> [0x800007dc]:sw t6, 232(ra)<br>      |
|  92|[0x80002380]<br>0x354BCAD8|- rs1_w0_val == 1048576<br>                                                                                                                    |[0x800007e8]:MADDR32 t6, t5, t4<br> [0x800007ec]:sw t6, 236(ra)<br>      |
|  93|[0x80002384]<br>0x357BCAD8|- rs1_w0_val == 524288<br>                                                                                                                     |[0x800007f8]:MADDR32 t6, t5, t4<br> [0x800007fc]:sw t6, 240(ra)<br>      |
|  94|[0x80002388]<br>0x35BBCAD8|- rs1_w0_val == 262144<br>                                                                                                                     |[0x80000808]:MADDR32 t6, t5, t4<br> [0x8000080c]:sw t6, 244(ra)<br>      |
|  95|[0x8000238c]<br>0xE067CAD8|- rs1_w0_val == 131072<br>                                                                                                                     |[0x8000081c]:MADDR32 t6, t5, t4<br> [0x80000820]:sw t6, 248(ra)<br>      |
|  96|[0x80002390]<br>0xE067CAD8|- rs1_w0_val == 2048<br>                                                                                                                       |[0x80000830]:MADDR32 t6, t5, t4<br> [0x80000834]:sw t6, 252(ra)<br>      |
|  97|[0x80002394]<br>0xE067CAD8|- rs1_w0_val == 65536<br>                                                                                                                      |[0x80000840]:MADDR32 t6, t5, t4<br> [0x80000844]:sw t6, 256(ra)<br>      |
|  98|[0x80002398]<br>0xE0684AD8|- rs1_w0_val == 512<br>                                                                                                                        |[0x80000850]:MADDR32 t6, t5, t4<br> [0x80000854]:sw t6, 260(ra)<br>      |
|  99|[0x8000239c]<br>0xE06849D8|- rs1_w0_val == 256<br>                                                                                                                        |[0x80000864]:MADDR32 t6, t5, t4<br> [0x80000868]:sw t6, 264(ra)<br>      |
| 100|[0x800023a8]<br>0x08F2F483|- rs1_w0_val == 2097152<br>                                                                                                                    |[0x8000089c]:MADDR32 t6, t5, t4<br> [0x800008a0]:sw t6, 276(ra)<br>      |
