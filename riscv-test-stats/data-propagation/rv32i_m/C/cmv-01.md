
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80000410')]      |
| SIG_REGION                | [('0x80003204', '0x80003314', '68 words')]      |
| COV_LABELS                | cmv      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/cmv-01.S/cmv-01.S    |
| Total Number of coverpoints| 135     |
| Total Coverpoints Hit     | 135      |
| Total Signature Updates   | 68      |
| STAT1                     | 67      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000040a]:c.mv a0, a1
      [0x8000040c]:sw a0, 180(gp)
 -- Signature Address: 0x80003310 Data: 0x00004000
 -- Redundant Coverpoints hit by the op
      - opcode : c.mv
      - rs2 : x11
      - rd : x10
      - rs2 != rd and rs2 != 0
      - rs2_val == 16384






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

|s.no|        signature         |                                                                coverpoints                                                                |                             code                              |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------|
|   1|[0x80003204]<br>0x80000000|- opcode : c.mv<br> - rs2 : x6<br> - rd : x8<br> - rs2 != rd and rs2 != 0<br> - rs2_val == (-2**(xlen-1))<br> - rs2_val == -2147483648<br> |[0x80000104]:c.mv fp, t1<br> [0x80000106]:sw fp, 0(ra)<br>     |
|   2|[0x80003208]<br>0x00000000|- rs2 : x7<br> - rd : x7<br> - rs2 == rd and rs2 != 0<br> - rs2_val == 0<br>                                                               |[0x8000010e]:c.mv t2, t2<br> [0x80000110]:sw t2, 4(ra)<br>     |
|   3|[0x8000320c]<br>0x7FFFFFFF|- rs2 : x14<br> - rd : x13<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 2147483647<br>                                                |[0x8000011c]:c.mv a3, a4<br> [0x8000011e]:sw a3, 8(ra)<br>     |
|   4|[0x80003210]<br>0x00000001|- rs2 : x22<br> - rd : x29<br> - rs2_val == 1<br>                                                                                          |[0x80000126]:c.mv t4, s6<br> [0x80000128]:sw t4, 12(ra)<br>    |
|   5|[0x80003214]<br>0x00000002|- rs2 : x20<br> - rd : x26<br> - rs2_val == 2<br>                                                                                          |[0x80000130]:c.mv s10, s4<br> [0x80000132]:sw s10, 16(ra)<br>  |
|   6|[0x80003218]<br>0x00000004|- rs2 : x10<br> - rd : x21<br> - rs2_val == 4<br>                                                                                          |[0x8000013a]:c.mv s5, a0<br> [0x8000013c]:sw s5, 20(ra)<br>    |
|   7|[0x8000321c]<br>0x00000008|- rs2 : x3<br> - rd : x27<br> - rs2_val == 8<br>                                                                                           |[0x80000144]:c.mv s11, gp<br> [0x80000146]:sw s11, 24(ra)<br>  |
|   8|[0x80003220]<br>0x00000010|- rs2 : x28<br> - rd : x14<br> - rs2_val == 16<br>                                                                                         |[0x8000014e]:c.mv a4, t3<br> [0x80000150]:sw a4, 28(ra)<br>    |
|   9|[0x80003224]<br>0x00000020|- rs2 : x21<br> - rd : x23<br> - rs2_val == 32<br>                                                                                         |[0x80000158]:c.mv s7, s5<br> [0x8000015a]:sw s7, 32(ra)<br>    |
|  10|[0x80003228]<br>0x00000040|- rs2 : x17<br> - rd : x25<br> - rs2_val == 64<br>                                                                                         |[0x80000162]:c.mv s9, a7<br> [0x80000164]:sw s9, 36(ra)<br>    |
|  11|[0x8000322c]<br>0x00000080|- rs2 : x26<br> - rd : x17<br> - rs2_val == 128<br>                                                                                        |[0x8000016c]:c.mv a7, s10<br> [0x8000016e]:sw a7, 40(ra)<br>   |
|  12|[0x80003230]<br>0x00000100|- rs2 : x27<br> - rd : x19<br> - rs2_val == 256<br>                                                                                        |[0x80000176]:c.mv s3, s11<br> [0x80000178]:sw s3, 44(ra)<br>   |
|  13|[0x80003234]<br>0x00000200|- rs2 : x9<br> - rd : x6<br> - rs2_val == 512<br>                                                                                          |[0x80000180]:c.mv t1, s1<br> [0x80000182]:sw t1, 48(ra)<br>    |
|  14|[0x80003238]<br>0x00000400|- rs2 : x23<br> - rd : x31<br> - rs2_val == 1024<br>                                                                                       |[0x8000018a]:c.mv t6, s7<br> [0x8000018c]:sw t6, 52(ra)<br>    |
|  15|[0x8000323c]<br>0x00000800|- rs2 : x24<br> - rd : x22<br> - rs2_val == 2048<br>                                                                                       |[0x80000198]:c.mv s6, s8<br> [0x8000019a]:sw s6, 56(ra)<br>    |
|  16|[0x80003240]<br>0x00001000|- rs2 : x31<br> - rd : x5<br> - rs2_val == 4096<br>                                                                                        |[0x800001a2]:c.mv t0, t6<br> [0x800001a4]:sw t0, 60(ra)<br>    |
|  17|[0x80003244]<br>0x00002000|- rs2 : x13<br> - rd : x16<br> - rs2_val == 8192<br>                                                                                       |[0x800001ac]:c.mv a6, a3<br> [0x800001ae]:sw a6, 64(ra)<br>    |
|  18|[0x80003248]<br>0x00000000|- rs2 : x25<br> - rd : x0<br> - rs2_val == 16384<br>                                                                                       |[0x800001b6]:c.mv.hint.s9<br> [0x800001b8]:sw zero, 68(ra)<br> |
|  19|[0x8000324c]<br>0x00008000|- rs2 : x5<br> - rd : x4<br> - rs2_val == 32768<br>                                                                                        |[0x800001c0]:c.mv tp, t0<br> [0x800001c2]:sw tp, 72(ra)<br>    |
|  20|[0x80003250]<br>0x00010000|- rs2 : x12<br> - rd : x15<br> - rs2_val == 65536<br>                                                                                      |[0x800001ca]:c.mv a5, a2<br> [0x800001cc]:sw a5, 76(ra)<br>    |
|  21|[0x80003254]<br>0x00020000|- rs2 : x16<br> - rd : x18<br> - rs2_val == 131072<br>                                                                                     |[0x800001d4]:c.mv s2, a6<br> [0x800001d6]:sw s2, 80(ra)<br>    |
|  22|[0x80003258]<br>0x00040000|- rs2 : x2<br> - rd : x3<br> - rs2_val == 262144<br>                                                                                       |[0x800001de]:c.mv gp, sp<br> [0x800001e0]:sw gp, 84(ra)<br>    |
|  23|[0x8000325c]<br>0x00080000|- rs2 : x11<br> - rd : x30<br> - rs2_val == 524288<br>                                                                                     |[0x800001f0]:c.mv t5, a1<br> [0x800001f2]:sw t5, 0(gp)<br>     |
|  24|[0x80003260]<br>0x00100000|- rs2 : x15<br> - rd : x24<br> - rs2_val == 1048576<br>                                                                                    |[0x800001fa]:c.mv s8, a5<br> [0x800001fc]:sw s8, 4(gp)<br>     |
|  25|[0x80003264]<br>0x00200000|- rs2 : x1<br> - rd : x2<br> - rs2_val == 2097152<br>                                                                                      |[0x80000204]:c.mv sp, ra<br> [0x80000206]:sw sp, 8(gp)<br>     |
|  26|[0x80003268]<br>0x00400000|- rs2 : x29<br> - rd : x9<br> - rs2_val == 4194304<br>                                                                                     |[0x8000020e]:c.mv s1, t4<br> [0x80000210]:sw s1, 12(gp)<br>    |
|  27|[0x8000326c]<br>0x00800000|- rs2 : x8<br> - rd : x1<br> - rs2_val == 8388608<br>                                                                                      |[0x80000218]:c.mv ra, fp<br> [0x8000021a]:sw ra, 16(gp)<br>    |
|  28|[0x80003270]<br>0x01000000|- rs2 : x30<br> - rd : x12<br> - rs2_val == 16777216<br>                                                                                   |[0x80000222]:c.mv a2, t5<br> [0x80000224]:sw a2, 20(gp)<br>    |
|  29|[0x80003274]<br>0x02000000|- rs2 : x19<br> - rd : x10<br> - rs2_val == 33554432<br>                                                                                   |[0x8000022c]:c.mv a0, s3<br> [0x8000022e]:sw a0, 24(gp)<br>    |
|  30|[0x80003278]<br>0x04000000|- rs2 : x18<br> - rd : x11<br> - rs2_val == 67108864<br>                                                                                   |[0x80000236]:c.mv a1, s2<br> [0x80000238]:sw a1, 28(gp)<br>    |
|  31|[0x8000327c]<br>0x08000000|- rs2 : x4<br> - rd : x20<br> - rs2_val == 134217728<br>                                                                                   |[0x80000240]:c.mv s4, tp<br> [0x80000242]:sw s4, 32(gp)<br>    |
|  32|[0x80003280]<br>0x10000000|- rd : x28<br> - rs2_val == 268435456<br>                                                                                                  |[0x8000024a]:c.mv t3, ra<br> [0x8000024c]:sw t3, 36(gp)<br>    |
|  33|[0x80003284]<br>0x20000000|- rs2_val == 536870912<br>                                                                                                                 |[0x80000254]:c.mv a0, a1<br> [0x80000256]:sw a0, 40(gp)<br>    |
|  34|[0x80003288]<br>0x40000000|- rs2_val == 1073741824<br>                                                                                                                |[0x8000025e]:c.mv a0, a1<br> [0x80000260]:sw a0, 44(gp)<br>    |
|  35|[0x8000328c]<br>0xFFFFFFFE|- rs2_val == -2<br>                                                                                                                        |[0x80000268]:c.mv a0, a1<br> [0x8000026a]:sw a0, 48(gp)<br>    |
|  36|[0x80003290]<br>0xFFFFFFFD|- rs2_val == -3<br>                                                                                                                        |[0x80000272]:c.mv a0, a1<br> [0x80000274]:sw a0, 52(gp)<br>    |
|  37|[0x80003294]<br>0xDFFFFFFF|- rs2_val == -536870913<br>                                                                                                                |[0x80000280]:c.mv a0, a1<br> [0x80000282]:sw a0, 56(gp)<br>    |
|  38|[0x80003298]<br>0xBFFFFFFF|- rs2_val == -1073741825<br>                                                                                                               |[0x8000028e]:c.mv a0, a1<br> [0x80000290]:sw a0, 60(gp)<br>    |
|  39|[0x8000329c]<br>0x55555555|- rs2_val == 1431655765<br>                                                                                                                |[0x8000029c]:c.mv a0, a1<br> [0x8000029e]:sw a0, 64(gp)<br>    |
|  40|[0x800032a0]<br>0xAAAAAAAA|- rs2_val == -1431655766<br>                                                                                                               |[0x800002aa]:c.mv a0, a1<br> [0x800002ac]:sw a0, 68(gp)<br>    |
|  41|[0x800032a4]<br>0xFFFFFFFB|- rs2_val == -5<br>                                                                                                                        |[0x800002b4]:c.mv a0, a1<br> [0x800002b6]:sw a0, 72(gp)<br>    |
|  42|[0x800032a8]<br>0xFFFFFFF7|- rs2_val == -9<br>                                                                                                                        |[0x800002be]:c.mv a0, a1<br> [0x800002c0]:sw a0, 76(gp)<br>    |
|  43|[0x800032ac]<br>0xFFFFFFEF|- rs2_val == -17<br>                                                                                                                       |[0x800002c8]:c.mv a0, a1<br> [0x800002ca]:sw a0, 80(gp)<br>    |
|  44|[0x800032b0]<br>0xFFFFFFDF|- rs2_val == -33<br>                                                                                                                       |[0x800002d2]:c.mv a0, a1<br> [0x800002d4]:sw a0, 84(gp)<br>    |
|  45|[0x800032b4]<br>0xFFFFFFBF|- rs2_val == -65<br>                                                                                                                       |[0x800002dc]:c.mv a0, a1<br> [0x800002de]:sw a0, 88(gp)<br>    |
|  46|[0x800032b8]<br>0xFFFFFF7F|- rs2_val == -129<br>                                                                                                                      |[0x800002e6]:c.mv a0, a1<br> [0x800002e8]:sw a0, 92(gp)<br>    |
|  47|[0x800032bc]<br>0xFFFFFEFF|- rs2_val == -257<br>                                                                                                                      |[0x800002f0]:c.mv a0, a1<br> [0x800002f2]:sw a0, 96(gp)<br>    |
|  48|[0x800032c0]<br>0xFFFFFDFF|- rs2_val == -513<br>                                                                                                                      |[0x800002fa]:c.mv a0, a1<br> [0x800002fc]:sw a0, 100(gp)<br>   |
|  49|[0x800032c4]<br>0xFFFFFBFF|- rs2_val == -1025<br>                                                                                                                     |[0x80000304]:c.mv a0, a1<br> [0x80000306]:sw a0, 104(gp)<br>   |
|  50|[0x800032c8]<br>0xFFFFF7FF|- rs2_val == -2049<br>                                                                                                                     |[0x80000312]:c.mv a0, a1<br> [0x80000314]:sw a0, 108(gp)<br>   |
|  51|[0x800032cc]<br>0xFFFFEFFF|- rs2_val == -4097<br>                                                                                                                     |[0x80000320]:c.mv a0, a1<br> [0x80000322]:sw a0, 112(gp)<br>   |
|  52|[0x800032d0]<br>0xFFFFDFFF|- rs2_val == -8193<br>                                                                                                                     |[0x8000032e]:c.mv a0, a1<br> [0x80000330]:sw a0, 116(gp)<br>   |
|  53|[0x800032d4]<br>0xFFFFBFFF|- rs2_val == -16385<br>                                                                                                                    |[0x8000033c]:c.mv a0, a1<br> [0x8000033e]:sw a0, 120(gp)<br>   |
|  54|[0x800032d8]<br>0xFFFF7FFF|- rs2_val == -32769<br>                                                                                                                    |[0x8000034a]:c.mv a0, a1<br> [0x8000034c]:sw a0, 124(gp)<br>   |
|  55|[0x800032dc]<br>0xFFFEFFFF|- rs2_val == -65537<br>                                                                                                                    |[0x80000358]:c.mv a0, a1<br> [0x8000035a]:sw a0, 128(gp)<br>   |
|  56|[0x800032e0]<br>0xFFFDFFFF|- rs2_val == -131073<br>                                                                                                                   |[0x80000366]:c.mv a0, a1<br> [0x80000368]:sw a0, 132(gp)<br>   |
|  57|[0x800032e4]<br>0xFFFBFFFF|- rs2_val == -262145<br>                                                                                                                   |[0x80000374]:c.mv a0, a1<br> [0x80000376]:sw a0, 136(gp)<br>   |
|  58|[0x800032e8]<br>0xFFF7FFFF|- rs2_val == -524289<br>                                                                                                                   |[0x80000382]:c.mv a0, a1<br> [0x80000384]:sw a0, 140(gp)<br>   |
|  59|[0x800032ec]<br>0xFFEFFFFF|- rs2_val == -1048577<br>                                                                                                                  |[0x80000390]:c.mv a0, a1<br> [0x80000392]:sw a0, 144(gp)<br>   |
|  60|[0x800032f0]<br>0xFFDFFFFF|- rs2_val == -2097153<br>                                                                                                                  |[0x8000039e]:c.mv a0, a1<br> [0x800003a0]:sw a0, 148(gp)<br>   |
|  61|[0x800032f4]<br>0xFFBFFFFF|- rs2_val == -4194305<br>                                                                                                                  |[0x800003ac]:c.mv a0, a1<br> [0x800003ae]:sw a0, 152(gp)<br>   |
|  62|[0x800032f8]<br>0xFF7FFFFF|- rs2_val == -8388609<br>                                                                                                                  |[0x800003ba]:c.mv a0, a1<br> [0x800003bc]:sw a0, 156(gp)<br>   |
|  63|[0x800032fc]<br>0xFEFFFFFF|- rs2_val == -16777217<br>                                                                                                                 |[0x800003c8]:c.mv a0, a1<br> [0x800003ca]:sw a0, 160(gp)<br>   |
|  64|[0x80003300]<br>0xFDFFFFFF|- rs2_val == -33554433<br>                                                                                                                 |[0x800003d6]:c.mv a0, a1<br> [0x800003d8]:sw a0, 164(gp)<br>   |
|  65|[0x80003304]<br>0xFBFFFFFF|- rs2_val == -67108865<br>                                                                                                                 |[0x800003e4]:c.mv a0, a1<br> [0x800003e6]:sw a0, 168(gp)<br>   |
|  66|[0x80003308]<br>0xF7FFFFFF|- rs2_val == -134217729<br>                                                                                                                |[0x800003f2]:c.mv a0, a1<br> [0x800003f4]:sw a0, 172(gp)<br>   |
|  67|[0x8000330c]<br>0xEFFFFFFF|- rs2_val == -268435457<br>                                                                                                                |[0x80000400]:c.mv a0, a1<br> [0x80000402]:sw a0, 176(gp)<br>   |
