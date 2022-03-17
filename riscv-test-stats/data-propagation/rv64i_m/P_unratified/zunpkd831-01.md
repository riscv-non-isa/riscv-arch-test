
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
| SIG_REGION                | [('0x80002210', '0x80002430', '68 dwords')]      |
| COV_LABELS                | zunpkd831      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/zunpkd831-01.S    |
| Total Number of coverpoints| 229     |
| Total Coverpoints Hit     | 225      |
| Total Signature Updates   | 67      |
| STAT1                     | 66      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d18]:ZUNPKD831 t6, t5
      [0x80000d1c]:sd t6, 368(t1)
 -- Signature Address: 0x80002420 Data: 0x00AA000C0013000A
 -- Redundant Coverpoints hit by the op
      - opcode : zunpkd831
      - rs1 : x30
      - rd : x31
      - rs1_b7_val == 170
      - rs1_b6_val == 127
      - rs1_b4_val == 8






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

|s.no|            signature             |                                                                                                       coverpoints                                                                                                        |                                code                                 |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x000600FE00030011|- opcode : zunpkd831<br> - rs1 : x24<br> - rd : x17<br> - rs1_b0_val == 0<br> - rs1_b6_val == 191<br> - rs1_b5_val == 254<br> - rs1_b4_val == 1<br> - rs1_b2_val == 247<br>                                               |[0x800003b8]:ZUNPKD831 a7, s8<br> [0x800003bc]:sd a7, 0(a3)<br>      |
|   2|[0x80002218]<br>0x00AA000C0001000F|- rs1 : x1<br> - rd : x23<br> - rs1_b7_val == 170<br> - rs1_b4_val == 128<br> - rs1_b3_val == 1<br> - rs1_b0_val == 247<br>                                                                                               |[0x800003e0]:ZUNPKD831 s7, ra<br> [0x800003e4]:sd s7, 8(a3)<br>      |
|   3|[0x80002220]<br>0x0055000A00DF000A|- rs1 : x6<br> - rd : x18<br> - rs1_b7_val == 85<br> - rs1_b6_val == 1<br> - rs1_b3_val == 223<br> - rs1_b2_val == 4<br> - rs1_b0_val == 239<br>                                                                          |[0x80000408]:ZUNPKD831 s2, t1<br> [0x8000040c]:sd s2, 16(a3)<br>     |
|   4|[0x80002228]<br>0x007F000E00120002|- rs1 : x11<br> - rd : x25<br> - rs1_b7_val == 127<br> - rs1_b4_val == 0<br> - rs1_b2_val == 128<br> - rs1_b1_val == 2<br>                                                                                                |[0x80000428]:ZUNPKD831 s9, a1<br> [0x8000042c]:sd s9, 24(a3)<br>     |
|   5|[0x80002230]<br>0x00BF00BF00070012|- rs1 : x3<br> - rd : x27<br> - rs1_b7_val == 191<br> - rs1_b6_val == 170<br> - rs1_b5_val == 191<br>                                                                                                                     |[0x80000450]:ZUNPKD831 s11, gp<br> [0x80000454]:sd s11, 32(a3)<br>   |
|   6|[0x80002238]<br>0x00DF00F700FE000B|- rs1 : x30<br> - rd : x14<br> - rs1_b7_val == 223<br> - rs1_b5_val == 247<br> - rs1_b3_val == 254<br> - rs1_b0_val == 255<br>                                                                                            |[0x80000478]:ZUNPKD831 a4, t5<br> [0x8000047c]:sd a4, 40(a3)<br>     |
|   7|[0x80002240]<br>0x00EF000000000000|- rs1 : x16<br> - rd : x9<br> - rs1_b7_val == 239<br> - rs1_b6_val == 255<br> - rs1_b5_val == 0<br> - rs1_b3_val == 0<br> - rs1_b2_val == 85<br> - rs1_b1_val == 0<br>                                                    |[0x80000498]:ZUNPKD831 s1, a6<br> [0x8000049c]:sd s1, 48(a3)<br>     |
|   8|[0x80002248]<br>0x00F7008000010020|- rs1 : x23<br> - rd : x22<br> - rs1_b7_val == 247<br> - rs1_b6_val == 254<br> - rs1_b5_val == 128<br> - rs1_b2_val == 127<br> - rs1_b1_val == 32<br>                                                                     |[0x800004c0]:ZUNPKD831 s6, s7<br> [0x800004c4]:sd s6, 56(a3)<br>     |
|   9|[0x80002250]<br>0x00FB000E00130080|- rs1 : x18<br> - rd : x26<br> - rs1_b7_val == 251<br> - rs1_b6_val == 85<br> - rs1_b1_val == 128<br>                                                                                                                     |[0x800004dc]:ZUNPKD831 s10, s2<br> [0x800004e0]:sd s10, 64(a3)<br>   |
|  10|[0x80002258]<br>0x00FD001200000001|- rs1 : x14<br> - rd : x12<br> - rs1_b7_val == 253<br> - rs1_b4_val == 223<br> - rs1_b1_val == 1<br> - rs1_b0_val == 4<br>                                                                                                |[0x800004fc]:ZUNPKD831 a2, a4<br> [0x80000500]:sd a2, 72(a3)<br>     |
|  11|[0x80002260]<br>0x00FE000F00070000|- rs1 : x31<br> - rd : x29<br> - rs1_b7_val == 254<br> - rs1_b6_val == 128<br> - rs1_b2_val == 255<br> - rs1_b0_val == 32<br>                                                                                             |[0x8000051c]:ZUNPKD831 t4, t6<br> [0x80000520]:sd t4, 80(a3)<br>     |
|  12|[0x80002268]<br>0x008000AA000E0001|- rs1 : x20<br> - rd : x7<br> - rs1_b7_val == 128<br> - rs1_b5_val == 170<br> - rs1_b2_val == 223<br>                                                                                                                     |[0x80000544]:ZUNPKD831 t2, s4<br> [0x80000548]:sd t2, 88(a3)<br>     |
|  13|[0x80002270]<br>0x004000BF000200EF|- rs1 : x10<br> - rd : x21<br> - rs1_b7_val == 64<br> - rs1_b6_val == 32<br> - rs1_b4_val == 255<br> - rs1_b3_val == 2<br> - rs1_b2_val == 251<br> - rs1_b1_val == 239<br>                                                |[0x8000056c]:ZUNPKD831 s5, a0<br> [0x80000570]:sd s5, 96(a3)<br>     |
|  14|[0x80002278]<br>0x0020001200AA0012|- rs1 : x7<br> - rd : x5<br> - rs1_b7_val == 32<br> - rs1_b3_val == 170<br>                                                                                                                                               |[0x80000594]:ZUNPKD831 t0, t2<br> [0x80000598]:sd t0, 104(a3)<br>    |
|  15|[0x80002280]<br>0x001000200020000A|- rs1 : x2<br> - rd : x6<br> - rs1_b7_val == 16<br> - rs1_b5_val == 32<br> - rs1_b3_val == 32<br>                                                                                                                         |[0x800005bc]:ZUNPKD831 t1, sp<br> [0x800005c0]:sd t1, 112(a3)<br>    |
|  16|[0x80002288]<br>0x000800050006007F|- rs1 : x15<br> - rd : x30<br> - rs1_b7_val == 8<br> - rs1_b2_val == 2<br> - rs1_b1_val == 127<br>                                                                                                                        |[0x800005e4]:ZUNPKD831 t5, a5<br> [0x800005e8]:sd t5, 120(a3)<br>    |
|  17|[0x80002290]<br>0x00040010001000BF|- rs1 : x17<br> - rd : x10<br> - rs1_b7_val == 4<br> - rs1_b6_val == 64<br> - rs1_b5_val == 16<br> - rs1_b4_val == 239<br> - rs1_b3_val == 16<br> - rs1_b2_val == 170<br> - rs1_b1_val == 191<br> - rs1_b0_val == 223<br> |[0x80000604]:ZUNPKD831 a0, a7<br> [0x80000608]:sd a0, 128(a3)<br>    |
|  18|[0x80002298]<br>0x0002007F00550013|- rs1 : x21<br> - rd : x4<br> - rs1_b7_val == 2<br> - rs1_b5_val == 127<br> - rs1_b3_val == 85<br>                                                                                                                        |[0x8000062c]:ZUNPKD831 tp, s5<br> [0x80000630]:sd tp, 136(a3)<br>    |
|  19|[0x800022a0]<br>0x0000000000000000|- rs1 : x0<br> - rd : x11<br> - rs1_b7_val == 0<br> - rs1_b6_val == 0<br> - rs1_b2_val == 0<br>                                                                                                                           |[0x80000654]:ZUNPKD831 a1, zero<br> [0x80000658]:sd a1, 144(a3)<br>  |
|  20|[0x800022a8]<br>0x00FF0055000D007F|- rs1 : x8<br> - rd : x24<br> - rs1_b7_val == 255<br> - rs1_b6_val == 4<br> - rs1_b5_val == 85<br> - rs1_b4_val == 251<br>                                                                                                |[0x80000674]:ZUNPKD831 s8, fp<br> [0x80000678]:sd s8, 152(a3)<br>    |
|  21|[0x800022b0]<br>0x000000FF00020002|- rs1 : x25<br> - rd : x2<br> - rs1_b5_val == 255<br>                                                                                                                                                                     |[0x8000069c]:ZUNPKD831 sp, s9<br> [0x800006a0]:sd sp, 0(t1)<br>      |
|  22|[0x800022b8]<br>0x0000000000000000|- rs1 : x26<br> - rd : x0<br> - rs1_b6_val == 127<br> - rs1_b4_val == 8<br>                                                                                                                                               |[0x800006c4]:ZUNPKD831 zero, s10<br> [0x800006c8]:sd zero, 8(t1)<br> |
|  23|[0x800022c0]<br>0x00FD008000070080|- rs1 : x12<br> - rd : x31<br> - rs1_b6_val == 223<br>                                                                                                                                                                    |[0x800006e4]:ZUNPKD831 t6, a2<br> [0x800006e8]:sd t6, 16(t1)<br>     |
|  24|[0x800022c8]<br>0x0004001100000010|- rs1 : x19<br> - rd : x15<br> - rs1_b6_val == 239<br> - rs1_b2_val == 253<br> - rs1_b1_val == 16<br> - rs1_b0_val == 2<br>                                                                                               |[0x8000070c]:ZUNPKD831 a5, s3<br> [0x80000710]:sd a5, 24(t1)<br>     |
|  25|[0x800022d0]<br>0x004000130005000F|- rs1 : x5<br> - rd : x1<br> - rs1_b6_val == 247<br>                                                                                                                                                                      |[0x80000734]:ZUNPKD831 ra, t0<br> [0x80000738]:sd ra, 32(t1)<br>     |
|  26|[0x800022d8]<br>0x00FB001300020007|- rs1 : x29<br> - rd : x8<br> - rs1_b6_val == 251<br> - rs1_b0_val == 127<br>                                                                                                                                             |[0x80000754]:ZUNPKD831 fp, t4<br> [0x80000758]:sd fp, 40(t1)<br>     |
|  27|[0x800022e0]<br>0x000F000A00EF0008|- rs1 : x27<br> - rd : x19<br> - rs1_b6_val == 253<br> - rs1_b4_val == 191<br> - rs1_b3_val == 239<br> - rs1_b1_val == 8<br> - rs1_b0_val == 1<br>                                                                        |[0x8000077c]:ZUNPKD831 s3, s11<br> [0x80000780]:sd s3, 48(t1)<br>    |
|  28|[0x800022e8]<br>0x000B000E00FB00FB|- rs1 : x9<br> - rd : x16<br> - rs1_b4_val == 16<br> - rs1_b3_val == 251<br> - rs1_b1_val == 251<br>                                                                                                                      |[0x8000079c]:ZUNPKD831 a6, s1<br> [0x800007a0]:sd a6, 56(t1)<br>     |
|  29|[0x800022f0]<br>0x00F7000E002000FD|- rs1 : x22<br> - rd : x3<br> - rs1_b1_val == 253<br> - rs1_b0_val == 251<br>                                                                                                                                             |[0x800007bc]:ZUNPKD831 gp, s6<br> [0x800007c0]:sd gp, 64(t1)<br>     |
|  30|[0x800022f8]<br>0x000D0000000500FE|- rs1 : x13<br> - rd : x28<br> - rs1_b1_val == 254<br>                                                                                                                                                                    |[0x800007dc]:ZUNPKD831 t3, a3<br> [0x800007e0]:sd t3, 72(t1)<br>     |
|  31|[0x80002300]<br>0x00FE000900040040|- rs1 : x4<br> - rd : x13<br> - rs1_b3_val == 4<br> - rs1_b1_val == 64<br>                                                                                                                                                |[0x800007fc]:ZUNPKD831 a3, tp<br> [0x80000800]:sd a3, 80(t1)<br>     |
|  32|[0x80002308]<br>0x00FB00F7000F0004|- rs1 : x28<br> - rd : x20<br> - rs1_b2_val == 64<br> - rs1_b1_val == 4<br>                                                                                                                                               |[0x8000081c]:ZUNPKD831 s4, t3<br> [0x80000820]:sd s4, 88(t1)<br>     |
|  33|[0x80002310]<br>0x000F00BF000400FF|- rs1_b1_val == 255<br>                                                                                                                                                                                                   |[0x8000083c]:ZUNPKD831 t6, t5<br> [0x80000840]:sd t6, 96(t1)<br>     |
|  34|[0x80002318]<br>0x005500400006000D|- rs1_b5_val == 64<br> - rs1_b4_val == 247<br> - rs1_b0_val == 170<br>                                                                                                                                                    |[0x80000864]:ZUNPKD831 t6, t5<br> [0x80000868]:sd t6, 104(t1)<br>    |
|  35|[0x80002320]<br>0x00FF0011000800AA|- rs1_b3_val == 8<br> - rs1_b1_val == 170<br> - rs1_b0_val == 85<br>                                                                                                                                                      |[0x8000088c]:ZUNPKD831 t6, t5<br> [0x80000890]:sd t6, 112(t1)<br>    |
|  36|[0x80002328]<br>0x0004000D00050012|- rs1_b0_val == 191<br>                                                                                                                                                                                                   |[0x800008b4]:ZUNPKD831 t6, t5<br> [0x800008b8]:sd t6, 120(t1)<br>    |
|  37|[0x80002330]<br>0x000400060055000B|- rs1_b0_val == 253<br>                                                                                                                                                                                                   |[0x800008dc]:ZUNPKD831 t6, t5<br> [0x800008e0]:sd t6, 128(t1)<br>    |
|  38|[0x80002338]<br>0x000E00010080000B|- rs1_b6_val == 16<br> - rs1_b5_val == 1<br> - rs1_b4_val == 254<br> - rs1_b3_val == 128<br> - rs1_b2_val == 16<br> - rs1_b0_val == 254<br>                                                                               |[0x800008fc]:ZUNPKD831 t6, t5<br> [0x80000900]:sd t6, 136(t1)<br>    |
|  39|[0x80002340]<br>0x007F00FE000900FE|- rs1_b0_val == 128<br>                                                                                                                                                                                                   |[0x8000091c]:ZUNPKD831 t6, t5<br> [0x80000920]:sd t6, 144(t1)<br>    |
|  40|[0x80002348]<br>0x0011000500BF0007|- rs1_b4_val == 253<br> - rs1_b3_val == 191<br> - rs1_b0_val == 64<br>                                                                                                                                                    |[0x8000093c]:ZUNPKD831 t6, t5<br> [0x80000940]:sd t6, 152(t1)<br>    |
|  41|[0x80002350]<br>0x001300AA000F0040|- rs1_b0_val == 16<br>                                                                                                                                                                                                    |[0x80000964]:ZUNPKD831 t6, t5<br> [0x80000968]:sd t6, 160(t1)<br>    |
|  42|[0x80002358]<br>0x0006000F0055000D|- rs1_b4_val == 64<br> - rs1_b2_val == 32<br>                                                                                                                                                                             |[0x8000098c]:ZUNPKD831 t6, t5<br> [0x80000990]:sd t6, 168(t1)<br>    |
|  43|[0x80002360]<br>0x00DF000F00010008|- rs1_b4_val == 32<br>                                                                                                                                                                                                    |[0x800009b4]:ZUNPKD831 t6, t5<br> [0x800009b8]:sd t6, 176(t1)<br>    |
|  44|[0x80002368]<br>0x000A00550001000B|- rs1_b4_val == 4<br>                                                                                                                                                                                                     |[0x800009dc]:ZUNPKD831 t6, t5<br> [0x800009e0]:sd t6, 184(t1)<br>    |
|  45|[0x80002370]<br>0x000400BF00130020|- rs1_b4_val == 2<br>                                                                                                                                                                                                     |[0x80000a04]:ZUNPKD831 t6, t5<br> [0x80000a08]:sd t6, 192(t1)<br>    |
|  46|[0x80002378]<br>0x00DF00FF007F00FD|- rs1_b3_val == 127<br>                                                                                                                                                                                                   |[0x80000a24]:ZUNPKD831 t6, t5<br> [0x80000a28]:sd t6, 200(t1)<br>    |
|  47|[0x80002380]<br>0x0004002000F70003|- rs1_b4_val == 85<br> - rs1_b3_val == 247<br>                                                                                                                                                                            |[0x80000a44]:ZUNPKD831 t6, t5<br> [0x80000a48]:sd t6, 208(t1)<br>    |
|  48|[0x80002388]<br>0x00EF0004000E0001|- rs1_b5_val == 4<br> - rs1_b0_val == 8<br>                                                                                                                                                                               |[0x80000a64]:ZUNPKD831 t6, t5<br> [0x80000a68]:sd t6, 216(t1)<br>    |
|  49|[0x80002390]<br>0x00FB00F700400000|- rs1_b3_val == 64<br>                                                                                                                                                                                                    |[0x80000a84]:ZUNPKD831 t6, t5<br> [0x80000a88]:sd t6, 224(t1)<br>    |
|  50|[0x80002398]<br>0x007F00FF001300FF|- rs1_b6_val == 8<br>                                                                                                                                                                                                     |[0x80000aac]:ZUNPKD831 t6, t5<br> [0x80000ab0]:sd t6, 232(t1)<br>    |
|  51|[0x800023a0]<br>0x00DF000D00FF000B|- rs1_b3_val == 255<br> - rs1_b2_val == 8<br>                                                                                                                                                                             |[0x80000ad4]:ZUNPKD831 t6, t5<br> [0x80000ad8]:sd t6, 240(t1)<br>    |
|  52|[0x800023a8]<br>0x0008001100040007|- rs1_b6_val == 2<br>                                                                                                                                                                                                     |[0x80000af4]:ZUNPKD831 t6, t5<br> [0x80000af8]:sd t6, 248(t1)<br>    |
|  53|[0x800023b0]<br>0x00100010001100FD|- rs1_b2_val == 191<br>                                                                                                                                                                                                   |[0x80000b14]:ZUNPKD831 t6, t5<br> [0x80000b18]:sd t6, 256(t1)<br>    |
|  54|[0x800023b8]<br>0x000E000B000F0013|- rs1_b2_val == 239<br>                                                                                                                                                                                                   |[0x80000b3c]:ZUNPKD831 t6, t5<br> [0x80000b40]:sd t6, 264(t1)<br>    |
|  55|[0x800023c0]<br>0x000500DF00080013|- rs1_b5_val == 223<br>                                                                                                                                                                                                   |[0x80000b64]:ZUNPKD831 t6, t5<br> [0x80000b68]:sd t6, 272(t1)<br>    |
|  56|[0x800023c8]<br>0x00FD00EF00060055|- rs1_b5_val == 239<br> - rs1_b1_val == 85<br>                                                                                                                                                                            |[0x80000b8c]:ZUNPKD831 t6, t5<br> [0x80000b90]:sd t6, 280(t1)<br>    |
|  57|[0x800023d0]<br>0x0003000E00070012|- rs1_b2_val == 254<br>                                                                                                                                                                                                   |[0x80000bac]:ZUNPKD831 t6, t5<br> [0x80000bb0]:sd t6, 288(t1)<br>    |
|  58|[0x800023d8]<br>0x001200FB000E00DF|- rs1_b5_val == 251<br> - rs1_b1_val == 223<br>                                                                                                                                                                           |[0x80000bd4]:ZUNPKD831 t6, t5<br> [0x80000bd8]:sd t6, 296(t1)<br>    |
|  59|[0x800023e0]<br>0x007F00FD000A0055|- rs1_b5_val == 253<br>                                                                                                                                                                                                   |[0x80000bfc]:ZUNPKD831 t6, t5<br> [0x80000c00]:sd t6, 304(t1)<br>    |
|  60|[0x800023e8]<br>0x00DF00BF00AA0001|- rs1_b2_val == 1<br>                                                                                                                                                                                                     |[0x80000c24]:ZUNPKD831 t6, t5<br> [0x80000c28]:sd t6, 312(t1)<br>    |
|  61|[0x800023f0]<br>0x00FF000600FE00FD|- rs1_b4_val == 127<br>                                                                                                                                                                                                   |[0x80000c40]:ZUNPKD831 t6, t5<br> [0x80000c44]:sd t6, 320(t1)<br>    |
|  62|[0x800023f8]<br>0x0055000200000003|- rs1_b5_val == 2<br>                                                                                                                                                                                                     |[0x80000c60]:ZUNPKD831 t6, t5<br> [0x80000c64]:sd t6, 328(t1)<br>    |
|  63|[0x80002400]<br>0x0003000800100002|- rs1_b5_val == 8<br>                                                                                                                                                                                                     |[0x80000c80]:ZUNPKD831 t6, t5<br> [0x80000c84]:sd t6, 336(t1)<br>    |
|  64|[0x80002408]<br>0x00FD000D00020004|- rs1_b4_val == 170<br>                                                                                                                                                                                                   |[0x80000ca0]:ZUNPKD831 t6, t5<br> [0x80000ca4]:sd t6, 344(t1)<br>    |
|  65|[0x80002410]<br>0x0020000700F700F7|- rs1_b1_val == 247<br>                                                                                                                                                                                                   |[0x80000cc8]:ZUNPKD831 t6, t5<br> [0x80000ccc]:sd t6, 352(t1)<br>    |
|  66|[0x80002418]<br>0x0001000400FD000D|- rs1_b7_val == 1<br> - rs1_b3_val == 253<br>                                                                                                                                                                             |[0x80000cf0]:ZUNPKD831 t6, t5<br> [0x80000cf4]:sd t6, 360(t1)<br>    |
