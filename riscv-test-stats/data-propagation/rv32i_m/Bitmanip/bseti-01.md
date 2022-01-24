
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000a30')]      |
| SIG_REGION                | [('0x80002210', '0x80002490', '160 words')]      |
| COV_LABELS                | bseti      |
| TEST_NAME                 | /home/anku/bmanip/new_trials/trial8/32/riscof_dir/bseti-01.S/ref.S    |
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
      [0x80000a24]:bseti t6, t5, 0
      [0x80000a28]:sw t6, 516(t0)
 -- Signature Address: 0x80002484 Data: 0x72C58381
 -- Redundant Coverpoints hit by the op
      - opcode : bseti
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

|s.no|        signature         |                                                        coverpoints                                                        |                                code                                |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002210]<br>0xFFFFFFFF|- opcode : bseti<br> - rs1 : x31<br> - rd : x31<br> - rs1 == rd<br> - rs1_val == 0xFFFFFFFF and imm_val == 0x02 #nosat<br> |[0x80000104]:bseti t6, t6, 2<br> [0x80000108]:sw t6, 0(ra)<br>      |
|   2|[0x80002214]<br>0x2DEDB6A7|- rs1 : x29<br> - rd : x30<br> - rs1 != rd<br> - imm_val == 0x00 and rs1_val == 0x2DEDB6A7 #nosat<br>                      |[0x80000114]:bseti t5, t4, 0<br> [0x80000118]:sw t5, 4(ra)<br>      |
|   3|[0x80002218]<br>0x3C272728|- rs1 : x30<br> - rd : x29<br> - imm_val == 0x10 and rs1_val == 0x3C272728 #nosat<br>                                      |[0x80000124]:bseti t4, t5, 16<br> [0x80000128]:sw t4, 8(ra)<br>     |
|   4|[0x8000221c]<br>0x4F55C73D|- rs1 : x27<br> - rd : x28<br> - imm_val == 0x18 and rs1_val == 0x4F55C73D #nosat<br>                                      |[0x80000134]:bseti t3, s11, 24<br> [0x80000138]:sw t3, 12(ra)<br>   |
|   5|[0x80002220]<br>0xB0BB577A|- rs1 : x28<br> - rd : x27<br> - imm_val == 0x14 and rs1_val == 0xB0AB577A #nosat<br>                                      |[0x80000144]:bseti s11, t3, 20<br> [0x80000148]:sw s11, 16(ra)<br>  |
|   6|[0x80002224]<br>0xF4EB21AA|- rs1 : x25<br> - rd : x26<br> - imm_val == 0x1A and rs1_val == 0xF0EB21AA #nosat<br>                                      |[0x80000154]:bseti s10, s9, 26<br> [0x80000158]:sw s10, 20(ra)<br>  |
|   7|[0x80002228]<br>0xA9E16E27|- rs1 : x26<br> - rd : x25<br> - imm_val == 0x1B and rs1_val == 0xA9E16E27 #nosat<br>                                      |[0x80000164]:bseti s9, s10, 27<br> [0x80000168]:sw s9, 24(ra)<br>   |
|   8|[0x8000222c]<br>0x00001000|- rs1 : x23<br> - rd : x24<br> - rs1_val == 0x00000000 and imm_val == 0x0C #nosat<br>                                      |[0x80000170]:bseti s8, s7, 12<br> [0x80000174]:sw s8, 28(ra)<br>    |
|   9|[0x80002230]<br>0x80000020|- rs1 : x24<br> - rd : x23<br> - rs1_val == 0x80000000 and imm_val == 0x05 #nosat<br>                                      |[0x8000017c]:bseti s7, s8, 5<br> [0x80000180]:sw s7, 32(ra)<br>     |
|  10|[0x80002234]<br>0x40000002|- rs1 : x21<br> - rd : x22<br> - rs1_val == 0x40000000 and imm_val == 0x01 #nosat<br>                                      |[0x80000188]:bseti s6, s5, 1<br> [0x8000018c]:sw s6, 36(ra)<br>     |
|  11|[0x80002238]<br>0x61000000|- rs1 : x22<br> - rd : x21<br> - rs1_val == 0x60000000 and imm_val == 0x18 #nosat<br>                                      |[0x80000194]:bseti s5, s6, 24<br> [0x80000198]:sw s5, 40(ra)<br>    |
|  12|[0x8000223c]<br>0xF0000000|- rs1 : x19<br> - rd : x20<br> - rs1_val == 0xB0000000 and imm_val == 0x1E #nosat<br>                                      |[0x800001a0]:bseti s4, s3, 30<br> [0x800001a4]:sw s4, 44(ra)<br>    |
|  13|[0x80002240]<br>0x0C000000|- rs1 : x20<br> - rd : x19<br> - rs1_val == 0x08000000 and imm_val == 0x1A #nosat<br>                                      |[0x800001ac]:bseti s3, s4, 26<br> [0x800001b0]:sw s3, 48(ra)<br>    |
|  14|[0x80002244]<br>0xF4000020|- rs1 : x17<br> - rd : x18<br> - rs1_val == 0xF4000000 and imm_val == 0x05 #nosat<br>                                      |[0x800001b8]:bseti s2, a7, 5<br> [0x800001bc]:sw s2, 52(ra)<br>     |
|  15|[0x80002248]<br>0x82000400|- rs1 : x18<br> - rd : x17<br> - rs1_val == 0x82000000 and imm_val == 0x0A #nosat<br>                                      |[0x800001c4]:bseti a7, s2, 10<br> [0x800001c8]:sw a7, 56(ra)<br>    |
|  16|[0x8000224c]<br>0xFD000008|- rs1 : x15<br> - rd : x16<br> - rs1_val == 0xFD000000 and imm_val == 0x03 #nosat<br>                                      |[0x800001d0]:bseti a6, a5, 3<br> [0x800001d4]:sw a6, 60(ra)<br>     |
|  17|[0x80002250]<br>0xD8800400|- rs1 : x16<br> - rd : x15<br> - rs1_val == 0xD8800000 and imm_val == 0x0A #nosat<br>                                      |[0x800001dc]:bseti a5, a6, 10<br> [0x800001e0]:sw a5, 64(ra)<br>    |
|  18|[0x80002254]<br>0xC8D00000|- rs1 : x13<br> - rd : x14<br> - rs1_val == 0xC8C00000 and imm_val == 0x14 #nosat<br>                                      |[0x800001e8]:bseti a4, a3, 20<br> [0x800001ec]:sw a4, 68(ra)<br>    |
|  19|[0x80002258]<br>0xA3200100|- rs1 : x14<br> - rd : x13<br> - rs1_val == 0xA3200000 and imm_val == 0x08 #nosat<br>                                      |[0x800001f4]:bseti a3, a4, 8<br> [0x800001f8]:sw a3, 72(ra)<br>     |
|  20|[0x8000225c]<br>0xCF900000|- rs1 : x11<br> - rd : x12<br> - rs1_val == 0xC7900000 and imm_val == 0x1B #nosat<br>                                      |[0x80000200]:bseti a2, a1, 27<br> [0x80000204]:sw a2, 76(ra)<br>    |
|  21|[0x80002260]<br>0x56880000|- rs1 : x12<br> - rd : x11<br> - rs1_val == 0x46880000 and imm_val == 0x1C #nosat<br>                                      |[0x8000020c]:bseti a1, a2, 28<br> [0x80000210]:sw a1, 80(ra)<br>    |
|  22|[0x80002264]<br>0x5D440000|- rs1 : x9<br> - rd : x10<br> - rs1_val == 0x55440000 and imm_val == 0x1B #nosat<br>                                       |[0x80000218]:bseti a0, s1, 27<br> [0x8000021c]:sw a0, 84(ra)<br>    |
|  23|[0x80002268]<br>0xA56A4000|- rs1 : x10<br> - rd : x9<br> - rs1_val == 0xA56A0000 and imm_val == 0x0E #nosat<br>                                       |[0x80000224]:bseti s1, a0, 14<br> [0x80000228]:sw s1, 88(ra)<br>    |
|  24|[0x8000226c]<br>0x405D0008|- rs1 : x7<br> - rd : x8<br> - rs1_val == 0x405D0000 and imm_val == 0x03 #nosat<br>                                        |[0x80000230]:bseti fp, t2, 3<br> [0x80000234]:sw fp, 92(ra)<br>     |
|  25|[0x80002270]<br>0xCD2F8020|- rs1 : x8<br> - rd : x7<br> - rs1_val == 0xCD2F8000 and imm_val == 0x05 #nosat<br>                                        |[0x8000023c]:bseti t2, fp, 5<br> [0x80000240]:sw t2, 96(ra)<br>     |
|  26|[0x80002274]<br>0xA6C04000|- rs1 : x5<br> - rd : x6<br> - rs1_val == 0xA6C04000 and imm_val == 0x19 #nosat<br>                                        |[0x80000248]:bseti t1, t0, 25<br> [0x8000024c]:sw t1, 100(ra)<br>   |
|  27|[0x80002278]<br>0x33BC2000|- rs1 : x6<br> - rd : x5<br> - rs1_val == 0x33BC2000 and imm_val == 0x15 #nosat<br>                                        |[0x80000254]:bseti t0, t1, 21<br> [0x80000258]:sw t0, 104(ra)<br>   |
|  28|[0x8000227c]<br>0xF1C6B000|- rs1 : x3<br> - rd : x4<br> - rs1_val == 0xF1C6B000 and imm_val == 0x0C #nosat<br>                                        |[0x80000260]:bseti tp, gp, 12<br> [0x80000264]:sw tp, 108(ra)<br>   |
|  29|[0x80002280]<br>0xAA3D6800|- rs1 : x4<br> - rd : x3<br> - rs1_val == 0xAA3D6800 and imm_val == 0x0D #nosat<br>                                        |[0x80000278]:bseti gp, tp, 13<br> [0x8000027c]:sw gp, 0(t0)<br>     |
|  30|[0x80002284]<br>0x7AA5E400|- rs1 : x1<br> - rd : x2<br> - rs1_val == 0x7AA5E400 and imm_val == 0x0A #nosat<br>                                        |[0x80000288]:bseti sp, ra, 10<br> [0x8000028c]:sw sp, 4(t0)<br>     |
|  31|[0x80002288]<br>0xD1B7AE00|- rs1 : x2<br> - rd : x1<br> - rs1_val == 0xC1B7AE00 and imm_val == 0x1C #nosat<br>                                        |[0x80000298]:bseti ra, sp, 28<br> [0x8000029c]:sw ra, 8(t0)<br>     |
|  32|[0x8000228c]<br>0x00000200|- rs1 : x0<br>                                                                                                             |[0x800002a4]:bseti t6, zero, 9<br> [0x800002a8]:sw t6, 12(t0)<br>   |
|  33|[0x80002290]<br>0x00000000|- rd : x0<br> - rs1_val == 0x72C58380 and imm_val == 0x00 #nosat<br>                                                       |[0x800002b4]:bseti zero, t6, 0<br> [0x800002b8]:sw zero, 16(t0)<br> |
|  34|[0x80002294]<br>0x32ABC740|- rs1_val == 0x32AB8740 and imm_val == 0x0E #nosat<br>                                                                     |[0x800002c4]:bseti t6, t5, 14<br> [0x800002c8]:sw t6, 20(t0)<br>    |
|  35|[0x80002298]<br>0xB6CDF1A0|- rs1_val == 0x96CDF1A0 and imm_val == 0x1D #nosat<br>                                                                     |[0x800002d4]:bseti t6, t5, 29<br> [0x800002d8]:sw t6, 24(t0)<br>    |
|  36|[0x8000229c]<br>0xB87A9E30|- rs1_val == 0xB87A9E30 and imm_val == 0x11 #nosat<br>                                                                     |[0x800002e4]:bseti t6, t5, 17<br> [0x800002e8]:sw t6, 28(t0)<br>    |
|  37|[0x800022a0]<br>0x16BDFF98|- rs1_val == 0x163DFF98 and imm_val == 0x17 #nosat<br>                                                                     |[0x800002f4]:bseti t6, t5, 23<br> [0x800002f8]:sw t6, 32(t0)<br>    |
|  38|[0x800022a4]<br>0x9305D39C|- rs1_val == 0x9205D39C and imm_val == 0x18 #nosat<br>                                                                     |[0x80000304]:bseti t6, t5, 24<br> [0x80000308]:sw t6, 36(t0)<br>    |
|  39|[0x800022a8]<br>0x50E03C5A|- rs1_val == 0x50A03C5A and imm_val == 0x16 #nosat<br>                                                                     |[0x80000314]:bseti t6, t5, 22<br> [0x80000318]:sw t6, 40(t0)<br>    |
|  40|[0x800022ac]<br>0x797F76DF|- rs1_val == 0x797D76DF and imm_val == 0x11 #nosat<br>                                                                     |[0x80000324]:bseti t6, t5, 17<br> [0x80000328]:sw t6, 44(t0)<br>    |
|  41|[0x800022b0]<br>0x24496FE3|- imm_val == 0x08 and rs1_val == 0x24496FE3 #nosat<br>                                                                     |[0x80000334]:bseti t6, t5, 8<br> [0x80000338]:sw t6, 48(t0)<br>     |
|  42|[0x800022b4]<br>0xFE14BFF2|- imm_val == 0x1D and rs1_val == 0xDE14BFF2 #nosat<br>                                                                     |[0x80000344]:bseti t6, t5, 29<br> [0x80000348]:sw t6, 52(t0)<br>    |
|  43|[0x800022b8]<br>0xB808A67F|- imm_val == 0x03 and rs1_val == 0xB808A677 #nosat<br>                                                                     |[0x80000354]:bseti t6, t5, 3<br> [0x80000358]:sw t6, 56(t0)<br>     |
|  44|[0x800022bc]<br>0x76B1FDBD|- imm_val == 0x07 and rs1_val == 0x76B1FD3D #nosat<br>                                                                     |[0x80000364]:bseti t6, t5, 7<br> [0x80000368]:sw t6, 60(t0)<br>     |
|  45|[0x800022c0]<br>0x5DCF819D|- imm_val == 0x0F and rs1_val == 0x5DCF019D #nosat<br>                                                                     |[0x80000374]:bseti t6, t5, 15<br> [0x80000378]:sw t6, 64(t0)<br>    |
|  46|[0x800022c4]<br>0xC7B7097B|- imm_val == 0x1F and rs1_val == 0x47B7097B #nosat<br>                                                                     |[0x80000384]:bseti t6, t5, 31<br> [0x80000388]:sw t6, 68(t0)<br>    |
|  47|[0x800022c8]<br>0x759F1B44|- rs1_val == 0x759F1B44 and imm_val == 0x10 #nosat<br>                                                                     |[0x80000394]:bseti t6, t5, 16<br> [0x80000398]:sw t6, 72(t0)<br>    |
|  48|[0x800022cc]<br>0x40D90A1D|- rs1_val == 0x40D90A1D and imm_val == 0x17 #nosat<br>                                                                     |[0x800003a4]:bseti t6, t5, 23<br> [0x800003a8]:sw t6, 76(t0)<br>    |
|  49|[0x800022d0]<br>0x2DEDF123|- rs1_val == 0x2DEDF123 and imm_val == 0x16 #nosat<br>                                                                     |[0x800003b4]:bseti t6, t5, 22<br> [0x800003b8]:sw t6, 80(t0)<br>    |
|  50|[0x800022d4]<br>0x4B1634E7|- rs1_val == 0x4B1634E7 and imm_val == 0x0C #nosat<br>                                                                     |[0x800003c4]:bseti t6, t5, 12<br> [0x800003c8]:sw t6, 84(t0)<br>    |
|  51|[0x800022d8]<br>0x8935B82F|- rs1_val == 0x8935B82F and imm_val == 0x0B #nosat<br>                                                                     |[0x800003d4]:bseti t6, t5, 11<br> [0x800003d8]:sw t6, 88(t0)<br>    |
|  52|[0x800022dc]<br>0x70BCB8DF|- rs1_val == 0x70BCB8DF and imm_val == 0x1C #nosat<br>                                                                     |[0x800003e4]:bseti t6, t5, 28<br> [0x800003e8]:sw t6, 92(t0)<br>    |
|  53|[0x800022e0]<br>0x8DE1C73F|- rs1_val == 0x8DE1C73F and imm_val == 0x08 #nosat<br>                                                                     |[0x800003f4]:bseti t6, t5, 8<br> [0x800003f8]:sw t6, 96(t0)<br>     |
|  54|[0x800022e4]<br>0xB0E04E7F|- rs1_val == 0xB0E04E7F and imm_val == 0x1C #nosat<br>                                                                     |[0x80000404]:bseti t6, t5, 28<br> [0x80000408]:sw t6, 100(t0)<br>   |
|  55|[0x800022e8]<br>0x589318FF|- rs1_val == 0x589218FF and imm_val == 0x10 #nosat<br>                                                                     |[0x80000414]:bseti t6, t5, 16<br> [0x80000418]:sw t6, 104(t0)<br>   |
|  56|[0x800022ec]<br>0xA7BE99FF|- rs1_val == 0xA7BE99FF and imm_val == 0x07 #nosat<br>                                                                     |[0x80000424]:bseti t6, t5, 7<br> [0x80000428]:sw t6, 108(t0)<br>    |
|  57|[0x800022f0]<br>0xA37E33FF|- rs1_val == 0xA37E33FF and imm_val == 0x14 #nosat<br>                                                                     |[0x80000434]:bseti t6, t5, 20<br> [0x80000438]:sw t6, 112(t0)<br>   |
|  58|[0x800022f4]<br>0xEB7D37FF|- rs1_val == 0xE37D37FF and imm_val == 0x1B #nosat<br>                                                                     |[0x80000444]:bseti t6, t5, 27<br> [0x80000448]:sw t6, 116(t0)<br>   |
|  59|[0x800022f8]<br>0xABB4CFFF|- rs1_val == 0xABB4CFFF and imm_val == 0x17 #nosat<br>                                                                     |[0x80000454]:bseti t6, t5, 23<br> [0x80000458]:sw t6, 120(t0)<br>   |
|  60|[0x800022fc]<br>0x7C9DDFFF|- rs1_val == 0x7C9DDFFF and imm_val == 0x1B #nosat<br>                                                                     |[0x80000464]:bseti t6, t5, 27<br> [0x80000468]:sw t6, 124(t0)<br>   |
|  61|[0x80002300]<br>0x5B11FFFF|- rs1_val == 0x5B11BFFF and imm_val == 0x0E #nosat<br>                                                                     |[0x80000474]:bseti t6, t5, 14<br> [0x80000478]:sw t6, 128(t0)<br>   |
|  62|[0x80002304]<br>0xCB357FFF|- rs1_val == 0xCB347FFF and imm_val == 0x10 #nosat<br>                                                                     |[0x80000484]:bseti t6, t5, 16<br> [0x80000488]:sw t6, 132(t0)<br>   |
|  63|[0x80002308]<br>0xF306FFFF|- rs1_val == 0xF306FFFF and imm_val == 0x08 #nosat<br>                                                                     |[0x80000494]:bseti t6, t5, 8<br> [0x80000498]:sw t6, 136(t0)<br>    |
|  64|[0x8000230c]<br>0xBEA5FFFF|- rs1_val == 0xBEA5FFFF and imm_val == 0x1B #nosat<br>                                                                     |[0x800004a4]:bseti t6, t5, 27<br> [0x800004a8]:sw t6, 140(t0)<br>   |
|  65|[0x80002310]<br>0xD38BFFFF|- rs1_val == 0xD38BFFFF and imm_val == 0x1C #nosat<br>                                                                     |[0x800004b4]:bseti t6, t5, 28<br> [0x800004b8]:sw t6, 144(t0)<br>   |
|  66|[0x80002314]<br>0x15B7FFFF|- rs1_val == 0x15B7FFFF and imm_val == 0x10 #nosat<br>                                                                     |[0x800004c4]:bseti t6, t5, 16<br> [0x800004c8]:sw t6, 148(t0)<br>   |
|  67|[0x80002318]<br>0xD58FFFFF|- rs1_val == 0xD58FFFFF and imm_val == 0x09 #nosat<br>                                                                     |[0x800004d4]:bseti t6, t5, 9<br> [0x800004d8]:sw t6, 152(t0)<br>    |
|  68|[0x8000231c]<br>0xFE1FFFFF|- rs1_val == 0xFE1FFFFF and imm_val == 0x11 #nosat<br>                                                                     |[0x800004e4]:bseti t6, t5, 17<br> [0x800004e8]:sw t6, 156(t0)<br>   |
|  69|[0x80002320]<br>0x203FFFFF|- rs1_val == 0x203FFFFF and imm_val == 0x00 #nosat<br>                                                                     |[0x800004f4]:bseti t6, t5, 0<br> [0x800004f8]:sw t6, 160(t0)<br>    |
|  70|[0x80002324]<br>0x0F7FFFFF|- rs1_val == 0x077FFFFF and imm_val == 0x1B #nosat<br>                                                                     |[0x80000504]:bseti t6, t5, 27<br> [0x80000508]:sw t6, 164(t0)<br>   |
|  71|[0x80002328]<br>0xBEFFFFFF|- rs1_val == 0xBEFFFFFF and imm_val == 0x12 #nosat<br>                                                                     |[0x80000514]:bseti t6, t5, 18<br> [0x80000518]:sw t6, 168(t0)<br>   |
|  72|[0x8000232c]<br>0x89FFFFFF|- rs1_val == 0x89FFFFFF and imm_val == 0x0D #nosat<br>                                                                     |[0x80000524]:bseti t6, t5, 13<br> [0x80000528]:sw t6, 172(t0)<br>   |
|  73|[0x80002330]<br>0x23FFFFFF|- rs1_val == 0x23FFFFFF and imm_val == 0x04 #nosat<br>                                                                     |[0x80000534]:bseti t6, t5, 4<br> [0x80000538]:sw t6, 176(t0)<br>    |
|  74|[0x80002334]<br>0xA7FFFFFF|- rs1_val == 0xA7FFFFFF and imm_val == 0x0B #nosat<br>                                                                     |[0x80000544]:bseti t6, t5, 11<br> [0x80000548]:sw t6, 180(t0)<br>   |
|  75|[0x80002338]<br>0xCFFFFFFF|- rs1_val == 0xCFFFFFFF and imm_val == 0x0E #nosat<br>                                                                     |[0x80000554]:bseti t6, t5, 14<br> [0x80000558]:sw t6, 184(t0)<br>   |
|  76|[0x8000233c]<br>0x9FFFFFFF|- rs1_val == 0x9FFFFFFF and imm_val == 0x09 #nosat<br>                                                                     |[0x80000564]:bseti t6, t5, 9<br> [0x80000568]:sw t6, 188(t0)<br>    |
|  77|[0x80002340]<br>0xBFFFFFFF|- rs1_val == 0xBFFFFFFF and imm_val == 0x0E #nosat<br>                                                                     |[0x80000574]:bseti t6, t5, 14<br> [0x80000578]:sw t6, 192(t0)<br>   |
|  78|[0x80002344]<br>0x7FFFFFFF|- rs1_val == 0x7FFFFFFF and imm_val == 0x0B #nosat<br>                                                                     |[0x80000584]:bseti t6, t5, 11<br> [0x80000588]:sw t6, 196(t0)<br>   |
|  79|[0x80002348]<br>0xFFFFFFFF|- rs1_val == 0xFFFFFFFF and imm_val == 0x12 #nosat<br>                                                                     |[0x80000590]:bseti t6, t5, 18<br> [0x80000594]:sw t6, 200(t0)<br>   |
|  80|[0x8000234c]<br>0x1E4F1513|- imm_val == 0x1B and rs1_val == 0x164F1513 #nosat<br>                                                                     |[0x800005a0]:bseti t6, t5, 27<br> [0x800005a4]:sw t6, 204(t0)<br>   |
|  81|[0x80002350]<br>0xACC6DAF2|- imm_val == 0x09 and rs1_val == 0xACC6D8F2 #nosat<br>                                                                     |[0x800005b0]:bseti t6, t5, 9<br> [0x800005b4]:sw t6, 208(t0)<br>    |
|  82|[0x80002354]<br>0xA123F541|- imm_val == 0x06 and rs1_val == 0xA123F501 #nosat<br>                                                                     |[0x800005c0]:bseti t6, t5, 6<br> [0x800005c4]:sw t6, 212(t0)<br>    |
|  83|[0x80002358]<br>0xB57A6A1D|- imm_val == 0x02 and rs1_val == 0xB57A6A1D #nosat<br>                                                                     |[0x800005d0]:bseti t6, t5, 2<br> [0x800005d4]:sw t6, 216(t0)<br>    |
|  84|[0x8000235c]<br>0xE90794DF|- imm_val == 0x01 and rs1_val == 0xE90794DF #nosat<br>                                                                     |[0x800005e0]:bseti t6, t5, 1<br> [0x800005e4]:sw t6, 220(t0)<br>    |
|  85|[0x80002360]<br>0xAF5570EF|- imm_val == 0x00 and rs1_val == 0xAF5570EE #nosat<br>                                                                     |[0x800005f0]:bseti t6, t5, 0<br> [0x800005f4]:sw t6, 224(t0)<br>    |
|  86|[0x80002364]<br>0xF542441E|- rs1_val == 0xF542441E and imm_val == 0x01 #nosat<br>                                                                     |[0x80000600]:bseti t6, t5, 1<br> [0x80000604]:sw t6, 228(t0)<br>    |
|  87|[0x80002368]<br>0x62F28D1B|- rs1_val == 0x62F28D1B and imm_val == 0x04 #nosat<br>                                                                     |[0x80000610]:bseti t6, t5, 4<br> [0x80000614]:sw t6, 232(t0)<br>    |
|  88|[0x8000236c]<br>0x38BDB45D|- rs1_val == 0x38B9B45D and imm_val == 0x12 #nosat<br>                                                                     |[0x80000620]:bseti t6, t5, 18<br> [0x80000624]:sw t6, 236(t0)<br>   |
|  89|[0x80002370]<br>0x16809A52|- rs1_val == 0x16809A12 and imm_val == 0x06 #nosat<br>                                                                     |[0x80000630]:bseti t6, t5, 6<br> [0x80000634]:sw t6, 240(t0)<br>    |
|  90|[0x80002374]<br>0x082A1750|- rs1_val == 0x082A1750 and imm_val == 0x06 #nosat<br>                                                                     |[0x80000640]:bseti t6, t5, 6<br> [0x80000644]:sw t6, 244(t0)<br>    |
|  91|[0x80002378]<br>0x079DD25B|- rs1_val == 0x079DD25B and imm_val == 0x04 #nosat<br>                                                                     |[0x80000650]:bseti t6, t5, 4<br> [0x80000654]:sw t6, 248(t0)<br>    |
|  92|[0x8000237c]<br>0x034C687B|- rs1_val == 0x034C687B and imm_val == 0x12 #nosat<br>                                                                     |[0x80000660]:bseti t6, t5, 18<br> [0x80000664]:sw t6, 252(t0)<br>   |
|  93|[0x80002380]<br>0x01B641FD|- rs1_val == 0x01B601FD and imm_val == 0x0E #nosat<br>                                                                     |[0x80000670]:bseti t6, t5, 14<br> [0x80000674]:sw t6, 256(t0)<br>   |
|  94|[0x80002384]<br>0x00B302FD|- rs1_val == 0x00B302FD and imm_val == 0x10 #nosat<br>                                                                     |[0x80000680]:bseti t6, t5, 16<br> [0x80000684]:sw t6, 260(t0)<br>   |
|  95|[0x80002388]<br>0x0062A6B3|- rs1_val == 0x0062A6B3 and imm_val == 0x05 #nosat<br>                                                                     |[0x80000690]:bseti t6, t5, 5<br> [0x80000694]:sw t6, 264(t0)<br>    |
|  96|[0x8000238c]<br>0x00339238|- rs1_val == 0x00339238 and imm_val == 0x11 #nosat<br>                                                                     |[0x800006a0]:bseti t6, t5, 17<br> [0x800006a4]:sw t6, 268(t0)<br>   |
|  97|[0x80002390]<br>0x00164AF0|- rs1_val == 0x00164AF0 and imm_val == 0x05 #nosat<br>                                                                     |[0x800006b0]:bseti t6, t5, 5<br> [0x800006b4]:sw t6, 272(t0)<br>    |
|  98|[0x80002394]<br>0x0009222B|- rs1_val == 0x0009222A and imm_val == 0x00 #nosat<br>                                                                     |[0x800006c0]:bseti t6, t5, 0<br> [0x800006c4]:sw t6, 276(t0)<br>    |
|  99|[0x80002398]<br>0x0006284E|- rs1_val == 0x0006284E and imm_val == 0x12 #nosat<br>                                                                     |[0x800006d0]:bseti t6, t5, 18<br> [0x800006d4]:sw t6, 280(t0)<br>   |
| 100|[0x8000239c]<br>0x00035161|- rs1_val == 0x00035161 and imm_val == 0x0E #nosat<br>                                                                     |[0x800006e0]:bseti t6, t5, 14<br> [0x800006e4]:sw t6, 284(t0)<br>   |
| 101|[0x800023a0]<br>0x00011E24|- rs1_val == 0x00011E24 and imm_val == 0x0C #nosat<br>                                                                     |[0x800006f0]:bseti t6, t5, 12<br> [0x800006f4]:sw t6, 288(t0)<br>   |
| 102|[0x800023a4]<br>0x1000F614|- rs1_val == 0x0000F614 and imm_val == 0x1C #nosat<br>                                                                     |[0x80000700]:bseti t6, t5, 28<br> [0x80000704]:sw t6, 292(t0)<br>   |
| 103|[0x800023a8]<br>0x20005CC1|- rs1_val == 0x00005CC1 and imm_val == 0x1D #nosat<br>                                                                     |[0x80000710]:bseti t6, t5, 29<br> [0x80000714]:sw t6, 296(t0)<br>   |
| 104|[0x800023ac]<br>0x00003226|- rs1_val == 0x00003226 and imm_val == 0x01 #nosat<br>                                                                     |[0x80000720]:bseti t6, t5, 1<br> [0x80000724]:sw t6, 300(t0)<br>    |
| 105|[0x800023b0]<br>0x00009D0C|- rs1_val == 0x00001D0C and imm_val == 0x0F #nosat<br>                                                                     |[0x80000730]:bseti t6, t5, 15<br> [0x80000734]:sw t6, 304(t0)<br>   |
| 106|[0x800023b4]<br>0x00000DD4|- rs1_val == 0x00000DD4 and imm_val == 0x02 #nosat<br>                                                                     |[0x80000740]:bseti t6, t5, 2<br> [0x80000744]:sw t6, 308(t0)<br>    |
| 107|[0x800023b8]<br>0x000005D1|- rs1_val == 0x000005D1 and imm_val == 0x04 #nosat<br>                                                                     |[0x8000074c]:bseti t6, t5, 4<br> [0x80000750]:sw t6, 312(t0)<br>    |
| 108|[0x800023bc]<br>0x000002A7|- rs1_val == 0x000002A7 and imm_val == 0x00 #nosat<br>                                                                     |[0x80000758]:bseti t6, t5, 0<br> [0x8000075c]:sw t6, 316(t0)<br>    |
| 109|[0x800023c0]<br>0x00000597|- rs1_val == 0x00000197 and imm_val == 0x0A #nosat<br>                                                                     |[0x80000764]:bseti t6, t5, 10<br> [0x80000768]:sw t6, 320(t0)<br>   |
| 110|[0x800023c4]<br>0x100000B9|- rs1_val == 0x000000B9 and imm_val == 0x1C #nosat<br>                                                                     |[0x80000770]:bseti t6, t5, 28<br> [0x80000774]:sw t6, 324(t0)<br>   |
| 111|[0x800023c8]<br>0x0200004C|- rs1_val == 0x0000004C and imm_val == 0x19 #nosat<br>                                                                     |[0x8000077c]:bseti t6, t5, 25<br> [0x80000780]:sw t6, 328(t0)<br>   |
| 112|[0x800023cc]<br>0x00000026|- rs1_val == 0x00000026 and imm_val == 0x02 #nosat<br>                                                                     |[0x80000788]:bseti t6, t5, 2<br> [0x8000078c]:sw t6, 332(t0)<br>    |
| 113|[0x800023d0]<br>0x00000212|- rs1_val == 0x00000012 and imm_val == 0x09 #nosat<br>                                                                     |[0x80000794]:bseti t6, t5, 9<br> [0x80000798]:sw t6, 336(t0)<br>    |
| 114|[0x800023d4]<br>0x1000000C|- rs1_val == 0x0000000C and imm_val == 0x1C #nosat<br>                                                                     |[0x800007a0]:bseti t6, t5, 28<br> [0x800007a4]:sw t6, 340(t0)<br>   |
| 115|[0x800023d8]<br>0x00000806|- rs1_val == 0x00000006 and imm_val == 0x0B #nosat<br>                                                                     |[0x800007ac]:bseti t6, t5, 11<br> [0x800007b0]:sw t6, 344(t0)<br>   |
| 116|[0x800023dc]<br>0x40000003|- rs1_val == 0x00000003 and imm_val == 0x1E #nosat<br>                                                                     |[0x800007b8]:bseti t6, t5, 30<br> [0x800007bc]:sw t6, 348(t0)<br>   |
| 117|[0x800023e0]<br>0x00001001|- rs1_val == 0x00000001 and imm_val == 0x0C #nosat<br>                                                                     |[0x800007c4]:bseti t6, t5, 12<br> [0x800007c8]:sw t6, 352(t0)<br>   |
| 118|[0x800023e4]<br>0x20000000|- rs1_val == 0x00000000 and imm_val == 0x1D #nosat<br>                                                                     |[0x800007d0]:bseti t6, t5, 29<br> [0x800007d4]:sw t6, 356(t0)<br>   |
| 119|[0x800023e8]<br>0x5943AA19|- imm_val == 0x0F and rs1_val == 0x59432A19 #nosat<br>                                                                     |[0x800007e0]:bseti t6, t5, 15<br> [0x800007e4]:sw t6, 360(t0)<br>   |
| 120|[0x800023ec]<br>0xCEB506F6|- imm_val == 0x17 and rs1_val == 0xCEB506F6 #nosat<br>                                                                     |[0x800007f0]:bseti t6, t5, 23<br> [0x800007f4]:sw t6, 364(t0)<br>   |
| 121|[0x800023f0]<br>0xC5EC6148|- imm_val == 0x18 and rs1_val == 0xC5EC6148 #nosat<br>                                                                     |[0x80000800]:bseti t6, t5, 24<br> [0x80000804]:sw t6, 368(t0)<br>   |
| 122|[0x800023f4]<br>0xB9EF1857|- imm_val == 0x1D and rs1_val == 0x99EF1857 #nosat<br>                                                                     |[0x80000810]:bseti t6, t5, 29<br> [0x80000814]:sw t6, 372(t0)<br>   |
| 123|[0x800023f8]<br>0x54B91C79|- imm_val == 0x1E and rs1_val == 0x14B91C79 #nosat<br>                                                                     |[0x80000820]:bseti t6, t5, 30<br> [0x80000824]:sw t6, 376(t0)<br>   |
| 124|[0x800023fc]<br>0x8973E89C|- imm_val == 0x1F and rs1_val == 0x0973E89C #nosat<br>                                                                     |[0x80000830]:bseti t6, t5, 31<br> [0x80000834]:sw t6, 380(t0)<br>   |
| 125|[0x80002400]<br>0x7C43BDB9|- rs1_val == 0x7843BDB9 and imm_val == 0x1A #nosat<br>                                                                     |[0x80000840]:bseti t6, t5, 26<br> [0x80000844]:sw t6, 384(t0)<br>   |
| 126|[0x80002404]<br>0x9798C9D0|- rs1_val == 0x9798C9D0 and imm_val == 0x0E #nosat<br>                                                                     |[0x80000850]:bseti t6, t5, 14<br> [0x80000854]:sw t6, 388(t0)<br>   |
| 127|[0x80002408]<br>0xD814D576|- rs1_val == 0xD814D576 and imm_val == 0x0A #nosat<br>                                                                     |[0x80000860]:bseti t6, t5, 10<br> [0x80000864]:sw t6, 392(t0)<br>   |
| 128|[0x8000240c]<br>0xE0B37559|- rs1_val == 0xE0A37559 and imm_val == 0x14 #nosat<br>                                                                     |[0x80000870]:bseti t6, t5, 20<br> [0x80000874]:sw t6, 396(t0)<br>   |
| 129|[0x80002410]<br>0xF79FB998|- rs1_val == 0xF79FB998 and imm_val == 0x1E #nosat<br>                                                                     |[0x80000880]:bseti t6, t5, 30<br> [0x80000884]:sw t6, 400(t0)<br>   |
| 130|[0x80002414]<br>0xF87A2561|- rs1_val == 0xF87A2561 and imm_val == 0x1C #nosat<br>                                                                     |[0x80000890]:bseti t6, t5, 28<br> [0x80000894]:sw t6, 404(t0)<br>   |
| 131|[0x80002418]<br>0xFDA5ED7F|- rs1_val == 0xFDA56D7F and imm_val == 0x0F #nosat<br>                                                                     |[0x800008a0]:bseti t6, t5, 15<br> [0x800008a4]:sw t6, 408(t0)<br>   |
| 132|[0x8000241c]<br>0xFECDEAB5|- rs1_val == 0xFE4DEAB5 and imm_val == 0x17 #nosat<br>                                                                     |[0x800008b0]:bseti t6, t5, 23<br> [0x800008b4]:sw t6, 412(t0)<br>   |
| 133|[0x80002420]<br>0xFF6875BB|- rs1_val == 0xFF6875BB and imm_val == 0x13 #nosat<br>                                                                     |[0x800008c0]:bseti t6, t5, 19<br> [0x800008c4]:sw t6, 416(t0)<br>   |
| 134|[0x80002424]<br>0xFF93D1E4|- rs1_val == 0xFF93D0E4 and imm_val == 0x08 #nosat<br>                                                                     |[0x800008d0]:bseti t6, t5, 8<br> [0x800008d4]:sw t6, 420(t0)<br>    |
| 135|[0x80002428]<br>0xFFD4AA23|- rs1_val == 0xFFD4AA23 and imm_val == 0x00 #nosat<br>                                                                     |[0x800008e0]:bseti t6, t5, 0<br> [0x800008e4]:sw t6, 424(t0)<br>    |
| 136|[0x8000242c]<br>0xFFE2FC91|- rs1_val == 0xFFE2FC91 and imm_val == 0x18 #nosat<br>                                                                     |[0x800008f0]:bseti t6, t5, 24<br> [0x800008f4]:sw t6, 428(t0)<br>   |
| 137|[0x80002430]<br>0xFFF1D2A0|- rs1_val == 0xFFF1D2A0 and imm_val == 0x1C #nosat<br>                                                                     |[0x80000900]:bseti t6, t5, 28<br> [0x80000904]:sw t6, 432(t0)<br>   |
| 138|[0x80002434]<br>0xFFF984D1|- rs1_val == 0xFFF904D1 and imm_val == 0x0F #nosat<br>                                                                     |[0x80000910]:bseti t6, t5, 15<br> [0x80000914]:sw t6, 436(t0)<br>   |
| 139|[0x80002438]<br>0xFFFCDB0B|- rs1_val == 0xFFFCDB0B and imm_val == 0x1D #nosat<br>                                                                     |[0x80000920]:bseti t6, t5, 29<br> [0x80000924]:sw t6, 440(t0)<br>   |
| 140|[0x8000243c]<br>0xFFFEC2B4|- rs1_val == 0xFFFEC2B4 and imm_val == 0x17 #nosat<br>                                                                     |[0x80000930]:bseti t6, t5, 23<br> [0x80000934]:sw t6, 444(t0)<br>   |
| 141|[0x80002440]<br>0xFFFF1E5F|- rs1_val == 0xFFFF1E5F and imm_val == 0x13 #nosat<br>                                                                     |[0x80000940]:bseti t6, t5, 19<br> [0x80000944]:sw t6, 448(t0)<br>   |
| 142|[0x80002444]<br>0xFFFFAAEE|- rs1_val == 0xFFFFA2EE and imm_val == 0x0B #nosat<br>                                                                     |[0x80000950]:bseti t6, t5, 11<br> [0x80000954]:sw t6, 452(t0)<br>   |
| 143|[0x80002448]<br>0xFFFFD410|- rs1_val == 0xFFFFD410 and imm_val == 0x10 #nosat<br>                                                                     |[0x80000960]:bseti t6, t5, 16<br> [0x80000964]:sw t6, 456(t0)<br>   |
| 144|[0x8000244c]<br>0xFFFFEE0A|- rs1_val == 0xFFFFEE0A and imm_val == 0x1A #nosat<br>                                                                     |[0x80000970]:bseti t6, t5, 26<br> [0x80000974]:sw t6, 460(t0)<br>   |
| 145|[0x80002450]<br>0xFFFFF32A|- rs1_val == 0xFFFFF32A and imm_val == 0x16 #nosat<br>                                                                     |[0x80000980]:bseti t6, t5, 22<br> [0x80000984]:sw t6, 464(t0)<br>   |
| 146|[0x80002454]<br>0xFFFFFB84|- rs1_val == 0xFFFFFB84 and imm_val == 0x08 #nosat<br>                                                                     |[0x8000098c]:bseti t6, t5, 8<br> [0x80000990]:sw t6, 468(t0)<br>    |
| 147|[0x80002458]<br>0xFFFFFC1D|- rs1_val == 0xFFFFFC1D and imm_val == 0x1A #nosat<br>                                                                     |[0x80000998]:bseti t6, t5, 26<br> [0x8000099c]:sw t6, 472(t0)<br>   |
| 148|[0x8000245c]<br>0xFFFFFE31|- rs1_val == 0xFFFFFE31 and imm_val == 0x17 #nosat<br>                                                                     |[0x800009a4]:bseti t6, t5, 23<br> [0x800009a8]:sw t6, 476(t0)<br>   |
| 149|[0x80002460]<br>0xFFFFFF54|- rs1_val == 0xFFFFFF44 and imm_val == 0x04 #nosat<br>                                                                     |[0x800009b0]:bseti t6, t5, 4<br> [0x800009b4]:sw t6, 480(t0)<br>    |
| 150|[0x80002464]<br>0xFFFFFFBA|- rs1_val == 0xFFFFFFBA and imm_val == 0x1F #nosat<br>                                                                     |[0x800009bc]:bseti t6, t5, 31<br> [0x800009c0]:sw t6, 484(t0)<br>   |
| 151|[0x80002468]<br>0xFFFFFFC6|- rs1_val == 0xFFFFFFC6 and imm_val == 0x0A #nosat<br>                                                                     |[0x800009c8]:bseti t6, t5, 10<br> [0x800009cc]:sw t6, 488(t0)<br>   |
| 152|[0x8000246c]<br>0xFFFFFFE8|- rs1_val == 0xFFFFFFE8 and imm_val == 0x11 #nosat<br>                                                                     |[0x800009d4]:bseti t6, t5, 17<br> [0x800009d8]:sw t6, 492(t0)<br>   |
| 153|[0x80002470]<br>0xFFFFFFF2|- rs1_val == 0xFFFFFFF2 and imm_val == 0x1F #nosat<br>                                                                     |[0x800009e0]:bseti t6, t5, 31<br> [0x800009e4]:sw t6, 496(t0)<br>   |
| 154|[0x80002474]<br>0xFFFFFFF9|- rs1_val == 0xFFFFFFF9 and imm_val == 0x1D #nosat<br>                                                                     |[0x800009ec]:bseti t6, t5, 29<br> [0x800009f0]:sw t6, 500(t0)<br>   |
| 155|[0x80002478]<br>0xFFFFFFFD|- rs1_val == 0xFFFFFFFD and imm_val == 0x00 #nosat<br>                                                                     |[0x800009f8]:bseti t6, t5, 0<br> [0x800009fc]:sw t6, 504(t0)<br>    |
| 156|[0x8000247c]<br>0xFFFFFFFE|- rs1_val == 0xFFFFFFFE and imm_val == 0x1E #nosat<br>                                                                     |[0x80000a04]:bseti t6, t5, 30<br> [0x80000a08]:sw t6, 508(t0)<br>   |
| 157|[0x80002480]<br>0x4C56BB00|- rs1_val == 0x4C56BB00 and imm_val == 0x09 #nosat<br>                                                                     |[0x80000a14]:bseti t6, t5, 9<br> [0x80000a18]:sw t6, 512(t0)<br>    |
