
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000078', '0x800008c0')]      |
| SIG_REGION                | [('0x80002204', '0x80002320', '71 words')]      |
| COV_LABELS                | sh-align      |
| TEST_NAME                 | /home/bilalsakhawat/riscof_work/src/sh-align-01.S/sh-align-01.S    |
| Total Number of coverpoints| 118     |
| Total Coverpoints Hit     | 113      |
| Total Signature Updates   | 71      |
| STAT1                     | 70      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000608]:sh a1, 3967(a0)
 -- Signature Address: 0x800022bc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : sh
      - rs1 : x10
      - rs2 : x11
      - rs1 != rs2
      - ea_align == 0 and (imm_val % 4) == 3
      - imm_val < 0
      - rs2_val == 0






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

|s.no|        signature         |                                                                   coverpoints                                                                   |               code                |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------|
|   1|[0x80002204]<br>0x00000001|- opcode : sh<br> - rs1 : x6<br> - rs2 : x4<br> - rs1 != rs2<br> - ea_align == 0 and (imm_val % 4) == 0<br> - rs2_val == 1<br> - imm_val > 0<br> |[0x80000090]:sh tp, 4(t1)<br>      |
|   2|[0x80002208]<br>0x7FFFFFFF|- rs1 : x10<br> - rs2 : x5<br> - rs2_val == 2147483647<br> - imm_val == 0<br> - rs2_val == (2**(xlen-1)-1)<br>                                   |[0x800000b0]:sh t0, 0(a0)<br>      |
|   3|[0x8000220c]<br>0xBFFFFFFF|- rs1 : x9<br> - rs2 : x10<br> - rs2_val == -1073741825<br> - ea_align == 0 and (imm_val % 4) == 2<br>                                           |[0x800000d0]:sh a0, 2(s1)<br>      |
|   4|[0x80002210]<br>0xDFFFFFFF|- rs1 : x2<br> - rs2 : x11<br> - rs2_val == -536870913<br> - imm_val < 0<br>                                                                     |[0x800000f0]:sh a1, 4088(sp)<br>   |
|   5|[0x80002214]<br>0xEFFFFFFF|- rs1 : x13<br> - rs2 : x1<br> - rs2_val == -268435457<br>                                                                                       |[0x80000110]:sh ra, 8(a3)<br>      |
|   6|[0x80002218]<br>0xF7FFFFFF|- rs1 : x7<br> - rs2 : x3<br> - rs2_val == -134217729<br>                                                                                        |[0x80000130]:sh gp, 128(t2)<br>    |
|   7|[0x8000221c]<br>0xFBFFFFFF|- rs1 : x3<br> - rs2 : x6<br> - rs2_val == -67108865<br>                                                                                         |[0x80000150]:sh t1, 6(gp)<br>      |
|   8|[0x80002220]<br>0xFDFFFFFF|- rs1 : x12<br> - rs2 : x2<br> - rs2_val == -33554433<br> - ea_align == 0 and (imm_val % 4) == 3<br>                                             |[0x80000170]:sh sp, 7(a2)<br>      |
|   9|[0x80002224]<br>0xFEFFFFFF|- rs1 : x5<br> - rs2 : x13<br> - rs2_val == -16777217<br>                                                                                        |[0x80000198]:sh a3, 2048(t0)<br>   |
|  10|[0x80002228]<br>0xFF7FFFFF|- rs1 : x1<br> - rs2 : x15<br> - rs2_val == -8388609<br>                                                                                         |[0x800001b8]:sh a5, 3(ra)<br>      |
|  11|[0x8000222c]<br>0xFFBFFFFF|- rs1 : x15<br> - rs2 : x7<br> - rs2_val == -4194305<br>                                                                                         |[0x800001d8]:sh t2, 64(a5)<br>     |
|  12|[0x80002230]<br>0xFFDFFFFF|- rs1 : x14<br> - rs2 : x12<br> - rs2_val == -2097153<br> - ea_align == 0 and (imm_val % 4) == 1<br>                                             |[0x800001f8]:sh a2, 5(a4)<br>      |
|  13|[0x80002234]<br>0xFFEFFFFF|- rs1 : x4<br> - rs2 : x14<br> - rs2_val == -1048577<br>                                                                                         |[0x80000218]:sh a4, 4031(tp)<br>   |
|  14|[0x80002238]<br>0x00000000|- rs1 : x11<br> - rs2 : x0<br> - rs2_val == 0<br>                                                                                                |[0x80000234]:sh zero, 4091(a1)<br> |
|  15|[0x8000223c]<br>0xFFFBFFFF|- rs1 : x8<br> - rs2 : x9<br> - rs2_val == -262145<br>                                                                                           |[0x80000254]:sh s1, 3072(fp)<br>   |
|  16|[0x80002240]<br>0xFFFDFFFF|- rs2 : x8<br> - rs2_val == -131073<br>                                                                                                          |[0x80000274]:sh fp, 32(a1)<br>     |
|  17|[0x80002244]<br>0xFFFEFFFF|- rs2_val == -65537<br>                                                                                                                          |[0x80000294]:sh a1, 4087(a0)<br>   |
|  18|[0x80002248]<br>0xFFFF7FFF|- rs2_val == -32769<br>                                                                                                                          |[0x800002bc]:sh a1, 4087(a0)<br>   |
|  19|[0x8000224c]<br>0xFFFFBFFF|- rs2_val == -16385<br>                                                                                                                          |[0x800002dc]:sh a1, 0(a0)<br>      |
|  20|[0x80002250]<br>0xFFFFDFFF|- rs2_val == -8193<br>                                                                                                                           |[0x800002fc]:sh a1, 4094(a0)<br>   |
|  21|[0x80002254]<br>0xFFFFEFFF|- rs2_val == -4097<br>                                                                                                                           |[0x8000031c]:sh a1, 16(a0)<br>     |
|  22|[0x80002258]<br>0xFFFFF7FF|- rs2_val == -2049<br>                                                                                                                           |[0x8000033c]:sh a1, 2730(a0)<br>   |
|  23|[0x8000225c]<br>0xFFFFFBFF|- rs2_val == -1025<br>                                                                                                                           |[0x80000358]:sh a1, 4088(a0)<br>   |
|  24|[0x80002260]<br>0xFFFFFDFF|- rs2_val == -513<br>                                                                                                                            |[0x80000374]:sh a1, 2048(a0)<br>   |
|  25|[0x80002264]<br>0xFFFFFEFF|- rs2_val == -257<br>                                                                                                                            |[0x80000390]:sh a1, 4094(a0)<br>   |
|  26|[0x80002268]<br>0xFFFFFF7F|- rs2_val == -129<br>                                                                                                                            |[0x800003ac]:sh a1, 64(a0)<br>     |
|  27|[0x8000226c]<br>0xFFFFFFBF|- rs2_val == -65<br>                                                                                                                             |[0x800003c8]:sh a1, 256(a0)<br>    |
|  28|[0x80002270]<br>0xFFFFFFDF|- rs2_val == -33<br>                                                                                                                             |[0x800003e4]:sh a1, 3967(a0)<br>   |
|  29|[0x80002274]<br>0xFFFFFFEF|- rs2_val == -17<br>                                                                                                                             |[0x80000400]:sh a1, 3071(a0)<br>   |
|  30|[0x80002278]<br>0xFFFFFFF7|- rs2_val == -9<br>                                                                                                                              |[0x8000041c]:sh a1, 2048(a0)<br>   |
|  31|[0x8000227c]<br>0xFFFFFFFB|- rs2_val == -5<br>                                                                                                                              |[0x80000438]:sh a1, 2048(a0)<br>   |
|  32|[0x80002280]<br>0xFFFFFFFD|- rs2_val == -3<br>                                                                                                                              |[0x80000454]:sh a1, 512(a0)<br>    |
|  33|[0x80002284]<br>0xFFFFFFFE|- rs2_val == -2<br>                                                                                                                              |[0x80000470]:sh a1, 4063(a0)<br>   |
|  34|[0x80002288]<br>0x80000000|- rs2_val == -2147483648<br> - rs2_val == (-2**(xlen-1))<br>                                                                                     |[0x8000048c]:sh a1, 64(a0)<br>     |
|  35|[0x8000228c]<br>0x40000000|- rs2_val == 1073741824<br>                                                                                                                      |[0x800004a8]:sh a1, 3839(a0)<br>   |
|  36|[0x80002290]<br>0x20000000|- rs2_val == 536870912<br>                                                                                                                       |[0x800004c4]:sh a1, 2(a0)<br>      |
|  37|[0x80002294]<br>0x10000000|- rs2_val == 268435456<br>                                                                                                                       |[0x800004e0]:sh a1, 3071(a0)<br>   |
|  38|[0x80002298]<br>0x08000000|- rs2_val == 134217728<br>                                                                                                                       |[0x800004fc]:sh a1, 4086(a0)<br>   |
|  39|[0x8000229c]<br>0x04000000|- rs2_val == 67108864<br>                                                                                                                        |[0x80000518]:sh a1, 512(a0)<br>    |
|  40|[0x800022a0]<br>0x02000000|- rs2_val == 33554432<br>                                                                                                                        |[0x80000534]:sh a1, 3967(a0)<br>   |
|  41|[0x800022a4]<br>0xAAAAAAAA|- rs2_val == -1431655766<br>                                                                                                                     |[0x80000554]:sh a1, 2730(a0)<br>   |
|  42|[0x800022a8]<br>0x55555555|- rs2_val == 1431655765<br>                                                                                                                      |[0x80000574]:sh a1, 4087(a0)<br>   |
|  43|[0x800022ae]<br>0xFEFFFFFF|- ea_align == 2 and (imm_val % 4) == 0<br>                                                                                                       |[0x80000594]:sh a1, 3072(a0)<br>   |
|  44|[0x800022b2]<br>0x00000800|- rs2_val == 2048<br> - ea_align == 2 and (imm_val % 4) == 1<br>                                                                                 |[0x800005b4]:sh a1, 4089(a0)<br>   |
|  45|[0x800022b6]<br>0x00000003|- ea_align == 2 and (imm_val % 4) == 2<br>                                                                                                       |[0x800005d0]:sh a1, 2730(a0)<br>   |
|  46|[0x800022ba]<br>0xFFFFFFFA|- ea_align == 2 and (imm_val % 4) == 3<br>                                                                                                       |[0x800005ec]:sh a1, 4095(a0)<br>   |
|  47|[0x800022c0]<br>0x01000000|- rs2_val == 16777216<br>                                                                                                                        |[0x80000624]:sh a1, 4087(a0)<br>   |
|  48|[0x800022c4]<br>0x00800000|- rs2_val == 8388608<br>                                                                                                                         |[0x80000640]:sh a1, 4094(a0)<br>   |
|  49|[0x800022c8]<br>0x00400000|- rs2_val == 4194304<br>                                                                                                                         |[0x8000065c]:sh a1, 4079(a0)<br>   |
|  50|[0x800022cc]<br>0x00200000|- rs2_val == 2097152<br>                                                                                                                         |[0x80000678]:sh a1, 9(a0)<br>      |
|  51|[0x800022d0]<br>0x00100000|- rs2_val == 1048576<br>                                                                                                                         |[0x80000694]:sh a1, 4(a0)<br>      |
|  52|[0x800022d4]<br>0x00080000|- rs2_val == 524288<br>                                                                                                                          |[0x800006b0]:sh a1, 4093(a0)<br>   |
|  53|[0x800022d8]<br>0x00040000|- rs2_val == 262144<br>                                                                                                                          |[0x800006cc]:sh a1, 256(a0)<br>    |
|  54|[0x800022dc]<br>0x00020000|- rs2_val == 131072<br>                                                                                                                          |[0x800006e8]:sh a1, 3583(a0)<br>   |
|  55|[0x800022e0]<br>0x00010000|- rs2_val == 65536<br>                                                                                                                           |[0x80000704]:sh a1, 4090(a0)<br>   |
|  56|[0x800022e4]<br>0x00008000|- rs2_val == 32768<br>                                                                                                                           |[0x80000720]:sh a1, 256(a0)<br>    |
|  57|[0x800022e8]<br>0x00004000|- rs2_val == 16384<br>                                                                                                                           |[0x8000073c]:sh a1, 3072(a0)<br>   |
|  58|[0x800022ec]<br>0x00002000|- rs2_val == 8192<br>                                                                                                                            |[0x80000758]:sh a1, 3583(a0)<br>   |
|  59|[0x800022f0]<br>0x00001000|- rs2_val == 4096<br>                                                                                                                            |[0x80000774]:sh a1, 4093(a0)<br>   |
|  60|[0x800022f4]<br>0x00000400|- rs2_val == 1024<br>                                                                                                                            |[0x80000790]:sh a1, 3967(a0)<br>   |
|  61|[0x800022f8]<br>0x00000200|- rs2_val == 512<br>                                                                                                                             |[0x800007ac]:sh a1, 64(a0)<br>     |
|  62|[0x800022fc]<br>0x00000100|- rs2_val == 256<br>                                                                                                                             |[0x800007c8]:sh a1, 2048(a0)<br>   |
|  63|[0x80002300]<br>0x00000080|- rs2_val == 128<br>                                                                                                                             |[0x800007e4]:sh a1, 4090(a0)<br>   |
|  64|[0x80002304]<br>0x00000040|- rs2_val == 64<br>                                                                                                                              |[0x80000800]:sh a1, 4079(a0)<br>   |
|  65|[0x80002308]<br>0x00000020|- rs2_val == 32<br>                                                                                                                              |[0x8000081c]:sh a1, 9(a0)<br>      |
|  66|[0x8000230c]<br>0x00000010|- rs2_val == 16<br>                                                                                                                              |[0x80000838]:sh a1, 4089(a0)<br>   |
|  67|[0x80002310]<br>0x00000008|- rs2_val == 8<br>                                                                                                                               |[0x80000854]:sh a1, 4093(a0)<br>   |
|  68|[0x80002314]<br>0x00000004|- rs2_val == 4<br>                                                                                                                               |[0x80000870]:sh a1, 4092(a0)<br>   |
|  69|[0x80002318]<br>0x00000002|- rs2_val == 2<br>                                                                                                                               |[0x8000088c]:sh a1, 1024(a0)<br>   |
|  70|[0x8000231c]<br>0xFFF7FFFF|- rs2_val == -524289<br>                                                                                                                         |[0x800008ac]:sh a1, 4091(a0)<br>   |
