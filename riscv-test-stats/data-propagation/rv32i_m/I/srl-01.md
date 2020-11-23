
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000740')]      |
| SIG_REGION                | [('0x80002010', '0x80002180', '92 words')]      |
| COV_LABELS                | srl      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srl-01.S/srl-01.S    |
| Total Number of coverpoints| 211     |
| Total Coverpoints Hit     | 211      |
| Total Signature Updates   | 89      |
| STAT1                     | 86      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000700]:srl a2, a0, a1
      [0x80000704]:sw a2, 276(tp)
 -- Signature Address: 0x80002164 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : srl
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen
      - rs1_val==5




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000710]:srl a2, a0, a1
      [0x80000714]:sw a2, 280(tp)
 -- Signature Address: 0x80002168 Data: 0x00000008
 -- Redundant Coverpoints hit by the op
      - opcode : srl
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 1024




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000730]:srl a2, a0, a1
      [0x80000734]:sw a2, 288(tp)
 -- Signature Address: 0x80002170 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : srl
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 4194304
      - rs2_val == 23






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

|s.no|        signature         |                                                                                                       coverpoints                                                                                                       |                               code                               |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------|
|   1|[0x80002010]<br>0x00000000|- opcode : srl<br> - rs1 : x4<br> - rs2 : x4<br> - rd : x4<br> - rs1 == rs2 == rd<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br>                   |[0x8000010c]:srl tp, tp, tp<br> [0x80000110]:sw tp, 0(t2)<br>     |
|   2|[0x80002014]<br>0x00000010|- rs1 : x14<br> - rs2 : x10<br> - rd : x14<br> - rs1 == rd != rs2<br> - rs1_val == 32<br> - rs2_val == 1<br>                                                                                                             |[0x8000011c]:srl a4, a4, a0<br> [0x80000120]:sw a4, 4(t2)<br>     |
|   3|[0x80002018]<br>0xFFFF4AFC|- rs1 : x15<br> - rs2 : x23<br> - rd : x23<br> - rs2 == rd != rs1<br> - rs1_val < 0 and rs2_val == 0<br> - rs1_val==-46340<br>                                                                                           |[0x80000130]:srl s7, a5, s7<br> [0x80000134]:sw s7, 8(t2)<br>     |
|   4|[0x8000201c]<br>0x0000B503|- rs1 : x5<br> - rs2 : x8<br> - rd : x2<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val==46339<br>                                                                        |[0x80000144]:srl sp, t0, fp<br> [0x80000148]:sw sp, 12(t2)<br>    |
|   5|[0x80002020]<br>0x00000000|- rs1 : x20<br> - rs2 : x20<br> - rd : x13<br> - rs1 == rs2 != rd<br> - rs1_val==5<br>                                                                                                                                   |[0x80000154]:srl a3, s4, s4<br> [0x80000158]:sw a3, 16(t2)<br>    |
|   6|[0x80002024]<br>0x00000400|- rs1 : x12<br> - rs2 : x28<br> - rd : x25<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -2147483648<br> - rs2_val == 21<br> |[0x80000164]:srl s9, a2, t3<br> [0x80000168]:sw s9, 20(t2)<br>    |
|   7|[0x80002028]<br>0x00000000|- rs1 : x10<br> - rs2 : x3<br> - rd : x18<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val==0<br>                                                                                                    |[0x80000174]:srl s2, a0, gp<br> [0x80000178]:sw s2, 24(t2)<br>    |
|   8|[0x8000202c]<br>0x0000000F|- rs1 : x31<br> - rs2 : x6<br> - rd : x22<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 2147483647<br> - rs2_val == 27<br>                                                       |[0x80000188]:srl s6, t6, t1<br> [0x8000018c]:sw s6, 28(t2)<br>    |
|   9|[0x80002030]<br>0x00000000|- rs1 : x23<br> - rs2 : x18<br> - rd : x12<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br>                                                                                                 |[0x80000198]:srl a2, s7, s2<br> [0x8000019c]:sw a2, 32(t2)<br>    |
|  10|[0x80002034]<br>0x00000000|- rs1 : x24<br> - rs2 : x25<br> - rd : x11<br> - rs1_val == 2<br> - rs1_val==2<br> - rs2_val == 8<br>                                                                                                                    |[0x800001a8]:srl a1, s8, s9<br> [0x800001ac]:sw a1, 36(t2)<br>    |
|  11|[0x80002038]<br>0x00000000|- rs1 : x8<br> - rs2 : x15<br> - rd : x29<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                                                                                        |[0x800001b8]:srl t4, fp, a5<br> [0x800001bc]:sw t4, 40(t2)<br>    |
|  12|[0x8000203c]<br>0x00000000|- rs1 : x18<br> - rs2 : x19<br> - rd : x28<br> - rs1_val == 8<br>                                                                                                                                                        |[0x800001c8]:srl t3, s2, s3<br> [0x800001cc]:sw t3, 44(t2)<br>    |
|  13|[0x80002040]<br>0x00000000|- rs1 : x16<br> - rs2 : x22<br> - rd : x3<br> - rs1_val == 16<br>                                                                                                                                                        |[0x800001d8]:srl gp, a6, s6<br> [0x800001dc]:sw gp, 48(t2)<br>    |
|  14|[0x80002044]<br>0x00000000|- rs1 : x9<br> - rs2 : x27<br> - rd : x8<br> - rs1_val == 64<br>                                                                                                                                                         |[0x800001e8]:srl fp, s1, s11<br> [0x800001ec]:sw fp, 52(t2)<br>   |
|  15|[0x80002048]<br>0x00000000|- rs1 : x1<br> - rs2 : x12<br> - rd : x31<br> - rs1_val == 128<br>                                                                                                                                                       |[0x800001f8]:srl t6, ra, a2<br> [0x800001fc]:sw t6, 56(t2)<br>    |
|  16|[0x8000204c]<br>0x00000000|- rs1 : x26<br> - rs2 : x21<br> - rd : x15<br> - rs1_val == 256<br>                                                                                                                                                      |[0x80000208]:srl a5, s10, s5<br> [0x8000020c]:sw a5, 60(t2)<br>   |
|  17|[0x80002050]<br>0x00000000|- rs1 : x27<br> - rs2 : x5<br> - rd : x1<br> - rs1_val == 512<br>                                                                                                                                                        |[0x80000220]:srl ra, s11, t0<br> [0x80000224]:sw ra, 0(tp)<br>    |
|  18|[0x80002054]<br>0x00000000|- rs1 : x30<br> - rs2 : x13<br> - rd : x0<br> - rs1_val == 1024<br>                                                                                                                                                      |[0x80000230]:srl zero, t5, a3<br> [0x80000234]:sw zero, 4(tp)<br> |
|  19|[0x80002058]<br>0x00000000|- rs1 : x29<br> - rs2 : x11<br> - rd : x9<br> - rs1_val == 2048<br>                                                                                                                                                      |[0x80000244]:srl s1, t4, a1<br> [0x80000248]:sw s1, 8(tp)<br>     |
|  20|[0x8000205c]<br>0x00000100|- rs1 : x11<br> - rs2 : x24<br> - rd : x16<br> - rs1_val == 4096<br> - rs2_val == 4<br>                                                                                                                                  |[0x80000254]:srl a6, a1, s8<br> [0x80000258]:sw a6, 12(tp)<br>    |
|  21|[0x80002060]<br>0x00000020|- rs1 : x13<br> - rs2 : x31<br> - rd : x6<br> - rs1_val == 8192<br>                                                                                                                                                      |[0x80000264]:srl t1, a3, t6<br> [0x80000268]:sw t1, 16(tp)<br>    |
|  22|[0x80002064]<br>0x00002000|- rs1 : x17<br> - rs2 : x30<br> - rd : x20<br> - rs1_val == 16384<br>                                                                                                                                                    |[0x80000274]:srl s4, a7, t5<br> [0x80000278]:sw s4, 20(tp)<br>    |
|  23|[0x80002068]<br>0x00004000|- rs1 : x2<br> - rs2 : x7<br> - rd : x21<br> - rs1_val == 32768<br>                                                                                                                                                      |[0x80000284]:srl s5, sp, t2<br> [0x80000288]:sw s5, 24(tp)<br>    |
|  24|[0x8000206c]<br>0x00000000|- rs1 : x21<br> - rs2 : x14<br> - rd : x19<br> - rs1_val == 65536<br>                                                                                                                                                    |[0x80000294]:srl s3, s5, a4<br> [0x80000298]:sw s3, 28(tp)<br>    |
|  25|[0x80002070]<br>0x00000000|- rs1 : x25<br> - rs2 : x9<br> - rd : x17<br> - rs1_val == 131072<br>                                                                                                                                                    |[0x800002a4]:srl a7, s9, s1<br> [0x800002a8]:sw a7, 32(tp)<br>    |
|  26|[0x80002074]<br>0x00000000|- rs1 : x0<br> - rs2 : x2<br> - rd : x30<br>                                                                                                                                                                             |[0x800002b8]:srl t5, zero, sp<br> [0x800002bc]:sw t5, 36(tp)<br>  |
|  27|[0x80002078]<br>0x00001000|- rs1 : x28<br> - rs2 : x26<br> - rd : x27<br> - rs1_val == 524288<br>                                                                                                                                                   |[0x800002c8]:srl s11, t3, s10<br> [0x800002cc]:sw s11, 40(tp)<br> |
|  28|[0x8000207c]<br>0x00000002|- rs1 : x6<br> - rs2 : x16<br> - rd : x7<br> - rs1_val == 1048576<br>                                                                                                                                                    |[0x800002d8]:srl t2, t1, a6<br> [0x800002dc]:sw t2, 44(tp)<br>    |
|  29|[0x80002080]<br>0x00004000|- rs1 : x3<br> - rs2 : x17<br> - rd : x24<br> - rs1_val == 2097152<br>                                                                                                                                                   |[0x800002e8]:srl s8, gp, a7<br> [0x800002ec]:sw s8, 48(tp)<br>    |
|  30|[0x80002084]<br>0x00400000|- rs1 : x7<br> - rs2 : x0<br> - rd : x5<br> - rs1_val == 4194304<br>                                                                                                                                                     |[0x800002f8]:srl t0, t2, zero<br> [0x800002fc]:sw t0, 52(tp)<br>  |
|  31|[0x80002088]<br>0x00000040|- rs1 : x19<br> - rs2 : x29<br> - rd : x26<br> - rs1_val == 8388608<br>                                                                                                                                                  |[0x80000308]:srl s10, s3, t4<br> [0x8000030c]:sw s10, 56(tp)<br>  |
|  32|[0x8000208c]<br>0x00000008|- rs1 : x22<br> - rs2 : x1<br> - rd : x10<br> - rs1_val == 16777216<br>                                                                                                                                                  |[0x80000318]:srl a0, s6, ra<br> [0x8000031c]:sw a0, 60(tp)<br>    |
|  33|[0x80002090]<br>0x00008000|- rs1_val == 33554432<br> - rs2_val == 10<br>                                                                                                                                                                            |[0x80000328]:srl a2, a0, a1<br> [0x8000032c]:sw a2, 64(tp)<br>    |
|  34|[0x80002094]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                                                                                                |[0x80000338]:srl a2, a0, a1<br> [0x8000033c]:sw a2, 68(tp)<br>    |
|  35|[0x80002098]<br>0x00400000|- rs1_val == 134217728<br>                                                                                                                                                                                               |[0x80000348]:srl a2, a0, a1<br> [0x8000034c]:sw a2, 72(tp)<br>    |
|  36|[0x8000209c]<br>0x00010000|- rs1_val == 268435456<br>                                                                                                                                                                                               |[0x80000358]:srl a2, a0, a1<br> [0x8000035c]:sw a2, 76(tp)<br>    |
|  37|[0x800020a0]<br>0x00080000|- rs1_val == 536870912<br>                                                                                                                                                                                               |[0x80000368]:srl a2, a0, a1<br> [0x8000036c]:sw a2, 80(tp)<br>    |
|  38|[0x800020a4]<br>0x00000001|- rs1_val == 1073741824<br> - rs2_val == 30<br>                                                                                                                                                                          |[0x80000378]:srl a2, a0, a1<br> [0x8000037c]:sw a2, 84(tp)<br>    |
|  39|[0x800020a8]<br>0x0FFFFFFF|- rs1_val == -2<br>                                                                                                                                                                                                      |[0x80000388]:srl a2, a0, a1<br> [0x8000038c]:sw a2, 88(tp)<br>    |
|  40|[0x800020ac]<br>0x1FFFFFFF|- rs1_val == -3<br>                                                                                                                                                                                                      |[0x80000398]:srl a2, a0, a1<br> [0x8000039c]:sw a2, 92(tp)<br>    |
|  41|[0x800020b0]<br>0x0000FFFF|- rs1_val == -5<br> - rs2_val == 16<br>                                                                                                                                                                                  |[0x800003a8]:srl a2, a0, a1<br> [0x800003ac]:sw a2, 96(tp)<br>    |
|  42|[0x800020b4]<br>0x0003FFFF|- rs1_val == -9<br>                                                                                                                                                                                                      |[0x800003b8]:srl a2, a0, a1<br> [0x800003bc]:sw a2, 100(tp)<br>   |
|  43|[0x800020b8]<br>0x1FFFFFFD|- rs1_val == -17<br>                                                                                                                                                                                                     |[0x800003c8]:srl a2, a0, a1<br> [0x800003cc]:sw a2, 104(tp)<br>   |
|  44|[0x800020bc]<br>0x0FFFFFFD|- rs1_val == -33<br>                                                                                                                                                                                                     |[0x800003d8]:srl a2, a0, a1<br> [0x800003dc]:sw a2, 108(tp)<br>   |
|  45|[0x800020c0]<br>0x0FFFFFFB|- rs1_val == -65<br>                                                                                                                                                                                                     |[0x800003e8]:srl a2, a0, a1<br> [0x800003ec]:sw a2, 112(tp)<br>   |
|  46|[0x800020c4]<br>0x0000FFFF|- rs1_val == -129<br>                                                                                                                                                                                                    |[0x800003f8]:srl a2, a0, a1<br> [0x800003fc]:sw a2, 116(tp)<br>   |
|  47|[0x800020c8]<br>0x1FFFFFDF|- rs1_val == -257<br>                                                                                                                                                                                                    |[0x80000408]:srl a2, a0, a1<br> [0x8000040c]:sw a2, 120(tp)<br>   |
|  48|[0x800020cc]<br>0x0000FFFF|- rs1_val == -513<br>                                                                                                                                                                                                    |[0x80000418]:srl a2, a0, a1<br> [0x8000041c]:sw a2, 124(tp)<br>   |
|  49|[0x800020d0]<br>0x00003FFF|- rs1_val == -1025<br>                                                                                                                                                                                                   |[0x80000428]:srl a2, a0, a1<br> [0x8000042c]:sw a2, 128(tp)<br>   |
|  50|[0x800020d4]<br>0x0000FFFF|- rs1_val == -2049<br>                                                                                                                                                                                                   |[0x8000043c]:srl a2, a0, a1<br> [0x80000440]:sw a2, 132(tp)<br>   |
|  51|[0x800020d8]<br>0x000001FF|- rs1_val == -4097<br> - rs2_val == 23<br>                                                                                                                                                                               |[0x80000450]:srl a2, a0, a1<br> [0x80000454]:sw a2, 136(tp)<br>   |
|  52|[0x800020dc]<br>0xFFFFDFFF|- rs1_val == -8193<br>                                                                                                                                                                                                   |[0x80000464]:srl a2, a0, a1<br> [0x80000468]:sw a2, 140(tp)<br>   |
|  53|[0x800020e0]<br>0x01FFFF7F|- rs1_val == -16385<br>                                                                                                                                                                                                  |[0x80000478]:srl a2, a0, a1<br> [0x8000047c]:sw a2, 144(tp)<br>   |
|  54|[0x800020e4]<br>0x00000001|- rs1_val == -32769<br>                                                                                                                                                                                                  |[0x8000048c]:srl a2, a0, a1<br> [0x80000490]:sw a2, 148(tp)<br>   |
|  55|[0x800020e8]<br>0xFFFEFFFF|- rs1_val == -65537<br>                                                                                                                                                                                                  |[0x800004a0]:srl a2, a0, a1<br> [0x800004a4]:sw a2, 152(tp)<br>   |
|  56|[0x800020ec]<br>0x00007FFE|- rs1_val == -131073<br>                                                                                                                                                                                                 |[0x800004b4]:srl a2, a0, a1<br> [0x800004b8]:sw a2, 156(tp)<br>   |
|  57|[0x800020f0]<br>0x003FFEFF|- rs1_val == -262145<br>                                                                                                                                                                                                 |[0x800004c8]:srl a2, a0, a1<br> [0x800004cc]:sw a2, 160(tp)<br>   |
|  58|[0x800020f4]<br>0x00000007|- rs1_val == -524289<br> - rs2_val == 29<br>                                                                                                                                                                             |[0x800004dc]:srl a2, a0, a1<br> [0x800004e0]:sw a2, 164(tp)<br>   |
|  59|[0x800020f8]<br>0x07FBFFFF|- rs1_val == -8388609<br>                                                                                                                                                                                                |[0x800004f0]:srl a2, a0, a1<br> [0x800004f4]:sw a2, 168(tp)<br>   |
|  60|[0x800020fc]<br>0x03FBFFFF|- rs1_val == -16777217<br>                                                                                                                                                                                               |[0x80000504]:srl a2, a0, a1<br> [0x80000508]:sw a2, 172(tp)<br>   |
|  61|[0x80002100]<br>0x3F7FFFFF|- rs1_val == -33554433<br> - rs2_val == 2<br>                                                                                                                                                                            |[0x80000518]:srl a2, a0, a1<br> [0x8000051c]:sw a2, 176(tp)<br>   |
|  62|[0x80002104]<br>0x0003EFFF|- rs1_val == -67108865<br>                                                                                                                                                                                               |[0x8000052c]:srl a2, a0, a1<br> [0x80000530]:sw a2, 180(tp)<br>   |
|  63|[0x80002108]<br>0x003DFFFF|- rs1_val == -134217729<br>                                                                                                                                                                                              |[0x80000540]:srl a2, a0, a1<br> [0x80000544]:sw a2, 184(tp)<br>   |
|  64|[0x8000210c]<br>0x00001DFF|- rs1_val == -268435457<br>                                                                                                                                                                                              |[0x80000554]:srl a2, a0, a1<br> [0x80000558]:sw a2, 188(tp)<br>   |
|  65|[0x80002110]<br>0x0001BFFF|- rs1_val == -536870913<br> - rs2_val == 15<br>                                                                                                                                                                          |[0x80000568]:srl a2, a0, a1<br> [0x8000056c]:sw a2, 192(tp)<br>   |
|  66|[0x80002114]<br>0x0005FFFF|- rs1_val == -1073741825<br>                                                                                                                                                                                             |[0x8000057c]:srl a2, a0, a1<br> [0x80000580]:sw a2, 196(tp)<br>   |
|  67|[0x80002118]<br>0x0000AAAA|- rs1_val == 1431655765<br> - rs1_val==1431655765<br>                                                                                                                                                                    |[0x80000590]:srl a2, a0, a1<br> [0x80000594]:sw a2, 200(tp)<br>   |
|  68|[0x8000211c]<br>0x55555555|- rs1_val == -1431655766<br> - rs1_val==-1431655766<br>                                                                                                                                                                  |[0x800005a4]:srl a2, a0, a1<br> [0x800005a8]:sw a2, 204(tp)<br>   |
|  69|[0x80002120]<br>0x00000000|- rs1_val==3<br>                                                                                                                                                                                                         |[0x800005b4]:srl a2, a0, a1<br> [0x800005b8]:sw a2, 208(tp)<br>   |
|  70|[0x80002124]<br>0x00000000|- rs1_val==46341<br>                                                                                                                                                                                                     |[0x800005c8]:srl a2, a0, a1<br> [0x800005cc]:sw a2, 212(tp)<br>   |
|  71|[0x80002128]<br>0x00001999|- rs1_val==858993459<br>                                                                                                                                                                                                 |[0x800005dc]:srl a2, a0, a1<br> [0x800005e0]:sw a2, 216(tp)<br>   |
|  72|[0x8000212c]<br>0x000CCCCC|- rs1_val==1717986918<br>                                                                                                                                                                                                |[0x800005f0]:srl a2, a0, a1<br> [0x800005f4]:sw a2, 220(tp)<br>   |
|  73|[0x80002130]<br>0x00000000|- rs1_val==46340<br>                                                                                                                                                                                                     |[0x80000604]:srl a2, a0, a1<br> [0x80000608]:sw a2, 224(tp)<br>   |
|  74|[0x80002134]<br>0x0003FEFF|- rs1_val == -4194305<br>                                                                                                                                                                                                |[0x80000618]:srl a2, a0, a1<br> [0x8000061c]:sw a2, 228(tp)<br>   |
|  75|[0x80002138]<br>0x00000000|- rs1_val==1431655764<br>                                                                                                                                                                                                |[0x8000062c]:srl a2, a0, a1<br> [0x80000630]:sw a2, 232(tp)<br>   |
|  76|[0x8000213c]<br>0x000001FF|- rs1_val == -1048577<br>                                                                                                                                                                                                |[0x80000640]:srl a2, a0, a1<br> [0x80000644]:sw a2, 236(tp)<br>   |
|  77|[0x80002140]<br>0x06666666|- rs1_val==858993458<br>                                                                                                                                                                                                 |[0x80000654]:srl a2, a0, a1<br> [0x80000658]:sw a2, 240(tp)<br>   |
|  78|[0x80002144]<br>0x06666666|- rs1_val==1717986917<br>                                                                                                                                                                                                |[0x80000668]:srl a2, a0, a1<br> [0x8000066c]:sw a2, 244(tp)<br>   |
|  79|[0x80002148]<br>0x06666666|- rs1_val==1717986919<br>                                                                                                                                                                                                |[0x8000067c]:srl a2, a0, a1<br> [0x80000680]:sw a2, 248(tp)<br>   |
|  80|[0x8000214c]<br>0x00000000|- rs1_val==1431655766<br>                                                                                                                                                                                                |[0x80000690]:srl a2, a0, a1<br> [0x80000694]:sw a2, 252(tp)<br>   |
|  81|[0x80002150]<br>0x00000000|- rs1_val==6<br>                                                                                                                                                                                                         |[0x800006a0]:srl a2, a0, a1<br> [0x800006a4]:sw a2, 256(tp)<br>   |
|  82|[0x80002154]<br>0x00003333|- rs1_val==858993460<br>                                                                                                                                                                                                 |[0x800006b4]:srl a2, a0, a1<br> [0x800006b8]:sw a2, 260(tp)<br>   |
|  83|[0x80002158]<br>0x0000001F|- rs1_val == -2097153<br>                                                                                                                                                                                                |[0x800006c8]:srl a2, a0, a1<br> [0x800006cc]:sw a2, 264(tp)<br>   |
|  84|[0x8000215c]<br>0x00000001|- rs1_val==-46339<br>                                                                                                                                                                                                    |[0x800006dc]:srl a2, a0, a1<br> [0x800006e0]:sw a2, 268(tp)<br>   |
|  85|[0x80002160]<br>0x00000001|- rs1_val==-1431655765<br>                                                                                                                                                                                               |[0x800006f0]:srl a2, a0, a1<br> [0x800006f4]:sw a2, 272(tp)<br>   |
|  86|[0x8000216c]<br>0x00008000|- rs1_val == 262144<br>                                                                                                                                                                                                  |[0x80000720]:srl a2, a0, a1<br> [0x80000724]:sw a2, 284(tp)<br>   |
