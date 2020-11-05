
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

|s.no|        signature         |                     coverpoints                      |                                                     code                                                     |
|---:|--------------------------|------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80003204]<br>0xBABECAFE|- opcode : c.lwsp<br> - rd : x2<br> - imm_val > 0<br> |[0x80000108]:c.lwsp sp, 12<br> [0x8000010a]:c.nop<br> [0x8000010c]:c.nop<br> [0x8000010e]:sw sp, 0(fp)<br>    |
|   2|[0x80003208]<br>0xBABECAFE|- rd : x14<br> - imm_val == 0<br>                     |[0x8000011a]:c.lwsp a4, 0<br> [0x8000011c]:c.nop<br> [0x8000011e]:c.nop<br> [0x80000120]:c.sw s0, a4, 4<br>   |
|   3|[0x8000320c]<br>0xBABECAFE|- rd : x29<br> - imm_val == 4<br>                     |[0x8000012a]:c.lwsp t4, 1<br> [0x8000012c]:c.nop<br> [0x8000012e]:c.nop<br> [0x80000130]:sw t4, 8(fp)<br>     |
|   4|[0x80003210]<br>0xBABECAFE|- rd : x23<br> - imm_val == 8<br>                     |[0x8000013c]:c.lwsp s7, 2<br> [0x8000013e]:c.nop<br> [0x80000140]:c.nop<br> [0x80000142]:sw s7, 12(fp)<br>    |
|   5|[0x80003214]<br>0xBABECAFE|- rd : x15<br> - imm_val == 16<br>                    |[0x8000014e]:c.lwsp a5, 4<br> [0x80000150]:c.nop<br> [0x80000152]:c.nop<br> [0x80000154]:c.sw s0, a5, 16<br>  |
|   6|[0x80003218]<br>0xBABECAFE|- rd : x19<br> - imm_val == 32<br>                    |[0x8000015e]:c.lwsp s3, 8<br> [0x80000160]:c.nop<br> [0x80000162]:c.nop<br> [0x80000164]:sw s3, 20(fp)<br>    |
|   7|[0x8000321c]<br>0xBABECAFE|- rd : x17<br> - imm_val == 64<br>                    |[0x80000170]:c.lwsp a7, 16<br> [0x80000172]:c.nop<br> [0x80000174]:c.nop<br> [0x80000176]:sw a7, 24(fp)<br>   |
|   8|[0x80003220]<br>0xBABECAFE|- rd : x7<br> - imm_val == 128<br>                    |[0x80000182]:c.lwsp t2, 32<br> [0x80000184]:c.nop<br> [0x80000186]:c.nop<br> [0x80000188]:sw t2, 28(fp)<br>   |
|   9|[0x80003224]<br>0xBABECAFE|- rd : x3<br> - imm_val == 248<br>                    |[0x80000194]:c.lwsp gp, 62<br> [0x80000196]:c.nop<br> [0x80000198]:c.nop<br> [0x8000019a]:sw gp, 32(fp)<br>   |
|  10|[0x80003228]<br>0xBABECAFE|- rd : x16<br> - imm_val == 244<br>                   |[0x800001a6]:c.lwsp a6, 61<br> [0x800001a8]:c.nop<br> [0x800001aa]:c.nop<br> [0x800001ac]:sw a6, 36(fp)<br>   |
|  11|[0x8000322c]<br>0xBABECAFE|- rd : x5<br> - imm_val == 236<br>                    |[0x800001b8]:c.lwsp t0, 59<br> [0x800001ba]:c.nop<br> [0x800001bc]:c.nop<br> [0x800001be]:sw t0, 40(fp)<br>   |
|  12|[0x80003230]<br>0xBABECAFE|- rd : x27<br> - imm_val == 220<br>                   |[0x800001ca]:c.lwsp s11, 55<br> [0x800001cc]:c.nop<br> [0x800001ce]:c.nop<br> [0x800001d0]:sw s11, 44(fp)<br> |
|  13|[0x80003234]<br>0xBABECAFE|- rd : x9<br> - imm_val == 188<br>                    |[0x800001dc]:c.lwsp s1, 47<br> [0x800001de]:c.nop<br> [0x800001e0]:c.nop<br> [0x800001e2]:c.sw s0, s1, 48<br> |
|  14|[0x80003238]<br>0xBABECAFE|- rd : x10<br> - imm_val == 124<br>                   |[0x800001ec]:c.lwsp a0, 31<br> [0x800001ee]:c.nop<br> [0x800001f0]:c.nop<br> [0x800001f2]:c.sw s0, a0, 52<br> |
|  15|[0x8000323c]<br>0xBABECAFE|- rd : x4<br> - imm_val == 84<br>                     |[0x800001fc]:c.lwsp tp, 21<br> [0x800001fe]:c.nop<br> [0x80000200]:c.nop<br> [0x80000202]:sw tp, 56(fp)<br>   |
|  16|[0x80003240]<br>0xBABECAFE|- rd : x30<br> - imm_val == 168<br>                   |[0x8000020e]:c.lwsp t5, 42<br> [0x80000210]:c.nop<br> [0x80000212]:c.nop<br> [0x80000214]:sw t5, 60(fp)<br>   |
|  17|[0x80003244]<br>0xBABECAFE|- rd : x1<br>                                         |[0x80000220]:c.lwsp ra, 0<br> [0x80000222]:c.nop<br> [0x80000224]:c.nop<br> [0x80000226]:sw ra, 64(fp)<br>    |
|  18|[0x80003248]<br>0xBABECAFE|- rd : x6<br>                                         |[0x80000232]:c.lwsp t1, 0<br> [0x80000234]:c.nop<br> [0x80000236]:c.nop<br> [0x80000238]:sw t1, 68(fp)<br>    |
|  19|[0x8000324c]<br>0xBABECAFE|- rd : x26<br>                                        |[0x80000244]:c.lwsp s10, 0<br> [0x80000246]:c.nop<br> [0x80000248]:c.nop<br> [0x8000024a]:sw s10, 72(fp)<br>  |
|  20|[0x80003250]<br>0xBABECAFE|- rd : x21<br>                                        |[0x80000256]:c.lwsp s5, 0<br> [0x80000258]:c.nop<br> [0x8000025a]:c.nop<br> [0x8000025c]:sw s5, 76(fp)<br>    |
|  21|[0x80003254]<br>0xBABECAFE|- rd : x20<br>                                        |[0x80000268]:c.lwsp s4, 0<br> [0x8000026a]:c.nop<br> [0x8000026c]:c.nop<br> [0x8000026e]:sw s4, 80(fp)<br>    |
|  22|[0x80003258]<br>0xBABECAFE|- rd : x12<br>                                        |[0x8000027a]:c.lwsp a2, 0<br> [0x8000027c]:c.nop<br> [0x8000027e]:c.nop<br> [0x80000280]:c.sw s0, a2, 84<br>  |
|  23|[0x8000325c]<br>0xBABECAFE|- rd : x25<br>                                        |[0x8000028a]:c.lwsp s9, 0<br> [0x8000028c]:c.nop<br> [0x8000028e]:c.nop<br> [0x80000290]:sw s9, 88(fp)<br>    |
|  24|[0x80003260]<br>0xBABECAFE|- rd : x28<br>                                        |[0x8000029c]:c.lwsp t3, 0<br> [0x8000029e]:c.nop<br> [0x800002a0]:c.nop<br> [0x800002a2]:sw t3, 92(fp)<br>    |
|  25|[0x80003264]<br>0xBABECAFE|- rd : x24<br>                                        |[0x800002ae]:c.lwsp s8, 0<br> [0x800002b0]:c.nop<br> [0x800002b2]:c.nop<br> [0x800002b4]:sw s8, 96(fp)<br>    |
|  26|[0x80003268]<br>0xBABECAFE|- rd : x13<br>                                        |[0x800002c0]:c.lwsp a3, 0<br> [0x800002c2]:c.nop<br> [0x800002c4]:c.nop<br> [0x800002c6]:c.sw s0, a3, 100<br> |
|  27|[0x8000326c]<br>0xBABECAFE|- rd : x11<br>                                        |[0x800002d0]:c.lwsp a1, 0<br> [0x800002d2]:c.nop<br> [0x800002d4]:c.nop<br> [0x800002d6]:c.sw s0, a1, 104<br> |
|  28|[0x80003270]<br>0xBABECAFE|- rd : x31<br>                                        |[0x800002e0]:c.lwsp t6, 0<br> [0x800002e2]:c.nop<br> [0x800002e4]:c.nop<br> [0x800002e6]:sw t6, 108(fp)<br>   |
|  29|[0x80003274]<br>0xBABECAFE|- rd : x8<br>                                         |[0x800002fa]:c.lwsp fp, 0<br> [0x800002fc]:c.nop<br> [0x800002fe]:c.nop<br> [0x80000300]:sw fp, 0(ra)<br>     |
|  30|[0x80003278]<br>0xBABECAFE|- rd : x18<br>                                        |[0x8000030c]:c.lwsp s2, 0<br> [0x8000030e]:c.nop<br> [0x80000310]:c.nop<br> [0x80000312]:sw s2, 4(ra)<br>     |
|  31|[0x8000327c]<br>0xBABECAFE|- rd : x22<br>                                        |[0x8000031e]:c.lwsp s6, 0<br> [0x80000320]:c.nop<br> [0x80000322]:c.nop<br> [0x80000324]:sw s6, 8(ra)<br>     |
