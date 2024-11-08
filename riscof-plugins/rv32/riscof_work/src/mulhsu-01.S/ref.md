
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature (completely or partially)
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update the signature completely
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000148', '0x80003a38')]      |
| SIG_REGION                | [('0x80006110', '0x80006bb0', '680 words')]      |
| COV_LABELS                | mulhsu      |
| TEST_NAME                 | /home/user/Work/New_Repo/riscv-arch-test-PR/riscof-plugins/rv32/riscof_work/src/mulhsu-01.S/ref.S    |
| Total Number of coverpoints| 570     |
| Total Coverpoints Hit     | 569      |
| Total Signature Updates   | 678      |
| STAT1                     | 490      |
| STAT2                     | 188      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004a0]:mulhsu t6, t5, t4
      [0x800004a4]:sw t6, 0x24(fp)
 -- Signature Addresses:
      Address: 0x8000619c Data: 0x0000A9B4
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004b8]:mulhsu t6, t5, t4
      [0x800004bc]:sw t6, 0x28(fp)
 -- Signature Addresses:
      Address: 0x800061a0 Data: 0x00009E64
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004d0]:mulhsu t6, t5, t4
      [0x800004d4]:sw t6, 0x2c(fp)
 -- Signature Addresses:
      Address: 0x800061a4 Data: 0x000087C3
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004e8]:mulhsu t6, t5, t4
      [0x800004ec]:sw t6, 0x30(fp)
 -- Signature Addresses:
      Address: 0x800061a8 Data: 0x00005A82
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004f8]:mulhsu t6, t5, t4
      [0x800004fc]:sw t6, 0x34(fp)
 -- Signature Addresses:
      Address: 0x800061ac Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000508]:mulhsu t6, t5, t4
      [0x8000050c]:sw t6, 0x38(fp)
 -- Signature Addresses:
      Address: 0x800061b0 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000518]:mulhsu t6, t5, t4
      [0x8000051c]:sw t6, 0x3c(fp)
 -- Signature Addresses:
      Address: 0x800061b4 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000528]:mulhsu t6, t5, t4
      [0x8000052c]:sw t6, 0x40(fp)
 -- Signature Addresses:
      Address: 0x800061b8 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000538]:mulhsu t6, t5, t4
      [0x8000053c]:sw t6, 0x44(fp)
 -- Signature Addresses:
      Address: 0x800061bc Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000548]:mulhsu t6, t5, t4
      [0x8000054c]:sw t6, 0x48(fp)
 -- Signature Addresses:
      Address: 0x800061c0 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000558]:mulhsu t6, t5, t4
      [0x8000055c]:sw t6, 0x4c(fp)
 -- Signature Addresses:
      Address: 0x800061c4 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000568]:mulhsu t6, t5, t4
      [0x8000056c]:sw t6, 0x50(fp)
 -- Signature Addresses:
      Address: 0x800061c8 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000578]:mulhsu t6, t5, t4
      [0x8000057c]:sw t6, 0x54(fp)
 -- Signature Addresses:
      Address: 0x800061cc Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000588]:mulhsu t6, t5, t4
      [0x8000058c]:sw t6, 0x58(fp)
 -- Signature Addresses:
      Address: 0x800061d0 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000598]:mulhsu t6, t5, t4
      [0x8000059c]:sw t6, 0x5c(fp)
 -- Signature Addresses:
      Address: 0x800061d4 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005ac]:mulhsu t6, t5, t4
      [0x800005b0]:sw t6, 0x60(fp)
 -- Signature Addresses:
      Address: 0x800061d8 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005c0]:mulhsu t6, t5, t4
      [0x800005c4]:sw t6, 0x64(fp)
 -- Signature Addresses:
      Address: 0x800061dc Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005d4]:mulhsu t6, t5, t4
      [0x800005d8]:sw t6, 0x68(fp)
 -- Signature Addresses:
      Address: 0x800061e0 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005e8]:mulhsu t6, t5, t4
      [0x800005ec]:sw t6, 0x6c(fp)
 -- Signature Addresses:
      Address: 0x800061e4 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005fc]:mulhsu t6, t5, t4
      [0x80000600]:sw t6, 0x70(fp)
 -- Signature Addresses:
      Address: 0x800061e8 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000610]:mulhsu t6, t5, t4
      [0x80000614]:sw t6, 0x74(fp)
 -- Signature Addresses:
      Address: 0x800061ec Data: 0xFFFFFFFE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000624]:mulhsu t6, t5, t4
      [0x80000628]:sw t6, 0x78(fp)
 -- Signature Addresses:
      Address: 0x800061f0 Data: 0xFFFFFFFD
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000638]:mulhsu t6, t5, t4
      [0x8000063c]:sw t6, 0x7c(fp)
 -- Signature Addresses:
      Address: 0x800061f4 Data: 0xFFFFFFFB
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000064c]:mulhsu t6, t5, t4
      [0x80000650]:sw t6, 0x80(fp)
 -- Signature Addresses:
      Address: 0x800061f8 Data: 0xFFFFFFF7
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000660]:mulhsu t6, t5, t4
      [0x80000664]:sw t6, 0x84(fp)
 -- Signature Addresses:
      Address: 0x800061fc Data: 0xFFFFFFEF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000674]:mulhsu t6, t5, t4
      [0x80000678]:sw t6, 0x88(fp)
 -- Signature Addresses:
      Address: 0x80006200 Data: 0xFFFFFFDF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000688]:mulhsu t6, t5, t4
      [0x8000068c]:sw t6, 0x8c(fp)
 -- Signature Addresses:
      Address: 0x80006204 Data: 0xFFFFFFBF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000069c]:mulhsu t6, t5, t4
      [0x800006a0]:sw t6, 0x90(fp)
 -- Signature Addresses:
      Address: 0x80006208 Data: 0xFFFFFF7F
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006b0]:mulhsu t6, t5, t4
      [0x800006b4]:sw t6, 0x94(fp)
 -- Signature Addresses:
      Address: 0x8000620c Data: 0xFFFFFEFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006c4]:mulhsu t6, t5, t4
      [0x800006c8]:sw t6, 0x98(fp)
 -- Signature Addresses:
      Address: 0x80006210 Data: 0xFFFFFDFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006d8]:mulhsu t6, t5, t4
      [0x800006dc]:sw t6, 0x9c(fp)
 -- Signature Addresses:
      Address: 0x80006214 Data: 0xFFFFFBFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006ec]:mulhsu t6, t5, t4
      [0x800006f0]:sw t6, 0xa0(fp)
 -- Signature Addresses:
      Address: 0x80006218 Data: 0xFFFFF7FF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000700]:mulhsu t6, t5, t4
      [0x80000704]:sw t6, 0xa4(fp)
 -- Signature Addresses:
      Address: 0x8000621c Data: 0xFFFFEFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000714]:mulhsu t6, t5, t4
      [0x80000718]:sw t6, 0xa8(fp)
 -- Signature Addresses:
      Address: 0x80006220 Data: 0xFFFFDFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000728]:mulhsu t6, t5, t4
      [0x8000072c]:sw t6, 0xac(fp)
 -- Signature Addresses:
      Address: 0x80006224 Data: 0xFFFFBFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000778]:mulhsu t6, t5, t4
      [0x8000077c]:sw t6, 0xbc(fp)
 -- Signature Addresses:
      Address: 0x80006234 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000078c]:mulhsu t6, t5, t4
      [0x80000790]:sw t6, 0xc0(fp)
 -- Signature Addresses:
      Address: 0x80006238 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007a0]:mulhsu t6, t5, t4
      [0x800007a4]:sw t6, 0xc4(fp)
 -- Signature Addresses:
      Address: 0x8000623c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007b4]:mulhsu t6, t5, t4
      [0x800007b8]:sw t6, 0xc8(fp)
 -- Signature Addresses:
      Address: 0x80006240 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007c8]:mulhsu t6, t5, t4
      [0x800007cc]:sw t6, 0xcc(fp)
 -- Signature Addresses:
      Address: 0x80006244 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007dc]:mulhsu t6, t5, t4
      [0x800007e0]:sw t6, 0xd0(fp)
 -- Signature Addresses:
      Address: 0x80006248 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007f0]:mulhsu t6, t5, t4
      [0x800007f4]:sw t6, 0xd4(fp)
 -- Signature Addresses:
      Address: 0x8000624c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000804]:mulhsu t6, t5, t4
      [0x80000808]:sw t6, 0xd8(fp)
 -- Signature Addresses:
      Address: 0x80006250 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000081c]:mulhsu t6, t5, t4
      [0x80000820]:sw t6, 0xdc(fp)
 -- Signature Addresses:
      Address: 0x80006254 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000830]:mulhsu t6, t5, t4
      [0x80000834]:sw t6, 0xe0(fp)
 -- Signature Addresses:
      Address: 0x80006258 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000844]:mulhsu t6, t5, t4
      [0x80000848]:sw t6, 0xe4(fp)
 -- Signature Addresses:
      Address: 0x8000625c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000858]:mulhsu t6, t5, t4
      [0x8000085c]:sw t6, 0xe8(fp)
 -- Signature Addresses:
      Address: 0x80006260 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000086c]:mulhsu t6, t5, t4
      [0x80000870]:sw t6, 0xec(fp)
 -- Signature Addresses:
      Address: 0x80006264 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000880]:mulhsu t6, t5, t4
      [0x80000884]:sw t6, 0xf0(fp)
 -- Signature Addresses:
      Address: 0x80006268 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000894]:mulhsu t6, t5, t4
      [0x80000898]:sw t6, 0xf4(fp)
 -- Signature Addresses:
      Address: 0x8000626c Data: 0x00000002
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008a8]:mulhsu t6, t5, t4
      [0x800008ac]:sw t6, 0xf8(fp)
 -- Signature Addresses:
      Address: 0x80006270 Data: 0x00000005
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008bc]:mulhsu t6, t5, t4
      [0x800008c0]:sw t6, 0xfc(fp)
 -- Signature Addresses:
      Address: 0x80006274 Data: 0x0000000B
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008d0]:mulhsu t6, t5, t4
      [0x800008d4]:sw t6, 0x100(fp)
 -- Signature Addresses:
      Address: 0x80006278 Data: 0x00000016
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008e4]:mulhsu t6, t5, t4
      [0x800008e8]:sw t6, 0x104(fp)
 -- Signature Addresses:
      Address: 0x8000627c Data: 0x0000002D
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008f8]:mulhsu t6, t5, t4
      [0x800008fc]:sw t6, 0x108(fp)
 -- Signature Addresses:
      Address: 0x80006280 Data: 0x0000005A
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000090c]:mulhsu t6, t5, t4
      [0x80000910]:sw t6, 0x10c(fp)
 -- Signature Addresses:
      Address: 0x80006284 Data: 0x000000B5
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000920]:mulhsu t6, t5, t4
      [0x80000924]:sw t6, 0x110(fp)
 -- Signature Addresses:
      Address: 0x80006288 Data: 0x0000016A
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000934]:mulhsu t6, t5, t4
      [0x80000938]:sw t6, 0x114(fp)
 -- Signature Addresses:
      Address: 0x8000628c Data: 0x000002D4
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000948]:mulhsu t6, t5, t4
      [0x8000094c]:sw t6, 0x118(fp)
 -- Signature Addresses:
      Address: 0x80006290 Data: 0x000005A8
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000095c]:mulhsu t6, t5, t4
      [0x80000960]:sw t6, 0x11c(fp)
 -- Signature Addresses:
      Address: 0x80006294 Data: 0x00000B50
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000970]:mulhsu t6, t5, t4
      [0x80000974]:sw t6, 0x120(fp)
 -- Signature Addresses:
      Address: 0x80006298 Data: 0x000016A0
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000984]:mulhsu t6, t5, t4
      [0x80000988]:sw t6, 0x124(fp)
 -- Signature Addresses:
      Address: 0x8000629c Data: 0x00002D41
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000998]:mulhsu t6, t5, t4
      [0x8000099c]:sw t6, 0x128(fp)
 -- Signature Addresses:
      Address: 0x800062a0 Data: 0x00005A82
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009d8]:mulhsu t6, t5, t4
      [0x800009dc]:sw t6, 0x138(fp)
 -- Signature Addresses:
      Address: 0x800062b0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009e8]:mulhsu t6, t5, t4
      [0x800009ec]:sw t6, 0x13c(fp)
 -- Signature Addresses:
      Address: 0x800062b4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009f8]:mulhsu t6, t5, t4
      [0x800009fc]:sw t6, 0x140(fp)
 -- Signature Addresses:
      Address: 0x800062b8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a08]:mulhsu t6, t5, t4
      [0x80000a0c]:sw t6, 0x144(fp)
 -- Signature Addresses:
      Address: 0x800062bc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a18]:mulhsu t6, t5, t4
      [0x80000a1c]:sw t6, 0x148(fp)
 -- Signature Addresses:
      Address: 0x800062c0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a28]:mulhsu t6, t5, t4
      [0x80000a2c]:sw t6, 0x14c(fp)
 -- Signature Addresses:
      Address: 0x800062c4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a38]:mulhsu t6, t5, t4
      [0x80000a3c]:sw t6, 0x150(fp)
 -- Signature Addresses:
      Address: 0x800062c8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a48]:mulhsu t6, t5, t4
      [0x80000a4c]:sw t6, 0x154(fp)
 -- Signature Addresses:
      Address: 0x800062cc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a5c]:mulhsu t6, t5, t4
      [0x80000a60]:sw t6, 0x158(fp)
 -- Signature Addresses:
      Address: 0x800062d0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a6c]:mulhsu t6, t5, t4
      [0x80000a70]:sw t6, 0x15c(fp)
 -- Signature Addresses:
      Address: 0x800062d4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a7c]:mulhsu t6, t5, t4
      [0x80000a80]:sw t6, 0x160(fp)
 -- Signature Addresses:
      Address: 0x800062d8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a8c]:mulhsu t6, t5, t4
      [0x80000a90]:sw t6, 0x164(fp)
 -- Signature Addresses:
      Address: 0x800062dc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a9c]:mulhsu t6, t5, t4
      [0x80000aa0]:sw t6, 0x168(fp)
 -- Signature Addresses:
      Address: 0x800062e0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000aac]:mulhsu t6, t5, t4
      [0x80000ab0]:sw t6, 0x16c(fp)
 -- Signature Addresses:
      Address: 0x800062e4 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000abc]:mulhsu t6, t5, t4
      [0x80000ac0]:sw t6, 0x170(fp)
 -- Signature Addresses:
      Address: 0x800062e8 Data: 0x00000002
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000acc]:mulhsu t6, t5, t4
      [0x80000ad0]:sw t6, 0x174(fp)
 -- Signature Addresses:
      Address: 0x800062ec Data: 0x00000004
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000adc]:mulhsu t6, t5, t4
      [0x80000ae0]:sw t6, 0x178(fp)
 -- Signature Addresses:
      Address: 0x800062f0 Data: 0x00000008
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000aec]:mulhsu t6, t5, t4
      [0x80000af0]:sw t6, 0x17c(fp)
 -- Signature Addresses:
      Address: 0x800062f4 Data: 0x00000010
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000afc]:mulhsu t6, t5, t4
      [0x80000b00]:sw t6, 0x180(fp)
 -- Signature Addresses:
      Address: 0x800062f8 Data: 0x00000020
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b0c]:mulhsu t6, t5, t4
      [0x80000b10]:sw t6, 0x184(fp)
 -- Signature Addresses:
      Address: 0x800062fc Data: 0x00000040
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b1c]:mulhsu t6, t5, t4
      [0x80000b20]:sw t6, 0x188(fp)
 -- Signature Addresses:
      Address: 0x80006300 Data: 0x00000080
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b2c]:mulhsu t6, t5, t4
      [0x80000b30]:sw t6, 0x18c(fp)
 -- Signature Addresses:
      Address: 0x80006304 Data: 0x00000100
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b3c]:mulhsu t6, t5, t4
      [0x80000b40]:sw t6, 0x190(fp)
 -- Signature Addresses:
      Address: 0x80006308 Data: 0x00000200
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b4c]:mulhsu t6, t5, t4
      [0x80000b50]:sw t6, 0x194(fp)
 -- Signature Addresses:
      Address: 0x8000630c Data: 0x00000400
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b5c]:mulhsu t6, t5, t4
      [0x80000b60]:sw t6, 0x198(fp)
 -- Signature Addresses:
      Address: 0x80006310 Data: 0x00000800
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b6c]:mulhsu t6, t5, t4
      [0x80000b70]:sw t6, 0x19c(fp)
 -- Signature Addresses:
      Address: 0x80006314 Data: 0x00001000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b7c]:mulhsu t6, t5, t4
      [0x80000b80]:sw t6, 0x1a0(fp)
 -- Signature Addresses:
      Address: 0x80006318 Data: 0x00002000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b8c]:mulhsu t6, t5, t4
      [0x80000b90]:sw t6, 0x1a4(fp)
 -- Signature Addresses:
      Address: 0x8000631c Data: 0x00004000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ba0]:mulhsu t6, t5, t4
      [0x80000ba4]:sw t6, 0x1a8(fp)
 -- Signature Addresses:
      Address: 0x80006320 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bb4]:mulhsu t6, t5, t4
      [0x80000bb8]:sw t6, 0x1ac(fp)
 -- Signature Addresses:
      Address: 0x80006324 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bc4]:mulhsu t6, t5, t4
      [0x80000bc8]:sw t6, 0x1b0(fp)
 -- Signature Addresses:
      Address: 0x80006328 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bd8]:mulhsu t6, t5, t4
      [0x80000bdc]:sw t6, 0x1b4(fp)
 -- Signature Addresses:
      Address: 0x8000632c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bec]:mulhsu t6, t5, t4
      [0x80000bf0]:sw t6, 0x1b8(fp)
 -- Signature Addresses:
      Address: 0x80006330 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c00]:mulhsu t6, t5, t4
      [0x80000c04]:sw t6, 0x1bc(fp)
 -- Signature Addresses:
      Address: 0x80006334 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c14]:mulhsu t6, t5, t4
      [0x80000c18]:sw t6, 0x1c0(fp)
 -- Signature Addresses:
      Address: 0x80006338 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c24]:mulhsu t6, t5, t4
      [0x80000c28]:sw t6, 0x1c4(fp)
 -- Signature Addresses:
      Address: 0x8000633c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c38]:mulhsu t6, t5, t4
      [0x80000c3c]:sw t6, 0x1c8(fp)
 -- Signature Addresses:
      Address: 0x80006340 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c4c]:mulhsu t6, t5, t4
      [0x80000c50]:sw t6, 0x1cc(fp)
 -- Signature Addresses:
      Address: 0x80006344 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c60]:mulhsu t6, t5, t4
      [0x80000c64]:sw t6, 0x1d0(fp)
 -- Signature Addresses:
      Address: 0x80006348 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c74]:mulhsu t6, t5, t4
      [0x80000c78]:sw t6, 0x1d4(fp)
 -- Signature Addresses:
      Address: 0x8000634c Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c88]:mulhsu t6, t5, t4
      [0x80000c8c]:sw t6, 0x1d8(fp)
 -- Signature Addresses:
      Address: 0x80006350 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c98]:mulhsu t6, t5, t4
      [0x80000c9c]:sw t6, 0x1dc(fp)
 -- Signature Addresses:
      Address: 0x80006354 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cac]:mulhsu t6, t5, t4
      [0x80000cb0]:sw t6, 0x1e0(fp)
 -- Signature Addresses:
      Address: 0x80006358 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cbc]:mulhsu t6, t5, t4
      [0x80000cc0]:sw t6, 0x1e4(fp)
 -- Signature Addresses:
      Address: 0x8000635c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cd0]:mulhsu t6, t5, t4
      [0x80000cd4]:sw t6, 0x1e8(fp)
 -- Signature Addresses:
      Address: 0x80006360 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ce4]:mulhsu t6, t5, t4
      [0x80000ce8]:sw t6, 0x1ec(fp)
 -- Signature Addresses:
      Address: 0x80006364 Data: 0x00000002
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cf4]:mulhsu t6, t5, t4
      [0x80000cf8]:sw t6, 0x1f0(fp)
 -- Signature Addresses:
      Address: 0x80006368 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d08]:mulhsu t6, t5, t4
      [0x80000d0c]:sw t6, 0x1f4(fp)
 -- Signature Addresses:
      Address: 0x8000636c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d1c]:mulhsu t6, t5, t4
      [0x80000d20]:sw t6, 0x1f8(fp)
 -- Signature Addresses:
      Address: 0x80006370 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d30]:mulhsu t6, t5, t4
      [0x80000d34]:sw t6, 0x1fc(fp)
 -- Signature Addresses:
      Address: 0x80006374 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d40]:mulhsu t6, t5, t4
      [0x80000d44]:sw t6, 0x200(fp)
 -- Signature Addresses:
      Address: 0x80006378 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0
      - rs2_val == 1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d50]:mulhsu t6, t5, t4
      [0x80000d54]:sw t6, 0x204(fp)
 -- Signature Addresses:
      Address: 0x8000637c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d64]:mulhsu t6, t5, t4
      [0x80000d68]:sw t6, 0x208(fp)
 -- Signature Addresses:
      Address: 0x80006380 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d7c]:mulhsu t6, t5, t4
      [0x80000d80]:sw t6, 0x20c(fp)
 -- Signature Addresses:
      Address: 0x80006384 Data: 0x1C71C71C
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d94]:mulhsu t6, t5, t4
      [0x80000d98]:sw t6, 0x210(fp)
 -- Signature Addresses:
      Address: 0x80006388 Data: 0x38E38E38
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000da8]:mulhsu t6, t5, t4
      [0x80000dac]:sw t6, 0x214(fp)
 -- Signature Addresses:
      Address: 0x8000638c Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000dc0]:mulhsu t6, t5, t4
      [0x80000dc4]:sw t6, 0x218(fp)
 -- Signature Addresses:
      Address: 0x80006390 Data: 0x11111110
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000dd8]:mulhsu t6, t5, t4
      [0x80000ddc]:sw t6, 0x21c(fp)
 -- Signature Addresses:
      Address: 0x80006394 Data: 0x22222221
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000df0]:mulhsu t6, t5, t4
      [0x80000df4]:sw t6, 0x220(fp)
 -- Signature Addresses:
      Address: 0x80006398 Data: 0x00003C56
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e08]:mulhsu t6, t5, t4
      [0x80000e0c]:sw t6, 0x224(fp)
 -- Signature Addresses:
      Address: 0x8000639c Data: 0x00005554
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e1c]:mulhsu t6, t5, t4
      [0x80000e20]:sw t6, 0x228(fp)
 -- Signature Addresses:
      Address: 0x800063a0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e34]:mulhsu t6, t5, t4
      [0x80000e38]:sw t6, 0x22c(fp)
 -- Signature Addresses:
      Address: 0x800063a4 Data: 0x1C71C71B
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e4c]:mulhsu t6, t5, t4
      [0x80000e50]:sw t6, 0x230(fp)
 -- Signature Addresses:
      Address: 0x800063a8 Data: 0x38E38E38
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e64]:mulhsu t6, t5, t4
      [0x80000e68]:sw t6, 0x234(fp)
 -- Signature Addresses:
      Address: 0x800063ac Data: 0x11111110
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e7c]:mulhsu t6, t5, t4
      [0x80000e80]:sw t6, 0x238(fp)
 -- Signature Addresses:
      Address: 0x800063b0 Data: 0x22222221
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e94]:mulhsu t6, t5, t4
      [0x80000e98]:sw t6, 0x23c(fp)
 -- Signature Addresses:
      Address: 0x800063b4 Data: 0x00003C56
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ea8]:mulhsu t6, t5, t4
      [0x80000eac]:sw t6, 0x240(fp)
 -- Signature Addresses:
      Address: 0x800063b8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ec0]:mulhsu t6, t5, t4
      [0x80000ec4]:sw t6, 0x244(fp)
 -- Signature Addresses:
      Address: 0x800063bc Data: 0x00005554
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ed4]:mulhsu t6, t5, t4
      [0x80000ed8]:sw t6, 0x248(fp)
 -- Signature Addresses:
      Address: 0x800063c0 Data: 0xFFFFAAAA
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ee8]:mulhsu t6, t5, t4
      [0x80000eec]:sw t6, 0x24c(fp)
 -- Signature Addresses:
      Address: 0x800063c4 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f00]:mulhsu t6, t5, t4
      [0x80000f04]:sw t6, 0x250(fp)
 -- Signature Addresses:
      Address: 0x800063c8 Data: 0x1C71C71C
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f18]:mulhsu t6, t5, t4
      [0x80000f1c]:sw t6, 0x254(fp)
 -- Signature Addresses:
      Address: 0x800063cc Data: 0x38E38E38
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f2c]:mulhsu t6, t5, t4
      [0x80000f30]:sw t6, 0x258(fp)
 -- Signature Addresses:
      Address: 0x800063d0 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f44]:mulhsu t6, t5, t4
      [0x80000f48]:sw t6, 0x25c(fp)
 -- Signature Addresses:
      Address: 0x800063d4 Data: 0x11111111
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f5c]:mulhsu t6, t5, t4
      [0x80000f60]:sw t6, 0x260(fp)
 -- Signature Addresses:
      Address: 0x800063d8 Data: 0x22222222
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f74]:mulhsu t6, t5, t4
      [0x80000f78]:sw t6, 0x264(fp)
 -- Signature Addresses:
      Address: 0x800063dc Data: 0x00003C56
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f88]:mulhsu t6, t5, t4
      [0x80000f8c]:sw t6, 0x268(fp)
 -- Signature Addresses:
      Address: 0x800063e0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0
      - rs2_val == 1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f9c]:mulhsu t6, t5, t4
      [0x80000fa0]:sw t6, 0x26c(fp)
 -- Signature Addresses:
      Address: 0x800063e4 Data: 0x00005555
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fb0]:mulhsu t6, t5, t4
      [0x80000fb4]:sw t6, 0x270(fp)
 -- Signature Addresses:
      Address: 0x800063e8 Data: 0xFFFFFFFE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fc8]:mulhsu t6, t5, t4
      [0x80000fcc]:sw t6, 0x274(fp)
 -- Signature Addresses:
      Address: 0x800063ec Data: 0xE38E38E3
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fe0]:mulhsu t6, t5, t4
      [0x80000fe4]:sw t6, 0x278(fp)
 -- Signature Addresses:
      Address: 0x800063f0 Data: 0xC71C71C6
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ff4]:mulhsu t6, t5, t4
      [0x80000ff8]:sw t6, 0x27c(fp)
 -- Signature Addresses:
      Address: 0x800063f4 Data: 0xFFFFFFFE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000100c]:mulhsu t6, t5, t4
      [0x80001010]:sw t6, 0x280(fp)
 -- Signature Addresses:
      Address: 0x800063f8 Data: 0xEEEEEEEE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001024]:mulhsu t6, t5, t4
      [0x80001028]:sw t6, 0x284(fp)
 -- Signature Addresses:
      Address: 0x800063fc Data: 0xDDDDDDDD
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000103c]:mulhsu t6, t5, t4
      [0x80001040]:sw t6, 0x288(fp)
 -- Signature Addresses:
      Address: 0x80006400 Data: 0xFFFFC3A9
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001054]:mulhsu t6, t5, t4
      [0x80001058]:sw t6, 0x28c(fp)
 -- Signature Addresses:
      Address: 0x80006404 Data: 0xFFFFAAAA
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001068]:mulhsu t6, t5, t4
      [0x8000106c]:sw t6, 0x290(fp)
 -- Signature Addresses:
      Address: 0x80006408 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001080]:mulhsu t6, t5, t4
      [0x80001084]:sw t6, 0x294(fp)
 -- Signature Addresses:
      Address: 0x8000640c Data: 0xE38E38E3
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001098]:mulhsu t6, t5, t4
      [0x8000109c]:sw t6, 0x298(fp)
 -- Signature Addresses:
      Address: 0x80006410 Data: 0xC71C71C7
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800010b0]:mulhsu t6, t5, t4
      [0x800010b4]:sw t6, 0x29c(fp)
 -- Signature Addresses:
      Address: 0x80006414 Data: 0xEEEEEEEF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800010c8]:mulhsu t6, t5, t4
      [0x800010cc]:sw t6, 0x2a0(fp)
 -- Signature Addresses:
      Address: 0x80006418 Data: 0xDDDDDDDE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800010e0]:mulhsu t6, t5, t4
      [0x800010e4]:sw t6, 0x2a4(fp)
 -- Signature Addresses:
      Address: 0x8000641c Data: 0xFFFFC3A9
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001108]:mulhsu t6, t5, t4
      [0x8000110c]:sw t6, 0x2ac(fp)
 -- Signature Addresses:
      Address: 0x80006424 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001120]:mulhsu t6, t5, t4
      [0x80001124]:sw t6, 0x2b0(fp)
 -- Signature Addresses:
      Address: 0x80006428 Data: 0xFFFFAAAB
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001134]:mulhsu t6, t5, t4
      [0x80001138]:sw t6, 0x2b4(fp)
 -- Signature Addresses:
      Address: 0x8000642c Data: 0xFFFFFFFE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000114c]:mulhsu t6, t5, t4
      [0x80001150]:sw t6, 0x2b8(fp)
 -- Signature Addresses:
      Address: 0x80006430 Data: 0xE38E38E3
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001164]:mulhsu t6, t5, t4
      [0x80001168]:sw t6, 0x2bc(fp)
 -- Signature Addresses:
      Address: 0x80006434 Data: 0xC71C71C6
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001178]:mulhsu t6, t5, t4
      [0x8000117c]:sw t6, 0x2c0(fp)
 -- Signature Addresses:
      Address: 0x80006438 Data: 0xFFFFFFFD
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001190]:mulhsu t6, t5, t4
      [0x80001194]:sw t6, 0x2c4(fp)
 -- Signature Addresses:
      Address: 0x8000643c Data: 0xEEEEEEEE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800011a8]:mulhsu t6, t5, t4
      [0x800011ac]:sw t6, 0x2c8(fp)
 -- Signature Addresses:
      Address: 0x80006440 Data: 0xDDDDDDDD
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800011c0]:mulhsu t6, t5, t4
      [0x800011c4]:sw t6, 0x2cc(fp)
 -- Signature Addresses:
      Address: 0x80006444 Data: 0xFFFFC3A8
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800011d4]:mulhsu t6, t5, t4
      [0x800011d8]:sw t6, 0x2d0(fp)
 -- Signature Addresses:
      Address: 0x80006448 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800011e4]:mulhsu t6, t5, t4
      [0x800011e8]:sw t6, 0x2d4(fp)
 -- Signature Addresses:
      Address: 0x8000644c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800011f8]:mulhsu t6, t5, t4
      [0x800011fc]:sw t6, 0x2d8(fp)
 -- Signature Addresses:
      Address: 0x80006450 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000120c]:mulhsu t6, t5, t4
      [0x80001210]:sw t6, 0x2dc(fp)
 -- Signature Addresses:
      Address: 0x80006454 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000121c]:mulhsu t6, t5, t4
      [0x80001220]:sw t6, 0x2e0(fp)
 -- Signature Addresses:
      Address: 0x80006458 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001230]:mulhsu t6, t5, t4
      [0x80001234]:sw t6, 0x2e4(fp)
 -- Signature Addresses:
      Address: 0x8000645c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001244]:mulhsu t6, t5, t4
      [0x80001248]:sw t6, 0x2e8(fp)
 -- Signature Addresses:
      Address: 0x80006460 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001258]:mulhsu t6, t5, t4
      [0x8000125c]:sw t6, 0x2ec(fp)
 -- Signature Addresses:
      Address: 0x80006464 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000126c]:mulhsu t6, t5, t4
      [0x80001270]:sw t6, 0x2f0(fp)
 -- Signature Addresses:
      Address: 0x80006468 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000127c]:mulhsu t6, t5, t4
      [0x80001280]:sw t6, 0x2f4(fp)
 -- Signature Addresses:
      Address: 0x8000646c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001290]:mulhsu t6, t5, t4
      [0x80001294]:sw t6, 0x2f8(fp)
 -- Signature Addresses:
      Address: 0x80006470 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800012a4]:mulhsu t6, t5, t4
      [0x800012a8]:sw t6, 0x2fc(fp)
 -- Signature Addresses:
      Address: 0x80006474 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800012b8]:mulhsu t6, t5, t4
      [0x800012bc]:sw t6, 0x300(fp)
 -- Signature Addresses:
      Address: 0x80006478 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800012cc]:mulhsu t6, t5, t4
      [0x800012d0]:sw t6, 0x304(fp)
 -- Signature Addresses:
      Address: 0x8000647c Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800012e0]:mulhsu t6, t5, t4
      [0x800012e4]:sw t6, 0x308(fp)
 -- Signature Addresses:
      Address: 0x80006480 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800012f0]:mulhsu t6, t5, t4
      [0x800012f4]:sw t6, 0x30c(fp)
 -- Signature Addresses:
      Address: 0x80006484 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001304]:mulhsu t6, t5, t4
      [0x80001308]:sw t6, 0x310(fp)
 -- Signature Addresses:
      Address: 0x80006488 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001314]:mulhsu t6, t5, t4
      [0x80001318]:sw t6, 0x314(fp)
 -- Signature Addresses:
      Address: 0x8000648c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800032ac]:mulhsu t6, t5, t4
      [0x800032b0]:sw t6, 0xc0(fp)
 -- Signature Addresses:
      Address: 0x80006a38 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 0
      - rs1_val==46341 and rs2_val==0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80003560]:mulhsu t6, t5, t4
      [0x80003564]:sw t6, 0x144(fp)
 -- Signature Addresses:
      Address: 0x80006abc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 0
      - rs2_val == 0
      - rs1_val==0 and rs2_val==0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800039e8]:mulhsu t6, t5, t4
      [0x800039ec]:sw t6, 0x224(fp)
 -- Signature Addresses:
      Address: 0x80006b9c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0
      - rs1_val==46341 and rs2_val==46341




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80003a00]:mulhsu t6, t5, t4
      [0x80003a04]:sw t6, 0x228(fp)
 -- Signature Addresses:
      Address: 0x80006ba0 Data: 0x0000B44F
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80003a18]:mulhsu t6, t5, t4
      [0x80003a1c]:sw t6, 0x22c(fp)
 -- Signature Addresses:
      Address: 0x80006ba4 Data: 0x0000B230
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80003a30]:mulhsu t6, t5, t4
      [0x80003a34]:sw t6, 0x230(fp)
 -- Signature Addresses:
      Address: 0x80006ba8 Data: 0x0000AF5C
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
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

|s.no|           signature           |                                                                                           coverpoints                                                                                            |                                  code                                  |
|---:|-------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80006114]<br>0x00000000<br> |- mnemonic : mulhsu<br> - rs1 : x31<br> - rs2 : x31<br> - rd : x31<br> - rs1 == rs2 == rd<br> - rs1_val == 0<br> - rs2_val == 0<br> - rs1_val==0 and rs2_val==0<br>                               |[0x80000190]:mulhsu t6, t6, t6<br> [0x80000194]:sw t6, 0x0(ra)<br>      |
|   2|[0x80006118]<br>0xFFFF8000<br> |- rs1 : x30<br> - rs2 : x29<br> - rd : x30<br> - rs1 == rd != rs2<br>                                                                                                                             |[0x800001a0]:mulhsu t5, t5, t4<br> [0x800001a4]:sw t5, 0x4(ra)<br>      |
|   3|[0x8000611c]<br>0x00007FFF<br> |- rs1 : x29<br> - rs2 : x28<br> - rd : x28<br> - rs2 == rd != rs1<br> - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val > 0 and rs2_val > 0<br> |[0x800001b4]:mulhsu t3, t4, t3<br> [0x800001b8]:sw t3, 0x8(ra)<br>      |
|   4|[0x80006120]<br>0x00000000<br> |- rs1 : x28<br> - rs2 : x30<br> - rd : x29<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val==0 and rs2_val==65536<br>                                                                  |[0x800001c4]:mulhsu t4, t3, t5<br> [0x800001c8]:sw t4, 0xc(ra)<br>      |
|   5|[0x80006124]<br>0x00000000<br> |- rs1 : x26<br> - rs2 : x26<br> - rd : x27<br> - rs1 == rs2 != rd<br> - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs1_val==46341 and rs2_val==46341<br>                            |[0x800001dc]:mulhsu s11, s10, s10<br> [0x800001e0]:sw s11, 0x10(ra)<br> |
|   6|[0x80006128]<br>0x00000000<br> |- rs1 : x27<br> - rs2 : x25<br> - rd : x26<br>                                                                                                                                                    |[0x800001ec]:mulhsu s10, s11, s9<br> [0x800001f0]:sw s10, 0x14(ra)<br>  |
|   7|[0x8000612c]<br>0x0000B504<br> |- rs1 : x24<br> - rs2 : x27<br> - rd : x25<br>                                                                                                                                                    |[0x80000200]:mulhsu s9, s8, s11<br> [0x80000204]:sw s9, 0x18(ra)<br>    |
|   8|[0x80006130]<br>0x0000B504<br> |- rs1 : x25<br> - rs2 : x23<br> - rd : x24<br>                                                                                                                                                    |[0x80000214]:mulhsu s8, s9, s7<br> [0x80000218]:sw s8, 0x1c(ra)<br>     |
|   9|[0x80006134]<br>0x0000B504<br> |- rs1 : x22<br> - rs2 : x24<br> - rd : x23<br>                                                                                                                                                    |[0x80000228]:mulhsu s7, s6, s8<br> [0x8000022c]:sw s7, 0x20(ra)<br>     |
|  10|[0x80006138]<br>0x0000B504<br> |- rs1 : x23<br> - rs2 : x21<br> - rd : x22<br>                                                                                                                                                    |[0x8000023c]:mulhsu s6, s7, s5<br> [0x80000240]:sw s6, 0x24(ra)<br>     |
|  11|[0x8000613c]<br>0x0000B504<br> |- rs1 : x20<br> - rs2 : x22<br> - rd : x21<br>                                                                                                                                                    |[0x80000250]:mulhsu s5, s4, s6<br> [0x80000254]:sw s5, 0x28(ra)<br>     |
|  12|[0x80006140]<br>0x0000B504<br> |- rs1 : x21<br> - rs2 : x19<br> - rd : x20<br>                                                                                                                                                    |[0x80000264]:mulhsu s4, s5, s3<br> [0x80000268]:sw s4, 0x2c(ra)<br>     |
|  13|[0x80006144]<br>0x0000B504<br> |- rs1 : x18<br> - rs2 : x20<br> - rd : x19<br>                                                                                                                                                    |[0x80000278]:mulhsu s3, s2, s4<br> [0x8000027c]:sw s3, 0x30(ra)<br>     |
|  14|[0x80006148]<br>0x0000B504<br> |- rs1 : x19<br> - rs2 : x17<br> - rd : x18<br>                                                                                                                                                    |[0x8000028c]:mulhsu s2, s3, a7<br> [0x80000290]:sw s2, 0x34(ra)<br>     |
|  15|[0x8000614c]<br>0x0000B504<br> |- rs1 : x16<br> - rs2 : x18<br> - rd : x17<br>                                                                                                                                                    |[0x800002a0]:mulhsu a7, a6, s2<br> [0x800002a4]:sw a7, 0x38(ra)<br>     |
|  16|[0x80006150]<br>0x0000B504<br> |- rs1 : x17<br> - rs2 : x15<br> - rd : x16<br>                                                                                                                                                    |[0x800002b4]:mulhsu a6, a7, a5<br> [0x800002b8]:sw a6, 0x3c(ra)<br>     |
|  17|[0x80006154]<br>0x0000B504<br> |- rs1 : x14<br> - rs2 : x16<br> - rd : x15<br>                                                                                                                                                    |[0x800002c8]:mulhsu a5, a4, a6<br> [0x800002cc]:sw a5, 0x40(ra)<br>     |
|  18|[0x80006158]<br>0x0000B504<br> |- rs1 : x15<br> - rs2 : x13<br> - rd : x14<br>                                                                                                                                                    |[0x800002e0]:mulhsu a4, a5, a3<br> [0x800002e4]:sw a4, 0x44(ra)<br>     |
|  19|[0x8000615c]<br>0x0000B504<br> |- rs1 : x12<br> - rs2 : x14<br> - rd : x13<br>                                                                                                                                                    |[0x800002f8]:mulhsu a3, a2, a4<br> [0x800002fc]:sw a3, 0x48(ra)<br>     |
|  20|[0x80006160]<br>0x0000B504<br> |- rs1 : x13<br> - rs2 : x11<br> - rd : x12<br>                                                                                                                                                    |[0x80000310]:mulhsu a2, a3, a1<br> [0x80000314]:sw a2, 0x4c(ra)<br>     |
|  21|[0x80006164]<br>0x0000B504<br> |- rs1 : x10<br> - rs2 : x12<br> - rd : x11<br>                                                                                                                                                    |[0x80000328]:mulhsu a1, a0, a2<br> [0x8000032c]:sw a1, 0x50(ra)<br>     |
|  22|[0x80006168]<br>0x0000B504<br> |- rs1 : x11<br> - rs2 : x9<br> - rd : x10<br>                                                                                                                                                     |[0x80000340]:mulhsu a0, a1, s1<br> [0x80000344]:sw a0, 0x54(ra)<br>     |
|  23|[0x8000616c]<br>0x0000B504<br> |- rs1 : x8<br> - rs2 : x10<br> - rd : x9<br>                                                                                                                                                      |[0x80000358]:mulhsu s1, fp, a0<br> [0x8000035c]:sw s1, 0x58(ra)<br>     |
|  24|[0x80006170]<br>0x0000B503<br> |- rs1 : x9<br> - rs2 : x7<br> - rd : x8<br>                                                                                                                                                       |[0x80000370]:mulhsu fp, s1, t2<br> [0x80000374]:sw fp, 0x5c(ra)<br>     |
|  25|[0x80006174]<br>0x0000B502<br> |- rs1 : x6<br> - rs2 : x8<br> - rd : x7<br>                                                                                                                                                       |[0x80000388]:mulhsu t2, t1, fp<br> [0x8000038c]:sw t2, 0x60(ra)<br>     |
|  26|[0x80006178]<br>0x0000B4FF<br> |- rs1 : x7<br> - rs2 : x5<br> - rd : x6<br>                                                                                                                                                       |[0x800003d0]:mulhsu t1, t2, t0<br> [0x800003d4]:sw t1, 0x0(fp)<br>      |
|  27|[0x8000617c]<br>0x0000B4F9<br> |- rs1 : x4<br> - rs2 : x6<br> - rd : x5<br>                                                                                                                                                       |[0x800003e8]:mulhsu t0, tp, t1<br> [0x800003ec]:sw t0, 0x4(fp)<br>      |
|  28|[0x80006180]<br>0x0000B4EE<br> |- rs1 : x5<br> - rs2 : x3<br> - rd : x4<br>                                                                                                                                                       |[0x80000400]:mulhsu tp, t0, gp<br> [0x80000404]:sw tp, 0x8(fp)<br>      |
|  29|[0x80006184]<br>0x0000B4D7<br> |- rs1 : x2<br> - rs2 : x4<br> - rd : x3<br>                                                                                                                                                       |[0x80000418]:mulhsu gp, sp, tp<br> [0x8000041c]:sw gp, 0xc(fp)<br>      |
|  30|[0x80006188]<br>0x0000B4AA<br> |- rs1 : x3<br> - rs2 : x1<br> - rd : x2<br>                                                                                                                                                       |[0x80000430]:mulhsu sp, gp, ra<br> [0x80000434]:sw sp, 0x10(fp)<br>     |
|  31|[0x8000618c]<br>0x00000000<br> |- rs1 : x0<br> - rs2 : x2<br> - rd : x1<br>                                                                                                                                                       |[0x80000444]:mulhsu ra, zero, sp<br> [0x80000448]:sw ra, 0x14(fp)<br>   |
|  32|[0x80006190]<br>0x0000B39A<br> |- rs1 : x1<br>                                                                                                                                                                                    |[0x8000045c]:mulhsu t6, ra, t5<br> [0x80000460]:sw t6, 0x18(fp)<br>     |
|  33|[0x80006194]<br>0x00000000<br> |- rs2 : x0<br> - rs1_val==46341 and rs2_val==0<br>                                                                                                                                                |[0x80000470]:mulhsu t6, t5, zero<br> [0x80000474]:sw t6, 0x1c(fp)<br>   |
|  34|[0x80006198]<br>0x00000000<br> |- rd : x0<br>                                                                                                                                                                                     |[0x80000488]:mulhsu zero, t6, t5<br> [0x8000048c]:sw zero, 0x20(fp)<br> |
|  35|[0x80006228]<br>0x00000000<br> |- rs2_val == 1<br> - rs1_val==46341 and rs2_val==1<br>                                                                                                                                            |[0x8000073c]:mulhsu t6, t5, t4<br> [0x80000740]:sw t6, 0xb0(fp)<br>     |
|  36|[0x8000622c]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==2<br>                                                                                                                                                               |[0x80000750]:mulhsu t6, t5, t4<br> [0x80000754]:sw t6, 0xb4(fp)<br>     |
|  37|[0x80006230]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==4<br>                                                                                                                                                               |[0x80000764]:mulhsu t6, t5, t4<br> [0x80000768]:sw t6, 0xb8(fp)<br>     |
|  38|[0x800062a4]<br>0x00000000<br> |- rs1_val == 1<br>                                                                                                                                                                                |[0x800009a8]:mulhsu t6, t5, t4<br> [0x800009ac]:sw t6, 0x12c(fp)<br>    |
|  39|[0x800062a8]<br>0x00000000<br> |- rs1_val==2 and rs2_val==65536<br>                                                                                                                                                               |[0x800009b8]:mulhsu t6, t5, t4<br> [0x800009bc]:sw t6, 0x130(fp)<br>    |
|  40|[0x800062ac]<br>0x00000000<br> |- rs1_val==4 and rs2_val==65536<br>                                                                                                                                                               |[0x800009c8]:mulhsu t6, t5, t4<br> [0x800009cc]:sw t6, 0x134(fp)<br>    |
|  41|[0x80006420]<br>0x0000B504<br> |- rs2_val == (2**(xlen)-1)<br>                                                                                                                                                                    |[0x800010f4]:mulhsu t6, t5, t4<br> [0x800010f8]:sw t6, 0x2a8(fp)<br>    |
|  42|[0x80006490]<br>0x00000001<br> |- rs1_val==5 and rs2_val==1431655766<br>                                                                                                                                                          |[0x80001328]:mulhsu t6, t5, t4<br> [0x8000132c]:sw t6, 0x318(fp)<br>    |
|  43|[0x80006494]<br>0x00000003<br> |- rs1_val==5 and rs2_val==2863311531<br>                                                                                                                                                          |[0x8000133c]:mulhsu t6, t5, t4<br> [0x80001340]:sw t6, 0x31c(fp)<br>    |
|  44|[0x80006498]<br>0x00000000<br> |- rs1_val==5 and rs2_val==6<br>                                                                                                                                                                   |[0x8000134c]:mulhsu t6, t5, t4<br> [0x80001350]:sw t6, 0x320(fp)<br>    |
|  45|[0x8000649c]<br>0x00000001<br> |- rs1_val==5 and rs2_val==858993460<br>                                                                                                                                                           |[0x80001360]:mulhsu t6, t5, t4<br> [0x80001364]:sw t6, 0x324(fp)<br>    |
|  46|[0x800064a0]<br>0x00000002<br> |- rs1_val==5 and rs2_val==1717986919<br>                                                                                                                                                          |[0x80001374]:mulhsu t6, t5, t4<br> [0x80001378]:sw t6, 0x328(fp)<br>    |
|  47|[0x800064a4]<br>0x00000000<br> |- rs1_val==5 and rs2_val==46341<br>                                                                                                                                                               |[0x80001388]:mulhsu t6, t5, t4<br> [0x8000138c]:sw t6, 0x32c(fp)<br>    |
|  48|[0x800064a8]<br>0x00000000<br> |- rs1_val==5 and rs2_val==1<br>                                                                                                                                                                   |[0x80001398]:mulhsu t6, t5, t4<br> [0x8000139c]:sw t6, 0x330(fp)<br>    |
|  49|[0x800064ac]<br>0x00000000<br> |- rs1_val==5 and rs2_val==65536<br>                                                                                                                                                               |[0x800013a8]:mulhsu t6, t5, t4<br> [0x800013ac]:sw t6, 0x334(fp)<br>    |
|  50|[0x800064b0]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==3<br>                                                                                                                                                           |[0x800013bc]:mulhsu t6, t5, t4<br> [0x800013c0]:sw t6, 0x338(fp)<br>    |
|  51|[0x800064b4]<br>0x11111110<br> |- rs1_val==858993459 and rs2_val==1431655765<br>                                                                                                                                                  |[0x800013d4]:mulhsu t6, t5, t4<br> [0x800013d8]:sw t6, 0x33c(fp)<br>    |
|  52|[0x800064b8]<br>0x22222221<br> |- rs1_val==858993459 and rs2_val==2863311530<br>                                                                                                                                                  |[0x800013ec]:mulhsu t6, t5, t4<br> [0x800013f0]:sw t6, 0x340(fp)<br>    |
|  53|[0x800064bc]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==5<br>                                                                                                                                                           |[0x80001400]:mulhsu t6, t5, t4<br> [0x80001404]:sw t6, 0x344(fp)<br>    |
|  54|[0x800064c0]<br>0x0A3D70A3<br> |- rs1_val==858993459 and rs2_val==858993459<br>                                                                                                                                                   |[0x80001418]:mulhsu t6, t5, t4<br> [0x8000141c]:sw t6, 0x348(fp)<br>    |
|  55|[0x800064c4]<br>0x147AE147<br> |- rs1_val==858993459 and rs2_val==1717986918<br>                                                                                                                                                  |[0x80001430]:mulhsu t6, t5, t4<br> [0x80001434]:sw t6, 0x34c(fp)<br>    |
|  56|[0x800064c8]<br>0x00002433<br> |- rs1_val==858993459 and rs2_val==46340<br>                                                                                                                                                       |[0x80001448]:mulhsu t6, t5, t4<br> [0x8000144c]:sw t6, 0x350(fp)<br>    |
|  57|[0x800064cc]<br>0x00003332<br> |- rs1_val==858993459 and rs2_val==65535<br>                                                                                                                                                       |[0x80001460]:mulhsu t6, t5, t4<br> [0x80001464]:sw t6, 0x354(fp)<br>    |
|  58|[0x800064d0]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==2<br>                                                                                                                                                           |[0x80001474]:mulhsu t6, t5, t4<br> [0x80001478]:sw t6, 0x358(fp)<br>    |
|  59|[0x800064d4]<br>0x11111110<br> |- rs1_val==858993459 and rs2_val==1431655764<br>                                                                                                                                                  |[0x8000148c]:mulhsu t6, t5, t4<br> [0x80001490]:sw t6, 0x35c(fp)<br>    |
|  60|[0x800064d8]<br>0x22222221<br> |- rs1_val==858993459 and rs2_val==2863311529<br>                                                                                                                                                  |[0x800014a4]:mulhsu t6, t5, t4<br> [0x800014a8]:sw t6, 0x360(fp)<br>    |
|  61|[0x800064dc]<br>0x0A3D70A3<br> |- rs1_val==858993459 and rs2_val==858993458<br>                                                                                                                                                   |[0x800014bc]:mulhsu t6, t5, t4<br> [0x800014c0]:sw t6, 0x364(fp)<br>    |
|  62|[0x800064e0]<br>0x147AE147<br> |- rs1_val==858993459 and rs2_val==1717986917<br>                                                                                                                                                  |[0x800014d4]:mulhsu t6, t5, t4<br> [0x800014d8]:sw t6, 0x368(fp)<br>    |
|  63|[0x800064e4]<br>0x00002433<br> |- rs1_val==858993459 and rs2_val==46339<br>                                                                                                                                                       |[0x800014ec]:mulhsu t6, t5, t4<br> [0x800014f0]:sw t6, 0x36c(fp)<br>    |
|  64|[0x800064e8]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==0<br>                                                                                                                                                           |[0x80001500]:mulhsu t6, t5, t4<br> [0x80001504]:sw t6, 0x370(fp)<br>    |
|  65|[0x800064ec]<br>0x00003332<br> |- rs1_val==858993459 and rs2_val==65534<br>                                                                                                                                                       |[0x80001518]:mulhsu t6, t5, t4<br> [0x8000151c]:sw t6, 0x374(fp)<br>    |
|  66|[0x800064f0]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==4<br>                                                                                                                                                           |[0x8000152c]:mulhsu t6, t5, t4<br> [0x80001530]:sw t6, 0x378(fp)<br>    |
|  67|[0x800064f4]<br>0x11111111<br> |- rs1_val==858993459 and rs2_val==1431655766<br>                                                                                                                                                  |[0x80001544]:mulhsu t6, t5, t4<br> [0x80001548]:sw t6, 0x37c(fp)<br>    |
|  68|[0x800064f8]<br>0x22222222<br> |- rs1_val==858993459 and rs2_val==2863311531<br>                                                                                                                                                  |[0x8000155c]:mulhsu t6, t5, t4<br> [0x80001560]:sw t6, 0x380(fp)<br>    |
|  69|[0x800064fc]<br>0x00000001<br> |- rs1_val==858993459 and rs2_val==6<br>                                                                                                                                                           |[0x80001570]:mulhsu t6, t5, t4<br> [0x80001574]:sw t6, 0x384(fp)<br>    |
|  70|[0x80006500]<br>0x0A3D70A3<br> |- rs1_val==858993459 and rs2_val==858993460<br>                                                                                                                                                   |[0x80001588]:mulhsu t6, t5, t4<br> [0x8000158c]:sw t6, 0x388(fp)<br>    |
|  71|[0x80006504]<br>0x147AE147<br> |- rs1_val==858993459 and rs2_val==1717986919<br>                                                                                                                                                  |[0x800015a0]:mulhsu t6, t5, t4<br> [0x800015a4]:sw t6, 0x38c(fp)<br>    |
|  72|[0x80006508]<br>0x00002434<br> |- rs1_val==858993459 and rs2_val==46341<br>                                                                                                                                                       |[0x800015b8]:mulhsu t6, t5, t4<br> [0x800015bc]:sw t6, 0x390(fp)<br>    |
|  73|[0x8000650c]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==1<br>                                                                                                                                                           |[0x800015cc]:mulhsu t6, t5, t4<br> [0x800015d0]:sw t6, 0x394(fp)<br>    |
|  74|[0x80006510]<br>0x00003333<br> |- rs1_val==858993459 and rs2_val==65536<br>                                                                                                                                                       |[0x800015e0]:mulhsu t6, t5, t4<br> [0x800015e4]:sw t6, 0x398(fp)<br>    |
|  75|[0x80006514]<br>0x00000001<br> |- rs1_val==1717986918 and rs2_val==3<br>                                                                                                                                                          |[0x800015f4]:mulhsu t6, t5, t4<br> [0x800015f8]:sw t6, 0x39c(fp)<br>    |
|  76|[0x80006518]<br>0x22222221<br> |- rs1_val==1717986918 and rs2_val==1431655765<br>                                                                                                                                                 |[0x8000160c]:mulhsu t6, t5, t4<br> [0x80001610]:sw t6, 0x3a0(fp)<br>    |
|  77|[0x8000651c]<br>0x44444443<br> |- rs1_val==1717986918 and rs2_val==2863311530<br>                                                                                                                                                 |[0x80001624]:mulhsu t6, t5, t4<br> [0x80001628]:sw t6, 0x3a4(fp)<br>    |
|  78|[0x80006520]<br>0x00000001<br> |- rs1_val==1717986918 and rs2_val==5<br>                                                                                                                                                          |[0x80001638]:mulhsu t6, t5, t4<br> [0x8000163c]:sw t6, 0x3a8(fp)<br>    |
|  79|[0x80006524]<br>0x147AE147<br> |- rs1_val==1717986918 and rs2_val==858993459<br>                                                                                                                                                  |[0x80001650]:mulhsu t6, t5, t4<br> [0x80001654]:sw t6, 0x3ac(fp)<br>    |
|  80|[0x80006528]<br>0x28F5C28F<br> |- rs1_val==1717986918 and rs2_val==1717986918<br>                                                                                                                                                 |[0x80001668]:mulhsu t6, t5, t4<br> [0x8000166c]:sw t6, 0x3b0(fp)<br>    |
|  81|[0x8000652c]<br>0x00004867<br> |- rs1_val==1717986918 and rs2_val==46340<br>                                                                                                                                                      |[0x80001680]:mulhsu t6, t5, t4<br> [0x80001684]:sw t6, 0x3b4(fp)<br>    |
|  82|[0x80006530]<br>0x00006665<br> |- rs1_val==1717986918 and rs2_val==65535<br>                                                                                                                                                      |[0x80001698]:mulhsu t6, t5, t4<br> [0x8000169c]:sw t6, 0x3b8(fp)<br>    |
|  83|[0x80006534]<br>0x00000000<br> |- rs1_val==1717986918 and rs2_val==2<br>                                                                                                                                                          |[0x800016ac]:mulhsu t6, t5, t4<br> [0x800016b0]:sw t6, 0x3bc(fp)<br>    |
|  84|[0x80006538]<br>0x22222221<br> |- rs1_val==1717986918 and rs2_val==1431655764<br>                                                                                                                                                 |[0x800016c4]:mulhsu t6, t5, t4<br> [0x800016c8]:sw t6, 0x3c0(fp)<br>    |
|  85|[0x8000653c]<br>0x44444443<br> |- rs1_val==1717986918 and rs2_val==2863311529<br>                                                                                                                                                 |[0x800016dc]:mulhsu t6, t5, t4<br> [0x800016e0]:sw t6, 0x3c4(fp)<br>    |
|  86|[0x80006540]<br>0x147AE147<br> |- rs1_val==1717986918 and rs2_val==858993458<br>                                                                                                                                                  |[0x800016f4]:mulhsu t6, t5, t4<br> [0x800016f8]:sw t6, 0x3c8(fp)<br>    |
|  87|[0x80006544]<br>0x28F5C28E<br> |- rs1_val==1717986918 and rs2_val==1717986917<br>                                                                                                                                                 |[0x8000170c]:mulhsu t6, t5, t4<br> [0x80001710]:sw t6, 0x3cc(fp)<br>    |
|  88|[0x80006548]<br>0x00004867<br> |- rs1_val==1717986918 and rs2_val==46339<br>                                                                                                                                                      |[0x80001724]:mulhsu t6, t5, t4<br> [0x80001728]:sw t6, 0x3d0(fp)<br>    |
|  89|[0x8000654c]<br>0x00000000<br> |- rs1_val==1717986918 and rs2_val==0<br>                                                                                                                                                          |[0x80001738]:mulhsu t6, t5, t4<br> [0x8000173c]:sw t6, 0x3d4(fp)<br>    |
|  90|[0x80006550]<br>0x00006665<br> |- rs1_val==1717986918 and rs2_val==65534<br>                                                                                                                                                      |[0x80001750]:mulhsu t6, t5, t4<br> [0x80001754]:sw t6, 0x3d8(fp)<br>    |
|  91|[0x80006554]<br>0x00000001<br> |- rs1_val==1717986918 and rs2_val==4<br>                                                                                                                                                          |[0x80001764]:mulhsu t6, t5, t4<br> [0x80001768]:sw t6, 0x3dc(fp)<br>    |
|  92|[0x80006558]<br>0x22222222<br> |- rs1_val==1717986918 and rs2_val==1431655766<br>                                                                                                                                                 |[0x8000177c]:mulhsu t6, t5, t4<br> [0x80001780]:sw t6, 0x3e0(fp)<br>    |
|  93|[0x8000655c]<br>0x44444444<br> |- rs1_val==1717986918 and rs2_val==2863311531<br>                                                                                                                                                 |[0x80001794]:mulhsu t6, t5, t4<br> [0x80001798]:sw t6, 0x3e4(fp)<br>    |
|  94|[0x80006560]<br>0x00000002<br> |- rs1_val==1717986918 and rs2_val==6<br>                                                                                                                                                          |[0x800017a8]:mulhsu t6, t5, t4<br> [0x800017ac]:sw t6, 0x3e8(fp)<br>    |
|  95|[0x80006564]<br>0x147AE147<br> |- rs1_val==1717986918 and rs2_val==858993460<br>                                                                                                                                                  |[0x800017c0]:mulhsu t6, t5, t4<br> [0x800017c4]:sw t6, 0x3ec(fp)<br>    |
|  96|[0x80006568]<br>0x28F5C28F<br> |- rs1_val==1717986918 and rs2_val==1717986919<br>                                                                                                                                                 |[0x800017d8]:mulhsu t6, t5, t4<br> [0x800017dc]:sw t6, 0x3f0(fp)<br>    |
|  97|[0x8000656c]<br>0x00004868<br> |- rs1_val==1717986918 and rs2_val==46341<br>                                                                                                                                                      |[0x800017f0]:mulhsu t6, t5, t4<br> [0x800017f4]:sw t6, 0x3f4(fp)<br>    |
|  98|[0x80006570]<br>0x00000000<br> |- rs1_val==1717986918 and rs2_val==1<br>                                                                                                                                                          |[0x80001804]:mulhsu t6, t5, t4<br> [0x80001808]:sw t6, 0x3f8(fp)<br>    |
|  99|[0x80006574]<br>0x00006666<br> |- rs1_val==1717986918 and rs2_val==65536<br>                                                                                                                                                      |[0x80001818]:mulhsu t6, t5, t4<br> [0x8000181c]:sw t6, 0x3fc(fp)<br>    |
| 100|[0x80006578]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==3<br>                                                                                                                                                              |[0x8000184c]:mulhsu t6, t5, t4<br> [0x80001850]:sw t6, 0x0(fp)<br>      |
| 101|[0x8000657c]<br>0xFFFFC3A9<br> |- rs1_val==-46340 and rs2_val==1431655765<br>                                                                                                                                                     |[0x80001864]:mulhsu t6, t5, t4<br> [0x80001868]:sw t6, 0x4(fp)<br>      |
| 102|[0x80006580]<br>0xFFFF8752<br> |- rs1_val==-46340 and rs2_val==2863311530<br>                                                                                                                                                     |[0x8000187c]:mulhsu t6, t5, t4<br> [0x80001880]:sw t6, 0x8(fp)<br>      |
| 103|[0x80006584]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==5<br>                                                                                                                                                              |[0x80001890]:mulhsu t6, t5, t4<br> [0x80001894]:sw t6, 0xc(fp)<br>      |
| 104|[0x80006588]<br>0xFFFFDBCC<br> |- rs1_val==-46340 and rs2_val==858993459<br>                                                                                                                                                      |[0x800018a8]:mulhsu t6, t5, t4<br> [0x800018ac]:sw t6, 0x10(fp)<br>     |
| 105|[0x8000658c]<br>0xFFFFB798<br> |- rs1_val==-46340 and rs2_val==1717986918<br>                                                                                                                                                     |[0x800018c0]:mulhsu t6, t5, t4<br> [0x800018c4]:sw t6, 0x14(fp)<br>     |
| 106|[0x80006590]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==46340<br>                                                                                                                                                          |[0x800018d8]:mulhsu t6, t5, t4<br> [0x800018dc]:sw t6, 0x18(fp)<br>     |
| 107|[0x80006594]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==65535<br>                                                                                                                                                          |[0x800018f0]:mulhsu t6, t5, t4<br> [0x800018f4]:sw t6, 0x1c(fp)<br>     |
| 108|[0x80006598]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==2<br>                                                                                                                                                              |[0x80001904]:mulhsu t6, t5, t4<br> [0x80001908]:sw t6, 0x20(fp)<br>     |
| 109|[0x8000659c]<br>0xFFFFC3A9<br> |- rs1_val==-46340 and rs2_val==1431655764<br>                                                                                                                                                     |[0x8000191c]:mulhsu t6, t5, t4<br> [0x80001920]:sw t6, 0x24(fp)<br>     |
| 110|[0x800065a0]<br>0xFFFF8752<br> |- rs1_val==-46340 and rs2_val==2863311529<br>                                                                                                                                                     |[0x80001934]:mulhsu t6, t5, t4<br> [0x80001938]:sw t6, 0x28(fp)<br>     |
| 111|[0x800065a4]<br>0xFFFFDBCC<br> |- rs1_val==-46340 and rs2_val==858993458<br>                                                                                                                                                      |[0x8000194c]:mulhsu t6, t5, t4<br> [0x80001950]:sw t6, 0x2c(fp)<br>     |
| 112|[0x800065a8]<br>0xFFFFB798<br> |- rs1_val==-46340 and rs2_val==1717986917<br>                                                                                                                                                     |[0x80001964]:mulhsu t6, t5, t4<br> [0x80001968]:sw t6, 0x30(fp)<br>     |
| 113|[0x800065ac]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==46339<br>                                                                                                                                                          |[0x8000197c]:mulhsu t6, t5, t4<br> [0x80001980]:sw t6, 0x34(fp)<br>     |
| 114|[0x800065b0]<br>0x00000000<br> |- rs1_val==-46340 and rs2_val==0<br>                                                                                                                                                              |[0x80001990]:mulhsu t6, t5, t4<br> [0x80001994]:sw t6, 0x38(fp)<br>     |
| 115|[0x800065b4]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==65534<br>                                                                                                                                                          |[0x800019a8]:mulhsu t6, t5, t4<br> [0x800019ac]:sw t6, 0x3c(fp)<br>     |
| 116|[0x800065b8]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==4<br>                                                                                                                                                              |[0x800019bc]:mulhsu t6, t5, t4<br> [0x800019c0]:sw t6, 0x40(fp)<br>     |
| 117|[0x800065bc]<br>0xFFFFC3A9<br> |- rs1_val==-46340 and rs2_val==1431655766<br>                                                                                                                                                     |[0x800019d4]:mulhsu t6, t5, t4<br> [0x800019d8]:sw t6, 0x44(fp)<br>     |
| 118|[0x800065c0]<br>0xFFFF8752<br> |- rs1_val==-46340 and rs2_val==2863311531<br>                                                                                                                                                     |[0x800019ec]:mulhsu t6, t5, t4<br> [0x800019f0]:sw t6, 0x48(fp)<br>     |
| 119|[0x800065c4]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==6<br>                                                                                                                                                              |[0x80001a00]:mulhsu t6, t5, t4<br> [0x80001a04]:sw t6, 0x4c(fp)<br>     |
| 120|[0x800065c8]<br>0xFFFFDBCB<br> |- rs1_val==-46340 and rs2_val==858993460<br>                                                                                                                                                      |[0x80001a18]:mulhsu t6, t5, t4<br> [0x80001a1c]:sw t6, 0x50(fp)<br>     |
| 121|[0x800065cc]<br>0xFFFFB797<br> |- rs1_val==-46340 and rs2_val==1717986919<br>                                                                                                                                                     |[0x80001a30]:mulhsu t6, t5, t4<br> [0x80001a34]:sw t6, 0x54(fp)<br>     |
| 122|[0x800065d0]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==46341<br>                                                                                                                                                          |[0x80001a48]:mulhsu t6, t5, t4<br> [0x80001a4c]:sw t6, 0x58(fp)<br>     |
| 123|[0x800065d4]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==1<br>                                                                                                                                                              |[0x80001a5c]:mulhsu t6, t5, t4<br> [0x80001a60]:sw t6, 0x5c(fp)<br>     |
| 124|[0x800065d8]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==65536<br>                                                                                                                                                          |[0x80001a70]:mulhsu t6, t5, t4<br> [0x80001a74]:sw t6, 0x60(fp)<br>     |
| 125|[0x800065dc]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==3<br>                                                                                                                                                               |[0x80001a84]:mulhsu t6, t5, t4<br> [0x80001a88]:sw t6, 0x64(fp)<br>     |
| 126|[0x800065e0]<br>0x00003C56<br> |- rs1_val==46340 and rs2_val==1431655765<br>                                                                                                                                                      |[0x80001a9c]:mulhsu t6, t5, t4<br> [0x80001aa0]:sw t6, 0x68(fp)<br>     |
| 127|[0x800065e4]<br>0x000078AD<br> |- rs1_val==46340 and rs2_val==2863311530<br>                                                                                                                                                      |[0x80001ab4]:mulhsu t6, t5, t4<br> [0x80001ab8]:sw t6, 0x6c(fp)<br>     |
| 128|[0x800065e8]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==5<br>                                                                                                                                                               |[0x80001ac8]:mulhsu t6, t5, t4<br> [0x80001acc]:sw t6, 0x70(fp)<br>     |
| 129|[0x800065ec]<br>0x00002433<br> |- rs1_val==46340 and rs2_val==858993459<br>                                                                                                                                                       |[0x80001ae0]:mulhsu t6, t5, t4<br> [0x80001ae4]:sw t6, 0x74(fp)<br>     |
| 130|[0x800065f0]<br>0x00004867<br> |- rs1_val==46340 and rs2_val==1717986918<br>                                                                                                                                                      |[0x80001af8]:mulhsu t6, t5, t4<br> [0x80001afc]:sw t6, 0x78(fp)<br>     |
| 131|[0x800065f4]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==46340<br>                                                                                                                                                           |[0x80001b10]:mulhsu t6, t5, t4<br> [0x80001b14]:sw t6, 0x7c(fp)<br>     |
| 132|[0x800065f8]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==65535<br>                                                                                                                                                           |[0x80001b28]:mulhsu t6, t5, t4<br> [0x80001b2c]:sw t6, 0x80(fp)<br>     |
| 133|[0x800065fc]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==2<br>                                                                                                                                                               |[0x80001b3c]:mulhsu t6, t5, t4<br> [0x80001b40]:sw t6, 0x84(fp)<br>     |
| 134|[0x80006600]<br>0x00003C56<br> |- rs1_val==46340 and rs2_val==1431655764<br>                                                                                                                                                      |[0x80001b54]:mulhsu t6, t5, t4<br> [0x80001b58]:sw t6, 0x88(fp)<br>     |
| 135|[0x80006604]<br>0x000078AD<br> |- rs1_val==46340 and rs2_val==2863311529<br>                                                                                                                                                      |[0x80001b6c]:mulhsu t6, t5, t4<br> [0x80001b70]:sw t6, 0x8c(fp)<br>     |
| 136|[0x80006608]<br>0x00002433<br> |- rs1_val==46340 and rs2_val==858993458<br>                                                                                                                                                       |[0x80001b84]:mulhsu t6, t5, t4<br> [0x80001b88]:sw t6, 0x90(fp)<br>     |
| 137|[0x8000660c]<br>0x00004867<br> |- rs1_val==46340 and rs2_val==1717986917<br>                                                                                                                                                      |[0x80001b9c]:mulhsu t6, t5, t4<br> [0x80001ba0]:sw t6, 0x94(fp)<br>     |
| 138|[0x80006610]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==46339<br>                                                                                                                                                           |[0x80001bb4]:mulhsu t6, t5, t4<br> [0x80001bb8]:sw t6, 0x98(fp)<br>     |
| 139|[0x80006614]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==0<br>                                                                                                                                                               |[0x80001bc8]:mulhsu t6, t5, t4<br> [0x80001bcc]:sw t6, 0x9c(fp)<br>     |
| 140|[0x80006618]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==65534<br>                                                                                                                                                           |[0x80001be0]:mulhsu t6, t5, t4<br> [0x80001be4]:sw t6, 0xa0(fp)<br>     |
| 141|[0x8000661c]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==4<br>                                                                                                                                                               |[0x80001bf4]:mulhsu t6, t5, t4<br> [0x80001bf8]:sw t6, 0xa4(fp)<br>     |
| 142|[0x80006620]<br>0x00003C56<br> |- rs1_val==46340 and rs2_val==1431655766<br>                                                                                                                                                      |[0x80001c0c]:mulhsu t6, t5, t4<br> [0x80001c10]:sw t6, 0xa8(fp)<br>     |
| 143|[0x80006624]<br>0x000078AD<br> |- rs1_val==46340 and rs2_val==2863311531<br>                                                                                                                                                      |[0x80001c24]:mulhsu t6, t5, t4<br> [0x80001c28]:sw t6, 0xac(fp)<br>     |
| 144|[0x80006628]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==6<br>                                                                                                                                                               |[0x80001c38]:mulhsu t6, t5, t4<br> [0x80001c3c]:sw t6, 0xb0(fp)<br>     |
| 145|[0x8000662c]<br>0x00002434<br> |- rs1_val==46340 and rs2_val==858993460<br>                                                                                                                                                       |[0x80001c50]:mulhsu t6, t5, t4<br> [0x80001c54]:sw t6, 0xb4(fp)<br>     |
| 146|[0x80006630]<br>0x00004868<br> |- rs1_val==46340 and rs2_val==1717986919<br>                                                                                                                                                      |[0x80001c68]:mulhsu t6, t5, t4<br> [0x80001c6c]:sw t6, 0xb8(fp)<br>     |
| 147|[0x80006634]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==46341<br>                                                                                                                                                           |[0x80001c80]:mulhsu t6, t5, t4<br> [0x80001c84]:sw t6, 0xbc(fp)<br>     |
| 148|[0x80006638]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==1<br>                                                                                                                                                               |[0x80001c94]:mulhsu t6, t5, t4<br> [0x80001c98]:sw t6, 0xc0(fp)<br>     |
| 149|[0x8000663c]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==65536<br>                                                                                                                                                           |[0x80001ca8]:mulhsu t6, t5, t4<br> [0x80001cac]:sw t6, 0xc4(fp)<br>     |
| 150|[0x80006640]<br>0x00000000<br> |- rs1_val==2 and rs2_val==3<br>                                                                                                                                                                   |[0x80001cb8]:mulhsu t6, t5, t4<br> [0x80001cbc]:sw t6, 0xc8(fp)<br>     |
| 151|[0x80006644]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1431655765<br>                                                                                                                                                          |[0x80001ccc]:mulhsu t6, t5, t4<br> [0x80001cd0]:sw t6, 0xcc(fp)<br>     |
| 152|[0x80006648]<br>0x00000001<br> |- rs1_val==2 and rs2_val==2863311530<br>                                                                                                                                                          |[0x80001ce0]:mulhsu t6, t5, t4<br> [0x80001ce4]:sw t6, 0xd0(fp)<br>     |
| 153|[0x8000664c]<br>0x00000000<br> |- rs1_val==2 and rs2_val==5<br>                                                                                                                                                                   |[0x80001cf0]:mulhsu t6, t5, t4<br> [0x80001cf4]:sw t6, 0xd4(fp)<br>     |
| 154|[0x80006650]<br>0x00000000<br> |- rs1_val==2 and rs2_val==858993459<br>                                                                                                                                                           |[0x80001d04]:mulhsu t6, t5, t4<br> [0x80001d08]:sw t6, 0xd8(fp)<br>     |
| 155|[0x80006654]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1717986918<br>                                                                                                                                                          |[0x80001d18]:mulhsu t6, t5, t4<br> [0x80001d1c]:sw t6, 0xdc(fp)<br>     |
| 156|[0x80006658]<br>0x00000000<br> |- rs1_val==2 and rs2_val==46340<br>                                                                                                                                                               |[0x80001d2c]:mulhsu t6, t5, t4<br> [0x80001d30]:sw t6, 0xe0(fp)<br>     |
| 157|[0x8000665c]<br>0x00000000<br> |- rs1_val==2 and rs2_val==65535<br>                                                                                                                                                               |[0x80001d40]:mulhsu t6, t5, t4<br> [0x80001d44]:sw t6, 0xe4(fp)<br>     |
| 158|[0x80006660]<br>0x00000000<br> |- rs1_val==2 and rs2_val==2<br>                                                                                                                                                                   |[0x80001d50]:mulhsu t6, t5, t4<br> [0x80001d54]:sw t6, 0xe8(fp)<br>     |
| 159|[0x80006664]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1431655764<br>                                                                                                                                                          |[0x80001d64]:mulhsu t6, t5, t4<br> [0x80001d68]:sw t6, 0xec(fp)<br>     |
| 160|[0x80006668]<br>0x00000001<br> |- rs1_val==2 and rs2_val==2863311529<br>                                                                                                                                                          |[0x80001d78]:mulhsu t6, t5, t4<br> [0x80001d7c]:sw t6, 0xf0(fp)<br>     |
| 161|[0x8000666c]<br>0x00000000<br> |- rs1_val==2 and rs2_val==858993458<br>                                                                                                                                                           |[0x80001d8c]:mulhsu t6, t5, t4<br> [0x80001d90]:sw t6, 0xf4(fp)<br>     |
| 162|[0x80006670]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1717986917<br>                                                                                                                                                          |[0x80001da0]:mulhsu t6, t5, t4<br> [0x80001da4]:sw t6, 0xf8(fp)<br>     |
| 163|[0x80006674]<br>0x00000000<br> |- rs1_val==2 and rs2_val==46339<br>                                                                                                                                                               |[0x80001db4]:mulhsu t6, t5, t4<br> [0x80001db8]:sw t6, 0xfc(fp)<br>     |
| 164|[0x80006678]<br>0x00000000<br> |- rs1_val==2 and rs2_val==0<br>                                                                                                                                                                   |[0x80001dc4]:mulhsu t6, t5, t4<br> [0x80001dc8]:sw t6, 0x100(fp)<br>    |
| 165|[0x8000667c]<br>0x00000000<br> |- rs1_val==2 and rs2_val==65534<br>                                                                                                                                                               |[0x80001dd8]:mulhsu t6, t5, t4<br> [0x80001ddc]:sw t6, 0x104(fp)<br>    |
| 166|[0x80006680]<br>0x00000000<br> |- rs1_val==2 and rs2_val==4<br>                                                                                                                                                                   |[0x80001de8]:mulhsu t6, t5, t4<br> [0x80001dec]:sw t6, 0x108(fp)<br>    |
| 167|[0x80006684]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1431655766<br>                                                                                                                                                          |[0x80001dfc]:mulhsu t6, t5, t4<br> [0x80001e00]:sw t6, 0x10c(fp)<br>    |
| 168|[0x80006688]<br>0x00000001<br> |- rs1_val==2 and rs2_val==2863311531<br>                                                                                                                                                          |[0x80001e10]:mulhsu t6, t5, t4<br> [0x80001e14]:sw t6, 0x110(fp)<br>    |
| 169|[0x8000668c]<br>0x00000000<br> |- rs1_val==2 and rs2_val==6<br>                                                                                                                                                                   |[0x80001e20]:mulhsu t6, t5, t4<br> [0x80001e24]:sw t6, 0x114(fp)<br>    |
| 170|[0x80006690]<br>0x00000000<br> |- rs1_val==2 and rs2_val==858993460<br>                                                                                                                                                           |[0x80001e34]:mulhsu t6, t5, t4<br> [0x80001e38]:sw t6, 0x118(fp)<br>    |
| 171|[0x80006694]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1717986919<br>                                                                                                                                                          |[0x80001e48]:mulhsu t6, t5, t4<br> [0x80001e4c]:sw t6, 0x11c(fp)<br>    |
| 172|[0x80006698]<br>0x00000000<br> |- rs1_val==2 and rs2_val==46341<br>                                                                                                                                                               |[0x80001e5c]:mulhsu t6, t5, t4<br> [0x80001e60]:sw t6, 0x120(fp)<br>    |
| 173|[0x8000669c]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1<br>                                                                                                                                                                   |[0x80001e6c]:mulhsu t6, t5, t4<br> [0x80001e70]:sw t6, 0x124(fp)<br>    |
| 174|[0x800066a0]<br>0x00000000<br> |- rs1_val==1431655764 and rs2_val==3<br>                                                                                                                                                          |[0x80001e80]:mulhsu t6, t5, t4<br> [0x80001e84]:sw t6, 0x128(fp)<br>    |
| 175|[0x800066a4]<br>0x1C71C71B<br> |- rs1_val==1431655764 and rs2_val==1431655765<br>                                                                                                                                                 |[0x80001e98]:mulhsu t6, t5, t4<br> [0x80001e9c]:sw t6, 0x12c(fp)<br>    |
| 176|[0x800066a8]<br>0x38E38E37<br> |- rs1_val==1431655764 and rs2_val==2863311530<br>                                                                                                                                                 |[0x80001eb0]:mulhsu t6, t5, t4<br> [0x80001eb4]:sw t6, 0x130(fp)<br>    |
| 177|[0x800066ac]<br>0x00000001<br> |- rs1_val==1431655764 and rs2_val==5<br>                                                                                                                                                          |[0x80001ec4]:mulhsu t6, t5, t4<br> [0x80001ec8]:sw t6, 0x134(fp)<br>    |
| 178|[0x800066b0]<br>0x11111110<br> |- rs1_val==1431655764 and rs2_val==858993459<br>                                                                                                                                                  |[0x80001edc]:mulhsu t6, t5, t4<br> [0x80001ee0]:sw t6, 0x138(fp)<br>    |
| 179|[0x800066b4]<br>0x22222221<br> |- rs1_val==1431655764 and rs2_val==1717986918<br>                                                                                                                                                 |[0x80001ef4]:mulhsu t6, t5, t4<br> [0x80001ef8]:sw t6, 0x13c(fp)<br>    |
| 180|[0x800066b8]<br>0x00003C56<br> |- rs1_val==1431655764 and rs2_val==46340<br>                                                                                                                                                      |[0x80001f0c]:mulhsu t6, t5, t4<br> [0x80001f10]:sw t6, 0x140(fp)<br>    |
| 181|[0x800066bc]<br>0x00005554<br> |- rs1_val==1431655764 and rs2_val==65535<br>                                                                                                                                                      |[0x80001f24]:mulhsu t6, t5, t4<br> [0x80001f28]:sw t6, 0x144(fp)<br>    |
| 182|[0x800066c0]<br>0x00000000<br> |- rs1_val==1431655764 and rs2_val==2<br>                                                                                                                                                          |[0x80001f38]:mulhsu t6, t5, t4<br> [0x80001f3c]:sw t6, 0x148(fp)<br>    |
| 183|[0x800066c4]<br>0x1C71C71B<br> |- rs1_val==1431655764 and rs2_val==1431655764<br>                                                                                                                                                 |[0x80001f50]:mulhsu t6, t5, t4<br> [0x80001f54]:sw t6, 0x14c(fp)<br>    |
| 184|[0x800066c8]<br>0x38E38E37<br> |- rs1_val==1431655764 and rs2_val==2863311529<br>                                                                                                                                                 |[0x80001f68]:mulhsu t6, t5, t4<br> [0x80001f6c]:sw t6, 0x150(fp)<br>    |
| 185|[0x800066cc]<br>0x11111110<br> |- rs1_val==1431655764 and rs2_val==858993458<br>                                                                                                                                                  |[0x80001f80]:mulhsu t6, t5, t4<br> [0x80001f84]:sw t6, 0x154(fp)<br>    |
| 186|[0x800066d0]<br>0x22222221<br> |- rs1_val==1431655764 and rs2_val==1717986917<br>                                                                                                                                                 |[0x80001f98]:mulhsu t6, t5, t4<br> [0x80001f9c]:sw t6, 0x158(fp)<br>    |
| 187|[0x800066d4]<br>0x00003C56<br> |- rs1_val==1431655764 and rs2_val==46339<br>                                                                                                                                                      |[0x80001fb0]:mulhsu t6, t5, t4<br> [0x80001fb4]:sw t6, 0x15c(fp)<br>    |
| 188|[0x800066d8]<br>0x00000000<br> |- rs1_val==1431655764 and rs2_val==0<br>                                                                                                                                                          |[0x80001fc4]:mulhsu t6, t5, t4<br> [0x80001fc8]:sw t6, 0x160(fp)<br>    |
| 189|[0x800066dc]<br>0x00005554<br> |- rs1_val==1431655764 and rs2_val==65534<br>                                                                                                                                                      |[0x80001fdc]:mulhsu t6, t5, t4<br> [0x80001fe0]:sw t6, 0x164(fp)<br>    |
| 190|[0x800066e0]<br>0x00000001<br> |- rs1_val==1431655764 and rs2_val==4<br>                                                                                                                                                          |[0x80001ff0]:mulhsu t6, t5, t4<br> [0x80001ff4]:sw t6, 0x168(fp)<br>    |
| 191|[0x800066e4]<br>0x1C71C71C<br> |- rs1_val==1431655764 and rs2_val==1431655766<br>                                                                                                                                                 |[0x80002008]:mulhsu t6, t5, t4<br> [0x8000200c]:sw t6, 0x16c(fp)<br>    |
| 192|[0x800066e8]<br>0x38E38E38<br> |- rs1_val==1431655764 and rs2_val==2863311531<br>                                                                                                                                                 |[0x80002020]:mulhsu t6, t5, t4<br> [0x80002024]:sw t6, 0x170(fp)<br>    |
| 193|[0x800066ec]<br>0x00000001<br> |- rs1_val==1431655764 and rs2_val==6<br>                                                                                                                                                          |[0x80002034]:mulhsu t6, t5, t4<br> [0x80002038]:sw t6, 0x174(fp)<br>    |
| 194|[0x800066f0]<br>0x11111111<br> |- rs1_val==1431655764 and rs2_val==858993460<br>                                                                                                                                                  |[0x8000204c]:mulhsu t6, t5, t4<br> [0x80002050]:sw t6, 0x178(fp)<br>    |
| 195|[0x800066f4]<br>0x22222221<br> |- rs1_val==1431655764 and rs2_val==1717986919<br>                                                                                                                                                 |[0x80002064]:mulhsu t6, t5, t4<br> [0x80002068]:sw t6, 0x17c(fp)<br>    |
| 196|[0x800066f8]<br>0x00003C56<br> |- rs1_val==1431655764 and rs2_val==46341<br>                                                                                                                                                      |[0x8000207c]:mulhsu t6, t5, t4<br> [0x80002080]:sw t6, 0x180(fp)<br>    |
| 197|[0x800066fc]<br>0x00000000<br> |- rs1_val==1431655764 and rs2_val==1<br>                                                                                                                                                          |[0x80002090]:mulhsu t6, t5, t4<br> [0x80002094]:sw t6, 0x184(fp)<br>    |
| 198|[0x80006700]<br>0x00005555<br> |- rs1_val==1431655764 and rs2_val==65536<br>                                                                                                                                                      |[0x800020a4]:mulhsu t6, t5, t4<br> [0x800020a8]:sw t6, 0x188(fp)<br>    |
| 199|[0x80006704]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==3<br>                                                                                                                                                           |[0x800020b8]:mulhsu t6, t5, t4<br> [0x800020bc]:sw t6, 0x18c(fp)<br>    |
| 200|[0x80006708]<br>0x11111110<br> |- rs1_val==858993458 and rs2_val==1431655765<br>                                                                                                                                                  |[0x800020d0]:mulhsu t6, t5, t4<br> [0x800020d4]:sw t6, 0x190(fp)<br>    |
| 201|[0x8000670c]<br>0x22222221<br> |- rs1_val==858993458 and rs2_val==2863311530<br>                                                                                                                                                  |[0x800020e8]:mulhsu t6, t5, t4<br> [0x800020ec]:sw t6, 0x194(fp)<br>    |
| 202|[0x80006710]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==5<br>                                                                                                                                                           |[0x800020fc]:mulhsu t6, t5, t4<br> [0x80002100]:sw t6, 0x198(fp)<br>    |
| 203|[0x80006714]<br>0x0A3D70A3<br> |- rs1_val==858993458 and rs2_val==858993459<br>                                                                                                                                                   |[0x80002114]:mulhsu t6, t5, t4<br> [0x80002118]:sw t6, 0x19c(fp)<br>    |
| 204|[0x80006718]<br>0x147AE147<br> |- rs1_val==858993458 and rs2_val==1717986918<br>                                                                                                                                                  |[0x8000212c]:mulhsu t6, t5, t4<br> [0x80002130]:sw t6, 0x1a0(fp)<br>    |
| 205|[0x8000671c]<br>0x00002433<br> |- rs1_val==858993458 and rs2_val==46340<br>                                                                                                                                                       |[0x80002144]:mulhsu t6, t5, t4<br> [0x80002148]:sw t6, 0x1a4(fp)<br>    |
| 206|[0x80006720]<br>0x00003332<br> |- rs1_val==858993458 and rs2_val==65535<br>                                                                                                                                                       |[0x8000215c]:mulhsu t6, t5, t4<br> [0x80002160]:sw t6, 0x1a8(fp)<br>    |
| 207|[0x80006724]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==2<br>                                                                                                                                                           |[0x80002170]:mulhsu t6, t5, t4<br> [0x80002174]:sw t6, 0x1ac(fp)<br>    |
| 208|[0x80006728]<br>0x11111110<br> |- rs1_val==858993458 and rs2_val==1431655764<br>                                                                                                                                                  |[0x80002188]:mulhsu t6, t5, t4<br> [0x8000218c]:sw t6, 0x1b0(fp)<br>    |
| 209|[0x8000672c]<br>0x22222221<br> |- rs1_val==858993458 and rs2_val==2863311529<br>                                                                                                                                                  |[0x800021a0]:mulhsu t6, t5, t4<br> [0x800021a4]:sw t6, 0x1b4(fp)<br>    |
| 210|[0x80006730]<br>0x0A3D70A3<br> |- rs1_val==858993458 and rs2_val==858993458<br>                                                                                                                                                   |[0x800021b8]:mulhsu t6, t5, t4<br> [0x800021bc]:sw t6, 0x1b8(fp)<br>    |
| 211|[0x80006734]<br>0x147AE146<br> |- rs1_val==858993458 and rs2_val==1717986917<br>                                                                                                                                                  |[0x800021d0]:mulhsu t6, t5, t4<br> [0x800021d4]:sw t6, 0x1bc(fp)<br>    |
| 212|[0x80006738]<br>0x00002433<br> |- rs1_val==858993458 and rs2_val==46339<br>                                                                                                                                                       |[0x800021e8]:mulhsu t6, t5, t4<br> [0x800021ec]:sw t6, 0x1c0(fp)<br>    |
| 213|[0x8000673c]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==0<br>                                                                                                                                                           |[0x800021fc]:mulhsu t6, t5, t4<br> [0x80002200]:sw t6, 0x1c4(fp)<br>    |
| 214|[0x80006740]<br>0x00003332<br> |- rs1_val==858993458 and rs2_val==65534<br>                                                                                                                                                       |[0x80002214]:mulhsu t6, t5, t4<br> [0x80002218]:sw t6, 0x1c8(fp)<br>    |
| 215|[0x80006744]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==4<br>                                                                                                                                                           |[0x80002228]:mulhsu t6, t5, t4<br> [0x8000222c]:sw t6, 0x1cc(fp)<br>    |
| 216|[0x80006748]<br>0x11111110<br> |- rs1_val==858993458 and rs2_val==1431655766<br>                                                                                                                                                  |[0x80002240]:mulhsu t6, t5, t4<br> [0x80002244]:sw t6, 0x1d0(fp)<br>    |
| 217|[0x8000674c]<br>0x22222221<br> |- rs1_val==858993458 and rs2_val==2863311531<br>                                                                                                                                                  |[0x80002258]:mulhsu t6, t5, t4<br> [0x8000225c]:sw t6, 0x1d4(fp)<br>    |
| 218|[0x80006750]<br>0x00000001<br> |- rs1_val==858993458 and rs2_val==6<br>                                                                                                                                                           |[0x8000226c]:mulhsu t6, t5, t4<br> [0x80002270]:sw t6, 0x1d8(fp)<br>    |
| 219|[0x80006754]<br>0x0A3D70A3<br> |- rs1_val==858993458 and rs2_val==858993460<br>                                                                                                                                                   |[0x80002284]:mulhsu t6, t5, t4<br> [0x80002288]:sw t6, 0x1dc(fp)<br>    |
| 220|[0x80006758]<br>0x147AE147<br> |- rs1_val==858993458 and rs2_val==1717986919<br>                                                                                                                                                  |[0x8000229c]:mulhsu t6, t5, t4<br> [0x800022a0]:sw t6, 0x1e0(fp)<br>    |
| 221|[0x8000675c]<br>0x00002434<br> |- rs1_val==858993458 and rs2_val==46341<br>                                                                                                                                                       |[0x800022b4]:mulhsu t6, t5, t4<br> [0x800022b8]:sw t6, 0x1e4(fp)<br>    |
| 222|[0x80006760]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==1<br>                                                                                                                                                           |[0x800022c8]:mulhsu t6, t5, t4<br> [0x800022cc]:sw t6, 0x1e8(fp)<br>    |
| 223|[0x80006764]<br>0x00003333<br> |- rs1_val==858993458 and rs2_val==65536<br>                                                                                                                                                       |[0x800022dc]:mulhsu t6, t5, t4<br> [0x800022e0]:sw t6, 0x1ec(fp)<br>    |
| 224|[0x80006768]<br>0x00000001<br> |- rs1_val==1717986917 and rs2_val==3<br>                                                                                                                                                          |[0x800022f0]:mulhsu t6, t5, t4<br> [0x800022f4]:sw t6, 0x1f0(fp)<br>    |
| 225|[0x8000676c]<br>0x22222221<br> |- rs1_val==1717986917 and rs2_val==1431655765<br>                                                                                                                                                 |[0x80002308]:mulhsu t6, t5, t4<br> [0x8000230c]:sw t6, 0x1f4(fp)<br>    |
| 226|[0x80006770]<br>0x44444443<br> |- rs1_val==1717986917 and rs2_val==2863311530<br>                                                                                                                                                 |[0x80002320]:mulhsu t6, t5, t4<br> [0x80002324]:sw t6, 0x1f8(fp)<br>    |
| 227|[0x80006774]<br>0x00000001<br> |- rs1_val==1717986917 and rs2_val==5<br>                                                                                                                                                          |[0x80002334]:mulhsu t6, t5, t4<br> [0x80002338]:sw t6, 0x1fc(fp)<br>    |
| 228|[0x80006778]<br>0x147AE147<br> |- rs1_val==1717986917 and rs2_val==858993459<br>                                                                                                                                                  |[0x8000234c]:mulhsu t6, t5, t4<br> [0x80002350]:sw t6, 0x200(fp)<br>    |
| 229|[0x8000677c]<br>0x28F5C28E<br> |- rs1_val==1717986917 and rs2_val==1717986918<br>                                                                                                                                                 |[0x80002364]:mulhsu t6, t5, t4<br> [0x80002368]:sw t6, 0x204(fp)<br>    |
| 230|[0x80006780]<br>0x00004867<br> |- rs1_val==1717986917 and rs2_val==46340<br>                                                                                                                                                      |[0x8000237c]:mulhsu t6, t5, t4<br> [0x80002380]:sw t6, 0x208(fp)<br>    |
| 231|[0x80006784]<br>0x00006665<br> |- rs1_val==1717986917 and rs2_val==65535<br>                                                                                                                                                      |[0x80002394]:mulhsu t6, t5, t4<br> [0x80002398]:sw t6, 0x20c(fp)<br>    |
| 232|[0x80006788]<br>0x00000000<br> |- rs1_val==1717986917 and rs2_val==2<br>                                                                                                                                                          |[0x800023a8]:mulhsu t6, t5, t4<br> [0x800023ac]:sw t6, 0x210(fp)<br>    |
| 233|[0x8000678c]<br>0x22222221<br> |- rs1_val==1717986917 and rs2_val==1431655764<br>                                                                                                                                                 |[0x800023c0]:mulhsu t6, t5, t4<br> [0x800023c4]:sw t6, 0x214(fp)<br>    |
| 234|[0x80006790]<br>0x44444442<br> |- rs1_val==1717986917 and rs2_val==2863311529<br>                                                                                                                                                 |[0x800023d8]:mulhsu t6, t5, t4<br> [0x800023dc]:sw t6, 0x218(fp)<br>    |
| 235|[0x80006794]<br>0x147AE146<br> |- rs1_val==1717986917 and rs2_val==858993458<br>                                                                                                                                                  |[0x800023f0]:mulhsu t6, t5, t4<br> [0x800023f4]:sw t6, 0x21c(fp)<br>    |
| 236|[0x80006798]<br>0x28F5C28E<br> |- rs1_val==1717986917 and rs2_val==1717986917<br>                                                                                                                                                 |[0x80002408]:mulhsu t6, t5, t4<br> [0x8000240c]:sw t6, 0x220(fp)<br>    |
| 237|[0x8000679c]<br>0x00000000<br> |- rs1_val==4 and rs2_val==46341<br>                                                                                                                                                               |[0x8000241c]:mulhsu t6, t5, t4<br> [0x80002420]:sw t6, 0x224(fp)<br>    |
| 238|[0x800067a0]<br>0x00000000<br> |- rs1_val==4 and rs2_val==1<br>                                                                                                                                                                   |[0x8000242c]:mulhsu t6, t5, t4<br> [0x80002430]:sw t6, 0x228(fp)<br>    |
| 239|[0x800067a4]<br>0x00000001<br> |- rs1_val==1431655766 and rs2_val==3<br>                                                                                                                                                          |[0x80002440]:mulhsu t6, t5, t4<br> [0x80002444]:sw t6, 0x22c(fp)<br>    |
| 240|[0x800067a8]<br>0x1C71C71C<br> |- rs1_val==1431655766 and rs2_val==1431655765<br>                                                                                                                                                 |[0x80002458]:mulhsu t6, t5, t4<br> [0x8000245c]:sw t6, 0x230(fp)<br>    |
| 241|[0x800067ac]<br>0x38E38E39<br> |- rs1_val==1431655766 and rs2_val==2863311530<br>                                                                                                                                                 |[0x80002470]:mulhsu t6, t5, t4<br> [0x80002474]:sw t6, 0x234(fp)<br>    |
| 242|[0x800067b0]<br>0x00000001<br> |- rs1_val==1431655766 and rs2_val==5<br>                                                                                                                                                          |[0x80002484]:mulhsu t6, t5, t4<br> [0x80002488]:sw t6, 0x238(fp)<br>    |
| 243|[0x800067b4]<br>0x11111111<br> |- rs1_val==1431655766 and rs2_val==858993459<br>                                                                                                                                                  |[0x8000249c]:mulhsu t6, t5, t4<br> [0x800024a0]:sw t6, 0x23c(fp)<br>    |
| 244|[0x800067b8]<br>0x22222222<br> |- rs1_val==1431655766 and rs2_val==1717986918<br>                                                                                                                                                 |[0x800024b4]:mulhsu t6, t5, t4<br> [0x800024b8]:sw t6, 0x240(fp)<br>    |
| 245|[0x800067bc]<br>0x00003C56<br> |- rs1_val==1431655766 and rs2_val==46340<br>                                                                                                                                                      |[0x800024cc]:mulhsu t6, t5, t4<br> [0x800024d0]:sw t6, 0x244(fp)<br>    |
| 246|[0x800067c0]<br>0x00005555<br> |- rs1_val==1431655766 and rs2_val==65535<br>                                                                                                                                                      |[0x800024e4]:mulhsu t6, t5, t4<br> [0x800024e8]:sw t6, 0x248(fp)<br>    |
| 247|[0x800067c4]<br>0x00000000<br> |- rs1_val==1431655766 and rs2_val==2<br>                                                                                                                                                          |[0x800024f8]:mulhsu t6, t5, t4<br> [0x800024fc]:sw t6, 0x24c(fp)<br>    |
| 248|[0x800067c8]<br>0x1C71C71C<br> |- rs1_val==1431655766 and rs2_val==1431655764<br>                                                                                                                                                 |[0x80002510]:mulhsu t6, t5, t4<br> [0x80002514]:sw t6, 0x250(fp)<br>    |
| 249|[0x800067cc]<br>0x38E38E38<br> |- rs1_val==1431655766 and rs2_val==2863311529<br>                                                                                                                                                 |[0x80002528]:mulhsu t6, t5, t4<br> [0x8000252c]:sw t6, 0x254(fp)<br>    |
| 250|[0x800067d0]<br>0x11111110<br> |- rs1_val==1431655766 and rs2_val==858993458<br>                                                                                                                                                  |[0x80002540]:mulhsu t6, t5, t4<br> [0x80002544]:sw t6, 0x258(fp)<br>    |
| 251|[0x800067d4]<br>0x22222221<br> |- rs1_val==1431655766 and rs2_val==1717986917<br>                                                                                                                                                 |[0x80002558]:mulhsu t6, t5, t4<br> [0x8000255c]:sw t6, 0x25c(fp)<br>    |
| 252|[0x800067d8]<br>0x00003C56<br> |- rs1_val==1431655766 and rs2_val==46339<br>                                                                                                                                                      |[0x80002570]:mulhsu t6, t5, t4<br> [0x80002574]:sw t6, 0x260(fp)<br>    |
| 253|[0x800067dc]<br>0x00000000<br> |- rs1_val==1431655766 and rs2_val==0<br>                                                                                                                                                          |[0x80002584]:mulhsu t6, t5, t4<br> [0x80002588]:sw t6, 0x264(fp)<br>    |
| 254|[0x800067e0]<br>0x00005554<br> |- rs1_val==1431655766 and rs2_val==65534<br>                                                                                                                                                      |[0x8000259c]:mulhsu t6, t5, t4<br> [0x800025a0]:sw t6, 0x268(fp)<br>    |
| 255|[0x800067e4]<br>0x00000001<br> |- rs1_val==1431655766 and rs2_val==4<br>                                                                                                                                                          |[0x800025b0]:mulhsu t6, t5, t4<br> [0x800025b4]:sw t6, 0x26c(fp)<br>    |
| 256|[0x800067e8]<br>0x1C71C71C<br> |- rs1_val==1431655766 and rs2_val==1431655766<br>                                                                                                                                                 |[0x800025c8]:mulhsu t6, t5, t4<br> [0x800025cc]:sw t6, 0x270(fp)<br>    |
| 257|[0x800067ec]<br>0x38E38E39<br> |- rs1_val==1431655766 and rs2_val==2863311531<br>                                                                                                                                                 |[0x800025e0]:mulhsu t6, t5, t4<br> [0x800025e4]:sw t6, 0x274(fp)<br>    |
| 258|[0x800067f0]<br>0x00000002<br> |- rs1_val==1431655766 and rs2_val==6<br>                                                                                                                                                          |[0x800025f4]:mulhsu t6, t5, t4<br> [0x800025f8]:sw t6, 0x278(fp)<br>    |
| 259|[0x800067f4]<br>0x11111111<br> |- rs1_val==1431655766 and rs2_val==858993460<br>                                                                                                                                                  |[0x8000260c]:mulhsu t6, t5, t4<br> [0x80002610]:sw t6, 0x27c(fp)<br>    |
| 260|[0x800067f8]<br>0x22222222<br> |- rs1_val==1431655766 and rs2_val==1717986919<br>                                                                                                                                                 |[0x80002624]:mulhsu t6, t5, t4<br> [0x80002628]:sw t6, 0x280(fp)<br>    |
| 261|[0x800067fc]<br>0x00003C57<br> |- rs1_val==1431655766 and rs2_val==46341<br>                                                                                                                                                      |[0x8000263c]:mulhsu t6, t5, t4<br> [0x80002640]:sw t6, 0x284(fp)<br>    |
| 262|[0x80006800]<br>0x00000000<br> |- rs1_val==1431655766 and rs2_val==1<br>                                                                                                                                                          |[0x80002650]:mulhsu t6, t5, t4<br> [0x80002654]:sw t6, 0x288(fp)<br>    |
| 263|[0x80006804]<br>0x00005555<br> |- rs1_val==1431655766 and rs2_val==65536<br>                                                                                                                                                      |[0x80002664]:mulhsu t6, t5, t4<br> [0x80002668]:sw t6, 0x28c(fp)<br>    |
| 264|[0x80006808]<br>0xFFFFFFFF<br> |- rs1_val==-1431655765 and rs2_val==3<br>                                                                                                                                                         |[0x80002678]:mulhsu t6, t5, t4<br> [0x8000267c]:sw t6, 0x290(fp)<br>    |
| 265|[0x8000680c]<br>0xE38E38E3<br> |- rs1_val==-1431655765 and rs2_val==1431655765<br>                                                                                                                                                |[0x80002690]:mulhsu t6, t5, t4<br> [0x80002694]:sw t6, 0x294(fp)<br>    |
| 266|[0x80006810]<br>0xC71C71C7<br> |- rs1_val==-1431655765 and rs2_val==2863311530<br>                                                                                                                                                |[0x800026a8]:mulhsu t6, t5, t4<br> [0x800026ac]:sw t6, 0x298(fp)<br>    |
| 267|[0x80006814]<br>0xFFFFFFFE<br> |- rs1_val==-1431655765 and rs2_val==5<br>                                                                                                                                                         |[0x800026bc]:mulhsu t6, t5, t4<br> [0x800026c0]:sw t6, 0x29c(fp)<br>    |
| 268|[0x80006818]<br>0xEEEEEEEF<br> |- rs1_val==-1431655765 and rs2_val==858993459<br>                                                                                                                                                 |[0x800026d4]:mulhsu t6, t5, t4<br> [0x800026d8]:sw t6, 0x2a0(fp)<br>    |
| 269|[0x8000681c]<br>0xDDDDDDDE<br> |- rs1_val==-1431655765 and rs2_val==1717986918<br>                                                                                                                                                |[0x800026ec]:mulhsu t6, t5, t4<br> [0x800026f0]:sw t6, 0x2a4(fp)<br>    |
| 270|[0x80006820]<br>0xFFFFC3A9<br> |- rs1_val==-1431655765 and rs2_val==46340<br>                                                                                                                                                     |[0x80002704]:mulhsu t6, t5, t4<br> [0x80002708]:sw t6, 0x2a8(fp)<br>    |
| 271|[0x80006824]<br>0xFFFFAAAB<br> |- rs1_val==-1431655765 and rs2_val==65535<br>                                                                                                                                                     |[0x8000271c]:mulhsu t6, t5, t4<br> [0x80002720]:sw t6, 0x2ac(fp)<br>    |
| 272|[0x80006828]<br>0xFFFFFFFF<br> |- rs1_val==-1431655765 and rs2_val==2<br>                                                                                                                                                         |[0x80002730]:mulhsu t6, t5, t4<br> [0x80002734]:sw t6, 0x2b0(fp)<br>    |
| 273|[0x8000682c]<br>0xE38E38E4<br> |- rs1_val==-1431655765 and rs2_val==1431655764<br>                                                                                                                                                |[0x80002748]:mulhsu t6, t5, t4<br> [0x8000274c]:sw t6, 0x2b4(fp)<br>    |
| 274|[0x80006830]<br>0xC71C71C7<br> |- rs1_val==-1431655765 and rs2_val==2863311529<br>                                                                                                                                                |[0x80002760]:mulhsu t6, t5, t4<br> [0x80002764]:sw t6, 0x2b8(fp)<br>    |
| 275|[0x80006834]<br>0xEEEEEEEF<br> |- rs1_val==-1431655765 and rs2_val==858993458<br>                                                                                                                                                 |[0x80002778]:mulhsu t6, t5, t4<br> [0x8000277c]:sw t6, 0x2bc(fp)<br>    |
| 276|[0x80006838]<br>0xDDDDDDDE<br> |- rs1_val==-1431655765 and rs2_val==1717986917<br>                                                                                                                                                |[0x80002790]:mulhsu t6, t5, t4<br> [0x80002794]:sw t6, 0x2c0(fp)<br>    |
| 277|[0x8000683c]<br>0xFFFFC3A9<br> |- rs1_val==-1431655765 and rs2_val==46339<br>                                                                                                                                                     |[0x800027a8]:mulhsu t6, t5, t4<br> [0x800027ac]:sw t6, 0x2c4(fp)<br>    |
| 278|[0x80006840]<br>0x00000000<br> |- rs1_val==-1431655765 and rs2_val==0<br>                                                                                                                                                         |[0x800027bc]:mulhsu t6, t5, t4<br> [0x800027c0]:sw t6, 0x2c8(fp)<br>    |
| 279|[0x80006844]<br>0xFFFFAAAB<br> |- rs1_val==-1431655765 and rs2_val==65534<br>                                                                                                                                                     |[0x800027d4]:mulhsu t6, t5, t4<br> [0x800027d8]:sw t6, 0x2cc(fp)<br>    |
| 280|[0x80006848]<br>0xFFFFFFFE<br> |- rs1_val==-1431655765 and rs2_val==4<br>                                                                                                                                                         |[0x800027e8]:mulhsu t6, t5, t4<br> [0x800027ec]:sw t6, 0x2d0(fp)<br>    |
| 281|[0x8000684c]<br>0xE38E38E3<br> |- rs1_val==-1431655765 and rs2_val==1431655766<br>                                                                                                                                                |[0x80002800]:mulhsu t6, t5, t4<br> [0x80002804]:sw t6, 0x2d4(fp)<br>    |
| 282|[0x80006850]<br>0xC71C71C7<br> |- rs1_val==-1431655765 and rs2_val==2863311531<br>                                                                                                                                                |[0x80002818]:mulhsu t6, t5, t4<br> [0x8000281c]:sw t6, 0x2d8(fp)<br>    |
| 283|[0x80006854]<br>0xFFFFFFFE<br> |- rs1_val==-1431655765 and rs2_val==6<br>                                                                                                                                                         |[0x8000282c]:mulhsu t6, t5, t4<br> [0x80002830]:sw t6, 0x2dc(fp)<br>    |
| 284|[0x80006858]<br>0xEEEEEEEE<br> |- rs1_val==-1431655765 and rs2_val==858993460<br>                                                                                                                                                 |[0x80002844]:mulhsu t6, t5, t4<br> [0x80002848]:sw t6, 0x2e0(fp)<br>    |
| 285|[0x8000685c]<br>0xDDDDDDDD<br> |- rs1_val==-1431655765 and rs2_val==1717986919<br>                                                                                                                                                |[0x8000285c]:mulhsu t6, t5, t4<br> [0x80002860]:sw t6, 0x2e4(fp)<br>    |
| 286|[0x80006860]<br>0xFFFFC3A9<br> |- rs1_val==-1431655765 and rs2_val==46341<br>                                                                                                                                                     |[0x80002874]:mulhsu t6, t5, t4<br> [0x80002878]:sw t6, 0x2e8(fp)<br>    |
| 287|[0x80006864]<br>0xFFFFFFFF<br> |- rs1_val==-1431655765 and rs2_val==1<br>                                                                                                                                                         |[0x80002888]:mulhsu t6, t5, t4<br> [0x8000288c]:sw t6, 0x2ec(fp)<br>    |
| 288|[0x80006868]<br>0xFFFFAAAA<br> |- rs1_val==-1431655765 and rs2_val==65536<br>                                                                                                                                                     |[0x8000289c]:mulhsu t6, t5, t4<br> [0x800028a0]:sw t6, 0x2f0(fp)<br>    |
| 289|[0x8000686c]<br>0x00000000<br> |- rs1_val==6 and rs2_val==3<br>                                                                                                                                                                   |[0x800028ac]:mulhsu t6, t5, t4<br> [0x800028b0]:sw t6, 0x2f4(fp)<br>    |
| 290|[0x80006870]<br>0x00000001<br> |- rs1_val==6 and rs2_val==1431655765<br>                                                                                                                                                          |[0x800028c0]:mulhsu t6, t5, t4<br> [0x800028c4]:sw t6, 0x2f8(fp)<br>    |
| 291|[0x80006874]<br>0x00000003<br> |- rs1_val==6 and rs2_val==2863311530<br>                                                                                                                                                          |[0x800028d4]:mulhsu t6, t5, t4<br> [0x800028d8]:sw t6, 0x2fc(fp)<br>    |
| 292|[0x80006878]<br>0x00000000<br> |- rs1_val==6 and rs2_val==5<br>                                                                                                                                                                   |[0x800028e4]:mulhsu t6, t5, t4<br> [0x800028e8]:sw t6, 0x300(fp)<br>    |
| 293|[0x8000687c]<br>0x00000001<br> |- rs1_val==6 and rs2_val==858993459<br>                                                                                                                                                           |[0x800028f8]:mulhsu t6, t5, t4<br> [0x800028fc]:sw t6, 0x304(fp)<br>    |
| 294|[0x80006880]<br>0x00000002<br> |- rs1_val==6 and rs2_val==1717986918<br>                                                                                                                                                          |[0x8000290c]:mulhsu t6, t5, t4<br> [0x80002910]:sw t6, 0x308(fp)<br>    |
| 295|[0x80006884]<br>0x00000000<br> |- rs1_val==6 and rs2_val==46340<br>                                                                                                                                                               |[0x80002920]:mulhsu t6, t5, t4<br> [0x80002924]:sw t6, 0x30c(fp)<br>    |
| 296|[0x80006888]<br>0x00000000<br> |- rs1_val==6 and rs2_val==65535<br>                                                                                                                                                               |[0x80002934]:mulhsu t6, t5, t4<br> [0x80002938]:sw t6, 0x310(fp)<br>    |
| 297|[0x8000688c]<br>0x00000000<br> |- rs1_val==6 and rs2_val==2<br>                                                                                                                                                                   |[0x80002944]:mulhsu t6, t5, t4<br> [0x80002948]:sw t6, 0x314(fp)<br>    |
| 298|[0x80006890]<br>0x00000001<br> |- rs1_val==6 and rs2_val==1431655764<br>                                                                                                                                                          |[0x80002958]:mulhsu t6, t5, t4<br> [0x8000295c]:sw t6, 0x318(fp)<br>    |
| 299|[0x80006894]<br>0x00000003<br> |- rs1_val==6 and rs2_val==2863311529<br>                                                                                                                                                          |[0x8000296c]:mulhsu t6, t5, t4<br> [0x80002970]:sw t6, 0x31c(fp)<br>    |
| 300|[0x80006898]<br>0x00000001<br> |- rs1_val==6 and rs2_val==858993458<br>                                                                                                                                                           |[0x80002980]:mulhsu t6, t5, t4<br> [0x80002984]:sw t6, 0x320(fp)<br>    |
| 301|[0x8000689c]<br>0x00000002<br> |- rs1_val==6 and rs2_val==1717986917<br>                                                                                                                                                          |[0x80002994]:mulhsu t6, t5, t4<br> [0x80002998]:sw t6, 0x324(fp)<br>    |
| 302|[0x800068a0]<br>0x00000000<br> |- rs1_val==6 and rs2_val==46339<br>                                                                                                                                                               |[0x800029a8]:mulhsu t6, t5, t4<br> [0x800029ac]:sw t6, 0x328(fp)<br>    |
| 303|[0x800068a4]<br>0x00000000<br> |- rs1_val==6 and rs2_val==0<br>                                                                                                                                                                   |[0x800029b8]:mulhsu t6, t5, t4<br> [0x800029bc]:sw t6, 0x32c(fp)<br>    |
| 304|[0x800068a8]<br>0x00000000<br> |- rs1_val==6 and rs2_val==65534<br>                                                                                                                                                               |[0x800029cc]:mulhsu t6, t5, t4<br> [0x800029d0]:sw t6, 0x330(fp)<br>    |
| 305|[0x800068ac]<br>0x00000000<br> |- rs1_val==6 and rs2_val==4<br>                                                                                                                                                                   |[0x800029dc]:mulhsu t6, t5, t4<br> [0x800029e0]:sw t6, 0x334(fp)<br>    |
| 306|[0x800068b0]<br>0x00000002<br> |- rs1_val==6 and rs2_val==1431655766<br>                                                                                                                                                          |[0x800029f0]:mulhsu t6, t5, t4<br> [0x800029f4]:sw t6, 0x338(fp)<br>    |
| 307|[0x800068b4]<br>0x00000004<br> |- rs1_val==6 and rs2_val==2863311531<br>                                                                                                                                                          |[0x80002a04]:mulhsu t6, t5, t4<br> [0x80002a08]:sw t6, 0x33c(fp)<br>    |
| 308|[0x800068b8]<br>0x00000000<br> |- rs1_val==6 and rs2_val==6<br>                                                                                                                                                                   |[0x80002a14]:mulhsu t6, t5, t4<br> [0x80002a18]:sw t6, 0x340(fp)<br>    |
| 309|[0x800068bc]<br>0x00000001<br> |- rs1_val==6 and rs2_val==858993460<br>                                                                                                                                                           |[0x80002a28]:mulhsu t6, t5, t4<br> [0x80002a2c]:sw t6, 0x344(fp)<br>    |
| 310|[0x800068c0]<br>0x00000002<br> |- rs1_val==6 and rs2_val==1717986919<br>                                                                                                                                                          |[0x80002a3c]:mulhsu t6, t5, t4<br> [0x80002a40]:sw t6, 0x348(fp)<br>    |
| 311|[0x800068c4]<br>0x00000000<br> |- rs1_val==6 and rs2_val==46341<br>                                                                                                                                                               |[0x80002a50]:mulhsu t6, t5, t4<br> [0x80002a54]:sw t6, 0x34c(fp)<br>    |
| 312|[0x800068c8]<br>0x00000000<br> |- rs1_val==6 and rs2_val==1<br>                                                                                                                                                                   |[0x80002a60]:mulhsu t6, t5, t4<br> [0x80002a64]:sw t6, 0x350(fp)<br>    |
| 313|[0x800068cc]<br>0x00000000<br> |- rs1_val==6 and rs2_val==65536<br>                                                                                                                                                               |[0x80002a70]:mulhsu t6, t5, t4<br> [0x80002a74]:sw t6, 0x354(fp)<br>    |
| 314|[0x800068d0]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==3<br>                                                                                                                                                           |[0x80002a84]:mulhsu t6, t5, t4<br> [0x80002a88]:sw t6, 0x358(fp)<br>    |
| 315|[0x800068d4]<br>0x11111111<br> |- rs1_val==858993460 and rs2_val==1431655765<br>                                                                                                                                                  |[0x80002a9c]:mulhsu t6, t5, t4<br> [0x80002aa0]:sw t6, 0x35c(fp)<br>    |
| 316|[0x800068d8]<br>0x22222222<br> |- rs1_val==858993460 and rs2_val==2863311530<br>                                                                                                                                                  |[0x80002ab4]:mulhsu t6, t5, t4<br> [0x80002ab8]:sw t6, 0x360(fp)<br>    |
| 317|[0x800068dc]<br>0x00000001<br> |- rs1_val==858993460 and rs2_val==5<br>                                                                                                                                                           |[0x80002ac8]:mulhsu t6, t5, t4<br> [0x80002acc]:sw t6, 0x364(fp)<br>    |
| 318|[0x800068e0]<br>0x0A3D70A3<br> |- rs1_val==858993460 and rs2_val==858993459<br>                                                                                                                                                   |[0x80002ae0]:mulhsu t6, t5, t4<br> [0x80002ae4]:sw t6, 0x368(fp)<br>    |
| 319|[0x800068e4]<br>0x147AE147<br> |- rs1_val==858993460 and rs2_val==1717986918<br>                                                                                                                                                  |[0x80002af8]:mulhsu t6, t5, t4<br> [0x80002afc]:sw t6, 0x36c(fp)<br>    |
| 320|[0x800068e8]<br>0x00002434<br> |- rs1_val==858993460 and rs2_val==46340<br>                                                                                                                                                       |[0x80002b10]:mulhsu t6, t5, t4<br> [0x80002b14]:sw t6, 0x370(fp)<br>    |
| 321|[0x800068ec]<br>0x00003333<br> |- rs1_val==858993460 and rs2_val==65535<br>                                                                                                                                                       |[0x80002b28]:mulhsu t6, t5, t4<br> [0x80002b2c]:sw t6, 0x374(fp)<br>    |
| 322|[0x800068f0]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==2<br>                                                                                                                                                           |[0x80002b3c]:mulhsu t6, t5, t4<br> [0x80002b40]:sw t6, 0x378(fp)<br>    |
| 323|[0x800068f4]<br>0x11111111<br> |- rs1_val==858993460 and rs2_val==1431655764<br>                                                                                                                                                  |[0x80002b54]:mulhsu t6, t5, t4<br> [0x80002b58]:sw t6, 0x37c(fp)<br>    |
| 324|[0x800068f8]<br>0x22222222<br> |- rs1_val==858993460 and rs2_val==2863311529<br>                                                                                                                                                  |[0x80002b6c]:mulhsu t6, t5, t4<br> [0x80002b70]:sw t6, 0x380(fp)<br>    |
| 325|[0x800068fc]<br>0x0A3D70A3<br> |- rs1_val==858993460 and rs2_val==858993458<br>                                                                                                                                                   |[0x80002b84]:mulhsu t6, t5, t4<br> [0x80002b88]:sw t6, 0x384(fp)<br>    |
| 326|[0x80006900]<br>0x147AE147<br> |- rs1_val==858993460 and rs2_val==1717986917<br>                                                                                                                                                  |[0x80002b9c]:mulhsu t6, t5, t4<br> [0x80002ba0]:sw t6, 0x388(fp)<br>    |
| 327|[0x80006904]<br>0x00002433<br> |- rs1_val==858993460 and rs2_val==46339<br>                                                                                                                                                       |[0x80002bb4]:mulhsu t6, t5, t4<br> [0x80002bb8]:sw t6, 0x38c(fp)<br>    |
| 328|[0x80006908]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==0<br>                                                                                                                                                           |[0x80002bc8]:mulhsu t6, t5, t4<br> [0x80002bcc]:sw t6, 0x390(fp)<br>    |
| 329|[0x8000690c]<br>0x00003332<br> |- rs1_val==858993460 and rs2_val==65534<br>                                                                                                                                                       |[0x80002be0]:mulhsu t6, t5, t4<br> [0x80002be4]:sw t6, 0x394(fp)<br>    |
| 330|[0x80006910]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==4<br>                                                                                                                                                           |[0x80002bf4]:mulhsu t6, t5, t4<br> [0x80002bf8]:sw t6, 0x398(fp)<br>    |
| 331|[0x80006914]<br>0x11111111<br> |- rs1_val==858993460 and rs2_val==1431655766<br>                                                                                                                                                  |[0x80002c0c]:mulhsu t6, t5, t4<br> [0x80002c10]:sw t6, 0x39c(fp)<br>    |
| 332|[0x80006918]<br>0x22222222<br> |- rs1_val==858993460 and rs2_val==2863311531<br>                                                                                                                                                  |[0x80002c24]:mulhsu t6, t5, t4<br> [0x80002c28]:sw t6, 0x3a0(fp)<br>    |
| 333|[0x8000691c]<br>0x00000001<br> |- rs1_val==858993460 and rs2_val==6<br>                                                                                                                                                           |[0x80002c38]:mulhsu t6, t5, t4<br> [0x80002c3c]:sw t6, 0x3a4(fp)<br>    |
| 334|[0x80006920]<br>0x0A3D70A4<br> |- rs1_val==858993460 and rs2_val==858993460<br>                                                                                                                                                   |[0x80002c50]:mulhsu t6, t5, t4<br> [0x80002c54]:sw t6, 0x3a8(fp)<br>    |
| 335|[0x80006924]<br>0x147AE148<br> |- rs1_val==858993460 and rs2_val==1717986919<br>                                                                                                                                                  |[0x80002c68]:mulhsu t6, t5, t4<br> [0x80002c6c]:sw t6, 0x3ac(fp)<br>    |
| 336|[0x80006928]<br>0x00002434<br> |- rs1_val==858993460 and rs2_val==46341<br>                                                                                                                                                       |[0x80002c80]:mulhsu t6, t5, t4<br> [0x80002c84]:sw t6, 0x3b0(fp)<br>    |
| 337|[0x8000692c]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==1<br>                                                                                                                                                           |[0x80002c94]:mulhsu t6, t5, t4<br> [0x80002c98]:sw t6, 0x3b4(fp)<br>    |
| 338|[0x80006930]<br>0x00003333<br> |- rs1_val==858993460 and rs2_val==65536<br>                                                                                                                                                       |[0x80002ca8]:mulhsu t6, t5, t4<br> [0x80002cac]:sw t6, 0x3b8(fp)<br>    |
| 339|[0x80006934]<br>0x00000001<br> |- rs1_val==1717986919 and rs2_val==3<br>                                                                                                                                                          |[0x80002cbc]:mulhsu t6, t5, t4<br> [0x80002cc0]:sw t6, 0x3bc(fp)<br>    |
| 340|[0x80006938]<br>0x22222222<br> |- rs1_val==1717986919 and rs2_val==1431655765<br>                                                                                                                                                 |[0x80002cd4]:mulhsu t6, t5, t4<br> [0x80002cd8]:sw t6, 0x3c0(fp)<br>    |
| 341|[0x8000693c]<br>0x44444444<br> |- rs1_val==1717986919 and rs2_val==2863311530<br>                                                                                                                                                 |[0x80002cec]:mulhsu t6, t5, t4<br> [0x80002cf0]:sw t6, 0x3c4(fp)<br>    |
| 342|[0x80006940]<br>0x00000002<br> |- rs1_val==1717986919 and rs2_val==5<br>                                                                                                                                                          |[0x80002d00]:mulhsu t6, t5, t4<br> [0x80002d04]:sw t6, 0x3c8(fp)<br>    |
| 343|[0x80006944]<br>0x147AE147<br> |- rs1_val==1717986919 and rs2_val==858993459<br>                                                                                                                                                  |[0x80002d18]:mulhsu t6, t5, t4<br> [0x80002d1c]:sw t6, 0x3cc(fp)<br>    |
| 344|[0x80006948]<br>0x28F5C28F<br> |- rs1_val==1717986919 and rs2_val==1717986918<br>                                                                                                                                                 |[0x80002d30]:mulhsu t6, t5, t4<br> [0x80002d34]:sw t6, 0x3d0(fp)<br>    |
| 345|[0x8000694c]<br>0x00004868<br> |- rs1_val==1717986919 and rs2_val==46340<br>                                                                                                                                                      |[0x80002d48]:mulhsu t6, t5, t4<br> [0x80002d4c]:sw t6, 0x3d4(fp)<br>    |
| 346|[0x80006950]<br>0x00006666<br> |- rs1_val==1717986919 and rs2_val==65535<br>                                                                                                                                                      |[0x80002d60]:mulhsu t6, t5, t4<br> [0x80002d64]:sw t6, 0x3d8(fp)<br>    |
| 347|[0x80006954]<br>0x00000000<br> |- rs1_val==1717986919 and rs2_val==2<br>                                                                                                                                                          |[0x80002d74]:mulhsu t6, t5, t4<br> [0x80002d78]:sw t6, 0x3dc(fp)<br>    |
| 348|[0x80006958]<br>0x22222221<br> |- rs1_val==1717986919 and rs2_val==1431655764<br>                                                                                                                                                 |[0x80002d8c]:mulhsu t6, t5, t4<br> [0x80002d90]:sw t6, 0x3e0(fp)<br>    |
| 349|[0x8000695c]<br>0x44444443<br> |- rs1_val==1717986919 and rs2_val==2863311529<br>                                                                                                                                                 |[0x80002da4]:mulhsu t6, t5, t4<br> [0x80002da8]:sw t6, 0x3e4(fp)<br>    |
| 350|[0x80006960]<br>0x147AE147<br> |- rs1_val==1717986919 and rs2_val==858993458<br>                                                                                                                                                  |[0x80002dbc]:mulhsu t6, t5, t4<br> [0x80002dc0]:sw t6, 0x3e8(fp)<br>    |
| 351|[0x80006964]<br>0x28F5C28F<br> |- rs1_val==1717986919 and rs2_val==1717986917<br>                                                                                                                                                 |[0x80002dd4]:mulhsu t6, t5, t4<br> [0x80002dd8]:sw t6, 0x3ec(fp)<br>    |
| 352|[0x80006968]<br>0x00004867<br> |- rs1_val==1717986919 and rs2_val==46339<br>                                                                                                                                                      |[0x80002dec]:mulhsu t6, t5, t4<br> [0x80002df0]:sw t6, 0x3f0(fp)<br>    |
| 353|[0x8000696c]<br>0x00000000<br> |- rs1_val==1717986919 and rs2_val==0<br>                                                                                                                                                          |[0x80002e00]:mulhsu t6, t5, t4<br> [0x80002e04]:sw t6, 0x3f4(fp)<br>    |
| 354|[0x80006970]<br>0x00006665<br> |- rs1_val==1717986919 and rs2_val==65534<br>                                                                                                                                                      |[0x80002e18]:mulhsu t6, t5, t4<br> [0x80002e1c]:sw t6, 0x3f8(fp)<br>    |
| 355|[0x80006974]<br>0x00000001<br> |- rs1_val==1717986919 and rs2_val==4<br>                                                                                                                                                          |[0x80002e2c]:mulhsu t6, t5, t4<br> [0x80002e30]:sw t6, 0x3fc(fp)<br>    |
| 356|[0x80006978]<br>0x22222222<br> |- rs1_val==1717986919 and rs2_val==1431655766<br>                                                                                                                                                 |[0x80002e70]:mulhsu t6, t5, t4<br> [0x80002e74]:sw t6, 0x0(fp)<br>      |
| 357|[0x8000697c]<br>0x44444444<br> |- rs1_val==1717986919 and rs2_val==2863311531<br>                                                                                                                                                 |[0x80002e88]:mulhsu t6, t5, t4<br> [0x80002e8c]:sw t6, 0x4(fp)<br>      |
| 358|[0x80006980]<br>0x00000002<br> |- rs1_val==1717986919 and rs2_val==6<br>                                                                                                                                                          |[0x80002e9c]:mulhsu t6, t5, t4<br> [0x80002ea0]:sw t6, 0x8(fp)<br>      |
| 359|[0x80006984]<br>0x147AE148<br> |- rs1_val==1717986919 and rs2_val==858993460<br>                                                                                                                                                  |[0x80002eb4]:mulhsu t6, t5, t4<br> [0x80002eb8]:sw t6, 0xc(fp)<br>      |
| 360|[0x80006988]<br>0x28F5C28F<br> |- rs1_val==1717986919 and rs2_val==1717986919<br>                                                                                                                                                 |[0x80002ecc]:mulhsu t6, t5, t4<br> [0x80002ed0]:sw t6, 0x10(fp)<br>     |
| 361|[0x8000698c]<br>0x00004868<br> |- rs1_val==1717986919 and rs2_val==46341<br>                                                                                                                                                      |[0x80002ee4]:mulhsu t6, t5, t4<br> [0x80002ee8]:sw t6, 0x14(fp)<br>     |
| 362|[0x80006990]<br>0x00000000<br> |- rs1_val==1717986919 and rs2_val==1<br>                                                                                                                                                          |[0x80002ef8]:mulhsu t6, t5, t4<br> [0x80002efc]:sw t6, 0x18(fp)<br>     |
| 363|[0x80006994]<br>0x00006666<br> |- rs1_val==1717986919 and rs2_val==65536<br>                                                                                                                                                      |[0x80002f0c]:mulhsu t6, t5, t4<br> [0x80002f10]:sw t6, 0x1c(fp)<br>     |
| 364|[0x80006998]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==3<br>                                                                                                                                                              |[0x80002f20]:mulhsu t6, t5, t4<br> [0x80002f24]:sw t6, 0x20(fp)<br>     |
| 365|[0x8000699c]<br>0x00000000<br> |- rs1_val==4 and rs2_val==0<br>                                                                                                                                                                   |[0x80002f30]:mulhsu t6, t5, t4<br> [0x80002f34]:sw t6, 0x24(fp)<br>     |
| 366|[0x800069a0]<br>0xFFFFC3A9<br> |- rs1_val==-46339 and rs2_val==1431655765<br>                                                                                                                                                     |[0x80002f48]:mulhsu t6, t5, t4<br> [0x80002f4c]:sw t6, 0x28(fp)<br>     |
| 367|[0x800069a4]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1431655766<br>                                                                                                                                                          |[0x80002f5c]:mulhsu t6, t5, t4<br> [0x80002f60]:sw t6, 0x2c(fp)<br>     |
| 368|[0x800069a8]<br>0xFFFF8753<br> |- rs1_val==-46339 and rs2_val==2863311530<br>                                                                                                                                                     |[0x80002f74]:mulhsu t6, t5, t4<br> [0x80002f78]:sw t6, 0x30(fp)<br>     |
| 369|[0x800069ac]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==5<br>                                                                                                                                                              |[0x80002f88]:mulhsu t6, t5, t4<br> [0x80002f8c]:sw t6, 0x34(fp)<br>     |
| 370|[0x800069b0]<br>0xFFFFDBCC<br> |- rs1_val==-46339 and rs2_val==858993459<br>                                                                                                                                                      |[0x80002fa0]:mulhsu t6, t5, t4<br> [0x80002fa4]:sw t6, 0x38(fp)<br>     |
| 371|[0x800069b4]<br>0xFFFFB798<br> |- rs1_val==-46339 and rs2_val==1717986918<br>                                                                                                                                                     |[0x80002fb8]:mulhsu t6, t5, t4<br> [0x80002fbc]:sw t6, 0x3c(fp)<br>     |
| 372|[0x800069b8]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==46340<br>                                                                                                                                                          |[0x80002fd0]:mulhsu t6, t5, t4<br> [0x80002fd4]:sw t6, 0x40(fp)<br>     |
| 373|[0x800069bc]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==65535<br>                                                                                                                                                          |[0x80002fe8]:mulhsu t6, t5, t4<br> [0x80002fec]:sw t6, 0x44(fp)<br>     |
| 374|[0x800069c0]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==2<br>                                                                                                                                                              |[0x80002ffc]:mulhsu t6, t5, t4<br> [0x80003000]:sw t6, 0x48(fp)<br>     |
| 375|[0x800069c4]<br>0xFFFFC3A9<br> |- rs1_val==-46339 and rs2_val==1431655764<br>                                                                                                                                                     |[0x80003014]:mulhsu t6, t5, t4<br> [0x80003018]:sw t6, 0x4c(fp)<br>     |
| 376|[0x800069c8]<br>0xFFFF8753<br> |- rs1_val==-46339 and rs2_val==2863311529<br>                                                                                                                                                     |[0x8000302c]:mulhsu t6, t5, t4<br> [0x80003030]:sw t6, 0x50(fp)<br>     |
| 377|[0x800069cc]<br>0xFFFFDBCC<br> |- rs1_val==-46339 and rs2_val==858993458<br>                                                                                                                                                      |[0x80003044]:mulhsu t6, t5, t4<br> [0x80003048]:sw t6, 0x54(fp)<br>     |
| 378|[0x800069d0]<br>0xFFFFB798<br> |- rs1_val==-46339 and rs2_val==1717986917<br>                                                                                                                                                     |[0x8000305c]:mulhsu t6, t5, t4<br> [0x80003060]:sw t6, 0x58(fp)<br>     |
| 379|[0x800069d4]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==46339<br>                                                                                                                                                          |[0x80003074]:mulhsu t6, t5, t4<br> [0x80003078]:sw t6, 0x5c(fp)<br>     |
| 380|[0x800069d8]<br>0x00000000<br> |- rs1_val==-46339 and rs2_val==0<br>                                                                                                                                                              |[0x80003088]:mulhsu t6, t5, t4<br> [0x8000308c]:sw t6, 0x60(fp)<br>     |
| 381|[0x800069dc]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==65534<br>                                                                                                                                                          |[0x800030a0]:mulhsu t6, t5, t4<br> [0x800030a4]:sw t6, 0x64(fp)<br>     |
| 382|[0x800069e0]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==4<br>                                                                                                                                                              |[0x800030b4]:mulhsu t6, t5, t4<br> [0x800030b8]:sw t6, 0x68(fp)<br>     |
| 383|[0x800069e4]<br>0xFFFFC3A9<br> |- rs1_val==-46339 and rs2_val==1431655766<br>                                                                                                                                                     |[0x800030cc]:mulhsu t6, t5, t4<br> [0x800030d0]:sw t6, 0x6c(fp)<br>     |
| 384|[0x800069e8]<br>0xFFFF8753<br> |- rs1_val==-46339 and rs2_val==2863311531<br>                                                                                                                                                     |[0x800030e4]:mulhsu t6, t5, t4<br> [0x800030e8]:sw t6, 0x70(fp)<br>     |
| 385|[0x800069ec]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==6<br>                                                                                                                                                              |[0x800030f8]:mulhsu t6, t5, t4<br> [0x800030fc]:sw t6, 0x74(fp)<br>     |
| 386|[0x800069f0]<br>0xFFFFDBCC<br> |- rs1_val==-46339 and rs2_val==858993460<br>                                                                                                                                                      |[0x80003110]:mulhsu t6, t5, t4<br> [0x80003114]:sw t6, 0x78(fp)<br>     |
| 387|[0x800069f4]<br>0xFFFFB798<br> |- rs1_val==-46339 and rs2_val==1717986919<br>                                                                                                                                                     |[0x80003128]:mulhsu t6, t5, t4<br> [0x8000312c]:sw t6, 0x7c(fp)<br>     |
| 388|[0x800069f8]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==46341<br>                                                                                                                                                          |[0x80003140]:mulhsu t6, t5, t4<br> [0x80003144]:sw t6, 0x80(fp)<br>     |
| 389|[0x800069fc]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==1<br>                                                                                                                                                              |[0x80003154]:mulhsu t6, t5, t4<br> [0x80003158]:sw t6, 0x84(fp)<br>     |
| 390|[0x80006a00]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==65536<br>                                                                                                                                                          |[0x80003168]:mulhsu t6, t5, t4<br> [0x8000316c]:sw t6, 0x88(fp)<br>     |
| 391|[0x80006a04]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==3<br>                                                                                                                                                               |[0x8000317c]:mulhsu t6, t5, t4<br> [0x80003180]:sw t6, 0x8c(fp)<br>     |
| 392|[0x80006a08]<br>0x00003C56<br> |- rs1_val==46341 and rs2_val==1431655765<br>                                                                                                                                                      |[0x80003194]:mulhsu t6, t5, t4<br> [0x80003198]:sw t6, 0x90(fp)<br>     |
| 393|[0x80006a0c]<br>0x000078AD<br> |- rs1_val==46341 and rs2_val==2863311530<br>                                                                                                                                                      |[0x800031ac]:mulhsu t6, t5, t4<br> [0x800031b0]:sw t6, 0x94(fp)<br>     |
| 394|[0x80006a10]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==5<br>                                                                                                                                                               |[0x800031c0]:mulhsu t6, t5, t4<br> [0x800031c4]:sw t6, 0x98(fp)<br>     |
| 395|[0x80006a14]<br>0x00002434<br> |- rs1_val==46341 and rs2_val==858993459<br>                                                                                                                                                       |[0x800031d8]:mulhsu t6, t5, t4<br> [0x800031dc]:sw t6, 0x9c(fp)<br>     |
| 396|[0x80006a18]<br>0x00004868<br> |- rs1_val==46341 and rs2_val==1717986918<br>                                                                                                                                                      |[0x800031f0]:mulhsu t6, t5, t4<br> [0x800031f4]:sw t6, 0xa0(fp)<br>     |
| 397|[0x80006a1c]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==46340<br>                                                                                                                                                           |[0x80003208]:mulhsu t6, t5, t4<br> [0x8000320c]:sw t6, 0xa4(fp)<br>     |
| 398|[0x80006a20]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==65535<br>                                                                                                                                                           |[0x80003220]:mulhsu t6, t5, t4<br> [0x80003224]:sw t6, 0xa8(fp)<br>     |
| 399|[0x80006a24]<br>0x00003C56<br> |- rs1_val==46341 and rs2_val==1431655764<br>                                                                                                                                                      |[0x80003238]:mulhsu t6, t5, t4<br> [0x8000323c]:sw t6, 0xac(fp)<br>     |
| 400|[0x80006a28]<br>0x000078AD<br> |- rs1_val==46341 and rs2_val==2863311529<br>                                                                                                                                                      |[0x80003250]:mulhsu t6, t5, t4<br> [0x80003254]:sw t6, 0xb0(fp)<br>     |
| 401|[0x80006a2c]<br>0x00002434<br> |- rs1_val==46341 and rs2_val==858993458<br>                                                                                                                                                       |[0x80003268]:mulhsu t6, t5, t4<br> [0x8000326c]:sw t6, 0xb4(fp)<br>     |
| 402|[0x80006a30]<br>0x00004868<br> |- rs1_val==46341 and rs2_val==1717986917<br>                                                                                                                                                      |[0x80003280]:mulhsu t6, t5, t4<br> [0x80003284]:sw t6, 0xb8(fp)<br>     |
| 403|[0x80006a34]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==46339<br>                                                                                                                                                           |[0x80003298]:mulhsu t6, t5, t4<br> [0x8000329c]:sw t6, 0xbc(fp)<br>     |
| 404|[0x80006a3c]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==65534<br>                                                                                                                                                           |[0x800032c4]:mulhsu t6, t5, t4<br> [0x800032c8]:sw t6, 0xc4(fp)<br>     |
| 405|[0x80006a40]<br>0x00003C57<br> |- rs1_val==46341 and rs2_val==1431655766<br>                                                                                                                                                      |[0x800032dc]:mulhsu t6, t5, t4<br> [0x800032e0]:sw t6, 0xc8(fp)<br>     |
| 406|[0x80006a44]<br>0x000078AE<br> |- rs1_val==46341 and rs2_val==2863311531<br>                                                                                                                                                      |[0x800032f4]:mulhsu t6, t5, t4<br> [0x800032f8]:sw t6, 0xcc(fp)<br>     |
| 407|[0x80006a48]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==6<br>                                                                                                                                                               |[0x80003308]:mulhsu t6, t5, t4<br> [0x8000330c]:sw t6, 0xd0(fp)<br>     |
| 408|[0x80006a4c]<br>0x00004867<br> |- rs1_val==1717986917 and rs2_val==46339<br>                                                                                                                                                      |[0x80003320]:mulhsu t6, t5, t4<br> [0x80003324]:sw t6, 0xd4(fp)<br>     |
| 409|[0x80006a50]<br>0x00002434<br> |- rs1_val==46341 and rs2_val==858993460<br>                                                                                                                                                       |[0x80003338]:mulhsu t6, t5, t4<br> [0x8000333c]:sw t6, 0xd8(fp)<br>     |
| 410|[0x80006a54]<br>0x00000000<br> |- rs1_val==1717986917 and rs2_val==0<br>                                                                                                                                                          |[0x8000334c]:mulhsu t6, t5, t4<br> [0x80003350]:sw t6, 0xdc(fp)<br>     |
| 411|[0x80006a58]<br>0x00004868<br> |- rs1_val==46341 and rs2_val==1717986919<br>                                                                                                                                                      |[0x80003364]:mulhsu t6, t5, t4<br> [0x80003368]:sw t6, 0xe0(fp)<br>     |
| 412|[0x80006a5c]<br>0x00006665<br> |- rs1_val==1717986917 and rs2_val==65534<br>                                                                                                                                                      |[0x8000337c]:mulhsu t6, t5, t4<br> [0x80003380]:sw t6, 0xe4(fp)<br>     |
| 413|[0x80006a60]<br>0x00000001<br> |- rs1_val==1717986917 and rs2_val==4<br>                                                                                                                                                          |[0x80003390]:mulhsu t6, t5, t4<br> [0x80003394]:sw t6, 0xe8(fp)<br>     |
| 414|[0x80006a64]<br>0x22222221<br> |- rs1_val==1717986917 and rs2_val==1431655766<br>                                                                                                                                                 |[0x800033a8]:mulhsu t6, t5, t4<br> [0x800033ac]:sw t6, 0xec(fp)<br>     |
| 415|[0x80006a68]<br>0x44444443<br> |- rs1_val==1717986917 and rs2_val==2863311531<br>                                                                                                                                                 |[0x800033c0]:mulhsu t6, t5, t4<br> [0x800033c4]:sw t6, 0xf0(fp)<br>     |
| 416|[0x80006a6c]<br>0x00000002<br> |- rs1_val==1717986917 and rs2_val==6<br>                                                                                                                                                          |[0x800033d4]:mulhsu t6, t5, t4<br> [0x800033d8]:sw t6, 0xf4(fp)<br>     |
| 417|[0x80006a70]<br>0x147AE147<br> |- rs1_val==1717986917 and rs2_val==858993460<br>                                                                                                                                                  |[0x800033ec]:mulhsu t6, t5, t4<br> [0x800033f0]:sw t6, 0xf8(fp)<br>     |
| 418|[0x80006a74]<br>0x28F5C28F<br> |- rs1_val==1717986917 and rs2_val==1717986919<br>                                                                                                                                                 |[0x80003404]:mulhsu t6, t5, t4<br> [0x80003408]:sw t6, 0xfc(fp)<br>     |
| 419|[0x80006a78]<br>0x00004868<br> |- rs1_val==1717986917 and rs2_val==46341<br>                                                                                                                                                      |[0x8000341c]:mulhsu t6, t5, t4<br> [0x80003420]:sw t6, 0x100(fp)<br>    |
| 420|[0x80006a7c]<br>0x00000000<br> |- rs1_val==1717986917 and rs2_val==1<br>                                                                                                                                                          |[0x80003430]:mulhsu t6, t5, t4<br> [0x80003434]:sw t6, 0x104(fp)<br>    |
| 421|[0x80006a80]<br>0x00006666<br> |- rs1_val==1717986917 and rs2_val==65536<br>                                                                                                                                                      |[0x80003444]:mulhsu t6, t5, t4<br> [0x80003448]:sw t6, 0x108(fp)<br>    |
| 422|[0x80006a84]<br>0x00000000<br> |- rs1_val==0 and rs2_val==3<br>                                                                                                                                                                   |[0x80003454]:mulhsu t6, t5, t4<br> [0x80003458]:sw t6, 0x10c(fp)<br>    |
| 423|[0x80006a88]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1431655765<br>                                                                                                                                                          |[0x80003468]:mulhsu t6, t5, t4<br> [0x8000346c]:sw t6, 0x110(fp)<br>    |
| 424|[0x80006a8c]<br>0x00000000<br> |- rs1_val==0 and rs2_val==2863311530<br>                                                                                                                                                          |[0x8000347c]:mulhsu t6, t5, t4<br> [0x80003480]:sw t6, 0x114(fp)<br>    |
| 425|[0x80006a90]<br>0x00000000<br> |- rs1_val==0 and rs2_val==5<br>                                                                                                                                                                   |[0x8000348c]:mulhsu t6, t5, t4<br> [0x80003490]:sw t6, 0x118(fp)<br>    |
| 426|[0x80006a94]<br>0x00000000<br> |- rs1_val==0 and rs2_val==858993459<br>                                                                                                                                                           |[0x800034a0]:mulhsu t6, t5, t4<br> [0x800034a4]:sw t6, 0x11c(fp)<br>    |
| 427|[0x80006a98]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1717986918<br>                                                                                                                                                          |[0x800034b4]:mulhsu t6, t5, t4<br> [0x800034b8]:sw t6, 0x120(fp)<br>    |
| 428|[0x80006a9c]<br>0x00000000<br> |- rs1_val==0 and rs2_val==46340<br>                                                                                                                                                               |[0x800034c8]:mulhsu t6, t5, t4<br> [0x800034cc]:sw t6, 0x124(fp)<br>    |
| 429|[0x80006aa0]<br>0x00000000<br> |- rs1_val==0 and rs2_val==65535<br>                                                                                                                                                               |[0x800034dc]:mulhsu t6, t5, t4<br> [0x800034e0]:sw t6, 0x128(fp)<br>    |
| 430|[0x80006aa4]<br>0x00000000<br> |- rs1_val==0 and rs2_val==2<br>                                                                                                                                                                   |[0x800034ec]:mulhsu t6, t5, t4<br> [0x800034f0]:sw t6, 0x12c(fp)<br>    |
| 431|[0x80006aa8]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1431655764<br>                                                                                                                                                          |[0x80003500]:mulhsu t6, t5, t4<br> [0x80003504]:sw t6, 0x130(fp)<br>    |
| 432|[0x80006aac]<br>0x00000000<br> |- rs1_val==0 and rs2_val==2863311529<br>                                                                                                                                                          |[0x80003514]:mulhsu t6, t5, t4<br> [0x80003518]:sw t6, 0x134(fp)<br>    |
| 433|[0x80006ab0]<br>0x00000000<br> |- rs1_val==0 and rs2_val==858993458<br>                                                                                                                                                           |[0x80003528]:mulhsu t6, t5, t4<br> [0x8000352c]:sw t6, 0x138(fp)<br>    |
| 434|[0x80006ab4]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1717986917<br>                                                                                                                                                          |[0x8000353c]:mulhsu t6, t5, t4<br> [0x80003540]:sw t6, 0x13c(fp)<br>    |
| 435|[0x80006ab8]<br>0x00000000<br> |- rs1_val==0 and rs2_val==46339<br>                                                                                                                                                               |[0x80003550]:mulhsu t6, t5, t4<br> [0x80003554]:sw t6, 0x140(fp)<br>    |
| 436|[0x80006ac0]<br>0x00000000<br> |- rs1_val==0 and rs2_val==65534<br>                                                                                                                                                               |[0x80003574]:mulhsu t6, t5, t4<br> [0x80003578]:sw t6, 0x148(fp)<br>    |
| 437|[0x80006ac4]<br>0x00000000<br> |- rs1_val==0 and rs2_val==4<br>                                                                                                                                                                   |[0x80003584]:mulhsu t6, t5, t4<br> [0x80003588]:sw t6, 0x14c(fp)<br>    |
| 438|[0x80006ac8]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1431655766<br>                                                                                                                                                          |[0x80003598]:mulhsu t6, t5, t4<br> [0x8000359c]:sw t6, 0x150(fp)<br>    |
| 439|[0x80006acc]<br>0x00000000<br> |- rs1_val==0 and rs2_val==2863311531<br>                                                                                                                                                          |[0x800035ac]:mulhsu t6, t5, t4<br> [0x800035b0]:sw t6, 0x154(fp)<br>    |
| 440|[0x80006ad0]<br>0x00000000<br> |- rs1_val==0 and rs2_val==6<br>                                                                                                                                                                   |[0x800035bc]:mulhsu t6, t5, t4<br> [0x800035c0]:sw t6, 0x158(fp)<br>    |
| 441|[0x80006ad4]<br>0x00000000<br> |- rs1_val==0 and rs2_val==858993460<br>                                                                                                                                                           |[0x800035d0]:mulhsu t6, t5, t4<br> [0x800035d4]:sw t6, 0x15c(fp)<br>    |
| 442|[0x80006ad8]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1717986919<br>                                                                                                                                                          |[0x800035e4]:mulhsu t6, t5, t4<br> [0x800035e8]:sw t6, 0x160(fp)<br>    |
| 443|[0x80006adc]<br>0x00000000<br> |- rs1_val==0 and rs2_val==46341<br>                                                                                                                                                               |[0x800035f8]:mulhsu t6, t5, t4<br> [0x800035fc]:sw t6, 0x164(fp)<br>    |
| 444|[0x80006ae0]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1<br>                                                                                                                                                                   |[0x80003608]:mulhsu t6, t5, t4<br> [0x8000360c]:sw t6, 0x168(fp)<br>    |
| 445|[0x80006ae4]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==3<br>                                                                                                                                                               |[0x8000361c]:mulhsu t6, t5, t4<br> [0x80003620]:sw t6, 0x16c(fp)<br>    |
| 446|[0x80006ae8]<br>0x00003C56<br> |- rs1_val==46339 and rs2_val==1431655765<br>                                                                                                                                                      |[0x80003634]:mulhsu t6, t5, t4<br> [0x80003638]:sw t6, 0x170(fp)<br>    |
| 447|[0x80006aec]<br>0x000078AC<br> |- rs1_val==46339 and rs2_val==2863311530<br>                                                                                                                                                      |[0x8000364c]:mulhsu t6, t5, t4<br> [0x80003650]:sw t6, 0x174(fp)<br>    |
| 448|[0x80006af0]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==5<br>                                                                                                                                                               |[0x80003660]:mulhsu t6, t5, t4<br> [0x80003664]:sw t6, 0x178(fp)<br>    |
| 449|[0x80006af4]<br>0x00002433<br> |- rs1_val==46339 and rs2_val==858993459<br>                                                                                                                                                       |[0x80003678]:mulhsu t6, t5, t4<br> [0x8000367c]:sw t6, 0x17c(fp)<br>    |
| 450|[0x80006af8]<br>0x00004867<br> |- rs1_val==46339 and rs2_val==1717986918<br>                                                                                                                                                      |[0x80003690]:mulhsu t6, t5, t4<br> [0x80003694]:sw t6, 0x180(fp)<br>    |
| 451|[0x80006afc]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==46340<br>                                                                                                                                                           |[0x800036a8]:mulhsu t6, t5, t4<br> [0x800036ac]:sw t6, 0x184(fp)<br>    |
| 452|[0x80006b00]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==65535<br>                                                                                                                                                           |[0x800036c0]:mulhsu t6, t5, t4<br> [0x800036c4]:sw t6, 0x188(fp)<br>    |
| 453|[0x80006b04]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==2<br>                                                                                                                                                               |[0x800036d4]:mulhsu t6, t5, t4<br> [0x800036d8]:sw t6, 0x18c(fp)<br>    |
| 454|[0x80006b08]<br>0x00003C56<br> |- rs1_val==46339 and rs2_val==1431655764<br>                                                                                                                                                      |[0x800036ec]:mulhsu t6, t5, t4<br> [0x800036f0]:sw t6, 0x190(fp)<br>    |
| 455|[0x80006b0c]<br>0x000078AC<br> |- rs1_val==46339 and rs2_val==2863311529<br>                                                                                                                                                      |[0x80003704]:mulhsu t6, t5, t4<br> [0x80003708]:sw t6, 0x194(fp)<br>    |
| 456|[0x80006b10]<br>0x00002433<br> |- rs1_val==46339 and rs2_val==858993458<br>                                                                                                                                                       |[0x8000371c]:mulhsu t6, t5, t4<br> [0x80003720]:sw t6, 0x198(fp)<br>    |
| 457|[0x80006b14]<br>0x00004867<br> |- rs1_val==46339 and rs2_val==1717986917<br>                                                                                                                                                      |[0x80003734]:mulhsu t6, t5, t4<br> [0x80003738]:sw t6, 0x19c(fp)<br>    |
| 458|[0x80006b18]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==46339<br>                                                                                                                                                           |[0x8000374c]:mulhsu t6, t5, t4<br> [0x80003750]:sw t6, 0x1a0(fp)<br>    |
| 459|[0x80006b1c]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==0<br>                                                                                                                                                               |[0x80003760]:mulhsu t6, t5, t4<br> [0x80003764]:sw t6, 0x1a4(fp)<br>    |
| 460|[0x80006b20]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==65534<br>                                                                                                                                                           |[0x80003778]:mulhsu t6, t5, t4<br> [0x8000377c]:sw t6, 0x1a8(fp)<br>    |
| 461|[0x80006b24]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==4<br>                                                                                                                                                               |[0x8000378c]:mulhsu t6, t5, t4<br> [0x80003790]:sw t6, 0x1ac(fp)<br>    |
| 462|[0x80006b28]<br>0x00003C56<br> |- rs1_val==46339 and rs2_val==1431655766<br>                                                                                                                                                      |[0x800037a4]:mulhsu t6, t5, t4<br> [0x800037a8]:sw t6, 0x1b0(fp)<br>    |
| 463|[0x80006b2c]<br>0x000078AC<br> |- rs1_val==46339 and rs2_val==2863311531<br>                                                                                                                                                      |[0x800037bc]:mulhsu t6, t5, t4<br> [0x800037c0]:sw t6, 0x1b4(fp)<br>    |
| 464|[0x80006b30]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==6<br>                                                                                                                                                               |[0x800037d0]:mulhsu t6, t5, t4<br> [0x800037d4]:sw t6, 0x1b8(fp)<br>    |
| 465|[0x80006b34]<br>0x00002433<br> |- rs1_val==46339 and rs2_val==858993460<br>                                                                                                                                                       |[0x800037e8]:mulhsu t6, t5, t4<br> [0x800037ec]:sw t6, 0x1bc(fp)<br>    |
| 466|[0x80006b38]<br>0x00004867<br> |- rs1_val==46339 and rs2_val==1717986919<br>                                                                                                                                                      |[0x80003800]:mulhsu t6, t5, t4<br> [0x80003804]:sw t6, 0x1c0(fp)<br>    |
| 467|[0x80006b3c]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==46341<br>                                                                                                                                                           |[0x80003818]:mulhsu t6, t5, t4<br> [0x8000381c]:sw t6, 0x1c4(fp)<br>    |
| 468|[0x80006b40]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==1<br>                                                                                                                                                               |[0x8000382c]:mulhsu t6, t5, t4<br> [0x80003830]:sw t6, 0x1c8(fp)<br>    |
| 469|[0x80006b44]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==65536<br>                                                                                                                                                           |[0x80003840]:mulhsu t6, t5, t4<br> [0x80003844]:sw t6, 0x1cc(fp)<br>    |
| 470|[0x80006b48]<br>0x00000000<br> |- rs1_val==4 and rs2_val==3<br>                                                                                                                                                                   |[0x80003850]:mulhsu t6, t5, t4<br> [0x80003854]:sw t6, 0x1d0(fp)<br>    |
| 471|[0x80006b4c]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1431655765<br>                                                                                                                                                          |[0x80003864]:mulhsu t6, t5, t4<br> [0x80003868]:sw t6, 0x1d4(fp)<br>    |
| 472|[0x80006b50]<br>0x00000002<br> |- rs1_val==4 and rs2_val==2863311530<br>                                                                                                                                                          |[0x80003878]:mulhsu t6, t5, t4<br> [0x8000387c]:sw t6, 0x1d8(fp)<br>    |
| 473|[0x80006b54]<br>0x00000000<br> |- rs1_val==4 and rs2_val==5<br>                                                                                                                                                                   |[0x80003888]:mulhsu t6, t5, t4<br> [0x8000388c]:sw t6, 0x1dc(fp)<br>    |
| 474|[0x80006b58]<br>0x00000000<br> |- rs1_val==4 and rs2_val==858993459<br>                                                                                                                                                           |[0x8000389c]:mulhsu t6, t5, t4<br> [0x800038a0]:sw t6, 0x1e0(fp)<br>    |
| 475|[0x80006b5c]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1717986918<br>                                                                                                                                                          |[0x800038b0]:mulhsu t6, t5, t4<br> [0x800038b4]:sw t6, 0x1e4(fp)<br>    |
| 476|[0x80006b60]<br>0x00000000<br> |- rs1_val==4 and rs2_val==46340<br>                                                                                                                                                               |[0x800038c4]:mulhsu t6, t5, t4<br> [0x800038c8]:sw t6, 0x1e8(fp)<br>    |
| 477|[0x80006b64]<br>0x00000000<br> |- rs1_val==4 and rs2_val==65535<br>                                                                                                                                                               |[0x800038d8]:mulhsu t6, t5, t4<br> [0x800038dc]:sw t6, 0x1ec(fp)<br>    |
| 478|[0x80006b68]<br>0x00000000<br> |- rs1_val==4 and rs2_val==2<br>                                                                                                                                                                   |[0x800038e8]:mulhsu t6, t5, t4<br> [0x800038ec]:sw t6, 0x1f0(fp)<br>    |
| 479|[0x80006b6c]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1431655764<br>                                                                                                                                                          |[0x800038fc]:mulhsu t6, t5, t4<br> [0x80003900]:sw t6, 0x1f4(fp)<br>    |
| 480|[0x80006b70]<br>0x00000002<br> |- rs1_val==4 and rs2_val==2863311529<br>                                                                                                                                                          |[0x80003910]:mulhsu t6, t5, t4<br> [0x80003914]:sw t6, 0x1f8(fp)<br>    |
| 481|[0x80006b74]<br>0x00000000<br> |- rs1_val==4 and rs2_val==858993458<br>                                                                                                                                                           |[0x80003924]:mulhsu t6, t5, t4<br> [0x80003928]:sw t6, 0x1fc(fp)<br>    |
| 482|[0x80006b78]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1717986917<br>                                                                                                                                                          |[0x80003938]:mulhsu t6, t5, t4<br> [0x8000393c]:sw t6, 0x200(fp)<br>    |
| 483|[0x80006b7c]<br>0x00000000<br> |- rs1_val==4 and rs2_val==46339<br>                                                                                                                                                               |[0x8000394c]:mulhsu t6, t5, t4<br> [0x80003950]:sw t6, 0x204(fp)<br>    |
| 484|[0x80006b80]<br>0x00000000<br> |- rs1_val==4 and rs2_val==65534<br>                                                                                                                                                               |[0x80003960]:mulhsu t6, t5, t4<br> [0x80003964]:sw t6, 0x208(fp)<br>    |
| 485|[0x80006b84]<br>0x00000000<br> |- rs1_val==4 and rs2_val==4<br>                                                                                                                                                                   |[0x80003970]:mulhsu t6, t5, t4<br> [0x80003974]:sw t6, 0x20c(fp)<br>    |
| 486|[0x80006b88]<br>0x00000002<br> |- rs1_val==4 and rs2_val==2863311531<br>                                                                                                                                                          |[0x80003984]:mulhsu t6, t5, t4<br> [0x80003988]:sw t6, 0x210(fp)<br>    |
| 487|[0x80006b8c]<br>0x00000000<br> |- rs1_val==4 and rs2_val==6<br>                                                                                                                                                                   |[0x80003994]:mulhsu t6, t5, t4<br> [0x80003998]:sw t6, 0x214(fp)<br>    |
| 488|[0x80006b90]<br>0x00000000<br> |- rs1_val==4 and rs2_val==858993460<br>                                                                                                                                                           |[0x800039a8]:mulhsu t6, t5, t4<br> [0x800039ac]:sw t6, 0x218(fp)<br>    |
| 489|[0x80006b94]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1717986919<br>                                                                                                                                                          |[0x800039bc]:mulhsu t6, t5, t4<br> [0x800039c0]:sw t6, 0x21c(fp)<br>    |
| 490|[0x80006b98]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==65536<br>                                                                                                                                                           |[0x800039d0]:mulhsu t6, t5, t4<br> [0x800039d4]:sw t6, 0x220(fp)<br>    |
