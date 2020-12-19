
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
| COV_LABELS                | sll      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sll-01.S/sll-01.S    |
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
      [0x800006fc]:sll a2, a0, a1
      [0x80000700]:sw a2, 268(s2)
 -- Signature Address: 0x80002164 Data: 0x0000A000
 -- Redundant Coverpoints hit by the op
      - opcode : sll
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val==5




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000710]:sll a2, a0, a1
      [0x80000714]:sw a2, 272(s2)
 -- Signature Address: 0x80002168 Data: 0xFFFF7FFF
 -- Redundant Coverpoints hit by the op
      - opcode : sll
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val == 0
      - rs1_val == -32769




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000720]:sll a2, a0, a1
      [0x80000724]:sw a2, 276(s2)
 -- Signature Address: 0x8000216c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : sll
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen
      - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen
      - rs1_val == -2147483648
      - rs2_val == 16






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

|s.no|        signature         |                                                                                              coverpoints                                                                                              |                               code                               |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------|
|   1|[0x80002010]<br>0xFFFDFC00|- opcode : sll<br> - rs1 : x16<br> - rs2 : x28<br> - rd : x28<br> - rs2 == rd != rs1<br> - rs1_val < 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == -129<br> - rs2_val == 10<br>                |[0x80000108]:sll t3, a6, t3<br> [0x8000010c]:sw t3, 0(sp)<br>     |
|   2|[0x80002014]<br>0x00000000|- rs1 : x21<br> - rs2 : x21<br> - rd : x0<br> - rs1 == rs2 != rd<br> - rs1_val > 0 and rs2_val > 0 and rs2_val < xlen<br> - rs1_val == rs2_val and rs2_val > 0 and rs2_val < xlen<br> - rs1_val==5<br> |[0x80000118]:sll zero, s5, s5<br> [0x8000011c]:sw zero, 4(sp)<br> |
|   3|[0x80002018]<br>0x80000000|- rs1 : x18<br> - rs2 : x18<br> - rd : x18<br> - rs1 == rs2 == rd<br> - rs1_val == -32769<br>                                                                                                          |[0x80000130]:sll s2, s2, s2<br> [0x80000134]:sw s2, 8(sp)<br>     |
|   4|[0x8000201c]<br>0x00000007|- rs1 : x5<br> - rs2 : x13<br> - rd : x5<br> - rs1 == rd != rs2<br> - rs1_val > 0 and rs2_val == 0<br>                                                                                                 |[0x80000140]:sll t0, t0, a3<br> [0x80000144]:sw t0, 12(sp)<br>    |
|   5|[0x80002020]<br>0x00000180|- rs1 : x22<br> - rs2 : x12<br> - rd : x23<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val==6<br>                                                                                          |[0x80000150]:sll s7, s6, a2<br> [0x80000154]:sw s7, 16(sp)<br>    |
|   6|[0x80002024]<br>0x80000000|- rs1 : x19<br> - rs2 : x0<br> - rd : x6<br> - rs1_val < 0 and rs2_val == 0<br> - rs1_val == (-2**(xlen-1)) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == -2147483648<br>                       |[0x80000160]:sll t1, s3, zero<br> [0x80000164]:sw t1, 20(sp)<br>  |
|   7|[0x80002028]<br>0x00000000|- rs1 : x25<br> - rs2 : x24<br> - rd : x13<br> - rs1_val == 0 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val==0<br> - rs2_val == 4<br>                                                              |[0x80000170]:sll a3, s9, s8<br> [0x80000174]:sw a3, 24(sp)<br>    |
|   8|[0x8000202c]<br>0xFFE00000|- rs1 : x12<br> - rs2 : x26<br> - rd : x16<br> - rs1_val == (2**(xlen-1)-1) and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 2147483647<br> - rs2_val == 21<br>                                    |[0x80000184]:sll a6, a2, s10<br> [0x80000188]:sw a6, 28(sp)<br>   |
|   9|[0x80002030]<br>0x00000010|- rs1 : x6<br> - rs2 : x14<br> - rd : x20<br> - rs1_val == 1 and rs2_val >= 0 and rs2_val < xlen<br> - rs1_val == 1<br>                                                                                |[0x80000194]:sll s4, t1, a4<br> [0x80000198]:sw s4, 32(sp)<br>    |
|  10|[0x80002034]<br>0x00000000|- rs1 : x14<br> - rs2 : x1<br> - rd : x22<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                                                                      |[0x800001a4]:sll s6, a4, ra<br> [0x800001a8]:sw s6, 36(sp)<br>    |
|  11|[0x80002038]<br>0x00000010|- rs1 : x29<br> - rs2 : x7<br> - rd : x21<br> - rs1_val == 4<br> - rs1_val==4<br> - rs2_val == 2<br>                                                                                                   |[0x800001b4]:sll s5, t4, t2<br> [0x800001b8]:sw s5, 40(sp)<br>    |
|  12|[0x8000203c]<br>0x00000000|- rs1 : x31<br> - rs2 : x10<br> - rd : x4<br> - rs1_val == 8<br>                                                                                                                                       |[0x800001c4]:sll tp, t6, a0<br> [0x800001c8]:sw tp, 44(sp)<br>    |
|  13|[0x80002040]<br>0x00000000|- rs1 : x17<br> - rs2 : x20<br> - rd : x7<br> - rs1_val == 16<br>                                                                                                                                      |[0x800001d4]:sll t2, a7, s4<br> [0x800001d8]:sw t2, 48(sp)<br>    |
|  14|[0x80002044]<br>0x10000000|- rs1 : x20<br> - rs2 : x11<br> - rd : x12<br> - rs1_val == 32<br> - rs2_val == 23<br>                                                                                                                 |[0x800001e4]:sll a2, s4, a1<br> [0x800001e8]:sw a2, 52(sp)<br>    |
|  15|[0x80002048]<br>0x00800000|- rs1 : x11<br> - rs2 : x22<br> - rd : x3<br> - rs1_val == 64<br>                                                                                                                                      |[0x800001f4]:sll gp, a1, s6<br> [0x800001f8]:sw gp, 56(sp)<br>    |
|  16|[0x8000204c]<br>0x00000000|- rs1 : x0<br> - rs2 : x30<br> - rd : x24<br> - rs2_val == 16<br>                                                                                                                                      |[0x80000204]:sll s8, zero, t5<br> [0x80000208]:sw s8, 60(sp)<br>  |
|  17|[0x80002050]<br>0x00000000|- rs1 : x3<br> - rs2 : x31<br> - rd : x8<br> - rs1_val == 256<br> - rs2_val == 27<br>                                                                                                                  |[0x80000214]:sll fp, gp, t6<br> [0x80000218]:sw fp, 64(sp)<br>    |
|  18|[0x80002054]<br>0x00000200|- rs1 : x27<br> - rs2 : x17<br> - rd : x10<br> - rs1_val == 512<br>                                                                                                                                    |[0x80000224]:sll a0, s11, a7<br> [0x80000228]:sw a0, 68(sp)<br>   |
|  19|[0x80002058]<br>0x00000000|- rs1 : x10<br> - rs2 : x19<br> - rd : x11<br> - rs1_val == 1024<br>                                                                                                                                   |[0x8000023c]:sll a1, a0, s3<br> [0x80000240]:sw a1, 0(s2)<br>     |
|  20|[0x8000205c]<br>0x00020000|- rs1 : x8<br> - rs2 : x27<br> - rd : x1<br> - rs1_val == 2048<br>                                                                                                                                     |[0x80000250]:sll ra, fp, s11<br> [0x80000254]:sw ra, 4(s2)<br>    |
|  21|[0x80002060]<br>0x10000000|- rs1 : x28<br> - rs2 : x9<br> - rd : x25<br> - rs1_val == 4096<br>                                                                                                                                    |[0x80000260]:sll s9, t3, s1<br> [0x80000264]:sw s9, 8(s2)<br>     |
|  22|[0x80002064]<br>0x04000000|- rs1 : x2<br> - rs2 : x15<br> - rd : x27<br> - rs1_val == 8192<br>                                                                                                                                    |[0x80000270]:sll s11, sp, a5<br> [0x80000274]:sw s11, 12(s2)<br>  |
|  23|[0x80002068]<br>0x00000000|- rs1 : x24<br> - rs2 : x29<br> - rd : x26<br> - rs1_val == 16384<br>                                                                                                                                  |[0x80000280]:sll s10, s8, t4<br> [0x80000284]:sw s10, 16(s2)<br>  |
|  24|[0x8000206c]<br>0x00000000|- rs1 : x1<br> - rs2 : x23<br> - rd : x9<br> - rs1_val == 32768<br>                                                                                                                                    |[0x80000290]:sll s1, ra, s7<br> [0x80000294]:sw s1, 20(s2)<br>    |
|  25|[0x80002070]<br>0x00000000|- rs1 : x23<br> - rs2 : x16<br> - rd : x14<br> - rs1_val == 65536<br>                                                                                                                                  |[0x800002a0]:sll a4, s7, a6<br> [0x800002a4]:sw a4, 24(s2)<br>    |
|  26|[0x80002074]<br>0x00000000|- rs1 : x4<br> - rs2 : x3<br> - rd : x17<br> - rs1_val == 131072<br>                                                                                                                                   |[0x800002b0]:sll a7, tp, gp<br> [0x800002b4]:sw a7, 28(s2)<br>    |
|  27|[0x80002078]<br>0x00000000|- rs1 : x7<br> - rs2 : x4<br> - rd : x15<br> - rs1_val == 262144<br>                                                                                                                                   |[0x800002c0]:sll a5, t2, tp<br> [0x800002c4]:sw a5, 32(s2)<br>    |
|  28|[0x8000207c]<br>0x00000000|- rs1 : x9<br> - rs2 : x2<br> - rd : x29<br> - rs1_val == 524288<br>                                                                                                                                   |[0x800002d0]:sll t4, s1, sp<br> [0x800002d4]:sw t4, 36(s2)<br>    |
|  29|[0x80002080]<br>0x80000000|- rs1 : x15<br> - rs2 : x8<br> - rd : x31<br> - rs1_val == 1048576<br>                                                                                                                                 |[0x800002e0]:sll t6, a5, fp<br> [0x800002e4]:sw t6, 40(s2)<br>    |
|  30|[0x80002084]<br>0x00000000|- rs1 : x26<br> - rs2 : x6<br> - rd : x30<br> - rs1_val == 2097152<br>                                                                                                                                 |[0x800002f0]:sll t5, s10, t1<br> [0x800002f4]:sw t5, 44(s2)<br>   |
|  31|[0x80002088]<br>0x80000000|- rs1 : x30<br> - rs2 : x5<br> - rd : x19<br> - rs1_val == 4194304<br>                                                                                                                                 |[0x80000300]:sll s3, t5, t0<br> [0x80000304]:sw s3, 48(s2)<br>    |
|  32|[0x8000208c]<br>0x08000000|- rs1 : x13<br> - rs2 : x25<br> - rd : x2<br> - rs1_val == 8388608<br>                                                                                                                                 |[0x80000310]:sll sp, a3, s9<br> [0x80000314]:sw sp, 52(s2)<br>    |
|  33|[0x80002090]<br>0x04000000|- rs1_val == 16777216<br>                                                                                                                                                                              |[0x80000320]:sll a2, a0, a1<br> [0x80000324]:sw a2, 56(s2)<br>    |
|  34|[0x80002094]<br>0x20000000|- rs1_val == 33554432<br>                                                                                                                                                                              |[0x80000330]:sll a2, a0, a1<br> [0x80000334]:sw a2, 60(s2)<br>    |
|  35|[0x80002098]<br>0x00000000|- rs1_val == 67108864<br> - rs2_val == 8<br>                                                                                                                                                           |[0x80000340]:sll a2, a0, a1<br> [0x80000344]:sw a2, 64(s2)<br>    |
|  36|[0x8000209c]<br>0x00000000|- rs1_val == 134217728<br> - rs2_val == 29<br>                                                                                                                                                         |[0x80000350]:sll a2, a0, a1<br> [0x80000354]:sw a2, 68(s2)<br>    |
|  37|[0x800020a0]<br>0x00000000|- rs1_val == 268435456<br>                                                                                                                                                                             |[0x80000360]:sll a2, a0, a1<br> [0x80000364]:sw a2, 72(s2)<br>    |
|  38|[0x800020a4]<br>0x00000000|- rs1_val == 536870912<br>                                                                                                                                                                             |[0x80000370]:sll a2, a0, a1<br> [0x80000374]:sw a2, 76(s2)<br>    |
|  39|[0x800020a8]<br>0x00000000|- rs1_val == 1073741824<br> - rs2_val == 15<br>                                                                                                                                                        |[0x80000380]:sll a2, a0, a1<br> [0x80000384]:sw a2, 80(s2)<br>    |
|  40|[0x800020ac]<br>0xC0000000|- rs1_val == -2<br>                                                                                                                                                                                    |[0x80000390]:sll a2, a0, a1<br> [0x80000394]:sw a2, 84(s2)<br>    |
|  41|[0x800020b0]<br>0x40000000|- rs1_val == -3<br> - rs2_val == 30<br>                                                                                                                                                                |[0x800003a0]:sll a2, a0, a1<br> [0x800003a4]:sw a2, 88(s2)<br>    |
|  42|[0x800020b4]<br>0xFF600000|- rs1_val == -5<br>                                                                                                                                                                                    |[0x800003b0]:sll a2, a0, a1<br> [0x800003b4]:sw a2, 92(s2)<br>    |
|  43|[0x800020b8]<br>0xFFB80000|- rs1_val == -9<br>                                                                                                                                                                                    |[0x800003c0]:sll a2, a0, a1<br> [0x800003c4]:sw a2, 96(s2)<br>    |
|  44|[0x800020bc]<br>0xFFFFBC00|- rs1_val == -17<br>                                                                                                                                                                                   |[0x800003d0]:sll a2, a0, a1<br> [0x800003d4]:sw a2, 100(s2)<br>   |
|  45|[0x800020c0]<br>0xFFFFDF00|- rs1_val == -33<br>                                                                                                                                                                                   |[0x800003e0]:sll a2, a0, a1<br> [0x800003e4]:sw a2, 104(s2)<br>   |
|  46|[0x800020c4]<br>0xFFFFEFC0|- rs1_val == -65<br>                                                                                                                                                                                   |[0x800003f0]:sll a2, a0, a1<br> [0x800003f4]:sw a2, 108(s2)<br>   |
|  47|[0x800020c8]<br>0xFFFFF7F8|- rs1_val == -257<br>                                                                                                                                                                                  |[0x80000400]:sll a2, a0, a1<br> [0x80000404]:sw a2, 112(s2)<br>   |
|  48|[0x800020cc]<br>0xFFFDFF00|- rs1_val == -513<br>                                                                                                                                                                                  |[0x80000410]:sll a2, a0, a1<br> [0x80000414]:sw a2, 116(s2)<br>   |
|  49|[0x800020d0]<br>0xFFFFF7FE|- rs1_val == -1025<br> - rs2_val == 1<br>                                                                                                                                                              |[0x80000420]:sll a2, a0, a1<br> [0x80000424]:sw a2, 120(s2)<br>   |
|  50|[0x800020d4]<br>0xC0000000|- rs1_val == -2049<br>                                                                                                                                                                                 |[0x80000434]:sll a2, a0, a1<br> [0x80000438]:sw a2, 124(s2)<br>   |
|  51|[0x800020d8]<br>0xFFBFFC00|- rs1_val == -4097<br>                                                                                                                                                                                 |[0x80000448]:sll a2, a0, a1<br> [0x8000044c]:sw a2, 128(s2)<br>   |
|  52|[0x800020dc]<br>0xEFFF8000|- rs1_val == -8193<br>                                                                                                                                                                                 |[0x8000045c]:sll a2, a0, a1<br> [0x80000460]:sw a2, 132(s2)<br>   |
|  53|[0x800020e0]<br>0xFFE00000|- rs1_val == -16385<br>                                                                                                                                                                                |[0x80000470]:sll a2, a0, a1<br> [0x80000474]:sw a2, 136(s2)<br>   |
|  54|[0x800020e4]<br>0xFFEFFFF0|- rs1_val == -65537<br>                                                                                                                                                                                |[0x80000484]:sll a2, a0, a1<br> [0x80000488]:sw a2, 140(s2)<br>   |
|  55|[0x800020e8]<br>0xFFFE0000|- rs1_val == -131073<br>                                                                                                                                                                               |[0x80000498]:sll a2, a0, a1<br> [0x8000049c]:sw a2, 144(s2)<br>   |
|  56|[0x800020ec]<br>0xFFFBFFFF|- rs1_val == -262145<br>                                                                                                                                                                               |[0x800004ac]:sll a2, a0, a1<br> [0x800004b0]:sw a2, 148(s2)<br>   |
|  57|[0x800020f0]<br>0xFBFFFFF8|- rs1_val == -8388609<br>                                                                                                                                                                              |[0x800004c0]:sll a2, a0, a1<br> [0x800004c4]:sw a2, 152(s2)<br>   |
|  58|[0x800020f4]<br>0xFEFFFFFF|- rs1_val == -16777217<br>                                                                                                                                                                             |[0x800004d4]:sll a2, a0, a1<br> [0x800004d8]:sw a2, 156(s2)<br>   |
|  59|[0x800020f8]<br>0xFBFFFFFE|- rs1_val == -33554433<br>                                                                                                                                                                             |[0x800004e8]:sll a2, a0, a1<br> [0x800004ec]:sw a2, 160(s2)<br>   |
|  60|[0x800020fc]<br>0xFFF80000|- rs1_val == -67108865<br>                                                                                                                                                                             |[0x800004fc]:sll a2, a0, a1<br> [0x80000500]:sw a2, 164(s2)<br>   |
|  61|[0x80002100]<br>0xC0000000|- rs1_val == -134217729<br>                                                                                                                                                                            |[0x80000510]:sll a2, a0, a1<br> [0x80000514]:sw a2, 168(s2)<br>   |
|  62|[0x80002104]<br>0xFFF80000|- rs1_val == -268435457<br>                                                                                                                                                                            |[0x80000524]:sll a2, a0, a1<br> [0x80000528]:sw a2, 172(s2)<br>   |
|  63|[0x80002108]<br>0xFFFC0000|- rs1_val == -536870913<br>                                                                                                                                                                            |[0x80000538]:sll a2, a0, a1<br> [0x8000053c]:sw a2, 176(s2)<br>   |
|  64|[0x8000210c]<br>0xFFFFFFE0|- rs1_val == -1073741825<br>                                                                                                                                                                           |[0x8000054c]:sll a2, a0, a1<br> [0x80000550]:sw a2, 180(s2)<br>   |
|  65|[0x80002110]<br>0x55555000|- rs1_val == 1431655765<br> - rs1_val==1431655765<br>                                                                                                                                                  |[0x80000560]:sll a2, a0, a1<br> [0x80000564]:sw a2, 184(s2)<br>   |
|  66|[0x80002114]<br>0xAAAAAAA0|- rs1_val == -1431655766<br> - rs1_val==-1431655766<br>                                                                                                                                                |[0x80000574]:sll a2, a0, a1<br> [0x80000578]:sw a2, 188(s2)<br>   |
|  67|[0x80002118]<br>0x18000000|- rs1_val==3<br>                                                                                                                                                                                       |[0x80000584]:sll a2, a0, a1<br> [0x80000588]:sw a2, 192(s2)<br>   |
|  68|[0x8000211c]<br>0x33333333|- rs1_val==858993459<br>                                                                                                                                                                               |[0x80000598]:sll a2, a0, a1<br> [0x8000059c]:sw a2, 196(s2)<br>   |
|  69|[0x80002120]<br>0x33333000|- rs1_val==1717986918<br>                                                                                                                                                                              |[0x800005ac]:sll a2, a0, a1<br> [0x800005b0]:sw a2, 200(s2)<br>   |
|  70|[0x80002124]<br>0xFFE95F80|- rs1_val==-46340<br>                                                                                                                                                                                  |[0x800005c0]:sll a2, a0, a1<br> [0x800005c4]:sw a2, 204(s2)<br>   |
|  71|[0x80002128]<br>0x28000000|- rs1_val==46341<br>                                                                                                                                                                                   |[0x800005d4]:sll a2, a0, a1<br> [0x800005d8]:sw a2, 208(s2)<br>   |
|  72|[0x8000212c]<br>0xE8000000|- rs1_val==-46339<br>                                                                                                                                                                                  |[0x800005e8]:sll a2, a0, a1<br> [0x800005ec]:sw a2, 212(s2)<br>   |
|  73|[0x80002130]<br>0xB5040000|- rs1_val==46340<br>                                                                                                                                                                                   |[0x800005fc]:sll a2, a0, a1<br> [0x80000600]:sw a2, 216(s2)<br>   |
|  74|[0x80002134]<br>0xAAAAAAA8|- rs1_val==1431655764<br>                                                                                                                                                                              |[0x80000610]:sll a2, a0, a1<br> [0x80000614]:sw a2, 220(s2)<br>   |
|  75|[0x80002138]<br>0xFF7FFFF8|- rs1_val == -1048577<br>                                                                                                                                                                              |[0x80000624]:sll a2, a0, a1<br> [0x80000628]:sw a2, 224(s2)<br>   |
|  76|[0x8000213c]<br>0xE0000000|- rs1_val==1717986919<br>                                                                                                                                                                              |[0x80000638]:sll a2, a0, a1<br> [0x8000063c]:sw a2, 228(s2)<br>   |
|  77|[0x80002140]<br>0xCCCCCCC8|- rs1_val==858993458<br>                                                                                                                                                                               |[0x8000064c]:sll a2, a0, a1<br> [0x80000650]:sw a2, 232(s2)<br>   |
|  78|[0x80002144]<br>0x99999994|- rs1_val==1717986917<br>                                                                                                                                                                              |[0x80000660]:sll a2, a0, a1<br> [0x80000664]:sw a2, 236(s2)<br>   |
|  79|[0x80002148]<br>0x05A81800|- rs1_val==46339<br>                                                                                                                                                                                   |[0x80000674]:sll a2, a0, a1<br> [0x80000678]:sw a2, 240(s2)<br>   |
|  80|[0x8000214c]<br>0xAAAAAAAC|- rs1_val==1431655766<br>                                                                                                                                                                              |[0x80000688]:sll a2, a0, a1<br> [0x8000068c]:sw a2, 244(s2)<br>   |
|  81|[0x80002150]<br>0x55555800|- rs1_val==-1431655765<br>                                                                                                                                                                             |[0x8000069c]:sll a2, a0, a1<br> [0x800006a0]:sw a2, 248(s2)<br>   |
|  82|[0x80002154]<br>0xFFFE0000|- rs1_val == -524289<br>                                                                                                                                                                               |[0x800006b0]:sll a2, a0, a1<br> [0x800006b4]:sw a2, 252(s2)<br>   |
|  83|[0x80002158]<br>0x33333340|- rs1_val==858993460<br>                                                                                                                                                                               |[0x800006c4]:sll a2, a0, a1<br> [0x800006c8]:sw a2, 256(s2)<br>   |
|  84|[0x8000215c]<br>0xFEFFFFF8|- rs1_val == -2097153<br>                                                                                                                                                                              |[0x800006d8]:sll a2, a0, a1<br> [0x800006dc]:sw a2, 260(s2)<br>   |
|  85|[0x80002160]<br>0xFFE00000|- rs1_val == -4194305<br>                                                                                                                                                                              |[0x800006ec]:sll a2, a0, a1<br> [0x800006f0]:sw a2, 264(s2)<br>   |
|  86|[0x80002170]<br>0x00800000|- rs1_val == 128<br>                                                                                                                                                                                   |[0x80000730]:sll a2, a0, a1<br> [0x80000734]:sw a2, 280(s2)<br>   |
