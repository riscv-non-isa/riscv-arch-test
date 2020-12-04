
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
| COV_LABELS                | lhu-align      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/lhu-align-01.S/lhu-align-01.S    |
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

|s.no|        signature         |                                                          coverpoints                                                          |                                                                    code                                                                     |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002010]<br>0x0000CAFE|- opcode : lhu<br> - rs1 : x31<br> - rd : x26<br> - rs1 != rd<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val < 0<br> |[0x80000108]:lhu s10, 4088(t6)<br> [0x8000010c]:addi zero, zero, 0<br> [0x80000110]:addi zero, zero, 0<br> [0x80000114]:sw s10, 0(sp)<br>    |
|   2|[0x80002014]<br>0x0000CAFE|- rs1 : x15<br> - rd : x15<br> - rs1 == rd<br> - ea_align == 0 and (imm_val % 4) == 1<br> - imm_val > 0<br>                    |[0x80000120]:lhu a5, 1(a5)<br> [0x80000124]:addi zero, zero, 0<br> [0x80000128]:addi zero, zero, 0<br> [0x8000012c]:sw a5, 4(sp)<br>         |
|   3|[0x80002018]<br>0x0000CAFE|- rs1 : x10<br> - rd : x29<br> - ea_align == 0 and (imm_val % 4) == 2<br>                                                      |[0x80000138]:lhu t4, 4094(a0)<br> [0x8000013c]:addi zero, zero, 0<br> [0x80000140]:addi zero, zero, 0<br> [0x80000144]:sw t4, 8(sp)<br>      |
|   4|[0x8000201c]<br>0x0000CAFE|- rs1 : x1<br> - rd : x20<br> - ea_align == 0 and (imm_val % 4) == 3<br>                                                       |[0x80000150]:lhu s4, 2047(ra)<br> [0x80000154]:addi zero, zero, 0<br> [0x80000158]:addi zero, zero, 0<br> [0x8000015c]:sw s4, 12(sp)<br>     |
|   5|[0x80002020]<br>0x0000BABE|- rs1 : x26<br> - rd : x22<br> - ea_align == 2 and (imm_val % 4) == 0<br>                                                      |[0x80000168]:lhu s6, 64(s10)<br> [0x8000016c]:addi zero, zero, 0<br> [0x80000170]:addi zero, zero, 0<br> [0x80000174]:sw s6, 16(sp)<br>      |
|   6|[0x80002024]<br>0x0000CAFE|- rs1 : x13<br> - rd : x28<br> - imm_val == 0<br>                                                                              |[0x80000180]:lhu t3, 0(a3)<br> [0x80000184]:addi zero, zero, 0<br> [0x80000188]:addi zero, zero, 0<br> [0x8000018c]:sw t3, 20(sp)<br>        |
|   7|[0x80002028]<br>0x0000BABE|- rs1 : x3<br> - rd : x4<br> - ea_align == 2 and (imm_val % 4) == 1<br>                                                        |[0x80000198]:lhu tp, 5(gp)<br> [0x8000019c]:addi zero, zero, 0<br> [0x800001a0]:addi zero, zero, 0<br> [0x800001a4]:sw tp, 24(sp)<br>        |
|   8|[0x8000202c]<br>0x0000BABE|- rs1 : x27<br> - rd : x25<br> - ea_align == 2 and (imm_val % 4) == 2<br>                                                      |[0x800001b0]:lhu s9, 2(s11)<br> [0x800001b4]:addi zero, zero, 0<br> [0x800001b8]:addi zero, zero, 0<br> [0x800001bc]:sw s9, 28(sp)<br>       |
|   9|[0x80002030]<br>0x0000BABE|- rs1 : x5<br> - rd : x18<br> - ea_align == 2 and (imm_val % 4) == 3<br>                                                       |[0x800001c8]:lhu s2, 3583(t0)<br> [0x800001cc]:addi zero, zero, 0<br> [0x800001d0]:addi zero, zero, 0<br> [0x800001d4]:sw s2, 32(sp)<br>     |
|  10|[0x80002034]<br>0x0000CAFE|- rs1 : x23<br> - rd : x19<br>                                                                                                 |[0x800001e0]:lhu s3, 2048(s7)<br> [0x800001e4]:addi zero, zero, 0<br> [0x800001e8]:addi zero, zero, 0<br> [0x800001ec]:sw s3, 36(sp)<br>     |
|  11|[0x80002038]<br>0x0000CAFE|- rs1 : x18<br> - rd : x9<br>                                                                                                  |[0x800001f8]:lhu s1, 2048(s2)<br> [0x800001fc]:addi zero, zero, 0<br> [0x80000200]:addi zero, zero, 0<br> [0x80000204]:sw s1, 40(sp)<br>     |
|  12|[0x8000203c]<br>0x00000000|- rs1 : x14<br> - rd : x0<br>                                                                                                  |[0x80000210]:lhu zero, 2048(a4)<br> [0x80000214]:addi zero, zero, 0<br> [0x80000218]:addi zero, zero, 0<br> [0x8000021c]:sw zero, 44(sp)<br> |
|  13|[0x80002040]<br>0x0000CAFE|- rs1 : x22<br> - rd : x17<br>                                                                                                 |[0x80000228]:lhu a7, 2048(s6)<br> [0x8000022c]:addi zero, zero, 0<br> [0x80000230]:addi zero, zero, 0<br> [0x80000234]:sw a7, 48(sp)<br>     |
|  14|[0x80002044]<br>0x0000CAFE|- rs1 : x30<br> - rd : x1<br>                                                                                                  |[0x80000240]:lhu ra, 2048(t5)<br> [0x80000244]:addi zero, zero, 0<br> [0x80000248]:addi zero, zero, 0<br> [0x8000024c]:sw ra, 52(sp)<br>     |
|  15|[0x80002048]<br>0x0000CAFE|- rs1 : x21<br> - rd : x24<br>                                                                                                 |[0x80000258]:lhu s8, 2048(s5)<br> [0x8000025c]:addi zero, zero, 0<br> [0x80000260]:addi zero, zero, 0<br> [0x80000264]:sw s8, 56(sp)<br>     |
|  16|[0x8000204c]<br>0x0000CAFE|- rs1 : x25<br> - rd : x6<br>                                                                                                  |[0x80000270]:lhu t1, 2048(s9)<br> [0x80000274]:addi zero, zero, 0<br> [0x80000278]:addi zero, zero, 0<br> [0x8000027c]:sw t1, 60(sp)<br>     |
|  17|[0x80002050]<br>0x0000CAFE|- rs1 : x9<br> - rd : x12<br>                                                                                                  |[0x80000288]:lhu a2, 2048(s1)<br> [0x8000028c]:addi zero, zero, 0<br> [0x80000290]:addi zero, zero, 0<br> [0x80000294]:sw a2, 64(sp)<br>     |
|  18|[0x80002054]<br>0x0000CAFE|- rs1 : x19<br> - rd : x8<br>                                                                                                  |[0x800002a0]:lhu fp, 2048(s3)<br> [0x800002a4]:addi zero, zero, 0<br> [0x800002a8]:addi zero, zero, 0<br> [0x800002ac]:sw fp, 68(sp)<br>     |
|  19|[0x80002058]<br>0x0000CAFE|- rs1 : x28<br> - rd : x16<br>                                                                                                 |[0x800002b8]:lhu a6, 2048(t3)<br> [0x800002bc]:addi zero, zero, 0<br> [0x800002c0]:addi zero, zero, 0<br> [0x800002c4]:sw a6, 72(sp)<br>     |
|  20|[0x8000205c]<br>0x0000CAFE|- rs1 : x11<br> - rd : x14<br>                                                                                                 |[0x800002d8]:lhu a4, 2048(a1)<br> [0x800002dc]:addi zero, zero, 0<br> [0x800002e0]:addi zero, zero, 0<br> [0x800002e4]:sw a4, 0(ra)<br>      |
|  21|[0x80002060]<br>0x0000CAFE|- rs1 : x17<br> - rd : x21<br>                                                                                                 |[0x800002f0]:lhu s5, 2048(a7)<br> [0x800002f4]:addi zero, zero, 0<br> [0x800002f8]:addi zero, zero, 0<br> [0x800002fc]:sw s5, 4(ra)<br>      |
|  22|[0x80002064]<br>0x0000CAFE|- rs1 : x7<br> - rd : x3<br>                                                                                                   |[0x80000308]:lhu gp, 2048(t2)<br> [0x8000030c]:addi zero, zero, 0<br> [0x80000310]:addi zero, zero, 0<br> [0x80000314]:sw gp, 8(ra)<br>      |
|  23|[0x80002068]<br>0x0000CAFE|- rs1 : x16<br> - rd : x11<br>                                                                                                 |[0x80000320]:lhu a1, 2048(a6)<br> [0x80000324]:addi zero, zero, 0<br> [0x80000328]:addi zero, zero, 0<br> [0x8000032c]:sw a1, 12(ra)<br>     |
|  24|[0x8000206c]<br>0x0000CAFE|- rs1 : x12<br> - rd : x30<br>                                                                                                 |[0x80000338]:lhu t5, 2048(a2)<br> [0x8000033c]:addi zero, zero, 0<br> [0x80000340]:addi zero, zero, 0<br> [0x80000344]:sw t5, 16(ra)<br>     |
|  25|[0x80002070]<br>0x0000CAFE|- rs1 : x4<br> - rd : x23<br>                                                                                                  |[0x80000350]:lhu s7, 2048(tp)<br> [0x80000354]:addi zero, zero, 0<br> [0x80000358]:addi zero, zero, 0<br> [0x8000035c]:sw s7, 20(ra)<br>     |
|  26|[0x80002074]<br>0x0000CAFE|- rs1 : x6<br> - rd : x13<br>                                                                                                  |[0x80000368]:lhu a3, 2048(t1)<br> [0x8000036c]:addi zero, zero, 0<br> [0x80000370]:addi zero, zero, 0<br> [0x80000374]:sw a3, 24(ra)<br>     |
|  27|[0x80002078]<br>0x0000CAFE|- rs1 : x29<br> - rd : x7<br>                                                                                                  |[0x80000380]:lhu t2, 2048(t4)<br> [0x80000384]:addi zero, zero, 0<br> [0x80000388]:addi zero, zero, 0<br> [0x8000038c]:sw t2, 28(ra)<br>     |
|  28|[0x8000207c]<br>0x0000CAFE|- rs1 : x2<br> - rd : x27<br>                                                                                                  |[0x80000398]:lhu s11, 2048(sp)<br> [0x8000039c]:addi zero, zero, 0<br> [0x800003a0]:addi zero, zero, 0<br> [0x800003a4]:sw s11, 32(ra)<br>   |
|  29|[0x80002080]<br>0x0000CAFE|- rs1 : x24<br> - rd : x5<br>                                                                                                  |[0x800003b0]:lhu t0, 2048(s8)<br> [0x800003b4]:addi zero, zero, 0<br> [0x800003b8]:addi zero, zero, 0<br> [0x800003bc]:sw t0, 36(ra)<br>     |
|  30|[0x80002084]<br>0x0000CAFE|- rs1 : x8<br> - rd : x10<br>                                                                                                  |[0x800003c8]:lhu a0, 2048(fp)<br> [0x800003cc]:addi zero, zero, 0<br> [0x800003d0]:addi zero, zero, 0<br> [0x800003d4]:sw a0, 40(ra)<br>     |
|  31|[0x80002088]<br>0x0000CAFE|- rs1 : x20<br> - rd : x31<br>                                                                                                 |[0x800003e0]:lhu t6, 2048(s4)<br> [0x800003e4]:addi zero, zero, 0<br> [0x800003e8]:addi zero, zero, 0<br> [0x800003ec]:sw t6, 44(ra)<br>     |
|  32|[0x8000208c]<br>0x0000CAFE|- rd : x2<br>                                                                                                                  |[0x800003f8]:lhu sp, 2048(t1)<br> [0x800003fc]:addi zero, zero, 0<br> [0x80000400]:addi zero, zero, 0<br> [0x80000404]:sw sp, 48(ra)<br>     |
