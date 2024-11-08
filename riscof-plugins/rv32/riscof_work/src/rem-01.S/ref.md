
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature (completely or partially)
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update the signature completely
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000148', '0x80003614')]      |
| SIG_REGION                | [('0x80006110', '0x80006ab0', '616 words')]      |
| COV_LABELS                | rem      |
| TEST_NAME                 | /home/user/Work/New_Repo/riscv-arch-test-PR/riscof-plugins/rv32/riscof_work/src/rem-01.S/ref.S    |
| Total Number of coverpoints| 524     |
| Total Coverpoints Hit     | 522      |
| Total Signature Updates   | 614      |
| STAT1                     | 435      |
| STAT2                     | 179      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004a0]:rem t6, t5, t4
      [0x800004a4]:sw t6, 0x24(fp)
 -- Signature Addresses:
      Address: 0x8000619c Data: 0x0000B505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004b8]:rem t6, t5, t4
      [0x800004bc]:sw t6, 0x28(fp)
 -- Signature Addresses:
      Address: 0x800061a0 Data: 0x0000B505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004d0]:rem t6, t5, t4
      [0x800004d4]:sw t6, 0x2c(fp)
 -- Signature Addresses:
      Address: 0x800061a4 Data: 0x0000B505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004e8]:rem t6, t5, t4
      [0x800004ec]:sw t6, 0x30(fp)
 -- Signature Addresses:
      Address: 0x800061a8 Data: 0x0000B505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0
      - rs2_val == (2**(xlen-1)-1)




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004fc]:rem t6, t5, t4
      [0x80000500]:sw t6, 0x34(fp)
 -- Signature Addresses:
      Address: 0x800061ac Data: 0xFFFFFFFE
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000510]:rem t6, t5, t4
      [0x80000514]:sw t6, 0x38(fp)
 -- Signature Addresses:
      Address: 0x800061b0 Data: 0xFFFFFFFD
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000524]:rem t6, t5, t4
      [0x80000528]:sw t6, 0x3c(fp)
 -- Signature Addresses:
      Address: 0x800061b4 Data: 0xFFFFFFFB
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000538]:rem t6, t5, t4
      [0x8000053c]:sw t6, 0x40(fp)
 -- Signature Addresses:
      Address: 0x800061b8 Data: 0xFFFFFFF7
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000054c]:rem t6, t5, t4
      [0x80000550]:sw t6, 0x44(fp)
 -- Signature Addresses:
      Address: 0x800061bc Data: 0xFFFFFFEF
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000560]:rem t6, t5, t4
      [0x80000564]:sw t6, 0x48(fp)
 -- Signature Addresses:
      Address: 0x800061c0 Data: 0xFFFFFFDF
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000574]:rem t6, t5, t4
      [0x80000578]:sw t6, 0x4c(fp)
 -- Signature Addresses:
      Address: 0x800061c4 Data: 0xFFFFFFBF
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000588]:rem t6, t5, t4
      [0x8000058c]:sw t6, 0x50(fp)
 -- Signature Addresses:
      Address: 0x800061c8 Data: 0xFFFFFF7F
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000059c]:rem t6, t5, t4
      [0x800005a0]:sw t6, 0x54(fp)
 -- Signature Addresses:
      Address: 0x800061cc Data: 0xFFFFFEFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005b0]:rem t6, t5, t4
      [0x800005b4]:sw t6, 0x58(fp)
 -- Signature Addresses:
      Address: 0x800061d0 Data: 0xFFFFFDFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005c4]:rem t6, t5, t4
      [0x800005c8]:sw t6, 0x5c(fp)
 -- Signature Addresses:
      Address: 0x800061d4 Data: 0xFFFFFBFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005dc]:rem t6, t5, t4
      [0x800005e0]:sw t6, 0x60(fp)
 -- Signature Addresses:
      Address: 0x800061d8 Data: 0xFFFFF7FF
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005f4]:rem t6, t5, t4
      [0x800005f8]:sw t6, 0x64(fp)
 -- Signature Addresses:
      Address: 0x800061dc Data: 0xFFFFEFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000060c]:rem t6, t5, t4
      [0x80000610]:sw t6, 0x68(fp)
 -- Signature Addresses:
      Address: 0x800061e0 Data: 0xFFFFDFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000624]:rem t6, t5, t4
      [0x80000628]:sw t6, 0x6c(fp)
 -- Signature Addresses:
      Address: 0x800061e4 Data: 0xFFFFBFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000063c]:rem t6, t5, t4
      [0x80000640]:sw t6, 0x70(fp)
 -- Signature Addresses:
      Address: 0x800061e8 Data: 0xFFFF7FFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000654]:rem t6, t5, t4
      [0x80000658]:sw t6, 0x74(fp)
 -- Signature Addresses:
      Address: 0x800061ec Data: 0xFFFFB504
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000066c]:rem t6, t5, t4
      [0x80000670]:sw t6, 0x78(fp)
 -- Signature Addresses:
      Address: 0x800061f0 Data: 0xFFFF6A09
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000684]:rem t6, t5, t4
      [0x80000688]:sw t6, 0x7c(fp)
 -- Signature Addresses:
      Address: 0x800061f4 Data: 0xFFFF8918
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000069c]:rem t6, t5, t4
      [0x800006a0]:sw t6, 0x80(fp)
 -- Signature Addresses:
      Address: 0x800061f8 Data: 0xFFFFC736
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006b4]:rem t6, t5, t4
      [0x800006b8]:sw t6, 0x84(fp)
 -- Signature Addresses:
      Address: 0x800061fc Data: 0xFFFF8E6D
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006cc]:rem t6, t5, t4
      [0x800006d0]:sw t6, 0x88(fp)
 -- Signature Addresses:
      Address: 0x80006200 Data: 0xFFFFD1E0
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006e4]:rem t6, t5, t4
      [0x800006e8]:sw t6, 0x8c(fp)
 -- Signature Addresses:
      Address: 0x80006204 Data: 0xFFFFA3C1
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006fc]:rem t6, t5, t4
      [0x80000700]:sw t6, 0x90(fp)
 -- Signature Addresses:
      Address: 0x80006208 Data: 0xFFFFFC88
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000714]:rem t6, t5, t4
      [0x80000718]:sw t6, 0x94(fp)
 -- Signature Addresses:
      Address: 0x8000620c Data: 0xFFFFF911
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000072c]:rem t6, t5, t4
      [0x80000730]:sw t6, 0x98(fp)
 -- Signature Addresses:
      Address: 0x80006210 Data: 0xFFFFF223
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000744]:rem t6, t5, t4
      [0x80000748]:sw t6, 0x9c(fp)
 -- Signature Addresses:
      Address: 0x80006214 Data: 0xFFFFE447
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000075c]:rem t6, t5, t4
      [0x80000760]:sw t6, 0xa0(fp)
 -- Signature Addresses:
      Address: 0x80006218 Data: 0xFFFFC88F
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000774]:rem t6, t5, t4
      [0x80000778]:sw t6, 0xa4(fp)
 -- Signature Addresses:
      Address: 0x8000621c Data: 0xFFFF911F
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000078c]:rem t6, t5, t4
      [0x80000790]:sw t6, 0xa8(fp)
 -- Signature Addresses:
      Address: 0x80006220 Data: 0xFFFFD744
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007a4]:rem t6, t5, t4
      [0x800007a8]:sw t6, 0xac(fp)
 -- Signature Addresses:
      Address: 0x80006224 Data: 0xFFFFAE89
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007f4]:rem t6, t5, t4
      [0x800007f8]:sw t6, 0xbc(fp)
 -- Signature Addresses:
      Address: 0x80006234 Data: 0x00000005
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000808]:rem t6, t5, t4
      [0x8000080c]:sw t6, 0xc0(fp)
 -- Signature Addresses:
      Address: 0x80006238 Data: 0x00000005
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000081c]:rem t6, t5, t4
      [0x80000820]:sw t6, 0xc4(fp)
 -- Signature Addresses:
      Address: 0x8000623c Data: 0x00000005
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000830]:rem t6, t5, t4
      [0x80000834]:sw t6, 0xc8(fp)
 -- Signature Addresses:
      Address: 0x80006240 Data: 0x00000005
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000844]:rem t6, t5, t4
      [0x80000848]:sw t6, 0xcc(fp)
 -- Signature Addresses:
      Address: 0x80006244 Data: 0x00000005
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000858]:rem t6, t5, t4
      [0x8000085c]:sw t6, 0xd0(fp)
 -- Signature Addresses:
      Address: 0x80006248 Data: 0x00000005
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000086c]:rem t6, t5, t4
      [0x80000870]:sw t6, 0xd4(fp)
 -- Signature Addresses:
      Address: 0x8000624c Data: 0x00000105
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000880]:rem t6, t5, t4
      [0x80000884]:sw t6, 0xd8(fp)
 -- Signature Addresses:
      Address: 0x80006250 Data: 0x00000105
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000898]:rem t6, t5, t4
      [0x8000089c]:sw t6, 0xdc(fp)
 -- Signature Addresses:
      Address: 0x80006254 Data: 0x00000505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008ac]:rem t6, t5, t4
      [0x800008b0]:sw t6, 0xe0(fp)
 -- Signature Addresses:
      Address: 0x80006258 Data: 0x00000505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008c0]:rem t6, t5, t4
      [0x800008c4]:sw t6, 0xe4(fp)
 -- Signature Addresses:
      Address: 0x8000625c Data: 0x00001505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008d4]:rem t6, t5, t4
      [0x800008d8]:sw t6, 0xe8(fp)
 -- Signature Addresses:
      Address: 0x80006260 Data: 0x00003505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008e8]:rem t6, t5, t4
      [0x800008ec]:sw t6, 0xec(fp)
 -- Signature Addresses:
      Address: 0x80006264 Data: 0x00003505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008fc]:rem t6, t5, t4
      [0x80000900]:sw t6, 0xf0(fp)
 -- Signature Addresses:
      Address: 0x80006268 Data: 0x0000B505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000910]:rem t6, t5, t4
      [0x80000914]:sw t6, 0xf4(fp)
 -- Signature Addresses:
      Address: 0x8000626c Data: 0x0000B505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000924]:rem t6, t5, t4
      [0x80000928]:sw t6, 0xf8(fp)
 -- Signature Addresses:
      Address: 0x80006270 Data: 0x0000B505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000938]:rem t6, t5, t4
      [0x8000093c]:sw t6, 0xfc(fp)
 -- Signature Addresses:
      Address: 0x80006274 Data: 0x0000B505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000094c]:rem t6, t5, t4
      [0x80000950]:sw t6, 0x100(fp)
 -- Signature Addresses:
      Address: 0x80006278 Data: 0x0000B505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000960]:rem t6, t5, t4
      [0x80000964]:sw t6, 0x104(fp)
 -- Signature Addresses:
      Address: 0x8000627c Data: 0x0000B505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000974]:rem t6, t5, t4
      [0x80000978]:sw t6, 0x108(fp)
 -- Signature Addresses:
      Address: 0x80006280 Data: 0x0000B505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000988]:rem t6, t5, t4
      [0x8000098c]:sw t6, 0x10c(fp)
 -- Signature Addresses:
      Address: 0x80006284 Data: 0x0000B505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000099c]:rem t6, t5, t4
      [0x800009a0]:sw t6, 0x110(fp)
 -- Signature Addresses:
      Address: 0x80006288 Data: 0x0000B505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009b0]:rem t6, t5, t4
      [0x800009b4]:sw t6, 0x114(fp)
 -- Signature Addresses:
      Address: 0x8000628c Data: 0x0000B505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009c4]:rem t6, t5, t4
      [0x800009c8]:sw t6, 0x118(fp)
 -- Signature Addresses:
      Address: 0x80006290 Data: 0x0000B505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009d8]:rem t6, t5, t4
      [0x800009dc]:sw t6, 0x11c(fp)
 -- Signature Addresses:
      Address: 0x80006294 Data: 0x0000B505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009ec]:rem t6, t5, t4
      [0x800009f0]:sw t6, 0x120(fp)
 -- Signature Addresses:
      Address: 0x80006298 Data: 0x0000B505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a00]:rem t6, t5, t4
      [0x80000a04]:sw t6, 0x124(fp)
 -- Signature Addresses:
      Address: 0x8000629c Data: 0x0000B505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a14]:rem t6, t5, t4
      [0x80000a18]:sw t6, 0x128(fp)
 -- Signature Addresses:
      Address: 0x800062a0 Data: 0x0000B505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a78]:rem t6, t5, t4
      [0x80000a7c]:sw t6, 0x13c(fp)
 -- Signature Addresses:
      Address: 0x800062b4 Data: 0x00000008
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a8c]:rem t6, t5, t4
      [0x80000a90]:sw t6, 0x140(fp)
 -- Signature Addresses:
      Address: 0x800062b8 Data: 0x00000010
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000aa0]:rem t6, t5, t4
      [0x80000aa4]:sw t6, 0x144(fp)
 -- Signature Addresses:
      Address: 0x800062bc Data: 0x00000020
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ab4]:rem t6, t5, t4
      [0x80000ab8]:sw t6, 0x148(fp)
 -- Signature Addresses:
      Address: 0x800062c0 Data: 0x00000040
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ac8]:rem t6, t5, t4
      [0x80000acc]:sw t6, 0x14c(fp)
 -- Signature Addresses:
      Address: 0x800062c4 Data: 0x00000080
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000adc]:rem t6, t5, t4
      [0x80000ae0]:sw t6, 0x150(fp)
 -- Signature Addresses:
      Address: 0x800062c8 Data: 0x00000100
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000af0]:rem t6, t5, t4
      [0x80000af4]:sw t6, 0x154(fp)
 -- Signature Addresses:
      Address: 0x800062cc Data: 0x00000200
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b04]:rem t6, t5, t4
      [0x80000b08]:sw t6, 0x158(fp)
 -- Signature Addresses:
      Address: 0x800062d0 Data: 0x00000400
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b1c]:rem t6, t5, t4
      [0x80000b20]:sw t6, 0x15c(fp)
 -- Signature Addresses:
      Address: 0x800062d4 Data: 0x00000800
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b30]:rem t6, t5, t4
      [0x80000b34]:sw t6, 0x160(fp)
 -- Signature Addresses:
      Address: 0x800062d8 Data: 0x00001000
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b44]:rem t6, t5, t4
      [0x80000b48]:sw t6, 0x164(fp)
 -- Signature Addresses:
      Address: 0x800062dc Data: 0x00002000
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b58]:rem t6, t5, t4
      [0x80000b5c]:sw t6, 0x168(fp)
 -- Signature Addresses:
      Address: 0x800062e0 Data: 0x00004000
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b6c]:rem t6, t5, t4
      [0x80000b70]:sw t6, 0x16c(fp)
 -- Signature Addresses:
      Address: 0x800062e4 Data: 0x00008000
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b80]:rem t6, t5, t4
      [0x80000b84]:sw t6, 0x170(fp)
 -- Signature Addresses:
      Address: 0x800062e8 Data: 0x00004AFB
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b94]:rem t6, t5, t4
      [0x80000b98]:sw t6, 0x174(fp)
 -- Signature Addresses:
      Address: 0x800062ec Data: 0x000095F6
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ba8]:rem t6, t5, t4
      [0x80000bac]:sw t6, 0x178(fp)
 -- Signature Addresses:
      Address: 0x800062f0 Data: 0x000076E7
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bbc]:rem t6, t5, t4
      [0x80000bc0]:sw t6, 0x17c(fp)
 -- Signature Addresses:
      Address: 0x800062f4 Data: 0x000038C9
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bd0]:rem t6, t5, t4
      [0x80000bd4]:sw t6, 0x180(fp)
 -- Signature Addresses:
      Address: 0x800062f8 Data: 0x00007192
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000be4]:rem t6, t5, t4
      [0x80000be8]:sw t6, 0x184(fp)
 -- Signature Addresses:
      Address: 0x800062fc Data: 0x00002E1F
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bf8]:rem t6, t5, t4
      [0x80000bfc]:sw t6, 0x188(fp)
 -- Signature Addresses:
      Address: 0x80006300 Data: 0x00005C3E
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c0c]:rem t6, t5, t4
      [0x80000c10]:sw t6, 0x18c(fp)
 -- Signature Addresses:
      Address: 0x80006304 Data: 0x00000377
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c20]:rem t6, t5, t4
      [0x80000c24]:sw t6, 0x190(fp)
 -- Signature Addresses:
      Address: 0x80006308 Data: 0x000006EE
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c34]:rem t6, t5, t4
      [0x80000c38]:sw t6, 0x194(fp)
 -- Signature Addresses:
      Address: 0x8000630c Data: 0x00000DDC
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c48]:rem t6, t5, t4
      [0x80000c4c]:sw t6, 0x198(fp)
 -- Signature Addresses:
      Address: 0x80006310 Data: 0x00001BB8
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c5c]:rem t6, t5, t4
      [0x80000c60]:sw t6, 0x19c(fp)
 -- Signature Addresses:
      Address: 0x80006314 Data: 0x00003770
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c70]:rem t6, t5, t4
      [0x80000c74]:sw t6, 0x1a0(fp)
 -- Signature Addresses:
      Address: 0x80006318 Data: 0x00006EE0
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c84]:rem t6, t5, t4
      [0x80000c88]:sw t6, 0x1a4(fp)
 -- Signature Addresses:
      Address: 0x8000631c Data: 0x000028BB
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c98]:rem t6, t5, t4
      [0x80000c9c]:sw t6, 0x1a8(fp)
 -- Signature Addresses:
      Address: 0x80006320 Data: 0x00005176
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ca8]:rem t6, t5, t4
      [0x80000cac]:sw t6, 0x1ac(fp)
 -- Signature Addresses:
      Address: 0x80006324 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cbc]:rem t6, t5, t4
      [0x80000cc0]:sw t6, 0x1b0(fp)
 -- Signature Addresses:
      Address: 0x80006328 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cd0]:rem t6, t5, t4
      [0x80000cd4]:sw t6, 0x1b4(fp)
 -- Signature Addresses:
      Address: 0x8000632c Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ce0]:rem t6, t5, t4
      [0x80000ce4]:sw t6, 0x1b8(fp)
 -- Signature Addresses:
      Address: 0x80006330 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cf4]:rem t6, t5, t4
      [0x80000cf8]:sw t6, 0x1bc(fp)
 -- Signature Addresses:
      Address: 0x80006334 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d08]:rem t6, t5, t4
      [0x80000d0c]:sw t6, 0x1c0(fp)
 -- Signature Addresses:
      Address: 0x80006338 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d1c]:rem t6, t5, t4
      [0x80000d20]:sw t6, 0x1c4(fp)
 -- Signature Addresses:
      Address: 0x8000633c Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d30]:rem t6, t5, t4
      [0x80000d34]:sw t6, 0x1c8(fp)
 -- Signature Addresses:
      Address: 0x80006340 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d40]:rem t6, t5, t4
      [0x80000d44]:sw t6, 0x1cc(fp)
 -- Signature Addresses:
      Address: 0x80006344 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d54]:rem t6, t5, t4
      [0x80000d58]:sw t6, 0x1d0(fp)
 -- Signature Addresses:
      Address: 0x80006348 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d68]:rem t6, t5, t4
      [0x80000d6c]:sw t6, 0x1d4(fp)
 -- Signature Addresses:
      Address: 0x8000634c Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d7c]:rem t6, t5, t4
      [0x80000d80]:sw t6, 0x1d8(fp)
 -- Signature Addresses:
      Address: 0x80006350 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d94]:rem t6, t5, t4
      [0x80000d98]:sw t6, 0x1dc(fp)
 -- Signature Addresses:
      Address: 0x80006354 Data: 0x0000A8F4
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000da4]:rem t6, t5, t4
      [0x80000da8]:sw t6, 0x1e0(fp)
 -- Signature Addresses:
      Address: 0x80006358 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000db8]:rem t6, t5, t4
      [0x80000dbc]:sw t6, 0x1e4(fp)
 -- Signature Addresses:
      Address: 0x8000635c Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000dd0]:rem t6, t5, t4
      [0x80000dd4]:sw t6, 0x1e8(fp)
 -- Signature Addresses:
      Address: 0x80006360 Data: 0xFFFF570B
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000de0]:rem t6, t5, t4
      [0x80000de4]:sw t6, 0x1ec(fp)
 -- Signature Addresses:
      Address: 0x80006364 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000df4]:rem t6, t5, t4
      [0x80000df8]:sw t6, 0x1f0(fp)
 -- Signature Addresses:
      Address: 0x80006368 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e08]:rem t6, t5, t4
      [0x80000e0c]:sw t6, 0x1f4(fp)
 -- Signature Addresses:
      Address: 0x8000636c Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e18]:rem t6, t5, t4
      [0x80000e1c]:sw t6, 0x1f8(fp)
 -- Signature Addresses:
      Address: 0x80006370 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e2c]:rem t6, t5, t4
      [0x80000e30]:sw t6, 0x1fc(fp)
 -- Signature Addresses:
      Address: 0x80006374 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e40]:rem t6, t5, t4
      [0x80000e44]:sw t6, 0x200(fp)
 -- Signature Addresses:
      Address: 0x80006378 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e68]:rem t6, t5, t4
      [0x80000e6c]:sw t6, 0x208(fp)
 -- Signature Addresses:
      Address: 0x80006380 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e7c]:rem t6, t5, t4
      [0x80000e80]:sw t6, 0x20c(fp)
 -- Signature Addresses:
      Address: 0x80006384 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e90]:rem t6, t5, t4
      [0x80000e94]:sw t6, 0x210(fp)
 -- Signature Addresses:
      Address: 0x80006388 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ea8]:rem t6, t5, t4
      [0x80000eac]:sw t6, 0x214(fp)
 -- Signature Addresses:
      Address: 0x8000638c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ec0]:rem t6, t5, t4
      [0x80000ec4]:sw t6, 0x218(fp)
 -- Signature Addresses:
      Address: 0x80006390 Data: 0x55555555
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ed4]:rem t6, t5, t4
      [0x80000ed8]:sw t6, 0x21c(fp)
 -- Signature Addresses:
      Address: 0x80006394 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000eec]:rem t6, t5, t4
      [0x80000ef0]:sw t6, 0x220(fp)
 -- Signature Addresses:
      Address: 0x80006398 Data: 0x22222222
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f04]:rem t6, t5, t4
      [0x80000f08]:sw t6, 0x224(fp)
 -- Signature Addresses:
      Address: 0x8000639c Data: 0x55555555
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f1c]:rem t6, t5, t4
      [0x80000f20]:sw t6, 0x228(fp)
 -- Signature Addresses:
      Address: 0x800063a0 Data: 0x00006C9D
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f34]:rem t6, t5, t4
      [0x80000f38]:sw t6, 0x22c(fp)
 -- Signature Addresses:
      Address: 0x800063a4 Data: 0x00006C9D
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f48]:rem t6, t5, t4
      [0x80000f4c]:sw t6, 0x230(fp)
 -- Signature Addresses:
      Address: 0x800063a8 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f60]:rem t6, t5, t4
      [0x80000f64]:sw t6, 0x234(fp)
 -- Signature Addresses:
      Address: 0x800063ac Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f78]:rem t6, t5, t4
      [0x80000f7c]:sw t6, 0x238(fp)
 -- Signature Addresses:
      Address: 0x800063b0 Data: 0x22222223
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f90]:rem t6, t5, t4
      [0x80000f94]:sw t6, 0x23c(fp)
 -- Signature Addresses:
      Address: 0x800063b4 Data: 0x55555555
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fa4]:rem t6, t5, t4
      [0x80000fa8]:sw t6, 0x240(fp)
 -- Signature Addresses:
      Address: 0x800063b8 Data: 0x55555555
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fbc]:rem t6, t5, t4
      [0x80000fc0]:sw t6, 0x244(fp)
 -- Signature Addresses:
      Address: 0x800063bc Data: 0x00003048
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fd0]:rem t6, t5, t4
      [0x80000fd4]:sw t6, 0x248(fp)
 -- Signature Addresses:
      Address: 0x800063c0 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fe8]:rem t6, t5, t4
      [0x80000fec]:sw t6, 0x24c(fp)
 -- Signature Addresses:
      Address: 0x800063c4 Data: 0x55555555
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001000]:rem t6, t5, t4
      [0x80001004]:sw t6, 0x250(fp)
 -- Signature Addresses:
      Address: 0x800063c8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001014]:rem t6, t5, t4
      [0x80001018]:sw t6, 0x254(fp)
 -- Signature Addresses:
      Address: 0x800063cc Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000102c]:rem t6, t5, t4
      [0x80001030]:sw t6, 0x258(fp)
 -- Signature Addresses:
      Address: 0x800063d0 Data: 0x22222221
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001044]:rem t6, t5, t4
      [0x80001048]:sw t6, 0x25c(fp)
 -- Signature Addresses:
      Address: 0x800063d4 Data: 0x55555555
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000105c]:rem t6, t5, t4
      [0x80001060]:sw t6, 0x260(fp)
 -- Signature Addresses:
      Address: 0x800063d8 Data: 0x00003048
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001070]:rem t6, t5, t4
      [0x80001074]:sw t6, 0x264(fp)
 -- Signature Addresses:
      Address: 0x800063dc Data: 0xFFFFFFFE
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001088]:rem t6, t5, t4
      [0x8000108c]:sw t6, 0x268(fp)
 -- Signature Addresses:
      Address: 0x800063e0 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800010a0]:rem t6, t5, t4
      [0x800010a4]:sw t6, 0x26c(fp)
 -- Signature Addresses:
      Address: 0x800063e4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val == rs2_val




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800010b4]:rem t6, t5, t4
      [0x800010b8]:sw t6, 0x270(fp)
 -- Signature Addresses:
      Address: 0x800063e8 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800010cc]:rem t6, t5, t4
      [0x800010d0]:sw t6, 0x274(fp)
 -- Signature Addresses:
      Address: 0x800063ec Data: 0xDDDDDDDD
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800010e4]:rem t6, t5, t4
      [0x800010e8]:sw t6, 0x278(fp)
 -- Signature Addresses:
      Address: 0x800063f0 Data: 0xAAAAAAAA
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800010fc]:rem t6, t5, t4
      [0x80001100]:sw t6, 0x27c(fp)
 -- Signature Addresses:
      Address: 0x800063f4 Data: 0xFFFF9362
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001114]:rem t6, t5, t4
      [0x80001118]:sw t6, 0x280(fp)
 -- Signature Addresses:
      Address: 0x800063f8 Data: 0xFFFF9362
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001128]:rem t6, t5, t4
      [0x8000112c]:sw t6, 0x284(fp)
 -- Signature Addresses:
      Address: 0x800063fc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001140]:rem t6, t5, t4
      [0x80001144]:sw t6, 0x288(fp)
 -- Signature Addresses:
      Address: 0x80006400 Data: 0xFFFFFFFE
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001158]:rem t6, t5, t4
      [0x8000115c]:sw t6, 0x28c(fp)
 -- Signature Addresses:
      Address: 0x80006404 Data: 0xDDDDDDDC
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001170]:rem t6, t5, t4
      [0x80001174]:sw t6, 0x290(fp)
 -- Signature Addresses:
      Address: 0x80006408 Data: 0xAAAAAAAA
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001184]:rem t6, t5, t4
      [0x80001188]:sw t6, 0x294(fp)
 -- Signature Addresses:
      Address: 0x8000640c Data: 0xAAAAAAAA
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000119c]:rem t6, t5, t4
      [0x800011a0]:sw t6, 0x298(fp)
 -- Signature Addresses:
      Address: 0x80006410 Data: 0xFFFFCFB7
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800011b0]:rem t6, t5, t4
      [0x800011b4]:sw t6, 0x29c(fp)
 -- Signature Addresses:
      Address: 0x80006414 Data: 0xFFFFFFFE
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800011c8]:rem t6, t5, t4
      [0x800011cc]:sw t6, 0x2a0(fp)
 -- Signature Addresses:
      Address: 0x80006418 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800011e0]:rem t6, t5, t4
      [0x800011e4]:sw t6, 0x2a4(fp)
 -- Signature Addresses:
      Address: 0x8000641c Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800011f4]:rem t6, t5, t4
      [0x800011f8]:sw t6, 0x2a8(fp)
 -- Signature Addresses:
      Address: 0x80006420 Data: 0xFFFFFFFE
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000120c]:rem t6, t5, t4
      [0x80001210]:sw t6, 0x2ac(fp)
 -- Signature Addresses:
      Address: 0x80006424 Data: 0xDDDDDDDE
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001224]:rem t6, t5, t4
      [0x80001228]:sw t6, 0x2b0(fp)
 -- Signature Addresses:
      Address: 0x80006428 Data: 0xAAAAAAAA
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000123c]:rem t6, t5, t4
      [0x80001240]:sw t6, 0x2b4(fp)
 -- Signature Addresses:
      Address: 0x8000642c Data: 0xFFFFCFB7
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000124c]:rem t6, t5, t4
      [0x80001250]:sw t6, 0x2b8(fp)
 -- Signature Addresses:
      Address: 0x80006430 Data: 0x00000002
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001260]:rem t6, t5, t4
      [0x80001264]:sw t6, 0x2bc(fp)
 -- Signature Addresses:
      Address: 0x80006434 Data: 0x00000005
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001274]:rem t6, t5, t4
      [0x80001278]:sw t6, 0x2c0(fp)
 -- Signature Addresses:
      Address: 0x80006438 Data: 0x00000005
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001284]:rem t6, t5, t4
      [0x80001288]:sw t6, 0x2c4(fp)
 -- Signature Addresses:
      Address: 0x8000643c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001298]:rem t6, t5, t4
      [0x8000129c]:sw t6, 0x2c8(fp)
 -- Signature Addresses:
      Address: 0x80006440 Data: 0x00000005
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800012ac]:rem t6, t5, t4
      [0x800012b0]:sw t6, 0x2cc(fp)
 -- Signature Addresses:
      Address: 0x80006444 Data: 0x00000005
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800012c0]:rem t6, t5, t4
      [0x800012c4]:sw t6, 0x2d0(fp)
 -- Signature Addresses:
      Address: 0x80006448 Data: 0x00000005
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800012d4]:rem t6, t5, t4
      [0x800012d8]:sw t6, 0x2d4(fp)
 -- Signature Addresses:
      Address: 0x8000644c Data: 0x00000005
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800012e4]:rem t6, t5, t4
      [0x800012e8]:sw t6, 0x2d8(fp)
 -- Signature Addresses:
      Address: 0x80006450 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800012f8]:rem t6, t5, t4
      [0x800012fc]:sw t6, 0x2dc(fp)
 -- Signature Addresses:
      Address: 0x80006454 Data: 0x00000005
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000130c]:rem t6, t5, t4
      [0x80001310]:sw t6, 0x2e0(fp)
 -- Signature Addresses:
      Address: 0x80006458 Data: 0x00000005
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001320]:rem t6, t5, t4
      [0x80001324]:sw t6, 0x2e4(fp)
 -- Signature Addresses:
      Address: 0x8000645c Data: 0x00000005
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001330]:rem t6, t5, t4
      [0x80001334]:sw t6, 0x2e8(fp)
 -- Signature Addresses:
      Address: 0x80006460 Data: 0x00000005
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001344]:rem t6, t5, t4
      [0x80001348]:sw t6, 0x2ec(fp)
 -- Signature Addresses:
      Address: 0x80006464 Data: 0x00000005
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001354]:rem t6, t5, t4
      [0x80001358]:sw t6, 0x2f0(fp)
 -- Signature Addresses:
      Address: 0x80006468 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800028b0]:rem t6, t5, t4
      [0x800028b4]:sw t6, 0x2c8(fp)
 -- Signature Addresses:
      Address: 0x80006840 Data: 0x0000B505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0
      - rs1_val==46341 and rs2_val==0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80002e0c]:rem t6, t5, t4
      [0x80002e10]:sw t6, 0x3c0(fp)
 -- Signature Addresses:
      Address: 0x80006938 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 0
      - rs1_val == rs2_val
      - rs2_val == 0
      - rs1_val==0 and rs2_val==0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80002ea4]:rem t6, t5, t4
      [0x80002ea8]:sw t6, 0x3e0(fp)
 -- Signature Addresses:
      Address: 0x80006958 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val == 0
      - rs1_val==0 and rs2_val==-46339




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800035c4]:rem t6, t5, t4
      [0x800035c8]:sw t6, 0x124(fp)
 -- Signature Addresses:
      Address: 0x80006a9c Data: 0x0000A2EB
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val == (2**(xlen-1)-1)
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800035dc]:rem t6, t5, t4
      [0x800035e0]:sw t6, 0x128(fp)
 -- Signature Addresses:
      Address: 0x80006aa0 Data: 0x0000B505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800035f4]:rem t6, t5, t4
      [0x800035f8]:sw t6, 0x12c(fp)
 -- Signature Addresses:
      Address: 0x80006aa4 Data: 0x0000B505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000360c]:rem t6, t5, t4
      [0x80003610]:sw t6, 0x130(fp)
 -- Signature Addresses:
      Address: 0x80006aa8 Data: 0x0000B505
 -- Redundant Coverpoints hit by the op
      - mnemonic : rem
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0






```

## Details of STAT3

```


```

## Details of STAT4:

```

```

## Details of STAT5:



## Details of STAT1:

- The first column indicates the signature address(es) and the data at that location in hexadecimal in the following format:
  ```
  [Address1]
  Data1

  [Address2]
  Data2

  ...
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

|s.no|           signature           |                                                                                       coverpoints                                                                                        |                                code                                 |
|---:|-------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80006114]<br>0x00000000<br> |- mnemonic : rem<br> - rs1 : x31<br> - rs2 : x31<br> - rd : x31<br> - rs1 == rs2 == rd<br> - rs1_val == 0<br> - rs1_val == rs2_val<br> - rs2_val == 0<br> - rs1_val==0 and rs2_val==0<br> |[0x80000190]:rem t6, t6, t6<br> [0x80000194]:sw t6, 0x0(ra)<br>      |
|   2|[0x80006118]<br>0x00000000<br> |- rs1 : x30<br> - rs2 : x29<br> - rd : x30<br> - rs1 == rd != rs2<br> - rs1 == rd != rs2 and rd != "x0"<br> - rs1_val != rs2_val<br> - rs1_val==0 and rs2_val==-46339<br>                 |[0x800001a8]:rem t5, t5, t4<br> [0x800001ac]:sw t5, 0x4(ra)<br>      |
|   3|[0x8000611c]<br>0xFFFF4AFD<br> |- rs1 : x29<br> - rs2 : x28<br> - rd : x28<br> - rs2 == rd != rs1<br> - rs1_val < 0 and rs2_val < 0<br> - rs1_val==-46339 and rs2_val==-46339<br>                                         |[0x800001c0]:rem t3, t4, t3<br> [0x800001c4]:sw t3, 0x8(ra)<br>      |
|   4|[0x80006120]<br>0xFFFF5D14<br> |- rs1 : x28<br> - rs2 : x30<br> - rd : x29<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val < 0 and rs2_val > 0<br> - rs1_val == (-2**(xlen-1))<br>                            |[0x800001d4]:rem t4, t3, t5<br> [0x800001d8]:sw t4, 0xc(ra)<br>      |
|   5|[0x80006124]<br>0x00000000<br> |- rs1 : x26<br> - rs2 : x26<br> - rd : x27<br> - rs1 == rs2 != rd<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val > 0 and rs2_val > 0<br> - rs2_val == (2**(xlen-1)-1)<br>                 |[0x800001ec]:rem s11, s10, s10<br> [0x800001f0]:sw s11, 0x10(ra)<br> |
|   6|[0x80006128]<br>0x00000000<br> |- rs1 : x27<br> - rs2 : x25<br> - rd : x26<br> - rs1_val == -(2**(xlen-1)) and rs2_val == -0x01<br>                                                                                       |[0x800001fc]:rem s10, s11, s9<br> [0x80000200]:sw s10, 0x14(ra)<br>  |
|   7|[0x8000612c]<br>0x00000001<br> |- rs1 : x24<br> - rs2 : x27<br> - rd : x25<br> - rs1_val > 0 and rs2_val < 0<br>                                                                                                          |[0x80000210]:rem s9, s8, s11<br> [0x80000214]:sw s9, 0x18(ra)<br>    |
|   8|[0x80006130]<br>0x00000000<br> |- rs1 : x25<br> - rs2 : x23<br> - rd : x24<br>                                                                                                                                            |[0x80000224]:rem s8, s9, s7<br> [0x80000228]:sw s8, 0x1c(ra)<br>     |
|   9|[0x80006134]<br>0x00000001<br> |- rs1 : x22<br> - rs2 : x24<br> - rd : x23<br>                                                                                                                                            |[0x80000238]:rem s7, s6, s8<br> [0x8000023c]:sw s7, 0x20(ra)<br>     |
|  10|[0x80006138]<br>0x00000000<br> |- rs1 : x23<br> - rs2 : x21<br> - rd : x22<br>                                                                                                                                            |[0x8000024c]:rem s6, s7, s5<br> [0x80000250]:sw s6, 0x24(ra)<br>     |
|  11|[0x8000613c]<br>0x00000010<br> |- rs1 : x20<br> - rs2 : x22<br> - rd : x21<br>                                                                                                                                            |[0x80000260]:rem s5, s4, s6<br> [0x80000264]:sw s5, 0x28(ra)<br>     |
|  12|[0x80006140]<br>0x00000009<br> |- rs1 : x21<br> - rs2 : x19<br> - rd : x20<br>                                                                                                                                            |[0x80000274]:rem s4, s5, s3<br> [0x80000278]:sw s4, 0x2c(ra)<br>     |
|  13|[0x80006144]<br>0x0000003D<br> |- rs1 : x18<br> - rs2 : x20<br> - rd : x19<br>                                                                                                                                            |[0x80000288]:rem s3, s2, s4<br> [0x8000028c]:sw s3, 0x30(ra)<br>     |
|  14|[0x80006148]<br>0x0000001E<br> |- rs1 : x19<br> - rs2 : x17<br> - rd : x18<br>                                                                                                                                            |[0x8000029c]:rem s2, s3, a7<br> [0x800002a0]:sw s2, 0x34(ra)<br>     |
|  15|[0x8000614c]<br>0x00000051<br> |- rs1 : x16<br> - rs2 : x18<br> - rd : x17<br>                                                                                                                                            |[0x800002b0]:rem a7, a6, s2<br> [0x800002b4]:sw a7, 0x38(ra)<br>     |
|  16|[0x80006150]<br>0x000000AB<br> |- rs1 : x17<br> - rs2 : x15<br> - rd : x16<br>                                                                                                                                            |[0x800002c4]:rem a6, a7, a5<br> [0x800002c8]:sw a6, 0x3c(ra)<br>     |
|  17|[0x80006154]<br>0x000000D8<br> |- rs1 : x14<br> - rs2 : x16<br> - rd : x15<br>                                                                                                                                            |[0x800002d8]:rem a5, a4, a6<br> [0x800002dc]:sw a5, 0x40(ra)<br>     |
|  18|[0x80006158]<br>0x000004EF<br> |- rs1 : x15<br> - rs2 : x13<br> - rd : x14<br>                                                                                                                                            |[0x800002f0]:rem a4, a5, a3<br> [0x800002f4]:sw a4, 0x44(ra)<br>     |
|  19|[0x8000615c]<br>0x000004FA<br> |- rs1 : x12<br> - rs2 : x14<br> - rd : x13<br>                                                                                                                                            |[0x80000308]:rem a3, a2, a4<br> [0x8000030c]:sw a3, 0x48(ra)<br>     |
|  20|[0x80006160]<br>0x00001500<br> |- rs1 : x13<br> - rs2 : x11<br> - rd : x12<br>                                                                                                                                            |[0x80000320]:rem a2, a3, a1<br> [0x80000324]:sw a2, 0x4c(ra)<br>     |
|  21|[0x80006164]<br>0x00003503<br> |- rs1 : x10<br> - rs2 : x12<br> - rd : x11<br>                                                                                                                                            |[0x80000338]:rem a1, a0, a2<br> [0x8000033c]:sw a1, 0x50(ra)<br>     |
|  22|[0x80006168]<br>0x00003504<br> |- rs1 : x11<br> - rs2 : x9<br> - rd : x10<br>                                                                                                                                             |[0x80000350]:rem a0, a1, s1<br> [0x80000354]:sw a0, 0x54(ra)<br>     |
|  23|[0x8000616c]<br>0x0000B505<br> |- rs1 : x8<br> - rs2 : x10<br> - rd : x9<br>                                                                                                                                              |[0x80000368]:rem s1, fp, a0<br> [0x8000036c]:sw s1, 0x58(ra)<br>     |
|  24|[0x80006170]<br>0x0000B505<br> |- rs1 : x9<br> - rs2 : x7<br> - rd : x8<br>                                                                                                                                               |[0x80000380]:rem fp, s1, t2<br> [0x80000384]:sw fp, 0x5c(ra)<br>     |
|  25|[0x80006174]<br>0x0000B505<br> |- rs1 : x6<br> - rs2 : x8<br> - rd : x7<br>                                                                                                                                               |[0x80000398]:rem t2, t1, fp<br> [0x8000039c]:sw t2, 0x60(ra)<br>     |
|  26|[0x80006178]<br>0x0000B505<br> |- rs1 : x7<br> - rs2 : x5<br> - rd : x6<br>                                                                                                                                               |[0x800003d0]:rem t1, t2, t0<br> [0x800003d4]:sw t1, 0x0(fp)<br>      |
|  27|[0x8000617c]<br>0x0000B505<br> |- rs1 : x4<br> - rs2 : x6<br> - rd : x5<br>                                                                                                                                               |[0x800003e8]:rem t0, tp, t1<br> [0x800003ec]:sw t0, 0x4(fp)<br>      |
|  28|[0x80006180]<br>0x0000B505<br> |- rs1 : x5<br> - rs2 : x3<br> - rd : x4<br>                                                                                                                                               |[0x80000400]:rem tp, t0, gp<br> [0x80000404]:sw tp, 0x8(fp)<br>      |
|  29|[0x80006184]<br>0x0000B505<br> |- rs1 : x2<br> - rs2 : x4<br> - rd : x3<br>                                                                                                                                               |[0x80000418]:rem gp, sp, tp<br> [0x8000041c]:sw gp, 0xc(fp)<br>      |
|  30|[0x80006188]<br>0x0000B505<br> |- rs1 : x3<br> - rs2 : x1<br> - rd : x2<br>                                                                                                                                               |[0x80000430]:rem sp, gp, ra<br> [0x80000434]:sw sp, 0x10(fp)<br>     |
|  31|[0x8000618c]<br>0x00000000<br> |- rs1 : x0<br> - rs2 : x2<br> - rd : x1<br> - rs1 == "x0" != rd<br>                                                                                                                       |[0x80000444]:rem ra, zero, sp<br> [0x80000448]:sw ra, 0x14(fp)<br>   |
|  32|[0x80006190]<br>0x0000B505<br> |- rs1 : x1<br>                                                                                                                                                                            |[0x8000045c]:rem t6, ra, t5<br> [0x80000460]:sw t6, 0x18(fp)<br>     |
|  33|[0x80006194]<br>0x0000B505<br> |- rs2 : x0<br> - rs1_val==46341 and rs2_val==0<br>                                                                                                                                        |[0x80000470]:rem t6, t5, zero<br> [0x80000474]:sw t6, 0x1c(fp)<br>   |
|  34|[0x80006198]<br>0x00000000<br> |- rd : x0<br> - rd == "x0" != rs1<br>                                                                                                                                                     |[0x80000488]:rem zero, t6, t5<br> [0x8000048c]:sw zero, 0x20(fp)<br> |
|  35|[0x80006228]<br>0x00000000<br> |- rs2_val == 1<br>                                                                                                                                                                        |[0x800007b8]:rem t6, t5, t4<br> [0x800007bc]:sw t6, 0xb0(fp)<br>     |
|  36|[0x8000622c]<br>0x00000001<br> |- rs1_val==46341 and rs2_val==2<br>                                                                                                                                                       |[0x800007cc]:rem t6, t5, t4<br> [0x800007d0]:sw t6, 0xb4(fp)<br>     |
|  37|[0x80006230]<br>0x00000001<br> |- rs1_val==46341 and rs2_val==4<br>                                                                                                                                                       |[0x800007e0]:rem t6, t5, t4<br> [0x800007e4]:sw t6, 0xb8(fp)<br>     |
|  38|[0x800062a4]<br>0x0000B505<br> |- rs2_val == (-2**(xlen-1))<br>                                                                                                                                                           |[0x80000a28]:rem t6, t5, t4<br> [0x80000a2c]:sw t6, 0x12c(fp)<br>    |
|  39|[0x800062a8]<br>0x00000001<br> |- rs1_val == 1<br>                                                                                                                                                                        |[0x80000a3c]:rem t6, t5, t4<br> [0x80000a40]:sw t6, 0x130(fp)<br>    |
|  40|[0x800062ac]<br>0x00000002<br> |- rs1_val==2 and rs2_val==46341<br>                                                                                                                                                       |[0x80000a50]:rem t6, t5, t4<br> [0x80000a54]:sw t6, 0x134(fp)<br>    |
|  41|[0x800062b0]<br>0x00000004<br> |- rs1_val==4 and rs2_val==46341<br>                                                                                                                                                       |[0x80000a64]:rem t6, t5, t4<br> [0x80000a68]:sw t6, 0x138(fp)<br>    |
|  42|[0x8000637c]<br>0x00000000<br> |- rs1_val==0 and rs2_val==46341<br>                                                                                                                                                       |[0x80000e54]:rem t6, t5, t4<br> [0x80000e58]:sw t6, 0x204(fp)<br>    |
|  43|[0x8000646c]<br>0x00000005<br> |- rs1_val==5 and rs2_val==1431655766<br>                                                                                                                                                  |[0x80001368]:rem t6, t5, t4<br> [0x8000136c]:sw t6, 0x2f4(fp)<br>    |
|  44|[0x80006470]<br>0x00000005<br> |- rs1_val==5 and rs2_val==-1431655765<br>                                                                                                                                                 |[0x8000137c]:rem t6, t5, t4<br> [0x80001380]:sw t6, 0x2f8(fp)<br>    |
|  45|[0x80006474]<br>0x00000005<br> |- rs1_val==5 and rs2_val==6<br>                                                                                                                                                           |[0x8000138c]:rem t6, t5, t4<br> [0x80001390]:sw t6, 0x2fc(fp)<br>    |
|  46|[0x80006478]<br>0x00000005<br> |- rs1_val==5 and rs2_val==858993460<br>                                                                                                                                                   |[0x800013a0]:rem t6, t5, t4<br> [0x800013a4]:sw t6, 0x300(fp)<br>    |
|  47|[0x8000647c]<br>0x00000005<br> |- rs1_val==5 and rs2_val==1717986919<br>                                                                                                                                                  |[0x800013b4]:rem t6, t5, t4<br> [0x800013b8]:sw t6, 0x304(fp)<br>    |
|  48|[0x80006480]<br>0x00000005<br> |- rs1_val==5 and rs2_val==-46339<br>                                                                                                                                                      |[0x800013c8]:rem t6, t5, t4<br> [0x800013cc]:sw t6, 0x308(fp)<br>    |
|  49|[0x80006484]<br>0x00000005<br> |- rs1_val==5 and rs2_val==46341<br>                                                                                                                                                       |[0x800013dc]:rem t6, t5, t4<br> [0x800013e0]:sw t6, 0x30c(fp)<br>    |
|  50|[0x80006488]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==3<br>                                                                                                                                                   |[0x800013f0]:rem t6, t5, t4<br> [0x800013f4]:sw t6, 0x310(fp)<br>    |
|  51|[0x8000648c]<br>0x33333333<br> |- rs1_val==858993459 and rs2_val==1431655765<br>                                                                                                                                          |[0x80001408]:rem t6, t5, t4<br> [0x8000140c]:sw t6, 0x314(fp)<br>    |
|  52|[0x80006490]<br>0x33333333<br> |- rs1_val==858993459 and rs2_val==-1431655766<br>                                                                                                                                         |[0x80001420]:rem t6, t5, t4<br> [0x80001424]:sw t6, 0x318(fp)<br>    |
|  53|[0x80006494]<br>0x00000004<br> |- rs1_val==858993459 and rs2_val==5<br>                                                                                                                                                   |[0x80001434]:rem t6, t5, t4<br> [0x80001438]:sw t6, 0x31c(fp)<br>    |
|  54|[0x80006498]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==858993459<br>                                                                                                                                           |[0x8000144c]:rem t6, t5, t4<br> [0x80001450]:sw t6, 0x320(fp)<br>    |
|  55|[0x8000649c]<br>0x33333333<br> |- rs1_val==858993459 and rs2_val==1717986918<br>                                                                                                                                          |[0x80001464]:rem t6, t5, t4<br> [0x80001468]:sw t6, 0x324(fp)<br>    |
|  56|[0x800064a0]<br>0x00008993<br> |- rs1_val==858993459 and rs2_val==-46340<br>                                                                                                                                              |[0x8000147c]:rem t6, t5, t4<br> [0x80001480]:sw t6, 0x328(fp)<br>    |
|  57|[0x800064a4]<br>0x00008993<br> |- rs1_val==858993459 and rs2_val==46340<br>                                                                                                                                               |[0x80001494]:rem t6, t5, t4<br> [0x80001498]:sw t6, 0x32c(fp)<br>    |
|  58|[0x800064a8]<br>0x00000001<br> |- rs1_val==858993459 and rs2_val==2<br>                                                                                                                                                   |[0x800014a8]:rem t6, t5, t4<br> [0x800014ac]:sw t6, 0x330(fp)<br>    |
|  59|[0x800064ac]<br>0x33333333<br> |- rs1_val==858993459 and rs2_val==1431655764<br>                                                                                                                                          |[0x800014c0]:rem t6, t5, t4<br> [0x800014c4]:sw t6, 0x334(fp)<br>    |
|  60|[0x800064b0]<br>0x00000001<br> |- rs1_val==858993459 and rs2_val==858993458<br>                                                                                                                                           |[0x800014d8]:rem t6, t5, t4<br> [0x800014dc]:sw t6, 0x338(fp)<br>    |
|  61|[0x800064b4]<br>0x33333333<br> |- rs1_val==858993459 and rs2_val==1717986917<br>                                                                                                                                          |[0x800014f0]:rem t6, t5, t4<br> [0x800014f4]:sw t6, 0x33c(fp)<br>    |
|  62|[0x800064b8]<br>0x33333333<br> |- rs1_val==858993459 and rs2_val==0<br>                                                                                                                                                   |[0x80001504]:rem t6, t5, t4<br> [0x80001508]:sw t6, 0x340(fp)<br>    |
|  63|[0x800064bc]<br>0x00001CF8<br> |- rs1_val==858993459 and rs2_val==46339<br>                                                                                                                                               |[0x8000151c]:rem t6, t5, t4<br> [0x80001520]:sw t6, 0x344(fp)<br>    |
|  64|[0x800064c0]<br>0x00000003<br> |- rs1_val==858993459 and rs2_val==4<br>                                                                                                                                                   |[0x80001530]:rem t6, t5, t4<br> [0x80001534]:sw t6, 0x348(fp)<br>    |
|  65|[0x800064c4]<br>0x33333333<br> |- rs1_val==858993459 and rs2_val==1431655766<br>                                                                                                                                          |[0x80001548]:rem t6, t5, t4<br> [0x8000154c]:sw t6, 0x34c(fp)<br>    |
|  66|[0x800064c8]<br>0x33333333<br> |- rs1_val==858993459 and rs2_val==-1431655765<br>                                                                                                                                         |[0x80001560]:rem t6, t5, t4<br> [0x80001564]:sw t6, 0x350(fp)<br>    |
|  67|[0x800064cc]<br>0x00000003<br> |- rs1_val==858993459 and rs2_val==6<br>                                                                                                                                                   |[0x80001574]:rem t6, t5, t4<br> [0x80001578]:sw t6, 0x354(fp)<br>    |
|  68|[0x800064d0]<br>0x33333333<br> |- rs1_val==858993459 and rs2_val==858993460<br>                                                                                                                                           |[0x8000158c]:rem t6, t5, t4<br> [0x80001590]:sw t6, 0x358(fp)<br>    |
|  69|[0x800064d4]<br>0x33333333<br> |- rs1_val==858993459 and rs2_val==1717986919<br>                                                                                                                                          |[0x800015a4]:rem t6, t5, t4<br> [0x800015a8]:sw t6, 0x35c(fp)<br>    |
|  70|[0x800064d8]<br>0x00001CF8<br> |- rs1_val==858993459 and rs2_val==-46339<br>                                                                                                                                              |[0x800015bc]:rem t6, t5, t4<br> [0x800015c0]:sw t6, 0x360(fp)<br>    |
|  71|[0x800064dc]<br>0x0000412B<br> |- rs1_val==858993459 and rs2_val==46341<br>                                                                                                                                               |[0x800015d4]:rem t6, t5, t4<br> [0x800015d8]:sw t6, 0x364(fp)<br>    |
|  72|[0x800064e0]<br>0x00000000<br> |- rs1_val==1717986918 and rs2_val==3<br>                                                                                                                                                  |[0x800015e8]:rem t6, t5, t4<br> [0x800015ec]:sw t6, 0x368(fp)<br>    |
|  73|[0x800064e4]<br>0x11111111<br> |- rs1_val==1717986918 and rs2_val==1431655765<br>                                                                                                                                         |[0x80001600]:rem t6, t5, t4<br> [0x80001604]:sw t6, 0x36c(fp)<br>    |
|  74|[0x800064e8]<br>0x11111110<br> |- rs1_val==1717986918 and rs2_val==-1431655766<br>                                                                                                                                        |[0x80001618]:rem t6, t5, t4<br> [0x8000161c]:sw t6, 0x370(fp)<br>    |
|  75|[0x800064ec]<br>0x00000003<br> |- rs1_val==1717986918 and rs2_val==5<br>                                                                                                                                                  |[0x8000162c]:rem t6, t5, t4<br> [0x80001630]:sw t6, 0x374(fp)<br>    |
|  76|[0x800064f0]<br>0x00000000<br> |- rs1_val==1717986918 and rs2_val==858993459<br>                                                                                                                                          |[0x80001644]:rem t6, t5, t4<br> [0x80001648]:sw t6, 0x378(fp)<br>    |
|  77|[0x800064f4]<br>0x00000000<br> |- rs1_val==1717986918 and rs2_val==1717986918<br>                                                                                                                                         |[0x8000165c]:rem t6, t5, t4<br> [0x80001660]:sw t6, 0x37c(fp)<br>    |
|  78|[0x800064f8]<br>0x00005E22<br> |- rs1_val==1717986918 and rs2_val==-46340<br>                                                                                                                                             |[0x80001674]:rem t6, t5, t4<br> [0x80001678]:sw t6, 0x380(fp)<br>    |
|  79|[0x800064fc]<br>0x00005E22<br> |- rs1_val==1717986918 and rs2_val==46340<br>                                                                                                                                              |[0x8000168c]:rem t6, t5, t4<br> [0x80001690]:sw t6, 0x384(fp)<br>    |
|  80|[0x80006500]<br>0x00000000<br> |- rs1_val==1717986918 and rs2_val==2<br>                                                                                                                                                  |[0x800016a0]:rem t6, t5, t4<br> [0x800016a4]:sw t6, 0x388(fp)<br>    |
|  81|[0x80006504]<br>0x11111112<br> |- rs1_val==1717986918 and rs2_val==1431655764<br>                                                                                                                                         |[0x800016b8]:rem t6, t5, t4<br> [0x800016bc]:sw t6, 0x38c(fp)<br>    |
|  82|[0x80006508]<br>0x00000002<br> |- rs1_val==1717986918 and rs2_val==858993458<br>                                                                                                                                          |[0x800016d0]:rem t6, t5, t4<br> [0x800016d4]:sw t6, 0x390(fp)<br>    |
|  83|[0x8000650c]<br>0x00000001<br> |- rs1_val==1717986918 and rs2_val==1717986917<br>                                                                                                                                         |[0x800016e8]:rem t6, t5, t4<br> [0x800016ec]:sw t6, 0x394(fp)<br>    |
|  84|[0x80006510]<br>0x66666666<br> |- rs1_val==1717986918 and rs2_val==0<br>                                                                                                                                                  |[0x800016fc]:rem t6, t5, t4<br> [0x80001700]:sw t6, 0x398(fp)<br>    |
|  85|[0x80006514]<br>0x000039F0<br> |- rs1_val==1717986918 and rs2_val==46339<br>                                                                                                                                              |[0x80001714]:rem t6, t5, t4<br> [0x80001718]:sw t6, 0x39c(fp)<br>    |
|  86|[0x80006518]<br>0x00000002<br> |- rs1_val==1717986918 and rs2_val==4<br>                                                                                                                                                  |[0x80001728]:rem t6, t5, t4<br> [0x8000172c]:sw t6, 0x3a0(fp)<br>    |
|  87|[0x8000651c]<br>0x11111110<br> |- rs1_val==1717986918 and rs2_val==1431655766<br>                                                                                                                                         |[0x80001740]:rem t6, t5, t4<br> [0x80001744]:sw t6, 0x3a4(fp)<br>    |
|  88|[0x80006520]<br>0x11111111<br> |- rs1_val==1717986918 and rs2_val==-1431655765<br>                                                                                                                                        |[0x80001758]:rem t6, t5, t4<br> [0x8000175c]:sw t6, 0x3a8(fp)<br>    |
|  89|[0x80006524]<br>0x00000000<br> |- rs1_val==1717986918 and rs2_val==6<br>                                                                                                                                                  |[0x8000176c]:rem t6, t5, t4<br> [0x80001770]:sw t6, 0x3ac(fp)<br>    |
|  90|[0x80006528]<br>0x33333332<br> |- rs1_val==1717986918 and rs2_val==858993460<br>                                                                                                                                          |[0x80001784]:rem t6, t5, t4<br> [0x80001788]:sw t6, 0x3b0(fp)<br>    |
|  91|[0x8000652c]<br>0x66666666<br> |- rs1_val==1717986918 and rs2_val==1717986919<br>                                                                                                                                         |[0x8000179c]:rem t6, t5, t4<br> [0x800017a0]:sw t6, 0x3b4(fp)<br>    |
|  92|[0x80006530]<br>0x000039F0<br> |- rs1_val==1717986918 and rs2_val==-46339<br>                                                                                                                                             |[0x800017b4]:rem t6, t5, t4<br> [0x800017b8]:sw t6, 0x3b8(fp)<br>    |
|  93|[0x80006534]<br>0x00008256<br> |- rs1_val==1717986918 and rs2_val==46341<br>                                                                                                                                              |[0x800017cc]:rem t6, t5, t4<br> [0x800017d0]:sw t6, 0x3bc(fp)<br>    |
|  94|[0x80006538]<br>0xFFFFFFFE<br> |- rs1_val==-46340 and rs2_val==3<br>                                                                                                                                                      |[0x800017e0]:rem t6, t5, t4<br> [0x800017e4]:sw t6, 0x3c0(fp)<br>    |
|  95|[0x8000653c]<br>0xFFFF4AFC<br> |- rs1_val==-46340 and rs2_val==1431655765<br>                                                                                                                                             |[0x800017f8]:rem t6, t5, t4<br> [0x800017fc]:sw t6, 0x3c4(fp)<br>    |
|  96|[0x80006540]<br>0xFFFF4AFC<br> |- rs1_val==-46340 and rs2_val==-1431655766<br>                                                                                                                                            |[0x80001810]:rem t6, t5, t4<br> [0x80001814]:sw t6, 0x3c8(fp)<br>    |
|  97|[0x80006544]<br>0x00000000<br> |- rs1_val==-46340 and rs2_val==5<br>                                                                                                                                                      |[0x80001824]:rem t6, t5, t4<br> [0x80001828]:sw t6, 0x3cc(fp)<br>    |
|  98|[0x80006548]<br>0xFFFF4AFC<br> |- rs1_val==-46340 and rs2_val==858993459<br>                                                                                                                                              |[0x8000183c]:rem t6, t5, t4<br> [0x80001840]:sw t6, 0x3d0(fp)<br>    |
|  99|[0x8000654c]<br>0xFFFF4AFC<br> |- rs1_val==-46340 and rs2_val==1717986918<br>                                                                                                                                             |[0x80001854]:rem t6, t5, t4<br> [0x80001858]:sw t6, 0x3d4(fp)<br>    |
| 100|[0x80006550]<br>0x00000000<br> |- rs1_val==-46340 and rs2_val==-46340<br>                                                                                                                                                 |[0x8000186c]:rem t6, t5, t4<br> [0x80001870]:sw t6, 0x3d8(fp)<br>    |
| 101|[0x80006554]<br>0x00000000<br> |- rs1_val==-46340 and rs2_val==46340<br>                                                                                                                                                  |[0x80001884]:rem t6, t5, t4<br> [0x80001888]:sw t6, 0x3dc(fp)<br>    |
| 102|[0x80006558]<br>0x00000000<br> |- rs1_val==-46340 and rs2_val==2<br>                                                                                                                                                      |[0x80001898]:rem t6, t5, t4<br> [0x8000189c]:sw t6, 0x3e0(fp)<br>    |
| 103|[0x8000655c]<br>0xFFFF4AFC<br> |- rs1_val==-46340 and rs2_val==1431655764<br>                                                                                                                                             |[0x800018b0]:rem t6, t5, t4<br> [0x800018b4]:sw t6, 0x3e4(fp)<br>    |
| 104|[0x80006560]<br>0xFFFF4AFC<br> |- rs1_val==-46340 and rs2_val==858993458<br>                                                                                                                                              |[0x800018c8]:rem t6, t5, t4<br> [0x800018cc]:sw t6, 0x3e8(fp)<br>    |
| 105|[0x80006564]<br>0xFFFF4AFC<br> |- rs1_val==-46340 and rs2_val==1717986917<br>                                                                                                                                             |[0x800018e0]:rem t6, t5, t4<br> [0x800018e4]:sw t6, 0x3ec(fp)<br>    |
| 106|[0x80006568]<br>0xFFFF4AFC<br> |- rs1_val==-46340 and rs2_val==0<br>                                                                                                                                                      |[0x800018f4]:rem t6, t5, t4<br> [0x800018f8]:sw t6, 0x3f0(fp)<br>    |
| 107|[0x8000656c]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==46339<br>                                                                                                                                                  |[0x8000190c]:rem t6, t5, t4<br> [0x80001910]:sw t6, 0x3f4(fp)<br>    |
| 108|[0x80006570]<br>0x00000000<br> |- rs1_val==-46340 and rs2_val==4<br>                                                                                                                                                      |[0x80001920]:rem t6, t5, t4<br> [0x80001924]:sw t6, 0x3f8(fp)<br>    |
| 109|[0x80006574]<br>0xFFFF4AFC<br> |- rs1_val==-46340 and rs2_val==1431655766<br>                                                                                                                                             |[0x80001938]:rem t6, t5, t4<br> [0x8000193c]:sw t6, 0x3fc(fp)<br>    |
| 110|[0x80006578]<br>0xFFFF4AFC<br> |- rs1_val==-46340 and rs2_val==-1431655765<br>                                                                                                                                            |[0x80001970]:rem t6, t5, t4<br> [0x80001974]:sw t6, 0x0(fp)<br>      |
| 111|[0x8000657c]<br>0xFFFFFFFE<br> |- rs1_val==-46340 and rs2_val==6<br>                                                                                                                                                      |[0x80001984]:rem t6, t5, t4<br> [0x80001988]:sw t6, 0x4(fp)<br>      |
| 112|[0x80006580]<br>0xFFFF4AFC<br> |- rs1_val==-46340 and rs2_val==858993460<br>                                                                                                                                              |[0x8000199c]:rem t6, t5, t4<br> [0x800019a0]:sw t6, 0x8(fp)<br>      |
| 113|[0x80006584]<br>0xFFFF4AFC<br> |- rs1_val==-46340 and rs2_val==1717986919<br>                                                                                                                                             |[0x800019b4]:rem t6, t5, t4<br> [0x800019b8]:sw t6, 0xc(fp)<br>      |
| 114|[0x80006588]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==-46339<br>                                                                                                                                                 |[0x800019cc]:rem t6, t5, t4<br> [0x800019d0]:sw t6, 0x10(fp)<br>     |
| 115|[0x8000658c]<br>0xFFFF4AFC<br> |- rs1_val==-46340 and rs2_val==46341<br>                                                                                                                                                  |[0x800019e4]:rem t6, t5, t4<br> [0x800019e8]:sw t6, 0x14(fp)<br>     |
| 116|[0x80006590]<br>0x00000002<br> |- rs1_val==46340 and rs2_val==3<br>                                                                                                                                                       |[0x800019f8]:rem t6, t5, t4<br> [0x800019fc]:sw t6, 0x18(fp)<br>     |
| 117|[0x80006594]<br>0x0000B504<br> |- rs1_val==46340 and rs2_val==1431655765<br>                                                                                                                                              |[0x80001a10]:rem t6, t5, t4<br> [0x80001a14]:sw t6, 0x1c(fp)<br>     |
| 118|[0x80006598]<br>0x0000B504<br> |- rs1_val==46340 and rs2_val==-1431655766<br>                                                                                                                                             |[0x80001a28]:rem t6, t5, t4<br> [0x80001a2c]:sw t6, 0x20(fp)<br>     |
| 119|[0x8000659c]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==5<br>                                                                                                                                                       |[0x80001a3c]:rem t6, t5, t4<br> [0x80001a40]:sw t6, 0x24(fp)<br>     |
| 120|[0x800065a0]<br>0x0000B504<br> |- rs1_val==46340 and rs2_val==858993459<br>                                                                                                                                               |[0x80001a54]:rem t6, t5, t4<br> [0x80001a58]:sw t6, 0x28(fp)<br>     |
| 121|[0x800065a4]<br>0x0000B504<br> |- rs1_val==46340 and rs2_val==1717986918<br>                                                                                                                                              |[0x80001a6c]:rem t6, t5, t4<br> [0x80001a70]:sw t6, 0x2c(fp)<br>     |
| 122|[0x800065a8]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==-46340<br>                                                                                                                                                  |[0x80001a84]:rem t6, t5, t4<br> [0x80001a88]:sw t6, 0x30(fp)<br>     |
| 123|[0x800065ac]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==46340<br>                                                                                                                                                   |[0x80001a9c]:rem t6, t5, t4<br> [0x80001aa0]:sw t6, 0x34(fp)<br>     |
| 124|[0x800065b0]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==2<br>                                                                                                                                                       |[0x80001ab0]:rem t6, t5, t4<br> [0x80001ab4]:sw t6, 0x38(fp)<br>     |
| 125|[0x800065b4]<br>0x0000B504<br> |- rs1_val==46340 and rs2_val==1431655764<br>                                                                                                                                              |[0x80001ac8]:rem t6, t5, t4<br> [0x80001acc]:sw t6, 0x3c(fp)<br>     |
| 126|[0x800065b8]<br>0x0000B504<br> |- rs1_val==46340 and rs2_val==858993458<br>                                                                                                                                               |[0x80001ae0]:rem t6, t5, t4<br> [0x80001ae4]:sw t6, 0x40(fp)<br>     |
| 127|[0x800065bc]<br>0x0000B504<br> |- rs1_val==46340 and rs2_val==1717986917<br>                                                                                                                                              |[0x80001af8]:rem t6, t5, t4<br> [0x80001afc]:sw t6, 0x44(fp)<br>     |
| 128|[0x800065c0]<br>0x0000B504<br> |- rs1_val==46340 and rs2_val==0<br>                                                                                                                                                       |[0x80001b0c]:rem t6, t5, t4<br> [0x80001b10]:sw t6, 0x48(fp)<br>     |
| 129|[0x800065c4]<br>0x00000001<br> |- rs1_val==46340 and rs2_val==46339<br>                                                                                                                                                   |[0x80001b24]:rem t6, t5, t4<br> [0x80001b28]:sw t6, 0x4c(fp)<br>     |
| 130|[0x800065c8]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==4<br>                                                                                                                                                       |[0x80001b38]:rem t6, t5, t4<br> [0x80001b3c]:sw t6, 0x50(fp)<br>     |
| 131|[0x800065cc]<br>0x0000B504<br> |- rs1_val==46340 and rs2_val==1431655766<br>                                                                                                                                              |[0x80001b50]:rem t6, t5, t4<br> [0x80001b54]:sw t6, 0x54(fp)<br>     |
| 132|[0x800065d0]<br>0x0000B504<br> |- rs1_val==46340 and rs2_val==-1431655765<br>                                                                                                                                             |[0x80001b68]:rem t6, t5, t4<br> [0x80001b6c]:sw t6, 0x58(fp)<br>     |
| 133|[0x800065d4]<br>0x00000002<br> |- rs1_val==46340 and rs2_val==6<br>                                                                                                                                                       |[0x80001b7c]:rem t6, t5, t4<br> [0x80001b80]:sw t6, 0x5c(fp)<br>     |
| 134|[0x800065d8]<br>0x0000B504<br> |- rs1_val==46340 and rs2_val==858993460<br>                                                                                                                                               |[0x80001b94]:rem t6, t5, t4<br> [0x80001b98]:sw t6, 0x60(fp)<br>     |
| 135|[0x800065dc]<br>0x0000B504<br> |- rs1_val==46340 and rs2_val==1717986919<br>                                                                                                                                              |[0x80001bac]:rem t6, t5, t4<br> [0x80001bb0]:sw t6, 0x64(fp)<br>     |
| 136|[0x800065e0]<br>0x00000001<br> |- rs1_val==46340 and rs2_val==-46339<br>                                                                                                                                                  |[0x80001bc4]:rem t6, t5, t4<br> [0x80001bc8]:sw t6, 0x68(fp)<br>     |
| 137|[0x800065e4]<br>0x0000B504<br> |- rs1_val==46340 and rs2_val==46341<br>                                                                                                                                                   |[0x80001bdc]:rem t6, t5, t4<br> [0x80001be0]:sw t6, 0x6c(fp)<br>     |
| 138|[0x800065e8]<br>0x00000002<br> |- rs1_val==2 and rs2_val==3<br>                                                                                                                                                           |[0x80001bec]:rem t6, t5, t4<br> [0x80001bf0]:sw t6, 0x70(fp)<br>     |
| 139|[0x800065ec]<br>0x00000002<br> |- rs1_val==2 and rs2_val==1431655765<br>                                                                                                                                                  |[0x80001c00]:rem t6, t5, t4<br> [0x80001c04]:sw t6, 0x74(fp)<br>     |
| 140|[0x800065f0]<br>0x00000002<br> |- rs1_val==2 and rs2_val==-1431655766<br>                                                                                                                                                 |[0x80001c14]:rem t6, t5, t4<br> [0x80001c18]:sw t6, 0x78(fp)<br>     |
| 141|[0x800065f4]<br>0x00000002<br> |- rs1_val==2 and rs2_val==5<br>                                                                                                                                                           |[0x80001c24]:rem t6, t5, t4<br> [0x80001c28]:sw t6, 0x7c(fp)<br>     |
| 142|[0x800065f8]<br>0x00000002<br> |- rs1_val==2 and rs2_val==858993459<br>                                                                                                                                                   |[0x80001c38]:rem t6, t5, t4<br> [0x80001c3c]:sw t6, 0x80(fp)<br>     |
| 143|[0x800065fc]<br>0x00000002<br> |- rs1_val==2 and rs2_val==1717986918<br>                                                                                                                                                  |[0x80001c4c]:rem t6, t5, t4<br> [0x80001c50]:sw t6, 0x84(fp)<br>     |
| 144|[0x80006600]<br>0x00000002<br> |- rs1_val==2 and rs2_val==-46340<br>                                                                                                                                                      |[0x80001c60]:rem t6, t5, t4<br> [0x80001c64]:sw t6, 0x88(fp)<br>     |
| 145|[0x80006604]<br>0x00000002<br> |- rs1_val==2 and rs2_val==46340<br>                                                                                                                                                       |[0x80001c74]:rem t6, t5, t4<br> [0x80001c78]:sw t6, 0x8c(fp)<br>     |
| 146|[0x80006608]<br>0x00000000<br> |- rs1_val==2 and rs2_val==2<br>                                                                                                                                                           |[0x80001c84]:rem t6, t5, t4<br> [0x80001c88]:sw t6, 0x90(fp)<br>     |
| 147|[0x8000660c]<br>0x00000002<br> |- rs1_val==2 and rs2_val==1431655764<br>                                                                                                                                                  |[0x80001c98]:rem t6, t5, t4<br> [0x80001c9c]:sw t6, 0x94(fp)<br>     |
| 148|[0x80006610]<br>0x00000002<br> |- rs1_val==2 and rs2_val==858993458<br>                                                                                                                                                   |[0x80001cac]:rem t6, t5, t4<br> [0x80001cb0]:sw t6, 0x98(fp)<br>     |
| 149|[0x80006614]<br>0x00000002<br> |- rs1_val==2 and rs2_val==1717986917<br>                                                                                                                                                  |[0x80001cc0]:rem t6, t5, t4<br> [0x80001cc4]:sw t6, 0x9c(fp)<br>     |
| 150|[0x80006618]<br>0x00000002<br> |- rs1_val==2 and rs2_val==0<br>                                                                                                                                                           |[0x80001cd0]:rem t6, t5, t4<br> [0x80001cd4]:sw t6, 0xa0(fp)<br>     |
| 151|[0x8000661c]<br>0x00000002<br> |- rs1_val==2 and rs2_val==46339<br>                                                                                                                                                       |[0x80001ce4]:rem t6, t5, t4<br> [0x80001ce8]:sw t6, 0xa4(fp)<br>     |
| 152|[0x80006620]<br>0x00000002<br> |- rs1_val==2 and rs2_val==4<br>                                                                                                                                                           |[0x80001cf4]:rem t6, t5, t4<br> [0x80001cf8]:sw t6, 0xa8(fp)<br>     |
| 153|[0x80006624]<br>0x00000002<br> |- rs1_val==2 and rs2_val==1431655766<br>                                                                                                                                                  |[0x80001d08]:rem t6, t5, t4<br> [0x80001d0c]:sw t6, 0xac(fp)<br>     |
| 154|[0x80006628]<br>0x00000002<br> |- rs1_val==2 and rs2_val==-1431655765<br>                                                                                                                                                 |[0x80001d1c]:rem t6, t5, t4<br> [0x80001d20]:sw t6, 0xb0(fp)<br>     |
| 155|[0x8000662c]<br>0x00000002<br> |- rs1_val==2 and rs2_val==6<br>                                                                                                                                                           |[0x80001d2c]:rem t6, t5, t4<br> [0x80001d30]:sw t6, 0xb4(fp)<br>     |
| 156|[0x80006630]<br>0x00000002<br> |- rs1_val==2 and rs2_val==858993460<br>                                                                                                                                                   |[0x80001d40]:rem t6, t5, t4<br> [0x80001d44]:sw t6, 0xb8(fp)<br>     |
| 157|[0x80006634]<br>0x00000002<br> |- rs1_val==2 and rs2_val==1717986919<br>                                                                                                                                                  |[0x80001d54]:rem t6, t5, t4<br> [0x80001d58]:sw t6, 0xbc(fp)<br>     |
| 158|[0x80006638]<br>0x00000002<br> |- rs1_val==2 and rs2_val==-46339<br>                                                                                                                                                      |[0x80001d68]:rem t6, t5, t4<br> [0x80001d6c]:sw t6, 0xc0(fp)<br>     |
| 159|[0x8000663c]<br>0x00000000<br> |- rs1_val==1431655764 and rs2_val==3<br>                                                                                                                                                  |[0x80001d7c]:rem t6, t5, t4<br> [0x80001d80]:sw t6, 0xc4(fp)<br>     |
| 160|[0x80006640]<br>0x55555554<br> |- rs1_val==1431655764 and rs2_val==1431655765<br>                                                                                                                                         |[0x80001d94]:rem t6, t5, t4<br> [0x80001d98]:sw t6, 0xc8(fp)<br>     |
| 161|[0x80006644]<br>0x55555554<br> |- rs1_val==1431655764 and rs2_val==-1431655766<br>                                                                                                                                        |[0x80001dac]:rem t6, t5, t4<br> [0x80001db0]:sw t6, 0xcc(fp)<br>     |
| 162|[0x80006648]<br>0x00000004<br> |- rs1_val==1431655764 and rs2_val==5<br>                                                                                                                                                  |[0x80001dc0]:rem t6, t5, t4<br> [0x80001dc4]:sw t6, 0xd0(fp)<br>     |
| 163|[0x8000664c]<br>0x22222221<br> |- rs1_val==1431655764 and rs2_val==858993459<br>                                                                                                                                          |[0x80001dd8]:rem t6, t5, t4<br> [0x80001ddc]:sw t6, 0xd4(fp)<br>     |
| 164|[0x80006650]<br>0x55555554<br> |- rs1_val==1431655764 and rs2_val==1717986918<br>                                                                                                                                         |[0x80001df0]:rem t6, t5, t4<br> [0x80001df4]:sw t6, 0xd8(fp)<br>     |
| 165|[0x80006654]<br>0x00006C9C<br> |- rs1_val==1431655764 and rs2_val==-46340<br>                                                                                                                                             |[0x80001e08]:rem t6, t5, t4<br> [0x80001e0c]:sw t6, 0xdc(fp)<br>     |
| 166|[0x80006658]<br>0x00006C9C<br> |- rs1_val==1431655764 and rs2_val==46340<br>                                                                                                                                              |[0x80001e20]:rem t6, t5, t4<br> [0x80001e24]:sw t6, 0xe0(fp)<br>     |
| 167|[0x8000665c]<br>0x00000000<br> |- rs1_val==1431655764 and rs2_val==2<br>                                                                                                                                                  |[0x80001e34]:rem t6, t5, t4<br> [0x80001e38]:sw t6, 0xe4(fp)<br>     |
| 168|[0x80006660]<br>0x00000000<br> |- rs1_val==1431655764 and rs2_val==1431655764<br>                                                                                                                                         |[0x80001e4c]:rem t6, t5, t4<br> [0x80001e50]:sw t6, 0xe8(fp)<br>     |
| 169|[0x80006664]<br>0x22222222<br> |- rs1_val==1431655764 and rs2_val==858993458<br>                                                                                                                                          |[0x80001e64]:rem t6, t5, t4<br> [0x80001e68]:sw t6, 0xec(fp)<br>     |
| 170|[0x80006668]<br>0x55555554<br> |- rs1_val==1431655764 and rs2_val==1717986917<br>                                                                                                                                         |[0x80001e7c]:rem t6, t5, t4<br> [0x80001e80]:sw t6, 0xf0(fp)<br>     |
| 171|[0x8000666c]<br>0x55555554<br> |- rs1_val==1431655764 and rs2_val==0<br>                                                                                                                                                  |[0x80001e90]:rem t6, t5, t4<br> [0x80001e94]:sw t6, 0xf4(fp)<br>     |
| 172|[0x80006670]<br>0x00003047<br> |- rs1_val==1431655764 and rs2_val==46339<br>                                                                                                                                              |[0x80001ea8]:rem t6, t5, t4<br> [0x80001eac]:sw t6, 0xf8(fp)<br>     |
| 173|[0x80006674]<br>0x00000000<br> |- rs1_val==1431655764 and rs2_val==4<br>                                                                                                                                                  |[0x80001ebc]:rem t6, t5, t4<br> [0x80001ec0]:sw t6, 0xfc(fp)<br>     |
| 174|[0x80006678]<br>0x55555554<br> |- rs1_val==1431655764 and rs2_val==1431655766<br>                                                                                                                                         |[0x80001ed4]:rem t6, t5, t4<br> [0x80001ed8]:sw t6, 0x100(fp)<br>    |
| 175|[0x8000667c]<br>0x55555554<br> |- rs1_val==1431655764 and rs2_val==-1431655765<br>                                                                                                                                        |[0x80001eec]:rem t6, t5, t4<br> [0x80001ef0]:sw t6, 0x104(fp)<br>    |
| 176|[0x80006680]<br>0x00000000<br> |- rs1_val==1431655764 and rs2_val==6<br>                                                                                                                                                  |[0x80001f00]:rem t6, t5, t4<br> [0x80001f04]:sw t6, 0x108(fp)<br>    |
| 177|[0x80006684]<br>0x22222220<br> |- rs1_val==1431655764 and rs2_val==858993460<br>                                                                                                                                          |[0x80001f18]:rem t6, t5, t4<br> [0x80001f1c]:sw t6, 0x10c(fp)<br>    |
| 178|[0x80006688]<br>0x55555554<br> |- rs1_val==1431655764 and rs2_val==1717986919<br>                                                                                                                                         |[0x80001f30]:rem t6, t5, t4<br> [0x80001f34]:sw t6, 0x110(fp)<br>    |
| 179|[0x8000668c]<br>0x00003047<br> |- rs1_val==1431655764 and rs2_val==-46339<br>                                                                                                                                             |[0x80001f48]:rem t6, t5, t4<br> [0x80001f4c]:sw t6, 0x114(fp)<br>    |
| 180|[0x80006690]<br>0x0000A8F3<br> |- rs1_val==1431655764 and rs2_val==46341<br>                                                                                                                                              |[0x80001f60]:rem t6, t5, t4<br> [0x80001f64]:sw t6, 0x118(fp)<br>    |
| 181|[0x80006694]<br>0x00000002<br> |- rs1_val==858993458 and rs2_val==3<br>                                                                                                                                                   |[0x80001f74]:rem t6, t5, t4<br> [0x80001f78]:sw t6, 0x11c(fp)<br>    |
| 182|[0x80006698]<br>0x33333332<br> |- rs1_val==858993458 and rs2_val==1431655765<br>                                                                                                                                          |[0x80001f8c]:rem t6, t5, t4<br> [0x80001f90]:sw t6, 0x120(fp)<br>    |
| 183|[0x8000669c]<br>0xFFFFFFFF<br> |- rs1_val==-1431655765 and rs2_val==4<br>                                                                                                                                                 |[0x80001fa0]:rem t6, t5, t4<br> [0x80001fa4]:sw t6, 0x124(fp)<br>    |
| 184|[0x800066a0]<br>0xAAAAAAAB<br> |- rs1_val==-1431655765 and rs2_val==1431655766<br>                                                                                                                                        |[0x80001fb8]:rem t6, t5, t4<br> [0x80001fbc]:sw t6, 0x128(fp)<br>    |
| 185|[0x800066a4]<br>0x00000000<br> |- rs1_val==-1431655765 and rs2_val==-1431655765<br>                                                                                                                                       |[0x80001fd0]:rem t6, t5, t4<br> [0x80001fd4]:sw t6, 0x12c(fp)<br>    |
| 186|[0x800066a8]<br>0xFFFFFFFF<br> |- rs1_val==-1431655765 and rs2_val==6<br>                                                                                                                                                 |[0x80001fe4]:rem t6, t5, t4<br> [0x80001fe8]:sw t6, 0x130(fp)<br>    |
| 187|[0x800066ac]<br>0xDDDDDDDF<br> |- rs1_val==-1431655765 and rs2_val==858993460<br>                                                                                                                                         |[0x80001ffc]:rem t6, t5, t4<br> [0x80002000]:sw t6, 0x134(fp)<br>    |
| 188|[0x800066b0]<br>0xAAAAAAAB<br> |- rs1_val==-1431655765 and rs2_val==1717986919<br>                                                                                                                                        |[0x80002014]:rem t6, t5, t4<br> [0x80002018]:sw t6, 0x138(fp)<br>    |
| 189|[0x800066b4]<br>0xFFFFCFB8<br> |- rs1_val==-1431655765 and rs2_val==-46339<br>                                                                                                                                            |[0x8000202c]:rem t6, t5, t4<br> [0x80002030]:sw t6, 0x13c(fp)<br>    |
| 190|[0x800066b8]<br>0xFFFF570C<br> |- rs1_val==-1431655765 and rs2_val==46341<br>                                                                                                                                             |[0x80002044]:rem t6, t5, t4<br> [0x80002048]:sw t6, 0x140(fp)<br>    |
| 191|[0x800066bc]<br>0x00000000<br> |- rs1_val==6 and rs2_val==3<br>                                                                                                                                                           |[0x80002054]:rem t6, t5, t4<br> [0x80002058]:sw t6, 0x144(fp)<br>    |
| 192|[0x800066c0]<br>0x00000006<br> |- rs1_val==6 and rs2_val==1431655765<br>                                                                                                                                                  |[0x80002068]:rem t6, t5, t4<br> [0x8000206c]:sw t6, 0x148(fp)<br>    |
| 193|[0x800066c4]<br>0x00000006<br> |- rs1_val==6 and rs2_val==-1431655766<br>                                                                                                                                                 |[0x8000207c]:rem t6, t5, t4<br> [0x80002080]:sw t6, 0x14c(fp)<br>    |
| 194|[0x800066c8]<br>0x00000001<br> |- rs1_val==6 and rs2_val==5<br>                                                                                                                                                           |[0x8000208c]:rem t6, t5, t4<br> [0x80002090]:sw t6, 0x150(fp)<br>    |
| 195|[0x800066cc]<br>0x00000006<br> |- rs1_val==6 and rs2_val==858993459<br>                                                                                                                                                   |[0x800020a0]:rem t6, t5, t4<br> [0x800020a4]:sw t6, 0x154(fp)<br>    |
| 196|[0x800066d0]<br>0x00000006<br> |- rs1_val==6 and rs2_val==1717986918<br>                                                                                                                                                  |[0x800020b4]:rem t6, t5, t4<br> [0x800020b8]:sw t6, 0x158(fp)<br>    |
| 197|[0x800066d4]<br>0x00000006<br> |- rs1_val==6 and rs2_val==-46340<br>                                                                                                                                                      |[0x800020c8]:rem t6, t5, t4<br> [0x800020cc]:sw t6, 0x15c(fp)<br>    |
| 198|[0x800066d8]<br>0x00000006<br> |- rs1_val==6 and rs2_val==46340<br>                                                                                                                                                       |[0x800020dc]:rem t6, t5, t4<br> [0x800020e0]:sw t6, 0x160(fp)<br>    |
| 199|[0x800066dc]<br>0x00000000<br> |- rs1_val==6 and rs2_val==2<br>                                                                                                                                                           |[0x800020ec]:rem t6, t5, t4<br> [0x800020f0]:sw t6, 0x164(fp)<br>    |
| 200|[0x800066e0]<br>0x00000006<br> |- rs1_val==6 and rs2_val==1431655764<br>                                                                                                                                                  |[0x80002100]:rem t6, t5, t4<br> [0x80002104]:sw t6, 0x168(fp)<br>    |
| 201|[0x800066e4]<br>0x00000006<br> |- rs1_val==6 and rs2_val==858993458<br>                                                                                                                                                   |[0x80002114]:rem t6, t5, t4<br> [0x80002118]:sw t6, 0x16c(fp)<br>    |
| 202|[0x800066e8]<br>0x00000006<br> |- rs1_val==6 and rs2_val==1717986917<br>                                                                                                                                                  |[0x80002128]:rem t6, t5, t4<br> [0x8000212c]:sw t6, 0x170(fp)<br>    |
| 203|[0x800066ec]<br>0x00000006<br> |- rs1_val==6 and rs2_val==0<br>                                                                                                                                                           |[0x80002138]:rem t6, t5, t4<br> [0x8000213c]:sw t6, 0x174(fp)<br>    |
| 204|[0x800066f0]<br>0x00000006<br> |- rs1_val==6 and rs2_val==46339<br>                                                                                                                                                       |[0x8000214c]:rem t6, t5, t4<br> [0x80002150]:sw t6, 0x178(fp)<br>    |
| 205|[0x800066f4]<br>0x00000002<br> |- rs1_val==6 and rs2_val==4<br>                                                                                                                                                           |[0x8000215c]:rem t6, t5, t4<br> [0x80002160]:sw t6, 0x17c(fp)<br>    |
| 206|[0x800066f8]<br>0x00000006<br> |- rs1_val==6 and rs2_val==1431655766<br>                                                                                                                                                  |[0x80002170]:rem t6, t5, t4<br> [0x80002174]:sw t6, 0x180(fp)<br>    |
| 207|[0x800066fc]<br>0x00000006<br> |- rs1_val==6 and rs2_val==-1431655765<br>                                                                                                                                                 |[0x80002184]:rem t6, t5, t4<br> [0x80002188]:sw t6, 0x184(fp)<br>    |
| 208|[0x80006700]<br>0x00000000<br> |- rs1_val==6 and rs2_val==6<br>                                                                                                                                                           |[0x80002194]:rem t6, t5, t4<br> [0x80002198]:sw t6, 0x188(fp)<br>    |
| 209|[0x80006704]<br>0x00000006<br> |- rs1_val==6 and rs2_val==858993460<br>                                                                                                                                                   |[0x800021a8]:rem t6, t5, t4<br> [0x800021ac]:sw t6, 0x18c(fp)<br>    |
| 210|[0x80006708]<br>0x00000006<br> |- rs1_val==6 and rs2_val==1717986919<br>                                                                                                                                                  |[0x800021bc]:rem t6, t5, t4<br> [0x800021c0]:sw t6, 0x190(fp)<br>    |
| 211|[0x8000670c]<br>0x00000006<br> |- rs1_val==6 and rs2_val==-46339<br>                                                                                                                                                      |[0x800021d0]:rem t6, t5, t4<br> [0x800021d4]:sw t6, 0x194(fp)<br>    |
| 212|[0x80006710]<br>0x00000006<br> |- rs1_val==6 and rs2_val==46341<br>                                                                                                                                                       |[0x800021e4]:rem t6, t5, t4<br> [0x800021e8]:sw t6, 0x198(fp)<br>    |
| 213|[0x80006714]<br>0x00000001<br> |- rs1_val==858993460 and rs2_val==3<br>                                                                                                                                                   |[0x800021f8]:rem t6, t5, t4<br> [0x800021fc]:sw t6, 0x19c(fp)<br>    |
| 214|[0x80006718]<br>0x33333334<br> |- rs1_val==858993460 and rs2_val==1431655765<br>                                                                                                                                          |[0x80002210]:rem t6, t5, t4<br> [0x80002214]:sw t6, 0x1a0(fp)<br>    |
| 215|[0x8000671c]<br>0x33333334<br> |- rs1_val==858993460 and rs2_val==-1431655766<br>                                                                                                                                         |[0x80002228]:rem t6, t5, t4<br> [0x8000222c]:sw t6, 0x1a4(fp)<br>    |
| 216|[0x80006720]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==5<br>                                                                                                                                                   |[0x8000223c]:rem t6, t5, t4<br> [0x80002240]:sw t6, 0x1a8(fp)<br>    |
| 217|[0x80006724]<br>0x00000001<br> |- rs1_val==858993460 and rs2_val==858993459<br>                                                                                                                                           |[0x80002254]:rem t6, t5, t4<br> [0x80002258]:sw t6, 0x1ac(fp)<br>    |
| 218|[0x80006728]<br>0x33333334<br> |- rs1_val==858993460 and rs2_val==1717986918<br>                                                                                                                                          |[0x8000226c]:rem t6, t5, t4<br> [0x80002270]:sw t6, 0x1b0(fp)<br>    |
| 219|[0x8000672c]<br>0x00008994<br> |- rs1_val==858993460 and rs2_val==-46340<br>                                                                                                                                              |[0x80002284]:rem t6, t5, t4<br> [0x80002288]:sw t6, 0x1b4(fp)<br>    |
| 220|[0x80006730]<br>0x00008994<br> |- rs1_val==858993460 and rs2_val==46340<br>                                                                                                                                               |[0x8000229c]:rem t6, t5, t4<br> [0x800022a0]:sw t6, 0x1b8(fp)<br>    |
| 221|[0x80006734]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==2<br>                                                                                                                                                   |[0x800022b0]:rem t6, t5, t4<br> [0x800022b4]:sw t6, 0x1bc(fp)<br>    |
| 222|[0x80006738]<br>0x33333334<br> |- rs1_val==858993460 and rs2_val==1431655764<br>                                                                                                                                          |[0x800022c8]:rem t6, t5, t4<br> [0x800022cc]:sw t6, 0x1c0(fp)<br>    |
| 223|[0x8000673c]<br>0x00000002<br> |- rs1_val==858993460 and rs2_val==858993458<br>                                                                                                                                           |[0x800022e0]:rem t6, t5, t4<br> [0x800022e4]:sw t6, 0x1c4(fp)<br>    |
| 224|[0x80006740]<br>0x33333334<br> |- rs1_val==858993460 and rs2_val==1717986917<br>                                                                                                                                          |[0x800022f8]:rem t6, t5, t4<br> [0x800022fc]:sw t6, 0x1c8(fp)<br>    |
| 225|[0x80006744]<br>0x33333334<br> |- rs1_val==858993460 and rs2_val==0<br>                                                                                                                                                   |[0x8000230c]:rem t6, t5, t4<br> [0x80002310]:sw t6, 0x1cc(fp)<br>    |
| 226|[0x80006748]<br>0x00001CF9<br> |- rs1_val==858993460 and rs2_val==46339<br>                                                                                                                                               |[0x80002324]:rem t6, t5, t4<br> [0x80002328]:sw t6, 0x1d0(fp)<br>    |
| 227|[0x8000674c]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==4<br>                                                                                                                                                   |[0x80002338]:rem t6, t5, t4<br> [0x8000233c]:sw t6, 0x1d4(fp)<br>    |
| 228|[0x80006750]<br>0x33333334<br> |- rs1_val==858993460 and rs2_val==1431655766<br>                                                                                                                                          |[0x80002350]:rem t6, t5, t4<br> [0x80002354]:sw t6, 0x1d8(fp)<br>    |
| 229|[0x80006754]<br>0x33333334<br> |- rs1_val==858993460 and rs2_val==-1431655765<br>                                                                                                                                         |[0x80002368]:rem t6, t5, t4<br> [0x8000236c]:sw t6, 0x1dc(fp)<br>    |
| 230|[0x80006758]<br>0x00000004<br> |- rs1_val==858993460 and rs2_val==6<br>                                                                                                                                                   |[0x8000237c]:rem t6, t5, t4<br> [0x80002380]:sw t6, 0x1e0(fp)<br>    |
| 231|[0x8000675c]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==858993460<br>                                                                                                                                           |[0x80002394]:rem t6, t5, t4<br> [0x80002398]:sw t6, 0x1e4(fp)<br>    |
| 232|[0x80006760]<br>0x33333334<br> |- rs1_val==858993460 and rs2_val==1717986919<br>                                                                                                                                          |[0x800023ac]:rem t6, t5, t4<br> [0x800023b0]:sw t6, 0x1e8(fp)<br>    |
| 233|[0x80006764]<br>0x00001CF9<br> |- rs1_val==858993460 and rs2_val==-46339<br>                                                                                                                                              |[0x800023c4]:rem t6, t5, t4<br> [0x800023c8]:sw t6, 0x1ec(fp)<br>    |
| 234|[0x80006768]<br>0x0000412C<br> |- rs1_val==858993460 and rs2_val==46341<br>                                                                                                                                               |[0x800023dc]:rem t6, t5, t4<br> [0x800023e0]:sw t6, 0x1f0(fp)<br>    |
| 235|[0x8000676c]<br>0x00000001<br> |- rs1_val==1717986919 and rs2_val==3<br>                                                                                                                                                  |[0x800023f0]:rem t6, t5, t4<br> [0x800023f4]:sw t6, 0x1f4(fp)<br>    |
| 236|[0x80006770]<br>0x11111112<br> |- rs1_val==1717986919 and rs2_val==1431655765<br>                                                                                                                                         |[0x80002408]:rem t6, t5, t4<br> [0x8000240c]:sw t6, 0x1f8(fp)<br>    |
| 237|[0x80006774]<br>0x11111111<br> |- rs1_val==1717986919 and rs2_val==-1431655766<br>                                                                                                                                        |[0x80002420]:rem t6, t5, t4<br> [0x80002424]:sw t6, 0x1fc(fp)<br>    |
| 238|[0x80006778]<br>0x00000004<br> |- rs1_val==1717986919 and rs2_val==5<br>                                                                                                                                                  |[0x80002434]:rem t6, t5, t4<br> [0x80002438]:sw t6, 0x200(fp)<br>    |
| 239|[0x8000677c]<br>0x00000001<br> |- rs1_val==1717986919 and rs2_val==858993459<br>                                                                                                                                          |[0x8000244c]:rem t6, t5, t4<br> [0x80002450]:sw t6, 0x204(fp)<br>    |
| 240|[0x80006780]<br>0x00000001<br> |- rs1_val==1717986919 and rs2_val==1717986918<br>                                                                                                                                         |[0x80002464]:rem t6, t5, t4<br> [0x80002468]:sw t6, 0x208(fp)<br>    |
| 241|[0x80006784]<br>0x00005E23<br> |- rs1_val==1717986919 and rs2_val==-46340<br>                                                                                                                                             |[0x8000247c]:rem t6, t5, t4<br> [0x80002480]:sw t6, 0x20c(fp)<br>    |
| 242|[0x80006788]<br>0x00005E23<br> |- rs1_val==1717986919 and rs2_val==46340<br>                                                                                                                                              |[0x80002494]:rem t6, t5, t4<br> [0x80002498]:sw t6, 0x210(fp)<br>    |
| 243|[0x8000678c]<br>0x00000001<br> |- rs1_val==1717986919 and rs2_val==2<br>                                                                                                                                                  |[0x800024a8]:rem t6, t5, t4<br> [0x800024ac]:sw t6, 0x214(fp)<br>    |
| 244|[0x80006790]<br>0x11111113<br> |- rs1_val==1717986919 and rs2_val==1431655764<br>                                                                                                                                         |[0x800024c0]:rem t6, t5, t4<br> [0x800024c4]:sw t6, 0x218(fp)<br>    |
| 245|[0x80006794]<br>0x00000003<br> |- rs1_val==1717986919 and rs2_val==858993458<br>                                                                                                                                          |[0x800024d8]:rem t6, t5, t4<br> [0x800024dc]:sw t6, 0x21c(fp)<br>    |
| 246|[0x80006798]<br>0x00000002<br> |- rs1_val==1717986919 and rs2_val==1717986917<br>                                                                                                                                         |[0x800024f0]:rem t6, t5, t4<br> [0x800024f4]:sw t6, 0x220(fp)<br>    |
| 247|[0x8000679c]<br>0x66666667<br> |- rs1_val==1717986919 and rs2_val==0<br>                                                                                                                                                  |[0x80002504]:rem t6, t5, t4<br> [0x80002508]:sw t6, 0x224(fp)<br>    |
| 248|[0x800067a0]<br>0x000039F1<br> |- rs1_val==1717986919 and rs2_val==46339<br>                                                                                                                                              |[0x8000251c]:rem t6, t5, t4<br> [0x80002520]:sw t6, 0x228(fp)<br>    |
| 249|[0x800067a4]<br>0x00000003<br> |- rs1_val==1717986919 and rs2_val==4<br>                                                                                                                                                  |[0x80002530]:rem t6, t5, t4<br> [0x80002534]:sw t6, 0x22c(fp)<br>    |
| 250|[0x800067a8]<br>0x11111111<br> |- rs1_val==1717986919 and rs2_val==1431655766<br>                                                                                                                                         |[0x80002548]:rem t6, t5, t4<br> [0x8000254c]:sw t6, 0x230(fp)<br>    |
| 251|[0x800067ac]<br>0x11111112<br> |- rs1_val==1717986919 and rs2_val==-1431655765<br>                                                                                                                                        |[0x80002560]:rem t6, t5, t4<br> [0x80002564]:sw t6, 0x234(fp)<br>    |
| 252|[0x800067b0]<br>0x00000001<br> |- rs1_val==1717986919 and rs2_val==6<br>                                                                                                                                                  |[0x80002574]:rem t6, t5, t4<br> [0x80002578]:sw t6, 0x238(fp)<br>    |
| 253|[0x800067b4]<br>0x33333333<br> |- rs1_val==1717986919 and rs2_val==858993460<br>                                                                                                                                          |[0x8000258c]:rem t6, t5, t4<br> [0x80002590]:sw t6, 0x23c(fp)<br>    |
| 254|[0x800067b8]<br>0x00000000<br> |- rs1_val==1717986919 and rs2_val==1717986919<br>                                                                                                                                         |[0x800025a4]:rem t6, t5, t4<br> [0x800025a8]:sw t6, 0x240(fp)<br>    |
| 255|[0x800067bc]<br>0x000039F1<br> |- rs1_val==1717986919 and rs2_val==-46339<br>                                                                                                                                             |[0x800025bc]:rem t6, t5, t4<br> [0x800025c0]:sw t6, 0x244(fp)<br>    |
| 256|[0x800067c0]<br>0x00008257<br> |- rs1_val==1717986919 and rs2_val==46341<br>                                                                                                                                              |[0x800025d4]:rem t6, t5, t4<br> [0x800025d8]:sw t6, 0x248(fp)<br>    |
| 257|[0x800067c4]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==3<br>                                                                                                                                                      |[0x800025e8]:rem t6, t5, t4<br> [0x800025ec]:sw t6, 0x24c(fp)<br>    |
| 258|[0x800067c8]<br>0xFFFF4AFD<br> |- rs1_val==-46339 and rs2_val==1431655765<br>                                                                                                                                             |[0x80002600]:rem t6, t5, t4<br> [0x80002604]:sw t6, 0x250(fp)<br>    |
| 259|[0x800067cc]<br>0xFFFF4AFD<br> |- rs1_val==-46339 and rs2_val==-1431655766<br>                                                                                                                                            |[0x80002618]:rem t6, t5, t4<br> [0x8000261c]:sw t6, 0x254(fp)<br>    |
| 260|[0x800067d0]<br>0xFFFFFFFC<br> |- rs1_val==-46339 and rs2_val==5<br>                                                                                                                                                      |[0x8000262c]:rem t6, t5, t4<br> [0x80002630]:sw t6, 0x258(fp)<br>    |
| 261|[0x800067d4]<br>0xFFFF4AFD<br> |- rs1_val==-46339 and rs2_val==858993459<br>                                                                                                                                              |[0x80002644]:rem t6, t5, t4<br> [0x80002648]:sw t6, 0x25c(fp)<br>    |
| 262|[0x800067d8]<br>0xFFFF4AFD<br> |- rs1_val==-46339 and rs2_val==1717986918<br>                                                                                                                                             |[0x8000265c]:rem t6, t5, t4<br> [0x80002660]:sw t6, 0x260(fp)<br>    |
| 263|[0x800067dc]<br>0xFFFF4AFD<br> |- rs1_val==-46339 and rs2_val==-46340<br>                                                                                                                                                 |[0x80002674]:rem t6, t5, t4<br> [0x80002678]:sw t6, 0x264(fp)<br>    |
| 264|[0x800067e0]<br>0xFFFF4AFD<br> |- rs1_val==-46339 and rs2_val==46340<br>                                                                                                                                                  |[0x8000268c]:rem t6, t5, t4<br> [0x80002690]:sw t6, 0x268(fp)<br>    |
| 265|[0x800067e4]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==2<br>                                                                                                                                                      |[0x800026a0]:rem t6, t5, t4<br> [0x800026a4]:sw t6, 0x26c(fp)<br>    |
| 266|[0x800067e8]<br>0xFFFF4AFD<br> |- rs1_val==-46339 and rs2_val==1431655764<br>                                                                                                                                             |[0x800026b8]:rem t6, t5, t4<br> [0x800026bc]:sw t6, 0x270(fp)<br>    |
| 267|[0x800067ec]<br>0xFFFF4AFD<br> |- rs1_val==-46339 and rs2_val==858993458<br>                                                                                                                                              |[0x800026d0]:rem t6, t5, t4<br> [0x800026d4]:sw t6, 0x274(fp)<br>    |
| 268|[0x800067f0]<br>0xFFFF4AFD<br> |- rs1_val==-46339 and rs2_val==1717986917<br>                                                                                                                                             |[0x800026e8]:rem t6, t5, t4<br> [0x800026ec]:sw t6, 0x278(fp)<br>    |
| 269|[0x800067f4]<br>0xFFFF4AFD<br> |- rs1_val==-46339 and rs2_val==0<br>                                                                                                                                                      |[0x800026fc]:rem t6, t5, t4<br> [0x80002700]:sw t6, 0x27c(fp)<br>    |
| 270|[0x800067f8]<br>0x00000000<br> |- rs1_val==-46339 and rs2_val==46339<br>                                                                                                                                                  |[0x80002714]:rem t6, t5, t4<br> [0x80002718]:sw t6, 0x280(fp)<br>    |
| 271|[0x800067fc]<br>0xFFFFFFFD<br> |- rs1_val==-46339 and rs2_val==4<br>                                                                                                                                                      |[0x80002728]:rem t6, t5, t4<br> [0x8000272c]:sw t6, 0x284(fp)<br>    |
| 272|[0x80006800]<br>0xFFFF4AFD<br> |- rs1_val==-46339 and rs2_val==1431655766<br>                                                                                                                                             |[0x80002740]:rem t6, t5, t4<br> [0x80002744]:sw t6, 0x288(fp)<br>    |
| 273|[0x80006804]<br>0xFFFF4AFD<br> |- rs1_val==-46339 and rs2_val==-1431655765<br>                                                                                                                                            |[0x80002758]:rem t6, t5, t4<br> [0x8000275c]:sw t6, 0x28c(fp)<br>    |
| 274|[0x80006808]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==6<br>                                                                                                                                                      |[0x8000276c]:rem t6, t5, t4<br> [0x80002770]:sw t6, 0x290(fp)<br>    |
| 275|[0x8000680c]<br>0xFFFF4AFD<br> |- rs1_val==-46339 and rs2_val==858993460<br>                                                                                                                                              |[0x80002784]:rem t6, t5, t4<br> [0x80002788]:sw t6, 0x294(fp)<br>    |
| 276|[0x80006810]<br>0xFFFF4AFD<br> |- rs1_val==-46339 and rs2_val==1717986919<br>                                                                                                                                             |[0x8000279c]:rem t6, t5, t4<br> [0x800027a0]:sw t6, 0x298(fp)<br>    |
| 277|[0x80006814]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==3<br>                                                                                                                                                       |[0x800027b0]:rem t6, t5, t4<br> [0x800027b4]:sw t6, 0x29c(fp)<br>    |
| 278|[0x80006818]<br>0x0000B505<br> |- rs1_val==46341 and rs2_val==1431655765<br>                                                                                                                                              |[0x800027c8]:rem t6, t5, t4<br> [0x800027cc]:sw t6, 0x2a0(fp)<br>    |
| 279|[0x8000681c]<br>0x0000B505<br> |- rs1_val==46341 and rs2_val==-1431655766<br>                                                                                                                                             |[0x800027e0]:rem t6, t5, t4<br> [0x800027e4]:sw t6, 0x2a4(fp)<br>    |
| 280|[0x80006820]<br>0x00000001<br> |- rs1_val==46341 and rs2_val==5<br>                                                                                                                                                       |[0x800027f4]:rem t6, t5, t4<br> [0x800027f8]:sw t6, 0x2a8(fp)<br>    |
| 281|[0x80006824]<br>0x0000B505<br> |- rs1_val==46341 and rs2_val==858993459<br>                                                                                                                                               |[0x8000280c]:rem t6, t5, t4<br> [0x80002810]:sw t6, 0x2ac(fp)<br>    |
| 282|[0x80006828]<br>0x0000B505<br> |- rs1_val==46341 and rs2_val==1717986918<br>                                                                                                                                              |[0x80002824]:rem t6, t5, t4<br> [0x80002828]:sw t6, 0x2b0(fp)<br>    |
| 283|[0x8000682c]<br>0x00000001<br> |- rs1_val==46341 and rs2_val==-46340<br>                                                                                                                                                  |[0x8000283c]:rem t6, t5, t4<br> [0x80002840]:sw t6, 0x2b4(fp)<br>    |
| 284|[0x80006830]<br>0x00000001<br> |- rs1_val==46341 and rs2_val==46340<br>                                                                                                                                                   |[0x80002854]:rem t6, t5, t4<br> [0x80002858]:sw t6, 0x2b8(fp)<br>    |
| 285|[0x80006834]<br>0x0000B505<br> |- rs1_val==46341 and rs2_val==1431655764<br>                                                                                                                                              |[0x8000286c]:rem t6, t5, t4<br> [0x80002870]:sw t6, 0x2bc(fp)<br>    |
| 286|[0x80006838]<br>0x0000B505<br> |- rs1_val==46341 and rs2_val==858993458<br>                                                                                                                                               |[0x80002884]:rem t6, t5, t4<br> [0x80002888]:sw t6, 0x2c0(fp)<br>    |
| 287|[0x8000683c]<br>0x0000B505<br> |- rs1_val==46341 and rs2_val==1717986917<br>                                                                                                                                              |[0x8000289c]:rem t6, t5, t4<br> [0x800028a0]:sw t6, 0x2c4(fp)<br>    |
| 288|[0x80006844]<br>0x00000002<br> |- rs1_val==46341 and rs2_val==46339<br>                                                                                                                                                   |[0x800028c8]:rem t6, t5, t4<br> [0x800028cc]:sw t6, 0x2cc(fp)<br>    |
| 289|[0x80006848]<br>0x0000B505<br> |- rs1_val==46341 and rs2_val==1431655766<br>                                                                                                                                              |[0x800028e0]:rem t6, t5, t4<br> [0x800028e4]:sw t6, 0x2d0(fp)<br>    |
| 290|[0x8000684c]<br>0x0000B505<br> |- rs1_val==46341 and rs2_val==-1431655765<br>                                                                                                                                             |[0x800028f8]:rem t6, t5, t4<br> [0x800028fc]:sw t6, 0x2d4(fp)<br>    |
| 291|[0x80006850]<br>0x00000003<br> |- rs1_val==46341 and rs2_val==6<br>                                                                                                                                                       |[0x8000290c]:rem t6, t5, t4<br> [0x80002910]:sw t6, 0x2d8(fp)<br>    |
| 292|[0x80006854]<br>0x0000B505<br> |- rs1_val==46341 and rs2_val==858993460<br>                                                                                                                                               |[0x80002924]:rem t6, t5, t4<br> [0x80002928]:sw t6, 0x2dc(fp)<br>    |
| 293|[0x80006858]<br>0x0000B505<br> |- rs1_val==46341 and rs2_val==1717986919<br>                                                                                                                                              |[0x8000293c]:rem t6, t5, t4<br> [0x80002940]:sw t6, 0x2e0(fp)<br>    |
| 294|[0x8000685c]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==46341<br>                                                                                                                                                   |[0x80002954]:rem t6, t5, t4<br> [0x80002958]:sw t6, 0x2e4(fp)<br>    |
| 295|[0x80006860]<br>0x33333332<br> |- rs1_val==858993458 and rs2_val==-1431655766<br>                                                                                                                                         |[0x8000296c]:rem t6, t5, t4<br> [0x80002970]:sw t6, 0x2e8(fp)<br>    |
| 296|[0x80006864]<br>0x00000003<br> |- rs1_val==858993458 and rs2_val==5<br>                                                                                                                                                   |[0x80002980]:rem t6, t5, t4<br> [0x80002984]:sw t6, 0x2ec(fp)<br>    |
| 297|[0x80006868]<br>0x33333332<br> |- rs1_val==858993458 and rs2_val==858993459<br>                                                                                                                                           |[0x80002998]:rem t6, t5, t4<br> [0x8000299c]:sw t6, 0x2f0(fp)<br>    |
| 298|[0x8000686c]<br>0x33333332<br> |- rs1_val==858993458 and rs2_val==1717986918<br>                                                                                                                                          |[0x800029b0]:rem t6, t5, t4<br> [0x800029b4]:sw t6, 0x2f4(fp)<br>    |
| 299|[0x80006870]<br>0x00008992<br> |- rs1_val==858993458 and rs2_val==-46340<br>                                                                                                                                              |[0x800029c8]:rem t6, t5, t4<br> [0x800029cc]:sw t6, 0x2f8(fp)<br>    |
| 300|[0x80006874]<br>0x00008992<br> |- rs1_val==858993458 and rs2_val==46340<br>                                                                                                                                               |[0x800029e0]:rem t6, t5, t4<br> [0x800029e4]:sw t6, 0x2fc(fp)<br>    |
| 301|[0x80006878]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==2<br>                                                                                                                                                   |[0x800029f4]:rem t6, t5, t4<br> [0x800029f8]:sw t6, 0x300(fp)<br>    |
| 302|[0x8000687c]<br>0x33333332<br> |- rs1_val==858993458 and rs2_val==1431655764<br>                                                                                                                                          |[0x80002a0c]:rem t6, t5, t4<br> [0x80002a10]:sw t6, 0x304(fp)<br>    |
| 303|[0x80006880]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==858993458<br>                                                                                                                                           |[0x80002a24]:rem t6, t5, t4<br> [0x80002a28]:sw t6, 0x308(fp)<br>    |
| 304|[0x80006884]<br>0x33333332<br> |- rs1_val==858993458 and rs2_val==1717986917<br>                                                                                                                                          |[0x80002a3c]:rem t6, t5, t4<br> [0x80002a40]:sw t6, 0x30c(fp)<br>    |
| 305|[0x80006888]<br>0x33333332<br> |- rs1_val==858993458 and rs2_val==0<br>                                                                                                                                                   |[0x80002a50]:rem t6, t5, t4<br> [0x80002a54]:sw t6, 0x310(fp)<br>    |
| 306|[0x8000688c]<br>0x00001CF7<br> |- rs1_val==858993458 and rs2_val==46339<br>                                                                                                                                               |[0x80002a68]:rem t6, t5, t4<br> [0x80002a6c]:sw t6, 0x314(fp)<br>    |
| 307|[0x80006890]<br>0x00000002<br> |- rs1_val==858993458 and rs2_val==4<br>                                                                                                                                                   |[0x80002a7c]:rem t6, t5, t4<br> [0x80002a80]:sw t6, 0x318(fp)<br>    |
| 308|[0x80006894]<br>0x33333332<br> |- rs1_val==858993458 and rs2_val==1431655766<br>                                                                                                                                          |[0x80002a94]:rem t6, t5, t4<br> [0x80002a98]:sw t6, 0x31c(fp)<br>    |
| 309|[0x80006898]<br>0x33333332<br> |- rs1_val==858993458 and rs2_val==-1431655765<br>                                                                                                                                         |[0x80002aac]:rem t6, t5, t4<br> [0x80002ab0]:sw t6, 0x320(fp)<br>    |
| 310|[0x8000689c]<br>0x00000002<br> |- rs1_val==858993458 and rs2_val==6<br>                                                                                                                                                   |[0x80002ac0]:rem t6, t5, t4<br> [0x80002ac4]:sw t6, 0x324(fp)<br>    |
| 311|[0x800068a0]<br>0x33333332<br> |- rs1_val==858993458 and rs2_val==858993460<br>                                                                                                                                           |[0x80002ad8]:rem t6, t5, t4<br> [0x80002adc]:sw t6, 0x328(fp)<br>    |
| 312|[0x800068a4]<br>0x33333332<br> |- rs1_val==858993458 and rs2_val==1717986919<br>                                                                                                                                          |[0x80002af0]:rem t6, t5, t4<br> [0x80002af4]:sw t6, 0x32c(fp)<br>    |
| 313|[0x800068a8]<br>0x00001CF7<br> |- rs1_val==858993458 and rs2_val==-46339<br>                                                                                                                                              |[0x80002b08]:rem t6, t5, t4<br> [0x80002b0c]:sw t6, 0x330(fp)<br>    |
| 314|[0x800068ac]<br>0x0000412A<br> |- rs1_val==858993458 and rs2_val==46341<br>                                                                                                                                               |[0x80002b20]:rem t6, t5, t4<br> [0x80002b24]:sw t6, 0x334(fp)<br>    |
| 315|[0x800068b0]<br>0x00000002<br> |- rs1_val==1717986917 and rs2_val==3<br>                                                                                                                                                  |[0x80002b34]:rem t6, t5, t4<br> [0x80002b38]:sw t6, 0x338(fp)<br>    |
| 316|[0x800068b4]<br>0x11111110<br> |- rs1_val==1717986917 and rs2_val==1431655765<br>                                                                                                                                         |[0x80002b4c]:rem t6, t5, t4<br> [0x80002b50]:sw t6, 0x33c(fp)<br>    |
| 317|[0x800068b8]<br>0x1111110F<br> |- rs1_val==1717986917 and rs2_val==-1431655766<br>                                                                                                                                        |[0x80002b64]:rem t6, t5, t4<br> [0x80002b68]:sw t6, 0x340(fp)<br>    |
| 318|[0x800068bc]<br>0x00000002<br> |- rs1_val==1717986917 and rs2_val==5<br>                                                                                                                                                  |[0x80002b78]:rem t6, t5, t4<br> [0x80002b7c]:sw t6, 0x344(fp)<br>    |
| 319|[0x800068c0]<br>0x33333332<br> |- rs1_val==1717986917 and rs2_val==858993459<br>                                                                                                                                          |[0x80002b90]:rem t6, t5, t4<br> [0x80002b94]:sw t6, 0x348(fp)<br>    |
| 320|[0x800068c4]<br>0x66666665<br> |- rs1_val==1717986917 and rs2_val==1717986918<br>                                                                                                                                         |[0x80002ba8]:rem t6, t5, t4<br> [0x80002bac]:sw t6, 0x34c(fp)<br>    |
| 321|[0x800068c8]<br>0x00005E21<br> |- rs1_val==1717986917 and rs2_val==-46340<br>                                                                                                                                             |[0x80002bc0]:rem t6, t5, t4<br> [0x80002bc4]:sw t6, 0x350(fp)<br>    |
| 322|[0x800068cc]<br>0x00005E21<br> |- rs1_val==1717986917 and rs2_val==46340<br>                                                                                                                                              |[0x80002bd8]:rem t6, t5, t4<br> [0x80002bdc]:sw t6, 0x354(fp)<br>    |
| 323|[0x800068d0]<br>0x00000001<br> |- rs1_val==1717986917 and rs2_val==2<br>                                                                                                                                                  |[0x80002bec]:rem t6, t5, t4<br> [0x80002bf0]:sw t6, 0x358(fp)<br>    |
| 324|[0x800068d4]<br>0x11111111<br> |- rs1_val==1717986917 and rs2_val==1431655764<br>                                                                                                                                         |[0x80002c04]:rem t6, t5, t4<br> [0x80002c08]:sw t6, 0x35c(fp)<br>    |
| 325|[0x800068d8]<br>0x00000001<br> |- rs1_val==1717986917 and rs2_val==858993458<br>                                                                                                                                          |[0x80002c1c]:rem t6, t5, t4<br> [0x80002c20]:sw t6, 0x360(fp)<br>    |
| 326|[0x800068dc]<br>0x00000000<br> |- rs1_val==1717986917 and rs2_val==1717986917<br>                                                                                                                                         |[0x80002c34]:rem t6, t5, t4<br> [0x80002c38]:sw t6, 0x364(fp)<br>    |
| 327|[0x800068e0]<br>0x66666665<br> |- rs1_val==1717986917 and rs2_val==0<br>                                                                                                                                                  |[0x80002c48]:rem t6, t5, t4<br> [0x80002c4c]:sw t6, 0x368(fp)<br>    |
| 328|[0x800068e4]<br>0x000039EF<br> |- rs1_val==1717986917 and rs2_val==46339<br>                                                                                                                                              |[0x80002c60]:rem t6, t5, t4<br> [0x80002c64]:sw t6, 0x36c(fp)<br>    |
| 329|[0x800068e8]<br>0x00000001<br> |- rs1_val==1717986917 and rs2_val==4<br>                                                                                                                                                  |[0x80002c74]:rem t6, t5, t4<br> [0x80002c78]:sw t6, 0x370(fp)<br>    |
| 330|[0x800068ec]<br>0x1111110F<br> |- rs1_val==1717986917 and rs2_val==1431655766<br>                                                                                                                                         |[0x80002c8c]:rem t6, t5, t4<br> [0x80002c90]:sw t6, 0x374(fp)<br>    |
| 331|[0x800068f0]<br>0x11111110<br> |- rs1_val==1717986917 and rs2_val==-1431655765<br>                                                                                                                                        |[0x80002ca4]:rem t6, t5, t4<br> [0x80002ca8]:sw t6, 0x378(fp)<br>    |
| 332|[0x800068f4]<br>0x00000005<br> |- rs1_val==1717986917 and rs2_val==6<br>                                                                                                                                                  |[0x80002cb8]:rem t6, t5, t4<br> [0x80002cbc]:sw t6, 0x37c(fp)<br>    |
| 333|[0x800068f8]<br>0x33333331<br> |- rs1_val==1717986917 and rs2_val==858993460<br>                                                                                                                                          |[0x80002cd0]:rem t6, t5, t4<br> [0x80002cd4]:sw t6, 0x380(fp)<br>    |
| 334|[0x800068fc]<br>0x66666665<br> |- rs1_val==1717986917 and rs2_val==1717986919<br>                                                                                                                                         |[0x80002ce8]:rem t6, t5, t4<br> [0x80002cec]:sw t6, 0x384(fp)<br>    |
| 335|[0x80006900]<br>0x000039EF<br> |- rs1_val==1717986917 and rs2_val==-46339<br>                                                                                                                                             |[0x80002d00]:rem t6, t5, t4<br> [0x80002d04]:sw t6, 0x388(fp)<br>    |
| 336|[0x80006904]<br>0x00008255<br> |- rs1_val==1717986917 and rs2_val==46341<br>                                                                                                                                              |[0x80002d18]:rem t6, t5, t4<br> [0x80002d1c]:sw t6, 0x38c(fp)<br>    |
| 337|[0x80006908]<br>0x00000000<br> |- rs1_val==0 and rs2_val==3<br>                                                                                                                                                           |[0x80002d28]:rem t6, t5, t4<br> [0x80002d2c]:sw t6, 0x390(fp)<br>    |
| 338|[0x8000690c]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1431655765<br>                                                                                                                                                  |[0x80002d3c]:rem t6, t5, t4<br> [0x80002d40]:sw t6, 0x394(fp)<br>    |
| 339|[0x80006910]<br>0x00000000<br> |- rs1_val==0 and rs2_val==-1431655766<br>                                                                                                                                                 |[0x80002d50]:rem t6, t5, t4<br> [0x80002d54]:sw t6, 0x398(fp)<br>    |
| 340|[0x80006914]<br>0x00000000<br> |- rs1_val==0 and rs2_val==5<br>                                                                                                                                                           |[0x80002d60]:rem t6, t5, t4<br> [0x80002d64]:sw t6, 0x39c(fp)<br>    |
| 341|[0x80006918]<br>0x00000000<br> |- rs1_val==0 and rs2_val==858993459<br>                                                                                                                                                   |[0x80002d74]:rem t6, t5, t4<br> [0x80002d78]:sw t6, 0x3a0(fp)<br>    |
| 342|[0x8000691c]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1717986918<br>                                                                                                                                                  |[0x80002d88]:rem t6, t5, t4<br> [0x80002d8c]:sw t6, 0x3a4(fp)<br>    |
| 343|[0x80006920]<br>0x00000000<br> |- rs1_val==0 and rs2_val==-46340<br>                                                                                                                                                      |[0x80002d9c]:rem t6, t5, t4<br> [0x80002da0]:sw t6, 0x3a8(fp)<br>    |
| 344|[0x80006924]<br>0x00000000<br> |- rs1_val==0 and rs2_val==46340<br>                                                                                                                                                       |[0x80002db0]:rem t6, t5, t4<br> [0x80002db4]:sw t6, 0x3ac(fp)<br>    |
| 345|[0x80006928]<br>0x00000000<br> |- rs1_val==0 and rs2_val==2<br>                                                                                                                                                           |[0x80002dc0]:rem t6, t5, t4<br> [0x80002dc4]:sw t6, 0x3b0(fp)<br>    |
| 346|[0x8000692c]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1431655764<br>                                                                                                                                                  |[0x80002dd4]:rem t6, t5, t4<br> [0x80002dd8]:sw t6, 0x3b4(fp)<br>    |
| 347|[0x80006930]<br>0x00000000<br> |- rs1_val==0 and rs2_val==858993458<br>                                                                                                                                                   |[0x80002de8]:rem t6, t5, t4<br> [0x80002dec]:sw t6, 0x3b8(fp)<br>    |
| 348|[0x80006934]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1717986917<br>                                                                                                                                                  |[0x80002dfc]:rem t6, t5, t4<br> [0x80002e00]:sw t6, 0x3bc(fp)<br>    |
| 349|[0x8000693c]<br>0x00000000<br> |- rs1_val==0 and rs2_val==46339<br>                                                                                                                                                       |[0x80002e20]:rem t6, t5, t4<br> [0x80002e24]:sw t6, 0x3c4(fp)<br>    |
| 350|[0x80006940]<br>0x00000000<br> |- rs1_val==0 and rs2_val==4<br>                                                                                                                                                           |[0x80002e30]:rem t6, t5, t4<br> [0x80002e34]:sw t6, 0x3c8(fp)<br>    |
| 351|[0x80006944]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1431655766<br>                                                                                                                                                  |[0x80002e44]:rem t6, t5, t4<br> [0x80002e48]:sw t6, 0x3cc(fp)<br>    |
| 352|[0x80006948]<br>0x00000000<br> |- rs1_val==0 and rs2_val==-1431655765<br>                                                                                                                                                 |[0x80002e58]:rem t6, t5, t4<br> [0x80002e5c]:sw t6, 0x3d0(fp)<br>    |
| 353|[0x8000694c]<br>0x00000000<br> |- rs1_val==0 and rs2_val==6<br>                                                                                                                                                           |[0x80002e68]:rem t6, t5, t4<br> [0x80002e6c]:sw t6, 0x3d4(fp)<br>    |
| 354|[0x80006950]<br>0x00000000<br> |- rs1_val==0 and rs2_val==858993460<br>                                                                                                                                                   |[0x80002e7c]:rem t6, t5, t4<br> [0x80002e80]:sw t6, 0x3d8(fp)<br>    |
| 355|[0x80006954]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1717986919<br>                                                                                                                                                  |[0x80002e90]:rem t6, t5, t4<br> [0x80002e94]:sw t6, 0x3dc(fp)<br>    |
| 356|[0x8000695c]<br>0x00000001<br> |- rs1_val==46339 and rs2_val==3<br>                                                                                                                                                       |[0x80002eb8]:rem t6, t5, t4<br> [0x80002ebc]:sw t6, 0x3e4(fp)<br>    |
| 357|[0x80006960]<br>0x0000B503<br> |- rs1_val==46339 and rs2_val==1431655765<br>                                                                                                                                              |[0x80002ed0]:rem t6, t5, t4<br> [0x80002ed4]:sw t6, 0x3e8(fp)<br>    |
| 358|[0x80006964]<br>0x0000B503<br> |- rs1_val==46339 and rs2_val==-1431655766<br>                                                                                                                                             |[0x80002ee8]:rem t6, t5, t4<br> [0x80002eec]:sw t6, 0x3ec(fp)<br>    |
| 359|[0x80006968]<br>0x00000004<br> |- rs1_val==46339 and rs2_val==5<br>                                                                                                                                                       |[0x80002efc]:rem t6, t5, t4<br> [0x80002f00]:sw t6, 0x3f0(fp)<br>    |
| 360|[0x8000696c]<br>0x0000B503<br> |- rs1_val==46339 and rs2_val==858993459<br>                                                                                                                                               |[0x80002f14]:rem t6, t5, t4<br> [0x80002f18]:sw t6, 0x3f4(fp)<br>    |
| 361|[0x80006970]<br>0x0000B503<br> |- rs1_val==46339 and rs2_val==1717986918<br>                                                                                                                                              |[0x80002f2c]:rem t6, t5, t4<br> [0x80002f30]:sw t6, 0x3f8(fp)<br>    |
| 362|[0x80006974]<br>0x0000B503<br> |- rs1_val==46339 and rs2_val==-46340<br>                                                                                                                                                  |[0x80002f44]:rem t6, t5, t4<br> [0x80002f48]:sw t6, 0x3fc(fp)<br>    |
| 363|[0x80006978]<br>0x0000B503<br> |- rs1_val==46339 and rs2_val==46340<br>                                                                                                                                                   |[0x80002f90]:rem t6, t5, t4<br> [0x80002f94]:sw t6, 0x0(fp)<br>      |
| 364|[0x8000697c]<br>0x00000001<br> |- rs1_val==46339 and rs2_val==2<br>                                                                                                                                                       |[0x80002fa4]:rem t6, t5, t4<br> [0x80002fa8]:sw t6, 0x4(fp)<br>      |
| 365|[0x80006980]<br>0x0000B503<br> |- rs1_val==46339 and rs2_val==1431655764<br>                                                                                                                                              |[0x80002fbc]:rem t6, t5, t4<br> [0x80002fc0]:sw t6, 0x8(fp)<br>      |
| 366|[0x80006984]<br>0x0000B503<br> |- rs1_val==46339 and rs2_val==858993458<br>                                                                                                                                               |[0x80002fd4]:rem t6, t5, t4<br> [0x80002fd8]:sw t6, 0xc(fp)<br>      |
| 367|[0x80006988]<br>0x0000B503<br> |- rs1_val==46339 and rs2_val==1717986917<br>                                                                                                                                              |[0x80002fec]:rem t6, t5, t4<br> [0x80002ff0]:sw t6, 0x10(fp)<br>     |
| 368|[0x8000698c]<br>0x0000B503<br> |- rs1_val==46339 and rs2_val==0<br>                                                                                                                                                       |[0x80003000]:rem t6, t5, t4<br> [0x80003004]:sw t6, 0x14(fp)<br>     |
| 369|[0x80006990]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==46339<br>                                                                                                                                                   |[0x80003018]:rem t6, t5, t4<br> [0x8000301c]:sw t6, 0x18(fp)<br>     |
| 370|[0x80006994]<br>0x00000003<br> |- rs1_val==46339 and rs2_val==4<br>                                                                                                                                                       |[0x8000302c]:rem t6, t5, t4<br> [0x80003030]:sw t6, 0x1c(fp)<br>     |
| 371|[0x80006998]<br>0x0000B503<br> |- rs1_val==46339 and rs2_val==1431655766<br>                                                                                                                                              |[0x80003044]:rem t6, t5, t4<br> [0x80003048]:sw t6, 0x20(fp)<br>     |
| 372|[0x8000699c]<br>0x0000B503<br> |- rs1_val==46339 and rs2_val==-1431655765<br>                                                                                                                                             |[0x8000305c]:rem t6, t5, t4<br> [0x80003060]:sw t6, 0x24(fp)<br>     |
| 373|[0x800069a0]<br>0x00000001<br> |- rs1_val==46339 and rs2_val==6<br>                                                                                                                                                       |[0x80003070]:rem t6, t5, t4<br> [0x80003074]:sw t6, 0x28(fp)<br>     |
| 374|[0x800069a4]<br>0x0000B503<br> |- rs1_val==46339 and rs2_val==858993460<br>                                                                                                                                               |[0x80003088]:rem t6, t5, t4<br> [0x8000308c]:sw t6, 0x2c(fp)<br>     |
| 375|[0x800069a8]<br>0x0000B503<br> |- rs1_val==46339 and rs2_val==1717986919<br>                                                                                                                                              |[0x800030a0]:rem t6, t5, t4<br> [0x800030a4]:sw t6, 0x30(fp)<br>     |
| 376|[0x800069ac]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==-46339<br>                                                                                                                                                  |[0x800030b8]:rem t6, t5, t4<br> [0x800030bc]:sw t6, 0x34(fp)<br>     |
| 377|[0x800069b0]<br>0x0000B503<br> |- rs1_val==46339 and rs2_val==46341<br>                                                                                                                                                   |[0x800030d0]:rem t6, t5, t4<br> [0x800030d4]:sw t6, 0x38(fp)<br>     |
| 378|[0x800069b4]<br>0x00000001<br> |- rs1_val==4 and rs2_val==3<br>                                                                                                                                                           |[0x800030e0]:rem t6, t5, t4<br> [0x800030e4]:sw t6, 0x3c(fp)<br>     |
| 379|[0x800069b8]<br>0x00000004<br> |- rs1_val==4 and rs2_val==1431655765<br>                                                                                                                                                  |[0x800030f4]:rem t6, t5, t4<br> [0x800030f8]:sw t6, 0x40(fp)<br>     |
| 380|[0x800069bc]<br>0x00000004<br> |- rs1_val==4 and rs2_val==-1431655766<br>                                                                                                                                                 |[0x80003108]:rem t6, t5, t4<br> [0x8000310c]:sw t6, 0x44(fp)<br>     |
| 381|[0x800069c0]<br>0x00000004<br> |- rs1_val==4 and rs2_val==5<br>                                                                                                                                                           |[0x80003118]:rem t6, t5, t4<br> [0x8000311c]:sw t6, 0x48(fp)<br>     |
| 382|[0x800069c4]<br>0x00000004<br> |- rs1_val==4 and rs2_val==858993459<br>                                                                                                                                                   |[0x8000312c]:rem t6, t5, t4<br> [0x80003130]:sw t6, 0x4c(fp)<br>     |
| 383|[0x800069c8]<br>0x00000004<br> |- rs1_val==4 and rs2_val==1717986918<br>                                                                                                                                                  |[0x80003140]:rem t6, t5, t4<br> [0x80003144]:sw t6, 0x50(fp)<br>     |
| 384|[0x800069cc]<br>0x00000004<br> |- rs1_val==4 and rs2_val==-46340<br>                                                                                                                                                      |[0x80003154]:rem t6, t5, t4<br> [0x80003158]:sw t6, 0x54(fp)<br>     |
| 385|[0x800069d0]<br>0x00000004<br> |- rs1_val==4 and rs2_val==46340<br>                                                                                                                                                       |[0x80003168]:rem t6, t5, t4<br> [0x8000316c]:sw t6, 0x58(fp)<br>     |
| 386|[0x800069d4]<br>0x00000000<br> |- rs1_val==4 and rs2_val==2<br>                                                                                                                                                           |[0x80003178]:rem t6, t5, t4<br> [0x8000317c]:sw t6, 0x5c(fp)<br>     |
| 387|[0x800069d8]<br>0x00000004<br> |- rs1_val==4 and rs2_val==1431655764<br>                                                                                                                                                  |[0x8000318c]:rem t6, t5, t4<br> [0x80003190]:sw t6, 0x60(fp)<br>     |
| 388|[0x800069dc]<br>0x00000004<br> |- rs1_val==4 and rs2_val==858993458<br>                                                                                                                                                   |[0x800031a0]:rem t6, t5, t4<br> [0x800031a4]:sw t6, 0x64(fp)<br>     |
| 389|[0x800069e0]<br>0x00000004<br> |- rs1_val==4 and rs2_val==1717986917<br>                                                                                                                                                  |[0x800031b4]:rem t6, t5, t4<br> [0x800031b8]:sw t6, 0x68(fp)<br>     |
| 390|[0x800069e4]<br>0x00000004<br> |- rs1_val==4 and rs2_val==0<br>                                                                                                                                                           |[0x800031c4]:rem t6, t5, t4<br> [0x800031c8]:sw t6, 0x6c(fp)<br>     |
| 391|[0x800069e8]<br>0x00000004<br> |- rs1_val==4 and rs2_val==46339<br>                                                                                                                                                       |[0x800031d8]:rem t6, t5, t4<br> [0x800031dc]:sw t6, 0x70(fp)<br>     |
| 392|[0x800069ec]<br>0x00000000<br> |- rs1_val==4 and rs2_val==4<br>                                                                                                                                                           |[0x800031e8]:rem t6, t5, t4<br> [0x800031ec]:sw t6, 0x74(fp)<br>     |
| 393|[0x800069f0]<br>0x00000004<br> |- rs1_val==4 and rs2_val==1431655766<br>                                                                                                                                                  |[0x800031fc]:rem t6, t5, t4<br> [0x80003200]:sw t6, 0x78(fp)<br>     |
| 394|[0x800069f4]<br>0x00000004<br> |- rs1_val==4 and rs2_val==-1431655765<br>                                                                                                                                                 |[0x80003210]:rem t6, t5, t4<br> [0x80003214]:sw t6, 0x7c(fp)<br>     |
| 395|[0x800069f8]<br>0x00000004<br> |- rs1_val==4 and rs2_val==6<br>                                                                                                                                                           |[0x80003220]:rem t6, t5, t4<br> [0x80003224]:sw t6, 0x80(fp)<br>     |
| 396|[0x800069fc]<br>0x00000004<br> |- rs1_val==4 and rs2_val==858993460<br>                                                                                                                                                   |[0x80003234]:rem t6, t5, t4<br> [0x80003238]:sw t6, 0x84(fp)<br>     |
| 397|[0x80006a00]<br>0x00000004<br> |- rs1_val==4 and rs2_val==1717986919<br>                                                                                                                                                  |[0x80003248]:rem t6, t5, t4<br> [0x8000324c]:sw t6, 0x88(fp)<br>     |
| 398|[0x80006a04]<br>0x00000004<br> |- rs1_val==4 and rs2_val==-46339<br>                                                                                                                                                      |[0x8000325c]:rem t6, t5, t4<br> [0x80003260]:sw t6, 0x8c(fp)<br>     |
| 399|[0x80006a08]<br>0x00000002<br> |- rs1_val==1431655766 and rs2_val==3<br>                                                                                                                                                  |[0x80003270]:rem t6, t5, t4<br> [0x80003274]:sw t6, 0x90(fp)<br>     |
| 400|[0x80006a0c]<br>0x00000001<br> |- rs1_val==1431655766 and rs2_val==1431655765<br>                                                                                                                                         |[0x80003288]:rem t6, t5, t4<br> [0x8000328c]:sw t6, 0x94(fp)<br>     |
| 401|[0x80006a10]<br>0x00000000<br> |- rs1_val==1431655766 and rs2_val==-1431655766<br>                                                                                                                                        |[0x800032a0]:rem t6, t5, t4<br> [0x800032a4]:sw t6, 0x98(fp)<br>     |
| 402|[0x80006a14]<br>0x00000001<br> |- rs1_val==1431655766 and rs2_val==5<br>                                                                                                                                                  |[0x800032b4]:rem t6, t5, t4<br> [0x800032b8]:sw t6, 0x9c(fp)<br>     |
| 403|[0x80006a18]<br>0x22222223<br> |- rs1_val==1431655766 and rs2_val==858993459<br>                                                                                                                                          |[0x800032cc]:rem t6, t5, t4<br> [0x800032d0]:sw t6, 0xa0(fp)<br>     |
| 404|[0x80006a1c]<br>0x55555556<br> |- rs1_val==1431655766 and rs2_val==1717986918<br>                                                                                                                                         |[0x800032e4]:rem t6, t5, t4<br> [0x800032e8]:sw t6, 0xa4(fp)<br>     |
| 405|[0x80006a20]<br>0x00006C9E<br> |- rs1_val==1431655766 and rs2_val==-46340<br>                                                                                                                                             |[0x800032fc]:rem t6, t5, t4<br> [0x80003300]:sw t6, 0xa8(fp)<br>     |
| 406|[0x80006a24]<br>0x00006C9E<br> |- rs1_val==1431655766 and rs2_val==46340<br>                                                                                                                                              |[0x80003314]:rem t6, t5, t4<br> [0x80003318]:sw t6, 0xac(fp)<br>     |
| 407|[0x80006a28]<br>0x00000000<br> |- rs1_val==1431655766 and rs2_val==2<br>                                                                                                                                                  |[0x80003328]:rem t6, t5, t4<br> [0x8000332c]:sw t6, 0xb0(fp)<br>     |
| 408|[0x80006a2c]<br>0x00000002<br> |- rs1_val==1431655766 and rs2_val==1431655764<br>                                                                                                                                         |[0x80003340]:rem t6, t5, t4<br> [0x80003344]:sw t6, 0xb4(fp)<br>     |
| 409|[0x80006a30]<br>0x22222224<br> |- rs1_val==1431655766 and rs2_val==858993458<br>                                                                                                                                          |[0x80003358]:rem t6, t5, t4<br> [0x8000335c]:sw t6, 0xb8(fp)<br>     |
| 410|[0x80006a34]<br>0x55555556<br> |- rs1_val==1431655766 and rs2_val==1717986917<br>                                                                                                                                         |[0x80003370]:rem t6, t5, t4<br> [0x80003374]:sw t6, 0xbc(fp)<br>     |
| 411|[0x80006a38]<br>0x55555556<br> |- rs1_val==1431655766 and rs2_val==0<br>                                                                                                                                                  |[0x80003384]:rem t6, t5, t4<br> [0x80003388]:sw t6, 0xc0(fp)<br>     |
| 412|[0x80006a3c]<br>0x00003049<br> |- rs1_val==1431655766 and rs2_val==46339<br>                                                                                                                                              |[0x8000339c]:rem t6, t5, t4<br> [0x800033a0]:sw t6, 0xc4(fp)<br>     |
| 413|[0x80006a40]<br>0x00000002<br> |- rs1_val==1431655766 and rs2_val==4<br>                                                                                                                                                  |[0x800033b0]:rem t6, t5, t4<br> [0x800033b4]:sw t6, 0xc8(fp)<br>     |
| 414|[0x80006a44]<br>0x00000000<br> |- rs1_val==1431655766 and rs2_val==1431655766<br>                                                                                                                                         |[0x800033c8]:rem t6, t5, t4<br> [0x800033cc]:sw t6, 0xcc(fp)<br>     |
| 415|[0x80006a48]<br>0x00000001<br> |- rs1_val==1431655766 and rs2_val==-1431655765<br>                                                                                                                                        |[0x800033e0]:rem t6, t5, t4<br> [0x800033e4]:sw t6, 0xd0(fp)<br>     |
| 416|[0x80006a4c]<br>0x00000002<br> |- rs1_val==1431655766 and rs2_val==6<br>                                                                                                                                                  |[0x800033f4]:rem t6, t5, t4<br> [0x800033f8]:sw t6, 0xd4(fp)<br>     |
| 417|[0x80006a50]<br>0x22222222<br> |- rs1_val==1431655766 and rs2_val==858993460<br>                                                                                                                                          |[0x8000340c]:rem t6, t5, t4<br> [0x80003410]:sw t6, 0xd8(fp)<br>     |
| 418|[0x80006a54]<br>0x55555556<br> |- rs1_val==1431655766 and rs2_val==1717986919<br>                                                                                                                                         |[0x80003424]:rem t6, t5, t4<br> [0x80003428]:sw t6, 0xdc(fp)<br>     |
| 419|[0x80006a58]<br>0x00003049<br> |- rs1_val==1431655766 and rs2_val==-46339<br>                                                                                                                                             |[0x8000343c]:rem t6, t5, t4<br> [0x80003440]:sw t6, 0xe0(fp)<br>     |
| 420|[0x80006a5c]<br>0x0000A8F5<br> |- rs1_val==1431655766 and rs2_val==46341<br>                                                                                                                                              |[0x80003454]:rem t6, t5, t4<br> [0x80003458]:sw t6, 0xe4(fp)<br>     |
| 421|[0x80006a60]<br>0xFFFFFFFF<br> |- rs1_val==-1431655765 and rs2_val==3<br>                                                                                                                                                 |[0x80003468]:rem t6, t5, t4<br> [0x8000346c]:sw t6, 0xe8(fp)<br>     |
| 422|[0x80006a64]<br>0x00000000<br> |- rs1_val==-1431655765 and rs2_val==1431655765<br>                                                                                                                                        |[0x80003480]:rem t6, t5, t4<br> [0x80003484]:sw t6, 0xec(fp)<br>     |
| 423|[0x80006a68]<br>0xAAAAAAAB<br> |- rs1_val==-1431655765 and rs2_val==-1431655766<br>                                                                                                                                       |[0x80003498]:rem t6, t5, t4<br> [0x8000349c]:sw t6, 0xf0(fp)<br>     |
| 424|[0x80006a6c]<br>0x00000000<br> |- rs1_val==-1431655765 and rs2_val==5<br>                                                                                                                                                 |[0x800034ac]:rem t6, t5, t4<br> [0x800034b0]:sw t6, 0xf4(fp)<br>     |
| 425|[0x80006a70]<br>0xDDDDDDDE<br> |- rs1_val==-1431655765 and rs2_val==858993459<br>                                                                                                                                         |[0x800034c4]:rem t6, t5, t4<br> [0x800034c8]:sw t6, 0xf8(fp)<br>     |
| 426|[0x80006a74]<br>0xAAAAAAAB<br> |- rs1_val==-1431655765 and rs2_val==1717986918<br>                                                                                                                                        |[0x800034dc]:rem t6, t5, t4<br> [0x800034e0]:sw t6, 0xfc(fp)<br>     |
| 427|[0x80006a78]<br>0xFFFF9363<br> |- rs1_val==-1431655765 and rs2_val==-46340<br>                                                                                                                                            |[0x800034f4]:rem t6, t5, t4<br> [0x800034f8]:sw t6, 0x100(fp)<br>    |
| 428|[0x80006a7c]<br>0xFFFF9363<br> |- rs1_val==-1431655765 and rs2_val==46340<br>                                                                                                                                             |[0x8000350c]:rem t6, t5, t4<br> [0x80003510]:sw t6, 0x104(fp)<br>    |
| 429|[0x80006a80]<br>0xFFFFFFFF<br> |- rs1_val==-1431655765 and rs2_val==2<br>                                                                                                                                                 |[0x80003520]:rem t6, t5, t4<br> [0x80003524]:sw t6, 0x108(fp)<br>    |
| 430|[0x80006a84]<br>0xFFFFFFFF<br> |- rs1_val==-1431655765 and rs2_val==1431655764<br>                                                                                                                                        |[0x80003538]:rem t6, t5, t4<br> [0x8000353c]:sw t6, 0x10c(fp)<br>    |
| 431|[0x80006a88]<br>0xDDDDDDDD<br> |- rs1_val==-1431655765 and rs2_val==858993458<br>                                                                                                                                         |[0x80003550]:rem t6, t5, t4<br> [0x80003554]:sw t6, 0x110(fp)<br>    |
| 432|[0x80006a8c]<br>0xAAAAAAAB<br> |- rs1_val==-1431655765 and rs2_val==1717986917<br>                                                                                                                                        |[0x80003568]:rem t6, t5, t4<br> [0x8000356c]:sw t6, 0x114(fp)<br>    |
| 433|[0x80006a90]<br>0xAAAAAAAB<br> |- rs1_val==-1431655765 and rs2_val==0<br>                                                                                                                                                 |[0x8000357c]:rem t6, t5, t4<br> [0x80003580]:sw t6, 0x118(fp)<br>    |
| 434|[0x80006a94]<br>0xFFFFCFB8<br> |- rs1_val==-1431655765 and rs2_val==46339<br>                                                                                                                                             |[0x80003594]:rem t6, t5, t4<br> [0x80003598]:sw t6, 0x11c(fp)<br>    |
| 435|[0x80006a98]<br>0x00000002<br> |- rs1_val==46341 and rs2_val==-46339<br>                                                                                                                                                  |[0x800035ac]:rem t6, t5, t4<br> [0x800035b0]:sw t6, 0x120(fp)<br>    |
