
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
| SIG_REGION                | [('0x80003204', '0x80003284', '32 words')]      |
| COV_LABELS                | cli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cli-01.S/cli-01.S    |
| Total Number of coverpoints| 50     |
| Total Coverpoints Hit     | 50      |
| Total Signature Updates   | 32      |
| STAT1                     | 32      |
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

|s.no|        signature         |                                     coverpoints                                     |                             code                             |
|---:|--------------------------|-------------------------------------------------------------------------------------|--------------------------------------------------------------|
|   1|[0x80003204]<br>0xFFFFFFE0|- opcode : c.li<br> - rd : x21<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> |[0x80000100]:c.li s5, 32<br> [0x80000102]:sw s5, 0(a1)<br>    |
|   2|[0x80003208]<br>0x00000000|- rd : x30<br> - imm_val == 0<br>                                                    |[0x80000106]:c.li t5, 0<br> [0x80000108]:sw t5, 4(a1)<br>     |
|   3|[0x8000320c]<br>0x0000001F|- rd : x6<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br>                      |[0x8000010c]:c.li t1, 31<br> [0x8000010e]:sw t1, 8(a1)<br>    |
|   4|[0x80003210]<br>0x00000001|- rd : x3<br> - imm_val == 1<br>                                                     |[0x80000112]:c.li gp, 1<br> [0x80000114]:sw gp, 12(a1)<br>    |
|   5|[0x80003214]<br>0x00000002|- rd : x10<br> - imm_val == 2<br>                                                    |[0x80000118]:c.li a0, 2<br> [0x8000011a]:c.sw a1, a0, 16<br>  |
|   6|[0x80003218]<br>0x00000004|- rd : x31<br> - imm_val == 4<br>                                                    |[0x8000011c]:c.li t6, 4<br> [0x8000011e]:sw t6, 20(a1)<br>    |
|   7|[0x8000321c]<br>0x00000008|- rd : x19<br> - imm_val == 8<br>                                                    |[0x80000122]:c.li s3, 8<br> [0x80000124]:sw s3, 24(a1)<br>    |
|   8|[0x80003220]<br>0x00000010|- rd : x14<br> - imm_val == 16<br>                                                   |[0x80000128]:c.li a4, 16<br> [0x8000012a]:c.sw a1, a4, 28<br> |
|   9|[0x80003224]<br>0xFFFFFFEA|- rd : x1<br> - imm_val == -22<br>                                                   |[0x8000012c]:c.li ra, 42<br> [0x8000012e]:sw ra, 32(a1)<br>   |
|  10|[0x80003228]<br>0xFFFFFFFE|- rd : x13<br> - imm_val == -2<br>                                                   |[0x80000132]:c.li a3, 62<br> [0x80000134]:c.sw a1, a3, 36<br> |
|  11|[0x8000322c]<br>0xFFFFFFFD|- rd : x24<br> - imm_val == -3<br>                                                   |[0x80000136]:c.li s8, 61<br> [0x80000138]:sw s8, 40(a1)<br>   |
|  12|[0x80003230]<br>0xFFFFFFFB|- rd : x28<br> - imm_val == -5<br>                                                   |[0x8000013c]:c.li t3, 59<br> [0x8000013e]:sw t3, 44(a1)<br>   |
|  13|[0x80003234]<br>0xFFFFFFF7|- rd : x27<br> - imm_val == -9<br>                                                   |[0x80000142]:c.li s11, 55<br> [0x80000144]:sw s11, 48(a1)<br> |
|  14|[0x80003238]<br>0xFFFFFFEF|- rd : x9<br> - imm_val == -17<br>                                                   |[0x80000148]:c.li s1, 47<br> [0x8000014a]:c.sw a1, s1, 52<br> |
|  15|[0x8000323c]<br>0x00000015|- rd : x5<br> - imm_val == 21<br>                                                    |[0x8000014c]:c.li t0, 21<br> [0x8000014e]:sw t0, 56(a1)<br>   |
|  16|[0x80003240]<br>0x00000000|- rd : x4<br>                                                                        |[0x80000152]:c.li tp, 0<br> [0x80000154]:sw tp, 60(a1)<br>    |
|  17|[0x80003244]<br>0x00000000|- rd : x0<br>                                                                        |[0x80000158]:c.li.hint.0<br> [0x8000015a]:sw zero, 64(a1)<br> |
|  18|[0x80003248]<br>0x00000000|- rd : x22<br>                                                                       |[0x8000015e]:c.li s6, 0<br> [0x80000160]:sw s6, 68(a1)<br>    |
|  19|[0x8000324c]<br>0x00000000|- rd : x12<br>                                                                       |[0x80000164]:c.li a2, 0<br> [0x80000166]:c.sw a1, a2, 72<br>  |
|  20|[0x80003250]<br>0x00000000|- rd : x25<br>                                                                       |[0x80000168]:c.li s9, 0<br> [0x8000016a]:sw s9, 76(a1)<br>    |
|  21|[0x80003254]<br>0x00000000|- rd : x2<br>                                                                        |[0x8000016e]:c.li sp, 0<br> [0x80000170]:sw sp, 80(a1)<br>    |
|  22|[0x80003258]<br>0x00000000|- rd : x26<br>                                                                       |[0x80000174]:c.li s10, 0<br> [0x80000176]:sw s10, 84(a1)<br>  |
|  23|[0x8000325c]<br>0x00000000|- rd : x29<br>                                                                       |[0x8000017a]:c.li t4, 0<br> [0x8000017c]:sw t4, 88(a1)<br>    |
|  24|[0x80003260]<br>0x00000000|- rd : x16<br>                                                                       |[0x80000180]:c.li a6, 0<br> [0x80000182]:sw a6, 92(a1)<br>    |
|  25|[0x80003264]<br>0x00000000|- rd : x8<br>                                                                        |[0x80000186]:c.li fp, 0<br> [0x80000188]:c.sw a1, s0, 96<br>  |
|  26|[0x80003268]<br>0x00000000|- rd : x18<br>                                                                       |[0x8000018a]:c.li s2, 0<br> [0x8000018c]:sw s2, 100(a1)<br>   |
|  27|[0x8000326c]<br>0x00000000|- rd : x23<br>                                                                       |[0x80000190]:c.li s7, 0<br> [0x80000192]:sw s7, 104(a1)<br>   |
|  28|[0x80003270]<br>0x00000000|- rd : x7<br>                                                                        |[0x80000196]:c.li t2, 0<br> [0x80000198]:sw t2, 108(a1)<br>   |
|  29|[0x80003274]<br>0x00000000|- rd : x15<br>                                                                       |[0x8000019c]:c.li a5, 0<br> [0x8000019e]:c.sw a1, a5, 112<br> |
|  30|[0x80003278]<br>0x00000000|- rd : x20<br>                                                                       |[0x800001a8]:c.li s4, 0<br> [0x800001aa]:sw s4, 0(ra)<br>     |
|  31|[0x8000327c]<br>0x00000000|- rd : x17<br>                                                                       |[0x800001ae]:c.li a7, 0<br> [0x800001b0]:sw a7, 4(ra)<br>     |
|  32|[0x80003280]<br>0x00000000|- rd : x11<br>                                                                       |[0x800001b4]:c.li a1, 0<br> [0x800001b6]:sw a1, 8(ra)<br>     |
