
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x800001a0')]      |
| SIG_REGION                | [('0x80002204', '0x80002240', '15 words')]      |
| COV_LABELS                | clwsp      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/clwsp-01.S/clwsp-01.S    |
| Total Number of coverpoints| 35     |
| Total Coverpoints Hit     | 32      |
| Total Signature Updates   | 15      |
| STAT1                     | 15      |
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

|s.no|        signature         |                      coverpoints                      |                                                    code                                                    |
|---:|--------------------------|-------------------------------------------------------|------------------------------------------------------------------------------------------------------------|
|   1|[0x80002204]<br>0xBABECAFE|- opcode : c.lwsp<br> - rd : x2<br> - imm_val == 0<br> |[0x80000088]:c.lwsp sp, 0<br> [0x8000008a]:c.nop<br> [0x8000008c]:c.nop<br> [0x8000008e]:sw sp, 0(t0)<br>   |
|   2|[0x80002208]<br>0xBABECAFE|- rd : x11<br> - imm_val == 124<br> - imm_val > 0<br>  |[0x8000009a]:c.lwsp a1, 31<br> [0x8000009c]:c.nop<br> [0x8000009e]:c.nop<br> [0x800000a0]:sw a1, 4(t0)<br>  |
|   3|[0x8000220c]<br>0xBABECAFE|- rd : x3<br> - imm_val == 188<br>                     |[0x800000ac]:c.lwsp gp, 47<br> [0x800000ae]:c.nop<br> [0x800000b0]:c.nop<br> [0x800000b2]:sw gp, 8(t0)<br>  |
|   4|[0x80002210]<br>0xBABECAFE|- rd : x6<br> - imm_val == 220<br>                     |[0x800000be]:c.lwsp t1, 55<br> [0x800000c0]:c.nop<br> [0x800000c2]:c.nop<br> [0x800000c4]:sw t1, 12(t0)<br> |
|   5|[0x80002214]<br>0xBABECAFE|- rd : x9<br> - imm_val == 236<br>                     |[0x800000d0]:c.lwsp s1, 59<br> [0x800000d2]:c.nop<br> [0x800000d4]:c.nop<br> [0x800000d6]:sw s1, 16(t0)<br> |
|   6|[0x80002218]<br>0xBABECAFE|- rd : x1<br> - imm_val == 244<br>                     |[0x800000e2]:c.lwsp ra, 61<br> [0x800000e4]:c.nop<br> [0x800000e6]:c.nop<br> [0x800000e8]:sw ra, 20(t0)<br> |
|   7|[0x8000221c]<br>0xBABECAFE|- rd : x4<br> - imm_val == 248<br>                     |[0x800000f4]:c.lwsp tp, 62<br> [0x800000f6]:c.nop<br> [0x800000f8]:c.nop<br> [0x800000fa]:sw tp, 24(t0)<br> |
|   8|[0x80002220]<br>0xBABECAFE|- rd : x8<br> - imm_val == 128<br>                     |[0x80000106]:c.lwsp fp, 32<br> [0x80000108]:c.nop<br> [0x8000010a]:c.nop<br> [0x8000010c]:sw fp, 28(t0)<br> |
|   9|[0x80002224]<br>0xBABECAFE|- rd : x15<br> - imm_val == 64<br>                     |[0x80000118]:c.lwsp a5, 16<br> [0x8000011a]:c.nop<br> [0x8000011c]:c.nop<br> [0x8000011e]:sw a5, 32(t0)<br> |
|  10|[0x80002228]<br>0xBABECAFE|- rd : x12<br> - imm_val == 32<br>                     |[0x8000012a]:c.lwsp a2, 8<br> [0x8000012c]:c.nop<br> [0x8000012e]:c.nop<br> [0x80000130]:sw a2, 36(t0)<br>  |
|  11|[0x8000222c]<br>0xBABECAFE|- rd : x10<br> - imm_val == 16<br>                     |[0x8000013c]:c.lwsp a0, 4<br> [0x8000013e]:c.nop<br> [0x80000140]:c.nop<br> [0x80000142]:sw a0, 40(t0)<br>  |
|  12|[0x80002230]<br>0xBABECAFE|- rd : x14<br> - imm_val == 8<br>                      |[0x8000014e]:c.lwsp a4, 2<br> [0x80000150]:c.nop<br> [0x80000152]:c.nop<br> [0x80000154]:sw a4, 44(t0)<br>  |
|  13|[0x80002234]<br>0xBABECAFE|- rd : x13<br> - imm_val == 4<br>                      |[0x80000168]:c.lwsp a3, 1<br> [0x8000016a]:c.nop<br> [0x8000016c]:c.nop<br> [0x8000016e]:sw a3, 0(ra)<br>   |
|  14|[0x80002238]<br>0xBABECAFE|- rd : x5<br> - imm_val == 168<br>                     |[0x8000017a]:c.lwsp t0, 42<br> [0x8000017c]:c.nop<br> [0x8000017e]:c.nop<br> [0x80000180]:sw t0, 4(ra)<br>  |
|  15|[0x8000223c]<br>0xBABECAFE|- rd : x7<br> - imm_val == 84<br>                      |[0x8000018c]:c.lwsp t2, 21<br> [0x8000018e]:c.nop<br> [0x80000190]:c.nop<br> [0x80000192]:sw t2, 8(ra)<br>  |
