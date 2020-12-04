
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800001d2')]      |
| SIG_REGION                | [('0x80002204', '0x80002284', '32 words')]      |
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

|s.no|        signature         |                                    coverpoints                                     |                             code                             |
|---:|--------------------------|------------------------------------------------------------------------------------|--------------------------------------------------------------|
|   1|[0x80002204]<br>0xFFFFFFE0|- opcode : c.li<br> - rd : x4<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> |[0x80000100]:c.li tp, 32<br> [0x80000102]:sw tp, 0(t0)<br>    |
|   2|[0x80002208]<br>0x00000000|- rd : x7<br> - imm_val == 0<br>                                                    |[0x80000106]:c.li t2, 0<br> [0x80000108]:sw t2, 4(t0)<br>     |
|   3|[0x8000220c]<br>0x0000001F|- rd : x19<br> - imm_val == (2**(6-1)-1)<br> - imm_val == 31<br>                    |[0x8000010c]:c.li s3, 31<br> [0x8000010e]:sw s3, 8(t0)<br>    |
|   4|[0x80002210]<br>0x00000001|- rd : x30<br> - imm_val == 1<br>                                                   |[0x80000112]:c.li t5, 1<br> [0x80000114]:sw t5, 12(t0)<br>    |
|   5|[0x80002214]<br>0x00000002|- rd : x9<br> - imm_val == 2<br>                                                    |[0x80000118]:c.li s1, 2<br> [0x8000011a]:sw s1, 16(t0)<br>    |
|   6|[0x80002218]<br>0x00000004|- rd : x29<br> - imm_val == 4<br>                                                   |[0x8000011e]:c.li t4, 4<br> [0x80000120]:sw t4, 20(t0)<br>    |
|   7|[0x8000221c]<br>0x00000008|- rd : x22<br> - imm_val == 8<br>                                                   |[0x80000124]:c.li s6, 8<br> [0x80000126]:sw s6, 24(t0)<br>    |
|   8|[0x80002220]<br>0x00000010|- rd : x14<br> - imm_val == 16<br>                                                  |[0x8000012a]:c.li a4, 16<br> [0x8000012c]:sw a4, 28(t0)<br>   |
|   9|[0x80002224]<br>0xFFFFFFEA|- rd : x28<br> - imm_val == -22<br>                                                 |[0x80000130]:c.li t3, 42<br> [0x80000132]:sw t3, 32(t0)<br>   |
|  10|[0x80002228]<br>0xFFFFFFFE|- rd : x6<br> - imm_val == -2<br>                                                   |[0x80000136]:c.li t1, 62<br> [0x80000138]:sw t1, 36(t0)<br>   |
|  11|[0x8000222c]<br>0xFFFFFFFD|- rd : x15<br> - imm_val == -3<br>                                                  |[0x8000013c]:c.li a5, 61<br> [0x8000013e]:sw a5, 40(t0)<br>   |
|  12|[0x80002230]<br>0xFFFFFFFB|- rd : x12<br> - imm_val == -5<br>                                                  |[0x80000142]:c.li a2, 59<br> [0x80000144]:sw a2, 44(t0)<br>   |
|  13|[0x80002234]<br>0xFFFFFFF7|- rd : x2<br> - imm_val == -9<br>                                                   |[0x80000148]:c.li sp, 55<br> [0x8000014a]:sw sp, 48(t0)<br>   |
|  14|[0x80002238]<br>0xFFFFFFEF|- rd : x25<br> - imm_val == -17<br>                                                 |[0x8000014e]:c.li s9, 47<br> [0x80000150]:sw s9, 52(t0)<br>   |
|  15|[0x8000223c]<br>0x00000015|- rd : x20<br> - imm_val == 21<br>                                                  |[0x80000154]:c.li s4, 21<br> [0x80000156]:sw s4, 56(t0)<br>   |
|  16|[0x80002240]<br>0x00000000|- rd : x17<br>                                                                      |[0x8000015a]:c.li a7, 0<br> [0x8000015c]:sw a7, 60(t0)<br>    |
|  17|[0x80002244]<br>0x00000000|- rd : x13<br>                                                                      |[0x80000160]:c.li a3, 0<br> [0x80000162]:sw a3, 64(t0)<br>    |
|  18|[0x80002248]<br>0x00000000|- rd : x23<br>                                                                      |[0x80000166]:c.li s7, 0<br> [0x80000168]:sw s7, 68(t0)<br>    |
|  19|[0x8000224c]<br>0x00000000|- rd : x27<br>                                                                      |[0x8000016c]:c.li s11, 0<br> [0x8000016e]:sw s11, 72(t0)<br>  |
|  20|[0x80002250]<br>0x00000000|- rd : x3<br>                                                                       |[0x80000172]:c.li gp, 0<br> [0x80000174]:sw gp, 76(t0)<br>    |
|  21|[0x80002254]<br>0x00000000|- rd : x1<br>                                                                       |[0x80000178]:c.li ra, 0<br> [0x8000017a]:sw ra, 80(t0)<br>    |
|  22|[0x80002258]<br>0x00000000|- rd : x18<br>                                                                      |[0x8000017e]:c.li s2, 0<br> [0x80000180]:sw s2, 84(t0)<br>    |
|  23|[0x8000225c]<br>0x00000000|- rd : x0<br>                                                                       |[0x80000184]:c.li.hint.0<br> [0x80000186]:sw zero, 88(t0)<br> |
|  24|[0x80002260]<br>0x00000000|- rd : x31<br>                                                                      |[0x8000018a]:c.li t6, 0<br> [0x8000018c]:sw t6, 92(t0)<br>    |
|  25|[0x80002264]<br>0x00000000|- rd : x24<br>                                                                      |[0x80000190]:c.li s8, 0<br> [0x80000192]:sw s8, 96(t0)<br>    |
|  26|[0x80002268]<br>0x00000000|- rd : x16<br>                                                                      |[0x80000196]:c.li a6, 0<br> [0x80000198]:sw a6, 100(t0)<br>   |
|  27|[0x8000226c]<br>0x00000000|- rd : x21<br>                                                                      |[0x8000019c]:c.li s5, 0<br> [0x8000019e]:sw s5, 104(t0)<br>   |
|  28|[0x80002270]<br>0x00000000|- rd : x11<br>                                                                      |[0x800001a2]:c.li a1, 0<br> [0x800001a4]:sw a1, 108(t0)<br>   |
|  29|[0x80002274]<br>0x00000000|- rd : x10<br>                                                                      |[0x800001a8]:c.li a0, 0<br> [0x800001aa]:sw a0, 112(t0)<br>   |
|  30|[0x80002278]<br>0x00000000|- rd : x8<br>                                                                       |[0x800001b6]:c.li fp, 0<br> [0x800001b8]:sw fp, 0(ra)<br>     |
|  31|[0x8000227c]<br>0x00000000|- rd : x5<br>                                                                       |[0x800001bc]:c.li t0, 0<br> [0x800001be]:sw t0, 4(ra)<br>     |
|  32|[0x80002280]<br>0x00000000|- rd : x26<br>                                                                      |[0x800001c2]:c.li s10, 0<br> [0x800001c4]:sw s10, 8(ra)<br>   |
