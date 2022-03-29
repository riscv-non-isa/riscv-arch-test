
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000c00')]      |
| SIG_REGION                | [('0x80002210', '0x80002480', '156 words')]      |
| COV_LABELS                | sha512sig0l      |
| TEST_NAME                 | /home/anku/bcrypto/trial8/32/riscof_work/sha512sig0l-01.S/ref.S    |
| Total Number of coverpoints| 256     |
| Total Coverpoints Hit     | 250      |
| Total Signature Updates   | 153      |
| STAT1                     | 151      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bc8]:sha512sig0l t6, t5, t4
      [0x80000bcc]:sw t6, 496(t2)
 -- Signature Address: 0x80002468 Data: 0xF3FFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : sha512sig0l
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 4294967291




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bec]:sha512sig0l t6, t5, t4
      [0x80000bf0]:sw t6, 504(t2)
 -- Signature Address: 0x80002470 Data: 0xBE7FFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : sha512sig0l
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 2147483647






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

|s.no|        signature         |                                                       coverpoints                                                       |                                   code                                    |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------------|
|   1|[0x80002210]<br>0x27CA95F4|- opcode : sha512sig0l<br> - rs1 : x30<br> - rs2 : x30<br> - rd : x31<br> - rs1 == rs2 != rd<br>                         |[0x80000110]:sha512sig0l t6, t5, t5<br> [0x80000114]:sw t6, 0(ra)<br>      |
|   2|[0x80002214]<br>0xFFFFFFFF|- rs1 : x29<br> - rs2 : x31<br> - rd : x29<br> - rs1 == rd != rs2<br> - rs2_val == 2147483647<br>                        |[0x80000124]:sha512sig0l t4, t4, t6<br> [0x80000128]:sw t4, 4(ra)<br>      |
|   3|[0x80002218]<br>0xFFFFFFFF|- rs1 : x31<br> - rs2 : x29<br> - rd : x30<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 3221225471<br> |[0x80000138]:sha512sig0l t5, t6, t4<br> [0x8000013c]:sw t5, 8(ra)<br>      |
|   4|[0x8000221c]<br>0xFFFFFFFF|- rs1 : x28<br> - rs2 : x28<br> - rd : x28<br> - rs1 == rs2 == rd<br>                                                    |[0x80000148]:sha512sig0l t3, t3, t3<br> [0x8000014c]:sw t3, 12(ra)<br>     |
|   5|[0x80002220]<br>0xFFFFFFFF|- rs1 : x26<br> - rs2 : x27<br> - rd : x27<br> - rs2 == rd != rs1<br> - rs2_val == 4026531839<br>                        |[0x8000015c]:sha512sig0l s11, s10, s11<br> [0x80000160]:sw s11, 16(ra)<br> |
|   6|[0x80002224]<br>0xFFFFFFFF|- rs1 : x27<br> - rs2 : x25<br> - rd : x26<br> - rs2_val == 4160749567<br>                                               |[0x80000170]:sha512sig0l s10, s11, s9<br> [0x80000174]:sw s10, 20(ra)<br>  |
|   7|[0x80002228]<br>0xFFFFFFFF|- rs1 : x24<br> - rs2 : x26<br> - rd : x25<br> - rs2_val == 4227858431<br>                                               |[0x80000184]:sha512sig0l s9, s8, s10<br> [0x80000188]:sw s9, 24(ra)<br>    |
|   8|[0x8000222c]<br>0xFFFFFFFF|- rs1 : x25<br> - rs2 : x23<br> - rd : x24<br> - rs2_val == 4261412863<br>                                               |[0x80000198]:sha512sig0l s8, s9, s7<br> [0x8000019c]:sw s8, 28(ra)<br>     |
|   9|[0x80002230]<br>0xFFFFFFFF|- rs1 : x22<br> - rs2 : x24<br> - rd : x23<br> - rs2_val == 4278190079<br>                                               |[0x800001ac]:sha512sig0l s7, s6, s8<br> [0x800001b0]:sw s7, 32(ra)<br>     |
|  10|[0x80002234]<br>0xFFFFFFFF|- rs1 : x23<br> - rs2 : x21<br> - rd : x22<br> - rs2_val == 4286578687<br>                                               |[0x800001c0]:sha512sig0l s6, s7, s5<br> [0x800001c4]:sw s6, 36(ra)<br>     |
|  11|[0x80002238]<br>0xFFFFFFFF|- rs1 : x20<br> - rs2 : x22<br> - rd : x21<br> - rs2_val == 4290772991<br>                                               |[0x800001d4]:sha512sig0l s5, s4, s6<br> [0x800001d8]:sw s5, 40(ra)<br>     |
|  12|[0x8000223c]<br>0xFFFFFFFF|- rs1 : x21<br> - rs2 : x19<br> - rd : x20<br> - rs2_val == 4292870143<br>                                               |[0x800001e8]:sha512sig0l s4, s5, s3<br> [0x800001ec]:sw s4, 44(ra)<br>     |
|  13|[0x80002240]<br>0xFFFFFFFF|- rs1 : x18<br> - rs2 : x20<br> - rd : x19<br> - rs2_val == 4293918719<br>                                               |[0x800001fc]:sha512sig0l s3, s2, s4<br> [0x80000200]:sw s3, 48(ra)<br>     |
|  14|[0x80002244]<br>0xFFFFFFFF|- rs1 : x19<br> - rs2 : x17<br> - rd : x18<br> - rs2_val == 4294443007<br>                                               |[0x80000210]:sha512sig0l s2, s3, a7<br> [0x80000214]:sw s2, 52(ra)<br>     |
|  15|[0x80002248]<br>0xFFFFFFFF|- rs1 : x16<br> - rs2 : x18<br> - rd : x17<br> - rs2_val == 4294705151<br>                                               |[0x80000224]:sha512sig0l a7, a6, s2<br> [0x80000228]:sw a7, 56(ra)<br>     |
|  16|[0x8000224c]<br>0xFFFFFFFF|- rs1 : x17<br> - rs2 : x15<br> - rd : x16<br> - rs2_val == 4294836223<br>                                               |[0x80000238]:sha512sig0l a6, a7, a5<br> [0x8000023c]:sw a6, 60(ra)<br>     |
|  17|[0x80002250]<br>0xFFFFFFFF|- rs1 : x14<br> - rs2 : x16<br> - rd : x15<br> - rs2_val == 4294901759<br>                                               |[0x8000024c]:sha512sig0l a5, a4, a6<br> [0x80000250]:sw a5, 64(ra)<br>     |
|  18|[0x80002254]<br>0xFFFFFFFF|- rs1 : x15<br> - rs2 : x13<br> - rd : x14<br> - rs2_val == 4294934527<br>                                               |[0x80000260]:sha512sig0l a4, a5, a3<br> [0x80000264]:sw a4, 68(ra)<br>     |
|  19|[0x80002258]<br>0xFFFFFFFF|- rs1 : x12<br> - rs2 : x14<br> - rd : x13<br> - rs2_val == 4294950911<br>                                               |[0x80000274]:sha512sig0l a3, a2, a4<br> [0x80000278]:sw a3, 72(ra)<br>     |
|  20|[0x8000225c]<br>0xFFFFFFFF|- rs1 : x13<br> - rs2 : x11<br> - rd : x12<br> - rs2_val == 4294959103<br>                                               |[0x80000288]:sha512sig0l a2, a3, a1<br> [0x8000028c]:sw a2, 76(ra)<br>     |
|  21|[0x80002260]<br>0xFFFFFFFF|- rs1 : x10<br> - rs2 : x12<br> - rd : x11<br> - rs2_val == 4294963199<br>                                               |[0x8000029c]:sha512sig0l a1, a0, a2<br> [0x800002a0]:sw a1, 80(ra)<br>     |
|  22|[0x80002264]<br>0xFFFFFFFF|- rs1 : x11<br> - rs2 : x9<br> - rd : x10<br> - rs2_val == 4294965247<br>                                                |[0x800002b0]:sha512sig0l a0, a1, s1<br> [0x800002b4]:sw a0, 84(ra)<br>     |
|  23|[0x80002268]<br>0xFFFFFFFF|- rs1 : x8<br> - rs2 : x10<br> - rd : x9<br> - rs2_val == 4294966271<br>                                                 |[0x800002c0]:sha512sig0l s1, fp, a0<br> [0x800002c4]:sw s1, 88(ra)<br>     |
|  24|[0x8000226c]<br>0xFFFFFFFF|- rs1 : x9<br> - rs2 : x7<br> - rd : x8<br> - rs2_val == 4294966783<br>                                                  |[0x800002d0]:sha512sig0l fp, s1, t2<br> [0x800002d4]:sw fp, 92(ra)<br>     |
|  25|[0x80002270]<br>0xFFFFFFFF|- rs1 : x6<br> - rs2 : x8<br> - rd : x7<br> - rs2_val == 4294967039<br>                                                  |[0x800002e0]:sha512sig0l t2, t1, fp<br> [0x800002e4]:sw t2, 96(ra)<br>     |
|  26|[0x80002274]<br>0x7FFFFFFF|- rs1 : x7<br> - rs2 : x5<br> - rd : x6<br> - rs2_val == 4294967167<br>                                                  |[0x800002f0]:sha512sig0l t1, t2, t0<br> [0x800002f4]:sw t1, 100(ra)<br>    |
|  27|[0x80002278]<br>0x3FFFFFFF|- rs1 : x4<br> - rs2 : x6<br> - rd : x5<br> - rs2_val == 4294967231<br>                                                  |[0x80000308]:sha512sig0l t0, tp, t1<br> [0x8000030c]:sw t0, 0(t2)<br>      |
|  28|[0x8000227c]<br>0x9FFFFFFF|- rs1 : x5<br> - rs2 : x3<br> - rd : x4<br> - rs2_val == 4294967263<br>                                                  |[0x80000318]:sha512sig0l tp, t0, gp<br> [0x8000031c]:sw tp, 4(t2)<br>      |
|  29|[0x80002280]<br>0xCFFFFFFF|- rs1 : x2<br> - rs2 : x4<br> - rd : x3<br> - rs2_val == 4294967279<br>                                                  |[0x80000328]:sha512sig0l gp, sp, tp<br> [0x8000032c]:sw gp, 8(t2)<br>      |
|  30|[0x80002284]<br>0xE7FFFFFF|- rs1 : x3<br> - rs2 : x1<br> - rd : x2<br> - rs2_val == 4294967287<br>                                                  |[0x80000338]:sha512sig0l sp, gp, ra<br> [0x8000033c]:sw sp, 12(t2)<br>     |
|  31|[0x80002288]<br>0x8D000000|- rs1 : x0<br> - rs2 : x2<br> - rd : x1<br> - rs2_val == 4294967291<br>                                                  |[0x80000348]:sha512sig0l ra, zero, sp<br> [0x8000034c]:sw ra, 16(t2)<br>   |
|  32|[0x8000228c]<br>0xF9FFFFFF|- rs1 : x1<br> - rs2_val == 4294967293<br>                                                                               |[0x80000358]:sha512sig0l t6, ra, t5<br> [0x8000035c]:sw t6, 20(t2)<br>     |
|  33|[0x80002290]<br>0x7EFFFFFF|- rs2 : x0<br>                                                                                                           |[0x80000368]:sha512sig0l t6, t5, zero<br> [0x8000036c]:sw t6, 24(t2)<br>   |
|  34|[0x80002294]<br>0x00000000|- rd : x0<br> - rs1_val == 2147483647<br>                                                                                |[0x8000037c]:sha512sig0l zero, t6, t5<br> [0x80000380]:sw zero, 28(t2)<br> |
|  35|[0x80002298]<br>0xDF3FFFFF|- rs1_val == 3221225471<br>                                                                                              |[0x80000390]:sha512sig0l t6, t5, t4<br> [0x80000394]:sw t6, 32(t2)<br>     |
|  36|[0x8000229c]<br>0xEF9FFFFF|- rs1_val == 3758096383<br>                                                                                              |[0x800003a4]:sha512sig0l t6, t5, t4<br> [0x800003a8]:sw t6, 36(t2)<br>     |
|  37|[0x800022a0]<br>0xF7CFFFFF|- rs1_val == 4026531839<br>                                                                                              |[0x800003b8]:sha512sig0l t6, t5, t4<br> [0x800003bc]:sw t6, 40(t2)<br>     |
|  38|[0x800022a4]<br>0xFBE7FFFF|- rs1_val == 4160749567<br>                                                                                              |[0x800003cc]:sha512sig0l t6, t5, t4<br> [0x800003d0]:sw t6, 44(t2)<br>     |
|  39|[0x800022a8]<br>0xFDF3FFFF|- rs1_val == 4227858431<br>                                                                                              |[0x800003e0]:sha512sig0l t6, t5, t4<br> [0x800003e4]:sw t6, 48(t2)<br>     |
|  40|[0x800022ac]<br>0xFEF9FFFF|- rs1_val == 4261412863<br>                                                                                              |[0x800003f4]:sha512sig0l t6, t5, t4<br> [0x800003f8]:sw t6, 52(t2)<br>     |
|  41|[0x800022b0]<br>0xFF7CFFFF|- rs1_val == 4278190079<br>                                                                                              |[0x80000408]:sha512sig0l t6, t5, t4<br> [0x8000040c]:sw t6, 56(t2)<br>     |
|  42|[0x800022b4]<br>0xFFBE7FFF|- rs1_val == 4286578687<br>                                                                                              |[0x8000041c]:sha512sig0l t6, t5, t4<br> [0x80000420]:sw t6, 60(t2)<br>     |
|  43|[0x800022b8]<br>0xFFDF3FFF|- rs1_val == 4290772991<br>                                                                                              |[0x80000430]:sha512sig0l t6, t5, t4<br> [0x80000434]:sw t6, 64(t2)<br>     |
|  44|[0x800022bc]<br>0xFFEF9FFF|- rs1_val == 4292870143<br>                                                                                              |[0x80000444]:sha512sig0l t6, t5, t4<br> [0x80000448]:sw t6, 68(t2)<br>     |
|  45|[0x800022c0]<br>0xFFF7CFFF|- rs1_val == 4293918719<br>                                                                                              |[0x80000458]:sha512sig0l t6, t5, t4<br> [0x8000045c]:sw t6, 72(t2)<br>     |
|  46|[0x800022c4]<br>0xFFFBE7FF|- rs1_val == 4294443007<br>                                                                                              |[0x8000046c]:sha512sig0l t6, t5, t4<br> [0x80000470]:sw t6, 76(t2)<br>     |
|  47|[0x800022c8]<br>0xFFFDF3FF|- rs1_val == 4294705151<br>                                                                                              |[0x80000480]:sha512sig0l t6, t5, t4<br> [0x80000484]:sw t6, 80(t2)<br>     |
|  48|[0x800022cc]<br>0xFFFEF9FF|- rs1_val == 4294836223<br>                                                                                              |[0x80000494]:sha512sig0l t6, t5, t4<br> [0x80000498]:sw t6, 84(t2)<br>     |
|  49|[0x800022d0]<br>0xFFFF7CFF|- rs1_val == 4294901759<br>                                                                                              |[0x800004a8]:sha512sig0l t6, t5, t4<br> [0x800004ac]:sw t6, 88(t2)<br>     |
|  50|[0x800022d4]<br>0xFFFFBE7F|- rs1_val == 4294934527<br>                                                                                              |[0x800004bc]:sha512sig0l t6, t5, t4<br> [0x800004c0]:sw t6, 92(t2)<br>     |
|  51|[0x800022d8]<br>0xFFFFDF3F|- rs1_val == 4294950911<br>                                                                                              |[0x800004d0]:sha512sig0l t6, t5, t4<br> [0x800004d4]:sw t6, 96(t2)<br>     |
|  52|[0x800022dc]<br>0xFFFFEF9F|- rs1_val == 4294959103<br>                                                                                              |[0x800004e4]:sha512sig0l t6, t5, t4<br> [0x800004e8]:sw t6, 100(t2)<br>    |
|  53|[0x800022e0]<br>0xFFFFF7CF|- rs1_val == 4294963199<br>                                                                                              |[0x800004f8]:sha512sig0l t6, t5, t4<br> [0x800004fc]:sw t6, 104(t2)<br>    |
|  54|[0x800022e4]<br>0xFFFFFBE7|- rs1_val == 4294965247<br>                                                                                              |[0x8000050c]:sha512sig0l t6, t5, t4<br> [0x80000510]:sw t6, 108(t2)<br>    |
|  55|[0x800022e8]<br>0xFFFFFDF3|- rs1_val == 4294966271<br>                                                                                              |[0x8000051c]:sha512sig0l t6, t5, t4<br> [0x80000520]:sw t6, 112(t2)<br>    |
|  56|[0x800022ec]<br>0xFFFFFEF9|- rs1_val == 4294966783<br>                                                                                              |[0x8000052c]:sha512sig0l t6, t5, t4<br> [0x80000530]:sw t6, 116(t2)<br>    |
|  57|[0x800022f0]<br>0xFFFFFF7C|- rs1_val == 4294967039<br>                                                                                              |[0x8000053c]:sha512sig0l t6, t5, t4<br> [0x80000540]:sw t6, 120(t2)<br>    |
|  58|[0x800022f4]<br>0xFFFFFFBE|- rs1_val == 4294967167<br>                                                                                              |[0x8000054c]:sha512sig0l t6, t5, t4<br> [0x80000550]:sw t6, 124(t2)<br>    |
|  59|[0x800022f8]<br>0xFFFFFFDF|- rs1_val == 4294967231<br>                                                                                              |[0x8000055c]:sha512sig0l t6, t5, t4<br> [0x80000560]:sw t6, 128(t2)<br>    |
|  60|[0x800022fc]<br>0xFFFFFFEF|- rs1_val == 4294967263<br>                                                                                              |[0x8000056c]:sha512sig0l t6, t5, t4<br> [0x80000570]:sw t6, 132(t2)<br>    |
|  61|[0x80002300]<br>0xFFFFFFF7|- rs1_val == 4294967279<br>                                                                                              |[0x8000057c]:sha512sig0l t6, t5, t4<br> [0x80000580]:sw t6, 136(t2)<br>    |
|  62|[0x80002304]<br>0xFFFFFFFB|- rs1_val == 4294967287<br>                                                                                              |[0x8000058c]:sha512sig0l t6, t5, t4<br> [0x80000590]:sw t6, 140(t2)<br>    |
|  63|[0x80002308]<br>0xFFFFFFFD|- rs1_val == 4294967291<br>                                                                                              |[0x8000059c]:sha512sig0l t6, t5, t4<br> [0x800005a0]:sw t6, 144(t2)<br>    |
|  64|[0x8000230c]<br>0xFFFFFFFE|- rs1_val == 4294967293<br>                                                                                              |[0x800005ac]:sha512sig0l t6, t5, t4<br> [0x800005b0]:sw t6, 148(t2)<br>    |
|  65|[0x80002310]<br>0xFFFFFFFF|- rs1_val == 4294967294<br>                                                                                              |[0x800005bc]:sha512sig0l t6, t5, t4<br> [0x800005c0]:sw t6, 152(t2)<br>    |
|  66|[0x80002314]<br>0x7EFFFFFF|- rs2_val == 2147483648<br>                                                                                              |[0x800005cc]:sha512sig0l t6, t5, t4<br> [0x800005d0]:sw t6, 156(t2)<br>    |
|  67|[0x80002318]<br>0x7EFFFFFF|- rs2_val == 1073741824<br>                                                                                              |[0x800005dc]:sha512sig0l t6, t5, t4<br> [0x800005e0]:sw t6, 160(t2)<br>    |
|  68|[0x8000231c]<br>0x7EFFFFFF|- rs2_val == 536870912<br>                                                                                               |[0x800005ec]:sha512sig0l t6, t5, t4<br> [0x800005f0]:sw t6, 164(t2)<br>    |
|  69|[0x80002320]<br>0x7EFFFFFF|- rs2_val == 268435456<br>                                                                                               |[0x800005fc]:sha512sig0l t6, t5, t4<br> [0x80000600]:sw t6, 168(t2)<br>    |
|  70|[0x80002324]<br>0x7EFFFFFF|- rs2_val == 134217728<br>                                                                                               |[0x8000060c]:sha512sig0l t6, t5, t4<br> [0x80000610]:sw t6, 172(t2)<br>    |
|  71|[0x80002328]<br>0x7EFFFFFF|- rs2_val == 67108864<br>                                                                                                |[0x8000061c]:sha512sig0l t6, t5, t4<br> [0x80000620]:sw t6, 176(t2)<br>    |
|  72|[0x8000232c]<br>0x7EFFFFFF|- rs2_val == 33554432<br>                                                                                                |[0x8000062c]:sha512sig0l t6, t5, t4<br> [0x80000630]:sw t6, 180(t2)<br>    |
|  73|[0x80002330]<br>0x7EFFFFFF|- rs2_val == 16777216<br>                                                                                                |[0x8000063c]:sha512sig0l t6, t5, t4<br> [0x80000640]:sw t6, 184(t2)<br>    |
|  74|[0x80002334]<br>0x7EFFFFFF|- rs2_val == 8388608<br>                                                                                                 |[0x8000064c]:sha512sig0l t6, t5, t4<br> [0x80000650]:sw t6, 188(t2)<br>    |
|  75|[0x80002338]<br>0x7EFFFFFF|- rs2_val == 4194304<br>                                                                                                 |[0x8000065c]:sha512sig0l t6, t5, t4<br> [0x80000660]:sw t6, 192(t2)<br>    |
|  76|[0x8000233c]<br>0x7EFFFFFF|- rs2_val == 2097152<br>                                                                                                 |[0x8000066c]:sha512sig0l t6, t5, t4<br> [0x80000670]:sw t6, 196(t2)<br>    |
|  77|[0x80002340]<br>0x7EFFFFFF|- rs2_val == 1048576<br>                                                                                                 |[0x8000067c]:sha512sig0l t6, t5, t4<br> [0x80000680]:sw t6, 200(t2)<br>    |
|  78|[0x80002344]<br>0x7EFFFFFF|- rs2_val == 524288<br>                                                                                                  |[0x8000068c]:sha512sig0l t6, t5, t4<br> [0x80000690]:sw t6, 204(t2)<br>    |
|  79|[0x80002348]<br>0x7EFFFFFF|- rs2_val == 262144<br>                                                                                                  |[0x8000069c]:sha512sig0l t6, t5, t4<br> [0x800006a0]:sw t6, 208(t2)<br>    |
|  80|[0x8000234c]<br>0x7EFFFFFF|- rs2_val == 131072<br>                                                                                                  |[0x800006ac]:sha512sig0l t6, t5, t4<br> [0x800006b0]:sw t6, 212(t2)<br>    |
|  81|[0x80002350]<br>0x7EFFFFFF|- rs2_val == 65536<br>                                                                                                   |[0x800006bc]:sha512sig0l t6, t5, t4<br> [0x800006c0]:sw t6, 216(t2)<br>    |
|  82|[0x80002354]<br>0x7EFFFFFF|- rs2_val == 32768<br>                                                                                                   |[0x800006cc]:sha512sig0l t6, t5, t4<br> [0x800006d0]:sw t6, 220(t2)<br>    |
|  83|[0x80002358]<br>0x7EFFFFFF|- rs2_val == 16384<br>                                                                                                   |[0x800006dc]:sha512sig0l t6, t5, t4<br> [0x800006e0]:sw t6, 224(t2)<br>    |
|  84|[0x8000235c]<br>0x7EFFFFFF|- rs2_val == 8192<br>                                                                                                    |[0x800006ec]:sha512sig0l t6, t5, t4<br> [0x800006f0]:sw t6, 228(t2)<br>    |
|  85|[0x80002360]<br>0x7EFFFFFF|- rs2_val == 4096<br>                                                                                                    |[0x800006fc]:sha512sig0l t6, t5, t4<br> [0x80000700]:sw t6, 232(t2)<br>    |
|  86|[0x80002364]<br>0x81000000|- rs1_val == 1<br>                                                                                                       |[0x8000070c]:sha512sig0l t6, t5, t4<br> [0x80000710]:sw t6, 236(t2)<br>    |
|  87|[0x80002368]<br>0x1408AD00|- rs1_val == 0x91766f62 and rs2_val == 0x5570084b #nosat<br>                                                             |[0x80000724]:sha512sig0l t6, t5, t4<br> [0x80000728]:sw t6, 240(t2)<br>    |
|  88|[0x8000236c]<br>0x823E08D0|- rs1_val == 0xc0fe15dd and rs2_val == 0x9f053821 #nosat<br>                                                             |[0x8000073c]:sha512sig0l t6, t5, t4<br> [0x80000740]:sw t6, 244(t2)<br>    |
|  89|[0x80002370]<br>0x5825EDE0|- rs1_val == 0xdc80d916 and rs2_val == 0x2a2a146d #nosat<br>                                                             |[0x80000754]:sha512sig0l t6, t5, t4<br> [0x80000758]:sw t6, 248(t2)<br>    |
|  90|[0x80002374]<br>0x792A18AF|- rs1_val == 0x952acffe and rs2_val == 0x25ae27ee #nosat<br>                                                             |[0x8000076c]:sha512sig0l t6, t5, t4<br> [0x80000770]:sw t6, 252(t2)<br>    |
|  91|[0x80002378]<br>0x119311A8|- rs1_val == 0x40a5ff52 and rs2_val == 0xb6f9706f #nosat<br>                                                             |[0x80000784]:sha512sig0l t6, t5, t4<br> [0x80000788]:sw t6, 256(t2)<br>    |
|  92|[0x8000237c]<br>0x3EDE6354|- rs1_val == 0xe3f4fca3 and rs2_val == 0xa6c9253a #nosat<br>                                                             |[0x8000079c]:sha512sig0l t6, t5, t4<br> [0x800007a0]:sw t6, 260(t2)<br>    |
|  93|[0x80002380]<br>0x923FF0D0|- rs1_val == 0xc2f1c53e and rs2_val == 0xd05668ae #nosat<br>                                                             |[0x800007b4]:sha512sig0l t6, t5, t4<br> [0x800007b8]:sw t6, 264(t2)<br>    |
|  94|[0x80002384]<br>0x06280389|- rs1_val == 0x9722c9a6 and rs2_val == 0x7bcad7c4 #nosat<br>                                                             |[0x800007cc]:sha512sig0l t6, t5, t4<br> [0x800007d0]:sw t6, 268(t2)<br>    |
|  95|[0x80002388]<br>0xB1E08B7D|- rs1_val == 0xf7f1305a and rs2_val == 0x9bedfe39 #nosat<br>                                                             |[0x800007e4]:sha512sig0l t6, t5, t4<br> [0x800007e8]:sw t6, 272(t2)<br>    |
|  96|[0x8000238c]<br>0x81D265B6|- rs1_val == 0xd75739f8 and rs2_val == 0xe6fff3d9 #nosat<br>                                                             |[0x800007fc]:sha512sig0l t6, t5, t4<br> [0x80000800]:sw t6, 276(t2)<br>    |
|  97|[0x80002390]<br>0x47C6EBC8|- rs1_val == 0x90efb625 and rs2_val == 0x3150e5fa #nosat<br>                                                             |[0x80000814]:sha512sig0l t6, t5, t4<br> [0x80000818]:sw t6, 280(t2)<br>    |
|  98|[0x80002394]<br>0x1AC20451|- rs1_val == 0x1fc493ca and rs2_val == 0x65408c73 #nosat<br>                                                             |[0x8000082c]:sha512sig0l t6, t5, t4<br> [0x80000830]:sw t6, 284(t2)<br>    |
|  99|[0x80002398]<br>0x4E8525E1|- rs1_val == 0x8e2eac2a and rs2_val == 0xd169a3f8 #nosat<br>                                                             |[0x80000844]:sha512sig0l t6, t5, t4<br> [0x80000848]:sw t6, 288(t2)<br>    |
| 100|[0x8000239c]<br>0x93A290E6|- rs1_val == 0x35f9377f and rs2_val == 0xf4c30307 #nosat<br>                                                             |[0x8000085c]:sha512sig0l t6, t5, t4<br> [0x80000860]:sw t6, 292(t2)<br>    |
| 101|[0x800023a0]<br>0xB683DB8C|- rs1_val == 0x58d548aa and rs2_val == 0xa0569d76 #nosat<br>                                                             |[0x80000874]:sha512sig0l t6, t5, t4<br> [0x80000878]:sw t6, 296(t2)<br>    |
| 102|[0x800023a4]<br>0xE312ACA3|- rs1_val == 0x55d98c6e and rs2_val == 0x2daf9ac7 #nosat<br>                                                             |[0x8000088c]:sha512sig0l t6, t5, t4<br> [0x80000890]:sw t6, 300(t2)<br>    |
| 103|[0x800023a8]<br>0xEEC1A620|- rs1_val == 0x74b8de87 and rs2_val == 0xf273b44c #nosat<br>                                                             |[0x800008a4]:sha512sig0l t6, t5, t4<br> [0x800008a8]:sw t6, 304(t2)<br>    |
| 104|[0x800023ac]<br>0x3732406A|- rs1_val == 0xccce240c and rs2_val == 0x886c3a30 #nosat<br>                                                             |[0x800008bc]:sha512sig0l t6, t5, t4<br> [0x800008c0]:sw t6, 308(t2)<br>    |
| 105|[0x800023b0]<br>0x8C93E46A|- rs1_val == 0xb49c83dc and rs2_val == 0xbb61a9cd #nosat<br>                                                             |[0x800008d4]:sha512sig0l t6, t5, t4<br> [0x800008d8]:sw t6, 312(t2)<br>    |
| 106|[0x800023b4]<br>0x7EFFFFFF|- rs2_val == 2048<br>                                                                                                    |[0x800008e8]:sha512sig0l t6, t5, t4<br> [0x800008ec]:sw t6, 316(t2)<br>    |
| 107|[0x800023b8]<br>0x7EFFFFFF|- rs2_val == 1024<br>                                                                                                    |[0x800008f8]:sha512sig0l t6, t5, t4<br> [0x800008fc]:sw t6, 320(t2)<br>    |
| 108|[0x800023bc]<br>0x7EFFFFFF|- rs2_val == 512<br>                                                                                                     |[0x80000908]:sha512sig0l t6, t5, t4<br> [0x8000090c]:sw t6, 324(t2)<br>    |
| 109|[0x800023c0]<br>0x7EFFFFFF|- rs2_val == 256<br>                                                                                                     |[0x80000918]:sha512sig0l t6, t5, t4<br> [0x8000091c]:sw t6, 328(t2)<br>    |
| 110|[0x800023c4]<br>0xFEFFFFFF|- rs2_val == 128<br>                                                                                                     |[0x80000928]:sha512sig0l t6, t5, t4<br> [0x8000092c]:sw t6, 332(t2)<br>    |
| 111|[0x800023c8]<br>0xBEFFFFFF|- rs2_val == 64<br>                                                                                                      |[0x80000938]:sha512sig0l t6, t5, t4<br> [0x8000093c]:sw t6, 336(t2)<br>    |
| 112|[0x800023cc]<br>0x1EFFFFFF|- rs2_val == 32<br>                                                                                                      |[0x80000948]:sha512sig0l t6, t5, t4<br> [0x8000094c]:sw t6, 340(t2)<br>    |
| 113|[0x800023d0]<br>0x4EFFFFFF|- rs2_val == 16<br>                                                                                                      |[0x80000958]:sha512sig0l t6, t5, t4<br> [0x8000095c]:sw t6, 344(t2)<br>    |
| 114|[0x800023d4]<br>0x66FFFFFF|- rs2_val == 8<br>                                                                                                       |[0x80000968]:sha512sig0l t6, t5, t4<br> [0x8000096c]:sw t6, 348(t2)<br>    |
| 115|[0x800023d8]<br>0x72FFFFFF|- rs2_val == 4<br>                                                                                                       |[0x80000978]:sha512sig0l t6, t5, t4<br> [0x8000097c]:sw t6, 352(t2)<br>    |
| 116|[0x800023dc]<br>0x78FFFFFF|- rs2_val == 2<br>                                                                                                       |[0x80000988]:sha512sig0l t6, t5, t4<br> [0x8000098c]:sw t6, 356(t2)<br>    |
| 117|[0x800023e0]<br>0xFDFFFFFF|- rs2_val == 1<br>                                                                                                       |[0x80000998]:sha512sig0l t6, t5, t4<br> [0x8000099c]:sw t6, 360(t2)<br>    |
| 118|[0x800023e4]<br>0xC0800000|- rs1_val == 2147483648<br>                                                                                              |[0x800009a8]:sha512sig0l t6, t5, t4<br> [0x800009ac]:sw t6, 364(t2)<br>    |
| 119|[0x800023e8]<br>0xA1C00000|- rs1_val == 1073741824<br>                                                                                              |[0x800009b8]:sha512sig0l t6, t5, t4<br> [0x800009bc]:sw t6, 368(t2)<br>    |
| 120|[0x800023ec]<br>0x91600000|- rs1_val == 536870912<br>                                                                                               |[0x800009c8]:sha512sig0l t6, t5, t4<br> [0x800009cc]:sw t6, 372(t2)<br>    |
| 121|[0x800023f0]<br>0x89300000|- rs1_val == 268435456<br>                                                                                               |[0x800009d8]:sha512sig0l t6, t5, t4<br> [0x800009dc]:sw t6, 376(t2)<br>    |
| 122|[0x800023f4]<br>0x85180000|- rs1_val == 134217728<br>                                                                                               |[0x800009e8]:sha512sig0l t6, t5, t4<br> [0x800009ec]:sw t6, 380(t2)<br>    |
| 123|[0x800023f8]<br>0x830C0000|- rs1_val == 67108864<br>                                                                                                |[0x800009f8]:sha512sig0l t6, t5, t4<br> [0x800009fc]:sw t6, 384(t2)<br>    |
| 124|[0x800023fc]<br>0x80060000|- rs1_val == 33554432<br>                                                                                                |[0x80000a08]:sha512sig0l t6, t5, t4<br> [0x80000a0c]:sw t6, 388(t2)<br>    |
| 125|[0x80002400]<br>0x81830000|- rs1_val == 16777216<br>                                                                                                |[0x80000a18]:sha512sig0l t6, t5, t4<br> [0x80000a1c]:sw t6, 392(t2)<br>    |
| 126|[0x80002404]<br>0x81418000|- rs1_val == 8388608<br>                                                                                                 |[0x80000a28]:sha512sig0l t6, t5, t4<br> [0x80000a2c]:sw t6, 396(t2)<br>    |
| 127|[0x80002408]<br>0x8120C000|- rs1_val == 4194304<br>                                                                                                 |[0x80000a38]:sha512sig0l t6, t5, t4<br> [0x80000a3c]:sw t6, 400(t2)<br>    |
| 128|[0x8000240c]<br>0x81106000|- rs1_val == 2097152<br>                                                                                                 |[0x80000a48]:sha512sig0l t6, t5, t4<br> [0x80000a4c]:sw t6, 404(t2)<br>    |
| 129|[0x80002410]<br>0x81083000|- rs1_val == 1048576<br>                                                                                                 |[0x80000a58]:sha512sig0l t6, t5, t4<br> [0x80000a5c]:sw t6, 408(t2)<br>    |
| 130|[0x80002414]<br>0x81041800|- rs1_val == 524288<br>                                                                                                  |[0x80000a68]:sha512sig0l t6, t5, t4<br> [0x80000a6c]:sw t6, 412(t2)<br>    |
| 131|[0x80002418]<br>0x81020C00|- rs1_val == 262144<br>                                                                                                  |[0x80000a78]:sha512sig0l t6, t5, t4<br> [0x80000a7c]:sw t6, 416(t2)<br>    |
| 132|[0x8000241c]<br>0x81010600|- rs1_val == 131072<br>                                                                                                  |[0x80000a88]:sha512sig0l t6, t5, t4<br> [0x80000a8c]:sw t6, 420(t2)<br>    |
| 133|[0x80002420]<br>0x81008300|- rs1_val == 65536<br>                                                                                                   |[0x80000a98]:sha512sig0l t6, t5, t4<br> [0x80000a9c]:sw t6, 424(t2)<br>    |
| 134|[0x80002424]<br>0x81004180|- rs1_val == 32768<br>                                                                                                   |[0x80000aa8]:sha512sig0l t6, t5, t4<br> [0x80000aac]:sw t6, 428(t2)<br>    |
| 135|[0x80002428]<br>0x810020C0|- rs1_val == 16384<br>                                                                                                   |[0x80000ab8]:sha512sig0l t6, t5, t4<br> [0x80000abc]:sw t6, 432(t2)<br>    |
| 136|[0x8000242c]<br>0x81001060|- rs1_val == 8192<br>                                                                                                    |[0x80000ac8]:sha512sig0l t6, t5, t4<br> [0x80000acc]:sw t6, 436(t2)<br>    |
| 137|[0x80002430]<br>0x81000830|- rs1_val == 4096<br>                                                                                                    |[0x80000ad8]:sha512sig0l t6, t5, t4<br> [0x80000adc]:sw t6, 440(t2)<br>    |
| 138|[0x80002434]<br>0x81000418|- rs1_val == 2048<br>                                                                                                    |[0x80000aec]:sha512sig0l t6, t5, t4<br> [0x80000af0]:sw t6, 444(t2)<br>    |
| 139|[0x80002438]<br>0x8100020C|- rs1_val == 1024<br>                                                                                                    |[0x80000afc]:sha512sig0l t6, t5, t4<br> [0x80000b00]:sw t6, 448(t2)<br>    |
| 140|[0x8000243c]<br>0x81000106|- rs1_val == 512<br>                                                                                                     |[0x80000b0c]:sha512sig0l t6, t5, t4<br> [0x80000b10]:sw t6, 452(t2)<br>    |
| 141|[0x80002440]<br>0x81000083|- rs1_val == 256<br>                                                                                                     |[0x80000b1c]:sha512sig0l t6, t5, t4<br> [0x80000b20]:sw t6, 456(t2)<br>    |
| 142|[0x80002444]<br>0x81000041|- rs1_val == 128<br>                                                                                                     |[0x80000b2c]:sha512sig0l t6, t5, t4<br> [0x80000b30]:sw t6, 460(t2)<br>    |
| 143|[0x80002448]<br>0x81000020|- rs1_val == 64<br>                                                                                                      |[0x80000b3c]:sha512sig0l t6, t5, t4<br> [0x80000b40]:sw t6, 464(t2)<br>    |
| 144|[0x8000244c]<br>0x81000010|- rs1_val == 32<br>                                                                                                      |[0x80000b4c]:sha512sig0l t6, t5, t4<br> [0x80000b50]:sw t6, 468(t2)<br>    |
| 145|[0x80002450]<br>0x81000008|- rs1_val == 16<br>                                                                                                      |[0x80000b5c]:sha512sig0l t6, t5, t4<br> [0x80000b60]:sw t6, 472(t2)<br>    |
| 146|[0x80002454]<br>0x81000004|- rs1_val == 8<br>                                                                                                       |[0x80000b6c]:sha512sig0l t6, t5, t4<br> [0x80000b70]:sw t6, 476(t2)<br>    |
| 147|[0x80002458]<br>0x81000002|- rs1_val == 4<br>                                                                                                       |[0x80000b7c]:sha512sig0l t6, t5, t4<br> [0x80000b80]:sw t6, 480(t2)<br>    |
| 148|[0x8000245c]<br>0x81000001|- rs1_val == 2<br>                                                                                                       |[0x80000b8c]:sha512sig0l t6, t5, t4<br> [0x80000b90]:sw t6, 484(t2)<br>    |
| 149|[0x80002460]<br>0xB2CA95F4|- rs1_val == 0x254a9493 and rs2_val == 0xc5521660 #nosat<br>                                                             |[0x80000ba4]:sha512sig0l t6, t5, t4<br> [0x80000ba8]:sw t6, 488(t2)<br>    |
| 150|[0x80002464]<br>0xFFFFFFFF|- rs2_val == 3758096383<br>                                                                                              |[0x80000bb8]:sha512sig0l t6, t5, t4<br> [0x80000bbc]:sw t6, 492(t2)<br>    |
| 151|[0x8000246c]<br>0x7CFFFFFF|- rs2_val == 4294967294<br>                                                                                              |[0x80000bd8]:sha512sig0l t6, t5, t4<br> [0x80000bdc]:sw t6, 500(t2)<br>    |
