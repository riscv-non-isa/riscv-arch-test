
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
| COV_LABELS                | srai      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srai-01.S/srai-01.S    |
| Total Number of coverpoints| 156     |
| Total Coverpoints Hit     | 156      |
| Total Signature Updates   | 72      |
| STAT1                     | 71      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004c0]:srai a1, a0, 27
      [0x800004c4]:sw a1, 200(gp)
 -- Signature Address: 0x80003320 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : srai
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == 8192
      - imm_val == 27






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

|s.no|        signature         |                                                                                      coverpoints                                                                                       |                                code                                |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003204]<br>0xFFFFFFFF|- opcode : srai<br> - rs1 : x19<br> - rd : x26<br> - rs1 != rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == -17<br>                                            |[0x80000104]:srai s10, s3, 17<br> [0x80000108]:sw s10, 0(ra)<br>    |
|   2|[0x80003208]<br>0x00000000|- rs1 : x3<br> - rd : x3<br> - rs1 == rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - imm_val == 23<br>                                                                   |[0x80000110]:srai gp, gp, 23<br> [0x80000114]:sw gp, 4(ra)<br>      |
|   3|[0x8000320c]<br>0xFFFEFFFF|- rs1 : x9<br> - rd : x29<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -65537<br>                                                                                                |[0x80000120]:srai t4, s1, 0<br> [0x80000124]:sw t4, 8(ra)<br>       |
|   4|[0x80003210]<br>0x00000400|- rs1 : x17<br> - rd : x24<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 1024<br>                                                                                                 |[0x8000012c]:srai s8, a7, 0<br> [0x80000130]:sw s8, 12(ra)<br>      |
|   5|[0x80003214]<br>0xFFFFFFFF|- rs1 : x14<br> - rd : x4<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -134217729<br>                                                                                     |[0x8000013c]:srai tp, a4, 31<br> [0x80000140]:sw tp, 16(ra)<br>     |
|   6|[0x80003218]<br>0x00000000|- rs1 : x7<br> - rd : x20<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 16384<br>                                                                                          |[0x80000148]:srai s4, t2, 31<br> [0x8000014c]:sw s4, 20(ra)<br>     |
|   7|[0x8000321c]<br>0x00000000|- rs1 : x21<br> - rd : x25<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br> - imm_val == 1<br> |[0x80000154]:srai s9, s5, 1<br> [0x80000158]:sw s9, 24(ra)<br>      |
|   8|[0x80003220]<br>0xFFFFC000|- rs1 : x27<br> - rd : x21<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -2147483648<br>                                                         |[0x80000160]:srai s5, s11, 17<br> [0x80000164]:sw s5, 28(ra)<br>    |
|   9|[0x80003224]<br>0x00000000|- rs1 : x22<br> - rd : x18<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br>                                                                                                   |[0x8000016c]:srai s2, s6, 18<br> [0x80000170]:sw s2, 32(ra)<br>     |
|  10|[0x80003228]<br>0x003FFFFF|- rs1 : x16<br> - rd : x31<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 2147483647<br>                                                         |[0x8000017c]:srai t6, a6, 9<br> [0x80000180]:sw t6, 36(ra)<br>      |
|  11|[0x8000322c]<br>0xFFFFFFFD|- rs1 : x2<br> - rd : x17<br> - imm_val == 2<br>                                                                                                                                        |[0x80000188]:srai a7, sp, 2<br> [0x8000018c]:sw a7, 40(ra)<br>      |
|  12|[0x80003230]<br>0xFDFFFFFF|- rs1 : x30<br> - rd : x19<br> - rs1_val == -536870913<br> - imm_val == 4<br>                                                                                                           |[0x80000198]:srai s3, t5, 4<br> [0x8000019c]:sw s3, 44(ra)<br>      |
|  13|[0x80003234]<br>0xFFFFBFFF|- rs1 : x24<br> - rd : x7<br> - rs1_val == -4194305<br> - imm_val == 8<br>                                                                                                              |[0x800001a8]:srai t2, s8, 8<br> [0x800001ac]:sw t2, 48(ra)<br>      |
|  14|[0x80003238]<br>0xFFFFFFFB|- rs1 : x12<br> - rd : x13<br> - rs1_val == -262145<br> - imm_val == 16<br>                                                                                                             |[0x800001b8]:srai a3, a2, 16<br> [0x800001bc]:sw a3, 52(ra)<br>     |
|  15|[0x8000323c]<br>0xFFFFFFFF|- rs1 : x31<br> - rd : x11<br> - rs1_val == -2049<br> - imm_val == 30<br>                                                                                                               |[0x800001c8]:srai a1, t6, 30<br> [0x800001cc]:sw a1, 56(ra)<br>     |
|  16|[0x80003240]<br>0x00000000|- rs1 : x29<br> - rd : x16<br> - imm_val == 29<br>                                                                                                                                      |[0x800001d4]:srai a6, t4, 29<br> [0x800001d8]:sw a6, 60(ra)<br>     |
|  17|[0x80003244]<br>0x00000000|- rs1 : x10<br> - rd : x15<br> - rs1_val == 1048576<br> - imm_val == 27<br>                                                                                                             |[0x800001e0]:srai a5, a0, 27<br> [0x800001e4]:sw a5, 64(ra)<br>     |
|  18|[0x80003248]<br>0x00000000|- rs1 : x26<br> - rd : x10<br> - rs1_val == 64<br> - imm_val == 15<br>                                                                                                                  |[0x800001ec]:srai a0, s10, 15<br> [0x800001f0]:sw a0, 68(ra)<br>    |
|  19|[0x8000324c]<br>0x00000000|- rs1 : x25<br> - rd : x8<br> - rs1_val == 8<br> - imm_val == 21<br>                                                                                                                    |[0x800001f8]:srai fp, s9, 21<br> [0x800001fc]:sw fp, 72(ra)<br>     |
|  20|[0x80003250]<br>0x00002000|- rs1 : x15<br> - rd : x23<br> - rs1_val == 8388608<br> - imm_val == 10<br>                                                                                                             |[0x80000204]:srai s7, a5, 10<br> [0x80000208]:sw s7, 76(ra)<br>     |
|  21|[0x80003254]<br>0x00000000|- rs1 : x20<br> - rd : x6<br> - rs1_val == 2<br>                                                                                                                                        |[0x80000210]:srai t1, s4, 21<br> [0x80000214]:sw t1, 80(ra)<br>     |
|  22|[0x80003258]<br>0x00000000|- rs1 : x6<br> - rd : x30<br> - rs1_val == 4<br>                                                                                                                                        |[0x80000224]:srai t5, t1, 3<br> [0x80000228]:sw t5, 0(gp)<br>       |
|  23|[0x8000325c]<br>0x00000000|- rs1 : x4<br> - rd : x12<br> - rs1_val == 16<br>                                                                                                                                       |[0x80000230]:srai a2, tp, 13<br> [0x80000234]:sw a2, 4(gp)<br>      |
|  24|[0x80003260]<br>0x00000000|- rs1 : x28<br> - rd : x22<br> - rs1_val == 32<br>                                                                                                                                      |[0x8000023c]:srai s6, t3, 8<br> [0x80000240]:sw s6, 8(gp)<br>       |
|  25|[0x80003264]<br>0x00000020|- rs1 : x8<br> - rd : x28<br> - rs1_val == 128<br>                                                                                                                                      |[0x80000248]:srai t3, fp, 2<br> [0x8000024c]:sw t3, 12(gp)<br>      |
|  26|[0x80003268]<br>0x00000080|- rs1 : x23<br> - rd : x5<br> - rs1_val == 256<br>                                                                                                                                      |[0x80000254]:srai t0, s7, 1<br> [0x80000258]:sw t0, 16(gp)<br>      |
|  27|[0x8000326c]<br>0x00000000|- rs1 : x0<br> - rd : x14<br>                                                                                                                                                           |[0x80000260]:srai a4, zero, 7<br> [0x80000264]:sw a4, 20(gp)<br>    |
|  28|[0x80003270]<br>0x00000002|- rs1 : x5<br> - rd : x1<br> - rs1_val == 2048<br>                                                                                                                                      |[0x80000270]:srai ra, t0, 10<br> [0x80000274]:sw ra, 24(gp)<br>     |
|  29|[0x80003274]<br>0x00000200|- rs1 : x1<br> - rd : x9<br> - rs1_val == 4096<br>                                                                                                                                      |[0x8000027c]:srai s1, ra, 3<br> [0x80000280]:sw s1, 28(gp)<br>      |
|  30|[0x80003278]<br>0x00000000|- rs1 : x13<br> - rd : x0<br> - rs1_val == 8192<br>                                                                                                                                     |[0x80000288]:srai zero, a3, 27<br> [0x8000028c]:sw zero, 32(gp)<br> |
|  31|[0x8000327c]<br>0x00000001|- rs1 : x11<br> - rd : x2<br> - rs1_val == 32768<br>                                                                                                                                    |[0x80000294]:srai sp, a1, 15<br> [0x80000298]:sw sp, 36(gp)<br>     |
|  32|[0x80003280]<br>0x00000000|- rs1 : x18<br> - rd : x27<br> - rs1_val == 65536<br>                                                                                                                                   |[0x800002a0]:srai s11, s2, 21<br> [0x800002a4]:sw s11, 40(gp)<br>   |
|  33|[0x80003284]<br>0x00000000|- rs1_val == 131072<br>                                                                                                                                                                 |[0x800002ac]:srai a1, a0, 23<br> [0x800002b0]:sw a1, 44(gp)<br>     |
|  34|[0x80003288]<br>0x00000000|- rs1_val == 262144<br>                                                                                                                                                                 |[0x800002b8]:srai a1, a0, 19<br> [0x800002bc]:sw a1, 48(gp)<br>     |
|  35|[0x8000328c]<br>0x00080000|- rs1_val == 524288<br>                                                                                                                                                                 |[0x800002c4]:srai a1, a0, 0<br> [0x800002c8]:sw a1, 52(gp)<br>      |
|  36|[0x80003290]<br>0x00000008|- rs1_val == 2097152<br>                                                                                                                                                                |[0x800002d0]:srai a1, a0, 18<br> [0x800002d4]:sw a1, 56(gp)<br>     |
|  37|[0x80003294]<br>0x00000000|- rs1_val == 4194304<br>                                                                                                                                                                |[0x800002dc]:srai a1, a0, 29<br> [0x800002e0]:sw a1, 60(gp)<br>     |
|  38|[0x80003298]<br>0x00010000|- rs1_val == 16777216<br>                                                                                                                                                               |[0x800002e8]:srai a1, a0, 8<br> [0x800002ec]:sw a1, 64(gp)<br>      |
|  39|[0x8000329c]<br>0x00008000|- rs1_val == 33554432<br>                                                                                                                                                               |[0x800002f4]:srai a1, a0, 10<br> [0x800002f8]:sw a1, 68(gp)<br>     |
|  40|[0x800032a0]<br>0xFFFFFFFF|- rs1_val == -513<br>                                                                                                                                                                   |[0x80000300]:srai a1, a0, 31<br> [0x80000304]:sw a1, 72(gp)<br>     |
|  41|[0x800032a4]<br>0xFFFFFFFF|- rs1_val == -1025<br>                                                                                                                                                                  |[0x8000030c]:srai a1, a0, 14<br> [0x80000310]:sw a1, 76(gp)<br>     |
|  42|[0x800032a8]<br>0xFFFFFFFB|- rs1_val == -4097<br>                                                                                                                                                                  |[0x8000031c]:srai a1, a0, 10<br> [0x80000320]:sw a1, 80(gp)<br>     |
|  43|[0x800032ac]<br>0xFFFFFDFF|- rs1_val == -8193<br>                                                                                                                                                                  |[0x8000032c]:srai a1, a0, 4<br> [0x80000330]:sw a1, 84(gp)<br>      |
|  44|[0x800032b0]<br>0xFFFFFFDF|- rs1_val == -16385<br>                                                                                                                                                                 |[0x8000033c]:srai a1, a0, 9<br> [0x80000340]:sw a1, 88(gp)<br>      |
|  45|[0x800032b4]<br>0xFFFFFFFE|- rs1_val == -32769<br>                                                                                                                                                                 |[0x8000034c]:srai a1, a0, 15<br> [0x80000350]:sw a1, 92(gp)<br>     |
|  46|[0x800032b8]<br>0xFFFFFEFF|- rs1_val == -131073<br>                                                                                                                                                                |[0x8000035c]:srai a1, a0, 9<br> [0x80000360]:sw a1, 96(gp)<br>      |
|  47|[0x800032bc]<br>0xFFFFFFFF|- rs1_val == -524289<br>                                                                                                                                                                |[0x8000036c]:srai a1, a0, 27<br> [0x80000370]:sw a1, 100(gp)<br>    |
|  48|[0x800032c0]<br>0xFFFFFDFF|- rs1_val == -1048577<br>                                                                                                                                                               |[0x8000037c]:srai a1, a0, 11<br> [0x80000380]:sw a1, 104(gp)<br>    |
|  49|[0x800032c4]<br>0xFFFFFDFF|- rs1_val == -2097153<br>                                                                                                                                                               |[0x8000038c]:srai a1, a0, 12<br> [0x80000390]:sw a1, 108(gp)<br>    |
|  50|[0x800032c8]<br>0xFFFFFBFF|- rs1_val == -8388609<br>                                                                                                                                                               |[0x8000039c]:srai a1, a0, 13<br> [0x800003a0]:sw a1, 112(gp)<br>    |
|  51|[0x800032cc]<br>0xFFFFFFFF|- rs1_val == -16777217<br>                                                                                                                                                              |[0x800003ac]:srai a1, a0, 29<br> [0x800003b0]:sw a1, 116(gp)<br>    |
|  52|[0x800032d0]<br>0xFFFFEFFF|- rs1_val == -33554433<br>                                                                                                                                                              |[0x800003bc]:srai a1, a0, 13<br> [0x800003c0]:sw a1, 120(gp)<br>    |
|  53|[0x800032d4]<br>0xFFFFFFFF|- rs1_val == -67108865<br>                                                                                                                                                              |[0x800003cc]:srai a1, a0, 27<br> [0x800003d0]:sw a1, 124(gp)<br>    |
|  54|[0x800032d8]<br>0xFFFFFFFD|- rs1_val == -268435457<br>                                                                                                                                                             |[0x800003dc]:srai a1, a0, 27<br> [0x800003e0]:sw a1, 128(gp)<br>    |
|  55|[0x800032dc]<br>0xFFF7FFFF|- rs1_val == -1073741825<br>                                                                                                                                                            |[0x800003ec]:srai a1, a0, 11<br> [0x800003f0]:sw a1, 132(gp)<br>    |
|  56|[0x800032e0]<br>0xFFFFFFFF|- rs1_val == -9<br>                                                                                                                                                                     |[0x800003f8]:srai a1, a0, 6<br> [0x800003fc]:sw a1, 136(gp)<br>     |
|  57|[0x800032e4]<br>0x00008000|- rs1_val == 67108864<br>                                                                                                                                                               |[0x80000404]:srai a1, a0, 11<br> [0x80000408]:sw a1, 140(gp)<br>    |
|  58|[0x800032e8]<br>0x00000100|- rs1_val == 134217728<br>                                                                                                                                                              |[0x80000410]:srai a1, a0, 19<br> [0x80000414]:sw a1, 144(gp)<br>    |
|  59|[0x800032ec]<br>0x00010000|- rs1_val == 268435456<br>                                                                                                                                                              |[0x8000041c]:srai a1, a0, 12<br> [0x80000420]:sw a1, 148(gp)<br>    |
|  60|[0x800032f0]<br>0x00004000|- rs1_val == 536870912<br>                                                                                                                                                              |[0x80000428]:srai a1, a0, 15<br> [0x8000042c]:sw a1, 152(gp)<br>    |
|  61|[0x800032f4]<br>0x00000002|- rs1_val == 1073741824<br>                                                                                                                                                             |[0x80000434]:srai a1, a0, 29<br> [0x80000438]:sw a1, 156(gp)<br>    |
|  62|[0x800032f8]<br>0xFFFFFFFF|- rs1_val == -2<br>                                                                                                                                                                     |[0x80000440]:srai a1, a0, 11<br> [0x80000444]:sw a1, 160(gp)<br>    |
|  63|[0x800032fc]<br>0x000AAAAA|- rs1_val == 1431655765<br>                                                                                                                                                             |[0x80000450]:srai a1, a0, 11<br> [0x80000454]:sw a1, 164(gp)<br>    |
|  64|[0x80003300]<br>0xFFF55555|- rs1_val == -1431655766<br>                                                                                                                                                            |[0x80000460]:srai a1, a0, 11<br> [0x80000464]:sw a1, 168(gp)<br>    |
|  65|[0x80003304]<br>0xFFFFFFFF|- rs1_val == -3<br>                                                                                                                                                                     |[0x8000046c]:srai a1, a0, 12<br> [0x80000470]:sw a1, 172(gp)<br>    |
|  66|[0x80003308]<br>0xFFFFFFFF|- rs1_val == -5<br>                                                                                                                                                                     |[0x80000478]:srai a1, a0, 10<br> [0x8000047c]:sw a1, 176(gp)<br>    |
|  67|[0x8000330c]<br>0xFFFFFFFF|- rs1_val == -33<br>                                                                                                                                                                    |[0x80000484]:srai a1, a0, 18<br> [0x80000488]:sw a1, 180(gp)<br>    |
|  68|[0x80003310]<br>0xFFFFFFFF|- rs1_val == -65<br>                                                                                                                                                                    |[0x80000490]:srai a1, a0, 12<br> [0x80000494]:sw a1, 184(gp)<br>    |
|  69|[0x80003314]<br>0xFFFFFFFF|- rs1_val == -129<br>                                                                                                                                                                   |[0x8000049c]:srai a1, a0, 9<br> [0x800004a0]:sw a1, 188(gp)<br>     |
|  70|[0x80003318]<br>0xFFFFFFFF|- rs1_val == -257<br>                                                                                                                                                                   |[0x800004a8]:srai a1, a0, 17<br> [0x800004ac]:sw a1, 192(gp)<br>    |
|  71|[0x8000331c]<br>0x00000004|- rs1_val == 512<br>                                                                                                                                                                    |[0x800004b4]:srai a1, a0, 7<br> [0x800004b8]:sw a1, 196(gp)<br>     |
