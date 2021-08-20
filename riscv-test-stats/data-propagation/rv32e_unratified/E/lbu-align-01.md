
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x80000230')]      |
| SIG_REGION                | [('0x80002204', '0x80002248', '17 words')]      |
| COV_LABELS                | lbu-align      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/lbu-align-01.S/lbu-align-01.S    |
| Total Number of coverpoints| 58     |
| Total Coverpoints Hit     | 53      |
| Total Signature Updates   | 17      |
| STAT1                     | 17      |
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

|s.no|        signature         |                                                         coverpoints                                                          |                                                                   code                                                                    |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|
|   1|[0x80002204]<br>0x00000000|- opcode : lbu<br> - rs1 : x14<br> - rd : x0<br> - rs1 != rd<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val > 0<br> |[0x80000088]:lbu zero, 256(a4)<br> [0x8000008c]:addi zero, zero, 0<br> [0x80000090]:addi zero, zero, 0<br> [0x80000094]:sw zero, 0(ra)<br> |
|   2|[0x80002208]<br>0x000000FE|- rs1 : x13<br> - rd : x13<br> - rs1 == rd<br> - ea_align == 0 and (imm_val % 4) == 1<br> - imm_val < 0<br>                   |[0x800000a0]:lbu a3, 4089(a3)<br> [0x800000a4]:addi zero, zero, 0<br> [0x800000a8]:addi zero, zero, 0<br> [0x800000ac]:sw a3, 4(ra)<br>    |
|   3|[0x8000220c]<br>0x000000FE|- rs1 : x2<br> - rd : x3<br> - ea_align == 0 and (imm_val % 4) == 2<br>                                                       |[0x800000b8]:lbu gp, 6(sp)<br> [0x800000bc]:addi zero, zero, 0<br> [0x800000c0]:addi zero, zero, 0<br> [0x800000c4]:sw gp, 8(ra)<br>       |
|   4|[0x80002210]<br>0x000000FE|- rs1 : x5<br> - rd : x11<br> - ea_align == 0 and (imm_val % 4) == 3<br>                                                      |[0x800000d0]:lbu a1, 4087(t0)<br> [0x800000d4]:addi zero, zero, 0<br> [0x800000d8]:addi zero, zero, 0<br> [0x800000dc]:sw a1, 12(ra)<br>   |
|   5|[0x80002214]<br>0x000000CA|- rs1 : x4<br> - rd : x15<br> - ea_align == 1 and (imm_val % 4) == 0<br>                                                      |[0x800000e8]:lbu a5, 4092(tp)<br> [0x800000ec]:addi zero, zero, 0<br> [0x800000f0]:addi zero, zero, 0<br> [0x800000f4]:sw a5, 16(ra)<br>   |
|   6|[0x80002218]<br>0x000000CA|- rs1 : x6<br> - rd : x9<br> - ea_align == 1 and (imm_val % 4) == 1<br>                                                       |[0x80000100]:lbu s1, 1(t1)<br> [0x80000104]:addi zero, zero, 0<br> [0x80000108]:addi zero, zero, 0<br> [0x8000010c]:sw s1, 20(ra)<br>      |
|   7|[0x8000221c]<br>0x000000CA|- rs1 : x9<br> - rd : x7<br> - ea_align == 1 and (imm_val % 4) == 2<br>                                                       |[0x80000118]:lbu t2, 6(s1)<br> [0x8000011c]:addi zero, zero, 0<br> [0x80000120]:addi zero, zero, 0<br> [0x80000124]:sw t2, 24(ra)<br>      |
|   8|[0x80002220]<br>0x000000CA|- rs1 : x10<br> - rd : x8<br> - ea_align == 1 and (imm_val % 4) == 3<br>                                                      |[0x80000130]:lbu fp, 3583(a0)<br> [0x80000134]:addi zero, zero, 0<br> [0x80000138]:addi zero, zero, 0<br> [0x8000013c]:sw fp, 28(ra)<br>   |
|   9|[0x80002224]<br>0x000000BE|- rs1 : x11<br> - rd : x1<br> - ea_align == 2 and (imm_val % 4) == 0<br>                                                      |[0x80000150]:lbu ra, 4(a1)<br> [0x80000154]:addi zero, zero, 0<br> [0x80000158]:addi zero, zero, 0<br> [0x8000015c]:sw ra, 0(s1)<br>       |
|  10|[0x80002228]<br>0x000000BE|- rs1 : x3<br> - rd : x4<br> - ea_align == 2 and (imm_val % 4) == 1<br>                                                       |[0x80000168]:lbu tp, 4089(gp)<br> [0x8000016c]:addi zero, zero, 0<br> [0x80000170]:addi zero, zero, 0<br> [0x80000174]:sw tp, 4(s1)<br>    |
|  11|[0x8000222c]<br>0x000000FE|- rs1 : x1<br> - rd : x6<br> - imm_val == 0<br>                                                                               |[0x80000180]:lbu t1, 0(ra)<br> [0x80000184]:addi zero, zero, 0<br> [0x80000188]:addi zero, zero, 0<br> [0x8000018c]:sw t1, 8(s1)<br>       |
|  12|[0x80002230]<br>0x000000BE|- rs1 : x8<br> - rd : x10<br> - ea_align == 2 and (imm_val % 4) == 2<br>                                                      |[0x80000198]:lbu a0, 4094(fp)<br> [0x8000019c]:addi zero, zero, 0<br> [0x800001a0]:addi zero, zero, 0<br> [0x800001a4]:sw a0, 12(s1)<br>   |
|  13|[0x80002234]<br>0x000000BE|- rs1 : x12<br> - rd : x2<br> - ea_align == 2 and (imm_val % 4) == 3<br>                                                      |[0x800001b0]:lbu sp, 3071(a2)<br> [0x800001b4]:addi zero, zero, 0<br> [0x800001b8]:addi zero, zero, 0<br> [0x800001bc]:sw sp, 16(s1)<br>   |
|  14|[0x80002238]<br>0x000000BA|- rs1 : x7<br> - rd : x5<br> - ea_align == 3 and (imm_val % 4) == 0<br>                                                       |[0x800001c8]:lbu t0, 4(t2)<br> [0x800001cc]:addi zero, zero, 0<br> [0x800001d0]:addi zero, zero, 0<br> [0x800001d4]:sw t0, 20(s1)<br>      |
|  15|[0x8000223c]<br>0x000000BA|- rs1 : x15<br> - rd : x14<br> - ea_align == 3 and (imm_val % 4) == 1<br>                                                     |[0x800001e0]:lbu a4, 9(a5)<br> [0x800001e4]:addi zero, zero, 0<br> [0x800001e8]:addi zero, zero, 0<br> [0x800001ec]:sw a4, 24(s1)<br>      |
|  16|[0x80002240]<br>0x000000BA|- rd : x12<br> - ea_align == 3 and (imm_val % 4) == 2<br>                                                                     |[0x80000200]:lbu a2, 4094(a4)<br> [0x80000204]:addi zero, zero, 0<br> [0x80000208]:addi zero, zero, 0<br> [0x8000020c]:sw a2, 0(ra)<br>    |
|  17|[0x80002244]<br>0x000000BA|- ea_align == 3 and (imm_val % 4) == 3<br>                                                                                    |[0x80000218]:lbu a1, 4091(a0)<br> [0x8000021c]:addi zero, zero, 0<br> [0x80000220]:addi zero, zero, 0<br> [0x80000224]:sw a1, 4(ra)<br>    |
