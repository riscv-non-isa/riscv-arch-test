
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800010c0')]      |
| SIG_REGION                | [('0x80003208', '0x800034b8', '86 dwords')]      |
| COV_LABELS                | aes64ks1i      |
| TEST_NAME                 | /scratch/git-repo/github/riscof/riscof_work/rv64i_m/K_unratified/src/aes64ks1i-01.S/ref.S    |
| Total Number of coverpoints| 156     |
| Total Coverpoints Hit     | 151      |
| Total Signature Updates   | 86      |
| STAT1                     | 85      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800010b4]:aes64ks1i a1, a0, 10
      [0x800010b8]:sd a1, 512(ra)
 -- Signature Address: 0x800034b0 Data: 0x1198F8E11198F8E1
 -- Redundant Coverpoints hit by the op
      - opcode : aes64ks1i
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val == 0xe3e2e1e0dfdedddc and imm_val == 0xA #nosat






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

|s.no|            signature             |                                                            coverpoints                                                             |                                  code                                   |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|
|   1|[0x80003208]<br>0xC56F6BF2C56F6BF2|- opcode : aes64ks1i<br> - rs1 : x7<br> - rd : x8<br> - rs1 != rd<br> - rs1_val == 0x0706050403020100 and imm_val == 0xA #nosat<br> |[0x800003b0]:aes64ks1i fp, t2, 10<br> [0x800003b4]:c.sd a4, s0, 0<br>    |
|   2|[0x80003210]<br>0xBCA32D60BCA32D60|- rs1 : x19<br> - rd : x19<br> - rs1 == rd<br> - rs1_val == 0x71fad878b369e102 and imm_val == 0x0 #nosat<br>                        |[0x800003d6]:aes64ks1i s3, s3, 0<br> [0x800003da]:sd s3, 8(a4)<br>       |
|   3|[0x80003218]<br>0xB649A998B649A998|- rs1 : x12<br> - rd : x10<br> - rs1_val == 0xa4b7f979a8e45869 and imm_val == 0x0 #nosat<br>                                        |[0x800003fe]:aes64ks1i a0, a2, 0<br> [0x80000402]:c.sd a4, a0, 16<br>    |
|   4|[0x80003220]<br>0x6B2B75F46B2B75F4|- rs1 : x8<br> - rd : x6<br> - rs1_val == 0x0b3fd605358a9235 and imm_val == 0x1 #nosat<br>                                          |[0x80000424]:aes64ks1i t1, fp, 1<br> [0x80000428]:sd t1, 24(a4)<br>      |
|   5|[0x80003228]<br>0x76E7170076E71700|- rs1 : x30<br> - rd : x28<br> - rs1_val == 0xb0873a0f0334fcca and imm_val == 0x7 #nosat<br>                                        |[0x80000444]:aes64ks1i t3, t5, 7<br> [0x80000448]:sd t3, 32(a4)<br>      |
|   6|[0x80003230]<br>0x95398F7E95398F7E|- rs1 : x16<br> - rd : x13<br> - rs1_val == 0x5b730cad91766f62 and imm_val == 0x7 #nosat<br>                                        |[0x8000046c]:aes64ks1i a3, a6, 7<br> [0x80000470]:c.sd a4, a3, 40<br>    |
|   7|[0x80003238]<br>0xCFA978B8CFA978B8|- rs1 : x9<br> - rd : x7<br> - rs1_val == 0xb7c1fc5f1efa1095 and imm_val == 0x3 #nosat<br>                                          |[0x80000492]:aes64ks1i t2, s1, 3<br> [0x80000496]:sd t2, 48(a4)<br>      |
|   8|[0x80003240]<br>0x283FE4EC283FE4EC|- rs1 : x17<br> - rd : x5<br> - rs1_val == 0x25ae27ee4113ee60 and imm_val == 0x5 #nosat<br>                                         |[0x800004ba]:aes64ks1i t0, a7, 5<br> [0x800004be]:sd t0, 56(a4)<br>      |
|   9|[0x80003248]<br>0x0A11BFF00A11BFF0|- rs1 : x4<br> - rd : x21<br> - rs1_val == 0xe3f4fca319f046a5 and imm_val == 0x6 #nosat<br>                                         |[0x800004e2]:aes64ks1i s5, tp, 6<br> [0x800004e6]:sd s5, 64(a4)<br>      |
|  10|[0x80003250]<br>0xCD16B8EFCD16B8EF|- rs1 : x2<br> - rd : x20<br> - rs1_val == 0xff9a1b805ced7e2e and imm_val == 0x6 #nosat<br>                                         |[0x80000502]:aes64ks1i s4, sp, 6<br> [0x80000506]:sd s4, 72(a4)<br>      |
|  11|[0x80003258]<br>0x6363634363636343|- rs1 : x0<br> - rd : x1<br>                                                                                                        |[0x8000050e]:aes64ks1i ra, zero, 5<br> [0x80000512]:sd ra, 80(a4)<br>    |
|  12|[0x80003260]<br>0x121455AB121455AB|- rs1 : x1<br> - rd : x2<br> - rs1_val == 0x9bedfe390d6ddd9d and imm_val == 0x4 #nosat<br>                                          |[0x80000536]:aes64ks1i sp, ra, 4<br> [0x8000053a]:sd sp, 88(a4)<br>      |
|  13|[0x80003268]<br>0x410E5B1A410E5B1A|- rs1 : x13<br> - rd : x27<br> - rs1_val == 0xd75739f82ac177c6 and imm_val == 0x3 #nosat<br>                                        |[0x8000055e]:aes64ks1i s11, a3, 3<br> [0x80000562]:sd s11, 96(a4)<br>    |
|  14|[0x80003270]<br>0x3F60DF463F60DF46|- rs1 : x23<br> - rd : x22<br> - rs1_val == 0x90efb625d9fbcdb5 and imm_val == 0x3 #nosat<br>                                        |[0x80000586]:aes64ks1i s6, s7, 3<br> [0x8000058a]:sd s6, 104(a4)<br>     |
|  15|[0x80003278]<br>0x12D06FFD12D06FFD|- rs1 : x21<br> - rd : x18<br> - rs1_val == 0x60067d39d169a3f8 and imm_val == 0x1 #nosat<br>                                        |[0x800005ae]:aes64ks1i s2, s5, 1<br> [0x800005b2]:sd s2, 112(a4)<br>     |
|  16|[0x80003280]<br>0x4A0356FB4A0356FB|- rs1 : x18<br> - rd : x24<br> - rs1_val == 0xd5b9fe5cf69bdcf3 and imm_val == 0x6 #nosat<br>                                        |[0x800005d6]:aes64ks1i s8, s2, 6<br> [0x800005da]:sd s8, 120(a4)<br>     |
|  17|[0x80003288]<br>0xAC6A0312AC6A0312|- rs1 : x3<br> - rd : x29<br> - rs1_val == 0x58d548aae4921bf7 and imm_val == 0x6 #nosat<br>                                         |[0x800005fe]:aes64ks1i t4, gp, 6<br> [0x80000602]:sd t4, 128(a4)<br>     |
|  18|[0x80003290]<br>0xC6D879B0C6D879B0|- rs1 : x26<br> - rd : x17<br> - rs1_val == 0x2daf9ac7f5faf207 and imm_val == 0x3 #nosat<br>                                        |[0x80000626]:aes64ks1i a7, s10, 3<br> [0x8000062a]:sd a7, 136(a4)<br>    |
|  19|[0x80003298]<br>0x4780BD4A4780BD4A|- rs1 : x6<br> - rd : x11<br> - rs1_val == 0x3acdf61655d98c6e and imm_val == 0x3 #nosat<br>                                         |[0x8000064e]:aes64ks1i a1, t1, 3<br> [0x80000652]:c.sd a4, a1, 144<br>   |
|  20|[0x800032a0]<br>0x891AA801891AA801|- rs1 : x24<br> - rd : x16<br> - rs1_val == 0x436f40f274b8de87 and imm_val == 0x3 #nosat<br>                                        |[0x80000674]:aes64ks1i a6, s8, 3<br> [0x80000678]:sd a6, 152(a4)<br>     |
|  21|[0x800032a8]<br>0x6D9D0A916D9D0A91|- rs1 : x10<br> - rd : x31<br> - rs1_val == 0x75a3adb3254a9493 and imm_val == 0x2 #nosat<br>                                        |[0x8000069c]:aes64ks1i t6, a0, 2<br> [0x800006a0]:sd t6, 160(a4)<br>     |
|  22|[0x800032b0]<br>0x7B777C637B777C63|- rs1 : x25<br> - rd : x14<br> - rs1_val == 0x03020100fffefdfc and imm_val == 0xA #nosat<br>                                        |[0x800006c4]:aes64ks1i a4, s9, 10<br> [0x800006c8]:sd a4, 0(ra)<br>      |
|  23|[0x800032b8]<br>0x16BB54B016BB54B0|- rs1 : x11<br> - rd : x4<br> - rs1_val == 0xfffefdfcfbfaf9f8 and imm_val == 0xA #nosat<br>                                         |[0x800006e4]:aes64ks1i tp, a1, 10<br> [0x800006e8]:sd tp, 8(ra)<br>      |
|  24|[0x800032c0]<br>0x0F2D99410F2D9941|- rs1 : x27<br> - rd : x23<br> - rs1_val == 0xfbfaf9f8f7f6f5f4 and imm_val == 0xA #nosat<br>                                        |[0x8000070c]:aes64ks1i s7, s11, 10<br> [0x80000710]:sd s7, 16(ra)<br>    |
|  25|[0x800032c8]<br>0x6842E6BF6842E6BF|- rs1 : x20<br> - rd : x30<br> - rs1_val == 0xf7f6f5f4f3f2f1f0 and imm_val == 0xA #nosat<br>                                        |[0x80000734]:aes64ks1i t5, s4, 10<br> [0x80000738]:sd t5, 24(ra)<br>     |
|  26|[0x800032d0]<br>0x0D89A18C0D89A18C|- rs1 : x29<br> - rd : x9<br> - rs1_val == 0xf3f2f1f0efeeedec and imm_val == 0xA #nosat<br>                                         |[0x8000075c]:aes64ks1i s1, t4, 10<br> [0x80000760]:sd s1, 32(ra)<br>     |
|  27|[0x800032d8]<br>0xDF2855CEDF2855CE|- rs1 : x28<br> - rd : x3<br> - rs1_val == 0xefeeedecebeae9e8 and imm_val == 0xA #nosat<br>                                         |[0x80000784]:aes64ks1i gp, t3, 10<br> [0x80000788]:sd gp, 40(ra)<br>     |
|  28|[0x800032e0]<br>0xE9871E9BE9871E9B|- rs1 : x31<br> - rd : x15<br> - rs1_val == 0xebeae9e8e7e6e5e4 and imm_val == 0xA #nosat<br>                                        |[0x800007ac]:aes64ks1i a5, t6, 10<br> [0x800007b0]:sd a5, 48(ra)<br>     |
|  29|[0x800032e8]<br>0x948ED969948ED969|- rs1 : x5<br> - rd : x25<br> - rs1_val == 0xe7e6e5e4e3e2e1e0 and imm_val == 0xA #nosat<br>                                         |[0x800007d4]:aes64ks1i s9, t0, 10<br> [0x800007d8]:sd s9, 56(ra)<br>     |
|  30|[0x800032f0]<br>0x0000000000000000|- rs1 : x15<br> - rd : x0<br> - rs1_val == 0xe3e2e1e0dfdedddc and imm_val == 0xA #nosat<br>                                         |[0x800007fc]:aes64ks1i zero, a5, 10<br> [0x80000800]:sd zero, 64(ra)<br> |
|  31|[0x800032f8]<br>0x9E1DC1869E1DC186|- rs1 : x14<br> - rd : x26<br> - rs1_val == 0xdfdedddcdbdad9d8 and imm_val == 0xA #nosat<br>                                        |[0x80000824]:aes64ks1i s10, a4, 10<br> [0x80000828]:sd s10, 72(ra)<br>   |
|  32|[0x80003300]<br>0xB9573561B9573561|- rs1 : x22<br> - rd : x12<br> - rs1_val == 0xdbdad9d8d7d6d5d4 and imm_val == 0xA #nosat<br>                                        |[0x8000084c]:aes64ks1i a2, s6, 10<br> [0x80000850]:sd a2, 80(ra)<br>     |
|  33|[0x80003308]<br>0x0EF603480EF60348|- rs1_val == 0xd7d6d5d4d3d2d1d0 and imm_val == 0xA #nosat<br>                                                                       |[0x80000874]:aes64ks1i a1, a0, 10<br> [0x80000878]:sd a1, 88(ra)<br>     |
|  34|[0x80003310]<br>0x66B53E7066B53E70|- rs1_val == 0xd3d2d1d0cfcecdcc and imm_val == 0xA #nosat<br>                                                                       |[0x8000089c]:aes64ks1i a1, a0, 10<br> [0x800008a0]:sd a1, 96(ra)<br>     |
|  35|[0x80003318]<br>0x8A8BBD4B8A8BBD4B|- rs1_val == 0xcfcecdcccbcac9c8 and imm_val == 0xA #nosat<br>                                                                       |[0x800008c4]:aes64ks1i a1, a0, 10<br> [0x800008c8]:sd a1, 104(ra)<br>    |
|  36|[0x80003320]<br>0x1F74DDE81F74DDE8|- rs1_val == 0xcbcac9c8c7c6c5c4 and imm_val == 0xA #nosat<br>                                                                       |[0x800008ec]:aes64ks1i a1, a0, 10<br> [0x800008f0]:sd a1, 112(ra)<br>    |
|  37|[0x80003328]<br>0xC6B4A61CC6B4A61C|- rs1_val == 0xc7c6c5c4c3c2c1c0 and imm_val == 0xA #nosat<br>                                                                       |[0x80000914]:aes64ks1i a1, a0, 10<br> [0x80000918]:sd a1, 120(ra)<br>    |
|  38|[0x80003330]<br>0x2E2578BA2E2578BA|- rs1_val == 0xc3c2c1c0bfbebdbc and imm_val == 0xA #nosat<br>                                                                       |[0x8000093c]:aes64ks1i a1, a0, 10<br> [0x80000940]:sd a1, 128(ra)<br>    |
|  39|[0x80003338]<br>0x08AE7A6508AE7A65|- rs1_val == 0xbfbebdbcbbbab9b8 and imm_val == 0xA #nosat<br>                                                                       |[0x80000964]:aes64ks1i a1, a0, 10<br> [0x80000968]:sd a1, 136(ra)<br>    |
|  40|[0x80003340]<br>0xEAF4566CEAF4566C|- rs1_val == 0xbbbab9b8b7b6b5b4 and imm_val == 0xA #nosat<br>                                                                       |[0x8000098c]:aes64ks1i a1, a0, 10<br> [0x80000990]:sd a1, 144(ra)<br>    |
|  41|[0x80003348]<br>0xA94ED58DA94ED58D|- rs1_val == 0xb7b6b5b4b3b2b1b0 and imm_val == 0xA #nosat<br>                                                                       |[0x800009b4]:aes64ks1i a1, a0, 10<br> [0x800009b8]:sd a1, 152(ra)<br>    |
|  42|[0x80003350]<br>0x6D37C8E76D37C8E7|- rs1_val == 0xb3b2b1b0afaeadac and imm_val == 0xA #nosat<br>                                                                       |[0x800009dc]:aes64ks1i a1, a0, 10<br> [0x800009e0]:sd a1, 160(ra)<br>    |
|  43|[0x80003358]<br>0x79E4959179E49591|- rs1_val == 0xafaeadacabaaa9a8 and imm_val == 0xA #nosat<br>                                                                       |[0x80000a04]:aes64ks1i a1, a0, 10<br> [0x80000a08]:sd a1, 168(ra)<br>    |
|  44|[0x80003360]<br>0x62ACD3C262ACD3C2|- rs1_val == 0xabaaa9a8a7a6a5a4 and imm_val == 0xA #nosat<br>                                                                       |[0x80000a2c]:aes64ks1i a1, a0, 10<br> [0x80000a30]:sd a1, 176(ra)<br>    |
|  45|[0x80003368]<br>0x5C2406495C240649|- rs1_val == 0xa7a6a5a4a3a2a1a0 and imm_val == 0xA #nosat<br>                                                                       |[0x80000a54]:aes64ks1i a1, a0, 10<br> [0x80000a58]:sd a1, 184(ra)<br>    |
|  46|[0x80003370]<br>0x0A3A32E00A3A32E0|- rs1_val == 0xa3a2a1a09f9e9d9c and imm_val == 0xA #nosat<br>                                                                       |[0x80000a7c]:aes64ks1i a1, a0, 10<br> [0x80000a80]:sd a1, 192(ra)<br>    |
|  47|[0x80003378]<br>0xDB0B5EDEDB0B5EDE|- rs1_val == 0x9f9e9d9c9b9a9998 and imm_val == 0xA #nosat<br>                                                                       |[0x80000aa4]:aes64ks1i a1, a0, 10<br> [0x80000aa8]:sd a1, 200(ra)<br>    |
|  48|[0x80003380]<br>0x14B8EE4614B8EE46|- rs1_val == 0x9b9a999897969594 and imm_val == 0xA #nosat<br>                                                                       |[0x80000acc]:aes64ks1i a1, a0, 10<br> [0x80000ad0]:sd a1, 208(ra)<br>    |
|  49|[0x80003388]<br>0x88902A2288902A22|- rs1_val == 0x9796959493929190 and imm_val == 0xA #nosat<br>                                                                       |[0x80000af4]:aes64ks1i a1, a0, 10<br> [0x80000af8]:sd a1, 216(ra)<br>    |
|  50|[0x80003390]<br>0xDC4F8160DC4F8160|- rs1_val == 0x939291908f8e8d8c and imm_val == 0xA #nosat<br>                                                                       |[0x80000b1c]:aes64ks1i a1, a0, 10<br> [0x80000b20]:sd a1, 224(ra)<br>    |
|  51|[0x80003398]<br>0x73195D6473195D64|- rs1_val == 0x8f8e8d8c8b8a8988 and imm_val == 0xA #nosat<br>                                                                       |[0x80000b44]:aes64ks1i a1, a0, 10<br> [0x80000b48]:sd a1, 232(ra)<br>    |
|  52|[0x800033a0]<br>0x3D7EA7C43D7EA7C4|- rs1_val == 0x8b8a898887868584 and imm_val == 0xA #nosat<br>                                                                       |[0x80000b6c]:aes64ks1i a1, a0, 10<br> [0x80000b70]:sd a1, 240(ra)<br>    |
|  53|[0x800033a8]<br>0x1744975F1744975F|- rs1_val == 0x8786858483828180 and imm_val == 0xA #nosat<br>                                                                       |[0x80000b94]:aes64ks1i a1, a0, 10<br> [0x80000b98]:sd a1, 248(ra)<br>    |
|  54|[0x800033b0]<br>0xEC130CCDEC130CCD|- rs1_val == 0x838281807f7e7d7c and imm_val == 0xA #nosat<br>                                                                       |[0x80000bbc]:aes64ks1i a1, a0, 10<br> [0x80000bc0]:sd a1, 256(ra)<br>    |
|  55|[0x800033b8]<br>0xD2F3FF10D2F3FF10|- rs1_val == 0x7f7e7d7c7b7a7978 and imm_val == 0xA #nosat<br>                                                                       |[0x80000be4]:aes64ks1i a1, a0, 10<br> [0x80000be8]:sd a1, 264(ra)<br>    |
|  56|[0x800033c0]<br>0x21DAB6BC21DAB6BC|- rs1_val == 0x7b7a797877767574 and imm_val == 0xA #nosat<br>                                                                       |[0x80000c0c]:aes64ks1i a1, a0, 10<br> [0x80000c10]:sd a1, 272(ra)<br>    |
|  57|[0x800033c8]<br>0xF5389D92F5389D92|- rs1_val == 0x7776757473727170 and imm_val == 0xA #nosat<br>                                                                       |[0x80000c34]:aes64ks1i a1, a0, 10<br> [0x80000c38]:sd a1, 280(ra)<br>    |
|  58|[0x800033d0]<br>0x8F40A3518F40A351|- rs1_val == 0x737271706f6e6d6c and imm_val == 0xA #nosat<br>                                                                       |[0x80000c5c]:aes64ks1i a1, a0, 10<br> [0x80000c60]:sd a1, 288(ra)<br>    |
|  59|[0x800033d8]<br>0xA89F3C50A89F3C50|- rs1_val == 0x6f6e6d6c6b6a6968 and imm_val == 0xA #nosat<br>                                                                       |[0x80000c84]:aes64ks1i a1, a0, 10<br> [0x80000c88]:sd a1, 296(ra)<br>    |
|  60|[0x800033e0]<br>0x7F02F9457F02F945|- rs1_val == 0x6b6a696867666564 and imm_val == 0xA #nosat<br>                                                                       |[0x80000cac]:aes64ks1i a1, a0, 10<br> [0x80000cb0]:sd a1, 304(ra)<br>    |
|  61|[0x800033e8]<br>0x85334D4385334D43|- rs1_val == 0x6766656463626160 and imm_val == 0xA #nosat<br>                                                                       |[0x80000cd4]:aes64ks1i a1, a0, 10<br> [0x80000cd8]:sd a1, 312(ra)<br>    |
|  62|[0x800033f0]<br>0xFBAAEFD0FBAAEFD0|- rs1_val == 0x636261605f5e5d5c and imm_val == 0xA #nosat<br>                                                                       |[0x80000cfc]:aes64ks1i a1, a0, 10<br> [0x80000d00]:sd a1, 320(ra)<br>    |
|  63|[0x800033f8]<br>0xCF584C4ACF584C4A|- rs1_val == 0x5f5e5d5c5b5a5958 and imm_val == 0xA #nosat<br>                                                                       |[0x80000d24]:aes64ks1i a1, a0, 10<br> [0x80000d28]:sd a1, 328(ra)<br>    |
|  64|[0x80003400]<br>0x39BECB6A39BECB6A|- rs1_val == 0x5b5a595857565554 and imm_val == 0xA #nosat<br>                                                                       |[0x80000d4c]:aes64ks1i a1, a0, 10<br> [0x80000d50]:sd a1, 336(ra)<br>    |
|  65|[0x80003408]<br>0x5BB1FC205BB1FC20|- rs1_val == 0x5756555453525150 and imm_val == 0xA #nosat<br>                                                                       |[0x80000d74]:aes64ks1i a1, a0, 10<br> [0x80000d78]:sd a1, 344(ra)<br>    |
|  66|[0x80003410]<br>0xED00D153ED00D153|- rs1_val == 0x535251504f4e4d4c and imm_val == 0xA #nosat<br>                                                                       |[0x80000d9c]:aes64ks1i a1, a0, 10<br> [0x80000da0]:sd a1, 352(ra)<br>    |
|  67|[0x80003418]<br>0x842FE329842FE329|- rs1_val == 0x4f4e4d4c4b4a4948 and imm_val == 0xA #nosat<br>                                                                       |[0x80000dc4]:aes64ks1i a1, a0, 10<br> [0x80000dc8]:sd a1, 360(ra)<br>    |
|  68|[0x80003420]<br>0xB3D63B52B3D63B52|- rs1_val == 0x4b4a494847464544 and imm_val == 0xA #nosat<br>                                                                       |[0x80000dec]:aes64ks1i a1, a0, 10<br> [0x80000df0]:sd a1, 368(ra)<br>    |
|  69|[0x80003428]<br>0xA05A6E1BA05A6E1B|- rs1_val == 0x4746454443424140 and imm_val == 0xA #nosat<br>                                                                       |[0x80000e14]:aes64ks1i a1, a0, 10<br> [0x80000e18]:sd a1, 376(ra)<br>    |
|  70|[0x80003430]<br>0x1A2C83091A2C8309|- rs1_val == 0x434241403f3e3d3c and imm_val == 0xA #nosat<br>                                                                       |[0x80000e3c]:aes64ks1i a1, a0, 10<br> [0x80000e40]:sd a1, 384(ra)<br>    |
|  71|[0x80003438]<br>0x75B227EB75B227EB|- rs1_val == 0x3f3e3d3c3b3a3938 and imm_val == 0xA #nosat<br>                                                                       |[0x80000e64]:aes64ks1i a1, a0, 10<br> [0x80000e68]:sd a1, 392(ra)<br>    |
|  72|[0x80003440]<br>0xE2801207E2801207|- rs1_val == 0x3b3a393837363534 and imm_val == 0xA #nosat<br>                                                                       |[0x80000e8c]:aes64ks1i a1, a0, 10<br> [0x80000e90]:sd a1, 400(ra)<br>    |
|  73|[0x80003448]<br>0x9A0596189A059618|- rs1_val == 0x3736353433323130 and imm_val == 0xA #nosat<br>                                                                       |[0x80000eb4]:aes64ks1i a1, a0, 10<br> [0x80000eb8]:sd a1, 408(ra)<br>    |
|  74|[0x80003450]<br>0xC323C704C323C704|- rs1_val == 0x333231302f2e2d2c and imm_val == 0xA #nosat<br>                                                                       |[0x80000edc]:aes64ks1i a1, a0, 10<br> [0x80000ee0]:sd a1, 416(ra)<br>    |
|  75|[0x80003458]<br>0x1531D8711531D871|- rs1_val == 0x2f2e2d2c2b2a2928 and imm_val == 0xA #nosat<br>                                                                       |[0x80000f04]:aes64ks1i a1, a0, 10<br> [0x80000f08]:sd a1, 424(ra)<br>    |
|  76|[0x80003460]<br>0xF1E5A534F1E5A534|- rs1_val == 0x2b2a292827262524 and imm_val == 0xA #nosat<br>                                                                       |[0x80000f2c]:aes64ks1i a1, a0, 10<br> [0x80000f30]:sd a1, 432(ra)<br>    |
|  77|[0x80003468]<br>0xCCF73F36CCF73F36|- rs1_val == 0x2726252423222120 and imm_val == 0xA #nosat<br>                                                                       |[0x80000f54]:aes64ks1i a1, a0, 10<br> [0x80000f58]:sd a1, 440(ra)<br>    |
|  78|[0x80003470]<br>0x2693FDB72693FDB7|- rs1_val == 0x232221201f1e1d1c and imm_val == 0xA #nosat<br>                                                                       |[0x80000f7c]:aes64ks1i a1, a0, 10<br> [0x80000f80]:sd a1, 448(ra)<br>    |
|  79|[0x80003478]<br>0xC072A49CC072A49C|- rs1_val == 0x1f1e1d1c1b1a1918 and imm_val == 0xA #nosat<br>                                                                       |[0x80000fa4]:aes64ks1i a1, a0, 10<br> [0x80000fa8]:sd a1, 456(ra)<br>    |
|  80|[0x80003480]<br>0xAFA2D4ADAFA2D4AD|- rs1_val == 0x1b1a191817161514 and imm_val == 0xA #nosat<br>                                                                       |[0x80000fcc]:aes64ks1i a1, a0, 10<br> [0x80000fd0]:sd a1, 464(ra)<br>    |
|  81|[0x80003488]<br>0xF04759FAF04759FA|- rs1_val == 0x1716151413121110 and imm_val == 0xA #nosat<br>                                                                       |[0x80000ff4]:aes64ks1i a1, a0, 10<br> [0x80000ff8]:sd a1, 472(ra)<br>    |
|  82|[0x80003490]<br>0x7DC982CA7DC982CA|- rs1_val == 0x131211100f0e0d0c and imm_val == 0xA #nosat<br>                                                                       |[0x8000101c]:aes64ks1i a1, a0, 10<br> [0x80001020]:sd a1, 480(ra)<br>    |
|  83|[0x80003498]<br>0x76ABD7FE76ABD7FE|- rs1_val == 0x0f0e0d0c0b0a0908 and imm_val == 0xA #nosat<br>                                                                       |[0x80001044]:aes64ks1i a1, a0, 10<br> [0x80001048]:sd a1, 488(ra)<br>    |
|  84|[0x800034a0]<br>0x2B6701302B670130|- rs1_val == 0x0b0a090807060504 and imm_val == 0xA #nosat<br>                                                                       |[0x80001064]:aes64ks1i a1, a0, 10<br> [0x80001068]:sd a1, 496(ra)<br>    |
|  85|[0x800034a8]<br>0x248893FD248893FD|- rs1_val == 0x9722c9a6b0942992 and imm_val == 0x5 #nosat<br>                                                                       |[0x8000108c]:aes64ks1i a1, a0, 5<br> [0x80001090]:sd a1, 504(ra)<br>     |
