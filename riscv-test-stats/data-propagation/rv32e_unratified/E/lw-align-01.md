
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x80000210')]      |
| SIG_REGION                | [('0x80002204', '0x80002244', '16 words')]      |
| COV_LABELS                | lw-align      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/lw-align-01.S/lw-align-01.S    |
| Total Number of coverpoints| 46     |
| Total Coverpoints Hit     | 41      |
| Total Signature Updates   | 16      |
| STAT1                     | 16      |
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

|s.no|        signature         |                                                         coverpoints                                                         |                                                                   code                                                                    |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002204]<br>0xBABECAFE|- opcode : lw<br> - rs1 : x11<br> - rd : x1<br> - rs1 != rd<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val < 0<br> |[0x80000088]:lw ra, 3072(a1)<br> [0x8000008c]:addi zero, zero, 0<br> [0x80000090]:addi zero, zero, 0<br> [0x80000094]:sw ra, 0(sp)<br>     |
|   2|[0x80002208]<br>0xBABECAFE|- rs1 : x14<br> - rd : x14<br> - rs1 == rd<br> - ea_align == 0 and (imm_val % 4) == 1<br>                                    |[0x800000a0]:lw a4, 4093(a4)<br> [0x800000a4]:addi zero, zero, 0<br> [0x800000a8]:addi zero, zero, 0<br> [0x800000ac]:sw a4, 4(sp)<br>     |
|   3|[0x8000220c]<br>0xBABECAFE|- rs1 : x4<br> - rd : x8<br> - ea_align == 0 and (imm_val % 4) == 2<br>                                                      |[0x800000b8]:lw fp, 2730(tp)<br> [0x800000bc]:addi zero, zero, 0<br> [0x800000c0]:addi zero, zero, 0<br> [0x800000c4]:sw fp, 8(sp)<br>     |
|   4|[0x80002210]<br>0xBABECAFE|- rs1 : x1<br> - rd : x10<br> - ea_align == 0 and (imm_val % 4) == 3<br>                                                     |[0x800000d0]:lw a0, 4091(ra)<br> [0x800000d4]:addi zero, zero, 0<br> [0x800000d8]:addi zero, zero, 0<br> [0x800000dc]:sw a0, 12(sp)<br>    |
|   5|[0x80002214]<br>0xBABECAFE|- rs1 : x12<br> - rd : x15<br> - imm_val == 0<br>                                                                            |[0x800000e8]:lw a5, 0(a2)<br> [0x800000ec]:addi zero, zero, 0<br> [0x800000f0]:addi zero, zero, 0<br> [0x800000f4]:sw a5, 16(sp)<br>       |
|   6|[0x80002218]<br>0xBABECAFE|- rs1 : x7<br> - rd : x13<br> - imm_val > 0<br>                                                                              |[0x80000100]:lw a3, 32(t2)<br> [0x80000104]:addi zero, zero, 0<br> [0x80000108]:addi zero, zero, 0<br> [0x8000010c]:sw a3, 20(sp)<br>      |
|   7|[0x8000221c]<br>0xBABECAFE|- rs1 : x5<br> - rd : x3<br>                                                                                                 |[0x80000118]:lw gp, 2048(t0)<br> [0x8000011c]:addi zero, zero, 0<br> [0x80000120]:addi zero, zero, 0<br> [0x80000124]:sw gp, 24(sp)<br>    |
|   8|[0x80002220]<br>0x00000000|- rs1 : x8<br> - rd : x0<br>                                                                                                 |[0x80000138]:lw zero, 2048(fp)<br> [0x8000013c]:addi zero, zero, 0<br> [0x80000140]:addi zero, zero, 0<br> [0x80000144]:sw zero, 0(ra)<br> |
|   9|[0x80002224]<br>0xBABECAFE|- rs1 : x3<br> - rd : x12<br>                                                                                                |[0x80000150]:lw a2, 2048(gp)<br> [0x80000154]:addi zero, zero, 0<br> [0x80000158]:addi zero, zero, 0<br> [0x8000015c]:sw a2, 4(ra)<br>     |
|  10|[0x80002228]<br>0xBABECAFE|- rs1 : x13<br> - rd : x4<br>                                                                                                |[0x80000168]:lw tp, 2048(a3)<br> [0x8000016c]:addi zero, zero, 0<br> [0x80000170]:addi zero, zero, 0<br> [0x80000174]:sw tp, 8(ra)<br>     |
|  11|[0x8000222c]<br>0xBABECAFE|- rs1 : x15<br> - rd : x7<br>                                                                                                |[0x80000180]:lw t2, 2048(a5)<br> [0x80000184]:addi zero, zero, 0<br> [0x80000188]:addi zero, zero, 0<br> [0x8000018c]:sw t2, 12(ra)<br>    |
|  12|[0x80002230]<br>0xBABECAFE|- rs1 : x9<br> - rd : x5<br>                                                                                                 |[0x80000198]:lw t0, 2048(s1)<br> [0x8000019c]:addi zero, zero, 0<br> [0x800001a0]:addi zero, zero, 0<br> [0x800001a4]:sw t0, 16(ra)<br>    |
|  13|[0x80002234]<br>0xBABECAFE|- rs1 : x6<br> - rd : x9<br>                                                                                                 |[0x800001b0]:lw s1, 2048(t1)<br> [0x800001b4]:addi zero, zero, 0<br> [0x800001b8]:addi zero, zero, 0<br> [0x800001bc]:sw s1, 20(ra)<br>    |
|  14|[0x80002238]<br>0xBABECAFE|- rs1 : x10<br> - rd : x2<br>                                                                                                |[0x800001c8]:lw sp, 2048(a0)<br> [0x800001cc]:addi zero, zero, 0<br> [0x800001d0]:addi zero, zero, 0<br> [0x800001d4]:sw sp, 24(ra)<br>    |
|  15|[0x8000223c]<br>0xBABECAFE|- rs1 : x2<br> - rd : x6<br>                                                                                                 |[0x800001e8]:lw t1, 2048(sp)<br> [0x800001ec]:addi zero, zero, 0<br> [0x800001f0]:addi zero, zero, 0<br> [0x800001f4]:sw t1, 0(ra)<br>     |
|  16|[0x80002240]<br>0xBABECAFE|- rd : x11<br>                                                                                                               |[0x80000200]:lw a1, 2048(t0)<br> [0x80000204]:addi zero, zero, 0<br> [0x80000208]:addi zero, zero, 0<br> [0x8000020c]:sw a1, 4(ra)<br>     |
