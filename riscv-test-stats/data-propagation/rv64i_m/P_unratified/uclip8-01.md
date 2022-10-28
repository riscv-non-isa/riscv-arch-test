
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000d20')]      |
| SIG_REGION                | [('0x80002210', '0x800025e0', '122 dwords')]      |
| COV_LABELS                | uclip8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/uclip8-01.S    |
| Total Number of coverpoints| 240     |
| Total Coverpoints Hit     | 235      |
| Total Signature Updates   | 61      |
| STAT1                     | 60      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cec]:UCLIP8 t6, t5, 2
      [0x80000cf0]:csrrs t5, vxsat, zero
      [0x80000cf4]:sd t6, 592(ra)
 -- Signature Address: 0x800025c0 Data: 0x0300000000030300
 -- Redundant Coverpoints hit by the op
      - opcode : uclip8
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - rs1_b0_val == 0
      - imm_val == 2
      - rs1_b7_val == 16
      - rs1_b6_val == 239
      - rs1_b5_val == 253
      - rs1_b4_val == 170
      - rs1_b3_val == 128






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

|s.no|            signature             |                                                                                                                     coverpoints                                                                                                                      |                                                    code                                                     |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000001|- opcode : uclip8<br> - rs1 : x26<br> - rd : x26<br> - rs1 == rd<br> - rs1_b0_val == 0<br> - imm_val == 0<br> - rs1_b7_val == 0<br> - rs1_b6_val == 8<br> - rs1_b5_val == 239<br> - rs1_b3_val == 2<br> - rs1_b2_val == 1<br> - rs1_b1_val == 247<br> |[0x800003bc]:UCLIP8 s10, s10, 0<br> [0x800003c0]:csrrs s10, vxsat, zero<br> [0x800003c4]:sd s10, 0(a3)<br>   |
|   2|[0x80002220]<br>0x0807000008022020|- rs1 : x9<br> - rd : x2<br> - rs1 != rd<br> - imm_val == 7<br> - rs1_b7_val == 8<br> - rs1_b5_val == 247<br> - rs1_b4_val == 128<br> - rs1_b3_val == 8<br> - rs1_b2_val == 2<br> - rs1_b1_val == 32<br> - rs1_b0_val == 32<br>                       |[0x800003e8]:UCLIP8 sp, s1, 7<br> [0x800003ec]:csrrs s1, vxsat, zero<br> [0x800003f0]:sd sp, 16(a3)<br>      |
|   3|[0x80002230]<br>0x0E08103F03010003|- rs1 : x20<br> - rd : x6<br> - imm_val == 6<br> - rs1_b5_val == 16<br> - rs1_b4_val == 85<br> - rs1_b1_val == 253<br>                                                                                                                                |[0x8000040c]:UCLIP8 t1, s4, 6<br> [0x80000410]:csrrs s4, vxsat, zero<br> [0x80000414]:sd t1, 32(a3)<br>      |
|   4|[0x80002240]<br>0x001F071F0F110009|- rs1 : x15<br> - rd : x10<br> - imm_val == 5<br> - rs1_b7_val == 239<br> - rs1_b6_val == 32<br> - rs1_b4_val == 64<br> - rs1_b1_val == 239<br>                                                                                                       |[0x80000438]:UCLIP8 a0, a5, 5<br> [0x8000043c]:csrrs a5, vxsat, zero<br> [0x80000440]:sd a0, 48(a3)<br>      |
|   5|[0x80002250]<br>0x0F0F0E0803050300|- rs1 : x19<br> - rd : x11<br> - imm_val == 4<br> - rs1_b7_val == 85<br> - rs1_b4_val == 8<br> - rs1_b0_val == 170<br>                                                                                                                                |[0x8000045c]:UCLIP8 a1, s3, 4<br> [0x80000460]:csrrs s3, vxsat, zero<br> [0x80000464]:sd a1, 64(a3)<br>      |
|   6|[0x80002260]<br>0x0707040001070604|- rs1 : x11<br> - rd : x4<br> - imm_val == 3<br> - rs1_b5_val == 4<br> - rs1_b3_val == 1<br> - rs1_b2_val == 64<br> - rs1_b0_val == 4<br>                                                                                                             |[0x80000480]:UCLIP8 tp, a1, 3<br> [0x80000484]:csrrs a1, vxsat, zero<br> [0x80000488]:sd tp, 80(a3)<br>      |
|   7|[0x80002270]<br>0x0000000000000000|- rs1 : x29<br> - rd : x0<br> - imm_val == 2<br> - rs1_b7_val == 16<br> - rs1_b6_val == 239<br> - rs1_b5_val == 253<br> - rs1_b4_val == 170<br> - rs1_b3_val == 128<br>                                                                               |[0x800004a4]:UCLIP8 zero, t4, 2<br> [0x800004a8]:csrrs t4, vxsat, zero<br> [0x800004ac]:sd zero, 96(a3)<br>  |
|   8|[0x80002280]<br>0x0101010101010100|- rs1 : x23<br> - rd : x27<br> - imm_val == 1<br> - rs1_b7_val == 1<br> - rs1_b6_val == 85<br> - rs1_b1_val == 64<br> - rs1_b0_val == 223<br>                                                                                                         |[0x800004c8]:UCLIP8 s11, s7, 1<br> [0x800004cc]:csrrs s7, vxsat, zero<br> [0x800004d0]:sd s11, 112(a3)<br>   |
|   9|[0x80002290]<br>0x000000100D000112|- rs1 : x25<br> - rd : x23<br> - rs1_b7_val == 170<br> - rs1_b6_val == 247<br> - rs1_b5_val == 254<br> - rs1_b4_val == 16<br> - rs1_b2_val == 128<br> - rs1_b1_val == 1<br>                                                                           |[0x800004ec]:UCLIP8 s7, s9, 7<br> [0x800004f0]:csrrs s9, vxsat, zero<br> [0x800004f4]:sd s7, 128(a3)<br>     |
|  10|[0x800022a0]<br>0x1F00000A11000005|- rs1 : x14<br> - rd : x29<br> - rs1_b7_val == 127<br> - rs1_b6_val == 253<br> - rs1_b5_val == 0<br> - rs1_b2_val == 247<br> - rs1_b1_val == 170<br>                                                                                                  |[0x80000518]:UCLIP8 t4, a4, 5<br> [0x8000051c]:csrrs a4, vxsat, zero<br> [0x80000520]:sd t4, 144(a3)<br>     |
|  11|[0x800022b0]<br>0x0000030000030000|- rs1 : x18<br> - rd : x15<br> - rs1_b7_val == 191<br> - rs1_b6_val == 0<br> - rs1_b4_val == 223<br> - rs1_b3_val == 191<br> - rs1_b0_val == 128<br>                                                                                                  |[0x80000544]:UCLIP8 a5, s2, 2<br> [0x80000548]:csrrs s2, vxsat, zero<br> [0x8000054c]:sd a5, 160(a3)<br>     |
|  12|[0x800022c0]<br>0x0007070707070707|- rs1 : x1<br> - rd : x7<br> - rs1_b7_val == 223<br>                                                                                                                                                                                                  |[0x80000570]:UCLIP8 t2, ra, 3<br> [0x80000574]:csrrs ra, vxsat, zero<br> [0x80000578]:sd t2, 176(a3)<br>     |
|  13|[0x800022d0]<br>0x0000000000000000|- rs1 : x0<br> - rd : x8<br> - rs1_b4_val == 0<br> - rs1_b3_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br>                                                                                                                                  |[0x80000594]:UCLIP8 fp, zero, 2<br> [0x80000598]:csrrs zero, vxsat, zero<br> [0x8000059c]:sd fp, 192(a3)<br> |
|  14|[0x800022e0]<br>0x0000000001030300|- rs1 : x12<br> - rd : x24<br> - rs1_b7_val == 251<br> - rs1_b6_val == 251<br> - rs1_b4_val == 247<br> - rs1_b0_val == 247<br>                                                                                                                        |[0x800005c0]:UCLIP8 s8, a2, 2<br> [0x800005c4]:csrrs a2, vxsat, zero<br> [0x800005c8]:sd s8, 208(a3)<br>     |
|  15|[0x800022f0]<br>0x000008001F0C0000|- rs1 : x2<br> - rd : x3<br> - rs1_b7_val == 253<br> - rs1_b5_val == 8<br> - rs1_b3_val == 127<br> - rs1_b0_val == 254<br>                                                                                                                            |[0x800005e4]:UCLIP8 gp, sp, 5<br> [0x800005e8]:csrrs sp, vxsat, zero<br> [0x800005ec]:sd gp, 224(a3)<br>     |
|  16|[0x80002300]<br>0x000000080F00000F|- rs1 : x7<br> - rd : x17<br> - rs1_b7_val == 254<br> - rs1_b1_val == 223<br> - rs1_b0_val == 127<br>                                                                                                                                                 |[0x80000608]:UCLIP8 a7, t2, 4<br> [0x8000060c]:csrrs t2, vxsat, zero<br> [0x80000610]:sd a7, 240(a3)<br>     |
|  17|[0x80002310]<br>0x0000000000000000|- rs1 : x3<br> - rd : x31<br> - rs1_b7_val == 128<br> - rs1_b3_val == 239<br> - rs1_b1_val == 251<br>                                                                                                                                                 |[0x80000634]:UCLIP8 t6, gp, 0<br> [0x80000638]:csrrs gp, vxsat, zero<br> [0x8000063c]:sd t6, 256(a3)<br>     |
|  18|[0x80002320]<br>0x0F000F0F030F080D|- rs1 : x4<br> - rd : x14<br> - rs1_b7_val == 64<br> - rs1_b6_val == 223<br> - rs1_b2_val == 32<br> - rs1_b1_val == 8<br>                                                                                                                             |[0x80000660]:UCLIP8 a4, tp, 4<br> [0x80000664]:csrrs tp, vxsat, zero<br> [0x80000668]:sd a4, 272(a3)<br>     |
|  19|[0x80002330]<br>0x0000000000000000|- rs1 : x28<br> - rd : x9<br> - rs1_b7_val == 32<br> - rs1_b2_val == 255<br> - rs1_b0_val == 85<br>                                                                                                                                                   |[0x8000068c]:UCLIP8 s1, t3, 0<br> [0x80000690]:csrrs t3, vxsat, zero<br> [0x80000694]:sd s1, 288(a3)<br>     |
|  20|[0x80002340]<br>0x0303030303030300|- rs1 : x22<br> - rd : x19<br> - rs1_b7_val == 4<br> - rs1_b2_val == 85<br> - rs1_b1_val == 4<br>                                                                                                                                                     |[0x800006b0]:UCLIP8 s3, s6, 2<br> [0x800006b4]:csrrs s6, vxsat, zero<br> [0x800006b8]:sd s3, 304(a3)<br>     |
|  21|[0x80002350]<br>0x021212110B0C1212|- rs1 : x24<br> - rd : x16<br> - rs1_b7_val == 2<br>                                                                                                                                                                                                  |[0x800006dc]:UCLIP8 a6, s8, 6<br> [0x800006e0]:csrrs s8, vxsat, zero<br> [0x800006e4]:sd a6, 320(a3)<br>     |
|  22|[0x80002360]<br>0x0000010100010100|- rs1 : x5<br> - rd : x1<br> - rs1_b7_val == 255<br> - rs1_b6_val == 191<br> - rs1_b3_val == 255<br>                                                                                                                                                  |[0x80000700]:UCLIP8 ra, t0, 1<br> [0x80000704]:csrrs t0, vxsat, zero<br> [0x80000708]:sd ra, 336(a3)<br>     |
|  23|[0x80002370]<br>0x0300030000030303|- rs1 : x10<br> - rd : x25<br> - rs1_b6_val == 170<br> - rs1_b5_val == 64<br> - rs1_b4_val == 254<br>                                                                                                                                                 |[0x8000072c]:UCLIP8 s9, a0, 2<br> [0x80000730]:csrrs a0, vxsat, zero<br> [0x80000734]:sd s9, 0(ra)<br>       |
|  24|[0x80002380]<br>0x007F0D5505091100|- rs1 : x30<br> - rd : x22<br> - rs1_b7_val == 247<br> - rs1_b6_val == 127<br>                                                                                                                                                                        |[0x80000758]:UCLIP8 s6, t5, 7<br> [0x8000075c]:csrrs t5, vxsat, zero<br> [0x80000760]:sd s6, 16(ra)<br>      |
|  25|[0x80002390]<br>0x0100000000010100|- rs1 : x17<br> - rd : x28<br> - rs1_b6_val == 254<br> - rs1_b5_val == 251<br> - rs1_b4_val == 255<br>                                                                                                                                                |[0x8000077c]:UCLIP8 t3, a7, 1<br> [0x80000780]:csrrs a7, vxsat, zero<br> [0x80000784]:sd t3, 32(ra)<br>      |
|  26|[0x800023a0]<br>0x0000010101010001|- rs1 : x16<br> - rd : x30<br> - rs1_b6_val == 128<br> - rs1_b2_val == 127<br>                                                                                                                                                                        |[0x800007a8]:UCLIP8 t5, a6, 1<br> [0x800007ac]:csrrs a6, vxsat, zero<br> [0x800007b0]:sd t5, 48(ra)<br>      |
|  27|[0x800023b0]<br>0x0203030303000303|- rs1 : x8<br> - rd : x12<br> - rs1_b6_val == 64<br> - rs1_b2_val == 191<br> - rs1_b1_val == 16<br>                                                                                                                                                   |[0x800007d4]:UCLIP8 a2, fp, 2<br> [0x800007d8]:csrrs fp, vxsat, zero<br> [0x800007dc]:sd a2, 64(ra)<br>      |
|  28|[0x800023c0]<br>0x0202070000000701|- rs1 : x21<br> - rd : x20<br> - rs1_b6_val == 2<br> - rs1_b4_val == 239<br> - rs1_b1_val == 85<br> - rs1_b0_val == 1<br>                                                                                                                             |[0x800007f8]:UCLIP8 s4, s5, 3<br> [0x800007fc]:csrrs s5, vxsat, zero<br> [0x80000800]:sd s4, 80(ra)<br>      |
|  29|[0x800023d0]<br>0x0C0000000B3F3F0A|- rs1 : x31<br> - rd : x21<br> - rs1_b1_val == 127<br>                                                                                                                                                                                                |[0x80000824]:UCLIP8 s5, t6, 6<br> [0x80000828]:csrrs t6, vxsat, zero<br> [0x8000082c]:sd s5, 96(ra)<br>      |
|  30|[0x800023e0]<br>0x0A1F0A1F10110000|- rs1 : x27<br> - rd : x18<br> - rs1_b3_val == 16<br> - rs1_b1_val == 191<br> - rs1_b0_val == 239<br>                                                                                                                                                 |[0x80000850]:UCLIP8 s2, s11, 5<br> [0x80000854]:csrrs s11, vxsat, zero<br> [0x80000858]:sd s2, 112(ra)<br>   |
|  31|[0x800023f0]<br>0x0000000000000000|- rs1 : x6<br> - rd : x5<br> - rs1_b6_val == 255<br> - rs1_b2_val == 4<br> - rs1_b1_val == 254<br>                                                                                                                                                    |[0x80000874]:UCLIP8 t0, t1, 0<br> [0x80000878]:csrrs t1, vxsat, zero<br> [0x8000087c]:sd t0, 128(ra)<br>     |
|  32|[0x80002400]<br>0x0E55000B00090008|- rs1 : x13<br> - rs1_b5_val == 128<br> - rs1_b3_val == 170<br> - rs1_b1_val == 128<br> - rs1_b0_val == 8<br>                                                                                                                                         |[0x800008a0]:UCLIP8 a6, a3, 7<br> [0x800008a4]:csrrs a3, vxsat, zero<br> [0x800008a8]:sd a6, 144(ra)<br>     |
|  33|[0x80002410]<br>0x000000000003020C|- rd : x13<br> - rs1_b5_val == 170<br> - rs1_b3_val == 223<br> - rs1_b1_val == 2<br>                                                                                                                                                                  |[0x800008c4]:UCLIP8 a3, s7, 7<br> [0x800008c8]:csrrs s7, vxsat, zero<br> [0x800008cc]:sd a3, 160(ra)<br>     |
|  34|[0x80002420]<br>0x0007070707000000|- rs1_b2_val == 251<br> - rs1_b1_val == 255<br> - rs1_b0_val == 251<br>                                                                                                                                                                               |[0x800008e8]:UCLIP8 t6, t5, 3<br> [0x800008ec]:csrrs t5, vxsat, zero<br> [0x800008f0]:sd t6, 176(ra)<br>     |
|  35|[0x80002430]<br>0x00000008057F0000|- rs1_b0_val == 191<br>                                                                                                                                                                                                                               |[0x80000914]:UCLIP8 t6, t5, 7<br> [0x80000918]:csrrs t5, vxsat, zero<br> [0x8000091c]:sd t6, 192(ra)<br>     |
|  36|[0x80002440]<br>0x0000030300030100|- rs1_b5_val == 85<br> - rs1_b0_val == 253<br>                                                                                                                                                                                                        |[0x80000938]:UCLIP8 t6, t5, 2<br> [0x8000093c]:csrrs t5, vxsat, zero<br> [0x80000940]:sd t6, 208(ra)<br>     |
|  37|[0x80002450]<br>0x0707070007070707|- rs1_b4_val == 191<br> - rs1_b0_val == 64<br>                                                                                                                                                                                                        |[0x80000964]:UCLIP8 t6, t5, 3<br> [0x80000968]:csrrs t5, vxsat, zero<br> [0x8000096c]:sd t6, 224(ra)<br>     |
|  38|[0x80002460]<br>0x0010001F00000C10|- rs1_b6_val == 16<br> - rs1_b5_val == 223<br> - rs1_b4_val == 127<br> - rs1_b2_val == 239<br> - rs1_b0_val == 16<br>                                                                                                                                 |[0x80000988]:UCLIP8 t6, t5, 5<br> [0x8000098c]:csrrs t5, vxsat, zero<br> [0x80000990]:sd t6, 240(ra)<br>     |
|  39|[0x80002470]<br>0x0000030303030302|- rs1_b3_val == 32<br> - rs1_b0_val == 2<br>                                                                                                                                                                                                          |[0x800009ac]:UCLIP8 t6, t5, 2<br> [0x800009b0]:csrrs t5, vxsat, zero<br> [0x800009b4]:sd t6, 256(ra)<br>     |
|  40|[0x80002480]<br>0x0F000200000D0E04|- rs1_b5_val == 2<br>                                                                                                                                                                                                                                 |[0x800009d8]:UCLIP8 t6, t5, 4<br> [0x800009dc]:csrrs t5, vxsat, zero<br> [0x800009e0]:sd t6, 272(ra)<br>     |
|  41|[0x80002490]<br>0x0703010007050007|- rs1_b5_val == 1<br>                                                                                                                                                                                                                                 |[0x80000a04]:UCLIP8 t6, t5, 3<br> [0x80000a08]:csrrs t5, vxsat, zero<br> [0x80000a0c]:sd t6, 288(ra)<br>     |
|  42|[0x800024a0]<br>0x0E0F000B0F000000|- rs1_b5_val == 255<br> - rs1_b2_val == 253<br>                                                                                                                                                                                                       |[0x80000a28]:UCLIP8 t6, t5, 4<br> [0x80000a2c]:csrrs t5, vxsat, zero<br> [0x80000a30]:sd t6, 304(ra)<br>     |
|  43|[0x800024b0]<br>0x00000D0002000000|- rs1_b4_val == 251<br> - rs1_b2_val == 254<br>                                                                                                                                                                                                       |[0x80000a4c]:UCLIP8 t6, t5, 5<br> [0x80000a50]:csrrs t5, vxsat, zero<br> [0x80000a54]:sd t6, 320(ra)<br>     |
|  44|[0x800024c0]<br>0x060F061F000A000E|- rs1_b4_val == 32<br>                                                                                                                                                                                                                                |[0x80000a70]:UCLIP8 t6, t5, 5<br> [0x80000a74]:csrrs t5, vxsat, zero<br> [0x80000a78]:sd t6, 336(ra)<br>     |
|  45|[0x800024d0]<br>0x1F000E0406000B04|- rs1_b4_val == 4<br>                                                                                                                                                                                                                                 |[0x80000a9c]:UCLIP8 t6, t5, 5<br> [0x80000aa0]:csrrs t5, vxsat, zero<br> [0x80000aa4]:sd t6, 352(ra)<br>     |
|  46|[0x800024e0]<br>0x0F00030209000001|- rs1_b4_val == 2<br>                                                                                                                                                                                                                                 |[0x80000ac0]:UCLIP8 t6, t5, 4<br> [0x80000ac4]:csrrs t5, vxsat, zero<br> [0x80000ac8]:sd t6, 368(ra)<br>     |
|  47|[0x800024f0]<br>0x0303030103000003|- rs1_b4_val == 1<br> - rs1_b3_val == 64<br>                                                                                                                                                                                                          |[0x80000ae4]:UCLIP8 t6, t5, 2<br> [0x80000ae8]:csrrs t5, vxsat, zero<br> [0x80000aec]:sd t6, 384(ra)<br>     |
|  48|[0x80002500]<br>0x0000070707040607|- rs1_b3_val == 85<br>                                                                                                                                                                                                                                |[0x80000b08]:UCLIP8 t6, t5, 3<br> [0x80000b0c]:csrrs t5, vxsat, zero<br> [0x80000b10]:sd t6, 400(ra)<br>     |
|  49|[0x80002510]<br>0x0A01001200030D01|- rs1_b6_val == 1<br> - rs1_b3_val == 251<br>                                                                                                                                                                                                         |[0x80000b34]:UCLIP8 t6, t5, 7<br> [0x80000b38]:csrrs t5, vxsat, zero<br> [0x80000b3c]:sd t6, 416(ra)<br>     |
|  50|[0x80002520]<br>0x000B060500103F01|- rs1_b3_val == 253<br> - rs1_b2_val == 16<br>                                                                                                                                                                                                        |[0x80000b58]:UCLIP8 t6, t5, 6<br> [0x80000b5c]:csrrs t5, vxsat, zero<br> [0x80000b60]:sd t6, 432(ra)<br>     |
|  51|[0x80002530]<br>0x0001000100000001|- rs1_b3_val == 254<br>                                                                                                                                                                                                                               |[0x80000b7c]:UCLIP8 t6, t5, 1<br> [0x80000b80]:csrrs t5, vxsat, zero<br> [0x80000b84]:sd t6, 448(ra)<br>     |
|  52|[0x80002540]<br>0x0303010303030300|- rs1_b0_val == 255<br>                                                                                                                                                                                                                               |[0x80000ba8]:UCLIP8 t6, t5, 2<br> [0x80000bac]:csrrs t5, vxsat, zero<br> [0x80000bb0]:sd t6, 464(ra)<br>     |
|  53|[0x80002550]<br>0x0000000000000000|- rs1_b5_val == 191<br> - rs1_b3_val == 4<br>                                                                                                                                                                                                         |[0x80000bd4]:UCLIP8 t6, t5, 0<br> [0x80000bd8]:csrrs t5, vxsat, zero<br> [0x80000bdc]:sd t6, 480(ra)<br>     |
|  54|[0x80002560]<br>0x0004110009001209|- rs1_b6_val == 4<br>                                                                                                                                                                                                                                 |[0x80000c00]:UCLIP8 t6, t5, 5<br> [0x80000c04]:csrrs t5, vxsat, zero<br> [0x80000c08]:sd t6, 496(ra)<br>     |
|  55|[0x80002570]<br>0x20040A0008000F06|- rs1_b2_val == 223<br>                                                                                                                                                                                                                               |[0x80000c2c]:UCLIP8 t6, t5, 6<br> [0x80000c30]:csrrs t5, vxsat, zero<br> [0x80000c34]:sd t6, 512(ra)<br>     |
|  56|[0x80002580]<br>0x0005000004000707|- rs1_b2_val == 170<br>                                                                                                                                                                                                                               |[0x80000c50]:UCLIP8 t6, t5, 3<br> [0x80000c54]:csrrs t5, vxsat, zero<br> [0x80000c58]:sd t6, 528(ra)<br>     |
|  57|[0x80002590]<br>0x0204120055080820|- rs1_b4_val == 253<br> - rs1_b2_val == 8<br>                                                                                                                                                                                                         |[0x80000c7c]:UCLIP8 t6, t5, 7<br> [0x80000c80]:csrrs t5, vxsat, zero<br> [0x80000c84]:sd t6, 544(ra)<br>     |
|  58|[0x800025a0]<br>0x0000030300030003|- rs1_b5_val == 32<br>                                                                                                                                                                                                                                |[0x80000ca0]:UCLIP8 t6, t5, 2<br> [0x80000ca4]:csrrs t5, vxsat, zero<br> [0x80000ca8]:sd t6, 560(ra)<br>     |
|  59|[0x800025b0]<br>0x0700000000010D00|- rs1_b3_val == 247<br>                                                                                                                                                                                                                               |[0x80000cc8]:UCLIP8 t6, t5, 4<br> [0x80000ccc]:csrrs t5, vxsat, zero<br> [0x80000cd0]:sd t6, 576(ra)<br>     |
|  60|[0x800025d0]<br>0x0003030003000003|- rs1_b5_val == 127<br>                                                                                                                                                                                                                               |[0x80000d10]:UCLIP8 t6, t5, 2<br> [0x80000d14]:csrrs t5, vxsat, zero<br> [0x80000d18]:sd t6, 608(ra)<br>     |
