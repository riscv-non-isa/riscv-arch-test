
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000d10')]      |
| SIG_REGION                | [('0x80002210', '0x800025d0', '120 dwords')]      |
| COV_LABELS                | kslli8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kslli8-01.S    |
| Total Number of coverpoints| 240     |
| Total Coverpoints Hit     | 235      |
| Total Signature Updates   | 60      |
| STAT1                     | 58      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000990]:KSLLI8 t6, t5, 2
      [0x80000994]:csrrs t5, vxsat, zero
      [0x80000998]:sd t6, 256(gp)
 -- Signature Address: 0x80002460 Data: 0x80F400D81880F00C
 -- Redundant Coverpoints hit by the op
      - opcode : kslli8
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 2
      - rs1_b7_val == -128
      - rs1_b6_val == -3
      - rs1_b5_val == 0
      - rs1_b2_val == -86




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cfc]:KSLLI8 t6, t5, 6
      [0x80000d00]:csrrs t5, vxsat, zero
      [0x80000d04]:sd t6, 608(gp)
 -- Signature Address: 0x800025c0 Data: 0x7F7F8080407F7F80
 -- Redundant Coverpoints hit by the op
      - opcode : kslli8
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 6
      - rs1_b5_val == -128
      - rs1_b3_val == 1
      - rs1_b1_val == 8






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

|s.no|            signature             |                                                                                                 coverpoints                                                                                                  |                                                    code                                                     |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000001|- opcode : kslli8<br> - rs1 : x18<br> - rd : x18<br> - rs1 == rd<br> - rs1_b0_val == -128<br> - imm_val == 2<br> - rs1_b6_val == -33<br> - rs1_b5_val == 64<br> - rs1_b4_val == -9<br> - rs1_b1_val == -1<br> |[0x800003bc]:KSLLI8 s2, s2, 2<br> [0x800003c0]:csrrs s2, vxsat, zero<br> [0x800003c4]:sd s2, 0(s3)<br>       |
|   2|[0x80002220]<br>0x7F807F0080807F7F|- rs1 : x9<br> - rd : x16<br> - rs1 != rd<br> - imm_val == 7<br> - rs1_b5_val == 4<br> - rs1_b4_val == 0<br> - rs1_b1_val == 1<br>                                                                            |[0x800003e0]:KSLLI8 a6, s1, 7<br> [0x800003e4]:csrrs s1, vxsat, zero<br> [0x800003e8]:sd a6, 16(s3)<br>      |
|   3|[0x80002230]<br>0x807F7F8080807F7F|- rs1 : x25<br> - rd : x20<br> - imm_val == 6<br> - rs1_b5_val == 127<br> - rs1_b4_val == -86<br> - rs1_b3_val == -9<br> - rs1_b1_val == 32<br>                                                               |[0x80000404]:KSLLI8 s4, s9, 6<br> [0x80000408]:csrrs s9, vxsat, zero<br> [0x8000040c]:sd s4, 32(s3)<br>      |
|   4|[0x80002240]<br>0x00A07F807F7F7F80|- rs1 : x24<br> - rd : x15<br> - imm_val == 5<br> - rs1_b7_val == 0<br> - rs1_b6_val == -3<br> - rs1_b4_val == -128<br> - rs1_b3_val == 8<br>                                                                 |[0x80000428]:KSLLI8 a5, s8, 5<br> [0x8000042c]:csrrs s8, vxsat, zero<br> [0x80000430]:sd a5, 48(s3)<br>      |
|   5|[0x80002250]<br>0x907FA07F7F803030|- rs1 : x30<br> - rd : x4<br> - imm_val == 4<br> - rs1_b6_val == 8<br> - rs1_b4_val == 85<br> - rs1_b3_val == 85<br> - rs1_b2_val == -128<br>                                                                 |[0x8000044c]:KSLLI8 tp, t5, 4<br> [0x80000450]:csrrs t5, vxsat, zero<br> [0x80000454]:sd tp, 64(s3)<br>      |
|   6|[0x80002260]<br>0x8008307F7F408080|- rs1 : x6<br> - rd : x21<br> - imm_val == 3<br> - rs1_b7_val == -17<br> - rs1_b6_val == 1<br> - rs1_b3_val == 64<br> - rs1_b2_val == 8<br> - rs1_b1_val == -17<br>                                           |[0x80000470]:KSLLI8 s5, t1, 3<br> [0x80000474]:csrrs t1, vxsat, zero<br> [0x80000478]:sd s5, 80(s3)<br>      |
|   7|[0x80002270]<br>0xF680FABE008080FE|- rs1 : x20<br> - rd : x6<br> - imm_val == 1<br> - rs1_b7_val == -5<br> - rs1_b6_val == -128<br> - rs1_b5_val == -3<br> - rs1_b4_val == -33<br> - rs1_b3_val == 0<br> - rs1_b0_val == -1<br>                  |[0x80000494]:KSLLI8 t1, s4, 1<br> [0x80000498]:csrrs s4, vxsat, zero<br> [0x8000049c]:sd t1, 96(s3)<br>      |
|   8|[0x80002280]<br>0xFF03408020FC10FB|- rs1 : x17<br> - rd : x3<br> - imm_val == 0<br> - rs1_b7_val == -1<br> - rs1_b3_val == 32<br> - rs1_b1_val == 16<br> - rs1_b0_val == -5<br>                                                                  |[0x800004c0]:KSLLI8 gp, a7, 0<br> [0x800004c4]:csrrs a7, vxsat, zero<br> [0x800004c8]:sd gp, 112(s3)<br>     |
|   9|[0x80002290]<br>0x8080609080E07FA0|- rs1 : x3<br> - rd : x25<br> - rs1_b7_val == -86<br> - rs1_b6_val == -17<br> - rs1_b2_val == -2<br>                                                                                                          |[0x800004ec]:KSLLI8 s9, gp, 4<br> [0x800004f0]:csrrs gp, vxsat, zero<br> [0x800004f4]:sd s9, 128(s3)<br>     |
|  10|[0x800022a0]<br>0x7F7F06F8F4801200|- rs1 : x10<br> - rd : x1<br> - rs1_b7_val == 85<br> - rs1_b6_val == 85<br> - rs1_b2_val == -86<br> - rs1_b0_val == 0<br>                                                                                     |[0x80000518]:KSLLI8 ra, a0, 1<br> [0x8000051c]:csrrs a0, vxsat, zero<br> [0x80000520]:sd ra, 144(s3)<br>     |
|  11|[0x800022b0]<br>0x0000000000000000|- rs1 : x0<br> - rd : x24<br> - rs1_b6_val == 0<br> - rs1_b5_val == 0<br> - rs1_b2_val == 0<br> - rs1_b1_val == 0<br>                                                                                         |[0x80000544]:KSLLI8 s8, zero, 5<br> [0x80000548]:csrrs zero, vxsat, zero<br> [0x8000054c]:sd s8, 160(s3)<br> |
|  12|[0x800022c0]<br>0x808080E0E0188004|- rs1 : x12<br> - rd : x8<br> - rs1_b7_val == -65<br> - rs1_b0_val == 1<br>                                                                                                                                   |[0x80000570]:KSLLI8 fp, a2, 2<br> [0x80000574]:csrrs a2, vxsat, zero<br> [0x80000578]:sd fp, 176(s3)<br>     |
|  13|[0x800022d0]<br>0x8080807F8080807F|- rs1 : x31<br> - rd : x14<br> - rs1_b7_val == -33<br> - rs1_b5_val == -17<br> - rs1_b4_val == 8<br> - rs1_b3_val == -33<br> - rs1_b0_val == 4<br>                                                            |[0x8000059c]:KSLLI8 a4, t6, 5<br> [0x800005a0]:csrrs t6, vxsat, zero<br> [0x800005a4]:sd a4, 192(s3)<br>     |
|  14|[0x800022e0]<br>0xDC7F808010088080|- rs1 : x27<br> - rd : x30<br> - rs1_b7_val == -9<br> - rs1_b6_val == 127<br> - rs1_b5_val == -86<br> - rs1_b4_val == -65<br> - rs1_b3_val == 4<br> - rs1_b2_val == 2<br> - rs1_b1_val == -65<br>             |[0x800005c8]:KSLLI8 t5, s11, 2<br> [0x800005cc]:csrrs s11, vxsat, zero<br> [0x800005d0]:sd t5, 208(s3)<br>   |
|  15|[0x800022f0]<br>0xFDBF80FD10F901F7|- rs1 : x2<br> - rd : x29<br> - rs1_b7_val == -3<br> - rs1_b6_val == -65<br> - rs1_b5_val == -128<br> - rs1_b4_val == -3<br> - rs1_b3_val == 16<br> - rs1_b0_val == -9<br>                                    |[0x800005ec]:KSLLI8 t4, sp, 0<br> [0x800005f0]:csrrs sp, vxsat, zero<br> [0x800005f4]:sd t4, 224(s3)<br>     |
|  16|[0x80002300]<br>0x80007F80807F8080|- rs1 : x15<br> - rd : x17<br> - rs1_b7_val == -2<br> - rs1_b4_val == -1<br> - rs1_b3_val == -128<br> - rs1_b0_val == -2<br>                                                                                  |[0x80000610]:KSLLI8 a7, a5, 7<br> [0x80000614]:csrrs a5, vxsat, zero<br> [0x80000618]:sd a7, 240(s3)<br>     |
|  17|[0x80002310]<br>0x806020107F807F80|- rs1 : x5<br> - rd : x11<br> - rs1_b7_val == -128<br> - rs1_b5_val == 2<br> - rs1_b4_val == 1<br> - rs1_b1_val == 64<br> - rs1_b0_val == -17<br>                                                             |[0x8000063c]:KSLLI8 a1, t0, 4<br> [0x80000640]:csrrs t0, vxsat, zero<br> [0x80000644]:sd a1, 256(s3)<br>     |
|  18|[0x80002320]<br>0x400801FFFD7FF709|- rs1 : x13<br> - rd : x27<br> - rs1_b7_val == 64<br> - rs1_b5_val == 1<br> - rs1_b3_val == -3<br> - rs1_b2_val == 127<br> - rs1_b1_val == -9<br>                                                             |[0x80000668]:KSLLI8 s11, a3, 0<br> [0x8000066c]:csrrs a3, vxsat, zero<br> [0x80000670]:sd s11, 272(s3)<br>   |
|  19|[0x80002330]<br>0x7F80E07F105080E0|- rs1 : x8<br> - rd : x26<br> - rs1_b7_val == 32<br> - rs1_b5_val == -2<br> - rs1_b4_val == 64<br> - rs1_b3_val == 1<br>                                                                                      |[0x80000694]:KSLLI8 s10, fp, 4<br> [0x80000698]:csrrs fp, vxsat, zero<br> [0x8000069c]:sd s10, 288(s3)<br>   |
|  20|[0x80002340]<br>0x2010BEFCF02080DE|- rs1 : x21<br> - rd : x13<br> - rs1_b7_val == 16<br> - rs1_b5_val == -33<br> - rs1_b4_val == -2<br> - rs1_b2_val == 16<br> - rs1_b1_val == -128<br>                                                          |[0x800006c0]:KSLLI8 a3, s5, 1<br> [0x800006c4]:csrrs s5, vxsat, zero<br> [0x800006c8]:sd a3, 304(s3)<br>     |
|  21|[0x80002350]<br>0x107FF840FE0CF2BE|- rs1 : x7<br> - rd : x28<br> - rs1_b7_val == 8<br> - rs1_b4_val == 32<br> - rs1_b3_val == -1<br> - rs1_b0_val == -33<br>                                                                                     |[0x800006e4]:KSLLI8 t3, t2, 1<br> [0x800006e8]:csrrs t2, vxsat, zero<br> [0x800006ec]:sd t3, 320(s3)<br>     |
|  22|[0x80002360]<br>0x047FBFFAFCAAF9FD|- rs1 : x4<br> - rd : x12<br> - rs1_b7_val == 4<br> - rs1_b5_val == -65<br> - rs1_b0_val == -3<br>                                                                                                            |[0x80000710]:KSLLI8 a2, tp, 0<br> [0x80000714]:csrrs tp, vxsat, zero<br> [0x80000718]:sd a2, 0(gp)<br>       |
|  23|[0x80002370]<br>0x10D880D0B0808028|- rs1 : x19<br> - rd : x22<br> - rs1_b7_val == 2<br> - rs1_b6_val == -5<br> - rs1_b2_val == -33<br> - rs1_b1_val == -33<br>                                                                                   |[0x8000073c]:KSLLI8 s6, s3, 3<br> [0x80000740]:csrrs s3, vxsat, zero<br> [0x80000744]:sd s6, 16(gp)<br>      |
|  24|[0x80002380]<br>0x7F8080808080807F|- rs1 : x28<br> - rd : x2<br> - rs1_b3_val == -2<br> - rs1_b2_val == -1<br> - rs1_b0_val == 64<br>                                                                                                            |[0x80000760]:KSLLI8 sp, t3, 7<br> [0x80000764]:csrrs t3, vxsat, zero<br> [0x80000768]:sd sp, 32(gp)<br>      |
|  25|[0x80002390]<br>0x7F8020F080808040|- rs1 : x29<br> - rd : x9<br> - rs1_b5_val == 8<br> - rs1_b1_val == -86<br> - rs1_b0_val == 16<br>                                                                                                            |[0x8000078c]:KSLLI8 s1, t4, 2<br> [0x80000790]:csrrs t4, vxsat, zero<br> [0x80000794]:sd s1, 48(gp)<br>      |
|  26|[0x800023a0]<br>0x7F807F7F807F7F7F|- rs1 : x16<br> - rd : x23<br> - rs1_b5_val == 85<br> - rs1_b2_val == 32<br> - rs1_b1_val == 85<br>                                                                                                           |[0x800007b8]:KSLLI8 s7, a6, 6<br> [0x800007bc]:csrrs a6, vxsat, zero<br> [0x800007c0]:sd s7, 64(gp)<br>      |
|  27|[0x800023b0]<br>0x7F30F000B0F87F80|- rs1 : x26<br> - rd : x10<br> - rs1_b1_val == 127<br>                                                                                                                                                        |[0x800007e4]:KSLLI8 a0, s10, 3<br> [0x800007e8]:csrrs s10, vxsat, zero<br> [0x800007ec]:sd a0, 80(gp)<br>    |
|  28|[0x800023c0]<br>0x7F7F90D0B060B030|- rs1 : x1<br> - rd : x19<br> - rs1_b6_val == 64<br> - rs1_b3_val == -5<br> - rs1_b1_val == -5<br>                                                                                                            |[0x80000808]:KSLLI8 s3, ra, 4<br> [0x8000080c]:csrrs ra, vxsat, zero<br> [0x80000810]:sd s3, 96(gp)<br>      |
|  29|[0x800023d0]<br>0x800C80248018F47F|- rs1 : x11<br> - rd : x31<br> - rs1_b1_val == -3<br>                                                                                                                                                         |[0x80000834]:KSLLI8 t6, a1, 2<br> [0x80000838]:csrrs a1, vxsat, zero<br> [0x8000083c]:sd t6, 112(gp)<br>     |
|  30|[0x800023e0]<br>0x7F7F8080007F807F|- rs1 : x22<br> - rd : x5<br> - rs1_b1_val == -2<br> - rs1_b0_val == 8<br>                                                                                                                                    |[0x80000858]:KSLLI8 t0, s6, 7<br> [0x8000085c]:csrrs s6, vxsat, zero<br> [0x80000860]:sd t0, 128(gp)<br>     |
|  31|[0x800023f0]<br>0x0000000000000000|- rs1 : x23<br> - rd : x0<br> - rs1_b1_val == 8<br>                                                                                                                                                           |[0x80000884]:KSLLI8 zero, s7, 6<br> [0x80000888]:csrrs s7, vxsat, zero<br> [0x8000088c]:sd zero, 144(gp)<br> |
|  32|[0x80002400]<br>0x80807F7F7F7F7F80|- rs1 : x14<br> - rd : x7<br> - rs1_b5_val == 16<br> - rs1_b3_val == 2<br> - rs1_b1_val == 2<br>                                                                                                              |[0x800008a8]:KSLLI8 t2, a4, 6<br> [0x800008ac]:csrrs a4, vxsat, zero<br> [0x800008b0]:sd t2, 160(gp)<br>     |
|  33|[0x80002410]<br>0x7F807F7F807F0080|- rs1_b0_val == -65<br>                                                                                                                                                                                       |[0x800008cc]:KSLLI8 t6, t5, 7<br> [0x800008d0]:csrrs t5, vxsat, zero<br> [0x800008d4]:sd t6, 176(gp)<br>     |
|  34|[0x80002420]<br>0x80807F7F80807F80|- rs1_b0_val == -86<br>                                                                                                                                                                                       |[0x800008f8]:KSLLI8 t6, t5, 6<br> [0x800008fc]:csrrs t5, vxsat, zero<br> [0x80000900]:sd t6, 192(gp)<br>     |
|  35|[0x80002430]<br>0x7F807F7F7F7F807F|- rs1_b4_val == 127<br> - rs1_b2_val == 4<br> - rs1_b0_val == 85<br>                                                                                                                                          |[0x80000924]:KSLLI8 t6, t5, 5<br> [0x80000928]:csrrs t5, vxsat, zero<br> [0x8000092c]:sd t6, 208(gp)<br>     |
|  36|[0x80002440]<br>0x8080807F807F7F7F|- rs1_b3_val == -65<br> - rs1_b1_val == 4<br> - rs1_b0_val == 127<br>                                                                                                                                         |[0x80000948]:KSLLI8 t6, t5, 7<br> [0x8000094c]:csrrs t5, vxsat, zero<br> [0x80000950]:sd t6, 224(gp)<br>     |
|  37|[0x80002450]<br>0x1080A07F7F308070|- rs1_b7_val == 1<br>                                                                                                                                                                                         |[0x8000096c]:KSLLI8 t6, t5, 4<br> [0x80000970]:csrrs t5, vxsat, zero<br> [0x80000974]:sd t6, 240(gp)<br>     |
|  38|[0x80002470]<br>0x0070F06080807F80|- rs1_b5_val == -1<br>                                                                                                                                                                                        |[0x800009b4]:KSLLI8 t6, t5, 4<br> [0x800009b8]:csrrs t5, vxsat, zero<br> [0x800009bc]:sd t6, 272(gp)<br>     |
|  39|[0x80002480]<br>0x7F70F08090808090|- rs1_b7_val == 127<br> - rs1_b4_val == -17<br>                                                                                                                                                               |[0x800009e0]:KSLLI8 t6, t5, 4<br> [0x800009e4]:csrrs t5, vxsat, zero<br> [0x800009e8]:sd t6, 288(gp)<br>     |
|  40|[0x80002490]<br>0xEC0480F67F7F800E|- rs1_b6_val == 2<br> - rs1_b4_val == -5<br> - rs1_b2_val == 64<br>                                                                                                                                           |[0x80000a04]:KSLLI8 t6, t5, 1<br> [0x80000a08]:csrrs t5, vxsat, zero<br> [0x80000a0c]:sd t6, 304(gp)<br>     |
|  41|[0x800024a0]<br>0x40F6EF10F8F7F705|- rs1_b4_val == 16<br> - rs1_b2_val == -9<br>                                                                                                                                                                 |[0x80000a30]:KSLLI8 t6, t5, 0<br> [0x80000a34]:csrrs t5, vxsat, zero<br> [0x80000a38]:sd t6, 320(gp)<br>     |
|  42|[0x800024b0]<br>0x7F7FF8107F7F7F20|- rs1_b4_val == 4<br>                                                                                                                                                                                         |[0x80000a58]:KSLLI8 t6, t5, 2<br> [0x80000a5c]:csrrs t5, vxsat, zero<br> [0x80000a60]:sd t6, 336(gp)<br>     |
|  43|[0x800024c0]<br>0x02AA0702013FFEF7|- rs1_b6_val == -86<br> - rs1_b4_val == 2<br>                                                                                                                                                                 |[0x80000a7c]:KSLLI8 t6, t5, 0<br> [0x80000a80]:csrrs t5, vxsat, zero<br> [0x80000a84]:sd t6, 352(gp)<br>     |
|  44|[0x800024d0]<br>0xF840E8808018C010|- rs1_b3_val == -86<br> - rs1_b0_val == 2<br>                                                                                                                                                                 |[0x80000aa0]:KSLLI8 t6, t5, 3<br> [0x80000aa4]:csrrs t5, vxsat, zero<br> [0x80000aa8]:sd t6, 368(gp)<br>     |
|  45|[0x800024e0]<br>0x80407F707F80E080|- rs1_b6_val == 4<br> - rs1_b3_val == 127<br>                                                                                                                                                                 |[0x80000ac4]:KSLLI8 t6, t5, 4<br> [0x80000ac8]:csrrs t5, vxsat, zero<br> [0x80000acc]:sd t6, 384(gp)<br>     |
|  46|[0x800024f0]<br>0xF480247FBC002480|- rs1_b3_val == -17<br>                                                                                                                                                                                       |[0x80000af0]:KSLLI8 t6, t5, 2<br> [0x80000af4]:csrrs t5, vxsat, zero<br> [0x80000af8]:sd t6, 400(gp)<br>     |
|  47|[0x80002500]<br>0x7F80807F7F80807F|- rs1_b0_val == 32<br>                                                                                                                                                                                        |[0x80000b1c]:KSLLI8 t6, t5, 5<br> [0x80000b20]:csrrs t5, vxsat, zero<br> [0x80000b24]:sd t6, 416(gp)<br>     |
|  48|[0x80002510]<br>0x808080808080807F|- rs1_b6_val == -9<br>                                                                                                                                                                                        |[0x80000b48]:KSLLI8 t6, t5, 6<br> [0x80000b4c]:csrrs t5, vxsat, zero<br> [0x80000b50]:sd t6, 432(gp)<br>     |
|  49|[0x80002520]<br>0x40FEFFFEFFAA55FA|- rs1_b6_val == -2<br>                                                                                                                                                                                        |[0x80000b6c]:KSLLI8 t6, t5, 0<br> [0x80000b70]:csrrs t5, vxsat, zero<br> [0x80000b74]:sd t6, 448(gp)<br>     |
|  50|[0x80002530]<br>0x0520BF05F6F901FD|- rs1_b6_val == 32<br>                                                                                                                                                                                        |[0x80000b90]:KSLLI8 t6, t5, 0<br> [0x80000b94]:csrrs t5, vxsat, zero<br> [0x80000b98]:sd t6, 464(gp)<br>     |
|  51|[0x80002540]<br>0xC07F187F808028F8|- rs1_b6_val == 16<br> - rs1_b2_val == -17<br>                                                                                                                                                                |[0x80000bb4]:KSLLI8 t6, t5, 3<br> [0x80000bb8]:csrrs t5, vxsat, zero<br> [0x80000bbc]:sd t6, 480(gp)<br>     |
|  52|[0x80002550]<br>0x80807F7F807F0080|- rs1_b2_val == 85<br>                                                                                                                                                                                        |[0x80000be0]:KSLLI8 t6, t5, 5<br> [0x80000be4]:csrrs t5, vxsat, zero<br> [0x80000be8]:sd t6, 496(gp)<br>     |
|  53|[0x80002560]<br>0xBFFF203FDFFD55FA|- rs1_b6_val == -1<br> - rs1_b5_val == 32<br> - rs1_b2_val == -3<br>                                                                                                                                          |[0x80000c0c]:KSLLI8 t6, t5, 0<br> [0x80000c10]:csrrs t5, vxsat, zero<br> [0x80000c14]:sd t6, 512(gp)<br>     |
|  54|[0x80002570]<br>0x8040808080808080|- rs1_b2_val == -65<br>                                                                                                                                                                                       |[0x80000c30]:KSLLI8 t6, t5, 6<br> [0x80000c34]:csrrs t5, vxsat, zero<br> [0x80000c38]:sd t6, 528(gp)<br>     |
|  55|[0x80002580]<br>0x7F7F807F7F808060|- rs1_b5_val == -5<br>                                                                                                                                                                                        |[0x80000c5c]:KSLLI8 t6, t5, 5<br> [0x80000c60]:csrrs t5, vxsat, zero<br> [0x80000c64]:sd t6, 544(gp)<br>     |
|  56|[0x80002590]<br>0x80807F807F80807F|- rs1_b2_val == -5<br>                                                                                                                                                                                        |[0x80000c80]:KSLLI8 t6, t5, 7<br> [0x80000c84]:csrrs t5, vxsat, zero<br> [0x80000c88]:sd t6, 560(gp)<br>     |
|  57|[0x800025a0]<br>0x04AAFBC0BF0101FD|- rs1_b2_val == 1<br>                                                                                                                                                                                         |[0x80000ca4]:KSLLI8 t6, t5, 0<br> [0x80000ca8]:csrrs t5, vxsat, zero<br> [0x80000cac]:sd t6, 576(gp)<br>     |
|  58|[0x800025b0]<br>0x8038B8E87FE0E8D0|- rs1_b5_val == -9<br>                                                                                                                                                                                        |[0x80000cd0]:KSLLI8 t6, t5, 3<br> [0x80000cd4]:csrrs t5, vxsat, zero<br> [0x80000cd8]:sd t6, 592(gp)<br>     |
