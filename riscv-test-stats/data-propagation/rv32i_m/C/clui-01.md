
# Data Propagation Report

STAT1 : Number of unique coverpoint hits that have updated the signature

STAT2 : Number of covepoints hits which are not unique but still update the signature

STAT3 : Number of instructions that contribute to a unique coverpoint but do not update signature

STAT4 : Number of Multiple signature updates for the same coverpoint

STAT5 : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000260')]      |
| SIG_REGION                | [('0x80003204', '0x8000328c', '34 words')]      |
| COV_LABELS                | clui      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/clui-01.S/clui-01.S    |
| Total Number of coverpoints| 50     |
| Total Signature Updates   | 31      |
| Total Coverpoints Covered | 50      |
| STAT1                     | 31      |
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

|s.no|        signature         |                                        coverpoints                                        |                             code                              |
|---:|--------------------------|-------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFD000|- opcode : c.lui<br> - rd : x20<br> - rs1_val > 0 and imm_val > 32<br> - imm_val == 61<br> |[0x80000104]:c.lui s4, 61<br> [0x80000106]:sw s4, 0(ra)<br>    |
|   2|[0x80003214]<br>0x00000000|- rd : x0<br>                                                                              |[0x8000010e]:c.lui.hint.10<br> [0x80000110]:sw zero, 4(ra)<br> |
|   3|[0x80003218]<br>0xFFFFB000|- rd : x12<br> - rs1_val < 0 and imm_val > 32<br> - imm_val == 59<br>                      |[0x80000118]:c.lui a2, 59<br> [0x8000011a]:sw a2, 8(ra)<br>    |
|   4|[0x8000321c]<br>0x00007000|- rd : x27<br> - rs1_val < 0 and imm_val < 32 and imm_val !=0 <br>                         |[0x80000126]:c.lui s11, 7<br> [0x80000128]:sw s11, 12(ra)<br>  |
|   5|[0x80003220]<br>0x00001000|- rd : x28<br> - imm_val == 1<br>                                                          |[0x80000134]:c.lui t3, 1<br> [0x80000136]:sw t3, 16(ra)<br>    |
|   6|[0x80003224]<br>0x00002000|- rd : x5<br> - rs1_val > 0 and imm_val < 32 and imm_val !=0 <br> - imm_val == 2<br>       |[0x8000013e]:c.lui t0, 2<br> [0x80000140]:sw t0, 20(ra)<br>    |
|   7|[0x80003228]<br>0x00004000|- rd : x11<br> - imm_val == 4<br>                                                          |[0x8000014c]:c.lui a1, 4<br> [0x8000014e]:sw a1, 24(ra)<br>    |
|   8|[0x8000322c]<br>0x00008000|- rd : x6<br> - imm_val == 8<br>                                                           |[0x80000156]:c.lui t1, 8<br> [0x80000158]:sw t1, 28(ra)<br>    |
|   9|[0x80003230]<br>0x00010000|- rd : x13<br> - imm_val == 16<br>                                                         |[0x80000160]:c.lui a3, 16<br> [0x80000162]:sw a3, 32(ra)<br>   |
|  10|[0x80003234]<br>0x00015000|- rd : x17<br> - imm_val == 21<br>                                                         |[0x8000016a]:c.lui a7, 21<br> [0x8000016c]:sw a7, 36(ra)<br>   |
|  11|[0x80003238]<br>0xFFFEA000|- rd : x19<br> - imm_val == 42<br>                                                         |[0x80000174]:c.lui s3, 42<br> [0x80000176]:sw s3, 40(ra)<br>   |
|  12|[0x8000323c]<br>0xFFFE0000|- rd : x22<br> - imm_val == 32<br>                                                         |[0x8000017e]:c.lui s6, 32<br> [0x80000180]:sw s6, 44(ra)<br>   |
|  13|[0x80003240]<br>0xFFFFE000|- rd : x18<br> - imm_val == 62<br>                                                         |[0x80000188]:c.lui s2, 62<br> [0x8000018a]:sw s2, 48(ra)<br>   |
|  14|[0x80003244]<br>0xFFFF7000|- rd : x26<br> - imm_val == 55<br>                                                         |[0x80000196]:c.lui s10, 55<br> [0x80000198]:sw s10, 52(ra)<br> |
|  15|[0x80003248]<br>0xFFFEF000|- rd : x7<br> - imm_val == 47<br>                                                          |[0x800001a4]:c.lui t2, 47<br> [0x800001a6]:sw t2, 56(ra)<br>   |
|  16|[0x8000324c]<br>0x0001F000|- rd : x10<br> - imm_val == 31<br>                                                         |[0x800001b2]:c.lui a0, 31<br> [0x800001b4]:sw a0, 60(ra)<br>   |
|  17|[0x80003250]<br>0x00010000|- rd : x31<br>                                                                             |[0x800001bc]:c.lui t6, 16<br> [0x800001be]:sw t6, 64(ra)<br>   |
|  18|[0x80003254]<br>0x00010000|- rd : x25<br>                                                                             |[0x800001c6]:c.lui s9, 16<br> [0x800001c8]:sw s9, 68(ra)<br>   |
|  19|[0x80003258]<br>0x00010000|- rd : x23<br>                                                                             |[0x800001d0]:c.lui s7, 16<br> [0x800001d2]:sw s7, 72(ra)<br>   |
|  20|[0x8000325c]<br>0x00010000|- rd : x14<br>                                                                             |[0x800001da]:c.lui a4, 16<br> [0x800001dc]:sw a4, 76(ra)<br>   |
|  21|[0x80003260]<br>0x00010000|- rd : x30<br>                                                                             |[0x800001e4]:c.lui t5, 16<br> [0x800001e6]:sw t5, 80(ra)<br>   |
|  22|[0x80003264]<br>0x00010000|- rd : x3<br>                                                                              |[0x800001ee]:c.lui gp, 16<br> [0x800001f0]:sw gp, 84(ra)<br>   |
|  23|[0x80003268]<br>0x00010000|- rd : x29<br>                                                                             |[0x800001f8]:c.lui t4, 16<br> [0x800001fa]:sw t4, 88(ra)<br>   |
|  24|[0x8000326c]<br>0x00010000|- rd : x21<br>                                                                             |[0x80000202]:c.lui s5, 16<br> [0x80000204]:sw s5, 92(ra)<br>   |
|  25|[0x80003270]<br>0x00010000|- rd : x9<br>                                                                              |[0x8000020c]:c.lui s1, 16<br> [0x8000020e]:sw s1, 96(ra)<br>   |
|  26|[0x80003274]<br>0x00010000|- rd : x4<br>                                                                              |[0x80000216]:c.lui tp, 16<br> [0x80000218]:sw tp, 100(ra)<br>  |
|  27|[0x80003278]<br>0x00010000|- rd : x15<br>                                                                             |[0x80000220]:c.lui a5, 16<br> [0x80000222]:sw a5, 104(ra)<br>  |
|  28|[0x8000327c]<br>0x00010000|- rd : x8<br>                                                                              |[0x8000022a]:c.lui fp, 16<br> [0x8000022c]:sw fp, 108(ra)<br>  |
|  29|[0x80003280]<br>0x00010000|- rd : x24<br>                                                                             |[0x80000234]:c.lui s8, 16<br> [0x80000236]:sw s8, 112(ra)<br>  |
|  30|[0x80003284]<br>0x00010000|- rd : x1<br>                                                                              |[0x80000246]:c.lui ra, 16<br> [0x80000248]:c.swsp ra, 0<br>    |
|  31|[0x80003288]<br>0x00010000|- rd : x16<br>                                                                             |[0x8000024e]:c.lui a6, 16<br> [0x80000250]:c.swsp a6, 1<br>    |
