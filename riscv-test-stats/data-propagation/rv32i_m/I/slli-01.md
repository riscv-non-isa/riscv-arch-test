
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800005d0')]      |
| SIG_REGION                | [('0x80002010', '0x80002170', '88 words')]      |
| COV_LABELS                | slli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/slli-01.S/slli-01.S    |
| Total Number of coverpoints| 178     |
| Total Coverpoints Hit     | 178      |
| Total Signature Updates   | 88      |
| STAT1                     | 87      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005bc]:slli a1, a0, 16
      [0x800005c0]:sw a1, 272(tp)
 -- Signature Address: 0x8000216c Data: 0x02000000
 -- Redundant Coverpoints hit by the op
      - opcode : slli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == 512
      - imm_val == 16






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

|s.no|        signature         |                                                                    coverpoints                                                                    |                               code                                |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80002010]<br>0xFFD00000|- opcode : slli<br> - rs1 : x13<br> - rd : x28<br> - rs1 != rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br>                            |[0x80000104]:slli t3, a3, 19<br> [0x80000108]:sw t3, 0(sp)<br>     |
|   2|[0x80002014]<br>0xAA800000|- rs1 : x6<br> - rd : x6<br> - rs1 == rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val==1431655764<br> - imm_val == 21<br>    |[0x80000114]:slli t1, t1, 21<br> [0x80000118]:sw t1, 4(sp)<br>     |
|   3|[0x80002018]<br>0xFBFFFFFF|- rs1 : x12<br> - rd : x24<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -67108865<br>                                                       |[0x80000124]:slli s8, a2, 0<br> [0x80000128]:sw s8, 8(sp)<br>      |
|   4|[0x8000201c]<br>0x66666667|- rs1 : x1<br> - rd : x30<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val==1717986919<br>                                                         |[0x80000134]:slli t5, ra, 0<br> [0x80000138]:sw t5, 12(sp)<br>     |
|   5|[0x80002020]<br>0x80000000|- rs1 : x30<br> - rd : x4<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -4194305<br>                                                  |[0x80000144]:slli tp, t5, 31<br> [0x80000148]:sw tp, 16(sp)<br>    |
|   6|[0x80002024]<br>0x00000000|- rs1 : x19<br> - rd : x29<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val==858993458<br>                                                  |[0x80000154]:slli t4, s3, 31<br> [0x80000158]:sw t4, 20(sp)<br>    |
|   7|[0x80002028]<br>0x000000A0|- rs1 : x27<br> - rd : x14<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val==5<br>                                        |[0x80000160]:slli a4, s11, 5<br> [0x80000164]:sw a4, 24(sp)<br>    |
|   8|[0x8000202c]<br>0x00000000|- rs1 : x18<br> - rd : x5<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -2147483648<br> - imm_val == 27<br> |[0x8000016c]:slli t0, s2, 27<br> [0x80000170]:sw t0, 28(sp)<br>    |
|   9|[0x80002030]<br>0x00000000|- rs1 : x20<br> - rd : x9<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br> - rs1_val==0<br> - imm_val == 10<br>                          |[0x80000178]:slli s1, s4, 10<br> [0x8000017c]:sw s1, 32(sp)<br>    |
|  10|[0x80002034]<br>0x7FFFFFFF|- rs1 : x21<br> - rd : x12<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 2147483647<br>                    |[0x80000188]:slli a2, s5, 0<br> [0x8000018c]:sw a2, 36(sp)<br>     |
|  11|[0x80002038]<br>0x00000040|- rs1 : x26<br> - rd : x3<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br>                                            |[0x80000194]:slli gp, s10, 6<br> [0x80000198]:sw gp, 40(sp)<br>    |
|  12|[0x8000203c]<br>0x00010000|- rs1 : x31<br> - rd : x22<br> - rs1_val == 2<br> - rs1_val==2<br> - imm_val == 15<br>                                                             |[0x800001a0]:slli s6, t6, 15<br> [0x800001a4]:sw s6, 44(sp)<br>    |
|  13|[0x80002040]<br>0x00000020|- rs1 : x25<br> - rd : x11<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                                 |[0x800001ac]:slli a1, s9, 3<br> [0x800001b0]:sw a1, 48(sp)<br>     |
|  14|[0x80002044]<br>0x00002000|- rs1 : x16<br> - rd : x20<br> - rs1_val == 8<br>                                                                                                  |[0x800001b8]:slli s4, a6, 10<br> [0x800001bc]:sw s4, 52(sp)<br>    |
|  15|[0x80002048]<br>0x00000800|- rs1 : x14<br> - rd : x26<br> - rs1_val == 16<br>                                                                                                 |[0x800001c4]:slli s10, a4, 7<br> [0x800001c8]:sw s10, 56(sp)<br>   |
|  16|[0x8000204c]<br>0x00000000|- rs1 : x17<br> - rd : x15<br> - rs1_val == 32<br> - imm_val == 29<br>                                                                             |[0x800001d0]:slli a5, a7, 29<br> [0x800001d4]:sw a5, 60(sp)<br>    |
|  17|[0x80002050]<br>0x00000800|- rs1 : x7<br> - rd : x17<br> - rs1_val == 64<br>                                                                                                  |[0x800001dc]:slli a7, t2, 5<br> [0x800001e0]:sw a7, 64(sp)<br>     |
|  18|[0x80002054]<br>0x00000000|- rs1 : x0<br> - rd : x16<br>                                                                                                                      |[0x800001e8]:slli a6, zero, 9<br> [0x800001ec]:sw a6, 68(sp)<br>   |
|  19|[0x80002058]<br>0x00100000|- rs1 : x4<br> - rd : x10<br> - rs1_val == 256<br>                                                                                                 |[0x800001f4]:slli a0, tp, 12<br> [0x800001f8]:sw a0, 72(sp)<br>    |
|  20|[0x8000205c]<br>0x00000000|- rs1 : x11<br> - rd : x0<br> - rs1_val == 512<br> - imm_val == 16<br>                                                                             |[0x80000208]:slli zero, a1, 16<br> [0x8000020c]:sw zero, 0(tp)<br> |
|  21|[0x80002060]<br>0x00100000|- rs1 : x8<br> - rd : x27<br> - rs1_val == 1024<br>                                                                                                |[0x80000214]:slli s11, fp, 10<br> [0x80000218]:sw s11, 4(tp)<br>   |
|  22|[0x80002064]<br>0x02000000|- rs1 : x3<br> - rd : x31<br> - rs1_val == 2048<br>                                                                                                |[0x80000224]:slli t6, gp, 14<br> [0x80000228]:sw t6, 8(tp)<br>     |
|  23|[0x80002068]<br>0x00020000|- rs1 : x22<br> - rd : x7<br> - rs1_val == 4096<br>                                                                                                |[0x80000230]:slli t2, s6, 5<br> [0x80000234]:sw t2, 12(tp)<br>     |
|  24|[0x8000206c]<br>0x00010000|- rs1 : x23<br> - rd : x2<br> - rs1_val == 8192<br>                                                                                                |[0x8000023c]:slli sp, s7, 3<br> [0x80000240]:sw sp, 16(tp)<br>     |
|  25|[0x80002070]<br>0x02000000|- rs1 : x24<br> - rd : x18<br> - rs1_val == 16384<br>                                                                                              |[0x80000248]:slli s2, s8, 11<br> [0x8000024c]:sw s2, 20(tp)<br>    |
|  26|[0x80002074]<br>0x00010000|- rs1 : x9<br> - rd : x19<br> - rs1_val == 32768<br> - imm_val == 1<br>                                                                            |[0x80000254]:slli s3, s1, 1<br> [0x80000258]:sw s3, 24(tp)<br>     |
|  27|[0x80002078]<br>0x00020000|- rs1 : x28<br> - rd : x25<br> - rs1_val == 65536<br>                                                                                              |[0x80000260]:slli s9, t3, 1<br> [0x80000264]:sw s9, 28(tp)<br>     |
|  28|[0x8000207c]<br>0x00000000|- rs1 : x15<br> - rd : x1<br> - rs1_val == 131072<br>                                                                                              |[0x8000026c]:slli ra, a5, 18<br> [0x80000270]:sw ra, 32(tp)<br>    |
|  29|[0x80002080]<br>0x04000000|- rs1 : x5<br> - rd : x23<br> - rs1_val == 262144<br> - imm_val == 8<br>                                                                           |[0x80000278]:slli s7, t0, 8<br> [0x8000027c]:sw s7, 36(tp)<br>     |
|  30|[0x80002084]<br>0x02000000|- rs1 : x29<br> - rd : x21<br> - rs1_val == 524288<br>                                                                                             |[0x80000284]:slli s5, t4, 6<br> [0x80000288]:sw s5, 40(tp)<br>     |
|  31|[0x80002088]<br>0x00000000|- rs1 : x10<br> - rd : x13<br> - rs1_val == 1048576<br>                                                                                            |[0x80000290]:slli a3, a0, 21<br> [0x80000294]:sw a3, 44(tp)<br>    |
|  32|[0x8000208c]<br>0x80000000|- rs1 : x2<br> - rd : x8<br> - rs1_val == 2097152<br>                                                                                              |[0x8000029c]:slli fp, sp, 10<br> [0x800002a0]:sw fp, 48(tp)<br>    |
|  33|[0x80002090]<br>0x00800000|- rs1_val == 4194304<br>                                                                                                                           |[0x800002a8]:slli a1, a0, 1<br> [0x800002ac]:sw a1, 52(tp)<br>     |
|  34|[0x80002094]<br>0x00000000|- rs1_val == 8388608<br> - imm_val == 30<br>                                                                                                       |[0x800002b4]:slli a1, a0, 30<br> [0x800002b8]:sw a1, 56(tp)<br>    |
|  35|[0x80002098]<br>0x00000000|- rs1_val == 16777216<br>                                                                                                                          |[0x800002c0]:slli a1, a0, 17<br> [0x800002c4]:sw a1, 60(tp)<br>    |
|  36|[0x8000209c]<br>0x40000000|- rs1_val == 33554432<br>                                                                                                                          |[0x800002cc]:slli a1, a0, 5<br> [0x800002d0]:sw a1, 64(tp)<br>     |
|  37|[0x800020a0]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                          |[0x800002d8]:slli a1, a0, 15<br> [0x800002dc]:sw a1, 68(tp)<br>    |
|  38|[0x800020a4]<br>0x00000000|- rs1_val == 134217728<br>                                                                                                                         |[0x800002e4]:slli a1, a0, 19<br> [0x800002e8]:sw a1, 72(tp)<br>    |
|  39|[0x800020a8]<br>0x00000000|- rs1_val == 268435456<br>                                                                                                                         |[0x800002f0]:slli a1, a0, 10<br> [0x800002f4]:sw a1, 76(tp)<br>    |
|  40|[0x800020ac]<br>0x00000000|- rs1_val == 536870912<br>                                                                                                                         |[0x800002fc]:slli a1, a0, 17<br> [0x80000300]:sw a1, 80(tp)<br>    |
|  41|[0x800020b0]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                        |[0x80000308]:slli a1, a0, 29<br> [0x8000030c]:sw a1, 84(tp)<br>    |
|  42|[0x800020b4]<br>0xFFFFE000|- rs1_val == -2<br>                                                                                                                                |[0x80000314]:slli a1, a0, 12<br> [0x80000318]:sw a1, 88(tp)<br>    |
|  43|[0x800020b8]<br>0xFFFD0000|- rs1_val == -3<br>                                                                                                                                |[0x80000320]:slli a1, a0, 16<br> [0x80000324]:sw a1, 92(tp)<br>    |
|  44|[0x800020bc]<br>0xFFFFFFEC|- rs1_val == -5<br> - imm_val == 2<br>                                                                                                             |[0x8000032c]:slli a1, a0, 2<br> [0x80000330]:sw a1, 96(tp)<br>     |
|  45|[0x800020c0]<br>0xFFFFFDC0|- rs1_val == -9<br>                                                                                                                                |[0x80000338]:slli a1, a0, 6<br> [0x8000033c]:sw a1, 100(tp)<br>    |
|  46|[0x800020c4]<br>0xFFFFFDE0|- rs1_val == -17<br>                                                                                                                               |[0x80000344]:slli a1, a0, 5<br> [0x80000348]:sw a1, 104(tp)<br>    |
|  47|[0x800020c8]<br>0xFFFFDF00|- rs1_val == -33<br>                                                                                                                               |[0x80000350]:slli a1, a0, 8<br> [0x80000354]:sw a1, 108(tp)<br>    |
|  48|[0x800020cc]<br>0xFFFFFBF0|- rs1_val == -65<br> - imm_val == 4<br>                                                                                                            |[0x8000035c]:slli a1, a0, 4<br> [0x80000360]:sw a1, 112(tp)<br>    |
|  49|[0x800020d0]<br>0xFFFFDFC0|- rs1_val == -129<br>                                                                                                                              |[0x80000368]:slli a1, a0, 6<br> [0x8000036c]:sw a1, 116(tp)<br>    |
|  50|[0x800020d4]<br>0xFFFFFBFC|- rs1_val == -257<br>                                                                                                                              |[0x80000374]:slli a1, a0, 2<br> [0x80000378]:sw a1, 120(tp)<br>    |
|  51|[0x800020d8]<br>0xFFFEFF80|- rs1_val == -513<br>                                                                                                                              |[0x80000380]:slli a1, a0, 7<br> [0x80000384]:sw a1, 124(tp)<br>    |
|  52|[0x800020dc]<br>0xF8000000|- rs1_val == -1025<br>                                                                                                                             |[0x8000038c]:slli a1, a0, 27<br> [0x80000390]:sw a1, 128(tp)<br>   |
|  53|[0x800020e0]<br>0xFFFBFF80|- rs1_val == -2049<br>                                                                                                                             |[0x8000039c]:slli a1, a0, 7<br> [0x800003a0]:sw a1, 132(tp)<br>    |
|  54|[0x800020e4]<br>0xFFF7FF80|- rs1_val == -4097<br>                                                                                                                             |[0x800003ac]:slli a1, a0, 7<br> [0x800003b0]:sw a1, 136(tp)<br>    |
|  55|[0x800020e8]<br>0xE0000000|- rs1_val == -8193<br>                                                                                                                             |[0x800003bc]:slli a1, a0, 29<br> [0x800003c0]:sw a1, 140(tp)<br>   |
|  56|[0x800020ec]<br>0xFEFFFC00|- rs1_val == -16385<br>                                                                                                                            |[0x800003cc]:slli a1, a0, 10<br> [0x800003d0]:sw a1, 144(tp)<br>   |
|  57|[0x800020f0]<br>0xFFFBFFF8|- rs1_val == -32769<br>                                                                                                                            |[0x800003dc]:slli a1, a0, 3<br> [0x800003e0]:sw a1, 148(tp)<br>    |
|  58|[0x800020f4]<br>0xFFBFFFFE|- rs1_val == -2097153<br>                                                                                                                          |[0x800003ec]:slli a1, a0, 1<br> [0x800003f0]:sw a1, 152(tp)<br>    |
|  59|[0x800020f8]<br>0xFF7FFFFF|- rs1_val == -8388609<br>                                                                                                                          |[0x800003fc]:slli a1, a0, 0<br> [0x80000400]:sw a1, 156(tp)<br>    |
|  60|[0x800020fc]<br>0xFFFF8000|- rs1_val == -16777217<br>                                                                                                                         |[0x8000040c]:slli a1, a0, 15<br> [0x80000410]:sw a1, 160(tp)<br>   |
|  61|[0x80002100]<br>0xEFFFFFF8|- rs1_val == -33554433<br>                                                                                                                         |[0x8000041c]:slli a1, a0, 3<br> [0x80000420]:sw a1, 164(tp)<br>    |
|  62|[0x80002104]<br>0x80000000|- rs1_val == -134217729<br>                                                                                                                        |[0x8000042c]:slli a1, a0, 31<br> [0x80000430]:sw a1, 168(tp)<br>   |
|  63|[0x80002108]<br>0xFFFFFFF0|- rs1_val == -268435457<br>                                                                                                                        |[0x8000043c]:slli a1, a0, 4<br> [0x80000440]:sw a1, 172(tp)<br>    |
|  64|[0x8000210c]<br>0xFFFC0000|- rs1_val == -536870913<br>                                                                                                                        |[0x8000044c]:slli a1, a0, 18<br> [0x80000450]:sw a1, 176(tp)<br>   |
|  65|[0x80002110]<br>0xFFFF0000|- rs1_val == -1073741825<br>                                                                                                                       |[0x8000045c]:slli a1, a0, 16<br> [0x80000460]:sw a1, 180(tp)<br>   |
|  66|[0x80002114]<br>0x40000000|- rs1_val == 1431655765<br> - rs1_val==1431655765<br>                                                                                              |[0x8000046c]:slli a1, a0, 30<br> [0x80000470]:sw a1, 184(tp)<br>   |
|  67|[0x80002118]<br>0x40000000|- rs1_val == -1431655766<br> - rs1_val==-1431655766<br>                                                                                            |[0x8000047c]:slli a1, a0, 29<br> [0x80000480]:sw a1, 188(tp)<br>   |
|  68|[0x8000211c]<br>0x000000C0|- rs1_val==3<br>                                                                                                                                   |[0x80000488]:slli a1, a0, 6<br> [0x8000048c]:sw a1, 192(tp)<br>    |
|  69|[0x80002120]<br>0x66666660|- rs1_val==858993459<br>                                                                                                                           |[0x80000498]:slli a1, a0, 5<br> [0x8000049c]:sw a1, 196(tp)<br>    |
|  70|[0x80002124]<br>0x30000000|- rs1_val==1717986918<br>                                                                                                                          |[0x800004a8]:slli a1, a0, 27<br> [0x800004ac]:sw a1, 200(tp)<br>   |
|  71|[0x80002128]<br>0xD2BF0000|- rs1_val==-46340<br>                                                                                                                              |[0x800004b8]:slli a1, a0, 14<br> [0x800004bc]:sw a1, 204(tp)<br>   |
|  72|[0x8000212c]<br>0xFFFD2BF4|- rs1_val==-46339<br>                                                                                                                              |[0x800004c8]:slli a1, a0, 2<br> [0x800004cc]:sw a1, 208(tp)<br>    |
|  73|[0x80002130]<br>0x0000B505|- rs1_val==46341<br>                                                                                                                               |[0x800004d8]:slli a1, a0, 0<br> [0x800004dc]:sw a1, 212(tp)<br>    |
|  74|[0x80002134]<br>0xBFFFC000|- rs1_val == -65537<br>                                                                                                                            |[0x800004e8]:slli a1, a0, 14<br> [0x800004ec]:sw a1, 216(tp)<br>   |
|  75|[0x80002138]<br>0xFF800000|- imm_val == 23<br>                                                                                                                                |[0x800004f8]:slli a1, a0, 23<br> [0x800004fc]:sw a1, 220(tp)<br>   |
|  76|[0x8000213c]<br>0x7FFFC000|- rs1_val == -131073<br>                                                                                                                           |[0x80000508]:slli a1, a0, 14<br> [0x8000050c]:sw a1, 224(tp)<br>   |
|  77|[0x80002140]<br>0x0B504000|- rs1_val==46340<br>                                                                                                                               |[0x80000518]:slli a1, a0, 12<br> [0x8000051c]:sw a1, 228(tp)<br>   |
|  78|[0x80002144]<br>0xFFEFFFFF|- rs1_val == -1048577<br>                                                                                                                          |[0x80000528]:slli a1, a0, 0<br> [0x8000052c]:sw a1, 232(tp)<br>    |
|  79|[0x80002148]<br>0x55556000|- rs1_val==-1431655765<br>                                                                                                                         |[0x80000538]:slli a1, a0, 13<br> [0x8000053c]:sw a1, 236(tp)<br>   |
|  80|[0x8000214c]<br>0xF7FFFF00|- rs1_val == -524289<br>                                                                                                                           |[0x80000548]:slli a1, a0, 8<br> [0x8000054c]:sw a1, 240(tp)<br>    |
|  81|[0x80002150]<br>0x28000000|- rs1_val==1717986917<br>                                                                                                                          |[0x80000558]:slli a1, a0, 27<br> [0x8000055c]:sw a1, 244(tp)<br>   |
|  82|[0x80002154]<br>0x0016A060|- rs1_val==46339<br>                                                                                                                               |[0x80000568]:slli a1, a0, 5<br> [0x8000056c]:sw a1, 248(tp)<br>    |
|  83|[0x80002158]<br>0x80000000|- rs1_val==1431655766<br>                                                                                                                          |[0x80000578]:slli a1, a0, 30<br> [0x8000057c]:sw a1, 252(tp)<br>   |
|  84|[0x8000215c]<br>0xFFEFFFFC|- rs1_val == -262145<br>                                                                                                                           |[0x80000588]:slli a1, a0, 2<br> [0x8000058c]:sw a1, 256(tp)<br>    |
|  85|[0x80002160]<br>0x00000060|- rs1_val==6<br>                                                                                                                                   |[0x80000594]:slli a1, a0, 4<br> [0x80000598]:sw a1, 260(tp)<br>    |
|  86|[0x80002164]<br>0x80000000|- rs1_val==858993460<br>                                                                                                                           |[0x800005a4]:slli a1, a0, 29<br> [0x800005a8]:sw a1, 264(tp)<br>   |
|  87|[0x80002168]<br>0x00010000|- rs1_val == 128<br>                                                                                                                               |[0x800005b0]:slli a1, a0, 9<br> [0x800005b4]:sw a1, 268(tp)<br>    |
