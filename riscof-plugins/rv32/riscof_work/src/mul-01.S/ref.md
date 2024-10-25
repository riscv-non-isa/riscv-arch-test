
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature (completely or partially)
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update the signature completely
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x80000148', '0x800032ac')]      |
| SIG_REGION                | [('0x80006110', '0x80006a40', '588 words')]      |
| COV_LABELS                | mul      |
| TEST_NAME                 | /home/user/Work/New_Repo/riscv-arch-test-PR/riscof-plugins/rv32/riscof_work/src/mul-01.S/ref.S    |
| Total Number of coverpoints| 519     |
| Total Coverpoints Hit     | 519      |
| Total Signature Updates   | 586      |
| STAT1                     | 431      |
| STAT2                     | 155      |
| STAT3                     | 0     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000404]:mul a2, a0, a1
      [0x80000408]:sw a2, 0x38(sp)
 -- Signature Addresses:
      Address: 0x80006194 Data: 0xFF800000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000418]:mul a2, a0, a1
      [0x8000041c]:sw a2, 0x3c(sp)
 -- Signature Addresses:
      Address: 0x80006198 Data: 0xFFC00000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000428]:mul a2, a0, a1
      [0x8000042c]:sw a2, 0x40(sp)
 -- Signature Addresses:
      Address: 0x8000619c Data: 0x01800000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000438]:mul a2, a0, a1
      [0x8000043c]:sw a2, 0x44(sp)
 -- Signature Addresses:
      Address: 0x800061a0 Data: 0xF8000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000448]:mul a2, a0, a1
      [0x8000044c]:sw a2, 0x48(sp)
 -- Signature Addresses:
      Address: 0x800061a4 Data: 0xEE000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000458]:mul a2, a0, a1
      [0x8000045c]:sw a2, 0x4c(sp)
 -- Signature Addresses:
      Address: 0x800061a8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000046c]:mul a2, a0, a1
      [0x80000470]:sw a2, 0x50(sp)
 -- Signature Addresses:
      Address: 0x800061ac Data: 0xF8000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000480]:mul a2, a0, a1
      [0x80000484]:sw a2, 0x54(sp)
 -- Signature Addresses:
      Address: 0x800061b0 Data: 0xF0000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000490]:mul a2, a0, a1
      [0x80000494]:sw a2, 0x58(sp)
 -- Signature Addresses:
      Address: 0x800061b4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004a0]:mul a2, a0, a1
      [0x800004a4]:sw a2, 0x5c(sp)
 -- Signature Addresses:
      Address: 0x800061b8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004b0]:mul a2, a0, a1
      [0x800004b4]:sw a2, 0x60(sp)
 -- Signature Addresses:
      Address: 0x800061bc Data: 0xFFFFFFC0
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004c0]:mul a2, a0, a1
      [0x800004c4]:sw a2, 0x64(sp)
 -- Signature Addresses:
      Address: 0x800061c0 Data: 0xFFFFFD00
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004d0]:mul a2, a0, a1
      [0x800004d4]:sw a2, 0x68(sp)
 -- Signature Addresses:
      Address: 0x800061c4 Data: 0xFFD80000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004e0]:mul a2, a0, a1
      [0x800004e4]:sw a2, 0x6c(sp)
 -- Signature Addresses:
      Address: 0x800061c8 Data: 0xFFFFFFB8
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800004f0]:mul a2, a0, a1
      [0x800004f4]:sw a2, 0x70(sp)
 -- Signature Addresses:
      Address: 0x800061cc Data: 0xFF780000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000500]:mul a2, a0, a1
      [0x80000504]:sw a2, 0x74(sp)
 -- Signature Addresses:
      Address: 0x800061d0 Data: 0x00000063
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000510]:mul a2, a0, a1
      [0x80000514]:sw a2, 0x78(sp)
 -- Signature Addresses:
      Address: 0x800061d4 Data: 0xFFFFFCFD
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000524]:mul a2, a0, a1
      [0x80000528]:sw a2, 0x7c(sp)
 -- Signature Addresses:
      Address: 0x800061d8 Data: 0x00000156
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000534]:mul a2, a0, a1
      [0x80000538]:sw a2, 0x80(sp)
 -- Signature Addresses:
      Address: 0x800061dc Data: 0xFFFFEBFB
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000548]:mul a2, a0, a1
      [0x8000054c]:sw a2, 0x84(sp)
 -- Signature Addresses:
      Address: 0x800061e0 Data: 0x00001002
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000560]:mul a2, a0, a1
      [0x80000564]:sw a2, 0x88(sp)
 -- Signature Addresses:
      Address: 0x800061e4 Data: 0x08001001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000578]:mul a2, a0, a1
      [0x8000057c]:sw a2, 0x8c(sp)
 -- Signature Addresses:
      Address: 0x800061e8 Data: 0x66668CCE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000058c]:mul a2, a0, a1
      [0x80000590]:sw a2, 0x90(sp)
 -- Signature Addresses:
      Address: 0x800061ec Data: 0xFEFFFE00
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005a4]:mul a2, a0, a1
      [0x800005a8]:sw a2, 0x94(sp)
 -- Signature Addresses:
      Address: 0x800061f0 Data: 0xB503B503
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005bc]:mul a2, a0, a1
      [0x800005c0]:sw a2, 0x98(sp)
 -- Signature Addresses:
      Address: 0x800061f4 Data: 0x0000AAAB
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005d0]:mul a2, a0, a1
      [0x800005d4]:sw a2, 0x9c(sp)
 -- Signature Addresses:
      Address: 0x800061f8 Data: 0x000C0003
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800005e8]:mul a2, a0, a1
      [0x800005ec]:sw a2, 0xa0(sp)
 -- Signature Addresses:
      Address: 0x800061fc Data: 0x00084001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000600]:mul a2, a0, a1
      [0x80000604]:sw a2, 0xa4(sp)
 -- Signature Addresses:
      Address: 0x80006200 Data: 0x00300001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000614]:mul a2, a0, a1
      [0x80000618]:sw a2, 0xa8(sp)
 -- Signature Addresses:
      Address: 0x80006204 Data: 0xFFFFC000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000062c]:mul a2, a0, a1
      [0x80000630]:sw a2, 0xac(sp)
 -- Signature Addresses:
      Address: 0x80006208 Data: 0xBEBF4AFB
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000644]:mul a2, a0, a1
      [0x80000648]:sw a2, 0xb0(sp)
 -- Signature Addresses:
      Address: 0x8000620c Data: 0x8200B504
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000065c]:mul a2, a0, a1
      [0x80000660]:sw a2, 0xb4(sp)
 -- Signature Addresses:
      Address: 0x80006210 Data: 0x01001001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000670]:mul a2, a0, a1
      [0x80000674]:sw a2, 0xb8(sp)
 -- Signature Addresses:
      Address: 0x80006214 Data: 0xF5FFFFFB
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000684]:mul a2, a0, a1
      [0x80000688]:sw a2, 0xbc(sp)
 -- Signature Addresses:
      Address: 0x80006218 Data: 0x84000021
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000069c]:mul a2, a0, a1
      [0x800006a0]:sw a2, 0xc0(sp)
 -- Signature Addresses:
      Address: 0x8000621c Data: 0x20020001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006b4]:mul a2, a0, a1
      [0x800006b8]:sw a2, 0xc4(sp)
 -- Signature Addresses:
      Address: 0x80006220 Data: 0x0000B504
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006cc]:mul a2, a0, a1
      [0x800006d0]:sw a2, 0xc8(sp)
 -- Signature Addresses:
      Address: 0x80006224 Data: 0x02AAAAAB
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800006e0]:mul a2, a0, a1
      [0x800006e4]:sw a2, 0xcc(sp)
 -- Signature Addresses:
      Address: 0x80006228 Data: 0x55000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000704]:mul a2, a0, a1
      [0x80000708]:sw a2, 0xd4(sp)
 -- Signature Addresses:
      Address: 0x80006230 Data: 0x00000090
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000714]:mul a2, a0, a1
      [0x80000718]:sw a2, 0xd8(sp)
 -- Signature Addresses:
      Address: 0x80006234 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000724]:mul a2, a0, a1
      [0x80000728]:sw a2, 0xdc(sp)
 -- Signature Addresses:
      Address: 0x80006238 Data: 0xFFFBFC00
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000073c]:mul a2, a0, a1
      [0x80000740]:sw a2, 0xe0(sp)
 -- Signature Addresses:
      Address: 0x8000623c Data: 0x05A82000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000750]:mul a2, a0, a1
      [0x80000754]:sw a2, 0xe4(sp)
 -- Signature Addresses:
      Address: 0x80006240 Data: 0xFF7FF000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000760]:mul a2, a0, a1
      [0x80000764]:sw a2, 0xe8(sp)
 -- Signature Addresses:
      Address: 0x80006244 Data: 0x00006000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000770]:mul a2, a0, a1
      [0x80000774]:sw a2, 0xec(sp)
 -- Signature Addresses:
      Address: 0x80006248 Data: 0x00028000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000780]:mul a2, a0, a1
      [0x80000784]:sw a2, 0xf0(sp)
 -- Signature Addresses:
      Address: 0x8000624c Data: 0xFFF60000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000794]:mul a2, a0, a1
      [0x80000798]:sw a2, 0xf4(sp)
 -- Signature Addresses:
      Address: 0x80006250 Data: 0x6A060000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007a4]:mul a2, a0, a1
      [0x800007a8]:sw a2, 0xf8(sp)
 -- Signature Addresses:
      Address: 0x80006254 Data: 0x00180000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007b4]:mul a2, a0, a1
      [0x800007b8]:sw a2, 0xfc(sp)
 -- Signature Addresses:
      Address: 0x80006258 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007c8]:mul a2, a0, a1
      [0x800007cc]:sw a2, 0x100(sp)
 -- Signature Addresses:
      Address: 0x8000625c Data: 0xFFC00000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007dc]:mul a2, a0, a1
      [0x800007e0]:sw a2, 0x104(sp)
 -- Signature Addresses:
      Address: 0x80006260 Data: 0x32000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800007ec]:mul a2, a0, a1
      [0x800007f0]:sw a2, 0x108(sp)
 -- Signature Addresses:
      Address: 0x80006264 Data: 0x80000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000800]:mul a2, a0, a1
      [0x80000804]:sw a2, 0x10c(sp)
 -- Signature Addresses:
      Address: 0x80006268 Data: 0xFC000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000814]:mul a2, a0, a1
      [0x80000818]:sw a2, 0x110(sp)
 -- Signature Addresses:
      Address: 0x8000626c Data: 0xA8000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000824]:mul a2, a0, a1
      [0x80000828]:sw a2, 0x114(sp)
 -- Signature Addresses:
      Address: 0x80006270 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000834]:mul a2, a0, a1
      [0x80000838]:sw a2, 0x118(sp)
 -- Signature Addresses:
      Address: 0x80006274 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000844]:mul a2, a0, a1
      [0x80000848]:sw a2, 0x11c(sp)
 -- Signature Addresses:
      Address: 0x80006278 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000858]:mul a2, a0, a1
      [0x8000085c]:sw a2, 0x120(sp)
 -- Signature Addresses:
      Address: 0x8000627c Data: 0x00208041
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000868]:mul a2, a0, a1
      [0x8000086c]:sw a2, 0x124(sp)
 -- Signature Addresses:
      Address: 0x80006280 Data: 0x00000204
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000087c]:mul a2, a0, a1
      [0x80000880]:sw a2, 0x128(sp)
 -- Signature Addresses:
      Address: 0x80006284 Data: 0x10100101
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000088c]:mul a2, a0, a1
      [0x80000890]:sw a2, 0x12c(sp)
 -- Signature Addresses:
      Address: 0x80006288 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008a0]:mul a2, a0, a1
      [0x800008a4]:sw a2, 0x130(sp)
 -- Signature Addresses:
      Address: 0x8000628c Data: 0x00048009
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008b4]:mul a2, a0, a1
      [0x800008b8]:sw a2, 0x134(sp)
 -- Signature Addresses:
      Address: 0x80006290 Data: 0xBFFFC000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008cc]:mul a2, a0, a1
      [0x800008d0]:sw a2, 0x138(sp)
 -- Signature Addresses:
      Address: 0x80006294 Data: 0x00300001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008e0]:mul a2, a0, a1
      [0x800008e4]:sw a2, 0x13c(sp)
 -- Signature Addresses:
      Address: 0x80006298 Data: 0x01800003
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800008f4]:mul a2, a0, a1
      [0x800008f8]:sw a2, 0x140(sp)
 -- Signature Addresses:
      Address: 0x8000629c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000090c]:mul a2, a0, a1
      [0x80000910]:sw a2, 0x144(sp)
 -- Signature Addresses:
      Address: 0x800062a0 Data: 0x02000801
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000920]:mul a2, a0, a1
      [0x80000924]:sw a2, 0x148(sp)
 -- Signature Addresses:
      Address: 0x800062a4 Data: 0x30000003
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000934]:mul a2, a0, a1
      [0x80000938]:sw a2, 0x14c(sp)
 -- Signature Addresses:
      Address: 0x800062a8 Data: 0xFE000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000944]:mul a2, a0, a1
      [0x80000948]:sw a2, 0x150(sp)
 -- Signature Addresses:
      Address: 0x800062ac Data: 0x00000009
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000958]:mul a2, a0, a1
      [0x8000095c]:sw a2, 0x154(sp)
 -- Signature Addresses:
      Address: 0x800062b0 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000096c]:mul a2, a0, a1
      [0x80000970]:sw a2, 0x158(sp)
 -- Signature Addresses:
      Address: 0x800062b4 Data: 0xFFFFFFFE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000097c]:mul a2, a0, a1
      [0x80000980]:sw a2, 0x15c(sp)
 -- Signature Addresses:
      Address: 0x800062b8 Data: 0x0000000F
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000990]:mul a2, a0, a1
      [0x80000994]:sw a2, 0x160(sp)
 -- Signature Addresses:
      Address: 0x800062bc Data: 0x99999999
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009a4]:mul a2, a0, a1
      [0x800009a8]:sw a2, 0x164(sp)
 -- Signature Addresses:
      Address: 0x800062c0 Data: 0x33333332
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009b8]:mul a2, a0, a1
      [0x800009bc]:sw a2, 0x168(sp)
 -- Signature Addresses:
      Address: 0x800062c4 Data: 0xFFFDE0F4
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009cc]:mul a2, a0, a1
      [0x800009d0]:sw a2, 0x16c(sp)
 -- Signature Addresses:
      Address: 0x800062c8 Data: 0x00021F0C
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009dc]:mul a2, a0, a1
      [0x800009e0]:sw a2, 0x170(sp)
 -- Signature Addresses:
      Address: 0x800062cc Data: 0x00000006
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800009f0]:mul a2, a0, a1
      [0x800009f4]:sw a2, 0x174(sp)
 -- Signature Addresses:
      Address: 0x800062d0 Data: 0xFFFFFFFC
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a00]:mul a2, a0, a1
      [0x80000a04]:sw a2, 0x178(sp)
 -- Signature Addresses:
      Address: 0x800062d4 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a10]:mul a2, a0, a1
      [0x80000a14]:sw a2, 0x17c(sp)
 -- Signature Addresses:
      Address: 0x800062d8 Data: 0x0000000C
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a24]:mul a2, a0, a1
      [0x80000a28]:sw a2, 0x180(sp)
 -- Signature Addresses:
      Address: 0x800062dc Data: 0x99999996
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a38]:mul a2, a0, a1
      [0x80000a3c]:sw a2, 0x184(sp)
 -- Signature Addresses:
      Address: 0x800062e0 Data: 0x3333332F
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a4c]:mul a2, a0, a1
      [0x80000a50]:sw a2, 0x188(sp)
 -- Signature Addresses:
      Address: 0x800062e4 Data: 0x00021F09
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a60]:mul a2, a0, a1
      [0x80000a64]:sw a2, 0x18c(sp)
 -- Signature Addresses:
      Address: 0x800062e8 Data: 0x00000002
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a74]:mul a2, a0, a1
      [0x80000a78]:sw a2, 0x190(sp)
 -- Signature Addresses:
      Address: 0x800062ec Data: 0x00000001
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a84]:mul a2, a0, a1
      [0x80000a88]:sw a2, 0x194(sp)
 -- Signature Addresses:
      Address: 0x800062f0 Data: 0x00000012
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000a98]:mul a2, a0, a1
      [0x80000a9c]:sw a2, 0x198(sp)
 -- Signature Addresses:
      Address: 0x800062f4 Data: 0x9999999C
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000aac]:mul a2, a0, a1
      [0x80000ab0]:sw a2, 0x19c(sp)
 -- Signature Addresses:
      Address: 0x800062f8 Data: 0x33333335
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ac0]:mul a2, a0, a1
      [0x80000ac4]:sw a2, 0x1a0(sp)
 -- Signature Addresses:
      Address: 0x800062fc Data: 0xFFFDE0F7
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ad4]:mul a2, a0, a1
      [0x80000ad8]:sw a2, 0x1a4(sp)
 -- Signature Addresses:
      Address: 0x80006300 Data: 0x00021F0F
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ae8]:mul a2, a0, a1
      [0x80000aec]:sw a2, 0x1a8(sp)
 -- Signature Addresses:
      Address: 0x80006304 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b00]:mul a2, a0, a1
      [0x80000b04]:sw a2, 0x1ac(sp)
 -- Signature Addresses:
      Address: 0x80006308 Data: 0x38E38E39
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b18]:mul a2, a0, a1
      [0x80000b1c]:sw a2, 0x1b0(sp)
 -- Signature Addresses:
      Address: 0x8000630c Data: 0x71C71C72
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b2c]:mul a2, a0, a1
      [0x80000b30]:sw a2, 0x1b4(sp)
 -- Signature Addresses:
      Address: 0x80006310 Data: 0xAAAAAAA9
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b44]:mul a2, a0, a1
      [0x80000b48]:sw a2, 0x1b8(sp)
 -- Signature Addresses:
      Address: 0x80006314 Data: 0xEEEEEEEF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b5c]:mul a2, a0, a1
      [0x80000b60]:sw a2, 0x1bc(sp)
 -- Signature Addresses:
      Address: 0x80006318 Data: 0xDDDDDDDE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b74]:mul a2, a0, a1
      [0x80000b78]:sw a2, 0x1c0(sp)
 -- Signature Addresses:
      Address: 0x8000631c Data: 0x555591AC
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000b8c]:mul a2, a0, a1
      [0x80000b90]:sw a2, 0x1c4(sp)
 -- Signature Addresses:
      Address: 0x80006320 Data: 0xAAAA6E54
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ba0]:mul a2, a0, a1
      [0x80000ba4]:sw a2, 0x1c8(sp)
 -- Signature Addresses:
      Address: 0x80006324 Data: 0xAAAAAAAA
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bb8]:mul a2, a0, a1
      [0x80000bbc]:sw a2, 0x1cc(sp)
 -- Signature Addresses:
      Address: 0x80006328 Data: 0xE38E38E4
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bcc]:mul a2, a0, a1
      [0x80000bd0]:sw a2, 0x1d0(sp)
 -- Signature Addresses:
      Address: 0x8000632c Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000be0]:mul a2, a0, a1
      [0x80000be4]:sw a2, 0x1d4(sp)
 -- Signature Addresses:
      Address: 0x80006330 Data: 0x55555554
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000bf8]:mul a2, a0, a1
      [0x80000bfc]:sw a2, 0x1d8(sp)
 -- Signature Addresses:
      Address: 0x80006334 Data: 0x9999999A
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c10]:mul a2, a0, a1
      [0x80000c14]:sw a2, 0x1dc(sp)
 -- Signature Addresses:
      Address: 0x80006338 Data: 0x88888889
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c28]:mul a2, a0, a1
      [0x80000c2c]:sw a2, 0x1e0(sp)
 -- Signature Addresses:
      Address: 0x8000633c Data: 0x555518FF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c40]:mul a2, a0, a1
      [0x80000c44]:sw a2, 0x1e4(sp)
 -- Signature Addresses:
      Address: 0x80006340 Data: 0x8E38E38E
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c58]:mul a2, a0, a1
      [0x80000c5c]:sw a2, 0x1e8(sp)
 -- Signature Addresses:
      Address: 0x80006344 Data: 0xC71C71C7
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c6c]:mul a2, a0, a1
      [0x80000c70]:sw a2, 0x1ec(sp)
 -- Signature Addresses:
      Address: 0x80006348 Data: 0xFFFFFFFE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c84]:mul a2, a0, a1
      [0x80000c88]:sw a2, 0x1f0(sp)
 -- Signature Addresses:
      Address: 0x8000634c Data: 0x44444444
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000c9c]:mul a2, a0, a1
      [0x80000ca0]:sw a2, 0x1f4(sp)
 -- Signature Addresses:
      Address: 0x80006350 Data: 0x33333333
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cb4]:mul a2, a0, a1
      [0x80000cb8]:sw a2, 0x1f8(sp)
 -- Signature Addresses:
      Address: 0x80006354 Data: 0xAAAAE701
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ccc]:mul a2, a0, a1
      [0x80000cd0]:sw a2, 0x1fc(sp)
 -- Signature Addresses:
      Address: 0x80006358 Data: 0xFFFFC3A9
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ce0]:mul a2, a0, a1
      [0x80000ce4]:sw a2, 0x200(sp)
 -- Signature Addresses:
      Address: 0x8000635c Data: 0xFFFFFFFE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000cf8]:mul a2, a0, a1
      [0x80000cfc]:sw a2, 0x204(sp)
 -- Signature Addresses:
      Address: 0x80006360 Data: 0x71C71C72
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d10]:mul a2, a0, a1
      [0x80000d14]:sw a2, 0x208(sp)
 -- Signature Addresses:
      Address: 0x80006364 Data: 0xE38E38E4
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val < 0 and rs2_val < 0
      - rs1_val == rs2_val




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d24]:mul a2, a0, a1
      [0x80000d28]:sw a2, 0x20c(sp)
 -- Signature Addresses:
      Address: 0x80006368 Data: 0x55555552
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d3c]:mul a2, a0, a1
      [0x80000d40]:sw a2, 0x210(sp)
 -- Signature Addresses:
      Address: 0x8000636c Data: 0xDDDDDDDE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d54]:mul a2, a0, a1
      [0x80000d58]:sw a2, 0x214(sp)
 -- Signature Addresses:
      Address: 0x80006370 Data: 0xBBBBBBBC
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d6c]:mul a2, a0, a1
      [0x80000d70]:sw a2, 0x218(sp)
 -- Signature Addresses:
      Address: 0x80006374 Data: 0xAAAB2358
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d84]:mul a2, a0, a1
      [0x80000d88]:sw a2, 0x21c(sp)
 -- Signature Addresses:
      Address: 0x80006378 Data: 0x5554DCA8
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d98]:mul a2, a0, a1
      [0x80000d9c]:sw a2, 0x220(sp)
 -- Signature Addresses:
      Address: 0x8000637c Data: 0x55555554
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000db0]:mul a2, a0, a1
      [0x80000db4]:sw a2, 0x224(sp)
 -- Signature Addresses:
      Address: 0x80006380 Data: 0xC71C71C8
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000dc4]:mul a2, a0, a1
      [0x80000dc8]:sw a2, 0x228(sp)
 -- Signature Addresses:
      Address: 0x80006384 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000dd8]:mul a2, a0, a1
      [0x80000ddc]:sw a2, 0x22c(sp)
 -- Signature Addresses:
      Address: 0x80006388 Data: 0xAAAAAAA8
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000df0]:mul a2, a0, a1
      [0x80000df4]:sw a2, 0x230(sp)
 -- Signature Addresses:
      Address: 0x8000638c Data: 0x33333334
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e08]:mul a2, a0, a1
      [0x80000e0c]:sw a2, 0x234(sp)
 -- Signature Addresses:
      Address: 0x80006390 Data: 0x11111112
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e20]:mul a2, a0, a1
      [0x80000e24]:sw a2, 0x238(sp)
 -- Signature Addresses:
      Address: 0x80006394 Data: 0xAAAA31FE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e38]:mul a2, a0, a1
      [0x80000e3c]:sw a2, 0x23c(sp)
 -- Signature Addresses:
      Address: 0x80006398 Data: 0x1C71C71C
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e50]:mul a2, a0, a1
      [0x80000e54]:sw a2, 0x240(sp)
 -- Signature Addresses:
      Address: 0x8000639c Data: 0x8E38E38E
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e64]:mul a2, a0, a1
      [0x80000e68]:sw a2, 0x244(sp)
 -- Signature Addresses:
      Address: 0x800063a0 Data: 0xFFFFFFFC
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e7c]:mul a2, a0, a1
      [0x80000e80]:sw a2, 0x248(sp)
 -- Signature Addresses:
      Address: 0x800063a4 Data: 0x88888888
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000e94]:mul a2, a0, a1
      [0x80000e98]:sw a2, 0x24c(sp)
 -- Signature Addresses:
      Address: 0x800063a8 Data: 0x66666666
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000eac]:mul a2, a0, a1
      [0x80000eb0]:sw a2, 0x250(sp)
 -- Signature Addresses:
      Address: 0x800063ac Data: 0x5555CE02
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ec4]:mul a2, a0, a1
      [0x80000ec8]:sw a2, 0x254(sp)
 -- Signature Addresses:
      Address: 0x800063b0 Data: 0xFFFF8752
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ed4]:mul a2, a0, a1
      [0x80000ed8]:sw a2, 0x258(sp)
 -- Signature Addresses:
      Address: 0x800063b4 Data: 0x0000000F
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000ee8]:mul a2, a0, a1
      [0x80000eec]:sw a2, 0x25c(sp)
 -- Signature Addresses:
      Address: 0x800063b8 Data: 0xAAAAAAA9
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000efc]:mul a2, a0, a1
      [0x80000f00]:sw a2, 0x260(sp)
 -- Signature Addresses:
      Address: 0x800063bc Data: 0x55555552
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f0c]:mul a2, a0, a1
      [0x80000f10]:sw a2, 0x264(sp)
 -- Signature Addresses:
      Address: 0x800063c0 Data: 0x00000019
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val == rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f20]:mul a2, a0, a1
      [0x80000f24]:sw a2, 0x268(sp)
 -- Signature Addresses:
      Address: 0x800063c4 Data: 0xFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f34]:mul a2, a0, a1
      [0x80000f38]:sw a2, 0x26c(sp)
 -- Signature Addresses:
      Address: 0x800063c8 Data: 0xFFFFFFFE
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f48]:mul a2, a0, a1
      [0x80000f4c]:sw a2, 0x270(sp)
 -- Signature Addresses:
      Address: 0x800063cc Data: 0xFFFC76EC
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f5c]:mul a2, a0, a1
      [0x80000f60]:sw a2, 0x274(sp)
 -- Signature Addresses:
      Address: 0x800063d0 Data: 0x00038914
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f6c]:mul a2, a0, a1
      [0x80000f70]:sw a2, 0x278(sp)
 -- Signature Addresses:
      Address: 0x800063d4 Data: 0x0000000A
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f80]:mul a2, a0, a1
      [0x80000f84]:sw a2, 0x27c(sp)
 -- Signature Addresses:
      Address: 0x800063d8 Data: 0xAAAAAAA4
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f90]:mul a2, a0, a1
      [0x80000f94]:sw a2, 0x280(sp)
 -- Signature Addresses:
      Address: 0x800063dc Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fa0]:mul a2, a0, a1
      [0x80000fa4]:sw a2, 0x284(sp)
 -- Signature Addresses:
      Address: 0x800063e0 Data: 0x00000014
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fb4]:mul a2, a0, a1
      [0x80000fb8]:sw a2, 0x288(sp)
 -- Signature Addresses:
      Address: 0x800063e4 Data: 0xFFFFFFFA
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fc8]:mul a2, a0, a1
      [0x80000fcc]:sw a2, 0x28c(sp)
 -- Signature Addresses:
      Address: 0x800063e8 Data: 0xFFFFFFF9
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000fdc]:mul a2, a0, a1
      [0x80000fe0]:sw a2, 0x290(sp)
 -- Signature Addresses:
      Address: 0x800063ec Data: 0x0003890F
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001f5c]:mul a2, a0, a1
      [0x80001f60]:sw a2, 0x56c(sp)
 -- Signature Addresses:
      Address: 0x800066c8 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs2_val == 0
      - rs1_val==858993460 and rs2_val==0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80003270]:mul a2, a0, a1
      [0x80003274]:sw a2, 0xd0(sp)
 -- Signature Addresses:
      Address: 0x80006a2c Data: 0xFFF7FFE0
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val < 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80003280]:mul a2, a0, a1
      [0x80003284]:sw a2, 0xd4(sp)
 -- Signature Addresses:
      Address: 0x80006a30 Data: 0x00012000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val > 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80003290]:mul a2, a0, a1
      [0x80003294]:sw a2, 0xd8(sp)
 -- Signature Addresses:
      Address: 0x80006a34 Data: 0xFFFE0000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
      - rs1 : x10
      - rs2 : x11
      - rd : x12
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_val != rs2_val
      - rs1_val < 0 and rs2_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800032a4]:mul a2, a0, a1
      [0x800032a8]:sw a2, 0xdc(sp)
 -- Signature Addresses:
      Address: 0x80006a38 Data: 0xCCD00000
 -- Redundant Coverpoints hit by the op
      - mnemonic : mul
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

|s.no|           signature           |                                                                     coverpoints                                                                     |                                 code                                 |
|---:|-------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80006114]<br>0x00090000<br> |- mnemonic : mul<br> - rs1 : x31<br> - rs2 : x5<br> - rd : x31<br> - rs1 == rd != rs2<br> - rs1_val != rs2_val<br> - rs1_val > 0 and rs2_val > 0<br> |[0x80000188]:mul t6, t6, t0<br> [0x8000018c]:sw t6, 0x0(tp)<br>       |
|   2|[0x80006118]<br>0x00000400<br> |- rs1 : x21<br> - rs2 : x21<br> - rd : x8<br> - rs1 == rs2 != rd<br> - rs1_val == rs2_val<br>                                                        |[0x80000198]:mul fp, s5, s5<br> [0x8000019c]:sw fp, 0x4(tp)<br>       |
|   3|[0x8000611c]<br>0xFD555555<br> |- rs1 : x11<br> - rs2 : x23<br> - rd : x23<br> - rs2 == rd != rs1<br> - rs1_val < 0 and rs2_val < 0<br>                                              |[0x800001b0]:mul s7, a1, s7<br> [0x800001b4]:sw s7, 0x8(tp)<br>       |
|   4|[0x80006120]<br>0xFFFFF9FD<br> |- rs1 : x14<br> - rs2 : x20<br> - rd : x7<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_val < 0 and rs2_val > 0<br>                        |[0x800001c0]:mul t2, a4, s4<br> [0x800001c4]:sw t2, 0xc(tp)<br>       |
|   5|[0x80006124]<br>0x00000001<br> |- rs1 : x15<br> - rs2 : x15<br> - rd : x15<br> - rs1 == rs2 == rd<br> - rs1_val == 1<br> - rs2_val == 1<br>                                          |[0x800001d0]:mul a5, a5, a5<br> [0x800001d4]:sw a5, 0x10(tp)<br>      |
|   6|[0x80006128]<br>0x80000000<br> |- rs1 : x25<br> - rs2 : x29<br> - rd : x16<br> - rs2_val == (-2**(xlen-1))<br>                                                                       |[0x800001e4]:mul a6, s9, t4<br> [0x800001e8]:sw a6, 0x14(tp)<br>      |
|   7|[0x8000612c]<br>0x00000000<br> |- rs1 : x29<br> - rs2 : x25<br> - rd : x3<br> - rs2_val == 0<br> - rs1_val==1717986917 and rs2_val==0<br>                                            |[0x800001f8]:mul gp, t4, s9<br> [0x800001fc]:sw gp, 0x18(tp)<br>      |
|   8|[0x80006130]<br>0xFFFF4AFC<br> |- rs1 : x23<br> - rs2 : x28<br> - rd : x17<br> - rs2_val == (2**(xlen-1)-1)<br>                                                                      |[0x80000210]:mul a7, s7, t3<br> [0x80000214]:sw a7, 0x1c(tp)<br>      |
|   9|[0x80006134]<br>0x00000002<br> |- rs1 : x2<br> - rs2 : x19<br> - rd : x22<br>                                                                                                        |[0x80000220]:mul s6, sp, s3<br> [0x80000224]:sw s6, 0x20(tp)<br>      |
|  10|[0x80006138]<br>0x80000000<br> |- rs1 : x20<br> - rs2 : x22<br> - rd : x28<br> - rs1_val == (-2**(xlen-1))<br>                                                                       |[0x80000230]:mul t3, s4, s6<br> [0x80000234]:sw t3, 0x24(tp)<br>      |
|  11|[0x8000613c]<br>0x00000000<br> |- rs1 : x3<br> - rs2 : x6<br> - rd : x2<br> - rs1_val == 0<br> - rs1_val==0 and rs2_val==0<br>                                                       |[0x80000240]:mul sp, gp, t1<br> [0x80000244]:sw sp, 0x28(tp)<br>      |
|  12|[0x80006140]<br>0x80000081<br> |- rs1 : x22<br> - rs2 : x11<br> - rd : x5<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val > 0 and rs2_val < 0<br>                                     |[0x80000254]:mul t0, s6, a1<br> [0x80000258]:sw t0, 0x2c(tp)<br>      |
|  13|[0x80006144]<br>0xEFFFFFFF<br> |- rs1 : x7<br> - rs2 : x9<br> - rd : x13<br>                                                                                                         |[0x80000268]:mul a3, t2, s1<br> [0x8000026c]:sw a3, 0x30(tp)<br>      |
|  14|[0x80006148]<br>0x00000100<br> |- rs1 : x10<br> - rs2 : x17<br> - rd : x6<br>                                                                                                        |[0x80000278]:mul t1, a0, a7<br> [0x8000027c]:sw t1, 0x34(tp)<br>      |
|  15|[0x8000614c]<br>0xFFFD2BF4<br> |- rs1 : x1<br> - rs2 : x2<br> - rd : x30<br> - rs1_val==-46339 and rs2_val==4<br>                                                                    |[0x8000028c]:mul t5, ra, sp<br> [0x80000290]:sw t5, 0x38(tp)<br>      |
|  16|[0x80006150]<br>0xFFFFFFF8<br> |- rs1 : x13<br> - rs2 : x1<br> - rd : x25<br>                                                                                                        |[0x800002a0]:mul s9, a3, ra<br> [0x800002a4]:sw s9, 0x3c(tp)<br>      |
|  17|[0x80006154]<br>0xFFFF7FF0<br> |- rs1 : x16<br> - rs2 : x12<br> - rd : x29<br>                                                                                                       |[0x800002b4]:mul t4, a6, a2<br> [0x800002b8]:sw t4, 0x40(tp)<br>      |
|  18|[0x80006158]<br>0x00080000<br> |- rs1 : x27<br> - rs2 : x24<br> - rd : x21<br>                                                                                                       |[0x800002c4]:mul s5, s11, s8<br> [0x800002c8]:sw s5, 0x44(tp)<br>     |
|  19|[0x8000615c]<br>0x002D4100<br> |- rs1 : x19<br> - rs2 : x10<br> - rd : x14<br>                                                                                                       |[0x8000030c]:mul a4, s3, a0<br> [0x80000310]:sw a4, 0x0(sp)<br>       |
|  20|[0x80006160]<br>0xFFFFFD80<br> |- rs1 : x6<br> - rs2 : x14<br> - rd : x26<br>                                                                                                        |[0x8000031c]:mul s10, t1, a4<br> [0x80000320]:sw s10, 0x4(sp)<br>     |
|  21|[0x80006164]<br>0x00000500<br> |- rs1 : x8<br> - rs2 : x18<br> - rd : x12<br>                                                                                                        |[0x8000032c]:mul a2, fp, s2<br> [0x80000330]:sw a2, 0x8(sp)<br>       |
|  22|[0x80006168]<br>0xFFFFFE00<br> |- rs1 : x30<br> - rs2 : x4<br> - rd : x9<br>                                                                                                         |[0x80000340]:mul s1, t5, tp<br> [0x80000344]:sw s1, 0xc(sp)<br>       |
|  23|[0x8000616c]<br>0x00000000<br> |- rs1 : x5<br> - rs2 : x26<br> - rd : x19<br>                                                                                                        |[0x80000350]:mul s3, t0, s10<br> [0x80000354]:sw s3, 0x10(sp)<br>     |
|  24|[0x80006170]<br>0xFFFF7800<br> |- rs1 : x12<br> - rs2 : x13<br> - rd : x18<br>                                                                                                       |[0x80000364]:mul s2, a2, a3<br> [0x80000368]:sw s2, 0x14(sp)<br>      |
|  25|[0x80006174]<br>0x33332000<br> |- rs1 : x18<br> - rs2 : x31<br> - rd : x24<br>                                                                                                       |[0x80000378]:mul s8, s2, t6<br> [0x8000037c]:sw s8, 0x18(sp)<br>      |
|  26|[0x80006178]<br>0x00000000<br> |- rs1 : x9<br> - rs2 : x27<br> - rd : x0<br>                                                                                                         |[0x80000388]:mul zero, s1, s11<br> [0x8000038c]:sw zero, 0x1c(sp)<br> |
|  27|[0x8000617c]<br>0xFFFF8000<br> |- rs1 : x17<br> - rs2 : x8<br> - rd : x11<br>                                                                                                        |[0x80000398]:mul a1, a7, fp<br> [0x8000039c]:sw a1, 0x20(sp)<br>      |
|  28|[0x80006180]<br>0x00000000<br> |- rs1 : x0<br> - rs2 : x16<br> - rd : x10<br>                                                                                                        |[0x800003a8]:mul a0, zero, a6<br> [0x800003ac]:sw a0, 0x24(sp)<br>    |
|  29|[0x80006184]<br>0x55540000<br> |- rs1 : x26<br> - rs2 : x30<br> - rd : x1<br>                                                                                                        |[0x800003bc]:mul ra, s10, t5<br> [0x800003c0]:sw ra, 0x28(sp)<br>     |
|  30|[0x80006188]<br>0x00000000<br> |- rs1 : x4<br> - rs2 : x0<br> - rd : x27<br> - rs1_val==858993460 and rs2_val==0<br>                                                                 |[0x800003d0]:mul s11, tp, zero<br> [0x800003d4]:sw s11, 0x2c(sp)<br>  |
|  31|[0x8000618c]<br>0xFFF80000<br> |- rs1 : x24<br> - rs2 : x7<br> - rd : x20<br>                                                                                                        |[0x800003e0]:mul s4, s8, t2<br> [0x800003e4]:sw s4, 0x30(sp)<br>      |
|  32|[0x80006190]<br>0xFFF00000<br> |- rs1 : x28<br> - rs2 : x3<br> - rd : x4<br>                                                                                                         |[0x800003f4]:mul tp, t3, gp<br> [0x800003f8]:sw tp, 0x34(sp)<br>      |
|  33|[0x8000622c]<br>0x55555550<br> |- rs1_val==4 and rs2_val==1431655764<br>                                                                                                             |[0x800006f4]:mul a2, a0, a1<br> [0x800006f8]:sw a2, 0xd0(sp)<br>      |
|  34|[0x800063f0]<br>0xAAAAAAAE<br> |- rs1_val==5 and rs2_val==1431655766<br>                                                                                                             |[0x80000ff0]:mul a2, a0, a1<br> [0x80000ff4]:sw a2, 0x294(sp)<br>     |
|  35|[0x800063f4]<br>0x55555557<br> |- rs1_val==5 and rs2_val==-1431655765<br>                                                                                                            |[0x80001004]:mul a2, a0, a1<br> [0x80001008]:sw a2, 0x298(sp)<br>     |
|  36|[0x800063f8]<br>0x0000001E<br> |- rs1_val==5 and rs2_val==6<br>                                                                                                                      |[0x80001014]:mul a2, a0, a1<br> [0x80001018]:sw a2, 0x29c(sp)<br>     |
|  37|[0x800063fc]<br>0x00000004<br> |- rs1_val==5 and rs2_val==858993460<br>                                                                                                              |[0x80001028]:mul a2, a0, a1<br> [0x8000102c]:sw a2, 0x2a0(sp)<br>     |
|  38|[0x80006400]<br>0x00000003<br> |- rs1_val==5 and rs2_val==1717986919<br>                                                                                                             |[0x8000103c]:mul a2, a0, a1<br> [0x80001040]:sw a2, 0x2a4(sp)<br>     |
|  39|[0x80006404]<br>0xFFFC76F1<br> |- rs1_val==5 and rs2_val==-46339<br>                                                                                                                 |[0x80001050]:mul a2, a0, a1<br> [0x80001054]:sw a2, 0x2a8(sp)<br>     |
|  40|[0x80006408]<br>0x00038919<br> |- rs1_val==5 and rs2_val==46341<br>                                                                                                                  |[0x80001064]:mul a2, a0, a1<br> [0x80001068]:sw a2, 0x2ac(sp)<br>     |
|  41|[0x8000640c]<br>0x99999999<br> |- rs1_val==858993459 and rs2_val==3<br>                                                                                                              |[0x80001078]:mul a2, a0, a1<br> [0x8000107c]:sw a2, 0x2b0(sp)<br>     |
|  42|[0x80006410]<br>0xEEEEEEEF<br> |- rs1_val==858993459 and rs2_val==1431655765<br>                                                                                                     |[0x80001090]:mul a2, a0, a1<br> [0x80001094]:sw a2, 0x2b4(sp)<br>     |
|  43|[0x80006414]<br>0xDDDDDDDE<br> |- rs1_val==858993459 and rs2_val==-1431655766<br>                                                                                                    |[0x800010a8]:mul a2, a0, a1<br> [0x800010ac]:sw a2, 0x2b8(sp)<br>     |
|  44|[0x80006418]<br>0xFFFFFFFF<br> |- rs1_val==858993459 and rs2_val==5<br>                                                                                                              |[0x800010bc]:mul a2, a0, a1<br> [0x800010c0]:sw a2, 0x2bc(sp)<br>     |
|  45|[0x8000641c]<br>0xC28F5C29<br> |- rs1_val==858993459 and rs2_val==858993459<br>                                                                                                      |[0x800010d4]:mul a2, a0, a1<br> [0x800010d8]:sw a2, 0x2c0(sp)<br>     |
|  46|[0x80006420]<br>0x851EB852<br> |- rs1_val==858993459 and rs2_val==1717986918<br>                                                                                                     |[0x800010ec]:mul a2, a0, a1<br> [0x800010f0]:sw a2, 0x2c4(sp)<br>     |
|  47|[0x80006424]<br>0x00002434<br> |- rs1_val==858993459 and rs2_val==-46340<br>                                                                                                         |[0x80001104]:mul a2, a0, a1<br> [0x80001108]:sw a2, 0x2c8(sp)<br>     |
|  48|[0x80006428]<br>0xFFFFDBCC<br> |- rs1_val==858993459 and rs2_val==46340<br>                                                                                                          |[0x8000111c]:mul a2, a0, a1<br> [0x80001120]:sw a2, 0x2cc(sp)<br>     |
|  49|[0x8000642c]<br>0x66666666<br> |- rs1_val==858993459 and rs2_val==2<br>                                                                                                              |[0x80001130]:mul a2, a0, a1<br> [0x80001134]:sw a2, 0x2d0(sp)<br>     |
|  50|[0x80006430]<br>0xBBBBBBBC<br> |- rs1_val==858993459 and rs2_val==1431655764<br>                                                                                                     |[0x80001148]:mul a2, a0, a1<br> [0x8000114c]:sw a2, 0x2d4(sp)<br>     |
|  51|[0x80006434]<br>0x00000000<br> |- rs1_val==858993459 and rs2_val==0<br>                                                                                                              |[0x8000115c]:mul a2, a0, a1<br> [0x80001160]:sw a2, 0x2d8(sp)<br>     |
|  52|[0x80006438]<br>0xCCCCCCCC<br> |- rs1_val==858993459 and rs2_val==4<br>                                                                                                              |[0x80001170]:mul a2, a0, a1<br> [0x80001174]:sw a2, 0x2dc(sp)<br>     |
|  53|[0x8000643c]<br>0x8F5C28F6<br> |- rs1_val==858993459 and rs2_val==858993458<br>                                                                                                      |[0x80001188]:mul a2, a0, a1<br> [0x8000118c]:sw a2, 0x2e0(sp)<br>     |
|  54|[0x80006440]<br>0x51EB851F<br> |- rs1_val==858993459 and rs2_val==1717986917<br>                                                                                                     |[0x800011a0]:mul a2, a0, a1<br> [0x800011a4]:sw a2, 0x2e4(sp)<br>     |
|  55|[0x80006444]<br>0xCCCCA899<br> |- rs1_val==858993459 and rs2_val==46339<br>                                                                                                          |[0x800011b8]:mul a2, a0, a1<br> [0x800011bc]:sw a2, 0x2e8(sp)<br>     |
|  56|[0x80006448]<br>0x22222222<br> |- rs1_val==858993459 and rs2_val==1431655766<br>                                                                                                     |[0x800011d0]:mul a2, a0, a1<br> [0x800011d4]:sw a2, 0x2ec(sp)<br>     |
|  57|[0x8000644c]<br>0x11111111<br> |- rs1_val==858993459 and rs2_val==-1431655765<br>                                                                                                    |[0x800011e8]:mul a2, a0, a1<br> [0x800011ec]:sw a2, 0x2f0(sp)<br>     |
|  58|[0x80006450]<br>0x33333332<br> |- rs1_val==858993459 and rs2_val==6<br>                                                                                                              |[0x800011fc]:mul a2, a0, a1<br> [0x80001200]:sw a2, 0x2f4(sp)<br>     |
|  59|[0x80006454]<br>0xF5C28F5C<br> |- rs1_val==858993459 and rs2_val==858993460<br>                                                                                                      |[0x80001214]:mul a2, a0, a1<br> [0x80001218]:sw a2, 0x2f8(sp)<br>     |
|  60|[0x80006458]<br>0xB851EB85<br> |- rs1_val==858993459 and rs2_val==1717986919<br>                                                                                                     |[0x8000122c]:mul a2, a0, a1<br> [0x80001230]:sw a2, 0x2fc(sp)<br>     |
|  61|[0x8000645c]<br>0x33335767<br> |- rs1_val==858993459 and rs2_val==-46339<br>                                                                                                         |[0x80001244]:mul a2, a0, a1<br> [0x80001248]:sw a2, 0x300(sp)<br>     |
|  62|[0x80006460]<br>0x33330EFF<br> |- rs1_val==858993459 and rs2_val==46341<br>                                                                                                          |[0x8000125c]:mul a2, a0, a1<br> [0x80001260]:sw a2, 0x304(sp)<br>     |
|  63|[0x80006464]<br>0x33333332<br> |- rs1_val==1717986918 and rs2_val==3<br>                                                                                                             |[0x80001270]:mul a2, a0, a1<br> [0x80001274]:sw a2, 0x308(sp)<br>     |
|  64|[0x80006468]<br>0xDDDDDDDE<br> |- rs1_val==1717986918 and rs2_val==1431655765<br>                                                                                                    |[0x80001288]:mul a2, a0, a1<br> [0x8000128c]:sw a2, 0x30c(sp)<br>     |
|  65|[0x8000646c]<br>0xBBBBBBBC<br> |- rs1_val==1717986918 and rs2_val==-1431655766<br>                                                                                                   |[0x800012a0]:mul a2, a0, a1<br> [0x800012a4]:sw a2, 0x310(sp)<br>     |
|  66|[0x80006470]<br>0xFFFFFFFE<br> |- rs1_val==1717986918 and rs2_val==5<br>                                                                                                             |[0x800012b4]:mul a2, a0, a1<br> [0x800012b8]:sw a2, 0x314(sp)<br>     |
|  67|[0x80006474]<br>0x851EB852<br> |- rs1_val==1717986918 and rs2_val==858993459<br>                                                                                                     |[0x800012cc]:mul a2, a0, a1<br> [0x800012d0]:sw a2, 0x318(sp)<br>     |
|  68|[0x80006478]<br>0x0A3D70A4<br> |- rs1_val==1717986918 and rs2_val==1717986918<br>                                                                                                    |[0x800012e4]:mul a2, a0, a1<br> [0x800012e8]:sw a2, 0x31c(sp)<br>     |
|  69|[0x8000647c]<br>0x00004868<br> |- rs1_val==1717986918 and rs2_val==-46340<br>                                                                                                        |[0x800012fc]:mul a2, a0, a1<br> [0x80001300]:sw a2, 0x320(sp)<br>     |
|  70|[0x80006480]<br>0xFFFFB798<br> |- rs1_val==1717986918 and rs2_val==46340<br>                                                                                                         |[0x80001314]:mul a2, a0, a1<br> [0x80001318]:sw a2, 0x324(sp)<br>     |
|  71|[0x80006484]<br>0xCCCCCCCC<br> |- rs1_val==1717986918 and rs2_val==2<br>                                                                                                             |[0x80001328]:mul a2, a0, a1<br> [0x8000132c]:sw a2, 0x328(sp)<br>     |
|  72|[0x80006488]<br>0x77777778<br> |- rs1_val==1717986918 and rs2_val==1431655764<br>                                                                                                    |[0x80001340]:mul a2, a0, a1<br> [0x80001344]:sw a2, 0x32c(sp)<br>     |
|  73|[0x8000648c]<br>0x00000000<br> |- rs1_val==1717986918 and rs2_val==0<br>                                                                                                             |[0x80001354]:mul a2, a0, a1<br> [0x80001358]:sw a2, 0x330(sp)<br>     |
|  74|[0x80006490]<br>0x99999998<br> |- rs1_val==1717986918 and rs2_val==4<br>                                                                                                             |[0x80001368]:mul a2, a0, a1<br> [0x8000136c]:sw a2, 0x334(sp)<br>     |
|  75|[0x80006494]<br>0x1EB851EC<br> |- rs1_val==1717986918 and rs2_val==858993458<br>                                                                                                     |[0x80001380]:mul a2, a0, a1<br> [0x80001384]:sw a2, 0x338(sp)<br>     |
|  76|[0x80006498]<br>0xA3D70A3E<br> |- rs1_val==1717986918 and rs2_val==1717986917<br>                                                                                                    |[0x80001398]:mul a2, a0, a1<br> [0x8000139c]:sw a2, 0x33c(sp)<br>     |
|  77|[0x8000649c]<br>0x99995132<br> |- rs1_val==1717986918 and rs2_val==46339<br>                                                                                                         |[0x800013b0]:mul a2, a0, a1<br> [0x800013b4]:sw a2, 0x340(sp)<br>     |
|  78|[0x800064a0]<br>0x44444444<br> |- rs1_val==1717986918 and rs2_val==1431655766<br>                                                                                                    |[0x800013c8]:mul a2, a0, a1<br> [0x800013cc]:sw a2, 0x344(sp)<br>     |
|  79|[0x800064a4]<br>0x22222222<br> |- rs1_val==1717986918 and rs2_val==-1431655765<br>                                                                                                   |[0x800013e0]:mul a2, a0, a1<br> [0x800013e4]:sw a2, 0x348(sp)<br>     |
|  80|[0x800064a8]<br>0x66666664<br> |- rs1_val==1717986918 and rs2_val==6<br>                                                                                                             |[0x800013f4]:mul a2, a0, a1<br> [0x800013f8]:sw a2, 0x34c(sp)<br>     |
|  81|[0x800064ac]<br>0xEB851EB8<br> |- rs1_val==1717986918 and rs2_val==858993460<br>                                                                                                     |[0x8000140c]:mul a2, a0, a1<br> [0x80001410]:sw a2, 0x350(sp)<br>     |
|  82|[0x800064b0]<br>0x70A3D70A<br> |- rs1_val==1717986918 and rs2_val==1717986919<br>                                                                                                    |[0x80001424]:mul a2, a0, a1<br> [0x80001428]:sw a2, 0x354(sp)<br>     |
|  83|[0x800064b4]<br>0x6666AECE<br> |- rs1_val==1717986918 and rs2_val==-46339<br>                                                                                                        |[0x8000143c]:mul a2, a0, a1<br> [0x80001440]:sw a2, 0x358(sp)<br>     |
|  84|[0x800064b8]<br>0x66661DFE<br> |- rs1_val==1717986918 and rs2_val==46341<br>                                                                                                         |[0x80001454]:mul a2, a0, a1<br> [0x80001458]:sw a2, 0x35c(sp)<br>     |
|  85|[0x800064bc]<br>0xFFFDE0F4<br> |- rs1_val==-46340 and rs2_val==3<br>                                                                                                                 |[0x80001468]:mul a2, a0, a1<br> [0x8000146c]:sw a2, 0x360(sp)<br>     |
|  86|[0x800064c0]<br>0x555591AC<br> |- rs1_val==-46340 and rs2_val==1431655765<br>                                                                                                        |[0x80001480]:mul a2, a0, a1<br> [0x80001484]:sw a2, 0x364(sp)<br>     |
|  87|[0x800064c4]<br>0xAAAB2358<br> |- rs1_val==-46340 and rs2_val==-1431655766<br>                                                                                                       |[0x80001498]:mul a2, a0, a1<br> [0x8000149c]:sw a2, 0x368(sp)<br>     |
|  88|[0x800064c8]<br>0xFFFC76EC<br> |- rs1_val==-46340 and rs2_val==5<br>                                                                                                                 |[0x800014ac]:mul a2, a0, a1<br> [0x800014b0]:sw a2, 0x36c(sp)<br>     |
|  89|[0x800064cc]<br>0x00002434<br> |- rs1_val==-46340 and rs2_val==858993459<br>                                                                                                         |[0x800014c4]:mul a2, a0, a1<br> [0x800014c8]:sw a2, 0x370(sp)<br>     |
|  90|[0x800064d0]<br>0x00004868<br> |- rs1_val==-46340 and rs2_val==1717986918<br>                                                                                                        |[0x800014dc]:mul a2, a0, a1<br> [0x800014e0]:sw a2, 0x374(sp)<br>     |
|  91|[0x800064d4]<br>0x7FFEA810<br> |- rs1_val==-46340 and rs2_val==-46340<br>                                                                                                            |[0x800014f4]:mul a2, a0, a1<br> [0x800014f8]:sw a2, 0x378(sp)<br>     |
|  92|[0x800064d8]<br>0x800157F0<br> |- rs1_val==-46340 and rs2_val==46340<br>                                                                                                             |[0x8000150c]:mul a2, a0, a1<br> [0x80001510]:sw a2, 0x37c(sp)<br>     |
|  93|[0x800064dc]<br>0xFFFE95F8<br> |- rs1_val==-46340 and rs2_val==2<br>                                                                                                                 |[0x80001520]:mul a2, a0, a1<br> [0x80001524]:sw a2, 0x380(sp)<br>     |
|  94|[0x800064e0]<br>0x555646B0<br> |- rs1_val==-46340 and rs2_val==1431655764<br>                                                                                                        |[0x80001538]:mul a2, a0, a1<br> [0x8000153c]:sw a2, 0x384(sp)<br>     |
|  95|[0x800064e4]<br>0x00000000<br> |- rs1_val==-46340 and rs2_val==0<br>                                                                                                                 |[0x8000154c]:mul a2, a0, a1<br> [0x80001550]:sw a2, 0x388(sp)<br>     |
|  96|[0x800064e8]<br>0xFFFD2BF0<br> |- rs1_val==-46340 and rs2_val==4<br>                                                                                                                 |[0x80001560]:mul a2, a0, a1<br> [0x80001564]:sw a2, 0x38c(sp)<br>     |
|  97|[0x800064ec]<br>0x0000D938<br> |- rs1_val==-46340 and rs2_val==858993458<br>                                                                                                         |[0x80001578]:mul a2, a0, a1<br> [0x8000157c]:sw a2, 0x390(sp)<br>     |
|  98|[0x800064f0]<br>0x0000FD6C<br> |- rs1_val==-46340 and rs2_val==1717986917<br>                                                                                                        |[0x80001590]:mul a2, a0, a1<br> [0x80001594]:sw a2, 0x394(sp)<br>     |
|  99|[0x800064f4]<br>0x80020CF4<br> |- rs1_val==-46340 and rs2_val==46339<br>                                                                                                             |[0x800015a8]:mul a2, a0, a1<br> [0x800015ac]:sw a2, 0x398(sp)<br>     |
| 100|[0x800064f8]<br>0x5554DCA8<br> |- rs1_val==-46340 and rs2_val==1431655766<br>                                                                                                        |[0x800015c0]:mul a2, a0, a1<br> [0x800015c4]:sw a2, 0x39c(sp)<br>     |
| 101|[0x800064fc]<br>0xAAAA6E54<br> |- rs1_val==-46340 and rs2_val==-1431655765<br>                                                                                                       |[0x800015d8]:mul a2, a0, a1<br> [0x800015dc]:sw a2, 0x3a0(sp)<br>     |
| 102|[0x80006500]<br>0xFFFBC1E8<br> |- rs1_val==-46340 and rs2_val==6<br>                                                                                                                 |[0x800015ec]:mul a2, a0, a1<br> [0x800015f0]:sw a2, 0x3a4(sp)<br>     |
| 103|[0x80006504]<br>0xFFFF6F30<br> |- rs1_val==-46340 and rs2_val==858993460<br>                                                                                                         |[0x80001604]:mul a2, a0, a1<br> [0x80001608]:sw a2, 0x3a8(sp)<br>     |
| 104|[0x80006508]<br>0xFFFF9364<br> |- rs1_val==-46340 and rs2_val==1717986919<br>                                                                                                        |[0x8000161c]:mul a2, a0, a1<br> [0x80001620]:sw a2, 0x3ac(sp)<br>     |
| 105|[0x8000650c]<br>0x7FFDF30C<br> |- rs1_val==-46340 and rs2_val==-46339<br>                                                                                                            |[0x80001634]:mul a2, a0, a1<br> [0x80001638]:sw a2, 0x3b0(sp)<br>     |
| 106|[0x80006510]<br>0x8000A2EC<br> |- rs1_val==-46340 and rs2_val==46341<br>                                                                                                             |[0x8000164c]:mul a2, a0, a1<br> [0x80001650]:sw a2, 0x3b4(sp)<br>     |
| 107|[0x80006514]<br>0x00021F0C<br> |- rs1_val==46340 and rs2_val==3<br>                                                                                                                  |[0x80001660]:mul a2, a0, a1<br> [0x80001664]:sw a2, 0x3b8(sp)<br>     |
| 108|[0x80006518]<br>0xAAAA6E54<br> |- rs1_val==46340 and rs2_val==1431655765<br>                                                                                                         |[0x80001678]:mul a2, a0, a1<br> [0x8000167c]:sw a2, 0x3bc(sp)<br>     |
| 109|[0x8000651c]<br>0x5554DCA8<br> |- rs1_val==46340 and rs2_val==-1431655766<br>                                                                                                        |[0x80001690]:mul a2, a0, a1<br> [0x80001694]:sw a2, 0x3c0(sp)<br>     |
| 110|[0x80006520]<br>0x00038914<br> |- rs1_val==46340 and rs2_val==5<br>                                                                                                                  |[0x800016a4]:mul a2, a0, a1<br> [0x800016a8]:sw a2, 0x3c4(sp)<br>     |
| 111|[0x80006524]<br>0xFFFFDBCC<br> |- rs1_val==46340 and rs2_val==858993459<br>                                                                                                          |[0x800016bc]:mul a2, a0, a1<br> [0x800016c0]:sw a2, 0x3c8(sp)<br>     |
| 112|[0x80006528]<br>0xFFFFB798<br> |- rs1_val==46340 and rs2_val==1717986918<br>                                                                                                         |[0x800016d4]:mul a2, a0, a1<br> [0x800016d8]:sw a2, 0x3cc(sp)<br>     |
| 113|[0x8000652c]<br>0x800157F0<br> |- rs1_val==46340 and rs2_val==-46340<br>                                                                                                             |[0x800016ec]:mul a2, a0, a1<br> [0x800016f0]:sw a2, 0x3d0(sp)<br>     |
| 114|[0x80006530]<br>0x7FFEA810<br> |- rs1_val==46340 and rs2_val==46340<br>                                                                                                              |[0x80001704]:mul a2, a0, a1<br> [0x80001708]:sw a2, 0x3d4(sp)<br>     |
| 115|[0x80006534]<br>0x00016A08<br> |- rs1_val==46340 and rs2_val==2<br>                                                                                                                  |[0x80001718]:mul a2, a0, a1<br> [0x8000171c]:sw a2, 0x3d8(sp)<br>     |
| 116|[0x80006538]<br>0xAAA9B950<br> |- rs1_val==46340 and rs2_val==1431655764<br>                                                                                                         |[0x80001730]:mul a2, a0, a1<br> [0x80001734]:sw a2, 0x3dc(sp)<br>     |
| 117|[0x8000653c]<br>0x00000000<br> |- rs1_val==46340 and rs2_val==0<br>                                                                                                                  |[0x80001744]:mul a2, a0, a1<br> [0x80001748]:sw a2, 0x3e0(sp)<br>     |
| 118|[0x80006540]<br>0x0002D410<br> |- rs1_val==46340 and rs2_val==4<br>                                                                                                                  |[0x80001758]:mul a2, a0, a1<br> [0x8000175c]:sw a2, 0x3e4(sp)<br>     |
| 119|[0x80006544]<br>0xFFFF26C8<br> |- rs1_val==46340 and rs2_val==858993458<br>                                                                                                          |[0x80001770]:mul a2, a0, a1<br> [0x80001774]:sw a2, 0x3e8(sp)<br>     |
| 120|[0x80006548]<br>0xFFFF0294<br> |- rs1_val==46340 and rs2_val==1717986917<br>                                                                                                         |[0x80001788]:mul a2, a0, a1<br> [0x8000178c]:sw a2, 0x3ec(sp)<br>     |
| 121|[0x8000654c]<br>0x7FFDF30C<br> |- rs1_val==46340 and rs2_val==46339<br>                                                                                                              |[0x800017a0]:mul a2, a0, a1<br> [0x800017a4]:sw a2, 0x3f0(sp)<br>     |
| 122|[0x80006550]<br>0xAAAB2358<br> |- rs1_val==46340 and rs2_val==1431655766<br>                                                                                                         |[0x800017b8]:mul a2, a0, a1<br> [0x800017bc]:sw a2, 0x3f4(sp)<br>     |
| 123|[0x80006554]<br>0x555591AC<br> |- rs1_val==46340 and rs2_val==-1431655765<br>                                                                                                        |[0x800017d0]:mul a2, a0, a1<br> [0x800017d4]:sw a2, 0x3f8(sp)<br>     |
| 124|[0x80006558]<br>0x00043E18<br> |- rs1_val==46340 and rs2_val==6<br>                                                                                                                  |[0x800017e4]:mul a2, a0, a1<br> [0x800017e8]:sw a2, 0x3fc(sp)<br>     |
| 125|[0x8000655c]<br>0x000090D0<br> |- rs1_val==46340 and rs2_val==858993460<br>                                                                                                          |[0x800017fc]:mul a2, a0, a1<br> [0x80001800]:sw a2, 0x400(sp)<br>     |
| 126|[0x80006560]<br>0x00006C9C<br> |- rs1_val==46340 and rs2_val==1717986919<br>                                                                                                         |[0x80001814]:mul a2, a0, a1<br> [0x80001818]:sw a2, 0x404(sp)<br>     |
| 127|[0x80006564]<br>0x80020CF4<br> |- rs1_val==46340 and rs2_val==-46339<br>                                                                                                             |[0x8000182c]:mul a2, a0, a1<br> [0x80001830]:sw a2, 0x408(sp)<br>     |
| 128|[0x80006568]<br>0x7FFF5D14<br> |- rs1_val==46340 and rs2_val==46341<br>                                                                                                              |[0x80001844]:mul a2, a0, a1<br> [0x80001848]:sw a2, 0x40c(sp)<br>     |
| 129|[0x8000656c]<br>0x00000006<br> |- rs1_val==2 and rs2_val==3<br>                                                                                                                      |[0x80001854]:mul a2, a0, a1<br> [0x80001858]:sw a2, 0x410(sp)<br>     |
| 130|[0x80006570]<br>0xAAAAAAAA<br> |- rs1_val==2 and rs2_val==1431655765<br>                                                                                                             |[0x80001868]:mul a2, a0, a1<br> [0x8000186c]:sw a2, 0x414(sp)<br>     |
| 131|[0x80006574]<br>0x55555554<br> |- rs1_val==2 and rs2_val==-1431655766<br>                                                                                                            |[0x8000187c]:mul a2, a0, a1<br> [0x80001880]:sw a2, 0x418(sp)<br>     |
| 132|[0x80006578]<br>0x0000000A<br> |- rs1_val==2 and rs2_val==5<br>                                                                                                                      |[0x8000188c]:mul a2, a0, a1<br> [0x80001890]:sw a2, 0x41c(sp)<br>     |
| 133|[0x8000657c]<br>0x66666666<br> |- rs1_val==2 and rs2_val==858993459<br>                                                                                                              |[0x800018a0]:mul a2, a0, a1<br> [0x800018a4]:sw a2, 0x420(sp)<br>     |
| 134|[0x80006580]<br>0xCCCCCCCC<br> |- rs1_val==2 and rs2_val==1717986918<br>                                                                                                             |[0x800018b4]:mul a2, a0, a1<br> [0x800018b8]:sw a2, 0x424(sp)<br>     |
| 135|[0x80006584]<br>0xFFFE95F8<br> |- rs1_val==2 and rs2_val==-46340<br>                                                                                                                 |[0x800018c8]:mul a2, a0, a1<br> [0x800018cc]:sw a2, 0x428(sp)<br>     |
| 136|[0x80006588]<br>0x00016A08<br> |- rs1_val==2 and rs2_val==46340<br>                                                                                                                  |[0x800018dc]:mul a2, a0, a1<br> [0x800018e0]:sw a2, 0x42c(sp)<br>     |
| 137|[0x8000658c]<br>0x00000004<br> |- rs1_val==2 and rs2_val==2<br>                                                                                                                      |[0x800018ec]:mul a2, a0, a1<br> [0x800018f0]:sw a2, 0x430(sp)<br>     |
| 138|[0x80006590]<br>0xAAAAAAA8<br> |- rs1_val==2 and rs2_val==1431655764<br>                                                                                                             |[0x80001900]:mul a2, a0, a1<br> [0x80001904]:sw a2, 0x434(sp)<br>     |
| 139|[0x80006594]<br>0x00000000<br> |- rs1_val==2 and rs2_val==0<br>                                                                                                                      |[0x80001910]:mul a2, a0, a1<br> [0x80001914]:sw a2, 0x438(sp)<br>     |
| 140|[0x80006598]<br>0x00000008<br> |- rs1_val==2 and rs2_val==4<br>                                                                                                                      |[0x80001920]:mul a2, a0, a1<br> [0x80001924]:sw a2, 0x43c(sp)<br>     |
| 141|[0x8000659c]<br>0x66666664<br> |- rs1_val==2 and rs2_val==858993458<br>                                                                                                              |[0x80001934]:mul a2, a0, a1<br> [0x80001938]:sw a2, 0x440(sp)<br>     |
| 142|[0x800065a0]<br>0xCCCCCCCA<br> |- rs1_val==2 and rs2_val==1717986917<br>                                                                                                             |[0x80001948]:mul a2, a0, a1<br> [0x8000194c]:sw a2, 0x444(sp)<br>     |
| 143|[0x800065a4]<br>0x00016A06<br> |- rs1_val==2 and rs2_val==46339<br>                                                                                                                  |[0x8000195c]:mul a2, a0, a1<br> [0x80001960]:sw a2, 0x448(sp)<br>     |
| 144|[0x800065a8]<br>0xAAAAAAAC<br> |- rs1_val==2 and rs2_val==1431655766<br>                                                                                                             |[0x80001970]:mul a2, a0, a1<br> [0x80001974]:sw a2, 0x44c(sp)<br>     |
| 145|[0x800065ac]<br>0x55555556<br> |- rs1_val==2 and rs2_val==-1431655765<br>                                                                                                            |[0x80001984]:mul a2, a0, a1<br> [0x80001988]:sw a2, 0x450(sp)<br>     |
| 146|[0x800065b0]<br>0x0000000C<br> |- rs1_val==2 and rs2_val==6<br>                                                                                                                      |[0x80001994]:mul a2, a0, a1<br> [0x80001998]:sw a2, 0x454(sp)<br>     |
| 147|[0x800065b4]<br>0x66666668<br> |- rs1_val==2 and rs2_val==858993460<br>                                                                                                              |[0x800019a8]:mul a2, a0, a1<br> [0x800019ac]:sw a2, 0x458(sp)<br>     |
| 148|[0x800065b8]<br>0xCCCCCCCE<br> |- rs1_val==2 and rs2_val==1717986919<br>                                                                                                             |[0x800019bc]:mul a2, a0, a1<br> [0x800019c0]:sw a2, 0x45c(sp)<br>     |
| 149|[0x800065bc]<br>0xFFFE95FA<br> |- rs1_val==2 and rs2_val==-46339<br>                                                                                                                 |[0x800019d0]:mul a2, a0, a1<br> [0x800019d4]:sw a2, 0x460(sp)<br>     |
| 150|[0x800065c0]<br>0x00016A0A<br> |- rs1_val==2 and rs2_val==46341<br>                                                                                                                  |[0x800019e4]:mul a2, a0, a1<br> [0x800019e8]:sw a2, 0x464(sp)<br>     |
| 151|[0x800065c4]<br>0xFFFFFFFC<br> |- rs1_val==1431655764 and rs2_val==3<br>                                                                                                             |[0x800019f8]:mul a2, a0, a1<br> [0x800019fc]:sw a2, 0x468(sp)<br>     |
| 152|[0x800065c8]<br>0xE38E38E4<br> |- rs1_val==1431655764 and rs2_val==1431655765<br>                                                                                                    |[0x80001a10]:mul a2, a0, a1<br> [0x80001a14]:sw a2, 0x46c(sp)<br>     |
| 153|[0x800065cc]<br>0xC71C71C8<br> |- rs1_val==1431655764 and rs2_val==-1431655766<br>                                                                                                   |[0x80001a28]:mul a2, a0, a1<br> [0x80001a2c]:sw a2, 0x470(sp)<br>     |
| 154|[0x800065d0]<br>0xAAAAAAA4<br> |- rs1_val==1431655764 and rs2_val==5<br>                                                                                                             |[0x80001a3c]:mul a2, a0, a1<br> [0x80001a40]:sw a2, 0x474(sp)<br>     |
| 155|[0x800065d4]<br>0xBBBBBBBC<br> |- rs1_val==1431655764 and rs2_val==858993459<br>                                                                                                     |[0x80001a54]:mul a2, a0, a1<br> [0x80001a58]:sw a2, 0x478(sp)<br>     |
| 156|[0x800065d8]<br>0x77777778<br> |- rs1_val==1431655764 and rs2_val==1717986918<br>                                                                                                    |[0x80001a6c]:mul a2, a0, a1<br> [0x80001a70]:sw a2, 0x47c(sp)<br>     |
| 157|[0x800065dc]<br>0x555646B0<br> |- rs1_val==1431655764 and rs2_val==-46340<br>                                                                                                        |[0x80001a84]:mul a2, a0, a1<br> [0x80001a88]:sw a2, 0x480(sp)<br>     |
| 158|[0x800065e0]<br>0xAAA9B950<br> |- rs1_val==1431655764 and rs2_val==46340<br>                                                                                                         |[0x80001a9c]:mul a2, a0, a1<br> [0x80001aa0]:sw a2, 0x484(sp)<br>     |
| 159|[0x800065e4]<br>0xAAAAAAA8<br> |- rs1_val==1431655764 and rs2_val==2<br>                                                                                                             |[0x80001ab0]:mul a2, a0, a1<br> [0x80001ab4]:sw a2, 0x488(sp)<br>     |
| 160|[0x800065e8]<br>0x8E38E390<br> |- rs1_val==1431655764 and rs2_val==1431655764<br>                                                                                                    |[0x80001ac8]:mul a2, a0, a1<br> [0x80001acc]:sw a2, 0x48c(sp)<br>     |
| 161|[0x800065ec]<br>0x00000000<br> |- rs1_val==1431655764 and rs2_val==0<br>                                                                                                             |[0x80001adc]:mul a2, a0, a1<br> [0x80001ae0]:sw a2, 0x490(sp)<br>     |
| 162|[0x800065f0]<br>0x55555550<br> |- rs1_val==1431655764 and rs2_val==4<br>                                                                                                             |[0x80001af0]:mul a2, a0, a1<br> [0x80001af4]:sw a2, 0x494(sp)<br>     |
| 163|[0x800065f4]<br>0x66666668<br> |- rs1_val==1431655764 and rs2_val==858993458<br>                                                                                                     |[0x80001b08]:mul a2, a0, a1<br> [0x80001b0c]:sw a2, 0x498(sp)<br>     |
| 164|[0x800065f8]<br>0x22222224<br> |- rs1_val==1431655764 and rs2_val==1717986917<br>                                                                                                    |[0x80001b20]:mul a2, a0, a1<br> [0x80001b24]:sw a2, 0x49c(sp)<br>     |
| 165|[0x800065fc]<br>0x555463FC<br> |- rs1_val==1431655764 and rs2_val==46339<br>                                                                                                         |[0x80001b38]:mul a2, a0, a1<br> [0x80001b3c]:sw a2, 0x4a0(sp)<br>     |
| 166|[0x80006600]<br>0x38E38E38<br> |- rs1_val==1431655764 and rs2_val==1431655766<br>                                                                                                    |[0x80001b50]:mul a2, a0, a1<br> [0x80001b54]:sw a2, 0x4a4(sp)<br>     |
| 167|[0x80006604]<br>0x1C71C71C<br> |- rs1_val==1431655764 and rs2_val==-1431655765<br>                                                                                                   |[0x80001b68]:mul a2, a0, a1<br> [0x80001b6c]:sw a2, 0x4a8(sp)<br>     |
| 168|[0x80006608]<br>0xFFFFFFF8<br> |- rs1_val==1431655764 and rs2_val==6<br>                                                                                                             |[0x80001b7c]:mul a2, a0, a1<br> [0x80001b80]:sw a2, 0x4ac(sp)<br>     |
| 169|[0x8000660c]<br>0x11111110<br> |- rs1_val==1431655764 and rs2_val==858993460<br>                                                                                                     |[0x80001b94]:mul a2, a0, a1<br> [0x80001b98]:sw a2, 0x4b0(sp)<br>     |
| 170|[0x80006610]<br>0xCCCCCCCC<br> |- rs1_val==1431655764 and rs2_val==1717986919<br>                                                                                                    |[0x80001bac]:mul a2, a0, a1<br> [0x80001bb0]:sw a2, 0x4b4(sp)<br>     |
| 171|[0x80006614]<br>0xAAAB9C04<br> |- rs1_val==1431655764 and rs2_val==-46339<br>                                                                                                        |[0x80001bc4]:mul a2, a0, a1<br> [0x80001bc8]:sw a2, 0x4b8(sp)<br>     |
| 172|[0x80006618]<br>0xFFFF0EA4<br> |- rs1_val==1431655764 and rs2_val==46341<br>                                                                                                         |[0x80001bdc]:mul a2, a0, a1<br> [0x80001be0]:sw a2, 0x4bc(sp)<br>     |
| 173|[0x8000661c]<br>0x00000000<br> |- rs1_val==0 and rs2_val==3<br>                                                                                                                      |[0x80001bec]:mul a2, a0, a1<br> [0x80001bf0]:sw a2, 0x4c0(sp)<br>     |
| 174|[0x80006620]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1431655765<br>                                                                                                             |[0x80001c00]:mul a2, a0, a1<br> [0x80001c04]:sw a2, 0x4c4(sp)<br>     |
| 175|[0x80006624]<br>0x00000000<br> |- rs1_val==0 and rs2_val==-1431655766<br>                                                                                                            |[0x80001c14]:mul a2, a0, a1<br> [0x80001c18]:sw a2, 0x4c8(sp)<br>     |
| 176|[0x80006628]<br>0x00000000<br> |- rs1_val==0 and rs2_val==5<br>                                                                                                                      |[0x80001c24]:mul a2, a0, a1<br> [0x80001c28]:sw a2, 0x4cc(sp)<br>     |
| 177|[0x8000662c]<br>0x00000000<br> |- rs1_val==0 and rs2_val==858993459<br>                                                                                                              |[0x80001c38]:mul a2, a0, a1<br> [0x80001c3c]:sw a2, 0x4d0(sp)<br>     |
| 178|[0x80006630]<br>0x38E38E39<br> |- rs1_val==-1431655765 and rs2_val==-1431655765<br>                                                                                                  |[0x80001c50]:mul a2, a0, a1<br> [0x80001c54]:sw a2, 0x4d4(sp)<br>     |
| 179|[0x80006634]<br>0x00000002<br> |- rs1_val==-1431655765 and rs2_val==6<br>                                                                                                            |[0x80001c64]:mul a2, a0, a1<br> [0x80001c68]:sw a2, 0x4d8(sp)<br>     |
| 180|[0x80006638]<br>0xBBBBBBBC<br> |- rs1_val==-1431655765 and rs2_val==858993460<br>                                                                                                    |[0x80001c7c]:mul a2, a0, a1<br> [0x80001c80]:sw a2, 0x4dc(sp)<br>     |
| 181|[0x8000663c]<br>0xCCCCCCCD<br> |- rs1_val==-1431655765 and rs2_val==1717986919<br>                                                                                                   |[0x80001c94]:mul a2, a0, a1<br> [0x80001c98]:sw a2, 0x4e0(sp)<br>     |
| 182|[0x80006640]<br>0x555518FF<br> |- rs1_val==-1431655765 and rs2_val==-46339<br>                                                                                                       |[0x80001cac]:mul a2, a0, a1<br> [0x80001cb0]:sw a2, 0x4e4(sp)<br>     |
| 183|[0x80006644]<br>0x00003C57<br> |- rs1_val==-1431655765 and rs2_val==46341<br>                                                                                                        |[0x80001cc4]:mul a2, a0, a1<br> [0x80001cc8]:sw a2, 0x4e8(sp)<br>     |
| 184|[0x80006648]<br>0x00000012<br> |- rs1_val==6 and rs2_val==3<br>                                                                                                                      |[0x80001cd4]:mul a2, a0, a1<br> [0x80001cd8]:sw a2, 0x4ec(sp)<br>     |
| 185|[0x8000664c]<br>0xFFFFFFFE<br> |- rs1_val==6 and rs2_val==1431655765<br>                                                                                                             |[0x80001ce8]:mul a2, a0, a1<br> [0x80001cec]:sw a2, 0x4f0(sp)<br>     |
| 186|[0x80006650]<br>0xFFFFFFFC<br> |- rs1_val==6 and rs2_val==-1431655766<br>                                                                                                            |[0x80001cfc]:mul a2, a0, a1<br> [0x80001d00]:sw a2, 0x4f4(sp)<br>     |
| 187|[0x80006654]<br>0x0000001E<br> |- rs1_val==6 and rs2_val==5<br>                                                                                                                      |[0x80001d0c]:mul a2, a0, a1<br> [0x80001d10]:sw a2, 0x4f8(sp)<br>     |
| 188|[0x80006658]<br>0x33333332<br> |- rs1_val==6 and rs2_val==858993459<br>                                                                                                              |[0x80001d20]:mul a2, a0, a1<br> [0x80001d24]:sw a2, 0x4fc(sp)<br>     |
| 189|[0x8000665c]<br>0x66666664<br> |- rs1_val==6 and rs2_val==1717986918<br>                                                                                                             |[0x80001d34]:mul a2, a0, a1<br> [0x80001d38]:sw a2, 0x500(sp)<br>     |
| 190|[0x80006660]<br>0xFFFBC1E8<br> |- rs1_val==6 and rs2_val==-46340<br>                                                                                                                 |[0x80001d48]:mul a2, a0, a1<br> [0x80001d4c]:sw a2, 0x504(sp)<br>     |
| 191|[0x80006664]<br>0x00043E18<br> |- rs1_val==6 and rs2_val==46340<br>                                                                                                                  |[0x80001d5c]:mul a2, a0, a1<br> [0x80001d60]:sw a2, 0x508(sp)<br>     |
| 192|[0x80006668]<br>0x0000000C<br> |- rs1_val==6 and rs2_val==2<br>                                                                                                                      |[0x80001d6c]:mul a2, a0, a1<br> [0x80001d70]:sw a2, 0x50c(sp)<br>     |
| 193|[0x8000666c]<br>0xFFFFFFF8<br> |- rs1_val==6 and rs2_val==1431655764<br>                                                                                                             |[0x80001d80]:mul a2, a0, a1<br> [0x80001d84]:sw a2, 0x510(sp)<br>     |
| 194|[0x80006670]<br>0x00000000<br> |- rs1_val==6 and rs2_val==0<br>                                                                                                                      |[0x80001d90]:mul a2, a0, a1<br> [0x80001d94]:sw a2, 0x514(sp)<br>     |
| 195|[0x80006674]<br>0x00000018<br> |- rs1_val==6 and rs2_val==4<br>                                                                                                                      |[0x80001da0]:mul a2, a0, a1<br> [0x80001da4]:sw a2, 0x518(sp)<br>     |
| 196|[0x80006678]<br>0x3333332C<br> |- rs1_val==6 and rs2_val==858993458<br>                                                                                                              |[0x80001db4]:mul a2, a0, a1<br> [0x80001db8]:sw a2, 0x51c(sp)<br>     |
| 197|[0x8000667c]<br>0x6666665E<br> |- rs1_val==6 and rs2_val==1717986917<br>                                                                                                             |[0x80001dc8]:mul a2, a0, a1<br> [0x80001dcc]:sw a2, 0x520(sp)<br>     |
| 198|[0x80006680]<br>0x00043E12<br> |- rs1_val==6 and rs2_val==46339<br>                                                                                                                  |[0x80001ddc]:mul a2, a0, a1<br> [0x80001de0]:sw a2, 0x524(sp)<br>     |
| 199|[0x80006684]<br>0x00000004<br> |- rs1_val==6 and rs2_val==1431655766<br>                                                                                                             |[0x80001df0]:mul a2, a0, a1<br> [0x80001df4]:sw a2, 0x528(sp)<br>     |
| 200|[0x80006688]<br>0x00000002<br> |- rs1_val==6 and rs2_val==-1431655765<br>                                                                                                            |[0x80001e04]:mul a2, a0, a1<br> [0x80001e08]:sw a2, 0x52c(sp)<br>     |
| 201|[0x8000668c]<br>0x00000024<br> |- rs1_val==6 and rs2_val==6<br>                                                                                                                      |[0x80001e14]:mul a2, a0, a1<br> [0x80001e18]:sw a2, 0x530(sp)<br>     |
| 202|[0x80006690]<br>0x33333338<br> |- rs1_val==6 and rs2_val==858993460<br>                                                                                                              |[0x80001e28]:mul a2, a0, a1<br> [0x80001e2c]:sw a2, 0x534(sp)<br>     |
| 203|[0x80006694]<br>0x6666666A<br> |- rs1_val==6 and rs2_val==1717986919<br>                                                                                                             |[0x80001e3c]:mul a2, a0, a1<br> [0x80001e40]:sw a2, 0x538(sp)<br>     |
| 204|[0x80006698]<br>0xFFFBC1EE<br> |- rs1_val==6 and rs2_val==-46339<br>                                                                                                                 |[0x80001e50]:mul a2, a0, a1<br> [0x80001e54]:sw a2, 0x53c(sp)<br>     |
| 205|[0x8000669c]<br>0x00043E1E<br> |- rs1_val==6 and rs2_val==46341<br>                                                                                                                  |[0x80001e64]:mul a2, a0, a1<br> [0x80001e68]:sw a2, 0x540(sp)<br>     |
| 206|[0x800066a0]<br>0x9999999C<br> |- rs1_val==858993460 and rs2_val==3<br>                                                                                                              |[0x80001e78]:mul a2, a0, a1<br> [0x80001e7c]:sw a2, 0x544(sp)<br>     |
| 207|[0x800066a4]<br>0x44444444<br> |- rs1_val==858993460 and rs2_val==1431655765<br>                                                                                                     |[0x80001e90]:mul a2, a0, a1<br> [0x80001e94]:sw a2, 0x548(sp)<br>     |
| 208|[0x800066a8]<br>0x88888888<br> |- rs1_val==858993460 and rs2_val==-1431655766<br>                                                                                                    |[0x80001ea8]:mul a2, a0, a1<br> [0x80001eac]:sw a2, 0x54c(sp)<br>     |
| 209|[0x800066ac]<br>0x00000004<br> |- rs1_val==858993460 and rs2_val==5<br>                                                                                                              |[0x80001ebc]:mul a2, a0, a1<br> [0x80001ec0]:sw a2, 0x550(sp)<br>     |
| 210|[0x800066b0]<br>0xF5C28F5C<br> |- rs1_val==858993460 and rs2_val==858993459<br>                                                                                                      |[0x80001ed4]:mul a2, a0, a1<br> [0x80001ed8]:sw a2, 0x554(sp)<br>     |
| 211|[0x800066b4]<br>0xEB851EB8<br> |- rs1_val==858993460 and rs2_val==1717986918<br>                                                                                                     |[0x80001eec]:mul a2, a0, a1<br> [0x80001ef0]:sw a2, 0x558(sp)<br>     |
| 212|[0x800066b8]<br>0xFFFF6F30<br> |- rs1_val==858993460 and rs2_val==-46340<br>                                                                                                         |[0x80001f04]:mul a2, a0, a1<br> [0x80001f08]:sw a2, 0x55c(sp)<br>     |
| 213|[0x800066bc]<br>0x000090D0<br> |- rs1_val==858993460 and rs2_val==46340<br>                                                                                                          |[0x80001f1c]:mul a2, a0, a1<br> [0x80001f20]:sw a2, 0x560(sp)<br>     |
| 214|[0x800066c0]<br>0x66666668<br> |- rs1_val==858993460 and rs2_val==2<br>                                                                                                              |[0x80001f30]:mul a2, a0, a1<br> [0x80001f34]:sw a2, 0x564(sp)<br>     |
| 215|[0x800066c4]<br>0x11111110<br> |- rs1_val==858993460 and rs2_val==1431655764<br>                                                                                                     |[0x80001f48]:mul a2, a0, a1<br> [0x80001f4c]:sw a2, 0x568(sp)<br>     |
| 216|[0x800066cc]<br>0xCCCCCCD0<br> |- rs1_val==858993460 and rs2_val==4<br>                                                                                                              |[0x80001f70]:mul a2, a0, a1<br> [0x80001f74]:sw a2, 0x570(sp)<br>     |
| 217|[0x800066d0]<br>0xC28F5C28<br> |- rs1_val==858993460 and rs2_val==858993458<br>                                                                                                      |[0x80001f88]:mul a2, a0, a1<br> [0x80001f8c]:sw a2, 0x574(sp)<br>     |
| 218|[0x800066d4]<br>0xB851EB84<br> |- rs1_val==858993460 and rs2_val==1717986917<br>                                                                                                     |[0x80001fa0]:mul a2, a0, a1<br> [0x80001fa4]:sw a2, 0x578(sp)<br>     |
| 219|[0x800066d8]<br>0xCCCD5D9C<br> |- rs1_val==858993460 and rs2_val==46339<br>                                                                                                          |[0x80001fb8]:mul a2, a0, a1<br> [0x80001fbc]:sw a2, 0x57c(sp)<br>     |
| 220|[0x800066dc]<br>0x77777778<br> |- rs1_val==858993460 and rs2_val==1431655766<br>                                                                                                     |[0x80001fd0]:mul a2, a0, a1<br> [0x80001fd4]:sw a2, 0x580(sp)<br>     |
| 221|[0x800066e0]<br>0xBBBBBBBC<br> |- rs1_val==858993460 and rs2_val==-1431655765<br>                                                                                                    |[0x80001fe8]:mul a2, a0, a1<br> [0x80001fec]:sw a2, 0x584(sp)<br>     |
| 222|[0x800066e4]<br>0x33333338<br> |- rs1_val==858993460 and rs2_val==6<br>                                                                                                              |[0x80001ffc]:mul a2, a0, a1<br> [0x80002000]:sw a2, 0x588(sp)<br>     |
| 223|[0x800066e8]<br>0x28F5C290<br> |- rs1_val==858993460 and rs2_val==858993460<br>                                                                                                      |[0x80002014]:mul a2, a0, a1<br> [0x80002018]:sw a2, 0x58c(sp)<br>     |
| 224|[0x800066ec]<br>0x1EB851EC<br> |- rs1_val==858993460 and rs2_val==1717986919<br>                                                                                                     |[0x8000202c]:mul a2, a0, a1<br> [0x80002030]:sw a2, 0x590(sp)<br>     |
| 225|[0x800066f0]<br>0x3332A264<br> |- rs1_val==858993460 and rs2_val==-46339<br>                                                                                                         |[0x80002044]:mul a2, a0, a1<br> [0x80002048]:sw a2, 0x594(sp)<br>     |
| 226|[0x800066f4]<br>0x3333C404<br> |- rs1_val==858993460 and rs2_val==46341<br>                                                                                                          |[0x8000205c]:mul a2, a0, a1<br> [0x80002060]:sw a2, 0x598(sp)<br>     |
| 227|[0x800066f8]<br>0x33333335<br> |- rs1_val==1717986919 and rs2_val==3<br>                                                                                                             |[0x80002070]:mul a2, a0, a1<br> [0x80002074]:sw a2, 0x59c(sp)<br>     |
| 228|[0x800066fc]<br>0x33333333<br> |- rs1_val==1717986919 and rs2_val==1431655765<br>                                                                                                    |[0x80002088]:mul a2, a0, a1<br> [0x8000208c]:sw a2, 0x5a0(sp)<br>     |
| 229|[0x80006700]<br>0x66666666<br> |- rs1_val==1717986919 and rs2_val==-1431655766<br>                                                                                                   |[0x800020a0]:mul a2, a0, a1<br> [0x800020a4]:sw a2, 0x5a4(sp)<br>     |
| 230|[0x80006704]<br>0x00000003<br> |- rs1_val==1717986919 and rs2_val==5<br>                                                                                                             |[0x800020b4]:mul a2, a0, a1<br> [0x800020b8]:sw a2, 0x5a8(sp)<br>     |
| 231|[0x80006708]<br>0xB851EB85<br> |- rs1_val==1717986919 and rs2_val==858993459<br>                                                                                                     |[0x800020cc]:mul a2, a0, a1<br> [0x800020d0]:sw a2, 0x5ac(sp)<br>     |
| 232|[0x8000670c]<br>0x70A3D70A<br> |- rs1_val==1717986919 and rs2_val==1717986918<br>                                                                                                    |[0x800020e4]:mul a2, a0, a1<br> [0x800020e8]:sw a2, 0x5b0(sp)<br>     |
| 233|[0x80006710]<br>0xFFFF9364<br> |- rs1_val==1717986919 and rs2_val==-46340<br>                                                                                                        |[0x800020fc]:mul a2, a0, a1<br> [0x80002100]:sw a2, 0x5b4(sp)<br>     |
| 234|[0x80006714]<br>0x00006C9C<br> |- rs1_val==1717986919 and rs2_val==46340<br>                                                                                                         |[0x80002114]:mul a2, a0, a1<br> [0x80002118]:sw a2, 0x5b8(sp)<br>     |
| 235|[0x80006718]<br>0xCCCCCCCE<br> |- rs1_val==1717986919 and rs2_val==2<br>                                                                                                             |[0x80002128]:mul a2, a0, a1<br> [0x8000212c]:sw a2, 0x5bc(sp)<br>     |
| 236|[0x8000671c]<br>0xCCCCCCCC<br> |- rs1_val==1717986919 and rs2_val==1431655764<br>                                                                                                    |[0x80002140]:mul a2, a0, a1<br> [0x80002144]:sw a2, 0x5c0(sp)<br>     |
| 237|[0x80006720]<br>0x00000000<br> |- rs1_val==1717986919 and rs2_val==0<br>                                                                                                             |[0x80002154]:mul a2, a0, a1<br> [0x80002158]:sw a2, 0x5c4(sp)<br>     |
| 238|[0x80006724]<br>0x9999999C<br> |- rs1_val==1717986919 and rs2_val==4<br>                                                                                                             |[0x80002168]:mul a2, a0, a1<br> [0x8000216c]:sw a2, 0x5c8(sp)<br>     |
| 239|[0x80006728]<br>0x51EB851E<br> |- rs1_val==1717986919 and rs2_val==858993458<br>                                                                                                     |[0x80002180]:mul a2, a0, a1<br> [0x80002184]:sw a2, 0x5cc(sp)<br>     |
| 240|[0x8000672c]<br>0x0A3D70A3<br> |- rs1_val==1717986919 and rs2_val==1717986917<br>                                                                                                    |[0x80002198]:mul a2, a0, a1<br> [0x8000219c]:sw a2, 0x5d0(sp)<br>     |
| 241|[0x80006730]<br>0x999A0635<br> |- rs1_val==1717986919 and rs2_val==46339<br>                                                                                                         |[0x800021b0]:mul a2, a0, a1<br> [0x800021b4]:sw a2, 0x5d4(sp)<br>     |
| 242|[0x80006734]<br>0x9999999A<br> |- rs1_val==1717986919 and rs2_val==1431655766<br>                                                                                                    |[0x800021c8]:mul a2, a0, a1<br> [0x800021cc]:sw a2, 0x5d8(sp)<br>     |
| 243|[0x80006738]<br>0xCCCCCCCD<br> |- rs1_val==1717986919 and rs2_val==-1431655765<br>                                                                                                   |[0x800021e0]:mul a2, a0, a1<br> [0x800021e4]:sw a2, 0x5dc(sp)<br>     |
| 244|[0x8000673c]<br>0x6666666A<br> |- rs1_val==1717986919 and rs2_val==6<br>                                                                                                             |[0x800021f4]:mul a2, a0, a1<br> [0x800021f8]:sw a2, 0x5e0(sp)<br>     |
| 245|[0x80006740]<br>0x1EB851EC<br> |- rs1_val==1717986919 and rs2_val==858993460<br>                                                                                                     |[0x8000220c]:mul a2, a0, a1<br> [0x80002210]:sw a2, 0x5e4(sp)<br>     |
| 246|[0x80006744]<br>0xD70A3D71<br> |- rs1_val==1717986919 and rs2_val==1717986919<br>                                                                                                    |[0x80002224]:mul a2, a0, a1<br> [0x80002228]:sw a2, 0x5e8(sp)<br>     |
| 247|[0x80006748]<br>0x6665F9CB<br> |- rs1_val==1717986919 and rs2_val==-46339<br>                                                                                                        |[0x8000223c]:mul a2, a0, a1<br> [0x80002240]:sw a2, 0x5ec(sp)<br>     |
| 248|[0x8000674c]<br>0x6666D303<br> |- rs1_val==1717986919 and rs2_val==46341<br>                                                                                                         |[0x80002254]:mul a2, a0, a1<br> [0x80002258]:sw a2, 0x5f0(sp)<br>     |
| 249|[0x80006750]<br>0xFFFDE0F7<br> |- rs1_val==-46339 and rs2_val==3<br>                                                                                                                 |[0x80002268]:mul a2, a0, a1<br> [0x8000226c]:sw a2, 0x5f4(sp)<br>     |
| 250|[0x80006754]<br>0xAAAAE701<br> |- rs1_val==-46339 and rs2_val==1431655765<br>                                                                                                        |[0x80002280]:mul a2, a0, a1<br> [0x80002284]:sw a2, 0x5f8(sp)<br>     |
| 251|[0x80006758]<br>0x5555CE02<br> |- rs1_val==-46339 and rs2_val==-1431655766<br>                                                                                                       |[0x80002298]:mul a2, a0, a1<br> [0x8000229c]:sw a2, 0x5fc(sp)<br>     |
| 252|[0x8000675c]<br>0xFFFC76F1<br> |- rs1_val==-46339 and rs2_val==5<br>                                                                                                                 |[0x800022ac]:mul a2, a0, a1<br> [0x800022b0]:sw a2, 0x600(sp)<br>     |
| 253|[0x80006760]<br>0x33335767<br> |- rs1_val==-46339 and rs2_val==858993459<br>                                                                                                         |[0x800022c4]:mul a2, a0, a1<br> [0x800022c8]:sw a2, 0x604(sp)<br>     |
| 254|[0x80006764]<br>0x6666AECE<br> |- rs1_val==-46339 and rs2_val==1717986918<br>                                                                                                        |[0x800022dc]:mul a2, a0, a1<br> [0x800022e0]:sw a2, 0x608(sp)<br>     |
| 255|[0x80006768]<br>0x7FFDF30C<br> |- rs1_val==-46339 and rs2_val==-46340<br>                                                                                                            |[0x800022f4]:mul a2, a0, a1<br> [0x800022f8]:sw a2, 0x60c(sp)<br>     |
| 256|[0x8000676c]<br>0x80020CF4<br> |- rs1_val==-46339 and rs2_val==46340<br>                                                                                                             |[0x8000230c]:mul a2, a0, a1<br> [0x80002310]:sw a2, 0x610(sp)<br>     |
| 257|[0x80006770]<br>0xFFFE95FA<br> |- rs1_val==-46339 and rs2_val==2<br>                                                                                                                 |[0x80002320]:mul a2, a0, a1<br> [0x80002324]:sw a2, 0x614(sp)<br>     |
| 258|[0x80006774]<br>0xAAAB9C04<br> |- rs1_val==-46339 and rs2_val==1431655764<br>                                                                                                        |[0x80002338]:mul a2, a0, a1<br> [0x8000233c]:sw a2, 0x618(sp)<br>     |
| 259|[0x80006778]<br>0x00000000<br> |- rs1_val==-46339 and rs2_val==0<br>                                                                                                                 |[0x8000234c]:mul a2, a0, a1<br> [0x80002350]:sw a2, 0x61c(sp)<br>     |
| 260|[0x8000677c]<br>0x33340C6A<br> |- rs1_val==-46339 and rs2_val==858993458<br>                                                                                                         |[0x80002364]:mul a2, a0, a1<br> [0x80002368]:sw a2, 0x620(sp)<br>     |
| 261|[0x80006780]<br>0x666763D1<br> |- rs1_val==-46339 and rs2_val==1717986917<br>                                                                                                        |[0x8000237c]:mul a2, a0, a1<br> [0x80002380]:sw a2, 0x624(sp)<br>     |
| 262|[0x80006784]<br>0x8002C1F7<br> |- rs1_val==-46339 and rs2_val==46339<br>                                                                                                             |[0x80002394]:mul a2, a0, a1<br> [0x80002398]:sw a2, 0x628(sp)<br>     |
| 263|[0x80006788]<br>0xAAAA31FE<br> |- rs1_val==-46339 and rs2_val==1431655766<br>                                                                                                        |[0x800023ac]:mul a2, a0, a1<br> [0x800023b0]:sw a2, 0x62c(sp)<br>     |
| 264|[0x8000678c]<br>0x555518FF<br> |- rs1_val==-46339 and rs2_val==-1431655765<br>                                                                                                       |[0x800023c4]:mul a2, a0, a1<br> [0x800023c8]:sw a2, 0x630(sp)<br>     |
| 265|[0x80006790]<br>0xFFFBC1EE<br> |- rs1_val==-46339 and rs2_val==6<br>                                                                                                                 |[0x800023d8]:mul a2, a0, a1<br> [0x800023dc]:sw a2, 0x634(sp)<br>     |
| 266|[0x80006794]<br>0x3332A264<br> |- rs1_val==-46339 and rs2_val==858993460<br>                                                                                                         |[0x800023f0]:mul a2, a0, a1<br> [0x800023f4]:sw a2, 0x638(sp)<br>     |
| 267|[0x80006798]<br>0x6665F9CB<br> |- rs1_val==-46339 and rs2_val==1717986919<br>                                                                                                        |[0x80002408]:mul a2, a0, a1<br> [0x8000240c]:sw a2, 0x63c(sp)<br>     |
| 268|[0x8000679c]<br>0x7FFD3E09<br> |- rs1_val==-46339 and rs2_val==-46339<br>                                                                                                            |[0x80002420]:mul a2, a0, a1<br> [0x80002424]:sw a2, 0x640(sp)<br>     |
| 269|[0x800067a0]<br>0x800157F1<br> |- rs1_val==-46339 and rs2_val==46341<br>                                                                                                             |[0x80002438]:mul a2, a0, a1<br> [0x8000243c]:sw a2, 0x644(sp)<br>     |
| 270|[0x800067a4]<br>0x00021F0F<br> |- rs1_val==46341 and rs2_val==3<br>                                                                                                                  |[0x8000244c]:mul a2, a0, a1<br> [0x80002450]:sw a2, 0x648(sp)<br>     |
| 271|[0x800067a8]<br>0xFFFFC3A9<br> |- rs1_val==46341 and rs2_val==1431655765<br>                                                                                                         |[0x80002464]:mul a2, a0, a1<br> [0x80002468]:sw a2, 0x64c(sp)<br>     |
| 272|[0x800067ac]<br>0xFFFF8752<br> |- rs1_val==46341 and rs2_val==-1431655766<br>                                                                                                        |[0x8000247c]:mul a2, a0, a1<br> [0x80002480]:sw a2, 0x650(sp)<br>     |
| 273|[0x800067b0]<br>0x00038919<br> |- rs1_val==46341 and rs2_val==5<br>                                                                                                                  |[0x80002490]:mul a2, a0, a1<br> [0x80002494]:sw a2, 0x654(sp)<br>     |
| 274|[0x800067b4]<br>0x33330EFF<br> |- rs1_val==46341 and rs2_val==858993459<br>                                                                                                          |[0x800024a8]:mul a2, a0, a1<br> [0x800024ac]:sw a2, 0x658(sp)<br>     |
| 275|[0x800067b8]<br>0x66661DFE<br> |- rs1_val==46341 and rs2_val==1717986918<br>                                                                                                         |[0x800024c0]:mul a2, a0, a1<br> [0x800024c4]:sw a2, 0x65c(sp)<br>     |
| 276|[0x800067bc]<br>0x8000A2EC<br> |- rs1_val==46341 and rs2_val==-46340<br>                                                                                                             |[0x800024d8]:mul a2, a0, a1<br> [0x800024dc]:sw a2, 0x660(sp)<br>     |
| 277|[0x800067c0]<br>0x7FFF5D14<br> |- rs1_val==46341 and rs2_val==46340<br>                                                                                                              |[0x800024f0]:mul a2, a0, a1<br> [0x800024f4]:sw a2, 0x664(sp)<br>     |
| 278|[0x800067c4]<br>0x00016A0A<br> |- rs1_val==46341 and rs2_val==2<br>                                                                                                                  |[0x80002504]:mul a2, a0, a1<br> [0x80002508]:sw a2, 0x668(sp)<br>     |
| 279|[0x800067c8]<br>0xFFFF0EA4<br> |- rs1_val==46341 and rs2_val==1431655764<br>                                                                                                         |[0x8000251c]:mul a2, a0, a1<br> [0x80002520]:sw a2, 0x66c(sp)<br>     |
| 280|[0x800067cc]<br>0x00000000<br> |- rs1_val==46341 and rs2_val==0<br>                                                                                                                  |[0x80002530]:mul a2, a0, a1<br> [0x80002534]:sw a2, 0x670(sp)<br>     |
| 281|[0x800067d0]<br>0x0002D414<br> |- rs1_val==46341 and rs2_val==4<br>                                                                                                                  |[0x80002544]:mul a2, a0, a1<br> [0x80002548]:sw a2, 0x674(sp)<br>     |
| 282|[0x800067d4]<br>0x333259FA<br> |- rs1_val==46341 and rs2_val==858993458<br>                                                                                                          |[0x8000255c]:mul a2, a0, a1<br> [0x80002560]:sw a2, 0x678(sp)<br>     |
| 283|[0x800067d8]<br>0x666568F9<br> |- rs1_val==46341 and rs2_val==1717986917<br>                                                                                                         |[0x80002574]:mul a2, a0, a1<br> [0x80002578]:sw a2, 0x67c(sp)<br>     |
| 284|[0x800067dc]<br>0x7FFEA80F<br> |- rs1_val==46341 and rs2_val==46339<br>                                                                                                              |[0x8000258c]:mul a2, a0, a1<br> [0x80002590]:sw a2, 0x680(sp)<br>     |
| 285|[0x800067e0]<br>0x000078AE<br> |- rs1_val==46341 and rs2_val==1431655766<br>                                                                                                         |[0x800025a4]:mul a2, a0, a1<br> [0x800025a8]:sw a2, 0x684(sp)<br>     |
| 286|[0x800067e4]<br>0x00003C57<br> |- rs1_val==46341 and rs2_val==-1431655765<br>                                                                                                        |[0x800025bc]:mul a2, a0, a1<br> [0x800025c0]:sw a2, 0x688(sp)<br>     |
| 287|[0x800067e8]<br>0x00043E1E<br> |- rs1_val==46341 and rs2_val==6<br>                                                                                                                  |[0x800025d0]:mul a2, a0, a1<br> [0x800025d4]:sw a2, 0x68c(sp)<br>     |
| 288|[0x800067ec]<br>0x3333C404<br> |- rs1_val==46341 and rs2_val==858993460<br>                                                                                                          |[0x800025e8]:mul a2, a0, a1<br> [0x800025ec]:sw a2, 0x690(sp)<br>     |
| 289|[0x800067f0]<br>0x6666D303<br> |- rs1_val==46341 and rs2_val==1717986919<br>                                                                                                         |[0x80002600]:mul a2, a0, a1<br> [0x80002604]:sw a2, 0x694(sp)<br>     |
| 290|[0x800067f4]<br>0x800157F1<br> |- rs1_val==46341 and rs2_val==-46339<br>                                                                                                             |[0x80002618]:mul a2, a0, a1<br> [0x8000261c]:sw a2, 0x698(sp)<br>     |
| 291|[0x800067f8]<br>0x80001219<br> |- rs1_val==46341 and rs2_val==46341<br>                                                                                                              |[0x80002630]:mul a2, a0, a1<br> [0x80002634]:sw a2, 0x69c(sp)<br>     |
| 292|[0x800067fc]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1717986918<br>                                                                                                             |[0x80002644]:mul a2, a0, a1<br> [0x80002648]:sw a2, 0x6a0(sp)<br>     |
| 293|[0x80006800]<br>0x00000000<br> |- rs1_val==0 and rs2_val==-46340<br>                                                                                                                 |[0x80002658]:mul a2, a0, a1<br> [0x8000265c]:sw a2, 0x6a4(sp)<br>     |
| 294|[0x80006804]<br>0x00000000<br> |- rs1_val==0 and rs2_val==46340<br>                                                                                                                  |[0x8000266c]:mul a2, a0, a1<br> [0x80002670]:sw a2, 0x6a8(sp)<br>     |
| 295|[0x80006808]<br>0x00000000<br> |- rs1_val==0 and rs2_val==2<br>                                                                                                                      |[0x8000267c]:mul a2, a0, a1<br> [0x80002680]:sw a2, 0x6ac(sp)<br>     |
| 296|[0x8000680c]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1431655764<br>                                                                                                             |[0x80002690]:mul a2, a0, a1<br> [0x80002694]:sw a2, 0x6b0(sp)<br>     |
| 297|[0x80006810]<br>0x00000000<br> |- rs1_val==0 and rs2_val==4<br>                                                                                                                      |[0x800026a0]:mul a2, a0, a1<br> [0x800026a4]:sw a2, 0x6b4(sp)<br>     |
| 298|[0x80006814]<br>0x00000000<br> |- rs1_val==0 and rs2_val==858993458<br>                                                                                                              |[0x800026b4]:mul a2, a0, a1<br> [0x800026b8]:sw a2, 0x6b8(sp)<br>     |
| 299|[0x80006818]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1717986917<br>                                                                                                             |[0x800026c8]:mul a2, a0, a1<br> [0x800026cc]:sw a2, 0x6bc(sp)<br>     |
| 300|[0x8000681c]<br>0x00000000<br> |- rs1_val==0 and rs2_val==46339<br>                                                                                                                  |[0x800026dc]:mul a2, a0, a1<br> [0x800026e0]:sw a2, 0x6c0(sp)<br>     |
| 301|[0x80006820]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1431655766<br>                                                                                                             |[0x800026f0]:mul a2, a0, a1<br> [0x800026f4]:sw a2, 0x6c4(sp)<br>     |
| 302|[0x80006824]<br>0x00000000<br> |- rs1_val==0 and rs2_val==-1431655765<br>                                                                                                            |[0x80002704]:mul a2, a0, a1<br> [0x80002708]:sw a2, 0x6c8(sp)<br>     |
| 303|[0x80006828]<br>0x00000000<br> |- rs1_val==0 and rs2_val==6<br>                                                                                                                      |[0x80002714]:mul a2, a0, a1<br> [0x80002718]:sw a2, 0x6cc(sp)<br>     |
| 304|[0x8000682c]<br>0x00000000<br> |- rs1_val==0 and rs2_val==858993460<br>                                                                                                              |[0x80002728]:mul a2, a0, a1<br> [0x8000272c]:sw a2, 0x6d0(sp)<br>     |
| 305|[0x80006830]<br>0x00000000<br> |- rs1_val==0 and rs2_val==1717986919<br>                                                                                                             |[0x8000273c]:mul a2, a0, a1<br> [0x80002740]:sw a2, 0x6d4(sp)<br>     |
| 306|[0x80006834]<br>0x00000000<br> |- rs1_val==0 and rs2_val==-46339<br>                                                                                                                 |[0x80002750]:mul a2, a0, a1<br> [0x80002754]:sw a2, 0x6d8(sp)<br>     |
| 307|[0x80006838]<br>0x00000000<br> |- rs1_val==0 and rs2_val==46341<br>                                                                                                                  |[0x80002764]:mul a2, a0, a1<br> [0x80002768]:sw a2, 0x6dc(sp)<br>     |
| 308|[0x8000683c]<br>0x0000000C<br> |- rs1_val==4 and rs2_val==3<br>                                                                                                                      |[0x80002774]:mul a2, a0, a1<br> [0x80002778]:sw a2, 0x6e0(sp)<br>     |
| 309|[0x80006840]<br>0x55555554<br> |- rs1_val==4 and rs2_val==1431655765<br>                                                                                                             |[0x80002788]:mul a2, a0, a1<br> [0x8000278c]:sw a2, 0x6e4(sp)<br>     |
| 310|[0x80006844]<br>0xAAAAAAA8<br> |- rs1_val==4 and rs2_val==-1431655766<br>                                                                                                            |[0x8000279c]:mul a2, a0, a1<br> [0x800027a0]:sw a2, 0x6e8(sp)<br>     |
| 311|[0x80006848]<br>0x00000014<br> |- rs1_val==4 and rs2_val==5<br>                                                                                                                      |[0x800027ac]:mul a2, a0, a1<br> [0x800027b0]:sw a2, 0x6ec(sp)<br>     |
| 312|[0x8000684c]<br>0xCCCCCCCC<br> |- rs1_val==4 and rs2_val==858993459<br>                                                                                                              |[0x800027c0]:mul a2, a0, a1<br> [0x800027c4]:sw a2, 0x6f0(sp)<br>     |
| 313|[0x80006850]<br>0x99999998<br> |- rs1_val==4 and rs2_val==1717986918<br>                                                                                                             |[0x800027d4]:mul a2, a0, a1<br> [0x800027d8]:sw a2, 0x6f4(sp)<br>     |
| 314|[0x80006854]<br>0xFFFD2BF0<br> |- rs1_val==4 and rs2_val==-46340<br>                                                                                                                 |[0x800027e8]:mul a2, a0, a1<br> [0x800027ec]:sw a2, 0x6f8(sp)<br>     |
| 315|[0x80006858]<br>0x0002D410<br> |- rs1_val==4 and rs2_val==46340<br>                                                                                                                  |[0x800027fc]:mul a2, a0, a1<br> [0x80002800]:sw a2, 0x6fc(sp)<br>     |
| 316|[0x8000685c]<br>0x00000008<br> |- rs1_val==4 and rs2_val==2<br>                                                                                                                      |[0x8000280c]:mul a2, a0, a1<br> [0x80002810]:sw a2, 0x700(sp)<br>     |
| 317|[0x80006860]<br>0x00000000<br> |- rs1_val==4 and rs2_val==0<br>                                                                                                                      |[0x8000281c]:mul a2, a0, a1<br> [0x80002820]:sw a2, 0x704(sp)<br>     |
| 318|[0x80006864]<br>0x00000010<br> |- rs1_val==4 and rs2_val==4<br>                                                                                                                      |[0x8000282c]:mul a2, a0, a1<br> [0x80002830]:sw a2, 0x708(sp)<br>     |
| 319|[0x80006868]<br>0xCCCCCCC8<br> |- rs1_val==4 and rs2_val==858993458<br>                                                                                                              |[0x80002840]:mul a2, a0, a1<br> [0x80002844]:sw a2, 0x70c(sp)<br>     |
| 320|[0x8000686c]<br>0x99999994<br> |- rs1_val==4 and rs2_val==1717986917<br>                                                                                                             |[0x80002854]:mul a2, a0, a1<br> [0x80002858]:sw a2, 0x710(sp)<br>     |
| 321|[0x80006870]<br>0x0002D40C<br> |- rs1_val==4 and rs2_val==46339<br>                                                                                                                  |[0x80002868]:mul a2, a0, a1<br> [0x8000286c]:sw a2, 0x714(sp)<br>     |
| 322|[0x80006874]<br>0x55555558<br> |- rs1_val==4 and rs2_val==1431655766<br>                                                                                                             |[0x8000287c]:mul a2, a0, a1<br> [0x80002880]:sw a2, 0x718(sp)<br>     |
| 323|[0x80006878]<br>0xAAAAAAAC<br> |- rs1_val==4 and rs2_val==-1431655765<br>                                                                                                            |[0x80002890]:mul a2, a0, a1<br> [0x80002894]:sw a2, 0x71c(sp)<br>     |
| 324|[0x8000687c]<br>0x00000018<br> |- rs1_val==4 and rs2_val==6<br>                                                                                                                      |[0x800028a0]:mul a2, a0, a1<br> [0x800028a4]:sw a2, 0x720(sp)<br>     |
| 325|[0x80006880]<br>0xCCCCCCD0<br> |- rs1_val==4 and rs2_val==858993460<br>                                                                                                              |[0x800028b4]:mul a2, a0, a1<br> [0x800028b8]:sw a2, 0x724(sp)<br>     |
| 326|[0x80006884]<br>0x9999999C<br> |- rs1_val==4 and rs2_val==1717986919<br>                                                                                                             |[0x800028c8]:mul a2, a0, a1<br> [0x800028cc]:sw a2, 0x728(sp)<br>     |
| 327|[0x80006888]<br>0xFFFD2BF4<br> |- rs1_val==4 and rs2_val==-46339<br>                                                                                                                 |[0x800028dc]:mul a2, a0, a1<br> [0x800028e0]:sw a2, 0x72c(sp)<br>     |
| 328|[0x8000688c]<br>0x0002D414<br> |- rs1_val==4 and rs2_val==46341<br>                                                                                                                  |[0x800028f0]:mul a2, a0, a1<br> [0x800028f4]:sw a2, 0x730(sp)<br>     |
| 329|[0x80006890]<br>0x99999996<br> |- rs1_val==858993458 and rs2_val==3<br>                                                                                                              |[0x80002904]:mul a2, a0, a1<br> [0x80002908]:sw a2, 0x734(sp)<br>     |
| 330|[0x80006894]<br>0x9999999A<br> |- rs1_val==858993458 and rs2_val==1431655765<br>                                                                                                     |[0x8000291c]:mul a2, a0, a1<br> [0x80002920]:sw a2, 0x738(sp)<br>     |
| 331|[0x80006898]<br>0x33333334<br> |- rs1_val==858993458 and rs2_val==-1431655766<br>                                                                                                    |[0x80002934]:mul a2, a0, a1<br> [0x80002938]:sw a2, 0x73c(sp)<br>     |
| 332|[0x8000689c]<br>0xFFFFFFFA<br> |- rs1_val==858993458 and rs2_val==5<br>                                                                                                              |[0x80002948]:mul a2, a0, a1<br> [0x8000294c]:sw a2, 0x740(sp)<br>     |
| 333|[0x800068a0]<br>0x8F5C28F6<br> |- rs1_val==858993458 and rs2_val==858993459<br>                                                                                                      |[0x80002960]:mul a2, a0, a1<br> [0x80002964]:sw a2, 0x744(sp)<br>     |
| 334|[0x800068a4]<br>0x1EB851EC<br> |- rs1_val==858993458 and rs2_val==1717986918<br>                                                                                                     |[0x80002978]:mul a2, a0, a1<br> [0x8000297c]:sw a2, 0x748(sp)<br>     |
| 335|[0x800068a8]<br>0x0000D938<br> |- rs1_val==858993458 and rs2_val==-46340<br>                                                                                                         |[0x80002990]:mul a2, a0, a1<br> [0x80002994]:sw a2, 0x74c(sp)<br>     |
| 336|[0x800068ac]<br>0xFFFF26C8<br> |- rs1_val==858993458 and rs2_val==46340<br>                                                                                                          |[0x800029a8]:mul a2, a0, a1<br> [0x800029ac]:sw a2, 0x750(sp)<br>     |
| 337|[0x800068b0]<br>0x66666664<br> |- rs1_val==858993458 and rs2_val==2<br>                                                                                                              |[0x800029bc]:mul a2, a0, a1<br> [0x800029c0]:sw a2, 0x754(sp)<br>     |
| 338|[0x800068b4]<br>0x66666668<br> |- rs1_val==858993458 and rs2_val==1431655764<br>                                                                                                     |[0x800029d4]:mul a2, a0, a1<br> [0x800029d8]:sw a2, 0x758(sp)<br>     |
| 339|[0x800068b8]<br>0x00000000<br> |- rs1_val==858993458 and rs2_val==0<br>                                                                                                              |[0x800029e8]:mul a2, a0, a1<br> [0x800029ec]:sw a2, 0x75c(sp)<br>     |
| 340|[0x800068bc]<br>0xCCCCCCC8<br> |- rs1_val==858993458 and rs2_val==4<br>                                                                                                              |[0x800029fc]:mul a2, a0, a1<br> [0x80002a00]:sw a2, 0x760(sp)<br>     |
| 341|[0x800068c0]<br>0x5C28F5C4<br> |- rs1_val==858993458 and rs2_val==858993458<br>                                                                                                      |[0x80002a14]:mul a2, a0, a1<br> [0x80002a18]:sw a2, 0x764(sp)<br>     |
| 342|[0x800068c4]<br>0xEB851EBA<br> |- rs1_val==858993458 and rs2_val==1717986917<br>                                                                                                     |[0x80002a2c]:mul a2, a0, a1<br> [0x80002a30]:sw a2, 0x768(sp)<br>     |
| 343|[0x800068c8]<br>0xCCCBF396<br> |- rs1_val==858993458 and rs2_val==46339<br>                                                                                                          |[0x80002a44]:mul a2, a0, a1<br> [0x80002a48]:sw a2, 0x76c(sp)<br>     |
| 344|[0x800068cc]<br>0xCCCCCCCC<br> |- rs1_val==858993458 and rs2_val==1431655766<br>                                                                                                     |[0x80002a5c]:mul a2, a0, a1<br> [0x80002a60]:sw a2, 0x770(sp)<br>     |
| 345|[0x800068d0]<br>0x66666666<br> |- rs1_val==858993458 and rs2_val==-1431655765<br>                                                                                                    |[0x80002a74]:mul a2, a0, a1<br> [0x80002a78]:sw a2, 0x774(sp)<br>     |
| 346|[0x800068d4]<br>0x3333332C<br> |- rs1_val==858993458 and rs2_val==6<br>                                                                                                              |[0x80002a88]:mul a2, a0, a1<br> [0x80002a8c]:sw a2, 0x778(sp)<br>     |
| 347|[0x800068d8]<br>0xC28F5C28<br> |- rs1_val==858993458 and rs2_val==858993460<br>                                                                                                      |[0x80002aa0]:mul a2, a0, a1<br> [0x80002aa4]:sw a2, 0x77c(sp)<br>     |
| 348|[0x800068dc]<br>0x51EB851E<br> |- rs1_val==858993458 and rs2_val==1717986919<br>                                                                                                     |[0x80002ab8]:mul a2, a0, a1<br> [0x80002abc]:sw a2, 0x780(sp)<br>     |
| 349|[0x800068e0]<br>0x33340C6A<br> |- rs1_val==858993458 and rs2_val==-46339<br>                                                                                                         |[0x80002ad0]:mul a2, a0, a1<br> [0x80002ad4]:sw a2, 0x784(sp)<br>     |
| 350|[0x800068e4]<br>0x333259FA<br> |- rs1_val==858993458 and rs2_val==46341<br>                                                                                                          |[0x80002ae8]:mul a2, a0, a1<br> [0x80002aec]:sw a2, 0x788(sp)<br>     |
| 351|[0x800068e8]<br>0x3333332F<br> |- rs1_val==1717986917 and rs2_val==3<br>                                                                                                             |[0x80002afc]:mul a2, a0, a1<br> [0x80002b00]:sw a2, 0x78c(sp)<br>     |
| 352|[0x800068ec]<br>0x88888889<br> |- rs1_val==1717986917 and rs2_val==1431655765<br>                                                                                                    |[0x80002b14]:mul a2, a0, a1<br> [0x80002b18]:sw a2, 0x790(sp)<br>     |
| 353|[0x800068f0]<br>0x11111112<br> |- rs1_val==1717986917 and rs2_val==-1431655766<br>                                                                                                   |[0x80002b2c]:mul a2, a0, a1<br> [0x80002b30]:sw a2, 0x794(sp)<br>     |
| 354|[0x800068f4]<br>0xFFFFFFF9<br> |- rs1_val==1717986917 and rs2_val==5<br>                                                                                                             |[0x80002b40]:mul a2, a0, a1<br> [0x80002b44]:sw a2, 0x798(sp)<br>     |
| 355|[0x800068f8]<br>0x51EB851F<br> |- rs1_val==1717986917 and rs2_val==858993459<br>                                                                                                     |[0x80002b58]:mul a2, a0, a1<br> [0x80002b5c]:sw a2, 0x79c(sp)<br>     |
| 356|[0x800068fc]<br>0xA3D70A3E<br> |- rs1_val==1717986917 and rs2_val==1717986918<br>                                                                                                    |[0x80002b70]:mul a2, a0, a1<br> [0x80002b74]:sw a2, 0x7a0(sp)<br>     |
| 357|[0x80006900]<br>0x0000FD6C<br> |- rs1_val==1717986917 and rs2_val==-46340<br>                                                                                                        |[0x80002b88]:mul a2, a0, a1<br> [0x80002b8c]:sw a2, 0x7a4(sp)<br>     |
| 358|[0x80006904]<br>0xFFFF0294<br> |- rs1_val==1717986917 and rs2_val==46340<br>                                                                                                         |[0x80002ba0]:mul a2, a0, a1<br> [0x80002ba4]:sw a2, 0x7a8(sp)<br>     |
| 359|[0x80006908]<br>0xCCCCCCCA<br> |- rs1_val==1717986917 and rs2_val==2<br>                                                                                                             |[0x80002bb4]:mul a2, a0, a1<br> [0x80002bb8]:sw a2, 0x7ac(sp)<br>     |
| 360|[0x8000690c]<br>0x22222224<br> |- rs1_val==1717986917 and rs2_val==1431655764<br>                                                                                                    |[0x80002bcc]:mul a2, a0, a1<br> [0x80002bd0]:sw a2, 0x7b0(sp)<br>     |
| 361|[0x80006910]<br>0x99999994<br> |- rs1_val==1717986917 and rs2_val==4<br>                                                                                                             |[0x80002be0]:mul a2, a0, a1<br> [0x80002be4]:sw a2, 0x7b4(sp)<br>     |
| 362|[0x80006914]<br>0xEB851EBA<br> |- rs1_val==1717986917 and rs2_val==858993458<br>                                                                                                     |[0x80002bf8]:mul a2, a0, a1<br> [0x80002bfc]:sw a2, 0x7b8(sp)<br>     |
| 363|[0x80006918]<br>0x3D70A3D9<br> |- rs1_val==1717986917 and rs2_val==1717986917<br>                                                                                                    |[0x80002c10]:mul a2, a0, a1<br> [0x80002c14]:sw a2, 0x7bc(sp)<br>     |
| 364|[0x8000691c]<br>0x99989C2F<br> |- rs1_val==1717986917 and rs2_val==46339<br>                                                                                                         |[0x80002c28]:mul a2, a0, a1<br> [0x80002c2c]:sw a2, 0x7c0(sp)<br>     |
| 365|[0x80006920]<br>0xEEEEEEEE<br> |- rs1_val==1717986917 and rs2_val==1431655766<br>                                                                                                    |[0x80002c40]:mul a2, a0, a1<br> [0x80002c44]:sw a2, 0x7c4(sp)<br>     |
| 366|[0x80006924]<br>0x77777777<br> |- rs1_val==1717986917 and rs2_val==-1431655765<br>                                                                                                   |[0x80002c58]:mul a2, a0, a1<br> [0x80002c5c]:sw a2, 0x7c8(sp)<br>     |
| 367|[0x80006928]<br>0x6666665E<br> |- rs1_val==1717986917 and rs2_val==6<br>                                                                                                             |[0x80002c6c]:mul a2, a0, a1<br> [0x80002c70]:sw a2, 0x7cc(sp)<br>     |
| 368|[0x8000692c]<br>0xB851EB84<br> |- rs1_val==1717986917 and rs2_val==858993460<br>                                                                                                     |[0x80002c84]:mul a2, a0, a1<br> [0x80002c88]:sw a2, 0x7d0(sp)<br>     |
| 369|[0x80006930]<br>0x0A3D70A3<br> |- rs1_val==1717986917 and rs2_val==1717986919<br>                                                                                                    |[0x80002c9c]:mul a2, a0, a1<br> [0x80002ca0]:sw a2, 0x7d4(sp)<br>     |
| 370|[0x80006934]<br>0x666763D1<br> |- rs1_val==1717986917 and rs2_val==-46339<br>                                                                                                        |[0x80002cb4]:mul a2, a0, a1<br> [0x80002cb8]:sw a2, 0x7d8(sp)<br>     |
| 371|[0x80006938]<br>0x666568F9<br> |- rs1_val==1717986917 and rs2_val==46341<br>                                                                                                         |[0x80002ccc]:mul a2, a0, a1<br> [0x80002cd0]:sw a2, 0x7dc(sp)<br>     |
| 372|[0x8000693c]<br>0x00021F09<br> |- rs1_val==46339 and rs2_val==3<br>                                                                                                                  |[0x80002ce0]:mul a2, a0, a1<br> [0x80002ce4]:sw a2, 0x7e0(sp)<br>     |
| 373|[0x80006940]<br>0x555518FF<br> |- rs1_val==46339 and rs2_val==1431655765<br>                                                                                                         |[0x80002cf8]:mul a2, a0, a1<br> [0x80002cfc]:sw a2, 0x7e4(sp)<br>     |
| 374|[0x80006944]<br>0xAAAA31FE<br> |- rs1_val==46339 and rs2_val==-1431655766<br>                                                                                                        |[0x80002d10]:mul a2, a0, a1<br> [0x80002d14]:sw a2, 0x7e8(sp)<br>     |
| 375|[0x80006948]<br>0x0003890F<br> |- rs1_val==46339 and rs2_val==5<br>                                                                                                                  |[0x80002d24]:mul a2, a0, a1<br> [0x80002d28]:sw a2, 0x7ec(sp)<br>     |
| 376|[0x8000694c]<br>0xCCCCA899<br> |- rs1_val==46339 and rs2_val==858993459<br>                                                                                                          |[0x80002d3c]:mul a2, a0, a1<br> [0x80002d40]:sw a2, 0x7f0(sp)<br>     |
| 377|[0x80006950]<br>0x99995132<br> |- rs1_val==46339 and rs2_val==1717986918<br>                                                                                                         |[0x80002d54]:mul a2, a0, a1<br> [0x80002d58]:sw a2, 0x7f4(sp)<br>     |
| 378|[0x80006954]<br>0x80020CF4<br> |- rs1_val==46339 and rs2_val==-46340<br>                                                                                                             |[0x80002d6c]:mul a2, a0, a1<br> [0x80002d70]:sw a2, 0x7f8(sp)<br>     |
| 379|[0x80006958]<br>0x7FFDF30C<br> |- rs1_val==46339 and rs2_val==46340<br>                                                                                                              |[0x80002d84]:mul a2, a0, a1<br> [0x80002d88]:sw a2, 0x7fc(sp)<br>     |
| 380|[0x8000695c]<br>0x00016A06<br> |- rs1_val==46339 and rs2_val==2<br>                                                                                                                  |[0x80002dcc]:mul a2, a0, a1<br> [0x80002dd0]:sw a2, 0x0(sp)<br>       |
| 381|[0x80006960]<br>0x555463FC<br> |- rs1_val==46339 and rs2_val==1431655764<br>                                                                                                         |[0x80002de4]:mul a2, a0, a1<br> [0x80002de8]:sw a2, 0x4(sp)<br>       |
| 382|[0x80006964]<br>0x00000000<br> |- rs1_val==46339 and rs2_val==0<br>                                                                                                                  |[0x80002df8]:mul a2, a0, a1<br> [0x80002dfc]:sw a2, 0x8(sp)<br>       |
| 383|[0x80006968]<br>0x0002D40C<br> |- rs1_val==46339 and rs2_val==4<br>                                                                                                                  |[0x80002e0c]:mul a2, a0, a1<br> [0x80002e10]:sw a2, 0xc(sp)<br>       |
| 384|[0x8000696c]<br>0xCCCBF396<br> |- rs1_val==46339 and rs2_val==858993458<br>                                                                                                          |[0x80002e24]:mul a2, a0, a1<br> [0x80002e28]:sw a2, 0x10(sp)<br>      |
| 385|[0x80006970]<br>0x99989C2F<br> |- rs1_val==46339 and rs2_val==1717986917<br>                                                                                                         |[0x80002e3c]:mul a2, a0, a1<br> [0x80002e40]:sw a2, 0x14(sp)<br>      |
| 386|[0x80006974]<br>0x7FFD3E09<br> |- rs1_val==46339 and rs2_val==46339<br>                                                                                                              |[0x80002e54]:mul a2, a0, a1<br> [0x80002e58]:sw a2, 0x18(sp)<br>      |
| 387|[0x80006978]<br>0x5555CE02<br> |- rs1_val==46339 and rs2_val==1431655766<br>                                                                                                         |[0x80002e6c]:mul a2, a0, a1<br> [0x80002e70]:sw a2, 0x1c(sp)<br>      |
| 388|[0x8000697c]<br>0xAAAAE701<br> |- rs1_val==46339 and rs2_val==-1431655765<br>                                                                                                        |[0x80002e84]:mul a2, a0, a1<br> [0x80002e88]:sw a2, 0x20(sp)<br>      |
| 389|[0x80006980]<br>0x00043E12<br> |- rs1_val==46339 and rs2_val==6<br>                                                                                                                  |[0x80002e98]:mul a2, a0, a1<br> [0x80002e9c]:sw a2, 0x24(sp)<br>      |
| 390|[0x80006984]<br>0xCCCD5D9C<br> |- rs1_val==46339 and rs2_val==858993460<br>                                                                                                          |[0x80002eb0]:mul a2, a0, a1<br> [0x80002eb4]:sw a2, 0x28(sp)<br>      |
| 391|[0x80006988]<br>0x999A0635<br> |- rs1_val==46339 and rs2_val==1717986919<br>                                                                                                         |[0x80002ec8]:mul a2, a0, a1<br> [0x80002ecc]:sw a2, 0x2c(sp)<br>      |
| 392|[0x8000698c]<br>0x8002C1F7<br> |- rs1_val==46339 and rs2_val==-46339<br>                                                                                                             |[0x80002ee0]:mul a2, a0, a1<br> [0x80002ee4]:sw a2, 0x30(sp)<br>      |
| 393|[0x80006990]<br>0x7FFEA80F<br> |- rs1_val==46339 and rs2_val==46341<br>                                                                                                              |[0x80002ef8]:mul a2, a0, a1<br> [0x80002efc]:sw a2, 0x34(sp)<br>      |
| 394|[0x80006994]<br>0x00000002<br> |- rs1_val==1431655766 and rs2_val==3<br>                                                                                                             |[0x80002f0c]:mul a2, a0, a1<br> [0x80002f10]:sw a2, 0x38(sp)<br>      |
| 395|[0x80006998]<br>0x8E38E38E<br> |- rs1_val==1431655766 and rs2_val==1431655765<br>                                                                                                    |[0x80002f24]:mul a2, a0, a1<br> [0x80002f28]:sw a2, 0x3c(sp)<br>      |
| 396|[0x8000699c]<br>0x1C71C71C<br> |- rs1_val==1431655766 and rs2_val==-1431655766<br>                                                                                                   |[0x80002f3c]:mul a2, a0, a1<br> [0x80002f40]:sw a2, 0x40(sp)<br>      |
| 397|[0x800069a0]<br>0xAAAAAAAE<br> |- rs1_val==1431655766 and rs2_val==5<br>                                                                                                             |[0x80002f50]:mul a2, a0, a1<br> [0x80002f54]:sw a2, 0x44(sp)<br>      |
| 398|[0x800069a4]<br>0x22222222<br> |- rs1_val==1431655766 and rs2_val==858993459<br>                                                                                                     |[0x80002f68]:mul a2, a0, a1<br> [0x80002f6c]:sw a2, 0x48(sp)<br>      |
| 399|[0x800069a8]<br>0x44444444<br> |- rs1_val==1431655766 and rs2_val==1717986918<br>                                                                                                    |[0x80002f80]:mul a2, a0, a1<br> [0x80002f84]:sw a2, 0x4c(sp)<br>      |
| 400|[0x800069ac]<br>0x5554DCA8<br> |- rs1_val==1431655766 and rs2_val==-46340<br>                                                                                                        |[0x80002f98]:mul a2, a0, a1<br> [0x80002f9c]:sw a2, 0x50(sp)<br>      |
| 401|[0x800069b0]<br>0xAAAB2358<br> |- rs1_val==1431655766 and rs2_val==46340<br>                                                                                                         |[0x80002fb0]:mul a2, a0, a1<br> [0x80002fb4]:sw a2, 0x54(sp)<br>      |
| 402|[0x800069b4]<br>0xAAAAAAAC<br> |- rs1_val==1431655766 and rs2_val==2<br>                                                                                                             |[0x80002fc4]:mul a2, a0, a1<br> [0x80002fc8]:sw a2, 0x58(sp)<br>      |
| 403|[0x800069b8]<br>0x38E38E38<br> |- rs1_val==1431655766 and rs2_val==1431655764<br>                                                                                                    |[0x80002fdc]:mul a2, a0, a1<br> [0x80002fe0]:sw a2, 0x5c(sp)<br>      |
| 404|[0x800069bc]<br>0x00000000<br> |- rs1_val==1431655766 and rs2_val==0<br>                                                                                                             |[0x80002ff0]:mul a2, a0, a1<br> [0x80002ff4]:sw a2, 0x60(sp)<br>      |
| 405|[0x800069c0]<br>0x55555558<br> |- rs1_val==1431655766 and rs2_val==4<br>                                                                                                             |[0x80003004]:mul a2, a0, a1<br> [0x80003008]:sw a2, 0x64(sp)<br>      |
| 406|[0x800069c4]<br>0xCCCCCCCC<br> |- rs1_val==1431655766 and rs2_val==858993458<br>                                                                                                     |[0x8000301c]:mul a2, a0, a1<br> [0x80003020]:sw a2, 0x68(sp)<br>      |
| 407|[0x800069c8]<br>0xEEEEEEEE<br> |- rs1_val==1431655766 and rs2_val==1717986917<br>                                                                                                    |[0x80003034]:mul a2, a0, a1<br> [0x80003038]:sw a2, 0x6c(sp)<br>      |
| 408|[0x800069cc]<br>0x5555CE02<br> |- rs1_val==1431655766 and rs2_val==46339<br>                                                                                                         |[0x8000304c]:mul a2, a0, a1<br> [0x80003050]:sw a2, 0x70(sp)<br>      |
| 409|[0x800069d0]<br>0xE38E38E4<br> |- rs1_val==1431655766 and rs2_val==1431655766<br>                                                                                                    |[0x80003064]:mul a2, a0, a1<br> [0x80003068]:sw a2, 0x74(sp)<br>      |
| 410|[0x800069d4]<br>0x71C71C72<br> |- rs1_val==1431655766 and rs2_val==-1431655765<br>                                                                                                   |[0x8000307c]:mul a2, a0, a1<br> [0x80003080]:sw a2, 0x78(sp)<br>      |
| 411|[0x800069d8]<br>0x00000004<br> |- rs1_val==1431655766 and rs2_val==6<br>                                                                                                             |[0x80003090]:mul a2, a0, a1<br> [0x80003094]:sw a2, 0x7c(sp)<br>      |
| 412|[0x800069dc]<br>0x77777778<br> |- rs1_val==1431655766 and rs2_val==858993460<br>                                                                                                     |[0x800030a8]:mul a2, a0, a1<br> [0x800030ac]:sw a2, 0x80(sp)<br>      |
| 413|[0x800069e0]<br>0x9999999A<br> |- rs1_val==1431655766 and rs2_val==1717986919<br>                                                                                                    |[0x800030c0]:mul a2, a0, a1<br> [0x800030c4]:sw a2, 0x84(sp)<br>      |
| 414|[0x800069e4]<br>0xAAAA31FE<br> |- rs1_val==1431655766 and rs2_val==-46339<br>                                                                                                        |[0x800030d8]:mul a2, a0, a1<br> [0x800030dc]:sw a2, 0x88(sp)<br>      |
| 415|[0x800069e8]<br>0x000078AE<br> |- rs1_val==1431655766 and rs2_val==46341<br>                                                                                                         |[0x800030f0]:mul a2, a0, a1<br> [0x800030f4]:sw a2, 0x8c(sp)<br>      |
| 416|[0x800069ec]<br>0x00000001<br> |- rs1_val==-1431655765 and rs2_val==3<br>                                                                                                            |[0x80003104]:mul a2, a0, a1<br> [0x80003108]:sw a2, 0x90(sp)<br>      |
| 417|[0x800069f0]<br>0xC71C71C7<br> |- rs1_val==-1431655765 and rs2_val==1431655765<br>                                                                                                   |[0x8000311c]:mul a2, a0, a1<br> [0x80003120]:sw a2, 0x94(sp)<br>      |
| 418|[0x800069f4]<br>0x8E38E38E<br> |- rs1_val==-1431655765 and rs2_val==-1431655766<br>                                                                                                  |[0x80003134]:mul a2, a0, a1<br> [0x80003138]:sw a2, 0x98(sp)<br>      |
| 419|[0x800069f8]<br>0x55555557<br> |- rs1_val==-1431655765 and rs2_val==5<br>                                                                                                            |[0x80003148]:mul a2, a0, a1<br> [0x8000314c]:sw a2, 0x9c(sp)<br>      |
| 420|[0x800069fc]<br>0x11111111<br> |- rs1_val==-1431655765 and rs2_val==858993459<br>                                                                                                    |[0x80003160]:mul a2, a0, a1<br> [0x80003164]:sw a2, 0xa0(sp)<br>      |
| 421|[0x80006a00]<br>0x22222222<br> |- rs1_val==-1431655765 and rs2_val==1717986918<br>                                                                                                   |[0x80003178]:mul a2, a0, a1<br> [0x8000317c]:sw a2, 0xa4(sp)<br>      |
| 422|[0x80006a04]<br>0xAAAA6E54<br> |- rs1_val==-1431655765 and rs2_val==-46340<br>                                                                                                       |[0x80003190]:mul a2, a0, a1<br> [0x80003194]:sw a2, 0xa8(sp)<br>      |
| 423|[0x80006a08]<br>0x555591AC<br> |- rs1_val==-1431655765 and rs2_val==46340<br>                                                                                                        |[0x800031a8]:mul a2, a0, a1<br> [0x800031ac]:sw a2, 0xac(sp)<br>      |
| 424|[0x80006a0c]<br>0x55555556<br> |- rs1_val==-1431655765 and rs2_val==2<br>                                                                                                            |[0x800031bc]:mul a2, a0, a1<br> [0x800031c0]:sw a2, 0xb0(sp)<br>      |
| 425|[0x80006a10]<br>0x1C71C71C<br> |- rs1_val==-1431655765 and rs2_val==1431655764<br>                                                                                                   |[0x800031d4]:mul a2, a0, a1<br> [0x800031d8]:sw a2, 0xb4(sp)<br>      |
| 426|[0x80006a14]<br>0x00000000<br> |- rs1_val==-1431655765 and rs2_val==0<br>                                                                                                            |[0x800031e8]:mul a2, a0, a1<br> [0x800031ec]:sw a2, 0xb8(sp)<br>      |
| 427|[0x80006a18]<br>0xAAAAAAAC<br> |- rs1_val==-1431655765 and rs2_val==4<br>                                                                                                            |[0x800031fc]:mul a2, a0, a1<br> [0x80003200]:sw a2, 0xbc(sp)<br>      |
| 428|[0x80006a1c]<br>0x66666666<br> |- rs1_val==-1431655765 and rs2_val==858993458<br>                                                                                                    |[0x80003214]:mul a2, a0, a1<br> [0x80003218]:sw a2, 0xc0(sp)<br>      |
| 429|[0x80006a20]<br>0x77777777<br> |- rs1_val==-1431655765 and rs2_val==1717986917<br>                                                                                                   |[0x8000322c]:mul a2, a0, a1<br> [0x80003230]:sw a2, 0xc4(sp)<br>      |
| 430|[0x80006a24]<br>0xAAAAE701<br> |- rs1_val==-1431655765 and rs2_val==46339<br>                                                                                                        |[0x80003244]:mul a2, a0, a1<br> [0x80003248]:sw a2, 0xc8(sp)<br>      |
| 431|[0x80006a28]<br>0x71C71C72<br> |- rs1_val==-1431655765 and rs2_val==1431655766<br>                                                                                                   |[0x8000325c]:mul a2, a0, a1<br> [0x80003260]:sw a2, 0xcc(sp)<br>      |
