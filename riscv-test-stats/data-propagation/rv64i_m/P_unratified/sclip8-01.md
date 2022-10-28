
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
| SIG_REGION                | [('0x80002210', '0x800025f0', '124 dwords')]      |
| COV_LABELS                | sclip8      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/sclip8-01.S    |
| Total Number of coverpoints| 240     |
| Total Coverpoints Hit     | 235      |
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
      [0x800009c0]:SCLIP8 t6, t5, 1
      [0x800009c4]:csrrs t5, vxsat, zero
      [0x800009c8]:sd t6, 304(tp)
 -- Signature Address: 0x80002480 Data: 0x01000001FEFF0101
 -- Redundant Coverpoints hit by the op
      - opcode : sclip8
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 1
      - rs1_b7_val == 2
      - rs1_b6_val == 0
      - rs1_b5_val == 0
      - rs1_b4_val == 32
      - rs1_b3_val == -2
      - rs1_b2_val == -1
      - rs1_b0_val == 64




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ce0]:SCLIP8 t6, t5, 4
      [0x80000ce4]:csrrs t5, vxsat, zero
      [0x80000ce8]:sd t6, 640(tp)
 -- Signature Address: 0x800025d0 Data: 0x08F0080F07F0F8FF
 -- Redundant Coverpoints hit by the op
      - opcode : sclip8
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 4
      - rs1_b7_val == 8
      - rs1_b6_val == -17
      - rs1_b5_val == 8
      - rs1_b4_val == 85
      - rs1_b2_val == -128
      - rs1_b0_val == -1






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

|s.no|            signature             |                                                                                                   coverpoints                                                                                                   |                                                     code                                                      |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000001|- opcode : sclip8<br> - rs1 : x4<br> - rd : x4<br> - rs1 == rd<br> - rs1_b0_val == -128<br> - imm_val == 6<br> - rs1_b7_val == -3<br> - rs1_b4_val == 8<br> - rs1_b2_val == -9<br>                               |[0x800003bc]:SCLIP8 tp, tp, 6<br> [0x800003c0]:csrrs tp, vxsat, zero<br> [0x800003c4]:sd tp, 0(a1)<br>         |
|   2|[0x80002220]<br>0x8003FEFB04F704FC|- rs1 : x27<br> - rd : x6<br> - rs1 != rd<br> - imm_val == 7<br> - rs1_b7_val == -128<br> - rs1_b5_val == -2<br> - rs1_b4_val == -5<br> - rs1_b3_val == 4<br> - rs1_b1_val == 4<br>                              |[0x800003e0]:SCLIP8 t1, s11, 7<br> [0x800003e4]:csrrs s11, vxsat, zero<br> [0x800003e8]:sd t1, 16(a1)<br>      |
|   3|[0x80002230]<br>0x1FF7FF0403FF02FF|- rs1 : x22<br> - rd : x23<br> - imm_val == 5<br> - rs1_b7_val == 64<br> - rs1_b6_val == -9<br> - rs1_b5_val == -1<br> - rs1_b4_val == 4<br> - rs1_b2_val == -1<br> - rs1_b1_val == 2<br> - rs1_b0_val == -1<br> |[0x80000404]:SCLIP8 s7, s6, 5<br> [0x80000408]:csrrs s6, vxsat, zero<br> [0x8000040c]:sd s7, 32(a1)<br>        |
|   4|[0x80002240]<br>0xFDF7F0060FF00FF8|- rs1 : x8<br> - rd : x5<br> - imm_val == 4<br> - rs1_b5_val == -33<br> - rs1_b2_val == -17<br> - rs1_b1_val == 16<br>                                                                                           |[0x80000428]:SCLIP8 t0, fp, 4<br> [0x8000042c]:csrrs fp, vxsat, zero<br> [0x80000430]:sd t0, 48(a1)<br>        |
|   5|[0x80002250]<br>0xF80603FCF8F807FE|- rs1 : x29<br> - rd : x21<br> - imm_val == 3<br> - rs1_b7_val == -65<br> - rs1_b3_val == -9<br> - rs1_b1_val == 85<br> - rs1_b0_val == -2<br>                                                                   |[0x80000454]:SCLIP8 s5, t4, 3<br> [0x80000458]:csrrs t4, vxsat, zero<br> [0x8000045c]:sd s5, 64(a1)<br>        |
|   6|[0x80002260]<br>0xFC03FC03FC010203|- rs1 : x7<br> - rd : x24<br> - imm_val == 2<br> - rs1_b7_val == -33<br> - rs1_b5_val == -9<br> - rs1_b4_val == 64<br> - rs1_b2_val == 1<br> - rs1_b0_val == 127<br>                                             |[0x80000478]:SCLIP8 s8, t2, 2<br> [0x8000047c]:csrrs t2, vxsat, zero<br> [0x80000480]:sd s8, 80(a1)<br>        |
|   7|[0x80002270]<br>0xFEFEFE0101010101|- rs1 : x17<br> - rd : x16<br> - imm_val == 1<br> - rs1_b7_val == -86<br> - rs1_b6_val == -3<br> - rs1_b4_val == 32<br> - rs1_b2_val == 2<br> - rs1_b0_val == 85<br>                                             |[0x800004a4]:SCLIP8 a6, a7, 1<br> [0x800004a8]:csrrs a7, vxsat, zero<br> [0x800004ac]:sd a6, 96(a1)<br>        |
|   8|[0x80002280]<br>0xFFFF00FF00000000|- rs1 : x1<br> - rd : x14<br> - imm_val == 0<br> - rs1_b5_val == 2<br> - rs1_b0_val == 16<br>                                                                                                                    |[0x800004c8]:SCLIP8 a4, ra, 0<br> [0x800004cc]:csrrs ra, vxsat, zero<br> [0x800004d0]:sd a4, 112(a1)<br>       |
|   9|[0x80002290]<br>0x00FF00FF00FFFF00|- rs1 : x6<br> - rd : x29<br> - rs1_b7_val == 85<br> - rs1_b1_val == -5<br>                                                                                                                                      |[0x800004ec]:SCLIP8 t4, t1, 0<br> [0x800004f0]:csrrs t1, vxsat, zero<br> [0x800004f4]:sd t4, 128(a1)<br>       |
|  10|[0x800022a0]<br>0x0FFD0FFB0FFEF0F8|- rs1 : x15<br> - rd : x2<br> - rs1_b7_val == 127<br> - rs1_b5_val == 85<br> - rs1_b3_val == 32<br> - rs1_b2_val == -2<br> - rs1_b1_val == -33<br>                                                               |[0x80000518]:SCLIP8 sp, a5, 4<br> [0x8000051c]:csrrs a5, vxsat, zero<br> [0x80000520]:sd sp, 144(a1)<br>       |
|  11|[0x800022b0]<br>0xFE010101FEFEFE01|- rs1 : x3<br> - rd : x19<br> - rs1_b7_val == -17<br> - rs1_b6_val == 2<br> - rs1_b3_val == -33<br> - rs1_b1_val == -86<br> - rs1_b0_val == 64<br>                                                               |[0x80000544]:SCLIP8 s3, gp, 1<br> [0x80000548]:csrrs gp, vxsat, zero<br> [0x8000054c]:sd s3, 160(a1)<br>       |
|  12|[0x800022c0]<br>0xF7BF800355C02002|- rs1 : x9<br> - rd : x28<br> - rs1_b7_val == -9<br> - rs1_b6_val == -65<br> - rs1_b5_val == -128<br> - rs1_b3_val == 85<br> - rs1_b1_val == 32<br> - rs1_b0_val == 2<br>                                        |[0x80000570]:SCLIP8 t3, s1, 7<br> [0x80000574]:csrrs s1, vxsat, zero<br> [0x80000578]:sd t3, 176(a1)<br>       |
|  13|[0x800022d0]<br>0xFF00FF00FFFFFFFF|- rs1 : x25<br> - rd : x31<br> - rs1_b7_val == -5<br> - rs1_b6_val == 16<br> - rs1_b5_val == -65<br> - rs1_b4_val == 1<br> - rs1_b2_val == -128<br> - rs1_b0_val == -9<br>                                       |[0x80000594]:SCLIP8 t6, s9, 0<br> [0x80000598]:csrrs s9, vxsat, zero<br> [0x8000059c]:sd t6, 192(a1)<br>       |
|  14|[0x800022e0]<br>0xFF00FFFF00FFFFFF|- rs1 : x10<br> - rd : x15<br> - rs1_b7_val == -2<br> - rs1_b6_val == 0<br> - rs1_b5_val == -17<br> - rs1_b4_val == -86<br> - rs1_b3_val == 64<br> - rs1_b1_val == -128<br>                                      |[0x800005b8]:SCLIP8 a5, a0, 0<br> [0x800005bc]:csrrs a0, vxsat, zero<br> [0x800005c0]:sd a5, 208(a1)<br>       |
|  15|[0x800022f0]<br>0x07F80707F807FEF8|- rs1 : x24<br> - rd : x10<br> - rs1_b7_val == 32<br> - rs1_b6_val == -86<br> - rs1_b5_val == 127<br> - rs1_b2_val == 64<br> - rs1_b1_val == -2<br> - rs1_b0_val == -86<br>                                      |[0x800005e4]:SCLIP8 a0, s8, 3<br> [0x800005e8]:csrrs s8, vxsat, zero<br> [0x800005ec]:sd a0, 224(a1)<br>       |
|  16|[0x80002300]<br>0x03FCFC03FD000303|- rs1 : x31<br> - rd : x12<br> - rs1_b7_val == 16<br> - rs1_b6_val == -5<br> - rs1_b3_val == -3<br> - rs1_b2_val == 0<br> - rs1_b0_val == 8<br>                                                                  |[0x80000610]:SCLIP8 a2, t6, 2<br> [0x80000614]:csrrs t6, vxsat, zero<br> [0x80000618]:sd a2, 240(a1)<br>       |
|  17|[0x80002310]<br>0x0000000000000000|- rs1 : x19<br> - rd : x0<br> - rs1_b7_val == 8<br> - rs1_b6_val == -17<br> - rs1_b5_val == 8<br> - rs1_b4_val == 85<br>                                                                                         |[0x80000634]:SCLIP8 zero, s3, 4<br> [0x80000638]:csrrs s3, vxsat, zero<br> [0x8000063c]:sd zero, 256(a1)<br>   |
|  18|[0x80002320]<br>0x04001F0006FDE001|- rs1 : x5<br> - rd : x7<br> - rs1_b7_val == 4<br> - rs1_b5_val == 32<br> - rs1_b4_val == 0<br> - rs1_b2_val == -3<br> - rs1_b0_val == 1<br>                                                                     |[0x80000660]:SCLIP8 t2, t0, 5<br> [0x80000664]:csrrs t0, vxsat, zero<br> [0x80000668]:sd t2, 272(a1)<br>       |
|  19|[0x80002330]<br>0x00FF00FF00FF00FF|- rs1 : x13<br> - rd : x9<br> - rs1_b7_val == 2<br> - rs1_b3_val == 127<br> - rs1_b1_val == 64<br>                                                                                                               |[0x80000684]:SCLIP8 s1, a3, 0<br> [0x80000688]:csrrs a3, vxsat, zero<br> [0x8000068c]:sd s1, 288(a1)<br>       |
|  20|[0x80002340]<br>0x00FF00FF00FF0000|- rs1 : x18<br> - rd : x20<br> - rs1_b7_val == 1<br> - rs1_b4_val == -33<br> - rs1_b0_val == 4<br>                                                                                                               |[0x800006a8]:SCLIP8 s4, s2, 0<br> [0x800006ac]:csrrs s2, vxsat, zero<br> [0x800006b0]:sd s4, 304(a1)<br>       |
|  21|[0x80002350]<br>0x0004E003091F1F02|- rs1 : x23<br> - rd : x30<br> - rs1_b7_val == 0<br> - rs1_b6_val == 4<br> - rs1_b2_val == 32<br>                                                                                                                |[0x800006d4]:SCLIP8 t5, s7, 5<br> [0x800006d8]:csrrs s7, vxsat, zero<br> [0x800006dc]:sd t5, 0(tp)<br>         |
|  22|[0x80002360]<br>0xFF1FE0F902FE04FF|- rs1 : x2<br> - rd : x1<br> - rs1_b7_val == -1<br> - rs1_b6_val == 32<br> - rs1_b3_val == 2<br>                                                                                                                 |[0x800006f8]:SCLIP8 ra, sp, 5<br> [0x800006fc]:csrrs sp, vxsat, zero<br> [0x80000700]:sd ra, 16(tp)<br>        |
|  23|[0x80002370]<br>0x0000FFFFFFFF0000|- rs1 : x11<br> - rd : x13<br> - rs1_b6_val == 85<br>                                                                                                                                                            |[0x8000071c]:SCLIP8 a3, a1, 0<br> [0x80000720]:csrrs a1, vxsat, zero<br> [0x80000724]:sd a3, 32(tp)<br>        |
|  24|[0x80002380]<br>0x0F030F01F0040F0F|- rs1 : x12<br> - rd : x27<br> - rs1_b5_val == 16<br> - rs1_b3_val == -17<br> - rs1_b2_val == 4<br> - rs1_b1_val == 127<br>                                                                                      |[0x80000748]:SCLIP8 s11, a2, 4<br> [0x8000074c]:csrrs a2, vxsat, zero<br> [0x80000750]:sd s11, 48(tp)<br>      |
|  25|[0x80002390]<br>0x0806C03FFDFAC003|- rs1 : x21<br> - rd : x25<br> - rs1_b1_val == -65<br>                                                                                                                                                           |[0x80000774]:SCLIP8 s9, s5, 6<br> [0x80000778]:csrrs s5, vxsat, zero<br> [0x8000077c]:sd s9, 64(tp)<br>        |
|  26|[0x800023a0]<br>0xF0F0F9F90FF0F00F|- rs1 : x16<br> - rd : x11<br> - rs1_b6_val == -128<br> - rs1_b3_val == 16<br> - rs1_b1_val == -17<br> - rs1_b0_val == 32<br>                                                                                    |[0x800007a0]:SCLIP8 a1, a6, 4<br> [0x800007a4]:csrrs a6, vxsat, zero<br> [0x800007a8]:sd a1, 80(tp)<br>        |
|  27|[0x800023b0]<br>0x1FE0E009FA1FF7F7|- rs1 : x14<br> - rd : x17<br> - rs1_b1_val == -9<br>                                                                                                                                                            |[0x800007cc]:SCLIP8 a7, a4, 5<br> [0x800007d0]:csrrs a4, vxsat, zero<br> [0x800007d4]:sd a7, 96(tp)<br>        |
|  28|[0x800023c0]<br>0x063F1010EFFAFD01|- rs1 : x28<br> - rd : x22<br> - rs1_b6_val == 127<br> - rs1_b4_val == 16<br> - rs1_b1_val == -3<br>                                                                                                             |[0x800007f0]:SCLIP8 s6, t3, 6<br> [0x800007f4]:csrrs t3, vxsat, zero<br> [0x800007f8]:sd s6, 112(tp)<br>       |
|  29|[0x800023d0]<br>0x010101FE01010101|- rs1 : x20<br> - rd : x3<br> - rs1_b4_val == -17<br> - rs1_b1_val == 8<br>                                                                                                                                      |[0x8000081c]:SCLIP8 gp, s4, 1<br> [0x80000820]:csrrs s4, vxsat, zero<br> [0x80000824]:sd gp, 128(tp)<br>       |
|  30|[0x800023e0]<br>0x0000000000000000|- rs1 : x0<br> - rd : x26<br> - rs1_b5_val == 0<br> - rs1_b3_val == 0<br> - rs1_b1_val == 0<br> - rs1_b0_val == 0<br>                                                                                            |[0x80000840]:SCLIP8 s10, zero, 2<br> [0x80000844]:csrrs zero, vxsat, zero<br> [0x80000848]:sd s10, 144(tp)<br> |
|  31|[0x800023f0]<br>0xF7F8FEF9F67F007F|- rs1 : x30<br> - rd : x18<br> - rs1_b2_val == 127<br>                                                                                                                                                           |[0x8000086c]:SCLIP8 s2, t5, 7<br> [0x80000870]:csrrs t5, vxsat, zero<br> [0x80000874]:sd s2, 160(tp)<br>       |
|  32|[0x80002400]<br>0x0FFFF00FFDF9FFF7|- rs1 : x26<br> - rd : x8<br> - rs1_b6_val == -1<br> - rs1_b4_val == 127<br> - rs1_b1_val == -1<br>                                                                                                              |[0x80000890]:SCLIP8 fp, s10, 4<br> [0x80000894]:csrrs s10, vxsat, zero<br> [0x80000898]:sd fp, 176(tp)<br>     |
|  33|[0x80002410]<br>0x07FEF802FEF807F8|- rs1_b6_val == -2<br> - rs1_b5_val == -86<br> - rs1_b4_val == 2<br> - rs1_b3_val == -2<br> - rs1_b0_val == -65<br>                                                                                              |[0x800008b4]:SCLIP8 t6, t5, 3<br> [0x800008b8]:csrrs t5, vxsat, zero<br> [0x800008bc]:sd t6, 192(tp)<br>       |
|  34|[0x80002420]<br>0x0107F807F80707F8|- rs1_b0_val == -33<br>                                                                                                                                                                                          |[0x800008d8]:SCLIP8 t6, t5, 3<br> [0x800008dc]:csrrs t5, vxsat, zero<br> [0x800008e0]:sd t6, 208(tp)<br>       |
|  35|[0x80002430]<br>0xFFF61009FE0304EF|- rs1_b0_val == -17<br>                                                                                                                                                                                          |[0x800008fc]:SCLIP8 t6, t5, 6<br> [0x80000900]:csrrs t5, vxsat, zero<br> [0x80000904]:sd t6, 224(tp)<br>       |
|  36|[0x80002440]<br>0x0106F9F8050707FB|- rs1_b2_val == 16<br> - rs1_b0_val == -5<br>                                                                                                                                                                    |[0x80000928]:SCLIP8 t6, t5, 3<br> [0x8000092c]:csrrs t5, vxsat, zero<br> [0x80000930]:sd t6, 240(tp)<br>       |
|  37|[0x80002450]<br>0xEFFA557FAABFFDFD|- rs1_b3_val == -86<br> - rs1_b2_val == -65<br> - rs1_b0_val == -3<br>                                                                                                                                           |[0x8000094c]:SCLIP8 t6, t5, 7<br> [0x80000950]:csrrs t5, vxsat, zero<br> [0x80000954]:sd t6, 256(tp)<br>       |
|  38|[0x80002460]<br>0x09F804F6073FC0FC|- rs1_b5_val == 4<br>                                                                                                                                                                                            |[0x80000978]:SCLIP8 t6, t5, 7<br> [0x8000097c]:csrrs t5, vxsat, zero<br> [0x80000980]:sd t6, 272(tp)<br>       |
|  39|[0x80002470]<br>0x020901F9F0F007F0|- rs1_b5_val == 1<br>                                                                                                                                                                                            |[0x8000099c]:SCLIP8 t6, t5, 4<br> [0x800009a0]:csrrs t5, vxsat, zero<br> [0x800009a4]:sd t6, 288(tp)<br>       |
|  40|[0x80002490]<br>0xF608F7E0E01FF800|- rs1_b6_val == 8<br> - rs1_b4_val == -65<br>                                                                                                                                                                    |[0x800009e4]:SCLIP8 t6, t5, 5<br> [0x800009e8]:csrrs t5, vxsat, zero<br> [0x800009ec]:sd t6, 320(tp)<br>       |
|  41|[0x800024a0]<br>0x07F8FCF8F8020007|- rs1_b4_val == -9<br>                                                                                                                                                                                           |[0x80000a08]:SCLIP8 t6, t5, 3<br> [0x80000a0c]:csrrs t5, vxsat, zero<br> [0x80000a10]:sd t6, 336(tp)<br>       |
|  42|[0x800024b0]<br>0xFFFF00FF00FF0000|- rs1_b6_val == -33<br> - rs1_b4_val == -3<br>                                                                                                                                                                   |[0x80000a2c]:SCLIP8 t6, t5, 0<br> [0x80000a30]:csrrs t5, vxsat, zero<br> [0x80000a34]:sd t6, 352(tp)<br>       |
|  43|[0x800024c0]<br>0x1FE007FEE0F7F6FF|- rs1_b4_val == -2<br>                                                                                                                                                                                           |[0x80000a58]:SCLIP8 t6, t5, 5<br> [0x80000a5c]:csrrs t5, vxsat, zero<br> [0x80000a60]:sd t6, 368(tp)<br>       |
|  44|[0x800024d0]<br>0x0307F8F80707F8F8|- rs1_b4_val == -128<br>                                                                                                                                                                                         |[0x80000a7c]:SCLIP8 t6, t5, 3<br> [0x80000a80]:csrrs t5, vxsat, zero<br> [0x80000a84]:sd t6, 384(tp)<br>       |
|  45|[0x800024e0]<br>0xFEF807FF0703F807|- rs1_b4_val == -1<br>                                                                                                                                                                                           |[0x80000aa8]:SCLIP8 t6, t5, 3<br> [0x80000aac]:csrrs t5, vxsat, zero<br> [0x80000ab0]:sd t6, 400(tp)<br>       |
|  46|[0x800024f0]<br>0x01FDFCFFBFFDAA55|- rs1_b3_val == -65<br>                                                                                                                                                                                          |[0x80000acc]:SCLIP8 t6, t5, 7<br> [0x80000ad0]:csrrs t5, vxsat, zero<br> [0x80000ad4]:sd t6, 416(tp)<br>       |
|  47|[0x80002500]<br>0xFFFF00FFFFFFFF00|- rs1_b3_val == -5<br>                                                                                                                                                                                           |[0x80000af0]:SCLIP8 t6, t5, 0<br> [0x80000af4]:csrrs t5, vxsat, zero<br> [0x80000af8]:sd t6, 432(tp)<br>       |
|  48|[0x80002510]<br>0x080203F8C0FD08C0|- rs1_b3_val == -128<br>                                                                                                                                                                                         |[0x80000b1c]:SCLIP8 t6, t5, 6<br> [0x80000b20]:csrrs t5, vxsat, zero<br> [0x80000b24]:sd t6, 448(tp)<br>       |
|  49|[0x80002520]<br>0xFE09E004081FE0FD|- rs1_b3_val == 8<br>                                                                                                                                                                                            |[0x80000b40]:SCLIP8 t6, t5, 5<br> [0x80000b44]:csrrs t5, vxsat, zero<br> [0x80000b48]:sd t6, 464(tp)<br>       |
|  50|[0x80002530]<br>0xF80F0808F0050FFA|- rs1_b6_val == 64<br>                                                                                                                                                                                           |[0x80000b6c]:SCLIP8 t6, t5, 4<br> [0x80000b70]:csrrs t5, vxsat, zero<br> [0x80000b74]:sd t6, 480(tp)<br>       |
|  51|[0x80002540]<br>0xFE03FC0301FCFC02|- rs1_b3_val == 1<br>                                                                                                                                                                                            |[0x80000b90]:SCLIP8 t6, t5, 2<br> [0x80000b94]:csrrs t5, vxsat, zero<br> [0x80000b98]:sd t6, 496(tp)<br>       |
|  52|[0x80002550]<br>0xFEF7FB0000FA02F8|- rs1_b5_val == -5<br>                                                                                                                                                                                           |[0x80000bb4]:SCLIP8 t6, t5, 7<br> [0x80000bb8]:csrrs t5, vxsat, zero<br> [0x80000bbc]:sd t6, 512(tp)<br>       |
|  53|[0x80002560]<br>0x03FCFFFDFF02FCFC|- rs1_b3_val == -1<br>                                                                                                                                                                                           |[0x80000bdc]:SCLIP8 t6, t5, 2<br> [0x80000be0]:csrrs t5, vxsat, zero<br> [0x80000be4]:sd t6, 528(tp)<br>       |
|  54|[0x80002570]<br>0xFC03FD0300FCFE03|- rs1_b5_val == -3<br> - rs1_b2_val == -86<br>                                                                                                                                                                   |[0x80000c00]:SCLIP8 t6, t5, 2<br> [0x80000c04]:csrrs t5, vxsat, zero<br> [0x80000c08]:sd t6, 544(tp)<br>       |
|  55|[0x80002580]<br>0x0301FF050707FC01|- rs1_b6_val == 1<br> - rs1_b2_val == 85<br>                                                                                                                                                                     |[0x80000c24]:SCLIP8 t6, t5, 3<br> [0x80000c28]:csrrs t5, vxsat, zero<br> [0x80000c2c]:sd t6, 560(tp)<br>       |
|  56|[0x80002590]<br>0x0303FC03FCFCFCFC|- rs1_b2_val == -33<br>                                                                                                                                                                                          |[0x80000c50]:SCLIP8 t6, t5, 2<br> [0x80000c54]:csrrs t5, vxsat, zero<br> [0x80000c58]:sd t6, 576(tp)<br>       |
|  57|[0x800025a0]<br>0x0505F7080808FA06|- rs1_b2_val == 8<br>                                                                                                                                                                                            |[0x80000c74]:SCLIP8 t6, t5, 4<br> [0x80000c78]:csrrs t5, vxsat, zero<br> [0x80000c7c]:sd t6, 592(tp)<br>       |
|  58|[0x800025b0]<br>0x000000FF00FFFF00|- rs1_b2_val == -5<br>                                                                                                                                                                                           |[0x80000c98]:SCLIP8 t6, t5, 0<br> [0x80000c9c]:csrrs t5, vxsat, zero<br> [0x80000ca0]:sd t6, 608(tp)<br>       |
|  59|[0x800025c0]<br>0x070707F8F8FD06FC|- rs1_b5_val == 64<br>                                                                                                                                                                                           |[0x80000cbc]:SCLIP8 t6, t5, 3<br> [0x80000cc0]:csrrs t5, vxsat, zero<br> [0x80000cc4]:sd t6, 624(tp)<br>       |
|  60|[0x800025e0]<br>0x03FC0303FC0301FF|- rs1_b1_val == 1<br>                                                                                                                                                                                            |[0x80000d04]:SCLIP8 t6, t5, 2<br> [0x80000d08]:csrrs t5, vxsat, zero<br> [0x80000d0c]:sd t6, 656(tp)<br>       |
