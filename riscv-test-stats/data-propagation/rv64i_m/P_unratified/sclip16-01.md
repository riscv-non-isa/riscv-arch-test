
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000dc0')]      |
| SIG_REGION                | [('0x80002210', '0x800026c0', '150 dwords')]      |
| COV_LABELS                | sclip16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/sclip16-01.S    |
| Total Number of coverpoints| 232     |
| Total Coverpoints Hit     | 227      |
| Total Signature Updates   | 75      |
| STAT1                     | 74      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000da8]:SCLIP16 t6, t5, 1
      [0x80000dac]:csrrs t5, vxsat, zero
      [0x80000db0]:sd t6, 816(sp)
 -- Signature Address: 0x800026b0 Data: 0x00010001FFFE0001
 -- Redundant Coverpoints hit by the op
      - opcode : sclip16
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 1
      - rs1_h3_val == 8
      - rs1_h2_val == 21845
      - rs1_h1_val == -8193
      - rs1_h0_val == 1






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

|s.no|            signature             |                                                                                       coverpoints                                                                                        |                                                     code                                                     |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000001|- opcode : sclip16<br> - rs1 : x3<br> - rd : x3<br> - rs1 == rd<br> - rs1_h0_val == -32768<br> - imm_val == 6<br> - rs1_h3_val == 16<br> - rs1_h2_val == -5<br> - rs1_h1_val == 16384<br> |[0x800003b8]:SCLIP16 gp, gp, 6<br> [0x800003bc]:csrrs gp, vxsat, zero<br> [0x800003c0]:sd gp, 0(a0)<br>       |
|   2|[0x80002220]<br>0x04000004FFF60200|- rs1 : x15<br> - rd : x16<br> - rs1 != rd<br> - imm_val == 15<br> - rs1_h3_val == 1024<br> - rs1_h2_val == 4<br> - rs1_h0_val == 512<br>                                                 |[0x800003dc]:SCLIP16 a6, a5, 15<br> [0x800003e0]:csrrs a5, vxsat, zero<br> [0x800003e4]:sd a6, 16(a0)<br>     |
|   3|[0x80002230]<br>0xFF7F080020000001|- rs1 : x23<br> - rd : x2<br> - imm_val == 14<br> - rs1_h3_val == -129<br> - rs1_h2_val == 2048<br> - rs1_h1_val == 8192<br> - rs1_h0_val == 1<br>                                        |[0x800003f8]:SCLIP16 sp, s7, 14<br> [0x800003fc]:csrrs s7, vxsat, zero<br> [0x80000400]:sd sp, 32(a0)<br>     |
|   4|[0x80002240]<br>0x0005FFBF00081FFF|- rs1 : x28<br> - rd : x24<br> - imm_val == 13<br> - rs1_h2_val == -65<br> - rs1_h1_val == 8<br> - rs1_h0_val == 16384<br>                                                                |[0x80000418]:SCLIP16 s8, t3, 13<br> [0x8000041c]:csrrs t3, vxsat, zero<br> [0x80000420]:sd s8, 48(a0)<br>     |
|   5|[0x80002250]<br>0xFFBF0009FFFA0040|- rs1 : x2<br> - rd : x15<br> - imm_val == 12<br> - rs1_h3_val == -65<br> - rs1_h0_val == 64<br>                                                                                          |[0x8000043c]:SCLIP16 a5, sp, 12<br> [0x80000440]:csrrs sp, vxsat, zero<br> [0x80000444]:sd a5, 64(a0)<br>     |
|   6|[0x80002260]<br>0xFFDFFFFBFFF6FFBF|- rs1 : x16<br> - rd : x28<br> - imm_val == 11<br> - rs1_h3_val == -33<br> - rs1_h0_val == -65<br>                                                                                        |[0x80000460]:SCLIP16 t3, a6, 11<br> [0x80000464]:csrrs a6, vxsat, zero<br> [0x80000468]:sd t3, 80(a0)<br>     |
|   7|[0x80002270]<br>0xFFFD03FF03FF0000|- rs1 : x8<br> - rd : x27<br> - imm_val == 10<br> - rs1_h3_val == -3<br> - rs1_h2_val == 8192<br> - rs1_h1_val == 4096<br> - rs1_h0_val == 0<br>                                          |[0x80000478]:SCLIP16 s11, fp, 10<br> [0x8000047c]:csrrs fp, vxsat, zero<br> [0x80000480]:sd s11, 96(a0)<br>   |
|   8|[0x80002280]<br>0x0006FE0001FFFFF8|- rs1 : x21<br> - rd : x31<br> - imm_val == 9<br> - rs1_h2_val == -513<br>                                                                                                                |[0x8000049c]:SCLIP16 t6, s5, 9<br> [0x800004a0]:csrrs s5, vxsat, zero<br> [0x800004a4]:sd t6, 112(a0)<br>     |
|   9|[0x80002290]<br>0x00FFFF0000FF00FF|- rs1 : x13<br> - rd : x21<br> - imm_val == 8<br> - rs1_h3_val == 2048<br> - rs1_h2_val == -1025<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 4096<br>                                   |[0x800004c4]:SCLIP16 s5, a3, 8<br> [0x800004c8]:csrrs a3, vxsat, zero<br> [0x800004cc]:sd s5, 128(a0)<br>     |
|  10|[0x800022a0]<br>0x0000000000000000|- rs1 : x0<br> - rd : x17<br> - imm_val == 7<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br>                                                                        |[0x800004e8]:SCLIP16 a7, zero, 7<br> [0x800004ec]:csrrs zero, vxsat, zero<br> [0x800004f0]:sd a7, 144(a0)<br> |
|  11|[0x800022b0]<br>0x0003FFE0FFFB001F|- rs1 : x19<br> - rd : x4<br> - imm_val == 5<br> - rs1_h2_val == -21846<br> - rs1_h1_val == -5<br> - rs1_h0_val == 32767<br>                                                              |[0x8000050c]:SCLIP16 tp, s3, 5<br> [0x80000510]:csrrs s3, vxsat, zero<br> [0x80000514]:sd tp, 160(a0)<br>     |
|  12|[0x800022c0]<br>0x00030005FFF0FFFF|- rs1 : x31<br> - rd : x7<br> - imm_val == 4<br> - rs1_h1_val == -17<br> - rs1_h0_val == -1<br>                                                                                           |[0x80000528]:SCLIP16 t2, t6, 4<br> [0x8000052c]:csrrs t6, vxsat, zero<br> [0x80000530]:sd t2, 176(a0)<br>     |
|  13|[0x800022d0]<br>0xFFF80007FFF8FFF8|- rs1 : x27<br> - rd : x30<br> - imm_val == 3<br> - rs1_h3_val == -21846<br> - rs1_h2_val == 32<br>                                                                                       |[0x80000548]:SCLIP16 t5, s11, 3<br> [0x8000054c]:csrrs s11, vxsat, zero<br> [0x80000550]:sd t5, 192(a0)<br>   |
|  14|[0x800022e0]<br>0xFFFC00030003FFFC|- rs1 : x17<br> - rd : x14<br> - imm_val == 2<br> - rs1_h3_val == -16385<br> - rs1_h2_val == 128<br> - rs1_h0_val == -2049<br>                                                            |[0x8000056c]:SCLIP16 a4, a7, 2<br> [0x80000570]:csrrs a7, vxsat, zero<br> [0x80000574]:sd a4, 208(a0)<br>     |
|  15|[0x800022f0]<br>0x0000000000000000|- rs1 : x30<br> - rd : x0<br> - imm_val == 1<br> - rs1_h3_val == 8<br> - rs1_h2_val == 21845<br> - rs1_h1_val == -8193<br>                                                                |[0x80000590]:SCLIP16 zero, t5, 1<br> [0x80000594]:csrrs t5, vxsat, zero<br> [0x80000598]:sd zero, 224(a0)<br> |
|  16|[0x80002300]<br>0x00000000FFFF0000|- rs1 : x22<br> - rd : x9<br> - imm_val == 0<br> - rs1_h2_val == 1<br> - rs1_h1_val == -257<br>                                                                                           |[0x800005b4]:SCLIP16 s1, s6, 0<br> [0x800005b8]:csrrs s6, vxsat, zero<br> [0x800005bc]:sd s1, 240(a0)<br>     |
|  17|[0x80002310]<br>0x01FF01FFFFEF01FF|- rs1 : x14<br> - rd : x23<br> - rs1_h3_val == 21845<br> - rs1_h0_val == 21845<br>                                                                                                        |[0x800005d8]:SCLIP16 s7, a4, 9<br> [0x800005dc]:csrrs a4, vxsat, zero<br> [0x800005e0]:sd s7, 256(a0)<br>     |
|  18|[0x80002320]<br>0x000100010001FFFE|- rs1 : x24<br> - rd : x29<br> - rs1_h3_val == 32767<br> - rs1_h1_val == 2<br> - rs1_h0_val == -3<br>                                                                                     |[0x800005fc]:SCLIP16 t4, s8, 1<br> [0x80000600]:csrrs s8, vxsat, zero<br> [0x80000604]:sd t4, 272(a0)<br>     |
|  19|[0x80002330]<br>0xFC00FC00FC000000|- rs1 : x29<br> - rd : x11<br> - rs1_h3_val == -8193<br> - rs1_h1_val == -16385<br>                                                                                                       |[0x80000624]:SCLIP16 a1, t4, 10<br> [0x80000628]:csrrs t4, vxsat, zero<br> [0x8000062c]:sd a1, 288(a0)<br>    |
|  20|[0x80002340]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x18<br> - rd : x26<br> - rs1_h3_val == -4097<br> - rs1_h2_val == -129<br> - rs1_h1_val == -4097<br> - rs1_h0_val == -33<br>                                                       |[0x80000648]:SCLIP16 s10, s2, 0<br> [0x8000064c]:csrrs s2, vxsat, zero<br> [0x80000650]:sd s10, 304(a0)<br>   |
|  21|[0x80002350]<br>0xFFFF000000000000|- rs1 : x6<br> - rd : x8<br> - rs1_h3_val == -2049<br> - rs1_h2_val == 8<br> - rs1_h0_val == 32<br>                                                                                       |[0x8000066c]:SCLIP16 fp, t1, 0<br> [0x80000670]:csrrs t1, vxsat, zero<br> [0x80000674]:sd fp, 320(a0)<br>     |
|  22|[0x80002360]<br>0xFF80FF80007F0001|- rs1 : x7<br> - rd : x5<br> - rs1_h3_val == -1025<br> - rs1_h1_val == 512<br>                                                                                                            |[0x80000690]:SCLIP16 t0, t2, 7<br> [0x80000694]:csrrs t2, vxsat, zero<br> [0x80000698]:sd t0, 336(a0)<br>     |
|  23|[0x80002370]<br>0xFFFCFFFFFFFC0003|- rs1 : x20<br> - rd : x1<br> - rs1_h3_val == -513<br> - rs1_h2_val == -1<br> - rs1_h1_val == -513<br>                                                                                    |[0x800006b0]:SCLIP16 ra, s4, 2<br> [0x800006b4]:csrrs s4, vxsat, zero<br> [0x800006b8]:sd ra, 352(a0)<br>     |
|  24|[0x80002380]<br>0xFEFF0003FFEFFFFA|- rs1 : x12<br> - rd : x19<br> - rs1_h3_val == -257<br>                                                                                                                                   |[0x800006dc]:SCLIP16 s3, a2, 14<br> [0x800006e0]:csrrs a2, vxsat, zero<br> [0x800006e4]:sd s3, 0(sp)<br>      |
|  25|[0x80002390]<br>0xFFF0000FFFF0FFF0|- rs1 : x10<br> - rd : x22<br> - rs1_h3_val == -17<br> - rs1_h2_val == 16<br> - rs1_h1_val == -2049<br> - rs1_h0_val == -4097<br>                                                         |[0x80000700]:SCLIP16 s6, a0, 4<br> [0x80000704]:csrrs a0, vxsat, zero<br> [0x80000708]:sd s6, 16(sp)<br>      |
|  26|[0x800023a0]<br>0xFFF7FFDFFFFBFF80|- rs1 : x5<br> - rd : x6<br> - rs1_h3_val == -9<br> - rs1_h2_val == -33<br> - rs1_h0_val == -257<br>                                                                                      |[0x80000724]:SCLIP16 t1, t0, 7<br> [0x80000728]:csrrs t0, vxsat, zero<br> [0x8000072c]:sd t1, 32(sp)<br>      |
|  27|[0x800023b0]<br>0xFFFB000000100040|- rs1 : x1<br> - rd : x10<br> - rs1_h3_val == -5<br> - rs1_h1_val == 16<br>                                                                                                               |[0x80000740]:SCLIP16 a0, ra, 12<br> [0x80000744]:csrrs ra, vxsat, zero<br> [0x80000748]:sd a0, 48(sp)<br>     |
|  28|[0x800023c0]<br>0xFFFEFC000006FFFE|- rs1 : x4<br> - rd : x18<br> - rs1_h3_val == -2<br> - rs1_h0_val == -2<br>                                                                                                               |[0x80000760]:SCLIP16 s2, tp, 10<br> [0x80000764]:csrrs tp, vxsat, zero<br> [0x80000768]:sd s2, 64(sp)<br>     |
|  29|[0x800023d0]<br>0xFFFC0003FFFC0002|- rs1 : x9<br> - rd : x13<br> - rs1_h3_val == -32768<br> - rs1_h0_val == 2<br>                                                                                                            |[0x80000784]:SCLIP16 a3, s1, 2<br> [0x80000788]:csrrs s1, vxsat, zero<br> [0x8000078c]:sd a3, 80(sp)<br>      |
|  30|[0x800023e0]<br>0x00FF000900FFFF00|- rs1 : x26<br> - rd : x25<br> - rs1_h3_val == 16384<br> - rs1_h1_val == 256<br>                                                                                                          |[0x800007b0]:SCLIP16 s9, s10, 8<br> [0x800007b4]:csrrs s10, vxsat, zero<br> [0x800007b8]:sd s9, 96(sp)<br>    |
|  31|[0x800023f0]<br>0x2000FFFEFFEFFFF8|- rs1 : x25<br> - rd : x20<br> - rs1_h3_val == 8192<br> - rs1_h2_val == -2<br>                                                                                                            |[0x800007d4]:SCLIP16 s4, s9, 15<br> [0x800007d8]:csrrs s9, vxsat, zero<br> [0x800007dc]:sd s4, 112(sp)<br>    |
|  32|[0x80002400]<br>0x0001FFFE0001FFFE|- rs1 : x11<br> - rd : x12<br> - rs1_h0_val == -16385<br>                                                                                                                                 |[0x800007f8]:SCLIP16 a2, a1, 1<br> [0x800007fc]:csrrs a1, vxsat, zero<br> [0x80000800]:sd a2, 128(sp)<br>     |
|  33|[0x80002410]<br>0xFFBFFFF6FF7FFC00|- rs1_h1_val == -129<br> - rs1_h0_val == -8193<br>                                                                                                                                        |[0x8000081c]:SCLIP16 t6, t5, 10<br> [0x80000820]:csrrs t5, vxsat, zero<br> [0x80000824]:sd t6, 144(sp)<br>    |
|  34|[0x80002420]<br>0x0001FFFE0001FFFE|- rs1_h2_val == -32768<br> - rs1_h1_val == 4<br> - rs1_h0_val == -1025<br>                                                                                                                |[0x80000840]:SCLIP16 t6, t5, 1<br> [0x80000844]:csrrs t5, vxsat, zero<br> [0x80000848]:sd t6, 160(sp)<br>     |
|  35|[0x80002430]<br>0xFFFC0003FFFCFFFC|- rs1_h1_val == -65<br> - rs1_h0_val == -513<br>                                                                                                                                          |[0x80000864]:SCLIP16 t6, t5, 2<br> [0x80000868]:csrrs t5, vxsat, zero<br> [0x8000086c]:sd t6, 176(sp)<br>     |
|  36|[0x80002440]<br>0xFFEF7FFF2000FF7F|- rs1_h2_val == 32767<br> - rs1_h0_val == -129<br>                                                                                                                                        |[0x80000888]:SCLIP16 t6, t5, 15<br> [0x8000088c]:csrrs t5, vxsat, zero<br> [0x80000890]:sd t6, 192(sp)<br>    |
|  37|[0x80002450]<br>0x0003FFFDFFEFFFEF|- rs1_h2_val == -3<br> - rs1_h0_val == -17<br>                                                                                                                                            |[0x800008a4]:SCLIP16 t6, t5, 6<br> [0x800008a8]:csrrs t5, vxsat, zero<br> [0x800008ac]:sd t6, 208(sp)<br>     |
|  38|[0x80002460]<br>0xFFF80009FFC0FFF7|- rs1_h0_val == -9<br>                                                                                                                                                                    |[0x800008c0]:SCLIP16 t6, t5, 6<br> [0x800008c4]:csrrs t5, vxsat, zero<br> [0x800008c8]:sd t6, 224(sp)<br>     |
|  39|[0x80002470]<br>0xFFFCFFFEFFFCFFFC|- rs1_h1_val == -32768<br> - rs1_h0_val == -5<br>                                                                                                                                         |[0x800008e4]:SCLIP16 t6, t5, 2<br> [0x800008e8]:csrrs t5, vxsat, zero<br> [0x800008ec]:sd t6, 240(sp)<br>     |
|  40|[0x80002480]<br>0xFFEF0000007F007F|- rs1_h0_val == 8192<br>                                                                                                                                                                  |[0x80000904]:SCLIP16 t6, t5, 7<br> [0x80000908]:csrrs t5, vxsat, zero<br> [0x8000090c]:sd t6, 256(sp)<br>     |
|  41|[0x80002490]<br>0xFFBF0040FFF907FF|- rs1_h2_val == 64<br> - rs1_h0_val == 2048<br>                                                                                                                                           |[0x80000928]:SCLIP16 t6, t5, 11<br> [0x8000092c]:csrrs t5, vxsat, zero<br> [0x80000930]:sd t6, 272(sp)<br>    |
|  42|[0x800024a0]<br>0x0003007FFF80007F|- rs1_h1_val == -21846<br> - rs1_h0_val == 1024<br>                                                                                                                                       |[0x8000094c]:SCLIP16 t6, t5, 7<br> [0x80000950]:csrrs t5, vxsat, zero<br> [0x80000954]:sd t6, 288(sp)<br>     |
|  43|[0x800024b0]<br>0xFFF9FFF0000F000F|- rs1_h0_val == 256<br>                                                                                                                                                                   |[0x80000970]:SCLIP16 t6, t5, 4<br> [0x80000974]:csrrs t5, vxsat, zero<br> [0x80000978]:sd t6, 304(sp)<br>     |
|  44|[0x800024c0]<br>0x0003FFFF0004001F|- rs1_h0_val == 128<br>                                                                                                                                                                   |[0x80000994]:SCLIP16 t6, t5, 5<br> [0x80000998]:csrrs t5, vxsat, zero<br> [0x8000099c]:sd t6, 320(sp)<br>     |
|  45|[0x800024d0]<br>0x0010FFDF00000010|- rs1_h0_val == 16<br>                                                                                                                                                                    |[0x800009b0]:SCLIP16 t6, t5, 9<br> [0x800009b4]:csrrs t5, vxsat, zero<br> [0x800009b8]:sd t6, 336(sp)<br>     |
|  46|[0x800024e0]<br>0x00200002007F0008|- rs1_h3_val == 32<br> - rs1_h2_val == 2<br> - rs1_h1_val == 32767<br> - rs1_h0_val == 8<br>                                                                                              |[0x800009d4]:SCLIP16 t6, t5, 7<br> [0x800009d8]:csrrs t5, vxsat, zero<br> [0x800009dc]:sd t6, 352(sp)<br>     |
|  47|[0x800024f0]<br>0x01FFFFFF01FF01FF|- rs1_h3_val == 4096<br>                                                                                                                                                                  |[0x800009f4]:SCLIP16 t6, t5, 9<br> [0x800009f8]:csrrs t5, vxsat, zero<br> [0x800009fc]:sd t6, 368(sp)<br>     |
|  48|[0x80002500]<br>0x010007FFFBFFFFF9|- rs1_h3_val == 256<br> - rs1_h1_val == -1025<br>                                                                                                                                         |[0x80000a10]:SCLIP16 t6, t5, 11<br> [0x80000a14]:csrrs t5, vxsat, zero<br> [0x80000a18]:sd t6, 384(sp)<br>    |
|  49|[0x80002510]<br>0x008000FF00080008|- rs1_h3_val == 128<br>                                                                                                                                                                   |[0x80000a34]:SCLIP16 t6, t5, 8<br> [0x80000a38]:csrrs t5, vxsat, zero<br> [0x80000a3c]:sd t6, 400(sp)<br>     |
|  50|[0x80002520]<br>0x0040FFEF00040001|- rs1_h3_val == 64<br> - rs1_h2_val == -17<br>                                                                                                                                            |[0x80000a58]:SCLIP16 t6, t5, 11<br> [0x80000a5c]:csrrs t5, vxsat, zero<br> [0x80000a60]:sd t6, 416(sp)<br>    |
|  51|[0x80002530]<br>0xFFF8FFF80007FFFC|- rs1_h2_val == -9<br>                                                                                                                                                                    |[0x80000a7c]:SCLIP16 t6, t5, 3<br> [0x80000a80]:csrrs t5, vxsat, zero<br> [0x80000a84]:sd t6, 432(sp)<br>     |
|  52|[0x80002540]<br>0x00050007FFF8FFFB|- rs1_h2_val == 16384<br>                                                                                                                                                                 |[0x80000a98]:SCLIP16 t6, t5, 3<br> [0x80000a9c]:csrrs t5, vxsat, zero<br> [0x80000aa0]:sd t6, 448(sp)<br>     |
|  53|[0x80002550]<br>0x000100010001FFFE|- rs1_h3_val == 4<br> - rs1_h2_val == 4096<br> - rs1_h1_val == 128<br>                                                                                                                    |[0x80000ab8]:SCLIP16 t6, t5, 1<br> [0x80000abc]:csrrs t5, vxsat, zero<br> [0x80000ac0]:sd t6, 464(sp)<br>     |
|  54|[0x80002560]<br>0xFFF80007FFF90007|- rs1_h2_val == 1024<br>                                                                                                                                                                  |[0x80000adc]:SCLIP16 t6, t5, 3<br> [0x80000ae0]:csrrs t5, vxsat, zero<br> [0x80000ae4]:sd t6, 480(sp)<br>     |
|  55|[0x80002570]<br>0xFE0001FFFE00FFF6|- rs1_h2_val == 512<br>                                                                                                                                                                   |[0x80000b00]:SCLIP16 t6, t5, 9<br> [0x80000b04]:csrrs t5, vxsat, zero<br> [0x80000b08]:sd t6, 496(sp)<br>     |
|  56|[0x80002580]<br>0xFFFE0100FFFB01FF|- rs1_h2_val == 256<br>                                                                                                                                                                   |[0x80000b24]:SCLIP16 t6, t5, 9<br> [0x80000b28]:csrrs t5, vxsat, zero<br> [0x80000b2c]:sd t6, 512(sp)<br>     |
|  57|[0x80002590]<br>0x0000FF0000FFFFF9|- rs1_h2_val == -4097<br> - rs1_h1_val == 2048<br>                                                                                                                                        |[0x80000b48]:SCLIP16 t6, t5, 8<br> [0x80000b4c]:csrrs t5, vxsat, zero<br> [0x80000b50]:sd t6, 528(sp)<br>     |
|  58|[0x800025a0]<br>0xF7FF0005FFDFFFFF|- rs1_h1_val == -33<br>                                                                                                                                                                   |[0x80000b6c]:SCLIP16 t6, t5, 12<br> [0x80000b70]:csrrs t5, vxsat, zero<br> [0x80000b74]:sd t6, 544(sp)<br>    |
|  59|[0x800025b0]<br>0xFFFB0002FFF8FFF8|- rs1_h1_val == -9<br>                                                                                                                                                                    |[0x80000b90]:SCLIP16 t6, t5, 3<br> [0x80000b94]:csrrs t5, vxsat, zero<br> [0x80000b98]:sd t6, 560(sp)<br>     |
|  60|[0x800025c0]<br>0xFFFF0000FFFFFFFF|- rs1_h3_val == -1<br> - rs1_h1_val == -3<br>                                                                                                                                             |[0x80000bac]:SCLIP16 t6, t5, 0<br> [0x80000bb0]:csrrs t5, vxsat, zero<br> [0x80000bb4]:sd t6, 576(sp)<br>     |
|  61|[0x800025d0]<br>0x00030040FFFE0100|- rs1_h1_val == -2<br>                                                                                                                                                                    |[0x80000bd0]:SCLIP16 t6, t5, 11<br> [0x80000bd4]:csrrs t5, vxsat, zero<br> [0x80000bd8]:sd t6, 592(sp)<br>    |
|  62|[0x800025e0]<br>0xFFFBFFF7007F0009|- rs1_h1_val == 1024<br>                                                                                                                                                                  |[0x80000bec]:SCLIP16 t6, t5, 7<br> [0x80000bf0]:csrrs t5, vxsat, zero<br> [0x80000bf4]:sd t6, 608(sp)<br>     |
|  63|[0x800025f0]<br>0x0002FFF8FFF80006|- rs1_h3_val == 2<br>                                                                                                                                                                     |[0x80000c10]:SCLIP16 t6, t5, 3<br> [0x80000c14]:csrrs t5, vxsat, zero<br> [0x80000c18]:sd t6, 624(sp)<br>     |
|  64|[0x80002600]<br>0x0001FFF800070007|- rs1_h3_val == 1<br>                                                                                                                                                                     |[0x80000c2c]:SCLIP16 t6, t5, 3<br> [0x80000c30]:csrrs t5, vxsat, zero<br> [0x80000c34]:sd t6, 640(sp)<br>     |
|  65|[0x80002610]<br>0xFFFB0FFF0040F000|- rs1_h1_val == 64<br>                                                                                                                                                                    |[0x80000c4c]:SCLIP16 t6, t5, 12<br> [0x80000c50]:csrrs t5, vxsat, zero<br> [0x80000c54]:sd t6, 656(sp)<br>    |
|  66|[0x80002620]<br>0x0009010000200200|- rs1_h1_val == 32<br>                                                                                                                                                                    |[0x80000c68]:SCLIP16 t6, t5, 14<br> [0x80000c6c]:csrrs t5, vxsat, zero<br> [0x80000c70]:sd t6, 672(sp)<br>    |
|  67|[0x80002630]<br>0x0080FF00FFDF00FF|- rs1_h2_val == -16385<br>                                                                                                                                                                |[0x80000c88]:SCLIP16 t6, t5, 8<br> [0x80000c8c]:csrrs t5, vxsat, zero<br> [0x80000c90]:sd t6, 688(sp)<br>     |
|  68|[0x80002640]<br>0xFFFBFE00FFDF0005|- rs1_h2_val == -8193<br>                                                                                                                                                                 |[0x80000ca8]:SCLIP16 t6, t5, 9<br> [0x80000cac]:csrrs t5, vxsat, zero<br> [0x80000cb0]:sd t6, 704(sp)<br>     |
|  69|[0x80002650]<br>0xFFFEFFFE00010001|- rs1_h1_val == 1<br>                                                                                                                                                                     |[0x80000ccc]:SCLIP16 t6, t5, 1<br> [0x80000cd0]:csrrs t5, vxsat, zero<br> [0x80000cd4]:sd t6, 720(sp)<br>     |
|  70|[0x80002660]<br>0x2000F7FFC000EFFF|- rs1_h2_val == -2049<br>                                                                                                                                                                 |[0x80000cf8]:SCLIP16 t6, t5, 14<br> [0x80000cfc]:csrrs t5, vxsat, zero<br> [0x80000d00]:sd t6, 736(sp)<br>    |
|  71|[0x80002670]<br>0x001F001FFFFF001F|- rs1_h1_val == -1<br>                                                                                                                                                                    |[0x80000d1c]:SCLIP16 t6, t5, 5<br> [0x80000d20]:csrrs t5, vxsat, zero<br> [0x80000d24]:sd t6, 752(sp)<br>     |
|  72|[0x80002680]<br>0xFFEF00400003E000|- rs1_h0_val == -21846<br>                                                                                                                                                                |[0x80000d40]:SCLIP16 t6, t5, 13<br> [0x80000d44]:csrrs t5, vxsat, zero<br> [0x80000d48]:sd t6, 768(sp)<br>    |
|  73|[0x80002690]<br>0xFFFBFEFF0007E000|- rs1_h2_val == -257<br>                                                                                                                                                                  |[0x80000d60]:SCLIP16 t6, t5, 13<br> [0x80000d64]:csrrs t5, vxsat, zero<br> [0x80000d68]:sd t6, 784(sp)<br>    |
|  74|[0x800026a0]<br>0x007FFFFCFF800004|- rs1_h3_val == 512<br> - rs1_h0_val == 4<br>                                                                                                                                             |[0x80000d84]:SCLIP16 t6, t5, 7<br> [0x80000d88]:csrrs t5, vxsat, zero<br> [0x80000d8c]:sd t6, 800(sp)<br>     |
