
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800002a0')]      |
| SIG_REGION                | [('0x80002210', '0x800022a0', '36 words')]      |
| COV_LABELS                | insb      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/insb-01.S    |
| Total Number of coverpoints| 80     |
| Total Coverpoints Hit     | 75      |
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
      [0x80000294]:INSB t6, t5, 2
      [0x80000298]:sw t6, 48(tp)
 -- Signature Address: 0x80002290 Data: 0x80010000
 -- Redundant Coverpoints hit by the op
      - opcode : insb
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 2
      - rs1_val == 1






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

|s.no|        signature         |                                                     coverpoints                                                      |                               code                                |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : insb<br> - rs1 : x30<br> - rd : x30<br> - rs1 == rd<br> - rs1_val == (-2**(xlen-1))<br> - imm_val == 3<br> |[0x80000104]:INSB t5, t5, 3<br> [0x80000108]:sw t5, 0(t0)<br>      |
|   2|[0x80002214]<br>0xAB00BB6F|- rs1 : x18<br> - rd : x11<br> - rs1 != rd<br> - imm_val == 2<br>                                                     |[0x80000110]:INSB a1, s2, 2<br> [0x80000114]:sw a1, 4(t0)<br>      |
|   3|[0x80002218]<br>0xFF76FF56|- rs1 : x15<br> - rd : x2<br> - imm_val == 1<br>                                                                      |[0x80000120]:INSB sp, a5, 1<br> [0x80000124]:sw sp, 8(t0)<br>      |
|   4|[0x8000221c]<br>0xFFFF7F00|- rs1 : x20<br> - rd : x15<br> - imm_val == 0<br>                                                                     |[0x8000012c]:INSB a5, s4, 0<br> [0x80000130]:sw a5, 12(t0)<br>     |
|   5|[0x80002220]<br>0x7D5BFFDB|- rs1 : x12<br> - rd : x16<br> - rs1_val == (2**(xlen-1)-1)<br>                                                       |[0x8000013c]:INSB a6, a2, 1<br> [0x80000140]:sw a6, 16(t0)<br>     |
|   6|[0x80002224]<br>0xBF00B7D5|- rs1 : x9<br> - rd : x4<br> - rs1_val == 0<br>                                                                       |[0x80000148]:INSB tp, s1, 2<br> [0x8000014c]:sw tp, 20(t0)<br>     |
|   7|[0x80002228]<br>0x00000000|- rs1 : x19<br> - rd : x0<br> - rs1_val == 1<br>                                                                      |[0x80000154]:INSB zero, s3, 2<br> [0x80000158]:sw zero, 24(t0)<br> |
|   8|[0x8000222c]<br>0xBEADFE00|- rs1 : x28<br> - rd : x17<br>                                                                                        |[0x80000160]:INSB a7, t3, 0<br> [0x80000164]:sw a7, 28(t0)<br>     |
|   9|[0x80002230]<br>0x76DF5600|- rs1 : x29<br> - rd : x26<br>                                                                                        |[0x8000016c]:INSB s10, t4, 0<br> [0x80000170]:sw s10, 32(t0)<br>   |
|  10|[0x80002234]<br>0xBB6FAB00|- rs1 : x23<br> - rd : x27<br>                                                                                        |[0x80000178]:INSB s11, s7, 0<br> [0x8000017c]:sw s11, 36(t0)<br>   |
|  11|[0x80002238]<br>0x80002000|- rs1 : x22<br> - rd : x6<br>                                                                                         |[0x80000184]:INSB t1, s6, 0<br> [0x80000188]:sw t1, 40(t0)<br>     |
|  12|[0x8000223c]<br>0x7FFFFF00|- rs1 : x14<br> - rd : x12<br>                                                                                        |[0x80000190]:INSB a2, a4, 0<br> [0x80000194]:sw a2, 44(t0)<br>     |
|  13|[0x80002240]<br>0xDBEADF00|- rs1 : x16<br> - rd : x21<br>                                                                                        |[0x8000019c]:INSB s5, a6, 0<br> [0x800001a0]:sw s5, 48(t0)<br>     |
|  14|[0x80002244]<br>0x00040000|- rs1 : x4<br> - rd : x18<br>                                                                                         |[0x800001a8]:INSB s2, tp, 0<br> [0x800001ac]:sw s2, 52(t0)<br>     |
|  15|[0x80002248]<br>0x56FF7600|- rs1 : x0<br> - rd : x10<br>                                                                                         |[0x800001b4]:INSB a0, zero, 0<br> [0x800001b8]:sw a0, 56(t0)<br>   |
|  16|[0x8000224c]<br>0xFEEDBE00|- rs1 : x6<br> - rd : x1<br>                                                                                          |[0x800001c0]:INSB ra, t1, 0<br> [0x800001c4]:sw ra, 60(t0)<br>     |
|  17|[0x80002250]<br>0x5BFDDB00|- rs1 : x27<br> - rd : x8<br>                                                                                         |[0x800001cc]:INSB fp, s11, 0<br> [0x800001d0]:sw fp, 64(t0)<br>    |
|  18|[0x80002254]<br>0xDB7D5B00|- rs1 : x8<br> - rd : x24<br>                                                                                         |[0x800001d8]:INSB s8, fp, 0<br> [0x800001dc]:sw s8, 68(t0)<br>     |
|  19|[0x80002258]<br>0xFBB6FA00|- rs1 : x7<br> - rd : x31<br>                                                                                         |[0x800001e4]:INSB t6, t2, 0<br> [0x800001e8]:sw t6, 72(t0)<br>     |
|  20|[0x8000225c]<br>0xEDBEAD00|- rs1 : x3<br> - rd : x25<br>                                                                                         |[0x800001f0]:INSB s9, gp, 0<br> [0x800001f4]:sw s9, 76(t0)<br>     |
|  21|[0x80002260]<br>0x80000000|- rs1 : x21<br> - rd : x22<br>                                                                                        |[0x80000204]:INSB s6, s5, 0<br> [0x80000208]:sw s6, 0(tp)<br>      |
|  22|[0x80002264]<br>0x80000000|- rs1 : x10<br> - rd : x14<br>                                                                                        |[0x80000210]:INSB a4, a0, 0<br> [0x80000214]:sw a4, 4(tp)<br>      |
|  23|[0x80002268]<br>0x80000000|- rs1 : x11<br> - rd : x23<br>                                                                                        |[0x8000021c]:INSB s7, a1, 0<br> [0x80000220]:sw s7, 8(tp)<br>      |
|  24|[0x8000226c]<br>0x80000000|- rs1 : x2<br> - rd : x3<br>                                                                                          |[0x80000228]:INSB gp, sp, 0<br> [0x8000022c]:sw gp, 12(tp)<br>     |
|  25|[0x80002270]<br>0x00000000|- rs1 : x31<br> - rd : x9<br>                                                                                         |[0x80000234]:INSB s1, t6, 0<br> [0x80000238]:sw s1, 16(tp)<br>     |
|  26|[0x80002274]<br>0x80000000|- rs1 : x25<br> - rd : x29<br>                                                                                        |[0x80000240]:INSB t4, s9, 0<br> [0x80000244]:sw t4, 20(tp)<br>     |
|  27|[0x80002278]<br>0xEADFEE00|- rs1 : x24<br> - rd : x13<br>                                                                                        |[0x8000024c]:INSB a3, s8, 0<br> [0x80000250]:sw a3, 24(tp)<br>     |
|  28|[0x8000227c]<br>0x80002200|- rs1 : x26<br> - rd : x5<br>                                                                                         |[0x80000258]:INSB t0, s10, 0<br> [0x8000025c]:sw t0, 28(tp)<br>    |
|  29|[0x80002280]<br>0x00020000|- rs1 : x17<br> - rd : x20<br>                                                                                        |[0x80000264]:INSB s4, a7, 0<br> [0x80000268]:sw s4, 32(tp)<br>     |
|  30|[0x80002284]<br>0x80000000|- rs1 : x1<br> - rd : x7<br>                                                                                          |[0x80000270]:INSB t2, ra, 0<br> [0x80000274]:sw t2, 36(tp)<br>     |
|  31|[0x80002288]<br>0x80000000|- rs1 : x13<br> - rd : x28<br>                                                                                        |[0x8000027c]:INSB t3, a3, 0<br> [0x80000280]:sw t3, 40(tp)<br>     |
|  32|[0x8000228c]<br>0x00000000|- rs1 : x5<br> - rd : x19<br>                                                                                         |[0x80000288]:INSB s3, t0, 0<br> [0x8000028c]:sw s3, 44(tp)<br>     |
