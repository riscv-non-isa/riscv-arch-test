
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000770')]      |
| SIG_REGION                | [('0x80002210', '0x80002320', '68 words')]      |
| COV_LABELS                | pbsad      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/pbsad-01.S    |
| Total Number of coverpoints| 276     |
| Total Coverpoints Hit     | 270      |
| Total Signature Updates   | 68      |
| STAT1                     | 62      |
| STAT2                     | 6      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004dc]:PBSAD t6, t5, t4
      [0x800004e0]:sw t6, 32(ra)
 -- Signature Address: 0x800022b0 Data: 0x0000009C
 -- Redundant Coverpoints hit by the op
      - opcode : pbsad
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b2_val == 128
      - rs2_b1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000658]:PBSAD t6, t5, t4
      [0x8000065c]:sw t6, 96(ra)
 -- Signature Address: 0x800022f0 Data: 0x00000067
 -- Redundant Coverpoints hit by the op
      - opcode : pbsad
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b3_val == 255
      - rs2_b2_val == 0
      - rs2_b1_val == 4
      - rs2_b0_val == 254
      - rs1_b3_val == 191
      - rs1_b2_val == 8
      - rs1_b1_val == 32
      - rs1_b0_val == 251




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000700]:PBSAD t6, t5, t4
      [0x80000704]:sw t6, 124(ra)
 -- Signature Address: 0x8000230c Data: 0x0000013E
 -- Redundant Coverpoints hit by the op
      - opcode : pbsad
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b0_val == 0
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs2_b3_val == 191
      - rs2_b2_val == 253
      - rs2_b1_val == 64
      - rs2_b0_val == 85
      - rs1_b2_val == 251




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000730]:PBSAD t6, t5, t4
      [0x80000734]:sw t6, 132(ra)
 -- Signature Address: 0x80002314 Data: 0x000001B6
 -- Redundant Coverpoints hit by the op
      - opcode : pbsad
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b3_val == 0
      - rs2_b2_val == 239
      - rs2_b1_val == 254
      - rs2_b0_val == 32
      - rs1_b3_val == 128
      - rs1_b1_val == 191




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000748]:PBSAD t6, t5, t4
      [0x8000074c]:sw t6, 136(ra)
 -- Signature Address: 0x80002318 Data: 0x00000091
 -- Redundant Coverpoints hit by the op
      - opcode : pbsad
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b2_val == 247
      - rs1_b3_val == 4
      - rs1_b2_val == 223
      - rs1_b0_val == 128




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000760]:PBSAD t6, t5, t4
      [0x80000764]:sw t6, 140(ra)
 -- Signature Address: 0x8000231c Data: 0x0000023C
 -- Redundant Coverpoints hit by the op
      - opcode : pbsad
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b3_val == 127
      - rs2_b0_val == 223
      - rs1_b2_val == 32
      - rs1_b1_val == 251






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

|s.no|        signature         |                                                                                                                                                                                                                                                                                coverpoints                                                                                                                                                                                                                                                                                |                                code                                 |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : pbsad<br> - rs1 : x12<br> - rs2 : x12<br> - rd : x12<br> - rs1 == rs2 == rd<br> - rs1_b3_val == rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b2_val == rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs1_b1_val == rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs1_b0_val == rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b3_val == 191<br> - rs2_b2_val == 253<br> - rs2_b1_val == 64<br> - rs2_b0_val == 85<br> - rs1_b3_val == 191<br> - rs1_b2_val == 253<br> - rs1_b1_val == 64<br> - rs1_b0_val == 85<br> |[0x80000110]:PBSAD a2, a2, a2<br> [0x80000114]:sw a2, 0(a1)<br>      |
|   2|[0x80002214]<br>0x00000000|- rs1 : x13<br> - rs2 : x13<br> - rd : x27<br> - rs1 == rs2 != rd<br> - rs2_b3_val == 223<br> - rs1_b3_val == 223<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000128]:PBSAD s11, a3, a3<br> [0x8000012c]:sw s11, 4(a1)<br>    |
|   3|[0x80002218]<br>0x00000045|- rs1 : x31<br> - rs2 : x18<br> - rd : x13<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_b1_val != rs2_b1_val and rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs1_b0_val != rs2_b0_val and rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b1_val == 191<br> - rs1_b1_val == 128<br>                                                                                                                                                                                                                                                                                     |[0x80000140]:PBSAD a3, t6, s2<br> [0x80000144]:sw a3, 8(a1)<br>      |
|   4|[0x8000221c]<br>0x000001AD|- rs1 : x9<br> - rs2 : x14<br> - rd : x14<br> - rs2 == rd != rs1<br> - rs1_b3_val != rs2_b3_val and rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b2_val != rs2_b2_val and rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs2_b2_val == 4<br> - rs2_b0_val == 255<br> - rs1_b0_val == 16<br>                                                                                                                                                                                                                                                                                        |[0x80000158]:PBSAD a4, s1, a4<br> [0x8000015c]:sw a4, 12(a1)<br>     |
|   5|[0x80002220]<br>0x0000003C|- rs1 : x25<br> - rs2 : x17<br> - rd : x25<br> - rs1 == rd != rs2<br> - rs2_b3_val == 64<br> - rs2_b0_val == 223<br> - rs1_b0_val == 223<br>                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000170]:PBSAD s9, s9, a7<br> [0x80000174]:sw s9, 16(a1)<br>     |
|   6|[0x80002224]<br>0x00000320|- rs1 : x28<br> - rs2 : x15<br> - rd : x9<br> - rs2_b3_val == 170<br> - rs2_b2_val == 251<br> - rs2_b1_val == 254<br> - rs2_b0_val == 254<br> - rs1_b3_val == 16<br> - rs1_b1_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                |[0x80000188]:PBSAD s1, t3, a5<br> [0x8000018c]:sw s1, 20(a1)<br>     |
|   7|[0x80002228]<br>0x00000110|- rs1 : x2<br> - rs2 : x29<br> - rd : x18<br> - rs2_b3_val == 85<br> - rs1_b3_val == 128<br> - rs1_b2_val == 170<br> - rs1_b1_val == 191<br>                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800001a0]:PBSAD s2, sp, t4<br> [0x800001a4]:sw s2, 24(a1)<br>     |
|   8|[0x8000222c]<br>0x00000237|- rs1 : x1<br> - rs2 : x3<br> - rd : x5<br> - rs2_b3_val == 127<br> - rs2_b0_val == 253<br> - rs1_b3_val == 170<br> - rs1_b1_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800001b8]:PBSAD t0, ra, gp<br> [0x800001bc]:sw t0, 28(a1)<br>     |
|   9|[0x80002230]<br>0x00000317|- rs1 : x15<br> - rs2 : x27<br> - rd : x20<br> - rs2_b3_val == 239<br> - rs2_b2_val == 128<br> - rs2_b1_val == 247<br> - rs1_b2_val == 16<br> - rs1_b1_val == 32<br> - rs1_b0_val == 254<br>                                                                                                                                                                                                                                                                                                                                                                               |[0x800001d0]:PBSAD s4, a5, s11<br> [0x800001d4]:sw s4, 32(a1)<br>    |
|  10|[0x80002234]<br>0x0000031D|- rs1 : x22<br> - rs2 : x16<br> - rd : x10<br> - rs2_b3_val == 247<br> - rs2_b1_val == 251<br> - rs2_b0_val == 16<br> - rs1_b2_val == 223<br> - rs1_b0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800001e8]:PBSAD a0, s6, a6<br> [0x800001ec]:sw a0, 36(a1)<br>     |
|  11|[0x80002238]<br>0x00000374|- rs1 : x29<br> - rs2 : x28<br> - rd : x1<br> - rs2_b3_val == 251<br> - rs2_b2_val == 223<br> - rs2_b1_val == 223<br> - rs1_b3_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000200]:PBSAD ra, t4, t3<br> [0x80000204]:sw ra, 40(a1)<br>     |
|  12|[0x8000223c]<br>0x000001A0|- rs1 : x23<br> - rs2 : x7<br> - rd : x2<br> - rs2_b3_val == 253<br> - rs2_b2_val == 2<br> - rs1_b2_val == 1<br> - rs1_b0_val == 255<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000218]:PBSAD sp, s7, t2<br> [0x8000021c]:sw sp, 44(a1)<br>     |
|  13|[0x80002240]<br>0x0000028B|- rs1 : x19<br> - rs2 : x4<br> - rd : x24<br> - rs2_b3_val == 254<br> - rs2_b2_val == 16<br> - rs2_b0_val == 191<br> - rs1_b3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000230]:PBSAD s8, s3, tp<br> [0x80000234]:sw s8, 48(a1)<br>     |
|  14|[0x80002244]<br>0x00000188|- rs1 : x18<br> - rs2 : x22<br> - rd : x4<br> - rs2_b3_val == 128<br> - rs1_b3_val == 8<br> - rs1_b1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000248]:PBSAD tp, s2, s6<br> [0x8000024c]:sw tp, 52(a1)<br>     |
|  15|[0x80002248]<br>0x00000319|- rs1 : x16<br> - rs2 : x25<br> - rd : x6<br> - rs2_b3_val == 32<br> - rs1_b3_val == 253<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000260]:PBSAD t1, a6, s9<br> [0x80000264]:sw t1, 56(a1)<br>     |
|  16|[0x8000224c]<br>0x00000184|- rs1 : x7<br> - rs2 : x8<br> - rd : x30<br> - rs2_b3_val == 16<br> - rs2_b2_val == 170<br> - rs2_b1_val == 255<br> - rs2_b0_val == 128<br> - rs1_b3_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000278]:PBSAD t5, t2, fp<br> [0x8000027c]:sw t5, 60(a1)<br>     |
|  17|[0x80002250]<br>0x00000373|- rs1 : x21<br> - rs2 : x11<br> - rd : x7<br> - rs2_b3_val == 8<br> - rs2_b2_val == 255<br> - rs1_b1_val == 247<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000298]:PBSAD t2, s5, a1<br> [0x8000029c]:sw t2, 0(a2)<br>      |
|  18|[0x80002254]<br>0x00000108|- rs1 : x8<br> - rs2 : x20<br> - rd : x21<br> - rs2_b3_val == 4<br> - rs2_b0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800002b0]:PBSAD s5, fp, s4<br> [0x800002b4]:sw s5, 4(a2)<br>      |
|  19|[0x80002258]<br>0x000000A8|- rs1 : x17<br> - rs2 : x2<br> - rd : x16<br> - rs2_b3_val == 2<br> - rs2_b0_val == 1<br> - rs1_b0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800002c8]:PBSAD a6, a7, sp<br> [0x800002cc]:sw a6, 8(a2)<br>      |
|  20|[0x8000225c]<br>0x00000150|- rs1 : x30<br> - rs2 : x10<br> - rd : x3<br> - rs2_b3_val == 1<br> - rs2_b1_val == 85<br> - rs1_b2_val == 254<br> - rs1_b0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800002e0]:PBSAD gp, t5, a0<br> [0x800002e4]:sw gp, 12(a2)<br>     |
|  21|[0x80002260]<br>0x00000180|- rs1 : x4<br> - rs2 : x5<br> - rd : x15<br> - rs2_b3_val == 255<br> - rs2_b0_val == 127<br> - rs1_b1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800002f8]:PBSAD a5, tp, t0<br> [0x800002fc]:sw a5, 16(a2)<br>     |
|  22|[0x80002264]<br>0x00000000|- rs1 : x5<br> - rs2 : x24<br> - rd : x0<br> - rs2_b3_val == 0<br> - rs2_b2_val == 239<br> - rs2_b0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000310]:PBSAD zero, t0, s8<br> [0x80000314]:sw zero, 20(a2)<br> |
|  23|[0x80002268]<br>0x000000CA|- rs1 : x26<br> - rs2 : x30<br> - rd : x17<br> - rs2_b2_val == 85<br> - rs1_b3_val == 2<br> - rs1_b2_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000328]:PBSAD a7, s10, t5<br> [0x8000032c]:sw a7, 24(a2)<br>    |
|  24|[0x8000226c]<br>0x0000021C|- rs1 : x27<br> - rs2 : x26<br> - rd : x28<br> - rs2_b2_val == 127<br> - rs2_b1_val == 32<br> - rs1_b3_val == 255<br> - rs1_b2_val == 4<br> - rs1_b1_val == 223<br>                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000340]:PBSAD t3, s11, s10<br> [0x80000344]:sw t3, 28(a2)<br>   |
|  25|[0x80002270]<br>0x000000AB|- rs1 : x24<br> - rs2 : x9<br> - rd : x11<br> - rs1_b0_val == 0<br> - rs2_b2_val == 191<br> - rs2_b1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000354]:PBSAD a1, s8, s1<br> [0x80000358]:sw a1, 32(a2)<br>     |
|  26|[0x80002274]<br>0x00000118|- rs1 : x0<br> - rs2 : x21<br> - rd : x22<br> - rs2_b2_val == 247<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x8000036c]:PBSAD s6, zero, s5<br> [0x80000370]:sw s6, 36(a2)<br>   |
|  27|[0x80002278]<br>0x000000D0|- rs1 : x6<br> - rs2 : x1<br> - rd : x23<br> - rs2_b1_val == 170<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000384]:PBSAD s7, t1, ra<br> [0x80000388]:sw s7, 40(a2)<br>     |
|  28|[0x8000227c]<br>0x00000117|- rs1 : x3<br> - rs2 : x31<br> - rd : x19<br> - rs1_b2_val == 8<br> - rs1_b1_val == 170<br> - rs1_b0_val == 247<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000039c]:PBSAD s3, gp, t6<br> [0x800003a0]:sw s3, 44(a2)<br>     |
|  29|[0x80002280]<br>0x000001B8|- rs1 : x14<br> - rs2 : x6<br> - rd : x31<br> - rs1_b2_val == 32<br> - rs1_b1_val == 239<br> - rs1_b0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800003b4]:PBSAD t6, a4, t1<br> [0x800003b8]:sw t6, 48(a2)<br>     |
|  30|[0x80002284]<br>0x00000136|- rs1 : x11<br> - rs2 : x0<br> - rd : x26<br> - rs2_b2_val == 0<br> - rs2_b1_val == 0<br> - rs2_b0_val == 0<br> - rs1_b1_val == 251<br>                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800003cc]:PBSAD s10, a1, zero<br> [0x800003d0]:sw s10, 52(a2)<br> |
|  31|[0x80002288]<br>0x000001E9|- rs1 : x20<br> - rs2 : x19<br> - rd : x8<br> - rs1_b1_val == 253<br> - rs1_b0_val == 253<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800003e4]:PBSAD fp, s4, s3<br> [0x800003e8]:sw fp, 56(a2)<br>     |
|  32|[0x8000228c]<br>0x000001E3|- rs1 : x10<br> - rs2 : x23<br> - rd : x29<br> - rs2_b1_val == 239<br> - rs2_b0_val == 170<br> - rs1_b2_val == 127<br> - rs1_b1_val == 254<br>                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800003fc]:PBSAD t4, a0, s7<br> [0x80000400]:sw t4, 60(a2)<br>     |
|  33|[0x80002290]<br>0x0000001F|- rs2_b2_val == 254<br> - rs2_b1_val == 4<br> - rs1_b2_val == 247<br> - rs1_b1_val == 16<br> - rs1_b0_val == 251<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x8000041c]:PBSAD t6, t5, t4<br> [0x80000420]:sw t6, 0(ra)<br>      |
|  34|[0x80002294]<br>0x0000007B|- rs1_b2_val == 128<br> - rs1_b1_val == 8<br> - rs1_b0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000434]:PBSAD t6, t5, t4<br> [0x80000438]:sw t6, 4(ra)<br>      |
|  35|[0x80002298]<br>0x0000010F|- rs1_b3_val == 254<br> - rs1_b2_val == 2<br> - rs1_b1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000044c]:PBSAD t6, t5, t4<br> [0x80000450]:sw t6, 8(ra)<br>      |
|  36|[0x8000229c]<br>0x00000100|- rs1_b3_val == 247<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000464]:PBSAD t6, t5, t4<br> [0x80000468]:sw t6, 12(ra)<br>     |
|  37|[0x800022a0]<br>0x000000B4|- rs1_b0_val == 170<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000047c]:PBSAD t6, t5, t4<br> [0x80000480]:sw t6, 16(ra)<br>     |
|  38|[0x800022a4]<br>0x0000020E|- rs2_b1_val == 1<br> - rs1_b0_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000494]:PBSAD t6, t5, t4<br> [0x80000498]:sw t6, 20(ra)<br>     |
|  39|[0x800022a8]<br>0x000000DF|- rs1_b0_val == 191<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800004ac]:PBSAD t6, t5, t4<br> [0x800004b0]:sw t6, 24(ra)<br>     |
|  40|[0x800022ac]<br>0x0000018C|- rs2_b2_val == 64<br> - rs2_b1_val == 2<br> - rs1_b3_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800004c4]:PBSAD t6, t5, t4<br> [0x800004c8]:sw t6, 28(ra)<br>     |
|  41|[0x800022b4]<br>0x0000015B|- rs2_b0_val == 239<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800004f4]:PBSAD t6, t5, t4<br> [0x800004f8]:sw t6, 36(ra)<br>     |
|  42|[0x800022b8]<br>0x00000140|- rs2_b0_val == 247<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000050c]:PBSAD t6, t5, t4<br> [0x80000510]:sw t6, 40(ra)<br>     |
|  43|[0x800022bc]<br>0x0000027D|- rs2_b0_val == 251<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000524]:PBSAD t6, t5, t4<br> [0x80000528]:sw t6, 44(ra)<br>     |
|  44|[0x800022c0]<br>0x000000F0|- rs2_b0_val == 64<br> - rs1_b3_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000053c]:PBSAD t6, t5, t4<br> [0x80000540]:sw t6, 48(ra)<br>     |
|  45|[0x800022c4]<br>0x0000027F|- rs2_b0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000554]:PBSAD t6, t5, t4<br> [0x80000558]:sw t6, 52(ra)<br>     |
|  46|[0x800022c8]<br>0x000002EC|- rs2_b0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000056c]:PBSAD t6, t5, t4<br> [0x80000570]:sw t6, 56(ra)<br>     |
|  47|[0x800022cc]<br>0x000000E5|- rs1_b2_val == 191<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000584]:PBSAD t6, t5, t4<br> [0x80000588]:sw t6, 60(ra)<br>     |
|  48|[0x800022d0]<br>0x0000011A|- rs1_b0_val == 239<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000059c]:PBSAD t6, t5, t4<br> [0x800005a0]:sw t6, 64(ra)<br>     |
|  49|[0x800022d4]<br>0x000001A0|- rs1_b3_val == 239<br> - rs1_b2_val == 251<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800005b0]:PBSAD t6, t5, t4<br> [0x800005b4]:sw t6, 68(ra)<br>     |
|  50|[0x800022d8]<br>0x0000019F|- rs2_b1_val == 253<br> - rs1_b3_val == 251<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800005c8]:PBSAD t6, t5, t4<br> [0x800005cc]:sw t6, 72(ra)<br>     |
|  51|[0x800022dc]<br>0x00000131|- rs2_b2_val == 8<br> - rs1_b0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800005e0]:PBSAD t6, t5, t4<br> [0x800005e4]:sw t6, 76(ra)<br>     |
|  52|[0x800022e0]<br>0x0000015E|- rs1_b3_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800005f8]:PBSAD t6, t5, t4<br> [0x800005fc]:sw t6, 80(ra)<br>     |
|  53|[0x800022e4]<br>0x00000048|- rs1_b3_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000610]:PBSAD t6, t5, t4<br> [0x80000614]:sw t6, 84(ra)<br>     |
|  54|[0x800022e8]<br>0x00000153|- rs2_b2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000628]:PBSAD t6, t5, t4<br> [0x8000062c]:sw t6, 88(ra)<br>     |
|  55|[0x800022ec]<br>0x00000006|- rs2_b2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000640]:PBSAD t6, t5, t4<br> [0x80000644]:sw t6, 92(ra)<br>     |
|  56|[0x800022f4]<br>0x000003A1|- rs1_b2_val == 239<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000670]:PBSAD t6, t5, t4<br> [0x80000674]:sw t6, 100(ra)<br>    |
|  57|[0x800022f8]<br>0x00000082|- rs2_b1_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000688]:PBSAD t6, t5, t4<br> [0x8000068c]:sw t6, 104(ra)<br>    |
|  58|[0x800022fc]<br>0x000002AE|- rs1_b2_val == 64<br> - rs1_b0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800006a0]:PBSAD t6, t5, t4<br> [0x800006a4]:sw t6, 108(ra)<br>    |
|  59|[0x80002300]<br>0x0000016A|- rs2_b1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800006b8]:PBSAD t6, t5, t4<br> [0x800006bc]:sw t6, 112(ra)<br>    |
|  60|[0x80002304]<br>0x000001F6|- rs2_b1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800006d0]:PBSAD t6, t5, t4<br> [0x800006d4]:sw t6, 116(ra)<br>    |
|  61|[0x80002308]<br>0x00000328|- rs1_b2_val == 255<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x800006e8]:PBSAD t6, t5, t4<br> [0x800006ec]:sw t6, 120(ra)<br>    |
|  62|[0x80002310]<br>0x00000132|- rs1_b1_val == 255<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000718]:PBSAD t6, t5, t4<br> [0x8000071c]:sw t6, 128(ra)<br>    |
