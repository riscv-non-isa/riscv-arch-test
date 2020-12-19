
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
| SIG_REGION                | [('0x80002010', '0x80002090', '32 words')]      |
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
|   1|[0x80002010]<br>0xBABECAFE|- opcode : c.lwsp<br> - rd : x18<br> - imm_val > 0<br> - imm_val == 128<br> |[0x80000108]:c.lwsp s2, 32<br> [0x8000010a]:c.nop<br> [0x8000010c]:c.nop<br> [0x8000010e]:sw s2, 0(t2)<br>    |
|   2|[0x80002014]<br>0xBABECAFE|- rd : x12<br> - imm_val == 0<br>                                           |[0x8000011a]:c.lwsp a2, 0<br> [0x8000011c]:c.nop<br> [0x8000011e]:c.nop<br> [0x80000120]:sw a2, 4(t2)<br>     |
|   3|[0x80002018]<br>0xBABECAFE|- rd : x2<br> - imm_val == 4<br>                                            |[0x8000012c]:c.lwsp sp, 1<br> [0x8000012e]:c.nop<br> [0x80000130]:c.nop<br> [0x80000132]:sw sp, 8(t2)<br>     |
|   4|[0x8000201c]<br>0xBABECAFE|- rd : x19<br> - imm_val == 8<br>                                           |[0x8000013e]:c.lwsp s3, 2<br> [0x80000140]:c.nop<br> [0x80000142]:c.nop<br> [0x80000144]:sw s3, 12(t2)<br>    |
|   5|[0x80002020]<br>0xBABECAFE|- rd : x8<br> - imm_val == 16<br>                                           |[0x80000150]:c.lwsp fp, 4<br> [0x80000152]:c.nop<br> [0x80000154]:c.nop<br> [0x80000156]:sw fp, 16(t2)<br>    |
|   6|[0x80002024]<br>0xBABECAFE|- rd : x16<br> - imm_val == 32<br>                                          |[0x80000162]:c.lwsp a6, 8<br> [0x80000164]:c.nop<br> [0x80000166]:c.nop<br> [0x80000168]:sw a6, 20(t2)<br>    |
|   7|[0x80002028]<br>0xBABECAFE|- rd : x13<br> - imm_val == 64<br>                                          |[0x80000174]:c.lwsp a3, 16<br> [0x80000176]:c.nop<br> [0x80000178]:c.nop<br> [0x8000017a]:sw a3, 24(t2)<br>   |
|   8|[0x8000202c]<br>0xBABECAFE|- rd : x3<br> - imm_val == 248<br>                                          |[0x80000186]:c.lwsp gp, 62<br> [0x80000188]:c.nop<br> [0x8000018a]:c.nop<br> [0x8000018c]:sw gp, 28(t2)<br>   |
|   9|[0x80002030]<br>0xBABECAFE|- rd : x15<br> - imm_val == 244<br>                                         |[0x80000198]:c.lwsp a5, 61<br> [0x8000019a]:c.nop<br> [0x8000019c]:c.nop<br> [0x8000019e]:sw a5, 32(t2)<br>   |
|  10|[0x80002034]<br>0xBABECAFE|- rd : x29<br> - imm_val == 236<br>                                         |[0x800001aa]:c.lwsp t4, 59<br> [0x800001ac]:c.nop<br> [0x800001ae]:c.nop<br> [0x800001b0]:sw t4, 36(t2)<br>   |
|  11|[0x80002038]<br>0xBABECAFE|- rd : x27<br> - imm_val == 220<br>                                         |[0x800001bc]:c.lwsp s11, 55<br> [0x800001be]:c.nop<br> [0x800001c0]:c.nop<br> [0x800001c2]:sw s11, 40(t2)<br> |
|  12|[0x8000203c]<br>0xBABECAFE|- rd : x25<br> - imm_val == 188<br>                                         |[0x800001ce]:c.lwsp s9, 47<br> [0x800001d0]:c.nop<br> [0x800001d2]:c.nop<br> [0x800001d4]:sw s9, 44(t2)<br>   |
|  13|[0x80002040]<br>0xBABECAFE|- rd : x14<br> - imm_val == 124<br>                                         |[0x800001e0]:c.lwsp a4, 31<br> [0x800001e2]:c.nop<br> [0x800001e4]:c.nop<br> [0x800001e6]:sw a4, 48(t2)<br>   |
|  14|[0x80002044]<br>0xBABECAFE|- rd : x17<br> - imm_val == 84<br>                                          |[0x800001f2]:c.lwsp a7, 21<br> [0x800001f4]:c.nop<br> [0x800001f6]:c.nop<br> [0x800001f8]:sw a7, 52(t2)<br>   |
|  15|[0x80002048]<br>0xBABECAFE|- rd : x9<br> - imm_val == 168<br>                                          |[0x80000204]:c.lwsp s1, 42<br> [0x80000206]:c.nop<br> [0x80000208]:c.nop<br> [0x8000020a]:sw s1, 56(t2)<br>   |
|  16|[0x8000204c]<br>0xBABECAFE|- rd : x22<br>                                                              |[0x80000216]:c.lwsp s6, 0<br> [0x80000218]:c.nop<br> [0x8000021a]:c.nop<br> [0x8000021c]:sw s6, 60(t2)<br>    |
|  17|[0x80002050]<br>0xBABECAFE|- rd : x6<br>                                                               |[0x80000228]:c.lwsp t1, 0<br> [0x8000022a]:c.nop<br> [0x8000022c]:c.nop<br> [0x8000022e]:sw t1, 64(t2)<br>    |
|  18|[0x80002054]<br>0xBABECAFE|- rd : x31<br>                                                              |[0x8000023a]:c.lwsp t6, 0<br> [0x8000023c]:c.nop<br> [0x8000023e]:c.nop<br> [0x80000240]:sw t6, 68(t2)<br>    |
|  19|[0x80002058]<br>0xBABECAFE|- rd : x1<br>                                                               |[0x8000024c]:c.lwsp ra, 0<br> [0x8000024e]:c.nop<br> [0x80000250]:c.nop<br> [0x80000252]:sw ra, 72(t2)<br>    |
|  20|[0x8000205c]<br>0xBABECAFE|- rd : x28<br>                                                              |[0x8000025e]:c.lwsp t3, 0<br> [0x80000260]:c.nop<br> [0x80000262]:c.nop<br> [0x80000264]:sw t3, 76(t2)<br>    |
|  21|[0x80002060]<br>0xBABECAFE|- rd : x5<br>                                                               |[0x80000270]:c.lwsp t0, 0<br> [0x80000272]:c.nop<br> [0x80000274]:c.nop<br> [0x80000276]:sw t0, 80(t2)<br>    |
|  22|[0x80002064]<br>0xBABECAFE|- rd : x10<br>                                                              |[0x80000282]:c.lwsp a0, 0<br> [0x80000284]:c.nop<br> [0x80000286]:c.nop<br> [0x80000288]:sw a0, 84(t2)<br>    |
|  23|[0x80002068]<br>0xBABECAFE|- rd : x26<br>                                                              |[0x80000294]:c.lwsp s10, 0<br> [0x80000296]:c.nop<br> [0x80000298]:c.nop<br> [0x8000029a]:sw s10, 88(t2)<br>  |
|  24|[0x8000206c]<br>0xBABECAFE|- rd : x23<br>                                                              |[0x800002a6]:c.lwsp s7, 0<br> [0x800002a8]:c.nop<br> [0x800002aa]:c.nop<br> [0x800002ac]:sw s7, 92(t2)<br>    |
|  25|[0x80002070]<br>0xBABECAFE|- rd : x4<br>                                                               |[0x800002b8]:c.lwsp tp, 0<br> [0x800002ba]:c.nop<br> [0x800002bc]:c.nop<br> [0x800002be]:sw tp, 96(t2)<br>    |
|  26|[0x80002074]<br>0xBABECAFE|- rd : x11<br>                                                              |[0x800002ca]:c.lwsp a1, 0<br> [0x800002cc]:c.nop<br> [0x800002ce]:c.nop<br> [0x800002d0]:sw a1, 100(t2)<br>   |
|  27|[0x80002078]<br>0xBABECAFE|- rd : x30<br>                                                              |[0x800002dc]:c.lwsp t5, 0<br> [0x800002de]:c.nop<br> [0x800002e0]:c.nop<br> [0x800002e2]:sw t5, 104(t2)<br>   |
|  28|[0x8000207c]<br>0xBABECAFE|- rd : x20<br>                                                              |[0x800002ee]:c.lwsp s4, 0<br> [0x800002f0]:c.nop<br> [0x800002f2]:c.nop<br> [0x800002f4]:sw s4, 108(t2)<br>   |
|  29|[0x80002080]<br>0xBABECAFE|- rd : x21<br>                                                              |[0x80000308]:c.lwsp s5, 0<br> [0x8000030a]:c.nop<br> [0x8000030c]:c.nop<br> [0x8000030e]:sw s5, 0(ra)<br>     |
|  30|[0x80002084]<br>0xBABECAFE|- rd : x24<br>                                                              |[0x8000031a]:c.lwsp s8, 0<br> [0x8000031c]:c.nop<br> [0x8000031e]:c.nop<br> [0x80000320]:sw s8, 4(ra)<br>     |
|  31|[0x80002088]<br>0xBABECAFE|- rd : x7<br>                                                               |[0x8000032c]:c.lwsp t2, 0<br> [0x8000032e]:c.nop<br> [0x80000330]:c.nop<br> [0x80000332]:sw t2, 8(ra)<br>     |
