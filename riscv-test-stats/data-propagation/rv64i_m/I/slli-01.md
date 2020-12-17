
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000e10')]      |
| SIG_REGION                | [('0x80002010', '0x800024d0', '152 dwords')]      |
| COV_LABELS                | slli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/slli-01.S/slli-01.S    |
| Total Number of coverpoints| 244     |
| Total Coverpoints Hit     | 244      |
| Total Signature Updates   | 151      |
| STAT1                     | 150      |
| STAT2                     | 1      |
| STAT3                     | 104     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000df0]:slli a1, a0, 14
      [0x80000df4]:sd a1, 1040(t0)
 -- Signature Address: 0x800024b8 Data: 0x0000000000040000
 -- Redundant Coverpoints hit by the op
      - opcode : slli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == 16






```

## Details of STAT3

```
[0x800003dc]:slli s3, s3, 52

[0x800003f8]:slli t1, t1, 63

[0x80000414]:slli s7, s7, 63
[0x80000418]:addi s7, s7, 4095

[0x80000590]:slli a0, a0, 31

[0x800005a0]:slli a0, a0, 32

[0x800005b0]:slli a0, a0, 33

[0x800005c0]:slli a0, a0, 34

[0x800005d0]:slli a0, a0, 35

[0x800005e0]:slli a0, a0, 36

[0x800005f0]:slli a0, a0, 37

[0x80000600]:slli a0, a0, 38

[0x80000610]:slli a0, a0, 39

[0x80000620]:slli a0, a0, 40

[0x80000630]:slli a0, a0, 41

[0x80000640]:slli a0, a0, 42

[0x80000650]:slli a0, a0, 43

[0x80000660]:slli a0, a0, 44

[0x80000670]:slli a0, a0, 45

[0x80000680]:slli a0, a0, 46

[0x80000690]:slli a0, a0, 47

[0x800006a0]:slli a0, a0, 48

[0x800006b0]:slli a0, a0, 49

[0x800006c0]:slli a0, a0, 50

[0x800006d0]:slli a0, a0, 51

[0x800006e0]:slli a0, a0, 53

[0x800006f0]:slli a0, a0, 54

[0x80000700]:slli a0, a0, 55

[0x80000710]:slli a0, a0, 56

[0x80000720]:slli a0, a0, 57

[0x80000730]:slli a0, a0, 58

[0x80000740]:slli a0, a0, 59

[0x80000750]:slli a0, a0, 60

[0x80000760]:slli a0, a0, 61

[0x80000770]:slli a0, a0, 62

[0x8000089c]:slli a0, a0, 53
[0x800008a0]:addi a0, a0, 4095

[0x800008b0]:slli a0, a0, 54
[0x800008b4]:addi a0, a0, 4095

[0x800008c4]:slli a0, a0, 55
[0x800008c8]:addi a0, a0, 4095

[0x800008d8]:slli a0, a0, 56
[0x800008dc]:addi a0, a0, 4095

[0x800008ec]:slli a0, a0, 57
[0x800008f0]:addi a0, a0, 4095

[0x80000900]:slli a0, a0, 58
[0x80000904]:addi a0, a0, 4095

[0x80000914]:slli a0, a0, 59
[0x80000918]:addi a0, a0, 4095

[0x80000928]:slli a0, a0, 60
[0x8000092c]:addi a0, a0, 4095

[0x8000093c]:slli a0, a0, 61
[0x80000940]:addi a0, a0, 4095

[0x80000950]:slli a0, a0, 62
[0x80000954]:addi a0, a0, 4095

[0x80000968]:slli a0, a0, 12
[0x8000096c]:addi a0, a0, 1365

[0x80000970]:slli a0, a0, 12
[0x80000974]:addi a0, a0, 1365

[0x80000978]:slli a0, a0, 12
[0x8000097c]:addi a0, a0, 1365

[0x80000990]:slli a0, a0, 12
[0x80000994]:addi a0, a0, 2731

[0x80000998]:slli a0, a0, 12
[0x8000099c]:addi a0, a0, 2731

[0x800009a0]:slli a0, a0, 12
[0x800009a4]:addi a0, a0, 2730

[0x800009d0]:slli a0, a0, 12
[0x800009d4]:addi a0, a0, 819

[0x800009d8]:slli a0, a0, 12
[0x800009dc]:addi a0, a0, 819

[0x800009e0]:slli a0, a0, 12
[0x800009e4]:addi a0, a0, 819

[0x800009f8]:slli a0, a0, 12
[0x800009fc]:addi a0, a0, 819

[0x80000a00]:slli a0, a0, 12
[0x80000a04]:addi a0, a0, 819

[0x80000a08]:slli a0, a0, 13
[0x80000a0c]:addi a0, a0, 1638

[0x80000a20]:slli a0, a0, 12
[0x80000a24]:addi a0, a0, 3277

[0x80000a38]:slli a0, a0, 12
[0x80000a3c]:addi a0, a0, 819

[0x80000a50]:slli a0, a0, 12
[0x80000a54]:addi a0, a0, 1365

[0x80000a58]:slli a0, a0, 12
[0x80000a5c]:addi a0, a0, 1365

[0x80000a60]:slli a0, a0, 12
[0x80000a64]:addi a0, a0, 1364

[0x80000a78]:slli a0, a0, 12
[0x80000a7c]:addi a0, a0, 819

[0x80000a80]:slli a0, a0, 12
[0x80000a84]:addi a0, a0, 819

[0x80000a88]:slli a0, a0, 12
[0x80000a8c]:addi a0, a0, 818

[0x80000aa0]:slli a0, a0, 12
[0x80000aa4]:addi a0, a0, 819

[0x80000aa8]:slli a0, a0, 12
[0x80000aac]:addi a0, a0, 819

[0x80000ab0]:slli a0, a0, 13
[0x80000ab4]:addi a0, a0, 1637

[0x80000ac8]:slli a0, a0, 12
[0x80000acc]:addi a0, a0, 818

[0x80000ae0]:slli a0, a0, 12
[0x80000ae4]:addi a0, a0, 1365

[0x80000ae8]:slli a0, a0, 12
[0x80000aec]:addi a0, a0, 1365

[0x80000af0]:slli a0, a0, 12
[0x80000af4]:addi a0, a0, 1366

[0x80000b08]:slli a0, a0, 12
[0x80000b0c]:addi a0, a0, 2731

[0x80000b10]:slli a0, a0, 12
[0x80000b14]:addi a0, a0, 2731

[0x80000b18]:slli a0, a0, 12
[0x80000b1c]:addi a0, a0, 2731

[0x80000b3c]:slli a0, a0, 12
[0x80000b40]:addi a0, a0, 819

[0x80000b44]:slli a0, a0, 12
[0x80000b48]:addi a0, a0, 819

[0x80000b4c]:slli a0, a0, 12
[0x80000b50]:addi a0, a0, 820

[0x80000b64]:slli a0, a0, 12
[0x80000b68]:addi a0, a0, 819

[0x80000b6c]:slli a0, a0, 12
[0x80000b70]:addi a0, a0, 819

[0x80000b74]:slli a0, a0, 13
[0x80000b78]:addi a0, a0, 1639

[0x80000b8c]:slli a0, a0, 12
[0x80000b90]:addi a0, a0, 3278

[0x80000bb4]:slli a0, a0, 12
[0x80000bb8]:addi a0, a0, 820

[0x80000c38]:slli a0, a0, 31
[0x80000c3c]:addi a0, a0, 4095

[0x80000c4c]:slli a0, a0, 32
[0x80000c50]:addi a0, a0, 4095

[0x80000c60]:slli a0, a0, 33
[0x80000c64]:addi a0, a0, 4095

[0x80000c74]:slli a0, a0, 34
[0x80000c78]:addi a0, a0, 4095

[0x80000c88]:slli a0, a0, 35
[0x80000c8c]:addi a0, a0, 4095

[0x80000c9c]:slli a0, a0, 36
[0x80000ca0]:addi a0, a0, 4095

[0x80000cb0]:slli a0, a0, 37
[0x80000cb4]:addi a0, a0, 4095

[0x80000cc4]:slli a0, a0, 38
[0x80000cc8]:addi a0, a0, 4095

[0x80000cd8]:slli a0, a0, 39
[0x80000cdc]:addi a0, a0, 4095

[0x80000cec]:slli a0, a0, 40
[0x80000cf0]:addi a0, a0, 4095

[0x80000d00]:slli a0, a0, 41
[0x80000d04]:addi a0, a0, 4095

[0x80000d14]:slli a0, a0, 42
[0x80000d18]:addi a0, a0, 4095

[0x80000d28]:slli a0, a0, 43
[0x80000d2c]:addi a0, a0, 4095

[0x80000d3c]:slli a0, a0, 44
[0x80000d40]:addi a0, a0, 4095

[0x80000d50]:slli a0, a0, 45
[0x80000d54]:addi a0, a0, 4095

[0x80000d64]:slli a0, a0, 46
[0x80000d68]:addi a0, a0, 4095

[0x80000d78]:slli a0, a0, 47
[0x80000d7c]:addi a0, a0, 4095

[0x80000d8c]:slli a0, a0, 48
[0x80000d90]:addi a0, a0, 4095

[0x80000da0]:slli a0, a0, 49
[0x80000da4]:addi a0, a0, 4095

[0x80000db4]:slli a0, a0, 50
[0x80000db8]:addi a0, a0, 4095

[0x80000dc8]:slli a0, a0, 51
[0x80000dcc]:addi a0, a0, 4095

[0x80000ddc]:slli a0, a0, 52
[0x80000de0]:addi a0, a0, 4095



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

|s.no|            signature             |                                                                   coverpoints                                                                   |                                code                                |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002010]<br>0xFFFFFFFFFF7F8000|- opcode : slli<br> - rs1 : x5<br> - rd : x5<br> - rs1 == rd<br> - rs1_val < 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == -257<br>      |[0x8000039c]:slli t0, t0, 15<br> [0x800003a0]:sd t0, 0(gp)<br>      |
|   2|[0x80002018]<br>0x0000000000010000|- rs1 : x8<br> - rd : x13<br> - rs1 != rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == 4<br> - rs1_val==4<br>           |[0x800003a8]:slli a3, fp, 14<br> [0x800003ac]:sd a3, 8(gp)<br>      |
|   3|[0x80002020]<br>0xFFFFFFFFFFFFFFF7|- rs1 : x29<br> - rd : x21<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -9<br>                                                            |[0x800003b4]:slli s5, t4, 0<br> [0x800003b8]:sd s5, 16(gp)<br>      |
|   4|[0x80002028]<br>0x0000000000000004|- rs1 : x28<br> - rd : x16<br> - rs1_val > 0 and imm_val == 0<br>                                                                                |[0x800003c0]:slli a6, t3, 0<br> [0x800003c4]:sd a6, 24(gp)<br>      |
|   5|[0x80002030]<br>0x8000000000000000|- rs1 : x15<br> - rd : x10<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -536870913<br>                                             |[0x800003d0]:slli a0, a5, 63<br> [0x800003d4]:sd a0, 32(gp)<br>     |
|   6|[0x80002038]<br>0x0000000000000000|- rd : x12<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 4503599627370496<br>                                                       |[0x800003e0]:slli a2, s3, 63<br> [0x800003e4]:sd a2, 40(gp)<br>     |
|   7|[0x80002040]<br>0x0000000000000008|- rs1 : x22<br> - rd : x8<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val == 2<br> - rs1_val==2<br> - imm_val == 2<br> |[0x800003ec]:slli fp, s6, 2<br> [0x800003f0]:sd fp, 48(gp)<br>      |
|   8|[0x80002048]<br>0x0000000000000000|- rd : x7<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -9223372036854775808<br>                          |[0x800003fc]:slli t2, t1, 11<br> [0x80000400]:sd t2, 56(gp)<br>     |
|   9|[0x80002050]<br>0x0000000000000000|- rs1 : x27<br> - rd : x24<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br> - rs1_val==0<br>                                           |[0x80000408]:slli s8, s11, 15<br> [0x8000040c]:sd s8, 64(gp)<br>    |
|  10|[0x80002058]<br>0xFFFFFFFFFFFFFF80|- rd : x11<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 9223372036854775807<br>                         |[0x8000041c]:slli a1, s7, 7<br> [0x80000420]:sd a1, 72(gp)<br>      |
|  11|[0x80002060]<br>0x0800000000000000|- rs1 : x14<br> - rd : x9<br> - imm_val == 59<br>                                                                                                |[0x80000428]:slli s1, a4, 59<br> [0x8000042c]:sd s1, 80(gp)<br>     |
|  12|[0x80002068]<br>0x0004000000000000|- rs1 : x26<br> - rd : x14<br> - rs1_val == 8<br> - imm_val == 47<br>                                                                            |[0x80000434]:slli a4, s10, 47<br> [0x80000438]:sd a4, 88(gp)<br>    |
|  13|[0x80002070]<br>0x0000000000000000|- rs1 : x7<br> - rd : x0<br> - rs1_val == 16<br>                                                                                                 |[0x80000440]:slli zero, t2, 14<br> [0x80000444]:sd zero, 96(gp)<br> |
|  14|[0x80002078]<br>0x0000000000000400|- rs1 : x30<br> - rd : x18<br> - rs1_val == 32<br>                                                                                               |[0x8000044c]:slli s2, t5, 5<br> [0x80000450]:sd s2, 104(gp)<br>     |
|  15|[0x80002080]<br>0x0020000000000000|- rs1 : x24<br> - rd : x28<br> - rs1_val == 64<br>                                                                                               |[0x80000458]:slli t3, s8, 47<br> [0x8000045c]:sd t3, 112(gp)<br>    |
|  16|[0x80002088]<br>0x0000000002000000|- rs1 : x4<br> - rd : x1<br> - rs1_val == 128<br>                                                                                                |[0x80000464]:slli ra, tp, 18<br> [0x80000468]:sd ra, 120(gp)<br>    |
|  17|[0x80002090]<br>0x0000000000000000|- rs1 : x10<br> - rd : x25<br> - rs1_val == 256<br> - imm_val == 61<br>                                                                          |[0x80000470]:slli s9, a0, 61<br> [0x80000474]:sd s9, 128(gp)<br>    |
|  18|[0x80002098]<br>0x0000010000000000|- rs1 : x16<br> - rs1_val == 512<br> - imm_val == 31<br>                                                                                         |[0x8000047c]:slli s3, a6, 31<br> [0x80000480]:sd s3, 136(gp)<br>    |
|  19|[0x800020a0]<br>0x0000000000100000|- rs1 : x2<br> - rd : x31<br> - rs1_val == 1024<br>                                                                                              |[0x80000488]:slli t6, sp, 10<br> [0x8000048c]:sd t6, 144(gp)<br>    |
|  20|[0x800020a8]<br>0x0000040000000000|- rs1 : x1<br> - rd : x4<br> - rs1_val == 2048<br>                                                                                               |[0x800004a0]:slli tp, ra, 31<br> [0x800004a4]:sd tp, 0(t0)<br>      |
|  21|[0x800020b0]<br>0x0000000000001000|- rs1 : x3<br> - rd : x29<br> - rs1_val == 4096<br>                                                                                              |[0x800004ac]:slli t4, gp, 0<br> [0x800004b0]:sd t4, 8(t0)<br>       |
|  22|[0x800020b8]<br>0x0000000000800000|- rs1 : x25<br> - rs1_val == 8192<br>                                                                                                            |[0x800004b8]:slli t1, s9, 10<br> [0x800004bc]:sd t1, 16(t0)<br>     |
|  23|[0x800020c0]<br>0x0000000000800000|- rs1 : x12<br> - rs1_val == 16384<br>                                                                                                           |[0x800004c4]:slli s7, a2, 9<br> [0x800004c8]:sd s7, 24(t0)<br>      |
|  24|[0x800020c8]<br>0x0000000008000000|- rs1 : x21<br> - rd : x3<br> - rs1_val == 32768<br>                                                                                             |[0x800004d0]:slli gp, s5, 12<br> [0x800004d4]:sd gp, 32(t0)<br>     |
|  25|[0x800020d0]<br>0x0000000000000000|- rs1 : x9<br> - rd : x17<br> - rs1_val == 65536<br>                                                                                             |[0x800004dc]:slli a7, s1, 59<br> [0x800004e0]:sd a7, 40(t0)<br>     |
|  26|[0x800020d8]<br>0x0000000080000000|- rs1 : x13<br> - rd : x15<br> - rs1_val == 131072<br>                                                                                           |[0x800004e8]:slli a5, a3, 14<br> [0x800004ec]:sd a5, 48(t0)<br>     |
|  27|[0x800020e0]<br>0x0000002000000000|- rs1 : x11<br> - rd : x22<br> - rs1_val == 262144<br>                                                                                           |[0x800004f4]:slli s6, a1, 19<br> [0x800004f8]:sd s6, 56(t0)<br>     |
|  28|[0x800020e8]<br>0x0000000004000000|- rs1 : x20<br> - rd : x26<br> - rs1_val == 524288<br>                                                                                           |[0x80000500]:slli s10, s4, 7<br> [0x80000504]:sd s10, 64(t0)<br>    |
|  29|[0x800020f0]<br>0x0000004000000000|- rs1 : x31<br> - rd : x2<br> - rs1_val == 1048576<br>                                                                                           |[0x8000050c]:slli sp, t6, 18<br> [0x80000510]:sd sp, 72(t0)<br>     |
|  30|[0x800020f8]<br>0x0000000200000000|- rs1 : x17<br> - rd : x20<br> - rs1_val == 2097152<br>                                                                                          |[0x80000518]:slli s4, a7, 12<br> [0x8000051c]:sd s4, 80(t0)<br>     |
|  31|[0x80002100]<br>0x0000000000000000|- rs1 : x0<br> - rd : x27<br>                                                                                                                    |[0x80000524]:slli s11, zero, 31<br> [0x80000528]:sd s11, 88(t0)<br> |
|  32|[0x80002108]<br>0x0000000100000000|- rs1 : x18<br> - rd : x30<br> - rs1_val == 8388608<br>                                                                                          |[0x80000530]:slli t5, s2, 9<br> [0x80000534]:sd t5, 96(t0)<br>      |
|  33|[0x80002110]<br>0x0000004000000000|- rs1_val == 16777216<br>                                                                                                                        |[0x8000053c]:slli a1, a0, 14<br> [0x80000540]:sd a1, 104(t0)<br>    |
|  34|[0x80002118]<br>0x0000000100000000|- rs1_val == 33554432<br>                                                                                                                        |[0x80000548]:slli a1, a0, 7<br> [0x8000054c]:sd a1, 112(t0)<br>     |
|  35|[0x80002120]<br>0x0000000004000000|- rs1_val == 67108864<br>                                                                                                                        |[0x80000554]:slli a1, a0, 0<br> [0x80000558]:sd a1, 120(t0)<br>     |
|  36|[0x80002128]<br>0x0000000000000000|- rs1_val == 134217728<br>                                                                                                                       |[0x80000560]:slli a1, a0, 63<br> [0x80000564]:sd a1, 128(t0)<br>    |
|  37|[0x80002130]<br>0x0000200000000000|- rs1_val == 268435456<br>                                                                                                                       |[0x8000056c]:slli a1, a0, 17<br> [0x80000570]:sd a1, 136(t0)<br>    |
|  38|[0x80002138]<br>0x0000008000000000|- rs1_val == 536870912<br>                                                                                                                       |[0x80000578]:slli a1, a0, 10<br> [0x8000057c]:sd a1, 144(t0)<br>    |
|  39|[0x80002140]<br>0x0000800000000000|- rs1_val == 1073741824<br>                                                                                                                      |[0x80000584]:slli a1, a0, 17<br> [0x80000588]:sd a1, 152(t0)<br>    |
|  40|[0x80002148]<br>0x0000008000000000|- rs1_val == 2147483648<br> - imm_val == 8<br>                                                                                                   |[0x80000594]:slli a1, a0, 8<br> [0x80000598]:sd a1, 160(t0)<br>     |
|  41|[0x80002150]<br>0x0000040000000000|- rs1_val == 4294967296<br>                                                                                                                      |[0x800005a4]:slli a1, a0, 10<br> [0x800005a8]:sd a1, 168(t0)<br>    |
|  42|[0x80002158]<br>0x0040000000000000|- rs1_val == 8589934592<br> - imm_val == 21<br>                                                                                                  |[0x800005b4]:slli a1, a0, 21<br> [0x800005b8]:sd a1, 176(t0)<br>    |
|  43|[0x80002160]<br>0x0000020000000000|- rs1_val == 17179869184<br>                                                                                                                     |[0x800005c4]:slli a1, a0, 7<br> [0x800005c8]:sd a1, 184(t0)<br>     |
|  44|[0x80002168]<br>0x0000000000000000|- rs1_val == 34359738368<br> - imm_val == 55<br>                                                                                                 |[0x800005d4]:slli a1, a0, 55<br> [0x800005d8]:sd a1, 192(t0)<br>    |
|  45|[0x80002170]<br>0x0008000000000000|- rs1_val == 68719476736<br>                                                                                                                     |[0x800005e4]:slli a1, a0, 15<br> [0x800005e8]:sd a1, 200(t0)<br>    |
|  46|[0x80002178]<br>0x0400000000000000|- rs1_val == 137438953472<br>                                                                                                                    |[0x800005f4]:slli a1, a0, 21<br> [0x800005f8]:sd a1, 208(t0)<br>    |
|  47|[0x80002180]<br>0x0000000000000000|- rs1_val == 274877906944<br> - imm_val == 42<br>                                                                                                |[0x80000604]:slli a1, a0, 42<br> [0x80000608]:sd a1, 216(t0)<br>    |
|  48|[0x80002188]<br>0x0000040000000000|- rs1_val == 549755813888<br>                                                                                                                    |[0x80000614]:slli a1, a0, 3<br> [0x80000618]:sd a1, 224(t0)<br>     |
|  49|[0x80002190]<br>0x0000000000000000|- rs1_val == 1099511627776<br>                                                                                                                   |[0x80000624]:slli a1, a0, 63<br> [0x80000628]:sd a1, 232(t0)<br>    |
|  50|[0x80002198]<br>0x0400000000000000|- rs1_val == 2199023255552<br>                                                                                                                   |[0x80000634]:slli a1, a0, 17<br> [0x80000638]:sd a1, 240(t0)<br>    |
|  51|[0x800021a0]<br>0x0002000000000000|- rs1_val == 4398046511104<br>                                                                                                                   |[0x80000644]:slli a1, a0, 7<br> [0x80000648]:sd a1, 248(t0)<br>     |
|  52|[0x800021a8]<br>0x4000000000000000|- rs1_val == 8796093022208<br>                                                                                                                   |[0x80000654]:slli a1, a0, 19<br> [0x80000658]:sd a1, 256(t0)<br>    |
|  53|[0x800021b0]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                                  |[0x80000664]:slli a1, a0, 47<br> [0x80000668]:sd a1, 264(t0)<br>    |
|  54|[0x800021b8]<br>0x0000000000000000|- rs1_val == 35184372088832<br> - imm_val == 62<br>                                                                                              |[0x80000674]:slli a1, a0, 62<br> [0x80000678]:sd a1, 272(t0)<br>    |
|  55|[0x800021c0]<br>0x0080000000000000|- rs1_val == 70368744177664<br>                                                                                                                  |[0x80000684]:slli a1, a0, 9<br> [0x80000688]:sd a1, 280(t0)<br>     |
|  56|[0x800021c8]<br>0x0000000000000000|- rs1_val == 140737488355328<br>                                                                                                                 |[0x80000694]:slli a1, a0, 21<br> [0x80000698]:sd a1, 288(t0)<br>    |
|  57|[0x800021d0]<br>0x0002000000000000|- rs1_val == 281474976710656<br> - imm_val == 1<br>                                                                                              |[0x800006a4]:slli a1, a0, 1<br> [0x800006a8]:sd a1, 296(t0)<br>     |
|  58|[0x800021d8]<br>0x0020000000000000|- rs1_val == 562949953421312<br> - imm_val == 4<br>                                                                                              |[0x800006b4]:slli a1, a0, 4<br> [0x800006b8]:sd a1, 304(t0)<br>     |
|  59|[0x800021e0]<br>0x0008000000000000|- rs1_val == 1125899906842624<br>                                                                                                                |[0x800006c4]:slli a1, a0, 1<br> [0x800006c8]:sd a1, 312(t0)<br>     |
|  60|[0x800021e8]<br>0x0200000000000000|- rs1_val == 2251799813685248<br>                                                                                                                |[0x800006d4]:slli a1, a0, 6<br> [0x800006d8]:sd a1, 320(t0)<br>     |
|  61|[0x800021f0]<br>0x0000000000000000|- rs1_val == 9007199254740992<br>                                                                                                                |[0x800006e4]:slli a1, a0, 12<br> [0x800006e8]:sd a1, 328(t0)<br>    |
|  62|[0x800021f8]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                               |[0x800006f4]:slli a1, a0, 63<br> [0x800006f8]:sd a1, 336(t0)<br>    |
|  63|[0x80002200]<br>0x0200000000000000|- rs1_val == 36028797018963968<br>                                                                                                               |[0x80000704]:slli a1, a0, 2<br> [0x80000708]:sd a1, 344(t0)<br>     |
|  64|[0x80002208]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                                               |[0x80000714]:slli a1, a0, 15<br> [0x80000718]:sd a1, 352(t0)<br>    |
|  65|[0x80002210]<br>0x4000000000000000|- rs1_val == 144115188075855872<br>                                                                                                              |[0x80000724]:slli a1, a0, 5<br> [0x80000728]:sd a1, 360(t0)<br>     |
|  66|[0x80002218]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                              |[0x80000734]:slli a1, a0, 47<br> [0x80000738]:sd a1, 368(t0)<br>    |
|  67|[0x80002220]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                              |[0x80000744]:slli a1, a0, 19<br> [0x80000748]:sd a1, 376(t0)<br>    |
|  68|[0x80002228]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                             |[0x80000754]:slli a1, a0, 21<br> [0x80000758]:sd a1, 384(t0)<br>    |
|  69|[0x80002230]<br>0x4000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                             |[0x80000764]:slli a1, a0, 1<br> [0x80000768]:sd a1, 392(t0)<br>     |
|  70|[0x80002238]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                             |[0x80000774]:slli a1, a0, 59<br> [0x80000778]:sd a1, 400(t0)<br>    |
|  71|[0x80002240]<br>0xFF00000000000000|- rs1_val == -2<br>                                                                                                                              |[0x80000780]:slli a1, a0, 55<br> [0x80000784]:sd a1, 408(t0)<br>    |
|  72|[0x80002248]<br>0xFFFFFFFFFFE80000|- rs1_val == -3<br>                                                                                                                              |[0x8000078c]:slli a1, a0, 19<br> [0x80000790]:sd a1, 416(t0)<br>    |
|  73|[0x80002250]<br>0xD800000000000000|- rs1_val == -5<br>                                                                                                                              |[0x80000798]:slli a1, a0, 59<br> [0x8000079c]:sd a1, 424(t0)<br>    |
|  74|[0x80002258]<br>0xFFFFFFFFFFBC0000|- rs1_val == -17<br>                                                                                                                             |[0x800007a4]:slli a1, a0, 18<br> [0x800007a8]:sd a1, 432(t0)<br>    |
|  75|[0x80002260]<br>0x8000000000000000|- rs1_val == -33<br>                                                                                                                             |[0x800007b0]:slli a1, a0, 63<br> [0x800007b4]:sd a1, 440(t0)<br>    |
|  76|[0x80002268]<br>0xFFFFFFFFFDF80000|- rs1_val == -65<br>                                                                                                                             |[0x800007bc]:slli a1, a0, 19<br> [0x800007c0]:sd a1, 448(t0)<br>    |
|  77|[0x80002270]<br>0xF800000000000000|- rs1_val == -129<br>                                                                                                                            |[0x800007c8]:slli a1, a0, 59<br> [0x800007cc]:sd a1, 456(t0)<br>    |
|  78|[0x80002278]<br>0xFFFFFFFFF7FC0000|- rs1_val == -513<br>                                                                                                                            |[0x800007d4]:slli a1, a0, 18<br> [0x800007d8]:sd a1, 464(t0)<br>    |
|  79|[0x80002280]<br>0xC000000000000000|- rs1_val == -1025<br>                                                                                                                           |[0x800007e0]:slli a1, a0, 62<br> [0x800007e4]:sd a1, 472(t0)<br>    |
|  80|[0x80002288]<br>0xFFFFFFFFFFFFEFFE|- rs1_val == -2049<br>                                                                                                                           |[0x800007f0]:slli a1, a0, 1<br> [0x800007f4]:sd a1, 480(t0)<br>     |
|  81|[0x80002290]<br>0xFFFFF7FF80000000|- rs1_val == -4097<br>                                                                                                                           |[0x80000800]:slli a1, a0, 31<br> [0x80000804]:sd a1, 488(t0)<br>    |
|  82|[0x80002298]<br>0xFFFFFFFFFFFF7FFC|- rs1_val == -8193<br>                                                                                                                           |[0x80000810]:slli a1, a0, 2<br> [0x80000814]:sd a1, 496(t0)<br>     |
|  83|[0x800022a0]<br>0xFFFFFFFFFBFFF000|- rs1_val == -16385<br>                                                                                                                          |[0x80000820]:slli a1, a0, 12<br> [0x80000824]:sd a1, 504(t0)<br>    |
|  84|[0x800022a8]<br>0xFFFFFFFFEFFFE000|- rs1_val == -32769<br>                                                                                                                          |[0x80000830]:slli a1, a0, 13<br> [0x80000834]:sd a1, 512(t0)<br>    |
|  85|[0x800022b0]<br>0xFFFFFFFFFFFBFFFC|- rs1_val == -65537<br>                                                                                                                          |[0x80000840]:slli a1, a0, 2<br> [0x80000844]:sd a1, 520(t0)<br>     |
|  86|[0x800022b8]<br>0xE000000000000000|- rs1_val == -131073<br>                                                                                                                         |[0x80000850]:slli a1, a0, 61<br> [0x80000854]:sd a1, 528(t0)<br>    |
|  87|[0x800022c0]<br>0x8000000000000000|- rs1_val == -262145<br>                                                                                                                         |[0x80000860]:slli a1, a0, 63<br> [0x80000864]:sd a1, 536(t0)<br>    |
|  88|[0x800022c8]<br>0xFFFFFFFF7FFFF000|- rs1_val == -524289<br>                                                                                                                         |[0x80000870]:slli a1, a0, 12<br> [0x80000874]:sd a1, 544(t0)<br>    |
|  89|[0x800022d0]<br>0xFFFFFFFBFFFFC000|- rs1_val == -1048577<br>                                                                                                                        |[0x80000880]:slli a1, a0, 14<br> [0x80000884]:sd a1, 552(t0)<br>    |
|  90|[0x800022d8]<br>0x8000000000000000|- rs1_val == -2097153<br>                                                                                                                        |[0x80000890]:slli a1, a0, 63<br> [0x80000894]:sd a1, 560(t0)<br>    |
|  91|[0x800022e0]<br>0xFFFFFFFFFFFF8000|- rs1_val == -9007199254740993<br>                                                                                                               |[0x800008a4]:slli a1, a0, 15<br> [0x800008a8]:sd a1, 568(t0)<br>    |
|  92|[0x800022e8]<br>0xC000000000000000|- rs1_val == -18014398509481985<br>                                                                                                              |[0x800008b8]:slli a1, a0, 62<br> [0x800008bc]:sd a1, 576(t0)<br>    |
|  93|[0x800022f0]<br>0xFBFFFFFFFFFFFFF8|- rs1_val == -36028797018963969<br>                                                                                                              |[0x800008cc]:slli a1, a0, 3<br> [0x800008d0]:sd a1, 584(t0)<br>     |
|  94|[0x800022f8]<br>0xFFFFFFFFFFFFF000|- rs1_val == -72057594037927937<br>                                                                                                              |[0x800008e0]:slli a1, a0, 12<br> [0x800008e4]:sd a1, 592(t0)<br>    |
|  95|[0x80002300]<br>0xFDFFFFFFFFFFFFFF|- rs1_val == -144115188075855873<br>                                                                                                             |[0x800008f4]:slli a1, a0, 0<br> [0x800008f8]:sd a1, 600(t0)<br>     |
|  96|[0x80002308]<br>0xDFFFFFFFFFFFFFF8|- rs1_val == -288230376151711745<br>                                                                                                             |[0x80000908]:slli a1, a0, 3<br> [0x8000090c]:sd a1, 608(t0)<br>     |
|  97|[0x80002310]<br>0xDFFFFFFFFFFFFFFC|- rs1_val == -576460752303423489<br>                                                                                                             |[0x8000091c]:slli a1, a0, 2<br> [0x80000920]:sd a1, 616(t0)<br>     |
|  98|[0x80002318]<br>0xFFFFFFFFFFFFFFF0|- rs1_val == -1152921504606846977<br>                                                                                                            |[0x80000930]:slli a1, a0, 4<br> [0x80000934]:sd a1, 624(t0)<br>     |
|  99|[0x80002320]<br>0xFFFFFFFFFFFF0000|- rs1_val == -2305843009213693953<br> - imm_val == 16<br>                                                                                        |[0x80000944]:slli a1, a0, 16<br> [0x80000948]:sd a1, 632(t0)<br>    |
| 100|[0x80002328]<br>0xC000000000000000|- rs1_val == -4611686018427387905<br>                                                                                                            |[0x80000958]:slli a1, a0, 62<br> [0x8000095c]:sd a1, 640(t0)<br>    |
| 101|[0x80002330]<br>0x5555555555555554|- rs1_val == 6148914691236517205<br> - rs1_val==6148914691236517205<br>                                                                          |[0x80000980]:slli a1, a0, 2<br> [0x80000984]:sd a1, 648(t0)<br>     |
| 102|[0x80002338]<br>0xAAAAAAAAAAAAAAA8|- rs1_val == -6148914691236517206<br> - rs1_val==-6148914691236517206<br>                                                                        |[0x800009a8]:slli a1, a0, 2<br> [0x800009ac]:sd a1, 656(t0)<br>     |
| 103|[0x80002340]<br>0x0000000000030000|- rs1_val==3<br>                                                                                                                                 |[0x800009b4]:slli a1, a0, 16<br> [0x800009b8]:sd a1, 664(t0)<br>    |
| 104|[0x80002348]<br>0x2800000000000000|- rs1_val==5<br>                                                                                                                                 |[0x800009c0]:slli a1, a0, 59<br> [0x800009c4]:sd a1, 672(t0)<br>    |
| 105|[0x80002350]<br>0xCCCCCC0000000000|- rs1_val==3689348814741910323<br>                                                                                                               |[0x800009e8]:slli a1, a0, 42<br> [0x800009ec]:sd a1, 680(t0)<br>    |
| 106|[0x80002358]<br>0x9999999999999800|- rs1_val==7378697629483820646<br>                                                                                                               |[0x80000a10]:slli a1, a0, 10<br> [0x80000a14]:sd a1, 688(t0)<br>    |
| 107|[0x80002360]<br>0x6800000000000000|- rs1_val==-3037000499<br>                                                                                                                       |[0x80000a28]:slli a1, a0, 59<br> [0x80000a2c]:sd a1, 696(t0)<br>    |
| 108|[0x80002368]<br>0x0000016A09E66600|- rs1_val==3037000499<br>                                                                                                                        |[0x80000a40]:slli a1, a0, 9<br> [0x80000a44]:sd a1, 704(t0)<br>     |
| 109|[0x80002370]<br>0x5555555555540000|- rs1_val==6148914691236517204<br>                                                                                                               |[0x80000a68]:slli a1, a0, 16<br> [0x80000a6c]:sd a1, 712(t0)<br>    |
| 110|[0x80002378]<br>0x9900000000000000|- rs1_val==3689348814741910322<br>                                                                                                               |[0x80000a90]:slli a1, a0, 55<br> [0x80000a94]:sd a1, 720(t0)<br>    |
| 111|[0x80002380]<br>0x4000000000000000|- rs1_val==7378697629483820645<br>                                                                                                               |[0x80000ab8]:slli a1, a0, 62<br> [0x80000abc]:sd a1, 728(t0)<br>    |
| 112|[0x80002388]<br>0x0005A82799900000|- rs1_val==3037000498<br>                                                                                                                        |[0x80000ad0]:slli a1, a0, 19<br> [0x80000ad4]:sd a1, 736(t0)<br>    |
| 113|[0x80002390]<br>0x5555555555580000|- rs1_val==6148914691236517206<br>                                                                                                               |[0x80000af8]:slli a1, a0, 18<br> [0x80000afc]:sd a1, 744(t0)<br>    |
| 114|[0x80002398]<br>0x5555555555558000|- rs1_val==-6148914691236517205<br>                                                                                                              |[0x80000b20]:slli a1, a0, 15<br> [0x80000b24]:sd a1, 752(t0)<br>    |
| 115|[0x800023a0]<br>0x0000000000000300|- rs1_val==6<br>                                                                                                                                 |[0x80000b2c]:slli a1, a0, 7<br> [0x80000b30]:sd a1, 760(t0)<br>     |
| 116|[0x800023a8]<br>0x9999999999999A00|- rs1_val==3689348814741910324<br>                                                                                                               |[0x80000b54]:slli a1, a0, 7<br> [0x80000b58]:sd a1, 768(t0)<br>     |
| 117|[0x800023b0]<br>0x6666666700000000|- rs1_val==7378697629483820647<br>                                                                                                               |[0x80000b7c]:slli a1, a0, 32<br> [0x80000b80]:sd a1, 776(t0)<br>    |
| 118|[0x800023b8]<br>0xFFFFFF4AFB0CCE00|- rs1_val==-3037000498<br>                                                                                                                       |[0x80000b94]:slli a1, a0, 8<br> [0x80000b98]:sd a1, 784(t0)<br>     |
| 119|[0x800023c0]<br>0xFFFFFFFFEFFFFFC0|- rs1_val == -4194305<br>                                                                                                                        |[0x80000ba4]:slli a1, a0, 6<br> [0x80000ba8]:sd a1, 792(t0)<br>     |
| 120|[0x800023c8]<br>0x0000000000000000|- rs1_val==3037000500<br>                                                                                                                        |[0x80000bbc]:slli a1, a0, 62<br> [0x80000bc0]:sd a1, 800(t0)<br>    |
| 121|[0x800023d0]<br>0xFF80000000000000|- rs1_val == -8388609<br>                                                                                                                        |[0x80000bcc]:slli a1, a0, 55<br> [0x80000bd0]:sd a1, 808(t0)<br>    |
| 122|[0x800023d8]<br>0xFFFFFC0000000000|- rs1_val == -16777217<br>                                                                                                                       |[0x80000bdc]:slli a1, a0, 42<br> [0x80000be0]:sd a1, 816(t0)<br>    |
| 123|[0x800023e0]<br>0xFFFFFBFFFFFE0000|- rs1_val == -33554433<br>                                                                                                                       |[0x80000bec]:slli a1, a0, 17<br> [0x80000bf0]:sd a1, 824(t0)<br>    |
| 124|[0x800023e8]<br>0xFFFFFFFBFFFFFF00|- rs1_val == -67108865<br>                                                                                                                       |[0x80000bfc]:slli a1, a0, 8<br> [0x80000c00]:sd a1, 832(t0)<br>     |
| 125|[0x800023f0]<br>0xFFFFFFFFF7FFFFFF|- rs1_val == -134217729<br>                                                                                                                      |[0x80000c0c]:slli a1, a0, 0<br> [0x80000c10]:sd a1, 840(t0)<br>     |
| 126|[0x800023f8]<br>0xFFFFFF7FFFFFF800|- rs1_val == -268435457<br>                                                                                                                      |[0x80000c1c]:slli a1, a0, 11<br> [0x80000c20]:sd a1, 848(t0)<br>    |
| 127|[0x80002400]<br>0xFFFFFF7FFFFFFE00|- rs1_val == -1073741825<br>                                                                                                                     |[0x80000c2c]:slli a1, a0, 9<br> [0x80000c30]:sd a1, 856(t0)<br>     |
| 128|[0x80002408]<br>0xFFFFFFFDFFFFFFFC|- rs1_val == -2147483649<br>                                                                                                                     |[0x80000c40]:slli a1, a0, 2<br> [0x80000c44]:sd a1, 864(t0)<br>     |
| 129|[0x80002410]<br>0xFF80000000000000|- rs1_val == -4294967297<br>                                                                                                                     |[0x80000c54]:slli a1, a0, 55<br> [0x80000c58]:sd a1, 872(t0)<br>    |
| 130|[0x80002418]<br>0xFFFFFEFFFFFFFF80|- rs1_val == -8589934593<br>                                                                                                                     |[0x80000c68]:slli a1, a0, 7<br> [0x80000c6c]:sd a1, 880(t0)<br>     |
| 131|[0x80002420]<br>0xFFFFFFBFFFFFFFF0|- rs1_val == -17179869185<br>                                                                                                                    |[0x80000c7c]:slli a1, a0, 4<br> [0x80000c80]:sd a1, 888(t0)<br>     |
| 132|[0x80002428]<br>0xFFFFFFBFFFFFFFF8|- rs1_val == -34359738369<br>                                                                                                                    |[0x80000c90]:slli a1, a0, 3<br> [0x80000c94]:sd a1, 896(t0)<br>     |
| 133|[0x80002430]<br>0xC000000000000000|- rs1_val == -68719476737<br>                                                                                                                    |[0x80000ca4]:slli a1, a0, 62<br> [0x80000ca8]:sd a1, 904(t0)<br>    |
| 134|[0x80002438]<br>0xFFFBFFFFFFFFE000|- rs1_val == -137438953473<br>                                                                                                                   |[0x80000cb8]:slli a1, a0, 13<br> [0x80000cbc]:sd a1, 912(t0)<br>    |
| 135|[0x80002440]<br>0xFFFFEFFFFFFFFFC0|- rs1_val == -274877906945<br>                                                                                                                   |[0x80000ccc]:slli a1, a0, 6<br> [0x80000cd0]:sd a1, 920(t0)<br>     |
| 136|[0x80002448]<br>0xFFFFFC0000000000|- rs1_val == -549755813889<br>                                                                                                                   |[0x80000ce0]:slli a1, a0, 42<br> [0x80000ce4]:sd a1, 928(t0)<br>    |
| 137|[0x80002450]<br>0xFFFF7FFFFFFFFF80|- rs1_val == -1099511627777<br>                                                                                                                  |[0x80000cf4]:slli a1, a0, 7<br> [0x80000cf8]:sd a1, 936(t0)<br>     |
| 138|[0x80002458]<br>0x8000000000000000|- rs1_val == -2199023255553<br>                                                                                                                  |[0x80000d08]:slli a1, a0, 63<br> [0x80000d0c]:sd a1, 944(t0)<br>    |
| 139|[0x80002460]<br>0xE000000000000000|- rs1_val == -4398046511105<br>                                                                                                                  |[0x80000d1c]:slli a1, a0, 61<br> [0x80000d20]:sd a1, 952(t0)<br>    |
| 140|[0x80002468]<br>0xF800000000000000|- rs1_val == -8796093022209<br>                                                                                                                  |[0x80000d30]:slli a1, a0, 59<br> [0x80000d34]:sd a1, 960(t0)<br>    |
| 141|[0x80002470]<br>0xFFFF7FFFFFFFFFF8|- rs1_val == -17592186044417<br>                                                                                                                 |[0x80000d44]:slli a1, a0, 3<br> [0x80000d48]:sd a1, 968(t0)<br>     |
| 142|[0x80002478]<br>0x7FFFFFFFFFFC0000|- rs1_val == -35184372088833<br>                                                                                                                 |[0x80000d58]:slli a1, a0, 18<br> [0x80000d5c]:sd a1, 976(t0)<br>    |
| 143|[0x80002480]<br>0xFFFFFFFFFFF80000|- rs1_val == -70368744177665<br>                                                                                                                 |[0x80000d6c]:slli a1, a0, 19<br> [0x80000d70]:sd a1, 984(t0)<br>    |
| 144|[0x80002488]<br>0x7FFFFFFFFFFF0000|- rs1_val == -140737488355329<br>                                                                                                                |[0x80000d80]:slli a1, a0, 16<br> [0x80000d84]:sd a1, 992(t0)<br>    |
| 145|[0x80002490]<br>0xFFDFFFFFFFFFFFE0|- rs1_val == -281474976710657<br>                                                                                                                |[0x80000d94]:slli a1, a0, 5<br> [0x80000d98]:sd a1, 1000(t0)<br>    |
| 146|[0x80002498]<br>0xF800000000000000|- rs1_val == -562949953421313<br>                                                                                                                |[0x80000da8]:slli a1, a0, 59<br> [0x80000dac]:sd a1, 1008(t0)<br>   |
| 147|[0x800024a0]<br>0xFEFFFFFFFFFFFFC0|- rs1_val == -1125899906842625<br>                                                                                                               |[0x80000dbc]:slli a1, a0, 6<br> [0x80000dc0]:sd a1, 1016(t0)<br>    |
| 148|[0x800024a8]<br>0xFFFFFFFFFFFFE000|- rs1_val == -2251799813685249<br>                                                                                                               |[0x80000dd0]:slli a1, a0, 13<br> [0x80000dd4]:sd a1, 1024(t0)<br>   |
| 149|[0x800024b0]<br>0xFFBFFFFFFFFFFFFC|- rs1_val == -4503599627370497<br>                                                                                                               |[0x80000de4]:slli a1, a0, 2<br> [0x80000de8]:sd a1, 1032(t0)<br>    |
| 150|[0x800024c0]<br>0x0020000000000000|- rs1_val == 4194304<br>                                                                                                                         |[0x80000dfc]:slli a1, a0, 31<br> [0x80000e00]:sd a1, 1048(t0)<br>   |
