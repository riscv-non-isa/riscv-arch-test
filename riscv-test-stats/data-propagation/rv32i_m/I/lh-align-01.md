
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000420')]      |
| SIG_REGION                | [('0x80003204', '0x80003294', '36 words')]      |
| COV_LABELS                | lh-align      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/lh-align-01.S/lh-align-01.S    |
| Total Number of coverpoints| 77     |
| Total Signature Updates   | 33      |
| Total Coverpoints Covered | 77      |
| STAT1                     | 32      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000410]:lh a1, 4095(a0)
      [0x80000414]:addi zero, zero, 0
      [0x80000418]:addi zero, zero, 0
      [0x8000041c]:sw a1, 48(gp)
 -- Signature Address: 0x80003290 Data: 0xFFFFCAFE
 -- Redundant Coverpoints hit by the op
      - opcode : lh
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - ea_align == 0 and (imm_val % 4) == 3
      - imm_val < 0






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
|   1|[0x80003210]<br>0xFFFFCAFE|- opcode : lh<br> - rs1 : x26<br> - rd : x30<br> - rs1 != rd<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val < 0<br> |[0x80000108]:lh t5, 4092(s10)<br> [0x8000010c]:addi zero, zero, 0<br> [0x80000110]:addi zero, zero, 0<br> [0x80000114]:sw t5, 0(t1)<br>     |
|   2|[0x80003214]<br>0xFFFFCAFE|- rs1 : x7<br> - rd : x7<br> - rs1 == rd<br> - ea_align == 0 and (imm_val % 4) == 1<br> - imm_val > 0<br>                     |[0x80000120]:lh t2, 1(t2)<br> [0x80000124]:addi zero, zero, 0<br> [0x80000128]:addi zero, zero, 0<br> [0x8000012c]:sw t2, 4(t1)<br>         |
|   3|[0x80003218]<br>0xFFFFCAFE|- rs1 : x22<br> - rd : x24<br> - ea_align == 0 and (imm_val % 4) == 2<br>                                                     |[0x80000138]:lh s8, 2(s6)<br> [0x8000013c]:addi zero, zero, 0<br> [0x80000140]:addi zero, zero, 0<br> [0x80000144]:sw s8, 8(t1)<br>         |
|   4|[0x8000321c]<br>0x00000000|- rs1 : x11<br> - rd : x0<br> - ea_align == 0 and (imm_val % 4) == 3<br>                                                      |[0x80000150]:lh zero, 4095(a1)<br> [0x80000154]:addi zero, zero, 0<br> [0x80000158]:addi zero, zero, 0<br> [0x8000015c]:sw zero, 12(t1)<br> |
|   5|[0x80003220]<br>0xFFFFBABE|- rs1 : x4<br> - rd : x25<br> - ea_align == 2 and (imm_val % 4) == 0<br>                                                      |[0x80000168]:lh s9, 128(tp)<br> [0x8000016c]:addi zero, zero, 0<br> [0x80000170]:addi zero, zero, 0<br> [0x80000174]:sw s9, 16(t1)<br>      |
|   6|[0x80003224]<br>0xFFFFCAFE|- rs1 : x10<br> - rd : x29<br> - imm_val == 0<br>                                                                             |[0x80000180]:lh t4, 0(a0)<br> [0x80000184]:addi zero, zero, 0<br> [0x80000188]:addi zero, zero, 0<br> [0x8000018c]:sw t4, 20(t1)<br>        |
|   7|[0x80003228]<br>0xFFFFBABE|- rs1 : x21<br> - rd : x19<br> - ea_align == 2 and (imm_val % 4) == 1<br>                                                     |[0x80000198]:lh s3, 4089(s5)<br> [0x8000019c]:addi zero, zero, 0<br> [0x800001a0]:addi zero, zero, 0<br> [0x800001a4]:sw s3, 24(t1)<br>     |
|   8|[0x8000322c]<br>0xFFFFBABE|- rs1 : x2<br> - rd : x18<br> - ea_align == 2 and (imm_val % 4) == 2<br>                                                      |[0x800001b0]:lh s2, 4086(sp)<br> [0x800001b4]:addi zero, zero, 0<br> [0x800001b8]:addi zero, zero, 0<br> [0x800001bc]:sw s2, 28(t1)<br>     |
|   9|[0x80003230]<br>0xFFFFBABE|- rs1 : x9<br> - rd : x16<br> - ea_align == 2 and (imm_val % 4) == 3<br>                                                      |[0x800001c8]:lh a6, 3071(s1)<br> [0x800001cc]:addi zero, zero, 0<br> [0x800001d0]:addi zero, zero, 0<br> [0x800001d4]:sw a6, 32(t1)<br>     |
|  10|[0x80003234]<br>0xFFFFCAFE|- rs1 : x12<br> - rd : x21<br>                                                                                                |[0x800001e0]:lh s5, 2048(a2)<br> [0x800001e4]:addi zero, zero, 0<br> [0x800001e8]:addi zero, zero, 0<br> [0x800001ec]:sw s5, 36(t1)<br>     |
|  11|[0x80003238]<br>0xFFFFCAFE|- rs1 : x27<br> - rd : x28<br>                                                                                                |[0x800001f8]:lh t3, 2048(s11)<br> [0x800001fc]:addi zero, zero, 0<br> [0x80000200]:addi zero, zero, 0<br> [0x80000204]:sw t3, 40(t1)<br>    |
|  12|[0x8000323c]<br>0xFFFFCAFE|- rs1 : x25<br> - rd : x15<br>                                                                                                |[0x80000210]:lh a5, 2048(s9)<br> [0x80000214]:addi zero, zero, 0<br> [0x80000218]:addi zero, zero, 0<br> [0x8000021c]:sw a5, 44(t1)<br>     |
|  13|[0x80003240]<br>0xFFFFCAFE|- rs1 : x8<br> - rd : x4<br>                                                                                                  |[0x80000228]:lh tp, 2048(fp)<br> [0x8000022c]:addi zero, zero, 0<br> [0x80000230]:addi zero, zero, 0<br> [0x80000234]:sw tp, 48(t1)<br>     |
|  14|[0x80003244]<br>0xFFFFCAFE|- rs1 : x3<br> - rd : x31<br>                                                                                                 |[0x80000240]:lh t6, 2048(gp)<br> [0x80000244]:addi zero, zero, 0<br> [0x80000248]:addi zero, zero, 0<br> [0x8000024c]:sw t6, 52(t1)<br>     |
|  15|[0x80003248]<br>0xFFFFCAFE|- rs1 : x23<br> - rd : x5<br>                                                                                                 |[0x80000258]:lh t0, 2048(s7)<br> [0x8000025c]:addi zero, zero, 0<br> [0x80000260]:addi zero, zero, 0<br> [0x80000264]:sw t0, 56(t1)<br>     |
|  16|[0x8000324c]<br>0xFFFFCAFE|- rs1 : x24<br> - rd : x3<br>                                                                                                 |[0x80000270]:lh gp, 2048(s8)<br> [0x80000274]:addi zero, zero, 0<br> [0x80000278]:addi zero, zero, 0<br> [0x8000027c]:sw gp, 60(t1)<br>     |
|  17|[0x80003250]<br>0xFFFFCAFE|- rs1 : x16<br> - rd : x1<br>                                                                                                 |[0x80000288]:lh ra, 2048(a6)<br> [0x8000028c]:addi zero, zero, 0<br> [0x80000290]:addi zero, zero, 0<br> [0x80000294]:sw ra, 64(t1)<br>     |
|  18|[0x80003254]<br>0xFFFFCAFE|- rs1 : x18<br> - rd : x10<br>                                                                                                |[0x800002a0]:lh a0, 2048(s2)<br> [0x800002a4]:addi zero, zero, 0<br> [0x800002a8]:addi zero, zero, 0<br> [0x800002ac]:sw a0, 68(t1)<br>     |
|  19|[0x80003258]<br>0xFFFFCAFE|- rs1 : x19<br> - rd : x13<br>                                                                                                |[0x800002b8]:lh a3, 2048(s3)<br> [0x800002bc]:addi zero, zero, 0<br> [0x800002c0]:addi zero, zero, 0<br> [0x800002c4]:sw a3, 72(t1)<br>     |
|  20|[0x8000325c]<br>0xFFFFCAFE|- rs1 : x20<br> - rd : x27<br>                                                                                                |[0x800002d0]:lh s11, 2048(s4)<br> [0x800002d4]:addi zero, zero, 0<br> [0x800002d8]:addi zero, zero, 0<br> [0x800002dc]:sw s11, 76(t1)<br>   |
|  21|[0x80003260]<br>0xFFFFCAFE|- rs1 : x29<br> - rd : x11<br>                                                                                                |[0x800002f0]:lh a1, 2048(t4)<br> [0x800002f4]:addi zero, zero, 0<br> [0x800002f8]:addi zero, zero, 0<br> [0x800002fc]:sw a1, 0(gp)<br>      |
|  22|[0x80003264]<br>0xFFFFCAFE|- rs1 : x6<br> - rd : x8<br>                                                                                                  |[0x80000308]:lh fp, 2048(t1)<br> [0x8000030c]:addi zero, zero, 0<br> [0x80000310]:addi zero, zero, 0<br> [0x80000314]:sw fp, 4(gp)<br>      |
|  23|[0x80003268]<br>0xFFFFCAFE|- rs1 : x14<br> - rd : x12<br>                                                                                                |[0x80000320]:lh a2, 2048(a4)<br> [0x80000324]:addi zero, zero, 0<br> [0x80000328]:addi zero, zero, 0<br> [0x8000032c]:sw a2, 8(gp)<br>      |
|  24|[0x8000326c]<br>0xFFFFCAFE|- rs1 : x13<br> - rd : x14<br>                                                                                                |[0x80000338]:lh a4, 2048(a3)<br> [0x8000033c]:addi zero, zero, 0<br> [0x80000340]:addi zero, zero, 0<br> [0x80000344]:sw a4, 12(gp)<br>     |
|  25|[0x80003270]<br>0xFFFFCAFE|- rs1 : x1<br> - rd : x6<br>                                                                                                  |[0x80000350]:lh t1, 2048(ra)<br> [0x80000354]:addi zero, zero, 0<br> [0x80000358]:addi zero, zero, 0<br> [0x8000035c]:sw t1, 16(gp)<br>     |
|  26|[0x80003274]<br>0xFFFFCAFE|- rs1 : x5<br> - rd : x22<br>                                                                                                 |[0x80000368]:lh s6, 2048(t0)<br> [0x8000036c]:addi zero, zero, 0<br> [0x80000370]:addi zero, zero, 0<br> [0x80000374]:sw s6, 20(gp)<br>     |
|  27|[0x80003278]<br>0xFFFFCAFE|- rs1 : x28<br> - rd : x26<br>                                                                                                |[0x80000380]:lh s10, 2048(t3)<br> [0x80000384]:addi zero, zero, 0<br> [0x80000388]:addi zero, zero, 0<br> [0x8000038c]:sw s10, 24(gp)<br>   |
|  28|[0x8000327c]<br>0xFFFFCAFE|- rs1 : x30<br> - rd : x9<br>                                                                                                 |[0x80000398]:lh s1, 2048(t5)<br> [0x8000039c]:addi zero, zero, 0<br> [0x800003a0]:addi zero, zero, 0<br> [0x800003a4]:sw s1, 28(gp)<br>     |
|  29|[0x80003280]<br>0xFFFFCAFE|- rs1 : x17<br> - rd : x23<br>                                                                                                |[0x800003b0]:lh s7, 2048(a7)<br> [0x800003b4]:addi zero, zero, 0<br> [0x800003b8]:addi zero, zero, 0<br> [0x800003bc]:sw s7, 32(gp)<br>     |
|  30|[0x80003284]<br>0xFFFFCAFE|- rs1 : x31<br> - rd : x20<br>                                                                                                |[0x800003c8]:lh s4, 2048(t6)<br> [0x800003cc]:addi zero, zero, 0<br> [0x800003d0]:addi zero, zero, 0<br> [0x800003d4]:sw s4, 36(gp)<br>     |
|  31|[0x80003288]<br>0xFFFFCAFE|- rs1 : x15<br> - rd : x17<br>                                                                                                |[0x800003e0]:lh a7, 2048(a5)<br> [0x800003e4]:addi zero, zero, 0<br> [0x800003e8]:addi zero, zero, 0<br> [0x800003ec]:sw a7, 40(gp)<br>     |
|  32|[0x8000328c]<br>0xFFFFCAFE|- rd : x2<br>                                                                                                                 |[0x800003f8]:lh sp, 2048(s2)<br> [0x800003fc]:addi zero, zero, 0<br> [0x80000400]:addi zero, zero, 0<br> [0x80000404]:sw sp, 44(gp)<br>     |
