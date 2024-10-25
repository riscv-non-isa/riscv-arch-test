
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature (completely or partially)
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update the signature completely
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000148', '0x800032ec')]      |
| SIG_REGION                | [('0x80006110', '0x80006a3c', '587 words')]      |
| COV_LABELS                | mulh      |
| TEST_NAME                 | /home/user/Work/New_Repo/riscv-arch-test-PR/riscof-plugins/rv32/riscof_work/src/mulh-01.S/ref.S    |
| Total Number of coverpoints| 519     |
| Total Coverpoints Hit     | 519      |
| Total Signature Updates   | 585      |
| STAT1                     | 432      |
| STAT2                     | 153      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000440]:mulh a2, a0, a1
      [0x80000444]:sw a2, 0x4(ra)
 -- Signature Addresses:
      Address: 0x80006194 Data: 0xFFFFFFBF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000454]:mulh a2, a0, a1
      [0x80000458]:sw a2, 0x8(ra)
 -- Signature Addresses:
      Address: 0x80006198 Data: 0xFFEAAAAA
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000464]:mulh a2, a0, a1
      [0x80000468]:sw a2, 0xc(ra)
 -- Signature Addresses:
      Address: 0x8000619c Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000478]:mulh a2, a0, a1
      [0x8000047c]:sw a2, 0x10(ra)
 -- Signature Addresses:
      Address: 0x800061a0 Data: 0xFFFFFFEF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000048c]:mulh a2, a0, a1
      [0x80000490]:sw a2, 0x14(ra)
 -- Signature Addresses:
      Address: 0x800061a4 Data: 0xFFFFFE95
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000049c]:mulh a2, a0, a1
      [0x800004a0]:sw a2, 0x18(ra)
 -- Signature Addresses:
      Address: 0x800061a8 Data: 0x00002000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004ac]:mulh a2, a0, a1
      [0x800004b0]:sw a2, 0x1c(ra)
 -- Signature Addresses:
      Address: 0x800061ac Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004bc]:mulh a2, a0, a1
      [0x800004c0]:sw a2, 0x20(ra)
 -- Signature Addresses:
      Address: 0x800061b0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004cc]:mulh a2, a0, a1
      [0x800004d0]:sw a2, 0x24(ra)
 -- Signature Addresses:
      Address: 0x800061b4 Data: 0xFFFFFFF7
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004e0]:mulh a2, a0, a1
      [0x800004e4]:sw a2, 0x28(ra)
 -- Signature Addresses:
      Address: 0x800061b8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000500]:mulh a2, a0, a1
      [0x80000504]:sw a2, 0x30(ra)
 -- Signature Addresses:
      Address: 0x800061c0 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000510]:mulh a2, a0, a1
      [0x80000514]:sw a2, 0x34(ra)
 -- Signature Addresses:
      Address: 0x800061c4 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000520]:mulh a2, a0, a1
      [0x80000524]:sw a2, 0x38(ra)
 -- Signature Addresses:
      Address: 0x800061c8 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000530]:mulh a2, a0, a1
      [0x80000534]:sw a2, 0x3c(ra)
 -- Signature Addresses:
      Address: 0x800061cc Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000544]:mulh a2, a0, a1
      [0x80000548]:sw a2, 0x40(ra)
 -- Signature Addresses:
      Address: 0x800061d0 Data: 0x0000002B
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000558]:mulh a2, a0, a1
      [0x8000055c]:sw a2, 0x44(ra)
 -- Signature Addresses:
      Address: 0x800061d4 Data: 0xFFFFFFAA
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000568]:mulh a2, a0, a1
      [0x8000056c]:sw a2, 0x48(ra)
 -- Signature Addresses:
      Address: 0x800061d8 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000578]:mulh a2, a0, a1
      [0x8000057c]:sw a2, 0x4c(ra)
 -- Signature Addresses:
      Address: 0x800061dc Data: 0xFFFFFFFD
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000058c]:mulh a2, a0, a1
      [0x80000590]:sw a2, 0x50(ra)
 -- Signature Addresses:
      Address: 0x800061e0 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005a4]:mulh a2, a0, a1
      [0x800005a8]:sw a2, 0x54(ra)
 -- Signature Addresses:
      Address: 0x800061e4 Data: 0xFFFFF999
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005bc]:mulh a2, a0, a1
      [0x800005c0]:sw a2, 0x58(ra)
 -- Signature Addresses:
      Address: 0x800061e8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005d0]:mulh a2, a0, a1
      [0x800005d4]:sw a2, 0x5c(ra)
 -- Signature Addresses:
      Address: 0x800061ec Data: 0xFFFFFFFD
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005e4]:mulh a2, a0, a1
      [0x800005e8]:sw a2, 0x60(ra)
 -- Signature Addresses:
      Address: 0x800061f0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005fc]:mulh a2, a0, a1
      [0x80000600]:sw a2, 0x64(ra)
 -- Signature Addresses:
      Address: 0x800061f4 Data: 0x00000200
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000610]:mulh a2, a0, a1
      [0x80000614]:sw a2, 0x68(ra)
 -- Signature Addresses:
      Address: 0x800061f8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000628]:mulh a2, a0, a1
      [0x8000062c]:sw a2, 0x6c(ra)
 -- Signature Addresses:
      Address: 0x800061fc Data: 0x00000400
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000063c]:mulh a2, a0, a1
      [0x80000640]:sw a2, 0x70(ra)
 -- Signature Addresses:
      Address: 0x80006200 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000650]:mulh a2, a0, a1
      [0x80000654]:sw a2, 0x74(ra)
 -- Signature Addresses:
      Address: 0x80006204 Data: 0xFFFFFFFB
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000668]:mulh a2, a0, a1
      [0x8000066c]:sw a2, 0x78(ra)
 -- Signature Addresses:
      Address: 0x80006208 Data: 0xFFFFFFD2
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000067c]:mulh a2, a0, a1
      [0x80000680]:sw a2, 0x7c(ra)
 -- Signature Addresses:
      Address: 0x8000620c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000694]:mulh a2, a0, a1
      [0x80000698]:sw a2, 0x80(ra)
 -- Signature Addresses:
      Address: 0x80006210 Data: 0x00555555
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006ac]:mulh a2, a0, a1
      [0x800006b0]:sw a2, 0x84(ra)
 -- Signature Addresses:
      Address: 0x80006214 Data: 0x00040000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val == rs2_val




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006c0]:mulh a2, a0, a1
      [0x800006c4]:sw a2, 0x88(ra)
 -- Signature Addresses:
      Address: 0x80006218 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val == 1
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006d8]:mulh a2, a0, a1
      [0x800006dc]:sw a2, 0x8c(ra)
 -- Signature Addresses:
      Address: 0x8000621c Data: 0x000005A8
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006f0]:mulh a2, a0, a1
      [0x800006f4]:sw a2, 0x90(ra)
 -- Signature Addresses:
      Address: 0x80006220 Data: 0xFFFFFF7F
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000704]:mulh a2, a0, a1
      [0x80000708]:sw a2, 0x94(ra)
 -- Signature Addresses:
      Address: 0x80006224 Data: 0xFFFFBFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000071c]:mulh a2, a0, a1
      [0x80000720]:sw a2, 0x98(ra)
 -- Signature Addresses:
      Address: 0x80006228 Data: 0x00001000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000744]:mulh a2, a0, a1
      [0x80000748]:sw a2, 0xa0(ra)
 -- Signature Addresses:
      Address: 0x80006230 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000754]:mulh a2, a0, a1
      [0x80000758]:sw a2, 0xa4(ra)
 -- Signature Addresses:
      Address: 0x80006234 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000764]:mulh a2, a0, a1
      [0x80000768]:sw a2, 0xa8(ra)
 -- Signature Addresses:
      Address: 0x80006238 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000778]:mulh a2, a0, a1
      [0x8000077c]:sw a2, 0xac(ra)
 -- Signature Addresses:
      Address: 0x8000623c Data: 0x0000000C
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000078c]:mulh a2, a0, a1
      [0x80000790]:sw a2, 0xb0(ra)
 -- Signature Addresses:
      Address: 0x80006240 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000079c]:mulh a2, a0, a1
      [0x800007a0]:sw a2, 0xb4(ra)
 -- Signature Addresses:
      Address: 0x80006244 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007ac]:mulh a2, a0, a1
      [0x800007b0]:sw a2, 0xb8(ra)
 -- Signature Addresses:
      Address: 0x80006248 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007c0]:mulh a2, a0, a1
      [0x800007c4]:sw a2, 0xbc(ra)
 -- Signature Addresses:
      Address: 0x8000624c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007d0]:mulh a2, a0, a1
      [0x800007d4]:sw a2, 0xc0(ra)
 -- Signature Addresses:
      Address: 0x80006250 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007e0]:mulh a2, a0, a1
      [0x800007e4]:sw a2, 0xc4(ra)
 -- Signature Addresses:
      Address: 0x80006254 Data: 0x00040000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007f4]:mulh a2, a0, a1
      [0x800007f8]:sw a2, 0xc8(ra)
 -- Signature Addresses:
      Address: 0x80006258 Data: 0xFEAAAAAA
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000808]:mulh a2, a0, a1
      [0x8000080c]:sw a2, 0xcc(ra)
 -- Signature Addresses:
      Address: 0x8000625c Data: 0x000005A8
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000081c]:mulh a2, a0, a1
      [0x80000820]:sw a2, 0xd0(ra)
 -- Signature Addresses:
      Address: 0x80006260 Data: 0xFBFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000082c]:mulh a2, a0, a1
      [0x80000830]:sw a2, 0xd4(ra)
 -- Signature Addresses:
      Address: 0x80006264 Data: 0xFFFFFFFD
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000840]:mulh a2, a0, a1
      [0x80000844]:sw a2, 0xd8(ra)
 -- Signature Addresses:
      Address: 0x80006268 Data: 0xFFFFF7FF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000850]:mulh a2, a0, a1
      [0x80000854]:sw a2, 0xdc(ra)
 -- Signature Addresses:
      Address: 0x8000626c Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000864]:mulh a2, a0, a1
      [0x80000868]:sw a2, 0xe0(ra)
 -- Signature Addresses:
      Address: 0x80006270 Data: 0xFFFFFFFD
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000874]:mulh a2, a0, a1
      [0x80000878]:sw a2, 0xe4(ra)
 -- Signature Addresses:
      Address: 0x80006274 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000884]:mulh a2, a0, a1
      [0x80000888]:sw a2, 0xe8(ra)
 -- Signature Addresses:
      Address: 0x80006278 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000898]:mulh a2, a0, a1
      [0x8000089c]:sw a2, 0xec(ra)
 -- Signature Addresses:
      Address: 0x8000627c Data: 0xFFFFFDFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0
      - rs2_val == (2**(xlen-1)-1)




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008b0]:mulh a2, a0, a1
      [0x800008b4]:sw a2, 0xf0(ra)
 -- Signature Addresses:
      Address: 0x80006280 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val == rs2_val




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008c8]:mulh a2, a0, a1
      [0x800008cc]:sw a2, 0xf4(ra)
 -- Signature Addresses:
      Address: 0x80006284 Data: 0x00001000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008dc]:mulh a2, a0, a1
      [0x800008e0]:sw a2, 0xf8(ra)
 -- Signature Addresses:
      Address: 0x80006288 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008f4]:mulh a2, a0, a1
      [0x800008f8]:sw a2, 0xfc(ra)
 -- Signature Addresses:
      Address: 0x8000628c Data: 0xFFFFFFE9
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000908]:mulh a2, a0, a1
      [0x8000090c]:sw a2, 0x100(ra)
 -- Signature Addresses:
      Address: 0x80006290 Data: 0xFFFFEFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000920]:mulh a2, a0, a1
      [0x80000924]:sw a2, 0x104(ra)
 -- Signature Addresses:
      Address: 0x80006294 Data: 0xFEFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000934]:mulh a2, a0, a1
      [0x80000938]:sw a2, 0x108(ra)
 -- Signature Addresses:
      Address: 0x80006298 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000948]:mulh a2, a0, a1
      [0x8000094c]:sw a2, 0x10c(ra)
 -- Signature Addresses:
      Address: 0x8000629c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000095c]:mulh a2, a0, a1
      [0x80000960]:sw a2, 0x110(ra)
 -- Signature Addresses:
      Address: 0x800062a0 Data: 0xFFFFFFFD
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000096c]:mulh a2, a0, a1
      [0x80000970]:sw a2, 0x114(ra)
 -- Signature Addresses:
      Address: 0x800062a4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000980]:mulh a2, a0, a1
      [0x80000984]:sw a2, 0x118(ra)
 -- Signature Addresses:
      Address: 0x800062a8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000994]:mulh a2, a0, a1
      [0x80000998]:sw a2, 0x11c(ra)
 -- Signature Addresses:
      Address: 0x800062ac Data: 0xFFFFFFFE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009a4]:mulh a2, a0, a1
      [0x800009a8]:sw a2, 0x120(ra)
 -- Signature Addresses:
      Address: 0x800062b0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009b8]:mulh a2, a0, a1
      [0x800009bc]:sw a2, 0x124(ra)
 -- Signature Addresses:
      Address: 0x800062b4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009cc]:mulh a2, a0, a1
      [0x800009d0]:sw a2, 0x128(ra)
 -- Signature Addresses:
      Address: 0x800062b8 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009e0]:mulh a2, a0, a1
      [0x800009e4]:sw a2, 0x12c(ra)
 -- Signature Addresses:
      Address: 0x800062bc Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009f4]:mulh a2, a0, a1
      [0x800009f8]:sw a2, 0x130(ra)
 -- Signature Addresses:
      Address: 0x800062c0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a04]:mulh a2, a0, a1
      [0x80000a08]:sw a2, 0x134(ra)
 -- Signature Addresses:
      Address: 0x800062c4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a18]:mulh a2, a0, a1
      [0x80000a1c]:sw a2, 0x138(ra)
 -- Signature Addresses:
      Address: 0x800062c8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a28]:mulh a2, a0, a1
      [0x80000a2c]:sw a2, 0x13c(ra)
 -- Signature Addresses:
      Address: 0x800062cc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a38]:mulh a2, a0, a1
      [0x80000a3c]:sw a2, 0x140(ra)
 -- Signature Addresses:
      Address: 0x800062d0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a4c]:mulh a2, a0, a1
      [0x80000a50]:sw a2, 0x144(ra)
 -- Signature Addresses:
      Address: 0x800062d4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a60]:mulh a2, a0, a1
      [0x80000a64]:sw a2, 0x148(ra)
 -- Signature Addresses:
      Address: 0x800062d8 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a74]:mulh a2, a0, a1
      [0x80000a78]:sw a2, 0x14c(ra)
 -- Signature Addresses:
      Address: 0x800062dc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a88]:mulh a2, a0, a1
      [0x80000a8c]:sw a2, 0x150(ra)
 -- Signature Addresses:
      Address: 0x800062e0 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a9c]:mulh a2, a0, a1
      [0x80000aa0]:sw a2, 0x154(ra)
 -- Signature Addresses:
      Address: 0x800062e4 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000aac]:mulh a2, a0, a1
      [0x80000ab0]:sw a2, 0x158(ra)
 -- Signature Addresses:
      Address: 0x800062e8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ac0]:mulh a2, a0, a1
      [0x80000ac4]:sw a2, 0x15c(ra)
 -- Signature Addresses:
      Address: 0x800062ec Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ad4]:mulh a2, a0, a1
      [0x80000ad8]:sw a2, 0x160(ra)
 -- Signature Addresses:
      Address: 0x800062f0 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ae8]:mulh a2, a0, a1
      [0x80000aec]:sw a2, 0x164(ra)
 -- Signature Addresses:
      Address: 0x800062f4 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000afc]:mulh a2, a0, a1
      [0x80000b00]:sw a2, 0x168(ra)
 -- Signature Addresses:
      Address: 0x800062f8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b10]:mulh a2, a0, a1
      [0x80000b14]:sw a2, 0x16c(ra)
 -- Signature Addresses:
      Address: 0x800062fc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b28]:mulh a2, a0, a1
      [0x80000b2c]:sw a2, 0x170(ra)
 -- Signature Addresses:
      Address: 0x80006300 Data: 0x1C71C71C
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b40]:mulh a2, a0, a1
      [0x80000b44]:sw a2, 0x174(ra)
 -- Signature Addresses:
      Address: 0x80006304 Data: 0xE38E38E3
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b54]:mulh a2, a0, a1
      [0x80000b58]:sw a2, 0x178(ra)
 -- Signature Addresses:
      Address: 0x80006308 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b6c]:mulh a2, a0, a1
      [0x80000b70]:sw a2, 0x17c(ra)
 -- Signature Addresses:
      Address: 0x8000630c Data: 0x11111110
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b84]:mulh a2, a0, a1
      [0x80000b88]:sw a2, 0x180(ra)
 -- Signature Addresses:
      Address: 0x80006310 Data: 0x22222221
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b9c]:mulh a2, a0, a1
      [0x80000ba0]:sw a2, 0x184(ra)
 -- Signature Addresses:
      Address: 0x80006314 Data: 0xFFFFC3A9
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bb4]:mulh a2, a0, a1
      [0x80000bb8]:sw a2, 0x188(ra)
 -- Signature Addresses:
      Address: 0x80006318 Data: 0x00003C56
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bc8]:mulh a2, a0, a1
      [0x80000bcc]:sw a2, 0x18c(ra)
 -- Signature Addresses:
      Address: 0x8000631c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000be0]:mulh a2, a0, a1
      [0x80000be4]:sw a2, 0x190(ra)
 -- Signature Addresses:
      Address: 0x80006320 Data: 0x1C71C71B
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bf4]:mulh a2, a0, a1
      [0x80000bf8]:sw a2, 0x194(ra)
 -- Signature Addresses:
      Address: 0x80006324 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c08]:mulh a2, a0, a1
      [0x80000c0c]:sw a2, 0x198(ra)
 -- Signature Addresses:
      Address: 0x80006328 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c20]:mulh a2, a0, a1
      [0x80000c24]:sw a2, 0x19c(ra)
 -- Signature Addresses:
      Address: 0x8000632c Data: 0x11111110
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c38]:mulh a2, a0, a1
      [0x80000c3c]:sw a2, 0x1a0(ra)
 -- Signature Addresses:
      Address: 0x80006330 Data: 0x22222221
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c50]:mulh a2, a0, a1
      [0x80000c54]:sw a2, 0x1a4(ra)
 -- Signature Addresses:
      Address: 0x80006334 Data: 0x00003C56
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c68]:mulh a2, a0, a1
      [0x80000c6c]:sw a2, 0x1a8(ra)
 -- Signature Addresses:
      Address: 0x80006338 Data: 0x1C71C71C
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c80]:mulh a2, a0, a1
      [0x80000c84]:sw a2, 0x1ac(ra)
 -- Signature Addresses:
      Address: 0x8000633c Data: 0xE38E38E3
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c94]:mulh a2, a0, a1
      [0x80000c98]:sw a2, 0x1b0(ra)
 -- Signature Addresses:
      Address: 0x80006340 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cac]:mulh a2, a0, a1
      [0x80000cb0]:sw a2, 0x1b4(ra)
 -- Signature Addresses:
      Address: 0x80006344 Data: 0x11111111
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cc4]:mulh a2, a0, a1
      [0x80000cc8]:sw a2, 0x1b8(ra)
 -- Signature Addresses:
      Address: 0x80006348 Data: 0x22222222
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cdc]:mulh a2, a0, a1
      [0x80000ce0]:sw a2, 0x1bc(ra)
 -- Signature Addresses:
      Address: 0x8000634c Data: 0xFFFFC3A9
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cf4]:mulh a2, a0, a1
      [0x80000cf8]:sw a2, 0x1c0(ra)
 -- Signature Addresses:
      Address: 0x80006350 Data: 0x00003C56
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d08]:mulh a2, a0, a1
      [0x80000d0c]:sw a2, 0x1c4(ra)
 -- Signature Addresses:
      Address: 0x80006354 Data: 0xFFFFFFFE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d20]:mulh a2, a0, a1
      [0x80000d24]:sw a2, 0x1c8(ra)
 -- Signature Addresses:
      Address: 0x80006358 Data: 0xE38E38E3
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d38]:mulh a2, a0, a1
      [0x80000d3c]:sw a2, 0x1cc(ra)
 -- Signature Addresses:
      Address: 0x8000635c Data: 0x1C71C71C
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val == rs2_val




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d4c]:mulh a2, a0, a1
      [0x80000d50]:sw a2, 0x1d0(ra)
 -- Signature Addresses:
      Address: 0x80006360 Data: 0xFFFFFFFE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d64]:mulh a2, a0, a1
      [0x80000d68]:sw a2, 0x1d4(ra)
 -- Signature Addresses:
      Address: 0x80006364 Data: 0xEEEEEEEE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d7c]:mulh a2, a0, a1
      [0x80000d80]:sw a2, 0x1d8(ra)
 -- Signature Addresses:
      Address: 0x80006368 Data: 0xDDDDDDDD
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d94]:mulh a2, a0, a1
      [0x80000d98]:sw a2, 0x1dc(ra)
 -- Signature Addresses:
      Address: 0x8000636c Data: 0x00003C56
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000dac]:mulh a2, a0, a1
      [0x80000db0]:sw a2, 0x1e0(ra)
 -- Signature Addresses:
      Address: 0x80006370 Data: 0xFFFFC3A9
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000dc0]:mulh a2, a0, a1
      [0x80000dc4]:sw a2, 0x1e4(ra)
 -- Signature Addresses:
      Address: 0x80006374 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000dd8]:mulh a2, a0, a1
      [0x80000ddc]:sw a2, 0x1e8(ra)
 -- Signature Addresses:
      Address: 0x80006378 Data: 0xE38E38E3
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000dec]:mulh a2, a0, a1
      [0x80000df0]:sw a2, 0x1ec(ra)
 -- Signature Addresses:
      Address: 0x8000637c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e00]:mulh a2, a0, a1
      [0x80000e04]:sw a2, 0x1f0(ra)
 -- Signature Addresses:
      Address: 0x80006380 Data: 0xFFFFFFFE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e18]:mulh a2, a0, a1
      [0x80000e1c]:sw a2, 0x1f4(ra)
 -- Signature Addresses:
      Address: 0x80006384 Data: 0xEEEEEEEF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e30]:mulh a2, a0, a1
      [0x80000e34]:sw a2, 0x1f8(ra)
 -- Signature Addresses:
      Address: 0x80006388 Data: 0xDDDDDDDE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e48]:mulh a2, a0, a1
      [0x80000e4c]:sw a2, 0x1fc(ra)
 -- Signature Addresses:
      Address: 0x8000638c Data: 0xFFFFC3A9
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e60]:mulh a2, a0, a1
      [0x80000e64]:sw a2, 0x200(ra)
 -- Signature Addresses:
      Address: 0x80006390 Data: 0xE38E38E3
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e78]:mulh a2, a0, a1
      [0x80000e7c]:sw a2, 0x204(ra)
 -- Signature Addresses:
      Address: 0x80006394 Data: 0x1C71C71C
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e8c]:mulh a2, a0, a1
      [0x80000e90]:sw a2, 0x208(ra)
 -- Signature Addresses:
      Address: 0x80006398 Data: 0xFFFFFFFD
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ea4]:mulh a2, a0, a1
      [0x80000ea8]:sw a2, 0x20c(ra)
 -- Signature Addresses:
      Address: 0x8000639c Data: 0xEEEEEEEE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ebc]:mulh a2, a0, a1
      [0x80000ec0]:sw a2, 0x210(ra)
 -- Signature Addresses:
      Address: 0x800063a0 Data: 0xDDDDDDDD
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ed4]:mulh a2, a0, a1
      [0x80000ed8]:sw a2, 0x214(ra)
 -- Signature Addresses:
      Address: 0x800063a4 Data: 0x00003C56
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000eec]:mulh a2, a0, a1
      [0x80000ef0]:sw a2, 0x218(ra)
 -- Signature Addresses:
      Address: 0x800063a8 Data: 0xFFFFC3A8
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000efc]:mulh a2, a0, a1
      [0x80000f00]:sw a2, 0x21c(ra)
 -- Signature Addresses:
      Address: 0x800063ac Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f10]:mulh a2, a0, a1
      [0x80000f14]:sw a2, 0x220(ra)
 -- Signature Addresses:
      Address: 0x800063b0 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f24]:mulh a2, a0, a1
      [0x80000f28]:sw a2, 0x224(ra)
 -- Signature Addresses:
      Address: 0x800063b4 Data: 0xFFFFFFFE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f34]:mulh a2, a0, a1
      [0x80000f38]:sw a2, 0x228(ra)
 -- Signature Addresses:
      Address: 0x800063b8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f48]:mulh a2, a0, a1
      [0x80000f4c]:sw a2, 0x22c(ra)
 -- Signature Addresses:
      Address: 0x800063bc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f5c]:mulh a2, a0, a1
      [0x80000f60]:sw a2, 0x230(ra)
 -- Signature Addresses:
      Address: 0x800063c0 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f70]:mulh a2, a0, a1
      [0x80000f74]:sw a2, 0x234(ra)
 -- Signature Addresses:
      Address: 0x800063c4 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f84]:mulh a2, a0, a1
      [0x80000f88]:sw a2, 0x238(ra)
 -- Signature Addresses:
      Address: 0x800063c8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f94]:mulh a2, a0, a1
      [0x80000f98]:sw a2, 0x23c(ra)
 -- Signature Addresses:
      Address: 0x800063cc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fa8]:mulh a2, a0, a1
      [0x80000fac]:sw a2, 0x240(ra)
 -- Signature Addresses:
      Address: 0x800063d0 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fb8]:mulh a2, a0, a1
      [0x80000fbc]:sw a2, 0x244(ra)
 -- Signature Addresses:
      Address: 0x800063d4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fc8]:mulh a2, a0, a1
      [0x80000fcc]:sw a2, 0x248(ra)
 -- Signature Addresses:
      Address: 0x800063d8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fdc]:mulh a2, a0, a1
      [0x80000fe0]:sw a2, 0x24c(ra)
 -- Signature Addresses:
      Address: 0x800063dc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ff0]:mulh a2, a0, a1
      [0x80000ff4]:sw a2, 0x250(ra)
 -- Signature Addresses:
      Address: 0x800063e0 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001004]:mulh a2, a0, a1
      [0x80001008]:sw a2, 0x254(ra)
 -- Signature Addresses:
      Address: 0x800063e4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800026b4]:mulh a2, a0, a1
      [0x800026b8]:sw a2, 0x674(ra)
 -- Signature Addresses:
      Address: 0x80006804 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 0
      - rs1_val == rs2_val
      - rs2_val == 0
      - rs1_val==0 and rs2_val==0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80002a3c]:mulh a2, a0, a1
      [0x80002a40]:sw a2, 0x728(ra)
 -- Signature Addresses:
      Address: 0x800068b8 Data: 0x0A3D70A3
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val
      - rs1_val > 0 and rs2_val > 0
      - rs1_val==858993458 and rs2_val==858993458




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800032b0]:mulh a2, a0, a1
      [0x800032b4]:sw a2, 0x98(ra)
 -- Signature Addresses:
      Address: 0x80006a28 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800032c4]:mulh a2, a0, a1
      [0x800032c8]:sw a2, 0x9c(ra)
 -- Signature Addresses:
      Address: 0x80006a2c Data: 0xFFFFFFFD
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0
      - rs2_val == (2**(xlen-1)-1)




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800032d4]:mulh a2, a0, a1
      [0x800032d8]:sw a2, 0xa0(ra)
 -- Signature Addresses:
      Address: 0x80006a30 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800032e4]:mulh a2, a0, a1
      [0x800032e8]:sw a2, 0xa4(ra)
 -- Signature Addresses:
      Address: 0x80006a34 Data: 0x00000400
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulh
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0






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

|s.no|           signature           |                                                                      coverpoints                                                                      |                                 code                                 |
|---:|-------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80006114]<br>0x000005A8<br> |- mnemonic : mulh<br> - rs1 : x15<br> - rs2 : x21<br> - rd : x15<br> - rs1 == rd != rs2<br> - rs1_val != rs2_val<br> - rs1_val > 0 and rs2_val > 0<br> |[0x8000018c]:mulh a5, a5, s5<br> [0x80000190]:sw a5, 0x0(tp)<br>      |
|   2|[0x80006118]<br>0x0A3D70A3<br> |- rs1 : x1<br> - rs2 : x1<br> - rd : x7<br> - rs1 == rs2 != rd<br> - rs1_val == rs2_val<br> - rs1_val==858993458 and rs2_val==858993458<br>            |[0x800001a4]:mulh t2, ra, ra<br> [0x800001a8]:sw t2, 0x4(tp)<br>      |
|   3|[0x8000611c]<br>0x00000000<br> |- rs1 : x7<br> - rs2 : x6<br> - rd : x6<br> - rs2 == rd != rs1<br> - rs2_val == 0<br>                                                                  |[0x800001bc]:mulh t1, t2, t1<br> [0x800001c0]:sw t1, 0x8(tp)<br>      |
|   4|[0x80006120]<br>0xFFFFFFFF<br> |- rs1 : x27<br> - rs2 : x16<br> - rd : x5<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val < 0 and rs2_val > 0<br>                          |[0x800001d0]:mulh t0, s11, a6<br> [0x800001d4]:sw t0, 0xc(tp)<br>     |
|   5|[0x80006124]<br>0x00000000<br> |- rs1 : x26<br> - rs2 : x26<br> - rd : x26<br> - rs1 == rs2 == rd<br> - rs1_val == 0<br> - rs1_val==0 and rs2_val==0<br>                               |[0x800001e0]:mulh s10, s10, s10<br> [0x800001e4]:sw s10, 0x10(tp)<br> |
|   6|[0x80006128]<br>0x00005A81<br> |- rs1 : x24<br> - rs2 : x7<br> - rd : x10<br> - rs1_val < 0 and rs2_val < 0<br> - rs2_val == (-2**(xlen-1))<br>                                        |[0x800001f4]:mulh a0, s8, t2<br> [0x800001f8]:sw a0, 0x14(tp)<br>     |
|   7|[0x8000612c]<br>0x00000000<br> |- rs1 : x30<br> - rs2 : x2<br> - rd : x8<br>                                                                                                           |[0x80000208]:mulh fp, t5, sp<br> [0x8000020c]:sw fp, 0x18(tp)<br>     |
|   8|[0x80006130]<br>0x00000000<br> |- rs1 : x0<br> - rs2 : x11<br> - rd : x19<br> - rs2_val == (2**(xlen-1)-1)<br>                                                                         |[0x8000021c]:mulh s3, zero, a1<br> [0x80000220]:sw s3, 0x1c(tp)<br>   |
|   9|[0x80006134]<br>0x00000000<br> |- rs1 : x21<br> - rs2 : x17<br> - rd : x24<br> - rs2_val == 1<br>                                                                                      |[0x8000022c]:mulh s8, s5, a7<br> [0x80000230]:sw s8, 0x20(tp)<br>     |
|  10|[0x80006138]<br>0x00000002<br> |- rs1 : x23<br> - rs2 : x9<br> - rd : x29<br> - rs1_val == (-2**(xlen-1))<br>                                                                          |[0x8000023c]:mulh t4, s7, s1<br> [0x80000240]:sw t4, 0x24(tp)<br>     |
|  11|[0x8000613c]<br>0x00000000<br> |- rs1 : x22<br> - rs2 : x3<br> - rd : x27<br>                                                                                                          |[0x8000024c]:mulh s11, s6, gp<br> [0x80000250]:sw s11, 0x28(tp)<br>   |
|  12|[0x80006140]<br>0x00000002<br> |- rs1 : x2<br> - rs2 : x22<br> - rd : x28<br> - rs1_val == (2**(xlen-1)-1)<br>                                                                         |[0x80000260]:mulh t3, sp, s6<br> [0x80000264]:sw t3, 0x2c(tp)<br>     |
|  13|[0x80006144]<br>0x00000000<br> |- rs1 : x28<br> - rs2 : x29<br> - rd : x23<br> - rs1_val == 1<br>                                                                                      |[0x80000274]:mulh s7, t3, t4<br> [0x80000278]:sw s7, 0x30(tp)<br>     |
|  14|[0x80006148]<br>0x00000000<br> |- rs1 : x13<br> - rs2 : x19<br> - rd : x20<br> - rs1_val==1717986919 and rs2_val==2<br>                                                                |[0x80000288]:mulh s4, a3, s3<br> [0x8000028c]:sw s4, 0x34(tp)<br>     |
|  15|[0x8000614c]<br>0x00000000<br> |- rs1 : x5<br> - rs2 : x12<br> - rd : x22<br> - rs1_val==0 and rs2_val==4<br>                                                                          |[0x80000298]:mulh s6, t0, a2<br> [0x8000029c]:sw s6, 0x38(tp)<br>     |
|  16|[0x80006150]<br>0x00000000<br> |- rs1 : x10<br> - rs2 : x18<br> - rd : x25<br>                                                                                                         |[0x800002a8]:mulh s9, a0, s2<br> [0x800002ac]:sw s9, 0x3c(tp)<br>     |
|  17|[0x80006154]<br>0xFFFFFFFF<br> |- rs1 : x25<br> - rs2 : x15<br> - rd : x9<br>                                                                                                          |[0x800002e8]:mulh s1, s9, a5<br> [0x800002ec]:sw s1, 0x0(t2)<br>      |
|  18|[0x80006158]<br>0x00000000<br> |- rs1 : x16<br> - rs2 : x28<br> - rd : x2<br>                                                                                                          |[0x800002f8]:mulh sp, a6, t3<br> [0x800002fc]:sw sp, 0x4(t2)<br>      |
|  19|[0x8000615c]<br>0x00000000<br> |- rs1 : x9<br> - rs2 : x10<br> - rd : x1<br>                                                                                                           |[0x80000308]:mulh ra, s1, a0<br> [0x8000030c]:sw ra, 0x8(t2)<br>      |
|  20|[0x80006160]<br>0xFFFFFFDF<br> |- rs1 : x20<br> - rs2 : x5<br> - rd : x11<br>                                                                                                          |[0x8000031c]:mulh a1, s4, t0<br> [0x80000320]:sw a1, 0xc(t2)<br>      |
|  21|[0x80006164]<br>0x000000AA<br> |- rs1 : x6<br> - rs2 : x20<br> - rd : x13<br>                                                                                                          |[0x80000330]:mulh a3, t1, s4<br> [0x80000334]:sw a3, 0x10(t2)<br>     |
|  22|[0x80006168]<br>0xFFFFFEFF<br> |- rs1 : x19<br> - rs2 : x25<br> - rd : x12<br>                                                                                                         |[0x80000344]:mulh a2, s3, s9<br> [0x80000348]:sw a2, 0x14(t2)<br>     |
|  23|[0x8000616c]<br>0xFFFFFFFF<br> |- rs1 : x4<br> - rs2 : x27<br> - rd : x16<br>                                                                                                          |[0x8000035c]:mulh a6, tp, s11<br> [0x80000360]:sw a6, 0x18(t2)<br>    |
|  24|[0x80006170]<br>0xFFFFFFFF<br> |- rs1 : x17<br> - rs2 : x4<br> - rd : x30<br>                                                                                                          |[0x80000370]:mulh t5, a7, tp<br> [0x80000374]:sw t5, 0x1c(t2)<br>     |
|  25|[0x80006174]<br>0x00000000<br> |- rs1 : x31<br> - rs2 : x14<br> - rd : x0<br>                                                                                                          |[0x80000380]:mulh zero, t6, a4<br> [0x80000384]:sw zero, 0x20(t2)<br> |
|  26|[0x80006178]<br>0x00000000<br> |- rs1 : x14<br> - rs2 : x13<br> - rd : x31<br>                                                                                                         |[0x80000390]:mulh t6, a4, a3<br> [0x80000394]:sw t6, 0x24(t2)<br>     |
|  27|[0x8000617c]<br>0xFFFFFFFF<br> |- rs1 : x12<br> - rs2 : x8<br> - rd : x14<br>                                                                                                          |[0x800003a0]:mulh a4, a2, fp<br> [0x800003a4]:sw a4, 0x28(t2)<br>     |
|  28|[0x80006180]<br>0xFFFFFFFF<br> |- rs1 : x11<br> - rs2 : x23<br> - rd : x17<br>                                                                                                         |[0x800003b0]:mulh a7, a1, s7<br> [0x800003b4]:sw a7, 0x2c(t2)<br>     |
|  29|[0x80006184]<br>0x00000000<br> |- rs1 : x29<br> - rs2 : x0<br> - rd : x21<br>                                                                                                          |[0x800003c0]:mulh s5, t4, zero<br> [0x800003c4]:sw s5, 0x30(t2)<br>   |
|  30|[0x80006188]<br>0xFFFFF7FF<br> |- rs1 : x18<br> - rs2 : x30<br> - rd : x3<br>                                                                                                          |[0x800003d4]:mulh gp, s2, t5<br> [0x800003d8]:sw gp, 0x34(t2)<br>     |
|  31|[0x8000618c]<br>0x00000000<br> |- rs1 : x8<br> - rs2 : x24<br> - rd : x18<br>                                                                                                          |[0x800003e4]:mulh s2, fp, s8<br> [0x800003e8]:sw s2, 0x38(t2)<br>     |
|  32|[0x80006190]<br>0xFFFFFF7F<br> |- rs1 : x3<br> - rs2 : x31<br> - rd : x4<br>                                                                                                           |[0x8000042c]:mulh tp, gp, t6<br> [0x80000430]:sw tp, 0x0(ra)<br>      |
|  33|[0x800061bc]<br>0xFFFFFFFF<br> |- rs1_val > 0 and rs2_val < 0<br>                                                                                                                      |[0x800004f0]:mulh a2, a0, a1<br> [0x800004f4]:sw a2, 0x2c(ra)<br>     |
|  34|[0x8000622c]<br>0xFFFFFFFD<br> |- rs1_val==6 and rs2_val==-1431655766<br>                                                                                                              |[0x80000730]:mulh a2, a0, a1<br> [0x80000734]:sw a2, 0x9c(ra)<br>     |
|  35|[0x800063e8]<br>0x00000001<br> |- rs1_val==5 and rs2_val==1431655766<br>                                                                                                               |[0x80001018]:mulh a2, a0, a1<br> [0x8000101c]:sw a2, 0x258(ra)<br>    |
|  36|[0x800063ec]<br>0xFFFFFFFE<br> |- rs1_val==5 and rs2_val==-1431655765<br>                                                                                                              |[0x8000102c]:mulh a2, a0, a1<br> [0x80001030]:sw a2, 0x25c(ra)<br>    |
|  37|[0x800063f0]<br>0x00000000<br> |- rs1_val==5 and rs2_val==6<br>                                                                                                                        |[0x8000103c]:mulh a2, a0, a1<br> [0x80001040]:sw a2, 0x260(ra)<br>    |
|  38|[0x800063f4]<br>0x00000001<br> |- rs1_val==5 and rs2_val==858993460<br>                                                                                                                |[0x80001050]:mulh a2, a0, a1<br> [0x80001054]:sw a2, 0x264(ra)<br>    |
|  39|[0x800063f8]<br>0x00000002<br> |- rs1_val==5 and rs2_val==1717986919<br>                                                                                                               |[0x80001064]:mulh a2, a0, a1<br> [0x80001068]:sw a2, 0x268(ra)<br>    |
|  40|[0x800063fc]<br>0xFFFFFFFF<br> |- rs1_val==5 and rs2_val==-46339<br>                                                                                                                   |[0x80001078]:mulh a2, a0, a1<br> [0x8000107c]:sw a2, 0x26c(ra)<br>    |
|  41|[0x80006400]<br>0x00000000<br> |- rs1_val==5 and rs2_val==46341<br>                                                                                                                    |[0x8000108c]:mulh a2, a0, a1<br> [0x80001090]:sw a2, 0x270(ra)<br>    |
|  42|[0x80006404]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==3<br>                                                                                                                |[0x800010a0]:mulh a2, a0, a1<br> [0x800010a4]:sw a2, 0x274(ra)<br>    |
|  43|[0x80006408]<br>0x11111110<br> |- rs1_val==858993459 and rs2_val==1431655765<br>                                                                                                       |[0x800010b8]:mulh a2, a0, a1<br> [0x800010bc]:sw a2, 0x278(ra)<br>    |
|  44|[0x8000640c]<br>0xEEEEEEEE<br> |- rs1_val==858993459 and rs2_val==-1431655766<br>                                                                                                      |[0x800010d0]:mulh a2, a0, a1<br> [0x800010d4]:sw a2, 0x27c(ra)<br>    |
|  45|[0x80006410]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==5<br>                                                                                                                |[0x800010e4]:mulh a2, a0, a1<br> [0x800010e8]:sw a2, 0x280(ra)<br>    |
|  46|[0x80006414]<br>0x0A3D70A3<br> |- rs1_val==858993459 and rs2_val==858993459<br>                                                                                                        |[0x800010fc]:mulh a2, a0, a1<br> [0x80001100]:sw a2, 0x284(ra)<br>    |
|  47|[0x80006418]<br>0x147AE147<br> |- rs1_val==858993459 and rs2_val==1717986918<br>                                                                                                       |[0x80001114]:mulh a2, a0, a1<br> [0x80001118]:sw a2, 0x288(ra)<br>    |
|  48|[0x8000641c]<br>0xFFFFDBCC<br> |- rs1_val==858993459 and rs2_val==-46340<br>                                                                                                           |[0x8000112c]:mulh a2, a0, a1<br> [0x80001130]:sw a2, 0x28c(ra)<br>    |
|  49|[0x80006420]<br>0x00002433<br> |- rs1_val==858993459 and rs2_val==46340<br>                                                                                                            |[0x80001144]:mulh a2, a0, a1<br> [0x80001148]:sw a2, 0x290(ra)<br>    |
|  50|[0x80006424]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==2<br>                                                                                                                |[0x80001158]:mulh a2, a0, a1<br> [0x8000115c]:sw a2, 0x294(ra)<br>    |
|  51|[0x80006428]<br>0x11111110<br> |- rs1_val==858993459 and rs2_val==1431655764<br>                                                                                                       |[0x80001170]:mulh a2, a0, a1<br> [0x80001174]:sw a2, 0x298(ra)<br>    |
|  52|[0x8000642c]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==0<br>                                                                                                                |[0x80001184]:mulh a2, a0, a1<br> [0x80001188]:sw a2, 0x29c(ra)<br>    |
|  53|[0x80006430]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==4<br>                                                                                                                |[0x80001198]:mulh a2, a0, a1<br> [0x8000119c]:sw a2, 0x2a0(ra)<br>    |
|  54|[0x80006434]<br>0x0A3D70A3<br> |- rs1_val==858993459 and rs2_val==858993458<br>                                                                                                        |[0x800011b0]:mulh a2, a0, a1<br> [0x800011b4]:sw a2, 0x2a4(ra)<br>    |
|  55|[0x80006438]<br>0x147AE147<br> |- rs1_val==858993459 and rs2_val==1717986917<br>                                                                                                       |[0x800011c8]:mulh a2, a0, a1<br> [0x800011cc]:sw a2, 0x2a8(ra)<br>    |
|  56|[0x8000643c]<br>0x00002433<br> |- rs1_val==858993459 and rs2_val==46339<br>                                                                                                            |[0x800011e0]:mulh a2, a0, a1<br> [0x800011e4]:sw a2, 0x2ac(ra)<br>    |
|  57|[0x80006440]<br>0x11111111<br> |- rs1_val==858993459 and rs2_val==1431655766<br>                                                                                                       |[0x800011f8]:mulh a2, a0, a1<br> [0x800011fc]:sw a2, 0x2b0(ra)<br>    |
|  58|[0x80006444]<br>0xEEEEEEEF<br> |- rs1_val==858993459 and rs2_val==-1431655765<br>                                                                                                      |[0x80001210]:mulh a2, a0, a1<br> [0x80001214]:sw a2, 0x2b4(ra)<br>    |
|  59|[0x80006448]<br>0x00000001<br> |- rs1_val==858993459 and rs2_val==6<br>                                                                                                                |[0x80001224]:mulh a2, a0, a1<br> [0x80001228]:sw a2, 0x2b8(ra)<br>    |
|  60|[0x8000644c]<br>0x0A3D70A3<br> |- rs1_val==858993459 and rs2_val==858993460<br>                                                                                                        |[0x8000123c]:mulh a2, a0, a1<br> [0x80001240]:sw a2, 0x2bc(ra)<br>    |
|  61|[0x80006450]<br>0x147AE147<br> |- rs1_val==858993459 and rs2_val==1717986919<br>                                                                                                       |[0x80001254]:mulh a2, a0, a1<br> [0x80001258]:sw a2, 0x2c0(ra)<br>    |
|  62|[0x80006454]<br>0xFFFFDBCC<br> |- rs1_val==858993459 and rs2_val==-46339<br>                                                                                                           |[0x8000126c]:mulh a2, a0, a1<br> [0x80001270]:sw a2, 0x2c4(ra)<br>    |
|  63|[0x80006458]<br>0x00002434<br> |- rs1_val==858993459 and rs2_val==46341<br>                                                                                                            |[0x80001284]:mulh a2, a0, a1<br> [0x80001288]:sw a2, 0x2c8(ra)<br>    |
|  64|[0x8000645c]<br>0x00000001<br> |- rs1_val==1717986918 and rs2_val==3<br>                                                                                                               |[0x80001298]:mulh a2, a0, a1<br> [0x8000129c]:sw a2, 0x2cc(ra)<br>    |
|  65|[0x80006460]<br>0x22222221<br> |- rs1_val==1717986918 and rs2_val==1431655765<br>                                                                                                      |[0x800012b0]:mulh a2, a0, a1<br> [0x800012b4]:sw a2, 0x2d0(ra)<br>    |
|  66|[0x80006464]<br>0xDDDDDDDD<br> |- rs1_val==1717986918 and rs2_val==-1431655766<br>                                                                                                     |[0x800012c8]:mulh a2, a0, a1<br> [0x800012cc]:sw a2, 0x2d4(ra)<br>    |
|  67|[0x80006468]<br>0x00000001<br> |- rs1_val==1717986918 and rs2_val==5<br>                                                                                                               |[0x800012dc]:mulh a2, a0, a1<br> [0x800012e0]:sw a2, 0x2d8(ra)<br>    |
|  68|[0x8000646c]<br>0x147AE147<br> |- rs1_val==1717986918 and rs2_val==858993459<br>                                                                                                       |[0x800012f4]:mulh a2, a0, a1<br> [0x800012f8]:sw a2, 0x2dc(ra)<br>    |
|  69|[0x80006470]<br>0x28F5C28F<br> |- rs1_val==1717986918 and rs2_val==1717986918<br>                                                                                                      |[0x8000130c]:mulh a2, a0, a1<br> [0x80001310]:sw a2, 0x2e0(ra)<br>    |
|  70|[0x80006474]<br>0xFFFFB798<br> |- rs1_val==1717986918 and rs2_val==-46340<br>                                                                                                          |[0x80001324]:mulh a2, a0, a1<br> [0x80001328]:sw a2, 0x2e4(ra)<br>    |
|  71|[0x80006478]<br>0x00004867<br> |- rs1_val==1717986918 and rs2_val==46340<br>                                                                                                           |[0x8000133c]:mulh a2, a0, a1<br> [0x80001340]:sw a2, 0x2e8(ra)<br>    |
|  72|[0x8000647c]<br>0x00000000<br> |- rs1_val==1717986918 and rs2_val==2<br>                                                                                                               |[0x80001350]:mulh a2, a0, a1<br> [0x80001354]:sw a2, 0x2ec(ra)<br>    |
|  73|[0x80006480]<br>0x22222221<br> |- rs1_val==1717986918 and rs2_val==1431655764<br>                                                                                                      |[0x80001368]:mulh a2, a0, a1<br> [0x8000136c]:sw a2, 0x2f0(ra)<br>    |
|  74|[0x80006484]<br>0x00000000<br> |- rs1_val==1717986918 and rs2_val==0<br>                                                                                                               |[0x8000137c]:mulh a2, a0, a1<br> [0x80001380]:sw a2, 0x2f4(ra)<br>    |
|  75|[0x80006488]<br>0x00000001<br> |- rs1_val==1717986918 and rs2_val==4<br>                                                                                                               |[0x80001390]:mulh a2, a0, a1<br> [0x80001394]:sw a2, 0x2f8(ra)<br>    |
|  76|[0x8000648c]<br>0x147AE147<br> |- rs1_val==1717986918 and rs2_val==858993458<br>                                                                                                       |[0x800013a8]:mulh a2, a0, a1<br> [0x800013ac]:sw a2, 0x2fc(ra)<br>    |
|  77|[0x80006490]<br>0x28F5C28E<br> |- rs1_val==1717986918 and rs2_val==1717986917<br>                                                                                                      |[0x800013c0]:mulh a2, a0, a1<br> [0x800013c4]:sw a2, 0x300(ra)<br>    |
|  78|[0x80006494]<br>0x00004867<br> |- rs1_val==1717986918 and rs2_val==46339<br>                                                                                                           |[0x800013d8]:mulh a2, a0, a1<br> [0x800013dc]:sw a2, 0x304(ra)<br>    |
|  79|[0x80006498]<br>0x22222222<br> |- rs1_val==1717986918 and rs2_val==1431655766<br>                                                                                                      |[0x800013f0]:mulh a2, a0, a1<br> [0x800013f4]:sw a2, 0x308(ra)<br>    |
|  80|[0x8000649c]<br>0xDDDDDDDE<br> |- rs1_val==1717986918 and rs2_val==-1431655765<br>                                                                                                     |[0x80001408]:mulh a2, a0, a1<br> [0x8000140c]:sw a2, 0x30c(ra)<br>    |
|  81|[0x800064a0]<br>0x00000002<br> |- rs1_val==1717986918 and rs2_val==6<br>                                                                                                               |[0x8000141c]:mulh a2, a0, a1<br> [0x80001420]:sw a2, 0x310(ra)<br>    |
|  82|[0x800064a4]<br>0x147AE147<br> |- rs1_val==1717986918 and rs2_val==858993460<br>                                                                                                       |[0x80001434]:mulh a2, a0, a1<br> [0x80001438]:sw a2, 0x314(ra)<br>    |
|  83|[0x800064a8]<br>0x28F5C28F<br> |- rs1_val==1717986918 and rs2_val==1717986919<br>                                                                                                      |[0x8000144c]:mulh a2, a0, a1<br> [0x80001450]:sw a2, 0x318(ra)<br>    |
|  84|[0x800064ac]<br>0xFFFFB798<br> |- rs1_val==1717986918 and rs2_val==-46339<br>                                                                                                          |[0x80001464]:mulh a2, a0, a1<br> [0x80001468]:sw a2, 0x31c(ra)<br>    |
|  85|[0x800064b0]<br>0x00004868<br> |- rs1_val==1717986918 and rs2_val==46341<br>                                                                                                           |[0x8000147c]:mulh a2, a0, a1<br> [0x80001480]:sw a2, 0x320(ra)<br>    |
|  86|[0x800064b4]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==3<br>                                                                                                                   |[0x80001490]:mulh a2, a0, a1<br> [0x80001494]:sw a2, 0x324(ra)<br>    |
|  87|[0x800064b8]<br>0xFFFFC3A9<br> |- rs1_val==-46340 and rs2_val==1431655765<br>                                                                                                          |[0x800014a8]:mulh a2, a0, a1<br> [0x800014ac]:sw a2, 0x328(ra)<br>    |
|  88|[0x800064bc]<br>0x00003C56<br> |- rs1_val==-46340 and rs2_val==-1431655766<br>                                                                                                         |[0x800014c0]:mulh a2, a0, a1<br> [0x800014c4]:sw a2, 0x32c(ra)<br>    |
|  89|[0x800064c0]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==5<br>                                                                                                                   |[0x800014d4]:mulh a2, a0, a1<br> [0x800014d8]:sw a2, 0x330(ra)<br>    |
|  90|[0x800064c4]<br>0xFFFFDBCC<br> |- rs1_val==-46340 and rs2_val==858993459<br>                                                                                                           |[0x800014ec]:mulh a2, a0, a1<br> [0x800014f0]:sw a2, 0x334(ra)<br>    |
|  91|[0x800064c8]<br>0xFFFFB798<br> |- rs1_val==-46340 and rs2_val==1717986918<br>                                                                                                          |[0x80001504]:mulh a2, a0, a1<br> [0x80001508]:sw a2, 0x338(ra)<br>    |
|  92|[0x800064cc]<br>0x00000000<br> |- rs1_val==-46340 and rs2_val==-46340<br>                                                                                                              |[0x8000151c]:mulh a2, a0, a1<br> [0x80001520]:sw a2, 0x33c(ra)<br>    |
|  93|[0x800064d0]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==46340<br>                                                                                                               |[0x80001534]:mulh a2, a0, a1<br> [0x80001538]:sw a2, 0x340(ra)<br>    |
|  94|[0x800064d4]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==2<br>                                                                                                                   |[0x80001548]:mulh a2, a0, a1<br> [0x8000154c]:sw a2, 0x344(ra)<br>    |
|  95|[0x800064d8]<br>0xFFFFC3A9<br> |- rs1_val==-46340 and rs2_val==1431655764<br>                                                                                                          |[0x80001560]:mulh a2, a0, a1<br> [0x80001564]:sw a2, 0x348(ra)<br>    |
|  96|[0x800064dc]<br>0x00000000<br> |- rs1_val==-46340 and rs2_val==0<br>                                                                                                                   |[0x80001574]:mulh a2, a0, a1<br> [0x80001578]:sw a2, 0x34c(ra)<br>    |
|  97|[0x800064e0]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==4<br>                                                                                                                   |[0x80001588]:mulh a2, a0, a1<br> [0x8000158c]:sw a2, 0x350(ra)<br>    |
|  98|[0x800064e4]<br>0xFFFFDBCC<br> |- rs1_val==-46340 and rs2_val==858993458<br>                                                                                                           |[0x800015a0]:mulh a2, a0, a1<br> [0x800015a4]:sw a2, 0x354(ra)<br>    |
|  99|[0x800064e8]<br>0xFFFFB798<br> |- rs1_val==-46340 and rs2_val==1717986917<br>                                                                                                          |[0x800015b8]:mulh a2, a0, a1<br> [0x800015bc]:sw a2, 0x358(ra)<br>    |
| 100|[0x800064ec]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==46339<br>                                                                                                               |[0x800015d0]:mulh a2, a0, a1<br> [0x800015d4]:sw a2, 0x35c(ra)<br>    |
| 101|[0x800064f0]<br>0xFFFFC3A9<br> |- rs1_val==-46340 and rs2_val==1431655766<br>                                                                                                          |[0x800015e8]:mulh a2, a0, a1<br> [0x800015ec]:sw a2, 0x360(ra)<br>    |
| 102|[0x800064f4]<br>0x00003C56<br> |- rs1_val==-46340 and rs2_val==-1431655765<br>                                                                                                         |[0x80001600]:mulh a2, a0, a1<br> [0x80001604]:sw a2, 0x364(ra)<br>    |
| 103|[0x800064f8]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==6<br>                                                                                                                   |[0x80001614]:mulh a2, a0, a1<br> [0x80001618]:sw a2, 0x368(ra)<br>    |
| 104|[0x800064fc]<br>0xFFFFDBCB<br> |- rs1_val==-46340 and rs2_val==858993460<br>                                                                                                           |[0x8000162c]:mulh a2, a0, a1<br> [0x80001630]:sw a2, 0x36c(ra)<br>    |
| 105|[0x80006500]<br>0xFFFFB797<br> |- rs1_val==-46340 and rs2_val==1717986919<br>                                                                                                          |[0x80001644]:mulh a2, a0, a1<br> [0x80001648]:sw a2, 0x370(ra)<br>    |
| 106|[0x80006504]<br>0x00000000<br> |- rs1_val==-46340 and rs2_val==-46339<br>                                                                                                              |[0x8000165c]:mulh a2, a0, a1<br> [0x80001660]:sw a2, 0x374(ra)<br>    |
| 107|[0x80006508]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==46341<br>                                                                                                               |[0x80001674]:mulh a2, a0, a1<br> [0x80001678]:sw a2, 0x378(ra)<br>    |
| 108|[0x8000650c]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==3<br>                                                                                                                    |[0x80001688]:mulh a2, a0, a1<br> [0x8000168c]:sw a2, 0x37c(ra)<br>    |
| 109|[0x80006510]<br>0x00003C56<br> |- rs1_val==46340 and rs2_val==1431655765<br>                                                                                                           |[0x800016a0]:mulh a2, a0, a1<br> [0x800016a4]:sw a2, 0x380(ra)<br>    |
| 110|[0x80006514]<br>0xFFFFC3A9<br> |- rs1_val==46340 and rs2_val==-1431655766<br>                                                                                                          |[0x800016b8]:mulh a2, a0, a1<br> [0x800016bc]:sw a2, 0x384(ra)<br>    |
| 111|[0x80006518]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==5<br>                                                                                                                    |[0x800016cc]:mulh a2, a0, a1<br> [0x800016d0]:sw a2, 0x388(ra)<br>    |
| 112|[0x8000651c]<br>0x00002433<br> |- rs1_val==46340 and rs2_val==858993459<br>                                                                                                            |[0x800016e4]:mulh a2, a0, a1<br> [0x800016e8]:sw a2, 0x38c(ra)<br>    |
| 113|[0x80006520]<br>0x00004867<br> |- rs1_val==46340 and rs2_val==1717986918<br>                                                                                                           |[0x800016fc]:mulh a2, a0, a1<br> [0x80001700]:sw a2, 0x390(ra)<br>    |
| 114|[0x80006524]<br>0xFFFFFFFF<br> |- rs1_val==46340 and rs2_val==-46340<br>                                                                                                               |[0x80001714]:mulh a2, a0, a1<br> [0x80001718]:sw a2, 0x394(ra)<br>    |
| 115|[0x80006528]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==46340<br>                                                                                                                |[0x8000172c]:mulh a2, a0, a1<br> [0x80001730]:sw a2, 0x398(ra)<br>    |
| 116|[0x8000652c]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==2<br>                                                                                                                    |[0x80001740]:mulh a2, a0, a1<br> [0x80001744]:sw a2, 0x39c(ra)<br>    |
| 117|[0x80006530]<br>0x00003C56<br> |- rs1_val==46340 and rs2_val==1431655764<br>                                                                                                           |[0x80001758]:mulh a2, a0, a1<br> [0x8000175c]:sw a2, 0x3a0(ra)<br>    |
| 118|[0x80006534]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==0<br>                                                                                                                    |[0x8000176c]:mulh a2, a0, a1<br> [0x80001770]:sw a2, 0x3a4(ra)<br>    |
| 119|[0x80006538]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==4<br>                                                                                                                    |[0x80001780]:mulh a2, a0, a1<br> [0x80001784]:sw a2, 0x3a8(ra)<br>    |
| 120|[0x8000653c]<br>0x00002433<br> |- rs1_val==46340 and rs2_val==858993458<br>                                                                                                            |[0x80001798]:mulh a2, a0, a1<br> [0x8000179c]:sw a2, 0x3ac(ra)<br>    |
| 121|[0x80006540]<br>0x00004867<br> |- rs1_val==46340 and rs2_val==1717986917<br>                                                                                                           |[0x800017b0]:mulh a2, a0, a1<br> [0x800017b4]:sw a2, 0x3b0(ra)<br>    |
| 122|[0x80006544]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==46339<br>                                                                                                                |[0x800017c8]:mulh a2, a0, a1<br> [0x800017cc]:sw a2, 0x3b4(ra)<br>    |
| 123|[0x80006548]<br>0x00003C56<br> |- rs1_val==46340 and rs2_val==1431655766<br>                                                                                                           |[0x800017e0]:mulh a2, a0, a1<br> [0x800017e4]:sw a2, 0x3b8(ra)<br>    |
| 124|[0x8000654c]<br>0xFFFFC3A9<br> |- rs1_val==46340 and rs2_val==-1431655765<br>                                                                                                          |[0x800017f8]:mulh a2, a0, a1<br> [0x800017fc]:sw a2, 0x3bc(ra)<br>    |
| 125|[0x80006550]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==6<br>                                                                                                                    |[0x8000180c]:mulh a2, a0, a1<br> [0x80001810]:sw a2, 0x3c0(ra)<br>    |
| 126|[0x80006554]<br>0x00002434<br> |- rs1_val==46340 and rs2_val==858993460<br>                                                                                                            |[0x80001824]:mulh a2, a0, a1<br> [0x80001828]:sw a2, 0x3c4(ra)<br>    |
| 127|[0x80006558]<br>0x00004868<br> |- rs1_val==46340 and rs2_val==1717986919<br>                                                                                                           |[0x8000183c]:mulh a2, a0, a1<br> [0x80001840]:sw a2, 0x3c8(ra)<br>    |
| 128|[0x8000655c]<br>0xFFFFFFFF<br> |- rs1_val==46340 and rs2_val==-46339<br>                                                                                                               |[0x80001854]:mulh a2, a0, a1<br> [0x80001858]:sw a2, 0x3cc(ra)<br>    |
| 129|[0x80006560]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==46341<br>                                                                                                                |[0x8000186c]:mulh a2, a0, a1<br> [0x80001870]:sw a2, 0x3d0(ra)<br>    |
| 130|[0x80006564]<br>0x00000000<br> |- rs1_val==2 and rs2_val==3<br>                                                                                                                        |[0x8000187c]:mulh a2, a0, a1<br> [0x80001880]:sw a2, 0x3d4(ra)<br>    |
| 131|[0x80006568]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1431655765<br>                                                                                                               |[0x80001890]:mulh a2, a0, a1<br> [0x80001894]:sw a2, 0x3d8(ra)<br>    |
| 132|[0x8000656c]<br>0xFFFFFFFF<br> |- rs1_val==2 and rs2_val==-1431655766<br>                                                                                                              |[0x800018a4]:mulh a2, a0, a1<br> [0x800018a8]:sw a2, 0x3dc(ra)<br>    |
| 133|[0x80006570]<br>0x00000000<br> |- rs1_val==2 and rs2_val==5<br>                                                                                                                        |[0x800018b4]:mulh a2, a0, a1<br> [0x800018b8]:sw a2, 0x3e0(ra)<br>    |
| 134|[0x80006574]<br>0x00000000<br> |- rs1_val==2 and rs2_val==858993459<br>                                                                                                                |[0x800018c8]:mulh a2, a0, a1<br> [0x800018cc]:sw a2, 0x3e4(ra)<br>    |
| 135|[0x80006578]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1717986918<br>                                                                                                               |[0x800018dc]:mulh a2, a0, a1<br> [0x800018e0]:sw a2, 0x3e8(ra)<br>    |
| 136|[0x8000657c]<br>0xFFFFFFFF<br> |- rs1_val==2 and rs2_val==-46340<br>                                                                                                                   |[0x800018f0]:mulh a2, a0, a1<br> [0x800018f4]:sw a2, 0x3ec(ra)<br>    |
| 137|[0x80006580]<br>0x00000000<br> |- rs1_val==2 and rs2_val==46340<br>                                                                                                                    |[0x80001904]:mulh a2, a0, a1<br> [0x80001908]:sw a2, 0x3f0(ra)<br>    |
| 138|[0x80006584]<br>0x00000000<br> |- rs1_val==2 and rs2_val==2<br>                                                                                                                        |[0x80001914]:mulh a2, a0, a1<br> [0x80001918]:sw a2, 0x3f4(ra)<br>    |
| 139|[0x80006588]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1431655764<br>                                                                                                               |[0x80001928]:mulh a2, a0, a1<br> [0x8000192c]:sw a2, 0x3f8(ra)<br>    |
| 140|[0x8000658c]<br>0x00000000<br> |- rs1_val==2 and rs2_val==0<br>                                                                                                                        |[0x80001938]:mulh a2, a0, a1<br> [0x8000193c]:sw a2, 0x3fc(ra)<br>    |
| 141|[0x80006590]<br>0x00000000<br> |- rs1_val==2 and rs2_val==4<br>                                                                                                                        |[0x80001948]:mulh a2, a0, a1<br> [0x8000194c]:sw a2, 0x400(ra)<br>    |
| 142|[0x80006594]<br>0x00000000<br> |- rs1_val==2 and rs2_val==858993458<br>                                                                                                                |[0x8000195c]:mulh a2, a0, a1<br> [0x80001960]:sw a2, 0x404(ra)<br>    |
| 143|[0x80006598]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1717986917<br>                                                                                                               |[0x80001970]:mulh a2, a0, a1<br> [0x80001974]:sw a2, 0x408(ra)<br>    |
| 144|[0x8000659c]<br>0x00000000<br> |- rs1_val==2 and rs2_val==46339<br>                                                                                                                    |[0x80001984]:mulh a2, a0, a1<br> [0x80001988]:sw a2, 0x40c(ra)<br>    |
| 145|[0x800065a0]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1431655766<br>                                                                                                               |[0x80001998]:mulh a2, a0, a1<br> [0x8000199c]:sw a2, 0x410(ra)<br>    |
| 146|[0x800065a4]<br>0xFFFFFFFF<br> |- rs1_val==2 and rs2_val==-1431655765<br>                                                                                                              |[0x800019ac]:mulh a2, a0, a1<br> [0x800019b0]:sw a2, 0x414(ra)<br>    |
| 147|[0x800065a8]<br>0x00000000<br> |- rs1_val==2 and rs2_val==6<br>                                                                                                                        |[0x800019bc]:mulh a2, a0, a1<br> [0x800019c0]:sw a2, 0x418(ra)<br>    |
| 148|[0x800065ac]<br>0x00000000<br> |- rs1_val==2 and rs2_val==858993460<br>                                                                                                                |[0x800019d0]:mulh a2, a0, a1<br> [0x800019d4]:sw a2, 0x41c(ra)<br>    |
| 149|[0x800065b0]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1717986919<br>                                                                                                               |[0x800019e4]:mulh a2, a0, a1<br> [0x800019e8]:sw a2, 0x420(ra)<br>    |
| 150|[0x800065b4]<br>0xFFFFFFFF<br> |- rs1_val==2 and rs2_val==-46339<br>                                                                                                                   |[0x800019f8]:mulh a2, a0, a1<br> [0x800019fc]:sw a2, 0x424(ra)<br>    |
| 151|[0x800065b8]<br>0x00000000<br> |- rs1_val==2 and rs2_val==46341<br>                                                                                                                    |[0x80001a0c]:mulh a2, a0, a1<br> [0x80001a10]:sw a2, 0x428(ra)<br>    |
| 152|[0x800065bc]<br>0x00000000<br> |- rs1_val==1431655764 and rs2_val==3<br>                                                                                                               |[0x80001a20]:mulh a2, a0, a1<br> [0x80001a24]:sw a2, 0x42c(ra)<br>    |
| 153|[0x800065c0]<br>0x1C71C71B<br> |- rs1_val==1431655764 and rs2_val==1431655765<br>                                                                                                      |[0x80001a38]:mulh a2, a0, a1<br> [0x80001a3c]:sw a2, 0x430(ra)<br>    |
| 154|[0x800065c4]<br>0xE38E38E3<br> |- rs1_val==1431655764 and rs2_val==-1431655766<br>                                                                                                     |[0x80001a50]:mulh a2, a0, a1<br> [0x80001a54]:sw a2, 0x434(ra)<br>    |
| 155|[0x800065c8]<br>0x00000001<br> |- rs1_val==1431655764 and rs2_val==5<br>                                                                                                               |[0x80001a64]:mulh a2, a0, a1<br> [0x80001a68]:sw a2, 0x438(ra)<br>    |
| 156|[0x800065cc]<br>0x11111110<br> |- rs1_val==1431655764 and rs2_val==858993459<br>                                                                                                       |[0x80001a7c]:mulh a2, a0, a1<br> [0x80001a80]:sw a2, 0x43c(ra)<br>    |
| 157|[0x800065d0]<br>0x22222221<br> |- rs1_val==1431655764 and rs2_val==1717986918<br>                                                                                                      |[0x80001a94]:mulh a2, a0, a1<br> [0x80001a98]:sw a2, 0x440(ra)<br>    |
| 158|[0x800065d4]<br>0xFFFFC3A9<br> |- rs1_val==1431655764 and rs2_val==-46340<br>                                                                                                          |[0x80001aac]:mulh a2, a0, a1<br> [0x80001ab0]:sw a2, 0x444(ra)<br>    |
| 159|[0x800065d8]<br>0x00003C56<br> |- rs1_val==1431655764 and rs2_val==46340<br>                                                                                                           |[0x80001ac4]:mulh a2, a0, a1<br> [0x80001ac8]:sw a2, 0x448(ra)<br>    |
| 160|[0x800065dc]<br>0x00000000<br> |- rs1_val==1431655764 and rs2_val==2<br>                                                                                                               |[0x80001ad8]:mulh a2, a0, a1<br> [0x80001adc]:sw a2, 0x44c(ra)<br>    |
| 161|[0x800065e0]<br>0x1C71C71B<br> |- rs1_val==1431655764 and rs2_val==1431655764<br>                                                                                                      |[0x80001af0]:mulh a2, a0, a1<br> [0x80001af4]:sw a2, 0x450(ra)<br>    |
| 162|[0x800065e4]<br>0x00000000<br> |- rs1_val==1431655764 and rs2_val==0<br>                                                                                                               |[0x80001b04]:mulh a2, a0, a1<br> [0x80001b08]:sw a2, 0x454(ra)<br>    |
| 163|[0x800065e8]<br>0x00000001<br> |- rs1_val==1431655764 and rs2_val==4<br>                                                                                                               |[0x80001b18]:mulh a2, a0, a1<br> [0x80001b1c]:sw a2, 0x458(ra)<br>    |
| 164|[0x800065ec]<br>0x11111110<br> |- rs1_val==1431655764 and rs2_val==858993458<br>                                                                                                       |[0x80001b30]:mulh a2, a0, a1<br> [0x80001b34]:sw a2, 0x45c(ra)<br>    |
| 165|[0x800065f0]<br>0x22222221<br> |- rs1_val==1431655764 and rs2_val==1717986917<br>                                                                                                      |[0x80001b48]:mulh a2, a0, a1<br> [0x80001b4c]:sw a2, 0x460(ra)<br>    |
| 166|[0x800065f4]<br>0x00003C56<br> |- rs1_val==1431655764 and rs2_val==46339<br>                                                                                                           |[0x80001b60]:mulh a2, a0, a1<br> [0x80001b64]:sw a2, 0x464(ra)<br>    |
| 167|[0x800065f8]<br>0x1C71C71C<br> |- rs1_val==1431655764 and rs2_val==1431655766<br>                                                                                                      |[0x80001b78]:mulh a2, a0, a1<br> [0x80001b7c]:sw a2, 0x468(ra)<br>    |
| 168|[0x800065fc]<br>0xE38E38E4<br> |- rs1_val==1431655764 and rs2_val==-1431655765<br>                                                                                                     |[0x80001b90]:mulh a2, a0, a1<br> [0x80001b94]:sw a2, 0x46c(ra)<br>    |
| 169|[0x80006600]<br>0x00000001<br> |- rs1_val==1431655764 and rs2_val==6<br>                                                                                                               |[0x80001ba4]:mulh a2, a0, a1<br> [0x80001ba8]:sw a2, 0x470(ra)<br>    |
| 170|[0x80006604]<br>0x11111111<br> |- rs1_val==1431655764 and rs2_val==858993460<br>                                                                                                       |[0x80001bbc]:mulh a2, a0, a1<br> [0x80001bc0]:sw a2, 0x474(ra)<br>    |
| 171|[0x80006608]<br>0x22222221<br> |- rs1_val==1431655764 and rs2_val==1717986919<br>                                                                                                      |[0x80001bd4]:mulh a2, a0, a1<br> [0x80001bd8]:sw a2, 0x478(ra)<br>    |
| 172|[0x8000660c]<br>0xFFFFC3A9<br> |- rs1_val==1431655764 and rs2_val==-46339<br>                                                                                                          |[0x80001bec]:mulh a2, a0, a1<br> [0x80001bf0]:sw a2, 0x47c(ra)<br>    |
| 173|[0x80006610]<br>0x00003C56<br> |- rs1_val==1431655764 and rs2_val==46341<br>                                                                                                           |[0x80001c04]:mulh a2, a0, a1<br> [0x80001c08]:sw a2, 0x480(ra)<br>    |
| 174|[0x80006614]<br>0x00000000<br> |- rs1_val==0 and rs2_val==3<br>                                                                                                                        |[0x80001c14]:mulh a2, a0, a1<br> [0x80001c18]:sw a2, 0x484(ra)<br>    |
| 175|[0x80006618]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1431655765<br>                                                                                                               |[0x80001c28]:mulh a2, a0, a1<br> [0x80001c2c]:sw a2, 0x488(ra)<br>    |
| 176|[0x8000661c]<br>0x00000000<br> |- rs1_val==0 and rs2_val==-1431655766<br>                                                                                                              |[0x80001c3c]:mulh a2, a0, a1<br> [0x80001c40]:sw a2, 0x48c(ra)<br>    |
| 177|[0x80006620]<br>0x00000000<br> |- rs1_val==0 and rs2_val==5<br>                                                                                                                        |[0x80001c4c]:mulh a2, a0, a1<br> [0x80001c50]:sw a2, 0x490(ra)<br>    |
| 178|[0x80006624]<br>0x00000000<br> |- rs1_val==0 and rs2_val==858993459<br>                                                                                                                |[0x80001c60]:mulh a2, a0, a1<br> [0x80001c64]:sw a2, 0x494(ra)<br>    |
| 179|[0x80006628]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1717986918<br>                                                                                                               |[0x80001c74]:mulh a2, a0, a1<br> [0x80001c78]:sw a2, 0x498(ra)<br>    |
| 180|[0x8000662c]<br>0x1C71C71C<br> |- rs1_val==-1431655765 and rs2_val==-1431655765<br>                                                                                                    |[0x80001c8c]:mulh a2, a0, a1<br> [0x80001c90]:sw a2, 0x49c(ra)<br>    |
| 181|[0x80006630]<br>0xFFFFFFFE<br> |- rs1_val==-1431655765 and rs2_val==6<br>                                                                                                              |[0x80001ca0]:mulh a2, a0, a1<br> [0x80001ca4]:sw a2, 0x4a0(ra)<br>    |
| 182|[0x80006634]<br>0xEEEEEEEE<br> |- rs1_val==-1431655765 and rs2_val==858993460<br>                                                                                                      |[0x80001cb8]:mulh a2, a0, a1<br> [0x80001cbc]:sw a2, 0x4a4(ra)<br>    |
| 183|[0x80006638]<br>0xDDDDDDDD<br> |- rs1_val==-1431655765 and rs2_val==1717986919<br>                                                                                                     |[0x80001cd0]:mulh a2, a0, a1<br> [0x80001cd4]:sw a2, 0x4a8(ra)<br>    |
| 184|[0x8000663c]<br>0x00003C56<br> |- rs1_val==-1431655765 and rs2_val==-46339<br>                                                                                                         |[0x80001ce8]:mulh a2, a0, a1<br> [0x80001cec]:sw a2, 0x4ac(ra)<br>    |
| 185|[0x80006640]<br>0xFFFFC3A9<br> |- rs1_val==-1431655765 and rs2_val==46341<br>                                                                                                          |[0x80001d00]:mulh a2, a0, a1<br> [0x80001d04]:sw a2, 0x4b0(ra)<br>    |
| 186|[0x80006644]<br>0x00000000<br> |- rs1_val==6 and rs2_val==3<br>                                                                                                                        |[0x80001d10]:mulh a2, a0, a1<br> [0x80001d14]:sw a2, 0x4b4(ra)<br>    |
| 187|[0x80006648]<br>0x00000001<br> |- rs1_val==6 and rs2_val==1431655765<br>                                                                                                               |[0x80001d24]:mulh a2, a0, a1<br> [0x80001d28]:sw a2, 0x4b8(ra)<br>    |
| 188|[0x8000664c]<br>0x00000000<br> |- rs1_val==6 and rs2_val==5<br>                                                                                                                        |[0x80001d34]:mulh a2, a0, a1<br> [0x80001d38]:sw a2, 0x4bc(ra)<br>    |
| 189|[0x80006650]<br>0x00000001<br> |- rs1_val==6 and rs2_val==858993459<br>                                                                                                                |[0x80001d48]:mulh a2, a0, a1<br> [0x80001d4c]:sw a2, 0x4c0(ra)<br>    |
| 190|[0x80006654]<br>0x00000002<br> |- rs1_val==6 and rs2_val==1717986918<br>                                                                                                               |[0x80001d5c]:mulh a2, a0, a1<br> [0x80001d60]:sw a2, 0x4c4(ra)<br>    |
| 191|[0x80006658]<br>0xFFFFFFFF<br> |- rs1_val==6 and rs2_val==-46340<br>                                                                                                                   |[0x80001d70]:mulh a2, a0, a1<br> [0x80001d74]:sw a2, 0x4c8(ra)<br>    |
| 192|[0x8000665c]<br>0x00000000<br> |- rs1_val==6 and rs2_val==46340<br>                                                                                                                    |[0x80001d84]:mulh a2, a0, a1<br> [0x80001d88]:sw a2, 0x4cc(ra)<br>    |
| 193|[0x80006660]<br>0x00000000<br> |- rs1_val==6 and rs2_val==2<br>                                                                                                                        |[0x80001d94]:mulh a2, a0, a1<br> [0x80001d98]:sw a2, 0x4d0(ra)<br>    |
| 194|[0x80006664]<br>0x00000001<br> |- rs1_val==6 and rs2_val==1431655764<br>                                                                                                               |[0x80001da8]:mulh a2, a0, a1<br> [0x80001dac]:sw a2, 0x4d4(ra)<br>    |
| 195|[0x80006668]<br>0x00000000<br> |- rs1_val==6 and rs2_val==0<br>                                                                                                                        |[0x80001db8]:mulh a2, a0, a1<br> [0x80001dbc]:sw a2, 0x4d8(ra)<br>    |
| 196|[0x8000666c]<br>0x00000000<br> |- rs1_val==6 and rs2_val==4<br>                                                                                                                        |[0x80001dc8]:mulh a2, a0, a1<br> [0x80001dcc]:sw a2, 0x4dc(ra)<br>    |
| 197|[0x80006670]<br>0x00000001<br> |- rs1_val==6 and rs2_val==858993458<br>                                                                                                                |[0x80001ddc]:mulh a2, a0, a1<br> [0x80001de0]:sw a2, 0x4e0(ra)<br>    |
| 198|[0x80006674]<br>0x00000002<br> |- rs1_val==6 and rs2_val==1717986917<br>                                                                                                               |[0x80001df0]:mulh a2, a0, a1<br> [0x80001df4]:sw a2, 0x4e4(ra)<br>    |
| 199|[0x80006678]<br>0x00000000<br> |- rs1_val==6 and rs2_val==46339<br>                                                                                                                    |[0x80001e04]:mulh a2, a0, a1<br> [0x80001e08]:sw a2, 0x4e8(ra)<br>    |
| 200|[0x8000667c]<br>0x00000002<br> |- rs1_val==6 and rs2_val==1431655766<br>                                                                                                               |[0x80001e18]:mulh a2, a0, a1<br> [0x80001e1c]:sw a2, 0x4ec(ra)<br>    |
| 201|[0x80006680]<br>0xFFFFFFFE<br> |- rs1_val==6 and rs2_val==-1431655765<br>                                                                                                              |[0x80001e2c]:mulh a2, a0, a1<br> [0x80001e30]:sw a2, 0x4f0(ra)<br>    |
| 202|[0x80006684]<br>0x00000000<br> |- rs1_val==6 and rs2_val==6<br>                                                                                                                        |[0x80001e3c]:mulh a2, a0, a1<br> [0x80001e40]:sw a2, 0x4f4(ra)<br>    |
| 203|[0x80006688]<br>0x00000001<br> |- rs1_val==6 and rs2_val==858993460<br>                                                                                                                |[0x80001e50]:mulh a2, a0, a1<br> [0x80001e54]:sw a2, 0x4f8(ra)<br>    |
| 204|[0x8000668c]<br>0x00000002<br> |- rs1_val==6 and rs2_val==1717986919<br>                                                                                                               |[0x80001e64]:mulh a2, a0, a1<br> [0x80001e68]:sw a2, 0x4fc(ra)<br>    |
| 205|[0x80006690]<br>0xFFFFFFFF<br> |- rs1_val==6 and rs2_val==-46339<br>                                                                                                                   |[0x80001e78]:mulh a2, a0, a1<br> [0x80001e7c]:sw a2, 0x500(ra)<br>    |
| 206|[0x80006694]<br>0x00000000<br> |- rs1_val==6 and rs2_val==46341<br>                                                                                                                    |[0x80001e8c]:mulh a2, a0, a1<br> [0x80001e90]:sw a2, 0x504(ra)<br>    |
| 207|[0x80006698]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==3<br>                                                                                                                |[0x80001ea0]:mulh a2, a0, a1<br> [0x80001ea4]:sw a2, 0x508(ra)<br>    |
| 208|[0x8000669c]<br>0x11111111<br> |- rs1_val==858993460 and rs2_val==1431655765<br>                                                                                                       |[0x80001eb8]:mulh a2, a0, a1<br> [0x80001ebc]:sw a2, 0x50c(ra)<br>    |
| 209|[0x800066a0]<br>0xEEEEEEEE<br> |- rs1_val==858993460 and rs2_val==-1431655766<br>                                                                                                      |[0x80001ed0]:mulh a2, a0, a1<br> [0x80001ed4]:sw a2, 0x510(ra)<br>    |
| 210|[0x800066a4]<br>0x00000001<br> |- rs1_val==858993460 and rs2_val==5<br>                                                                                                                |[0x80001ee4]:mulh a2, a0, a1<br> [0x80001ee8]:sw a2, 0x514(ra)<br>    |
| 211|[0x800066a8]<br>0x0A3D70A3<br> |- rs1_val==858993460 and rs2_val==858993459<br>                                                                                                        |[0x80001efc]:mulh a2, a0, a1<br> [0x80001f00]:sw a2, 0x518(ra)<br>    |
| 212|[0x800066ac]<br>0x147AE147<br> |- rs1_val==858993460 and rs2_val==1717986918<br>                                                                                                       |[0x80001f14]:mulh a2, a0, a1<br> [0x80001f18]:sw a2, 0x51c(ra)<br>    |
| 213|[0x800066b0]<br>0xFFFFDBCB<br> |- rs1_val==858993460 and rs2_val==-46340<br>                                                                                                           |[0x80001f2c]:mulh a2, a0, a1<br> [0x80001f30]:sw a2, 0x520(ra)<br>    |
| 214|[0x800066b4]<br>0x00002434<br> |- rs1_val==858993460 and rs2_val==46340<br>                                                                                                            |[0x80001f44]:mulh a2, a0, a1<br> [0x80001f48]:sw a2, 0x524(ra)<br>    |
| 215|[0x800066b8]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==2<br>                                                                                                                |[0x80001f58]:mulh a2, a0, a1<br> [0x80001f5c]:sw a2, 0x528(ra)<br>    |
| 216|[0x800066bc]<br>0x11111111<br> |- rs1_val==858993460 and rs2_val==1431655764<br>                                                                                                       |[0x80001f70]:mulh a2, a0, a1<br> [0x80001f74]:sw a2, 0x52c(ra)<br>    |
| 217|[0x800066c0]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==0<br>                                                                                                                |[0x80001f84]:mulh a2, a0, a1<br> [0x80001f88]:sw a2, 0x530(ra)<br>    |
| 218|[0x800066c4]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==4<br>                                                                                                                |[0x80001f98]:mulh a2, a0, a1<br> [0x80001f9c]:sw a2, 0x534(ra)<br>    |
| 219|[0x800066c8]<br>0x0A3D70A3<br> |- rs1_val==858993460 and rs2_val==858993458<br>                                                                                                        |[0x80001fb0]:mulh a2, a0, a1<br> [0x80001fb4]:sw a2, 0x538(ra)<br>    |
| 220|[0x800066cc]<br>0x147AE147<br> |- rs1_val==858993460 and rs2_val==1717986917<br>                                                                                                       |[0x80001fc8]:mulh a2, a0, a1<br> [0x80001fcc]:sw a2, 0x53c(ra)<br>    |
| 221|[0x800066d0]<br>0x00002433<br> |- rs1_val==858993460 and rs2_val==46339<br>                                                                                                            |[0x80001fe0]:mulh a2, a0, a1<br> [0x80001fe4]:sw a2, 0x540(ra)<br>    |
| 222|[0x800066d4]<br>0x11111111<br> |- rs1_val==858993460 and rs2_val==1431655766<br>                                                                                                       |[0x80001ff8]:mulh a2, a0, a1<br> [0x80001ffc]:sw a2, 0x544(ra)<br>    |
| 223|[0x800066d8]<br>0xEEEEEEEE<br> |- rs1_val==858993460 and rs2_val==-1431655765<br>                                                                                                      |[0x80002010]:mulh a2, a0, a1<br> [0x80002014]:sw a2, 0x548(ra)<br>    |
| 224|[0x800066dc]<br>0x00000001<br> |- rs1_val==858993460 and rs2_val==6<br>                                                                                                                |[0x80002024]:mulh a2, a0, a1<br> [0x80002028]:sw a2, 0x54c(ra)<br>    |
| 225|[0x800066e0]<br>0x0A3D70A4<br> |- rs1_val==858993460 and rs2_val==858993460<br>                                                                                                        |[0x8000203c]:mulh a2, a0, a1<br> [0x80002040]:sw a2, 0x550(ra)<br>    |
| 226|[0x800066e4]<br>0x147AE148<br> |- rs1_val==858993460 and rs2_val==1717986919<br>                                                                                                       |[0x80002054]:mulh a2, a0, a1<br> [0x80002058]:sw a2, 0x554(ra)<br>    |
| 227|[0x800066e8]<br>0xFFFFDBCC<br> |- rs1_val==858993460 and rs2_val==-46339<br>                                                                                                           |[0x8000206c]:mulh a2, a0, a1<br> [0x80002070]:sw a2, 0x558(ra)<br>    |
| 228|[0x800066ec]<br>0x00002434<br> |- rs1_val==858993460 and rs2_val==46341<br>                                                                                                            |[0x80002084]:mulh a2, a0, a1<br> [0x80002088]:sw a2, 0x55c(ra)<br>    |
| 229|[0x800066f0]<br>0x00000001<br> |- rs1_val==1717986919 and rs2_val==3<br>                                                                                                               |[0x80002098]:mulh a2, a0, a1<br> [0x8000209c]:sw a2, 0x560(ra)<br>    |
| 230|[0x800066f4]<br>0x22222222<br> |- rs1_val==1717986919 and rs2_val==1431655765<br>                                                                                                      |[0x800020b0]:mulh a2, a0, a1<br> [0x800020b4]:sw a2, 0x564(ra)<br>    |
| 231|[0x800066f8]<br>0xDDDDDDDD<br> |- rs1_val==1717986919 and rs2_val==-1431655766<br>                                                                                                     |[0x800020c8]:mulh a2, a0, a1<br> [0x800020cc]:sw a2, 0x568(ra)<br>    |
| 232|[0x800066fc]<br>0x00000002<br> |- rs1_val==1717986919 and rs2_val==5<br>                                                                                                               |[0x800020dc]:mulh a2, a0, a1<br> [0x800020e0]:sw a2, 0x56c(ra)<br>    |
| 233|[0x80006700]<br>0x147AE147<br> |- rs1_val==1717986919 and rs2_val==858993459<br>                                                                                                       |[0x800020f4]:mulh a2, a0, a1<br> [0x800020f8]:sw a2, 0x570(ra)<br>    |
| 234|[0x80006704]<br>0x28F5C28F<br> |- rs1_val==1717986919 and rs2_val==1717986918<br>                                                                                                      |[0x8000210c]:mulh a2, a0, a1<br> [0x80002110]:sw a2, 0x574(ra)<br>    |
| 235|[0x80006708]<br>0xFFFFB797<br> |- rs1_val==1717986919 and rs2_val==-46340<br>                                                                                                          |[0x80002124]:mulh a2, a0, a1<br> [0x80002128]:sw a2, 0x578(ra)<br>    |
| 236|[0x8000670c]<br>0x00004868<br> |- rs1_val==1717986919 and rs2_val==46340<br>                                                                                                           |[0x8000213c]:mulh a2, a0, a1<br> [0x80002140]:sw a2, 0x57c(ra)<br>    |
| 237|[0x80006710]<br>0x22222221<br> |- rs1_val==1717986919 and rs2_val==1431655764<br>                                                                                                      |[0x80002154]:mulh a2, a0, a1<br> [0x80002158]:sw a2, 0x580(ra)<br>    |
| 238|[0x80006714]<br>0x00000000<br> |- rs1_val==1717986919 and rs2_val==0<br>                                                                                                               |[0x80002168]:mulh a2, a0, a1<br> [0x8000216c]:sw a2, 0x584(ra)<br>    |
| 239|[0x80006718]<br>0x00000001<br> |- rs1_val==1717986919 and rs2_val==4<br>                                                                                                               |[0x8000217c]:mulh a2, a0, a1<br> [0x80002180]:sw a2, 0x588(ra)<br>    |
| 240|[0x8000671c]<br>0x147AE147<br> |- rs1_val==1717986919 and rs2_val==858993458<br>                                                                                                       |[0x80002194]:mulh a2, a0, a1<br> [0x80002198]:sw a2, 0x58c(ra)<br>    |
| 241|[0x80006720]<br>0x28F5C28F<br> |- rs1_val==1717986919 and rs2_val==1717986917<br>                                                                                                      |[0x800021ac]:mulh a2, a0, a1<br> [0x800021b0]:sw a2, 0x590(ra)<br>    |
| 242|[0x80006724]<br>0x00004867<br> |- rs1_val==1717986919 and rs2_val==46339<br>                                                                                                           |[0x800021c4]:mulh a2, a0, a1<br> [0x800021c8]:sw a2, 0x594(ra)<br>    |
| 243|[0x80006728]<br>0x22222222<br> |- rs1_val==1717986919 and rs2_val==1431655766<br>                                                                                                      |[0x800021dc]:mulh a2, a0, a1<br> [0x800021e0]:sw a2, 0x598(ra)<br>    |
| 244|[0x8000672c]<br>0xDDDDDDDD<br> |- rs1_val==1717986919 and rs2_val==-1431655765<br>                                                                                                     |[0x800021f4]:mulh a2, a0, a1<br> [0x800021f8]:sw a2, 0x59c(ra)<br>    |
| 245|[0x80006730]<br>0x00000002<br> |- rs1_val==1717986919 and rs2_val==6<br>                                                                                                               |[0x80002208]:mulh a2, a0, a1<br> [0x8000220c]:sw a2, 0x5a0(ra)<br>    |
| 246|[0x80006734]<br>0x147AE148<br> |- rs1_val==1717986919 and rs2_val==858993460<br>                                                                                                       |[0x80002220]:mulh a2, a0, a1<br> [0x80002224]:sw a2, 0x5a4(ra)<br>    |
| 247|[0x80006738]<br>0x28F5C28F<br> |- rs1_val==1717986919 and rs2_val==1717986919<br>                                                                                                      |[0x80002238]:mulh a2, a0, a1<br> [0x8000223c]:sw a2, 0x5a8(ra)<br>    |
| 248|[0x8000673c]<br>0xFFFFB798<br> |- rs1_val==1717986919 and rs2_val==-46339<br>                                                                                                          |[0x80002250]:mulh a2, a0, a1<br> [0x80002254]:sw a2, 0x5ac(ra)<br>    |
| 249|[0x80006740]<br>0x00004868<br> |- rs1_val==1717986919 and rs2_val==46341<br>                                                                                                           |[0x80002268]:mulh a2, a0, a1<br> [0x8000226c]:sw a2, 0x5b0(ra)<br>    |
| 250|[0x80006744]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==3<br>                                                                                                                   |[0x8000227c]:mulh a2, a0, a1<br> [0x80002280]:sw a2, 0x5b4(ra)<br>    |
| 251|[0x80006748]<br>0xFFFFC3A9<br> |- rs1_val==-46339 and rs2_val==1431655765<br>                                                                                                          |[0x80002294]:mulh a2, a0, a1<br> [0x80002298]:sw a2, 0x5b8(ra)<br>    |
| 252|[0x8000674c]<br>0x00003C56<br> |- rs1_val==-46339 and rs2_val==-1431655766<br>                                                                                                         |[0x800022ac]:mulh a2, a0, a1<br> [0x800022b0]:sw a2, 0x5bc(ra)<br>    |
| 253|[0x80006750]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==5<br>                                                                                                                   |[0x800022c0]:mulh a2, a0, a1<br> [0x800022c4]:sw a2, 0x5c0(ra)<br>    |
| 254|[0x80006754]<br>0xFFFFDBCC<br> |- rs1_val==-46339 and rs2_val==858993459<br>                                                                                                           |[0x800022d8]:mulh a2, a0, a1<br> [0x800022dc]:sw a2, 0x5c4(ra)<br>    |
| 255|[0x80006758]<br>0xFFFFB798<br> |- rs1_val==-46339 and rs2_val==1717986918<br>                                                                                                          |[0x800022f0]:mulh a2, a0, a1<br> [0x800022f4]:sw a2, 0x5c8(ra)<br>    |
| 256|[0x8000675c]<br>0x00000000<br> |- rs1_val==-46339 and rs2_val==-46340<br>                                                                                                              |[0x80002308]:mulh a2, a0, a1<br> [0x8000230c]:sw a2, 0x5cc(ra)<br>    |
| 257|[0x80006760]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==46340<br>                                                                                                               |[0x80002320]:mulh a2, a0, a1<br> [0x80002324]:sw a2, 0x5d0(ra)<br>    |
| 258|[0x80006764]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==2<br>                                                                                                                   |[0x80002334]:mulh a2, a0, a1<br> [0x80002338]:sw a2, 0x5d4(ra)<br>    |
| 259|[0x80006768]<br>0xFFFFC3A9<br> |- rs1_val==-46339 and rs2_val==1431655764<br>                                                                                                          |[0x8000234c]:mulh a2, a0, a1<br> [0x80002350]:sw a2, 0x5d8(ra)<br>    |
| 260|[0x8000676c]<br>0x00000000<br> |- rs1_val==-46339 and rs2_val==0<br>                                                                                                                   |[0x80002360]:mulh a2, a0, a1<br> [0x80002364]:sw a2, 0x5dc(ra)<br>    |
| 261|[0x80006770]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==4<br>                                                                                                                   |[0x80002374]:mulh a2, a0, a1<br> [0x80002378]:sw a2, 0x5e0(ra)<br>    |
| 262|[0x80006774]<br>0xFFFFDBCC<br> |- rs1_val==-46339 and rs2_val==858993458<br>                                                                                                           |[0x8000238c]:mulh a2, a0, a1<br> [0x80002390]:sw a2, 0x5e4(ra)<br>    |
| 263|[0x80006778]<br>0xFFFFB798<br> |- rs1_val==-46339 and rs2_val==1717986917<br>                                                                                                          |[0x800023a4]:mulh a2, a0, a1<br> [0x800023a8]:sw a2, 0x5e8(ra)<br>    |
| 264|[0x8000677c]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==46339<br>                                                                                                               |[0x800023bc]:mulh a2, a0, a1<br> [0x800023c0]:sw a2, 0x5ec(ra)<br>    |
| 265|[0x80006780]<br>0xFFFFC3A9<br> |- rs1_val==-46339 and rs2_val==1431655766<br>                                                                                                          |[0x800023d4]:mulh a2, a0, a1<br> [0x800023d8]:sw a2, 0x5f0(ra)<br>    |
| 266|[0x80006784]<br>0x00003C56<br> |- rs1_val==-46339 and rs2_val==-1431655765<br>                                                                                                         |[0x800023ec]:mulh a2, a0, a1<br> [0x800023f0]:sw a2, 0x5f4(ra)<br>    |
| 267|[0x80006788]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==6<br>                                                                                                                   |[0x80002400]:mulh a2, a0, a1<br> [0x80002404]:sw a2, 0x5f8(ra)<br>    |
| 268|[0x8000678c]<br>0xFFFFDBCC<br> |- rs1_val==-46339 and rs2_val==858993460<br>                                                                                                           |[0x80002418]:mulh a2, a0, a1<br> [0x8000241c]:sw a2, 0x5fc(ra)<br>    |
| 269|[0x80006790]<br>0xFFFFB798<br> |- rs1_val==-46339 and rs2_val==1717986919<br>                                                                                                          |[0x80002430]:mulh a2, a0, a1<br> [0x80002434]:sw a2, 0x600(ra)<br>    |
| 270|[0x80006794]<br>0x00000000<br> |- rs1_val==-46339 and rs2_val==-46339<br>                                                                                                              |[0x80002448]:mulh a2, a0, a1<br> [0x8000244c]:sw a2, 0x604(ra)<br>    |
| 271|[0x80006798]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==46341<br>                                                                                                               |[0x80002460]:mulh a2, a0, a1<br> [0x80002464]:sw a2, 0x608(ra)<br>    |
| 272|[0x8000679c]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==3<br>                                                                                                                    |[0x80002474]:mulh a2, a0, a1<br> [0x80002478]:sw a2, 0x60c(ra)<br>    |
| 273|[0x800067a0]<br>0x00003C56<br> |- rs1_val==46341 and rs2_val==1431655765<br>                                                                                                           |[0x8000248c]:mulh a2, a0, a1<br> [0x80002490]:sw a2, 0x610(ra)<br>    |
| 274|[0x800067a4]<br>0xFFFFC3A8<br> |- rs1_val==46341 and rs2_val==-1431655766<br>                                                                                                          |[0x800024a4]:mulh a2, a0, a1<br> [0x800024a8]:sw a2, 0x614(ra)<br>    |
| 275|[0x800067a8]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==5<br>                                                                                                                    |[0x800024b8]:mulh a2, a0, a1<br> [0x800024bc]:sw a2, 0x618(ra)<br>    |
| 276|[0x800067ac]<br>0x00002434<br> |- rs1_val==46341 and rs2_val==858993459<br>                                                                                                            |[0x800024d0]:mulh a2, a0, a1<br> [0x800024d4]:sw a2, 0x61c(ra)<br>    |
| 277|[0x800067b0]<br>0x00004868<br> |- rs1_val==46341 and rs2_val==1717986918<br>                                                                                                           |[0x800024e8]:mulh a2, a0, a1<br> [0x800024ec]:sw a2, 0x620(ra)<br>    |
| 278|[0x800067b4]<br>0xFFFFFFFF<br> |- rs1_val==46341 and rs2_val==-46340<br>                                                                                                               |[0x80002500]:mulh a2, a0, a1<br> [0x80002504]:sw a2, 0x624(ra)<br>    |
| 279|[0x800067b8]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==46340<br>                                                                                                                |[0x80002518]:mulh a2, a0, a1<br> [0x8000251c]:sw a2, 0x628(ra)<br>    |
| 280|[0x800067bc]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==2<br>                                                                                                                    |[0x8000252c]:mulh a2, a0, a1<br> [0x80002530]:sw a2, 0x62c(ra)<br>    |
| 281|[0x800067c0]<br>0x00003C56<br> |- rs1_val==46341 and rs2_val==1431655764<br>                                                                                                           |[0x80002544]:mulh a2, a0, a1<br> [0x80002548]:sw a2, 0x630(ra)<br>    |
| 282|[0x800067c4]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==0<br>                                                                                                                    |[0x80002558]:mulh a2, a0, a1<br> [0x8000255c]:sw a2, 0x634(ra)<br>    |
| 283|[0x800067c8]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==4<br>                                                                                                                    |[0x8000256c]:mulh a2, a0, a1<br> [0x80002570]:sw a2, 0x638(ra)<br>    |
| 284|[0x800067cc]<br>0x00002434<br> |- rs1_val==46341 and rs2_val==858993458<br>                                                                                                            |[0x80002584]:mulh a2, a0, a1<br> [0x80002588]:sw a2, 0x63c(ra)<br>    |
| 285|[0x800067d0]<br>0x00004868<br> |- rs1_val==46341 and rs2_val==1717986917<br>                                                                                                           |[0x8000259c]:mulh a2, a0, a1<br> [0x800025a0]:sw a2, 0x640(ra)<br>    |
| 286|[0x800067d4]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==46339<br>                                                                                                                |[0x800025b4]:mulh a2, a0, a1<br> [0x800025b8]:sw a2, 0x644(ra)<br>    |
| 287|[0x800067d8]<br>0x00003C57<br> |- rs1_val==46341 and rs2_val==1431655766<br>                                                                                                           |[0x800025cc]:mulh a2, a0, a1<br> [0x800025d0]:sw a2, 0x648(ra)<br>    |
| 288|[0x800067dc]<br>0xFFFFC3A9<br> |- rs1_val==46341 and rs2_val==-1431655765<br>                                                                                                          |[0x800025e4]:mulh a2, a0, a1<br> [0x800025e8]:sw a2, 0x64c(ra)<br>    |
| 289|[0x800067e0]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==6<br>                                                                                                                    |[0x800025f8]:mulh a2, a0, a1<br> [0x800025fc]:sw a2, 0x650(ra)<br>    |
| 290|[0x800067e4]<br>0x00002434<br> |- rs1_val==46341 and rs2_val==858993460<br>                                                                                                            |[0x80002610]:mulh a2, a0, a1<br> [0x80002614]:sw a2, 0x654(ra)<br>    |
| 291|[0x800067e8]<br>0x00004868<br> |- rs1_val==46341 and rs2_val==1717986919<br>                                                                                                           |[0x80002628]:mulh a2, a0, a1<br> [0x8000262c]:sw a2, 0x658(ra)<br>    |
| 292|[0x800067ec]<br>0xFFFFFFFF<br> |- rs1_val==46341 and rs2_val==-46339<br>                                                                                                               |[0x80002640]:mulh a2, a0, a1<br> [0x80002644]:sw a2, 0x65c(ra)<br>    |
| 293|[0x800067f0]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==46341<br>                                                                                                                |[0x80002658]:mulh a2, a0, a1<br> [0x8000265c]:sw a2, 0x660(ra)<br>    |
| 294|[0x800067f4]<br>0x00000000<br> |- rs1_val==0 and rs2_val==-46340<br>                                                                                                                   |[0x8000266c]:mulh a2, a0, a1<br> [0x80002670]:sw a2, 0x664(ra)<br>    |
| 295|[0x800067f8]<br>0x00000000<br> |- rs1_val==0 and rs2_val==46340<br>                                                                                                                    |[0x80002680]:mulh a2, a0, a1<br> [0x80002684]:sw a2, 0x668(ra)<br>    |
| 296|[0x800067fc]<br>0x00000000<br> |- rs1_val==0 and rs2_val==2<br>                                                                                                                        |[0x80002690]:mulh a2, a0, a1<br> [0x80002694]:sw a2, 0x66c(ra)<br>    |
| 297|[0x80006800]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1431655764<br>                                                                                                               |[0x800026a4]:mulh a2, a0, a1<br> [0x800026a8]:sw a2, 0x670(ra)<br>    |
| 298|[0x80006808]<br>0x00000000<br> |- rs1_val==0 and rs2_val==858993458<br>                                                                                                                |[0x800026c8]:mulh a2, a0, a1<br> [0x800026cc]:sw a2, 0x678(ra)<br>    |
| 299|[0x8000680c]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1717986917<br>                                                                                                               |[0x800026dc]:mulh a2, a0, a1<br> [0x800026e0]:sw a2, 0x67c(ra)<br>    |
| 300|[0x80006810]<br>0x00000000<br> |- rs1_val==0 and rs2_val==46339<br>                                                                                                                    |[0x800026f0]:mulh a2, a0, a1<br> [0x800026f4]:sw a2, 0x680(ra)<br>    |
| 301|[0x80006814]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1431655766<br>                                                                                                               |[0x80002704]:mulh a2, a0, a1<br> [0x80002708]:sw a2, 0x684(ra)<br>    |
| 302|[0x80006818]<br>0x00000000<br> |- rs1_val==0 and rs2_val==-1431655765<br>                                                                                                              |[0x80002718]:mulh a2, a0, a1<br> [0x8000271c]:sw a2, 0x688(ra)<br>    |
| 303|[0x8000681c]<br>0x00000000<br> |- rs1_val==0 and rs2_val==6<br>                                                                                                                        |[0x80002728]:mulh a2, a0, a1<br> [0x8000272c]:sw a2, 0x68c(ra)<br>    |
| 304|[0x80006820]<br>0x00000000<br> |- rs1_val==0 and rs2_val==858993460<br>                                                                                                                |[0x8000273c]:mulh a2, a0, a1<br> [0x80002740]:sw a2, 0x690(ra)<br>    |
| 305|[0x80006824]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1717986919<br>                                                                                                               |[0x80002750]:mulh a2, a0, a1<br> [0x80002754]:sw a2, 0x694(ra)<br>    |
| 306|[0x80006828]<br>0x00000000<br> |- rs1_val==0 and rs2_val==-46339<br>                                                                                                                   |[0x80002764]:mulh a2, a0, a1<br> [0x80002768]:sw a2, 0x698(ra)<br>    |
| 307|[0x8000682c]<br>0x00000000<br> |- rs1_val==0 and rs2_val==46341<br>                                                                                                                    |[0x80002778]:mulh a2, a0, a1<br> [0x8000277c]:sw a2, 0x69c(ra)<br>    |
| 308|[0x80006830]<br>0x00000000<br> |- rs1_val==4 and rs2_val==3<br>                                                                                                                        |[0x80002788]:mulh a2, a0, a1<br> [0x8000278c]:sw a2, 0x6a0(ra)<br>    |
| 309|[0x80006834]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1431655765<br>                                                                                                               |[0x8000279c]:mulh a2, a0, a1<br> [0x800027a0]:sw a2, 0x6a4(ra)<br>    |
| 310|[0x80006838]<br>0xFFFFFFFE<br> |- rs1_val==4 and rs2_val==-1431655766<br>                                                                                                              |[0x800027b0]:mulh a2, a0, a1<br> [0x800027b4]:sw a2, 0x6a8(ra)<br>    |
| 311|[0x8000683c]<br>0x00000000<br> |- rs1_val==4 and rs2_val==5<br>                                                                                                                        |[0x800027c0]:mulh a2, a0, a1<br> [0x800027c4]:sw a2, 0x6ac(ra)<br>    |
| 312|[0x80006840]<br>0x00000000<br> |- rs1_val==4 and rs2_val==858993459<br>                                                                                                                |[0x800027d4]:mulh a2, a0, a1<br> [0x800027d8]:sw a2, 0x6b0(ra)<br>    |
| 313|[0x80006844]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1717986918<br>                                                                                                               |[0x800027e8]:mulh a2, a0, a1<br> [0x800027ec]:sw a2, 0x6b4(ra)<br>    |
| 314|[0x80006848]<br>0xFFFFFFFF<br> |- rs1_val==4 and rs2_val==-46340<br>                                                                                                                   |[0x800027fc]:mulh a2, a0, a1<br> [0x80002800]:sw a2, 0x6b8(ra)<br>    |
| 315|[0x8000684c]<br>0x00000000<br> |- rs1_val==4 and rs2_val==46340<br>                                                                                                                    |[0x80002810]:mulh a2, a0, a1<br> [0x80002814]:sw a2, 0x6bc(ra)<br>    |
| 316|[0x80006850]<br>0x00000000<br> |- rs1_val==4 and rs2_val==2<br>                                                                                                                        |[0x80002820]:mulh a2, a0, a1<br> [0x80002824]:sw a2, 0x6c0(ra)<br>    |
| 317|[0x80006854]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1431655764<br>                                                                                                               |[0x80002834]:mulh a2, a0, a1<br> [0x80002838]:sw a2, 0x6c4(ra)<br>    |
| 318|[0x80006858]<br>0x00000000<br> |- rs1_val==4 and rs2_val==0<br>                                                                                                                        |[0x80002844]:mulh a2, a0, a1<br> [0x80002848]:sw a2, 0x6c8(ra)<br>    |
| 319|[0x8000685c]<br>0x00000000<br> |- rs1_val==4 and rs2_val==4<br>                                                                                                                        |[0x80002854]:mulh a2, a0, a1<br> [0x80002858]:sw a2, 0x6cc(ra)<br>    |
| 320|[0x80006860]<br>0x00000000<br> |- rs1_val==4 and rs2_val==858993458<br>                                                                                                                |[0x80002868]:mulh a2, a0, a1<br> [0x8000286c]:sw a2, 0x6d0(ra)<br>    |
| 321|[0x80006864]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1717986917<br>                                                                                                               |[0x8000287c]:mulh a2, a0, a1<br> [0x80002880]:sw a2, 0x6d4(ra)<br>    |
| 322|[0x80006868]<br>0x00000000<br> |- rs1_val==4 and rs2_val==46339<br>                                                                                                                    |[0x80002890]:mulh a2, a0, a1<br> [0x80002894]:sw a2, 0x6d8(ra)<br>    |
| 323|[0x8000686c]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1431655766<br>                                                                                                               |[0x800028a4]:mulh a2, a0, a1<br> [0x800028a8]:sw a2, 0x6dc(ra)<br>    |
| 324|[0x80006870]<br>0xFFFFFFFE<br> |- rs1_val==4 and rs2_val==-1431655765<br>                                                                                                              |[0x800028b8]:mulh a2, a0, a1<br> [0x800028bc]:sw a2, 0x6e0(ra)<br>    |
| 325|[0x80006874]<br>0x00000000<br> |- rs1_val==4 and rs2_val==6<br>                                                                                                                        |[0x800028c8]:mulh a2, a0, a1<br> [0x800028cc]:sw a2, 0x6e4(ra)<br>    |
| 326|[0x80006878]<br>0x00000000<br> |- rs1_val==4 and rs2_val==858993460<br>                                                                                                                |[0x800028dc]:mulh a2, a0, a1<br> [0x800028e0]:sw a2, 0x6e8(ra)<br>    |
| 327|[0x8000687c]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1717986919<br>                                                                                                               |[0x800028f0]:mulh a2, a0, a1<br> [0x800028f4]:sw a2, 0x6ec(ra)<br>    |
| 328|[0x80006880]<br>0xFFFFFFFF<br> |- rs1_val==4 and rs2_val==-46339<br>                                                                                                                   |[0x80002904]:mulh a2, a0, a1<br> [0x80002908]:sw a2, 0x6f0(ra)<br>    |
| 329|[0x80006884]<br>0x00000000<br> |- rs1_val==4 and rs2_val==46341<br>                                                                                                                    |[0x80002918]:mulh a2, a0, a1<br> [0x8000291c]:sw a2, 0x6f4(ra)<br>    |
| 330|[0x80006888]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==3<br>                                                                                                                |[0x8000292c]:mulh a2, a0, a1<br> [0x80002930]:sw a2, 0x6f8(ra)<br>    |
| 331|[0x8000688c]<br>0x11111110<br> |- rs1_val==858993458 and rs2_val==1431655765<br>                                                                                                       |[0x80002944]:mulh a2, a0, a1<br> [0x80002948]:sw a2, 0x6fc(ra)<br>    |
| 332|[0x80006890]<br>0xEEEEEEEF<br> |- rs1_val==858993458 and rs2_val==-1431655766<br>                                                                                                      |[0x8000295c]:mulh a2, a0, a1<br> [0x80002960]:sw a2, 0x700(ra)<br>    |
| 333|[0x80006894]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==5<br>                                                                                                                |[0x80002970]:mulh a2, a0, a1<br> [0x80002974]:sw a2, 0x704(ra)<br>    |
| 334|[0x80006898]<br>0x0A3D70A3<br> |- rs1_val==858993458 and rs2_val==858993459<br>                                                                                                        |[0x80002988]:mulh a2, a0, a1<br> [0x8000298c]:sw a2, 0x708(ra)<br>    |
| 335|[0x8000689c]<br>0x147AE147<br> |- rs1_val==858993458 and rs2_val==1717986918<br>                                                                                                       |[0x800029a0]:mulh a2, a0, a1<br> [0x800029a4]:sw a2, 0x70c(ra)<br>    |
| 336|[0x800068a0]<br>0xFFFFDBCC<br> |- rs1_val==858993458 and rs2_val==-46340<br>                                                                                                           |[0x800029b8]:mulh a2, a0, a1<br> [0x800029bc]:sw a2, 0x710(ra)<br>    |
| 337|[0x800068a4]<br>0x00002433<br> |- rs1_val==858993458 and rs2_val==46340<br>                                                                                                            |[0x800029d0]:mulh a2, a0, a1<br> [0x800029d4]:sw a2, 0x714(ra)<br>    |
| 338|[0x800068a8]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==2<br>                                                                                                                |[0x800029e4]:mulh a2, a0, a1<br> [0x800029e8]:sw a2, 0x718(ra)<br>    |
| 339|[0x800068ac]<br>0x11111110<br> |- rs1_val==858993458 and rs2_val==1431655764<br>                                                                                                       |[0x800029fc]:mulh a2, a0, a1<br> [0x80002a00]:sw a2, 0x71c(ra)<br>    |
| 340|[0x800068b0]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==0<br>                                                                                                                |[0x80002a10]:mulh a2, a0, a1<br> [0x80002a14]:sw a2, 0x720(ra)<br>    |
| 341|[0x800068b4]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==4<br>                                                                                                                |[0x80002a24]:mulh a2, a0, a1<br> [0x80002a28]:sw a2, 0x724(ra)<br>    |
| 342|[0x800068bc]<br>0x147AE146<br> |- rs1_val==858993458 and rs2_val==1717986917<br>                                                                                                       |[0x80002a54]:mulh a2, a0, a1<br> [0x80002a58]:sw a2, 0x72c(ra)<br>    |
| 343|[0x800068c0]<br>0x00002433<br> |- rs1_val==858993458 and rs2_val==46339<br>                                                                                                            |[0x80002a6c]:mulh a2, a0, a1<br> [0x80002a70]:sw a2, 0x730(ra)<br>    |
| 344|[0x800068c4]<br>0x11111110<br> |- rs1_val==858993458 and rs2_val==1431655766<br>                                                                                                       |[0x80002a84]:mulh a2, a0, a1<br> [0x80002a88]:sw a2, 0x734(ra)<br>    |
| 345|[0x800068c8]<br>0xEEEEEEEF<br> |- rs1_val==858993458 and rs2_val==-1431655765<br>                                                                                                      |[0x80002a9c]:mulh a2, a0, a1<br> [0x80002aa0]:sw a2, 0x738(ra)<br>    |
| 346|[0x800068cc]<br>0x00000001<br> |- rs1_val==858993458 and rs2_val==6<br>                                                                                                                |[0x80002ab0]:mulh a2, a0, a1<br> [0x80002ab4]:sw a2, 0x73c(ra)<br>    |
| 347|[0x800068d0]<br>0x0A3D70A3<br> |- rs1_val==858993458 and rs2_val==858993460<br>                                                                                                        |[0x80002ac8]:mulh a2, a0, a1<br> [0x80002acc]:sw a2, 0x740(ra)<br>    |
| 348|[0x800068d4]<br>0x147AE147<br> |- rs1_val==858993458 and rs2_val==1717986919<br>                                                                                                       |[0x80002ae0]:mulh a2, a0, a1<br> [0x80002ae4]:sw a2, 0x744(ra)<br>    |
| 349|[0x800068d8]<br>0xFFFFDBCC<br> |- rs1_val==858993458 and rs2_val==-46339<br>                                                                                                           |[0x80002af8]:mulh a2, a0, a1<br> [0x80002afc]:sw a2, 0x748(ra)<br>    |
| 350|[0x800068dc]<br>0x00002434<br> |- rs1_val==858993458 and rs2_val==46341<br>                                                                                                            |[0x80002b10]:mulh a2, a0, a1<br> [0x80002b14]:sw a2, 0x74c(ra)<br>    |
| 351|[0x800068e0]<br>0x00000001<br> |- rs1_val==1717986917 and rs2_val==3<br>                                                                                                               |[0x80002b24]:mulh a2, a0, a1<br> [0x80002b28]:sw a2, 0x750(ra)<br>    |
| 352|[0x800068e4]<br>0x22222221<br> |- rs1_val==1717986917 and rs2_val==1431655765<br>                                                                                                      |[0x80002b3c]:mulh a2, a0, a1<br> [0x80002b40]:sw a2, 0x754(ra)<br>    |
| 353|[0x800068e8]<br>0xDDDDDDDE<br> |- rs1_val==1717986917 and rs2_val==-1431655766<br>                                                                                                     |[0x80002b54]:mulh a2, a0, a1<br> [0x80002b58]:sw a2, 0x758(ra)<br>    |
| 354|[0x800068ec]<br>0x00000001<br> |- rs1_val==1717986917 and rs2_val==5<br>                                                                                                               |[0x80002b68]:mulh a2, a0, a1<br> [0x80002b6c]:sw a2, 0x75c(ra)<br>    |
| 355|[0x800068f0]<br>0x147AE147<br> |- rs1_val==1717986917 and rs2_val==858993459<br>                                                                                                       |[0x80002b80]:mulh a2, a0, a1<br> [0x80002b84]:sw a2, 0x760(ra)<br>    |
| 356|[0x800068f4]<br>0x28F5C28E<br> |- rs1_val==1717986917 and rs2_val==1717986918<br>                                                                                                      |[0x80002b98]:mulh a2, a0, a1<br> [0x80002b9c]:sw a2, 0x764(ra)<br>    |
| 357|[0x800068f8]<br>0xFFFFB798<br> |- rs1_val==1717986917 and rs2_val==-46340<br>                                                                                                          |[0x80002bb0]:mulh a2, a0, a1<br> [0x80002bb4]:sw a2, 0x768(ra)<br>    |
| 358|[0x800068fc]<br>0x00004867<br> |- rs1_val==1717986917 and rs2_val==46340<br>                                                                                                           |[0x80002bc8]:mulh a2, a0, a1<br> [0x80002bcc]:sw a2, 0x76c(ra)<br>    |
| 359|[0x80006900]<br>0x00000000<br> |- rs1_val==1717986917 and rs2_val==2<br>                                                                                                               |[0x80002bdc]:mulh a2, a0, a1<br> [0x80002be0]:sw a2, 0x770(ra)<br>    |
| 360|[0x80006904]<br>0x22222221<br> |- rs1_val==1717986917 and rs2_val==1431655764<br>                                                                                                      |[0x80002bf4]:mulh a2, a0, a1<br> [0x80002bf8]:sw a2, 0x774(ra)<br>    |
| 361|[0x80006908]<br>0x00000000<br> |- rs1_val==1717986917 and rs2_val==0<br>                                                                                                               |[0x80002c08]:mulh a2, a0, a1<br> [0x80002c0c]:sw a2, 0x778(ra)<br>    |
| 362|[0x8000690c]<br>0x00000001<br> |- rs1_val==1717986917 and rs2_val==4<br>                                                                                                               |[0x80002c1c]:mulh a2, a0, a1<br> [0x80002c20]:sw a2, 0x77c(ra)<br>    |
| 363|[0x80006910]<br>0x147AE146<br> |- rs1_val==1717986917 and rs2_val==858993458<br>                                                                                                       |[0x80002c34]:mulh a2, a0, a1<br> [0x80002c38]:sw a2, 0x780(ra)<br>    |
| 364|[0x80006914]<br>0x28F5C28E<br> |- rs1_val==1717986917 and rs2_val==1717986917<br>                                                                                                      |[0x80002c4c]:mulh a2, a0, a1<br> [0x80002c50]:sw a2, 0x784(ra)<br>    |
| 365|[0x80006918]<br>0x00004867<br> |- rs1_val==1717986917 and rs2_val==46339<br>                                                                                                           |[0x80002c64]:mulh a2, a0, a1<br> [0x80002c68]:sw a2, 0x788(ra)<br>    |
| 366|[0x8000691c]<br>0x22222221<br> |- rs1_val==1717986917 and rs2_val==1431655766<br>                                                                                                      |[0x80002c7c]:mulh a2, a0, a1<br> [0x80002c80]:sw a2, 0x78c(ra)<br>    |
| 367|[0x80006920]<br>0xDDDDDDDE<br> |- rs1_val==1717986917 and rs2_val==-1431655765<br>                                                                                                     |[0x80002c94]:mulh a2, a0, a1<br> [0x80002c98]:sw a2, 0x790(ra)<br>    |
| 368|[0x80006924]<br>0x00000002<br> |- rs1_val==1717986917 and rs2_val==6<br>                                                                                                               |[0x80002ca8]:mulh a2, a0, a1<br> [0x80002cac]:sw a2, 0x794(ra)<br>    |
| 369|[0x80006928]<br>0x147AE147<br> |- rs1_val==1717986917 and rs2_val==858993460<br>                                                                                                       |[0x80002cc0]:mulh a2, a0, a1<br> [0x80002cc4]:sw a2, 0x798(ra)<br>    |
| 370|[0x8000692c]<br>0x28F5C28F<br> |- rs1_val==1717986917 and rs2_val==1717986919<br>                                                                                                      |[0x80002cd8]:mulh a2, a0, a1<br> [0x80002cdc]:sw a2, 0x79c(ra)<br>    |
| 371|[0x80006930]<br>0xFFFFB798<br> |- rs1_val==1717986917 and rs2_val==-46339<br>                                                                                                          |[0x80002cf0]:mulh a2, a0, a1<br> [0x80002cf4]:sw a2, 0x7a0(ra)<br>    |
| 372|[0x80006934]<br>0x00004868<br> |- rs1_val==1717986917 and rs2_val==46341<br>                                                                                                           |[0x80002d08]:mulh a2, a0, a1<br> [0x80002d0c]:sw a2, 0x7a4(ra)<br>    |
| 373|[0x80006938]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==3<br>                                                                                                                    |[0x80002d1c]:mulh a2, a0, a1<br> [0x80002d20]:sw a2, 0x7a8(ra)<br>    |
| 374|[0x8000693c]<br>0x00003C56<br> |- rs1_val==46339 and rs2_val==1431655765<br>                                                                                                           |[0x80002d34]:mulh a2, a0, a1<br> [0x80002d38]:sw a2, 0x7ac(ra)<br>    |
| 375|[0x80006940]<br>0xFFFFC3A9<br> |- rs1_val==46339 and rs2_val==-1431655766<br>                                                                                                          |[0x80002d4c]:mulh a2, a0, a1<br> [0x80002d50]:sw a2, 0x7b0(ra)<br>    |
| 376|[0x80006944]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==5<br>                                                                                                                    |[0x80002d60]:mulh a2, a0, a1<br> [0x80002d64]:sw a2, 0x7b4(ra)<br>    |
| 377|[0x80006948]<br>0x00002433<br> |- rs1_val==46339 and rs2_val==858993459<br>                                                                                                            |[0x80002d78]:mulh a2, a0, a1<br> [0x80002d7c]:sw a2, 0x7b8(ra)<br>    |
| 378|[0x8000694c]<br>0x00004867<br> |- rs1_val==46339 and rs2_val==1717986918<br>                                                                                                           |[0x80002d90]:mulh a2, a0, a1<br> [0x80002d94]:sw a2, 0x7bc(ra)<br>    |
| 379|[0x80006950]<br>0xFFFFFFFF<br> |- rs1_val==46339 and rs2_val==-46340<br>                                                                                                               |[0x80002da8]:mulh a2, a0, a1<br> [0x80002dac]:sw a2, 0x7c0(ra)<br>    |
| 380|[0x80006954]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==46340<br>                                                                                                                |[0x80002dc0]:mulh a2, a0, a1<br> [0x80002dc4]:sw a2, 0x7c4(ra)<br>    |
| 381|[0x80006958]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==2<br>                                                                                                                    |[0x80002dd4]:mulh a2, a0, a1<br> [0x80002dd8]:sw a2, 0x7c8(ra)<br>    |
| 382|[0x8000695c]<br>0x00003C56<br> |- rs1_val==46339 and rs2_val==1431655764<br>                                                                                                           |[0x80002dec]:mulh a2, a0, a1<br> [0x80002df0]:sw a2, 0x7cc(ra)<br>    |
| 383|[0x80006960]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==0<br>                                                                                                                    |[0x80002e00]:mulh a2, a0, a1<br> [0x80002e04]:sw a2, 0x7d0(ra)<br>    |
| 384|[0x80006964]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==4<br>                                                                                                                    |[0x80002e14]:mulh a2, a0, a1<br> [0x80002e18]:sw a2, 0x7d4(ra)<br>    |
| 385|[0x80006968]<br>0x00002433<br> |- rs1_val==46339 and rs2_val==858993458<br>                                                                                                            |[0x80002e2c]:mulh a2, a0, a1<br> [0x80002e30]:sw a2, 0x7d8(ra)<br>    |
| 386|[0x8000696c]<br>0x00004867<br> |- rs1_val==46339 and rs2_val==1717986917<br>                                                                                                           |[0x80002e44]:mulh a2, a0, a1<br> [0x80002e48]:sw a2, 0x7dc(ra)<br>    |
| 387|[0x80006970]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==46339<br>                                                                                                                |[0x80002e5c]:mulh a2, a0, a1<br> [0x80002e60]:sw a2, 0x7e0(ra)<br>    |
| 388|[0x80006974]<br>0x00003C56<br> |- rs1_val==46339 and rs2_val==1431655766<br>                                                                                                           |[0x80002e74]:mulh a2, a0, a1<br> [0x80002e78]:sw a2, 0x7e4(ra)<br>    |
| 389|[0x80006978]<br>0xFFFFC3A9<br> |- rs1_val==46339 and rs2_val==-1431655765<br>                                                                                                          |[0x80002e8c]:mulh a2, a0, a1<br> [0x80002e90]:sw a2, 0x7e8(ra)<br>    |
| 390|[0x8000697c]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==6<br>                                                                                                                    |[0x80002ea0]:mulh a2, a0, a1<br> [0x80002ea4]:sw a2, 0x7ec(ra)<br>    |
| 391|[0x80006980]<br>0x00002433<br> |- rs1_val==46339 and rs2_val==858993460<br>                                                                                                            |[0x80002eb8]:mulh a2, a0, a1<br> [0x80002ebc]:sw a2, 0x7f0(ra)<br>    |
| 392|[0x80006984]<br>0x00004867<br> |- rs1_val==46339 and rs2_val==1717986919<br>                                                                                                           |[0x80002ed0]:mulh a2, a0, a1<br> [0x80002ed4]:sw a2, 0x7f4(ra)<br>    |
| 393|[0x80006988]<br>0xFFFFFFFF<br> |- rs1_val==46339 and rs2_val==-46339<br>                                                                                                               |[0x80002ee8]:mulh a2, a0, a1<br> [0x80002eec]:sw a2, 0x7f8(ra)<br>    |
| 394|[0x8000698c]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==46341<br>                                                                                                                |[0x80002f00]:mulh a2, a0, a1<br> [0x80002f04]:sw a2, 0x7fc(ra)<br>    |
| 395|[0x80006990]<br>0x00000001<br> |- rs1_val==1431655766 and rs2_val==3<br>                                                                                                               |[0x80002f4c]:mulh a2, a0, a1<br> [0x80002f50]:sw a2, 0x0(ra)<br>      |
| 396|[0x80006994]<br>0x1C71C71C<br> |- rs1_val==1431655766 and rs2_val==1431655765<br>                                                                                                      |[0x80002f64]:mulh a2, a0, a1<br> [0x80002f68]:sw a2, 0x4(ra)<br>      |
| 397|[0x80006998]<br>0xE38E38E3<br> |- rs1_val==1431655766 and rs2_val==-1431655766<br>                                                                                                     |[0x80002f7c]:mulh a2, a0, a1<br> [0x80002f80]:sw a2, 0x8(ra)<br>      |
| 398|[0x8000699c]<br>0x00000001<br> |- rs1_val==1431655766 and rs2_val==5<br>                                                                                                               |[0x80002f90]:mulh a2, a0, a1<br> [0x80002f94]:sw a2, 0xc(ra)<br>      |
| 399|[0x800069a0]<br>0x11111111<br> |- rs1_val==1431655766 and rs2_val==858993459<br>                                                                                                       |[0x80002fa8]:mulh a2, a0, a1<br> [0x80002fac]:sw a2, 0x10(ra)<br>     |
| 400|[0x800069a4]<br>0x22222222<br> |- rs1_val==1431655766 and rs2_val==1717986918<br>                                                                                                      |[0x80002fc0]:mulh a2, a0, a1<br> [0x80002fc4]:sw a2, 0x14(ra)<br>     |
| 401|[0x800069a8]<br>0xFFFFC3A9<br> |- rs1_val==1431655766 and rs2_val==-46340<br>                                                                                                          |[0x80002fd8]:mulh a2, a0, a1<br> [0x80002fdc]:sw a2, 0x18(ra)<br>     |
| 402|[0x800069ac]<br>0x00003C56<br> |- rs1_val==1431655766 and rs2_val==46340<br>                                                                                                           |[0x80002ff0]:mulh a2, a0, a1<br> [0x80002ff4]:sw a2, 0x1c(ra)<br>     |
| 403|[0x800069b0]<br>0x00000000<br> |- rs1_val==1431655766 and rs2_val==2<br>                                                                                                               |[0x80003004]:mulh a2, a0, a1<br> [0x80003008]:sw a2, 0x20(ra)<br>     |
| 404|[0x800069b4]<br>0x1C71C71C<br> |- rs1_val==1431655766 and rs2_val==1431655764<br>                                                                                                      |[0x8000301c]:mulh a2, a0, a1<br> [0x80003020]:sw a2, 0x24(ra)<br>     |
| 405|[0x800069b8]<br>0x00000000<br> |- rs1_val==1431655766 and rs2_val==0<br>                                                                                                               |[0x80003030]:mulh a2, a0, a1<br> [0x80003034]:sw a2, 0x28(ra)<br>     |
| 406|[0x800069bc]<br>0x00000001<br> |- rs1_val==1431655766 and rs2_val==4<br>                                                                                                               |[0x80003044]:mulh a2, a0, a1<br> [0x80003048]:sw a2, 0x2c(ra)<br>     |
| 407|[0x800069c0]<br>0x11111110<br> |- rs1_val==1431655766 and rs2_val==858993458<br>                                                                                                       |[0x8000305c]:mulh a2, a0, a1<br> [0x80003060]:sw a2, 0x30(ra)<br>     |
| 408|[0x800069c4]<br>0x22222221<br> |- rs1_val==1431655766 and rs2_val==1717986917<br>                                                                                                      |[0x80003074]:mulh a2, a0, a1<br> [0x80003078]:sw a2, 0x34(ra)<br>     |
| 409|[0x800069c8]<br>0x00003C56<br> |- rs1_val==1431655766 and rs2_val==46339<br>                                                                                                           |[0x8000308c]:mulh a2, a0, a1<br> [0x80003090]:sw a2, 0x38(ra)<br>     |
| 410|[0x800069cc]<br>0x1C71C71C<br> |- rs1_val==1431655766 and rs2_val==1431655766<br>                                                                                                      |[0x800030a4]:mulh a2, a0, a1<br> [0x800030a8]:sw a2, 0x3c(ra)<br>     |
| 411|[0x800069d0]<br>0xE38E38E3<br> |- rs1_val==1431655766 and rs2_val==-1431655765<br>                                                                                                     |[0x800030bc]:mulh a2, a0, a1<br> [0x800030c0]:sw a2, 0x40(ra)<br>     |
| 412|[0x800069d4]<br>0x00000002<br> |- rs1_val==1431655766 and rs2_val==6<br>                                                                                                               |[0x800030d0]:mulh a2, a0, a1<br> [0x800030d4]:sw a2, 0x44(ra)<br>     |
| 413|[0x800069d8]<br>0x11111111<br> |- rs1_val==1431655766 and rs2_val==858993460<br>                                                                                                       |[0x800030e8]:mulh a2, a0, a1<br> [0x800030ec]:sw a2, 0x48(ra)<br>     |
| 414|[0x800069dc]<br>0x22222222<br> |- rs1_val==1431655766 and rs2_val==1717986919<br>                                                                                                      |[0x80003100]:mulh a2, a0, a1<br> [0x80003104]:sw a2, 0x4c(ra)<br>     |
| 415|[0x800069e0]<br>0xFFFFC3A9<br> |- rs1_val==1431655766 and rs2_val==-46339<br>                                                                                                          |[0x80003118]:mulh a2, a0, a1<br> [0x8000311c]:sw a2, 0x50(ra)<br>     |
| 416|[0x800069e4]<br>0x00003C57<br> |- rs1_val==1431655766 and rs2_val==46341<br>                                                                                                           |[0x80003130]:mulh a2, a0, a1<br> [0x80003134]:sw a2, 0x54(ra)<br>     |
| 417|[0x800069e8]<br>0xFFFFFFFF<br> |- rs1_val==-1431655765 and rs2_val==3<br>                                                                                                              |[0x80003144]:mulh a2, a0, a1<br> [0x80003148]:sw a2, 0x58(ra)<br>     |
| 418|[0x800069ec]<br>0xE38E38E3<br> |- rs1_val==-1431655765 and rs2_val==1431655765<br>                                                                                                     |[0x8000315c]:mulh a2, a0, a1<br> [0x80003160]:sw a2, 0x5c(ra)<br>     |
| 419|[0x800069f0]<br>0x1C71C71C<br> |- rs1_val==-1431655765 and rs2_val==-1431655766<br>                                                                                                    |[0x80003174]:mulh a2, a0, a1<br> [0x80003178]:sw a2, 0x60(ra)<br>     |
| 420|[0x800069f4]<br>0xFFFFFFFE<br> |- rs1_val==-1431655765 and rs2_val==5<br>                                                                                                              |[0x80003188]:mulh a2, a0, a1<br> [0x8000318c]:sw a2, 0x64(ra)<br>     |
| 421|[0x800069f8]<br>0xEEEEEEEF<br> |- rs1_val==-1431655765 and rs2_val==858993459<br>                                                                                                      |[0x800031a0]:mulh a2, a0, a1<br> [0x800031a4]:sw a2, 0x68(ra)<br>     |
| 422|[0x800069fc]<br>0xDDDDDDDE<br> |- rs1_val==-1431655765 and rs2_val==1717986918<br>                                                                                                     |[0x800031b8]:mulh a2, a0, a1<br> [0x800031bc]:sw a2, 0x6c(ra)<br>     |
| 423|[0x80006a00]<br>0x00003C56<br> |- rs1_val==-1431655765 and rs2_val==-46340<br>                                                                                                         |[0x800031d0]:mulh a2, a0, a1<br> [0x800031d4]:sw a2, 0x70(ra)<br>     |
| 424|[0x80006a04]<br>0xFFFFC3A9<br> |- rs1_val==-1431655765 and rs2_val==46340<br>                                                                                                          |[0x800031e8]:mulh a2, a0, a1<br> [0x800031ec]:sw a2, 0x74(ra)<br>     |
| 425|[0x80006a08]<br>0xFFFFFFFF<br> |- rs1_val==-1431655765 and rs2_val==2<br>                                                                                                              |[0x800031fc]:mulh a2, a0, a1<br> [0x80003200]:sw a2, 0x78(ra)<br>     |
| 426|[0x80006a0c]<br>0xE38E38E4<br> |- rs1_val==-1431655765 and rs2_val==1431655764<br>                                                                                                     |[0x80003214]:mulh a2, a0, a1<br> [0x80003218]:sw a2, 0x7c(ra)<br>     |
| 427|[0x80006a10]<br>0x00000000<br> |- rs1_val==-1431655765 and rs2_val==0<br>                                                                                                              |[0x80003228]:mulh a2, a0, a1<br> [0x8000322c]:sw a2, 0x80(ra)<br>     |
| 428|[0x80006a14]<br>0xFFFFFFFE<br> |- rs1_val==-1431655765 and rs2_val==4<br>                                                                                                              |[0x8000323c]:mulh a2, a0, a1<br> [0x80003240]:sw a2, 0x84(ra)<br>     |
| 429|[0x80006a18]<br>0xEEEEEEEF<br> |- rs1_val==-1431655765 and rs2_val==858993458<br>                                                                                                      |[0x80003254]:mulh a2, a0, a1<br> [0x80003258]:sw a2, 0x88(ra)<br>     |
| 430|[0x80006a1c]<br>0xDDDDDDDE<br> |- rs1_val==-1431655765 and rs2_val==1717986917<br>                                                                                                     |[0x8000326c]:mulh a2, a0, a1<br> [0x80003270]:sw a2, 0x8c(ra)<br>     |
| 431|[0x80006a20]<br>0xFFFFC3A9<br> |- rs1_val==-1431655765 and rs2_val==46339<br>                                                                                                          |[0x80003284]:mulh a2, a0, a1<br> [0x80003288]:sw a2, 0x90(ra)<br>     |
| 432|[0x80006a24]<br>0xE38E38E3<br> |- rs1_val==-1431655765 and rs2_val==1431655766<br>                                                                                                     |[0x8000329c]:mulh a2, a0, a1<br> [0x800032a0]:sw a2, 0x94(ra)<br>     |
