
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000230')]      |
| SIG_REGION                | [('0x80002010', '0x80002090', '32 words')]      |
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
|   1|[0x80002010]<br>0xFFFF7000|- opcode : c.lui<br> - rd : x11<br> - rs1_val > 0 and imm_val > 32<br> - imm_val == 55<br> |[0x80000104]:c.lui a1, 55<br> [0x80000106]:c.swsp a1, 0<br>     |
|   2|[0x80002014]<br>0x0000A000|- rd : x5<br> - rs1_val > 0 and imm_val < 32 and imm_val !=0 <br>                          |[0x8000010c]:c.lui t0, 10<br> [0x8000010e]:c.swsp t0, 1<br>     |
|   3|[0x80002018]<br>0xFFFFE000|- rd : x14<br> - rs1_val < 0 and imm_val > 32<br> - imm_val == 62<br>                      |[0x80000118]:c.lui a4, 62<br> [0x8000011a]:c.swsp a4, 2<br>     |
|   4|[0x8000201c]<br>0x00013000|- rd : x16<br> - rs1_val < 0 and imm_val < 32 and imm_val !=0 <br>                         |[0x80000124]:c.lui a6, 19<br> [0x80000126]:c.swsp a6, 3<br>     |
|   5|[0x80002020]<br>0x00001000|- rd : x1<br> - imm_val == 1<br>                                                           |[0x80000130]:c.lui ra, 1<br> [0x80000132]:c.swsp ra, 4<br>      |
|   6|[0x80002024]<br>0x00002000|- rd : x7<br> - imm_val == 2<br>                                                           |[0x8000013c]:c.lui t2, 2<br> [0x8000013e]:c.swsp t2, 5<br>      |
|   7|[0x80002028]<br>0x00004000|- rd : x3<br> - imm_val == 4<br>                                                           |[0x80000148]:c.lui gp, 4<br> [0x8000014a]:c.swsp gp, 6<br>      |
|   8|[0x8000202c]<br>0x00008000|- rd : x28<br> - imm_val == 8<br>                                                          |[0x80000154]:c.lui t3, 8<br> [0x80000156]:c.swsp t3, 7<br>      |
|   9|[0x80002030]<br>0x00010000|- rd : x29<br> - imm_val == 16<br>                                                         |[0x80000160]:c.lui t4, 16<br> [0x80000162]:c.swsp t4, 8<br>     |
|  10|[0x80002034]<br>0x00015000|- rd : x20<br> - imm_val == 21<br>                                                         |[0x8000016c]:c.lui s4, 21<br> [0x8000016e]:c.swsp s4, 9<br>     |
|  11|[0x80002038]<br>0xFFFEA000|- rd : x4<br> - imm_val == 42<br>                                                          |[0x80000174]:c.lui tp, 42<br> [0x80000176]:c.swsp tp, 10<br>    |
|  12|[0x8000203c]<br>0xFFFE0000|- rd : x8<br> - imm_val == 32<br>                                                          |[0x8000017c]:c.lui fp, 32<br> [0x8000017e]:c.swsp fp, 11<br>    |
|  13|[0x80002040]<br>0xFFFFD000|- rd : x22<br> - imm_val == 61<br>                                                         |[0x80000184]:c.lui s6, 61<br> [0x80000186]:c.swsp s6, 12<br>    |
|  14|[0x80002044]<br>0xFFFFB000|- rd : x24<br> - imm_val == 59<br>                                                         |[0x8000018c]:c.lui s8, 59<br> [0x8000018e]:c.swsp s8, 13<br>    |
|  15|[0x80002048]<br>0xFFFEF000|- rd : x19<br> - imm_val == 47<br>                                                         |[0x80000198]:c.lui s3, 47<br> [0x8000019a]:c.swsp s3, 14<br>    |
|  16|[0x8000204c]<br>0x0001F000|- rd : x30<br> - imm_val == 31<br>                                                         |[0x800001a4]:c.lui t5, 31<br> [0x800001a6]:c.swsp t5, 15<br>    |
|  17|[0x80002050]<br>0x00010000|- rd : x10<br>                                                                             |[0x800001ac]:c.lui a0, 16<br> [0x800001ae]:c.swsp a0, 16<br>    |
|  18|[0x80002054]<br>0x00010000|- rd : x15<br>                                                                             |[0x800001b4]:c.lui a5, 16<br> [0x800001b6]:c.swsp a5, 17<br>    |
|  19|[0x80002058]<br>0x00010000|- rd : x12<br>                                                                             |[0x800001bc]:c.lui a2, 16<br> [0x800001be]:c.swsp a2, 18<br>    |
|  20|[0x8000205c]<br>0x00000000|- rd : x0<br>                                                                              |[0x800001c4]:c.lui.hint.16<br> [0x800001c6]:c.swsp zero, 19<br> |
|  21|[0x80002060]<br>0x00010000|- rd : x23<br>                                                                             |[0x800001cc]:c.lui s7, 16<br> [0x800001ce]:c.swsp s7, 20<br>    |
|  22|[0x80002064]<br>0x00010000|- rd : x9<br>                                                                              |[0x800001d4]:c.lui s1, 16<br> [0x800001d6]:c.swsp s1, 21<br>    |
|  23|[0x80002068]<br>0x00010000|- rd : x25<br>                                                                             |[0x800001dc]:c.lui s9, 16<br> [0x800001de]:c.swsp s9, 22<br>    |
|  24|[0x8000206c]<br>0x00010000|- rd : x13<br>                                                                             |[0x800001e4]:c.lui a3, 16<br> [0x800001e6]:c.swsp a3, 23<br>    |
|  25|[0x80002070]<br>0x00010000|- rd : x21<br>                                                                             |[0x800001ec]:c.lui s5, 16<br> [0x800001ee]:c.swsp s5, 24<br>    |
|  26|[0x80002074]<br>0x00010000|- rd : x26<br>                                                                             |[0x800001f4]:c.lui s10, 16<br> [0x800001f6]:c.swsp s10, 25<br>  |
|  27|[0x80002078]<br>0x00010000|- rd : x18<br>                                                                             |[0x800001fc]:c.lui s2, 16<br> [0x800001fe]:c.swsp s2, 26<br>    |
|  28|[0x8000207c]<br>0x00010000|- rd : x31<br>                                                                             |[0x80000204]:c.lui t6, 16<br> [0x80000206]:c.swsp t6, 27<br>    |
|  29|[0x80002080]<br>0x00010000|- rd : x6<br>                                                                              |[0x8000020c]:c.lui t1, 16<br> [0x8000020e]:c.swsp t1, 28<br>    |
|  30|[0x80002084]<br>0x00010000|- rd : x17<br>                                                                             |[0x8000021c]:c.lui a7, 16<br> [0x8000021e]:sw a7, 0(ra)<br>     |
|  31|[0x80002088]<br>0x00010000|- rd : x27<br>                                                                             |[0x80000226]:c.lui s11, 16<br> [0x80000228]:sw s11, 4(ra)<br>   |
