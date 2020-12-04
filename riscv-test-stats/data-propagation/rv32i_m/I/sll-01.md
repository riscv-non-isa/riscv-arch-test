
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000750')]      |
| SIG_REGION                | [('0x80002010', '0x80002180', '92 words')]      |
| COV_LABELS                | sll      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sll-01.S/sll-01.S    |
| Total Number of coverpoints| 211     |
| Total Coverpoints Hit     | 211      |
| Total Signature Updates   | 90      |
| STAT1                     | 87      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000710]:sll a2, a0, a1
      [0x80000714]:sw a2, 272(ra)
 -- Signature Address: 0x80002168 Data: 0x00000008
 -- Redundant Coverpoints hit by the op
      - opcode : sll
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 2
      - rs1_val==2
      - rs2_val == 2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000730]:sll a2, a0, a1
      [0x80000734]:sw a2, 280(ra)
 -- Signature Address: 0x80002170 Data: 0x00020000
 -- Redundant Coverpoints hit by the op
      - opcode : sll
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 32768
      - rs2_val == 2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000740]:sll a2, a0, a1
      [0x80000744]:sw a2, 284(ra)
 -- Signature Address: 0x80002174 Data: 0x00100000
 -- Redundant Coverpoints hit by the op
      - opcode : sll
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == 524288
      - rs2_val == 1






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

|s.no|        signature         |                                                                                                        coverpoints                                                                                                         |                               code                                |
|---:|--------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80002010]<br>0x55555500|- opcode : sll<br> - rs1 : x9<br> - rs2 : x28<br> - rd : x19<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == -1431655766<br> - rs1_val==-1431655766<br> |[0x8000010c]:sll s3, s1, t3<br> [0x80000110]:sw s3, 0(t0)<br>      |
|   2|[0x80002014]<br>0xA8200000|- rs1 : x10<br> - rs2 : x31<br> - rd : x31<br> - rs2 == rd != rs1<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val==46340<br>                                                                             |[0x80000120]:sll t6, a0, t6<br> [0x80000124]:sw t6, 4(t0)<br>      |
|   3|[0x80002018]<br>0xAAAAAAAB|- rs1 : x26<br> - rs2 : x16<br> - rd : x26<br> - rs1 == rd != rs2<br> - rs1_val < 0 and rs2_val == 0<br> - rs1_val==-1431655765<br>                                                                                         |[0x80000134]:sll s10, s10, a6<br> [0x80000138]:sw s10, 8(t0)<br>   |
|   4|[0x8000201c]<br>0x00000000|- rs1 : x18<br> - rs2 : x18<br> - rd : x18<br> - rs1 == rs2 == rd<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val==0<br>                                                                               |[0x80000148]:sll s2, s2, s2<br> [0x8000014c]:sw s2, 12(t0)<br>     |
|   5|[0x80002020]<br>0x00000008|- rs1 : x30<br> - rs2 : x30<br> - rd : x16<br> - rs1 == rs2 != rd<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == 2<br> - rs1_val==2<br> - rs2_val == 2<br>                                    |[0x80000158]:sll a6, t5, t5<br> [0x8000015c]:sw a6, 16(t0)<br>     |
|   6|[0x80002024]<br>0x00000000|- rs1 : x27<br> - rs2 : x12<br> - rd : x3<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -2147483648<br> - rs2_val == 15<br>                                                          |[0x80000168]:sll gp, s11, a2<br> [0x8000016c]:sw gp, 20(t0)<br>    |
|   7|[0x80002028]<br>0x00000000|- rs1 : x6<br> - rs2 : x1<br> - rd : x7<br>                                                                                                                                                                                 |[0x80000178]:sll t2, t1, ra<br> [0x8000017c]:sw t2, 24(t0)<br>     |
|   8|[0x8000202c]<br>0xFFFFF800|- rs1 : x31<br> - rs2 : x27<br> - rd : x20<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 2147483647<br>                                                                             |[0x8000018c]:sll s4, t6, s11<br> [0x80000190]:sw s4, 28(t0)<br>    |
|   9|[0x80002030]<br>0x00020000|- rs1 : x24<br> - rs2 : x4<br> - rd : x2<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br>                                                                                                      |[0x8000019c]:sll sp, s8, tp<br> [0x800001a0]:sw sp, 32(t0)<br>     |
|  10|[0x80002034]<br>0x02000000|- rs1 : x25<br> - rs2 : x2<br> - rd : x9<br> - rs1_val == 4<br> - rs1_val==4<br> - rs2_val == 23<br>                                                                                                                        |[0x800001ac]:sll s1, s9, sp<br> [0x800001b0]:sw s1, 36(t0)<br>     |
|  11|[0x80002038]<br>0x00100000|- rs1 : x29<br> - rs2 : x21<br> - rd : x10<br> - rs1_val == 8<br>                                                                                                                                                           |[0x800001bc]:sll a0, t4, s5<br> [0x800001c0]:sw a0, 40(t0)<br>     |
|  12|[0x8000203c]<br>0x00400000|- rs1 : x28<br> - rs2 : x7<br> - rd : x17<br> - rs1_val == 16<br>                                                                                                                                                           |[0x800001cc]:sll a7, t3, t2<br> [0x800001d0]:sw a7, 44(t0)<br>     |
|  13|[0x80002040]<br>0x00000000|- rs1 : x19<br> - rs2 : x15<br> - rd : x22<br> - rs1_val == 32<br> - rs2_val == 27<br>                                                                                                                                      |[0x800001dc]:sll s6, s3, a5<br> [0x800001e0]:sw s6, 48(t0)<br>     |
|  14|[0x80002044]<br>0x00000000|- rs1 : x1<br> - rs2 : x3<br> - rd : x14<br> - rs1_val == 64<br> - rs2_val == 29<br>                                                                                                                                        |[0x800001ec]:sll a4, ra, gp<br> [0x800001f0]:sw a4, 52(t0)<br>     |
|  15|[0x80002048]<br>0x00010000|- rs1 : x2<br> - rs2 : x9<br> - rd : x1<br> - rs1_val == 128<br>                                                                                                                                                            |[0x800001fc]:sll ra, sp, s1<br> [0x80000200]:sw ra, 56(t0)<br>     |
|  16|[0x8000204c]<br>0x00000000|- rs1 : x0<br> - rs2 : x17<br> - rd : x30<br>                                                                                                                                                                               |[0x8000020c]:sll t5, zero, a7<br> [0x80000210]:sw t5, 60(t0)<br>   |
|  17|[0x80002050]<br>0x00040000|- rs1 : x21<br> - rs2 : x23<br> - rd : x27<br> - rs1_val == 512<br>                                                                                                                                                         |[0x8000021c]:sll s11, s5, s7<br> [0x80000220]:sw s11, 64(t0)<br>   |
|  18|[0x80002054]<br>0x00010000|- rs1 : x3<br> - rs2 : x14<br> - rd : x8<br> - rs1_val == 1024<br>                                                                                                                                                          |[0x8000022c]:sll fp, gp, a4<br> [0x80000230]:sw fp, 68(t0)<br>     |
|  19|[0x80002058]<br>0x10000000|- rs1 : x23<br> - rs2 : x11<br> - rd : x15<br> - rs1_val == 2048<br>                                                                                                                                                        |[0x80000248]:sll a5, s7, a1<br> [0x8000024c]:sw a5, 0(ra)<br>      |
|  20|[0x8000205c]<br>0x20000000|- rs1 : x12<br> - rs2 : x6<br> - rd : x29<br> - rs1_val == 4096<br>                                                                                                                                                         |[0x80000258]:sll t4, a2, t1<br> [0x8000025c]:sw t4, 4(ra)<br>      |
|  21|[0x80002060]<br>0x08000000|- rs1 : x17<br> - rs2 : x19<br> - rd : x4<br> - rs1_val == 8192<br>                                                                                                                                                         |[0x80000268]:sll tp, a7, s3<br> [0x8000026c]:sw tp, 8(ra)<br>      |
|  22|[0x80002064]<br>0x00000000|- rs1 : x16<br> - rs2 : x26<br> - rd : x25<br> - rs1_val == 16384<br>                                                                                                                                                       |[0x80000278]:sll s9, a6, s10<br> [0x8000027c]:sw s9, 12(ra)<br>    |
|  23|[0x80002068]<br>0x00000000|- rs1 : x14<br> - rs2 : x5<br> - rd : x0<br> - rs1_val == 32768<br>                                                                                                                                                         |[0x80000288]:sll zero, a4, t0<br> [0x8000028c]:sw zero, 16(ra)<br> |
|  24|[0x8000206c]<br>0x00080000|- rs1 : x22<br> - rs2 : x20<br> - rd : x24<br> - rs1_val == 65536<br>                                                                                                                                                       |[0x80000298]:sll s8, s6, s4<br> [0x8000029c]:sw s8, 20(ra)<br>     |
|  25|[0x80002070]<br>0x00000000|- rs1 : x11<br> - rs2 : x24<br> - rd : x6<br> - rs1_val == 131072<br>                                                                                                                                                       |[0x800002a8]:sll t1, a1, s8<br> [0x800002ac]:sw t1, 24(ra)<br>     |
|  26|[0x80002074]<br>0x20000000|- rs1 : x7<br> - rs2 : x13<br> - rd : x11<br> - rs1_val == 262144<br>                                                                                                                                                       |[0x800002b8]:sll a1, t2, a3<br> [0x800002bc]:sw a1, 28(ra)<br>     |
|  27|[0x80002078]<br>0x00080000|- rs1 : x15<br> - rs2 : x0<br> - rd : x23<br> - rs1_val > 0 and rs2_val == 0<br> - rs1_val == 524288<br>                                                                                                                    |[0x800002c8]:sll s7, a5, zero<br> [0x800002cc]:sw s7, 32(ra)<br>   |
|  28|[0x8000207c]<br>0x80000000|- rs1 : x13<br> - rs2 : x22<br> - rd : x5<br> - rs1_val == 1048576<br>                                                                                                                                                      |[0x800002d8]:sll t0, a3, s6<br> [0x800002dc]:sw t0, 36(ra)<br>     |
|  29|[0x80002080]<br>0x00000000|- rs1 : x5<br> - rs2 : x29<br> - rd : x21<br> - rs1_val == 2097152<br>                                                                                                                                                      |[0x800002e8]:sll s5, t0, t4<br> [0x800002ec]:sw s5, 40(ra)<br>     |
|  30|[0x80002084]<br>0x00000000|- rs1 : x4<br> - rs2 : x25<br> - rd : x13<br> - rs1_val == 4194304<br>                                                                                                                                                      |[0x800002f8]:sll a3, tp, s9<br> [0x800002fc]:sw a3, 44(ra)<br>     |
|  31|[0x80002088]<br>0x00000000|- rs1 : x20<br> - rs2 : x8<br> - rd : x28<br> - rs1_val == 8388608<br>                                                                                                                                                      |[0x80000308]:sll t3, s4, fp<br> [0x8000030c]:sw t3, 48(ra)<br>     |
|  32|[0x8000208c]<br>0x08000000|- rs1 : x8<br> - rs2 : x10<br> - rd : x12<br> - rs1_val == 16777216<br>                                                                                                                                                     |[0x80000318]:sll a2, fp, a0<br> [0x8000031c]:sw a2, 52(ra)<br>     |
|  33|[0x80002090]<br>0x10000000|- rs1_val == 33554432<br>                                                                                                                                                                                                   |[0x80000328]:sll a2, a0, a1<br> [0x8000032c]:sw a2, 56(ra)<br>     |
|  34|[0x80002094]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                                                                                                   |[0x80000338]:sll a2, a0, a1<br> [0x8000033c]:sw a2, 60(ra)<br>     |
|  35|[0x80002098]<br>0x10000000|- rs1_val == 134217728<br> - rs2_val == 1<br>                                                                                                                                                                               |[0x80000348]:sll a2, a0, a1<br> [0x8000034c]:sw a2, 64(ra)<br>     |
|  36|[0x8000209c]<br>0x00000000|- rs1_val == 268435456<br>                                                                                                                                                                                                  |[0x80000358]:sll a2, a0, a1<br> [0x8000035c]:sw a2, 68(ra)<br>     |
|  37|[0x800020a0]<br>0x00000000|- rs1_val == 536870912<br>                                                                                                                                                                                                  |[0x80000368]:sll a2, a0, a1<br> [0x8000036c]:sw a2, 72(ra)<br>     |
|  38|[0x800020a4]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                                                                                                 |[0x80000378]:sll a2, a0, a1<br> [0x8000037c]:sw a2, 76(ra)<br>     |
|  39|[0x800020a8]<br>0xFFF80000|- rs1_val == -2<br>                                                                                                                                                                                                         |[0x80000388]:sll a2, a0, a1<br> [0x8000038c]:sw a2, 80(ra)<br>     |
|  40|[0x800020ac]<br>0x80000000|- rs1_val == -3<br>                                                                                                                                                                                                         |[0x80000398]:sll a2, a0, a1<br> [0x8000039c]:sw a2, 84(ra)<br>     |
|  41|[0x800020b0]<br>0xC0000000|- rs1_val == -5<br> - rs2_val == 30<br>                                                                                                                                                                                     |[0x800003a8]:sll a2, a0, a1<br> [0x800003ac]:sw a2, 88(ra)<br>     |
|  42|[0x800020b4]<br>0xFB800000|- rs1_val == -9<br>                                                                                                                                                                                                         |[0x800003b8]:sll a2, a0, a1<br> [0x800003bc]:sw a2, 92(ra)<br>     |
|  43|[0x800020b8]<br>0xFFFF7800|- rs1_val == -17<br>                                                                                                                                                                                                        |[0x800003c8]:sll a2, a0, a1<br> [0x800003cc]:sw a2, 96(ra)<br>     |
|  44|[0x800020bc]<br>0xFFFFBE00|- rs1_val == -33<br>                                                                                                                                                                                                        |[0x800003d8]:sll a2, a0, a1<br> [0x800003dc]:sw a2, 100(ra)<br>    |
|  45|[0x800020c0]<br>0xFFFFF7E0|- rs1_val == -65<br>                                                                                                                                                                                                        |[0x800003e8]:sll a2, a0, a1<br> [0x800003ec]:sw a2, 104(ra)<br>    |
|  46|[0x800020c4]<br>0xFFFDFC00|- rs1_val == -129<br> - rs2_val == 10<br>                                                                                                                                                                                   |[0x800003f8]:sll a2, a0, a1<br> [0x800003fc]:sw a2, 108(ra)<br>    |
|  47|[0x800020c8]<br>0xFEFF0000|- rs1_val == -257<br> - rs2_val == 16<br>                                                                                                                                                                                   |[0x80000408]:sll a2, a0, a1<br> [0x8000040c]:sw a2, 112(ra)<br>    |
|  48|[0x800020cc]<br>0xFEFF8000|- rs1_val == -513<br>                                                                                                                                                                                                       |[0x80000418]:sll a2, a0, a1<br> [0x8000041c]:sw a2, 116(ra)<br>    |
|  49|[0x800020d0]<br>0xC0000000|- rs1_val == -1025<br>                                                                                                                                                                                                      |[0x80000428]:sll a2, a0, a1<br> [0x8000042c]:sw a2, 120(ra)<br>    |
|  50|[0x800020d4]<br>0xFF7FF000|- rs1_val == -2049<br>                                                                                                                                                                                                      |[0x8000043c]:sll a2, a0, a1<br> [0x80000440]:sw a2, 124(ra)<br>    |
|  51|[0x800020d8]<br>0xBFFC0000|- rs1_val == -4097<br>                                                                                                                                                                                                      |[0x80000450]:sll a2, a0, a1<br> [0x80000454]:sw a2, 128(ra)<br>    |
|  52|[0x800020dc]<br>0xFFDFFF00|- rs1_val == -8193<br> - rs2_val == 8<br>                                                                                                                                                                                   |[0x80000464]:sll a2, a0, a1<br> [0x80000468]:sw a2, 132(ra)<br>    |
|  53|[0x800020e0]<br>0xFBFFF000|- rs1_val == -16385<br>                                                                                                                                                                                                     |[0x80000478]:sll a2, a0, a1<br> [0x8000047c]:sw a2, 136(ra)<br>    |
|  54|[0x800020e4]<br>0xFF800000|- rs1_val == -32769<br>                                                                                                                                                                                                     |[0x8000048c]:sll a2, a0, a1<br> [0x80000490]:sw a2, 140(ra)<br>    |
|  55|[0x800020e8]<br>0xFFFEFFFF|- rs1_val == -65537<br>                                                                                                                                                                                                     |[0x800004a0]:sll a2, a0, a1<br> [0x800004a4]:sw a2, 144(ra)<br>    |
|  56|[0x800020ec]<br>0xFFFF0000|- rs1_val == -131073<br>                                                                                                                                                                                                    |[0x800004b4]:sll a2, a0, a1<br> [0x800004b8]:sw a2, 148(ra)<br>    |
|  57|[0x800020f0]<br>0xFFFFF000|- rs1_val == -8388609<br>                                                                                                                                                                                                   |[0x800004c8]:sll a2, a0, a1<br> [0x800004cc]:sw a2, 152(ra)<br>    |
|  58|[0x800020f4]<br>0xBFFFFFC0|- rs1_val == -16777217<br>                                                                                                                                                                                                  |[0x800004dc]:sll a2, a0, a1<br> [0x800004e0]:sw a2, 156(ra)<br>    |
|  59|[0x800020f8]<br>0xFFFFF000|- rs1_val == -33554433<br>                                                                                                                                                                                                  |[0x800004f0]:sll a2, a0, a1<br> [0x800004f4]:sw a2, 160(ra)<br>    |
|  60|[0x800020fc]<br>0xFFE00000|- rs1_val == -67108865<br> - rs2_val == 21<br>                                                                                                                                                                              |[0x80000504]:sll a2, a0, a1<br> [0x80000508]:sw a2, 164(ra)<br>    |
|  61|[0x80002100]<br>0xFFFFC000|- rs1_val == -134217729<br>                                                                                                                                                                                                 |[0x80000518]:sll a2, a0, a1<br> [0x8000051c]:sw a2, 168(ra)<br>    |
|  62|[0x80002104]<br>0xFFFFFC00|- rs1_val == -268435457<br>                                                                                                                                                                                                 |[0x8000052c]:sll a2, a0, a1<br> [0x80000530]:sw a2, 172(ra)<br>    |
|  63|[0x80002108]<br>0xFFFFFE00|- rs1_val == -536870913<br>                                                                                                                                                                                                 |[0x80000540]:sll a2, a0, a1<br> [0x80000544]:sw a2, 176(ra)<br>    |
|  64|[0x8000210c]<br>0xFFFFFFE0|- rs1_val == -1073741825<br>                                                                                                                                                                                                |[0x80000554]:sll a2, a0, a1<br> [0x80000558]:sw a2, 180(ra)<br>    |
|  65|[0x80002110]<br>0xAA800000|- rs1_val == 1431655765<br> - rs1_val==1431655765<br>                                                                                                                                                                       |[0x80000568]:sll a2, a0, a1<br> [0x8000056c]:sw a2, 184(ra)<br>    |
|  66|[0x80002114]<br>0x00180000|- rs1_val==3<br>                                                                                                                                                                                                            |[0x80000578]:sll a2, a0, a1<br> [0x8000057c]:sw a2, 188(ra)<br>    |
|  67|[0x80002118]<br>0x00000028|- rs1_val==5<br>                                                                                                                                                                                                            |[0x80000588]:sll a2, a0, a1<br> [0x8000058c]:sw a2, 192(ra)<br>    |
|  68|[0x8000211c]<br>0x33330000|- rs1_val==858993459<br>                                                                                                                                                                                                    |[0x8000059c]:sll a2, a0, a1<br> [0x800005a0]:sw a2, 196(ra)<br>    |
|  69|[0x80002120]<br>0xC0000000|- rs1_val==1717986918<br>                                                                                                                                                                                                   |[0x800005b0]:sll a2, a0, a1<br> [0x800005b4]:sw a2, 200(ra)<br>    |
|  70|[0x80002124]<br>0xD2BF0000|- rs1_val==-46340<br>                                                                                                                                                                                                       |[0x800005c4]:sll a2, a0, a1<br> [0x800005c8]:sw a2, 204(ra)<br>    |
|  71|[0x80002128]<br>0x00B50500|- rs1_val==46341<br>                                                                                                                                                                                                        |[0x800005d8]:sll a2, a0, a1<br> [0x800005dc]:sw a2, 208(ra)<br>    |
|  72|[0x8000212c]<br>0xFFEFFFF0|- rs2_val == 4<br>                                                                                                                                                                                                          |[0x800005ec]:sll a2, a0, a1<br> [0x800005f0]:sw a2, 212(ra)<br>    |
|  73|[0x80002130]<br>0xFFFFC000|- rs1_val == -524289<br>                                                                                                                                                                                                    |[0x80000600]:sll a2, a0, a1<br> [0x80000604]:sw a2, 216(ra)<br>    |
|  74|[0x80002134]<br>0xA0000000|- rs1_val==858993460<br>                                                                                                                                                                                                    |[0x80000614]:sll a2, a0, a1<br> [0x80000618]:sw a2, 220(ra)<br>    |
|  75|[0x80002138]<br>0xFFFFF800|- rs1_val == -4194305<br>                                                                                                                                                                                                   |[0x80000628]:sll a2, a0, a1<br> [0x8000062c]:sw a2, 224(ra)<br>    |
|  76|[0x8000213c]<br>0x66670000|- rs1_val==1717986919<br>                                                                                                                                                                                                   |[0x8000063c]:sll a2, a0, a1<br> [0x80000640]:sw a2, 228(ra)<br>    |
|  77|[0x80002140]<br>0xCCCCCCC8|- rs1_val==858993458<br>                                                                                                                                                                                                    |[0x80000650]:sll a2, a0, a1<br> [0x80000654]:sw a2, 232(ra)<br>    |
|  78|[0x80002144]<br>0x66666650|- rs1_val==1717986917<br>                                                                                                                                                                                                   |[0x80000664]:sll a2, a0, a1<br> [0x80000668]:sw a2, 236(ra)<br>    |
|  79|[0x80002148]<br>0x00B50300|- rs1_val==46339<br>                                                                                                                                                                                                        |[0x80000678]:sll a2, a0, a1<br> [0x8000067c]:sw a2, 240(ra)<br>    |
|  80|[0x8000214c]<br>0xAAAAAAB0|- rs1_val==1431655766<br>                                                                                                                                                                                                   |[0x8000068c]:sll a2, a0, a1<br> [0x80000690]:sw a2, 244(ra)<br>    |
|  81|[0x80002150]<br>0xFFDFFFF8|- rs1_val == -262145<br>                                                                                                                                                                                                    |[0x800006a0]:sll a2, a0, a1<br> [0x800006a4]:sw a2, 248(ra)<br>    |
|  82|[0x80002154]<br>0x00018000|- rs1_val==6<br>                                                                                                                                                                                                            |[0x800006b0]:sll a2, a0, a1<br> [0x800006b4]:sw a2, 252(ra)<br>    |
|  83|[0x80002158]<br>0xFFF80000|- rs1_val == -1048577<br>                                                                                                                                                                                                   |[0x800006c4]:sll a2, a0, a1<br> [0x800006c8]:sw a2, 256(ra)<br>    |
|  84|[0x8000215c]<br>0xF8000000|- rs1_val == -2097153<br>                                                                                                                                                                                                   |[0x800006d8]:sll a2, a0, a1<br> [0x800006dc]:sw a2, 260(ra)<br>    |
|  85|[0x80002160]<br>0x7E800000|- rs1_val==-46339<br>                                                                                                                                                                                                       |[0x800006ec]:sll a2, a0, a1<br> [0x800006f0]:sw a2, 264(ra)<br>    |
|  86|[0x80002164]<br>0x55555554|- rs1_val==1431655764<br>                                                                                                                                                                                                   |[0x80000700]:sll a2, a0, a1<br> [0x80000704]:sw a2, 268(ra)<br>    |
|  87|[0x8000216c]<br>0x00002000|- rs1_val == 256<br>                                                                                                                                                                                                        |[0x80000720]:sll a2, a0, a1<br> [0x80000724]:sw a2, 276(ra)<br>    |
