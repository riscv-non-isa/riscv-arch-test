
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
| SIG_REGION                | [('0x80002204', '0x80002280', '31 words')]      |
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
|   1|[0x80002204]<br>0xBABECAFE|- opcode : c.lwsp<br> - rd : x6<br> - imm_val > 0<br> |[0x80000108]:c.lwsp t1, 19<br> [0x8000010a]:c.nop<br> [0x8000010c]:c.nop<br> [0x8000010e]:sw t1, 0(t0)<br>    |
|   2|[0x80002208]<br>0xBABECAFE|- rd : x31<br> - imm_val == 0<br>                     |[0x8000011a]:c.lwsp t6, 0<br> [0x8000011c]:c.nop<br> [0x8000011e]:c.nop<br> [0x80000120]:sw t6, 4(t0)<br>     |
|   3|[0x8000220c]<br>0xBABECAFE|- rd : x28<br> - imm_val == 4<br>                     |[0x8000012c]:c.lwsp t3, 1<br> [0x8000012e]:c.nop<br> [0x80000130]:c.nop<br> [0x80000132]:sw t3, 8(t0)<br>     |
|   4|[0x80002210]<br>0xBABECAFE|- rd : x4<br> - imm_val == 8<br>                      |[0x8000013e]:c.lwsp tp, 2<br> [0x80000140]:c.nop<br> [0x80000142]:c.nop<br> [0x80000144]:sw tp, 12(t0)<br>    |
|   5|[0x80002214]<br>0xBABECAFE|- rd : x21<br> - imm_val == 16<br>                    |[0x80000150]:c.lwsp s5, 4<br> [0x80000152]:c.nop<br> [0x80000154]:c.nop<br> [0x80000156]:sw s5, 16(t0)<br>    |
|   6|[0x80002218]<br>0xBABECAFE|- rd : x9<br> - imm_val == 32<br>                     |[0x80000162]:c.lwsp s1, 8<br> [0x80000164]:c.nop<br> [0x80000166]:c.nop<br> [0x80000168]:sw s1, 20(t0)<br>    |
|   7|[0x8000221c]<br>0xBABECAFE|- rd : x15<br> - imm_val == 64<br>                    |[0x80000174]:c.lwsp a5, 16<br> [0x80000176]:c.nop<br> [0x80000178]:c.nop<br> [0x8000017a]:sw a5, 24(t0)<br>   |
|   8|[0x80002220]<br>0xBABECAFE|- rd : x17<br> - imm_val == 128<br>                   |[0x80000186]:c.lwsp a7, 32<br> [0x80000188]:c.nop<br> [0x8000018a]:c.nop<br> [0x8000018c]:sw a7, 28(t0)<br>   |
|   9|[0x80002224]<br>0xBABECAFE|- rd : x19<br> - imm_val == 248<br>                   |[0x80000198]:c.lwsp s3, 62<br> [0x8000019a]:c.nop<br> [0x8000019c]:c.nop<br> [0x8000019e]:sw s3, 32(t0)<br>   |
|  10|[0x80002228]<br>0xBABECAFE|- rd : x24<br> - imm_val == 244<br>                   |[0x800001aa]:c.lwsp s8, 61<br> [0x800001ac]:c.nop<br> [0x800001ae]:c.nop<br> [0x800001b0]:sw s8, 36(t0)<br>   |
|  11|[0x8000222c]<br>0xBABECAFE|- rd : x2<br> - imm_val == 236<br>                    |[0x800001bc]:c.lwsp sp, 59<br> [0x800001be]:c.nop<br> [0x800001c0]:c.nop<br> [0x800001c2]:sw sp, 40(t0)<br>   |
|  12|[0x80002230]<br>0xBABECAFE|- rd : x11<br> - imm_val == 220<br>                   |[0x800001ce]:c.lwsp a1, 55<br> [0x800001d0]:c.nop<br> [0x800001d2]:c.nop<br> [0x800001d4]:sw a1, 44(t0)<br>   |
|  13|[0x80002234]<br>0xBABECAFE|- rd : x25<br> - imm_val == 188<br>                   |[0x800001e0]:c.lwsp s9, 47<br> [0x800001e2]:c.nop<br> [0x800001e4]:c.nop<br> [0x800001e6]:sw s9, 48(t0)<br>   |
|  14|[0x80002238]<br>0xBABECAFE|- rd : x18<br> - imm_val == 124<br>                   |[0x800001f2]:c.lwsp s2, 31<br> [0x800001f4]:c.nop<br> [0x800001f6]:c.nop<br> [0x800001f8]:sw s2, 52(t0)<br>   |
|  15|[0x8000223c]<br>0xBABECAFE|- rd : x1<br> - imm_val == 84<br>                     |[0x80000204]:c.lwsp ra, 21<br> [0x80000206]:c.nop<br> [0x80000208]:c.nop<br> [0x8000020a]:sw ra, 56(t0)<br>   |
|  16|[0x80002240]<br>0xBABECAFE|- rd : x26<br> - imm_val == 168<br>                   |[0x80000216]:c.lwsp s10, 42<br> [0x80000218]:c.nop<br> [0x8000021a]:c.nop<br> [0x8000021c]:sw s10, 60(t0)<br> |
|  17|[0x80002244]<br>0xBABECAFE|- rd : x14<br>                                        |[0x80000228]:c.lwsp a4, 0<br> [0x8000022a]:c.nop<br> [0x8000022c]:c.nop<br> [0x8000022e]:sw a4, 64(t0)<br>    |
|  18|[0x80002248]<br>0xBABECAFE|- rd : x30<br>                                        |[0x8000023a]:c.lwsp t5, 0<br> [0x8000023c]:c.nop<br> [0x8000023e]:c.nop<br> [0x80000240]:sw t5, 68(t0)<br>    |
|  19|[0x8000224c]<br>0xBABECAFE|- rd : x3<br>                                         |[0x8000024c]:c.lwsp gp, 0<br> [0x8000024e]:c.nop<br> [0x80000250]:c.nop<br> [0x80000252]:sw gp, 72(t0)<br>    |
|  20|[0x80002250]<br>0xBABECAFE|- rd : x10<br>                                        |[0x8000025e]:c.lwsp a0, 0<br> [0x80000260]:c.nop<br> [0x80000262]:c.nop<br> [0x80000264]:sw a0, 76(t0)<br>    |
|  21|[0x80002254]<br>0xBABECAFE|- rd : x20<br>                                        |[0x80000270]:c.lwsp s4, 0<br> [0x80000272]:c.nop<br> [0x80000274]:c.nop<br> [0x80000276]:sw s4, 80(t0)<br>    |
|  22|[0x80002258]<br>0xBABECAFE|- rd : x16<br>                                        |[0x80000282]:c.lwsp a6, 0<br> [0x80000284]:c.nop<br> [0x80000286]:c.nop<br> [0x80000288]:sw a6, 84(t0)<br>    |
|  23|[0x8000225c]<br>0xBABECAFE|- rd : x27<br>                                        |[0x80000294]:c.lwsp s11, 0<br> [0x80000296]:c.nop<br> [0x80000298]:c.nop<br> [0x8000029a]:sw s11, 88(t0)<br>  |
|  24|[0x80002260]<br>0xBABECAFE|- rd : x13<br>                                        |[0x800002a6]:c.lwsp a3, 0<br> [0x800002a8]:c.nop<br> [0x800002aa]:c.nop<br> [0x800002ac]:sw a3, 92(t0)<br>    |
|  25|[0x80002264]<br>0xBABECAFE|- rd : x7<br>                                         |[0x800002b8]:c.lwsp t2, 0<br> [0x800002ba]:c.nop<br> [0x800002bc]:c.nop<br> [0x800002be]:sw t2, 96(t0)<br>    |
|  26|[0x80002268]<br>0xBABECAFE|- rd : x29<br>                                        |[0x800002ca]:c.lwsp t4, 0<br> [0x800002cc]:c.nop<br> [0x800002ce]:c.nop<br> [0x800002d0]:sw t4, 100(t0)<br>   |
|  27|[0x8000226c]<br>0xBABECAFE|- rd : x12<br>                                        |[0x800002dc]:c.lwsp a2, 0<br> [0x800002de]:c.nop<br> [0x800002e0]:c.nop<br> [0x800002e2]:sw a2, 104(t0)<br>   |
|  28|[0x80002270]<br>0xBABECAFE|- rd : x8<br>                                         |[0x800002ee]:c.lwsp fp, 0<br> [0x800002f0]:c.nop<br> [0x800002f2]:c.nop<br> [0x800002f4]:sw fp, 108(t0)<br>   |
|  29|[0x80002274]<br>0xBABECAFE|- rd : x22<br>                                        |[0x80000308]:c.lwsp s6, 0<br> [0x8000030a]:c.nop<br> [0x8000030c]:c.nop<br> [0x8000030e]:sw s6, 0(ra)<br>     |
|  30|[0x80002278]<br>0xBABECAFE|- rd : x5<br>                                         |[0x8000031a]:c.lwsp t0, 0<br> [0x8000031c]:c.nop<br> [0x8000031e]:c.nop<br> [0x80000320]:sw t0, 4(ra)<br>     |
|  31|[0x8000227c]<br>0xBABECAFE|- rd : x23<br>                                        |[0x8000032c]:c.lwsp s7, 0<br> [0x8000032e]:c.nop<br> [0x80000330]:c.nop<br> [0x80000332]:sw s7, 8(ra)<br>     |
