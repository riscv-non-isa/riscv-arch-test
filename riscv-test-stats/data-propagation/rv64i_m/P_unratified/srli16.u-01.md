
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000d40')]      |
| SIG_REGION                | [('0x80002210', '0x800024a0', '82 dwords')]      |
| COV_LABELS                | srli16.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/srli16.u-01.S    |
| Total Number of coverpoints| 232     |
| Total Coverpoints Hit     | 227      |
| Total Signature Updates   | 81      |
| STAT1                     | 78      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c6c]:SRLI16_U t6, t5, 11
      [0x80000c70]:sd t6, 424(gp)
 -- Signature Address: 0x80002458 Data: 0x0000000100200001
 -- Redundant Coverpoints hit by the op
      - opcode : srli16.u
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 11
      - rs1_h3_val == 0
      - rs1_h2_val == 2048
      - rs1_h1_val == 65535
      - rs1_h0_val == 2048




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cf8]:SRLI16_U t6, t5, 12
      [0x80000cfc]:sd t6, 464(gp)
 -- Signature Address: 0x80002480 Data: 0x0010000200000010
 -- Redundant Coverpoints hit by the op
      - opcode : srli16.u
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 12
      - rs1_h3_val == 65519
      - rs1_h2_val == 8192
      - rs1_h1_val == 0
      - rs1_h0_val == 64511




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d38]:SRLI16_U t6, t5, 8
      [0x80000d3c]:sd t6, 480(gp)
 -- Signature Address: 0x80002490 Data: 0x0080010000000000
 -- Redundant Coverpoints hit by the op
      - opcode : srli16.u
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - imm_val == 8
      - rs1_h3_val == 32768
      - rs1_h2_val == 65519






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

|s.no|            signature             |                                                                            coverpoints                                                                             |                                 code                                  |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x000330003F000000|- opcode : srli16.u<br> - rs1 : x21<br> - rd : x21<br> - rs1 == rd<br> - rs1_h0_val == 0<br> - imm_val == 2<br> - rs1_h2_val == 49151<br> - rs1_h1_val == 64511<br> |[0x800003a8]:SRLI16_U s5, s5, 2<br> [0x800003ac]:sd s5, 0(t1)<br>      |
|   2|[0x80002218]<br>0x0000000000000002|- rs1 : x31<br> - rd : x13<br> - rs1 != rd<br> - imm_val == 15<br> - rs1_h3_val == 1024<br> - rs1_h1_val == 16<br> - rs1_h0_val == 65023<br>                        |[0x800003c8]:SRLI16_U a3, t6, 15<br> [0x800003cc]:sd a3, 8(t1)<br>     |
|   3|[0x80002220]<br>0x0000000400040003|- rs1 : x8<br> - rd : x25<br> - imm_val == 14<br> - rs1_h2_val == 65535<br> - rs1_h1_val == 65533<br> - rs1_h0_val == 43690<br>                                     |[0x800003e4]:SRLI16_U s9, fp, 14<br> [0x800003e8]:sd s9, 16(t1)<br>    |
|   4|[0x80002228]<br>0x0000000000000000|- rs1 : x24<br> - rd : x14<br> - imm_val == 13<br> - rs1_h3_val == 8<br> - rs1_h2_val == 64<br>                                                                     |[0x80000404]:SRLI16_U a4, s8, 13<br> [0x80000408]:sd a4, 24(t1)<br>    |
|   5|[0x80002230]<br>0x0000001000100010|- rs1 : x25<br> - rd : x4<br> - imm_val == 12<br> - rs1_h2_val == 65023<br> - rs1_h1_val == 65535<br> - rs1_h0_val == 65279<br>                                     |[0x80000418]:SRLI16_U tp, s9, 12<br> [0x8000041c]:sd tp, 32(t1)<br>    |
|   6|[0x80002238]<br>0x000B001F00000000|- rs1 : x5<br> - rd : x17<br> - imm_val == 11<br> - rs1_h3_val == 21845<br> - rs1_h2_val == 63487<br>                                                               |[0x80000438]:SRLI16_U a7, t0, 11<br> [0x8000043c]:sd a7, 40(t1)<br>    |
|   7|[0x80002240]<br>0x0008000000080000|- rs1 : x29<br> - rd : x19<br> - imm_val == 10<br> - rs1_h3_val == 8192<br> - rs1_h2_val == 8<br> - rs1_h1_val == 8192<br>                                          |[0x80000454]:SRLI16_U s3, t4, 10<br> [0x80000458]:sd s3, 48(t1)<br>    |
|   8|[0x80002248]<br>0x0055000000800000|- rs1 : x2<br> - rd : x5<br> - imm_val == 9<br> - rs1_h3_val == 43690<br> - rs1_h2_val == 2<br> - rs1_h1_val == 65503<br>                                           |[0x80000474]:SRLI16_U t0, sp, 9<br> [0x80000478]:sd t0, 56(t1)<br>     |
|   9|[0x80002250]<br>0x0010000100000000|- rs1 : x15<br> - rd : x28<br> - imm_val == 8<br> - rs1_h3_val == 4096<br> - rs1_h2_val == 128<br>                                                                  |[0x80000494]:SRLI16_U t3, a5, 8<br> [0x80000498]:sd t3, 64(t1)<br>     |
|  10|[0x80002258]<br>0x0000010000000200|- rs1 : x3<br> - rd : x11<br> - imm_val == 7<br> - rs1_h2_val == 32768<br> - rs1_h0_val == 65534<br>                                                                |[0x800004b0]:SRLI16_U a1, gp, 7<br> [0x800004b4]:sd a1, 72(t1)<br>     |
|  11|[0x80002260]<br>0x0000000003000400|- rs1 : x27<br> - rd : x7<br> - imm_val == 6<br> - rs1_h3_val == 2<br> - rs1_h1_val == 49151<br> - rs1_h0_val == 65531<br>                                          |[0x800004c8]:SRLI16_U t2, s11, 6<br> [0x800004cc]:sd t2, 80(t1)<br>    |
|  12|[0x80002268]<br>0x0004000007F00800|- rs1 : x14<br> - rd : x26<br> - imm_val == 5<br> - rs1_h3_val == 128<br> - rs1_h1_val == 65023<br> - rs1_h0_val == 65533<br>                                       |[0x800004e0]:SRLI16_U s10, a4, 5<br> [0x800004e4]:sd s10, 88(t1)<br>   |
|  13|[0x80002270]<br>0x0FF800000E000001|- rs1 : x28<br> - rd : x16<br> - imm_val == 4<br> - rs1_h3_val == 65407<br> - rs1_h2_val == 4<br> - rs1_h1_val == 57343<br>                                         |[0x80000500]:SRLI16_U a6, t3, 4<br> [0x80000504]:sd a6, 96(t1)<br>     |
|  14|[0x80002278]<br>0x000410001FE00000|- rs1 : x20<br> - rd : x3<br> - imm_val == 3<br> - rs1_h3_val == 32<br> - rs1_h1_val == 65279<br> - rs1_h0_val == 1<br>                                             |[0x80000520]:SRLI16_U gp, s4, 3<br> [0x80000524]:sd gp, 104(t1)<br>    |
|  15|[0x80002280]<br>0x8000008010000004|- rs1 : x7<br> - rd : x1<br> - imm_val == 1<br> - rs1_h3_val == 65535<br> - rs1_h2_val == 256<br>                                                                   |[0x80000538]:SRLI16_U ra, t2, 1<br> [0x8000053c]:sd ra, 112(t1)<br>    |
|  16|[0x80002288]<br>0x000DFFFD5555000E|- rs1 : x10<br> - rd : x15<br> - imm_val == 0<br> - rs1_h2_val == 65533<br> - rs1_h1_val == 21845<br>                                                               |[0x80000558]:SRLI16_U a5, a0, 0<br> [0x8000055c]:sd a5, 120(t1)<br>    |
|  17|[0x80002290]<br>0x0010000000150000|- rs1 : x23<br> - rd : x10<br> - rs1_h3_val == 32767<br> - rs1_h2_val == 16<br> - rs1_h1_val == 43690<br>                                                           |[0x80000580]:SRLI16_U a0, s7, 11<br> [0x80000584]:sd a0, 128(t1)<br>   |
|  18|[0x80002298]<br>0xBFFF0005000F0400|- rs1 : x12<br> - rd : x18<br> - rs1_h3_val == 49151<br> - rs1_h0_val == 1024<br>                                                                                   |[0x800005a0]:SRLI16_U s2, a2, 0<br> [0x800005a4]:sd s2, 136(t1)<br>    |
|  19|[0x800022a0]<br>0x7000008000057000|- rs1 : x19<br> - rd : x23<br> - rs1_h3_val == 57343<br> - rs1_h0_val == 57343<br>                                                                                  |[0x800005c0]:SRLI16_U s7, s3, 1<br> [0x800005c4]:sd s7, 144(t1)<br>    |
|  20|[0x800022a8]<br>0x003C0000003F0000|- rs1 : x11<br> - rd : x22<br> - rs1_h3_val == 61439<br>                                                                                                            |[0x800005e0]:SRLI16_U s6, a1, 10<br> [0x800005e4]:sd s6, 152(t1)<br>   |
|  21|[0x800022b0]<br>0x007C0000007C0000|- rs1 : x6<br> - rd : x29<br> - rs1_h3_val == 63487<br> - rs1_h2_val == 1<br> - rs1_h1_val == 63487<br>                                                             |[0x8000060c]:SRLI16_U t4, t1, 9<br> [0x80000610]:sd t4, 0(gp)<br>      |
|  22|[0x800022b8]<br>0x0FC005550FFC1000|- rs1 : x26<br> - rd : x6<br> - rs1_h3_val == 64511<br> - rs1_h2_val == 21845<br> - rs1_h1_val == 65471<br>                                                         |[0x8000062c]:SRLI16_U t1, s10, 4<br> [0x80000630]:sd t1, 8(gp)<br>     |
|  23|[0x800022c0]<br>0x0000000000000000|- rs1 : x0<br> - rd : x9<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br>                                                                      |[0x8000064c]:SRLI16_U s1, zero, 0<br> [0x80000650]:sd s1, 16(gp)<br>   |
|  24|[0x800022c8]<br>0x0020001C00000020|- rs1 : x1<br> - rd : x12<br> - rs1_h3_val == 65279<br> - rs1_h2_val == 57343<br> - rs1_h1_val == 256<br> - rs1_h0_val == 65503<br>                                 |[0x8000066c]:SRLI16_U a2, ra, 11<br> [0x80000670]:sd a2, 24(gp)<br>    |
|  25|[0x800022d0]<br>0x07FE07E007F80001|- rs1 : x16<br> - rd : x8<br> - rs1_h3_val == 65471<br> - rs1_h2_val == 64511<br>                                                                                   |[0x8000068c]:SRLI16_U fp, a6, 5<br> [0x80000690]:sd fp, 32(gp)<br>     |
|  26|[0x800022d8]<br>0x0020000000000002|- rs1 : x13<br> - rd : x30<br> - rs1_h3_val == 65503<br> - rs1_h1_val == 512<br> - rs1_h0_val == 4096<br>                                                           |[0x800006a8]:SRLI16_U t5, a3, 11<br> [0x800006ac]:sd t5, 40(gp)<br>    |
|  27|[0x800022e0]<br>0x0020000000000000|- rs1 : x9<br> - rd : x31<br> - rs1_h3_val == 65519<br> - rs1_h1_val == 2<br>                                                                                       |[0x800006c8]:SRLI16_U t6, s1, 11<br> [0x800006cc]:sd t6, 48(gp)<br>    |
|  28|[0x800022e8]<br>0x0008000800080000|- rs1 : x17<br> - rd : x2<br> - rs1_h3_val == 65527<br> - rs1_h2_val == 65407<br>                                                                                   |[0x800006e8]:SRLI16_U sp, a7, 13<br> [0x800006ec]:sd sp, 56(gp)<br>    |
|  29|[0x800022f0]<br>0x0400040003FC0001|- rs1 : x4<br> - rd : x27<br> - rs1_h3_val == 65531<br> - rs1_h2_val == 65534<br> - rs1_h0_val == 64<br>                                                            |[0x80000708]:SRLI16_U s11, tp, 6<br> [0x8000070c]:sd s11, 64(gp)<br>   |
|  30|[0x800022f8]<br>0x200000081FE00400|- rs1 : x18<br> - rd : x20<br> - rs1_h3_val == 65533<br> - rs1_h0_val == 8192<br>                                                                                   |[0x80000724]:SRLI16_U s4, s2, 3<br> [0x80000728]:sd s4, 72(gp)<br>     |
|  31|[0x80002300]<br>0xFFFE000DFFFD000C|- rs1 : x22<br> - rd : x24<br> - rs1_h3_val == 65534<br>                                                                                                            |[0x80000744]:SRLI16_U s8, s6, 0<br> [0x80000748]:sd s8, 80(gp)<br>     |
|  32|[0x80002308]<br>0x0000000000000000|- rs1 : x30<br> - rd : x0<br> - rs1_h3_val == 32768<br> - rs1_h2_val == 65519<br>                                                                                   |[0x80000764]:SRLI16_U zero, t5, 8<br> [0x80000768]:sd zero, 88(gp)<br> |
|  33|[0x80002310]<br>0x020007E007000000|- rs1_h3_val == 16384<br>                                                                                                                                           |[0x8000078c]:SRLI16_U t6, t5, 5<br> [0x80000790]:sd t6, 96(gp)<br>     |
|  34|[0x80002318]<br>0x0004000100000001|- rs1_h3_val == 2048<br> - rs1_h2_val == 512<br> - rs1_h0_val == 256<br>                                                                                            |[0x800007ac]:SRLI16_U t6, t5, 9<br> [0x800007b0]:sd t6, 104(gp)<br>    |
|  35|[0x80002320]<br>0x010020007F000007|- rs1_h3_val == 512<br> - rs1_h2_val == 16384<br>                                                                                                                   |[0x800007cc]:SRLI16_U t6, t5, 1<br> [0x800007d0]:sd t6, 112(gp)<br>    |
|  36|[0x80002328]<br>0x0008000100000006|- rs1_h2_val == 8192<br> - rs1_h1_val == 1<br> - rs1_h0_val == 49151<br>                                                                                            |[0x800007e8]:SRLI16_U t6, t5, 13<br> [0x800007ec]:sd t6, 120(gp)<br>   |
|  37|[0x80002330]<br>0x0002000000020002|- rs1_h0_val == 61439<br>                                                                                                                                           |[0x80000808]:SRLI16_U t6, t5, 15<br> [0x8000080c]:sd t6, 128(gp)<br>   |
|  38|[0x80002338]<br>0x000000AB000001F0|- rs1_h0_val == 63487<br>                                                                                                                                           |[0x80000828]:SRLI16_U t6, t5, 7<br> [0x8000082c]:sd t6, 136(gp)<br>    |
|  39|[0x80002340]<br>0x010000FC010000FC|- rs1_h0_val == 64511<br>                                                                                                                                           |[0x8000083c]:SRLI16_U t6, t5, 8<br> [0x80000840]:sd t6, 144(gp)<br>    |
|  40|[0x80002348]<br>0x0000015501FC01FF|- rs1_h2_val == 43690<br> - rs1_h0_val == 65407<br>                                                                                                                 |[0x80000854]:SRLI16_U t6, t5, 7<br> [0x80000858]:sd t6, 152(gp)<br>    |
|  41|[0x80002350]<br>0x0000004000020040|- rs1_h2_val == 65471<br> - rs1_h1_val == 2048<br> - rs1_h0_val == 65471<br>                                                                                        |[0x80000874]:SRLI16_U t6, t5, 10<br> [0x80000878]:sd t6, 160(gp)<br>   |
|  42|[0x80002358]<br>0x0002000500000008|- rs1_h0_val == 65519<br>                                                                                                                                           |[0x8000089c]:SRLI16_U t6, t5, 13<br> [0x800008a0]:sd t6, 168(gp)<br>   |
|  43|[0x80002360]<br>0x00000FF800010FFF|- rs1_h3_val == 4<br> - rs1_h0_val == 65527<br>                                                                                                                     |[0x800008bc]:SRLI16_U t6, t5, 4<br> [0x800008c0]:sd t6, 176(gp)<br>    |
|  44|[0x80002368]<br>0x00000040003E0020|- rs1_h2_val == 65527<br> - rs1_h0_val == 32768<br>                                                                                                                 |[0x800008d8]:SRLI16_U t6, t5, 10<br> [0x800008dc]:sd t6, 184(gp)<br>   |
|  45|[0x80002370]<br>0x0003000008002000|- rs1_h1_val == 4096<br> - rs1_h0_val == 16384<br>                                                                                                                  |[0x800008f4]:SRLI16_U t6, t5, 1<br> [0x800008f8]:sd t6, 192(gp)<br>    |
|  46|[0x80002378]<br>0x00800F800E000080|- rs1_h0_val == 2048<br>                                                                                                                                            |[0x80000914]:SRLI16_U t6, t5, 4<br> [0x80000918]:sd t6, 200(gp)<br>    |
|  47|[0x80002380]<br>0x0001070002000010|- rs1_h1_val == 16384<br> - rs1_h0_val == 512<br>                                                                                                                   |[0x8000092c]:SRLI16_U t6, t5, 5<br> [0x80000930]:sd t6, 208(gp)<br>    |
|  48|[0x80002388]<br>0xFFBF000BDFFF0080|- rs1_h0_val == 128<br>                                                                                                                                             |[0x8000094c]:SRLI16_U t6, t5, 0<br> [0x80000950]:sd t6, 216(gp)<br>    |
|  49|[0x80002390]<br>0x3C0008003FFF0008|- rs1_h1_val == 65531<br> - rs1_h0_val == 32<br>                                                                                                                    |[0x8000096c]:SRLI16_U t6, t5, 2<br> [0x80000970]:sd t6, 224(gp)<br>    |
|  50|[0x80002398]<br>0x0000000000400000|- rs1_h3_val == 64<br> - rs1_h0_val == 16<br>                                                                                                                       |[0x8000098c]:SRLI16_U t6, t5, 10<br> [0x80000990]:sd t6, 232(gp)<br>   |
|  51|[0x800023a0]<br>0x0002002000000000|- rs1_h0_val == 8<br>                                                                                                                                               |[0x800009ac]:SRLI16_U t6, t5, 11<br> [0x800009b0]:sd t6, 240(gp)<br>   |
|  52|[0x800023a8]<br>0x0000004000000000|- rs1_h0_val == 4<br>                                                                                                                                               |[0x800009c8]:SRLI16_U t6, t5, 9<br> [0x800009cc]:sd t6, 248(gp)<br>    |
|  53|[0x800023b0]<br>0x7E007FF010000100|- rs1_h2_val == 65503<br>                                                                                                                                           |[0x800009e0]:SRLI16_U t6, t5, 1<br> [0x800009e4]:sd t6, 256(gp)<br>    |
|  54|[0x800023b8]<br>0x0004000400000004|- rs1_h2_val == 65531<br>                                                                                                                                           |[0x80000a00]:SRLI16_U t6, t5, 14<br> [0x80000a04]:sd t6, 264(gp)<br>   |
|  55|[0x800023c0]<br>0x0000004000000000|- rs1_h2_val == 4096<br>                                                                                                                                            |[0x80000a1c]:SRLI16_U t6, t5, 6<br> [0x80000a20]:sd t6, 272(gp)<br>    |
|  56|[0x800023c8]<br>0x0010000100000000|- rs1_h2_val == 2048<br>                                                                                                                                            |[0x80000a3c]:SRLI16_U t6, t5, 12<br> [0x80000a40]:sd t6, 280(gp)<br>   |
|  57|[0x800023d0]<br>0x0000000000040010|- rs1_h2_val == 1024<br>                                                                                                                                            |[0x80000a5c]:SRLI16_U t6, t5, 12<br> [0x80000a60]:sd t6, 288(gp)<br>   |
|  58|[0x800023d8]<br>0x07FE0001001007FC|- rs1_h2_val == 32<br>                                                                                                                                              |[0x80000a7c]:SRLI16_U t6, t5, 5<br> [0x80000a80]:sd t6, 296(gp)<br>    |
|  59|[0x800023e0]<br>0x0020002000000000|- rs1_h1_val == 8<br>                                                                                                                                               |[0x80000a9c]:SRLI16_U t6, t5, 11<br> [0x80000aa0]:sd t6, 304(gp)<br>   |
|  60|[0x800023e8]<br>0x00801FE020000000|- rs1_h2_val == 65279<br> - rs1_h0_val == 2<br>                                                                                                                     |[0x80000abc]:SRLI16_U t6, t5, 3<br> [0x80000ac0]:sd t6, 312(gp)<br>    |
|  61|[0x800023f0]<br>0x0FC00FF808000001|- rs1_h1_val == 32767<br>                                                                                                                                           |[0x80000adc]:SRLI16_U t6, t5, 4<br> [0x80000ae0]:sd t6, 320(gp)<br>    |
|  62|[0x800023f8]<br>0x0000000000020001|- rs1_h1_val == 61439<br>                                                                                                                                           |[0x80000afc]:SRLI16_U t6, t5, 15<br> [0x80000b00]:sd t6, 328(gp)<br>   |
|  63|[0x80002400]<br>0x0100000900058000|- rs1_h0_val == 65535<br>                                                                                                                                           |[0x80000b1c]:SRLI16_U t6, t5, 1<br> [0x80000b20]:sd t6, 336(gp)<br>    |
|  64|[0x80002408]<br>0x000415553FE00003|- rs1_h1_val == 65407<br>                                                                                                                                           |[0x80000b3c]:SRLI16_U t6, t5, 2<br> [0x80000b40]:sd t6, 344(gp)<br>    |
|  65|[0x80002410]<br>0x0000000100020000|- rs1_h1_val == 65519<br>                                                                                                                                           |[0x80000b5c]:SRLI16_U t6, t5, 15<br> [0x80000b60]:sd t6, 352(gp)<br>   |
|  66|[0x80002418]<br>0x03F8001004000155|- rs1_h3_val == 65023<br> - rs1_h1_val == 65527<br> - rs1_h0_val == 21845<br>                                                                                       |[0x80000b7c]:SRLI16_U t6, t5, 6<br> [0x80000b80]:sd t6, 360(gp)<br>    |
|  67|[0x80002420]<br>0x0001000000780040|- rs1_h3_val == 256<br> - rs1_h0_val == 32767<br>                                                                                                                   |[0x80000b9c]:SRLI16_U t6, t5, 9<br> [0x80000ba0]:sd t6, 368(gp)<br>    |
|  68|[0x80002428]<br>0x0000080010000000|- rs1_h1_val == 65534<br>                                                                                                                                           |[0x80000bbc]:SRLI16_U t6, t5, 4<br> [0x80000bc0]:sd t6, 376(gp)<br>    |
|  69|[0x80002430]<br>0x0000000400020000|- rs1_h1_val == 32768<br>                                                                                                                                           |[0x80000bd4]:SRLI16_U t6, t5, 14<br> [0x80000bd8]:sd t6, 384(gp)<br>   |
|  70|[0x80002438]<br>0x0000000000060000|- rs1_h3_val == 16<br>                                                                                                                                              |[0x80000bf4]:SRLI16_U t6, t5, 13<br> [0x80000bf8]:sd t6, 392(gp)<br>   |
|  71|[0x80002440]<br>0xFFDFFFF70400000A|- rs1_h1_val == 1024<br>                                                                                                                                            |[0x80000c0c]:SRLI16_U t6, t5, 0<br> [0x80000c10]:sd t6, 400(gp)<br>    |
|  72|[0x80002448]<br>0x0000000000010000|- rs1_h3_val == 1<br>                                                                                                                                               |[0x80000c2c]:SRLI16_U t6, t5, 5<br> [0x80000c30]:sd t6, 408(gp)<br>    |
|  73|[0x80002450]<br>0x0002001000020000|- rs1_h1_val == 128<br>                                                                                                                                             |[0x80000c4c]:SRLI16_U t6, t5, 6<br> [0x80000c50]:sd t6, 416(gp)<br>    |
|  74|[0x80002460]<br>0x0000004000000000|- rs1_h1_val == 64<br>                                                                                                                                              |[0x80000c84]:SRLI16_U t6, t5, 10<br> [0x80000c88]:sd t6, 432(gp)<br>   |
|  75|[0x80002468]<br>0x0000000000000000|- rs1_h1_val == 32<br>                                                                                                                                              |[0x80000ca4]:SRLI16_U t6, t5, 8<br> [0x80000ca8]:sd t6, 440(gp)<br>    |
|  76|[0x80002470]<br>0x0AAB100000000100|- rs1_h1_val == 4<br>                                                                                                                                               |[0x80000cc0]:SRLI16_U t6, t5, 4<br> [0x80000cc4]:sd t6, 448(gp)<br>    |
|  77|[0x80002478]<br>0x003F003C00000004|- rs1_h2_val == 61439<br>                                                                                                                                           |[0x80000cdc]:SRLI16_U t6, t5, 10<br> [0x80000ce0]:sd t6, 456(gp)<br>   |
|  78|[0x80002488]<br>0x0000010000000000|- rs1_h2_val == 32767<br>                                                                                                                                           |[0x80000d18]:SRLI16_U t6, t5, 7<br> [0x80000d1c]:sd t6, 472(gp)<br>    |
