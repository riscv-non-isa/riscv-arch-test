
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000ef0')]      |
| SIG_REGION                | [('0x80002210', '0x800024b0', '84 dwords')]      |
| COV_LABELS                | srl16.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/srl16.u-01.S    |
| Total Number of coverpoints| 262     |
| Total Coverpoints Hit     | 256      |
| Total Signature Updates   | 84      |
| STAT1                     | 80      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000afc]:SRL16_U t6, t5, t4
      [0x80000b00]:sd t6, 296(s3)
 -- Signature Address: 0x800023c0 Data: 0x0000010001000000
 -- Redundant Coverpoints hit by the op
      - opcode : srl16.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 8
      - rs1_h3_val == 0
      - rs1_h2_val == 65519
      - rs1_h1_val == 65471




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bc4]:SRL16_U t6, t5, t4
      [0x80000bc8]:sd t6, 344(s3)
 -- Signature Address: 0x800023f0 Data: 0x0001000000000002
 -- Redundant Coverpoints hit by the op
      - opcode : srl16.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val == 43690
      - rs1_h2_val == 0
      - rs1_h1_val == 512
      - rs1_h0_val == 65531




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ec0]:SRL16_U t6, t5, t4
      [0x80000ec4]:sd t6, 520(s3)
 -- Signature Address: 0x800024a0 Data: 0x0030002B00200000
 -- Redundant Coverpoints hit by the op
      - opcode : srl16.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val == 49151
      - rs1_h2_val == 43690
      - rs1_h1_val == 32767
      - rs2_val == 10




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ee4]:SRL16_U t6, t5, t4
      [0x80000ee8]:sd t6, 528(s3)
 -- Signature Address: 0x800024a8 Data: 0x0010001000010010
 -- Redundant Coverpoints hit by the op
      - opcode : srl16.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val == 128
      - rs1_h2_val == 128
      - rs1_h1_val == 8
      - rs1_h0_val == 128






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

|s.no|            signature             |                                                                                   coverpoints                                                                                    |                                  code                                  |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000000000000|- opcode : srl16.u<br> - rs1 : x21<br> - rs2 : x21<br> - rd : x31<br> - rs1 == rs2 != rd<br> - rs2_val == 5<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br> |[0x800003ac]:SRL16_U t6, s5, s5<br> [0x800003b0]:sd t6, 0(tp)<br>       |
|   2|[0x80002218]<br>0x0000000000000000|- rs1 : x24<br> - rs2 : x24<br> - rd : x24<br> - rs1 == rs2 == rd<br> - rs2_val == 7<br>                                                                                          |[0x800003cc]:SRL16_U s8, s8, s8<br> [0x800003d0]:sd s8, 8(tp)<br>       |
|   3|[0x80002220]<br>0x000000000000001E|- rs1 : x6<br> - rs2 : x20<br> - rd : x13<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 11<br> - rs1_h2_val == 128<br> - rs1_h0_val == 61439<br>                 |[0x800003ec]:SRL16_U a3, t1, s4<br> [0x800003f0]:sd a3, 16(tp)<br>      |
|   4|[0x80002228]<br>0x0000000000040000|- rs1 : x22<br> - rs2 : x2<br> - rd : x22<br> - rs1 == rd != rs2<br> - rs2_val == 13<br> - rs1_h3_val == 2<br> - rs1_h1_val == 32767<br>                                          |[0x80000410]:SRL16_U s6, s6, sp<br> [0x80000414]:sd s6, 24(tp)<br>      |
|   5|[0x80002230]<br>0x0003000000000004|- rs1 : x28<br> - rs2 : x30<br> - rd : x30<br> - rs2 == rd != rs1<br> - rs2_val == 14<br> - rs1_h3_val == 43690<br> - rs1_h1_val == 512<br> - rs1_h0_val == 65023<br>             |[0x80000434]:SRL16_U t5, t3, t5<br> [0x80000438]:sd t5, 32(tp)<br>      |
|   6|[0x80002238]<br>0x00FC010000000020|- rs1 : x1<br> - rs2 : x17<br> - rd : x3<br> - rs2_val == 8<br> - rs1_h3_val == 64511<br> - rs1_h2_val == 65531<br> - rs1_h0_val == 8192<br>                                      |[0x80000454]:SRL16_U gp, ra, a7<br> [0x80000458]:sd gp, 40(tp)<br>      |
|   7|[0x80002240]<br>0x0555000000000000|- rs1 : x29<br> - rs2 : x19<br> - rd : x8<br> - rs2_val == 4<br> - rs1_h3_val == 21845<br>                                                                                        |[0x80000478]:SRL16_U fp, t4, s3<br> [0x8000047c]:sd fp, 48(tp)<br>      |
|   8|[0x80002248]<br>0x0002000500020003|- rs1 : x19<br> - rs2 : x3<br> - rd : x16<br> - rs2_val == 2<br> - rs1_h3_val == 8<br>                                                                                            |[0x8000049c]:SRL16_U a6, s3, gp<br> [0x800004a0]:sd a6, 56(tp)<br>      |
|   9|[0x80002250]<br>0x000800047C008000|- rs1 : x8<br> - rs2 : x25<br> - rd : x21<br> - rs2_val == 1<br> - rs1_h3_val == 16<br> - rs1_h1_val == 63487<br> - rs1_h0_val == 65535<br>                                       |[0x800004b8]:SRL16_U s5, fp, s9<br> [0x800004bc]:sd s5, 64(tp)<br>      |
|  10|[0x80002258]<br>0x0040000000010000|- rs1 : x7<br> - rs2 : x26<br> - rd : x19<br> - rs1_h3_val == 32767<br>                                                                                                           |[0x800004dc]:SRL16_U s3, t2, s10<br> [0x800004e0]:sd s3, 72(tp)<br>     |
|  11|[0x80002260]<br>0xBFFFAAAA7FFF0012|- rs1 : x13<br> - rs2 : x0<br> - rd : x5<br> - rs1_h3_val == 49151<br> - rs1_h2_val == 43690<br>                                                                                  |[0x80000508]:SRL16_U t0, a3, zero<br> [0x8000050c]:sd t0, 80(tp)<br>    |
|  12|[0x80002268]<br>0xDFFFFFFEAAAA0008|- rs1 : x26<br> - rs2 : x28<br> - rd : x18<br> - rs1_h3_val == 57343<br> - rs1_h2_val == 65534<br> - rs1_h1_val == 43690<br> - rs1_h0_val == 8<br>                                |[0x80000530]:SRL16_U s2, s10, t3<br> [0x80000534]:sd s2, 88(tp)<br>     |
|  13|[0x80002270]<br>0x780000067FFE7000|- rs1 : x23<br> - rs2 : x1<br> - rd : x6<br> - rs1_h3_val == 61439<br> - rs1_h1_val == 65531<br> - rs1_h0_val == 57343<br>                                                        |[0x80000554]:SRL16_U t1, s7, ra<br> [0x80000558]:sd t1, 96(tp)<br>      |
|  14|[0x80002278]<br>0xF7FF0012000A4000|- rs1 : x12<br> - rs2 : x10<br> - rd : x23<br> - rs1_h3_val == 63487<br> - rs1_h0_val == 16384<br>                                                                                |[0x80000574]:SRL16_U s7, a2, a0<br> [0x80000578]:sd s7, 104(tp)<br>     |
|  15|[0x80002280]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x16<br> - rd : x25<br> - rs1_h0_val == 0<br> - rs2_val == 10<br>                                                                                           |[0x80000598]:SRL16_U s9, zero, a6<br> [0x8000059c]:sd s9, 112(tp)<br>   |
|  16|[0x80002288]<br>0x7F8008007C004000|- rs1 : x30<br> - rs2 : x23<br> - rd : x9<br> - rs1_h3_val == 65279<br> - rs1_h2_val == 4096<br> - rs1_h0_val == 32767<br>                                                        |[0x800005bc]:SRL16_U s1, t5, s7<br> [0x800005c0]:sd s1, 120(tp)<br>     |
|  17|[0x80002290]<br>0x0004000400040004|- rs1 : x25<br> - rs2 : x29<br> - rd : x14<br> - rs1_h3_val == 65407<br> - rs1_h2_val == 65519<br> - rs1_h1_val == 65503<br> - rs1_h0_val == 65279<br>                            |[0x800005e0]:SRL16_U a4, s9, t4<br> [0x800005e4]:sd a4, 128(tp)<br>     |
|  18|[0x80002298]<br>0x3FF0200040000002|- rs1 : x5<br> - rs2 : x12<br> - rd : x26<br> - rs1_h3_val == 65471<br> - rs1_h2_val == 32768<br> - rs1_h1_val == 65534<br>                                                       |[0x8000060c]:SRL16_U s10, t0, a2<br> [0x80000610]:sd s10, 0(s3)<br>     |
|  19|[0x800022a0]<br>0x0100000000E00008|- rs1 : x11<br> - rs2 : x8<br> - rd : x4<br> - rs1_h3_val == 65519<br> - rs1_h2_val == 32<br> - rs1_h1_val == 57343<br> - rs1_h0_val == 2048<br>                                  |[0x80000630]:SRL16_U tp, a1, fp<br> [0x80000634]:sd tp, 8(s3)<br>       |
|  20|[0x800022a8]<br>0x0002000100020002|- rs1 : x16<br> - rs2 : x6<br> - rd : x7<br> - rs1_h3_val == 65527<br> - rs1_h2_val == 49151<br> - rs1_h0_val == 65519<br>                                                        |[0x80000650]:SRL16_U t2, a6, t1<br> [0x80000654]:sd t2, 16(s3)<br>      |
|  21|[0x800022b0]<br>0x100010000FF80001|- rs1 : x17<br> - rs2 : x31<br> - rd : x11<br> - rs1_h3_val == 65531<br> - rs1_h1_val == 65407<br>                                                                                |[0x80000674]:SRL16_U a1, a7, t6<br> [0x80000678]:sd a1, 24(s3)<br>      |
|  22|[0x800022b8]<br>0x200002001F000800|- rs1 : x31<br> - rs2 : x7<br> - rd : x15<br> - rs1_h3_val == 65533<br>                                                                                                           |[0x80000694]:SRL16_U a5, t6, t2<br> [0x80000698]:sd a5, 32(s3)<br>      |
|  23|[0x800022c0]<br>0x0100010000000000|- rs1 : x14<br> - rs2 : x11<br> - rd : x20<br> - rs1_h3_val == 65534<br> - rs1_h2_val == 65533<br>                                                                                |[0x800006b8]:SRL16_U s4, a4, a1<br> [0x800006bc]:sd s4, 40(s3)<br>      |
|  24|[0x800022c8]<br>0x0008001000000000|- rs1 : x10<br> - rs2 : x4<br> - rd : x29<br> - rs1_h3_val == 32768<br> - rs1_h2_val == 65535<br>                                                                                 |[0x800006dc]:SRL16_U t4, a0, tp<br> [0x800006e0]:sd t4, 48(s3)<br>      |
|  25|[0x800022d0]<br>0x10002AAB00010004|- rs1 : x3<br> - rs2 : x22<br> - rd : x10<br> - rs1_h3_val == 16384<br>                                                                                                           |[0x80000700]:SRL16_U a0, gp, s6<br> [0x80000704]:sd a0, 56(s3)<br>      |
|  26|[0x800022d8]<br>0x0400000800021F00|- rs1 : x4<br> - rs2 : x15<br> - rd : x2<br> - rs1_h3_val == 8192<br> - rs1_h2_val == 64<br> - rs1_h0_val == 63487<br>                                                            |[0x80000724]:SRL16_U sp, tp, a5<br> [0x80000728]:sd sp, 64(s3)<br>      |
|  27|[0x800022e0]<br>0x0004001000000000|- rs1 : x2<br> - rs2 : x27<br> - rd : x12<br> - rs1_h3_val == 4096<br> - rs1_h2_val == 16384<br>                                                                                  |[0x80000748]:SRL16_U a2, sp, s11<br> [0x8000074c]:sd a2, 72(s3)<br>     |
|  28|[0x800022e8]<br>0x0001000000200000|- rs1 : x15<br> - rs2 : x18<br> - rd : x1<br> - rs1_h3_val == 2048<br> - rs1_h2_val == 16<br> - rs1_h1_val == 65023<br>                                                           |[0x8000076c]:SRL16_U ra, a5, s2<br> [0x80000770]:sd ra, 80(s3)<br>      |
|  29|[0x800022f0]<br>0x000400F000000001|- rs1 : x27<br> - rs2 : x5<br> - rd : x17<br> - rs1_h3_val == 1024<br> - rs1_h2_val == 61439<br> - rs1_h0_val == 128<br>                                                          |[0x80000790]:SRL16_U a7, s11, t0<br> [0x80000794]:sd a7, 88(s3)<br>     |
|  30|[0x800022f8]<br>0x0020055500010000|- rs1 : x20<br> - rs2 : x14<br> - rd : x27<br> - rs1_h3_val == 512<br> - rs1_h2_val == 21845<br>                                                                                  |[0x800007b4]:SRL16_U s11, s4, a4<br> [0x800007b8]:sd s11, 96(s3)<br>    |
|  31|[0x80002300]<br>0x0010000802000001|- rs1 : x18<br> - rs2 : x9<br> - rd : x28<br> - rs1_h3_val == 256<br> - rs1_h1_val == 8192<br>                                                                                    |[0x800007d0]:SRL16_U t3, s2, s1<br> [0x800007d4]:sd t3, 104(s3)<br>     |
|  32|[0x80002308]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : x13<br> - rd : x0<br> - rs1_h3_val == 128<br> - rs1_h1_val == 8<br>                                                                                        |[0x800007f4]:SRL16_U zero, s1, a3<br> [0x800007f8]:sd zero, 112(s3)<br> |
|  33|[0x80002310]<br>0x0008000110001800|- rs1_h3_val == 64<br> - rs1_h0_val == 49151<br>                                                                                                                                  |[0x80000818]:SRL16_U t6, t5, t4<br> [0x8000081c]:sd t6, 120(s3)<br>     |
|  34|[0x80002318]<br>0x0001040008000001|- rs1_h3_val == 32<br> - rs1_h1_val == 65527<br> - rs1_h0_val == 16<br>                                                                                                           |[0x8000083c]:SRL16_U t6, t5, t4<br> [0x80000840]:sd t6, 128(s3)<br>     |
|  35|[0x80002320]<br>0x0000006000000000|- rs1_h3_val == 4<br>                                                                                                                                                             |[0x80000858]:SRL16_U t6, t5, t4<br> [0x8000085c]:sd t6, 136(s3)<br>     |
|  36|[0x80002328]<br>0x00017FFF00050006|- rs1_h3_val == 1<br>                                                                                                                                                             |[0x8000087c]:SRL16_U t6, t5, t4<br> [0x80000880]:sd t6, 144(s3)<br>     |
|  37|[0x80002330]<br>0x0010FFFE0080FFBF|- rs1_h1_val == 128<br> - rs1_h0_val == 65471<br>                                                                                                                                 |[0x800008a0]:SRL16_U t6, t5, t4<br> [0x800008a4]:sd t6, 152(s3)<br>     |
|  38|[0x80002338]<br>0x0002002001800200|- rs1_h1_val == 49151<br> - rs1_h0_val == 65503<br>                                                                                                                               |[0x800008bc]:SRL16_U t6, t5, t4<br> [0x800008c0]:sd t6, 160(s3)<br>     |
|  39|[0x80002340]<br>0x000DBFFFBFFFFFF7|- rs1_h0_val == 65527<br>                                                                                                                                                         |[0x800008d8]:SRL16_U t6, t5, t4<br> [0x800008dc]:sd t6, 168(s3)<br>     |
|  40|[0x80002348]<br>0x0000000400000004|- rs1_h0_val == 65531<br>                                                                                                                                                         |[0x800008fc]:SRL16_U t6, t5, t4<br> [0x80000900]:sd t6, 176(s3)<br>     |
|  41|[0x80002350]<br>0x0002000000002000|- rs1_h2_val == 2<br> - rs1_h1_val == 1<br> - rs1_h0_val == 65533<br>                                                                                                             |[0x80000920]:SRL16_U t6, t5, t4<br> [0x80000924]:sd t6, 184(s3)<br>     |
|  42|[0x80002358]<br>0x0000000400040004|- rs1_h2_val == 63487<br> - rs1_h1_val == 65519<br> - rs1_h0_val == 65534<br>                                                                                                     |[0x8000093c]:SRL16_U t6, t5, t4<br> [0x80000940]:sd t6, 192(s3)<br>     |
|  43|[0x80002360]<br>0x008000067FFE4000|- rs1_h0_val == 32768<br>                                                                                                                                                         |[0x8000095c]:SRL16_U t6, t5, t4<br> [0x80000960]:sd t6, 200(s3)<br>     |
|  44|[0x80002368]<br>0x0000000000020000|- rs1_h0_val == 4096<br>                                                                                                                                                          |[0x8000097c]:SRL16_U t6, t5, t4<br> [0x80000980]:sd t6, 208(s3)<br>     |
|  45|[0x80002370]<br>0x0800000A000B0400|- rs1_h0_val == 1024<br>                                                                                                                                                          |[0x800009a0]:SRL16_U t6, t5, t4<br> [0x800009a4]:sd t6, 216(s3)<br>     |
|  46|[0x80002378]<br>0x0000000000000000|- rs1_h2_val == 256<br> - rs1_h0_val == 512<br>                                                                                                                                   |[0x800009c4]:SRL16_U t6, t5, t4<br> [0x800009c8]:sd t6, 224(s3)<br>     |
|  47|[0x80002380]<br>0x0400000004000004|- rs1_h0_val == 256<br>                                                                                                                                                           |[0x800009e8]:SRL16_U t6, t5, t4<br> [0x800009ec]:sd t6, 232(s3)<br>     |
|  48|[0x80002388]<br>0x000000F800000000|- rs1_h1_val == 2<br> - rs1_h0_val == 64<br>                                                                                                                                      |[0x80000a0c]:SRL16_U t6, t5, t4<br> [0x80000a10]:sd t6, 240(s3)<br>     |
|  49|[0x80002390]<br>0x0015000000010000|- rs1_h1_val == 1024<br> - rs1_h0_val == 32<br>                                                                                                                                   |[0x80000a30]:SRL16_U t6, t5, t4<br> [0x80000a34]:sd t6, 248(s3)<br>     |
|  50|[0x80002398]<br>0x0FFE00010AAB0000|- rs1_h3_val == 65503<br> - rs1_h0_val == 4<br>                                                                                                                                   |[0x80000a54]:SRL16_U t6, t5, t4<br> [0x80000a58]:sd t6, 256(s3)<br>     |
|  51|[0x800023a0]<br>0x0000002000FC0000|- rs1_h2_val == 8192<br> - rs1_h1_val == 64511<br> - rs1_h0_val == 2<br>                                                                                                          |[0x80000a78]:SRL16_U t6, t5, t4<br> [0x80000a7c]:sd t6, 264(s3)<br>     |
|  52|[0x800023a8]<br>0x0010000500000000|- rs1_h0_val == 1<br>                                                                                                                                                             |[0x80000a9c]:SRL16_U t6, t5, t4<br> [0x80000aa0]:sd t6, 272(s3)<br>     |
|  53|[0x800023b0]<br>0x0004000000000000|- rs1_h3_val == 65023<br> - rs1_h1_val == 32<br>                                                                                                                                  |[0x80000abc]:SRL16_U t6, t5, t4<br> [0x80000ac0]:sd t6, 280(s3)<br>     |
|  54|[0x800023b8]<br>0x040003F803FF0000|- rs1_h3_val == 65535<br> - rs1_h2_val == 65023<br> - rs1_h1_val == 65471<br>                                                                                                     |[0x80000ad8]:SRL16_U t6, t5, t4<br> [0x80000adc]:sd t6, 288(s3)<br>     |
|  55|[0x800023c8]<br>0x0000000000020002|- rs1_h2_val == 2048<br>                                                                                                                                                          |[0x80000b18]:SRL16_U t6, t5, t4<br> [0x80000b1c]:sd t6, 304(s3)<br>     |
|  56|[0x800023d0]<br>0x000001003FFC3FFC|- rs1_h2_val == 1024<br>                                                                                                                                                          |[0x80000b34]:SRL16_U t6, t5, t4<br> [0x80000b38]:sd t6, 312(s3)<br>     |
|  57|[0x800023d8]<br>0x2000008030003F80|- rs1_h2_val == 512<br>                                                                                                                                                           |[0x80000b58]:SRL16_U t6, t5, t4<br> [0x80000b5c]:sd t6, 320(s3)<br>     |
|  58|[0x800023e0]<br>0x00000000040002AB|- rs1_h2_val == 8<br> - rs1_h1_val == 65535<br> - rs1_h0_val == 43690<br>                                                                                                         |[0x80000b7c]:SRL16_U t6, t5, t4<br> [0x80000b80]:sd t6, 328(s3)<br>     |
|  59|[0x800023e8]<br>0x001200010001FFBF|- rs1_h2_val == 1<br>                                                                                                                                                             |[0x80000ba0]:SRL16_U t6, t5, t4<br> [0x80000ba4]:sd t6, 336(s3)<br>     |
|  60|[0x800023f8]<br>0x00800004002B0040|- rs1_h1_val == 21845<br>                                                                                                                                                         |[0x80000be4]:SRL16_U t6, t5, t4<br> [0x80000be8]:sd t6, 352(s3)<br>     |
|  61|[0x80002400]<br>0x0008000000070000|- rs1_h1_val == 61439<br>                                                                                                                                                         |[0x80000c08]:SRL16_U t6, t5, t4<br> [0x80000c0c]:sd t6, 360(s3)<br>     |
|  62|[0x80002408]<br>0x00FC000000FF0004|- rs1_h1_val == 65279<br>                                                                                                                                                         |[0x80000c2c]:SRL16_U t6, t5, t4<br> [0x80000c30]:sd t6, 368(s3)<br>     |
|  63|[0x80002410]<br>0x155508003FFF2AAB|- rs1_h1_val == 65533<br>                                                                                                                                                         |[0x80000c50]:SRL16_U t6, t5, t4<br> [0x80000c54]:sd t6, 376(s3)<br>     |
|  64|[0x80002418]<br>0x0001001000080004|- rs1_h2_val == 65503<br> - rs1_h1_val == 32768<br>                                                                                                                               |[0x80000c70]:SRL16_U t6, t5, t4<br> [0x80000c74]:sd t6, 384(s3)<br>     |
|  65|[0x80002420]<br>0x000000000020007E|- rs1_h1_val == 16384<br> - rs1_h0_val == 64511<br>                                                                                                                               |[0x80000c94]:SRL16_U t6, t5, t4<br> [0x80000c98]:sd t6, 392(s3)<br>     |
|  66|[0x80002428]<br>0x00013F8004000200|- rs1_h1_val == 4096<br>                                                                                                                                                          |[0x80000cb8]:SRL16_U t6, t5, t4<br> [0x80000cbc]:sd t6, 400(s3)<br>     |
|  67|[0x80002430]<br>0x0000020000800FC0|- rs1_h1_val == 2048<br>                                                                                                                                                          |[0x80000cd4]:SRL16_U t6, t5, t4<br> [0x80000cd8]:sd t6, 408(s3)<br>     |
|  68|[0x80002438]<br>0x00800555000207F8|- rs1_h1_val == 64<br>                                                                                                                                                            |[0x80000cf8]:SRL16_U t6, t5, t4<br> [0x80000cfc]:sd t6, 416(s3)<br>     |
|  69|[0x80002440]<br>0x0003002000080040|- rs1_h1_val == 16<br>                                                                                                                                                            |[0x80000d14]:SRL16_U t6, t5, t4<br> [0x80000d18]:sd t6, 424(s3)<br>     |
|  70|[0x80002448]<br>0x020020003F800080|- rs1_h2_val == 32767<br>                                                                                                                                                         |[0x80000d38]:SRL16_U t6, t5, t4<br> [0x80000d3c]:sd t6, 432(s3)<br>     |
|  71|[0x80002450]<br>0x01E0000000000180|- rs1_h1_val == 4<br>                                                                                                                                                             |[0x80000d5c]:SRL16_U t6, t5, t4<br> [0x80000d60]:sd t6, 440(s3)<br>     |
|  72|[0x80002458]<br>0x0000000300040000|- rs1_h2_val == 57343<br>                                                                                                                                                         |[0x80000d80]:SRL16_U t6, t5, t4<br> [0x80000d84]:sd t6, 448(s3)<br>     |
|  73|[0x80002460]<br>0x00010FC00F000001|- rs1_h2_val == 64511<br>                                                                                                                                                         |[0x80000da4]:SRL16_U t6, t5, t4<br> [0x80000da8]:sd t6, 456(s3)<br>     |
|  74|[0x80002468]<br>0x0000007F00800000|- rs1_h2_val == 65279<br>                                                                                                                                                         |[0x80000dc8]:SRL16_U t6, t5, t4<br> [0x80000dcc]:sd t6, 464(s3)<br>     |
|  75|[0x80002470]<br>0x0200FF7F40005555|- rs1_h2_val == 65407<br> - rs1_h0_val == 21845<br>                                                                                                                               |[0x80000dec]:SRL16_U t6, t5, t4<br> [0x80000df0]:sd t6, 472(s3)<br>     |
|  76|[0x80002478]<br>0x001007FE08000780|- rs1_h2_val == 65471<br>                                                                                                                                                         |[0x80000e10]:SRL16_U t6, t5, t4<br> [0x80000e14]:sd t6, 480(s3)<br>     |
|  77|[0x80002480]<br>0x00000040003F0000|- rs1_h2_val == 65527<br>                                                                                                                                                         |[0x80000e34]:SRL16_U t6, t5, t4<br> [0x80000e38]:sd t6, 488(s3)<br>     |
|  78|[0x80002488]<br>0x0080000000020080|- rs1_h0_val == 65407<br>                                                                                                                                                         |[0x80000e58]:SRL16_U t6, t5, t4<br> [0x80000e5c]:sd t6, 496(s3)<br>     |
|  79|[0x80002490]<br>0x000002AB00080001|- rs1_h1_val == 256<br>                                                                                                                                                           |[0x80000e74]:SRL16_U t6, t5, t4<br> [0x80000e78]:sd t6, 504(s3)<br>     |
|  80|[0x80002498]<br>0x0200000002000080|- rs1_h2_val == 4<br>                                                                                                                                                             |[0x80000e94]:SRL16_U t6, t5, t4<br> [0x80000e98]:sd t6, 512(s3)<br>     |
