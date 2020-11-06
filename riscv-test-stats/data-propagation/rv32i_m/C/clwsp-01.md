
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000340')]      |
| SIG_REGION                | [('0x80003204', '0x80003280', '31 words')]      |
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

|s.no|        signature         |                      coverpoints                      |                                                     code                                                     |
|---:|--------------------------|-------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80003204]<br>0xBABECAFE|- opcode : c.lwsp<br> - rd : x12<br> - imm_val > 0<br> |[0x80000108]:c.lwsp a2, 9<br> [0x8000010a]:c.nop<br> [0x8000010c]:c.nop<br> [0x8000010e]:sw a2, 0(t1)<br>     |
|   2|[0x80003208]<br>0xBABECAFE|- rd : x7<br> - imm_val == 0<br>                       |[0x8000011a]:c.lwsp t2, 0<br> [0x8000011c]:c.nop<br> [0x8000011e]:c.nop<br> [0x80000120]:sw t2, 4(t1)<br>     |
|   3|[0x8000320c]<br>0xBABECAFE|- rd : x8<br> - imm_val == 4<br>                       |[0x8000012c]:c.lwsp fp, 1<br> [0x8000012e]:c.nop<br> [0x80000130]:c.nop<br> [0x80000132]:sw fp, 8(t1)<br>     |
|   4|[0x80003210]<br>0xBABECAFE|- rd : x3<br> - imm_val == 8<br>                       |[0x8000013e]:c.lwsp gp, 2<br> [0x80000140]:c.nop<br> [0x80000142]:c.nop<br> [0x80000144]:sw gp, 12(t1)<br>    |
|   5|[0x80003214]<br>0xBABECAFE|- rd : x9<br> - imm_val == 16<br>                      |[0x80000150]:c.lwsp s1, 4<br> [0x80000152]:c.nop<br> [0x80000154]:c.nop<br> [0x80000156]:sw s1, 16(t1)<br>    |
|   6|[0x80003218]<br>0xBABECAFE|- rd : x27<br> - imm_val == 32<br>                     |[0x80000162]:c.lwsp s11, 8<br> [0x80000164]:c.nop<br> [0x80000166]:c.nop<br> [0x80000168]:sw s11, 20(t1)<br>  |
|   7|[0x8000321c]<br>0xBABECAFE|- rd : x26<br> - imm_val == 64<br>                     |[0x80000174]:c.lwsp s10, 16<br> [0x80000176]:c.nop<br> [0x80000178]:c.nop<br> [0x8000017a]:sw s10, 24(t1)<br> |
|   8|[0x80003220]<br>0xBABECAFE|- rd : x25<br> - imm_val == 128<br>                    |[0x80000186]:c.lwsp s9, 32<br> [0x80000188]:c.nop<br> [0x8000018a]:c.nop<br> [0x8000018c]:sw s9, 28(t1)<br>   |
|   9|[0x80003224]<br>0xBABECAFE|- rd : x30<br> - imm_val == 248<br>                    |[0x80000198]:c.lwsp t5, 62<br> [0x8000019a]:c.nop<br> [0x8000019c]:c.nop<br> [0x8000019e]:sw t5, 32(t1)<br>   |
|  10|[0x80003228]<br>0xBABECAFE|- rd : x29<br> - imm_val == 244<br>                    |[0x800001aa]:c.lwsp t4, 61<br> [0x800001ac]:c.nop<br> [0x800001ae]:c.nop<br> [0x800001b0]:sw t4, 36(t1)<br>   |
|  11|[0x8000322c]<br>0xBABECAFE|- rd : x19<br> - imm_val == 236<br>                    |[0x800001bc]:c.lwsp s3, 59<br> [0x800001be]:c.nop<br> [0x800001c0]:c.nop<br> [0x800001c2]:sw s3, 40(t1)<br>   |
|  12|[0x80003230]<br>0xBABECAFE|- rd : x10<br> - imm_val == 220<br>                    |[0x800001ce]:c.lwsp a0, 55<br> [0x800001d0]:c.nop<br> [0x800001d2]:c.nop<br> [0x800001d4]:sw a0, 44(t1)<br>   |
|  13|[0x80003234]<br>0xBABECAFE|- rd : x18<br> - imm_val == 188<br>                    |[0x800001e0]:c.lwsp s2, 47<br> [0x800001e2]:c.nop<br> [0x800001e4]:c.nop<br> [0x800001e6]:sw s2, 48(t1)<br>   |
|  14|[0x80003238]<br>0xBABECAFE|- rd : x17<br> - imm_val == 124<br>                    |[0x800001f2]:c.lwsp a7, 31<br> [0x800001f4]:c.nop<br> [0x800001f6]:c.nop<br> [0x800001f8]:sw a7, 52(t1)<br>   |
|  15|[0x8000323c]<br>0xBABECAFE|- rd : x16<br> - imm_val == 84<br>                     |[0x80000204]:c.lwsp a6, 21<br> [0x80000206]:c.nop<br> [0x80000208]:c.nop<br> [0x8000020a]:sw a6, 56(t1)<br>   |
|  16|[0x80003240]<br>0xBABECAFE|- rd : x1<br> - imm_val == 168<br>                     |[0x80000216]:c.lwsp ra, 42<br> [0x80000218]:c.nop<br> [0x8000021a]:c.nop<br> [0x8000021c]:sw ra, 60(t1)<br>   |
|  17|[0x80003244]<br>0xBABECAFE|- rd : x14<br>                                         |[0x80000228]:c.lwsp a4, 0<br> [0x8000022a]:c.nop<br> [0x8000022c]:c.nop<br> [0x8000022e]:sw a4, 64(t1)<br>    |
|  18|[0x80003248]<br>0xBABECAFE|- rd : x15<br>                                         |[0x8000023a]:c.lwsp a5, 0<br> [0x8000023c]:c.nop<br> [0x8000023e]:c.nop<br> [0x80000240]:sw a5, 68(t1)<br>    |
|  19|[0x8000324c]<br>0xBABECAFE|- rd : x20<br>                                         |[0x8000024c]:c.lwsp s4, 0<br> [0x8000024e]:c.nop<br> [0x80000250]:c.nop<br> [0x80000252]:sw s4, 72(t1)<br>    |
|  20|[0x80003250]<br>0xBABECAFE|- rd : x2<br>                                          |[0x8000025e]:c.lwsp sp, 0<br> [0x80000260]:c.nop<br> [0x80000262]:c.nop<br> [0x80000264]:sw sp, 76(t1)<br>    |
|  21|[0x80003254]<br>0xBABECAFE|- rd : x31<br>                                         |[0x80000270]:c.lwsp t6, 0<br> [0x80000272]:c.nop<br> [0x80000274]:c.nop<br> [0x80000276]:sw t6, 80(t1)<br>    |
|  22|[0x80003258]<br>0xBABECAFE|- rd : x4<br>                                          |[0x80000282]:c.lwsp tp, 0<br> [0x80000284]:c.nop<br> [0x80000286]:c.nop<br> [0x80000288]:sw tp, 84(t1)<br>    |
|  23|[0x8000325c]<br>0xBABECAFE|- rd : x5<br>                                          |[0x80000294]:c.lwsp t0, 0<br> [0x80000296]:c.nop<br> [0x80000298]:c.nop<br> [0x8000029a]:sw t0, 88(t1)<br>    |
|  24|[0x80003260]<br>0xBABECAFE|- rd : x11<br>                                         |[0x800002a6]:c.lwsp a1, 0<br> [0x800002a8]:c.nop<br> [0x800002aa]:c.nop<br> [0x800002ac]:sw a1, 92(t1)<br>    |
|  25|[0x80003264]<br>0xBABECAFE|- rd : x23<br>                                         |[0x800002b8]:c.lwsp s7, 0<br> [0x800002ba]:c.nop<br> [0x800002bc]:c.nop<br> [0x800002be]:sw s7, 96(t1)<br>    |
|  26|[0x80003268]<br>0xBABECAFE|- rd : x21<br>                                         |[0x800002ca]:c.lwsp s5, 0<br> [0x800002cc]:c.nop<br> [0x800002ce]:c.nop<br> [0x800002d0]:sw s5, 100(t1)<br>   |
|  27|[0x8000326c]<br>0xBABECAFE|- rd : x28<br>                                         |[0x800002dc]:c.lwsp t3, 0<br> [0x800002de]:c.nop<br> [0x800002e0]:c.nop<br> [0x800002e2]:sw t3, 104(t1)<br>   |
|  28|[0x80003270]<br>0xBABECAFE|- rd : x13<br>                                         |[0x800002ee]:c.lwsp a3, 0<br> [0x800002f0]:c.nop<br> [0x800002f2]:c.nop<br> [0x800002f4]:sw a3, 108(t1)<br>   |
|  29|[0x80003274]<br>0xBABECAFE|- rd : x22<br>                                         |[0x80000308]:c.lwsp s6, 0<br> [0x8000030a]:c.nop<br> [0x8000030c]:c.nop<br> [0x8000030e]:sw s6, 0(ra)<br>     |
|  30|[0x80003278]<br>0xBABECAFE|- rd : x6<br>                                          |[0x8000031a]:c.lwsp t1, 0<br> [0x8000031c]:c.nop<br> [0x8000031e]:c.nop<br> [0x80000320]:sw t1, 4(ra)<br>     |
|  31|[0x8000327c]<br>0xBABECAFE|- rd : x24<br>                                         |[0x8000032c]:c.lwsp s8, 0<br> [0x8000032e]:c.nop<br> [0x80000330]:c.nop<br> [0x80000332]:sw s8, 8(ra)<br>     |
