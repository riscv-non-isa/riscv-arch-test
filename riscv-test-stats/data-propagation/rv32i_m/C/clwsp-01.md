
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

|s.no|        signature         |                     coverpoints                      |                                                     code                                                     |
|---:|--------------------------|------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80003210]<br>0xBABECAFE|- opcode : c.lwsp<br> - rd : x9<br> - imm_val > 0<br> |[0x80000108]:c.lwsp s1, 63<br> [0x8000010a]:c.nop<br> [0x8000010c]:c.nop<br> [0x8000010e]:c.sw a4, s1, 0<br>  |
|   2|[0x80003214]<br>0xBABECAFE|- rd : x28<br> - imm_val == 0<br>                     |[0x80000118]:c.lwsp t3, 0<br> [0x8000011a]:c.nop<br> [0x8000011c]:c.nop<br> [0x8000011e]:sw t3, 4(a4)<br>     |
|   3|[0x80003218]<br>0xBABECAFE|- rd : x24<br> - imm_val == 4<br>                     |[0x8000012a]:c.lwsp s8, 1<br> [0x8000012c]:c.nop<br> [0x8000012e]:c.nop<br> [0x80000130]:sw s8, 8(a4)<br>     |
|   4|[0x8000321c]<br>0xBABECAFE|- rd : x30<br> - imm_val == 8<br>                     |[0x8000013c]:c.lwsp t5, 2<br> [0x8000013e]:c.nop<br> [0x80000140]:c.nop<br> [0x80000142]:sw t5, 12(a4)<br>    |
|   5|[0x80003220]<br>0xBABECAFE|- rd : x18<br> - imm_val == 16<br>                    |[0x8000014e]:c.lwsp s2, 4<br> [0x80000150]:c.nop<br> [0x80000152]:c.nop<br> [0x80000154]:sw s2, 16(a4)<br>    |
|   6|[0x80003224]<br>0xBABECAFE|- rd : x16<br> - imm_val == 32<br>                    |[0x80000160]:c.lwsp a6, 8<br> [0x80000162]:c.nop<br> [0x80000164]:c.nop<br> [0x80000166]:sw a6, 20(a4)<br>    |
|   7|[0x80003228]<br>0xBABECAFE|- rd : x13<br> - imm_val == 64<br>                    |[0x80000172]:c.lwsp a3, 16<br> [0x80000174]:c.nop<br> [0x80000176]:c.nop<br> [0x80000178]:c.sw a4, a3, 24<br> |
|   8|[0x8000322c]<br>0xBABECAFE|- rd : x11<br> - imm_val == 128<br>                   |[0x80000182]:c.lwsp a1, 32<br> [0x80000184]:c.nop<br> [0x80000186]:c.nop<br> [0x80000188]:c.sw a4, a1, 28<br> |
|   9|[0x80003230]<br>0xBABECAFE|- rd : x17<br> - imm_val == 248<br>                   |[0x80000192]:c.lwsp a7, 62<br> [0x80000194]:c.nop<br> [0x80000196]:c.nop<br> [0x80000198]:sw a7, 32(a4)<br>   |
|  10|[0x80003234]<br>0xBABECAFE|- rd : x7<br> - imm_val == 244<br>                    |[0x800001a4]:c.lwsp t2, 61<br> [0x800001a6]:c.nop<br> [0x800001a8]:c.nop<br> [0x800001aa]:sw t2, 36(a4)<br>   |
|  11|[0x80003238]<br>0xBABECAFE|- rd : x31<br> - imm_val == 236<br>                   |[0x800001b6]:c.lwsp t6, 59<br> [0x800001b8]:c.nop<br> [0x800001ba]:c.nop<br> [0x800001bc]:sw t6, 40(a4)<br>   |
|  12|[0x8000323c]<br>0xBABECAFE|- rd : x22<br> - imm_val == 220<br>                   |[0x800001c8]:c.lwsp s6, 55<br> [0x800001ca]:c.nop<br> [0x800001cc]:c.nop<br> [0x800001ce]:sw s6, 44(a4)<br>   |
|  13|[0x80003240]<br>0xBABECAFE|- rd : x1<br> - imm_val == 188<br>                    |[0x800001da]:c.lwsp ra, 47<br> [0x800001dc]:c.nop<br> [0x800001de]:c.nop<br> [0x800001e0]:sw ra, 48(a4)<br>   |
|  14|[0x80003244]<br>0xBABECAFE|- rd : x6<br> - imm_val == 124<br>                    |[0x800001ec]:c.lwsp t1, 31<br> [0x800001ee]:c.nop<br> [0x800001f0]:c.nop<br> [0x800001f2]:sw t1, 52(a4)<br>   |
|  15|[0x80003248]<br>0xBABECAFE|- rd : x3<br> - imm_val == 84<br>                     |[0x800001fe]:c.lwsp gp, 21<br> [0x80000200]:c.nop<br> [0x80000202]:c.nop<br> [0x80000204]:sw gp, 56(a4)<br>   |
|  16|[0x8000324c]<br>0xBABECAFE|- rd : x23<br> - imm_val == 168<br>                   |[0x80000210]:c.lwsp s7, 42<br> [0x80000212]:c.nop<br> [0x80000214]:c.nop<br> [0x80000216]:sw s7, 60(a4)<br>   |
|  17|[0x80003250]<br>0xBABECAFE|- rd : x27<br>                                        |[0x80000222]:c.lwsp s11, 0<br> [0x80000224]:c.nop<br> [0x80000226]:c.nop<br> [0x80000228]:sw s11, 64(a4)<br>  |
|  18|[0x80003254]<br>0xBABECAFE|- rd : x8<br>                                         |[0x80000234]:c.lwsp fp, 0<br> [0x80000236]:c.nop<br> [0x80000238]:c.nop<br> [0x8000023a]:c.sw a4, s0, 68<br>  |
|  19|[0x80003258]<br>0xBABECAFE|- rd : x2<br>                                         |[0x80000244]:c.lwsp sp, 0<br> [0x80000246]:c.nop<br> [0x80000248]:c.nop<br> [0x8000024a]:sw sp, 72(a4)<br>    |
|  20|[0x8000325c]<br>0xBABECAFE|- rd : x12<br>                                        |[0x80000256]:c.lwsp a2, 0<br> [0x80000258]:c.nop<br> [0x8000025a]:c.nop<br> [0x8000025c]:c.sw a4, a2, 76<br>  |
|  21|[0x80003260]<br>0xBABECAFE|- rd : x29<br>                                        |[0x80000266]:c.lwsp t4, 0<br> [0x80000268]:c.nop<br> [0x8000026a]:c.nop<br> [0x8000026c]:sw t4, 80(a4)<br>    |
|  22|[0x80003264]<br>0xBABECAFE|- rd : x4<br>                                         |[0x80000278]:c.lwsp tp, 0<br> [0x8000027a]:c.nop<br> [0x8000027c]:c.nop<br> [0x8000027e]:sw tp, 84(a4)<br>    |
|  23|[0x80003268]<br>0xBABECAFE|- rd : x15<br>                                        |[0x8000028a]:c.lwsp a5, 0<br> [0x8000028c]:c.nop<br> [0x8000028e]:c.nop<br> [0x80000290]:c.sw a4, a5, 88<br>  |
|  24|[0x8000326c]<br>0xBABECAFE|- rd : x21<br>                                        |[0x8000029a]:c.lwsp s5, 0<br> [0x8000029c]:c.nop<br> [0x8000029e]:c.nop<br> [0x800002a0]:sw s5, 92(a4)<br>    |
|  25|[0x80003270]<br>0xBABECAFE|- rd : x5<br>                                         |[0x800002ac]:c.lwsp t0, 0<br> [0x800002ae]:c.nop<br> [0x800002b0]:c.nop<br> [0x800002b2]:sw t0, 96(a4)<br>    |
|  26|[0x80003274]<br>0xBABECAFE|- rd : x20<br>                                        |[0x800002be]:c.lwsp s4, 0<br> [0x800002c0]:c.nop<br> [0x800002c2]:c.nop<br> [0x800002c4]:sw s4, 100(a4)<br>   |
|  27|[0x80003278]<br>0xBABECAFE|- rd : x10<br>                                        |[0x800002d0]:c.lwsp a0, 0<br> [0x800002d2]:c.nop<br> [0x800002d4]:c.nop<br> [0x800002d6]:c.sw a4, a0, 104<br> |
|  28|[0x8000327c]<br>0xBABECAFE|- rd : x25<br>                                        |[0x800002e0]:c.lwsp s9, 0<br> [0x800002e2]:c.nop<br> [0x800002e4]:c.nop<br> [0x800002e6]:sw s9, 108(a4)<br>   |
|  29|[0x80003280]<br>0xBABECAFE|- rd : x26<br>                                        |[0x800002fa]:c.lwsp s10, 0<br> [0x800002fc]:c.nop<br> [0x800002fe]:c.nop<br> [0x80000300]:sw s10, 0(ra)<br>   |
|  30|[0x80003284]<br>0xBABECAFE|- rd : x14<br>                                        |[0x8000030c]:c.lwsp a4, 0<br> [0x8000030e]:c.nop<br> [0x80000310]:c.nop<br> [0x80000312]:sw a4, 4(ra)<br>     |
|  31|[0x80003288]<br>0xBABECAFE|- rd : x19<br>                                        |[0x8000031e]:c.lwsp s3, 0<br> [0x80000320]:c.nop<br> [0x80000322]:c.nop<br> [0x80000324]:sw s3, 8(ra)<br>     |
