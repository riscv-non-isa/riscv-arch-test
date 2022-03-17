
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800007b0')]      |
| SIG_REGION                | [('0x80002210', '0x80002460', '148 words')]      |
| COV_LABELS                | ukstsa16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv32i_m/P_unratified/src/ukstsa16-01.S    |
| Total Number of coverpoints| 256     |
| Total Coverpoints Hit     | 250      |
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
      [0x80000504]:UKSTSA16 t6, t5, t4
      [0x80000508]:sw t6, 112(ra)
 -- Signature Address: 0x80002368 Data: 0x0013FF9F
 -- Redundant Coverpoints hit by the op
      - opcode : ukstsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h1_val == 0
      - rs2_h0_val == 65407
      - rs1_h0_val == 32




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005e8]:UKSTSA16 t6, t5, t4
      [0x800005ec]:sw t6, 192(ra)
 -- Signature Address: 0x800023b8 Data: 0x00000400
 -- Redundant Coverpoints hit by the op
      - opcode : ukstsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs2_h1_val == 65407
      - rs2_h0_val == 0
      - rs1_h1_val == 32768
      - rs1_h0_val == 1024




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000790]:UKSTSA16 t6, t5, t4
      [0x80000794]:sw t6, 344(ra)
 -- Signature Address: 0x80002450 Data: 0x00000007
 -- Redundant Coverpoints hit by the op
      - opcode : ukstsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == 0
      - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs2_h1_val == 65531
      - rs1_h1_val == 65531




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007a4]:UKSTSA16 t6, t5, t4
      [0x800007a8]:sw t6, 352(ra)
 -- Signature Address: 0x80002458 Data: 0x00000002
 -- Redundant Coverpoints hit by the op
      - opcode : ukstsa16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == 0
      - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0
      - rs2_h1_val == 63487
      - rs2_h0_val == 2






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

|s.no|        signature         |                                                                                                                                        coverpoints                                                                                                                                         |                                  code                                  |
|---:|--------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000E|- opcode : ukstsa16<br> - rs1 : x27<br> - rs2 : x27<br> - rd : x27<br> - rs1 == rs2 == rd<br> - rs1_h1_val == rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 65531<br> - rs1_h1_val == 65531<br> |[0x80000118]:UKSTSA16 s11, s11, s11<br> [0x8000011c]:sw s11, 0(a0)<br>  |
|   2|[0x80002218]<br>0x00000000|- rs1 : x0<br> - rs2 : x0<br> - rd : x15<br> - rs1 == rs2 != rd<br> - rs1_h0_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h1_val == 0<br>                                                                                                                                 |[0x80000130]:UKSTSA16 a5, zero, zero<br> [0x80000134]:sw a5, 8(a0)<br>  |
|   3|[0x80002220]<br>0x0000000A|- rs1 : x30<br> - rs2 : x19<br> - rd : x18<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h1_val != rs2_h1_val and rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h1_val == 256<br>                                                                                                   |[0x80000148]:UKSTSA16 s2, t5, s3<br> [0x8000014c]:sw s2, 16(a0)<br>     |
|   4|[0x80002228]<br>0x5551FFFF|- rs1 : x29<br> - rs2 : x25<br> - rd : x25<br> - rs2 == rd != rs1<br> - rs1_h0_val != rs2_h0_val and rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h1_val == 43690<br> - rs2_h0_val == 65527<br> - rs1_h0_val == 64<br>                                                                       |[0x80000160]:UKSTSA16 s9, t4, s9<br> [0x80000164]:sw s9, 24(a0)<br>     |
|   5|[0x80002230]<br>0xAAAA0015|- rs1 : x2<br> - rs2 : x5<br> - rd : x2<br> - rs1 == rd != rs2<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 2<br> - rs1_h1_val == 65535<br>                                                                                                                                                |[0x80000178]:UKSTSA16 sp, sp, t0<br> [0x8000017c]:sw sp, 32(a0)<br>     |
|   6|[0x80002238]<br>0x7FFCFFFD|- rs1 : x6<br> - rs2 : x16<br> - rd : x14<br> - rs2_h1_val == 32767<br> - rs1_h0_val == 65531<br>                                                                                                                                                                                           |[0x80000190]:UKSTSA16 a4, t1, a6<br> [0x80000194]:sw a4, 40(a0)<br>     |
|   7|[0x80002240]<br>0x0000FFFF|- rs1 : x4<br> - rs2 : x30<br> - rd : x7<br> - rs2_h1_val == 49151<br> - rs2_h0_val == 512<br> - rs1_h0_val == 65471<br>                                                                                                                                                                    |[0x800001a8]:UKSTSA16 t2, tp, t5<br> [0x800001ac]:sw t2, 48(a0)<br>     |
|   8|[0x80002248]<br>0x1FFCFFE4|- rs1 : x14<br> - rs2 : x15<br> - rd : x17<br> - rs2_h1_val == 57343<br> - rs2_h0_val == 65503<br>                                                                                                                                                                                          |[0x800001c0]:UKSTSA16 a7, a4, a5<br> [0x800001c4]:sw a7, 56(a0)<br>     |
|   9|[0x80002250]<br>0x0FC00403|- rs1 : x11<br> - rs2 : x3<br> - rd : x6<br> - rs2_h1_val == 61439<br> - rs1_h1_val == 65471<br> - rs1_h0_val == 1024<br>                                                                                                                                                                   |[0x800001d8]:UKSTSA16 t1, a1, gp<br> [0x800001dc]:sw t1, 64(a0)<br>     |
|  10|[0x80002258]<br>0x00000000|- rs1 : x8<br> - rs2 : x9<br> - rd : x0<br> - rs2_h1_val == 63487<br>                                                                                                                                                                                                                       |[0x800001ec]:UKSTSA16 zero, fp, s1<br> [0x800001f0]:sw zero, 72(a0)<br> |
|  11|[0x80002260]<br>0x0000FFE1|- rs1 : x16<br> - rs2 : x7<br> - rd : x26<br> - rs2_h1_val == 64511<br> - rs1_h1_val == 8192<br> - rs1_h0_val == 2<br>                                                                                                                                                                      |[0x80000204]:UKSTSA16 s10, a6, t2<br> [0x80000208]:sw s10, 80(a0)<br>   |
|  12|[0x80002268]<br>0x0000F003|- rs1 : x3<br> - rs2 : x26<br> - rd : x23<br> - rs2_h1_val == 65023<br> - rs2_h0_val == 4<br> - rs1_h1_val == 256<br> - rs1_h0_val == 61439<br>                                                                                                                                             |[0x8000021c]:UKSTSA16 s7, gp, s10<br> [0x80000220]:sw s7, 88(a0)<br>    |
|  13|[0x80002270]<br>0x00FF0044|- rs1 : x1<br> - rs2 : x8<br> - rd : x31<br> - rs2_h1_val == 65279<br> - rs1_h1_val == 65534<br>                                                                                                                                                                                            |[0x80000234]:UKSTSA16 t6, ra, fp<br> [0x80000238]:sw t6, 96(a0)<br>     |
|  14|[0x80002278]<br>0x0080FE0B|- rs1 : x24<br> - rs2 : x23<br> - rd : x21<br> - rs2_h1_val == 65407<br> - rs1_h0_val == 65023<br>                                                                                                                                                                                          |[0x80000248]:UKSTSA16 s5, s8, s7<br> [0x8000024c]:sw s5, 104(a0)<br>    |
|  15|[0x80002280]<br>0x003FFC7F|- rs1 : x28<br> - rs2 : x14<br> - rd : x12<br> - rs2_h1_val == 65471<br> - rs2_h0_val == 64511<br> - rs1_h0_val == 128<br>                                                                                                                                                                  |[0x80000260]:UKSTSA16 a2, t3, a4<br> [0x80000264]:sw a2, 112(a0)<br>    |
|  16|[0x80002288]<br>0x0000F800|- rs1 : x17<br> - rs2 : x22<br> - rd : x10<br> - rs2_h1_val == 65503<br> - rs2_h0_val == 63487<br> - rs1_h0_val == 1<br>                                                                                                                                                                    |[0x80000280]:UKSTSA16 a0, a7, s6<br> [0x80000284]:sw a0, 0(a4)<br>      |
|  17|[0x80002290]<br>0x0000FFFF|- rs1 : x21<br> - rs2 : x29<br> - rd : x5<br> - rs2_h1_val == 65519<br> - rs2_h0_val == 65023<br> - rs1_h0_val == 63487<br>                                                                                                                                                                 |[0x80000298]:UKSTSA16 t0, s5, t4<br> [0x8000029c]:sw t0, 8(a4)<br>      |
|  18|[0x80002298]<br>0x0007FFFF|- rs1 : x25<br> - rs2 : x1<br> - rd : x30<br> - rs2_h1_val == 65527<br> - rs2_h0_val == 16384<br> - rs1_h0_val == 57343<br>                                                                                                                                                                 |[0x800002ac]:UKSTSA16 t5, s9, ra<br> [0x800002b0]:sw t5, 16(a4)<br>     |
|  19|[0x800022a0]<br>0x00000009|- rs1 : x13<br> - rs2 : x18<br> - rd : x4<br> - rs2_h1_val == 65533<br> - rs1_h1_val == 63487<br> - rs1_h0_val == 4<br>                                                                                                                                                                     |[0x800002c4]:UKSTSA16 tp, a3, s2<br> [0x800002c8]:sw tp, 24(a4)<br>     |
|  20|[0x800022a8]<br>0x0000FFC7|- rs1 : x9<br> - rs2 : x4<br> - rd : x29<br> - rs2_h1_val == 65534<br> - rs2_h0_val == 65471<br> - rs1_h1_val == 32767<br> - rs1_h0_val == 8<br>                                                                                                                                            |[0x800002dc]:UKSTSA16 t4, s1, tp<br> [0x800002e0]:sw t4, 32(a4)<br>     |
|  21|[0x800022b0]<br>0x7EFFFFFF|- rs1 : x12<br> - rs2 : x31<br> - rd : x9<br> - rs2_h1_val == 32768<br> - rs1_h1_val == 65279<br> - rs1_h0_val == 65527<br>                                                                                                                                                                 |[0x800002f4]:UKSTSA16 s1, a2, t6<br> [0x800002f8]:sw s1, 40(a4)<br>     |
|  22|[0x800022b8]<br>0x0000FC01|- rs1 : x31<br> - rs2 : x11<br> - rd : x1<br> - rs2_h1_val == 16384<br> - rs1_h1_val == 16<br> - rs1_h0_val == 64511<br>                                                                                                                                                                    |[0x8000030c]:UKSTSA16 ra, t6, a1<br> [0x80000310]:sw ra, 48(a4)<br>     |
|  23|[0x800022c0]<br>0x0000FFFF|- rs1 : x26<br> - rs2 : x20<br> - rd : x8<br> - rs2_h1_val == 8192<br> - rs2_h0_val == 21845<br> - rs1_h1_val == 2048<br>                                                                                                                                                                   |[0x80000324]:UKSTSA16 fp, s10, s4<br> [0x80000328]:sw fp, 56(a4)<br>    |
|  24|[0x800022c8]<br>0xE7FF0013|- rs1 : x18<br> - rs2 : x13<br> - rd : x19<br> - rs2_h1_val == 4096<br>                                                                                                                                                                                                                     |[0x80000338]:UKSTSA16 s3, s2, a3<br> [0x8000033c]:sw s3, 64(a4)<br>     |
|  25|[0x800022d0]<br>0x0000FFFF|- rs1 : x10<br> - rs2 : x2<br> - rd : x13<br> - rs2_h1_val == 2048<br> - rs2_h0_val == 65534<br>                                                                                                                                                                                            |[0x80000350]:UKSTSA16 a3, a0, sp<br> [0x80000354]:sw a3, 72(a4)<br>     |
|  26|[0x800022d8]<br>0x7C00FE0F|- rs1 : x19<br> - rs2 : x10<br> - rd : x24<br> - rs2_h1_val == 1024<br> - rs1_h1_val == 32768<br> - rs1_h0_val == 16<br>                                                                                                                                                                    |[0x80000368]:UKSTSA16 s8, s3, a0<br> [0x8000036c]:sw s8, 80(a4)<br>     |
|  27|[0x800022e0]<br>0x0000000D|- rs1 : x7<br> - rs2 : x17<br> - rd : x28<br> - rs2_h1_val == 512<br>                                                                                                                                                                                                                       |[0x80000380]:UKSTSA16 t3, t2, a7<br> [0x80000384]:sw t3, 88(a4)<br>     |
|  28|[0x800022e8]<br>0xFEBF0112|- rs1 : x22<br> - rs2 : x6<br> - rd : x3<br> - rs2_h1_val == 64<br> - rs2_h0_val == 256<br>                                                                                                                                                                                                 |[0x80000398]:UKSTSA16 gp, s6, t1<br> [0x8000039c]:sw gp, 96(a4)<br>     |
|  29|[0x800022f0]<br>0x0020800C|- rs1 : x15<br> - rs2 : x24<br> - rd : x20<br> - rs2_h1_val == 32<br> - rs2_h0_val == 32768<br> - rs1_h1_val == 64<br>                                                                                                                                                                      |[0x800003ac]:UKSTSA16 s4, a5, s8<br> [0x800003b0]:sw s4, 104(a4)<br>    |
|  30|[0x800022f8]<br>0x0000020D|- rs1 : x20<br> - rs2 : x28<br> - rd : x22<br> - rs2_h1_val == 16<br> - rs1_h0_val == 512<br>                                                                                                                                                                                               |[0x800003cc]:UKSTSA16 s6, s4, t3<br> [0x800003d0]:sw s6, 0(ra)<br>      |
|  31|[0x80002300]<br>0xFFF6FFFF|- rs1 : x5<br> - rs2 : x21<br> - rd : x11<br> - rs2_h1_val == 8<br> - rs2_h0_val == 61439<br> - rs1_h0_val == 32767<br>                                                                                                                                                                     |[0x800003e4]:UKSTSA16 a1, t0, s5<br> [0x800003e8]:sw a1, 8(ra)<br>      |
|  32|[0x80002308]<br>0x007CC007|- rs1 : x23<br> - rs2 : x12<br> - rd : x16<br> - rs2_h1_val == 4<br> - rs2_h0_val == 8<br> - rs1_h1_val == 128<br> - rs1_h0_val == 49151<br>                                                                                                                                                |[0x800003fc]:UKSTSA16 a6, s7, a2<br> [0x80000400]:sw a6, 16(ra)<br>     |
|  33|[0x80002310]<br>0x03FCFFFF|- rs2_h0_val == 49151<br> - rs1_h1_val == 1024<br> - rs1_h0_val == 65533<br>                                                                                                                                                                                                                |[0x80000414]:UKSTSA16 t6, t5, t4<br> [0x80000418]:sw t6, 24(ra)<br>     |
|  34|[0x80002318]<br>0x00008040|- rs2_h1_val == 128<br> - rs2_h0_val == 64<br> - rs1_h1_val == 4<br> - rs1_h0_val == 32768<br>                                                                                                                                                                                              |[0x80000428]:UKSTSA16 t6, t5, t4<br> [0x8000042c]:sw t6, 32(ra)<br>     |
|  35|[0x80002320]<br>0x0000400B|- rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                   |[0x8000043c]:UKSTSA16 t6, t5, t4<br> [0x80000440]:sw t6, 40(ra)<br>     |
|  36|[0x80002328]<br>0x0000FFFF|- rs1_h1_val == 65023<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                          |[0x80000450]:UKSTSA16 t6, t5, t4<br> [0x80000454]:sw t6, 48(ra)<br>     |
|  37|[0x80002330]<br>0x0000FFFF|- rs2_h0_val == 65407<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                          |[0x80000464]:UKSTSA16 t6, t5, t4<br> [0x80000468]:sw t6, 56(ra)<br>     |
|  38|[0x80002338]<br>0x03FE0820|- rs2_h1_val == 2<br> - rs2_h0_val == 32<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                       |[0x8000047c]:UKSTSA16 t6, t5, t4<br> [0x80000480]:sw t6, 64(ra)<br>     |
|  39|[0x80002340]<br>0x00000200|- rs1_h1_val == 1<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                               |[0x80000494]:UKSTSA16 t6, t5, t4<br> [0x80000498]:sw t6, 72(ra)<br>     |
|  40|[0x80002348]<br>0x0000FFFF|- rs2_h0_val == 65535<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                            |[0x800004ac]:UKSTSA16 t6, t5, t4<br> [0x800004b0]:sw t6, 80(ra)<br>     |
|  41|[0x80002350]<br>0x0000FFFF|- rs1_h0_val == 65535<br>                                                                                                                                                                                                                                                                   |[0x800004c4]:UKSTSA16 t6, t5, t4<br> [0x800004c8]:sw t6, 88(ra)<br>     |
|  42|[0x80002358]<br>0x00090004|- rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                       |[0x800004dc]:UKSTSA16 t6, t5, t4<br> [0x800004e0]:sw t6, 96(ra)<br>     |
|  43|[0x80002360]<br>0x0000FFFF|- rs2_h1_val == 65535<br> - rs1_h1_val == 65503<br>                                                                                                                                                                                                                                         |[0x800004ec]:UKSTSA16 t6, t5, t4<br> [0x800004f0]:sw t6, 104(ra)<br>    |
|  44|[0x80002370]<br>0x00098000|- rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                   |[0x8000051c]:UKSTSA16 t6, t5, t4<br> [0x80000520]:sw t6, 120(ra)<br>    |
|  45|[0x80002378]<br>0x0020E011|- rs2_h0_val == 57343<br>                                                                                                                                                                                                                                                                   |[0x80000534]:UKSTSA16 t6, t5, t4<br> [0x80000538]:sw t6, 128(ra)<br>    |
|  46|[0x80002380]<br>0x0000FF0D|- rs2_h0_val == 65279<br>                                                                                                                                                                                                                                                                   |[0x8000054c]:UKSTSA16 t6, t5, t4<br> [0x80000550]:sw t6, 136(ra)<br>    |
|  47|[0x80002388]<br>0xBFFCFFFF|- rs2_h0_val == 65519<br> - rs1_h1_val == 49151<br>                                                                                                                                                                                                                                         |[0x80000560]:UKSTSA16 t6, t5, t4<br> [0x80000564]:sw t6, 144(ra)<br>    |
|  48|[0x80002390]<br>0x0000FFFF|- rs2_h0_val == 65531<br>                                                                                                                                                                                                                                                                   |[0x80000578]:UKSTSA16 t6, t5, t4<br> [0x8000057c]:sw t6, 152(ra)<br>    |
|  49|[0x80002398]<br>0x00010407|- rs2_h0_val == 1024<br>                                                                                                                                                                                                                                                                    |[0x80000590]:UKSTSA16 t6, t5, t4<br> [0x80000594]:sw t6, 160(ra)<br>    |
|  50|[0x800023a0]<br>0xFBF4FFFF|- rs2_h0_val == 128<br> - rs1_h1_val == 64511<br> - rs1_h0_val == 65534<br>                                                                                                                                                                                                                 |[0x800005a8]:UKSTSA16 t6, t5, t4<br> [0x800005ac]:sw t6, 168(ra)<br>    |
|  51|[0x800023a8]<br>0x00001010|- rs2_h0_val == 16<br>                                                                                                                                                                                                                                                                      |[0x800005bc]:UKSTSA16 t6, t5, t4<br> [0x800005c0]:sw t6, 176(ra)<br>    |
|  52|[0x800023b0]<br>0x0F000101|- rs2_h0_val == 1<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                                                              |[0x800005d4]:UKSTSA16 t6, t5, t4<br> [0x800005d8]:sw t6, 184(ra)<br>    |
|  53|[0x800023c0]<br>0xAA99001F|- rs1_h1_val == 43690<br>                                                                                                                                                                                                                                                                   |[0x80000600]:UKSTSA16 t6, t5, t4<br> [0x80000604]:sw t6, 200(ra)<br>    |
|  54|[0x800023c8]<br>0x55555564|- rs1_h1_val == 21845<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                         |[0x80000614]:UKSTSA16 t6, t5, t4<br> [0x80000618]:sw t6, 208(ra)<br>    |
|  55|[0x800023d0]<br>0xDFFDFFF6|- rs1_h1_val == 57343<br> - rs1_h0_val == 65519<br>                                                                                                                                                                                                                                         |[0x8000062c]:UKSTSA16 t6, t5, t4<br> [0x80000630]:sw t6, 216(ra)<br>    |
|  56|[0x800023d8]<br>0xEFEDFFFF|- rs1_h1_val == 61439<br> - rs1_h0_val == 65503<br>                                                                                                                                                                                                                                         |[0x80000644]:UKSTSA16 t6, t5, t4<br> [0x80000648]:sw t6, 224(ra)<br>    |
|  57|[0x800023e0]<br>0x0F80AAB9|- rs2_h0_val == 43690<br> - rs1_h1_val == 65407<br>                                                                                                                                                                                                                                         |[0x8000065c]:UKSTSA16 t6, t5, t4<br> [0x80000660]:sw t6, 232(ra)<br>    |
|  58|[0x800023e8]<br>0x1FF00011|- rs1_h1_val == 65519<br>                                                                                                                                                                                                                                                                   |[0x80000670]:UKSTSA16 t6, t5, t4<br> [0x80000674]:sw t6, 240(ra)<br>    |
|  59|[0x800023f0]<br>0x3FFEFFFF|- rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                   |[0x80000684]:UKSTSA16 t6, t5, t4<br> [0x80000688]:sw t6, 248(ra)<br>    |
|  60|[0x800023f8]<br>0x00009555|- rs1_h1_val == 512<br>                                                                                                                                                                                                                                                                     |[0x80000698]:UKSTSA16 t6, t5, t4<br> [0x8000069c]:sw t6, 256(ra)<br>    |
|  61|[0x80002400]<br>0x0000FFFF|- rs2_h0_val == 65533<br> - rs1_h1_val == 32<br>                                                                                                                                                                                                                                            |[0x800006b0]:UKSTSA16 t6, t5, t4<br> [0x800006b4]:sw t6, 264(ra)<br>    |
|  62|[0x80002408]<br>0xFFE7FFFF|- rs1_h1_val == 65527<br>                                                                                                                                                                                                                                                                   |[0x800006c8]:UKSTSA16 t6, t5, t4<br> [0x800006cc]:sw t6, 272(ra)<br>    |
|  63|[0x80002410]<br>0x0000AAB4|- rs1_h1_val == 8<br> - rs1_h0_val == 43690<br>                                                                                                                                                                                                                                             |[0x800006e0]:UKSTSA16 t6, t5, t4<br> [0x800006e4]:sw t6, 280(ra)<br>    |
|  64|[0x80002418]<br>0x00000024|- rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                       |[0x800006f8]:UKSTSA16 t6, t5, t4<br> [0x800006fc]:sw t6, 288(ra)<br>    |
|  65|[0x80002420]<br>0x0000FFFF|- rs1_h0_val == 65407<br>                                                                                                                                                                                                                                                                   |[0x80000710]:UKSTSA16 t6, t5, t4<br> [0x80000714]:sw t6, 296(ra)<br>    |
|  66|[0x80002428]<br>0xBFF3FFFF|- rs2_h0_val == 8192<br>                                                                                                                                                                                                                                                                    |[0x80000724]:UKSTSA16 t6, t5, t4<br> [0x80000728]:sw t6, 304(ra)<br>    |
|  67|[0x80002430]<br>0x0000FF3F|- rs1_h0_val == 65279<br>                                                                                                                                                                                                                                                                   |[0x8000073c]:UKSTSA16 t6, t5, t4<br> [0x80000740]:sw t6, 312(ra)<br>    |
|  68|[0x80002438]<br>0x001E0016|- rs1_h1_val == 65533<br>                                                                                                                                                                                                                                                                   |[0x80000754]:UKSTSA16 t6, t5, t4<br> [0x80000758]:sw t6, 320(ra)<br>    |
|  69|[0x80002440]<br>0x00001013|- rs2_h0_val == 4096<br>                                                                                                                                                                                                                                                                    |[0x80000768]:UKSTSA16 t6, t5, t4<br> [0x8000076c]:sw t6, 328(ra)<br>    |
|  70|[0x80002448]<br>0x00001800|- rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                    |[0x8000077c]:UKSTSA16 t6, t5, t4<br> [0x80000780]:sw t6, 336(ra)<br>    |
