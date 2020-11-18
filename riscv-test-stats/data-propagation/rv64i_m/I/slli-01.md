
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000e20')]      |
| SIG_REGION                | [('0x80002208', '0x800026c8', '152 dwords')]      |
| COV_LABELS                | slli      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/slli-01.S/slli-01.S    |
| Total Number of coverpoints| 244     |
| Total Coverpoints Hit     | 244      |
| Total Signature Updates   | 152      |
| STAT1                     | 149      |
| STAT2                     | 3      |
| STAT3                     | 106     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b94]:slli a1, a0, 32
      [0x80000b98]:sd a1, 760(gp)
 -- Signature Address: 0x800025a8 Data: 0xFFFFFDFF00000000
 -- Redundant Coverpoints hit by the op
      - opcode : slli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val < 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == -513
      - imm_val == 32




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ba4]:slli a1, a0, 55
      [0x80000ba8]:sd a1, 768(gp)
 -- Signature Address: 0x800025b0 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : slli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == 1099511627776
      - imm_val == 55




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e0c]:slli a1, a0, 19
      [0x80000e10]:sd a1, 1032(gp)
 -- Signature Address: 0x800026b8 Data: 0xFFFFFFFFFFF80000
 -- Redundant Coverpoints hit by the op
      - opcode : slli
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val > 0 and imm_val > 0 and imm_val < xlen
      - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen
      - rs1_val == 9223372036854775807






```

## Details of STAT3

```
[0x8000039c]:slli s7, s7, 61
[0x800003a0]:addi s7, s7, 4095

[0x800003bc]:slli tp, tp, 32
[0x800003c0]:addi tp, tp, 4095

[0x800003d4]:slli gp, gp, 12
[0x800003d8]:addi gp, gp, 1365

[0x800003dc]:slli gp, gp, 12
[0x800003e0]:addi gp, gp, 1365

[0x800003e4]:slli gp, gp, 12
[0x800003e8]:addi gp, gp, 1366

[0x80000408]:slli s11, s11, 33

[0x80000424]:slli ra, ra, 63

[0x80000440]:slli s9, s9, 63
[0x80000444]:addi s9, s9, 4095

[0x800005c0]:slli a0, a0, 31

[0x800005d0]:slli a0, a0, 32

[0x800005e0]:slli a0, a0, 34

[0x800005f0]:slli a0, a0, 35

[0x80000600]:slli a0, a0, 36

[0x80000610]:slli a0, a0, 37

[0x80000620]:slli a0, a0, 38

[0x80000630]:slli a0, a0, 39

[0x80000640]:slli a0, a0, 40

[0x80000650]:slli a0, a0, 41

[0x80000660]:slli a0, a0, 42

[0x80000670]:slli a0, a0, 43

[0x80000680]:slli a0, a0, 44

[0x80000690]:slli a0, a0, 45

[0x800006a0]:slli a0, a0, 46

[0x800006b0]:slli a0, a0, 47

[0x800006c0]:slli a0, a0, 48

[0x800006d0]:slli a0, a0, 49

[0x800006e0]:slli a0, a0, 50

[0x800006f0]:slli a0, a0, 51

[0x80000700]:slli a0, a0, 52

[0x80000710]:slli a0, a0, 53

[0x80000720]:slli a0, a0, 54

[0x80000730]:slli a0, a0, 55

[0x80000740]:slli a0, a0, 56

[0x80000750]:slli a0, a0, 57

[0x80000760]:slli a0, a0, 58

[0x80000770]:slli a0, a0, 59

[0x80000780]:slli a0, a0, 60

[0x80000790]:slli a0, a0, 61

[0x800007a0]:slli a0, a0, 62

[0x800008b4]:slli a0, a0, 53
[0x800008b8]:addi a0, a0, 4095

[0x800008c8]:slli a0, a0, 54
[0x800008cc]:addi a0, a0, 4095

[0x800008dc]:slli a0, a0, 55
[0x800008e0]:addi a0, a0, 4095

[0x800008f0]:slli a0, a0, 56
[0x800008f4]:addi a0, a0, 4095

[0x80000904]:slli a0, a0, 57
[0x80000908]:addi a0, a0, 4095

[0x80000918]:slli a0, a0, 58
[0x8000091c]:addi a0, a0, 4095

[0x8000092c]:slli a0, a0, 59
[0x80000930]:addi a0, a0, 4095

[0x80000940]:slli a0, a0, 60
[0x80000944]:addi a0, a0, 4095

[0x80000954]:slli a0, a0, 62
[0x80000958]:addi a0, a0, 4095

[0x8000096c]:slli a0, a0, 12
[0x80000970]:addi a0, a0, 1365

[0x80000974]:slli a0, a0, 12
[0x80000978]:addi a0, a0, 1365

[0x8000097c]:slli a0, a0, 12
[0x80000980]:addi a0, a0, 1365

[0x80000994]:slli a0, a0, 12
[0x80000998]:addi a0, a0, 2731

[0x8000099c]:slli a0, a0, 12
[0x800009a0]:addi a0, a0, 2731

[0x800009a4]:slli a0, a0, 12
[0x800009a8]:addi a0, a0, 2730

[0x800009d4]:slli a0, a0, 12
[0x800009d8]:addi a0, a0, 819

[0x800009dc]:slli a0, a0, 12
[0x800009e0]:addi a0, a0, 819

[0x800009e4]:slli a0, a0, 12
[0x800009e8]:addi a0, a0, 819

[0x800009fc]:slli a0, a0, 12
[0x80000a00]:addi a0, a0, 819

[0x80000a04]:slli a0, a0, 12
[0x80000a08]:addi a0, a0, 819

[0x80000a0c]:slli a0, a0, 13
[0x80000a10]:addi a0, a0, 1638

[0x80000a24]:slli a0, a0, 12
[0x80000a28]:addi a0, a0, 3277

[0x80000a3c]:slli a0, a0, 12
[0x80000a40]:addi a0, a0, 819

[0x80000a54]:slli a0, a0, 12
[0x80000a58]:addi a0, a0, 1365

[0x80000a5c]:slli a0, a0, 12
[0x80000a60]:addi a0, a0, 1365

[0x80000a64]:slli a0, a0, 12
[0x80000a68]:addi a0, a0, 1364

[0x80000a7c]:slli a0, a0, 12
[0x80000a80]:addi a0, a0, 819

[0x80000a84]:slli a0, a0, 12
[0x80000a88]:addi a0, a0, 819

[0x80000a8c]:slli a0, a0, 12
[0x80000a90]:addi a0, a0, 818

[0x80000aa4]:slli a0, a0, 12
[0x80000aa8]:addi a0, a0, 819

[0x80000aac]:slli a0, a0, 12
[0x80000ab0]:addi a0, a0, 819

[0x80000ab4]:slli a0, a0, 13
[0x80000ab8]:addi a0, a0, 1637

[0x80000acc]:slli a0, a0, 12
[0x80000ad0]:addi a0, a0, 818

[0x80000ae4]:slli a0, a0, 12
[0x80000ae8]:addi a0, a0, 2731

[0x80000aec]:slli a0, a0, 12
[0x80000af0]:addi a0, a0, 2731

[0x80000af4]:slli a0, a0, 12
[0x80000af8]:addi a0, a0, 2731

[0x80000b18]:slli a0, a0, 12
[0x80000b1c]:addi a0, a0, 819

[0x80000b20]:slli a0, a0, 12
[0x80000b24]:addi a0, a0, 819

[0x80000b28]:slli a0, a0, 12
[0x80000b2c]:addi a0, a0, 820

[0x80000b40]:slli a0, a0, 12
[0x80000b44]:addi a0, a0, 819

[0x80000b48]:slli a0, a0, 12
[0x80000b4c]:addi a0, a0, 819

[0x80000b50]:slli a0, a0, 13
[0x80000b54]:addi a0, a0, 1639

[0x80000b68]:slli a0, a0, 12
[0x80000b6c]:addi a0, a0, 3278

[0x80000b80]:slli a0, a0, 12
[0x80000b84]:addi a0, a0, 820

[0x80000ba0]:slli a0, a0, 40

[0x80000c60]:slli a0, a0, 31
[0x80000c64]:addi a0, a0, 4095

[0x80000c74]:slli a0, a0, 33
[0x80000c78]:addi a0, a0, 4095

[0x80000c88]:slli a0, a0, 34
[0x80000c8c]:addi a0, a0, 4095

[0x80000c9c]:slli a0, a0, 35
[0x80000ca0]:addi a0, a0, 4095

[0x80000cb0]:slli a0, a0, 36
[0x80000cb4]:addi a0, a0, 4095

[0x80000cc4]:slli a0, a0, 37
[0x80000cc8]:addi a0, a0, 4095

[0x80000cd8]:slli a0, a0, 38
[0x80000cdc]:addi a0, a0, 4095

[0x80000cec]:slli a0, a0, 39
[0x80000cf0]:addi a0, a0, 4095

[0x80000d00]:slli a0, a0, 40
[0x80000d04]:addi a0, a0, 4095

[0x80000d14]:slli a0, a0, 41
[0x80000d18]:addi a0, a0, 4095

[0x80000d28]:slli a0, a0, 42
[0x80000d2c]:addi a0, a0, 4095

[0x80000d3c]:slli a0, a0, 43
[0x80000d40]:addi a0, a0, 4095

[0x80000d50]:slli a0, a0, 44
[0x80000d54]:addi a0, a0, 4095

[0x80000d64]:slli a0, a0, 45
[0x80000d68]:addi a0, a0, 4095

[0x80000d78]:slli a0, a0, 46
[0x80000d7c]:addi a0, a0, 4095

[0x80000d8c]:slli a0, a0, 47
[0x80000d90]:addi a0, a0, 4095

[0x80000da0]:slli a0, a0, 48
[0x80000da4]:addi a0, a0, 4095

[0x80000db4]:slli a0, a0, 49
[0x80000db8]:addi a0, a0, 4095

[0x80000dc8]:slli a0, a0, 50
[0x80000dcc]:addi a0, a0, 4095

[0x80000ddc]:slli a0, a0, 51
[0x80000de0]:addi a0, a0, 4095

[0x80000df0]:slli a0, a0, 52
[0x80000df4]:addi a0, a0, 4095

[0x80000e04]:slli a0, a0, 63
[0x80000e08]:addi a0, a0, 4095



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

|s.no|            signature             |                                                              coverpoints                                                               |                                code                                |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80002208]<br>0xF800000000000000|- rs1_val == -2305843009213693953<br> - imm_val == 59<br>                                                                               |[0x800003a4]:slli s7, s7, 59<br> [0x800003a8]:sd s7, 0(a5)<br>      |
|   2|[0x80002210]<br>0x0000000000000800|- rs1 : x10<br> - rd : x18<br> - rs1 != rd<br> - rs1_val > 0 and imm_val > 0 and imm_val < xlen<br> - rs1_val == 4<br> - rs1_val==4<br> |[0x800003b0]:slli s2, a0, 9<br> [0x800003b4]:sd s2, 8(a5)<br>       |
|   3|[0x80002218]<br>0xFFFFFFFEFFFFFFFF|- rd : x29<br> - rs1_val < 0 and imm_val == 0<br> - rs1_val == -4294967297<br>                                                          |[0x800003c4]:slli t4, tp, 0<br> [0x800003c8]:sd t4, 16(a5)<br>      |
|   4|[0x80002220]<br>0x5555555555555556|- rd : x28<br> - rs1_val > 0 and imm_val == 0<br> - rs1_val==6148914691236517206<br>                                                    |[0x800003ec]:slli t3, gp, 0<br> [0x800003f0]:sd t3, 24(a5)<br>      |
|   5|[0x80002228]<br>0x8000000000000000|- rs1 : x16<br> - rd : x9<br> - rs1_val < 0 and imm_val == (xlen-1)<br> - rs1_val == -262145<br>                                        |[0x800003fc]:slli s1, a6, 63<br> [0x80000400]:sd s1, 32(a5)<br>     |
|   6|[0x80002230]<br>0x0000000000000000|- rd : x22<br> - rs1_val > 0 and imm_val == (xlen-1)<br> - rs1_val == 8589934592<br>                                                    |[0x8000040c]:slli s6, s11, 63<br> [0x80000410]:sd s6, 40(a5)<br>    |
|   7|[0x80002238]<br>0x0000000000100000|- rs1 : x20<br> - rd : x16<br> - rs1_val == imm_val and imm_val > 0 and imm_val < xlen<br> - rs1_val == 16<br> - imm_val == 16<br>      |[0x80000418]:slli a6, s4, 16<br> [0x8000041c]:sd a6, 48(a5)<br>     |
|   8|[0x80002240]<br>0x0000000000000000|- rd : x10<br> - rs1_val == (-2**(xlen-1)) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == -9223372036854775808<br>                |[0x80000428]:slli a0, ra, 13<br> [0x8000042c]:sd a0, 56(a5)<br>     |
|   9|[0x80002248]<br>0x0000000000000000|- rs1 : x26<br> - rd : x12<br> - rs1_val == 0 and imm_val >= 0 and imm_val < xlen<br> - rs1_val==0<br>                                  |[0x80000434]:slli a2, s10, 7<br> [0x80000438]:sd a2, 64(a5)<br>     |
|  10|[0x80002250]<br>0x0000000000000000|- rd : x0<br> - rs1_val == (2**(xlen-1)-1) and imm_val >= 0 and imm_val < xlen<br> - rs1_val == 9223372036854775807<br>                 |[0x80000448]:slli zero, s9, 19<br> [0x8000044c]:sd zero, 72(a5)<br> |
|  11|[0x80002258]<br>0x0000000000000080|- rs1 : x22<br> - rd : x13<br>                                                                                                          |[0x80000454]:slli a3, s6, 7<br> [0x80000458]:sd a3, 80(a5)<br>      |
|  12|[0x80002260]<br>0x0000000000001000|- rs1 : x19<br> - rd : x6<br> - rs1_val == 2<br> - rs1_val==2<br>                                                                       |[0x80000460]:slli t1, s3, 11<br> [0x80000464]:sd t1, 88(a5)<br>     |
|  13|[0x80002268]<br>0x0000000000000200|- rs1 : x7<br> - rd : x19<br> - rs1_val == 8<br>                                                                                        |[0x8000046c]:slli s3, t2, 6<br> [0x80000470]:sd s3, 96(a5)<br>      |
|  14|[0x80002270]<br>0x0000000000000020|- rs1 : x24<br> - rd : x30<br> - rs1_val == 32<br>                                                                                      |[0x80000478]:slli t5, s8, 0<br> [0x8000047c]:sd t5, 104(a5)<br>     |
|  15|[0x80002278]<br>0x0000000000100000|- rs1 : x2<br> - rd : x11<br> - rs1_val == 64<br>                                                                                       |[0x80000484]:slli a1, sp, 14<br> [0x80000488]:sd a1, 112(a5)<br>    |
|  16|[0x80002280]<br>0x0000000000008000|- rs1 : x30<br> - rd : x5<br> - rs1_val == 128<br> - imm_val == 8<br>                                                                   |[0x80000490]:slli t0, t5, 8<br> [0x80000494]:sd t0, 120(a5)<br>     |
|  17|[0x80002288]<br>0x0000000000010000|- rs1 : x18<br> - rs1_val == 256<br>                                                                                                    |[0x8000049c]:slli gp, s2, 8<br> [0x800004a0]:sd gp, 128(a5)<br>     |
|  18|[0x80002290]<br>0x0000000002000000|- rs1 : x29<br> - rd : x24<br> - rs1_val == 512<br>                                                                                     |[0x800004a8]:slli s8, t4, 16<br> [0x800004ac]:sd s8, 136(a5)<br>    |
|  19|[0x80002298]<br>0x0000000020000000|- rs1 : x8<br> - rs1_val == 1024<br>                                                                                                    |[0x800004b4]:slli s9, fp, 19<br> [0x800004b8]:sd s9, 144(a5)<br>    |
|  20|[0x800022a0]<br>0x0000000020000000|- rs1 : x5<br> - rd : x8<br> - rs1_val == 2048<br>                                                                                      |[0x800004c4]:slli fp, t0, 18<br> [0x800004c8]:sd fp, 152(a5)<br>    |
|  21|[0x800022a8]<br>0x0000000000008000|- rs1 : x17<br> - rd : x14<br> - rs1_val == 4096<br>                                                                                    |[0x800004d0]:slli a4, a7, 3<br> [0x800004d4]:sd a4, 160(a5)<br>     |
|  22|[0x800022b0]<br>0x0000000000040000|- rs1 : x12<br> - rs1_val == 8192<br>                                                                                                   |[0x800004e4]:slli ra, a2, 5<br> [0x800004e8]:sd ra, 0(gp)<br>       |
|  23|[0x800022b8]<br>0x0000000000020000|- rs1 : x28<br> - rs1_val == 16384<br>                                                                                                  |[0x800004f0]:slli tp, t3, 3<br> [0x800004f4]:sd tp, 8(gp)<br>       |
|  24|[0x800022c0]<br>0x0000000000000000|- rs1 : x0<br> - rd : x7<br>                                                                                                            |[0x80000500]:slli t2, zero, 17<br> [0x80000504]:sd t2, 16(gp)<br>   |
|  25|[0x800022c8]<br>0x0000000000000000|- rs1 : x14<br> - rd : x26<br> - rs1_val == 65536<br>                                                                                   |[0x8000050c]:slli s10, a4, 63<br> [0x80000510]:sd s10, 24(gp)<br>   |
|  26|[0x800022d0]<br>0x0000000000400000|- rs1 : x13<br> - rd : x20<br> - rs1_val == 131072<br>                                                                                  |[0x80000518]:slli s4, a3, 5<br> [0x8000051c]:sd s4, 32(gp)<br>      |
|  27|[0x800022d8]<br>0x0000001000000000|- rs1 : x31<br> - rs1_val == 262144<br>                                                                                                 |[0x80000524]:slli s11, t6, 18<br> [0x80000528]:sd s11, 40(gp)<br>   |
|  28|[0x800022e0]<br>0x0000004000000000|- rs1 : x6<br> - rd : x2<br> - rs1_val == 524288<br>                                                                                    |[0x80000530]:slli sp, t1, 19<br> [0x80000534]:sd sp, 48(gp)<br>     |
|  29|[0x800022e8]<br>0x0000000000000000|- rs1 : x11<br> - rd : x31<br> - rs1_val == 1048576<br> - imm_val == 47<br>                                                             |[0x8000053c]:slli t6, a1, 47<br> [0x80000540]:sd t6, 56(gp)<br>     |
|  30|[0x800022f0]<br>0x0000000100000000|- rs1 : x21<br> - rd : x17<br> - rs1_val == 2097152<br>                                                                                 |[0x80000548]:slli a7, s5, 11<br> [0x8000054c]:sd a7, 64(gp)<br>     |
|  31|[0x800022f8]<br>0x0000002000000000|- rs1 : x9<br> - rd : x15<br> - rs1_val == 4194304<br>                                                                                  |[0x80000554]:slli a5, s1, 15<br> [0x80000558]:sd a5, 72(gp)<br>     |
|  32|[0x80002300]<br>0x0000000000000000|- rs1 : x15<br> - rd : x21<br> - rs1_val == 8388608<br> - imm_val == 62<br>                                                             |[0x80000560]:slli s5, a5, 62<br> [0x80000564]:sd s5, 80(gp)<br>     |
|  33|[0x80002308]<br>0x0000200000000000|- rs1_val == 16777216<br> - imm_val == 21<br>                                                                                           |[0x8000056c]:slli a1, a0, 21<br> [0x80000570]:sd a1, 88(gp)<br>     |
|  34|[0x80002310]<br>0x0000000000000000|- rs1_val == 33554432<br>                                                                                                               |[0x80000578]:slli a1, a0, 62<br> [0x8000057c]:sd a1, 96(gp)<br>     |
|  35|[0x80002318]<br>0x0000004000000000|- rs1_val == 67108864<br>                                                                                                               |[0x80000584]:slli a1, a0, 12<br> [0x80000588]:sd a1, 104(gp)<br>    |
|  36|[0x80002320]<br>0x0000000080000000|- rs1_val == 134217728<br> - imm_val == 4<br>                                                                                           |[0x80000590]:slli a1, a0, 4<br> [0x80000594]:sd a1, 112(gp)<br>     |
|  37|[0x80002328]<br>0x0000800000000000|- rs1_val == 268435456<br>                                                                                                              |[0x8000059c]:slli a1, a0, 19<br> [0x800005a0]:sd a1, 120(gp)<br>    |
|  38|[0x80002330]<br>0x0000010000000000|- rs1_val == 536870912<br>                                                                                                              |[0x800005a8]:slli a1, a0, 11<br> [0x800005ac]:sd a1, 128(gp)<br>    |
|  39|[0x80002338]<br>0x0000000000000000|- rs1_val == 1073741824<br>                                                                                                             |[0x800005b4]:slli a1, a0, 62<br> [0x800005b8]:sd a1, 136(gp)<br>    |
|  40|[0x80002340]<br>0x0000800000000000|- rs1_val == 2147483648<br>                                                                                                             |[0x800005c4]:slli a1, a0, 16<br> [0x800005c8]:sd a1, 144(gp)<br>    |
|  41|[0x80002348]<br>0x0000100000000000|- rs1_val == 4294967296<br>                                                                                                             |[0x800005d4]:slli a1, a0, 12<br> [0x800005d8]:sd a1, 152(gp)<br>    |
|  42|[0x80002350]<br>0x0000001000000000|- rs1_val == 17179869184<br> - imm_val == 2<br>                                                                                         |[0x800005e4]:slli a1, a0, 2<br> [0x800005e8]:sd a1, 160(gp)<br>     |
|  43|[0x80002358]<br>0x0008000000000000|- rs1_val == 34359738368<br>                                                                                                            |[0x800005f4]:slli a1, a0, 16<br> [0x800005f8]:sd a1, 168(gp)<br>    |
|  44|[0x80002360]<br>0x0000000000000000|- rs1_val == 68719476736<br>                                                                                                            |[0x80000604]:slli a1, a0, 31<br> [0x80000608]:sd a1, 176(gp)<br>    |
|  45|[0x80002368]<br>0x0000100000000000|- rs1_val == 137438953472<br>                                                                                                           |[0x80000614]:slli a1, a0, 7<br> [0x80000618]:sd a1, 184(gp)<br>     |
|  46|[0x80002370]<br>0x0000000000000000|- rs1_val == 274877906944<br>                                                                                                           |[0x80000624]:slli a1, a0, 31<br> [0x80000628]:sd a1, 192(gp)<br>    |
|  47|[0x80002378]<br>0x0000400000000000|- rs1_val == 549755813888<br>                                                                                                           |[0x80000634]:slli a1, a0, 7<br> [0x80000638]:sd a1, 200(gp)<br>     |
|  48|[0x80002380]<br>0x0080000000000000|- rs1_val == 1099511627776<br>                                                                                                          |[0x80000644]:slli a1, a0, 15<br> [0x80000648]:sd a1, 208(gp)<br>    |
|  49|[0x80002388]<br>0x0000000000000000|- rs1_val == 2199023255552<br>                                                                                                          |[0x80000654]:slli a1, a0, 62<br> [0x80000658]:sd a1, 216(gp)<br>    |
|  50|[0x80002390]<br>0x0000040000000000|- rs1_val == 4398046511104<br>                                                                                                          |[0x80000664]:slli a1, a0, 0<br> [0x80000668]:sd a1, 224(gp)<br>     |
|  51|[0x80002398]<br>0x0004000000000000|- rs1_val == 8796093022208<br>                                                                                                          |[0x80000674]:slli a1, a0, 7<br> [0x80000678]:sd a1, 232(gp)<br>     |
|  52|[0x800023a0]<br>0x0000000000000000|- rs1_val == 17592186044416<br>                                                                                                         |[0x80000684]:slli a1, a0, 59<br> [0x80000688]:sd a1, 240(gp)<br>    |
|  53|[0x800023a8]<br>0x0100000000000000|- rs1_val == 35184372088832<br>                                                                                                         |[0x80000694]:slli a1, a0, 11<br> [0x80000698]:sd a1, 248(gp)<br>    |
|  54|[0x800023b0]<br>0x0100000000000000|- rs1_val == 70368744177664<br>                                                                                                         |[0x800006a4]:slli a1, a0, 10<br> [0x800006a8]:sd a1, 256(gp)<br>    |
|  55|[0x800023b8]<br>0x0002000000000000|- rs1_val == 140737488355328<br>                                                                                                        |[0x800006b4]:slli a1, a0, 2<br> [0x800006b8]:sd a1, 264(gp)<br>     |
|  56|[0x800023c0]<br>0x0000000000000000|- rs1_val == 281474976710656<br>                                                                                                        |[0x800006c4]:slli a1, a0, 17<br> [0x800006c8]:sd a1, 272(gp)<br>    |
|  57|[0x800023c8]<br>0x0010000000000000|- rs1_val == 562949953421312<br>                                                                                                        |[0x800006d4]:slli a1, a0, 3<br> [0x800006d8]:sd a1, 280(gp)<br>     |
|  58|[0x800023d0]<br>0x0000000000000000|- rs1_val == 1125899906842624<br>                                                                                                       |[0x800006e4]:slli a1, a0, 19<br> [0x800006e8]:sd a1, 288(gp)<br>    |
|  59|[0x800023d8]<br>0x0080000000000000|- rs1_val == 2251799813685248<br>                                                                                                       |[0x800006f4]:slli a1, a0, 4<br> [0x800006f8]:sd a1, 296(gp)<br>     |
|  60|[0x800023e0]<br>0x8000000000000000|- rs1_val == 4503599627370496<br>                                                                                                       |[0x80000704]:slli a1, a0, 11<br> [0x80000708]:sd a1, 304(gp)<br>    |
|  61|[0x800023e8]<br>0x1000000000000000|- rs1_val == 9007199254740992<br>                                                                                                       |[0x80000714]:slli a1, a0, 7<br> [0x80000718]:sd a1, 312(gp)<br>     |
|  62|[0x800023f0]<br>0x0000000000000000|- rs1_val == 18014398509481984<br>                                                                                                      |[0x80000724]:slli a1, a0, 63<br> [0x80000728]:sd a1, 320(gp)<br>    |
|  63|[0x800023f8]<br>0x0000000000000000|- rs1_val == 36028797018963968<br>                                                                                                      |[0x80000734]:slli a1, a0, 42<br> [0x80000738]:sd a1, 328(gp)<br>    |
|  64|[0x80002400]<br>0x0000000000000000|- rs1_val == 72057594037927936<br>                                                                                                      |[0x80000744]:slli a1, a0, 12<br> [0x80000748]:sd a1, 336(gp)<br>    |
|  65|[0x80002408]<br>0x0000000000000000|- rs1_val == 144115188075855872<br>                                                                                                     |[0x80000754]:slli a1, a0, 17<br> [0x80000758]:sd a1, 344(gp)<br>    |
|  66|[0x80002410]<br>0x0000000000000000|- rs1_val == 288230376151711744<br>                                                                                                     |[0x80000764]:slli a1, a0, 14<br> [0x80000768]:sd a1, 352(gp)<br>    |
|  67|[0x80002418]<br>0x1000000000000000|- rs1_val == 576460752303423488<br> - imm_val == 1<br>                                                                                  |[0x80000774]:slli a1, a0, 1<br> [0x80000778]:sd a1, 360(gp)<br>     |
|  68|[0x80002420]<br>0x0000000000000000|- rs1_val == 1152921504606846976<br>                                                                                                    |[0x80000784]:slli a1, a0, 6<br> [0x80000788]:sd a1, 368(gp)<br>     |
|  69|[0x80002428]<br>0x0000000000000000|- rs1_val == 2305843009213693952<br>                                                                                                    |[0x80000794]:slli a1, a0, 8<br> [0x80000798]:sd a1, 376(gp)<br>     |
|  70|[0x80002430]<br>0x0000000000000000|- rs1_val == 4611686018427387904<br>                                                                                                    |[0x800007a4]:slli a1, a0, 5<br> [0x800007a8]:sd a1, 384(gp)<br>     |
|  71|[0x80002438]<br>0xFFFFFFFFFFFFFF80|- rs1_val == -2<br>                                                                                                                     |[0x800007b0]:slli a1, a0, 6<br> [0x800007b4]:sd a1, 392(gp)<br>     |
|  72|[0x80002440]<br>0xFFFFF40000000000|- rs1_val == -3<br>                                                                                                                     |[0x800007bc]:slli a1, a0, 42<br> [0x800007c0]:sd a1, 400(gp)<br>    |
|  73|[0x80002448]<br>0xFFFFFFFFFFFF6000|- rs1_val == -5<br>                                                                                                                     |[0x800007c8]:slli a1, a0, 13<br> [0x800007cc]:sd a1, 408(gp)<br>    |
|  74|[0x80002450]<br>0xFFFFFFFFFFFFFEE0|- rs1_val == -9<br>                                                                                                                     |[0x800007d4]:slli a1, a0, 5<br> [0x800007d8]:sd a1, 416(gp)<br>     |
|  75|[0x80002458]<br>0xFFFFFFFFFFFBC000|- rs1_val == -17<br>                                                                                                                    |[0x800007e0]:slli a1, a0, 14<br> [0x800007e4]:sd a1, 424(gp)<br>    |
|  76|[0x80002460]<br>0xFFFFFFFFFFBE0000|- rs1_val == -33<br>                                                                                                                    |[0x800007ec]:slli a1, a0, 17<br> [0x800007f0]:sd a1, 432(gp)<br>    |
|  77|[0x80002468]<br>0xFFFFFFFFFFFF7E00|- rs1_val == -65<br>                                                                                                                    |[0x800007f8]:slli a1, a0, 9<br> [0x800007fc]:sd a1, 440(gp)<br>     |
|  78|[0x80002470]<br>0xFFFFFFFFFFBF8000|- rs1_val == -129<br>                                                                                                                   |[0x80000804]:slli a1, a0, 15<br> [0x80000808]:sd a1, 448(gp)<br>    |
|  79|[0x80002478]<br>0xFFFFFFFFFFFFBFC0|- rs1_val == -257<br>                                                                                                                   |[0x80000810]:slli a1, a0, 6<br> [0x80000814]:sd a1, 456(gp)<br>     |
|  80|[0x80002480]<br>0xFFFFFFFFEFF80000|- rs1_val == -513<br>                                                                                                                   |[0x8000081c]:slli a1, a0, 19<br> [0x80000820]:sd a1, 464(gp)<br>    |
|  81|[0x80002488]<br>0xC000000000000000|- rs1_val == -1025<br>                                                                                                                  |[0x80000828]:slli a1, a0, 62<br> [0x8000082c]:sd a1, 472(gp)<br>    |
|  82|[0x80002490]<br>0xFFFFFFFFFFFEFFE0|- rs1_val == -2049<br>                                                                                                                  |[0x80000838]:slli a1, a0, 5<br> [0x8000083c]:sd a1, 480(gp)<br>     |
|  83|[0x80002498]<br>0xFFBFFC0000000000|- rs1_val == -4097<br>                                                                                                                  |[0x80000848]:slli a1, a0, 42<br> [0x8000084c]:sd a1, 488(gp)<br>    |
|  84|[0x800024a0]<br>0xFFFFFFFFFFBFFE00|- rs1_val == -8193<br>                                                                                                                  |[0x80000858]:slli a1, a0, 9<br> [0x8000085c]:sd a1, 496(gp)<br>     |
|  85|[0x800024a8]<br>0x8000000000000000|- rs1_val == -16385<br>                                                                                                                 |[0x80000868]:slli a1, a0, 63<br> [0x8000086c]:sd a1, 504(gp)<br>    |
|  86|[0x800024b0]<br>0xE000000000000000|- rs1_val == -32769<br>                                                                                                                 |[0x80000878]:slli a1, a0, 61<br> [0x8000087c]:sd a1, 512(gp)<br>    |
|  87|[0x800024b8]<br>0xFFFFFFFFFBFFFC00|- rs1_val == -65537<br>                                                                                                                 |[0x80000888]:slli a1, a0, 10<br> [0x8000088c]:sd a1, 520(gp)<br>    |
|  88|[0x800024c0]<br>0xFFFFFFFFBFFFE000|- rs1_val == -131073<br>                                                                                                                |[0x80000898]:slli a1, a0, 13<br> [0x8000089c]:sd a1, 528(gp)<br>    |
|  89|[0x800024c8]<br>0xFFFFFFFFEFFFFE00|- rs1_val == -524289<br>                                                                                                                |[0x800008a8]:slli a1, a0, 9<br> [0x800008ac]:sd a1, 536(gp)<br>     |
|  90|[0x800024d0]<br>0xF7FFFFFFFFFFFFC0|- rs1_val == -9007199254740993<br>                                                                                                      |[0x800008bc]:slli a1, a0, 6<br> [0x800008c0]:sd a1, 544(gp)<br>     |
|  91|[0x800024d8]<br>0xFFFFFFFFFFFFF000|- rs1_val == -18014398509481985<br>                                                                                                     |[0x800008d0]:slli a1, a0, 12<br> [0x800008d4]:sd a1, 552(gp)<br>    |
|  92|[0x800024e0]<br>0xFFFFFFFFFFFFFC00|- rs1_val == -36028797018963969<br>                                                                                                     |[0x800008e4]:slli a1, a0, 10<br> [0x800008e8]:sd a1, 560(gp)<br>    |
|  93|[0x800024e8]<br>0xFFFFFFFFFFF80000|- rs1_val == -72057594037927937<br>                                                                                                     |[0x800008f8]:slli a1, a0, 19<br> [0x800008fc]:sd a1, 568(gp)<br>    |
|  94|[0x800024f0]<br>0xFFFFFFFFFFFFFC00|- rs1_val == -144115188075855873<br>                                                                                                    |[0x8000090c]:slli a1, a0, 10<br> [0x80000910]:sd a1, 576(gp)<br>    |
|  95|[0x800024f8]<br>0xFFFFFFFFFFFFF000|- rs1_val == -288230376151711745<br>                                                                                                    |[0x80000920]:slli a1, a0, 12<br> [0x80000924]:sd a1, 584(gp)<br>    |
|  96|[0x80002500]<br>0xFFFFFC0000000000|- rs1_val == -576460752303423489<br>                                                                                                    |[0x80000934]:slli a1, a0, 42<br> [0x80000938]:sd a1, 592(gp)<br>    |
|  97|[0x80002508]<br>0xFFFFFC0000000000|- rs1_val == -1152921504606846977<br>                                                                                                   |[0x80000948]:slli a1, a0, 42<br> [0x8000094c]:sd a1, 600(gp)<br>    |
|  98|[0x80002510]<br>0xFFFFFFFF80000000|- rs1_val == -4611686018427387905<br>                                                                                                   |[0x8000095c]:slli a1, a0, 31<br> [0x80000960]:sd a1, 608(gp)<br>    |
|  99|[0x80002518]<br>0x5555555555554000|- rs1_val == 6148914691236517205<br> - rs1_val==6148914691236517205<br>                                                                 |[0x80000984]:slli a1, a0, 14<br> [0x80000988]:sd a1, 616(gp)<br>    |
| 100|[0x80002520]<br>0x5000000000000000|- rs1_val == -6148914691236517206<br> - rs1_val==-6148914691236517206<br>                                                               |[0x800009ac]:slli a1, a0, 59<br> [0x800009b0]:sd a1, 624(gp)<br>    |
| 101|[0x80002528]<br>0x0000000000006000|- rs1_val==3<br>                                                                                                                        |[0x800009b8]:slli a1, a0, 13<br> [0x800009bc]:sd a1, 632(gp)<br>    |
| 102|[0x80002530]<br>0x0000000280000000|- rs1_val==5<br>                                                                                                                        |[0x800009c4]:slli a1, a0, 31<br> [0x800009c8]:sd a1, 640(gp)<br>    |
| 103|[0x80002538]<br>0xCCCCCC0000000000|- rs1_val==3689348814741910323<br>                                                                                                      |[0x800009ec]:slli a1, a0, 42<br> [0x800009f0]:sd a1, 648(gp)<br>    |
| 104|[0x80002540]<br>0x9999999999998000|- rs1_val==7378697629483820646<br>                                                                                                      |[0x80000a14]:slli a1, a0, 14<br> [0x80000a18]:sd a1, 656(gp)<br>    |
| 105|[0x80002548]<br>0xFFFFFFD2BEC33340|- rs1_val==-3037000499<br>                                                                                                              |[0x80000a2c]:slli a1, a0, 6<br> [0x80000a30]:sd a1, 664(gp)<br>     |
| 106|[0x80002550]<br>0x000016A09E666000|- rs1_val==3037000499<br>                                                                                                               |[0x80000a44]:slli a1, a0, 13<br> [0x80000a48]:sd a1, 672(gp)<br>    |
| 107|[0x80002558]<br>0x5555555555540000|- rs1_val==6148914691236517204<br>                                                                                                      |[0x80000a6c]:slli a1, a0, 16<br> [0x80000a70]:sd a1, 680(gp)<br>    |
| 108|[0x80002560]<br>0xCCCCCCCCCCC80000|- rs1_val==3689348814741910322<br>                                                                                                      |[0x80000a94]:slli a1, a0, 18<br> [0x80000a98]:sd a1, 688(gp)<br>    |
| 109|[0x80002568]<br>0xCCCCCCCCCCCCCCA0|- rs1_val==7378697629483820645<br>                                                                                                      |[0x80000abc]:slli a1, a0, 5<br> [0x80000ac0]:sd a1, 696(gp)<br>     |
| 110|[0x80002570]<br>0x0002D413CCC80000|- rs1_val==3037000498<br>                                                                                                               |[0x80000ad4]:slli a1, a0, 18<br> [0x80000ad8]:sd a1, 704(gp)<br>    |
| 111|[0x80002578]<br>0x5555555555580000|- rs1_val==-6148914691236517205<br>                                                                                                     |[0x80000afc]:slli a1, a0, 19<br> [0x80000b00]:sd a1, 712(gp)<br>    |
| 112|[0x80002580]<br>0x0000000000000000|- rs1_val==6<br>                                                                                                                        |[0x80000b08]:slli a1, a0, 63<br> [0x80000b0c]:sd a1, 720(gp)<br>    |
| 113|[0x80002588]<br>0xCCCCCCCCCCD00000|- rs1_val==3689348814741910324<br>                                                                                                      |[0x80000b30]:slli a1, a0, 18<br> [0x80000b34]:sd a1, 728(gp)<br>    |
| 114|[0x80002590]<br>0x3333333333380000|- rs1_val==7378697629483820647<br>                                                                                                      |[0x80000b58]:slli a1, a0, 19<br> [0x80000b5c]:sd a1, 736(gp)<br>    |
| 115|[0x80002598]<br>0xFFFF4AFB0CCE0000|- rs1_val==-3037000498<br>                                                                                                              |[0x80000b70]:slli a1, a0, 16<br> [0x80000b74]:sd a1, 744(gp)<br>    |
| 116|[0x800025a0]<br>0x0000005A82799A00|- rs1_val==3037000500<br>                                                                                                               |[0x80000b88]:slli a1, a0, 7<br> [0x80000b8c]:sd a1, 752(gp)<br>     |
| 117|[0x800025b8]<br>0xFFFFFFFBFFFFC000|- rs1_val == -1048577<br>                                                                                                               |[0x80000bb4]:slli a1, a0, 14<br> [0x80000bb8]:sd a1, 776(gp)<br>    |
| 118|[0x800025c0]<br>0xFFFFFFFFF7FFFFC0|- rs1_val == -2097153<br>                                                                                                               |[0x80000bc4]:slli a1, a0, 6<br> [0x80000bc8]:sd a1, 784(gp)<br>     |
| 119|[0x800025c8]<br>0xFFFFFFF7FFFFE000|- rs1_val == -4194305<br>                                                                                                               |[0x80000bd4]:slli a1, a0, 13<br> [0x80000bd8]:sd a1, 792(gp)<br>    |
| 120|[0x800025d0]<br>0xFFFFFFFFFDFFFFFC|- rs1_val == -8388609<br>                                                                                                               |[0x80000be4]:slli a1, a0, 2<br> [0x80000be8]:sd a1, 800(gp)<br>     |
| 121|[0x800025d8]<br>0xFFFFFFDFFFFFE000|- rs1_val == -16777217<br>                                                                                                              |[0x80000bf4]:slli a1, a0, 13<br> [0x80000bf8]:sd a1, 808(gp)<br>    |
| 122|[0x800025e0]<br>0x8000000000000000|- rs1_val == -33554433<br>                                                                                                              |[0x80000c04]:slli a1, a0, 63<br> [0x80000c08]:sd a1, 816(gp)<br>    |
| 123|[0x800025e8]<br>0xFFFFFC0000000000|- rs1_val == -67108865<br>                                                                                                              |[0x80000c14]:slli a1, a0, 42<br> [0x80000c18]:sd a1, 824(gp)<br>    |
| 124|[0x800025f0]<br>0xFFFFFFDFFFFFFC00|- rs1_val == -134217729<br>                                                                                                             |[0x80000c24]:slli a1, a0, 10<br> [0x80000c28]:sd a1, 832(gp)<br>    |
| 125|[0x800025f8]<br>0xF7FFFFFF80000000|- rs1_val == -268435457<br>                                                                                                             |[0x80000c34]:slli a1, a0, 31<br> [0x80000c38]:sd a1, 840(gp)<br>    |
| 126|[0x80002600]<br>0xFFFFFFFFDFFFFFFF|- rs1_val == -536870913<br>                                                                                                             |[0x80000c44]:slli a1, a0, 0<br> [0x80000c48]:sd a1, 848(gp)<br>     |
| 127|[0x80002608]<br>0xFFFFBFFFFFFF0000|- rs1_val == -1073741825<br>                                                                                                            |[0x80000c54]:slli a1, a0, 16<br> [0x80000c58]:sd a1, 856(gp)<br>    |
| 128|[0x80002610]<br>0xF800000000000000|- rs1_val == -2147483649<br>                                                                                                            |[0x80000c68]:slli a1, a0, 59<br> [0x80000c6c]:sd a1, 864(gp)<br>    |
| 129|[0x80002618]<br>0xF800000000000000|- rs1_val == -8589934593<br>                                                                                                            |[0x80000c7c]:slli a1, a0, 59<br> [0x80000c80]:sd a1, 872(gp)<br>    |
| 130|[0x80002620]<br>0xFFFFFFFF80000000|- rs1_val == -17179869185<br>                                                                                                           |[0x80000c90]:slli a1, a0, 31<br> [0x80000c94]:sd a1, 880(gp)<br>    |
| 131|[0x80002628]<br>0xFFEFFFFFFFFE0000|- rs1_val == -34359738369<br>                                                                                                           |[0x80000ca4]:slli a1, a0, 17<br> [0x80000ca8]:sd a1, 888(gp)<br>    |
| 132|[0x80002630]<br>0xFFFFFEFFFFFFFFF0|- rs1_val == -68719476737<br>                                                                                                           |[0x80000cb8]:slli a1, a0, 4<br> [0x80000cbc]:sd a1, 896(gp)<br>     |
| 133|[0x80002638]<br>0xFF80000000000000|- rs1_val == -137438953473<br>                                                                                                          |[0x80000ccc]:slli a1, a0, 55<br> [0x80000cd0]:sd a1, 904(gp)<br>    |
| 134|[0x80002640]<br>0xF7FFFFFFFFE00000|- rs1_val == -274877906945<br>                                                                                                          |[0x80000ce0]:slli a1, a0, 21<br> [0x80000ce4]:sd a1, 912(gp)<br>    |
| 135|[0x80002648]<br>0xFF7FFFFFFFFF0000|- rs1_val == -549755813889<br>                                                                                                          |[0x80000cf4]:slli a1, a0, 16<br> [0x80000cf8]:sd a1, 920(gp)<br>    |
| 136|[0x80002650]<br>0xFFFFDFFFFFFFFFE0|- rs1_val == -1099511627777<br>                                                                                                         |[0x80000d08]:slli a1, a0, 5<br> [0x80000d0c]:sd a1, 928(gp)<br>     |
| 137|[0x80002658]<br>0xFBFFFFFFFFFE0000|- rs1_val == -2199023255553<br>                                                                                                         |[0x80000d1c]:slli a1, a0, 17<br> [0x80000d20]:sd a1, 936(gp)<br>    |
| 138|[0x80002660]<br>0xFFBFFFFFFFFFF000|- rs1_val == -4398046511105<br>                                                                                                         |[0x80000d30]:slli a1, a0, 12<br> [0x80000d34]:sd a1, 944(gp)<br>    |
| 139|[0x80002668]<br>0xFFFFFC0000000000|- rs1_val == -8796093022209<br>                                                                                                         |[0x80000d44]:slli a1, a0, 42<br> [0x80000d48]:sd a1, 952(gp)<br>    |
| 140|[0x80002670]<br>0xFFFFBFFFFFFFFFFC|- rs1_val == -17592186044417<br>                                                                                                        |[0x80000d58]:slli a1, a0, 2<br> [0x80000d5c]:sd a1, 960(gp)<br>     |
| 141|[0x80002678]<br>0xFFBFFFFFFFFFFE00|- rs1_val == -35184372088833<br>                                                                                                        |[0x80000d6c]:slli a1, a0, 9<br> [0x80000d70]:sd a1, 968(gp)<br>     |
| 142|[0x80002680]<br>0xC000000000000000|- rs1_val == -70368744177665<br>                                                                                                        |[0x80000d80]:slli a1, a0, 62<br> [0x80000d84]:sd a1, 976(gp)<br>    |
| 143|[0x80002688]<br>0xEFFFFFFFFFFFE000|- rs1_val == -140737488355329<br>                                                                                                       |[0x80000d94]:slli a1, a0, 13<br> [0x80000d98]:sd a1, 984(gp)<br>    |
| 144|[0x80002690]<br>0xFFF7FFFFFFFFFFF8|- rs1_val == -281474976710657<br>                                                                                                       |[0x80000da8]:slli a1, a0, 3<br> [0x80000dac]:sd a1, 992(gp)<br>     |
| 145|[0x80002698]<br>0xDFFFFFFFFFFFF000|- rs1_val == -562949953421313<br>                                                                                                       |[0x80000dbc]:slli a1, a0, 12<br> [0x80000dc0]:sd a1, 1000(gp)<br>   |
| 146|[0x800026a0]<br>0xFFFFFFFF80000000|- rs1_val == -1125899906842625<br>                                                                                                      |[0x80000dd0]:slli a1, a0, 31<br> [0x80000dd4]:sd a1, 1008(gp)<br>   |
| 147|[0x800026a8]<br>0xFFFFFFFFFFFFC000|- rs1_val == -2251799813685249<br>                                                                                                      |[0x80000de4]:slli a1, a0, 14<br> [0x80000de8]:sd a1, 1016(gp)<br>   |
| 148|[0x800026b0]<br>0xEFFFFFFFFFFFFF00|- rs1_val == -4503599627370497<br>                                                                                                      |[0x80000df8]:slli a1, a0, 8<br> [0x80000dfc]:sd a1, 1024(gp)<br>    |
| 149|[0x800026c0]<br>0x0000000100000000|- rs1_val == 32768<br>                                                                                                                  |[0x80000e18]:slli a1, a0, 17<br> [0x80000e1c]:sd a1, 1040(gp)<br>   |
