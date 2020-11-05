
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800004c0')]      |
| SIG_REGION                | [('0x80003204', '0x8000332c', '74 words')]      |
| COV_LABELS                | srai      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srai-01.S/srai-01.S    |
| Total Number of coverpoints| 156     |
| Total Coverpoints Hit     | 156      |
| Total Signature Updates   | 71      |
| STAT1                     | 70      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004a8]:srai a1, a0, 31
      [0x800004ac]:sw a1, 204(a2)
 -- Signature Address: 0x80003324 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : srai
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val > 0 and imm_val == (xlen-1)
      - rs1_val == 16384






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
|   1|[0x80003210]<br>0xFFFFFFFF|- opcode : srai<br> - rs1 : x31<br> - rd : x5<br> - rs1 != rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == -32769<br> - imm_val == 30<br>                      |[0x80000108]:srai t0, t6, 30<br> [0x8000010c]:sw t0, 0(tp)<br>      |
|   2|[0x80003214]<br>0x00000000|- rs1 : x29<br> - rd : x29<br> - rs1 == rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == 512<br>                                                                |[0x80000114]:srai t4, t4, 14<br> [0x80000118]:sw t4, 4(tp)<br>      |
|   3|[0x80003218]<br>0xFFFFF7FF|- rs1 : x28<br> - rd : x12<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -2049<br>                                                                                                |[0x80000124]:srai a2, t3, 0<br> [0x80000128]:sw a2, 8(tp)<br>       |
|   4|[0x8000321c]<br>0x00000007|- rs1 : x3<br> - rd : x31<br> - rs1_val > 0 and imm_val == 0<br>                                                                                                                        |[0x80000130]:srai t6, gp, 0<br> [0x80000134]:sw t6, 12(tp)<br>      |
|   5|[0x80003220]<br>0xFFFFFFFF|- rs1 : x7<br> - rd : x24<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -33554433<br>                                                                                      |[0x80000140]:srai s8, t2, 31<br> [0x80000144]:sw s8, 16(tp)<br>     |
|   6|[0x80003224]<br>0x00000000|- rs1 : x8<br> - rd : x0<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 16384<br>                                                                                           |[0x8000014c]:srai zero, fp, 31<br> [0x80000150]:sw zero, 20(tp)<br> |
|   7|[0x80003228]<br>0x00000000|- rs1 : x24<br> - rd : x27<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br> - imm_val == 1<br> |[0x80000158]:srai s11, s8, 1<br> [0x8000015c]:sw s11, 24(tp)<br>    |
|   8|[0x8000322c]<br>0xFFFFE000|- rs1 : x12<br> - rd : x25<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -2147483648<br>                                                         |[0x80000164]:srai s9, a2, 18<br> [0x80000168]:sw s9, 28(tp)<br>     |
|   9|[0x80003230]<br>0x00000000|- rs1 : x2<br> - rd : x26<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br>                                                                                                    |[0x80000170]:srai s10, sp, 5<br> [0x80000174]:sw s10, 32(tp)<br>    |
|  10|[0x80003234]<br>0x01FFFFFF|- rs1 : x23<br> - rd : x15<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 2147483647<br>                                                         |[0x80000180]:srai a5, s7, 6<br> [0x80000184]:sw a5, 36(tp)<br>      |
|  11|[0x80003238]<br>0x15555555|- rs1 : x10<br> - rd : x6<br> - rs1_val == 1431655765<br> - imm_val == 2<br>                                                                                                            |[0x80000190]:srai t1, a0, 2<br> [0x80000194]:sw t1, 40(tp)<br>      |
|  12|[0x8000323c]<br>0x00000001|- rs1 : x17<br> - rd : x9<br> - rs1_val == 16<br> - imm_val == 4<br>                                                                                                                    |[0x8000019c]:srai s1, a7, 4<br> [0x800001a0]:sw s1, 44(tp)<br>      |
|  13|[0x80003240]<br>0x00400000|- rs1 : x20<br> - rd : x30<br> - rs1_val == 1073741824<br> - imm_val == 8<br>                                                                                                           |[0x800001a8]:srai t5, s4, 8<br> [0x800001ac]:sw t5, 48(tp)<br>      |
|  14|[0x80003244]<br>0xFFFFFFF7|- rs1 : x22<br> - rd : x21<br> - rs1_val == -524289<br> - imm_val == 16<br>                                                                                                             |[0x800001b8]:srai s5, s6, 16<br> [0x800001bc]:sw s5, 52(tp)<br>     |
|  15|[0x80003248]<br>0xFFFFFFFF|- rs1 : x26<br> - rd : x16<br> - rs1_val == -5<br> - imm_val == 29<br>                                                                                                                  |[0x800001c4]:srai a6, s10, 29<br> [0x800001c8]:sw a6, 56(tp)<br>    |
|  16|[0x8000324c]<br>0x00000000|- rs1 : x14<br> - rd : x18<br> - rs1_val == 16777216<br> - imm_val == 27<br>                                                                                                            |[0x800001d0]:srai s2, a4, 27<br> [0x800001d4]:sw s2, 60(tp)<br>     |
|  17|[0x80003250]<br>0x00000000|- rs1 : x0<br> - rd : x17<br> - imm_val == 23<br>                                                                                                                                       |[0x800001e0]:srai a7, zero, 23<br> [0x800001e4]:sw a7, 64(tp)<br>   |
|  18|[0x80003254]<br>0x00000000|- rs1 : x1<br> - rd : x11<br> - rs1_val == 4096<br> - imm_val == 15<br>                                                                                                                 |[0x800001ec]:srai a1, ra, 15<br> [0x800001f0]:sw a1, 68(tp)<br>     |
|  19|[0x80003258]<br>0x00000080|- rs1 : x25<br> - rd : x14<br> - rs1_val == 268435456<br> - imm_val == 21<br>                                                                                                           |[0x80000200]:srai a4, s9, 21<br> [0x80000204]:sw a4, 0(a2)<br>      |
|  20|[0x8000325c]<br>0x00000000|- rs1 : x13<br> - rd : x20<br> - imm_val == 10<br>                                                                                                                                      |[0x8000020c]:srai s4, a3, 10<br> [0x80000210]:sw s4, 4(a2)<br>      |
|  21|[0x80003260]<br>0x00000000|- rs1 : x18<br> - rd : x13<br> - rs1_val == 2<br>                                                                                                                                       |[0x80000218]:srai a3, s2, 15<br> [0x8000021c]:sw a3, 8(a2)<br>      |
|  22|[0x80003264]<br>0x00000000|- rs1 : x6<br> - rd : x2<br> - rs1_val == 4<br>                                                                                                                                         |[0x80000224]:srai sp, t1, 17<br> [0x80000228]:sw sp, 12(a2)<br>     |
|  23|[0x80003268]<br>0x00000000|- rs1 : x19<br> - rd : x10<br> - rs1_val == 8<br>                                                                                                                                       |[0x80000230]:srai a0, s3, 5<br> [0x80000234]:sw a0, 16(a2)<br>      |
|  24|[0x8000326c]<br>0x00000000|- rs1 : x21<br> - rd : x28<br> - rs1_val == 32<br>                                                                                                                                      |[0x8000023c]:srai t3, s5, 9<br> [0x80000240]:sw t3, 20(a2)<br>      |
|  25|[0x80003270]<br>0x00000000|- rs1 : x27<br> - rd : x3<br> - rs1_val == 64<br>                                                                                                                                       |[0x80000248]:srai gp, s11, 23<br> [0x8000024c]:sw gp, 24(a2)<br>    |
|  26|[0x80003274]<br>0x00000020|- rs1 : x30<br> - rd : x1<br> - rs1_val == 128<br>                                                                                                                                      |[0x80000254]:srai ra, t5, 2<br> [0x80000258]:sw ra, 28(a2)<br>      |
|  27|[0x80003278]<br>0x00000001|- rs1 : x15<br> - rd : x8<br> - rs1_val == 256<br>                                                                                                                                      |[0x80000260]:srai fp, a5, 8<br> [0x80000264]:sw fp, 32(a2)<br>      |
|  28|[0x8000327c]<br>0x00000000|- rs1 : x4<br> - rd : x19<br> - rs1_val == 1024<br>                                                                                                                                     |[0x8000026c]:srai s3, tp, 14<br> [0x80000270]:sw s3, 36(a2)<br>     |
|  29|[0x80003280]<br>0x00000000|- rs1 : x16<br> - rd : x4<br> - rs1_val == 2048<br>                                                                                                                                     |[0x8000027c]:srai tp, a6, 19<br> [0x80000280]:sw tp, 40(a2)<br>     |
|  30|[0x80003284]<br>0x00000000|- rs1 : x9<br> - rd : x7<br> - rs1_val == 8192<br>                                                                                                                                      |[0x80000288]:srai t2, s1, 27<br> [0x8000028c]:sw t2, 44(a2)<br>     |
|  31|[0x80003288]<br>0x00000004|- rs1 : x5<br> - rd : x22<br> - rs1_val == 32768<br>                                                                                                                                    |[0x80000294]:srai s6, t0, 13<br> [0x80000298]:sw s6, 48(a2)<br>     |
|  32|[0x8000328c]<br>0x00000000|- rs1 : x11<br> - rd : x23<br> - rs1_val == 65536<br>                                                                                                                                   |[0x800002a0]:srai s7, a1, 23<br> [0x800002a4]:sw s7, 52(a2)<br>     |
|  33|[0x80003290]<br>0x00000000|- rs1_val == 131072<br>                                                                                                                                                                 |[0x800002ac]:srai a1, a0, 27<br> [0x800002b0]:sw a1, 56(a2)<br>     |
|  34|[0x80003294]<br>0x00000000|- rs1_val == 262144<br>                                                                                                                                                                 |[0x800002b8]:srai a1, a0, 21<br> [0x800002bc]:sw a1, 60(a2)<br>     |
|  35|[0x80003298]<br>0x00000002|- rs1_val == 524288<br>                                                                                                                                                                 |[0x800002c4]:srai a1, a0, 18<br> [0x800002c8]:sw a1, 64(a2)<br>     |
|  36|[0x8000329c]<br>0x00002000|- rs1_val == 1048576<br>                                                                                                                                                                |[0x800002d0]:srai a1, a0, 7<br> [0x800002d4]:sw a1, 68(a2)<br>      |
|  37|[0x800032a0]<br>0x00000008|- rs1_val == 2097152<br>                                                                                                                                                                |[0x800002dc]:srai a1, a0, 18<br> [0x800002e0]:sw a1, 72(a2)<br>     |
|  38|[0x800032a4]<br>0x00000000|- rs1_val == 4194304<br>                                                                                                                                                                |[0x800002e8]:srai a1, a0, 31<br> [0x800002ec]:sw a1, 76(a2)<br>     |
|  39|[0x800032a8]<br>0xFFFFFFFF|- rs1_val == -513<br>                                                                                                                                                                   |[0x800002f4]:srai a1, a0, 12<br> [0x800002f8]:sw a1, 80(a2)<br>     |
|  40|[0x800032ac]<br>0xFFFFFFFF|- rs1_val == -1025<br>                                                                                                                                                                  |[0x80000300]:srai a1, a0, 21<br> [0x80000304]:sw a1, 84(a2)<br>     |
|  41|[0x800032b0]<br>0xFFFFFFDF|- rs1_val == -4097<br>                                                                                                                                                                  |[0x80000310]:srai a1, a0, 7<br> [0x80000314]:sw a1, 88(a2)<br>      |
|  42|[0x800032b4]<br>0xFFFFFFFF|- rs1_val == -8193<br>                                                                                                                                                                  |[0x80000320]:srai a1, a0, 30<br> [0x80000324]:sw a1, 92(a2)<br>     |
|  43|[0x800032b8]<br>0xFFFFFFFF|- rs1_val == -16385<br>                                                                                                                                                                 |[0x80000330]:srai a1, a0, 30<br> [0x80000334]:sw a1, 96(a2)<br>     |
|  44|[0x800032bc]<br>0xFFFFFFFF|- rs1_val == -65537<br>                                                                                                                                                                 |[0x80000340]:srai a1, a0, 27<br> [0x80000344]:sw a1, 100(a2)<br>    |
|  45|[0x800032c0]<br>0xFFFFEFFF|- rs1_val == -131073<br>                                                                                                                                                                |[0x80000350]:srai a1, a0, 5<br> [0x80000354]:sw a1, 104(a2)<br>     |
|  46|[0x800032c4]<br>0xFFFFBFFF|- rs1_val == -262145<br>                                                                                                                                                                |[0x80000360]:srai a1, a0, 4<br> [0x80000364]:sw a1, 108(a2)<br>     |
|  47|[0x800032c8]<br>0xFFFFFFBF|- rs1_val == -1048577<br>                                                                                                                                                               |[0x80000370]:srai a1, a0, 14<br> [0x80000374]:sw a1, 112(a2)<br>    |
|  48|[0x800032cc]<br>0xFFFFFFFF|- rs1_val == -2097153<br>                                                                                                                                                               |[0x80000380]:srai a1, a0, 23<br> [0x80000384]:sw a1, 116(a2)<br>    |
|  49|[0x800032d0]<br>0xFFFFFBFF|- rs1_val == -4194305<br>                                                                                                                                                               |[0x80000390]:srai a1, a0, 12<br> [0x80000394]:sw a1, 120(a2)<br>    |
|  50|[0x800032d4]<br>0xFFFFFFFF|- rs1_val == -8388609<br>                                                                                                                                                               |[0x800003a0]:srai a1, a0, 27<br> [0x800003a4]:sw a1, 124(a2)<br>    |
|  51|[0x800032d8]<br>0xFEFFFFFF|- rs1_val == -16777217<br>                                                                                                                                                              |[0x800003b0]:srai a1, a0, 0<br> [0x800003b4]:sw a1, 128(a2)<br>     |
|  52|[0x800032dc]<br>0xFEFFFFFF|- rs1_val == -67108865<br>                                                                                                                                                              |[0x800003c0]:srai a1, a0, 2<br> [0x800003c4]:sw a1, 132(a2)<br>     |
|  53|[0x800032e0]<br>0xFFFEFFFF|- rs1_val == -134217729<br>                                                                                                                                                             |[0x800003d0]:srai a1, a0, 11<br> [0x800003d4]:sw a1, 136(a2)<br>    |
|  54|[0x800032e4]<br>0xFFFFFFFF|- rs1_val == -268435457<br>                                                                                                                                                             |[0x800003e0]:srai a1, a0, 29<br> [0x800003e4]:sw a1, 140(a2)<br>    |
|  55|[0x800032e8]<br>0xFFFFFFFF|- rs1_val == -9<br>                                                                                                                                                                     |[0x800003ec]:srai a1, a0, 17<br> [0x800003f0]:sw a1, 144(a2)<br>    |
|  56|[0x800032ec]<br>0x00000010|- rs1_val == 8388608<br>                                                                                                                                                                |[0x800003f8]:srai a1, a0, 19<br> [0x800003fc]:sw a1, 148(a2)<br>    |
|  57|[0x800032f0]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                                                                               |[0x80000404]:srai a1, a0, 29<br> [0x80000408]:sw a1, 152(a2)<br>    |
|  58|[0x800032f4]<br>0x00002000|- rs1_val == 67108864<br>                                                                                                                                                               |[0x80000410]:srai a1, a0, 13<br> [0x80000414]:sw a1, 156(a2)<br>    |
|  59|[0x800032f8]<br>0x00000100|- rs1_val == 134217728<br>                                                                                                                                                              |[0x8000041c]:srai a1, a0, 19<br> [0x80000420]:sw a1, 160(a2)<br>    |
|  60|[0x800032fc]<br>0x00000100|- rs1_val == 536870912<br>                                                                                                                                                              |[0x80000428]:srai a1, a0, 21<br> [0x8000042c]:sw a1, 164(a2)<br>    |
|  61|[0x80003300]<br>0xFFFEFFFF|- rs1_val == -1073741825<br>                                                                                                                                                            |[0x80000438]:srai a1, a0, 14<br> [0x8000043c]:sw a1, 168(a2)<br>    |
|  62|[0x80003304]<br>0xFFFFFFFF|- rs1_val == -2<br>                                                                                                                                                                     |[0x80000444]:srai a1, a0, 8<br> [0x80000448]:sw a1, 172(a2)<br>     |
|  63|[0x80003308]<br>0xFD555555|- rs1_val == -1431655766<br>                                                                                                                                                            |[0x80000454]:srai a1, a0, 5<br> [0x80000458]:sw a1, 176(a2)<br>     |
|  64|[0x8000330c]<br>0xFFFFFFFF|- rs1_val == -3<br>                                                                                                                                                                     |[0x80000460]:srai a1, a0, 8<br> [0x80000464]:sw a1, 180(a2)<br>     |
|  65|[0x80003310]<br>0xFFFFFFFF|- rs1_val == -17<br>                                                                                                                                                                    |[0x8000046c]:srai a1, a0, 6<br> [0x80000470]:sw a1, 184(a2)<br>     |
|  66|[0x80003314]<br>0xFFFFFFFF|- rs1_val == -33<br>                                                                                                                                                                    |[0x80000478]:srai a1, a0, 7<br> [0x8000047c]:sw a1, 188(a2)<br>     |
|  67|[0x80003318]<br>0xFFFFFFFF|- rs1_val == -65<br>                                                                                                                                                                    |[0x80000484]:srai a1, a0, 16<br> [0x80000488]:sw a1, 192(a2)<br>    |
|  68|[0x8000331c]<br>0xFFFFFFFF|- rs1_val == -129<br>                                                                                                                                                                   |[0x80000490]:srai a1, a0, 12<br> [0x80000494]:sw a1, 196(a2)<br>    |
|  69|[0x80003320]<br>0xFFFFFFFF|- rs1_val == -257<br>                                                                                                                                                                   |[0x8000049c]:srai a1, a0, 21<br> [0x800004a0]:sw a1, 200(a2)<br>    |
|  70|[0x80003328]<br>0xFFFFFFBF|- rs1_val == -536870913<br>                                                                                                                                                             |[0x800004b8]:srai a1, a0, 23<br> [0x800004bc]:sw a1, 208(a2)<br>    |
