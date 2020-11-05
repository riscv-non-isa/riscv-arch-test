
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000820')]      |
| SIG_REGION                | [('0x80003204', '0x80003384', '96 words')]      |
| COV_LABELS                | and      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/and-01.S/and-01.S    |
| Total Number of coverpoints| 246     |
| Total Coverpoints Hit     | 246      |
| Total Signature Updates   | 96      |
| STAT1                     | 95      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000080c]:and a2, a0, a1
      [0x80000810]:sw a2, 252(ra)
 -- Signature Address: 0x80003380 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - opcode : and
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0
      - rs1_val != rs2_val
      - rs2_val == 1
      - rs1_val == 1431655765






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

|s.no|        signature         |                                                                                                      coverpoints                                                                                                      |                               code                                |
|---:|--------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80003204]<br>0x00000000|- opcode : and<br> - rs1 : x0<br> - rs2 : x0<br> - rd : x5<br> - rs1 == rs2 != rd<br> - rs1_val == rs2_val<br> - rs2_val == 0<br> - rs1_val == 0<br>                                                                   |[0x8000010c]:and t0, zero, zero<br> [0x80000110]:sw t0, 0(s1)<br>  |
|   2|[0x80003208]<br>0x00000000|- rs1 : x1<br> - rs2 : x4<br> - rd : x4<br> - rs2 == rd != rs1<br> - rs1_val != rs2_val<br> - rs2_val == -257<br>                                                                                                      |[0x8000011c]:and tp, ra, tp<br> [0x80000120]:sw tp, 4(s1)<br>      |
|   3|[0x8000320c]<br>0x00000003|- rs1 : x10<br> - rs2 : x22<br> - rd : x10<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val > 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 2147483647<br>                                                   |[0x80000130]:and a0, a0, s6<br> [0x80000134]:sw a0, 8(s1)<br>      |
|   4|[0x80003210]<br>0x00100000|- rs1 : x24<br> - rs2 : x24<br> - rd : x24<br> - rs1 == rs2 == rd<br> - rs2_val == 1048576<br> - rs1_val == 1048576<br>                                                                                                |[0x80000140]:and s8, s8, s8<br> [0x80000144]:sw s8, 12(s1)<br>     |
|   5|[0x80003214]<br>0x00000000|- rs1 : x14<br> - rs2 : x29<br> - rd : x15<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val > 0 and rs2_val < 0<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> - rs1_val == 134217728<br> |[0x80000150]:and a5, a4, t4<br> [0x80000154]:sw a5, 16(s1)<br>     |
|   6|[0x80003218]<br>0x00000000|- rs1 : x28<br> - rs2 : x30<br> - rd : x20<br> - rs1_val == -513<br>                                                                                                                                                   |[0x80000160]:and s4, t3, t5<br> [0x80000164]:sw s4, 20(s1)<br>     |
|   7|[0x8000321c]<br>0x7FFFFFFC|- rs1 : x31<br> - rs2 : x8<br> - rd : x7<br> - rs1_val < 0 and rs2_val > 0<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br>                                                                            |[0x80000174]:and t2, t6, fp<br> [0x80000178]:sw t2, 24(s1)<br>     |
|   8|[0x80003220]<br>0x00000000|- rs1 : x22<br> - rs2 : x15<br> - rd : x0<br> - rs2_val == 1<br> - rs1_val == 1431655765<br>                                                                                                                           |[0x80000188]:and zero, s6, a5<br> [0x8000018c]:sw zero, 28(s1)<br> |
|   9|[0x80003224]<br>0xFFFFFEFF|- rs1 : x21<br> - rs2 : x19<br> - rd : x8<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val == -257<br>                                                                                                                  |[0x80000198]:and fp, s5, s3<br> [0x8000019c]:sw fp, 32(s1)<br>     |
|  10|[0x80003228]<br>0x00000002|- rs1 : x16<br> - rs2 : x10<br> - rd : x1<br> - rs2_val == -1431655766<br> - rs1_val == 2<br>                                                                                                                          |[0x800001ac]:and ra, a6, a0<br> [0x800001b0]:sw ra, 36(s1)<br>     |
|  11|[0x8000322c]<br>0x00000000|- rs1 : x5<br> - rs2 : x23<br> - rd : x21<br> - rs2_val == 8192<br> - rs1_val == 4<br>                                                                                                                                 |[0x800001bc]:and s5, t0, s7<br> [0x800001c0]:sw s5, 40(s1)<br>     |
|  12|[0x80003230]<br>0x00000008|- rs1 : x23<br> - rs2 : x1<br> - rd : x27<br> - rs2_val == -32769<br> - rs1_val == 8<br>                                                                                                                               |[0x800001d0]:and s11, s7, ra<br> [0x800001d4]:sw s11, 44(s1)<br>   |
|  13|[0x80003234]<br>0x00000000|- rs1 : x13<br> - rs2 : x2<br> - rd : x14<br> - rs2_val == 1024<br> - rs1_val == 16<br>                                                                                                                                |[0x800001e0]:and a4, a3, sp<br> [0x800001e4]:sw a4, 48(s1)<br>     |
|  14|[0x80003238]<br>0x00000000|- rs1 : x3<br> - rs2 : x6<br> - rd : x25<br> - rs2_val == 268435456<br> - rs1_val == 32<br>                                                                                                                            |[0x800001f0]:and s9, gp, t1<br> [0x800001f4]:sw s9, 52(s1)<br>     |
|  15|[0x8000323c]<br>0x00000000|- rs1 : x7<br> - rs2 : x18<br> - rd : x11<br> - rs2_val == 536870912<br> - rs1_val == 64<br>                                                                                                                           |[0x80000200]:and a1, t2, s2<br> [0x80000204]:sw a1, 56(s1)<br>     |
|  16|[0x80003240]<br>0x00000080|- rs1 : x26<br> - rs2 : x25<br> - rd : x28<br> - rs2_val == -5<br> - rs1_val == 128<br>                                                                                                                                |[0x80000210]:and t3, s10, s9<br> [0x80000214]:sw t3, 60(s1)<br>    |
|  17|[0x80003244]<br>0x00000100|- rs1 : x6<br> - rs2 : x17<br> - rd : x12<br> - rs2_val == -134217729<br> - rs1_val == 256<br>                                                                                                                         |[0x8000022c]:and a2, t1, a7<br> [0x80000230]:sw a2, 0(ra)<br>      |
|  18|[0x80003248]<br>0x00000200|- rs1 : x11<br> - rs2 : x14<br> - rd : x29<br> - rs2_val == -2097153<br> - rs1_val == 512<br>                                                                                                                          |[0x80000240]:and t4, a1, a4<br> [0x80000244]:sw t4, 4(ra)<br>      |
|  19|[0x8000324c]<br>0x00000000|- rs1 : x15<br> - rs2 : x21<br> - rd : x31<br> - rs2_val == 4<br> - rs1_val == 1024<br>                                                                                                                                |[0x80000250]:and t6, a5, s5<br> [0x80000254]:sw t6, 8(ra)<br>      |
|  20|[0x80003250]<br>0x00000800|- rs1 : x29<br> - rs2 : x16<br> - rd : x26<br> - rs2_val == -1025<br> - rs1_val == 2048<br>                                                                                                                            |[0x80000264]:and s10, t4, a6<br> [0x80000268]:sw s10, 12(ra)<br>   |
|  21|[0x80003254]<br>0x00000000|- rs1 : x18<br> - rs2 : x27<br> - rd : x9<br> - rs2_val == 32768<br> - rs1_val == 4096<br>                                                                                                                             |[0x80000274]:and s1, s2, s11<br> [0x80000278]:sw s1, 16(ra)<br>    |
|  22|[0x80003258]<br>0x00002000|- rs1 : x8<br> - rs2 : x7<br> - rd : x22<br> - rs2_val == -4194305<br> - rs1_val == 8192<br>                                                                                                                           |[0x80000288]:and s6, fp, t2<br> [0x8000028c]:sw s6, 20(ra)<br>     |
|  23|[0x8000325c]<br>0x00004000|- rs1 : x30<br> - rs2 : x12<br> - rd : x2<br> - rs2_val == -33554433<br> - rs1_val == 16384<br>                                                                                                                        |[0x8000029c]:and sp, t5, a2<br> [0x800002a0]:sw sp, 24(ra)<br>     |
|  24|[0x80003260]<br>0x00008000|- rs1 : x2<br> - rs2 : x9<br> - rd : x23<br> - rs2_val == -17<br> - rs1_val == 32768<br>                                                                                                                               |[0x800002ac]:and s7, sp, s1<br> [0x800002b0]:sw s7, 28(ra)<br>     |
|  25|[0x80003264]<br>0x00000000|- rs1 : x17<br> - rs2 : x11<br> - rd : x30<br> - rs1_val == 65536<br>                                                                                                                                                  |[0x800002bc]:and t5, a7, a1<br> [0x800002c0]:sw t5, 32(ra)<br>     |
|  26|[0x80003268]<br>0x00000000|- rs1 : x20<br> - rs2 : x31<br> - rd : x18<br> - rs2_val == 512<br> - rs1_val == 131072<br>                                                                                                                            |[0x800002cc]:and s2, s4, t6<br> [0x800002d0]:sw s2, 36(ra)<br>     |
|  27|[0x8000326c]<br>0x00000000|- rs1 : x9<br> - rs2 : x20<br> - rd : x17<br> - rs2_val == 16<br> - rs1_val == 262144<br>                                                                                                                              |[0x800002dc]:and a7, s1, s4<br> [0x800002e0]:sw a7, 40(ra)<br>     |
|  28|[0x80003270]<br>0x00080000|- rs1 : x4<br> - rs2 : x26<br> - rd : x13<br> - rs2_val == -65537<br> - rs1_val == 524288<br>                                                                                                                          |[0x800002f0]:and a3, tp, s10<br> [0x800002f4]:sw a3, 44(ra)<br>    |
|  29|[0x80003274]<br>0x00100000|- rs1 : x27<br> - rs2 : x13<br> - rd : x19<br> - rs2_val == -513<br>                                                                                                                                                   |[0x80000300]:and s3, s11, a3<br> [0x80000304]:sw s3, 48(ra)<br>    |
|  30|[0x80003278]<br>0x00000000|- rs1 : x19<br> - rs2 : x5<br> - rd : x16<br> - rs1_val == 2097152<br>                                                                                                                                                 |[0x80000314]:and a6, s3, t0<br> [0x80000318]:sw a6, 52(ra)<br>     |
|  31|[0x8000327c]<br>0x00400000|- rs1 : x12<br> - rs2 : x3<br> - rd : x6<br> - rs1_val == 4194304<br>                                                                                                                                                  |[0x80000324]:and t1, a2, gp<br> [0x80000328]:sw t1, 56(ra)<br>     |
|  32|[0x80003280]<br>0x00000000|- rs1 : x25<br> - rs2 : x28<br> - rd : x3<br> - rs1_val == 8388608<br>                                                                                                                                                 |[0x80000334]:and gp, s9, t3<br> [0x80000338]:sw gp, 60(ra)<br>     |
|  33|[0x80003284]<br>0x01000000|- rs2_val == 1431655765<br> - rs1_val == 16777216<br>                                                                                                                                                                  |[0x80000350]:and a2, a0, a1<br> [0x80000354]:sw a2, 0(ra)<br>      |
|  34|[0x80003288]<br>0x00000000|- rs2_val == 2097152<br> - rs1_val == 33554432<br>                                                                                                                                                                     |[0x80000360]:and a2, a0, a1<br> [0x80000364]:sw a2, 4(ra)<br>      |
|  35|[0x8000328c]<br>0x00000000|- rs1_val == 67108864<br>                                                                                                                                                                                              |[0x80000370]:and a2, a0, a1<br> [0x80000374]:sw a2, 8(ra)<br>      |
|  36|[0x80003290]<br>0x00000000|- rs2_val == 524288<br> - rs1_val == 268435456<br>                                                                                                                                                                     |[0x80000380]:and a2, a0, a1<br> [0x80000384]:sw a2, 12(ra)<br>     |
|  37|[0x80003294]<br>0x00000000|- rs1_val == 536870912<br>                                                                                                                                                                                             |[0x80000390]:and a2, a0, a1<br> [0x80000394]:sw a2, 16(ra)<br>     |
|  38|[0x80003298]<br>0x40000000|- rs1_val == 1073741824<br>                                                                                                                                                                                            |[0x800003a0]:and a2, a0, a1<br> [0x800003a4]:sw a2, 20(ra)<br>     |
|  39|[0x8000329c]<br>0x00000100|- rs2_val == 256<br> - rs1_val == -2<br>                                                                                                                                                                               |[0x800003b0]:and a2, a0, a1<br> [0x800003b4]:sw a2, 24(ra)<br>     |
|  40|[0x800032a0]<br>0x55555555|- rs1_val == -3<br>                                                                                                                                                                                                    |[0x800003c4]:and a2, a0, a1<br> [0x800003c8]:sw a2, 28(ra)<br>     |
|  41|[0x800032a4]<br>0x00000003|- rs1_val == -5<br>                                                                                                                                                                                                    |[0x800003d4]:and a2, a0, a1<br> [0x800003d8]:sw a2, 32(ra)<br>     |
|  42|[0x800032a8]<br>0x02000000|- rs2_val == 33554432<br> - rs1_val == -9<br>                                                                                                                                                                          |[0x800003e4]:and a2, a0, a1<br> [0x800003e8]:sw a2, 36(ra)<br>     |
|  43|[0x800032ac]<br>0xFFFFFFEA|- rs1_val == -17<br>                                                                                                                                                                                                   |[0x800003f4]:and a2, a0, a1<br> [0x800003f8]:sw a2, 40(ra)<br>     |
|  44|[0x800032b0]<br>0xFFBBFFFF|- rs2_val == -262145<br> - rs1_val == -4194305<br>                                                                                                                                                                     |[0x8000040c]:and a2, a0, a1<br> [0x80000410]:sw a2, 44(ra)<br>     |
|  45|[0x800032b4]<br>0x00000040|- rs2_val == -524289<br>                                                                                                                                                                                               |[0x80000420]:and a2, a0, a1<br> [0x80000424]:sw a2, 48(ra)<br>     |
|  46|[0x800032b8]<br>0xFFEFFFFD|- rs2_val == -1048577<br>                                                                                                                                                                                              |[0x80000434]:and a2, a0, a1<br> [0x80000438]:sw a2, 52(ra)<br>     |
|  47|[0x800032bc]<br>0xFF7DFFFF|- rs2_val == -8388609<br> - rs1_val == -131073<br>                                                                                                                                                                     |[0x8000044c]:and a2, a0, a1<br> [0x80000450]:sw a2, 56(ra)<br>     |
|  48|[0x800032c0]<br>0xFEBFFFFF|- rs2_val == -16777217<br>                                                                                                                                                                                             |[0x80000464]:and a2, a0, a1<br> [0x80000468]:sw a2, 60(ra)<br>     |
|  49|[0x800032c4]<br>0xAAAAAAAA|- rs2_val == -67108865<br> - rs1_val == -1431655766<br>                                                                                                                                                                |[0x8000047c]:and a2, a0, a1<br> [0x80000480]:sw a2, 64(ra)<br>     |
|  50|[0x800032c8]<br>0xEFFFFFFC|- rs2_val == -268435457<br>                                                                                                                                                                                            |[0x80000490]:and a2, a0, a1<br> [0x80000494]:sw a2, 68(ra)<br>     |
|  51|[0x800032cc]<br>0xDFFBFFFF|- rs2_val == -536870913<br> - rs1_val == -262145<br>                                                                                                                                                                   |[0x800004a8]:and a2, a0, a1<br> [0x800004ac]:sw a2, 72(ra)<br>     |
|  52|[0x800032d0]<br>0x00800000|- rs2_val == -1073741825<br>                                                                                                                                                                                           |[0x800004bc]:and a2, a0, a1<br> [0x800004c0]:sw a2, 76(ra)<br>     |
|  53|[0x800032d4]<br>0xFFFBFFDF|- rs1_val == -33<br>                                                                                                                                                                                                   |[0x800004d0]:and a2, a0, a1<br> [0x800004d4]:sw a2, 80(ra)<br>     |
|  54|[0x800032d8]<br>0xFFFFFFBF|- rs1_val == -65<br>                                                                                                                                                                                                   |[0x800004e0]:and a2, a0, a1<br> [0x800004e4]:sw a2, 84(ra)<br>     |
|  55|[0x800032dc]<br>0x00000800|- rs2_val == 2048<br> - rs1_val == -129<br>                                                                                                                                                                            |[0x800004f4]:and a2, a0, a1<br> [0x800004f8]:sw a2, 88(ra)<br>     |
|  56|[0x800032e0]<br>0x00000003|- rs1_val == -1025<br>                                                                                                                                                                                                 |[0x80000504]:and a2, a0, a1<br> [0x80000508]:sw a2, 92(ra)<br>     |
|  57|[0x800032e4]<br>0x00000007|- rs1_val == -2049<br>                                                                                                                                                                                                 |[0x80000518]:and a2, a0, a1<br> [0x8000051c]:sw a2, 96(ra)<br>     |
|  58|[0x800032e8]<br>0xBFFFEFFF|- rs1_val == -4097<br>                                                                                                                                                                                                 |[0x80000530]:and a2, a0, a1<br> [0x80000534]:sw a2, 100(ra)<br>    |
|  59|[0x800032ec]<br>0xFFFFDDFF|- rs1_val == -8193<br>                                                                                                                                                                                                 |[0x80000544]:and a2, a0, a1<br> [0x80000548]:sw a2, 104(ra)<br>    |
|  60|[0x800032f0]<br>0xFFF7BFFF|- rs1_val == -16385<br>                                                                                                                                                                                                |[0x8000055c]:and a2, a0, a1<br> [0x80000560]:sw a2, 108(ra)<br>    |
|  61|[0x800032f4]<br>0xFFFB7FFF|- rs1_val == -32769<br>                                                                                                                                                                                                |[0x80000574]:and a2, a0, a1<br> [0x80000578]:sw a2, 112(ra)<br>    |
|  62|[0x800032f8]<br>0x00100000|- rs1_val == -65537<br>                                                                                                                                                                                                |[0x80000588]:and a2, a0, a1<br> [0x8000058c]:sw a2, 116(ra)<br>    |
|  63|[0x800032fc]<br>0x00000000|- rs1_val == -524289<br>                                                                                                                                                                                               |[0x8000059c]:and a2, a0, a1<br> [0x800005a0]:sw a2, 120(ra)<br>    |
|  64|[0x80003300]<br>0x40000000|- rs2_val == 1073741824<br> - rs1_val == -1048577<br>                                                                                                                                                                  |[0x800005b0]:and a2, a0, a1<br> [0x800005b4]:sw a2, 124(ra)<br>    |
|  65|[0x80003304]<br>0x00004000|- rs2_val == 16384<br> - rs1_val == -2097153<br>                                                                                                                                                                       |[0x800005c4]:and a2, a0, a1<br> [0x800005c8]:sw a2, 128(ra)<br>    |
|  66|[0x80003308]<br>0xBF7FFFFF|- rs1_val == -8388609<br>                                                                                                                                                                                              |[0x800005dc]:and a2, a0, a1<br> [0x800005e0]:sw a2, 132(ra)<br>    |
|  67|[0x8000330c]<br>0xFEFFFFFF|- rs1_val == -16777217<br>                                                                                                                                                                                             |[0x800005f4]:and a2, a0, a1<br> [0x800005f8]:sw a2, 136(ra)<br>    |
|  68|[0x80003310]<br>0xFDDFFFFF|- rs1_val == -33554433<br>                                                                                                                                                                                             |[0x8000060c]:and a2, a0, a1<br> [0x80000610]:sw a2, 140(ra)<br>    |
|  69|[0x80003314]<br>0x80000000|- rs1_val == -67108865<br>                                                                                                                                                                                             |[0x80000620]:and a2, a0, a1<br> [0x80000624]:sw a2, 144(ra)<br>    |
|  70|[0x80003318]<br>0x00000008|- rs2_val == 8<br> - rs1_val == -134217729<br>                                                                                                                                                                         |[0x80000634]:and a2, a0, a1<br> [0x80000638]:sw a2, 148(ra)<br>    |
|  71|[0x8000331c]<br>0xEFFFFFF6|- rs1_val == -268435457<br>                                                                                                                                                                                            |[0x80000648]:and a2, a0, a1<br> [0x8000064c]:sw a2, 152(ra)<br>    |
|  72|[0x80003320]<br>0xDFFFFFDF|- rs2_val == -33<br> - rs1_val == -536870913<br>                                                                                                                                                                       |[0x8000065c]:and a2, a0, a1<br> [0x80000660]:sw a2, 156(ra)<br>    |
|  73|[0x80003324]<br>0xBFFFFFBF|- rs2_val == -65<br> - rs1_val == -1073741825<br>                                                                                                                                                                      |[0x80000670]:and a2, a0, a1<br> [0x80000674]:sw a2, 160(ra)<br>    |
|  74|[0x80003328]<br>0x00000002|- rs2_val == 2<br>                                                                                                                                                                                                     |[0x80000680]:and a2, a0, a1<br> [0x80000684]:sw a2, 164(ra)<br>    |
|  75|[0x8000332c]<br>0x00000000|- rs2_val == 32<br>                                                                                                                                                                                                    |[0x80000690]:and a2, a0, a1<br> [0x80000694]:sw a2, 168(ra)<br>    |
|  76|[0x80003330]<br>0x00000000|- rs2_val == 64<br>                                                                                                                                                                                                    |[0x800006a0]:and a2, a0, a1<br> [0x800006a4]:sw a2, 172(ra)<br>    |
|  77|[0x80003334]<br>0x00000000|- rs2_val == 128<br>                                                                                                                                                                                                   |[0x800006b0]:and a2, a0, a1<br> [0x800006b4]:sw a2, 176(ra)<br>    |
|  78|[0x80003338]<br>0x00000000|- rs2_val == 4096<br>                                                                                                                                                                                                  |[0x800006c0]:and a2, a0, a1<br> [0x800006c4]:sw a2, 180(ra)<br>    |
|  79|[0x8000333c]<br>0x00010000|- rs2_val == 65536<br>                                                                                                                                                                                                 |[0x800006d4]:and a2, a0, a1<br> [0x800006d8]:sw a2, 184(ra)<br>    |
|  80|[0x80003340]<br>0x00000000|- rs1_val == (-2**(xlen-1))<br> - rs2_val == 131072<br> - rs1_val == -2147483648<br>                                                                                                                                   |[0x800006e4]:and a2, a0, a1<br> [0x800006e8]:sw a2, 188(ra)<br>    |
|  81|[0x80003344]<br>0x00000000|- rs2_val == 262144<br>                                                                                                                                                                                                |[0x800006f4]:and a2, a0, a1<br> [0x800006f8]:sw a2, 192(ra)<br>    |
|  82|[0x80003348]<br>0x00000000|- rs2_val == 4194304<br>                                                                                                                                                                                               |[0x80000704]:and a2, a0, a1<br> [0x80000708]:sw a2, 196(ra)<br>    |
|  83|[0x8000334c]<br>0x00000000|- rs2_val == 8388608<br>                                                                                                                                                                                               |[0x80000714]:and a2, a0, a1<br> [0x80000718]:sw a2, 200(ra)<br>    |
|  84|[0x80003350]<br>0x01000000|- rs2_val == 16777216<br>                                                                                                                                                                                              |[0x80000728]:and a2, a0, a1<br> [0x8000072c]:sw a2, 204(ra)<br>    |
|  85|[0x80003354]<br>0x00000000|- rs2_val == 67108864<br>                                                                                                                                                                                              |[0x80000738]:and a2, a0, a1<br> [0x8000073c]:sw a2, 208(ra)<br>    |
|  86|[0x80003358]<br>0x00000000|- rs2_val == 134217728<br>                                                                                                                                                                                             |[0x80000748]:and a2, a0, a1<br> [0x8000074c]:sw a2, 212(ra)<br>    |
|  87|[0x8000335c]<br>0xFFFFFFDE|- rs2_val == -2<br>                                                                                                                                                                                                    |[0x80000758]:and a2, a0, a1<br> [0x8000075c]:sw a2, 216(ra)<br>    |
|  88|[0x80003360]<br>0x00000400|- rs2_val == -3<br>                                                                                                                                                                                                    |[0x80000768]:and a2, a0, a1<br> [0x8000076c]:sw a2, 220(ra)<br>    |
|  89|[0x80003364]<br>0xF7FFFFF7|- rs2_val == -9<br>                                                                                                                                                                                                    |[0x8000077c]:and a2, a0, a1<br> [0x80000780]:sw a2, 224(ra)<br>    |
|  90|[0x80003368]<br>0x00000007|- rs2_val == -129<br>                                                                                                                                                                                                  |[0x8000078c]:and a2, a0, a1<br> [0x80000790]:sw a2, 228(ra)<br>    |
|  91|[0x8000336c]<br>0x00000080|- rs2_val == -2049<br>                                                                                                                                                                                                 |[0x800007a0]:and a2, a0, a1<br> [0x800007a4]:sw a2, 232(ra)<br>    |
|  92|[0x80003370]<br>0xFEFFEFFF|- rs2_val == -4097<br>                                                                                                                                                                                                 |[0x800007b8]:and a2, a0, a1<br> [0x800007bc]:sw a2, 236(ra)<br>    |
|  93|[0x80003374]<br>0xFFF7DFFF|- rs2_val == -8193<br>                                                                                                                                                                                                 |[0x800007d0]:and a2, a0, a1<br> [0x800007d4]:sw a2, 240(ra)<br>    |
|  94|[0x80003378]<br>0x00000010|- rs2_val == -16385<br>                                                                                                                                                                                                |[0x800007e4]:and a2, a0, a1<br> [0x800007e8]:sw a2, 244(ra)<br>    |
|  95|[0x8000337c]<br>0x00000001|- rs1_val == 1<br> - rs2_val == -131073<br>                                                                                                                                                                            |[0x800007f8]:and a2, a0, a1<br> [0x800007fc]:sw a2, 248(ra)<br>    |
