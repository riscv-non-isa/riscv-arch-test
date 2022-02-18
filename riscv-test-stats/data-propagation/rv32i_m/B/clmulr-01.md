
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000c90')]      |
| SIG_REGION                | [('0x80002210', '0x800024a0', '164 words')]      |
| COV_LABELS                | clmulr      |
| TEST_NAME                 | /home/anku/bmanip/new_trials/trial14/32/riscof_work/clmulr-01.S/ref.S    |
| Total Number of coverpoints| 266     |
| Total Coverpoints Hit     | 260      |
| Total Signature Updates   | 162      |
| STAT1                     | 160      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c70]:clmulr t6, t5, t4
      [0x80000c74]:sw t6, 532(t1)
 -- Signature Address: 0x80002490 Data: 0xAAAAAAAD
 -- Redundant Coverpoints hit by the op
      - opcode : clmulr
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 4294967291




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c80]:clmulr t6, t5, t4
      [0x80000c84]:sw t6, 536(t1)
 -- Signature Address: 0x80002494 Data: 0xAAAAAAA9
 -- Redundant Coverpoints hit by the op
      - opcode : clmulr
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 4294967293






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

|s.no|        signature         |                                                        coverpoints                                                         |                                 code                                 |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80002210]<br>0x00000000|- opcode : clmulr<br> - rs1 : x30<br> - rs2 : x31<br> - rd : x31<br> - rs2 == rd != rs1<br> - rs1_val==0 and rs2_val==0<br> |[0x80000108]:clmulr t6, t5, t6<br> [0x8000010c]:sw t6, 0(ra)<br>      |
|   2|[0x80002214]<br>0xAAAAAAAA|- rs1 : x29<br> - rs2 : x29<br> - rd : x29<br> - rs1 == rs2 == rd<br>                                                       |[0x80000118]:clmulr t4, t4, t4<br> [0x8000011c]:sw t4, 4(ra)<br>      |
|   3|[0x80002218]<br>0xD5555555|- rs1 : x28<br> - rs2 : x30<br> - rd : x28<br> - rs1 == rd != rs2<br> - rs2_val == 3221225471<br>                           |[0x8000012c]:clmulr t3, t3, t5<br> [0x80000130]:sw t3, 8(ra)<br>      |
|   4|[0x8000221c]<br>0xAAAAAAAA|- rs1 : x27<br> - rs2 : x27<br> - rd : x30<br> - rs1 == rs2 != rd<br>                                                       |[0x8000013c]:clmulr t5, s11, s11<br> [0x80000140]:sw t5, 12(ra)<br>   |
|   5|[0x80002220]<br>0xB5555555|- rs1 : x31<br> - rs2 : x28<br> - rd : x27<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 4026531839<br>    |[0x80000150]:clmulr s11, t6, t3<br> [0x80000154]:sw s11, 16(ra)<br>   |
|   6|[0x80002224]<br>0xA5555555|- rs1 : x25<br> - rs2 : x24<br> - rd : x26<br> - rs2_val == 4160749567<br>                                                  |[0x80000164]:clmulr s10, s9, s8<br> [0x80000168]:sw s10, 20(ra)<br>   |
|   7|[0x80002228]<br>0xAD555555|- rs1 : x24<br> - rs2 : x26<br> - rd : x25<br> - rs2_val == 4227858431<br>                                                  |[0x80000178]:clmulr s9, s8, s10<br> [0x8000017c]:sw s9, 24(ra)<br>    |
|   8|[0x8000222c]<br>0xA9555555|- rs1 : x26<br> - rs2 : x25<br> - rd : x24<br> - rs2_val == 4261412863<br>                                                  |[0x8000018c]:clmulr s8, s10, s9<br> [0x80000190]:sw s8, 28(ra)<br>    |
|   9|[0x80002230]<br>0xAB555555|- rs1 : x22<br> - rs2 : x21<br> - rd : x23<br> - rs2_val == 4278190079<br>                                                  |[0x800001a0]:clmulr s7, s6, s5<br> [0x800001a4]:sw s7, 32(ra)<br>     |
|  10|[0x80002234]<br>0xAA555555|- rs1 : x21<br> - rs2 : x23<br> - rd : x22<br> - rs2_val == 4286578687<br>                                                  |[0x800001b4]:clmulr s6, s5, s7<br> [0x800001b8]:sw s6, 36(ra)<br>     |
|  11|[0x80002238]<br>0xAAD55555|- rs1 : x23<br> - rs2 : x22<br> - rd : x21<br> - rs2_val == 4290772991<br>                                                  |[0x800001c8]:clmulr s5, s7, s6<br> [0x800001cc]:sw s5, 40(ra)<br>     |
|  12|[0x8000223c]<br>0xAA955555|- rs1 : x19<br> - rs2 : x18<br> - rd : x20<br> - rs2_val == 4292870143<br>                                                  |[0x800001dc]:clmulr s4, s3, s2<br> [0x800001e0]:sw s4, 44(ra)<br>     |
|  13|[0x80002240]<br>0xAAB55555|- rs1 : x18<br> - rs2 : x20<br> - rd : x19<br> - rs2_val == 4293918719<br>                                                  |[0x800001f0]:clmulr s3, s2, s4<br> [0x800001f4]:sw s3, 48(ra)<br>     |
|  14|[0x80002244]<br>0xAAA55555|- rs1 : x20<br> - rs2 : x19<br> - rd : x18<br> - rs2_val == 4294443007<br>                                                  |[0x80000204]:clmulr s2, s4, s3<br> [0x80000208]:sw s2, 52(ra)<br>     |
|  15|[0x80002248]<br>0xAAAD5555|- rs1 : x16<br> - rs2 : x15<br> - rd : x17<br> - rs2_val == 4294705151<br>                                                  |[0x80000218]:clmulr a7, a6, a5<br> [0x8000021c]:sw a7, 56(ra)<br>     |
|  16|[0x8000224c]<br>0xAAA95555|- rs1 : x15<br> - rs2 : x17<br> - rd : x16<br> - rs2_val == 4294836223<br>                                                  |[0x8000022c]:clmulr a6, a5, a7<br> [0x80000230]:sw a6, 60(ra)<br>     |
|  17|[0x80002250]<br>0xAAAB5555|- rs1 : x17<br> - rs2 : x16<br> - rd : x15<br> - rs2_val == 4294901759<br>                                                  |[0x80000240]:clmulr a5, a7, a6<br> [0x80000244]:sw a5, 64(ra)<br>     |
|  18|[0x80002254]<br>0xAAAA5555|- rs1 : x13<br> - rs2 : x12<br> - rd : x14<br> - rs2_val == 4294934527<br>                                                  |[0x80000254]:clmulr a4, a3, a2<br> [0x80000258]:sw a4, 68(ra)<br>     |
|  19|[0x80002258]<br>0xAAAAD555|- rs1 : x12<br> - rs2 : x14<br> - rd : x13<br> - rs2_val == 4294950911<br>                                                  |[0x80000268]:clmulr a3, a2, a4<br> [0x8000026c]:sw a3, 72(ra)<br>     |
|  20|[0x8000225c]<br>0xAAAA9555|- rs1 : x14<br> - rs2 : x13<br> - rd : x12<br> - rs2_val == 4294959103<br>                                                  |[0x8000027c]:clmulr a2, a4, a3<br> [0x80000280]:sw a2, 76(ra)<br>     |
|  21|[0x80002260]<br>0xAAAAB555|- rs1 : x10<br> - rs2 : x9<br> - rd : x11<br> - rs2_val == 4294963199<br>                                                   |[0x80000290]:clmulr a1, a0, s1<br> [0x80000294]:sw a1, 80(ra)<br>     |
|  22|[0x80002264]<br>0xAAAAA555|- rs1 : x9<br> - rs2 : x11<br> - rd : x10<br> - rs2_val == 4294965247<br>                                                   |[0x800002a4]:clmulr a0, s1, a1<br> [0x800002a8]:sw a0, 84(ra)<br>     |
|  23|[0x80002268]<br>0xAAAAAD55|- rs1 : x11<br> - rs2 : x10<br> - rd : x9<br> - rs2_val == 4294966271<br>                                                   |[0x800002b4]:clmulr s1, a1, a0<br> [0x800002b8]:sw s1, 88(ra)<br>     |
|  24|[0x8000226c]<br>0xAAAAA955|- rs1 : x7<br> - rs2 : x6<br> - rd : x8<br> - rs2_val == 4294966783<br>                                                     |[0x800002c4]:clmulr fp, t2, t1<br> [0x800002c8]:sw fp, 92(ra)<br>     |
|  25|[0x80002270]<br>0xAAAAAB55|- rs1 : x6<br> - rs2 : x8<br> - rd : x7<br> - rs2_val == 4294967039<br>                                                     |[0x800002d4]:clmulr t2, t1, fp<br> [0x800002d8]:sw t2, 96(ra)<br>     |
|  26|[0x80002274]<br>0xAAAAAA55|- rs1 : x8<br> - rs2 : x7<br> - rd : x6<br> - rs2_val == 4294967167<br>                                                     |[0x800002e4]:clmulr t1, fp, t2<br> [0x800002e8]:sw t1, 100(ra)<br>    |
|  27|[0x80002278]<br>0xAAAAAAD5|- rs1 : x4<br> - rs2 : x3<br> - rd : x5<br> - rs2_val == 4294967231<br>                                                     |[0x800002f4]:clmulr t0, tp, gp<br> [0x800002f8]:sw t0, 104(ra)<br>    |
|  28|[0x8000227c]<br>0xAAAAAA95|- rs1 : x3<br> - rs2 : x5<br> - rd : x4<br> - rs2_val == 4294967263<br>                                                     |[0x8000030c]:clmulr tp, gp, t0<br> [0x80000310]:sw tp, 0(t1)<br>      |
|  29|[0x80002280]<br>0xAAAAAAB5|- rs1 : x5<br> - rs2 : x4<br> - rd : x3<br> - rs2_val == 4294967279<br>                                                     |[0x8000031c]:clmulr gp, t0, tp<br> [0x80000320]:sw gp, 4(t1)<br>      |
|  30|[0x80002284]<br>0x00000000|- rs1 : x1<br> - rs2 : x0<br> - rd : x2<br>                                                                                 |[0x8000032c]:clmulr sp, ra, zero<br> [0x80000330]:sw sp, 8(t1)<br>    |
|  31|[0x80002288]<br>0x00000000|- rs1 : x0<br> - rs2 : x2<br> - rd : x1<br> - rs2_val == 4294967291<br>                                                     |[0x8000033c]:clmulr ra, zero, sp<br> [0x80000340]:sw ra, 12(t1)<br>   |
|  32|[0x8000228c]<br>0x00000000|- rs1 : x2<br> - rs2 : x1<br> - rd : x0<br> - rs2_val == 4294967293<br>                                                     |[0x8000034c]:clmulr zero, sp, ra<br> [0x80000350]:sw zero, 16(t1)<br> |
|  33|[0x80002290]<br>0xAAAAAAAB|- rs2_val == 4294967294<br>                                                                                                 |[0x8000035c]:clmulr t6, t5, t4<br> [0x80000360]:sw t6, 20(t1)<br>     |
|  34|[0x80002294]<br>0x55555555|- rs1_val == 2147483647<br>                                                                                                 |[0x80000370]:clmulr t6, t5, t4<br> [0x80000374]:sw t6, 24(t1)<br>     |
|  35|[0x80002298]<br>0xD5555555|- rs1_val == 3221225471<br>                                                                                                 |[0x80000384]:clmulr t6, t5, t4<br> [0x80000388]:sw t6, 28(t1)<br>     |
|  36|[0x8000229c]<br>0x95555555|- rs1_val == 3758096383<br>                                                                                                 |[0x80000398]:clmulr t6, t5, t4<br> [0x8000039c]:sw t6, 32(t1)<br>     |
|  37|[0x800022a0]<br>0xB5555555|- rs1_val == 4026531839<br>                                                                                                 |[0x800003ac]:clmulr t6, t5, t4<br> [0x800003b0]:sw t6, 36(t1)<br>     |
|  38|[0x800022a4]<br>0xA5555555|- rs1_val == 4160749567<br>                                                                                                 |[0x800003c0]:clmulr t6, t5, t4<br> [0x800003c4]:sw t6, 40(t1)<br>     |
|  39|[0x800022a8]<br>0xAD555555|- rs1_val == 4227858431<br>                                                                                                 |[0x800003d4]:clmulr t6, t5, t4<br> [0x800003d8]:sw t6, 44(t1)<br>     |
|  40|[0x800022ac]<br>0xA9555555|- rs1_val == 4261412863<br>                                                                                                 |[0x800003e8]:clmulr t6, t5, t4<br> [0x800003ec]:sw t6, 48(t1)<br>     |
|  41|[0x800022b0]<br>0xAB555555|- rs1_val == 4278190079<br>                                                                                                 |[0x800003fc]:clmulr t6, t5, t4<br> [0x80000400]:sw t6, 52(t1)<br>     |
|  42|[0x800022b4]<br>0xAA555555|- rs1_val == 4286578687<br>                                                                                                 |[0x80000410]:clmulr t6, t5, t4<br> [0x80000414]:sw t6, 56(t1)<br>     |
|  43|[0x800022b8]<br>0xAAD55555|- rs1_val == 4290772991<br>                                                                                                 |[0x80000424]:clmulr t6, t5, t4<br> [0x80000428]:sw t6, 60(t1)<br>     |
|  44|[0x800022bc]<br>0xAA955555|- rs1_val == 4292870143<br>                                                                                                 |[0x80000438]:clmulr t6, t5, t4<br> [0x8000043c]:sw t6, 64(t1)<br>     |
|  45|[0x800022c0]<br>0xAAB55555|- rs1_val == 4293918719<br>                                                                                                 |[0x8000044c]:clmulr t6, t5, t4<br> [0x80000450]:sw t6, 68(t1)<br>     |
|  46|[0x800022c4]<br>0xAAA55555|- rs1_val == 4294443007<br>                                                                                                 |[0x80000460]:clmulr t6, t5, t4<br> [0x80000464]:sw t6, 72(t1)<br>     |
|  47|[0x800022c8]<br>0xAAAD5555|- rs1_val == 4294705151<br>                                                                                                 |[0x80000474]:clmulr t6, t5, t4<br> [0x80000478]:sw t6, 76(t1)<br>     |
|  48|[0x800022cc]<br>0xAAA95555|- rs1_val == 4294836223<br>                                                                                                 |[0x80000488]:clmulr t6, t5, t4<br> [0x8000048c]:sw t6, 80(t1)<br>     |
|  49|[0x800022d0]<br>0xAAAB5555|- rs1_val == 4294901759<br>                                                                                                 |[0x8000049c]:clmulr t6, t5, t4<br> [0x800004a0]:sw t6, 84(t1)<br>     |
|  50|[0x800022d4]<br>0xAAAA5555|- rs1_val == 4294934527<br>                                                                                                 |[0x800004b0]:clmulr t6, t5, t4<br> [0x800004b4]:sw t6, 88(t1)<br>     |
|  51|[0x800022d8]<br>0xAAAAD555|- rs1_val == 4294950911<br>                                                                                                 |[0x800004c4]:clmulr t6, t5, t4<br> [0x800004c8]:sw t6, 92(t1)<br>     |
|  52|[0x800022dc]<br>0xAAAA9555|- rs1_val == 4294959103<br>                                                                                                 |[0x800004d8]:clmulr t6, t5, t4<br> [0x800004dc]:sw t6, 96(t1)<br>     |
|  53|[0x800022e0]<br>0xAAAAB555|- rs1_val == 4294963199<br>                                                                                                 |[0x800004ec]:clmulr t6, t5, t4<br> [0x800004f0]:sw t6, 100(t1)<br>    |
|  54|[0x800022e4]<br>0xAAAAA555|- rs1_val == 4294965247<br>                                                                                                 |[0x80000500]:clmulr t6, t5, t4<br> [0x80000504]:sw t6, 104(t1)<br>    |
|  55|[0x800022e8]<br>0xAAAAAD55|- rs1_val == 4294966271<br>                                                                                                 |[0x80000510]:clmulr t6, t5, t4<br> [0x80000514]:sw t6, 108(t1)<br>    |
|  56|[0x800022ec]<br>0xAAAAA955|- rs1_val == 4294966783<br>                                                                                                 |[0x80000520]:clmulr t6, t5, t4<br> [0x80000524]:sw t6, 112(t1)<br>    |
|  57|[0x800022f0]<br>0xAAAAAB55|- rs1_val == 4294967039<br>                                                                                                 |[0x80000530]:clmulr t6, t5, t4<br> [0x80000534]:sw t6, 116(t1)<br>    |
|  58|[0x800022f4]<br>0xAAAAAA55|- rs1_val == 4294967167<br>                                                                                                 |[0x80000540]:clmulr t6, t5, t4<br> [0x80000544]:sw t6, 120(t1)<br>    |
|  59|[0x800022f8]<br>0xAAAAAAD5|- rs1_val == 4294967231<br>                                                                                                 |[0x80000550]:clmulr t6, t5, t4<br> [0x80000554]:sw t6, 124(t1)<br>    |
|  60|[0x800022fc]<br>0xAAAAAA95|- rs1_val == 4294967263<br>                                                                                                 |[0x80000560]:clmulr t6, t5, t4<br> [0x80000564]:sw t6, 128(t1)<br>    |
|  61|[0x80002300]<br>0xAAAAAAB5|- rs1_val == 4294967279<br>                                                                                                 |[0x80000570]:clmulr t6, t5, t4<br> [0x80000574]:sw t6, 132(t1)<br>    |
|  62|[0x80002304]<br>0xAAAAAAA5|- rs1_val == 4294967287<br>                                                                                                 |[0x80000580]:clmulr t6, t5, t4<br> [0x80000584]:sw t6, 136(t1)<br>    |
|  63|[0x80002308]<br>0xAAAAAAAD|- rs1_val == 4294967291<br>                                                                                                 |[0x80000590]:clmulr t6, t5, t4<br> [0x80000594]:sw t6, 140(t1)<br>    |
|  64|[0x8000230c]<br>0xAAAAAAA9|- rs1_val == 4294967293<br>                                                                                                 |[0x800005a0]:clmulr t6, t5, t4<br> [0x800005a4]:sw t6, 144(t1)<br>    |
|  65|[0x80002310]<br>0xAAAAAAAB|- rs1_val == 4294967294<br>                                                                                                 |[0x800005b0]:clmulr t6, t5, t4<br> [0x800005b4]:sw t6, 148(t1)<br>    |
|  66|[0x80002314]<br>0xFFFFFFFF|- rs2_val == 2147483648<br>                                                                                                 |[0x800005c0]:clmulr t6, t5, t4<br> [0x800005c4]:sw t6, 152(t1)<br>    |
|  67|[0x80002318]<br>0x7FFFFFFF|- rs2_val == 1073741824<br>                                                                                                 |[0x800005d0]:clmulr t6, t5, t4<br> [0x800005d4]:sw t6, 156(t1)<br>    |
|  68|[0x8000231c]<br>0x3FFFFFFF|- rs2_val == 536870912<br>                                                                                                  |[0x800005e0]:clmulr t6, t5, t4<br> [0x800005e4]:sw t6, 160(t1)<br>    |
|  69|[0x80002320]<br>0x1FFFFFFF|- rs2_val == 268435456<br>                                                                                                  |[0x800005f0]:clmulr t6, t5, t4<br> [0x800005f4]:sw t6, 164(t1)<br>    |
|  70|[0x80002324]<br>0x0FFFFFFF|- rs2_val == 134217728<br>                                                                                                  |[0x80000600]:clmulr t6, t5, t4<br> [0x80000604]:sw t6, 168(t1)<br>    |
|  71|[0x80002328]<br>0x07FFFFFF|- rs2_val == 67108864<br>                                                                                                   |[0x80000610]:clmulr t6, t5, t4<br> [0x80000614]:sw t6, 172(t1)<br>    |
|  72|[0x8000232c]<br>0x03FFFFFF|- rs2_val == 33554432<br>                                                                                                   |[0x80000620]:clmulr t6, t5, t4<br> [0x80000624]:sw t6, 176(t1)<br>    |
|  73|[0x80002330]<br>0x01FFFFFF|- rs2_val == 16777216<br>                                                                                                   |[0x80000630]:clmulr t6, t5, t4<br> [0x80000634]:sw t6, 180(t1)<br>    |
|  74|[0x80002334]<br>0x00FFFFFF|- rs2_val == 8388608<br>                                                                                                    |[0x80000640]:clmulr t6, t5, t4<br> [0x80000644]:sw t6, 184(t1)<br>    |
|  75|[0x80002338]<br>0x007FFFFF|- rs2_val == 4194304<br>                                                                                                    |[0x80000650]:clmulr t6, t5, t4<br> [0x80000654]:sw t6, 188(t1)<br>    |
|  76|[0x8000233c]<br>0x003FFFFF|- rs2_val == 2097152<br>                                                                                                    |[0x80000660]:clmulr t6, t5, t4<br> [0x80000664]:sw t6, 192(t1)<br>    |
|  77|[0x80002340]<br>0x001FFFFF|- rs2_val == 1048576<br>                                                                                                    |[0x80000670]:clmulr t6, t5, t4<br> [0x80000674]:sw t6, 196(t1)<br>    |
|  78|[0x80002344]<br>0x000FFFFF|- rs2_val == 524288<br>                                                                                                     |[0x80000680]:clmulr t6, t5, t4<br> [0x80000684]:sw t6, 200(t1)<br>    |
|  79|[0x80002348]<br>0x0007FFFF|- rs2_val == 262144<br>                                                                                                     |[0x80000690]:clmulr t6, t5, t4<br> [0x80000694]:sw t6, 204(t1)<br>    |
|  80|[0x8000234c]<br>0x0003FFFF|- rs2_val == 131072<br>                                                                                                     |[0x800006a0]:clmulr t6, t5, t4<br> [0x800006a4]:sw t6, 208(t1)<br>    |
|  81|[0x80002350]<br>0x0001FFFF|- rs2_val == 65536<br>                                                                                                      |[0x800006b0]:clmulr t6, t5, t4<br> [0x800006b4]:sw t6, 212(t1)<br>    |
|  82|[0x80002354]<br>0x0000FFFF|- rs2_val == 32768<br>                                                                                                      |[0x800006c0]:clmulr t6, t5, t4<br> [0x800006c4]:sw t6, 216(t1)<br>    |
|  83|[0x80002358]<br>0x00007FFF|- rs2_val == 16384<br>                                                                                                      |[0x800006d0]:clmulr t6, t5, t4<br> [0x800006d4]:sw t6, 220(t1)<br>    |
|  84|[0x8000235c]<br>0x00003FFF|- rs2_val == 8192<br>                                                                                                       |[0x800006e0]:clmulr t6, t5, t4<br> [0x800006e4]:sw t6, 224(t1)<br>    |
|  85|[0x80002360]<br>0x00001FFF|- rs2_val == 4096<br>                                                                                                       |[0x800006f0]:clmulr t6, t5, t4<br> [0x800006f4]:sw t6, 228(t1)<br>    |
|  86|[0x80002364]<br>0x00000FFF|- rs2_val == 2048<br>                                                                                                       |[0x80000704]:clmulr t6, t5, t4<br> [0x80000708]:sw t6, 232(t1)<br>    |
|  87|[0x80002368]<br>0x000007FF|- rs2_val == 1024<br>                                                                                                       |[0x80000714]:clmulr t6, t5, t4<br> [0x80000718]:sw t6, 236(t1)<br>    |
|  88|[0x8000236c]<br>0x000003FF|- rs2_val == 512<br>                                                                                                        |[0x80000724]:clmulr t6, t5, t4<br> [0x80000728]:sw t6, 240(t1)<br>    |
|  89|[0x80002370]<br>0x000001FF|- rs2_val == 256<br>                                                                                                        |[0x80000734]:clmulr t6, t5, t4<br> [0x80000738]:sw t6, 244(t1)<br>    |
|  90|[0x80002374]<br>0x000000FF|- rs2_val == 128<br>                                                                                                        |[0x80000744]:clmulr t6, t5, t4<br> [0x80000748]:sw t6, 248(t1)<br>    |
|  91|[0x80002378]<br>0x0000007F|- rs2_val == 64<br>                                                                                                         |[0x80000754]:clmulr t6, t5, t4<br> [0x80000758]:sw t6, 252(t1)<br>    |
|  92|[0x8000237c]<br>0x0000003F|- rs2_val == 32<br>                                                                                                         |[0x80000764]:clmulr t6, t5, t4<br> [0x80000768]:sw t6, 256(t1)<br>    |
|  93|[0x80002380]<br>0x0000001F|- rs2_val == 16<br>                                                                                                         |[0x80000774]:clmulr t6, t5, t4<br> [0x80000778]:sw t6, 260(t1)<br>    |
|  94|[0x80002384]<br>0x0000000F|- rs2_val == 8<br>                                                                                                          |[0x80000784]:clmulr t6, t5, t4<br> [0x80000788]:sw t6, 264(t1)<br>    |
|  95|[0x80002388]<br>0x00000007|- rs2_val == 4<br>                                                                                                          |[0x80000794]:clmulr t6, t5, t4<br> [0x80000798]:sw t6, 268(t1)<br>    |
|  96|[0x8000238c]<br>0x00000001|- rs1_val == 1<br>                                                                                                          |[0x800007a4]:clmulr t6, t5, t4<br> [0x800007a8]:sw t6, 272(t1)<br>    |
|  97|[0x80002390]<br>0x5F4264CC|- rs1_val == 0x91766f62 and rs2_val == 0x5570084b #nosat<br>                                                                |[0x800007bc]:clmulr t6, t5, t4<br> [0x800007c0]:sw t6, 276(t1)<br>    |
|  98|[0x80002394]<br>0xD06C60FB|- rs1_val == 0xc0fe15dd and rs2_val == 0x9f053821 #nosat<br>                                                                |[0x800007d4]:clmulr t6, t5, t4<br> [0x800007d8]:sw t6, 280(t1)<br>    |
|  99|[0x80002398]<br>0x39A3BFAF|- rs1_val == 0xdc80d916 and rs2_val == 0x2a2a146d #nosat<br>                                                                |[0x800007ec]:clmulr t6, t5, t4<br> [0x800007f0]:sw t6, 284(t1)<br>    |
| 100|[0x8000239c]<br>0x20765D5A|- rs1_val == 0x952acffe and rs2_val == 0x25ae27ee #nosat<br>                                                                |[0x80000804]:clmulr t6, t5, t4<br> [0x80000808]:sw t6, 288(t1)<br>    |
| 101|[0x800023a0]<br>0x5BE3FEE7|- rs1_val == 0x40a5ff52 and rs2_val == 0xb6f9706f #nosat<br>                                                                |[0x8000081c]:clmulr t6, t5, t4<br> [0x80000820]:sw t6, 292(t1)<br>    |
| 102|[0x800023a4]<br>0xDF047FB4|- rs1_val == 0xe3f4fca3 and rs2_val == 0xa6c9253a #nosat<br>                                                                |[0x80000834]:clmulr t6, t5, t4<br> [0x80000838]:sw t6, 296(t1)<br>    |
| 103|[0x800023a8]<br>0xBBAB7885|- rs1_val == 0xc2f1c53e and rs2_val == 0xd05668ae #nosat<br>                                                                |[0x8000084c]:clmulr t6, t5, t4<br> [0x80000850]:sw t6, 300(t1)<br>    |
| 104|[0x800023ac]<br>0x766A39EF|- rs1_val == 0x9722c9a6 and rs2_val == 0x7bcad7c4 #nosat<br>                                                                |[0x80000864]:clmulr t6, t5, t4<br> [0x80000868]:sw t6, 304(t1)<br>    |
| 105|[0x800023b0]<br>0xE4F85D50|- rs1_val == 0xf7f1305a and rs2_val == 0x9bedfe39 #nosat<br>                                                                |[0x8000087c]:clmulr t6, t5, t4<br> [0x80000880]:sw t6, 308(t1)<br>    |
| 106|[0x800023b4]<br>0x8C54E07C|- rs1_val == 0xd75739f8 and rs2_val == 0xe6fff3d9 #nosat<br>                                                                |[0x80000894]:clmulr t6, t5, t4<br> [0x80000898]:sw t6, 312(t1)<br>    |
| 107|[0x800023b8]<br>0x375D57EC|- rs1_val == 0x90efb625 and rs2_val == 0x3150e5fa #nosat<br>                                                                |[0x800008ac]:clmulr t6, t5, t4<br> [0x800008b0]:sw t6, 316(t1)<br>    |
| 108|[0x800023bc]<br>0x08DD3C2A|- rs1_val == 0x1fc493ca and rs2_val == 0x65408c73 #nosat<br>                                                                |[0x800008c4]:clmulr t6, t5, t4<br> [0x800008c8]:sw t6, 320(t1)<br>    |
| 109|[0x800023c0]<br>0xD98DBEDA|- rs1_val == 0x8e2eac2a and rs2_val == 0xd169a3f8 #nosat<br>                                                                |[0x800008dc]:clmulr t6, t5, t4<br> [0x800008e0]:sw t6, 324(t1)<br>    |
| 110|[0x800023c4]<br>0x2544B74C|- rs1_val == 0x35f9377f and rs2_val == 0xf4c30307 #nosat<br>                                                                |[0x800008f4]:clmulr t6, t5, t4<br> [0x800008f8]:sw t6, 328(t1)<br>    |
| 111|[0x800023c8]<br>0x4EC49B75|- rs1_val == 0x58d548aa and rs2_val == 0xa0569d76 #nosat<br>                                                                |[0x8000090c]:clmulr t6, t5, t4<br> [0x80000910]:sw t6, 332(t1)<br>    |
| 112|[0x800023cc]<br>0x12687FDC|- rs1_val == 0x55d98c6e and rs2_val == 0x2daf9ac7 #nosat<br>                                                                |[0x80000924]:clmulr t6, t5, t4<br> [0x80000928]:sw t6, 336(t1)<br>    |
| 113|[0x800023d0]<br>0x5CA7C484|- rs1_val == 0x74b8de87 and rs2_val == 0xf273b44c #nosat<br>                                                                |[0x8000093c]:clmulr t6, t5, t4<br> [0x80000940]:sw t6, 340(t1)<br>    |
| 114|[0x800023d4]<br>0xC05D1D3B|- rs1_val == 0xccce240c and rs2_val == 0x886c3a30 #nosat<br>                                                                |[0x80000954]:clmulr t6, t5, t4<br> [0x80000958]:sw t6, 344(t1)<br>    |
| 115|[0x800023d8]<br>0x87AC2347|- rs1_val == 0xb49c83dc and rs2_val == 0xbb61a9cd #nosat<br>                                                                |[0x8000096c]:clmulr t6, t5, t4<br> [0x80000970]:sw t6, 348(t1)<br>    |
| 116|[0x800023dc]<br>0x36998368|- rs1_val == 0x254a9493 and rs2_val == 0xc5521660 #nosat<br>                                                                |[0x80000984]:clmulr t6, t5, t4<br> [0x80000988]:sw t6, 352(t1)<br>    |
| 117|[0x800023e0]<br>0xCCCCCCCC|- rs2_val == 2863311530<br>                                                                                                 |[0x80000998]:clmulr t6, t5, t4<br> [0x8000099c]:sw t6, 356(t1)<br>    |
| 118|[0x800023e4]<br>0x66666666|- rs2_val == 1431655765<br>                                                                                                 |[0x800009ac]:clmulr t6, t5, t4<br> [0x800009b0]:sw t6, 360(t1)<br>    |
| 119|[0x800023e8]<br>0xCCCCCCCC|- rs1_val == 2863311530<br>                                                                                                 |[0x800009c0]:clmulr t6, t5, t4<br> [0x800009c4]:sw t6, 364(t1)<br>    |
| 120|[0x800023ec]<br>0x66666666|- rs1_val == 1431655765<br>                                                                                                 |[0x800009d4]:clmulr t6, t5, t4<br> [0x800009d8]:sw t6, 368(t1)<br>    |
| 121|[0x800023f0]<br>0x00000000|- rs1_val==0 and rs2_val==0x1000<br>                                                                                        |[0x800009e4]:clmulr t6, t5, t4<br> [0x800009e8]:sw t6, 372(t1)<br>    |
| 122|[0x800023f4]<br>0x00000000|- rs2_val == 1<br> - rs1_val==0 and rs2_val==1<br>                                                                          |[0x800009f4]:clmulr t6, t5, t4<br> [0x800009f8]:sw t6, 376(t1)<br>    |
| 123|[0x800023f8]<br>0x00000000|- rs1_val==1 and rs2_val==0<br>                                                                                             |[0x80000a04]:clmulr t6, t5, t4<br> [0x80000a08]:sw t6, 380(t1)<br>    |
| 124|[0x800023fc]<br>0x00000000|- rs1_val==1 and rs2_val==0x1000<br>                                                                                        |[0x80000a14]:clmulr t6, t5, t4<br> [0x80000a18]:sw t6, 384(t1)<br>    |
| 125|[0x80002400]<br>0x00000000|- rs1_val==1 and rs2_val==1<br>                                                                                             |[0x80000a24]:clmulr t6, t5, t4<br> [0x80000a28]:sw t6, 388(t1)<br>    |
| 126|[0x80002404]<br>0x00000003|- rs2_val == 2<br>                                                                                                          |[0x80000a34]:clmulr t6, t5, t4<br> [0x80000a38]:sw t6, 392(t1)<br>    |
| 127|[0x80002408]<br>0xFFFFFFFF|- rs1_val == 2147483648<br>                                                                                                 |[0x80000a44]:clmulr t6, t5, t4<br> [0x80000a48]:sw t6, 396(t1)<br>    |
| 128|[0x8000240c]<br>0x7FFFFFFF|- rs1_val == 1073741824<br>                                                                                                 |[0x80000a54]:clmulr t6, t5, t4<br> [0x80000a58]:sw t6, 400(t1)<br>    |
| 129|[0x80002410]<br>0x3FFFFFFF|- rs1_val == 536870912<br>                                                                                                  |[0x80000a64]:clmulr t6, t5, t4<br> [0x80000a68]:sw t6, 404(t1)<br>    |
| 130|[0x80002414]<br>0x1FFFFFFF|- rs1_val == 268435456<br>                                                                                                  |[0x80000a74]:clmulr t6, t5, t4<br> [0x80000a78]:sw t6, 408(t1)<br>    |
| 131|[0x80002418]<br>0x0FFFFFFF|- rs1_val == 134217728<br>                                                                                                  |[0x80000a84]:clmulr t6, t5, t4<br> [0x80000a88]:sw t6, 412(t1)<br>    |
| 132|[0x8000241c]<br>0x07FFFFFF|- rs1_val == 67108864<br>                                                                                                   |[0x80000a94]:clmulr t6, t5, t4<br> [0x80000a98]:sw t6, 416(t1)<br>    |
| 133|[0x80002420]<br>0x03FFFFFF|- rs1_val == 33554432<br>                                                                                                   |[0x80000aa4]:clmulr t6, t5, t4<br> [0x80000aa8]:sw t6, 420(t1)<br>    |
| 134|[0x80002424]<br>0x01FFFFFF|- rs1_val == 16777216<br>                                                                                                   |[0x80000ab4]:clmulr t6, t5, t4<br> [0x80000ab8]:sw t6, 424(t1)<br>    |
| 135|[0x80002428]<br>0x00FFFFFF|- rs1_val == 8388608<br>                                                                                                    |[0x80000ac4]:clmulr t6, t5, t4<br> [0x80000ac8]:sw t6, 428(t1)<br>    |
| 136|[0x8000242c]<br>0x007FFFFF|- rs1_val == 4194304<br>                                                                                                    |[0x80000ad4]:clmulr t6, t5, t4<br> [0x80000ad8]:sw t6, 432(t1)<br>    |
| 137|[0x80002430]<br>0x003FFFFF|- rs1_val == 2097152<br>                                                                                                    |[0x80000ae4]:clmulr t6, t5, t4<br> [0x80000ae8]:sw t6, 436(t1)<br>    |
| 138|[0x80002434]<br>0x001FFFFF|- rs1_val == 1048576<br>                                                                                                    |[0x80000af4]:clmulr t6, t5, t4<br> [0x80000af8]:sw t6, 440(t1)<br>    |
| 139|[0x80002438]<br>0x000FFFFF|- rs1_val == 524288<br>                                                                                                     |[0x80000b04]:clmulr t6, t5, t4<br> [0x80000b08]:sw t6, 444(t1)<br>    |
| 140|[0x8000243c]<br>0x0007FFFF|- rs1_val == 262144<br>                                                                                                     |[0x80000b14]:clmulr t6, t5, t4<br> [0x80000b18]:sw t6, 448(t1)<br>    |
| 141|[0x80002440]<br>0x0003FFFF|- rs1_val == 131072<br>                                                                                                     |[0x80000b24]:clmulr t6, t5, t4<br> [0x80000b28]:sw t6, 452(t1)<br>    |
| 142|[0x80002444]<br>0x0001FFFF|- rs1_val == 65536<br>                                                                                                      |[0x80000b34]:clmulr t6, t5, t4<br> [0x80000b38]:sw t6, 456(t1)<br>    |
| 143|[0x80002448]<br>0x0000FFFF|- rs1_val == 32768<br>                                                                                                      |[0x80000b44]:clmulr t6, t5, t4<br> [0x80000b48]:sw t6, 460(t1)<br>    |
| 144|[0x8000244c]<br>0x00007FFF|- rs1_val == 16384<br>                                                                                                      |[0x80000b54]:clmulr t6, t5, t4<br> [0x80000b58]:sw t6, 464(t1)<br>    |
| 145|[0x80002450]<br>0x00003FFF|- rs1_val == 8192<br>                                                                                                       |[0x80000b64]:clmulr t6, t5, t4<br> [0x80000b68]:sw t6, 468(t1)<br>    |
| 146|[0x80002454]<br>0x00001FFF|- rs1_val == 4096<br>                                                                                                       |[0x80000b74]:clmulr t6, t5, t4<br> [0x80000b78]:sw t6, 472(t1)<br>    |
| 147|[0x80002458]<br>0x00000FFF|- rs1_val == 2048<br>                                                                                                       |[0x80000b88]:clmulr t6, t5, t4<br> [0x80000b8c]:sw t6, 476(t1)<br>    |
| 148|[0x8000245c]<br>0x000007FF|- rs1_val == 1024<br>                                                                                                       |[0x80000b98]:clmulr t6, t5, t4<br> [0x80000b9c]:sw t6, 480(t1)<br>    |
| 149|[0x80002460]<br>0x000003FF|- rs1_val == 512<br>                                                                                                        |[0x80000ba8]:clmulr t6, t5, t4<br> [0x80000bac]:sw t6, 484(t1)<br>    |
| 150|[0x80002464]<br>0x000001FF|- rs1_val == 256<br>                                                                                                        |[0x80000bb8]:clmulr t6, t5, t4<br> [0x80000bbc]:sw t6, 488(t1)<br>    |
| 151|[0x80002468]<br>0x000000FF|- rs1_val == 128<br>                                                                                                        |[0x80000bc8]:clmulr t6, t5, t4<br> [0x80000bcc]:sw t6, 492(t1)<br>    |
| 152|[0x8000246c]<br>0x0000007F|- rs1_val == 64<br>                                                                                                         |[0x80000bd8]:clmulr t6, t5, t4<br> [0x80000bdc]:sw t6, 496(t1)<br>    |
| 153|[0x80002470]<br>0x0000003F|- rs1_val == 32<br>                                                                                                         |[0x80000be8]:clmulr t6, t5, t4<br> [0x80000bec]:sw t6, 500(t1)<br>    |
| 154|[0x80002474]<br>0x0000001F|- rs1_val == 16<br>                                                                                                         |[0x80000bf8]:clmulr t6, t5, t4<br> [0x80000bfc]:sw t6, 504(t1)<br>    |
| 155|[0x80002478]<br>0x0000000F|- rs1_val == 8<br>                                                                                                          |[0x80000c08]:clmulr t6, t5, t4<br> [0x80000c0c]:sw t6, 508(t1)<br>    |
| 156|[0x8000247c]<br>0x00000007|- rs1_val == 4<br>                                                                                                          |[0x80000c18]:clmulr t6, t5, t4<br> [0x80000c1c]:sw t6, 512(t1)<br>    |
| 157|[0x80002480]<br>0x00000003|- rs1_val == 2<br>                                                                                                          |[0x80000c28]:clmulr t6, t5, t4<br> [0x80000c2c]:sw t6, 516(t1)<br>    |
| 158|[0x80002484]<br>0x55555555|- rs2_val == 2147483647<br>                                                                                                 |[0x80000c3c]:clmulr t6, t5, t4<br> [0x80000c40]:sw t6, 520(t1)<br>    |
| 159|[0x80002488]<br>0x95555555|- rs2_val == 3758096383<br>                                                                                                 |[0x80000c50]:clmulr t6, t5, t4<br> [0x80000c54]:sw t6, 524(t1)<br>    |
| 160|[0x8000248c]<br>0xAAAAAAA5|- rs2_val == 4294967287<br>                                                                                                 |[0x80000c60]:clmulr t6, t5, t4<br> [0x80000c64]:sw t6, 528(t1)<br>    |
