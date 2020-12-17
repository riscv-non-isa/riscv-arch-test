
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000780')]      |
| SIG_REGION                | [('0x80002010', '0x80002180', '92 words')]      |
| COV_LABELS                | srl      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srl-01.S/srl-01.S    |
| Total Number of coverpoints| 211     |
| Total Coverpoints Hit     | 211      |
| Total Signature Updates   | 92      |
| STAT1                     | 89      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000072c]:srl a2, a0, a1
      [0x80000730]:sw a2, 232(ra)
 -- Signature Address: 0x8000216c Data: 0x00555555
 -- Redundant Coverpoints hit by the op
      - opcode : srl
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val==1431655766
      - rs2_val == 8




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000075c]:srl a2, a0, a1
      [0x80000760]:sw a2, 244(ra)
 -- Signature Address: 0x80002178 Data: 0x00000002
 -- Redundant Coverpoints hit by the op
      - opcode : srl
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 128




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000076c]:srl a2, a0, a1
      [0x80000770]:sw a2, 248(ra)
 -- Signature Address: 0x8000217c Data: 0x00400000
 -- Redundant Coverpoints hit by the op
      - opcode : srl
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 8388608
      - rs2_val == 1






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

|s.no|        signature         |                                                                                                coverpoints                                                                                                 |                               code                               |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------|
|   1|[0x80002010]<br>0x0001FF7F|- opcode : srl<br> - rs1 : x26<br> - rs2 : x11<br> - rd : x11<br> - rs2 == rd != rs1<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == -4194305<br> - rs2_val == 15<br>                 |[0x8000010c]:srl a1, s10, a1<br> [0x80000110]:sw a1, 0(s3)<br>    |
|   2|[0x80002014]<br>0x00000155|- rs1 : x31<br> - rs2 : x31<br> - rd : x12<br> - rs1 == rs2 != rd<br> - rs1_val==1431655766<br>                                                                                                             |[0x80000124]:srl a2, t6, t6<br> [0x80000128]:sw a2, 4(s3)<br>     |
|   3|[0x80002018]<br>0x00000001|- rs1 : x7<br> - rs2 : x7<br> - rd : x7<br> - rs1 == rs2 == rd<br>                                                                                                                                          |[0x80000134]:srl t2, t2, t2<br> [0x80000138]:sw t2, 8(s3)<br>     |
|   4|[0x8000201c]<br>0x00000100|- rs1 : x18<br> - rs2 : x12<br> - rd : x18<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val == 256<br>                                                                               |[0x80000144]:srl s2, s2, a2<br> [0x80000148]:sw s2, 12(s3)<br>    |
|   5|[0x80002020]<br>0x00000000|- rs1 : x14<br> - rs2 : x3<br> - rd : x8<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br> |[0x80000154]:srl fp, a4, gp<br> [0x80000158]:sw fp, 16(s3)<br>    |
|   6|[0x80002024]<br>0x00080000|- rs1 : x21<br> - rs2 : x22<br> - rd : x20<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -2147483648<br>                                                             |[0x80000164]:srl s4, s5, s6<br> [0x80000168]:sw s4, 20(s3)<br>    |
|   7|[0x80002028]<br>0x00000000|- rs1 : x4<br> - rs2 : x17<br> - rd : x30<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val==0<br>                                                                                       |[0x80000174]:srl t5, tp, a7<br> [0x80000178]:sw t5, 24(s3)<br>    |
|   8|[0x8000202c]<br>0x00000001|- rs1 : x1<br> - rs2 : x4<br> - rd : x6<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 2147483647<br> - rs2_val == 30<br>                                            |[0x80000188]:srl t1, ra, tp<br> [0x8000018c]:sw t1, 28(s3)<br>    |
|   9|[0x80002030]<br>0x00000000|- rs1 : x0<br> - rs2 : x21<br> - rd : x15<br> - rs2_val == 29<br>                                                                                                                                           |[0x80000198]:srl a5, zero, s5<br> [0x8000019c]:sw a5, 32(s3)<br>  |
|  10|[0x80002034]<br>0x00000000|- rs1 : x28<br> - rs2 : x23<br> - rd : x5<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                                                                           |[0x800001a8]:srl t0, t3, s7<br> [0x800001ac]:sw t0, 36(s3)<br>    |
|  11|[0x80002038]<br>0x00000000|- rs1 : x9<br> - rs2 : x30<br> - rd : x4<br> - rs1_val == 4<br> - rs1_val==4<br> - rs2_val == 10<br>                                                                                                        |[0x800001b8]:srl tp, s1, t5<br> [0x800001bc]:sw tp, 40(s3)<br>    |
|  12|[0x8000203c]<br>0x00000002|- rs1 : x13<br> - rs2 : x29<br> - rd : x10<br> - rs1_val == 8<br> - rs2_val == 2<br>                                                                                                                        |[0x800001c8]:srl a0, a3, t4<br> [0x800001cc]:sw a0, 44(s3)<br>    |
|  13|[0x80002040]<br>0x00000000|- rs1 : x2<br> - rs2 : x16<br> - rd : x25<br> - rs1_val == 16<br>                                                                                                                                           |[0x800001d8]:srl s9, sp, a6<br> [0x800001dc]:sw s9, 48(s3)<br>    |
|  14|[0x80002044]<br>0x00000000|- rs1 : x11<br> - rs2 : x28<br> - rd : x19<br> - rs1_val == 32<br> - rs2_val == 8<br>                                                                                                                       |[0x800001f0]:srl s3, a1, t3<br> [0x800001f4]:sw s3, 0(tp)<br>     |
|  15|[0x80002048]<br>0x00000000|- rs1 : x10<br> - rs2 : x6<br> - rd : x23<br> - rs1_val == 64<br>                                                                                                                                           |[0x80000200]:srl s7, a0, t1<br> [0x80000204]:sw s7, 4(tp)<br>     |
|  16|[0x8000204c]<br>0x00000000|- rs1 : x3<br> - rs2 : x1<br> - rd : x0<br> - rs1_val == 128<br>                                                                                                                                            |[0x80000210]:srl zero, gp, ra<br> [0x80000214]:sw zero, 8(tp)<br> |
|  17|[0x80002050]<br>0x00000000|- rs1 : x6<br> - rs2 : x8<br> - rd : x14<br> - rs1_val == 512<br>                                                                                                                                           |[0x80000220]:srl a4, t1, fp<br> [0x80000224]:sw a4, 12(tp)<br>    |
|  18|[0x80002054]<br>0x00000000|- rs1 : x20<br> - rs2 : x27<br> - rd : x9<br> - rs1_val == 1024<br>                                                                                                                                         |[0x80000230]:srl s1, s4, s11<br> [0x80000234]:sw s1, 16(tp)<br>   |
|  19|[0x80002058]<br>0x00000000|- rs1 : x30<br> - rs2 : x18<br> - rd : x16<br> - rs1_val == 2048<br>                                                                                                                                        |[0x80000244]:srl a6, t5, s2<br> [0x80000248]:sw a6, 20(tp)<br>    |
|  20|[0x8000205c]<br>0x00000010|- rs1 : x22<br> - rs2 : x10<br> - rd : x24<br> - rs1_val == 4096<br>                                                                                                                                        |[0x80000254]:srl s8, s6, a0<br> [0x80000258]:sw s8, 24(tp)<br>    |
|  21|[0x80002060]<br>0x00000002|- rs1 : x15<br> - rs2 : x24<br> - rd : x2<br> - rs1_val == 8192<br>                                                                                                                                         |[0x80000264]:srl sp, a5, s8<br> [0x80000268]:sw sp, 28(tp)<br>    |
|  22|[0x80002064]<br>0x00000080|- rs1 : x17<br> - rs2 : x9<br> - rd : x21<br> - rs1_val == 16384<br>                                                                                                                                        |[0x80000274]:srl s5, a7, s1<br> [0x80000278]:sw s5, 32(tp)<br>    |
|  23|[0x80002068]<br>0x00000000|- rs1 : x12<br> - rs2 : x20<br> - rd : x27<br> - rs1_val == 32768<br>                                                                                                                                       |[0x80000284]:srl s11, a2, s4<br> [0x80000288]:sw s11, 36(tp)<br>  |
|  24|[0x8000206c]<br>0x00002000|- rs1 : x27<br> - rs2 : x5<br> - rd : x26<br> - rs1_val == 65536<br>                                                                                                                                        |[0x80000294]:srl s10, s11, t0<br> [0x80000298]:sw s10, 40(tp)<br> |
|  25|[0x80002070]<br>0x00000200|- rs1 : x16<br> - rs2 : x13<br> - rd : x17<br> - rs1_val == 131072<br>                                                                                                                                      |[0x800002a4]:srl a7, a6, a3<br> [0x800002a8]:sw a7, 44(tp)<br>    |
|  26|[0x80002074]<br>0x00000004|- rs1 : x23<br> - rs2 : x15<br> - rd : x28<br> - rs1_val == 262144<br> - rs2_val == 16<br>                                                                                                                  |[0x800002b4]:srl t3, s7, a5<br> [0x800002b8]:sw t3, 48(tp)<br>    |
|  27|[0x80002078]<br>0x00004000|- rs1 : x8<br> - rs2 : x26<br> - rd : x1<br> - rs1_val == 524288<br>                                                                                                                                        |[0x800002c4]:srl ra, fp, s10<br> [0x800002c8]:sw ra, 52(tp)<br>   |
|  28|[0x8000207c]<br>0x00000000|- rs1 : x24<br> - rs2 : x2<br> - rd : x29<br> - rs1_val == 1048576<br> - rs2_val == 23<br>                                                                                                                  |[0x800002d4]:srl t4, s8, sp<br> [0x800002d8]:sw t4, 56(tp)<br>    |
|  29|[0x80002080]<br>0x00000020|- rs1 : x29<br> - rs2 : x14<br> - rd : x31<br> - rs1_val == 2097152<br>                                                                                                                                     |[0x800002e4]:srl t6, t4, a4<br> [0x800002e8]:sw t6, 60(tp)<br>    |
|  30|[0x80002084]<br>0x00010000|- rs1 : x5<br> - rs2 : x19<br> - rd : x22<br> - rs1_val == 4194304<br>                                                                                                                                      |[0x800002fc]:srl s6, t0, s3<br> [0x80000300]:sw s6, 0(ra)<br>     |
|  31|[0x80002088]<br>0x00800000|- rs1 : x19<br> - rs2 : x0<br> - rd : x3<br> - rs1_val == 8388608<br>                                                                                                                                       |[0x8000030c]:srl gp, s3, zero<br> [0x80000310]:sw gp, 4(ra)<br>   |
|  32|[0x8000208c]<br>0x00000000|- rs1 : x25<br> - rs1_val == 16777216<br>                                                                                                                                                                   |[0x8000031c]:srl fp, s9, tp<br> [0x80000320]:sw fp, 8(ra)<br>     |
|  33|[0x80002090]<br>0x00000000|- rs2 : x25<br> - rs1_val == 33554432<br>                                                                                                                                                                   |[0x8000032c]:srl t5, t1, s9<br> [0x80000330]:sw t5, 12(ra)<br>    |
|  34|[0x80002094]<br>0x00000000|- rd : x13<br> - rs1_val == 67108864<br>                                                                                                                                                                    |[0x8000033c]:srl a3, a2, s1<br> [0x80000340]:sw a3, 16(ra)<br>    |
|  35|[0x80002098]<br>0x00080000|- rs1_val == 134217728<br>                                                                                                                                                                                  |[0x8000034c]:srl a2, a0, a1<br> [0x80000350]:sw a2, 20(ra)<br>    |
|  36|[0x8000209c]<br>0x00010000|- rs1_val == 268435456<br>                                                                                                                                                                                  |[0x8000035c]:srl a2, a0, a1<br> [0x80000360]:sw a2, 24(ra)<br>    |
|  37|[0x800020a0]<br>0x00000004|- rs1_val == 536870912<br> - rs2_val == 27<br>                                                                                                                                                              |[0x8000036c]:srl a2, a0, a1<br> [0x80000370]:sw a2, 28(ra)<br>    |
|  38|[0x800020a4]<br>0x01000000|- rs1_val == 1073741824<br>                                                                                                                                                                                 |[0x8000037c]:srl a2, a0, a1<br> [0x80000380]:sw a2, 32(ra)<br>    |
|  39|[0x800020a8]<br>0x001FFFFF|- rs1_val == -2<br>                                                                                                                                                                                         |[0x8000038c]:srl a2, a0, a1<br> [0x80000390]:sw a2, 36(ra)<br>    |
|  40|[0x800020ac]<br>0x00001FFF|- rs1_val == -3<br>                                                                                                                                                                                         |[0x8000039c]:srl a2, a0, a1<br> [0x800003a0]:sw a2, 40(ra)<br>    |
|  41|[0x800020b0]<br>0x3FFFFFFE|- rs1_val == -5<br>                                                                                                                                                                                         |[0x800003ac]:srl a2, a0, a1<br> [0x800003b0]:sw a2, 44(ra)<br>    |
|  42|[0x800020b4]<br>0x00001FFF|- rs1_val == -9<br>                                                                                                                                                                                         |[0x800003bc]:srl a2, a0, a1<br> [0x800003c0]:sw a2, 48(ra)<br>    |
|  43|[0x800020b8]<br>0x000001FF|- rs1_val == -17<br>                                                                                                                                                                                        |[0x800003cc]:srl a2, a0, a1<br> [0x800003d0]:sw a2, 52(ra)<br>    |
|  44|[0x800020bc]<br>0x0001FFFF|- rs1_val == -33<br>                                                                                                                                                                                        |[0x800003dc]:srl a2, a0, a1<br> [0x800003e0]:sw a2, 56(ra)<br>    |
|  45|[0x800020c0]<br>0x0003FFFF|- rs1_val == -65<br>                                                                                                                                                                                        |[0x800003ec]:srl a2, a0, a1<br> [0x800003f0]:sw a2, 60(ra)<br>    |
|  46|[0x800020c4]<br>0x03FFFFFD|- rs1_val == -129<br>                                                                                                                                                                                       |[0x800003fc]:srl a2, a0, a1<br> [0x80000400]:sw a2, 64(ra)<br>    |
|  47|[0x800020c8]<br>0x0003FFFF|- rs1_val == -257<br>                                                                                                                                                                                       |[0x8000040c]:srl a2, a0, a1<br> [0x80000410]:sw a2, 68(ra)<br>    |
|  48|[0x800020cc]<br>0x0007FFFF|- rs1_val == -513<br>                                                                                                                                                                                       |[0x8000041c]:srl a2, a0, a1<br> [0x80000420]:sw a2, 72(ra)<br>    |
|  49|[0x800020d0]<br>0x0000001F|- rs1_val == -1025<br>                                                                                                                                                                                      |[0x8000042c]:srl a2, a0, a1<br> [0x80000430]:sw a2, 76(ra)<br>    |
|  50|[0x800020d4]<br>0x0000001F|- rs1_val == -2049<br>                                                                                                                                                                                      |[0x80000440]:srl a2, a0, a1<br> [0x80000444]:sw a2, 80(ra)<br>    |
|  51|[0x800020d8]<br>0x0007FFFF|- rs1_val == -4097<br>                                                                                                                                                                                      |[0x80000454]:srl a2, a0, a1<br> [0x80000458]:sw a2, 84(ra)<br>    |
|  52|[0x800020dc]<br>0x000FFFFD|- rs1_val == -8193<br>                                                                                                                                                                                      |[0x80000468]:srl a2, a0, a1<br> [0x8000046c]:sw a2, 88(ra)<br>    |
|  53|[0x800020e0]<br>0x0000FFFF|- rs1_val == -16385<br>                                                                                                                                                                                     |[0x8000047c]:srl a2, a0, a1<br> [0x80000480]:sw a2, 92(ra)<br>    |
|  54|[0x800020e4]<br>0x00000003|- rs1_val == -32769<br>                                                                                                                                                                                     |[0x80000490]:srl a2, a0, a1<br> [0x80000494]:sw a2, 96(ra)<br>    |
|  55|[0x800020e8]<br>0x00003FFF|- rs1_val == -65537<br>                                                                                                                                                                                     |[0x800004a4]:srl a2, a0, a1<br> [0x800004a8]:sw a2, 100(ra)<br>   |
|  56|[0x800020ec]<br>0x00000001|- rs1_val == -131073<br>                                                                                                                                                                                    |[0x800004b8]:srl a2, a0, a1<br> [0x800004bc]:sw a2, 104(ra)<br>   |
|  57|[0x800020f0]<br>0x0001FFF7|- rs1_val == -262145<br>                                                                                                                                                                                    |[0x800004cc]:srl a2, a0, a1<br> [0x800004d0]:sw a2, 108(ra)<br>   |
|  58|[0x800020f4]<br>0x0000001F|- rs1_val == -524289<br>                                                                                                                                                                                    |[0x800004e0]:srl a2, a0, a1<br> [0x800004e4]:sw a2, 112(ra)<br>   |
|  59|[0x800020f8]<br>0x03FFBFFF|- rs1_val == -1048577<br>                                                                                                                                                                                   |[0x800004f4]:srl a2, a0, a1<br> [0x800004f8]:sw a2, 116(ra)<br>   |
|  60|[0x800020fc]<br>0x00003FDF|- rs1_val == -8388609<br>                                                                                                                                                                                   |[0x80000508]:srl a2, a0, a1<br> [0x8000050c]:sw a2, 120(ra)<br>   |
|  61|[0x80002100]<br>0x00007F7F|- rs1_val == -16777217<br>                                                                                                                                                                                  |[0x8000051c]:srl a2, a0, a1<br> [0x80000520]:sw a2, 124(ra)<br>   |
|  62|[0x80002104]<br>0x000FDFFF|- rs1_val == -33554433<br>                                                                                                                                                                                  |[0x80000530]:srl a2, a0, a1<br> [0x80000534]:sw a2, 128(ra)<br>   |
|  63|[0x80002108]<br>0x000001F7|- rs1_val == -67108865<br>                                                                                                                                                                                  |[0x80000544]:srl a2, a0, a1<br> [0x80000548]:sw a2, 132(ra)<br>   |
|  64|[0x8000210c]<br>0x7BFFFFFF|- rs1_val == -134217729<br> - rs2_val == 1<br>                                                                                                                                                              |[0x80000558]:srl a2, a0, a1<br> [0x8000055c]:sw a2, 136(ra)<br>   |
|  65|[0x80002110]<br>0x0077FFFF|- rs1_val == -268435457<br>                                                                                                                                                                                 |[0x8000056c]:srl a2, a0, a1<br> [0x80000570]:sw a2, 140(ra)<br>   |
|  66|[0x80002114]<br>0x0006FFFF|- rs1_val == -536870913<br>                                                                                                                                                                                 |[0x80000580]:srl a2, a0, a1<br> [0x80000584]:sw a2, 144(ra)<br>   |
|  67|[0x80002118]<br>0x00BFFFFF|- rs1_val == -1073741825<br>                                                                                                                                                                                |[0x80000594]:srl a2, a0, a1<br> [0x80000598]:sw a2, 148(ra)<br>   |
|  68|[0x8000211c]<br>0x000AAAAA|- rs1_val == 1431655765<br> - rs1_val==1431655765<br>                                                                                                                                                       |[0x800005a8]:srl a2, a0, a1<br> [0x800005ac]:sw a2, 152(ra)<br>   |
|  69|[0x80002120]<br>0x00000005|- rs1_val == -1431655766<br> - rs1_val==-1431655766<br>                                                                                                                                                     |[0x800005bc]:srl a2, a0, a1<br> [0x800005c0]:sw a2, 156(ra)<br>   |
|  70|[0x80002124]<br>0x00000000|- rs1_val==3<br>                                                                                                                                                                                            |[0x800005cc]:srl a2, a0, a1<br> [0x800005d0]:sw a2, 160(ra)<br>   |
|  71|[0x80002128]<br>0x00000000|- rs1_val==5<br>                                                                                                                                                                                            |[0x800005dc]:srl a2, a0, a1<br> [0x800005e0]:sw a2, 164(ra)<br>   |
|  72|[0x8000212c]<br>0x000CCCCC|- rs1_val==858993459<br>                                                                                                                                                                                    |[0x800005f0]:srl a2, a0, a1<br> [0x800005f4]:sw a2, 168(ra)<br>   |
|  73|[0x80002130]<br>0x00000CCC|- rs1_val==1717986918<br>                                                                                                                                                                                   |[0x80000604]:srl a2, a0, a1<br> [0x80000608]:sw a2, 172(ra)<br>   |
|  74|[0x80002134]<br>0x00000000|- rs1_val==46341<br>                                                                                                                                                                                        |[0x80000618]:srl a2, a0, a1<br> [0x8000061c]:sw a2, 176(ra)<br>   |
|  75|[0x80002138]<br>0x00000000|- rs1_val==6<br> - rs2_val == 4<br>                                                                                                                                                                         |[0x80000628]:srl a2, a0, a1<br> [0x8000062c]:sw a2, 180(ra)<br>   |
|  76|[0x8000213c]<br>0x000007EF|- rs2_val == 21<br>                                                                                                                                                                                         |[0x8000063c]:srl a2, a0, a1<br> [0x80000640]:sw a2, 184(ra)<br>   |
|  77|[0x80002140]<br>0x000FFFF4|- rs1_val==-46340<br>                                                                                                                                                                                       |[0x80000650]:srl a2, a0, a1<br> [0x80000654]:sw a2, 188(ra)<br>   |
|  78|[0x80002144]<br>0x00000000|- rs1_val==46340<br>                                                                                                                                                                                        |[0x80000664]:srl a2, a0, a1<br> [0x80000668]:sw a2, 192(ra)<br>   |
|  79|[0x80002148]<br>0x000002AA|- rs1_val==1431655764<br>                                                                                                                                                                                   |[0x80000678]:srl a2, a0, a1<br> [0x8000067c]:sw a2, 196(ra)<br>   |
|  80|[0x8000214c]<br>0x0003FF7F|- rs1_val == -2097153<br>                                                                                                                                                                                   |[0x8000068c]:srl a2, a0, a1<br> [0x80000690]:sw a2, 200(ra)<br>   |
|  81|[0x80002150]<br>0x33333332|- rs1_val==858993458<br>                                                                                                                                                                                    |[0x800006a0]:srl a2, a0, a1<br> [0x800006a4]:sw a2, 204(ra)<br>   |
|  82|[0x80002154]<br>0x0CCCCCCC|- rs1_val==1717986917<br>                                                                                                                                                                                   |[0x800006b4]:srl a2, a0, a1<br> [0x800006b8]:sw a2, 208(ra)<br>   |
|  83|[0x80002158]<br>0x00005A81|- rs1_val==46339<br>                                                                                                                                                                                        |[0x800006c8]:srl a2, a0, a1<br> [0x800006cc]:sw a2, 212(ra)<br>   |
|  84|[0x8000215c]<br>0x00155555|- rs1_val==-1431655765<br>                                                                                                                                                                                  |[0x800006dc]:srl a2, a0, a1<br> [0x800006e0]:sw a2, 216(ra)<br>   |
|  85|[0x80002160]<br>0x00000006|- rs1_val==858993460<br>                                                                                                                                                                                    |[0x800006f0]:srl a2, a0, a1<br> [0x800006f4]:sw a2, 220(ra)<br>   |
|  86|[0x80002164]<br>0x01999999|- rs1_val==1717986919<br>                                                                                                                                                                                   |[0x80000704]:srl a2, a0, a1<br> [0x80000708]:sw a2, 224(ra)<br>   |
|  87|[0x80002168]<br>0x03FFFD2B|- rs1_val==-46339<br>                                                                                                                                                                                       |[0x80000718]:srl a2, a0, a1<br> [0x8000071c]:sw a2, 228(ra)<br>   |
|  88|[0x80002170]<br>0xFFFFFFFF|- rs1_val < 0 and rs2_val == 0<br>                                                                                                                                                                          |[0x8000073c]:srl a2, a0, a1<br> [0x80000740]:sw a2, 236(ra)<br>   |
|  89|[0x80002174]<br>0x00000000|- rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br>                                                                                                                                   |[0x8000074c]:srl a2, a0, a1<br> [0x80000750]:sw a2, 240(ra)<br>   |
