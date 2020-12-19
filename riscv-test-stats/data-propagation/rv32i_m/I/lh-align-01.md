
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000410')]      |
| SIG_REGION                | [('0x80002010', '0x80002090', '32 words')]      |
| COV_LABELS                | lh-align      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/lh-align-01.S/lh-align-01.S    |
| Total Number of coverpoints| 77     |
| Total Coverpoints Hit     | 77      |
| Total Signature Updates   | 32      |
| STAT1                     | 32      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


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

|s.no|        signature         |                                                         coverpoints                                                          |                                                                    code                                                                    |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002010]<br>0xFFFFCAFE|- opcode : lh<br> - rs1 : x21<br> - rd : x11<br> - rs1 != rd<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val > 0<br> |[0x80000108]:lh a1, 256(s5)<br> [0x8000010c]:addi zero, zero, 0<br> [0x80000110]:addi zero, zero, 0<br> [0x80000114]:sw a1, 0(gp)<br>       |
|   2|[0x80002014]<br>0xFFFFCAFE|- rs1 : x31<br> - rd : x31<br> - rs1 == rd<br> - ea_align == 0 and (imm_val % 4) == 1<br>                                     |[0x80000120]:lh t6, 5(t6)<br> [0x80000124]:addi zero, zero, 0<br> [0x80000128]:addi zero, zero, 0<br> [0x8000012c]:sw t6, 4(gp)<br>         |
|   3|[0x80002018]<br>0xFFFFCAFE|- rs1 : x14<br> - rd : x1<br> - ea_align == 0 and (imm_val % 4) == 2<br> - imm_val < 0<br>                                    |[0x80000138]:lh ra, 2730(a4)<br> [0x8000013c]:addi zero, zero, 0<br> [0x80000140]:addi zero, zero, 0<br> [0x80000144]:sw ra, 8(gp)<br>      |
|   4|[0x8000201c]<br>0xFFFFCAFE|- rs1 : x6<br> - rd : x30<br> - ea_align == 0 and (imm_val % 4) == 3<br>                                                      |[0x80000150]:lh t5, 1023(t1)<br> [0x80000154]:addi zero, zero, 0<br> [0x80000158]:addi zero, zero, 0<br> [0x8000015c]:sw t5, 12(gp)<br>     |
|   5|[0x80002020]<br>0xFFFFBABE|- rs1 : x20<br> - rd : x13<br> - ea_align == 2 and (imm_val % 4) == 0<br>                                                     |[0x80000168]:lh a3, 32(s4)<br> [0x8000016c]:addi zero, zero, 0<br> [0x80000170]:addi zero, zero, 0<br> [0x80000174]:sw a3, 16(gp)<br>       |
|   6|[0x80002024]<br>0xFFFFCAFE|- rs1 : x9<br> - rd : x17<br> - imm_val == 0<br>                                                                              |[0x80000180]:lh a7, 0(s1)<br> [0x80000184]:addi zero, zero, 0<br> [0x80000188]:addi zero, zero, 0<br> [0x8000018c]:sw a7, 20(gp)<br>        |
|   7|[0x80002028]<br>0xFFFFBABE|- rs1 : x22<br> - rd : x19<br> - ea_align == 2 and (imm_val % 4) == 1<br>                                                     |[0x80000198]:lh s3, 1(s6)<br> [0x8000019c]:addi zero, zero, 0<br> [0x800001a0]:addi zero, zero, 0<br> [0x800001a4]:sw s3, 24(gp)<br>        |
|   8|[0x8000202c]<br>0xFFFFBABE|- rs1 : x18<br> - rd : x23<br> - ea_align == 2 and (imm_val % 4) == 2<br>                                                     |[0x800001b0]:lh s7, 4094(s2)<br> [0x800001b4]:addi zero, zero, 0<br> [0x800001b8]:addi zero, zero, 0<br> [0x800001bc]:sw s7, 28(gp)<br>     |
|   9|[0x80002030]<br>0xFFFFBABE|- rs1 : x27<br> - rd : x29<br> - ea_align == 2 and (imm_val % 4) == 3<br>                                                     |[0x800001c8]:lh t4, 4095(s11)<br> [0x800001cc]:addi zero, zero, 0<br> [0x800001d0]:addi zero, zero, 0<br> [0x800001d4]:sw t4, 32(gp)<br>    |
|  10|[0x80002034]<br>0xFFFFCAFE|- rs1 : x7<br> - rd : x16<br>                                                                                                 |[0x800001e0]:lh a6, 2048(t2)<br> [0x800001e4]:addi zero, zero, 0<br> [0x800001e8]:addi zero, zero, 0<br> [0x800001ec]:sw a6, 36(gp)<br>     |
|  11|[0x80002038]<br>0xFFFFCAFE|- rs1 : x12<br> - rd : x4<br>                                                                                                 |[0x800001f8]:lh tp, 2048(a2)<br> [0x800001fc]:addi zero, zero, 0<br> [0x80000200]:addi zero, zero, 0<br> [0x80000204]:sw tp, 40(gp)<br>     |
|  12|[0x8000203c]<br>0xFFFFCAFE|- rs1 : x24<br> - rd : x8<br>                                                                                                 |[0x80000210]:lh fp, 2048(s8)<br> [0x80000214]:addi zero, zero, 0<br> [0x80000218]:addi zero, zero, 0<br> [0x8000021c]:sw fp, 44(gp)<br>     |
|  13|[0x80002040]<br>0xFFFFCAFE|- rs1 : x29<br> - rd : x7<br>                                                                                                 |[0x80000228]:lh t2, 2048(t4)<br> [0x8000022c]:addi zero, zero, 0<br> [0x80000230]:addi zero, zero, 0<br> [0x80000234]:sw t2, 48(gp)<br>     |
|  14|[0x80002044]<br>0xFFFFCAFE|- rs1 : x5<br> - rd : x14<br>                                                                                                 |[0x80000240]:lh a4, 2048(t0)<br> [0x80000244]:addi zero, zero, 0<br> [0x80000248]:addi zero, zero, 0<br> [0x8000024c]:sw a4, 52(gp)<br>     |
|  15|[0x80002048]<br>0xFFFFCAFE|- rs1 : x8<br> - rd : x20<br>                                                                                                 |[0x80000258]:lh s4, 2048(fp)<br> [0x8000025c]:addi zero, zero, 0<br> [0x80000260]:addi zero, zero, 0<br> [0x80000264]:sw s4, 56(gp)<br>     |
|  16|[0x8000204c]<br>0xFFFFCAFE|- rs1 : x1<br> - rd : x27<br>                                                                                                 |[0x80000270]:lh s11, 2048(ra)<br> [0x80000274]:addi zero, zero, 0<br> [0x80000278]:addi zero, zero, 0<br> [0x8000027c]:sw s11, 60(gp)<br>   |
|  17|[0x80002050]<br>0xFFFFCAFE|- rs1 : x13<br> - rd : x28<br>                                                                                                |[0x80000288]:lh t3, 2048(a3)<br> [0x8000028c]:addi zero, zero, 0<br> [0x80000290]:addi zero, zero, 0<br> [0x80000294]:sw t3, 64(gp)<br>     |
|  18|[0x80002054]<br>0xFFFFCAFE|- rs1 : x26<br> - rd : x6<br>                                                                                                 |[0x800002a0]:lh t1, 2048(s10)<br> [0x800002a4]:addi zero, zero, 0<br> [0x800002a8]:addi zero, zero, 0<br> [0x800002ac]:sw t1, 68(gp)<br>    |
|  19|[0x80002058]<br>0xFFFFCAFE|- rs1 : x4<br> - rd : x2<br>                                                                                                  |[0x800002b8]:lh sp, 2048(tp)<br> [0x800002bc]:addi zero, zero, 0<br> [0x800002c0]:addi zero, zero, 0<br> [0x800002c4]:sw sp, 72(gp)<br>     |
|  20|[0x8000205c]<br>0xFFFFCAFE|- rs1 : x23<br> - rd : x21<br>                                                                                                |[0x800002d0]:lh s5, 2048(s7)<br> [0x800002d4]:addi zero, zero, 0<br> [0x800002d8]:addi zero, zero, 0<br> [0x800002dc]:sw s5, 76(gp)<br>     |
|  21|[0x80002060]<br>0xFFFFCAFE|- rs1 : x2<br> - rd : x26<br>                                                                                                 |[0x800002e8]:lh s10, 2048(sp)<br> [0x800002ec]:addi zero, zero, 0<br> [0x800002f0]:addi zero, zero, 0<br> [0x800002f4]:sw s10, 80(gp)<br>   |
|  22|[0x80002064]<br>0xFFFFCAFE|- rs1 : x25<br> - rd : x9<br>                                                                                                 |[0x80000300]:lh s1, 2048(s9)<br> [0x80000304]:addi zero, zero, 0<br> [0x80000308]:addi zero, zero, 0<br> [0x8000030c]:sw s1, 84(gp)<br>     |
|  23|[0x80002068]<br>0xFFFFCAFE|- rs1 : x30<br> - rd : x18<br>                                                                                                |[0x80000320]:lh s2, 2048(t5)<br> [0x80000324]:addi zero, zero, 0<br> [0x80000328]:addi zero, zero, 0<br> [0x8000032c]:sw s2, 0(ra)<br>      |
|  24|[0x8000206c]<br>0xFFFFCAFE|- rs1 : x10<br> - rd : x22<br>                                                                                                |[0x80000338]:lh s6, 2048(a0)<br> [0x8000033c]:addi zero, zero, 0<br> [0x80000340]:addi zero, zero, 0<br> [0x80000344]:sw s6, 4(ra)<br>      |
|  25|[0x80002070]<br>0xFFFFCAFE|- rs1 : x17<br> - rd : x15<br>                                                                                                |[0x80000350]:lh a5, 2048(a7)<br> [0x80000354]:addi zero, zero, 0<br> [0x80000358]:addi zero, zero, 0<br> [0x8000035c]:sw a5, 8(ra)<br>      |
|  26|[0x80002074]<br>0xFFFFCAFE|- rs1 : x15<br> - rd : x24<br>                                                                                                |[0x80000368]:lh s8, 2048(a5)<br> [0x8000036c]:addi zero, zero, 0<br> [0x80000370]:addi zero, zero, 0<br> [0x80000374]:sw s8, 12(ra)<br>     |
|  27|[0x80002078]<br>0xFFFFCAFE|- rs1 : x19<br> - rd : x12<br>                                                                                                |[0x80000380]:lh a2, 2048(s3)<br> [0x80000384]:addi zero, zero, 0<br> [0x80000388]:addi zero, zero, 0<br> [0x8000038c]:sw a2, 16(ra)<br>     |
|  28|[0x8000207c]<br>0xFFFFCAFE|- rs1 : x28<br> - rd : x10<br>                                                                                                |[0x80000398]:lh a0, 2048(t3)<br> [0x8000039c]:addi zero, zero, 0<br> [0x800003a0]:addi zero, zero, 0<br> [0x800003a4]:sw a0, 20(ra)<br>     |
|  29|[0x80002080]<br>0xFFFFCAFE|- rs1 : x11<br> - rd : x3<br>                                                                                                 |[0x800003b0]:lh gp, 2048(a1)<br> [0x800003b4]:addi zero, zero, 0<br> [0x800003b8]:addi zero, zero, 0<br> [0x800003bc]:sw gp, 24(ra)<br>     |
|  30|[0x80002084]<br>0xFFFFCAFE|- rs1 : x16<br> - rd : x25<br>                                                                                                |[0x800003c8]:lh s9, 2048(a6)<br> [0x800003cc]:addi zero, zero, 0<br> [0x800003d0]:addi zero, zero, 0<br> [0x800003d4]:sw s9, 28(ra)<br>     |
|  31|[0x80002088]<br>0xFFFFCAFE|- rs1 : x3<br> - rd : x5<br>                                                                                                  |[0x800003e0]:lh t0, 2048(gp)<br> [0x800003e4]:addi zero, zero, 0<br> [0x800003e8]:addi zero, zero, 0<br> [0x800003ec]:sw t0, 32(ra)<br>     |
|  32|[0x8000208c]<br>0x00000000|- rd : x0<br>                                                                                                                 |[0x800003f8]:lh zero, 2048(a7)<br> [0x800003fc]:addi zero, zero, 0<br> [0x80000400]:addi zero, zero, 0<br> [0x80000404]:sw zero, 36(ra)<br> |
