
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000420')]      |
| SIG_REGION                | [('0x80003204', '0x80003294', '36 words')]      |
| COV_LABELS                | lb-align      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/lb-align-01.S/lb-align-01.S    |
| Total Number of coverpoints| 85     |
| Total Coverpoints Hit     | 85      |
| Total Signature Updates   | 33      |
| STAT1                     | 32      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000410]:lb a1, 9(a0)
      [0x80000414]:addi zero, zero, 0
      [0x80000418]:addi zero, zero, 0
      [0x8000041c]:sw a1, 44(t0)
 -- Signature Address: 0x80003290 Data: 0xFFFFFFBA
 -- Redundant Coverpoints hit by the op
      - opcode : lb
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - ea_align == 3 and (imm_val % 4) == 1
      - imm_val > 0






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

|s.no|        signature         |                                                         coverpoints                                                          |                                                                   code                                                                   |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFFFFE|- opcode : lb<br> - rs1 : x18<br> - rd : x22<br> - rs1 != rd<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val > 0<br> |[0x80000108]:lb s6, 64(s2)<br> [0x8000010c]:addi zero, zero, 0<br> [0x80000110]:addi zero, zero, 0<br> [0x80000114]:sw s6, 0(ra)<br>      |
|   2|[0x80003214]<br>0xFFFFFFFE|- rs1 : x28<br> - rd : x28<br> - rs1 == rd<br> - ea_align == 0 and (imm_val % 4) == 1<br>                                     |[0x80000120]:lb t3, 9(t3)<br> [0x80000124]:addi zero, zero, 0<br> [0x80000128]:addi zero, zero, 0<br> [0x8000012c]:sw t3, 4(ra)<br>       |
|   3|[0x80003218]<br>0xFFFFFFFE|- rs1 : x17<br> - rd : x30<br> - ea_align == 0 and (imm_val % 4) == 2<br>                                                     |[0x80000138]:lb t5, 6(a7)<br> [0x8000013c]:addi zero, zero, 0<br> [0x80000140]:addi zero, zero, 0<br> [0x80000144]:sw t5, 8(ra)<br>       |
|   4|[0x8000321c]<br>0xFFFFFFFE|- rs1 : x7<br> - rd : x31<br> - ea_align == 0 and (imm_val % 4) == 3<br>                                                      |[0x80000150]:lb t6, 3(t2)<br> [0x80000154]:addi zero, zero, 0<br> [0x80000158]:addi zero, zero, 0<br> [0x8000015c]:sw t6, 12(ra)<br>      |
|   5|[0x80003220]<br>0xFFFFFFBE|- rs1 : x23<br> - rd : x2<br> - ea_align == 2 and (imm_val % 4) == 0<br>                                                      |[0x80000168]:lb sp, 8(s7)<br> [0x8000016c]:addi zero, zero, 0<br> [0x80000170]:addi zero, zero, 0<br> [0x80000174]:sw sp, 16(ra)<br>      |
|   6|[0x80003224]<br>0xFFFFFFBE|- rs1 : x21<br> - rd : x10<br> - ea_align == 2 and (imm_val % 4) == 1<br>                                                     |[0x80000180]:lb a0, 1(s5)<br> [0x80000184]:addi zero, zero, 0<br> [0x80000188]:addi zero, zero, 0<br> [0x8000018c]:sw a0, 20(ra)<br>      |
|   7|[0x80003228]<br>0xFFFFFFBE|- rs1 : x13<br> - rd : x8<br> - ea_align == 2 and (imm_val % 4) == 2<br>                                                      |[0x80000198]:lb fp, 6(a3)<br> [0x8000019c]:addi zero, zero, 0<br> [0x800001a0]:addi zero, zero, 0<br> [0x800001a4]:sw fp, 24(ra)<br>      |
|   8|[0x8000322c]<br>0xFFFFFFBE|- rs1 : x25<br> - rd : x14<br> - ea_align == 2 and (imm_val % 4) == 3<br>                                                     |[0x800001b0]:lb a4, 7(s9)<br> [0x800001b4]:addi zero, zero, 0<br> [0x800001b8]:addi zero, zero, 0<br> [0x800001bc]:sw a4, 28(ra)<br>      |
|   9|[0x80003230]<br>0xFFFFFFCA|- rs1 : x14<br> - rd : x6<br> - ea_align == 1 and (imm_val % 4) == 0<br>                                                      |[0x800001c8]:lb t1, 4(a4)<br> [0x800001cc]:addi zero, zero, 0<br> [0x800001d0]:addi zero, zero, 0<br> [0x800001d4]:sw t1, 32(ra)<br>      |
|  10|[0x80003234]<br>0xFFFFFFCA|- rs1 : x6<br> - rd : x17<br> - ea_align == 1 and (imm_val % 4) == 1<br>                                                      |[0x800001e0]:lb a7, 5(t1)<br> [0x800001e4]:addi zero, zero, 0<br> [0x800001e8]:addi zero, zero, 0<br> [0x800001ec]:sw a7, 36(ra)<br>      |
|  11|[0x80003238]<br>0xFFFFFFCA|- rs1 : x27<br> - rd : x18<br> - ea_align == 1 and (imm_val % 4) == 2<br>                                                     |[0x800001f8]:lb s2, 6(s11)<br> [0x800001fc]:addi zero, zero, 0<br> [0x80000200]:addi zero, zero, 0<br> [0x80000204]:sw s2, 40(ra)<br>     |
|  12|[0x8000323c]<br>0xFFFFFFFE|- rs1 : x26<br> - rd : x5<br> - imm_val < 0<br>                                                                               |[0x80000210]:lb t0, 4091(s10)<br> [0x80000214]:addi zero, zero, 0<br> [0x80000218]:addi zero, zero, 0<br> [0x8000021c]:sw t0, 44(ra)<br>  |
|  13|[0x80003240]<br>0xFFFFFFFE|- rs1 : x19<br> - rd : x24<br> - imm_val == 0<br>                                                                             |[0x80000228]:lb s8, 0(s3)<br> [0x8000022c]:addi zero, zero, 0<br> [0x80000230]:addi zero, zero, 0<br> [0x80000234]:sw s8, 48(ra)<br>      |
|  14|[0x80003244]<br>0xFFFFFFCA|- rs1 : x11<br> - rd : x25<br> - ea_align == 1 and (imm_val % 4) == 3<br>                                                     |[0x80000240]:lb s9, 4091(a1)<br> [0x80000244]:addi zero, zero, 0<br> [0x80000248]:addi zero, zero, 0<br> [0x8000024c]:sw s9, 52(ra)<br>   |
|  15|[0x80003248]<br>0xFFFFFFBA|- rs1 : x10<br> - rd : x9<br> - ea_align == 3 and (imm_val % 4) == 0<br>                                                      |[0x80000258]:lb s1, 0(a0)<br> [0x8000025c]:addi zero, zero, 0<br> [0x80000260]:addi zero, zero, 0<br> [0x80000264]:sw s1, 56(ra)<br>      |
|  16|[0x8000324c]<br>0x00000000|- rs1 : x15<br> - rd : x0<br> - ea_align == 3 and (imm_val % 4) == 1<br>                                                      |[0x80000270]:lb zero, 9(a5)<br> [0x80000274]:addi zero, zero, 0<br> [0x80000278]:addi zero, zero, 0<br> [0x8000027c]:sw zero, 60(ra)<br>  |
|  17|[0x80003250]<br>0xFFFFFFBA|- rs1 : x20<br> - rd : x26<br> - ea_align == 3 and (imm_val % 4) == 2<br>                                                     |[0x80000288]:lb s10, 4086(s4)<br> [0x8000028c]:addi zero, zero, 0<br> [0x80000290]:addi zero, zero, 0<br> [0x80000294]:sw s10, 64(ra)<br> |
|  18|[0x80003254]<br>0xFFFFFFBA|- rs1 : x30<br> - rd : x15<br> - ea_align == 3 and (imm_val % 4) == 3<br>                                                     |[0x800002a0]:lb a5, 4087(t5)<br> [0x800002a4]:addi zero, zero, 0<br> [0x800002a8]:addi zero, zero, 0<br> [0x800002ac]:sw a5, 68(ra)<br>   |
|  19|[0x80003258]<br>0xFFFFFFFE|- rs1 : x5<br> - rd : x16<br>                                                                                                 |[0x800002b8]:lb a6, 2048(t0)<br> [0x800002bc]:addi zero, zero, 0<br> [0x800002c0]:addi zero, zero, 0<br> [0x800002c4]:sw a6, 72(ra)<br>   |
|  20|[0x8000325c]<br>0xFFFFFFFE|- rs1 : x31<br> - rd : x20<br>                                                                                                |[0x800002d0]:lb s4, 2048(t6)<br> [0x800002d4]:addi zero, zero, 0<br> [0x800002d8]:addi zero, zero, 0<br> [0x800002dc]:sw s4, 76(ra)<br>   |
|  21|[0x80003260]<br>0xFFFFFFFE|- rs1 : x29<br> - rd : x12<br>                                                                                                |[0x800002e8]:lb a2, 2048(t4)<br> [0x800002ec]:addi zero, zero, 0<br> [0x800002f0]:addi zero, zero, 0<br> [0x800002f4]:sw a2, 80(ra)<br>   |
|  22|[0x80003264]<br>0xFFFFFFFE|- rs1 : x2<br> - rd : x29<br>                                                                                                 |[0x80000308]:lb t4, 2048(sp)<br> [0x8000030c]:addi zero, zero, 0<br> [0x80000310]:addi zero, zero, 0<br> [0x80000314]:sw t4, 0(t0)<br>    |
|  23|[0x80003268]<br>0xFFFFFFFE|- rs1 : x12<br> - rd : x19<br>                                                                                                |[0x80000320]:lb s3, 2048(a2)<br> [0x80000324]:addi zero, zero, 0<br> [0x80000328]:addi zero, zero, 0<br> [0x8000032c]:sw s3, 4(t0)<br>    |
|  24|[0x8000326c]<br>0xFFFFFFFE|- rs1 : x4<br> - rd : x7<br>                                                                                                  |[0x80000338]:lb t2, 2048(tp)<br> [0x8000033c]:addi zero, zero, 0<br> [0x80000340]:addi zero, zero, 0<br> [0x80000344]:sw t2, 8(t0)<br>    |
|  25|[0x80003270]<br>0xFFFFFFFE|- rs1 : x16<br> - rd : x11<br>                                                                                                |[0x80000350]:lb a1, 2048(a6)<br> [0x80000354]:addi zero, zero, 0<br> [0x80000358]:addi zero, zero, 0<br> [0x8000035c]:sw a1, 12(t0)<br>   |
|  26|[0x80003274]<br>0xFFFFFFFE|- rs1 : x3<br> - rd : x1<br>                                                                                                  |[0x80000368]:lb ra, 2048(gp)<br> [0x8000036c]:addi zero, zero, 0<br> [0x80000370]:addi zero, zero, 0<br> [0x80000374]:sw ra, 16(t0)<br>   |
|  27|[0x80003278]<br>0xFFFFFFFE|- rs1 : x9<br> - rd : x27<br>                                                                                                 |[0x80000380]:lb s11, 2048(s1)<br> [0x80000384]:addi zero, zero, 0<br> [0x80000388]:addi zero, zero, 0<br> [0x8000038c]:sw s11, 20(t0)<br> |
|  28|[0x8000327c]<br>0xFFFFFFFE|- rs1 : x24<br> - rd : x23<br>                                                                                                |[0x80000398]:lb s7, 2048(s8)<br> [0x8000039c]:addi zero, zero, 0<br> [0x800003a0]:addi zero, zero, 0<br> [0x800003a4]:sw s7, 24(t0)<br>   |
|  29|[0x80003280]<br>0xFFFFFFFE|- rs1 : x8<br> - rd : x13<br>                                                                                                 |[0x800003b0]:lb a3, 2048(fp)<br> [0x800003b4]:addi zero, zero, 0<br> [0x800003b8]:addi zero, zero, 0<br> [0x800003bc]:sw a3, 28(t0)<br>   |
|  30|[0x80003284]<br>0xFFFFFFFE|- rs1 : x1<br> - rd : x21<br>                                                                                                 |[0x800003c8]:lb s5, 2048(ra)<br> [0x800003cc]:addi zero, zero, 0<br> [0x800003d0]:addi zero, zero, 0<br> [0x800003d4]:sw s5, 32(t0)<br>   |
|  31|[0x80003288]<br>0xFFFFFFFE|- rs1 : x22<br> - rd : x4<br>                                                                                                 |[0x800003e0]:lb tp, 2048(s6)<br> [0x800003e4]:addi zero, zero, 0<br> [0x800003e8]:addi zero, zero, 0<br> [0x800003ec]:sw tp, 36(t0)<br>   |
|  32|[0x8000328c]<br>0xFFFFFFFE|- rd : x3<br>                                                                                                                 |[0x800003f8]:lb gp, 2048(s11)<br> [0x800003fc]:addi zero, zero, 0<br> [0x80000400]:addi zero, zero, 0<br> [0x80000404]:sw gp, 40(t0)<br>  |
