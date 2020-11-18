
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000750')]      |
| SIG_REGION                | [('0x80002204', '0x8000236c', '90 words')]      |
| COV_LABELS                | sll      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sll-01.S/sll-01.S    |
| Total Number of coverpoints| 211     |
| Total Coverpoints Hit     | 211      |
| Total Signature Updates   | 90      |
| STAT1                     | 87      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000071c]:sll a2, a0, a1
      [0x80000720]:sw a2, 264(ra)
 -- Signature Address: 0x80002360 Data: 0x00000040
 -- Redundant Coverpoints hit by the op
      - opcode : sll
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 4
      - rs1_val==4
      - rs2_val == 4




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000072c]:sll a2, a0, a1
      [0x80000730]:sw a2, 268(ra)
 -- Signature Address: 0x80002364 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : sll
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 2097152
      - rs2_val == 30




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000073c]:sll a2, a0, a1
      [0x80000740]:sw a2, 272(ra)
 -- Signature Address: 0x80002368 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : sll
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 33554432
      - rs2_val == 29






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

|s.no|        signature         |                                                                                                                   coverpoints                                                                                                                    |                               code                                |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80002204]<br>0x00100000|- opcode : sll<br> - rs1 : x13<br> - rs2 : x13<br> - rd : x13<br> - rs1 == rs2 == rd<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == 16<br> - rs2_val == 16<br> |[0x80000108]:sll a3, a3, a3<br> [0x8000010c]:sw a3, 0(t0)<br>      |
|   2|[0x80002208]<br>0x00000000|- rs1 : x1<br> - rs2 : x19<br> - rd : x1<br> - rs1 == rd != rs2<br> - rs1_val == 65536<br> - rs2_val == 30<br>                                                                                                                                    |[0x80000118]:sll ra, ra, s3<br> [0x8000011c]:sw ra, 4(t0)<br>      |
|   3|[0x8000220c]<br>0xFFFFFFF9|- rs1 : x27<br> - rs2 : x11<br> - rd : x11<br> - rs2 == rd != rs1<br> - rs1_val < 0 and rs2_val == 0<br>                                                                                                                                          |[0x80000128]:sll a1, s11, a1<br> [0x8000012c]:sw a1, 8(t0)<br>     |
|   4|[0x80002210]<br>0x00000000|- rs1 : x0<br> - rs2 : x26<br> - rd : x24<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val==0<br>                                                                               |[0x8000013c]:sll s8, zero, s10<br> [0x80000140]:sw s8, 12(t0)<br>  |
|   5|[0x80002214]<br>0x00000040|- rs1 : x21<br> - rs2 : x21<br> - rd : x18<br> - rs1 == rs2 != rd<br> - rs1_val == 4<br> - rs1_val==4<br> - rs2_val == 4<br>                                                                                                                      |[0x8000014c]:sll s2, s5, s5<br> [0x80000150]:sw s2, 16(t0)<br>     |
|   6|[0x80002218]<br>0x00000000|- rs1 : x28<br> - rs2 : x24<br> - rd : x3<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -2147483648<br>                                               |[0x8000015c]:sll gp, t3, s8<br> [0x80000160]:sw gp, 20(t0)<br>     |
|   7|[0x8000221c]<br>0x00000000|- rs1 : x20<br> - rs2 : x22<br> - rd : x12<br>                                                                                                                                                                                                    |[0x8000016c]:sll a2, s4, s6<br> [0x80000170]:sw a2, 24(t0)<br>     |
|   8|[0x80002220]<br>0xE0000000|- rs1 : x18<br> - rs2 : x1<br> - rd : x22<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 2147483647<br> - rs2_val == 29<br>                                                                                |[0x80000180]:sll s6, s2, ra<br> [0x80000184]:sw s6, 28(t0)<br>     |
|   9|[0x80002224]<br>0x00000004|- rs1 : x4<br> - rs2 : x2<br> - rd : x17<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br> - rs2_val == 2<br>                                                                                                         |[0x80000190]:sll a7, tp, sp<br> [0x80000194]:sw a7, 32(t0)<br>     |
|  10|[0x80002228]<br>0x00000002|- rs1 : x26<br> - rs2 : x28<br> - rd : x27<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                                                                             |[0x800001a0]:sll s11, s10, t3<br> [0x800001a4]:sw s11, 36(t0)<br>  |
|  11|[0x8000222c]<br>0x00000008|- rs1 : x9<br> - rs2 : x12<br> - rd : x7<br> - rs1_val == 8<br>                                                                                                                                                                                   |[0x800001b0]:sll t2, s1, a2<br> [0x800001b4]:sw t2, 40(t0)<br>     |
|  12|[0x80002230]<br>0x00001000|- rs1 : x22<br> - rs2 : x4<br> - rd : x23<br> - rs2_val == 8<br>                                                                                                                                                                                  |[0x800001c0]:sll s7, s6, tp<br> [0x800001c4]:sw s7, 44(t0)<br>     |
|  13|[0x80002234]<br>0x00100000|- rs1 : x17<br> - rs2 : x3<br> - rd : x6<br> - rs1_val == 32<br> - rs2_val == 15<br>                                                                                                                                                              |[0x800001d0]:sll t1, a7, gp<br> [0x800001d4]:sw t1, 48(t0)<br>     |
|  14|[0x80002238]<br>0x00000400|- rs1 : x31<br> - rs2 : x9<br> - rd : x10<br> - rs1_val == 64<br>                                                                                                                                                                                 |[0x800001e0]:sll a0, t6, s1<br> [0x800001e4]:sw a0, 52(t0)<br>     |
|  15|[0x8000223c]<br>0x00040000|- rs1 : x10<br> - rs2 : x18<br> - rd : x9<br> - rs1_val == 128<br>                                                                                                                                                                                |[0x800001f0]:sll s1, a0, s2<br> [0x800001f4]:sw s1, 56(t0)<br>     |
|  16|[0x80002240]<br>0x00000100|- rs1 : x15<br> - rs2 : x25<br> - rd : x14<br> - rs1_val == 256<br>                                                                                                                                                                               |[0x80000200]:sll a4, a5, s9<br> [0x80000204]:sw a4, 60(t0)<br>     |
|  17|[0x80002244]<br>0x00004000|- rs1 : x2<br> - rs2 : x29<br> - rd : x28<br> - rs1_val == 512<br>                                                                                                                                                                                |[0x80000210]:sll t3, sp, t4<br> [0x80000214]:sw t3, 64(t0)<br>     |
|  18|[0x80002248]<br>0x00000000|- rs1 : x6<br> - rs2 : x23<br> - rd : x29<br> - rs1_val == 1024<br> - rs2_val == 23<br>                                                                                                                                                           |[0x80000220]:sll t4, t1, s7<br> [0x80000224]:sw t4, 68(t0)<br>     |
|  19|[0x8000224c]<br>0x00100000|- rs1 : x19<br> - rs2 : x17<br> - rd : x26<br> - rs1_val == 4096<br>                                                                                                                                                                              |[0x80000230]:sll s10, s3, a7<br> [0x80000234]:sw s10, 72(t0)<br>   |
|  20|[0x80002250]<br>0x00200000|- rs1 : x23<br> - rs2 : x14<br> - rd : x25<br> - rs1_val == 8192<br>                                                                                                                                                                              |[0x80000240]:sll s9, s7, a4<br> [0x80000244]:sw s9, 76(t0)<br>     |
|  21|[0x80002254]<br>0x10000000|- rs1 : x16<br> - rs2 : x30<br> - rd : x31<br> - rs1_val == 16384<br>                                                                                                                                                                             |[0x80000250]:sll t6, a6, t5<br> [0x80000254]:sw t6, 80(t0)<br>     |
|  22|[0x80002258]<br>0x00008000|- rs1 : x30<br> - rs2 : x27<br> - rd : x20<br> - rs1_val == 32768<br>                                                                                                                                                                             |[0x80000268]:sll s4, t5, s11<br> [0x8000026c]:sw s4, 0(ra)<br>     |
|  23|[0x8000225c]<br>0x00080000|- rs1 : x8<br> - rs2 : x16<br> - rd : x15<br> - rs1_val == 131072<br>                                                                                                                                                                             |[0x80000278]:sll a5, fp, a6<br> [0x8000027c]:sw a5, 4(ra)<br>      |
|  24|[0x80002260]<br>0x02000000|- rs1 : x11<br> - rs2 : x20<br> - rd : x5<br> - rs1_val == 262144<br>                                                                                                                                                                             |[0x80000288]:sll t0, a1, s4<br> [0x8000028c]:sw t0, 8(ra)<br>      |
|  25|[0x80002264]<br>0x00000000|- rs1 : x12<br> - rs2 : x15<br> - rd : x4<br> - rs1_val == 524288<br> - rs2_val == 27<br>                                                                                                                                                         |[0x80000298]:sll tp, a2, a5<br> [0x8000029c]:sw tp, 12(ra)<br>     |
|  26|[0x80002268]<br>0x00000000|- rs1 : x7<br> - rs2 : x6<br> - rd : x16<br> - rs1_val == 1048576<br>                                                                                                                                                                             |[0x800002a8]:sll a6, t2, t1<br> [0x800002ac]:sw a6, 16(ra)<br>     |
|  27|[0x8000226c]<br>0x00200000|- rs1 : x24<br> - rs2 : x0<br> - rd : x21<br> - rs1_val == 2097152<br>                                                                                                                                                                            |[0x800002b8]:sll s5, s8, zero<br> [0x800002bc]:sw s5, 20(ra)<br>   |
|  28|[0x80002270]<br>0x40000000|- rs1 : x25<br> - rs2 : x10<br> - rd : x2<br> - rs1_val == 4194304<br>                                                                                                                                                                            |[0x800002c8]:sll sp, s9, a0<br> [0x800002cc]:sw sp, 24(ra)<br>     |
|  29|[0x80002274]<br>0x80000000|- rs1 : x29<br> - rs2 : x5<br> - rd : x30<br> - rs1_val == 8388608<br>                                                                                                                                                                            |[0x800002d8]:sll t5, t4, t0<br> [0x800002dc]:sw t5, 28(ra)<br>     |
|  30|[0x80002278]<br>0x00000000|- rs1 : x14<br> - rs2 : x8<br> - rd : x19<br> - rs1_val == 16777216<br>                                                                                                                                                                           |[0x800002e8]:sll s3, a4, fp<br> [0x800002ec]:sw s3, 32(ra)<br>     |
|  31|[0x8000227c]<br>0x00000000|- rs1 : x3<br> - rs2 : x7<br> - rd : x0<br> - rs1_val == 33554432<br>                                                                                                                                                                             |[0x800002f8]:sll zero, gp, t2<br> [0x800002fc]:sw zero, 36(ra)<br> |
|  32|[0x80002280]<br>0x00000000|- rs1 : x5<br> - rs2 : x31<br> - rd : x8<br> - rs1_val == 67108864<br> - rs2_val == 21<br>                                                                                                                                                        |[0x80000308]:sll fp, t0, t6<br> [0x8000030c]:sw fp, 40(ra)<br>     |
|  33|[0x80002284]<br>0x80000000|- rs1_val == 134217728<br>                                                                                                                                                                                                                        |[0x80000318]:sll a2, a0, a1<br> [0x8000031c]:sw a2, 44(ra)<br>     |
|  34|[0x80002288]<br>0x00000000|- rs1_val == 268435456<br>                                                                                                                                                                                                                        |[0x80000328]:sll a2, a0, a1<br> [0x8000032c]:sw a2, 48(ra)<br>     |
|  35|[0x8000228c]<br>0x40000000|- rs1_val == 536870912<br> - rs2_val == 1<br>                                                                                                                                                                                                     |[0x80000338]:sll a2, a0, a1<br> [0x8000033c]:sw a2, 52(ra)<br>     |
|  36|[0x80002290]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                                                                                                                       |[0x80000348]:sll a2, a0, a1<br> [0x8000034c]:sw a2, 56(ra)<br>     |
|  37|[0x80002294]<br>0xFFFFFFC0|- rs1_val == -2<br>                                                                                                                                                                                                                               |[0x80000358]:sll a2, a0, a1<br> [0x8000035c]:sw a2, 60(ra)<br>     |
|  38|[0x80002298]<br>0xFFFF4000|- rs1_val == -3<br>                                                                                                                                                                                                                               |[0x80000368]:sll a2, a0, a1<br> [0x8000036c]:sw a2, 64(ra)<br>     |
|  39|[0x8000229c]<br>0xFFFFFB00|- rs1_val == -5<br>                                                                                                                                                                                                                               |[0x80000378]:sll a2, a0, a1<br> [0x8000037c]:sw a2, 68(ra)<br>     |
|  40|[0x800022a0]<br>0x80000000|- rs1_val == -9<br>                                                                                                                                                                                                                               |[0x80000388]:sll a2, a0, a1<br> [0x8000038c]:sw a2, 72(ra)<br>     |
|  41|[0x800022a4]<br>0xFFFFFDE0|- rs1_val == -17<br>                                                                                                                                                                                                                              |[0x80000398]:sll a2, a0, a1<br> [0x8000039c]:sw a2, 76(ra)<br>     |
|  42|[0x800022a8]<br>0xC0000000|- rs1_val == -33<br>                                                                                                                                                                                                                              |[0x800003a8]:sll a2, a0, a1<br> [0x800003ac]:sw a2, 80(ra)<br>     |
|  43|[0x800022ac]<br>0xFFFFFFBF|- rs1_val == -65<br>                                                                                                                                                                                                                              |[0x800003b8]:sll a2, a0, a1<br> [0x800003bc]:sw a2, 84(ra)<br>     |
|  44|[0x800022b0]<br>0xFFFFF7F0|- rs1_val == -129<br>                                                                                                                                                                                                                             |[0x800003c8]:sll a2, a0, a1<br> [0x800003cc]:sw a2, 88(ra)<br>     |
|  45|[0x800022b4]<br>0x7F800000|- rs1_val == -257<br>                                                                                                                                                                                                                             |[0x800003d8]:sll a2, a0, a1<br> [0x800003dc]:sw a2, 92(ra)<br>     |
|  46|[0x800022b8]<br>0xFFFF7FC0|- rs1_val == -513<br>                                                                                                                                                                                                                             |[0x800003e8]:sll a2, a0, a1<br> [0x800003ec]:sw a2, 96(ra)<br>     |
|  47|[0x800022bc]<br>0xF8000000|- rs1_val == -1025<br>                                                                                                                                                                                                                            |[0x800003f8]:sll a2, a0, a1<br> [0x800003fc]:sw a2, 100(ra)<br>    |
|  48|[0x800022c0]<br>0xFFDFFC00|- rs1_val == -2049<br> - rs2_val == 10<br>                                                                                                                                                                                                        |[0x8000040c]:sll a2, a0, a1<br> [0x80000410]:sw a2, 104(ra)<br>    |
|  49|[0x800022c4]<br>0xFFFDFFE0|- rs1_val == -4097<br>                                                                                                                                                                                                                            |[0x80000420]:sll a2, a0, a1<br> [0x80000424]:sw a2, 108(ra)<br>    |
|  50|[0x800022c8]<br>0xFFFDFFF0|- rs1_val == -8193<br>                                                                                                                                                                                                                            |[0x80000434]:sll a2, a0, a1<br> [0x80000438]:sw a2, 112(ra)<br>    |
|  51|[0x800022cc]<br>0xEFFFC000|- rs1_val == -16385<br>                                                                                                                                                                                                                           |[0x80000448]:sll a2, a0, a1<br> [0x8000044c]:sw a2, 116(ra)<br>    |
|  52|[0x800022d0]<br>0xFEFFFE00|- rs1_val == -32769<br>                                                                                                                                                                                                                           |[0x8000045c]:sll a2, a0, a1<br> [0x80000460]:sw a2, 120(ra)<br>    |
|  53|[0x800022d4]<br>0xF7FFF800|- rs1_val == -65537<br>                                                                                                                                                                                                                           |[0x80000470]:sll a2, a0, a1<br> [0x80000474]:sw a2, 124(ra)<br>    |
|  54|[0x800022d8]<br>0xFFFC0000|- rs1_val == -131073<br>                                                                                                                                                                                                                          |[0x80000484]:sll a2, a0, a1<br> [0x80000488]:sw a2, 128(ra)<br>    |
|  55|[0x800022dc]<br>0xFFDFFFF8|- rs1_val == -262145<br>                                                                                                                                                                                                                          |[0x80000498]:sll a2, a0, a1<br> [0x8000049c]:sw a2, 132(ra)<br>    |
|  56|[0x800022e0]<br>0xFFDFFFFC|- rs1_val == -524289<br>                                                                                                                                                                                                                          |[0x800004ac]:sll a2, a0, a1<br> [0x800004b0]:sw a2, 136(ra)<br>    |
|  57|[0x800022e4]<br>0xFBFFFFC0|- rs1_val == -1048577<br>                                                                                                                                                                                                                         |[0x800004c0]:sll a2, a0, a1<br> [0x800004c4]:sw a2, 140(ra)<br>    |
|  58|[0x800022e8]<br>0xFF800000|- rs1_val == -8388609<br>                                                                                                                                                                                                                         |[0x800004d4]:sll a2, a0, a1<br> [0x800004d8]:sw a2, 144(ra)<br>    |
|  59|[0x800022ec]<br>0xFBFFFFFC|- rs1_val == -16777217<br>                                                                                                                                                                                                                        |[0x800004e8]:sll a2, a0, a1<br> [0x800004ec]:sw a2, 148(ra)<br>    |
|  60|[0x800022f0]<br>0xFFFFF800|- rs1_val == -33554433<br>                                                                                                                                                                                                                        |[0x800004fc]:sll a2, a0, a1<br> [0x80000500]:sw a2, 152(ra)<br>    |
|  61|[0x800022f4]<br>0xE0000000|- rs1_val == -67108865<br>                                                                                                                                                                                                                        |[0x80000510]:sll a2, a0, a1<br> [0x80000514]:sw a2, 156(ra)<br>    |
|  62|[0x800022f8]<br>0xFFFFFF80|- rs1_val == -134217729<br>                                                                                                                                                                                                                       |[0x80000524]:sll a2, a0, a1<br> [0x80000528]:sw a2, 160(ra)<br>    |
|  63|[0x800022fc]<br>0xFFFFFFC0|- rs1_val == -268435457<br>                                                                                                                                                                                                                       |[0x80000538]:sll a2, a0, a1<br> [0x8000053c]:sw a2, 164(ra)<br>    |
|  64|[0x80002300]<br>0xFFFFFFF8|- rs1_val == -536870913<br>                                                                                                                                                                                                                       |[0x8000054c]:sll a2, a0, a1<br> [0x80000550]:sw a2, 168(ra)<br>    |
|  65|[0x80002304]<br>0xFFFFFFF0|- rs1_val == -1073741825<br>                                                                                                                                                                                                                      |[0x80000560]:sll a2, a0, a1<br> [0x80000564]:sw a2, 172(ra)<br>    |
|  66|[0x80002308]<br>0x55540000|- rs1_val == 1431655765<br> - rs1_val==1431655765<br>                                                                                                                                                                                             |[0x80000574]:sll a2, a0, a1<br> [0x80000578]:sw a2, 176(ra)<br>    |
|  67|[0x8000230c]<br>0xAAAAAA80|- rs1_val == -1431655766<br> - rs1_val==-1431655766<br>                                                                                                                                                                                           |[0x80000588]:sll a2, a0, a1<br> [0x8000058c]:sw a2, 180(ra)<br>    |
|  68|[0x80002310]<br>0x00000300|- rs1_val==3<br>                                                                                                                                                                                                                                  |[0x80000598]:sll a2, a0, a1<br> [0x8000059c]:sw a2, 184(ra)<br>    |
|  69|[0x80002314]<br>0x00000A00|- rs1_val==5<br>                                                                                                                                                                                                                                  |[0x800005a8]:sll a2, a0, a1<br> [0x800005ac]:sw a2, 188(ra)<br>    |
|  70|[0x80002318]<br>0x66666000|- rs1_val==858993459<br>                                                                                                                                                                                                                          |[0x800005bc]:sll a2, a0, a1<br> [0x800005c0]:sw a2, 192(ra)<br>    |
|  71|[0x8000231c]<br>0x66666660|- rs1_val==1717986918<br>                                                                                                                                                                                                                         |[0x800005d0]:sll a2, a0, a1<br> [0x800005d4]:sw a2, 196(ra)<br>    |
|  72|[0x80002320]<br>0x0005A828|- rs1_val==46341<br>                                                                                                                                                                                                                              |[0x800005e4]:sll a2, a0, a1<br> [0x800005e8]:sw a2, 200(ra)<br>    |
|  73|[0x80002324]<br>0xFFA57E00|- rs1_val==-46340<br>                                                                                                                                                                                                                             |[0x800005f8]:sll a2, a0, a1<br> [0x800005fc]:sw a2, 204(ra)<br>    |
|  74|[0x80002328]<br>0x0016A080|- rs1_val==46340<br>                                                                                                                                                                                                                              |[0x8000060c]:sll a2, a0, a1<br> [0x80000610]:sw a2, 208(ra)<br>    |
|  75|[0x8000232c]<br>0x00000000|- rs1_val==1431655764<br>                                                                                                                                                                                                                         |[0x80000620]:sll a2, a0, a1<br> [0x80000624]:sw a2, 212(ra)<br>    |
|  76|[0x80002330]<br>0xFDFFFFF8|- rs1_val == -4194305<br>                                                                                                                                                                                                                         |[0x80000634]:sll a2, a0, a1<br> [0x80000638]:sw a2, 216(ra)<br>    |
|  77|[0x80002334]<br>0x99999C00|- rs1_val==1717986919<br>                                                                                                                                                                                                                         |[0x80000648]:sll a2, a0, a1<br> [0x8000064c]:sw a2, 220(ra)<br>    |
|  78|[0x80002338]<br>0x66664000|- rs1_val==858993458<br>                                                                                                                                                                                                                          |[0x8000065c]:sll a2, a0, a1<br> [0x80000660]:sw a2, 224(ra)<br>    |
|  79|[0x8000233c]<br>0x33280000|- rs1_val==1717986917<br>                                                                                                                                                                                                                         |[0x80000670]:sll a2, a0, a1<br> [0x80000674]:sw a2, 228(ra)<br>    |
|  80|[0x80002340]<br>0x0002D40C|- rs1_val==46339<br>                                                                                                                                                                                                                              |[0x80000684]:sll a2, a0, a1<br> [0x80000688]:sw a2, 232(ra)<br>    |
|  81|[0x80002344]<br>0x55555580|- rs1_val==1431655766<br>                                                                                                                                                                                                                         |[0x80000698]:sll a2, a0, a1<br> [0x8000069c]:sw a2, 236(ra)<br>    |
|  82|[0x80002348]<br>0x55580000|- rs1_val==-1431655765<br>                                                                                                                                                                                                                        |[0x800006ac]:sll a2, a0, a1<br> [0x800006b0]:sw a2, 240(ra)<br>    |
|  83|[0x8000234c]<br>0x00001800|- rs1_val==6<br>                                                                                                                                                                                                                                  |[0x800006bc]:sll a2, a0, a1<br> [0x800006c0]:sw a2, 244(ra)<br>    |
|  84|[0x80002350]<br>0xCCCCCCD0|- rs1_val==858993460<br>                                                                                                                                                                                                                          |[0x800006d0]:sll a2, a0, a1<br> [0x800006d4]:sw a2, 248(ra)<br>    |
|  85|[0x80002354]<br>0xF7FFFFC0|- rs1_val == -2097153<br>                                                                                                                                                                                                                         |[0x800006e4]:sll a2, a0, a1<br> [0x800006e8]:sw a2, 252(ra)<br>    |
|  86|[0x80002358]<br>0xFFFD2BF4|- rs1_val==-46339<br>                                                                                                                                                                                                                             |[0x800006f8]:sll a2, a0, a1<br> [0x800006fc]:sw a2, 256(ra)<br>    |
|  87|[0x8000235c]<br>0x00000800|- rs1_val == 2048<br>                                                                                                                                                                                                                             |[0x8000070c]:sll a2, a0, a1<br> [0x80000710]:sw a2, 260(ra)<br>    |
