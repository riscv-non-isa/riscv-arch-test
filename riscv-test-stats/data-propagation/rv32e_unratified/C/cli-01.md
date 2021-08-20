
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x800000f0')]      |
| SIG_REGION                | [('0x80002204', '0x80002248', '17 words')]      |
| COV_LABELS                | cli      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/cli-01.S/cli-01.S    |
| Total Number of coverpoints| 37     |
| Total Coverpoints Hit     | 34      |
| Total Signature Updates   | 17      |
| STAT1                     | 16      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800000e8]:c.li a0, 2
      [0x800000ea]:sw a0, 12(ra)
 -- Signature Address: 0x80002244 Data: 0x00000002
 -- Redundant Coverpoints hit by the op
      - opcode : c.li
      - rd : x10
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

|s.no|        signature         |                                     coverpoints                                     |                             code                             |
|---:|--------------------------|-------------------------------------------------------------------------------------|--------------------------------------------------------------|
|   1|[0x80002204]<br>0xFFFFFFE0|- opcode : c.li<br> - rd : x15<br> - imm_val == (-2**(6-1))<br> - imm_val == -32<br> |[0x80000080]:c.li a5, 32<br> [0x80000082]:sw a5, 0(tp)<br>    |
|   2|[0x80002208]<br>0x0000001F|- rd : x8<br> - imm_val == 31<br> - imm_val == (2**(6-1)-1)<br>                      |[0x80000086]:c.li fp, 31<br> [0x80000088]:sw fp, 4(tp)<br>    |
|   3|[0x8000220c]<br>0xFFFFFFEF|- rd : x13<br> - imm_val == -17<br>                                                  |[0x8000008c]:c.li a3, 47<br> [0x8000008e]:sw a3, 8(tp)<br>    |
|   4|[0x80002210]<br>0xFFFFFFF7|- rd : x6<br> - imm_val == -9<br>                                                    |[0x80000092]:c.li t1, 55<br> [0x80000094]:sw t1, 12(tp)<br>   |
|   5|[0x80002214]<br>0xFFFFFFFB|- rd : x2<br> - imm_val == -5<br>                                                    |[0x80000098]:c.li sp, 59<br> [0x8000009a]:sw sp, 16(tp)<br>   |
|   6|[0x80002218]<br>0xFFFFFFFD|- rd : x12<br> - imm_val == -3<br>                                                   |[0x8000009e]:c.li a2, 61<br> [0x800000a0]:sw a2, 20(tp)<br>   |
|   7|[0x8000221c]<br>0xFFFFFFFE|- rd : x1<br> - imm_val == -2<br>                                                    |[0x800000a4]:c.li ra, 62<br> [0x800000a6]:sw ra, 24(tp)<br>   |
|   8|[0x80002220]<br>0x00000010|- rd : x14<br> - imm_val == 16<br>                                                   |[0x800000aa]:c.li a4, 16<br> [0x800000ac]:sw a4, 28(tp)<br>   |
|   9|[0x80002224]<br>0x00000000|- rd : x3<br> - imm_val == 0<br>                                                     |[0x800000b0]:c.li gp, 0<br> [0x800000b2]:sw gp, 32(tp)<br>    |
|  10|[0x80002228]<br>0x00000008|- rd : x5<br> - imm_val == 8<br>                                                     |[0x800000b6]:c.li t0, 8<br> [0x800000b8]:sw t0, 36(tp)<br>    |
|  11|[0x8000222c]<br>0x00000004|- rd : x10<br> - imm_val == 4<br>                                                    |[0x800000bc]:c.li a0, 4<br> [0x800000be]:sw a0, 40(tp)<br>    |
|  12|[0x80002230]<br>0x00000000|- rd : x0<br> - imm_val == 2<br>                                                     |[0x800000c2]:c.li.hint.2<br> [0x800000c4]:sw zero, 44(tp)<br> |
|  13|[0x80002234]<br>0x00000001|- rd : x11<br> - imm_val == 1<br>                                                    |[0x800000c8]:c.li a1, 1<br> [0x800000ca]:sw a1, 48(tp)<br>    |
|  14|[0x80002238]<br>0xFFFFFFEA|- rd : x7<br> - imm_val == -22<br>                                                   |[0x800000d6]:c.li t2, 42<br> [0x800000d8]:sw t2, 0(ra)<br>    |
|  15|[0x8000223c]<br>0x00000015|- rd : x4<br> - imm_val == 21<br>                                                    |[0x800000dc]:c.li tp, 21<br> [0x800000de]:sw tp, 4(ra)<br>    |
|  16|[0x80002240]<br>0x00000000|- rd : x9<br>                                                                        |[0x800000e2]:c.li s1, 0<br> [0x800000e4]:sw s1, 8(ra)<br>     |
