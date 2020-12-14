
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 32      |
| TEST_REGION               | [('0x800000f8', '0x80002140')]      |
| SIG_REGION                | [('0x80004010', '0x800048d0', '560 words')]      |
| COV_LABELS                | addi      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/addi-01.S/addi-01.S    |
| Total Number of coverpoints| 655     |
| Total Coverpoints Hit     | 655      |
| Total Signature Updates   | 560      |
| STAT1                     | 555      |
| STAT2                     | 5      |
| STAT3                     | 542     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800002fc]:addi a1, a0, 1365
      [0x80000300]:sw a1, 68(ra)
 -- Signature Address: 0x800040a4 Data: 0x00001555
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val != imm_val
      - rs1_val > 0 and imm_val > 0
      - imm_val == 1365
      - rs1_val == 4096




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800011c0]:addi a1, a0, 3
      [0x800011c4]:sw a1, 1104(ra)
 -- Signature Address: 0x800044b0 Data: 0x00000003
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
      [0x800011e4]:addi a1, a0, 5
      [0x800011e8]:sw a1, 1116(ra)
 -- Signature Address: 0x800044bc Data: 0x00000005
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
      [0x800016ec]:addi a1, a0, 0
      [0x800016f0]:sw a1, 1444(ra)
 -- Signature Address: 0x80004604 Data: 0x00000000
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
      [0x800016f8]:addi a1, a0, 4
      [0x800016fc]:sw a1, 1448(ra)
 -- Signature Address: 0x80004608 Data: 0x00000004
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val == 0
      - rs1_val != imm_val
      - imm_val == 4
      - rs1_val==0 and imm_val==4






```

## Details of STAT3

```
[0x800000fc]:addi t2, t2, 3864

[0x80000100]:addi sp, zero, 0

[0x80000110]:addi ra, ra, 2047

[0x8000011c]:addi s3, zero, 64

[0x8000012c]:addi t6, t6, 4095

[0x80000148]:addi a5, a5, 4095

[0x80000154]:addi zero, zero, 1

[0x80000160]:addi fp, zero, 4089

[0x8000016c]:addi t1, zero, 0

[0x80000184]:addi tp, zero, 8

[0x80000190]:addi s5, zero, 4

[0x800001a0]:addi s9, s9, 4095

[0x800001ac]:addi s10, zero, 4091

[0x800001bc]:addi a7, a7, 1284

[0x800001d8]:addi s4, s4, 4095

[0x800001e8]:addi a0, a0, 2731

[0x80000200]:addi s1, zero, 4089

[0x80000210]:addi ra, ra, 3668
[0x80000214]:lui s7, 917504

[0x80000218]:addi s7, s7, 4095

[0x80000228]:addi t5, t5, 4095

[0x80000234]:addi t2, zero, 4063

[0x80000244]:addi gp, gp, 4095

[0x80000250]:addi t3, zero, 9

[0x80000260]:addi a6, a6, 818

[0x8000026c]:addi a1, zero, 4093

[0x80000278]:addi s8, zero, 7

[0x80000288]:addi a3, a3, 4095

[0x80000294]:addi s11, zero, 2

[0x800002a0]:addi a4, zero, 16

[0x800002ac]:addi s2, zero, 32

[0x800002b8]:addi a0, zero, 128

[0x800002c4]:addi a0, zero, 256

[0x800002d0]:addi a0, zero, 512

[0x800002dc]:addi a0, zero, 1024

[0x800002ec]:addi a0, a0, 2048

[0x800003c4]:addi a0, zero, 4094

[0x800003d0]:addi a0, zero, 4087

[0x800003dc]:addi a0, zero, 4079

[0x800003e8]:addi a0, zero, 4031

[0x800003f4]:addi a0, zero, 3967

[0x80000400]:addi a0, zero, 3839

[0x8000040c]:addi a0, zero, 3583

[0x80000418]:addi a0, zero, 3071

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

[0x80000b28]:addi a0, a0, 819

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

[0x80000c88]:addi a0, a0, 1638

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

[0x80000de8]:addi a0, a0, 2812

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

[0x80000f48]:addi a0, a0, 1284

[0x80000f54]:addi a0, zero, 2

[0x80000f60]:addi a0, zero, 2

[0x80000f6c]:addi a0, zero, 2

[0x80000f78]:addi a0, zero, 2

[0x80000f84]:addi a0, zero, 2

[0x80000f90]:addi a0, zero, 2

[0x80000f9c]:addi a0, zero, 2

[0x80000fa8]:addi a0, zero, 2

[0x80000fb4]:addi a0, zero, 2

[0x80000fc0]:addi a0, zero, 2

[0x80000fcc]:addi a0, zero, 2

[0x80000fd8]:addi a0, zero, 2

[0x80000fe4]:addi a0, zero, 2

[0x80000ff0]:addi a0, zero, 2

[0x80000ffc]:addi a0, zero, 2

[0x80001008]:addi a0, zero, 2

[0x80001014]:addi a0, zero, 2

[0x80001020]:addi a0, zero, 2

[0x8000102c]:addi a0, zero, 2

[0x80001038]:addi a0, zero, 2

[0x80001044]:addi a0, zero, 2

[0x80001050]:addi a0, zero, 2

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

[0x800011b0]:addi a0, a0, 1364

[0x800011bc]:addi a0, zero, 0

[0x800011c8]:addi a0, zero, 0

[0x800011d4]:addi a0, zero, 0

[0x800011e0]:addi a0, zero, 0

[0x800011ec]:addi a0, zero, 0

[0x800011f8]:addi a0, zero, 0

[0x80001204]:addi a0, zero, 0

[0x80001210]:addi a0, zero, 0

[0x80001220]:addi a0, a0, 820

[0x80001230]:addi a0, a0, 820

[0x80001240]:addi a0, a0, 820

[0x80001250]:addi a0, a0, 820

[0x80001260]:addi a0, a0, 820

[0x80001270]:addi a0, a0, 820

[0x80001280]:addi a0, a0, 820

[0x80001290]:addi a0, a0, 820

[0x800012a0]:addi a0, a0, 820

[0x800012b0]:addi a0, a0, 820

[0x800012c0]:addi a0, a0, 1639

[0x800012d0]:addi a0, a0, 1639

[0x800012e0]:addi a0, a0, 1639

[0x800012f0]:addi a0, a0, 1639

[0x80001300]:addi a0, a0, 1639

[0x80001310]:addi a0, a0, 1639

[0x80001320]:addi a0, a0, 1639

[0x80001330]:addi a0, a0, 1639

[0x80001340]:addi a0, a0, 1639

[0x80001350]:addi a0, a0, 1639

[0x80001360]:addi a0, a0, 1639

[0x80001370]:addi a0, a0, 1639

[0x80001380]:addi a0, a0, 1639

[0x80001390]:addi a0, a0, 1639

[0x800013a0]:addi a0, a0, 1639

[0x800013b0]:addi a0, a0, 1639

[0x800013c0]:addi a0, a0, 1639

[0x800013d0]:addi a0, a0, 1639

[0x800013e0]:addi a0, a0, 1639

[0x800013f0]:addi a0, a0, 1639

[0x80001400]:addi a0, a0, 1639

[0x80001410]:addi a0, a0, 1639

[0x80001420]:addi a0, a0, 2813

[0x80001430]:addi a0, a0, 2813

[0x80001440]:addi a0, a0, 2813

[0x80001450]:addi a0, a0, 2813

[0x80001460]:addi a0, a0, 2813

[0x80001470]:addi a0, a0, 2813

[0x80001480]:addi a0, a0, 2813

[0x80001490]:addi a0, a0, 2813

[0x800014a0]:addi a0, a0, 2813

[0x800014b0]:addi a0, a0, 2813

[0x800014c0]:addi a0, a0, 2813

[0x800014d0]:addi a0, a0, 2813

[0x800014e0]:addi a0, a0, 2813

[0x800014f0]:addi a0, a0, 2813

[0x80001500]:addi a0, a0, 2813

[0x80001510]:addi a0, a0, 2813

[0x80001520]:addi a0, a0, 2813

[0x80001530]:addi a0, a0, 2813

[0x80001540]:addi a0, a0, 2813

[0x80001550]:addi a0, a0, 2813

[0x80001560]:addi a0, a0, 2813

[0x80001570]:addi a0, a0, 2813

[0x80001580]:addi a0, a0, 1285

[0x80001590]:addi a0, a0, 1285

[0x800015a0]:addi a0, a0, 1285

[0x800015b0]:addi a0, a0, 1285

[0x800015c0]:addi a0, a0, 1285

[0x800015d0]:addi a0, a0, 1285

[0x800015e0]:addi a0, a0, 1285

[0x800015f0]:addi a0, a0, 1285

[0x80001600]:addi a0, a0, 1285

[0x80001610]:addi a0, a0, 1285

[0x80001620]:addi a0, a0, 1285

[0x80001630]:addi a0, a0, 1285

[0x80001640]:addi a0, a0, 1285

[0x80001650]:addi a0, a0, 1285

[0x80001660]:addi a0, a0, 1285

[0x80001670]:addi a0, a0, 1285

[0x80001680]:addi a0, a0, 1285

[0x80001690]:addi a0, a0, 1285

[0x800016a0]:addi a0, a0, 1285

[0x800016b0]:addi a0, a0, 1285

[0x800016c0]:addi a0, a0, 1285

[0x800016d0]:addi a0, a0, 1285

[0x800016dc]:addi a0, zero, 0

[0x800016e8]:addi a0, zero, 0

[0x800016f4]:addi a0, zero, 0

[0x80001700]:addi a0, zero, 0

[0x8000170c]:addi a0, zero, 0

[0x80001718]:addi a0, zero, 0

[0x80001724]:addi a0, zero, 0

[0x80001730]:addi a0, zero, 0

[0x8000173c]:addi a0, zero, 0

[0x80001748]:addi a0, zero, 0

[0x80001754]:addi a0, zero, 0

[0x80001760]:addi a0, zero, 0

[0x8000176c]:addi a0, zero, 0

[0x80001778]:addi a0, zero, 4

[0x80001784]:addi a0, zero, 4

[0x80001790]:addi a0, zero, 4

[0x8000179c]:addi a0, zero, 4

[0x800017a8]:addi a0, zero, 4

[0x800017b4]:addi a0, zero, 4

[0x800017c0]:addi a0, zero, 4

[0x800017cc]:addi a0, zero, 4

[0x800017d8]:addi a0, zero, 4

[0x800017e4]:addi a0, zero, 4

[0x800017f0]:addi a0, zero, 4

[0x800017fc]:addi a0, zero, 4

[0x80001808]:addi a0, zero, 4

[0x80001814]:addi a0, zero, 4

[0x80001820]:addi a0, zero, 4

[0x8000182c]:addi a0, zero, 4

[0x80001838]:addi a0, zero, 4

[0x80001844]:addi a0, zero, 4

[0x80001850]:addi a0, zero, 4

[0x8000185c]:addi a0, zero, 4

[0x80001868]:addi a0, zero, 4

[0x80001874]:addi a0, zero, 4

[0x80001884]:addi a0, a0, 818

[0x80001894]:addi a0, a0, 818

[0x800018a4]:addi a0, a0, 818

[0x800018b4]:addi a0, a0, 818

[0x800018c4]:addi a0, a0, 818

[0x800018d4]:addi a0, a0, 818

[0x800018e4]:addi a0, a0, 818

[0x800018f4]:addi a0, a0, 818

[0x80001904]:addi a0, a0, 818

[0x80001914]:addi a0, a0, 818

[0x80001924]:addi a0, a0, 818

[0x80001934]:addi a0, a0, 818

[0x80001944]:addi a0, a0, 818

[0x80001954]:addi a0, a0, 818

[0x80001964]:addi a0, a0, 818

[0x80001974]:addi a0, a0, 818

[0x80001984]:addi a0, a0, 818

[0x80001994]:addi a0, a0, 818

[0x800019a4]:addi a0, a0, 818

[0x800019b4]:addi a0, a0, 818

[0x800019c4]:addi a0, a0, 818

[0x800019d4]:addi a0, a0, 818

[0x800019e4]:addi a0, a0, 1637

[0x800019f4]:addi a0, a0, 1637

[0x80001a04]:addi a0, a0, 1637

[0x80001a14]:addi a0, a0, 1637

[0x80001a24]:addi a0, a0, 1637

[0x80001a34]:addi a0, a0, 1637

[0x80001a44]:addi a0, a0, 1637

[0x80001a54]:addi a0, a0, 1637

[0x80001a64]:addi a0, a0, 1637

[0x80001a74]:addi a0, a0, 1637

[0x80001a84]:addi a0, a0, 1637

[0x80001a94]:addi a0, a0, 1637

[0x80001aa4]:addi a0, a0, 1637

[0x80001ab4]:addi a0, a0, 1637

[0x80001ac4]:addi a0, a0, 1637

[0x80001ad4]:addi a0, a0, 1637

[0x80001ae4]:addi a0, a0, 1637

[0x80001af4]:addi a0, a0, 1637

[0x80001b04]:addi a0, a0, 1637

[0x80001b14]:addi a0, a0, 1637

[0x80001b24]:addi a0, a0, 1637

[0x80001b34]:addi a0, a0, 1637

[0x80001b44]:addi a0, a0, 1283

[0x80001b54]:addi a0, a0, 1283

[0x80001b64]:addi a0, a0, 1283

[0x80001b74]:addi a0, a0, 1283

[0x80001b84]:addi a0, a0, 1283

[0x80001b94]:addi a0, a0, 1283

[0x80001ba4]:addi a0, a0, 1283

[0x80001bb4]:addi a0, a0, 1283

[0x80001bc4]:addi a0, a0, 1283

[0x80001bd4]:addi a0, a0, 1283

[0x80001be4]:addi a0, a0, 1283

[0x80001bf4]:addi a0, a0, 1283

[0x80001c04]:addi a0, a0, 1283

[0x80001c14]:addi a0, a0, 1283

[0x80001c24]:addi a0, a0, 1283

[0x80001c34]:addi a0, a0, 1283

[0x80001c44]:addi a0, a0, 1283

[0x80001c54]:addi a0, a0, 1283

[0x80001c64]:addi a0, a0, 1283

[0x80001c74]:addi a0, a0, 1283

[0x80001c84]:addi a0, a0, 1283

[0x80001c94]:addi a0, a0, 1283

[0x80001ca4]:addi a0, a0, 1366

[0x80001cb4]:addi a0, a0, 1366

[0x80001cc4]:addi a0, a0, 1366

[0x80001cd4]:addi a0, a0, 1366

[0x80001ce4]:addi a0, a0, 1366

[0x80001cf4]:addi a0, a0, 1366

[0x80001d04]:addi a0, a0, 1366

[0x80001d14]:addi a0, a0, 1366

[0x80001d24]:addi a0, a0, 1366

[0x80001d34]:addi a0, a0, 1366

[0x80001d44]:addi a0, a0, 1366

[0x80001d54]:addi a0, a0, 1366

[0x80001d64]:addi a0, a0, 1366

[0x80001d74]:addi a0, a0, 1366

[0x80001d84]:addi a0, a0, 1366

[0x80001d94]:addi a0, a0, 1366

[0x80001da4]:addi a0, a0, 1366

[0x80001db4]:addi a0, a0, 1366

[0x80001dc4]:addi a0, a0, 1366

[0x80001dd4]:addi a0, a0, 1366

[0x80001de4]:addi a0, a0, 1366

[0x80001df4]:addi a0, a0, 1366

[0x80001e04]:addi a0, a0, 2731

[0x80001e14]:addi a0, a0, 2731

[0x80001e24]:addi a0, a0, 2731

[0x80001e34]:addi a0, a0, 2731

[0x80001e44]:addi a0, a0, 2731

[0x80001e54]:addi a0, a0, 2731

[0x80001e64]:addi a0, a0, 2731

[0x80001e74]:addi a0, a0, 2731

[0x80001e84]:addi a0, a0, 2731

[0x80001e94]:addi a0, a0, 2731

[0x80001ea4]:addi a0, a0, 2731

[0x80001eb4]:addi a0, a0, 2731

[0x80001ec4]:addi a0, a0, 2731

[0x80001ed4]:addi a0, a0, 2731

[0x80001ee4]:addi a0, a0, 2731

[0x80001ef4]:addi a0, a0, 2731

[0x80001f04]:addi a0, a0, 2731

[0x80001f14]:addi a0, a0, 2731

[0x80001f24]:addi a0, a0, 2731

[0x80001f34]:addi a0, a0, 2731

[0x80001f44]:addi a0, a0, 2731

[0x80001f54]:addi a0, a0, 2731

[0x80001f60]:addi a0, zero, 6

[0x80001f6c]:addi a0, zero, 6

[0x80001f78]:addi a0, zero, 6

[0x80001f84]:addi a0, zero, 6

[0x80001f90]:addi a0, zero, 6

[0x80001f9c]:addi a0, zero, 6

[0x80001fa8]:addi a0, zero, 6

[0x80001fb8]:addi ra, ra, 2220

[0x80001fbc]:addi a0, zero, 6

[0x80001fc8]:addi a0, zero, 6

[0x80001fd4]:addi a0, zero, 6

[0x80001fe0]:addi a0, zero, 6

[0x80001fec]:addi a0, zero, 6

[0x80001ff8]:addi a0, zero, 6

[0x80002004]:addi a0, zero, 6

[0x80002010]:addi a0, zero, 6

[0x8000201c]:addi a0, zero, 6

[0x80002028]:addi a0, zero, 6

[0x80002034]:addi a0, zero, 6

[0x80002040]:addi a0, zero, 6

[0x8000204c]:addi a0, zero, 6

[0x80002058]:addi a0, zero, 6

[0x80002064]:addi a0, zero, 6

[0x80002074]:addi a0, a0, 820

[0x80002084]:addi a0, a0, 820

[0x80002094]:addi a0, a0, 820

[0x800020a4]:addi a0, a0, 820

[0x800020b4]:addi a0, a0, 820

[0x800020c4]:addi a0, a0, 820

[0x800020d4]:addi a0, a0, 820

[0x800020e4]:addi a0, a0, 820

[0x800020f4]:addi a0, a0, 820

[0x80002104]:addi a0, a0, 820

[0x80002114]:addi a0, a0, 820

[0x80002124]:addi a0, a0, 820

[0x80002130]:addi a0, zero, 1



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

|s.no|        signature         |                                                             coverpoints                                                             |                                 code                                 |
|---:|--------------------------|-------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80004010]<br>0xFFFFF800|- rs1 : x2<br> - rd : x25<br> - imm_val == (-2**(12-1))<br> - imm_val == -2048<br>                                                   |[0x80000104]:addi s9, sp, 2048<br> [0x80000108]:sw s9, 0(t2)<br>      |
|   2|[0x80004014]<br>0xFFFFF7FF|- rs1_val == -2049<br>                                                                                                               |[0x80000114]:addi ra, ra, 0<br> [0x80000118]:sw ra, 4(t2)<br>         |
|   3|[0x80004018]<br>0x0000083F|- rs1 : x19<br> - rd : x22<br> - rs1_val > 0 and imm_val > 0<br> - rs1_val == 64<br>                                                 |[0x80000120]:addi s6, s3, 2047<br> [0x80000124]:sw s6, 8(t2)<br>      |
|   4|[0x8000401c]<br>0xFFE00000|- rd : x24<br> - imm_val == 1<br> - rs1_val == -2097153<br>                                                                          |[0x80000130]:addi s8, t6, 1<br> [0x80000134]:sw s8, 12(t2)<br>        |
|   5|[0x80004020]<br>0x80000001|- rs1 : x22<br> - rd : x13<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val == -2147483648<br>                                          |[0x8000013c]:addi a3, s6, 1<br> [0x80000140]:sw a3, 16(t2)<br>        |
|   6|[0x80004024]<br>0x7FFFFBFE|- rd : x30<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val > 0 and imm_val < 0<br> - imm_val == -1025<br> - rs1_val == 2147483647<br> |[0x8000014c]:addi t5, a5, 3071<br> [0x80000150]:sw t5, 20(t2)<br>     |
|   7|[0x80004028]<br>0x00000020|- rd : x9<br> - imm_val == 32<br>                                                                                                    |[0x80000158]:addi s1, zero, 32<br> [0x8000015c]:sw s1, 24(t2)<br>     |
|   8|[0x8000402c]<br>0xFFFFFFF2|- rs1 : x8<br>                                                                                                                       |[0x80000164]:addi a5, fp, 4089<br> [0x80000168]:sw a5, 28(t2)<br>     |
|   9|[0x80004030]<br>0x00000002|- rs1 : x6<br> - rd : x18<br> - imm_val == 2<br> - rs1_val==0 and imm_val==2<br>                                                     |[0x80000170]:addi s2, t1, 2<br> [0x80000174]:sw s2, 32(t2)<br>        |
|  10|[0x80004034]<br>0x04000004|- rs1 : x29<br> - rd : x14<br> - imm_val == 4<br> - rs1_val == 67108864<br>                                                          |[0x8000017c]:addi a4, t4, 4<br> [0x80000180]:sw a4, 36(t2)<br>        |
|  11|[0x80004038]<br>0x00000010|- rs1 : x4<br> - rs1_val == 8<br>                                                                                                    |[0x80000188]:addi sp, tp, 8<br> [0x8000018c]:sw sp, 40(t2)<br>        |
|  12|[0x8000403c]<br>0x00000014|- rs1 : x21<br> - rd : x5<br> - imm_val == 16<br> - rs1_val == 4<br>                                                                 |[0x80000194]:addi t0, s5, 16<br> [0x80000198]:sw t0, 44(t2)<br>       |
|  13|[0x80004040]<br>0x8000003F|- rd : x11<br>                                                                                                                       |[0x800001a4]:addi a1, s9, 64<br> [0x800001a8]:sw a1, 48(t2)<br>       |
|  14|[0x80004044]<br>0x0000007B|- rs1 : x26<br> - imm_val == 128<br> - rs1_val == -5<br>                                                                             |[0x800001b0]:addi fp, s10, 128<br> [0x800001b4]:sw fp, 52(t2)<br>     |
|  15|[0x80004048]<br>0x0000B604|- imm_val == 256<br>                                                                                                                 |[0x800001c0]:addi s5, a7, 256<br> [0x800001c4]:sw s5, 56(t2)<br>      |
|  16|[0x8000404c]<br>0x01000200|- rs1 : x12<br> - rd : x29<br> - imm_val == 512<br> - rs1_val == 16777216<br>                                                        |[0x800001cc]:addi t4, a2, 512<br> [0x800001d0]:sw t4, 60(t2)<br>      |
|  17|[0x80004050]<br>0xFFFFE3FF|- rd : x16<br> - imm_val == 1024<br> - rs1_val == -8193<br>                                                                          |[0x800001dc]:addi a6, s4, 1024<br> [0x800001e0]:sw a6, 64(t2)<br>     |
|  18|[0x80004054]<br>0xAAAAAAA9|- rd : x28<br> - imm_val == -2<br>                                                                                                   |[0x800001ec]:addi t3, a0, 4094<br> [0x800001f0]:sw t3, 68(t2)<br>     |
|  19|[0x80004058]<br>0x03FFFFFD|- rs1 : x5<br> - imm_val == -3<br>                                                                                                   |[0x800001f8]:addi s4, t0, 4093<br> [0x800001fc]:sw s4, 72(t2)<br>     |
|  20|[0x8000405c]<br>0xFFFFFFF4|- rs1 : x9<br> - rd : x3<br>                                                                                                         |[0x80000204]:addi gp, s1, 4091<br> [0x80000208]:sw gp, 76(t2)<br>     |
|  21|[0x80004060]<br>0xDFFFFFF6|- imm_val == -9<br> - rs1_val == -536870913<br>                                                                                      |[0x8000021c]:addi a0, s7, 4087<br> [0x80000220]:sw a0, 0(ra)<br>      |
|  22|[0x80004064]<br>0xFF7FFFEE|- imm_val == -17<br> - rs1_val == -8388609<br>                                                                                       |[0x8000022c]:addi s10, t5, 4079<br> [0x80000230]:sw s10, 4(ra)<br>    |
|  23|[0x80004068]<br>0xFFFFFFBE|- rd : x12<br> - rs1_val == -33<br>                                                                                                  |[0x80000238]:addi a2, t2, 4063<br> [0x8000023c]:sw a2, 8(ra)<br>      |
|  24|[0x8000406c]<br>0xF7FFFFBE|- imm_val == -65<br> - rs1_val == -134217729<br>                                                                                     |[0x80000248]:addi t1, gp, 4031<br> [0x8000024c]:sw t1, 12(ra)<br>     |
|  25|[0x80004070]<br>0xFFFFFF88|- rs1 : x28<br> - imm_val == -129<br>                                                                                                |[0x80000254]:addi s3, t3, 3967<br> [0x80000258]:sw s3, 16(ra)<br>     |
|  26|[0x80004074]<br>0x00000000|- imm_val == -257<br>                                                                                                                |[0x80000264]:addi zero, a6, 3839<br> [0x80000268]:sw zero, 20(ra)<br> |
|  27|[0x80004078]<br>0xFFFFFDFC|- rs1 : x11<br> - imm_val == -513<br> - rs1_val == -3<br>                                                                            |[0x80000270]:addi a7, a1, 3583<br> [0x80000274]:sw a7, 24(ra)<br>     |
|  28|[0x8000407c]<br>0x0000055C|- rs1 : x24<br> - imm_val == 1365<br>                                                                                                |[0x8000027c]:addi s7, s8, 1365<br> [0x80000280]:sw s7, 28(ra)<br>     |
|  29|[0x80004080]<br>0xFDFFFAA9|- imm_val == -1366<br> - rs1_val == -33554433<br>                                                                                    |[0x8000028c]:addi t2, a3, 2730<br> [0x80000290]:sw t2, 32(ra)<br>     |
|  30|[0x80004084]<br>0x0000000B|- rs1 : x27<br> - rs1_val == 2<br>                                                                                                   |[0x80000298]:addi tp, s11, 9<br> [0x8000029c]:sw tp, 36(ra)<br>       |
|  31|[0x80004088]<br>0x00000015|- rs1 : x14<br> - rs1_val == 16<br>                                                                                                  |[0x800002a4]:addi t6, a4, 5<br> [0x800002a8]:sw t6, 40(ra)<br>        |
|  32|[0x8000408c]<br>0xFFFFFC20|- rs1 : x18<br> - rs1_val == 32<br>                                                                                                  |[0x800002b0]:addi s11, s2, 3072<br> [0x800002b4]:sw s11, 44(ra)<br>   |
|  33|[0x80004090]<br>0xFFFFFE7F|- rs1_val == 128<br>                                                                                                                 |[0x800002bc]:addi a1, a0, 3583<br> [0x800002c0]:sw a1, 48(ra)<br>     |
|  34|[0x80004094]<br>0x00000140|- rs1_val == 256<br>                                                                                                                 |[0x800002c8]:addi a1, a0, 64<br> [0x800002cc]:sw a1, 52(ra)<br>       |
|  35|[0x80004098]<br>0x00000204|- rs1_val == 512<br>                                                                                                                 |[0x800002d4]:addi a1, a0, 4<br> [0x800002d8]:sw a1, 56(ra)<br>        |
|  36|[0x8000409c]<br>0x00000440|- rs1_val == 1024<br>                                                                                                                |[0x800002e0]:addi a1, a0, 64<br> [0x800002e4]:sw a1, 60(ra)<br>       |
|  37|[0x800040a0]<br>0x000007DF|- rs1_val == 2048<br>                                                                                                                |[0x800002f0]:addi a1, a0, 4063<br> [0x800002f4]:sw a1, 64(ra)<br>     |
|  38|[0x800040a8]<br>0x00001FFE|- rs1_val == 8192<br>                                                                                                                |[0x80000308]:addi a1, a0, 4094<br> [0x8000030c]:sw a1, 72(ra)<br>     |
|  39|[0x800040ac]<br>0x00004556|- rs1_val == 16384<br>                                                                                                               |[0x80000314]:addi a1, a0, 1366<br> [0x80000318]:sw a1, 76(ra)<br>     |
|  40|[0x800040b0]<br>0x00007FF6|- rs1_val == 32768<br>                                                                                                               |[0x80000320]:addi a1, a0, 4086<br> [0x80000324]:sw a1, 80(ra)<br>     |
|  41|[0x800040b4]<br>0x0001002E|- rs1_val == 65536<br>                                                                                                               |[0x8000032c]:addi a1, a0, 46<br> [0x80000330]:sw a1, 84(ra)<br>       |
|  42|[0x800040b8]<br>0x0002002D|- rs1_val == 131072<br>                                                                                                              |[0x80000338]:addi a1, a0, 45<br> [0x8000033c]:sw a1, 88(ra)<br>       |
|  43|[0x800040bc]<br>0x00040009|- rs1_val == 262144<br>                                                                                                              |[0x80000344]:addi a1, a0, 9<br> [0x80000348]:sw a1, 92(ra)<br>        |
|  44|[0x800040c0]<br>0x00080001|- rs1_val == 524288<br>                                                                                                              |[0x80000350]:addi a1, a0, 1<br> [0x80000354]:sw a1, 96(ra)<br>        |
|  45|[0x800040c4]<br>0x000FFFFD|- rs1_val == 1048576<br>                                                                                                             |[0x8000035c]:addi a1, a0, 4093<br> [0x80000360]:sw a1, 100(ra)<br>    |
|  46|[0x800040c8]<br>0x00200001|- rs1_val == 2097152<br>                                                                                                             |[0x80000368]:addi a1, a0, 1<br> [0x8000036c]:sw a1, 104(ra)<br>       |
|  47|[0x800040cc]<br>0x00400000|- rs1_val == 4194304<br>                                                                                                             |[0x80000374]:addi a1, a0, 0<br> [0x80000378]:sw a1, 108(ra)<br>       |
|  48|[0x800040d0]<br>0x007FFFFC|- rs1_val == 8388608<br>                                                                                                             |[0x80000380]:addi a1, a0, 4092<br> [0x80000384]:sw a1, 112(ra)<br>    |
|  49|[0x800040d4]<br>0x02000555|- rs1_val == 33554432<br>                                                                                                            |[0x8000038c]:addi a1, a0, 1365<br> [0x80000390]:sw a1, 116(ra)<br>    |
|  50|[0x800040d8]<br>0x08000400|- rs1_val == 134217728<br>                                                                                                           |[0x80000398]:addi a1, a0, 1024<br> [0x8000039c]:sw a1, 120(ra)<br>    |
|  51|[0x800040dc]<br>0x10000080|- rs1_val == 268435456<br>                                                                                                           |[0x800003a4]:addi a1, a0, 128<br> [0x800003a8]:sw a1, 124(ra)<br>     |
|  52|[0x800040e0]<br>0x1FFFFFFD|- rs1_val == 536870912<br>                                                                                                           |[0x800003b0]:addi a1, a0, 4093<br> [0x800003b4]:sw a1, 128(ra)<br>    |
|  53|[0x800040e4]<br>0x3FFFFF7F|- rs1_val == 1073741824<br>                                                                                                          |[0x800003bc]:addi a1, a0, 3967<br> [0x800003c0]:sw a1, 132(ra)<br>    |
|  54|[0x800040e8]<br>0xFFFFFFFC|- rs1_val == -2<br>                                                                                                                  |[0x800003c8]:addi a1, a0, 4094<br> [0x800003cc]:sw a1, 136(ra)<br>    |
|  55|[0x800040ec]<br>0x0000065D|- rs1_val == -9<br>                                                                                                                  |[0x800003d4]:addi a1, a0, 1638<br> [0x800003d8]:sw a1, 140(ra)<br>    |
|  56|[0x800040f0]<br>0x000003EE|- rs1_val == -17<br>                                                                                                                 |[0x800003e0]:addi a1, a0, 1023<br> [0x800003e4]:sw a1, 144(ra)<br>    |
|  57|[0x800040f4]<br>0xFFFFFA6A|- rs1_val == -65<br>                                                                                                                 |[0x800003ec]:addi a1, a0, 2731<br> [0x800003f0]:sw a1, 148(ra)<br>    |
|  58|[0x800040f8]<br>0xFFFFFF84|- rs1_val == -129<br>                                                                                                                |[0x800003f8]:addi a1, a0, 5<br> [0x800003fc]:sw a1, 152(ra)<br>       |
|  59|[0x800040fc]<br>0xFFFFFEFF|- rs1_val == -257<br>                                                                                                                |[0x80000404]:addi a1, a0, 0<br> [0x80000408]:sw a1, 156(ra)<br>       |
|  60|[0x80004100]<br>0xFFFFF8AA|- rs1_val == -513<br>                                                                                                                |[0x80000410]:addi a1, a0, 2731<br> [0x80000414]:sw a1, 160(ra)<br>    |
|  61|[0x80004104]<br>0x00000266|- rs1_val == -1025<br>                                                                                                               |[0x8000041c]:addi a1, a0, 1639<br> [0x80000420]:sw a1, 164(ra)<br>    |
|  62|[0x80004108]<br>0xFFFFEDFE|- rs1_val == -4097<br>                                                                                                               |[0x8000042c]:addi a1, a0, 3583<br> [0x80000430]:sw a1, 168(ra)<br>    |
|  63|[0x8000410c]<br>0xFFFFBFF9|- rs1_val == -16385<br>                                                                                                              |[0x8000043c]:addi a1, a0, 4090<br> [0x80000440]:sw a1, 172(ra)<br>    |
|  64|[0x80004110]<br>0xFFFF8554|- rs1_val == -32769<br>                                                                                                              |[0x8000044c]:addi a1, a0, 1365<br> [0x80000450]:sw a1, 176(ra)<br>    |
|  65|[0x80004114]<br>0xFFFF0003|- rs1_val == -65537<br>                                                                                                              |[0x8000045c]:addi a1, a0, 4<br> [0x80000460]:sw a1, 180(ra)<br>       |
|  66|[0x80004118]<br>0xFFFE00FF|- rs1_val == -131073<br>                                                                                                             |[0x8000046c]:addi a1, a0, 256<br> [0x80000470]:sw a1, 184(ra)<br>     |
|  67|[0x8000411c]<br>0xFFFBFDFE|- rs1_val == -262145<br>                                                                                                             |[0x8000047c]:addi a1, a0, 3583<br> [0x80000480]:sw a1, 188(ra)<br>    |
|  68|[0x80004120]<br>0xFFF7FFEE|- rs1_val == -524289<br>                                                                                                             |[0x8000048c]:addi a1, a0, 4079<br> [0x80000490]:sw a1, 192(ra)<br>    |
|  69|[0x80004124]<br>0xFFF00554|- rs1_val == -1048577<br>                                                                                                            |[0x8000049c]:addi a1, a0, 1365<br> [0x800004a0]:sw a1, 196(ra)<br>    |
|  70|[0x80004128]<br>0xFFBFFEFE|- rs1_val == -4194305<br>                                                                                                            |[0x800004ac]:addi a1, a0, 3839<br> [0x800004b0]:sw a1, 200(ra)<br>    |
|  71|[0x8000412c]<br>0xFF000000|- rs1_val == -16777217<br>                                                                                                           |[0x800004bc]:addi a1, a0, 1<br> [0x800004c0]:sw a1, 204(ra)<br>       |
|  72|[0x80004130]<br>0xFBFFFFD2|- rs1_val == -67108865<br>                                                                                                           |[0x800004cc]:addi a1, a0, 4051<br> [0x800004d0]:sw a1, 208(ra)<br>    |
|  73|[0x80004134]<br>0xF00003FE|- rs1_val == -268435457<br>                                                                                                          |[0x800004dc]:addi a1, a0, 1023<br> [0x800004e0]:sw a1, 212(ra)<br>    |
|  74|[0x80004138]<br>0xBFFFFFF7|- rs1_val == -1073741825<br>                                                                                                         |[0x800004ec]:addi a1, a0, 4088<br> [0x800004f0]:sw a1, 216(ra)<br>    |
|  75|[0x8000413c]<br>0x55555558|- rs1_val == 1431655765<br> - rs1_val==1431655765 and imm_val==3<br>                                                                 |[0x800004fc]:addi a1, a0, 3<br> [0x80000500]:sw a1, 220(ra)<br>       |
|  76|[0x80004140]<br>0xAAAAA6AA|- rs1_val == -1431655766<br>                                                                                                         |[0x8000050c]:addi a1, a0, 3072<br> [0x80000510]:sw a1, 224(ra)<br>    |
|  77|[0x80004144]<br>0x00000006|- rs1_val==3 and imm_val==3<br>                                                                                                      |[0x80000518]:addi a1, a0, 3<br> [0x8000051c]:sw a1, 228(ra)<br>       |
|  78|[0x80004148]<br>0x00000558|- rs1_val==3 and imm_val==1365<br>                                                                                                   |[0x80000524]:addi a1, a0, 1365<br> [0x80000528]:sw a1, 232(ra)<br>    |
|  79|[0x8000414c]<br>0xFFFFFAAD|- rs1_val==3 and imm_val==-1366<br>                                                                                                  |[0x80000530]:addi a1, a0, 2730<br> [0x80000534]:sw a1, 236(ra)<br>    |
|  80|[0x80004150]<br>0x00000008|- rs1_val==3 and imm_val==5<br>                                                                                                      |[0x8000053c]:addi a1, a0, 5<br> [0x80000540]:sw a1, 240(ra)<br>       |
|  81|[0x80004154]<br>0x00000336|- rs1_val==3 and imm_val==819<br>                                                                                                    |[0x80000548]:addi a1, a0, 819<br> [0x8000054c]:sw a1, 244(ra)<br>     |
|  82|[0x80004158]<br>0x00000669|- rs1_val==3 and imm_val==1638<br>                                                                                                   |[0x80000554]:addi a1, a0, 1638<br> [0x80000558]:sw a1, 248(ra)<br>    |
|  83|[0x8000415c]<br>0xFFFFFFD6|- rs1_val==3 and imm_val==-45<br>                                                                                                    |[0x80000560]:addi a1, a0, 4051<br> [0x80000564]:sw a1, 252(ra)<br>    |
|  84|[0x80004160]<br>0x00000030|- rs1_val==3 and imm_val==45<br>                                                                                                     |[0x8000056c]:addi a1, a0, 45<br> [0x80000570]:sw a1, 256(ra)<br>      |
|  85|[0x80004164]<br>0x00000005|- rs1_val==3 and imm_val==2<br>                                                                                                      |[0x80000578]:addi a1, a0, 2<br> [0x8000057c]:sw a1, 260(ra)<br>       |
|  86|[0x80004168]<br>0x00000557|- rs1_val==3 and imm_val==1364<br>                                                                                                   |[0x80000584]:addi a1, a0, 1364<br> [0x80000588]:sw a1, 264(ra)<br>    |
|  87|[0x8000416c]<br>0x00000003|- rs1_val==3 and imm_val==0<br>                                                                                                      |[0x80000590]:addi a1, a0, 0<br> [0x80000594]:sw a1, 268(ra)<br>       |
|  88|[0x80004170]<br>0x00000007|- rs1_val==3 and imm_val==4<br>                                                                                                      |[0x8000059c]:addi a1, a0, 4<br> [0x800005a0]:sw a1, 272(ra)<br>       |
|  89|[0x80004174]<br>0x00000335|- rs1_val==3 and imm_val==818<br>                                                                                                    |[0x800005a8]:addi a1, a0, 818<br> [0x800005ac]:sw a1, 276(ra)<br>     |
|  90|[0x80004178]<br>0x00000668|- rs1_val==3 and imm_val==1637<br>                                                                                                   |[0x800005b4]:addi a1, a0, 1637<br> [0x800005b8]:sw a1, 280(ra)<br>    |
|  91|[0x8000417c]<br>0x0000002F|- rs1_val==3 and imm_val==44<br>                                                                                                     |[0x800005c0]:addi a1, a0, 44<br> [0x800005c4]:sw a1, 284(ra)<br>      |
|  92|[0x80004180]<br>0x00000559|- rs1_val==3 and imm_val==1366<br>                                                                                                   |[0x800005cc]:addi a1, a0, 1366<br> [0x800005d0]:sw a1, 288(ra)<br>    |
|  93|[0x80004184]<br>0xFFFFFAAE|- rs1_val==3 and imm_val==-1365<br>                                                                                                  |[0x800005d8]:addi a1, a0, 2731<br> [0x800005dc]:sw a1, 292(ra)<br>    |
|  94|[0x80004188]<br>0x00000009|- rs1_val==3 and imm_val==6<br>                                                                                                      |[0x800005e4]:addi a1, a0, 6<br> [0x800005e8]:sw a1, 296(ra)<br>       |
|  95|[0x8000418c]<br>0x00000337|- rs1_val==3 and imm_val==820<br>                                                                                                    |[0x800005f0]:addi a1, a0, 820<br> [0x800005f4]:sw a1, 300(ra)<br>     |
|  96|[0x80004190]<br>0x0000066A|- rs1_val==3 and imm_val==1639<br>                                                                                                   |[0x800005fc]:addi a1, a0, 1639<br> [0x80000600]:sw a1, 304(ra)<br>    |
|  97|[0x80004194]<br>0xFFFFFFD7|- rs1_val==3 and imm_val==-44<br>                                                                                                    |[0x80000608]:addi a1, a0, 4052<br> [0x8000060c]:sw a1, 308(ra)<br>    |
|  98|[0x80004198]<br>0x00000031|- rs1_val==3 and imm_val==46<br>                                                                                                     |[0x80000614]:addi a1, a0, 46<br> [0x80000618]:sw a1, 312(ra)<br>      |
|  99|[0x8000419c]<br>0x55555AAA|- rs1_val==1431655765 and imm_val==1365<br>                                                                                          |[0x80000624]:addi a1, a0, 1365<br> [0x80000628]:sw a1, 316(ra)<br>    |
| 100|[0x800041a0]<br>0x55554FFF|- rs1_val==1431655765 and imm_val==-1366<br>                                                                                         |[0x80000634]:addi a1, a0, 2730<br> [0x80000638]:sw a1, 320(ra)<br>    |
| 101|[0x800041a4]<br>0x5555555A|- rs1_val==1431655765 and imm_val==5<br>                                                                                             |[0x80000644]:addi a1, a0, 5<br> [0x80000648]:sw a1, 324(ra)<br>       |
| 102|[0x800041a8]<br>0x55555888|- rs1_val==1431655765 and imm_val==819<br>                                                                                           |[0x80000654]:addi a1, a0, 819<br> [0x80000658]:sw a1, 328(ra)<br>     |
| 103|[0x800041ac]<br>0x55555BBB|- rs1_val==1431655765 and imm_val==1638<br>                                                                                          |[0x80000664]:addi a1, a0, 1638<br> [0x80000668]:sw a1, 332(ra)<br>    |
| 104|[0x800041b0]<br>0x55555528|- rs1_val==1431655765 and imm_val==-45<br>                                                                                           |[0x80000674]:addi a1, a0, 4051<br> [0x80000678]:sw a1, 336(ra)<br>    |
| 105|[0x800041b4]<br>0x55555582|- rs1_val==1431655765 and imm_val==45<br>                                                                                            |[0x80000684]:addi a1, a0, 45<br> [0x80000688]:sw a1, 340(ra)<br>      |
| 106|[0x800041b8]<br>0x55555557|- rs1_val==1431655765 and imm_val==2<br>                                                                                             |[0x80000694]:addi a1, a0, 2<br> [0x80000698]:sw a1, 344(ra)<br>       |
| 107|[0x800041bc]<br>0x55555AA9|- rs1_val==1431655765 and imm_val==1364<br>                                                                                          |[0x800006a4]:addi a1, a0, 1364<br> [0x800006a8]:sw a1, 348(ra)<br>    |
| 108|[0x800041c0]<br>0x55555555|- rs1_val==1431655765 and imm_val==0<br>                                                                                             |[0x800006b4]:addi a1, a0, 0<br> [0x800006b8]:sw a1, 352(ra)<br>       |
| 109|[0x800041c4]<br>0x55555559|- rs1_val==1431655765 and imm_val==4<br>                                                                                             |[0x800006c4]:addi a1, a0, 4<br> [0x800006c8]:sw a1, 356(ra)<br>       |
| 110|[0x800041c8]<br>0x55555887|- rs1_val==1431655765 and imm_val==818<br>                                                                                           |[0x800006d4]:addi a1, a0, 818<br> [0x800006d8]:sw a1, 360(ra)<br>     |
| 111|[0x800041cc]<br>0x55555BBA|- rs1_val==1431655765 and imm_val==1637<br>                                                                                          |[0x800006e4]:addi a1, a0, 1637<br> [0x800006e8]:sw a1, 364(ra)<br>    |
| 112|[0x800041d0]<br>0x55555581|- rs1_val==1431655765 and imm_val==44<br>                                                                                            |[0x800006f4]:addi a1, a0, 44<br> [0x800006f8]:sw a1, 368(ra)<br>      |
| 113|[0x800041d4]<br>0x55555AAB|- rs1_val==1431655765 and imm_val==1366<br>                                                                                          |[0x80000704]:addi a1, a0, 1366<br> [0x80000708]:sw a1, 372(ra)<br>    |
| 114|[0x800041d8]<br>0x55555000|- rs1_val==1431655765 and imm_val==-1365<br>                                                                                         |[0x80000714]:addi a1, a0, 2731<br> [0x80000718]:sw a1, 376(ra)<br>    |
| 115|[0x800041dc]<br>0x5555555B|- rs1_val==1431655765 and imm_val==6<br>                                                                                             |[0x80000724]:addi a1, a0, 6<br> [0x80000728]:sw a1, 380(ra)<br>       |
| 116|[0x800041e0]<br>0x55555889|- rs1_val==1431655765 and imm_val==820<br>                                                                                           |[0x80000734]:addi a1, a0, 820<br> [0x80000738]:sw a1, 384(ra)<br>     |
| 117|[0x800041e4]<br>0x55555BBC|- rs1_val==1431655765 and imm_val==1639<br>                                                                                          |[0x80000744]:addi a1, a0, 1639<br> [0x80000748]:sw a1, 388(ra)<br>    |
| 118|[0x800041e8]<br>0x55555529|- rs1_val==1431655765 and imm_val==-44<br>                                                                                           |[0x80000754]:addi a1, a0, 4052<br> [0x80000758]:sw a1, 392(ra)<br>    |
| 119|[0x800041ec]<br>0x55555583|- rs1_val==1431655765 and imm_val==46<br>                                                                                            |[0x80000764]:addi a1, a0, 46<br> [0x80000768]:sw a1, 396(ra)<br>      |
| 120|[0x800041f0]<br>0xAAAAAAAD|- rs1_val==-1431655766 and imm_val==3<br>                                                                                            |[0x80000774]:addi a1, a0, 3<br> [0x80000778]:sw a1, 400(ra)<br>       |
| 121|[0x800041f4]<br>0xAAAAAFFF|- rs1_val==-1431655766 and imm_val==1365<br>                                                                                         |[0x80000784]:addi a1, a0, 1365<br> [0x80000788]:sw a1, 404(ra)<br>    |
| 122|[0x800041f8]<br>0xAAAAA554|- rs1_val==-1431655766 and imm_val==-1366<br>                                                                                        |[0x80000794]:addi a1, a0, 2730<br> [0x80000798]:sw a1, 408(ra)<br>    |
| 123|[0x800041fc]<br>0xAAAAAAAF|- rs1_val==-1431655766 and imm_val==5<br>                                                                                            |[0x800007a4]:addi a1, a0, 5<br> [0x800007a8]:sw a1, 412(ra)<br>       |
| 124|[0x80004200]<br>0xAAAAADDD|- rs1_val==-1431655766 and imm_val==819<br>                                                                                          |[0x800007b4]:addi a1, a0, 819<br> [0x800007b8]:sw a1, 416(ra)<br>     |
| 125|[0x80004204]<br>0xAAAAB110|- rs1_val==-1431655766 and imm_val==1638<br>                                                                                         |[0x800007c4]:addi a1, a0, 1638<br> [0x800007c8]:sw a1, 420(ra)<br>    |
| 126|[0x80004208]<br>0xAAAAAA7D|- rs1_val==-1431655766 and imm_val==-45<br>                                                                                          |[0x800007d4]:addi a1, a0, 4051<br> [0x800007d8]:sw a1, 424(ra)<br>    |
| 127|[0x8000420c]<br>0xAAAAAAD7|- rs1_val==-1431655766 and imm_val==45<br>                                                                                           |[0x800007e4]:addi a1, a0, 45<br> [0x800007e8]:sw a1, 428(ra)<br>      |
| 128|[0x80004210]<br>0xAAAAAAAC|- rs1_val==-1431655766 and imm_val==2<br>                                                                                            |[0x800007f4]:addi a1, a0, 2<br> [0x800007f8]:sw a1, 432(ra)<br>       |
| 129|[0x80004214]<br>0xAAAAAFFE|- rs1_val==-1431655766 and imm_val==1364<br>                                                                                         |[0x80000804]:addi a1, a0, 1364<br> [0x80000808]:sw a1, 436(ra)<br>    |
| 130|[0x80004218]<br>0xAAAAAAAA|- rs1_val==-1431655766 and imm_val==0<br>                                                                                            |[0x80000814]:addi a1, a0, 0<br> [0x80000818]:sw a1, 440(ra)<br>       |
| 131|[0x8000421c]<br>0xAAAAAAAE|- rs1_val==-1431655766 and imm_val==4<br>                                                                                            |[0x80000824]:addi a1, a0, 4<br> [0x80000828]:sw a1, 444(ra)<br>       |
| 132|[0x80004220]<br>0xAAAAADDC|- rs1_val==-1431655766 and imm_val==818<br>                                                                                          |[0x80000834]:addi a1, a0, 818<br> [0x80000838]:sw a1, 448(ra)<br>     |
| 133|[0x80004224]<br>0xAAAAB10F|- rs1_val==-1431655766 and imm_val==1637<br>                                                                                         |[0x80000844]:addi a1, a0, 1637<br> [0x80000848]:sw a1, 452(ra)<br>    |
| 134|[0x80004228]<br>0xAAAAAAD6|- rs1_val==-1431655766 and imm_val==44<br>                                                                                           |[0x80000854]:addi a1, a0, 44<br> [0x80000858]:sw a1, 456(ra)<br>      |
| 135|[0x8000422c]<br>0xAAAAB000|- rs1_val==-1431655766 and imm_val==1366<br>                                                                                         |[0x80000864]:addi a1, a0, 1366<br> [0x80000868]:sw a1, 460(ra)<br>    |
| 136|[0x80004230]<br>0xAAAAA555|- rs1_val==-1431655766 and imm_val==-1365<br>                                                                                        |[0x80000874]:addi a1, a0, 2731<br> [0x80000878]:sw a1, 464(ra)<br>    |
| 137|[0x80004234]<br>0xAAAAAAB0|- rs1_val==-1431655766 and imm_val==6<br>                                                                                            |[0x80000884]:addi a1, a0, 6<br> [0x80000888]:sw a1, 468(ra)<br>       |
| 138|[0x80004238]<br>0xAAAAADDE|- rs1_val==-1431655766 and imm_val==820<br>                                                                                          |[0x80000894]:addi a1, a0, 820<br> [0x80000898]:sw a1, 472(ra)<br>     |
| 139|[0x8000423c]<br>0xAAAAB111|- rs1_val==-1431655766 and imm_val==1639<br>                                                                                         |[0x800008a4]:addi a1, a0, 1639<br> [0x800008a8]:sw a1, 476(ra)<br>    |
| 140|[0x80004240]<br>0xAAAAAA7E|- rs1_val==-1431655766 and imm_val==-44<br>                                                                                          |[0x800008b4]:addi a1, a0, 4052<br> [0x800008b8]:sw a1, 480(ra)<br>    |
| 141|[0x80004244]<br>0xAAAAAAD8|- rs1_val==-1431655766 and imm_val==46<br>                                                                                           |[0x800008c4]:addi a1, a0, 46<br> [0x800008c8]:sw a1, 484(ra)<br>      |
| 142|[0x80004248]<br>0x00000008|- rs1_val==5 and imm_val==3<br>                                                                                                      |[0x800008d0]:addi a1, a0, 3<br> [0x800008d4]:sw a1, 488(ra)<br>       |
| 143|[0x8000424c]<br>0x0000055A|- rs1_val==5 and imm_val==1365<br>                                                                                                   |[0x800008dc]:addi a1, a0, 1365<br> [0x800008e0]:sw a1, 492(ra)<br>    |
| 144|[0x80004250]<br>0xFFFFFAAF|- rs1_val==5 and imm_val==-1366<br>                                                                                                  |[0x800008e8]:addi a1, a0, 2730<br> [0x800008ec]:sw a1, 496(ra)<br>    |
| 145|[0x80004254]<br>0x0000000A|- rs1_val==5 and imm_val==5<br>                                                                                                      |[0x800008f4]:addi a1, a0, 5<br> [0x800008f8]:sw a1, 500(ra)<br>       |
| 146|[0x80004258]<br>0x00000338|- rs1_val==5 and imm_val==819<br>                                                                                                    |[0x80000900]:addi a1, a0, 819<br> [0x80000904]:sw a1, 504(ra)<br>     |
| 147|[0x8000425c]<br>0x0000066B|- rs1_val==5 and imm_val==1638<br>                                                                                                   |[0x8000090c]:addi a1, a0, 1638<br> [0x80000910]:sw a1, 508(ra)<br>    |
| 148|[0x80004260]<br>0xFFFFFFD8|- rs1_val==5 and imm_val==-45<br>                                                                                                    |[0x80000918]:addi a1, a0, 4051<br> [0x8000091c]:sw a1, 512(ra)<br>    |
| 149|[0x80004264]<br>0x00000032|- rs1_val==5 and imm_val==45<br>                                                                                                     |[0x80000924]:addi a1, a0, 45<br> [0x80000928]:sw a1, 516(ra)<br>      |
| 150|[0x80004268]<br>0x00000007|- rs1_val==5 and imm_val==2<br>                                                                                                      |[0x80000930]:addi a1, a0, 2<br> [0x80000934]:sw a1, 520(ra)<br>       |
| 151|[0x8000426c]<br>0x00000559|- rs1_val==5 and imm_val==1364<br>                                                                                                   |[0x8000093c]:addi a1, a0, 1364<br> [0x80000940]:sw a1, 524(ra)<br>    |
| 152|[0x80004270]<br>0x00000005|- rs1_val==5 and imm_val==0<br>                                                                                                      |[0x80000948]:addi a1, a0, 0<br> [0x8000094c]:sw a1, 528(ra)<br>       |
| 153|[0x80004274]<br>0x00000009|- rs1_val==5 and imm_val==4<br>                                                                                                      |[0x80000954]:addi a1, a0, 4<br> [0x80000958]:sw a1, 532(ra)<br>       |
| 154|[0x80004278]<br>0x00000337|- rs1_val==5 and imm_val==818<br>                                                                                                    |[0x80000960]:addi a1, a0, 818<br> [0x80000964]:sw a1, 536(ra)<br>     |
| 155|[0x8000427c]<br>0x0000066A|- rs1_val==5 and imm_val==1637<br>                                                                                                   |[0x8000096c]:addi a1, a0, 1637<br> [0x80000970]:sw a1, 540(ra)<br>    |
| 156|[0x80004280]<br>0x00000031|- rs1_val==5 and imm_val==44<br>                                                                                                     |[0x80000978]:addi a1, a0, 44<br> [0x8000097c]:sw a1, 544(ra)<br>      |
| 157|[0x80004284]<br>0x0000055B|- rs1_val==5 and imm_val==1366<br>                                                                                                   |[0x80000984]:addi a1, a0, 1366<br> [0x80000988]:sw a1, 548(ra)<br>    |
| 158|[0x80004288]<br>0xFFFFFAB0|- rs1_val==5 and imm_val==-1365<br>                                                                                                  |[0x80000990]:addi a1, a0, 2731<br> [0x80000994]:sw a1, 552(ra)<br>    |
| 159|[0x8000428c]<br>0x0000000B|- rs1_val==5 and imm_val==6<br>                                                                                                      |[0x8000099c]:addi a1, a0, 6<br> [0x800009a0]:sw a1, 556(ra)<br>       |
| 160|[0x80004290]<br>0x00000339|- rs1_val==5 and imm_val==820<br>                                                                                                    |[0x800009a8]:addi a1, a0, 820<br> [0x800009ac]:sw a1, 560(ra)<br>     |
| 161|[0x80004294]<br>0x0000066C|- rs1_val==5 and imm_val==1639<br>                                                                                                   |[0x800009b4]:addi a1, a0, 1639<br> [0x800009b8]:sw a1, 564(ra)<br>    |
| 162|[0x80004298]<br>0xFFFFFFD9|- rs1_val==5 and imm_val==-44<br>                                                                                                    |[0x800009c0]:addi a1, a0, 4052<br> [0x800009c4]:sw a1, 568(ra)<br>    |
| 163|[0x8000429c]<br>0x00000033|- rs1_val==5 and imm_val==46<br>                                                                                                     |[0x800009cc]:addi a1, a0, 46<br> [0x800009d0]:sw a1, 572(ra)<br>      |
| 164|[0x800042a0]<br>0x33333336|- rs1_val==858993459 and imm_val==3<br>                                                                                              |[0x800009dc]:addi a1, a0, 3<br> [0x800009e0]:sw a1, 576(ra)<br>       |
| 165|[0x800042a4]<br>0x33333888|- rs1_val==858993459 and imm_val==1365<br>                                                                                           |[0x800009ec]:addi a1, a0, 1365<br> [0x800009f0]:sw a1, 580(ra)<br>    |
| 166|[0x800042a8]<br>0x33332DDD|- rs1_val==858993459 and imm_val==-1366<br>                                                                                          |[0x800009fc]:addi a1, a0, 2730<br> [0x80000a00]:sw a1, 584(ra)<br>    |
| 167|[0x800042ac]<br>0x33333338|- rs1_val==858993459 and imm_val==5<br>                                                                                              |[0x80000a0c]:addi a1, a0, 5<br> [0x80000a10]:sw a1, 588(ra)<br>       |
| 168|[0x800042b0]<br>0x33333666|- rs1_val==858993459 and imm_val==819<br>                                                                                            |[0x80000a1c]:addi a1, a0, 819<br> [0x80000a20]:sw a1, 592(ra)<br>     |
| 169|[0x800042b4]<br>0x33333999|- rs1_val==858993459 and imm_val==1638<br>                                                                                           |[0x80000a2c]:addi a1, a0, 1638<br> [0x80000a30]:sw a1, 596(ra)<br>    |
| 170|[0x800042b8]<br>0x33333306|- rs1_val==858993459 and imm_val==-45<br>                                                                                            |[0x80000a3c]:addi a1, a0, 4051<br> [0x80000a40]:sw a1, 600(ra)<br>    |
| 171|[0x800042bc]<br>0x33333360|- rs1_val==858993459 and imm_val==45<br>                                                                                             |[0x80000a4c]:addi a1, a0, 45<br> [0x80000a50]:sw a1, 604(ra)<br>      |
| 172|[0x800042c0]<br>0x33333335|- rs1_val==858993459 and imm_val==2<br>                                                                                              |[0x80000a5c]:addi a1, a0, 2<br> [0x80000a60]:sw a1, 608(ra)<br>       |
| 173|[0x800042c4]<br>0x33333887|- rs1_val==858993459 and imm_val==1364<br>                                                                                           |[0x80000a6c]:addi a1, a0, 1364<br> [0x80000a70]:sw a1, 612(ra)<br>    |
| 174|[0x800042c8]<br>0x33333333|- rs1_val==858993459 and imm_val==0<br>                                                                                              |[0x80000a7c]:addi a1, a0, 0<br> [0x80000a80]:sw a1, 616(ra)<br>       |
| 175|[0x800042cc]<br>0x33333337|- rs1_val==858993459 and imm_val==4<br>                                                                                              |[0x80000a8c]:addi a1, a0, 4<br> [0x80000a90]:sw a1, 620(ra)<br>       |
| 176|[0x800042d0]<br>0x33333665|- rs1_val==858993459 and imm_val==818<br>                                                                                            |[0x80000a9c]:addi a1, a0, 818<br> [0x80000aa0]:sw a1, 624(ra)<br>     |
| 177|[0x800042d4]<br>0x33333998|- rs1_val==858993459 and imm_val==1637<br>                                                                                           |[0x80000aac]:addi a1, a0, 1637<br> [0x80000ab0]:sw a1, 628(ra)<br>    |
| 178|[0x800042d8]<br>0x3333335F|- rs1_val==858993459 and imm_val==44<br>                                                                                             |[0x80000abc]:addi a1, a0, 44<br> [0x80000ac0]:sw a1, 632(ra)<br>      |
| 179|[0x800042dc]<br>0x33333889|- rs1_val==858993459 and imm_val==1366<br>                                                                                           |[0x80000acc]:addi a1, a0, 1366<br> [0x80000ad0]:sw a1, 636(ra)<br>    |
| 180|[0x800042e0]<br>0x33332DDE|- rs1_val==858993459 and imm_val==-1365<br>                                                                                          |[0x80000adc]:addi a1, a0, 2731<br> [0x80000ae0]:sw a1, 640(ra)<br>    |
| 181|[0x800042e4]<br>0x33333339|- rs1_val==858993459 and imm_val==6<br>                                                                                              |[0x80000aec]:addi a1, a0, 6<br> [0x80000af0]:sw a1, 644(ra)<br>       |
| 182|[0x800042e8]<br>0x33333667|- rs1_val==858993459 and imm_val==820<br>                                                                                            |[0x80000afc]:addi a1, a0, 820<br> [0x80000b00]:sw a1, 648(ra)<br>     |
| 183|[0x800042ec]<br>0x3333399A|- rs1_val==858993459 and imm_val==1639<br>                                                                                           |[0x80000b0c]:addi a1, a0, 1639<br> [0x80000b10]:sw a1, 652(ra)<br>    |
| 184|[0x800042f0]<br>0x33333307|- rs1_val==858993459 and imm_val==-44<br>                                                                                            |[0x80000b1c]:addi a1, a0, 4052<br> [0x80000b20]:sw a1, 656(ra)<br>    |
| 185|[0x800042f4]<br>0x33333361|- rs1_val==858993459 and imm_val==46<br>                                                                                             |[0x80000b2c]:addi a1, a0, 46<br> [0x80000b30]:sw a1, 660(ra)<br>      |
| 186|[0x800042f8]<br>0x66666669|- rs1_val==1717986918 and imm_val==3<br>                                                                                             |[0x80000b3c]:addi a1, a0, 3<br> [0x80000b40]:sw a1, 664(ra)<br>       |
| 187|[0x800042fc]<br>0x66666BBB|- rs1_val==1717986918 and imm_val==1365<br>                                                                                          |[0x80000b4c]:addi a1, a0, 1365<br> [0x80000b50]:sw a1, 668(ra)<br>    |
| 188|[0x80004300]<br>0x66666110|- rs1_val==1717986918 and imm_val==-1366<br>                                                                                         |[0x80000b5c]:addi a1, a0, 2730<br> [0x80000b60]:sw a1, 672(ra)<br>    |
| 189|[0x80004304]<br>0x6666666B|- rs1_val==1717986918 and imm_val==5<br>                                                                                             |[0x80000b6c]:addi a1, a0, 5<br> [0x80000b70]:sw a1, 676(ra)<br>       |
| 190|[0x80004308]<br>0x66666999|- rs1_val==1717986918 and imm_val==819<br>                                                                                           |[0x80000b7c]:addi a1, a0, 819<br> [0x80000b80]:sw a1, 680(ra)<br>     |
| 191|[0x8000430c]<br>0x66666CCC|- rs1_val==1717986918 and imm_val==1638<br>                                                                                          |[0x80000b8c]:addi a1, a0, 1638<br> [0x80000b90]:sw a1, 684(ra)<br>    |
| 192|[0x80004310]<br>0x66666639|- rs1_val==1717986918 and imm_val==-45<br>                                                                                           |[0x80000b9c]:addi a1, a0, 4051<br> [0x80000ba0]:sw a1, 688(ra)<br>    |
| 193|[0x80004314]<br>0x66666693|- rs1_val==1717986918 and imm_val==45<br>                                                                                            |[0x80000bac]:addi a1, a0, 45<br> [0x80000bb0]:sw a1, 692(ra)<br>      |
| 194|[0x80004318]<br>0x66666668|- rs1_val==1717986918 and imm_val==2<br>                                                                                             |[0x80000bbc]:addi a1, a0, 2<br> [0x80000bc0]:sw a1, 696(ra)<br>       |
| 195|[0x8000431c]<br>0x66666BBA|- rs1_val==1717986918 and imm_val==1364<br>                                                                                          |[0x80000bcc]:addi a1, a0, 1364<br> [0x80000bd0]:sw a1, 700(ra)<br>    |
| 196|[0x80004320]<br>0x66666666|- rs1_val==1717986918 and imm_val==0<br>                                                                                             |[0x80000bdc]:addi a1, a0, 0<br> [0x80000be0]:sw a1, 704(ra)<br>       |
| 197|[0x80004324]<br>0x6666666A|- rs1_val==1717986918 and imm_val==4<br>                                                                                             |[0x80000bec]:addi a1, a0, 4<br> [0x80000bf0]:sw a1, 708(ra)<br>       |
| 198|[0x80004328]<br>0x66666998|- rs1_val==1717986918 and imm_val==818<br>                                                                                           |[0x80000bfc]:addi a1, a0, 818<br> [0x80000c00]:sw a1, 712(ra)<br>     |
| 199|[0x8000432c]<br>0x66666CCB|- rs1_val==1717986918 and imm_val==1637<br>                                                                                          |[0x80000c0c]:addi a1, a0, 1637<br> [0x80000c10]:sw a1, 716(ra)<br>    |
| 200|[0x80004330]<br>0x66666692|- rs1_val==1717986918 and imm_val==44<br>                                                                                            |[0x80000c1c]:addi a1, a0, 44<br> [0x80000c20]:sw a1, 720(ra)<br>      |
| 201|[0x80004334]<br>0x66666BBC|- rs1_val==1717986918 and imm_val==1366<br>                                                                                          |[0x80000c2c]:addi a1, a0, 1366<br> [0x80000c30]:sw a1, 724(ra)<br>    |
| 202|[0x80004338]<br>0x66666111|- rs1_val==1717986918 and imm_val==-1365<br>                                                                                         |[0x80000c3c]:addi a1, a0, 2731<br> [0x80000c40]:sw a1, 728(ra)<br>    |
| 203|[0x8000433c]<br>0x6666666C|- rs1_val==1717986918 and imm_val==6<br>                                                                                             |[0x80000c4c]:addi a1, a0, 6<br> [0x80000c50]:sw a1, 732(ra)<br>       |
| 204|[0x80004340]<br>0x6666699A|- rs1_val==1717986918 and imm_val==820<br>                                                                                           |[0x80000c5c]:addi a1, a0, 820<br> [0x80000c60]:sw a1, 736(ra)<br>     |
| 205|[0x80004344]<br>0x66666CCD|- rs1_val==1717986918 and imm_val==1639<br>                                                                                          |[0x80000c6c]:addi a1, a0, 1639<br> [0x80000c70]:sw a1, 740(ra)<br>    |
| 206|[0x80004348]<br>0x6666663A|- rs1_val==1717986918 and imm_val==-44<br>                                                                                           |[0x80000c7c]:addi a1, a0, 4052<br> [0x80000c80]:sw a1, 744(ra)<br>    |
| 207|[0x8000434c]<br>0x66666694|- rs1_val==1717986918 and imm_val==46<br>                                                                                            |[0x80000c8c]:addi a1, a0, 46<br> [0x80000c90]:sw a1, 748(ra)<br>      |
| 208|[0x80004350]<br>0xFFFF4AFF|- rs1_val==-46340 and imm_val==3<br>                                                                                                 |[0x80000c9c]:addi a1, a0, 3<br> [0x80000ca0]:sw a1, 752(ra)<br>       |
| 209|[0x80004354]<br>0xFFFF5051|- rs1_val==-46340 and imm_val==1365<br>                                                                                              |[0x80000cac]:addi a1, a0, 1365<br> [0x80000cb0]:sw a1, 756(ra)<br>    |
| 210|[0x80004358]<br>0xFFFF45A6|- rs1_val==-46340 and imm_val==-1366<br>                                                                                             |[0x80000cbc]:addi a1, a0, 2730<br> [0x80000cc0]:sw a1, 760(ra)<br>    |
| 211|[0x8000435c]<br>0xFFFF4B01|- rs1_val==-46340 and imm_val==5<br>                                                                                                 |[0x80000ccc]:addi a1, a0, 5<br> [0x80000cd0]:sw a1, 764(ra)<br>       |
| 212|[0x80004360]<br>0xFFFF4E2F|- rs1_val==-46340 and imm_val==819<br>                                                                                               |[0x80000cdc]:addi a1, a0, 819<br> [0x80000ce0]:sw a1, 768(ra)<br>     |
| 213|[0x80004364]<br>0xFFFF5162|- rs1_val==-46340 and imm_val==1638<br>                                                                                              |[0x80000cec]:addi a1, a0, 1638<br> [0x80000cf0]:sw a1, 772(ra)<br>    |
| 214|[0x80004368]<br>0xFFFF4ACF|- rs1_val==-46340 and imm_val==-45<br>                                                                                               |[0x80000cfc]:addi a1, a0, 4051<br> [0x80000d00]:sw a1, 776(ra)<br>    |
| 215|[0x8000436c]<br>0xFFFF4B29|- rs1_val==-46340 and imm_val==45<br>                                                                                                |[0x80000d0c]:addi a1, a0, 45<br> [0x80000d10]:sw a1, 780(ra)<br>      |
| 216|[0x80004370]<br>0xFFFF4AFE|- rs1_val==-46340 and imm_val==2<br>                                                                                                 |[0x80000d1c]:addi a1, a0, 2<br> [0x80000d20]:sw a1, 784(ra)<br>       |
| 217|[0x80004374]<br>0xFFFF5050|- rs1_val==-46340 and imm_val==1364<br>                                                                                              |[0x80000d2c]:addi a1, a0, 1364<br> [0x80000d30]:sw a1, 788(ra)<br>    |
| 218|[0x80004378]<br>0xFFFF4AFC|- rs1_val==-46340 and imm_val==0<br>                                                                                                 |[0x80000d3c]:addi a1, a0, 0<br> [0x80000d40]:sw a1, 792(ra)<br>       |
| 219|[0x8000437c]<br>0xFFFF4B00|- rs1_val==-46340 and imm_val==4<br>                                                                                                 |[0x80000d4c]:addi a1, a0, 4<br> [0x80000d50]:sw a1, 796(ra)<br>       |
| 220|[0x80004380]<br>0xFFFF4E2E|- rs1_val==-46340 and imm_val==818<br>                                                                                               |[0x80000d5c]:addi a1, a0, 818<br> [0x80000d60]:sw a1, 800(ra)<br>     |
| 221|[0x80004384]<br>0xFFFF5161|- rs1_val==-46340 and imm_val==1637<br>                                                                                              |[0x80000d6c]:addi a1, a0, 1637<br> [0x80000d70]:sw a1, 804(ra)<br>    |
| 222|[0x80004388]<br>0xFFFF4B28|- rs1_val==-46340 and imm_val==44<br>                                                                                                |[0x80000d7c]:addi a1, a0, 44<br> [0x80000d80]:sw a1, 808(ra)<br>      |
| 223|[0x8000438c]<br>0xFFFF5052|- rs1_val==-46340 and imm_val==1366<br>                                                                                              |[0x80000d8c]:addi a1, a0, 1366<br> [0x80000d90]:sw a1, 812(ra)<br>    |
| 224|[0x80004390]<br>0xFFFF45A7|- rs1_val==-46340 and imm_val==-1365<br>                                                                                             |[0x80000d9c]:addi a1, a0, 2731<br> [0x80000da0]:sw a1, 816(ra)<br>    |
| 225|[0x80004394]<br>0xFFFF4B02|- rs1_val==-46340 and imm_val==6<br>                                                                                                 |[0x80000dac]:addi a1, a0, 6<br> [0x80000db0]:sw a1, 820(ra)<br>       |
| 226|[0x80004398]<br>0xFFFF4E30|- rs1_val==-46340 and imm_val==820<br>                                                                                               |[0x80000dbc]:addi a1, a0, 820<br> [0x80000dc0]:sw a1, 824(ra)<br>     |
| 227|[0x8000439c]<br>0xFFFF5163|- rs1_val==-46340 and imm_val==1639<br>                                                                                              |[0x80000dcc]:addi a1, a0, 1639<br> [0x80000dd0]:sw a1, 828(ra)<br>    |
| 228|[0x800043a0]<br>0xFFFF4AD0|- rs1_val==-46340 and imm_val==-44<br>                                                                                               |[0x80000ddc]:addi a1, a0, 4052<br> [0x80000de0]:sw a1, 832(ra)<br>    |
| 229|[0x800043a4]<br>0xFFFF4B2A|- rs1_val==-46340 and imm_val==46<br>                                                                                                |[0x80000dec]:addi a1, a0, 46<br> [0x80000df0]:sw a1, 836(ra)<br>      |
| 230|[0x800043a8]<br>0x0000B507|- rs1_val==46340 and imm_val==3<br>                                                                                                  |[0x80000dfc]:addi a1, a0, 3<br> [0x80000e00]:sw a1, 840(ra)<br>       |
| 231|[0x800043ac]<br>0x0000BA59|- rs1_val==46340 and imm_val==1365<br>                                                                                               |[0x80000e0c]:addi a1, a0, 1365<br> [0x80000e10]:sw a1, 844(ra)<br>    |
| 232|[0x800043b0]<br>0x0000AFAE|- rs1_val==46340 and imm_val==-1366<br>                                                                                              |[0x80000e1c]:addi a1, a0, 2730<br> [0x80000e20]:sw a1, 848(ra)<br>    |
| 233|[0x800043b4]<br>0x0000B509|- rs1_val==46340 and imm_val==5<br>                                                                                                  |[0x80000e2c]:addi a1, a0, 5<br> [0x80000e30]:sw a1, 852(ra)<br>       |
| 234|[0x800043b8]<br>0x0000B837|- rs1_val==46340 and imm_val==819<br>                                                                                                |[0x80000e3c]:addi a1, a0, 819<br> [0x80000e40]:sw a1, 856(ra)<br>     |
| 235|[0x800043bc]<br>0x0000BB6A|- rs1_val==46340 and imm_val==1638<br>                                                                                               |[0x80000e4c]:addi a1, a0, 1638<br> [0x80000e50]:sw a1, 860(ra)<br>    |
| 236|[0x800043c0]<br>0x0000B4D7|- rs1_val==46340 and imm_val==-45<br>                                                                                                |[0x80000e5c]:addi a1, a0, 4051<br> [0x80000e60]:sw a1, 864(ra)<br>    |
| 237|[0x800043c4]<br>0x0000B531|- rs1_val==46340 and imm_val==45<br>                                                                                                 |[0x80000e6c]:addi a1, a0, 45<br> [0x80000e70]:sw a1, 868(ra)<br>      |
| 238|[0x800043c8]<br>0x0000B506|- rs1_val==46340 and imm_val==2<br>                                                                                                  |[0x80000e7c]:addi a1, a0, 2<br> [0x80000e80]:sw a1, 872(ra)<br>       |
| 239|[0x800043cc]<br>0x0000BA58|- rs1_val==46340 and imm_val==1364<br>                                                                                               |[0x80000e8c]:addi a1, a0, 1364<br> [0x80000e90]:sw a1, 876(ra)<br>    |
| 240|[0x800043d0]<br>0x0000B504|- rs1_val==46340 and imm_val==0<br>                                                                                                  |[0x80000e9c]:addi a1, a0, 0<br> [0x80000ea0]:sw a1, 880(ra)<br>       |
| 241|[0x800043d4]<br>0x0000B508|- rs1_val==46340 and imm_val==4<br>                                                                                                  |[0x80000eac]:addi a1, a0, 4<br> [0x80000eb0]:sw a1, 884(ra)<br>       |
| 242|[0x800043d8]<br>0x0000B836|- rs1_val==46340 and imm_val==818<br>                                                                                                |[0x80000ebc]:addi a1, a0, 818<br> [0x80000ec0]:sw a1, 888(ra)<br>     |
| 243|[0x800043dc]<br>0x0000BB69|- rs1_val==46340 and imm_val==1637<br>                                                                                               |[0x80000ecc]:addi a1, a0, 1637<br> [0x80000ed0]:sw a1, 892(ra)<br>    |
| 244|[0x800043e0]<br>0x0000B530|- rs1_val==46340 and imm_val==44<br>                                                                                                 |[0x80000edc]:addi a1, a0, 44<br> [0x80000ee0]:sw a1, 896(ra)<br>      |
| 245|[0x800043e4]<br>0x0000BA5A|- rs1_val==46340 and imm_val==1366<br>                                                                                               |[0x80000eec]:addi a1, a0, 1366<br> [0x80000ef0]:sw a1, 900(ra)<br>    |
| 246|[0x800043e8]<br>0x0000AFAF|- rs1_val==46340 and imm_val==-1365<br>                                                                                              |[0x80000efc]:addi a1, a0, 2731<br> [0x80000f00]:sw a1, 904(ra)<br>    |
| 247|[0x800043ec]<br>0x0000B50A|- rs1_val==46340 and imm_val==6<br>                                                                                                  |[0x80000f0c]:addi a1, a0, 6<br> [0x80000f10]:sw a1, 908(ra)<br>       |
| 248|[0x800043f0]<br>0x0000B838|- rs1_val==46340 and imm_val==820<br>                                                                                                |[0x80000f1c]:addi a1, a0, 820<br> [0x80000f20]:sw a1, 912(ra)<br>     |
| 249|[0x800043f4]<br>0x0000BB6B|- rs1_val==46340 and imm_val==1639<br>                                                                                               |[0x80000f2c]:addi a1, a0, 1639<br> [0x80000f30]:sw a1, 916(ra)<br>    |
| 250|[0x800043f8]<br>0x0000B4D8|- rs1_val==46340 and imm_val==-44<br>                                                                                                |[0x80000f3c]:addi a1, a0, 4052<br> [0x80000f40]:sw a1, 920(ra)<br>    |
| 251|[0x800043fc]<br>0x0000B532|- rs1_val==46340 and imm_val==46<br>                                                                                                 |[0x80000f4c]:addi a1, a0, 46<br> [0x80000f50]:sw a1, 924(ra)<br>      |
| 252|[0x80004400]<br>0x00000005|- rs1_val==2 and imm_val==3<br>                                                                                                      |[0x80000f58]:addi a1, a0, 3<br> [0x80000f5c]:sw a1, 928(ra)<br>       |
| 253|[0x80004404]<br>0x00000557|- rs1_val==2 and imm_val==1365<br>                                                                                                   |[0x80000f64]:addi a1, a0, 1365<br> [0x80000f68]:sw a1, 932(ra)<br>    |
| 254|[0x80004408]<br>0xFFFFFAAC|- rs1_val==2 and imm_val==-1366<br>                                                                                                  |[0x80000f70]:addi a1, a0, 2730<br> [0x80000f74]:sw a1, 936(ra)<br>    |
| 255|[0x8000440c]<br>0x00000007|- rs1_val==2 and imm_val==5<br>                                                                                                      |[0x80000f7c]:addi a1, a0, 5<br> [0x80000f80]:sw a1, 940(ra)<br>       |
| 256|[0x80004410]<br>0x00000335|- rs1_val==2 and imm_val==819<br>                                                                                                    |[0x80000f88]:addi a1, a0, 819<br> [0x80000f8c]:sw a1, 944(ra)<br>     |
| 257|[0x80004414]<br>0x00000668|- rs1_val==2 and imm_val==1638<br>                                                                                                   |[0x80000f94]:addi a1, a0, 1638<br> [0x80000f98]:sw a1, 948(ra)<br>    |
| 258|[0x80004418]<br>0xFFFFFFD5|- rs1_val==2 and imm_val==-45<br>                                                                                                    |[0x80000fa0]:addi a1, a0, 4051<br> [0x80000fa4]:sw a1, 952(ra)<br>    |
| 259|[0x8000441c]<br>0x0000002F|- rs1_val==2 and imm_val==45<br>                                                                                                     |[0x80000fac]:addi a1, a0, 45<br> [0x80000fb0]:sw a1, 956(ra)<br>      |
| 260|[0x80004420]<br>0x00000004|- rs1_val==2 and imm_val==2<br>                                                                                                      |[0x80000fb8]:addi a1, a0, 2<br> [0x80000fbc]:sw a1, 960(ra)<br>       |
| 261|[0x80004424]<br>0x00000556|- rs1_val==2 and imm_val==1364<br>                                                                                                   |[0x80000fc4]:addi a1, a0, 1364<br> [0x80000fc8]:sw a1, 964(ra)<br>    |
| 262|[0x80004428]<br>0x00000002|- rs1_val==2 and imm_val==0<br>                                                                                                      |[0x80000fd0]:addi a1, a0, 0<br> [0x80000fd4]:sw a1, 968(ra)<br>       |
| 263|[0x8000442c]<br>0x00000006|- rs1_val==2 and imm_val==4<br>                                                                                                      |[0x80000fdc]:addi a1, a0, 4<br> [0x80000fe0]:sw a1, 972(ra)<br>       |
| 264|[0x80004430]<br>0x00000334|- rs1_val==2 and imm_val==818<br>                                                                                                    |[0x80000fe8]:addi a1, a0, 818<br> [0x80000fec]:sw a1, 976(ra)<br>     |
| 265|[0x80004434]<br>0x00000667|- rs1_val==2 and imm_val==1637<br>                                                                                                   |[0x80000ff4]:addi a1, a0, 1637<br> [0x80000ff8]:sw a1, 980(ra)<br>    |
| 266|[0x80004438]<br>0x0000002E|- rs1_val==2 and imm_val==44<br>                                                                                                     |[0x80001000]:addi a1, a0, 44<br> [0x80001004]:sw a1, 984(ra)<br>      |
| 267|[0x8000443c]<br>0x00000558|- rs1_val==2 and imm_val==1366<br>                                                                                                   |[0x8000100c]:addi a1, a0, 1366<br> [0x80001010]:sw a1, 988(ra)<br>    |
| 268|[0x80004440]<br>0xFFFFFAAD|- rs1_val==2 and imm_val==-1365<br>                                                                                                  |[0x80001018]:addi a1, a0, 2731<br> [0x8000101c]:sw a1, 992(ra)<br>    |
| 269|[0x80004444]<br>0x00000008|- rs1_val==2 and imm_val==6<br>                                                                                                      |[0x80001024]:addi a1, a0, 6<br> [0x80001028]:sw a1, 996(ra)<br>       |
| 270|[0x80004448]<br>0x00000336|- rs1_val==2 and imm_val==820<br>                                                                                                    |[0x80001030]:addi a1, a0, 820<br> [0x80001034]:sw a1, 1000(ra)<br>    |
| 271|[0x8000444c]<br>0x00000669|- rs1_val==2 and imm_val==1639<br>                                                                                                   |[0x8000103c]:addi a1, a0, 1639<br> [0x80001040]:sw a1, 1004(ra)<br>   |
| 272|[0x80004450]<br>0xFFFFFFD6|- rs1_val==2 and imm_val==-44<br>                                                                                                    |[0x80001048]:addi a1, a0, 4052<br> [0x8000104c]:sw a1, 1008(ra)<br>   |
| 273|[0x80004454]<br>0x00000030|- rs1_val==2 and imm_val==46<br>                                                                                                     |[0x80001054]:addi a1, a0, 46<br> [0x80001058]:sw a1, 1012(ra)<br>     |
| 274|[0x80004458]<br>0x55555557|- rs1_val==1431655764 and imm_val==3<br>                                                                                             |[0x80001064]:addi a1, a0, 3<br> [0x80001068]:sw a1, 1016(ra)<br>      |
| 275|[0x8000445c]<br>0x55555AA9|- rs1_val==1431655764 and imm_val==1365<br>                                                                                          |[0x80001074]:addi a1, a0, 1365<br> [0x80001078]:sw a1, 1020(ra)<br>   |
| 276|[0x80004460]<br>0x55554FFE|- rs1_val==1431655764 and imm_val==-1366<br>                                                                                         |[0x80001084]:addi a1, a0, 2730<br> [0x80001088]:sw a1, 1024(ra)<br>   |
| 277|[0x80004464]<br>0x55555559|- rs1_val==1431655764 and imm_val==5<br>                                                                                             |[0x80001094]:addi a1, a0, 5<br> [0x80001098]:sw a1, 1028(ra)<br>      |
| 278|[0x80004468]<br>0x55555887|- rs1_val==1431655764 and imm_val==819<br>                                                                                           |[0x800010a4]:addi a1, a0, 819<br> [0x800010a8]:sw a1, 1032(ra)<br>    |
| 279|[0x8000446c]<br>0x55555BBA|- rs1_val==1431655764 and imm_val==1638<br>                                                                                          |[0x800010b4]:addi a1, a0, 1638<br> [0x800010b8]:sw a1, 1036(ra)<br>   |
| 280|[0x80004470]<br>0x55555527|- rs1_val==1431655764 and imm_val==-45<br>                                                                                           |[0x800010c4]:addi a1, a0, 4051<br> [0x800010c8]:sw a1, 1040(ra)<br>   |
| 281|[0x80004474]<br>0x55555581|- rs1_val==1431655764 and imm_val==45<br>                                                                                            |[0x800010d4]:addi a1, a0, 45<br> [0x800010d8]:sw a1, 1044(ra)<br>     |
| 282|[0x80004478]<br>0x55555556|- rs1_val==1431655764 and imm_val==2<br>                                                                                             |[0x800010e4]:addi a1, a0, 2<br> [0x800010e8]:sw a1, 1048(ra)<br>      |
| 283|[0x8000447c]<br>0x55555AA8|- rs1_val==1431655764 and imm_val==1364<br>                                                                                          |[0x800010f4]:addi a1, a0, 1364<br> [0x800010f8]:sw a1, 1052(ra)<br>   |
| 284|[0x80004480]<br>0x55555554|- rs1_val==1431655764 and imm_val==0<br>                                                                                             |[0x80001104]:addi a1, a0, 0<br> [0x80001108]:sw a1, 1056(ra)<br>      |
| 285|[0x80004484]<br>0x55555558|- rs1_val==1431655764 and imm_val==4<br>                                                                                             |[0x80001114]:addi a1, a0, 4<br> [0x80001118]:sw a1, 1060(ra)<br>      |
| 286|[0x80004488]<br>0x55555886|- rs1_val==1431655764 and imm_val==818<br>                                                                                           |[0x80001124]:addi a1, a0, 818<br> [0x80001128]:sw a1, 1064(ra)<br>    |
| 287|[0x8000448c]<br>0x55555BB9|- rs1_val==1431655764 and imm_val==1637<br>                                                                                          |[0x80001134]:addi a1, a0, 1637<br> [0x80001138]:sw a1, 1068(ra)<br>   |
| 288|[0x80004490]<br>0x55555580|- rs1_val==1431655764 and imm_val==44<br>                                                                                            |[0x80001144]:addi a1, a0, 44<br> [0x80001148]:sw a1, 1072(ra)<br>     |
| 289|[0x80004494]<br>0x55555AAA|- rs1_val==1431655764 and imm_val==1366<br>                                                                                          |[0x80001154]:addi a1, a0, 1366<br> [0x80001158]:sw a1, 1076(ra)<br>   |
| 290|[0x80004498]<br>0x55554FFF|- rs1_val==1431655764 and imm_val==-1365<br>                                                                                         |[0x80001164]:addi a1, a0, 2731<br> [0x80001168]:sw a1, 1080(ra)<br>   |
| 291|[0x8000449c]<br>0x5555555A|- rs1_val==1431655764 and imm_val==6<br>                                                                                             |[0x80001174]:addi a1, a0, 6<br> [0x80001178]:sw a1, 1084(ra)<br>      |
| 292|[0x800044a0]<br>0x55555888|- rs1_val==1431655764 and imm_val==820<br>                                                                                           |[0x80001184]:addi a1, a0, 820<br> [0x80001188]:sw a1, 1088(ra)<br>    |
| 293|[0x800044a4]<br>0x55555BBB|- rs1_val==1431655764 and imm_val==1639<br>                                                                                          |[0x80001194]:addi a1, a0, 1639<br> [0x80001198]:sw a1, 1092(ra)<br>   |
| 294|[0x800044a8]<br>0x55555528|- rs1_val==1431655764 and imm_val==-44<br>                                                                                           |[0x800011a4]:addi a1, a0, 4052<br> [0x800011a8]:sw a1, 1096(ra)<br>   |
| 295|[0x800044ac]<br>0x55555582|- rs1_val==1431655764 and imm_val==46<br>                                                                                            |[0x800011b4]:addi a1, a0, 46<br> [0x800011b8]:sw a1, 1100(ra)<br>     |
| 296|[0x800044b4]<br>0x00000555|- rs1_val==0 and imm_val==1365<br>                                                                                                   |[0x800011cc]:addi a1, a0, 1365<br> [0x800011d0]:sw a1, 1108(ra)<br>   |
| 297|[0x800044b8]<br>0xFFFFFAAA|- rs1_val==0 and imm_val==-1366<br>                                                                                                  |[0x800011d8]:addi a1, a0, 2730<br> [0x800011dc]:sw a1, 1112(ra)<br>   |
| 298|[0x800044c0]<br>0x00000333|- rs1_val==0 and imm_val==819<br>                                                                                                    |[0x800011f0]:addi a1, a0, 819<br> [0x800011f4]:sw a1, 1120(ra)<br>    |
| 299|[0x800044c4]<br>0x00000666|- rs1_val==0 and imm_val==1638<br>                                                                                                   |[0x800011fc]:addi a1, a0, 1638<br> [0x80001200]:sw a1, 1124(ra)<br>   |
| 300|[0x800044c8]<br>0xFFFFFFD3|- rs1_val==0 and imm_val==-45<br>                                                                                                    |[0x80001208]:addi a1, a0, 4051<br> [0x8000120c]:sw a1, 1128(ra)<br>   |
| 301|[0x800044cc]<br>0x0000002D|- rs1_val==0 and imm_val==45<br>                                                                                                     |[0x80001214]:addi a1, a0, 45<br> [0x80001218]:sw a1, 1132(ra)<br>     |
| 302|[0x800044d0]<br>0x33333666|- rs1_val==858993460 and imm_val==818<br>                                                                                            |[0x80001224]:addi a1, a0, 818<br> [0x80001228]:sw a1, 1136(ra)<br>    |
| 303|[0x800044d4]<br>0x33333999|- rs1_val==858993460 and imm_val==1637<br>                                                                                           |[0x80001234]:addi a1, a0, 1637<br> [0x80001238]:sw a1, 1140(ra)<br>   |
| 304|[0x800044d8]<br>0x33333360|- rs1_val==858993460 and imm_val==44<br>                                                                                             |[0x80001244]:addi a1, a0, 44<br> [0x80001248]:sw a1, 1144(ra)<br>     |
| 305|[0x800044dc]<br>0x3333388A|- rs1_val==858993460 and imm_val==1366<br>                                                                                           |[0x80001254]:addi a1, a0, 1366<br> [0x80001258]:sw a1, 1148(ra)<br>   |
| 306|[0x800044e0]<br>0x33332DDF|- rs1_val==858993460 and imm_val==-1365<br>                                                                                          |[0x80001264]:addi a1, a0, 2731<br> [0x80001268]:sw a1, 1152(ra)<br>   |
| 307|[0x800044e4]<br>0x3333333A|- rs1_val==858993460 and imm_val==6<br>                                                                                              |[0x80001274]:addi a1, a0, 6<br> [0x80001278]:sw a1, 1156(ra)<br>      |
| 308|[0x800044e8]<br>0x33333668|- rs1_val==858993460 and imm_val==820<br>                                                                                            |[0x80001284]:addi a1, a0, 820<br> [0x80001288]:sw a1, 1160(ra)<br>    |
| 309|[0x800044ec]<br>0x3333399B|- rs1_val==858993460 and imm_val==1639<br>                                                                                           |[0x80001294]:addi a1, a0, 1639<br> [0x80001298]:sw a1, 1164(ra)<br>   |
| 310|[0x800044f0]<br>0x33333308|- rs1_val==858993460 and imm_val==-44<br>                                                                                            |[0x800012a4]:addi a1, a0, 4052<br> [0x800012a8]:sw a1, 1168(ra)<br>   |
| 311|[0x800044f4]<br>0x33333362|- rs1_val==858993460 and imm_val==46<br>                                                                                             |[0x800012b4]:addi a1, a0, 46<br> [0x800012b8]:sw a1, 1172(ra)<br>     |
| 312|[0x800044f8]<br>0x6666666A|- rs1_val==1717986919 and imm_val==3<br>                                                                                             |[0x800012c4]:addi a1, a0, 3<br> [0x800012c8]:sw a1, 1176(ra)<br>      |
| 313|[0x800044fc]<br>0x66666BBC|- rs1_val==1717986919 and imm_val==1365<br>                                                                                          |[0x800012d4]:addi a1, a0, 1365<br> [0x800012d8]:sw a1, 1180(ra)<br>   |
| 314|[0x80004500]<br>0x66666111|- rs1_val==1717986919 and imm_val==-1366<br>                                                                                         |[0x800012e4]:addi a1, a0, 2730<br> [0x800012e8]:sw a1, 1184(ra)<br>   |
| 315|[0x80004504]<br>0x6666666C|- rs1_val==1717986919 and imm_val==5<br>                                                                                             |[0x800012f4]:addi a1, a0, 5<br> [0x800012f8]:sw a1, 1188(ra)<br>      |
| 316|[0x80004508]<br>0x6666699A|- rs1_val==1717986919 and imm_val==819<br>                                                                                           |[0x80001304]:addi a1, a0, 819<br> [0x80001308]:sw a1, 1192(ra)<br>    |
| 317|[0x8000450c]<br>0x66666CCD|- rs1_val==1717986919 and imm_val==1638<br>                                                                                          |[0x80001314]:addi a1, a0, 1638<br> [0x80001318]:sw a1, 1196(ra)<br>   |
| 318|[0x80004510]<br>0x6666663A|- rs1_val==1717986919 and imm_val==-45<br>                                                                                           |[0x80001324]:addi a1, a0, 4051<br> [0x80001328]:sw a1, 1200(ra)<br>   |
| 319|[0x80004514]<br>0x66666694|- rs1_val==1717986919 and imm_val==45<br>                                                                                            |[0x80001334]:addi a1, a0, 45<br> [0x80001338]:sw a1, 1204(ra)<br>     |
| 320|[0x80004518]<br>0x66666669|- rs1_val==1717986919 and imm_val==2<br>                                                                                             |[0x80001344]:addi a1, a0, 2<br> [0x80001348]:sw a1, 1208(ra)<br>      |
| 321|[0x8000451c]<br>0x66666BBB|- rs1_val==1717986919 and imm_val==1364<br>                                                                                          |[0x80001354]:addi a1, a0, 1364<br> [0x80001358]:sw a1, 1212(ra)<br>   |
| 322|[0x80004520]<br>0x66666667|- rs1_val==1717986919 and imm_val==0<br>                                                                                             |[0x80001364]:addi a1, a0, 0<br> [0x80001368]:sw a1, 1216(ra)<br>      |
| 323|[0x80004524]<br>0x6666666B|- rs1_val==1717986919 and imm_val==4<br>                                                                                             |[0x80001374]:addi a1, a0, 4<br> [0x80001378]:sw a1, 1220(ra)<br>      |
| 324|[0x80004528]<br>0x66666999|- rs1_val==1717986919 and imm_val==818<br>                                                                                           |[0x80001384]:addi a1, a0, 818<br> [0x80001388]:sw a1, 1224(ra)<br>    |
| 325|[0x8000452c]<br>0x66666CCC|- rs1_val==1717986919 and imm_val==1637<br>                                                                                          |[0x80001394]:addi a1, a0, 1637<br> [0x80001398]:sw a1, 1228(ra)<br>   |
| 326|[0x80004530]<br>0x66666693|- rs1_val==1717986919 and imm_val==44<br>                                                                                            |[0x800013a4]:addi a1, a0, 44<br> [0x800013a8]:sw a1, 1232(ra)<br>     |
| 327|[0x80004534]<br>0x66666BBD|- rs1_val==1717986919 and imm_val==1366<br>                                                                                          |[0x800013b4]:addi a1, a0, 1366<br> [0x800013b8]:sw a1, 1236(ra)<br>   |
| 328|[0x80004538]<br>0x66666112|- rs1_val==1717986919 and imm_val==-1365<br>                                                                                         |[0x800013c4]:addi a1, a0, 2731<br> [0x800013c8]:sw a1, 1240(ra)<br>   |
| 329|[0x8000453c]<br>0x6666666D|- rs1_val==1717986919 and imm_val==6<br>                                                                                             |[0x800013d4]:addi a1, a0, 6<br> [0x800013d8]:sw a1, 1244(ra)<br>      |
| 330|[0x80004540]<br>0x6666699B|- rs1_val==1717986919 and imm_val==820<br>                                                                                           |[0x800013e4]:addi a1, a0, 820<br> [0x800013e8]:sw a1, 1248(ra)<br>    |
| 331|[0x80004544]<br>0x66666CCE|- rs1_val==1717986919 and imm_val==1639<br>                                                                                          |[0x800013f4]:addi a1, a0, 1639<br> [0x800013f8]:sw a1, 1252(ra)<br>   |
| 332|[0x80004548]<br>0x6666663B|- rs1_val==1717986919 and imm_val==-44<br>                                                                                           |[0x80001404]:addi a1, a0, 4052<br> [0x80001408]:sw a1, 1256(ra)<br>   |
| 333|[0x8000454c]<br>0x66666695|- rs1_val==1717986919 and imm_val==46<br>                                                                                            |[0x80001414]:addi a1, a0, 46<br> [0x80001418]:sw a1, 1260(ra)<br>     |
| 334|[0x80004550]<br>0xFFFF4B00|- rs1_val==-46339 and imm_val==3<br>                                                                                                 |[0x80001424]:addi a1, a0, 3<br> [0x80001428]:sw a1, 1264(ra)<br>      |
| 335|[0x80004554]<br>0xFFFF5052|- rs1_val==-46339 and imm_val==1365<br>                                                                                              |[0x80001434]:addi a1, a0, 1365<br> [0x80001438]:sw a1, 1268(ra)<br>   |
| 336|[0x80004558]<br>0xFFFF45A7|- rs1_val==-46339 and imm_val==-1366<br>                                                                                             |[0x80001444]:addi a1, a0, 2730<br> [0x80001448]:sw a1, 1272(ra)<br>   |
| 337|[0x8000455c]<br>0xFFFF4B02|- rs1_val==-46339 and imm_val==5<br>                                                                                                 |[0x80001454]:addi a1, a0, 5<br> [0x80001458]:sw a1, 1276(ra)<br>      |
| 338|[0x80004560]<br>0xFFFF4E30|- rs1_val==-46339 and imm_val==819<br>                                                                                               |[0x80001464]:addi a1, a0, 819<br> [0x80001468]:sw a1, 1280(ra)<br>    |
| 339|[0x80004564]<br>0xFFFF5163|- rs1_val==-46339 and imm_val==1638<br>                                                                                              |[0x80001474]:addi a1, a0, 1638<br> [0x80001478]:sw a1, 1284(ra)<br>   |
| 340|[0x80004568]<br>0xFFFF4AD0|- rs1_val==-46339 and imm_val==-45<br>                                                                                               |[0x80001484]:addi a1, a0, 4051<br> [0x80001488]:sw a1, 1288(ra)<br>   |
| 341|[0x8000456c]<br>0xFFFF4B2A|- rs1_val==-46339 and imm_val==45<br>                                                                                                |[0x80001494]:addi a1, a0, 45<br> [0x80001498]:sw a1, 1292(ra)<br>     |
| 342|[0x80004570]<br>0xFFFF4AFF|- rs1_val==-46339 and imm_val==2<br>                                                                                                 |[0x800014a4]:addi a1, a0, 2<br> [0x800014a8]:sw a1, 1296(ra)<br>      |
| 343|[0x80004574]<br>0xFFFF5051|- rs1_val==-46339 and imm_val==1364<br>                                                                                              |[0x800014b4]:addi a1, a0, 1364<br> [0x800014b8]:sw a1, 1300(ra)<br>   |
| 344|[0x80004578]<br>0xFFFF4AFD|- rs1_val==-46339 and imm_val==0<br>                                                                                                 |[0x800014c4]:addi a1, a0, 0<br> [0x800014c8]:sw a1, 1304(ra)<br>      |
| 345|[0x8000457c]<br>0xFFFF4B01|- rs1_val==-46339 and imm_val==4<br>                                                                                                 |[0x800014d4]:addi a1, a0, 4<br> [0x800014d8]:sw a1, 1308(ra)<br>      |
| 346|[0x80004580]<br>0xFFFF4E2F|- rs1_val==-46339 and imm_val==818<br>                                                                                               |[0x800014e4]:addi a1, a0, 818<br> [0x800014e8]:sw a1, 1312(ra)<br>    |
| 347|[0x80004584]<br>0xFFFF5162|- rs1_val==-46339 and imm_val==1637<br>                                                                                              |[0x800014f4]:addi a1, a0, 1637<br> [0x800014f8]:sw a1, 1316(ra)<br>   |
| 348|[0x80004588]<br>0xFFFF4B29|- rs1_val==-46339 and imm_val==44<br>                                                                                                |[0x80001504]:addi a1, a0, 44<br> [0x80001508]:sw a1, 1320(ra)<br>     |
| 349|[0x8000458c]<br>0xFFFF5053|- rs1_val==-46339 and imm_val==1366<br>                                                                                              |[0x80001514]:addi a1, a0, 1366<br> [0x80001518]:sw a1, 1324(ra)<br>   |
| 350|[0x80004590]<br>0xFFFF45A8|- rs1_val==-46339 and imm_val==-1365<br>                                                                                             |[0x80001524]:addi a1, a0, 2731<br> [0x80001528]:sw a1, 1328(ra)<br>   |
| 351|[0x80004594]<br>0xFFFF4B03|- rs1_val==-46339 and imm_val==6<br>                                                                                                 |[0x80001534]:addi a1, a0, 6<br> [0x80001538]:sw a1, 1332(ra)<br>      |
| 352|[0x80004598]<br>0xFFFF4E31|- rs1_val==-46339 and imm_val==820<br>                                                                                               |[0x80001544]:addi a1, a0, 820<br> [0x80001548]:sw a1, 1336(ra)<br>    |
| 353|[0x8000459c]<br>0xFFFF5164|- rs1_val==-46339 and imm_val==1639<br>                                                                                              |[0x80001554]:addi a1, a0, 1639<br> [0x80001558]:sw a1, 1340(ra)<br>   |
| 354|[0x800045a0]<br>0xFFFF4AD1|- rs1_val==-46339 and imm_val==-44<br>                                                                                               |[0x80001564]:addi a1, a0, 4052<br> [0x80001568]:sw a1, 1344(ra)<br>   |
| 355|[0x800045a4]<br>0xFFFF4B2B|- rs1_val==-46339 and imm_val==46<br>                                                                                                |[0x80001574]:addi a1, a0, 46<br> [0x80001578]:sw a1, 1348(ra)<br>     |
| 356|[0x800045a8]<br>0x0000B508|- rs1_val==46341 and imm_val==3<br>                                                                                                  |[0x80001584]:addi a1, a0, 3<br> [0x80001588]:sw a1, 1352(ra)<br>      |
| 357|[0x800045ac]<br>0x0000BA5A|- rs1_val==46341 and imm_val==1365<br>                                                                                               |[0x80001594]:addi a1, a0, 1365<br> [0x80001598]:sw a1, 1356(ra)<br>   |
| 358|[0x800045b0]<br>0x0000AFAF|- rs1_val==46341 and imm_val==-1366<br>                                                                                              |[0x800015a4]:addi a1, a0, 2730<br> [0x800015a8]:sw a1, 1360(ra)<br>   |
| 359|[0x800045b4]<br>0x0000B50A|- rs1_val==46341 and imm_val==5<br>                                                                                                  |[0x800015b4]:addi a1, a0, 5<br> [0x800015b8]:sw a1, 1364(ra)<br>      |
| 360|[0x800045b8]<br>0x0000B838|- rs1_val==46341 and imm_val==819<br>                                                                                                |[0x800015c4]:addi a1, a0, 819<br> [0x800015c8]:sw a1, 1368(ra)<br>    |
| 361|[0x800045bc]<br>0x0000BB6B|- rs1_val==46341 and imm_val==1638<br>                                                                                               |[0x800015d4]:addi a1, a0, 1638<br> [0x800015d8]:sw a1, 1372(ra)<br>   |
| 362|[0x800045c0]<br>0x0000B4D8|- rs1_val==46341 and imm_val==-45<br>                                                                                                |[0x800015e4]:addi a1, a0, 4051<br> [0x800015e8]:sw a1, 1376(ra)<br>   |
| 363|[0x800045c4]<br>0x0000B532|- rs1_val==46341 and imm_val==45<br>                                                                                                 |[0x800015f4]:addi a1, a0, 45<br> [0x800015f8]:sw a1, 1380(ra)<br>     |
| 364|[0x800045c8]<br>0x0000B507|- rs1_val==46341 and imm_val==2<br>                                                                                                  |[0x80001604]:addi a1, a0, 2<br> [0x80001608]:sw a1, 1384(ra)<br>      |
| 365|[0x800045cc]<br>0x0000BA59|- rs1_val==46341 and imm_val==1364<br>                                                                                               |[0x80001614]:addi a1, a0, 1364<br> [0x80001618]:sw a1, 1388(ra)<br>   |
| 366|[0x800045d0]<br>0x0000B505|- rs1_val==46341 and imm_val==0<br>                                                                                                  |[0x80001624]:addi a1, a0, 0<br> [0x80001628]:sw a1, 1392(ra)<br>      |
| 367|[0x800045d4]<br>0x0000B509|- rs1_val==46341 and imm_val==4<br>                                                                                                  |[0x80001634]:addi a1, a0, 4<br> [0x80001638]:sw a1, 1396(ra)<br>      |
| 368|[0x800045d8]<br>0x0000B837|- rs1_val==46341 and imm_val==818<br>                                                                                                |[0x80001644]:addi a1, a0, 818<br> [0x80001648]:sw a1, 1400(ra)<br>    |
| 369|[0x800045dc]<br>0x0000BB6A|- rs1_val==46341 and imm_val==1637<br>                                                                                               |[0x80001654]:addi a1, a0, 1637<br> [0x80001658]:sw a1, 1404(ra)<br>   |
| 370|[0x800045e0]<br>0x0000B531|- rs1_val==46341 and imm_val==44<br>                                                                                                 |[0x80001664]:addi a1, a0, 44<br> [0x80001668]:sw a1, 1408(ra)<br>     |
| 371|[0x800045e4]<br>0x0000BA5B|- rs1_val==46341 and imm_val==1366<br>                                                                                               |[0x80001674]:addi a1, a0, 1366<br> [0x80001678]:sw a1, 1412(ra)<br>   |
| 372|[0x800045e8]<br>0x0000AFB0|- rs1_val==46341 and imm_val==-1365<br>                                                                                              |[0x80001684]:addi a1, a0, 2731<br> [0x80001688]:sw a1, 1416(ra)<br>   |
| 373|[0x800045ec]<br>0x0000B50B|- rs1_val==46341 and imm_val==6<br>                                                                                                  |[0x80001694]:addi a1, a0, 6<br> [0x80001698]:sw a1, 1420(ra)<br>      |
| 374|[0x800045f0]<br>0x0000B839|- rs1_val==46341 and imm_val==820<br>                                                                                                |[0x800016a4]:addi a1, a0, 820<br> [0x800016a8]:sw a1, 1424(ra)<br>    |
| 375|[0x800045f4]<br>0x0000BB6C|- rs1_val==46341 and imm_val==1639<br>                                                                                               |[0x800016b4]:addi a1, a0, 1639<br> [0x800016b8]:sw a1, 1428(ra)<br>   |
| 376|[0x800045f8]<br>0x0000B4D9|- rs1_val==46341 and imm_val==-44<br>                                                                                                |[0x800016c4]:addi a1, a0, 4052<br> [0x800016c8]:sw a1, 1432(ra)<br>   |
| 377|[0x800045fc]<br>0x0000B533|- rs1_val==46341 and imm_val==46<br>                                                                                                 |[0x800016d4]:addi a1, a0, 46<br> [0x800016d8]:sw a1, 1436(ra)<br>     |
| 378|[0x80004600]<br>0x00000554|- rs1_val==0 and imm_val==1364<br>                                                                                                   |[0x800016e0]:addi a1, a0, 1364<br> [0x800016e4]:sw a1, 1440(ra)<br>   |
| 379|[0x8000460c]<br>0x00000332|- rs1_val==0 and imm_val==818<br>                                                                                                    |[0x80001704]:addi a1, a0, 818<br> [0x80001708]:sw a1, 1452(ra)<br>    |
| 380|[0x80004610]<br>0x00000665|- rs1_val==0 and imm_val==1637<br>                                                                                                   |[0x80001710]:addi a1, a0, 1637<br> [0x80001714]:sw a1, 1456(ra)<br>   |
| 381|[0x80004614]<br>0x0000002C|- rs1_val==0 and imm_val==44<br>                                                                                                     |[0x8000171c]:addi a1, a0, 44<br> [0x80001720]:sw a1, 1460(ra)<br>     |
| 382|[0x80004618]<br>0x00000556|- rs1_val==0 and imm_val==1366<br>                                                                                                   |[0x80001728]:addi a1, a0, 1366<br> [0x8000172c]:sw a1, 1464(ra)<br>   |
| 383|[0x8000461c]<br>0xFFFFFAAB|- rs1_val==0 and imm_val==-1365<br>                                                                                                  |[0x80001734]:addi a1, a0, 2731<br> [0x80001738]:sw a1, 1468(ra)<br>   |
| 384|[0x80004620]<br>0x00000006|- rs1_val==0 and imm_val==6<br>                                                                                                      |[0x80001740]:addi a1, a0, 6<br> [0x80001744]:sw a1, 1472(ra)<br>      |
| 385|[0x80004624]<br>0x00000334|- rs1_val==0 and imm_val==820<br>                                                                                                    |[0x8000174c]:addi a1, a0, 820<br> [0x80001750]:sw a1, 1476(ra)<br>    |
| 386|[0x80004628]<br>0x00000667|- rs1_val==0 and imm_val==1639<br>                                                                                                   |[0x80001758]:addi a1, a0, 1639<br> [0x8000175c]:sw a1, 1480(ra)<br>   |
| 387|[0x8000462c]<br>0xFFFFFFD4|- rs1_val==0 and imm_val==-44<br>                                                                                                    |[0x80001764]:addi a1, a0, 4052<br> [0x80001768]:sw a1, 1484(ra)<br>   |
| 388|[0x80004630]<br>0x0000002E|- rs1_val==0 and imm_val==46<br>                                                                                                     |[0x80001770]:addi a1, a0, 46<br> [0x80001774]:sw a1, 1488(ra)<br>     |
| 389|[0x80004634]<br>0x00000007|- rs1_val==4 and imm_val==3<br>                                                                                                      |[0x8000177c]:addi a1, a0, 3<br> [0x80001780]:sw a1, 1492(ra)<br>      |
| 390|[0x80004638]<br>0x00000559|- rs1_val==4 and imm_val==1365<br>                                                                                                   |[0x80001788]:addi a1, a0, 1365<br> [0x8000178c]:sw a1, 1496(ra)<br>   |
| 391|[0x8000463c]<br>0xFFFFFAAE|- rs1_val==4 and imm_val==-1366<br>                                                                                                  |[0x80001794]:addi a1, a0, 2730<br> [0x80001798]:sw a1, 1500(ra)<br>   |
| 392|[0x80004640]<br>0x00000009|- rs1_val==4 and imm_val==5<br>                                                                                                      |[0x800017a0]:addi a1, a0, 5<br> [0x800017a4]:sw a1, 1504(ra)<br>      |
| 393|[0x80004644]<br>0x00000337|- rs1_val==4 and imm_val==819<br>                                                                                                    |[0x800017ac]:addi a1, a0, 819<br> [0x800017b0]:sw a1, 1508(ra)<br>    |
| 394|[0x80004648]<br>0x0000066A|- rs1_val==4 and imm_val==1638<br>                                                                                                   |[0x800017b8]:addi a1, a0, 1638<br> [0x800017bc]:sw a1, 1512(ra)<br>   |
| 395|[0x8000464c]<br>0xFFFFFFD7|- rs1_val==4 and imm_val==-45<br>                                                                                                    |[0x800017c4]:addi a1, a0, 4051<br> [0x800017c8]:sw a1, 1516(ra)<br>   |
| 396|[0x80004650]<br>0x00000031|- rs1_val==4 and imm_val==45<br>                                                                                                     |[0x800017d0]:addi a1, a0, 45<br> [0x800017d4]:sw a1, 1520(ra)<br>     |
| 397|[0x80004654]<br>0x00000006|- rs1_val==4 and imm_val==2<br>                                                                                                      |[0x800017dc]:addi a1, a0, 2<br> [0x800017e0]:sw a1, 1524(ra)<br>      |
| 398|[0x80004658]<br>0x00000558|- rs1_val==4 and imm_val==1364<br>                                                                                                   |[0x800017e8]:addi a1, a0, 1364<br> [0x800017ec]:sw a1, 1528(ra)<br>   |
| 399|[0x8000465c]<br>0x00000004|- rs1_val==4 and imm_val==0<br>                                                                                                      |[0x800017f4]:addi a1, a0, 0<br> [0x800017f8]:sw a1, 1532(ra)<br>      |
| 400|[0x80004660]<br>0x00000008|- rs1_val==4 and imm_val==4<br>                                                                                                      |[0x80001800]:addi a1, a0, 4<br> [0x80001804]:sw a1, 1536(ra)<br>      |
| 401|[0x80004664]<br>0x00000336|- rs1_val==4 and imm_val==818<br>                                                                                                    |[0x8000180c]:addi a1, a0, 818<br> [0x80001810]:sw a1, 1540(ra)<br>    |
| 402|[0x80004668]<br>0x00000669|- rs1_val==4 and imm_val==1637<br>                                                                                                   |[0x80001818]:addi a1, a0, 1637<br> [0x8000181c]:sw a1, 1544(ra)<br>   |
| 403|[0x8000466c]<br>0x00000030|- rs1_val==4 and imm_val==44<br>                                                                                                     |[0x80001824]:addi a1, a0, 44<br> [0x80001828]:sw a1, 1548(ra)<br>     |
| 404|[0x80004670]<br>0x0000055A|- rs1_val==4 and imm_val==1366<br>                                                                                                   |[0x80001830]:addi a1, a0, 1366<br> [0x80001834]:sw a1, 1552(ra)<br>   |
| 405|[0x80004674]<br>0xFFFFFAAF|- rs1_val==4 and imm_val==-1365<br>                                                                                                  |[0x8000183c]:addi a1, a0, 2731<br> [0x80001840]:sw a1, 1556(ra)<br>   |
| 406|[0x80004678]<br>0x0000000A|- rs1_val==4 and imm_val==6<br>                                                                                                      |[0x80001848]:addi a1, a0, 6<br> [0x8000184c]:sw a1, 1560(ra)<br>      |
| 407|[0x8000467c]<br>0x00000338|- rs1_val==4 and imm_val==820<br>                                                                                                    |[0x80001854]:addi a1, a0, 820<br> [0x80001858]:sw a1, 1564(ra)<br>    |
| 408|[0x80004680]<br>0x0000066B|- rs1_val==4 and imm_val==1639<br>                                                                                                   |[0x80001860]:addi a1, a0, 1639<br> [0x80001864]:sw a1, 1568(ra)<br>   |
| 409|[0x80004684]<br>0xFFFFFFD8|- rs1_val==4 and imm_val==-44<br>                                                                                                    |[0x8000186c]:addi a1, a0, 4052<br> [0x80001870]:sw a1, 1572(ra)<br>   |
| 410|[0x80004688]<br>0x00000032|- rs1_val==4 and imm_val==46<br>                                                                                                     |[0x80001878]:addi a1, a0, 46<br> [0x8000187c]:sw a1, 1576(ra)<br>     |
| 411|[0x8000468c]<br>0x33333335|- rs1_val==858993458 and imm_val==3<br>                                                                                              |[0x80001888]:addi a1, a0, 3<br> [0x8000188c]:sw a1, 1580(ra)<br>      |
| 412|[0x80004690]<br>0x33333887|- rs1_val==858993458 and imm_val==1365<br>                                                                                           |[0x80001898]:addi a1, a0, 1365<br> [0x8000189c]:sw a1, 1584(ra)<br>   |
| 413|[0x80004694]<br>0x33332DDC|- rs1_val==858993458 and imm_val==-1366<br>                                                                                          |[0x800018a8]:addi a1, a0, 2730<br> [0x800018ac]:sw a1, 1588(ra)<br>   |
| 414|[0x80004698]<br>0x33333337|- rs1_val==858993458 and imm_val==5<br>                                                                                              |[0x800018b8]:addi a1, a0, 5<br> [0x800018bc]:sw a1, 1592(ra)<br>      |
| 415|[0x8000469c]<br>0x33333665|- rs1_val==858993458 and imm_val==819<br>                                                                                            |[0x800018c8]:addi a1, a0, 819<br> [0x800018cc]:sw a1, 1596(ra)<br>    |
| 416|[0x800046a0]<br>0x33333998|- rs1_val==858993458 and imm_val==1638<br>                                                                                           |[0x800018d8]:addi a1, a0, 1638<br> [0x800018dc]:sw a1, 1600(ra)<br>   |
| 417|[0x800046a4]<br>0x33333305|- rs1_val==858993458 and imm_val==-45<br>                                                                                            |[0x800018e8]:addi a1, a0, 4051<br> [0x800018ec]:sw a1, 1604(ra)<br>   |
| 418|[0x800046a8]<br>0x3333335F|- rs1_val==858993458 and imm_val==45<br>                                                                                             |[0x800018f8]:addi a1, a0, 45<br> [0x800018fc]:sw a1, 1608(ra)<br>     |
| 419|[0x800046ac]<br>0x33333334|- rs1_val==858993458 and imm_val==2<br>                                                                                              |[0x80001908]:addi a1, a0, 2<br> [0x8000190c]:sw a1, 1612(ra)<br>      |
| 420|[0x800046b0]<br>0x33333886|- rs1_val==858993458 and imm_val==1364<br>                                                                                           |[0x80001918]:addi a1, a0, 1364<br> [0x8000191c]:sw a1, 1616(ra)<br>   |
| 421|[0x800046b4]<br>0x33333332|- rs1_val==858993458 and imm_val==0<br>                                                                                              |[0x80001928]:addi a1, a0, 0<br> [0x8000192c]:sw a1, 1620(ra)<br>      |
| 422|[0x800046b8]<br>0x33333336|- rs1_val==858993458 and imm_val==4<br>                                                                                              |[0x80001938]:addi a1, a0, 4<br> [0x8000193c]:sw a1, 1624(ra)<br>      |
| 423|[0x800046bc]<br>0x33333664|- rs1_val==858993458 and imm_val==818<br>                                                                                            |[0x80001948]:addi a1, a0, 818<br> [0x8000194c]:sw a1, 1628(ra)<br>    |
| 424|[0x800046c0]<br>0x33333997|- rs1_val==858993458 and imm_val==1637<br>                                                                                           |[0x80001958]:addi a1, a0, 1637<br> [0x8000195c]:sw a1, 1632(ra)<br>   |
| 425|[0x800046c4]<br>0x3333335E|- rs1_val==858993458 and imm_val==44<br>                                                                                             |[0x80001968]:addi a1, a0, 44<br> [0x8000196c]:sw a1, 1636(ra)<br>     |
| 426|[0x800046c8]<br>0x33333888|- rs1_val==858993458 and imm_val==1366<br>                                                                                           |[0x80001978]:addi a1, a0, 1366<br> [0x8000197c]:sw a1, 1640(ra)<br>   |
| 427|[0x800046cc]<br>0x33332DDD|- rs1_val==858993458 and imm_val==-1365<br>                                                                                          |[0x80001988]:addi a1, a0, 2731<br> [0x8000198c]:sw a1, 1644(ra)<br>   |
| 428|[0x800046d0]<br>0x33333338|- rs1_val==858993458 and imm_val==6<br>                                                                                              |[0x80001998]:addi a1, a0, 6<br> [0x8000199c]:sw a1, 1648(ra)<br>      |
| 429|[0x800046d4]<br>0x33333666|- rs1_val==858993458 and imm_val==820<br>                                                                                            |[0x800019a8]:addi a1, a0, 820<br> [0x800019ac]:sw a1, 1652(ra)<br>    |
| 430|[0x800046d8]<br>0x33333999|- rs1_val==858993458 and imm_val==1639<br>                                                                                           |[0x800019b8]:addi a1, a0, 1639<br> [0x800019bc]:sw a1, 1656(ra)<br>   |
| 431|[0x800046dc]<br>0x33333306|- rs1_val==858993458 and imm_val==-44<br>                                                                                            |[0x800019c8]:addi a1, a0, 4052<br> [0x800019cc]:sw a1, 1660(ra)<br>   |
| 432|[0x800046e0]<br>0x33333360|- rs1_val==858993458 and imm_val==46<br>                                                                                             |[0x800019d8]:addi a1, a0, 46<br> [0x800019dc]:sw a1, 1664(ra)<br>     |
| 433|[0x800046e4]<br>0x66666668|- rs1_val==1717986917 and imm_val==3<br>                                                                                             |[0x800019e8]:addi a1, a0, 3<br> [0x800019ec]:sw a1, 1668(ra)<br>      |
| 434|[0x800046e8]<br>0x66666BBA|- rs1_val==1717986917 and imm_val==1365<br>                                                                                          |[0x800019f8]:addi a1, a0, 1365<br> [0x800019fc]:sw a1, 1672(ra)<br>   |
| 435|[0x800046ec]<br>0x6666610F|- rs1_val==1717986917 and imm_val==-1366<br>                                                                                         |[0x80001a08]:addi a1, a0, 2730<br> [0x80001a0c]:sw a1, 1676(ra)<br>   |
| 436|[0x800046f0]<br>0x6666666A|- rs1_val==1717986917 and imm_val==5<br>                                                                                             |[0x80001a18]:addi a1, a0, 5<br> [0x80001a1c]:sw a1, 1680(ra)<br>      |
| 437|[0x800046f4]<br>0x66666998|- rs1_val==1717986917 and imm_val==819<br>                                                                                           |[0x80001a28]:addi a1, a0, 819<br> [0x80001a2c]:sw a1, 1684(ra)<br>    |
| 438|[0x800046f8]<br>0x66666CCB|- rs1_val==1717986917 and imm_val==1638<br>                                                                                          |[0x80001a38]:addi a1, a0, 1638<br> [0x80001a3c]:sw a1, 1688(ra)<br>   |
| 439|[0x800046fc]<br>0x66666638|- rs1_val==1717986917 and imm_val==-45<br>                                                                                           |[0x80001a48]:addi a1, a0, 4051<br> [0x80001a4c]:sw a1, 1692(ra)<br>   |
| 440|[0x80004700]<br>0x66666692|- rs1_val==1717986917 and imm_val==45<br>                                                                                            |[0x80001a58]:addi a1, a0, 45<br> [0x80001a5c]:sw a1, 1696(ra)<br>     |
| 441|[0x80004704]<br>0x66666667|- rs1_val==1717986917 and imm_val==2<br>                                                                                             |[0x80001a68]:addi a1, a0, 2<br> [0x80001a6c]:sw a1, 1700(ra)<br>      |
| 442|[0x80004708]<br>0x66666BB9|- rs1_val==1717986917 and imm_val==1364<br>                                                                                          |[0x80001a78]:addi a1, a0, 1364<br> [0x80001a7c]:sw a1, 1704(ra)<br>   |
| 443|[0x8000470c]<br>0x66666665|- rs1_val==1717986917 and imm_val==0<br>                                                                                             |[0x80001a88]:addi a1, a0, 0<br> [0x80001a8c]:sw a1, 1708(ra)<br>      |
| 444|[0x80004710]<br>0x66666669|- rs1_val==1717986917 and imm_val==4<br>                                                                                             |[0x80001a98]:addi a1, a0, 4<br> [0x80001a9c]:sw a1, 1712(ra)<br>      |
| 445|[0x80004714]<br>0x66666997|- rs1_val==1717986917 and imm_val==818<br>                                                                                           |[0x80001aa8]:addi a1, a0, 818<br> [0x80001aac]:sw a1, 1716(ra)<br>    |
| 446|[0x80004718]<br>0x66666CCA|- rs1_val==1717986917 and imm_val==1637<br>                                                                                          |[0x80001ab8]:addi a1, a0, 1637<br> [0x80001abc]:sw a1, 1720(ra)<br>   |
| 447|[0x8000471c]<br>0x66666691|- rs1_val==1717986917 and imm_val==44<br>                                                                                            |[0x80001ac8]:addi a1, a0, 44<br> [0x80001acc]:sw a1, 1724(ra)<br>     |
| 448|[0x80004720]<br>0x66666BBB|- rs1_val==1717986917 and imm_val==1366<br>                                                                                          |[0x80001ad8]:addi a1, a0, 1366<br> [0x80001adc]:sw a1, 1728(ra)<br>   |
| 449|[0x80004724]<br>0x66666110|- rs1_val==1717986917 and imm_val==-1365<br>                                                                                         |[0x80001ae8]:addi a1, a0, 2731<br> [0x80001aec]:sw a1, 1732(ra)<br>   |
| 450|[0x80004728]<br>0x6666666B|- rs1_val==1717986917 and imm_val==6<br>                                                                                             |[0x80001af8]:addi a1, a0, 6<br> [0x80001afc]:sw a1, 1736(ra)<br>      |
| 451|[0x8000472c]<br>0x66666999|- rs1_val==1717986917 and imm_val==820<br>                                                                                           |[0x80001b08]:addi a1, a0, 820<br> [0x80001b0c]:sw a1, 1740(ra)<br>    |
| 452|[0x80004730]<br>0x66666CCC|- rs1_val==1717986917 and imm_val==1639<br>                                                                                          |[0x80001b18]:addi a1, a0, 1639<br> [0x80001b1c]:sw a1, 1744(ra)<br>   |
| 453|[0x80004734]<br>0x66666639|- rs1_val==1717986917 and imm_val==-44<br>                                                                                           |[0x80001b28]:addi a1, a0, 4052<br> [0x80001b2c]:sw a1, 1748(ra)<br>   |
| 454|[0x80004738]<br>0x66666693|- rs1_val==1717986917 and imm_val==46<br>                                                                                            |[0x80001b38]:addi a1, a0, 46<br> [0x80001b3c]:sw a1, 1752(ra)<br>     |
| 455|[0x8000473c]<br>0x0000B506|- rs1_val==46339 and imm_val==3<br>                                                                                                  |[0x80001b48]:addi a1, a0, 3<br> [0x80001b4c]:sw a1, 1756(ra)<br>      |
| 456|[0x80004740]<br>0x0000BA58|- rs1_val==46339 and imm_val==1365<br>                                                                                               |[0x80001b58]:addi a1, a0, 1365<br> [0x80001b5c]:sw a1, 1760(ra)<br>   |
| 457|[0x80004744]<br>0x0000AFAD|- rs1_val==46339 and imm_val==-1366<br>                                                                                              |[0x80001b68]:addi a1, a0, 2730<br> [0x80001b6c]:sw a1, 1764(ra)<br>   |
| 458|[0x80004748]<br>0x0000B508|- rs1_val==46339 and imm_val==5<br>                                                                                                  |[0x80001b78]:addi a1, a0, 5<br> [0x80001b7c]:sw a1, 1768(ra)<br>      |
| 459|[0x8000474c]<br>0x0000B836|- rs1_val==46339 and imm_val==819<br>                                                                                                |[0x80001b88]:addi a1, a0, 819<br> [0x80001b8c]:sw a1, 1772(ra)<br>    |
| 460|[0x80004750]<br>0x0000BB69|- rs1_val==46339 and imm_val==1638<br>                                                                                               |[0x80001b98]:addi a1, a0, 1638<br> [0x80001b9c]:sw a1, 1776(ra)<br>   |
| 461|[0x80004754]<br>0x0000B4D6|- rs1_val==46339 and imm_val==-45<br>                                                                                                |[0x80001ba8]:addi a1, a0, 4051<br> [0x80001bac]:sw a1, 1780(ra)<br>   |
| 462|[0x80004758]<br>0x0000B530|- rs1_val==46339 and imm_val==45<br>                                                                                                 |[0x80001bb8]:addi a1, a0, 45<br> [0x80001bbc]:sw a1, 1784(ra)<br>     |
| 463|[0x8000475c]<br>0x0000B505|- rs1_val==46339 and imm_val==2<br>                                                                                                  |[0x80001bc8]:addi a1, a0, 2<br> [0x80001bcc]:sw a1, 1788(ra)<br>      |
| 464|[0x80004760]<br>0x0000BA57|- rs1_val==46339 and imm_val==1364<br>                                                                                               |[0x80001bd8]:addi a1, a0, 1364<br> [0x80001bdc]:sw a1, 1792(ra)<br>   |
| 465|[0x80004764]<br>0x0000B503|- rs1_val==46339 and imm_val==0<br>                                                                                                  |[0x80001be8]:addi a1, a0, 0<br> [0x80001bec]:sw a1, 1796(ra)<br>      |
| 466|[0x80004768]<br>0x0000B507|- rs1_val==46339 and imm_val==4<br>                                                                                                  |[0x80001bf8]:addi a1, a0, 4<br> [0x80001bfc]:sw a1, 1800(ra)<br>      |
| 467|[0x8000476c]<br>0x0000B835|- rs1_val==46339 and imm_val==818<br>                                                                                                |[0x80001c08]:addi a1, a0, 818<br> [0x80001c0c]:sw a1, 1804(ra)<br>    |
| 468|[0x80004770]<br>0x0000BB68|- rs1_val==46339 and imm_val==1637<br>                                                                                               |[0x80001c18]:addi a1, a0, 1637<br> [0x80001c1c]:sw a1, 1808(ra)<br>   |
| 469|[0x80004774]<br>0x0000B52F|- rs1_val==46339 and imm_val==44<br>                                                                                                 |[0x80001c28]:addi a1, a0, 44<br> [0x80001c2c]:sw a1, 1812(ra)<br>     |
| 470|[0x80004778]<br>0x0000BA59|- rs1_val==46339 and imm_val==1366<br>                                                                                               |[0x80001c38]:addi a1, a0, 1366<br> [0x80001c3c]:sw a1, 1816(ra)<br>   |
| 471|[0x8000477c]<br>0x0000AFAE|- rs1_val==46339 and imm_val==-1365<br>                                                                                              |[0x80001c48]:addi a1, a0, 2731<br> [0x80001c4c]:sw a1, 1820(ra)<br>   |
| 472|[0x80004780]<br>0x0000B509|- rs1_val==46339 and imm_val==6<br>                                                                                                  |[0x80001c58]:addi a1, a0, 6<br> [0x80001c5c]:sw a1, 1824(ra)<br>      |
| 473|[0x80004784]<br>0x0000B837|- rs1_val==46339 and imm_val==820<br>                                                                                                |[0x80001c68]:addi a1, a0, 820<br> [0x80001c6c]:sw a1, 1828(ra)<br>    |
| 474|[0x80004788]<br>0x0000BB6A|- rs1_val==46339 and imm_val==1639<br>                                                                                               |[0x80001c78]:addi a1, a0, 1639<br> [0x80001c7c]:sw a1, 1832(ra)<br>   |
| 475|[0x8000478c]<br>0x0000B4D7|- rs1_val==46339 and imm_val==-44<br>                                                                                                |[0x80001c88]:addi a1, a0, 4052<br> [0x80001c8c]:sw a1, 1836(ra)<br>   |
| 476|[0x80004790]<br>0x0000B531|- rs1_val==46339 and imm_val==46<br>                                                                                                 |[0x80001c98]:addi a1, a0, 46<br> [0x80001c9c]:sw a1, 1840(ra)<br>     |
| 477|[0x80004794]<br>0x55555559|- rs1_val==1431655766 and imm_val==3<br>                                                                                             |[0x80001ca8]:addi a1, a0, 3<br> [0x80001cac]:sw a1, 1844(ra)<br>      |
| 478|[0x80004798]<br>0x55555AAB|- rs1_val==1431655766 and imm_val==1365<br>                                                                                          |[0x80001cb8]:addi a1, a0, 1365<br> [0x80001cbc]:sw a1, 1848(ra)<br>   |
| 479|[0x8000479c]<br>0x55555000|- rs1_val==1431655766 and imm_val==-1366<br>                                                                                         |[0x80001cc8]:addi a1, a0, 2730<br> [0x80001ccc]:sw a1, 1852(ra)<br>   |
| 480|[0x800047a0]<br>0x5555555B|- rs1_val==1431655766 and imm_val==5<br>                                                                                             |[0x80001cd8]:addi a1, a0, 5<br> [0x80001cdc]:sw a1, 1856(ra)<br>      |
| 481|[0x800047a4]<br>0x55555889|- rs1_val==1431655766 and imm_val==819<br>                                                                                           |[0x80001ce8]:addi a1, a0, 819<br> [0x80001cec]:sw a1, 1860(ra)<br>    |
| 482|[0x800047a8]<br>0x55555BBC|- rs1_val==1431655766 and imm_val==1638<br>                                                                                          |[0x80001cf8]:addi a1, a0, 1638<br> [0x80001cfc]:sw a1, 1864(ra)<br>   |
| 483|[0x800047ac]<br>0x55555529|- rs1_val==1431655766 and imm_val==-45<br>                                                                                           |[0x80001d08]:addi a1, a0, 4051<br> [0x80001d0c]:sw a1, 1868(ra)<br>   |
| 484|[0x800047b0]<br>0x55555583|- rs1_val==1431655766 and imm_val==45<br>                                                                                            |[0x80001d18]:addi a1, a0, 45<br> [0x80001d1c]:sw a1, 1872(ra)<br>     |
| 485|[0x800047b4]<br>0x55555558|- rs1_val==1431655766 and imm_val==2<br>                                                                                             |[0x80001d28]:addi a1, a0, 2<br> [0x80001d2c]:sw a1, 1876(ra)<br>      |
| 486|[0x800047b8]<br>0x55555AAA|- rs1_val==1431655766 and imm_val==1364<br>                                                                                          |[0x80001d38]:addi a1, a0, 1364<br> [0x80001d3c]:sw a1, 1880(ra)<br>   |
| 487|[0x800047bc]<br>0x55555556|- rs1_val==1431655766 and imm_val==0<br>                                                                                             |[0x80001d48]:addi a1, a0, 0<br> [0x80001d4c]:sw a1, 1884(ra)<br>      |
| 488|[0x800047c0]<br>0x5555555A|- rs1_val==1431655766 and imm_val==4<br>                                                                                             |[0x80001d58]:addi a1, a0, 4<br> [0x80001d5c]:sw a1, 1888(ra)<br>      |
| 489|[0x800047c4]<br>0x55555888|- rs1_val==1431655766 and imm_val==818<br>                                                                                           |[0x80001d68]:addi a1, a0, 818<br> [0x80001d6c]:sw a1, 1892(ra)<br>    |
| 490|[0x800047c8]<br>0x55555BBB|- rs1_val==1431655766 and imm_val==1637<br>                                                                                          |[0x80001d78]:addi a1, a0, 1637<br> [0x80001d7c]:sw a1, 1896(ra)<br>   |
| 491|[0x800047cc]<br>0x55555582|- rs1_val==1431655766 and imm_val==44<br>                                                                                            |[0x80001d88]:addi a1, a0, 44<br> [0x80001d8c]:sw a1, 1900(ra)<br>     |
| 492|[0x800047d0]<br>0x55555AAC|- rs1_val==1431655766 and imm_val==1366<br>                                                                                          |[0x80001d98]:addi a1, a0, 1366<br> [0x80001d9c]:sw a1, 1904(ra)<br>   |
| 493|[0x800047d4]<br>0x55555001|- rs1_val==1431655766 and imm_val==-1365<br>                                                                                         |[0x80001da8]:addi a1, a0, 2731<br> [0x80001dac]:sw a1, 1908(ra)<br>   |
| 494|[0x800047d8]<br>0x5555555C|- rs1_val==1431655766 and imm_val==6<br>                                                                                             |[0x80001db8]:addi a1, a0, 6<br> [0x80001dbc]:sw a1, 1912(ra)<br>      |
| 495|[0x800047dc]<br>0x5555588A|- rs1_val==1431655766 and imm_val==820<br>                                                                                           |[0x80001dc8]:addi a1, a0, 820<br> [0x80001dcc]:sw a1, 1916(ra)<br>    |
| 496|[0x800047e0]<br>0x55555BBD|- rs1_val==1431655766 and imm_val==1639<br>                                                                                          |[0x80001dd8]:addi a1, a0, 1639<br> [0x80001ddc]:sw a1, 1920(ra)<br>   |
| 497|[0x800047e4]<br>0x5555552A|- rs1_val==1431655766 and imm_val==-44<br>                                                                                           |[0x80001de8]:addi a1, a0, 4052<br> [0x80001dec]:sw a1, 1924(ra)<br>   |
| 498|[0x800047e8]<br>0x55555584|- rs1_val==1431655766 and imm_val==46<br>                                                                                            |[0x80001df8]:addi a1, a0, 46<br> [0x80001dfc]:sw a1, 1928(ra)<br>     |
| 499|[0x800047ec]<br>0xAAAAAAAE|- rs1_val==-1431655765 and imm_val==3<br>                                                                                            |[0x80001e08]:addi a1, a0, 3<br> [0x80001e0c]:sw a1, 1932(ra)<br>      |
| 500|[0x800047f0]<br>0xAAAAB000|- rs1_val==-1431655765 and imm_val==1365<br>                                                                                         |[0x80001e18]:addi a1, a0, 1365<br> [0x80001e1c]:sw a1, 1936(ra)<br>   |
| 501|[0x800047f4]<br>0xAAAAA555|- rs1_val==-1431655765 and imm_val==-1366<br>                                                                                        |[0x80001e28]:addi a1, a0, 2730<br> [0x80001e2c]:sw a1, 1940(ra)<br>   |
| 502|[0x800047f8]<br>0xAAAAAAB0|- rs1_val==-1431655765 and imm_val==5<br>                                                                                            |[0x80001e38]:addi a1, a0, 5<br> [0x80001e3c]:sw a1, 1944(ra)<br>      |
| 503|[0x800047fc]<br>0xAAAAADDE|- rs1_val==-1431655765 and imm_val==819<br>                                                                                          |[0x80001e48]:addi a1, a0, 819<br> [0x80001e4c]:sw a1, 1948(ra)<br>    |
| 504|[0x80004800]<br>0xAAAAB111|- rs1_val==-1431655765 and imm_val==1638<br>                                                                                         |[0x80001e58]:addi a1, a0, 1638<br> [0x80001e5c]:sw a1, 1952(ra)<br>   |
| 505|[0x80004804]<br>0xAAAAAA7E|- rs1_val==-1431655765 and imm_val==-45<br>                                                                                          |[0x80001e68]:addi a1, a0, 4051<br> [0x80001e6c]:sw a1, 1956(ra)<br>   |
| 506|[0x80004808]<br>0xAAAAAAD8|- rs1_val==-1431655765 and imm_val==45<br>                                                                                           |[0x80001e78]:addi a1, a0, 45<br> [0x80001e7c]:sw a1, 1960(ra)<br>     |
| 507|[0x8000480c]<br>0xAAAAAAAD|- rs1_val==-1431655765 and imm_val==2<br>                                                                                            |[0x80001e88]:addi a1, a0, 2<br> [0x80001e8c]:sw a1, 1964(ra)<br>      |
| 508|[0x80004810]<br>0xAAAAAFFF|- rs1_val==-1431655765 and imm_val==1364<br>                                                                                         |[0x80001e98]:addi a1, a0, 1364<br> [0x80001e9c]:sw a1, 1968(ra)<br>   |
| 509|[0x80004814]<br>0xAAAAAAAB|- rs1_val==-1431655765 and imm_val==0<br>                                                                                            |[0x80001ea8]:addi a1, a0, 0<br> [0x80001eac]:sw a1, 1972(ra)<br>      |
| 510|[0x80004818]<br>0xAAAAAAAF|- rs1_val==-1431655765 and imm_val==4<br>                                                                                            |[0x80001eb8]:addi a1, a0, 4<br> [0x80001ebc]:sw a1, 1976(ra)<br>      |
| 511|[0x8000481c]<br>0xAAAAADDD|- rs1_val==-1431655765 and imm_val==818<br>                                                                                          |[0x80001ec8]:addi a1, a0, 818<br> [0x80001ecc]:sw a1, 1980(ra)<br>    |
| 512|[0x80004820]<br>0xAAAAB110|- rs1_val==-1431655765 and imm_val==1637<br>                                                                                         |[0x80001ed8]:addi a1, a0, 1637<br> [0x80001edc]:sw a1, 1984(ra)<br>   |
| 513|[0x80004824]<br>0xAAAAAAD7|- rs1_val==-1431655765 and imm_val==44<br>                                                                                           |[0x80001ee8]:addi a1, a0, 44<br> [0x80001eec]:sw a1, 1988(ra)<br>     |
| 514|[0x80004828]<br>0xAAAAB001|- rs1_val==-1431655765 and imm_val==1366<br>                                                                                         |[0x80001ef8]:addi a1, a0, 1366<br> [0x80001efc]:sw a1, 1992(ra)<br>   |
| 515|[0x8000482c]<br>0xAAAAA556|- rs1_val==-1431655765 and imm_val==-1365<br>                                                                                        |[0x80001f08]:addi a1, a0, 2731<br> [0x80001f0c]:sw a1, 1996(ra)<br>   |
| 516|[0x80004830]<br>0xAAAAAAB1|- rs1_val==-1431655765 and imm_val==6<br>                                                                                            |[0x80001f18]:addi a1, a0, 6<br> [0x80001f1c]:sw a1, 2000(ra)<br>      |
| 517|[0x80004834]<br>0xAAAAADDF|- rs1_val==-1431655765 and imm_val==820<br>                                                                                          |[0x80001f28]:addi a1, a0, 820<br> [0x80001f2c]:sw a1, 2004(ra)<br>    |
| 518|[0x80004838]<br>0xAAAAB112|- rs1_val==-1431655765 and imm_val==1639<br>                                                                                         |[0x80001f38]:addi a1, a0, 1639<br> [0x80001f3c]:sw a1, 2008(ra)<br>   |
| 519|[0x8000483c]<br>0xAAAAAA7F|- rs1_val==-1431655765 and imm_val==-44<br>                                                                                          |[0x80001f48]:addi a1, a0, 4052<br> [0x80001f4c]:sw a1, 2012(ra)<br>   |
| 520|[0x80004840]<br>0xAAAAAAD9|- rs1_val==-1431655765 and imm_val==46<br>                                                                                           |[0x80001f58]:addi a1, a0, 46<br> [0x80001f5c]:sw a1, 2016(ra)<br>     |
| 521|[0x80004844]<br>0x00000009|- rs1_val==6 and imm_val==3<br>                                                                                                      |[0x80001f64]:addi a1, a0, 3<br> [0x80001f68]:sw a1, 2020(ra)<br>      |
| 522|[0x80004848]<br>0x0000055B|- rs1_val==6 and imm_val==1365<br>                                                                                                   |[0x80001f70]:addi a1, a0, 1365<br> [0x80001f74]:sw a1, 2024(ra)<br>   |
| 523|[0x8000484c]<br>0xFFFFFAB0|- rs1_val==6 and imm_val==-1366<br>                                                                                                  |[0x80001f7c]:addi a1, a0, 2730<br> [0x80001f80]:sw a1, 2028(ra)<br>   |
| 524|[0x80004850]<br>0x0000000B|- rs1_val==6 and imm_val==5<br>                                                                                                      |[0x80001f88]:addi a1, a0, 5<br> [0x80001f8c]:sw a1, 2032(ra)<br>      |
| 525|[0x80004854]<br>0x00000339|- rs1_val==6 and imm_val==819<br>                                                                                                    |[0x80001f94]:addi a1, a0, 819<br> [0x80001f98]:sw a1, 2036(ra)<br>    |
| 526|[0x80004858]<br>0x0000066C|- rs1_val==6 and imm_val==1638<br>                                                                                                   |[0x80001fa0]:addi a1, a0, 1638<br> [0x80001fa4]:sw a1, 2040(ra)<br>   |
| 527|[0x8000485c]<br>0xFFFFFFD9|- rs1_val==6 and imm_val==-45<br>                                                                                                    |[0x80001fac]:addi a1, a0, 4051<br> [0x80001fb0]:sw a1, 2044(ra)<br>   |
| 528|[0x80004860]<br>0x00000033|- rs1_val==6 and imm_val==45<br>                                                                                                     |[0x80001fc0]:addi a1, a0, 45<br> [0x80001fc4]:sw a1, 0(ra)<br>        |
| 529|[0x80004864]<br>0x00000008|- rs1_val==6 and imm_val==2<br>                                                                                                      |[0x80001fcc]:addi a1, a0, 2<br> [0x80001fd0]:sw a1, 4(ra)<br>         |
| 530|[0x80004868]<br>0x0000055A|- rs1_val==6 and imm_val==1364<br>                                                                                                   |[0x80001fd8]:addi a1, a0, 1364<br> [0x80001fdc]:sw a1, 8(ra)<br>      |
| 531|[0x8000486c]<br>0x00000006|- rs1_val==6 and imm_val==0<br>                                                                                                      |[0x80001fe4]:addi a1, a0, 0<br> [0x80001fe8]:sw a1, 12(ra)<br>        |
| 532|[0x80004870]<br>0x0000000A|- rs1_val==6 and imm_val==4<br>                                                                                                      |[0x80001ff0]:addi a1, a0, 4<br> [0x80001ff4]:sw a1, 16(ra)<br>        |
| 533|[0x80004874]<br>0x00000338|- rs1_val==6 and imm_val==818<br>                                                                                                    |[0x80001ffc]:addi a1, a0, 818<br> [0x80002000]:sw a1, 20(ra)<br>      |
| 534|[0x80004878]<br>0x0000066B|- rs1_val==6 and imm_val==1637<br>                                                                                                   |[0x80002008]:addi a1, a0, 1637<br> [0x8000200c]:sw a1, 24(ra)<br>     |
| 535|[0x8000487c]<br>0x00000032|- rs1_val==6 and imm_val==44<br>                                                                                                     |[0x80002014]:addi a1, a0, 44<br> [0x80002018]:sw a1, 28(ra)<br>       |
| 536|[0x80004880]<br>0x0000055C|- rs1_val==6 and imm_val==1366<br>                                                                                                   |[0x80002020]:addi a1, a0, 1366<br> [0x80002024]:sw a1, 32(ra)<br>     |
| 537|[0x80004884]<br>0xFFFFFAB1|- rs1_val==6 and imm_val==-1365<br>                                                                                                  |[0x8000202c]:addi a1, a0, 2731<br> [0x80002030]:sw a1, 36(ra)<br>     |
| 538|[0x80004888]<br>0x0000000C|- rs1_val==6 and imm_val==6<br>                                                                                                      |[0x80002038]:addi a1, a0, 6<br> [0x8000203c]:sw a1, 40(ra)<br>        |
| 539|[0x8000488c]<br>0x0000033A|- rs1_val==6 and imm_val==820<br>                                                                                                    |[0x80002044]:addi a1, a0, 820<br> [0x80002048]:sw a1, 44(ra)<br>      |
| 540|[0x80004890]<br>0x0000066D|- rs1_val==6 and imm_val==1639<br>                                                                                                   |[0x80002050]:addi a1, a0, 1639<br> [0x80002054]:sw a1, 48(ra)<br>     |
| 541|[0x80004894]<br>0xFFFFFFDA|- rs1_val==6 and imm_val==-44<br>                                                                                                    |[0x8000205c]:addi a1, a0, 4052<br> [0x80002060]:sw a1, 52(ra)<br>     |
| 542|[0x80004898]<br>0x00000034|- rs1_val==6 and imm_val==46<br>                                                                                                     |[0x80002068]:addi a1, a0, 46<br> [0x8000206c]:sw a1, 56(ra)<br>       |
| 543|[0x8000489c]<br>0x33333337|- rs1_val==858993460 and imm_val==3<br>                                                                                              |[0x80002078]:addi a1, a0, 3<br> [0x8000207c]:sw a1, 60(ra)<br>        |
| 544|[0x800048a0]<br>0x33333889|- rs1_val==858993460 and imm_val==1365<br>                                                                                           |[0x80002088]:addi a1, a0, 1365<br> [0x8000208c]:sw a1, 64(ra)<br>     |
| 545|[0x800048a4]<br>0x33332DDE|- rs1_val==858993460 and imm_val==-1366<br>                                                                                          |[0x80002098]:addi a1, a0, 2730<br> [0x8000209c]:sw a1, 68(ra)<br>     |
| 546|[0x800048a8]<br>0x33333339|- rs1_val==858993460 and imm_val==5<br>                                                                                              |[0x800020a8]:addi a1, a0, 5<br> [0x800020ac]:sw a1, 72(ra)<br>        |
| 547|[0x800048ac]<br>0x33333667|- rs1_val==858993460 and imm_val==819<br>                                                                                            |[0x800020b8]:addi a1, a0, 819<br> [0x800020bc]:sw a1, 76(ra)<br>      |
| 548|[0x800048b0]<br>0x3333399A|- rs1_val==858993460 and imm_val==1638<br>                                                                                           |[0x800020c8]:addi a1, a0, 1638<br> [0x800020cc]:sw a1, 80(ra)<br>     |
| 549|[0x800048b4]<br>0x33333307|- rs1_val==858993460 and imm_val==-45<br>                                                                                            |[0x800020d8]:addi a1, a0, 4051<br> [0x800020dc]:sw a1, 84(ra)<br>     |
| 550|[0x800048b8]<br>0x33333361|- rs1_val==858993460 and imm_val==45<br>                                                                                             |[0x800020e8]:addi a1, a0, 45<br> [0x800020ec]:sw a1, 88(ra)<br>       |
| 551|[0x800048bc]<br>0x33333336|- rs1_val==858993460 and imm_val==2<br>                                                                                              |[0x800020f8]:addi a1, a0, 2<br> [0x800020fc]:sw a1, 92(ra)<br>        |
| 552|[0x800048c0]<br>0x33333888|- rs1_val==858993460 and imm_val==1364<br>                                                                                           |[0x80002108]:addi a1, a0, 1364<br> [0x8000210c]:sw a1, 96(ra)<br>     |
| 553|[0x800048c4]<br>0x33333334|- rs1_val==858993460 and imm_val==0<br>                                                                                              |[0x80002118]:addi a1, a0, 0<br> [0x8000211c]:sw a1, 100(ra)<br>       |
| 554|[0x800048c8]<br>0x33333338|- rs1_val==858993460 and imm_val==4<br>                                                                                              |[0x80002128]:addi a1, a0, 4<br> [0x8000212c]:sw a1, 104(ra)<br>       |
| 555|[0x800048cc]<br>0x00000021|- rs1_val == 1<br>                                                                                                                   |[0x80002134]:addi a1, a0, 32<br> [0x80002138]:sw a1, 108(ra)<br>      |
