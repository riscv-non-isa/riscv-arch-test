
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800004e0')]      |
| SIG_REGION                | [('0x80003204', '0x80003334', '76 words')]      |
| COV_LABELS                | slli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/slli-01.S/slli-01.S    |
| Total Number of coverpoints| 156     |
| Total Coverpoints Hit     | 156      |
| Total Signature Updates   | 73      |
| STAT1                     | 72      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004d0]:slli a1, a0, 12
      [0x800004d4]:sw a1, 204(t0)
 -- Signature Address: 0x80003330 Data: 0x00080000
 -- Redundant Coverpoints hit by the op
      - opcode : slli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == 128






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

|s.no|        signature         |                                                                                      coverpoints                                                                                       |                               code                                |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFF0000|- opcode : slli<br> - rs1 : x31<br> - rd : x30<br> - rs1 != rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == -2097153<br> - imm_val == 16<br>                   |[0x80000108]:slli t5, t6, 16<br> [0x8000010c]:sw t5, 0(a2)<br>     |
|   2|[0x80003214]<br>0x00200000|- rs1 : x7<br> - rd : x7<br> - rs1 == rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == 32<br>                                                                   |[0x80000114]:slli t2, t2, 16<br> [0x80000118]:sw t2, 4(a2)<br>     |
|   3|[0x80003218]<br>0xFFF7FFFF|- rs1 : x21<br> - rd : x10<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -524289<br>                                                                                              |[0x80000124]:slli a0, s5, 0<br> [0x80000128]:sw a0, 8(a2)<br>      |
|   4|[0x8000321c]<br>0x00000010|- rs1 : x24<br> - rd : x22<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 16<br>                                                                                                   |[0x80000130]:slli s6, s8, 0<br> [0x80000134]:sw s6, 12(a2)<br>     |
|   5|[0x80003220]<br>0x80000000|- rs1 : x8<br> - rd : x25<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -1025<br>                                                                                          |[0x8000013c]:slli s9, fp, 31<br> [0x80000140]:sw s9, 16(a2)<br>    |
|   6|[0x80003224]<br>0x80000000|- rs1 : x26<br> - rd : x31<br> - rs1_val > 0 and imm_val == (xlen-1)<br>                                                                                                                |[0x80000148]:slli t6, s10, 31<br> [0x8000014c]:sw t6, 20(a2)<br>   |
|   7|[0x80003228]<br>0x00000002|- rs1 : x22<br> - rd : x24<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br> - imm_val == 1<br> |[0x80000154]:slli s8, s6, 1<br> [0x80000158]:sw s8, 24(a2)<br>     |
|   8|[0x8000322c]<br>0x00000000|- rs1 : x10<br> - rd : x15<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -2147483648<br> - imm_val == 15<br>                                     |[0x80000160]:slli a5, a0, 15<br> [0x80000164]:sw a5, 28(a2)<br>    |
|   9|[0x80003230]<br>0x00000000|- rs1 : x17<br> - rd : x18<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br>                                                                                                   |[0x8000016c]:slli s2, a7, 3<br> [0x80000170]:sw s2, 32(a2)<br>     |
|  10|[0x80003234]<br>0xFFFFFFF8|- rs1 : x11<br> - rd : x4<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 2147483647<br>                                                          |[0x8000017c]:slli tp, a1, 3<br> [0x80000180]:sw tp, 36(a2)<br>     |
|  11|[0x80003238]<br>0x00080000|- rs1 : x5<br> - rd : x6<br> - rs1_val == 131072<br> - imm_val == 2<br>                                                                                                                 |[0x80000188]:slli t1, t0, 2<br> [0x8000018c]:sw t1, 40(a2)<br>     |
|  12|[0x8000323c]<br>0xFFFFFFF0|- rs1 : x2<br> - rd : x1<br> - rs1_val == -536870913<br> - imm_val == 4<br>                                                                                                             |[0x80000198]:slli ra, sp, 4<br> [0x8000019c]:sw ra, 44(a2)<br>     |
|  13|[0x80003240]<br>0x00000000|- rs1 : x0<br> - rd : x5<br> - imm_val == 8<br>                                                                                                                                         |[0x800001a8]:slli t0, zero, 8<br> [0x800001ac]:sw t0, 48(a2)<br>   |
|  14|[0x80003244]<br>0xC0000000|- rs1 : x15<br> - rd : x3<br> - rs1_val == -32769<br> - imm_val == 30<br>                                                                                                               |[0x800001b8]:slli gp, a5, 30<br> [0x800001bc]:sw gp, 52(a2)<br>    |
|  15|[0x80003248]<br>0x00000000|- rs1 : x28<br> - rd : x9<br> - rs1_val == 8<br> - imm_val == 29<br>                                                                                                                    |[0x800001c4]:slli s1, t3, 29<br> [0x800001c8]:sw s1, 56(a2)<br>    |
|  16|[0x8000324c]<br>0x00000000|- rs1 : x25<br> - rd : x20<br> - imm_val == 27<br>                                                                                                                                      |[0x800001d0]:slli s4, s9, 27<br> [0x800001d4]:sw s4, 60(a2)<br>    |
|  17|[0x80003250]<br>0xFF800000|- rs1 : x13<br> - rd : x29<br> - rs1_val == -2049<br> - imm_val == 23<br>                                                                                                               |[0x800001e0]:slli t4, a3, 23<br> [0x800001e4]:sw t4, 64(a2)<br>    |
|  18|[0x80003254]<br>0x00E00000|- rs1 : x27<br> - rd : x11<br> - imm_val == 21<br>                                                                                                                                      |[0x800001ec]:slli a1, s11, 21<br> [0x800001f0]:sw a1, 68(a2)<br>   |
|  19|[0x80003258]<br>0x00001C00|- rs1 : x20<br> - rd : x21<br> - imm_val == 10<br>                                                                                                                                      |[0x800001f8]:slli s5, s4, 10<br> [0x800001fc]:sw s5, 72(a2)<br>    |
|  20|[0x8000325c]<br>0x00000010|- rs1 : x19<br> - rd : x17<br> - rs1_val == 2<br>                                                                                                                                       |[0x80000204]:slli a7, s3, 3<br> [0x80000208]:sw a7, 76(a2)<br>     |
|  21|[0x80003260]<br>0x00000400|- rs1 : x29<br> - rd : x16<br> - rs1_val == 4<br>                                                                                                                                       |[0x80000210]:slli a6, t4, 8<br> [0x80000214]:sw a6, 80(a2)<br>     |
|  22|[0x80003264]<br>0x00000200|- rs1 : x12<br> - rd : x26<br> - rs1_val == 64<br>                                                                                                                                      |[0x80000224]:slli s10, a2, 3<br> [0x80000228]:sw s10, 0(t0)<br>    |
|  23|[0x80003268]<br>0x00000000|- rs1 : x9<br> - rd : x0<br> - rs1_val == 128<br>                                                                                                                                       |[0x80000230]:slli zero, s1, 12<br> [0x80000234]:sw zero, 4(t0)<br> |
|  24|[0x8000326c]<br>0x00004000|- rs1 : x1<br> - rd : x28<br> - rs1_val == 256<br>                                                                                                                                      |[0x8000023c]:slli t3, ra, 6<br> [0x80000240]:sw t3, 8(t0)<br>      |
|  25|[0x80003270]<br>0x00100000|- rs1 : x18<br> - rd : x27<br> - rs1_val == 512<br>                                                                                                                                     |[0x80000248]:slli s11, s2, 11<br> [0x8000024c]:sw s11, 12(t0)<br>  |
|  26|[0x80003274]<br>0x00004000|- rs1 : x4<br> - rd : x19<br> - rs1_val == 1024<br>                                                                                                                                     |[0x80000254]:slli s3, tp, 4<br> [0x80000258]:sw s3, 16(t0)<br>     |
|  27|[0x80003278]<br>0x00008000|- rs1 : x14<br> - rd : x2<br> - rs1_val == 2048<br>                                                                                                                                     |[0x80000264]:slli sp, a4, 4<br> [0x80000268]:sw sp, 20(t0)<br>     |
|  28|[0x8000327c]<br>0x00400000|- rs1 : x6<br> - rd : x14<br> - rs1_val == 4096<br>                                                                                                                                     |[0x80000270]:slli a4, t1, 10<br> [0x80000274]:sw a4, 24(t0)<br>    |
|  29|[0x80003280]<br>0x00200000|- rs1 : x23<br> - rd : x12<br> - rs1_val == 8192<br>                                                                                                                                    |[0x8000027c]:slli a2, s7, 8<br> [0x80000280]:sw a2, 28(t0)<br>     |
|  30|[0x80003284]<br>0x01000000|- rs1 : x16<br> - rd : x13<br> - rs1_val == 16384<br>                                                                                                                                   |[0x80000288]:slli a3, a6, 10<br> [0x8000028c]:sw a3, 32(t0)<br>    |
|  31|[0x80003288]<br>0x00400000|- rs1 : x30<br> - rd : x23<br> - rs1_val == 32768<br>                                                                                                                                   |[0x80000294]:slli s7, t5, 7<br> [0x80000298]:sw s7, 36(t0)<br>     |
|  32|[0x8000328c]<br>0x00100000|- rs1 : x3<br> - rd : x8<br> - rs1_val == 65536<br>                                                                                                                                     |[0x800002a0]:slli fp, gp, 4<br> [0x800002a4]:sw fp, 40(t0)<br>     |
|  33|[0x80003290]<br>0x02000000|- rs1_val == 262144<br>                                                                                                                                                                 |[0x800002ac]:slli a1, a0, 7<br> [0x800002b0]:sw a1, 44(t0)<br>     |
|  34|[0x80003294]<br>0x00000000|- rs1_val == 524288<br>                                                                                                                                                                 |[0x800002b8]:slli a1, a0, 31<br> [0x800002bc]:sw a1, 48(t0)<br>    |
|  35|[0x80003298]<br>0x01000000|- rs1_val == 1048576<br>                                                                                                                                                                |[0x800002c4]:slli a1, a0, 4<br> [0x800002c8]:sw a1, 52(t0)<br>     |
|  36|[0x8000329c]<br>0x00800000|- rs1_val == 2097152<br>                                                                                                                                                                |[0x800002d0]:slli a1, a0, 2<br> [0x800002d4]:sw a1, 56(t0)<br>     |
|  37|[0x800032a0]<br>0x00000000|- rs1_val == 4194304<br>                                                                                                                                                                |[0x800002dc]:slli a1, a0, 17<br> [0x800002e0]:sw a1, 60(t0)<br>    |
|  38|[0x800032a4]<br>0x20000000|- rs1_val == 8388608<br>                                                                                                                                                                |[0x800002e8]:slli a1, a0, 6<br> [0x800002ec]:sw a1, 64(t0)<br>     |
|  39|[0x800032a8]<br>0x00000000|- rs1_val == 16777216<br>                                                                                                                                                               |[0x800002f4]:slli a1, a0, 19<br> [0x800002f8]:sw a1, 68(t0)<br>    |
|  40|[0x800032ac]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                                                                               |[0x80000300]:slli a1, a0, 14<br> [0x80000304]:sw a1, 72(t0)<br>    |
|  41|[0x800032b0]<br>0xFFFEFF80|- rs1_val == -513<br>                                                                                                                                                                   |[0x8000030c]:slli a1, a0, 7<br> [0x80000310]:sw a1, 76(t0)<br>     |
|  42|[0x800032b4]<br>0xFFEFFF00|- rs1_val == -4097<br>                                                                                                                                                                  |[0x8000031c]:slli a1, a0, 8<br> [0x80000320]:sw a1, 80(t0)<br>     |
|  43|[0x800032b8]<br>0xFFEFFF80|- rs1_val == -8193<br>                                                                                                                                                                  |[0x8000032c]:slli a1, a0, 7<br> [0x80000330]:sw a1, 84(t0)<br>     |
|  44|[0x800032bc]<br>0xFFEFFFC0|- rs1_val == -16385<br>                                                                                                                                                                 |[0x8000033c]:slli a1, a0, 6<br> [0x80000340]:sw a1, 88(t0)<br>     |
|  45|[0x800032c0]<br>0xFFFF0000|- rs1_val == -131073<br>                                                                                                                                                                |[0x8000034c]:slli a1, a0, 16<br> [0x80000350]:sw a1, 92(t0)<br>    |
|  46|[0x800032c4]<br>0xFFFC0000|- rs1_val == -262145<br>                                                                                                                                                                |[0x8000035c]:slli a1, a0, 18<br> [0x80000360]:sw a1, 96(t0)<br>    |
|  47|[0x800032c8]<br>0xF7FFFF80|- rs1_val == -1048577<br>                                                                                                                                                               |[0x8000036c]:slli a1, a0, 7<br> [0x80000370]:sw a1, 100(t0)<br>    |
|  48|[0x800032cc]<br>0xFFFFF000|- rs1_val == -4194305<br>                                                                                                                                                               |[0x8000037c]:slli a1, a0, 12<br> [0x80000380]:sw a1, 104(t0)<br>   |
|  49|[0x800032d0]<br>0xFFF80000|- rs1_val == -8388609<br>                                                                                                                                                               |[0x8000038c]:slli a1, a0, 19<br> [0x80000390]:sw a1, 108(t0)<br>   |
|  50|[0x800032d4]<br>0xFFFFFE00|- rs1_val == -16777217<br>                                                                                                                                                              |[0x8000039c]:slli a1, a0, 9<br> [0x800003a0]:sw a1, 112(t0)<br>    |
|  51|[0x800032d8]<br>0xE0000000|- rs1_val == -33554433<br>                                                                                                                                                              |[0x800003ac]:slli a1, a0, 29<br> [0x800003b0]:sw a1, 116(t0)<br>   |
|  52|[0x800032dc]<br>0xFFFF0000|- rs1_val == -67108865<br>                                                                                                                                                              |[0x800003bc]:slli a1, a0, 16<br> [0x800003c0]:sw a1, 120(t0)<br>   |
|  53|[0x800032e0]<br>0xFFFFF800|- rs1_val == -134217729<br>                                                                                                                                                             |[0x800003cc]:slli a1, a0, 11<br> [0x800003d0]:sw a1, 124(t0)<br>   |
|  54|[0x800032e4]<br>0xFFFFFFC0|- rs1_val == -268435457<br>                                                                                                                                                             |[0x800003dc]:slli a1, a0, 6<br> [0x800003e0]:sw a1, 128(t0)<br>    |
|  55|[0x800032e8]<br>0xF8000000|- rs1_val == -1073741825<br>                                                                                                                                                            |[0x800003ec]:slli a1, a0, 27<br> [0x800003f0]:sw a1, 132(t0)<br>   |
|  56|[0x800032ec]<br>0x55555540|- rs1_val == 1431655765<br>                                                                                                                                                             |[0x800003fc]:slli a1, a0, 6<br> [0x80000400]:sw a1, 136(t0)<br>    |
|  57|[0x800032f0]<br>0xFFFFFFB8|- rs1_val == -9<br>                                                                                                                                                                     |[0x80000408]:slli a1, a0, 3<br> [0x8000040c]:sw a1, 140(t0)<br>    |
|  58|[0x800032f4]<br>0x80000000|- rs1_val == 67108864<br>                                                                                                                                                               |[0x80000414]:slli a1, a0, 5<br> [0x80000418]:sw a1, 144(t0)<br>    |
|  59|[0x800032f8]<br>0x00000000|- rs1_val == 134217728<br>                                                                                                                                                              |[0x80000420]:slli a1, a0, 14<br> [0x80000424]:sw a1, 148(t0)<br>   |
|  60|[0x800032fc]<br>0x00000000|- rs1_val == 268435456<br>                                                                                                                                                              |[0x8000042c]:slli a1, a0, 8<br> [0x80000430]:sw a1, 152(t0)<br>    |
|  61|[0x80003300]<br>0x00000000|- rs1_val == 536870912<br>                                                                                                                                                              |[0x80000438]:slli a1, a0, 27<br> [0x8000043c]:sw a1, 156(t0)<br>   |
|  62|[0x80003304]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                                                             |[0x80000444]:slli a1, a0, 16<br> [0x80000448]:sw a1, 160(t0)<br>   |
|  63|[0x80003308]<br>0xFFFFFFFC|- rs1_val == -2<br>                                                                                                                                                                     |[0x80000450]:slli a1, a0, 1<br> [0x80000454]:sw a1, 164(t0)<br>    |
|  64|[0x8000330c]<br>0x55500000|- rs1_val == -1431655766<br>                                                                                                                                                            |[0x80000460]:slli a1, a0, 19<br> [0x80000464]:sw a1, 168(t0)<br>   |
|  65|[0x80003310]<br>0xFFFFFFD0|- rs1_val == -3<br>                                                                                                                                                                     |[0x8000046c]:slli a1, a0, 4<br> [0x80000470]:sw a1, 172(t0)<br>    |
|  66|[0x80003314]<br>0xFFD80000|- rs1_val == -5<br>                                                                                                                                                                     |[0x80000478]:slli a1, a0, 19<br> [0x8000047c]:sw a1, 176(t0)<br>   |
|  67|[0x80003318]<br>0xFFFFF780|- rs1_val == -17<br>                                                                                                                                                                    |[0x80000484]:slli a1, a0, 7<br> [0x80000488]:sw a1, 180(t0)<br>    |
|  68|[0x8000331c]<br>0xFFFFF7C0|- rs1_val == -33<br>                                                                                                                                                                    |[0x80000490]:slli a1, a0, 6<br> [0x80000494]:sw a1, 184(t0)<br>    |
|  69|[0x80003320]<br>0xFFFFFBF0|- rs1_val == -65<br>                                                                                                                                                                    |[0x8000049c]:slli a1, a0, 4<br> [0x800004a0]:sw a1, 188(t0)<br>    |
|  70|[0x80003324]<br>0xFFFFFEFE|- rs1_val == -129<br>                                                                                                                                                                   |[0x800004a8]:slli a1, a0, 1<br> [0x800004ac]:sw a1, 192(t0)<br>    |
|  71|[0x80003328]<br>0xFFFF7F80|- rs1_val == -257<br>                                                                                                                                                                   |[0x800004b4]:slli a1, a0, 7<br> [0x800004b8]:sw a1, 196(t0)<br>    |
|  72|[0x8000332c]<br>0xFEFFFF00|- rs1_val == -65537<br>                                                                                                                                                                 |[0x800004c4]:slli a1, a0, 8<br> [0x800004c8]:sw a1, 200(t0)<br>    |
