
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001430')]      |
| SIG_REGION                | [('0x80003010', '0x80003430', '132 dwords')]      |
| COV_LABELS                | sw-align      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/sw-align-01.S/sw-align-01.S    |
| Total Number of coverpoints| 205     |
| Total Coverpoints Hit     | 205      |
| Total Signature Updates   | 132      |
| STAT1                     | 132      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```


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

|s.no|            signature             |                                                                                             coverpoints                                                                                              |               code               |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------|
|   1|[0x80003010]<br>0x8000000000000000|- opcode : sw<br> - rs1 : x11<br> - rs2 : x26<br> - rs1 != rs2<br> - rs2_val == (-2**(xlen-1))<br> - ea_align == 0 and (imm_val % 4) == 0<br> - imm_val < 0<br> - rs2_val == -9223372036854775808<br> |[0x800003ac]:sw s10, 4088(a1)<br> |
|   2|[0x80003018]<br>0x0000000000000000|- rs1 : x7<br> - rs2 : x17<br> - rs2_val == 0<br> - imm_val > 0<br>                                                                                                                                   |[0x800003c8]:sw a7, 512(t2)<br>   |
|   3|[0x80003020]<br>0x7FFFFFFFFFFFFFFF|- rs1 : x2<br> - rs2 : x6<br> - rs2_val == (2**(xlen-1)-1)<br> - rs2_val == 9223372036854775807<br>                                                                                                   |[0x800003ec]:sw t1, 4088(sp)<br>  |
|   4|[0x80003028]<br>0x0000000000000001|- rs1 : x15<br> - rs2 : x9<br> - rs2_val == 1<br> - ea_align == 0 and (imm_val % 4) == 1<br>                                                                                                          |[0x80000408]:sw s1, 1365(a5)<br>  |
|   5|[0x80003030]<br>0xFFFFFFFFFFFFFFDF|- rs1 : x17<br> - rs2 : x14<br> - ea_align == 0 and (imm_val % 4) == 2<br> - rs2_val == -33<br>                                                                                                       |[0x80000424]:sw a4, 4090(a7)<br>  |
|   6|[0x80003038]<br>0x0200000000000000|- rs1 : x29<br> - rs2 : x27<br> - ea_align == 0 and (imm_val % 4) == 3<br> - rs2_val == 144115188075855872<br>                                                                                        |[0x80000444]:sw s11, 4087(t4)<br> |
|   7|[0x80003040]<br>0x0000000000000002|- rs1 : x31<br> - rs2 : x25<br> - imm_val == 0<br> - rs2_val == 2<br>                                                                                                                                 |[0x80000460]:sw s9, 0(t6)<br>     |
|   8|[0x80003048]<br>0x0000000000000004|- rs1 : x26<br> - rs2 : x19<br> - rs2_val == 4<br>                                                                                                                                                    |[0x8000047c]:sw s3, 2047(s10)<br> |
|   9|[0x80003050]<br>0x0000000000000008|- rs1 : x24<br> - rs2 : x29<br> - rs2_val == 8<br>                                                                                                                                                    |[0x80000498]:sw t4, 4079(s8)<br>  |
|  10|[0x80003058]<br>0x0000000000000010|- rs1 : x21<br> - rs2 : x1<br> - rs2_val == 16<br>                                                                                                                                                    |[0x800004b4]:sw ra, 3583(s5)<br>  |
|  11|[0x80003060]<br>0x0000000000000020|- rs1 : x23<br> - rs2 : x4<br> - rs2_val == 32<br>                                                                                                                                                    |[0x800004d0]:sw tp, 0(s7)<br>     |
|  12|[0x80003068]<br>0x0000000000000040|- rs1 : x28<br> - rs2 : x2<br> - rs2_val == 64<br>                                                                                                                                                    |[0x800004ec]:sw sp, 2048(t3)<br>  |
|  13|[0x80003070]<br>0x0000000000000080|- rs1 : x3<br> - rs2 : x16<br> - rs2_val == 128<br>                                                                                                                                                   |[0x80000508]:sw a6, 6(gp)<br>     |
|  14|[0x80003078]<br>0x0000000000000100|- rs1 : x14<br> - rs2 : x21<br> - rs2_val == 256<br>                                                                                                                                                  |[0x80000524]:sw s5, 3839(a4)<br>  |
|  15|[0x80003080]<br>0x0000000000000200|- rs1 : x16<br> - rs2 : x10<br> - rs2_val == 512<br>                                                                                                                                                  |[0x80000540]:sw a0, 2048(a6)<br>  |
|  16|[0x80003088]<br>0x0000000000000400|- rs1 : x13<br> - rs2 : x31<br> - rs2_val == 1024<br>                                                                                                                                                 |[0x8000055c]:sw t6, 0(a3)<br>     |
|  17|[0x80003090]<br>0x0000000000000800|- rs1 : x10<br> - rs2 : x8<br> - rs2_val == 2048<br>                                                                                                                                                  |[0x8000057c]:sw fp, 4095(a0)<br>  |
|  18|[0x80003098]<br>0x0000000000001000|- rs1 : x30<br> - rs2 : x28<br> - rs2_val == 4096<br>                                                                                                                                                 |[0x80000598]:sw t3, 1365(t5)<br>  |
|  19|[0x800030a0]<br>0x0000000000002000|- rs1 : x9<br> - rs2 : x20<br> - rs2_val == 8192<br>                                                                                                                                                  |[0x800005b4]:sw s4, 128(s1)<br>   |
|  20|[0x800030a8]<br>0x0000000000004000|- rs1 : x18<br> - rs2 : x23<br> - rs2_val == 16384<br>                                                                                                                                                |[0x800005d0]:sw s7, 2048(s2)<br>  |
|  21|[0x800030b0]<br>0x0000000000008000|- rs1 : x4<br> - rs2 : x3<br> - rs2_val == 32768<br>                                                                                                                                                  |[0x800005f4]:sw gp, 5(tp)<br>     |
|  22|[0x800030b8]<br>0x0000000000010000|- rs1 : x8<br> - rs2 : x12<br> - rs2_val == 65536<br>                                                                                                                                                 |[0x80000610]:sw a2, 4093(fp)<br>  |
|  23|[0x800030c0]<br>0x0000000000020000|- rs1 : x25<br> - rs2 : x5<br> - rs2_val == 131072<br>                                                                                                                                                |[0x8000062c]:sw t0, 6(s9)<br>     |
|  24|[0x800030c8]<br>0x0000000000040000|- rs1 : x27<br> - rs2 : x7<br> - rs2_val == 262144<br>                                                                                                                                                |[0x80000648]:sw t2, 4090(s11)<br> |
|  25|[0x800030d0]<br>0x0000000000000000|- rs1 : x22<br> - rs2 : x0<br>                                                                                                                                                                        |[0x80000664]:sw zero, 4(s6)<br>   |
|  26|[0x800030d8]<br>0x0000000000100000|- rs1 : x1<br> - rs2 : x15<br> - rs2_val == 1048576<br>                                                                                                                                               |[0x80000680]:sw a5, 4092(ra)<br>  |
|  27|[0x800030e0]<br>0x0000000000200000|- rs1 : x5<br> - rs2 : x22<br> - rs2_val == 2097152<br>                                                                                                                                               |[0x8000069c]:sw s6, 4(t0)<br>     |
|  28|[0x800030e8]<br>0x0000000000400000|- rs1 : x6<br> - rs2 : x24<br> - rs2_val == 4194304<br>                                                                                                                                               |[0x800006b8]:sw s8, 4(t1)<br>     |
|  29|[0x800030f0]<br>0x0000000000800000|- rs1 : x12<br> - rs2 : x11<br> - rs2_val == 8388608<br>                                                                                                                                              |[0x800006d4]:sw a1, 3071(a2)<br>  |
|  30|[0x800030f8]<br>0x0000000001000000|- rs1 : x20<br> - rs2 : x30<br> - rs2_val == 16777216<br>                                                                                                                                             |[0x800006f0]:sw t5, 9(s4)<br>     |
|  31|[0x80003100]<br>0x0000000002000000|- rs1 : x19<br> - rs2 : x18<br> - rs2_val == 33554432<br>                                                                                                                                             |[0x8000070c]:sw s2, 32(s3)<br>    |
|  32|[0x80003108]<br>0x0000000004000000|- rs2 : x13<br> - rs2_val == 67108864<br>                                                                                                                                                             |[0x80000728]:sw a3, 6(t2)<br>     |
|  33|[0x80003110]<br>0x0000000008000000|- rs2_val == 134217728<br>                                                                                                                                                                            |[0x80000744]:sw a1, 2047(a0)<br>  |
|  34|[0x80003118]<br>0x0000000010000000|- rs2_val == 268435456<br>                                                                                                                                                                            |[0x80000760]:sw a1, 16(a0)<br>    |
|  35|[0x80003120]<br>0x0000000020000000|- rs2_val == 536870912<br>                                                                                                                                                                            |[0x8000077c]:sw a1, 2(a0)<br>     |
|  36|[0x80003128]<br>0x0000000040000000|- rs2_val == 1073741824<br>                                                                                                                                                                           |[0x80000798]:sw a1, 2048(a0)<br>  |
|  37|[0x80003130]<br>0x0000000080000000|- rs2_val == 2147483648<br>                                                                                                                                                                           |[0x800007b8]:sw a1, 32(a0)<br>    |
|  38|[0x80003138]<br>0x0000000100000000|- rs2_val == 4294967296<br>                                                                                                                                                                           |[0x800007d8]:sw a1, 3072(a0)<br>  |
|  39|[0x80003140]<br>0x0000000200000000|- rs2_val == 8589934592<br>                                                                                                                                                                           |[0x800007f8]:sw a1, 4063(a0)<br>  |
|  40|[0x80003148]<br>0x0000000400000000|- rs2_val == 17179869184<br>                                                                                                                                                                          |[0x80000818]:sw a1, 3(a0)<br>     |
|  41|[0x80003150]<br>0x0000000800000000|- rs2_val == 34359738368<br>                                                                                                                                                                          |[0x80000838]:sw a1, 4094(a0)<br>  |
|  42|[0x80003158]<br>0x0000001000000000|- rs2_val == 68719476736<br>                                                                                                                                                                          |[0x80000858]:sw a1, 4031(a0)<br>  |
|  43|[0x80003160]<br>0x0000002000000000|- rs2_val == 137438953472<br>                                                                                                                                                                         |[0x80000878]:sw a1, 4086(a0)<br>  |
|  44|[0x80003168]<br>0x0000004000000000|- rs2_val == 274877906944<br>                                                                                                                                                                         |[0x80000898]:sw a1, 8(a0)<br>     |
|  45|[0x80003170]<br>0x0000008000000000|- rs2_val == 549755813888<br>                                                                                                                                                                         |[0x800008b8]:sw a1, 3839(a0)<br>  |
|  46|[0x80003178]<br>0x0000010000000000|- rs2_val == 1099511627776<br>                                                                                                                                                                        |[0x800008d8]:sw a1, 4088(a0)<br>  |
|  47|[0x80003180]<br>0x0000020000000000|- rs2_val == 2199023255552<br>                                                                                                                                                                        |[0x800008f8]:sw a1, 4079(a0)<br>  |
|  48|[0x80003188]<br>0x0000040000000000|- rs2_val == 4398046511104<br>                                                                                                                                                                        |[0x80000918]:sw a1, 6(a0)<br>     |
|  49|[0x80003190]<br>0x0000080000000000|- rs2_val == 8796093022208<br>                                                                                                                                                                        |[0x80000938]:sw a1, 4092(a0)<br>  |
|  50|[0x80003198]<br>0x0000100000000000|- rs2_val == 17592186044416<br>                                                                                                                                                                       |[0x80000958]:sw a1, 4031(a0)<br>  |
|  51|[0x800031a0]<br>0x0000200000000000|- rs2_val == 35184372088832<br>                                                                                                                                                                       |[0x80000978]:sw a1, 3071(a0)<br>  |
|  52|[0x800031a8]<br>0x0000400000000000|- rs2_val == 70368744177664<br>                                                                                                                                                                       |[0x80000998]:sw a1, 3071(a0)<br>  |
|  53|[0x800031b0]<br>0x0000800000000000|- rs2_val == 140737488355328<br>                                                                                                                                                                      |[0x800009b8]:sw a1, 3072(a0)<br>  |
|  54|[0x800031b8]<br>0x0001000000000000|- rs2_val == 281474976710656<br>                                                                                                                                                                      |[0x800009d8]:sw a1, 256(a0)<br>   |
|  55|[0x800031c0]<br>0x0002000000000000|- rs2_val == 562949953421312<br>                                                                                                                                                                      |[0x800009f8]:sw a1, 3839(a0)<br>  |
|  56|[0x800031c8]<br>0x0004000000000000|- rs2_val == 1125899906842624<br>                                                                                                                                                                     |[0x80000a18]:sw a1, 4088(a0)<br>  |
|  57|[0x800031d0]<br>0x0008000000000000|- rs2_val == 2251799813685248<br>                                                                                                                                                                     |[0x80000a38]:sw a1, 2(a0)<br>     |
|  58|[0x800031d8]<br>0x0010000000000000|- rs2_val == 4503599627370496<br>                                                                                                                                                                     |[0x80000a58]:sw a1, 8(a0)<br>     |
|  59|[0x800031e0]<br>0x0020000000000000|- rs2_val == 9007199254740992<br>                                                                                                                                                                     |[0x80000a78]:sw a1, 16(a0)<br>    |
|  60|[0x800031e8]<br>0x0040000000000000|- rs2_val == 18014398509481984<br>                                                                                                                                                                    |[0x80000a98]:sw a1, 4(a0)<br>     |
|  61|[0x800031f0]<br>0x0080000000000000|- rs2_val == 36028797018963968<br>                                                                                                                                                                    |[0x80000ab8]:sw a1, 5(a0)<br>     |
|  62|[0x800031f8]<br>0x0100000000000000|- rs2_val == 72057594037927936<br>                                                                                                                                                                    |[0x80000ad8]:sw a1, 0(a0)<br>     |
|  63|[0x80003200]<br>0x0400000000000000|- rs2_val == 288230376151711744<br>                                                                                                                                                                   |[0x80000af8]:sw a1, 4092(a0)<br>  |
|  64|[0x80003208]<br>0x0800000000000000|- rs2_val == 576460752303423488<br>                                                                                                                                                                   |[0x80000b18]:sw a1, 3071(a0)<br>  |
|  65|[0x80003210]<br>0x1000000000000000|- rs2_val == 1152921504606846976<br>                                                                                                                                                                  |[0x80000b38]:sw a1, 4093(a0)<br>  |
|  66|[0x80003218]<br>0x2000000000000000|- rs2_val == 2305843009213693952<br>                                                                                                                                                                  |[0x80000b58]:sw a1, 3583(a0)<br>  |
|  67|[0x80003220]<br>0x4000000000000000|- rs2_val == 4611686018427387904<br>                                                                                                                                                                  |[0x80000b78]:sw a1, 32(a0)<br>    |
|  68|[0x80003228]<br>0xFFFFFFFFFFFFFFFE|- rs2_val == -2<br>                                                                                                                                                                                   |[0x80000b94]:sw a1, 4087(a0)<br>  |
|  69|[0x80003230]<br>0xFFBFFFFFFFFFFFFF|- rs2_val == -18014398509481985<br>                                                                                                                                                                   |[0x80000bb8]:sw a1, 4089(a0)<br>  |
|  70|[0x80003238]<br>0xFF7FFFFFFFFFFFFF|- rs2_val == -36028797018963969<br>                                                                                                                                                                   |[0x80000bdc]:sw a1, 2047(a0)<br>  |
|  71|[0x80003240]<br>0xFEFFFFFFFFFFFFFF|- rs2_val == -72057594037927937<br>                                                                                                                                                                   |[0x80000c00]:sw a1, 5(a0)<br>     |
|  72|[0x80003248]<br>0xFDFFFFFFFFFFFFFF|- rs2_val == -144115188075855873<br>                                                                                                                                                                  |[0x80000c24]:sw a1, 128(a0)<br>   |
|  73|[0x80003250]<br>0xFBFFFFFFFFFFFFFF|- rs2_val == -288230376151711745<br>                                                                                                                                                                  |[0x80000c48]:sw a1, 1365(a0)<br>  |
|  74|[0x80003258]<br>0xF7FFFFFFFFFFFFFF|- rs2_val == -576460752303423489<br>                                                                                                                                                                  |[0x80000c6c]:sw a1, 1024(a0)<br>  |
|  75|[0x80003260]<br>0xEFFFFFFFFFFFFFFF|- rs2_val == -1152921504606846977<br>                                                                                                                                                                 |[0x80000c90]:sw a1, 4079(a0)<br>  |
|  76|[0x80003268]<br>0xDFFFFFFFFFFFFFFF|- rs2_val == -2305843009213693953<br>                                                                                                                                                                 |[0x80000cb4]:sw a1, 3967(a0)<br>  |
|  77|[0x80003270]<br>0xBFFFFFFFFFFFFFFF|- rs2_val == -4611686018427387905<br>                                                                                                                                                                 |[0x80000cd8]:sw a1, 4092(a0)<br>  |
|  78|[0x80003278]<br>0x5555555555555555|- rs2_val == 6148914691236517205<br>                                                                                                                                                                  |[0x80000d10]:sw a1, 3967(a0)<br>  |
|  79|[0x80003280]<br>0xAAAAAAAAAAAAAAAA|- rs2_val == -6148914691236517206<br>                                                                                                                                                                 |[0x80000d48]:sw a1, 1365(a0)<br>  |
|  80|[0x80003288]<br>0xFFFFFFFFFFFFFFFD|- rs2_val == -3<br>                                                                                                                                                                                   |[0x80000d64]:sw a1, 1365(a0)<br>  |
|  81|[0x80003290]<br>0xFFFFFFFFFFFFFFFB|- rs2_val == -5<br>                                                                                                                                                                                   |[0x80000d80]:sw a1, 5(a0)<br>     |
|  82|[0x80003298]<br>0xFFFFFFFFFFFFFFF7|- rs2_val == -9<br>                                                                                                                                                                                   |[0x80000d9c]:sw a1, 3583(a0)<br>  |
|  83|[0x800032a0]<br>0xFFFFFFFFFFFFFFEF|- rs2_val == -17<br>                                                                                                                                                                                  |[0x80000db8]:sw a1, 2730(a0)<br>  |
|  84|[0x800032a8]<br>0xFFFFFFFFFFFFFFBF|- rs2_val == -65<br>                                                                                                                                                                                  |[0x80000dd4]:sw a1, 5(a0)<br>     |
|  85|[0x800032b0]<br>0xFFFFFFFFFFFFFF7F|- rs2_val == -129<br>                                                                                                                                                                                 |[0x80000df0]:sw a1, 4094(a0)<br>  |
|  86|[0x800032b8]<br>0xFFFFFFFFFFFFFEFF|- rs2_val == -257<br>                                                                                                                                                                                 |[0x80000e0c]:sw a1, 2730(a0)<br>  |
|  87|[0x800032c0]<br>0xFFFFFFFFFFFFFDFF|- rs2_val == -513<br>                                                                                                                                                                                 |[0x80000e28]:sw a1, 4(a0)<br>     |
|  88|[0x800032c8]<br>0xFFFFFFFFFFFFFBFF|- rs2_val == -1025<br>                                                                                                                                                                                |[0x80000e44]:sw a1, 4086(a0)<br>  |
|  89|[0x800032d0]<br>0xFFFFFFFFFFFFF7FF|- rs2_val == -2049<br>                                                                                                                                                                                |[0x80000e64]:sw a1, 2(a0)<br>     |
|  90|[0x800032d8]<br>0xFFFFFFFFFFFFEFFF|- rs2_val == -4097<br>                                                                                                                                                                                |[0x80000e84]:sw a1, 2730(a0)<br>  |
|  91|[0x800032e0]<br>0xFFFFFFFFFFFFDFFF|- rs2_val == -8193<br>                                                                                                                                                                                |[0x80000ea4]:sw a1, 64(a0)<br>    |
|  92|[0x800032e8]<br>0xFFFFFFFFFFFFBFFF|- rs2_val == -16385<br>                                                                                                                                                                               |[0x80000ec4]:sw a1, 4089(a0)<br>  |
|  93|[0x800032f0]<br>0xFFFFFFFFFFFF7FFF|- rs2_val == -32769<br>                                                                                                                                                                               |[0x80000ee4]:sw a1, 4031(a0)<br>  |
|  94|[0x800032f8]<br>0xFFFFFFFFFFFEFFFF|- rs2_val == -65537<br>                                                                                                                                                                               |[0x80000f04]:sw a1, 3072(a0)<br>  |
|  95|[0x80003300]<br>0xFFFFFFFFFFFDFFFF|- rs2_val == -131073<br>                                                                                                                                                                              |[0x80000f24]:sw a1, 5(a0)<br>     |
|  96|[0x80003308]<br>0xFFFFFFFFFFFBFFFF|- rs2_val == -262145<br>                                                                                                                                                                              |[0x80000f44]:sw a1, 1(a0)<br>     |
|  97|[0x80003310]<br>0xFFFFFFFFFFF7FFFF|- rs2_val == -524289<br>                                                                                                                                                                              |[0x80000f64]:sw a1, 2730(a0)<br>  |
|  98|[0x80003318]<br>0xFFFFFFFFFFEFFFFF|- rs2_val == -1048577<br>                                                                                                                                                                             |[0x80000f84]:sw a1, 512(a0)<br>   |
|  99|[0x80003320]<br>0xFFFFFFFFFFDFFFFF|- rs2_val == -2097153<br>                                                                                                                                                                             |[0x80000fa4]:sw a1, 4093(a0)<br>  |
| 100|[0x80003328]<br>0xFFFFFFFFFFBFFFFF|- rs2_val == -4194305<br>                                                                                                                                                                             |[0x80000fc4]:sw a1, 4(a0)<br>     |
| 101|[0x80003330]<br>0xFFFFFFFFFF7FFFFF|- rs2_val == -8388609<br>                                                                                                                                                                             |[0x80000fe4]:sw a1, 4092(a0)<br>  |
| 102|[0x80003338]<br>0xFFFFFFFFFEFFFFFF|- rs2_val == -16777217<br>                                                                                                                                                                            |[0x80001004]:sw a1, 7(a0)<br>     |
| 103|[0x80003340]<br>0xFFFFFFFFFDFFFFFF|- rs2_val == -33554433<br>                                                                                                                                                                            |[0x80001024]:sw a1, 4093(a0)<br>  |
| 104|[0x80003348]<br>0xFFFFFFFFFBFFFFFF|- rs2_val == -67108865<br>                                                                                                                                                                            |[0x80001044]:sw a1, 4091(a0)<br>  |
| 105|[0x80003350]<br>0xFFFFFFFFF7FFFFFF|- rs2_val == -134217729<br>                                                                                                                                                                           |[0x80001064]:sw a1, 3583(a0)<br>  |
| 106|[0x80003358]<br>0xFFFFFFFFEFFFFFFF|- rs2_val == -268435457<br>                                                                                                                                                                           |[0x80001084]:sw a1, 4031(a0)<br>  |
| 107|[0x80003360]<br>0xFFFFFFFFDFFFFFFF|- rs2_val == -536870913<br>                                                                                                                                                                           |[0x800010a4]:sw a1, 2730(a0)<br>  |
| 108|[0x80003368]<br>0xFFFFFFFFBFFFFFFF|- rs2_val == -1073741825<br>                                                                                                                                                                          |[0x800010c4]:sw a1, 512(a0)<br>   |
| 109|[0x80003370]<br>0xFFFFFFFF7FFFFFFF|- rs2_val == -2147483649<br>                                                                                                                                                                          |[0x800010e8]:sw a1, 1023(a0)<br>  |
| 110|[0x80003378]<br>0xFFFFFFFEFFFFFFFF|- rs2_val == -4294967297<br>                                                                                                                                                                          |[0x8000110c]:sw a1, 3583(a0)<br>  |
| 111|[0x80003380]<br>0xFFFFFFFDFFFFFFFF|- rs2_val == -8589934593<br>                                                                                                                                                                          |[0x80001130]:sw a1, 2047(a0)<br>  |
| 112|[0x80003388]<br>0xFFFFFFFBFFFFFFFF|- rs2_val == -17179869185<br>                                                                                                                                                                         |[0x80001154]:sw a1, 8(a0)<br>     |
| 113|[0x80003390]<br>0xFFFFFFF7FFFFFFFF|- rs2_val == -34359738369<br>                                                                                                                                                                         |[0x80001178]:sw a1, 4089(a0)<br>  |
| 114|[0x80003398]<br>0xFFFFFFEFFFFFFFFF|- rs2_val == -68719476737<br>                                                                                                                                                                         |[0x8000119c]:sw a1, 16(a0)<br>    |
| 115|[0x800033a0]<br>0xFFFFFFDFFFFFFFFF|- rs2_val == -137438953473<br>                                                                                                                                                                        |[0x800011c0]:sw a1, 256(a0)<br>   |
| 116|[0x800033a8]<br>0xFFFFFFBFFFFFFFFF|- rs2_val == -274877906945<br>                                                                                                                                                                        |[0x800011e4]:sw a1, 4091(a0)<br>  |
| 117|[0x800033b0]<br>0xFFFFFF7FFFFFFFFF|- rs2_val == -549755813889<br>                                                                                                                                                                        |[0x80001208]:sw a1, 1024(a0)<br>  |
| 118|[0x800033b8]<br>0xFFFFFEFFFFFFFFFF|- rs2_val == -1099511627777<br>                                                                                                                                                                       |[0x8000122c]:sw a1, 4092(a0)<br>  |
| 119|[0x800033c0]<br>0xFFFFFDFFFFFFFFFF|- rs2_val == -2199023255553<br>                                                                                                                                                                       |[0x80001250]:sw a1, 2(a0)<br>     |
| 120|[0x800033c8]<br>0xFFFFFBFFFFFFFFFF|- rs2_val == -4398046511105<br>                                                                                                                                                                       |[0x80001274]:sw a1, 128(a0)<br>   |
| 121|[0x800033d0]<br>0xFFFFF7FFFFFFFFFF|- rs2_val == -8796093022209<br>                                                                                                                                                                       |[0x80001298]:sw a1, 3072(a0)<br>  |
| 122|[0x800033d8]<br>0xFFFFEFFFFFFFFFFF|- rs2_val == -17592186044417<br>                                                                                                                                                                      |[0x800012bc]:sw a1, 1(a0)<br>     |
| 123|[0x800033e0]<br>0xFFFFDFFFFFFFFFFF|- rs2_val == -35184372088833<br>                                                                                                                                                                      |[0x800012e0]:sw a1, 4095(a0)<br>  |
| 124|[0x800033e8]<br>0xFFFFBFFFFFFFFFFF|- rs2_val == -70368744177665<br>                                                                                                                                                                      |[0x80001304]:sw a1, 4093(a0)<br>  |
| 125|[0x800033f0]<br>0xFFFF7FFFFFFFFFFF|- rs2_val == -140737488355329<br>                                                                                                                                                                     |[0x80001328]:sw a1, 9(a0)<br>     |
| 126|[0x800033f8]<br>0xFFFEFFFFFFFFFFFF|- rs2_val == -281474976710657<br>                                                                                                                                                                     |[0x8000134c]:sw a1, 4093(a0)<br>  |
| 127|[0x80003400]<br>0xFFFDFFFFFFFFFFFF|- rs2_val == -562949953421313<br>                                                                                                                                                                     |[0x80001370]:sw a1, 16(a0)<br>    |
| 128|[0x80003408]<br>0xFFFBFFFFFFFFFFFF|- rs2_val == -1125899906842625<br>                                                                                                                                                                    |[0x80001394]:sw a1, 3(a0)<br>     |
| 129|[0x80003410]<br>0xFFF7FFFFFFFFFFFF|- rs2_val == -2251799813685249<br>                                                                                                                                                                    |[0x800013b8]:sw a1, 7(a0)<br>     |
| 130|[0x80003418]<br>0xFFEFFFFFFFFFFFFF|- rs2_val == -4503599627370497<br>                                                                                                                                                                    |[0x800013dc]:sw a1, 3967(a0)<br>  |
| 131|[0x80003420]<br>0xFFDFFFFFFFFFFFFF|- rs2_val == -9007199254740993<br>                                                                                                                                                                    |[0x80001400]:sw a1, 2(a0)<br>     |
| 132|[0x80003428]<br>0x0000000000080000|- rs2_val == 524288<br>                                                                                                                                                                               |[0x8000141c]:sw a1, 4(a0)<br>     |
