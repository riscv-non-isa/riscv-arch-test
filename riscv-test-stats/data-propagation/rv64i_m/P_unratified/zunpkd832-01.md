
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000c90')]      |
| SIG_REGION                | [('0x80002210', '0x80002410', '64 dwords')]      |
| COV_LABELS                | zunpkd832      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/zunpkd832-01.S    |
| Total Number of coverpoints| 229     |
| Total Coverpoints Hit     | 225      |
| Total Signature Updates   | 63      |
| STAT1                     | 60      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000aec]:ZUNPKD832 t6, t5
      [0x80000af0]:sd t6, 232(ra)
 -- Signature Address: 0x800023a8 Data: 0x00100000000100FE
 -- Redundant Coverpoints hit by the op
      - opcode : zunpkd832
      - rs1 : x30
      - rd : x31
      - rs1_b7_val == 16
      - rs1_b6_val == 0
      - rs1_b5_val == 223
      - rs1_b4_val == 255
      - rs1_b3_val == 1
      - rs1_b2_val == 254
      - rs1_b0_val == 16




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bac]:ZUNPKD832 t6, t5
      [0x80000bb0]:sd t6, 272(ra)
 -- Signature Address: 0x800023d0 Data: 0x0005001100060000
 -- Redundant Coverpoints hit by the op
      - opcode : zunpkd832
      - rs1 : x30
      - rd : x31
      - rs1_b5_val == 223
      - rs1_b2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c68]:ZUNPKD832 t6, t5
      [0x80000c6c]:sd t6, 312(ra)
 -- Signature Address: 0x800023f8 Data: 0x0009000700AA0007
 -- Redundant Coverpoints hit by the op
      - opcode : zunpkd832
      - rs1 : x30
      - rd : x31
      - rs1_b0_val == 0
      - rs1_b5_val == 8
      - rs1_b4_val == 253
      - rs1_b3_val == 170
      - rs1_b1_val == 64






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

|s.no|            signature             |                                                                                 coverpoints                                                                                  |                                code                                |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000000|- opcode : zunpkd832<br> - rs1 : x18<br> - rd : x0<br> - rs1_b0_val == 0<br> - rs1_b5_val == 8<br> - rs1_b4_val == 253<br> - rs1_b3_val == 170<br> - rs1_b1_val == 64<br>     |[0x800003b4]:ZUNPKD832 zero, s2<br> [0x800003b8]:sd zero, 0(s1)<br> |
|   2|[0x80002218]<br>0x00AA00AA00DF0013|- rs1 : x11<br> - rd : x8<br> - rs1_b7_val == 170<br> - rs1_b6_val == 170<br> - rs1_b5_val == 191<br> - rs1_b3_val == 223<br>                                                 |[0x800003dc]:ZUNPKD832 fp, a1<br> [0x800003e0]:sd fp, 8(s1)<br>     |
|   3|[0x80002220]<br>0x005500F7000300BF|- rs1 : x5<br> - rd : x23<br> - rs1_b7_val == 85<br> - rs1_b6_val == 247<br> - rs1_b5_val == 32<br> - rs1_b4_val == 16<br> - rs1_b2_val == 191<br>                            |[0x80000404]:ZUNPKD832 s7, t0<br> [0x80000408]:sd s7, 16(s1)<br>    |
|   4|[0x80002228]<br>0x007F000E00FE00F7|- rs1 : x31<br> - rd : x20<br> - rs1_b7_val == 127<br> - rs1_b5_val == 1<br> - rs1_b4_val == 254<br> - rs1_b3_val == 254<br> - rs1_b2_val == 247<br>                          |[0x80000424]:ZUNPKD832 s4, t6<br> [0x80000428]:sd s4, 24(s1)<br>    |
|   5|[0x80002230]<br>0x00BF0009000C0010|- rs1 : x26<br> - rd : x16<br> - rs1_b7_val == 191<br> - rs1_b4_val == 191<br> - rs1_b2_val == 16<br>                                                                         |[0x8000044c]:ZUNPKD832 a6, s10<br> [0x80000450]:sd a6, 32(s1)<br>   |
|   6|[0x80002238]<br>0x00DF001000FF00F7|- rs1 : x22<br> - rd : x28<br> - rs1_b7_val == 223<br> - rs1_b6_val == 16<br> - rs1_b5_val == 223<br> - rs1_b4_val == 128<br> - rs1_b3_val == 255<br> - rs1_b1_val == 254<br> |[0x8000046c]:ZUNPKD832 t3, s6<br> [0x80000470]:sd t3, 40(s1)<br>    |
|   7|[0x80002240]<br>0x00EF00BF000B0055|- rs1 : x28<br> - rd : x29<br> - rs1_b7_val == 239<br> - rs1_b6_val == 191<br> - rs1_b4_val == 4<br> - rs1_b2_val == 85<br> - rs1_b1_val == 2<br>                             |[0x80000494]:ZUNPKD832 t4, t3<br> [0x80000498]:sd t4, 48(s1)<br>    |
|   8|[0x80002248]<br>0x00F7000D00BF0006|- rs1 : x23<br> - rd : x14<br> - rs1_b7_val == 247<br> - rs1_b4_val == 2<br> - rs1_b3_val == 191<br> - rs1_b0_val == 1<br>                                                    |[0x800004bc]:ZUNPKD832 a4, s7<br> [0x800004c0]:sd a4, 56(s1)<br>    |
|   9|[0x80002250]<br>0x00FB000A00FF0010|- rs1 : x24<br> - rd : x25<br> - rs1_b7_val == 251<br> - rs1_b5_val == 64<br> - rs1_b4_val == 32<br> - rs1_b0_val == 170<br>                                                  |[0x800004e4]:ZUNPKD832 s9, s8<br> [0x800004e8]:sd s9, 64(s1)<br>    |
|  10|[0x80002258]<br>0x00FD0005000F0001|- rs1 : x1<br> - rd : x2<br> - rs1_b7_val == 253<br> - rs1_b5_val == 85<br> - rs1_b2_val == 1<br> - rs1_b1_val == 251<br>                                                     |[0x80000504]:ZUNPKD832 sp, ra<br> [0x80000508]:sd sp, 72(s1)<br>    |
|  11|[0x80002260]<br>0x00FE000900070005|- rs1 : x4<br> - rd : x3<br> - rs1_b7_val == 254<br> - rs1_b5_val == 4<br> - rs1_b1_val == 191<br>                                                                            |[0x80000524]:ZUNPKD832 gp, tp<br> [0x80000528]:sd gp, 80(s1)<br>    |
|  12|[0x80002268]<br>0x0080001300400003|- rs1 : x7<br> - rd : x17<br> - rs1_b7_val == 128<br> - rs1_b5_val == 251<br> - rs1_b3_val == 64<br> - rs1_b1_val == 1<br> - rs1_b0_val == 8<br>                              |[0x8000054c]:ZUNPKD832 a7, t2<br> [0x80000550]:sd a7, 88(s1)<br>    |
|  13|[0x80002270]<br>0x0040000100DF0055|- rs1 : x16<br> - rd : x4<br> - rs1_b7_val == 64<br> - rs1_b6_val == 1<br> - rs1_b5_val == 170<br> - rs1_b1_val == 8<br>                                                      |[0x80000574]:ZUNPKD832 tp, a6<br> [0x80000578]:sd tp, 96(s1)<br>    |
|  14|[0x80002278]<br>0x002000FD00EF0040|- rs1 : x14<br> - rd : x30<br> - rs1_b7_val == 32<br> - rs1_b6_val == 253<br> - rs1_b5_val == 254<br> - rs1_b3_val == 239<br> - rs1_b2_val == 64<br>                          |[0x80000594]:ZUNPKD832 t5, a4<br> [0x80000598]:sd t5, 104(s1)<br>   |
|  15|[0x80002280]<br>0x001000DF00030013|- rs1 : x2<br> - rd : x12<br> - rs1_b7_val == 16<br> - rs1_b6_val == 223<br>                                                                                                  |[0x800005b4]:ZUNPKD832 a2, sp<br> [0x800005b8]:sd a2, 112(s1)<br>   |
|  16|[0x80002288]<br>0x00080005004000DF|- rs1 : x6<br> - rd : x27<br> - rs1_b7_val == 8<br> - rs1_b5_val == 247<br> - rs1_b4_val == 127<br> - rs1_b2_val == 223<br> - rs1_b1_val == 170<br>                           |[0x800005dc]:ZUNPKD832 s11, t1<br> [0x800005e0]:sd s11, 120(s1)<br> |
|  17|[0x80002290]<br>0x0004000B00FB0080|- rs1 : x3<br> - rd : x24<br> - rs1_b7_val == 4<br> - rs1_b3_val == 251<br> - rs1_b2_val == 128<br> - rs1_b0_val == 223<br>                                                   |[0x800005fc]:ZUNPKD832 s8, gp<br> [0x80000600]:sd s8, 128(s1)<br>   |
|  18|[0x80002298]<br>0x00020001000100AA|- rs1 : x10<br> - rd : x21<br> - rs1_b7_val == 2<br> - rs1_b4_val == 64<br> - rs1_b3_val == 1<br> - rs1_b2_val == 170<br> - rs1_b1_val == 127<br> - rs1_b0_val == 239<br>     |[0x8000061c]:ZUNPKD832 s5, a0<br> [0x80000620]:sd s5, 136(s1)<br>   |
|  19|[0x800022a0]<br>0x0001000C000D00DF|- rs1 : x21<br> - rd : x18<br> - rs1_b7_val == 1<br> - rs1_b4_val == 223<br> - rs1_b0_val == 4<br>                                                                            |[0x80000644]:ZUNPKD832 s2, s5<br> [0x80000648]:sd s2, 144(s1)<br>   |
|  20|[0x800022a8]<br>0x00FF0012000D0012|- rs1 : x29<br> - rd : x6<br> - rs1_b7_val == 255<br> - rs1_b1_val == 32<br>                                                                                                  |[0x80000664]:ZUNPKD832 t1, t4<br> [0x80000668]:sd t1, 152(s1)<br>   |
|  21|[0x800022b0]<br>0x0000002000AA0010|- rs1 : x20<br> - rd : x7<br> - rs1_b7_val == 0<br> - rs1_b6_val == 32<br> - rs1_b5_val == 128<br>                                                                            |[0x80000684]:ZUNPKD832 t2, s4<br> [0x80000688]:sd t2, 160(s1)<br>   |
|  22|[0x800022b8]<br>0x00100055000900BF|- rs1 : x19<br> - rd : x1<br> - rs1_b6_val == 85<br> - rs1_b1_val == 0<br> - rs1_b0_val == 32<br>                                                                             |[0x800006ac]:ZUNPKD832 ra, s3<br> [0x800006b0]:sd ra, 168(s1)<br>   |
|  23|[0x800022c0]<br>0x0010007F002000FD|- rs1 : x30<br> - rd : x26<br> - rs1_b6_val == 127<br> - rs1_b3_val == 32<br> - rs1_b2_val == 253<br>                                                                         |[0x800006dc]:ZUNPKD832 s10, t5<br> [0x800006e0]:sd s10, 0(ra)<br>   |
|  24|[0x800022c8]<br>0x007F00EF0000000C|- rs1 : x12<br> - rd : x19<br> - rs1_b6_val == 239<br> - rs1_b3_val == 0<br> - rs1_b1_val == 85<br>                                                                           |[0x800006fc]:ZUNPKD832 s3, a2<br> [0x80000700]:sd s3, 8(ra)<br>     |
|  25|[0x800022d0]<br>0x00AA00FB00050005|- rs1 : x15<br> - rd : x11<br> - rs1_b6_val == 251<br> - rs1_b1_val == 247<br> - rs1_b0_val == 127<br>                                                                        |[0x80000724]:ZUNPKD832 a1, a5<br> [0x80000728]:sd a1, 16(ra)<br>    |
|  26|[0x800022d8]<br>0x0005000F000E0040|- rs1 : x27<br> - rd : x15<br> - rs1_b4_val == 255<br> - rs1_b1_val == 253<br> - rs1_b0_val == 253<br>                                                                        |[0x80000744]:ZUNPKD832 a5, s11<br> [0x80000748]:sd a5, 24(ra)<br>   |
|  27|[0x800022e0]<br>0x0000000000000000|- rs1 : x0<br> - rd : x22<br> - rs1_b6_val == 0<br> - rs1_b5_val == 0<br> - rs1_b4_val == 0<br> - rs1_b2_val == 0<br>                                                         |[0x80000764]:ZUNPKD832 s6, zero<br> [0x80000768]:sd s6, 32(ra)<br>  |
|  28|[0x800022e8]<br>0x005500FD000A0013|- rs1 : x9<br> - rd : x13<br> - rs1_b1_val == 16<br>                                                                                                                          |[0x8000078c]:ZUNPKD832 a3, s1<br> [0x80000790]:sd a3, 40(ra)<br>    |
|  29|[0x800022f0]<br>0x00EF00AA001000FD|- rs1 : x8<br> - rd : x9<br> - rs1_b3_val == 16<br> - rs1_b1_val == 4<br> - rs1_b0_val == 247<br>                                                                             |[0x800007b4]:ZUNPKD832 s1, fp<br> [0x800007b8]:sd s1, 48(ra)<br>    |
|  30|[0x800022f8]<br>0x000E0004001300F7|- rs1 : x13<br> - rd : x31<br> - rs1_b6_val == 4<br> - rs1_b4_val == 251<br> - rs1_b1_val == 255<br>                                                                          |[0x800007d4]:ZUNPKD832 t6, a3<br> [0x800007d8]:sd t6, 56(ra)<br>    |
|  31|[0x80002300]<br>0x00F700AA000900F7|- rs1 : x25<br> - rd : x5<br> - rs1_b0_val == 85<br>                                                                                                                          |[0x800007fc]:ZUNPKD832 t0, s9<br> [0x80000800]:sd t0, 64(ra)<br>    |
|  32|[0x80002308]<br>0x0006000A00FF007F|- rs1 : x17<br> - rd : x10<br> - rs1_b2_val == 127<br> - rs1_b0_val == 191<br>                                                                                                |[0x80000824]:ZUNPKD832 a0, a7<br> [0x80000828]:sd a0, 72(ra)<br>    |
|  33|[0x80002310]<br>0x001200DF000300FE|- rs1_b2_val == 254<br> - rs1_b1_val == 128<br> - rs1_b0_val == 251<br>                                                                                                       |[0x80000844]:ZUNPKD832 t6, t5<br> [0x80000848]:sd t6, 80(ra)<br>    |
|  34|[0x80002318]<br>0x00BF00010006000E|- rs1_b0_val == 128<br>                                                                                                                                                       |[0x8000086c]:ZUNPKD832 t6, t5<br> [0x80000870]:sd t6, 88(ra)<br>    |
|  35|[0x80002320]<br>0x00FF000D00050012|- rs1_b4_val == 1<br> - rs1_b0_val == 64<br>                                                                                                                                  |[0x80000894]:ZUNPKD832 t6, t5<br> [0x80000898]:sd t6, 96(ra)<br>    |
|  36|[0x80002328]<br>0x000300FD000500FD|- rs1_b0_val == 16<br>                                                                                                                                                        |[0x800008b4]:ZUNPKD832 t6, t5<br> [0x800008b8]:sd t6, 104(ra)<br>   |
|  37|[0x80002330]<br>0x0000000D00550001|- rs1_b5_val == 127<br> - rs1_b4_val == 170<br> - rs1_b3_val == 85<br> - rs1_b0_val == 2<br>                                                                                  |[0x800008d4]:ZUNPKD832 t6, t5<br> [0x800008d8]:sd t6, 112(ra)<br>   |
|  38|[0x80002338]<br>0x0004008000060002|- rs1_b6_val == 128<br> - rs1_b5_val == 253<br> - rs1_b2_val == 2<br>                                                                                                         |[0x800008f4]:ZUNPKD832 t6, t5<br> [0x800008f8]:sd t6, 120(ra)<br>   |
|  39|[0x80002340]<br>0x0012000700FE00FD|- rs1_b4_val == 85<br> - rs1_b0_val == 255<br>                                                                                                                                |[0x8000091c]:ZUNPKD832 t6, t5<br> [0x80000920]:sd t6, 128(ra)<br>   |
|  40|[0x80002348]<br>0x000D000C0006000D|- rs1_b5_val == 239<br> - rs1_b4_val == 239<br>                                                                                                                               |[0x8000093c]:ZUNPKD832 t6, t5<br> [0x80000940]:sd t6, 136(ra)<br>   |
|  41|[0x80002350]<br>0x0020000500020013|- rs1_b4_val == 247<br> - rs1_b3_val == 2<br>                                                                                                                                 |[0x80000960]:ZUNPKD832 t6, t5<br> [0x80000964]:sd t6, 144(ra)<br>   |
|  42|[0x80002358]<br>0x00DF00DF00FE0003|- rs1_b4_val == 8<br>                                                                                                                                                         |[0x80000988]:ZUNPKD832 t6, t5<br> [0x8000098c]:sd t6, 152(ra)<br>   |
|  43|[0x80002360]<br>0x0055000700FF0004|- rs1_b2_val == 4<br>                                                                                                                                                         |[0x800009b0]:ZUNPKD832 t6, t5<br> [0x800009b4]:sd t6, 160(ra)<br>   |
|  44|[0x80002368]<br>0x000C000D007F00FB|- rs1_b3_val == 127<br> - rs1_b2_val == 251<br>                                                                                                                               |[0x800009d0]:ZUNPKD832 t6, t5<br> [0x800009d4]:sd t6, 168(ra)<br>   |
|  45|[0x80002370]<br>0x0003000200F70020|- rs1_b6_val == 2<br> - rs1_b3_val == 247<br> - rs1_b2_val == 32<br>                                                                                                          |[0x800009f8]:ZUNPKD832 t6, t5<br> [0x800009fc]:sd t6, 176(ra)<br>   |
|  46|[0x80002378]<br>0x0000000F00FD0002|- rs1_b3_val == 253<br>                                                                                                                                                       |[0x80000a18]:ZUNPKD832 t6, t5<br> [0x80000a1c]:sd t6, 184(ra)<br>   |
|  47|[0x80002380]<br>0x0055001000800006|- rs1_b3_val == 128<br>                                                                                                                                                       |[0x80000a3c]:ZUNPKD832 t6, t5<br> [0x80000a40]:sd t6, 192(ra)<br>   |
|  48|[0x80002388]<br>0x00FD0040000F00FD|- rs1_b6_val == 64<br>                                                                                                                                                        |[0x80000a5c]:ZUNPKD832 t6, t5<br> [0x80000a60]:sd t6, 200(ra)<br>   |
|  49|[0x80002390]<br>0x0008000600040010|- rs1_b3_val == 4<br>                                                                                                                                                         |[0x80000a7c]:ZUNPKD832 t6, t5<br> [0x80000a80]:sd t6, 208(ra)<br>   |
|  50|[0x80002398]<br>0x0003000800BF0011|- rs1_b6_val == 8<br>                                                                                                                                                         |[0x80000a9c]:ZUNPKD832 t6, t5<br> [0x80000aa0]:sd t6, 216(ra)<br>   |
|  51|[0x800023a0]<br>0x000F00FF000E0009|- rs1_b6_val == 255<br>                                                                                                                                                       |[0x80000ac4]:ZUNPKD832 t6, t5<br> [0x80000ac8]:sd t6, 224(ra)<br>   |
|  52|[0x800023b0]<br>0x000C00EF005500EF|- rs1_b2_val == 239<br>                                                                                                                                                       |[0x80000b14]:ZUNPKD832 t6, t5<br> [0x80000b18]:sd t6, 240(ra)<br>   |
|  53|[0x800023b8]<br>0x0008000A00040008|- rs1_b2_val == 8<br> - rs1_b1_val == 223<br>                                                                                                                                 |[0x80000b3c]:ZUNPKD832 t6, t5<br> [0x80000b40]:sd t6, 248(ra)<br>   |
|  54|[0x800023c0]<br>0x00090006000F00BF|- rs1_b5_val == 16<br>                                                                                                                                                        |[0x80000b64]:ZUNPKD832 t6, t5<br> [0x80000b68]:sd t6, 256(ra)<br>   |
|  55|[0x800023c8]<br>0x00AA000000FE00FF|- rs1_b2_val == 255<br>                                                                                                                                                       |[0x80000b8c]:ZUNPKD832 t6, t5<br> [0x80000b90]:sd t6, 264(ra)<br>   |
|  56|[0x800023d8]<br>0x000C008000DF00FD|- rs1_b5_val == 2<br>                                                                                                                                                         |[0x80000bcc]:ZUNPKD832 t6, t5<br> [0x80000bd0]:sd t6, 280(ra)<br>   |
|  57|[0x800023e0]<br>0x000B000C000300AA|- rs1_b5_val == 255<br>                                                                                                                                                       |[0x80000bf4]:ZUNPKD832 t6, t5<br> [0x80000bf8]:sd t6, 288(ra)<br>   |
|  58|[0x800023e8]<br>0x000C00DF000E0040|- rs1_b1_val == 239<br>                                                                                                                                                       |[0x80000c1c]:ZUNPKD832 t6, t5<br> [0x80000c20]:sd t6, 296(ra)<br>   |
|  59|[0x800023f0]<br>0x00F7000A0008007F|- rs1_b3_val == 8<br>                                                                                                                                                         |[0x80000c44]:ZUNPKD832 t6, t5<br> [0x80000c48]:sd t6, 304(ra)<br>   |
|  60|[0x80002400]<br>0x000900FE00DF0012|- rs1_b6_val == 254<br> - rs1_b0_val == 254<br>                                                                                                                               |[0x80000c88]:ZUNPKD832 t6, t5<br> [0x80000c8c]:sd t6, 320(ra)<br>   |
