
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000330')]      |
| SIG_REGION                | [('0x80003204', '0x8000328c', '34 words')]      |
| COV_LABELS                | clwsp      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/clwsp-01.S/clwsp-01.S    |
| Total Number of coverpoints| 48     |
| Total Coverpoints Hit     | 48      |
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

|s.no|        signature         |                                coverpoints                                 |                                                     code                                                     |
|---:|--------------------------|----------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80003210]<br>0xBABECAFE|- opcode : c.lwsp<br> - rd : x29<br> - imm_val > 0<br> - imm_val == 188<br> |[0x80000108]:c.lwsp t4, 47<br> [0x8000010a]:c.nop<br> [0x8000010c]:c.nop<br> [0x8000010e]:sw t4, 0(a2)<br>    |
|   2|[0x80003214]<br>0xBABECAFE|- rd : x4<br> - imm_val == 0<br>                                            |[0x8000011a]:c.lwsp tp, 0<br> [0x8000011c]:c.nop<br> [0x8000011e]:c.nop<br> [0x80000120]:sw tp, 4(a2)<br>     |
|   3|[0x80003218]<br>0xBABECAFE|- rd : x10<br> - imm_val == 4<br>                                           |[0x8000012c]:c.lwsp a0, 1<br> [0x8000012e]:c.nop<br> [0x80000130]:c.nop<br> [0x80000132]:c.sw a2, a0, 8<br>   |
|   4|[0x8000321c]<br>0xBABECAFE|- rd : x3<br> - imm_val == 8<br>                                            |[0x8000013c]:c.lwsp gp, 2<br> [0x8000013e]:c.nop<br> [0x80000140]:c.nop<br> [0x80000142]:sw gp, 12(a2)<br>    |
|   5|[0x80003220]<br>0xBABECAFE|- rd : x5<br> - imm_val == 16<br>                                           |[0x8000014e]:c.lwsp t0, 4<br> [0x80000150]:c.nop<br> [0x80000152]:c.nop<br> [0x80000154]:sw t0, 16(a2)<br>    |
|   6|[0x80003224]<br>0xBABECAFE|- rd : x14<br> - imm_val == 32<br>                                          |[0x80000160]:c.lwsp a4, 8<br> [0x80000162]:c.nop<br> [0x80000164]:c.nop<br> [0x80000166]:c.sw a2, a4, 20<br>  |
|   7|[0x80003228]<br>0xBABECAFE|- rd : x31<br> - imm_val == 64<br>                                          |[0x80000170]:c.lwsp t6, 16<br> [0x80000172]:c.nop<br> [0x80000174]:c.nop<br> [0x80000176]:sw t6, 24(a2)<br>   |
|   8|[0x8000322c]<br>0xBABECAFE|- rd : x1<br> - imm_val == 128<br>                                          |[0x80000182]:c.lwsp ra, 32<br> [0x80000184]:c.nop<br> [0x80000186]:c.nop<br> [0x80000188]:sw ra, 28(a2)<br>   |
|   9|[0x80003230]<br>0xBABECAFE|- rd : x20<br> - imm_val == 248<br>                                         |[0x80000194]:c.lwsp s4, 62<br> [0x80000196]:c.nop<br> [0x80000198]:c.nop<br> [0x8000019a]:sw s4, 32(a2)<br>   |
|  10|[0x80003234]<br>0xBABECAFE|- rd : x9<br> - imm_val == 244<br>                                          |[0x800001a6]:c.lwsp s1, 61<br> [0x800001a8]:c.nop<br> [0x800001aa]:c.nop<br> [0x800001ac]:c.sw a2, s1, 36<br> |
|  11|[0x80003238]<br>0xBABECAFE|- rd : x15<br> - imm_val == 236<br>                                         |[0x800001b6]:c.lwsp a5, 59<br> [0x800001b8]:c.nop<br> [0x800001ba]:c.nop<br> [0x800001bc]:c.sw a2, a5, 40<br> |
|  12|[0x8000323c]<br>0xBABECAFE|- rd : x21<br> - imm_val == 220<br>                                         |[0x800001c6]:c.lwsp s5, 55<br> [0x800001c8]:c.nop<br> [0x800001ca]:c.nop<br> [0x800001cc]:sw s5, 44(a2)<br>   |
|  13|[0x80003240]<br>0xBABECAFE|- rd : x22<br> - imm_val == 124<br>                                         |[0x800001d8]:c.lwsp s6, 31<br> [0x800001da]:c.nop<br> [0x800001dc]:c.nop<br> [0x800001de]:sw s6, 48(a2)<br>   |
|  14|[0x80003244]<br>0xBABECAFE|- rd : x2<br> - imm_val == 84<br>                                           |[0x800001ea]:c.lwsp sp, 21<br> [0x800001ec]:c.nop<br> [0x800001ee]:c.nop<br> [0x800001f0]:sw sp, 52(a2)<br>   |
|  15|[0x80003248]<br>0xBABECAFE|- rd : x24<br> - imm_val == 168<br>                                         |[0x800001fc]:c.lwsp s8, 42<br> [0x800001fe]:c.nop<br> [0x80000200]:c.nop<br> [0x80000202]:sw s8, 56(a2)<br>   |
|  16|[0x8000324c]<br>0xBABECAFE|- rd : x26<br>                                                              |[0x8000020e]:c.lwsp s10, 0<br> [0x80000210]:c.nop<br> [0x80000212]:c.nop<br> [0x80000214]:sw s10, 60(a2)<br>  |
|  17|[0x80003250]<br>0xBABECAFE|- rd : x18<br>                                                              |[0x80000220]:c.lwsp s2, 0<br> [0x80000222]:c.nop<br> [0x80000224]:c.nop<br> [0x80000226]:sw s2, 64(a2)<br>    |
|  18|[0x80003254]<br>0xBABECAFE|- rd : x17<br>                                                              |[0x80000232]:c.lwsp a7, 0<br> [0x80000234]:c.nop<br> [0x80000236]:c.nop<br> [0x80000238]:sw a7, 68(a2)<br>    |
|  19|[0x80003258]<br>0xBABECAFE|- rd : x25<br>                                                              |[0x80000244]:c.lwsp s9, 0<br> [0x80000246]:c.nop<br> [0x80000248]:c.nop<br> [0x8000024a]:sw s9, 72(a2)<br>    |
|  20|[0x8000325c]<br>0xBABECAFE|- rd : x6<br>                                                               |[0x80000256]:c.lwsp t1, 0<br> [0x80000258]:c.nop<br> [0x8000025a]:c.nop<br> [0x8000025c]:sw t1, 76(a2)<br>    |
|  21|[0x80003260]<br>0xBABECAFE|- rd : x28<br>                                                              |[0x80000268]:c.lwsp t3, 0<br> [0x8000026a]:c.nop<br> [0x8000026c]:c.nop<br> [0x8000026e]:sw t3, 80(a2)<br>    |
|  22|[0x80003264]<br>0xBABECAFE|- rd : x7<br>                                                               |[0x8000027a]:c.lwsp t2, 0<br> [0x8000027c]:c.nop<br> [0x8000027e]:c.nop<br> [0x80000280]:sw t2, 84(a2)<br>    |
|  23|[0x80003268]<br>0xBABECAFE|- rd : x11<br>                                                              |[0x8000028c]:c.lwsp a1, 0<br> [0x8000028e]:c.nop<br> [0x80000290]:c.nop<br> [0x80000292]:c.sw a2, a1, 88<br>  |
|  24|[0x8000326c]<br>0xBABECAFE|- rd : x19<br>                                                              |[0x8000029c]:c.lwsp s3, 0<br> [0x8000029e]:c.nop<br> [0x800002a0]:c.nop<br> [0x800002a2]:sw s3, 92(a2)<br>    |
|  25|[0x80003270]<br>0xBABECAFE|- rd : x27<br>                                                              |[0x800002ae]:c.lwsp s11, 0<br> [0x800002b0]:c.nop<br> [0x800002b2]:c.nop<br> [0x800002b4]:sw s11, 96(a2)<br>  |
|  26|[0x80003274]<br>0xBABECAFE|- rd : x16<br>                                                              |[0x800002c0]:c.lwsp a6, 0<br> [0x800002c2]:c.nop<br> [0x800002c4]:c.nop<br> [0x800002c6]:sw a6, 100(a2)<br>   |
|  27|[0x80003278]<br>0xBABECAFE|- rd : x23<br>                                                              |[0x800002d2]:c.lwsp s7, 0<br> [0x800002d4]:c.nop<br> [0x800002d6]:c.nop<br> [0x800002d8]:sw s7, 104(a2)<br>   |
|  28|[0x8000327c]<br>0xBABECAFE|- rd : x8<br>                                                               |[0x800002e4]:c.lwsp fp, 0<br> [0x800002e6]:c.nop<br> [0x800002e8]:c.nop<br> [0x800002ea]:c.sw a2, s0, 108<br> |
|  29|[0x80003280]<br>0xBABECAFE|- rd : x30<br>                                                              |[0x800002fc]:c.lwsp t5, 0<br> [0x800002fe]:c.nop<br> [0x80000300]:c.nop<br> [0x80000302]:sw t5, 0(ra)<br>     |
|  30|[0x80003284]<br>0xBABECAFE|- rd : x12<br>                                                              |[0x8000030e]:c.lwsp a2, 0<br> [0x80000310]:c.nop<br> [0x80000312]:c.nop<br> [0x80000314]:sw a2, 4(ra)<br>     |
|  31|[0x80003288]<br>0xBABECAFE|- rd : x13<br>                                                              |[0x80000320]:c.lwsp a3, 0<br> [0x80000322]:c.nop<br> [0x80000324]:c.nop<br> [0x80000326]:sw a3, 8(ra)<br>     |
