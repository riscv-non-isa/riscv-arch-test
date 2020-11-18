
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
| SIG_REGION                | [('0x80002204', '0x80002284', '32 words')]      |
| COV_LABELS                | lb-align      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/lb-align-01.S/lb-align-01.S    |
| Total Number of coverpoints| 85     |
| Total Coverpoints Hit     | 85      |
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

|s.no|        signature         |                                                         coverpoints                                                         |                                                                   code                                                                    |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002204]<br>0xFFFFFFFE|- opcode : lb<br> - rs1 : x31<br> - rd : x2<br> - rs1 != rd<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val > 0<br> |[0x80000108]:lb sp, 64(t6)<br> [0x8000010c]:addi zero, zero, 0<br> [0x80000110]:addi zero, zero, 0<br> [0x80000114]:sw sp, 0(a3)<br>       |
|   2|[0x80002208]<br>0xFFFFFFFE|- rs1 : x29<br> - rd : x29<br> - rs1 == rd<br> - ea_align == 0 and (imm_val % 4) == 1<br>                                    |[0x80000120]:lb t4, 9(t4)<br> [0x80000124]:addi zero, zero, 0<br> [0x80000128]:addi zero, zero, 0<br> [0x8000012c]:sw t4, 4(a3)<br>        |
|   3|[0x8000220c]<br>0xFFFFFFFE|- rs1 : x4<br> - rd : x10<br> - ea_align == 0 and (imm_val % 4) == 2<br>                                                     |[0x80000138]:lb a0, 2(tp)<br> [0x8000013c]:addi zero, zero, 0<br> [0x80000140]:addi zero, zero, 0<br> [0x80000144]:sw a0, 8(a3)<br>        |
|   4|[0x80002210]<br>0xFFFFFFFE|- rs1 : x22<br> - rd : x11<br> - ea_align == 0 and (imm_val % 4) == 3<br>                                                    |[0x80000150]:lb a1, 3(s6)<br> [0x80000154]:addi zero, zero, 0<br> [0x80000158]:addi zero, zero, 0<br> [0x8000015c]:sw a1, 12(a3)<br>       |
|   5|[0x80002214]<br>0xFFFFFFBE|- rs1 : x20<br> - rd : x21<br> - ea_align == 2 and (imm_val % 4) == 0<br>                                                    |[0x80000168]:lb s5, 8(s4)<br> [0x8000016c]:addi zero, zero, 0<br> [0x80000170]:addi zero, zero, 0<br> [0x80000174]:sw s5, 16(a3)<br>       |
|   6|[0x80002218]<br>0xFFFFFFBE|- rs1 : x12<br> - rd : x9<br> - ea_align == 2 and (imm_val % 4) == 1<br> - imm_val < 0<br>                                   |[0x80000180]:lb s1, 4093(a2)<br> [0x80000184]:addi zero, zero, 0<br> [0x80000188]:addi zero, zero, 0<br> [0x8000018c]:sw s1, 20(a3)<br>    |
|   7|[0x8000221c]<br>0xFFFFFFBE|- rs1 : x2<br> - rd : x1<br> - ea_align == 2 and (imm_val % 4) == 2<br>                                                      |[0x80000198]:lb ra, 4086(sp)<br> [0x8000019c]:addi zero, zero, 0<br> [0x800001a0]:addi zero, zero, 0<br> [0x800001a4]:sw ra, 24(a3)<br>    |
|   8|[0x80002220]<br>0xFFFFFFBE|- rs1 : x17<br> - rd : x18<br> - ea_align == 2 and (imm_val % 4) == 3<br>                                                    |[0x800001b0]:lb s2, 3(a7)<br> [0x800001b4]:addi zero, zero, 0<br> [0x800001b8]:addi zero, zero, 0<br> [0x800001bc]:sw s2, 28(a3)<br>       |
|   9|[0x80002224]<br>0xFFFFFFCA|- rs1 : x11<br> - rd : x17<br> - ea_align == 1 and (imm_val % 4) == 0<br>                                                    |[0x800001c8]:lb a7, 32(a1)<br> [0x800001cc]:addi zero, zero, 0<br> [0x800001d0]:addi zero, zero, 0<br> [0x800001d4]:sw a7, 32(a3)<br>      |
|  10|[0x80002228]<br>0xFFFFFFCA|- rs1 : x15<br> - rd : x31<br> - ea_align == 1 and (imm_val % 4) == 1<br>                                                    |[0x800001e0]:lb t6, 1(a5)<br> [0x800001e4]:addi zero, zero, 0<br> [0x800001e8]:addi zero, zero, 0<br> [0x800001ec]:sw t6, 36(a3)<br>       |
|  11|[0x8000222c]<br>0xFFFFFFFE|- rs1 : x6<br> - rd : x7<br> - imm_val == 0<br>                                                                              |[0x800001f8]:lb t2, 0(t1)<br> [0x800001fc]:addi zero, zero, 0<br> [0x80000200]:addi zero, zero, 0<br> [0x80000204]:sw t2, 40(a3)<br>       |
|  12|[0x80002230]<br>0xFFFFFFCA|- rs1 : x23<br> - rd : x15<br> - ea_align == 1 and (imm_val % 4) == 2<br>                                                    |[0x80000210]:lb a5, 6(s7)<br> [0x80000214]:addi zero, zero, 0<br> [0x80000218]:addi zero, zero, 0<br> [0x8000021c]:sw a5, 44(a3)<br>       |
|  13|[0x80002234]<br>0xFFFFFFCA|- rs1 : x30<br> - rd : x26<br> - ea_align == 1 and (imm_val % 4) == 3<br>                                                    |[0x80000228]:lb s10, 3(t5)<br> [0x8000022c]:addi zero, zero, 0<br> [0x80000230]:addi zero, zero, 0<br> [0x80000234]:sw s10, 48(a3)<br>     |
|  14|[0x80002238]<br>0xFFFFFFBA|- rs1 : x28<br> - rd : x3<br> - ea_align == 3 and (imm_val % 4) == 0<br>                                                     |[0x80000240]:lb gp, 4(t3)<br> [0x80000244]:addi zero, zero, 0<br> [0x80000248]:addi zero, zero, 0<br> [0x8000024c]:sw gp, 52(a3)<br>       |
|  15|[0x8000223c]<br>0xFFFFFFBA|- rs1 : x7<br> - rd : x22<br> - ea_align == 3 and (imm_val % 4) == 1<br>                                                     |[0x80000258]:lb s6, 4089(t2)<br> [0x8000025c]:addi zero, zero, 0<br> [0x80000260]:addi zero, zero, 0<br> [0x80000264]:sw s6, 56(a3)<br>    |
|  16|[0x80002240]<br>0xFFFFFFBA|- rs1 : x18<br> - rd : x25<br> - ea_align == 3 and (imm_val % 4) == 2<br>                                                    |[0x80000270]:lb s9, 6(s2)<br> [0x80000274]:addi zero, zero, 0<br> [0x80000278]:addi zero, zero, 0<br> [0x8000027c]:sw s9, 60(a3)<br>       |
|  17|[0x80002244]<br>0xFFFFFFBA|- rs1 : x19<br> - rd : x8<br> - ea_align == 3 and (imm_val % 4) == 3<br>                                                     |[0x80000288]:lb fp, 1023(s3)<br> [0x8000028c]:addi zero, zero, 0<br> [0x80000290]:addi zero, zero, 0<br> [0x80000294]:sw fp, 64(a3)<br>    |
|  18|[0x80002248]<br>0xFFFFFFFE|- rs1 : x1<br> - rd : x30<br>                                                                                                |[0x800002a0]:lb t5, 2048(ra)<br> [0x800002a4]:addi zero, zero, 0<br> [0x800002a8]:addi zero, zero, 0<br> [0x800002ac]:sw t5, 68(a3)<br>    |
|  19|[0x8000224c]<br>0xFFFFFFFE|- rs1 : x26<br> - rd : x14<br>                                                                                               |[0x800002b8]:lb a4, 2048(s10)<br> [0x800002bc]:addi zero, zero, 0<br> [0x800002c0]:addi zero, zero, 0<br> [0x800002c4]:sw a4, 72(a3)<br>   |
|  20|[0x80002250]<br>0xFFFFFFFE|- rs1 : x5<br> - rd : x27<br>                                                                                                |[0x800002d0]:lb s11, 2048(t0)<br> [0x800002d4]:addi zero, zero, 0<br> [0x800002d8]:addi zero, zero, 0<br> [0x800002dc]:sw s11, 76(a3)<br>  |
|  21|[0x80002254]<br>0xFFFFFFFE|- rs1 : x16<br> - rd : x6<br>                                                                                                |[0x800002f0]:lb t1, 2048(a6)<br> [0x800002f4]:addi zero, zero, 0<br> [0x800002f8]:addi zero, zero, 0<br> [0x800002fc]:sw t1, 0(ra)<br>     |
|  22|[0x80002258]<br>0xFFFFFFFE|- rs1 : x25<br> - rd : x13<br>                                                                                               |[0x80000308]:lb a3, 2048(s9)<br> [0x8000030c]:addi zero, zero, 0<br> [0x80000310]:addi zero, zero, 0<br> [0x80000314]:sw a3, 4(ra)<br>     |
|  23|[0x8000225c]<br>0x00000000|- rs1 : x10<br> - rd : x0<br>                                                                                                |[0x80000320]:lb zero, 2048(a0)<br> [0x80000324]:addi zero, zero, 0<br> [0x80000328]:addi zero, zero, 0<br> [0x8000032c]:sw zero, 8(ra)<br> |
|  24|[0x80002260]<br>0xFFFFFFFE|- rs1 : x9<br> - rd : x16<br>                                                                                                |[0x80000338]:lb a6, 2048(s1)<br> [0x8000033c]:addi zero, zero, 0<br> [0x80000340]:addi zero, zero, 0<br> [0x80000344]:sw a6, 12(ra)<br>    |
|  25|[0x80002264]<br>0xFFFFFFFE|- rs1 : x24<br> - rd : x28<br>                                                                                               |[0x80000350]:lb t3, 2048(s8)<br> [0x80000354]:addi zero, zero, 0<br> [0x80000358]:addi zero, zero, 0<br> [0x8000035c]:sw t3, 16(ra)<br>    |
|  26|[0x80002268]<br>0xFFFFFFFE|- rs1 : x3<br> - rd : x5<br>                                                                                                 |[0x80000368]:lb t0, 2048(gp)<br> [0x8000036c]:addi zero, zero, 0<br> [0x80000370]:addi zero, zero, 0<br> [0x80000374]:sw t0, 20(ra)<br>    |
|  27|[0x8000226c]<br>0xFFFFFFFE|- rs1 : x8<br> - rd : x4<br>                                                                                                 |[0x80000380]:lb tp, 2048(fp)<br> [0x80000384]:addi zero, zero, 0<br> [0x80000388]:addi zero, zero, 0<br> [0x8000038c]:sw tp, 24(ra)<br>    |
|  28|[0x80002270]<br>0xFFFFFFFE|- rs1 : x13<br> - rd : x12<br>                                                                                               |[0x80000398]:lb a2, 2048(a3)<br> [0x8000039c]:addi zero, zero, 0<br> [0x800003a0]:addi zero, zero, 0<br> [0x800003a4]:sw a2, 28(ra)<br>    |
|  29|[0x80002274]<br>0xFFFFFFFE|- rs1 : x14<br> - rd : x24<br>                                                                                               |[0x800003b0]:lb s8, 2048(a4)<br> [0x800003b4]:addi zero, zero, 0<br> [0x800003b8]:addi zero, zero, 0<br> [0x800003bc]:sw s8, 32(ra)<br>    |
|  30|[0x80002278]<br>0xFFFFFFFE|- rs1 : x27<br> - rd : x19<br>                                                                                               |[0x800003c8]:lb s3, 2048(s11)<br> [0x800003cc]:addi zero, zero, 0<br> [0x800003d0]:addi zero, zero, 0<br> [0x800003d4]:sw s3, 36(ra)<br>   |
|  31|[0x8000227c]<br>0xFFFFFFFE|- rs1 : x21<br> - rd : x23<br>                                                                                               |[0x800003e0]:lb s7, 2048(s5)<br> [0x800003e4]:addi zero, zero, 0<br> [0x800003e8]:addi zero, zero, 0<br> [0x800003ec]:sw s7, 40(ra)<br>    |
|  32|[0x80002280]<br>0xFFFFFFFE|- rd : x20<br>                                                                                                               |[0x800003f8]:lb s4, 2048(t0)<br> [0x800003fc]:addi zero, zero, 0<br> [0x80000400]:addi zero, zero, 0<br> [0x80000404]:sw s4, 44(ra)<br>    |
