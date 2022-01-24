
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800002c0')]      |
| SIG_REGION                | [('0x80002210', '0x800022a0', '36 words')]      |
| COV_LABELS                | zext.h      |
| TEST_NAME                 | /home/anku/bmanip/new_trials/trial8/32/riscof_dir/zext.h-01.S/ref.S    |
| Total Number of coverpoints| 106     |
| Total Coverpoints Hit     | 101      |
| Total Signature Updates   | 36      |
| STAT1                     | 35      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800002b8]:zext.h t6, t5
      [0x800002bc]:sw t6, 28(t0)
 -- Signature Address: 0x8000229c Data: 0x00000004
 -- Redundant Coverpoints hit by the op
      - opcode : zext.h
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - rs1_val == 4






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

|s.no|        signature         |                                      coverpoints                                       |                               code                               |
|---:|--------------------------|----------------------------------------------------------------------------------------|------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : zext.h<br> - rs1 : x31<br> - rd : x31<br> - rs1 == rd<br> - rs1_val == 0<br> |[0x80000104]:zext.h t6, t6<br> [0x80000108]:sw t6, 0(ra)<br>      |
|   2|[0x80002214]<br>0x00000000|- rs1 : x29<br> - rd : x30<br> - rs1 != rd<br> - rs1_val == 2147483648<br>              |[0x80000110]:zext.h t5, t4<br> [0x80000114]:sw t5, 4(ra)<br>      |
|   3|[0x80002218]<br>0x00000000|- rs1 : x30<br> - rd : x29<br> - rs1_val == 1073741824<br>                              |[0x8000011c]:zext.h t4, t5<br> [0x80000120]:sw t4, 8(ra)<br>      |
|   4|[0x8000221c]<br>0x00000000|- rs1 : x27<br> - rd : x28<br> - rs1_val == 536870912<br>                               |[0x80000128]:zext.h t3, s11<br> [0x8000012c]:sw t3, 12(ra)<br>    |
|   5|[0x80002220]<br>0x00000000|- rs1 : x28<br> - rd : x27<br> - rs1_val == 268435456<br>                               |[0x80000134]:zext.h s11, t3<br> [0x80000138]:sw s11, 16(ra)<br>   |
|   6|[0x80002224]<br>0x00000000|- rs1 : x25<br> - rd : x26<br> - rs1_val == 134217728<br>                               |[0x80000140]:zext.h s10, s9<br> [0x80000144]:sw s10, 20(ra)<br>   |
|   7|[0x80002228]<br>0x00000000|- rs1 : x26<br> - rd : x25<br> - rs1_val == 67108864<br>                                |[0x8000014c]:zext.h s9, s10<br> [0x80000150]:sw s9, 24(ra)<br>    |
|   8|[0x8000222c]<br>0x00000000|- rs1 : x23<br> - rd : x24<br> - rs1_val == 33554432<br>                                |[0x80000158]:zext.h s8, s7<br> [0x8000015c]:sw s8, 28(ra)<br>     |
|   9|[0x80002230]<br>0x00000000|- rs1 : x24<br> - rd : x23<br> - rs1_val == 16777216<br>                                |[0x80000164]:zext.h s7, s8<br> [0x80000168]:sw s7, 32(ra)<br>     |
|  10|[0x80002234]<br>0x00000000|- rs1 : x21<br> - rd : x22<br> - rs1_val == 8388608<br>                                 |[0x80000170]:zext.h s6, s5<br> [0x80000174]:sw s6, 36(ra)<br>     |
|  11|[0x80002238]<br>0x00000000|- rs1 : x22<br> - rd : x21<br> - rs1_val == 4194304<br>                                 |[0x8000017c]:zext.h s5, s6<br> [0x80000180]:sw s5, 40(ra)<br>     |
|  12|[0x8000223c]<br>0x00000000|- rs1 : x19<br> - rd : x20<br> - rs1_val == 2097152<br>                                 |[0x80000188]:zext.h s4, s3<br> [0x8000018c]:sw s4, 44(ra)<br>     |
|  13|[0x80002240]<br>0x00000000|- rs1 : x20<br> - rd : x19<br> - rs1_val == 1048576<br>                                 |[0x80000194]:zext.h s3, s4<br> [0x80000198]:sw s3, 48(ra)<br>     |
|  14|[0x80002244]<br>0x00000000|- rs1 : x17<br> - rd : x18<br> - rs1_val == 524288<br>                                  |[0x800001a0]:zext.h s2, a7<br> [0x800001a4]:sw s2, 52(ra)<br>     |
|  15|[0x80002248]<br>0x00000000|- rs1 : x18<br> - rd : x17<br> - rs1_val == 262144<br>                                  |[0x800001ac]:zext.h a7, s2<br> [0x800001b0]:sw a7, 56(ra)<br>     |
|  16|[0x8000224c]<br>0x00000000|- rs1 : x15<br> - rd : x16<br> - rs1_val == 131072<br>                                  |[0x800001b8]:zext.h a6, a5<br> [0x800001bc]:sw a6, 60(ra)<br>     |
|  17|[0x80002250]<br>0x00000000|- rs1 : x16<br> - rd : x15<br> - rs1_val == 65536<br>                                   |[0x800001c4]:zext.h a5, a6<br> [0x800001c8]:sw a5, 64(ra)<br>     |
|  18|[0x80002254]<br>0x00008000|- rs1 : x13<br> - rd : x14<br> - rs1_val == 32768<br>                                   |[0x800001d0]:zext.h a4, a3<br> [0x800001d4]:sw a4, 68(ra)<br>     |
|  19|[0x80002258]<br>0x00004000|- rs1 : x14<br> - rd : x13<br> - rs1_val == 16384<br>                                   |[0x800001dc]:zext.h a3, a4<br> [0x800001e0]:sw a3, 72(ra)<br>     |
|  20|[0x8000225c]<br>0x00000001|- rs1 : x11<br> - rd : x12<br> - rs1_val == 1<br>                                       |[0x800001e8]:zext.h a2, a1<br> [0x800001ec]:sw a2, 76(ra)<br>     |
|  21|[0x80002260]<br>0x0000FF80|- rs1 : x12<br> - rd : x11<br> - rs1_val == 65408<br>                                   |[0x800001f8]:zext.h a1, a2<br> [0x800001fc]:sw a1, 80(ra)<br>     |
|  22|[0x80002264]<br>0x00002000|- rs1 : x9<br> - rd : x10<br> - rs1_val == 8192<br>                                     |[0x80000204]:zext.h a0, s1<br> [0x80000208]:sw a0, 84(ra)<br>     |
|  23|[0x80002268]<br>0x00001000|- rs1 : x10<br> - rd : x9<br> - rs1_val == 4096<br>                                     |[0x80000210]:zext.h s1, a0<br> [0x80000214]:sw s1, 88(ra)<br>     |
|  24|[0x8000226c]<br>0x00000800|- rs1 : x7<br> - rd : x8<br> - rs1_val == 2048<br>                                      |[0x80000220]:zext.h fp, t2<br> [0x80000224]:sw fp, 92(ra)<br>     |
|  25|[0x80002270]<br>0x00000400|- rs1 : x8<br> - rd : x7<br> - rs1_val == 1024<br>                                      |[0x8000022c]:zext.h t2, fp<br> [0x80000230]:sw t2, 96(ra)<br>     |
|  26|[0x80002274]<br>0x00000200|- rs1 : x5<br> - rd : x6<br> - rs1_val == 512<br>                                       |[0x80000238]:zext.h t1, t0<br> [0x8000023c]:sw t1, 100(ra)<br>    |
|  27|[0x80002278]<br>0x00000100|- rs1 : x6<br> - rd : x5<br> - rs1_val == 256<br>                                       |[0x80000244]:zext.h t0, t1<br> [0x80000248]:sw t0, 104(ra)<br>    |
|  28|[0x8000227c]<br>0x00000080|- rs1 : x3<br> - rd : x4<br> - rs1_val == 128<br>                                       |[0x80000250]:zext.h tp, gp<br> [0x80000254]:sw tp, 108(ra)<br>    |
|  29|[0x80002280]<br>0x00000040|- rs1 : x4<br> - rd : x3<br> - rs1_val == 64<br>                                        |[0x80000264]:zext.h gp, tp<br> [0x80000268]:sw gp, 0(t0)<br>      |
|  30|[0x80002284]<br>0x00000020|- rs1 : x1<br> - rd : x2<br> - rs1_val == 32<br>                                        |[0x80000270]:zext.h sp, ra<br> [0x80000274]:sw sp, 4(t0)<br>      |
|  31|[0x80002288]<br>0x00000010|- rs1 : x2<br> - rd : x1<br> - rs1_val == 16<br>                                        |[0x8000027c]:zext.h ra, sp<br> [0x80000280]:sw ra, 8(t0)<br>      |
|  32|[0x8000228c]<br>0x00000000|- rs1 : x0<br>                                                                          |[0x80000288]:zext.h t6, zero<br> [0x8000028c]:sw t6, 12(t0)<br>   |
|  33|[0x80002290]<br>0x00000000|- rd : x0<br> - rs1_val == 4<br>                                                        |[0x80000294]:zext.h zero, t6<br> [0x80000298]:sw zero, 16(t0)<br> |
|  34|[0x80002294]<br>0x00000002|- rs1_val == 2<br>                                                                      |[0x800002a0]:zext.h t6, t5<br> [0x800002a4]:sw t6, 20(t0)<br>     |
|  35|[0x80002298]<br>0x00000008|- rs1_val == 8<br>                                                                      |[0x800002ac]:zext.h t6, t5<br> [0x800002b0]:sw t6, 24(t0)<br>     |
