
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
| SIG_REGION                | [('0x80002010', '0x80002180', '92 words')]      |
| COV_LABELS                | sra      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sra-01.S/sra-01.S    |
| Total Number of coverpoints| 211     |
| Total Coverpoints Hit     | 211      |
| Total Signature Updates   | 90      |
| STAT1                     | 86      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006fc]:sra a2, a0, a1
      [0x80000700]:sw a2, 260(ra)
 -- Signature Address: 0x80002164 Data: 0x00000080
 -- Redundant Coverpoints hit by the op
      - opcode : sra
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 33554432




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000710]:sra a2, a0, a1
      [0x80000714]:sw a2, 264(ra)
 -- Signature Address: 0x80002168 Data: 0xFFFFF7FF
 -- Redundant Coverpoints hit by the op
      - opcode : sra
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val == 0
      - rs1_val == -2049




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000720]:sra a2, a0, a1
      [0x80000724]:sw a2, 268(ra)
 -- Signature Address: 0x8000216c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : sra
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 4
      - rs1_val==4




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000730]:sra a2, a0, a1
      [0x80000734]:sw a2, 272(ra)
 -- Signature Address: 0x80002170 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : sra
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 128
      - rs2_val == 8






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

|s.no|        signature         |                                                                                                                           coverpoints                                                                                                                            |                               code                                |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80002010]<br>0xFF800000|- opcode : sra<br> - rs1 : x16<br> - rs2 : x27<br> - rd : x27<br> - rs2 == rd != rs1<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -2147483648<br> - rs2_val == 8<br> |[0x80000108]:sra s11, a6, s11<br> [0x8000010c]:sw s11, 0(s4)<br>   |
|   2|[0x80002014]<br>0x02000000|- rs1 : x12<br> - rs2 : x12<br> - rd : x16<br> - rs1 == rs2 != rd<br> - rs1_val == 33554432<br>                                                                                                                                                                   |[0x80000118]:sra a6, a2, a2<br> [0x8000011c]:sw a6, 4(s4)<br>      |
|   3|[0x80002018]<br>0xFFFFFFFF|- rs1 : x1<br> - rs2 : x1<br> - rd : x1<br> - rs1 == rs2 == rd<br> - rs1_val == -2049<br>                                                                                                                                                                         |[0x80000130]:sra ra, ra, ra<br> [0x80000134]:sw ra, 8(s4)<br>      |
|   4|[0x8000201c]<br>0x33333333|- rs1 : x13<br> - rs2 : x19<br> - rd : x13<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val==858993459<br>                                                                                                                                 |[0x80000144]:sra a3, a3, s3<br> [0x80000148]:sw a3, 12(s4)<br>     |
|   5|[0x80002020]<br>0x00000000|- rs1 : x28<br> - rs2 : x2<br> - rd : x8<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br> - rs1_val==6<br>                                      |[0x80000154]:sra fp, t3, sp<br> [0x80000158]:sw fp, 16(s4)<br>     |
|   6|[0x80002024]<br>0x00000000|- rs1 : x26<br> - rs2 : x31<br> - rd : x19<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val==0<br>                                                                                                                                            |[0x80000164]:sra s3, s10, t6<br> [0x80000168]:sw s3, 20(s4)<br>    |
|   7|[0x80002028]<br>0x00001FFF|- rs1 : x14<br> - rs2 : x28<br> - rd : x29<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 2147483647<br>                                                                                                                   |[0x80000178]:sra t4, a4, t3<br> [0x8000017c]:sw t4, 24(s4)<br>     |
|   8|[0x8000202c]<br>0x00000000|- rs1 : x10<br> - rs2 : x26<br> - rd : x12<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br> - rs2_val == 2<br>                                                                                                                       |[0x80000188]:sra a2, a0, s10<br> [0x8000018c]:sw a2, 28(s4)<br>    |
|   9|[0x80002030]<br>0x00000000|- rs1 : x30<br> - rs2 : x16<br> - rd : x15<br> - rs1_val == 2<br> - rs1_val==2<br> - rs2_val == 4<br>                                                                                                                                                             |[0x80000198]:sra a5, t5, a6<br> [0x8000019c]:sw a5, 32(s4)<br>     |
|  10|[0x80002034]<br>0x00000004|- rs1 : x24<br> - rs2 : x0<br> - rd : x6<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                                                                                                                                  |[0x800001a8]:sra t1, s8, zero<br> [0x800001ac]:sw t1, 36(s4)<br>   |
|  11|[0x80002038]<br>0x00000000|- rs1 : x21<br> - rs2 : x15<br> - rd : x3<br> - rs1_val == 8<br> - rs2_val == 10<br>                                                                                                                                                                              |[0x800001b8]:sra gp, s5, a5<br> [0x800001bc]:sw gp, 40(s4)<br>     |
|  12|[0x8000203c]<br>0x00000010|- rs1 : x15<br> - rs2 : x30<br> - rd : x10<br> - rs1_val == 16<br>                                                                                                                                                                                                |[0x800001c8]:sra a0, a5, t5<br> [0x800001cc]:sw a0, 44(s4)<br>     |
|  13|[0x80002040]<br>0x00000004|- rs1 : x18<br> - rs2 : x4<br> - rd : x22<br> - rs1_val == 32<br>                                                                                                                                                                                                 |[0x800001d8]:sra s6, s2, tp<br> [0x800001dc]:sw s6, 48(s4)<br>     |
|  14|[0x80002044]<br>0x00000000|- rs1 : x19<br> - rs2 : x17<br> - rd : x11<br> - rs1_val == 64<br> - rs2_val == 23<br>                                                                                                                                                                            |[0x800001e8]:sra a1, s3, a7<br> [0x800001ec]:sw a1, 52(s4)<br>     |
|  15|[0x80002048]<br>0x00000000|- rs1 : x5<br> - rs2 : x14<br> - rd : x0<br> - rs1_val == 128<br>                                                                                                                                                                                                 |[0x800001f8]:sra zero, t0, a4<br> [0x800001fc]:sw zero, 56(s4)<br> |
|  16|[0x8000204c]<br>0x00000010|- rs1 : x6<br> - rs2 : x24<br> - rd : x5<br> - rs1_val == 256<br>                                                                                                                                                                                                 |[0x80000208]:sra t0, t1, s8<br> [0x8000020c]:sw t0, 60(s4)<br>     |
|  17|[0x80002050]<br>0x00000000|- rs1 : x7<br> - rs2 : x18<br> - rd : x31<br> - rs1_val == 512<br>                                                                                                                                                                                                |[0x80000218]:sra t6, t2, s2<br> [0x8000021c]:sw t6, 64(s4)<br>     |
|  18|[0x80002054]<br>0x00000000|- rs1 : x31<br> - rs2 : x21<br> - rd : x30<br> - rs1_val == 1024<br> - rs2_val == 16<br>                                                                                                                                                                          |[0x80000228]:sra t5, t6, s5<br> [0x8000022c]:sw t5, 68(s4)<br>     |
|  19|[0x80002058]<br>0x00000000|- rs1 : x4<br> - rs2 : x11<br> - rd : x2<br> - rs1_val == 2048<br>                                                                                                                                                                                                |[0x8000023c]:sra sp, tp, a1<br> [0x80000240]:sw sp, 72(s4)<br>     |
|  20|[0x8000205c]<br>0x00000400|- rs1 : x22<br> - rs2 : x25<br> - rd : x9<br> - rs1_val == 4096<br>                                                                                                                                                                                               |[0x8000024c]:sra s1, s6, s9<br> [0x80000250]:sw s1, 76(s4)<br>     |
|  21|[0x80002060]<br>0x00000000|- rs1 : x23<br> - rs2 : x13<br> - rd : x14<br> - rs1_val == 8192<br>                                                                                                                                                                                              |[0x80000264]:sra a4, s7, a3<br> [0x80000268]:sw a4, 0(ra)<br>      |
|  22|[0x80002064]<br>0x00000010|- rs1 : x8<br> - rs2 : x29<br> - rd : x28<br> - rs1_val == 16384<br>                                                                                                                                                                                              |[0x80000274]:sra t3, fp, t4<br> [0x80000278]:sw t3, 4(ra)<br>      |
|  23|[0x80002068]<br>0x00000000|- rs1 : x17<br> - rs2 : x8<br> - rd : x26<br> - rs1_val == 32768<br>                                                                                                                                                                                              |[0x80000284]:sra s10, a7, fp<br> [0x80000288]:sw s10, 8(ra)<br>    |
|  24|[0x8000206c]<br>0x00000001|- rs1 : x29<br> - rs2 : x3<br> - rd : x23<br> - rs1_val == 65536<br>                                                                                                                                                                                              |[0x80000294]:sra s7, t4, gp<br> [0x80000298]:sw s7, 12(ra)<br>     |
|  25|[0x80002070]<br>0x00020000|- rs1 : x9<br> - rs2 : x5<br> - rd : x7<br> - rs1_val == 131072<br>                                                                                                                                                                                               |[0x800002a4]:sra t2, s1, t0<br> [0x800002a8]:sw t2, 16(ra)<br>     |
|  26|[0x80002074]<br>0x00000400|- rs1 : x20<br> - rs2 : x7<br> - rd : x24<br> - rs1_val == 262144<br>                                                                                                                                                                                             |[0x800002b4]:sra s8, s4, t2<br> [0x800002b8]:sw s8, 20(ra)<br>     |
|  27|[0x80002078]<br>0x00000800|- rs1 : x25<br> - rs2 : x10<br> - rd : x17<br> - rs1_val == 524288<br>                                                                                                                                                                                            |[0x800002c4]:sra a7, s9, a0<br> [0x800002c8]:sw a7, 24(ra)<br>     |
|  28|[0x8000207c]<br>0x00000000|- rs1 : x27<br> - rs2 : x22<br> - rd : x20<br> - rs1_val == 1048576<br> - rs2_val == 27<br>                                                                                                                                                                       |[0x800002d4]:sra s4, s11, s6<br> [0x800002d8]:sw s4, 28(ra)<br>    |
|  29|[0x80002080]<br>0x00000400|- rs1 : x3<br> - rs2 : x6<br> - rd : x25<br> - rs1_val == 2097152<br>                                                                                                                                                                                             |[0x800002e4]:sra s9, gp, t1<br> [0x800002e8]:sw s9, 32(ra)<br>     |
|  30|[0x80002084]<br>0x00000000|- rs1 : x0<br> - rs2 : x23<br> - rd : x4<br>                                                                                                                                                                                                                      |[0x800002f4]:sra tp, zero, s7<br> [0x800002f8]:sw tp, 36(ra)<br>   |
|  31|[0x80002088]<br>0x00000000|- rs1 : x2<br> - rs2 : x20<br> - rd : x18<br> - rs1_val == 8388608<br>                                                                                                                                                                                            |[0x80000304]:sra s2, sp, s4<br> [0x80000308]:sw s2, 40(ra)<br>     |
|  32|[0x8000208c]<br>0x00002000|- rs1 : x11<br> - rs2 : x9<br> - rd : x21<br> - rs1_val == 16777216<br>                                                                                                                                                                                           |[0x80000314]:sra s5, a1, s1<br> [0x80000318]:sw s5, 44(ra)<br>     |
|  33|[0x80002090]<br>0x00004000|- rs1_val == 67108864<br>                                                                                                                                                                                                                                         |[0x80000324]:sra a2, a0, a1<br> [0x80000328]:sw a2, 48(ra)<br>     |
|  34|[0x80002094]<br>0x00800000|- rs1_val == 134217728<br>                                                                                                                                                                                                                                        |[0x80000334]:sra a2, a0, a1<br> [0x80000338]:sw a2, 52(ra)<br>     |
|  35|[0x80002098]<br>0x00020000|- rs1_val == 268435456<br>                                                                                                                                                                                                                                        |[0x80000344]:sra a2, a0, a1<br> [0x80000348]:sw a2, 56(ra)<br>     |
|  36|[0x8000209c]<br>0x00080000|- rs1_val == 536870912<br>                                                                                                                                                                                                                                        |[0x80000354]:sra a2, a0, a1<br> [0x80000358]:sw a2, 60(ra)<br>     |
|  37|[0x800020a0]<br>0x00008000|- rs1_val == 1073741824<br> - rs2_val == 15<br>                                                                                                                                                                                                                   |[0x80000364]:sra a2, a0, a1<br> [0x80000368]:sw a2, 64(ra)<br>     |
|  38|[0x800020a4]<br>0xFFFFFFFF|- rs1_val == -2<br>                                                                                                                                                                                                                                               |[0x80000374]:sra a2, a0, a1<br> [0x80000378]:sw a2, 68(ra)<br>     |
|  39|[0x800020a8]<br>0xFFFFFFFF|- rs1_val == -3<br>                                                                                                                                                                                                                                               |[0x80000384]:sra a2, a0, a1<br> [0x80000388]:sw a2, 72(ra)<br>     |
|  40|[0x800020ac]<br>0xFFFFFFFF|- rs1_val == -5<br>                                                                                                                                                                                                                                               |[0x80000394]:sra a2, a0, a1<br> [0x80000398]:sw a2, 76(ra)<br>     |
|  41|[0x800020b0]<br>0xFFFFFFFF|- rs1_val == -9<br>                                                                                                                                                                                                                                               |[0x800003a4]:sra a2, a0, a1<br> [0x800003a8]:sw a2, 80(ra)<br>     |
|  42|[0x800020b4]<br>0xFFFFFFFF|- rs1_val == -17<br> - rs2_val == 29<br>                                                                                                                                                                                                                          |[0x800003b4]:sra a2, a0, a1<br> [0x800003b8]:sw a2, 84(ra)<br>     |
|  43|[0x800020b8]<br>0xFFFFFFFF|- rs1_val == -33<br>                                                                                                                                                                                                                                              |[0x800003c4]:sra a2, a0, a1<br> [0x800003c8]:sw a2, 88(ra)<br>     |
|  44|[0x800020bc]<br>0xFFFFFFFF|- rs1_val == -65<br>                                                                                                                                                                                                                                              |[0x800003d4]:sra a2, a0, a1<br> [0x800003d8]:sw a2, 92(ra)<br>     |
|  45|[0x800020c0]<br>0xFFFFFFFF|- rs1_val == -129<br>                                                                                                                                                                                                                                             |[0x800003e4]:sra a2, a0, a1<br> [0x800003e8]:sw a2, 96(ra)<br>     |
|  46|[0x800020c4]<br>0xFFFFFFFF|- rs1_val == -257<br>                                                                                                                                                                                                                                             |[0x800003f4]:sra a2, a0, a1<br> [0x800003f8]:sw a2, 100(ra)<br>    |
|  47|[0x800020c8]<br>0xFFFFFEFF|- rs1_val == -513<br> - rs2_val == 1<br>                                                                                                                                                                                                                          |[0x80000404]:sra a2, a0, a1<br> [0x80000408]:sw a2, 104(ra)<br>    |
|  48|[0x800020cc]<br>0xFFFFFFFF|- rs1_val == -1025<br> - rs2_val == 21<br>                                                                                                                                                                                                                        |[0x80000414]:sra a2, a0, a1<br> [0x80000418]:sw a2, 108(ra)<br>    |
|  49|[0x800020d0]<br>0xFFFFFFFF|- rs1_val == -4097<br>                                                                                                                                                                                                                                            |[0x80000428]:sra a2, a0, a1<br> [0x8000042c]:sw a2, 112(ra)<br>    |
|  50|[0x800020d4]<br>0xFFFFFFDF|- rs1_val == -8193<br>                                                                                                                                                                                                                                            |[0x8000043c]:sra a2, a0, a1<br> [0x80000440]:sw a2, 116(ra)<br>    |
|  51|[0x800020d8]<br>0xFFFFFFFE|- rs1_val == -16385<br>                                                                                                                                                                                                                                           |[0x80000450]:sra a2, a0, a1<br> [0x80000454]:sw a2, 120(ra)<br>    |
|  52|[0x800020dc]<br>0xFFFFFFF7|- rs1_val == -32769<br>                                                                                                                                                                                                                                           |[0x80000464]:sra a2, a0, a1<br> [0x80000468]:sw a2, 124(ra)<br>    |
|  53|[0x800020e0]<br>0xFFFFFFFF|- rs1_val == -65537<br>                                                                                                                                                                                                                                           |[0x80000478]:sra a2, a0, a1<br> [0x8000047c]:sw a2, 128(ra)<br>    |
|  54|[0x800020e4]<br>0xFFFFFF7F|- rs1_val == -131073<br>                                                                                                                                                                                                                                          |[0x8000048c]:sra a2, a0, a1<br> [0x80000490]:sw a2, 132(ra)<br>    |
|  55|[0x800020e8]<br>0xFFFFFF7F|- rs1_val == -262145<br>                                                                                                                                                                                                                                          |[0x800004a0]:sra a2, a0, a1<br> [0x800004a4]:sw a2, 136(ra)<br>    |
|  56|[0x800020ec]<br>0xFFF7FFFF|- rs1_val < 0 and rs2_val == 0<br> - rs1_val == -524289<br>                                                                                                                                                                                                       |[0x800004b4]:sra a2, a0, a1<br> [0x800004b8]:sw a2, 140(ra)<br>    |
|  57|[0x800020f0]<br>0xFFFFFFEF|- rs1_val == -8388609<br>                                                                                                                                                                                                                                         |[0x800004c8]:sra a2, a0, a1<br> [0x800004cc]:sw a2, 144(ra)<br>    |
|  58|[0x800020f4]<br>0xFFFFEFFF|- rs1_val == -16777217<br>                                                                                                                                                                                                                                        |[0x800004dc]:sra a2, a0, a1<br> [0x800004e0]:sw a2, 148(ra)<br>    |
|  59|[0x800020f8]<br>0xFFFFFFFF|- rs1_val == -33554433<br>                                                                                                                                                                                                                                        |[0x800004f0]:sra a2, a0, a1<br> [0x800004f4]:sw a2, 152(ra)<br>    |
|  60|[0x800020fc]<br>0xFFFF7FFF|- rs1_val == -67108865<br>                                                                                                                                                                                                                                        |[0x80000504]:sra a2, a0, a1<br> [0x80000508]:sw a2, 156(ra)<br>    |
|  61|[0x80002100]<br>0xFFFDFFFF|- rs1_val == -134217729<br>                                                                                                                                                                                                                                       |[0x80000518]:sra a2, a0, a1<br> [0x8000051c]:sw a2, 160(ra)<br>    |
|  62|[0x80002104]<br>0xFEFFFFFF|- rs1_val == -268435457<br>                                                                                                                                                                                                                                       |[0x8000052c]:sra a2, a0, a1<br> [0x80000530]:sw a2, 164(ra)<br>    |
|  63|[0x80002108]<br>0xFFBFFFFF|- rs1_val == -536870913<br>                                                                                                                                                                                                                                       |[0x80000540]:sra a2, a0, a1<br> [0x80000544]:sw a2, 168(ra)<br>    |
|  64|[0x8000210c]<br>0xFDFFFFFF|- rs1_val == -1073741825<br>                                                                                                                                                                                                                                      |[0x80000554]:sra a2, a0, a1<br> [0x80000558]:sw a2, 172(ra)<br>    |
|  65|[0x80002110]<br>0x000AAAAA|- rs1_val == 1431655765<br> - rs1_val==1431655765<br>                                                                                                                                                                                                             |[0x80000568]:sra a2, a0, a1<br> [0x8000056c]:sw a2, 176(ra)<br>    |
|  66|[0x80002114]<br>0xFFFFF555|- rs1_val == -1431655766<br> - rs1_val==-1431655766<br>                                                                                                                                                                                                           |[0x8000057c]:sra a2, a0, a1<br> [0x80000580]:sw a2, 180(ra)<br>    |
|  67|[0x80002118]<br>0x00000000|- rs1_val==3<br>                                                                                                                                                                                                                                                  |[0x8000058c]:sra a2, a0, a1<br> [0x80000590]:sw a2, 184(ra)<br>    |
|  68|[0x8000211c]<br>0x00000000|- rs1_val==5<br>                                                                                                                                                                                                                                                  |[0x8000059c]:sra a2, a0, a1<br> [0x800005a0]:sw a2, 188(ra)<br>    |
|  69|[0x80002120]<br>0x00000CCC|- rs1_val==1717986918<br>                                                                                                                                                                                                                                         |[0x800005b0]:sra a2, a0, a1<br> [0x800005b4]:sw a2, 192(ra)<br>    |
|  70|[0x80002124]<br>0xFFFFA57E|- rs1_val==-46340<br>                                                                                                                                                                                                                                             |[0x800005c4]:sra a2, a0, a1<br> [0x800005c8]:sw a2, 196(ra)<br>    |
|  71|[0x80002128]<br>0x000000B5|- rs1_val==46341<br>                                                                                                                                                                                                                                              |[0x800005d8]:sra a2, a0, a1<br> [0x800005dc]:sw a2, 200(ra)<br>    |
|  72|[0x8000212c]<br>0x00000000|- rs2_val == 30<br>                                                                                                                                                                                                                                               |[0x800005e8]:sra a2, a0, a1<br> [0x800005ec]:sw a2, 204(ra)<br>    |
|  73|[0x80002130]<br>0x00000002|- rs1_val==46340<br>                                                                                                                                                                                                                                              |[0x800005fc]:sra a2, a0, a1<br> [0x80000600]:sw a2, 208(ra)<br>    |
|  74|[0x80002134]<br>0x00055555|- rs1_val==1431655764<br>                                                                                                                                                                                                                                         |[0x80000610]:sra a2, a0, a1<br> [0x80000614]:sw a2, 212(ra)<br>    |
|  75|[0x80002138]<br>0xFFFFFFF7|- rs1_val == -4194305<br>                                                                                                                                                                                                                                         |[0x80000624]:sra a2, a0, a1<br> [0x80000628]:sw a2, 216(ra)<br>    |
|  76|[0x8000213c]<br>0x00666666|- rs1_val==858993460<br>                                                                                                                                                                                                                                          |[0x80000638]:sra a2, a0, a1<br> [0x8000063c]:sw a2, 220(ra)<br>    |
|  77|[0x80002140]<br>0xFFF7FFFF|- rs1_val == -2097153<br>                                                                                                                                                                                                                                         |[0x8000064c]:sra a2, a0, a1<br> [0x80000650]:sw a2, 224(ra)<br>    |
|  78|[0x80002144]<br>0x33333332|- rs1_val==858993458<br>                                                                                                                                                                                                                                          |[0x80000660]:sra a2, a0, a1<br> [0x80000664]:sw a2, 228(ra)<br>    |
|  79|[0x80002148]<br>0x000000CC|- rs1_val==1717986917<br>                                                                                                                                                                                                                                         |[0x80000674]:sra a2, a0, a1<br> [0x80000678]:sw a2, 232(ra)<br>    |
|  80|[0x8000214c]<br>0x00000000|- rs1_val==46339<br>                                                                                                                                                                                                                                              |[0x80000688]:sra a2, a0, a1<br> [0x8000068c]:sw a2, 236(ra)<br>    |
|  81|[0x80002150]<br>0x02AAAAAA|- rs1_val==1431655766<br>                                                                                                                                                                                                                                         |[0x8000069c]:sra a2, a0, a1<br> [0x800006a0]:sw a2, 240(ra)<br>    |
|  82|[0x80002154]<br>0xD5555555|- rs1_val==-1431655765<br>                                                                                                                                                                                                                                        |[0x800006b0]:sra a2, a0, a1<br> [0x800006b4]:sw a2, 244(ra)<br>    |
|  83|[0x80002158]<br>0xFFFFFFEF|- rs1_val == -1048577<br>                                                                                                                                                                                                                                         |[0x800006c4]:sra a2, a0, a1<br> [0x800006c8]:sw a2, 248(ra)<br>    |
|  84|[0x8000215c]<br>0x66666667|- rs1_val==1717986919<br>                                                                                                                                                                                                                                         |[0x800006d8]:sra a2, a0, a1<br> [0x800006dc]:sw a2, 252(ra)<br>    |
|  85|[0x80002160]<br>0xFFFFFFFA|- rs1_val==-46339<br>                                                                                                                                                                                                                                             |[0x800006ec]:sra a2, a0, a1<br> [0x800006f0]:sw a2, 256(ra)<br>    |
|  86|[0x80002174]<br>0x00004000|- rs1_val == 4194304<br>                                                                                                                                                                                                                                          |[0x80000740]:sra a2, a0, a1<br> [0x80000744]:sw a2, 276(ra)<br>    |
