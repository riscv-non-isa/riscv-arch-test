
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
| SIG_REGION                | [('0x80002210', '0x80002650', '136 dwords')]      |
| COV_LABELS                | brev8      |
| TEST_NAME                 | /home/anku/trials/bmanip/64/c_work/brev8-01.S/ref.S    |
| Total Number of coverpoints| 201     |
| Total Coverpoints Hit     | 201      |
| Total Signature Updates   | 136      |
| STAT1                     | 135      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000dac]:brev8 t6, t5
      [0x80000db0]:sd t6, 856(t0)
 -- Signature Address: 0x80002648 Data: 0x00000000919D2D6B
 -- Redundant Coverpoints hit by the op
      - mnemonic : brev8
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - rs1_val == 0x89B9B4D6 #nosat






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

|s.no|            signature             |                                               coverpoints                                               |                              code                               |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------|
|   1|[0x80002210]<br>0x8040201080402010|- mnemonic : brev8<br> - rs1 : x30<br> - rd : x31<br> - rs1 != rd<br> - rs1_val == 0x102040801020408<br> |[0x800003b0]:brev8 t6, t5<br> [0x800003b4]:sd t6, 0(ra)<br>      |
|   2|[0x80002218]<br>0x0000000000000000|- rs1 : x29<br> - rd : x29<br> - rs1 == rd<br> - rs1_val == 0x00000000 #nosat<br>                        |[0x800003bc]:brev8 t4, t4<br> [0x800003c0]:sd t4, 8(ra)<br>      |
|   3|[0x80002220]<br>0x0000000001000000|- rs1 : x31<br> - rd : x30<br> - rs1_val == 0x80000000 #nosat<br>                                        |[0x800003cc]:brev8 t5, t6<br> [0x800003d0]:sd t5, 16(ra)<br>     |
|   4|[0x80002228]<br>0x0000000002000000|- rs1 : x27<br> - rd : x28<br> - rs1_val == 0x40000000 #nosat<br>                                        |[0x800003d8]:brev8 t3, s11<br> [0x800003dc]:sd t3, 24(ra)<br>    |
|   5|[0x80002230]<br>0x0000000005000000|- rs1 : x28<br> - rd : x27<br> - rs1_val == 0xA0000000 #nosat<br>                                        |[0x800003e8]:brev8 s11, t3<br> [0x800003ec]:sd s11, 32(ra)<br>   |
|   6|[0x80002238]<br>0x0000000009000000|- rs1 : x25<br> - rd : x26<br> - rs1_val == 0x90000000 #nosat<br>                                        |[0x800003f8]:brev8 s10, s9<br> [0x800003fc]:sd s10, 40(ra)<br>   |
|   7|[0x80002240]<br>0x0000000013000000|- rs1 : x26<br> - rd : x25<br> - rs1_val == 0xC8000000 #nosat<br>                                        |[0x80000408]:brev8 s9, s10<br> [0x8000040c]:sd s9, 48(ra)<br>    |
|   8|[0x80002248]<br>0x0000000034000000|- rs1 : x23<br> - rd : x24<br> - rs1_val == 0x2C000000 #nosat<br>                                        |[0x80000414]:brev8 s8, s7<br> [0x80000418]:sd s8, 56(ra)<br>     |
|   9|[0x80002250]<br>0x0000000075000000|- rs1 : x24<br> - rd : x23<br> - rs1_val == 0xAE000000 #nosat<br>                                        |[0x80000424]:brev8 s7, s8<br> [0x80000428]:sd s7, 64(ra)<br>     |
|  10|[0x80002258]<br>0x00000000C2000000|- rs1 : x21<br> - rd : x22<br> - rs1_val == 0x43000000 #nosat<br>                                        |[0x80000430]:brev8 s6, s5<br> [0x80000434]:sd s6, 72(ra)<br>     |
|  11|[0x80002260]<br>0x000000008F010000|- rs1 : x22<br> - rd : x21<br> - rs1_val == 0xF1800000 #nosat<br>                                        |[0x80000440]:brev8 s5, s6<br> [0x80000444]:sd s5, 80(ra)<br>     |
|  12|[0x80002268]<br>0x0000000075030000|- rs1 : x19<br> - rd : x20<br> - rs1_val == 0xAEC00000 #nosat<br>                                        |[0x80000450]:brev8 s4, s3<br> [0x80000454]:sd s4, 88(ra)<br>     |
|  13|[0x80002270]<br>0x0000000099040000|- rs1 : x20<br> - rd : x19<br> - rs1_val == 0x99200000 #nosat<br>                                        |[0x80000460]:brev8 s3, s4<br> [0x80000464]:sd s3, 96(ra)<br>     |
|  14|[0x80002278]<br>0x000000000D0E0000|- rs1 : x17<br> - rd : x18<br> - rs1_val == 0xB0700000 #nosat<br>                                        |[0x80000474]:brev8 s2, a7<br> [0x80000478]:sd s2, 104(ra)<br>    |
|  15|[0x80002280]<br>0x00000000AC110000|- rs1 : x18<br> - rd : x17<br> - rs1_val == 0x35880000 #nosat<br>                                        |[0x80000480]:brev8 a7, s2<br> [0x80000484]:sd a7, 112(ra)<br>    |
|  16|[0x80002288]<br>0x000000005A330000|- rs1 : x15<br> - rd : x16<br> - rs1_val == 0x5ACC0000 #nosat<br>                                        |[0x8000048c]:brev8 a6, a5<br> [0x80000490]:sd a6, 120(ra)<br>    |
|  17|[0x80002290]<br>0x000000007A5C0000|- rs1 : x16<br> - rd : x15<br> - rs1_val == 0x5E3A0000 #nosat<br>                                        |[0x80000498]:brev8 a5, a6<br> [0x8000049c]:sd a5, 128(ra)<br>    |
|  18|[0x80002298]<br>0x0000000075B80000|- rs1 : x13<br> - rd : x14<br> - rs1_val == 0xAE1D0000 #nosat<br>                                        |[0x800004ac]:brev8 a4, a3<br> [0x800004b0]:sd a4, 136(ra)<br>    |
|  19|[0x800022a0]<br>0x0000000076CD0100|- rs1 : x14<br> - rd : x13<br> - rs1_val == 0x6EB38000 #nosat<br>                                        |[0x800004b8]:brev8 a3, a4<br> [0x800004bc]:sd a3, 144(ra)<br>    |
|  20|[0x800022a8]<br>0x000000007D680200|- rs1 : x11<br> - rd : x12<br> - rs1_val == 0xBE164000 #nosat<br>                                        |[0x800004cc]:brev8 a2, a1<br> [0x800004d0]:sd a2, 152(ra)<br>    |
|  21|[0x800022b0]<br>0x00000000B38F0500|- rs1 : x12<br> - rd : x11<br> - rs1_val == 0xCDF1A000 #nosat<br>                                        |[0x800004e0]:brev8 a1, a2<br> [0x800004e4]:sd a1, 160(ra)<br>    |
|  22|[0x800022b8]<br>0x0000000001B20B00|- rs1 : x9<br> - rd : x10<br> - rs1_val == 0x804DD000 #nosat<br>                                         |[0x800004f4]:brev8 a0, s1<br> [0x800004f8]:sd a0, 168(ra)<br>    |
|  23|[0x800022c0]<br>0x00000000BCF21800|- rs1 : x10<br> - rd : x9<br> - rs1_val == 0x3D4F1800 #nosat<br>                                         |[0x80000504]:brev8 s1, a0<br> [0x80000508]:sd s1, 176(ra)<br>    |
|  24|[0x800022c8]<br>0x00000000FD253200|- rs1 : x7<br> - rd : x8<br> - rs1_val == 0xBFA44C00 #nosat<br>                                          |[0x8000051c]:brev8 fp, t2<br> [0x80000520]:sd fp, 184(ra)<br>    |
|  25|[0x800022d0]<br>0x00000000A2225F00|- rs1 : x8<br> - rd : x7<br> - rs1_val == 0x4544FA00 #nosat<br>                                          |[0x8000052c]:brev8 t2, fp<br> [0x80000530]:sd t2, 192(ra)<br>    |
|  26|[0x800022d8]<br>0x00000000E3FDCF00|- rs1 : x5<br> - rd : x6<br> - rs1_val == 0xC7BFF300 #nosat<br>                                          |[0x80000544]:brev8 t1, t0<br> [0x80000548]:sd t1, 200(ra)<br>    |
|  27|[0x800022e0]<br>0x000000009BB90001|- rs1 : x6<br> - rd : x5<br> - rs1_val == 0xD99D0080 #nosat<br>                                          |[0x8000055c]:brev8 t0, t1<br> [0x80000560]:sd t0, 208(ra)<br>    |
|  28|[0x800022e8]<br>0x0000000004BA9C03|- rs1 : x3<br> - rd : x4<br> - rs1_val == 0x205D39C0 #nosat<br>                                          |[0x8000056c]:brev8 tp, gp<br> [0x80000570]:sd tp, 216(ra)<br>    |
|  29|[0x800022f0]<br>0x000000008C8ED805|- rs1 : x4<br> - rd : x3<br> - rs1_val == 0x31711BA0 #nosat<br>                                          |[0x80000584]:brev8 gp, tp<br> [0x80000588]:sd gp, 0(t0)<br>      |
|  30|[0x800022f8]<br>0x000000009579E00D|- rs1 : x1<br> - rd : x2<br> - rs1_val == 0xA99E07B0 #nosat<br>                                          |[0x8000059c]:brev8 sp, ra<br> [0x800005a0]:sd sp, 8(t0)<br>      |
|  31|[0x80002300]<br>0x00000000DC155716|- rs1 : x2<br> - rd : x1<br> - rs1_val == 0x3BA8EA68 #nosat<br>                                          |[0x800005ac]:brev8 ra, sp<br> [0x800005b0]:sd ra, 16(t0)<br>     |
|  32|[0x80002308]<br>0x0000000000000000|- rs1 : x0<br>                                                                                           |[0x800005b8]:brev8 t6, zero<br> [0x800005bc]:sd t6, 24(t0)<br>   |
|  33|[0x80002310]<br>0x0000000000000000|- rd : x0<br> - rs1_val == 0x89B9B4D6 #nosat<br>                                                         |[0x800005d0]:brev8 zero, t6<br> [0x800005d4]:sd zero, 32(t0)<br> |
|  34|[0x80002318]<br>0x000000009EBE6EFB|- rs1_val == 0x797D76DF #nosat<br>                                                                       |[0x800005e0]:brev8 t6, t5<br> [0x800005e4]:sd t6, 40(t0)<br>     |
|  35|[0x80002320]<br>0x00000000C08DEB32|- rs1_val == 0x03B1D74C #nosat<br>                                                                       |[0x800005f0]:brev8 t6, t5<br> [0x800005f4]:sd t6, 48(t0)<br>     |
|  36|[0x80002328]<br>0x00000000FFBE7A83|- rs1_val == 0xFF7D5EC1 #nosat<br>                                                                       |[0x80000608]:brev8 t6, t5<br> [0x8000060c]:sd t6, 56(t0)<br>     |
|  37|[0x80002330]<br>0x00000000D9037CC4|- rs1_val == 0x9BC03E23 #nosat<br>                                                                       |[0x80000620]:brev8 t6, t5<br> [0x80000624]:sd t6, 64(t0)<br>     |
|  38|[0x80002338]<br>0x00000000F5A494E3|- rs1_val == 0xAF2529C7 #nosat<br>                                                                       |[0x80000638]:brev8 t6, t5<br> [0x8000063c]:sd t6, 72(t0)<br>     |
|  39|[0x80002340]<br>0x000000006B0E15F4|- rs1_val == 0xD670A82F #nosat<br>                                                                       |[0x80000650]:brev8 t6, t5<br> [0x80000654]:sd t6, 80(t0)<br>     |
|  40|[0x80002348]<br>0x00000000042A5FF9|- rs1_val == 0x2054FA9F #nosat<br>                                                                       |[0x80000660]:brev8 t6, t5<br> [0x80000664]:sd t6, 88(t0)<br>     |
|  41|[0x80002350]<br>0x00000000763E30FC|- rs1_val == 0x6E7C0C3F #nosat<br>                                                                       |[0x80000670]:brev8 t6, t5<br> [0x80000674]:sd t6, 96(t0)<br>     |
|  42|[0x80002358]<br>0x00000000E035FAFE|- rs1_val == 0x07AC5F7F #nosat<br>                                                                       |[0x80000680]:brev8 t6, t5<br> [0x80000684]:sd t6, 104(t0)<br>    |
|  43|[0x80002360]<br>0x00000000D27605FF|- rs1_val == 0x4B6EA0FF #nosat<br>                                                                       |[0x80000690]:brev8 t6, t5<br> [0x80000694]:sd t6, 112(t0)<br>    |
|  44|[0x80002368]<br>0x000000007D25A4FF|- rs1_val == 0xBEA425FF #nosat<br>                                                                       |[0x800006a8]:brev8 t6, t5<br> [0x800006ac]:sd t6, 120(t0)<br>    |
|  45|[0x80002370]<br>0x000000006C43C5FF|- rs1_val == 0x36C2A3FF #nosat<br>                                                                       |[0x800006b8]:brev8 t6, t5<br> [0x800006bc]:sd t6, 128(t0)<br>    |
|  46|[0x80002378]<br>0x000000001BA1EDFF|- rs1_val == 0xD885B7FF #nosat<br>                                                                       |[0x800006d0]:brev8 t6, t5<br> [0x800006d4]:sd t6, 136(t0)<br>    |
|  47|[0x80002380]<br>0x000000001120F4FF|- rs1_val == 0x88042FFF #nosat<br>                                                                       |[0x800006e8]:brev8 t6, t5<br> [0x800006ec]:sd t6, 144(t0)<br>    |
|  48|[0x80002388]<br>0x000000004884F9FF|- rs1_val == 0x12219FFF #nosat<br>                                                                       |[0x800006f8]:brev8 t6, t5<br> [0x800006fc]:sd t6, 152(t0)<br>    |
|  49|[0x80002390]<br>0x0000000084AAFDFF|- rs1_val == 0x2155BFFF #nosat<br>                                                                       |[0x80000708]:brev8 t6, t5<br> [0x8000070c]:sd t6, 160(t0)<br>    |
|  50|[0x80002398]<br>0x00000000F4EFFEFF|- rs1_val == 0x2FF77FFF #nosat<br>                                                                       |[0x80000718]:brev8 t6, t5<br> [0x8000071c]:sd t6, 168(t0)<br>    |
|  51|[0x800023a0]<br>0x00000000DD17FFFF|- rs1_val == 0xBBE8FFFF #nosat<br>                                                                       |[0x80000730]:brev8 t6, t5<br> [0x80000734]:sd t6, 176(t0)<br>    |
|  52|[0x800023a8]<br>0x0000000025A8FFFF|- rs1_val == 0xA415FFFF #nosat<br>                                                                       |[0x80000748]:brev8 t6, t5<br> [0x8000074c]:sd t6, 184(t0)<br>    |
|  53|[0x800023b0]<br>0x000000009CC5FFFF|- rs1_val == 0x39A3FFFF #nosat<br>                                                                       |[0x80000758]:brev8 t6, t5<br> [0x8000075c]:sd t6, 192(t0)<br>    |
|  54|[0x800023b8]<br>0x000000007BE1FFFF|- rs1_val == 0xDE87FFFF #nosat<br>                                                                       |[0x80000770]:brev8 t6, t5<br> [0x80000774]:sd t6, 200(t0)<br>    |
|  55|[0x800023c0]<br>0x00000000A4F5FFFF|- rs1_val == 0x25AFFFFF #nosat<br>                                                                       |[0x80000780]:brev8 t6, t5<br> [0x80000784]:sd t6, 208(t0)<br>    |
|  56|[0x800023c8]<br>0x0000000055F9FFFF|- rs1_val == 0xAA9FFFFF #nosat<br>                                                                       |[0x80000794]:brev8 t6, t5<br> [0x80000798]:sd t6, 216(t0)<br>    |
|  57|[0x800023d0]<br>0x00000000DCFCFFFF|- rs1_val == 0x3B3FFFFF #nosat<br>                                                                       |[0x800007a4]:brev8 t6, t5<br> [0x800007a8]:sd t6, 224(t0)<br>    |
|  58|[0x800023d8]<br>0x0000000065FEFFFF|- rs1_val == 0xA67FFFFF #nosat<br>                                                                       |[0x800007b8]:brev8 t6, t5<br> [0x800007bc]:sd t6, 232(t0)<br>    |
|  59|[0x800023e0]<br>0x0000000074FFFFFF|- rs1_val == 0x2EFFFFFF #nosat<br>                                                                       |[0x800007c8]:brev8 t6, t5<br> [0x800007cc]:sd t6, 240(t0)<br>    |
|  60|[0x800023e8]<br>0x0000000087FFFFFF|- rs1_val == 0xE1FFFFFF #nosat<br>                                                                       |[0x800007dc]:brev8 t6, t5<br> [0x800007e0]:sd t6, 248(t0)<br>    |
|  61|[0x800023f0]<br>0x00000000DBFFFFFF|- rs1_val == 0xDBFFFFFF #nosat<br>                                                                       |[0x800007f0]:brev8 t6, t5<br> [0x800007f4]:sd t6, 256(t0)<br>    |
|  62|[0x800023f8]<br>0x00000000E3FFFFFF|- rs1_val == 0xC7FFFFFF #nosat<br>                                                                       |[0x80000804]:brev8 t6, t5<br> [0x80000808]:sd t6, 264(t0)<br>    |
|  63|[0x80002400]<br>0x00000000F5FFFFFF|- rs1_val == 0xAFFFFFFF #nosat<br>                                                                       |[0x80000818]:brev8 t6, t5<br> [0x8000081c]:sd t6, 272(t0)<br>    |
|  64|[0x80002408]<br>0x00000000FBFFFFFF|- rs1_val == 0xDFFFFFFF #nosat<br>                                                                       |[0x8000082c]:brev8 t6, t5<br> [0x80000830]:sd t6, 280(t0)<br>    |
|  65|[0x80002410]<br>0x00000000FDFFFFFF|- rs1_val == 0xBFFFFFFF #nosat<br>                                                                       |[0x80000840]:brev8 t6, t5<br> [0x80000844]:sd t6, 288(t0)<br>    |
|  66|[0x80002418]<br>0x00000000FEFFFFFF|- rs1_val == 0x7FFFFFFF #nosat<br>                                                                       |[0x80000850]:brev8 t6, t5<br> [0x80000854]:sd t6, 296(t0)<br>    |
|  67|[0x80002420]<br>0x00000000FFFFFFFF|- rs1_val == 0xFFFFFFFF #nosat<br>                                                                       |[0x80000864]:brev8 t6, t5<br> [0x80000868]:sd t6, 304(t0)<br>    |
|  68|[0x80002428]<br>0x00000000DF8EE0AC|- rs1_val == 0xFB710735 #nosat<br>                                                                       |[0x8000087c]:brev8 t6, t5<br> [0x80000880]:sd t6, 312(t0)<br>    |
|  69|[0x80002430]<br>0x000000001A766133|- rs1_val == 0x586E86CC #nosat<br>                                                                       |[0x8000088c]:brev8 t6, t5<br> [0x80000890]:sd t6, 320(t0)<br>    |
|  70|[0x80002438]<br>0x00000000541DD516|- rs1_val == 0x2AB8AB68 #nosat<br>                                                                       |[0x8000089c]:brev8 t6, t5<br> [0x800008a0]:sd t6, 328(t0)<br>    |
|  71|[0x80002440]<br>0x0000000048D6FEC6|- rs1_val == 0x126B7F63 #nosat<br>                                                                       |[0x800008ac]:brev8 t6, t5<br> [0x800008b0]:sd t6, 336(t0)<br>    |
|  72|[0x80002448]<br>0x0000000090A1F414|- rs1_val == 0x09852F28 #nosat<br>                                                                       |[0x800008bc]:brev8 t6, t5<br> [0x800008c0]:sd t6, 344(t0)<br>    |
|  73|[0x80002450]<br>0x00000000E0F79F83|- rs1_val == 0x07EFF9C1 #nosat<br>                                                                       |[0x800008cc]:brev8 t6, t5<br> [0x800008d0]:sd t6, 352(t0)<br>    |
|  74|[0x80002458]<br>0x00000000C022BB02|- rs1_val == 0x0344DD40 #nosat<br>                                                                       |[0x800008dc]:brev8 t6, t5<br> [0x800008e0]:sd t6, 360(t0)<br>    |
|  75|[0x80002460]<br>0x0000000080E78B06|- rs1_val == 0x01E7D160 #nosat<br>                                                                       |[0x800008ec]:brev8 t6, t5<br> [0x800008f0]:sd t6, 368(t0)<br>    |
|  76|[0x80002468]<br>0x00000000006DF464|- rs1_val == 0x00B62F26 #nosat<br>                                                                       |[0x800008fc]:brev8 t6, t5<br> [0x80000900]:sd t6, 376(t0)<br>    |
|  77|[0x80002470]<br>0x000000000032F5B9|- rs1_val == 0x004CAF9D #nosat<br>                                                                       |[0x8000090c]:brev8 t6, t5<br> [0x80000910]:sd t6, 384(t0)<br>    |
|  78|[0x80002478]<br>0x0000000000D42D41|- rs1_val == 0x002BB482 #nosat<br>                                                                       |[0x8000091c]:brev8 t6, t5<br> [0x80000920]:sd t6, 392(t0)<br>    |
|  79|[0x80002480]<br>0x0000000000C8B7E3|- rs1_val == 0x0013EDC7 #nosat<br>                                                                       |[0x8000092c]:brev8 t6, t5<br> [0x80000930]:sd t6, 400(t0)<br>    |
|  80|[0x80002488]<br>0x0000000000109E29|- rs1_val == 0x00087994 #nosat<br>                                                                       |[0x8000093c]:brev8 t6, t5<br> [0x80000940]:sd t6, 408(t0)<br>    |
|  81|[0x80002490]<br>0x0000000000A02864|- rs1_val == 0x00051426 #nosat<br>                                                                       |[0x8000094c]:brev8 t6, t5<br> [0x80000950]:sd t6, 416(t0)<br>    |
|  82|[0x80002498]<br>0x000000000040112A|- rs1_val == 0x00028854 #nosat<br>                                                                       |[0x8000095c]:brev8 t6, t5<br> [0x80000960]:sd t6, 424(t0)<br>    |
|  83|[0x800024a0]<br>0x000000000080E677|- rs1_val == 0x000167EE #nosat<br>                                                                       |[0x8000096c]:brev8 t6, t5<br> [0x80000970]:sd t6, 432(t0)<br>    |
|  84|[0x800024a8]<br>0x0000000000007F5E|- rs1_val == 0x0000FE7A #nosat<br>                                                                       |[0x8000097c]:brev8 t6, t5<br> [0x80000980]:sd t6, 440(t0)<br>    |
|  85|[0x800024b0]<br>0x0000000000007AE1|- rs1_val == 0x00005E87 #nosat<br>                                                                       |[0x8000098c]:brev8 t6, t5<br> [0x80000990]:sd t6, 448(t0)<br>    |
|  86|[0x800024b8]<br>0x0000000000008CC3|- rs1_val == 0x000031C3 #nosat<br>                                                                       |[0x8000099c]:brev8 t6, t5<br> [0x800009a0]:sd t6, 456(t0)<br>    |
|  87|[0x800024c0]<br>0x0000000000009854|- rs1_val == 0x0000192A #nosat<br>                                                                       |[0x800009ac]:brev8 t6, t5<br> [0x800009b0]:sd t6, 464(t0)<br>    |
|  88|[0x800024c8]<br>0x000000000000709E|- rs1_val == 0x00000E79 #nosat<br>                                                                       |[0x800009bc]:brev8 t6, t5<br> [0x800009c0]:sd t6, 472(t0)<br>    |
|  89|[0x800024d0]<br>0x000000000000E05E|- rs1_val == 0x0000077A #nosat<br>                                                                       |[0x800009c8]:brev8 t6, t5<br> [0x800009cc]:sd t6, 480(t0)<br>    |
|  90|[0x800024d8]<br>0x00000000000040CC|- rs1_val == 0x00000233 #nosat<br>                                                                       |[0x800009d4]:brev8 t6, t5<br> [0x800009d8]:sd t6, 488(t0)<br>    |
|  91|[0x800024e0]<br>0x000000000000808A|- rs1_val == 0x00000151 #nosat<br>                                                                       |[0x800009e0]:brev8 t6, t5<br> [0x800009e4]:sd t6, 496(t0)<br>    |
|  92|[0x800024e8]<br>0x000000000000007D|- rs1_val == 0x000000BE #nosat<br>                                                                       |[0x800009ec]:brev8 t6, t5<br> [0x800009f0]:sd t6, 504(t0)<br>    |
|  93|[0x800024f0]<br>0x00000000000000EE|- rs1_val == 0x00000077 #nosat<br>                                                                       |[0x800009f8]:brev8 t6, t5<br> [0x800009fc]:sd t6, 512(t0)<br>    |
|  94|[0x800024f8]<br>0x0000000000000044|- rs1_val == 0x00000022 #nosat<br>                                                                       |[0x80000a04]:brev8 t6, t5<br> [0x80000a08]:sd t6, 520(t0)<br>    |
|  95|[0x80002500]<br>0x0000000000000068|- rs1_val == 0x00000016 #nosat<br>                                                                       |[0x80000a10]:brev8 t6, t5<br> [0x80000a14]:sd t6, 528(t0)<br>    |
|  96|[0x80002508]<br>0x0000000000000070|- rs1_val == 0x0000000E #nosat<br>                                                                       |[0x80000a1c]:brev8 t6, t5<br> [0x80000a20]:sd t6, 536(t0)<br>    |
|  97|[0x80002510]<br>0x0000000000000020|- rs1_val == 0x00000004 #nosat<br>                                                                       |[0x80000a28]:brev8 t6, t5<br> [0x80000a2c]:sd t6, 544(t0)<br>    |
|  98|[0x80002518]<br>0x0000000000000040|- rs1_val == 0x00000002 #nosat<br>                                                                       |[0x80000a34]:brev8 t6, t5<br> [0x80000a38]:sd t6, 552(t0)<br>    |
|  99|[0x80002520]<br>0x0000000000000080|- rs1_val == 0x00000001 #nosat<br>                                                                       |[0x80000a40]:brev8 t6, t5<br> [0x80000a44]:sd t6, 560(t0)<br>    |
| 100|[0x80002528]<br>0x00000000860D7750|- rs1_val == 0x61B0EE0A #nosat<br>                                                                       |[0x80000a50]:brev8 t6, t5<br> [0x80000a54]:sd t6, 568(t0)<br>    |
| 101|[0x80002530]<br>0x0000000059674594|- rs1_val == 0x9AE6A229 #nosat<br>                                                                       |[0x80000a68]:brev8 t6, t5<br> [0x80000a6c]:sd t6, 576(t0)<br>    |
| 102|[0x80002538]<br>0x000000005B56CD54|- rs1_val == 0xDA6AB32A #nosat<br>                                                                       |[0x80000a80]:brev8 t6, t5<br> [0x80000a84]:sd t6, 584(t0)<br>    |
| 103|[0x80002540]<br>0x00000000C781C467|- rs1_val == 0xE38123E6 #nosat<br>                                                                       |[0x80000a98]:brev8 t6, t5<br> [0x80000a9c]:sd t6, 592(t0)<br>    |
| 104|[0x80002548]<br>0x000000002FCCC121|- rs1_val == 0xF4338384 #nosat<br>                                                                       |[0x80000ab0]:brev8 t6, t5<br> [0x80000ab4]:sd t6, 600(t0)<br>    |
| 105|[0x80002550]<br>0x00000000DFF9A8A3|- rs1_val == 0xFB9F15C5 #nosat<br>                                                                       |[0x80000ac8]:brev8 t6, t5<br> [0x80000acc]:sd t6, 608(t0)<br>    |
| 106|[0x80002558]<br>0x00000000BF1630B8|- rs1_val == 0xFD680C1D #nosat<br>                                                                       |[0x80000ae0]:brev8 t6, t5<br> [0x80000ae4]:sd t6, 616(t0)<br>    |
| 107|[0x80002560]<br>0x000000007F2E27FA|- rs1_val == 0xFE74E45F #nosat<br>                                                                       |[0x80000af8]:brev8 t6, t5<br> [0x80000afc]:sd t6, 624(t0)<br>    |
| 108|[0x80002568]<br>0x00000000FF78DA0F|- rs1_val == 0xFF1E5BF0 #nosat<br>                                                                       |[0x80000b10]:brev8 t6, t5<br> [0x80000b14]:sd t6, 632(t0)<br>    |
| 109|[0x80002570]<br>0x00000000FF39A4E7|- rs1_val == 0xFF9C25E7 #nosat<br>                                                                       |[0x80000b28]:brev8 t6, t5<br> [0x80000b2c]:sd t6, 640(t0)<br>    |
| 110|[0x80002578]<br>0x00000000FFD3F3C8|- rs1_val == 0xFFCBCF13 #nosat<br>                                                                       |[0x80000b40]:brev8 t6, t5<br> [0x80000b44]:sd t6, 648(t0)<br>    |
| 111|[0x80002580]<br>0x00000000FF07F6E1|- rs1_val == 0xFFE06F87 #nosat<br>                                                                       |[0x80000b58]:brev8 t6, t5<br> [0x80000b5c]:sd t6, 656(t0)<br>    |
| 112|[0x80002588]<br>0x00000000FFEF138C|- rs1_val == 0xFFF7C831 #nosat<br>                                                                       |[0x80000b70]:brev8 t6, t5<br> [0x80000b74]:sd t6, 664(t0)<br>    |
| 113|[0x80002590]<br>0x00000000FF5FE91E|- rs1_val == 0xFFFA9778 #nosat<br>                                                                       |[0x80000b88]:brev8 t6, t5<br> [0x80000b8c]:sd t6, 672(t0)<br>    |
| 114|[0x80002598]<br>0x00000000FF3FD722|- rs1_val == 0xFFFCEB44 #nosat<br>                                                                       |[0x80000ba0]:brev8 t6, t5<br> [0x80000ba4]:sd t6, 680(t0)<br>    |
| 115|[0x800025a0]<br>0x00000000FF7FFC5D|- rs1_val == 0xFFFE3FBA #nosat<br>                                                                       |[0x80000bb8]:brev8 t6, t5<br> [0x80000bbc]:sd t6, 688(t0)<br>    |
| 116|[0x800025a8]<br>0x00000000FFFF681A|- rs1_val == 0xFFFF1658 #nosat<br>                                                                       |[0x80000bd0]:brev8 t6, t5<br> [0x80000bd4]:sd t6, 696(t0)<br>    |
| 117|[0x800025b0]<br>0x00000000FFFF355C|- rs1_val == 0xFFFFAC3A #nosat<br>                                                                       |[0x80000be8]:brev8 t6, t5<br> [0x80000bec]:sd t6, 704(t0)<br>    |
| 118|[0x800025b8]<br>0x00000000FFFFB30F|- rs1_val == 0xFFFFCDF0 #nosat<br>                                                                       |[0x80000c00]:brev8 t6, t5<br> [0x80000c04]:sd t6, 712(t0)<br>    |
| 119|[0x800025c0]<br>0x00000000FFFF6721|- rs1_val == 0xFFFFE684 #nosat<br>                                                                       |[0x80000c18]:brev8 t6, t5<br> [0x80000c1c]:sd t6, 720(t0)<br>    |
| 120|[0x800025c8]<br>0x00000000FFFF8F63|- rs1_val == 0xFFFFF1C6 #nosat<br>                                                                       |[0x80000c30]:brev8 t6, t5<br> [0x80000c34]:sd t6, 728(t0)<br>    |
| 121|[0x800025d0]<br>0x00000000FFFF1F60|- rs1_val == 0xFFFFF806 #nosat<br>                                                                       |[0x80000c44]:brev8 t6, t5<br> [0x80000c48]:sd t6, 736(t0)<br>    |
| 122|[0x800025d8]<br>0x00000000FFFF3F1E|- rs1_val == 0xFFFFFC78 #nosat<br>                                                                       |[0x80000c58]:brev8 t6, t5<br> [0x80000c5c]:sd t6, 744(t0)<br>    |
| 123|[0x800025e0]<br>0x00000000FFFF7FDC|- rs1_val == 0xFFFFFE3B #nosat<br>                                                                       |[0x80000c6c]:brev8 t6, t5<br> [0x80000c70]:sd t6, 752(t0)<br>    |
| 124|[0x800025e8]<br>0x00000000FFFFFF5A|- rs1_val == 0xFFFFFF5A #nosat<br>                                                                       |[0x80000c80]:brev8 t6, t5<br> [0x80000c84]:sd t6, 760(t0)<br>    |
| 125|[0x800025f0]<br>0x00000000FFFFFF11|- rs1_val == 0xFFFFFF88 #nosat<br>                                                                       |[0x80000c94]:brev8 t6, t5<br> [0x80000c98]:sd t6, 768(t0)<br>    |
| 126|[0x800025f8]<br>0x00000000FFFFFF83|- rs1_val == 0xFFFFFFC1 #nosat<br>                                                                       |[0x80000ca8]:brev8 t6, t5<br> [0x80000cac]:sd t6, 776(t0)<br>    |
| 127|[0x80002600]<br>0x00000000FFFFFF17|- rs1_val == 0xFFFFFFE8 #nosat<br>                                                                       |[0x80000cbc]:brev8 t6, t5<br> [0x80000cc0]:sd t6, 784(t0)<br>    |
| 128|[0x80002608]<br>0x00000000FFFFFF8F|- rs1_val == 0xFFFFFFF1 #nosat<br>                                                                       |[0x80000cd0]:brev8 t6, t5<br> [0x80000cd4]:sd t6, 792(t0)<br>    |
| 129|[0x80002610]<br>0x00000000FFFFFF9F|- rs1_val == 0xFFFFFFF9 #nosat<br>                                                                       |[0x80000ce4]:brev8 t6, t5<br> [0x80000ce8]:sd t6, 800(t0)<br>    |
| 130|[0x80002618]<br>0x00000000FFFFFFBF|- rs1_val == 0xFFFFFFFD #nosat<br>                                                                       |[0x80000cf8]:brev8 t6, t5<br> [0x80000cfc]:sd t6, 808(t0)<br>    |
| 131|[0x80002620]<br>0x00000000FFFFFF7F|- rs1_val == 0xFFFFFFFE #nosat<br>                                                                       |[0x80000d0c]:brev8 t6, t5<br> [0x80000d10]:sd t6, 816(t0)<br>    |
| 132|[0x80002628]<br>0x4020108040201080|- rs1_val == 0x204080102040801<br>                                                                       |[0x80000d34]:brev8 t6, t5<br> [0x80000d38]:sd t6, 824(t0)<br>    |
| 133|[0x80002630]<br>0x2010804020108040|- rs1_val == 0x408010204080102<br>                                                                       |[0x80000d54]:brev8 t6, t5<br> [0x80000d58]:sd t6, 832(t0)<br>    |
| 134|[0x80002638]<br>0x1080402010804020|- rs1_val == 0x801020408010204<br>                                                                       |[0x80000d7c]:brev8 t6, t5<br> [0x80000d80]:sd t6, 840(t0)<br>    |
| 135|[0x80002640]<br>0x0000000085021E2D|- rs1_val == 0xA14078B4 #nosat<br>                                                                       |[0x80000d94]:brev8 t6, t5<br> [0x80000d98]:sd t6, 848(t0)<br>    |
