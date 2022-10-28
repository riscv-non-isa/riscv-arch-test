
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800006f0')]      |
| SIG_REGION                | [('0x80002210', '0x80002400', '124 words')]      |
| COV_LABELS                | ksub8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/ksub8-01.S    |
| Total Number of coverpoints| 292     |
| Total Coverpoints Hit     | 286      |
| Total Signature Updates   | 62      |
| STAT1                     | 58      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000488]:KSUB8 t6, t5, t4
      [0x8000048c]:sw t6, 32(ra)
 -- Signature Address: 0x80002330 Data: 0x7F0D0045
 -- Redundant Coverpoints hit by the op
      - opcode : ksub8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val > 0 and rs2_b3_val < 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val > 0 and rs2_b2_val < 0
      - rs1_b1_val == rs2_b1_val
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val > 0 and rs2_b0_val < 0
      - rs2_b3_val == -86
      - rs2_b1_val == 0
      - rs1_b1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006b0]:KSUB8 t6, t5, t4
      [0x800006b4]:sw t6, 216(ra)
 -- Signature Address: 0x800023e8 Data: 0x00FD0E7F
 -- Redundant Coverpoints hit by the op
      - opcode : ksub8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val == rs2_b3_val
      - rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val < 0 and rs2_b2_val < 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val < 0 and rs2_b1_val < 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val > 0 and rs2_b0_val < 0
      - rs2_b3_val == 16
      - rs2_b1_val == -17
      - rs1_b3_val == 16
      - rs1_b1_val == -3
      - rs1_b0_val == 127




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006c8]:KSUB8 t6, t5, t4
      [0x800006cc]:sw t6, 224(ra)
 -- Signature Address: 0x800023f0 Data: 0xF52AADFE
 -- Redundant Coverpoints hit by the op
      - opcode : ksub8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val < 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val > 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val
      - rs2_b3_val == 2
      - rs2_b2_val == 85
      - rs2_b1_val == 85
      - rs2_b0_val == 0
      - rs1_b3_val == -9
      - rs1_b2_val == 127
      - rs1_b1_val == 2
      - rs1_b0_val == -2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006e0]:KSUB8 t6, t5, t4
      [0x800006e4]:sw t6, 232(ra)
 -- Signature Address: 0x800023f8 Data: 0x0001DAFD
 -- Redundant Coverpoints hit by the op
      - opcode : ksub8
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val == rs2_b3_val
      - rs1_b3_val > 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val > 0 and rs2_b2_val > 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val < 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val > 0 and rs2_b0_val > 0
      - rs2_b1_val == 32
      - rs1_b2_val == 4
      - rs1_b0_val == 4






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

|s.no|        signature         |                                                                                                                                                                                                                                     coverpoints                                                                                                                                                                                                                                     |                                code                                 |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : ksub8<br> - rs1 : x27<br> - rs2 : x27<br> - rd : x27<br> - rs1 == rs2 == rd<br> - rs1_b3_val == rs2_b3_val<br> - rs1_b3_val < 0 and rs2_b3_val < 0<br> - rs1_b2_val == rs2_b2_val<br> - rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs1_b1_val == rs2_b1_val<br> - rs1_b1_val < 0 and rs2_b1_val < 0<br> - rs1_b0_val == rs2_b0_val<br> - rs1_b0_val < 0 and rs2_b0_val < 0<br> - rs2_b1_val == -3<br> - rs2_b0_val == -33<br> - rs1_b1_val == -3<br> - rs1_b0_val == -33<br> |[0x8000011c]:KSUB8 s11, s11, s11<br> [0x80000120]:sw s11, 0(a3)<br>  |
|   2|[0x80002218]<br>0x00000000|- rs1 : x20<br> - rs2 : x20<br> - rd : x3<br> - rs1 == rs2 != rd<br> - rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b2_val < 0 and rs2_b2_val < 0<br> - rs2_b3_val == 16<br> - rs2_b1_val == -17<br> - rs1_b3_val == 16<br> - rs1_b1_val == -17<br>                                                                                                                                                                                                                                   |[0x80000134]:KSUB8 gp, s4, s4<br> [0x80000138]:sw gp, 8(a3)<br>      |
|   3|[0x80002220]<br>0xF3FEF177|- rs1 : x22<br> - rs2 : x9<br> - rd : x15<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_b3_val != rs2_b3_val<br> - rs1_b3_val < 0 and rs2_b3_val > 0<br> - rs1_b2_val != rs2_b2_val<br> - rs1_b1_val != rs2_b1_val<br> - rs1_b1_val < 0 and rs2_b1_val > 0<br> - rs1_b0_val != rs2_b0_val<br> - rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b0_val == 8<br> - rs1_b2_val == 1<br> - rs1_b0_val == 127<br>                                                                  |[0x8000014c]:KSUB8 a5, s6, s1<br> [0x80000150]:sw a5, 16(a3)<br>     |
|   4|[0x80002228]<br>0xE011B1C7|- rs1 : x10<br> - rs2 : x21<br> - rd : x21<br> - rs2 == rd != rs1<br> - rs1_b2_val > 0 and rs2_b2_val < 0<br> - rs2_b3_val == -33<br> - rs2_b2_val == -1<br> - rs2_b0_val == 64<br> - rs1_b3_val == -65<br> - rs1_b2_val == 16<br> - rs1_b1_val == -86<br>                                                                                                                                                                                                                           |[0x80000164]:KSUB8 s5, a0, s5<br> [0x80000168]:sw s5, 24(a3)<br>     |
|   5|[0x80002230]<br>0x9F000800|- rs1 : x18<br> - rs2 : x19<br> - rd : x18<br> - rs1 == rd != rs2<br> - rs2_b3_val == 32<br> - rs2_b1_val == 0<br> - rs2_b0_val == 0<br> - rs1_b2_val == -1<br> - rs1_b1_val == 8<br> - rs1_b0_val == 0<br>                                                                                                                                                                                                                                                                          |[0x80000178]:KSUB8 s2, s2, s3<br> [0x8000017c]:sw s2, 32(a3)<br>     |
|   6|[0x80002238]<br>0x478002A7|- rs1 : x19<br> - rs2 : x8<br> - rd : x31<br> - rs1_b3_val > 0 and rs2_b3_val < 0<br> - rs1_b2_val < 0 and rs2_b2_val > 0<br> - rs1_b0_val < 0 and rs2_b0_val > 0<br> - rs2_b3_val == -65<br> - rs2_b2_val == 127<br> - rs2_b0_val == 85<br> - rs1_b1_val == -1<br>                                                                                                                                                                                                                  |[0x80000190]:KSUB8 t6, s3, fp<br> [0x80000194]:sw t6, 40(a3)<br>     |
|   7|[0x80002240]<br>0x01E10008|- rs1 : x1<br> - rs2 : x17<br> - rd : x10<br> - rs2_b3_val == -2<br> - rs2_b2_val == 32<br> - rs1_b3_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                   |[0x800001a8]:KSUB8 a0, ra, a7<br> [0x800001ac]:sw a0, 48(a3)<br>     |
|   8|[0x80002248]<br>0x00AC0706|- rs1 : x29<br> - rs2 : x18<br> - rd : x2<br> - rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs2_b2_val == -2<br> - rs2_b1_val == 1<br> - rs1_b2_val == -86<br> - rs1_b0_val == -1<br>                                                                                                                                                                                                                                                                                                    |[0x800001c0]:KSUB8 sp, t4, s2<br> [0x800001c4]:sw sp, 56(a3)<br>     |
|   9|[0x80002250]<br>0x52BEE60D|- rs1 : x25<br> - rs2 : x5<br> - rd : x11<br> - rs1_b0_val > 0 and rs2_b0_val < 0<br> - rs2_b3_val == -86<br> - rs2_b2_val == 2<br> - rs2_b1_val == 32<br>                                                                                                                                                                                                                                                                                                                           |[0x800001d8]:KSUB8 a1, s9, t0<br> [0x800001dc]:sw a1, 64(a3)<br>     |
|  10|[0x80002258]<br>0xAAFF0006|- rs1 : x17<br> - rs2 : x1<br> - rd : x14<br> - rs2_b3_val == 85<br> - rs1_b2_val == 8<br> - rs1_b0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                    |[0x800001f0]:KSUB8 a4, a7, ra<br> [0x800001f4]:sw a4, 72(a3)<br>     |
|  11|[0x80002260]<br>0x8742503D|- rs1 : x12<br> - rs2 : x10<br> - rd : x29<br> - rs1_b1_val > 0 and rs2_b1_val < 0<br> - rs2_b3_val == 127<br> - rs2_b2_val == -3<br> - rs2_b0_val == -65<br>                                                                                                                                                                                                                                                                                                                        |[0x80000208]:KSUB8 t4, a2, a0<br> [0x8000020c]:sw t4, 80(a3)<br>     |
|  12|[0x80002268]<br>0xD0FEBCC0|- rs1 : x8<br> - rs2 : x14<br> - rd : x9<br> - rs2_b3_val == -17<br> - rs2_b1_val == 4<br> - rs2_b0_val == -1<br> - rs1_b0_val == -65<br>                                                                                                                                                                                                                                                                                                                                            |[0x80000220]:KSUB8 s1, fp, a4<br> [0x80000224]:sw s1, 88(a3)<br>     |
|  13|[0x80002270]<br>0x89B47FFB|- rs1 : x2<br> - rs2 : x6<br> - rd : x16<br> - rs2_b3_val == -9<br> - rs2_b1_val == -1<br> - rs2_b0_val == 2<br> - rs1_b3_val == -128<br> - rs1_b1_val == 127<br> - rs1_b0_val == -3<br>                                                                                                                                                                                                                                                                                             |[0x80000238]:KSUB8 a6, sp, t1<br> [0x8000023c]:sw a6, 96(a3)<br>     |
|  14|[0x80002278]<br>0x0502C104|- rs1 : x0<br> - rs2 : x12<br> - rd : x6<br> - rs2_b3_val == -5<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br>                                                                                                                                                                                                                                                                                                                                                |[0x80000250]:KSUB8 t1, zero, a2<br> [0x80000254]:sw t1, 104(a3)<br>  |
|  15|[0x80002280]<br>0x04A60AC0|- rs1 : x15<br> - rs2 : x26<br> - rd : x28<br> - rs2_b3_val == -3<br> - rs2_b2_val == 4<br> - rs2_b0_val == 127<br> - rs1_b3_val == 1<br>                                                                                                                                                                                                                                                                                                                                            |[0x80000268]:KSUB8 t3, a5, s10<br> [0x8000026c]:sw t3, 112(a3)<br>   |
|  16|[0x80002288]<br>0x7A7FE1E3|- rs1 : x4<br> - rs2 : x7<br> - rd : x8<br> - rs2_b3_val == -128<br> - rs2_b1_val == -2<br> - rs1_b2_val == 127<br> - rs1_b1_val == -33<br>                                                                                                                                                                                                                                                                                                                                          |[0x80000280]:KSUB8 fp, tp, t2<br> [0x80000284]:sw fp, 120(a3)<br>    |
|  17|[0x80002290]<br>0xBBBE3F09|- rs1 : x7<br> - rs2 : x30<br> - rd : x12<br> - rs2_b3_val == 64<br> - rs2_b2_val == 64<br> - rs1_b3_val == -5<br> - rs1_b2_val == -2<br> - rs1_b1_val == 64<br>                                                                                                                                                                                                                                                                                                                     |[0x800002a0]:KSUB8 a2, t2, t5<br> [0x800002a4]:sw a2, 0(fp)<br>      |
|  18|[0x80002298]<br>0xEE082ABB|- rs1 : x26<br> - rs2 : x4<br> - rd : x22<br> - rs2_b3_val == 8<br> - rs2_b0_val == 4<br> - rs1_b1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                     |[0x800002b8]:KSUB8 s6, s10, tp<br> [0x800002bc]:sw s6, 8(fp)<br>     |
|  19|[0x800022a0]<br>0xF2880E01|- rs1 : x23<br> - rs2 : x3<br> - rd : x26<br> - rs2_b3_val == 4<br> - rs1_b1_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                            |[0x800002d0]:KSUB8 s10, s7, gp<br> [0x800002d4]:sw s10, 16(fp)<br>   |
|  20|[0x800022a8]<br>0x00000000|- rs1 : x14<br> - rs2 : x13<br> - rd : x0<br> - rs2_b3_val == 2<br> - rs2_b2_val == 85<br> - rs2_b1_val == 85<br> - rs1_b3_val == -9<br> - rs1_b1_val == 2<br>                                                                                                                                                                                                                                                                                                                       |[0x800002e8]:KSUB8 zero, a4, a3<br> [0x800002ec]:sw zero, 24(fp)<br> |
|  21|[0x800022b0]<br>0xA961FA03|- rs1 : x31<br> - rs2 : x23<br> - rd : x5<br> - rs2_b3_val == 1<br> - rs2_b2_val == -33<br> - rs1_b3_val == -86<br> - rs1_b2_val == 64<br>                                                                                                                                                                                                                                                                                                                                           |[0x80000300]:KSUB8 t0, t6, s7<br> [0x80000304]:sw t0, 32(fp)<br>     |
|  22|[0x800022b8]<br>0x010B3AE1|- rs1 : x16<br> - rs2 : x2<br> - rd : x4<br> - rs2_b3_val == 0<br> - rs2_b1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000318]:KSUB8 tp, a6, sp<br> [0x8000031c]:sw tp, 40(fp)<br>     |
|  23|[0x800022c0]<br>0xFE3D0601|- rs1 : x11<br> - rs2 : x15<br> - rd : x7<br> - rs2_b3_val == -1<br> - rs2_b1_val == -9<br> - rs1_b3_val == -3<br> - rs1_b0_val == 1<br>                                                                                                                                                                                                                                                                                                                                             |[0x80000330]:KSUB8 t2, a1, a5<br> [0x80000334]:sw t2, 48(fp)<br>     |
|  24|[0x800022c8]<br>0xBF5E5EFF|- rs1 : x24<br> - rs2 : x22<br> - rd : x23<br> - rs2_b2_val == -86<br> - rs2_b1_val == -86<br> - rs1_b3_val == -33<br> - rs1_b0_val == -5<br>                                                                                                                                                                                                                                                                                                                                        |[0x80000348]:KSUB8 s7, s8, s6<br> [0x8000034c]:sw s7, 56(fp)<br>     |
|  25|[0x800022d0]<br>0x7F615408|- rs1 : x13<br> - rs2 : x16<br> - rd : x24<br> - rs2_b2_val == -65<br> - rs1_b3_val == 127<br> - rs1_b2_val == 32<br> - rs1_b1_val == -2<br>                                                                                                                                                                                                                                                                                                                                         |[0x80000360]:KSUB8 s8, a3, a6<br> [0x80000364]:sw s8, 64(fp)<br>     |
|  26|[0x800022d8]<br>0x24BAFE00|- rs1 : x28<br> - rs2 : x31<br> - rd : x30<br> - rs1_b2_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000378]:KSUB8 t5, t3, t6<br> [0x8000037c]:sw t5, 72(fp)<br>     |
|  27|[0x800022e0]<br>0xF49FB650|- rs1 : x30<br> - rs2 : x28<br> - rd : x19<br> - rs1_b2_val == -33<br> - rs1_b1_val == -65<br> - rs1_b0_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                |[0x80000390]:KSUB8 s3, t5, t3<br> [0x80000394]:sw s3, 80(fp)<br>     |
|  28|[0x800022e8]<br>0x04450C0B|- rs1 : x6<br> - rs2 : x24<br> - rd : x1<br> - rs1_b3_val == 4<br> - rs1_b2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                           |[0x800003a8]:KSUB8 ra, t1, s8<br> [0x800003ac]:sw ra, 88(fp)<br>     |
|  29|[0x800022f0]<br>0xF1F11642|- rs1 : x5<br> - rs2 : x29<br> - rd : x20<br> - rs1_b2_val == -9<br> - rs1_b0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                           |[0x800003c0]:KSUB8 s4, t0, t4<br> [0x800003c4]:sw s4, 96(fp)<br>     |
|  30|[0x800022f8]<br>0xC6F8FC80|- rs1 : x9<br> - rs2 : x11<br> - rd : x25<br> - rs1_b2_val == -3<br> - rs1_b1_val == -5<br> - rs1_b0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                  |[0x800003d8]:KSUB8 s9, s1, a1<br> [0x800003dc]:sw s9, 104(fp)<br>    |
|  31|[0x80002300]<br>0xF88309FC|- rs1 : x3<br> - rs2 : x25<br> - rd : x17<br> - rs1_b3_val == -17<br> - rs1_b2_val == -128<br> - rs1_b1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                 |[0x800003f0]:KSUB8 a7, gp, s9<br> [0x800003f4]:sw a7, 112(fp)<br>    |
|  32|[0x80002308]<br>0x3F04FA04|- rs1 : x21<br> - rs2 : x0<br> - rd : x13<br> - rs2_b2_val == 0<br> - rs1_b2_val == 4<br> - rs1_b0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                      |[0x80000408]:KSUB8 a3, s5, zero<br> [0x8000040c]:sw a3, 120(fp)<br>  |
|  33|[0x80002310]<br>0xA80C100B|- rs2_b2_val == -5<br> - rs2_b1_val == -33<br> - rs2_b0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000428]:KSUB8 t6, t5, t4<br> [0x8000042c]:sw t6, 0(ra)<br>      |
|  34|[0x80002318]<br>0x38EA80FE|- rs2_b2_val == 16<br> - rs2_b1_val == 127<br> - rs2_b0_val == 1<br> - rs1_b1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000440]:KSUB8 t6, t5, t4<br> [0x80000444]:sw t6, 8(ra)<br>      |
|  35|[0x80002320]<br>0x7FAC80FE|- rs1_b1_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000458]:KSUB8 t6, t5, t4<br> [0x8000045c]:sw t6, 16(ra)<br>     |
|  36|[0x80002328]<br>0x213B19BB|- rs1_b1_val == 16<br> - rs1_b0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000470]:KSUB8 t6, t5, t4<br> [0x80000474]:sw t6, 24(ra)<br>     |
|  37|[0x80002338]<br>0x0702AF08|- rs2_b1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800004a0]:KSUB8 t6, t5, t4<br> [0x800004a4]:sw t6, 40(ra)<br>     |
|  38|[0x80002340]<br>0x45FC7B06|- rs2_b1_val == -128<br> - rs1_b0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800004b8]:KSUB8 t6, t5, t4<br> [0x800004bc]:sw t6, 48(ra)<br>     |
|  39|[0x80002348]<br>0x0C1EFF7C|- rs2_b1_val == 64<br> - rs1_b3_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800004d0]:KSUB8 t6, t5, t4<br> [0x800004d4]:sw t6, 56(ra)<br>     |
|  40|[0x80002350]<br>0x59F4E686|- rs2_b1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800004e8]:KSUB8 t6, t5, t4<br> [0x800004ec]:sw t6, 64(ra)<br>     |
|  41|[0x80002358]<br>0x80F9F300|- rs2_b2_val == 1<br> - rs2_b1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000500]:KSUB8 t6, t5, t4<br> [0x80000504]:sw t6, 72(ra)<br>     |
|  42|[0x80002360]<br>0x4840DDF8|- rs2_b1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000518]:KSUB8 t6, t5, t4<br> [0x8000051c]:sw t6, 80(ra)<br>     |
|  43|[0x80002368]<br>0x073BCF76|- rs2_b0_val == -86<br> - rs1_b0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000530]:KSUB8 t6, t5, t4<br> [0x80000534]:sw t6, 88(ra)<br>     |
|  44|[0x80002370]<br>0x017F0066|- rs2_b2_val == -128<br> - rs2_b0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000548]:KSUB8 t6, t5, t4<br> [0x8000054c]:sw t6, 96(ra)<br>     |
|  45|[0x80002378]<br>0x0EF7035E|- rs2_b0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000560]:KSUB8 t6, t5, t4<br> [0x80000564]:sw t6, 104(ra)<br>    |
|  46|[0x80002380]<br>0x38F2E8FA|- rs2_b0_val == -3<br> - rs1_b3_val == 64<br> - rs1_b0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000578]:KSUB8 t6, t5, t4<br> [0x8000057c]:sw t6, 112(ra)<br>    |
|  47|[0x80002388]<br>0x400E7BD9|- rs2_b0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000590]:KSUB8 t6, t5, t4<br> [0x80000594]:sw t6, 120(ra)<br>    |
|  48|[0x80002390]<br>0x80560D45|- rs2_b0_val == 16<br> - rs1_b2_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800005a8]:KSUB8 t6, t5, t4<br> [0x800005ac]:sw t6, 128(ra)<br>    |
|  49|[0x80002398]<br>0x765C4FFC|- rs1_b3_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800005c0]:KSUB8 t6, t5, t4<br> [0x800005c4]:sw t6, 136(ra)<br>    |
|  50|[0x800023a0]<br>0x807B807F|- rs1_b2_val == -5<br> - rs1_b0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800005d8]:KSUB8 t6, t5, t4<br> [0x800005dc]:sw t6, 144(ra)<br>    |
|  51|[0x800023a8]<br>0xC0D1A1C7|- rs2_b2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800005f0]:KSUB8 t6, t5, t4<br> [0x800005f4]:sw t6, 152(ra)<br>    |
|  52|[0x800023b0]<br>0x06ED7F77|- rs1_b3_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000608]:KSUB8 t6, t5, t4<br> [0x8000060c]:sw t6, 160(ra)<br>    |
|  53|[0x800023b8]<br>0x6000D0B4|- rs2_b2_val == -9<br> - rs1_b3_val == 32<br> - rs1_b0_val == -86<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000620]:KSUB8 t6, t5, t4<br> [0x80000624]:sw t6, 168(ra)<br>    |
|  54|[0x800023c0]<br>0x614DCF7F|- rs2_b0_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000638]:KSUB8 t6, t5, t4<br> [0x8000063c]:sw t6, 176(ra)<br>    |
|  55|[0x800023c8]<br>0xFE06870D|- rs1_b3_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000650]:KSUB8 t6, t5, t4<br> [0x80000654]:sw t6, 184(ra)<br>    |
|  56|[0x800023d0]<br>0x55F7EDFE|- rs2_b2_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000668]:KSUB8 t6, t5, t4<br> [0x8000066c]:sw t6, 192(ra)<br>    |
|  57|[0x800023d8]<br>0xA000C342|- rs2_b0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000680]:KSUB8 t6, t5, t4<br> [0x80000684]:sw t6, 200(ra)<br>    |
|  58|[0x800023e0]<br>0x0DF958A1|- rs1_b0_val == -128<br> - rs1_b2_val == 2<br> - rs1_b1_val == 85<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000698]:KSUB8 t6, t5, t4<br> [0x8000069c]:sw t6, 208(ra)<br>    |
