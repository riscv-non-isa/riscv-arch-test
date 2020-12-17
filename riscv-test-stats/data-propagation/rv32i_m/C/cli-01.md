
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800001d0')]      |
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
|   1|[0x80002010]<br>0xFFFFFFE0|- opcode : c.li<br> - rd : x10<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> |[0x80000100]:c.li a0, 32<br> [0x80000102]:sw a0, 0(tp)<br>    |
|   2|[0x80002014]<br>0x00000000|- rd : x18<br> - imm_val == 0<br>                                                    |[0x80000106]:c.li s2, 0<br> [0x80000108]:sw s2, 4(tp)<br>     |
|   3|[0x80002018]<br>0x0000001F|- rd : x16<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br>                     |[0x8000010c]:c.li a6, 31<br> [0x8000010e]:sw a6, 8(tp)<br>    |
|   4|[0x8000201c]<br>0x00000001|- rd : x29<br> - imm_val == 1<br>                                                    |[0x80000112]:c.li t4, 1<br> [0x80000114]:sw t4, 12(tp)<br>    |
|   5|[0x80002020]<br>0x00000002|- rd : x15<br> - imm_val == 2<br>                                                    |[0x80000118]:c.li a5, 2<br> [0x8000011a]:sw a5, 16(tp)<br>    |
|   6|[0x80002024]<br>0x00000004|- rd : x2<br> - imm_val == 4<br>                                                     |[0x8000011e]:c.li sp, 4<br> [0x80000120]:sw sp, 20(tp)<br>    |
|   7|[0x80002028]<br>0x00000008|- rd : x14<br> - imm_val == 8<br>                                                    |[0x80000124]:c.li a4, 8<br> [0x80000126]:sw a4, 24(tp)<br>    |
|   8|[0x8000202c]<br>0x00000010|- rd : x27<br> - imm_val == 16<br>                                                   |[0x8000012a]:c.li s11, 16<br> [0x8000012c]:sw s11, 28(tp)<br> |
|   9|[0x80002030]<br>0xFFFFFFEA|- rd : x8<br> - imm_val == -22<br>                                                   |[0x80000130]:c.li fp, 42<br> [0x80000132]:sw fp, 32(tp)<br>   |
|  10|[0x80002034]<br>0xFFFFFFFE|- rd : x13<br> - imm_val == -2<br>                                                   |[0x80000136]:c.li a3, 62<br> [0x80000138]:sw a3, 36(tp)<br>   |
|  11|[0x80002038]<br>0xFFFFFFFD|- rd : x30<br> - imm_val == -3<br>                                                   |[0x8000013c]:c.li t5, 61<br> [0x8000013e]:sw t5, 40(tp)<br>   |
|  12|[0x8000203c]<br>0xFFFFFFFB|- rd : x11<br> - imm_val == -5<br>                                                   |[0x80000142]:c.li a1, 59<br> [0x80000144]:sw a1, 44(tp)<br>   |
|  13|[0x80002040]<br>0xFFFFFFF7|- rd : x6<br> - imm_val == -9<br>                                                    |[0x80000148]:c.li t1, 55<br> [0x8000014a]:sw t1, 48(tp)<br>   |
|  14|[0x80002044]<br>0xFFFFFFEF|- rd : x26<br> - imm_val == -17<br>                                                  |[0x8000014e]:c.li s10, 47<br> [0x80000150]:sw s10, 52(tp)<br> |
|  15|[0x80002048]<br>0x00000015|- rd : x9<br> - imm_val == 21<br>                                                    |[0x80000154]:c.li s1, 21<br> [0x80000156]:sw s1, 56(tp)<br>   |
|  16|[0x8000204c]<br>0x00000000|- rd : x1<br>                                                                        |[0x8000015a]:c.li ra, 0<br> [0x8000015c]:sw ra, 60(tp)<br>    |
|  17|[0x80002050]<br>0x00000000|- rd : x12<br>                                                                       |[0x80000160]:c.li a2, 0<br> [0x80000162]:sw a2, 64(tp)<br>    |
|  18|[0x80002054]<br>0x00000000|- rd : x17<br>                                                                       |[0x80000166]:c.li a7, 0<br> [0x80000168]:sw a7, 68(tp)<br>    |
|  19|[0x80002058]<br>0x00000000|- rd : x7<br>                                                                        |[0x8000016c]:c.li t2, 0<br> [0x8000016e]:sw t2, 72(tp)<br>    |
|  20|[0x8000205c]<br>0x00000000|- rd : x5<br>                                                                        |[0x80000172]:c.li t0, 0<br> [0x80000174]:sw t0, 76(tp)<br>    |
|  21|[0x80002060]<br>0x00000000|- rd : x20<br>                                                                       |[0x80000178]:c.li s4, 0<br> [0x8000017a]:sw s4, 80(tp)<br>    |
|  22|[0x80002064]<br>0x00000000|- rd : x0<br>                                                                        |[0x8000017e]:c.li.hint.0<br> [0x80000180]:sw zero, 84(tp)<br> |
|  23|[0x80002068]<br>0x00000000|- rd : x31<br>                                                                       |[0x80000184]:c.li t6, 0<br> [0x80000186]:sw t6, 88(tp)<br>    |
|  24|[0x8000206c]<br>0x00000000|- rd : x24<br>                                                                       |[0x8000018a]:c.li s8, 0<br> [0x8000018c]:sw s8, 92(tp)<br>    |
|  25|[0x80002070]<br>0x00000000|- rd : x3<br>                                                                        |[0x80000190]:c.li gp, 0<br> [0x80000192]:sw gp, 96(tp)<br>    |
|  26|[0x80002074]<br>0x00000000|- rd : x22<br>                                                                       |[0x80000196]:c.li s6, 0<br> [0x80000198]:sw s6, 100(tp)<br>   |
|  27|[0x80002078]<br>0x00000000|- rd : x25<br>                                                                       |[0x8000019c]:c.li s9, 0<br> [0x8000019e]:sw s9, 104(tp)<br>   |
|  28|[0x8000207c]<br>0x00000000|- rd : x21<br>                                                                       |[0x800001a2]:c.li s5, 0<br> [0x800001a4]:sw s5, 108(tp)<br>   |
|  29|[0x80002080]<br>0x00000000|- rd : x19<br>                                                                       |[0x800001a8]:c.li s3, 0<br> [0x800001aa]:sw s3, 112(tp)<br>   |
|  30|[0x80002084]<br>0x00000000|- rd : x28<br>                                                                       |[0x800001b6]:c.li t3, 0<br> [0x800001b8]:sw t3, 0(ra)<br>     |
|  31|[0x80002088]<br>0x00000000|- rd : x4<br>                                                                        |[0x800001bc]:c.li tp, 0<br> [0x800001be]:sw tp, 4(ra)<br>     |
|  32|[0x8000208c]<br>0x00000000|- rd : x23<br>                                                                       |[0x800001c2]:c.li s7, 0<br> [0x800001c4]:sw s7, 8(ra)<br>     |
