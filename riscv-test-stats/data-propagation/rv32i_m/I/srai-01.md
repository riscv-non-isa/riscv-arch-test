
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
| SIG_REGION                | [('0x80003204', '0x8000332c', '74 words')]      |
| COV_LABELS                | srai      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srai-01.S/srai-01.S    |
| Total Number of coverpoints| 156     |
| Total Coverpoints Hit     | 156      |
| Total Signature Updates   | 74      |
| STAT1                     | 73      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004d8]:srai a1, a0, 31
      [0x800004dc]:sw a1, 208(sp)
 -- Signature Address: 0x80003328 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : srai
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val == 0 and imm_val >= 0 and imm_val < xlen






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

|s.no|        signature         |                                                                          coverpoints                                                                           |                                code                                |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003204]<br>0xFFFFFFFF|- opcode : srai<br> - rs1 : x15<br> - rd : x15<br> - rs1 == rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == -5<br> - imm_val == 30<br> |[0x80000104]:srai a5, a5, 30<br> [0x80000108]:sw a5, 0(a3)<br>      |
|   2|[0x80003208]<br>0x00400000|- rs1 : x19<br> - rd : x12<br> - rs1 != rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == 67108864<br> - imm_val == 4<br>                |[0x80000110]:srai a2, s3, 4<br> [0x80000114]:sw a2, 4(a3)<br>       |
|   3|[0x8000320c]<br>0xFFFFFFFC|- rs1 : x14<br> - rd : x4<br> - rs1_val < 0 and imm_val == 0<br>                                                                                                |[0x8000011c]:srai tp, a4, 0<br> [0x80000120]:sw tp, 8(a3)<br>       |
|   4|[0x80003210]<br>0x00000008|- rs1 : x9<br> - rd : x29<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 8<br>                                                                             |[0x80000128]:srai t4, s1, 0<br> [0x8000012c]:sw t4, 12(a3)<br>      |
|   5|[0x80003214]<br>0xFFFFFFFF|- rs1 : x2<br> - rd : x10<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -2<br>                                                                     |[0x80000134]:srai a0, sp, 31<br> [0x80000138]:sw a0, 16(a3)<br>     |
|   6|[0x80003218]<br>0x00000000|- rs1 : x10<br> - rd : x3<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 134217728<br>                                                              |[0x80000140]:srai gp, a0, 31<br> [0x80000144]:sw gp, 20(a3)<br>     |
|   7|[0x8000321c]<br>0x00000000|- rs1 : x0<br> - rd : x1<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br>                                                                             |[0x8000014c]:srai ra, zero, 9<br> [0x80000150]:sw ra, 24(a3)<br>    |
|   8|[0x80003220]<br>0xFFC00000|- rs1 : x25<br> - rd : x7<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -2147483648<br>                                  |[0x80000158]:srai t2, s9, 9<br> [0x8000015c]:sw t2, 28(a3)<br>      |
|   9|[0x80003224]<br>0x00000000|- rs1 : x7<br> - rd : x0<br>                                                                                                                                    |[0x80000164]:srai zero, t2, 31<br> [0x80000168]:sw zero, 32(a3)<br> |
|  10|[0x80003228]<br>0x3FFFFFFF|- rs1 : x24<br> - rd : x19<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 2147483647<br> - imm_val == 1<br>              |[0x80000174]:srai s3, s8, 1<br> [0x80000178]:sw s3, 36(a3)<br>      |
|  11|[0x8000322c]<br>0x00000000|- rs1 : x8<br> - rd : x27<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br> - imm_val == 2<br>                                      |[0x80000180]:srai s11, fp, 2<br> [0x80000184]:sw s11, 40(a3)<br>    |
|  12|[0x80003230]<br>0xFFFFFFFF|- rs1 : x29<br> - rd : x5<br> - imm_val == 8<br>                                                                                                                |[0x8000018c]:srai t0, t4, 8<br> [0x80000190]:sw t0, 44(a3)<br>      |
|  13|[0x80003234]<br>0xFFFFFFFB|- rs1 : x26<br> - rd : x20<br> - rs1_val == -262145<br> - imm_val == 16<br>                                                                                     |[0x8000019c]:srai s4, s10, 16<br> [0x800001a0]:sw s4, 48(a3)<br>    |
|  14|[0x80003238]<br>0xFFFFFFFF|- rs1 : x21<br> - rd : x17<br> - rs1_val == -65537<br> - imm_val == 29<br>                                                                                      |[0x800001ac]:srai a7, s5, 29<br> [0x800001b0]:sw a7, 52(a3)<br>     |
|  15|[0x8000323c]<br>0xFFFFFFFF|- rs1 : x31<br> - rd : x28<br> - rs1_val == -33554433<br> - imm_val == 27<br>                                                                                   |[0x800001bc]:srai t3, t6, 27<br> [0x800001c0]:sw t3, 56(a3)<br>     |
|  16|[0x80003240]<br>0xFFFFFFFE|- rs1 : x17<br> - rd : x25<br> - rs1_val == -8388609<br> - imm_val == 23<br>                                                                                    |[0x800001cc]:srai s9, a7, 23<br> [0x800001d0]:sw s9, 60(a3)<br>     |
|  17|[0x80003244]<br>0xFFFFFFFF|- rs1 : x28<br> - rd : x14<br> - imm_val == 15<br>                                                                                                              |[0x800001d8]:srai a4, t3, 15<br> [0x800001dc]:sw a4, 64(a3)<br>     |
|  18|[0x80003248]<br>0xFFFFFFFF|- rs1 : x12<br> - rd : x2<br> - rs1_val == -4097<br> - imm_val == 21<br>                                                                                        |[0x800001e8]:srai sp, a2, 21<br> [0x800001ec]:sw sp, 68(a3)<br>     |
|  19|[0x8000324c]<br>0x00020000|- rs1 : x6<br> - rd : x23<br> - imm_val == 10<br>                                                                                                               |[0x800001f4]:srai s7, t1, 10<br> [0x800001f8]:sw s7, 72(a3)<br>     |
|  20|[0x80003250]<br>0x00000000|- rs1 : x16<br> - rd : x30<br> - rs1_val == 2<br>                                                                                                               |[0x80000200]:srai t5, a6, 5<br> [0x80000204]:sw t5, 76(a3)<br>      |
|  21|[0x80003254]<br>0x00000000|- rs1 : x11<br> - rd : x9<br> - rs1_val == 4<br>                                                                                                                |[0x8000020c]:srai s1, a1, 14<br> [0x80000210]:sw s1, 80(a3)<br>     |
|  22|[0x80003258]<br>0x00000000|- rs1 : x30<br> - rd : x6<br> - rs1_val == 16<br>                                                                                                               |[0x80000220]:srai t1, t5, 15<br> [0x80000224]:sw t1, 0(sp)<br>      |
|  23|[0x8000325c]<br>0x00000000|- rs1 : x27<br> - rd : x24<br> - rs1_val == 32<br>                                                                                                              |[0x8000022c]:srai s8, s11, 7<br> [0x80000230]:sw s8, 4(sp)<br>      |
|  24|[0x80003260]<br>0x00000000|- rs1 : x20<br> - rd : x21<br> - rs1_val == 64<br>                                                                                                              |[0x80000238]:srai s5, s4, 29<br> [0x8000023c]:sw s5, 8(sp)<br>      |
|  25|[0x80003264]<br>0x00000002|- rs1 : x1<br> - rd : x8<br> - rs1_val == 128<br>                                                                                                               |[0x80000244]:srai fp, ra, 6<br> [0x80000248]:sw fp, 12(sp)<br>      |
|  26|[0x80003268]<br>0x00000000|- rs1 : x23<br> - rd : x22<br> - rs1_val == 256<br>                                                                                                             |[0x80000250]:srai s6, s7, 12<br> [0x80000254]:sw s6, 16(sp)<br>     |
|  27|[0x8000326c]<br>0x00000000|- rs1 : x18<br> - rd : x13<br> - rs1_val == 512<br>                                                                                                             |[0x8000025c]:srai a3, s2, 15<br> [0x80000260]:sw a3, 20(sp)<br>     |
|  28|[0x80003270]<br>0x00000000|- rs1 : x4<br> - rd : x16<br> - rs1_val == 1024<br>                                                                                                             |[0x80000268]:srai a6, tp, 19<br> [0x8000026c]:sw a6, 24(sp)<br>     |
|  29|[0x80003274]<br>0x00000400|- rs1 : x3<br> - rd : x31<br> - rs1_val == 2048<br>                                                                                                             |[0x80000278]:srai t6, gp, 1<br> [0x8000027c]:sw t6, 28(sp)<br>      |
|  30|[0x80003278]<br>0x00001000|- rs1 : x5<br> - rd : x18<br> - rs1_val == 4096<br>                                                                                                             |[0x80000284]:srai s2, t0, 0<br> [0x80000288]:sw s2, 32(sp)<br>      |
|  31|[0x8000327c]<br>0x00000000|- rs1 : x22<br> - rd : x26<br> - rs1_val == 8192<br>                                                                                                            |[0x80000290]:srai s10, s6, 31<br> [0x80000294]:sw s10, 36(sp)<br>   |
|  32|[0x80003280]<br>0x00000000|- rs1 : x13<br> - rd : x11<br> - rs1_val == 16384<br>                                                                                                           |[0x8000029c]:srai a1, a3, 16<br> [0x800002a0]:sw a1, 40(sp)<br>     |
|  33|[0x80003284]<br>0x00000000|- rs1_val == 32768<br>                                                                                                                                          |[0x800002a8]:srai a1, a0, 27<br> [0x800002ac]:sw a1, 44(sp)<br>     |
|  34|[0x80003288]<br>0x00000000|- rs1_val == 65536<br>                                                                                                                                          |[0x800002b4]:srai a1, a0, 21<br> [0x800002b8]:sw a1, 48(sp)<br>     |
|  35|[0x8000328c]<br>0x00000040|- rs1_val == 131072<br>                                                                                                                                         |[0x800002c0]:srai a1, a0, 11<br> [0x800002c4]:sw a1, 52(sp)<br>     |
|  36|[0x80003290]<br>0x00000000|- rs1_val == 262144<br>                                                                                                                                         |[0x800002cc]:srai a1, a0, 30<br> [0x800002d0]:sw a1, 56(sp)<br>     |
|  37|[0x80003294]<br>0x00002000|- rs1_val == 524288<br>                                                                                                                                         |[0x800002d8]:srai a1, a0, 6<br> [0x800002dc]:sw a1, 60(sp)<br>      |
|  38|[0x80003298]<br>0x00000000|- rs1_val == 1048576<br>                                                                                                                                        |[0x800002e4]:srai a1, a0, 23<br> [0x800002e8]:sw a1, 64(sp)<br>     |
|  39|[0x8000329c]<br>0x00000010|- rs1_val == 2097152<br>                                                                                                                                        |[0x800002f0]:srai a1, a0, 17<br> [0x800002f4]:sw a1, 68(sp)<br>     |
|  40|[0x800032a0]<br>0x00000010|- rs1_val == 4194304<br>                                                                                                                                        |[0x800002fc]:srai a1, a0, 18<br> [0x80000300]:sw a1, 72(sp)<br>     |
|  41|[0x800032a4]<br>0x00100000|- rs1_val == 8388608<br>                                                                                                                                        |[0x80000308]:srai a1, a0, 3<br> [0x8000030c]:sw a1, 76(sp)<br>      |
|  42|[0x800032a8]<br>0xFFFFFFFF|- rs1_val == -513<br>                                                                                                                                           |[0x80000314]:srai a1, a0, 23<br> [0x80000318]:sw a1, 80(sp)<br>     |
|  43|[0x800032ac]<br>0xFFFFFFFF|- rs1_val == -1025<br>                                                                                                                                          |[0x80000320]:srai a1, a0, 23<br> [0x80000324]:sw a1, 84(sp)<br>     |
|  44|[0x800032b0]<br>0xFFFFFFFF|- rs1_val == -2049<br>                                                                                                                                          |[0x80000330]:srai a1, a0, 21<br> [0x80000334]:sw a1, 88(sp)<br>     |
|  45|[0x800032b4]<br>0xFFFFFFFF|- rs1_val == -8193<br>                                                                                                                                          |[0x80000340]:srai a1, a0, 16<br> [0x80000344]:sw a1, 92(sp)<br>     |
|  46|[0x800032b8]<br>0xFFFFFFEF|- rs1_val == -16385<br>                                                                                                                                         |[0x80000350]:srai a1, a0, 10<br> [0x80000354]:sw a1, 96(sp)<br>     |
|  47|[0x800032bc]<br>0xFFFFFDFF|- rs1_val == -32769<br>                                                                                                                                         |[0x80000360]:srai a1, a0, 6<br> [0x80000364]:sw a1, 100(sp)<br>     |
|  48|[0x800032c0]<br>0xFFFFF7FF|- rs1_val == -131073<br>                                                                                                                                        |[0x80000370]:srai a1, a0, 6<br> [0x80000374]:sw a1, 104(sp)<br>     |
|  49|[0x800032c4]<br>0xFFFF7FFF|- rs1_val == -524289<br>                                                                                                                                        |[0x80000380]:srai a1, a0, 4<br> [0x80000384]:sw a1, 108(sp)<br>     |
|  50|[0x800032c8]<br>0xFFFF7FFF|- rs1_val == -1048577<br>                                                                                                                                       |[0x80000390]:srai a1, a0, 5<br> [0x80000394]:sw a1, 112(sp)<br>     |
|  51|[0x800032cc]<br>0xFFFFDFFF|- rs1_val == -2097153<br>                                                                                                                                       |[0x800003a0]:srai a1, a0, 8<br> [0x800003a4]:sw a1, 116(sp)<br>     |
|  52|[0x800032d0]<br>0xFFFF7FFF|- rs1_val == -4194305<br>                                                                                                                                       |[0x800003b0]:srai a1, a0, 7<br> [0x800003b4]:sw a1, 120(sp)<br>     |
|  53|[0x800032d4]<br>0xFEFFFFFF|- rs1_val == -16777217<br>                                                                                                                                      |[0x800003c0]:srai a1, a0, 0<br> [0x800003c4]:sw a1, 124(sp)<br>     |
|  54|[0x800032d8]<br>0xFFFFFFFF|- rs1_val == -67108865<br>                                                                                                                                      |[0x800003d0]:srai a1, a0, 30<br> [0x800003d4]:sw a1, 128(sp)<br>    |
|  55|[0x800032dc]<br>0xFFFFEFFF|- rs1_val == -134217729<br>                                                                                                                                     |[0x800003e0]:srai a1, a0, 15<br> [0x800003e4]:sw a1, 132(sp)<br>    |
|  56|[0x800032e0]<br>0xFFF7FFFF|- rs1_val == -268435457<br>                                                                                                                                     |[0x800003f0]:srai a1, a0, 9<br> [0x800003f4]:sw a1, 136(sp)<br>     |
|  57|[0x800032e4]<br>0xFFFFFFFF|- rs1_val == -536870913<br>                                                                                                                                     |[0x80000400]:srai a1, a0, 30<br> [0x80000404]:sw a1, 140(sp)<br>    |
|  58|[0x800032e8]<br>0xFFFFFFFF|- rs1_val == -9<br>                                                                                                                                             |[0x8000040c]:srai a1, a0, 12<br> [0x80000410]:sw a1, 144(sp)<br>    |
|  59|[0x800032ec]<br>0x00000200|- rs1_val == 16777216<br>                                                                                                                                       |[0x80000418]:srai a1, a0, 15<br> [0x8000041c]:sw a1, 148(sp)<br>    |
|  60|[0x800032f0]<br>0x00000000|- rs1_val == 33554432<br>                                                                                                                                       |[0x80000424]:srai a1, a0, 30<br> [0x80000428]:sw a1, 152(sp)<br>    |
|  61|[0x800032f4]<br>0x00000080|- rs1_val == 268435456<br>                                                                                                                                      |[0x80000430]:srai a1, a0, 21<br> [0x80000434]:sw a1, 156(sp)<br>    |
|  62|[0x800032f8]<br>0x00000040|- rs1_val == 536870912<br>                                                                                                                                      |[0x8000043c]:srai a1, a0, 23<br> [0x80000440]:sw a1, 160(sp)<br>    |
|  63|[0x800032fc]<br>0xFFBFFFFF|- rs1_val == -1073741825<br>                                                                                                                                    |[0x8000044c]:srai a1, a0, 8<br> [0x80000450]:sw a1, 164(sp)<br>     |
|  64|[0x80003300]<br>0x00000200|- rs1_val == 1073741824<br>                                                                                                                                     |[0x80000458]:srai a1, a0, 21<br> [0x8000045c]:sw a1, 168(sp)<br>    |
|  65|[0x80003304]<br>0x00015555|- rs1_val == 1431655765<br>                                                                                                                                     |[0x80000468]:srai a1, a0, 14<br> [0x8000046c]:sw a1, 172(sp)<br>    |
|  66|[0x80003308]<br>0xFF555555|- rs1_val == -1431655766<br>                                                                                                                                    |[0x80000478]:srai a1, a0, 7<br> [0x8000047c]:sw a1, 176(sp)<br>     |
|  67|[0x8000330c]<br>0xFFFFFFFF|- rs1_val == -3<br>                                                                                                                                             |[0x80000484]:srai a1, a0, 21<br> [0x80000488]:sw a1, 180(sp)<br>    |
|  68|[0x80003310]<br>0xFFFFFFEF|- rs1_val == -17<br>                                                                                                                                            |[0x80000490]:srai a1, a0, 0<br> [0x80000494]:sw a1, 184(sp)<br>     |
|  69|[0x80003314]<br>0xFFFFFFFE|- rs1_val == -33<br>                                                                                                                                            |[0x8000049c]:srai a1, a0, 5<br> [0x800004a0]:sw a1, 188(sp)<br>     |
|  70|[0x80003318]<br>0xFFFFFFFF|- rs1_val == -65<br>                                                                                                                                            |[0x800004a8]:srai a1, a0, 16<br> [0x800004ac]:sw a1, 192(sp)<br>    |
|  71|[0x8000331c]<br>0xFFFFFFEF|- rs1_val == -129<br>                                                                                                                                           |[0x800004b4]:srai a1, a0, 3<br> [0x800004b8]:sw a1, 196(sp)<br>     |
|  72|[0x80003320]<br>0xFFFFFFFF|- rs1_val == -257<br>                                                                                                                                           |[0x800004c0]:srai a1, a0, 23<br> [0x800004c4]:sw a1, 200(sp)<br>    |
|  73|[0x80003324]<br>0x00000000|- rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br>                                                                                                     |[0x800004cc]:srai a1, a0, 9<br> [0x800004d0]:sw a1, 204(sp)<br>     |
