
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000222')]      |
| SIG_REGION                | [('0x80002204', '0x80002284', '32 words')]      |
| COV_LABELS                | clui      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/clui-01.S/clui-01.S    |
| Total Number of coverpoints| 50     |
| Total Coverpoints Hit     | 50      |
| Total Signature Updates   | 32      |
| STAT1                     | 31      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000218]:c.lui a0, 2
      [0x8000021a]:sw a0, 8(ra)
 -- Signature Address: 0x80002280 Data: 0x00002000
 -- Redundant Coverpoints hit by the op
      - opcode : c.lui
      - rd : x10
      - rs1_val > 0 and imm_val < 32 and imm_val !=0 
      - imm_val == 2






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
|   1|[0x80002204]<br>0xFFFEF000|- opcode : c.lui<br> - rd : x26<br> - rs1_val > 0 and imm_val > 32<br> - imm_val == 47<br> |[0x80000104]:c.lui s10, 47<br> [0x80000106]:c.swsp s10, 0<br>  |
|   2|[0x80002208]<br>0x00011000|- rd : x24<br> - rs1_val > 0 and imm_val < 32 and imm_val !=0 <br>                         |[0x8000010c]:c.lui s8, 17<br> [0x8000010e]:c.swsp s8, 1<br>    |
|   3|[0x8000220c]<br>0xFFFFF000|- rd : x3<br> - rs1_val < 0 and imm_val > 32<br>                                           |[0x80000114]:c.lui gp, 63<br> [0x80000116]:c.swsp gp, 2<br>    |
|   4|[0x80002210]<br>0x00015000|- rd : x11<br> - rs1_val < 0 and imm_val < 32 and imm_val !=0 <br> - imm_val == 21<br>     |[0x80000120]:c.lui a1, 21<br> [0x80000122]:c.swsp a1, 3<br>    |
|   5|[0x80002214]<br>0x00001000|- rd : x5<br> - imm_val == 1<br>                                                           |[0x80000128]:c.lui t0, 1<br> [0x8000012a]:c.swsp t0, 4<br>     |
|   6|[0x80002218]<br>0x00000000|- rd : x0<br> - imm_val == 2<br>                                                           |[0x80000134]:c.lui.hint.2<br> [0x80000136]:c.swsp zero, 5<br>  |
|   7|[0x8000221c]<br>0x00004000|- rd : x30<br> - imm_val == 4<br>                                                          |[0x80000140]:c.lui t5, 4<br> [0x80000142]:c.swsp t5, 6<br>     |
|   8|[0x80002220]<br>0x00008000|- rd : x25<br> - imm_val == 8<br>                                                          |[0x80000148]:c.lui s9, 8<br> [0x8000014a]:c.swsp s9, 7<br>     |
|   9|[0x80002224]<br>0x00010000|- rd : x16<br> - imm_val == 16<br>                                                         |[0x80000150]:c.lui a6, 16<br> [0x80000152]:c.swsp a6, 8<br>    |
|  10|[0x80002228]<br>0xFFFEA000|- rd : x23<br> - imm_val == 42<br>                                                         |[0x8000015c]:c.lui s7, 42<br> [0x8000015e]:c.swsp s7, 9<br>    |
|  11|[0x8000222c]<br>0xFFFE0000|- rd : x22<br> - imm_val == 32<br>                                                         |[0x80000164]:c.lui s6, 32<br> [0x80000166]:c.swsp s6, 10<br>   |
|  12|[0x80002230]<br>0xFFFFE000|- rd : x14<br> - imm_val == 62<br>                                                         |[0x8000016c]:c.lui a4, 62<br> [0x8000016e]:c.swsp a4, 11<br>   |
|  13|[0x80002234]<br>0xFFFFD000|- rd : x4<br> - imm_val == 61<br>                                                          |[0x80000174]:c.lui tp, 61<br> [0x80000176]:c.swsp tp, 12<br>   |
|  14|[0x80002238]<br>0xFFFFB000|- rd : x7<br> - imm_val == 59<br>                                                          |[0x8000017c]:c.lui t2, 59<br> [0x8000017e]:c.swsp t2, 13<br>   |
|  15|[0x8000223c]<br>0xFFFF7000|- rd : x15<br> - imm_val == 55<br>                                                         |[0x80000184]:c.lui a5, 55<br> [0x80000186]:c.swsp a5, 14<br>   |
|  16|[0x80002240]<br>0x0001F000|- rd : x17<br> - imm_val == 31<br>                                                         |[0x8000018c]:c.lui a7, 31<br> [0x8000018e]:c.swsp a7, 15<br>   |
|  17|[0x80002244]<br>0x00010000|- rd : x13<br>                                                                             |[0x80000194]:c.lui a3, 16<br> [0x80000196]:c.swsp a3, 16<br>   |
|  18|[0x80002248]<br>0x00010000|- rd : x27<br>                                                                             |[0x8000019c]:c.lui s11, 16<br> [0x8000019e]:c.swsp s11, 17<br> |
|  19|[0x8000224c]<br>0x00010000|- rd : x29<br>                                                                             |[0x800001a4]:c.lui t4, 16<br> [0x800001a6]:c.swsp t4, 18<br>   |
|  20|[0x80002250]<br>0x00010000|- rd : x1<br>                                                                              |[0x800001ac]:c.lui ra, 16<br> [0x800001ae]:c.swsp ra, 19<br>   |
|  21|[0x80002254]<br>0x00010000|- rd : x28<br>                                                                             |[0x800001b4]:c.lui t3, 16<br> [0x800001b6]:c.swsp t3, 20<br>   |
|  22|[0x80002258]<br>0x00010000|- rd : x8<br>                                                                              |[0x800001bc]:c.lui fp, 16<br> [0x800001be]:c.swsp fp, 21<br>   |
|  23|[0x8000225c]<br>0x00010000|- rd : x18<br>                                                                             |[0x800001c4]:c.lui s2, 16<br> [0x800001c6]:c.swsp s2, 22<br>   |
|  24|[0x80002260]<br>0x00010000|- rd : x9<br>                                                                              |[0x800001cc]:c.lui s1, 16<br> [0x800001ce]:c.swsp s1, 23<br>   |
|  25|[0x80002264]<br>0x00010000|- rd : x31<br>                                                                             |[0x800001d4]:c.lui t6, 16<br> [0x800001d6]:c.swsp t6, 24<br>   |
|  26|[0x80002268]<br>0x00010000|- rd : x21<br>                                                                             |[0x800001dc]:c.lui s5, 16<br> [0x800001de]:c.swsp s5, 25<br>   |
|  27|[0x8000226c]<br>0x00010000|- rd : x10<br>                                                                             |[0x800001e4]:c.lui a0, 16<br> [0x800001e6]:c.swsp a0, 26<br>   |
|  28|[0x80002270]<br>0x00010000|- rd : x20<br>                                                                             |[0x800001ec]:c.lui s4, 16<br> [0x800001ee]:c.swsp s4, 27<br>   |
|  29|[0x80002274]<br>0x00010000|- rd : x12<br>                                                                             |[0x800001f4]:c.lui a2, 16<br> [0x800001f6]:c.swsp a2, 28<br>   |
|  30|[0x80002278]<br>0x00010000|- rd : x6<br>                                                                              |[0x80000204]:c.lui t1, 16<br> [0x80000206]:sw t1, 0(ra)<br>    |
|  31|[0x8000227c]<br>0x00010000|- rd : x19<br>                                                                             |[0x8000020e]:c.lui s3, 16<br> [0x80000210]:sw s3, 4(ra)<br>    |
