
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800004d0')]      |
| SIG_REGION                | [('0x80002210', '0x80002310', '64 words')]      |
| COV_LABELS                | srli16.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/srli16.u-01.S    |
| Total Number of coverpoints| 160     |
| Total Coverpoints Hit     | 155      |
| Total Signature Updates   | 62      |
| STAT1                     | 60      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000454]:SRLI16_U t6, t5, 4
      [0x80000458]:sw t6, 132(ra)
 -- Signature Address: 0x800022e8 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - opcode : srli16.u
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 4
      - rs1_h1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004b4]:SRLI16_U t6, t5, 15
      [0x800004b8]:sw t6, 156(ra)
 -- Signature Address: 0x80002300 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : srli16.u
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 15
      - rs1_h0_val == 256






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

|s.no|        signature         |                                                  coverpoints                                                   |                                 code                                  |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : srli16.u<br> - rs1 : x23<br> - rd : x23<br> - rs1 == rd<br> - rs1_h0_val == 0<br> - imm_val == 7<br> |[0x80000104]:SRLI16_U s7, s7, 7<br> [0x80000108]:sw s7, 0(t0)<br>      |
|   2|[0x80002214]<br>0x00000000|- rs1 : x24<br> - rd : x0<br> - rs1 != rd<br> - imm_val == 15<br> - rs1_h0_val == 256<br>                       |[0x80000114]:SRLI16_U zero, s8, 15<br> [0x80000118]:sw zero, 4(t0)<br> |
|   3|[0x80002218]<br>0x00040004|- rs1 : x13<br> - rd : x26<br> - imm_val == 14<br> - rs1_h1_val == 65533<br> - rs1_h0_val == 65535<br>          |[0x80000124]:SRLI16_U s10, a3, 14<br> [0x80000128]:sw s10, 8(t0)<br>   |
|   4|[0x8000221c]<br>0x00000000|- rs1 : x8<br> - rd : x7<br> - imm_val == 13<br>                                                                |[0x80000134]:SRLI16_U t2, fp, 13<br> [0x80000138]:sw t2, 12(t0)<br>    |
|   5|[0x80002220]<br>0x00000005|- rs1 : x17<br> - rd : x28<br> - imm_val == 12<br> - rs1_h1_val == 2<br> - rs1_h0_val == 21845<br>              |[0x80000144]:SRLI16_U t3, a7, 12<br> [0x80000148]:sw t3, 16(t0)<br>    |
|   6|[0x80002224]<br>0x00000001|- rs1 : x9<br> - rd : x11<br> - imm_val == 11<br> - rs1_h1_val == 512<br> - rs1_h0_val == 1024<br>              |[0x80000154]:SRLI16_U a1, s1, 11<br> [0x80000158]:sw a1, 20(t0)<br>    |
|   7|[0x80002228]<br>0x002B0000|- rs1 : x20<br> - rd : x24<br> - imm_val == 10<br> - rs1_h1_val == 43690<br>                                    |[0x80000164]:SRLI16_U s8, s4, 10<br> [0x80000168]:sw s8, 24(t0)<br>    |
|   8|[0x8000222c]<br>0x002B0040|- rs1 : x14<br> - rd : x21<br> - imm_val == 9<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 32767<br>           |[0x80000174]:SRLI16_U s5, a4, 9<br> [0x80000178]:sw s5, 28(t0)<br>     |
|   9|[0x80002230]<br>0x00000000|- rs1 : x2<br> - rd : x10<br> - imm_val == 8<br>                                                                |[0x80000184]:SRLI16_U a0, sp, 8<br> [0x80000188]:sw a0, 32(t0)<br>     |
|  10|[0x80002234]<br>0x03F003F8|- rs1 : x1<br> - rd : x9<br> - imm_val == 6<br> - rs1_h1_val == 64511<br> - rs1_h0_val == 65023<br>             |[0x80000194]:SRLI16_U s1, ra, 6<br> [0x80000198]:sw s1, 36(t0)<br>     |
|  11|[0x80002238]<br>0x00000000|- rs1 : x31<br> - rd : x16<br> - imm_val == 5<br> - rs1_h1_val == 1<br>                                         |[0x800001a4]:SRLI16_U a6, t6, 5<br> [0x800001a8]:sw a6, 40(t0)<br>     |
|  12|[0x8000223c]<br>0x00010C00|- rs1 : x22<br> - rd : x2<br> - imm_val == 4<br> - rs1_h0_val == 49151<br>                                      |[0x800001b4]:SRLI16_U sp, s6, 4<br> [0x800001b8]:sw sp, 44(t0)<br>     |
|  13|[0x80002240]<br>0x00011C00|- rs1 : x15<br> - rd : x29<br> - imm_val == 3<br> - rs1_h0_val == 57343<br>                                     |[0x800001c4]:SRLI16_U t4, a5, 3<br> [0x800001c8]:sw t4, 48(t0)<br>     |
|  14|[0x80002244]<br>0x00050400|- rs1 : x16<br> - rd : x31<br> - imm_val == 2<br> - rs1_h0_val == 4096<br>                                      |[0x800001d0]:SRLI16_U t6, a6, 2<br> [0x800001d4]:sw t6, 52(t0)<br>     |
|  15|[0x80002248]<br>0x00017FF8|- rs1 : x6<br> - rd : x14<br> - imm_val == 1<br> - rs1_h0_val == 65519<br>                                      |[0x800001e0]:SRLI16_U a4, t1, 1<br> [0x800001e4]:sw a4, 56(t0)<br>     |
|  16|[0x8000224c]<br>0x0200DFFF|- rs1 : x29<br> - rd : x8<br> - imm_val == 0<br>                                                                |[0x800001f0]:SRLI16_U fp, t4, 0<br> [0x800001f4]:sw fp, 60(t0)<br>     |
|  17|[0x80002250]<br>0x00100020|- rs1 : x18<br> - rd : x12<br> - rs1_h1_val == 32767<br> - rs1_h0_val == 65527<br>                              |[0x80000200]:SRLI16_U a2, s2, 11<br> [0x80000204]:sw a2, 64(t0)<br>    |
|  18|[0x80002254]<br>0x01800000|- rs1 : x27<br> - rd : x6<br> - rs1_h1_val == 49151<br>                                                         |[0x80000210]:SRLI16_U t1, s11, 7<br> [0x80000214]:sw t1, 68(t0)<br>    |
|  19|[0x80002258]<br>0x00030004|- rs1 : x3<br> - rd : x4<br> - rs1_h1_val == 57343<br>                                                          |[0x80000220]:SRLI16_U tp, gp, 14<br> [0x80000224]:sw tp, 72(t0)<br>    |
|  20|[0x8000225c]<br>0x3C003FC0|- rs1 : x7<br> - rd : x1<br> - rs1_h1_val == 61439<br> - rs1_h0_val == 65279<br>                                |[0x80000230]:SRLI16_U ra, t2, 2<br> [0x80000234]:sw ra, 76(t0)<br>     |
|  21|[0x80002260]<br>0x00000000|- rs1 : x0<br> - rd : x30<br> - rs1_h1_val == 0<br>                                                             |[0x80000240]:SRLI16_U t5, zero, 0<br> [0x80000244]:sw t5, 80(t0)<br>   |
|  22|[0x80002264]<br>0x1FC01555|- rs1 : x12<br> - rd : x13<br> - rs1_h1_val == 65023<br> - rs1_h0_val == 43690<br>                              |[0x80000258]:SRLI16_U a3, a2, 3<br> [0x8000025c]:sw a3, 0(ra)<br>      |
|  23|[0x80002268]<br>0x03FC0000|- rs1 : x4<br> - rd : x15<br> - rs1_h1_val == 65279<br> - rs1_h0_val == 4<br>                                   |[0x80000268]:SRLI16_U a5, tp, 6<br> [0x8000026c]:sw a5, 4(ra)<br>      |
|  24|[0x8000226c]<br>0x00040000|- rs1 : x11<br> - rd : x18<br> - rs1_h1_val == 65407<br>                                                        |[0x80000278]:SRLI16_U s2, a1, 14<br> [0x8000027c]:sw s2, 8(ra)<br>     |
|  25|[0x80002270]<br>0x00020000|- rs1 : x19<br> - rd : x25<br> - rs1_h1_val == 65471<br>                                                        |[0x80000288]:SRLI16_U s9, s3, 15<br> [0x8000028c]:sw s9, 12(ra)<br>    |
|  26|[0x80002274]<br>0x0FFE0FFE|- rs1 : x5<br> - rd : x3<br> - rs1_h1_val == 65503<br> - rs1_h0_val == 65503<br>                                |[0x80000298]:SRLI16_U gp, t0, 4<br> [0x8000029c]:sw gp, 16(ra)<br>     |
|  27|[0x80002278]<br>0x04000000|- rs1 : x25<br> - rd : x19<br> - rs1_h1_val == 65519<br>                                                        |[0x800002a8]:SRLI16_U s3, s9, 6<br> [0x800002ac]:sw s3, 20(ra)<br>     |
|  28|[0x8000227c]<br>0x00800000|- rs1 : x21<br> - rd : x27<br> - rs1_h1_val == 65527<br>                                                        |[0x800002b8]:SRLI16_U s11, s5, 9<br> [0x800002bc]:sw s11, 24(ra)<br>   |
|  29|[0x80002280]<br>0xFFFB000E|- rs1 : x28<br> - rd : x17<br> - rs1_h1_val == 65531<br>                                                        |[0x800002c8]:SRLI16_U a7, t3, 0<br> [0x800002cc]:sw a7, 28(ra)<br>     |
|  30|[0x80002284]<br>0x00020002|- rs1 : x26<br> - rd : x5<br> - rs1_h1_val == 65534<br>                                                         |[0x800002d8]:SRLI16_U t0, s10, 15<br> [0x800002dc]:sw t0, 32(ra)<br>   |
|  31|[0x80002288]<br>0x08000001|- rs1 : x10<br> - rd : x20<br> - rs1_h1_val == 32768<br>                                                        |[0x800002e8]:SRLI16_U s4, a0, 4<br> [0x800002ec]:sw s4, 36(ra)<br>     |
|  32|[0x8000228c]<br>0x08000004|- rs1 : x30<br> - rd : x22<br> - rs1_h1_val == 16384<br> - rs1_h0_val == 32<br>                                 |[0x800002f8]:SRLI16_U s6, t5, 3<br> [0x800002fc]:sw s6, 40(ra)<br>     |
|  33|[0x80002290]<br>0x00200008|- rs1_h1_val == 8192<br> - rs1_h0_val == 2048<br>                                                               |[0x80000308]:SRLI16_U t6, t5, 8<br> [0x8000030c]:sw t6, 44(ra)<br>     |
|  34|[0x80002294]<br>0x00000004|- rs1_h1_val == 256<br> - rs1_h0_val == 65471<br>                                                               |[0x80000318]:SRLI16_U t6, t5, 14<br> [0x8000031c]:sw t6, 48(ra)<br>    |
|  35|[0x80002298]<br>0x0003FFFB|- rs1_h0_val == 65531<br>                                                                                       |[0x80000328]:SRLI16_U t6, t5, 0<br> [0x8000032c]:sw t6, 52(ra)<br>     |
|  36|[0x8000229c]<br>0x0800FFFD|- rs1_h1_val == 2048<br> - rs1_h0_val == 65533<br>                                                              |[0x80000338]:SRLI16_U t6, t5, 0<br> [0x8000033c]:sw t6, 56(ra)<br>     |
|  37|[0x800022a0]<br>0x00087FFF|- rs1_h0_val == 65534<br>                                                                                       |[0x80000348]:SRLI16_U t6, t5, 1<br> [0x8000034c]:sw t6, 60(ra)<br>     |
|  38|[0x800022a4]<br>0x00400020|- rs1_h0_val == 32768<br>                                                                                       |[0x80000354]:SRLI16_U t6, t5, 10<br> [0x80000358]:sw t6, 64(ra)<br>    |
|  39|[0x800022a8]<br>0x40002000|- rs1_h0_val == 16384<br>                                                                                       |[0x80000360]:SRLI16_U t6, t5, 1<br> [0x80000364]:sw t6, 68(ra)<br>     |
|  40|[0x800022ac]<br>0x00000002|- rs1_h0_val == 512<br>                                                                                         |[0x80000370]:SRLI16_U t6, t5, 8<br> [0x80000374]:sw t6, 72(ra)<br>     |
|  41|[0x800022b0]<br>0x00000000|- rs1_h0_val == 128<br>                                                                                         |[0x80000380]:SRLI16_U t6, t5, 15<br> [0x80000384]:sw t6, 76(ra)<br>    |
|  42|[0x800022b4]<br>0x00010000|- rs1_h0_val == 64<br>                                                                                          |[0x80000390]:SRLI16_U t6, t5, 9<br> [0x80000394]:sw t6, 80(ra)<br>     |
|  43|[0x800022b8]<br>0x001F0000|- rs1_h1_val == 63487<br> - rs1_h0_val == 16<br>                                                                |[0x800003a0]:SRLI16_U t6, t5, 11<br> [0x800003a4]:sw t6, 84(ra)<br>    |
|  44|[0x800022bc]<br>0x01C00000|- rs1_h0_val == 8<br>                                                                                           |[0x800003b0]:SRLI16_U t6, t5, 7<br> [0x800003b4]:sw t6, 88(ra)<br>     |
|  45|[0x800022c0]<br>0x00000000|- rs1_h0_val == 2<br>                                                                                           |[0x800003c0]:SRLI16_U t6, t5, 11<br> [0x800003c4]:sw t6, 92(ra)<br>    |
|  46|[0x800022c4]<br>0x00400020|- rs1_h1_val == 4096<br>                                                                                        |[0x800003d0]:SRLI16_U t6, t5, 6<br> [0x800003d4]:sw t6, 96(ra)<br>     |
|  47|[0x800022c8]<br>0x00010000|- rs1_h1_val == 1024<br>                                                                                        |[0x800003e0]:SRLI16_U t6, t5, 10<br> [0x800003e4]:sw t6, 100(ra)<br>   |
|  48|[0x800022cc]<br>0x00000000|- rs1_h1_val == 128<br>                                                                                         |[0x800003f0]:SRLI16_U t6, t5, 13<br> [0x800003f4]:sw t6, 104(ra)<br>   |
|  49|[0x800022d0]<br>0x0040FFEF|- rs1_h1_val == 64<br>                                                                                          |[0x80000400]:SRLI16_U t6, t5, 0<br> [0x80000404]:sw t6, 108(ra)<br>    |
|  50|[0x800022d4]<br>0x00010000|- rs1_h1_val == 32<br>                                                                                          |[0x80000410]:SRLI16_U t6, t5, 6<br> [0x80000414]:sw t6, 112(ra)<br>    |
|  51|[0x800022d8]<br>0x00000020|- rs1_h1_val == 16<br>                                                                                          |[0x8000041c]:SRLI16_U t6, t5, 9<br> [0x80000420]:sw t6, 116(ra)<br>    |
|  52|[0x800022dc]<br>0x00020002|- rs1_h1_val == 8<br>                                                                                           |[0x8000042c]:SRLI16_U t6, t5, 2<br> [0x80000430]:sw t6, 120(ra)<br>    |
|  53|[0x800022e0]<br>0x00000018|- rs1_h1_val == 4<br>                                                                                           |[0x8000043c]:SRLI16_U t6, t5, 11<br> [0x80000440]:sw t6, 124(ra)<br>   |
|  54|[0x800022e4]<br>0x40003FFF|- rs1_h1_val == 65535<br>                                                                                       |[0x80000448]:SRLI16_U t6, t5, 2<br> [0x8000044c]:sw t6, 128(ra)<br>    |
|  55|[0x800022ec]<br>0x00000000|- rs1_h0_val == 1<br>                                                                                           |[0x80000464]:SRLI16_U t6, t5, 11<br> [0x80000468]:sw t6, 136(ra)<br>   |
|  56|[0x800022f0]<br>0x00000007|- rs1_h0_val == 61439<br>                                                                                       |[0x80000474]:SRLI16_U t6, t5, 13<br> [0x80000478]:sw t6, 140(ra)<br>   |
|  57|[0x800022f4]<br>0x00000004|- rs1_h0_val == 63487<br>                                                                                       |[0x80000484]:SRLI16_U t6, t5, 14<br> [0x80000488]:sw t6, 144(ra)<br>   |
|  58|[0x800022f8]<br>0x0000001F|- rs1_h0_val == 64511<br>                                                                                       |[0x80000494]:SRLI16_U t6, t5, 11<br> [0x80000498]:sw t6, 148(ra)<br>   |
|  59|[0x800022fc]<br>0x010000FF|- rs1_h0_val == 65407<br>                                                                                       |[0x800004a4]:SRLI16_U t6, t5, 8<br> [0x800004a8]:sw t6, 152(ra)<br>    |
|  60|[0x80002304]<br>0xF7FF2000|- rs1_h0_val == 8192<br>                                                                                        |[0x800004c0]:SRLI16_U t6, t5, 0<br> [0x800004c4]:sw t6, 160(ra)<br>    |
