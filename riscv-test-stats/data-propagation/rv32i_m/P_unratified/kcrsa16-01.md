
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800007c0')]      |
| SIG_REGION                | [('0x80002210', '0x80002460', '148 words')]      |
| COV_LABELS                | kcrsa16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/kcrsa16-01.S    |
| Total Number of coverpoints| 264     |
| Total Coverpoints Hit     | 258      |
| Total Signature Updates   | 74      |
| STAT1                     | 70      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005f4]:KCRSA16 t6, t5, t4
      [0x800005f8]:sw t6, 296(sp)
 -- Signature Address: 0x800023c0 Data: 0x00043FF9
 -- Redundant Coverpoints hit by the op
      - opcode : kcrsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs2_h0_val == 0
      - rs1_h1_val == 4




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000624]:KCRSA16 t6, t5, t4
      [0x80000628]:sw t6, 312(sp)
 -- Signature Address: 0x800023d0 Data: 0x555AFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : kcrsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == 21845
      - rs2_h0_val == -5
      - rs1_h1_val == 21845
      - rs1_h0_val == -21846




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000780]:KCRSA16 t6, t5, t4
      [0x80000784]:sw t6, 432(sp)
 -- Signature Address: 0x80002448 Data: 0x0005C000
 -- Redundant Coverpoints hit by the op
      - opcode : kcrsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val == rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h1_val == 1
      - rs1_h1_val == 1
      - rs1_h0_val == -16385




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000798]:KCRSA16 t6, t5, t4
      [0x8000079c]:sw t6, 440(sp)
 -- Signature Address: 0x80002450 Data: 0x00453FBE
 -- Redundant Coverpoints hit by the op
      - opcode : kcrsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h1_val == -65
      - rs2_h0_val == -5
      - rs1_h1_val == 64






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

|s.no|        signature         |                                                                                                                                                   coverpoints                                                                                                                                                    |                                 code                                  |
|---:|--------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x555B554F|- opcode : kcrsa16<br> - rs1 : x13<br> - rs2 : x13<br> - rd : x13<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h1_val == 21845<br> - rs1_h1_val == 21845<br>                    |[0x80000118]:KCRSA16 a3, a3, a3<br> [0x8000011c]:sw a3, 0(a4)<br>      |
|   2|[0x80002218]<br>0x0005FFFD|- rs1 : x8<br> - rs2 : x8<br> - rd : x31<br> - rs1 == rs2 != rd<br> - rs2_h1_val == 1<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                   |[0x80000130]:KCRSA16 t6, fp, fp<br> [0x80000134]:sw t6, 8(a4)<br>      |
|   3|[0x80002220]<br>0xAAEBCAAA|- rs1 : x16<br> - rs2 : x19<br> - rd : x2<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h1_val == -21846<br> - rs2_h0_val == -65<br> - rs1_h1_val == -21846<br> - rs1_h0_val == 8192<br> |[0x80000144]:KCRSA16 sp, a6, s3<br> [0x80000148]:sw sp, 16(a4)<br>     |
|   4|[0x80002228]<br>0x0000FE7E|- rs1 : x5<br> - rs2 : x25<br> - rd : x25<br> - rs2 == rd != rs1<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h1_val == -129<br> - rs2_h0_val == 4<br> - rs1_h1_val == 4<br> - rs1_h0_val == -257<br>                                 |[0x8000015c]:KCRSA16 s9, t0, s9<br> [0x80000160]:sw s9, 24(a4)<br>     |
|   5|[0x80002230]<br>0xFFF10008|- rs1 : x28<br> - rs2 : x2<br> - rd : x28<br> - rs1 == rd != rs2<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br>                                                                                                                                                              |[0x80000174]:KCRSA16 t3, t3, sp<br> [0x80000178]:sw t3, 32(a4)<br>     |
|   6|[0x80002238]<br>0xFF087FFF|- rs1 : x7<br> - rs2 : x9<br> - rd : x12<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 256<br> - rs1_h1_val == 8<br> - rs1_h0_val == 128<br>                                                                                                                                                                      |[0x8000018c]:KCRSA16 a2, t2, s1<br> [0x80000190]:sw a2, 40(a4)<br>     |
|   7|[0x80002240]<br>0x4555C007|- rs1 : x19<br> - rs2 : x6<br> - rd : x22<br> - rs2_h1_val == -16385<br> - rs2_h0_val == -21846<br> - rs1_h1_val == -4097<br> - rs1_h0_val == 8<br>                                                                                                                                                               |[0x800001a4]:KCRSA16 s6, s3, t1<br> [0x800001a8]:sw s6, 48(a4)<br>     |
|   8|[0x80002248]<br>0x00000000|- rs1 : x18<br> - rs2 : x23<br> - rd : x0<br> - rs2_h1_val == -8193<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                    |[0x800001bc]:KCRSA16 zero, s2, s7<br> [0x800001c0]:sw zero, 56(a4)<br> |
|   9|[0x80002250]<br>0x8000F01F|- rs1 : x9<br> - rs2 : x27<br> - rd : x11<br> - rs2_h1_val == -4097<br> - rs2_h0_val == 32767<br>                                                                                                                                                                                                                 |[0x800001d4]:KCRSA16 a1, s1, s11<br> [0x800001d8]:sw a1, 64(a4)<br>    |
|  10|[0x80002258]<br>0x0400F87F|- rs1 : x17<br> - rs2 : x28<br> - rd : x4<br> - rs2_h1_val == -2049<br> - rs2_h0_val == -1025<br> - rs1_h1_val == -1<br>                                                                                                                                                                                          |[0x800001ec]:KCRSA16 tp, a7, t3<br> [0x800001f0]:sw tp, 72(a4)<br>     |
|  11|[0x80002260]<br>0x40031BFF|- rs1 : x26<br> - rs2 : x29<br> - rd : x8<br> - rs2_h1_val == -1025<br> - rs2_h0_val == -16385<br> - rs1_h1_val == 2<br>                                                                                                                                                                                          |[0x80000200]:KCRSA16 fp, s10, t4<br> [0x80000204]:sw fp, 80(a4)<br>    |
|  12|[0x80002268]<br>0xBFFBFBFE|- rs1 : x25<br> - rs2 : x24<br> - rd : x30<br> - rs2_h1_val == -513<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                  |[0x80000218]:KCRSA16 t5, s9, s8<br> [0x8000021c]:sw t5, 88(a4)<br>     |
|  13|[0x80002270]<br>0xAA2A7EFE|- rs1 : x29<br> - rs2 : x18<br> - rd : x26<br> - rs2_h1_val == -257<br> - rs2_h0_val == 128<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                         |[0x80000230]:KCRSA16 s10, t4, s2<br> [0x80000234]:sw s10, 96(a4)<br>   |
|  14|[0x80002278]<br>0x0005FFBF|- rs1 : x0<br> - rs2 : x7<br> - rd : x3<br> - rs2_h1_val == -65<br> - rs2_h0_val == -5<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                            |[0x80000248]:KCRSA16 gp, zero, t2<br> [0x8000024c]:sw gp, 104(a4)<br>  |
|  15|[0x80002280]<br>0x00097FDE|- rs1 : x2<br> - rs2 : x30<br> - rd : x6<br> - rs2_h1_val == -33<br> - rs2_h0_val == -2<br>                                                                                                                                                                                                                       |[0x80000260]:KCRSA16 t1, sp, t5<br> [0x80000264]:sw t1, 112(a4)<br>    |
|  16|[0x80002288]<br>0xF008FFAE|- rs1 : x1<br> - rs2 : x12<br> - rd : x29<br> - rs2_h1_val == -17<br> - rs2_h0_val == 4096<br> - rs1_h0_val == -65<br>                                                                                                                                                                                            |[0x80000274]:KCRSA16 t4, ra, a2<br> [0x80000278]:sw t4, 120(a4)<br>    |
|  17|[0x80002290]<br>0x0204FFF6|- rs1 : x15<br> - rs2 : x31<br> - rd : x10<br> - rs2_h1_val == -9<br> - rs1_h1_val == 512<br> - rs1_h0_val == -1<br>                                                                                                                                                                                              |[0x8000028c]:KCRSA16 a0, a5, t6<br> [0x80000290]:sw a0, 128(a4)<br>    |
|  18|[0x80002298]<br>0x0005007B|- rs1 : x21<br> - rs2 : x5<br> - rd : x1<br> - rs2_h1_val == -5<br> - rs2_h0_val == 1<br>                                                                                                                                                                                                                         |[0x800002ac]:KCRSA16 ra, s5, t0<br> [0x800002b0]:sw ra, 0(sp)<br>      |
|  19|[0x800022a0]<br>0x4008FBFC|- rs1 : x4<br> - rs2 : x21<br> - rd : x16<br> - rs2_h1_val == -3<br> - rs1_h1_val == 16384<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                          |[0x800002c4]:KCRSA16 a6, tp, s5<br> [0x800002c8]:sw a6, 8(sp)<br>      |
|  20|[0x800022a8]<br>0x020AFFFC|- rs1 : x30<br> - rs2 : x15<br> - rd : x24<br> - rs2_h1_val == -2<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                      |[0x800002dc]:KCRSA16 s8, t5, a5<br> [0x800002e0]:sw s8, 16(sp)<br>     |
|  21|[0x800022b0]<br>0x1F00BFFF|- rs1 : x6<br> - rs2 : x17<br> - rd : x21<br> - rs2_h1_val == -32768<br> - rs2_h0_val == -8193<br> - rs1_h1_val == -257<br>                                                                                                                                                                                       |[0x800002f4]:KCRSA16 s5, t1, a7<br> [0x800002f8]:sw s5, 24(sp)<br>     |
|  22|[0x800022b8]<br>0xEFFB3EFF|- rs1 : x24<br> - rs2 : x14<br> - rd : x23<br> - rs2_h1_val == 16384<br>                                                                                                                                                                                                                                          |[0x8000030c]:KCRSA16 s7, s8, a4<br> [0x80000310]:sw s7, 32(sp)<br>     |
|  23|[0x800022c0]<br>0x00041FEF|- rs1 : x22<br> - rs2 : x16<br> - rd : x17<br> - rs2_h1_val == 8192<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                   |[0x80000320]:KCRSA16 a7, s6, a6<br> [0x80000324]:sw a7, 40(sp)<br>     |
|  24|[0x800022c8]<br>0xFEFA0FF8|- rs1 : x20<br> - rs2 : x26<br> - rd : x7<br> - rs2_h1_val == 4096<br>                                                                                                                                                                                                                                            |[0x80000338]:KCRSA16 t2, s4, s10<br> [0x8000033c]:sw t2, 48(sp)<br>    |
|  25|[0x800022d0]<br>0xBFEFB2AA|- rs1 : x23<br> - rs2 : x10<br> - rd : x9<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 16384<br> - rs1_h1_val == -17<br> - rs1_h0_val == -21846<br>                                                                                                                                                               |[0x8000034c]:KCRSA16 s1, s7, a0<br> [0x80000350]:sw s1, 56(sp)<br>     |
|  26|[0x800022d8]<br>0xFFE40C00|- rs1 : x11<br> - rs2 : x22<br> - rd : x15<br> - rs2_h1_val == 1024<br> - rs1_h1_val == -33<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                          |[0x80000364]:KCRSA16 a5, a1, s6<br> [0x80000368]:sw a5, 64(sp)<br>     |
|  27|[0x800022e0]<br>0x010701F9|- rs1 : x12<br> - rs2 : x11<br> - rd : x18<br> - rs2_h1_val == 512<br> - rs2_h0_val == -257<br>                                                                                                                                                                                                                   |[0x8000037c]:KCRSA16 s2, a2, a1<br> [0x80000380]:sw s2, 72(sp)<br>     |
|  28|[0x800022e8]<br>0x0E00007F|- rs1 : x31<br> - rs2 : x1<br> - rd : x20<br> - rs2_h1_val == 256<br> - rs2_h0_val == -4097<br> - rs1_h1_val == -513<br> - rs1_h0_val == -129<br>                                                                                                                                                                 |[0x80000394]:KCRSA16 s4, t6, ra<br> [0x80000398]:sw s4, 80(sp)<br>     |
|  29|[0x800022f0]<br>0xC201007F|- rs1 : x10<br> - rs2 : x3<br> - rd : x5<br> - rs2_h1_val == 128<br>                                                                                                                                                                                                                                              |[0x800003ac]:KCRSA16 t0, a0, gp<br> [0x800003b0]:sw t0, 88(sp)<br>     |
|  30|[0x800022f8]<br>0x0109003C|- rs1 : x14<br> - rs2 : x4<br> - rd : x27<br> - rs2_h1_val == 64<br> - rs2_h0_val == -9<br> - rs1_h1_val == 256<br>                                                                                                                                                                                               |[0x800003c4]:KCRSA16 s11, a4, tp<br> [0x800003c8]:sw s11, 96(sp)<br>   |
|  31|[0x80002300]<br>0x00010400|- rs1 : x3<br> - rs2 : x0<br> - rd : x14<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                 |[0x800003dc]:KCRSA16 a4, gp, zero<br> [0x800003e0]:sw a4, 104(sp)<br>  |
|  32|[0x80002308]<br>0x4006F80F|- rs1 : x27<br> - rs2 : x20<br> - rd : x19<br> - rs2_h1_val == 16<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                   |[0x800003f0]:KCRSA16 s3, s11, s4<br> [0x800003f4]:sw s3, 112(sp)<br>   |
|  33|[0x80002310]<br>0xFFF80FDF|- rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                           |[0x80000408]:KCRSA16 t6, t5, t4<br> [0x8000040c]:sw t6, 120(sp)<br>    |
|  34|[0x80002318]<br>0xA001EFF6|- rs1_h1_val == 8192<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                   |[0x80000420]:KCRSA16 t6, t5, t4<br> [0x80000424]:sw t6, 128(sp)<br>    |
|  35|[0x80002320]<br>0x01FFFFFF|- rs2_h1_val == 4<br> - rs2_h0_val == -513<br> - rs1_h1_val == -2<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                      |[0x80000438]:KCRSA16 t6, t5, t4<br> [0x8000043c]:sw t6, 136(sp)<br>    |
|  36|[0x80002328]<br>0xFFBB3FFC|- rs2_h0_val == 64<br> - rs1_h1_val == -5<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                              |[0x80000450]:KCRSA16 t6, t5, t4<br> [0x80000454]:sw t6, 144(sp)<br>    |
|  37|[0x80002330]<br>0x20000000|- rs2_h0_val == 8192<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                |[0x80000460]:KCRSA16 t6, t5, t4<br> [0x80000464]:sw t6, 152(sp)<br>    |
|  38|[0x80002338]<br>0xC0071006|- rs1_h1_val == -16385<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                               |[0x80000474]:KCRSA16 t6, t5, t4<br> [0x80000478]:sw t6, 160(sp)<br>    |
|  39|[0x80002340]<br>0x08000203|- rs2_h0_val == -2049<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                 |[0x8000048c]:KCRSA16 t6, t5, t4<br> [0x80000490]:sw t6, 168(sp)<br>    |
|  40|[0x80002348]<br>0xFDBF0100|- rs2_h0_val == 512<br> - rs1_h1_val == -65<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                           |[0x800004a0]:KCRSA16 t6, t5, t4<br> [0x800004a4]:sw t6, 176(sp)<br>    |
|  41|[0x80002350]<br>0xFFEF0042|- rs2_h1_val == 2<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                      |[0x800004b8]:KCRSA16 t6, t5, t4<br> [0x800004bc]:sw t6, 184(sp)<br>    |
|  42|[0x80002358]<br>0xAAEB5565|- rs2_h0_val == 21845<br> - rs1_h1_val == 64<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                           |[0x800004d0]:KCRSA16 t6, t5, t4<br> [0x800004d4]:sw t6, 192(sp)<br>    |
|  43|[0x80002360]<br>0x0004FF83|- rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                             |[0x800004e8]:KCRSA16 t6, t5, t4<br> [0x800004ec]:sw t6, 200(sp)<br>    |
|  44|[0x80002368]<br>0xF0050001|- rs2_h1_val == -1<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                      |[0x800004fc]:KCRSA16 t6, t5, t4<br> [0x80000500]:sw t6, 208(sp)<br>    |
|  45|[0x80002370]<br>0xAAB0C000|- rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                             |[0x80000514]:KCRSA16 t6, t5, t4<br> [0x80000518]:sw t6, 216(sp)<br>    |
|  46|[0x80002378]<br>0x00070400|- rs2_h0_val == -3<br>                                                                                                                                                                                                                                                                                            |[0x80000528]:KCRSA16 t6, t5, t4<br> [0x8000052c]:sw t6, 224(sp)<br>    |
|  47|[0x80002380]<br>0xBFF9F807|- rs2_h1_val == 8<br>                                                                                                                                                                                                                                                                                             |[0x80000540]:KCRSA16 t6, t5, t4<br> [0x80000544]:sw t6, 232(sp)<br>    |
|  48|[0x80002388]<br>0x7BFFC003|- rs2_h0_val == -32768<br> - rs1_h1_val == -1025<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                   |[0x80000554]:KCRSA16 t6, t5, t4<br> [0x80000558]:sw t6, 240(sp)<br>    |
|  49|[0x80002390]<br>0xF802FFFD|- rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                                          |[0x8000056c]:KCRSA16 t6, t5, t4<br> [0x80000570]:sw t6, 248(sp)<br>    |
|  50|[0x80002398]<br>0xFBFA8000|- rs1_h0_val == -32768<br> - rs2_h0_val == 1024<br>                                                                                                                                                                                                                                                               |[0x80000580]:KCRSA16 t6, t5, t4<br> [0x80000584]:sw t6, 256(sp)<br>    |
|  51|[0x800023a0]<br>0xFFD7FFFE|- rs2_h0_val == 32<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                     |[0x80000598]:KCRSA16 t6, t5, t4<br> [0x8000059c]:sw t6, 264(sp)<br>    |
|  52|[0x800023a8]<br>0x7FEFFE05|- rs2_h0_val == 16<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                  |[0x800005b0]:KCRSA16 t6, t5, t4<br> [0x800005b4]:sw t6, 272(sp)<br>    |
|  53|[0x800023b0]<br>0x3FF7FFFF|- rs2_h0_val == 8<br>                                                                                                                                                                                                                                                                                             |[0x800005c8]:KCRSA16 t6, t5, t4<br> [0x800005cc]:sw t6, 280(sp)<br>    |
|  54|[0x800023b8]<br>0x01FE0107|- rs2_h0_val == 2<br>                                                                                                                                                                                                                                                                                             |[0x800005e0]:KCRSA16 t6, t5, t4<br> [0x800005e4]:sw t6, 288(sp)<br>    |
|  55|[0x800023c8]<br>0x0007FFFE|- rs2_h0_val == -1<br>                                                                                                                                                                                                                                                                                            |[0x8000060c]:KCRSA16 t6, t5, t4<br> [0x80000610]:sw t6, 304(sp)<br>    |
|  56|[0x800023d8]<br>0xDFF80083|- rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                         |[0x8000063c]:KCRSA16 t6, t5, t4<br> [0x80000640]:sw t6, 320(sp)<br>    |
|  57|[0x800023e0]<br>0xF80803F6|- rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                         |[0x80000654]:KCRSA16 t6, t5, t4<br> [0x80000658]:sw t6, 328(sp)<br>    |
|  58|[0x800023e8]<br>0xFFC2EFF8|- rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                         |[0x8000066c]:KCRSA16 t6, t5, t4<br> [0x80000670]:sw t6, 336(sp)<br>    |
|  59|[0x800023f0]<br>0x0002FFF1|- rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                                            |[0x80000684]:KCRSA16 t6, t5, t4<br> [0x80000688]:sw t6, 344(sp)<br>    |
|  60|[0x800023f8]<br>0x12010001|- rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                          |[0x8000069c]:KCRSA16 t6, t5, t4<br> [0x800006a0]:sw t6, 352(sp)<br>    |
|  61|[0x80002400]<br>0x0821E00F|- rs2_h0_val == -33<br> - rs1_h1_val == 2048<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                        |[0x800006b4]:KCRSA16 t6, t5, t4<br> [0x800006b8]:sw t6, 360(sp)<br>    |
|  62|[0x80002408]<br>0xF400FBF9|- rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                          |[0x800006c8]:KCRSA16 t6, t5, t4<br> [0x800006cc]:sw t6, 368(sp)<br>    |
|  63|[0x80002410]<br>0x007BE001|- rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                           |[0x800006e0]:KCRSA16 t6, t5, t4<br> [0x800006e4]:sw t6, 376(sp)<br>    |
|  64|[0x80002418]<br>0x00255544|- rs1_h1_val == 32<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                  |[0x800006f8]:KCRSA16 t6, t5, t4<br> [0x800006fc]:sw t6, 384(sp)<br>    |
|  65|[0x80002420]<br>0xF010FFEC|- rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                            |[0x8000070c]:KCRSA16 t6, t5, t4<br> [0x80000710]:sw t6, 392(sp)<br>    |
|  66|[0x80002428]<br>0x7FFF8000|- rs2_h0_val == -129<br>                                                                                                                                                                                                                                                                                          |[0x80000724]:KCRSA16 t6, t5, t4<br> [0x80000728]:sw t6, 400(sp)<br>    |
|  67|[0x80002430]<br>0x0011FFC8|- rs2_h0_val == -17<br>                                                                                                                                                                                                                                                                                           |[0x8000073c]:KCRSA16 t6, t5, t4<br> [0x80000740]:sw t6, 408(sp)<br>    |
|  68|[0x80002438]<br>0x0780F6FE|- rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                          |[0x80000754]:KCRSA16 t6, t5, t4<br> [0x80000758]:sw t6, 416(sp)<br>    |
|  69|[0x80002440]<br>0x8006D555|- rs1_h1_val == -32768<br>                                                                                                                                                                                                                                                                                        |[0x80000768]:KCRSA16 t6, t5, t4<br> [0x8000076c]:sw t6, 424(sp)<br>    |
|  70|[0x80002458]<br>0xFFFE0420|- rs2_h1_val == 32<br>                                                                                                                                                                                                                                                                                            |[0x800007b0]:KCRSA16 t6, t5, t4<br> [0x800007b4]:sw t6, 448(sp)<br>    |
