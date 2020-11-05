
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800001c0')]      |
| SIG_REGION                | [('0x80003204', '0x80003294', '36 words')]      |
| COV_LABELS                | cli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cli-01.S/cli-01.S    |
| Total Number of coverpoints| 50     |
| Total Coverpoints Hit     | 50      |
| Total Signature Updates   | 33      |
| STAT1                     | 32      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800001ba]:c.li a0, 61
      [0x800001bc]:sw a0, 12(ra)
 -- Signature Address: 0x80003290 Data: 0xFFFFFFFD
 -- Redundant Coverpoints hit by the op
      - opcode : c.li
      - rd : x10
      - imm_val == -3






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

|s.no|        signature         |                                     coverpoints                                     |                             code                              |
|---:|--------------------------|-------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFFFFFE0|- opcode : c.li<br> - rd : x22<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> |[0x80000100]:c.li s6, 32<br> [0x80000102]:sw s6, 0(s1)<br>     |
|   2|[0x80003214]<br>0x00000000|- rd : x19<br> - imm_val == 0<br>                                                    |[0x80000106]:c.li s3, 0<br> [0x80000108]:sw s3, 4(s1)<br>      |
|   3|[0x80003218]<br>0x0000001F|- rd : x26<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br>                     |[0x8000010c]:c.li s10, 31<br> [0x8000010e]:sw s10, 8(s1)<br>   |
|   4|[0x8000321c]<br>0x00000001|- rd : x15<br> - imm_val == 1<br>                                                    |[0x80000112]:c.li a5, 1<br> [0x80000114]:c.sw s1, a5, 12<br>   |
|   5|[0x80003220]<br>0x00000002|- rd : x7<br> - imm_val == 2<br>                                                     |[0x80000116]:c.li t2, 2<br> [0x80000118]:sw t2, 16(s1)<br>     |
|   6|[0x80003224]<br>0x00000004|- rd : x12<br> - imm_val == 4<br>                                                    |[0x8000011c]:c.li a2, 4<br> [0x8000011e]:c.sw s1, a2, 20<br>   |
|   7|[0x80003228]<br>0x00000008|- rd : x18<br> - imm_val == 8<br>                                                    |[0x80000120]:c.li s2, 8<br> [0x80000122]:sw s2, 24(s1)<br>     |
|   8|[0x8000322c]<br>0x00000010|- rd : x8<br> - imm_val == 16<br>                                                    |[0x80000126]:c.li fp, 16<br> [0x80000128]:c.sw s1, s0, 28<br>  |
|   9|[0x80003230]<br>0xFFFFFFEA|- rd : x20<br> - imm_val == -22<br>                                                  |[0x8000012a]:c.li s4, 42<br> [0x8000012c]:sw s4, 32(s1)<br>    |
|  10|[0x80003234]<br>0xFFFFFFFE|- rd : x3<br> - imm_val == -2<br>                                                    |[0x80000130]:c.li gp, 62<br> [0x80000132]:sw gp, 36(s1)<br>    |
|  11|[0x80003238]<br>0x00000000|- rd : x0<br> - imm_val == -3<br>                                                    |[0x80000136]:c.li.hint.61<br> [0x80000138]:sw zero, 40(s1)<br> |
|  12|[0x8000323c]<br>0xFFFFFFFB|- rd : x4<br> - imm_val == -5<br>                                                    |[0x8000013c]:c.li tp, 59<br> [0x8000013e]:sw tp, 44(s1)<br>    |
|  13|[0x80003240]<br>0xFFFFFFF7|- rd : x25<br> - imm_val == -9<br>                                                   |[0x80000142]:c.li s9, 55<br> [0x80000144]:sw s9, 48(s1)<br>    |
|  14|[0x80003244]<br>0xFFFFFFEF|- rd : x13<br> - imm_val == -17<br>                                                  |[0x80000148]:c.li a3, 47<br> [0x8000014a]:c.sw s1, a3, 52<br>  |
|  15|[0x80003248]<br>0x00000015|- rd : x17<br> - imm_val == 21<br>                                                   |[0x8000014c]:c.li a7, 21<br> [0x8000014e]:sw a7, 56(s1)<br>    |
|  16|[0x8000324c]<br>0x00000000|- rd : x2<br>                                                                        |[0x80000152]:c.li sp, 0<br> [0x80000154]:sw sp, 60(s1)<br>     |
|  17|[0x80003250]<br>0x00000000|- rd : x30<br>                                                                       |[0x80000158]:c.li t5, 0<br> [0x8000015a]:sw t5, 64(s1)<br>     |
|  18|[0x80003254]<br>0x00000000|- rd : x27<br>                                                                       |[0x8000015e]:c.li s11, 0<br> [0x80000160]:sw s11, 68(s1)<br>   |
|  19|[0x80003258]<br>0x00000000|- rd : x16<br>                                                                       |[0x80000164]:c.li a6, 0<br> [0x80000166]:sw a6, 72(s1)<br>     |
|  20|[0x8000325c]<br>0x00000000|- rd : x11<br>                                                                       |[0x8000016a]:c.li a1, 0<br> [0x8000016c]:c.sw s1, a1, 76<br>   |
|  21|[0x80003260]<br>0x00000000|- rd : x10<br>                                                                       |[0x8000016e]:c.li a0, 0<br> [0x80000170]:c.sw s1, a0, 80<br>   |
|  22|[0x80003264]<br>0x00000000|- rd : x29<br>                                                                       |[0x80000172]:c.li t4, 0<br> [0x80000174]:sw t4, 84(s1)<br>     |
|  23|[0x80003268]<br>0x00000000|- rd : x14<br>                                                                       |[0x80000178]:c.li a4, 0<br> [0x8000017a]:c.sw s1, a4, 88<br>   |
|  24|[0x8000326c]<br>0x00000000|- rd : x5<br>                                                                        |[0x8000017c]:c.li t0, 0<br> [0x8000017e]:sw t0, 92(s1)<br>     |
|  25|[0x80003270]<br>0x00000000|- rd : x28<br>                                                                       |[0x80000182]:c.li t3, 0<br> [0x80000184]:sw t3, 96(s1)<br>     |
|  26|[0x80003274]<br>0x00000000|- rd : x23<br>                                                                       |[0x80000188]:c.li s7, 0<br> [0x8000018a]:sw s7, 100(s1)<br>    |
|  27|[0x80003278]<br>0x00000000|- rd : x6<br>                                                                        |[0x8000018e]:c.li t1, 0<br> [0x80000190]:sw t1, 104(s1)<br>    |
|  28|[0x8000327c]<br>0x00000000|- rd : x31<br>                                                                       |[0x80000194]:c.li t6, 0<br> [0x80000196]:sw t6, 108(s1)<br>    |
|  29|[0x80003280]<br>0x00000000|- rd : x1<br>                                                                        |[0x8000019a]:c.li ra, 0<br> [0x8000019c]:sw ra, 112(s1)<br>    |
|  30|[0x80003284]<br>0x00000000|- rd : x9<br>                                                                        |[0x800001a8]:c.li s1, 0<br> [0x800001aa]:sw s1, 0(ra)<br>      |
|  31|[0x80003288]<br>0x00000000|- rd : x24<br>                                                                       |[0x800001ae]:c.li s8, 0<br> [0x800001b0]:sw s8, 4(ra)<br>      |
|  32|[0x8000328c]<br>0x00000000|- rd : x21<br>                                                                       |[0x800001b4]:c.li s5, 0<br> [0x800001b6]:sw s5, 8(ra)<br>      |
