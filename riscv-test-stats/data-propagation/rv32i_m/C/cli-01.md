
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

|s.no|        signature         |                                     coverpoints                                     |                             code                              |
|---:|--------------------------|-------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80002010]<br>0xFFFFFFE0|- opcode : c.li<br> - rd : x26<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> |[0x80000100]:c.li s10, 32<br> [0x80000102]:sw s10, 0(gp)<br>   |
|   2|[0x80002014]<br>0x00000000|- rd : x6<br> - imm_val == 0<br>                                                     |[0x80000106]:c.li t1, 0<br> [0x80000108]:sw t1, 4(gp)<br>      |
|   3|[0x80002018]<br>0x0000001F|- rd : x5<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br>                      |[0x8000010c]:c.li t0, 31<br> [0x8000010e]:sw t0, 8(gp)<br>     |
|   4|[0x8000201c]<br>0x00000001|- rd : x29<br> - imm_val == 1<br>                                                    |[0x80000112]:c.li t4, 1<br> [0x80000114]:sw t4, 12(gp)<br>     |
|   5|[0x80002020]<br>0x00000002|- rd : x7<br> - imm_val == 2<br>                                                     |[0x80000118]:c.li t2, 2<br> [0x8000011a]:sw t2, 16(gp)<br>     |
|   6|[0x80002024]<br>0x00000004|- rd : x19<br> - imm_val == 4<br>                                                    |[0x8000011e]:c.li s3, 4<br> [0x80000120]:sw s3, 20(gp)<br>     |
|   7|[0x80002028]<br>0x00000008|- rd : x28<br> - imm_val == 8<br>                                                    |[0x80000124]:c.li t3, 8<br> [0x80000126]:sw t3, 24(gp)<br>     |
|   8|[0x8000202c]<br>0x00000010|- rd : x8<br> - imm_val == 16<br>                                                    |[0x8000012a]:c.li fp, 16<br> [0x8000012c]:sw fp, 28(gp)<br>    |
|   9|[0x80002030]<br>0xFFFFFFEA|- rd : x23<br> - imm_val == -22<br>                                                  |[0x80000130]:c.li s7, 42<br> [0x80000132]:sw s7, 32(gp)<br>    |
|  10|[0x80002034]<br>0xFFFFFFFE|- rd : x20<br> - imm_val == -2<br>                                                   |[0x80000136]:c.li s4, 62<br> [0x80000138]:sw s4, 36(gp)<br>    |
|  11|[0x80002038]<br>0xFFFFFFFD|- rd : x14<br> - imm_val == -3<br>                                                   |[0x8000013c]:c.li a4, 61<br> [0x8000013e]:sw a4, 40(gp)<br>    |
|  12|[0x8000203c]<br>0xFFFFFFFB|- rd : x4<br> - imm_val == -5<br>                                                    |[0x80000142]:c.li tp, 59<br> [0x80000144]:sw tp, 44(gp)<br>    |
|  13|[0x80002040]<br>0xFFFFFFF7|- rd : x22<br> - imm_val == -9<br>                                                   |[0x80000148]:c.li s6, 55<br> [0x8000014a]:sw s6, 48(gp)<br>    |
|  14|[0x80002044]<br>0xFFFFFFEF|- rd : x13<br> - imm_val == -17<br>                                                  |[0x8000014e]:c.li a3, 47<br> [0x80000150]:sw a3, 52(gp)<br>    |
|  15|[0x80002048]<br>0x00000015|- rd : x12<br> - imm_val == 21<br>                                                   |[0x80000154]:c.li a2, 21<br> [0x80000156]:sw a2, 56(gp)<br>    |
|  16|[0x8000204c]<br>0x00000000|- rd : x27<br>                                                                       |[0x8000015a]:c.li s11, 0<br> [0x8000015c]:sw s11, 60(gp)<br>   |
|  17|[0x80002050]<br>0x00000000|- rd : x25<br>                                                                       |[0x80000160]:c.li s9, 0<br> [0x80000162]:sw s9, 64(gp)<br>     |
|  18|[0x80002054]<br>0x00000000|- rd : x16<br>                                                                       |[0x80000166]:c.li a6, 0<br> [0x80000168]:sw a6, 68(gp)<br>     |
|  19|[0x80002058]<br>0x00000000|- rd : x21<br>                                                                       |[0x8000016c]:c.li s5, 0<br> [0x8000016e]:sw s5, 72(gp)<br>     |
|  20|[0x8000205c]<br>0x00000000|- rd : x17<br>                                                                       |[0x80000172]:c.li a7, 0<br> [0x80000174]:sw a7, 76(gp)<br>     |
|  21|[0x80002060]<br>0x00000000|- rd : x1<br>                                                                        |[0x80000178]:c.li ra, 0<br> [0x8000017a]:sw ra, 80(gp)<br>     |
|  22|[0x80002064]<br>0x00000000|- rd : x31<br>                                                                       |[0x8000017e]:c.li t6, 0<br> [0x80000180]:sw t6, 84(gp)<br>     |
|  23|[0x80002068]<br>0x00000000|- rd : x11<br>                                                                       |[0x80000184]:c.li a1, 0<br> [0x80000186]:sw a1, 88(gp)<br>     |
|  24|[0x8000206c]<br>0x00000000|- rd : x2<br>                                                                        |[0x8000018a]:c.li sp, 0<br> [0x8000018c]:sw sp, 92(gp)<br>     |
|  25|[0x80002070]<br>0x00000000|- rd : x15<br>                                                                       |[0x80000190]:c.li a5, 0<br> [0x80000192]:sw a5, 96(gp)<br>     |
|  26|[0x80002074]<br>0x00000000|- rd : x18<br>                                                                       |[0x80000196]:c.li s2, 0<br> [0x80000198]:sw s2, 100(gp)<br>    |
|  27|[0x80002078]<br>0x00000000|- rd : x9<br>                                                                        |[0x8000019c]:c.li s1, 0<br> [0x8000019e]:sw s1, 104(gp)<br>    |
|  28|[0x8000207c]<br>0x00000000|- rd : x0<br>                                                                        |[0x800001a2]:c.li.hint.0<br> [0x800001a4]:sw zero, 108(gp)<br> |
|  29|[0x80002080]<br>0x00000000|- rd : x30<br>                                                                       |[0x800001a8]:c.li t5, 0<br> [0x800001aa]:sw t5, 112(gp)<br>    |
|  30|[0x80002084]<br>0x00000000|- rd : x24<br>                                                                       |[0x800001b6]:c.li s8, 0<br> [0x800001b8]:sw s8, 0(ra)<br>      |
|  31|[0x80002088]<br>0x00000000|- rd : x10<br>                                                                       |[0x800001bc]:c.li a0, 0<br> [0x800001be]:sw a0, 4(ra)<br>      |
|  32|[0x8000208c]<br>0x00000000|- rd : x3<br>                                                                        |[0x800001c2]:c.li gp, 0<br> [0x800001c4]:sw gp, 8(ra)<br>      |
