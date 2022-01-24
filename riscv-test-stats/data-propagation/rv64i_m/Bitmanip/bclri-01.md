
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000f30')]      |
| SIG_REGION                | [('0x80002210', '0x80002700', '158 dwords')]      |
| COV_LABELS                | bclri      |
| TEST_NAME                 | /home/anku/bmanip/new_trials/trial8/64/riscof_work/bclri-01.S/ref.S    |
| Total Number of coverpoints| 228     |
| Total Coverpoints Hit     | 223      |
| Total Signature Updates   | 158      |
| STAT1                     | 157      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f20]:bclri t6, t5, 0
      [0x80000f24]:sd t6, 1032(t0)
 -- Signature Address: 0x800026f8 Data: 0x0000000072C58380
 -- Redundant Coverpoints hit by the op
      - opcode : bclri
      - rs1 : x30
      - rd : x31
      - rs1 != rd
      - rs1_val == 0x72C58380 and imm_val == 0x00 #nosat






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

|s.no|            signature             |                                                        coverpoints                                                        |                                code                                |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000FFFFFFFB|- opcode : bclri<br> - rs1 : x30<br> - rd : x31<br> - rs1 != rd<br> - rs1_val == 0xFFFFFFFF and imm_val == 0x02 #nosat<br> |[0x800003a4]:bclri t6, t5, 2<br> [0x800003a8]:sd t6, 0(ra)<br>      |
|   2|[0x80002218]<br>0x000000002DEDB6A6|- rs1 : x29<br> - rd : x29<br> - rs1 == rd<br> - imm_val == 0x00 and rs1_val == 0x2DEDB6A7 #nosat<br>                      |[0x800003b4]:bclri t4, t4, 0<br> [0x800003b8]:sd t4, 8(ra)<br>      |
|   3|[0x80002220]<br>0x000000003C262728|- rs1 : x31<br> - rd : x30<br> - imm_val == 0x10 and rs1_val == 0x3C272728 #nosat<br>                                      |[0x800003c4]:bclri t5, t6, 16<br> [0x800003c8]:sd t5, 16(ra)<br>    |
|   4|[0x80002228]<br>0x000000004E55C73D|- rs1 : x27<br> - rd : x28<br> - imm_val == 0x18 and rs1_val == 0x4F55C73D #nosat<br>                                      |[0x800003d4]:bclri t3, s11, 24<br> [0x800003d8]:sd t3, 24(ra)<br>   |
|   5|[0x80002230]<br>0x00000000B0AB577A|- rs1 : x28<br> - rd : x27<br> - imm_val == 0x14 and rs1_val == 0xB0AB577A #nosat<br>                                      |[0x800003ec]:bclri s11, t3, 20<br> [0x800003f0]:sd s11, 32(ra)<br>  |
|   6|[0x80002238]<br>0x00000000F0EB21AA|- rs1 : x25<br> - rd : x26<br> - imm_val == 0x1A and rs1_val == 0xF0EB21AA #nosat<br>                                      |[0x80000404]:bclri s10, s9, 26<br> [0x80000408]:sd s10, 40(ra)<br>  |
|   7|[0x80002240]<br>0x00000000A1E16E27|- rs1 : x26<br> - rd : x25<br> - imm_val == 0x1B and rs1_val == 0xA9E16E27 #nosat<br>                                      |[0x8000041c]:bclri s9, s10, 27<br> [0x80000420]:sd s9, 48(ra)<br>   |
|   8|[0x80002248]<br>0x0000000000000000|- rs1 : x23<br> - rd : x24<br> - rs1_val == 0x00000000 and imm_val == 0x0C #nosat<br>                                      |[0x80000428]:bclri s8, s7, 12<br> [0x8000042c]:sd s8, 56(ra)<br>    |
|   9|[0x80002250]<br>0x0000000080000000|- rs1 : x24<br> - rd : x23<br> - rs1_val == 0x80000000 and imm_val == 0x05 #nosat<br>                                      |[0x80000438]:bclri s7, s8, 5<br> [0x8000043c]:sd s7, 64(ra)<br>     |
|  10|[0x80002258]<br>0x0000000040000000|- rs1 : x21<br> - rd : x22<br> - rs1_val == 0x40000000 and imm_val == 0x01 #nosat<br>                                      |[0x80000444]:bclri s6, s5, 1<br> [0x80000448]:sd s6, 72(ra)<br>     |
|  11|[0x80002260]<br>0x0000000060000000|- rs1 : x22<br> - rd : x21<br> - rs1_val == 0x60000000 and imm_val == 0x18 #nosat<br>                                      |[0x80000450]:bclri s5, s6, 24<br> [0x80000454]:sd s5, 80(ra)<br>    |
|  12|[0x80002268]<br>0x00000000B0000000|- rs1 : x19<br> - rd : x20<br> - rs1_val == 0xB0000000 and imm_val == 0x1E #nosat<br>                                      |[0x80000460]:bclri s4, s3, 30<br> [0x80000464]:sd s4, 88(ra)<br>    |
|  13|[0x80002270]<br>0x0000000008000000|- rs1 : x20<br> - rd : x19<br> - rs1_val == 0x08000000 and imm_val == 0x1A #nosat<br>                                      |[0x8000046c]:bclri s3, s4, 26<br> [0x80000470]:sd s3, 96(ra)<br>    |
|  14|[0x80002278]<br>0x00000000F4000000|- rs1 : x17<br> - rd : x18<br> - rs1_val == 0xF4000000 and imm_val == 0x05 #nosat<br>                                      |[0x8000047c]:bclri s2, a7, 5<br> [0x80000480]:sd s2, 104(ra)<br>    |
|  15|[0x80002280]<br>0x0000000082000000|- rs1 : x18<br> - rd : x17<br> - rs1_val == 0x82000000 and imm_val == 0x0A #nosat<br>                                      |[0x8000048c]:bclri a7, s2, 10<br> [0x80000490]:sd a7, 112(ra)<br>   |
|  16|[0x80002288]<br>0x00000000FD000000|- rs1 : x15<br> - rd : x16<br> - rs1_val == 0xFD000000 and imm_val == 0x03 #nosat<br>                                      |[0x8000049c]:bclri a6, a5, 3<br> [0x800004a0]:sd a6, 120(ra)<br>    |
|  17|[0x80002290]<br>0x00000000D8800000|- rs1 : x16<br> - rd : x15<br> - rs1_val == 0xD8800000 and imm_val == 0x0A #nosat<br>                                      |[0x800004ac]:bclri a5, a6, 10<br> [0x800004b0]:sd a5, 128(ra)<br>   |
|  18|[0x80002298]<br>0x00000000C8C00000|- rs1 : x13<br> - rd : x14<br> - rs1_val == 0xC8C00000 and imm_val == 0x14 #nosat<br>                                      |[0x800004bc]:bclri a4, a3, 20<br> [0x800004c0]:sd a4, 136(ra)<br>   |
|  19|[0x800022a0]<br>0x00000000A3200000|- rs1 : x14<br> - rd : x13<br> - rs1_val == 0xA3200000 and imm_val == 0x08 #nosat<br>                                      |[0x800004cc]:bclri a3, a4, 8<br> [0x800004d0]:sd a3, 144(ra)<br>    |
|  20|[0x800022a8]<br>0x00000000C7900000|- rs1 : x11<br> - rd : x12<br> - rs1_val == 0xC7900000 and imm_val == 0x1B #nosat<br>                                      |[0x800004e0]:bclri a2, a1, 27<br> [0x800004e4]:sd a2, 152(ra)<br>   |
|  21|[0x800022b0]<br>0x0000000046880000|- rs1 : x12<br> - rd : x11<br> - rs1_val == 0x46880000 and imm_val == 0x1C #nosat<br>                                      |[0x800004ec]:bclri a1, a2, 28<br> [0x800004f0]:sd a1, 160(ra)<br>   |
|  22|[0x800022b8]<br>0x0000000055440000|- rs1 : x9<br> - rd : x10<br> - rs1_val == 0x55440000 and imm_val == 0x1B #nosat<br>                                       |[0x800004f8]:bclri a0, s1, 27<br> [0x800004fc]:sd a0, 168(ra)<br>   |
|  23|[0x800022c0]<br>0x00000000A56A0000|- rs1 : x10<br> - rd : x9<br> - rs1_val == 0xA56A0000 and imm_val == 0x0E #nosat<br>                                       |[0x8000050c]:bclri s1, a0, 14<br> [0x80000510]:sd s1, 176(ra)<br>   |
|  24|[0x800022c8]<br>0x00000000405D0000|- rs1 : x7<br> - rd : x8<br> - rs1_val == 0x405D0000 and imm_val == 0x03 #nosat<br>                                        |[0x80000518]:bclri fp, t2, 3<br> [0x8000051c]:sd fp, 184(ra)<br>    |
|  25|[0x800022d0]<br>0x00000000CD2F8000|- rs1 : x8<br> - rd : x7<br> - rs1_val == 0xCD2F8000 and imm_val == 0x05 #nosat<br>                                        |[0x8000052c]:bclri t2, fp, 5<br> [0x80000530]:sd t2, 192(ra)<br>    |
|  26|[0x800022d8]<br>0x00000000A4C04000|- rs1 : x5<br> - rd : x6<br> - rs1_val == 0xA6C04000 and imm_val == 0x19 #nosat<br>                                        |[0x80000540]:bclri t1, t0, 25<br> [0x80000544]:sd t1, 200(ra)<br>   |
|  27|[0x800022e0]<br>0x00000000339C2000|- rs1 : x6<br> - rd : x5<br> - rs1_val == 0x33BC2000 and imm_val == 0x15 #nosat<br>                                        |[0x8000054c]:bclri t0, t1, 21<br> [0x80000550]:sd t0, 208(ra)<br>   |
|  28|[0x800022e8]<br>0x00000000F1C6A000|- rs1 : x3<br> - rd : x4<br> - rs1_val == 0xF1C6B000 and imm_val == 0x0C #nosat<br>                                        |[0x80000560]:bclri tp, gp, 12<br> [0x80000564]:sd tp, 216(ra)<br>   |
|  29|[0x800022f0]<br>0x00000000AA3D4800|- rs1 : x4<br> - rd : x3<br> - rs1_val == 0xAA3D6800 and imm_val == 0x0D #nosat<br>                                        |[0x80000580]:bclri gp, tp, 13<br> [0x80000584]:sd gp, 0(t0)<br>     |
|  30|[0x800022f8]<br>0x000000007AA5E000|- rs1 : x1<br> - rd : x2<br> - rs1_val == 0x7AA5E400 and imm_val == 0x0A #nosat<br>                                        |[0x80000590]:bclri sp, ra, 10<br> [0x80000594]:sd sp, 8(t0)<br>     |
|  31|[0x80002300]<br>0x00000000C1B7AE00|- rs1 : x2<br> - rd : x1<br> - rs1_val == 0xC1B7AE00 and imm_val == 0x1C #nosat<br>                                        |[0x800005a8]:bclri ra, sp, 28<br> [0x800005ac]:sd ra, 16(t0)<br>    |
|  32|[0x80002308]<br>0x0000000000000000|- rs1 : x0<br>                                                                                                             |[0x800005b4]:bclri t6, zero, 9<br> [0x800005b8]:sd t6, 24(t0)<br>   |
|  33|[0x80002310]<br>0x0000000000000000|- rd : x0<br> - rs1_val == 0x72C58380 and imm_val == 0x00 #nosat<br>                                                       |[0x800005c4]:bclri zero, t6, 0<br> [0x800005c8]:sd zero, 32(t0)<br> |
|  34|[0x80002318]<br>0x0000000032AB8740|- rs1_val == 0x32AB8740 and imm_val == 0x0E #nosat<br>                                                                     |[0x800005d4]:bclri t6, t5, 14<br> [0x800005d8]:sd t6, 40(t0)<br>    |
|  35|[0x80002320]<br>0x0000000096CDF1A0|- rs1_val == 0x96CDF1A0 and imm_val == 0x1D #nosat<br>                                                                     |[0x800005ec]:bclri t6, t5, 29<br> [0x800005f0]:sd t6, 48(t0)<br>    |
|  36|[0x80002328]<br>0x00000000B8789E30|- rs1_val == 0xB87A9E30 and imm_val == 0x11 #nosat<br>                                                                     |[0x80000604]:bclri t6, t5, 17<br> [0x80000608]:sd t6, 56(t0)<br>    |
|  37|[0x80002330]<br>0x00000000163DFF98|- rs1_val == 0x163DFF98 and imm_val == 0x17 #nosat<br>                                                                     |[0x80000614]:bclri t6, t5, 23<br> [0x80000618]:sd t6, 64(t0)<br>    |
|  38|[0x80002338]<br>0x000000009205D39C|- rs1_val == 0x9205D39C and imm_val == 0x18 #nosat<br>                                                                     |[0x8000062c]:bclri t6, t5, 24<br> [0x80000630]:sd t6, 72(t0)<br>    |
|  39|[0x80002340]<br>0x0000000050A03C5A|- rs1_val == 0x50A03C5A and imm_val == 0x16 #nosat<br>                                                                     |[0x8000063c]:bclri t6, t5, 22<br> [0x80000640]:sd t6, 80(t0)<br>    |
|  40|[0x80002348]<br>0x00000000797D76DF|- rs1_val == 0x797D76DF and imm_val == 0x11 #nosat<br>                                                                     |[0x8000064c]:bclri t6, t5, 17<br> [0x80000650]:sd t6, 88(t0)<br>    |
|  41|[0x80002350]<br>0x0000000024496EE3|- imm_val == 0x08 and rs1_val == 0x24496FE3 #nosat<br>                                                                     |[0x8000065c]:bclri t6, t5, 8<br> [0x80000660]:sd t6, 96(t0)<br>     |
|  42|[0x80002358]<br>0x00000000DE14BFF2|- imm_val == 0x1D and rs1_val == 0xDE14BFF2 #nosat<br>                                                                     |[0x80000674]:bclri t6, t5, 29<br> [0x80000678]:sd t6, 104(t0)<br>   |
|  43|[0x80002360]<br>0x00000000B808A677|- imm_val == 0x03 and rs1_val == 0xB808A677 #nosat<br>                                                                     |[0x8000068c]:bclri t6, t5, 3<br> [0x80000690]:sd t6, 112(t0)<br>    |
|  44|[0x80002368]<br>0x0000000076B1FD3D|- imm_val == 0x07 and rs1_val == 0x76B1FD3D #nosat<br>                                                                     |[0x8000069c]:bclri t6, t5, 7<br> [0x800006a0]:sd t6, 120(t0)<br>    |
|  45|[0x80002370]<br>0x000000005DCF019D|- imm_val == 0x0F and rs1_val == 0x5DCF019D #nosat<br>                                                                     |[0x800006ac]:bclri t6, t5, 15<br> [0x800006b0]:sd t6, 128(t0)<br>   |
|  46|[0x80002378]<br>0x0000000047B7097B|- imm_val == 0x1F and rs1_val == 0x47B7097B #nosat<br>                                                                     |[0x800006bc]:bclri t6, t5, 31<br> [0x800006c0]:sd t6, 136(t0)<br>   |
|  47|[0x80002380]<br>0x00000000759E1B44|- rs1_val == 0x759F1B44 and imm_val == 0x10 #nosat<br>                                                                     |[0x800006cc]:bclri t6, t5, 16<br> [0x800006d0]:sd t6, 144(t0)<br>   |
|  48|[0x80002388]<br>0x0000000040590A1D|- rs1_val == 0x40D90A1D and imm_val == 0x17 #nosat<br>                                                                     |[0x800006dc]:bclri t6, t5, 23<br> [0x800006e0]:sd t6, 152(t0)<br>   |
|  49|[0x80002390]<br>0x000000002DADF123|- rs1_val == 0x2DEDF123 and imm_val == 0x16 #nosat<br>                                                                     |[0x800006ec]:bclri t6, t5, 22<br> [0x800006f0]:sd t6, 160(t0)<br>   |
|  50|[0x80002398]<br>0x000000004B1624E7|- rs1_val == 0x4B1634E7 and imm_val == 0x0C #nosat<br>                                                                     |[0x800006fc]:bclri t6, t5, 12<br> [0x80000700]:sd t6, 168(t0)<br>   |
|  51|[0x800023a0]<br>0x000000008935B02F|- rs1_val == 0x8935B82F and imm_val == 0x0B #nosat<br>                                                                     |[0x80000714]:bclri t6, t5, 11<br> [0x80000718]:sd t6, 176(t0)<br>   |
|  52|[0x800023a8]<br>0x0000000060BCB8DF|- rs1_val == 0x70BCB8DF and imm_val == 0x1C #nosat<br>                                                                     |[0x80000724]:bclri t6, t5, 28<br> [0x80000728]:sd t6, 184(t0)<br>   |
|  53|[0x800023b0]<br>0x000000008DE1C63F|- rs1_val == 0x8DE1C73F and imm_val == 0x08 #nosat<br>                                                                     |[0x8000073c]:bclri t6, t5, 8<br> [0x80000740]:sd t6, 192(t0)<br>    |
|  54|[0x800023b8]<br>0x00000000A0E04E7F|- rs1_val == 0xB0E04E7F and imm_val == 0x1C #nosat<br>                                                                     |[0x80000754]:bclri t6, t5, 28<br> [0x80000758]:sd t6, 200(t0)<br>   |
|  55|[0x800023c0]<br>0x00000000589218FF|- rs1_val == 0x589218FF and imm_val == 0x10 #nosat<br>                                                                     |[0x80000764]:bclri t6, t5, 16<br> [0x80000768]:sd t6, 208(t0)<br>   |
|  56|[0x800023c8]<br>0x00000000A7BE997F|- rs1_val == 0xA7BE99FF and imm_val == 0x07 #nosat<br>                                                                     |[0x8000077c]:bclri t6, t5, 7<br> [0x80000780]:sd t6, 216(t0)<br>    |
|  57|[0x800023d0]<br>0x00000000A36E33FF|- rs1_val == 0xA37E33FF and imm_val == 0x14 #nosat<br>                                                                     |[0x80000794]:bclri t6, t5, 20<br> [0x80000798]:sd t6, 224(t0)<br>   |
|  58|[0x800023d8]<br>0x00000000E37D37FF|- rs1_val == 0xE37D37FF and imm_val == 0x1B #nosat<br>                                                                     |[0x800007ac]:bclri t6, t5, 27<br> [0x800007b0]:sd t6, 232(t0)<br>   |
|  59|[0x800023e0]<br>0x00000000AB34CFFF|- rs1_val == 0xABB4CFFF and imm_val == 0x17 #nosat<br>                                                                     |[0x800007c4]:bclri t6, t5, 23<br> [0x800007c8]:sd t6, 240(t0)<br>   |
|  60|[0x800023e8]<br>0x00000000749DDFFF|- rs1_val == 0x7C9DDFFF and imm_val == 0x1B #nosat<br>                                                                     |[0x800007d4]:bclri t6, t5, 27<br> [0x800007d8]:sd t6, 248(t0)<br>   |
|  61|[0x800023f0]<br>0x000000005B11BFFF|- rs1_val == 0x5B11BFFF and imm_val == 0x0E #nosat<br>                                                                     |[0x800007e4]:bclri t6, t5, 14<br> [0x800007e8]:sd t6, 256(t0)<br>   |
|  62|[0x800023f8]<br>0x00000000CB347FFF|- rs1_val == 0xCB347FFF and imm_val == 0x10 #nosat<br>                                                                     |[0x800007fc]:bclri t6, t5, 16<br> [0x80000800]:sd t6, 264(t0)<br>   |
|  63|[0x80002400]<br>0x00000000F306FEFF|- rs1_val == 0xF306FFFF and imm_val == 0x08 #nosat<br>                                                                     |[0x80000814]:bclri t6, t5, 8<br> [0x80000818]:sd t6, 272(t0)<br>    |
|  64|[0x80002408]<br>0x00000000B6A5FFFF|- rs1_val == 0xBEA5FFFF and imm_val == 0x1B #nosat<br>                                                                     |[0x8000082c]:bclri t6, t5, 27<br> [0x80000830]:sd t6, 280(t0)<br>   |
|  65|[0x80002410]<br>0x00000000C38BFFFF|- rs1_val == 0xD38BFFFF and imm_val == 0x1C #nosat<br>                                                                     |[0x80000844]:bclri t6, t5, 28<br> [0x80000848]:sd t6, 288(t0)<br>   |
|  66|[0x80002418]<br>0x0000000015B6FFFF|- rs1_val == 0x15B7FFFF and imm_val == 0x10 #nosat<br>                                                                     |[0x80000854]:bclri t6, t5, 16<br> [0x80000858]:sd t6, 296(t0)<br>   |
|  67|[0x80002420]<br>0x00000000D58FFDFF|- rs1_val == 0xD58FFFFF and imm_val == 0x09 #nosat<br>                                                                     |[0x8000086c]:bclri t6, t5, 9<br> [0x80000870]:sd t6, 304(t0)<br>    |
|  68|[0x80002428]<br>0x00000000FE1DFFFF|- rs1_val == 0xFE1FFFFF and imm_val == 0x11 #nosat<br>                                                                     |[0x80000880]:bclri t6, t5, 17<br> [0x80000884]:sd t6, 312(t0)<br>   |
|  69|[0x80002430]<br>0x00000000203FFFFE|- rs1_val == 0x203FFFFF and imm_val == 0x00 #nosat<br>                                                                     |[0x80000890]:bclri t6, t5, 0<br> [0x80000894]:sd t6, 320(t0)<br>    |
|  70|[0x80002438]<br>0x00000000077FFFFF|- rs1_val == 0x077FFFFF and imm_val == 0x1B #nosat<br>                                                                     |[0x800008a0]:bclri t6, t5, 27<br> [0x800008a4]:sd t6, 328(t0)<br>   |
|  71|[0x80002440]<br>0x00000000BEFBFFFF|- rs1_val == 0xBEFFFFFF and imm_val == 0x12 #nosat<br>                                                                     |[0x800008b4]:bclri t6, t5, 18<br> [0x800008b8]:sd t6, 336(t0)<br>   |
|  72|[0x80002448]<br>0x0000000089FFDFFF|- rs1_val == 0x89FFFFFF and imm_val == 0x0D #nosat<br>                                                                     |[0x800008c8]:bclri t6, t5, 13<br> [0x800008cc]:sd t6, 344(t0)<br>   |
|  73|[0x80002450]<br>0x0000000023FFFFEF|- rs1_val == 0x23FFFFFF and imm_val == 0x04 #nosat<br>                                                                     |[0x800008d8]:bclri t6, t5, 4<br> [0x800008dc]:sd t6, 352(t0)<br>    |
|  74|[0x80002458]<br>0x00000000A7FFF7FF|- rs1_val == 0xA7FFFFFF and imm_val == 0x0B #nosat<br>                                                                     |[0x800008ec]:bclri t6, t5, 11<br> [0x800008f0]:sd t6, 360(t0)<br>   |
|  75|[0x80002460]<br>0x00000000CFFFBFFF|- rs1_val == 0xCFFFFFFF and imm_val == 0x0E #nosat<br>                                                                     |[0x80000900]:bclri t6, t5, 14<br> [0x80000904]:sd t6, 368(t0)<br>   |
|  76|[0x80002468]<br>0x000000009FFFFDFF|- rs1_val == 0x9FFFFFFF and imm_val == 0x09 #nosat<br>                                                                     |[0x80000914]:bclri t6, t5, 9<br> [0x80000918]:sd t6, 376(t0)<br>    |
|  77|[0x80002470]<br>0x00000000BFFFBFFF|- rs1_val == 0xBFFFFFFF and imm_val == 0x0E #nosat<br>                                                                     |[0x80000928]:bclri t6, t5, 14<br> [0x8000092c]:sd t6, 384(t0)<br>   |
|  78|[0x80002478]<br>0x000000007FFFF7FF|- rs1_val == 0x7FFFFFFF and imm_val == 0x0B #nosat<br>                                                                     |[0x80000938]:bclri t6, t5, 11<br> [0x8000093c]:sd t6, 392(t0)<br>   |
|  79|[0x80002480]<br>0x00000000FFFBFFFF|- rs1_val == 0xFFFFFFFF and imm_val == 0x12 #nosat<br>                                                                     |[0x8000094c]:bclri t6, t5, 18<br> [0x80000950]:sd t6, 400(t0)<br>   |
|  80|[0x80002488]<br>0x00000000164F1513|- imm_val == 0x1B and rs1_val == 0x164F1513 #nosat<br>                                                                     |[0x8000095c]:bclri t6, t5, 27<br> [0x80000960]:sd t6, 408(t0)<br>   |
|  81|[0x80002490]<br>0x00000000ACC6D8F2|- imm_val == 0x09 and rs1_val == 0xACC6D8F2 #nosat<br>                                                                     |[0x80000974]:bclri t6, t5, 9<br> [0x80000978]:sd t6, 416(t0)<br>    |
|  82|[0x80002498]<br>0x00000000A123F501|- imm_val == 0x06 and rs1_val == 0xA123F501 #nosat<br>                                                                     |[0x8000098c]:bclri t6, t5, 6<br> [0x80000990]:sd t6, 424(t0)<br>    |
|  83|[0x800024a0]<br>0x00000000B57A6A19|- imm_val == 0x02 and rs1_val == 0xB57A6A1D #nosat<br>                                                                     |[0x800009a4]:bclri t6, t5, 2<br> [0x800009a8]:sd t6, 432(t0)<br>    |
|  84|[0x800024a8]<br>0x00000000E90794DD|- imm_val == 0x01 and rs1_val == 0xE90794DF #nosat<br>                                                                     |[0x800009bc]:bclri t6, t5, 1<br> [0x800009c0]:sd t6, 440(t0)<br>    |
|  85|[0x800024b0]<br>0x00000000AF5570EE|- imm_val == 0x00 and rs1_val == 0xAF5570EE #nosat<br>                                                                     |[0x800009d4]:bclri t6, t5, 0<br> [0x800009d8]:sd t6, 448(t0)<br>    |
|  86|[0x800024b8]<br>0x00000000F542441C|- rs1_val == 0xF542441E and imm_val == 0x01 #nosat<br>                                                                     |[0x800009ec]:bclri t6, t5, 1<br> [0x800009f0]:sd t6, 456(t0)<br>    |
|  87|[0x800024c0]<br>0x0000000062F28D0B|- rs1_val == 0x62F28D1B and imm_val == 0x04 #nosat<br>                                                                     |[0x800009fc]:bclri t6, t5, 4<br> [0x80000a00]:sd t6, 464(t0)<br>    |
|  88|[0x800024c8]<br>0x0000000038B9B45D|- rs1_val == 0x38B9B45D and imm_val == 0x12 #nosat<br>                                                                     |[0x80000a0c]:bclri t6, t5, 18<br> [0x80000a10]:sd t6, 472(t0)<br>   |
|  89|[0x800024d0]<br>0x0000000016809A12|- rs1_val == 0x16809A12 and imm_val == 0x06 #nosat<br>                                                                     |[0x80000a1c]:bclri t6, t5, 6<br> [0x80000a20]:sd t6, 480(t0)<br>    |
|  90|[0x800024d8]<br>0x00000000082A1710|- rs1_val == 0x082A1750 and imm_val == 0x06 #nosat<br>                                                                     |[0x80000a2c]:bclri t6, t5, 6<br> [0x80000a30]:sd t6, 488(t0)<br>    |
|  91|[0x800024e0]<br>0x00000000079DD24B|- rs1_val == 0x079DD25B and imm_val == 0x04 #nosat<br>                                                                     |[0x80000a3c]:bclri t6, t5, 4<br> [0x80000a40]:sd t6, 496(t0)<br>    |
|  92|[0x800024e8]<br>0x000000000348687B|- rs1_val == 0x034C687B and imm_val == 0x12 #nosat<br>                                                                     |[0x80000a4c]:bclri t6, t5, 18<br> [0x80000a50]:sd t6, 504(t0)<br>   |
|  93|[0x800024f0]<br>0x0000000001B601FD|- rs1_val == 0x01B601FD and imm_val == 0x0E #nosat<br>                                                                     |[0x80000a5c]:bclri t6, t5, 14<br> [0x80000a60]:sd t6, 512(t0)<br>   |
|  94|[0x800024f8]<br>0x0000000000B202FD|- rs1_val == 0x00B302FD and imm_val == 0x10 #nosat<br>                                                                     |[0x80000a6c]:bclri t6, t5, 16<br> [0x80000a70]:sd t6, 520(t0)<br>   |
|  95|[0x80002500]<br>0x000000000062A693|- rs1_val == 0x0062A6B3 and imm_val == 0x05 #nosat<br>                                                                     |[0x80000a7c]:bclri t6, t5, 5<br> [0x80000a80]:sd t6, 528(t0)<br>    |
|  96|[0x80002508]<br>0x0000000000319238|- rs1_val == 0x00339238 and imm_val == 0x11 #nosat<br>                                                                     |[0x80000a8c]:bclri t6, t5, 17<br> [0x80000a90]:sd t6, 536(t0)<br>   |
|  97|[0x80002510]<br>0x0000000000164AD0|- rs1_val == 0x00164AF0 and imm_val == 0x05 #nosat<br>                                                                     |[0x80000a9c]:bclri t6, t5, 5<br> [0x80000aa0]:sd t6, 544(t0)<br>    |
|  98|[0x80002518]<br>0x000000000009222A|- rs1_val == 0x0009222A and imm_val == 0x00 #nosat<br>                                                                     |[0x80000aac]:bclri t6, t5, 0<br> [0x80000ab0]:sd t6, 552(t0)<br>    |
|  99|[0x80002520]<br>0x000000000002284E|- rs1_val == 0x0006284E and imm_val == 0x12 #nosat<br>                                                                     |[0x80000abc]:bclri t6, t5, 18<br> [0x80000ac0]:sd t6, 560(t0)<br>   |
| 100|[0x80002528]<br>0x0000000000031161|- rs1_val == 0x00035161 and imm_val == 0x0E #nosat<br>                                                                     |[0x80000acc]:bclri t6, t5, 14<br> [0x80000ad0]:sd t6, 568(t0)<br>   |
| 101|[0x80002530]<br>0x0000000000010E24|- rs1_val == 0x00011E24 and imm_val == 0x0C #nosat<br>                                                                     |[0x80000adc]:bclri t6, t5, 12<br> [0x80000ae0]:sd t6, 576(t0)<br>   |
| 102|[0x80002538]<br>0x000000000000F614|- rs1_val == 0x0000F614 and imm_val == 0x1C #nosat<br>                                                                     |[0x80000aec]:bclri t6, t5, 28<br> [0x80000af0]:sd t6, 584(t0)<br>   |
| 103|[0x80002540]<br>0x0000000000005CC1|- rs1_val == 0x00005CC1 and imm_val == 0x1D #nosat<br>                                                                     |[0x80000afc]:bclri t6, t5, 29<br> [0x80000b00]:sd t6, 592(t0)<br>   |
| 104|[0x80002548]<br>0x0000000000003224|- rs1_val == 0x00003226 and imm_val == 0x01 #nosat<br>                                                                     |[0x80000b0c]:bclri t6, t5, 1<br> [0x80000b10]:sd t6, 600(t0)<br>    |
| 105|[0x80002550]<br>0x0000000000001D0C|- rs1_val == 0x00001D0C and imm_val == 0x0F #nosat<br>                                                                     |[0x80000b1c]:bclri t6, t5, 15<br> [0x80000b20]:sd t6, 608(t0)<br>   |
| 106|[0x80002558]<br>0x0000000000000DD0|- rs1_val == 0x00000DD4 and imm_val == 0x02 #nosat<br>                                                                     |[0x80000b2c]:bclri t6, t5, 2<br> [0x80000b30]:sd t6, 616(t0)<br>    |
| 107|[0x80002560]<br>0x00000000000005C1|- rs1_val == 0x000005D1 and imm_val == 0x04 #nosat<br>                                                                     |[0x80000b38]:bclri t6, t5, 4<br> [0x80000b3c]:sd t6, 624(t0)<br>    |
| 108|[0x80002568]<br>0x00000000000002A6|- rs1_val == 0x000002A7 and imm_val == 0x00 #nosat<br>                                                                     |[0x80000b44]:bclri t6, t5, 0<br> [0x80000b48]:sd t6, 632(t0)<br>    |
| 109|[0x80002570]<br>0x0000000000000197|- rs1_val == 0x00000197 and imm_val == 0x0A #nosat<br>                                                                     |[0x80000b50]:bclri t6, t5, 10<br> [0x80000b54]:sd t6, 640(t0)<br>   |
| 110|[0x80002578]<br>0x00000000000000B9|- rs1_val == 0x000000B9 and imm_val == 0x1C #nosat<br>                                                                     |[0x80000b5c]:bclri t6, t5, 28<br> [0x80000b60]:sd t6, 648(t0)<br>   |
| 111|[0x80002580]<br>0x000000000000004C|- rs1_val == 0x0000004C and imm_val == 0x19 #nosat<br>                                                                     |[0x80000b68]:bclri t6, t5, 25<br> [0x80000b6c]:sd t6, 656(t0)<br>   |
| 112|[0x80002588]<br>0x0000000000000022|- rs1_val == 0x00000026 and imm_val == 0x02 #nosat<br>                                                                     |[0x80000b74]:bclri t6, t5, 2<br> [0x80000b78]:sd t6, 664(t0)<br>    |
| 113|[0x80002590]<br>0x0000000000000012|- rs1_val == 0x00000012 and imm_val == 0x09 #nosat<br>                                                                     |[0x80000b80]:bclri t6, t5, 9<br> [0x80000b84]:sd t6, 672(t0)<br>    |
| 114|[0x80002598]<br>0x000000000000000C|- rs1_val == 0x0000000C and imm_val == 0x1C #nosat<br>                                                                     |[0x80000b8c]:bclri t6, t5, 28<br> [0x80000b90]:sd t6, 680(t0)<br>   |
| 115|[0x800025a0]<br>0x0000000000000006|- rs1_val == 0x00000006 and imm_val == 0x0B #nosat<br>                                                                     |[0x80000b98]:bclri t6, t5, 11<br> [0x80000b9c]:sd t6, 688(t0)<br>   |
| 116|[0x800025a8]<br>0x0000000000000003|- rs1_val == 0x00000003 and imm_val == 0x1E #nosat<br>                                                                     |[0x80000ba4]:bclri t6, t5, 30<br> [0x80000ba8]:sd t6, 696(t0)<br>   |
| 117|[0x800025b0]<br>0x0000000000000001|- rs1_val == 0x00000001 and imm_val == 0x0C #nosat<br>                                                                     |[0x80000bb0]:bclri t6, t5, 12<br> [0x80000bb4]:sd t6, 704(t0)<br>   |
| 118|[0x800025b8]<br>0x0000000000000000|- rs1_val == 0x00000000 and imm_val == 0x1D #nosat<br>                                                                     |[0x80000bbc]:bclri t6, t5, 29<br> [0x80000bc0]:sd t6, 712(t0)<br>   |
| 119|[0x800025c0]<br>0x0000000059432A19|- imm_val == 0x0F and rs1_val == 0x59432A19 #nosat<br>                                                                     |[0x80000bcc]:bclri t6, t5, 15<br> [0x80000bd0]:sd t6, 720(t0)<br>   |
| 120|[0x800025c8]<br>0x00000000CE3506F6|- imm_val == 0x17 and rs1_val == 0xCEB506F6 #nosat<br>                                                                     |[0x80000be4]:bclri t6, t5, 23<br> [0x80000be8]:sd t6, 728(t0)<br>   |
| 121|[0x800025d0]<br>0x00000000C4EC6148|- imm_val == 0x18 and rs1_val == 0xC5EC6148 #nosat<br>                                                                     |[0x80000bfc]:bclri t6, t5, 24<br> [0x80000c00]:sd t6, 736(t0)<br>   |
| 122|[0x800025d8]<br>0x0000000099EF1857|- imm_val == 0x1D and rs1_val == 0x99EF1857 #nosat<br>                                                                     |[0x80000c14]:bclri t6, t5, 29<br> [0x80000c18]:sd t6, 744(t0)<br>   |
| 123|[0x800025e0]<br>0x0000000014B91C79|- imm_val == 0x1E and rs1_val == 0x14B91C79 #nosat<br>                                                                     |[0x80000c24]:bclri t6, t5, 30<br> [0x80000c28]:sd t6, 752(t0)<br>   |
| 124|[0x800025e8]<br>0x000000000973E89C|- imm_val == 0x1F and rs1_val == 0x0973E89C #nosat<br>                                                                     |[0x80000c34]:bclri t6, t5, 31<br> [0x80000c38]:sd t6, 760(t0)<br>   |
| 125|[0x800025f0]<br>0x000000007843BDB9|- rs1_val == 0x7843BDB9 and imm_val == 0x1A #nosat<br>                                                                     |[0x80000c44]:bclri t6, t5, 26<br> [0x80000c48]:sd t6, 768(t0)<br>   |
| 126|[0x800025f8]<br>0x00000000979889D0|- rs1_val == 0x9798C9D0 and imm_val == 0x0E #nosat<br>                                                                     |[0x80000c5c]:bclri t6, t5, 14<br> [0x80000c60]:sd t6, 776(t0)<br>   |
| 127|[0x80002600]<br>0x00000000D814D176|- rs1_val == 0xD814D576 and imm_val == 0x0A #nosat<br>                                                                     |[0x80000c74]:bclri t6, t5, 10<br> [0x80000c78]:sd t6, 784(t0)<br>   |
| 128|[0x80002608]<br>0x00000000E0A37559|- rs1_val == 0xE0A37559 and imm_val == 0x14 #nosat<br>                                                                     |[0x80000c8c]:bclri t6, t5, 20<br> [0x80000c90]:sd t6, 792(t0)<br>   |
| 129|[0x80002610]<br>0x00000000B79FB998|- rs1_val == 0xF79FB998 and imm_val == 0x1E #nosat<br>                                                                     |[0x80000ca4]:bclri t6, t5, 30<br> [0x80000ca8]:sd t6, 800(t0)<br>   |
| 130|[0x80002618]<br>0x00000000E87A2561|- rs1_val == 0xF87A2561 and imm_val == 0x1C #nosat<br>                                                                     |[0x80000cbc]:bclri t6, t5, 28<br> [0x80000cc0]:sd t6, 808(t0)<br>   |
| 131|[0x80002620]<br>0x00000000FDA56D7F|- rs1_val == 0xFDA56D7F and imm_val == 0x0F #nosat<br>                                                                     |[0x80000cd4]:bclri t6, t5, 15<br> [0x80000cd8]:sd t6, 816(t0)<br>   |
| 132|[0x80002628]<br>0x00000000FE4DEAB5|- rs1_val == 0xFE4DEAB5 and imm_val == 0x17 #nosat<br>                                                                     |[0x80000cec]:bclri t6, t5, 23<br> [0x80000cf0]:sd t6, 824(t0)<br>   |
| 133|[0x80002630]<br>0x00000000FF6075BB|- rs1_val == 0xFF6875BB and imm_val == 0x13 #nosat<br>                                                                     |[0x80000d04]:bclri t6, t5, 19<br> [0x80000d08]:sd t6, 832(t0)<br>   |
| 134|[0x80002638]<br>0x00000000FF93D0E4|- rs1_val == 0xFF93D0E4 and imm_val == 0x08 #nosat<br>                                                                     |[0x80000d1c]:bclri t6, t5, 8<br> [0x80000d20]:sd t6, 840(t0)<br>    |
| 135|[0x80002640]<br>0x00000000FFD4AA22|- rs1_val == 0xFFD4AA23 and imm_val == 0x00 #nosat<br>                                                                     |[0x80000d34]:bclri t6, t5, 0<br> [0x80000d38]:sd t6, 848(t0)<br>    |
| 136|[0x80002648]<br>0x00000000FEE2FC91|- rs1_val == 0xFFE2FC91 and imm_val == 0x18 #nosat<br>                                                                     |[0x80000d4c]:bclri t6, t5, 24<br> [0x80000d50]:sd t6, 856(t0)<br>   |
| 137|[0x80002650]<br>0x00000000EFF1D2A0|- rs1_val == 0xFFF1D2A0 and imm_val == 0x1C #nosat<br>                                                                     |[0x80000d64]:bclri t6, t5, 28<br> [0x80000d68]:sd t6, 864(t0)<br>   |
| 138|[0x80002658]<br>0x00000000FFF904D1|- rs1_val == 0xFFF904D1 and imm_val == 0x0F #nosat<br>                                                                     |[0x80000d7c]:bclri t6, t5, 15<br> [0x80000d80]:sd t6, 872(t0)<br>   |
| 139|[0x80002660]<br>0x00000000DFFCDB0B|- rs1_val == 0xFFFCDB0B and imm_val == 0x1D #nosat<br>                                                                     |[0x80000d94]:bclri t6, t5, 29<br> [0x80000d98]:sd t6, 880(t0)<br>   |
| 140|[0x80002668]<br>0x00000000FF7EC2B4|- rs1_val == 0xFFFEC2B4 and imm_val == 0x17 #nosat<br>                                                                     |[0x80000dac]:bclri t6, t5, 23<br> [0x80000db0]:sd t6, 888(t0)<br>   |
| 141|[0x80002670]<br>0x00000000FFF71E5F|- rs1_val == 0xFFFF1E5F and imm_val == 0x13 #nosat<br>                                                                     |[0x80000dc4]:bclri t6, t5, 19<br> [0x80000dc8]:sd t6, 896(t0)<br>   |
| 142|[0x80002678]<br>0x00000000FFFFA2EE|- rs1_val == 0xFFFFA2EE and imm_val == 0x0B #nosat<br>                                                                     |[0x80000ddc]:bclri t6, t5, 11<br> [0x80000de0]:sd t6, 904(t0)<br>   |
| 143|[0x80002680]<br>0x00000000FFFED410|- rs1_val == 0xFFFFD410 and imm_val == 0x10 #nosat<br>                                                                     |[0x80000df4]:bclri t6, t5, 16<br> [0x80000df8]:sd t6, 912(t0)<br>   |
| 144|[0x80002688]<br>0x00000000FBFFEE0A|- rs1_val == 0xFFFFEE0A and imm_val == 0x1A #nosat<br>                                                                     |[0x80000e0c]:bclri t6, t5, 26<br> [0x80000e10]:sd t6, 920(t0)<br>   |
| 145|[0x80002690]<br>0x00000000FFBFF32A|- rs1_val == 0xFFFFF32A and imm_val == 0x16 #nosat<br>                                                                     |[0x80000e24]:bclri t6, t5, 22<br> [0x80000e28]:sd t6, 928(t0)<br>   |
| 146|[0x80002698]<br>0x00000000FFFFFA84|- rs1_val == 0xFFFFFB84 and imm_val == 0x08 #nosat<br>                                                                     |[0x80000e38]:bclri t6, t5, 8<br> [0x80000e3c]:sd t6, 936(t0)<br>    |
| 147|[0x800026a0]<br>0x00000000FBFFFC1D|- rs1_val == 0xFFFFFC1D and imm_val == 0x1A #nosat<br>                                                                     |[0x80000e4c]:bclri t6, t5, 26<br> [0x80000e50]:sd t6, 944(t0)<br>   |
| 148|[0x800026a8]<br>0x00000000FF7FFE31|- rs1_val == 0xFFFFFE31 and imm_val == 0x17 #nosat<br>                                                                     |[0x80000e60]:bclri t6, t5, 23<br> [0x80000e64]:sd t6, 952(t0)<br>   |
| 149|[0x800026b0]<br>0x00000000FFFFFF44|- rs1_val == 0xFFFFFF44 and imm_val == 0x04 #nosat<br>                                                                     |[0x80000e74]:bclri t6, t5, 4<br> [0x80000e78]:sd t6, 960(t0)<br>    |
| 150|[0x800026b8]<br>0x000000007FFFFFBA|- rs1_val == 0xFFFFFFBA and imm_val == 0x1F #nosat<br>                                                                     |[0x80000e88]:bclri t6, t5, 31<br> [0x80000e8c]:sd t6, 968(t0)<br>   |
| 151|[0x800026c0]<br>0x00000000FFFFFBC6|- rs1_val == 0xFFFFFFC6 and imm_val == 0x0A #nosat<br>                                                                     |[0x80000e9c]:bclri t6, t5, 10<br> [0x80000ea0]:sd t6, 976(t0)<br>   |
| 152|[0x800026c8]<br>0x00000000FFFDFFE8|- rs1_val == 0xFFFFFFE8 and imm_val == 0x11 #nosat<br>                                                                     |[0x80000eb0]:bclri t6, t5, 17<br> [0x80000eb4]:sd t6, 984(t0)<br>   |
| 153|[0x800026d0]<br>0x000000007FFFFFF2|- rs1_val == 0xFFFFFFF2 and imm_val == 0x1F #nosat<br>                                                                     |[0x80000ec4]:bclri t6, t5, 31<br> [0x80000ec8]:sd t6, 992(t0)<br>   |
| 154|[0x800026d8]<br>0x00000000DFFFFFF9|- rs1_val == 0xFFFFFFF9 and imm_val == 0x1D #nosat<br>                                                                     |[0x80000ed8]:bclri t6, t5, 29<br> [0x80000edc]:sd t6, 1000(t0)<br>  |
| 155|[0x800026e0]<br>0x00000000FFFFFFFC|- rs1_val == 0xFFFFFFFD and imm_val == 0x00 #nosat<br>                                                                     |[0x80000eec]:bclri t6, t5, 0<br> [0x80000ef0]:sd t6, 1008(t0)<br>   |
| 156|[0x800026e8]<br>0x00000000BFFFFFFE|- rs1_val == 0xFFFFFFFE and imm_val == 0x1E #nosat<br>                                                                     |[0x80000f00]:bclri t6, t5, 30<br> [0x80000f04]:sd t6, 1016(t0)<br>  |
| 157|[0x800026f0]<br>0x000000004C56B900|- rs1_val == 0x4C56BB00 and imm_val == 0x09 #nosat<br>                                                                     |[0x80000f10]:bclri t6, t5, 9<br> [0x80000f14]:sd t6, 1024(t0)<br>   |
