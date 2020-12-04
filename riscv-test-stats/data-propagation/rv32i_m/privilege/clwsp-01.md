
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000332')]      |
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

|s.no|        signature         |                                coverpoints                                 |                                                     code                                                     |
|---:|--------------------------|----------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80002204]<br>0xBABECAFE|- opcode : c.lwsp<br> - rd : x12<br> - imm_val > 0<br> - imm_val == 128<br> |[0x80000108]:c.lwsp a2, 32<br> [0x8000010a]:c.nop<br> [0x8000010c]:c.nop<br> [0x8000010e]:c.sw s1, a2, 0<br>  |
|   2|[0x80002208]<br>0xBABECAFE|- rd : x19<br> - imm_val == 0<br>                                           |[0x80000118]:c.lwsp s3, 0<br> [0x8000011a]:c.nop<br> [0x8000011c]:c.nop<br> [0x8000011e]:sw s3, 4(s1)<br>     |
|   3|[0x8000220c]<br>0xBABECAFE|- rd : x1<br> - imm_val == 4<br>                                            |[0x8000012a]:c.lwsp ra, 1<br> [0x8000012c]:c.nop<br> [0x8000012e]:c.nop<br> [0x80000130]:sw ra, 8(s1)<br>     |
|   4|[0x80002210]<br>0xBABECAFE|- rd : x3<br> - imm_val == 8<br>                                            |[0x8000013c]:c.lwsp gp, 2<br> [0x8000013e]:c.nop<br> [0x80000140]:c.nop<br> [0x80000142]:sw gp, 12(s1)<br>    |
|   5|[0x80002214]<br>0xBABECAFE|- rd : x20<br> - imm_val == 16<br>                                          |[0x8000014e]:c.lwsp s4, 4<br> [0x80000150]:c.nop<br> [0x80000152]:c.nop<br> [0x80000154]:sw s4, 16(s1)<br>    |
|   6|[0x80002218]<br>0xBABECAFE|- rd : x18<br> - imm_val == 32<br>                                          |[0x80000160]:c.lwsp s2, 8<br> [0x80000162]:c.nop<br> [0x80000164]:c.nop<br> [0x80000166]:sw s2, 20(s1)<br>    |
|   7|[0x8000221c]<br>0xBABECAFE|- rd : x6<br> - imm_val == 64<br>                                           |[0x80000172]:c.lwsp t1, 16<br> [0x80000174]:c.nop<br> [0x80000176]:c.nop<br> [0x80000178]:sw t1, 24(s1)<br>   |
|   8|[0x80002220]<br>0xBABECAFE|- rd : x4<br> - imm_val == 248<br>                                          |[0x80000184]:c.lwsp tp, 62<br> [0x80000186]:c.nop<br> [0x80000188]:c.nop<br> [0x8000018a]:sw tp, 28(s1)<br>   |
|   9|[0x80002224]<br>0xBABECAFE|- rd : x5<br> - imm_val == 244<br>                                          |[0x80000196]:c.lwsp t0, 61<br> [0x80000198]:c.nop<br> [0x8000019a]:c.nop<br> [0x8000019c]:sw t0, 32(s1)<br>   |
|  10|[0x80002228]<br>0xBABECAFE|- rd : x13<br> - imm_val == 236<br>                                         |[0x800001a8]:c.lwsp a3, 59<br> [0x800001aa]:c.nop<br> [0x800001ac]:c.nop<br> [0x800001ae]:c.sw s1, a3, 36<br> |
|  11|[0x8000222c]<br>0xBABECAFE|- rd : x29<br> - imm_val == 220<br>                                         |[0x800001b8]:c.lwsp t4, 55<br> [0x800001ba]:c.nop<br> [0x800001bc]:c.nop<br> [0x800001be]:sw t4, 40(s1)<br>   |
|  12|[0x80002230]<br>0xBABECAFE|- rd : x11<br> - imm_val == 188<br>                                         |[0x800001ca]:c.lwsp a1, 47<br> [0x800001cc]:c.nop<br> [0x800001ce]:c.nop<br> [0x800001d0]:c.sw s1, a1, 44<br> |
|  13|[0x80002234]<br>0xBABECAFE|- rd : x16<br> - imm_val == 124<br>                                         |[0x800001da]:c.lwsp a6, 31<br> [0x800001dc]:c.nop<br> [0x800001de]:c.nop<br> [0x800001e0]:sw a6, 48(s1)<br>   |
|  14|[0x80002238]<br>0xBABECAFE|- rd : x24<br> - imm_val == 84<br>                                          |[0x800001ec]:c.lwsp s8, 21<br> [0x800001ee]:c.nop<br> [0x800001f0]:c.nop<br> [0x800001f2]:sw s8, 52(s1)<br>   |
|  15|[0x8000223c]<br>0xBABECAFE|- rd : x2<br> - imm_val == 168<br>                                          |[0x800001fe]:c.lwsp sp, 42<br> [0x80000200]:c.nop<br> [0x80000202]:c.nop<br> [0x80000204]:sw sp, 56(s1)<br>   |
|  16|[0x80002240]<br>0xBABECAFE|- rd : x15<br>                                                              |[0x80000210]:c.lwsp a5, 0<br> [0x80000212]:c.nop<br> [0x80000214]:c.nop<br> [0x80000216]:c.sw s1, a5, 60<br>  |
|  17|[0x80002244]<br>0xBABECAFE|- rd : x14<br>                                                              |[0x80000220]:c.lwsp a4, 0<br> [0x80000222]:c.nop<br> [0x80000224]:c.nop<br> [0x80000226]:c.sw s1, a4, 64<br>  |
|  18|[0x80002248]<br>0xBABECAFE|- rd : x30<br>                                                              |[0x80000230]:c.lwsp t5, 0<br> [0x80000232]:c.nop<br> [0x80000234]:c.nop<br> [0x80000236]:sw t5, 68(s1)<br>    |
|  19|[0x8000224c]<br>0xBABECAFE|- rd : x21<br>                                                              |[0x80000242]:c.lwsp s5, 0<br> [0x80000244]:c.nop<br> [0x80000246]:c.nop<br> [0x80000248]:sw s5, 72(s1)<br>    |
|  20|[0x80002250]<br>0xBABECAFE|- rd : x10<br>                                                              |[0x80000254]:c.lwsp a0, 0<br> [0x80000256]:c.nop<br> [0x80000258]:c.nop<br> [0x8000025a]:c.sw s1, a0, 76<br>  |
|  21|[0x80002254]<br>0xBABECAFE|- rd : x31<br>                                                              |[0x80000264]:c.lwsp t6, 0<br> [0x80000266]:c.nop<br> [0x80000268]:c.nop<br> [0x8000026a]:sw t6, 80(s1)<br>    |
|  22|[0x80002258]<br>0xBABECAFE|- rd : x17<br>                                                              |[0x80000276]:c.lwsp a7, 0<br> [0x80000278]:c.nop<br> [0x8000027a]:c.nop<br> [0x8000027c]:sw a7, 84(s1)<br>    |
|  23|[0x8000225c]<br>0xBABECAFE|- rd : x8<br>                                                               |[0x80000288]:c.lwsp fp, 0<br> [0x8000028a]:c.nop<br> [0x8000028c]:c.nop<br> [0x8000028e]:c.sw s1, s0, 88<br>  |
|  24|[0x80002260]<br>0xBABECAFE|- rd : x7<br>                                                               |[0x80000298]:c.lwsp t2, 0<br> [0x8000029a]:c.nop<br> [0x8000029c]:c.nop<br> [0x8000029e]:sw t2, 92(s1)<br>    |
|  25|[0x80002264]<br>0xBABECAFE|- rd : x28<br>                                                              |[0x800002aa]:c.lwsp t3, 0<br> [0x800002ac]:c.nop<br> [0x800002ae]:c.nop<br> [0x800002b0]:sw t3, 96(s1)<br>    |
|  26|[0x80002268]<br>0xBABECAFE|- rd : x22<br>                                                              |[0x800002bc]:c.lwsp s6, 0<br> [0x800002be]:c.nop<br> [0x800002c0]:c.nop<br> [0x800002c2]:sw s6, 100(s1)<br>   |
|  27|[0x8000226c]<br>0xBABECAFE|- rd : x25<br>                                                              |[0x800002ce]:c.lwsp s9, 0<br> [0x800002d0]:c.nop<br> [0x800002d2]:c.nop<br> [0x800002d4]:sw s9, 104(s1)<br>   |
|  28|[0x80002270]<br>0xBABECAFE|- rd : x23<br>                                                              |[0x800002e0]:c.lwsp s7, 0<br> [0x800002e2]:c.nop<br> [0x800002e4]:c.nop<br> [0x800002e6]:sw s7, 108(s1)<br>   |
|  29|[0x80002274]<br>0xBABECAFE|- rd : x9<br>                                                               |[0x800002fa]:c.lwsp s1, 0<br> [0x800002fc]:c.nop<br> [0x800002fe]:c.nop<br> [0x80000300]:sw s1, 0(ra)<br>     |
|  30|[0x80002278]<br>0xBABECAFE|- rd : x26<br>                                                              |[0x8000030c]:c.lwsp s10, 0<br> [0x8000030e]:c.nop<br> [0x80000310]:c.nop<br> [0x80000312]:sw s10, 4(ra)<br>   |
|  31|[0x8000227c]<br>0xBABECAFE|- rd : x27<br>                                                              |[0x8000031e]:c.lwsp s11, 0<br> [0x80000320]:c.nop<br> [0x80000322]:c.nop<br> [0x80000324]:sw s11, 8(ra)<br>   |
