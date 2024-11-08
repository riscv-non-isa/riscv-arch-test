
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature (completely or partially)
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update the signature completely
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000148', '0x80003ef8')]      |
| SIG_REGION                | [('0x80006110', '0x80006cd8', '754 words')]      |
| COV_LABELS                | mulhu      |
| TEST_NAME                 | /home/user/Work/New_Repo/riscv-arch-test-PR/riscof-plugins/rv32/riscof_work/src/mulhu-01.S/ref.S    |
| Total Number of coverpoints| 644     |
| Total Coverpoints Hit     | 642      |
| Total Signature Updates   | 752      |
| STAT1                     | 562      |
| STAT2                     | 190      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000041c]:mulhu t6, t5, t4
      [0x80000420]:sw t6, 0x24(fp)
 -- Signature Addresses:
      Address: 0x8000619c Data: 0x0000EFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000430]:mulhu t6, t5, t4
      [0x80000434]:sw t6, 0x28(fp)
 -- Signature Addresses:
      Address: 0x800061a0 Data: 0x0000DFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000444]:mulhu t6, t5, t4
      [0x80000448]:sw t6, 0x2c(fp)
 -- Signature Addresses:
      Address: 0x800061a4 Data: 0x0000BFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000458]:mulhu t6, t5, t4
      [0x8000045c]:sw t6, 0x30(fp)
 -- Signature Addresses:
      Address: 0x800061a8 Data: 0x00007FFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000468]:mulhu t6, t5, t4
      [0x8000046c]:sw t6, 0x34(fp)
 -- Signature Addresses:
      Address: 0x800061ac Data: 0x0000FFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000478]:mulhu t6, t5, t4
      [0x8000047c]:sw t6, 0x38(fp)
 -- Signature Addresses:
      Address: 0x800061b0 Data: 0x0000FFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000488]:mulhu t6, t5, t4
      [0x8000048c]:sw t6, 0x3c(fp)
 -- Signature Addresses:
      Address: 0x800061b4 Data: 0x0000FFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000498]:mulhu t6, t5, t4
      [0x8000049c]:sw t6, 0x40(fp)
 -- Signature Addresses:
      Address: 0x800061b8 Data: 0x0000FFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004a8]:mulhu t6, t5, t4
      [0x800004ac]:sw t6, 0x44(fp)
 -- Signature Addresses:
      Address: 0x800061bc Data: 0x0000FFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004b8]:mulhu t6, t5, t4
      [0x800004bc]:sw t6, 0x48(fp)
 -- Signature Addresses:
      Address: 0x800061c0 Data: 0x0000FFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004c8]:mulhu t6, t5, t4
      [0x800004cc]:sw t6, 0x4c(fp)
 -- Signature Addresses:
      Address: 0x800061c4 Data: 0x0000FFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004d8]:mulhu t6, t5, t4
      [0x800004dc]:sw t6, 0x50(fp)
 -- Signature Addresses:
      Address: 0x800061c8 Data: 0x0000FFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004e8]:mulhu t6, t5, t4
      [0x800004ec]:sw t6, 0x54(fp)
 -- Signature Addresses:
      Address: 0x800061cc Data: 0x0000FFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004f8]:mulhu t6, t5, t4
      [0x800004fc]:sw t6, 0x58(fp)
 -- Signature Addresses:
      Address: 0x800061d0 Data: 0x0000FFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000508]:mulhu t6, t5, t4
      [0x8000050c]:sw t6, 0x5c(fp)
 -- Signature Addresses:
      Address: 0x800061d4 Data: 0x0000FFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000051c]:mulhu t6, t5, t4
      [0x80000520]:sw t6, 0x60(fp)
 -- Signature Addresses:
      Address: 0x800061d8 Data: 0x0000FFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000530]:mulhu t6, t5, t4
      [0x80000534]:sw t6, 0x64(fp)
 -- Signature Addresses:
      Address: 0x800061dc Data: 0x0000FFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000544]:mulhu t6, t5, t4
      [0x80000548]:sw t6, 0x68(fp)
 -- Signature Addresses:
      Address: 0x800061e0 Data: 0x0000FFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000558]:mulhu t6, t5, t4
      [0x8000055c]:sw t6, 0x6c(fp)
 -- Signature Addresses:
      Address: 0x800061e4 Data: 0x0000FFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000056c]:mulhu t6, t5, t4
      [0x80000570]:sw t6, 0x70(fp)
 -- Signature Addresses:
      Address: 0x800061e8 Data: 0x0000FFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000580]:mulhu t6, t5, t4
      [0x80000584]:sw t6, 0x74(fp)
 -- Signature Addresses:
      Address: 0x800061ec Data: 0x0000FFFE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000594]:mulhu t6, t5, t4
      [0x80000598]:sw t6, 0x78(fp)
 -- Signature Addresses:
      Address: 0x800061f0 Data: 0x0000FFFD
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005a8]:mulhu t6, t5, t4
      [0x800005ac]:sw t6, 0x7c(fp)
 -- Signature Addresses:
      Address: 0x800061f4 Data: 0x0000FFFB
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005bc]:mulhu t6, t5, t4
      [0x800005c0]:sw t6, 0x80(fp)
 -- Signature Addresses:
      Address: 0x800061f8 Data: 0x0000FFF7
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005d0]:mulhu t6, t5, t4
      [0x800005d4]:sw t6, 0x84(fp)
 -- Signature Addresses:
      Address: 0x800061fc Data: 0x0000FFEF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005e4]:mulhu t6, t5, t4
      [0x800005e8]:sw t6, 0x88(fp)
 -- Signature Addresses:
      Address: 0x80006200 Data: 0x0000FFDF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005f8]:mulhu t6, t5, t4
      [0x800005fc]:sw t6, 0x8c(fp)
 -- Signature Addresses:
      Address: 0x80006204 Data: 0x0000FFBF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000060c]:mulhu t6, t5, t4
      [0x80000610]:sw t6, 0x90(fp)
 -- Signature Addresses:
      Address: 0x80006208 Data: 0x0000FF7F
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000620]:mulhu t6, t5, t4
      [0x80000624]:sw t6, 0x94(fp)
 -- Signature Addresses:
      Address: 0x8000620c Data: 0x0000FEFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000634]:mulhu t6, t5, t4
      [0x80000638]:sw t6, 0x98(fp)
 -- Signature Addresses:
      Address: 0x80006210 Data: 0x0000FDFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000648]:mulhu t6, t5, t4
      [0x8000064c]:sw t6, 0x9c(fp)
 -- Signature Addresses:
      Address: 0x80006214 Data: 0x0000FBFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000065c]:mulhu t6, t5, t4
      [0x80000660]:sw t6, 0xa0(fp)
 -- Signature Addresses:
      Address: 0x80006218 Data: 0x0000F7FF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000670]:mulhu t6, t5, t4
      [0x80000674]:sw t6, 0xa4(fp)
 -- Signature Addresses:
      Address: 0x8000621c Data: 0x0000EFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000684]:mulhu t6, t5, t4
      [0x80000688]:sw t6, 0xa8(fp)
 -- Signature Addresses:
      Address: 0x80006220 Data: 0x0000DFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000698]:mulhu t6, t5, t4
      [0x8000069c]:sw t6, 0xac(fp)
 -- Signature Addresses:
      Address: 0x80006224 Data: 0x0000BFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006ac]:mulhu t6, t5, t4
      [0x800006b0]:sw t6, 0xb0(fp)
 -- Signature Addresses:
      Address: 0x80006228 Data: 0x00007FFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006dc]:mulhu t6, t5, t4
      [0x800006e0]:sw t6, 0xbc(fp)
 -- Signature Addresses:
      Address: 0x80006234 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006ec]:mulhu t6, t5, t4
      [0x800006f0]:sw t6, 0xc0(fp)
 -- Signature Addresses:
      Address: 0x80006238 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006fc]:mulhu t6, t5, t4
      [0x80000700]:sw t6, 0xc4(fp)
 -- Signature Addresses:
      Address: 0x8000623c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000070c]:mulhu t6, t5, t4
      [0x80000710]:sw t6, 0xc8(fp)
 -- Signature Addresses:
      Address: 0x80006240 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000071c]:mulhu t6, t5, t4
      [0x80000720]:sw t6, 0xcc(fp)
 -- Signature Addresses:
      Address: 0x80006244 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000072c]:mulhu t6, t5, t4
      [0x80000730]:sw t6, 0xd0(fp)
 -- Signature Addresses:
      Address: 0x80006248 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000073c]:mulhu t6, t5, t4
      [0x80000740]:sw t6, 0xd4(fp)
 -- Signature Addresses:
      Address: 0x8000624c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000074c]:mulhu t6, t5, t4
      [0x80000750]:sw t6, 0xd8(fp)
 -- Signature Addresses:
      Address: 0x80006250 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000760]:mulhu t6, t5, t4
      [0x80000764]:sw t6, 0xdc(fp)
 -- Signature Addresses:
      Address: 0x80006254 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000770]:mulhu t6, t5, t4
      [0x80000774]:sw t6, 0xe0(fp)
 -- Signature Addresses:
      Address: 0x80006258 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000780]:mulhu t6, t5, t4
      [0x80000784]:sw t6, 0xe4(fp)
 -- Signature Addresses:
      Address: 0x8000625c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000790]:mulhu t6, t5, t4
      [0x80000794]:sw t6, 0xe8(fp)
 -- Signature Addresses:
      Address: 0x80006260 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007a0]:mulhu t6, t5, t4
      [0x800007a4]:sw t6, 0xec(fp)
 -- Signature Addresses:
      Address: 0x80006264 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007b0]:mulhu t6, t5, t4
      [0x800007b4]:sw t6, 0xf0(fp)
 -- Signature Addresses:
      Address: 0x80006268 Data: 0x00000002
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007c0]:mulhu t6, t5, t4
      [0x800007c4]:sw t6, 0xf4(fp)
 -- Signature Addresses:
      Address: 0x8000626c Data: 0x00000004
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007d0]:mulhu t6, t5, t4
      [0x800007d4]:sw t6, 0xf8(fp)
 -- Signature Addresses:
      Address: 0x80006270 Data: 0x00000008
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007e0]:mulhu t6, t5, t4
      [0x800007e4]:sw t6, 0xfc(fp)
 -- Signature Addresses:
      Address: 0x80006274 Data: 0x00000010
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007f0]:mulhu t6, t5, t4
      [0x800007f4]:sw t6, 0x100(fp)
 -- Signature Addresses:
      Address: 0x80006278 Data: 0x00000020
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000800]:mulhu t6, t5, t4
      [0x80000804]:sw t6, 0x104(fp)
 -- Signature Addresses:
      Address: 0x8000627c Data: 0x00000040
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000810]:mulhu t6, t5, t4
      [0x80000814]:sw t6, 0x108(fp)
 -- Signature Addresses:
      Address: 0x80006280 Data: 0x00000080
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000820]:mulhu t6, t5, t4
      [0x80000824]:sw t6, 0x10c(fp)
 -- Signature Addresses:
      Address: 0x80006284 Data: 0x00000100
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000830]:mulhu t6, t5, t4
      [0x80000834]:sw t6, 0x110(fp)
 -- Signature Addresses:
      Address: 0x80006288 Data: 0x00000200
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000840]:mulhu t6, t5, t4
      [0x80000844]:sw t6, 0x114(fp)
 -- Signature Addresses:
      Address: 0x8000628c Data: 0x00000400
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000850]:mulhu t6, t5, t4
      [0x80000854]:sw t6, 0x118(fp)
 -- Signature Addresses:
      Address: 0x80006290 Data: 0x00000800
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000860]:mulhu t6, t5, t4
      [0x80000864]:sw t6, 0x11c(fp)
 -- Signature Addresses:
      Address: 0x80006294 Data: 0x00001000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000870]:mulhu t6, t5, t4
      [0x80000874]:sw t6, 0x120(fp)
 -- Signature Addresses:
      Address: 0x80006298 Data: 0x00002000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000880]:mulhu t6, t5, t4
      [0x80000884]:sw t6, 0x124(fp)
 -- Signature Addresses:
      Address: 0x8000629c Data: 0x00004000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000890]:mulhu t6, t5, t4
      [0x80000894]:sw t6, 0x128(fp)
 -- Signature Addresses:
      Address: 0x800062a0 Data: 0x00008000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008d0]:mulhu t6, t5, t4
      [0x800008d4]:sw t6, 0x138(fp)
 -- Signature Addresses:
      Address: 0x800062b0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008e0]:mulhu t6, t5, t4
      [0x800008e4]:sw t6, 0x13c(fp)
 -- Signature Addresses:
      Address: 0x800062b4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008f0]:mulhu t6, t5, t4
      [0x800008f4]:sw t6, 0x140(fp)
 -- Signature Addresses:
      Address: 0x800062b8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000900]:mulhu t6, t5, t4
      [0x80000904]:sw t6, 0x144(fp)
 -- Signature Addresses:
      Address: 0x800062bc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000910]:mulhu t6, t5, t4
      [0x80000914]:sw t6, 0x148(fp)
 -- Signature Addresses:
      Address: 0x800062c0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000920]:mulhu t6, t5, t4
      [0x80000924]:sw t6, 0x14c(fp)
 -- Signature Addresses:
      Address: 0x800062c4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000930]:mulhu t6, t5, t4
      [0x80000934]:sw t6, 0x150(fp)
 -- Signature Addresses:
      Address: 0x800062c8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000940]:mulhu t6, t5, t4
      [0x80000944]:sw t6, 0x154(fp)
 -- Signature Addresses:
      Address: 0x800062cc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000954]:mulhu t6, t5, t4
      [0x80000958]:sw t6, 0x158(fp)
 -- Signature Addresses:
      Address: 0x800062d0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000964]:mulhu t6, t5, t4
      [0x80000968]:sw t6, 0x15c(fp)
 -- Signature Addresses:
      Address: 0x800062d4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000974]:mulhu t6, t5, t4
      [0x80000978]:sw t6, 0x160(fp)
 -- Signature Addresses:
      Address: 0x800062d8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000984]:mulhu t6, t5, t4
      [0x80000988]:sw t6, 0x164(fp)
 -- Signature Addresses:
      Address: 0x800062dc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000994]:mulhu t6, t5, t4
      [0x80000998]:sw t6, 0x168(fp)
 -- Signature Addresses:
      Address: 0x800062e0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009a4]:mulhu t6, t5, t4
      [0x800009a8]:sw t6, 0x16c(fp)
 -- Signature Addresses:
      Address: 0x800062e4 Data: 0x00000002
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009b4]:mulhu t6, t5, t4
      [0x800009b8]:sw t6, 0x170(fp)
 -- Signature Addresses:
      Address: 0x800062e8 Data: 0x00000004
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009c4]:mulhu t6, t5, t4
      [0x800009c8]:sw t6, 0x174(fp)
 -- Signature Addresses:
      Address: 0x800062ec Data: 0x00000008
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009d4]:mulhu t6, t5, t4
      [0x800009d8]:sw t6, 0x178(fp)
 -- Signature Addresses:
      Address: 0x800062f0 Data: 0x00000010
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009e4]:mulhu t6, t5, t4
      [0x800009e8]:sw t6, 0x17c(fp)
 -- Signature Addresses:
      Address: 0x800062f4 Data: 0x00000020
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009f4]:mulhu t6, t5, t4
      [0x800009f8]:sw t6, 0x180(fp)
 -- Signature Addresses:
      Address: 0x800062f8 Data: 0x00000040
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a04]:mulhu t6, t5, t4
      [0x80000a08]:sw t6, 0x184(fp)
 -- Signature Addresses:
      Address: 0x800062fc Data: 0x00000080
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a14]:mulhu t6, t5, t4
      [0x80000a18]:sw t6, 0x188(fp)
 -- Signature Addresses:
      Address: 0x80006300 Data: 0x00000100
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a24]:mulhu t6, t5, t4
      [0x80000a28]:sw t6, 0x18c(fp)
 -- Signature Addresses:
      Address: 0x80006304 Data: 0x00000200
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a34]:mulhu t6, t5, t4
      [0x80000a38]:sw t6, 0x190(fp)
 -- Signature Addresses:
      Address: 0x80006308 Data: 0x00000400
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a44]:mulhu t6, t5, t4
      [0x80000a48]:sw t6, 0x194(fp)
 -- Signature Addresses:
      Address: 0x8000630c Data: 0x00000800
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a54]:mulhu t6, t5, t4
      [0x80000a58]:sw t6, 0x198(fp)
 -- Signature Addresses:
      Address: 0x80006310 Data: 0x00001000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a64]:mulhu t6, t5, t4
      [0x80000a68]:sw t6, 0x19c(fp)
 -- Signature Addresses:
      Address: 0x80006314 Data: 0x00002000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a74]:mulhu t6, t5, t4
      [0x80000a78]:sw t6, 0x1a0(fp)
 -- Signature Addresses:
      Address: 0x80006318 Data: 0x00004000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a84]:mulhu t6, t5, t4
      [0x80000a88]:sw t6, 0x1a4(fp)
 -- Signature Addresses:
      Address: 0x8000631c Data: 0x00008000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a98]:mulhu t6, t5, t4
      [0x80000a9c]:sw t6, 0x1a8(fp)
 -- Signature Addresses:
      Address: 0x80006320 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000aac]:mulhu t6, t5, t4
      [0x80000ab0]:sw t6, 0x1ac(fp)
 -- Signature Addresses:
      Address: 0x80006324 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000abc]:mulhu t6, t5, t4
      [0x80000ac0]:sw t6, 0x1b0(fp)
 -- Signature Addresses:
      Address: 0x80006328 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ad0]:mulhu t6, t5, t4
      [0x80000ad4]:sw t6, 0x1b4(fp)
 -- Signature Addresses:
      Address: 0x8000632c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ae4]:mulhu t6, t5, t4
      [0x80000ae8]:sw t6, 0x1b8(fp)
 -- Signature Addresses:
      Address: 0x80006330 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000af8]:mulhu t6, t5, t4
      [0x80000afc]:sw t6, 0x1bc(fp)
 -- Signature Addresses:
      Address: 0x80006334 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b0c]:mulhu t6, t5, t4
      [0x80000b10]:sw t6, 0x1c0(fp)
 -- Signature Addresses:
      Address: 0x80006338 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b1c]:mulhu t6, t5, t4
      [0x80000b20]:sw t6, 0x1c4(fp)
 -- Signature Addresses:
      Address: 0x8000633c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b30]:mulhu t6, t5, t4
      [0x80000b34]:sw t6, 0x1c8(fp)
 -- Signature Addresses:
      Address: 0x80006340 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b44]:mulhu t6, t5, t4
      [0x80000b48]:sw t6, 0x1cc(fp)
 -- Signature Addresses:
      Address: 0x80006344 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b58]:mulhu t6, t5, t4
      [0x80000b5c]:sw t6, 0x1d0(fp)
 -- Signature Addresses:
      Address: 0x80006348 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b6c]:mulhu t6, t5, t4
      [0x80000b70]:sw t6, 0x1d4(fp)
 -- Signature Addresses:
      Address: 0x8000634c Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b80]:mulhu t6, t5, t4
      [0x80000b84]:sw t6, 0x1d8(fp)
 -- Signature Addresses:
      Address: 0x80006350 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b90]:mulhu t6, t5, t4
      [0x80000b94]:sw t6, 0x1dc(fp)
 -- Signature Addresses:
      Address: 0x80006354 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ba4]:mulhu t6, t5, t4
      [0x80000ba8]:sw t6, 0x1e0(fp)
 -- Signature Addresses:
      Address: 0x80006358 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bb4]:mulhu t6, t5, t4
      [0x80000bb8]:sw t6, 0x1e4(fp)
 -- Signature Addresses:
      Address: 0x8000635c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bc8]:mulhu t6, t5, t4
      [0x80000bcc]:sw t6, 0x1e8(fp)
 -- Signature Addresses:
      Address: 0x80006360 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bdc]:mulhu t6, t5, t4
      [0x80000be0]:sw t6, 0x1ec(fp)
 -- Signature Addresses:
      Address: 0x80006364 Data: 0x00000002
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bec]:mulhu t6, t5, t4
      [0x80000bf0]:sw t6, 0x1f0(fp)
 -- Signature Addresses:
      Address: 0x80006368 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c00]:mulhu t6, t5, t4
      [0x80000c04]:sw t6, 0x1f4(fp)
 -- Signature Addresses:
      Address: 0x8000636c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c14]:mulhu t6, t5, t4
      [0x80000c18]:sw t6, 0x1f8(fp)
 -- Signature Addresses:
      Address: 0x80006370 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c28]:mulhu t6, t5, t4
      [0x80000c2c]:sw t6, 0x1fc(fp)
 -- Signature Addresses:
      Address: 0x80006374 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c38]:mulhu t6, t5, t4
      [0x80000c3c]:sw t6, 0x200(fp)
 -- Signature Addresses:
      Address: 0x80006378 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0
      - rs2_val == 1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c48]:mulhu t6, t5, t4
      [0x80000c4c]:sw t6, 0x204(fp)
 -- Signature Addresses:
      Address: 0x8000637c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c5c]:mulhu t6, t5, t4
      [0x80000c60]:sw t6, 0x208(fp)
 -- Signature Addresses:
      Address: 0x80006380 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c74]:mulhu t6, t5, t4
      [0x80000c78]:sw t6, 0x20c(fp)
 -- Signature Addresses:
      Address: 0x80006384 Data: 0x1C71C71C
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c8c]:mulhu t6, t5, t4
      [0x80000c90]:sw t6, 0x210(fp)
 -- Signature Addresses:
      Address: 0x80006388 Data: 0x38E38E38
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ca0]:mulhu t6, t5, t4
      [0x80000ca4]:sw t6, 0x214(fp)
 -- Signature Addresses:
      Address: 0x8000638c Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cb8]:mulhu t6, t5, t4
      [0x80000cbc]:sw t6, 0x218(fp)
 -- Signature Addresses:
      Address: 0x80006390 Data: 0x11111110
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cd0]:mulhu t6, t5, t4
      [0x80000cd4]:sw t6, 0x21c(fp)
 -- Signature Addresses:
      Address: 0x80006394 Data: 0x22222221
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ce8]:mulhu t6, t5, t4
      [0x80000cec]:sw t6, 0x220(fp)
 -- Signature Addresses:
      Address: 0x80006398 Data: 0x00003C56
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d00]:mulhu t6, t5, t4
      [0x80000d04]:sw t6, 0x224(fp)
 -- Signature Addresses:
      Address: 0x8000639c Data: 0x00005554
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d14]:mulhu t6, t5, t4
      [0x80000d18]:sw t6, 0x228(fp)
 -- Signature Addresses:
      Address: 0x800063a0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d2c]:mulhu t6, t5, t4
      [0x80000d30]:sw t6, 0x22c(fp)
 -- Signature Addresses:
      Address: 0x800063a4 Data: 0x1C71C71B
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d44]:mulhu t6, t5, t4
      [0x80000d48]:sw t6, 0x230(fp)
 -- Signature Addresses:
      Address: 0x800063a8 Data: 0x38E38E38
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d5c]:mulhu t6, t5, t4
      [0x80000d60]:sw t6, 0x234(fp)
 -- Signature Addresses:
      Address: 0x800063ac Data: 0x11111110
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d74]:mulhu t6, t5, t4
      [0x80000d78]:sw t6, 0x238(fp)
 -- Signature Addresses:
      Address: 0x800063b0 Data: 0x22222221
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d8c]:mulhu t6, t5, t4
      [0x80000d90]:sw t6, 0x23c(fp)
 -- Signature Addresses:
      Address: 0x800063b4 Data: 0x00003C56
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000da0]:mulhu t6, t5, t4
      [0x80000da4]:sw t6, 0x240(fp)
 -- Signature Addresses:
      Address: 0x800063b8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000db8]:mulhu t6, t5, t4
      [0x80000dbc]:sw t6, 0x244(fp)
 -- Signature Addresses:
      Address: 0x800063bc Data: 0x00005554
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000dcc]:mulhu t6, t5, t4
      [0x80000dd0]:sw t6, 0x248(fp)
 -- Signature Addresses:
      Address: 0x800063c0 Data: 0x0000AAAA
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000de0]:mulhu t6, t5, t4
      [0x80000de4]:sw t6, 0x24c(fp)
 -- Signature Addresses:
      Address: 0x800063c4 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000df8]:mulhu t6, t5, t4
      [0x80000dfc]:sw t6, 0x250(fp)
 -- Signature Addresses:
      Address: 0x800063c8 Data: 0x1C71C71C
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e10]:mulhu t6, t5, t4
      [0x80000e14]:sw t6, 0x254(fp)
 -- Signature Addresses:
      Address: 0x800063cc Data: 0x38E38E38
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e24]:mulhu t6, t5, t4
      [0x80000e28]:sw t6, 0x258(fp)
 -- Signature Addresses:
      Address: 0x800063d0 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e3c]:mulhu t6, t5, t4
      [0x80000e40]:sw t6, 0x25c(fp)
 -- Signature Addresses:
      Address: 0x800063d4 Data: 0x11111111
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e54]:mulhu t6, t5, t4
      [0x80000e58]:sw t6, 0x260(fp)
 -- Signature Addresses:
      Address: 0x800063d8 Data: 0x22222222
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e6c]:mulhu t6, t5, t4
      [0x80000e70]:sw t6, 0x264(fp)
 -- Signature Addresses:
      Address: 0x800063dc Data: 0x00003C56
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e80]:mulhu t6, t5, t4
      [0x80000e84]:sw t6, 0x268(fp)
 -- Signature Addresses:
      Address: 0x800063e0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0
      - rs2_val == 1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e94]:mulhu t6, t5, t4
      [0x80000e98]:sw t6, 0x26c(fp)
 -- Signature Addresses:
      Address: 0x800063e4 Data: 0x00005555
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ea8]:mulhu t6, t5, t4
      [0x80000eac]:sw t6, 0x270(fp)
 -- Signature Addresses:
      Address: 0x800063e8 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ec0]:mulhu t6, t5, t4
      [0x80000ec4]:sw t6, 0x274(fp)
 -- Signature Addresses:
      Address: 0x800063ec Data: 0x38E38E38
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ed8]:mulhu t6, t5, t4
      [0x80000edc]:sw t6, 0x278(fp)
 -- Signature Addresses:
      Address: 0x800063f0 Data: 0x71C71C70
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000eec]:mulhu t6, t5, t4
      [0x80000ef0]:sw t6, 0x27c(fp)
 -- Signature Addresses:
      Address: 0x800063f4 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f04]:mulhu t6, t5, t4
      [0x80000f08]:sw t6, 0x280(fp)
 -- Signature Addresses:
      Address: 0x800063f8 Data: 0x22222221
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f1c]:mulhu t6, t5, t4
      [0x80000f20]:sw t6, 0x284(fp)
 -- Signature Addresses:
      Address: 0x800063fc Data: 0x44444443
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f34]:mulhu t6, t5, t4
      [0x80000f38]:sw t6, 0x288(fp)
 -- Signature Addresses:
      Address: 0x80006400 Data: 0x000078AD
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f4c]:mulhu t6, t5, t4
      [0x80000f50]:sw t6, 0x28c(fp)
 -- Signature Addresses:
      Address: 0x80006404 Data: 0x0000AAA9
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f60]:mulhu t6, t5, t4
      [0x80000f64]:sw t6, 0x290(fp)
 -- Signature Addresses:
      Address: 0x80006408 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f78]:mulhu t6, t5, t4
      [0x80000f7c]:sw t6, 0x294(fp)
 -- Signature Addresses:
      Address: 0x8000640c Data: 0x38E38E37
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f90]:mulhu t6, t5, t4
      [0x80000f94]:sw t6, 0x298(fp)
 -- Signature Addresses:
      Address: 0x80006410 Data: 0x71C71C70
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fa8]:mulhu t6, t5, t4
      [0x80000fac]:sw t6, 0x29c(fp)
 -- Signature Addresses:
      Address: 0x80006414 Data: 0x22222221
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fc0]:mulhu t6, t5, t4
      [0x80000fc4]:sw t6, 0x2a0(fp)
 -- Signature Addresses:
      Address: 0x80006418 Data: 0x44444443
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fd8]:mulhu t6, t5, t4
      [0x80000fdc]:sw t6, 0x2a4(fp)
 -- Signature Addresses:
      Address: 0x8000641c Data: 0x000078AC
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fec]:mulhu t6, t5, t4
      [0x80000ff0]:sw t6, 0x2a8(fp)
 -- Signature Addresses:
      Address: 0x80006420 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001004]:mulhu t6, t5, t4
      [0x80001008]:sw t6, 0x2ac(fp)
 -- Signature Addresses:
      Address: 0x80006424 Data: 0x0000AAA9
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001018]:mulhu t6, t5, t4
      [0x8000101c]:sw t6, 0x2b0(fp)
 -- Signature Addresses:
      Address: 0x80006428 Data: 0x00000002
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001030]:mulhu t6, t5, t4
      [0x80001034]:sw t6, 0x2b4(fp)
 -- Signature Addresses:
      Address: 0x8000642c Data: 0x38E38E39
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001048]:mulhu t6, t5, t4
      [0x8000104c]:sw t6, 0x2b8(fp)
 -- Signature Addresses:
      Address: 0x80006430 Data: 0x71C71C71
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000105c]:mulhu t6, t5, t4
      [0x80001060]:sw t6, 0x2bc(fp)
 -- Signature Addresses:
      Address: 0x80006434 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001074]:mulhu t6, t5, t4
      [0x80001078]:sw t6, 0x2c0(fp)
 -- Signature Addresses:
      Address: 0x80006438 Data: 0x22222222
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000108c]:mulhu t6, t5, t4
      [0x80001090]:sw t6, 0x2c4(fp)
 -- Signature Addresses:
      Address: 0x8000643c Data: 0x44444444
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800010a4]:mulhu t6, t5, t4
      [0x800010a8]:sw t6, 0x2c8(fp)
 -- Signature Addresses:
      Address: 0x80006440 Data: 0x000078AD
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800010b8]:mulhu t6, t5, t4
      [0x800010bc]:sw t6, 0x2cc(fp)
 -- Signature Addresses:
      Address: 0x80006444 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0
      - rs2_val == 1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800010c8]:mulhu t6, t5, t4
      [0x800010cc]:sw t6, 0x2d0(fp)
 -- Signature Addresses:
      Address: 0x80006448 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800010dc]:mulhu t6, t5, t4
      [0x800010e0]:sw t6, 0x2d4(fp)
 -- Signature Addresses:
      Address: 0x8000644c Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800010f0]:mulhu t6, t5, t4
      [0x800010f4]:sw t6, 0x2d8(fp)
 -- Signature Addresses:
      Address: 0x80006450 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001100]:mulhu t6, t5, t4
      [0x80001104]:sw t6, 0x2dc(fp)
 -- Signature Addresses:
      Address: 0x80006454 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001114]:mulhu t6, t5, t4
      [0x80001118]:sw t6, 0x2e0(fp)
 -- Signature Addresses:
      Address: 0x80006458 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001128]:mulhu t6, t5, t4
      [0x8000112c]:sw t6, 0x2e4(fp)
 -- Signature Addresses:
      Address: 0x8000645c Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000113c]:mulhu t6, t5, t4
      [0x80001140]:sw t6, 0x2e8(fp)
 -- Signature Addresses:
      Address: 0x80006460 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001150]:mulhu t6, t5, t4
      [0x80001154]:sw t6, 0x2ec(fp)
 -- Signature Addresses:
      Address: 0x80006464 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001160]:mulhu t6, t5, t4
      [0x80001164]:sw t6, 0x2f0(fp)
 -- Signature Addresses:
      Address: 0x80006468 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001174]:mulhu t6, t5, t4
      [0x80001178]:sw t6, 0x2f4(fp)
 -- Signature Addresses:
      Address: 0x8000646c Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001188]:mulhu t6, t5, t4
      [0x8000118c]:sw t6, 0x2f8(fp)
 -- Signature Addresses:
      Address: 0x80006470 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000119c]:mulhu t6, t5, t4
      [0x800011a0]:sw t6, 0x2fc(fp)
 -- Signature Addresses:
      Address: 0x80006474 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800011b0]:mulhu t6, t5, t4
      [0x800011b4]:sw t6, 0x300(fp)
 -- Signature Addresses:
      Address: 0x80006478 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800011c4]:mulhu t6, t5, t4
      [0x800011c8]:sw t6, 0x304(fp)
 -- Signature Addresses:
      Address: 0x8000647c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800011d4]:mulhu t6, t5, t4
      [0x800011d8]:sw t6, 0x308(fp)
 -- Signature Addresses:
      Address: 0x80006480 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800011e8]:mulhu t6, t5, t4
      [0x800011ec]:sw t6, 0x30c(fp)
 -- Signature Addresses:
      Address: 0x80006484 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800011f8]:mulhu t6, t5, t4
      [0x800011fc]:sw t6, 0x310(fp)
 -- Signature Addresses:
      Address: 0x80006488 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001b94]:mulhu t6, t5, t4
      [0x80001b98]:sw t6, 0xc0(fp)
 -- Signature Addresses:
      Address: 0x80006638 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0
      - rs1_val==65535 and rs2_val==65536




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80003c80]:mulhu t6, t5, t4
      [0x80003c84]:sw t6, 0x2d4(fp)
 -- Signature Addresses:
      Address: 0x80006c4c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 1
      - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0
      - rs2_val == 1
      - rs1_val==1 and rs2_val==1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80003ca0]:mulhu t6, t5, t4
      [0x80003ca4]:sw t6, 0x2dc(fp)
 -- Signature Addresses:
      Address: 0x80006c54 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 0
      - rs2_val == 0
      - rs1_val==0 and rs2_val==0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80003d9c]:mulhu t6, t5, t4
      [0x80003da0]:sw t6, 0x310(fp)
 -- Signature Addresses:
      Address: 0x80006c88 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 0
      - rs1_val==65536 and rs2_val==0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80003ec8]:mulhu t6, t5, t4
      [0x80003ecc]:sw t6, 0x350(fp)
 -- Signature Addresses:
      Address: 0x80006cc8 Data: 0x0000FEFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80003edc]:mulhu t6, t5, t4
      [0x80003ee0]:sw t6, 0x354(fp)
 -- Signature Addresses:
      Address: 0x80006ccc Data: 0x0000FBFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80003ef0]:mulhu t6, t5, t4
      [0x80003ef4]:sw t6, 0x358(fp)
 -- Signature Addresses:
      Address: 0x80006cd0 Data: 0x0000F7FF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
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

|s.no|           signature           |                                                                                                                         coverpoints                                                                                                                          |                                 code                                  |
|---:|-------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80006114]<br>0x00000001<br> |- mnemonic : mulhu<br> - rs1 : x31<br> - rs2 : x31<br> - rd : x31<br> - rs1 == rs2 == rd<br> - rs1_val == 1<br> - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs1_val > 0 and rs2_val > 0<br> - rs2_val == 1<br> - rs1_val==1 and rs2_val==1<br> |[0x80000188]:mulhu t6, t6, t6<br> [0x8000018c]:sw t6, 0x0(ra)<br>      |
|   2|[0x80006118]<br>0x0000FFFF<br> |- rs1 : x30<br> - rs2 : x29<br> - rd : x30<br> - rs1 == rd != rs2<br> - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs1_val==65535 and rs2_val==65536<br>                                                                                        |[0x80000198]:mulhu t5, t5, t4<br> [0x8000019c]:sw t5, 0x4(ra)<br>      |
|   3|[0x8000611c]<br>0x00000000<br> |- rs1 : x29<br> - rs2 : x28<br> - rd : x28<br> - rs2 == rd != rs1<br> - rs1_val == 0<br> - rs2_val == 0<br> - rs1_val==0 and rs2_val==0<br>                                                                                                                   |[0x800001a8]:mulhu t3, t4, t3<br> [0x800001ac]:sw t3, 0x8(ra)<br>      |
|   4|[0x80006120]<br>0x00000001<br> |- rs1 : x28<br> - rs2 : x30<br> - rd : x29<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val==65536 and rs2_val==65536<br>                                                                                                                          |[0x800001b8]:mulhu t4, t3, t5<br> [0x800001bc]:sw t4, 0xc(ra)<br>      |
|   5|[0x80006124]<br>0x00000001<br> |- rs1 : x26<br> - rs2 : x26<br> - rd : x27<br> - rs1 == rs2 != rd<br>                                                                                                                                                                                         |[0x800001c8]:mulhu s11, s10, s10<br> [0x800001cc]:sw s11, 0x10(ra)<br> |
|   6|[0x80006128]<br>0x00000000<br> |- rs1 : x27<br> - rs2 : x25<br> - rd : x26<br>                                                                                                                                                                                                                |[0x800001d8]:mulhu s10, s11, s9<br> [0x800001dc]:sw s10, 0x14(ra)<br>  |
|   7|[0x8000612c]<br>0x0000FFFF<br> |- rs1 : x24<br> - rs2 : x27<br> - rd : x25<br>                                                                                                                                                                                                                |[0x800001e8]:mulhu s9, s8, s11<br> [0x800001ec]:sw s9, 0x18(ra)<br>    |
|   8|[0x80006130]<br>0x0000FFFF<br> |- rs1 : x25<br> - rs2 : x23<br> - rd : x24<br>                                                                                                                                                                                                                |[0x800001f8]:mulhu s8, s9, s7<br> [0x800001fc]:sw s8, 0x1c(ra)<br>     |
|   9|[0x80006134]<br>0x0000FFFF<br> |- rs1 : x22<br> - rs2 : x24<br> - rd : x23<br>                                                                                                                                                                                                                |[0x80000208]:mulhu s7, s6, s8<br> [0x8000020c]:sw s7, 0x20(ra)<br>     |
|  10|[0x80006138]<br>0x0000FFFF<br> |- rs1 : x23<br> - rs2 : x21<br> - rd : x22<br>                                                                                                                                                                                                                |[0x80000218]:mulhu s6, s7, s5<br> [0x8000021c]:sw s6, 0x24(ra)<br>     |
|  11|[0x8000613c]<br>0x0000FFFF<br> |- rs1 : x20<br> - rs2 : x22<br> - rd : x21<br>                                                                                                                                                                                                                |[0x80000228]:mulhu s5, s4, s6<br> [0x8000022c]:sw s5, 0x28(ra)<br>     |
|  12|[0x80006140]<br>0x0000FFFF<br> |- rs1 : x21<br> - rs2 : x19<br> - rd : x20<br>                                                                                                                                                                                                                |[0x80000238]:mulhu s4, s5, s3<br> [0x8000023c]:sw s4, 0x2c(ra)<br>     |
|  13|[0x80006144]<br>0x0000FFFF<br> |- rs1 : x18<br> - rs2 : x20<br> - rd : x19<br>                                                                                                                                                                                                                |[0x80000248]:mulhu s3, s2, s4<br> [0x8000024c]:sw s3, 0x30(ra)<br>     |
|  14|[0x80006148]<br>0x0000FFFF<br> |- rs1 : x19<br> - rs2 : x17<br> - rd : x18<br>                                                                                                                                                                                                                |[0x80000258]:mulhu s2, s3, a7<br> [0x8000025c]:sw s2, 0x34(ra)<br>     |
|  15|[0x8000614c]<br>0x0000FFFF<br> |- rs1 : x16<br> - rs2 : x18<br> - rd : x17<br>                                                                                                                                                                                                                |[0x80000268]:mulhu a7, a6, s2<br> [0x8000026c]:sw a7, 0x38(ra)<br>     |
|  16|[0x80006150]<br>0x0000FFFF<br> |- rs1 : x17<br> - rs2 : x15<br> - rd : x16<br>                                                                                                                                                                                                                |[0x80000278]:mulhu a6, a7, a5<br> [0x8000027c]:sw a6, 0x3c(ra)<br>     |
|  17|[0x80006154]<br>0x0000FFFF<br> |- rs1 : x14<br> - rs2 : x16<br> - rd : x15<br>                                                                                                                                                                                                                |[0x80000288]:mulhu a5, a4, a6<br> [0x8000028c]:sw a5, 0x40(ra)<br>     |
|  18|[0x80006158]<br>0x0000FFFF<br> |- rs1 : x15<br> - rs2 : x13<br> - rd : x14<br>                                                                                                                                                                                                                |[0x8000029c]:mulhu a4, a5, a3<br> [0x800002a0]:sw a4, 0x44(ra)<br>     |
|  19|[0x8000615c]<br>0x0000FFFF<br> |- rs1 : x12<br> - rs2 : x14<br> - rd : x13<br>                                                                                                                                                                                                                |[0x800002b0]:mulhu a3, a2, a4<br> [0x800002b4]:sw a3, 0x48(ra)<br>     |
|  20|[0x80006160]<br>0x0000FFFF<br> |- rs1 : x13<br> - rs2 : x11<br> - rd : x12<br>                                                                                                                                                                                                                |[0x800002c4]:mulhu a2, a3, a1<br> [0x800002c8]:sw a2, 0x4c(ra)<br>     |
|  21|[0x80006164]<br>0x0000FFFF<br> |- rs1 : x10<br> - rs2 : x12<br> - rd : x11<br>                                                                                                                                                                                                                |[0x800002d8]:mulhu a1, a0, a2<br> [0x800002dc]:sw a1, 0x50(ra)<br>     |
|  22|[0x80006168]<br>0x0000FFFF<br> |- rs1 : x11<br> - rs2 : x9<br> - rd : x10<br>                                                                                                                                                                                                                 |[0x800002ec]:mulhu a0, a1, s1<br> [0x800002f0]:sw a0, 0x54(ra)<br>     |
|  23|[0x8000616c]<br>0x0000FFFE<br> |- rs1 : x8<br> - rs2 : x10<br> - rd : x9<br>                                                                                                                                                                                                                  |[0x80000300]:mulhu s1, fp, a0<br> [0x80000304]:sw s1, 0x58(ra)<br>     |
|  24|[0x80006170]<br>0x0000FFFD<br> |- rs1 : x9<br> - rs2 : x7<br> - rd : x8<br>                                                                                                                                                                                                                   |[0x80000314]:mulhu fp, s1, t2<br> [0x80000318]:sw fp, 0x5c(ra)<br>     |
|  25|[0x80006174]<br>0x0000FFFB<br> |- rs1 : x6<br> - rs2 : x8<br> - rd : x7<br>                                                                                                                                                                                                                   |[0x80000328]:mulhu t2, t1, fp<br> [0x8000032c]:sw t2, 0x60(ra)<br>     |
|  26|[0x80006178]<br>0x0000FFF7<br> |- rs1 : x7<br> - rs2 : x5<br> - rd : x6<br>                                                                                                                                                                                                                   |[0x8000036c]:mulhu t1, t2, t0<br> [0x80000370]:sw t1, 0x0(fp)<br>      |
|  27|[0x8000617c]<br>0x0000FFEF<br> |- rs1 : x4<br> - rs2 : x6<br> - rd : x5<br>                                                                                                                                                                                                                   |[0x80000380]:mulhu t0, tp, t1<br> [0x80000384]:sw t0, 0x4(fp)<br>      |
|  28|[0x80006180]<br>0x0000FFDF<br> |- rs1 : x5<br> - rs2 : x3<br> - rd : x4<br>                                                                                                                                                                                                                   |[0x80000394]:mulhu tp, t0, gp<br> [0x80000398]:sw tp, 0x8(fp)<br>      |
|  29|[0x80006184]<br>0x0000FFBF<br> |- rs1 : x2<br> - rs2 : x4<br> - rd : x3<br>                                                                                                                                                                                                                   |[0x800003a8]:mulhu gp, sp, tp<br> [0x800003ac]:sw gp, 0xc(fp)<br>      |
|  30|[0x80006188]<br>0x0000FF7F<br> |- rs1 : x3<br> - rs2 : x1<br> - rd : x2<br>                                                                                                                                                                                                                   |[0x800003bc]:mulhu sp, gp, ra<br> [0x800003c0]:sw sp, 0x10(fp)<br>     |
|  31|[0x8000618c]<br>0x00000000<br> |- rs1 : x0<br> - rs2 : x2<br> - rd : x1<br>                                                                                                                                                                                                                   |[0x800003d0]:mulhu ra, zero, sp<br> [0x800003d4]:sw ra, 0x14(fp)<br>   |
|  32|[0x80006190]<br>0x0000FDFF<br> |- rs1 : x1<br>                                                                                                                                                                                                                                                |[0x800003e4]:mulhu t6, ra, t5<br> [0x800003e8]:sw t6, 0x18(fp)<br>     |
|  33|[0x80006194]<br>0x00000000<br> |- rs2 : x0<br> - rs1_val==65536 and rs2_val==0<br>                                                                                                                                                                                                            |[0x800003f4]:mulhu t6, t5, zero<br> [0x800003f8]:sw t6, 0x1c(fp)<br>   |
|  34|[0x80006198]<br>0x00000000<br> |- rd : x0<br>                                                                                                                                                                                                                                                 |[0x80000408]:mulhu zero, t6, t5<br> [0x8000040c]:sw zero, 0x20(fp)<br> |
|  35|[0x8000622c]<br>0x00000000<br> |- rs1_val==65536 and rs2_val==2<br>                                                                                                                                                                                                                           |[0x800006bc]:mulhu t6, t5, t4<br> [0x800006c0]:sw t6, 0xb4(fp)<br>     |
|  36|[0x80006230]<br>0x00000000<br> |- rs1_val==65536 and rs2_val==4<br>                                                                                                                                                                                                                           |[0x800006cc]:mulhu t6, t5, t4<br> [0x800006d0]:sw t6, 0xb8(fp)<br>     |
|  37|[0x800062a4]<br>0x00000000<br> |- rs1_val==1 and rs2_val==65536<br>                                                                                                                                                                                                                           |[0x800008a0]:mulhu t6, t5, t4<br> [0x800008a4]:sw t6, 0x12c(fp)<br>    |
|  38|[0x800062a8]<br>0x00000000<br> |- rs1_val==2 and rs2_val==65536<br>                                                                                                                                                                                                                           |[0x800008b0]:mulhu t6, t5, t4<br> [0x800008b4]:sw t6, 0x130(fp)<br>    |
|  39|[0x800062ac]<br>0x00000000<br> |- rs1_val==4 and rs2_val==65536<br>                                                                                                                                                                                                                           |[0x800008c0]:mulhu t6, t5, t4<br> [0x800008c4]:sw t6, 0x134(fp)<br>    |
|  40|[0x8000648c]<br>0x00000001<br> |- rs1_val==5 and rs2_val==1431655766<br>                                                                                                                                                                                                                      |[0x8000120c]:mulhu t6, t5, t4<br> [0x80001210]:sw t6, 0x314(fp)<br>    |
|  41|[0x80006490]<br>0x00000003<br> |- rs1_val==5 and rs2_val==2863311531<br>                                                                                                                                                                                                                      |[0x80001220]:mulhu t6, t5, t4<br> [0x80001224]:sw t6, 0x318(fp)<br>    |
|  42|[0x80006494]<br>0x00000000<br> |- rs1_val==5 and rs2_val==6<br>                                                                                                                                                                                                                               |[0x80001230]:mulhu t6, t5, t4<br> [0x80001234]:sw t6, 0x31c(fp)<br>    |
|  43|[0x80006498]<br>0x00000001<br> |- rs1_val==5 and rs2_val==858993460<br>                                                                                                                                                                                                                       |[0x80001244]:mulhu t6, t5, t4<br> [0x80001248]:sw t6, 0x320(fp)<br>    |
|  44|[0x8000649c]<br>0x00000002<br> |- rs1_val==5 and rs2_val==1717986919<br>                                                                                                                                                                                                                      |[0x80001258]:mulhu t6, t5, t4<br> [0x8000125c]:sw t6, 0x324(fp)<br>    |
|  45|[0x800064a0]<br>0x00000000<br> |- rs1_val==5 and rs2_val==46341<br>                                                                                                                                                                                                                           |[0x8000126c]:mulhu t6, t5, t4<br> [0x80001270]:sw t6, 0x328(fp)<br>    |
|  46|[0x800064a4]<br>0x00000000<br> |- rs1_val==5 and rs2_val==1<br>                                                                                                                                                                                                                               |[0x8000127c]:mulhu t6, t5, t4<br> [0x80001280]:sw t6, 0x32c(fp)<br>    |
|  47|[0x800064a8]<br>0x00000000<br> |- rs1_val==5 and rs2_val==65536<br>                                                                                                                                                                                                                           |[0x8000128c]:mulhu t6, t5, t4<br> [0x80001290]:sw t6, 0x330(fp)<br>    |
|  48|[0x800064ac]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==3<br>                                                                                                                                                                                                                       |[0x800012a0]:mulhu t6, t5, t4<br> [0x800012a4]:sw t6, 0x334(fp)<br>    |
|  49|[0x800064b0]<br>0x11111110<br> |- rs1_val==858993459 and rs2_val==1431655765<br>                                                                                                                                                                                                              |[0x800012b8]:mulhu t6, t5, t4<br> [0x800012bc]:sw t6, 0x338(fp)<br>    |
|  50|[0x800064b4]<br>0x22222221<br> |- rs1_val==858993459 and rs2_val==2863311530<br>                                                                                                                                                                                                              |[0x800012d0]:mulhu t6, t5, t4<br> [0x800012d4]:sw t6, 0x33c(fp)<br>    |
|  51|[0x800064b8]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==5<br>                                                                                                                                                                                                                       |[0x800012e4]:mulhu t6, t5, t4<br> [0x800012e8]:sw t6, 0x340(fp)<br>    |
|  52|[0x800064bc]<br>0x0A3D70A3<br> |- rs1_val==858993459 and rs2_val==858993459<br>                                                                                                                                                                                                               |[0x800012fc]:mulhu t6, t5, t4<br> [0x80001300]:sw t6, 0x344(fp)<br>    |
|  53|[0x800064c0]<br>0x147AE147<br> |- rs1_val==858993459 and rs2_val==1717986918<br>                                                                                                                                                                                                              |[0x80001314]:mulhu t6, t5, t4<br> [0x80001318]:sw t6, 0x348(fp)<br>    |
|  54|[0x800064c4]<br>0x00002433<br> |- rs1_val==858993459 and rs2_val==46340<br>                                                                                                                                                                                                                   |[0x8000132c]:mulhu t6, t5, t4<br> [0x80001330]:sw t6, 0x34c(fp)<br>    |
|  55|[0x800064c8]<br>0x00003332<br> |- rs1_val==858993459 and rs2_val==65535<br>                                                                                                                                                                                                                   |[0x80001344]:mulhu t6, t5, t4<br> [0x80001348]:sw t6, 0x350(fp)<br>    |
|  56|[0x800064cc]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==2<br>                                                                                                                                                                                                                       |[0x80001358]:mulhu t6, t5, t4<br> [0x8000135c]:sw t6, 0x354(fp)<br>    |
|  57|[0x800064d0]<br>0x11111110<br> |- rs1_val==858993459 and rs2_val==1431655764<br>                                                                                                                                                                                                              |[0x80001370]:mulhu t6, t5, t4<br> [0x80001374]:sw t6, 0x358(fp)<br>    |
|  58|[0x800064d4]<br>0x22222221<br> |- rs1_val==858993459 and rs2_val==2863311529<br>                                                                                                                                                                                                              |[0x80001388]:mulhu t6, t5, t4<br> [0x8000138c]:sw t6, 0x35c(fp)<br>    |
|  59|[0x800064d8]<br>0x0A3D70A3<br> |- rs1_val==858993459 and rs2_val==858993458<br>                                                                                                                                                                                                               |[0x800013a0]:mulhu t6, t5, t4<br> [0x800013a4]:sw t6, 0x360(fp)<br>    |
|  60|[0x800064dc]<br>0x147AE147<br> |- rs1_val==858993459 and rs2_val==1717986917<br>                                                                                                                                                                                                              |[0x800013b8]:mulhu t6, t5, t4<br> [0x800013bc]:sw t6, 0x364(fp)<br>    |
|  61|[0x800064e0]<br>0x00002433<br> |- rs1_val==858993459 and rs2_val==46339<br>                                                                                                                                                                                                                   |[0x800013d0]:mulhu t6, t5, t4<br> [0x800013d4]:sw t6, 0x368(fp)<br>    |
|  62|[0x800064e4]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==0<br>                                                                                                                                                                                                                       |[0x800013e4]:mulhu t6, t5, t4<br> [0x800013e8]:sw t6, 0x36c(fp)<br>    |
|  63|[0x800064e8]<br>0x00003332<br> |- rs1_val==858993459 and rs2_val==65534<br>                                                                                                                                                                                                                   |[0x800013fc]:mulhu t6, t5, t4<br> [0x80001400]:sw t6, 0x370(fp)<br>    |
|  64|[0x800064ec]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==4<br>                                                                                                                                                                                                                       |[0x80001410]:mulhu t6, t5, t4<br> [0x80001414]:sw t6, 0x374(fp)<br>    |
|  65|[0x800064f0]<br>0x11111111<br> |- rs1_val==858993459 and rs2_val==1431655766<br>                                                                                                                                                                                                              |[0x80001428]:mulhu t6, t5, t4<br> [0x8000142c]:sw t6, 0x378(fp)<br>    |
|  66|[0x800064f4]<br>0x22222222<br> |- rs1_val==858993459 and rs2_val==2863311531<br>                                                                                                                                                                                                              |[0x80001440]:mulhu t6, t5, t4<br> [0x80001444]:sw t6, 0x37c(fp)<br>    |
|  67|[0x800064f8]<br>0x00000001<br> |- rs1_val==858993459 and rs2_val==6<br>                                                                                                                                                                                                                       |[0x80001454]:mulhu t6, t5, t4<br> [0x80001458]:sw t6, 0x380(fp)<br>    |
|  68|[0x800064fc]<br>0x0A3D70A3<br> |- rs1_val==858993459 and rs2_val==858993460<br>                                                                                                                                                                                                               |[0x8000146c]:mulhu t6, t5, t4<br> [0x80001470]:sw t6, 0x384(fp)<br>    |
|  69|[0x80006500]<br>0x147AE147<br> |- rs1_val==858993459 and rs2_val==1717986919<br>                                                                                                                                                                                                              |[0x80001484]:mulhu t6, t5, t4<br> [0x80001488]:sw t6, 0x388(fp)<br>    |
|  70|[0x80006504]<br>0x00002434<br> |- rs1_val==858993459 and rs2_val==46341<br>                                                                                                                                                                                                                   |[0x8000149c]:mulhu t6, t5, t4<br> [0x800014a0]:sw t6, 0x38c(fp)<br>    |
|  71|[0x80006508]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==1<br>                                                                                                                                                                                                                       |[0x800014b0]:mulhu t6, t5, t4<br> [0x800014b4]:sw t6, 0x390(fp)<br>    |
|  72|[0x8000650c]<br>0x00003333<br> |- rs1_val==858993459 and rs2_val==65536<br>                                                                                                                                                                                                                   |[0x800014c4]:mulhu t6, t5, t4<br> [0x800014c8]:sw t6, 0x394(fp)<br>    |
|  73|[0x80006510]<br>0x00000001<br> |- rs1_val==1717986918 and rs2_val==3<br>                                                                                                                                                                                                                      |[0x800014d8]:mulhu t6, t5, t4<br> [0x800014dc]:sw t6, 0x398(fp)<br>    |
|  74|[0x80006514]<br>0x22222221<br> |- rs1_val==1717986918 and rs2_val==1431655765<br>                                                                                                                                                                                                             |[0x800014f0]:mulhu t6, t5, t4<br> [0x800014f4]:sw t6, 0x39c(fp)<br>    |
|  75|[0x80006518]<br>0x44444443<br> |- rs1_val==1717986918 and rs2_val==2863311530<br>                                                                                                                                                                                                             |[0x80001508]:mulhu t6, t5, t4<br> [0x8000150c]:sw t6, 0x3a0(fp)<br>    |
|  76|[0x8000651c]<br>0x00000001<br> |- rs1_val==1717986918 and rs2_val==5<br>                                                                                                                                                                                                                      |[0x8000151c]:mulhu t6, t5, t4<br> [0x80001520]:sw t6, 0x3a4(fp)<br>    |
|  77|[0x80006520]<br>0x147AE147<br> |- rs1_val==1717986918 and rs2_val==858993459<br>                                                                                                                                                                                                              |[0x80001534]:mulhu t6, t5, t4<br> [0x80001538]:sw t6, 0x3a8(fp)<br>    |
|  78|[0x80006524]<br>0x28F5C28F<br> |- rs1_val==1717986918 and rs2_val==1717986918<br>                                                                                                                                                                                                             |[0x8000154c]:mulhu t6, t5, t4<br> [0x80001550]:sw t6, 0x3ac(fp)<br>    |
|  79|[0x80006528]<br>0x00004867<br> |- rs1_val==1717986918 and rs2_val==46340<br>                                                                                                                                                                                                                  |[0x80001564]:mulhu t6, t5, t4<br> [0x80001568]:sw t6, 0x3b0(fp)<br>    |
|  80|[0x8000652c]<br>0x00006665<br> |- rs1_val==1717986918 and rs2_val==65535<br>                                                                                                                                                                                                                  |[0x8000157c]:mulhu t6, t5, t4<br> [0x80001580]:sw t6, 0x3b4(fp)<br>    |
|  81|[0x80006530]<br>0x00000000<br> |- rs1_val==1717986918 and rs2_val==2<br>                                                                                                                                                                                                                      |[0x80001590]:mulhu t6, t5, t4<br> [0x80001594]:sw t6, 0x3b8(fp)<br>    |
|  82|[0x80006534]<br>0x22222221<br> |- rs1_val==1717986918 and rs2_val==1431655764<br>                                                                                                                                                                                                             |[0x800015a8]:mulhu t6, t5, t4<br> [0x800015ac]:sw t6, 0x3bc(fp)<br>    |
|  83|[0x80006538]<br>0x44444443<br> |- rs1_val==1717986918 and rs2_val==2863311529<br>                                                                                                                                                                                                             |[0x800015c0]:mulhu t6, t5, t4<br> [0x800015c4]:sw t6, 0x3c0(fp)<br>    |
|  84|[0x8000653c]<br>0x147AE147<br> |- rs1_val==1717986918 and rs2_val==858993458<br>                                                                                                                                                                                                              |[0x800015d8]:mulhu t6, t5, t4<br> [0x800015dc]:sw t6, 0x3c4(fp)<br>    |
|  85|[0x80006540]<br>0x28F5C28E<br> |- rs1_val==1717986918 and rs2_val==1717986917<br>                                                                                                                                                                                                             |[0x800015f0]:mulhu t6, t5, t4<br> [0x800015f4]:sw t6, 0x3c8(fp)<br>    |
|  86|[0x80006544]<br>0x00004867<br> |- rs1_val==1717986918 and rs2_val==46339<br>                                                                                                                                                                                                                  |[0x80001608]:mulhu t6, t5, t4<br> [0x8000160c]:sw t6, 0x3cc(fp)<br>    |
|  87|[0x80006548]<br>0x00000000<br> |- rs1_val==1717986918 and rs2_val==0<br>                                                                                                                                                                                                                      |[0x8000161c]:mulhu t6, t5, t4<br> [0x80001620]:sw t6, 0x3d0(fp)<br>    |
|  88|[0x8000654c]<br>0x00006665<br> |- rs1_val==1717986918 and rs2_val==65534<br>                                                                                                                                                                                                                  |[0x80001634]:mulhu t6, t5, t4<br> [0x80001638]:sw t6, 0x3d4(fp)<br>    |
|  89|[0x80006550]<br>0x00000001<br> |- rs1_val==1717986918 and rs2_val==4<br>                                                                                                                                                                                                                      |[0x80001648]:mulhu t6, t5, t4<br> [0x8000164c]:sw t6, 0x3d8(fp)<br>    |
|  90|[0x80006554]<br>0x22222222<br> |- rs1_val==1717986918 and rs2_val==1431655766<br>                                                                                                                                                                                                             |[0x80001660]:mulhu t6, t5, t4<br> [0x80001664]:sw t6, 0x3dc(fp)<br>    |
|  91|[0x80006558]<br>0x44444444<br> |- rs1_val==1717986918 and rs2_val==2863311531<br>                                                                                                                                                                                                             |[0x80001678]:mulhu t6, t5, t4<br> [0x8000167c]:sw t6, 0x3e0(fp)<br>    |
|  92|[0x8000655c]<br>0x00000002<br> |- rs1_val==1717986918 and rs2_val==6<br>                                                                                                                                                                                                                      |[0x8000168c]:mulhu t6, t5, t4<br> [0x80001690]:sw t6, 0x3e4(fp)<br>    |
|  93|[0x80006560]<br>0x147AE147<br> |- rs1_val==1717986918 and rs2_val==858993460<br>                                                                                                                                                                                                              |[0x800016a4]:mulhu t6, t5, t4<br> [0x800016a8]:sw t6, 0x3e8(fp)<br>    |
|  94|[0x80006564]<br>0x28F5C28F<br> |- rs1_val==1717986918 and rs2_val==1717986919<br>                                                                                                                                                                                                             |[0x800016bc]:mulhu t6, t5, t4<br> [0x800016c0]:sw t6, 0x3ec(fp)<br>    |
|  95|[0x80006568]<br>0x00004868<br> |- rs1_val==1717986918 and rs2_val==46341<br>                                                                                                                                                                                                                  |[0x800016d4]:mulhu t6, t5, t4<br> [0x800016d8]:sw t6, 0x3f0(fp)<br>    |
|  96|[0x8000656c]<br>0x00000000<br> |- rs1_val==1717986918 and rs2_val==1<br>                                                                                                                                                                                                                      |[0x800016e8]:mulhu t6, t5, t4<br> [0x800016ec]:sw t6, 0x3f4(fp)<br>    |
|  97|[0x80006570]<br>0x00006666<br> |- rs1_val==1717986918 and rs2_val==65536<br>                                                                                                                                                                                                                  |[0x800016fc]:mulhu t6, t5, t4<br> [0x80001700]:sw t6, 0x3f8(fp)<br>    |
|  98|[0x80006574]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==3<br>                                                                                                                                                                                                                           |[0x80001710]:mulhu t6, t5, t4<br> [0x80001714]:sw t6, 0x3fc(fp)<br>    |
|  99|[0x80006578]<br>0x00003C56<br> |- rs1_val==46340 and rs2_val==1431655765<br>                                                                                                                                                                                                                  |[0x80001750]:mulhu t6, t5, t4<br> [0x80001754]:sw t6, 0x0(fp)<br>      |
| 100|[0x8000657c]<br>0x000078AD<br> |- rs1_val==46340 and rs2_val==2863311530<br>                                                                                                                                                                                                                  |[0x80001768]:mulhu t6, t5, t4<br> [0x8000176c]:sw t6, 0x4(fp)<br>      |
| 101|[0x80006580]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==5<br>                                                                                                                                                                                                                           |[0x8000177c]:mulhu t6, t5, t4<br> [0x80001780]:sw t6, 0x8(fp)<br>      |
| 102|[0x80006584]<br>0x00002433<br> |- rs1_val==46340 and rs2_val==858993459<br>                                                                                                                                                                                                                   |[0x80001794]:mulhu t6, t5, t4<br> [0x80001798]:sw t6, 0xc(fp)<br>      |
| 103|[0x80006588]<br>0x00004867<br> |- rs1_val==46340 and rs2_val==1717986918<br>                                                                                                                                                                                                                  |[0x800017ac]:mulhu t6, t5, t4<br> [0x800017b0]:sw t6, 0x10(fp)<br>     |
| 104|[0x8000658c]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==46340<br>                                                                                                                                                                                                                       |[0x800017c4]:mulhu t6, t5, t4<br> [0x800017c8]:sw t6, 0x14(fp)<br>     |
| 105|[0x80006590]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==65535<br>                                                                                                                                                                                                                       |[0x800017dc]:mulhu t6, t5, t4<br> [0x800017e0]:sw t6, 0x18(fp)<br>     |
| 106|[0x80006594]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==2<br>                                                                                                                                                                                                                           |[0x800017f0]:mulhu t6, t5, t4<br> [0x800017f4]:sw t6, 0x1c(fp)<br>     |
| 107|[0x80006598]<br>0x00003C56<br> |- rs1_val==46340 and rs2_val==1431655764<br>                                                                                                                                                                                                                  |[0x80001808]:mulhu t6, t5, t4<br> [0x8000180c]:sw t6, 0x20(fp)<br>     |
| 108|[0x8000659c]<br>0x000078AD<br> |- rs1_val==46340 and rs2_val==2863311529<br>                                                                                                                                                                                                                  |[0x80001820]:mulhu t6, t5, t4<br> [0x80001824]:sw t6, 0x24(fp)<br>     |
| 109|[0x800065a0]<br>0x00002433<br> |- rs1_val==46340 and rs2_val==858993458<br>                                                                                                                                                                                                                   |[0x80001838]:mulhu t6, t5, t4<br> [0x8000183c]:sw t6, 0x28(fp)<br>     |
| 110|[0x800065a4]<br>0x00004867<br> |- rs1_val==46340 and rs2_val==1717986917<br>                                                                                                                                                                                                                  |[0x80001850]:mulhu t6, t5, t4<br> [0x80001854]:sw t6, 0x2c(fp)<br>     |
| 111|[0x800065a8]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==46339<br>                                                                                                                                                                                                                       |[0x80001868]:mulhu t6, t5, t4<br> [0x8000186c]:sw t6, 0x30(fp)<br>     |
| 112|[0x800065ac]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==0<br>                                                                                                                                                                                                                           |[0x8000187c]:mulhu t6, t5, t4<br> [0x80001880]:sw t6, 0x34(fp)<br>     |
| 113|[0x800065b0]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==65534<br>                                                                                                                                                                                                                       |[0x80001894]:mulhu t6, t5, t4<br> [0x80001898]:sw t6, 0x38(fp)<br>     |
| 114|[0x800065b4]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==4<br>                                                                                                                                                                                                                           |[0x800018a8]:mulhu t6, t5, t4<br> [0x800018ac]:sw t6, 0x3c(fp)<br>     |
| 115|[0x800065b8]<br>0x00003C56<br> |- rs1_val==46340 and rs2_val==1431655766<br>                                                                                                                                                                                                                  |[0x800018c0]:mulhu t6, t5, t4<br> [0x800018c4]:sw t6, 0x40(fp)<br>     |
| 116|[0x800065bc]<br>0x000078AD<br> |- rs1_val==46340 and rs2_val==2863311531<br>                                                                                                                                                                                                                  |[0x800018d8]:mulhu t6, t5, t4<br> [0x800018dc]:sw t6, 0x44(fp)<br>     |
| 117|[0x800065c0]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==6<br>                                                                                                                                                                                                                           |[0x800018ec]:mulhu t6, t5, t4<br> [0x800018f0]:sw t6, 0x48(fp)<br>     |
| 118|[0x800065c4]<br>0x00002434<br> |- rs1_val==46340 and rs2_val==858993460<br>                                                                                                                                                                                                                   |[0x80001904]:mulhu t6, t5, t4<br> [0x80001908]:sw t6, 0x4c(fp)<br>     |
| 119|[0x800065c8]<br>0x00004868<br> |- rs1_val==46340 and rs2_val==1717986919<br>                                                                                                                                                                                                                  |[0x8000191c]:mulhu t6, t5, t4<br> [0x80001920]:sw t6, 0x50(fp)<br>     |
| 120|[0x800065cc]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==46341<br>                                                                                                                                                                                                                       |[0x80001934]:mulhu t6, t5, t4<br> [0x80001938]:sw t6, 0x54(fp)<br>     |
| 121|[0x800065d0]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==1<br>                                                                                                                                                                                                                           |[0x80001948]:mulhu t6, t5, t4<br> [0x8000194c]:sw t6, 0x58(fp)<br>     |
| 122|[0x800065d4]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==65536<br>                                                                                                                                                                                                                       |[0x8000195c]:mulhu t6, t5, t4<br> [0x80001960]:sw t6, 0x5c(fp)<br>     |
| 123|[0x800065d8]<br>0x00000000<br> |- rs1_val==65535 and rs2_val==3<br>                                                                                                                                                                                                                           |[0x80001970]:mulhu t6, t5, t4<br> [0x80001974]:sw t6, 0x60(fp)<br>     |
| 124|[0x800065dc]<br>0x00005554<br> |- rs1_val==65535 and rs2_val==1431655765<br>                                                                                                                                                                                                                  |[0x80001988]:mulhu t6, t5, t4<br> [0x8000198c]:sw t6, 0x64(fp)<br>     |
| 125|[0x800065e0]<br>0x0000AAA9<br> |- rs1_val==65535 and rs2_val==2863311530<br>                                                                                                                                                                                                                  |[0x800019a0]:mulhu t6, t5, t4<br> [0x800019a4]:sw t6, 0x68(fp)<br>     |
| 126|[0x800065e4]<br>0x00000000<br> |- rs1_val==65535 and rs2_val==5<br>                                                                                                                                                                                                                           |[0x800019b4]:mulhu t6, t5, t4<br> [0x800019b8]:sw t6, 0x6c(fp)<br>     |
| 127|[0x800065e8]<br>0x00003332<br> |- rs1_val==65535 and rs2_val==858993459<br>                                                                                                                                                                                                                   |[0x800019cc]:mulhu t6, t5, t4<br> [0x800019d0]:sw t6, 0x70(fp)<br>     |
| 128|[0x800065ec]<br>0x00006665<br> |- rs1_val==65535 and rs2_val==1717986918<br>                                                                                                                                                                                                                  |[0x800019e4]:mulhu t6, t5, t4<br> [0x800019e8]:sw t6, 0x74(fp)<br>     |
| 129|[0x800065f0]<br>0x00000000<br> |- rs1_val==65535 and rs2_val==46340<br>                                                                                                                                                                                                                       |[0x800019fc]:mulhu t6, t5, t4<br> [0x80001a00]:sw t6, 0x78(fp)<br>     |
| 130|[0x800065f4]<br>0x00000000<br> |- rs1_val==65535 and rs2_val==65535<br>                                                                                                                                                                                                                       |[0x80001a14]:mulhu t6, t5, t4<br> [0x80001a18]:sw t6, 0x7c(fp)<br>     |
| 131|[0x800065f8]<br>0x00000000<br> |- rs1_val==65535 and rs2_val==2<br>                                                                                                                                                                                                                           |[0x80001a28]:mulhu t6, t5, t4<br> [0x80001a2c]:sw t6, 0x80(fp)<br>     |
| 132|[0x800065fc]<br>0x00005554<br> |- rs1_val==65535 and rs2_val==1431655764<br>                                                                                                                                                                                                                  |[0x80001a40]:mulhu t6, t5, t4<br> [0x80001a44]:sw t6, 0x84(fp)<br>     |
| 133|[0x80006600]<br>0x0000AAA9<br> |- rs1_val==65535 and rs2_val==2863311529<br>                                                                                                                                                                                                                  |[0x80001a58]:mulhu t6, t5, t4<br> [0x80001a5c]:sw t6, 0x88(fp)<br>     |
| 134|[0x80006604]<br>0x00003332<br> |- rs1_val==65535 and rs2_val==858993458<br>                                                                                                                                                                                                                   |[0x80001a70]:mulhu t6, t5, t4<br> [0x80001a74]:sw t6, 0x8c(fp)<br>     |
| 135|[0x80006608]<br>0x00006665<br> |- rs1_val==65535 and rs2_val==1717986917<br>                                                                                                                                                                                                                  |[0x80001a88]:mulhu t6, t5, t4<br> [0x80001a8c]:sw t6, 0x90(fp)<br>     |
| 136|[0x8000660c]<br>0x00000000<br> |- rs1_val==65535 and rs2_val==46339<br>                                                                                                                                                                                                                       |[0x80001aa0]:mulhu t6, t5, t4<br> [0x80001aa4]:sw t6, 0x94(fp)<br>     |
| 137|[0x80006610]<br>0x00000000<br> |- rs1_val==65535 and rs2_val==0<br>                                                                                                                                                                                                                           |[0x80001ab4]:mulhu t6, t5, t4<br> [0x80001ab8]:sw t6, 0x98(fp)<br>     |
| 138|[0x80006614]<br>0x00000000<br> |- rs1_val==65535 and rs2_val==65534<br>                                                                                                                                                                                                                       |[0x80001acc]:mulhu t6, t5, t4<br> [0x80001ad0]:sw t6, 0x9c(fp)<br>     |
| 139|[0x80006618]<br>0x00000000<br> |- rs1_val==65535 and rs2_val==4<br>                                                                                                                                                                                                                           |[0x80001ae0]:mulhu t6, t5, t4<br> [0x80001ae4]:sw t6, 0xa0(fp)<br>     |
| 140|[0x8000661c]<br>0x00005555<br> |- rs1_val==65535 and rs2_val==1431655766<br>                                                                                                                                                                                                                  |[0x80001af8]:mulhu t6, t5, t4<br> [0x80001afc]:sw t6, 0xa4(fp)<br>     |
| 141|[0x80006620]<br>0x0000AAAA<br> |- rs1_val==65535 and rs2_val==2863311531<br>                                                                                                                                                                                                                  |[0x80001b10]:mulhu t6, t5, t4<br> [0x80001b14]:sw t6, 0xa8(fp)<br>     |
| 142|[0x80006624]<br>0x00000000<br> |- rs1_val==65535 and rs2_val==6<br>                                                                                                                                                                                                                           |[0x80001b24]:mulhu t6, t5, t4<br> [0x80001b28]:sw t6, 0xac(fp)<br>     |
| 143|[0x80006628]<br>0x00003333<br> |- rs1_val==65535 and rs2_val==858993460<br>                                                                                                                                                                                                                   |[0x80001b3c]:mulhu t6, t5, t4<br> [0x80001b40]:sw t6, 0xb0(fp)<br>     |
| 144|[0x8000662c]<br>0x00006666<br> |- rs1_val==65535 and rs2_val==1717986919<br>                                                                                                                                                                                                                  |[0x80001b54]:mulhu t6, t5, t4<br> [0x80001b58]:sw t6, 0xb4(fp)<br>     |
| 145|[0x80006630]<br>0x00000000<br> |- rs1_val==65535 and rs2_val==46341<br>                                                                                                                                                                                                                       |[0x80001b6c]:mulhu t6, t5, t4<br> [0x80001b70]:sw t6, 0xb8(fp)<br>     |
| 146|[0x80006634]<br>0x00000000<br> |- rs1_val==65535 and rs2_val==1<br>                                                                                                                                                                                                                           |[0x80001b80]:mulhu t6, t5, t4<br> [0x80001b84]:sw t6, 0xbc(fp)<br>     |
| 147|[0x8000663c]<br>0x00000000<br> |- rs1_val==2 and rs2_val==3<br>                                                                                                                                                                                                                               |[0x80001ba4]:mulhu t6, t5, t4<br> [0x80001ba8]:sw t6, 0xc4(fp)<br>     |
| 148|[0x80006640]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1431655765<br>                                                                                                                                                                                                                      |[0x80001bb8]:mulhu t6, t5, t4<br> [0x80001bbc]:sw t6, 0xc8(fp)<br>     |
| 149|[0x80006644]<br>0x00000001<br> |- rs1_val==2 and rs2_val==2863311530<br>                                                                                                                                                                                                                      |[0x80001bcc]:mulhu t6, t5, t4<br> [0x80001bd0]:sw t6, 0xcc(fp)<br>     |
| 150|[0x80006648]<br>0x00000000<br> |- rs1_val==2 and rs2_val==5<br>                                                                                                                                                                                                                               |[0x80001bdc]:mulhu t6, t5, t4<br> [0x80001be0]:sw t6, 0xd0(fp)<br>     |
| 151|[0x8000664c]<br>0x00000000<br> |- rs1_val==2 and rs2_val==858993459<br>                                                                                                                                                                                                                       |[0x80001bf0]:mulhu t6, t5, t4<br> [0x80001bf4]:sw t6, 0xd4(fp)<br>     |
| 152|[0x80006650]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1717986918<br>                                                                                                                                                                                                                      |[0x80001c04]:mulhu t6, t5, t4<br> [0x80001c08]:sw t6, 0xd8(fp)<br>     |
| 153|[0x80006654]<br>0x00000000<br> |- rs1_val==2 and rs2_val==46340<br>                                                                                                                                                                                                                           |[0x80001c18]:mulhu t6, t5, t4<br> [0x80001c1c]:sw t6, 0xdc(fp)<br>     |
| 154|[0x80006658]<br>0x00000000<br> |- rs1_val==2 and rs2_val==65535<br>                                                                                                                                                                                                                           |[0x80001c2c]:mulhu t6, t5, t4<br> [0x80001c30]:sw t6, 0xe0(fp)<br>     |
| 155|[0x8000665c]<br>0x00000000<br> |- rs1_val==2 and rs2_val==2<br>                                                                                                                                                                                                                               |[0x80001c3c]:mulhu t6, t5, t4<br> [0x80001c40]:sw t6, 0xe4(fp)<br>     |
| 156|[0x80006660]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1431655764<br>                                                                                                                                                                                                                      |[0x80001c50]:mulhu t6, t5, t4<br> [0x80001c54]:sw t6, 0xe8(fp)<br>     |
| 157|[0x80006664]<br>0x00000001<br> |- rs1_val==2 and rs2_val==2863311529<br>                                                                                                                                                                                                                      |[0x80001c64]:mulhu t6, t5, t4<br> [0x80001c68]:sw t6, 0xec(fp)<br>     |
| 158|[0x80006668]<br>0x00000000<br> |- rs1_val==2 and rs2_val==858993458<br>                                                                                                                                                                                                                       |[0x80001c78]:mulhu t6, t5, t4<br> [0x80001c7c]:sw t6, 0xf0(fp)<br>     |
| 159|[0x8000666c]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1717986917<br>                                                                                                                                                                                                                      |[0x80001c8c]:mulhu t6, t5, t4<br> [0x80001c90]:sw t6, 0xf4(fp)<br>     |
| 160|[0x80006670]<br>0x00000000<br> |- rs1_val==2 and rs2_val==46339<br>                                                                                                                                                                                                                           |[0x80001ca0]:mulhu t6, t5, t4<br> [0x80001ca4]:sw t6, 0xf8(fp)<br>     |
| 161|[0x80006674]<br>0x00000000<br> |- rs1_val==2 and rs2_val==0<br>                                                                                                                                                                                                                               |[0x80001cb0]:mulhu t6, t5, t4<br> [0x80001cb4]:sw t6, 0xfc(fp)<br>     |
| 162|[0x80006678]<br>0x00000000<br> |- rs1_val==2 and rs2_val==65534<br>                                                                                                                                                                                                                           |[0x80001cc4]:mulhu t6, t5, t4<br> [0x80001cc8]:sw t6, 0x100(fp)<br>    |
| 163|[0x8000667c]<br>0x00000000<br> |- rs1_val==2 and rs2_val==4<br>                                                                                                                                                                                                                               |[0x80001cd4]:mulhu t6, t5, t4<br> [0x80001cd8]:sw t6, 0x104(fp)<br>    |
| 164|[0x80006680]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1431655766<br>                                                                                                                                                                                                                      |[0x80001ce8]:mulhu t6, t5, t4<br> [0x80001cec]:sw t6, 0x108(fp)<br>    |
| 165|[0x80006684]<br>0x00000001<br> |- rs1_val==2 and rs2_val==2863311531<br>                                                                                                                                                                                                                      |[0x80001cfc]:mulhu t6, t5, t4<br> [0x80001d00]:sw t6, 0x10c(fp)<br>    |
| 166|[0x80006688]<br>0x00000000<br> |- rs1_val==2 and rs2_val==6<br>                                                                                                                                                                                                                               |[0x80001d0c]:mulhu t6, t5, t4<br> [0x80001d10]:sw t6, 0x110(fp)<br>    |
| 167|[0x8000668c]<br>0x00000000<br> |- rs1_val==2 and rs2_val==858993460<br>                                                                                                                                                                                                                       |[0x80001d20]:mulhu t6, t5, t4<br> [0x80001d24]:sw t6, 0x114(fp)<br>    |
| 168|[0x80006690]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1717986919<br>                                                                                                                                                                                                                      |[0x80001d34]:mulhu t6, t5, t4<br> [0x80001d38]:sw t6, 0x118(fp)<br>    |
| 169|[0x80006694]<br>0x00000000<br> |- rs1_val==2 and rs2_val==46341<br>                                                                                                                                                                                                                           |[0x80001d48]:mulhu t6, t5, t4<br> [0x80001d4c]:sw t6, 0x11c(fp)<br>    |
| 170|[0x80006698]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1<br>                                                                                                                                                                                                                               |[0x80001d58]:mulhu t6, t5, t4<br> [0x80001d5c]:sw t6, 0x120(fp)<br>    |
| 171|[0x8000669c]<br>0x00000000<br> |- rs1_val==1431655764 and rs2_val==3<br>                                                                                                                                                                                                                      |[0x80001d6c]:mulhu t6, t5, t4<br> [0x80001d70]:sw t6, 0x124(fp)<br>    |
| 172|[0x800066a0]<br>0x1C71C71B<br> |- rs1_val==1431655764 and rs2_val==1431655765<br>                                                                                                                                                                                                             |[0x80001d84]:mulhu t6, t5, t4<br> [0x80001d88]:sw t6, 0x128(fp)<br>    |
| 173|[0x800066a4]<br>0x38E38E37<br> |- rs1_val==1431655764 and rs2_val==2863311530<br>                                                                                                                                                                                                             |[0x80001d9c]:mulhu t6, t5, t4<br> [0x80001da0]:sw t6, 0x12c(fp)<br>    |
| 174|[0x800066a8]<br>0x00000001<br> |- rs1_val==1431655764 and rs2_val==5<br>                                                                                                                                                                                                                      |[0x80001db0]:mulhu t6, t5, t4<br> [0x80001db4]:sw t6, 0x130(fp)<br>    |
| 175|[0x800066ac]<br>0x11111110<br> |- rs1_val==1431655764 and rs2_val==858993459<br>                                                                                                                                                                                                              |[0x80001dc8]:mulhu t6, t5, t4<br> [0x80001dcc]:sw t6, 0x134(fp)<br>    |
| 176|[0x800066b0]<br>0x22222221<br> |- rs1_val==1431655764 and rs2_val==1717986918<br>                                                                                                                                                                                                             |[0x80001de0]:mulhu t6, t5, t4<br> [0x80001de4]:sw t6, 0x138(fp)<br>    |
| 177|[0x800066b4]<br>0x00003C56<br> |- rs1_val==1431655764 and rs2_val==46340<br>                                                                                                                                                                                                                  |[0x80001df8]:mulhu t6, t5, t4<br> [0x80001dfc]:sw t6, 0x13c(fp)<br>    |
| 178|[0x800066b8]<br>0x00005554<br> |- rs1_val==1431655764 and rs2_val==65535<br>                                                                                                                                                                                                                  |[0x80001e10]:mulhu t6, t5, t4<br> [0x80001e14]:sw t6, 0x140(fp)<br>    |
| 179|[0x800066bc]<br>0x00000000<br> |- rs1_val==1431655764 and rs2_val==2<br>                                                                                                                                                                                                                      |[0x80001e24]:mulhu t6, t5, t4<br> [0x80001e28]:sw t6, 0x144(fp)<br>    |
| 180|[0x800066c0]<br>0x1C71C71B<br> |- rs1_val==1431655764 and rs2_val==1431655764<br>                                                                                                                                                                                                             |[0x80001e3c]:mulhu t6, t5, t4<br> [0x80001e40]:sw t6, 0x148(fp)<br>    |
| 181|[0x800066c4]<br>0x38E38E37<br> |- rs1_val==1431655764 and rs2_val==2863311529<br>                                                                                                                                                                                                             |[0x80001e54]:mulhu t6, t5, t4<br> [0x80001e58]:sw t6, 0x14c(fp)<br>    |
| 182|[0x800066c8]<br>0x11111110<br> |- rs1_val==1431655764 and rs2_val==858993458<br>                                                                                                                                                                                                              |[0x80001e6c]:mulhu t6, t5, t4<br> [0x80001e70]:sw t6, 0x150(fp)<br>    |
| 183|[0x800066cc]<br>0x22222221<br> |- rs1_val==1431655764 and rs2_val==1717986917<br>                                                                                                                                                                                                             |[0x80001e84]:mulhu t6, t5, t4<br> [0x80001e88]:sw t6, 0x154(fp)<br>    |
| 184|[0x800066d0]<br>0x00003C56<br> |- rs1_val==1431655764 and rs2_val==46339<br>                                                                                                                                                                                                                  |[0x80001e9c]:mulhu t6, t5, t4<br> [0x80001ea0]:sw t6, 0x158(fp)<br>    |
| 185|[0x800066d4]<br>0x00000000<br> |- rs1_val==1431655764 and rs2_val==0<br>                                                                                                                                                                                                                      |[0x80001eb0]:mulhu t6, t5, t4<br> [0x80001eb4]:sw t6, 0x15c(fp)<br>    |
| 186|[0x800066d8]<br>0x00005554<br> |- rs1_val==1431655764 and rs2_val==65534<br>                                                                                                                                                                                                                  |[0x80001ec8]:mulhu t6, t5, t4<br> [0x80001ecc]:sw t6, 0x160(fp)<br>    |
| 187|[0x800066dc]<br>0x00000001<br> |- rs1_val==1431655764 and rs2_val==4<br>                                                                                                                                                                                                                      |[0x80001edc]:mulhu t6, t5, t4<br> [0x80001ee0]:sw t6, 0x164(fp)<br>    |
| 188|[0x800066e0]<br>0x1C71C71C<br> |- rs1_val==1431655764 and rs2_val==1431655766<br>                                                                                                                                                                                                             |[0x80001ef4]:mulhu t6, t5, t4<br> [0x80001ef8]:sw t6, 0x168(fp)<br>    |
| 189|[0x800066e4]<br>0x38E38E38<br> |- rs1_val==1431655764 and rs2_val==2863311531<br>                                                                                                                                                                                                             |[0x80001f0c]:mulhu t6, t5, t4<br> [0x80001f10]:sw t6, 0x16c(fp)<br>    |
| 190|[0x800066e8]<br>0x00000001<br> |- rs1_val==1431655764 and rs2_val==6<br>                                                                                                                                                                                                                      |[0x80001f20]:mulhu t6, t5, t4<br> [0x80001f24]:sw t6, 0x170(fp)<br>    |
| 191|[0x800066ec]<br>0x11111111<br> |- rs1_val==1431655764 and rs2_val==858993460<br>                                                                                                                                                                                                              |[0x80001f38]:mulhu t6, t5, t4<br> [0x80001f3c]:sw t6, 0x174(fp)<br>    |
| 192|[0x800066f0]<br>0x22222221<br> |- rs1_val==1431655764 and rs2_val==1717986919<br>                                                                                                                                                                                                             |[0x80001f50]:mulhu t6, t5, t4<br> [0x80001f54]:sw t6, 0x178(fp)<br>    |
| 193|[0x800066f4]<br>0x00003C56<br> |- rs1_val==1431655764 and rs2_val==46341<br>                                                                                                                                                                                                                  |[0x80001f68]:mulhu t6, t5, t4<br> [0x80001f6c]:sw t6, 0x17c(fp)<br>    |
| 194|[0x800066f8]<br>0x00000000<br> |- rs1_val==1431655764 and rs2_val==1<br>                                                                                                                                                                                                                      |[0x80001f7c]:mulhu t6, t5, t4<br> [0x80001f80]:sw t6, 0x180(fp)<br>    |
| 195|[0x800066fc]<br>0x00005555<br> |- rs1_val==1431655764 and rs2_val==65536<br>                                                                                                                                                                                                                  |[0x80001f90]:mulhu t6, t5, t4<br> [0x80001f94]:sw t6, 0x184(fp)<br>    |
| 196|[0x80006700]<br>0x00000001<br> |- rs1_val==2863311529 and rs2_val==3<br>                                                                                                                                                                                                                      |[0x80001fa4]:mulhu t6, t5, t4<br> [0x80001fa8]:sw t6, 0x188(fp)<br>    |
| 197|[0x80006704]<br>0x38E38E38<br> |- rs1_val==2863311529 and rs2_val==1431655765<br>                                                                                                                                                                                                             |[0x80001fbc]:mulhu t6, t5, t4<br> [0x80001fc0]:sw t6, 0x18c(fp)<br>    |
| 198|[0x80006708]<br>0x71C71C70<br> |- rs1_val==2863311529 and rs2_val==2863311530<br>                                                                                                                                                                                                             |[0x80001fd4]:mulhu t6, t5, t4<br> [0x80001fd8]:sw t6, 0x190(fp)<br>    |
| 199|[0x8000670c]<br>0x00000003<br> |- rs1_val==2863311529 and rs2_val==5<br>                                                                                                                                                                                                                      |[0x80001fe8]:mulhu t6, t5, t4<br> [0x80001fec]:sw t6, 0x194(fp)<br>    |
| 200|[0x80006710]<br>0x22222221<br> |- rs1_val==2863311529 and rs2_val==858993459<br>                                                                                                                                                                                                              |[0x80002000]:mulhu t6, t5, t4<br> [0x80002004]:sw t6, 0x198(fp)<br>    |
| 201|[0x80006714]<br>0x44444443<br> |- rs1_val==2863311529 and rs2_val==1717986918<br>                                                                                                                                                                                                             |[0x80002018]:mulhu t6, t5, t4<br> [0x8000201c]:sw t6, 0x19c(fp)<br>    |
| 202|[0x80006718]<br>0x000078AD<br> |- rs1_val==2863311529 and rs2_val==46340<br>                                                                                                                                                                                                                  |[0x80002030]:mulhu t6, t5, t4<br> [0x80002034]:sw t6, 0x1a0(fp)<br>    |
| 203|[0x8000671c]<br>0x0000AAA9<br> |- rs1_val==2863311529 and rs2_val==65535<br>                                                                                                                                                                                                                  |[0x80002048]:mulhu t6, t5, t4<br> [0x8000204c]:sw t6, 0x1a4(fp)<br>    |
| 204|[0x80006720]<br>0x00000001<br> |- rs1_val==2863311529 and rs2_val==2<br>                                                                                                                                                                                                                      |[0x8000205c]:mulhu t6, t5, t4<br> [0x80002060]:sw t6, 0x1a8(fp)<br>    |
| 205|[0x80006724]<br>0x38E38E37<br> |- rs1_val==2863311529 and rs2_val==1431655764<br>                                                                                                                                                                                                             |[0x80002074]:mulhu t6, t5, t4<br> [0x80002078]:sw t6, 0x1ac(fp)<br>    |
| 206|[0x80006728]<br>0x71C71C6F<br> |- rs1_val==2863311529 and rs2_val==2863311529<br>                                                                                                                                                                                                             |[0x8000208c]:mulhu t6, t5, t4<br> [0x80002090]:sw t6, 0x1b0(fp)<br>    |
| 207|[0x8000672c]<br>0x22222221<br> |- rs1_val==2863311529 and rs2_val==858993458<br>                                                                                                                                                                                                              |[0x800020a4]:mulhu t6, t5, t4<br> [0x800020a8]:sw t6, 0x1b4(fp)<br>    |
| 208|[0x80006730]<br>0x44444442<br> |- rs1_val==2863311529 and rs2_val==1717986917<br>                                                                                                                                                                                                             |[0x800020bc]:mulhu t6, t5, t4<br> [0x800020c0]:sw t6, 0x1b8(fp)<br>    |
| 209|[0x80006734]<br>0x000078AC<br> |- rs1_val==2863311529 and rs2_val==46339<br>                                                                                                                                                                                                                  |[0x800020d4]:mulhu t6, t5, t4<br> [0x800020d8]:sw t6, 0x1bc(fp)<br>    |
| 210|[0x80006738]<br>0x00000000<br> |- rs1_val==2863311529 and rs2_val==0<br>                                                                                                                                                                                                                      |[0x800020e8]:mulhu t6, t5, t4<br> [0x800020ec]:sw t6, 0x1c0(fp)<br>    |
| 211|[0x8000673c]<br>0x0000AAA9<br> |- rs1_val==2863311529 and rs2_val==65534<br>                                                                                                                                                                                                                  |[0x80002100]:mulhu t6, t5, t4<br> [0x80002104]:sw t6, 0x1c4(fp)<br>    |
| 212|[0x80006740]<br>0x00000002<br> |- rs1_val==2863311529 and rs2_val==4<br>                                                                                                                                                                                                                      |[0x80002114]:mulhu t6, t5, t4<br> [0x80002118]:sw t6, 0x1c8(fp)<br>    |
| 213|[0x80006744]<br>0x38E38E38<br> |- rs1_val==2863311529 and rs2_val==1431655766<br>                                                                                                                                                                                                             |[0x8000212c]:mulhu t6, t5, t4<br> [0x80002130]:sw t6, 0x1cc(fp)<br>    |
| 214|[0x80006748]<br>0x71C71C70<br> |- rs1_val==2863311529 and rs2_val==2863311531<br>                                                                                                                                                                                                             |[0x80002144]:mulhu t6, t5, t4<br> [0x80002148]:sw t6, 0x1d0(fp)<br>    |
| 215|[0x8000674c]<br>0x00000003<br> |- rs1_val==2863311529 and rs2_val==6<br>                                                                                                                                                                                                                      |[0x80002158]:mulhu t6, t5, t4<br> [0x8000215c]:sw t6, 0x1d4(fp)<br>    |
| 216|[0x80006750]<br>0x22222222<br> |- rs1_val==2863311529 and rs2_val==858993460<br>                                                                                                                                                                                                              |[0x80002170]:mulhu t6, t5, t4<br> [0x80002174]:sw t6, 0x1d8(fp)<br>    |
| 217|[0x80006754]<br>0x44444443<br> |- rs1_val==2863311529 and rs2_val==1717986919<br>                                                                                                                                                                                                             |[0x80002188]:mulhu t6, t5, t4<br> [0x8000218c]:sw t6, 0x1dc(fp)<br>    |
| 218|[0x80006758]<br>0x000078AD<br> |- rs1_val==2863311529 and rs2_val==46341<br>                                                                                                                                                                                                                  |[0x800021a0]:mulhu t6, t5, t4<br> [0x800021a4]:sw t6, 0x1e0(fp)<br>    |
| 219|[0x8000675c]<br>0x00000000<br> |- rs1_val==2863311529 and rs2_val==1<br>                                                                                                                                                                                                                      |[0x800021b4]:mulhu t6, t5, t4<br> [0x800021b8]:sw t6, 0x1e4(fp)<br>    |
| 220|[0x80006760]<br>0x0000AAAA<br> |- rs1_val==2863311529 and rs2_val==65536<br>                                                                                                                                                                                                                  |[0x800021c8]:mulhu t6, t5, t4<br> [0x800021cc]:sw t6, 0x1e8(fp)<br>    |
| 221|[0x80006764]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==3<br>                                                                                                                                                                                                                       |[0x800021dc]:mulhu t6, t5, t4<br> [0x800021e0]:sw t6, 0x1ec(fp)<br>    |
| 222|[0x80006768]<br>0x11111110<br> |- rs1_val==858993458 and rs2_val==1431655765<br>                                                                                                                                                                                                              |[0x800021f4]:mulhu t6, t5, t4<br> [0x800021f8]:sw t6, 0x1f0(fp)<br>    |
| 223|[0x8000676c]<br>0x22222221<br> |- rs1_val==858993458 and rs2_val==2863311530<br>                                                                                                                                                                                                              |[0x8000220c]:mulhu t6, t5, t4<br> [0x80002210]:sw t6, 0x1f4(fp)<br>    |
| 224|[0x80006770]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==5<br>                                                                                                                                                                                                                       |[0x80002220]:mulhu t6, t5, t4<br> [0x80002224]:sw t6, 0x1f8(fp)<br>    |
| 225|[0x80006774]<br>0x0A3D70A3<br> |- rs1_val==858993458 and rs2_val==858993459<br>                                                                                                                                                                                                               |[0x80002238]:mulhu t6, t5, t4<br> [0x8000223c]:sw t6, 0x1fc(fp)<br>    |
| 226|[0x80006778]<br>0x147AE147<br> |- rs1_val==858993458 and rs2_val==1717986918<br>                                                                                                                                                                                                              |[0x80002250]:mulhu t6, t5, t4<br> [0x80002254]:sw t6, 0x200(fp)<br>    |
| 227|[0x8000677c]<br>0x00002433<br> |- rs1_val==858993458 and rs2_val==46340<br>                                                                                                                                                                                                                   |[0x80002268]:mulhu t6, t5, t4<br> [0x8000226c]:sw t6, 0x204(fp)<br>    |
| 228|[0x80006780]<br>0x00003332<br> |- rs1_val==858993458 and rs2_val==65535<br>                                                                                                                                                                                                                   |[0x80002280]:mulhu t6, t5, t4<br> [0x80002284]:sw t6, 0x208(fp)<br>    |
| 229|[0x80006784]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==2<br>                                                                                                                                                                                                                       |[0x80002294]:mulhu t6, t5, t4<br> [0x80002298]:sw t6, 0x20c(fp)<br>    |
| 230|[0x80006788]<br>0x11111110<br> |- rs1_val==858993458 and rs2_val==1431655764<br>                                                                                                                                                                                                              |[0x800022ac]:mulhu t6, t5, t4<br> [0x800022b0]:sw t6, 0x210(fp)<br>    |
| 231|[0x8000678c]<br>0x22222221<br> |- rs1_val==858993458 and rs2_val==2863311529<br>                                                                                                                                                                                                              |[0x800022c4]:mulhu t6, t5, t4<br> [0x800022c8]:sw t6, 0x214(fp)<br>    |
| 232|[0x80006790]<br>0x0A3D70A3<br> |- rs1_val==858993458 and rs2_val==858993458<br>                                                                                                                                                                                                               |[0x800022dc]:mulhu t6, t5, t4<br> [0x800022e0]:sw t6, 0x218(fp)<br>    |
| 233|[0x80006794]<br>0x147AE146<br> |- rs1_val==858993458 and rs2_val==1717986917<br>                                                                                                                                                                                                              |[0x800022f4]:mulhu t6, t5, t4<br> [0x800022f8]:sw t6, 0x21c(fp)<br>    |
| 234|[0x80006798]<br>0x00002433<br> |- rs1_val==858993458 and rs2_val==46339<br>                                                                                                                                                                                                                   |[0x8000230c]:mulhu t6, t5, t4<br> [0x80002310]:sw t6, 0x220(fp)<br>    |
| 235|[0x8000679c]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==0<br>                                                                                                                                                                                                                       |[0x80002320]:mulhu t6, t5, t4<br> [0x80002324]:sw t6, 0x224(fp)<br>    |
| 236|[0x800067a0]<br>0x00003332<br> |- rs1_val==858993458 and rs2_val==65534<br>                                                                                                                                                                                                                   |[0x80002338]:mulhu t6, t5, t4<br> [0x8000233c]:sw t6, 0x228(fp)<br>    |
| 237|[0x800067a4]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==4<br>                                                                                                                                                                                                                       |[0x8000234c]:mulhu t6, t5, t4<br> [0x80002350]:sw t6, 0x22c(fp)<br>    |
| 238|[0x800067a8]<br>0x11111110<br> |- rs1_val==858993458 and rs2_val==1431655766<br>                                                                                                                                                                                                              |[0x80002364]:mulhu t6, t5, t4<br> [0x80002368]:sw t6, 0x230(fp)<br>    |
| 239|[0x800067ac]<br>0x22222221<br> |- rs1_val==858993458 and rs2_val==2863311531<br>                                                                                                                                                                                                              |[0x8000237c]:mulhu t6, t5, t4<br> [0x80002380]:sw t6, 0x234(fp)<br>    |
| 240|[0x800067b0]<br>0x00000001<br> |- rs1_val==858993458 and rs2_val==6<br>                                                                                                                                                                                                                       |[0x80002390]:mulhu t6, t5, t4<br> [0x80002394]:sw t6, 0x238(fp)<br>    |
| 241|[0x800067b4]<br>0x0A3D70A3<br> |- rs1_val==858993458 and rs2_val==858993460<br>                                                                                                                                                                                                               |[0x800023a8]:mulhu t6, t5, t4<br> [0x800023ac]:sw t6, 0x23c(fp)<br>    |
| 242|[0x800067b8]<br>0x147AE147<br> |- rs1_val==858993458 and rs2_val==1717986919<br>                                                                                                                                                                                                              |[0x800023c0]:mulhu t6, t5, t4<br> [0x800023c4]:sw t6, 0x240(fp)<br>    |
| 243|[0x800067bc]<br>0x00002434<br> |- rs1_val==858993458 and rs2_val==46341<br>                                                                                                                                                                                                                   |[0x800023d8]:mulhu t6, t5, t4<br> [0x800023dc]:sw t6, 0x244(fp)<br>    |
| 244|[0x800067c0]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==1<br>                                                                                                                                                                                                                       |[0x800023ec]:mulhu t6, t5, t4<br> [0x800023f0]:sw t6, 0x248(fp)<br>    |
| 245|[0x800067c4]<br>0x00003333<br> |- rs1_val==858993458 and rs2_val==65536<br>                                                                                                                                                                                                                   |[0x80002400]:mulhu t6, t5, t4<br> [0x80002404]:sw t6, 0x24c(fp)<br>    |
| 246|[0x800067c8]<br>0x00000001<br> |- rs1_val==1717986917 and rs2_val==3<br>                                                                                                                                                                                                                      |[0x80002414]:mulhu t6, t5, t4<br> [0x80002418]:sw t6, 0x250(fp)<br>    |
| 247|[0x800067cc]<br>0x22222221<br> |- rs1_val==1717986917 and rs2_val==1431655765<br>                                                                                                                                                                                                             |[0x8000242c]:mulhu t6, t5, t4<br> [0x80002430]:sw t6, 0x254(fp)<br>    |
| 248|[0x800067d0]<br>0x44444443<br> |- rs1_val==1717986917 and rs2_val==2863311530<br>                                                                                                                                                                                                             |[0x80002444]:mulhu t6, t5, t4<br> [0x80002448]:sw t6, 0x258(fp)<br>    |
| 249|[0x800067d4]<br>0x00000001<br> |- rs1_val==1717986917 and rs2_val==5<br>                                                                                                                                                                                                                      |[0x80002458]:mulhu t6, t5, t4<br> [0x8000245c]:sw t6, 0x25c(fp)<br>    |
| 250|[0x800067d8]<br>0x147AE147<br> |- rs1_val==1717986917 and rs2_val==858993459<br>                                                                                                                                                                                                              |[0x80002470]:mulhu t6, t5, t4<br> [0x80002474]:sw t6, 0x260(fp)<br>    |
| 251|[0x800067dc]<br>0x28F5C28E<br> |- rs1_val==1717986917 and rs2_val==1717986918<br>                                                                                                                                                                                                             |[0x80002488]:mulhu t6, t5, t4<br> [0x8000248c]:sw t6, 0x264(fp)<br>    |
| 252|[0x800067e0]<br>0x00004867<br> |- rs1_val==1717986917 and rs2_val==46340<br>                                                                                                                                                                                                                  |[0x800024a0]:mulhu t6, t5, t4<br> [0x800024a4]:sw t6, 0x268(fp)<br>    |
| 253|[0x800067e4]<br>0x00006665<br> |- rs1_val==1717986917 and rs2_val==65535<br>                                                                                                                                                                                                                  |[0x800024b8]:mulhu t6, t5, t4<br> [0x800024bc]:sw t6, 0x26c(fp)<br>    |
| 254|[0x800067e8]<br>0x00000000<br> |- rs1_val==1717986917 and rs2_val==2<br>                                                                                                                                                                                                                      |[0x800024cc]:mulhu t6, t5, t4<br> [0x800024d0]:sw t6, 0x270(fp)<br>    |
| 255|[0x800067ec]<br>0x22222221<br> |- rs1_val==1717986917 and rs2_val==1431655764<br>                                                                                                                                                                                                             |[0x800024e4]:mulhu t6, t5, t4<br> [0x800024e8]:sw t6, 0x274(fp)<br>    |
| 256|[0x800067f0]<br>0x44444442<br> |- rs1_val==1717986917 and rs2_val==2863311529<br>                                                                                                                                                                                                             |[0x800024fc]:mulhu t6, t5, t4<br> [0x80002500]:sw t6, 0x278(fp)<br>    |
| 257|[0x800067f4]<br>0x147AE146<br> |- rs1_val==1717986917 and rs2_val==858993458<br>                                                                                                                                                                                                              |[0x80002514]:mulhu t6, t5, t4<br> [0x80002518]:sw t6, 0x27c(fp)<br>    |
| 258|[0x800067f8]<br>0x28F5C28E<br> |- rs1_val==1717986917 and rs2_val==1717986917<br>                                                                                                                                                                                                             |[0x8000252c]:mulhu t6, t5, t4<br> [0x80002530]:sw t6, 0x280(fp)<br>    |
| 259|[0x800067fc]<br>0x00004867<br> |- rs1_val==1717986917 and rs2_val==46339<br>                                                                                                                                                                                                                  |[0x80002544]:mulhu t6, t5, t4<br> [0x80002548]:sw t6, 0x284(fp)<br>    |
| 260|[0x80006800]<br>0x00000000<br> |- rs1_val==1717986917 and rs2_val==0<br>                                                                                                                                                                                                                      |[0x80002558]:mulhu t6, t5, t4<br> [0x8000255c]:sw t6, 0x288(fp)<br>    |
| 261|[0x80006804]<br>0x00006665<br> |- rs1_val==1717986917 and rs2_val==65534<br>                                                                                                                                                                                                                  |[0x80002570]:mulhu t6, t5, t4<br> [0x80002574]:sw t6, 0x28c(fp)<br>    |
| 262|[0x80006808]<br>0x00000001<br> |- rs1_val==1717986917 and rs2_val==4<br>                                                                                                                                                                                                                      |[0x80002584]:mulhu t6, t5, t4<br> [0x80002588]:sw t6, 0x290(fp)<br>    |
| 263|[0x8000680c]<br>0x22222221<br> |- rs1_val==1717986917 and rs2_val==1431655766<br>                                                                                                                                                                                                             |[0x8000259c]:mulhu t6, t5, t4<br> [0x800025a0]:sw t6, 0x294(fp)<br>    |
| 264|[0x80006810]<br>0x44444443<br> |- rs1_val==1717986917 and rs2_val==2863311531<br>                                                                                                                                                                                                             |[0x800025b4]:mulhu t6, t5, t4<br> [0x800025b8]:sw t6, 0x298(fp)<br>    |
| 265|[0x80006814]<br>0x00000002<br> |- rs1_val==1717986917 and rs2_val==6<br>                                                                                                                                                                                                                      |[0x800025c8]:mulhu t6, t5, t4<br> [0x800025cc]:sw t6, 0x29c(fp)<br>    |
| 266|[0x80006818]<br>0x147AE147<br> |- rs1_val==1717986917 and rs2_val==858993460<br>                                                                                                                                                                                                              |[0x800025e0]:mulhu t6, t5, t4<br> [0x800025e4]:sw t6, 0x2a0(fp)<br>    |
| 267|[0x8000681c]<br>0x28F5C28F<br> |- rs1_val==1717986917 and rs2_val==1717986919<br>                                                                                                                                                                                                             |[0x800025f8]:mulhu t6, t5, t4<br> [0x800025fc]:sw t6, 0x2a4(fp)<br>    |
| 268|[0x80006820]<br>0x00004868<br> |- rs1_val==1717986917 and rs2_val==46341<br>                                                                                                                                                                                                                  |[0x80002610]:mulhu t6, t5, t4<br> [0x80002614]:sw t6, 0x2a8(fp)<br>    |
| 269|[0x80006824]<br>0x00000000<br> |- rs1_val==1717986917 and rs2_val==1<br>                                                                                                                                                                                                                      |[0x80002624]:mulhu t6, t5, t4<br> [0x80002628]:sw t6, 0x2ac(fp)<br>    |
| 270|[0x80006828]<br>0x00006666<br> |- rs1_val==1717986917 and rs2_val==65536<br>                                                                                                                                                                                                                  |[0x80002638]:mulhu t6, t5, t4<br> [0x8000263c]:sw t6, 0x2b0(fp)<br>    |
| 271|[0x8000682c]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==3<br>                                                                                                                                                                                                                           |[0x8000264c]:mulhu t6, t5, t4<br> [0x80002650]:sw t6, 0x2b4(fp)<br>    |
| 272|[0x80006830]<br>0x00003C56<br> |- rs1_val==46339 and rs2_val==1431655765<br>                                                                                                                                                                                                                  |[0x80002664]:mulhu t6, t5, t4<br> [0x80002668]:sw t6, 0x2b8(fp)<br>    |
| 273|[0x80006834]<br>0x000078AC<br> |- rs1_val==46339 and rs2_val==2863311530<br>                                                                                                                                                                                                                  |[0x8000267c]:mulhu t6, t5, t4<br> [0x80002680]:sw t6, 0x2bc(fp)<br>    |
| 274|[0x80006838]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==5<br>                                                                                                                                                                                                                           |[0x80002690]:mulhu t6, t5, t4<br> [0x80002694]:sw t6, 0x2c0(fp)<br>    |
| 275|[0x8000683c]<br>0x00002433<br> |- rs1_val==46339 and rs2_val==858993459<br>                                                                                                                                                                                                                   |[0x800026a8]:mulhu t6, t5, t4<br> [0x800026ac]:sw t6, 0x2c4(fp)<br>    |
| 276|[0x80006840]<br>0x00004867<br> |- rs1_val==46339 and rs2_val==1717986918<br>                                                                                                                                                                                                                  |[0x800026c0]:mulhu t6, t5, t4<br> [0x800026c4]:sw t6, 0x2c8(fp)<br>    |
| 277|[0x80006844]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==46340<br>                                                                                                                                                                                                                       |[0x800026d8]:mulhu t6, t5, t4<br> [0x800026dc]:sw t6, 0x2cc(fp)<br>    |
| 278|[0x80006848]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==65535<br>                                                                                                                                                                                                                       |[0x800026f0]:mulhu t6, t5, t4<br> [0x800026f4]:sw t6, 0x2d0(fp)<br>    |
| 279|[0x8000684c]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==2<br>                                                                                                                                                                                                                           |[0x80002704]:mulhu t6, t5, t4<br> [0x80002708]:sw t6, 0x2d4(fp)<br>    |
| 280|[0x80006850]<br>0x00003C56<br> |- rs1_val==46339 and rs2_val==1431655764<br>                                                                                                                                                                                                                  |[0x8000271c]:mulhu t6, t5, t4<br> [0x80002720]:sw t6, 0x2d8(fp)<br>    |
| 281|[0x80006854]<br>0x000078AC<br> |- rs1_val==46339 and rs2_val==2863311529<br>                                                                                                                                                                                                                  |[0x80002734]:mulhu t6, t5, t4<br> [0x80002738]:sw t6, 0x2dc(fp)<br>    |
| 282|[0x80006858]<br>0x00002433<br> |- rs1_val==46339 and rs2_val==858993458<br>                                                                                                                                                                                                                   |[0x8000274c]:mulhu t6, t5, t4<br> [0x80002750]:sw t6, 0x2e0(fp)<br>    |
| 283|[0x8000685c]<br>0x00004867<br> |- rs1_val==46339 and rs2_val==1717986917<br>                                                                                                                                                                                                                  |[0x80002764]:mulhu t6, t5, t4<br> [0x80002768]:sw t6, 0x2e4(fp)<br>    |
| 284|[0x80006860]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==46339<br>                                                                                                                                                                                                                       |[0x8000277c]:mulhu t6, t5, t4<br> [0x80002780]:sw t6, 0x2e8(fp)<br>    |
| 285|[0x80006864]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==0<br>                                                                                                                                                                                                                           |[0x80002790]:mulhu t6, t5, t4<br> [0x80002794]:sw t6, 0x2ec(fp)<br>    |
| 286|[0x80006868]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==65534<br>                                                                                                                                                                                                                       |[0x800027a8]:mulhu t6, t5, t4<br> [0x800027ac]:sw t6, 0x2f0(fp)<br>    |
| 287|[0x8000686c]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==4<br>                                                                                                                                                                                                                           |[0x800027bc]:mulhu t6, t5, t4<br> [0x800027c0]:sw t6, 0x2f4(fp)<br>    |
| 288|[0x80006870]<br>0x00003C56<br> |- rs1_val==46339 and rs2_val==1431655766<br>                                                                                                                                                                                                                  |[0x800027d4]:mulhu t6, t5, t4<br> [0x800027d8]:sw t6, 0x2f8(fp)<br>    |
| 289|[0x80006874]<br>0x000078AC<br> |- rs1_val==46339 and rs2_val==2863311531<br>                                                                                                                                                                                                                  |[0x800027ec]:mulhu t6, t5, t4<br> [0x800027f0]:sw t6, 0x2fc(fp)<br>    |
| 290|[0x80006878]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==6<br>                                                                                                                                                                                                                           |[0x80002800]:mulhu t6, t5, t4<br> [0x80002804]:sw t6, 0x300(fp)<br>    |
| 291|[0x8000687c]<br>0x00002433<br> |- rs1_val==46339 and rs2_val==858993460<br>                                                                                                                                                                                                                   |[0x80002818]:mulhu t6, t5, t4<br> [0x8000281c]:sw t6, 0x304(fp)<br>    |
| 292|[0x80006880]<br>0x00004867<br> |- rs1_val==46339 and rs2_val==1717986919<br>                                                                                                                                                                                                                  |[0x80002830]:mulhu t6, t5, t4<br> [0x80002834]:sw t6, 0x308(fp)<br>    |
| 293|[0x80006884]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==46341<br>                                                                                                                                                                                                                       |[0x80002848]:mulhu t6, t5, t4<br> [0x8000284c]:sw t6, 0x30c(fp)<br>    |
| 294|[0x80006888]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==1<br>                                                                                                                                                                                                                           |[0x8000285c]:mulhu t6, t5, t4<br> [0x80002860]:sw t6, 0x310(fp)<br>    |
| 295|[0x8000688c]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==65536<br>                                                                                                                                                                                                                       |[0x80002870]:mulhu t6, t5, t4<br> [0x80002874]:sw t6, 0x314(fp)<br>    |
| 296|[0x80006890]<br>0x00000000<br> |- rs1_val==0 and rs2_val==3<br>                                                                                                                                                                                                                               |[0x80002880]:mulhu t6, t5, t4<br> [0x80002884]:sw t6, 0x318(fp)<br>    |
| 297|[0x80006894]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1431655765<br>                                                                                                                                                                                                                      |[0x80002894]:mulhu t6, t5, t4<br> [0x80002898]:sw t6, 0x31c(fp)<br>    |
| 298|[0x80006898]<br>0x00000000<br> |- rs1_val==0 and rs2_val==2863311530<br>                                                                                                                                                                                                                      |[0x800028a8]:mulhu t6, t5, t4<br> [0x800028ac]:sw t6, 0x320(fp)<br>    |
| 299|[0x8000689c]<br>0x00000000<br> |- rs1_val==0 and rs2_val==5<br>                                                                                                                                                                                                                               |[0x800028b8]:mulhu t6, t5, t4<br> [0x800028bc]:sw t6, 0x324(fp)<br>    |
| 300|[0x800068a0]<br>0x00000000<br> |- rs1_val==0 and rs2_val==858993459<br>                                                                                                                                                                                                                       |[0x800028cc]:mulhu t6, t5, t4<br> [0x800028d0]:sw t6, 0x328(fp)<br>    |
| 301|[0x800068a4]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1717986918<br>                                                                                                                                                                                                                      |[0x800028e0]:mulhu t6, t5, t4<br> [0x800028e4]:sw t6, 0x32c(fp)<br>    |
| 302|[0x800068a8]<br>0x00000000<br> |- rs1_val==0 and rs2_val==46340<br>                                                                                                                                                                                                                           |[0x800028f4]:mulhu t6, t5, t4<br> [0x800028f8]:sw t6, 0x330(fp)<br>    |
| 303|[0x800068ac]<br>0x00000000<br> |- rs1_val==0 and rs2_val==65535<br>                                                                                                                                                                                                                           |[0x80002908]:mulhu t6, t5, t4<br> [0x8000290c]:sw t6, 0x334(fp)<br>    |
| 304|[0x800068b0]<br>0x00000000<br> |- rs1_val==0 and rs2_val==2<br>                                                                                                                                                                                                                               |[0x80002918]:mulhu t6, t5, t4<br> [0x8000291c]:sw t6, 0x338(fp)<br>    |
| 305|[0x800068b4]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1431655764<br>                                                                                                                                                                                                                      |[0x8000292c]:mulhu t6, t5, t4<br> [0x80002930]:sw t6, 0x33c(fp)<br>    |
| 306|[0x800068b8]<br>0x00000000<br> |- rs1_val==0 and rs2_val==2863311529<br>                                                                                                                                                                                                                      |[0x80002940]:mulhu t6, t5, t4<br> [0x80002944]:sw t6, 0x340(fp)<br>    |
| 307|[0x800068bc]<br>0x00000000<br> |- rs1_val==0 and rs2_val==858993458<br>                                                                                                                                                                                                                       |[0x80002954]:mulhu t6, t5, t4<br> [0x80002958]:sw t6, 0x344(fp)<br>    |
| 308|[0x800068c0]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1717986917<br>                                                                                                                                                                                                                      |[0x80002968]:mulhu t6, t5, t4<br> [0x8000296c]:sw t6, 0x348(fp)<br>    |
| 309|[0x800068c4]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1<br>                                                                                                                                                                                                                               |[0x80002978]:mulhu t6, t5, t4<br> [0x8000297c]:sw t6, 0x34c(fp)<br>    |
| 310|[0x800068c8]<br>0x00000000<br> |- rs1_val==65534 and rs2_val==3<br>                                                                                                                                                                                                                           |[0x8000298c]:mulhu t6, t5, t4<br> [0x80002990]:sw t6, 0x350(fp)<br>    |
| 311|[0x800068cc]<br>0x00005554<br> |- rs1_val==65534 and rs2_val==1431655765<br>                                                                                                                                                                                                                  |[0x800029a4]:mulhu t6, t5, t4<br> [0x800029a8]:sw t6, 0x354(fp)<br>    |
| 312|[0x800068d0]<br>0x0000AAA9<br> |- rs1_val==65534 and rs2_val==2863311530<br>                                                                                                                                                                                                                  |[0x800029bc]:mulhu t6, t5, t4<br> [0x800029c0]:sw t6, 0x358(fp)<br>    |
| 313|[0x800068d4]<br>0x00000000<br> |- rs1_val==65534 and rs2_val==5<br>                                                                                                                                                                                                                           |[0x800029d0]:mulhu t6, t5, t4<br> [0x800029d4]:sw t6, 0x35c(fp)<br>    |
| 314|[0x800068d8]<br>0x00003332<br> |- rs1_val==65534 and rs2_val==858993459<br>                                                                                                                                                                                                                   |[0x800029e8]:mulhu t6, t5, t4<br> [0x800029ec]:sw t6, 0x360(fp)<br>    |
| 315|[0x800068dc]<br>0x00006665<br> |- rs1_val==65534 and rs2_val==1717986918<br>                                                                                                                                                                                                                  |[0x80002a00]:mulhu t6, t5, t4<br> [0x80002a04]:sw t6, 0x364(fp)<br>    |
| 316|[0x800068e0]<br>0x00000000<br> |- rs1_val==65534 and rs2_val==46340<br>                                                                                                                                                                                                                       |[0x80002a18]:mulhu t6, t5, t4<br> [0x80002a1c]:sw t6, 0x368(fp)<br>    |
| 317|[0x800068e4]<br>0x00000000<br> |- rs1_val==65534 and rs2_val==65535<br>                                                                                                                                                                                                                       |[0x80002a30]:mulhu t6, t5, t4<br> [0x80002a34]:sw t6, 0x36c(fp)<br>    |
| 318|[0x800068e8]<br>0x00000000<br> |- rs1_val==65534 and rs2_val==2<br>                                                                                                                                                                                                                           |[0x80002a44]:mulhu t6, t5, t4<br> [0x80002a48]:sw t6, 0x370(fp)<br>    |
| 319|[0x800068ec]<br>0x00005554<br> |- rs1_val==65534 and rs2_val==1431655764<br>                                                                                                                                                                                                                  |[0x80002a5c]:mulhu t6, t5, t4<br> [0x80002a60]:sw t6, 0x374(fp)<br>    |
| 320|[0x800068f0]<br>0x0000AAA9<br> |- rs1_val==65534 and rs2_val==2863311529<br>                                                                                                                                                                                                                  |[0x80002a74]:mulhu t6, t5, t4<br> [0x80002a78]:sw t6, 0x378(fp)<br>    |
| 321|[0x800068f4]<br>0x00003332<br> |- rs1_val==65534 and rs2_val==858993458<br>                                                                                                                                                                                                                   |[0x80002a8c]:mulhu t6, t5, t4<br> [0x80002a90]:sw t6, 0x37c(fp)<br>    |
| 322|[0x800068f8]<br>0x00006665<br> |- rs1_val==65534 and rs2_val==1717986917<br>                                                                                                                                                                                                                  |[0x80002aa4]:mulhu t6, t5, t4<br> [0x80002aa8]:sw t6, 0x380(fp)<br>    |
| 323|[0x800068fc]<br>0x00000000<br> |- rs1_val==65534 and rs2_val==46339<br>                                                                                                                                                                                                                       |[0x80002abc]:mulhu t6, t5, t4<br> [0x80002ac0]:sw t6, 0x384(fp)<br>    |
| 324|[0x80006900]<br>0x00000000<br> |- rs1_val==65534 and rs2_val==0<br>                                                                                                                                                                                                                           |[0x80002ad0]:mulhu t6, t5, t4<br> [0x80002ad4]:sw t6, 0x388(fp)<br>    |
| 325|[0x80006904]<br>0x00000000<br> |- rs1_val==65534 and rs2_val==65534<br>                                                                                                                                                                                                                       |[0x80002ae8]:mulhu t6, t5, t4<br> [0x80002aec]:sw t6, 0x38c(fp)<br>    |
| 326|[0x80006908]<br>0x00000000<br> |- rs1_val==65534 and rs2_val==4<br>                                                                                                                                                                                                                           |[0x80002afc]:mulhu t6, t5, t4<br> [0x80002b00]:sw t6, 0x390(fp)<br>    |
| 327|[0x8000690c]<br>0x00005554<br> |- rs1_val==65534 and rs2_val==1431655766<br>                                                                                                                                                                                                                  |[0x80002b14]:mulhu t6, t5, t4<br> [0x80002b18]:sw t6, 0x394(fp)<br>    |
| 328|[0x80006910]<br>0x0000AAA9<br> |- rs1_val==65534 and rs2_val==2863311531<br>                                                                                                                                                                                                                  |[0x80002b2c]:mulhu t6, t5, t4<br> [0x80002b30]:sw t6, 0x398(fp)<br>    |
| 329|[0x80006914]<br>0x00000000<br> |- rs1_val==65534 and rs2_val==6<br>                                                                                                                                                                                                                           |[0x80002b40]:mulhu t6, t5, t4<br> [0x80002b44]:sw t6, 0x39c(fp)<br>    |
| 330|[0x80006918]<br>0x00003332<br> |- rs1_val==65534 and rs2_val==858993460<br>                                                                                                                                                                                                                   |[0x80002b58]:mulhu t6, t5, t4<br> [0x80002b5c]:sw t6, 0x3a0(fp)<br>    |
| 331|[0x8000691c]<br>0x00006665<br> |- rs1_val==65534 and rs2_val==1717986919<br>                                                                                                                                                                                                                  |[0x80002b70]:mulhu t6, t5, t4<br> [0x80002b74]:sw t6, 0x3a4(fp)<br>    |
| 332|[0x80006920]<br>0x00000000<br> |- rs1_val==65534 and rs2_val==46341<br>                                                                                                                                                                                                                       |[0x80002b88]:mulhu t6, t5, t4<br> [0x80002b8c]:sw t6, 0x3a8(fp)<br>    |
| 333|[0x80006924]<br>0x00000000<br> |- rs1_val==65534 and rs2_val==1<br>                                                                                                                                                                                                                           |[0x80002b9c]:mulhu t6, t5, t4<br> [0x80002ba0]:sw t6, 0x3ac(fp)<br>    |
| 334|[0x80006928]<br>0x00000000<br> |- rs1_val==65534 and rs2_val==65536<br>                                                                                                                                                                                                                       |[0x80002bb0]:mulhu t6, t5, t4<br> [0x80002bb4]:sw t6, 0x3b0(fp)<br>    |
| 335|[0x8000692c]<br>0x00000000<br> |- rs1_val==4 and rs2_val==3<br>                                                                                                                                                                                                                               |[0x80002bc0]:mulhu t6, t5, t4<br> [0x80002bc4]:sw t6, 0x3b4(fp)<br>    |
| 336|[0x80006930]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1431655765<br>                                                                                                                                                                                                                      |[0x80002bd4]:mulhu t6, t5, t4<br> [0x80002bd8]:sw t6, 0x3b8(fp)<br>    |
| 337|[0x80006934]<br>0x00000002<br> |- rs1_val==4 and rs2_val==2863311530<br>                                                                                                                                                                                                                      |[0x80002be8]:mulhu t6, t5, t4<br> [0x80002bec]:sw t6, 0x3bc(fp)<br>    |
| 338|[0x80006938]<br>0x00000000<br> |- rs1_val==4 and rs2_val==5<br>                                                                                                                                                                                                                               |[0x80002bf8]:mulhu t6, t5, t4<br> [0x80002bfc]:sw t6, 0x3c0(fp)<br>    |
| 339|[0x8000693c]<br>0x00000000<br> |- rs1_val==4 and rs2_val==858993459<br>                                                                                                                                                                                                                       |[0x80002c0c]:mulhu t6, t5, t4<br> [0x80002c10]:sw t6, 0x3c4(fp)<br>    |
| 340|[0x80006940]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1717986918<br>                                                                                                                                                                                                                      |[0x80002c20]:mulhu t6, t5, t4<br> [0x80002c24]:sw t6, 0x3c8(fp)<br>    |
| 341|[0x80006944]<br>0x00000000<br> |- rs1_val==4 and rs2_val==46340<br>                                                                                                                                                                                                                           |[0x80002c34]:mulhu t6, t5, t4<br> [0x80002c38]:sw t6, 0x3cc(fp)<br>    |
| 342|[0x80006948]<br>0x00000000<br> |- rs1_val==4 and rs2_val==65535<br>                                                                                                                                                                                                                           |[0x80002c48]:mulhu t6, t5, t4<br> [0x80002c4c]:sw t6, 0x3d0(fp)<br>    |
| 343|[0x8000694c]<br>0x00000000<br> |- rs1_val==4 and rs2_val==2<br>                                                                                                                                                                                                                               |[0x80002c58]:mulhu t6, t5, t4<br> [0x80002c5c]:sw t6, 0x3d4(fp)<br>    |
| 344|[0x80006950]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1431655764<br>                                                                                                                                                                                                                      |[0x80002c6c]:mulhu t6, t5, t4<br> [0x80002c70]:sw t6, 0x3d8(fp)<br>    |
| 345|[0x80006954]<br>0x00000002<br> |- rs1_val==4 and rs2_val==2863311529<br>                                                                                                                                                                                                                      |[0x80002c80]:mulhu t6, t5, t4<br> [0x80002c84]:sw t6, 0x3dc(fp)<br>    |
| 346|[0x80006958]<br>0x00000000<br> |- rs1_val==4 and rs2_val==858993458<br>                                                                                                                                                                                                                       |[0x80002c94]:mulhu t6, t5, t4<br> [0x80002c98]:sw t6, 0x3e0(fp)<br>    |
| 347|[0x8000695c]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1717986917<br>                                                                                                                                                                                                                      |[0x80002ca8]:mulhu t6, t5, t4<br> [0x80002cac]:sw t6, 0x3e4(fp)<br>    |
| 348|[0x80006960]<br>0x00000000<br> |- rs1_val==4 and rs2_val==46339<br>                                                                                                                                                                                                                           |[0x80002cbc]:mulhu t6, t5, t4<br> [0x80002cc0]:sw t6, 0x3e8(fp)<br>    |
| 349|[0x80006964]<br>0x00000000<br> |- rs1_val==4 and rs2_val==0<br>                                                                                                                                                                                                                               |[0x80002ccc]:mulhu t6, t5, t4<br> [0x80002cd0]:sw t6, 0x3ec(fp)<br>    |
| 350|[0x80006968]<br>0x00000000<br> |- rs1_val==4 and rs2_val==65534<br>                                                                                                                                                                                                                           |[0x80002ce0]:mulhu t6, t5, t4<br> [0x80002ce4]:sw t6, 0x3f0(fp)<br>    |
| 351|[0x8000696c]<br>0x00000000<br> |- rs1_val==4 and rs2_val==4<br>                                                                                                                                                                                                                               |[0x80002cf0]:mulhu t6, t5, t4<br> [0x80002cf4]:sw t6, 0x3f4(fp)<br>    |
| 352|[0x80006970]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1431655766<br>                                                                                                                                                                                                                      |[0x80002d04]:mulhu t6, t5, t4<br> [0x80002d08]:sw t6, 0x3f8(fp)<br>    |
| 353|[0x80006974]<br>0x00000002<br> |- rs1_val==4 and rs2_val==2863311531<br>                                                                                                                                                                                                                      |[0x80002d18]:mulhu t6, t5, t4<br> [0x80002d1c]:sw t6, 0x3fc(fp)<br>    |
| 354|[0x80006978]<br>0x00000000<br> |- rs1_val==4 and rs2_val==6<br>                                                                                                                                                                                                                               |[0x80002d48]:mulhu t6, t5, t4<br> [0x80002d4c]:sw t6, 0x0(fp)<br>      |
| 355|[0x8000697c]<br>0x00000000<br> |- rs1_val==4 and rs2_val==858993460<br>                                                                                                                                                                                                                       |[0x80002d5c]:mulhu t6, t5, t4<br> [0x80002d60]:sw t6, 0x4(fp)<br>      |
| 356|[0x80006980]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1717986919<br>                                                                                                                                                                                                                      |[0x80002d70]:mulhu t6, t5, t4<br> [0x80002d74]:sw t6, 0x8(fp)<br>      |
| 357|[0x80006984]<br>0x00000000<br> |- rs1_val==4 and rs2_val==46341<br>                                                                                                                                                                                                                           |[0x80002d84]:mulhu t6, t5, t4<br> [0x80002d88]:sw t6, 0xc(fp)<br>      |
| 358|[0x80006988]<br>0x00000000<br> |- rs1_val==4 and rs2_val==1<br>                                                                                                                                                                                                                               |[0x80002d94]:mulhu t6, t5, t4<br> [0x80002d98]:sw t6, 0x10(fp)<br>     |
| 359|[0x8000698c]<br>0x00000001<br> |- rs1_val==1431655766 and rs2_val==3<br>                                                                                                                                                                                                                      |[0x80002da8]:mulhu t6, t5, t4<br> [0x80002dac]:sw t6, 0x14(fp)<br>     |
| 360|[0x80006990]<br>0x1C71C71C<br> |- rs1_val==1431655766 and rs2_val==1431655765<br>                                                                                                                                                                                                             |[0x80002dc0]:mulhu t6, t5, t4<br> [0x80002dc4]:sw t6, 0x18(fp)<br>     |
| 361|[0x80006994]<br>0x38E38E39<br> |- rs1_val==1431655766 and rs2_val==2863311530<br>                                                                                                                                                                                                             |[0x80002dd8]:mulhu t6, t5, t4<br> [0x80002ddc]:sw t6, 0x1c(fp)<br>     |
| 362|[0x80006998]<br>0x00000001<br> |- rs1_val==1431655766 and rs2_val==5<br>                                                                                                                                                                                                                      |[0x80002dec]:mulhu t6, t5, t4<br> [0x80002df0]:sw t6, 0x20(fp)<br>     |
| 363|[0x8000699c]<br>0x11111111<br> |- rs1_val==1431655766 and rs2_val==858993459<br>                                                                                                                                                                                                              |[0x80002e04]:mulhu t6, t5, t4<br> [0x80002e08]:sw t6, 0x24(fp)<br>     |
| 364|[0x800069a0]<br>0x22222222<br> |- rs1_val==1431655766 and rs2_val==1717986918<br>                                                                                                                                                                                                             |[0x80002e1c]:mulhu t6, t5, t4<br> [0x80002e20]:sw t6, 0x28(fp)<br>     |
| 365|[0x800069a4]<br>0x00003C56<br> |- rs1_val==1431655766 and rs2_val==46340<br>                                                                                                                                                                                                                  |[0x80002e34]:mulhu t6, t5, t4<br> [0x80002e38]:sw t6, 0x2c(fp)<br>     |
| 366|[0x800069a8]<br>0x00005555<br> |- rs1_val==1431655766 and rs2_val==65535<br>                                                                                                                                                                                                                  |[0x80002e4c]:mulhu t6, t5, t4<br> [0x80002e50]:sw t6, 0x30(fp)<br>     |
| 367|[0x800069ac]<br>0x00000000<br> |- rs1_val==1431655766 and rs2_val==2<br>                                                                                                                                                                                                                      |[0x80002e60]:mulhu t6, t5, t4<br> [0x80002e64]:sw t6, 0x34(fp)<br>     |
| 368|[0x800069b0]<br>0x1C71C71C<br> |- rs1_val==1431655766 and rs2_val==1431655764<br>                                                                                                                                                                                                             |[0x80002e78]:mulhu t6, t5, t4<br> [0x80002e7c]:sw t6, 0x38(fp)<br>     |
| 369|[0x800069b4]<br>0x38E38E38<br> |- rs1_val==1431655766 and rs2_val==2863311529<br>                                                                                                                                                                                                             |[0x80002e90]:mulhu t6, t5, t4<br> [0x80002e94]:sw t6, 0x3c(fp)<br>     |
| 370|[0x800069b8]<br>0x11111110<br> |- rs1_val==1431655766 and rs2_val==858993458<br>                                                                                                                                                                                                              |[0x80002ea8]:mulhu t6, t5, t4<br> [0x80002eac]:sw t6, 0x40(fp)<br>     |
| 371|[0x800069bc]<br>0x22222221<br> |- rs1_val==1431655766 and rs2_val==1717986917<br>                                                                                                                                                                                                             |[0x80002ec0]:mulhu t6, t5, t4<br> [0x80002ec4]:sw t6, 0x44(fp)<br>     |
| 372|[0x800069c0]<br>0x00003C56<br> |- rs1_val==1431655766 and rs2_val==46339<br>                                                                                                                                                                                                                  |[0x80002ed8]:mulhu t6, t5, t4<br> [0x80002edc]:sw t6, 0x48(fp)<br>     |
| 373|[0x800069c4]<br>0x00000000<br> |- rs1_val==1431655766 and rs2_val==0<br>                                                                                                                                                                                                                      |[0x80002eec]:mulhu t6, t5, t4<br> [0x80002ef0]:sw t6, 0x4c(fp)<br>     |
| 374|[0x800069c8]<br>0x00005554<br> |- rs1_val==1431655766 and rs2_val==65534<br>                                                                                                                                                                                                                  |[0x80002f04]:mulhu t6, t5, t4<br> [0x80002f08]:sw t6, 0x50(fp)<br>     |
| 375|[0x800069cc]<br>0x00000001<br> |- rs1_val==1431655766 and rs2_val==4<br>                                                                                                                                                                                                                      |[0x80002f18]:mulhu t6, t5, t4<br> [0x80002f1c]:sw t6, 0x54(fp)<br>     |
| 376|[0x800069d0]<br>0x1C71C71C<br> |- rs1_val==1431655766 and rs2_val==1431655766<br>                                                                                                                                                                                                             |[0x80002f30]:mulhu t6, t5, t4<br> [0x80002f34]:sw t6, 0x58(fp)<br>     |
| 377|[0x800069d4]<br>0x38E38E39<br> |- rs1_val==1431655766 and rs2_val==2863311531<br>                                                                                                                                                                                                             |[0x80002f48]:mulhu t6, t5, t4<br> [0x80002f4c]:sw t6, 0x5c(fp)<br>     |
| 378|[0x800069d8]<br>0x00000002<br> |- rs1_val==1431655766 and rs2_val==6<br>                                                                                                                                                                                                                      |[0x80002f5c]:mulhu t6, t5, t4<br> [0x80002f60]:sw t6, 0x60(fp)<br>     |
| 379|[0x800069dc]<br>0x11111111<br> |- rs1_val==1431655766 and rs2_val==858993460<br>                                                                                                                                                                                                              |[0x80002f74]:mulhu t6, t5, t4<br> [0x80002f78]:sw t6, 0x64(fp)<br>     |
| 380|[0x800069e0]<br>0x22222222<br> |- rs1_val==1431655766 and rs2_val==1717986919<br>                                                                                                                                                                                                             |[0x80002f8c]:mulhu t6, t5, t4<br> [0x80002f90]:sw t6, 0x68(fp)<br>     |
| 381|[0x800069e4]<br>0x00003C57<br> |- rs1_val==1431655766 and rs2_val==46341<br>                                                                                                                                                                                                                  |[0x80002fa4]:mulhu t6, t5, t4<br> [0x80002fa8]:sw t6, 0x6c(fp)<br>     |
| 382|[0x800069e8]<br>0x00000000<br> |- rs1_val==1431655766 and rs2_val==1<br>                                                                                                                                                                                                                      |[0x80002fb8]:mulhu t6, t5, t4<br> [0x80002fbc]:sw t6, 0x70(fp)<br>     |
| 383|[0x800069ec]<br>0x00005555<br> |- rs1_val==1431655766 and rs2_val==65536<br>                                                                                                                                                                                                                  |[0x80002fcc]:mulhu t6, t5, t4<br> [0x80002fd0]:sw t6, 0x74(fp)<br>     |
| 384|[0x800069f0]<br>0x00000002<br> |- rs1_val==2863311531 and rs2_val==3<br>                                                                                                                                                                                                                      |[0x80002fe0]:mulhu t6, t5, t4<br> [0x80002fe4]:sw t6, 0x78(fp)<br>     |
| 385|[0x800069f4]<br>0x38E38E38<br> |- rs1_val==2863311531 and rs2_val==1431655765<br>                                                                                                                                                                                                             |[0x80002ff8]:mulhu t6, t5, t4<br> [0x80002ffc]:sw t6, 0x7c(fp)<br>     |
| 386|[0x800069f8]<br>0x71C71C71<br> |- rs1_val==2863311531 and rs2_val==2863311530<br>                                                                                                                                                                                                             |[0x80003010]:mulhu t6, t5, t4<br> [0x80003014]:sw t6, 0x80(fp)<br>     |
| 387|[0x800069fc]<br>0x00000003<br> |- rs1_val==2863311531 and rs2_val==5<br>                                                                                                                                                                                                                      |[0x80003024]:mulhu t6, t5, t4<br> [0x80003028]:sw t6, 0x84(fp)<br>     |
| 388|[0x80006a00]<br>0x22222222<br> |- rs1_val==2863311531 and rs2_val==858993459<br>                                                                                                                                                                                                              |[0x8000303c]:mulhu t6, t5, t4<br> [0x80003040]:sw t6, 0x88(fp)<br>     |
| 389|[0x80006a04]<br>0x44444444<br> |- rs1_val==2863311531 and rs2_val==1717986918<br>                                                                                                                                                                                                             |[0x80003054]:mulhu t6, t5, t4<br> [0x80003058]:sw t6, 0x8c(fp)<br>     |
| 390|[0x80006a08]<br>0x000078AD<br> |- rs1_val==2863311531 and rs2_val==46340<br>                                                                                                                                                                                                                  |[0x8000306c]:mulhu t6, t5, t4<br> [0x80003070]:sw t6, 0x90(fp)<br>     |
| 391|[0x80006a0c]<br>0x0000AAAA<br> |- rs1_val==2863311531 and rs2_val==65535<br>                                                                                                                                                                                                                  |[0x80003084]:mulhu t6, t5, t4<br> [0x80003088]:sw t6, 0x94(fp)<br>     |
| 392|[0x80006a10]<br>0x00000001<br> |- rs1_val==2863311531 and rs2_val==2<br>                                                                                                                                                                                                                      |[0x80003098]:mulhu t6, t5, t4<br> [0x8000309c]:sw t6, 0x98(fp)<br>     |
| 393|[0x80006a14]<br>0x38E38E38<br> |- rs1_val==2863311531 and rs2_val==1431655764<br>                                                                                                                                                                                                             |[0x800030b0]:mulhu t6, t5, t4<br> [0x800030b4]:sw t6, 0x9c(fp)<br>     |
| 394|[0x80006a18]<br>0x71C71C70<br> |- rs1_val==2863311531 and rs2_val==2863311529<br>                                                                                                                                                                                                             |[0x800030c8]:mulhu t6, t5, t4<br> [0x800030cc]:sw t6, 0xa0(fp)<br>     |
| 395|[0x80006a1c]<br>0x22222221<br> |- rs1_val==2863311531 and rs2_val==858993458<br>                                                                                                                                                                                                              |[0x800030e0]:mulhu t6, t5, t4<br> [0x800030e4]:sw t6, 0xa4(fp)<br>     |
| 396|[0x80006a20]<br>0x44444443<br> |- rs1_val==2863311531 and rs2_val==1717986917<br>                                                                                                                                                                                                             |[0x800030f8]:mulhu t6, t5, t4<br> [0x800030fc]:sw t6, 0xa8(fp)<br>     |
| 397|[0x80006a24]<br>0x000078AC<br> |- rs1_val==2863311531 and rs2_val==46339<br>                                                                                                                                                                                                                  |[0x80003110]:mulhu t6, t5, t4<br> [0x80003114]:sw t6, 0xac(fp)<br>     |
| 398|[0x80006a28]<br>0x00000000<br> |- rs1_val==2863311531 and rs2_val==0<br>                                                                                                                                                                                                                      |[0x80003124]:mulhu t6, t5, t4<br> [0x80003128]:sw t6, 0xb0(fp)<br>     |
| 399|[0x80006a2c]<br>0x0000AAA9<br> |- rs1_val==2863311531 and rs2_val==65534<br>                                                                                                                                                                                                                  |[0x8000313c]:mulhu t6, t5, t4<br> [0x80003140]:sw t6, 0xb4(fp)<br>     |
| 400|[0x80006a30]<br>0x00000002<br> |- rs1_val==2863311531 and rs2_val==4<br>                                                                                                                                                                                                                      |[0x80003150]:mulhu t6, t5, t4<br> [0x80003154]:sw t6, 0xb8(fp)<br>     |
| 401|[0x80006a34]<br>0x38E38E39<br> |- rs1_val==2863311531 and rs2_val==1431655766<br>                                                                                                                                                                                                             |[0x80003168]:mulhu t6, t5, t4<br> [0x8000316c]:sw t6, 0xbc(fp)<br>     |
| 402|[0x80006a38]<br>0x71C71C72<br> |- rs1_val==2863311531 and rs2_val==2863311531<br>                                                                                                                                                                                                             |[0x80003180]:mulhu t6, t5, t4<br> [0x80003184]:sw t6, 0xc0(fp)<br>     |
| 403|[0x80006a3c]<br>0x00000004<br> |- rs1_val==2863311531 and rs2_val==6<br>                                                                                                                                                                                                                      |[0x80003194]:mulhu t6, t5, t4<br> [0x80003198]:sw t6, 0xc4(fp)<br>     |
| 404|[0x80006a40]<br>0x22222222<br> |- rs1_val==2863311531 and rs2_val==858993460<br>                                                                                                                                                                                                              |[0x800031ac]:mulhu t6, t5, t4<br> [0x800031b0]:sw t6, 0xc8(fp)<br>     |
| 405|[0x80006a44]<br>0x44444444<br> |- rs1_val==2863311531 and rs2_val==1717986919<br>                                                                                                                                                                                                             |[0x800031c4]:mulhu t6, t5, t4<br> [0x800031c8]:sw t6, 0xcc(fp)<br>     |
| 406|[0x80006a48]<br>0x000078AE<br> |- rs1_val==2863311531 and rs2_val==46341<br>                                                                                                                                                                                                                  |[0x800031dc]:mulhu t6, t5, t4<br> [0x800031e0]:sw t6, 0xd0(fp)<br>     |
| 407|[0x80006a4c]<br>0x00000000<br> |- rs1_val==2863311531 and rs2_val==1<br>                                                                                                                                                                                                                      |[0x800031f0]:mulhu t6, t5, t4<br> [0x800031f4]:sw t6, 0xd4(fp)<br>     |
| 408|[0x80006a50]<br>0x0000AAAA<br> |- rs1_val==2863311531 and rs2_val==65536<br>                                                                                                                                                                                                                  |[0x80003204]:mulhu t6, t5, t4<br> [0x80003208]:sw t6, 0xd8(fp)<br>     |
| 409|[0x80006a54]<br>0x00000000<br> |- rs1_val==6 and rs2_val==3<br>                                                                                                                                                                                                                               |[0x80003214]:mulhu t6, t5, t4<br> [0x80003218]:sw t6, 0xdc(fp)<br>     |
| 410|[0x80006a58]<br>0x00000001<br> |- rs1_val==6 and rs2_val==1431655765<br>                                                                                                                                                                                                                      |[0x80003228]:mulhu t6, t5, t4<br> [0x8000322c]:sw t6, 0xe0(fp)<br>     |
| 411|[0x80006a5c]<br>0x00000003<br> |- rs1_val==6 and rs2_val==2863311530<br>                                                                                                                                                                                                                      |[0x8000323c]:mulhu t6, t5, t4<br> [0x80003240]:sw t6, 0xe4(fp)<br>     |
| 412|[0x80006a60]<br>0x00000000<br> |- rs1_val==6 and rs2_val==5<br>                                                                                                                                                                                                                               |[0x8000324c]:mulhu t6, t5, t4<br> [0x80003250]:sw t6, 0xe8(fp)<br>     |
| 413|[0x80006a64]<br>0x00000001<br> |- rs1_val==6 and rs2_val==858993459<br>                                                                                                                                                                                                                       |[0x80003260]:mulhu t6, t5, t4<br> [0x80003264]:sw t6, 0xec(fp)<br>     |
| 414|[0x80006a68]<br>0x00000002<br> |- rs1_val==6 and rs2_val==1717986918<br>                                                                                                                                                                                                                      |[0x80003274]:mulhu t6, t5, t4<br> [0x80003278]:sw t6, 0xf0(fp)<br>     |
| 415|[0x80006a6c]<br>0x00000000<br> |- rs1_val==6 and rs2_val==46340<br>                                                                                                                                                                                                                           |[0x80003288]:mulhu t6, t5, t4<br> [0x8000328c]:sw t6, 0xf4(fp)<br>     |
| 416|[0x80006a70]<br>0x00000000<br> |- rs1_val==6 and rs2_val==65535<br>                                                                                                                                                                                                                           |[0x8000329c]:mulhu t6, t5, t4<br> [0x800032a0]:sw t6, 0xf8(fp)<br>     |
| 417|[0x80006a74]<br>0x00000000<br> |- rs1_val==6 and rs2_val==2<br>                                                                                                                                                                                                                               |[0x800032ac]:mulhu t6, t5, t4<br> [0x800032b0]:sw t6, 0xfc(fp)<br>     |
| 418|[0x80006a78]<br>0x00000001<br> |- rs1_val==6 and rs2_val==1431655764<br>                                                                                                                                                                                                                      |[0x800032c0]:mulhu t6, t5, t4<br> [0x800032c4]:sw t6, 0x100(fp)<br>    |
| 419|[0x80006a7c]<br>0x00000003<br> |- rs1_val==6 and rs2_val==2863311529<br>                                                                                                                                                                                                                      |[0x800032d4]:mulhu t6, t5, t4<br> [0x800032d8]:sw t6, 0x104(fp)<br>    |
| 420|[0x80006a80]<br>0x00000001<br> |- rs1_val==6 and rs2_val==858993458<br>                                                                                                                                                                                                                       |[0x800032e8]:mulhu t6, t5, t4<br> [0x800032ec]:sw t6, 0x108(fp)<br>    |
| 421|[0x80006a84]<br>0x00000002<br> |- rs1_val==6 and rs2_val==1717986917<br>                                                                                                                                                                                                                      |[0x800032fc]:mulhu t6, t5, t4<br> [0x80003300]:sw t6, 0x10c(fp)<br>    |
| 422|[0x80006a88]<br>0x00000000<br> |- rs1_val==6 and rs2_val==46339<br>                                                                                                                                                                                                                           |[0x80003310]:mulhu t6, t5, t4<br> [0x80003314]:sw t6, 0x110(fp)<br>    |
| 423|[0x80006a8c]<br>0x00000000<br> |- rs1_val==6 and rs2_val==0<br>                                                                                                                                                                                                                               |[0x80003320]:mulhu t6, t5, t4<br> [0x80003324]:sw t6, 0x114(fp)<br>    |
| 424|[0x80006a90]<br>0x00000000<br> |- rs1_val==6 and rs2_val==65534<br>                                                                                                                                                                                                                           |[0x80003334]:mulhu t6, t5, t4<br> [0x80003338]:sw t6, 0x118(fp)<br>    |
| 425|[0x80006a94]<br>0x00000000<br> |- rs1_val==6 and rs2_val==4<br>                                                                                                                                                                                                                               |[0x80003344]:mulhu t6, t5, t4<br> [0x80003348]:sw t6, 0x11c(fp)<br>    |
| 426|[0x80006a98]<br>0x00000002<br> |- rs1_val==6 and rs2_val==1431655766<br>                                                                                                                                                                                                                      |[0x80003358]:mulhu t6, t5, t4<br> [0x8000335c]:sw t6, 0x120(fp)<br>    |
| 427|[0x80006a9c]<br>0x00000004<br> |- rs1_val==6 and rs2_val==2863311531<br>                                                                                                                                                                                                                      |[0x8000336c]:mulhu t6, t5, t4<br> [0x80003370]:sw t6, 0x124(fp)<br>    |
| 428|[0x80006aa0]<br>0x00000000<br> |- rs1_val==6 and rs2_val==6<br>                                                                                                                                                                                                                               |[0x8000337c]:mulhu t6, t5, t4<br> [0x80003380]:sw t6, 0x128(fp)<br>    |
| 429|[0x80006aa4]<br>0x00000001<br> |- rs1_val==6 and rs2_val==858993460<br>                                                                                                                                                                                                                       |[0x80003390]:mulhu t6, t5, t4<br> [0x80003394]:sw t6, 0x12c(fp)<br>    |
| 430|[0x80006aa8]<br>0x00000002<br> |- rs1_val==6 and rs2_val==1717986919<br>                                                                                                                                                                                                                      |[0x800033a4]:mulhu t6, t5, t4<br> [0x800033a8]:sw t6, 0x130(fp)<br>    |
| 431|[0x80006aac]<br>0x00000000<br> |- rs1_val==6 and rs2_val==46341<br>                                                                                                                                                                                                                           |[0x800033b8]:mulhu t6, t5, t4<br> [0x800033bc]:sw t6, 0x134(fp)<br>    |
| 432|[0x80006ab0]<br>0x00000000<br> |- rs1_val==6 and rs2_val==1<br>                                                                                                                                                                                                                               |[0x800033c8]:mulhu t6, t5, t4<br> [0x800033cc]:sw t6, 0x138(fp)<br>    |
| 433|[0x80006ab4]<br>0x00000000<br> |- rs1_val==6 and rs2_val==65536<br>                                                                                                                                                                                                                           |[0x800033d8]:mulhu t6, t5, t4<br> [0x800033dc]:sw t6, 0x13c(fp)<br>    |
| 434|[0x80006ab8]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==3<br>                                                                                                                                                                                                                       |[0x800033ec]:mulhu t6, t5, t4<br> [0x800033f0]:sw t6, 0x140(fp)<br>    |
| 435|[0x80006abc]<br>0x11111111<br> |- rs1_val==858993460 and rs2_val==1431655765<br>                                                                                                                                                                                                              |[0x80003404]:mulhu t6, t5, t4<br> [0x80003408]:sw t6, 0x144(fp)<br>    |
| 436|[0x80006ac0]<br>0x22222222<br> |- rs1_val==858993460 and rs2_val==2863311530<br>                                                                                                                                                                                                              |[0x8000341c]:mulhu t6, t5, t4<br> [0x80003420]:sw t6, 0x148(fp)<br>    |
| 437|[0x80006ac4]<br>0x00000000<br> |- rs1_val==0 and rs2_val==2863311531<br>                                                                                                                                                                                                                      |[0x80003430]:mulhu t6, t5, t4<br> [0x80003434]:sw t6, 0x14c(fp)<br>    |
| 438|[0x80006ac8]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1431655766<br>                                                                                                                                                                                                                      |[0x80003444]:mulhu t6, t5, t4<br> [0x80003448]:sw t6, 0x150(fp)<br>    |
| 439|[0x80006acc]<br>0x00000000<br> |- rs1_val==0 and rs2_val==65534<br>                                                                                                                                                                                                                           |[0x80003458]:mulhu t6, t5, t4<br> [0x8000345c]:sw t6, 0x154(fp)<br>    |
| 440|[0x80006ad0]<br>0x00000001<br> |- rs1_val==858993460 and rs2_val==5<br>                                                                                                                                                                                                                       |[0x8000346c]:mulhu t6, t5, t4<br> [0x80003470]:sw t6, 0x158(fp)<br>    |
| 441|[0x80006ad4]<br>0x0A3D70A3<br> |- rs1_val==858993460 and rs2_val==858993459<br>                                                                                                                                                                                                               |[0x80003484]:mulhu t6, t5, t4<br> [0x80003488]:sw t6, 0x15c(fp)<br>    |
| 442|[0x80006ad8]<br>0x147AE147<br> |- rs1_val==858993460 and rs2_val==1717986918<br>                                                                                                                                                                                                              |[0x8000349c]:mulhu t6, t5, t4<br> [0x800034a0]:sw t6, 0x160(fp)<br>    |
| 443|[0x80006adc]<br>0x00002434<br> |- rs1_val==858993460 and rs2_val==46340<br>                                                                                                                                                                                                                   |[0x800034b4]:mulhu t6, t5, t4<br> [0x800034b8]:sw t6, 0x164(fp)<br>    |
| 444|[0x80006ae0]<br>0x00003333<br> |- rs1_val==858993460 and rs2_val==65535<br>                                                                                                                                                                                                                   |[0x800034cc]:mulhu t6, t5, t4<br> [0x800034d0]:sw t6, 0x168(fp)<br>    |
| 445|[0x80006ae4]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==2<br>                                                                                                                                                                                                                       |[0x800034e0]:mulhu t6, t5, t4<br> [0x800034e4]:sw t6, 0x16c(fp)<br>    |
| 446|[0x80006ae8]<br>0x11111111<br> |- rs1_val==858993460 and rs2_val==1431655764<br>                                                                                                                                                                                                              |[0x800034f8]:mulhu t6, t5, t4<br> [0x800034fc]:sw t6, 0x170(fp)<br>    |
| 447|[0x80006aec]<br>0x22222222<br> |- rs1_val==858993460 and rs2_val==2863311529<br>                                                                                                                                                                                                              |[0x80003510]:mulhu t6, t5, t4<br> [0x80003514]:sw t6, 0x174(fp)<br>    |
| 448|[0x80006af0]<br>0x0A3D70A3<br> |- rs1_val==858993460 and rs2_val==858993458<br>                                                                                                                                                                                                               |[0x80003528]:mulhu t6, t5, t4<br> [0x8000352c]:sw t6, 0x178(fp)<br>    |
| 449|[0x80006af4]<br>0x147AE147<br> |- rs1_val==858993460 and rs2_val==1717986917<br>                                                                                                                                                                                                              |[0x80003540]:mulhu t6, t5, t4<br> [0x80003544]:sw t6, 0x17c(fp)<br>    |
| 450|[0x80006af8]<br>0x00002433<br> |- rs1_val==858993460 and rs2_val==46339<br>                                                                                                                                                                                                                   |[0x80003558]:mulhu t6, t5, t4<br> [0x8000355c]:sw t6, 0x180(fp)<br>    |
| 451|[0x80006afc]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==0<br>                                                                                                                                                                                                                       |[0x8000356c]:mulhu t6, t5, t4<br> [0x80003570]:sw t6, 0x184(fp)<br>    |
| 452|[0x80006b00]<br>0x00003332<br> |- rs1_val==858993460 and rs2_val==65534<br>                                                                                                                                                                                                                   |[0x80003584]:mulhu t6, t5, t4<br> [0x80003588]:sw t6, 0x188(fp)<br>    |
| 453|[0x80006b04]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==4<br>                                                                                                                                                                                                                       |[0x80003598]:mulhu t6, t5, t4<br> [0x8000359c]:sw t6, 0x18c(fp)<br>    |
| 454|[0x80006b08]<br>0x11111111<br> |- rs1_val==858993460 and rs2_val==1431655766<br>                                                                                                                                                                                                              |[0x800035b0]:mulhu t6, t5, t4<br> [0x800035b4]:sw t6, 0x190(fp)<br>    |
| 455|[0x80006b0c]<br>0x22222222<br> |- rs1_val==858993460 and rs2_val==2863311531<br>                                                                                                                                                                                                              |[0x800035c8]:mulhu t6, t5, t4<br> [0x800035cc]:sw t6, 0x194(fp)<br>    |
| 456|[0x80006b10]<br>0x00000001<br> |- rs1_val==858993460 and rs2_val==6<br>                                                                                                                                                                                                                       |[0x800035dc]:mulhu t6, t5, t4<br> [0x800035e0]:sw t6, 0x198(fp)<br>    |
| 457|[0x80006b14]<br>0x0A3D70A4<br> |- rs1_val==858993460 and rs2_val==858993460<br>                                                                                                                                                                                                               |[0x800035f4]:mulhu t6, t5, t4<br> [0x800035f8]:sw t6, 0x19c(fp)<br>    |
| 458|[0x80006b18]<br>0x147AE148<br> |- rs1_val==858993460 and rs2_val==1717986919<br>                                                                                                                                                                                                              |[0x8000360c]:mulhu t6, t5, t4<br> [0x80003610]:sw t6, 0x1a0(fp)<br>    |
| 459|[0x80006b1c]<br>0x00002434<br> |- rs1_val==858993460 and rs2_val==46341<br>                                                                                                                                                                                                                   |[0x80003624]:mulhu t6, t5, t4<br> [0x80003628]:sw t6, 0x1a4(fp)<br>    |
| 460|[0x80006b20]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==1<br>                                                                                                                                                                                                                       |[0x80003638]:mulhu t6, t5, t4<br> [0x8000363c]:sw t6, 0x1a8(fp)<br>    |
| 461|[0x80006b24]<br>0x00003333<br> |- rs1_val==858993460 and rs2_val==65536<br>                                                                                                                                                                                                                   |[0x8000364c]:mulhu t6, t5, t4<br> [0x80003650]:sw t6, 0x1ac(fp)<br>    |
| 462|[0x80006b28]<br>0x00000001<br> |- rs1_val==1717986919 and rs2_val==3<br>                                                                                                                                                                                                                      |[0x80003660]:mulhu t6, t5, t4<br> [0x80003664]:sw t6, 0x1b0(fp)<br>    |
| 463|[0x80006b2c]<br>0x22222222<br> |- rs1_val==1717986919 and rs2_val==1431655765<br>                                                                                                                                                                                                             |[0x80003678]:mulhu t6, t5, t4<br> [0x8000367c]:sw t6, 0x1b4(fp)<br>    |
| 464|[0x80006b30]<br>0x44444444<br> |- rs1_val==1717986919 and rs2_val==2863311530<br>                                                                                                                                                                                                             |[0x80003690]:mulhu t6, t5, t4<br> [0x80003694]:sw t6, 0x1b8(fp)<br>    |
| 465|[0x80006b34]<br>0x00000002<br> |- rs1_val==1717986919 and rs2_val==5<br>                                                                                                                                                                                                                      |[0x800036a4]:mulhu t6, t5, t4<br> [0x800036a8]:sw t6, 0x1bc(fp)<br>    |
| 466|[0x80006b38]<br>0x147AE147<br> |- rs1_val==1717986919 and rs2_val==858993459<br>                                                                                                                                                                                                              |[0x800036bc]:mulhu t6, t5, t4<br> [0x800036c0]:sw t6, 0x1c0(fp)<br>    |
| 467|[0x80006b3c]<br>0x28F5C28F<br> |- rs1_val==1717986919 and rs2_val==1717986918<br>                                                                                                                                                                                                             |[0x800036d4]:mulhu t6, t5, t4<br> [0x800036d8]:sw t6, 0x1c4(fp)<br>    |
| 468|[0x80006b40]<br>0x00004868<br> |- rs1_val==1717986919 and rs2_val==46340<br>                                                                                                                                                                                                                  |[0x800036ec]:mulhu t6, t5, t4<br> [0x800036f0]:sw t6, 0x1c8(fp)<br>    |
| 469|[0x80006b44]<br>0x00006666<br> |- rs1_val==1717986919 and rs2_val==65535<br>                                                                                                                                                                                                                  |[0x80003704]:mulhu t6, t5, t4<br> [0x80003708]:sw t6, 0x1cc(fp)<br>    |
| 470|[0x80006b48]<br>0x00000000<br> |- rs1_val==1717986919 and rs2_val==2<br>                                                                                                                                                                                                                      |[0x80003718]:mulhu t6, t5, t4<br> [0x8000371c]:sw t6, 0x1d0(fp)<br>    |
| 471|[0x80006b4c]<br>0x22222221<br> |- rs1_val==1717986919 and rs2_val==1431655764<br>                                                                                                                                                                                                             |[0x80003730]:mulhu t6, t5, t4<br> [0x80003734]:sw t6, 0x1d4(fp)<br>    |
| 472|[0x80006b50]<br>0x44444443<br> |- rs1_val==1717986919 and rs2_val==2863311529<br>                                                                                                                                                                                                             |[0x80003748]:mulhu t6, t5, t4<br> [0x8000374c]:sw t6, 0x1d8(fp)<br>    |
| 473|[0x80006b54]<br>0x147AE147<br> |- rs1_val==1717986919 and rs2_val==858993458<br>                                                                                                                                                                                                              |[0x80003760]:mulhu t6, t5, t4<br> [0x80003764]:sw t6, 0x1dc(fp)<br>    |
| 474|[0x80006b58]<br>0x28F5C28F<br> |- rs1_val==1717986919 and rs2_val==1717986917<br>                                                                                                                                                                                                             |[0x80003778]:mulhu t6, t5, t4<br> [0x8000377c]:sw t6, 0x1e0(fp)<br>    |
| 475|[0x80006b5c]<br>0x00004867<br> |- rs1_val==1717986919 and rs2_val==46339<br>                                                                                                                                                                                                                  |[0x80003790]:mulhu t6, t5, t4<br> [0x80003794]:sw t6, 0x1e4(fp)<br>    |
| 476|[0x80006b60]<br>0x00000000<br> |- rs1_val==1717986919 and rs2_val==0<br>                                                                                                                                                                                                                      |[0x800037a4]:mulhu t6, t5, t4<br> [0x800037a8]:sw t6, 0x1e8(fp)<br>    |
| 477|[0x80006b64]<br>0x00006665<br> |- rs1_val==1717986919 and rs2_val==65534<br>                                                                                                                                                                                                                  |[0x800037bc]:mulhu t6, t5, t4<br> [0x800037c0]:sw t6, 0x1ec(fp)<br>    |
| 478|[0x80006b68]<br>0x00000001<br> |- rs1_val==1717986919 and rs2_val==4<br>                                                                                                                                                                                                                      |[0x800037d0]:mulhu t6, t5, t4<br> [0x800037d4]:sw t6, 0x1f0(fp)<br>    |
| 479|[0x80006b6c]<br>0x22222222<br> |- rs1_val==1717986919 and rs2_val==1431655766<br>                                                                                                                                                                                                             |[0x800037e8]:mulhu t6, t5, t4<br> [0x800037ec]:sw t6, 0x1f4(fp)<br>    |
| 480|[0x80006b70]<br>0x44444444<br> |- rs1_val==1717986919 and rs2_val==2863311531<br>                                                                                                                                                                                                             |[0x80003800]:mulhu t6, t5, t4<br> [0x80003804]:sw t6, 0x1f8(fp)<br>    |
| 481|[0x80006b74]<br>0x00000002<br> |- rs1_val==1717986919 and rs2_val==6<br>                                                                                                                                                                                                                      |[0x80003814]:mulhu t6, t5, t4<br> [0x80003818]:sw t6, 0x1fc(fp)<br>    |
| 482|[0x80006b78]<br>0x147AE148<br> |- rs1_val==1717986919 and rs2_val==858993460<br>                                                                                                                                                                                                              |[0x8000382c]:mulhu t6, t5, t4<br> [0x80003830]:sw t6, 0x200(fp)<br>    |
| 483|[0x80006b7c]<br>0x28F5C28F<br> |- rs1_val==1717986919 and rs2_val==1717986919<br>                                                                                                                                                                                                             |[0x80003844]:mulhu t6, t5, t4<br> [0x80003848]:sw t6, 0x204(fp)<br>    |
| 484|[0x80006b80]<br>0x00004868<br> |- rs1_val==1717986919 and rs2_val==46341<br>                                                                                                                                                                                                                  |[0x8000385c]:mulhu t6, t5, t4<br> [0x80003860]:sw t6, 0x208(fp)<br>    |
| 485|[0x80006b84]<br>0x00000000<br> |- rs1_val==1717986919 and rs2_val==1<br>                                                                                                                                                                                                                      |[0x80003870]:mulhu t6, t5, t4<br> [0x80003874]:sw t6, 0x20c(fp)<br>    |
| 486|[0x80006b88]<br>0x00006666<br> |- rs1_val==1717986919 and rs2_val==65536<br>                                                                                                                                                                                                                  |[0x80003884]:mulhu t6, t5, t4<br> [0x80003888]:sw t6, 0x210(fp)<br>    |
| 487|[0x80006b8c]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==3<br>                                                                                                                                                                                                                           |[0x80003898]:mulhu t6, t5, t4<br> [0x8000389c]:sw t6, 0x214(fp)<br>    |
| 488|[0x80006b90]<br>0x00003C56<br> |- rs1_val==46341 and rs2_val==1431655765<br>                                                                                                                                                                                                                  |[0x800038b0]:mulhu t6, t5, t4<br> [0x800038b4]:sw t6, 0x218(fp)<br>    |
| 489|[0x80006b94]<br>0x000078AD<br> |- rs1_val==46341 and rs2_val==2863311530<br>                                                                                                                                                                                                                  |[0x800038c8]:mulhu t6, t5, t4<br> [0x800038cc]:sw t6, 0x21c(fp)<br>    |
| 490|[0x80006b98]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==5<br>                                                                                                                                                                                                                           |[0x800038dc]:mulhu t6, t5, t4<br> [0x800038e0]:sw t6, 0x220(fp)<br>    |
| 491|[0x80006b9c]<br>0x00002434<br> |- rs1_val==46341 and rs2_val==858993459<br>                                                                                                                                                                                                                   |[0x800038f4]:mulhu t6, t5, t4<br> [0x800038f8]:sw t6, 0x224(fp)<br>    |
| 492|[0x80006ba0]<br>0x00004868<br> |- rs1_val==46341 and rs2_val==1717986918<br>                                                                                                                                                                                                                  |[0x8000390c]:mulhu t6, t5, t4<br> [0x80003910]:sw t6, 0x228(fp)<br>    |
| 493|[0x80006ba4]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==46340<br>                                                                                                                                                                                                                       |[0x80003924]:mulhu t6, t5, t4<br> [0x80003928]:sw t6, 0x22c(fp)<br>    |
| 494|[0x80006ba8]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==65535<br>                                                                                                                                                                                                                       |[0x8000393c]:mulhu t6, t5, t4<br> [0x80003940]:sw t6, 0x230(fp)<br>    |
| 495|[0x80006bac]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==2<br>                                                                                                                                                                                                                           |[0x80003950]:mulhu t6, t5, t4<br> [0x80003954]:sw t6, 0x234(fp)<br>    |
| 496|[0x80006bb0]<br>0x00003C56<br> |- rs1_val==46341 and rs2_val==1431655764<br>                                                                                                                                                                                                                  |[0x80003968]:mulhu t6, t5, t4<br> [0x8000396c]:sw t6, 0x238(fp)<br>    |
| 497|[0x80006bb4]<br>0x000078AD<br> |- rs1_val==46341 and rs2_val==2863311529<br>                                                                                                                                                                                                                  |[0x80003980]:mulhu t6, t5, t4<br> [0x80003984]:sw t6, 0x23c(fp)<br>    |
| 498|[0x80006bb8]<br>0x00002434<br> |- rs1_val==46341 and rs2_val==858993458<br>                                                                                                                                                                                                                   |[0x80003998]:mulhu t6, t5, t4<br> [0x8000399c]:sw t6, 0x240(fp)<br>    |
| 499|[0x80006bbc]<br>0x00004868<br> |- rs1_val==46341 and rs2_val==1717986917<br>                                                                                                                                                                                                                  |[0x800039b0]:mulhu t6, t5, t4<br> [0x800039b4]:sw t6, 0x244(fp)<br>    |
| 500|[0x80006bc0]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==46339<br>                                                                                                                                                                                                                       |[0x800039c8]:mulhu t6, t5, t4<br> [0x800039cc]:sw t6, 0x248(fp)<br>    |
| 501|[0x80006bc4]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==0<br>                                                                                                                                                                                                                           |[0x800039dc]:mulhu t6, t5, t4<br> [0x800039e0]:sw t6, 0x24c(fp)<br>    |
| 502|[0x80006bc8]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==65534<br>                                                                                                                                                                                                                       |[0x800039f4]:mulhu t6, t5, t4<br> [0x800039f8]:sw t6, 0x250(fp)<br>    |
| 503|[0x80006bcc]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==4<br>                                                                                                                                                                                                                           |[0x80003a08]:mulhu t6, t5, t4<br> [0x80003a0c]:sw t6, 0x254(fp)<br>    |
| 504|[0x80006bd0]<br>0x00003C57<br> |- rs1_val==46341 and rs2_val==1431655766<br>                                                                                                                                                                                                                  |[0x80003a20]:mulhu t6, t5, t4<br> [0x80003a24]:sw t6, 0x258(fp)<br>    |
| 505|[0x80006bd4]<br>0x000078AE<br> |- rs1_val==46341 and rs2_val==2863311531<br>                                                                                                                                                                                                                  |[0x80003a38]:mulhu t6, t5, t4<br> [0x80003a3c]:sw t6, 0x25c(fp)<br>    |
| 506|[0x80006bd8]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==6<br>                                                                                                                                                                                                                           |[0x80003a4c]:mulhu t6, t5, t4<br> [0x80003a50]:sw t6, 0x260(fp)<br>    |
| 507|[0x80006bdc]<br>0x00002434<br> |- rs1_val==46341 and rs2_val==858993460<br>                                                                                                                                                                                                                   |[0x80003a64]:mulhu t6, t5, t4<br> [0x80003a68]:sw t6, 0x264(fp)<br>    |
| 508|[0x80006be0]<br>0x00004868<br> |- rs1_val==46341 and rs2_val==1717986919<br>                                                                                                                                                                                                                  |[0x80003a7c]:mulhu t6, t5, t4<br> [0x80003a80]:sw t6, 0x268(fp)<br>    |
| 509|[0x80006be4]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==46341<br>                                                                                                                                                                                                                       |[0x80003a94]:mulhu t6, t5, t4<br> [0x80003a98]:sw t6, 0x26c(fp)<br>    |
| 510|[0x80006be8]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==1<br>                                                                                                                                                                                                                           |[0x80003aa8]:mulhu t6, t5, t4<br> [0x80003aac]:sw t6, 0x270(fp)<br>    |
| 511|[0x80006bec]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==65536<br>                                                                                                                                                                                                                       |[0x80003abc]:mulhu t6, t5, t4<br> [0x80003ac0]:sw t6, 0x274(fp)<br>    |
| 512|[0x80006bf0]<br>0x00000000<br> |- rs1_val==1 and rs2_val==3<br>                                                                                                                                                                                                                               |[0x80003acc]:mulhu t6, t5, t4<br> [0x80003ad0]:sw t6, 0x278(fp)<br>    |
| 513|[0x80006bf4]<br>0x00000000<br> |- rs1_val==1 and rs2_val==1431655765<br>                                                                                                                                                                                                                      |[0x80003ae0]:mulhu t6, t5, t4<br> [0x80003ae4]:sw t6, 0x27c(fp)<br>    |
| 514|[0x80006bf8]<br>0x00000000<br> |- rs1_val==1 and rs2_val==2863311530<br>                                                                                                                                                                                                                      |[0x80003af4]:mulhu t6, t5, t4<br> [0x80003af8]:sw t6, 0x280(fp)<br>    |
| 515|[0x80006bfc]<br>0x00000000<br> |- rs1_val==1 and rs2_val==5<br>                                                                                                                                                                                                                               |[0x80003b04]:mulhu t6, t5, t4<br> [0x80003b08]:sw t6, 0x284(fp)<br>    |
| 516|[0x80006c00]<br>0x00000000<br> |- rs1_val==1 and rs2_val==858993459<br>                                                                                                                                                                                                                       |[0x80003b18]:mulhu t6, t5, t4<br> [0x80003b1c]:sw t6, 0x288(fp)<br>    |
| 517|[0x80006c04]<br>0x00000000<br> |- rs1_val==1 and rs2_val==1717986918<br>                                                                                                                                                                                                                      |[0x80003b2c]:mulhu t6, t5, t4<br> [0x80003b30]:sw t6, 0x28c(fp)<br>    |
| 518|[0x80006c08]<br>0x00000000<br> |- rs1_val==1 and rs2_val==46340<br>                                                                                                                                                                                                                           |[0x80003b40]:mulhu t6, t5, t4<br> [0x80003b44]:sw t6, 0x290(fp)<br>    |
| 519|[0x80006c0c]<br>0x00000000<br> |- rs1_val==1 and rs2_val==65535<br>                                                                                                                                                                                                                           |[0x80003b54]:mulhu t6, t5, t4<br> [0x80003b58]:sw t6, 0x294(fp)<br>    |
| 520|[0x80006c10]<br>0x00000000<br> |- rs1_val==1 and rs2_val==2<br>                                                                                                                                                                                                                               |[0x80003b64]:mulhu t6, t5, t4<br> [0x80003b68]:sw t6, 0x298(fp)<br>    |
| 521|[0x80006c14]<br>0x00000000<br> |- rs1_val==1 and rs2_val==1431655764<br>                                                                                                                                                                                                                      |[0x80003b78]:mulhu t6, t5, t4<br> [0x80003b7c]:sw t6, 0x29c(fp)<br>    |
| 522|[0x80006c18]<br>0x00000000<br> |- rs1_val==1 and rs2_val==2863311529<br>                                                                                                                                                                                                                      |[0x80003b8c]:mulhu t6, t5, t4<br> [0x80003b90]:sw t6, 0x2a0(fp)<br>    |
| 523|[0x80006c1c]<br>0x00000000<br> |- rs1_val==1 and rs2_val==858993458<br>                                                                                                                                                                                                                       |[0x80003ba0]:mulhu t6, t5, t4<br> [0x80003ba4]:sw t6, 0x2a4(fp)<br>    |
| 524|[0x80006c20]<br>0x00000000<br> |- rs1_val==1 and rs2_val==1717986917<br>                                                                                                                                                                                                                      |[0x80003bb4]:mulhu t6, t5, t4<br> [0x80003bb8]:sw t6, 0x2a8(fp)<br>    |
| 525|[0x80006c24]<br>0x00000000<br> |- rs1_val==1 and rs2_val==46339<br>                                                                                                                                                                                                                           |[0x80003bc8]:mulhu t6, t5, t4<br> [0x80003bcc]:sw t6, 0x2ac(fp)<br>    |
| 526|[0x80006c28]<br>0x00000000<br> |- rs1_val==1 and rs2_val==0<br>                                                                                                                                                                                                                               |[0x80003bd8]:mulhu t6, t5, t4<br> [0x80003bdc]:sw t6, 0x2b0(fp)<br>    |
| 527|[0x80006c2c]<br>0x00000000<br> |- rs1_val==1 and rs2_val==65534<br>                                                                                                                                                                                                                           |[0x80003bec]:mulhu t6, t5, t4<br> [0x80003bf0]:sw t6, 0x2b4(fp)<br>    |
| 528|[0x80006c30]<br>0x00000000<br> |- rs1_val==1 and rs2_val==4<br>                                                                                                                                                                                                                               |[0x80003bfc]:mulhu t6, t5, t4<br> [0x80003c00]:sw t6, 0x2b8(fp)<br>    |
| 529|[0x80006c34]<br>0x00000000<br> |- rs1_val==1 and rs2_val==1431655766<br>                                                                                                                                                                                                                      |[0x80003c10]:mulhu t6, t5, t4<br> [0x80003c14]:sw t6, 0x2bc(fp)<br>    |
| 530|[0x80006c38]<br>0x00000000<br> |- rs1_val==1 and rs2_val==2863311531<br>                                                                                                                                                                                                                      |[0x80003c24]:mulhu t6, t5, t4<br> [0x80003c28]:sw t6, 0x2c0(fp)<br>    |
| 531|[0x80006c3c]<br>0x00000000<br> |- rs1_val==1 and rs2_val==6<br>                                                                                                                                                                                                                               |[0x80003c34]:mulhu t6, t5, t4<br> [0x80003c38]:sw t6, 0x2c4(fp)<br>    |
| 532|[0x80006c40]<br>0x00000000<br> |- rs1_val==1 and rs2_val==858993460<br>                                                                                                                                                                                                                       |[0x80003c48]:mulhu t6, t5, t4<br> [0x80003c4c]:sw t6, 0x2c8(fp)<br>    |
| 533|[0x80006c44]<br>0x00000000<br> |- rs1_val==1 and rs2_val==1717986919<br>                                                                                                                                                                                                                      |[0x80003c5c]:mulhu t6, t5, t4<br> [0x80003c60]:sw t6, 0x2cc(fp)<br>    |
| 534|[0x80006c48]<br>0x00000000<br> |- rs1_val==1 and rs2_val==46341<br>                                                                                                                                                                                                                           |[0x80003c70]:mulhu t6, t5, t4<br> [0x80003c74]:sw t6, 0x2d0(fp)<br>    |
| 535|[0x80006c50]<br>0x00000000<br> |- rs1_val==65536 and rs2_val==3<br>                                                                                                                                                                                                                           |[0x80003c90]:mulhu t6, t5, t4<br> [0x80003c94]:sw t6, 0x2d8(fp)<br>    |
| 536|[0x80006c58]<br>0x00005555<br> |- rs1_val==65536 and rs2_val==1431655765<br>                                                                                                                                                                                                                  |[0x80003cb4]:mulhu t6, t5, t4<br> [0x80003cb8]:sw t6, 0x2e0(fp)<br>    |
| 537|[0x80006c5c]<br>0x0000AAAA<br> |- rs1_val==65536 and rs2_val==2863311530<br>                                                                                                                                                                                                                  |[0x80003cc8]:mulhu t6, t5, t4<br> [0x80003ccc]:sw t6, 0x2e4(fp)<br>    |
| 538|[0x80006c60]<br>0x00000000<br> |- rs1_val==65536 and rs2_val==5<br>                                                                                                                                                                                                                           |[0x80003cd8]:mulhu t6, t5, t4<br> [0x80003cdc]:sw t6, 0x2e8(fp)<br>    |
| 539|[0x80006c64]<br>0x00003333<br> |- rs1_val==65536 and rs2_val==858993459<br>                                                                                                                                                                                                                   |[0x80003cec]:mulhu t6, t5, t4<br> [0x80003cf0]:sw t6, 0x2ec(fp)<br>    |
| 540|[0x80006c68]<br>0x00006666<br> |- rs1_val==65536 and rs2_val==1717986918<br>                                                                                                                                                                                                                  |[0x80003d00]:mulhu t6, t5, t4<br> [0x80003d04]:sw t6, 0x2f0(fp)<br>    |
| 541|[0x80006c6c]<br>0x00000000<br> |- rs1_val==65536 and rs2_val==46340<br>                                                                                                                                                                                                                       |[0x80003d14]:mulhu t6, t5, t4<br> [0x80003d18]:sw t6, 0x2f4(fp)<br>    |
| 542|[0x80006c70]<br>0x00000000<br> |- rs1_val==65536 and rs2_val==65535<br>                                                                                                                                                                                                                       |[0x80003d28]:mulhu t6, t5, t4<br> [0x80003d2c]:sw t6, 0x2f8(fp)<br>    |
| 543|[0x80006c74]<br>0x00005555<br> |- rs1_val==65536 and rs2_val==1431655764<br>                                                                                                                                                                                                                  |[0x80003d3c]:mulhu t6, t5, t4<br> [0x80003d40]:sw t6, 0x2fc(fp)<br>    |
| 544|[0x80006c78]<br>0x0000AAAA<br> |- rs1_val==65536 and rs2_val==2863311529<br>                                                                                                                                                                                                                  |[0x80003d50]:mulhu t6, t5, t4<br> [0x80003d54]:sw t6, 0x300(fp)<br>    |
| 545|[0x80006c7c]<br>0x00003333<br> |- rs1_val==65536 and rs2_val==858993458<br>                                                                                                                                                                                                                   |[0x80003d64]:mulhu t6, t5, t4<br> [0x80003d68]:sw t6, 0x304(fp)<br>    |
| 546|[0x80006c80]<br>0x00006666<br> |- rs1_val==65536 and rs2_val==1717986917<br>                                                                                                                                                                                                                  |[0x80003d78]:mulhu t6, t5, t4<br> [0x80003d7c]:sw t6, 0x308(fp)<br>    |
| 547|[0x80006c84]<br>0x00000000<br> |- rs1_val==65536 and rs2_val==46339<br>                                                                                                                                                                                                                       |[0x80003d8c]:mulhu t6, t5, t4<br> [0x80003d90]:sw t6, 0x30c(fp)<br>    |
| 548|[0x80006c8c]<br>0x00000000<br> |- rs1_val==65536 and rs2_val==65534<br>                                                                                                                                                                                                                       |[0x80003db0]:mulhu t6, t5, t4<br> [0x80003db4]:sw t6, 0x314(fp)<br>    |
| 549|[0x80006c90]<br>0x00005555<br> |- rs1_val==65536 and rs2_val==1431655766<br>                                                                                                                                                                                                                  |[0x80003dc4]:mulhu t6, t5, t4<br> [0x80003dc8]:sw t6, 0x318(fp)<br>    |
| 550|[0x80006c94]<br>0x0000AAAA<br> |- rs1_val==65536 and rs2_val==2863311531<br>                                                                                                                                                                                                                  |[0x80003dd8]:mulhu t6, t5, t4<br> [0x80003ddc]:sw t6, 0x31c(fp)<br>    |
| 551|[0x80006c98]<br>0x00000000<br> |- rs1_val==65536 and rs2_val==46341<br>                                                                                                                                                                                                                       |[0x80003dec]:mulhu t6, t5, t4<br> [0x80003df0]:sw t6, 0x320(fp)<br>    |
| 552|[0x80006c9c]<br>0x00000000<br> |- rs1_val==65536 and rs2_val==6<br>                                                                                                                                                                                                                           |[0x80003dfc]:mulhu t6, t5, t4<br> [0x80003e00]:sw t6, 0x324(fp)<br>    |
| 553|[0x80006ca0]<br>0x00000000<br> |- rs1_val==0 and rs2_val==46339<br>                                                                                                                                                                                                                           |[0x80003e10]:mulhu t6, t5, t4<br> [0x80003e14]:sw t6, 0x328(fp)<br>    |
| 554|[0x80006ca4]<br>0x00003333<br> |- rs1_val==65536 and rs2_val==858993460<br>                                                                                                                                                                                                                   |[0x80003e24]:mulhu t6, t5, t4<br> [0x80003e28]:sw t6, 0x32c(fp)<br>    |
| 555|[0x80006ca8]<br>0x00006666<br> |- rs1_val==65536 and rs2_val==1717986919<br>                                                                                                                                                                                                                  |[0x80003e38]:mulhu t6, t5, t4<br> [0x80003e3c]:sw t6, 0x330(fp)<br>    |
| 556|[0x80006cac]<br>0x00000000<br> |- rs1_val==0 and rs2_val==4<br>                                                                                                                                                                                                                               |[0x80003e48]:mulhu t6, t5, t4<br> [0x80003e4c]:sw t6, 0x334(fp)<br>    |
| 557|[0x80006cb0]<br>0x00000000<br> |- rs1_val==0 and rs2_val==6<br>                                                                                                                                                                                                                               |[0x80003e58]:mulhu t6, t5, t4<br> [0x80003e5c]:sw t6, 0x338(fp)<br>    |
| 558|[0x80006cb4]<br>0x00000000<br> |- rs1_val==0 and rs2_val==858993460<br>                                                                                                                                                                                                                       |[0x80003e6c]:mulhu t6, t5, t4<br> [0x80003e70]:sw t6, 0x33c(fp)<br>    |
| 559|[0x80006cb8]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1717986919<br>                                                                                                                                                                                                                      |[0x80003e80]:mulhu t6, t5, t4<br> [0x80003e84]:sw t6, 0x340(fp)<br>    |
| 560|[0x80006cbc]<br>0x00000000<br> |- rs1_val==0 and rs2_val==46341<br>                                                                                                                                                                                                                           |[0x80003e94]:mulhu t6, t5, t4<br> [0x80003e98]:sw t6, 0x344(fp)<br>    |
| 561|[0x80006cc0]<br>0x00000000<br> |- rs1_val==65536 and rs2_val==1<br>                                                                                                                                                                                                                           |[0x80003ea4]:mulhu t6, t5, t4<br> [0x80003ea8]:sw t6, 0x348(fp)<br>    |
| 562|[0x80006cc4]<br>0x0000FFFF<br> |- rs2_val == (2**(xlen)-1)<br>                                                                                                                                                                                                                                |[0x80003eb4]:mulhu t6, t5, t4<br> [0x80003eb8]:sw t6, 0x34c(fp)<br>    |
