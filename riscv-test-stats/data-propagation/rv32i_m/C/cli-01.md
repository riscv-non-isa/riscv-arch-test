
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
| SIG_REGION                | [('0x80002010', '0x80002090', '32 words')]      |
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
|   1|[0x80002010]<br>0xFFFFFFE0|- opcode : c.li<br> - rd : x22<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> |[0x80000100]:c.li s6, 32<br> [0x80000102]:sw s6, 0(a3)<br>    |
|   2|[0x80002014]<br>0x00000000|- rd : x2<br> - imm_val == 0<br>                                                     |[0x80000106]:c.li sp, 0<br> [0x80000108]:sw sp, 4(a3)<br>     |
|   3|[0x80002018]<br>0x0000001F|- rd : x11<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br>                     |[0x8000010c]:c.li a1, 31<br> [0x8000010e]:c.sw a3, a1, 8<br>  |
|   4|[0x8000201c]<br>0x00000001|- rd : x15<br> - imm_val == 1<br>                                                    |[0x80000110]:c.li a5, 1<br> [0x80000112]:c.sw a3, a5, 12<br>  |
|   5|[0x80002020]<br>0x00000002|- rd : x9<br> - imm_val == 2<br>                                                     |[0x80000114]:c.li s1, 2<br> [0x80000116]:c.sw a3, s1, 16<br>  |
|   6|[0x80002024]<br>0x00000004|- rd : x25<br> - imm_val == 4<br>                                                    |[0x80000118]:c.li s9, 4<br> [0x8000011a]:sw s9, 20(a3)<br>    |
|   7|[0x80002028]<br>0x00000008|- rd : x5<br> - imm_val == 8<br>                                                     |[0x8000011e]:c.li t0, 8<br> [0x80000120]:sw t0, 24(a3)<br>    |
|   8|[0x8000202c]<br>0x00000010|- rd : x14<br> - imm_val == 16<br>                                                   |[0x80000124]:c.li a4, 16<br> [0x80000126]:c.sw a3, a4, 28<br> |
|   9|[0x80002030]<br>0xFFFFFFEA|- rd : x12<br> - imm_val == -22<br>                                                  |[0x80000128]:c.li a2, 42<br> [0x8000012a]:c.sw a3, a2, 32<br> |
|  10|[0x80002034]<br>0xFFFFFFFE|- rd : x23<br> - imm_val == -2<br>                                                   |[0x8000012c]:c.li s7, 62<br> [0x8000012e]:sw s7, 36(a3)<br>   |
|  11|[0x80002038]<br>0xFFFFFFFD|- rd : x1<br> - imm_val == -3<br>                                                    |[0x80000132]:c.li ra, 61<br> [0x80000134]:sw ra, 40(a3)<br>   |
|  12|[0x8000203c]<br>0xFFFFFFFB|- rd : x3<br> - imm_val == -5<br>                                                    |[0x80000138]:c.li gp, 59<br> [0x8000013a]:sw gp, 44(a3)<br>   |
|  13|[0x80002040]<br>0xFFFFFFF7|- rd : x8<br> - imm_val == -9<br>                                                    |[0x8000013e]:c.li fp, 55<br> [0x80000140]:c.sw a3, s0, 48<br> |
|  14|[0x80002044]<br>0xFFFFFFEF|- rd : x29<br> - imm_val == -17<br>                                                  |[0x80000142]:c.li t4, 47<br> [0x80000144]:sw t4, 52(a3)<br>   |
|  15|[0x80002048]<br>0x00000015|- rd : x21<br> - imm_val == 21<br>                                                   |[0x80000148]:c.li s5, 21<br> [0x8000014a]:sw s5, 56(a3)<br>   |
|  16|[0x8000204c]<br>0x00000000|- rd : x10<br>                                                                       |[0x8000014e]:c.li a0, 0<br> [0x80000150]:c.sw a3, a0, 60<br>  |
|  17|[0x80002050]<br>0x00000000|- rd : x7<br>                                                                        |[0x80000152]:c.li t2, 0<br> [0x80000154]:sw t2, 64(a3)<br>    |
|  18|[0x80002054]<br>0x00000000|- rd : x0<br>                                                                        |[0x80000158]:c.li.hint.0<br> [0x8000015a]:sw zero, 68(a3)<br> |
|  19|[0x80002058]<br>0x00000000|- rd : x17<br>                                                                       |[0x8000015e]:c.li a7, 0<br> [0x80000160]:sw a7, 72(a3)<br>    |
|  20|[0x8000205c]<br>0x00000000|- rd : x27<br>                                                                       |[0x80000164]:c.li s11, 0<br> [0x80000166]:sw s11, 76(a3)<br>  |
|  21|[0x80002060]<br>0x00000000|- rd : x6<br>                                                                        |[0x8000016a]:c.li t1, 0<br> [0x8000016c]:sw t1, 80(a3)<br>    |
|  22|[0x80002064]<br>0x00000000|- rd : x28<br>                                                                       |[0x80000170]:c.li t3, 0<br> [0x80000172]:sw t3, 84(a3)<br>    |
|  23|[0x80002068]<br>0x00000000|- rd : x19<br>                                                                       |[0x80000176]:c.li s3, 0<br> [0x80000178]:sw s3, 88(a3)<br>    |
|  24|[0x8000206c]<br>0x00000000|- rd : x18<br>                                                                       |[0x8000017c]:c.li s2, 0<br> [0x8000017e]:sw s2, 92(a3)<br>    |
|  25|[0x80002070]<br>0x00000000|- rd : x16<br>                                                                       |[0x80000182]:c.li a6, 0<br> [0x80000184]:sw a6, 96(a3)<br>    |
|  26|[0x80002074]<br>0x00000000|- rd : x4<br>                                                                        |[0x80000188]:c.li tp, 0<br> [0x8000018a]:sw tp, 100(a3)<br>   |
|  27|[0x80002078]<br>0x00000000|- rd : x24<br>                                                                       |[0x8000018e]:c.li s8, 0<br> [0x80000190]:sw s8, 104(a3)<br>   |
|  28|[0x8000207c]<br>0x00000000|- rd : x26<br>                                                                       |[0x80000194]:c.li s10, 0<br> [0x80000196]:sw s10, 108(a3)<br> |
|  29|[0x80002080]<br>0x00000000|- rd : x31<br>                                                                       |[0x8000019a]:c.li t6, 0<br> [0x8000019c]:sw t6, 112(a3)<br>   |
|  30|[0x80002084]<br>0x00000000|- rd : x13<br>                                                                       |[0x800001a8]:c.li a3, 0<br> [0x800001aa]:sw a3, 0(ra)<br>     |
|  31|[0x80002088]<br>0x00000000|- rd : x20<br>                                                                       |[0x800001ae]:c.li s4, 0<br> [0x800001b0]:sw s4, 4(ra)<br>     |
|  32|[0x8000208c]<br>0x00000000|- rd : x30<br>                                                                       |[0x800001b4]:c.li t5, 0<br> [0x800001b6]:sw t5, 8(ra)<br>     |
