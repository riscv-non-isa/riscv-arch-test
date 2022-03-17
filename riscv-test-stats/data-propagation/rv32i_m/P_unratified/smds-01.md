
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000820')]      |
| SIG_REGION                | [('0x80002210', '0x80002350', '80 words')]      |
| COV_LABELS                | smds      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/smds-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 79      |
| STAT1                     | 75      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000748]:SMDS t6, t5, t4
      [0x8000074c]:sw t6, 164(sp)
 -- Signature Address: 0x80002324 Data: 0x00008800
 -- Redundant Coverpoints hit by the op
      - opcode : smds
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h0_val == 2048
      - rs1_h1_val == 0
      - rs1_h0_val == -17




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007cc]:SMDS t6, t5, t4
      [0x800007d0]:sw t6, 188(sp)
 -- Signature Address: 0x8000233c Data: 0xC0000201
 -- Redundant Coverpoints hit by the op
      - opcode : smds
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == -32768
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val == rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == -513
      - rs2_h0_val == -32768
      - rs1_h1_val == -1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007e4]:SMDS t6, t5, t4
      [0x800007e8]:sw t6, 192(sp)
 -- Signature Address: 0x80002340 Data: 0x00010221
 -- Redundant Coverpoints hit by the op
      - opcode : smds
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == -257
      - rs1_h1_val == -257
      - rs1_h0_val == 4




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000080c]:SMDS t6, t5, t4
      [0x80000810]:sw t6, 200(sp)
 -- Signature Address: 0x80002348 Data: 0x00002805
 -- Redundant Coverpoints hit by the op
      - opcode : smds
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h1_val == -2049
      - rs2_h0_val == 0
      - rs1_h1_val == -5
      - rs1_h0_val == -33






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

|s.no|        signature         |                                                                                                                                                                  coverpoints                                                                                                                                                                   |                               code                                |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80002210]<br>0xC0040401|- opcode : smds<br> - rs1 : x24<br> - rs2 : x24<br> - rd : x24<br> - rs1 == rs2 == rd<br> - rs1_h0_val == -32768<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == -513<br> - rs2_h0_val == -32768<br> - rs1_h1_val == -513<br> |[0x80000108]:SMDS s8, s8, s8<br> [0x8000010c]:sw s8, 0(fp)<br>     |
|   2|[0x80002214]<br>0x000101C1|- rs1 : x4<br> - rs2 : x4<br> - rd : x10<br> - rs1 == rs2 != rd<br> - rs2_h1_val == -257<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                                           |[0x80000120]:SMDS a0, tp, tp<br> [0x80000124]:sw a0, 4(fp)<br>     |
|   3|[0x80002218]<br>0x00000000|- rs1 : x0<br> - rs2 : x3<br> - rd : x19<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 16384<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                        |[0x80000134]:SMDS s3, zero, gp<br> [0x80000138]:sw s3, 8(fp)<br>   |
|   4|[0x8000221c]<br>0xFFD79500|- rs1 : x20<br> - rs2 : x5<br> - rd : x5<br> - rs2 == rd != rs1<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == -21846<br> - rs1_h1_val == 128<br>                                                                                                                                          |[0x80000148]:SMDS t0, s4, t0<br> [0x8000014c]:sw t0, 12(fp)<br>    |
|   5|[0x80002220]<br>0xFFFF0000|- rs1 : x9<br> - rs2 : x15<br> - rd : x9<br> - rs1 == rd != rs2<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 8192<br> - rs2_h0_val == 32<br> - rs1_h1_val == 8<br> - rs1_h0_val == 4096<br>                                                                                              |[0x8000015c]:SMDS s1, s1, a5<br> [0x80000160]:sw s1, 16(fp)<br>    |
|   6|[0x80002224]<br>0x05565020|- rs1 : x22<br> - rs2 : x21<br> - rd : x12<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == 21845<br> - rs1_h1_val == 4096<br> - rs1_h0_val == -2049<br>                                                                                                                                                                             |[0x80000174]:SMDS a2, s6, s5<br> [0x80000178]:sw a2, 20(fp)<br>    |
|   7|[0x80002228]<br>0xEFFFC006|- rs1 : x10<br> - rs2 : x26<br> - rd : x3<br> - rs2_h1_val == -16385<br> - rs2_h0_val == -2<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                       |[0x8000018c]:SMDS gp, a0, s10<br> [0x80000190]:sw gp, 24(fp)<br>   |
|   8|[0x8000222c]<br>0xF7FFBED7|- rs1 : x28<br> - rs2 : x29<br> - rd : x13<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -33<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                         |[0x800001a4]:SMDS a3, t3, t4<br> [0x800001a8]:sw a3, 28(fp)<br>    |
|   9|[0x80002230]<br>0xFF7FF7CF|- rs1 : x3<br> - rs2 : x1<br> - rd : x11<br> - rs2_h1_val == -4097<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                 |[0x800001bc]:SMDS a1, gp, ra<br> [0x800001c0]:sw a1, 32(fp)<br>    |
|  10|[0x80002234]<br>0x00000000|- rs1 : x16<br> - rs2 : x0<br> - rd : x1<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == -5<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                         |[0x800001d4]:SMDS ra, a6, zero<br> [0x800001d8]:sw ra, 36(fp)<br>  |
|  11|[0x80002238]<br>0xE0008441|- rs1 : x2<br> - rs2 : x25<br> - rd : x31<br> - rs2_h1_val == -1025<br> - rs2_h0_val == -16385<br> - rs1_h1_val == -65<br>                                                                                                                                                                                                                      |[0x800001e8]:SMDS t6, sp, s9<br> [0x800001ec]:sw t6, 40(fp)<br>    |
|  12|[0x8000223c]<br>0x00040808|- rs1 : x6<br> - rs2 : x23<br> - rd : x15<br> - rs2_h1_val == -129<br> - rs2_h0_val == 1024<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                        |[0x80000200]:SMDS a5, t1, s7<br> [0x80000204]:sw a5, 44(fp)<br>    |
|  13|[0x80002240]<br>0xFFECD566|- rs1 : x18<br> - rs2 : x7<br> - rd : x14<br> - rs2_h1_val == -65<br> - rs2_h0_val == 32767<br> - rs1_h1_val == 21845<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                |[0x80000218]:SMDS a4, s2, t2<br> [0x8000021c]:sw a4, 48(fp)<br>    |
|  14|[0x80002244]<br>0x00000000|- rs1 : x23<br> - rs2 : x31<br> - rd : x0<br> - rs2_h1_val == -33<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                 |[0x80000238]:SMDS zero, s7, t6<br> [0x8000023c]:sw zero, 0(ra)<br> |
|  15|[0x80002248]<br>0xFFFBFF9A|- rs1 : x7<br> - rs2 : x11<br> - rd : x30<br> - rs2_h1_val == -17<br> - rs2_h0_val == 256<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                          |[0x80000250]:SMDS t5, t2, a1<br> [0x80000254]:sw t5, 4(ra)<br>     |
|  16|[0x8000224c]<br>0xFFC00129|- rs1 : x21<br> - rs2 : x10<br> - rd : x28<br> - rs2_h1_val == -9<br> - rs1_h1_val == -33<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                           |[0x80000264]:SMDS t3, s5, a0<br> [0x80000268]:sw t3, 8(ra)<br>     |
|  17|[0x80002250]<br>0x00013F9C|- rs1 : x17<br> - rs2 : x16<br> - rd : x25<br> - rs2_h1_val == -5<br>                                                                                                                                                                                                                                                                           |[0x8000027c]:SMDS s9, a7, a6<br> [0x80000280]:sw s9, 12(ra)<br>    |
|  18|[0x80002254]<br>0x00037FF8|- rs1 : x26<br> - rs2 : x12<br> - rd : x17<br> - rs2_h1_val == -3<br>                                                                                                                                                                                                                                                                           |[0x80000294]:SMDS a7, s10, a2<br> [0x80000298]:sw a7, 16(ra)<br>   |
|  19|[0x80002258]<br>0xFDFFD081|- rs1 : x12<br> - rs2 : x18<br> - rd : x27<br> - rs2_h1_val == -2<br> - rs2_h0_val == -4097<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                       |[0x800002ac]:SMDS s11, a2, s2<br> [0x800002b0]:sw s11, 20(ra)<br>  |
|  20|[0x8000225c]<br>0xFFFA0003|- rs1 : x29<br> - rs2 : x27<br> - rd : x6<br> - rs2_h1_val == -32768<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                              |[0x800002c4]:SMDS t1, t4, s11<br> [0x800002c8]:sw t1, 24(ra)<br>   |
|  21|[0x80002260]<br>0x00010028|- rs1 : x13<br> - rs2 : x14<br> - rd : x8<br> - rs2_h1_val == 16384<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                                   |[0x800002dc]:SMDS fp, a3, a4<br> [0x800002e0]:sw fp, 28(ra)<br>    |
|  22|[0x80002264]<br>0x0003FFC4|- rs1 : x19<br> - rs2 : x22<br> - rd : x2<br> - rs2_h1_val == 4096<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                                                   |[0x800002f4]:SMDS sp, s3, s6<br> [0x800002f8]:sw sp, 32(ra)<br>    |
|  23|[0x80002268]<br>0xFFFDA2AA|- rs1 : x5<br> - rs2 : x8<br> - rd : x29<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h1_val == 2048<br> - rs2_h0_val == -21846<br> - rs1_h0_val == -1<br>                                                                                                                                                                                 |[0x8000030c]:SMDS t4, t0, fp<br> [0x80000310]:sw t4, 36(ra)<br>    |
|  24|[0x8000226c]<br>0xFFFFE2FC|- rs1 : x8<br> - rs2 : x20<br> - rd : x18<br> - rs2_h1_val == 1024<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                  |[0x80000324]:SMDS s2, fp, s4<br> [0x80000328]:sw s2, 40(ra)<br>    |
|  25|[0x80002270]<br>0xFFFFFF01|- rs1 : x14<br> - rs2 : x17<br> - rd : x20<br> - rs2_h1_val == 512<br> - rs2_h0_val == -257<br> - rs1_h1_val == -1<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                    |[0x8000033c]:SMDS s4, a4, a7<br> [0x80000340]:sw s4, 44(ra)<br>    |
|  26|[0x80002274]<br>0xFFFFFA00|- rs1 : x15<br> - rs2 : x30<br> - rd : x7<br> - rs2_h1_val == 256<br>                                                                                                                                                                                                                                                                           |[0x80000350]:SMDS t2, a5, t5<br> [0x80000354]:sw t2, 48(ra)<br>    |
|  27|[0x80002278]<br>0xFFFFDF00|- rs1 : x30<br> - rs2 : x19<br> - rd : x23<br> - rs2_h1_val == 128<br>                                                                                                                                                                                                                                                                          |[0x80000368]:SMDS s7, t5, s3<br> [0x8000036c]:sw s7, 52(ra)<br>    |
|  28|[0x8000227c]<br>0x00000288|- rs1 : x11<br> - rs2 : x2<br> - rd : x4<br> - rs2_h1_val == 64<br> - rs2_h0_val == -17<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                               |[0x80000380]:SMDS tp, a1, sp<br> [0x80000384]:sw tp, 56(ra)<br>    |
|  29|[0x80002280]<br>0x0000BFE0|- rs1 : x31<br> - rs2 : x13<br> - rd : x22<br> - rs2_h1_val == 32<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                     |[0x8000039c]:SMDS s6, t6, a3<br> [0x800003a0]:sw s6, 0(sp)<br>     |
|  30|[0x80002284]<br>0xFFFFFF80|- rs1 : x25<br> - rs2 : x28<br> - rd : x16<br> - rs2_h1_val == 16<br>                                                                                                                                                                                                                                                                           |[0x800003b0]:SMDS a6, s9, t3<br> [0x800003b4]:sw a6, 4(sp)<br>     |
|  31|[0x80002288]<br>0xFFFFFF5A|- rs1 : x1<br> - rs2 : x6<br> - rd : x21<br> - rs2_h1_val == 8<br>                                                                                                                                                                                                                                                                              |[0x800003c8]:SMDS s5, ra, t1<br> [0x800003cc]:sw s5, 8(sp)<br>     |
|  32|[0x8000228c]<br>0x01001000|- rs1 : x27<br> - rs2 : x9<br> - rd : x26<br> - rs2_h1_val == 4<br> - rs1_h1_val == 1024<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                            |[0x800003dc]:SMDS s10, s11, s1<br> [0x800003e0]:sw s10, 12(sp)<br> |
|  33|[0x80002290]<br>0x000180FE|- rs2_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                           |[0x800003f4]:SMDS t6, t5, t4<br> [0x800003f8]:sw t6, 16(sp)<br>    |
|  34|[0x80002294]<br>0xFC401000|- rs2_h0_val == 4096<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                              |[0x80000408]:SMDS t6, t5, t4<br> [0x8000040c]:sw t6, 20(sp)<br>    |
|  35|[0x80002298]<br>0xFFEFF5FF|- rs2_h0_val == -2049<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                              |[0x80000420]:SMDS t6, t5, t4<br> [0x80000424]:sw t6, 24(sp)<br>    |
|  36|[0x8000229c]<br>0xFFD50BAA|- rs1_h1_val == 512<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                |[0x80000438]:SMDS t6, t5, t4<br> [0x8000043c]:sw t6, 28(sp)<br>    |
|  37|[0x800022a0]<br>0x0000807F|- rs1_h1_val == -4097<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                               |[0x80000450]:SMDS t6, t5, t4<br> [0x80000454]:sw t6, 32(sp)<br>    |
|  38|[0x800022a4]<br>0x000205FE|- rs2_h0_val == 512<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                  |[0x80000468]:SMDS t6, t5, t4<br> [0x8000046c]:sw t6, 36(sp)<br>    |
|  39|[0x800022a8]<br>0x0010CB2B|- rs2_h0_val == 21845<br> - rs1_h1_val == -8193<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                      |[0x80000480]:SMDS t6, t5, t4<br> [0x80000484]:sw t6, 40(sp)<br>    |
|  40|[0x800022ac]<br>0xFFFEA000|- rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                       |[0x80000494]:SMDS t6, t5, t4<br> [0x80000498]:sw t6, 44(sp)<br>    |
|  41|[0x800022b0]<br>0xFFEFD800|- rs2_h0_val == 128<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                |[0x800004a8]:SMDS t6, t5, t4<br> [0x800004ac]:sw t6, 48(sp)<br>    |
|  42|[0x800022b4]<br>0xFFFFF7E0|- rs1_h1_val == 32<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                 |[0x800004bc]:SMDS t6, t5, t4<br> [0x800004c0]:sw t6, 52(sp)<br>    |
|  43|[0x800022b8]<br>0x00001180|- rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                         |[0x800004d4]:SMDS t6, t5, t4<br> [0x800004d8]:sw t6, 56(sp)<br>    |
|  44|[0x800022bc]<br>0x00000050|- rs2_h0_val == -1<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                   |[0x800004ec]:SMDS t6, t5, t4<br> [0x800004f0]:sw t6, 60(sp)<br>    |
|  45|[0x800022c0]<br>0x00041461|- rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                          |[0x80000504]:SMDS t6, t5, t4<br> [0x80000508]:sw t6, 64(sp)<br>    |
|  46|[0x800022c4]<br>0xEAAAD516|- rs2_h0_val == 4<br> - rs1_h1_val == -21846<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                         |[0x8000051c]:SMDS t6, t5, t4<br> [0x80000520]:sw t6, 68(sp)<br>    |
|  47|[0x800022c8]<br>0x00008042|- rs1_h1_val == 16<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                    |[0x80000534]:SMDS t6, t5, t4<br> [0x80000538]:sw t6, 72(sp)<br>    |
|  48|[0x800022cc]<br>0x00000017|- rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                           |[0x8000054c]:SMDS t6, t5, t4<br> [0x80000550]:sw t6, 76(sp)<br>    |
|  49|[0x800022d0]<br>0xFFFFFFE0|- rs2_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                          |[0x80000564]:SMDS t6, t5, t4<br> [0x80000568]:sw t6, 80(sp)<br>    |
|  50|[0x800022d4]<br>0xFFEFD77D|- rs2_h0_val == -8193<br> - rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                 |[0x8000057c]:SMDS t6, t5, t4<br> [0x80000580]:sw t6, 84(sp)<br>    |
|  51|[0x800022d8]<br>0xFFFEC000|- rs2_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                          |[0x80000590]:SMDS t6, t5, t4<br> [0x80000594]:sw t6, 88(sp)<br>    |
|  52|[0x800022dc]<br>0x00007E00|- rs2_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                          |[0x800005a4]:SMDS t6, t5, t4<br> [0x800005a8]:sw t6, 92(sp)<br>    |
|  53|[0x800022e0]<br>0x000137FF|- rs2_h1_val == -2049<br> - rs2_h0_val == 8192<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                        |[0x800005b8]:SMDS t6, t5, t4<br> [0x800005bc]:sw t6, 96(sp)<br>    |
|  54|[0x800022e4]<br>0x00002400|- rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                        |[0x800005d0]:SMDS t6, t5, t4<br> [0x800005d4]:sw t6, 100(sp)<br>   |
|  55|[0x800022e8]<br>0x00007800|- rs2_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                          |[0x800005e8]:SMDS t6, t5, t4<br> [0x800005ec]:sw t6, 104(sp)<br>   |
|  56|[0x800022ec]<br>0xFFFFFCDD|- rs2_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                          |[0x80000600]:SMDS t6, t5, t4<br> [0x80000604]:sw t6, 108(sp)<br>   |
|  57|[0x800022f0]<br>0xFFFE8008|- rs2_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                           |[0x80000618]:SMDS t6, t5, t4<br> [0x8000061c]:sw t6, 112(sp)<br>   |
|  58|[0x800022f4]<br>0x00001FE0|- rs2_h0_val == 2<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                  |[0x80000630]:SMDS t6, t5, t4<br> [0x80000634]:sw t6, 116(sp)<br>   |
|  59|[0x800022f8]<br>0x00FFFD00|- rs2_h0_val == 1<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                 |[0x80000648]:SMDS t6, t5, t4<br> [0x8000064c]:sw t6, 120(sp)<br>   |
|  60|[0x800022fc]<br>0xFFEFF9BD|- rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                      |[0x80000660]:SMDS t6, t5, t4<br> [0x80000664]:sw t6, 124(sp)<br>   |
|  61|[0x80002300]<br>0x000087FF|- rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                       |[0x80000678]:SMDS t6, t5, t4<br> [0x8000067c]:sw t6, 128(sp)<br>   |
|  62|[0x80002304]<br>0xFFBF80C0|- rs2_h0_val == -9<br> - rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                                 |[0x80000690]:SMDS t6, t5, t4<br> [0x80000694]:sw t6, 132(sp)<br>   |
|  63|[0x80002308]<br>0x0002AFB5|- rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                      |[0x800006a8]:SMDS t6, t5, t4<br> [0x800006ac]:sw t6, 136(sp)<br>   |
|  64|[0x8000230c]<br>0x00082044|- rs2_h0_val == -65<br> - rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                                                 |[0x800006bc]:SMDS t6, t5, t4<br> [0x800006c0]:sw t6, 140(sp)<br>   |
|  65|[0x80002310]<br>0xFFFF9099|- rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                          |[0x800006d0]:SMDS t6, t5, t4<br> [0x800006d4]:sw t6, 144(sp)<br>   |
|  66|[0x80002314]<br>0xFFFFFFA3|- rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                                                                          |[0x800006e8]:SMDS t6, t5, t4<br> [0x800006ec]:sw t6, 148(sp)<br>   |
|  67|[0x80002318]<br>0x00000446|- rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                                                                          |[0x80000700]:SMDS t6, t5, t4<br> [0x80000704]:sw t6, 152(sp)<br>   |
|  68|[0x8000231c]<br>0xFFFD0004|- rs1_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                      |[0x80000718]:SMDS t6, t5, t4<br> [0x8000071c]:sw t6, 156(sp)<br>   |
|  69|[0x80002320]<br>0x08002F7F|- rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                       |[0x80000730]:SMDS t6, t5, t4<br> [0x80000734]:sw t6, 160(sp)<br>   |
|  70|[0x80002328]<br>0xFFFFBBEF|- rs2_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                       |[0x80000760]:SMDS t6, t5, t4<br> [0x80000764]:sw t6, 168(sp)<br>   |
|  71|[0x8000232c]<br>0x000005E5|- rs2_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                        |[0x80000778]:SMDS t6, t5, t4<br> [0x8000077c]:sw t6, 172(sp)<br>   |
|  72|[0x80002330]<br>0x00203C79|- rs2_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                        |[0x80000790]:SMDS t6, t5, t4<br> [0x80000794]:sw t6, 176(sp)<br>   |
|  73|[0x80002334]<br>0xFFE99568|- rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                      |[0x800007a8]:SMDS t6, t5, t4<br> [0x800007ac]:sw t6, 180(sp)<br>   |
|  74|[0x80002338]<br>0x007FFF00|- rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                         |[0x800007bc]:SMDS t6, t5, t4<br> [0x800007c0]:sw t6, 184(sp)<br>   |
|  75|[0x80002344]<br>0xFFFFC801|- rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                       |[0x800007f8]:SMDS t6, t5, t4<br> [0x800007fc]:sw t6, 196(sp)<br>   |
