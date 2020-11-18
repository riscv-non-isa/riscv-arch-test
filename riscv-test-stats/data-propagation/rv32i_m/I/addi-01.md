
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80002120')]      |
| SIG_REGION                | [('0x80004204', '0x80004ab8', '557 words')]      |
| COV_LABELS                | addi      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/addi-01.S/addi-01.S    |
| Total Number of coverpoints| 655     |
| Total Coverpoints Hit     | 655      |
| Total Signature Updates   | 557      |
| STAT1                     | 549      |
| STAT2                     | 8      |
| STAT3                     | 540     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800002f0]:addi a1, a0, 2731
      [0x800002f4]:sw a1, 48(ra)
 -- Signature Address: 0x80004294 Data: 0x00000AAB
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val < 0
      - rs1_val == 4096




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800011b0]:addi a1, a0, 3
      [0x800011b4]:sw a1, 1080(ra)
 -- Signature Address: 0x8000469c Data: 0x00000003
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val == 0
      - rs1_val != imm_val
      - rs1_val==0 and imm_val==3




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800011d4]:addi a1, a0, 5
      [0x800011d8]:sw a1, 1092(ra)
 -- Signature Address: 0x800046a8 Data: 0x00000005
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val == 0
      - rs1_val != imm_val
      - rs1_val==0 and imm_val==5




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800016c0]:addi a1, a0, 2
      [0x800016c4]:sw a1, 1412(ra)
 -- Signature Address: 0x800047e8 Data: 0x00000002
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val == 0
      - rs1_val != imm_val
      - imm_val == 2
      - rs1_val==0 and imm_val==2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800016d8]:addi a1, a0, 0
      [0x800016dc]:sw a1, 1420(ra)
 -- Signature Address: 0x800047f0 Data: 0x00000000
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - imm_val == 0
      - rs1_val == 0
      - rs1_val == imm_val
      - rs1_val==0 and imm_val==0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800016e4]:addi a1, a0, 4
      [0x800016e8]:sw a1, 1424(ra)
 -- Signature Address: 0x800047f4 Data: 0x00000004
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val == 0
      - rs1_val != imm_val
      - imm_val == 4
      - rs1_val==0 and imm_val==4




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000172c]:addi a1, a0, 6
      [0x80001730]:sw a1, 1448(ra)
 -- Signature Address: 0x8000480c Data: 0x00000006
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val == 0
      - rs1_val != imm_val
      - rs1_val==0 and imm_val==6




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80002110]:addi a1, a0, 32
      [0x80002114]:sw a1, 80(ra)
 -- Signature Address: 0x80004ab4 Data: 0x00004020
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val > 0
      - imm_val == 32
      - rs1_val == 16384






```

## Details of STAT3

```
[0x800000fc]:addi s2, s2, 268
[0x80000100]:lui s11, 1040384

[0x80000104]:addi s11, s11, 4095

[0x80000114]:addi a5, a5, 819

[0x80000130]:addi t3, t3, 4095

[0x80000148]:addi a1, zero, 0

[0x80000158]:addi s3, s3, 4095

[0x80000164]:addi t6, zero, 1

[0x80000170]:addi s10, zero, 3967

[0x80000180]:addi zero, zero, 0

[0x8000018c]:addi ra, zero, 256

[0x800001b0]:addi a2, zero, 3071

[0x800001bc]:addi t0, zero, 512

[0x800001d4]:addi s1, zero, 0

[0x800001e4]:addi sp, sp, 4095

[0x800001f0]:addi s5, zero, 4063

[0x80000200]:addi gp, gp, 1284

[0x80000210]:addi a3, a3, 4095

[0x8000021c]:addi s9, zero, 6

[0x8000022c]:addi fp, fp, 4095

[0x80000248]:addi ra, ra, 32
[0x8000024c]:lui s6, 1048560

[0x80000250]:addi s6, s6, 4095

[0x8000025c]:addi a0, zero, 4

[0x8000026c]:addi t4, t4, 2813

[0x8000027c]:addi t2, t2, 820

[0x80000288]:addi tp, zero, 2

[0x80000294]:addi s7, zero, 8

[0x800002a0]:addi s2, zero, 16

[0x800002ac]:addi s4, zero, 32

[0x800002b8]:addi a0, zero, 64

[0x800002c4]:addi a0, zero, 128

[0x800002d0]:addi a0, zero, 1024

[0x800002e0]:addi a0, a0, 2048

[0x80000394]:addi a0, zero, 4094

[0x800003a0]:addi a0, zero, 4093

[0x800003ac]:addi a0, zero, 4091

[0x800003b8]:addi a0, zero, 4087

[0x800003c4]:addi a0, zero, 4079

[0x800003d0]:addi a0, zero, 4031

[0x800003dc]:addi a0, zero, 3839

[0x800003e8]:addi a0, zero, 3583

[0x800003f8]:addi a0, a0, 2047

[0x80000408]:addi a0, a0, 4095

[0x80000418]:addi a0, a0, 4095

[0x80000428]:addi a0, a0, 4095

[0x80000438]:addi a0, a0, 4095

[0x80000448]:addi a0, a0, 4095

[0x80000458]:addi a0, a0, 4095

[0x80000468]:addi a0, a0, 4095

[0x80000478]:addi a0, a0, 4095

[0x80000488]:addi a0, a0, 4095

[0x80000498]:addi a0, a0, 4095

[0x800004a8]:addi a0, a0, 4095

[0x800004b8]:addi a0, a0, 4095

[0x800004c8]:addi a0, a0, 4095

[0x800004d8]:addi a0, a0, 4095

[0x800004e8]:addi a0, a0, 4095

[0x800004f8]:addi a0, a0, 1365

[0x80000508]:addi a0, a0, 2730

[0x80000514]:addi a0, zero, 3

[0x80000520]:addi a0, zero, 3

[0x8000052c]:addi a0, zero, 3

[0x80000538]:addi a0, zero, 3

[0x80000544]:addi a0, zero, 3

[0x80000550]:addi a0, zero, 3

[0x8000055c]:addi a0, zero, 3

[0x80000568]:addi a0, zero, 3

[0x80000574]:addi a0, zero, 3

[0x80000580]:addi a0, zero, 3

[0x8000058c]:addi a0, zero, 3

[0x80000598]:addi a0, zero, 3

[0x800005a4]:addi a0, zero, 3

[0x800005b0]:addi a0, zero, 3

[0x800005bc]:addi a0, zero, 3

[0x800005c8]:addi a0, zero, 3

[0x800005d4]:addi a0, zero, 3

[0x800005e0]:addi a0, zero, 3

[0x800005ec]:addi a0, zero, 3

[0x800005f8]:addi a0, zero, 3

[0x80000604]:addi a0, zero, 3

[0x80000610]:addi a0, zero, 3

[0x80000620]:addi a0, a0, 1365

[0x80000630]:addi a0, a0, 1365

[0x80000640]:addi a0, a0, 1365

[0x80000650]:addi a0, a0, 1365

[0x80000660]:addi a0, a0, 1365

[0x80000670]:addi a0, a0, 1365

[0x80000680]:addi a0, a0, 1365

[0x80000690]:addi a0, a0, 1365

[0x800006a0]:addi a0, a0, 1365

[0x800006b0]:addi a0, a0, 1365

[0x800006c0]:addi a0, a0, 1365

[0x800006d0]:addi a0, a0, 1365

[0x800006e0]:addi a0, a0, 1365

[0x800006f0]:addi a0, a0, 1365

[0x80000700]:addi a0, a0, 1365

[0x80000710]:addi a0, a0, 1365

[0x80000720]:addi a0, a0, 1365

[0x80000730]:addi a0, a0, 1365

[0x80000740]:addi a0, a0, 1365

[0x80000750]:addi a0, a0, 1365

[0x80000760]:addi a0, a0, 1365

[0x80000770]:addi a0, a0, 2730

[0x80000780]:addi a0, a0, 2730

[0x80000790]:addi a0, a0, 2730

[0x800007a0]:addi a0, a0, 2730

[0x800007b0]:addi a0, a0, 2730

[0x800007c0]:addi a0, a0, 2730

[0x800007d0]:addi a0, a0, 2730

[0x800007e0]:addi a0, a0, 2730

[0x800007f0]:addi a0, a0, 2730

[0x80000800]:addi a0, a0, 2730

[0x80000810]:addi a0, a0, 2730

[0x80000820]:addi a0, a0, 2730

[0x80000830]:addi a0, a0, 2730

[0x80000840]:addi a0, a0, 2730

[0x80000850]:addi a0, a0, 2730

[0x80000860]:addi a0, a0, 2730

[0x80000870]:addi a0, a0, 2730

[0x80000880]:addi a0, a0, 2730

[0x80000890]:addi a0, a0, 2730

[0x800008a0]:addi a0, a0, 2730

[0x800008b0]:addi a0, a0, 2730

[0x800008c0]:addi a0, a0, 2730

[0x800008cc]:addi a0, zero, 5

[0x800008d8]:addi a0, zero, 5

[0x800008e4]:addi a0, zero, 5

[0x800008f0]:addi a0, zero, 5

[0x800008fc]:addi a0, zero, 5

[0x80000908]:addi a0, zero, 5

[0x80000914]:addi a0, zero, 5

[0x80000920]:addi a0, zero, 5

[0x8000092c]:addi a0, zero, 5

[0x80000938]:addi a0, zero, 5

[0x80000944]:addi a0, zero, 5

[0x80000950]:addi a0, zero, 5

[0x8000095c]:addi a0, zero, 5

[0x80000968]:addi a0, zero, 5

[0x80000974]:addi a0, zero, 5

[0x80000980]:addi a0, zero, 5

[0x8000098c]:addi a0, zero, 5

[0x80000998]:addi a0, zero, 5

[0x800009a4]:addi a0, zero, 5

[0x800009b0]:addi a0, zero, 5

[0x800009bc]:addi a0, zero, 5

[0x800009c8]:addi a0, zero, 5

[0x800009d8]:addi a0, a0, 819

[0x800009e8]:addi a0, a0, 819

[0x800009f8]:addi a0, a0, 819

[0x80000a08]:addi a0, a0, 819

[0x80000a18]:addi a0, a0, 819

[0x80000a28]:addi a0, a0, 819

[0x80000a38]:addi a0, a0, 819

[0x80000a48]:addi a0, a0, 819

[0x80000a58]:addi a0, a0, 819

[0x80000a68]:addi a0, a0, 819

[0x80000a78]:addi a0, a0, 819

[0x80000a88]:addi a0, a0, 819

[0x80000a98]:addi a0, a0, 819

[0x80000aa8]:addi a0, a0, 819

[0x80000ab8]:addi a0, a0, 819

[0x80000ac8]:addi a0, a0, 819

[0x80000ad8]:addi a0, a0, 819

[0x80000ae8]:addi a0, a0, 819

[0x80000af8]:addi a0, a0, 819

[0x80000b08]:addi a0, a0, 819

[0x80000b18]:addi a0, a0, 819

[0x80000b28]:addi a0, a0, 1638

[0x80000b38]:addi a0, a0, 1638

[0x80000b48]:addi a0, a0, 1638

[0x80000b58]:addi a0, a0, 1638

[0x80000b68]:addi a0, a0, 1638

[0x80000b78]:addi a0, a0, 1638

[0x80000b88]:addi a0, a0, 1638

[0x80000b98]:addi a0, a0, 1638

[0x80000ba8]:addi a0, a0, 1638

[0x80000bb8]:addi a0, a0, 1638

[0x80000bc8]:addi a0, a0, 1638

[0x80000bd8]:addi a0, a0, 1638

[0x80000be8]:addi a0, a0, 1638

[0x80000bf8]:addi a0, a0, 1638

[0x80000c08]:addi a0, a0, 1638

[0x80000c18]:addi a0, a0, 1638

[0x80000c28]:addi a0, a0, 1638

[0x80000c38]:addi a0, a0, 1638

[0x80000c48]:addi a0, a0, 1638

[0x80000c58]:addi a0, a0, 1638

[0x80000c68]:addi a0, a0, 1638

[0x80000c78]:addi a0, a0, 1638

[0x80000c88]:addi a0, a0, 2812

[0x80000c98]:addi a0, a0, 2812

[0x80000ca8]:addi a0, a0, 2812

[0x80000cb8]:addi a0, a0, 2812

[0x80000cc8]:addi a0, a0, 2812

[0x80000cd8]:addi a0, a0, 2812

[0x80000ce8]:addi a0, a0, 2812

[0x80000cf8]:addi a0, a0, 2812

[0x80000d08]:addi a0, a0, 2812

[0x80000d18]:addi a0, a0, 2812

[0x80000d28]:addi a0, a0, 2812

[0x80000d38]:addi a0, a0, 2812

[0x80000d48]:addi a0, a0, 2812

[0x80000d58]:addi a0, a0, 2812

[0x80000d68]:addi a0, a0, 2812

[0x80000d78]:addi a0, a0, 2812

[0x80000d88]:addi a0, a0, 2812

[0x80000d98]:addi a0, a0, 2812

[0x80000da8]:addi a0, a0, 2812

[0x80000db8]:addi a0, a0, 2812

[0x80000dc8]:addi a0, a0, 2812

[0x80000dd8]:addi a0, a0, 2812

[0x80000de8]:addi a0, a0, 1284

[0x80000df8]:addi a0, a0, 1284

[0x80000e08]:addi a0, a0, 1284

[0x80000e18]:addi a0, a0, 1284

[0x80000e28]:addi a0, a0, 1284

[0x80000e38]:addi a0, a0, 1284

[0x80000e48]:addi a0, a0, 1284

[0x80000e58]:addi a0, a0, 1284

[0x80000e68]:addi a0, a0, 1284

[0x80000e78]:addi a0, a0, 1284

[0x80000e88]:addi a0, a0, 1284

[0x80000e98]:addi a0, a0, 1284

[0x80000ea8]:addi a0, a0, 1284

[0x80000eb8]:addi a0, a0, 1284

[0x80000ec8]:addi a0, a0, 1284

[0x80000ed8]:addi a0, a0, 1284

[0x80000ee8]:addi a0, a0, 1284

[0x80000ef8]:addi a0, a0, 1284

[0x80000f08]:addi a0, a0, 1284

[0x80000f18]:addi a0, a0, 1284

[0x80000f28]:addi a0, a0, 1284

[0x80000f38]:addi a0, a0, 1284

[0x80000f44]:addi a0, zero, 2

[0x80000f50]:addi a0, zero, 2

[0x80000f5c]:addi a0, zero, 2

[0x80000f68]:addi a0, zero, 2

[0x80000f74]:addi a0, zero, 2

[0x80000f80]:addi a0, zero, 2

[0x80000f8c]:addi a0, zero, 2

[0x80000f98]:addi a0, zero, 2

[0x80000fa4]:addi a0, zero, 2

[0x80000fb0]:addi a0, zero, 2

[0x80000fbc]:addi a0, zero, 2

[0x80000fc8]:addi a0, zero, 2

[0x80000fd4]:addi a0, zero, 2

[0x80000fe0]:addi a0, zero, 2

[0x80000fec]:addi a0, zero, 2

[0x80000ff8]:addi a0, zero, 2

[0x80001004]:addi a0, zero, 2

[0x80001010]:addi a0, zero, 2

[0x8000101c]:addi a0, zero, 2

[0x80001028]:addi a0, zero, 2

[0x80001034]:addi a0, zero, 2

[0x80001040]:addi a0, zero, 2

[0x80001050]:addi a0, a0, 1364

[0x80001060]:addi a0, a0, 1364

[0x80001070]:addi a0, a0, 1364

[0x80001080]:addi a0, a0, 1364

[0x80001090]:addi a0, a0, 1364

[0x800010a0]:addi a0, a0, 1364

[0x800010b0]:addi a0, a0, 1364

[0x800010c0]:addi a0, a0, 1364

[0x800010d0]:addi a0, a0, 1364

[0x800010e0]:addi a0, a0, 1364

[0x800010f0]:addi a0, a0, 1364

[0x80001100]:addi a0, a0, 1364

[0x80001110]:addi a0, a0, 1364

[0x80001120]:addi a0, a0, 1364

[0x80001130]:addi a0, a0, 1364

[0x80001140]:addi a0, a0, 1364

[0x80001150]:addi a0, a0, 1364

[0x80001160]:addi a0, a0, 1364

[0x80001170]:addi a0, a0, 1364

[0x80001180]:addi a0, a0, 1364

[0x80001190]:addi a0, a0, 1364

[0x800011a0]:addi a0, a0, 1364

[0x800011ac]:addi a0, zero, 0

[0x800011b8]:addi a0, zero, 0

[0x800011c4]:addi a0, zero, 0

[0x800011d0]:addi a0, zero, 0

[0x800011dc]:addi a0, zero, 0

[0x800011e8]:addi a0, zero, 0

[0x800011f4]:addi a0, zero, 0

[0x80001204]:addi a0, a0, 820

[0x80001214]:addi a0, a0, 820

[0x80001224]:addi a0, a0, 820

[0x80001234]:addi a0, a0, 820

[0x80001244]:addi a0, a0, 820

[0x80001254]:addi a0, a0, 820

[0x80001264]:addi a0, a0, 820

[0x80001274]:addi a0, a0, 820

[0x80001284]:addi a0, a0, 820

[0x80001294]:addi a0, a0, 820

[0x800012a4]:addi a0, a0, 1639

[0x800012b4]:addi a0, a0, 1639

[0x800012c4]:addi a0, a0, 1639

[0x800012d4]:addi a0, a0, 1639

[0x800012e4]:addi a0, a0, 1639

[0x800012f4]:addi a0, a0, 1639

[0x80001304]:addi a0, a0, 1639

[0x80001314]:addi a0, a0, 1639

[0x80001324]:addi a0, a0, 1639

[0x80001334]:addi a0, a0, 1639

[0x80001344]:addi a0, a0, 1639

[0x80001354]:addi a0, a0, 1639

[0x80001364]:addi a0, a0, 1639

[0x80001374]:addi a0, a0, 1639

[0x80001384]:addi a0, a0, 1639

[0x80001394]:addi a0, a0, 1639

[0x800013a4]:addi a0, a0, 1639

[0x800013b4]:addi a0, a0, 1639

[0x800013c4]:addi a0, a0, 1639

[0x800013d4]:addi a0, a0, 1639

[0x800013e4]:addi a0, a0, 1639

[0x800013f4]:addi a0, a0, 1639

[0x80001404]:addi a0, a0, 2813

[0x80001414]:addi a0, a0, 2813

[0x80001424]:addi a0, a0, 2813

[0x80001434]:addi a0, a0, 2813

[0x80001444]:addi a0, a0, 2813

[0x80001454]:addi a0, a0, 2813

[0x80001464]:addi a0, a0, 2813

[0x80001474]:addi a0, a0, 2813

[0x80001484]:addi a0, a0, 2813

[0x80001494]:addi a0, a0, 2813

[0x800014a4]:addi a0, a0, 2813

[0x800014b4]:addi a0, a0, 2813

[0x800014c4]:addi a0, a0, 2813

[0x800014d4]:addi a0, a0, 2813

[0x800014e4]:addi a0, a0, 2813

[0x800014f4]:addi a0, a0, 2813

[0x80001504]:addi a0, a0, 2813

[0x80001514]:addi a0, a0, 2813

[0x80001524]:addi a0, a0, 2813

[0x80001534]:addi a0, a0, 2813

[0x80001544]:addi a0, a0, 2813

[0x80001554]:addi a0, a0, 1285

[0x80001564]:addi a0, a0, 1285

[0x80001574]:addi a0, a0, 1285

[0x80001584]:addi a0, a0, 1285

[0x80001594]:addi a0, a0, 1285

[0x800015a4]:addi a0, a0, 1285

[0x800015b4]:addi a0, a0, 1285

[0x800015c4]:addi a0, a0, 1285

[0x800015d4]:addi a0, a0, 1285

[0x800015e4]:addi a0, a0, 1285

[0x800015f4]:addi a0, a0, 1285

[0x80001604]:addi a0, a0, 1285

[0x80001614]:addi a0, a0, 1285

[0x80001624]:addi a0, a0, 1285

[0x80001634]:addi a0, a0, 1285

[0x80001644]:addi a0, a0, 1285

[0x80001654]:addi a0, a0, 1285

[0x80001664]:addi a0, a0, 1285

[0x80001674]:addi a0, a0, 1285

[0x80001684]:addi a0, a0, 1285

[0x80001694]:addi a0, a0, 1285

[0x800016a4]:addi a0, a0, 1285

[0x800016b0]:addi a0, zero, 0

[0x800016bc]:addi a0, zero, 0

[0x800016c8]:addi a0, zero, 0

[0x800016d4]:addi a0, zero, 0

[0x800016e0]:addi a0, zero, 0

[0x800016ec]:addi a0, zero, 0

[0x800016f8]:addi a0, zero, 0

[0x80001704]:addi a0, zero, 0

[0x80001710]:addi a0, zero, 0

[0x8000171c]:addi a0, zero, 0

[0x80001728]:addi a0, zero, 0

[0x80001734]:addi a0, zero, 0

[0x80001740]:addi a0, zero, 0

[0x8000174c]:addi a0, zero, 0

[0x80001758]:addi a0, zero, 0

[0x80001764]:addi a0, zero, 4

[0x80001770]:addi a0, zero, 4

[0x8000177c]:addi a0, zero, 4

[0x80001788]:addi a0, zero, 4

[0x80001794]:addi a0, zero, 4

[0x800017a0]:addi a0, zero, 4

[0x800017ac]:addi a0, zero, 4

[0x800017b8]:addi a0, zero, 4

[0x800017c4]:addi a0, zero, 4

[0x800017d0]:addi a0, zero, 4

[0x800017dc]:addi a0, zero, 4

[0x800017e8]:addi a0, zero, 4

[0x800017f4]:addi a0, zero, 4

[0x80001800]:addi a0, zero, 4

[0x8000180c]:addi a0, zero, 4

[0x80001818]:addi a0, zero, 4

[0x80001824]:addi a0, zero, 4

[0x80001830]:addi a0, zero, 4

[0x8000183c]:addi a0, zero, 4

[0x80001848]:addi a0, zero, 4

[0x80001854]:addi a0, zero, 4

[0x80001860]:addi a0, zero, 4

[0x80001870]:addi a0, a0, 818

[0x80001880]:addi a0, a0, 818

[0x80001890]:addi a0, a0, 818

[0x800018a0]:addi a0, a0, 818

[0x800018b0]:addi a0, a0, 818

[0x800018c0]:addi a0, a0, 818

[0x800018d0]:addi a0, a0, 818

[0x800018e0]:addi a0, a0, 818

[0x800018f0]:addi a0, a0, 818

[0x80001900]:addi a0, a0, 818

[0x80001910]:addi a0, a0, 818

[0x80001920]:addi a0, a0, 818

[0x80001930]:addi a0, a0, 818

[0x80001940]:addi a0, a0, 818

[0x80001950]:addi a0, a0, 818

[0x80001960]:addi a0, a0, 818

[0x80001970]:addi a0, a0, 818

[0x80001980]:addi a0, a0, 818

[0x80001990]:addi a0, a0, 818

[0x800019a0]:addi a0, a0, 818

[0x800019b0]:addi a0, a0, 818

[0x800019c0]:addi a0, a0, 818

[0x800019d0]:addi a0, a0, 1637

[0x800019e0]:addi a0, a0, 1637

[0x800019f0]:addi a0, a0, 1637

[0x80001a00]:addi a0, a0, 1637

[0x80001a10]:addi a0, a0, 1637

[0x80001a20]:addi a0, a0, 1637

[0x80001a30]:addi a0, a0, 1637

[0x80001a40]:addi a0, a0, 1637

[0x80001a50]:addi a0, a0, 1637

[0x80001a60]:addi a0, a0, 1637

[0x80001a70]:addi a0, a0, 1637

[0x80001a80]:addi a0, a0, 1637

[0x80001a90]:addi a0, a0, 1637

[0x80001aa0]:addi a0, a0, 1637

[0x80001ab0]:addi a0, a0, 1637

[0x80001ac0]:addi a0, a0, 1637

[0x80001ad0]:addi a0, a0, 1637

[0x80001ae0]:addi a0, a0, 1637

[0x80001af0]:addi a0, a0, 1637

[0x80001b00]:addi a0, a0, 1637

[0x80001b10]:addi a0, a0, 1637

[0x80001b20]:addi a0, a0, 1637

[0x80001b30]:addi a0, a0, 1283

[0x80001b40]:addi a0, a0, 1283

[0x80001b50]:addi a0, a0, 1283

[0x80001b60]:addi a0, a0, 1283

[0x80001b70]:addi a0, a0, 1283

[0x80001b80]:addi a0, a0, 1283

[0x80001b90]:addi a0, a0, 1283

[0x80001ba0]:addi a0, a0, 1283

[0x80001bb0]:addi a0, a0, 1283

[0x80001bc0]:addi a0, a0, 1283

[0x80001bd0]:addi a0, a0, 1283

[0x80001be0]:addi a0, a0, 1283

[0x80001bf0]:addi a0, a0, 1283

[0x80001c00]:addi a0, a0, 1283

[0x80001c10]:addi a0, a0, 1283

[0x80001c20]:addi a0, a0, 1283

[0x80001c30]:addi a0, a0, 1283

[0x80001c40]:addi a0, a0, 1283

[0x80001c50]:addi a0, a0, 1283

[0x80001c60]:addi a0, a0, 1283

[0x80001c70]:addi a0, a0, 1283

[0x80001c80]:addi a0, a0, 1283

[0x80001c90]:addi a0, a0, 1366

[0x80001ca0]:addi a0, a0, 1366

[0x80001cb0]:addi a0, a0, 1366

[0x80001cc0]:addi a0, a0, 1366

[0x80001cd0]:addi a0, a0, 1366

[0x80001ce0]:addi a0, a0, 1366

[0x80001cf0]:addi a0, a0, 1366

[0x80001d00]:addi a0, a0, 1366

[0x80001d10]:addi a0, a0, 1366

[0x80001d20]:addi a0, a0, 1366

[0x80001d30]:addi a0, a0, 1366

[0x80001d40]:addi a0, a0, 1366

[0x80001d50]:addi a0, a0, 1366

[0x80001d60]:addi a0, a0, 1366

[0x80001d70]:addi a0, a0, 1366

[0x80001d80]:addi a0, a0, 1366

[0x80001d90]:addi a0, a0, 1366

[0x80001da0]:addi a0, a0, 1366

[0x80001db0]:addi a0, a0, 1366

[0x80001dc0]:addi a0, a0, 1366

[0x80001dd0]:addi a0, a0, 1366

[0x80001de0]:addi a0, a0, 1366

[0x80001df0]:addi a0, a0, 2731

[0x80001e00]:addi a0, a0, 2731

[0x80001e10]:addi a0, a0, 2731

[0x80001e20]:addi a0, a0, 2731

[0x80001e30]:addi a0, a0, 2731

[0x80001e40]:addi a0, a0, 2731

[0x80001e50]:addi a0, a0, 2731

[0x80001e60]:addi a0, a0, 2731

[0x80001e70]:addi a0, a0, 2731

[0x80001e80]:addi a0, a0, 2731

[0x80001e90]:addi a0, a0, 2731

[0x80001ea0]:addi a0, a0, 2731

[0x80001eb0]:addi a0, a0, 2731

[0x80001ec0]:addi a0, a0, 2731

[0x80001ed0]:addi a0, a0, 2731

[0x80001ee0]:addi a0, a0, 2731

[0x80001ef0]:addi a0, a0, 2731

[0x80001f00]:addi a0, a0, 2731

[0x80001f10]:addi a0, a0, 2731

[0x80001f20]:addi a0, a0, 2731

[0x80001f30]:addi a0, a0, 2731

[0x80001f40]:addi a0, a0, 2731

[0x80001f4c]:addi a0, zero, 6

[0x80001f58]:addi a0, zero, 6

[0x80001f64]:addi a0, zero, 6

[0x80001f70]:addi a0, zero, 6

[0x80001f7c]:addi a0, zero, 6

[0x80001f88]:addi a0, zero, 6

[0x80001f94]:addi a0, zero, 6

[0x80001fa0]:addi a0, zero, 6

[0x80001fac]:addi a0, zero, 6

[0x80001fb8]:addi a0, zero, 6

[0x80001fc4]:addi a0, zero, 6

[0x80001fd0]:addi a0, zero, 6

[0x80001fdc]:addi a0, zero, 6

[0x80001fec]:addi ra, ra, 2684

[0x80001ff0]:addi a0, zero, 6

[0x80001ffc]:addi a0, zero, 6

[0x80002008]:addi a0, zero, 6

[0x80002014]:addi a0, zero, 6

[0x80002020]:addi a0, zero, 6

[0x8000202c]:addi a0, zero, 6

[0x80002038]:addi a0, zero, 6

[0x80002044]:addi a0, zero, 6

[0x80002050]:addi a0, zero, 6

[0x80002060]:addi a0, a0, 820

[0x80002070]:addi a0, a0, 820

[0x80002080]:addi a0, a0, 820

[0x80002090]:addi a0, a0, 820

[0x800020a0]:addi a0, a0, 820

[0x800020b0]:addi a0, a0, 820

[0x800020c0]:addi a0, a0, 820

[0x800020d0]:addi a0, a0, 820

[0x800020e0]:addi a0, a0, 820

[0x800020f0]:addi a0, a0, 820

[0x80002100]:addi a0, a0, 820

[0x80002118]:addi zero, zero, 0



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

|s.no|        signature         |                                                  coverpoints                                                  |                                code                                |
|---:|--------------------------|---------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80004204]<br>0xFDFFF7FF|- rd : x12<br> - rs1 != rd<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br> - rs1_val == -33554433<br> |[0x80000108]:addi a2, s11, 2048<br> [0x8000010c]:sw a2, 0(s2)<br>   |
|   2|[0x80004208]<br>0x33333333|- imm_val == 0<br> - rs1_val==858993459 and imm_val==0<br>                                                     |[0x80000118]:addi a5, a5, 0<br> [0x8000011c]:sw a5, 4(s2)<br>       |
|   3|[0x8000420c]<br>0x020007FF|- rs1 : x14<br> - rd : x19<br> - imm_val == (2**(12-1)-1)<br> - imm_val == 2047<br> - rs1_val == 33554432<br>  |[0x80000124]:addi s3, a4, 2047<br> [0x80000128]:sw s3, 8(s2)<br>    |
|   4|[0x80004210]<br>0xFFFF0000|- rd : x1<br> - imm_val == 1<br> - rs1_val == -65537<br>                                                       |[0x80000134]:addi ra, t3, 1<br> [0x80000138]:sw ra, 12(s2)<br>      |
|   5|[0x80004214]<br>0x7FFFFFD3|- rs1 : x24<br> - rd : x23<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                    |[0x80000140]:addi s7, s8, 4051<br> [0x80000144]:sw s7, 16(s2)<br>   |
|   6|[0x80004218]<br>0xFFFFFFBF|- rs1 : x11<br> - imm_val == -65<br>                                                                           |[0x8000014c]:addi t3, a1, 4031<br> [0x80000150]:sw t3, 20(s2)<br>   |
|   7|[0x8000421c]<br>0x80000003|- rd : x13<br> - rs1_val == (2**(xlen-1)-1)<br> - imm_val == 4<br> - rs1_val == 2147483647<br>                 |[0x8000015c]:addi a3, s3, 4<br> [0x80000160]:sw a3, 24(s2)<br>      |
|   8|[0x80004220]<br>0xFFFFFFE0|- rs1 : x31<br> - rs1_val == 1<br> - rs1_val > 0 and imm_val < 0<br> - imm_val == -33<br>                      |[0x80000168]:addi s11, t6, 4063<br> [0x8000016c]:sw s11, 28(s2)<br> |
|   9|[0x80004224]<br>0xFFFFFEFE|- rs1 : x26<br> - rd : x24<br> - rs1_val == -129<br>                                                           |[0x80000174]:addi s8, s10, 3967<br> [0x80000178]:sw s8, 32(s2)<br>  |
|  10|[0x80004228]<br>0x00000002|- rd : x6<br> - imm_val == 2<br> - rs1_val==0 and imm_val==2<br>                                               |[0x80000184]:addi t1, zero, 2<br> [0x80000188]:sw t1, 36(s2)<br>    |
|  11|[0x8000422c]<br>0x00000108|- rs1 : x1<br> - rd : x7<br> - imm_val == 8<br> - rs1_val == 256<br>                                           |[0x80000190]:addi t2, ra, 8<br> [0x80000194]:sw t2, 40(s2)<br>      |
|  12|[0x80004230]<br>0x00800010|- rs1 : x30<br> - rd : x17<br> - imm_val == 16<br> - rs1_val == 8388608<br>                                    |[0x8000019c]:addi a7, t5, 16<br> [0x800001a0]:sw a7, 44(s2)<br>     |
|  13|[0x80004234]<br>0x00000000|- rs1 : x17<br> - imm_val == 32<br> - rs1_val == 16384<br>                                                     |[0x800001a8]:addi zero, a7, 32<br> [0x800001ac]:sw zero, 48(s2)<br> |
|  14|[0x80004238]<br>0xFFFFFC3F|- rs1 : x12<br> - rd : x4<br> - imm_val == 64<br> - rs1_val == -1025<br>                                       |[0x800001b4]:addi tp, a2, 64<br> [0x800001b8]:sw tp, 52(s2)<br>     |
|  15|[0x8000423c]<br>0x00000280|- rs1 : x5<br> - rd : x3<br> - imm_val == 128<br> - rs1_val == 512<br>                                         |[0x800001c0]:addi gp, t0, 128<br> [0x800001c4]:sw gp, 56(s2)<br>    |
|  16|[0x80004240]<br>0x00002100|- rs1 : x6<br> - rd : x20<br> - rs1_val == 8192<br>                                                            |[0x800001cc]:addi s4, t1, 256<br> [0x800001d0]:sw s4, 60(s2)<br>    |
|  17|[0x80004244]<br>0x00000200|- rs1 : x9<br>                                                                                                 |[0x800001d8]:addi s10, s1, 512<br> [0x800001dc]:sw s10, 64(s2)<br>  |
|  18|[0x80004248]<br>0xFFE003FF|- rd : x14<br> - imm_val == 1024<br> - rs1_val == -2097153<br>                                                 |[0x800001e8]:addi a4, sp, 1024<br> [0x800001ec]:sw a4, 68(s2)<br>   |
|  19|[0x8000424c]<br>0xFFFFFFDD|- rs1 : x21<br> - rd : x8<br> - imm_val == -2<br> - rs1_val == -33<br>                                         |[0x800001f4]:addi fp, s5, 4094<br> [0x800001f8]:sw fp, 72(s2)<br>   |
|  20|[0x80004250]<br>0x0000B501|- rd : x25<br> - imm_val == -3<br>                                                                             |[0x80000204]:addi s9, gp, 4093<br> [0x80000208]:sw s9, 76(s2)<br>   |
|  21|[0x80004254]<br>0xFFFFDFFA|- imm_val == -5<br> - rs1_val == -8193<br>                                                                     |[0x80000214]:addi s1, a3, 4091<br> [0x80000218]:sw s1, 80(s2)<br>   |
|  22|[0x80004258]<br>0xFFFFFFFD|- rs1 : x25<br> - imm_val == -9<br>                                                                            |[0x80000220]:addi a1, s9, 4087<br> [0x80000224]:sw a1, 84(s2)<br>   |
|  23|[0x8000425c]<br>0x7FFFFFEE|- rd : x10<br> - imm_val == -17<br>                                                                            |[0x80000230]:addi a0, fp, 4079<br> [0x80000234]:sw a0, 88(s2)<br>   |
|  24|[0x80004260]<br>0x00FFFEFF|- rs1 : x16<br> - rd : x30<br> - imm_val == -257<br> - rs1_val == 16777216<br>                                 |[0x8000023c]:addi t5, a6, 3839<br> [0x80000240]:sw t5, 92(s2)<br>   |
|  25|[0x80004264]<br>0xFFFEFDFE|- imm_val == -513<br>                                                                                          |[0x80000254]:addi t6, s6, 3583<br> [0x80000258]:sw t6, 0(ra)<br>    |
|  26|[0x80004268]<br>0xFFFFFC03|- rs1 : x10<br> - rs1_val == 4<br>                                                                             |[0x80000260]:addi s2, a0, 3071<br> [0x80000264]:sw s2, 4(ra)<br>    |
|  27|[0x8000426c]<br>0xFFFF5052|- imm_val == 1365<br> - rs1_val==-46339 and imm_val==1365<br>                                                  |[0x80000270]:addi t0, t4, 1365<br> [0x80000274]:sw t0, 8(ra)<br>    |
|  28|[0x80004270]<br>0x33332DDE|- imm_val == -1366<br> - rs1_val==858993460 and imm_val==-1366<br>                                             |[0x80000280]:addi s5, t2, 2730<br> [0x80000284]:sw s5, 12(ra)<br>   |
|  29|[0x80004274]<br>0xFFFFFFFF|- rs1 : x4<br> - rd : x16<br> - rs1_val == 2<br>                                                               |[0x8000028c]:addi a6, tp, 4093<br> [0x80000290]:sw a6, 16(ra)<br>   |
|  30|[0x80004278]<br>0xFFFFFF87|- rs1 : x23<br> - rs1_val == 8<br>                                                                             |[0x80000298]:addi t4, s7, 3967<br> [0x8000029c]:sw t4, 20(ra)<br>   |
|  31|[0x8000427c]<br>0x00000410|- rs1_val == 16<br>                                                                                            |[0x800002a4]:addi s6, s2, 1024<br> [0x800002a8]:sw s6, 24(ra)<br>   |
|  32|[0x80004280]<br>0x00000040|- rs1 : x20<br> - rs1_val == 32<br>                                                                            |[0x800002b0]:addi sp, s4, 32<br> [0x800002b4]:sw sp, 28(ra)<br>     |
|  33|[0x80004284]<br>0x0000043F|- rs1_val == 64<br>                                                                                            |[0x800002bc]:addi a1, a0, 1023<br> [0x800002c0]:sw a1, 32(ra)<br>   |
|  34|[0x80004288]<br>0x00000090|- rs1_val == 128<br>                                                                                           |[0x800002c8]:addi a1, a0, 16<br> [0x800002cc]:sw a1, 36(ra)<br>     |
|  35|[0x8000428c]<br>0x00000403|- rs1_val == 1024<br>                                                                                          |[0x800002d4]:addi a1, a0, 3<br> [0x800002d8]:sw a1, 40(ra)<br>      |
|  36|[0x80004290]<br>0x00000D55|- rs1_val == 2048<br>                                                                                          |[0x800002e4]:addi a1, a0, 1365<br> [0x800002e8]:sw a1, 44(ra)<br>   |
|  37|[0x80004298]<br>0x00008100|- rs1_val == 32768<br>                                                                                         |[0x800002fc]:addi a1, a0, 256<br> [0x80000300]:sw a1, 52(ra)<br>    |
|  38|[0x8000429c]<br>0x00010005|- rs1_val == 65536<br>                                                                                         |[0x80000308]:addi a1, a0, 5<br> [0x8000030c]:sw a1, 56(ra)<br>      |
|  39|[0x800042a0]<br>0x0001FFBF|- rs1_val == 131072<br>                                                                                        |[0x80000314]:addi a1, a0, 4031<br> [0x80000318]:sw a1, 60(ra)<br>   |
|  40|[0x800042a4]<br>0x0003FFFA|- rs1_val == 262144<br>                                                                                        |[0x80000320]:addi a1, a0, 4090<br> [0x80000324]:sw a1, 64(ra)<br>   |
|  41|[0x800042a8]<br>0x0007F800|- rs1_val == 524288<br>                                                                                        |[0x8000032c]:addi a1, a0, 2048<br> [0x80000330]:sw a1, 68(ra)<br>   |
|  42|[0x800042ac]<br>0x00100555|- rs1_val == 1048576<br>                                                                                       |[0x80000338]:addi a1, a0, 1365<br> [0x8000033c]:sw a1, 72(ra)<br>   |
|  43|[0x800042b0]<br>0x00200003|- rs1_val == 2097152<br>                                                                                       |[0x80000344]:addi a1, a0, 3<br> [0x80000348]:sw a1, 76(ra)<br>      |
|  44|[0x800042b4]<br>0x003FFFEF|- rs1_val == 4194304<br>                                                                                       |[0x80000350]:addi a1, a0, 4079<br> [0x80000354]:sw a1, 80(ra)<br>   |
|  45|[0x800042b8]<br>0x03FFFFD3|- rs1_val == 67108864<br>                                                                                      |[0x8000035c]:addi a1, a0, 4051<br> [0x80000360]:sw a1, 84(ra)<br>   |
|  46|[0x800042bc]<br>0x07FFFFFB|- rs1_val == 134217728<br>                                                                                     |[0x80000368]:addi a1, a0, 4091<br> [0x8000036c]:sw a1, 88(ra)<br>   |
|  47|[0x800042c0]<br>0x100007FF|- rs1_val == 268435456<br>                                                                                     |[0x80000374]:addi a1, a0, 2047<br> [0x80000378]:sw a1, 92(ra)<br>   |
|  48|[0x800042c4]<br>0x2000002D|- rs1_val == 536870912<br>                                                                                     |[0x80000380]:addi a1, a0, 45<br> [0x80000384]:sw a1, 96(ra)<br>     |
|  49|[0x800042c8]<br>0x40000000|- rs1_val == 1073741824<br>                                                                                    |[0x8000038c]:addi a1, a0, 0<br> [0x80000390]:sw a1, 100(ra)<br>     |
|  50|[0x800042cc]<br>0x00000002|- rs1_val == -2<br>                                                                                            |[0x80000398]:addi a1, a0, 4<br> [0x8000039c]:sw a1, 104(ra)<br>     |
|  51|[0x800042d0]<br>0xFFFFFFF4|- rs1_val == -3<br>                                                                                            |[0x800003a4]:addi a1, a0, 4087<br> [0x800003a8]:sw a1, 108(ra)<br>  |
|  52|[0x800042d4]<br>0xFFFFFFFB|- rs1_val == -5<br>                                                                                            |[0x800003b0]:addi a1, a0, 0<br> [0x800003b4]:sw a1, 112(ra)<br>     |
|  53|[0x800042d8]<br>0xFFFFFDF6|- rs1_val == -9<br>                                                                                            |[0x800003bc]:addi a1, a0, 3583<br> [0x800003c0]:sw a1, 116(ra)<br>  |
|  54|[0x800042dc]<br>0xFFFFFA99|- rs1_val == -17<br>                                                                                           |[0x800003c8]:addi a1, a0, 2730<br> [0x800003cc]:sw a1, 120(ra)<br>  |
|  55|[0x800042e0]<br>0xFFFFFFB8|- rs1_val == -65<br>                                                                                           |[0x800003d4]:addi a1, a0, 4089<br> [0x800003d8]:sw a1, 124(ra)<br>  |
|  56|[0x800042e4]<br>0xFFFFFED3|- rs1_val == -257<br>                                                                                          |[0x800003e0]:addi a1, a0, 4052<br> [0x800003e4]:sw a1, 128(ra)<br>  |
|  57|[0x800042e8]<br>0xFFFFFDFD|- rs1_val == -513<br>                                                                                          |[0x800003ec]:addi a1, a0, 4094<br> [0x800003f0]:sw a1, 132(ra)<br>  |
|  58|[0x800042ec]<br>0xFFFFF803|- rs1_val == -2049<br>                                                                                         |[0x800003fc]:addi a1, a0, 4<br> [0x80000400]:sw a1, 136(ra)<br>     |
|  59|[0x800042f0]<br>0xFFFFF003|- rs1_val == -4097<br>                                                                                         |[0x8000040c]:addi a1, a0, 4<br> [0x80000410]:sw a1, 140(ra)<br>     |
|  60|[0x800042f4]<br>0xFFFFC006|- rs1_val == -16385<br>                                                                                        |[0x8000041c]:addi a1, a0, 7<br> [0x80000420]:sw a1, 144(ra)<br>     |
|  61|[0x800042f8]<br>0xFFFF8001|- rs1_val == -32769<br>                                                                                        |[0x8000042c]:addi a1, a0, 2<br> [0x80000430]:sw a1, 148(ra)<br>     |
|  62|[0x800042fc]<br>0xFFFE0664|- rs1_val == -131073<br>                                                                                       |[0x8000043c]:addi a1, a0, 1637<br> [0x80000440]:sw a1, 152(ra)<br>  |
|  63|[0x80004300]<br>0xFFFBFFF8|- rs1_val == -262145<br>                                                                                       |[0x8000044c]:addi a1, a0, 4089<br> [0x80000450]:sw a1, 156(ra)<br>  |
|  64|[0x80004304]<br>0xFFF7FFF6|- rs1_val == -524289<br>                                                                                       |[0x8000045c]:addi a1, a0, 4087<br> [0x80000460]:sw a1, 160(ra)<br>  |
|  65|[0x80004308]<br>0xFFEFFFFF|- rs1_val == -1048577<br>                                                                                      |[0x8000046c]:addi a1, a0, 0<br> [0x80000470]:sw a1, 164(ra)<br>     |
|  66|[0x8000430c]<br>0xFFBFFAA9|- rs1_val == -4194305<br>                                                                                      |[0x8000047c]:addi a1, a0, 2730<br> [0x80000480]:sw a1, 168(ra)<br>  |
|  67|[0x80004310]<br>0xFF7FFFBE|- rs1_val == -8388609<br>                                                                                      |[0x8000048c]:addi a1, a0, 4031<br> [0x80000490]:sw a1, 172(ra)<br>  |
|  68|[0x80004314]<br>0xFEFFFFF9|- rs1_val == -16777217<br>                                                                                     |[0x8000049c]:addi a1, a0, 4090<br> [0x800004a0]:sw a1, 176(ra)<br>  |
|  69|[0x80004318]<br>0xFC00007F|- rs1_val == -67108865<br>                                                                                     |[0x800004ac]:addi a1, a0, 128<br> [0x800004b0]:sw a1, 180(ra)<br>   |
|  70|[0x8000431c]<br>0xF8000554|- rs1_val == -134217729<br>                                                                                    |[0x800004bc]:addi a1, a0, 1365<br> [0x800004c0]:sw a1, 184(ra)<br>  |
|  71|[0x80004320]<br>0xEFFFFFFF|- rs1_val == -268435457<br>                                                                                    |[0x800004cc]:addi a1, a0, 0<br> [0x800004d0]:sw a1, 188(ra)<br>     |
|  72|[0x80004324]<br>0xE0000554|- rs1_val == -536870913<br>                                                                                    |[0x800004dc]:addi a1, a0, 1365<br> [0x800004e0]:sw a1, 192(ra)<br>  |
|  73|[0x80004328]<br>0xC000002C|- rs1_val == -1073741825<br>                                                                                   |[0x800004ec]:addi a1, a0, 45<br> [0x800004f0]:sw a1, 196(ra)<br>    |
|  74|[0x8000432c]<br>0x55555528|- rs1_val == 1431655765<br> - rs1_val==1431655765 and imm_val==-45<br>                                         |[0x800004fc]:addi a1, a0, 4051<br> [0x80000500]:sw a1, 200(ra)<br>  |
|  75|[0x80004330]<br>0xAAAAA2AA|- rs1_val == -1431655766<br>                                                                                   |[0x8000050c]:addi a1, a0, 2048<br> [0x80000510]:sw a1, 204(ra)<br>  |
|  76|[0x80004334]<br>0x00000006|- rs1_val==3 and imm_val==3<br>                                                                                |[0x80000518]:addi a1, a0, 3<br> [0x8000051c]:sw a1, 208(ra)<br>     |
|  77|[0x80004338]<br>0x00000558|- rs1_val==3 and imm_val==1365<br>                                                                             |[0x80000524]:addi a1, a0, 1365<br> [0x80000528]:sw a1, 212(ra)<br>  |
|  78|[0x8000433c]<br>0xFFFFFAAD|- rs1_val==3 and imm_val==-1366<br>                                                                            |[0x80000530]:addi a1, a0, 2730<br> [0x80000534]:sw a1, 216(ra)<br>  |
|  79|[0x80004340]<br>0x00000008|- rs1_val==3 and imm_val==5<br>                                                                                |[0x8000053c]:addi a1, a0, 5<br> [0x80000540]:sw a1, 220(ra)<br>     |
|  80|[0x80004344]<br>0x00000336|- rs1_val==3 and imm_val==819<br>                                                                              |[0x80000548]:addi a1, a0, 819<br> [0x8000054c]:sw a1, 224(ra)<br>   |
|  81|[0x80004348]<br>0x00000669|- rs1_val==3 and imm_val==1638<br>                                                                             |[0x80000554]:addi a1, a0, 1638<br> [0x80000558]:sw a1, 228(ra)<br>  |
|  82|[0x8000434c]<br>0xFFFFFFD6|- rs1_val==3 and imm_val==-45<br>                                                                              |[0x80000560]:addi a1, a0, 4051<br> [0x80000564]:sw a1, 232(ra)<br>  |
|  83|[0x80004350]<br>0x00000030|- rs1_val==3 and imm_val==45<br>                                                                               |[0x8000056c]:addi a1, a0, 45<br> [0x80000570]:sw a1, 236(ra)<br>    |
|  84|[0x80004354]<br>0x00000005|- rs1_val==3 and imm_val==2<br>                                                                                |[0x80000578]:addi a1, a0, 2<br> [0x8000057c]:sw a1, 240(ra)<br>     |
|  85|[0x80004358]<br>0x00000557|- rs1_val==3 and imm_val==1364<br>                                                                             |[0x80000584]:addi a1, a0, 1364<br> [0x80000588]:sw a1, 244(ra)<br>  |
|  86|[0x8000435c]<br>0x00000003|- rs1_val==3 and imm_val==0<br>                                                                                |[0x80000590]:addi a1, a0, 0<br> [0x80000594]:sw a1, 248(ra)<br>     |
|  87|[0x80004360]<br>0x00000007|- rs1_val==3 and imm_val==4<br>                                                                                |[0x8000059c]:addi a1, a0, 4<br> [0x800005a0]:sw a1, 252(ra)<br>     |
|  88|[0x80004364]<br>0x00000335|- rs1_val==3 and imm_val==818<br>                                                                              |[0x800005a8]:addi a1, a0, 818<br> [0x800005ac]:sw a1, 256(ra)<br>   |
|  89|[0x80004368]<br>0x00000668|- rs1_val==3 and imm_val==1637<br>                                                                             |[0x800005b4]:addi a1, a0, 1637<br> [0x800005b8]:sw a1, 260(ra)<br>  |
|  90|[0x8000436c]<br>0x0000002F|- rs1_val==3 and imm_val==44<br>                                                                               |[0x800005c0]:addi a1, a0, 44<br> [0x800005c4]:sw a1, 264(ra)<br>    |
|  91|[0x80004370]<br>0x00000559|- rs1_val==3 and imm_val==1366<br>                                                                             |[0x800005cc]:addi a1, a0, 1366<br> [0x800005d0]:sw a1, 268(ra)<br>  |
|  92|[0x80004374]<br>0xFFFFFAAE|- rs1_val==3 and imm_val==-1365<br>                                                                            |[0x800005d8]:addi a1, a0, 2731<br> [0x800005dc]:sw a1, 272(ra)<br>  |
|  93|[0x80004378]<br>0x00000009|- rs1_val==3 and imm_val==6<br>                                                                                |[0x800005e4]:addi a1, a0, 6<br> [0x800005e8]:sw a1, 276(ra)<br>     |
|  94|[0x8000437c]<br>0x00000337|- rs1_val==3 and imm_val==820<br>                                                                              |[0x800005f0]:addi a1, a0, 820<br> [0x800005f4]:sw a1, 280(ra)<br>   |
|  95|[0x80004380]<br>0x0000066A|- rs1_val==3 and imm_val==1639<br>                                                                             |[0x800005fc]:addi a1, a0, 1639<br> [0x80000600]:sw a1, 284(ra)<br>  |
|  96|[0x80004384]<br>0xFFFFFFD7|- rs1_val==3 and imm_val==-44<br>                                                                              |[0x80000608]:addi a1, a0, 4052<br> [0x8000060c]:sw a1, 288(ra)<br>  |
|  97|[0x80004388]<br>0x00000031|- rs1_val==3 and imm_val==46<br>                                                                               |[0x80000614]:addi a1, a0, 46<br> [0x80000618]:sw a1, 292(ra)<br>    |
|  98|[0x8000438c]<br>0x55555558|- rs1_val==1431655765 and imm_val==3<br>                                                                       |[0x80000624]:addi a1, a0, 3<br> [0x80000628]:sw a1, 296(ra)<br>     |
|  99|[0x80004390]<br>0x55555AAA|- rs1_val==1431655765 and imm_val==1365<br>                                                                    |[0x80000634]:addi a1, a0, 1365<br> [0x80000638]:sw a1, 300(ra)<br>  |
| 100|[0x80004394]<br>0x55554FFF|- rs1_val==1431655765 and imm_val==-1366<br>                                                                   |[0x80000644]:addi a1, a0, 2730<br> [0x80000648]:sw a1, 304(ra)<br>  |
| 101|[0x80004398]<br>0x5555555A|- rs1_val==1431655765 and imm_val==5<br>                                                                       |[0x80000654]:addi a1, a0, 5<br> [0x80000658]:sw a1, 308(ra)<br>     |
| 102|[0x8000439c]<br>0x55555888|- rs1_val==1431655765 and imm_val==819<br>                                                                     |[0x80000664]:addi a1, a0, 819<br> [0x80000668]:sw a1, 312(ra)<br>   |
| 103|[0x800043a0]<br>0x55555BBB|- rs1_val==1431655765 and imm_val==1638<br>                                                                    |[0x80000674]:addi a1, a0, 1638<br> [0x80000678]:sw a1, 316(ra)<br>  |
| 104|[0x800043a4]<br>0x55555582|- rs1_val==1431655765 and imm_val==45<br>                                                                      |[0x80000684]:addi a1, a0, 45<br> [0x80000688]:sw a1, 320(ra)<br>    |
| 105|[0x800043a8]<br>0x55555557|- rs1_val==1431655765 and imm_val==2<br>                                                                       |[0x80000694]:addi a1, a0, 2<br> [0x80000698]:sw a1, 324(ra)<br>     |
| 106|[0x800043ac]<br>0x55555AA9|- rs1_val==1431655765 and imm_val==1364<br>                                                                    |[0x800006a4]:addi a1, a0, 1364<br> [0x800006a8]:sw a1, 328(ra)<br>  |
| 107|[0x800043b0]<br>0x55555555|- rs1_val==1431655765 and imm_val==0<br>                                                                       |[0x800006b4]:addi a1, a0, 0<br> [0x800006b8]:sw a1, 332(ra)<br>     |
| 108|[0x800043b4]<br>0x55555559|- rs1_val==1431655765 and imm_val==4<br>                                                                       |[0x800006c4]:addi a1, a0, 4<br> [0x800006c8]:sw a1, 336(ra)<br>     |
| 109|[0x800043b8]<br>0x55555887|- rs1_val==1431655765 and imm_val==818<br>                                                                     |[0x800006d4]:addi a1, a0, 818<br> [0x800006d8]:sw a1, 340(ra)<br>   |
| 110|[0x800043bc]<br>0x55555BBA|- rs1_val==1431655765 and imm_val==1637<br>                                                                    |[0x800006e4]:addi a1, a0, 1637<br> [0x800006e8]:sw a1, 344(ra)<br>  |
| 111|[0x800043c0]<br>0x55555581|- rs1_val==1431655765 and imm_val==44<br>                                                                      |[0x800006f4]:addi a1, a0, 44<br> [0x800006f8]:sw a1, 348(ra)<br>    |
| 112|[0x800043c4]<br>0x55555AAB|- rs1_val==1431655765 and imm_val==1366<br>                                                                    |[0x80000704]:addi a1, a0, 1366<br> [0x80000708]:sw a1, 352(ra)<br>  |
| 113|[0x800043c8]<br>0x55555000|- rs1_val==1431655765 and imm_val==-1365<br>                                                                   |[0x80000714]:addi a1, a0, 2731<br> [0x80000718]:sw a1, 356(ra)<br>  |
| 114|[0x800043cc]<br>0x5555555B|- rs1_val==1431655765 and imm_val==6<br>                                                                       |[0x80000724]:addi a1, a0, 6<br> [0x80000728]:sw a1, 360(ra)<br>     |
| 115|[0x800043d0]<br>0x55555889|- rs1_val==1431655765 and imm_val==820<br>                                                                     |[0x80000734]:addi a1, a0, 820<br> [0x80000738]:sw a1, 364(ra)<br>   |
| 116|[0x800043d4]<br>0x55555BBC|- rs1_val==1431655765 and imm_val==1639<br>                                                                    |[0x80000744]:addi a1, a0, 1639<br> [0x80000748]:sw a1, 368(ra)<br>  |
| 117|[0x800043d8]<br>0x55555529|- rs1_val==1431655765 and imm_val==-44<br>                                                                     |[0x80000754]:addi a1, a0, 4052<br> [0x80000758]:sw a1, 372(ra)<br>  |
| 118|[0x800043dc]<br>0x55555583|- rs1_val==1431655765 and imm_val==46<br>                                                                      |[0x80000764]:addi a1, a0, 46<br> [0x80000768]:sw a1, 376(ra)<br>    |
| 119|[0x800043e0]<br>0xAAAAAAAD|- rs1_val==-1431655766 and imm_val==3<br>                                                                      |[0x80000774]:addi a1, a0, 3<br> [0x80000778]:sw a1, 380(ra)<br>     |
| 120|[0x800043e4]<br>0xAAAAAFFF|- rs1_val==-1431655766 and imm_val==1365<br>                                                                   |[0x80000784]:addi a1, a0, 1365<br> [0x80000788]:sw a1, 384(ra)<br>  |
| 121|[0x800043e8]<br>0xAAAAA554|- rs1_val==-1431655766 and imm_val==-1366<br>                                                                  |[0x80000794]:addi a1, a0, 2730<br> [0x80000798]:sw a1, 388(ra)<br>  |
| 122|[0x800043ec]<br>0xAAAAAAAF|- rs1_val==-1431655766 and imm_val==5<br>                                                                      |[0x800007a4]:addi a1, a0, 5<br> [0x800007a8]:sw a1, 392(ra)<br>     |
| 123|[0x800043f0]<br>0xAAAAADDD|- rs1_val==-1431655766 and imm_val==819<br>                                                                    |[0x800007b4]:addi a1, a0, 819<br> [0x800007b8]:sw a1, 396(ra)<br>   |
| 124|[0x800043f4]<br>0xAAAAB110|- rs1_val==-1431655766 and imm_val==1638<br>                                                                   |[0x800007c4]:addi a1, a0, 1638<br> [0x800007c8]:sw a1, 400(ra)<br>  |
| 125|[0x800043f8]<br>0xAAAAAA7D|- rs1_val==-1431655766 and imm_val==-45<br>                                                                    |[0x800007d4]:addi a1, a0, 4051<br> [0x800007d8]:sw a1, 404(ra)<br>  |
| 126|[0x800043fc]<br>0xAAAAAAD7|- rs1_val==-1431655766 and imm_val==45<br>                                                                     |[0x800007e4]:addi a1, a0, 45<br> [0x800007e8]:sw a1, 408(ra)<br>    |
| 127|[0x80004400]<br>0xAAAAAAAC|- rs1_val==-1431655766 and imm_val==2<br>                                                                      |[0x800007f4]:addi a1, a0, 2<br> [0x800007f8]:sw a1, 412(ra)<br>     |
| 128|[0x80004404]<br>0xAAAAAFFE|- rs1_val==-1431655766 and imm_val==1364<br>                                                                   |[0x80000804]:addi a1, a0, 1364<br> [0x80000808]:sw a1, 416(ra)<br>  |
| 129|[0x80004408]<br>0xAAAAAAAA|- rs1_val==-1431655766 and imm_val==0<br>                                                                      |[0x80000814]:addi a1, a0, 0<br> [0x80000818]:sw a1, 420(ra)<br>     |
| 130|[0x8000440c]<br>0xAAAAAAAE|- rs1_val==-1431655766 and imm_val==4<br>                                                                      |[0x80000824]:addi a1, a0, 4<br> [0x80000828]:sw a1, 424(ra)<br>     |
| 131|[0x80004410]<br>0xAAAAADDC|- rs1_val==-1431655766 and imm_val==818<br>                                                                    |[0x80000834]:addi a1, a0, 818<br> [0x80000838]:sw a1, 428(ra)<br>   |
| 132|[0x80004414]<br>0xAAAAB10F|- rs1_val==-1431655766 and imm_val==1637<br>                                                                   |[0x80000844]:addi a1, a0, 1637<br> [0x80000848]:sw a1, 432(ra)<br>  |
| 133|[0x80004418]<br>0xAAAAAAD6|- rs1_val==-1431655766 and imm_val==44<br>                                                                     |[0x80000854]:addi a1, a0, 44<br> [0x80000858]:sw a1, 436(ra)<br>    |
| 134|[0x8000441c]<br>0xAAAAB000|- rs1_val==-1431655766 and imm_val==1366<br>                                                                   |[0x80000864]:addi a1, a0, 1366<br> [0x80000868]:sw a1, 440(ra)<br>  |
| 135|[0x80004420]<br>0xAAAAA555|- rs1_val==-1431655766 and imm_val==-1365<br>                                                                  |[0x80000874]:addi a1, a0, 2731<br> [0x80000878]:sw a1, 444(ra)<br>  |
| 136|[0x80004424]<br>0xAAAAAAB0|- rs1_val==-1431655766 and imm_val==6<br>                                                                      |[0x80000884]:addi a1, a0, 6<br> [0x80000888]:sw a1, 448(ra)<br>     |
| 137|[0x80004428]<br>0xAAAAADDE|- rs1_val==-1431655766 and imm_val==820<br>                                                                    |[0x80000894]:addi a1, a0, 820<br> [0x80000898]:sw a1, 452(ra)<br>   |
| 138|[0x8000442c]<br>0xAAAAB111|- rs1_val==-1431655766 and imm_val==1639<br>                                                                   |[0x800008a4]:addi a1, a0, 1639<br> [0x800008a8]:sw a1, 456(ra)<br>  |
| 139|[0x80004430]<br>0xAAAAAA7E|- rs1_val==-1431655766 and imm_val==-44<br>                                                                    |[0x800008b4]:addi a1, a0, 4052<br> [0x800008b8]:sw a1, 460(ra)<br>  |
| 140|[0x80004434]<br>0xAAAAAAD8|- rs1_val==-1431655766 and imm_val==46<br>                                                                     |[0x800008c4]:addi a1, a0, 46<br> [0x800008c8]:sw a1, 464(ra)<br>    |
| 141|[0x80004438]<br>0x00000008|- rs1_val==5 and imm_val==3<br>                                                                                |[0x800008d0]:addi a1, a0, 3<br> [0x800008d4]:sw a1, 468(ra)<br>     |
| 142|[0x8000443c]<br>0x0000055A|- rs1_val==5 and imm_val==1365<br>                                                                             |[0x800008dc]:addi a1, a0, 1365<br> [0x800008e0]:sw a1, 472(ra)<br>  |
| 143|[0x80004440]<br>0xFFFFFAAF|- rs1_val==5 and imm_val==-1366<br>                                                                            |[0x800008e8]:addi a1, a0, 2730<br> [0x800008ec]:sw a1, 476(ra)<br>  |
| 144|[0x80004444]<br>0x0000000A|- rs1_val==5 and imm_val==5<br>                                                                                |[0x800008f4]:addi a1, a0, 5<br> [0x800008f8]:sw a1, 480(ra)<br>     |
| 145|[0x80004448]<br>0x00000338|- rs1_val==5 and imm_val==819<br>                                                                              |[0x80000900]:addi a1, a0, 819<br> [0x80000904]:sw a1, 484(ra)<br>   |
| 146|[0x8000444c]<br>0x0000066B|- rs1_val==5 and imm_val==1638<br>                                                                             |[0x8000090c]:addi a1, a0, 1638<br> [0x80000910]:sw a1, 488(ra)<br>  |
| 147|[0x80004450]<br>0xFFFFFFD8|- rs1_val==5 and imm_val==-45<br>                                                                              |[0x80000918]:addi a1, a0, 4051<br> [0x8000091c]:sw a1, 492(ra)<br>  |
| 148|[0x80004454]<br>0x00000032|- rs1_val==5 and imm_val==45<br>                                                                               |[0x80000924]:addi a1, a0, 45<br> [0x80000928]:sw a1, 496(ra)<br>    |
| 149|[0x80004458]<br>0x00000007|- rs1_val==5 and imm_val==2<br>                                                                                |[0x80000930]:addi a1, a0, 2<br> [0x80000934]:sw a1, 500(ra)<br>     |
| 150|[0x8000445c]<br>0x00000559|- rs1_val==5 and imm_val==1364<br>                                                                             |[0x8000093c]:addi a1, a0, 1364<br> [0x80000940]:sw a1, 504(ra)<br>  |
| 151|[0x80004460]<br>0x00000005|- rs1_val==5 and imm_val==0<br>                                                                                |[0x80000948]:addi a1, a0, 0<br> [0x8000094c]:sw a1, 508(ra)<br>     |
| 152|[0x80004464]<br>0x00000009|- rs1_val==5 and imm_val==4<br>                                                                                |[0x80000954]:addi a1, a0, 4<br> [0x80000958]:sw a1, 512(ra)<br>     |
| 153|[0x80004468]<br>0x00000337|- rs1_val==5 and imm_val==818<br>                                                                              |[0x80000960]:addi a1, a0, 818<br> [0x80000964]:sw a1, 516(ra)<br>   |
| 154|[0x8000446c]<br>0x0000066A|- rs1_val==5 and imm_val==1637<br>                                                                             |[0x8000096c]:addi a1, a0, 1637<br> [0x80000970]:sw a1, 520(ra)<br>  |
| 155|[0x80004470]<br>0x00000031|- rs1_val==5 and imm_val==44<br>                                                                               |[0x80000978]:addi a1, a0, 44<br> [0x8000097c]:sw a1, 524(ra)<br>    |
| 156|[0x80004474]<br>0x0000055B|- rs1_val==5 and imm_val==1366<br>                                                                             |[0x80000984]:addi a1, a0, 1366<br> [0x80000988]:sw a1, 528(ra)<br>  |
| 157|[0x80004478]<br>0xFFFFFAB0|- rs1_val==5 and imm_val==-1365<br>                                                                            |[0x80000990]:addi a1, a0, 2731<br> [0x80000994]:sw a1, 532(ra)<br>  |
| 158|[0x8000447c]<br>0x0000000B|- rs1_val==5 and imm_val==6<br>                                                                                |[0x8000099c]:addi a1, a0, 6<br> [0x800009a0]:sw a1, 536(ra)<br>     |
| 159|[0x80004480]<br>0x00000339|- rs1_val==5 and imm_val==820<br>                                                                              |[0x800009a8]:addi a1, a0, 820<br> [0x800009ac]:sw a1, 540(ra)<br>   |
| 160|[0x80004484]<br>0x0000066C|- rs1_val==5 and imm_val==1639<br>                                                                             |[0x800009b4]:addi a1, a0, 1639<br> [0x800009b8]:sw a1, 544(ra)<br>  |
| 161|[0x80004488]<br>0xFFFFFFD9|- rs1_val==5 and imm_val==-44<br>                                                                              |[0x800009c0]:addi a1, a0, 4052<br> [0x800009c4]:sw a1, 548(ra)<br>  |
| 162|[0x8000448c]<br>0x00000033|- rs1_val==5 and imm_val==46<br>                                                                               |[0x800009cc]:addi a1, a0, 46<br> [0x800009d0]:sw a1, 552(ra)<br>    |
| 163|[0x80004490]<br>0x33333336|- rs1_val==858993459 and imm_val==3<br>                                                                        |[0x800009dc]:addi a1, a0, 3<br> [0x800009e0]:sw a1, 556(ra)<br>     |
| 164|[0x80004494]<br>0x33333888|- rs1_val==858993459 and imm_val==1365<br>                                                                     |[0x800009ec]:addi a1, a0, 1365<br> [0x800009f0]:sw a1, 560(ra)<br>  |
| 165|[0x80004498]<br>0x33332DDD|- rs1_val==858993459 and imm_val==-1366<br>                                                                    |[0x800009fc]:addi a1, a0, 2730<br> [0x80000a00]:sw a1, 564(ra)<br>  |
| 166|[0x8000449c]<br>0x33333338|- rs1_val==858993459 and imm_val==5<br>                                                                        |[0x80000a0c]:addi a1, a0, 5<br> [0x80000a10]:sw a1, 568(ra)<br>     |
| 167|[0x800044a0]<br>0x33333666|- rs1_val==858993459 and imm_val==819<br>                                                                      |[0x80000a1c]:addi a1, a0, 819<br> [0x80000a20]:sw a1, 572(ra)<br>   |
| 168|[0x800044a4]<br>0x33333999|- rs1_val==858993459 and imm_val==1638<br>                                                                     |[0x80000a2c]:addi a1, a0, 1638<br> [0x80000a30]:sw a1, 576(ra)<br>  |
| 169|[0x800044a8]<br>0x33333306|- rs1_val==858993459 and imm_val==-45<br>                                                                      |[0x80000a3c]:addi a1, a0, 4051<br> [0x80000a40]:sw a1, 580(ra)<br>  |
| 170|[0x800044ac]<br>0x33333360|- rs1_val==858993459 and imm_val==45<br>                                                                       |[0x80000a4c]:addi a1, a0, 45<br> [0x80000a50]:sw a1, 584(ra)<br>    |
| 171|[0x800044b0]<br>0x33333335|- rs1_val==858993459 and imm_val==2<br>                                                                        |[0x80000a5c]:addi a1, a0, 2<br> [0x80000a60]:sw a1, 588(ra)<br>     |
| 172|[0x800044b4]<br>0x33333887|- rs1_val==858993459 and imm_val==1364<br>                                                                     |[0x80000a6c]:addi a1, a0, 1364<br> [0x80000a70]:sw a1, 592(ra)<br>  |
| 173|[0x800044b8]<br>0x33333337|- rs1_val==858993459 and imm_val==4<br>                                                                        |[0x80000a7c]:addi a1, a0, 4<br> [0x80000a80]:sw a1, 596(ra)<br>     |
| 174|[0x800044bc]<br>0x33333665|- rs1_val==858993459 and imm_val==818<br>                                                                      |[0x80000a8c]:addi a1, a0, 818<br> [0x80000a90]:sw a1, 600(ra)<br>   |
| 175|[0x800044c0]<br>0x33333998|- rs1_val==858993459 and imm_val==1637<br>                                                                     |[0x80000a9c]:addi a1, a0, 1637<br> [0x80000aa0]:sw a1, 604(ra)<br>  |
| 176|[0x800044c4]<br>0x3333335F|- rs1_val==858993459 and imm_val==44<br>                                                                       |[0x80000aac]:addi a1, a0, 44<br> [0x80000ab0]:sw a1, 608(ra)<br>    |
| 177|[0x800044c8]<br>0x33333889|- rs1_val==858993459 and imm_val==1366<br>                                                                     |[0x80000abc]:addi a1, a0, 1366<br> [0x80000ac0]:sw a1, 612(ra)<br>  |
| 178|[0x800044cc]<br>0x33332DDE|- rs1_val==858993459 and imm_val==-1365<br>                                                                    |[0x80000acc]:addi a1, a0, 2731<br> [0x80000ad0]:sw a1, 616(ra)<br>  |
| 179|[0x800044d0]<br>0x33333339|- rs1_val==858993459 and imm_val==6<br>                                                                        |[0x80000adc]:addi a1, a0, 6<br> [0x80000ae0]:sw a1, 620(ra)<br>     |
| 180|[0x800044d4]<br>0x33333667|- rs1_val==858993459 and imm_val==820<br>                                                                      |[0x80000aec]:addi a1, a0, 820<br> [0x80000af0]:sw a1, 624(ra)<br>   |
| 181|[0x800044d8]<br>0x3333399A|- rs1_val==858993459 and imm_val==1639<br>                                                                     |[0x80000afc]:addi a1, a0, 1639<br> [0x80000b00]:sw a1, 628(ra)<br>  |
| 182|[0x800044dc]<br>0x33333307|- rs1_val==858993459 and imm_val==-44<br>                                                                      |[0x80000b0c]:addi a1, a0, 4052<br> [0x80000b10]:sw a1, 632(ra)<br>  |
| 183|[0x800044e0]<br>0x33333361|- rs1_val==858993459 and imm_val==46<br>                                                                       |[0x80000b1c]:addi a1, a0, 46<br> [0x80000b20]:sw a1, 636(ra)<br>    |
| 184|[0x800044e4]<br>0x66666669|- rs1_val==1717986918 and imm_val==3<br>                                                                       |[0x80000b2c]:addi a1, a0, 3<br> [0x80000b30]:sw a1, 640(ra)<br>     |
| 185|[0x800044e8]<br>0x66666BBB|- rs1_val==1717986918 and imm_val==1365<br>                                                                    |[0x80000b3c]:addi a1, a0, 1365<br> [0x80000b40]:sw a1, 644(ra)<br>  |
| 186|[0x800044ec]<br>0x66666110|- rs1_val==1717986918 and imm_val==-1366<br>                                                                   |[0x80000b4c]:addi a1, a0, 2730<br> [0x80000b50]:sw a1, 648(ra)<br>  |
| 187|[0x800044f0]<br>0x6666666B|- rs1_val==1717986918 and imm_val==5<br>                                                                       |[0x80000b5c]:addi a1, a0, 5<br> [0x80000b60]:sw a1, 652(ra)<br>     |
| 188|[0x800044f4]<br>0x66666999|- rs1_val==1717986918 and imm_val==819<br>                                                                     |[0x80000b6c]:addi a1, a0, 819<br> [0x80000b70]:sw a1, 656(ra)<br>   |
| 189|[0x800044f8]<br>0x66666CCC|- rs1_val==1717986918 and imm_val==1638<br>                                                                    |[0x80000b7c]:addi a1, a0, 1638<br> [0x80000b80]:sw a1, 660(ra)<br>  |
| 190|[0x800044fc]<br>0x66666639|- rs1_val==1717986918 and imm_val==-45<br>                                                                     |[0x80000b8c]:addi a1, a0, 4051<br> [0x80000b90]:sw a1, 664(ra)<br>  |
| 191|[0x80004500]<br>0x66666693|- rs1_val==1717986918 and imm_val==45<br>                                                                      |[0x80000b9c]:addi a1, a0, 45<br> [0x80000ba0]:sw a1, 668(ra)<br>    |
| 192|[0x80004504]<br>0x66666668|- rs1_val==1717986918 and imm_val==2<br>                                                                       |[0x80000bac]:addi a1, a0, 2<br> [0x80000bb0]:sw a1, 672(ra)<br>     |
| 193|[0x80004508]<br>0x66666BBA|- rs1_val==1717986918 and imm_val==1364<br>                                                                    |[0x80000bbc]:addi a1, a0, 1364<br> [0x80000bc0]:sw a1, 676(ra)<br>  |
| 194|[0x8000450c]<br>0x66666666|- rs1_val==1717986918 and imm_val==0<br>                                                                       |[0x80000bcc]:addi a1, a0, 0<br> [0x80000bd0]:sw a1, 680(ra)<br>     |
| 195|[0x80004510]<br>0x6666666A|- rs1_val==1717986918 and imm_val==4<br>                                                                       |[0x80000bdc]:addi a1, a0, 4<br> [0x80000be0]:sw a1, 684(ra)<br>     |
| 196|[0x80004514]<br>0x66666998|- rs1_val==1717986918 and imm_val==818<br>                                                                     |[0x80000bec]:addi a1, a0, 818<br> [0x80000bf0]:sw a1, 688(ra)<br>   |
| 197|[0x80004518]<br>0x66666CCB|- rs1_val==1717986918 and imm_val==1637<br>                                                                    |[0x80000bfc]:addi a1, a0, 1637<br> [0x80000c00]:sw a1, 692(ra)<br>  |
| 198|[0x8000451c]<br>0x66666692|- rs1_val==1717986918 and imm_val==44<br>                                                                      |[0x80000c0c]:addi a1, a0, 44<br> [0x80000c10]:sw a1, 696(ra)<br>    |
| 199|[0x80004520]<br>0x66666BBC|- rs1_val==1717986918 and imm_val==1366<br>                                                                    |[0x80000c1c]:addi a1, a0, 1366<br> [0x80000c20]:sw a1, 700(ra)<br>  |
| 200|[0x80004524]<br>0x66666111|- rs1_val==1717986918 and imm_val==-1365<br>                                                                   |[0x80000c2c]:addi a1, a0, 2731<br> [0x80000c30]:sw a1, 704(ra)<br>  |
| 201|[0x80004528]<br>0x6666666C|- rs1_val==1717986918 and imm_val==6<br>                                                                       |[0x80000c3c]:addi a1, a0, 6<br> [0x80000c40]:sw a1, 708(ra)<br>     |
| 202|[0x8000452c]<br>0x6666699A|- rs1_val==1717986918 and imm_val==820<br>                                                                     |[0x80000c4c]:addi a1, a0, 820<br> [0x80000c50]:sw a1, 712(ra)<br>   |
| 203|[0x80004530]<br>0x66666CCD|- rs1_val==1717986918 and imm_val==1639<br>                                                                    |[0x80000c5c]:addi a1, a0, 1639<br> [0x80000c60]:sw a1, 716(ra)<br>  |
| 204|[0x80004534]<br>0x6666663A|- rs1_val==1717986918 and imm_val==-44<br>                                                                     |[0x80000c6c]:addi a1, a0, 4052<br> [0x80000c70]:sw a1, 720(ra)<br>  |
| 205|[0x80004538]<br>0x66666694|- rs1_val==1717986918 and imm_val==46<br>                                                                      |[0x80000c7c]:addi a1, a0, 46<br> [0x80000c80]:sw a1, 724(ra)<br>    |
| 206|[0x8000453c]<br>0xFFFF4AFF|- rs1_val==-46340 and imm_val==3<br>                                                                           |[0x80000c8c]:addi a1, a0, 3<br> [0x80000c90]:sw a1, 728(ra)<br>     |
| 207|[0x80004540]<br>0xFFFF5051|- rs1_val==-46340 and imm_val==1365<br>                                                                        |[0x80000c9c]:addi a1, a0, 1365<br> [0x80000ca0]:sw a1, 732(ra)<br>  |
| 208|[0x80004544]<br>0xFFFF45A6|- rs1_val==-46340 and imm_val==-1366<br>                                                                       |[0x80000cac]:addi a1, a0, 2730<br> [0x80000cb0]:sw a1, 736(ra)<br>  |
| 209|[0x80004548]<br>0xFFFF4B01|- rs1_val==-46340 and imm_val==5<br>                                                                           |[0x80000cbc]:addi a1, a0, 5<br> [0x80000cc0]:sw a1, 740(ra)<br>     |
| 210|[0x8000454c]<br>0xFFFF4E2F|- rs1_val==-46340 and imm_val==819<br>                                                                         |[0x80000ccc]:addi a1, a0, 819<br> [0x80000cd0]:sw a1, 744(ra)<br>   |
| 211|[0x80004550]<br>0xFFFF5162|- rs1_val==-46340 and imm_val==1638<br>                                                                        |[0x80000cdc]:addi a1, a0, 1638<br> [0x80000ce0]:sw a1, 748(ra)<br>  |
| 212|[0x80004554]<br>0xFFFF4ACF|- rs1_val==-46340 and imm_val==-45<br>                                                                         |[0x80000cec]:addi a1, a0, 4051<br> [0x80000cf0]:sw a1, 752(ra)<br>  |
| 213|[0x80004558]<br>0xFFFF4B29|- rs1_val==-46340 and imm_val==45<br>                                                                          |[0x80000cfc]:addi a1, a0, 45<br> [0x80000d00]:sw a1, 756(ra)<br>    |
| 214|[0x8000455c]<br>0xFFFF4AFE|- rs1_val==-46340 and imm_val==2<br>                                                                           |[0x80000d0c]:addi a1, a0, 2<br> [0x80000d10]:sw a1, 760(ra)<br>     |
| 215|[0x80004560]<br>0xFFFF5050|- rs1_val==-46340 and imm_val==1364<br>                                                                        |[0x80000d1c]:addi a1, a0, 1364<br> [0x80000d20]:sw a1, 764(ra)<br>  |
| 216|[0x80004564]<br>0xFFFF4AFC|- rs1_val==-46340 and imm_val==0<br>                                                                           |[0x80000d2c]:addi a1, a0, 0<br> [0x80000d30]:sw a1, 768(ra)<br>     |
| 217|[0x80004568]<br>0xFFFF4B00|- rs1_val==-46340 and imm_val==4<br>                                                                           |[0x80000d3c]:addi a1, a0, 4<br> [0x80000d40]:sw a1, 772(ra)<br>     |
| 218|[0x8000456c]<br>0xFFFF4E2E|- rs1_val==-46340 and imm_val==818<br>                                                                         |[0x80000d4c]:addi a1, a0, 818<br> [0x80000d50]:sw a1, 776(ra)<br>   |
| 219|[0x80004570]<br>0xFFFF5161|- rs1_val==-46340 and imm_val==1637<br>                                                                        |[0x80000d5c]:addi a1, a0, 1637<br> [0x80000d60]:sw a1, 780(ra)<br>  |
| 220|[0x80004574]<br>0xFFFF4B28|- rs1_val==-46340 and imm_val==44<br>                                                                          |[0x80000d6c]:addi a1, a0, 44<br> [0x80000d70]:sw a1, 784(ra)<br>    |
| 221|[0x80004578]<br>0xFFFF5052|- rs1_val==-46340 and imm_val==1366<br>                                                                        |[0x80000d7c]:addi a1, a0, 1366<br> [0x80000d80]:sw a1, 788(ra)<br>  |
| 222|[0x8000457c]<br>0xFFFF45A7|- rs1_val==-46340 and imm_val==-1365<br>                                                                       |[0x80000d8c]:addi a1, a0, 2731<br> [0x80000d90]:sw a1, 792(ra)<br>  |
| 223|[0x80004580]<br>0xFFFF4B02|- rs1_val==-46340 and imm_val==6<br>                                                                           |[0x80000d9c]:addi a1, a0, 6<br> [0x80000da0]:sw a1, 796(ra)<br>     |
| 224|[0x80004584]<br>0xFFFF4E30|- rs1_val==-46340 and imm_val==820<br>                                                                         |[0x80000dac]:addi a1, a0, 820<br> [0x80000db0]:sw a1, 800(ra)<br>   |
| 225|[0x80004588]<br>0xFFFF5163|- rs1_val==-46340 and imm_val==1639<br>                                                                        |[0x80000dbc]:addi a1, a0, 1639<br> [0x80000dc0]:sw a1, 804(ra)<br>  |
| 226|[0x8000458c]<br>0xFFFF4AD0|- rs1_val==-46340 and imm_val==-44<br>                                                                         |[0x80000dcc]:addi a1, a0, 4052<br> [0x80000dd0]:sw a1, 808(ra)<br>  |
| 227|[0x80004590]<br>0xFFFF4B2A|- rs1_val==-46340 and imm_val==46<br>                                                                          |[0x80000ddc]:addi a1, a0, 46<br> [0x80000de0]:sw a1, 812(ra)<br>    |
| 228|[0x80004594]<br>0x0000B507|- rs1_val==46340 and imm_val==3<br>                                                                            |[0x80000dec]:addi a1, a0, 3<br> [0x80000df0]:sw a1, 816(ra)<br>     |
| 229|[0x80004598]<br>0x0000BA59|- rs1_val==46340 and imm_val==1365<br>                                                                         |[0x80000dfc]:addi a1, a0, 1365<br> [0x80000e00]:sw a1, 820(ra)<br>  |
| 230|[0x8000459c]<br>0x0000AFAE|- rs1_val==46340 and imm_val==-1366<br>                                                                        |[0x80000e0c]:addi a1, a0, 2730<br> [0x80000e10]:sw a1, 824(ra)<br>  |
| 231|[0x800045a0]<br>0x0000B509|- rs1_val==46340 and imm_val==5<br>                                                                            |[0x80000e1c]:addi a1, a0, 5<br> [0x80000e20]:sw a1, 828(ra)<br>     |
| 232|[0x800045a4]<br>0x0000B837|- rs1_val==46340 and imm_val==819<br>                                                                          |[0x80000e2c]:addi a1, a0, 819<br> [0x80000e30]:sw a1, 832(ra)<br>   |
| 233|[0x800045a8]<br>0x0000BB6A|- rs1_val==46340 and imm_val==1638<br>                                                                         |[0x80000e3c]:addi a1, a0, 1638<br> [0x80000e40]:sw a1, 836(ra)<br>  |
| 234|[0x800045ac]<br>0x0000B4D7|- rs1_val==46340 and imm_val==-45<br>                                                                          |[0x80000e4c]:addi a1, a0, 4051<br> [0x80000e50]:sw a1, 840(ra)<br>  |
| 235|[0x800045b0]<br>0x0000B531|- rs1_val==46340 and imm_val==45<br>                                                                           |[0x80000e5c]:addi a1, a0, 45<br> [0x80000e60]:sw a1, 844(ra)<br>    |
| 236|[0x800045b4]<br>0x0000B506|- rs1_val==46340 and imm_val==2<br>                                                                            |[0x80000e6c]:addi a1, a0, 2<br> [0x80000e70]:sw a1, 848(ra)<br>     |
| 237|[0x800045b8]<br>0x0000BA58|- rs1_val==46340 and imm_val==1364<br>                                                                         |[0x80000e7c]:addi a1, a0, 1364<br> [0x80000e80]:sw a1, 852(ra)<br>  |
| 238|[0x800045bc]<br>0x0000B504|- rs1_val==46340 and imm_val==0<br>                                                                            |[0x80000e8c]:addi a1, a0, 0<br> [0x80000e90]:sw a1, 856(ra)<br>     |
| 239|[0x800045c0]<br>0x0000B508|- rs1_val==46340 and imm_val==4<br>                                                                            |[0x80000e9c]:addi a1, a0, 4<br> [0x80000ea0]:sw a1, 860(ra)<br>     |
| 240|[0x800045c4]<br>0x0000B836|- rs1_val==46340 and imm_val==818<br>                                                                          |[0x80000eac]:addi a1, a0, 818<br> [0x80000eb0]:sw a1, 864(ra)<br>   |
| 241|[0x800045c8]<br>0x0000BB69|- rs1_val==46340 and imm_val==1637<br>                                                                         |[0x80000ebc]:addi a1, a0, 1637<br> [0x80000ec0]:sw a1, 868(ra)<br>  |
| 242|[0x800045cc]<br>0x0000B530|- rs1_val==46340 and imm_val==44<br>                                                                           |[0x80000ecc]:addi a1, a0, 44<br> [0x80000ed0]:sw a1, 872(ra)<br>    |
| 243|[0x800045d0]<br>0x0000BA5A|- rs1_val==46340 and imm_val==1366<br>                                                                         |[0x80000edc]:addi a1, a0, 1366<br> [0x80000ee0]:sw a1, 876(ra)<br>  |
| 244|[0x800045d4]<br>0x0000AFAF|- rs1_val==46340 and imm_val==-1365<br>                                                                        |[0x80000eec]:addi a1, a0, 2731<br> [0x80000ef0]:sw a1, 880(ra)<br>  |
| 245|[0x800045d8]<br>0x0000B50A|- rs1_val==46340 and imm_val==6<br>                                                                            |[0x80000efc]:addi a1, a0, 6<br> [0x80000f00]:sw a1, 884(ra)<br>     |
| 246|[0x800045dc]<br>0x0000B838|- rs1_val==46340 and imm_val==820<br>                                                                          |[0x80000f0c]:addi a1, a0, 820<br> [0x80000f10]:sw a1, 888(ra)<br>   |
| 247|[0x800045e0]<br>0x0000BB6B|- rs1_val==46340 and imm_val==1639<br>                                                                         |[0x80000f1c]:addi a1, a0, 1639<br> [0x80000f20]:sw a1, 892(ra)<br>  |
| 248|[0x800045e4]<br>0x0000B4D8|- rs1_val==46340 and imm_val==-44<br>                                                                          |[0x80000f2c]:addi a1, a0, 4052<br> [0x80000f30]:sw a1, 896(ra)<br>  |
| 249|[0x800045e8]<br>0x0000B532|- rs1_val==46340 and imm_val==46<br>                                                                           |[0x80000f3c]:addi a1, a0, 46<br> [0x80000f40]:sw a1, 900(ra)<br>    |
| 250|[0x800045ec]<br>0x00000005|- rs1_val==2 and imm_val==3<br>                                                                                |[0x80000f48]:addi a1, a0, 3<br> [0x80000f4c]:sw a1, 904(ra)<br>     |
| 251|[0x800045f0]<br>0x00000557|- rs1_val==2 and imm_val==1365<br>                                                                             |[0x80000f54]:addi a1, a0, 1365<br> [0x80000f58]:sw a1, 908(ra)<br>  |
| 252|[0x800045f4]<br>0xFFFFFAAC|- rs1_val==2 and imm_val==-1366<br>                                                                            |[0x80000f60]:addi a1, a0, 2730<br> [0x80000f64]:sw a1, 912(ra)<br>  |
| 253|[0x800045f8]<br>0x00000007|- rs1_val==2 and imm_val==5<br>                                                                                |[0x80000f6c]:addi a1, a0, 5<br> [0x80000f70]:sw a1, 916(ra)<br>     |
| 254|[0x800045fc]<br>0x00000335|- rs1_val==2 and imm_val==819<br>                                                                              |[0x80000f78]:addi a1, a0, 819<br> [0x80000f7c]:sw a1, 920(ra)<br>   |
| 255|[0x80004600]<br>0x00000668|- rs1_val==2 and imm_val==1638<br>                                                                             |[0x80000f84]:addi a1, a0, 1638<br> [0x80000f88]:sw a1, 924(ra)<br>  |
| 256|[0x80004604]<br>0xFFFFFFD5|- rs1_val==2 and imm_val==-45<br>                                                                              |[0x80000f90]:addi a1, a0, 4051<br> [0x80000f94]:sw a1, 928(ra)<br>  |
| 257|[0x80004608]<br>0x0000002F|- rs1_val==2 and imm_val==45<br>                                                                               |[0x80000f9c]:addi a1, a0, 45<br> [0x80000fa0]:sw a1, 932(ra)<br>    |
| 258|[0x8000460c]<br>0x00000004|- rs1_val==2 and imm_val==2<br>                                                                                |[0x80000fa8]:addi a1, a0, 2<br> [0x80000fac]:sw a1, 936(ra)<br>     |
| 259|[0x80004610]<br>0x00000556|- rs1_val==2 and imm_val==1364<br>                                                                             |[0x80000fb4]:addi a1, a0, 1364<br> [0x80000fb8]:sw a1, 940(ra)<br>  |
| 260|[0x80004614]<br>0x00000002|- rs1_val==2 and imm_val==0<br>                                                                                |[0x80000fc0]:addi a1, a0, 0<br> [0x80000fc4]:sw a1, 944(ra)<br>     |
| 261|[0x80004618]<br>0x00000006|- rs1_val==2 and imm_val==4<br>                                                                                |[0x80000fcc]:addi a1, a0, 4<br> [0x80000fd0]:sw a1, 948(ra)<br>     |
| 262|[0x8000461c]<br>0x00000334|- rs1_val==2 and imm_val==818<br>                                                                              |[0x80000fd8]:addi a1, a0, 818<br> [0x80000fdc]:sw a1, 952(ra)<br>   |
| 263|[0x80004620]<br>0x00000667|- rs1_val==2 and imm_val==1637<br>                                                                             |[0x80000fe4]:addi a1, a0, 1637<br> [0x80000fe8]:sw a1, 956(ra)<br>  |
| 264|[0x80004624]<br>0x0000002E|- rs1_val==2 and imm_val==44<br>                                                                               |[0x80000ff0]:addi a1, a0, 44<br> [0x80000ff4]:sw a1, 960(ra)<br>    |
| 265|[0x80004628]<br>0x00000558|- rs1_val==2 and imm_val==1366<br>                                                                             |[0x80000ffc]:addi a1, a0, 1366<br> [0x80001000]:sw a1, 964(ra)<br>  |
| 266|[0x8000462c]<br>0xFFFFFAAD|- rs1_val==2 and imm_val==-1365<br>                                                                            |[0x80001008]:addi a1, a0, 2731<br> [0x8000100c]:sw a1, 968(ra)<br>  |
| 267|[0x80004630]<br>0x00000008|- rs1_val==2 and imm_val==6<br>                                                                                |[0x80001014]:addi a1, a0, 6<br> [0x80001018]:sw a1, 972(ra)<br>     |
| 268|[0x80004634]<br>0x00000336|- rs1_val==2 and imm_val==820<br>                                                                              |[0x80001020]:addi a1, a0, 820<br> [0x80001024]:sw a1, 976(ra)<br>   |
| 269|[0x80004638]<br>0x00000669|- rs1_val==2 and imm_val==1639<br>                                                                             |[0x8000102c]:addi a1, a0, 1639<br> [0x80001030]:sw a1, 980(ra)<br>  |
| 270|[0x8000463c]<br>0xFFFFFFD6|- rs1_val==2 and imm_val==-44<br>                                                                              |[0x80001038]:addi a1, a0, 4052<br> [0x8000103c]:sw a1, 984(ra)<br>  |
| 271|[0x80004640]<br>0x00000030|- rs1_val==2 and imm_val==46<br>                                                                               |[0x80001044]:addi a1, a0, 46<br> [0x80001048]:sw a1, 988(ra)<br>    |
| 272|[0x80004644]<br>0x55555557|- rs1_val==1431655764 and imm_val==3<br>                                                                       |[0x80001054]:addi a1, a0, 3<br> [0x80001058]:sw a1, 992(ra)<br>     |
| 273|[0x80004648]<br>0x55555AA9|- rs1_val==1431655764 and imm_val==1365<br>                                                                    |[0x80001064]:addi a1, a0, 1365<br> [0x80001068]:sw a1, 996(ra)<br>  |
| 274|[0x8000464c]<br>0x55554FFE|- rs1_val==1431655764 and imm_val==-1366<br>                                                                   |[0x80001074]:addi a1, a0, 2730<br> [0x80001078]:sw a1, 1000(ra)<br> |
| 275|[0x80004650]<br>0x55555559|- rs1_val==1431655764 and imm_val==5<br>                                                                       |[0x80001084]:addi a1, a0, 5<br> [0x80001088]:sw a1, 1004(ra)<br>    |
| 276|[0x80004654]<br>0x55555887|- rs1_val==1431655764 and imm_val==819<br>                                                                     |[0x80001094]:addi a1, a0, 819<br> [0x80001098]:sw a1, 1008(ra)<br>  |
| 277|[0x80004658]<br>0x55555BBA|- rs1_val==1431655764 and imm_val==1638<br>                                                                    |[0x800010a4]:addi a1, a0, 1638<br> [0x800010a8]:sw a1, 1012(ra)<br> |
| 278|[0x8000465c]<br>0x55555527|- rs1_val==1431655764 and imm_val==-45<br>                                                                     |[0x800010b4]:addi a1, a0, 4051<br> [0x800010b8]:sw a1, 1016(ra)<br> |
| 279|[0x80004660]<br>0x55555581|- rs1_val==1431655764 and imm_val==45<br>                                                                      |[0x800010c4]:addi a1, a0, 45<br> [0x800010c8]:sw a1, 1020(ra)<br>   |
| 280|[0x80004664]<br>0x55555556|- rs1_val==1431655764 and imm_val==2<br>                                                                       |[0x800010d4]:addi a1, a0, 2<br> [0x800010d8]:sw a1, 1024(ra)<br>    |
| 281|[0x80004668]<br>0x55555AA8|- rs1_val==1431655764 and imm_val==1364<br>                                                                    |[0x800010e4]:addi a1, a0, 1364<br> [0x800010e8]:sw a1, 1028(ra)<br> |
| 282|[0x8000466c]<br>0x55555554|- rs1_val==1431655764 and imm_val==0<br>                                                                       |[0x800010f4]:addi a1, a0, 0<br> [0x800010f8]:sw a1, 1032(ra)<br>    |
| 283|[0x80004670]<br>0x55555558|- rs1_val==1431655764 and imm_val==4<br>                                                                       |[0x80001104]:addi a1, a0, 4<br> [0x80001108]:sw a1, 1036(ra)<br>    |
| 284|[0x80004674]<br>0x55555886|- rs1_val==1431655764 and imm_val==818<br>                                                                     |[0x80001114]:addi a1, a0, 818<br> [0x80001118]:sw a1, 1040(ra)<br>  |
| 285|[0x80004678]<br>0x55555BB9|- rs1_val==1431655764 and imm_val==1637<br>                                                                    |[0x80001124]:addi a1, a0, 1637<br> [0x80001128]:sw a1, 1044(ra)<br> |
| 286|[0x8000467c]<br>0x55555580|- rs1_val==1431655764 and imm_val==44<br>                                                                      |[0x80001134]:addi a1, a0, 44<br> [0x80001138]:sw a1, 1048(ra)<br>   |
| 287|[0x80004680]<br>0x55555AAA|- rs1_val==1431655764 and imm_val==1366<br>                                                                    |[0x80001144]:addi a1, a0, 1366<br> [0x80001148]:sw a1, 1052(ra)<br> |
| 288|[0x80004684]<br>0x55554FFF|- rs1_val==1431655764 and imm_val==-1365<br>                                                                   |[0x80001154]:addi a1, a0, 2731<br> [0x80001158]:sw a1, 1056(ra)<br> |
| 289|[0x80004688]<br>0x5555555A|- rs1_val==1431655764 and imm_val==6<br>                                                                       |[0x80001164]:addi a1, a0, 6<br> [0x80001168]:sw a1, 1060(ra)<br>    |
| 290|[0x8000468c]<br>0x55555888|- rs1_val==1431655764 and imm_val==820<br>                                                                     |[0x80001174]:addi a1, a0, 820<br> [0x80001178]:sw a1, 1064(ra)<br>  |
| 291|[0x80004690]<br>0x55555BBB|- rs1_val==1431655764 and imm_val==1639<br>                                                                    |[0x80001184]:addi a1, a0, 1639<br> [0x80001188]:sw a1, 1068(ra)<br> |
| 292|[0x80004694]<br>0x55555528|- rs1_val==1431655764 and imm_val==-44<br>                                                                     |[0x80001194]:addi a1, a0, 4052<br> [0x80001198]:sw a1, 1072(ra)<br> |
| 293|[0x80004698]<br>0x55555582|- rs1_val==1431655764 and imm_val==46<br>                                                                      |[0x800011a4]:addi a1, a0, 46<br> [0x800011a8]:sw a1, 1076(ra)<br>   |
| 294|[0x800046a0]<br>0x00000555|- rs1_val==0 and imm_val==1365<br>                                                                             |[0x800011bc]:addi a1, a0, 1365<br> [0x800011c0]:sw a1, 1084(ra)<br> |
| 295|[0x800046a4]<br>0xFFFFFAAA|- rs1_val==0 and imm_val==-1366<br>                                                                            |[0x800011c8]:addi a1, a0, 2730<br> [0x800011cc]:sw a1, 1088(ra)<br> |
| 296|[0x800046ac]<br>0x00000333|- rs1_val==0 and imm_val==819<br>                                                                              |[0x800011e0]:addi a1, a0, 819<br> [0x800011e4]:sw a1, 1096(ra)<br>  |
| 297|[0x800046b0]<br>0x00000666|- rs1_val==0 and imm_val==1638<br>                                                                             |[0x800011ec]:addi a1, a0, 1638<br> [0x800011f0]:sw a1, 1100(ra)<br> |
| 298|[0x800046b4]<br>0xFFFFFFD3|- rs1_val==0 and imm_val==-45<br>                                                                              |[0x800011f8]:addi a1, a0, 4051<br> [0x800011fc]:sw a1, 1104(ra)<br> |
| 299|[0x800046b8]<br>0x33333666|- rs1_val==858993460 and imm_val==818<br>                                                                      |[0x80001208]:addi a1, a0, 818<br> [0x8000120c]:sw a1, 1108(ra)<br>  |
| 300|[0x800046bc]<br>0x33333999|- rs1_val==858993460 and imm_val==1637<br>                                                                     |[0x80001218]:addi a1, a0, 1637<br> [0x8000121c]:sw a1, 1112(ra)<br> |
| 301|[0x800046c0]<br>0x33333360|- rs1_val==858993460 and imm_val==44<br>                                                                       |[0x80001228]:addi a1, a0, 44<br> [0x8000122c]:sw a1, 1116(ra)<br>   |
| 302|[0x800046c4]<br>0x3333388A|- rs1_val==858993460 and imm_val==1366<br>                                                                     |[0x80001238]:addi a1, a0, 1366<br> [0x8000123c]:sw a1, 1120(ra)<br> |
| 303|[0x800046c8]<br>0x33332DDF|- rs1_val==858993460 and imm_val==-1365<br>                                                                    |[0x80001248]:addi a1, a0, 2731<br> [0x8000124c]:sw a1, 1124(ra)<br> |
| 304|[0x800046cc]<br>0x3333333A|- rs1_val==858993460 and imm_val==6<br>                                                                        |[0x80001258]:addi a1, a0, 6<br> [0x8000125c]:sw a1, 1128(ra)<br>    |
| 305|[0x800046d0]<br>0x33333668|- rs1_val==858993460 and imm_val==820<br>                                                                      |[0x80001268]:addi a1, a0, 820<br> [0x8000126c]:sw a1, 1132(ra)<br>  |
| 306|[0x800046d4]<br>0x3333399B|- rs1_val==858993460 and imm_val==1639<br>                                                                     |[0x80001278]:addi a1, a0, 1639<br> [0x8000127c]:sw a1, 1136(ra)<br> |
| 307|[0x800046d8]<br>0x33333308|- rs1_val==858993460 and imm_val==-44<br>                                                                      |[0x80001288]:addi a1, a0, 4052<br> [0x8000128c]:sw a1, 1140(ra)<br> |
| 308|[0x800046dc]<br>0x33333362|- rs1_val==858993460 and imm_val==46<br>                                                                       |[0x80001298]:addi a1, a0, 46<br> [0x8000129c]:sw a1, 1144(ra)<br>   |
| 309|[0x800046e0]<br>0x6666666A|- rs1_val==1717986919 and imm_val==3<br>                                                                       |[0x800012a8]:addi a1, a0, 3<br> [0x800012ac]:sw a1, 1148(ra)<br>    |
| 310|[0x800046e4]<br>0x66666BBC|- rs1_val==1717986919 and imm_val==1365<br>                                                                    |[0x800012b8]:addi a1, a0, 1365<br> [0x800012bc]:sw a1, 1152(ra)<br> |
| 311|[0x800046e8]<br>0x66666111|- rs1_val==1717986919 and imm_val==-1366<br>                                                                   |[0x800012c8]:addi a1, a0, 2730<br> [0x800012cc]:sw a1, 1156(ra)<br> |
| 312|[0x800046ec]<br>0x6666666C|- rs1_val==1717986919 and imm_val==5<br>                                                                       |[0x800012d8]:addi a1, a0, 5<br> [0x800012dc]:sw a1, 1160(ra)<br>    |
| 313|[0x800046f0]<br>0x6666699A|- rs1_val==1717986919 and imm_val==819<br>                                                                     |[0x800012e8]:addi a1, a0, 819<br> [0x800012ec]:sw a1, 1164(ra)<br>  |
| 314|[0x800046f4]<br>0x66666CCD|- rs1_val==1717986919 and imm_val==1638<br>                                                                    |[0x800012f8]:addi a1, a0, 1638<br> [0x800012fc]:sw a1, 1168(ra)<br> |
| 315|[0x800046f8]<br>0x6666663A|- rs1_val==1717986919 and imm_val==-45<br>                                                                     |[0x80001308]:addi a1, a0, 4051<br> [0x8000130c]:sw a1, 1172(ra)<br> |
| 316|[0x800046fc]<br>0x66666694|- rs1_val==1717986919 and imm_val==45<br>                                                                      |[0x80001318]:addi a1, a0, 45<br> [0x8000131c]:sw a1, 1176(ra)<br>   |
| 317|[0x80004700]<br>0x66666669|- rs1_val==1717986919 and imm_val==2<br>                                                                       |[0x80001328]:addi a1, a0, 2<br> [0x8000132c]:sw a1, 1180(ra)<br>    |
| 318|[0x80004704]<br>0x66666BBB|- rs1_val==1717986919 and imm_val==1364<br>                                                                    |[0x80001338]:addi a1, a0, 1364<br> [0x8000133c]:sw a1, 1184(ra)<br> |
| 319|[0x80004708]<br>0x66666667|- rs1_val==1717986919 and imm_val==0<br>                                                                       |[0x80001348]:addi a1, a0, 0<br> [0x8000134c]:sw a1, 1188(ra)<br>    |
| 320|[0x8000470c]<br>0x6666666B|- rs1_val==1717986919 and imm_val==4<br>                                                                       |[0x80001358]:addi a1, a0, 4<br> [0x8000135c]:sw a1, 1192(ra)<br>    |
| 321|[0x80004710]<br>0x66666999|- rs1_val==1717986919 and imm_val==818<br>                                                                     |[0x80001368]:addi a1, a0, 818<br> [0x8000136c]:sw a1, 1196(ra)<br>  |
| 322|[0x80004714]<br>0x66666CCC|- rs1_val==1717986919 and imm_val==1637<br>                                                                    |[0x80001378]:addi a1, a0, 1637<br> [0x8000137c]:sw a1, 1200(ra)<br> |
| 323|[0x80004718]<br>0x66666693|- rs1_val==1717986919 and imm_val==44<br>                                                                      |[0x80001388]:addi a1, a0, 44<br> [0x8000138c]:sw a1, 1204(ra)<br>   |
| 324|[0x8000471c]<br>0x66666BBD|- rs1_val==1717986919 and imm_val==1366<br>                                                                    |[0x80001398]:addi a1, a0, 1366<br> [0x8000139c]:sw a1, 1208(ra)<br> |
| 325|[0x80004720]<br>0x66666112|- rs1_val==1717986919 and imm_val==-1365<br>                                                                   |[0x800013a8]:addi a1, a0, 2731<br> [0x800013ac]:sw a1, 1212(ra)<br> |
| 326|[0x80004724]<br>0x6666666D|- rs1_val==1717986919 and imm_val==6<br>                                                                       |[0x800013b8]:addi a1, a0, 6<br> [0x800013bc]:sw a1, 1216(ra)<br>    |
| 327|[0x80004728]<br>0x6666699B|- rs1_val==1717986919 and imm_val==820<br>                                                                     |[0x800013c8]:addi a1, a0, 820<br> [0x800013cc]:sw a1, 1220(ra)<br>  |
| 328|[0x8000472c]<br>0x66666CCE|- rs1_val==1717986919 and imm_val==1639<br>                                                                    |[0x800013d8]:addi a1, a0, 1639<br> [0x800013dc]:sw a1, 1224(ra)<br> |
| 329|[0x80004730]<br>0x6666663B|- rs1_val==1717986919 and imm_val==-44<br>                                                                     |[0x800013e8]:addi a1, a0, 4052<br> [0x800013ec]:sw a1, 1228(ra)<br> |
| 330|[0x80004734]<br>0x66666695|- rs1_val==1717986919 and imm_val==46<br>                                                                      |[0x800013f8]:addi a1, a0, 46<br> [0x800013fc]:sw a1, 1232(ra)<br>   |
| 331|[0x80004738]<br>0xFFFF4B00|- rs1_val==-46339 and imm_val==3<br>                                                                           |[0x80001408]:addi a1, a0, 3<br> [0x8000140c]:sw a1, 1236(ra)<br>    |
| 332|[0x8000473c]<br>0xFFFF45A7|- rs1_val==-46339 and imm_val==-1366<br>                                                                       |[0x80001418]:addi a1, a0, 2730<br> [0x8000141c]:sw a1, 1240(ra)<br> |
| 333|[0x80004740]<br>0xFFFF4B02|- rs1_val==-46339 and imm_val==5<br>                                                                           |[0x80001428]:addi a1, a0, 5<br> [0x8000142c]:sw a1, 1244(ra)<br>    |
| 334|[0x80004744]<br>0xFFFF4E30|- rs1_val==-46339 and imm_val==819<br>                                                                         |[0x80001438]:addi a1, a0, 819<br> [0x8000143c]:sw a1, 1248(ra)<br>  |
| 335|[0x80004748]<br>0xFFFF5163|- rs1_val==-46339 and imm_val==1638<br>                                                                        |[0x80001448]:addi a1, a0, 1638<br> [0x8000144c]:sw a1, 1252(ra)<br> |
| 336|[0x8000474c]<br>0xFFFF4AD0|- rs1_val==-46339 and imm_val==-45<br>                                                                         |[0x80001458]:addi a1, a0, 4051<br> [0x8000145c]:sw a1, 1256(ra)<br> |
| 337|[0x80004750]<br>0xFFFF4B2A|- rs1_val==-46339 and imm_val==45<br>                                                                          |[0x80001468]:addi a1, a0, 45<br> [0x8000146c]:sw a1, 1260(ra)<br>   |
| 338|[0x80004754]<br>0xFFFF4AFF|- rs1_val==-46339 and imm_val==2<br>                                                                           |[0x80001478]:addi a1, a0, 2<br> [0x8000147c]:sw a1, 1264(ra)<br>    |
| 339|[0x80004758]<br>0xFFFF5051|- rs1_val==-46339 and imm_val==1364<br>                                                                        |[0x80001488]:addi a1, a0, 1364<br> [0x8000148c]:sw a1, 1268(ra)<br> |
| 340|[0x8000475c]<br>0xFFFF4AFD|- rs1_val==-46339 and imm_val==0<br>                                                                           |[0x80001498]:addi a1, a0, 0<br> [0x8000149c]:sw a1, 1272(ra)<br>    |
| 341|[0x80004760]<br>0xFFFF4B01|- rs1_val==-46339 and imm_val==4<br>                                                                           |[0x800014a8]:addi a1, a0, 4<br> [0x800014ac]:sw a1, 1276(ra)<br>    |
| 342|[0x80004764]<br>0xFFFF4E2F|- rs1_val==-46339 and imm_val==818<br>                                                                         |[0x800014b8]:addi a1, a0, 818<br> [0x800014bc]:sw a1, 1280(ra)<br>  |
| 343|[0x80004768]<br>0xFFFF5162|- rs1_val==-46339 and imm_val==1637<br>                                                                        |[0x800014c8]:addi a1, a0, 1637<br> [0x800014cc]:sw a1, 1284(ra)<br> |
| 344|[0x8000476c]<br>0xFFFF4B29|- rs1_val==-46339 and imm_val==44<br>                                                                          |[0x800014d8]:addi a1, a0, 44<br> [0x800014dc]:sw a1, 1288(ra)<br>   |
| 345|[0x80004770]<br>0xFFFF5053|- rs1_val==-46339 and imm_val==1366<br>                                                                        |[0x800014e8]:addi a1, a0, 1366<br> [0x800014ec]:sw a1, 1292(ra)<br> |
| 346|[0x80004774]<br>0xFFFF45A8|- rs1_val==-46339 and imm_val==-1365<br>                                                                       |[0x800014f8]:addi a1, a0, 2731<br> [0x800014fc]:sw a1, 1296(ra)<br> |
| 347|[0x80004778]<br>0xFFFF4B03|- rs1_val==-46339 and imm_val==6<br>                                                                           |[0x80001508]:addi a1, a0, 6<br> [0x8000150c]:sw a1, 1300(ra)<br>    |
| 348|[0x8000477c]<br>0xFFFF4E31|- rs1_val==-46339 and imm_val==820<br>                                                                         |[0x80001518]:addi a1, a0, 820<br> [0x8000151c]:sw a1, 1304(ra)<br>  |
| 349|[0x80004780]<br>0xFFFF5164|- rs1_val==-46339 and imm_val==1639<br>                                                                        |[0x80001528]:addi a1, a0, 1639<br> [0x8000152c]:sw a1, 1308(ra)<br> |
| 350|[0x80004784]<br>0xFFFF4AD1|- rs1_val==-46339 and imm_val==-44<br>                                                                         |[0x80001538]:addi a1, a0, 4052<br> [0x8000153c]:sw a1, 1312(ra)<br> |
| 351|[0x80004788]<br>0xFFFF4B2B|- rs1_val==-46339 and imm_val==46<br>                                                                          |[0x80001548]:addi a1, a0, 46<br> [0x8000154c]:sw a1, 1316(ra)<br>   |
| 352|[0x8000478c]<br>0x0000B508|- rs1_val==46341 and imm_val==3<br>                                                                            |[0x80001558]:addi a1, a0, 3<br> [0x8000155c]:sw a1, 1320(ra)<br>    |
| 353|[0x80004790]<br>0x0000BA5A|- rs1_val==46341 and imm_val==1365<br>                                                                         |[0x80001568]:addi a1, a0, 1365<br> [0x8000156c]:sw a1, 1324(ra)<br> |
| 354|[0x80004794]<br>0x0000AFAF|- rs1_val==46341 and imm_val==-1366<br>                                                                        |[0x80001578]:addi a1, a0, 2730<br> [0x8000157c]:sw a1, 1328(ra)<br> |
| 355|[0x80004798]<br>0x0000B50A|- rs1_val==46341 and imm_val==5<br>                                                                            |[0x80001588]:addi a1, a0, 5<br> [0x8000158c]:sw a1, 1332(ra)<br>    |
| 356|[0x8000479c]<br>0x0000B838|- rs1_val==46341 and imm_val==819<br>                                                                          |[0x80001598]:addi a1, a0, 819<br> [0x8000159c]:sw a1, 1336(ra)<br>  |
| 357|[0x800047a0]<br>0x0000BB6B|- rs1_val==46341 and imm_val==1638<br>                                                                         |[0x800015a8]:addi a1, a0, 1638<br> [0x800015ac]:sw a1, 1340(ra)<br> |
| 358|[0x800047a4]<br>0x0000B4D8|- rs1_val==46341 and imm_val==-45<br>                                                                          |[0x800015b8]:addi a1, a0, 4051<br> [0x800015bc]:sw a1, 1344(ra)<br> |
| 359|[0x800047a8]<br>0x0000B532|- rs1_val==46341 and imm_val==45<br>                                                                           |[0x800015c8]:addi a1, a0, 45<br> [0x800015cc]:sw a1, 1348(ra)<br>   |
| 360|[0x800047ac]<br>0x0000B507|- rs1_val==46341 and imm_val==2<br>                                                                            |[0x800015d8]:addi a1, a0, 2<br> [0x800015dc]:sw a1, 1352(ra)<br>    |
| 361|[0x800047b0]<br>0x0000BA59|- rs1_val==46341 and imm_val==1364<br>                                                                         |[0x800015e8]:addi a1, a0, 1364<br> [0x800015ec]:sw a1, 1356(ra)<br> |
| 362|[0x800047b4]<br>0x0000B505|- rs1_val==46341 and imm_val==0<br>                                                                            |[0x800015f8]:addi a1, a0, 0<br> [0x800015fc]:sw a1, 1360(ra)<br>    |
| 363|[0x800047b8]<br>0x0000B509|- rs1_val==46341 and imm_val==4<br>                                                                            |[0x80001608]:addi a1, a0, 4<br> [0x8000160c]:sw a1, 1364(ra)<br>    |
| 364|[0x800047bc]<br>0x0000B837|- rs1_val==46341 and imm_val==818<br>                                                                          |[0x80001618]:addi a1, a0, 818<br> [0x8000161c]:sw a1, 1368(ra)<br>  |
| 365|[0x800047c0]<br>0x0000BB6A|- rs1_val==46341 and imm_val==1637<br>                                                                         |[0x80001628]:addi a1, a0, 1637<br> [0x8000162c]:sw a1, 1372(ra)<br> |
| 366|[0x800047c4]<br>0x0000B531|- rs1_val==46341 and imm_val==44<br>                                                                           |[0x80001638]:addi a1, a0, 44<br> [0x8000163c]:sw a1, 1376(ra)<br>   |
| 367|[0x800047c8]<br>0x0000BA5B|- rs1_val==46341 and imm_val==1366<br>                                                                         |[0x80001648]:addi a1, a0, 1366<br> [0x8000164c]:sw a1, 1380(ra)<br> |
| 368|[0x800047cc]<br>0x0000AFB0|- rs1_val==46341 and imm_val==-1365<br>                                                                        |[0x80001658]:addi a1, a0, 2731<br> [0x8000165c]:sw a1, 1384(ra)<br> |
| 369|[0x800047d0]<br>0x0000B50B|- rs1_val==46341 and imm_val==6<br>                                                                            |[0x80001668]:addi a1, a0, 6<br> [0x8000166c]:sw a1, 1388(ra)<br>    |
| 370|[0x800047d4]<br>0x0000B839|- rs1_val==46341 and imm_val==820<br>                                                                          |[0x80001678]:addi a1, a0, 820<br> [0x8000167c]:sw a1, 1392(ra)<br>  |
| 371|[0x800047d8]<br>0x0000BB6C|- rs1_val==46341 and imm_val==1639<br>                                                                         |[0x80001688]:addi a1, a0, 1639<br> [0x8000168c]:sw a1, 1396(ra)<br> |
| 372|[0x800047dc]<br>0x0000B4D9|- rs1_val==46341 and imm_val==-44<br>                                                                          |[0x80001698]:addi a1, a0, 4052<br> [0x8000169c]:sw a1, 1400(ra)<br> |
| 373|[0x800047e0]<br>0x0000B533|- rs1_val==46341 and imm_val==46<br>                                                                           |[0x800016a8]:addi a1, a0, 46<br> [0x800016ac]:sw a1, 1404(ra)<br>   |
| 374|[0x800047e4]<br>0x0000002D|- rs1_val==0 and imm_val==45<br>                                                                               |[0x800016b4]:addi a1, a0, 45<br> [0x800016b8]:sw a1, 1408(ra)<br>   |
| 375|[0x800047ec]<br>0x00000554|- rs1_val==0 and imm_val==1364<br>                                                                             |[0x800016cc]:addi a1, a0, 1364<br> [0x800016d0]:sw a1, 1416(ra)<br> |
| 376|[0x800047f8]<br>0x00000332|- rs1_val==0 and imm_val==818<br>                                                                              |[0x800016f0]:addi a1, a0, 818<br> [0x800016f4]:sw a1, 1428(ra)<br>  |
| 377|[0x800047fc]<br>0x00000665|- rs1_val==0 and imm_val==1637<br>                                                                             |[0x800016fc]:addi a1, a0, 1637<br> [0x80001700]:sw a1, 1432(ra)<br> |
| 378|[0x80004800]<br>0x0000002C|- rs1_val==0 and imm_val==44<br>                                                                               |[0x80001708]:addi a1, a0, 44<br> [0x8000170c]:sw a1, 1436(ra)<br>   |
| 379|[0x80004804]<br>0x00000556|- rs1_val==0 and imm_val==1366<br>                                                                             |[0x80001714]:addi a1, a0, 1366<br> [0x80001718]:sw a1, 1440(ra)<br> |
| 380|[0x80004808]<br>0xFFFFFAAB|- rs1_val==0 and imm_val==-1365<br>                                                                            |[0x80001720]:addi a1, a0, 2731<br> [0x80001724]:sw a1, 1444(ra)<br> |
| 381|[0x80004810]<br>0x00000334|- rs1_val==0 and imm_val==820<br>                                                                              |[0x80001738]:addi a1, a0, 820<br> [0x8000173c]:sw a1, 1452(ra)<br>  |
| 382|[0x80004814]<br>0x00000667|- rs1_val==0 and imm_val==1639<br>                                                                             |[0x80001744]:addi a1, a0, 1639<br> [0x80001748]:sw a1, 1456(ra)<br> |
| 383|[0x80004818]<br>0xFFFFFFD4|- rs1_val==0 and imm_val==-44<br>                                                                              |[0x80001750]:addi a1, a0, 4052<br> [0x80001754]:sw a1, 1460(ra)<br> |
| 384|[0x8000481c]<br>0x0000002E|- rs1_val==0 and imm_val==46<br>                                                                               |[0x8000175c]:addi a1, a0, 46<br> [0x80001760]:sw a1, 1464(ra)<br>   |
| 385|[0x80004820]<br>0x00000007|- rs1_val==4 and imm_val==3<br>                                                                                |[0x80001768]:addi a1, a0, 3<br> [0x8000176c]:sw a1, 1468(ra)<br>    |
| 386|[0x80004824]<br>0x00000559|- rs1_val==4 and imm_val==1365<br>                                                                             |[0x80001774]:addi a1, a0, 1365<br> [0x80001778]:sw a1, 1472(ra)<br> |
| 387|[0x80004828]<br>0xFFFFFAAE|- rs1_val==4 and imm_val==-1366<br>                                                                            |[0x80001780]:addi a1, a0, 2730<br> [0x80001784]:sw a1, 1476(ra)<br> |
| 388|[0x8000482c]<br>0x00000009|- rs1_val==4 and imm_val==5<br>                                                                                |[0x8000178c]:addi a1, a0, 5<br> [0x80001790]:sw a1, 1480(ra)<br>    |
| 389|[0x80004830]<br>0x00000337|- rs1_val==4 and imm_val==819<br>                                                                              |[0x80001798]:addi a1, a0, 819<br> [0x8000179c]:sw a1, 1484(ra)<br>  |
| 390|[0x80004834]<br>0x0000066A|- rs1_val==4 and imm_val==1638<br>                                                                             |[0x800017a4]:addi a1, a0, 1638<br> [0x800017a8]:sw a1, 1488(ra)<br> |
| 391|[0x80004838]<br>0xFFFFFFD7|- rs1_val==4 and imm_val==-45<br>                                                                              |[0x800017b0]:addi a1, a0, 4051<br> [0x800017b4]:sw a1, 1492(ra)<br> |
| 392|[0x8000483c]<br>0x00000031|- rs1_val==4 and imm_val==45<br>                                                                               |[0x800017bc]:addi a1, a0, 45<br> [0x800017c0]:sw a1, 1496(ra)<br>   |
| 393|[0x80004840]<br>0x00000006|- rs1_val==4 and imm_val==2<br>                                                                                |[0x800017c8]:addi a1, a0, 2<br> [0x800017cc]:sw a1, 1500(ra)<br>    |
| 394|[0x80004844]<br>0x00000558|- rs1_val==4 and imm_val==1364<br>                                                                             |[0x800017d4]:addi a1, a0, 1364<br> [0x800017d8]:sw a1, 1504(ra)<br> |
| 395|[0x80004848]<br>0x00000004|- rs1_val==4 and imm_val==0<br>                                                                                |[0x800017e0]:addi a1, a0, 0<br> [0x800017e4]:sw a1, 1508(ra)<br>    |
| 396|[0x8000484c]<br>0x00000008|- rs1_val==4 and imm_val==4<br>                                                                                |[0x800017ec]:addi a1, a0, 4<br> [0x800017f0]:sw a1, 1512(ra)<br>    |
| 397|[0x80004850]<br>0x00000336|- rs1_val==4 and imm_val==818<br>                                                                              |[0x800017f8]:addi a1, a0, 818<br> [0x800017fc]:sw a1, 1516(ra)<br>  |
| 398|[0x80004854]<br>0x00000669|- rs1_val==4 and imm_val==1637<br>                                                                             |[0x80001804]:addi a1, a0, 1637<br> [0x80001808]:sw a1, 1520(ra)<br> |
| 399|[0x80004858]<br>0x00000030|- rs1_val==4 and imm_val==44<br>                                                                               |[0x80001810]:addi a1, a0, 44<br> [0x80001814]:sw a1, 1524(ra)<br>   |
| 400|[0x8000485c]<br>0x0000055A|- rs1_val==4 and imm_val==1366<br>                                                                             |[0x8000181c]:addi a1, a0, 1366<br> [0x80001820]:sw a1, 1528(ra)<br> |
| 401|[0x80004860]<br>0xFFFFFAAF|- rs1_val==4 and imm_val==-1365<br>                                                                            |[0x80001828]:addi a1, a0, 2731<br> [0x8000182c]:sw a1, 1532(ra)<br> |
| 402|[0x80004864]<br>0x0000000A|- rs1_val==4 and imm_val==6<br>                                                                                |[0x80001834]:addi a1, a0, 6<br> [0x80001838]:sw a1, 1536(ra)<br>    |
| 403|[0x80004868]<br>0x00000338|- rs1_val==4 and imm_val==820<br>                                                                              |[0x80001840]:addi a1, a0, 820<br> [0x80001844]:sw a1, 1540(ra)<br>  |
| 404|[0x8000486c]<br>0x0000066B|- rs1_val==4 and imm_val==1639<br>                                                                             |[0x8000184c]:addi a1, a0, 1639<br> [0x80001850]:sw a1, 1544(ra)<br> |
| 405|[0x80004870]<br>0xFFFFFFD8|- rs1_val==4 and imm_val==-44<br>                                                                              |[0x80001858]:addi a1, a0, 4052<br> [0x8000185c]:sw a1, 1548(ra)<br> |
| 406|[0x80004874]<br>0x00000032|- rs1_val==4 and imm_val==46<br>                                                                               |[0x80001864]:addi a1, a0, 46<br> [0x80001868]:sw a1, 1552(ra)<br>   |
| 407|[0x80004878]<br>0x33333335|- rs1_val==858993458 and imm_val==3<br>                                                                        |[0x80001874]:addi a1, a0, 3<br> [0x80001878]:sw a1, 1556(ra)<br>    |
| 408|[0x8000487c]<br>0x33333887|- rs1_val==858993458 and imm_val==1365<br>                                                                     |[0x80001884]:addi a1, a0, 1365<br> [0x80001888]:sw a1, 1560(ra)<br> |
| 409|[0x80004880]<br>0x33332DDC|- rs1_val==858993458 and imm_val==-1366<br>                                                                    |[0x80001894]:addi a1, a0, 2730<br> [0x80001898]:sw a1, 1564(ra)<br> |
| 410|[0x80004884]<br>0x33333337|- rs1_val==858993458 and imm_val==5<br>                                                                        |[0x800018a4]:addi a1, a0, 5<br> [0x800018a8]:sw a1, 1568(ra)<br>    |
| 411|[0x80004888]<br>0x33333665|- rs1_val==858993458 and imm_val==819<br>                                                                      |[0x800018b4]:addi a1, a0, 819<br> [0x800018b8]:sw a1, 1572(ra)<br>  |
| 412|[0x8000488c]<br>0x33333998|- rs1_val==858993458 and imm_val==1638<br>                                                                     |[0x800018c4]:addi a1, a0, 1638<br> [0x800018c8]:sw a1, 1576(ra)<br> |
| 413|[0x80004890]<br>0x33333305|- rs1_val==858993458 and imm_val==-45<br>                                                                      |[0x800018d4]:addi a1, a0, 4051<br> [0x800018d8]:sw a1, 1580(ra)<br> |
| 414|[0x80004894]<br>0x3333335F|- rs1_val==858993458 and imm_val==45<br>                                                                       |[0x800018e4]:addi a1, a0, 45<br> [0x800018e8]:sw a1, 1584(ra)<br>   |
| 415|[0x80004898]<br>0x33333334|- rs1_val==858993458 and imm_val==2<br>                                                                        |[0x800018f4]:addi a1, a0, 2<br> [0x800018f8]:sw a1, 1588(ra)<br>    |
| 416|[0x8000489c]<br>0x33333886|- rs1_val==858993458 and imm_val==1364<br>                                                                     |[0x80001904]:addi a1, a0, 1364<br> [0x80001908]:sw a1, 1592(ra)<br> |
| 417|[0x800048a0]<br>0x33333332|- rs1_val==858993458 and imm_val==0<br>                                                                        |[0x80001914]:addi a1, a0, 0<br> [0x80001918]:sw a1, 1596(ra)<br>    |
| 418|[0x800048a4]<br>0x33333336|- rs1_val==858993458 and imm_val==4<br>                                                                        |[0x80001924]:addi a1, a0, 4<br> [0x80001928]:sw a1, 1600(ra)<br>    |
| 419|[0x800048a8]<br>0x33333664|- rs1_val==858993458 and imm_val==818<br>                                                                      |[0x80001934]:addi a1, a0, 818<br> [0x80001938]:sw a1, 1604(ra)<br>  |
| 420|[0x800048ac]<br>0x33333997|- rs1_val==858993458 and imm_val==1637<br>                                                                     |[0x80001944]:addi a1, a0, 1637<br> [0x80001948]:sw a1, 1608(ra)<br> |
| 421|[0x800048b0]<br>0x3333335E|- rs1_val==858993458 and imm_val==44<br>                                                                       |[0x80001954]:addi a1, a0, 44<br> [0x80001958]:sw a1, 1612(ra)<br>   |
| 422|[0x800048b4]<br>0x33333888|- rs1_val==858993458 and imm_val==1366<br>                                                                     |[0x80001964]:addi a1, a0, 1366<br> [0x80001968]:sw a1, 1616(ra)<br> |
| 423|[0x800048b8]<br>0x33332DDD|- rs1_val==858993458 and imm_val==-1365<br>                                                                    |[0x80001974]:addi a1, a0, 2731<br> [0x80001978]:sw a1, 1620(ra)<br> |
| 424|[0x800048bc]<br>0x33333338|- rs1_val==858993458 and imm_val==6<br>                                                                        |[0x80001984]:addi a1, a0, 6<br> [0x80001988]:sw a1, 1624(ra)<br>    |
| 425|[0x800048c0]<br>0x33333666|- rs1_val==858993458 and imm_val==820<br>                                                                      |[0x80001994]:addi a1, a0, 820<br> [0x80001998]:sw a1, 1628(ra)<br>  |
| 426|[0x800048c4]<br>0x33333999|- rs1_val==858993458 and imm_val==1639<br>                                                                     |[0x800019a4]:addi a1, a0, 1639<br> [0x800019a8]:sw a1, 1632(ra)<br> |
| 427|[0x800048c8]<br>0x33333306|- rs1_val==858993458 and imm_val==-44<br>                                                                      |[0x800019b4]:addi a1, a0, 4052<br> [0x800019b8]:sw a1, 1636(ra)<br> |
| 428|[0x800048cc]<br>0x33333360|- rs1_val==858993458 and imm_val==46<br>                                                                       |[0x800019c4]:addi a1, a0, 46<br> [0x800019c8]:sw a1, 1640(ra)<br>   |
| 429|[0x800048d0]<br>0x66666668|- rs1_val==1717986917 and imm_val==3<br>                                                                       |[0x800019d4]:addi a1, a0, 3<br> [0x800019d8]:sw a1, 1644(ra)<br>    |
| 430|[0x800048d4]<br>0x66666BBA|- rs1_val==1717986917 and imm_val==1365<br>                                                                    |[0x800019e4]:addi a1, a0, 1365<br> [0x800019e8]:sw a1, 1648(ra)<br> |
| 431|[0x800048d8]<br>0x6666610F|- rs1_val==1717986917 and imm_val==-1366<br>                                                                   |[0x800019f4]:addi a1, a0, 2730<br> [0x800019f8]:sw a1, 1652(ra)<br> |
| 432|[0x800048dc]<br>0x6666666A|- rs1_val==1717986917 and imm_val==5<br>                                                                       |[0x80001a04]:addi a1, a0, 5<br> [0x80001a08]:sw a1, 1656(ra)<br>    |
| 433|[0x800048e0]<br>0x66666998|- rs1_val==1717986917 and imm_val==819<br>                                                                     |[0x80001a14]:addi a1, a0, 819<br> [0x80001a18]:sw a1, 1660(ra)<br>  |
| 434|[0x800048e4]<br>0x66666CCB|- rs1_val==1717986917 and imm_val==1638<br>                                                                    |[0x80001a24]:addi a1, a0, 1638<br> [0x80001a28]:sw a1, 1664(ra)<br> |
| 435|[0x800048e8]<br>0x66666638|- rs1_val==1717986917 and imm_val==-45<br>                                                                     |[0x80001a34]:addi a1, a0, 4051<br> [0x80001a38]:sw a1, 1668(ra)<br> |
| 436|[0x800048ec]<br>0x66666692|- rs1_val==1717986917 and imm_val==45<br>                                                                      |[0x80001a44]:addi a1, a0, 45<br> [0x80001a48]:sw a1, 1672(ra)<br>   |
| 437|[0x800048f0]<br>0x66666667|- rs1_val==1717986917 and imm_val==2<br>                                                                       |[0x80001a54]:addi a1, a0, 2<br> [0x80001a58]:sw a1, 1676(ra)<br>    |
| 438|[0x800048f4]<br>0x66666BB9|- rs1_val==1717986917 and imm_val==1364<br>                                                                    |[0x80001a64]:addi a1, a0, 1364<br> [0x80001a68]:sw a1, 1680(ra)<br> |
| 439|[0x800048f8]<br>0x66666665|- rs1_val==1717986917 and imm_val==0<br>                                                                       |[0x80001a74]:addi a1, a0, 0<br> [0x80001a78]:sw a1, 1684(ra)<br>    |
| 440|[0x800048fc]<br>0x66666669|- rs1_val==1717986917 and imm_val==4<br>                                                                       |[0x80001a84]:addi a1, a0, 4<br> [0x80001a88]:sw a1, 1688(ra)<br>    |
| 441|[0x80004900]<br>0x66666997|- rs1_val==1717986917 and imm_val==818<br>                                                                     |[0x80001a94]:addi a1, a0, 818<br> [0x80001a98]:sw a1, 1692(ra)<br>  |
| 442|[0x80004904]<br>0x66666CCA|- rs1_val==1717986917 and imm_val==1637<br>                                                                    |[0x80001aa4]:addi a1, a0, 1637<br> [0x80001aa8]:sw a1, 1696(ra)<br> |
| 443|[0x80004908]<br>0x66666691|- rs1_val==1717986917 and imm_val==44<br>                                                                      |[0x80001ab4]:addi a1, a0, 44<br> [0x80001ab8]:sw a1, 1700(ra)<br>   |
| 444|[0x8000490c]<br>0x66666BBB|- rs1_val==1717986917 and imm_val==1366<br>                                                                    |[0x80001ac4]:addi a1, a0, 1366<br> [0x80001ac8]:sw a1, 1704(ra)<br> |
| 445|[0x80004910]<br>0x66666110|- rs1_val==1717986917 and imm_val==-1365<br>                                                                   |[0x80001ad4]:addi a1, a0, 2731<br> [0x80001ad8]:sw a1, 1708(ra)<br> |
| 446|[0x80004914]<br>0x6666666B|- rs1_val==1717986917 and imm_val==6<br>                                                                       |[0x80001ae4]:addi a1, a0, 6<br> [0x80001ae8]:sw a1, 1712(ra)<br>    |
| 447|[0x80004918]<br>0x66666999|- rs1_val==1717986917 and imm_val==820<br>                                                                     |[0x80001af4]:addi a1, a0, 820<br> [0x80001af8]:sw a1, 1716(ra)<br>  |
| 448|[0x8000491c]<br>0x66666CCC|- rs1_val==1717986917 and imm_val==1639<br>                                                                    |[0x80001b04]:addi a1, a0, 1639<br> [0x80001b08]:sw a1, 1720(ra)<br> |
| 449|[0x80004920]<br>0x66666639|- rs1_val==1717986917 and imm_val==-44<br>                                                                     |[0x80001b14]:addi a1, a0, 4052<br> [0x80001b18]:sw a1, 1724(ra)<br> |
| 450|[0x80004924]<br>0x66666693|- rs1_val==1717986917 and imm_val==46<br>                                                                      |[0x80001b24]:addi a1, a0, 46<br> [0x80001b28]:sw a1, 1728(ra)<br>   |
| 451|[0x80004928]<br>0x0000B506|- rs1_val==46339 and imm_val==3<br>                                                                            |[0x80001b34]:addi a1, a0, 3<br> [0x80001b38]:sw a1, 1732(ra)<br>    |
| 452|[0x8000492c]<br>0x0000BA58|- rs1_val==46339 and imm_val==1365<br>                                                                         |[0x80001b44]:addi a1, a0, 1365<br> [0x80001b48]:sw a1, 1736(ra)<br> |
| 453|[0x80004930]<br>0x0000AFAD|- rs1_val==46339 and imm_val==-1366<br>                                                                        |[0x80001b54]:addi a1, a0, 2730<br> [0x80001b58]:sw a1, 1740(ra)<br> |
| 454|[0x80004934]<br>0x0000B508|- rs1_val==46339 and imm_val==5<br>                                                                            |[0x80001b64]:addi a1, a0, 5<br> [0x80001b68]:sw a1, 1744(ra)<br>    |
| 455|[0x80004938]<br>0x0000B836|- rs1_val==46339 and imm_val==819<br>                                                                          |[0x80001b74]:addi a1, a0, 819<br> [0x80001b78]:sw a1, 1748(ra)<br>  |
| 456|[0x8000493c]<br>0x0000BB69|- rs1_val==46339 and imm_val==1638<br>                                                                         |[0x80001b84]:addi a1, a0, 1638<br> [0x80001b88]:sw a1, 1752(ra)<br> |
| 457|[0x80004940]<br>0x0000B4D6|- rs1_val==46339 and imm_val==-45<br>                                                                          |[0x80001b94]:addi a1, a0, 4051<br> [0x80001b98]:sw a1, 1756(ra)<br> |
| 458|[0x80004944]<br>0x0000B530|- rs1_val==46339 and imm_val==45<br>                                                                           |[0x80001ba4]:addi a1, a0, 45<br> [0x80001ba8]:sw a1, 1760(ra)<br>   |
| 459|[0x80004948]<br>0x0000B505|- rs1_val==46339 and imm_val==2<br>                                                                            |[0x80001bb4]:addi a1, a0, 2<br> [0x80001bb8]:sw a1, 1764(ra)<br>    |
| 460|[0x8000494c]<br>0x0000BA57|- rs1_val==46339 and imm_val==1364<br>                                                                         |[0x80001bc4]:addi a1, a0, 1364<br> [0x80001bc8]:sw a1, 1768(ra)<br> |
| 461|[0x80004950]<br>0x0000B503|- rs1_val==46339 and imm_val==0<br>                                                                            |[0x80001bd4]:addi a1, a0, 0<br> [0x80001bd8]:sw a1, 1772(ra)<br>    |
| 462|[0x80004954]<br>0x0000B507|- rs1_val==46339 and imm_val==4<br>                                                                            |[0x80001be4]:addi a1, a0, 4<br> [0x80001be8]:sw a1, 1776(ra)<br>    |
| 463|[0x80004958]<br>0x0000B835|- rs1_val==46339 and imm_val==818<br>                                                                          |[0x80001bf4]:addi a1, a0, 818<br> [0x80001bf8]:sw a1, 1780(ra)<br>  |
| 464|[0x8000495c]<br>0x0000BB68|- rs1_val==46339 and imm_val==1637<br>                                                                         |[0x80001c04]:addi a1, a0, 1637<br> [0x80001c08]:sw a1, 1784(ra)<br> |
| 465|[0x80004960]<br>0x0000B52F|- rs1_val==46339 and imm_val==44<br>                                                                           |[0x80001c14]:addi a1, a0, 44<br> [0x80001c18]:sw a1, 1788(ra)<br>   |
| 466|[0x80004964]<br>0x0000BA59|- rs1_val==46339 and imm_val==1366<br>                                                                         |[0x80001c24]:addi a1, a0, 1366<br> [0x80001c28]:sw a1, 1792(ra)<br> |
| 467|[0x80004968]<br>0x0000AFAE|- rs1_val==46339 and imm_val==-1365<br>                                                                        |[0x80001c34]:addi a1, a0, 2731<br> [0x80001c38]:sw a1, 1796(ra)<br> |
| 468|[0x8000496c]<br>0x0000B509|- rs1_val==46339 and imm_val==6<br>                                                                            |[0x80001c44]:addi a1, a0, 6<br> [0x80001c48]:sw a1, 1800(ra)<br>    |
| 469|[0x80004970]<br>0x0000B837|- rs1_val==46339 and imm_val==820<br>                                                                          |[0x80001c54]:addi a1, a0, 820<br> [0x80001c58]:sw a1, 1804(ra)<br>  |
| 470|[0x80004974]<br>0x0000BB6A|- rs1_val==46339 and imm_val==1639<br>                                                                         |[0x80001c64]:addi a1, a0, 1639<br> [0x80001c68]:sw a1, 1808(ra)<br> |
| 471|[0x80004978]<br>0x0000B4D7|- rs1_val==46339 and imm_val==-44<br>                                                                          |[0x80001c74]:addi a1, a0, 4052<br> [0x80001c78]:sw a1, 1812(ra)<br> |
| 472|[0x8000497c]<br>0x0000B531|- rs1_val==46339 and imm_val==46<br>                                                                           |[0x80001c84]:addi a1, a0, 46<br> [0x80001c88]:sw a1, 1816(ra)<br>   |
| 473|[0x80004980]<br>0x55555559|- rs1_val==1431655766 and imm_val==3<br>                                                                       |[0x80001c94]:addi a1, a0, 3<br> [0x80001c98]:sw a1, 1820(ra)<br>    |
| 474|[0x80004984]<br>0x55555AAB|- rs1_val==1431655766 and imm_val==1365<br>                                                                    |[0x80001ca4]:addi a1, a0, 1365<br> [0x80001ca8]:sw a1, 1824(ra)<br> |
| 475|[0x80004988]<br>0x55555000|- rs1_val==1431655766 and imm_val==-1366<br>                                                                   |[0x80001cb4]:addi a1, a0, 2730<br> [0x80001cb8]:sw a1, 1828(ra)<br> |
| 476|[0x8000498c]<br>0x5555555B|- rs1_val==1431655766 and imm_val==5<br>                                                                       |[0x80001cc4]:addi a1, a0, 5<br> [0x80001cc8]:sw a1, 1832(ra)<br>    |
| 477|[0x80004990]<br>0x55555889|- rs1_val==1431655766 and imm_val==819<br>                                                                     |[0x80001cd4]:addi a1, a0, 819<br> [0x80001cd8]:sw a1, 1836(ra)<br>  |
| 478|[0x80004994]<br>0x55555BBC|- rs1_val==1431655766 and imm_val==1638<br>                                                                    |[0x80001ce4]:addi a1, a0, 1638<br> [0x80001ce8]:sw a1, 1840(ra)<br> |
| 479|[0x80004998]<br>0x55555529|- rs1_val==1431655766 and imm_val==-45<br>                                                                     |[0x80001cf4]:addi a1, a0, 4051<br> [0x80001cf8]:sw a1, 1844(ra)<br> |
| 480|[0x8000499c]<br>0x55555583|- rs1_val==1431655766 and imm_val==45<br>                                                                      |[0x80001d04]:addi a1, a0, 45<br> [0x80001d08]:sw a1, 1848(ra)<br>   |
| 481|[0x800049a0]<br>0x55555558|- rs1_val==1431655766 and imm_val==2<br>                                                                       |[0x80001d14]:addi a1, a0, 2<br> [0x80001d18]:sw a1, 1852(ra)<br>    |
| 482|[0x800049a4]<br>0x55555AAA|- rs1_val==1431655766 and imm_val==1364<br>                                                                    |[0x80001d24]:addi a1, a0, 1364<br> [0x80001d28]:sw a1, 1856(ra)<br> |
| 483|[0x800049a8]<br>0x55555556|- rs1_val==1431655766 and imm_val==0<br>                                                                       |[0x80001d34]:addi a1, a0, 0<br> [0x80001d38]:sw a1, 1860(ra)<br>    |
| 484|[0x800049ac]<br>0x5555555A|- rs1_val==1431655766 and imm_val==4<br>                                                                       |[0x80001d44]:addi a1, a0, 4<br> [0x80001d48]:sw a1, 1864(ra)<br>    |
| 485|[0x800049b0]<br>0x55555888|- rs1_val==1431655766 and imm_val==818<br>                                                                     |[0x80001d54]:addi a1, a0, 818<br> [0x80001d58]:sw a1, 1868(ra)<br>  |
| 486|[0x800049b4]<br>0x55555BBB|- rs1_val==1431655766 and imm_val==1637<br>                                                                    |[0x80001d64]:addi a1, a0, 1637<br> [0x80001d68]:sw a1, 1872(ra)<br> |
| 487|[0x800049b8]<br>0x55555582|- rs1_val==1431655766 and imm_val==44<br>                                                                      |[0x80001d74]:addi a1, a0, 44<br> [0x80001d78]:sw a1, 1876(ra)<br>   |
| 488|[0x800049bc]<br>0x55555AAC|- rs1_val==1431655766 and imm_val==1366<br>                                                                    |[0x80001d84]:addi a1, a0, 1366<br> [0x80001d88]:sw a1, 1880(ra)<br> |
| 489|[0x800049c0]<br>0x55555001|- rs1_val==1431655766 and imm_val==-1365<br>                                                                   |[0x80001d94]:addi a1, a0, 2731<br> [0x80001d98]:sw a1, 1884(ra)<br> |
| 490|[0x800049c4]<br>0x5555555C|- rs1_val==1431655766 and imm_val==6<br>                                                                       |[0x80001da4]:addi a1, a0, 6<br> [0x80001da8]:sw a1, 1888(ra)<br>    |
| 491|[0x800049c8]<br>0x5555588A|- rs1_val==1431655766 and imm_val==820<br>                                                                     |[0x80001db4]:addi a1, a0, 820<br> [0x80001db8]:sw a1, 1892(ra)<br>  |
| 492|[0x800049cc]<br>0x55555BBD|- rs1_val==1431655766 and imm_val==1639<br>                                                                    |[0x80001dc4]:addi a1, a0, 1639<br> [0x80001dc8]:sw a1, 1896(ra)<br> |
| 493|[0x800049d0]<br>0x5555552A|- rs1_val==1431655766 and imm_val==-44<br>                                                                     |[0x80001dd4]:addi a1, a0, 4052<br> [0x80001dd8]:sw a1, 1900(ra)<br> |
| 494|[0x800049d4]<br>0x55555584|- rs1_val==1431655766 and imm_val==46<br>                                                                      |[0x80001de4]:addi a1, a0, 46<br> [0x80001de8]:sw a1, 1904(ra)<br>   |
| 495|[0x800049d8]<br>0xAAAAAAAE|- rs1_val==-1431655765 and imm_val==3<br>                                                                      |[0x80001df4]:addi a1, a0, 3<br> [0x80001df8]:sw a1, 1908(ra)<br>    |
| 496|[0x800049dc]<br>0xAAAAB000|- rs1_val==-1431655765 and imm_val==1365<br>                                                                   |[0x80001e04]:addi a1, a0, 1365<br> [0x80001e08]:sw a1, 1912(ra)<br> |
| 497|[0x800049e0]<br>0xAAAAA555|- rs1_val==-1431655765 and imm_val==-1366<br>                                                                  |[0x80001e14]:addi a1, a0, 2730<br> [0x80001e18]:sw a1, 1916(ra)<br> |
| 498|[0x800049e4]<br>0xAAAAAAB0|- rs1_val==-1431655765 and imm_val==5<br>                                                                      |[0x80001e24]:addi a1, a0, 5<br> [0x80001e28]:sw a1, 1920(ra)<br>    |
| 499|[0x800049e8]<br>0xAAAAADDE|- rs1_val==-1431655765 and imm_val==819<br>                                                                    |[0x80001e34]:addi a1, a0, 819<br> [0x80001e38]:sw a1, 1924(ra)<br>  |
| 500|[0x800049ec]<br>0xAAAAB111|- rs1_val==-1431655765 and imm_val==1638<br>                                                                   |[0x80001e44]:addi a1, a0, 1638<br> [0x80001e48]:sw a1, 1928(ra)<br> |
| 501|[0x800049f0]<br>0xAAAAAA7E|- rs1_val==-1431655765 and imm_val==-45<br>                                                                    |[0x80001e54]:addi a1, a0, 4051<br> [0x80001e58]:sw a1, 1932(ra)<br> |
| 502|[0x800049f4]<br>0xAAAAAAD8|- rs1_val==-1431655765 and imm_val==45<br>                                                                     |[0x80001e64]:addi a1, a0, 45<br> [0x80001e68]:sw a1, 1936(ra)<br>   |
| 503|[0x800049f8]<br>0xAAAAAAAD|- rs1_val==-1431655765 and imm_val==2<br>                                                                      |[0x80001e74]:addi a1, a0, 2<br> [0x80001e78]:sw a1, 1940(ra)<br>    |
| 504|[0x800049fc]<br>0xAAAAAFFF|- rs1_val==-1431655765 and imm_val==1364<br>                                                                   |[0x80001e84]:addi a1, a0, 1364<br> [0x80001e88]:sw a1, 1944(ra)<br> |
| 505|[0x80004a00]<br>0xAAAAAAAB|- rs1_val==-1431655765 and imm_val==0<br>                                                                      |[0x80001e94]:addi a1, a0, 0<br> [0x80001e98]:sw a1, 1948(ra)<br>    |
| 506|[0x80004a04]<br>0xAAAAAAAF|- rs1_val==-1431655765 and imm_val==4<br>                                                                      |[0x80001ea4]:addi a1, a0, 4<br> [0x80001ea8]:sw a1, 1952(ra)<br>    |
| 507|[0x80004a08]<br>0xAAAAADDD|- rs1_val==-1431655765 and imm_val==818<br>                                                                    |[0x80001eb4]:addi a1, a0, 818<br> [0x80001eb8]:sw a1, 1956(ra)<br>  |
| 508|[0x80004a0c]<br>0xAAAAB110|- rs1_val==-1431655765 and imm_val==1637<br>                                                                   |[0x80001ec4]:addi a1, a0, 1637<br> [0x80001ec8]:sw a1, 1960(ra)<br> |
| 509|[0x80004a10]<br>0xAAAAAAD7|- rs1_val==-1431655765 and imm_val==44<br>                                                                     |[0x80001ed4]:addi a1, a0, 44<br> [0x80001ed8]:sw a1, 1964(ra)<br>   |
| 510|[0x80004a14]<br>0xAAAAB001|- rs1_val==-1431655765 and imm_val==1366<br>                                                                   |[0x80001ee4]:addi a1, a0, 1366<br> [0x80001ee8]:sw a1, 1968(ra)<br> |
| 511|[0x80004a18]<br>0xAAAAA556|- rs1_val==-1431655765 and imm_val==-1365<br>                                                                  |[0x80001ef4]:addi a1, a0, 2731<br> [0x80001ef8]:sw a1, 1972(ra)<br> |
| 512|[0x80004a1c]<br>0xAAAAAAB1|- rs1_val==-1431655765 and imm_val==6<br>                                                                      |[0x80001f04]:addi a1, a0, 6<br> [0x80001f08]:sw a1, 1976(ra)<br>    |
| 513|[0x80004a20]<br>0xAAAAADDF|- rs1_val==-1431655765 and imm_val==820<br>                                                                    |[0x80001f14]:addi a1, a0, 820<br> [0x80001f18]:sw a1, 1980(ra)<br>  |
| 514|[0x80004a24]<br>0xAAAAB112|- rs1_val==-1431655765 and imm_val==1639<br>                                                                   |[0x80001f24]:addi a1, a0, 1639<br> [0x80001f28]:sw a1, 1984(ra)<br> |
| 515|[0x80004a28]<br>0xAAAAAA7F|- rs1_val==-1431655765 and imm_val==-44<br>                                                                    |[0x80001f34]:addi a1, a0, 4052<br> [0x80001f38]:sw a1, 1988(ra)<br> |
| 516|[0x80004a2c]<br>0xAAAAAAD9|- rs1_val==-1431655765 and imm_val==46<br>                                                                     |[0x80001f44]:addi a1, a0, 46<br> [0x80001f48]:sw a1, 1992(ra)<br>   |
| 517|[0x80004a30]<br>0x00000009|- rs1_val==6 and imm_val==3<br>                                                                                |[0x80001f50]:addi a1, a0, 3<br> [0x80001f54]:sw a1, 1996(ra)<br>    |
| 518|[0x80004a34]<br>0x0000055B|- rs1_val==6 and imm_val==1365<br>                                                                             |[0x80001f5c]:addi a1, a0, 1365<br> [0x80001f60]:sw a1, 2000(ra)<br> |
| 519|[0x80004a38]<br>0xFFFFFAB0|- rs1_val==6 and imm_val==-1366<br>                                                                            |[0x80001f68]:addi a1, a0, 2730<br> [0x80001f6c]:sw a1, 2004(ra)<br> |
| 520|[0x80004a3c]<br>0x0000000B|- rs1_val==6 and imm_val==5<br>                                                                                |[0x80001f74]:addi a1, a0, 5<br> [0x80001f78]:sw a1, 2008(ra)<br>    |
| 521|[0x80004a40]<br>0x00000339|- rs1_val==6 and imm_val==819<br>                                                                              |[0x80001f80]:addi a1, a0, 819<br> [0x80001f84]:sw a1, 2012(ra)<br>  |
| 522|[0x80004a44]<br>0x0000066C|- rs1_val==6 and imm_val==1638<br>                                                                             |[0x80001f8c]:addi a1, a0, 1638<br> [0x80001f90]:sw a1, 2016(ra)<br> |
| 523|[0x80004a48]<br>0xFFFFFFD9|- rs1_val==6 and imm_val==-45<br>                                                                              |[0x80001f98]:addi a1, a0, 4051<br> [0x80001f9c]:sw a1, 2020(ra)<br> |
| 524|[0x80004a4c]<br>0x00000033|- rs1_val==6 and imm_val==45<br>                                                                               |[0x80001fa4]:addi a1, a0, 45<br> [0x80001fa8]:sw a1, 2024(ra)<br>   |
| 525|[0x80004a50]<br>0x00000008|- rs1_val==6 and imm_val==2<br>                                                                                |[0x80001fb0]:addi a1, a0, 2<br> [0x80001fb4]:sw a1, 2028(ra)<br>    |
| 526|[0x80004a54]<br>0x0000055A|- rs1_val==6 and imm_val==1364<br>                                                                             |[0x80001fbc]:addi a1, a0, 1364<br> [0x80001fc0]:sw a1, 2032(ra)<br> |
| 527|[0x80004a58]<br>0x00000006|- rs1_val==6 and imm_val==0<br>                                                                                |[0x80001fc8]:addi a1, a0, 0<br> [0x80001fcc]:sw a1, 2036(ra)<br>    |
| 528|[0x80004a5c]<br>0x0000000A|- rs1_val==6 and imm_val==4<br>                                                                                |[0x80001fd4]:addi a1, a0, 4<br> [0x80001fd8]:sw a1, 2040(ra)<br>    |
| 529|[0x80004a60]<br>0x00000338|- rs1_val==6 and imm_val==818<br>                                                                              |[0x80001fe0]:addi a1, a0, 818<br> [0x80001fe4]:sw a1, 2044(ra)<br>  |
| 530|[0x80004a64]<br>0x0000066B|- rs1_val==6 and imm_val==1637<br>                                                                             |[0x80001ff4]:addi a1, a0, 1637<br> [0x80001ff8]:sw a1, 0(ra)<br>    |
| 531|[0x80004a68]<br>0x00000032|- rs1_val==6 and imm_val==44<br>                                                                               |[0x80002000]:addi a1, a0, 44<br> [0x80002004]:sw a1, 4(ra)<br>      |
| 532|[0x80004a6c]<br>0x0000055C|- rs1_val==6 and imm_val==1366<br>                                                                             |[0x8000200c]:addi a1, a0, 1366<br> [0x80002010]:sw a1, 8(ra)<br>    |
| 533|[0x80004a70]<br>0xFFFFFAB1|- rs1_val==6 and imm_val==-1365<br>                                                                            |[0x80002018]:addi a1, a0, 2731<br> [0x8000201c]:sw a1, 12(ra)<br>   |
| 534|[0x80004a74]<br>0x0000000C|- rs1_val==6 and imm_val==6<br>                                                                                |[0x80002024]:addi a1, a0, 6<br> [0x80002028]:sw a1, 16(ra)<br>      |
| 535|[0x80004a78]<br>0x0000033A|- rs1_val==6 and imm_val==820<br>                                                                              |[0x80002030]:addi a1, a0, 820<br> [0x80002034]:sw a1, 20(ra)<br>    |
| 536|[0x80004a7c]<br>0x0000066D|- rs1_val==6 and imm_val==1639<br>                                                                             |[0x8000203c]:addi a1, a0, 1639<br> [0x80002040]:sw a1, 24(ra)<br>   |
| 537|[0x80004a80]<br>0xFFFFFFDA|- rs1_val==6 and imm_val==-44<br>                                                                              |[0x80002048]:addi a1, a0, 4052<br> [0x8000204c]:sw a1, 28(ra)<br>   |
| 538|[0x80004a84]<br>0x00000034|- rs1_val==6 and imm_val==46<br>                                                                               |[0x80002054]:addi a1, a0, 46<br> [0x80002058]:sw a1, 32(ra)<br>     |
| 539|[0x80004a88]<br>0x33333337|- rs1_val==858993460 and imm_val==3<br>                                                                        |[0x80002064]:addi a1, a0, 3<br> [0x80002068]:sw a1, 36(ra)<br>      |
| 540|[0x80004a8c]<br>0x33333889|- rs1_val==858993460 and imm_val==1365<br>                                                                     |[0x80002074]:addi a1, a0, 1365<br> [0x80002078]:sw a1, 40(ra)<br>   |
| 541|[0x80004a90]<br>0x33333339|- rs1_val==858993460 and imm_val==5<br>                                                                        |[0x80002084]:addi a1, a0, 5<br> [0x80002088]:sw a1, 44(ra)<br>      |
| 542|[0x80004a94]<br>0x33333667|- rs1_val==858993460 and imm_val==819<br>                                                                      |[0x80002094]:addi a1, a0, 819<br> [0x80002098]:sw a1, 48(ra)<br>    |
| 543|[0x80004a98]<br>0x3333399A|- rs1_val==858993460 and imm_val==1638<br>                                                                     |[0x800020a4]:addi a1, a0, 1638<br> [0x800020a8]:sw a1, 52(ra)<br>   |
| 544|[0x80004a9c]<br>0x33333307|- rs1_val==858993460 and imm_val==-45<br>                                                                      |[0x800020b4]:addi a1, a0, 4051<br> [0x800020b8]:sw a1, 56(ra)<br>   |
| 545|[0x80004aa0]<br>0x33333361|- rs1_val==858993460 and imm_val==45<br>                                                                       |[0x800020c4]:addi a1, a0, 45<br> [0x800020c8]:sw a1, 60(ra)<br>     |
| 546|[0x80004aa4]<br>0x33333336|- rs1_val==858993460 and imm_val==2<br>                                                                        |[0x800020d4]:addi a1, a0, 2<br> [0x800020d8]:sw a1, 64(ra)<br>      |
| 547|[0x80004aa8]<br>0x33333888|- rs1_val==858993460 and imm_val==1364<br>                                                                     |[0x800020e4]:addi a1, a0, 1364<br> [0x800020e8]:sw a1, 68(ra)<br>   |
| 548|[0x80004aac]<br>0x33333334|- rs1_val==858993460 and imm_val==0<br>                                                                        |[0x800020f4]:addi a1, a0, 0<br> [0x800020f8]:sw a1, 72(ra)<br>      |
| 549|[0x80004ab0]<br>0x33333338|- rs1_val==858993460 and imm_val==4<br>                                                                        |[0x80002104]:addi a1, a0, 4<br> [0x80002108]:sw a1, 76(ra)<br>      |
