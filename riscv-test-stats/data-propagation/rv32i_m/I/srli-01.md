
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x800005c0')]      |
| SIG_REGION                | [('0x80002010', '0x80002170', '88 words')]      |
| COV_LABELS                | srli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/srli-01.S/srli-01.S    |
| Total Number of coverpoints| 178     |
| Total Coverpoints Hit     | 178      |
| Total Signature Updates   | 87      |
| STAT1                     | 85      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005a0]:srli a1, a0, 9
      [0x800005a4]:sw a1, 244(sp)
 -- Signature Address: 0x80002164 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : srli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val == 0 and imm_val >= 0 and imm_val < xlen
      - rs1_val==0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005ac]:srli a1, a0, 8
      [0x800005b0]:sw a1, 248(sp)
 -- Signature Address: 0x80002168 Data: 0x00000004
 -- Redundant Coverpoints hit by the op
      - opcode : srli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == 1024
      - imm_val == 8






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

|s.no|        signature         |                                                                    coverpoints                                                                    |                               code                                |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80002010]<br>0x000FFFFE|- opcode : srli<br> - rs1 : x10<br> - rd : x3<br> - rs1 != rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == -4097<br>      |[0x80000108]:srli gp, a0, 12<br> [0x8000010c]:sw gp, 0(a3)<br>     |
|   2|[0x80002014]<br>0x00000000|- rs1 : x4<br> - rd : x4<br> - rs1 == rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == 512<br> - imm_val == 29<br>         |[0x80000114]:srli tp, tp, 29<br> [0x80000118]:sw tp, 4(a3)<br>     |
|   3|[0x80002018]<br>0xFFFFFFF9|- rs1 : x31<br> - rd : x5<br> - rs1_val < 0 and imm_val == 0<br>                                                                                   |[0x80000120]:srli t0, t6, 0<br> [0x80000124]:sw t0, 8(a3)<br>      |
|   4|[0x8000201c]<br>0x33333333|- rs1 : x25<br> - rd : x10<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val==858993459<br>                                                         |[0x80000130]:srli a0, s9, 0<br> [0x80000134]:sw a0, 12(a3)<br>     |
|   5|[0x80002020]<br>0x00000001|- rs1 : x8<br> - rd : x15<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -2<br>                                                        |[0x8000013c]:srli a5, fp, 31<br> [0x80000140]:sw a5, 16(a3)<br>    |
|   6|[0x80002024]<br>0x00000000|- rs1 : x24<br> - rd : x28<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 262144<br>                                                   |[0x80000148]:srli t3, s8, 31<br> [0x8000014c]:sw t3, 20(a3)<br>    |
|   7|[0x80002028]<br>0x00000000|- rs1 : x9<br> - rd : x1<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val == 2<br> - rs1_val==2<br> - imm_val == 2<br>    |[0x80000154]:srli ra, s1, 2<br> [0x80000158]:sw ra, 24(a3)<br>     |
|   8|[0x8000202c]<br>0x00200000|- rs1 : x18<br> - rd : x7<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -2147483648<br> - imm_val == 10<br> |[0x80000160]:srli t2, s2, 10<br> [0x80000164]:sw t2, 28(a3)<br>    |
|   9|[0x80002030]<br>0x00000000|- rs1 : x0<br> - rd : x14<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br> - rs1_val==0<br>                                              |[0x8000016c]:srli a4, zero, 9<br> [0x80000170]:sw a4, 32(a3)<br>   |
|  10|[0x80002034]<br>0x03FFFFFF|- rs1 : x27<br> - rd : x24<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 2147483647<br>                    |[0x8000017c]:srli s8, s11, 5<br> [0x80000180]:sw s8, 36(a3)<br>    |
|  11|[0x80002038]<br>0x00000000|- rs1 : x16<br> - rd : x6<br> - rs1_val == 1 and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 1<br>                                            |[0x80000188]:srli t1, a6, 29<br> [0x8000018c]:sw t1, 40(a3)<br>    |
|  12|[0x8000203c]<br>0x00000000|- rs1 : x3<br> - rd : x20<br> - rs1_val == 4<br> - rs1_val==4<br>                                                                                  |[0x80000194]:srli s4, gp, 13<br> [0x80000198]:sw s4, 44(a3)<br>    |
|  13|[0x80002040]<br>0x00000000|- rs1 : x29<br> - rd : x9<br> - rs1_val == 8<br>                                                                                                   |[0x800001a0]:srli s1, t4, 11<br> [0x800001a4]:sw s1, 48(a3)<br>    |
|  14|[0x80002044]<br>0x00000000|- rs1 : x20<br> - rd : x18<br> - rs1_val == 16<br>                                                                                                 |[0x800001ac]:srli s2, s4, 12<br> [0x800001b0]:sw s2, 52(a3)<br>    |
|  15|[0x80002048]<br>0x00000002|- rs1 : x2<br> - rd : x16<br> - rs1_val == 32<br> - imm_val == 4<br>                                                                               |[0x800001b8]:srli a6, sp, 4<br> [0x800001bc]:sw a6, 56(a3)<br>     |
|  16|[0x8000204c]<br>0x00000000|- rs1 : x28<br> - rd : x29<br> - rs1_val == 64<br>                                                                                                 |[0x800001c4]:srli t4, t3, 14<br> [0x800001c8]:sw t4, 60(a3)<br>    |
|  17|[0x80002050]<br>0x00000000|- rs1 : x6<br> - rd : x17<br> - rs1_val == 128<br> - imm_val == 30<br>                                                                             |[0x800001d0]:srli a7, t1, 30<br> [0x800001d4]:sw a7, 64(a3)<br>    |
|  18|[0x80002054]<br>0x00000004|- rs1 : x21<br> - rd : x2<br> - rs1_val == 256<br>                                                                                                 |[0x800001dc]:srli sp, s5, 6<br> [0x800001e0]:sw sp, 68(a3)<br>     |
|  19|[0x80002058]<br>0x00000000|- rs1 : x14<br> - rd : x0<br> - rs1_val == 1024<br> - imm_val == 8<br>                                                                             |[0x800001e8]:srli zero, a4, 8<br> [0x800001ec]:sw zero, 72(a3)<br> |
|  20|[0x8000205c]<br>0x00000000|- rs1 : x19<br> - rd : x31<br> - rs1_val == 2048<br>                                                                                               |[0x800001f8]:srli t6, s3, 31<br> [0x800001fc]:sw t6, 76(a3)<br>    |
|  21|[0x80002060]<br>0x00000004|- rs1 : x12<br> - rd : x8<br> - rs1_val == 4096<br>                                                                                                |[0x80000204]:srli fp, a2, 10<br> [0x80000208]:sw fp, 80(a3)<br>    |
|  22|[0x80002064]<br>0x00000008|- rs1 : x26<br> - rd : x21<br> - rs1_val == 8192<br>                                                                                               |[0x80000210]:srli s5, s10, 10<br> [0x80000214]:sw s5, 84(a3)<br>   |
|  23|[0x80002068]<br>0x00000100|- rs1 : x7<br> - rd : x22<br> - rs1_val == 16384<br>                                                                                               |[0x8000021c]:srli s6, t2, 6<br> [0x80000220]:sw s6, 88(a3)<br>     |
|  24|[0x8000206c]<br>0x00000000|- rs1 : x23<br> - rd : x11<br> - rs1_val == 32768<br>                                                                                              |[0x80000228]:srli a1, s7, 30<br> [0x8000022c]:sw a1, 92(a3)<br>    |
|  25|[0x80002070]<br>0x00000000|- rs1 : x5<br> - rd : x26<br> - rs1_val == 65536<br>                                                                                               |[0x8000023c]:srli s10, t0, 17<br> [0x80000240]:sw s10, 0(sp)<br>   |
|  26|[0x80002074]<br>0x00000040|- rs1 : x11<br> - rd : x13<br> - rs1_val == 131072<br>                                                                                             |[0x80000248]:srli a3, a1, 11<br> [0x8000024c]:sw a3, 4(sp)<br>     |
|  27|[0x80002078]<br>0x00001000|- rs1 : x22<br> - rd : x25<br> - rs1_val == 524288<br>                                                                                             |[0x80000254]:srli s9, s6, 7<br> [0x80000258]:sw s9, 8(sp)<br>      |
|  28|[0x8000207c]<br>0x00000040|- rs1 : x30<br> - rd : x27<br> - rs1_val == 1048576<br>                                                                                            |[0x80000260]:srli s11, t5, 14<br> [0x80000264]:sw s11, 12(sp)<br>  |
|  29|[0x80002080]<br>0x00040000|- rs1 : x15<br> - rd : x19<br> - rs1_val == 2097152<br>                                                                                            |[0x8000026c]:srli s3, a5, 3<br> [0x80000270]:sw s3, 16(sp)<br>     |
|  30|[0x80002084]<br>0x00010000|- rs1 : x17<br> - rd : x12<br> - rs1_val == 4194304<br>                                                                                            |[0x80000278]:srli a2, a7, 6<br> [0x8000027c]:sw a2, 20(sp)<br>     |
|  31|[0x80002088]<br>0x00002000|- rs1 : x13<br> - rd : x30<br> - rs1_val == 8388608<br>                                                                                            |[0x80000284]:srli t5, a3, 10<br> [0x80000288]:sw t5, 24(sp)<br>    |
|  32|[0x8000208c]<br>0x00000000|- rs1 : x1<br> - rd : x23<br> - rs1_val == 16777216<br>                                                                                            |[0x80000290]:srli s7, ra, 31<br> [0x80000294]:sw s7, 28(sp)<br>    |
|  33|[0x80002090]<br>0x00040000|- rs1_val == 33554432<br>                                                                                                                          |[0x8000029c]:srli a1, a0, 7<br> [0x800002a0]:sw a1, 32(sp)<br>     |
|  34|[0x80002094]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                          |[0x800002a8]:srli a1, a0, 31<br> [0x800002ac]:sw a1, 36(sp)<br>    |
|  35|[0x80002098]<br>0x00001000|- rs1_val == 134217728<br> - imm_val == 15<br>                                                                                                     |[0x800002b4]:srli a1, a0, 15<br> [0x800002b8]:sw a1, 40(sp)<br>    |
|  36|[0x8000209c]<br>0x08000000|- rs1_val == 268435456<br> - imm_val == 1<br>                                                                                                      |[0x800002c0]:srli a1, a0, 1<br> [0x800002c4]:sw a1, 44(sp)<br>     |
|  37|[0x800020a0]<br>0x04000000|- rs1_val == 536870912<br>                                                                                                                         |[0x800002cc]:srli a1, a0, 3<br> [0x800002d0]:sw a1, 48(sp)<br>     |
|  38|[0x800020a4]<br>0x00000000|- rs1_val == 1073741824<br>                                                                                                                        |[0x800002d8]:srli a1, a0, 31<br> [0x800002dc]:sw a1, 52(sp)<br>    |
|  39|[0x800020a8]<br>0x3FFFFFFF|- rs1_val == -3<br>                                                                                                                                |[0x800002e4]:srli a1, a0, 2<br> [0x800002e8]:sw a1, 56(sp)<br>     |
|  40|[0x800020ac]<br>0x07FFFFFF|- rs1_val == -5<br>                                                                                                                                |[0x800002f0]:srli a1, a0, 5<br> [0x800002f4]:sw a1, 60(sp)<br>     |
|  41|[0x800020b0]<br>0x000007FF|- rs1_val == -9<br> - imm_val == 21<br>                                                                                                            |[0x800002fc]:srli a1, a0, 21<br> [0x80000300]:sw a1, 64(sp)<br>    |
|  42|[0x800020b4]<br>0x00000001|- rs1_val == -17<br>                                                                                                                               |[0x80000308]:srli a1, a0, 31<br> [0x8000030c]:sw a1, 68(sp)<br>    |
|  43|[0x800020b8]<br>0x003FFFFF|- rs1_val == -33<br>                                                                                                                               |[0x80000314]:srli a1, a0, 10<br> [0x80000318]:sw a1, 72(sp)<br>    |
|  44|[0x800020bc]<br>0x7FFFFFDF|- rs1_val == -65<br>                                                                                                                               |[0x80000320]:srli a1, a0, 1<br> [0x80000324]:sw a1, 76(sp)<br>     |
|  45|[0x800020c0]<br>0x0000001F|- rs1_val == -129<br> - imm_val == 27<br>                                                                                                          |[0x8000032c]:srli a1, a0, 27<br> [0x80000330]:sw a1, 80(sp)<br>    |
|  46|[0x800020c4]<br>0x000001FF|- rs1_val == -257<br> - imm_val == 23<br>                                                                                                          |[0x80000338]:srli a1, a0, 23<br> [0x8000033c]:sw a1, 84(sp)<br>    |
|  47|[0x800020c8]<br>0x000007FF|- rs1_val == -513<br>                                                                                                                              |[0x80000344]:srli a1, a0, 21<br> [0x80000348]:sw a1, 88(sp)<br>    |
|  48|[0x800020cc]<br>0xFFFFFBFF|- rs1_val == -1025<br>                                                                                                                             |[0x80000350]:srli a1, a0, 0<br> [0x80000354]:sw a1, 92(sp)<br>     |
|  49|[0x800020d0]<br>0x007FFFFB|- rs1_val == -2049<br>                                                                                                                             |[0x80000360]:srli a1, a0, 9<br> [0x80000364]:sw a1, 96(sp)<br>     |
|  50|[0x800020d4]<br>0x007FFFEF|- rs1_val == -8193<br>                                                                                                                             |[0x80000370]:srli a1, a0, 9<br> [0x80000374]:sw a1, 100(sp)<br>    |
|  51|[0x800020d8]<br>0x00000007|- rs1_val == -16385<br>                                                                                                                            |[0x80000380]:srli a1, a0, 29<br> [0x80000384]:sw a1, 104(sp)<br>   |
|  52|[0x800020dc]<br>0xFFFF7FFF|- rs1_val == -32769<br>                                                                                                                            |[0x80000390]:srli a1, a0, 0<br> [0x80000394]:sw a1, 108(sp)<br>    |
|  53|[0x800020e0]<br>0x3FFFBFFF|- rs1_val == -65537<br>                                                                                                                            |[0x800003a0]:srli a1, a0, 2<br> [0x800003a4]:sw a1, 112(sp)<br>    |
|  54|[0x800020e4]<br>0x000007FF|- rs1_val == -131073<br>                                                                                                                           |[0x800003b0]:srli a1, a0, 21<br> [0x800003b4]:sw a1, 116(sp)<br>   |
|  55|[0x800020e8]<br>0x00003FFE|- rs1_val == -262145<br>                                                                                                                           |[0x800003c0]:srli a1, a0, 18<br> [0x800003c4]:sw a1, 120(sp)<br>   |
|  56|[0x800020ec]<br>0x00003FFD|- rs1_val == -524289<br>                                                                                                                           |[0x800003d0]:srli a1, a0, 18<br> [0x800003d4]:sw a1, 124(sp)<br>   |
|  57|[0x800020f0]<br>0x000001FF|- rs1_val == -1048577<br>                                                                                                                          |[0x800003e0]:srli a1, a0, 23<br> [0x800003e4]:sw a1, 128(sp)<br>   |
|  58|[0x800020f4]<br>0x00000007|- rs1_val == -2097153<br>                                                                                                                          |[0x800003f0]:srli a1, a0, 29<br> [0x800003f4]:sw a1, 132(sp)<br>   |
|  59|[0x800020f8]<br>0x07FDFFFF|- rs1_val == -4194305<br>                                                                                                                          |[0x80000400]:srli a1, a0, 5<br> [0x80000404]:sw a1, 136(sp)<br>    |
|  60|[0x800020fc]<br>0x3FDFFFFF|- rs1_val == -8388609<br>                                                                                                                          |[0x80000410]:srli a1, a0, 2<br> [0x80000414]:sw a1, 140(sp)<br>    |
|  61|[0x80002100]<br>0x000001FD|- rs1_val == -16777217<br>                                                                                                                         |[0x80000420]:srli a1, a0, 23<br> [0x80000424]:sw a1, 144(sp)<br>   |
|  62|[0x80002104]<br>0x0FDFFFFF|- rs1_val == -33554433<br>                                                                                                                         |[0x80000430]:srli a1, a0, 4<br> [0x80000434]:sw a1, 148(sp)<br>    |
|  63|[0x80002108]<br>0x003EFFFF|- rs1_val == -67108865<br>                                                                                                                         |[0x80000440]:srli a1, a0, 10<br> [0x80000444]:sw a1, 152(sp)<br>   |
|  64|[0x8000210c]<br>0x00F7FFFF|- rs1_val == -134217729<br>                                                                                                                        |[0x80000450]:srli a1, a0, 8<br> [0x80000454]:sw a1, 156(sp)<br>    |
|  65|[0x80002110]<br>0x000001DF|- rs1_val == -268435457<br>                                                                                                                        |[0x80000460]:srli a1, a0, 23<br> [0x80000464]:sw a1, 160(sp)<br>   |
|  66|[0x80002114]<br>0x00037FFF|- rs1_val == -536870913<br>                                                                                                                        |[0x80000470]:srli a1, a0, 14<br> [0x80000474]:sw a1, 164(sp)<br>   |
|  67|[0x80002118]<br>0x0000BFFF|- rs1_val == -1073741825<br> - imm_val == 16<br>                                                                                                   |[0x80000480]:srli a1, a0, 16<br> [0x80000484]:sw a1, 168(sp)<br>   |
|  68|[0x8000211c]<br>0x05555555|- rs1_val == 1431655765<br> - rs1_val==1431655765<br>                                                                                              |[0x80000490]:srli a1, a0, 4<br> [0x80000494]:sw a1, 172(sp)<br>    |
|  69|[0x80002120]<br>0x01555555|- rs1_val == -1431655766<br> - rs1_val==-1431655766<br>                                                                                            |[0x800004a0]:srli a1, a0, 7<br> [0x800004a4]:sw a1, 176(sp)<br>    |
|  70|[0x80002124]<br>0x00000000|- rs1_val==3<br>                                                                                                                                   |[0x800004ac]:srli a1, a0, 2<br> [0x800004b0]:sw a1, 180(sp)<br>    |
|  71|[0x80002128]<br>0x00019999|- rs1_val==1717986919<br>                                                                                                                          |[0x800004bc]:srli a1, a0, 14<br> [0x800004c0]:sw a1, 184(sp)<br>   |
|  72|[0x8000212c]<br>0x00FFFF4A|- rs1_val==-46339<br>                                                                                                                              |[0x800004cc]:srli a1, a0, 8<br> [0x800004d0]:sw a1, 188(sp)<br>    |
|  73|[0x80002130]<br>0x00000000|- rs1_val==46341<br>                                                                                                                               |[0x800004dc]:srli a1, a0, 27<br> [0x800004e0]:sw a1, 192(sp)<br>   |
|  74|[0x80002134]<br>0x00000000|- rs1_val==5<br>                                                                                                                                   |[0x800004e8]:srli a1, a0, 31<br> [0x800004ec]:sw a1, 196(sp)<br>   |
|  75|[0x80002138]<br>0x00333333|- rs1_val==1717986918<br>                                                                                                                          |[0x800004f8]:srli a1, a0, 9<br> [0x800004fc]:sw a1, 200(sp)<br>    |
|  76|[0x8000213c]<br>0x000FFFF4|- rs1_val==-46340<br>                                                                                                                              |[0x80000508]:srli a1, a0, 12<br> [0x8000050c]:sw a1, 204(sp)<br>   |
|  77|[0x80002140]<br>0x00000000|- rs1_val==46340<br>                                                                                                                               |[0x80000518]:srli a1, a0, 19<br> [0x8000051c]:sw a1, 208(sp)<br>   |
|  78|[0x80002144]<br>0x00001555|- rs1_val==1431655764<br>                                                                                                                          |[0x80000528]:srli a1, a0, 18<br> [0x8000052c]:sw a1, 212(sp)<br>   |
|  79|[0x80002148]<br>0x00000001|- rs1_val==858993458<br>                                                                                                                           |[0x80000538]:srli a1, a0, 29<br> [0x8000053c]:sw a1, 216(sp)<br>   |
|  80|[0x8000214c]<br>0x00033333|- rs1_val==1717986917<br>                                                                                                                          |[0x80000548]:srli a1, a0, 13<br> [0x8000054c]:sw a1, 220(sp)<br>   |
|  81|[0x80002150]<br>0x000002D4|- rs1_val==46339<br>                                                                                                                               |[0x80000558]:srli a1, a0, 6<br> [0x8000055c]:sw a1, 224(sp)<br>    |
|  82|[0x80002154]<br>0x05555555|- rs1_val==1431655766<br>                                                                                                                          |[0x80000568]:srli a1, a0, 4<br> [0x8000056c]:sw a1, 228(sp)<br>    |
|  83|[0x80002158]<br>0x01555555|- rs1_val==-1431655765<br>                                                                                                                         |[0x80000578]:srli a1, a0, 7<br> [0x8000057c]:sw a1, 232(sp)<br>    |
|  84|[0x8000215c]<br>0x00000003|- rs1_val==6<br>                                                                                                                                   |[0x80000584]:srli a1, a0, 1<br> [0x80000588]:sw a1, 236(sp)<br>    |
|  85|[0x80002160]<br>0x00000066|- rs1_val==858993460<br>                                                                                                                           |[0x80000594]:srli a1, a0, 23<br> [0x80000598]:sw a1, 240(sp)<br>   |
