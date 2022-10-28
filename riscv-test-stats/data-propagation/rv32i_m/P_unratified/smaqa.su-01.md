
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000740')]      |
| SIG_REGION                | [('0x80002210', '0x80002320', '68 words')]      |
| COV_LABELS                | smaqa.su      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/smaqa.su-01.S    |
| Total Number of coverpoints| 292     |
| Total Coverpoints Hit     | 286      |
| Total Signature Updates   | 66      |
| STAT1                     | 63      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004dc]:SMAQA_SU t6, t5, t4
      [0x800004e0]:sw t6, 28(ra)
 -- Signature Address: 0x800022b0 Data: 0xC0A9D4C9
 -- Redundant Coverpoints hit by the op
      - opcode : smaqa.su
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val > 0 and rs2_b2_val < 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val < 0 and rs2_b1_val < 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val > 0 and rs2_b0_val < 0
      - rs1_b3_val == 0
      - rs1_b1_val == -86
      - rs1_b0_val == 85




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000554]:SMAQA_SU t6, t5, t4
      [0x80000558]:sw t6, 48(ra)
 -- Signature Address: 0x800022c4 Data: 0xC0A9B2FC
 -- Redundant Coverpoints hit by the op
      - opcode : smaqa.su
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val > 0 and rs2_b3_val < 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val > 0 and rs2_b2_val < 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val < 0 and rs2_b0_val > 0
      - rs2_b1_val == 0
      - rs1_b3_val == 2
      - rs1_b2_val == 85
      - rs1_b1_val == 2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000734]:SMAQA_SU t6, t5, t4
      [0x80000738]:sw t6, 128(ra)
 -- Signature Address: 0x80002314 Data: 0xC0A8E2D5
 -- Redundant Coverpoints hit by the op
      - opcode : smaqa.su
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_b3_val != rs2_b3_val
      - rs1_b3_val < 0 and rs2_b3_val > 0
      - rs1_b2_val != rs2_b2_val
      - rs1_b2_val < 0 and rs2_b2_val < 0
      - rs1_b1_val != rs2_b1_val
      - rs1_b1_val < 0 and rs2_b1_val > 0
      - rs1_b0_val != rs2_b0_val
      - rs1_b0_val < 0 and rs2_b0_val > 0
      - rs2_b3_val == 85
      - rs2_b2_val == -86
      - rs1_b3_val == -86
      - rs1_b2_val == -5






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

|s.no|        signature         |                                                                                                                                                                                                            coverpoints                                                                                                                                                                                                            |                                  code                                  |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x013F0D00|- opcode : smaqa.su<br> - rs1 : x8<br> - rs2 : x8<br> - rd : x8<br> - rs1 == rs2 == rd<br> - rs1_b3_val == rs2_b3_val<br> - rs1_b3_val > 0 and rs2_b3_val > 0<br> - rs1_b2_val == rs2_b2_val<br> - rs1_b2_val > 0 and rs2_b2_val > 0<br> - rs1_b1_val == rs2_b1_val<br> - rs1_b1_val > 0 and rs2_b1_val > 0<br> - rs1_b0_val == rs2_b0_val<br> - rs1_b0_val < 0 and rs2_b0_val < 0<br> - rs2_b3_val == 1<br> - rs1_b3_val == 1<br> |[0x80000110]:SMAQA_SU fp, fp, fp<br> [0x80000114]:sw fp, 0(t2)<br>      |
|   2|[0x80002214]<br>0xDDB7C208|- rs1 : x3<br> - rs2 : x3<br> - rd : x28<br> - rs1 == rs2 != rd<br> - rs1_b2_val < 0 and rs2_b2_val < 0<br> - rs1_b0_val > 0 and rs2_b0_val > 0<br> - rs2_b3_val == 64<br> - rs2_b2_val == -128<br> - rs2_b1_val == 4<br> - rs2_b0_val == 85<br> - rs1_b3_val == 64<br> - rs1_b2_val == -128<br> - rs1_b1_val == 4<br> - rs1_b0_val == 85<br>                                                                                      |[0x80000128]:SMAQA_SU t3, gp, gp<br> [0x8000012c]:sw t3, 4(t2)<br>      |
|   3|[0x80002218]<br>0xDF570098|- rs1 : x5<br> - rs2 : x2<br> - rd : x18<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_b3_val != rs2_b3_val<br> - rs1_b3_val < 0 and rs2_b3_val > 0<br> - rs1_b2_val != rs2_b2_val<br> - rs1_b2_val < 0 and rs2_b2_val > 0<br> - rs1_b1_val != rs2_b1_val<br> - rs1_b1_val > 0 and rs2_b1_val < 0<br> - rs1_b0_val != rs2_b0_val<br> - rs2_b2_val == 8<br> - rs2_b1_val == -33<br> - rs2_b0_val == 0<br>                 |[0x80000140]:SMAQA_SU s2, t0, sp<br> [0x80000144]:sw s2, 8(t2)<br>      |
|   4|[0x8000221c]<br>0xFC088224|- rs1 : x17<br> - rs2 : x21<br> - rd : x21<br> - rs2 == rd != rs1<br> - rs1_b3_val < 0 and rs2_b3_val < 0<br> - rs2_b0_val == 4<br> - rs1_b3_val == -128<br> - rs1_b2_val == -65<br> - rs1_b0_val == 16<br>                                                                                                                                                                                                                        |[0x80000158]:SMAQA_SU s5, a7, s5<br> [0x8000015c]:sw s5, 12(t2)<br>     |
|   5|[0x80002220]<br>0x020001E0|- rs1 : x19<br> - rs2 : x17<br> - rd : x19<br> - rs1 == rd != rs2<br> - rs1_b3_val > 0 and rs2_b3_val < 0<br> - rs1_b1_val < 0 and rs2_b1_val > 0<br> - rs1_b0_val > 0 and rs2_b0_val < 0<br> - rs2_b3_val == -2<br> - rs2_b2_val == -2<br> - rs2_b0_val == -2<br> - rs1_b2_val == -1<br> - rs1_b0_val == 8<br>                                                                                                                    |[0x80000170]:SMAQA_SU s3, s3, a7<br> [0x80000174]:sw s3, 16(t2)<br>     |
|   6|[0x80002224]<br>0x76DF43FA|- rs1 : x13<br> - rs2 : x18<br> - rd : x26<br> - rs1_b2_val > 0 and rs2_b2_val < 0<br> - rs1_b1_val < 0 and rs2_b1_val < 0<br> - rs1_b0_val < 0 and rs2_b0_val > 0<br> - rs2_b1_val == -5<br> - rs1_b3_val == 16<br> - rs1_b2_val == 127<br> - rs1_b1_val == -128<br> - rs1_b0_val == -65<br>                                                                                                                                      |[0x80000188]:SMAQA_SU s10, a3, s2<br> [0x8000018c]:sw s10, 20(t2)<br>   |
|   7|[0x80002228]<br>0xDB7D215C|- rs1 : x28<br> - rs2 : x26<br> - rd : x24<br> - rs2_b3_val == -9<br> - rs2_b2_val == -5<br> - rs2_b1_val == 85<br> - rs1_b3_val == -86<br> - rs1_b1_val == 85<br> - rs1_b0_val == 4<br>                                                                                                                                                                                                                                           |[0x800001a0]:SMAQA_SU s8, t3, s10<br> [0x800001a4]:sw s8, 24(t2)<br>    |
|   8|[0x8000222c]<br>0x6DF5E5F0|- rs1 : x30<br> - rs2 : x25<br> - rd : x22<br> - rs2_b3_val == -5<br> - rs2_b1_val == -3<br> - rs1_b3_val == 2<br> - rs1_b1_val == 127<br>                                                                                                                                                                                                                                                                                         |[0x800001b8]:SMAQA_SU s6, t5, s9<br> [0x800001bc]:sw s6, 28(t2)<br>     |
|   9|[0x80002230]<br>0xFAB7FBB6|- rs1 : x0<br> - rs2 : x29<br> - rd : x15<br> - rs2_b3_val == -86<br> - rs2_b2_val == 4<br> - rs2_b0_val == 2<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br> - rs1_b0_val == 0<br>                                                                                                                                                                                                                          |[0x800001d0]:SMAQA_SU a5, zero, t4<br> [0x800001d4]:sw a5, 32(t2)<br>   |
|  10|[0x80002234]<br>0xAA04C0CF|- rs1 : x31<br> - rs2 : x12<br> - rd : x29<br> - rs2_b3_val == 85<br> - rs2_b2_val == 85<br> - rs2_b0_val == -128<br> - rs1_b0_val == -33<br>                                                                                                                                                                                                                                                                                      |[0x800001e8]:SMAQA_SU t4, t6, a2<br> [0x800001ec]:sw t4, 36(t2)<br>     |
|  11|[0x80002238]<br>0xB7D5F81C|- rs1 : x29<br> - rs2 : x11<br> - rd : x20<br> - rs2_b3_val == 127<br> - rs2_b2_val == -9<br> - rs2_b0_val == 32<br> - rs1_b1_val == 8<br> - rs1_b0_val == 64<br>                                                                                                                                                                                                                                                                  |[0x80000200]:SMAQA_SU s4, t4, a1<br> [0x80000204]:sw s4, 40(t2)<br>     |
|  12|[0x8000223c]<br>0xBFDDAF39|- rs1 : x26<br> - rs2 : x1<br> - rd : x4<br> - rs2_b3_val == -65<br> - rs2_b1_val == 8<br> - rs1_b1_val == -33<br> - rs1_b0_val == -5<br>                                                                                                                                                                                                                                                                                          |[0x80000218]:SMAQA_SU tp, s10, ra<br> [0x8000021c]:sw tp, 44(t2)<br>    |
|  13|[0x80002240]<br>0xB6FAFE9F|- rs1 : x2<br> - rs2 : x22<br> - rd : x23<br> - rs2_b3_val == -33<br> - rs2_b2_val == -86<br> - rs2_b0_val == -33<br> - rs1_b3_val == 127<br> - rs1_b2_val == -17<br> - rs1_b1_val == 2<br>                                                                                                                                                                                                                                        |[0x80000230]:SMAQA_SU s7, sp, s6<br> [0x80000234]:sw s7, 48(t2)<br>     |
|  14|[0x80002244]<br>0xADFF1425|- rs1 : x22<br> - rs2 : x6<br> - rd : x9<br> - rs2_b3_val == -17<br> - rs1_b2_val == 32<br> - rs1_b0_val == -1<br>                                                                                                                                                                                                                                                                                                                 |[0x80000248]:SMAQA_SU s1, s6, t1<br> [0x8000024c]:sw s1, 52(t2)<br>     |
|  15|[0x80002248]<br>0x7FEE9A1D|- rs1 : x23<br> - rs2 : x5<br> - rd : x2<br> - rs2_b3_val == -3<br> - rs2_b2_val == 2<br> - rs2_b1_val == -2<br> - rs1_b2_val == 16<br>                                                                                                                                                                                                                                                                                            |[0x80000260]:SMAQA_SU sp, s7, t0<br> [0x80000264]:sw sp, 56(t2)<br>     |
|  16|[0x8000224c]<br>0x00000000|- rs1 : x10<br> - rs2 : x4<br> - rd : x0<br> - rs2_b3_val == -128<br> - rs2_b1_val == -86<br> - rs1_b3_val == -9<br> - rs1_b2_val == -3<br>                                                                                                                                                                                                                                                                                        |[0x80000278]:SMAQA_SU zero, a0, tp<br> [0x8000027c]:sw zero, 60(t2)<br> |
|  17|[0x80002250]<br>0xFB07F03A|- rs1 : x1<br> - rs2 : x7<br> - rd : x25<br> - rs2_b3_val == 32<br> - rs2_b0_val == 8<br> - rs1_b2_val == -86<br> - rs1_b0_val == 1<br>                                                                                                                                                                                                                                                                                            |[0x80000298]:SMAQA_SU s9, ra, t2<br> [0x8000029c]:sw s9, 0(sp)<br>      |
|  18|[0x80002254]<br>0x55550626|- rs1 : x9<br> - rs2 : x27<br> - rd : x12<br> - rs2_b3_val == 16<br> - rs2_b0_val == 1<br> - rs1_b3_val == -5<br> - rs1_b1_val == -65<br>                                                                                                                                                                                                                                                                                          |[0x800002b0]:SMAQA_SU a2, s1, s11<br> [0x800002b4]:sw a2, 4(sp)<br>     |
|  19|[0x80002258]<br>0x7D5BD421|- rs1 : x18<br> - rs2 : x20<br> - rd : x16<br> - rs2_b3_val == 8<br> - rs2_b0_val == -86<br> - rs1_b2_val == -33<br> - rs1_b1_val == -2<br>                                                                                                                                                                                                                                                                                        |[0x800002c8]:SMAQA_SU a6, s2, s4<br> [0x800002cc]:sw a6, 8(sp)<br>      |
|  20|[0x8000225c]<br>0x107F908B|- rs1 : x6<br> - rs2 : x23<br> - rd : x13<br> - rs2_b3_val == 4<br> - rs2_b1_val == 64<br> - rs2_b0_val == -3<br> - rs1_b2_val == 8<br> - rs1_b1_val == 32<br>                                                                                                                                                                                                                                                                     |[0x800002dc]:SMAQA_SU a3, t1, s7<br> [0x800002e0]:sw a3, 12(sp)<br>     |
|  21|[0x80002260]<br>0x0307E1BC|- rs1 : x20<br> - rs2 : x14<br> - rd : x6<br> - rs2_b3_val == 2<br> - rs2_b1_val == 2<br> - rs1_b3_val == -1<br>                                                                                                                                                                                                                                                                                                                   |[0x800002f4]:SMAQA_SU t1, s4, a4<br> [0x800002f8]:sw t1, 16(sp)<br>     |
|  22|[0x80002264]<br>0x02BFB00C|- rs1 : x15<br> - rs2 : x28<br> - rd : x14<br> - rs2_b3_val == 0<br> - rs1_b3_val == 32<br>                                                                                                                                                                                                                                                                                                                                        |[0x8000030c]:SMAQA_SU a4, a5, t3<br> [0x80000310]:sw a4, 20(sp)<br>     |
|  23|[0x80002268]<br>0xFEFE13AB|- rs1 : x24<br> - rs2 : x16<br> - rd : x17<br> - rs2_b3_val == -1<br> - rs2_b1_val == -9<br> - rs1_b2_val == 85<br>                                                                                                                                                                                                                                                                                                                |[0x80000324]:SMAQA_SU a7, s8, a6<br> [0x80000328]:sw a7, 24(sp)<br>     |
|  24|[0x8000226c]<br>0x80A99351|- rs1 : x4<br> - rs2 : x15<br> - rd : x1<br> - rs2_b2_val == 127<br>                                                                                                                                                                                                                                                                                                                                                               |[0x8000033c]:SMAQA_SU ra, tp, a5<br> [0x80000340]:sw ra, 28(sp)<br>     |
|  25|[0x80002270]<br>0xF7FD88B9|- rs1 : x16<br> - rs2 : x24<br> - rd : x10<br> - rs1_b2_val == -9<br> - rs1_b1_val == 16<br>                                                                                                                                                                                                                                                                                                                                       |[0x80000354]:SMAQA_SU a0, a6, s8<br> [0x80000358]:sw a0, 32(sp)<br>     |
|  26|[0x80002274]<br>0x40800455|- rs1 : x27<br> - rs2 : x0<br> - rd : x3<br> - rs2_b2_val == 0<br> - rs2_b1_val == 0<br> - rs1_b2_val == -5<br>                                                                                                                                                                                                                                                                                                                    |[0x8000036c]:SMAQA_SU gp, s11, zero<br> [0x80000370]:sw gp, 36(sp)<br>  |
|  27|[0x80002278]<br>0x02C0873D|- rs1 : x12<br> - rs2 : x10<br> - rd : x30<br> - rs1_b2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                              |[0x80000384]:SMAQA_SU t5, a2, a0<br> [0x80000388]:sw t5, 40(sp)<br>     |
|  28|[0x8000227c]<br>0x2009B5E6|- rs1 : x11<br> - rs2 : x19<br> - rd : x7<br> - rs1_b2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                |[0x8000039c]:SMAQA_SU t2, a1, s3<br> [0x800003a0]:sw t2, 44(sp)<br>     |
|  29|[0x80002280]<br>0x06813774|- rs1 : x14<br> - rs2 : x30<br> - rd : x31<br> - rs1_b2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                               |[0x800003b4]:SMAQA_SU t6, a4, t5<br> [0x800003b8]:sw t6, 48(sp)<br>     |
|  30|[0x80002284]<br>0x0204E071|- rs1 : x21<br> - rs2 : x31<br> - rd : x11<br> - rs1_b3_val == -33<br> - rs1_b2_val == 1<br>                                                                                                                                                                                                                                                                                                                                       |[0x800003cc]:SMAQA_SU a1, s5, t6<br> [0x800003d0]:sw a1, 52(sp)<br>     |
|  31|[0x80002288]<br>0xAAFBFDB1|- rs1 : x7<br> - rs2 : x9<br> - rd : x27<br>                                                                                                                                                                                                                                                                                                                                                                                       |[0x800003e4]:SMAQA_SU s11, t2, s1<br> [0x800003e8]:sw s11, 56(sp)<br>   |
|  32|[0x8000228c]<br>0xFD02E8E2|- rs1 : x25<br> - rs2 : x13<br> - rd : x5<br> - rs2_b0_val == -65<br> - rs1_b1_val == -86<br>                                                                                                                                                                                                                                                                                                                                      |[0x800003fc]:SMAQA_SU t0, s9, a3<br> [0x80000400]:sw t0, 60(sp)<br>     |
|  33|[0x80002290]<br>0xC0AA323D|- rs2_b1_val == 1<br> - rs2_b0_val == -9<br> - rs1_b1_val == -17<br> - rs1_b0_val == -17<br>                                                                                                                                                                                                                                                                                                                                       |[0x80000414]:SMAQA_SU t6, t5, t4<br> [0x80000418]:sw t6, 64(sp)<br>     |
|  34|[0x80002294]<br>0xC0AA11CD|- rs1_b1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000434]:SMAQA_SU t6, t5, t4<br> [0x80000438]:sw t6, 0(ra)<br>      |
|  35|[0x80002298]<br>0xC0AA0D26|- rs1_b1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000044c]:SMAQA_SU t6, t5, t4<br> [0x80000450]:sw t6, 4(ra)<br>      |
|  36|[0x8000229c]<br>0xC0A979C4|- rs2_b2_val == -33<br> - rs2_b1_val == -17<br> - rs1_b1_val == -3<br> - rs1_b0_val == -86<br>                                                                                                                                                                                                                                                                                                                                     |[0x80000464]:SMAQA_SU t6, t5, t4<br> [0x80000468]:sw t6, 8(ra)<br>      |
|  37|[0x800022a0]<br>0xC0A9B62F|- rs2_b2_val == -17<br> - rs1_b1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000047c]:SMAQA_SU t6, t5, t4<br> [0x80000480]:sw t6, 12(ra)<br>     |
|  38|[0x800022a4]<br>0xC0A9B7DF|- rs2_b1_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000494]:SMAQA_SU t6, t5, t4<br> [0x80000498]:sw t6, 16(ra)<br>     |
|  39|[0x800022a8]<br>0xC0A9C766|- rs2_b0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800004ac]:SMAQA_SU t6, t5, t4<br> [0x800004b0]:sw t6, 20(ra)<br>     |
|  40|[0x800022ac]<br>0xC0A9CCF9|- rs1_b1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800004c4]:SMAQA_SU t6, t5, t4<br> [0x800004c8]:sw t6, 24(ra)<br>     |
|  41|[0x800022b4]<br>0xC0A9D623|- rs2_b2_val == -1<br> - rs2_b1_val == 32<br> - rs1_b3_val == -3<br>                                                                                                                                                                                                                                                                                                                                                               |[0x800004f4]:SMAQA_SU t6, t5, t4<br> [0x800004f8]:sw t6, 32(ra)<br>     |
|  42|[0x800022b8]<br>0xC0A9CF6D|- rs2_b2_val == 16<br> - rs2_b1_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000050c]:SMAQA_SU t6, t5, t4<br> [0x80000510]:sw t6, 36(ra)<br>     |
|  43|[0x800022bc]<br>0xC0A96376|- rs2_b1_val == -65<br> - rs1_b3_val == 85<br> - rs1_b0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                               |[0x80000524]:SMAQA_SU t6, t5, t4<br> [0x80000528]:sw t6, 40(ra)<br>     |
|  44|[0x800022c0]<br>0xC0A95E26|- rs2_b1_val == 16<br> - rs1_b3_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000053c]:SMAQA_SU t6, t5, t4<br> [0x80000540]:sw t6, 44(ra)<br>     |
|  45|[0x800022c8]<br>0xC0A95B64|- rs2_b1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000056c]:SMAQA_SU t6, t5, t4<br> [0x80000570]:sw t6, 52(ra)<br>     |
|  46|[0x800022cc]<br>0xC0A93308|- rs2_b0_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000584]:SMAQA_SU t6, t5, t4<br> [0x80000588]:sw t6, 56(ra)<br>     |
|  47|[0x800022d0]<br>0xC0A8C1F2|- rs2_b2_val == -3<br> - rs2_b0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000059c]:SMAQA_SU t6, t5, t4<br> [0x800005a0]:sw t6, 60(ra)<br>     |
|  48|[0x800022d4]<br>0xC0A8CA31|- rs1_b3_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800005b4]:SMAQA_SU t6, t5, t4<br> [0x800005b8]:sw t6, 64(ra)<br>     |
|  49|[0x800022d8]<br>0xC0A8ADC4|- rs2_b0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800005cc]:SMAQA_SU t6, t5, t4<br> [0x800005d0]:sw t6, 68(ra)<br>     |
|  50|[0x800022dc]<br>0xC0A898BE|- rs2_b0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800005e4]:SMAQA_SU t6, t5, t4<br> [0x800005e8]:sw t6, 72(ra)<br>     |
|  51|[0x800022e0]<br>0xC0A8DA7D|- rs1_b0_val == 127<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800005fc]:SMAQA_SU t6, t5, t4<br> [0x80000600]:sw t6, 76(ra)<br>     |
|  52|[0x800022e4]<br>0xC0A9163B|- rs2_b0_val == -1<br> - rs1_b1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000614]:SMAQA_SU t6, t5, t4<br> [0x80000618]:sw t6, 80(ra)<br>     |
|  53|[0x800022e8]<br>0xC0A91C63|- rs1_b0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x8000062c]:SMAQA_SU t6, t5, t4<br> [0x80000630]:sw t6, 84(ra)<br>     |
|  54|[0x800022ec]<br>0xC0A913BD|- rs1_b3_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000644]:SMAQA_SU t6, t5, t4<br> [0x80000648]:sw t6, 88(ra)<br>     |
|  55|[0x800022f0]<br>0xC0A91A8C|- rs2_b2_val == 32<br> - rs1_b0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000065c]:SMAQA_SU t6, t5, t4<br> [0x80000660]:sw t6, 92(ra)<br>     |
|  56|[0x800022f4]<br>0xC0A9A27C|- rs1_b0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000674]:SMAQA_SU t6, t5, t4<br> [0x80000678]:sw t6, 96(ra)<br>     |
|  57|[0x800022f8]<br>0xC0A99B7B|- rs2_b2_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x8000068c]:SMAQA_SU t6, t5, t4<br> [0x80000690]:sw t6, 100(ra)<br>    |
|  58|[0x800022fc]<br>0xC0A98849|- rs1_b0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800006a4]:SMAQA_SU t6, t5, t4<br> [0x800006a8]:sw t6, 104(ra)<br>    |
|  59|[0x80002300]<br>0xC0A979C7|- rs2_b2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800006bc]:SMAQA_SU t6, t5, t4<br> [0x800006c0]:sw t6, 108(ra)<br>    |
|  60|[0x80002304]<br>0xC0A97C3E|- rs2_b2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800006d4]:SMAQA_SU t6, t5, t4<br> [0x800006d8]:sw t6, 112(ra)<br>    |
|  61|[0x80002308]<br>0xC0A980A0|- rs1_b3_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800006ec]:SMAQA_SU t6, t5, t4<br> [0x800006f0]:sw t6, 116(ra)<br>    |
|  62|[0x8000230c]<br>0xC0A9152C|- rs1_b0_val == -128<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000704]:SMAQA_SU t6, t5, t4<br> [0x80000708]:sw t6, 120(ra)<br>    |
|  63|[0x80002310]<br>0xC0A90318|- rs1_b3_val == -17<br> - rs1_b2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000071c]:SMAQA_SU t6, t5, t4<br> [0x80000720]:sw t6, 124(ra)<br>    |
