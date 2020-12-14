
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
| COV_LABELS                | lw-align      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/lw-align-01.S/lw-align-01.S    |
| Total Number of coverpoints| 73     |
| Total Coverpoints Hit     | 73      |
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

|s.no|        signature         |                                                         coverpoints                                                         |                                                                    code                                                                    |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002010]<br>0xBABECAFE|- opcode : lw<br> - rs1 : x19<br> - rd : x3<br> - rs1 != rd<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val > 0<br> |[0x80000108]:lw gp, 16(s3)<br> [0x8000010c]:addi zero, zero, 0<br> [0x80000110]:addi zero, zero, 0<br> [0x80000114]:sw gp, 0(t2)<br>        |
|   2|[0x80002014]<br>0xBABECAFE|- rs1 : x15<br> - rd : x15<br> - rs1 == rd<br> - ea_align == 0 and (imm_val % 4) == 1<br>                                    |[0x80000120]:lw a5, 1(a5)<br> [0x80000124]:addi zero, zero, 0<br> [0x80000128]:addi zero, zero, 0<br> [0x8000012c]:sw a5, 4(t2)<br>         |
|   3|[0x80002018]<br>0xBABECAFE|- rs1 : x31<br> - rd : x17<br> - ea_align == 0 and (imm_val % 4) == 2<br> - imm_val < 0<br>                                  |[0x80000138]:lw a7, 2730(t6)<br> [0x8000013c]:addi zero, zero, 0<br> [0x80000140]:addi zero, zero, 0<br> [0x80000144]:sw a7, 8(t2)<br>      |
|   4|[0x8000201c]<br>0xBABECAFE|- rs1 : x16<br> - rd : x2<br> - ea_align == 0 and (imm_val % 4) == 3<br>                                                     |[0x80000150]:lw sp, 3071(a6)<br> [0x80000154]:addi zero, zero, 0<br> [0x80000158]:addi zero, zero, 0<br> [0x8000015c]:sw sp, 12(t2)<br>     |
|   5|[0x80002020]<br>0xBABECAFE|- rs1 : x14<br> - rd : x6<br> - imm_val == 0<br>                                                                             |[0x80000168]:lw t1, 0(a4)<br> [0x8000016c]:addi zero, zero, 0<br> [0x80000170]:addi zero, zero, 0<br> [0x80000174]:sw t1, 16(t2)<br>        |
|   6|[0x80002024]<br>0xBABECAFE|- rs1 : x1<br> - rd : x22<br>                                                                                                |[0x80000180]:lw s6, 2048(ra)<br> [0x80000184]:addi zero, zero, 0<br> [0x80000188]:addi zero, zero, 0<br> [0x8000018c]:sw s6, 20(t2)<br>     |
|   7|[0x80002028]<br>0xBABECAFE|- rs1 : x13<br> - rd : x4<br>                                                                                                |[0x80000198]:lw tp, 2048(a3)<br> [0x8000019c]:addi zero, zero, 0<br> [0x800001a0]:addi zero, zero, 0<br> [0x800001a4]:sw tp, 24(t2)<br>     |
|   8|[0x8000202c]<br>0xBABECAFE|- rs1 : x9<br> - rd : x5<br>                                                                                                 |[0x800001b0]:lw t0, 2048(s1)<br> [0x800001b4]:addi zero, zero, 0<br> [0x800001b8]:addi zero, zero, 0<br> [0x800001bc]:sw t0, 28(t2)<br>     |
|   9|[0x80002030]<br>0xBABECAFE|- rs1 : x8<br> - rd : x12<br>                                                                                                |[0x800001c8]:lw a2, 2048(fp)<br> [0x800001cc]:addi zero, zero, 0<br> [0x800001d0]:addi zero, zero, 0<br> [0x800001d4]:sw a2, 32(t2)<br>     |
|  10|[0x80002034]<br>0xBABECAFE|- rs1 : x12<br> - rd : x31<br>                                                                                               |[0x800001e0]:lw t6, 2048(a2)<br> [0x800001e4]:addi zero, zero, 0<br> [0x800001e8]:addi zero, zero, 0<br> [0x800001ec]:sw t6, 36(t2)<br>     |
|  11|[0x80002038]<br>0xBABECAFE|- rs1 : x26<br> - rd : x28<br>                                                                                               |[0x800001f8]:lw t3, 2048(s10)<br> [0x800001fc]:addi zero, zero, 0<br> [0x80000200]:addi zero, zero, 0<br> [0x80000204]:sw t3, 40(t2)<br>    |
|  12|[0x8000203c]<br>0xBABECAFE|- rs1 : x2<br> - rd : x14<br>                                                                                                |[0x80000210]:lw a4, 2048(sp)<br> [0x80000214]:addi zero, zero, 0<br> [0x80000218]:addi zero, zero, 0<br> [0x8000021c]:sw a4, 44(t2)<br>     |
|  13|[0x80002040]<br>0xBABECAFE|- rs1 : x5<br> - rd : x18<br>                                                                                                |[0x80000228]:lw s2, 2048(t0)<br> [0x8000022c]:addi zero, zero, 0<br> [0x80000230]:addi zero, zero, 0<br> [0x80000234]:sw s2, 48(t2)<br>     |
|  14|[0x80002044]<br>0xBABECAFE|- rs1 : x23<br> - rd : x13<br>                                                                                               |[0x80000240]:lw a3, 2048(s7)<br> [0x80000244]:addi zero, zero, 0<br> [0x80000248]:addi zero, zero, 0<br> [0x8000024c]:sw a3, 52(t2)<br>     |
|  15|[0x80002048]<br>0xBABECAFE|- rs1 : x22<br> - rd : x26<br>                                                                                               |[0x80000258]:lw s10, 2048(s6)<br> [0x8000025c]:addi zero, zero, 0<br> [0x80000260]:addi zero, zero, 0<br> [0x80000264]:sw s10, 56(t2)<br>   |
|  16|[0x8000204c]<br>0xBABECAFE|- rs1 : x10<br> - rd : x25<br>                                                                                               |[0x80000270]:lw s9, 2048(a0)<br> [0x80000274]:addi zero, zero, 0<br> [0x80000278]:addi zero, zero, 0<br> [0x8000027c]:sw s9, 60(t2)<br>     |
|  17|[0x80002050]<br>0xBABECAFE|- rs1 : x24<br> - rd : x20<br>                                                                                               |[0x80000288]:lw s4, 2048(s8)<br> [0x8000028c]:addi zero, zero, 0<br> [0x80000290]:addi zero, zero, 0<br> [0x80000294]:sw s4, 64(t2)<br>     |
|  18|[0x80002054]<br>0xBABECAFE|- rs1 : x20<br> - rd : x30<br>                                                                                               |[0x800002a0]:lw t5, 2048(s4)<br> [0x800002a4]:addi zero, zero, 0<br> [0x800002a8]:addi zero, zero, 0<br> [0x800002ac]:sw t5, 68(t2)<br>     |
|  19|[0x80002058]<br>0xBABECAFE|- rs1 : x4<br> - rd : x11<br>                                                                                                |[0x800002b8]:lw a1, 2048(tp)<br> [0x800002bc]:addi zero, zero, 0<br> [0x800002c0]:addi zero, zero, 0<br> [0x800002c4]:sw a1, 72(t2)<br>     |
|  20|[0x8000205c]<br>0xBABECAFE|- rs1 : x29<br> - rd : x21<br>                                                                                               |[0x800002d0]:lw s5, 2048(t4)<br> [0x800002d4]:addi zero, zero, 0<br> [0x800002d8]:addi zero, zero, 0<br> [0x800002dc]:sw s5, 76(t2)<br>     |
|  21|[0x80002060]<br>0xBABECAFE|- rs1 : x25<br> - rd : x19<br>                                                                                               |[0x800002f0]:lw s3, 2048(s9)<br> [0x800002f4]:addi zero, zero, 0<br> [0x800002f8]:addi zero, zero, 0<br> [0x800002fc]:sw s3, 0(sp)<br>      |
|  22|[0x80002064]<br>0xBABECAFE|- rs1 : x27<br> - rd : x29<br>                                                                                               |[0x80000308]:lw t4, 2048(s11)<br> [0x8000030c]:addi zero, zero, 0<br> [0x80000310]:addi zero, zero, 0<br> [0x80000314]:sw t4, 4(sp)<br>     |
|  23|[0x80002068]<br>0xBABECAFE|- rs1 : x7<br> - rd : x9<br>                                                                                                 |[0x80000320]:lw s1, 2048(t2)<br> [0x80000324]:addi zero, zero, 0<br> [0x80000328]:addi zero, zero, 0<br> [0x8000032c]:sw s1, 8(sp)<br>      |
|  24|[0x8000206c]<br>0xBABECAFE|- rs1 : x17<br> - rd : x8<br>                                                                                                |[0x80000338]:lw fp, 2048(a7)<br> [0x8000033c]:addi zero, zero, 0<br> [0x80000340]:addi zero, zero, 0<br> [0x80000344]:sw fp, 12(sp)<br>     |
|  25|[0x80002070]<br>0x00000000|- rs1 : x18<br> - rd : x0<br>                                                                                                |[0x80000350]:lw zero, 2048(s2)<br> [0x80000354]:addi zero, zero, 0<br> [0x80000358]:addi zero, zero, 0<br> [0x8000035c]:sw zero, 16(sp)<br> |
|  26|[0x80002074]<br>0xBABECAFE|- rs1 : x28<br> - rd : x1<br>                                                                                                |[0x80000368]:lw ra, 2048(t3)<br> [0x8000036c]:addi zero, zero, 0<br> [0x80000370]:addi zero, zero, 0<br> [0x80000374]:sw ra, 20(sp)<br>     |
|  27|[0x80002078]<br>0xBABECAFE|- rs1 : x6<br> - rd : x10<br>                                                                                                |[0x80000380]:lw a0, 2048(t1)<br> [0x80000384]:addi zero, zero, 0<br> [0x80000388]:addi zero, zero, 0<br> [0x8000038c]:sw a0, 24(sp)<br>     |
|  28|[0x8000207c]<br>0xBABECAFE|- rs1 : x21<br> - rd : x24<br>                                                                                               |[0x80000398]:lw s8, 2048(s5)<br> [0x8000039c]:addi zero, zero, 0<br> [0x800003a0]:addi zero, zero, 0<br> [0x800003a4]:sw s8, 28(sp)<br>     |
|  29|[0x80002080]<br>0xBABECAFE|- rs1 : x30<br> - rd : x27<br>                                                                                               |[0x800003b0]:lw s11, 2048(t5)<br> [0x800003b4]:addi zero, zero, 0<br> [0x800003b8]:addi zero, zero, 0<br> [0x800003bc]:sw s11, 32(sp)<br>   |
|  30|[0x80002084]<br>0xBABECAFE|- rs1 : x3<br> - rd : x7<br>                                                                                                 |[0x800003c8]:lw t2, 2048(gp)<br> [0x800003cc]:addi zero, zero, 0<br> [0x800003d0]:addi zero, zero, 0<br> [0x800003d4]:sw t2, 36(sp)<br>     |
|  31|[0x80002088]<br>0xBABECAFE|- rs1 : x11<br> - rd : x16<br>                                                                                               |[0x800003e0]:lw a6, 2048(a1)<br> [0x800003e4]:addi zero, zero, 0<br> [0x800003e8]:addi zero, zero, 0<br> [0x800003ec]:sw a6, 40(sp)<br>     |
|  32|[0x8000208c]<br>0xBABECAFE|- rd : x23<br>                                                                                                               |[0x800003f8]:lw s7, 2048(s11)<br> [0x800003fc]:addi zero, zero, 0<br> [0x80000400]:addi zero, zero, 0<br> [0x80000404]:sw s7, 44(sp)<br>    |
