
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000e00')]      |
| SIG_REGION                | [('0x80002210', '0x800026d0', '152 dwords')]      |
| COV_LABELS                | kslli16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kslli16-01.S    |
| Total Number of coverpoints| 232     |
| Total Coverpoints Hit     | 227      |
| Total Signature Updates   | 76      |
| STAT1                     | 74      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d58]:KSLLI16 t6, t5, 8
      [0x80000d5c]:csrrs t5, vxsat, zero
      [0x80000d60]:sd t6, 768(sp)
 -- Signature Address: 0x80002680 Data: 0x80007FFF00007FFF
 -- Redundant Coverpoints hit by the op
      - opcode : kslli16
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 8
      - rs1_h3_val == -257
      - rs1_h2_val == 512
      - rs1_h1_val == 0
      - rs1_h0_val == 1024




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000dc4]:KSLLI16 t6, t5, 13
      [0x80000dc8]:csrrs t5, vxsat, zero
      [0x80000dcc]:sd t6, 816(sp)
 -- Signature Address: 0x800026b0 Data: 0x80007FFF7FFF8000
 -- Redundant Coverpoints hit by the op
      - opcode : kslli16
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 13
      - rs1_h3_val == -8193
      - rs1_h2_val == 16384
      - rs1_h1_val == 16384
      - rs1_h0_val == -9






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

|s.no|            signature             |                                                                                         coverpoints                                                                                          |                                                     code                                                     |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000001|- opcode : kslli16<br> - rs1 : x6<br> - rd : x6<br> - rs1 == rd<br> - rs1_h0_val == -32768<br> - imm_val == 2<br> - rs1_h3_val == 16384<br> - rs1_h2_val == -32768<br> - rs1_h1_val == 64<br> |[0x800003b8]:KSLLI16 t1, t1, 2<br> [0x800003bc]:csrrs t1, vxsat, zero<br> [0x800003c0]:sd t1, 0(t0)<br>       |
|   2|[0x80002220]<br>0x8000800080007FFF|- rs1 : x24<br> - rd : x11<br> - rs1 != rd<br> - imm_val == 15<br> - rs1_h3_val == -129<br> - rs1_h2_val == -513<br> - rs1_h1_val == -129<br> - rs1_h0_val == 16<br>                          |[0x800003dc]:KSLLI16 a1, s8, 15<br> [0x800003e0]:csrrs s8, vxsat, zero<br> [0x800003e4]:sd a1, 16(t0)<br>     |
|   3|[0x80002230]<br>0x80007FFF80007FFF|- rs1 : x14<br> - rd : x30<br> - imm_val == 14<br> - rs1_h3_val == -21846<br> - rs1_h2_val == 32767<br> - rs1_h1_val == -2049<br> - rs1_h0_val == 512<br>                                     |[0x80000408]:KSLLI16 t5, a4, 14<br> [0x8000040c]:csrrs a4, vxsat, zero<br> [0x80000410]:sd t5, 32(t0)<br>     |
|   4|[0x80002240]<br>0x0000000000000000|- rs1 : x29<br> - rd : x0<br> - imm_val == 13<br> - rs1_h3_val == -8193<br> - rs1_h2_val == 16384<br> - rs1_h1_val == 16384<br> - rs1_h0_val == -9<br>                                        |[0x80000434]:KSLLI16 zero, t4, 13<br> [0x80000438]:csrrs t4, vxsat, zero<br> [0x8000043c]:sd zero, 48(t0)<br> |
|   5|[0x80002250]<br>0x6000000080007FFF|- rs1 : x27<br> - rd : x3<br> - imm_val == 12<br> - rs1_h2_val == 0<br> - rs1_h1_val == -17<br>                                                                                               |[0x80000458]:KSLLI16 gp, s11, 12<br> [0x8000045c]:csrrs s11, vxsat, zero<br> [0x80000460]:sd gp, 64(t0)<br>   |
|   6|[0x80002260]<br>0x80007FFFD8000000|- rs1 : x15<br> - rd : x9<br> - imm_val == 11<br> - rs1_h2_val == 8192<br> - rs1_h1_val == -5<br> - rs1_h0_val == 0<br>                                                                       |[0x80000478]:KSLLI16 s1, a5, 11<br> [0x8000047c]:csrrs a5, vxsat, zero<br> [0x80000480]:sd s1, 80(t0)<br>     |
|   7|[0x80002270]<br>0x00008000EC001800|- rs1 : x26<br> - rd : x7<br> - imm_val == 10<br> - rs1_h3_val == 0<br> - rs1_h2_val == -8193<br>                                                                                             |[0x80000498]:KSLLI16 t2, s10, 10<br> [0x8000049c]:csrrs s10, vxsat, zero<br> [0x800004a0]:sd t2, 96(t0)<br>   |
|   8|[0x80002280]<br>0x08007FFF1000EC00|- rs1 : x31<br> - rd : x2<br> - imm_val == 9<br> - rs1_h3_val == 4<br> - rs1_h2_val == 2048<br> - rs1_h1_val == 8<br>                                                                         |[0x800004b8]:KSLLI16 sp, t6, 9<br> [0x800004bc]:csrrs t6, vxsat, zero<br> [0x800004c0]:sd sp, 112(t0)<br>     |
|   9|[0x80002290]<br>0x7FFF080080000000|- rs1 : x28<br> - rd : x19<br> - imm_val == 8<br> - rs1_h2_val == 8<br> - rs1_h1_val == -8193<br>                                                                                             |[0x800004dc]:KSLLI16 s3, t3, 8<br> [0x800004e0]:csrrs t3, vxsat, zero<br> [0x800004e4]:sd s3, 128(t0)<br>     |
|  10|[0x800022a0]<br>0x038000807FFFFF00|- rs1 : x8<br> - rd : x31<br> - imm_val == 7<br> - rs1_h2_val == 1<br> - rs1_h0_val == -2<br>                                                                                                 |[0x800004f8]:KSLLI16 t6, fp, 7<br> [0x800004fc]:csrrs fp, vxsat, zero<br> [0x80000500]:sd t6, 144(t0)<br>     |
|  11|[0x800022b0]<br>0x0000000000000000|- rs1 : x0<br> - rd : x18<br> - imm_val == 6<br> - rs1_h1_val == 0<br>                                                                                                                        |[0x8000051c]:KSLLI16 s2, zero, 6<br> [0x80000520]:csrrs zero, vxsat, zero<br> [0x80000524]:sd s2, 160(t0)<br> |
|  12|[0x800022c0]<br>0x00E0FDE07FFF0040|- rs1 : x7<br> - rd : x21<br> - imm_val == 5<br> - rs1_h2_val == -17<br> - rs1_h1_val == 4096<br> - rs1_h0_val == 2<br>                                                                       |[0x80000538]:KSLLI16 s5, t2, 5<br> [0x8000053c]:csrrs t2, vxsat, zero<br> [0x80000540]:sd s5, 176(t0)<br>     |
|  13|[0x800022d0]<br>0x00407FFF00408000|- rs1 : x20<br> - rd : x27<br> - imm_val == 4<br> - rs1_h1_val == 4<br> - rs1_h0_val == -16385<br>                                                                                            |[0x80000558]:KSLLI16 s11, s4, 4<br> [0x8000055c]:csrrs s4, vxsat, zero<br> [0x80000560]:sd s11, 192(t0)<br>   |
|  14|[0x800022e0]<br>0xF7F802007FFFF7F8|- rs1 : x9<br> - rd : x20<br> - imm_val == 3<br> - rs1_h3_val == -257<br> - rs1_h2_val == 64<br> - rs1_h1_val == 21845<br> - rs1_h0_val == -257<br>                                           |[0x8000057c]:KSLLI16 s4, s1, 3<br> [0x80000580]:csrrs s1, vxsat, zero<br> [0x80000584]:sd s4, 208(t0)<br>     |
|  15|[0x800022f0]<br>0xFFFEF7FE8000000C|- rs1 : x17<br> - rd : x28<br> - imm_val == 1<br> - rs1_h3_val == -1<br> - rs1_h2_val == -1025<br> - rs1_h1_val == -32768<br>                                                                 |[0x80000598]:KSLLI16 t3, a7, 1<br> [0x8000059c]:csrrs a7, vxsat, zero<br> [0x800005a0]:sd t3, 224(t0)<br>     |
|  16|[0x80002300]<br>0xFFBFFFF9FFEF7FFF|- rs1 : x2<br> - rd : x14<br> - imm_val == 0<br> - rs1_h3_val == -65<br> - rs1_h0_val == 32767<br>                                                                                            |[0x800005bc]:KSLLI16 a4, sp, 0<br> [0x800005c0]:csrrs sp, vxsat, zero<br> [0x800005c4]:sd a4, 240(t0)<br>     |
|  17|[0x80002310]<br>0x7FFF80007FFFBFC0|- rs1 : x21<br> - rd : x4<br> - rs1_h3_val == 21845<br> - rs1_h2_val == -4097<br>                                                                                                             |[0x800005e8]:KSLLI16 tp, s5, 6<br> [0x800005ec]:csrrs s5, vxsat, zero<br> [0x800005f0]:sd tp, 256(t0)<br>     |
|  18|[0x80002320]<br>0x7FFF7FFF80000000|- rs1 : x11<br> - rd : x15<br> - rs1_h3_val == 32767<br> - rs1_h2_val == 256<br> - rs1_h1_val == -65<br>                                                                                      |[0x80000608]:KSLLI16 a5, a1, 15<br> [0x8000060c]:csrrs a1, vxsat, zero<br> [0x80000610]:sd a5, 272(t0)<br>    |
|  19|[0x80002330]<br>0x80007FFF7FFF8000|- rs1 : x25<br> - rd : x23<br> - rs1_h3_val == -16385<br> - rs1_h1_val == 1024<br> - rs1_h0_val == -513<br>                                                                                   |[0x8000062c]:KSLLI16 s7, s9, 11<br> [0x80000630]:csrrs s9, vxsat, zero<br> [0x80000634]:sd s7, 288(t0)<br>    |
|  20|[0x80002340]<br>0x8000FC00E400D800|- rs1 : x1<br> - rd : x25<br> - rs1_h3_val == -4097<br> - rs1_h2_val == -1<br>                                                                                                                |[0x8000064c]:KSLLI16 s9, ra, 10<br> [0x80000650]:csrrs ra, vxsat, zero<br> [0x80000654]:sd s9, 304(t0)<br>    |
|  21|[0x80002350]<br>0x800080007FFF8000|- rs1 : x23<br> - rd : x16<br> - rs1_h3_val == -2049<br> - rs1_h0_val == -5<br>                                                                                                               |[0x80000670]:KSLLI16 a6, s7, 15<br> [0x80000674]:csrrs s7, vxsat, zero<br> [0x80000678]:sd a6, 320(t0)<br>    |
|  22|[0x80002360]<br>0xBFF0FBF0FFB04000|- rs1 : x10<br> - rd : x8<br> - rs1_h3_val == -1025<br> - rs1_h2_val == -65<br> - rs1_h0_val == 1024<br>                                                                                      |[0x80000694]:KSLLI16 fp, a0, 4<br> [0x80000698]:csrrs a0, vxsat, zero<br> [0x8000069c]:sd fp, 336(t0)<br>     |
|  23|[0x80002370]<br>0xFDFFFFFDFFEFFFFF|- rs1 : x18<br> - rd : x12<br> - rs1_h3_val == -513<br> - rs1_h2_val == -3<br> - rs1_h0_val == -1<br>                                                                                         |[0x800006b8]:KSLLI16 a2, s2, 0<br> [0x800006bc]:csrrs s2, vxsat, zero<br> [0x800006c0]:sd a2, 352(t0)<br>     |
|  24|[0x80002380]<br>0xFDE0FFC004000800|- rs1 : x12<br> - rd : x5<br> - rs1_h3_val == -17<br> - rs1_h2_val == -2<br> - rs1_h1_val == 32<br> - rs1_h0_val == 64<br>                                                                    |[0x800006e4]:KSLLI16 t0, a2, 5<br> [0x800006e8]:csrrs a2, vxsat, zero<br> [0x800006ec]:sd t0, 0(sp)<br>       |
|  25|[0x80002390]<br>0xFFB87FFFFFB00018|- rs1 : x22<br> - rd : x10<br> - rs1_h3_val == -9<br>                                                                                                                                         |[0x80000708]:KSLLI16 a0, s6, 3<br> [0x8000070c]:csrrs s6, vxsat, zero<br> [0x80000710]:sd a0, 16(sp)<br>      |
|  26|[0x800023a0]<br>0xFFB0FEF000107FFF|- rs1 : x16<br> - rd : x13<br> - rs1_h3_val == -5<br> - rs1_h1_val == 1<br> - rs1_h0_val == 21845<br>                                                                                         |[0x8000072c]:KSLLI16 a3, a6, 4<br> [0x80000730]:csrrs a6, vxsat, zero<br> [0x80000734]:sd a3, 32(sp)<br>      |
|  27|[0x800023b0]<br>0xFFE80000DFF88000|- rs1 : x19<br> - rd : x24<br> - rs1_h3_val == -3<br> - rs1_h1_val == -1025<br> - rs1_h0_val == -8193<br>                                                                                     |[0x80000750]:KSLLI16 s8, s3, 3<br> [0x80000754]:csrrs s3, vxsat, zero<br> [0x80000758]:sd s8, 48(sp)<br>      |
|  28|[0x800023c0]<br>0xFFFC7FFFDFFEF7FE|- rs1 : x3<br> - rd : x22<br> - rs1_h3_val == -2<br> - rs1_h2_val == 21845<br> - rs1_h1_val == -4097<br> - rs1_h0_val == -1025<br>                                                            |[0x8000076c]:KSLLI16 s6, gp, 1<br> [0x80000770]:csrrs gp, vxsat, zero<br> [0x80000774]:sd s6, 64(sp)<br>      |
|  29|[0x800023d0]<br>0x80007FFF7FFF8000|- rs1 : x4<br> - rd : x1<br> - rs1_h3_val == -32768<br> - rs1_h2_val == 512<br> - rs1_h0_val == -3<br>                                                                                        |[0x80000798]:KSLLI16 ra, tp, 14<br> [0x8000079c]:csrrs tp, vxsat, zero<br> [0x800007a0]:sd ra, 80(sp)<br>     |
|  30|[0x800023e0]<br>0x7FFF024080000180|- rs1 : x13<br> - rd : x17<br> - rs1_h3_val == 8192<br> - rs1_h1_val == -21846<br>                                                                                                            |[0x800007c0]:KSLLI16 a7, a3, 6<br> [0x800007c4]:csrrs a3, vxsat, zero<br> [0x800007c8]:sd a7, 96(sp)<br>      |
|  31|[0x800023f0]<br>0x7FFF7FFF00088000|- rs1 : x5<br> - rd : x26<br> - rs1_h3_val == 4096<br> - rs1_h0_val == -4097<br>                                                                                                              |[0x800007e4]:KSLLI16 s10, t0, 3<br> [0x800007e8]:csrrs t0, vxsat, zero<br> [0x800007ec]:sd s10, 112(sp)<br>   |
|  32|[0x80002400]<br>0x8000FDC080008000|- rs1 : x30<br> - rd : x29<br> - rs1_h2_val == -9<br> - rs1_h0_val == -2049<br>                                                                                                               |[0x80000808]:KSLLI16 t4, t5, 6<br> [0x8000080c]:csrrs t5, vxsat, zero<br> [0x80000810]:sd t4, 128(sp)<br>     |
|  33|[0x80002410]<br>0x7FFF000080008000|- rs1_h3_val == 2<br> - rs1_h0_val == -129<br>                                                                                                                                                |[0x80000824]:KSLLI16 t6, t5, 15<br> [0x80000828]:csrrs t5, vxsat, zero<br> [0x8000082c]:sd t6, 144(sp)<br>    |
|  34|[0x80002420]<br>0x7FFF800080008000|- rs1_h2_val == -257<br> - rs1_h1_val == -16385<br> - rs1_h0_val == -65<br>                                                                                                                   |[0x80000840]:KSLLI16 t6, t5, 15<br> [0x80000844]:csrrs t5, vxsat, zero<br> [0x80000848]:sd t6, 160(sp)<br>    |
|  35|[0x80002430]<br>0x04000180FF40F7C0|- rs1_h3_val == 16<br> - rs1_h1_val == -3<br> - rs1_h0_val == -33<br>                                                                                                                         |[0x80000864]:KSLLI16 t6, t5, 6<br> [0x80000868]:csrrs t5, vxsat, zero<br> [0x8000086c]:sd t6, 176(sp)<br>     |
|  36|[0x80002440]<br>0x8000800080008000|- rs1_h0_val == -17<br>                                                                                                                                                                       |[0x80000888]:KSLLI16 t6, t5, 15<br> [0x8000088c]:csrrs t5, vxsat, zero<br> [0x80000890]:sd t6, 192(sp)<br>    |
|  37|[0x80002450]<br>0x7FFF7FFF7FFF7FFF|- rs1_h2_val == 2<br> - rs1_h0_val == 16384<br>                                                                                                                                               |[0x800008a8]:KSLLI16 t6, t5, 15<br> [0x800008ac]:csrrs t5, vxsat, zero<br> [0x800008b0]:sd t6, 208(sp)<br>    |
|  38|[0x80002460]<br>0x08007FFF80007FFF|- rs1_h0_val == 8192<br>                                                                                                                                                                      |[0x800008c8]:KSLLI16 t6, t5, 9<br> [0x800008cc]:csrrs t5, vxsat, zero<br> [0x800008d0]:sd t6, 224(sp)<br>     |
|  39|[0x80002470]<br>0xFFD8FFFC7FFF4000|- rs1_h0_val == 4096<br>                                                                                                                                                                      |[0x800008e8]:KSLLI16 t6, t5, 2<br> [0x800008ec]:csrrs t5, vxsat, zero<br> [0x800008f0]:sd t6, 240(sp)<br>     |
|  40|[0x80002480]<br>0xF20080000C007FFF|- rs1_h0_val == 2048<br>                                                                                                                                                                      |[0x8000090c]:KSLLI16 t6, t5, 9<br> [0x80000910]:csrrs t5, vxsat, zero<br> [0x80000914]:sd t6, 256(sp)<br>     |
|  41|[0x80002490]<br>0x0004FEFFFFFF0100|- rs1_h1_val == -1<br> - rs1_h0_val == 256<br>                                                                                                                                                |[0x8000092c]:KSLLI16 t6, t5, 0<br> [0x80000930]:csrrs t5, vxsat, zero<br> [0x80000934]:sd t6, 272(sp)<br>     |
|  42|[0x800024a0]<br>0x7FFFBFE0FF201000|- rs1_h0_val == 128<br>                                                                                                                                                                       |[0x80000950]:KSLLI16 t6, t5, 5<br> [0x80000954]:csrrs t5, vxsat, zero<br> [0x80000958]:sd t6, 288(sp)<br>     |
|  43|[0x800024b0]<br>0xF000800080004000|- rs1_h0_val == 32<br>                                                                                                                                                                        |[0x80000974]:KSLLI16 t6, t5, 9<br> [0x80000978]:csrrs t5, vxsat, zero<br> [0x8000097c]:sd t6, 304(sp)<br>     |
|  44|[0x800024c0]<br>0x7FFF7FFF80007FFF|- rs1_h3_val == 1024<br> - rs1_h0_val == 8<br>                                                                                                                                                |[0x80000998]:KSLLI16 t6, t5, 15<br> [0x8000099c]:csrrs t5, vxsat, zero<br> [0x800009a0]:sd t6, 320(sp)<br>    |
|  45|[0x800024d0]<br>0x7FFF600080007FFF|- rs1_h0_val == 4<br>                                                                                                                                                                         |[0x800009bc]:KSLLI16 t6, t5, 13<br> [0x800009c0]:csrrs t5, vxsat, zero<br> [0x800009c4]:sd t6, 336(sp)<br>    |
|  46|[0x800024e0]<br>0x0020FFD8FFF00008|- rs1_h2_val == -5<br> - rs1_h1_val == -2<br> - rs1_h0_val == 1<br>                                                                                                                           |[0x800009e0]:KSLLI16 t6, t5, 3<br> [0x800009e4]:csrrs t5, vxsat, zero<br> [0x800009e8]:sd t6, 352(sp)<br>     |
|  47|[0x800024f0]<br>0x1000FFF07FFF000C|- rs1_h3_val == 2048<br> - rs1_h1_val == 32767<br>                                                                                                                                            |[0x80000a04]:KSLLI16 t6, t5, 1<br> [0x80000a08]:csrrs t5, vxsat, zero<br> [0x80000a0c]:sd t6, 368(sp)<br>     |
|  48|[0x80002500]<br>0x7FFF7FFF80008000|- rs1_h3_val == 512<br>                                                                                                                                                                       |[0x80000a20]:KSLLI16 t6, t5, 14<br> [0x80000a24]:csrrs t5, vxsat, zero<br> [0x80000a28]:sd t6, 384(sp)<br>    |
|  49|[0x80002510]<br>0x800080007FFF8000|- rs1_h2_val == -33<br>                                                                                                                                                                       |[0x80000a3c]:KSLLI16 t6, t5, 13<br> [0x80000a40]:csrrs t5, vxsat, zero<br> [0x80000a44]:sd t6, 400(sp)<br>    |
|  50|[0x80002520]<br>0x00607FFF8000F7F0|- rs1_h2_val == 4096<br>                                                                                                                                                                      |[0x80000a58]:KSLLI16 t6, t5, 4<br> [0x80000a5c]:csrrs t5, vxsat, zero<br> [0x80000a60]:sd t6, 416(sp)<br>     |
|  51|[0x80002530]<br>0x80007FFF80007FFF|- rs1_h2_val == 1024<br>                                                                                                                                                                      |[0x80000a7c]:KSLLI16 t6, t5, 13<br> [0x80000a80]:csrrs t5, vxsat, zero<br> [0x80000a84]:sd t6, 432(sp)<br>    |
|  52|[0x80002540]<br>0x80007FFF0C00FE00|- rs1_h2_val == 128<br>                                                                                                                                                                       |[0x80000aa0]:KSLLI16 t6, t5, 9<br> [0x80000aa4]:csrrs t5, vxsat, zero<br> [0x80000aa8]:sd t6, 448(sp)<br>     |
|  53|[0x80002550]<br>0x080004000060FF60|- rs1_h3_val == 64<br> - rs1_h2_val == 32<br>                                                                                                                                                 |[0x80000ac4]:KSLLI16 t6, t5, 5<br> [0x80000ac8]:csrrs t5, vxsat, zero<br> [0x80000acc]:sd t6, 464(sp)<br>     |
|  54|[0x80002560]<br>0xF80010007FFFDF00|- rs1_h2_val == 16<br>                                                                                                                                                                        |[0x80000ae8]:KSLLI16 t6, t5, 8<br> [0x80000aec]:csrrs t5, vxsat, zero<br> [0x80000af0]:sd t6, 480(sp)<br>     |
|  55|[0x80002570]<br>0xFEFE0008FFECEFFE|- rs1_h2_val == 4<br>                                                                                                                                                                         |[0x80000b0c]:KSLLI16 t6, t5, 1<br> [0x80000b10]:csrrs t5, vxsat, zero<br> [0x80000b14]:sd t6, 496(sp)<br>     |
|  56|[0x80002580]<br>0x1000FF008000BF00|- rs1_h1_val == -513<br>                                                                                                                                                                      |[0x80000b28]:KSLLI16 t6, t5, 8<br> [0x80000b2c]:csrrs t5, vxsat, zero<br> [0x80000b30]:sd t6, 512(sp)<br>     |
|  57|[0x80002590]<br>0x7FFF800080001000|- rs1_h3_val == 32<br> - rs1_h1_val == -257<br>                                                                                                                                               |[0x80000b4c]:KSLLI16 t6, t5, 10<br> [0x80000b50]:csrrs t5, vxsat, zero<br> [0x80000b54]:sd t6, 528(sp)<br>    |
|  58|[0x800025a0]<br>0x04001000DF002000|- rs1_h1_val == -33<br>                                                                                                                                                                       |[0x80000b70]:KSLLI16 t6, t5, 8<br> [0x80000b74]:csrrs t5, vxsat, zero<br> [0x80000b78]:sd t6, 544(sp)<br>     |
|  59|[0x800025b0]<br>0x7FFF800080008000|- rs1_h3_val == 8<br> - rs1_h1_val == -9<br>                                                                                                                                                  |[0x80000b94]:KSLLI16 t6, t5, 15<br> [0x80000b98]:csrrs t5, vxsat, zero<br> [0x80000b9c]:sd t6, 560(sp)<br>    |
|  60|[0x800025c0]<br>0x80008000FE008000|- rs1_h2_val == -2049<br>                                                                                                                                                                     |[0x80000bb4]:KSLLI16 t6, t5, 7<br> [0x80000bb8]:csrrs t5, vxsat, zero<br> [0x80000bbc]:sd t6, 576(sp)<br>     |
|  61|[0x800025d0]<br>0x7FFF7FFF80007FFF|- rs1_h3_val == 256<br>                                                                                                                                                                       |[0x80000be0]:KSLLI16 t6, t5, 9<br> [0x80000be4]:csrrs t5, vxsat, zero<br> [0x80000be8]:sd t6, 592(sp)<br>     |
|  62|[0x800025e0]<br>0x7FFF7FFF7FFF7FFF|- rs1_h3_val == 128<br> - rs1_h1_val == 2048<br>                                                                                                                                              |[0x80000c04]:KSLLI16 t6, t5, 14<br> [0x80000c08]:csrrs t5, vxsat, zero<br> [0x80000c0c]:sd t6, 608(sp)<br>    |
|  63|[0x800025f0]<br>0xFFEFFFEF20000200|- rs1_h1_val == 8192<br>                                                                                                                                                                      |[0x80000c20]:KSLLI16 t6, t5, 0<br> [0x80000c24]:csrrs t5, vxsat, zero<br> [0x80000c28]:sd t6, 624(sp)<br>     |
|  64|[0x80002600]<br>0x7FFF80007FFF8000|- rs1_h1_val == 512<br>                                                                                                                                                                       |[0x80000c44]:KSLLI16 t6, t5, 15<br> [0x80000c48]:csrrs t5, vxsat, zero<br> [0x80000c4c]:sd t6, 640(sp)<br>    |
|  65|[0x80002610]<br>0x002000807FFF7FFF|- rs1_h3_val == 1<br>                                                                                                                                                                         |[0x80000c64]:KSLLI16 t6, t5, 5<br> [0x80000c68]:csrrs t5, vxsat, zero<br> [0x80000c6c]:sd t6, 656(sp)<br>     |
|  66|[0x80002620]<br>0x100080007FFFF780|- rs1_h1_val == 256<br>                                                                                                                                                                       |[0x80000c88]:KSLLI16 t6, t5, 7<br> [0x80000c8c]:csrrs t5, vxsat, zero<br> [0x80000c90]:sd t6, 672(sp)<br>     |
|  67|[0x80002630]<br>0x800080007FFF8000|- rs1_h1_val == 128<br>                                                                                                                                                                       |[0x80000cac]:KSLLI16 t6, t5, 15<br> [0x80000cb0]:csrrs t5, vxsat, zero<br> [0x80000cb4]:sd t6, 688(sp)<br>    |
|  68|[0x80002640]<br>0x7FFF8000F2000A00|- rs1_h2_val == -21846<br>                                                                                                                                                                    |[0x80000cd0]:KSLLI16 t6, t5, 9<br> [0x80000cd4]:csrrs t5, vxsat, zero<br> [0x80000cd8]:sd t6, 704(sp)<br>     |
|  69|[0x80002650]<br>0x80007FFF1000BF00|- rs1_h1_val == 16<br>                                                                                                                                                                        |[0x80000cf4]:KSLLI16 t6, t5, 8<br> [0x80000cf8]:csrrs t5, vxsat, zero<br> [0x80000cfc]:sd t6, 720(sp)<br>     |
|  70|[0x80002660]<br>0x0080800080007FFF|- rs1_h2_val == -16385<br>                                                                                                                                                                    |[0x80000d18]:KSLLI16 t6, t5, 4<br> [0x80000d1c]:csrrs t5, vxsat, zero<br> [0x80000d20]:sd t6, 736(sp)<br>     |
|  71|[0x80002670]<br>0x00127FFF0004FFFA|- rs1_h1_val == 2<br>                                                                                                                                                                         |[0x80000d3c]:KSLLI16 t6, t5, 1<br> [0x80000d40]:csrrs t5, vxsat, zero<br> [0x80000d44]:sd t6, 752(sp)<br>     |
|  72|[0x80002690]<br>0xFFD07FFF7FFF8000|- rs1_h0_val == -21846<br>                                                                                                                                                                    |[0x80000d7c]:KSLLI16 t6, t5, 4<br> [0x80000d80]:csrrs t5, vxsat, zero<br> [0x80000d84]:sd t6, 784(sp)<br>     |
|  73|[0x800026a0]<br>0x7FFFF7F080000010|- rs1_h2_val == -129<br>                                                                                                                                                                      |[0x80000d98]:KSLLI16 t6, t5, 4<br> [0x80000d9c]:csrrs t5, vxsat, zero<br> [0x80000da0]:sd t6, 800(sp)<br>     |
|  74|[0x800026c0]<br>0xF7C0FF007FFF8000|- rs1_h3_val == -33<br>                                                                                                                                                                       |[0x80000de8]:KSLLI16 t6, t5, 6<br> [0x80000dec]:csrrs t5, vxsat, zero<br> [0x80000df0]:sd t6, 832(sp)<br>     |
