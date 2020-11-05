
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800008a0')]      |
| SIG_REGION                | [('0x80003204', '0x800033a8', '105 words')]      |
| COV_LABELS                | xor      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/xor-01.S/xor-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 102      |
| STAT1                     | 100      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000840]:xor a2, a0, a1
      [0x80000844]:sw a2, 320(ra)
 -- Signature Address: 0x80003394 Data: 0xFFFFFFFA
 -- Redundant Coverpoints hit by the op
      - opcode : xor
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000087c]:xor a2, a0, a1
      [0x80000880]:sw a2, 332(ra)
 -- Signature Address: 0x800033a0 Data: 0xFDFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : xor
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0
      - rs1_val == -33554433






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

|s.no|        signature         |                                                                                                   coverpoints                                                                                                   |                               code                                |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003210]<br>0x7FFFFFF8|- opcode : xor<br> - rs1 : x29<br> - rs2 : x22<br> - rd : x29<br> - rs1 == rd != rs2<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val != rs2_val<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br> |[0x80000108]:xor t4, t4, s6<br> [0x8000010c]:sw t4, 0(fp)<br>      |
|   2|[0x80003214]<br>0x00000000|- rs1 : x15<br> - rs2 : x15<br> - rd : x17<br> - rs1 == rs2 != rd<br> - rs1_val == rs2_val<br>                                                                                                                   |[0x80000118]:xor a7, a5, a5<br> [0x8000011c]:sw a7, 4(fp)<br>      |
|   3|[0x80003218]<br>0x00000000|- rs1 : x21<br> - rs2 : x21<br> - rd : x21<br> - rs1 == rs2 == rd<br> - rs2_val == -1073741825<br> - rs1_val == -1073741825<br>                                                                                  |[0x80000130]:xor s5, s5, s5<br> [0x80000134]:sw s5, 8(fp)<br>      |
|   4|[0x8000321c]<br>0xFFFFEFFE|- rs1 : x26<br> - rs2 : x5<br> - rd : x5<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val < 0<br> - rs1_val == 1<br> - rs2_val == -4097<br>                                                                  |[0x80000144]:xor t0, s10, t0<br> [0x80000148]:sw t0, 12(fp)<br>    |
|   5|[0x80003220]<br>0xFFFFFFFF|- rs1 : x25<br> - rs2 : x0<br> - rd : x23<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 0<br>                                                                                                   |[0x80000158]:xor s7, s9, zero<br> [0x8000015c]:sw s7, 16(fp)<br>   |
|   6|[0x80003224]<br>0x00000000|- rs1 : x10<br> - rs2 : x6<br> - rd : x0<br> - rs1_val == -33554433<br>                                                                                                                                          |[0x8000016c]:xor zero, a0, t1<br> [0x80000170]:sw zero, 20(fp)<br> |
|   7|[0x80003228]<br>0x80000080|- rs1 : x19<br> - rs2 : x2<br> - rd : x4<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br> - rs1_val == -129<br>                                                |[0x80000180]:xor tp, s3, sp<br> [0x80000184]:sw tp, 24(fp)<br>     |
|   8|[0x8000322c]<br>0x00004001|- rs1 : x16<br> - rs2 : x3<br> - rd : x15<br> - rs1_val > 0 and rs2_val > 0<br> - rs2_val == 1<br> - rs1_val == 16384<br>                                                                                        |[0x80000190]:xor a5, a6, gp<br> [0x80000194]:sw a5, 28(fp)<br>     |
|   9|[0x80003230]<br>0x00000000|- rs1 : x31<br> - rs2 : x7<br> - rd : x10<br> - rs2_val == -9<br> - rs1_val == -9<br>                                                                                                                            |[0x800001a0]:xor a0, t6, t2<br> [0x800001a4]:sw a0, 32(fp)<br>     |
|  10|[0x80003234]<br>0xFFFF7FFD|- rs1 : x18<br> - rs2 : x27<br> - rd : x12<br> - rs2_val == -32769<br> - rs1_val == 2<br>                                                                                                                        |[0x800001b4]:xor a2, s2, s11<br> [0x800001b8]:sw a2, 36(fp)<br>    |
|  11|[0x80003238]<br>0xFFFFFFF9|- rs1 : x1<br> - rs2 : x9<br> - rd : x14<br> - rs2_val == -3<br> - rs1_val == 4<br>                                                                                                                              |[0x800001c4]:xor a4, ra, s1<br> [0x800001c8]:sw a4, 40(fp)<br>     |
|  12|[0x8000323c]<br>0x00004008|- rs1 : x27<br> - rs2 : x19<br> - rd : x2<br> - rs2_val == 16384<br> - rs1_val == 8<br>                                                                                                                          |[0x800001d4]:xor sp, s11, s3<br> [0x800001d8]:sw sp, 44(fp)<br>    |
|  13|[0x80003240]<br>0xFFFFFDEF|- rs1 : x13<br> - rs2 : x11<br> - rd : x1<br> - rs2_val == -513<br> - rs1_val == 16<br>                                                                                                                          |[0x800001e4]:xor ra, a3, a1<br> [0x800001e8]:sw ra, 48(fp)<br>     |
|  14|[0x80003244]<br>0xFBFFFFDF|- rs1 : x22<br> - rs2 : x1<br> - rd : x6<br> - rs2_val == -67108865<br> - rs1_val == 32<br>                                                                                                                      |[0x800001f8]:xor t1, s6, ra<br> [0x800001fc]:sw t1, 52(fp)<br>     |
|  15|[0x80003248]<br>0xBFFFFFBF|- rs1 : x23<br> - rs2 : x17<br> - rd : x3<br> - rs1_val == 64<br>                                                                                                                                                |[0x8000020c]:xor gp, s7, a7<br> [0x80000210]:sw gp, 56(fp)<br>     |
|  16|[0x8000324c]<br>0xFFFBFF7F|- rs1 : x14<br> - rs2 : x24<br> - rd : x16<br> - rs2_val == -262145<br> - rs1_val == 128<br>                                                                                                                     |[0x80000220]:xor a6, a4, s8<br> [0x80000224]:sw a6, 60(fp)<br>     |
|  17|[0x80003250]<br>0xFFFFF6FF|- rs1 : x28<br> - rs2 : x14<br> - rd : x25<br> - rs2_val == -2049<br> - rs1_val == 256<br>                                                                                                                       |[0x80000234]:xor s9, t3, a4<br> [0x80000238]:sw s9, 64(fp)<br>     |
|  18|[0x80003254]<br>0xFF7FFDFF|- rs1 : x4<br> - rs2 : x23<br> - rd : x22<br> - rs2_val == -8388609<br> - rs1_val == 512<br>                                                                                                                     |[0x80000250]:xor s6, tp, s7<br> [0x80000254]:sw s6, 0(ra)<br>      |
|  19|[0x80003258]<br>0xFFFF7BFF|- rs1 : x9<br> - rs2 : x28<br> - rd : x13<br> - rs1_val == 1024<br>                                                                                                                                              |[0x80000264]:xor a3, s1, t3<br> [0x80000268]:sw a3, 4(ra)<br>      |
|  20|[0x8000325c]<br>0x00000005|- rs1 : x0<br> - rs2 : x30<br> - rd : x18<br> - rs1_val == 0<br>                                                                                                                                                 |[0x80000278]:xor s2, zero, t5<br> [0x8000027c]:sw s2, 8(ra)<br>    |
|  21|[0x80003260]<br>0xFFFFFFFF|- rs1 : x3<br> - rs2 : x12<br> - rd : x27<br> - rs1_val == 4096<br>                                                                                                                                              |[0x8000028c]:xor s11, gp, a2<br> [0x80000290]:sw s11, 12(ra)<br>   |
|  22|[0x80003264]<br>0xFFFFDEFF|- rs1 : x8<br> - rs2 : x13<br> - rd : x7<br> - rs2_val == -257<br> - rs1_val == 8192<br>                                                                                                                         |[0x8000029c]:xor t2, fp, a3<br> [0x800002a0]:sw t2, 16(ra)<br>     |
|  23|[0x80003268]<br>0xFFFF7FF8|- rs1 : x7<br> - rs2 : x29<br> - rd : x28<br> - rs1_val == 32768<br>                                                                                                                                             |[0x800002ac]:xor t3, t2, t4<br> [0x800002b0]:sw t3, 20(ra)<br>     |
|  24|[0x8000326c]<br>0x01010000|- rs1 : x30<br> - rs2 : x10<br> - rd : x9<br> - rs2_val == 16777216<br> - rs1_val == 65536<br>                                                                                                                   |[0x800002bc]:xor s1, t5, a0<br> [0x800002c0]:sw s1, 24(ra)<br>     |
|  25|[0x80003270]<br>0x01020000|- rs1 : x12<br> - rs2 : x26<br> - rd : x24<br> - rs1_val == 131072<br>                                                                                                                                           |[0x800002cc]:xor s8, a2, s10<br> [0x800002d0]:sw s8, 28(ra)<br>    |
|  26|[0x80003274]<br>0x10040000|- rs1 : x17<br> - rs2 : x31<br> - rd : x19<br> - rs2_val == 268435456<br> - rs1_val == 262144<br>                                                                                                                |[0x800002dc]:xor s3, a7, t6<br> [0x800002e0]:sw s3, 32(ra)<br>     |
|  27|[0x80003278]<br>0x7FF7FFFF|- rs1 : x5<br> - rs2 : x18<br> - rd : x20<br> - rs1_val == 524288<br>                                                                                                                                            |[0x800002f0]:xor s4, t0, s2<br> [0x800002f4]:sw s4, 36(ra)<br>     |
|  28|[0x8000327c]<br>0x00100004|- rs1 : x24<br> - rs2 : x16<br> - rd : x26<br> - rs2_val == 4<br> - rs1_val == 1048576<br>                                                                                                                       |[0x80000300]:xor s10, s8, a6<br> [0x80000304]:sw s10, 40(ra)<br>   |
|  29|[0x80003280]<br>0xFFDF7FFF|- rs1 : x6<br> - rs2 : x8<br> - rd : x31<br> - rs1_val == 2097152<br>                                                                                                                                            |[0x80000314]:xor t6, t1, fp<br> [0x80000318]:sw t6, 44(ra)<br>     |
|  30|[0x80003284]<br>0x02400000|- rs1 : x11<br> - rs2 : x4<br> - rd : x30<br> - rs2_val == 33554432<br> - rs1_val == 4194304<br>                                                                                                                 |[0x80000324]:xor t5, a1, tp<br> [0x80000328]:sw t5, 48(ra)<br>     |
|  31|[0x80003288]<br>0x00800005|- rs1 : x20<br> - rs2 : x25<br> - rd : x11<br> - rs1_val == 8388608<br>                                                                                                                                          |[0x80000334]:xor a1, s4, s9<br> [0x80000338]:sw a1, 52(ra)<br>     |
|  32|[0x8000328c]<br>0xFEFFFEFF|- rs1 : x2<br> - rs2 : x20<br> - rd : x8<br> - rs1_val == 16777216<br>                                                                                                                                           |[0x80000344]:xor fp, sp, s4<br> [0x80000348]:sw fp, 56(ra)<br>     |
|  33|[0x80003290]<br>0xFDFDFFFF|- rs2_val == -131073<br> - rs1_val == 33554432<br>                                                                                                                                                               |[0x80000358]:xor a2, a0, a1<br> [0x8000035c]:sw a2, 60(ra)<br>     |
|  34|[0x80003294]<br>0xC4000000|- rs1_val == 67108864<br>                                                                                                                                                                                        |[0x80000368]:xor a2, a0, a1<br> [0x8000036c]:sw a2, 64(ra)<br>     |
|  35|[0x80003298]<br>0x00000000|- rs2_val == 134217728<br> - rs1_val == 134217728<br>                                                                                                                                                            |[0x80000378]:xor a2, a0, a1<br> [0x8000037c]:sw a2, 68(ra)<br>     |
|  36|[0x8000329c]<br>0xCFFFFFFF|- rs2_val == -536870913<br> - rs1_val == 268435456<br>                                                                                                                                                           |[0x8000038c]:xor a2, a0, a1<br> [0x80000390]:sw a2, 72(ra)<br>     |
|  37|[0x800032a0]<br>0x20008000|- rs2_val == 32768<br> - rs1_val == 536870912<br>                                                                                                                                                                |[0x8000039c]:xor a2, a0, a1<br> [0x800003a0]:sw a2, 76(ra)<br>     |
|  38|[0x800032a4]<br>0x42000000|- rs1_val == 1073741824<br>                                                                                                                                                                                      |[0x800003ac]:xor a2, a0, a1<br> [0x800003b0]:sw a2, 80(ra)<br>     |
|  39|[0x800032a8]<br>0x01000001|- rs2_val == -16777217<br> - rs1_val == -2<br>                                                                                                                                                                   |[0x800003c0]:xor a2, a0, a1<br> [0x800003c4]:sw a2, 84(ra)<br>     |
|  40|[0x800032ac]<br>0xFBFFFFFD|- rs2_val == 67108864<br> - rs1_val == -3<br>                                                                                                                                                                    |[0x800003d0]:xor a2, a0, a1<br> [0x800003d4]:sw a2, 88(ra)<br>     |
|  41|[0x800032b0]<br>0x08000004|- rs2_val == -134217729<br> - rs1_val == -5<br>                                                                                                                                                                  |[0x800003e4]:xor a2, a0, a1<br> [0x800003e8]:sw a2, 92(ra)<br>     |
|  42|[0x800032b4]<br>0xFFFFFFFF|- rs2_val == 16<br> - rs1_val == -17<br>                                                                                                                                                                         |[0x800003f4]:xor a2, a0, a1<br> [0x800003f8]:sw a2, 96(ra)<br>     |
|  43|[0x800032b8]<br>0xFFFFFFDF|- rs1_val == -33<br>                                                                                                                                                                                             |[0x80000404]:xor a2, a0, a1<br> [0x80000408]:sw a2, 100(ra)<br>    |
|  44|[0x800032bc]<br>0x00000040|- rs1_val == -65<br>                                                                                                                                                                                             |[0x80000414]:xor a2, a0, a1<br> [0x80000418]:sw a2, 104(ra)<br>    |
|  45|[0x800032c0]<br>0xFFB7FFFF|- rs2_val == -524289<br>                                                                                                                                                                                         |[0x80000428]:xor a2, a0, a1<br> [0x8000042c]:sw a2, 108(ra)<br>    |
|  46|[0x800032c4]<br>0x00900000|- rs2_val == -1048577<br> - rs1_val == -8388609<br>                                                                                                                                                              |[0x80000440]:xor a2, a0, a1<br> [0x80000444]:sw a2, 112(ra)<br>    |
|  47|[0x800032c8]<br>0x00300000|- rs2_val == -2097153<br> - rs1_val == -1048577<br>                                                                                                                                                              |[0x80000458]:xor a2, a0, a1<br> [0x8000045c]:sw a2, 116(ra)<br>    |
|  48|[0x800032cc]<br>0xFBBFFFFF|- rs2_val == -4194305<br>                                                                                                                                                                                        |[0x8000046c]:xor a2, a0, a1<br> [0x80000470]:sw a2, 120(ra)<br>    |
|  49|[0x800032d0]<br>0x42000000|- rs2_val == -33554433<br>                                                                                                                                                                                       |[0x80000484]:xor a2, a0, a1<br> [0x80000488]:sw a2, 124(ra)<br>    |
|  50|[0x800032d4]<br>0x10080000|- rs2_val == -268435457<br> - rs1_val == -524289<br>                                                                                                                                                             |[0x8000049c]:xor a2, a0, a1<br> [0x800004a0]:sw a2, 128(ra)<br>    |
|  51|[0x800032d8]<br>0x55555551|- rs2_val == 1431655765<br>                                                                                                                                                                                      |[0x800004b0]:xor a2, a0, a1<br> [0x800004b4]:sw a2, 132(ra)<br>    |
|  52|[0x800032dc]<br>0xABAAAAAA|- rs2_val == -1431655766<br>                                                                                                                                                                                     |[0x800004c4]:xor a2, a0, a1<br> [0x800004c8]:sw a2, 136(ra)<br>    |
|  53|[0x800032e0]<br>0x00040100|- rs1_val == -257<br>                                                                                                                                                                                            |[0x800004d8]:xor a2, a0, a1<br> [0x800004dc]:sw a2, 140(ra)<br>    |
|  54|[0x800032e4]<br>0x00008200|- rs1_val == -513<br>                                                                                                                                                                                            |[0x800004ec]:xor a2, a0, a1<br> [0x800004f0]:sw a2, 144(ra)<br>    |
|  55|[0x800032e8]<br>0x00000406|- rs1_val == -1025<br>                                                                                                                                                                                           |[0x800004fc]:xor a2, a0, a1<br> [0x80000500]:sw a2, 148(ra)<br>    |
|  56|[0x800032ec]<br>0xC0000800|- rs1_val == -2049<br>                                                                                                                                                                                           |[0x80000514]:xor a2, a0, a1<br> [0x80000518]:sw a2, 152(ra)<br>    |
|  57|[0x800032f0]<br>0x00000000|- rs1_val == -4097<br>                                                                                                                                                                                           |[0x8000052c]:xor a2, a0, a1<br> [0x80000530]:sw a2, 156(ra)<br>    |
|  58|[0x800032f4]<br>0xFFFFDFF7|- rs2_val == 8<br> - rs1_val == -8193<br>                                                                                                                                                                        |[0x80000540]:xor a2, a0, a1<br> [0x80000544]:sw a2, 160(ra)<br>    |
|  59|[0x800032f8]<br>0x55551555|- rs1_val == -16385<br>                                                                                                                                                                                          |[0x80000558]:xor a2, a0, a1<br> [0x8000055c]:sw a2, 164(ra)<br>    |
|  60|[0x800032fc]<br>0xFFFF7FFD|- rs2_val == 2<br> - rs1_val == -32769<br>                                                                                                                                                                       |[0x8000056c]:xor a2, a0, a1<br> [0x80000570]:sw a2, 168(ra)<br>    |
|  61|[0x80003300]<br>0x00012000|- rs2_val == -8193<br> - rs1_val == -65537<br>                                                                                                                                                                   |[0x80000584]:xor a2, a0, a1<br> [0x80000588]:sw a2, 172(ra)<br>    |
|  62|[0x80003304]<br>0x00220000|- rs1_val == -131073<br>                                                                                                                                                                                         |[0x8000059c]:xor a2, a0, a1<br> [0x800005a0]:sw a2, 176(ra)<br>    |
|  63|[0x80003308]<br>0xFFFBFFF7|- rs1_val == -262145<br>                                                                                                                                                                                         |[0x800005b0]:xor a2, a0, a1<br> [0x800005b4]:sw a2, 180(ra)<br>    |
|  64|[0x8000330c]<br>0x3FDFFFFF|- rs1_val == -2097153<br>                                                                                                                                                                                        |[0x800005c4]:xor a2, a0, a1<br> [0x800005c8]:sw a2, 184(ra)<br>    |
|  65|[0x80003310]<br>0xFFBFFBFF|- rs2_val == 1024<br> - rs1_val == -4194305<br>                                                                                                                                                                  |[0x800005d8]:xor a2, a0, a1<br> [0x800005dc]:sw a2, 188(ra)<br>    |
|  66|[0x80003314]<br>0x01000001|- rs2_val == -2<br> - rs1_val == -16777217<br>                                                                                                                                                                   |[0x800005ec]:xor a2, a0, a1<br> [0x800005f0]:sw a2, 192(ra)<br>    |
|  67|[0x80003318]<br>0xFBFFFFEF|- rs1_val == -67108865<br>                                                                                                                                                                                       |[0x80000600]:xor a2, a0, a1<br> [0x80000604]:sw a2, 196(ra)<br>    |
|  68|[0x8000331c]<br>0x08000020|- rs2_val == -33<br> - rs1_val == -134217729<br>                                                                                                                                                                 |[0x80000614]:xor a2, a0, a1<br> [0x80000618]:sw a2, 200(ra)<br>    |
|  69|[0x80003320]<br>0xD0000000|- rs1_val == -268435457<br>                                                                                                                                                                                      |[0x8000062c]:xor a2, a0, a1<br> [0x80000630]:sw a2, 204(ra)<br>    |
|  70|[0x80003324]<br>0x21000000|- rs1_val == -536870913<br>                                                                                                                                                                                      |[0x80000644]:xor a2, a0, a1<br> [0x80000648]:sw a2, 208(ra)<br>    |
|  71|[0x80003328]<br>0xAAAAAAAA|- rs1_val == 1431655765<br>                                                                                                                                                                                      |[0x80000658]:xor a2, a0, a1<br> [0x8000065c]:sw a2, 212(ra)<br>    |
|  72|[0x8000332c]<br>0xA8AAAAAA|- rs1_val == -1431655766<br>                                                                                                                                                                                     |[0x8000066c]:xor a2, a0, a1<br> [0x80000670]:sw a2, 216(ra)<br>    |
|  73|[0x80003330]<br>0x00100020|- rs2_val == 32<br>                                                                                                                                                                                              |[0x8000067c]:xor a2, a0, a1<br> [0x80000680]:sw a2, 220(ra)<br>    |
|  74|[0x80003334]<br>0x10000040|- rs2_val == 64<br>                                                                                                                                                                                              |[0x8000068c]:xor a2, a0, a1<br> [0x80000690]:sw a2, 224(ra)<br>    |
|  75|[0x80003338]<br>0xFFFFEF7F|- rs2_val == 128<br>                                                                                                                                                                                             |[0x800006a0]:xor a2, a0, a1<br> [0x800006a4]:sw a2, 228(ra)<br>    |
|  76|[0x8000333c]<br>0xFFFFFEFF|- rs2_val == 256<br>                                                                                                                                                                                             |[0x800006b0]:xor a2, a0, a1<br> [0x800006b4]:sw a2, 232(ra)<br>    |
|  77|[0x80003340]<br>0xFFFFFDBF|- rs2_val == 512<br>                                                                                                                                                                                             |[0x800006c0]:xor a2, a0, a1<br> [0x800006c4]:sw a2, 236(ra)<br>    |
|  78|[0x80003344]<br>0xFFFDF7FF|- rs2_val == 2048<br>                                                                                                                                                                                            |[0x800006d8]:xor a2, a0, a1<br> [0x800006dc]:sw a2, 240(ra)<br>    |
|  79|[0x80003348]<br>0xFFFFAFFF|- rs2_val == 4096<br>                                                                                                                                                                                            |[0x800006ec]:xor a2, a0, a1<br> [0x800006f0]:sw a2, 244(ra)<br>    |
|  80|[0x8000334c]<br>0xFFEFDFFF|- rs2_val == 8192<br>                                                                                                                                                                                            |[0x80000700]:xor a2, a0, a1<br> [0x80000704]:sw a2, 248(ra)<br>    |
|  81|[0x80003350]<br>0xFFFEDFFF|- rs2_val == 65536<br>                                                                                                                                                                                           |[0x80000714]:xor a2, a0, a1<br> [0x80000718]:sw a2, 252(ra)<br>    |
|  82|[0x80003354]<br>0xFFFDFFFB|- rs2_val == 131072<br>                                                                                                                                                                                          |[0x80000724]:xor a2, a0, a1<br> [0x80000728]:sw a2, 256(ra)<br>    |
|  83|[0x80003358]<br>0x000C0000|- rs2_val == 262144<br>                                                                                                                                                                                          |[0x80000734]:xor a2, a0, a1<br> [0x80000738]:sw a2, 260(ra)<br>    |
|  84|[0x8000335c]<br>0x00080008|- rs2_val == 524288<br>                                                                                                                                                                                          |[0x80000744]:xor a2, a0, a1<br> [0x80000748]:sw a2, 264(ra)<br>    |
|  85|[0x80003360]<br>0xFFE7FFFF|- rs2_val == 1048576<br>                                                                                                                                                                                         |[0x80000758]:xor a2, a0, a1<br> [0x8000075c]:sw a2, 268(ra)<br>    |
|  86|[0x80003364]<br>0xFBDFFFFF|- rs2_val == 2097152<br>                                                                                                                                                                                         |[0x8000076c]:xor a2, a0, a1<br> [0x80000770]:sw a2, 272(ra)<br>    |
|  87|[0x80003368]<br>0x55155555|- rs2_val == 4194304<br>                                                                                                                                                                                         |[0x80000780]:xor a2, a0, a1<br> [0x80000784]:sw a2, 276(ra)<br>    |
|  88|[0x8000336c]<br>0xFE7FFFFF|- rs2_val == 8388608<br>                                                                                                                                                                                         |[0x80000794]:xor a2, a0, a1<br> [0x80000798]:sw a2, 280(ra)<br>    |
|  89|[0x80003370]<br>0x30000000|- rs2_val == 536870912<br>                                                                                                                                                                                       |[0x800007a4]:xor a2, a0, a1<br> [0x800007a8]:sw a2, 284(ra)<br>    |
|  90|[0x80003374]<br>0x40000004|- rs2_val == 1073741824<br>                                                                                                                                                                                      |[0x800007b4]:xor a2, a0, a1<br> [0x800007b8]:sw a2, 288(ra)<br>    |
|  91|[0x80003378]<br>0x00000005|- rs2_val == -5<br>                                                                                                                                                                                              |[0x800007c4]:xor a2, a0, a1<br> [0x800007c8]:sw a2, 292(ra)<br>    |
|  92|[0x8000337c]<br>0x7FFFFFEF|- rs2_val == -17<br>                                                                                                                                                                                             |[0x800007d4]:xor a2, a0, a1<br> [0x800007d8]:sw a2, 296(ra)<br>    |
|  93|[0x80003380]<br>0x00000040|- rs2_val == -65<br>                                                                                                                                                                                             |[0x800007e4]:xor a2, a0, a1<br> [0x800007e8]:sw a2, 300(ra)<br>    |
|  94|[0x80003384]<br>0x00000409|- rs2_val == -1025<br>                                                                                                                                                                                           |[0x800007f4]:xor a2, a0, a1<br> [0x800007f8]:sw a2, 304(ra)<br>    |
|  95|[0x80003388]<br>0xEFFFBFFF|- rs2_val == -16385<br>                                                                                                                                                                                          |[0x80000808]:xor a2, a0, a1<br> [0x8000080c]:sw a2, 308(ra)<br>    |
|  96|[0x8000338c]<br>0x40000080|- rs2_val == -129<br>                                                                                                                                                                                            |[0x8000081c]:xor a2, a0, a1<br> [0x80000820]:sw a2, 312(ra)<br>    |
|  97|[0x80003390]<br>0xFFFEFFF8|- rs2_val == -65537<br>                                                                                                                                                                                          |[0x80000830]:xor a2, a0, a1<br> [0x80000834]:sw a2, 316(ra)<br>    |
|  98|[0x80003398]<br>0xC0000000|- rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                                                                                                                     |[0x80000858]:xor a2, a0, a1<br> [0x8000085c]:sw a2, 324(ra)<br>    |
|  99|[0x8000339c]<br>0x7FFFFFFF|- rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br>                                                                                                                                                     |[0x80000868]:xor a2, a0, a1<br> [0x8000086c]:sw a2, 328(ra)<br>    |
| 100|[0x800033a4]<br>0x00000805|- rs1_val == 2048<br>                                                                                                                                                                                            |[0x80000890]:xor a2, a0, a1<br> [0x80000894]:sw a2, 336(ra)<br>    |
