
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
| STAT1                     | 149      |
| STAT2                     | 2      |
| STAT3                     | 105     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b90]:slli a1, a0, 61
      [0x80000b94]:sd a1, 744(ra)
 -- Signature Address: 0x800023a8 Data: 0xE000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : slli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen
      - rs1_val == 9223372036854775807
      - imm_val == 61




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000dfc]:slli a1, a0, 2
      [0x80000e00]:sd a1, 1016(ra)
 -- Signature Address: 0x800024b8 Data: 0x0000000001000000
 -- Redundant Coverpoints hit by the op
      - opcode : slli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == 4194304
      - imm_val == 2






```

## Details of STAT3

```
[0x8000039c]:slli ra, ra, 45
[0x800003a0]:addi ra, ra, 4095

[0x800003bc]:slli s6, s6, 60
[0x800003c0]:addi s6, s6, 4095

[0x800003d0]:slli t6, t6, 47

[0x800003e0]:slli s3, s3, 51
[0x800003e4]:addi s3, s3, 4095

[0x8000040c]:slli s8, s8, 63

[0x80000428]:slli a3, a3, 63
[0x8000042c]:addi a3, a3, 4095

[0x800005a8]:slli a0, a0, 31

[0x800005b8]:slli a0, a0, 32

[0x800005c8]:slli a0, a0, 33

[0x800005d8]:slli a0, a0, 34

[0x800005e8]:slli a0, a0, 35

[0x800005f8]:slli a0, a0, 36

[0x80000608]:slli a0, a0, 37

[0x80000618]:slli a0, a0, 38

[0x80000628]:slli a0, a0, 39

[0x80000638]:slli a0, a0, 40

[0x80000648]:slli a0, a0, 41

[0x80000658]:slli a0, a0, 42

[0x80000668]:slli a0, a0, 43

[0x80000678]:slli a0, a0, 44

[0x80000688]:slli a0, a0, 45

[0x80000698]:slli a0, a0, 46

[0x800006a8]:slli a0, a0, 48

[0x800006b8]:slli a0, a0, 49

[0x800006c8]:slli a0, a0, 50

[0x800006d8]:slli a0, a0, 51

[0x800006e8]:slli a0, a0, 52

[0x800006f8]:slli a0, a0, 53

[0x80000708]:slli a0, a0, 54

[0x80000718]:slli a0, a0, 55

[0x80000728]:slli a0, a0, 56

[0x80000738]:slli a0, a0, 57

[0x80000748]:slli a0, a0, 58

[0x80000758]:slli a0, a0, 59

[0x80000768]:slli a0, a0, 60

[0x80000778]:slli a0, a0, 61

[0x80000788]:slli a0, a0, 62

[0x8000088c]:slli a0, a0, 53
[0x80000890]:addi a0, a0, 4095

[0x800008a0]:slli a0, a0, 54
[0x800008a4]:addi a0, a0, 4095

[0x800008b4]:slli a0, a0, 55
[0x800008b8]:addi a0, a0, 4095

[0x800008c8]:slli a0, a0, 56
[0x800008cc]:addi a0, a0, 4095

[0x800008dc]:slli a0, a0, 57
[0x800008e0]:addi a0, a0, 4095

[0x800008f0]:slli a0, a0, 58
[0x800008f4]:addi a0, a0, 4095

[0x80000904]:slli a0, a0, 59
[0x80000908]:addi a0, a0, 4095

[0x80000918]:slli a0, a0, 61
[0x8000091c]:addi a0, a0, 4095

[0x8000092c]:slli a0, a0, 62
[0x80000930]:addi a0, a0, 4095

[0x80000944]:slli a0, a0, 12
[0x80000948]:addi a0, a0, 1365

[0x8000094c]:slli a0, a0, 12
[0x80000950]:addi a0, a0, 1365

[0x80000954]:slli a0, a0, 12
[0x80000958]:addi a0, a0, 1365

[0x8000096c]:slli a0, a0, 12
[0x80000970]:addi a0, a0, 2731

[0x80000974]:slli a0, a0, 12
[0x80000978]:addi a0, a0, 2731

[0x8000097c]:slli a0, a0, 12
[0x80000980]:addi a0, a0, 2730

[0x800009a0]:slli a0, a0, 12
[0x800009a4]:addi a0, a0, 819

[0x800009a8]:slli a0, a0, 12
[0x800009ac]:addi a0, a0, 819

[0x800009b0]:slli a0, a0, 12
[0x800009b4]:addi a0, a0, 819

[0x800009c8]:slli a0, a0, 12
[0x800009cc]:addi a0, a0, 819

[0x800009d0]:slli a0, a0, 12
[0x800009d4]:addi a0, a0, 819

[0x800009d8]:slli a0, a0, 13
[0x800009dc]:addi a0, a0, 1638

[0x800009f0]:slli a0, a0, 12
[0x800009f4]:addi a0, a0, 3277

[0x80000a08]:slli a0, a0, 12
[0x80000a0c]:addi a0, a0, 819

[0x80000a20]:slli a0, a0, 12
[0x80000a24]:addi a0, a0, 1365

[0x80000a28]:slli a0, a0, 12
[0x80000a2c]:addi a0, a0, 1365

[0x80000a30]:slli a0, a0, 12
[0x80000a34]:addi a0, a0, 1364

[0x80000a48]:slli a0, a0, 12
[0x80000a4c]:addi a0, a0, 819

[0x80000a50]:slli a0, a0, 12
[0x80000a54]:addi a0, a0, 819

[0x80000a58]:slli a0, a0, 12
[0x80000a5c]:addi a0, a0, 818

[0x80000a70]:slli a0, a0, 12
[0x80000a74]:addi a0, a0, 819

[0x80000a78]:slli a0, a0, 12
[0x80000a7c]:addi a0, a0, 819

[0x80000a80]:slli a0, a0, 13
[0x80000a84]:addi a0, a0, 1637

[0x80000a98]:slli a0, a0, 12
[0x80000a9c]:addi a0, a0, 818

[0x80000ab0]:slli a0, a0, 12
[0x80000ab4]:addi a0, a0, 1365

[0x80000ab8]:slli a0, a0, 12
[0x80000abc]:addi a0, a0, 1365

[0x80000ac0]:slli a0, a0, 12
[0x80000ac4]:addi a0, a0, 1366

[0x80000ad8]:slli a0, a0, 12
[0x80000adc]:addi a0, a0, 2731

[0x80000ae0]:slli a0, a0, 12
[0x80000ae4]:addi a0, a0, 2731

[0x80000ae8]:slli a0, a0, 12
[0x80000aec]:addi a0, a0, 2731

[0x80000b0c]:slli a0, a0, 12
[0x80000b10]:addi a0, a0, 819

[0x80000b14]:slli a0, a0, 12
[0x80000b18]:addi a0, a0, 819

[0x80000b1c]:slli a0, a0, 12
[0x80000b20]:addi a0, a0, 820

[0x80000b34]:slli a0, a0, 12
[0x80000b38]:addi a0, a0, 819

[0x80000b3c]:slli a0, a0, 12
[0x80000b40]:addi a0, a0, 819

[0x80000b44]:slli a0, a0, 13
[0x80000b48]:addi a0, a0, 1639

[0x80000b5c]:slli a0, a0, 12
[0x80000b60]:addi a0, a0, 3278

[0x80000b74]:slli a0, a0, 12
[0x80000b78]:addi a0, a0, 820

[0x80000b88]:slli a0, a0, 63
[0x80000b8c]:addi a0, a0, 4095

[0x80000c6c]:slli a0, a0, 31
[0x80000c70]:addi a0, a0, 4095

[0x80000c80]:slli a0, a0, 32
[0x80000c84]:addi a0, a0, 4095

[0x80000c94]:slli a0, a0, 33
[0x80000c98]:addi a0, a0, 4095

[0x80000ca8]:slli a0, a0, 34
[0x80000cac]:addi a0, a0, 4095

[0x80000cbc]:slli a0, a0, 35
[0x80000cc0]:addi a0, a0, 4095

[0x80000cd0]:slli a0, a0, 36
[0x80000cd4]:addi a0, a0, 4095

[0x80000ce4]:slli a0, a0, 37
[0x80000ce8]:addi a0, a0, 4095

[0x80000cf8]:slli a0, a0, 38
[0x80000cfc]:addi a0, a0, 4095

[0x80000d0c]:slli a0, a0, 39
[0x80000d10]:addi a0, a0, 4095

[0x80000d20]:slli a0, a0, 40
[0x80000d24]:addi a0, a0, 4095

[0x80000d34]:slli a0, a0, 41
[0x80000d38]:addi a0, a0, 4095

[0x80000d48]:slli a0, a0, 42
[0x80000d4c]:addi a0, a0, 4095

[0x80000d5c]:slli a0, a0, 43
[0x80000d60]:addi a0, a0, 4095

[0x80000d70]:slli a0, a0, 44
[0x80000d74]:addi a0, a0, 4095

[0x80000d84]:slli a0, a0, 46
[0x80000d88]:addi a0, a0, 4095

[0x80000d98]:slli a0, a0, 47
[0x80000d9c]:addi a0, a0, 4095

[0x80000dac]:slli a0, a0, 48
[0x80000db0]:addi a0, a0, 4095

[0x80000dc0]:slli a0, a0, 49
[0x80000dc4]:addi a0, a0, 4095

[0x80000dd4]:slli a0, a0, 50
[0x80000dd8]:addi a0, a0, 4095

[0x80000de8]:slli a0, a0, 52
[0x80000dec]:addi a0, a0, 4095



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

|s.no|            signature             |                                                                 coverpoints                                                                  |                               code                                |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------|
|   1|[0x80002010]<br>0xFFFEFFFFFFFFFFF8|- rs1_val == -35184372088833<br>                                                                                                              |[0x800003a4]:slli ra, ra, 3<br> [0x800003a8]:sd ra, 0(a6)<br>      |
|   2|[0x80002018]<br>0x0000000000000000|- rs1 : x2<br> - rd : x0<br> - rs1 != rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == 4194304<br> - imm_val == 2<br> |[0x800003b0]:slli zero, sp, 2<br> [0x800003b4]:sd zero, 8(a6)<br>  |
|   3|[0x80002020]<br>0xEFFFFFFFFFFFFFFF|- rd : x19<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -1152921504606846977<br>                                                       |[0x800003c4]:slli s3, s6, 0<br> [0x800003c8]:sd s3, 16(a6)<br>     |
|   4|[0x80002028]<br>0x0000800000000000|- rd : x29<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val == 140737488355328<br>                                                            |[0x800003d4]:slli t4, t6, 0<br> [0x800003d8]:sd t4, 24(a6)<br>     |
|   5|[0x80002030]<br>0x8000000000000000|- rd : x2<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -2251799813685249<br>                                                    |[0x800003e8]:slli sp, s3, 63<br> [0x800003ec]:sd sp, 32(a6)<br>    |
|   6|[0x80002038]<br>0x8000000000000000|- rs1 : x11<br> - rd : x24<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val==5<br>                                                     |[0x800003f4]:slli s8, a1, 63<br> [0x800003f8]:sd s8, 40(a6)<br>    |
|   7|[0x80002040]<br>0x0000000000100000|- rs1 : x9<br> - rd : x13<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val == 16<br> - imm_val == 16<br>             |[0x80000400]:slli a3, s1, 16<br> [0x80000404]:sd a3, 48(a6)<br>    |
|   8|[0x80002048]<br>0x0000000000000000|- rd : x20<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -9223372036854775808<br>                      |[0x80000410]:slli s4, s8, 16<br> [0x80000414]:sd s4, 56(a6)<br>    |
|   9|[0x80002050]<br>0x0000000000000000|- rs1 : x17<br> - rd : x28<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br> - rs1_val==0<br>                                        |[0x8000041c]:slli t3, a7, 3<br> [0x80000420]:sd t3, 64(a6)<br>     |
|  10|[0x80002058]<br>0xFFFFFFFFFFFFF000|- rd : x30<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 9223372036854775807<br>                      |[0x80000430]:slli t5, a3, 12<br> [0x80000434]:sd t5, 72(a6)<br>    |
|  11|[0x80002060]<br>0x0000040000000000|- rs1 : x7<br> - rd : x8<br> - imm_val == 42<br>                                                                                              |[0x8000043c]:slli fp, t2, 42<br> [0x80000440]:sd fp, 80(a6)<br>    |
|  12|[0x80002068]<br>0x0000000000008000|- rs1 : x10<br> - rd : x26<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                            |[0x80000448]:slli s10, a0, 14<br> [0x8000044c]:sd s10, 88(a6)<br>  |
|  13|[0x80002070]<br>0x2000000000000000|- rs1 : x18<br> - rd : x17<br> - rs1_val == 4<br> - rs1_val==4<br> - imm_val == 59<br>                                                        |[0x80000454]:slli a7, s2, 59<br> [0x80000458]:sd a7, 96(a6)<br>    |
|  14|[0x80002078]<br>0x0000000000000008|- rs1 : x26<br> - rd : x4<br> - rs1_val == 8<br>                                                                                              |[0x80000460]:slli tp, s10, 0<br> [0x80000464]:sd tp, 104(a6)<br>   |
|  15|[0x80002080]<br>0x0000000001000000|- rs1 : x27<br> - rd : x14<br> - rs1_val == 32<br>                                                                                            |[0x8000046c]:slli a4, s11, 19<br> [0x80000470]:sd a4, 112(a6)<br>  |
|  16|[0x80002088]<br>0x0000000000400000|- rs1 : x29<br> - rd : x23<br> - rs1_val == 64<br>                                                                                            |[0x80000478]:slli s7, t4, 16<br> [0x8000047c]:sd s7, 120(a6)<br>   |
|  17|[0x80002090]<br>0x0000000000040000|- rs1 : x30<br> - rd : x10<br> - rs1_val == 128<br>                                                                                           |[0x80000484]:slli a0, t5, 11<br> [0x80000488]:sd a0, 128(a6)<br>   |
|  18|[0x80002098]<br>0x0000000000000000|- rs1 : x5<br> - rd : x9<br> - rs1_val == 256<br>                                                                                             |[0x80000490]:slli s1, t0, 59<br> [0x80000494]:sd s1, 136(a6)<br>   |
|  19|[0x800020a0]<br>0x0000000000001000|- rs1 : x8<br> - rd : x6<br> - rs1_val == 512<br>                                                                                             |[0x8000049c]:slli t1, fp, 3<br> [0x800004a0]:sd t1, 144(a6)<br>    |
|  20|[0x800020a8]<br>0x0000000008000000|- rs1 : x12<br> - rs1_val == 1024<br>                                                                                                         |[0x800004a8]:slli s6, a2, 17<br> [0x800004ac]:sd s6, 152(a6)<br>   |
|  21|[0x800020b0]<br>0x0000000020000000|- rs1 : x3<br> - rd : x7<br> - rs1_val == 2048<br>                                                                                            |[0x800004b8]:slli t2, gp, 18<br> [0x800004bc]:sd t2, 160(a6)<br>   |
|  22|[0x800020b8]<br>0x0000080000000000|- rs1 : x14<br> - rd : x15<br> - rs1_val == 4096<br> - imm_val == 31<br>                                                                      |[0x800004c4]:slli a5, a4, 31<br> [0x800004c8]:sd a5, 168(a6)<br>   |
|  23|[0x800020c0]<br>0x0000000000800000|- rs1 : x25<br> - rd : x16<br> - rs1_val == 8192<br>                                                                                          |[0x800004d8]:slli a6, s9, 10<br> [0x800004dc]:sd a6, 0(ra)<br>     |
|  24|[0x800020c8]<br>0x0000000000800000|- rs1 : x4<br> - rd : x3<br> - rs1_val == 16384<br>                                                                                           |[0x800004e4]:slli gp, tp, 9<br> [0x800004e8]:sd gp, 8(ra)<br>      |
|  25|[0x800020d0]<br>0x0000000000000000|- rs1 : x0<br> - rd : x27<br>                                                                                                                 |[0x800004f4]:slli s11, zero, 6<br> [0x800004f8]:sd s11, 16(ra)<br> |
|  26|[0x800020d8]<br>0x0000000080000000|- rs1 : x28<br> - rs1_val == 65536<br>                                                                                                        |[0x80000500]:slli t6, t3, 15<br> [0x80000504]:sd t6, 24(ra)<br>    |
|  27|[0x800020e0]<br>0x0000000000100000|- rs1 : x6<br> - rd : x5<br> - rs1_val == 131072<br>                                                                                          |[0x8000050c]:slli t0, t1, 3<br> [0x80000510]:sd t0, 32(ra)<br>     |
|  28|[0x800020e8]<br>0x0000000000000000|- rs1 : x21<br> - rd : x25<br> - rs1_val == 262144<br>                                                                                        |[0x80000518]:slli s9, s5, 63<br> [0x8000051c]:sd s9, 40(ra)<br>    |
|  29|[0x800020f0]<br>0x0000000004000000|- rs1 : x16<br> - rd : x12<br> - rs1_val == 524288<br>                                                                                        |[0x80000524]:slli a2, a6, 7<br> [0x80000528]:sd a2, 48(ra)<br>     |
|  30|[0x800020f8]<br>0x0000000200000000|- rs1 : x15<br> - rd : x18<br> - rs1_val == 1048576<br>                                                                                       |[0x80000530]:slli s2, a5, 13<br> [0x80000534]:sd s2, 56(ra)<br>    |
|  31|[0x80002100]<br>0x0000000001000000|- rs1 : x20<br> - rd : x21<br> - rs1_val == 2097152<br>                                                                                       |[0x8000053c]:slli s5, s4, 3<br> [0x80000540]:sd s5, 64(ra)<br>     |
|  32|[0x80002108]<br>0x0000002000000000|- rs1 : x23<br> - rd : x11<br> - rs1_val == 8388608<br>                                                                                       |[0x80000548]:slli a1, s7, 14<br> [0x8000054c]:sd a1, 72(ra)<br>    |
|  33|[0x80002110]<br>0x0000000002000000|- rs1_val == 16777216<br> - imm_val == 1<br>                                                                                                  |[0x80000554]:slli a1, a0, 1<br> [0x80000558]:sd a1, 80(ra)<br>     |
|  34|[0x80002118]<br>0x0000004000000000|- rs1_val == 33554432<br>                                                                                                                     |[0x80000560]:slli a1, a0, 13<br> [0x80000564]:sd a1, 88(ra)<br>    |
|  35|[0x80002120]<br>0x0000000400000000|- rs1_val == 67108864<br> - imm_val == 8<br>                                                                                                  |[0x8000056c]:slli a1, a0, 8<br> [0x80000570]:sd a1, 96(ra)<br>     |
|  36|[0x80002128]<br>0x0000004000000000|- rs1_val == 134217728<br>                                                                                                                    |[0x80000578]:slli a1, a0, 11<br> [0x8000057c]:sd a1, 104(ra)<br>   |
|  37|[0x80002130]<br>0x1000000000000000|- rs1_val == 268435456<br> - imm_val == 32<br>                                                                                                |[0x80000584]:slli a1, a0, 32<br> [0x80000588]:sd a1, 112(ra)<br>   |
|  38|[0x80002138]<br>0x1000000000000000|- rs1_val == 536870912<br>                                                                                                                    |[0x80000590]:slli a1, a0, 31<br> [0x80000594]:sd a1, 120(ra)<br>   |
|  39|[0x80002140]<br>0x0008000000000000|- rs1_val == 1073741824<br> - imm_val == 21<br>                                                                                               |[0x8000059c]:slli a1, a0, 21<br> [0x800005a0]:sd a1, 128(ra)<br>   |
|  40|[0x80002148]<br>0x0000000000000000|- rs1_val == 2147483648<br>                                                                                                                   |[0x800005ac]:slli a1, a0, 59<br> [0x800005b0]:sd a1, 136(ra)<br>   |
|  41|[0x80002150]<br>0x0000000000000000|- rs1_val == 4294967296<br> - imm_val == 55<br>                                                                                               |[0x800005bc]:slli a1, a0, 55<br> [0x800005c0]:sd a1, 144(ra)<br>   |
|  42|[0x80002158]<br>0x0000000000000000|- rs1_val == 8589934592<br>                                                                                                                   |[0x800005cc]:slli a1, a0, 32<br> [0x800005d0]:sd a1, 152(ra)<br>   |
|  43|[0x80002160]<br>0x0000000000000000|- rs1_val == 17179869184<br>                                                                                                                  |[0x800005dc]:slli a1, a0, 59<br> [0x800005e0]:sd a1, 160(ra)<br>   |
|  44|[0x80002168]<br>0x0000002000000000|- rs1_val == 34359738368<br>                                                                                                                  |[0x800005ec]:slli a1, a0, 2<br> [0x800005f0]:sd a1, 168(ra)<br>    |
|  45|[0x80002170]<br>0x0000000000000000|- rs1_val == 68719476736<br>                                                                                                                  |[0x800005fc]:slli a1, a0, 42<br> [0x80000600]:sd a1, 176(ra)<br>   |
|  46|[0x80002178]<br>0x0000000000000000|- rs1_val == 137438953472<br>                                                                                                                 |[0x8000060c]:slli a1, a0, 32<br> [0x80000610]:sd a1, 184(ra)<br>   |
|  47|[0x80002180]<br>0x0020000000000000|- rs1_val == 274877906944<br>                                                                                                                 |[0x8000061c]:slli a1, a0, 15<br> [0x80000620]:sd a1, 192(ra)<br>   |
|  48|[0x80002188]<br>0x0000080000000000|- rs1_val == 549755813888<br> - imm_val == 4<br>                                                                                              |[0x8000062c]:slli a1, a0, 4<br> [0x80000630]:sd a1, 200(ra)<br>    |
|  49|[0x80002190]<br>0x0002000000000000|- rs1_val == 1099511627776<br>                                                                                                                |[0x8000063c]:slli a1, a0, 9<br> [0x80000640]:sd a1, 208(ra)<br>    |
|  50|[0x80002198]<br>0x0400000000000000|- rs1_val == 2199023255552<br>                                                                                                                |[0x8000064c]:slli a1, a0, 17<br> [0x80000650]:sd a1, 216(ra)<br>   |
|  51|[0x800021a0]<br>0x0000000000000000|- rs1_val == 4398046511104<br> - imm_val == 62<br>                                                                                            |[0x8000065c]:slli a1, a0, 62<br> [0x80000660]:sd a1, 224(ra)<br>   |
|  52|[0x800021a8]<br>0x0400000000000000|- rs1_val == 8796093022208<br>                                                                                                                |[0x8000066c]:slli a1, a0, 15<br> [0x80000670]:sd a1, 232(ra)<br>   |
|  53|[0x800021b0]<br>0x0400000000000000|- rs1_val == 17592186044416<br>                                                                                                               |[0x8000067c]:slli a1, a0, 14<br> [0x80000680]:sd a1, 240(ra)<br>   |
|  54|[0x800021b8]<br>0x0000000000000000|- rs1_val == 35184372088832<br>                                                                                                               |[0x8000068c]:slli a1, a0, 21<br> [0x80000690]:sd a1, 248(ra)<br>   |
|  55|[0x800021c0]<br>0x8000000000000000|- rs1_val == 70368744177664<br>                                                                                                               |[0x8000069c]:slli a1, a0, 17<br> [0x800006a0]:sd a1, 256(ra)<br>   |
|  56|[0x800021c8]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                              |[0x800006ac]:slli a1, a0, 21<br> [0x800006b0]:sd a1, 264(ra)<br>   |
|  57|[0x800021d0]<br>0x0000000000000000|- rs1_val == 562949953421312<br>                                                                                                              |[0x800006bc]:slli a1, a0, 32<br> [0x800006c0]:sd a1, 272(ra)<br>   |
|  58|[0x800021d8]<br>0x0010000000000000|- rs1_val == 1125899906842624<br>                                                                                                             |[0x800006cc]:slli a1, a0, 2<br> [0x800006d0]:sd a1, 280(ra)<br>    |
|  59|[0x800021e0]<br>0x0000000000000000|- rs1_val == 2251799813685248<br>                                                                                                             |[0x800006dc]:slli a1, a0, 47<br> [0x800006e0]:sd a1, 288(ra)<br>   |
|  60|[0x800021e8]<br>0x0000000000000000|- rs1_val == 4503599627370496<br>                                                                                                             |[0x800006ec]:slli a1, a0, 32<br> [0x800006f0]:sd a1, 296(ra)<br>   |
|  61|[0x800021f0]<br>0x0000000000000000|- rs1_val == 9007199254740992<br>                                                                                                             |[0x800006fc]:slli a1, a0, 14<br> [0x80000700]:sd a1, 304(ra)<br>   |
|  62|[0x800021f8]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                            |[0x8000070c]:slli a1, a0, 32<br> [0x80000710]:sd a1, 312(ra)<br>   |
|  63|[0x80002200]<br>0x0200000000000000|- rs1_val == 36028797018963968<br>                                                                                                            |[0x8000071c]:slli a1, a0, 2<br> [0x80000720]:sd a1, 320(ra)<br>    |
|  64|[0x80002208]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                                            |[0x8000072c]:slli a1, a0, 17<br> [0x80000730]:sd a1, 328(ra)<br>   |
|  65|[0x80002210]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                           |[0x8000073c]:slli a1, a0, 16<br> [0x80000740]:sd a1, 336(ra)<br>   |
|  66|[0x80002218]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                           |[0x8000074c]:slli a1, a0, 12<br> [0x80000750]:sd a1, 344(ra)<br>   |
|  67|[0x80002220]<br>0x0000000000000000|- rs1_val == 576460752303423488<br>                                                                                                           |[0x8000075c]:slli a1, a0, 10<br> [0x80000760]:sd a1, 352(ra)<br>   |
|  68|[0x80002228]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                          |[0x8000076c]:slli a1, a0, 62<br> [0x80000770]:sd a1, 360(ra)<br>   |
|  69|[0x80002230]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                          |[0x8000077c]:slli a1, a0, 5<br> [0x80000780]:sd a1, 368(ra)<br>    |
|  70|[0x80002238]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                          |[0x8000078c]:slli a1, a0, 17<br> [0x80000790]:sd a1, 376(ra)<br>   |
|  71|[0x80002240]<br>0xFFFFFFFFFFFFFFFC|- rs1_val == -2<br>                                                                                                                           |[0x80000798]:slli a1, a0, 1<br> [0x8000079c]:sd a1, 384(ra)<br>    |
|  72|[0x80002248]<br>0xFFFFFFFFFFA00000|- rs1_val == -3<br>                                                                                                                           |[0x800007a4]:slli a1, a0, 21<br> [0x800007a8]:sd a1, 392(ra)<br>   |
|  73|[0x80002250]<br>0xFFFFFFFFFFF60000|- rs1_val == -5<br>                                                                                                                           |[0x800007b0]:slli a1, a0, 17<br> [0x800007b4]:sd a1, 400(ra)<br>   |
|  74|[0x80002258]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == -9<br>                                                                                                                           |[0x800007bc]:slli a1, a0, 0<br> [0x800007c0]:sd a1, 408(ra)<br>    |
|  75|[0x80002260]<br>0xFFFFFFFFFFFFBC00|- rs1_val == -17<br>                                                                                                                          |[0x800007c8]:slli a1, a0, 10<br> [0x800007cc]:sd a1, 416(ra)<br>   |
|  76|[0x80002268]<br>0xFFFFFFFFFFFF7C00|- rs1_val == -33<br>                                                                                                                          |[0x800007d4]:slli a1, a0, 10<br> [0x800007d8]:sd a1, 424(ra)<br>   |
|  77|[0x80002270]<br>0xFFFFFFFFFFFEFC00|- rs1_val == -65<br>                                                                                                                          |[0x800007e0]:slli a1, a0, 10<br> [0x800007e4]:sd a1, 432(ra)<br>   |
|  78|[0x80002278]<br>0xFFFFFFFFFEFE0000|- rs1_val == -129<br>                                                                                                                         |[0x800007ec]:slli a1, a0, 17<br> [0x800007f0]:sd a1, 440(ra)<br>   |
|  79|[0x80002280]<br>0xFFFFFEFF00000000|- rs1_val == -257<br>                                                                                                                         |[0x800007f8]:slli a1, a0, 32<br> [0x800007fc]:sd a1, 448(ra)<br>   |
|  80|[0x80002288]<br>0xFFFFFFFFFDFF0000|- rs1_val == -513<br>                                                                                                                         |[0x80000804]:slli a1, a0, 16<br> [0x80000808]:sd a1, 456(ra)<br>   |
|  81|[0x80002290]<br>0xFFFFFFFFFFDFF800|- rs1_val == -1025<br>                                                                                                                        |[0x80000810]:slli a1, a0, 11<br> [0x80000814]:sd a1, 464(ra)<br>   |
|  82|[0x80002298]<br>0xFFFFFFFFFFFFDFFC|- rs1_val == -2049<br>                                                                                                                        |[0x80000820]:slli a1, a0, 2<br> [0x80000824]:sd a1, 472(ra)<br>    |
|  83|[0x800022a0]<br>0xFFFFFFFF7FF80000|- rs1_val == -4097<br>                                                                                                                        |[0x80000830]:slli a1, a0, 19<br> [0x80000834]:sd a1, 480(ra)<br>   |
|  84|[0x800022a8]<br>0xFFFFFFFFFEFFF800|- rs1_val == -8193<br>                                                                                                                        |[0x80000840]:slli a1, a0, 11<br> [0x80000844]:sd a1, 488(ra)<br>   |
|  85|[0x800022b0]<br>0xFFFFDFFF80000000|- rs1_val == -16385<br>                                                                                                                       |[0x80000850]:slli a1, a0, 31<br> [0x80000854]:sd a1, 496(ra)<br>   |
|  86|[0x800022b8]<br>0xFFFFFFFF7FFF0000|- rs1_val == -32769<br>                                                                                                                       |[0x80000860]:slli a1, a0, 16<br> [0x80000864]:sd a1, 504(ra)<br>   |
|  87|[0x800022c0]<br>0xFFFFFFFFFFBFFFC0|- rs1_val == -65537<br>                                                                                                                       |[0x80000870]:slli a1, a0, 6<br> [0x80000874]:sd a1, 512(ra)<br>    |
|  88|[0x800022c8]<br>0xFFFFFFFFFEFFFF80|- rs1_val == -131073<br>                                                                                                                      |[0x80000880]:slli a1, a0, 7<br> [0x80000884]:sd a1, 520(ra)<br>    |
|  89|[0x800022d0]<br>0xF7FFFFFFFFFFFFC0|- rs1_val == -9007199254740993<br>                                                                                                            |[0x80000894]:slli a1, a0, 6<br> [0x80000898]:sd a1, 528(ra)<br>    |
|  90|[0x800022d8]<br>0xC000000000000000|- rs1_val == -18014398509481985<br>                                                                                                           |[0x800008a8]:slli a1, a0, 62<br> [0x800008ac]:sd a1, 536(ra)<br>   |
|  91|[0x800022e0]<br>0x7FFFFFFFFFFFFF00|- rs1_val == -36028797018963969<br>                                                                                                           |[0x800008bc]:slli a1, a0, 8<br> [0x800008c0]:sd a1, 544(ra)<br>    |
|  92|[0x800022e8]<br>0xFFFFFFFFFFFFF800|- rs1_val == -72057594037927937<br>                                                                                                           |[0x800008d0]:slli a1, a0, 11<br> [0x800008d4]:sd a1, 552(ra)<br>   |
|  93|[0x800022f0]<br>0xFFFFFFFF80000000|- rs1_val == -144115188075855873<br>                                                                                                          |[0x800008e4]:slli a1, a0, 31<br> [0x800008e8]:sd a1, 560(ra)<br>   |
|  94|[0x800022f8]<br>0xFFFFFFFFFFFFFFC0|- rs1_val == -288230376151711745<br>                                                                                                          |[0x800008f8]:slli a1, a0, 6<br> [0x800008fc]:sd a1, 568(ra)<br>    |
|  95|[0x80002300]<br>0xFFFFFFFFFFFF0000|- rs1_val == -576460752303423489<br>                                                                                                          |[0x8000090c]:slli a1, a0, 16<br> [0x80000910]:sd a1, 576(ra)<br>   |
|  96|[0x80002308]<br>0xBFFFFFFFFFFFFFFE|- rs1_val == -2305843009213693953<br>                                                                                                         |[0x80000920]:slli a1, a0, 1<br> [0x80000924]:sd a1, 584(ra)<br>    |
|  97|[0x80002310]<br>0xFFFFFFFFFFFFF800|- rs1_val == -4611686018427387905<br>                                                                                                         |[0x80000934]:slli a1, a0, 11<br> [0x80000938]:sd a1, 592(ra)<br>   |
|  98|[0x80002318]<br>0xAAAAAAAAAAAAA000|- rs1_val == 6148914691236517205<br> - rs1_val==6148914691236517205<br>                                                                       |[0x8000095c]:slli a1, a0, 13<br> [0x80000960]:sd a1, 600(ra)<br>   |
|  99|[0x80002320]<br>0x5555555555555500|- rs1_val == -6148914691236517206<br> - rs1_val==-6148914691236517206<br>                                                                     |[0x80000984]:slli a1, a0, 7<br> [0x80000988]:sd a1, 608(ra)<br>    |
| 100|[0x80002328]<br>0x0000000000000600|- rs1_val==3<br>                                                                                                                              |[0x80000990]:slli a1, a0, 9<br> [0x80000994]:sd a1, 616(ra)<br>    |
| 101|[0x80002330]<br>0xCCCCCCCCCCCCCC00|- rs1_val==3689348814741910323<br>                                                                                                            |[0x800009b8]:slli a1, a0, 10<br> [0x800009bc]:sd a1, 624(ra)<br>   |
| 102|[0x80002338]<br>0xCCCCCCCCCCCCCCC0|- rs1_val==7378697629483820646<br>                                                                                                            |[0x800009e0]:slli a1, a0, 5<br> [0x800009e4]:sd a1, 632(ra)<br>    |
| 103|[0x80002340]<br>0xFFFFFFA57D866680|- rs1_val==-3037000499<br>                                                                                                                    |[0x800009f8]:slli a1, a0, 7<br> [0x800009fc]:sd a1, 640(ra)<br>    |
| 104|[0x80002348]<br>0x0016A09E66600000|- rs1_val==3037000499<br>                                                                                                                     |[0x80000a10]:slli a1, a0, 21<br> [0x80000a14]:sd a1, 648(ra)<br>   |
| 105|[0x80002350]<br>0x5555500000000000|- rs1_val==6148914691236517204<br>                                                                                                            |[0x80000a38]:slli a1, a0, 42<br> [0x80000a3c]:sd a1, 656(ra)<br>   |
| 106|[0x80002358]<br>0x9999000000000000|- rs1_val==3689348814741910322<br>                                                                                                            |[0x80000a60]:slli a1, a0, 47<br> [0x80000a64]:sd a1, 664(ra)<br>   |
| 107|[0x80002360]<br>0xCCCCCCCCCCCA0000|- rs1_val==7378697629483820645<br>                                                                                                            |[0x80000a88]:slli a1, a0, 17<br> [0x80000a8c]:sd a1, 672(ra)<br>   |
| 108|[0x80002368]<br>0x0000002D413CCC80|- rs1_val==3037000498<br>                                                                                                                     |[0x80000aa0]:slli a1, a0, 6<br> [0x80000aa4]:sd a1, 680(ra)<br>    |
| 109|[0x80002370]<br>0xAB00000000000000|- rs1_val==6148914691236517206<br>                                                                                                            |[0x80000ac8]:slli a1, a0, 55<br> [0x80000acc]:sd a1, 688(ra)<br>   |
| 110|[0x80002378]<br>0x5555555555555558|- rs1_val==-6148914691236517205<br>                                                                                                           |[0x80000af0]:slli a1, a0, 3<br> [0x80000af4]:sd a1, 696(ra)<br>    |
| 111|[0x80002380]<br>0x0000000000000180|- rs1_val==6<br>                                                                                                                              |[0x80000afc]:slli a1, a0, 6<br> [0x80000b00]:sd a1, 704(ra)<br>    |
| 112|[0x80002388]<br>0x99999999999A0000|- rs1_val==3689348814741910324<br>                                                                                                            |[0x80000b24]:slli a1, a0, 15<br> [0x80000b28]:sd a1, 712(ra)<br>   |
| 113|[0x80002390]<br>0x3380000000000000|- rs1_val==7378697629483820647<br>                                                                                                            |[0x80000b4c]:slli a1, a0, 55<br> [0x80000b50]:sd a1, 720(ra)<br>   |
| 114|[0x80002398]<br>0xFFFFFFE95F6199C0|- rs1_val==-3037000498<br>                                                                                                                    |[0x80000b64]:slli a1, a0, 5<br> [0x80000b68]:sd a1, 728(ra)<br>    |
| 115|[0x800023a0]<br>0xA000000000000000|- rs1_val==3037000500<br>                                                                                                                     |[0x80000b7c]:slli a1, a0, 59<br> [0x80000b80]:sd a1, 736(ra)<br>   |
| 116|[0x800023b0]<br>0xFFFFFFFBFFFF0000|- rs1_val == -262145<br>                                                                                                                      |[0x80000ba0]:slli a1, a0, 16<br> [0x80000ba4]:sd a1, 752(ra)<br>   |
| 117|[0x800023b8]<br>0xFFFFFFFEFFFFE000|- rs1_val == -524289<br>                                                                                                                      |[0x80000bb0]:slli a1, a0, 13<br> [0x80000bb4]:sd a1, 760(ra)<br>   |
| 118|[0x800023c0]<br>0xFFFFFFFFFFEFFFFF|- rs1_val == -1048577<br>                                                                                                                     |[0x80000bc0]:slli a1, a0, 0<br> [0x80000bc4]:sd a1, 768(ra)<br>    |
| 119|[0x800023c8]<br>0xFFFFFF7FFFFC0000|- rs1_val == -2097153<br>                                                                                                                     |[0x80000bd0]:slli a1, a0, 18<br> [0x80000bd4]:sd a1, 776(ra)<br>   |
| 120|[0x800023d0]<br>0xFFDFFFFF80000000|- rs1_val == -4194305<br>                                                                                                                     |[0x80000be0]:slli a1, a0, 31<br> [0x80000be4]:sd a1, 784(ra)<br>   |
| 121|[0x800023d8]<br>0xFFFFFFFFDFFFFFC0|- rs1_val == -8388609<br>                                                                                                                     |[0x80000bf0]:slli a1, a0, 6<br> [0x80000bf4]:sd a1, 792(ra)<br>    |
| 122|[0x800023e0]<br>0xFFFFFFFF7FFFFF80|- rs1_val == -16777217<br>                                                                                                                    |[0x80000c00]:slli a1, a0, 7<br> [0x80000c04]:sd a1, 800(ra)<br>    |
| 123|[0x800023e8]<br>0xFFFFFFFFF7FFFFFC|- rs1_val == -33554433<br>                                                                                                                    |[0x80000c10]:slli a1, a0, 2<br> [0x80000c14]:sd a1, 808(ra)<br>    |
| 124|[0x800023f0]<br>0xFFFFFFFEFFFFFFC0|- rs1_val == -67108865<br>                                                                                                                    |[0x80000c20]:slli a1, a0, 6<br> [0x80000c24]:sd a1, 816(ra)<br>    |
| 125|[0x800023f8]<br>0xFFFFFFFBFFFFFF80|- rs1_val == -134217729<br>                                                                                                                   |[0x80000c30]:slli a1, a0, 7<br> [0x80000c34]:sd a1, 824(ra)<br>    |
| 126|[0x80002400]<br>0xFFFFFEFFFFFFF000|- rs1_val == -268435457<br>                                                                                                                   |[0x80000c40]:slli a1, a0, 12<br> [0x80000c44]:sd a1, 832(ra)<br>   |
| 127|[0x80002408]<br>0xFFFFEFFFFFFF8000|- rs1_val == -536870913<br>                                                                                                                   |[0x80000c50]:slli a1, a0, 15<br> [0x80000c54]:sd a1, 840(ra)<br>   |
| 128|[0x80002410]<br>0xFFFFFEFFFFFFFC00|- rs1_val == -1073741825<br>                                                                                                                  |[0x80000c60]:slli a1, a0, 10<br> [0x80000c64]:sd a1, 848(ra)<br>   |
| 129|[0x80002418]<br>0xFFFFF7FFFFFFF000|- rs1_val == -2147483649<br>                                                                                                                  |[0x80000c74]:slli a1, a0, 12<br> [0x80000c78]:sd a1, 856(ra)<br>   |
| 130|[0x80002420]<br>0xFFFBFFFFFFFC0000|- rs1_val == -4294967297<br>                                                                                                                  |[0x80000c88]:slli a1, a0, 18<br> [0x80000c8c]:sd a1, 864(ra)<br>   |
| 131|[0x80002428]<br>0xFFFFFBFFFFFFFE00|- rs1_val == -8589934593<br>                                                                                                                  |[0x80000c9c]:slli a1, a0, 9<br> [0x80000ca0]:sd a1, 872(ra)<br>    |
| 132|[0x80002430]<br>0xFFFFFBFFFFFFFF00|- rs1_val == -17179869185<br>                                                                                                                 |[0x80000cb0]:slli a1, a0, 8<br> [0x80000cb4]:sd a1, 880(ra)<br>    |
| 133|[0x80002438]<br>0xFFFFFFF7FFFFFFFF|- rs1_val == -34359738369<br>                                                                                                                 |[0x80000cc4]:slli a1, a0, 0<br> [0x80000cc8]:sd a1, 888(ra)<br>    |
| 134|[0x80002440]<br>0xFFFFEFFFFFFFFF00|- rs1_val == -68719476737<br>                                                                                                                 |[0x80000cd8]:slli a1, a0, 8<br> [0x80000cdc]:sd a1, 896(ra)<br>    |
| 135|[0x80002448]<br>0xFFFFFEFFFFFFFFF8|- rs1_val == -137438953473<br>                                                                                                                |[0x80000cec]:slli a1, a0, 3<br> [0x80000cf0]:sd a1, 904(ra)<br>    |
| 136|[0x80002450]<br>0xFFF7FFFFFFFFE000|- rs1_val == -274877906945<br>                                                                                                                |[0x80000d00]:slli a1, a0, 13<br> [0x80000d04]:sd a1, 912(ra)<br>   |
| 137|[0x80002458]<br>0xFFFBFFFFFFFFF800|- rs1_val == -549755813889<br>                                                                                                                |[0x80000d14]:slli a1, a0, 11<br> [0x80000d18]:sd a1, 920(ra)<br>   |
| 138|[0x80002460]<br>0xFFFFFDFFFFFFFFFE|- rs1_val == -1099511627777<br>                                                                                                               |[0x80000d28]:slli a1, a0, 1<br> [0x80000d2c]:sd a1, 928(ra)<br>    |
| 139|[0x80002468]<br>0xFFFFBFFFFFFFFFE0|- rs1_val == -2199023255553<br>                                                                                                               |[0x80000d3c]:slli a1, a0, 5<br> [0x80000d40]:sd a1, 936(ra)<br>    |
| 140|[0x80002470]<br>0xF800000000000000|- rs1_val == -4398046511105<br>                                                                                                               |[0x80000d50]:slli a1, a0, 59<br> [0x80000d54]:sd a1, 944(ra)<br>   |
| 141|[0x80002478]<br>0xFF7FFFFFFFFFF000|- rs1_val == -8796093022209<br>                                                                                                               |[0x80000d64]:slli a1, a0, 12<br> [0x80000d68]:sd a1, 952(ra)<br>   |
| 142|[0x80002480]<br>0xFFFFDFFFFFFFFFFE|- rs1_val == -17592186044417<br>                                                                                                              |[0x80000d78]:slli a1, a0, 1<br> [0x80000d7c]:sd a1, 960(ra)<br>    |
| 143|[0x80002488]<br>0xFF7FFFFFFFFFFE00|- rs1_val == -70368744177665<br>                                                                                                              |[0x80000d8c]:slli a1, a0, 9<br> [0x80000d90]:sd a1, 968(ra)<br>    |
| 144|[0x80002490]<br>0xFFFFFFFFFFE00000|- rs1_val == -140737488355329<br>                                                                                                             |[0x80000da0]:slli a1, a0, 21<br> [0x80000da4]:sd a1, 976(ra)<br>   |
| 145|[0x80002498]<br>0xFFFFFFFFFFFE0000|- rs1_val == -281474976710657<br>                                                                                                             |[0x80000db4]:slli a1, a0, 17<br> [0x80000db8]:sd a1, 984(ra)<br>   |
| 146|[0x800024a0]<br>0xEFFFFFFFFFFFF800|- rs1_val == -562949953421313<br>                                                                                                             |[0x80000dc8]:slli a1, a0, 11<br> [0x80000dcc]:sd a1, 992(ra)<br>   |
| 147|[0x800024a8]<br>0xF7FFFFFFFFFFFE00|- rs1_val == -1125899906842625<br>                                                                                                            |[0x80000ddc]:slli a1, a0, 9<br> [0x80000de0]:sd a1, 1000(ra)<br>   |
| 148|[0x800024b0]<br>0xFFBFFFFFFFFFFFFC|- rs1_val == -4503599627370497<br>                                                                                                            |[0x80000df0]:slli a1, a0, 2<br> [0x80000df4]:sd a1, 1008(ra)<br>   |
| 149|[0x800024c0]<br>0x0000000000200000|- rs1_val == 32768<br>                                                                                                                        |[0x80000e08]:slli a1, a0, 6<br> [0x80000e0c]:sd a1, 1024(ra)<br>   |
