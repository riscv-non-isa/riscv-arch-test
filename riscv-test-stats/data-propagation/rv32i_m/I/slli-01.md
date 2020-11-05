
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800004d0')]      |
| SIG_REGION                | [('0x80003204', '0x80003324', '72 words')]      |
| COV_LABELS                | slli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/slli-01.S/slli-01.S    |
| Total Number of coverpoints| 156     |
| Total Coverpoints Hit     | 156      |
| Total Signature Updates   | 72      |
| STAT1                     | 70      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004b8]:slli a1, a0, 12
      [0x800004bc]:sw a1, 184(sp)
 -- Signature Address: 0x8000331c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : slli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val == 0 and imm_val >= 0 and imm_val < xlen




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004c4]:slli a1, a0, 15
      [0x800004c8]:sw a1, 188(sp)
 -- Signature Address: 0x80003320 Data: 0x00200000
 -- Redundant Coverpoints hit by the op
      - opcode : slli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == 64
      - imm_val == 15






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

|s.no|        signature         |                                                                           coverpoints                                                                           |                                code                                |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003204]<br>0xFFF7FFF0|- opcode : slli<br> - rs1 : x2<br> - rd : x2<br> - rs1 == rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == -32769<br> - imm_val == 4<br> |[0x80000108]:slli sp, sp, 4<br> [0x8000010c]:sw sp, 0(t0)<br>       |
|   2|[0x80003208]<br>0x00000000|- rs1 : x26<br> - rd : x31<br> - rs1 != rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == 32768<br>                                       |[0x80000114]:slli t6, s10, 17<br> [0x80000118]:sw t6, 4(t0)<br>     |
|   3|[0x8000320c]<br>0xFFDFFFFF|- rs1 : x13<br> - rd : x16<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -2097153<br>                                                                      |[0x80000124]:slli a6, a3, 0<br> [0x80000128]:sw a6, 8(t0)<br>       |
|   4|[0x80003210]<br>0x00004000|- rs1 : x24<br> - rd : x21<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 16384<br>                                                                         |[0x80000130]:slli s5, s8, 0<br> [0x80000134]:sw s5, 12(t0)<br>      |
|   5|[0x80003214]<br>0x80000000|- rs1 : x18<br> - rd : x6<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -4194305<br>                                                                |[0x80000140]:slli t1, s2, 31<br> [0x80000144]:sw t1, 16(t0)<br>     |
|   6|[0x80003218]<br>0x00000000|- rs1 : x15<br> - rd : x19<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 512<br>                                                                    |[0x8000014c]:slli s3, a5, 31<br> [0x80000150]:sw s3, 20(t0)<br>     |
|   7|[0x8000321c]<br>0x00000008|- rs1 : x14<br> - rd : x26<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val == 2<br> - imm_val == 2<br>                                 |[0x80000158]:slli s10, a4, 2<br> [0x8000015c]:sw s10, 24(t0)<br>    |
|   8|[0x80003220]<br>0x00000000|- rs1 : x8<br> - rd : x15<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -2147483648<br>                                   |[0x80000164]:slli a5, fp, 2<br> [0x80000168]:sw a5, 28(t0)<br>      |
|   9|[0x80003224]<br>0x00000000|- rs1 : x0<br> - rd : x23<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br>                                                                             |[0x80000170]:slli s7, zero, 12<br> [0x80000174]:sw s7, 32(t0)<br>   |
|  10|[0x80003228]<br>0xFFFFE000|- rs1 : x21<br> - rd : x22<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 2147483647<br>                                  |[0x80000180]:slli s6, s5, 13<br> [0x80000184]:sw s6, 36(t0)<br>     |
|  11|[0x8000322c]<br>0x00000002|- rs1 : x29<br> - rd : x25<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br> - imm_val == 1<br>                                      |[0x8000018c]:slli s9, t4, 1<br> [0x80000190]:sw s9, 40(t0)<br>      |
|  12|[0x80003230]<br>0x00000000|- rs1 : x17<br> - rd : x4<br> - imm_val == 8<br>                                                                                                                 |[0x80000198]:slli tp, a7, 8<br> [0x8000019c]:sw tp, 44(t0)<br>      |
|  13|[0x80003234]<br>0x00000000|- rs1 : x27<br> - rd : x18<br> - rs1_val == 268435456<br> - imm_val == 16<br>                                                                                    |[0x800001a4]:slli s2, s11, 16<br> [0x800001a8]:sw s2, 48(t0)<br>    |
|  14|[0x80003238]<br>0xC0000000|- rs1 : x16<br> - rd : x9<br> - imm_val == 30<br>                                                                                                                |[0x800001b4]:slli s1, a6, 30<br> [0x800001b8]:sw s1, 52(t0)<br>     |
|  15|[0x8000323c]<br>0xE0000000|- rs1 : x7<br> - rd : x13<br> - rs1_val == -2049<br> - imm_val == 29<br>                                                                                         |[0x800001c4]:slli a3, t2, 29<br> [0x800001c8]:sw a3, 56(t0)<br>     |
|  16|[0x80003240]<br>0x48000000|- rs1 : x1<br> - rd : x20<br> - imm_val == 27<br>                                                                                                                |[0x800001d0]:slli s4, ra, 27<br> [0x800001d4]:sw s4, 60(t0)<br>     |
|  17|[0x80003244]<br>0x00000000|- rs1 : x9<br> - rd : x12<br> - rs1_val == 8192<br> - imm_val == 23<br>                                                                                          |[0x800001dc]:slli a2, s1, 23<br> [0x800001e0]:sw a2, 64(t0)<br>     |
|  18|[0x80003248]<br>0x00000000|- rs1 : x22<br> - rd : x0<br> - rs1_val == 64<br> - imm_val == 15<br>                                                                                            |[0x800001e8]:slli zero, s6, 15<br> [0x800001ec]:sw zero, 68(t0)<br> |
|  19|[0x8000324c]<br>0x00000000|- rs1 : x20<br> - rd : x3<br> - rs1_val == 134217728<br> - imm_val == 21<br>                                                                                     |[0x800001f4]:slli gp, s4, 21<br> [0x800001f8]:sw gp, 72(t0)<br>     |
|  20|[0x80003250]<br>0xFFFFF400|- rs1 : x31<br> - rd : x8<br> - rs1_val == -3<br> - imm_val == 10<br>                                                                                            |[0x80000200]:slli fp, t6, 10<br> [0x80000204]:sw fp, 76(t0)<br>     |
|  21|[0x80003254]<br>0x00000100|- rs1 : x6<br> - rd : x24<br> - rs1_val == 4<br>                                                                                                                 |[0x8000020c]:slli s8, t1, 6<br> [0x80000210]:sw s8, 80(t0)<br>      |
|  22|[0x80003258]<br>0x00000008|- rs1 : x19<br> - rd : x29<br> - rs1_val == 8<br>                                                                                                                |[0x80000218]:slli t4, s3, 0<br> [0x8000021c]:sw t4, 84(t0)<br>      |
|  23|[0x8000325c]<br>0x00400000|- rs1 : x4<br> - rd : x10<br> - rs1_val == 16<br>                                                                                                                |[0x80000224]:slli a0, tp, 18<br> [0x80000228]:sw a0, 88(t0)<br>     |
|  24|[0x80003260]<br>0x00000000|- rs1 : x3<br> - rd : x11<br> - rs1_val == 32<br>                                                                                                                |[0x80000230]:slli a1, gp, 27<br> [0x80000234]:sw a1, 92(t0)<br>     |
|  25|[0x80003264]<br>0x00080000|- rs1 : x11<br> - rd : x14<br> - rs1_val == 128<br>                                                                                                              |[0x80000244]:slli a4, a1, 12<br> [0x80000248]:sw a4, 0(sp)<br>      |
|  26|[0x80003268]<br>0x04000000|- rs1 : x10<br> - rd : x30<br> - rs1_val == 256<br>                                                                                                              |[0x80000250]:slli t5, a0, 18<br> [0x80000254]:sw t5, 4(sp)<br>      |
|  27|[0x8000326c]<br>0x00040000|- rs1 : x30<br> - rd : x27<br> - rs1_val == 1024<br>                                                                                                             |[0x8000025c]:slli s11, t5, 8<br> [0x80000260]:sw s11, 8(sp)<br>     |
|  28|[0x80003270]<br>0x00080000|- rs1 : x28<br> - rd : x17<br> - rs1_val == 2048<br>                                                                                                             |[0x8000026c]:slli a7, t3, 8<br> [0x80000270]:sw a7, 12(sp)<br>      |
|  29|[0x80003274]<br>0x00800000|- rs1 : x23<br> - rd : x5<br> - rs1_val == 4096<br>                                                                                                              |[0x80000278]:slli t0, s7, 11<br> [0x8000027c]:sw t0, 16(sp)<br>     |
|  30|[0x80003278]<br>0x00000000|- rs1 : x25<br> - rd : x28<br> - rs1_val == 65536<br>                                                                                                            |[0x80000284]:slli t3, s9, 16<br> [0x80000288]:sw t3, 20(sp)<br>     |
|  31|[0x8000327c]<br>0x00000000|- rs1 : x12<br> - rd : x7<br> - rs1_val == 131072<br>                                                                                                            |[0x80000290]:slli t2, a2, 27<br> [0x80000294]:sw t2, 24(sp)<br>     |
|  32|[0x80003280]<br>0x00000000|- rs1 : x5<br> - rd : x1<br> - rs1_val == 262144<br>                                                                                                             |[0x8000029c]:slli ra, t0, 23<br> [0x800002a0]:sw ra, 28(sp)<br>     |
|  33|[0x80003284]<br>0x00000000|- rs1_val == 524288<br>                                                                                                                                          |[0x800002a8]:slli a1, a0, 14<br> [0x800002ac]:sw a1, 32(sp)<br>     |
|  34|[0x80003288]<br>0x40000000|- rs1_val == 1048576<br>                                                                                                                                         |[0x800002b4]:slli a1, a0, 10<br> [0x800002b8]:sw a1, 36(sp)<br>     |
|  35|[0x8000328c]<br>0x00000000|- rs1_val == 2097152<br>                                                                                                                                         |[0x800002c0]:slli a1, a0, 11<br> [0x800002c4]:sw a1, 40(sp)<br>     |
|  36|[0x80003290]<br>0x00000000|- rs1_val == 4194304<br>                                                                                                                                         |[0x800002cc]:slli a1, a0, 18<br> [0x800002d0]:sw a1, 44(sp)<br>     |
|  37|[0x80003294]<br>0x00800000|- rs1_val == 8388608<br>                                                                                                                                         |[0x800002d8]:slli a1, a0, 0<br> [0x800002dc]:sw a1, 48(sp)<br>      |
|  38|[0x80003298]<br>0x00000000|- rs1_val == 16777216<br>                                                                                                                                        |[0x800002e4]:slli a1, a0, 27<br> [0x800002e8]:sw a1, 52(sp)<br>     |
|  39|[0x8000329c]<br>0x80000000|- rs1_val == 33554432<br>                                                                                                                                        |[0x800002f0]:slli a1, a0, 6<br> [0x800002f4]:sw a1, 56(sp)<br>      |
|  40|[0x800032a0]<br>0xEFF80000|- rs1_val == -513<br>                                                                                                                                            |[0x800002fc]:slli a1, a0, 19<br> [0x80000300]:sw a1, 60(sp)<br>     |
|  41|[0x800032a4]<br>0xE0000000|- rs1_val == -1025<br>                                                                                                                                           |[0x80000308]:slli a1, a0, 29<br> [0x8000030c]:sw a1, 64(sp)<br>     |
|  42|[0x800032a8]<br>0xFFBFFC00|- rs1_val == -4097<br>                                                                                                                                           |[0x80000318]:slli a1, a0, 10<br> [0x8000031c]:sw a1, 68(sp)<br>     |
|  43|[0x800032ac]<br>0xFBFFE000|- rs1_val == -8193<br>                                                                                                                                           |[0x80000328]:slli a1, a0, 13<br> [0x8000032c]:sw a1, 72(sp)<br>     |
|  44|[0x800032b0]<br>0xFBFFF000|- rs1_val == -16385<br>                                                                                                                                          |[0x80000338]:slli a1, a0, 12<br> [0x8000033c]:sw a1, 76(sp)<br>     |
|  45|[0x800032b4]<br>0xFFBFFFC0|- rs1_val == -65537<br>                                                                                                                                          |[0x80000348]:slli a1, a0, 6<br> [0x8000034c]:sw a1, 80(sp)<br>      |
|  46|[0x800032b8]<br>0xFFF80000|- rs1_val == -131073<br>                                                                                                                                         |[0x80000358]:slli a1, a0, 19<br> [0x8000035c]:sw a1, 84(sp)<br>     |
|  47|[0x800032bc]<br>0xEFFFFC00|- rs1_val == -262145<br>                                                                                                                                         |[0x80000368]:slli a1, a0, 10<br> [0x8000036c]:sw a1, 88(sp)<br>     |
|  48|[0x800032c0]<br>0x80000000|- rs1_val == -524289<br>                                                                                                                                         |[0x80000378]:slli a1, a0, 31<br> [0x8000037c]:sw a1, 92(sp)<br>     |
|  49|[0x800032c4]<br>0xFEFFFFF0|- rs1_val == -1048577<br>                                                                                                                                        |[0x80000388]:slli a1, a0, 4<br> [0x8000038c]:sw a1, 96(sp)<br>      |
|  50|[0x800032c8]<br>0xFF800000|- rs1_val == -8388609<br>                                                                                                                                        |[0x80000398]:slli a1, a0, 23<br> [0x8000039c]:sw a1, 100(sp)<br>    |
|  51|[0x800032cc]<br>0xFFFFF000|- rs1_val == -16777217<br>                                                                                                                                       |[0x800003a8]:slli a1, a0, 12<br> [0x800003ac]:sw a1, 104(sp)<br>    |
|  52|[0x800032d0]<br>0x80000000|- rs1_val == -33554433<br>                                                                                                                                       |[0x800003b8]:slli a1, a0, 31<br> [0x800003bc]:sw a1, 108(sp)<br>    |
|  53|[0x800032d4]<br>0xFFFFFE00|- rs1_val == -67108865<br>                                                                                                                                       |[0x800003c8]:slli a1, a0, 9<br> [0x800003cc]:sw a1, 112(sp)<br>     |
|  54|[0x800032d8]<br>0xFFFFC000|- rs1_val == -134217729<br>                                                                                                                                      |[0x800003d8]:slli a1, a0, 14<br> [0x800003dc]:sw a1, 116(sp)<br>    |
|  55|[0x800032dc]<br>0xFFFFF800|- rs1_val == -268435457<br>                                                                                                                                      |[0x800003e8]:slli a1, a0, 11<br> [0x800003ec]:sw a1, 120(sp)<br>    |
|  56|[0x800032e0]<br>0xFFFFFEE0|- rs1_val == -9<br>                                                                                                                                              |[0x800003f4]:slli a1, a0, 5<br> [0x800003f8]:sw a1, 124(sp)<br>     |
|  57|[0x800032e4]<br>0x80000000|- rs1_val == -5<br>                                                                                                                                              |[0x80000400]:slli a1, a0, 31<br> [0x80000404]:sw a1, 128(sp)<br>    |
|  58|[0x800032e8]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                                        |[0x8000040c]:slli a1, a0, 11<br> [0x80000410]:sw a1, 132(sp)<br>    |
|  59|[0x800032ec]<br>0x7FFFFFFC|- rs1_val == -536870913<br>                                                                                                                                      |[0x8000041c]:slli a1, a0, 2<br> [0x80000420]:sw a1, 136(sp)<br>     |
|  60|[0x800032f0]<br>0x00000000|- rs1_val == 536870912<br>                                                                                                                                       |[0x80000428]:slli a1, a0, 13<br> [0x8000042c]:sw a1, 140(sp)<br>    |
|  61|[0x800032f4]<br>0xFFFE0000|- rs1_val == -1073741825<br>                                                                                                                                     |[0x80000438]:slli a1, a0, 17<br> [0x8000043c]:sw a1, 144(sp)<br>    |
|  62|[0x800032f8]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                                      |[0x80000444]:slli a1, a0, 13<br> [0x80000448]:sw a1, 148(sp)<br>    |
|  63|[0x800032fc]<br>0x80000000|- rs1_val == 1431655765<br>                                                                                                                                      |[0x80000454]:slli a1, a0, 31<br> [0x80000458]:sw a1, 152(sp)<br>    |
|  64|[0x80003300]<br>0xFFFFF000|- rs1_val == -2<br>                                                                                                                                              |[0x80000460]:slli a1, a0, 11<br> [0x80000464]:sw a1, 156(sp)<br>    |
|  65|[0x80003304]<br>0x55500000|- rs1_val == -1431655766<br>                                                                                                                                     |[0x80000470]:slli a1, a0, 19<br> [0x80000474]:sw a1, 160(sp)<br>    |
|  66|[0x80003308]<br>0xC0000000|- rs1_val == -17<br>                                                                                                                                             |[0x8000047c]:slli a1, a0, 30<br> [0x80000480]:sw a1, 164(sp)<br>    |
|  67|[0x8000330c]<br>0xFFFFFF7C|- rs1_val == -33<br>                                                                                                                                             |[0x80000488]:slli a1, a0, 2<br> [0x8000048c]:sw a1, 168(sp)<br>     |
|  68|[0x80003310]<br>0x80000000|- rs1_val == -65<br>                                                                                                                                             |[0x80000494]:slli a1, a0, 31<br> [0x80000498]:sw a1, 172(sp)<br>    |
|  69|[0x80003314]<br>0xFF7F0000|- rs1_val == -129<br>                                                                                                                                            |[0x800004a0]:slli a1, a0, 16<br> [0x800004a4]:sw a1, 176(sp)<br>    |
|  70|[0x80003318]<br>0xFFFFFDFE|- rs1_val == -257<br>                                                                                                                                            |[0x800004ac]:slli a1, a0, 1<br> [0x800004b0]:sw a1, 180(sp)<br>     |
