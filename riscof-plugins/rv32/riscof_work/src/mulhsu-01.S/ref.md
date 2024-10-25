
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature (completely or partially)
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update the signature completely
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000148', '0x80003784')]      |
| SIG_REGION                | [('0x80006110', '0x80006b38', '650 words')]      |
| COV_LABELS                | mulhsu      |
| TEST_NAME                 | /home/user/Work/New_Repo/riscv-arch-test-PR/riscof-plugins/rv32/riscof_work/src/mulhsu-01.S/ref.S    |
| Total Number of coverpoints| 570     |
| Total Coverpoints Hit     | 569      |
| Total Signature Updates   | 648      |
| STAT1                     | 488      |
| STAT2                     | 160      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003ec]:mulhsu a2, a0, a1
      [0x800003f0]:sw a2, 0x3c(a3)
 -- Signature Addresses:
      Address: 0x80006194 Data: 0x00010000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800003fc]:mulhsu a2, a0, a1
      [0x80000400]:sw a2, 0x40(a3)
 -- Signature Addresses:
      Address: 0x80006198 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000040c]:mulhsu a2, a0, a1
      [0x80000410]:sw a2, 0x44(a3)
 -- Signature Addresses:
      Address: 0x8000619c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000041c]:mulhsu a2, a0, a1
      [0x80000420]:sw a2, 0x48(a3)
 -- Signature Addresses:
      Address: 0x800061a0 Data: 0x00000010
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000042c]:mulhsu a2, a0, a1
      [0x80000430]:sw a2, 0x4c(a3)
 -- Signature Addresses:
      Address: 0x800061a4 Data: 0x00200000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000043c]:mulhsu a2, a0, a1
      [0x80000440]:sw a2, 0x50(a3)
 -- Signature Addresses:
      Address: 0x800061a8 Data: 0x00000800
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000044c]:mulhsu a2, a0, a1
      [0x80000450]:sw a2, 0x54(a3)
 -- Signature Addresses:
      Address: 0x800061ac Data: 0xFFFFFFFE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000045c]:mulhsu a2, a0, a1
      [0x80000460]:sw a2, 0x58(a3)
 -- Signature Addresses:
      Address: 0x800061b0 Data: 0xFFFFFBFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000046c]:mulhsu a2, a0, a1
      [0x80000470]:sw a2, 0x5c(a3)
 -- Signature Addresses:
      Address: 0x800061b4 Data: 0x0003FFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000047c]:mulhsu a2, a0, a1
      [0x80000480]:sw a2, 0x60(a3)
 -- Signature Addresses:
      Address: 0x800061b8 Data: 0x0000FFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000490]:mulhsu a2, a0, a1
      [0x80000494]:sw a2, 0x64(a3)
 -- Signature Addresses:
      Address: 0x800061bc Data: 0x0000B503
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004a4]:mulhsu a2, a0, a1
      [0x800004a8]:sw a2, 0x68(a3)
 -- Signature Addresses:
      Address: 0x800061c0 Data: 0x33333325
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004b4]:mulhsu a2, a0, a1
      [0x800004b8]:sw a2, 0x6c(a3)
 -- Signature Addresses:
      Address: 0x800061c4 Data: 0x3FFFFFDF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004c4]:mulhsu a2, a0, a1
      [0x800004c8]:sw a2, 0x70(a3)
 -- Signature Addresses:
      Address: 0x800061c8 Data: 0x00007FFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004d4]:mulhsu a2, a0, a1
      [0x800004d8]:sw a2, 0x74(a3)
 -- Signature Addresses:
      Address: 0x800061cc Data: 0xFFFFFFFD
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004e4]:mulhsu a2, a0, a1
      [0x800004e8]:sw a2, 0x78(a3)
 -- Signature Addresses:
      Address: 0x800061d0 Data: 0x0000001F
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004f8]:mulhsu a2, a0, a1
      [0x800004fc]:sw a2, 0x7c(a3)
 -- Signature Addresses:
      Address: 0x800061d4 Data: 0x000FFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000510]:mulhsu a2, a0, a1
      [0x80000514]:sw a2, 0x80(a3)
 -- Signature Addresses:
      Address: 0x800061d8 Data: 0xAAAAAFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000524]:mulhsu a2, a0, a1
      [0x80000528]:sw a2, 0x84(a3)
 -- Signature Addresses:
      Address: 0x800061dc Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000053c]:mulhsu a2, a0, a1
      [0x80000540]:sw a2, 0x88(a3)
 -- Signature Addresses:
      Address: 0x800061e0 Data: 0xAAAABFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000554]:mulhsu a2, a0, a1
      [0x80000558]:sw a2, 0x8c(a3)
 -- Signature Addresses:
      Address: 0x800061e4 Data: 0x000007FF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000568]:mulhsu a2, a0, a1
      [0x8000056c]:sw a2, 0x90(a3)
 -- Signature Addresses:
      Address: 0x800061e8 Data: 0x03FFFBFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000580]:mulhsu a2, a0, a1
      [0x80000584]:sw a2, 0x94(a3)
 -- Signature Addresses:
      Address: 0x800061ec Data: 0xC0007FFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000594]:mulhsu a2, a0, a1
      [0x80000598]:sw a2, 0x98(a3)
 -- Signature Addresses:
      Address: 0x800061f0 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005ac]:mulhsu a2, a0, a1
      [0x800005b0]:sw a2, 0x9c(a3)
 -- Signature Addresses:
      Address: 0x800061f4 Data: 0xFF0007FF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005c0]:mulhsu a2, a0, a1
      [0x800005c4]:sw a2, 0xa0(a3)
 -- Signature Addresses:
      Address: 0x800061f8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005d4]:mulhsu a2, a0, a1
      [0x800005d8]:sw a2, 0xa4(a3)
 -- Signature Addresses:
      Address: 0x800061fc Data: 0xFFFFFFFD
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005e8]:mulhsu a2, a0, a1
      [0x800005ec]:sw a2, 0xa8(a3)
 -- Signature Addresses:
      Address: 0x80006200 Data: 0x0000003F
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005fc]:mulhsu a2, a0, a1
      [0x80000600]:sw a2, 0xac(a3)
 -- Signature Addresses:
      Address: 0x80006204 Data: 0xFFFFFFF8
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000614]:mulhsu a2, a0, a1
      [0x80000618]:sw a2, 0xb0(a3)
 -- Signature Addresses:
      Address: 0x80006208 Data: 0xFFFFF00F
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000628]:mulhsu a2, a0, a1
      [0x8000062c]:sw a2, 0xb4(a3)
 -- Signature Addresses:
      Address: 0x8000620c Data: 0x001FBFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000640]:mulhsu a2, a0, a1
      [0x80000644]:sw a2, 0xb8(a3)
 -- Signature Addresses:
      Address: 0x80006210 Data: 0x32666666
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000658]:mulhsu a2, a0, a1
      [0x8000065c]:sw a2, 0xbc(a3)
 -- Signature Addresses:
      Address: 0x80006214 Data: 0xFFF07FFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000066c]:mulhsu a2, a0, a1
      [0x80000670]:sw a2, 0xc0(a3)
 -- Signature Addresses:
      Address: 0x80006218 Data: 0x00000006
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000680]:mulhsu a2, a0, a1
      [0x80000684]:sw a2, 0xc4(a3)
 -- Signature Addresses:
      Address: 0x8000621c Data: 0xFFFFFCFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000694]:mulhsu a2, a0, a1
      [0x80000698]:sw a2, 0xc8(a3)
 -- Signature Addresses:
      Address: 0x80006220 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006c0]:mulhsu a2, a0, a1
      [0x800006c4]:sw a2, 0xd0(a3)
 -- Signature Addresses:
      Address: 0x80006228 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006d0]:mulhsu a2, a0, a1
      [0x800006d4]:sw a2, 0xd4(a3)
 -- Signature Addresses:
      Address: 0x8000622c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006e4]:mulhsu a2, a0, a1
      [0x800006e8]:sw a2, 0xd8(a3)
 -- Signature Addresses:
      Address: 0x80006230 Data: 0x0000000A
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006f4]:mulhsu a2, a0, a1
      [0x800006f8]:sw a2, 0xdc(a3)
 -- Signature Addresses:
      Address: 0x80006234 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000704]:mulhsu a2, a0, a1
      [0x80000708]:sw a2, 0xe0(a3)
 -- Signature Addresses:
      Address: 0x80006238 Data: 0x000003FF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000714]:mulhsu a2, a0, a1
      [0x80000718]:sw a2, 0xe4(a3)
 -- Signature Addresses:
      Address: 0x8000623c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000728]:mulhsu a2, a0, a1
      [0x8000072c]:sw a2, 0xe8(a3)
 -- Signature Addresses:
      Address: 0x80006240 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000073c]:mulhsu a2, a0, a1
      [0x80000740]:sw a2, 0xec(a3)
 -- Signature Addresses:
      Address: 0x80006244 Data: 0x0001FF7F
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000750]:mulhsu a2, a0, a1
      [0x80000754]:sw a2, 0xf0(a3)
 -- Signature Addresses:
      Address: 0x80006248 Data: 0x00000005
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000760]:mulhsu a2, a0, a1
      [0x80000764]:sw a2, 0xf4(a3)
 -- Signature Addresses:
      Address: 0x8000624c Data: 0x00000004
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000774]:mulhsu a2, a0, a1
      [0x80000778]:sw a2, 0xf8(a3)
 -- Signature Addresses:
      Address: 0x80006250 Data: 0x00AAAAAA
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000784]:mulhsu a2, a0, a1
      [0x80000788]:sw a2, 0xfc(a3)
 -- Signature Addresses:
      Address: 0x80006254 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000794]:mulhsu a2, a0, a1
      [0x80000798]:sw a2, 0x100(a3)
 -- Signature Addresses:
      Address: 0x80006258 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007a8]:mulhsu a2, a0, a1
      [0x800007ac]:sw a2, 0x104(a3)
 -- Signature Addresses:
      Address: 0x8000625c Data: 0xFFFFFFF7
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007b8]:mulhsu a2, a0, a1
      [0x800007bc]:sw a2, 0x108(a3)
 -- Signature Addresses:
      Address: 0x80006260 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007cc]:mulhsu a2, a0, a1
      [0x800007d0]:sw a2, 0x10c(a3)
 -- Signature Addresses:
      Address: 0x80006264 Data: 0xFFFFFF7F
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007e0]:mulhsu a2, a0, a1
      [0x800007e4]:sw a2, 0x110(a3)
 -- Signature Addresses:
      Address: 0x80006268 Data: 0xFFFFFF32
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007f4]:mulhsu a2, a0, a1
      [0x800007f8]:sw a2, 0x114(a3)
 -- Signature Addresses:
      Address: 0x8000626c Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000080c]:mulhsu a2, a0, a1
      [0x80000810]:sw a2, 0x118(a3)
 -- Signature Addresses:
      Address: 0x80006270 Data: 0xFFFFEAAA
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000820]:mulhsu a2, a0, a1
      [0x80000824]:sw a2, 0x11c(a3)
 -- Signature Addresses:
      Address: 0x80006274 Data: 0xFFFFBFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000838]:mulhsu a2, a0, a1
      [0x8000083c]:sw a2, 0x120(a3)
 -- Signature Addresses:
      Address: 0x80006278 Data: 0xFFFFE666
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000084c]:mulhsu a2, a0, a1
      [0x80000850]:sw a2, 0x124(a3)
 -- Signature Addresses:
      Address: 0x8000627c Data: 0xFFFEFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000860]:mulhsu a2, a0, a1
      [0x80000864]:sw a2, 0x128(a3)
 -- Signature Addresses:
      Address: 0x80006280 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000874]:mulhsu a2, a0, a1
      [0x80000878]:sw a2, 0x12c(a3)
 -- Signature Addresses:
      Address: 0x80006284 Data: 0xFFFBFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000888]:mulhsu a2, a0, a1
      [0x8000088c]:sw a2, 0x130(a3)
 -- Signature Addresses:
      Address: 0x80006288 Data: 0xFFF7FFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000089c]:mulhsu a2, a0, a1
      [0x800008a0]:sw a2, 0x134(a3)
 -- Signature Addresses:
      Address: 0x8000628c Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008b0]:mulhsu a2, a0, a1
      [0x800008b4]:sw a2, 0x138(a3)
 -- Signature Addresses:
      Address: 0x80006290 Data: 0xFFFDFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008c4]:mulhsu a2, a0, a1
      [0x800008c8]:sw a2, 0x13c(a3)
 -- Signature Addresses:
      Address: 0x80006294 Data: 0xFFF7FFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008dc]:mulhsu a2, a0, a1
      [0x800008e0]:sw a2, 0x140(a3)
 -- Signature Addresses:
      Address: 0x80006298 Data: 0xFF555554
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008f4]:mulhsu a2, a0, a1
      [0x800008f8]:sw a2, 0x144(a3)
 -- Signature Addresses:
      Address: 0x8000629c Data: 0xFF333332
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000090c]:mulhsu a2, a0, a1
      [0x80000910]:sw a2, 0x148(a3)
 -- Signature Addresses:
      Address: 0x800062a0 Data: 0xF81FFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000920]:mulhsu a2, a0, a1
      [0x80000924]:sw a2, 0x14c(a3)
 -- Signature Addresses:
      Address: 0x800062a4 Data: 0xFFFFFFBF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000938]:mulhsu a2, a0, a1
      [0x8000093c]:sw a2, 0x150(a3)
 -- Signature Addresses:
      Address: 0x800062a8 Data: 0x1C71C71C
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000948]:mulhsu a2, a0, a1
      [0x8000094c]:sw a2, 0x154(a3)
 -- Signature Addresses:
      Address: 0x800062ac Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000095c]:mulhsu a2, a0, a1
      [0x80000960]:sw a2, 0x158(a3)
 -- Signature Addresses:
      Address: 0x800062b0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000970]:mulhsu a2, a0, a1
      [0x80000974]:sw a2, 0x15c(a3)
 -- Signature Addresses:
      Address: 0x800062b4 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000980]:mulhsu a2, a0, a1
      [0x80000984]:sw a2, 0x160(a3)
 -- Signature Addresses:
      Address: 0x800062b8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000994]:mulhsu a2, a0, a1
      [0x80000998]:sw a2, 0x164(a3)
 -- Signature Addresses:
      Address: 0x800062bc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009a8]:mulhsu a2, a0, a1
      [0x800009ac]:sw a2, 0x168(a3)
 -- Signature Addresses:
      Address: 0x800062c0 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009bc]:mulhsu a2, a0, a1
      [0x800009c0]:sw a2, 0x16c(a3)
 -- Signature Addresses:
      Address: 0x800062c4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009cc]:mulhsu a2, a0, a1
      [0x800009d0]:sw a2, 0x170(a3)
 -- Signature Addresses:
      Address: 0x800062c8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009e0]:mulhsu a2, a0, a1
      [0x800009e4]:sw a2, 0x174(a3)
 -- Signature Addresses:
      Address: 0x800062cc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009f4]:mulhsu a2, a0, a1
      [0x800009f8]:sw a2, 0x178(a3)
 -- Signature Addresses:
      Address: 0x800062d0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a08]:mulhsu a2, a0, a1
      [0x80000a0c]:sw a2, 0x17c(a3)
 -- Signature Addresses:
      Address: 0x800062d4 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a18]:mulhsu a2, a0, a1
      [0x80000a1c]:sw a2, 0x180(a3)
 -- Signature Addresses:
      Address: 0x800062d8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a2c]:mulhsu a2, a0, a1
      [0x80000a30]:sw a2, 0x184(a3)
 -- Signature Addresses:
      Address: 0x800062dc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a40]:mulhsu a2, a0, a1
      [0x80000a44]:sw a2, 0x188(a3)
 -- Signature Addresses:
      Address: 0x800062e0 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a54]:mulhsu a2, a0, a1
      [0x80000a58]:sw a2, 0x18c(a3)
 -- Signature Addresses:
      Address: 0x800062e4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a68]:mulhsu a2, a0, a1
      [0x80000a6c]:sw a2, 0x190(a3)
 -- Signature Addresses:
      Address: 0x800062e8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a7c]:mulhsu a2, a0, a1
      [0x80000a80]:sw a2, 0x194(a3)
 -- Signature Addresses:
      Address: 0x800062ec Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a90]:mulhsu a2, a0, a1
      [0x80000a94]:sw a2, 0x198(a3)
 -- Signature Addresses:
      Address: 0x800062f0 Data: 0x00000002
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000aa0]:mulhsu a2, a0, a1
      [0x80000aa4]:sw a2, 0x19c(a3)
 -- Signature Addresses:
      Address: 0x800062f4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ab4]:mulhsu a2, a0, a1
      [0x80000ab8]:sw a2, 0x1a0(a3)
 -- Signature Addresses:
      Address: 0x800062f8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ac8]:mulhsu a2, a0, a1
      [0x80000acc]:sw a2, 0x1a4(a3)
 -- Signature Addresses:
      Address: 0x800062fc Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000adc]:mulhsu a2, a0, a1
      [0x80000ae0]:sw a2, 0x1a8(a3)
 -- Signature Addresses:
      Address: 0x80006300 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000afc]:mulhsu a2, a0, a1
      [0x80000b00]:sw a2, 0x1b0(a3)
 -- Signature Addresses:
      Address: 0x80006308 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b10]:mulhsu a2, a0, a1
      [0x80000b14]:sw a2, 0x1b4(a3)
 -- Signature Addresses:
      Address: 0x8000630c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b28]:mulhsu a2, a0, a1
      [0x80000b2c]:sw a2, 0x1b8(a3)
 -- Signature Addresses:
      Address: 0x80006310 Data: 0x38E38E38
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b3c]:mulhsu a2, a0, a1
      [0x80000b40]:sw a2, 0x1bc(a3)
 -- Signature Addresses:
      Address: 0x80006314 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b54]:mulhsu a2, a0, a1
      [0x80000b58]:sw a2, 0x1c0(a3)
 -- Signature Addresses:
      Address: 0x80006318 Data: 0x11111110
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b6c]:mulhsu a2, a0, a1
      [0x80000b70]:sw a2, 0x1c4(a3)
 -- Signature Addresses:
      Address: 0x8000631c Data: 0x22222221
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b84]:mulhsu a2, a0, a1
      [0x80000b88]:sw a2, 0x1c8(a3)
 -- Signature Addresses:
      Address: 0x80006320 Data: 0x00003C56
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b98]:mulhsu a2, a0, a1
      [0x80000b9c]:sw a2, 0x1cc(a3)
 -- Signature Addresses:
      Address: 0x80006324 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bb0]:mulhsu a2, a0, a1
      [0x80000bb4]:sw a2, 0x1d0(a3)
 -- Signature Addresses:
      Address: 0x80006328 Data: 0x00005554
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bc4]:mulhsu a2, a0, a1
      [0x80000bc8]:sw a2, 0x1d4(a3)
 -- Signature Addresses:
      Address: 0x8000632c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bdc]:mulhsu a2, a0, a1
      [0x80000be0]:sw a2, 0x1d8(a3)
 -- Signature Addresses:
      Address: 0x80006330 Data: 0x1C71C71B
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bf4]:mulhsu a2, a0, a1
      [0x80000bf8]:sw a2, 0x1dc(a3)
 -- Signature Addresses:
      Address: 0x80006334 Data: 0x38E38E38
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c08]:mulhsu a2, a0, a1
      [0x80000c0c]:sw a2, 0x1e0(a3)
 -- Signature Addresses:
      Address: 0x80006338 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c20]:mulhsu a2, a0, a1
      [0x80000c24]:sw a2, 0x1e4(a3)
 -- Signature Addresses:
      Address: 0x8000633c Data: 0x11111110
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c38]:mulhsu a2, a0, a1
      [0x80000c3c]:sw a2, 0x1e8(a3)
 -- Signature Addresses:
      Address: 0x80006340 Data: 0x22222221
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c50]:mulhsu a2, a0, a1
      [0x80000c54]:sw a2, 0x1ec(a3)
 -- Signature Addresses:
      Address: 0x80006344 Data: 0x00003C56
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c68]:mulhsu a2, a0, a1
      [0x80000c6c]:sw a2, 0x1f0(a3)
 -- Signature Addresses:
      Address: 0x80006348 Data: 0x00005554
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c80]:mulhsu a2, a0, a1
      [0x80000c84]:sw a2, 0x1f4(a3)
 -- Signature Addresses:
      Address: 0x8000634c Data: 0x1C71C71C
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c98]:mulhsu a2, a0, a1
      [0x80000c9c]:sw a2, 0x1f8(a3)
 -- Signature Addresses:
      Address: 0x80006350 Data: 0x38E38E38
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cac]:mulhsu a2, a0, a1
      [0x80000cb0]:sw a2, 0x1fc(a3)
 -- Signature Addresses:
      Address: 0x80006354 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cc4]:mulhsu a2, a0, a1
      [0x80000cc8]:sw a2, 0x200(a3)
 -- Signature Addresses:
      Address: 0x80006358 Data: 0x11111111
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cdc]:mulhsu a2, a0, a1
      [0x80000ce0]:sw a2, 0x204(a3)
 -- Signature Addresses:
      Address: 0x8000635c Data: 0x22222222
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cf4]:mulhsu a2, a0, a1
      [0x80000cf8]:sw a2, 0x208(a3)
 -- Signature Addresses:
      Address: 0x80006360 Data: 0x00003C56
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d08]:mulhsu a2, a0, a1
      [0x80000d0c]:sw a2, 0x20c(a3)
 -- Signature Addresses:
      Address: 0x80006364 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0
      - rs2_val == 1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d1c]:mulhsu a2, a0, a1
      [0x80000d20]:sw a2, 0x210(a3)
 -- Signature Addresses:
      Address: 0x80006368 Data: 0x00005555
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d30]:mulhsu a2, a0, a1
      [0x80000d34]:sw a2, 0x214(a3)
 -- Signature Addresses:
      Address: 0x8000636c Data: 0xFFFFFFFE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d48]:mulhsu a2, a0, a1
      [0x80000d4c]:sw a2, 0x218(a3)
 -- Signature Addresses:
      Address: 0x80006370 Data: 0xE38E38E3
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d60]:mulhsu a2, a0, a1
      [0x80000d64]:sw a2, 0x21c(a3)
 -- Signature Addresses:
      Address: 0x80006374 Data: 0xC71C71C6
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d74]:mulhsu a2, a0, a1
      [0x80000d78]:sw a2, 0x220(a3)
 -- Signature Addresses:
      Address: 0x80006378 Data: 0xFFFFFFFE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d8c]:mulhsu a2, a0, a1
      [0x80000d90]:sw a2, 0x224(a3)
 -- Signature Addresses:
      Address: 0x8000637c Data: 0xEEEEEEEE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000da4]:mulhsu a2, a0, a1
      [0x80000da8]:sw a2, 0x228(a3)
 -- Signature Addresses:
      Address: 0x80006380 Data: 0xDDDDDDDD
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000dbc]:mulhsu a2, a0, a1
      [0x80000dc0]:sw a2, 0x22c(a3)
 -- Signature Addresses:
      Address: 0x80006384 Data: 0xFFFFC3A9
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000dd0]:mulhsu a2, a0, a1
      [0x80000dd4]:sw a2, 0x230(a3)
 -- Signature Addresses:
      Address: 0x80006388 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000de8]:mulhsu a2, a0, a1
      [0x80000dec]:sw a2, 0x234(a3)
 -- Signature Addresses:
      Address: 0x8000638c Data: 0xFFFFAAAA
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000dfc]:mulhsu a2, a0, a1
      [0x80000e00]:sw a2, 0x238(a3)
 -- Signature Addresses:
      Address: 0x80006390 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e14]:mulhsu a2, a0, a1
      [0x80000e18]:sw a2, 0x23c(a3)
 -- Signature Addresses:
      Address: 0x80006394 Data: 0xE38E38E3
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e2c]:mulhsu a2, a0, a1
      [0x80000e30]:sw a2, 0x240(a3)
 -- Signature Addresses:
      Address: 0x80006398 Data: 0xC71C71C7
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e40]:mulhsu a2, a0, a1
      [0x80000e44]:sw a2, 0x244(a3)
 -- Signature Addresses:
      Address: 0x8000639c Data: 0xFFFFFFFE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e58]:mulhsu a2, a0, a1
      [0x80000e5c]:sw a2, 0x248(a3)
 -- Signature Addresses:
      Address: 0x800063a0 Data: 0xEEEEEEEF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e70]:mulhsu a2, a0, a1
      [0x80000e74]:sw a2, 0x24c(a3)
 -- Signature Addresses:
      Address: 0x800063a4 Data: 0xDDDDDDDE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e88]:mulhsu a2, a0, a1
      [0x80000e8c]:sw a2, 0x250(a3)
 -- Signature Addresses:
      Address: 0x800063a8 Data: 0xFFFFC3A9
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ea0]:mulhsu a2, a0, a1
      [0x80000ea4]:sw a2, 0x254(a3)
 -- Signature Addresses:
      Address: 0x800063ac Data: 0xFFFFAAAB
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000eb8]:mulhsu a2, a0, a1
      [0x80000ebc]:sw a2, 0x258(a3)
 -- Signature Addresses:
      Address: 0x800063b0 Data: 0xE38E38E3
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ed0]:mulhsu a2, a0, a1
      [0x80000ed4]:sw a2, 0x25c(a3)
 -- Signature Addresses:
      Address: 0x800063b4 Data: 0xC71C71C6
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ee4]:mulhsu a2, a0, a1
      [0x80000ee8]:sw a2, 0x260(a3)
 -- Signature Addresses:
      Address: 0x800063b8 Data: 0xFFFFFFFD
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000efc]:mulhsu a2, a0, a1
      [0x80000f00]:sw a2, 0x264(a3)
 -- Signature Addresses:
      Address: 0x800063bc Data: 0xEEEEEEEE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f14]:mulhsu a2, a0, a1
      [0x80000f18]:sw a2, 0x268(a3)
 -- Signature Addresses:
      Address: 0x800063c0 Data: 0xDDDDDDDD
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f2c]:mulhsu a2, a0, a1
      [0x80000f30]:sw a2, 0x26c(a3)
 -- Signature Addresses:
      Address: 0x800063c4 Data: 0xFFFFC3A8
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f40]:mulhsu a2, a0, a1
      [0x80000f44]:sw a2, 0x270(a3)
 -- Signature Addresses:
      Address: 0x800063c8 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f54]:mulhsu a2, a0, a1
      [0x80000f58]:sw a2, 0x274(a3)
 -- Signature Addresses:
      Address: 0x800063cc Data: 0xFFFFAAAA
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f64]:mulhsu a2, a0, a1
      [0x80000f68]:sw a2, 0x278(a3)
 -- Signature Addresses:
      Address: 0x800063d0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f78]:mulhsu a2, a0, a1
      [0x80000f7c]:sw a2, 0x27c(a3)
 -- Signature Addresses:
      Address: 0x800063d4 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f88]:mulhsu a2, a0, a1
      [0x80000f8c]:sw a2, 0x280(a3)
 -- Signature Addresses:
      Address: 0x800063d8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f9c]:mulhsu a2, a0, a1
      [0x80000fa0]:sw a2, 0x284(a3)
 -- Signature Addresses:
      Address: 0x800063dc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fb0]:mulhsu a2, a0, a1
      [0x80000fb4]:sw a2, 0x288(a3)
 -- Signature Addresses:
      Address: 0x800063e0 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fc4]:mulhsu a2, a0, a1
      [0x80000fc8]:sw a2, 0x28c(a3)
 -- Signature Addresses:
      Address: 0x800063e4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fd4]:mulhsu a2, a0, a1
      [0x80000fd8]:sw a2, 0x290(a3)
 -- Signature Addresses:
      Address: 0x800063e8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fe8]:mulhsu a2, a0, a1
      [0x80000fec]:sw a2, 0x294(a3)
 -- Signature Addresses:
      Address: 0x800063ec Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ff8]:mulhsu a2, a0, a1
      [0x80000ffc]:sw a2, 0x298(a3)
 -- Signature Addresses:
      Address: 0x800063f0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000100c]:mulhsu a2, a0, a1
      [0x80001010]:sw a2, 0x29c(a3)
 -- Signature Addresses:
      Address: 0x800063f4 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001020]:mulhsu a2, a0, a1
      [0x80001024]:sw a2, 0x2a0(a3)
 -- Signature Addresses:
      Address: 0x800063f8 Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001030]:mulhsu a2, a0, a1
      [0x80001034]:sw a2, 0x2a4(a3)
 -- Signature Addresses:
      Address: 0x800063fc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001044]:mulhsu a2, a0, a1
      [0x80001048]:sw a2, 0x2a8(a3)
 -- Signature Addresses:
      Address: 0x80006400 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001058]:mulhsu a2, a0, a1
      [0x8000105c]:sw a2, 0x2ac(a3)
 -- Signature Addresses:
      Address: 0x80006404 Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000106c]:mulhsu a2, a0, a1
      [0x80001070]:sw a2, 0x2b0(a3)
 -- Signature Addresses:
      Address: 0x80006408 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001080]:mulhsu a2, a0, a1
      [0x80001084]:sw a2, 0x2b4(a3)
 -- Signature Addresses:
      Address: 0x8000640c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001e10]:mulhsu a2, a0, a1
      [0x80001e14]:sw a2, 0x530(a3)
 -- Signature Addresses:
      Address: 0x80006688 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == 0
      - rs1_val==0 and rs2_val==3




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000375c]:mulhsu a2, a0, a1
      [0x80003760]:sw a2, 0x1d0(a3)
 -- Signature Addresses:
      Address: 0x80006b28 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_val == 1




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000377c]:mulhsu a2, a0, a1
      [0x80003780]:sw a2, 0x1d8(a3)
 -- Signature Addresses:
      Address: 0x80006b30 Data: 0x00000008
 -- Redundant Coverpoints hit by the op
      - mnemonic : mulhsu
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

|s.no|           signature           |                                                                                    coverpoints                                                                                    |                                  code                                  |
|---:|-------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80006114]<br>0x00000000<br> |- mnemonic : mulhsu<br> - rs1 : x22<br> - rs2 : x10<br> - rd : x22<br> - rs1 == rd != rs2<br> - rs1_val == 0<br> - rs1_val==0 and rs2_val==3<br>                                   |[0x80000188]:mulhsu s6, s6, a0<br> [0x8000018c]:sw s6, 0x0(a7)<br>      |
|   2|[0x80006118]<br>0x00000000<br> |- rs1 : x23<br> - rs2 : x23<br> - rd : x2<br> - rs1 == rs2 != rd<br> - rs1_val == rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs1_val > 0 and rs2_val > 0<br>                    |[0x80000198]:mulhsu sp, s7, s7<br> [0x8000019c]:sw sp, 0x4(a7)<br>      |
|   3|[0x8000611c]<br>0x00000000<br> |- rs1 : x2<br> - rs2 : x19<br> - rd : x19<br> - rs2 == rd != rs1<br> - rs2_val == 0<br> - rs1_val==46339 and rs2_val==0<br>                                                        |[0x800001ac]:mulhsu s3, sp, s3<br> [0x800001b0]:sw s3, 0x8(a7)<br>      |
|   4|[0x80006120]<br>0x00000003<br> |- rs1 : x25<br> - rs2 : x9<br> - rd : x7<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val != rs2_val and rs1_val > 0 and rs2_val > 0<br> - rs2_val == (2**(xlen)-1)<br> |[0x800001bc]:mulhsu t2, s9, s1<br> [0x800001c0]:sw t2, 0xc(a7)<br>      |
|   5|[0x80006124]<br>0xE3FFFFFF<br> |- rs1 : x28<br> - rs2 : x28<br> - rd : x28<br> - rs1 == rs2 == rd<br>                                                                                                              |[0x800001d4]:mulhsu t3, t3, t3<br> [0x800001d8]:sw t3, 0x10(a7)<br>     |
|   6|[0x80006128]<br>0x00000000<br> |- rs1 : x0<br> - rs2 : x18<br> - rd : x8<br>                                                                                                                                       |[0x800001e4]:mulhsu fp, zero, s2<br> [0x800001e8]:sw fp, 0x14(a7)<br>   |
|   7|[0x8000612c]<br>0x00000000<br> |- rs1 : x14<br> - rs2 : x15<br> - rd : x12<br>                                                                                                                                     |[0x800001f4]:mulhsu a2, a4, a5<br> [0x800001f8]:sw a2, 0x18(a7)<br>     |
|   8|[0x80006130]<br>0x77FFFFFE<br> |- rs1 : x13<br> - rs2 : x3<br> - rd : x4<br> - rs1_val == (2**(xlen-1)-1)<br>                                                                                                      |[0x8000020c]:mulhsu tp, a3, gp<br> [0x80000210]:sw tp, 0x1c(a7)<br>     |
|   9|[0x80006134]<br>0x00000000<br> |- rs1 : x6<br> - rs2 : x16<br> - rd : x30<br> - rs1_val == 1<br>                                                                                                                   |[0x8000021c]:mulhsu t5, t1, a6<br> [0x80000220]:sw t5, 0x20(a7)<br>     |
|  10|[0x80006138]<br>0x00000000<br> |- rs1 : x8<br> - rs2 : x5<br> - rd : x1<br>                                                                                                                                        |[0x8000022c]:mulhsu ra, fp, t0<br> [0x80000230]:sw ra, 0x24(a7)<br>     |
|  11|[0x8000613c]<br>0x00000000<br> |- rs1 : x11<br> - rs2 : x27<br> - rd : x9<br> - rs1_val==6 and rs2_val==4<br>                                                                                                      |[0x8000023c]:mulhsu s1, a1, s11<br> [0x80000240]:sw s1, 0x28(a7)<br>    |
|  12|[0x80006140]<br>0xFFFFFFFE<br> |- rs1 : x27<br> - rs2 : x25<br> - rd : x13<br>                                                                                                                                     |[0x8000024c]:mulhsu a3, s11, s9<br> [0x80000250]:sw a3, 0x2c(a7)<br>    |
|  13|[0x80006144]<br>0xFFFFFFFF<br> |- rs1 : x30<br> - rs2 : x14<br> - rd : x16<br>                                                                                                                                     |[0x8000025c]:mulhsu a6, t5, a4<br> [0x80000260]:sw a6, 0x30(a7)<br>     |
|  14|[0x80006148]<br>0xFFFFFFFF<br> |- rs1 : x15<br> - rs2 : x22<br> - rd : x11<br>                                                                                                                                     |[0x8000026c]:mulhsu a1, a5, s6<br> [0x80000270]:sw a1, 0x34(a7)<br>     |
|  15|[0x8000614c]<br>0xFFFFFFFF<br> |- rs1 : x16<br> - rs2 : x4<br> - rd : x29<br>                                                                                                                                      |[0x8000027c]:mulhsu t4, a6, tp<br> [0x80000280]:sw t4, 0x38(a7)<br>     |
|  16|[0x80006150]<br>0x00000008<br> |- rs1 : x24<br> - rs2 : x13<br> - rd : x21<br>                                                                                                                                     |[0x8000028c]:mulhsu s5, s8, a3<br> [0x80000290]:sw s5, 0x3c(a7)<br>     |
|  17|[0x80006154]<br>0xFFFFFFFF<br> |- rs1 : x19<br> - rs2 : x6<br> - rd : x26<br>                                                                                                                                      |[0x8000029c]:mulhsu s10, s3, t1<br> [0x800002a0]:sw s10, 0x40(a7)<br>   |
|  18|[0x80006158]<br>0x00000199<br> |- rs1 : x9<br> - rs2 : x31<br> - rd : x18<br>                                                                                                                                      |[0x800002f0]:mulhsu s2, s1, t6<br> [0x800002f4]:sw s2, 0x0(a3)<br>      |
|  19|[0x8000615c]<br>0x00000000<br> |- rs1 : x5<br> - rs2 : x7<br> - rd : x25<br>                                                                                                                                       |[0x80000304]:mulhsu s9, t0, t2<br> [0x80000308]:sw s9, 0x4(a3)<br>      |
|  20|[0x80006160]<br>0x00000000<br> |- rs1 : x26<br> - rs2 : x17<br> - rd : x0<br>                                                                                                                                      |[0x80000314]:mulhsu zero, s10, a7<br> [0x80000318]:sw zero, 0x8(a3)<br> |
|  21|[0x80006164]<br>0x00000000<br> |- rs1 : x1<br> - rs2 : x26<br> - rd : x23<br>                                                                                                                                      |[0x80000324]:mulhsu s7, ra, s10<br> [0x80000328]:sw s7, 0xc(a3)<br>     |
|  22|[0x80006168]<br>0x00000000<br> |- rs1 : x21<br> - rs2 : x8<br> - rd : x15<br>                                                                                                                                      |[0x80000334]:mulhsu a5, s5, fp<br> [0x80000338]:sw a5, 0x10(a3)<br>     |
|  23|[0x8000616c]<br>0x00000000<br> |- rs1 : x31<br> - rs2 : x0<br> - rd : x20<br>                                                                                                                                      |[0x80000344]:mulhsu s4, t6, zero<br> [0x80000348]:sw s4, 0x14(a3)<br>   |
|  24|[0x80006170]<br>0xFFFFFFFF<br> |- rs1 : x17<br> - rs2 : x24<br> - rd : x14<br>                                                                                                                                     |[0x80000354]:mulhsu a4, a7, s8<br> [0x80000358]:sw a4, 0x18(a3)<br>     |
|  25|[0x80006174]<br>0x00001000<br> |- rs1 : x4<br> - rs2 : x21<br> - rd : x24<br>                                                                                                                                      |[0x80000364]:mulhsu s8, tp, s5<br> [0x80000368]:sw s8, 0x1c(a3)<br>     |
|  26|[0x80006178]<br>0x00033333<br> |- rs1 : x12<br> - rs2 : x30<br> - rd : x5<br>                                                                                                                                      |[0x80000378]:mulhsu t0, a2, t5<br> [0x8000037c]:sw t0, 0x20(a3)<br>     |
|  27|[0x8000617c]<br>0x00000001<br> |- rs1 : x7<br> - rs2 : x20<br> - rd : x6<br>                                                                                                                                       |[0x80000388]:mulhsu t1, t2, s4<br> [0x8000038c]:sw t1, 0x24(a3)<br>     |
|  28|[0x80006180]<br>0x00000000<br> |- rs1 : x18<br> - rs2 : x1<br> - rd : x31<br>                                                                                                                                      |[0x80000398]:mulhsu t6, s2, ra<br> [0x8000039c]:sw t6, 0x28(a3)<br>     |
|  29|[0x80006184]<br>0xFFEFFFFF<br> |- rs1 : x29<br> - rs2 : x2<br> - rd : x10<br>                                                                                                                                      |[0x800003ac]:mulhsu a0, t4, sp<br> [0x800003b0]:sw a0, 0x2c(a3)<br>     |
|  30|[0x80006188]<br>0x00000001<br> |- rs1 : x3<br> - rs2 : x12<br> - rd : x17<br>                                                                                                                                      |[0x800003bc]:mulhsu a7, gp, a2<br> [0x800003c0]:sw a7, 0x30(a3)<br>     |
|  31|[0x8000618c]<br>0x00000000<br> |- rs1 : x10<br> - rs2 : x11<br> - rd : x27<br>                                                                                                                                     |[0x800003cc]:mulhsu s11, a0, a1<br> [0x800003d0]:sw s11, 0x34(a3)<br>   |
|  32|[0x80006190]<br>0xFFFFFFFF<br> |- rs1 : x20<br> - rs2 : x29<br> - rd : x3<br>                                                                                                                                      |[0x800003dc]:mulhsu gp, s4, t4<br> [0x800003e0]:sw gp, 0x38(a3)<br>     |
|  33|[0x80006224]<br>0xE38E38E3<br> |- rs1_val==-1431655765 and rs2_val==1431655765<br>                                                                                                                                 |[0x800006ac]:mulhsu a2, a0, a1<br> [0x800006b0]:sw a2, 0xcc(a3)<br>     |
|  34|[0x80006304]<br>0x00000000<br> |- rs2_val == 1<br>                                                                                                                                                                 |[0x80000aec]:mulhsu a2, a0, a1<br> [0x80000af0]:sw a2, 0x1ac(a3)<br>    |
|  35|[0x80006410]<br>0x00000001<br> |- rs1_val==5 and rs2_val==1431655766<br>                                                                                                                                           |[0x80001094]:mulhsu a2, a0, a1<br> [0x80001098]:sw a2, 0x2b8(a3)<br>    |
|  36|[0x80006414]<br>0x00000003<br> |- rs1_val==5 and rs2_val==2863311531<br>                                                                                                                                           |[0x800010a8]:mulhsu a2, a0, a1<br> [0x800010ac]:sw a2, 0x2bc(a3)<br>    |
|  37|[0x80006418]<br>0x00000000<br> |- rs1_val==5 and rs2_val==6<br>                                                                                                                                                    |[0x800010b8]:mulhsu a2, a0, a1<br> [0x800010bc]:sw a2, 0x2c0(a3)<br>    |
|  38|[0x8000641c]<br>0x00000001<br> |- rs1_val==5 and rs2_val==858993460<br>                                                                                                                                            |[0x800010cc]:mulhsu a2, a0, a1<br> [0x800010d0]:sw a2, 0x2c4(a3)<br>    |
|  39|[0x80006420]<br>0x00000002<br> |- rs1_val==5 and rs2_val==1717986919<br>                                                                                                                                           |[0x800010e0]:mulhsu a2, a0, a1<br> [0x800010e4]:sw a2, 0x2c8(a3)<br>    |
|  40|[0x80006424]<br>0x00000000<br> |- rs1_val==5 and rs2_val==46341<br>                                                                                                                                                |[0x800010f4]:mulhsu a2, a0, a1<br> [0x800010f8]:sw a2, 0x2cc(a3)<br>    |
|  41|[0x80006428]<br>0x00000000<br> |- rs1_val==5 and rs2_val==1<br>                                                                                                                                                    |[0x80001104]:mulhsu a2, a0, a1<br> [0x80001108]:sw a2, 0x2d0(a3)<br>    |
|  42|[0x8000642c]<br>0x00000000<br> |- rs1_val==5 and rs2_val==65536<br>                                                                                                                                                |[0x80001114]:mulhsu a2, a0, a1<br> [0x80001118]:sw a2, 0x2d4(a3)<br>    |
|  43|[0x80006430]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==3<br>                                                                                                                                            |[0x80001128]:mulhsu a2, a0, a1<br> [0x8000112c]:sw a2, 0x2d8(a3)<br>    |
|  44|[0x80006434]<br>0x11111110<br> |- rs1_val==858993459 and rs2_val==1431655765<br>                                                                                                                                   |[0x80001140]:mulhsu a2, a0, a1<br> [0x80001144]:sw a2, 0x2dc(a3)<br>    |
|  45|[0x80006438]<br>0x22222221<br> |- rs1_val==858993459 and rs2_val==2863311530<br>                                                                                                                                   |[0x80001158]:mulhsu a2, a0, a1<br> [0x8000115c]:sw a2, 0x2e0(a3)<br>    |
|  46|[0x8000643c]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==5<br>                                                                                                                                            |[0x8000116c]:mulhsu a2, a0, a1<br> [0x80001170]:sw a2, 0x2e4(a3)<br>    |
|  47|[0x80006440]<br>0x0A3D70A3<br> |- rs1_val==858993459 and rs2_val==858993459<br>                                                                                                                                    |[0x80001184]:mulhsu a2, a0, a1<br> [0x80001188]:sw a2, 0x2e8(a3)<br>    |
|  48|[0x80006444]<br>0x147AE147<br> |- rs1_val==858993459 and rs2_val==1717986918<br>                                                                                                                                   |[0x8000119c]:mulhsu a2, a0, a1<br> [0x800011a0]:sw a2, 0x2ec(a3)<br>    |
|  49|[0x80006448]<br>0x00002433<br> |- rs1_val==858993459 and rs2_val==46340<br>                                                                                                                                        |[0x800011b4]:mulhsu a2, a0, a1<br> [0x800011b8]:sw a2, 0x2f0(a3)<br>    |
|  50|[0x8000644c]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==0<br>                                                                                                                                            |[0x800011c8]:mulhsu a2, a0, a1<br> [0x800011cc]:sw a2, 0x2f4(a3)<br>    |
|  51|[0x80006450]<br>0x00003332<br> |- rs1_val==858993459 and rs2_val==65535<br>                                                                                                                                        |[0x800011e0]:mulhsu a2, a0, a1<br> [0x800011e4]:sw a2, 0x2f8(a3)<br>    |
|  52|[0x80006454]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==2<br>                                                                                                                                            |[0x800011f4]:mulhsu a2, a0, a1<br> [0x800011f8]:sw a2, 0x2fc(a3)<br>    |
|  53|[0x80006458]<br>0x11111110<br> |- rs1_val==858993459 and rs2_val==1431655764<br>                                                                                                                                   |[0x8000120c]:mulhsu a2, a0, a1<br> [0x80001210]:sw a2, 0x300(a3)<br>    |
|  54|[0x8000645c]<br>0x22222221<br> |- rs1_val==858993459 and rs2_val==2863311529<br>                                                                                                                                   |[0x80001224]:mulhsu a2, a0, a1<br> [0x80001228]:sw a2, 0x304(a3)<br>    |
|  55|[0x80006460]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==4<br>                                                                                                                                            |[0x80001238]:mulhsu a2, a0, a1<br> [0x8000123c]:sw a2, 0x308(a3)<br>    |
|  56|[0x80006464]<br>0x0A3D70A3<br> |- rs1_val==858993459 and rs2_val==858993458<br>                                                                                                                                    |[0x80001250]:mulhsu a2, a0, a1<br> [0x80001254]:sw a2, 0x30c(a3)<br>    |
|  57|[0x80006468]<br>0x147AE147<br> |- rs1_val==858993459 and rs2_val==1717986917<br>                                                                                                                                   |[0x80001268]:mulhsu a2, a0, a1<br> [0x8000126c]:sw a2, 0x310(a3)<br>    |
|  58|[0x8000646c]<br>0x00002433<br> |- rs1_val==858993459 and rs2_val==46339<br>                                                                                                                                        |[0x80001280]:mulhsu a2, a0, a1<br> [0x80001284]:sw a2, 0x314(a3)<br>    |
|  59|[0x80006470]<br>0x00003332<br> |- rs1_val==858993459 and rs2_val==65534<br>                                                                                                                                        |[0x80001298]:mulhsu a2, a0, a1<br> [0x8000129c]:sw a2, 0x318(a3)<br>    |
|  60|[0x80006474]<br>0x11111111<br> |- rs1_val==858993459 and rs2_val==1431655766<br>                                                                                                                                   |[0x800012b0]:mulhsu a2, a0, a1<br> [0x800012b4]:sw a2, 0x31c(a3)<br>    |
|  61|[0x80006478]<br>0x22222222<br> |- rs1_val==858993459 and rs2_val==2863311531<br>                                                                                                                                   |[0x800012c8]:mulhsu a2, a0, a1<br> [0x800012cc]:sw a2, 0x320(a3)<br>    |
|  62|[0x8000647c]<br>0x00000001<br> |- rs1_val==858993459 and rs2_val==6<br>                                                                                                                                            |[0x800012dc]:mulhsu a2, a0, a1<br> [0x800012e0]:sw a2, 0x324(a3)<br>    |
|  63|[0x80006480]<br>0x0A3D70A3<br> |- rs1_val==858993459 and rs2_val==858993460<br>                                                                                                                                    |[0x800012f4]:mulhsu a2, a0, a1<br> [0x800012f8]:sw a2, 0x328(a3)<br>    |
|  64|[0x80006484]<br>0x147AE147<br> |- rs1_val==858993459 and rs2_val==1717986919<br>                                                                                                                                   |[0x8000130c]:mulhsu a2, a0, a1<br> [0x80001310]:sw a2, 0x32c(a3)<br>    |
|  65|[0x80006488]<br>0x00002434<br> |- rs1_val==858993459 and rs2_val==46341<br>                                                                                                                                        |[0x80001324]:mulhsu a2, a0, a1<br> [0x80001328]:sw a2, 0x330(a3)<br>    |
|  66|[0x8000648c]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==1<br>                                                                                                                                            |[0x80001338]:mulhsu a2, a0, a1<br> [0x8000133c]:sw a2, 0x334(a3)<br>    |
|  67|[0x80006490]<br>0x00003333<br> |- rs1_val==858993459 and rs2_val==65536<br>                                                                                                                                        |[0x8000134c]:mulhsu a2, a0, a1<br> [0x80001350]:sw a2, 0x338(a3)<br>    |
|  68|[0x80006494]<br>0x00000001<br> |- rs1_val==1717986918 and rs2_val==3<br>                                                                                                                                           |[0x80001360]:mulhsu a2, a0, a1<br> [0x80001364]:sw a2, 0x33c(a3)<br>    |
|  69|[0x80006498]<br>0x22222221<br> |- rs1_val==1717986918 and rs2_val==1431655765<br>                                                                                                                                  |[0x80001378]:mulhsu a2, a0, a1<br> [0x8000137c]:sw a2, 0x340(a3)<br>    |
|  70|[0x8000649c]<br>0x44444443<br> |- rs1_val==1717986918 and rs2_val==2863311530<br>                                                                                                                                  |[0x80001390]:mulhsu a2, a0, a1<br> [0x80001394]:sw a2, 0x344(a3)<br>    |
|  71|[0x800064a0]<br>0x00000001<br> |- rs1_val==1717986918 and rs2_val==5<br>                                                                                                                                           |[0x800013a4]:mulhsu a2, a0, a1<br> [0x800013a8]:sw a2, 0x348(a3)<br>    |
|  72|[0x800064a4]<br>0x147AE147<br> |- rs1_val==1717986918 and rs2_val==858993459<br>                                                                                                                                   |[0x800013bc]:mulhsu a2, a0, a1<br> [0x800013c0]:sw a2, 0x34c(a3)<br>    |
|  73|[0x800064a8]<br>0x28F5C28F<br> |- rs1_val==1717986918 and rs2_val==1717986918<br>                                                                                                                                  |[0x800013d4]:mulhsu a2, a0, a1<br> [0x800013d8]:sw a2, 0x350(a3)<br>    |
|  74|[0x800064ac]<br>0x00004867<br> |- rs1_val==1717986918 and rs2_val==46340<br>                                                                                                                                       |[0x800013ec]:mulhsu a2, a0, a1<br> [0x800013f0]:sw a2, 0x354(a3)<br>    |
|  75|[0x800064b0]<br>0x00000000<br> |- rs1_val==1717986918 and rs2_val==0<br>                                                                                                                                           |[0x80001400]:mulhsu a2, a0, a1<br> [0x80001404]:sw a2, 0x358(a3)<br>    |
|  76|[0x800064b4]<br>0x00006665<br> |- rs1_val==1717986918 and rs2_val==65535<br>                                                                                                                                       |[0x80001418]:mulhsu a2, a0, a1<br> [0x8000141c]:sw a2, 0x35c(a3)<br>    |
|  77|[0x800064b8]<br>0x00000000<br> |- rs1_val==1717986918 and rs2_val==2<br>                                                                                                                                           |[0x8000142c]:mulhsu a2, a0, a1<br> [0x80001430]:sw a2, 0x360(a3)<br>    |
|  78|[0x800064bc]<br>0x22222221<br> |- rs1_val==1717986918 and rs2_val==1431655764<br>                                                                                                                                  |[0x80001444]:mulhsu a2, a0, a1<br> [0x80001448]:sw a2, 0x364(a3)<br>    |
|  79|[0x800064c0]<br>0x44444443<br> |- rs1_val==1717986918 and rs2_val==2863311529<br>                                                                                                                                  |[0x8000145c]:mulhsu a2, a0, a1<br> [0x80001460]:sw a2, 0x368(a3)<br>    |
|  80|[0x800064c4]<br>0x00000001<br> |- rs1_val==1717986918 and rs2_val==4<br>                                                                                                                                           |[0x80001470]:mulhsu a2, a0, a1<br> [0x80001474]:sw a2, 0x36c(a3)<br>    |
|  81|[0x800064c8]<br>0x147AE147<br> |- rs1_val==1717986918 and rs2_val==858993458<br>                                                                                                                                   |[0x80001488]:mulhsu a2, a0, a1<br> [0x8000148c]:sw a2, 0x370(a3)<br>    |
|  82|[0x800064cc]<br>0x28F5C28E<br> |- rs1_val==1717986918 and rs2_val==1717986917<br>                                                                                                                                  |[0x800014a0]:mulhsu a2, a0, a1<br> [0x800014a4]:sw a2, 0x374(a3)<br>    |
|  83|[0x800064d0]<br>0x00004867<br> |- rs1_val==1717986918 and rs2_val==46339<br>                                                                                                                                       |[0x800014b8]:mulhsu a2, a0, a1<br> [0x800014bc]:sw a2, 0x378(a3)<br>    |
|  84|[0x800064d4]<br>0x00006665<br> |- rs1_val==1717986918 and rs2_val==65534<br>                                                                                                                                       |[0x800014d0]:mulhsu a2, a0, a1<br> [0x800014d4]:sw a2, 0x37c(a3)<br>    |
|  85|[0x800064d8]<br>0x22222222<br> |- rs1_val==1717986918 and rs2_val==1431655766<br>                                                                                                                                  |[0x800014e8]:mulhsu a2, a0, a1<br> [0x800014ec]:sw a2, 0x380(a3)<br>    |
|  86|[0x800064dc]<br>0x44444444<br> |- rs1_val==1717986918 and rs2_val==2863311531<br>                                                                                                                                  |[0x80001500]:mulhsu a2, a0, a1<br> [0x80001504]:sw a2, 0x384(a3)<br>    |
|  87|[0x800064e0]<br>0x00000002<br> |- rs1_val==1717986918 and rs2_val==6<br>                                                                                                                                           |[0x80001514]:mulhsu a2, a0, a1<br> [0x80001518]:sw a2, 0x388(a3)<br>    |
|  88|[0x800064e4]<br>0x147AE147<br> |- rs1_val==1717986918 and rs2_val==858993460<br>                                                                                                                                   |[0x8000152c]:mulhsu a2, a0, a1<br> [0x80001530]:sw a2, 0x38c(a3)<br>    |
|  89|[0x800064e8]<br>0x28F5C28F<br> |- rs1_val==1717986918 and rs2_val==1717986919<br>                                                                                                                                  |[0x80001544]:mulhsu a2, a0, a1<br> [0x80001548]:sw a2, 0x390(a3)<br>    |
|  90|[0x800064ec]<br>0x00004868<br> |- rs1_val==1717986918 and rs2_val==46341<br>                                                                                                                                       |[0x8000155c]:mulhsu a2, a0, a1<br> [0x80001560]:sw a2, 0x394(a3)<br>    |
|  91|[0x800064f0]<br>0x00000000<br> |- rs1_val==1717986918 and rs2_val==1<br>                                                                                                                                           |[0x80001570]:mulhsu a2, a0, a1<br> [0x80001574]:sw a2, 0x398(a3)<br>    |
|  92|[0x800064f4]<br>0x00006666<br> |- rs1_val==1717986918 and rs2_val==65536<br>                                                                                                                                       |[0x80001584]:mulhsu a2, a0, a1<br> [0x80001588]:sw a2, 0x39c(a3)<br>    |
|  93|[0x800064f8]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==3<br>                                                                                                                                               |[0x80001598]:mulhsu a2, a0, a1<br> [0x8000159c]:sw a2, 0x3a0(a3)<br>    |
|  94|[0x800064fc]<br>0xFFFFC3A9<br> |- rs1_val==-46340 and rs2_val==1431655765<br>                                                                                                                                      |[0x800015b0]:mulhsu a2, a0, a1<br> [0x800015b4]:sw a2, 0x3a4(a3)<br>    |
|  95|[0x80006500]<br>0xFFFF8752<br> |- rs1_val==-46340 and rs2_val==2863311530<br>                                                                                                                                      |[0x800015c8]:mulhsu a2, a0, a1<br> [0x800015cc]:sw a2, 0x3a8(a3)<br>    |
|  96|[0x80006504]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==5<br>                                                                                                                                               |[0x800015dc]:mulhsu a2, a0, a1<br> [0x800015e0]:sw a2, 0x3ac(a3)<br>    |
|  97|[0x80006508]<br>0xFFFFDBCC<br> |- rs1_val==-46340 and rs2_val==858993459<br>                                                                                                                                       |[0x800015f4]:mulhsu a2, a0, a1<br> [0x800015f8]:sw a2, 0x3b0(a3)<br>    |
|  98|[0x8000650c]<br>0xFFFFB798<br> |- rs1_val==-46340 and rs2_val==1717986918<br>                                                                                                                                      |[0x8000160c]:mulhsu a2, a0, a1<br> [0x80001610]:sw a2, 0x3b4(a3)<br>    |
|  99|[0x80006510]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==46340<br>                                                                                                                                           |[0x80001624]:mulhsu a2, a0, a1<br> [0x80001628]:sw a2, 0x3b8(a3)<br>    |
| 100|[0x80006514]<br>0x00000000<br> |- rs1_val==-46340 and rs2_val==0<br>                                                                                                                                               |[0x80001638]:mulhsu a2, a0, a1<br> [0x8000163c]:sw a2, 0x3bc(a3)<br>    |
| 101|[0x80006518]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==65535<br>                                                                                                                                           |[0x80001650]:mulhsu a2, a0, a1<br> [0x80001654]:sw a2, 0x3c0(a3)<br>    |
| 102|[0x8000651c]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==2<br>                                                                                                                                               |[0x80001664]:mulhsu a2, a0, a1<br> [0x80001668]:sw a2, 0x3c4(a3)<br>    |
| 103|[0x80006520]<br>0xFFFFC3A9<br> |- rs1_val==-46340 and rs2_val==1431655764<br>                                                                                                                                      |[0x8000167c]:mulhsu a2, a0, a1<br> [0x80001680]:sw a2, 0x3c8(a3)<br>    |
| 104|[0x80006524]<br>0xFFFF8752<br> |- rs1_val==-46340 and rs2_val==2863311529<br>                                                                                                                                      |[0x80001694]:mulhsu a2, a0, a1<br> [0x80001698]:sw a2, 0x3cc(a3)<br>    |
| 105|[0x80006528]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==4<br>                                                                                                                                               |[0x800016a8]:mulhsu a2, a0, a1<br> [0x800016ac]:sw a2, 0x3d0(a3)<br>    |
| 106|[0x8000652c]<br>0xFFFFDBCC<br> |- rs1_val==-46340 and rs2_val==858993458<br>                                                                                                                                       |[0x800016c0]:mulhsu a2, a0, a1<br> [0x800016c4]:sw a2, 0x3d4(a3)<br>    |
| 107|[0x80006530]<br>0xFFFFB798<br> |- rs1_val==-46340 and rs2_val==1717986917<br>                                                                                                                                      |[0x800016d8]:mulhsu a2, a0, a1<br> [0x800016dc]:sw a2, 0x3d8(a3)<br>    |
| 108|[0x80006534]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==46339<br>                                                                                                                                           |[0x800016f0]:mulhsu a2, a0, a1<br> [0x800016f4]:sw a2, 0x3dc(a3)<br>    |
| 109|[0x80006538]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==65534<br>                                                                                                                                           |[0x80001708]:mulhsu a2, a0, a1<br> [0x8000170c]:sw a2, 0x3e0(a3)<br>    |
| 110|[0x8000653c]<br>0xFFFFC3A9<br> |- rs1_val==-46340 and rs2_val==1431655766<br>                                                                                                                                      |[0x80001720]:mulhsu a2, a0, a1<br> [0x80001724]:sw a2, 0x3e4(a3)<br>    |
| 111|[0x80006540]<br>0xFFFF8752<br> |- rs1_val==-46340 and rs2_val==2863311531<br>                                                                                                                                      |[0x80001738]:mulhsu a2, a0, a1<br> [0x8000173c]:sw a2, 0x3e8(a3)<br>    |
| 112|[0x80006544]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==6<br>                                                                                                                                               |[0x8000174c]:mulhsu a2, a0, a1<br> [0x80001750]:sw a2, 0x3ec(a3)<br>    |
| 113|[0x80006548]<br>0xFFFFDBCB<br> |- rs1_val==-46340 and rs2_val==858993460<br>                                                                                                                                       |[0x80001764]:mulhsu a2, a0, a1<br> [0x80001768]:sw a2, 0x3f0(a3)<br>    |
| 114|[0x8000654c]<br>0xFFFFB797<br> |- rs1_val==-46340 and rs2_val==1717986919<br>                                                                                                                                      |[0x8000177c]:mulhsu a2, a0, a1<br> [0x80001780]:sw a2, 0x3f4(a3)<br>    |
| 115|[0x80006550]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==46341<br>                                                                                                                                           |[0x80001794]:mulhsu a2, a0, a1<br> [0x80001798]:sw a2, 0x3f8(a3)<br>    |
| 116|[0x80006554]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==1<br>                                                                                                                                               |[0x800017a8]:mulhsu a2, a0, a1<br> [0x800017ac]:sw a2, 0x3fc(a3)<br>    |
| 117|[0x80006558]<br>0xFFFFFFFF<br> |- rs1_val==-46340 and rs2_val==65536<br>                                                                                                                                           |[0x800017bc]:mulhsu a2, a0, a1<br> [0x800017c0]:sw a2, 0x400(a3)<br>    |
| 118|[0x8000655c]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==3<br>                                                                                                                                                |[0x800017d0]:mulhsu a2, a0, a1<br> [0x800017d4]:sw a2, 0x404(a3)<br>    |
| 119|[0x80006560]<br>0x00003C56<br> |- rs1_val==46340 and rs2_val==1431655765<br>                                                                                                                                       |[0x800017e8]:mulhsu a2, a0, a1<br> [0x800017ec]:sw a2, 0x408(a3)<br>    |
| 120|[0x80006564]<br>0x000078AD<br> |- rs1_val==46340 and rs2_val==2863311530<br>                                                                                                                                       |[0x80001800]:mulhsu a2, a0, a1<br> [0x80001804]:sw a2, 0x40c(a3)<br>    |
| 121|[0x80006568]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==5<br>                                                                                                                                                |[0x80001814]:mulhsu a2, a0, a1<br> [0x80001818]:sw a2, 0x410(a3)<br>    |
| 122|[0x8000656c]<br>0x00002433<br> |- rs1_val==46340 and rs2_val==858993459<br>                                                                                                                                        |[0x8000182c]:mulhsu a2, a0, a1<br> [0x80001830]:sw a2, 0x414(a3)<br>    |
| 123|[0x80006570]<br>0x00004867<br> |- rs1_val==46340 and rs2_val==1717986918<br>                                                                                                                                       |[0x80001844]:mulhsu a2, a0, a1<br> [0x80001848]:sw a2, 0x418(a3)<br>    |
| 124|[0x80006574]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==46340<br>                                                                                                                                            |[0x8000185c]:mulhsu a2, a0, a1<br> [0x80001860]:sw a2, 0x41c(a3)<br>    |
| 125|[0x80006578]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==0<br>                                                                                                                                                |[0x80001870]:mulhsu a2, a0, a1<br> [0x80001874]:sw a2, 0x420(a3)<br>    |
| 126|[0x8000657c]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==65535<br>                                                                                                                                            |[0x80001888]:mulhsu a2, a0, a1<br> [0x8000188c]:sw a2, 0x424(a3)<br>    |
| 127|[0x80006580]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==2<br>                                                                                                                                                |[0x8000189c]:mulhsu a2, a0, a1<br> [0x800018a0]:sw a2, 0x428(a3)<br>    |
| 128|[0x80006584]<br>0x00003C56<br> |- rs1_val==46340 and rs2_val==1431655764<br>                                                                                                                                       |[0x800018b4]:mulhsu a2, a0, a1<br> [0x800018b8]:sw a2, 0x42c(a3)<br>    |
| 129|[0x80006588]<br>0x000078AD<br> |- rs1_val==46340 and rs2_val==2863311529<br>                                                                                                                                       |[0x800018cc]:mulhsu a2, a0, a1<br> [0x800018d0]:sw a2, 0x430(a3)<br>    |
| 130|[0x8000658c]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==4<br>                                                                                                                                                |[0x800018e0]:mulhsu a2, a0, a1<br> [0x800018e4]:sw a2, 0x434(a3)<br>    |
| 131|[0x80006590]<br>0x00002433<br> |- rs1_val==46340 and rs2_val==858993458<br>                                                                                                                                        |[0x800018f8]:mulhsu a2, a0, a1<br> [0x800018fc]:sw a2, 0x438(a3)<br>    |
| 132|[0x80006594]<br>0x00004867<br> |- rs1_val==46340 and rs2_val==1717986917<br>                                                                                                                                       |[0x80001910]:mulhsu a2, a0, a1<br> [0x80001914]:sw a2, 0x43c(a3)<br>    |
| 133|[0x80006598]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==46339<br>                                                                                                                                            |[0x80001928]:mulhsu a2, a0, a1<br> [0x8000192c]:sw a2, 0x440(a3)<br>    |
| 134|[0x8000659c]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==65534<br>                                                                                                                                            |[0x80001940]:mulhsu a2, a0, a1<br> [0x80001944]:sw a2, 0x444(a3)<br>    |
| 135|[0x800065a0]<br>0x00003C56<br> |- rs1_val==46340 and rs2_val==1431655766<br>                                                                                                                                       |[0x80001958]:mulhsu a2, a0, a1<br> [0x8000195c]:sw a2, 0x448(a3)<br>    |
| 136|[0x800065a4]<br>0x000078AD<br> |- rs1_val==46340 and rs2_val==2863311531<br>                                                                                                                                       |[0x80001970]:mulhsu a2, a0, a1<br> [0x80001974]:sw a2, 0x44c(a3)<br>    |
| 137|[0x800065a8]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==6<br>                                                                                                                                                |[0x80001984]:mulhsu a2, a0, a1<br> [0x80001988]:sw a2, 0x450(a3)<br>    |
| 138|[0x800065ac]<br>0x00002434<br> |- rs1_val==46340 and rs2_val==858993460<br>                                                                                                                                        |[0x8000199c]:mulhsu a2, a0, a1<br> [0x800019a0]:sw a2, 0x454(a3)<br>    |
| 139|[0x800065b0]<br>0x00004868<br> |- rs1_val==46340 and rs2_val==1717986919<br>                                                                                                                                       |[0x800019b4]:mulhsu a2, a0, a1<br> [0x800019b8]:sw a2, 0x458(a3)<br>    |
| 140|[0x800065b4]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==46341<br>                                                                                                                                            |[0x800019cc]:mulhsu a2, a0, a1<br> [0x800019d0]:sw a2, 0x45c(a3)<br>    |
| 141|[0x800065b8]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==1<br>                                                                                                                                                |[0x800019e0]:mulhsu a2, a0, a1<br> [0x800019e4]:sw a2, 0x460(a3)<br>    |
| 142|[0x800065bc]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==65536<br>                                                                                                                                            |[0x800019f4]:mulhsu a2, a0, a1<br> [0x800019f8]:sw a2, 0x464(a3)<br>    |
| 143|[0x800065c0]<br>0x00000000<br> |- rs1_val==2 and rs2_val==3<br>                                                                                                                                                    |[0x80001a04]:mulhsu a2, a0, a1<br> [0x80001a08]:sw a2, 0x468(a3)<br>    |
| 144|[0x800065c4]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1431655765<br>                                                                                                                                           |[0x80001a18]:mulhsu a2, a0, a1<br> [0x80001a1c]:sw a2, 0x46c(a3)<br>    |
| 145|[0x800065c8]<br>0x00000001<br> |- rs1_val==2 and rs2_val==2863311530<br>                                                                                                                                           |[0x80001a2c]:mulhsu a2, a0, a1<br> [0x80001a30]:sw a2, 0x470(a3)<br>    |
| 146|[0x800065cc]<br>0x00000000<br> |- rs1_val==2 and rs2_val==5<br>                                                                                                                                                    |[0x80001a3c]:mulhsu a2, a0, a1<br> [0x80001a40]:sw a2, 0x474(a3)<br>    |
| 147|[0x800065d0]<br>0x00000000<br> |- rs1_val==2 and rs2_val==858993459<br>                                                                                                                                            |[0x80001a50]:mulhsu a2, a0, a1<br> [0x80001a54]:sw a2, 0x478(a3)<br>    |
| 148|[0x800065d4]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1717986918<br>                                                                                                                                           |[0x80001a64]:mulhsu a2, a0, a1<br> [0x80001a68]:sw a2, 0x47c(a3)<br>    |
| 149|[0x800065d8]<br>0x00000000<br> |- rs1_val==2 and rs2_val==46340<br>                                                                                                                                                |[0x80001a78]:mulhsu a2, a0, a1<br> [0x80001a7c]:sw a2, 0x480(a3)<br>    |
| 150|[0x800065dc]<br>0x00000000<br> |- rs1_val==2 and rs2_val==0<br>                                                                                                                                                    |[0x80001a88]:mulhsu a2, a0, a1<br> [0x80001a8c]:sw a2, 0x484(a3)<br>    |
| 151|[0x800065e0]<br>0x00000000<br> |- rs1_val==2 and rs2_val==65535<br>                                                                                                                                                |[0x80001a9c]:mulhsu a2, a0, a1<br> [0x80001aa0]:sw a2, 0x488(a3)<br>    |
| 152|[0x800065e4]<br>0x00000000<br> |- rs1_val==2 and rs2_val==2<br>                                                                                                                                                    |[0x80001aac]:mulhsu a2, a0, a1<br> [0x80001ab0]:sw a2, 0x48c(a3)<br>    |
| 153|[0x800065e8]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1431655764<br>                                                                                                                                           |[0x80001ac0]:mulhsu a2, a0, a1<br> [0x80001ac4]:sw a2, 0x490(a3)<br>    |
| 154|[0x800065ec]<br>0x00000001<br> |- rs1_val==2 and rs2_val==2863311529<br>                                                                                                                                           |[0x80001ad4]:mulhsu a2, a0, a1<br> [0x80001ad8]:sw a2, 0x494(a3)<br>    |
| 155|[0x800065f0]<br>0x00000000<br> |- rs1_val==2 and rs2_val==4<br>                                                                                                                                                    |[0x80001ae4]:mulhsu a2, a0, a1<br> [0x80001ae8]:sw a2, 0x498(a3)<br>    |
| 156|[0x800065f4]<br>0x00000000<br> |- rs1_val==2 and rs2_val==858993458<br>                                                                                                                                            |[0x80001af8]:mulhsu a2, a0, a1<br> [0x80001afc]:sw a2, 0x49c(a3)<br>    |
| 157|[0x800065f8]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1717986917<br>                                                                                                                                           |[0x80001b0c]:mulhsu a2, a0, a1<br> [0x80001b10]:sw a2, 0x4a0(a3)<br>    |
| 158|[0x800065fc]<br>0x00000000<br> |- rs1_val==2 and rs2_val==46339<br>                                                                                                                                                |[0x80001b20]:mulhsu a2, a0, a1<br> [0x80001b24]:sw a2, 0x4a4(a3)<br>    |
| 159|[0x80006600]<br>0x00000000<br> |- rs1_val==2 and rs2_val==65534<br>                                                                                                                                                |[0x80001b34]:mulhsu a2, a0, a1<br> [0x80001b38]:sw a2, 0x4a8(a3)<br>    |
| 160|[0x80006604]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1431655766<br>                                                                                                                                           |[0x80001b48]:mulhsu a2, a0, a1<br> [0x80001b4c]:sw a2, 0x4ac(a3)<br>    |
| 161|[0x80006608]<br>0x00000001<br> |- rs1_val==2 and rs2_val==2863311531<br>                                                                                                                                           |[0x80001b5c]:mulhsu a2, a0, a1<br> [0x80001b60]:sw a2, 0x4b0(a3)<br>    |
| 162|[0x8000660c]<br>0x00000000<br> |- rs1_val==2 and rs2_val==6<br>                                                                                                                                                    |[0x80001b6c]:mulhsu a2, a0, a1<br> [0x80001b70]:sw a2, 0x4b4(a3)<br>    |
| 163|[0x80006610]<br>0x00000000<br> |- rs1_val==2 and rs2_val==858993460<br>                                                                                                                                            |[0x80001b80]:mulhsu a2, a0, a1<br> [0x80001b84]:sw a2, 0x4b8(a3)<br>    |
| 164|[0x80006614]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1717986919<br>                                                                                                                                           |[0x80001b94]:mulhsu a2, a0, a1<br> [0x80001b98]:sw a2, 0x4bc(a3)<br>    |
| 165|[0x80006618]<br>0x00000000<br> |- rs1_val==2 and rs2_val==46341<br>                                                                                                                                                |[0x80001ba8]:mulhsu a2, a0, a1<br> [0x80001bac]:sw a2, 0x4c0(a3)<br>    |
| 166|[0x8000661c]<br>0x00000000<br> |- rs1_val==2 and rs2_val==1<br>                                                                                                                                                    |[0x80001bb8]:mulhsu a2, a0, a1<br> [0x80001bbc]:sw a2, 0x4c4(a3)<br>    |
| 167|[0x80006620]<br>0x00000000<br> |- rs1_val==2 and rs2_val==65536<br>                                                                                                                                                |[0x80001bc8]:mulhsu a2, a0, a1<br> [0x80001bcc]:sw a2, 0x4c8(a3)<br>    |
| 168|[0x80006624]<br>0x00000000<br> |- rs1_val==1431655764 and rs2_val==3<br>                                                                                                                                           |[0x80001bdc]:mulhsu a2, a0, a1<br> [0x80001be0]:sw a2, 0x4cc(a3)<br>    |
| 169|[0x80006628]<br>0x1C71C71B<br> |- rs1_val==1431655764 and rs2_val==1431655765<br>                                                                                                                                  |[0x80001bf4]:mulhsu a2, a0, a1<br> [0x80001bf8]:sw a2, 0x4d0(a3)<br>    |
| 170|[0x8000662c]<br>0x38E38E37<br> |- rs1_val==1431655764 and rs2_val==2863311530<br>                                                                                                                                  |[0x80001c0c]:mulhsu a2, a0, a1<br> [0x80001c10]:sw a2, 0x4d4(a3)<br>    |
| 171|[0x80006630]<br>0x00000001<br> |- rs1_val==1431655764 and rs2_val==5<br>                                                                                                                                           |[0x80001c20]:mulhsu a2, a0, a1<br> [0x80001c24]:sw a2, 0x4d8(a3)<br>    |
| 172|[0x80006634]<br>0x11111110<br> |- rs1_val==1431655764 and rs2_val==858993459<br>                                                                                                                                   |[0x80001c38]:mulhsu a2, a0, a1<br> [0x80001c3c]:sw a2, 0x4dc(a3)<br>    |
| 173|[0x80006638]<br>0x22222221<br> |- rs1_val==1431655764 and rs2_val==1717986918<br>                                                                                                                                  |[0x80001c50]:mulhsu a2, a0, a1<br> [0x80001c54]:sw a2, 0x4e0(a3)<br>    |
| 174|[0x8000663c]<br>0x00003C56<br> |- rs1_val==1431655764 and rs2_val==46340<br>                                                                                                                                       |[0x80001c68]:mulhsu a2, a0, a1<br> [0x80001c6c]:sw a2, 0x4e4(a3)<br>    |
| 175|[0x80006640]<br>0x00000000<br> |- rs1_val==1431655764 and rs2_val==0<br>                                                                                                                                           |[0x80001c7c]:mulhsu a2, a0, a1<br> [0x80001c80]:sw a2, 0x4e8(a3)<br>    |
| 176|[0x80006644]<br>0x00005554<br> |- rs1_val==1431655764 and rs2_val==65535<br>                                                                                                                                       |[0x80001c94]:mulhsu a2, a0, a1<br> [0x80001c98]:sw a2, 0x4ec(a3)<br>    |
| 177|[0x80006648]<br>0x00000000<br> |- rs1_val==1431655764 and rs2_val==2<br>                                                                                                                                           |[0x80001ca8]:mulhsu a2, a0, a1<br> [0x80001cac]:sw a2, 0x4f0(a3)<br>    |
| 178|[0x8000664c]<br>0x1C71C71B<br> |- rs1_val==1431655764 and rs2_val==1431655764<br>                                                                                                                                  |[0x80001cc0]:mulhsu a2, a0, a1<br> [0x80001cc4]:sw a2, 0x4f4(a3)<br>    |
| 179|[0x80006650]<br>0x38E38E37<br> |- rs1_val==1431655764 and rs2_val==2863311529<br>                                                                                                                                  |[0x80001cd8]:mulhsu a2, a0, a1<br> [0x80001cdc]:sw a2, 0x4f8(a3)<br>    |
| 180|[0x80006654]<br>0x00000001<br> |- rs1_val==1431655764 and rs2_val==4<br>                                                                                                                                           |[0x80001cec]:mulhsu a2, a0, a1<br> [0x80001cf0]:sw a2, 0x4fc(a3)<br>    |
| 181|[0x80006658]<br>0x11111110<br> |- rs1_val==1431655764 and rs2_val==858993458<br>                                                                                                                                   |[0x80001d04]:mulhsu a2, a0, a1<br> [0x80001d08]:sw a2, 0x500(a3)<br>    |
| 182|[0x8000665c]<br>0x22222221<br> |- rs1_val==1431655764 and rs2_val==1717986917<br>                                                                                                                                  |[0x80001d1c]:mulhsu a2, a0, a1<br> [0x80001d20]:sw a2, 0x504(a3)<br>    |
| 183|[0x80006660]<br>0x00003C56<br> |- rs1_val==1431655764 and rs2_val==46339<br>                                                                                                                                       |[0x80001d34]:mulhsu a2, a0, a1<br> [0x80001d38]:sw a2, 0x508(a3)<br>    |
| 184|[0x80006664]<br>0x00005554<br> |- rs1_val==1431655764 and rs2_val==65534<br>                                                                                                                                       |[0x80001d4c]:mulhsu a2, a0, a1<br> [0x80001d50]:sw a2, 0x50c(a3)<br>    |
| 185|[0x80006668]<br>0x1C71C71C<br> |- rs1_val==1431655764 and rs2_val==1431655766<br>                                                                                                                                  |[0x80001d64]:mulhsu a2, a0, a1<br> [0x80001d68]:sw a2, 0x510(a3)<br>    |
| 186|[0x8000666c]<br>0x38E38E38<br> |- rs1_val==1431655764 and rs2_val==2863311531<br>                                                                                                                                  |[0x80001d7c]:mulhsu a2, a0, a1<br> [0x80001d80]:sw a2, 0x514(a3)<br>    |
| 187|[0x80006670]<br>0x00000001<br> |- rs1_val==1431655764 and rs2_val==6<br>                                                                                                                                           |[0x80001d90]:mulhsu a2, a0, a1<br> [0x80001d94]:sw a2, 0x518(a3)<br>    |
| 188|[0x80006674]<br>0x11111111<br> |- rs1_val==1431655764 and rs2_val==858993460<br>                                                                                                                                   |[0x80001da8]:mulhsu a2, a0, a1<br> [0x80001dac]:sw a2, 0x51c(a3)<br>    |
| 189|[0x80006678]<br>0x22222221<br> |- rs1_val==1431655764 and rs2_val==1717986919<br>                                                                                                                                  |[0x80001dc0]:mulhsu a2, a0, a1<br> [0x80001dc4]:sw a2, 0x520(a3)<br>    |
| 190|[0x8000667c]<br>0x00003C56<br> |- rs1_val==1431655764 and rs2_val==46341<br>                                                                                                                                       |[0x80001dd8]:mulhsu a2, a0, a1<br> [0x80001ddc]:sw a2, 0x524(a3)<br>    |
| 191|[0x80006680]<br>0x00000000<br> |- rs1_val==1431655764 and rs2_val==1<br>                                                                                                                                           |[0x80001dec]:mulhsu a2, a0, a1<br> [0x80001df0]:sw a2, 0x528(a3)<br>    |
| 192|[0x80006684]<br>0x00005555<br> |- rs1_val==1431655764 and rs2_val==65536<br>                                                                                                                                       |[0x80001e00]:mulhsu a2, a0, a1<br> [0x80001e04]:sw a2, 0x52c(a3)<br>    |
| 193|[0x8000668c]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1431655765<br>                                                                                                                                           |[0x80001e24]:mulhsu a2, a0, a1<br> [0x80001e28]:sw a2, 0x534(a3)<br>    |
| 194|[0x80006690]<br>0x00000000<br> |- rs1_val==0 and rs2_val==2863311530<br>                                                                                                                                           |[0x80001e38]:mulhsu a2, a0, a1<br> [0x80001e3c]:sw a2, 0x538(a3)<br>    |
| 195|[0x80006694]<br>0x00000000<br> |- rs1_val==0 and rs2_val==5<br>                                                                                                                                                    |[0x80001e48]:mulhsu a2, a0, a1<br> [0x80001e4c]:sw a2, 0x53c(a3)<br>    |
| 196|[0x80006698]<br>0x00000000<br> |- rs1_val==0 and rs2_val==858993459<br>                                                                                                                                            |[0x80001e5c]:mulhsu a2, a0, a1<br> [0x80001e60]:sw a2, 0x540(a3)<br>    |
| 197|[0x8000669c]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1717986918<br>                                                                                                                                           |[0x80001e70]:mulhsu a2, a0, a1<br> [0x80001e74]:sw a2, 0x544(a3)<br>    |
| 198|[0x800066a0]<br>0x00000000<br> |- rs1_val==0 and rs2_val==46340<br>                                                                                                                                                |[0x80001e84]:mulhsu a2, a0, a1<br> [0x80001e88]:sw a2, 0x548(a3)<br>    |
| 199|[0x800066a4]<br>0x00000000<br> |- rs1_val==0 and rs2_val==0<br>                                                                                                                                                    |[0x80001e94]:mulhsu a2, a0, a1<br> [0x80001e98]:sw a2, 0x54c(a3)<br>    |
| 200|[0x800066a8]<br>0x00000000<br> |- rs1_val==0 and rs2_val==65535<br>                                                                                                                                                |[0x80001ea8]:mulhsu a2, a0, a1<br> [0x80001eac]:sw a2, 0x550(a3)<br>    |
| 201|[0x800066ac]<br>0x00000000<br> |- rs1_val==0 and rs2_val==2<br>                                                                                                                                                    |[0x80001eb8]:mulhsu a2, a0, a1<br> [0x80001ebc]:sw a2, 0x554(a3)<br>    |
| 202|[0x800066b0]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1431655764<br>                                                                                                                                           |[0x80001ecc]:mulhsu a2, a0, a1<br> [0x80001ed0]:sw a2, 0x558(a3)<br>    |
| 203|[0x800066b4]<br>0x00000000<br> |- rs1_val==0 and rs2_val==2863311529<br>                                                                                                                                           |[0x80001ee0]:mulhsu a2, a0, a1<br> [0x80001ee4]:sw a2, 0x55c(a3)<br>    |
| 204|[0x800066b8]<br>0x00000000<br> |- rs1_val==0 and rs2_val==4<br>                                                                                                                                                    |[0x80001ef0]:mulhsu a2, a0, a1<br> [0x80001ef4]:sw a2, 0x560(a3)<br>    |
| 205|[0x800066bc]<br>0x00000000<br> |- rs1_val==0 and rs2_val==858993458<br>                                                                                                                                            |[0x80001f04]:mulhsu a2, a0, a1<br> [0x80001f08]:sw a2, 0x564(a3)<br>    |
| 206|[0x800066c0]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1717986917<br>                                                                                                                                           |[0x80001f18]:mulhsu a2, a0, a1<br> [0x80001f1c]:sw a2, 0x568(a3)<br>    |
| 207|[0x800066c4]<br>0x00000000<br> |- rs1_val==0 and rs2_val==46339<br>                                                                                                                                                |[0x80001f2c]:mulhsu a2, a0, a1<br> [0x80001f30]:sw a2, 0x56c(a3)<br>    |
| 208|[0x800066c8]<br>0x00000000<br> |- rs1_val==0 and rs2_val==65534<br>                                                                                                                                                |[0x80001f40]:mulhsu a2, a0, a1<br> [0x80001f44]:sw a2, 0x570(a3)<br>    |
| 209|[0x800066cc]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1431655766<br>                                                                                                                                           |[0x80001f54]:mulhsu a2, a0, a1<br> [0x80001f58]:sw a2, 0x574(a3)<br>    |
| 210|[0x800066d0]<br>0x00000000<br> |- rs1_val==0 and rs2_val==2863311531<br>                                                                                                                                           |[0x80001f68]:mulhsu a2, a0, a1<br> [0x80001f6c]:sw a2, 0x578(a3)<br>    |
| 211|[0x800066d4]<br>0x00000000<br> |- rs1_val==0 and rs2_val==6<br>                                                                                                                                                    |[0x80001f78]:mulhsu a2, a0, a1<br> [0x80001f7c]:sw a2, 0x57c(a3)<br>    |
| 212|[0x800066d8]<br>0x00000000<br> |- rs1_val==0 and rs2_val==858993460<br>                                                                                                                                            |[0x80001f8c]:mulhsu a2, a0, a1<br> [0x80001f90]:sw a2, 0x580(a3)<br>    |
| 213|[0x800066dc]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1717986919<br>                                                                                                                                           |[0x80001fa0]:mulhsu a2, a0, a1<br> [0x80001fa4]:sw a2, 0x584(a3)<br>    |
| 214|[0x800066e0]<br>0x00000000<br> |- rs1_val==0 and rs2_val==46341<br>                                                                                                                                                |[0x80001fb4]:mulhsu a2, a0, a1<br> [0x80001fb8]:sw a2, 0x588(a3)<br>    |
| 215|[0x800066e4]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1<br>                                                                                                                                                    |[0x80001fc4]:mulhsu a2, a0, a1<br> [0x80001fc8]:sw a2, 0x58c(a3)<br>    |
| 216|[0x800066e8]<br>0x00000000<br> |- rs1_val==0 and rs2_val==65536<br>                                                                                                                                                |[0x80001fd4]:mulhsu a2, a0, a1<br> [0x80001fd8]:sw a2, 0x590(a3)<br>    |
| 217|[0x800066ec]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1431655765<br>                                                                                                                                           |[0x80001fe8]:mulhsu a2, a0, a1<br> [0x80001fec]:sw a2, 0x594(a3)<br>    |
| 218|[0x800066f0]<br>0x00000002<br> |- rs1_val==4 and rs2_val==2863311530<br>                                                                                                                                           |[0x80001ffc]:mulhsu a2, a0, a1<br> [0x80002000]:sw a2, 0x598(a3)<br>    |
| 219|[0x800066f4]<br>0x00000000<br> |- rs1_val==4 and rs2_val==5<br>                                                                                                                                                    |[0x8000200c]:mulhsu a2, a0, a1<br> [0x80002010]:sw a2, 0x59c(a3)<br>    |
| 220|[0x800066f8]<br>0x00000000<br> |- rs1_val==4 and rs2_val==858993459<br>                                                                                                                                            |[0x80002020]:mulhsu a2, a0, a1<br> [0x80002024]:sw a2, 0x5a0(a3)<br>    |
| 221|[0x800066fc]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1717986918<br>                                                                                                                                           |[0x80002034]:mulhsu a2, a0, a1<br> [0x80002038]:sw a2, 0x5a4(a3)<br>    |
| 222|[0x80006700]<br>0x00000000<br> |- rs1_val==4 and rs2_val==46340<br>                                                                                                                                                |[0x80002048]:mulhsu a2, a0, a1<br> [0x8000204c]:sw a2, 0x5a8(a3)<br>    |
| 223|[0x80006704]<br>0x00000000<br> |- rs1_val==4 and rs2_val==0<br>                                                                                                                                                    |[0x80002058]:mulhsu a2, a0, a1<br> [0x8000205c]:sw a2, 0x5ac(a3)<br>    |
| 224|[0x80006708]<br>0x00000000<br> |- rs1_val==4 and rs2_val==65535<br>                                                                                                                                                |[0x8000206c]:mulhsu a2, a0, a1<br> [0x80002070]:sw a2, 0x5b0(a3)<br>    |
| 225|[0x8000670c]<br>0x00000000<br> |- rs1_val==4 and rs2_val==2<br>                                                                                                                                                    |[0x8000207c]:mulhsu a2, a0, a1<br> [0x80002080]:sw a2, 0x5b4(a3)<br>    |
| 226|[0x80006710]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1431655764<br>                                                                                                                                           |[0x80002090]:mulhsu a2, a0, a1<br> [0x80002094]:sw a2, 0x5b8(a3)<br>    |
| 227|[0x80006714]<br>0x00000002<br> |- rs1_val==4 and rs2_val==2863311529<br>                                                                                                                                           |[0x800020a4]:mulhsu a2, a0, a1<br> [0x800020a8]:sw a2, 0x5bc(a3)<br>    |
| 228|[0x80006718]<br>0x00000000<br> |- rs1_val==4 and rs2_val==4<br>                                                                                                                                                    |[0x800020b4]:mulhsu a2, a0, a1<br> [0x800020b8]:sw a2, 0x5c0(a3)<br>    |
| 229|[0x8000671c]<br>0x00000000<br> |- rs1_val==4 and rs2_val==858993458<br>                                                                                                                                            |[0x800020c8]:mulhsu a2, a0, a1<br> [0x800020cc]:sw a2, 0x5c4(a3)<br>    |
| 230|[0x80006720]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1717986917<br>                                                                                                                                           |[0x800020dc]:mulhsu a2, a0, a1<br> [0x800020e0]:sw a2, 0x5c8(a3)<br>    |
| 231|[0x80006724]<br>0x00000000<br> |- rs1_val==4 and rs2_val==46339<br>                                                                                                                                                |[0x800020f0]:mulhsu a2, a0, a1<br> [0x800020f4]:sw a2, 0x5cc(a3)<br>    |
| 232|[0x80006728]<br>0x00000000<br> |- rs1_val==4 and rs2_val==65534<br>                                                                                                                                                |[0x80002104]:mulhsu a2, a0, a1<br> [0x80002108]:sw a2, 0x5d0(a3)<br>    |
| 233|[0x8000672c]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==46341<br>                                                                                                                                            |[0x8000211c]:mulhsu a2, a0, a1<br> [0x80002120]:sw a2, 0x5d4(a3)<br>    |
| 234|[0x80006730]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==1<br>                                                                                                                                                |[0x80002130]:mulhsu a2, a0, a1<br> [0x80002134]:sw a2, 0x5d8(a3)<br>    |
| 235|[0x80006734]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==65536<br>                                                                                                                                            |[0x80002144]:mulhsu a2, a0, a1<br> [0x80002148]:sw a2, 0x5dc(a3)<br>    |
| 236|[0x80006738]<br>0x00000001<br> |- rs1_val==1431655766 and rs2_val==3<br>                                                                                                                                           |[0x80002158]:mulhsu a2, a0, a1<br> [0x8000215c]:sw a2, 0x5e0(a3)<br>    |
| 237|[0x8000673c]<br>0x1C71C71C<br> |- rs1_val==1431655766 and rs2_val==1431655765<br>                                                                                                                                  |[0x80002170]:mulhsu a2, a0, a1<br> [0x80002174]:sw a2, 0x5e4(a3)<br>    |
| 238|[0x80006740]<br>0x38E38E39<br> |- rs1_val==1431655766 and rs2_val==2863311530<br>                                                                                                                                  |[0x80002188]:mulhsu a2, a0, a1<br> [0x8000218c]:sw a2, 0x5e8(a3)<br>    |
| 239|[0x80006744]<br>0x00000001<br> |- rs1_val==1431655766 and rs2_val==5<br>                                                                                                                                           |[0x8000219c]:mulhsu a2, a0, a1<br> [0x800021a0]:sw a2, 0x5ec(a3)<br>    |
| 240|[0x80006748]<br>0x11111111<br> |- rs1_val==1431655766 and rs2_val==858993459<br>                                                                                                                                   |[0x800021b4]:mulhsu a2, a0, a1<br> [0x800021b8]:sw a2, 0x5f0(a3)<br>    |
| 241|[0x8000674c]<br>0x22222222<br> |- rs1_val==1431655766 and rs2_val==1717986918<br>                                                                                                                                  |[0x800021cc]:mulhsu a2, a0, a1<br> [0x800021d0]:sw a2, 0x5f4(a3)<br>    |
| 242|[0x80006750]<br>0x00003C56<br> |- rs1_val==1431655766 and rs2_val==46340<br>                                                                                                                                       |[0x800021e4]:mulhsu a2, a0, a1<br> [0x800021e8]:sw a2, 0x5f8(a3)<br>    |
| 243|[0x80006754]<br>0x00000000<br> |- rs1_val==1431655766 and rs2_val==0<br>                                                                                                                                           |[0x800021f8]:mulhsu a2, a0, a1<br> [0x800021fc]:sw a2, 0x5fc(a3)<br>    |
| 244|[0x80006758]<br>0x00005555<br> |- rs1_val==1431655766 and rs2_val==65535<br>                                                                                                                                       |[0x80002210]:mulhsu a2, a0, a1<br> [0x80002214]:sw a2, 0x600(a3)<br>    |
| 245|[0x8000675c]<br>0x00000000<br> |- rs1_val==1431655766 and rs2_val==2<br>                                                                                                                                           |[0x80002224]:mulhsu a2, a0, a1<br> [0x80002228]:sw a2, 0x604(a3)<br>    |
| 246|[0x80006760]<br>0x1C71C71C<br> |- rs1_val==1431655766 and rs2_val==1431655764<br>                                                                                                                                  |[0x8000223c]:mulhsu a2, a0, a1<br> [0x80002240]:sw a2, 0x608(a3)<br>    |
| 247|[0x80006764]<br>0x38E38E38<br> |- rs1_val==1431655766 and rs2_val==2863311529<br>                                                                                                                                  |[0x80002254]:mulhsu a2, a0, a1<br> [0x80002258]:sw a2, 0x60c(a3)<br>    |
| 248|[0x80006768]<br>0x00000001<br> |- rs1_val==1431655766 and rs2_val==4<br>                                                                                                                                           |[0x80002268]:mulhsu a2, a0, a1<br> [0x8000226c]:sw a2, 0x610(a3)<br>    |
| 249|[0x8000676c]<br>0x11111110<br> |- rs1_val==1431655766 and rs2_val==858993458<br>                                                                                                                                   |[0x80002280]:mulhsu a2, a0, a1<br> [0x80002284]:sw a2, 0x614(a3)<br>    |
| 250|[0x80006770]<br>0x22222221<br> |- rs1_val==1431655766 and rs2_val==1717986917<br>                                                                                                                                  |[0x80002298]:mulhsu a2, a0, a1<br> [0x8000229c]:sw a2, 0x618(a3)<br>    |
| 251|[0x80006774]<br>0x00003C56<br> |- rs1_val==1431655766 and rs2_val==46339<br>                                                                                                                                       |[0x800022b0]:mulhsu a2, a0, a1<br> [0x800022b4]:sw a2, 0x61c(a3)<br>    |
| 252|[0x80006778]<br>0x00005554<br> |- rs1_val==1431655766 and rs2_val==65534<br>                                                                                                                                       |[0x800022c8]:mulhsu a2, a0, a1<br> [0x800022cc]:sw a2, 0x620(a3)<br>    |
| 253|[0x8000677c]<br>0x1C71C71C<br> |- rs1_val==1431655766 and rs2_val==1431655766<br>                                                                                                                                  |[0x800022e0]:mulhsu a2, a0, a1<br> [0x800022e4]:sw a2, 0x624(a3)<br>    |
| 254|[0x80006780]<br>0x38E38E39<br> |- rs1_val==1431655766 and rs2_val==2863311531<br>                                                                                                                                  |[0x800022f8]:mulhsu a2, a0, a1<br> [0x800022fc]:sw a2, 0x628(a3)<br>    |
| 255|[0x80006784]<br>0x00000002<br> |- rs1_val==1431655766 and rs2_val==6<br>                                                                                                                                           |[0x8000230c]:mulhsu a2, a0, a1<br> [0x80002310]:sw a2, 0x62c(a3)<br>    |
| 256|[0x80006788]<br>0x11111111<br> |- rs1_val==1431655766 and rs2_val==858993460<br>                                                                                                                                   |[0x80002324]:mulhsu a2, a0, a1<br> [0x80002328]:sw a2, 0x630(a3)<br>    |
| 257|[0x8000678c]<br>0x22222222<br> |- rs1_val==1431655766 and rs2_val==1717986919<br>                                                                                                                                  |[0x8000233c]:mulhsu a2, a0, a1<br> [0x80002340]:sw a2, 0x634(a3)<br>    |
| 258|[0x80006790]<br>0x00003C57<br> |- rs1_val==1431655766 and rs2_val==46341<br>                                                                                                                                       |[0x80002354]:mulhsu a2, a0, a1<br> [0x80002358]:sw a2, 0x638(a3)<br>    |
| 259|[0x80006794]<br>0x00000000<br> |- rs1_val==1431655766 and rs2_val==1<br>                                                                                                                                           |[0x80002368]:mulhsu a2, a0, a1<br> [0x8000236c]:sw a2, 0x63c(a3)<br>    |
| 260|[0x80006798]<br>0x00005555<br> |- rs1_val==1431655766 and rs2_val==65536<br>                                                                                                                                       |[0x8000237c]:mulhsu a2, a0, a1<br> [0x80002380]:sw a2, 0x640(a3)<br>    |
| 261|[0x8000679c]<br>0xFFFFFFFF<br> |- rs1_val==-1431655765 and rs2_val==3<br>                                                                                                                                          |[0x80002390]:mulhsu a2, a0, a1<br> [0x80002394]:sw a2, 0x644(a3)<br>    |
| 262|[0x800067a0]<br>0xC71C71C7<br> |- rs1_val==-1431655765 and rs2_val==2863311530<br>                                                                                                                                 |[0x800023a8]:mulhsu a2, a0, a1<br> [0x800023ac]:sw a2, 0x648(a3)<br>    |
| 263|[0x800067a4]<br>0xFFFFFFFE<br> |- rs1_val==-1431655765 and rs2_val==5<br>                                                                                                                                          |[0x800023bc]:mulhsu a2, a0, a1<br> [0x800023c0]:sw a2, 0x64c(a3)<br>    |
| 264|[0x800067a8]<br>0xEEEEEEEF<br> |- rs1_val==-1431655765 and rs2_val==858993459<br>                                                                                                                                  |[0x800023d4]:mulhsu a2, a0, a1<br> [0x800023d8]:sw a2, 0x650(a3)<br>    |
| 265|[0x800067ac]<br>0xDDDDDDDE<br> |- rs1_val==-1431655765 and rs2_val==1717986918<br>                                                                                                                                 |[0x800023ec]:mulhsu a2, a0, a1<br> [0x800023f0]:sw a2, 0x654(a3)<br>    |
| 266|[0x800067b0]<br>0xFFFFC3A9<br> |- rs1_val==-1431655765 and rs2_val==46340<br>                                                                                                                                      |[0x80002404]:mulhsu a2, a0, a1<br> [0x80002408]:sw a2, 0x658(a3)<br>    |
| 267|[0x800067b4]<br>0x00000000<br> |- rs1_val==-1431655765 and rs2_val==0<br>                                                                                                                                          |[0x80002418]:mulhsu a2, a0, a1<br> [0x8000241c]:sw a2, 0x65c(a3)<br>    |
| 268|[0x800067b8]<br>0xFFFFAAAB<br> |- rs1_val==-1431655765 and rs2_val==65535<br>                                                                                                                                      |[0x80002430]:mulhsu a2, a0, a1<br> [0x80002434]:sw a2, 0x660(a3)<br>    |
| 269|[0x800067bc]<br>0xFFFFFFFF<br> |- rs1_val==-1431655765 and rs2_val==2<br>                                                                                                                                          |[0x80002444]:mulhsu a2, a0, a1<br> [0x80002448]:sw a2, 0x664(a3)<br>    |
| 270|[0x800067c0]<br>0xE38E38E4<br> |- rs1_val==-1431655765 and rs2_val==1431655764<br>                                                                                                                                 |[0x8000245c]:mulhsu a2, a0, a1<br> [0x80002460]:sw a2, 0x668(a3)<br>    |
| 271|[0x800067c4]<br>0xC71C71C7<br> |- rs1_val==-1431655765 and rs2_val==2863311529<br>                                                                                                                                 |[0x80002474]:mulhsu a2, a0, a1<br> [0x80002478]:sw a2, 0x66c(a3)<br>    |
| 272|[0x800067c8]<br>0xFFFFFFFE<br> |- rs1_val==-1431655765 and rs2_val==4<br>                                                                                                                                          |[0x80002488]:mulhsu a2, a0, a1<br> [0x8000248c]:sw a2, 0x670(a3)<br>    |
| 273|[0x800067cc]<br>0xEEEEEEEF<br> |- rs1_val==-1431655765 and rs2_val==858993458<br>                                                                                                                                  |[0x800024a0]:mulhsu a2, a0, a1<br> [0x800024a4]:sw a2, 0x674(a3)<br>    |
| 274|[0x800067d0]<br>0xDDDDDDDE<br> |- rs1_val==-1431655765 and rs2_val==1717986917<br>                                                                                                                                 |[0x800024b8]:mulhsu a2, a0, a1<br> [0x800024bc]:sw a2, 0x678(a3)<br>    |
| 275|[0x800067d4]<br>0xFFFFC3A9<br> |- rs1_val==-1431655765 and rs2_val==46339<br>                                                                                                                                      |[0x800024d0]:mulhsu a2, a0, a1<br> [0x800024d4]:sw a2, 0x67c(a3)<br>    |
| 276|[0x800067d8]<br>0xFFFFAAAB<br> |- rs1_val==-1431655765 and rs2_val==65534<br>                                                                                                                                      |[0x800024e8]:mulhsu a2, a0, a1<br> [0x800024ec]:sw a2, 0x680(a3)<br>    |
| 277|[0x800067dc]<br>0xE38E38E3<br> |- rs1_val==-1431655765 and rs2_val==1431655766<br>                                                                                                                                 |[0x80002500]:mulhsu a2, a0, a1<br> [0x80002504]:sw a2, 0x684(a3)<br>    |
| 278|[0x800067e0]<br>0xC71C71C7<br> |- rs1_val==-1431655765 and rs2_val==2863311531<br>                                                                                                                                 |[0x80002518]:mulhsu a2, a0, a1<br> [0x8000251c]:sw a2, 0x688(a3)<br>    |
| 279|[0x800067e4]<br>0xFFFFFFFE<br> |- rs1_val==-1431655765 and rs2_val==6<br>                                                                                                                                          |[0x8000252c]:mulhsu a2, a0, a1<br> [0x80002530]:sw a2, 0x68c(a3)<br>    |
| 280|[0x800067e8]<br>0xEEEEEEEE<br> |- rs1_val==-1431655765 and rs2_val==858993460<br>                                                                                                                                  |[0x80002544]:mulhsu a2, a0, a1<br> [0x80002548]:sw a2, 0x690(a3)<br>    |
| 281|[0x800067ec]<br>0xDDDDDDDD<br> |- rs1_val==-1431655765 and rs2_val==1717986919<br>                                                                                                                                 |[0x8000255c]:mulhsu a2, a0, a1<br> [0x80002560]:sw a2, 0x694(a3)<br>    |
| 282|[0x800067f0]<br>0xFFFFC3A9<br> |- rs1_val==-1431655765 and rs2_val==46341<br>                                                                                                                                      |[0x80002574]:mulhsu a2, a0, a1<br> [0x80002578]:sw a2, 0x698(a3)<br>    |
| 283|[0x800067f4]<br>0xFFFFFFFF<br> |- rs1_val==-1431655765 and rs2_val==1<br>                                                                                                                                          |[0x80002588]:mulhsu a2, a0, a1<br> [0x8000258c]:sw a2, 0x69c(a3)<br>    |
| 284|[0x800067f8]<br>0xFFFFAAAA<br> |- rs1_val==-1431655765 and rs2_val==65536<br>                                                                                                                                      |[0x8000259c]:mulhsu a2, a0, a1<br> [0x800025a0]:sw a2, 0x6a0(a3)<br>    |
| 285|[0x800067fc]<br>0x00000000<br> |- rs1_val==6 and rs2_val==3<br>                                                                                                                                                    |[0x800025ac]:mulhsu a2, a0, a1<br> [0x800025b0]:sw a2, 0x6a4(a3)<br>    |
| 286|[0x80006800]<br>0x00000001<br> |- rs1_val==6 and rs2_val==1431655765<br>                                                                                                                                           |[0x800025c0]:mulhsu a2, a0, a1<br> [0x800025c4]:sw a2, 0x6a8(a3)<br>    |
| 287|[0x80006804]<br>0x00000003<br> |- rs1_val==6 and rs2_val==2863311530<br>                                                                                                                                           |[0x800025d4]:mulhsu a2, a0, a1<br> [0x800025d8]:sw a2, 0x6ac(a3)<br>    |
| 288|[0x80006808]<br>0x00000000<br> |- rs1_val==6 and rs2_val==5<br>                                                                                                                                                    |[0x800025e4]:mulhsu a2, a0, a1<br> [0x800025e8]:sw a2, 0x6b0(a3)<br>    |
| 289|[0x8000680c]<br>0x00000001<br> |- rs1_val==6 and rs2_val==858993459<br>                                                                                                                                            |[0x800025f8]:mulhsu a2, a0, a1<br> [0x800025fc]:sw a2, 0x6b4(a3)<br>    |
| 290|[0x80006810]<br>0x00000002<br> |- rs1_val==6 and rs2_val==1717986918<br>                                                                                                                                           |[0x8000260c]:mulhsu a2, a0, a1<br> [0x80002610]:sw a2, 0x6b8(a3)<br>    |
| 291|[0x80006814]<br>0x00000000<br> |- rs1_val==6 and rs2_val==46340<br>                                                                                                                                                |[0x80002620]:mulhsu a2, a0, a1<br> [0x80002624]:sw a2, 0x6bc(a3)<br>    |
| 292|[0x80006818]<br>0x00000000<br> |- rs1_val==6 and rs2_val==0<br>                                                                                                                                                    |[0x80002630]:mulhsu a2, a0, a1<br> [0x80002634]:sw a2, 0x6c0(a3)<br>    |
| 293|[0x8000681c]<br>0x00000000<br> |- rs1_val==6 and rs2_val==65535<br>                                                                                                                                                |[0x80002644]:mulhsu a2, a0, a1<br> [0x80002648]:sw a2, 0x6c4(a3)<br>    |
| 294|[0x80006820]<br>0x00000000<br> |- rs1_val==6 and rs2_val==2<br>                                                                                                                                                    |[0x80002654]:mulhsu a2, a0, a1<br> [0x80002658]:sw a2, 0x6c8(a3)<br>    |
| 295|[0x80006824]<br>0x00000001<br> |- rs1_val==6 and rs2_val==1431655764<br>                                                                                                                                           |[0x80002668]:mulhsu a2, a0, a1<br> [0x8000266c]:sw a2, 0x6cc(a3)<br>    |
| 296|[0x80006828]<br>0x00000003<br> |- rs1_val==6 and rs2_val==2863311529<br>                                                                                                                                           |[0x8000267c]:mulhsu a2, a0, a1<br> [0x80002680]:sw a2, 0x6d0(a3)<br>    |
| 297|[0x8000682c]<br>0x00000001<br> |- rs1_val==6 and rs2_val==858993458<br>                                                                                                                                            |[0x80002690]:mulhsu a2, a0, a1<br> [0x80002694]:sw a2, 0x6d4(a3)<br>    |
| 298|[0x80006830]<br>0x00000002<br> |- rs1_val==6 and rs2_val==1717986917<br>                                                                                                                                           |[0x800026a4]:mulhsu a2, a0, a1<br> [0x800026a8]:sw a2, 0x6d8(a3)<br>    |
| 299|[0x80006834]<br>0x00000000<br> |- rs1_val==6 and rs2_val==46339<br>                                                                                                                                                |[0x800026b8]:mulhsu a2, a0, a1<br> [0x800026bc]:sw a2, 0x6dc(a3)<br>    |
| 300|[0x80006838]<br>0x00000000<br> |- rs1_val==6 and rs2_val==65534<br>                                                                                                                                                |[0x800026cc]:mulhsu a2, a0, a1<br> [0x800026d0]:sw a2, 0x6e0(a3)<br>    |
| 301|[0x8000683c]<br>0x00000002<br> |- rs1_val==6 and rs2_val==1431655766<br>                                                                                                                                           |[0x800026e0]:mulhsu a2, a0, a1<br> [0x800026e4]:sw a2, 0x6e4(a3)<br>    |
| 302|[0x80006840]<br>0x00000004<br> |- rs1_val==6 and rs2_val==2863311531<br>                                                                                                                                           |[0x800026f4]:mulhsu a2, a0, a1<br> [0x800026f8]:sw a2, 0x6e8(a3)<br>    |
| 303|[0x80006844]<br>0x00000000<br> |- rs1_val==6 and rs2_val==6<br>                                                                                                                                                    |[0x80002704]:mulhsu a2, a0, a1<br> [0x80002708]:sw a2, 0x6ec(a3)<br>    |
| 304|[0x80006848]<br>0x00000001<br> |- rs1_val==6 and rs2_val==858993460<br>                                                                                                                                            |[0x80002718]:mulhsu a2, a0, a1<br> [0x8000271c]:sw a2, 0x6f0(a3)<br>    |
| 305|[0x8000684c]<br>0x00000002<br> |- rs1_val==6 and rs2_val==1717986919<br>                                                                                                                                           |[0x8000272c]:mulhsu a2, a0, a1<br> [0x80002730]:sw a2, 0x6f4(a3)<br>    |
| 306|[0x80006850]<br>0x00000000<br> |- rs1_val==6 and rs2_val==46341<br>                                                                                                                                                |[0x80002740]:mulhsu a2, a0, a1<br> [0x80002744]:sw a2, 0x6f8(a3)<br>    |
| 307|[0x80006854]<br>0x00000000<br> |- rs1_val==6 and rs2_val==1<br>                                                                                                                                                    |[0x80002750]:mulhsu a2, a0, a1<br> [0x80002754]:sw a2, 0x6fc(a3)<br>    |
| 308|[0x80006858]<br>0x00000000<br> |- rs1_val==6 and rs2_val==65536<br>                                                                                                                                                |[0x80002760]:mulhsu a2, a0, a1<br> [0x80002764]:sw a2, 0x700(a3)<br>    |
| 309|[0x8000685c]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==3<br>                                                                                                                                            |[0x80002774]:mulhsu a2, a0, a1<br> [0x80002778]:sw a2, 0x704(a3)<br>    |
| 310|[0x80006860]<br>0x11111111<br> |- rs1_val==858993460 and rs2_val==1431655765<br>                                                                                                                                   |[0x8000278c]:mulhsu a2, a0, a1<br> [0x80002790]:sw a2, 0x708(a3)<br>    |
| 311|[0x80006864]<br>0x22222222<br> |- rs1_val==858993460 and rs2_val==2863311530<br>                                                                                                                                   |[0x800027a4]:mulhsu a2, a0, a1<br> [0x800027a8]:sw a2, 0x70c(a3)<br>    |
| 312|[0x80006868]<br>0x00000001<br> |- rs1_val==858993460 and rs2_val==5<br>                                                                                                                                            |[0x800027b8]:mulhsu a2, a0, a1<br> [0x800027bc]:sw a2, 0x710(a3)<br>    |
| 313|[0x8000686c]<br>0x0A3D70A3<br> |- rs1_val==858993460 and rs2_val==858993459<br>                                                                                                                                    |[0x800027d0]:mulhsu a2, a0, a1<br> [0x800027d4]:sw a2, 0x714(a3)<br>    |
| 314|[0x80006870]<br>0x147AE147<br> |- rs1_val==858993460 and rs2_val==1717986918<br>                                                                                                                                   |[0x800027e8]:mulhsu a2, a0, a1<br> [0x800027ec]:sw a2, 0x718(a3)<br>    |
| 315|[0x80006874]<br>0x00002434<br> |- rs1_val==858993460 and rs2_val==46340<br>                                                                                                                                        |[0x80002800]:mulhsu a2, a0, a1<br> [0x80002804]:sw a2, 0x71c(a3)<br>    |
| 316|[0x80006878]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==0<br>                                                                                                                                            |[0x80002814]:mulhsu a2, a0, a1<br> [0x80002818]:sw a2, 0x720(a3)<br>    |
| 317|[0x8000687c]<br>0x00003333<br> |- rs1_val==858993460 and rs2_val==65535<br>                                                                                                                                        |[0x8000282c]:mulhsu a2, a0, a1<br> [0x80002830]:sw a2, 0x724(a3)<br>    |
| 318|[0x80006880]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==2<br>                                                                                                                                            |[0x80002840]:mulhsu a2, a0, a1<br> [0x80002844]:sw a2, 0x728(a3)<br>    |
| 319|[0x80006884]<br>0x11111111<br> |- rs1_val==858993460 and rs2_val==1431655764<br>                                                                                                                                   |[0x80002858]:mulhsu a2, a0, a1<br> [0x8000285c]:sw a2, 0x72c(a3)<br>    |
| 320|[0x80006888]<br>0x22222222<br> |- rs1_val==858993460 and rs2_val==2863311529<br>                                                                                                                                   |[0x80002870]:mulhsu a2, a0, a1<br> [0x80002874]:sw a2, 0x730(a3)<br>    |
| 321|[0x8000688c]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==4<br>                                                                                                                                            |[0x80002884]:mulhsu a2, a0, a1<br> [0x80002888]:sw a2, 0x734(a3)<br>    |
| 322|[0x80006890]<br>0x0A3D70A3<br> |- rs1_val==858993460 and rs2_val==858993458<br>                                                                                                                                    |[0x8000289c]:mulhsu a2, a0, a1<br> [0x800028a0]:sw a2, 0x738(a3)<br>    |
| 323|[0x80006894]<br>0x147AE147<br> |- rs1_val==858993460 and rs2_val==1717986917<br>                                                                                                                                   |[0x800028b4]:mulhsu a2, a0, a1<br> [0x800028b8]:sw a2, 0x73c(a3)<br>    |
| 324|[0x80006898]<br>0x00002433<br> |- rs1_val==858993460 and rs2_val==46339<br>                                                                                                                                        |[0x800028cc]:mulhsu a2, a0, a1<br> [0x800028d0]:sw a2, 0x740(a3)<br>    |
| 325|[0x8000689c]<br>0x00003332<br> |- rs1_val==858993460 and rs2_val==65534<br>                                                                                                                                        |[0x800028e4]:mulhsu a2, a0, a1<br> [0x800028e8]:sw a2, 0x744(a3)<br>    |
| 326|[0x800068a0]<br>0x11111111<br> |- rs1_val==858993460 and rs2_val==1431655766<br>                                                                                                                                   |[0x800028fc]:mulhsu a2, a0, a1<br> [0x80002900]:sw a2, 0x748(a3)<br>    |
| 327|[0x800068a4]<br>0x22222222<br> |- rs1_val==858993460 and rs2_val==2863311531<br>                                                                                                                                   |[0x80002914]:mulhsu a2, a0, a1<br> [0x80002918]:sw a2, 0x74c(a3)<br>    |
| 328|[0x800068a8]<br>0x00000001<br> |- rs1_val==858993460 and rs2_val==6<br>                                                                                                                                            |[0x80002928]:mulhsu a2, a0, a1<br> [0x8000292c]:sw a2, 0x750(a3)<br>    |
| 329|[0x800068ac]<br>0x0A3D70A4<br> |- rs1_val==858993460 and rs2_val==858993460<br>                                                                                                                                    |[0x80002940]:mulhsu a2, a0, a1<br> [0x80002944]:sw a2, 0x754(a3)<br>    |
| 330|[0x800068b0]<br>0x147AE148<br> |- rs1_val==858993460 and rs2_val==1717986919<br>                                                                                                                                   |[0x80002958]:mulhsu a2, a0, a1<br> [0x8000295c]:sw a2, 0x758(a3)<br>    |
| 331|[0x800068b4]<br>0x00002434<br> |- rs1_val==858993460 and rs2_val==46341<br>                                                                                                                                        |[0x80002970]:mulhsu a2, a0, a1<br> [0x80002974]:sw a2, 0x75c(a3)<br>    |
| 332|[0x800068b8]<br>0x00000000<br> |- rs1_val==858993460 and rs2_val==1<br>                                                                                                                                            |[0x80002984]:mulhsu a2, a0, a1<br> [0x80002988]:sw a2, 0x760(a3)<br>    |
| 333|[0x800068bc]<br>0x00003333<br> |- rs1_val==858993460 and rs2_val==65536<br>                                                                                                                                        |[0x80002998]:mulhsu a2, a0, a1<br> [0x8000299c]:sw a2, 0x764(a3)<br>    |
| 334|[0x800068c0]<br>0x00000001<br> |- rs1_val==1717986919 and rs2_val==3<br>                                                                                                                                           |[0x800029ac]:mulhsu a2, a0, a1<br> [0x800029b0]:sw a2, 0x768(a3)<br>    |
| 335|[0x800068c4]<br>0x22222222<br> |- rs1_val==1717986919 and rs2_val==1431655765<br>                                                                                                                                  |[0x800029c4]:mulhsu a2, a0, a1<br> [0x800029c8]:sw a2, 0x76c(a3)<br>    |
| 336|[0x800068c8]<br>0x44444444<br> |- rs1_val==1717986919 and rs2_val==2863311530<br>                                                                                                                                  |[0x800029dc]:mulhsu a2, a0, a1<br> [0x800029e0]:sw a2, 0x770(a3)<br>    |
| 337|[0x800068cc]<br>0x00000002<br> |- rs1_val==1717986919 and rs2_val==5<br>                                                                                                                                           |[0x800029f0]:mulhsu a2, a0, a1<br> [0x800029f4]:sw a2, 0x774(a3)<br>    |
| 338|[0x800068d0]<br>0x147AE147<br> |- rs1_val==1717986919 and rs2_val==858993459<br>                                                                                                                                   |[0x80002a08]:mulhsu a2, a0, a1<br> [0x80002a0c]:sw a2, 0x778(a3)<br>    |
| 339|[0x800068d4]<br>0x28F5C28F<br> |- rs1_val==1717986919 and rs2_val==1717986918<br>                                                                                                                                  |[0x80002a20]:mulhsu a2, a0, a1<br> [0x80002a24]:sw a2, 0x77c(a3)<br>    |
| 340|[0x800068d8]<br>0x00004868<br> |- rs1_val==1717986919 and rs2_val==46340<br>                                                                                                                                       |[0x80002a38]:mulhsu a2, a0, a1<br> [0x80002a3c]:sw a2, 0x780(a3)<br>    |
| 341|[0x800068dc]<br>0x00000000<br> |- rs1_val==1717986919 and rs2_val==0<br>                                                                                                                                           |[0x80002a4c]:mulhsu a2, a0, a1<br> [0x80002a50]:sw a2, 0x784(a3)<br>    |
| 342|[0x800068e0]<br>0x00006666<br> |- rs1_val==1717986919 and rs2_val==65535<br>                                                                                                                                       |[0x80002a64]:mulhsu a2, a0, a1<br> [0x80002a68]:sw a2, 0x788(a3)<br>    |
| 343|[0x800068e4]<br>0x00000000<br> |- rs1_val==1717986919 and rs2_val==2<br>                                                                                                                                           |[0x80002a78]:mulhsu a2, a0, a1<br> [0x80002a7c]:sw a2, 0x78c(a3)<br>    |
| 344|[0x800068e8]<br>0x22222221<br> |- rs1_val==1717986919 and rs2_val==1431655764<br>                                                                                                                                  |[0x80002a90]:mulhsu a2, a0, a1<br> [0x80002a94]:sw a2, 0x790(a3)<br>    |
| 345|[0x800068ec]<br>0x44444443<br> |- rs1_val==1717986919 and rs2_val==2863311529<br>                                                                                                                                  |[0x80002aa8]:mulhsu a2, a0, a1<br> [0x80002aac]:sw a2, 0x794(a3)<br>    |
| 346|[0x800068f0]<br>0x00000001<br> |- rs1_val==1717986919 and rs2_val==4<br>                                                                                                                                           |[0x80002abc]:mulhsu a2, a0, a1<br> [0x80002ac0]:sw a2, 0x798(a3)<br>    |
| 347|[0x800068f4]<br>0x147AE147<br> |- rs1_val==1717986919 and rs2_val==858993458<br>                                                                                                                                   |[0x80002ad4]:mulhsu a2, a0, a1<br> [0x80002ad8]:sw a2, 0x79c(a3)<br>    |
| 348|[0x800068f8]<br>0x28F5C28F<br> |- rs1_val==1717986919 and rs2_val==1717986917<br>                                                                                                                                  |[0x80002aec]:mulhsu a2, a0, a1<br> [0x80002af0]:sw a2, 0x7a0(a3)<br>    |
| 349|[0x800068fc]<br>0x00004867<br> |- rs1_val==1717986919 and rs2_val==46339<br>                                                                                                                                       |[0x80002b04]:mulhsu a2, a0, a1<br> [0x80002b08]:sw a2, 0x7a4(a3)<br>    |
| 350|[0x80006900]<br>0x00006665<br> |- rs1_val==1717986919 and rs2_val==65534<br>                                                                                                                                       |[0x80002b1c]:mulhsu a2, a0, a1<br> [0x80002b20]:sw a2, 0x7a8(a3)<br>    |
| 351|[0x80006904]<br>0x22222222<br> |- rs1_val==1717986919 and rs2_val==1431655766<br>                                                                                                                                  |[0x80002b34]:mulhsu a2, a0, a1<br> [0x80002b38]:sw a2, 0x7ac(a3)<br>    |
| 352|[0x80006908]<br>0x44444444<br> |- rs1_val==1717986919 and rs2_val==2863311531<br>                                                                                                                                  |[0x80002b4c]:mulhsu a2, a0, a1<br> [0x80002b50]:sw a2, 0x7b0(a3)<br>    |
| 353|[0x8000690c]<br>0x00000002<br> |- rs1_val==1717986919 and rs2_val==6<br>                                                                                                                                           |[0x80002b60]:mulhsu a2, a0, a1<br> [0x80002b64]:sw a2, 0x7b4(a3)<br>    |
| 354|[0x80006910]<br>0x147AE148<br> |- rs1_val==1717986919 and rs2_val==858993460<br>                                                                                                                                   |[0x80002b78]:mulhsu a2, a0, a1<br> [0x80002b7c]:sw a2, 0x7b8(a3)<br>    |
| 355|[0x80006914]<br>0x28F5C28F<br> |- rs1_val==1717986919 and rs2_val==1717986919<br>                                                                                                                                  |[0x80002b90]:mulhsu a2, a0, a1<br> [0x80002b94]:sw a2, 0x7bc(a3)<br>    |
| 356|[0x80006918]<br>0x00004868<br> |- rs1_val==1717986919 and rs2_val==46341<br>                                                                                                                                       |[0x80002ba8]:mulhsu a2, a0, a1<br> [0x80002bac]:sw a2, 0x7c0(a3)<br>    |
| 357|[0x8000691c]<br>0x00000000<br> |- rs1_val==1717986919 and rs2_val==1<br>                                                                                                                                           |[0x80002bbc]:mulhsu a2, a0, a1<br> [0x80002bc0]:sw a2, 0x7c4(a3)<br>    |
| 358|[0x80006920]<br>0x00006666<br> |- rs1_val==1717986919 and rs2_val==65536<br>                                                                                                                                       |[0x80002bd0]:mulhsu a2, a0, a1<br> [0x80002bd4]:sw a2, 0x7c8(a3)<br>    |
| 359|[0x80006924]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==3<br>                                                                                                                                               |[0x80002be4]:mulhsu a2, a0, a1<br> [0x80002be8]:sw a2, 0x7cc(a3)<br>    |
| 360|[0x80006928]<br>0xFFFFC3A9<br> |- rs1_val==-46339 and rs2_val==1431655765<br>                                                                                                                                      |[0x80002bfc]:mulhsu a2, a0, a1<br> [0x80002c00]:sw a2, 0x7d0(a3)<br>    |
| 361|[0x8000692c]<br>0x00002433<br> |- rs1_val==46339 and rs2_val==858993458<br>                                                                                                                                        |[0x80002c14]:mulhsu a2, a0, a1<br> [0x80002c18]:sw a2, 0x7d4(a3)<br>    |
| 362|[0x80006930]<br>0xFFFF8753<br> |- rs1_val==-46339 and rs2_val==2863311530<br>                                                                                                                                      |[0x80002c2c]:mulhsu a2, a0, a1<br> [0x80002c30]:sw a2, 0x7d8(a3)<br>    |
| 363|[0x80006934]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==5<br>                                                                                                                                               |[0x80002c40]:mulhsu a2, a0, a1<br> [0x80002c44]:sw a2, 0x7dc(a3)<br>    |
| 364|[0x80006938]<br>0xFFFFDBCC<br> |- rs1_val==-46339 and rs2_val==858993459<br>                                                                                                                                       |[0x80002c58]:mulhsu a2, a0, a1<br> [0x80002c5c]:sw a2, 0x7e0(a3)<br>    |
| 365|[0x8000693c]<br>0xFFFFB798<br> |- rs1_val==-46339 and rs2_val==1717986918<br>                                                                                                                                      |[0x80002c70]:mulhsu a2, a0, a1<br> [0x80002c74]:sw a2, 0x7e4(a3)<br>    |
| 366|[0x80006940]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==46340<br>                                                                                                                                           |[0x80002c88]:mulhsu a2, a0, a1<br> [0x80002c8c]:sw a2, 0x7e8(a3)<br>    |
| 367|[0x80006944]<br>0x00000000<br> |- rs1_val==-46339 and rs2_val==0<br>                                                                                                                                               |[0x80002c9c]:mulhsu a2, a0, a1<br> [0x80002ca0]:sw a2, 0x7ec(a3)<br>    |
| 368|[0x80006948]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==65535<br>                                                                                                                                           |[0x80002cb4]:mulhsu a2, a0, a1<br> [0x80002cb8]:sw a2, 0x7f0(a3)<br>    |
| 369|[0x8000694c]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==2<br>                                                                                                                                               |[0x80002cc8]:mulhsu a2, a0, a1<br> [0x80002ccc]:sw a2, 0x7f4(a3)<br>    |
| 370|[0x80006950]<br>0xFFFFC3A9<br> |- rs1_val==-46339 and rs2_val==1431655764<br>                                                                                                                                      |[0x80002ce0]:mulhsu a2, a0, a1<br> [0x80002ce4]:sw a2, 0x7f8(a3)<br>    |
| 371|[0x80006954]<br>0xFFFF8753<br> |- rs1_val==-46339 and rs2_val==2863311529<br>                                                                                                                                      |[0x80002cf8]:mulhsu a2, a0, a1<br> [0x80002cfc]:sw a2, 0x7fc(a3)<br>    |
| 372|[0x80006958]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==4<br>                                                                                                                                               |[0x80002d2c]:mulhsu a2, a0, a1<br> [0x80002d30]:sw a2, 0x0(a3)<br>      |
| 373|[0x8000695c]<br>0xFFFFDBCC<br> |- rs1_val==-46339 and rs2_val==858993458<br>                                                                                                                                       |[0x80002d44]:mulhsu a2, a0, a1<br> [0x80002d48]:sw a2, 0x4(a3)<br>      |
| 374|[0x80006960]<br>0xFFFFB798<br> |- rs1_val==-46339 and rs2_val==1717986917<br>                                                                                                                                      |[0x80002d5c]:mulhsu a2, a0, a1<br> [0x80002d60]:sw a2, 0x8(a3)<br>      |
| 375|[0x80006964]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==46339<br>                                                                                                                                           |[0x80002d74]:mulhsu a2, a0, a1<br> [0x80002d78]:sw a2, 0xc(a3)<br>      |
| 376|[0x80006968]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==65534<br>                                                                                                                                           |[0x80002d8c]:mulhsu a2, a0, a1<br> [0x80002d90]:sw a2, 0x10(a3)<br>     |
| 377|[0x8000696c]<br>0xFFFFC3A9<br> |- rs1_val==-46339 and rs2_val==1431655766<br>                                                                                                                                      |[0x80002da4]:mulhsu a2, a0, a1<br> [0x80002da8]:sw a2, 0x14(a3)<br>     |
| 378|[0x80006970]<br>0xFFFF8753<br> |- rs1_val==-46339 and rs2_val==2863311531<br>                                                                                                                                      |[0x80002dbc]:mulhsu a2, a0, a1<br> [0x80002dc0]:sw a2, 0x18(a3)<br>     |
| 379|[0x80006974]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==6<br>                                                                                                                                               |[0x80002dd0]:mulhsu a2, a0, a1<br> [0x80002dd4]:sw a2, 0x1c(a3)<br>     |
| 380|[0x80006978]<br>0xFFFFDBCC<br> |- rs1_val==-46339 and rs2_val==858993460<br>                                                                                                                                       |[0x80002de8]:mulhsu a2, a0, a1<br> [0x80002dec]:sw a2, 0x20(a3)<br>     |
| 381|[0x8000697c]<br>0xFFFFB798<br> |- rs1_val==-46339 and rs2_val==1717986919<br>                                                                                                                                      |[0x80002e00]:mulhsu a2, a0, a1<br> [0x80002e04]:sw a2, 0x24(a3)<br>     |
| 382|[0x80006980]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==46341<br>                                                                                                                                           |[0x80002e18]:mulhsu a2, a0, a1<br> [0x80002e1c]:sw a2, 0x28(a3)<br>     |
| 383|[0x80006984]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==1<br>                                                                                                                                               |[0x80002e2c]:mulhsu a2, a0, a1<br> [0x80002e30]:sw a2, 0x2c(a3)<br>     |
| 384|[0x80006988]<br>0xFFFFFFFF<br> |- rs1_val==-46339 and rs2_val==65536<br>                                                                                                                                           |[0x80002e40]:mulhsu a2, a0, a1<br> [0x80002e44]:sw a2, 0x30(a3)<br>     |
| 385|[0x8000698c]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==3<br>                                                                                                                                                |[0x80002e54]:mulhsu a2, a0, a1<br> [0x80002e58]:sw a2, 0x34(a3)<br>     |
| 386|[0x80006990]<br>0x00003C56<br> |- rs1_val==46341 and rs2_val==1431655765<br>                                                                                                                                       |[0x80002e6c]:mulhsu a2, a0, a1<br> [0x80002e70]:sw a2, 0x38(a3)<br>     |
| 387|[0x80006994]<br>0x000078AD<br> |- rs1_val==46341 and rs2_val==2863311530<br>                                                                                                                                       |[0x80002e84]:mulhsu a2, a0, a1<br> [0x80002e88]:sw a2, 0x3c(a3)<br>     |
| 388|[0x80006998]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==5<br>                                                                                                                                                |[0x80002e98]:mulhsu a2, a0, a1<br> [0x80002e9c]:sw a2, 0x40(a3)<br>     |
| 389|[0x8000699c]<br>0x00002434<br> |- rs1_val==46341 and rs2_val==858993459<br>                                                                                                                                        |[0x80002eb0]:mulhsu a2, a0, a1<br> [0x80002eb4]:sw a2, 0x44(a3)<br>     |
| 390|[0x800069a0]<br>0x00004868<br> |- rs1_val==46341 and rs2_val==1717986918<br>                                                                                                                                       |[0x80002ec8]:mulhsu a2, a0, a1<br> [0x80002ecc]:sw a2, 0x48(a3)<br>     |
| 391|[0x800069a4]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==46340<br>                                                                                                                                            |[0x80002ee0]:mulhsu a2, a0, a1<br> [0x80002ee4]:sw a2, 0x4c(a3)<br>     |
| 392|[0x800069a8]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==0<br>                                                                                                                                                |[0x80002ef4]:mulhsu a2, a0, a1<br> [0x80002ef8]:sw a2, 0x50(a3)<br>     |
| 393|[0x800069ac]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==65535<br>                                                                                                                                            |[0x80002f0c]:mulhsu a2, a0, a1<br> [0x80002f10]:sw a2, 0x54(a3)<br>     |
| 394|[0x800069b0]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==2<br>                                                                                                                                                |[0x80002f20]:mulhsu a2, a0, a1<br> [0x80002f24]:sw a2, 0x58(a3)<br>     |
| 395|[0x800069b4]<br>0x00003C56<br> |- rs1_val==46341 and rs2_val==1431655764<br>                                                                                                                                       |[0x80002f38]:mulhsu a2, a0, a1<br> [0x80002f3c]:sw a2, 0x5c(a3)<br>     |
| 396|[0x800069b8]<br>0x000078AD<br> |- rs1_val==46341 and rs2_val==2863311529<br>                                                                                                                                       |[0x80002f50]:mulhsu a2, a0, a1<br> [0x80002f54]:sw a2, 0x60(a3)<br>     |
| 397|[0x800069bc]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==4<br>                                                                                                                                                |[0x80002f64]:mulhsu a2, a0, a1<br> [0x80002f68]:sw a2, 0x64(a3)<br>     |
| 398|[0x800069c0]<br>0x00002434<br> |- rs1_val==46341 and rs2_val==858993458<br>                                                                                                                                        |[0x80002f7c]:mulhsu a2, a0, a1<br> [0x80002f80]:sw a2, 0x68(a3)<br>     |
| 399|[0x800069c4]<br>0x00004868<br> |- rs1_val==46341 and rs2_val==1717986917<br>                                                                                                                                       |[0x80002f94]:mulhsu a2, a0, a1<br> [0x80002f98]:sw a2, 0x6c(a3)<br>     |
| 400|[0x800069c8]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==46339<br>                                                                                                                                            |[0x80002fac]:mulhsu a2, a0, a1<br> [0x80002fb0]:sw a2, 0x70(a3)<br>     |
| 401|[0x800069cc]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==65534<br>                                                                                                                                            |[0x80002fc4]:mulhsu a2, a0, a1<br> [0x80002fc8]:sw a2, 0x74(a3)<br>     |
| 402|[0x800069d0]<br>0x00003C57<br> |- rs1_val==46341 and rs2_val==1431655766<br>                                                                                                                                       |[0x80002fdc]:mulhsu a2, a0, a1<br> [0x80002fe0]:sw a2, 0x78(a3)<br>     |
| 403|[0x800069d4]<br>0x000078AE<br> |- rs1_val==46341 and rs2_val==2863311531<br>                                                                                                                                       |[0x80002ff4]:mulhsu a2, a0, a1<br> [0x80002ff8]:sw a2, 0x7c(a3)<br>     |
| 404|[0x800069d8]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==6<br>                                                                                                                                                |[0x80003008]:mulhsu a2, a0, a1<br> [0x8000300c]:sw a2, 0x80(a3)<br>     |
| 405|[0x800069dc]<br>0x00002434<br> |- rs1_val==46341 and rs2_val==858993460<br>                                                                                                                                        |[0x80003020]:mulhsu a2, a0, a1<br> [0x80003024]:sw a2, 0x84(a3)<br>     |
| 406|[0x800069e0]<br>0x00004868<br> |- rs1_val==46341 and rs2_val==1717986919<br>                                                                                                                                       |[0x80003038]:mulhsu a2, a0, a1<br> [0x8000303c]:sw a2, 0x88(a3)<br>     |
| 407|[0x800069e4]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==46341<br>                                                                                                                                            |[0x80003050]:mulhsu a2, a0, a1<br> [0x80003054]:sw a2, 0x8c(a3)<br>     |
| 408|[0x800069e8]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==1<br>                                                                                                                                                |[0x80003064]:mulhsu a2, a0, a1<br> [0x80003068]:sw a2, 0x90(a3)<br>     |
| 409|[0x800069ec]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1431655766<br>                                                                                                                                           |[0x80003078]:mulhsu a2, a0, a1<br> [0x8000307c]:sw a2, 0x94(a3)<br>     |
| 410|[0x800069f0]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==65536<br>                                                                                                                                            |[0x8000308c]:mulhsu a2, a0, a1<br> [0x80003090]:sw a2, 0x98(a3)<br>     |
| 411|[0x800069f4]<br>0x00000002<br> |- rs1_val==4 and rs2_val==2863311531<br>                                                                                                                                           |[0x800030a0]:mulhsu a2, a0, a1<br> [0x800030a4]:sw a2, 0x9c(a3)<br>     |
| 412|[0x800069f8]<br>0x00000000<br> |- rs1_val==4 and rs2_val==6<br>                                                                                                                                                    |[0x800030b0]:mulhsu a2, a0, a1<br> [0x800030b4]:sw a2, 0xa0(a3)<br>     |
| 413|[0x800069fc]<br>0x00000000<br> |- rs1_val==4 and rs2_val==858993460<br>                                                                                                                                            |[0x800030c4]:mulhsu a2, a0, a1<br> [0x800030c8]:sw a2, 0xa4(a3)<br>     |
| 414|[0x80006a00]<br>0x00000001<br> |- rs1_val==4 and rs2_val==1717986919<br>                                                                                                                                           |[0x800030d8]:mulhsu a2, a0, a1<br> [0x800030dc]:sw a2, 0xa8(a3)<br>     |
| 415|[0x80006a04]<br>0x00000000<br> |- rs1_val==4 and rs2_val==46341<br>                                                                                                                                                |[0x800030ec]:mulhsu a2, a0, a1<br> [0x800030f0]:sw a2, 0xac(a3)<br>     |
| 416|[0x80006a08]<br>0x00000000<br> |- rs1_val==4 and rs2_val==1<br>                                                                                                                                                    |[0x800030fc]:mulhsu a2, a0, a1<br> [0x80003100]:sw a2, 0xb0(a3)<br>     |
| 417|[0x80006a0c]<br>0x00000000<br> |- rs1_val==4 and rs2_val==65536<br>                                                                                                                                                |[0x8000310c]:mulhsu a2, a0, a1<br> [0x80003110]:sw a2, 0xb4(a3)<br>     |
| 418|[0x80006a10]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==3<br>                                                                                                                                            |[0x80003120]:mulhsu a2, a0, a1<br> [0x80003124]:sw a2, 0xb8(a3)<br>     |
| 419|[0x80006a14]<br>0x11111110<br> |- rs1_val==858993458 and rs2_val==1431655765<br>                                                                                                                                   |[0x80003138]:mulhsu a2, a0, a1<br> [0x8000313c]:sw a2, 0xbc(a3)<br>     |
| 420|[0x80006a18]<br>0x22222221<br> |- rs1_val==858993458 and rs2_val==2863311530<br>                                                                                                                                   |[0x80003150]:mulhsu a2, a0, a1<br> [0x80003154]:sw a2, 0xc0(a3)<br>     |
| 421|[0x80006a1c]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==5<br>                                                                                                                                            |[0x80003164]:mulhsu a2, a0, a1<br> [0x80003168]:sw a2, 0xc4(a3)<br>     |
| 422|[0x80006a20]<br>0x0A3D70A3<br> |- rs1_val==858993458 and rs2_val==858993459<br>                                                                                                                                    |[0x8000317c]:mulhsu a2, a0, a1<br> [0x80003180]:sw a2, 0xc8(a3)<br>     |
| 423|[0x80006a24]<br>0x147AE147<br> |- rs1_val==858993458 and rs2_val==1717986918<br>                                                                                                                                   |[0x80003194]:mulhsu a2, a0, a1<br> [0x80003198]:sw a2, 0xcc(a3)<br>     |
| 424|[0x80006a28]<br>0x00002433<br> |- rs1_val==858993458 and rs2_val==46340<br>                                                                                                                                        |[0x800031ac]:mulhsu a2, a0, a1<br> [0x800031b0]:sw a2, 0xd0(a3)<br>     |
| 425|[0x80006a2c]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==0<br>                                                                                                                                            |[0x800031c0]:mulhsu a2, a0, a1<br> [0x800031c4]:sw a2, 0xd4(a3)<br>     |
| 426|[0x80006a30]<br>0x00003332<br> |- rs1_val==858993458 and rs2_val==65535<br>                                                                                                                                        |[0x800031d8]:mulhsu a2, a0, a1<br> [0x800031dc]:sw a2, 0xd8(a3)<br>     |
| 427|[0x80006a34]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==2<br>                                                                                                                                            |[0x800031ec]:mulhsu a2, a0, a1<br> [0x800031f0]:sw a2, 0xdc(a3)<br>     |
| 428|[0x80006a38]<br>0x11111110<br> |- rs1_val==858993458 and rs2_val==1431655764<br>                                                                                                                                   |[0x80003204]:mulhsu a2, a0, a1<br> [0x80003208]:sw a2, 0xe0(a3)<br>     |
| 429|[0x80006a3c]<br>0x22222221<br> |- rs1_val==858993458 and rs2_val==2863311529<br>                                                                                                                                   |[0x8000321c]:mulhsu a2, a0, a1<br> [0x80003220]:sw a2, 0xe4(a3)<br>     |
| 430|[0x80006a40]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==4<br>                                                                                                                                            |[0x80003230]:mulhsu a2, a0, a1<br> [0x80003234]:sw a2, 0xe8(a3)<br>     |
| 431|[0x80006a44]<br>0x0A3D70A3<br> |- rs1_val==858993458 and rs2_val==858993458<br>                                                                                                                                    |[0x80003248]:mulhsu a2, a0, a1<br> [0x8000324c]:sw a2, 0xec(a3)<br>     |
| 432|[0x80006a48]<br>0x147AE146<br> |- rs1_val==858993458 and rs2_val==1717986917<br>                                                                                                                                   |[0x80003260]:mulhsu a2, a0, a1<br> [0x80003264]:sw a2, 0xf0(a3)<br>     |
| 433|[0x80006a4c]<br>0x00002433<br> |- rs1_val==858993458 and rs2_val==46339<br>                                                                                                                                        |[0x80003278]:mulhsu a2, a0, a1<br> [0x8000327c]:sw a2, 0xf4(a3)<br>     |
| 434|[0x80006a50]<br>0x00003332<br> |- rs1_val==858993458 and rs2_val==65534<br>                                                                                                                                        |[0x80003290]:mulhsu a2, a0, a1<br> [0x80003294]:sw a2, 0xf8(a3)<br>     |
| 435|[0x80006a54]<br>0x11111110<br> |- rs1_val==858993458 and rs2_val==1431655766<br>                                                                                                                                   |[0x800032a8]:mulhsu a2, a0, a1<br> [0x800032ac]:sw a2, 0xfc(a3)<br>     |
| 436|[0x80006a58]<br>0x22222221<br> |- rs1_val==858993458 and rs2_val==2863311531<br>                                                                                                                                   |[0x800032c0]:mulhsu a2, a0, a1<br> [0x800032c4]:sw a2, 0x100(a3)<br>    |
| 437|[0x80006a5c]<br>0x00000001<br> |- rs1_val==858993458 and rs2_val==6<br>                                                                                                                                            |[0x800032d4]:mulhsu a2, a0, a1<br> [0x800032d8]:sw a2, 0x104(a3)<br>    |
| 438|[0x80006a60]<br>0x0A3D70A3<br> |- rs1_val==858993458 and rs2_val==858993460<br>                                                                                                                                    |[0x800032ec]:mulhsu a2, a0, a1<br> [0x800032f0]:sw a2, 0x108(a3)<br>    |
| 439|[0x80006a64]<br>0x147AE147<br> |- rs1_val==858993458 and rs2_val==1717986919<br>                                                                                                                                   |[0x80003304]:mulhsu a2, a0, a1<br> [0x80003308]:sw a2, 0x10c(a3)<br>    |
| 440|[0x80006a68]<br>0x00002434<br> |- rs1_val==858993458 and rs2_val==46341<br>                                                                                                                                        |[0x8000331c]:mulhsu a2, a0, a1<br> [0x80003320]:sw a2, 0x110(a3)<br>    |
| 441|[0x80006a6c]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==1<br>                                                                                                                                            |[0x80003330]:mulhsu a2, a0, a1<br> [0x80003334]:sw a2, 0x114(a3)<br>    |
| 442|[0x80006a70]<br>0x00003333<br> |- rs1_val==858993458 and rs2_val==65536<br>                                                                                                                                        |[0x80003344]:mulhsu a2, a0, a1<br> [0x80003348]:sw a2, 0x118(a3)<br>    |
| 443|[0x80006a74]<br>0x00000001<br> |- rs1_val==1717986917 and rs2_val==3<br>                                                                                                                                           |[0x80003358]:mulhsu a2, a0, a1<br> [0x8000335c]:sw a2, 0x11c(a3)<br>    |
| 444|[0x80006a78]<br>0x22222221<br> |- rs1_val==1717986917 and rs2_val==1431655765<br>                                                                                                                                  |[0x80003370]:mulhsu a2, a0, a1<br> [0x80003374]:sw a2, 0x120(a3)<br>    |
| 445|[0x80006a7c]<br>0x44444443<br> |- rs1_val==1717986917 and rs2_val==2863311530<br>                                                                                                                                  |[0x80003388]:mulhsu a2, a0, a1<br> [0x8000338c]:sw a2, 0x124(a3)<br>    |
| 446|[0x80006a80]<br>0x00000001<br> |- rs1_val==1717986917 and rs2_val==5<br>                                                                                                                                           |[0x8000339c]:mulhsu a2, a0, a1<br> [0x800033a0]:sw a2, 0x128(a3)<br>    |
| 447|[0x80006a84]<br>0x147AE147<br> |- rs1_val==1717986917 and rs2_val==858993459<br>                                                                                                                                   |[0x800033b4]:mulhsu a2, a0, a1<br> [0x800033b8]:sw a2, 0x12c(a3)<br>    |
| 448|[0x80006a88]<br>0x28F5C28E<br> |- rs1_val==1717986917 and rs2_val==1717986918<br>                                                                                                                                  |[0x800033cc]:mulhsu a2, a0, a1<br> [0x800033d0]:sw a2, 0x130(a3)<br>    |
| 449|[0x80006a8c]<br>0x00004867<br> |- rs1_val==1717986917 and rs2_val==46340<br>                                                                                                                                       |[0x800033e4]:mulhsu a2, a0, a1<br> [0x800033e8]:sw a2, 0x134(a3)<br>    |
| 450|[0x80006a90]<br>0x00000000<br> |- rs1_val==1717986917 and rs2_val==0<br>                                                                                                                                           |[0x800033f8]:mulhsu a2, a0, a1<br> [0x800033fc]:sw a2, 0x138(a3)<br>    |
| 451|[0x80006a94]<br>0x00006665<br> |- rs1_val==1717986917 and rs2_val==65535<br>                                                                                                                                       |[0x80003410]:mulhsu a2, a0, a1<br> [0x80003414]:sw a2, 0x13c(a3)<br>    |
| 452|[0x80006a98]<br>0x00000000<br> |- rs1_val==1717986917 and rs2_val==2<br>                                                                                                                                           |[0x80003424]:mulhsu a2, a0, a1<br> [0x80003428]:sw a2, 0x140(a3)<br>    |
| 453|[0x80006a9c]<br>0x22222221<br> |- rs1_val==1717986917 and rs2_val==1431655764<br>                                                                                                                                  |[0x8000343c]:mulhsu a2, a0, a1<br> [0x80003440]:sw a2, 0x144(a3)<br>    |
| 454|[0x80006aa0]<br>0x44444442<br> |- rs1_val==1717986917 and rs2_val==2863311529<br>                                                                                                                                  |[0x80003454]:mulhsu a2, a0, a1<br> [0x80003458]:sw a2, 0x148(a3)<br>    |
| 455|[0x80006aa4]<br>0x00000001<br> |- rs1_val==1717986917 and rs2_val==4<br>                                                                                                                                           |[0x80003468]:mulhsu a2, a0, a1<br> [0x8000346c]:sw a2, 0x14c(a3)<br>    |
| 456|[0x80006aa8]<br>0x147AE146<br> |- rs1_val==1717986917 and rs2_val==858993458<br>                                                                                                                                   |[0x80003480]:mulhsu a2, a0, a1<br> [0x80003484]:sw a2, 0x150(a3)<br>    |
| 457|[0x80006aac]<br>0x28F5C28E<br> |- rs1_val==1717986917 and rs2_val==1717986917<br>                                                                                                                                  |[0x80003498]:mulhsu a2, a0, a1<br> [0x8000349c]:sw a2, 0x154(a3)<br>    |
| 458|[0x80006ab0]<br>0x00004867<br> |- rs1_val==1717986917 and rs2_val==46339<br>                                                                                                                                       |[0x800034b0]:mulhsu a2, a0, a1<br> [0x800034b4]:sw a2, 0x158(a3)<br>    |
| 459|[0x80006ab4]<br>0x00006665<br> |- rs1_val==1717986917 and rs2_val==65534<br>                                                                                                                                       |[0x800034c8]:mulhsu a2, a0, a1<br> [0x800034cc]:sw a2, 0x15c(a3)<br>    |
| 460|[0x80006ab8]<br>0x22222221<br> |- rs1_val==1717986917 and rs2_val==1431655766<br>                                                                                                                                  |[0x800034e0]:mulhsu a2, a0, a1<br> [0x800034e4]:sw a2, 0x160(a3)<br>    |
| 461|[0x80006abc]<br>0x44444443<br> |- rs1_val==1717986917 and rs2_val==2863311531<br>                                                                                                                                  |[0x800034f8]:mulhsu a2, a0, a1<br> [0x800034fc]:sw a2, 0x164(a3)<br>    |
| 462|[0x80006ac0]<br>0x00000002<br> |- rs1_val==1717986917 and rs2_val==6<br>                                                                                                                                           |[0x8000350c]:mulhsu a2, a0, a1<br> [0x80003510]:sw a2, 0x168(a3)<br>    |
| 463|[0x80006ac4]<br>0x147AE147<br> |- rs1_val==1717986917 and rs2_val==858993460<br>                                                                                                                                   |[0x80003524]:mulhsu a2, a0, a1<br> [0x80003528]:sw a2, 0x16c(a3)<br>    |
| 464|[0x80006ac8]<br>0x28F5C28F<br> |- rs1_val==1717986917 and rs2_val==1717986919<br>                                                                                                                                  |[0x8000353c]:mulhsu a2, a0, a1<br> [0x80003540]:sw a2, 0x170(a3)<br>    |
| 465|[0x80006acc]<br>0x00004868<br> |- rs1_val==1717986917 and rs2_val==46341<br>                                                                                                                                       |[0x80003554]:mulhsu a2, a0, a1<br> [0x80003558]:sw a2, 0x174(a3)<br>    |
| 466|[0x80006ad0]<br>0x00000000<br> |- rs1_val==1717986917 and rs2_val==1<br>                                                                                                                                           |[0x80003568]:mulhsu a2, a0, a1<br> [0x8000356c]:sw a2, 0x178(a3)<br>    |
| 467|[0x80006ad4]<br>0x00006666<br> |- rs1_val==1717986917 and rs2_val==65536<br>                                                                                                                                       |[0x8000357c]:mulhsu a2, a0, a1<br> [0x80003580]:sw a2, 0x17c(a3)<br>    |
| 468|[0x80006ad8]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==3<br>                                                                                                                                                |[0x80003590]:mulhsu a2, a0, a1<br> [0x80003594]:sw a2, 0x180(a3)<br>    |
| 469|[0x80006adc]<br>0x00003C56<br> |- rs1_val==46339 and rs2_val==1431655765<br>                                                                                                                                       |[0x800035a8]:mulhsu a2, a0, a1<br> [0x800035ac]:sw a2, 0x184(a3)<br>    |
| 470|[0x80006ae0]<br>0x000078AC<br> |- rs1_val==46339 and rs2_val==2863311530<br>                                                                                                                                       |[0x800035c0]:mulhsu a2, a0, a1<br> [0x800035c4]:sw a2, 0x188(a3)<br>    |
| 471|[0x80006ae4]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==5<br>                                                                                                                                                |[0x800035d4]:mulhsu a2, a0, a1<br> [0x800035d8]:sw a2, 0x18c(a3)<br>    |
| 472|[0x80006ae8]<br>0x00002433<br> |- rs1_val==46339 and rs2_val==858993459<br>                                                                                                                                        |[0x800035ec]:mulhsu a2, a0, a1<br> [0x800035f0]:sw a2, 0x190(a3)<br>    |
| 473|[0x80006aec]<br>0x00004867<br> |- rs1_val==46339 and rs2_val==1717986918<br>                                                                                                                                       |[0x80003604]:mulhsu a2, a0, a1<br> [0x80003608]:sw a2, 0x194(a3)<br>    |
| 474|[0x80006af0]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==46340<br>                                                                                                                                            |[0x8000361c]:mulhsu a2, a0, a1<br> [0x80003620]:sw a2, 0x198(a3)<br>    |
| 475|[0x80006af4]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==65535<br>                                                                                                                                            |[0x80003634]:mulhsu a2, a0, a1<br> [0x80003638]:sw a2, 0x19c(a3)<br>    |
| 476|[0x80006af8]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==2<br>                                                                                                                                                |[0x80003648]:mulhsu a2, a0, a1<br> [0x8000364c]:sw a2, 0x1a0(a3)<br>    |
| 477|[0x80006afc]<br>0x00003C56<br> |- rs1_val==46339 and rs2_val==1431655764<br>                                                                                                                                       |[0x80003660]:mulhsu a2, a0, a1<br> [0x80003664]:sw a2, 0x1a4(a3)<br>    |
| 478|[0x80006b00]<br>0x000078AC<br> |- rs1_val==46339 and rs2_val==2863311529<br>                                                                                                                                       |[0x80003678]:mulhsu a2, a0, a1<br> [0x8000367c]:sw a2, 0x1a8(a3)<br>    |
| 479|[0x80006b04]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==4<br>                                                                                                                                                |[0x8000368c]:mulhsu a2, a0, a1<br> [0x80003690]:sw a2, 0x1ac(a3)<br>    |
| 480|[0x80006b08]<br>0x00004867<br> |- rs1_val==46339 and rs2_val==1717986917<br>                                                                                                                                       |[0x800036a4]:mulhsu a2, a0, a1<br> [0x800036a8]:sw a2, 0x1b0(a3)<br>    |
| 481|[0x80006b0c]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==46339<br>                                                                                                                                            |[0x800036bc]:mulhsu a2, a0, a1<br> [0x800036c0]:sw a2, 0x1b4(a3)<br>    |
| 482|[0x80006b10]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==65534<br>                                                                                                                                            |[0x800036d4]:mulhsu a2, a0, a1<br> [0x800036d8]:sw a2, 0x1b8(a3)<br>    |
| 483|[0x80006b14]<br>0x00003C56<br> |- rs1_val==46339 and rs2_val==1431655766<br>                                                                                                                                       |[0x800036ec]:mulhsu a2, a0, a1<br> [0x800036f0]:sw a2, 0x1bc(a3)<br>    |
| 484|[0x80006b18]<br>0x000078AC<br> |- rs1_val==46339 and rs2_val==2863311531<br>                                                                                                                                       |[0x80003704]:mulhsu a2, a0, a1<br> [0x80003708]:sw a2, 0x1c0(a3)<br>    |
| 485|[0x80006b1c]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==6<br>                                                                                                                                                |[0x80003718]:mulhsu a2, a0, a1<br> [0x8000371c]:sw a2, 0x1c4(a3)<br>    |
| 486|[0x80006b20]<br>0x00002433<br> |- rs1_val==46339 and rs2_val==858993460<br>                                                                                                                                        |[0x80003730]:mulhsu a2, a0, a1<br> [0x80003734]:sw a2, 0x1c8(a3)<br>    |
| 487|[0x80006b24]<br>0x00004867<br> |- rs1_val==46339 and rs2_val==1717986919<br>                                                                                                                                       |[0x80003748]:mulhsu a2, a0, a1<br> [0x8000374c]:sw a2, 0x1cc(a3)<br>    |
| 488|[0x80006b2c]<br>0x80000010<br> |- rs1_val == (-2**(xlen-1))<br>                                                                                                                                                    |[0x8000376c]:mulhsu a2, a0, a1<br> [0x80003770]:sw a2, 0x1d4(a3)<br>    |
