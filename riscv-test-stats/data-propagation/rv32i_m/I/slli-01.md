
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800005b0')]      |
| SIG_REGION                | [('0x80002204', '0x8000235c', '86 words')]      |
| COV_LABELS                | slli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/slli-01.S/slli-01.S    |
| Total Number of coverpoints| 178     |
| Total Coverpoints Hit     | 178      |
| Total Signature Updates   | 86      |
| STAT1                     | 86      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


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

|s.no|        signature         |                                                                           coverpoints                                                                            |                                code                                 |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002204]<br>0xFFFE0000|- opcode : slli<br> - rs1 : x3<br> - rd : x13<br> - rs1 != rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == -524289<br>                   |[0x80000108]:slli a3, gp, 17<br> [0x8000010c]:sw a3, 0(s1)<br>       |
|   2|[0x80002208]<br>0x00000000|- rs1 : x0<br> - rd : x0<br> - rs1 == rd<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br> - rs1_val==0<br>                                              |[0x80000118]:slli zero, zero, 11<br> [0x8000011c]:sw zero, 4(s1)<br> |
|   3|[0x8000220c]<br>0xFFFBFFFF|- rs1 : x26<br> - rd : x28<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -262145<br>                                                                        |[0x80000128]:slli t3, s10, 0<br> [0x8000012c]:sw t3, 8(s1)<br>       |
|   4|[0x80002210]<br>0x7FFFFFFF|- rs1 : x8<br> - rd : x15<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 2147483647<br> |[0x80000138]:slli a5, fp, 0<br> [0x8000013c]:sw a5, 12(s1)<br>       |
|   5|[0x80002214]<br>0x80000000|- rs1 : x22<br> - rd : x6<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -134217729<br>                                                               |[0x80000148]:slli t1, s6, 31<br> [0x8000014c]:sw t1, 16(s1)<br>      |
|   6|[0x80002218]<br>0x00000000|- rs1 : x19<br> - rd : x2<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val==858993458<br>             |[0x80000158]:slli sp, s3, 31<br> [0x8000015c]:sw sp, 20(s1)<br>      |
|   7|[0x8000221c]<br>0x00000380|- rs1 : x12<br> - rd : x26<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br>                                                                        |[0x80000164]:slli s10, a2, 7<br> [0x80000168]:sw s10, 24(s1)<br>     |
|   8|[0x80002220]<br>0x00000000|- rs1 : x29<br> - rd : x16<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -2147483648<br> - imm_val == 8<br>                |[0x80000170]:slli a6, t4, 8<br> [0x80000174]:sw a6, 28(s1)<br>       |
|   9|[0x80002224]<br>0x00000000|- rs1 : x13<br> - rd : x20<br>                                                                                                                                    |[0x8000017c]:slli s4, a3, 17<br> [0x80000180]:sw s4, 32(s1)<br>      |
|  10|[0x80002228]<br>0x00200000|- rs1 : x7<br> - rd : x4<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br> - imm_val == 21<br>                                        |[0x80000188]:slli tp, t2, 21<br> [0x8000018c]:sw tp, 36(s1)<br>      |
|  11|[0x8000222c]<br>0x00000000|- rs1 : x1<br> - rd : x30<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                                                 |[0x80000194]:slli t5, ra, 31<br> [0x80000198]:sw t5, 40(s1)<br>      |
|  12|[0x80002230]<br>0x00200000|- rs1 : x23<br> - rd : x18<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                                                |[0x800001a0]:slli s2, s7, 19<br> [0x800001a4]:sw s2, 44(s1)<br>      |
|  13|[0x80002234]<br>0x00000040|- rs1 : x17<br> - rd : x21<br> - rs1_val == 8<br>                                                                                                                 |[0x800001ac]:slli s5, a7, 3<br> [0x800001b0]:sw s5, 48(s1)<br>       |
|  14|[0x80002238]<br>0x00010000|- rs1 : x10<br> - rd : x8<br> - rs1_val == 16<br>                                                                                                                 |[0x800001b8]:slli fp, a0, 12<br> [0x800001bc]:sw fp, 52(s1)<br>      |
|  15|[0x8000223c]<br>0x00000000|- rs1 : x16<br> - rd : x25<br> - rs1_val == 32<br> - imm_val == 30<br>                                                                                            |[0x800001c4]:slli s9, a6, 30<br> [0x800001c8]:sw s9, 56(s1)<br>      |
|  16|[0x80002240]<br>0x00000100|- rs1 : x21<br> - rd : x12<br> - rs1_val == 64<br> - imm_val == 2<br>                                                                                             |[0x800001d0]:slli a2, s5, 2<br> [0x800001d4]:sw a2, 60(s1)<br>       |
|  17|[0x80002244]<br>0x40000000|- rs1 : x11<br> - rd : x17<br> - rs1_val == 128<br> - imm_val == 23<br>                                                                                           |[0x800001dc]:slli a7, a1, 23<br> [0x800001e0]:sw a7, 64(s1)<br>      |
|  18|[0x80002248]<br>0x00040000|- rs1 : x18<br> - rd : x19<br> - rs1_val == 256<br> - imm_val == 10<br>                                                                                           |[0x800001e8]:slli s3, s2, 10<br> [0x800001ec]:sw s3, 68(s1)<br>      |
|  19|[0x8000224c]<br>0x00004000|- rs1 : x25<br> - rd : x29<br> - rs1_val == 512<br>                                                                                                               |[0x800001f4]:slli t4, s9, 5<br> [0x800001f8]:sw t4, 72(s1)<br>       |
|  20|[0x80002250]<br>0x00080000|- rs1 : x28<br> - rd : x31<br> - rs1_val == 1024<br>                                                                                                              |[0x80000200]:slli t6, t3, 9<br> [0x80000204]:sw t6, 76(s1)<br>       |
|  21|[0x80002254]<br>0x00004000|- rs1 : x31<br> - rd : x23<br> - rs1_val == 2048<br>                                                                                                              |[0x80000210]:slli s7, t6, 3<br> [0x80000214]:sw s7, 80(s1)<br>       |
|  22|[0x80002258]<br>0x00000000|- rs1 : x4<br> - rd : x7<br> - rs1_val == 4096<br>                                                                                                                |[0x8000021c]:slli t2, tp, 21<br> [0x80000220]:sw t2, 84(s1)<br>      |
|  23|[0x8000225c]<br>0x00000000|- rs1 : x14<br> - rd : x5<br> - rs1_val == 8192<br>                                                                                                               |[0x80000228]:slli t0, a4, 21<br> [0x8000022c]:sw t0, 88(s1)<br>      |
|  24|[0x80002260]<br>0x00100000|- rs1 : x2<br> - rd : x10<br> - rs1_val == 16384<br>                                                                                                              |[0x8000023c]:slli a0, sp, 6<br> [0x80000240]:sw a0, 0(tp)<br>        |
|  25|[0x80002264]<br>0x02000000|- rs1 : x5<br> - rd : x3<br> - rs1_val == 32768<br>                                                                                                               |[0x80000248]:slli gp, t0, 10<br> [0x8000024c]:sw gp, 4(tp)<br>       |
|  26|[0x80002268]<br>0x00000000|- rs1 : x27<br> - rd : x9<br> - rs1_val == 65536<br> - imm_val == 16<br>                                                                                          |[0x80000254]:slli s1, s11, 16<br> [0x80000258]:sw s1, 8(tp)<br>      |
|  27|[0x8000226c]<br>0x00000000|- rs1 : x20<br> - rd : x22<br> - rs1_val == 131072<br> - imm_val == 29<br>                                                                                        |[0x80000260]:slli s6, s4, 29<br> [0x80000264]:sw s6, 12(tp)<br>      |
|  28|[0x80002270]<br>0x00000000|- rs1 : x6<br> - rd : x1<br> - rs1_val == 262144<br>                                                                                                              |[0x8000026c]:slli ra, t1, 21<br> [0x80000270]:sw ra, 16(tp)<br>      |
|  29|[0x80002274]<br>0x00000000|- rs1 : x9<br> - rd : x27<br> - rs1_val == 524288<br>                                                                                                             |[0x80000278]:slli s11, s1, 30<br> [0x8000027c]:sw s11, 20(tp)<br>    |
|  30|[0x80002278]<br>0x08000000|- rs1 : x24<br> - rd : x14<br> - rs1_val == 1048576<br>                                                                                                           |[0x80000284]:slli a4, s8, 7<br> [0x80000288]:sw a4, 24(tp)<br>       |
|  31|[0x8000227c]<br>0x00000000|- rs1 : x30<br> - rd : x24<br> - rs1_val == 4194304<br>                                                                                                           |[0x80000290]:slli s8, t5, 19<br> [0x80000294]:sw s8, 28(tp)<br>      |
|  32|[0x80002280]<br>0x00000000|- rs1 : x15<br> - rd : x11<br> - rs1_val == 8388608<br>                                                                                                           |[0x8000029c]:slli a1, a5, 21<br> [0x800002a0]:sw a1, 32(tp)<br>      |
|  33|[0x80002284]<br>0x00000000|- rs1_val == 16777216<br>                                                                                                                                         |[0x800002a8]:slli a1, a0, 8<br> [0x800002ac]:sw a1, 36(tp)<br>       |
|  34|[0x80002288]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                                                         |[0x800002b4]:slli a1, a0, 11<br> [0x800002b8]:sw a1, 40(tp)<br>      |
|  35|[0x8000228c]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                                         |[0x800002c0]:slli a1, a0, 29<br> [0x800002c4]:sw a1, 44(tp)<br>      |
|  36|[0x80002290]<br>0x00000000|- rs1_val == 134217728<br>                                                                                                                                        |[0x800002cc]:slli a1, a0, 9<br> [0x800002d0]:sw a1, 48(tp)<br>       |
|  37|[0x80002294]<br>0x00000000|- rs1_val == 268435456<br>                                                                                                                                        |[0x800002d8]:slli a1, a0, 5<br> [0x800002dc]:sw a1, 52(tp)<br>       |
|  38|[0x80002298]<br>0x00000000|- rs1_val == 536870912<br>                                                                                                                                        |[0x800002e4]:slli a1, a0, 9<br> [0x800002e8]:sw a1, 56(tp)<br>       |
|  39|[0x8000229c]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                                       |[0x800002f0]:slli a1, a0, 23<br> [0x800002f4]:sw a1, 60(tp)<br>      |
|  40|[0x800022a0]<br>0xFFFFFFFE|- rs1_val == -2<br>                                                                                                                                               |[0x800002fc]:slli a1, a0, 0<br> [0x80000300]:sw a1, 64(tp)<br>       |
|  41|[0x800022a4]<br>0xFFA00000|- rs1_val == -3<br>                                                                                                                                               |[0x80000308]:slli a1, a0, 21<br> [0x8000030c]:sw a1, 68(tp)<br>      |
|  42|[0x800022a8]<br>0xFFFFB000|- rs1_val == -5<br>                                                                                                                                               |[0x80000314]:slli a1, a0, 12<br> [0x80000318]:sw a1, 72(tp)<br>      |
|  43|[0x800022ac]<br>0xFFFFFF70|- rs1_val == -9<br> - imm_val == 4<br>                                                                                                                            |[0x80000320]:slli a1, a0, 4<br> [0x80000324]:sw a1, 76(tp)<br>       |
|  44|[0x800022b0]<br>0xF7800000|- rs1_val == -17<br>                                                                                                                                              |[0x8000032c]:slli a1, a0, 23<br> [0x80000330]:sw a1, 80(tp)<br>      |
|  45|[0x800022b4]<br>0xFFBE0000|- rs1_val == -33<br>                                                                                                                                              |[0x80000338]:slli a1, a0, 17<br> [0x8000033c]:sw a1, 84(tp)<br>      |
|  46|[0x800022b8]<br>0xFFFBF000|- rs1_val == -65<br>                                                                                                                                              |[0x80000344]:slli a1, a0, 12<br> [0x80000348]:sw a1, 88(tp)<br>      |
|  47|[0x800022bc]<br>0xEFE00000|- rs1_val == -129<br>                                                                                                                                             |[0x80000350]:slli a1, a0, 21<br> [0x80000354]:sw a1, 92(tp)<br>      |
|  48|[0x800022c0]<br>0xFFFDFE00|- rs1_val == -257<br>                                                                                                                                             |[0x8000035c]:slli a1, a0, 9<br> [0x80000360]:sw a1, 96(tp)<br>       |
|  49|[0x800022c4]<br>0xF8000000|- rs1_val == -513<br> - imm_val == 27<br>                                                                                                                         |[0x80000368]:slli a1, a0, 27<br> [0x8000036c]:sw a1, 100(tp)<br>     |
|  50|[0x800022c8]<br>0xFFFFDFF8|- rs1_val == -1025<br>                                                                                                                                            |[0x80000374]:slli a1, a0, 3<br> [0x80000378]:sw a1, 104(tp)<br>      |
|  51|[0x800022cc]<br>0xEFFE0000|- rs1_val == -2049<br>                                                                                                                                            |[0x80000384]:slli a1, a0, 17<br> [0x80000388]:sw a1, 108(tp)<br>     |
|  52|[0x800022d0]<br>0xFFE00000|- rs1_val == -4097<br>                                                                                                                                            |[0x80000394]:slli a1, a0, 21<br> [0x80000398]:sw a1, 112(tp)<br>     |
|  53|[0x800022d4]<br>0xF8000000|- rs1_val == -8193<br>                                                                                                                                            |[0x800003a4]:slli a1, a0, 27<br> [0x800003a8]:sw a1, 116(tp)<br>     |
|  54|[0x800022d8]<br>0xE0000000|- rs1_val == -16385<br>                                                                                                                                           |[0x800003b4]:slli a1, a0, 29<br> [0x800003b8]:sw a1, 120(tp)<br>     |
|  55|[0x800022dc]<br>0xC0000000|- rs1_val == -32769<br>                                                                                                                                           |[0x800003c4]:slli a1, a0, 30<br> [0x800003c8]:sw a1, 124(tp)<br>     |
|  56|[0x800022e0]<br>0x7FFF8000|- rs1_val == -65537<br> - imm_val == 15<br>                                                                                                                       |[0x800003d4]:slli a1, a0, 15<br> [0x800003d8]:sw a1, 128(tp)<br>     |
|  57|[0x800022e4]<br>0xC0000000|- rs1_val == -131073<br>                                                                                                                                          |[0x800003e4]:slli a1, a0, 30<br> [0x800003e8]:sw a1, 132(tp)<br>     |
|  58|[0x800022e8]<br>0xFEFFFFF8|- rs1_val == -2097153<br>                                                                                                                                         |[0x800003f4]:slli a1, a0, 3<br> [0x800003f8]:sw a1, 136(tp)<br>      |
|  59|[0x800022ec]<br>0xFFFF8000|- rs1_val == -4194305<br>                                                                                                                                         |[0x80000404]:slli a1, a0, 15<br> [0x80000408]:sw a1, 140(tp)<br>     |
|  60|[0x800022f0]<br>0xFF7FFFFF|- rs1_val == -8388609<br>                                                                                                                                         |[0x80000414]:slli a1, a0, 0<br> [0x80000418]:sw a1, 144(tp)<br>      |
|  61|[0x800022f4]<br>0xDFFFFFE0|- rs1_val == -16777217<br>                                                                                                                                        |[0x80000424]:slli a1, a0, 5<br> [0x80000428]:sw a1, 148(tp)<br>      |
|  62|[0x800022f8]<br>0xFBFFFFFE|- rs1_val == -33554433<br> - imm_val == 1<br>                                                                                                                     |[0x80000434]:slli a1, a0, 1<br> [0x80000438]:sw a1, 152(tp)<br>      |
|  63|[0x800022fc]<br>0xFFFFFF00|- rs1_val == -67108865<br>                                                                                                                                        |[0x80000444]:slli a1, a0, 8<br> [0x80000448]:sw a1, 156(tp)<br>      |
|  64|[0x80002300]<br>0xF8000000|- rs1_val == -268435457<br>                                                                                                                                       |[0x80000454]:slli a1, a0, 27<br> [0x80000458]:sw a1, 160(tp)<br>     |
|  65|[0x80002304]<br>0xFFFF0000|- rs1_val == -536870913<br>                                                                                                                                       |[0x80000464]:slli a1, a0, 16<br> [0x80000468]:sw a1, 164(tp)<br>     |
|  66|[0x80002308]<br>0xFFFFF000|- rs1_val == -1073741825<br>                                                                                                                                      |[0x80000474]:slli a1, a0, 12<br> [0x80000478]:sw a1, 168(tp)<br>     |
|  67|[0x8000230c]<br>0xA0000000|- rs1_val == 1431655765<br> - rs1_val==1431655765<br>                                                                                                             |[0x80000484]:slli a1, a0, 29<br> [0x80000488]:sw a1, 172(tp)<br>     |
|  68|[0x80002310]<br>0x55555000|- rs1_val == -1431655766<br> - rs1_val==-1431655766<br>                                                                                                           |[0x80000494]:slli a1, a0, 11<br> [0x80000498]:sw a1, 176(tp)<br>     |
|  69|[0x80002314]<br>0x00060000|- rs1_val==3<br>                                                                                                                                                  |[0x800004a0]:slli a1, a0, 17<br> [0x800004a4]:sw a1, 180(tp)<br>     |
|  70|[0x80002318]<br>0x00000140|- rs1_val==5<br>                                                                                                                                                  |[0x800004ac]:slli a1, a0, 6<br> [0x800004b0]:sw a1, 184(tp)<br>      |
|  71|[0x8000231c]<br>0x33333380|- rs1_val==1717986919<br>                                                                                                                                         |[0x800004bc]:slli a1, a0, 7<br> [0x800004c0]:sw a1, 188(tp)<br>      |
|  72|[0x80002320]<br>0xE95FA000|- rs1_val==-46339<br>                                                                                                                                             |[0x800004cc]:slli a1, a0, 13<br> [0x800004d0]:sw a1, 192(tp)<br>     |
|  73|[0x80002324]<br>0x2D414000|- rs1_val==46341<br>                                                                                                                                              |[0x800004dc]:slli a1, a0, 14<br> [0x800004e0]:sw a1, 196(tp)<br>     |
|  74|[0x80002328]<br>0x99999998|- rs1_val==858993459<br>                                                                                                                                          |[0x800004ec]:slli a1, a0, 3<br> [0x800004f0]:sw a1, 200(tp)<br>      |
|  75|[0x8000232c]<br>0x66666600|- rs1_val==1717986918<br>                                                                                                                                         |[0x800004fc]:slli a1, a0, 8<br> [0x80000500]:sw a1, 204(tp)<br>      |
|  76|[0x80002330]<br>0x5F800000|- rs1_val==-46340<br>                                                                                                                                             |[0x8000050c]:slli a1, a0, 21<br> [0x80000510]:sw a1, 208(tp)<br>     |
|  77|[0x80002334]<br>0xF8000000|- rs1_val == -1048577<br>                                                                                                                                         |[0x8000051c]:slli a1, a0, 27<br> [0x80000520]:sw a1, 212(tp)<br>     |
|  78|[0x80002338]<br>0xA8200000|- rs1_val==46340<br>                                                                                                                                              |[0x8000052c]:slli a1, a0, 19<br> [0x80000530]:sw a1, 216(tp)<br>     |
|  79|[0x8000233c]<br>0xA0000000|- rs1_val==1431655764<br>                                                                                                                                         |[0x8000053c]:slli a1, a0, 27<br> [0x80000540]:sw a1, 220(tp)<br>     |
|  80|[0x80002340]<br>0xCCCCCCA0|- rs1_val==1717986917<br>                                                                                                                                         |[0x8000054c]:slli a1, a0, 5<br> [0x80000550]:sw a1, 224(tp)<br>      |
|  81|[0x80002344]<br>0x002D40C0|- rs1_val==46339<br>                                                                                                                                              |[0x8000055c]:slli a1, a0, 6<br> [0x80000560]:sw a1, 228(tp)<br>      |
|  82|[0x80002348]<br>0xAAC00000|- rs1_val==1431655766<br>                                                                                                                                         |[0x8000056c]:slli a1, a0, 21<br> [0x80000570]:sw a1, 232(tp)<br>     |
|  83|[0x8000234c]<br>0x55555800|- rs1_val==-1431655765<br>                                                                                                                                        |[0x8000057c]:slli a1, a0, 11<br> [0x80000580]:sw a1, 236(tp)<br>     |
|  84|[0x80002350]<br>0x03000000|- rs1_val==6<br>                                                                                                                                                  |[0x80000588]:slli a1, a0, 23<br> [0x8000058c]:sw a1, 240(tp)<br>     |
|  85|[0x80002354]<br>0x33333400|- rs1_val==858993460<br>                                                                                                                                          |[0x80000598]:slli a1, a0, 8<br> [0x8000059c]:sw a1, 244(tp)<br>      |
|  86|[0x80002358]<br>0x00000000|- rs1_val == 2097152<br>                                                                                                                                          |[0x800005a4]:slli a1, a0, 11<br> [0x800005a8]:sw a1, 248(tp)<br>     |
