
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800005c0')]      |
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
      [0x800005ac]:slli a1, a0, 0
      [0x800005b0]:sw a1, 252(ra)
 -- Signature Address: 0x80002168 Data: 0x00000200
 -- Redundant Coverpoints hit by the op
      - opcode : slli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val == 0
      - rs1_val == 512






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

|s.no|        signature         |                                                                               coverpoints                                                                               |                               code                                |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80002010]<br>0xE0000000|- opcode : slli<br> - rs1 : x17<br> - rd : x27<br> - rs1 != rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == -1073741825<br> - imm_val == 29<br> |[0x80000108]:slli s11, a7, 29<br> [0x8000010c]:sw s11, 0(gp)<br>   |
|   2|[0x80002014]<br>0x33330000|- rs1 : x26<br> - rd : x26<br> - rs1 == rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val==1717986918<br> - imm_val == 15<br>                        |[0x80000118]:slli s10, s10, 15<br> [0x8000011c]:sw s10, 4(gp)<br>  |
|   3|[0x80002018]<br>0xFFFEFFFF|- rs1 : x22<br> - rd : x11<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -65537<br>                                                                                |[0x80000128]:slli a1, s6, 0<br> [0x8000012c]:sw a1, 8(gp)<br>      |
|   4|[0x8000201c]<br>0x00000004|- rs1 : x15<br> - rd : x6<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                     |[0x80000134]:slli t1, a5, 0<br> [0x80000138]:sw t1, 12(gp)<br>     |
|   5|[0x80002020]<br>0x80000000|- rs1 : x9<br> - rd : x16<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -4194305<br>                                                                        |[0x80000144]:slli a6, s1, 31<br> [0x80000148]:sw a6, 16(gp)<br>    |
|   6|[0x80002024]<br>0x00000000|- rs1 : x11<br> - rd : x20<br> - rs1_val > 0 and imm_val == (xlen-1)<br>                                                                                                 |[0x80000150]:slli s4, a1, 31<br> [0x80000154]:sw s4, 20(gp)<br>    |
|   7|[0x80002028]<br>0x00000800|- rs1 : x1<br> - rd : x19<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val == 8<br> - imm_val == 8<br>                                          |[0x8000015c]:slli s3, ra, 8<br> [0x80000160]:sw s3, 24(gp)<br>     |
|   8|[0x8000202c]<br>0x00000000|- rs1 : x19<br> - rd : x25<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -2147483648<br> - imm_val == 16<br>                      |[0x80000168]:slli s9, s3, 16<br> [0x8000016c]:sw s9, 28(gp)<br>    |
|   9|[0x80002030]<br>0x00000000|- rs1 : x8<br> - rd : x12<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br> - rs1_val==0<br>                                                                    |[0x80000174]:slli a2, fp, 12<br> [0x80000178]:sw a2, 32(gp)<br>    |
|  10|[0x80002034]<br>0xFFFFFF00|- rs1 : x27<br> - rd : x30<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 2147483647<br>                                          |[0x80000184]:slli t5, s11, 8<br> [0x80000188]:sw t5, 36(gp)<br>    |
|  11|[0x80002038]<br>0x00000002|- rs1 : x2<br> - rd : x4<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br> - imm_val == 1<br>                                                |[0x80000190]:slli tp, sp, 1<br> [0x80000194]:sw tp, 40(gp)<br>     |
|  12|[0x8000203c]<br>0x00000080|- rs1 : x31<br> - rd : x14<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                                                       |[0x8000019c]:slli a4, t6, 6<br> [0x800001a0]:sw a4, 44(gp)<br>     |
|  13|[0x80002040]<br>0x00040000|- rs1 : x24<br> - rd : x17<br> - rs1_val == 16<br>                                                                                                                       |[0x800001a8]:slli a7, s8, 14<br> [0x800001ac]:sw a7, 48(gp)<br>    |
|  14|[0x80002044]<br>0x00000100|- rs1 : x4<br> - rd : x10<br> - rs1_val == 32<br>                                                                                                                        |[0x800001b4]:slli a0, tp, 3<br> [0x800001b8]:sw a0, 52(gp)<br>     |
|  15|[0x80002048]<br>0x08000000|- rs1 : x18<br> - rd : x2<br> - rs1_val == 64<br> - imm_val == 21<br>                                                                                                    |[0x800001c0]:slli sp, s2, 21<br> [0x800001c4]:sw sp, 56(gp)<br>    |
|  16|[0x8000204c]<br>0x10000000|- rs1 : x5<br> - rd : x23<br> - rs1_val == 128<br>                                                                                                                       |[0x800001cc]:slli s7, t0, 21<br> [0x800001d0]:sw s7, 60(gp)<br>    |
|  17|[0x80002050]<br>0x00000200|- rs1 : x13<br> - rd : x8<br> - rs1_val == 256<br>                                                                                                                       |[0x800001d8]:slli fp, a3, 1<br> [0x800001dc]:sw fp, 64(gp)<br>     |
|  18|[0x80002054]<br>0x00000000|- rs1 : x20<br> - rd : x0<br> - rs1_val == 512<br>                                                                                                                       |[0x800001e4]:slli zero, s4, 0<br> [0x800001e8]:sw zero, 68(gp)<br> |
|  19|[0x80002058]<br>0x00001000|- rs1 : x16<br> - rd : x9<br> - rs1_val == 1024<br> - imm_val == 2<br>                                                                                                   |[0x800001f0]:slli s1, a6, 2<br> [0x800001f4]:sw s1, 72(gp)<br>     |
|  20|[0x8000205c]<br>0x40000000|- rs1 : x21<br> - rd : x5<br> - rs1_val == 2048<br>                                                                                                                      |[0x80000200]:slli t0, s5, 19<br> [0x80000204]:sw t0, 76(gp)<br>    |
|  21|[0x80002060]<br>0x00080000|- rs1 : x23<br> - rd : x1<br> - rs1_val == 4096<br>                                                                                                                      |[0x8000020c]:slli ra, s7, 7<br> [0x80000210]:sw ra, 80(gp)<br>     |
|  22|[0x80002064]<br>0x20000000|- rs1 : x12<br> - rd : x18<br> - rs1_val == 8192<br>                                                                                                                     |[0x80000218]:slli s2, a2, 16<br> [0x8000021c]:sw s2, 84(gp)<br>    |
|  23|[0x80002068]<br>0x02000000|- rs1 : x29<br> - rd : x15<br> - rs1_val == 16384<br>                                                                                                                    |[0x80000224]:slli a5, t4, 11<br> [0x80000228]:sw a5, 88(gp)<br>    |
|  24|[0x8000206c]<br>0x00000000|- rs1 : x3<br> - rd : x21<br> - rs1_val == 32768<br> - imm_val == 23<br>                                                                                                 |[0x80000238]:slli s5, gp, 23<br> [0x8000023c]:sw s5, 0(ra)<br>     |
|  25|[0x80002070]<br>0x00000000|- rs1 : x0<br> - rd : x31<br>                                                                                                                                            |[0x80000244]:slli t6, zero, 1<br> [0x80000248]:sw t6, 4(ra)<br>    |
|  26|[0x80002074]<br>0x00000000|- rs1 : x14<br> - rd : x3<br> - rs1_val == 131072<br> - imm_val == 27<br>                                                                                                |[0x80000250]:slli gp, a4, 27<br> [0x80000254]:sw gp, 8(ra)<br>     |
|  27|[0x80002078]<br>0x00000000|- rs1 : x25<br> - rd : x24<br> - rs1_val == 262144<br>                                                                                                                   |[0x8000025c]:slli s8, s9, 31<br> [0x80000260]:sw s8, 12(ra)<br>    |
|  28|[0x8000207c]<br>0x00000000|- rs1 : x30<br> - rd : x29<br> - rs1_val == 524288<br>                                                                                                                   |[0x80000268]:slli t4, t5, 15<br> [0x8000026c]:sw t4, 16(ra)<br>    |
|  29|[0x80002080]<br>0x00000000|- rs1 : x28<br> - rd : x13<br> - rs1_val == 1048576<br>                                                                                                                  |[0x80000274]:slli a3, t3, 23<br> [0x80000278]:sw a3, 20(ra)<br>    |
|  30|[0x80002084]<br>0x10000000|- rs1 : x10<br> - rd : x7<br> - rs1_val == 2097152<br>                                                                                                                   |[0x80000280]:slli t2, a0, 7<br> [0x80000284]:sw t2, 24(ra)<br>     |
|  31|[0x80002088]<br>0x00000000|- rs1 : x7<br> - rd : x22<br> - rs1_val == 4194304<br>                                                                                                                   |[0x8000028c]:slli s6, t2, 29<br> [0x80000290]:sw s6, 28(ra)<br>    |
|  32|[0x8000208c]<br>0x02000000|- rs1 : x6<br> - rd : x28<br> - rs1_val == 8388608<br>                                                                                                                   |[0x80000298]:slli t3, t1, 2<br> [0x8000029c]:sw t3, 32(ra)<br>     |
|  33|[0x80002090]<br>0x40000000|- rs1_val == 16777216<br>                                                                                                                                                |[0x800002a4]:slli a1, a0, 6<br> [0x800002a8]:sw a1, 36(ra)<br>     |
|  34|[0x80002094]<br>0x40000000|- rs1_val == 33554432<br>                                                                                                                                                |[0x800002b0]:slli a1, a0, 5<br> [0x800002b4]:sw a1, 40(ra)<br>     |
|  35|[0x80002098]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                                                |[0x800002bc]:slli a1, a0, 17<br> [0x800002c0]:sw a1, 44(ra)<br>    |
|  36|[0x8000209c]<br>0x08000000|- rs1_val == 134217728<br>                                                                                                                                               |[0x800002c8]:slli a1, a0, 0<br> [0x800002cc]:sw a1, 48(ra)<br>     |
|  37|[0x800020a0]<br>0x80000000|- rs1_val == 268435456<br>                                                                                                                                               |[0x800002d4]:slli a1, a0, 3<br> [0x800002d8]:sw a1, 52(ra)<br>     |
|  38|[0x800020a4]<br>0x00000000|- rs1_val == 536870912<br>                                                                                                                                               |[0x800002e0]:slli a1, a0, 12<br> [0x800002e4]:sw a1, 56(ra)<br>    |
|  39|[0x800020a8]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                                              |[0x800002ec]:slli a1, a0, 11<br> [0x800002f0]:sw a1, 60(ra)<br>    |
|  40|[0x800020ac]<br>0xFFFF8000|- rs1_val == -2<br>                                                                                                                                                      |[0x800002f8]:slli a1, a0, 14<br> [0x800002fc]:sw a1, 64(ra)<br>    |
|  41|[0x800020b0]<br>0xFFFFFFFA|- rs1_val == -3<br>                                                                                                                                                      |[0x80000304]:slli a1, a0, 1<br> [0x80000308]:sw a1, 68(ra)<br>     |
|  42|[0x800020b4]<br>0xFFFFFD80|- rs1_val == -5<br>                                                                                                                                                      |[0x80000310]:slli a1, a0, 7<br> [0x80000314]:sw a1, 72(ra)<br>     |
|  43|[0x800020b8]<br>0xFFFFDC00|- rs1_val == -9<br> - imm_val == 10<br>                                                                                                                                  |[0x8000031c]:slli a1, a0, 10<br> [0x80000320]:sw a1, 76(ra)<br>    |
|  44|[0x800020bc]<br>0xFFDE0000|- rs1_val == -17<br>                                                                                                                                                     |[0x80000328]:slli a1, a0, 17<br> [0x8000032c]:sw a1, 80(ra)<br>    |
|  45|[0x800020c0]<br>0xFFF7C000|- rs1_val == -33<br>                                                                                                                                                     |[0x80000334]:slli a1, a0, 14<br> [0x80000338]:sw a1, 84(ra)<br>    |
|  46|[0x800020c4]<br>0xFDF80000|- rs1_val == -65<br>                                                                                                                                                     |[0x80000340]:slli a1, a0, 19<br> [0x80000344]:sw a1, 88(ra)<br>    |
|  47|[0x800020c8]<br>0xFF7F0000|- rs1_val == -129<br>                                                                                                                                                    |[0x8000034c]:slli a1, a0, 16<br> [0x80000350]:sw a1, 92(ra)<br>    |
|  48|[0x800020cc]<br>0xFFF7F800|- rs1_val == -257<br>                                                                                                                                                    |[0x80000358]:slli a1, a0, 11<br> [0x8000035c]:sw a1, 96(ra)<br>    |
|  49|[0x800020d0]<br>0xFBFE0000|- rs1_val == -513<br>                                                                                                                                                    |[0x80000364]:slli a1, a0, 17<br> [0x80000368]:sw a1, 100(ra)<br>   |
|  50|[0x800020d4]<br>0xFFFDFF80|- rs1_val == -1025<br>                                                                                                                                                   |[0x80000370]:slli a1, a0, 7<br> [0x80000374]:sw a1, 104(ra)<br>    |
|  51|[0x800020d8]<br>0xFBFF8000|- rs1_val == -2049<br>                                                                                                                                                   |[0x80000380]:slli a1, a0, 15<br> [0x80000384]:sw a1, 108(ra)<br>   |
|  52|[0x800020dc]<br>0xFFBFFC00|- rs1_val == -4097<br>                                                                                                                                                   |[0x80000390]:slli a1, a0, 10<br> [0x80000394]:sw a1, 112(ra)<br>   |
|  53|[0x800020e0]<br>0xFFF7FFC0|- rs1_val == -8193<br>                                                                                                                                                   |[0x800003a0]:slli a1, a0, 6<br> [0x800003a4]:sw a1, 116(ra)<br>    |
|  54|[0x800020e4]<br>0xFFFEFFFC|- rs1_val == -16385<br>                                                                                                                                                  |[0x800003b0]:slli a1, a0, 2<br> [0x800003b4]:sw a1, 120(ra)<br>    |
|  55|[0x800020e8]<br>0xFFFBFFF8|- rs1_val == -32769<br>                                                                                                                                                  |[0x800003c0]:slli a1, a0, 3<br> [0x800003c4]:sw a1, 124(ra)<br>    |
|  56|[0x800020ec]<br>0xE0000000|- rs1_val == -131073<br>                                                                                                                                                 |[0x800003d0]:slli a1, a0, 29<br> [0x800003d4]:sw a1, 128(ra)<br>   |
|  57|[0x800020f0]<br>0xE0000000|- rs1_val == -262145<br>                                                                                                                                                 |[0x800003e0]:slli a1, a0, 29<br> [0x800003e4]:sw a1, 132(ra)<br>   |
|  58|[0x800020f4]<br>0x7FFFF000|- rs1_val == -524289<br>                                                                                                                                                 |[0x800003f0]:slli a1, a0, 12<br> [0x800003f4]:sw a1, 136(ra)<br>   |
|  59|[0x800020f8]<br>0xF7FFFFC0|- rs1_val == -2097153<br>                                                                                                                                                |[0x80000400]:slli a1, a0, 6<br> [0x80000404]:sw a1, 140(ra)<br>    |
|  60|[0x800020fc]<br>0xFFF80000|- rs1_val == -8388609<br>                                                                                                                                                |[0x80000410]:slli a1, a0, 19<br> [0x80000414]:sw a1, 144(ra)<br>   |
|  61|[0x80002100]<br>0xFFFE0000|- rs1_val == -16777217<br>                                                                                                                                               |[0x80000420]:slli a1, a0, 17<br> [0x80000424]:sw a1, 148(ra)<br>   |
|  62|[0x80002104]<br>0xFFFF8000|- rs1_val == -33554433<br>                                                                                                                                               |[0x80000430]:slli a1, a0, 15<br> [0x80000434]:sw a1, 152(ra)<br>   |
|  63|[0x80002108]<br>0xFFFFE000|- rs1_val == -67108865<br>                                                                                                                                               |[0x80000440]:slli a1, a0, 13<br> [0x80000444]:sw a1, 156(ra)<br>   |
|  64|[0x8000210c]<br>0xFFFFC000|- rs1_val == -134217729<br>                                                                                                                                              |[0x80000450]:slli a1, a0, 14<br> [0x80000454]:sw a1, 160(ra)<br>   |
|  65|[0x80002110]<br>0xFFFFFF80|- rs1_val == -268435457<br>                                                                                                                                              |[0x80000460]:slli a1, a0, 7<br> [0x80000464]:sw a1, 164(ra)<br>    |
|  66|[0x80002114]<br>0xFFFFF800|- rs1_val == -536870913<br>                                                                                                                                              |[0x80000470]:slli a1, a0, 11<br> [0x80000474]:sw a1, 168(ra)<br>   |
|  67|[0x80002118]<br>0xAAAA0000|- rs1_val == 1431655765<br> - rs1_val==1431655765<br>                                                                                                                    |[0x80000480]:slli a1, a0, 17<br> [0x80000484]:sw a1, 172(ra)<br>   |
|  68|[0x8000211c]<br>0x55000000|- rs1_val == -1431655766<br> - rs1_val==-1431655766<br>                                                                                                                  |[0x80000490]:slli a1, a0, 23<br> [0x80000494]:sw a1, 176(ra)<br>   |
|  69|[0x80002120]<br>0x00180000|- rs1_val==3<br>                                                                                                                                                         |[0x8000049c]:slli a1, a0, 19<br> [0x800004a0]:sw a1, 180(ra)<br>   |
|  70|[0x80002124]<br>0x0000000A|- rs1_val==5<br>                                                                                                                                                         |[0x800004a8]:slli a1, a0, 1<br> [0x800004ac]:sw a1, 184(ra)<br>    |
|  71|[0x80002128]<br>0x99999998|- rs1_val==858993459<br>                                                                                                                                                 |[0x800004b8]:slli a1, a0, 3<br> [0x800004bc]:sw a1, 188(ra)<br>    |
|  72|[0x8000212c]<br>0xFFD2BF00|- rs1_val==-46340<br>                                                                                                                                                    |[0x800004c8]:slli a1, a0, 6<br> [0x800004cc]:sw a1, 192(ra)<br>    |
|  73|[0x80002130]<br>0x33800000|- rs1_val==1717986919<br>                                                                                                                                                |[0x800004d8]:slli a1, a0, 23<br> [0x800004dc]:sw a1, 196(ra)<br>   |
|  74|[0x80002134]<br>0xFFD2BF40|- rs1_val==-46339<br>                                                                                                                                                    |[0x800004e8]:slli a1, a0, 6<br> [0x800004ec]:sw a1, 200(ra)<br>    |
|  75|[0x80002138]<br>0x80000000|- rs1_val==46341<br>                                                                                                                                                     |[0x800004f8]:slli a1, a0, 31<br> [0x800004fc]:sw a1, 204(ra)<br>   |
|  76|[0x8000213c]<br>0x33333320|- rs1_val==858993458<br> - imm_val == 4<br>                                                                                                                              |[0x80000508]:slli a1, a0, 4<br> [0x8000050c]:sw a1, 208(ra)<br>    |
|  77|[0x80002140]<br>0x80000000|- imm_val == 30<br>                                                                                                                                                      |[0x80000514]:slli a1, a0, 30<br> [0x80000518]:sw a1, 212(ra)<br>   |
|  78|[0x80002144]<br>0x005A8200|- rs1_val==46340<br>                                                                                                                                                     |[0x80000524]:slli a1, a0, 7<br> [0x80000528]:sw a1, 216(ra)<br>    |
|  79|[0x80002148]<br>0xEFFFFF00|- rs1_val == -1048577<br>                                                                                                                                                |[0x80000534]:slli a1, a0, 8<br> [0x80000538]:sw a1, 220(ra)<br>    |
|  80|[0x8000214c]<br>0xAAAAAAA0|- rs1_val==1431655764<br>                                                                                                                                                |[0x80000544]:slli a1, a0, 3<br> [0x80000548]:sw a1, 224(ra)<br>    |
|  81|[0x80002150]<br>0x66650000|- rs1_val==1717986917<br>                                                                                                                                                |[0x80000554]:slli a1, a0, 16<br> [0x80000558]:sw a1, 228(ra)<br>   |
|  82|[0x80002154]<br>0xB5030000|- rs1_val==46339<br>                                                                                                                                                     |[0x80000564]:slli a1, a0, 16<br> [0x80000568]:sw a1, 232(ra)<br>   |
|  83|[0x80002158]<br>0xAB000000|- rs1_val==1431655766<br>                                                                                                                                                |[0x80000574]:slli a1, a0, 23<br> [0x80000578]:sw a1, 236(ra)<br>   |
|  84|[0x8000215c]<br>0xAAAAC000|- rs1_val==-1431655765<br>                                                                                                                                               |[0x80000584]:slli a1, a0, 14<br> [0x80000588]:sw a1, 240(ra)<br>   |
|  85|[0x80002160]<br>0x80000000|- rs1_val==6<br>                                                                                                                                                         |[0x80000590]:slli a1, a0, 30<br> [0x80000594]:sw a1, 244(ra)<br>   |
|  86|[0x80002164]<br>0x80000000|- rs1_val==858993460<br>                                                                                                                                                 |[0x800005a0]:slli a1, a0, 29<br> [0x800005a4]:sw a1, 248(ra)<br>   |
|  87|[0x8000216c]<br>0x00020000|- rs1_val == 65536<br>                                                                                                                                                   |[0x800005b8]:slli a1, a0, 1<br> [0x800005bc]:sw a1, 256(ra)<br>    |
