
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature (completely or partially)
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update the signature completely
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000148', '0x80003d8c')]      |
| SIG_REGION                | [('0x80006110', '0x80006c68', '726 words')]      |
| COV_LABELS                | mulhu      |
| TEST_NAME                 | /home/user/Work/New_Repo/riscv-arch-test-PR/riscof-plugins/rv32/riscof_work/src/mulhu-01.S/ref.S    |
| Total Number of coverpoints| 644     |
| Total Coverpoints Hit     | 644      |
| Total Signature Updates   | 724      |
| STAT1                     | 562      |
| STAT2                     | 162      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003e0]:mulhu a2, a0, a1
      [0x800003e4]:sw a2, 0x40(t0)
 -- Signature Addresses:
      Address: 0x80006194 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003f0]:mulhu a2, a0, a1
      [0x800003f4]:sw a2, 0x44(t0)
 -- Signature Addresses:
      Address: 0x80006198 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000400]:mulhu a2, a0, a1
      [0x80000404]:sw a2, 0x48(t0)
 -- Signature Addresses:
      Address: 0x8000619c Data: 0x00800000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000414]:mulhu a2, a0, a1
      [0x80000418]:sw a2, 0x4c(t0)
 -- Signature Addresses:
      Address: 0x800061a0 Data: 0x3FFFFDFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000424]:mulhu a2, a0, a1
      [0x80000428]:sw a2, 0x50(t0)
 -- Signature Addresses:
      Address: 0x800061a4 Data: 0xFFFFFFFC
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000438]:mulhu a2, a0, a1
      [0x8000043c]:sw a2, 0x54(t0)
 -- Signature Addresses:
      Address: 0x800061a8 Data: 0xEFFFFFFC
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000044c]:mulhu a2, a0, a1
      [0x80000450]:sw a2, 0x58(t0)
 -- Signature Addresses:
      Address: 0x800061ac Data: 0xAAAAAAA7
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000045c]:mulhu a2, a0, a1
      [0x80000460]:sw a2, 0x5c(t0)
 -- Signature Addresses:
      Address: 0x800061b0 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000046c]:mulhu a2, a0, a1
      [0x80000470]:sw a2, 0x60(t0)
 -- Signature Addresses:
      Address: 0x800061b4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val == 1
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000480]:mulhu a2, a0, a1
      [0x80000484]:sw a2, 0x64(t0)
 -- Signature Addresses:
      Address: 0x800061b8 Data: 0x5555553F
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000494]:mulhu a2, a0, a1
      [0x80000498]:sw a2, 0x68(t0)
 -- Signature Addresses:
      Address: 0x800061bc Data: 0x0000B502
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004a4]:mulhu a2, a0, a1
      [0x800004a8]:sw a2, 0x6c(t0)
 -- Signature Addresses:
      Address: 0x800061c0 Data: 0x1FFFFFDF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004b4]:mulhu a2, a0, a1
      [0x800004b8]:sw a2, 0x70(t0)
 -- Signature Addresses:
      Address: 0x800061c4 Data: 0x00000010
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004c4]:mulhu a2, a0, a1
      [0x800004c8]:sw a2, 0x74(t0)
 -- Signature Addresses:
      Address: 0x800061c8 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004d8]:mulhu a2, a0, a1
      [0x800004dc]:sw a2, 0x78(t0)
 -- Signature Addresses:
      Address: 0x800061cc Data: 0x0003FFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004f0]:mulhu a2, a0, a1
      [0x800004f4]:sw a2, 0x7c(t0)
 -- Signature Addresses:
      Address: 0x800061d0 Data: 0xF7FFF07E
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000504]:mulhu a2, a0, a1
      [0x80000508]:sw a2, 0x80(t0)
 -- Signature Addresses:
      Address: 0x800061d4 Data: 0x1FFFFBFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000518]:mulhu a2, a0, a1
      [0x8000051c]:sw a2, 0x84(t0)
 -- Signature Addresses:
      Address: 0x800061d8 Data: 0x1FFFF7FF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000052c]:mulhu a2, a0, a1
      [0x80000530]:sw a2, 0x88(t0)
 -- Signature Addresses:
      Address: 0x800061dc Data: 0x0000003F
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000540]:mulhu a2, a0, a1
      [0x80000544]:sw a2, 0x8c(t0)
 -- Signature Addresses:
      Address: 0x800061e0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000554]:mulhu a2, a0, a1
      [0x80000558]:sw a2, 0x90(t0)
 -- Signature Addresses:
      Address: 0x800061e4 Data: 0x0001FFFB
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000568]:mulhu a2, a0, a1
      [0x8000056c]:sw a2, 0x94(t0)
 -- Signature Addresses:
      Address: 0x800061e8 Data: 0x0000000D
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000057c]:mulhu a2, a0, a1
      [0x80000580]:sw a2, 0x98(t0)
 -- Signature Addresses:
      Address: 0x800061ec Data: 0x000FFF7F
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000594]:mulhu a2, a0, a1
      [0x80000598]:sw a2, 0x9c(t0)
 -- Signature Addresses:
      Address: 0x800061f0 Data: 0xAA9FFFFD
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005ac]:mulhu a2, a0, a1
      [0x800005b0]:sw a2, 0xa0(t0)
 -- Signature Addresses:
      Address: 0x800061f4 Data: 0xFFDFE002
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005c0]:mulhu a2, a0, a1
      [0x800005c4]:sw a2, 0xa4(t0)
 -- Signature Addresses:
      Address: 0x800061f8 Data: 0xFFBFFFF6
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005d8]:mulhu a2, a0, a1
      [0x800005dc]:sw a2, 0xa8(t0)
 -- Signature Addresses:
      Address: 0x800061fc Data: 0xFF7803FE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005ec]:mulhu a2, a0, a1
      [0x800005f0]:sw a2, 0xac(t0)
 -- Signature Addresses:
      Address: 0x80006200 Data: 0x00007F7F
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000604]:mulhu a2, a0, a1
      [0x80000608]:sw a2, 0xb0(t0)
 -- Signature Addresses:
      Address: 0x80006204 Data: 0x000007EF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000618]:mulhu a2, a0, a1
      [0x8000061c]:sw a2, 0xb4(t0)
 -- Signature Addresses:
      Address: 0x80006208 Data: 0x0007DFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000630]:mulhu a2, a0, a1
      [0x80000634]:sw a2, 0xb8(t0)
 -- Signature Addresses:
      Address: 0x8000620c Data: 0xF7FFF07E
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000644]:mulhu a2, a0, a1
      [0x80000648]:sw a2, 0xbc(t0)
 -- Signature Addresses:
      Address: 0x80006210 Data: 0x00000004
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000658]:mulhu a2, a0, a1
      [0x8000065c]:sw a2, 0xc0(t0)
 -- Signature Addresses:
      Address: 0x80006214 Data: 0xDFFFFFF0
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000066c]:mulhu a2, a0, a1
      [0x80000670]:sw a2, 0xc4(t0)
 -- Signature Addresses:
      Address: 0x80006218 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000684]:mulhu a2, a0, a1
      [0x80000688]:sw a2, 0xc8(t0)
 -- Signature Addresses:
      Address: 0x8000621c Data: 0x7FFFDFFE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000698]:mulhu a2, a0, a1
      [0x8000069c]:sw a2, 0xcc(t0)
 -- Signature Addresses:
      Address: 0x80006220 Data: 0x00000005
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006ac]:mulhu a2, a0, a1
      [0x800006b0]:sw a2, 0xd0(t0)
 -- Signature Addresses:
      Address: 0x80006224 Data: 0x00000155
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006c0]:mulhu a2, a0, a1
      [0x800006c4]:sw a2, 0xd4(t0)
 -- Signature Addresses:
      Address: 0x80006228 Data: 0x0000001E
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006d4]:mulhu a2, a0, a1
      [0x800006d8]:sw a2, 0xd8(t0)
 -- Signature Addresses:
      Address: 0x8000622c Data: 0x000003FF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006e4]:mulhu a2, a0, a1
      [0x800006e8]:sw a2, 0xdc(t0)
 -- Signature Addresses:
      Address: 0x80006230 Data: 0x00000FFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006f8]:mulhu a2, a0, a1
      [0x800006fc]:sw a2, 0xe0(t0)
 -- Signature Addresses:
      Address: 0x80006234 Data: 0x00000AAA
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000070c]:mulhu a2, a0, a1
      [0x80000710]:sw a2, 0xe4(t0)
 -- Signature Addresses:
      Address: 0x80006238 Data: 0x0000FFFE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000071c]:mulhu a2, a0, a1
      [0x80000720]:sw a2, 0xe8(t0)
 -- Signature Addresses:
      Address: 0x8000623c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000072c]:mulhu a2, a0, a1
      [0x80000730]:sw a2, 0xec(t0)
 -- Signature Addresses:
      Address: 0x80006240 Data: 0x00000100
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000740]:mulhu a2, a0, a1
      [0x80000744]:sw a2, 0xf0(t0)
 -- Signature Addresses:
      Address: 0x80006244 Data: 0x00199999
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000750]:mulhu a2, a0, a1
      [0x80000754]:sw a2, 0xf4(t0)
 -- Signature Addresses:
      Address: 0x80006248 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000760]:mulhu a2, a0, a1
      [0x80000764]:sw a2, 0xf8(t0)
 -- Signature Addresses:
      Address: 0x8000624c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000774]:mulhu a2, a0, a1
      [0x80000778]:sw a2, 0xfc(t0)
 -- Signature Addresses:
      Address: 0x80006250 Data: 0x07BFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000784]:mulhu a2, a0, a1
      [0x80000788]:sw a2, 0x100(t0)
 -- Signature Addresses:
      Address: 0x80006254 Data: 0x00000005
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000794]:mulhu a2, a0, a1
      [0x80000798]:sw a2, 0x104(t0)
 -- Signature Addresses:
      Address: 0x80006258 Data: 0x01FFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007a4]:mulhu a2, a0, a1
      [0x800007a8]:sw a2, 0x108(t0)
 -- Signature Addresses:
      Address: 0x8000625c Data: 0x0000003F
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007b4]:mulhu a2, a0, a1
      [0x800007b8]:sw a2, 0x10c(t0)
 -- Signature Addresses:
      Address: 0x80006260 Data: 0x0000007F
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007c8]:mulhu a2, a0, a1
      [0x800007cc]:sw a2, 0x110(t0)
 -- Signature Addresses:
      Address: 0x80006264 Data: 0xFFFFF77E
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007dc]:mulhu a2, a0, a1
      [0x800007e0]:sw a2, 0x114(t0)
 -- Signature Addresses:
      Address: 0x80006268 Data: 0x0000B504
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007f0]:mulhu a2, a0, a1
      [0x800007f4]:sw a2, 0x118(t0)
 -- Signature Addresses:
      Address: 0x8000626c Data: 0x0000B503
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000808]:mulhu a2, a0, a1
      [0x8000080c]:sw a2, 0x11c(t0)
 -- Signature Addresses:
      Address: 0x80006270 Data: 0x0000FFFD
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000081c]:mulhu a2, a0, a1
      [0x80000820]:sw a2, 0x120(t0)
 -- Signature Addresses:
      Address: 0x80006274 Data: 0x0000000F
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000830]:mulhu a2, a0, a1
      [0x80000834]:sw a2, 0x124(t0)
 -- Signature Addresses:
      Address: 0x80006278 Data: 0x00000FFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000844]:mulhu a2, a0, a1
      [0x80000848]:sw a2, 0x128(t0)
 -- Signature Addresses:
      Address: 0x8000627c Data: 0x000001FF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000085c]:mulhu a2, a0, a1
      [0x80000860]:sw a2, 0x12c(t0)
 -- Signature Addresses:
      Address: 0x80006280 Data: 0x554AAAAA
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000870]:mulhu a2, a0, a1
      [0x80000874]:sw a2, 0x130(t0)
 -- Signature Addresses:
      Address: 0x80006284 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000884]:mulhu a2, a0, a1
      [0x80000888]:sw a2, 0x134(t0)
 -- Signature Addresses:
      Address: 0x80006288 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000898]:mulhu a2, a0, a1
      [0x8000089c]:sw a2, 0x138(t0)
 -- Signature Addresses:
      Address: 0x8000628c Data: 0x0000000D
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008b0]:mulhu a2, a0, a1
      [0x800008b4]:sw a2, 0x13c(t0)
 -- Signature Addresses:
      Address: 0x80006290 Data: 0x54AAAAA9
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008c4]:mulhu a2, a0, a1
      [0x800008c8]:sw a2, 0x140(t0)
 -- Signature Addresses:
      Address: 0x80006294 Data: 0xFBFFFE06
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008d8]:mulhu a2, a0, a1
      [0x800008dc]:sw a2, 0x144(t0)
 -- Signature Addresses:
      Address: 0x80006298 Data: 0x0000000D
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008ec]:mulhu a2, a0, a1
      [0x800008f0]:sw a2, 0x148(t0)
 -- Signature Addresses:
      Address: 0x8000629c Data: 0x7FFFFFBE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008fc]:mulhu a2, a0, a1
      [0x80000900]:sw a2, 0x14c(t0)
 -- Signature Addresses:
      Address: 0x800062a0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000910]:mulhu a2, a0, a1
      [0x80000914]:sw a2, 0x150(t0)
 -- Signature Addresses:
      Address: 0x800062a4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000924]:mulhu a2, a0, a1
      [0x80000928]:sw a2, 0x154(t0)
 -- Signature Addresses:
      Address: 0x800062a8 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000934]:mulhu a2, a0, a1
      [0x80000938]:sw a2, 0x158(t0)
 -- Signature Addresses:
      Address: 0x800062ac Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000948]:mulhu a2, a0, a1
      [0x8000094c]:sw a2, 0x15c(t0)
 -- Signature Addresses:
      Address: 0x800062b0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000095c]:mulhu a2, a0, a1
      [0x80000960]:sw a2, 0x160(t0)
 -- Signature Addresses:
      Address: 0x800062b4 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000970]:mulhu a2, a0, a1
      [0x80000974]:sw a2, 0x164(t0)
 -- Signature Addresses:
      Address: 0x800062b8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000980]:mulhu a2, a0, a1
      [0x80000984]:sw a2, 0x168(t0)
 -- Signature Addresses:
      Address: 0x800062bc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000994]:mulhu a2, a0, a1
      [0x80000998]:sw a2, 0x16c(t0)
 -- Signature Addresses:
      Address: 0x800062c0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009a4]:mulhu a2, a0, a1
      [0x800009a8]:sw a2, 0x170(t0)
 -- Signature Addresses:
      Address: 0x800062c4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009b8]:mulhu a2, a0, a1
      [0x800009bc]:sw a2, 0x174(t0)
 -- Signature Addresses:
      Address: 0x800062c8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009cc]:mulhu a2, a0, a1
      [0x800009d0]:sw a2, 0x178(t0)
 -- Signature Addresses:
      Address: 0x800062cc Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009dc]:mulhu a2, a0, a1
      [0x800009e0]:sw a2, 0x17c(t0)
 -- Signature Addresses:
      Address: 0x800062d0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009f0]:mulhu a2, a0, a1
      [0x800009f4]:sw a2, 0x180(t0)
 -- Signature Addresses:
      Address: 0x800062d4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a04]:mulhu a2, a0, a1
      [0x80000a08]:sw a2, 0x184(t0)
 -- Signature Addresses:
      Address: 0x800062d8 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a18]:mulhu a2, a0, a1
      [0x80000a1c]:sw a2, 0x188(t0)
 -- Signature Addresses:
      Address: 0x800062dc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a2c]:mulhu a2, a0, a1
      [0x80000a30]:sw a2, 0x18c(t0)
 -- Signature Addresses:
      Address: 0x800062e0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a40]:mulhu a2, a0, a1
      [0x80000a44]:sw a2, 0x190(t0)
 -- Signature Addresses:
      Address: 0x800062e4 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a54]:mulhu a2, a0, a1
      [0x80000a58]:sw a2, 0x194(t0)
 -- Signature Addresses:
      Address: 0x800062e8 Data: 0x00000002
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a64]:mulhu a2, a0, a1
      [0x80000a68]:sw a2, 0x198(t0)
 -- Signature Addresses:
      Address: 0x800062ec Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a78]:mulhu a2, a0, a1
      [0x80000a7c]:sw a2, 0x19c(t0)
 -- Signature Addresses:
      Address: 0x800062f0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a8c]:mulhu a2, a0, a1
      [0x80000a90]:sw a2, 0x1a0(t0)
 -- Signature Addresses:
      Address: 0x800062f4 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000aa0]:mulhu a2, a0, a1
      [0x80000aa4]:sw a2, 0x1a4(t0)
 -- Signature Addresses:
      Address: 0x800062f8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ac0]:mulhu a2, a0, a1
      [0x80000ac4]:sw a2, 0x1ac(t0)
 -- Signature Addresses:
      Address: 0x80006300 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ad4]:mulhu a2, a0, a1
      [0x80000ad8]:sw a2, 0x1b0(t0)
 -- Signature Addresses:
      Address: 0x80006304 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000aec]:mulhu a2, a0, a1
      [0x80000af0]:sw a2, 0x1b4(t0)
 -- Signature Addresses:
      Address: 0x80006308 Data: 0x1C71C71C
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b04]:mulhu a2, a0, a1
      [0x80000b08]:sw a2, 0x1b8(t0)
 -- Signature Addresses:
      Address: 0x8000630c Data: 0x38E38E38
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b18]:mulhu a2, a0, a1
      [0x80000b1c]:sw a2, 0x1bc(t0)
 -- Signature Addresses:
      Address: 0x80006310 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b30]:mulhu a2, a0, a1
      [0x80000b34]:sw a2, 0x1c0(t0)
 -- Signature Addresses:
      Address: 0x80006314 Data: 0x11111110
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b48]:mulhu a2, a0, a1
      [0x80000b4c]:sw a2, 0x1c4(t0)
 -- Signature Addresses:
      Address: 0x80006318 Data: 0x22222221
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b60]:mulhu a2, a0, a1
      [0x80000b64]:sw a2, 0x1c8(t0)
 -- Signature Addresses:
      Address: 0x8000631c Data: 0x00003C56
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b74]:mulhu a2, a0, a1
      [0x80000b78]:sw a2, 0x1cc(t0)
 -- Signature Addresses:
      Address: 0x80006320 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b8c]:mulhu a2, a0, a1
      [0x80000b90]:sw a2, 0x1d0(t0)
 -- Signature Addresses:
      Address: 0x80006324 Data: 0x00005554
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ba0]:mulhu a2, a0, a1
      [0x80000ba4]:sw a2, 0x1d4(t0)
 -- Signature Addresses:
      Address: 0x80006328 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bb8]:mulhu a2, a0, a1
      [0x80000bbc]:sw a2, 0x1d8(t0)
 -- Signature Addresses:
      Address: 0x8000632c Data: 0x1C71C71B
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bd0]:mulhu a2, a0, a1
      [0x80000bd4]:sw a2, 0x1dc(t0)
 -- Signature Addresses:
      Address: 0x80006330 Data: 0x38E38E38
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000be4]:mulhu a2, a0, a1
      [0x80000be8]:sw a2, 0x1e0(t0)
 -- Signature Addresses:
      Address: 0x80006334 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bfc]:mulhu a2, a0, a1
      [0x80000c00]:sw a2, 0x1e4(t0)
 -- Signature Addresses:
      Address: 0x80006338 Data: 0x11111110
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c14]:mulhu a2, a0, a1
      [0x80000c18]:sw a2, 0x1e8(t0)
 -- Signature Addresses:
      Address: 0x8000633c Data: 0x22222221
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c2c]:mulhu a2, a0, a1
      [0x80000c30]:sw a2, 0x1ec(t0)
 -- Signature Addresses:
      Address: 0x80006340 Data: 0x00003C56
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c44]:mulhu a2, a0, a1
      [0x80000c48]:sw a2, 0x1f0(t0)
 -- Signature Addresses:
      Address: 0x80006344 Data: 0x00005554
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c5c]:mulhu a2, a0, a1
      [0x80000c60]:sw a2, 0x1f4(t0)
 -- Signature Addresses:
      Address: 0x80006348 Data: 0x1C71C71C
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c74]:mulhu a2, a0, a1
      [0x80000c78]:sw a2, 0x1f8(t0)
 -- Signature Addresses:
      Address: 0x8000634c Data: 0x38E38E38
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c88]:mulhu a2, a0, a1
      [0x80000c8c]:sw a2, 0x1fc(t0)
 -- Signature Addresses:
      Address: 0x80006350 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ca0]:mulhu a2, a0, a1
      [0x80000ca4]:sw a2, 0x200(t0)
 -- Signature Addresses:
      Address: 0x80006354 Data: 0x11111111
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cb8]:mulhu a2, a0, a1
      [0x80000cbc]:sw a2, 0x204(t0)
 -- Signature Addresses:
      Address: 0x80006358 Data: 0x22222222
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cd0]:mulhu a2, a0, a1
      [0x80000cd4]:sw a2, 0x208(t0)
 -- Signature Addresses:
      Address: 0x8000635c Data: 0x00003C56
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ce4]:mulhu a2, a0, a1
      [0x80000ce8]:sw a2, 0x20c(t0)
 -- Signature Addresses:
      Address: 0x80006360 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0
      - rs2_val == 1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cf8]:mulhu a2, a0, a1
      [0x80000cfc]:sw a2, 0x210(t0)
 -- Signature Addresses:
      Address: 0x80006364 Data: 0x00005555
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d0c]:mulhu a2, a0, a1
      [0x80000d10]:sw a2, 0x214(t0)
 -- Signature Addresses:
      Address: 0x80006368 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d24]:mulhu a2, a0, a1
      [0x80000d28]:sw a2, 0x218(t0)
 -- Signature Addresses:
      Address: 0x8000636c Data: 0x38E38E38
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d3c]:mulhu a2, a0, a1
      [0x80000d40]:sw a2, 0x21c(t0)
 -- Signature Addresses:
      Address: 0x80006370 Data: 0x71C71C70
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d50]:mulhu a2, a0, a1
      [0x80000d54]:sw a2, 0x220(t0)
 -- Signature Addresses:
      Address: 0x80006374 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d68]:mulhu a2, a0, a1
      [0x80000d6c]:sw a2, 0x224(t0)
 -- Signature Addresses:
      Address: 0x80006378 Data: 0x22222221
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d80]:mulhu a2, a0, a1
      [0x80000d84]:sw a2, 0x228(t0)
 -- Signature Addresses:
      Address: 0x8000637c Data: 0x44444443
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d98]:mulhu a2, a0, a1
      [0x80000d9c]:sw a2, 0x22c(t0)
 -- Signature Addresses:
      Address: 0x80006380 Data: 0x000078AD
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000dac]:mulhu a2, a0, a1
      [0x80000db0]:sw a2, 0x230(t0)
 -- Signature Addresses:
      Address: 0x80006384 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000dc4]:mulhu a2, a0, a1
      [0x80000dc8]:sw a2, 0x234(t0)
 -- Signature Addresses:
      Address: 0x80006388 Data: 0x0000AAA9
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000dd8]:mulhu a2, a0, a1
      [0x80000ddc]:sw a2, 0x238(t0)
 -- Signature Addresses:
      Address: 0x8000638c Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000df0]:mulhu a2, a0, a1
      [0x80000df4]:sw a2, 0x23c(t0)
 -- Signature Addresses:
      Address: 0x80006390 Data: 0x38E38E37
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e08]:mulhu a2, a0, a1
      [0x80000e0c]:sw a2, 0x240(t0)
 -- Signature Addresses:
      Address: 0x80006394 Data: 0x71C71C70
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e1c]:mulhu a2, a0, a1
      [0x80000e20]:sw a2, 0x244(t0)
 -- Signature Addresses:
      Address: 0x80006398 Data: 0x00000002
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e34]:mulhu a2, a0, a1
      [0x80000e38]:sw a2, 0x248(t0)
 -- Signature Addresses:
      Address: 0x8000639c Data: 0x22222221
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e4c]:mulhu a2, a0, a1
      [0x80000e50]:sw a2, 0x24c(t0)
 -- Signature Addresses:
      Address: 0x800063a0 Data: 0x44444443
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e64]:mulhu a2, a0, a1
      [0x80000e68]:sw a2, 0x250(t0)
 -- Signature Addresses:
      Address: 0x800063a4 Data: 0x000078AC
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e7c]:mulhu a2, a0, a1
      [0x80000e80]:sw a2, 0x254(t0)
 -- Signature Addresses:
      Address: 0x800063a8 Data: 0x0000AAA9
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e94]:mulhu a2, a0, a1
      [0x80000e98]:sw a2, 0x258(t0)
 -- Signature Addresses:
      Address: 0x800063ac Data: 0x38E38E39
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000eac]:mulhu a2, a0, a1
      [0x80000eb0]:sw a2, 0x25c(t0)
 -- Signature Addresses:
      Address: 0x800063b0 Data: 0x71C71C71
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ec0]:mulhu a2, a0, a1
      [0x80000ec4]:sw a2, 0x260(t0)
 -- Signature Addresses:
      Address: 0x800063b4 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ed8]:mulhu a2, a0, a1
      [0x80000edc]:sw a2, 0x264(t0)
 -- Signature Addresses:
      Address: 0x800063b8 Data: 0x22222222
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ef0]:mulhu a2, a0, a1
      [0x80000ef4]:sw a2, 0x268(t0)
 -- Signature Addresses:
      Address: 0x800063bc Data: 0x44444444
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f08]:mulhu a2, a0, a1
      [0x80000f0c]:sw a2, 0x26c(t0)
 -- Signature Addresses:
      Address: 0x800063c0 Data: 0x000078AD
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f1c]:mulhu a2, a0, a1
      [0x80000f20]:sw a2, 0x270(t0)
 -- Signature Addresses:
      Address: 0x800063c4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0
      - rs2_val == 1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f30]:mulhu a2, a0, a1
      [0x80000f34]:sw a2, 0x274(t0)
 -- Signature Addresses:
      Address: 0x800063c8 Data: 0x0000AAAA
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f40]:mulhu a2, a0, a1
      [0x80000f44]:sw a2, 0x278(t0)
 -- Signature Addresses:
      Address: 0x800063cc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f54]:mulhu a2, a0, a1
      [0x80000f58]:sw a2, 0x27c(t0)
 -- Signature Addresses:
      Address: 0x800063d0 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f68]:mulhu a2, a0, a1
      [0x80000f6c]:sw a2, 0x280(t0)
 -- Signature Addresses:
      Address: 0x800063d4 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f78]:mulhu a2, a0, a1
      [0x80000f7c]:sw a2, 0x284(t0)
 -- Signature Addresses:
      Address: 0x800063d8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f8c]:mulhu a2, a0, a1
      [0x80000f90]:sw a2, 0x288(t0)
 -- Signature Addresses:
      Address: 0x800063dc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fa0]:mulhu a2, a0, a1
      [0x80000fa4]:sw a2, 0x28c(t0)
 -- Signature Addresses:
      Address: 0x800063e0 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fb4]:mulhu a2, a0, a1
      [0x80000fb8]:sw a2, 0x290(t0)
 -- Signature Addresses:
      Address: 0x800063e4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fc4]:mulhu a2, a0, a1
      [0x80000fc8]:sw a2, 0x294(t0)
 -- Signature Addresses:
      Address: 0x800063e8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fd8]:mulhu a2, a0, a1
      [0x80000fdc]:sw a2, 0x298(t0)
 -- Signature Addresses:
      Address: 0x800063ec Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fe8]:mulhu a2, a0, a1
      [0x80000fec]:sw a2, 0x29c(t0)
 -- Signature Addresses:
      Address: 0x800063f0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ffc]:mulhu a2, a0, a1
      [0x80001000]:sw a2, 0x2a0(t0)
 -- Signature Addresses:
      Address: 0x800063f4 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001010]:mulhu a2, a0, a1
      [0x80001014]:sw a2, 0x2a4(t0)
 -- Signature Addresses:
      Address: 0x800063f8 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001020]:mulhu a2, a0, a1
      [0x80001024]:sw a2, 0x2a8(t0)
 -- Signature Addresses:
      Address: 0x800063fc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001034]:mulhu a2, a0, a1
      [0x80001038]:sw a2, 0x2ac(t0)
 -- Signature Addresses:
      Address: 0x80006400 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001048]:mulhu a2, a0, a1
      [0x8000104c]:sw a2, 0x2b0(t0)
 -- Signature Addresses:
      Address: 0x80006404 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000105c]:mulhu a2, a0, a1
      [0x80001060]:sw a2, 0x2b4(t0)
 -- Signature Addresses:
      Address: 0x80006408 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001070]:mulhu a2, a0, a1
      [0x80001074]:sw a2, 0x2b8(t0)
 -- Signature Addresses:
      Address: 0x8000640c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001c18]:mulhu a2, a0, a1
      [0x80001c1c]:sw a2, 0x4e0(t0)
 -- Signature Addresses:
      Address: 0x80006634 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 0
      - rs1_val==2 and rs2_val==0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80003d4c]:mulhu a2, a0, a1
      [0x80003d50]:sw a2, 0x300(t0)
 -- Signature Addresses:
      Address: 0x80006c54 Data: 0x40000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80003d74]:mulhu a2, a0, a1
      [0x80003d78]:sw a2, 0x308(t0)
 -- Signature Addresses:
      Address: 0x80006c5c Data: 0x00000055
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80003d84]:mulhu a2, a0, a1
      [0x80003d88]:sw a2, 0x30c(t0)
 -- Signature Addresses:
      Address: 0x80006c60 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
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

|s.no|           signature           |                                                                                      coverpoints                                                                                       |                                 code                                  |
|---:|-------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80006114]<br>0x00000003<br> |- mnemonic : mulhu<br> - rs1 : x30<br> - rs2 : x23<br> - rd : x30<br> - rs1 == rd != rs2<br> - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs1_val > 0 and rs2_val > 0<br> |[0x80000188]:mulhu t5, t5, s7<br> [0x8000018c]:sw t5, 0x0(a7)<br>      |
|   2|[0x80006118]<br>0x40000000<br> |- rs1 : x20<br> - rs2 : x20<br> - rd : x15<br> - rs1 == rs2 != rd<br> - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0<br>                                                          |[0x80000198]:mulhu a5, s4, s4<br> [0x8000019c]:sw a5, 0x4(a7)<br>      |
|   3|[0x8000611c]<br>0x00000000<br> |- rs1 : x8<br> - rs2 : x13<br> - rd : x13<br> - rs2 == rd != rs1<br> - rs1_val == 0<br> - rs2_val == 0<br> - rs1_val==0 and rs2_val==0<br>                                              |[0x800001a8]:mulhu a3, fp, a3<br> [0x800001ac]:sw a3, 0x8(a7)<br>      |
|   4|[0x80006120]<br>0x0000007F<br> |- rs1 : x4<br> - rs2 : x6<br> - rd : x10<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == (2**(xlen)-1)<br>                                                               |[0x800001b8]:mulhu a0, tp, t1<br> [0x800001bc]:sw a0, 0xc(a7)<br>      |
|   5|[0x80006124]<br>0x28F5C28F<br> |- rs1 : x26<br> - rs2 : x26<br> - rd : x26<br> - rs1 == rs2 == rd<br>                                                                                                                   |[0x800001d0]:mulhu s10, s10, s10<br> [0x800001d4]:sw s10, 0x10(a7)<br> |
|   6|[0x80006128]<br>0x00000008<br> |- rs1 : x21<br> - rs2 : x4<br> - rd : x20<br> - rs1_val == (2**(xlen)-1)<br>                                                                                                            |[0x800001e0]:mulhu s4, s5, tp<br> [0x800001e4]:sw s4, 0x14(a7)<br>     |
|   7|[0x8000612c]<br>0x00000000<br> |- rs1 : x23<br> - rs2 : x11<br> - rd : x18<br> - rs1_val == 1<br>                                                                                                                       |[0x800001f0]:mulhu s2, s7, a1<br> [0x800001f4]:sw s2, 0x18(a7)<br>     |
|   8|[0x80006130]<br>0x00000000<br> |- rs1 : x16<br> - rs2 : x18<br> - rd : x27<br> - rs1_val==0 and rs2_val==2<br>                                                                                                          |[0x80000200]:mulhu s11, a6, s2<br> [0x80000204]:sw s11, 0x1c(a7)<br>   |
|   9|[0x80006134]<br>0x00000000<br> |- rs1 : x7<br> - rs2 : x5<br> - rd : x22<br>                                                                                                                                            |[0x80000210]:mulhu s6, t2, t0<br> [0x80000214]:sw s6, 0x20(a7)<br>     |
|  10|[0x80006138]<br>0x00000000<br> |- rs1 : x31<br> - rs2 : x1<br> - rd : x3<br>                                                                                                                                            |[0x80000220]:mulhu gp, t6, ra<br> [0x80000224]:sw gp, 0x24(a7)<br>     |
|  11|[0x8000613c]<br>0x00000000<br> |- rs1 : x15<br> - rs2 : x12<br> - rd : x2<br>                                                                                                                                           |[0x80000230]:mulhu sp, a5, a2<br> [0x80000234]:sw sp, 0x28(a7)<br>     |
|  12|[0x80006140]<br>0x00000000<br> |- rs1 : x1<br> - rs2 : x15<br> - rd : x5<br>                                                                                                                                            |[0x80000240]:mulhu t0, ra, a5<br> [0x80000244]:sw t0, 0x2c(a7)<br>     |
|  13|[0x80006144]<br>0x0000002A<br> |- rs1 : x28<br> - rs2 : x9<br> - rd : x8<br>                                                                                                                                            |[0x80000254]:mulhu fp, t3, s1<br> [0x80000258]:sw fp, 0x30(a7)<br>     |
|  14|[0x80006148]<br>0x00000033<br> |- rs1 : x5<br> - rs2 : x24<br> - rd : x14<br>                                                                                                                                           |[0x80000268]:mulhu a4, t0, s8<br> [0x8000026c]:sw a4, 0x34(a7)<br>     |
|  15|[0x8000614c]<br>0x00000000<br> |- rs1 : x12<br> - rs2 : x2<br> - rd : x0<br>                                                                                                                                            |[0x8000027c]:mulhu zero, a2, sp<br> [0x80000280]:sw zero, 0x38(a7)<br> |
|  16|[0x80006150]<br>0x00000000<br> |- rs1 : x9<br> - rs2 : x30<br> - rd : x19<br>                                                                                                                                           |[0x8000028c]:mulhu s3, s1, t5<br> [0x80000290]:sw s3, 0x3c(a7)<br>     |
|  17|[0x80006154]<br>0x00000000<br> |- rs1 : x6<br> - rs2 : x22<br> - rd : x17<br>                                                                                                                                           |[0x800002cc]:mulhu a7, t1, s6<br> [0x800002d0]:sw a7, 0x0(t0)<br>      |
|  18|[0x80006158]<br>0x00000000<br> |- rs1 : x17<br> - rs2 : x0<br> - rd : x16<br> - rs1_val==2 and rs2_val==0<br>                                                                                                           |[0x800002dc]:mulhu a6, a7, zero<br> [0x800002e0]:sw a6, 0x4(t0)<br>    |
|  19|[0x8000615c]<br>0x00001FFF<br> |- rs1 : x18<br> - rs2 : x16<br> - rd : x24<br>                                                                                                                                          |[0x800002ec]:mulhu s8, s2, a6<br> [0x800002f0]:sw s8, 0x8(t0)<br>      |
|  20|[0x80006160]<br>0x00000000<br> |- rs1 : x3<br> - rs2 : x21<br> - rd : x28<br>                                                                                                                                           |[0x80000300]:mulhu t3, gp, s5<br> [0x80000304]:sw t3, 0xc(t0)<br>      |
|  21|[0x80006164]<br>0x00000000<br> |- rs1 : x22<br> - rs2 : x7<br> - rd : x29<br>                                                                                                                                           |[0x80000314]:mulhu t4, s6, t2<br> [0x80000318]:sw t4, 0x10(t0)<br>     |
|  22|[0x80006168]<br>0x00000000<br> |- rs1 : x19<br> - rs2 : x17<br> - rd : x6<br> - rs1_val==4 and rs2_val==65536<br>                                                                                                       |[0x80000324]:mulhu t1, s3, a7<br> [0x80000328]:sw t1, 0x14(t0)<br>     |
|  23|[0x8000616c]<br>0x00017FFF<br> |- rs1 : x25<br> - rs2 : x10<br> - rd : x31<br>                                                                                                                                          |[0x80000338]:mulhu t6, s9, a0<br> [0x8000033c]:sw t6, 0x18(t0)<br>     |
|  24|[0x80006170]<br>0x00000000<br> |- rs1 : x13<br> - rs2 : x14<br> - rd : x1<br>                                                                                                                                           |[0x80000348]:mulhu ra, a3, a4<br> [0x8000034c]:sw ra, 0x1c(t0)<br>     |
|  25|[0x80006174]<br>0x00000000<br> |- rs1 : x0<br> - rs2 : x29<br> - rd : x4<br>                                                                                                                                            |[0x80000358]:mulhu tp, zero, t4<br> [0x8000035c]:sw tp, 0x20(t0)<br>   |
|  26|[0x80006178]<br>0x000FFF7F<br> |- rs1 : x10<br> - rs2 : x3<br> - rd : x12<br>                                                                                                                                           |[0x8000036c]:mulhu a2, a0, gp<br> [0x80000370]:sw a2, 0x24(t0)<br>     |
|  27|[0x8000617c]<br>0x001FFFFF<br> |- rs1 : x14<br> - rs2 : x28<br> - rd : x23<br>                                                                                                                                          |[0x8000037c]:mulhu s7, a4, t3<br> [0x80000380]:sw s7, 0x28(t0)<br>     |
|  28|[0x80006180]<br>0x00000000<br> |- rs1 : x2<br> - rs2 : x25<br> - rd : x9<br>                                                                                                                                            |[0x8000038c]:mulhu s1, sp, s9<br> [0x80000390]:sw s1, 0x2c(t0)<br>     |
|  29|[0x80006184]<br>0x00000000<br> |- rs1 : x27<br> - rs2 : x8<br> - rd : x11<br>                                                                                                                                           |[0x8000039c]:mulhu a1, s11, fp<br> [0x800003a0]:sw a1, 0x30(t0)<br>    |
|  30|[0x80006188]<br>0x00400000<br> |- rs1 : x11<br> - rs2 : x19<br> - rd : x25<br>                                                                                                                                          |[0x800003ac]:mulhu s9, a1, s3<br> [0x800003b0]:sw s9, 0x34(t0)<br>     |
|  31|[0x8000618c]<br>0x01FFFBFF<br> |- rs1 : x24<br> - rs2 : x31<br> - rd : x21<br>                                                                                                                                          |[0x800003c0]:mulhu s5, s8, t6<br> [0x800003c4]:sw s5, 0x38(t0)<br>     |
|  32|[0x80006190]<br>0x00000100<br> |- rs1 : x29<br> - rs2 : x27<br> - rd : x7<br>                                                                                                                                           |[0x800003d0]:mulhu t2, t4, s11<br> [0x800003d4]:sw t2, 0x3c(t0)<br>    |
|  33|[0x800062fc]<br>0x00000000<br> |- rs2_val == 1<br>                                                                                                                                                                      |[0x80000ab0]:mulhu a2, a0, a1<br> [0x80000ab4]:sw a2, 0x1a8(t0)<br>    |
|  34|[0x80006410]<br>0x00000001<br> |- rs1_val==5 and rs2_val==1431655766<br>                                                                                                                                                |[0x80001084]:mulhu a2, a0, a1<br> [0x80001088]:sw a2, 0x2bc(t0)<br>    |
|  35|[0x80006414]<br>0x00000003<br> |- rs1_val==5 and rs2_val==2863311531<br>                                                                                                                                                |[0x80001098]:mulhu a2, a0, a1<br> [0x8000109c]:sw a2, 0x2c0(t0)<br>    |
|  36|[0x80006418]<br>0x00000000<br> |- rs1_val==5 and rs2_val==6<br>                                                                                                                                                         |[0x800010a8]:mulhu a2, a0, a1<br> [0x800010ac]:sw a2, 0x2c4(t0)<br>    |
|  37|[0x8000641c]<br>0x00000001<br> |- rs1_val==5 and rs2_val==858993460<br>                                                                                                                                                 |[0x800010bc]:mulhu a2, a0, a1<br> [0x800010c0]:sw a2, 0x2c8(t0)<br>    |
|  38|[0x80006420]<br>0x00000002<br> |- rs1_val==5 and rs2_val==1717986919<br>                                                                                                                                                |[0x800010d0]:mulhu a2, a0, a1<br> [0x800010d4]:sw a2, 0x2cc(t0)<br>    |
|  39|[0x80006424]<br>0x00000000<br> |- rs1_val==5 and rs2_val==46341<br>                                                                                                                                                     |[0x800010e4]:mulhu a2, a0, a1<br> [0x800010e8]:sw a2, 0x2d0(t0)<br>    |
|  40|[0x80006428]<br>0x00000000<br> |- rs1_val==5 and rs2_val==1<br>                                                                                                                                                         |[0x800010f4]:mulhu a2, a0, a1<br> [0x800010f8]:sw a2, 0x2d4(t0)<br>    |
|  41|[0x8000642c]<br>0x00000000<br> |- rs1_val==5 and rs2_val==65536<br>                                                                                                                                                     |[0x80001104]:mulhu a2, a0, a1<br> [0x80001108]:sw a2, 0x2d8(t0)<br>    |
|  42|[0x80006430]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==3<br>                                                                                                                                                 |[0x80001118]:mulhu a2, a0, a1<br> [0x8000111c]:sw a2, 0x2dc(t0)<br>    |
|  43|[0x80006434]<br>0x11111110<br> |- rs1_val==858993459 and rs2_val==1431655765<br>                                                                                                                                        |[0x80001130]:mulhu a2, a0, a1<br> [0x80001134]:sw a2, 0x2e0(t0)<br>    |
|  44|[0x80006438]<br>0x22222221<br> |- rs1_val==858993459 and rs2_val==2863311530<br>                                                                                                                                        |[0x80001148]:mulhu a2, a0, a1<br> [0x8000114c]:sw a2, 0x2e4(t0)<br>    |
|  45|[0x8000643c]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==5<br>                                                                                                                                                 |[0x8000115c]:mulhu a2, a0, a1<br> [0x80001160]:sw a2, 0x2e8(t0)<br>    |
|  46|[0x80006440]<br>0x0A3D70A3<br> |- rs1_val==858993459 and rs2_val==858993459<br>                                                                                                                                         |[0x80001174]:mulhu a2, a0, a1<br> [0x80001178]:sw a2, 0x2ec(t0)<br>    |
|  47|[0x80006444]<br>0x147AE147<br> |- rs1_val==858993459 and rs2_val==1717986918<br>                                                                                                                                        |[0x8000118c]:mulhu a2, a0, a1<br> [0x80001190]:sw a2, 0x2f0(t0)<br>    |
|  48|[0x80006448]<br>0x00002433<br> |- rs1_val==858993459 and rs2_val==46340<br>                                                                                                                                             |[0x800011a4]:mulhu a2, a0, a1<br> [0x800011a8]:sw a2, 0x2f4(t0)<br>    |
|  49|[0x8000644c]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==0<br>                                                                                                                                                 |[0x800011b8]:mulhu a2, a0, a1<br> [0x800011bc]:sw a2, 0x2f8(t0)<br>    |
|  50|[0x80006450]<br>0x00003332<br> |- rs1_val==858993459 and rs2_val==65535<br>                                                                                                                                             |[0x800011d0]:mulhu a2, a0, a1<br> [0x800011d4]:sw a2, 0x2fc(t0)<br>    |
|  51|[0x80006454]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==2<br>                                                                                                                                                 |[0x800011e4]:mulhu a2, a0, a1<br> [0x800011e8]:sw a2, 0x300(t0)<br>    |
|  52|[0x80006458]<br>0x11111110<br> |- rs1_val==858993459 and rs2_val==1431655764<br>                                                                                                                                        |[0x800011fc]:mulhu a2, a0, a1<br> [0x80001200]:sw a2, 0x304(t0)<br>    |
|  53|[0x8000645c]<br>0x22222221<br> |- rs1_val==858993459 and rs2_val==2863311529<br>                                                                                                                                        |[0x80001214]:mulhu a2, a0, a1<br> [0x80001218]:sw a2, 0x308(t0)<br>    |
|  54|[0x80006460]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==4<br>                                                                                                                                                 |[0x80001228]:mulhu a2, a0, a1<br> [0x8000122c]:sw a2, 0x30c(t0)<br>    |
|  55|[0x80006464]<br>0x0A3D70A3<br> |- rs1_val==858993459 and rs2_val==858993458<br>                                                                                                                                         |[0x80001240]:mulhu a2, a0, a1<br> [0x80001244]:sw a2, 0x310(t0)<br>    |
|  56|[0x80006468]<br>0x147AE147<br> |- rs1_val==858993459 and rs2_val==1717986917<br>                                                                                                                                        |[0x80001258]:mulhu a2, a0, a1<br> [0x8000125c]:sw a2, 0x314(t0)<br>    |
|  57|[0x8000646c]<br>0x00002433<br> |- rs1_val==858993459 and rs2_val==46339<br>                                                                                                                                             |[0x80001270]:mulhu a2, a0, a1<br> [0x80001274]:sw a2, 0x318(t0)<br>    |
|  58|[0x80006470]<br>0x00003332<br> |- rs1_val==858993459 and rs2_val==65534<br>                                                                                                                                             |[0x80001288]:mulhu a2, a0, a1<br> [0x8000128c]:sw a2, 0x31c(t0)<br>    |
|  59|[0x80006474]<br>0x11111111<br> |- rs1_val==858993459 and rs2_val==1431655766<br>                                                                                                                                        |[0x800012a0]:mulhu a2, a0, a1<br> [0x800012a4]:sw a2, 0x320(t0)<br>    |
|  60|[0x80006478]<br>0x22222222<br> |- rs1_val==858993459 and rs2_val==2863311531<br>                                                                                                                                        |[0x800012b8]:mulhu a2, a0, a1<br> [0x800012bc]:sw a2, 0x324(t0)<br>    |
|  61|[0x8000647c]<br>0x00000001<br> |- rs1_val==858993459 and rs2_val==6<br>                                                                                                                                                 |[0x800012cc]:mulhu a2, a0, a1<br> [0x800012d0]:sw a2, 0x328(t0)<br>    |
|  62|[0x80006480]<br>0x0A3D70A3<br> |- rs1_val==858993459 and rs2_val==858993460<br>                                                                                                                                         |[0x800012e4]:mulhu a2, a0, a1<br> [0x800012e8]:sw a2, 0x32c(t0)<br>    |
|  63|[0x80006484]<br>0x147AE147<br> |- rs1_val==858993459 and rs2_val==1717986919<br>                                                                                                                                        |[0x800012fc]:mulhu a2, a0, a1<br> [0x80001300]:sw a2, 0x330(t0)<br>    |
|  64|[0x80006488]<br>0x00002434<br> |- rs1_val==858993459 and rs2_val==46341<br>                                                                                                                                             |[0x80001314]:mulhu a2, a0, a1<br> [0x80001318]:sw a2, 0x334(t0)<br>    |
|  65|[0x8000648c]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==1<br>                                                                                                                                                 |[0x80001328]:mulhu a2, a0, a1<br> [0x8000132c]:sw a2, 0x338(t0)<br>    |
|  66|[0x80006490]<br>0x00003333<br> |- rs1_val==858993459 and rs2_val==65536<br>                                                                                                                                             |[0x8000133c]:mulhu a2, a0, a1<br> [0x80001340]:sw a2, 0x33c(t0)<br>    |
|  67|[0x80006494]<br>0x00000001<br> |- rs1_val==1717986918 and rs2_val==3<br>                                                                                                                                                |[0x80001350]:mulhu a2, a0, a1<br> [0x80001354]:sw a2, 0x340(t0)<br>    |
|  68|[0x80006498]<br>0x22222221<br> |- rs1_val==1717986918 and rs2_val==1431655765<br>                                                                                                                                       |[0x80001368]:mulhu a2, a0, a1<br> [0x8000136c]:sw a2, 0x344(t0)<br>    |
|  69|[0x8000649c]<br>0x44444443<br> |- rs1_val==1717986918 and rs2_val==2863311530<br>                                                                                                                                       |[0x80001380]:mulhu a2, a0, a1<br> [0x80001384]:sw a2, 0x348(t0)<br>    |
|  70|[0x800064a0]<br>0x00000001<br> |- rs1_val==1717986918 and rs2_val==5<br>                                                                                                                                                |[0x80001394]:mulhu a2, a0, a1<br> [0x80001398]:sw a2, 0x34c(t0)<br>    |
|  71|[0x800064a4]<br>0x147AE147<br> |- rs1_val==1717986918 and rs2_val==858993459<br>                                                                                                                                        |[0x800013ac]:mulhu a2, a0, a1<br> [0x800013b0]:sw a2, 0x350(t0)<br>    |
|  72|[0x800064a8]<br>0x28F5C28F<br> |- rs1_val==1717986918 and rs2_val==1717986918<br>                                                                                                                                       |[0x800013c4]:mulhu a2, a0, a1<br> [0x800013c8]:sw a2, 0x354(t0)<br>    |
|  73|[0x800064ac]<br>0x00004867<br> |- rs1_val==1717986918 and rs2_val==46340<br>                                                                                                                                            |[0x800013dc]:mulhu a2, a0, a1<br> [0x800013e0]:sw a2, 0x358(t0)<br>    |
|  74|[0x800064b0]<br>0x00000000<br> |- rs1_val==1717986918 and rs2_val==0<br>                                                                                                                                                |[0x800013f0]:mulhu a2, a0, a1<br> [0x800013f4]:sw a2, 0x35c(t0)<br>    |
|  75|[0x800064b4]<br>0x00006665<br> |- rs1_val==1717986918 and rs2_val==65535<br>                                                                                                                                            |[0x80001408]:mulhu a2, a0, a1<br> [0x8000140c]:sw a2, 0x360(t0)<br>    |
|  76|[0x800064b8]<br>0x00000000<br> |- rs1_val==1717986918 and rs2_val==2<br>                                                                                                                                                |[0x8000141c]:mulhu a2, a0, a1<br> [0x80001420]:sw a2, 0x364(t0)<br>    |
|  77|[0x800064bc]<br>0x22222221<br> |- rs1_val==1717986918 and rs2_val==1431655764<br>                                                                                                                                       |[0x80001434]:mulhu a2, a0, a1<br> [0x80001438]:sw a2, 0x368(t0)<br>    |
|  78|[0x800064c0]<br>0x44444443<br> |- rs1_val==1717986918 and rs2_val==2863311529<br>                                                                                                                                       |[0x8000144c]:mulhu a2, a0, a1<br> [0x80001450]:sw a2, 0x36c(t0)<br>    |
|  79|[0x800064c4]<br>0x00000001<br> |- rs1_val==1717986918 and rs2_val==4<br>                                                                                                                                                |[0x80001460]:mulhu a2, a0, a1<br> [0x80001464]:sw a2, 0x370(t0)<br>    |
|  80|[0x800064c8]<br>0x147AE147<br> |- rs1_val==1717986918 and rs2_val==858993458<br>                                                                                                                                        |[0x80001478]:mulhu a2, a0, a1<br> [0x8000147c]:sw a2, 0x374(t0)<br>    |
|  81|[0x800064cc]<br>0x28F5C28E<br> |- rs1_val==1717986918 and rs2_val==1717986917<br>                                                                                                                                       |[0x80001490]:mulhu a2, a0, a1<br> [0x80001494]:sw a2, 0x378(t0)<br>    |
|  82|[0x800064d0]<br>0x00004867<br> |- rs1_val==1717986918 and rs2_val==46339<br>                                                                                                                                            |[0x800014a8]:mulhu a2, a0, a1<br> [0x800014ac]:sw a2, 0x37c(t0)<br>    |
|  83|[0x800064d4]<br>0x00006665<br> |- rs1_val==1717986918 and rs2_val==65534<br>                                                                                                                                            |[0x800014c0]:mulhu a2, a0, a1<br> [0x800014c4]:sw a2, 0x380(t0)<br>    |
|  84|[0x800064d8]<br>0x22222222<br> |- rs1_val==1717986918 and rs2_val==1431655766<br>                                                                                                                                       |[0x800014d8]:mulhu a2, a0, a1<br> [0x800014dc]:sw a2, 0x384(t0)<br>    |
|  85|[0x800064dc]<br>0x44444444<br> |- rs1_val==1717986918 and rs2_val==2863311531<br>                                                                                                                                       |[0x800014f0]:mulhu a2, a0, a1<br> [0x800014f4]:sw a2, 0x388(t0)<br>    |
|  86|[0x800064e0]<br>0x00000002<br> |- rs1_val==1717986918 and rs2_val==6<br>                                                                                                                                                |[0x80001504]:mulhu a2, a0, a1<br> [0x80001508]:sw a2, 0x38c(t0)<br>    |
|  87|[0x800064e4]<br>0x147AE147<br> |- rs1_val==1717986918 and rs2_val==858993460<br>                                                                                                                                        |[0x8000151c]:mulhu a2, a0, a1<br> [0x80001520]:sw a2, 0x390(t0)<br>    |
|  88|[0x800064e8]<br>0x28F5C28F<br> |- rs1_val==1717986918 and rs2_val==1717986919<br>                                                                                                                                       |[0x80001534]:mulhu a2, a0, a1<br> [0x80001538]:sw a2, 0x394(t0)<br>    |
|  89|[0x800064ec]<br>0x00004868<br> |- rs1_val==1717986918 and rs2_val==46341<br>                                                                                                                                            |[0x8000154c]:mulhu a2, a0, a1<br> [0x80001550]:sw a2, 0x398(t0)<br>    |
|  90|[0x800064f0]<br>0x00006666<br> |- rs1_val==1717986918 and rs2_val==65536<br>                                                                                                                                            |[0x80001560]:mulhu a2, a0, a1<br> [0x80001564]:sw a2, 0x39c(t0)<br>    |
|  91|[0x800064f4]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==3<br>                                                                                                                                                     |[0x80001574]:mulhu a2, a0, a1<br> [0x80001578]:sw a2, 0x3a0(t0)<br>    |
|  92|[0x800064f8]<br>0x00003C56<br> |- rs1_val==46340 and rs2_val==1431655765<br>                                                                                                                                            |[0x8000158c]:mulhu a2, a0, a1<br> [0x80001590]:sw a2, 0x3a4(t0)<br>    |
|  93|[0x800064fc]<br>0x000078AD<br> |- rs1_val==46340 and rs2_val==2863311530<br>                                                                                                                                            |[0x800015a4]:mulhu a2, a0, a1<br> [0x800015a8]:sw a2, 0x3a8(t0)<br>    |
|  94|[0x80006500]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==5<br>                                                                                                                                                     |[0x800015b8]:mulhu a2, a0, a1<br> [0x800015bc]:sw a2, 0x3ac(t0)<br>    |
|  95|[0x80006504]<br>0x00002433<br> |- rs1_val==46340 and rs2_val==858993459<br>                                                                                                                                             |[0x800015d0]:mulhu a2, a0, a1<br> [0x800015d4]:sw a2, 0x3b0(t0)<br>    |
|  96|[0x80006508]<br>0x00004867<br> |- rs1_val==46340 and rs2_val==1717986918<br>                                                                                                                                            |[0x800015e8]:mulhu a2, a0, a1<br> [0x800015ec]:sw a2, 0x3b4(t0)<br>    |
|  97|[0x8000650c]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==46340<br>                                                                                                                                                 |[0x80001600]:mulhu a2, a0, a1<br> [0x80001604]:sw a2, 0x3b8(t0)<br>    |
|  98|[0x80006510]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==0<br>                                                                                                                                                     |[0x80001614]:mulhu a2, a0, a1<br> [0x80001618]:sw a2, 0x3bc(t0)<br>    |
|  99|[0x80006514]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==65535<br>                                                                                                                                                 |[0x8000162c]:mulhu a2, a0, a1<br> [0x80001630]:sw a2, 0x3c0(t0)<br>    |
| 100|[0x80006518]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==2<br>                                                                                                                                                     |[0x80001640]:mulhu a2, a0, a1<br> [0x80001644]:sw a2, 0x3c4(t0)<br>    |
| 101|[0x8000651c]<br>0x00003C56<br> |- rs1_val==46340 and rs2_val==1431655764<br>                                                                                                                                            |[0x80001658]:mulhu a2, a0, a1<br> [0x8000165c]:sw a2, 0x3c8(t0)<br>    |
| 102|[0x80006520]<br>0x000078AD<br> |- rs1_val==46340 and rs2_val==2863311529<br>                                                                                                                                            |[0x80001670]:mulhu a2, a0, a1<br> [0x80001674]:sw a2, 0x3cc(t0)<br>    |
| 103|[0x80006524]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==4<br>                                                                                                                                                     |[0x80001684]:mulhu a2, a0, a1<br> [0x80001688]:sw a2, 0x3d0(t0)<br>    |
| 104|[0x80006528]<br>0x00002433<br> |- rs1_val==46340 and rs2_val==858993458<br>                                                                                                                                             |[0x8000169c]:mulhu a2, a0, a1<br> [0x800016a0]:sw a2, 0x3d4(t0)<br>    |
| 105|[0x8000652c]<br>0x00004867<br> |- rs1_val==46340 and rs2_val==1717986917<br>                                                                                                                                            |[0x800016b4]:mulhu a2, a0, a1<br> [0x800016b8]:sw a2, 0x3d8(t0)<br>    |
| 106|[0x80006530]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==46339<br>                                                                                                                                                 |[0x800016cc]:mulhu a2, a0, a1<br> [0x800016d0]:sw a2, 0x3dc(t0)<br>    |
| 107|[0x80006534]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==65534<br>                                                                                                                                                 |[0x800016e4]:mulhu a2, a0, a1<br> [0x800016e8]:sw a2, 0x3e0(t0)<br>    |
| 108|[0x80006538]<br>0x00003C56<br> |- rs1_val==46340 and rs2_val==1431655766<br>                                                                                                                                            |[0x800016fc]:mulhu a2, a0, a1<br> [0x80001700]:sw a2, 0x3e4(t0)<br>    |
| 109|[0x8000653c]<br>0x000078AD<br> |- rs1_val==46340 and rs2_val==2863311531<br>                                                                                                                                            |[0x80001714]:mulhu a2, a0, a1<br> [0x80001718]:sw a2, 0x3e8(t0)<br>    |
| 110|[0x80006540]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==6<br>                                                                                                                                                     |[0x80001728]:mulhu a2, a0, a1<br> [0x8000172c]:sw a2, 0x3ec(t0)<br>    |
| 111|[0x80006544]<br>0x00002434<br> |- rs1_val==46340 and rs2_val==858993460<br>                                                                                                                                             |[0x80001740]:mulhu a2, a0, a1<br> [0x80001744]:sw a2, 0x3f0(t0)<br>    |
| 112|[0x80006548]<br>0x00004868<br> |- rs1_val==46340 and rs2_val==1717986919<br>                                                                                                                                            |[0x80001758]:mulhu a2, a0, a1<br> [0x8000175c]:sw a2, 0x3f4(t0)<br>    |
| 113|[0x8000654c]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==46341<br>                                                                                                                                                 |[0x80001770]:mulhu a2, a0, a1<br> [0x80001774]:sw a2, 0x3f8(t0)<br>    |
| 114|[0x80006550]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==1<br>                                                                                                                                                     |[0x80001784]:mulhu a2, a0, a1<br> [0x80001788]:sw a2, 0x3fc(t0)<br>    |
| 115|[0x80006554]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==65536<br>                                                                                                                                                 |[0x80001798]:mulhu a2, a0, a1<br> [0x8000179c]:sw a2, 0x400(t0)<br>    |
| 116|[0x80006558]<br>0x00000000<br> |- rs1_val==0 and rs2_val==3<br>                                                                                                                                                         |[0x800017a8]:mulhu a2, a0, a1<br> [0x800017ac]:sw a2, 0x404(t0)<br>    |
| 117|[0x8000655c]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1431655765<br>                                                                                                                                                |[0x800017bc]:mulhu a2, a0, a1<br> [0x800017c0]:sw a2, 0x408(t0)<br>    |
| 118|[0x80006560]<br>0x00000000<br> |- rs1_val==0 and rs2_val==2863311530<br>                                                                                                                                                |[0x800017d0]:mulhu a2, a0, a1<br> [0x800017d4]:sw a2, 0x40c(t0)<br>    |
| 119|[0x80006564]<br>0x00000000<br> |- rs1_val==0 and rs2_val==5<br>                                                                                                                                                         |[0x800017e0]:mulhu a2, a0, a1<br> [0x800017e4]:sw a2, 0x410(t0)<br>    |
| 120|[0x80006568]<br>0x00000000<br> |- rs1_val==0 and rs2_val==858993459<br>                                                                                                                                                 |[0x800017f4]:mulhu a2, a0, a1<br> [0x800017f8]:sw a2, 0x414(t0)<br>    |
| 121|[0x8000656c]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1717986918<br>                                                                                                                                                |[0x80001808]:mulhu a2, a0, a1<br> [0x8000180c]:sw a2, 0x418(t0)<br>    |
| 122|[0x80006570]<br>0x00000000<br> |- rs1_val==0 and rs2_val==46340<br>                                                                                                                                                     |[0x8000181c]:mulhu a2, a0, a1<br> [0x80001820]:sw a2, 0x41c(t0)<br>    |
| 123|[0x80006574]<br>0x00000000<br> |- rs1_val==0 and rs2_val==65535<br>                                                                                                                                                     |[0x80001830]:mulhu a2, a0, a1<br> [0x80001834]:sw a2, 0x420(t0)<br>    |
| 124|[0x80006578]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1431655764<br>                                                                                                                                                |[0x80001844]:mulhu a2, a0, a1<br> [0x80001848]:sw a2, 0x424(t0)<br>    |
| 125|[0x8000657c]<br>0x00000000<br> |- rs1_val==0 and rs2_val==2863311529<br>                                                                                                                                                |[0x80001858]:mulhu a2, a0, a1<br> [0x8000185c]:sw a2, 0x428(t0)<br>    |
| 126|[0x80006580]<br>0x00000000<br> |- rs1_val==0 and rs2_val==4<br>                                                                                                                                                         |[0x80001868]:mulhu a2, a0, a1<br> [0x8000186c]:sw a2, 0x42c(t0)<br>    |
| 127|[0x80006584]<br>0x00000000<br> |- rs1_val==0 and rs2_val==858993458<br>                                                                                                                                                 |[0x8000187c]:mulhu a2, a0, a1<br> [0x80001880]:sw a2, 0x430(t0)<br>    |
| 128|[0x80006588]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1717986917<br>                                                                                                                                                |[0x80001890]:mulhu a2, a0, a1<br> [0x80001894]:sw a2, 0x434(t0)<br>    |
| 129|[0x8000658c]<br>0x00000000<br> |- rs1_val==0 and rs2_val==46339<br>                                                                                                                                                     |[0x800018a4]:mulhu a2, a0, a1<br> [0x800018a8]:sw a2, 0x438(t0)<br>    |
| 130|[0x80006590]<br>0x00000000<br> |- rs1_val==0 and rs2_val==65534<br>                                                                                                                                                     |[0x800018b8]:mulhu a2, a0, a1<br> [0x800018bc]:sw a2, 0x43c(t0)<br>    |
| 131|[0x80006594]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1431655766<br>                                                                                                                                                |[0x800018cc]:mulhu a2, a0, a1<br> [0x800018d0]:sw a2, 0x440(t0)<br>    |
| 132|[0x80006598]<br>0x00000000<br> |- rs1_val==0 and rs2_val==2863311531<br>                                                                                                                                                |[0x800018e0]:mulhu a2, a0, a1<br> [0x800018e4]:sw a2, 0x444(t0)<br>    |
| 133|[0x8000659c]<br>0x00000000<br> |- rs1_val==0 and rs2_val==6<br>                                                                                                                                                         |[0x800018f0]:mulhu a2, a0, a1<br> [0x800018f4]:sw a2, 0x448(t0)<br>    |
| 134|[0x800065a0]<br>0x00000000<br> |- rs1_val==0 and rs2_val==858993460<br>                                                                                                                                                 |[0x80001904]:mulhu a2, a0, a1<br> [0x80001908]:sw a2, 0x44c(t0)<br>    |
| 135|[0x800065a4]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1717986919<br>                                                                                                                                                |[0x80001918]:mulhu a2, a0, a1<br> [0x8000191c]:sw a2, 0x450(t0)<br>    |
| 136|[0x800065a8]<br>0x00000000<br> |- rs1_val==0 and rs2_val==46341<br>                                                                                                                                                     |[0x8000192c]:mulhu a2, a0, a1<br> [0x80001930]:sw a2, 0x454(t0)<br>    |
| 137|[0x800065ac]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1<br>                                                                                                                                                         |[0x8000193c]:mulhu a2, a0, a1<br> [0x80001940]:sw a2, 0x458(t0)<br>    |
| 138|[0x800065b0]<br>0x00000000<br> |- rs1_val==0 and rs2_val==65536<br>                                                                                                                                                     |[0x8000194c]:mulhu a2, a0, a1<br> [0x80001950]:sw a2, 0x45c(t0)<br>    |
| 139|[0x800065b4]<br>0x00000000<br> |- rs1_val==65535 and rs2_val==3<br>                                                                                                                                                     |[0x80001960]:mulhu a2, a0, a1<br> [0x80001964]:sw a2, 0x460(t0)<br>    |
| 140|[0x800065b8]<br>0x00005554<br> |- rs1_val==65535 and rs2_val==1431655765<br>                                                                                                                                            |[0x80001978]:mulhu a2, a0, a1<br> [0x8000197c]:sw a2, 0x464(t0)<br>    |
| 141|[0x800065bc]<br>0x0000AAA9<br> |- rs1_val==65535 and rs2_val==2863311530<br>                                                                                                                                            |[0x80001990]:mulhu a2, a0, a1<br> [0x80001994]:sw a2, 0x468(t0)<br>    |
| 142|[0x800065c0]<br>0x00000000<br> |- rs1_val==65535 and rs2_val==5<br>                                                                                                                                                     |[0x800019a4]:mulhu a2, a0, a1<br> [0x800019a8]:sw a2, 0x46c(t0)<br>    |
| 143|[0x800065c4]<br>0x00003332<br> |- rs1_val==65535 and rs2_val==858993459<br>                                                                                                                                             |[0x800019bc]:mulhu a2, a0, a1<br> [0x800019c0]:sw a2, 0x470(t0)<br>    |
| 144|[0x800065c8]<br>0x00006665<br> |- rs1_val==65535 and rs2_val==1717986918<br>                                                                                                                                            |[0x800019d4]:mulhu a2, a0, a1<br> [0x800019d8]:sw a2, 0x474(t0)<br>    |
| 145|[0x800065cc]<br>0x00000000<br> |- rs1_val==65535 and rs2_val==46340<br>                                                                                                                                                 |[0x800019ec]:mulhu a2, a0, a1<br> [0x800019f0]:sw a2, 0x478(t0)<br>    |
| 146|[0x800065d0]<br>0x00000000<br> |- rs1_val==65535 and rs2_val==0<br>                                                                                                                                                     |[0x80001a00]:mulhu a2, a0, a1<br> [0x80001a04]:sw a2, 0x47c(t0)<br>    |
| 147|[0x800065d4]<br>0x00000000<br> |- rs1_val==65535 and rs2_val==65535<br>                                                                                                                                                 |[0x80001a18]:mulhu a2, a0, a1<br> [0x80001a1c]:sw a2, 0x480(t0)<br>    |
| 148|[0x800065d8]<br>0x00000000<br> |- rs1_val==65535 and rs2_val==2<br>                                                                                                                                                     |[0x80001a2c]:mulhu a2, a0, a1<br> [0x80001a30]:sw a2, 0x484(t0)<br>    |
| 149|[0x800065dc]<br>0x00005554<br> |- rs1_val==65535 and rs2_val==1431655764<br>                                                                                                                                            |[0x80001a44]:mulhu a2, a0, a1<br> [0x80001a48]:sw a2, 0x488(t0)<br>    |
| 150|[0x800065e0]<br>0x0000AAA9<br> |- rs1_val==65535 and rs2_val==2863311529<br>                                                                                                                                            |[0x80001a5c]:mulhu a2, a0, a1<br> [0x80001a60]:sw a2, 0x48c(t0)<br>    |
| 151|[0x800065e4]<br>0x00000000<br> |- rs1_val==65535 and rs2_val==4<br>                                                                                                                                                     |[0x80001a70]:mulhu a2, a0, a1<br> [0x80001a74]:sw a2, 0x490(t0)<br>    |
| 152|[0x800065e8]<br>0x00003332<br> |- rs1_val==65535 and rs2_val==858993458<br>                                                                                                                                             |[0x80001a88]:mulhu a2, a0, a1<br> [0x80001a8c]:sw a2, 0x494(t0)<br>    |
| 153|[0x800065ec]<br>0x00006665<br> |- rs1_val==65535 and rs2_val==1717986917<br>                                                                                                                                            |[0x80001aa0]:mulhu a2, a0, a1<br> [0x80001aa4]:sw a2, 0x498(t0)<br>    |
| 154|[0x800065f0]<br>0x00000000<br> |- rs1_val==65535 and rs2_val==46339<br>                                                                                                                                                 |[0x80001ab8]:mulhu a2, a0, a1<br> [0x80001abc]:sw a2, 0x49c(t0)<br>    |
| 155|[0x800065f4]<br>0x00000000<br> |- rs1_val==65535 and rs2_val==65534<br>                                                                                                                                                 |[0x80001ad0]:mulhu a2, a0, a1<br> [0x80001ad4]:sw a2, 0x4a0(t0)<br>    |
| 156|[0x800065f8]<br>0x00005555<br> |- rs1_val==65535 and rs2_val==1431655766<br>                                                                                                                                            |[0x80001ae8]:mulhu a2, a0, a1<br> [0x80001aec]:sw a2, 0x4a4(t0)<br>    |
| 157|[0x800065fc]<br>0x0000AAAA<br> |- rs1_val==65535 and rs2_val==2863311531<br>                                                                                                                                            |[0x80001b00]:mulhu a2, a0, a1<br> [0x80001b04]:sw a2, 0x4a8(t0)<br>    |
| 158|[0x80006600]<br>0x00000000<br> |- rs1_val==65535 and rs2_val==6<br>                                                                                                                                                     |[0x80001b14]:mulhu a2, a0, a1<br> [0x80001b18]:sw a2, 0x4ac(t0)<br>    |
| 159|[0x80006604]<br>0x00003333<br> |- rs1_val==65535 and rs2_val==858993460<br>                                                                                                                                             |[0x80001b2c]:mulhu a2, a0, a1<br> [0x80001b30]:sw a2, 0x4b0(t0)<br>    |
| 160|[0x80006608]<br>0x00006666<br> |- rs1_val==65535 and rs2_val==1717986919<br>                                                                                                                                            |[0x80001b44]:mulhu a2, a0, a1<br> [0x80001b48]:sw a2, 0x4b4(t0)<br>    |
| 161|[0x8000660c]<br>0x00000000<br> |- rs1_val==65535 and rs2_val==46341<br>                                                                                                                                                 |[0x80001b5c]:mulhu a2, a0, a1<br> [0x80001b60]:sw a2, 0x4b8(t0)<br>    |
| 162|[0x80006610]<br>0x00000000<br> |- rs1_val==65535 and rs2_val==1<br>                                                                                                                                                     |[0x80001b70]:mulhu a2, a0, a1<br> [0x80001b74]:sw a2, 0x4bc(t0)<br>    |
| 163|[0x80006614]<br>0x00000000<br> |- rs1_val==65535 and rs2_val==65536<br>                                                                                                                                                 |[0x80001b84]:mulhu a2, a0, a1<br> [0x80001b88]:sw a2, 0x4c0(t0)<br>    |
| 164|[0x80006618]<br>0x00000000<br> |- rs1_val==2 and rs2_val==3<br>                                                                                                                                                         |[0x80001b94]:mulhu a2, a0, a1<br> [0x80001b98]:sw a2, 0x4c4(t0)<br>    |
| 165|[0x8000661c]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1431655765<br>                                                                                                                                                |[0x80001ba8]:mulhu a2, a0, a1<br> [0x80001bac]:sw a2, 0x4c8(t0)<br>    |
| 166|[0x80006620]<br>0x00000001<br> |- rs1_val==2 and rs2_val==2863311530<br>                                                                                                                                                |[0x80001bbc]:mulhu a2, a0, a1<br> [0x80001bc0]:sw a2, 0x4cc(t0)<br>    |
| 167|[0x80006624]<br>0x00000000<br> |- rs1_val==2 and rs2_val==5<br>                                                                                                                                                         |[0x80001bcc]:mulhu a2, a0, a1<br> [0x80001bd0]:sw a2, 0x4d0(t0)<br>    |
| 168|[0x80006628]<br>0x00000000<br> |- rs1_val==2 and rs2_val==858993459<br>                                                                                                                                                 |[0x80001be0]:mulhu a2, a0, a1<br> [0x80001be4]:sw a2, 0x4d4(t0)<br>    |
| 169|[0x8000662c]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1717986918<br>                                                                                                                                                |[0x80001bf4]:mulhu a2, a0, a1<br> [0x80001bf8]:sw a2, 0x4d8(t0)<br>    |
| 170|[0x80006630]<br>0x00000000<br> |- rs1_val==2 and rs2_val==46340<br>                                                                                                                                                     |[0x80001c08]:mulhu a2, a0, a1<br> [0x80001c0c]:sw a2, 0x4dc(t0)<br>    |
| 171|[0x80006638]<br>0x00000000<br> |- rs1_val==2 and rs2_val==65535<br>                                                                                                                                                     |[0x80001c2c]:mulhu a2, a0, a1<br> [0x80001c30]:sw a2, 0x4e4(t0)<br>    |
| 172|[0x8000663c]<br>0x00000000<br> |- rs1_val==2 and rs2_val==2<br>                                                                                                                                                         |[0x80001c3c]:mulhu a2, a0, a1<br> [0x80001c40]:sw a2, 0x4e8(t0)<br>    |
| 173|[0x80006640]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1431655764<br>                                                                                                                                                |[0x80001c50]:mulhu a2, a0, a1<br> [0x80001c54]:sw a2, 0x4ec(t0)<br>    |
| 174|[0x80006644]<br>0x00000001<br> |- rs1_val==2 and rs2_val==2863311529<br>                                                                                                                                                |[0x80001c64]:mulhu a2, a0, a1<br> [0x80001c68]:sw a2, 0x4f0(t0)<br>    |
| 175|[0x80006648]<br>0x00000000<br> |- rs1_val==2 and rs2_val==4<br>                                                                                                                                                         |[0x80001c74]:mulhu a2, a0, a1<br> [0x80001c78]:sw a2, 0x4f4(t0)<br>    |
| 176|[0x8000664c]<br>0x00000000<br> |- rs1_val==2 and rs2_val==858993458<br>                                                                                                                                                 |[0x80001c88]:mulhu a2, a0, a1<br> [0x80001c8c]:sw a2, 0x4f8(t0)<br>    |
| 177|[0x80006650]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1717986917<br>                                                                                                                                                |[0x80001c9c]:mulhu a2, a0, a1<br> [0x80001ca0]:sw a2, 0x4fc(t0)<br>    |
| 178|[0x80006654]<br>0x00000000<br> |- rs1_val==2 and rs2_val==46339<br>                                                                                                                                                     |[0x80001cb0]:mulhu a2, a0, a1<br> [0x80001cb4]:sw a2, 0x500(t0)<br>    |
| 179|[0x80006658]<br>0x00000000<br> |- rs1_val==2 and rs2_val==65534<br>                                                                                                                                                     |[0x80001cc4]:mulhu a2, a0, a1<br> [0x80001cc8]:sw a2, 0x504(t0)<br>    |
| 180|[0x8000665c]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1431655766<br>                                                                                                                                                |[0x80001cd8]:mulhu a2, a0, a1<br> [0x80001cdc]:sw a2, 0x508(t0)<br>    |
| 181|[0x80006660]<br>0x00000001<br> |- rs1_val==2 and rs2_val==2863311531<br>                                                                                                                                                |[0x80001cec]:mulhu a2, a0, a1<br> [0x80001cf0]:sw a2, 0x50c(t0)<br>    |
| 182|[0x80006664]<br>0x00000000<br> |- rs1_val==2 and rs2_val==6<br>                                                                                                                                                         |[0x80001cfc]:mulhu a2, a0, a1<br> [0x80001d00]:sw a2, 0x510(t0)<br>    |
| 183|[0x80006668]<br>0x00000000<br> |- rs1_val==2 and rs2_val==858993460<br>                                                                                                                                                 |[0x80001d10]:mulhu a2, a0, a1<br> [0x80001d14]:sw a2, 0x514(t0)<br>    |
| 184|[0x8000666c]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1717986919<br>                                                                                                                                                |[0x80001d24]:mulhu a2, a0, a1<br> [0x80001d28]:sw a2, 0x518(t0)<br>    |
| 185|[0x80006670]<br>0x00000000<br> |- rs1_val==2 and rs2_val==46341<br>                                                                                                                                                     |[0x80001d38]:mulhu a2, a0, a1<br> [0x80001d3c]:sw a2, 0x51c(t0)<br>    |
| 186|[0x80006674]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1<br>                                                                                                                                                         |[0x80001d48]:mulhu a2, a0, a1<br> [0x80001d4c]:sw a2, 0x520(t0)<br>    |
| 187|[0x80006678]<br>0x00000000<br> |- rs1_val==2 and rs2_val==65536<br>                                                                                                                                                     |[0x80001d58]:mulhu a2, a0, a1<br> [0x80001d5c]:sw a2, 0x524(t0)<br>    |
| 188|[0x8000667c]<br>0x00000000<br> |- rs1_val==1431655764 and rs2_val==3<br>                                                                                                                                                |[0x80001d6c]:mulhu a2, a0, a1<br> [0x80001d70]:sw a2, 0x528(t0)<br>    |
| 189|[0x80006680]<br>0x1C71C71B<br> |- rs1_val==1431655764 and rs2_val==1431655765<br>                                                                                                                                       |[0x80001d84]:mulhu a2, a0, a1<br> [0x80001d88]:sw a2, 0x52c(t0)<br>    |
| 190|[0x80006684]<br>0x38E38E37<br> |- rs1_val==1431655764 and rs2_val==2863311530<br>                                                                                                                                       |[0x80001d9c]:mulhu a2, a0, a1<br> [0x80001da0]:sw a2, 0x530(t0)<br>    |
| 191|[0x80006688]<br>0x00000001<br> |- rs1_val==1431655764 and rs2_val==5<br>                                                                                                                                                |[0x80001db0]:mulhu a2, a0, a1<br> [0x80001db4]:sw a2, 0x534(t0)<br>    |
| 192|[0x8000668c]<br>0x11111110<br> |- rs1_val==1431655764 and rs2_val==858993459<br>                                                                                                                                        |[0x80001dc8]:mulhu a2, a0, a1<br> [0x80001dcc]:sw a2, 0x538(t0)<br>    |
| 193|[0x80006690]<br>0x22222221<br> |- rs1_val==1431655764 and rs2_val==1717986918<br>                                                                                                                                       |[0x80001de0]:mulhu a2, a0, a1<br> [0x80001de4]:sw a2, 0x53c(t0)<br>    |
| 194|[0x80006694]<br>0x00003C56<br> |- rs1_val==1431655764 and rs2_val==46340<br>                                                                                                                                            |[0x80001df8]:mulhu a2, a0, a1<br> [0x80001dfc]:sw a2, 0x540(t0)<br>    |
| 195|[0x80006698]<br>0x00000000<br> |- rs1_val==1431655764 and rs2_val==0<br>                                                                                                                                                |[0x80001e0c]:mulhu a2, a0, a1<br> [0x80001e10]:sw a2, 0x544(t0)<br>    |
| 196|[0x8000669c]<br>0x00005554<br> |- rs1_val==1431655764 and rs2_val==65535<br>                                                                                                                                            |[0x80001e24]:mulhu a2, a0, a1<br> [0x80001e28]:sw a2, 0x548(t0)<br>    |
| 197|[0x800066a0]<br>0x00000000<br> |- rs1_val==1431655764 and rs2_val==2<br>                                                                                                                                                |[0x80001e38]:mulhu a2, a0, a1<br> [0x80001e3c]:sw a2, 0x54c(t0)<br>    |
| 198|[0x800066a4]<br>0x1C71C71B<br> |- rs1_val==1431655764 and rs2_val==1431655764<br>                                                                                                                                       |[0x80001e50]:mulhu a2, a0, a1<br> [0x80001e54]:sw a2, 0x550(t0)<br>    |
| 199|[0x800066a8]<br>0x38E38E37<br> |- rs1_val==1431655764 and rs2_val==2863311529<br>                                                                                                                                       |[0x80001e68]:mulhu a2, a0, a1<br> [0x80001e6c]:sw a2, 0x554(t0)<br>    |
| 200|[0x800066ac]<br>0x00000001<br> |- rs1_val==1431655764 and rs2_val==4<br>                                                                                                                                                |[0x80001e7c]:mulhu a2, a0, a1<br> [0x80001e80]:sw a2, 0x558(t0)<br>    |
| 201|[0x800066b0]<br>0x11111110<br> |- rs1_val==1431655764 and rs2_val==858993458<br>                                                                                                                                        |[0x80001e94]:mulhu a2, a0, a1<br> [0x80001e98]:sw a2, 0x55c(t0)<br>    |
| 202|[0x800066b4]<br>0x22222221<br> |- rs1_val==1431655764 and rs2_val==1717986917<br>                                                                                                                                       |[0x80001eac]:mulhu a2, a0, a1<br> [0x80001eb0]:sw a2, 0x560(t0)<br>    |
| 203|[0x800066b8]<br>0x00003C56<br> |- rs1_val==1431655764 and rs2_val==46339<br>                                                                                                                                            |[0x80001ec4]:mulhu a2, a0, a1<br> [0x80001ec8]:sw a2, 0x564(t0)<br>    |
| 204|[0x800066bc]<br>0x00005554<br> |- rs1_val==1431655764 and rs2_val==65534<br>                                                                                                                                            |[0x80001edc]:mulhu a2, a0, a1<br> [0x80001ee0]:sw a2, 0x568(t0)<br>    |
| 205|[0x800066c0]<br>0x1C71C71C<br> |- rs1_val==1431655764 and rs2_val==1431655766<br>                                                                                                                                       |[0x80001ef4]:mulhu a2, a0, a1<br> [0x80001ef8]:sw a2, 0x56c(t0)<br>    |
| 206|[0x800066c4]<br>0x38E38E38<br> |- rs1_val==1431655764 and rs2_val==2863311531<br>                                                                                                                                       |[0x80001f0c]:mulhu a2, a0, a1<br> [0x80001f10]:sw a2, 0x570(t0)<br>    |
| 207|[0x800066c8]<br>0x00000001<br> |- rs1_val==1431655764 and rs2_val==6<br>                                                                                                                                                |[0x80001f20]:mulhu a2, a0, a1<br> [0x80001f24]:sw a2, 0x574(t0)<br>    |
| 208|[0x800066cc]<br>0x11111111<br> |- rs1_val==1431655764 and rs2_val==858993460<br>                                                                                                                                        |[0x80001f38]:mulhu a2, a0, a1<br> [0x80001f3c]:sw a2, 0x578(t0)<br>    |
| 209|[0x800066d0]<br>0x22222221<br> |- rs1_val==1431655764 and rs2_val==1717986919<br>                                                                                                                                       |[0x80001f50]:mulhu a2, a0, a1<br> [0x80001f54]:sw a2, 0x57c(t0)<br>    |
| 210|[0x800066d4]<br>0x00003C56<br> |- rs1_val==1431655764 and rs2_val==46341<br>                                                                                                                                            |[0x80001f68]:mulhu a2, a0, a1<br> [0x80001f6c]:sw a2, 0x580(t0)<br>    |
| 211|[0x800066d8]<br>0x00000000<br> |- rs1_val==1431655764 and rs2_val==1<br>                                                                                                                                                |[0x80001f7c]:mulhu a2, a0, a1<br> [0x80001f80]:sw a2, 0x584(t0)<br>    |
| 212|[0x800066dc]<br>0x00005555<br> |- rs1_val==1431655764 and rs2_val==65536<br>                                                                                                                                            |[0x80001f90]:mulhu a2, a0, a1<br> [0x80001f94]:sw a2, 0x588(t0)<br>    |
| 213|[0x800066e0]<br>0x00000001<br> |- rs1_val==2863311529 and rs2_val==3<br>                                                                                                                                                |[0x80001fa4]:mulhu a2, a0, a1<br> [0x80001fa8]:sw a2, 0x58c(t0)<br>    |
| 214|[0x800066e4]<br>0x38E38E38<br> |- rs1_val==2863311529 and rs2_val==1431655765<br>                                                                                                                                       |[0x80001fbc]:mulhu a2, a0, a1<br> [0x80001fc0]:sw a2, 0x590(t0)<br>    |
| 215|[0x800066e8]<br>0x71C71C70<br> |- rs1_val==2863311529 and rs2_val==2863311530<br>                                                                                                                                       |[0x80001fd4]:mulhu a2, a0, a1<br> [0x80001fd8]:sw a2, 0x594(t0)<br>    |
| 216|[0x800066ec]<br>0x00000003<br> |- rs1_val==2863311529 and rs2_val==5<br>                                                                                                                                                |[0x80001fe8]:mulhu a2, a0, a1<br> [0x80001fec]:sw a2, 0x598(t0)<br>    |
| 217|[0x800066f0]<br>0x22222221<br> |- rs1_val==2863311529 and rs2_val==858993459<br>                                                                                                                                        |[0x80002000]:mulhu a2, a0, a1<br> [0x80002004]:sw a2, 0x59c(t0)<br>    |
| 218|[0x800066f4]<br>0x44444443<br> |- rs1_val==2863311529 and rs2_val==1717986918<br>                                                                                                                                       |[0x80002018]:mulhu a2, a0, a1<br> [0x8000201c]:sw a2, 0x5a0(t0)<br>    |
| 219|[0x800066f8]<br>0x000078AD<br> |- rs1_val==2863311529 and rs2_val==46340<br>                                                                                                                                            |[0x80002030]:mulhu a2, a0, a1<br> [0x80002034]:sw a2, 0x5a4(t0)<br>    |
| 220|[0x800066fc]<br>0x00000000<br> |- rs1_val==2863311529 and rs2_val==0<br>                                                                                                                                                |[0x80002044]:mulhu a2, a0, a1<br> [0x80002048]:sw a2, 0x5a8(t0)<br>    |
| 221|[0x80006700]<br>0x0000AAA9<br> |- rs1_val==2863311529 and rs2_val==65535<br>                                                                                                                                            |[0x8000205c]:mulhu a2, a0, a1<br> [0x80002060]:sw a2, 0x5ac(t0)<br>    |
| 222|[0x80006704]<br>0x00000001<br> |- rs1_val==2863311529 and rs2_val==2<br>                                                                                                                                                |[0x80002070]:mulhu a2, a0, a1<br> [0x80002074]:sw a2, 0x5b0(t0)<br>    |
| 223|[0x80006708]<br>0x38E38E37<br> |- rs1_val==2863311529 and rs2_val==1431655764<br>                                                                                                                                       |[0x80002088]:mulhu a2, a0, a1<br> [0x8000208c]:sw a2, 0x5b4(t0)<br>    |
| 224|[0x8000670c]<br>0x71C71C6F<br> |- rs1_val==2863311529 and rs2_val==2863311529<br>                                                                                                                                       |[0x800020a0]:mulhu a2, a0, a1<br> [0x800020a4]:sw a2, 0x5b8(t0)<br>    |
| 225|[0x80006710]<br>0x00000002<br> |- rs1_val==2863311529 and rs2_val==4<br>                                                                                                                                                |[0x800020b4]:mulhu a2, a0, a1<br> [0x800020b8]:sw a2, 0x5bc(t0)<br>    |
| 226|[0x80006714]<br>0x22222221<br> |- rs1_val==2863311529 and rs2_val==858993458<br>                                                                                                                                        |[0x800020cc]:mulhu a2, a0, a1<br> [0x800020d0]:sw a2, 0x5c0(t0)<br>    |
| 227|[0x80006718]<br>0x44444442<br> |- rs1_val==2863311529 and rs2_val==1717986917<br>                                                                                                                                       |[0x800020e4]:mulhu a2, a0, a1<br> [0x800020e8]:sw a2, 0x5c4(t0)<br>    |
| 228|[0x8000671c]<br>0x000078AC<br> |- rs1_val==2863311529 and rs2_val==46339<br>                                                                                                                                            |[0x800020fc]:mulhu a2, a0, a1<br> [0x80002100]:sw a2, 0x5c8(t0)<br>    |
| 229|[0x80006720]<br>0x0000AAA9<br> |- rs1_val==2863311529 and rs2_val==65534<br>                                                                                                                                            |[0x80002114]:mulhu a2, a0, a1<br> [0x80002118]:sw a2, 0x5cc(t0)<br>    |
| 230|[0x80006724]<br>0x38E38E38<br> |- rs1_val==2863311529 and rs2_val==1431655766<br>                                                                                                                                       |[0x8000212c]:mulhu a2, a0, a1<br> [0x80002130]:sw a2, 0x5d0(t0)<br>    |
| 231|[0x80006728]<br>0x71C71C70<br> |- rs1_val==2863311529 and rs2_val==2863311531<br>                                                                                                                                       |[0x80002144]:mulhu a2, a0, a1<br> [0x80002148]:sw a2, 0x5d4(t0)<br>    |
| 232|[0x8000672c]<br>0x00000003<br> |- rs1_val==2863311529 and rs2_val==6<br>                                                                                                                                                |[0x80002158]:mulhu a2, a0, a1<br> [0x8000215c]:sw a2, 0x5d8(t0)<br>    |
| 233|[0x80006730]<br>0x22222222<br> |- rs1_val==2863311529 and rs2_val==858993460<br>                                                                                                                                        |[0x80002170]:mulhu a2, a0, a1<br> [0x80002174]:sw a2, 0x5dc(t0)<br>    |
| 234|[0x80006734]<br>0x44444443<br> |- rs1_val==2863311529 and rs2_val==1717986919<br>                                                                                                                                       |[0x80002188]:mulhu a2, a0, a1<br> [0x8000218c]:sw a2, 0x5e0(t0)<br>    |
| 235|[0x80006738]<br>0x000078AD<br> |- rs1_val==2863311529 and rs2_val==46341<br>                                                                                                                                            |[0x800021a0]:mulhu a2, a0, a1<br> [0x800021a4]:sw a2, 0x5e4(t0)<br>    |
| 236|[0x8000673c]<br>0x00000000<br> |- rs1_val==2863311529 and rs2_val==1<br>                                                                                                                                                |[0x800021b4]:mulhu a2, a0, a1<br> [0x800021b8]:sw a2, 0x5e8(t0)<br>    |
| 237|[0x80006740]<br>0x0000AAAA<br> |- rs1_val==2863311529 and rs2_val==65536<br>                                                                                                                                            |[0x800021c8]:mulhu a2, a0, a1<br> [0x800021cc]:sw a2, 0x5ec(t0)<br>    |
| 238|[0x80006744]<br>0x00000000<br> |- rs1_val==4 and rs2_val==3<br>                                                                                                                                                         |[0x800021d8]:mulhu a2, a0, a1<br> [0x800021dc]:sw a2, 0x5f0(t0)<br>    |
| 239|[0x80006748]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1431655765<br>                                                                                                                                                |[0x800021ec]:mulhu a2, a0, a1<br> [0x800021f0]:sw a2, 0x5f4(t0)<br>    |
| 240|[0x8000674c]<br>0x00000002<br> |- rs1_val==4 and rs2_val==2863311530<br>                                                                                                                                                |[0x80002200]:mulhu a2, a0, a1<br> [0x80002204]:sw a2, 0x5f8(t0)<br>    |
| 241|[0x80006750]<br>0x00000000<br> |- rs1_val==4 and rs2_val==5<br>                                                                                                                                                         |[0x80002210]:mulhu a2, a0, a1<br> [0x80002214]:sw a2, 0x5fc(t0)<br>    |
| 242|[0x80006754]<br>0x00000000<br> |- rs1_val==4 and rs2_val==858993459<br>                                                                                                                                                 |[0x80002224]:mulhu a2, a0, a1<br> [0x80002228]:sw a2, 0x600(t0)<br>    |
| 243|[0x80006758]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1717986918<br>                                                                                                                                                |[0x80002238]:mulhu a2, a0, a1<br> [0x8000223c]:sw a2, 0x604(t0)<br>    |
| 244|[0x8000675c]<br>0x00000000<br> |- rs1_val==4 and rs2_val==46340<br>                                                                                                                                                     |[0x8000224c]:mulhu a2, a0, a1<br> [0x80002250]:sw a2, 0x608(t0)<br>    |
| 245|[0x80006760]<br>0x00000000<br> |- rs1_val==4 and rs2_val==0<br>                                                                                                                                                         |[0x8000225c]:mulhu a2, a0, a1<br> [0x80002260]:sw a2, 0x60c(t0)<br>    |
| 246|[0x80006764]<br>0x00000000<br> |- rs1_val==4 and rs2_val==65535<br>                                                                                                                                                     |[0x80002270]:mulhu a2, a0, a1<br> [0x80002274]:sw a2, 0x610(t0)<br>    |
| 247|[0x80006768]<br>0x00000000<br> |- rs1_val==4 and rs2_val==2<br>                                                                                                                                                         |[0x80002280]:mulhu a2, a0, a1<br> [0x80002284]:sw a2, 0x614(t0)<br>    |
| 248|[0x8000676c]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1431655764<br>                                                                                                                                                |[0x80002294]:mulhu a2, a0, a1<br> [0x80002298]:sw a2, 0x618(t0)<br>    |
| 249|[0x80006770]<br>0x00000002<br> |- rs1_val==4 and rs2_val==2863311529<br>                                                                                                                                                |[0x800022a8]:mulhu a2, a0, a1<br> [0x800022ac]:sw a2, 0x61c(t0)<br>    |
| 250|[0x80006774]<br>0x00000000<br> |- rs1_val==4 and rs2_val==4<br>                                                                                                                                                         |[0x800022b8]:mulhu a2, a0, a1<br> [0x800022bc]:sw a2, 0x620(t0)<br>    |
| 251|[0x80006778]<br>0x00000000<br> |- rs1_val==4 and rs2_val==858993458<br>                                                                                                                                                 |[0x800022cc]:mulhu a2, a0, a1<br> [0x800022d0]:sw a2, 0x624(t0)<br>    |
| 252|[0x8000677c]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1717986917<br>                                                                                                                                                |[0x800022e0]:mulhu a2, a0, a1<br> [0x800022e4]:sw a2, 0x628(t0)<br>    |
| 253|[0x80006780]<br>0x00000000<br> |- rs1_val==4 and rs2_val==46339<br>                                                                                                                                                     |[0x800022f4]:mulhu a2, a0, a1<br> [0x800022f8]:sw a2, 0x62c(t0)<br>    |
| 254|[0x80006784]<br>0x00000000<br> |- rs1_val==4 and rs2_val==65534<br>                                                                                                                                                     |[0x80002308]:mulhu a2, a0, a1<br> [0x8000230c]:sw a2, 0x630(t0)<br>    |
| 255|[0x80006788]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1431655766<br>                                                                                                                                                |[0x8000231c]:mulhu a2, a0, a1<br> [0x80002320]:sw a2, 0x634(t0)<br>    |
| 256|[0x8000678c]<br>0x00000002<br> |- rs1_val==4 and rs2_val==2863311531<br>                                                                                                                                                |[0x80002330]:mulhu a2, a0, a1<br> [0x80002334]:sw a2, 0x638(t0)<br>    |
| 257|[0x80006790]<br>0x00000000<br> |- rs1_val==4 and rs2_val==6<br>                                                                                                                                                         |[0x80002340]:mulhu a2, a0, a1<br> [0x80002344]:sw a2, 0x63c(t0)<br>    |
| 258|[0x80006794]<br>0x00000000<br> |- rs1_val==4 and rs2_val==858993460<br>                                                                                                                                                 |[0x80002354]:mulhu a2, a0, a1<br> [0x80002358]:sw a2, 0x640(t0)<br>    |
| 259|[0x80006798]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1717986919<br>                                                                                                                                                |[0x80002368]:mulhu a2, a0, a1<br> [0x8000236c]:sw a2, 0x644(t0)<br>    |
| 260|[0x8000679c]<br>0x00000000<br> |- rs1_val==4 and rs2_val==46341<br>                                                                                                                                                     |[0x8000237c]:mulhu a2, a0, a1<br> [0x80002380]:sw a2, 0x648(t0)<br>    |
| 261|[0x800067a0]<br>0x00000000<br> |- rs1_val==4 and rs2_val==1<br>                                                                                                                                                         |[0x8000238c]:mulhu a2, a0, a1<br> [0x80002390]:sw a2, 0x64c(t0)<br>    |
| 262|[0x800067a4]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==3<br>                                                                                                                                                 |[0x800023a0]:mulhu a2, a0, a1<br> [0x800023a4]:sw a2, 0x650(t0)<br>    |
| 263|[0x800067a8]<br>0x11111110<br> |- rs1_val==858993458 and rs2_val==1431655765<br>                                                                                                                                        |[0x800023b8]:mulhu a2, a0, a1<br> [0x800023bc]:sw a2, 0x654(t0)<br>    |
| 264|[0x800067ac]<br>0x22222221<br> |- rs1_val==858993458 and rs2_val==2863311530<br>                                                                                                                                        |[0x800023d0]:mulhu a2, a0, a1<br> [0x800023d4]:sw a2, 0x658(t0)<br>    |
| 265|[0x800067b0]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==5<br>                                                                                                                                                 |[0x800023e4]:mulhu a2, a0, a1<br> [0x800023e8]:sw a2, 0x65c(t0)<br>    |
| 266|[0x800067b4]<br>0x0A3D70A3<br> |- rs1_val==858993458 and rs2_val==858993459<br>                                                                                                                                         |[0x800023fc]:mulhu a2, a0, a1<br> [0x80002400]:sw a2, 0x660(t0)<br>    |
| 267|[0x800067b8]<br>0x147AE147<br> |- rs1_val==858993458 and rs2_val==1717986918<br>                                                                                                                                        |[0x80002414]:mulhu a2, a0, a1<br> [0x80002418]:sw a2, 0x664(t0)<br>    |
| 268|[0x800067bc]<br>0x00002433<br> |- rs1_val==858993458 and rs2_val==46340<br>                                                                                                                                             |[0x8000242c]:mulhu a2, a0, a1<br> [0x80002430]:sw a2, 0x668(t0)<br>    |
| 269|[0x800067c0]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==0<br>                                                                                                                                                 |[0x80002440]:mulhu a2, a0, a1<br> [0x80002444]:sw a2, 0x66c(t0)<br>    |
| 270|[0x800067c4]<br>0x00003332<br> |- rs1_val==858993458 and rs2_val==65535<br>                                                                                                                                             |[0x80002458]:mulhu a2, a0, a1<br> [0x8000245c]:sw a2, 0x670(t0)<br>    |
| 271|[0x800067c8]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==2<br>                                                                                                                                                 |[0x8000246c]:mulhu a2, a0, a1<br> [0x80002470]:sw a2, 0x674(t0)<br>    |
| 272|[0x800067cc]<br>0x11111110<br> |- rs1_val==858993458 and rs2_val==1431655764<br>                                                                                                                                        |[0x80002484]:mulhu a2, a0, a1<br> [0x80002488]:sw a2, 0x678(t0)<br>    |
| 273|[0x800067d0]<br>0x22222221<br> |- rs1_val==858993458 and rs2_val==2863311529<br>                                                                                                                                        |[0x8000249c]:mulhu a2, a0, a1<br> [0x800024a0]:sw a2, 0x67c(t0)<br>    |
| 274|[0x800067d4]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==4<br>                                                                                                                                                 |[0x800024b0]:mulhu a2, a0, a1<br> [0x800024b4]:sw a2, 0x680(t0)<br>    |
| 275|[0x800067d8]<br>0x0A3D70A3<br> |- rs1_val==858993458 and rs2_val==858993458<br>                                                                                                                                         |[0x800024c8]:mulhu a2, a0, a1<br> [0x800024cc]:sw a2, 0x684(t0)<br>    |
| 276|[0x800067dc]<br>0x147AE146<br> |- rs1_val==858993458 and rs2_val==1717986917<br>                                                                                                                                        |[0x800024e0]:mulhu a2, a0, a1<br> [0x800024e4]:sw a2, 0x688(t0)<br>    |
| 277|[0x800067e0]<br>0x00002433<br> |- rs1_val==858993458 and rs2_val==46339<br>                                                                                                                                             |[0x800024f8]:mulhu a2, a0, a1<br> [0x800024fc]:sw a2, 0x68c(t0)<br>    |
| 278|[0x800067e4]<br>0x00003332<br> |- rs1_val==858993458 and rs2_val==65534<br>                                                                                                                                             |[0x80002510]:mulhu a2, a0, a1<br> [0x80002514]:sw a2, 0x690(t0)<br>    |
| 279|[0x800067e8]<br>0x11111110<br> |- rs1_val==858993458 and rs2_val==1431655766<br>                                                                                                                                        |[0x80002528]:mulhu a2, a0, a1<br> [0x8000252c]:sw a2, 0x694(t0)<br>    |
| 280|[0x800067ec]<br>0x22222221<br> |- rs1_val==858993458 and rs2_val==2863311531<br>                                                                                                                                        |[0x80002540]:mulhu a2, a0, a1<br> [0x80002544]:sw a2, 0x698(t0)<br>    |
| 281|[0x800067f0]<br>0x00000001<br> |- rs1_val==858993458 and rs2_val==6<br>                                                                                                                                                 |[0x80002554]:mulhu a2, a0, a1<br> [0x80002558]:sw a2, 0x69c(t0)<br>    |
| 282|[0x800067f4]<br>0x0A3D70A3<br> |- rs1_val==858993458 and rs2_val==858993460<br>                                                                                                                                         |[0x8000256c]:mulhu a2, a0, a1<br> [0x80002570]:sw a2, 0x6a0(t0)<br>    |
| 283|[0x800067f8]<br>0x147AE147<br> |- rs1_val==858993458 and rs2_val==1717986919<br>                                                                                                                                        |[0x80002584]:mulhu a2, a0, a1<br> [0x80002588]:sw a2, 0x6a4(t0)<br>    |
| 284|[0x800067fc]<br>0x00002434<br> |- rs1_val==858993458 and rs2_val==46341<br>                                                                                                                                             |[0x8000259c]:mulhu a2, a0, a1<br> [0x800025a0]:sw a2, 0x6a8(t0)<br>    |
| 285|[0x80006800]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==1<br>                                                                                                                                                 |[0x800025b0]:mulhu a2, a0, a1<br> [0x800025b4]:sw a2, 0x6ac(t0)<br>    |
| 286|[0x80006804]<br>0x00003333<br> |- rs1_val==858993458 and rs2_val==65536<br>                                                                                                                                             |[0x800025c4]:mulhu a2, a0, a1<br> [0x800025c8]:sw a2, 0x6b0(t0)<br>    |
| 287|[0x80006808]<br>0x00000001<br> |- rs1_val==1717986917 and rs2_val==3<br>                                                                                                                                                |[0x800025d8]:mulhu a2, a0, a1<br> [0x800025dc]:sw a2, 0x6b4(t0)<br>    |
| 288|[0x8000680c]<br>0x22222221<br> |- rs1_val==1717986917 and rs2_val==1431655765<br>                                                                                                                                       |[0x800025f0]:mulhu a2, a0, a1<br> [0x800025f4]:sw a2, 0x6b8(t0)<br>    |
| 289|[0x80006810]<br>0x44444443<br> |- rs1_val==1717986917 and rs2_val==2863311530<br>                                                                                                                                       |[0x80002608]:mulhu a2, a0, a1<br> [0x8000260c]:sw a2, 0x6bc(t0)<br>    |
| 290|[0x80006814]<br>0x00000001<br> |- rs1_val==1717986917 and rs2_val==5<br>                                                                                                                                                |[0x8000261c]:mulhu a2, a0, a1<br> [0x80002620]:sw a2, 0x6c0(t0)<br>    |
| 291|[0x80006818]<br>0x147AE147<br> |- rs1_val==1717986917 and rs2_val==858993459<br>                                                                                                                                        |[0x80002634]:mulhu a2, a0, a1<br> [0x80002638]:sw a2, 0x6c4(t0)<br>    |
| 292|[0x8000681c]<br>0x28F5C28E<br> |- rs1_val==1717986917 and rs2_val==1717986918<br>                                                                                                                                       |[0x8000264c]:mulhu a2, a0, a1<br> [0x80002650]:sw a2, 0x6c8(t0)<br>    |
| 293|[0x80006820]<br>0x00004867<br> |- rs1_val==1717986917 and rs2_val==46340<br>                                                                                                                                            |[0x80002664]:mulhu a2, a0, a1<br> [0x80002668]:sw a2, 0x6cc(t0)<br>    |
| 294|[0x80006824]<br>0x00000000<br> |- rs1_val==1717986917 and rs2_val==0<br>                                                                                                                                                |[0x80002678]:mulhu a2, a0, a1<br> [0x8000267c]:sw a2, 0x6d0(t0)<br>    |
| 295|[0x80006828]<br>0x00006665<br> |- rs1_val==1717986917 and rs2_val==65535<br>                                                                                                                                            |[0x80002690]:mulhu a2, a0, a1<br> [0x80002694]:sw a2, 0x6d4(t0)<br>    |
| 296|[0x8000682c]<br>0x00000000<br> |- rs1_val==1717986917 and rs2_val==2<br>                                                                                                                                                |[0x800026a4]:mulhu a2, a0, a1<br> [0x800026a8]:sw a2, 0x6d8(t0)<br>    |
| 297|[0x80006830]<br>0x22222221<br> |- rs1_val==1717986917 and rs2_val==1431655764<br>                                                                                                                                       |[0x800026bc]:mulhu a2, a0, a1<br> [0x800026c0]:sw a2, 0x6dc(t0)<br>    |
| 298|[0x80006834]<br>0x44444442<br> |- rs1_val==1717986917 and rs2_val==2863311529<br>                                                                                                                                       |[0x800026d4]:mulhu a2, a0, a1<br> [0x800026d8]:sw a2, 0x6e0(t0)<br>    |
| 299|[0x80006838]<br>0x00000001<br> |- rs1_val==1717986917 and rs2_val==4<br>                                                                                                                                                |[0x800026e8]:mulhu a2, a0, a1<br> [0x800026ec]:sw a2, 0x6e4(t0)<br>    |
| 300|[0x8000683c]<br>0x147AE146<br> |- rs1_val==1717986917 and rs2_val==858993458<br>                                                                                                                                        |[0x80002700]:mulhu a2, a0, a1<br> [0x80002704]:sw a2, 0x6e8(t0)<br>    |
| 301|[0x80006840]<br>0x28F5C28E<br> |- rs1_val==1717986917 and rs2_val==1717986917<br>                                                                                                                                       |[0x80002718]:mulhu a2, a0, a1<br> [0x8000271c]:sw a2, 0x6ec(t0)<br>    |
| 302|[0x80006844]<br>0x00004867<br> |- rs1_val==1717986917 and rs2_val==46339<br>                                                                                                                                            |[0x80002730]:mulhu a2, a0, a1<br> [0x80002734]:sw a2, 0x6f0(t0)<br>    |
| 303|[0x80006848]<br>0x00006665<br> |- rs1_val==1717986917 and rs2_val==65534<br>                                                                                                                                            |[0x80002748]:mulhu a2, a0, a1<br> [0x8000274c]:sw a2, 0x6f4(t0)<br>    |
| 304|[0x8000684c]<br>0x22222221<br> |- rs1_val==1717986917 and rs2_val==1431655766<br>                                                                                                                                       |[0x80002760]:mulhu a2, a0, a1<br> [0x80002764]:sw a2, 0x6f8(t0)<br>    |
| 305|[0x80006850]<br>0x44444443<br> |- rs1_val==1717986917 and rs2_val==2863311531<br>                                                                                                                                       |[0x80002778]:mulhu a2, a0, a1<br> [0x8000277c]:sw a2, 0x6fc(t0)<br>    |
| 306|[0x80006854]<br>0x00000002<br> |- rs1_val==1717986917 and rs2_val==6<br>                                                                                                                                                |[0x8000278c]:mulhu a2, a0, a1<br> [0x80002790]:sw a2, 0x700(t0)<br>    |
| 307|[0x80006858]<br>0x00000000<br> |- rs1_val==1717986917 and rs2_val==1<br>                                                                                                                                                |[0x800027a0]:mulhu a2, a0, a1<br> [0x800027a4]:sw a2, 0x704(t0)<br>    |
| 308|[0x8000685c]<br>0x00006666<br> |- rs1_val==1717986917 and rs2_val==65536<br>                                                                                                                                            |[0x800027b4]:mulhu a2, a0, a1<br> [0x800027b8]:sw a2, 0x708(t0)<br>    |
| 309|[0x80006860]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==3<br>                                                                                                                                                     |[0x800027c8]:mulhu a2, a0, a1<br> [0x800027cc]:sw a2, 0x70c(t0)<br>    |
| 310|[0x80006864]<br>0x00003C56<br> |- rs1_val==46339 and rs2_val==1431655765<br>                                                                                                                                            |[0x800027e0]:mulhu a2, a0, a1<br> [0x800027e4]:sw a2, 0x710(t0)<br>    |
| 311|[0x80006868]<br>0x000078AC<br> |- rs1_val==46339 and rs2_val==2863311530<br>                                                                                                                                            |[0x800027f8]:mulhu a2, a0, a1<br> [0x800027fc]:sw a2, 0x714(t0)<br>    |
| 312|[0x8000686c]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==5<br>                                                                                                                                                     |[0x8000280c]:mulhu a2, a0, a1<br> [0x80002810]:sw a2, 0x718(t0)<br>    |
| 313|[0x80006870]<br>0x00002433<br> |- rs1_val==46339 and rs2_val==858993459<br>                                                                                                                                             |[0x80002824]:mulhu a2, a0, a1<br> [0x80002828]:sw a2, 0x71c(t0)<br>    |
| 314|[0x80006874]<br>0x00004867<br> |- rs1_val==46339 and rs2_val==1717986918<br>                                                                                                                                            |[0x8000283c]:mulhu a2, a0, a1<br> [0x80002840]:sw a2, 0x720(t0)<br>    |
| 315|[0x80006878]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==46340<br>                                                                                                                                                 |[0x80002854]:mulhu a2, a0, a1<br> [0x80002858]:sw a2, 0x724(t0)<br>    |
| 316|[0x8000687c]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==0<br>                                                                                                                                                     |[0x80002868]:mulhu a2, a0, a1<br> [0x8000286c]:sw a2, 0x728(t0)<br>    |
| 317|[0x80006880]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==65535<br>                                                                                                                                                 |[0x80002880]:mulhu a2, a0, a1<br> [0x80002884]:sw a2, 0x72c(t0)<br>    |
| 318|[0x80006884]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==2<br>                                                                                                                                                     |[0x80002894]:mulhu a2, a0, a1<br> [0x80002898]:sw a2, 0x730(t0)<br>    |
| 319|[0x80006888]<br>0x00003C56<br> |- rs1_val==46339 and rs2_val==1431655764<br>                                                                                                                                            |[0x800028ac]:mulhu a2, a0, a1<br> [0x800028b0]:sw a2, 0x734(t0)<br>    |
| 320|[0x8000688c]<br>0x000078AC<br> |- rs1_val==46339 and rs2_val==2863311529<br>                                                                                                                                            |[0x800028c4]:mulhu a2, a0, a1<br> [0x800028c8]:sw a2, 0x738(t0)<br>    |
| 321|[0x80006890]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==4<br>                                                                                                                                                     |[0x800028d8]:mulhu a2, a0, a1<br> [0x800028dc]:sw a2, 0x73c(t0)<br>    |
| 322|[0x80006894]<br>0x00002433<br> |- rs1_val==46339 and rs2_val==858993458<br>                                                                                                                                             |[0x800028f0]:mulhu a2, a0, a1<br> [0x800028f4]:sw a2, 0x740(t0)<br>    |
| 323|[0x80006898]<br>0x00004867<br> |- rs1_val==46339 and rs2_val==1717986917<br>                                                                                                                                            |[0x80002908]:mulhu a2, a0, a1<br> [0x8000290c]:sw a2, 0x744(t0)<br>    |
| 324|[0x8000689c]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==46339<br>                                                                                                                                                 |[0x80002920]:mulhu a2, a0, a1<br> [0x80002924]:sw a2, 0x748(t0)<br>    |
| 325|[0x800068a0]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==65534<br>                                                                                                                                                 |[0x80002938]:mulhu a2, a0, a1<br> [0x8000293c]:sw a2, 0x74c(t0)<br>    |
| 326|[0x800068a4]<br>0x00003C56<br> |- rs1_val==46339 and rs2_val==1431655766<br>                                                                                                                                            |[0x80002950]:mulhu a2, a0, a1<br> [0x80002954]:sw a2, 0x750(t0)<br>    |
| 327|[0x800068a8]<br>0x000078AC<br> |- rs1_val==46339 and rs2_val==2863311531<br>                                                                                                                                            |[0x80002968]:mulhu a2, a0, a1<br> [0x8000296c]:sw a2, 0x754(t0)<br>    |
| 328|[0x800068ac]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==6<br>                                                                                                                                                     |[0x8000297c]:mulhu a2, a0, a1<br> [0x80002980]:sw a2, 0x758(t0)<br>    |
| 329|[0x800068b0]<br>0x00002433<br> |- rs1_val==46339 and rs2_val==858993460<br>                                                                                                                                             |[0x80002994]:mulhu a2, a0, a1<br> [0x80002998]:sw a2, 0x75c(t0)<br>    |
| 330|[0x800068b4]<br>0x00004867<br> |- rs1_val==46339 and rs2_val==1717986919<br>                                                                                                                                            |[0x800029ac]:mulhu a2, a0, a1<br> [0x800029b0]:sw a2, 0x760(t0)<br>    |
| 331|[0x800068b8]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==46341<br>                                                                                                                                                 |[0x800029c4]:mulhu a2, a0, a1<br> [0x800029c8]:sw a2, 0x764(t0)<br>    |
| 332|[0x800068bc]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==1<br>                                                                                                                                                     |[0x800029d8]:mulhu a2, a0, a1<br> [0x800029dc]:sw a2, 0x768(t0)<br>    |
| 333|[0x800068c0]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==65536<br>                                                                                                                                                 |[0x800029ec]:mulhu a2, a0, a1<br> [0x800029f0]:sw a2, 0x76c(t0)<br>    |
| 334|[0x800068c4]<br>0x00000000<br> |- rs1_val==65534 and rs2_val==3<br>                                                                                                                                                     |[0x80002a00]:mulhu a2, a0, a1<br> [0x80002a04]:sw a2, 0x770(t0)<br>    |
| 335|[0x800068c8]<br>0x00005554<br> |- rs1_val==65534 and rs2_val==1431655765<br>                                                                                                                                            |[0x80002a18]:mulhu a2, a0, a1<br> [0x80002a1c]:sw a2, 0x774(t0)<br>    |
| 336|[0x800068cc]<br>0x0000AAA9<br> |- rs1_val==65534 and rs2_val==2863311530<br>                                                                                                                                            |[0x80002a30]:mulhu a2, a0, a1<br> [0x80002a34]:sw a2, 0x778(t0)<br>    |
| 337|[0x800068d0]<br>0x00000000<br> |- rs1_val==65534 and rs2_val==5<br>                                                                                                                                                     |[0x80002a44]:mulhu a2, a0, a1<br> [0x80002a48]:sw a2, 0x77c(t0)<br>    |
| 338|[0x800068d4]<br>0x00003332<br> |- rs1_val==65534 and rs2_val==858993459<br>                                                                                                                                             |[0x80002a5c]:mulhu a2, a0, a1<br> [0x80002a60]:sw a2, 0x780(t0)<br>    |
| 339|[0x800068d8]<br>0x00006665<br> |- rs1_val==65534 and rs2_val==1717986918<br>                                                                                                                                            |[0x80002a74]:mulhu a2, a0, a1<br> [0x80002a78]:sw a2, 0x784(t0)<br>    |
| 340|[0x800068dc]<br>0x00000000<br> |- rs1_val==65534 and rs2_val==46340<br>                                                                                                                                                 |[0x80002a8c]:mulhu a2, a0, a1<br> [0x80002a90]:sw a2, 0x788(t0)<br>    |
| 341|[0x800068e0]<br>0x00000000<br> |- rs1_val==65534 and rs2_val==0<br>                                                                                                                                                     |[0x80002aa0]:mulhu a2, a0, a1<br> [0x80002aa4]:sw a2, 0x78c(t0)<br>    |
| 342|[0x800068e4]<br>0x00000000<br> |- rs1_val==65534 and rs2_val==65535<br>                                                                                                                                                 |[0x80002ab8]:mulhu a2, a0, a1<br> [0x80002abc]:sw a2, 0x790(t0)<br>    |
| 343|[0x800068e8]<br>0x00000000<br> |- rs1_val==65534 and rs2_val==2<br>                                                                                                                                                     |[0x80002acc]:mulhu a2, a0, a1<br> [0x80002ad0]:sw a2, 0x794(t0)<br>    |
| 344|[0x800068ec]<br>0x00005554<br> |- rs1_val==65534 and rs2_val==1431655764<br>                                                                                                                                            |[0x80002ae4]:mulhu a2, a0, a1<br> [0x80002ae8]:sw a2, 0x798(t0)<br>    |
| 345|[0x800068f0]<br>0x0000AAA9<br> |- rs1_val==65534 and rs2_val==2863311529<br>                                                                                                                                            |[0x80002afc]:mulhu a2, a0, a1<br> [0x80002b00]:sw a2, 0x79c(t0)<br>    |
| 346|[0x800068f4]<br>0x00000000<br> |- rs1_val==65534 and rs2_val==4<br>                                                                                                                                                     |[0x80002b10]:mulhu a2, a0, a1<br> [0x80002b14]:sw a2, 0x7a0(t0)<br>    |
| 347|[0x800068f8]<br>0x00003332<br> |- rs1_val==65534 and rs2_val==858993458<br>                                                                                                                                             |[0x80002b28]:mulhu a2, a0, a1<br> [0x80002b2c]:sw a2, 0x7a4(t0)<br>    |
| 348|[0x800068fc]<br>0x00006665<br> |- rs1_val==65534 and rs2_val==1717986917<br>                                                                                                                                            |[0x80002b40]:mulhu a2, a0, a1<br> [0x80002b44]:sw a2, 0x7a8(t0)<br>    |
| 349|[0x80006900]<br>0x00000000<br> |- rs1_val==65534 and rs2_val==46339<br>                                                                                                                                                 |[0x80002b58]:mulhu a2, a0, a1<br> [0x80002b5c]:sw a2, 0x7ac(t0)<br>    |
| 350|[0x80006904]<br>0x00000000<br> |- rs1_val==65534 and rs2_val==65534<br>                                                                                                                                                 |[0x80002b70]:mulhu a2, a0, a1<br> [0x80002b74]:sw a2, 0x7b0(t0)<br>    |
| 351|[0x80006908]<br>0x00005554<br> |- rs1_val==65534 and rs2_val==1431655766<br>                                                                                                                                            |[0x80002b88]:mulhu a2, a0, a1<br> [0x80002b8c]:sw a2, 0x7b4(t0)<br>    |
| 352|[0x8000690c]<br>0x0000AAA9<br> |- rs1_val==65534 and rs2_val==2863311531<br>                                                                                                                                            |[0x80002ba0]:mulhu a2, a0, a1<br> [0x80002ba4]:sw a2, 0x7b8(t0)<br>    |
| 353|[0x80006910]<br>0x00000000<br> |- rs1_val==65534 and rs2_val==6<br>                                                                                                                                                     |[0x80002bb4]:mulhu a2, a0, a1<br> [0x80002bb8]:sw a2, 0x7bc(t0)<br>    |
| 354|[0x80006914]<br>0x00003332<br> |- rs1_val==65534 and rs2_val==858993460<br>                                                                                                                                             |[0x80002bcc]:mulhu a2, a0, a1<br> [0x80002bd0]:sw a2, 0x7c0(t0)<br>    |
| 355|[0x80006918]<br>0x00006665<br> |- rs1_val==65534 and rs2_val==1717986919<br>                                                                                                                                            |[0x80002be4]:mulhu a2, a0, a1<br> [0x80002be8]:sw a2, 0x7c4(t0)<br>    |
| 356|[0x8000691c]<br>0x00000000<br> |- rs1_val==65534 and rs2_val==46341<br>                                                                                                                                                 |[0x80002bfc]:mulhu a2, a0, a1<br> [0x80002c00]:sw a2, 0x7c8(t0)<br>    |
| 357|[0x80006920]<br>0x00000000<br> |- rs1_val==65534 and rs2_val==1<br>                                                                                                                                                     |[0x80002c10]:mulhu a2, a0, a1<br> [0x80002c14]:sw a2, 0x7cc(t0)<br>    |
| 358|[0x80006924]<br>0x00000000<br> |- rs1_val==65534 and rs2_val==65536<br>                                                                                                                                                 |[0x80002c24]:mulhu a2, a0, a1<br> [0x80002c28]:sw a2, 0x7d0(t0)<br>    |
| 359|[0x80006928]<br>0x00000001<br> |- rs1_val==1431655766 and rs2_val==3<br>                                                                                                                                                |[0x80002c38]:mulhu a2, a0, a1<br> [0x80002c3c]:sw a2, 0x7d4(t0)<br>    |
| 360|[0x8000692c]<br>0x1C71C71C<br> |- rs1_val==1431655766 and rs2_val==1431655765<br>                                                                                                                                       |[0x80002c50]:mulhu a2, a0, a1<br> [0x80002c54]:sw a2, 0x7d8(t0)<br>    |
| 361|[0x80006930]<br>0x38E38E39<br> |- rs1_val==1431655766 and rs2_val==2863311530<br>                                                                                                                                       |[0x80002c68]:mulhu a2, a0, a1<br> [0x80002c6c]:sw a2, 0x7dc(t0)<br>    |
| 362|[0x80006934]<br>0x00000001<br> |- rs1_val==1431655766 and rs2_val==5<br>                                                                                                                                                |[0x80002c7c]:mulhu a2, a0, a1<br> [0x80002c80]:sw a2, 0x7e0(t0)<br>    |
| 363|[0x80006938]<br>0x11111111<br> |- rs1_val==1431655766 and rs2_val==858993459<br>                                                                                                                                        |[0x80002c94]:mulhu a2, a0, a1<br> [0x80002c98]:sw a2, 0x7e4(t0)<br>    |
| 364|[0x8000693c]<br>0x22222222<br> |- rs1_val==1431655766 and rs2_val==1717986918<br>                                                                                                                                       |[0x80002cac]:mulhu a2, a0, a1<br> [0x80002cb0]:sw a2, 0x7e8(t0)<br>    |
| 365|[0x80006940]<br>0x00003C56<br> |- rs1_val==1431655766 and rs2_val==46340<br>                                                                                                                                            |[0x80002cc4]:mulhu a2, a0, a1<br> [0x80002cc8]:sw a2, 0x7ec(t0)<br>    |
| 366|[0x80006944]<br>0x00000000<br> |- rs1_val==1431655766 and rs2_val==0<br>                                                                                                                                                |[0x80002cd8]:mulhu a2, a0, a1<br> [0x80002cdc]:sw a2, 0x7f0(t0)<br>    |
| 367|[0x80006948]<br>0x00005555<br> |- rs1_val==1431655766 and rs2_val==65535<br>                                                                                                                                            |[0x80002cf0]:mulhu a2, a0, a1<br> [0x80002cf4]:sw a2, 0x7f4(t0)<br>    |
| 368|[0x8000694c]<br>0x00000000<br> |- rs1_val==1431655766 and rs2_val==2<br>                                                                                                                                                |[0x80002d04]:mulhu a2, a0, a1<br> [0x80002d08]:sw a2, 0x7f8(t0)<br>    |
| 369|[0x80006950]<br>0x1C71C71C<br> |- rs1_val==1431655766 and rs2_val==1431655764<br>                                                                                                                                       |[0x80002d1c]:mulhu a2, a0, a1<br> [0x80002d20]:sw a2, 0x7fc(t0)<br>    |
| 370|[0x80006954]<br>0x38E38E38<br> |- rs1_val==1431655766 and rs2_val==2863311529<br>                                                                                                                                       |[0x80002d70]:mulhu a2, a0, a1<br> [0x80002d74]:sw a2, 0x0(t0)<br>      |
| 371|[0x80006958]<br>0x00000001<br> |- rs1_val==1431655766 and rs2_val==4<br>                                                                                                                                                |[0x80002d84]:mulhu a2, a0, a1<br> [0x80002d88]:sw a2, 0x4(t0)<br>      |
| 372|[0x8000695c]<br>0x11111110<br> |- rs1_val==1431655766 and rs2_val==858993458<br>                                                                                                                                        |[0x80002d9c]:mulhu a2, a0, a1<br> [0x80002da0]:sw a2, 0x8(t0)<br>      |
| 373|[0x80006960]<br>0x22222221<br> |- rs1_val==1431655766 and rs2_val==1717986917<br>                                                                                                                                       |[0x80002db4]:mulhu a2, a0, a1<br> [0x80002db8]:sw a2, 0xc(t0)<br>      |
| 374|[0x80006964]<br>0x00003C56<br> |- rs1_val==1431655766 and rs2_val==46339<br>                                                                                                                                            |[0x80002dcc]:mulhu a2, a0, a1<br> [0x80002dd0]:sw a2, 0x10(t0)<br>     |
| 375|[0x80006968]<br>0x00005554<br> |- rs1_val==1431655766 and rs2_val==65534<br>                                                                                                                                            |[0x80002de4]:mulhu a2, a0, a1<br> [0x80002de8]:sw a2, 0x14(t0)<br>     |
| 376|[0x8000696c]<br>0x1C71C71C<br> |- rs1_val==1431655766 and rs2_val==1431655766<br>                                                                                                                                       |[0x80002dfc]:mulhu a2, a0, a1<br> [0x80002e00]:sw a2, 0x18(t0)<br>     |
| 377|[0x80006970]<br>0x38E38E39<br> |- rs1_val==1431655766 and rs2_val==2863311531<br>                                                                                                                                       |[0x80002e14]:mulhu a2, a0, a1<br> [0x80002e18]:sw a2, 0x1c(t0)<br>     |
| 378|[0x80006974]<br>0x00000002<br> |- rs1_val==1431655766 and rs2_val==6<br>                                                                                                                                                |[0x80002e28]:mulhu a2, a0, a1<br> [0x80002e2c]:sw a2, 0x20(t0)<br>     |
| 379|[0x80006978]<br>0x11111111<br> |- rs1_val==1431655766 and rs2_val==858993460<br>                                                                                                                                        |[0x80002e40]:mulhu a2, a0, a1<br> [0x80002e44]:sw a2, 0x24(t0)<br>     |
| 380|[0x8000697c]<br>0x22222222<br> |- rs1_val==1431655766 and rs2_val==1717986919<br>                                                                                                                                       |[0x80002e58]:mulhu a2, a0, a1<br> [0x80002e5c]:sw a2, 0x28(t0)<br>     |
| 381|[0x80006980]<br>0x00003C57<br> |- rs1_val==1431655766 and rs2_val==46341<br>                                                                                                                                            |[0x80002e70]:mulhu a2, a0, a1<br> [0x80002e74]:sw a2, 0x2c(t0)<br>     |
| 382|[0x80006984]<br>0x00000000<br> |- rs1_val==1431655766 and rs2_val==1<br>                                                                                                                                                |[0x80002e84]:mulhu a2, a0, a1<br> [0x80002e88]:sw a2, 0x30(t0)<br>     |
| 383|[0x80006988]<br>0x00005555<br> |- rs1_val==1431655766 and rs2_val==65536<br>                                                                                                                                            |[0x80002e98]:mulhu a2, a0, a1<br> [0x80002e9c]:sw a2, 0x34(t0)<br>     |
| 384|[0x8000698c]<br>0x00000002<br> |- rs1_val==2863311531 and rs2_val==3<br>                                                                                                                                                |[0x80002eac]:mulhu a2, a0, a1<br> [0x80002eb0]:sw a2, 0x38(t0)<br>     |
| 385|[0x80006990]<br>0x38E38E38<br> |- rs1_val==2863311531 and rs2_val==1431655765<br>                                                                                                                                       |[0x80002ec4]:mulhu a2, a0, a1<br> [0x80002ec8]:sw a2, 0x3c(t0)<br>     |
| 386|[0x80006994]<br>0x71C71C71<br> |- rs1_val==2863311531 and rs2_val==2863311530<br>                                                                                                                                       |[0x80002edc]:mulhu a2, a0, a1<br> [0x80002ee0]:sw a2, 0x40(t0)<br>     |
| 387|[0x80006998]<br>0x00000003<br> |- rs1_val==2863311531 and rs2_val==5<br>                                                                                                                                                |[0x80002ef0]:mulhu a2, a0, a1<br> [0x80002ef4]:sw a2, 0x44(t0)<br>     |
| 388|[0x8000699c]<br>0x22222222<br> |- rs1_val==2863311531 and rs2_val==858993459<br>                                                                                                                                        |[0x80002f08]:mulhu a2, a0, a1<br> [0x80002f0c]:sw a2, 0x48(t0)<br>     |
| 389|[0x800069a0]<br>0x44444444<br> |- rs1_val==2863311531 and rs2_val==1717986918<br>                                                                                                                                       |[0x80002f20]:mulhu a2, a0, a1<br> [0x80002f24]:sw a2, 0x4c(t0)<br>     |
| 390|[0x800069a4]<br>0x000078AD<br> |- rs1_val==2863311531 and rs2_val==46340<br>                                                                                                                                            |[0x80002f38]:mulhu a2, a0, a1<br> [0x80002f3c]:sw a2, 0x50(t0)<br>     |
| 391|[0x800069a8]<br>0x00000000<br> |- rs1_val==2863311531 and rs2_val==0<br>                                                                                                                                                |[0x80002f4c]:mulhu a2, a0, a1<br> [0x80002f50]:sw a2, 0x54(t0)<br>     |
| 392|[0x800069ac]<br>0x0000AAAA<br> |- rs1_val==2863311531 and rs2_val==65535<br>                                                                                                                                            |[0x80002f64]:mulhu a2, a0, a1<br> [0x80002f68]:sw a2, 0x58(t0)<br>     |
| 393|[0x800069b0]<br>0x00000001<br> |- rs1_val==2863311531 and rs2_val==2<br>                                                                                                                                                |[0x80002f78]:mulhu a2, a0, a1<br> [0x80002f7c]:sw a2, 0x5c(t0)<br>     |
| 394|[0x800069b4]<br>0x38E38E38<br> |- rs1_val==2863311531 and rs2_val==1431655764<br>                                                                                                                                       |[0x80002f90]:mulhu a2, a0, a1<br> [0x80002f94]:sw a2, 0x60(t0)<br>     |
| 395|[0x800069b8]<br>0x71C71C70<br> |- rs1_val==2863311531 and rs2_val==2863311529<br>                                                                                                                                       |[0x80002fa8]:mulhu a2, a0, a1<br> [0x80002fac]:sw a2, 0x64(t0)<br>     |
| 396|[0x800069bc]<br>0x00000002<br> |- rs1_val==2863311531 and rs2_val==4<br>                                                                                                                                                |[0x80002fbc]:mulhu a2, a0, a1<br> [0x80002fc0]:sw a2, 0x68(t0)<br>     |
| 397|[0x800069c0]<br>0x22222221<br> |- rs1_val==2863311531 and rs2_val==858993458<br>                                                                                                                                        |[0x80002fd4]:mulhu a2, a0, a1<br> [0x80002fd8]:sw a2, 0x6c(t0)<br>     |
| 398|[0x800069c4]<br>0x44444443<br> |- rs1_val==2863311531 and rs2_val==1717986917<br>                                                                                                                                       |[0x80002fec]:mulhu a2, a0, a1<br> [0x80002ff0]:sw a2, 0x70(t0)<br>     |
| 399|[0x800069c8]<br>0x000078AC<br> |- rs1_val==2863311531 and rs2_val==46339<br>                                                                                                                                            |[0x80003004]:mulhu a2, a0, a1<br> [0x80003008]:sw a2, 0x74(t0)<br>     |
| 400|[0x800069cc]<br>0x0000AAA9<br> |- rs1_val==2863311531 and rs2_val==65534<br>                                                                                                                                            |[0x8000301c]:mulhu a2, a0, a1<br> [0x80003020]:sw a2, 0x78(t0)<br>     |
| 401|[0x800069d0]<br>0x38E38E39<br> |- rs1_val==2863311531 and rs2_val==1431655766<br>                                                                                                                                       |[0x80003034]:mulhu a2, a0, a1<br> [0x80003038]:sw a2, 0x7c(t0)<br>     |
| 402|[0x800069d4]<br>0x71C71C72<br> |- rs1_val==2863311531 and rs2_val==2863311531<br>                                                                                                                                       |[0x8000304c]:mulhu a2, a0, a1<br> [0x80003050]:sw a2, 0x80(t0)<br>     |
| 403|[0x800069d8]<br>0x00000004<br> |- rs1_val==2863311531 and rs2_val==6<br>                                                                                                                                                |[0x80003060]:mulhu a2, a0, a1<br> [0x80003064]:sw a2, 0x84(t0)<br>     |
| 404|[0x800069dc]<br>0x22222222<br> |- rs1_val==2863311531 and rs2_val==858993460<br>                                                                                                                                        |[0x80003078]:mulhu a2, a0, a1<br> [0x8000307c]:sw a2, 0x88(t0)<br>     |
| 405|[0x800069e0]<br>0x44444444<br> |- rs1_val==2863311531 and rs2_val==1717986919<br>                                                                                                                                       |[0x80003090]:mulhu a2, a0, a1<br> [0x80003094]:sw a2, 0x8c(t0)<br>     |
| 406|[0x800069e4]<br>0x000078AE<br> |- rs1_val==2863311531 and rs2_val==46341<br>                                                                                                                                            |[0x800030a8]:mulhu a2, a0, a1<br> [0x800030ac]:sw a2, 0x90(t0)<br>     |
| 407|[0x800069e8]<br>0x00000000<br> |- rs1_val==2863311531 and rs2_val==1<br>                                                                                                                                                |[0x800030bc]:mulhu a2, a0, a1<br> [0x800030c0]:sw a2, 0x94(t0)<br>     |
| 408|[0x800069ec]<br>0x0000AAAA<br> |- rs1_val==2863311531 and rs2_val==65536<br>                                                                                                                                            |[0x800030d0]:mulhu a2, a0, a1<br> [0x800030d4]:sw a2, 0x98(t0)<br>     |
| 409|[0x800069f0]<br>0x00000000<br> |- rs1_val==6 and rs2_val==3<br>                                                                                                                                                         |[0x800030e0]:mulhu a2, a0, a1<br> [0x800030e4]:sw a2, 0x9c(t0)<br>     |
| 410|[0x800069f4]<br>0x00000001<br> |- rs1_val==6 and rs2_val==1431655765<br>                                                                                                                                                |[0x800030f4]:mulhu a2, a0, a1<br> [0x800030f8]:sw a2, 0xa0(t0)<br>     |
| 411|[0x800069f8]<br>0x00000003<br> |- rs1_val==6 and rs2_val==2863311530<br>                                                                                                                                                |[0x80003108]:mulhu a2, a0, a1<br> [0x8000310c]:sw a2, 0xa4(t0)<br>     |
| 412|[0x800069fc]<br>0x00000000<br> |- rs1_val==6 and rs2_val==5<br>                                                                                                                                                         |[0x80003118]:mulhu a2, a0, a1<br> [0x8000311c]:sw a2, 0xa8(t0)<br>     |
| 413|[0x80006a00]<br>0x00000001<br> |- rs1_val==6 and rs2_val==858993459<br>                                                                                                                                                 |[0x8000312c]:mulhu a2, a0, a1<br> [0x80003130]:sw a2, 0xac(t0)<br>     |
| 414|[0x80006a04]<br>0x00000002<br> |- rs1_val==6 and rs2_val==1717986918<br>                                                                                                                                                |[0x80003140]:mulhu a2, a0, a1<br> [0x80003144]:sw a2, 0xb0(t0)<br>     |
| 415|[0x80006a08]<br>0x00000000<br> |- rs1_val==6 and rs2_val==46340<br>                                                                                                                                                     |[0x80003154]:mulhu a2, a0, a1<br> [0x80003158]:sw a2, 0xb4(t0)<br>     |
| 416|[0x80006a0c]<br>0x00000000<br> |- rs1_val==6 and rs2_val==0<br>                                                                                                                                                         |[0x80003164]:mulhu a2, a0, a1<br> [0x80003168]:sw a2, 0xb8(t0)<br>     |
| 417|[0x80006a10]<br>0x00000000<br> |- rs1_val==6 and rs2_val==65535<br>                                                                                                                                                     |[0x80003178]:mulhu a2, a0, a1<br> [0x8000317c]:sw a2, 0xbc(t0)<br>     |
| 418|[0x80006a14]<br>0x00000000<br> |- rs1_val==6 and rs2_val==2<br>                                                                                                                                                         |[0x80003188]:mulhu a2, a0, a1<br> [0x8000318c]:sw a2, 0xc0(t0)<br>     |
| 419|[0x80006a18]<br>0x00000001<br> |- rs1_val==6 and rs2_val==1431655764<br>                                                                                                                                                |[0x8000319c]:mulhu a2, a0, a1<br> [0x800031a0]:sw a2, 0xc4(t0)<br>     |
| 420|[0x80006a1c]<br>0x00000003<br> |- rs1_val==6 and rs2_val==2863311529<br>                                                                                                                                                |[0x800031b0]:mulhu a2, a0, a1<br> [0x800031b4]:sw a2, 0xc8(t0)<br>     |
| 421|[0x80006a20]<br>0x00000000<br> |- rs1_val==6 and rs2_val==4<br>                                                                                                                                                         |[0x800031c0]:mulhu a2, a0, a1<br> [0x800031c4]:sw a2, 0xcc(t0)<br>     |
| 422|[0x80006a24]<br>0x00000001<br> |- rs1_val==6 and rs2_val==858993458<br>                                                                                                                                                 |[0x800031d4]:mulhu a2, a0, a1<br> [0x800031d8]:sw a2, 0xd0(t0)<br>     |
| 423|[0x80006a28]<br>0x00000002<br> |- rs1_val==6 and rs2_val==1717986917<br>                                                                                                                                                |[0x800031e8]:mulhu a2, a0, a1<br> [0x800031ec]:sw a2, 0xd4(t0)<br>     |
| 424|[0x80006a2c]<br>0x00000000<br> |- rs1_val==6 and rs2_val==46339<br>                                                                                                                                                     |[0x800031fc]:mulhu a2, a0, a1<br> [0x80003200]:sw a2, 0xd8(t0)<br>     |
| 425|[0x80006a30]<br>0x00000000<br> |- rs1_val==6 and rs2_val==65534<br>                                                                                                                                                     |[0x80003210]:mulhu a2, a0, a1<br> [0x80003214]:sw a2, 0xdc(t0)<br>     |
| 426|[0x80006a34]<br>0x00000002<br> |- rs1_val==6 and rs2_val==1431655766<br>                                                                                                                                                |[0x80003224]:mulhu a2, a0, a1<br> [0x80003228]:sw a2, 0xe0(t0)<br>     |
| 427|[0x80006a38]<br>0x00000004<br> |- rs1_val==6 and rs2_val==2863311531<br>                                                                                                                                                |[0x80003238]:mulhu a2, a0, a1<br> [0x8000323c]:sw a2, 0xe4(t0)<br>     |
| 428|[0x80006a3c]<br>0x00000000<br> |- rs1_val==6 and rs2_val==6<br>                                                                                                                                                         |[0x80003248]:mulhu a2, a0, a1<br> [0x8000324c]:sw a2, 0xe8(t0)<br>     |
| 429|[0x80006a40]<br>0x00000001<br> |- rs1_val==6 and rs2_val==858993460<br>                                                                                                                                                 |[0x8000325c]:mulhu a2, a0, a1<br> [0x80003260]:sw a2, 0xec(t0)<br>     |
| 430|[0x80006a44]<br>0x00000002<br> |- rs1_val==6 and rs2_val==1717986919<br>                                                                                                                                                |[0x80003270]:mulhu a2, a0, a1<br> [0x80003274]:sw a2, 0xf0(t0)<br>     |
| 431|[0x80006a48]<br>0x00000000<br> |- rs1_val==6 and rs2_val==46341<br>                                                                                                                                                     |[0x80003284]:mulhu a2, a0, a1<br> [0x80003288]:sw a2, 0xf4(t0)<br>     |
| 432|[0x80006a4c]<br>0x00000000<br> |- rs1_val==6 and rs2_val==1<br>                                                                                                                                                         |[0x80003294]:mulhu a2, a0, a1<br> [0x80003298]:sw a2, 0xf8(t0)<br>     |
| 433|[0x80006a50]<br>0x00000000<br> |- rs1_val==6 and rs2_val==65536<br>                                                                                                                                                     |[0x800032a4]:mulhu a2, a0, a1<br> [0x800032a8]:sw a2, 0xfc(t0)<br>     |
| 434|[0x80006a54]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==3<br>                                                                                                                                                 |[0x800032b8]:mulhu a2, a0, a1<br> [0x800032bc]:sw a2, 0x100(t0)<br>    |
| 435|[0x80006a58]<br>0x11111111<br> |- rs1_val==858993460 and rs2_val==1431655765<br>                                                                                                                                        |[0x800032d0]:mulhu a2, a0, a1<br> [0x800032d4]:sw a2, 0x104(t0)<br>    |
| 436|[0x80006a5c]<br>0x22222222<br> |- rs1_val==858993460 and rs2_val==2863311530<br>                                                                                                                                        |[0x800032e8]:mulhu a2, a0, a1<br> [0x800032ec]:sw a2, 0x108(t0)<br>    |
| 437|[0x80006a60]<br>0x00000001<br> |- rs1_val==858993460 and rs2_val==5<br>                                                                                                                                                 |[0x800032fc]:mulhu a2, a0, a1<br> [0x80003300]:sw a2, 0x10c(t0)<br>    |
| 438|[0x80006a64]<br>0x0A3D70A3<br> |- rs1_val==858993460 and rs2_val==858993459<br>                                                                                                                                         |[0x80003314]:mulhu a2, a0, a1<br> [0x80003318]:sw a2, 0x110(t0)<br>    |
| 439|[0x80006a68]<br>0x147AE147<br> |- rs1_val==858993460 and rs2_val==1717986918<br>                                                                                                                                        |[0x8000332c]:mulhu a2, a0, a1<br> [0x80003330]:sw a2, 0x114(t0)<br>    |
| 440|[0x80006a6c]<br>0x00002434<br> |- rs1_val==858993460 and rs2_val==46340<br>                                                                                                                                             |[0x80003344]:mulhu a2, a0, a1<br> [0x80003348]:sw a2, 0x118(t0)<br>    |
| 441|[0x80006a70]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==0<br>                                                                                                                                                 |[0x80003358]:mulhu a2, a0, a1<br> [0x8000335c]:sw a2, 0x11c(t0)<br>    |
| 442|[0x80006a74]<br>0x00003333<br> |- rs1_val==858993460 and rs2_val==65535<br>                                                                                                                                             |[0x80003370]:mulhu a2, a0, a1<br> [0x80003374]:sw a2, 0x120(t0)<br>    |
| 443|[0x80006a78]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==2<br>                                                                                                                                                 |[0x80003384]:mulhu a2, a0, a1<br> [0x80003388]:sw a2, 0x124(t0)<br>    |
| 444|[0x80006a7c]<br>0x11111111<br> |- rs1_val==858993460 and rs2_val==1431655764<br>                                                                                                                                        |[0x8000339c]:mulhu a2, a0, a1<br> [0x800033a0]:sw a2, 0x128(t0)<br>    |
| 445|[0x80006a80]<br>0x22222222<br> |- rs1_val==858993460 and rs2_val==2863311529<br>                                                                                                                                        |[0x800033b4]:mulhu a2, a0, a1<br> [0x800033b8]:sw a2, 0x12c(t0)<br>    |
| 446|[0x80006a84]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==4<br>                                                                                                                                                 |[0x800033c8]:mulhu a2, a0, a1<br> [0x800033cc]:sw a2, 0x130(t0)<br>    |
| 447|[0x80006a88]<br>0x0A3D70A3<br> |- rs1_val==858993460 and rs2_val==858993458<br>                                                                                                                                         |[0x800033e0]:mulhu a2, a0, a1<br> [0x800033e4]:sw a2, 0x134(t0)<br>    |
| 448|[0x80006a8c]<br>0x147AE147<br> |- rs1_val==858993460 and rs2_val==1717986917<br>                                                                                                                                        |[0x800033f8]:mulhu a2, a0, a1<br> [0x800033fc]:sw a2, 0x138(t0)<br>    |
| 449|[0x80006a90]<br>0x00002433<br> |- rs1_val==858993460 and rs2_val==46339<br>                                                                                                                                             |[0x80003410]:mulhu a2, a0, a1<br> [0x80003414]:sw a2, 0x13c(t0)<br>    |
| 450|[0x80006a94]<br>0x00003332<br> |- rs1_val==858993460 and rs2_val==65534<br>                                                                                                                                             |[0x80003428]:mulhu a2, a0, a1<br> [0x8000342c]:sw a2, 0x140(t0)<br>    |
| 451|[0x80006a98]<br>0x11111111<br> |- rs1_val==858993460 and rs2_val==1431655766<br>                                                                                                                                        |[0x80003440]:mulhu a2, a0, a1<br> [0x80003444]:sw a2, 0x144(t0)<br>    |
| 452|[0x80006a9c]<br>0x22222222<br> |- rs1_val==858993460 and rs2_val==2863311531<br>                                                                                                                                        |[0x80003458]:mulhu a2, a0, a1<br> [0x8000345c]:sw a2, 0x148(t0)<br>    |
| 453|[0x80006aa0]<br>0x00000001<br> |- rs1_val==858993460 and rs2_val==6<br>                                                                                                                                                 |[0x8000346c]:mulhu a2, a0, a1<br> [0x80003470]:sw a2, 0x14c(t0)<br>    |
| 454|[0x80006aa4]<br>0x0A3D70A4<br> |- rs1_val==858993460 and rs2_val==858993460<br>                                                                                                                                         |[0x80003484]:mulhu a2, a0, a1<br> [0x80003488]:sw a2, 0x150(t0)<br>    |
| 455|[0x80006aa8]<br>0x147AE148<br> |- rs1_val==858993460 and rs2_val==1717986919<br>                                                                                                                                        |[0x8000349c]:mulhu a2, a0, a1<br> [0x800034a0]:sw a2, 0x154(t0)<br>    |
| 456|[0x80006aac]<br>0x00002434<br> |- rs1_val==858993460 and rs2_val==46341<br>                                                                                                                                             |[0x800034b4]:mulhu a2, a0, a1<br> [0x800034b8]:sw a2, 0x158(t0)<br>    |
| 457|[0x80006ab0]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==1<br>                                                                                                                                                 |[0x800034c8]:mulhu a2, a0, a1<br> [0x800034cc]:sw a2, 0x15c(t0)<br>    |
| 458|[0x80006ab4]<br>0x00003333<br> |- rs1_val==858993460 and rs2_val==65536<br>                                                                                                                                             |[0x800034dc]:mulhu a2, a0, a1<br> [0x800034e0]:sw a2, 0x160(t0)<br>    |
| 459|[0x80006ab8]<br>0x00000001<br> |- rs1_val==1717986919 and rs2_val==3<br>                                                                                                                                                |[0x800034f0]:mulhu a2, a0, a1<br> [0x800034f4]:sw a2, 0x164(t0)<br>    |
| 460|[0x80006abc]<br>0x22222222<br> |- rs1_val==1717986919 and rs2_val==1431655765<br>                                                                                                                                       |[0x80003508]:mulhu a2, a0, a1<br> [0x8000350c]:sw a2, 0x168(t0)<br>    |
| 461|[0x80006ac0]<br>0x44444444<br> |- rs1_val==1717986919 and rs2_val==2863311530<br>                                                                                                                                       |[0x80003520]:mulhu a2, a0, a1<br> [0x80003524]:sw a2, 0x16c(t0)<br>    |
| 462|[0x80006ac4]<br>0x00000002<br> |- rs1_val==1717986919 and rs2_val==5<br>                                                                                                                                                |[0x80003534]:mulhu a2, a0, a1<br> [0x80003538]:sw a2, 0x170(t0)<br>    |
| 463|[0x80006ac8]<br>0x147AE147<br> |- rs1_val==1717986919 and rs2_val==858993459<br>                                                                                                                                        |[0x8000354c]:mulhu a2, a0, a1<br> [0x80003550]:sw a2, 0x174(t0)<br>    |
| 464|[0x80006acc]<br>0x28F5C28F<br> |- rs1_val==1717986919 and rs2_val==1717986918<br>                                                                                                                                       |[0x80003564]:mulhu a2, a0, a1<br> [0x80003568]:sw a2, 0x178(t0)<br>    |
| 465|[0x80006ad0]<br>0x00004868<br> |- rs1_val==1717986919 and rs2_val==46340<br>                                                                                                                                            |[0x8000357c]:mulhu a2, a0, a1<br> [0x80003580]:sw a2, 0x17c(t0)<br>    |
| 466|[0x80006ad4]<br>0x00000000<br> |- rs1_val==1717986919 and rs2_val==0<br>                                                                                                                                                |[0x80003590]:mulhu a2, a0, a1<br> [0x80003594]:sw a2, 0x180(t0)<br>    |
| 467|[0x80006ad8]<br>0x00006666<br> |- rs1_val==1717986919 and rs2_val==65535<br>                                                                                                                                            |[0x800035a8]:mulhu a2, a0, a1<br> [0x800035ac]:sw a2, 0x184(t0)<br>    |
| 468|[0x80006adc]<br>0x00000000<br> |- rs1_val==1717986919 and rs2_val==2<br>                                                                                                                                                |[0x800035bc]:mulhu a2, a0, a1<br> [0x800035c0]:sw a2, 0x188(t0)<br>    |
| 469|[0x80006ae0]<br>0x22222221<br> |- rs1_val==1717986919 and rs2_val==1431655764<br>                                                                                                                                       |[0x800035d4]:mulhu a2, a0, a1<br> [0x800035d8]:sw a2, 0x18c(t0)<br>    |
| 470|[0x80006ae4]<br>0x44444443<br> |- rs1_val==1717986919 and rs2_val==2863311529<br>                                                                                                                                       |[0x800035ec]:mulhu a2, a0, a1<br> [0x800035f0]:sw a2, 0x190(t0)<br>    |
| 471|[0x80006ae8]<br>0x00000001<br> |- rs1_val==1717986919 and rs2_val==4<br>                                                                                                                                                |[0x80003600]:mulhu a2, a0, a1<br> [0x80003604]:sw a2, 0x194(t0)<br>    |
| 472|[0x80006aec]<br>0x147AE147<br> |- rs1_val==1717986919 and rs2_val==858993458<br>                                                                                                                                        |[0x80003618]:mulhu a2, a0, a1<br> [0x8000361c]:sw a2, 0x198(t0)<br>    |
| 473|[0x80006af0]<br>0x28F5C28F<br> |- rs1_val==1717986919 and rs2_val==1717986917<br>                                                                                                                                       |[0x80003630]:mulhu a2, a0, a1<br> [0x80003634]:sw a2, 0x19c(t0)<br>    |
| 474|[0x80006af4]<br>0x00004867<br> |- rs1_val==1717986919 and rs2_val==46339<br>                                                                                                                                            |[0x80003648]:mulhu a2, a0, a1<br> [0x8000364c]:sw a2, 0x1a0(t0)<br>    |
| 475|[0x80006af8]<br>0x00006665<br> |- rs1_val==1717986919 and rs2_val==65534<br>                                                                                                                                            |[0x80003660]:mulhu a2, a0, a1<br> [0x80003664]:sw a2, 0x1a4(t0)<br>    |
| 476|[0x80006afc]<br>0x22222222<br> |- rs1_val==1717986919 and rs2_val==1431655766<br>                                                                                                                                       |[0x80003678]:mulhu a2, a0, a1<br> [0x8000367c]:sw a2, 0x1a8(t0)<br>    |
| 477|[0x80006b00]<br>0x44444444<br> |- rs1_val==1717986919 and rs2_val==2863311531<br>                                                                                                                                       |[0x80003690]:mulhu a2, a0, a1<br> [0x80003694]:sw a2, 0x1ac(t0)<br>    |
| 478|[0x80006b04]<br>0x00000002<br> |- rs1_val==1717986919 and rs2_val==6<br>                                                                                                                                                |[0x800036a4]:mulhu a2, a0, a1<br> [0x800036a8]:sw a2, 0x1b0(t0)<br>    |
| 479|[0x80006b08]<br>0x147AE148<br> |- rs1_val==1717986919 and rs2_val==858993460<br>                                                                                                                                        |[0x800036bc]:mulhu a2, a0, a1<br> [0x800036c0]:sw a2, 0x1b4(t0)<br>    |
| 480|[0x80006b0c]<br>0x28F5C28F<br> |- rs1_val==1717986919 and rs2_val==1717986919<br>                                                                                                                                       |[0x800036d4]:mulhu a2, a0, a1<br> [0x800036d8]:sw a2, 0x1b8(t0)<br>    |
| 481|[0x80006b10]<br>0x00004868<br> |- rs1_val==1717986919 and rs2_val==46341<br>                                                                                                                                            |[0x800036ec]:mulhu a2, a0, a1<br> [0x800036f0]:sw a2, 0x1bc(t0)<br>    |
| 482|[0x80006b14]<br>0x00000000<br> |- rs1_val==1717986919 and rs2_val==1<br>                                                                                                                                                |[0x80003700]:mulhu a2, a0, a1<br> [0x80003704]:sw a2, 0x1c0(t0)<br>    |
| 483|[0x80006b18]<br>0x00006666<br> |- rs1_val==1717986919 and rs2_val==65536<br>                                                                                                                                            |[0x80003714]:mulhu a2, a0, a1<br> [0x80003718]:sw a2, 0x1c4(t0)<br>    |
| 484|[0x80006b1c]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==3<br>                                                                                                                                                     |[0x80003728]:mulhu a2, a0, a1<br> [0x8000372c]:sw a2, 0x1c8(t0)<br>    |
| 485|[0x80006b20]<br>0x00003C56<br> |- rs1_val==46341 and rs2_val==1431655765<br>                                                                                                                                            |[0x80003740]:mulhu a2, a0, a1<br> [0x80003744]:sw a2, 0x1cc(t0)<br>    |
| 486|[0x80006b24]<br>0x000078AD<br> |- rs1_val==46341 and rs2_val==2863311530<br>                                                                                                                                            |[0x80003758]:mulhu a2, a0, a1<br> [0x8000375c]:sw a2, 0x1d0(t0)<br>    |
| 487|[0x80006b28]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==5<br>                                                                                                                                                     |[0x8000376c]:mulhu a2, a0, a1<br> [0x80003770]:sw a2, 0x1d4(t0)<br>    |
| 488|[0x80006b2c]<br>0x00002434<br> |- rs1_val==46341 and rs2_val==858993459<br>                                                                                                                                             |[0x80003784]:mulhu a2, a0, a1<br> [0x80003788]:sw a2, 0x1d8(t0)<br>    |
| 489|[0x80006b30]<br>0x00004868<br> |- rs1_val==46341 and rs2_val==1717986918<br>                                                                                                                                            |[0x8000379c]:mulhu a2, a0, a1<br> [0x800037a0]:sw a2, 0x1dc(t0)<br>    |
| 490|[0x80006b34]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==46340<br>                                                                                                                                                 |[0x800037b4]:mulhu a2, a0, a1<br> [0x800037b8]:sw a2, 0x1e0(t0)<br>    |
| 491|[0x80006b38]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==0<br>                                                                                                                                                     |[0x800037c8]:mulhu a2, a0, a1<br> [0x800037cc]:sw a2, 0x1e4(t0)<br>    |
| 492|[0x80006b3c]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==65535<br>                                                                                                                                                 |[0x800037e0]:mulhu a2, a0, a1<br> [0x800037e4]:sw a2, 0x1e8(t0)<br>    |
| 493|[0x80006b40]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==2<br>                                                                                                                                                     |[0x800037f4]:mulhu a2, a0, a1<br> [0x800037f8]:sw a2, 0x1ec(t0)<br>    |
| 494|[0x80006b44]<br>0x00003C56<br> |- rs1_val==46341 and rs2_val==1431655764<br>                                                                                                                                            |[0x8000380c]:mulhu a2, a0, a1<br> [0x80003810]:sw a2, 0x1f0(t0)<br>    |
| 495|[0x80006b48]<br>0x000078AD<br> |- rs1_val==46341 and rs2_val==2863311529<br>                                                                                                                                            |[0x80003824]:mulhu a2, a0, a1<br> [0x80003828]:sw a2, 0x1f4(t0)<br>    |
| 496|[0x80006b4c]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==4<br>                                                                                                                                                     |[0x80003838]:mulhu a2, a0, a1<br> [0x8000383c]:sw a2, 0x1f8(t0)<br>    |
| 497|[0x80006b50]<br>0x00002434<br> |- rs1_val==46341 and rs2_val==858993458<br>                                                                                                                                             |[0x80003850]:mulhu a2, a0, a1<br> [0x80003854]:sw a2, 0x1fc(t0)<br>    |
| 498|[0x80006b54]<br>0x00004868<br> |- rs1_val==46341 and rs2_val==1717986917<br>                                                                                                                                            |[0x80003868]:mulhu a2, a0, a1<br> [0x8000386c]:sw a2, 0x200(t0)<br>    |
| 499|[0x80006b58]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==46339<br>                                                                                                                                                 |[0x80003880]:mulhu a2, a0, a1<br> [0x80003884]:sw a2, 0x204(t0)<br>    |
| 500|[0x80006b5c]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==65534<br>                                                                                                                                                 |[0x80003898]:mulhu a2, a0, a1<br> [0x8000389c]:sw a2, 0x208(t0)<br>    |
| 501|[0x80006b60]<br>0x00003C57<br> |- rs1_val==46341 and rs2_val==1431655766<br>                                                                                                                                            |[0x800038b0]:mulhu a2, a0, a1<br> [0x800038b4]:sw a2, 0x20c(t0)<br>    |
| 502|[0x80006b64]<br>0x000078AE<br> |- rs1_val==46341 and rs2_val==2863311531<br>                                                                                                                                            |[0x800038c8]:mulhu a2, a0, a1<br> [0x800038cc]:sw a2, 0x210(t0)<br>    |
| 503|[0x80006b68]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==6<br>                                                                                                                                                     |[0x800038dc]:mulhu a2, a0, a1<br> [0x800038e0]:sw a2, 0x214(t0)<br>    |
| 504|[0x80006b6c]<br>0x00002434<br> |- rs1_val==46341 and rs2_val==858993460<br>                                                                                                                                             |[0x800038f4]:mulhu a2, a0, a1<br> [0x800038f8]:sw a2, 0x218(t0)<br>    |
| 505|[0x80006b70]<br>0x00004868<br> |- rs1_val==46341 and rs2_val==1717986919<br>                                                                                                                                            |[0x8000390c]:mulhu a2, a0, a1<br> [0x80003910]:sw a2, 0x21c(t0)<br>    |
| 506|[0x80006b74]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==46341<br>                                                                                                                                                 |[0x80003924]:mulhu a2, a0, a1<br> [0x80003928]:sw a2, 0x220(t0)<br>    |
| 507|[0x80006b78]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==1<br>                                                                                                                                                     |[0x80003938]:mulhu a2, a0, a1<br> [0x8000393c]:sw a2, 0x224(t0)<br>    |
| 508|[0x80006b7c]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==65536<br>                                                                                                                                                 |[0x8000394c]:mulhu a2, a0, a1<br> [0x80003950]:sw a2, 0x228(t0)<br>    |
| 509|[0x80006b80]<br>0x00000000<br> |- rs1_val==1 and rs2_val==3<br>                                                                                                                                                         |[0x8000395c]:mulhu a2, a0, a1<br> [0x80003960]:sw a2, 0x22c(t0)<br>    |
| 510|[0x80006b84]<br>0x00000000<br> |- rs1_val==1 and rs2_val==1431655765<br>                                                                                                                                                |[0x80003970]:mulhu a2, a0, a1<br> [0x80003974]:sw a2, 0x230(t0)<br>    |
| 511|[0x80006b88]<br>0x00000000<br> |- rs1_val==1 and rs2_val==2863311530<br>                                                                                                                                                |[0x80003984]:mulhu a2, a0, a1<br> [0x80003988]:sw a2, 0x234(t0)<br>    |
| 512|[0x80006b8c]<br>0x00000000<br> |- rs1_val==1 and rs2_val==5<br>                                                                                                                                                         |[0x80003994]:mulhu a2, a0, a1<br> [0x80003998]:sw a2, 0x238(t0)<br>    |
| 513|[0x80006b90]<br>0x00000000<br> |- rs1_val==1 and rs2_val==858993459<br>                                                                                                                                                 |[0x800039a8]:mulhu a2, a0, a1<br> [0x800039ac]:sw a2, 0x23c(t0)<br>    |
| 514|[0x80006b94]<br>0x00000000<br> |- rs1_val==1 and rs2_val==1717986918<br>                                                                                                                                                |[0x800039bc]:mulhu a2, a0, a1<br> [0x800039c0]:sw a2, 0x240(t0)<br>    |
| 515|[0x80006b98]<br>0x00000000<br> |- rs1_val==1 and rs2_val==46340<br>                                                                                                                                                     |[0x800039d0]:mulhu a2, a0, a1<br> [0x800039d4]:sw a2, 0x244(t0)<br>    |
| 516|[0x80006b9c]<br>0x00000000<br> |- rs1_val==1 and rs2_val==0<br>                                                                                                                                                         |[0x800039e0]:mulhu a2, a0, a1<br> [0x800039e4]:sw a2, 0x248(t0)<br>    |
| 517|[0x80006ba0]<br>0x00000000<br> |- rs1_val==1 and rs2_val==65535<br>                                                                                                                                                     |[0x800039f4]:mulhu a2, a0, a1<br> [0x800039f8]:sw a2, 0x24c(t0)<br>    |
| 518|[0x80006ba4]<br>0x00000000<br> |- rs1_val==1 and rs2_val==2<br>                                                                                                                                                         |[0x80003a04]:mulhu a2, a0, a1<br> [0x80003a08]:sw a2, 0x250(t0)<br>    |
| 519|[0x80006ba8]<br>0x00000000<br> |- rs1_val==1 and rs2_val==1431655764<br>                                                                                                                                                |[0x80003a18]:mulhu a2, a0, a1<br> [0x80003a1c]:sw a2, 0x254(t0)<br>    |
| 520|[0x80006bac]<br>0x00000000<br> |- rs1_val==1 and rs2_val==2863311529<br>                                                                                                                                                |[0x80003a2c]:mulhu a2, a0, a1<br> [0x80003a30]:sw a2, 0x258(t0)<br>    |
| 521|[0x80006bb0]<br>0x00000000<br> |- rs1_val==1 and rs2_val==4<br>                                                                                                                                                         |[0x80003a3c]:mulhu a2, a0, a1<br> [0x80003a40]:sw a2, 0x25c(t0)<br>    |
| 522|[0x80006bb4]<br>0x00000000<br> |- rs1_val==1 and rs2_val==858993458<br>                                                                                                                                                 |[0x80003a50]:mulhu a2, a0, a1<br> [0x80003a54]:sw a2, 0x260(t0)<br>    |
| 523|[0x80006bb8]<br>0x00000000<br> |- rs1_val==1 and rs2_val==1717986917<br>                                                                                                                                                |[0x80003a64]:mulhu a2, a0, a1<br> [0x80003a68]:sw a2, 0x264(t0)<br>    |
| 524|[0x80006bbc]<br>0x00000000<br> |- rs1_val==1 and rs2_val==46339<br>                                                                                                                                                     |[0x80003a78]:mulhu a2, a0, a1<br> [0x80003a7c]:sw a2, 0x268(t0)<br>    |
| 525|[0x80006bc0]<br>0x00000000<br> |- rs1_val==1 and rs2_val==65534<br>                                                                                                                                                     |[0x80003a8c]:mulhu a2, a0, a1<br> [0x80003a90]:sw a2, 0x26c(t0)<br>    |
| 526|[0x80006bc4]<br>0x00000000<br> |- rs1_val==1 and rs2_val==1431655766<br>                                                                                                                                                |[0x80003aa0]:mulhu a2, a0, a1<br> [0x80003aa4]:sw a2, 0x270(t0)<br>    |
| 527|[0x80006bc8]<br>0x00000000<br> |- rs1_val==1 and rs2_val==2863311531<br>                                                                                                                                                |[0x80003ab4]:mulhu a2, a0, a1<br> [0x80003ab8]:sw a2, 0x274(t0)<br>    |
| 528|[0x80006bcc]<br>0x00000000<br> |- rs1_val==1 and rs2_val==6<br>                                                                                                                                                         |[0x80003ac4]:mulhu a2, a0, a1<br> [0x80003ac8]:sw a2, 0x278(t0)<br>    |
| 529|[0x80006bd0]<br>0x00000000<br> |- rs1_val==1 and rs2_val==858993460<br>                                                                                                                                                 |[0x80003ad8]:mulhu a2, a0, a1<br> [0x80003adc]:sw a2, 0x27c(t0)<br>    |
| 530|[0x80006bd4]<br>0x00000000<br> |- rs1_val==1 and rs2_val==1717986919<br>                                                                                                                                                |[0x80003aec]:mulhu a2, a0, a1<br> [0x80003af0]:sw a2, 0x280(t0)<br>    |
| 531|[0x80006bd8]<br>0x00000000<br> |- rs1_val==1 and rs2_val==46341<br>                                                                                                                                                     |[0x80003b00]:mulhu a2, a0, a1<br> [0x80003b04]:sw a2, 0x284(t0)<br>    |
| 532|[0x80006bdc]<br>0x00000000<br> |- rs1_val==1 and rs2_val==1<br>                                                                                                                                                         |[0x80003b10]:mulhu a2, a0, a1<br> [0x80003b14]:sw a2, 0x288(t0)<br>    |
| 533|[0x80006be0]<br>0x00000000<br> |- rs1_val==1 and rs2_val==65536<br>                                                                                                                                                     |[0x80003b20]:mulhu a2, a0, a1<br> [0x80003b24]:sw a2, 0x28c(t0)<br>    |
| 534|[0x80006be4]<br>0x00000000<br> |- rs1_val==65536 and rs2_val==3<br>                                                                                                                                                     |[0x80003b30]:mulhu a2, a0, a1<br> [0x80003b34]:sw a2, 0x290(t0)<br>    |
| 535|[0x80006be8]<br>0x00005555<br> |- rs1_val==65536 and rs2_val==1431655765<br>                                                                                                                                            |[0x80003b44]:mulhu a2, a0, a1<br> [0x80003b48]:sw a2, 0x294(t0)<br>    |
| 536|[0x80006bec]<br>0x0000AAAA<br> |- rs1_val==65536 and rs2_val==2863311530<br>                                                                                                                                            |[0x80003b58]:mulhu a2, a0, a1<br> [0x80003b5c]:sw a2, 0x298(t0)<br>    |
| 537|[0x80006bf0]<br>0x00000000<br> |- rs1_val==65536 and rs2_val==5<br>                                                                                                                                                     |[0x80003b68]:mulhu a2, a0, a1<br> [0x80003b6c]:sw a2, 0x29c(t0)<br>    |
| 538|[0x80006bf4]<br>0x00003333<br> |- rs1_val==65536 and rs2_val==858993459<br>                                                                                                                                             |[0x80003b7c]:mulhu a2, a0, a1<br> [0x80003b80]:sw a2, 0x2a0(t0)<br>    |
| 539|[0x80006bf8]<br>0x00006666<br> |- rs1_val==65536 and rs2_val==1717986918<br>                                                                                                                                            |[0x80003b90]:mulhu a2, a0, a1<br> [0x80003b94]:sw a2, 0x2a4(t0)<br>    |
| 540|[0x80006bfc]<br>0x00000000<br> |- rs1_val==65536 and rs2_val==46340<br>                                                                                                                                                 |[0x80003ba4]:mulhu a2, a0, a1<br> [0x80003ba8]:sw a2, 0x2a8(t0)<br>    |
| 541|[0x80006c00]<br>0x00000000<br> |- rs1_val==65536 and rs2_val==0<br>                                                                                                                                                     |[0x80003bb4]:mulhu a2, a0, a1<br> [0x80003bb8]:sw a2, 0x2ac(t0)<br>    |
| 542|[0x80006c04]<br>0x00000000<br> |- rs1_val==65536 and rs2_val==65535<br>                                                                                                                                                 |[0x80003bc8]:mulhu a2, a0, a1<br> [0x80003bcc]:sw a2, 0x2b0(t0)<br>    |
| 543|[0x80006c08]<br>0x00000000<br> |- rs1_val==65536 and rs2_val==2<br>                                                                                                                                                     |[0x80003bd8]:mulhu a2, a0, a1<br> [0x80003bdc]:sw a2, 0x2b4(t0)<br>    |
| 544|[0x80006c0c]<br>0x00005555<br> |- rs1_val==65536 and rs2_val==1431655764<br>                                                                                                                                            |[0x80003bec]:mulhu a2, a0, a1<br> [0x80003bf0]:sw a2, 0x2b8(t0)<br>    |
| 545|[0x80006c10]<br>0x0000AAAA<br> |- rs1_val==65536 and rs2_val==2863311529<br>                                                                                                                                            |[0x80003c00]:mulhu a2, a0, a1<br> [0x80003c04]:sw a2, 0x2bc(t0)<br>    |
| 546|[0x80006c14]<br>0x00000000<br> |- rs1_val==65536 and rs2_val==4<br>                                                                                                                                                     |[0x80003c10]:mulhu a2, a0, a1<br> [0x80003c14]:sw a2, 0x2c0(t0)<br>    |
| 547|[0x80006c18]<br>0x00003333<br> |- rs1_val==65536 and rs2_val==858993458<br>                                                                                                                                             |[0x80003c24]:mulhu a2, a0, a1<br> [0x80003c28]:sw a2, 0x2c4(t0)<br>    |
| 548|[0x80006c1c]<br>0x00006666<br> |- rs1_val==65536 and rs2_val==1717986917<br>                                                                                                                                            |[0x80003c38]:mulhu a2, a0, a1<br> [0x80003c3c]:sw a2, 0x2c8(t0)<br>    |
| 549|[0x80006c20]<br>0x00000000<br> |- rs1_val==65536 and rs2_val==46339<br>                                                                                                                                                 |[0x80003c4c]:mulhu a2, a0, a1<br> [0x80003c50]:sw a2, 0x2cc(t0)<br>    |
| 550|[0x80006c24]<br>0x00000000<br> |- rs1_val==65536 and rs2_val==65534<br>                                                                                                                                                 |[0x80003c60]:mulhu a2, a0, a1<br> [0x80003c64]:sw a2, 0x2d0(t0)<br>    |
| 551|[0x80006c28]<br>0x00005555<br> |- rs1_val==65536 and rs2_val==1431655766<br>                                                                                                                                            |[0x80003c74]:mulhu a2, a0, a1<br> [0x80003c78]:sw a2, 0x2d4(t0)<br>    |
| 552|[0x80006c2c]<br>0x0000AAAA<br> |- rs1_val==65536 and rs2_val==2863311531<br>                                                                                                                                            |[0x80003c88]:mulhu a2, a0, a1<br> [0x80003c8c]:sw a2, 0x2d8(t0)<br>    |
| 553|[0x80006c30]<br>0x00000000<br> |- rs1_val==65536 and rs2_val==6<br>                                                                                                                                                     |[0x80003c98]:mulhu a2, a0, a1<br> [0x80003c9c]:sw a2, 0x2dc(t0)<br>    |
| 554|[0x80006c34]<br>0x00003333<br> |- rs1_val==65536 and rs2_val==858993460<br>                                                                                                                                             |[0x80003cac]:mulhu a2, a0, a1<br> [0x80003cb0]:sw a2, 0x2e0(t0)<br>    |
| 555|[0x80006c38]<br>0x00006666<br> |- rs1_val==65536 and rs2_val==1717986919<br>                                                                                                                                            |[0x80003cc0]:mulhu a2, a0, a1<br> [0x80003cc4]:sw a2, 0x2e4(t0)<br>    |
| 556|[0x80006c3c]<br>0x00000000<br> |- rs1_val==65536 and rs2_val==46341<br>                                                                                                                                                 |[0x80003cd4]:mulhu a2, a0, a1<br> [0x80003cd8]:sw a2, 0x2e8(t0)<br>    |
| 557|[0x80006c40]<br>0x00000000<br> |- rs1_val==65536 and rs2_val==1<br>                                                                                                                                                     |[0x80003ce4]:mulhu a2, a0, a1<br> [0x80003ce8]:sw a2, 0x2ec(t0)<br>    |
| 558|[0x80006c44]<br>0x00000001<br> |- rs1_val==65536 and rs2_val==65536<br>                                                                                                                                                 |[0x80003cf4]:mulhu a2, a0, a1<br> [0x80003cf8]:sw a2, 0x2f0(t0)<br>    |
| 559|[0x80006c48]<br>0x147AE147<br> |- rs1_val==1717986917 and rs2_val==858993460<br>                                                                                                                                        |[0x80003d0c]:mulhu a2, a0, a1<br> [0x80003d10]:sw a2, 0x2f4(t0)<br>    |
| 560|[0x80006c4c]<br>0x28F5C28F<br> |- rs1_val==1717986917 and rs2_val==1717986919<br>                                                                                                                                       |[0x80003d24]:mulhu a2, a0, a1<br> [0x80003d28]:sw a2, 0x2f8(t0)<br>    |
| 561|[0x80006c50]<br>0x00004868<br> |- rs1_val==1717986917 and rs2_val==46341<br>                                                                                                                                            |[0x80003d3c]:mulhu a2, a0, a1<br> [0x80003d40]:sw a2, 0x2fc(t0)<br>    |
| 562|[0x80006c58]<br>0x00000000<br> |- rs1_val==1717986918 and rs2_val==1<br>                                                                                                                                                |[0x80003d60]:mulhu a2, a0, a1<br> [0x80003d64]:sw a2, 0x304(t0)<br>    |
