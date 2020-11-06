
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000210')]      |
| SIG_REGION                | [('0x80003204', '0x80003280', '31 words')]      |
| COV_LABELS                | clui      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/clui-01.S/clui-01.S    |
| Total Number of coverpoints| 50     |
| Total Coverpoints Hit     | 50      |
| Total Signature Updates   | 31      |
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

|s.no|        signature         |                                        coverpoints                                        |                              code                              |
|---:|--------------------------|-------------------------------------------------------------------------------------------|----------------------------------------------------------------|
|   1|[0x80003204]<br>0xFFFEA000|- opcode : c.lui<br> - rd : x30<br> - rs1_val > 0 and imm_val > 32<br> - imm_val == 42<br> |[0x80000104]:c.lui t5, 42<br> [0x80000106]:c.swsp t5, 0<br>     |
|   2|[0x80003208]<br>0x0000E000|- rd : x18<br> - rs1_val > 0 and imm_val < 32 and imm_val !=0 <br>                         |[0x80000110]:c.lui s2, 14<br> [0x80000112]:c.swsp s2, 1<br>     |
|   3|[0x8000320c]<br>0xFFFFD000|- rd : x7<br> - rs1_val < 0 and imm_val > 32<br> - imm_val == 61<br>                       |[0x80000118]:c.lui t2, 61<br> [0x8000011a]:c.swsp t2, 2<br>     |
|   4|[0x80003210]<br>0x0000A000|- rd : x15<br> - rs1_val < 0 and imm_val < 32 and imm_val !=0 <br>                         |[0x80000120]:c.lui a5, 10<br> [0x80000122]:c.swsp a5, 3<br>     |
|   5|[0x80003214]<br>0x00001000|- rd : x13<br> - imm_val == 1<br>                                                          |[0x80000128]:c.lui a3, 1<br> [0x8000012a]:c.swsp a3, 4<br>      |
|   6|[0x80003218]<br>0x00002000|- rd : x17<br> - imm_val == 2<br>                                                          |[0x80000130]:c.lui a7, 2<br> [0x80000132]:c.swsp a7, 5<br>      |
|   7|[0x8000321c]<br>0x00004000|- rd : x22<br> - imm_val == 4<br>                                                          |[0x8000013c]:c.lui s6, 4<br> [0x8000013e]:c.swsp s6, 6<br>      |
|   8|[0x80003220]<br>0x00008000|- rd : x9<br> - imm_val == 8<br>                                                           |[0x80000144]:c.lui s1, 8<br> [0x80000146]:c.swsp s1, 7<br>      |
|   9|[0x80003224]<br>0x00010000|- rd : x14<br> - imm_val == 16<br>                                                         |[0x8000014c]:c.lui a4, 16<br> [0x8000014e]:c.swsp a4, 8<br>     |
|  10|[0x80003228]<br>0x00015000|- rd : x6<br> - imm_val == 21<br>                                                          |[0x80000154]:c.lui t1, 21<br> [0x80000156]:c.swsp t1, 9<br>     |
|  11|[0x8000322c]<br>0xFFFE0000|- rd : x19<br> - imm_val == 32<br>                                                         |[0x80000160]:c.lui s3, 32<br> [0x80000162]:c.swsp s3, 10<br>    |
|  12|[0x80003230]<br>0xFFFFE000|- rd : x24<br> - imm_val == 62<br>                                                         |[0x80000168]:c.lui s8, 62<br> [0x8000016a]:c.swsp s8, 11<br>    |
|  13|[0x80003234]<br>0xFFFFB000|- rd : x5<br> - imm_val == 59<br>                                                          |[0x80000170]:c.lui t0, 59<br> [0x80000172]:c.swsp t0, 12<br>    |
|  14|[0x80003238]<br>0xFFFF7000|- rd : x25<br> - imm_val == 55<br>                                                         |[0x80000178]:c.lui s9, 55<br> [0x8000017a]:c.swsp s9, 13<br>    |
|  15|[0x8000323c]<br>0xFFFEF000|- rd : x20<br> - imm_val == 47<br>                                                         |[0x80000180]:c.lui s4, 47<br> [0x80000182]:c.swsp s4, 14<br>    |
|  16|[0x80003240]<br>0x0001F000|- rd : x11<br> - imm_val == 31<br>                                                         |[0x80000188]:c.lui a1, 31<br> [0x8000018a]:c.swsp a1, 15<br>    |
|  17|[0x80003244]<br>0x00010000|- rd : x26<br>                                                                             |[0x80000190]:c.lui s10, 16<br> [0x80000192]:c.swsp s10, 16<br>  |
|  18|[0x80003248]<br>0x00010000|- rd : x23<br>                                                                             |[0x80000198]:c.lui s7, 16<br> [0x8000019a]:c.swsp s7, 17<br>    |
|  19|[0x8000324c]<br>0x00010000|- rd : x12<br>                                                                             |[0x800001a0]:c.lui a2, 16<br> [0x800001a2]:c.swsp a2, 18<br>    |
|  20|[0x80003250]<br>0x00010000|- rd : x1<br>                                                                              |[0x800001a8]:c.lui ra, 16<br> [0x800001aa]:c.swsp ra, 19<br>    |
|  21|[0x80003254]<br>0x00000000|- rd : x0<br>                                                                              |[0x800001b0]:c.lui.hint.16<br> [0x800001b2]:c.swsp zero, 20<br> |
|  22|[0x80003258]<br>0x00010000|- rd : x10<br>                                                                             |[0x800001b8]:c.lui a0, 16<br> [0x800001ba]:c.swsp a0, 21<br>    |
|  23|[0x8000325c]<br>0x00010000|- rd : x3<br>                                                                              |[0x800001c0]:c.lui gp, 16<br> [0x800001c2]:c.swsp gp, 22<br>    |
|  24|[0x80003260]<br>0x00010000|- rd : x28<br>                                                                             |[0x800001c8]:c.lui t3, 16<br> [0x800001ca]:c.swsp t3, 23<br>    |
|  25|[0x80003264]<br>0x00010000|- rd : x16<br>                                                                             |[0x800001d0]:c.lui a6, 16<br> [0x800001d2]:c.swsp a6, 24<br>    |
|  26|[0x80003268]<br>0x00010000|- rd : x4<br>                                                                              |[0x800001d8]:c.lui tp, 16<br> [0x800001da]:c.swsp tp, 25<br>    |
|  27|[0x8000326c]<br>0x00010000|- rd : x21<br>                                                                             |[0x800001e0]:c.lui s5, 16<br> [0x800001e2]:c.swsp s5, 26<br>    |
|  28|[0x80003270]<br>0x00010000|- rd : x27<br>                                                                             |[0x800001e8]:c.lui s11, 16<br> [0x800001ea]:c.swsp s11, 27<br>  |
|  29|[0x80003274]<br>0x00010000|- rd : x29<br>                                                                             |[0x800001f0]:c.lui t4, 16<br> [0x800001f2]:c.swsp t4, 28<br>    |
|  30|[0x80003278]<br>0x00010000|- rd : x8<br>                                                                              |[0x80000200]:c.lui fp, 16<br> [0x80000202]:sw fp, 0(ra)<br>     |
|  31|[0x8000327c]<br>0x00010000|- rd : x31<br>                                                                             |[0x8000020a]:c.lui t6, 16<br> [0x8000020c]:sw t6, 4(ra)<br>     |
