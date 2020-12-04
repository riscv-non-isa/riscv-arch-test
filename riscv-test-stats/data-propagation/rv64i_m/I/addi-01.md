
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x800042f0')]      |
| SIG_REGION                | [('0x80006010', '0x80007380', '622 dwords')]      |
| COV_LABELS                | addi      |
| TEST_NAME                 | /scratch/git-repo/incoresemi/riscof/riscof_work/addi-01.S/addi-01.S    |
| Total Number of coverpoints| 719     |
| Total Coverpoints Hit     | 719      |
| Total Signature Updates   | 622      |
| STAT1                     | 616      |
| STAT2                     | 6      |
| STAT3                     | 1045     |
| STAT4                     | 0     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80002500]:addi a1, a0, 3
      [0x80002504]:sd a1, 672(ra)
 -- Signature Address: 0x80006b48 Data: 0x0000000000000003
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
      [0x80002524]:addi a1, a0, 5
      [0x80002528]:sd a1, 696(ra)
 -- Signature Address: 0x80006b60 Data: 0x0000000000000005
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
      [0x80003618]:addi a1, a0, 2
      [0x8000361c]:sd a1, 1856(ra)
 -- Signature Address: 0x80006fe8 Data: 0x0000000000000002
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
      [0x80003630]:addi a1, a0, 0
      [0x80003634]:sd a1, 1872(ra)
 -- Signature Address: 0x80006ff8 Data: 0x0000000000000000
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
      [0x8000363c]:addi a1, a0, 4
      [0x80003640]:sd a1, 1880(ra)
 -- Signature Address: 0x80007000 Data: 0x0000000000000004
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
      [0x80003678]:addi a1, a0, 6
      [0x8000367c]:sd a1, 1920(ra)
 -- Signature Address: 0x80007028 Data: 0x0000000000000006
 -- Redundant Coverpoints hit by the op
      - opcode : addi
      - rs1 : x10
      - rd : x11
      - rs1 != rd
      - rs1_val == 0
      - rs1_val != imm_val
      - rs1_val==0 and imm_val==6






```

## Details of STAT3

```
[0x80000394]:addi t0, t0, 3200
[0x80000398]:addiw a7, zero, 4095
[0x8000039c]:slli a7, a7, 63

[0x800003b0]:addi ra, ra, 4095

[0x800003bc]:addi s11, zero, 9

[0x800003d0]:addi s7, s7, 4095

[0x800003dc]:addi gp, zero, 0

[0x800003f0]:addi s6, s6, 4095

[0x800003fc]:addi t2, zero, 1

[0x80000408]:addi s1, zero, 4063

[0x80000420]:addi tp, tp, 1365
[0x80000424]:slli tp, tp, 12

[0x80000428]:addi tp, tp, 1365
[0x8000042c]:slli tp, tp, 12

[0x80000430]:addi tp, tp, 1365

[0x8000046c]:addi s10, s10, 4095

[0x80000480]:addi t1, t1, 4095

[0x800004a4]:addi sp, sp, 4095

[0x800004b8]:addi zero, zero, 4095

[0x800004c4]:addi a3, zero, 4092

[0x800004e0]:addi ra, ra, 3020
[0x800004e4]:lui a0, 1024

[0x800004f8]:addi s2, s2, 4095

[0x80000510]:addi s4, s4, 2731
[0x80000514]:slli s4, s4, 12

[0x80000518]:addi s4, s4, 2731
[0x8000051c]:slli s4, s4, 12

[0x80000520]:addi s4, s4, 2730

[0x80000538]:addi s9, s9, 818

[0x80000550]:addi a4, a4, 819
[0x80000554]:slli a4, a4, 12

[0x80000558]:addi a4, a4, 819
[0x8000055c]:slli a4, a4, 12

[0x80000560]:addi a4, a4, 820

[0x80000578]:addi fp, fp, 819
[0x8000057c]:slli fp, fp, 12

[0x80000580]:addi fp, fp, 819
[0x80000584]:slli fp, fp, 12

[0x80000588]:addi fp, fp, 819

[0x80000594]:addi t5, zero, 5

[0x800005a8]:addi t0, t0, 4095

[0x800005f4]:addi t4, zero, 2

[0x80000600]:addi a0, zero, 4

[0x8000060c]:addi a0, zero, 8

[0x80000618]:addi a0, zero, 16

[0x80000624]:addi a0, zero, 32

[0x80000630]:addi a0, zero, 64

[0x8000063c]:addi a0, zero, 128

[0x80000648]:addi a0, zero, 256

[0x80000654]:addi a0, zero, 512

[0x80000660]:addi a0, zero, 1024

[0x80000910]:addi a0, zero, 4094

[0x8000091c]:addi a0, zero, 4093

[0x80000928]:addi a0, zero, 4091

[0x80000934]:addi a0, zero, 4087

[0x80000940]:addi a0, zero, 4079

[0x8000094c]:addi a0, zero, 4031

[0x80000958]:addi a0, zero, 3967

[0x80000964]:addi a0, zero, 3839

[0x80000970]:addi a0, zero, 3583

[0x8000097c]:addi a0, zero, 3071

[0x80000aa0]:addi a0, a0, 4095

[0x80000ab4]:addi a0, a0, 4095

[0x80000ac8]:addi a0, a0, 4095

[0x80000adc]:addi a0, a0, 4095

[0x80000af0]:addi a0, a0, 4095

[0x80000b04]:addi a0, a0, 4095

[0x80000b18]:addi a0, a0, 4095

[0x80000b2c]:addi a0, a0, 4095

[0x80000b40]:addi a0, a0, 4095

[0x80000b54]:addi a0, a0, 4095

[0x80000b68]:addi a0, a0, 4095

[0x80000b7c]:addi a0, a0, 4095

[0x80000b90]:addi a0, a0, 4095

[0x80000ba4]:addi a0, a0, 4095

[0x80000bb8]:addi a0, a0, 4095

[0x80000bcc]:addi a0, a0, 4095

[0x80000be0]:addi a0, a0, 4095

[0x80000bf4]:addi a0, a0, 4095

[0x80000c08]:addi a0, a0, 4095

[0x80000c1c]:addi a0, a0, 4095

[0x80000c30]:addi a0, a0, 4095

[0x80000c44]:addi a0, a0, 4095

[0x80000c58]:addi a0, a0, 4095

[0x80000c6c]:addi a0, a0, 4095

[0x80000c80]:addi a0, a0, 4095

[0x80000c8c]:addi a0, zero, 3

[0x80000c98]:addi a0, zero, 3

[0x80000ca4]:addi a0, zero, 3

[0x80000cb0]:addi a0, zero, 3

[0x80000cbc]:addi a0, zero, 3

[0x80000cc8]:addi a0, zero, 3

[0x80000cd4]:addi a0, zero, 3

[0x80000ce0]:addi a0, zero, 3

[0x80000cec]:addi a0, zero, 3

[0x80000cf8]:addi a0, zero, 3

[0x80000d04]:addi a0, zero, 3

[0x80000d10]:addi a0, zero, 3

[0x80000d1c]:addi a0, zero, 3

[0x80000d28]:addi a0, zero, 3

[0x80000d34]:addi a0, zero, 3

[0x80000d40]:addi a0, zero, 3

[0x80000d4c]:addi a0, zero, 3

[0x80000d58]:addi a0, zero, 3

[0x80000d64]:addi a0, zero, 3

[0x80000d70]:addi a0, zero, 3

[0x80000d7c]:addi a0, zero, 3

[0x80000d88]:addi a0, zero, 3

[0x80000da0]:addi a0, a0, 1365
[0x80000da4]:slli a0, a0, 12

[0x80000da8]:addi a0, a0, 1365
[0x80000dac]:slli a0, a0, 12

[0x80000db0]:addi a0, a0, 1365

[0x80000dc8]:addi a0, a0, 1365
[0x80000dcc]:slli a0, a0, 12

[0x80000dd0]:addi a0, a0, 1365
[0x80000dd4]:slli a0, a0, 12

[0x80000dd8]:addi a0, a0, 1365

[0x80000df0]:addi a0, a0, 1365
[0x80000df4]:slli a0, a0, 12

[0x80000df8]:addi a0, a0, 1365
[0x80000dfc]:slli a0, a0, 12

[0x80000e00]:addi a0, a0, 1365

[0x80000e18]:addi a0, a0, 1365
[0x80000e1c]:slli a0, a0, 12

[0x80000e20]:addi a0, a0, 1365
[0x80000e24]:slli a0, a0, 12

[0x80000e28]:addi a0, a0, 1365

[0x80000e40]:addi a0, a0, 1365
[0x80000e44]:slli a0, a0, 12

[0x80000e48]:addi a0, a0, 1365
[0x80000e4c]:slli a0, a0, 12

[0x80000e50]:addi a0, a0, 1365

[0x80000e68]:addi a0, a0, 1365
[0x80000e6c]:slli a0, a0, 12

[0x80000e70]:addi a0, a0, 1365
[0x80000e74]:slli a0, a0, 12

[0x80000e78]:addi a0, a0, 1365

[0x80000e90]:addi a0, a0, 1365
[0x80000e94]:slli a0, a0, 12

[0x80000e98]:addi a0, a0, 1365
[0x80000e9c]:slli a0, a0, 12

[0x80000ea0]:addi a0, a0, 1365

[0x80000eb8]:addi a0, a0, 1365
[0x80000ebc]:slli a0, a0, 12

[0x80000ec0]:addi a0, a0, 1365
[0x80000ec4]:slli a0, a0, 12

[0x80000ec8]:addi a0, a0, 1365

[0x80000ee0]:addi a0, a0, 1365
[0x80000ee4]:slli a0, a0, 12

[0x80000ee8]:addi a0, a0, 1365
[0x80000eec]:slli a0, a0, 12

[0x80000ef0]:addi a0, a0, 1365

[0x80000f08]:addi a0, a0, 1365
[0x80000f0c]:slli a0, a0, 12

[0x80000f10]:addi a0, a0, 1365
[0x80000f14]:slli a0, a0, 12

[0x80000f18]:addi a0, a0, 1365

[0x80000f30]:addi a0, a0, 1365
[0x80000f34]:slli a0, a0, 12

[0x80000f38]:addi a0, a0, 1365
[0x80000f3c]:slli a0, a0, 12

[0x80000f40]:addi a0, a0, 1365

[0x80000f58]:addi a0, a0, 1365
[0x80000f5c]:slli a0, a0, 12

[0x80000f60]:addi a0, a0, 1365
[0x80000f64]:slli a0, a0, 12

[0x80000f68]:addi a0, a0, 1365

[0x80000f80]:addi a0, a0, 1365
[0x80000f84]:slli a0, a0, 12

[0x80000f88]:addi a0, a0, 1365
[0x80000f8c]:slli a0, a0, 12

[0x80000f90]:addi a0, a0, 1365

[0x80000fa8]:addi a0, a0, 1365
[0x80000fac]:slli a0, a0, 12

[0x80000fb0]:addi a0, a0, 1365
[0x80000fb4]:slli a0, a0, 12

[0x80000fb8]:addi a0, a0, 1365

[0x80000fd0]:addi a0, a0, 1365
[0x80000fd4]:slli a0, a0, 12

[0x80000fd8]:addi a0, a0, 1365
[0x80000fdc]:slli a0, a0, 12

[0x80000fe0]:addi a0, a0, 1365

[0x80000ff8]:addi a0, a0, 1365
[0x80000ffc]:slli a0, a0, 12

[0x80001000]:addi a0, a0, 1365
[0x80001004]:slli a0, a0, 12

[0x80001008]:addi a0, a0, 1365

[0x80001020]:addi a0, a0, 1365
[0x80001024]:slli a0, a0, 12

[0x80001028]:addi a0, a0, 1365
[0x8000102c]:slli a0, a0, 12

[0x80001030]:addi a0, a0, 1365

[0x80001048]:addi a0, a0, 1365
[0x8000104c]:slli a0, a0, 12

[0x80001050]:addi a0, a0, 1365
[0x80001054]:slli a0, a0, 12

[0x80001058]:addi a0, a0, 1365

[0x80001070]:addi a0, a0, 1365
[0x80001074]:slli a0, a0, 12

[0x80001078]:addi a0, a0, 1365
[0x8000107c]:slli a0, a0, 12

[0x80001080]:addi a0, a0, 1365

[0x80001098]:addi a0, a0, 1365
[0x8000109c]:slli a0, a0, 12

[0x800010a0]:addi a0, a0, 1365
[0x800010a4]:slli a0, a0, 12

[0x800010a8]:addi a0, a0, 1365

[0x800010c0]:addi a0, a0, 1365
[0x800010c4]:slli a0, a0, 12

[0x800010c8]:addi a0, a0, 1365
[0x800010cc]:slli a0, a0, 12

[0x800010d0]:addi a0, a0, 1365

[0x800010e8]:addi a0, a0, 1365
[0x800010ec]:slli a0, a0, 12

[0x800010f0]:addi a0, a0, 1365
[0x800010f4]:slli a0, a0, 12

[0x800010f8]:addi a0, a0, 1365

[0x80001110]:addi a0, a0, 2731
[0x80001114]:slli a0, a0, 12

[0x80001118]:addi a0, a0, 2731
[0x8000111c]:slli a0, a0, 12

[0x80001120]:addi a0, a0, 2730

[0x80001138]:addi a0, a0, 2731
[0x8000113c]:slli a0, a0, 12

[0x80001140]:addi a0, a0, 2731
[0x80001144]:slli a0, a0, 12

[0x80001148]:addi a0, a0, 2730

[0x80001160]:addi a0, a0, 2731
[0x80001164]:slli a0, a0, 12

[0x80001168]:addi a0, a0, 2731
[0x8000116c]:slli a0, a0, 12

[0x80001170]:addi a0, a0, 2730

[0x80001188]:addi a0, a0, 2731
[0x8000118c]:slli a0, a0, 12

[0x80001190]:addi a0, a0, 2731
[0x80001194]:slli a0, a0, 12

[0x80001198]:addi a0, a0, 2730

[0x800011b0]:addi a0, a0, 2731
[0x800011b4]:slli a0, a0, 12

[0x800011b8]:addi a0, a0, 2731
[0x800011bc]:slli a0, a0, 12

[0x800011c0]:addi a0, a0, 2730

[0x800011d8]:addi a0, a0, 2731
[0x800011dc]:slli a0, a0, 12

[0x800011e0]:addi a0, a0, 2731
[0x800011e4]:slli a0, a0, 12

[0x800011e8]:addi a0, a0, 2730

[0x80001200]:addi a0, a0, 2731
[0x80001204]:slli a0, a0, 12

[0x80001208]:addi a0, a0, 2731
[0x8000120c]:slli a0, a0, 12

[0x80001210]:addi a0, a0, 2730

[0x80001228]:addi a0, a0, 2731
[0x8000122c]:slli a0, a0, 12

[0x80001230]:addi a0, a0, 2731
[0x80001234]:slli a0, a0, 12

[0x80001238]:addi a0, a0, 2730

[0x80001250]:addi a0, a0, 2731
[0x80001254]:slli a0, a0, 12

[0x80001258]:addi a0, a0, 2731
[0x8000125c]:slli a0, a0, 12

[0x80001260]:addi a0, a0, 2730

[0x80001278]:addi a0, a0, 2731
[0x8000127c]:slli a0, a0, 12

[0x80001280]:addi a0, a0, 2731
[0x80001284]:slli a0, a0, 12

[0x80001288]:addi a0, a0, 2730

[0x800012a0]:addi a0, a0, 2731
[0x800012a4]:slli a0, a0, 12

[0x800012a8]:addi a0, a0, 2731
[0x800012ac]:slli a0, a0, 12

[0x800012b0]:addi a0, a0, 2730

[0x800012c8]:addi a0, a0, 2731
[0x800012cc]:slli a0, a0, 12

[0x800012d0]:addi a0, a0, 2731
[0x800012d4]:slli a0, a0, 12

[0x800012d8]:addi a0, a0, 2730

[0x800012f0]:addi a0, a0, 2731
[0x800012f4]:slli a0, a0, 12

[0x800012f8]:addi a0, a0, 2731
[0x800012fc]:slli a0, a0, 12

[0x80001300]:addi a0, a0, 2730

[0x80001318]:addi a0, a0, 2731
[0x8000131c]:slli a0, a0, 12

[0x80001320]:addi a0, a0, 2731
[0x80001324]:slli a0, a0, 12

[0x80001328]:addi a0, a0, 2730

[0x80001340]:addi a0, a0, 2731
[0x80001344]:slli a0, a0, 12

[0x80001348]:addi a0, a0, 2731
[0x8000134c]:slli a0, a0, 12

[0x80001350]:addi a0, a0, 2730

[0x80001368]:addi a0, a0, 2731
[0x8000136c]:slli a0, a0, 12

[0x80001370]:addi a0, a0, 2731
[0x80001374]:slli a0, a0, 12

[0x80001378]:addi a0, a0, 2730

[0x80001390]:addi a0, a0, 2731
[0x80001394]:slli a0, a0, 12

[0x80001398]:addi a0, a0, 2731
[0x8000139c]:slli a0, a0, 12

[0x800013a0]:addi a0, a0, 2730

[0x800013b8]:addi a0, a0, 2731
[0x800013bc]:slli a0, a0, 12

[0x800013c0]:addi a0, a0, 2731
[0x800013c4]:slli a0, a0, 12

[0x800013c8]:addi a0, a0, 2730

[0x800013e0]:addi a0, a0, 2731
[0x800013e4]:slli a0, a0, 12

[0x800013e8]:addi a0, a0, 2731
[0x800013ec]:slli a0, a0, 12

[0x800013f0]:addi a0, a0, 2730

[0x80001408]:addi a0, a0, 2731
[0x8000140c]:slli a0, a0, 12

[0x80001410]:addi a0, a0, 2731
[0x80001414]:slli a0, a0, 12

[0x80001418]:addi a0, a0, 2730

[0x80001430]:addi a0, a0, 2731
[0x80001434]:slli a0, a0, 12

[0x80001438]:addi a0, a0, 2731
[0x8000143c]:slli a0, a0, 12

[0x80001440]:addi a0, a0, 2730

[0x80001458]:addi a0, a0, 2731
[0x8000145c]:slli a0, a0, 12

[0x80001460]:addi a0, a0, 2731
[0x80001464]:slli a0, a0, 12

[0x80001468]:addi a0, a0, 2730

[0x80001474]:addi a0, zero, 5

[0x80001480]:addi a0, zero, 5

[0x8000148c]:addi a0, zero, 5

[0x80001498]:addi a0, zero, 5

[0x800014a4]:addi a0, zero, 5

[0x800014b0]:addi a0, zero, 5

[0x800014bc]:addi a0, zero, 5

[0x800014c8]:addi a0, zero, 5

[0x800014d4]:addi a0, zero, 5

[0x800014e0]:addi a0, zero, 5

[0x800014ec]:addi a0, zero, 5

[0x800014f8]:addi a0, zero, 5

[0x80001504]:addi a0, zero, 5

[0x80001510]:addi a0, zero, 5

[0x8000151c]:addi a0, zero, 5

[0x80001528]:addi a0, zero, 5

[0x80001534]:addi a0, zero, 5

[0x80001540]:addi a0, zero, 5

[0x8000154c]:addi a0, zero, 5

[0x80001558]:addi a0, zero, 5

[0x80001564]:addi a0, zero, 5

[0x80001570]:addi a0, zero, 5

[0x80001588]:addi a0, a0, 819
[0x8000158c]:slli a0, a0, 12

[0x80001590]:addi a0, a0, 819
[0x80001594]:slli a0, a0, 12

[0x80001598]:addi a0, a0, 819

[0x800015b0]:addi a0, a0, 819
[0x800015b4]:slli a0, a0, 12

[0x800015b8]:addi a0, a0, 819
[0x800015bc]:slli a0, a0, 12

[0x800015c0]:addi a0, a0, 819

[0x800015d8]:addi a0, a0, 819
[0x800015dc]:slli a0, a0, 12

[0x800015e0]:addi a0, a0, 819
[0x800015e4]:slli a0, a0, 12

[0x800015e8]:addi a0, a0, 819

[0x80001600]:addi a0, a0, 819
[0x80001604]:slli a0, a0, 12

[0x80001608]:addi a0, a0, 819
[0x8000160c]:slli a0, a0, 12

[0x80001610]:addi a0, a0, 819

[0x80001628]:addi a0, a0, 819
[0x8000162c]:slli a0, a0, 12

[0x80001630]:addi a0, a0, 819
[0x80001634]:slli a0, a0, 12

[0x80001638]:addi a0, a0, 819

[0x80001650]:addi a0, a0, 819
[0x80001654]:slli a0, a0, 12

[0x80001658]:addi a0, a0, 819
[0x8000165c]:slli a0, a0, 12

[0x80001660]:addi a0, a0, 819

[0x80001678]:addi a0, a0, 819
[0x8000167c]:slli a0, a0, 12

[0x80001680]:addi a0, a0, 819
[0x80001684]:slli a0, a0, 12

[0x80001688]:addi a0, a0, 819

[0x800016a0]:addi a0, a0, 819
[0x800016a4]:slli a0, a0, 12

[0x800016a8]:addi a0, a0, 819
[0x800016ac]:slli a0, a0, 12

[0x800016b0]:addi a0, a0, 819

[0x800016c8]:addi a0, a0, 819
[0x800016cc]:slli a0, a0, 12

[0x800016d0]:addi a0, a0, 819
[0x800016d4]:slli a0, a0, 12

[0x800016d8]:addi a0, a0, 819

[0x800016f0]:addi a0, a0, 819
[0x800016f4]:slli a0, a0, 12

[0x800016f8]:addi a0, a0, 819
[0x800016fc]:slli a0, a0, 12

[0x80001700]:addi a0, a0, 819

[0x80001718]:addi a0, a0, 819
[0x8000171c]:slli a0, a0, 12

[0x80001720]:addi a0, a0, 819
[0x80001724]:slli a0, a0, 12

[0x80001728]:addi a0, a0, 819

[0x80001740]:addi a0, a0, 819
[0x80001744]:slli a0, a0, 12

[0x80001748]:addi a0, a0, 819
[0x8000174c]:slli a0, a0, 12

[0x80001750]:addi a0, a0, 819

[0x80001768]:addi a0, a0, 819
[0x8000176c]:slli a0, a0, 12

[0x80001770]:addi a0, a0, 819
[0x80001774]:slli a0, a0, 12

[0x80001778]:addi a0, a0, 819

[0x80001790]:addi a0, a0, 819
[0x80001794]:slli a0, a0, 12

[0x80001798]:addi a0, a0, 819
[0x8000179c]:slli a0, a0, 12

[0x800017a0]:addi a0, a0, 819

[0x800017b8]:addi a0, a0, 819
[0x800017bc]:slli a0, a0, 12

[0x800017c0]:addi a0, a0, 819
[0x800017c4]:slli a0, a0, 12

[0x800017c8]:addi a0, a0, 819

[0x800017e0]:addi a0, a0, 819
[0x800017e4]:slli a0, a0, 12

[0x800017e8]:addi a0, a0, 819
[0x800017ec]:slli a0, a0, 12

[0x800017f0]:addi a0, a0, 819

[0x80001808]:addi a0, a0, 819
[0x8000180c]:slli a0, a0, 12

[0x80001810]:addi a0, a0, 819
[0x80001814]:slli a0, a0, 12

[0x80001818]:addi a0, a0, 819

[0x80001830]:addi a0, a0, 819
[0x80001834]:slli a0, a0, 12

[0x80001838]:addi a0, a0, 819
[0x8000183c]:slli a0, a0, 12

[0x80001840]:addi a0, a0, 819

[0x80001858]:addi a0, a0, 819
[0x8000185c]:slli a0, a0, 12

[0x80001860]:addi a0, a0, 819
[0x80001864]:slli a0, a0, 12

[0x80001868]:addi a0, a0, 819

[0x80001880]:addi a0, a0, 819
[0x80001884]:slli a0, a0, 12

[0x80001888]:addi a0, a0, 819
[0x8000188c]:slli a0, a0, 12

[0x80001890]:addi a0, a0, 819

[0x800018a8]:addi a0, a0, 819
[0x800018ac]:slli a0, a0, 12

[0x800018b0]:addi a0, a0, 819
[0x800018b4]:slli a0, a0, 12

[0x800018b8]:addi a0, a0, 819

[0x800018d0]:addi a0, a0, 819
[0x800018d4]:slli a0, a0, 12

[0x800018d8]:addi a0, a0, 819
[0x800018dc]:slli a0, a0, 12

[0x800018e0]:addi a0, a0, 819

[0x800018f8]:addi a0, a0, 819
[0x800018fc]:slli a0, a0, 12

[0x80001900]:addi a0, a0, 819
[0x80001904]:slli a0, a0, 13

[0x80001908]:addi a0, a0, 1638

[0x80001920]:addi a0, a0, 819
[0x80001924]:slli a0, a0, 12

[0x80001928]:addi a0, a0, 819
[0x8000192c]:slli a0, a0, 13

[0x80001930]:addi a0, a0, 1638

[0x80001948]:addi a0, a0, 819
[0x8000194c]:slli a0, a0, 12

[0x80001950]:addi a0, a0, 819
[0x80001954]:slli a0, a0, 13

[0x80001958]:addi a0, a0, 1638

[0x80001970]:addi a0, a0, 819
[0x80001974]:slli a0, a0, 12

[0x80001978]:addi a0, a0, 819
[0x8000197c]:slli a0, a0, 13

[0x80001980]:addi a0, a0, 1638

[0x80001998]:addi a0, a0, 819
[0x8000199c]:slli a0, a0, 12

[0x800019a0]:addi a0, a0, 819
[0x800019a4]:slli a0, a0, 13

[0x800019a8]:addi a0, a0, 1638

[0x800019c0]:addi a0, a0, 819
[0x800019c4]:slli a0, a0, 12

[0x800019c8]:addi a0, a0, 819
[0x800019cc]:slli a0, a0, 13

[0x800019d0]:addi a0, a0, 1638

[0x800019e8]:addi a0, a0, 819
[0x800019ec]:slli a0, a0, 12

[0x800019f0]:addi a0, a0, 819
[0x800019f4]:slli a0, a0, 13

[0x800019f8]:addi a0, a0, 1638

[0x80001a10]:addi a0, a0, 819
[0x80001a14]:slli a0, a0, 12

[0x80001a18]:addi a0, a0, 819
[0x80001a1c]:slli a0, a0, 13

[0x80001a20]:addi a0, a0, 1638

[0x80001a38]:addi a0, a0, 819
[0x80001a3c]:slli a0, a0, 12

[0x80001a40]:addi a0, a0, 819
[0x80001a44]:slli a0, a0, 13

[0x80001a48]:addi a0, a0, 1638

[0x80001a60]:addi a0, a0, 819
[0x80001a64]:slli a0, a0, 12

[0x80001a68]:addi a0, a0, 819
[0x80001a6c]:slli a0, a0, 13

[0x80001a70]:addi a0, a0, 1638

[0x80001a88]:addi a0, a0, 819
[0x80001a8c]:slli a0, a0, 12

[0x80001a90]:addi a0, a0, 819
[0x80001a94]:slli a0, a0, 13

[0x80001a98]:addi a0, a0, 1638

[0x80001ab0]:addi a0, a0, 819
[0x80001ab4]:slli a0, a0, 12

[0x80001ab8]:addi a0, a0, 819
[0x80001abc]:slli a0, a0, 13

[0x80001ac0]:addi a0, a0, 1638

[0x80001ad8]:addi a0, a0, 819
[0x80001adc]:slli a0, a0, 12

[0x80001ae0]:addi a0, a0, 819
[0x80001ae4]:slli a0, a0, 13

[0x80001ae8]:addi a0, a0, 1638

[0x80001b00]:addi a0, a0, 819
[0x80001b04]:slli a0, a0, 12

[0x80001b08]:addi a0, a0, 819
[0x80001b0c]:slli a0, a0, 13

[0x80001b10]:addi a0, a0, 1638

[0x80001b28]:addi a0, a0, 819
[0x80001b2c]:slli a0, a0, 12

[0x80001b30]:addi a0, a0, 819
[0x80001b34]:slli a0, a0, 13

[0x80001b38]:addi a0, a0, 1638

[0x80001b50]:addi a0, a0, 819
[0x80001b54]:slli a0, a0, 12

[0x80001b58]:addi a0, a0, 819
[0x80001b5c]:slli a0, a0, 13

[0x80001b60]:addi a0, a0, 1638

[0x80001b78]:addi a0, a0, 819
[0x80001b7c]:slli a0, a0, 12

[0x80001b80]:addi a0, a0, 819
[0x80001b84]:slli a0, a0, 13

[0x80001b88]:addi a0, a0, 1638

[0x80001ba0]:addi a0, a0, 819
[0x80001ba4]:slli a0, a0, 12

[0x80001ba8]:addi a0, a0, 819
[0x80001bac]:slli a0, a0, 13

[0x80001bb0]:addi a0, a0, 1638

[0x80001bc8]:addi a0, a0, 819
[0x80001bcc]:slli a0, a0, 12

[0x80001bd0]:addi a0, a0, 819
[0x80001bd4]:slli a0, a0, 13

[0x80001bd8]:addi a0, a0, 1638

[0x80001bf0]:addi a0, a0, 819
[0x80001bf4]:slli a0, a0, 12

[0x80001bf8]:addi a0, a0, 819
[0x80001bfc]:slli a0, a0, 13

[0x80001c00]:addi a0, a0, 1638

[0x80001c18]:addi a0, a0, 819
[0x80001c1c]:slli a0, a0, 12

[0x80001c20]:addi a0, a0, 819
[0x80001c24]:slli a0, a0, 13

[0x80001c28]:addi a0, a0, 1638

[0x80001c40]:addi a0, a0, 819
[0x80001c44]:slli a0, a0, 12

[0x80001c48]:addi a0, a0, 819
[0x80001c4c]:slli a0, a0, 13

[0x80001c50]:addi a0, a0, 1638

[0x80001c68]:addi a0, a0, 3277

[0x80001c80]:addi a0, a0, 3277

[0x80001c98]:addi a0, a0, 3277

[0x80001cb0]:addi a0, a0, 3277

[0x80001cc0]:addi ra, ra, 3052
[0x80001cc4]:lui a0, 1048395
[0x80001cc8]:addiw a0, a0, 4017
[0x80001ccc]:slli a0, a0, 12

[0x80001cd0]:addi a0, a0, 3277

[0x80001ce8]:addi a0, a0, 3277

[0x80001d00]:addi a0, a0, 3277

[0x80001d18]:addi a0, a0, 3277

[0x80001d30]:addi a0, a0, 3277

[0x80001d48]:addi a0, a0, 3277

[0x80001d60]:addi a0, a0, 3277

[0x80001d78]:addi a0, a0, 3277

[0x80001d90]:addi a0, a0, 3277

[0x80001da8]:addi a0, a0, 3277

[0x80001dc0]:addi a0, a0, 3277

[0x80001dd8]:addi a0, a0, 3277

[0x80001df0]:addi a0, a0, 3277

[0x80001e08]:addi a0, a0, 3277

[0x80001e20]:addi a0, a0, 3277

[0x80001e38]:addi a0, a0, 3277

[0x80001e50]:addi a0, a0, 3277

[0x80001e68]:addi a0, a0, 3277

[0x80001e80]:addi a0, a0, 819

[0x80001e98]:addi a0, a0, 819

[0x80001eb0]:addi a0, a0, 819

[0x80001ec8]:addi a0, a0, 819

[0x80001ee0]:addi a0, a0, 819

[0x80001ef8]:addi a0, a0, 819

[0x80001f10]:addi a0, a0, 819

[0x80001f28]:addi a0, a0, 819

[0x80001f40]:addi a0, a0, 819

[0x80001f58]:addi a0, a0, 819

[0x80001f70]:addi a0, a0, 819

[0x80001f88]:addi a0, a0, 819

[0x80001fa0]:addi a0, a0, 819

[0x80001fb8]:addi a0, a0, 819

[0x80001fd0]:addi a0, a0, 819

[0x80001fe8]:addi a0, a0, 819

[0x80002000]:addi a0, a0, 819

[0x80002018]:addi a0, a0, 819

[0x80002030]:addi a0, a0, 819

[0x80002048]:addi a0, a0, 819

[0x80002060]:addi a0, a0, 819

[0x80002078]:addi a0, a0, 819

[0x80002084]:addi a0, zero, 2

[0x80002090]:addi a0, zero, 2

[0x8000209c]:addi a0, zero, 2

[0x800020a8]:addi a0, zero, 2

[0x800020b4]:addi a0, zero, 2

[0x800020c0]:addi a0, zero, 2

[0x800020cc]:addi a0, zero, 2

[0x800020d8]:addi a0, zero, 2

[0x800020e4]:addi a0, zero, 2

[0x800020f0]:addi a0, zero, 2

[0x800020fc]:addi a0, zero, 2

[0x80002108]:addi a0, zero, 2

[0x80002114]:addi a0, zero, 2

[0x80002120]:addi a0, zero, 2

[0x8000212c]:addi a0, zero, 2

[0x80002138]:addi a0, zero, 2

[0x80002144]:addi a0, zero, 2

[0x80002150]:addi a0, zero, 2

[0x8000215c]:addi a0, zero, 2

[0x80002168]:addi a0, zero, 2

[0x80002174]:addi a0, zero, 2

[0x80002180]:addi a0, zero, 2

[0x80002198]:addi a0, a0, 1365
[0x8000219c]:slli a0, a0, 12

[0x800021a0]:addi a0, a0, 1365
[0x800021a4]:slli a0, a0, 12

[0x800021a8]:addi a0, a0, 1364

[0x800021c0]:addi a0, a0, 1365
[0x800021c4]:slli a0, a0, 12

[0x800021c8]:addi a0, a0, 1365
[0x800021cc]:slli a0, a0, 12

[0x800021d0]:addi a0, a0, 1364

[0x800021e8]:addi a0, a0, 1365
[0x800021ec]:slli a0, a0, 12

[0x800021f0]:addi a0, a0, 1365
[0x800021f4]:slli a0, a0, 12

[0x800021f8]:addi a0, a0, 1364

[0x80002210]:addi a0, a0, 1365
[0x80002214]:slli a0, a0, 12

[0x80002218]:addi a0, a0, 1365
[0x8000221c]:slli a0, a0, 12

[0x80002220]:addi a0, a0, 1364

[0x80002238]:addi a0, a0, 1365
[0x8000223c]:slli a0, a0, 12

[0x80002240]:addi a0, a0, 1365
[0x80002244]:slli a0, a0, 12

[0x80002248]:addi a0, a0, 1364

[0x80002260]:addi a0, a0, 1365
[0x80002264]:slli a0, a0, 12

[0x80002268]:addi a0, a0, 1365
[0x8000226c]:slli a0, a0, 12

[0x80002270]:addi a0, a0, 1364

[0x80002288]:addi a0, a0, 1365
[0x8000228c]:slli a0, a0, 12

[0x80002290]:addi a0, a0, 1365
[0x80002294]:slli a0, a0, 12

[0x80002298]:addi a0, a0, 1364

[0x800022b0]:addi a0, a0, 1365
[0x800022b4]:slli a0, a0, 12

[0x800022b8]:addi a0, a0, 1365
[0x800022bc]:slli a0, a0, 12

[0x800022c0]:addi a0, a0, 1364

[0x800022d8]:addi a0, a0, 1365
[0x800022dc]:slli a0, a0, 12

[0x800022e0]:addi a0, a0, 1365
[0x800022e4]:slli a0, a0, 12

[0x800022e8]:addi a0, a0, 1364

[0x80002300]:addi a0, a0, 1365
[0x80002304]:slli a0, a0, 12

[0x80002308]:addi a0, a0, 1365
[0x8000230c]:slli a0, a0, 12

[0x80002310]:addi a0, a0, 1364

[0x80002328]:addi a0, a0, 1365
[0x8000232c]:slli a0, a0, 12

[0x80002330]:addi a0, a0, 1365
[0x80002334]:slli a0, a0, 12

[0x80002338]:addi a0, a0, 1364

[0x80002350]:addi a0, a0, 1365
[0x80002354]:slli a0, a0, 12

[0x80002358]:addi a0, a0, 1365
[0x8000235c]:slli a0, a0, 12

[0x80002360]:addi a0, a0, 1364

[0x80002378]:addi a0, a0, 1365
[0x8000237c]:slli a0, a0, 12

[0x80002380]:addi a0, a0, 1365
[0x80002384]:slli a0, a0, 12

[0x80002388]:addi a0, a0, 1364

[0x800023a0]:addi a0, a0, 1365
[0x800023a4]:slli a0, a0, 12

[0x800023a8]:addi a0, a0, 1365
[0x800023ac]:slli a0, a0, 12

[0x800023b0]:addi a0, a0, 1364

[0x800023c8]:addi a0, a0, 1365
[0x800023cc]:slli a0, a0, 12

[0x800023d0]:addi a0, a0, 1365
[0x800023d4]:slli a0, a0, 12

[0x800023d8]:addi a0, a0, 1364

[0x800023f0]:addi a0, a0, 1365
[0x800023f4]:slli a0, a0, 12

[0x800023f8]:addi a0, a0, 1365
[0x800023fc]:slli a0, a0, 12

[0x80002400]:addi a0, a0, 1364

[0x80002418]:addi a0, a0, 1365
[0x8000241c]:slli a0, a0, 12

[0x80002420]:addi a0, a0, 1365
[0x80002424]:slli a0, a0, 12

[0x80002428]:addi a0, a0, 1364

[0x80002440]:addi a0, a0, 1365
[0x80002444]:slli a0, a0, 12

[0x80002448]:addi a0, a0, 1365
[0x8000244c]:slli a0, a0, 12

[0x80002450]:addi a0, a0, 1364

[0x80002468]:addi a0, a0, 1365
[0x8000246c]:slli a0, a0, 12

[0x80002470]:addi a0, a0, 1365
[0x80002474]:slli a0, a0, 12

[0x80002478]:addi a0, a0, 1364

[0x80002490]:addi a0, a0, 1365
[0x80002494]:slli a0, a0, 12

[0x80002498]:addi a0, a0, 1365
[0x8000249c]:slli a0, a0, 12

[0x800024a0]:addi a0, a0, 1364

[0x800024b8]:addi a0, a0, 1365
[0x800024bc]:slli a0, a0, 12

[0x800024c0]:addi a0, a0, 1365
[0x800024c4]:slli a0, a0, 12

[0x800024c8]:addi a0, a0, 1364

[0x800024e0]:addi a0, a0, 1365
[0x800024e4]:slli a0, a0, 12

[0x800024e8]:addi a0, a0, 1365
[0x800024ec]:slli a0, a0, 12

[0x800024f0]:addi a0, a0, 1364

[0x800024fc]:addi a0, zero, 0

[0x80002508]:addi a0, zero, 0

[0x80002514]:addi a0, zero, 0

[0x80002520]:addi a0, zero, 0

[0x8000252c]:addi a0, zero, 0

[0x80002538]:addi a0, zero, 0

[0x80002544]:addi a0, zero, 0

[0x8000255c]:addi a0, a0, 1365
[0x80002560]:slli a0, a0, 12

[0x80002564]:addi a0, a0, 1365
[0x80002568]:slli a0, a0, 12

[0x8000256c]:addi a0, a0, 1366

[0x80002584]:addi a0, a0, 1365
[0x80002588]:slli a0, a0, 12

[0x8000258c]:addi a0, a0, 1365
[0x80002590]:slli a0, a0, 12

[0x80002594]:addi a0, a0, 1366

[0x800025ac]:addi a0, a0, 1365
[0x800025b0]:slli a0, a0, 12

[0x800025b4]:addi a0, a0, 1365
[0x800025b8]:slli a0, a0, 12

[0x800025bc]:addi a0, a0, 1366

[0x800025d4]:addi a0, a0, 1365
[0x800025d8]:slli a0, a0, 12

[0x800025dc]:addi a0, a0, 1365
[0x800025e0]:slli a0, a0, 12

[0x800025e4]:addi a0, a0, 1366

[0x800025fc]:addi a0, a0, 1365
[0x80002600]:slli a0, a0, 12

[0x80002604]:addi a0, a0, 1365
[0x80002608]:slli a0, a0, 12

[0x8000260c]:addi a0, a0, 1366

[0x80002624]:addi a0, a0, 1365
[0x80002628]:slli a0, a0, 12

[0x8000262c]:addi a0, a0, 1365
[0x80002630]:slli a0, a0, 12

[0x80002634]:addi a0, a0, 1366

[0x8000264c]:addi a0, a0, 1365
[0x80002650]:slli a0, a0, 12

[0x80002654]:addi a0, a0, 1365
[0x80002658]:slli a0, a0, 12

[0x8000265c]:addi a0, a0, 1366

[0x80002674]:addi a0, a0, 1365
[0x80002678]:slli a0, a0, 12

[0x8000267c]:addi a0, a0, 1365
[0x80002680]:slli a0, a0, 12

[0x80002684]:addi a0, a0, 1366

[0x8000269c]:addi a0, a0, 2731
[0x800026a0]:slli a0, a0, 12

[0x800026a4]:addi a0, a0, 2731
[0x800026a8]:slli a0, a0, 12

[0x800026ac]:addi a0, a0, 2731

[0x800026c4]:addi a0, a0, 2731
[0x800026c8]:slli a0, a0, 12

[0x800026cc]:addi a0, a0, 2731
[0x800026d0]:slli a0, a0, 12

[0x800026d4]:addi a0, a0, 2731

[0x800026ec]:addi a0, a0, 2731
[0x800026f0]:slli a0, a0, 12

[0x800026f4]:addi a0, a0, 2731
[0x800026f8]:slli a0, a0, 12

[0x800026fc]:addi a0, a0, 2731

[0x80002714]:addi a0, a0, 2731
[0x80002718]:slli a0, a0, 12

[0x8000271c]:addi a0, a0, 2731
[0x80002720]:slli a0, a0, 12

[0x80002724]:addi a0, a0, 2731

[0x8000273c]:addi a0, a0, 2731
[0x80002740]:slli a0, a0, 12

[0x80002744]:addi a0, a0, 2731
[0x80002748]:slli a0, a0, 12

[0x8000274c]:addi a0, a0, 2731

[0x80002764]:addi a0, a0, 2731
[0x80002768]:slli a0, a0, 12

[0x8000276c]:addi a0, a0, 2731
[0x80002770]:slli a0, a0, 12

[0x80002774]:addi a0, a0, 2731

[0x8000278c]:addi a0, a0, 2731
[0x80002790]:slli a0, a0, 12

[0x80002794]:addi a0, a0, 2731
[0x80002798]:slli a0, a0, 12

[0x8000279c]:addi a0, a0, 2731

[0x800027b4]:addi a0, a0, 2731
[0x800027b8]:slli a0, a0, 12

[0x800027bc]:addi a0, a0, 2731
[0x800027c0]:slli a0, a0, 12

[0x800027c4]:addi a0, a0, 2731

[0x800027dc]:addi a0, a0, 2731
[0x800027e0]:slli a0, a0, 12

[0x800027e4]:addi a0, a0, 2731
[0x800027e8]:slli a0, a0, 12

[0x800027ec]:addi a0, a0, 2731

[0x80002804]:addi a0, a0, 2731
[0x80002808]:slli a0, a0, 12

[0x8000280c]:addi a0, a0, 2731
[0x80002810]:slli a0, a0, 12

[0x80002814]:addi a0, a0, 2731

[0x8000282c]:addi a0, a0, 2731
[0x80002830]:slli a0, a0, 12

[0x80002834]:addi a0, a0, 2731
[0x80002838]:slli a0, a0, 12

[0x8000283c]:addi a0, a0, 2731

[0x80002854]:addi a0, a0, 2731
[0x80002858]:slli a0, a0, 12

[0x8000285c]:addi a0, a0, 2731
[0x80002860]:slli a0, a0, 12

[0x80002864]:addi a0, a0, 2731

[0x8000287c]:addi a0, a0, 2731
[0x80002880]:slli a0, a0, 12

[0x80002884]:addi a0, a0, 2731
[0x80002888]:slli a0, a0, 12

[0x8000288c]:addi a0, a0, 2731

[0x800028a4]:addi a0, a0, 2731
[0x800028a8]:slli a0, a0, 12

[0x800028ac]:addi a0, a0, 2731
[0x800028b0]:slli a0, a0, 12

[0x800028b4]:addi a0, a0, 2731

[0x800028cc]:addi a0, a0, 2731
[0x800028d0]:slli a0, a0, 12

[0x800028d4]:addi a0, a0, 2731
[0x800028d8]:slli a0, a0, 12

[0x800028dc]:addi a0, a0, 2731

[0x800028f4]:addi a0, a0, 2731
[0x800028f8]:slli a0, a0, 12

[0x800028fc]:addi a0, a0, 2731
[0x80002900]:slli a0, a0, 12

[0x80002904]:addi a0, a0, 2731

[0x8000291c]:addi a0, a0, 2731
[0x80002920]:slli a0, a0, 12

[0x80002924]:addi a0, a0, 2731
[0x80002928]:slli a0, a0, 12

[0x8000292c]:addi a0, a0, 2731

[0x80002944]:addi a0, a0, 2731
[0x80002948]:slli a0, a0, 12

[0x8000294c]:addi a0, a0, 2731
[0x80002950]:slli a0, a0, 12

[0x80002954]:addi a0, a0, 2731

[0x8000296c]:addi a0, a0, 2731
[0x80002970]:slli a0, a0, 12

[0x80002974]:addi a0, a0, 2731
[0x80002978]:slli a0, a0, 12

[0x8000297c]:addi a0, a0, 2731

[0x80002994]:addi a0, a0, 2731
[0x80002998]:slli a0, a0, 12

[0x8000299c]:addi a0, a0, 2731
[0x800029a0]:slli a0, a0, 12

[0x800029a4]:addi a0, a0, 2731

[0x800029bc]:addi a0, a0, 2731
[0x800029c0]:slli a0, a0, 12

[0x800029c4]:addi a0, a0, 2731
[0x800029c8]:slli a0, a0, 12

[0x800029cc]:addi a0, a0, 2731

[0x800029e4]:addi a0, a0, 2731
[0x800029e8]:slli a0, a0, 12

[0x800029ec]:addi a0, a0, 2731
[0x800029f0]:slli a0, a0, 12

[0x800029f4]:addi a0, a0, 2731

[0x80002a00]:addi a0, zero, 6

[0x80002a0c]:addi a0, zero, 6

[0x80002a18]:addi a0, zero, 6

[0x80002a24]:addi a0, zero, 6

[0x80002a30]:addi a0, zero, 6

[0x80002a3c]:addi a0, zero, 6

[0x80002a48]:addi a0, zero, 6

[0x80002a54]:addi a0, zero, 6

[0x80002a60]:addi a0, zero, 6

[0x80002a6c]:addi a0, zero, 6

[0x80002a78]:addi a0, zero, 6

[0x80002a84]:addi a0, zero, 6

[0x80002a90]:addi a0, zero, 6

[0x80002a9c]:addi a0, zero, 6

[0x80002aa8]:addi a0, zero, 6

[0x80002ab4]:addi a0, zero, 6

[0x80002ac0]:addi a0, zero, 6

[0x80002acc]:addi a0, zero, 6

[0x80002ad8]:addi a0, zero, 6

[0x80002ae4]:addi a0, zero, 6

[0x80002af0]:addi a0, zero, 6

[0x80002afc]:addi a0, zero, 6

[0x80002b14]:addi a0, a0, 819
[0x80002b18]:slli a0, a0, 12

[0x80002b1c]:addi a0, a0, 819
[0x80002b20]:slli a0, a0, 12

[0x80002b24]:addi a0, a0, 820

[0x80002b3c]:addi a0, a0, 819
[0x80002b40]:slli a0, a0, 12

[0x80002b44]:addi a0, a0, 819
[0x80002b48]:slli a0, a0, 12

[0x80002b4c]:addi a0, a0, 820

[0x80002b64]:addi a0, a0, 819
[0x80002b68]:slli a0, a0, 12

[0x80002b6c]:addi a0, a0, 819
[0x80002b70]:slli a0, a0, 12

[0x80002b74]:addi a0, a0, 820

[0x80002b8c]:addi a0, a0, 819
[0x80002b90]:slli a0, a0, 12

[0x80002b94]:addi a0, a0, 819
[0x80002b98]:slli a0, a0, 12

[0x80002b9c]:addi a0, a0, 820

[0x80002bb4]:addi a0, a0, 819
[0x80002bb8]:slli a0, a0, 12

[0x80002bbc]:addi a0, a0, 819
[0x80002bc0]:slli a0, a0, 12

[0x80002bc4]:addi a0, a0, 820

[0x80002bdc]:addi a0, a0, 819
[0x80002be0]:slli a0, a0, 12

[0x80002be4]:addi a0, a0, 819
[0x80002be8]:slli a0, a0, 12

[0x80002bec]:addi a0, a0, 820

[0x80002c04]:addi a0, a0, 819
[0x80002c08]:slli a0, a0, 12

[0x80002c0c]:addi a0, a0, 819
[0x80002c10]:slli a0, a0, 12

[0x80002c14]:addi a0, a0, 820

[0x80002c2c]:addi a0, a0, 819
[0x80002c30]:slli a0, a0, 12

[0x80002c34]:addi a0, a0, 819
[0x80002c38]:slli a0, a0, 12

[0x80002c3c]:addi a0, a0, 820

[0x80002c54]:addi a0, a0, 819
[0x80002c58]:slli a0, a0, 12

[0x80002c5c]:addi a0, a0, 819
[0x80002c60]:slli a0, a0, 12

[0x80002c64]:addi a0, a0, 820

[0x80002c7c]:addi a0, a0, 819
[0x80002c80]:slli a0, a0, 12

[0x80002c84]:addi a0, a0, 819
[0x80002c88]:slli a0, a0, 12

[0x80002c8c]:addi a0, a0, 820

[0x80002ca4]:addi a0, a0, 819
[0x80002ca8]:slli a0, a0, 12

[0x80002cac]:addi a0, a0, 819
[0x80002cb0]:slli a0, a0, 12

[0x80002cb4]:addi a0, a0, 820

[0x80002ccc]:addi a0, a0, 819
[0x80002cd0]:slli a0, a0, 12

[0x80002cd4]:addi a0, a0, 819
[0x80002cd8]:slli a0, a0, 12

[0x80002cdc]:addi a0, a0, 820

[0x80002cf4]:addi a0, a0, 819
[0x80002cf8]:slli a0, a0, 12

[0x80002cfc]:addi a0, a0, 819
[0x80002d00]:slli a0, a0, 12

[0x80002d04]:addi a0, a0, 820

[0x80002d1c]:addi a0, a0, 819
[0x80002d20]:slli a0, a0, 12

[0x80002d24]:addi a0, a0, 819
[0x80002d28]:slli a0, a0, 12

[0x80002d2c]:addi a0, a0, 820

[0x80002d44]:addi a0, a0, 819
[0x80002d48]:slli a0, a0, 12

[0x80002d4c]:addi a0, a0, 819
[0x80002d50]:slli a0, a0, 12

[0x80002d54]:addi a0, a0, 820

[0x80002d6c]:addi a0, a0, 819
[0x80002d70]:slli a0, a0, 12

[0x80002d74]:addi a0, a0, 819
[0x80002d78]:slli a0, a0, 12

[0x80002d7c]:addi a0, a0, 820

[0x80002d94]:addi a0, a0, 819
[0x80002d98]:slli a0, a0, 12

[0x80002d9c]:addi a0, a0, 819
[0x80002da0]:slli a0, a0, 12

[0x80002da4]:addi a0, a0, 820

[0x80002dbc]:addi a0, a0, 819
[0x80002dc0]:slli a0, a0, 12

[0x80002dc4]:addi a0, a0, 819
[0x80002dc8]:slli a0, a0, 12

[0x80002dcc]:addi a0, a0, 820

[0x80002de4]:addi a0, a0, 819
[0x80002de8]:slli a0, a0, 12

[0x80002dec]:addi a0, a0, 819
[0x80002df0]:slli a0, a0, 12

[0x80002df4]:addi a0, a0, 820

[0x80002e0c]:addi a0, a0, 819
[0x80002e10]:slli a0, a0, 12

[0x80002e14]:addi a0, a0, 819
[0x80002e18]:slli a0, a0, 12

[0x80002e1c]:addi a0, a0, 820

[0x80002e34]:addi a0, a0, 819
[0x80002e38]:slli a0, a0, 12

[0x80002e3c]:addi a0, a0, 819
[0x80002e40]:slli a0, a0, 12

[0x80002e44]:addi a0, a0, 820

[0x80002e5c]:addi a0, a0, 819
[0x80002e60]:slli a0, a0, 12

[0x80002e64]:addi a0, a0, 819
[0x80002e68]:slli a0, a0, 12

[0x80002e6c]:addi a0, a0, 820

[0x80002e84]:addi a0, a0, 819
[0x80002e88]:slli a0, a0, 12

[0x80002e8c]:addi a0, a0, 819
[0x80002e90]:slli a0, a0, 13

[0x80002e94]:addi a0, a0, 1639

[0x80002eac]:addi a0, a0, 819
[0x80002eb0]:slli a0, a0, 12

[0x80002eb4]:addi a0, a0, 819
[0x80002eb8]:slli a0, a0, 13

[0x80002ebc]:addi a0, a0, 1639

[0x80002ed4]:addi a0, a0, 819
[0x80002ed8]:slli a0, a0, 12

[0x80002edc]:addi a0, a0, 819
[0x80002ee0]:slli a0, a0, 13

[0x80002ee4]:addi a0, a0, 1639

[0x80002efc]:addi a0, a0, 819
[0x80002f00]:slli a0, a0, 12

[0x80002f04]:addi a0, a0, 819
[0x80002f08]:slli a0, a0, 13

[0x80002f0c]:addi a0, a0, 1639

[0x80002f24]:addi a0, a0, 819
[0x80002f28]:slli a0, a0, 12

[0x80002f2c]:addi a0, a0, 819
[0x80002f30]:slli a0, a0, 13

[0x80002f34]:addi a0, a0, 1639

[0x80002f4c]:addi a0, a0, 819
[0x80002f50]:slli a0, a0, 12

[0x80002f54]:addi a0, a0, 819
[0x80002f58]:slli a0, a0, 13

[0x80002f5c]:addi a0, a0, 1639

[0x80002f74]:addi a0, a0, 819
[0x80002f78]:slli a0, a0, 12

[0x80002f7c]:addi a0, a0, 819
[0x80002f80]:slli a0, a0, 13

[0x80002f84]:addi a0, a0, 1639

[0x80002f9c]:addi a0, a0, 819
[0x80002fa0]:slli a0, a0, 12

[0x80002fa4]:addi a0, a0, 819
[0x80002fa8]:slli a0, a0, 13

[0x80002fac]:addi a0, a0, 1639

[0x80002fc4]:addi a0, a0, 819
[0x80002fc8]:slli a0, a0, 12

[0x80002fcc]:addi a0, a0, 819
[0x80002fd0]:slli a0, a0, 13

[0x80002fd4]:addi a0, a0, 1639

[0x80002fec]:addi a0, a0, 819
[0x80002ff0]:slli a0, a0, 12

[0x80002ff4]:addi a0, a0, 819
[0x80002ff8]:slli a0, a0, 13

[0x80002ffc]:addi a0, a0, 1639

[0x80003014]:addi a0, a0, 819
[0x80003018]:slli a0, a0, 12

[0x8000301c]:addi a0, a0, 819
[0x80003020]:slli a0, a0, 13

[0x80003024]:addi a0, a0, 1639

[0x8000303c]:addi a0, a0, 819
[0x80003040]:slli a0, a0, 12

[0x80003044]:addi a0, a0, 819
[0x80003048]:slli a0, a0, 13

[0x8000304c]:addi a0, a0, 1639

[0x80003064]:addi a0, a0, 819
[0x80003068]:slli a0, a0, 12

[0x8000306c]:addi a0, a0, 819
[0x80003070]:slli a0, a0, 13

[0x80003074]:addi a0, a0, 1639

[0x8000308c]:addi a0, a0, 819
[0x80003090]:slli a0, a0, 12

[0x80003094]:addi a0, a0, 819
[0x80003098]:slli a0, a0, 13

[0x8000309c]:addi a0, a0, 1639

[0x800030b4]:addi a0, a0, 819
[0x800030b8]:slli a0, a0, 12

[0x800030bc]:addi a0, a0, 819
[0x800030c0]:slli a0, a0, 13

[0x800030c4]:addi a0, a0, 1639

[0x800030dc]:addi a0, a0, 819
[0x800030e0]:slli a0, a0, 12

[0x800030e4]:addi a0, a0, 819
[0x800030e8]:slli a0, a0, 13

[0x800030ec]:addi a0, a0, 1639

[0x80003104]:addi a0, a0, 819
[0x80003108]:slli a0, a0, 12

[0x8000310c]:addi a0, a0, 819
[0x80003110]:slli a0, a0, 13

[0x80003114]:addi a0, a0, 1639

[0x8000312c]:addi a0, a0, 819
[0x80003130]:slli a0, a0, 12

[0x80003134]:addi a0, a0, 819
[0x80003138]:slli a0, a0, 13

[0x8000313c]:addi a0, a0, 1639

[0x80003154]:addi a0, a0, 819
[0x80003158]:slli a0, a0, 12

[0x8000315c]:addi a0, a0, 819
[0x80003160]:slli a0, a0, 13

[0x80003164]:addi a0, a0, 1639

[0x8000317c]:addi a0, a0, 819
[0x80003180]:slli a0, a0, 12

[0x80003184]:addi a0, a0, 819
[0x80003188]:slli a0, a0, 13

[0x8000318c]:addi a0, a0, 1639

[0x800031a4]:addi a0, a0, 819
[0x800031a8]:slli a0, a0, 12

[0x800031ac]:addi a0, a0, 819
[0x800031b0]:slli a0, a0, 13

[0x800031b4]:addi a0, a0, 1639

[0x800031cc]:addi a0, a0, 819
[0x800031d0]:slli a0, a0, 12

[0x800031d4]:addi a0, a0, 819
[0x800031d8]:slli a0, a0, 13

[0x800031dc]:addi a0, a0, 1639

[0x800031f4]:addi a0, a0, 3278

[0x8000320c]:addi a0, a0, 3278

[0x80003224]:addi a0, a0, 3278

[0x8000323c]:addi a0, a0, 3278

[0x80003254]:addi a0, a0, 3278

[0x8000326c]:addi a0, a0, 3278

[0x80003284]:addi a0, a0, 3278

[0x8000329c]:addi a0, a0, 3278

[0x800032b4]:addi a0, a0, 3278

[0x800032cc]:addi a0, a0, 3278

[0x800032e4]:addi a0, a0, 3278

[0x800032fc]:addi a0, a0, 3278

[0x80003314]:addi a0, a0, 3278

[0x8000332c]:addi a0, a0, 3278

[0x80003344]:addi a0, a0, 3278

[0x8000335c]:addi a0, a0, 3278

[0x80003374]:addi a0, a0, 3278

[0x8000338c]:addi a0, a0, 3278

[0x800033a4]:addi a0, a0, 3278

[0x800033bc]:addi a0, a0, 3278

[0x800033d4]:addi a0, a0, 3278

[0x800033ec]:addi a0, a0, 3278

[0x80003404]:addi a0, a0, 820

[0x8000341c]:addi a0, a0, 820

[0x80003434]:addi a0, a0, 820

[0x8000344c]:addi a0, a0, 820

[0x80003464]:addi a0, a0, 820

[0x8000347c]:addi a0, a0, 820

[0x80003494]:addi a0, a0, 820

[0x800034ac]:addi a0, a0, 820

[0x800034c4]:addi a0, a0, 820

[0x800034dc]:addi a0, a0, 820

[0x800034f4]:addi a0, a0, 820

[0x8000350c]:addi a0, a0, 820

[0x80003524]:addi a0, a0, 820

[0x8000353c]:addi a0, a0, 820

[0x80003554]:addi a0, a0, 820

[0x8000356c]:addi a0, a0, 820

[0x80003584]:addi a0, a0, 820

[0x8000359c]:addi a0, a0, 820

[0x800035b4]:addi a0, a0, 820

[0x800035cc]:addi a0, a0, 820

[0x800035e4]:addi a0, a0, 820

[0x800035fc]:addi a0, a0, 820

[0x80003608]:addi a0, zero, 0

[0x80003614]:addi a0, zero, 0

[0x80003620]:addi a0, zero, 0

[0x8000362c]:addi a0, zero, 0

[0x80003638]:addi a0, zero, 0

[0x80003644]:addi a0, zero, 0

[0x80003650]:addi a0, zero, 0

[0x8000365c]:addi a0, zero, 0

[0x80003668]:addi a0, zero, 0

[0x80003674]:addi a0, zero, 0

[0x80003680]:addi a0, zero, 0

[0x8000368c]:addi a0, zero, 0

[0x80003698]:addi a0, zero, 0

[0x800036a4]:addi a0, zero, 0

[0x800036b0]:addi a0, zero, 4

[0x800036bc]:addi a0, zero, 4

[0x800036c8]:addi a0, zero, 4

[0x800036d4]:addi a0, zero, 4

[0x800036e0]:addi a0, zero, 4

[0x800036ec]:addi a0, zero, 4

[0x800036f8]:addi a0, zero, 4

[0x80003704]:addi a0, zero, 4

[0x80003710]:addi a0, zero, 4

[0x8000371c]:addi a0, zero, 4

[0x80003728]:addi a0, zero, 4

[0x80003738]:addi ra, ra, 2420

[0x8000373c]:addi a0, zero, 4

[0x80003748]:addi a0, zero, 4

[0x80003754]:addi a0, zero, 4

[0x80003760]:addi a0, zero, 4

[0x8000376c]:addi a0, zero, 4

[0x80003778]:addi a0, zero, 4

[0x80003784]:addi a0, zero, 4

[0x80003790]:addi a0, zero, 4

[0x8000379c]:addi a0, zero, 4

[0x800037a8]:addi a0, zero, 4

[0x800037c0]:addi a0, a0, 819
[0x800037c4]:slli a0, a0, 12

[0x800037c8]:addi a0, a0, 819
[0x800037cc]:slli a0, a0, 12

[0x800037d0]:addi a0, a0, 818

[0x800037e8]:addi a0, a0, 819
[0x800037ec]:slli a0, a0, 12

[0x800037f0]:addi a0, a0, 819
[0x800037f4]:slli a0, a0, 12

[0x800037f8]:addi a0, a0, 818

[0x80003810]:addi a0, a0, 819
[0x80003814]:slli a0, a0, 12

[0x80003818]:addi a0, a0, 819
[0x8000381c]:slli a0, a0, 12

[0x80003820]:addi a0, a0, 818

[0x80003838]:addi a0, a0, 819
[0x8000383c]:slli a0, a0, 12

[0x80003840]:addi a0, a0, 819
[0x80003844]:slli a0, a0, 12

[0x80003848]:addi a0, a0, 818

[0x80003860]:addi a0, a0, 819
[0x80003864]:slli a0, a0, 12

[0x80003868]:addi a0, a0, 819
[0x8000386c]:slli a0, a0, 12

[0x80003870]:addi a0, a0, 818

[0x80003888]:addi a0, a0, 819
[0x8000388c]:slli a0, a0, 12

[0x80003890]:addi a0, a0, 819
[0x80003894]:slli a0, a0, 12

[0x80003898]:addi a0, a0, 818

[0x800038b0]:addi a0, a0, 819
[0x800038b4]:slli a0, a0, 12

[0x800038b8]:addi a0, a0, 819
[0x800038bc]:slli a0, a0, 12

[0x800038c0]:addi a0, a0, 818

[0x800038d8]:addi a0, a0, 819
[0x800038dc]:slli a0, a0, 12

[0x800038e0]:addi a0, a0, 819
[0x800038e4]:slli a0, a0, 12

[0x800038e8]:addi a0, a0, 818

[0x80003900]:addi a0, a0, 819
[0x80003904]:slli a0, a0, 12

[0x80003908]:addi a0, a0, 819
[0x8000390c]:slli a0, a0, 12

[0x80003910]:addi a0, a0, 818

[0x80003928]:addi a0, a0, 819
[0x8000392c]:slli a0, a0, 12

[0x80003930]:addi a0, a0, 819
[0x80003934]:slli a0, a0, 12

[0x80003938]:addi a0, a0, 818

[0x80003950]:addi a0, a0, 819
[0x80003954]:slli a0, a0, 12

[0x80003958]:addi a0, a0, 819
[0x8000395c]:slli a0, a0, 12

[0x80003960]:addi a0, a0, 818

[0x80003978]:addi a0, a0, 819
[0x8000397c]:slli a0, a0, 12

[0x80003980]:addi a0, a0, 819
[0x80003984]:slli a0, a0, 12

[0x80003988]:addi a0, a0, 818

[0x800039a0]:addi a0, a0, 819
[0x800039a4]:slli a0, a0, 12

[0x800039a8]:addi a0, a0, 819
[0x800039ac]:slli a0, a0, 12

[0x800039b0]:addi a0, a0, 818

[0x800039c8]:addi a0, a0, 819
[0x800039cc]:slli a0, a0, 12

[0x800039d0]:addi a0, a0, 819
[0x800039d4]:slli a0, a0, 12

[0x800039d8]:addi a0, a0, 818

[0x800039f0]:addi a0, a0, 819
[0x800039f4]:slli a0, a0, 12

[0x800039f8]:addi a0, a0, 819
[0x800039fc]:slli a0, a0, 12

[0x80003a00]:addi a0, a0, 818

[0x80003a18]:addi a0, a0, 819
[0x80003a1c]:slli a0, a0, 12

[0x80003a20]:addi a0, a0, 819
[0x80003a24]:slli a0, a0, 12

[0x80003a28]:addi a0, a0, 818

[0x80003a40]:addi a0, a0, 819
[0x80003a44]:slli a0, a0, 12

[0x80003a48]:addi a0, a0, 819
[0x80003a4c]:slli a0, a0, 12

[0x80003a50]:addi a0, a0, 818

[0x80003a68]:addi a0, a0, 819
[0x80003a6c]:slli a0, a0, 12

[0x80003a70]:addi a0, a0, 819
[0x80003a74]:slli a0, a0, 12

[0x80003a78]:addi a0, a0, 818

[0x80003a90]:addi a0, a0, 819
[0x80003a94]:slli a0, a0, 12

[0x80003a98]:addi a0, a0, 819
[0x80003a9c]:slli a0, a0, 12

[0x80003aa0]:addi a0, a0, 818

[0x80003ab8]:addi a0, a0, 819
[0x80003abc]:slli a0, a0, 12

[0x80003ac0]:addi a0, a0, 819
[0x80003ac4]:slli a0, a0, 12

[0x80003ac8]:addi a0, a0, 818

[0x80003ae0]:addi a0, a0, 819
[0x80003ae4]:slli a0, a0, 12

[0x80003ae8]:addi a0, a0, 819
[0x80003aec]:slli a0, a0, 12

[0x80003af0]:addi a0, a0, 818

[0x80003b08]:addi a0, a0, 819
[0x80003b0c]:slli a0, a0, 12

[0x80003b10]:addi a0, a0, 819
[0x80003b14]:slli a0, a0, 12

[0x80003b18]:addi a0, a0, 818

[0x80003b30]:addi a0, a0, 819
[0x80003b34]:slli a0, a0, 12

[0x80003b38]:addi a0, a0, 819
[0x80003b3c]:slli a0, a0, 13

[0x80003b40]:addi a0, a0, 1637

[0x80003b58]:addi a0, a0, 819
[0x80003b5c]:slli a0, a0, 12

[0x80003b60]:addi a0, a0, 819
[0x80003b64]:slli a0, a0, 13

[0x80003b68]:addi a0, a0, 1637

[0x80003b80]:addi a0, a0, 819
[0x80003b84]:slli a0, a0, 12

[0x80003b88]:addi a0, a0, 819
[0x80003b8c]:slli a0, a0, 13

[0x80003b90]:addi a0, a0, 1637

[0x80003ba8]:addi a0, a0, 819
[0x80003bac]:slli a0, a0, 12

[0x80003bb0]:addi a0, a0, 819
[0x80003bb4]:slli a0, a0, 13

[0x80003bb8]:addi a0, a0, 1637

[0x80003bd0]:addi a0, a0, 819
[0x80003bd4]:slli a0, a0, 12

[0x80003bd8]:addi a0, a0, 819
[0x80003bdc]:slli a0, a0, 13

[0x80003be0]:addi a0, a0, 1637

[0x80003bf8]:addi a0, a0, 819
[0x80003bfc]:slli a0, a0, 12

[0x80003c00]:addi a0, a0, 819
[0x80003c04]:slli a0, a0, 13

[0x80003c08]:addi a0, a0, 1637

[0x80003c20]:addi a0, a0, 819
[0x80003c24]:slli a0, a0, 12

[0x80003c28]:addi a0, a0, 819
[0x80003c2c]:slli a0, a0, 13

[0x80003c30]:addi a0, a0, 1637

[0x80003c48]:addi a0, a0, 819
[0x80003c4c]:slli a0, a0, 12

[0x80003c50]:addi a0, a0, 819
[0x80003c54]:slli a0, a0, 13

[0x80003c58]:addi a0, a0, 1637

[0x80003c70]:addi a0, a0, 819
[0x80003c74]:slli a0, a0, 12

[0x80003c78]:addi a0, a0, 819
[0x80003c7c]:slli a0, a0, 13

[0x80003c80]:addi a0, a0, 1637

[0x80003c98]:addi a0, a0, 819
[0x80003c9c]:slli a0, a0, 12

[0x80003ca0]:addi a0, a0, 819
[0x80003ca4]:slli a0, a0, 13

[0x80003ca8]:addi a0, a0, 1637

[0x80003cc0]:addi a0, a0, 819
[0x80003cc4]:slli a0, a0, 12

[0x80003cc8]:addi a0, a0, 819
[0x80003ccc]:slli a0, a0, 13

[0x80003cd0]:addi a0, a0, 1637

[0x80003ce8]:addi a0, a0, 819
[0x80003cec]:slli a0, a0, 12

[0x80003cf0]:addi a0, a0, 819
[0x80003cf4]:slli a0, a0, 13

[0x80003cf8]:addi a0, a0, 1637

[0x80003d10]:addi a0, a0, 819
[0x80003d14]:slli a0, a0, 12

[0x80003d18]:addi a0, a0, 819
[0x80003d1c]:slli a0, a0, 13

[0x80003d20]:addi a0, a0, 1637

[0x80003d38]:addi a0, a0, 819
[0x80003d3c]:slli a0, a0, 12

[0x80003d40]:addi a0, a0, 819
[0x80003d44]:slli a0, a0, 13

[0x80003d48]:addi a0, a0, 1637

[0x80003d60]:addi a0, a0, 819
[0x80003d64]:slli a0, a0, 12

[0x80003d68]:addi a0, a0, 819
[0x80003d6c]:slli a0, a0, 13

[0x80003d70]:addi a0, a0, 1637

[0x80003d88]:addi a0, a0, 819
[0x80003d8c]:slli a0, a0, 12

[0x80003d90]:addi a0, a0, 819
[0x80003d94]:slli a0, a0, 13

[0x80003d98]:addi a0, a0, 1637

[0x80003db0]:addi a0, a0, 819
[0x80003db4]:slli a0, a0, 12

[0x80003db8]:addi a0, a0, 819
[0x80003dbc]:slli a0, a0, 13

[0x80003dc0]:addi a0, a0, 1637

[0x80003dd8]:addi a0, a0, 819
[0x80003ddc]:slli a0, a0, 12

[0x80003de0]:addi a0, a0, 819
[0x80003de4]:slli a0, a0, 13

[0x80003de8]:addi a0, a0, 1637

[0x80003e00]:addi a0, a0, 819
[0x80003e04]:slli a0, a0, 12

[0x80003e08]:addi a0, a0, 819
[0x80003e0c]:slli a0, a0, 13

[0x80003e10]:addi a0, a0, 1637

[0x80003e28]:addi a0, a0, 819
[0x80003e2c]:slli a0, a0, 12

[0x80003e30]:addi a0, a0, 819
[0x80003e34]:slli a0, a0, 13

[0x80003e38]:addi a0, a0, 1637

[0x80003e50]:addi a0, a0, 819
[0x80003e54]:slli a0, a0, 12

[0x80003e58]:addi a0, a0, 819
[0x80003e5c]:slli a0, a0, 13

[0x80003e60]:addi a0, a0, 1637

[0x80003e78]:addi a0, a0, 819
[0x80003e7c]:slli a0, a0, 12

[0x80003e80]:addi a0, a0, 819
[0x80003e84]:slli a0, a0, 13

[0x80003e88]:addi a0, a0, 1637

[0x80003ea0]:addi a0, a0, 818

[0x80003eb8]:addi a0, a0, 818

[0x80003ed0]:addi a0, a0, 818

[0x80003ee8]:addi a0, a0, 818

[0x80003f00]:addi a0, a0, 818

[0x80003f18]:addi a0, a0, 818

[0x80003f30]:addi a0, a0, 818

[0x80003f48]:addi a0, a0, 818

[0x80003f60]:addi a0, a0, 818

[0x80003f78]:addi a0, a0, 818

[0x80003f90]:addi a0, a0, 818

[0x80003fa8]:addi a0, a0, 818

[0x80003fc0]:addi a0, a0, 818

[0x80003fd8]:addi a0, a0, 818

[0x80003ff0]:addi a0, a0, 818

[0x80004008]:addi a0, a0, 818

[0x80004020]:addi a0, a0, 818

[0x80004038]:addi a0, a0, 818

[0x80004050]:addi a0, a0, 818

[0x80004068]:addi a0, a0, 818

[0x80004080]:addi a0, a0, 818

[0x80004098]:addi a0, a0, 818

[0x800040b0]:addi a0, a0, 1365
[0x800040b4]:slli a0, a0, 12

[0x800040b8]:addi a0, a0, 1365
[0x800040bc]:slli a0, a0, 12

[0x800040c0]:addi a0, a0, 1366

[0x800040d8]:addi a0, a0, 1365
[0x800040dc]:slli a0, a0, 12

[0x800040e0]:addi a0, a0, 1365
[0x800040e4]:slli a0, a0, 12

[0x800040e8]:addi a0, a0, 1366

[0x80004100]:addi a0, a0, 1365
[0x80004104]:slli a0, a0, 12

[0x80004108]:addi a0, a0, 1365
[0x8000410c]:slli a0, a0, 12

[0x80004110]:addi a0, a0, 1366

[0x80004128]:addi a0, a0, 1365
[0x8000412c]:slli a0, a0, 12

[0x80004130]:addi a0, a0, 1365
[0x80004134]:slli a0, a0, 12

[0x80004138]:addi a0, a0, 1366

[0x80004150]:addi a0, a0, 1365
[0x80004154]:slli a0, a0, 12

[0x80004158]:addi a0, a0, 1365
[0x8000415c]:slli a0, a0, 12

[0x80004160]:addi a0, a0, 1366

[0x80004178]:addi a0, a0, 1365
[0x8000417c]:slli a0, a0, 12

[0x80004180]:addi a0, a0, 1365
[0x80004184]:slli a0, a0, 12

[0x80004188]:addi a0, a0, 1366

[0x800041a0]:addi a0, a0, 1365
[0x800041a4]:slli a0, a0, 12

[0x800041a8]:addi a0, a0, 1365
[0x800041ac]:slli a0, a0, 12

[0x800041b0]:addi a0, a0, 1366

[0x800041c8]:addi a0, a0, 1365
[0x800041cc]:slli a0, a0, 12

[0x800041d0]:addi a0, a0, 1365
[0x800041d4]:slli a0, a0, 12

[0x800041d8]:addi a0, a0, 1366

[0x800041f0]:addi a0, a0, 1365
[0x800041f4]:slli a0, a0, 12

[0x800041f8]:addi a0, a0, 1365
[0x800041fc]:slli a0, a0, 12

[0x80004200]:addi a0, a0, 1366

[0x80004218]:addi a0, a0, 1365
[0x8000421c]:slli a0, a0, 12

[0x80004220]:addi a0, a0, 1365
[0x80004224]:slli a0, a0, 12

[0x80004228]:addi a0, a0, 1366

[0x80004240]:addi a0, a0, 1365
[0x80004244]:slli a0, a0, 12

[0x80004248]:addi a0, a0, 1365
[0x8000424c]:slli a0, a0, 12

[0x80004250]:addi a0, a0, 1366

[0x80004268]:addi a0, a0, 1365
[0x8000426c]:slli a0, a0, 12

[0x80004270]:addi a0, a0, 1365
[0x80004274]:slli a0, a0, 12

[0x80004278]:addi a0, a0, 1366

[0x80004290]:addi a0, a0, 1365
[0x80004294]:slli a0, a0, 12

[0x80004298]:addi a0, a0, 1365
[0x8000429c]:slli a0, a0, 12

[0x800042a0]:addi a0, a0, 1366

[0x800042b8]:addi a0, a0, 1365
[0x800042bc]:slli a0, a0, 12

[0x800042c0]:addi a0, a0, 1365
[0x800042c4]:slli a0, a0, 12

[0x800042c8]:addi a0, a0, 1366

[0x800042dc]:addi a0, a0, 4095

[0x800042e8]:addi zero, zero, 0



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

|s.no|            signature             |                                                                                        coverpoints                                                                                         |                                code                                 |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80006010]<br>0x7FFFFFFFFFFFF800|- rs1 : x17<br> - rd : x17<br> - imm_val == (-2**(12-1))<br> - rs1_val == (-2**(xlen-1))<br> - rs1_val < 0 and imm_val < 0<br> - imm_val == -2048<br> - rs1_val == -9223372036854775808<br> |[0x800003a0]:addi a7, a7, 2048<br> [0x800003a4]:sd a7, 0(t0)<br>     |
|   2|[0x80006018]<br>0xFBFFFFFFFFFFFFFF|- rd : x6<br> - rs1 != rd<br> - imm_val == 0<br> - rs1_val == -288230376151711745<br>                                                                                                       |[0x800003b4]:addi t1, ra, 0<br> [0x800003b8]:sd t1, 8(t0)<br>        |
|   3|[0x80006020]<br>0x0000000000000808|- rs1 : x27<br> - rd : x7<br> - imm_val == (2**(12-1)-1)<br> - rs1_val > 0 and imm_val > 0<br> - imm_val == 2047<br>                                                                        |[0x800003c0]:addi t2, s11, 2047<br> [0x800003c4]:sd t2, 16(t0)<br>   |
|   4|[0x80006028]<br>0xFFFFFFF800000000|- rd : x26<br> - imm_val == 1<br> - rs1_val < 0 and imm_val > 0<br> - rs1_val == -34359738369<br>                                                                                           |[0x800003d4]:addi s10, s7, 1<br> [0x800003d8]:sd s10, 24(t0)<br>     |
|   5|[0x80006030]<br>0x0000000000000556|- rs1 : x3<br> - rd : x22<br> - rs1_val==0 and imm_val==1366<br>                                                                                                                            |[0x800003e0]:addi s6, gp, 1366<br> [0x800003e4]:sd s6, 32(t0)<br>    |
|   6|[0x80006038]<br>0x80000000000003FE|- rd : x25<br> - rs1_val == (2**(xlen-1)-1)<br> - rs1_val == 9223372036854775807<br>                                                                                                        |[0x800003f4]:addi s9, s6, 1023<br> [0x800003f8]:sd s9, 40(t0)<br>    |
|   7|[0x80006040]<br>0x0000000000000800|- rs1 : x7<br> - rd : x18<br> - rs1_val == 1<br>                                                                                                                                            |[0x80000400]:addi s2, t2, 2047<br> [0x80000404]:sd s2, 48(t0)<br>    |
|   8|[0x80006048]<br>0xFFFFFFFFFFFFFFBE|- rs1 : x9<br> - rs1_val == -33<br>                                                                                                                                                         |[0x8000040c]:addi ra, s1, 4063<br> [0x80000410]:sd ra, 56(t0)<br>    |
|   9|[0x80006050]<br>0x555555555555554B|- rd : x28<br> - rs1_val == 6148914691236517205<br>                                                                                                                                         |[0x80000434]:addi t3, tp, 4086<br> [0x80000438]:sd t3, 64(t0)<br>    |
|  10|[0x80006058]<br>0x0000040000000002|- rs1 : x24<br> - rd : x29<br> - imm_val == 2<br> - rs1_val == 4398046511104<br>                                                                                                            |[0x80000444]:addi t4, s8, 2<br> [0x80000448]:sd t4, 72(t0)<br>       |
|  11|[0x80006060]<br>0x0000000020000004|- rs1 : x12<br> - rd : x8<br> - imm_val == 4<br> - rs1_val == 536870912<br>                                                                                                                 |[0x80000450]:addi fp, a2, 4<br> [0x80000454]:sd fp, 80(t0)<br>       |
|  12|[0x80006068]<br>0x0000000001000008|- rs1 : x31<br> - rd : x21<br> - imm_val == 8<br> - rs1_val == 16777216<br>                                                                                                                 |[0x8000045c]:addi s5, t6, 8<br> [0x80000460]:sd s5, 88(t0)<br>       |
|  13|[0x80006070]<br>0xFFFFFFFF0000000F|- rd : x20<br> - imm_val == 16<br> - rs1_val == -4294967297<br>                                                                                                                             |[0x80000470]:addi s4, s10, 16<br> [0x80000474]:sd s4, 96(t0)<br>     |
|  14|[0x80006078]<br>0xFFFFFFE00000001F|- rd : x19<br> - imm_val == 32<br> - rs1_val == -137438953473<br>                                                                                                                           |[0x80000484]:addi s3, t1, 32<br> [0x80000488]:sd s3, 104(t0)<br>     |
|  15|[0x80006080]<br>0x0000000000000000|- rs1 : x11<br> - rd : x0<br> - imm_val == 64<br>                                                                                                                                           |[0x80000494]:addi zero, a1, 64<br> [0x80000498]:sd zero, 112(t0)<br> |
|  16|[0x80006088]<br>0xFC0000000000007F|- rd : x12<br> - imm_val == 128<br>                                                                                                                                                         |[0x800004a8]:addi a2, sp, 128<br> [0x800004ac]:sd a2, 120(t0)<br>    |
|  17|[0x80006090]<br>0x0000000000000100|- rd : x30<br> - imm_val == 256<br>                                                                                                                                                         |[0x800004bc]:addi t5, zero, 256<br> [0x800004c0]:sd t5, 128(t0)<br>  |
|  18|[0x80006098]<br>0x00000000000001FC|- rs1 : x13<br> - rd : x14<br> - imm_val == 512<br>                                                                                                                                         |[0x800004c8]:addi a4, a3, 512<br> [0x800004cc]:sd a4, 136(t0)<br>    |
|  19|[0x800060a0]<br>0x0000000000080400|- rs1 : x16<br> - imm_val == 1024<br> - rs1_val == 524288<br>                                                                                                                               |[0x800004d4]:addi s7, a6, 1024<br> [0x800004d8]:sd s7, 144(t0)<br>   |
|  20|[0x800060a8]<br>0x00000000003FFFFE|- rs1 : x10<br> - imm_val == -2<br> - rs1_val == 4194304<br>                                                                                                                                |[0x800004e8]:addi tp, a0, 4094<br> [0x800004ec]:sd tp, 0(ra)<br>     |
|  21|[0x800060b0]<br>0xFFEFFFFFFFFFFFFC|- imm_val == -3<br> - rs1_val == -4503599627370497<br>                                                                                                                                      |[0x800004fc]:addi s1, s2, 4093<br> [0x80000500]:sd s1, 8(ra)<br>     |
|  22|[0x800060b8]<br>0xAAAAAAAAAAAAAAA5|- imm_val == -5<br> - rs1_val == -6148914691236517206<br>                                                                                                                                   |[0x80000524]:addi s11, s4, 4091<br> [0x80000528]:sd s11, 16(ra)<br>  |
|  23|[0x800060c0]<br>0x00000000B504F329|- rd : x10<br> - imm_val == -9<br>                                                                                                                                                          |[0x8000053c]:addi a0, s9, 4087<br> [0x80000540]:sd a0, 24(ra)<br>    |
|  24|[0x800060c8]<br>0x3333333333333323|- imm_val == -17<br>                                                                                                                                                                        |[0x80000564]:addi a3, a4, 4079<br> [0x80000568]:sd a3, 32(ra)<br>    |
|  25|[0x800060d0]<br>0x33333333333332F2|- rd : x11<br> - imm_val == -65<br>                                                                                                                                                         |[0x8000058c]:addi a1, fp, 4031<br> [0x80000590]:sd a1, 40(ra)<br>    |
|  26|[0x800060d8]<br>0xFFFFFFFFFFFFFF84|- rs1 : x30<br> - imm_val == -129<br>                                                                                                                                                       |[0x80000598]:addi t0, t5, 3967<br> [0x8000059c]:sd t0, 48(ra)<br>    |
|  27|[0x800060e0]<br>0xFFFFFF7FFFFFFEFE|- rd : x15<br> - imm_val == -257<br> - rs1_val == -549755813889<br>                                                                                                                         |[0x800005ac]:addi a5, t0, 3839<br> [0x800005b0]:sd a5, 56(ra)<br>    |
|  28|[0x800060e8]<br>0x00FFFFFFFFFFFDFF|- rs1 : x19<br> - imm_val == -513<br> - rs1_val == 72057594037927936<br>                                                                                                                    |[0x800005bc]:addi gp, s3, 3583<br> [0x800005c0]:sd gp, 64(ra)<br>    |
|  29|[0x800060f0]<br>0xFFFFFFFFFFFFF3FE|- rs1 : x28<br> - rd : x16<br> - imm_val == -1025<br> - rs1_val == -2049<br>                                                                                                                |[0x800005cc]:addi a6, t3, 3071<br> [0x800005d0]:sd a6, 72(ra)<br>    |
|  30|[0x800060f8]<br>0xFFFFFFFFFFE00554|- rs1 : x21<br> - rs1_val == -2097153<br>                                                                                                                                                   |[0x800005dc]:addi sp, s5, 1365<br> [0x800005e0]:sd sp, 80(ra)<br>    |
|  31|[0x80006100]<br>0xFFFFFFFFEFFFFAA9|- rs1 : x15<br> - rd : x24<br> - rs1_val == -268435457<br>                                                                                                                                  |[0x800005ec]:addi s8, a5, 2730<br> [0x800005f0]:sd s8, 88(ra)<br>    |
|  32|[0x80006108]<br>0xFFFFFFFFFFFFF802|- rs1 : x29<br> - rd : x31<br> - rs1_val == 2<br>                                                                                                                                           |[0x800005f8]:addi t6, t4, 2048<br> [0x800005fc]:sd t6, 96(ra)<br>    |
|  33|[0x80006110]<br>0xFFFFFFFFFFFFFAAE|- rs1_val == 4<br> - rs1_val==4 and imm_val==-1366<br>                                                                                                                                      |[0x80000604]:addi a1, a0, 2730<br> [0x80000608]:sd a1, 104(ra)<br>   |
|  34|[0x80006118]<br>0xFFFFFFFFFFFFFFC7|- rs1_val == 8<br>                                                                                                                                                                          |[0x80000610]:addi a1, a0, 4031<br> [0x80000614]:sd a1, 112(ra)<br>   |
|  35|[0x80006120]<br>0x0000000000000342|- rs1_val == 16<br>                                                                                                                                                                         |[0x8000061c]:addi a1, a0, 818<br> [0x80000620]:sd a1, 120(ra)<br>    |
|  36|[0x80006128]<br>0xFFFFFFFFFFFFFFF3|- rs1_val == 32<br>                                                                                                                                                                         |[0x80000628]:addi a1, a0, 4051<br> [0x8000062c]:sd a1, 128(ra)<br>   |
|  37|[0x80006130]<br>0x0000000000000036|- rs1_val == 64<br>                                                                                                                                                                         |[0x80000634]:addi a1, a0, 4086<br> [0x80000638]:sd a1, 136(ra)<br>   |
|  38|[0x80006138]<br>0xFFFFFFFFFFFFFE7F|- rs1_val == 128<br>                                                                                                                                                                        |[0x80000640]:addi a1, a0, 3583<br> [0x80000644]:sd a1, 144(ra)<br>   |
|  39|[0x80006140]<br>0x0000000000000766|- rs1_val == 256<br>                                                                                                                                                                        |[0x8000064c]:addi a1, a0, 1638<br> [0x80000650]:sd a1, 152(ra)<br>   |
|  40|[0x80006148]<br>0x00000000000001FF|- rs1_val == 512<br>                                                                                                                                                                        |[0x80000658]:addi a1, a0, 4095<br> [0x8000065c]:sd a1, 160(ra)<br>   |
|  41|[0x80006150]<br>0x0000000000000401|- rs1_val == 1024<br>                                                                                                                                                                       |[0x80000664]:addi a1, a0, 1<br> [0x80000668]:sd a1, 168(ra)<br>      |
|  42|[0x80006158]<br>0x000000000000082C|- rs1_val == 2048<br>                                                                                                                                                                       |[0x80000674]:addi a1, a0, 44<br> [0x80000678]:sd a1, 176(ra)<br>     |
|  43|[0x80006160]<br>0x0000000000001002|- rs1_val == 4096<br>                                                                                                                                                                       |[0x80000680]:addi a1, a0, 2<br> [0x80000684]:sd a1, 184(ra)<br>      |
|  44|[0x80006168]<br>0x000000000000202D|- rs1_val == 8192<br>                                                                                                                                                                       |[0x8000068c]:addi a1, a0, 45<br> [0x80000690]:sd a1, 192(ra)<br>     |
|  45|[0x80006170]<br>0x0000000000004100|- rs1_val == 16384<br>                                                                                                                                                                      |[0x80000698]:addi a1, a0, 256<br> [0x8000069c]:sd a1, 200(ra)<br>    |
|  46|[0x80006178]<br>0x0000000000008333|- rs1_val == 32768<br>                                                                                                                                                                      |[0x800006a4]:addi a1, a0, 819<br> [0x800006a8]:sd a1, 208(ra)<br>    |
|  47|[0x80006180]<br>0x0000000000010000|- rs1_val == 65536<br>                                                                                                                                                                      |[0x800006b0]:addi a1, a0, 0<br> [0x800006b4]:sd a1, 216(ra)<br>      |
|  48|[0x80006188]<br>0x000000000001FFFF|- rs1_val == 131072<br>                                                                                                                                                                     |[0x800006bc]:addi a1, a0, 4095<br> [0x800006c0]:sd a1, 224(ra)<br>   |
|  49|[0x80006190]<br>0x000000000004002D|- rs1_val == 262144<br>                                                                                                                                                                     |[0x800006c8]:addi a1, a0, 45<br> [0x800006cc]:sd a1, 232(ra)<br>     |
|  50|[0x80006198]<br>0x0000000000100004|- rs1_val == 1048576<br>                                                                                                                                                                    |[0x800006d4]:addi a1, a0, 4<br> [0x800006d8]:sd a1, 240(ra)<br>      |
|  51|[0x800061a0]<br>0x0000000000200005|- rs1_val == 2097152<br>                                                                                                                                                                    |[0x800006e0]:addi a1, a0, 5<br> [0x800006e4]:sd a1, 248(ra)<br>      |
|  52|[0x800061a8]<br>0x00000000007FFFFB|- rs1_val == 8388608<br>                                                                                                                                                                    |[0x800006ec]:addi a1, a0, 4091<br> [0x800006f0]:sd a1, 256(ra)<br>   |
|  53|[0x800061b0]<br>0x0000000002000004|- rs1_val == 33554432<br>                                                                                                                                                                   |[0x800006f8]:addi a1, a0, 4<br> [0x800006fc]:sd a1, 264(ra)<br>      |
|  54|[0x800061b8]<br>0x0000000004000080|- rs1_val == 67108864<br>                                                                                                                                                                   |[0x80000704]:addi a1, a0, 128<br> [0x80000708]:sd a1, 272(ra)<br>    |
|  55|[0x800061c0]<br>0x0000000008000666|- rs1_val == 134217728<br>                                                                                                                                                                  |[0x80000710]:addi a1, a0, 1638<br> [0x80000714]:sd a1, 280(ra)<br>   |
|  56|[0x800061c8]<br>0x000000000FFFFFF6|- rs1_val == 268435456<br>                                                                                                                                                                  |[0x8000071c]:addi a1, a0, 4086<br> [0x80000720]:sd a1, 288(ra)<br>   |
|  57|[0x800061d0]<br>0x0000000040000020|- rs1_val == 1073741824<br>                                                                                                                                                                 |[0x80000728]:addi a1, a0, 32<br> [0x8000072c]:sd a1, 296(ra)<br>     |
|  58|[0x800061d8]<br>0x0000000080000555|- rs1_val == 2147483648<br>                                                                                                                                                                 |[0x80000738]:addi a1, a0, 1365<br> [0x8000073c]:sd a1, 304(ra)<br>   |
|  59|[0x800061e0]<br>0x0000000100000334|- rs1_val == 4294967296<br>                                                                                                                                                                 |[0x80000748]:addi a1, a0, 820<br> [0x8000074c]:sd a1, 312(ra)<br>    |
|  60|[0x800061e8]<br>0x00000001FFFFFC00|- rs1_val == 8589934592<br>                                                                                                                                                                 |[0x80000758]:addi a1, a0, 3072<br> [0x8000075c]:sd a1, 320(ra)<br>   |
|  61|[0x800061f0]<br>0x0000000400000002|- rs1_val == 17179869184<br>                                                                                                                                                                |[0x80000768]:addi a1, a0, 2<br> [0x8000076c]:sd a1, 328(ra)<br>      |
|  62|[0x800061f8]<br>0x00000007FFFFFFFD|- rs1_val == 34359738368<br>                                                                                                                                                                |[0x80000778]:addi a1, a0, 4093<br> [0x8000077c]:sd a1, 336(ra)<br>   |
|  63|[0x80006200]<br>0x00000010000007FF|- rs1_val == 68719476736<br>                                                                                                                                                                |[0x80000788]:addi a1, a0, 2047<br> [0x8000078c]:sd a1, 344(ra)<br>   |
|  64|[0x80006208]<br>0x0000002000000003|- rs1_val == 137438953472<br>                                                                                                                                                               |[0x80000798]:addi a1, a0, 3<br> [0x8000079c]:sd a1, 352(ra)<br>      |
|  65|[0x80006210]<br>0x0000004000000006|- rs1_val == 274877906944<br>                                                                                                                                                               |[0x800007a8]:addi a1, a0, 6<br> [0x800007ac]:sd a1, 360(ra)<br>      |
|  66|[0x80006218]<br>0x0000008000000000|- rs1_val == 549755813888<br>                                                                                                                                                               |[0x800007b8]:addi a1, a0, 0<br> [0x800007bc]:sd a1, 368(ra)<br>      |
|  67|[0x80006220]<br>0x000001000000002E|- rs1_val == 1099511627776<br>                                                                                                                                                              |[0x800007c8]:addi a1, a0, 46<br> [0x800007cc]:sd a1, 376(ra)<br>     |
|  68|[0x80006228]<br>0x000001FFFFFFFFFC|- rs1_val == 2199023255552<br>                                                                                                                                                              |[0x800007d8]:addi a1, a0, 4092<br> [0x800007dc]:sd a1, 384(ra)<br>   |
|  69|[0x80006230]<br>0x0000080000000000|- rs1_val == 8796093022208<br>                                                                                                                                                              |[0x800007e8]:addi a1, a0, 0<br> [0x800007ec]:sd a1, 392(ra)<br>      |
|  70|[0x80006238]<br>0x00000FFFFFFFF800|- rs1_val == 17592186044416<br>                                                                                                                                                             |[0x800007f8]:addi a1, a0, 2048<br> [0x800007fc]:sd a1, 400(ra)<br>   |
|  71|[0x80006240]<br>0x0000200000000555|- rs1_val == 35184372088832<br>                                                                                                                                                             |[0x80000808]:addi a1, a0, 1365<br> [0x8000080c]:sd a1, 408(ra)<br>   |
|  72|[0x80006248]<br>0x00004000000007FF|- rs1_val == 70368744177664<br>                                                                                                                                                             |[0x80000818]:addi a1, a0, 2047<br> [0x8000081c]:sd a1, 416(ra)<br>   |
|  73|[0x80006250]<br>0x0000800000000556|- rs1_val == 140737488355328<br>                                                                                                                                                            |[0x80000828]:addi a1, a0, 1366<br> [0x8000082c]:sd a1, 424(ra)<br>   |
|  74|[0x80006258]<br>0x0001000000000000|- rs1_val == 281474976710656<br>                                                                                                                                                            |[0x80000838]:addi a1, a0, 0<br> [0x8000083c]:sd a1, 432(ra)<br>      |
|  75|[0x80006260]<br>0x0001FFFFFFFFFFF8|- rs1_val == 562949953421312<br>                                                                                                                                                            |[0x80000848]:addi a1, a0, 4088<br> [0x8000084c]:sd a1, 440(ra)<br>   |
|  76|[0x80006268]<br>0x0004000000000004|- rs1_val == 1125899906842624<br>                                                                                                                                                           |[0x80000858]:addi a1, a0, 4<br> [0x8000085c]:sd a1, 448(ra)<br>      |
|  77|[0x80006270]<br>0x0007FFFFFFFFFFD4|- rs1_val == 2251799813685248<br>                                                                                                                                                           |[0x80000868]:addi a1, a0, 4052<br> [0x8000086c]:sd a1, 456(ra)<br>   |
|  78|[0x80006278]<br>0x0010000000000667|- rs1_val == 4503599627370496<br>                                                                                                                                                           |[0x80000878]:addi a1, a0, 1639<br> [0x8000087c]:sd a1, 464(ra)<br>   |
|  79|[0x80006280]<br>0x001FFFFFFFFFFFF8|- rs1_val == 9007199254740992<br>                                                                                                                                                           |[0x80000888]:addi a1, a0, 4088<br> [0x8000088c]:sd a1, 472(ra)<br>   |
|  80|[0x80006288]<br>0x003FFFFFFFFFFFF6|- rs1_val == 18014398509481984<br>                                                                                                                                                          |[0x80000898]:addi a1, a0, 4086<br> [0x8000089c]:sd a1, 480(ra)<br>   |
|  81|[0x80006290]<br>0x007FFFFFFFFFFFFA|- rs1_val == 36028797018963968<br>                                                                                                                                                          |[0x800008a8]:addi a1, a0, 4090<br> [0x800008ac]:sd a1, 488(ra)<br>   |
|  82|[0x80006298]<br>0x0200000000000200|- rs1_val == 144115188075855872<br>                                                                                                                                                         |[0x800008b8]:addi a1, a0, 512<br> [0x800008bc]:sd a1, 496(ra)<br>    |
|  83|[0x800062a0]<br>0x0400000000000554|- rs1_val == 288230376151711744<br>                                                                                                                                                         |[0x800008c8]:addi a1, a0, 1364<br> [0x800008cc]:sd a1, 504(ra)<br>   |
|  84|[0x800062a8]<br>0x07FFFFFFFFFFFFD3|- rs1_val == 576460752303423488<br>                                                                                                                                                         |[0x800008d8]:addi a1, a0, 4051<br> [0x800008dc]:sd a1, 512(ra)<br>   |
|  85|[0x800062b0]<br>0x0FFFFFFFFFFFFFFE|- rs1_val == 1152921504606846976<br>                                                                                                                                                        |[0x800008e8]:addi a1, a0, 4094<br> [0x800008ec]:sd a1, 520(ra)<br>   |
|  86|[0x800062b8]<br>0x1FFFFFFFFFFFFFFF|- rs1_val == 2305843009213693952<br>                                                                                                                                                        |[0x800008f8]:addi a1, a0, 4095<br> [0x800008fc]:sd a1, 528(ra)<br>   |
|  87|[0x800062c0]<br>0x4000000000000332|- rs1_val == 4611686018427387904<br>                                                                                                                                                        |[0x80000908]:addi a1, a0, 818<br> [0x8000090c]:sd a1, 536(ra)<br>    |
|  88|[0x800062c8]<br>0x000000000000000E|- rs1_val == -2<br>                                                                                                                                                                         |[0x80000914]:addi a1, a0, 16<br> [0x80000918]:sd a1, 544(ra)<br>     |
|  89|[0x800062d0]<br>0xFFFFFFFFFFFFFFFD|- rs1_val == -3<br>                                                                                                                                                                         |[0x80000920]:addi a1, a0, 0<br> [0x80000924]:sd a1, 552(ra)<br>      |
|  90|[0x800062d8]<br>0x0000000000000028|- rs1_val == -5<br>                                                                                                                                                                         |[0x8000092c]:addi a1, a0, 45<br> [0x80000930]:sd a1, 560(ra)<br>     |
|  91|[0x800062e0]<br>0xFFFFFFFFFFFFFFF7|- rs1_val == -9<br>                                                                                                                                                                         |[0x80000938]:addi a1, a0, 0<br> [0x8000093c]:sd a1, 568(ra)<br>      |
|  92|[0x800062e8]<br>0xFFFFFFFFFFFFFFF3|- rs1_val == -17<br>                                                                                                                                                                        |[0x80000944]:addi a1, a0, 4<br> [0x80000948]:sd a1, 576(ra)<br>      |
|  93|[0x800062f0]<br>0xFFFFFFFFFFFFFF92|- rs1_val == -65<br>                                                                                                                                                                        |[0x80000950]:addi a1, a0, 4051<br> [0x80000954]:sd a1, 584(ra)<br>   |
|  94|[0x800062f8]<br>0xFFFFFFFFFFFFFF87|- rs1_val == -129<br>                                                                                                                                                                       |[0x8000095c]:addi a1, a0, 8<br> [0x80000960]:sd a1, 592(ra)<br>      |
|  95|[0x80006300]<br>0xFFFFFFFFFFFFFDFE|- rs1_val == -257<br>                                                                                                                                                                       |[0x80000968]:addi a1, a0, 3839<br> [0x8000096c]:sd a1, 600(ra)<br>   |
|  96|[0x80006308]<br>0xFFFFFFFFFFFFFEFF|- rs1_val == -513<br>                                                                                                                                                                       |[0x80000974]:addi a1, a0, 256<br> [0x80000978]:sd a1, 608(ra)<br>    |
|  97|[0x80006310]<br>0xFFFFFFFFFFFFFC03|- rs1_val == -1025<br>                                                                                                                                                                      |[0x80000980]:addi a1, a0, 4<br> [0x80000984]:sd a1, 616(ra)<br>      |
|  98|[0x80006318]<br>0xFFFFFFFFFFFFF555|- rs1_val == -4097<br>                                                                                                                                                                      |[0x80000990]:addi a1, a0, 1366<br> [0x80000994]:sd a1, 624(ra)<br>   |
|  99|[0x80006320]<br>0xFFFFFFFFFFFFE555|- rs1_val == -8193<br>                                                                                                                                                                      |[0x800009a0]:addi a1, a0, 1366<br> [0x800009a4]:sd a1, 632(ra)<br>   |
| 100|[0x80006328]<br>0xFFFFFFFFFFFFC07F|- rs1_val == -16385<br>                                                                                                                                                                     |[0x800009b0]:addi a1, a0, 128<br> [0x800009b4]:sd a1, 640(ra)<br>    |
| 101|[0x80006330]<br>0xFFFFFFFFFFFF7FFD|- rs1_val == -32769<br>                                                                                                                                                                     |[0x800009c0]:addi a1, a0, 4094<br> [0x800009c4]:sd a1, 648(ra)<br>   |
| 102|[0x80006338]<br>0xFFFFFFFFFFFEFAA9|- rs1_val == -65537<br>                                                                                                                                                                     |[0x800009d0]:addi a1, a0, 2730<br> [0x800009d4]:sd a1, 656(ra)<br>   |
| 103|[0x80006340]<br>0xFFFFFFFFFFFE0001|- rs1_val == -131073<br>                                                                                                                                                                    |[0x800009e0]:addi a1, a0, 2<br> [0x800009e4]:sd a1, 664(ra)<br>      |
| 104|[0x80006348]<br>0xFFFFFFFFFFFBFFFF|- rs1_val == -262145<br>                                                                                                                                                                    |[0x800009f0]:addi a1, a0, 0<br> [0x800009f4]:sd a1, 672(ra)<br>      |
| 105|[0x80006350]<br>0xFFFFFFFFFFF80003|- rs1_val == -524289<br>                                                                                                                                                                    |[0x80000a00]:addi a1, a0, 4<br> [0x80000a04]:sd a1, 680(ra)<br>      |
| 106|[0x80006358]<br>0xFFFFFFFFFFF00553|- rs1_val == -1048577<br>                                                                                                                                                                   |[0x80000a10]:addi a1, a0, 1364<br> [0x80000a14]:sd a1, 688(ra)<br>   |
| 107|[0x80006360]<br>0xFFFFFFFFFFC00554|- rs1_val == -4194305<br>                                                                                                                                                                   |[0x80000a20]:addi a1, a0, 1365<br> [0x80000a24]:sd a1, 696(ra)<br>   |
| 108|[0x80006368]<br>0xFFFFFFFFFF800007|- rs1_val == -8388609<br>                                                                                                                                                                   |[0x80000a30]:addi a1, a0, 8<br> [0x80000a34]:sd a1, 704(ra)<br>      |
| 109|[0x80006370]<br>0xFFFFFFFFFEFFFFFF|- rs1_val == -16777217<br>                                                                                                                                                                  |[0x80000a40]:addi a1, a0, 0<br> [0x80000a44]:sd a1, 712(ra)<br>      |
| 110|[0x80006378]<br>0xFFFFFFFFFDFFFFFA|- rs1_val == -33554433<br>                                                                                                                                                                  |[0x80000a50]:addi a1, a0, 4091<br> [0x80000a54]:sd a1, 720(ra)<br>   |
| 111|[0x80006380]<br>0xFFFFFFFFFC00002C|- rs1_val == -67108865<br>                                                                                                                                                                  |[0x80000a60]:addi a1, a0, 45<br> [0x80000a64]:sd a1, 728(ra)<br>     |
| 112|[0x80006388]<br>0xFFFFFFFFF7FFF7FF|- rs1_val == -134217729<br>                                                                                                                                                                 |[0x80000a70]:addi a1, a0, 2048<br> [0x80000a74]:sd a1, 736(ra)<br>   |
| 113|[0x80006390]<br>0xFFFFFFFFDFFFFFD2|- rs1_val == -536870913<br>                                                                                                                                                                 |[0x80000a80]:addi a1, a0, 4051<br> [0x80000a84]:sd a1, 744(ra)<br>   |
| 114|[0x80006398]<br>0xFFFFFFFFC0000554|- rs1_val == -1073741825<br>                                                                                                                                                                |[0x80000a90]:addi a1, a0, 1365<br> [0x80000a94]:sd a1, 752(ra)<br>   |
| 115|[0x800063a0]<br>0xFFFFFFFF7FFFFFFC|- rs1_val == -2147483649<br>                                                                                                                                                                |[0x80000aa4]:addi a1, a0, 4093<br> [0x80000aa8]:sd a1, 760(ra)<br>   |
| 116|[0x800063a8]<br>0xFFFFFFFDFFFFFFF9|- rs1_val == -8589934593<br>                                                                                                                                                                |[0x80000ab8]:addi a1, a0, 4090<br> [0x80000abc]:sd a1, 768(ra)<br>   |
| 117|[0x800063b0]<br>0xFFFFFFFC0000002D|- rs1_val == -17179869185<br>                                                                                                                                                               |[0x80000acc]:addi a1, a0, 46<br> [0x80000ad0]:sd a1, 776(ra)<br>     |
| 118|[0x800063b8]<br>0xFFFFFFF000000004|- rs1_val == -68719476737<br>                                                                                                                                                               |[0x80000ae0]:addi a1, a0, 5<br> [0x80000ae4]:sd a1, 784(ra)<br>      |
| 119|[0x800063c0]<br>0xFFFFFFBFFFFFFFF6|- rs1_val == -274877906945<br>                                                                                                                                                              |[0x80000af4]:addi a1, a0, 4087<br> [0x80000af8]:sd a1, 792(ra)<br>   |
| 120|[0x800063c8]<br>0xFFFFFEFFFFFFFEFE|- rs1_val == -1099511627777<br>                                                                                                                                                             |[0x80000b08]:addi a1, a0, 3839<br> [0x80000b0c]:sd a1, 800(ra)<br>   |
| 121|[0x800063d0]<br>0xFFFFFE0000000001|- rs1_val == -2199023255553<br>                                                                                                                                                             |[0x80000b1c]:addi a1, a0, 2<br> [0x80000b20]:sd a1, 808(ra)<br>      |
| 122|[0x800063d8]<br>0xFFFFFBFFFFFFFFFE|- rs1_val == -4398046511105<br>                                                                                                                                                             |[0x80000b30]:addi a1, a0, 4095<br> [0x80000b34]:sd a1, 816(ra)<br>   |
| 123|[0x800063e0]<br>0xFFFFF800000007FE|- rs1_val == -8796093022209<br>                                                                                                                                                             |[0x80000b44]:addi a1, a0, 2047<br> [0x80000b48]:sd a1, 824(ra)<br>   |
| 124|[0x800063e8]<br>0xFFFFF00000000005|- rs1_val == -17592186044417<br>                                                                                                                                                            |[0x80000b58]:addi a1, a0, 6<br> [0x80000b5c]:sd a1, 832(ra)<br>      |
| 125|[0x800063f0]<br>0xFFFFE00000000002|- rs1_val == -35184372088833<br>                                                                                                                                                            |[0x80000b6c]:addi a1, a0, 3<br> [0x80000b70]:sd a1, 840(ra)<br>      |
| 126|[0x800063f8]<br>0xFFFFBFFFFFFFFFF9|- rs1_val == -70368744177665<br>                                                                                                                                                            |[0x80000b80]:addi a1, a0, 4090<br> [0x80000b84]:sd a1, 848(ra)<br>   |
| 127|[0x80006400]<br>0xFFFF800000000000|- rs1_val == -140737488355329<br>                                                                                                                                                           |[0x80000b94]:addi a1, a0, 1<br> [0x80000b98]:sd a1, 856(ra)<br>      |
| 128|[0x80006408]<br>0xFFFEFFFFFFFFFF7E|- rs1_val == -281474976710657<br>                                                                                                                                                           |[0x80000ba8]:addi a1, a0, 3967<br> [0x80000bac]:sd a1, 864(ra)<br>   |
| 129|[0x80006410]<br>0xFFFE000000000001|- rs1_val == -562949953421313<br>                                                                                                                                                           |[0x80000bbc]:addi a1, a0, 2<br> [0x80000bc0]:sd a1, 872(ra)<br>      |
| 130|[0x80006418]<br>0xFFFC000000000008|- rs1_val == -1125899906842625<br>                                                                                                                                                          |[0x80000bd0]:addi a1, a0, 9<br> [0x80000bd4]:sd a1, 880(ra)<br>      |
| 131|[0x80006420]<br>0xFFF7FFFFFFFFFFD3|- rs1_val == -2251799813685249<br>                                                                                                                                                          |[0x80000be4]:addi a1, a0, 4052<br> [0x80000be8]:sd a1, 888(ra)<br>   |
| 132|[0x80006428]<br>0xFFE000000000003F|- rs1_val == -9007199254740993<br>                                                                                                                                                          |[0x80000bf8]:addi a1, a0, 64<br> [0x80000bfc]:sd a1, 896(ra)<br>     |
| 133|[0x80006430]<br>0xFFC0000000000007|- rs1_val == -18014398509481985<br>                                                                                                                                                         |[0x80000c0c]:addi a1, a0, 8<br> [0x80000c10]:sd a1, 904(ra)<br>      |
| 134|[0x80006438]<br>0xFF80000000000554|- rs1_val == -36028797018963969<br>                                                                                                                                                         |[0x80000c20]:addi a1, a0, 1365<br> [0x80000c24]:sd a1, 912(ra)<br>   |
| 135|[0x80006440]<br>0xFE00000000000002|- rs1_val == -144115188075855873<br>                                                                                                                                                        |[0x80000c34]:addi a1, a0, 3<br> [0x80000c38]:sd a1, 920(ra)<br>      |
| 136|[0x80006448]<br>0xF800000000000001|- rs1_val == -576460752303423489<br>                                                                                                                                                        |[0x80000c48]:addi a1, a0, 2<br> [0x80000c4c]:sd a1, 928(ra)<br>      |
| 137|[0x80006450]<br>0xF00000000000002C|- rs1_val == -1152921504606846977<br>                                                                                                                                                       |[0x80000c5c]:addi a1, a0, 45<br> [0x80000c60]:sd a1, 936(ra)<br>     |
| 138|[0x80006458]<br>0xE00000000000002D|- rs1_val == -2305843009213693953<br>                                                                                                                                                       |[0x80000c70]:addi a1, a0, 46<br> [0x80000c74]:sd a1, 944(ra)<br>     |
| 139|[0x80006460]<br>0xBFFFFFFFFFFFFFFD|- rs1_val == -4611686018427387905<br>                                                                                                                                                       |[0x80000c84]:addi a1, a0, 4094<br> [0x80000c88]:sd a1, 952(ra)<br>   |
| 140|[0x80006468]<br>0x0000000000000006|- rs1_val==3 and imm_val==3<br>                                                                                                                                                             |[0x80000c90]:addi a1, a0, 3<br> [0x80000c94]:sd a1, 960(ra)<br>      |
| 141|[0x80006470]<br>0x0000000000000558|- rs1_val==3 and imm_val==1365<br>                                                                                                                                                          |[0x80000c9c]:addi a1, a0, 1365<br> [0x80000ca0]:sd a1, 968(ra)<br>   |
| 142|[0x80006478]<br>0xFFFFFFFFFFFFFAAD|- rs1_val==3 and imm_val==-1366<br>                                                                                                                                                         |[0x80000ca8]:addi a1, a0, 2730<br> [0x80000cac]:sd a1, 976(ra)<br>   |
| 143|[0x80006480]<br>0x0000000000000008|- rs1_val==3 and imm_val==5<br>                                                                                                                                                             |[0x80000cb4]:addi a1, a0, 5<br> [0x80000cb8]:sd a1, 984(ra)<br>      |
| 144|[0x80006488]<br>0x0000000000000336|- rs1_val==3 and imm_val==819<br>                                                                                                                                                           |[0x80000cc0]:addi a1, a0, 819<br> [0x80000cc4]:sd a1, 992(ra)<br>    |
| 145|[0x80006490]<br>0x0000000000000669|- rs1_val==3 and imm_val==1638<br>                                                                                                                                                          |[0x80000ccc]:addi a1, a0, 1638<br> [0x80000cd0]:sd a1, 1000(ra)<br>  |
| 146|[0x80006498]<br>0xFFFFFFFFFFFFFFD6|- rs1_val==3 and imm_val==-45<br>                                                                                                                                                           |[0x80000cd8]:addi a1, a0, 4051<br> [0x80000cdc]:sd a1, 1008(ra)<br>  |
| 147|[0x800064a0]<br>0x0000000000000030|- rs1_val==3 and imm_val==45<br>                                                                                                                                                            |[0x80000ce4]:addi a1, a0, 45<br> [0x80000ce8]:sd a1, 1016(ra)<br>    |
| 148|[0x800064a8]<br>0x0000000000000005|- rs1_val==3 and imm_val==2<br>                                                                                                                                                             |[0x80000cf0]:addi a1, a0, 2<br> [0x80000cf4]:sd a1, 1024(ra)<br>     |
| 149|[0x800064b0]<br>0x0000000000000557|- rs1_val==3 and imm_val==1364<br>                                                                                                                                                          |[0x80000cfc]:addi a1, a0, 1364<br> [0x80000d00]:sd a1, 1032(ra)<br>  |
| 150|[0x800064b8]<br>0x0000000000000003|- rs1_val==3 and imm_val==0<br>                                                                                                                                                             |[0x80000d08]:addi a1, a0, 0<br> [0x80000d0c]:sd a1, 1040(ra)<br>     |
| 151|[0x800064c0]<br>0x0000000000000007|- rs1_val==3 and imm_val==4<br>                                                                                                                                                             |[0x80000d14]:addi a1, a0, 4<br> [0x80000d18]:sd a1, 1048(ra)<br>     |
| 152|[0x800064c8]<br>0x0000000000000335|- rs1_val==3 and imm_val==818<br>                                                                                                                                                           |[0x80000d20]:addi a1, a0, 818<br> [0x80000d24]:sd a1, 1056(ra)<br>   |
| 153|[0x800064d0]<br>0x0000000000000668|- rs1_val==3 and imm_val==1637<br>                                                                                                                                                          |[0x80000d2c]:addi a1, a0, 1637<br> [0x80000d30]:sd a1, 1064(ra)<br>  |
| 154|[0x800064d8]<br>0x000000000000002F|- rs1_val==3 and imm_val==44<br>                                                                                                                                                            |[0x80000d38]:addi a1, a0, 44<br> [0x80000d3c]:sd a1, 1072(ra)<br>    |
| 155|[0x800064e0]<br>0x0000000000000559|- rs1_val==3 and imm_val==1366<br>                                                                                                                                                          |[0x80000d44]:addi a1, a0, 1366<br> [0x80000d48]:sd a1, 1080(ra)<br>  |
| 156|[0x800064e8]<br>0xFFFFFFFFFFFFFAAE|- rs1_val==3 and imm_val==-1365<br>                                                                                                                                                         |[0x80000d50]:addi a1, a0, 2731<br> [0x80000d54]:sd a1, 1088(ra)<br>  |
| 157|[0x800064f0]<br>0x0000000000000009|- rs1_val==3 and imm_val==6<br>                                                                                                                                                             |[0x80000d5c]:addi a1, a0, 6<br> [0x80000d60]:sd a1, 1096(ra)<br>     |
| 158|[0x800064f8]<br>0x0000000000000337|- rs1_val==3 and imm_val==820<br>                                                                                                                                                           |[0x80000d68]:addi a1, a0, 820<br> [0x80000d6c]:sd a1, 1104(ra)<br>   |
| 159|[0x80006500]<br>0x000000000000066A|- rs1_val==3 and imm_val==1639<br>                                                                                                                                                          |[0x80000d74]:addi a1, a0, 1639<br> [0x80000d78]:sd a1, 1112(ra)<br>  |
| 160|[0x80006508]<br>0xFFFFFFFFFFFFFFD7|- rs1_val==3 and imm_val==-44<br>                                                                                                                                                           |[0x80000d80]:addi a1, a0, 4052<br> [0x80000d84]:sd a1, 1120(ra)<br>  |
| 161|[0x80006510]<br>0x0000000000000031|- rs1_val==3 and imm_val==46<br>                                                                                                                                                            |[0x80000d8c]:addi a1, a0, 46<br> [0x80000d90]:sd a1, 1128(ra)<br>    |
| 162|[0x80006518]<br>0x5555555555555558|- rs1_val==6148914691236517205 and imm_val==3<br>                                                                                                                                           |[0x80000db4]:addi a1, a0, 3<br> [0x80000db8]:sd a1, 1136(ra)<br>     |
| 163|[0x80006520]<br>0x5555555555555AAA|- rs1_val==6148914691236517205 and imm_val==1365<br>                                                                                                                                        |[0x80000ddc]:addi a1, a0, 1365<br> [0x80000de0]:sd a1, 1144(ra)<br>  |
| 164|[0x80006528]<br>0x5555555555554FFF|- rs1_val==6148914691236517205 and imm_val==-1366<br>                                                                                                                                       |[0x80000e04]:addi a1, a0, 2730<br> [0x80000e08]:sd a1, 1152(ra)<br>  |
| 165|[0x80006530]<br>0x555555555555555A|- rs1_val==6148914691236517205 and imm_val==5<br>                                                                                                                                           |[0x80000e2c]:addi a1, a0, 5<br> [0x80000e30]:sd a1, 1160(ra)<br>     |
| 166|[0x80006538]<br>0x5555555555555888|- rs1_val==6148914691236517205 and imm_val==819<br>                                                                                                                                         |[0x80000e54]:addi a1, a0, 819<br> [0x80000e58]:sd a1, 1168(ra)<br>   |
| 167|[0x80006540]<br>0x5555555555555BBB|- rs1_val==6148914691236517205 and imm_val==1638<br>                                                                                                                                        |[0x80000e7c]:addi a1, a0, 1638<br> [0x80000e80]:sd a1, 1176(ra)<br>  |
| 168|[0x80006548]<br>0x5555555555555528|- rs1_val==6148914691236517205 and imm_val==-45<br>                                                                                                                                         |[0x80000ea4]:addi a1, a0, 4051<br> [0x80000ea8]:sd a1, 1184(ra)<br>  |
| 169|[0x80006550]<br>0x5555555555555582|- rs1_val==6148914691236517205 and imm_val==45<br>                                                                                                                                          |[0x80000ecc]:addi a1, a0, 45<br> [0x80000ed0]:sd a1, 1192(ra)<br>    |
| 170|[0x80006558]<br>0x5555555555555557|- rs1_val==6148914691236517205 and imm_val==2<br>                                                                                                                                           |[0x80000ef4]:addi a1, a0, 2<br> [0x80000ef8]:sd a1, 1200(ra)<br>     |
| 171|[0x80006560]<br>0x5555555555555AA9|- rs1_val==6148914691236517205 and imm_val==1364<br>                                                                                                                                        |[0x80000f1c]:addi a1, a0, 1364<br> [0x80000f20]:sd a1, 1208(ra)<br>  |
| 172|[0x80006568]<br>0x5555555555555555|- rs1_val==6148914691236517205 and imm_val==0<br>                                                                                                                                           |[0x80000f44]:addi a1, a0, 0<br> [0x80000f48]:sd a1, 1216(ra)<br>     |
| 173|[0x80006570]<br>0x5555555555555559|- rs1_val==6148914691236517205 and imm_val==4<br>                                                                                                                                           |[0x80000f6c]:addi a1, a0, 4<br> [0x80000f70]:sd a1, 1224(ra)<br>     |
| 174|[0x80006578]<br>0x5555555555555887|- rs1_val==6148914691236517205 and imm_val==818<br>                                                                                                                                         |[0x80000f94]:addi a1, a0, 818<br> [0x80000f98]:sd a1, 1232(ra)<br>   |
| 175|[0x80006580]<br>0x5555555555555BBA|- rs1_val==6148914691236517205 and imm_val==1637<br>                                                                                                                                        |[0x80000fbc]:addi a1, a0, 1637<br> [0x80000fc0]:sd a1, 1240(ra)<br>  |
| 176|[0x80006588]<br>0x5555555555555581|- rs1_val==6148914691236517205 and imm_val==44<br>                                                                                                                                          |[0x80000fe4]:addi a1, a0, 44<br> [0x80000fe8]:sd a1, 1248(ra)<br>    |
| 177|[0x80006590]<br>0x5555555555555AAB|- rs1_val==6148914691236517205 and imm_val==1366<br>                                                                                                                                        |[0x8000100c]:addi a1, a0, 1366<br> [0x80001010]:sd a1, 1256(ra)<br>  |
| 178|[0x80006598]<br>0x5555555555555000|- rs1_val==6148914691236517205 and imm_val==-1365<br>                                                                                                                                       |[0x80001034]:addi a1, a0, 2731<br> [0x80001038]:sd a1, 1264(ra)<br>  |
| 179|[0x800065a0]<br>0x555555555555555B|- rs1_val==6148914691236517205 and imm_val==6<br>                                                                                                                                           |[0x8000105c]:addi a1, a0, 6<br> [0x80001060]:sd a1, 1272(ra)<br>     |
| 180|[0x800065a8]<br>0x5555555555555889|- rs1_val==6148914691236517205 and imm_val==820<br>                                                                                                                                         |[0x80001084]:addi a1, a0, 820<br> [0x80001088]:sd a1, 1280(ra)<br>   |
| 181|[0x800065b0]<br>0x5555555555555BBC|- rs1_val==6148914691236517205 and imm_val==1639<br>                                                                                                                                        |[0x800010ac]:addi a1, a0, 1639<br> [0x800010b0]:sd a1, 1288(ra)<br>  |
| 182|[0x800065b8]<br>0x5555555555555529|- rs1_val==6148914691236517205 and imm_val==-44<br>                                                                                                                                         |[0x800010d4]:addi a1, a0, 4052<br> [0x800010d8]:sd a1, 1296(ra)<br>  |
| 183|[0x800065c0]<br>0x5555555555555583|- rs1_val==6148914691236517205 and imm_val==46<br>                                                                                                                                          |[0x800010fc]:addi a1, a0, 46<br> [0x80001100]:sd a1, 1304(ra)<br>    |
| 184|[0x800065c8]<br>0xAAAAAAAAAAAAAAAD|- rs1_val==-6148914691236517206 and imm_val==3<br>                                                                                                                                          |[0x80001124]:addi a1, a0, 3<br> [0x80001128]:sd a1, 1312(ra)<br>     |
| 185|[0x800065d0]<br>0xAAAAAAAAAAAAAFFF|- rs1_val==-6148914691236517206 and imm_val==1365<br>                                                                                                                                       |[0x8000114c]:addi a1, a0, 1365<br> [0x80001150]:sd a1, 1320(ra)<br>  |
| 186|[0x800065d8]<br>0xAAAAAAAAAAAAA554|- rs1_val==-6148914691236517206 and imm_val==-1366<br>                                                                                                                                      |[0x80001174]:addi a1, a0, 2730<br> [0x80001178]:sd a1, 1328(ra)<br>  |
| 187|[0x800065e0]<br>0xAAAAAAAAAAAAAAAF|- rs1_val==-6148914691236517206 and imm_val==5<br>                                                                                                                                          |[0x8000119c]:addi a1, a0, 5<br> [0x800011a0]:sd a1, 1336(ra)<br>     |
| 188|[0x800065e8]<br>0xAAAAAAAAAAAAADDD|- rs1_val==-6148914691236517206 and imm_val==819<br>                                                                                                                                        |[0x800011c4]:addi a1, a0, 819<br> [0x800011c8]:sd a1, 1344(ra)<br>   |
| 189|[0x800065f0]<br>0xAAAAAAAAAAAAB110|- rs1_val==-6148914691236517206 and imm_val==1638<br>                                                                                                                                       |[0x800011ec]:addi a1, a0, 1638<br> [0x800011f0]:sd a1, 1352(ra)<br>  |
| 190|[0x800065f8]<br>0xAAAAAAAAAAAAAA7D|- rs1_val==-6148914691236517206 and imm_val==-45<br>                                                                                                                                        |[0x80001214]:addi a1, a0, 4051<br> [0x80001218]:sd a1, 1360(ra)<br>  |
| 191|[0x80006600]<br>0xAAAAAAAAAAAAAAD7|- rs1_val==-6148914691236517206 and imm_val==45<br>                                                                                                                                         |[0x8000123c]:addi a1, a0, 45<br> [0x80001240]:sd a1, 1368(ra)<br>    |
| 192|[0x80006608]<br>0xAAAAAAAAAAAAAAAC|- rs1_val==-6148914691236517206 and imm_val==2<br>                                                                                                                                          |[0x80001264]:addi a1, a0, 2<br> [0x80001268]:sd a1, 1376(ra)<br>     |
| 193|[0x80006610]<br>0xAAAAAAAAAAAAAFFE|- rs1_val==-6148914691236517206 and imm_val==1364<br>                                                                                                                                       |[0x8000128c]:addi a1, a0, 1364<br> [0x80001290]:sd a1, 1384(ra)<br>  |
| 194|[0x80006618]<br>0xAAAAAAAAAAAAAAAA|- rs1_val==-6148914691236517206 and imm_val==0<br>                                                                                                                                          |[0x800012b4]:addi a1, a0, 0<br> [0x800012b8]:sd a1, 1392(ra)<br>     |
| 195|[0x80006620]<br>0xAAAAAAAAAAAAAAAE|- rs1_val==-6148914691236517206 and imm_val==4<br>                                                                                                                                          |[0x800012dc]:addi a1, a0, 4<br> [0x800012e0]:sd a1, 1400(ra)<br>     |
| 196|[0x80006628]<br>0xAAAAAAAAAAAAADDC|- rs1_val==-6148914691236517206 and imm_val==818<br>                                                                                                                                        |[0x80001304]:addi a1, a0, 818<br> [0x80001308]:sd a1, 1408(ra)<br>   |
| 197|[0x80006630]<br>0xAAAAAAAAAAAAB10F|- rs1_val==-6148914691236517206 and imm_val==1637<br>                                                                                                                                       |[0x8000132c]:addi a1, a0, 1637<br> [0x80001330]:sd a1, 1416(ra)<br>  |
| 198|[0x80006638]<br>0xAAAAAAAAAAAAAAD6|- rs1_val==-6148914691236517206 and imm_val==44<br>                                                                                                                                         |[0x80001354]:addi a1, a0, 44<br> [0x80001358]:sd a1, 1424(ra)<br>    |
| 199|[0x80006640]<br>0xAAAAAAAAAAAAB000|- rs1_val==-6148914691236517206 and imm_val==1366<br>                                                                                                                                       |[0x8000137c]:addi a1, a0, 1366<br> [0x80001380]:sd a1, 1432(ra)<br>  |
| 200|[0x80006648]<br>0xAAAAAAAAAAAAA555|- rs1_val==-6148914691236517206 and imm_val==-1365<br>                                                                                                                                      |[0x800013a4]:addi a1, a0, 2731<br> [0x800013a8]:sd a1, 1440(ra)<br>  |
| 201|[0x80006650]<br>0xAAAAAAAAAAAAAAB0|- rs1_val==-6148914691236517206 and imm_val==6<br>                                                                                                                                          |[0x800013cc]:addi a1, a0, 6<br> [0x800013d0]:sd a1, 1448(ra)<br>     |
| 202|[0x80006658]<br>0xAAAAAAAAAAAAADDE|- rs1_val==-6148914691236517206 and imm_val==820<br>                                                                                                                                        |[0x800013f4]:addi a1, a0, 820<br> [0x800013f8]:sd a1, 1456(ra)<br>   |
| 203|[0x80006660]<br>0xAAAAAAAAAAAAB111|- rs1_val==-6148914691236517206 and imm_val==1639<br>                                                                                                                                       |[0x8000141c]:addi a1, a0, 1639<br> [0x80001420]:sd a1, 1464(ra)<br>  |
| 204|[0x80006668]<br>0xAAAAAAAAAAAAAA7E|- rs1_val==-6148914691236517206 and imm_val==-44<br>                                                                                                                                        |[0x80001444]:addi a1, a0, 4052<br> [0x80001448]:sd a1, 1472(ra)<br>  |
| 205|[0x80006670]<br>0xAAAAAAAAAAAAAAD8|- rs1_val==-6148914691236517206 and imm_val==46<br>                                                                                                                                         |[0x8000146c]:addi a1, a0, 46<br> [0x80001470]:sd a1, 1480(ra)<br>    |
| 206|[0x80006678]<br>0x0000000000000008|- rs1_val==5 and imm_val==3<br>                                                                                                                                                             |[0x80001478]:addi a1, a0, 3<br> [0x8000147c]:sd a1, 1488(ra)<br>     |
| 207|[0x80006680]<br>0x000000000000055A|- rs1_val==5 and imm_val==1365<br>                                                                                                                                                          |[0x80001484]:addi a1, a0, 1365<br> [0x80001488]:sd a1, 1496(ra)<br>  |
| 208|[0x80006688]<br>0xFFFFFFFFFFFFFAAF|- rs1_val==5 and imm_val==-1366<br>                                                                                                                                                         |[0x80001490]:addi a1, a0, 2730<br> [0x80001494]:sd a1, 1504(ra)<br>  |
| 209|[0x80006690]<br>0x000000000000000A|- rs1_val==5 and imm_val==5<br>                                                                                                                                                             |[0x8000149c]:addi a1, a0, 5<br> [0x800014a0]:sd a1, 1512(ra)<br>     |
| 210|[0x80006698]<br>0x0000000000000338|- rs1_val==5 and imm_val==819<br>                                                                                                                                                           |[0x800014a8]:addi a1, a0, 819<br> [0x800014ac]:sd a1, 1520(ra)<br>   |
| 211|[0x800066a0]<br>0x000000000000066B|- rs1_val==5 and imm_val==1638<br>                                                                                                                                                          |[0x800014b4]:addi a1, a0, 1638<br> [0x800014b8]:sd a1, 1528(ra)<br>  |
| 212|[0x800066a8]<br>0xFFFFFFFFFFFFFFD8|- rs1_val==5 and imm_val==-45<br>                                                                                                                                                           |[0x800014c0]:addi a1, a0, 4051<br> [0x800014c4]:sd a1, 1536(ra)<br>  |
| 213|[0x800066b0]<br>0x0000000000000032|- rs1_val==5 and imm_val==45<br>                                                                                                                                                            |[0x800014cc]:addi a1, a0, 45<br> [0x800014d0]:sd a1, 1544(ra)<br>    |
| 214|[0x800066b8]<br>0x0000000000000007|- rs1_val==5 and imm_val==2<br>                                                                                                                                                             |[0x800014d8]:addi a1, a0, 2<br> [0x800014dc]:sd a1, 1552(ra)<br>     |
| 215|[0x800066c0]<br>0x0000000000000559|- rs1_val==5 and imm_val==1364<br>                                                                                                                                                          |[0x800014e4]:addi a1, a0, 1364<br> [0x800014e8]:sd a1, 1560(ra)<br>  |
| 216|[0x800066c8]<br>0x0000000000000005|- rs1_val==5 and imm_val==0<br>                                                                                                                                                             |[0x800014f0]:addi a1, a0, 0<br> [0x800014f4]:sd a1, 1568(ra)<br>     |
| 217|[0x800066d0]<br>0x0000000000000009|- rs1_val==5 and imm_val==4<br>                                                                                                                                                             |[0x800014fc]:addi a1, a0, 4<br> [0x80001500]:sd a1, 1576(ra)<br>     |
| 218|[0x800066d8]<br>0x0000000000000337|- rs1_val==5 and imm_val==818<br>                                                                                                                                                           |[0x80001508]:addi a1, a0, 818<br> [0x8000150c]:sd a1, 1584(ra)<br>   |
| 219|[0x800066e0]<br>0x000000000000066A|- rs1_val==5 and imm_val==1637<br>                                                                                                                                                          |[0x80001514]:addi a1, a0, 1637<br> [0x80001518]:sd a1, 1592(ra)<br>  |
| 220|[0x800066e8]<br>0x0000000000000031|- rs1_val==5 and imm_val==44<br>                                                                                                                                                            |[0x80001520]:addi a1, a0, 44<br> [0x80001524]:sd a1, 1600(ra)<br>    |
| 221|[0x800066f0]<br>0x000000000000055B|- rs1_val==5 and imm_val==1366<br>                                                                                                                                                          |[0x8000152c]:addi a1, a0, 1366<br> [0x80001530]:sd a1, 1608(ra)<br>  |
| 222|[0x800066f8]<br>0xFFFFFFFFFFFFFAB0|- rs1_val==5 and imm_val==-1365<br>                                                                                                                                                         |[0x80001538]:addi a1, a0, 2731<br> [0x8000153c]:sd a1, 1616(ra)<br>  |
| 223|[0x80006700]<br>0x000000000000000B|- rs1_val==5 and imm_val==6<br>                                                                                                                                                             |[0x80001544]:addi a1, a0, 6<br> [0x80001548]:sd a1, 1624(ra)<br>     |
| 224|[0x80006708]<br>0x0000000000000339|- rs1_val==5 and imm_val==820<br>                                                                                                                                                           |[0x80001550]:addi a1, a0, 820<br> [0x80001554]:sd a1, 1632(ra)<br>   |
| 225|[0x80006710]<br>0x000000000000066C|- rs1_val==5 and imm_val==1639<br>                                                                                                                                                          |[0x8000155c]:addi a1, a0, 1639<br> [0x80001560]:sd a1, 1640(ra)<br>  |
| 226|[0x80006718]<br>0xFFFFFFFFFFFFFFD9|- rs1_val==5 and imm_val==-44<br>                                                                                                                                                           |[0x80001568]:addi a1, a0, 4052<br> [0x8000156c]:sd a1, 1648(ra)<br>  |
| 227|[0x80006720]<br>0x0000000000000033|- rs1_val==5 and imm_val==46<br>                                                                                                                                                            |[0x80001574]:addi a1, a0, 46<br> [0x80001578]:sd a1, 1656(ra)<br>    |
| 228|[0x80006728]<br>0x3333333333333336|- rs1_val==3689348814741910323 and imm_val==3<br>                                                                                                                                           |[0x8000159c]:addi a1, a0, 3<br> [0x800015a0]:sd a1, 1664(ra)<br>     |
| 229|[0x80006730]<br>0x3333333333333888|- rs1_val==3689348814741910323 and imm_val==1365<br>                                                                                                                                        |[0x800015c4]:addi a1, a0, 1365<br> [0x800015c8]:sd a1, 1672(ra)<br>  |
| 230|[0x80006738]<br>0x3333333333332DDD|- rs1_val==3689348814741910323 and imm_val==-1366<br>                                                                                                                                       |[0x800015ec]:addi a1, a0, 2730<br> [0x800015f0]:sd a1, 1680(ra)<br>  |
| 231|[0x80006740]<br>0x3333333333333338|- rs1_val==3689348814741910323 and imm_val==5<br>                                                                                                                                           |[0x80001614]:addi a1, a0, 5<br> [0x80001618]:sd a1, 1688(ra)<br>     |
| 232|[0x80006748]<br>0x3333333333333666|- rs1_val==3689348814741910323 and imm_val==819<br>                                                                                                                                         |[0x8000163c]:addi a1, a0, 819<br> [0x80001640]:sd a1, 1696(ra)<br>   |
| 233|[0x80006750]<br>0x3333333333333999|- rs1_val==3689348814741910323 and imm_val==1638<br>                                                                                                                                        |[0x80001664]:addi a1, a0, 1638<br> [0x80001668]:sd a1, 1704(ra)<br>  |
| 234|[0x80006758]<br>0x3333333333333306|- rs1_val==3689348814741910323 and imm_val==-45<br>                                                                                                                                         |[0x8000168c]:addi a1, a0, 4051<br> [0x80001690]:sd a1, 1712(ra)<br>  |
| 235|[0x80006760]<br>0x3333333333333360|- rs1_val==3689348814741910323 and imm_val==45<br>                                                                                                                                          |[0x800016b4]:addi a1, a0, 45<br> [0x800016b8]:sd a1, 1720(ra)<br>    |
| 236|[0x80006768]<br>0x3333333333333335|- rs1_val==3689348814741910323 and imm_val==2<br>                                                                                                                                           |[0x800016dc]:addi a1, a0, 2<br> [0x800016e0]:sd a1, 1728(ra)<br>     |
| 237|[0x80006770]<br>0x3333333333333887|- rs1_val==3689348814741910323 and imm_val==1364<br>                                                                                                                                        |[0x80001704]:addi a1, a0, 1364<br> [0x80001708]:sd a1, 1736(ra)<br>  |
| 238|[0x80006778]<br>0x3333333333333333|- rs1_val==3689348814741910323 and imm_val==0<br>                                                                                                                                           |[0x8000172c]:addi a1, a0, 0<br> [0x80001730]:sd a1, 1744(ra)<br>     |
| 239|[0x80006780]<br>0x3333333333333337|- rs1_val==3689348814741910323 and imm_val==4<br>                                                                                                                                           |[0x80001754]:addi a1, a0, 4<br> [0x80001758]:sd a1, 1752(ra)<br>     |
| 240|[0x80006788]<br>0x3333333333333665|- rs1_val==3689348814741910323 and imm_val==818<br>                                                                                                                                         |[0x8000177c]:addi a1, a0, 818<br> [0x80001780]:sd a1, 1760(ra)<br>   |
| 241|[0x80006790]<br>0x3333333333333998|- rs1_val==3689348814741910323 and imm_val==1637<br>                                                                                                                                        |[0x800017a4]:addi a1, a0, 1637<br> [0x800017a8]:sd a1, 1768(ra)<br>  |
| 242|[0x80006798]<br>0x333333333333335F|- rs1_val==3689348814741910323 and imm_val==44<br>                                                                                                                                          |[0x800017cc]:addi a1, a0, 44<br> [0x800017d0]:sd a1, 1776(ra)<br>    |
| 243|[0x800067a0]<br>0x3333333333333889|- rs1_val==3689348814741910323 and imm_val==1366<br>                                                                                                                                        |[0x800017f4]:addi a1, a0, 1366<br> [0x800017f8]:sd a1, 1784(ra)<br>  |
| 244|[0x800067a8]<br>0x3333333333332DDE|- rs1_val==3689348814741910323 and imm_val==-1365<br>                                                                                                                                       |[0x8000181c]:addi a1, a0, 2731<br> [0x80001820]:sd a1, 1792(ra)<br>  |
| 245|[0x800067b0]<br>0x3333333333333339|- rs1_val==3689348814741910323 and imm_val==6<br>                                                                                                                                           |[0x80001844]:addi a1, a0, 6<br> [0x80001848]:sd a1, 1800(ra)<br>     |
| 246|[0x800067b8]<br>0x3333333333333667|- rs1_val==3689348814741910323 and imm_val==820<br>                                                                                                                                         |[0x8000186c]:addi a1, a0, 820<br> [0x80001870]:sd a1, 1808(ra)<br>   |
| 247|[0x800067c0]<br>0x333333333333399A|- rs1_val==3689348814741910323 and imm_val==1639<br>                                                                                                                                        |[0x80001894]:addi a1, a0, 1639<br> [0x80001898]:sd a1, 1816(ra)<br>  |
| 248|[0x800067c8]<br>0x3333333333333307|- rs1_val==3689348814741910323 and imm_val==-44<br>                                                                                                                                         |[0x800018bc]:addi a1, a0, 4052<br> [0x800018c0]:sd a1, 1824(ra)<br>  |
| 249|[0x800067d0]<br>0x3333333333333361|- rs1_val==3689348814741910323 and imm_val==46<br>                                                                                                                                          |[0x800018e4]:addi a1, a0, 46<br> [0x800018e8]:sd a1, 1832(ra)<br>    |
| 250|[0x800067d8]<br>0x6666666666666669|- rs1_val==7378697629483820646 and imm_val==3<br>                                                                                                                                           |[0x8000190c]:addi a1, a0, 3<br> [0x80001910]:sd a1, 1840(ra)<br>     |
| 251|[0x800067e0]<br>0x6666666666666BBB|- rs1_val==7378697629483820646 and imm_val==1365<br>                                                                                                                                        |[0x80001934]:addi a1, a0, 1365<br> [0x80001938]:sd a1, 1848(ra)<br>  |
| 252|[0x800067e8]<br>0x6666666666666110|- rs1_val==7378697629483820646 and imm_val==-1366<br>                                                                                                                                       |[0x8000195c]:addi a1, a0, 2730<br> [0x80001960]:sd a1, 1856(ra)<br>  |
| 253|[0x800067f0]<br>0x666666666666666B|- rs1_val==7378697629483820646 and imm_val==5<br>                                                                                                                                           |[0x80001984]:addi a1, a0, 5<br> [0x80001988]:sd a1, 1864(ra)<br>     |
| 254|[0x800067f8]<br>0x6666666666666999|- rs1_val==7378697629483820646 and imm_val==819<br>                                                                                                                                         |[0x800019ac]:addi a1, a0, 819<br> [0x800019b0]:sd a1, 1872(ra)<br>   |
| 255|[0x80006800]<br>0x6666666666666CCC|- rs1_val==7378697629483820646 and imm_val==1638<br>                                                                                                                                        |[0x800019d4]:addi a1, a0, 1638<br> [0x800019d8]:sd a1, 1880(ra)<br>  |
| 256|[0x80006808]<br>0x6666666666666639|- rs1_val==7378697629483820646 and imm_val==-45<br>                                                                                                                                         |[0x800019fc]:addi a1, a0, 4051<br> [0x80001a00]:sd a1, 1888(ra)<br>  |
| 257|[0x80006810]<br>0x6666666666666693|- rs1_val==7378697629483820646 and imm_val==45<br>                                                                                                                                          |[0x80001a24]:addi a1, a0, 45<br> [0x80001a28]:sd a1, 1896(ra)<br>    |
| 258|[0x80006818]<br>0x6666666666666668|- rs1_val==7378697629483820646 and imm_val==2<br>                                                                                                                                           |[0x80001a4c]:addi a1, a0, 2<br> [0x80001a50]:sd a1, 1904(ra)<br>     |
| 259|[0x80006820]<br>0x6666666666666BBA|- rs1_val==7378697629483820646 and imm_val==1364<br>                                                                                                                                        |[0x80001a74]:addi a1, a0, 1364<br> [0x80001a78]:sd a1, 1912(ra)<br>  |
| 260|[0x80006828]<br>0x6666666666666666|- rs1_val==7378697629483820646 and imm_val==0<br>                                                                                                                                           |[0x80001a9c]:addi a1, a0, 0<br> [0x80001aa0]:sd a1, 1920(ra)<br>     |
| 261|[0x80006830]<br>0x666666666666666A|- rs1_val==7378697629483820646 and imm_val==4<br>                                                                                                                                           |[0x80001ac4]:addi a1, a0, 4<br> [0x80001ac8]:sd a1, 1928(ra)<br>     |
| 262|[0x80006838]<br>0x6666666666666998|- rs1_val==7378697629483820646 and imm_val==818<br>                                                                                                                                         |[0x80001aec]:addi a1, a0, 818<br> [0x80001af0]:sd a1, 1936(ra)<br>   |
| 263|[0x80006840]<br>0x6666666666666CCB|- rs1_val==7378697629483820646 and imm_val==1637<br>                                                                                                                                        |[0x80001b14]:addi a1, a0, 1637<br> [0x80001b18]:sd a1, 1944(ra)<br>  |
| 264|[0x80006848]<br>0x6666666666666692|- rs1_val==7378697629483820646 and imm_val==44<br>                                                                                                                                          |[0x80001b3c]:addi a1, a0, 44<br> [0x80001b40]:sd a1, 1952(ra)<br>    |
| 265|[0x80006850]<br>0x6666666666666BBC|- rs1_val==7378697629483820646 and imm_val==1366<br>                                                                                                                                        |[0x80001b64]:addi a1, a0, 1366<br> [0x80001b68]:sd a1, 1960(ra)<br>  |
| 266|[0x80006858]<br>0x6666666666666111|- rs1_val==7378697629483820646 and imm_val==-1365<br>                                                                                                                                       |[0x80001b8c]:addi a1, a0, 2731<br> [0x80001b90]:sd a1, 1968(ra)<br>  |
| 267|[0x80006860]<br>0x666666666666666C|- rs1_val==7378697629483820646 and imm_val==6<br>                                                                                                                                           |[0x80001bb4]:addi a1, a0, 6<br> [0x80001bb8]:sd a1, 1976(ra)<br>     |
| 268|[0x80006868]<br>0x666666666666699A|- rs1_val==7378697629483820646 and imm_val==820<br>                                                                                                                                         |[0x80001bdc]:addi a1, a0, 820<br> [0x80001be0]:sd a1, 1984(ra)<br>   |
| 269|[0x80006870]<br>0x6666666666666CCD|- rs1_val==7378697629483820646 and imm_val==1639<br>                                                                                                                                        |[0x80001c04]:addi a1, a0, 1639<br> [0x80001c08]:sd a1, 1992(ra)<br>  |
| 270|[0x80006878]<br>0x666666666666663A|- rs1_val==7378697629483820646 and imm_val==-44<br>                                                                                                                                         |[0x80001c2c]:addi a1, a0, 4052<br> [0x80001c30]:sd a1, 2000(ra)<br>  |
| 271|[0x80006880]<br>0x6666666666666694|- rs1_val==7378697629483820646 and imm_val==46<br>                                                                                                                                          |[0x80001c54]:addi a1, a0, 46<br> [0x80001c58]:sd a1, 2008(ra)<br>    |
| 272|[0x80006888]<br>0xFFFFFFFF4AFB0CD0|- rs1_val==-3037000499 and imm_val==3<br>                                                                                                                                                   |[0x80001c6c]:addi a1, a0, 3<br> [0x80001c70]:sd a1, 2016(ra)<br>     |
| 273|[0x80006890]<br>0xFFFFFFFF4AFB1222|- rs1_val==-3037000499 and imm_val==1365<br>                                                                                                                                                |[0x80001c84]:addi a1, a0, 1365<br> [0x80001c88]:sd a1, 2024(ra)<br>  |
| 274|[0x80006898]<br>0xFFFFFFFF4AFB0777|- rs1_val==-3037000499 and imm_val==-1366<br>                                                                                                                                               |[0x80001c9c]:addi a1, a0, 2730<br> [0x80001ca0]:sd a1, 2032(ra)<br>  |
| 275|[0x800068a0]<br>0xFFFFFFFF4AFB0CD2|- rs1_val==-3037000499 and imm_val==5<br>                                                                                                                                                   |[0x80001cb4]:addi a1, a0, 5<br> [0x80001cb8]:sd a1, 2040(ra)<br>     |
| 276|[0x800068a8]<br>0xFFFFFFFF4AFB1000|- rs1_val==-3037000499 and imm_val==819<br>                                                                                                                                                 |[0x80001cd4]:addi a1, a0, 819<br> [0x80001cd8]:sd a1, 0(ra)<br>      |
| 277|[0x800068b0]<br>0xFFFFFFFF4AFB1333|- rs1_val==-3037000499 and imm_val==1638<br>                                                                                                                                                |[0x80001cec]:addi a1, a0, 1638<br> [0x80001cf0]:sd a1, 8(ra)<br>     |
| 278|[0x800068b8]<br>0xFFFFFFFF4AFB0CA0|- rs1_val==-3037000499 and imm_val==-45<br>                                                                                                                                                 |[0x80001d04]:addi a1, a0, 4051<br> [0x80001d08]:sd a1, 16(ra)<br>    |
| 279|[0x800068c0]<br>0xFFFFFFFF4AFB0CFA|- rs1_val==-3037000499 and imm_val==45<br>                                                                                                                                                  |[0x80001d1c]:addi a1, a0, 45<br> [0x80001d20]:sd a1, 24(ra)<br>      |
| 280|[0x800068c8]<br>0xFFFFFFFF4AFB0CCF|- rs1_val==-3037000499 and imm_val==2<br>                                                                                                                                                   |[0x80001d34]:addi a1, a0, 2<br> [0x80001d38]:sd a1, 32(ra)<br>       |
| 281|[0x800068d0]<br>0xFFFFFFFF4AFB1221|- rs1_val==-3037000499 and imm_val==1364<br>                                                                                                                                                |[0x80001d4c]:addi a1, a0, 1364<br> [0x80001d50]:sd a1, 40(ra)<br>    |
| 282|[0x800068d8]<br>0xFFFFFFFF4AFB0CCD|- rs1_val==-3037000499 and imm_val==0<br>                                                                                                                                                   |[0x80001d64]:addi a1, a0, 0<br> [0x80001d68]:sd a1, 48(ra)<br>       |
| 283|[0x800068e0]<br>0xFFFFFFFF4AFB0CD1|- rs1_val==-3037000499 and imm_val==4<br>                                                                                                                                                   |[0x80001d7c]:addi a1, a0, 4<br> [0x80001d80]:sd a1, 56(ra)<br>       |
| 284|[0x800068e8]<br>0xFFFFFFFF4AFB0FFF|- rs1_val==-3037000499 and imm_val==818<br>                                                                                                                                                 |[0x80001d94]:addi a1, a0, 818<br> [0x80001d98]:sd a1, 64(ra)<br>     |
| 285|[0x800068f0]<br>0xFFFFFFFF4AFB1332|- rs1_val==-3037000499 and imm_val==1637<br>                                                                                                                                                |[0x80001dac]:addi a1, a0, 1637<br> [0x80001db0]:sd a1, 72(ra)<br>    |
| 286|[0x800068f8]<br>0xFFFFFFFF4AFB0CF9|- rs1_val==-3037000499 and imm_val==44<br>                                                                                                                                                  |[0x80001dc4]:addi a1, a0, 44<br> [0x80001dc8]:sd a1, 80(ra)<br>      |
| 287|[0x80006900]<br>0xFFFFFFFF4AFB1223|- rs1_val==-3037000499 and imm_val==1366<br>                                                                                                                                                |[0x80001ddc]:addi a1, a0, 1366<br> [0x80001de0]:sd a1, 88(ra)<br>    |
| 288|[0x80006908]<br>0xFFFFFFFF4AFB0778|- rs1_val==-3037000499 and imm_val==-1365<br>                                                                                                                                               |[0x80001df4]:addi a1, a0, 2731<br> [0x80001df8]:sd a1, 96(ra)<br>    |
| 289|[0x80006910]<br>0xFFFFFFFF4AFB0CD3|- rs1_val==-3037000499 and imm_val==6<br>                                                                                                                                                   |[0x80001e0c]:addi a1, a0, 6<br> [0x80001e10]:sd a1, 104(ra)<br>      |
| 290|[0x80006918]<br>0xFFFFFFFF4AFB1001|- rs1_val==-3037000499 and imm_val==820<br>                                                                                                                                                 |[0x80001e24]:addi a1, a0, 820<br> [0x80001e28]:sd a1, 112(ra)<br>    |
| 291|[0x80006920]<br>0xFFFFFFFF4AFB1334|- rs1_val==-3037000499 and imm_val==1639<br>                                                                                                                                                |[0x80001e3c]:addi a1, a0, 1639<br> [0x80001e40]:sd a1, 120(ra)<br>   |
| 292|[0x80006928]<br>0xFFFFFFFF4AFB0CA1|- rs1_val==-3037000499 and imm_val==-44<br>                                                                                                                                                 |[0x80001e54]:addi a1, a0, 4052<br> [0x80001e58]:sd a1, 128(ra)<br>   |
| 293|[0x80006930]<br>0xFFFFFFFF4AFB0CFB|- rs1_val==-3037000499 and imm_val==46<br>                                                                                                                                                  |[0x80001e6c]:addi a1, a0, 46<br> [0x80001e70]:sd a1, 136(ra)<br>     |
| 294|[0x80006938]<br>0x00000000B504F336|- rs1_val==3037000499 and imm_val==3<br>                                                                                                                                                    |[0x80001e84]:addi a1, a0, 3<br> [0x80001e88]:sd a1, 144(ra)<br>      |
| 295|[0x80006940]<br>0x00000000B504F888|- rs1_val==3037000499 and imm_val==1365<br>                                                                                                                                                 |[0x80001e9c]:addi a1, a0, 1365<br> [0x80001ea0]:sd a1, 152(ra)<br>   |
| 296|[0x80006948]<br>0x00000000B504EDDD|- rs1_val==3037000499 and imm_val==-1366<br>                                                                                                                                                |[0x80001eb4]:addi a1, a0, 2730<br> [0x80001eb8]:sd a1, 160(ra)<br>   |
| 297|[0x80006950]<br>0x00000000B504F338|- rs1_val==3037000499 and imm_val==5<br>                                                                                                                                                    |[0x80001ecc]:addi a1, a0, 5<br> [0x80001ed0]:sd a1, 168(ra)<br>      |
| 298|[0x80006958]<br>0x00000000B504F666|- rs1_val==3037000499 and imm_val==819<br>                                                                                                                                                  |[0x80001ee4]:addi a1, a0, 819<br> [0x80001ee8]:sd a1, 176(ra)<br>    |
| 299|[0x80006960]<br>0x00000000B504F999|- rs1_val==3037000499 and imm_val==1638<br>                                                                                                                                                 |[0x80001efc]:addi a1, a0, 1638<br> [0x80001f00]:sd a1, 184(ra)<br>   |
| 300|[0x80006968]<br>0x00000000B504F306|- rs1_val==3037000499 and imm_val==-45<br>                                                                                                                                                  |[0x80001f14]:addi a1, a0, 4051<br> [0x80001f18]:sd a1, 192(ra)<br>   |
| 301|[0x80006970]<br>0x00000000B504F360|- rs1_val==3037000499 and imm_val==45<br>                                                                                                                                                   |[0x80001f2c]:addi a1, a0, 45<br> [0x80001f30]:sd a1, 200(ra)<br>     |
| 302|[0x80006978]<br>0x00000000B504F335|- rs1_val==3037000499 and imm_val==2<br>                                                                                                                                                    |[0x80001f44]:addi a1, a0, 2<br> [0x80001f48]:sd a1, 208(ra)<br>      |
| 303|[0x80006980]<br>0x00000000B504F887|- rs1_val==3037000499 and imm_val==1364<br>                                                                                                                                                 |[0x80001f5c]:addi a1, a0, 1364<br> [0x80001f60]:sd a1, 216(ra)<br>   |
| 304|[0x80006988]<br>0x00000000B504F333|- rs1_val==3037000499 and imm_val==0<br>                                                                                                                                                    |[0x80001f74]:addi a1, a0, 0<br> [0x80001f78]:sd a1, 224(ra)<br>      |
| 305|[0x80006990]<br>0x00000000B504F337|- rs1_val==3037000499 and imm_val==4<br>                                                                                                                                                    |[0x80001f8c]:addi a1, a0, 4<br> [0x80001f90]:sd a1, 232(ra)<br>      |
| 306|[0x80006998]<br>0x00000000B504F665|- rs1_val==3037000499 and imm_val==818<br>                                                                                                                                                  |[0x80001fa4]:addi a1, a0, 818<br> [0x80001fa8]:sd a1, 240(ra)<br>    |
| 307|[0x800069a0]<br>0x00000000B504F998|- rs1_val==3037000499 and imm_val==1637<br>                                                                                                                                                 |[0x80001fbc]:addi a1, a0, 1637<br> [0x80001fc0]:sd a1, 248(ra)<br>   |
| 308|[0x800069a8]<br>0x00000000B504F35F|- rs1_val==3037000499 and imm_val==44<br>                                                                                                                                                   |[0x80001fd4]:addi a1, a0, 44<br> [0x80001fd8]:sd a1, 256(ra)<br>     |
| 309|[0x800069b0]<br>0x00000000B504F889|- rs1_val==3037000499 and imm_val==1366<br>                                                                                                                                                 |[0x80001fec]:addi a1, a0, 1366<br> [0x80001ff0]:sd a1, 264(ra)<br>   |
| 310|[0x800069b8]<br>0x00000000B504EDDE|- rs1_val==3037000499 and imm_val==-1365<br>                                                                                                                                                |[0x80002004]:addi a1, a0, 2731<br> [0x80002008]:sd a1, 272(ra)<br>   |
| 311|[0x800069c0]<br>0x00000000B504F339|- rs1_val==3037000499 and imm_val==6<br>                                                                                                                                                    |[0x8000201c]:addi a1, a0, 6<br> [0x80002020]:sd a1, 280(ra)<br>      |
| 312|[0x800069c8]<br>0x00000000B504F667|- rs1_val==3037000499 and imm_val==820<br>                                                                                                                                                  |[0x80002034]:addi a1, a0, 820<br> [0x80002038]:sd a1, 288(ra)<br>    |
| 313|[0x800069d0]<br>0x00000000B504F99A|- rs1_val==3037000499 and imm_val==1639<br>                                                                                                                                                 |[0x8000204c]:addi a1, a0, 1639<br> [0x80002050]:sd a1, 296(ra)<br>   |
| 314|[0x800069d8]<br>0x00000000B504F307|- rs1_val==3037000499 and imm_val==-44<br>                                                                                                                                                  |[0x80002064]:addi a1, a0, 4052<br> [0x80002068]:sd a1, 304(ra)<br>   |
| 315|[0x800069e0]<br>0x00000000B504F361|- rs1_val==3037000499 and imm_val==46<br>                                                                                                                                                   |[0x8000207c]:addi a1, a0, 46<br> [0x80002080]:sd a1, 312(ra)<br>     |
| 316|[0x800069e8]<br>0x0000000000000005|- rs1_val==2 and imm_val==3<br>                                                                                                                                                             |[0x80002088]:addi a1, a0, 3<br> [0x8000208c]:sd a1, 320(ra)<br>      |
| 317|[0x800069f0]<br>0x0000000000000557|- rs1_val==2 and imm_val==1365<br>                                                                                                                                                          |[0x80002094]:addi a1, a0, 1365<br> [0x80002098]:sd a1, 328(ra)<br>   |
| 318|[0x800069f8]<br>0xFFFFFFFFFFFFFAAC|- rs1_val==2 and imm_val==-1366<br>                                                                                                                                                         |[0x800020a0]:addi a1, a0, 2730<br> [0x800020a4]:sd a1, 336(ra)<br>   |
| 319|[0x80006a00]<br>0x0000000000000007|- rs1_val==2 and imm_val==5<br>                                                                                                                                                             |[0x800020ac]:addi a1, a0, 5<br> [0x800020b0]:sd a1, 344(ra)<br>      |
| 320|[0x80006a08]<br>0x0000000000000335|- rs1_val==2 and imm_val==819<br>                                                                                                                                                           |[0x800020b8]:addi a1, a0, 819<br> [0x800020bc]:sd a1, 352(ra)<br>    |
| 321|[0x80006a10]<br>0x0000000000000668|- rs1_val==2 and imm_val==1638<br>                                                                                                                                                          |[0x800020c4]:addi a1, a0, 1638<br> [0x800020c8]:sd a1, 360(ra)<br>   |
| 322|[0x80006a18]<br>0xFFFFFFFFFFFFFFD5|- rs1_val==2 and imm_val==-45<br>                                                                                                                                                           |[0x800020d0]:addi a1, a0, 4051<br> [0x800020d4]:sd a1, 368(ra)<br>   |
| 323|[0x80006a20]<br>0x000000000000002F|- rs1_val==2 and imm_val==45<br>                                                                                                                                                            |[0x800020dc]:addi a1, a0, 45<br> [0x800020e0]:sd a1, 376(ra)<br>     |
| 324|[0x80006a28]<br>0x0000000000000004|- rs1_val==2 and imm_val==2<br>                                                                                                                                                             |[0x800020e8]:addi a1, a0, 2<br> [0x800020ec]:sd a1, 384(ra)<br>      |
| 325|[0x80006a30]<br>0x0000000000000556|- rs1_val==2 and imm_val==1364<br>                                                                                                                                                          |[0x800020f4]:addi a1, a0, 1364<br> [0x800020f8]:sd a1, 392(ra)<br>   |
| 326|[0x80006a38]<br>0x0000000000000002|- rs1_val==2 and imm_val==0<br>                                                                                                                                                             |[0x80002100]:addi a1, a0, 0<br> [0x80002104]:sd a1, 400(ra)<br>      |
| 327|[0x80006a40]<br>0x0000000000000006|- rs1_val==2 and imm_val==4<br>                                                                                                                                                             |[0x8000210c]:addi a1, a0, 4<br> [0x80002110]:sd a1, 408(ra)<br>      |
| 328|[0x80006a48]<br>0x0000000000000334|- rs1_val==2 and imm_val==818<br>                                                                                                                                                           |[0x80002118]:addi a1, a0, 818<br> [0x8000211c]:sd a1, 416(ra)<br>    |
| 329|[0x80006a50]<br>0x0000000000000667|- rs1_val==2 and imm_val==1637<br>                                                                                                                                                          |[0x80002124]:addi a1, a0, 1637<br> [0x80002128]:sd a1, 424(ra)<br>   |
| 330|[0x80006a58]<br>0x000000000000002E|- rs1_val==2 and imm_val==44<br>                                                                                                                                                            |[0x80002130]:addi a1, a0, 44<br> [0x80002134]:sd a1, 432(ra)<br>     |
| 331|[0x80006a60]<br>0x0000000000000558|- rs1_val==2 and imm_val==1366<br>                                                                                                                                                          |[0x8000213c]:addi a1, a0, 1366<br> [0x80002140]:sd a1, 440(ra)<br>   |
| 332|[0x80006a68]<br>0xFFFFFFFFFFFFFAAD|- rs1_val==2 and imm_val==-1365<br>                                                                                                                                                         |[0x80002148]:addi a1, a0, 2731<br> [0x8000214c]:sd a1, 448(ra)<br>   |
| 333|[0x80006a70]<br>0x0000000000000008|- rs1_val==2 and imm_val==6<br>                                                                                                                                                             |[0x80002154]:addi a1, a0, 6<br> [0x80002158]:sd a1, 456(ra)<br>      |
| 334|[0x80006a78]<br>0x0000000000000336|- rs1_val==2 and imm_val==820<br>                                                                                                                                                           |[0x80002160]:addi a1, a0, 820<br> [0x80002164]:sd a1, 464(ra)<br>    |
| 335|[0x80006a80]<br>0x0000000000000669|- rs1_val==2 and imm_val==1639<br>                                                                                                                                                          |[0x8000216c]:addi a1, a0, 1639<br> [0x80002170]:sd a1, 472(ra)<br>   |
| 336|[0x80006a88]<br>0xFFFFFFFFFFFFFFD6|- rs1_val==2 and imm_val==-44<br>                                                                                                                                                           |[0x80002178]:addi a1, a0, 4052<br> [0x8000217c]:sd a1, 480(ra)<br>   |
| 337|[0x80006a90]<br>0x0000000000000030|- rs1_val==2 and imm_val==46<br>                                                                                                                                                            |[0x80002184]:addi a1, a0, 46<br> [0x80002188]:sd a1, 488(ra)<br>     |
| 338|[0x80006a98]<br>0x5555555555555557|- rs1_val==6148914691236517204 and imm_val==3<br>                                                                                                                                           |[0x800021ac]:addi a1, a0, 3<br> [0x800021b0]:sd a1, 496(ra)<br>      |
| 339|[0x80006aa0]<br>0x5555555555555AA9|- rs1_val==6148914691236517204 and imm_val==1365<br>                                                                                                                                        |[0x800021d4]:addi a1, a0, 1365<br> [0x800021d8]:sd a1, 504(ra)<br>   |
| 340|[0x80006aa8]<br>0x5555555555554FFE|- rs1_val==6148914691236517204 and imm_val==-1366<br>                                                                                                                                       |[0x800021fc]:addi a1, a0, 2730<br> [0x80002200]:sd a1, 512(ra)<br>   |
| 341|[0x80006ab0]<br>0x5555555555555559|- rs1_val==6148914691236517204 and imm_val==5<br>                                                                                                                                           |[0x80002224]:addi a1, a0, 5<br> [0x80002228]:sd a1, 520(ra)<br>      |
| 342|[0x80006ab8]<br>0x5555555555555887|- rs1_val==6148914691236517204 and imm_val==819<br>                                                                                                                                         |[0x8000224c]:addi a1, a0, 819<br> [0x80002250]:sd a1, 528(ra)<br>    |
| 343|[0x80006ac0]<br>0x5555555555555BBA|- rs1_val==6148914691236517204 and imm_val==1638<br>                                                                                                                                        |[0x80002274]:addi a1, a0, 1638<br> [0x80002278]:sd a1, 536(ra)<br>   |
| 344|[0x80006ac8]<br>0x5555555555555527|- rs1_val==6148914691236517204 and imm_val==-45<br>                                                                                                                                         |[0x8000229c]:addi a1, a0, 4051<br> [0x800022a0]:sd a1, 544(ra)<br>   |
| 345|[0x80006ad0]<br>0x5555555555555581|- rs1_val==6148914691236517204 and imm_val==45<br>                                                                                                                                          |[0x800022c4]:addi a1, a0, 45<br> [0x800022c8]:sd a1, 552(ra)<br>     |
| 346|[0x80006ad8]<br>0x5555555555555556|- rs1_val==6148914691236517204 and imm_val==2<br>                                                                                                                                           |[0x800022ec]:addi a1, a0, 2<br> [0x800022f0]:sd a1, 560(ra)<br>      |
| 347|[0x80006ae0]<br>0x5555555555555AA8|- rs1_val==6148914691236517204 and imm_val==1364<br>                                                                                                                                        |[0x80002314]:addi a1, a0, 1364<br> [0x80002318]:sd a1, 568(ra)<br>   |
| 348|[0x80006ae8]<br>0x5555555555555554|- rs1_val==6148914691236517204 and imm_val==0<br>                                                                                                                                           |[0x8000233c]:addi a1, a0, 0<br> [0x80002340]:sd a1, 576(ra)<br>      |
| 349|[0x80006af0]<br>0x5555555555555558|- rs1_val==6148914691236517204 and imm_val==4<br>                                                                                                                                           |[0x80002364]:addi a1, a0, 4<br> [0x80002368]:sd a1, 584(ra)<br>      |
| 350|[0x80006af8]<br>0x5555555555555886|- rs1_val==6148914691236517204 and imm_val==818<br>                                                                                                                                         |[0x8000238c]:addi a1, a0, 818<br> [0x80002390]:sd a1, 592(ra)<br>    |
| 351|[0x80006b00]<br>0x5555555555555BB9|- rs1_val==6148914691236517204 and imm_val==1637<br>                                                                                                                                        |[0x800023b4]:addi a1, a0, 1637<br> [0x800023b8]:sd a1, 600(ra)<br>   |
| 352|[0x80006b08]<br>0x5555555555555580|- rs1_val==6148914691236517204 and imm_val==44<br>                                                                                                                                          |[0x800023dc]:addi a1, a0, 44<br> [0x800023e0]:sd a1, 608(ra)<br>     |
| 353|[0x80006b10]<br>0x5555555555555AAA|- rs1_val==6148914691236517204 and imm_val==1366<br>                                                                                                                                        |[0x80002404]:addi a1, a0, 1366<br> [0x80002408]:sd a1, 616(ra)<br>   |
| 354|[0x80006b18]<br>0x5555555555554FFF|- rs1_val==6148914691236517204 and imm_val==-1365<br>                                                                                                                                       |[0x8000242c]:addi a1, a0, 2731<br> [0x80002430]:sd a1, 624(ra)<br>   |
| 355|[0x80006b20]<br>0x555555555555555A|- rs1_val==6148914691236517204 and imm_val==6<br>                                                                                                                                           |[0x80002454]:addi a1, a0, 6<br> [0x80002458]:sd a1, 632(ra)<br>      |
| 356|[0x80006b28]<br>0x5555555555555888|- rs1_val==6148914691236517204 and imm_val==820<br>                                                                                                                                         |[0x8000247c]:addi a1, a0, 820<br> [0x80002480]:sd a1, 640(ra)<br>    |
| 357|[0x80006b30]<br>0x5555555555555BBB|- rs1_val==6148914691236517204 and imm_val==1639<br>                                                                                                                                        |[0x800024a4]:addi a1, a0, 1639<br> [0x800024a8]:sd a1, 648(ra)<br>   |
| 358|[0x80006b38]<br>0x5555555555555528|- rs1_val==6148914691236517204 and imm_val==-44<br>                                                                                                                                         |[0x800024cc]:addi a1, a0, 4052<br> [0x800024d0]:sd a1, 656(ra)<br>   |
| 359|[0x80006b40]<br>0x5555555555555582|- rs1_val==6148914691236517204 and imm_val==46<br>                                                                                                                                          |[0x800024f4]:addi a1, a0, 46<br> [0x800024f8]:sd a1, 664(ra)<br>     |
| 360|[0x80006b50]<br>0x0000000000000555|- rs1_val==0 and imm_val==1365<br>                                                                                                                                                          |[0x8000250c]:addi a1, a0, 1365<br> [0x80002510]:sd a1, 680(ra)<br>   |
| 361|[0x80006b58]<br>0xFFFFFFFFFFFFFAAA|- rs1_val==0 and imm_val==-1366<br>                                                                                                                                                         |[0x80002518]:addi a1, a0, 2730<br> [0x8000251c]:sd a1, 688(ra)<br>   |
| 362|[0x80006b68]<br>0x0000000000000333|- rs1_val==0 and imm_val==819<br>                                                                                                                                                           |[0x80002530]:addi a1, a0, 819<br> [0x80002534]:sd a1, 704(ra)<br>    |
| 363|[0x80006b70]<br>0x0000000000000666|- rs1_val==0 and imm_val==1638<br>                                                                                                                                                          |[0x8000253c]:addi a1, a0, 1638<br> [0x80002540]:sd a1, 712(ra)<br>   |
| 364|[0x80006b78]<br>0xFFFFFFFFFFFFFFD3|- rs1_val==0 and imm_val==-45<br>                                                                                                                                                           |[0x80002548]:addi a1, a0, 4051<br> [0x8000254c]:sd a1, 720(ra)<br>   |
| 365|[0x80006b80]<br>0x5555555555555582|- rs1_val==6148914691236517206 and imm_val==44<br>                                                                                                                                          |[0x80002570]:addi a1, a0, 44<br> [0x80002574]:sd a1, 728(ra)<br>     |
| 366|[0x80006b88]<br>0x5555555555555AAC|- rs1_val==6148914691236517206 and imm_val==1366<br>                                                                                                                                        |[0x80002598]:addi a1, a0, 1366<br> [0x8000259c]:sd a1, 736(ra)<br>   |
| 367|[0x80006b90]<br>0x5555555555555001|- rs1_val==6148914691236517206 and imm_val==-1365<br>                                                                                                                                       |[0x800025c0]:addi a1, a0, 2731<br> [0x800025c4]:sd a1, 744(ra)<br>   |
| 368|[0x80006b98]<br>0x555555555555555C|- rs1_val==6148914691236517206 and imm_val==6<br>                                                                                                                                           |[0x800025e8]:addi a1, a0, 6<br> [0x800025ec]:sd a1, 752(ra)<br>      |
| 369|[0x80006ba0]<br>0x555555555555588A|- rs1_val==6148914691236517206 and imm_val==820<br>                                                                                                                                         |[0x80002610]:addi a1, a0, 820<br> [0x80002614]:sd a1, 760(ra)<br>    |
| 370|[0x80006ba8]<br>0x5555555555555BBD|- rs1_val==6148914691236517206 and imm_val==1639<br>                                                                                                                                        |[0x80002638]:addi a1, a0, 1639<br> [0x8000263c]:sd a1, 768(ra)<br>   |
| 371|[0x80006bb0]<br>0x555555555555552A|- rs1_val==6148914691236517206 and imm_val==-44<br>                                                                                                                                         |[0x80002660]:addi a1, a0, 4052<br> [0x80002664]:sd a1, 776(ra)<br>   |
| 372|[0x80006bb8]<br>0x5555555555555584|- rs1_val==6148914691236517206 and imm_val==46<br>                                                                                                                                          |[0x80002688]:addi a1, a0, 46<br> [0x8000268c]:sd a1, 784(ra)<br>     |
| 373|[0x80006bc0]<br>0xAAAAAAAAAAAAAAAE|- rs1_val==-6148914691236517205 and imm_val==3<br>                                                                                                                                          |[0x800026b0]:addi a1, a0, 3<br> [0x800026b4]:sd a1, 792(ra)<br>      |
| 374|[0x80006bc8]<br>0xAAAAAAAAAAAAB000|- rs1_val==-6148914691236517205 and imm_val==1365<br>                                                                                                                                       |[0x800026d8]:addi a1, a0, 1365<br> [0x800026dc]:sd a1, 800(ra)<br>   |
| 375|[0x80006bd0]<br>0xAAAAAAAAAAAAA555|- rs1_val==-6148914691236517205 and imm_val==-1366<br>                                                                                                                                      |[0x80002700]:addi a1, a0, 2730<br> [0x80002704]:sd a1, 808(ra)<br>   |
| 376|[0x80006bd8]<br>0xAAAAAAAAAAAAAAB0|- rs1_val==-6148914691236517205 and imm_val==5<br>                                                                                                                                          |[0x80002728]:addi a1, a0, 5<br> [0x8000272c]:sd a1, 816(ra)<br>      |
| 377|[0x80006be0]<br>0xAAAAAAAAAAAAADDE|- rs1_val==-6148914691236517205 and imm_val==819<br>                                                                                                                                        |[0x80002750]:addi a1, a0, 819<br> [0x80002754]:sd a1, 824(ra)<br>    |
| 378|[0x80006be8]<br>0xAAAAAAAAAAAAB111|- rs1_val==-6148914691236517205 and imm_val==1638<br>                                                                                                                                       |[0x80002778]:addi a1, a0, 1638<br> [0x8000277c]:sd a1, 832(ra)<br>   |
| 379|[0x80006bf0]<br>0xAAAAAAAAAAAAAA7E|- rs1_val==-6148914691236517205 and imm_val==-45<br>                                                                                                                                        |[0x800027a0]:addi a1, a0, 4051<br> [0x800027a4]:sd a1, 840(ra)<br>   |
| 380|[0x80006bf8]<br>0xAAAAAAAAAAAAAAD8|- rs1_val==-6148914691236517205 and imm_val==45<br>                                                                                                                                         |[0x800027c8]:addi a1, a0, 45<br> [0x800027cc]:sd a1, 848(ra)<br>     |
| 381|[0x80006c00]<br>0xAAAAAAAAAAAAAAAD|- rs1_val==-6148914691236517205 and imm_val==2<br>                                                                                                                                          |[0x800027f0]:addi a1, a0, 2<br> [0x800027f4]:sd a1, 856(ra)<br>      |
| 382|[0x80006c08]<br>0xAAAAAAAAAAAAAFFF|- rs1_val==-6148914691236517205 and imm_val==1364<br>                                                                                                                                       |[0x80002818]:addi a1, a0, 1364<br> [0x8000281c]:sd a1, 864(ra)<br>   |
| 383|[0x80006c10]<br>0xAAAAAAAAAAAAAAAB|- rs1_val==-6148914691236517205 and imm_val==0<br>                                                                                                                                          |[0x80002840]:addi a1, a0, 0<br> [0x80002844]:sd a1, 872(ra)<br>      |
| 384|[0x80006c18]<br>0xAAAAAAAAAAAAAAAF|- rs1_val==-6148914691236517205 and imm_val==4<br>                                                                                                                                          |[0x80002868]:addi a1, a0, 4<br> [0x8000286c]:sd a1, 880(ra)<br>      |
| 385|[0x80006c20]<br>0xAAAAAAAAAAAAADDD|- rs1_val==-6148914691236517205 and imm_val==818<br>                                                                                                                                        |[0x80002890]:addi a1, a0, 818<br> [0x80002894]:sd a1, 888(ra)<br>    |
| 386|[0x80006c28]<br>0xAAAAAAAAAAAAB110|- rs1_val==-6148914691236517205 and imm_val==1637<br>                                                                                                                                       |[0x800028b8]:addi a1, a0, 1637<br> [0x800028bc]:sd a1, 896(ra)<br>   |
| 387|[0x80006c30]<br>0xAAAAAAAAAAAAAAD7|- rs1_val==-6148914691236517205 and imm_val==44<br>                                                                                                                                         |[0x800028e0]:addi a1, a0, 44<br> [0x800028e4]:sd a1, 904(ra)<br>     |
| 388|[0x80006c38]<br>0xAAAAAAAAAAAAB001|- rs1_val==-6148914691236517205 and imm_val==1366<br>                                                                                                                                       |[0x80002908]:addi a1, a0, 1366<br> [0x8000290c]:sd a1, 912(ra)<br>   |
| 389|[0x80006c40]<br>0xAAAAAAAAAAAAA556|- rs1_val==-6148914691236517205 and imm_val==-1365<br>                                                                                                                                      |[0x80002930]:addi a1, a0, 2731<br> [0x80002934]:sd a1, 920(ra)<br>   |
| 390|[0x80006c48]<br>0xAAAAAAAAAAAAAAB1|- rs1_val==-6148914691236517205 and imm_val==6<br>                                                                                                                                          |[0x80002958]:addi a1, a0, 6<br> [0x8000295c]:sd a1, 928(ra)<br>      |
| 391|[0x80006c50]<br>0xAAAAAAAAAAAAADDF|- rs1_val==-6148914691236517205 and imm_val==820<br>                                                                                                                                        |[0x80002980]:addi a1, a0, 820<br> [0x80002984]:sd a1, 936(ra)<br>    |
| 392|[0x80006c58]<br>0xAAAAAAAAAAAAB112|- rs1_val==-6148914691236517205 and imm_val==1639<br>                                                                                                                                       |[0x800029a8]:addi a1, a0, 1639<br> [0x800029ac]:sd a1, 944(ra)<br>   |
| 393|[0x80006c60]<br>0xAAAAAAAAAAAAAA7F|- rs1_val==-6148914691236517205 and imm_val==-44<br>                                                                                                                                        |[0x800029d0]:addi a1, a0, 4052<br> [0x800029d4]:sd a1, 952(ra)<br>   |
| 394|[0x80006c68]<br>0xAAAAAAAAAAAAAAD9|- rs1_val==-6148914691236517205 and imm_val==46<br>                                                                                                                                         |[0x800029f8]:addi a1, a0, 46<br> [0x800029fc]:sd a1, 960(ra)<br>     |
| 395|[0x80006c70]<br>0x0000000000000009|- rs1_val==6 and imm_val==3<br>                                                                                                                                                             |[0x80002a04]:addi a1, a0, 3<br> [0x80002a08]:sd a1, 968(ra)<br>      |
| 396|[0x80006c78]<br>0x000000000000055B|- rs1_val==6 and imm_val==1365<br>                                                                                                                                                          |[0x80002a10]:addi a1, a0, 1365<br> [0x80002a14]:sd a1, 976(ra)<br>   |
| 397|[0x80006c80]<br>0xFFFFFFFFFFFFFAB0|- rs1_val==6 and imm_val==-1366<br>                                                                                                                                                         |[0x80002a1c]:addi a1, a0, 2730<br> [0x80002a20]:sd a1, 984(ra)<br>   |
| 398|[0x80006c88]<br>0x000000000000000B|- rs1_val==6 and imm_val==5<br>                                                                                                                                                             |[0x80002a28]:addi a1, a0, 5<br> [0x80002a2c]:sd a1, 992(ra)<br>      |
| 399|[0x80006c90]<br>0x0000000000000339|- rs1_val==6 and imm_val==819<br>                                                                                                                                                           |[0x80002a34]:addi a1, a0, 819<br> [0x80002a38]:sd a1, 1000(ra)<br>   |
| 400|[0x80006c98]<br>0x000000000000066C|- rs1_val==6 and imm_val==1638<br>                                                                                                                                                          |[0x80002a40]:addi a1, a0, 1638<br> [0x80002a44]:sd a1, 1008(ra)<br>  |
| 401|[0x80006ca0]<br>0xFFFFFFFFFFFFFFD9|- rs1_val==6 and imm_val==-45<br>                                                                                                                                                           |[0x80002a4c]:addi a1, a0, 4051<br> [0x80002a50]:sd a1, 1016(ra)<br>  |
| 402|[0x80006ca8]<br>0x0000000000000033|- rs1_val==6 and imm_val==45<br>                                                                                                                                                            |[0x80002a58]:addi a1, a0, 45<br> [0x80002a5c]:sd a1, 1024(ra)<br>    |
| 403|[0x80006cb0]<br>0x0000000000000008|- rs1_val==6 and imm_val==2<br>                                                                                                                                                             |[0x80002a64]:addi a1, a0, 2<br> [0x80002a68]:sd a1, 1032(ra)<br>     |
| 404|[0x80006cb8]<br>0x000000000000055A|- rs1_val==6 and imm_val==1364<br>                                                                                                                                                          |[0x80002a70]:addi a1, a0, 1364<br> [0x80002a74]:sd a1, 1040(ra)<br>  |
| 405|[0x80006cc0]<br>0x0000000000000006|- rs1_val==6 and imm_val==0<br>                                                                                                                                                             |[0x80002a7c]:addi a1, a0, 0<br> [0x80002a80]:sd a1, 1048(ra)<br>     |
| 406|[0x80006cc8]<br>0x000000000000000A|- rs1_val==6 and imm_val==4<br>                                                                                                                                                             |[0x80002a88]:addi a1, a0, 4<br> [0x80002a8c]:sd a1, 1056(ra)<br>     |
| 407|[0x80006cd0]<br>0x0000000000000338|- rs1_val==6 and imm_val==818<br>                                                                                                                                                           |[0x80002a94]:addi a1, a0, 818<br> [0x80002a98]:sd a1, 1064(ra)<br>   |
| 408|[0x80006cd8]<br>0x000000000000066B|- rs1_val==6 and imm_val==1637<br>                                                                                                                                                          |[0x80002aa0]:addi a1, a0, 1637<br> [0x80002aa4]:sd a1, 1072(ra)<br>  |
| 409|[0x80006ce0]<br>0x0000000000000032|- rs1_val==6 and imm_val==44<br>                                                                                                                                                            |[0x80002aac]:addi a1, a0, 44<br> [0x80002ab0]:sd a1, 1080(ra)<br>    |
| 410|[0x80006ce8]<br>0x000000000000055C|- rs1_val==6 and imm_val==1366<br>                                                                                                                                                          |[0x80002ab8]:addi a1, a0, 1366<br> [0x80002abc]:sd a1, 1088(ra)<br>  |
| 411|[0x80006cf0]<br>0xFFFFFFFFFFFFFAB1|- rs1_val==6 and imm_val==-1365<br>                                                                                                                                                         |[0x80002ac4]:addi a1, a0, 2731<br> [0x80002ac8]:sd a1, 1096(ra)<br>  |
| 412|[0x80006cf8]<br>0x000000000000000C|- rs1_val==6 and imm_val==6<br>                                                                                                                                                             |[0x80002ad0]:addi a1, a0, 6<br> [0x80002ad4]:sd a1, 1104(ra)<br>     |
| 413|[0x80006d00]<br>0x000000000000033A|- rs1_val==6 and imm_val==820<br>                                                                                                                                                           |[0x80002adc]:addi a1, a0, 820<br> [0x80002ae0]:sd a1, 1112(ra)<br>   |
| 414|[0x80006d08]<br>0x000000000000066D|- rs1_val==6 and imm_val==1639<br>                                                                                                                                                          |[0x80002ae8]:addi a1, a0, 1639<br> [0x80002aec]:sd a1, 1120(ra)<br>  |
| 415|[0x80006d10]<br>0xFFFFFFFFFFFFFFDA|- rs1_val==6 and imm_val==-44<br>                                                                                                                                                           |[0x80002af4]:addi a1, a0, 4052<br> [0x80002af8]:sd a1, 1128(ra)<br>  |
| 416|[0x80006d18]<br>0x0000000000000034|- rs1_val==6 and imm_val==46<br>                                                                                                                                                            |[0x80002b00]:addi a1, a0, 46<br> [0x80002b04]:sd a1, 1136(ra)<br>    |
| 417|[0x80006d20]<br>0x3333333333333337|- rs1_val==3689348814741910324 and imm_val==3<br>                                                                                                                                           |[0x80002b28]:addi a1, a0, 3<br> [0x80002b2c]:sd a1, 1144(ra)<br>     |
| 418|[0x80006d28]<br>0x3333333333333889|- rs1_val==3689348814741910324 and imm_val==1365<br>                                                                                                                                        |[0x80002b50]:addi a1, a0, 1365<br> [0x80002b54]:sd a1, 1152(ra)<br>  |
| 419|[0x80006d30]<br>0x3333333333332DDE|- rs1_val==3689348814741910324 and imm_val==-1366<br>                                                                                                                                       |[0x80002b78]:addi a1, a0, 2730<br> [0x80002b7c]:sd a1, 1160(ra)<br>  |
| 420|[0x80006d38]<br>0x3333333333333339|- rs1_val==3689348814741910324 and imm_val==5<br>                                                                                                                                           |[0x80002ba0]:addi a1, a0, 5<br> [0x80002ba4]:sd a1, 1168(ra)<br>     |
| 421|[0x80006d40]<br>0x3333333333333667|- rs1_val==3689348814741910324 and imm_val==819<br>                                                                                                                                         |[0x80002bc8]:addi a1, a0, 819<br> [0x80002bcc]:sd a1, 1176(ra)<br>   |
| 422|[0x80006d48]<br>0x333333333333399A|- rs1_val==3689348814741910324 and imm_val==1638<br>                                                                                                                                        |[0x80002bf0]:addi a1, a0, 1638<br> [0x80002bf4]:sd a1, 1184(ra)<br>  |
| 423|[0x80006d50]<br>0x3333333333333307|- rs1_val==3689348814741910324 and imm_val==-45<br>                                                                                                                                         |[0x80002c18]:addi a1, a0, 4051<br> [0x80002c1c]:sd a1, 1192(ra)<br>  |
| 424|[0x80006d58]<br>0x3333333333333361|- rs1_val==3689348814741910324 and imm_val==45<br>                                                                                                                                          |[0x80002c40]:addi a1, a0, 45<br> [0x80002c44]:sd a1, 1200(ra)<br>    |
| 425|[0x80006d60]<br>0x3333333333333336|- rs1_val==3689348814741910324 and imm_val==2<br>                                                                                                                                           |[0x80002c68]:addi a1, a0, 2<br> [0x80002c6c]:sd a1, 1208(ra)<br>     |
| 426|[0x80006d68]<br>0x3333333333333888|- rs1_val==3689348814741910324 and imm_val==1364<br>                                                                                                                                        |[0x80002c90]:addi a1, a0, 1364<br> [0x80002c94]:sd a1, 1216(ra)<br>  |
| 427|[0x80006d70]<br>0x3333333333333334|- rs1_val==3689348814741910324 and imm_val==0<br>                                                                                                                                           |[0x80002cb8]:addi a1, a0, 0<br> [0x80002cbc]:sd a1, 1224(ra)<br>     |
| 428|[0x80006d78]<br>0x3333333333333338|- rs1_val==3689348814741910324 and imm_val==4<br>                                                                                                                                           |[0x80002ce0]:addi a1, a0, 4<br> [0x80002ce4]:sd a1, 1232(ra)<br>     |
| 429|[0x80006d80]<br>0x3333333333333666|- rs1_val==3689348814741910324 and imm_val==818<br>                                                                                                                                         |[0x80002d08]:addi a1, a0, 818<br> [0x80002d0c]:sd a1, 1240(ra)<br>   |
| 430|[0x80006d88]<br>0x3333333333333999|- rs1_val==3689348814741910324 and imm_val==1637<br>                                                                                                                                        |[0x80002d30]:addi a1, a0, 1637<br> [0x80002d34]:sd a1, 1248(ra)<br>  |
| 431|[0x80006d90]<br>0x3333333333333360|- rs1_val==3689348814741910324 and imm_val==44<br>                                                                                                                                          |[0x80002d58]:addi a1, a0, 44<br> [0x80002d5c]:sd a1, 1256(ra)<br>    |
| 432|[0x80006d98]<br>0x333333333333388A|- rs1_val==3689348814741910324 and imm_val==1366<br>                                                                                                                                        |[0x80002d80]:addi a1, a0, 1366<br> [0x80002d84]:sd a1, 1264(ra)<br>  |
| 433|[0x80006da0]<br>0x3333333333332DDF|- rs1_val==3689348814741910324 and imm_val==-1365<br>                                                                                                                                       |[0x80002da8]:addi a1, a0, 2731<br> [0x80002dac]:sd a1, 1272(ra)<br>  |
| 434|[0x80006da8]<br>0x333333333333333A|- rs1_val==3689348814741910324 and imm_val==6<br>                                                                                                                                           |[0x80002dd0]:addi a1, a0, 6<br> [0x80002dd4]:sd a1, 1280(ra)<br>     |
| 435|[0x80006db0]<br>0x3333333333333668|- rs1_val==3689348814741910324 and imm_val==820<br>                                                                                                                                         |[0x80002df8]:addi a1, a0, 820<br> [0x80002dfc]:sd a1, 1288(ra)<br>   |
| 436|[0x80006db8]<br>0x333333333333399B|- rs1_val==3689348814741910324 and imm_val==1639<br>                                                                                                                                        |[0x80002e20]:addi a1, a0, 1639<br> [0x80002e24]:sd a1, 1296(ra)<br>  |
| 437|[0x80006dc0]<br>0x3333333333333308|- rs1_val==3689348814741910324 and imm_val==-44<br>                                                                                                                                         |[0x80002e48]:addi a1, a0, 4052<br> [0x80002e4c]:sd a1, 1304(ra)<br>  |
| 438|[0x80006dc8]<br>0x3333333333333362|- rs1_val==3689348814741910324 and imm_val==46<br>                                                                                                                                          |[0x80002e70]:addi a1, a0, 46<br> [0x80002e74]:sd a1, 1312(ra)<br>    |
| 439|[0x80006dd0]<br>0x666666666666666A|- rs1_val==7378697629483820647 and imm_val==3<br>                                                                                                                                           |[0x80002e98]:addi a1, a0, 3<br> [0x80002e9c]:sd a1, 1320(ra)<br>     |
| 440|[0x80006dd8]<br>0x6666666666666BBC|- rs1_val==7378697629483820647 and imm_val==1365<br>                                                                                                                                        |[0x80002ec0]:addi a1, a0, 1365<br> [0x80002ec4]:sd a1, 1328(ra)<br>  |
| 441|[0x80006de0]<br>0x6666666666666111|- rs1_val==7378697629483820647 and imm_val==-1366<br>                                                                                                                                       |[0x80002ee8]:addi a1, a0, 2730<br> [0x80002eec]:sd a1, 1336(ra)<br>  |
| 442|[0x80006de8]<br>0x666666666666666C|- rs1_val==7378697629483820647 and imm_val==5<br>                                                                                                                                           |[0x80002f10]:addi a1, a0, 5<br> [0x80002f14]:sd a1, 1344(ra)<br>     |
| 443|[0x80006df0]<br>0x666666666666699A|- rs1_val==7378697629483820647 and imm_val==819<br>                                                                                                                                         |[0x80002f38]:addi a1, a0, 819<br> [0x80002f3c]:sd a1, 1352(ra)<br>   |
| 444|[0x80006df8]<br>0x6666666666666CCD|- rs1_val==7378697629483820647 and imm_val==1638<br>                                                                                                                                        |[0x80002f60]:addi a1, a0, 1638<br> [0x80002f64]:sd a1, 1360(ra)<br>  |
| 445|[0x80006e00]<br>0x666666666666663A|- rs1_val==7378697629483820647 and imm_val==-45<br>                                                                                                                                         |[0x80002f88]:addi a1, a0, 4051<br> [0x80002f8c]:sd a1, 1368(ra)<br>  |
| 446|[0x80006e08]<br>0x6666666666666694|- rs1_val==7378697629483820647 and imm_val==45<br>                                                                                                                                          |[0x80002fb0]:addi a1, a0, 45<br> [0x80002fb4]:sd a1, 1376(ra)<br>    |
| 447|[0x80006e10]<br>0x6666666666666669|- rs1_val==7378697629483820647 and imm_val==2<br>                                                                                                                                           |[0x80002fd8]:addi a1, a0, 2<br> [0x80002fdc]:sd a1, 1384(ra)<br>     |
| 448|[0x80006e18]<br>0x6666666666666BBB|- rs1_val==7378697629483820647 and imm_val==1364<br>                                                                                                                                        |[0x80003000]:addi a1, a0, 1364<br> [0x80003004]:sd a1, 1392(ra)<br>  |
| 449|[0x80006e20]<br>0x6666666666666667|- rs1_val==7378697629483820647 and imm_val==0<br>                                                                                                                                           |[0x80003028]:addi a1, a0, 0<br> [0x8000302c]:sd a1, 1400(ra)<br>     |
| 450|[0x80006e28]<br>0x666666666666666B|- rs1_val==7378697629483820647 and imm_val==4<br>                                                                                                                                           |[0x80003050]:addi a1, a0, 4<br> [0x80003054]:sd a1, 1408(ra)<br>     |
| 451|[0x80006e30]<br>0x6666666666666999|- rs1_val==7378697629483820647 and imm_val==818<br>                                                                                                                                         |[0x80003078]:addi a1, a0, 818<br> [0x8000307c]:sd a1, 1416(ra)<br>   |
| 452|[0x80006e38]<br>0x6666666666666CCC|- rs1_val==7378697629483820647 and imm_val==1637<br>                                                                                                                                        |[0x800030a0]:addi a1, a0, 1637<br> [0x800030a4]:sd a1, 1424(ra)<br>  |
| 453|[0x80006e40]<br>0x6666666666666693|- rs1_val==7378697629483820647 and imm_val==44<br>                                                                                                                                          |[0x800030c8]:addi a1, a0, 44<br> [0x800030cc]:sd a1, 1432(ra)<br>    |
| 454|[0x80006e48]<br>0x6666666666666BBD|- rs1_val==7378697629483820647 and imm_val==1366<br>                                                                                                                                        |[0x800030f0]:addi a1, a0, 1366<br> [0x800030f4]:sd a1, 1440(ra)<br>  |
| 455|[0x80006e50]<br>0x6666666666666112|- rs1_val==7378697629483820647 and imm_val==-1365<br>                                                                                                                                       |[0x80003118]:addi a1, a0, 2731<br> [0x8000311c]:sd a1, 1448(ra)<br>  |
| 456|[0x80006e58]<br>0x666666666666666D|- rs1_val==7378697629483820647 and imm_val==6<br>                                                                                                                                           |[0x80003140]:addi a1, a0, 6<br> [0x80003144]:sd a1, 1456(ra)<br>     |
| 457|[0x80006e60]<br>0x666666666666699B|- rs1_val==7378697629483820647 and imm_val==820<br>                                                                                                                                         |[0x80003168]:addi a1, a0, 820<br> [0x8000316c]:sd a1, 1464(ra)<br>   |
| 458|[0x80006e68]<br>0x6666666666666CCE|- rs1_val==7378697629483820647 and imm_val==1639<br>                                                                                                                                        |[0x80003190]:addi a1, a0, 1639<br> [0x80003194]:sd a1, 1472(ra)<br>  |
| 459|[0x80006e70]<br>0x666666666666663B|- rs1_val==7378697629483820647 and imm_val==-44<br>                                                                                                                                         |[0x800031b8]:addi a1, a0, 4052<br> [0x800031bc]:sd a1, 1480(ra)<br>  |
| 460|[0x80006e78]<br>0x6666666666666695|- rs1_val==7378697629483820647 and imm_val==46<br>                                                                                                                                          |[0x800031e0]:addi a1, a0, 46<br> [0x800031e4]:sd a1, 1488(ra)<br>    |
| 461|[0x80006e80]<br>0xFFFFFFFF4AFB0CD1|- rs1_val==-3037000498 and imm_val==3<br>                                                                                                                                                   |[0x800031f8]:addi a1, a0, 3<br> [0x800031fc]:sd a1, 1496(ra)<br>     |
| 462|[0x80006e88]<br>0xFFFFFFFF4AFB1223|- rs1_val==-3037000498 and imm_val==1365<br>                                                                                                                                                |[0x80003210]:addi a1, a0, 1365<br> [0x80003214]:sd a1, 1504(ra)<br>  |
| 463|[0x80006e90]<br>0xFFFFFFFF4AFB0778|- rs1_val==-3037000498 and imm_val==-1366<br>                                                                                                                                               |[0x80003228]:addi a1, a0, 2730<br> [0x8000322c]:sd a1, 1512(ra)<br>  |
| 464|[0x80006e98]<br>0xFFFFFFFF4AFB0CD3|- rs1_val==-3037000498 and imm_val==5<br>                                                                                                                                                   |[0x80003240]:addi a1, a0, 5<br> [0x80003244]:sd a1, 1520(ra)<br>     |
| 465|[0x80006ea0]<br>0xFFFFFFFF4AFB1001|- rs1_val==-3037000498 and imm_val==819<br>                                                                                                                                                 |[0x80003258]:addi a1, a0, 819<br> [0x8000325c]:sd a1, 1528(ra)<br>   |
| 466|[0x80006ea8]<br>0xFFFFFFFF4AFB1334|- rs1_val==-3037000498 and imm_val==1638<br>                                                                                                                                                |[0x80003270]:addi a1, a0, 1638<br> [0x80003274]:sd a1, 1536(ra)<br>  |
| 467|[0x80006eb0]<br>0xFFFFFFFF4AFB0CA1|- rs1_val==-3037000498 and imm_val==-45<br>                                                                                                                                                 |[0x80003288]:addi a1, a0, 4051<br> [0x8000328c]:sd a1, 1544(ra)<br>  |
| 468|[0x80006eb8]<br>0xFFFFFFFF4AFB0CFB|- rs1_val==-3037000498 and imm_val==45<br>                                                                                                                                                  |[0x800032a0]:addi a1, a0, 45<br> [0x800032a4]:sd a1, 1552(ra)<br>    |
| 469|[0x80006ec0]<br>0xFFFFFFFF4AFB0CD0|- rs1_val==-3037000498 and imm_val==2<br>                                                                                                                                                   |[0x800032b8]:addi a1, a0, 2<br> [0x800032bc]:sd a1, 1560(ra)<br>     |
| 470|[0x80006ec8]<br>0xFFFFFFFF4AFB1222|- rs1_val==-3037000498 and imm_val==1364<br>                                                                                                                                                |[0x800032d0]:addi a1, a0, 1364<br> [0x800032d4]:sd a1, 1568(ra)<br>  |
| 471|[0x80006ed0]<br>0xFFFFFFFF4AFB0CCE|- rs1_val==-3037000498 and imm_val==0<br>                                                                                                                                                   |[0x800032e8]:addi a1, a0, 0<br> [0x800032ec]:sd a1, 1576(ra)<br>     |
| 472|[0x80006ed8]<br>0xFFFFFFFF4AFB0CD2|- rs1_val==-3037000498 and imm_val==4<br>                                                                                                                                                   |[0x80003300]:addi a1, a0, 4<br> [0x80003304]:sd a1, 1584(ra)<br>     |
| 473|[0x80006ee0]<br>0xFFFFFFFF4AFB1000|- rs1_val==-3037000498 and imm_val==818<br>                                                                                                                                                 |[0x80003318]:addi a1, a0, 818<br> [0x8000331c]:sd a1, 1592(ra)<br>   |
| 474|[0x80006ee8]<br>0xFFFFFFFF4AFB1333|- rs1_val==-3037000498 and imm_val==1637<br>                                                                                                                                                |[0x80003330]:addi a1, a0, 1637<br> [0x80003334]:sd a1, 1600(ra)<br>  |
| 475|[0x80006ef0]<br>0xFFFFFFFF4AFB0CFA|- rs1_val==-3037000498 and imm_val==44<br>                                                                                                                                                  |[0x80003348]:addi a1, a0, 44<br> [0x8000334c]:sd a1, 1608(ra)<br>    |
| 476|[0x80006ef8]<br>0xFFFFFFFF4AFB1224|- rs1_val==-3037000498 and imm_val==1366<br>                                                                                                                                                |[0x80003360]:addi a1, a0, 1366<br> [0x80003364]:sd a1, 1616(ra)<br>  |
| 477|[0x80006f00]<br>0xFFFFFFFF4AFB0779|- rs1_val==-3037000498 and imm_val==-1365<br>                                                                                                                                               |[0x80003378]:addi a1, a0, 2731<br> [0x8000337c]:sd a1, 1624(ra)<br>  |
| 478|[0x80006f08]<br>0xFFFFFFFF4AFB0CD4|- rs1_val==-3037000498 and imm_val==6<br>                                                                                                                                                   |[0x80003390]:addi a1, a0, 6<br> [0x80003394]:sd a1, 1632(ra)<br>     |
| 479|[0x80006f10]<br>0xFFFFFFFF4AFB1002|- rs1_val==-3037000498 and imm_val==820<br>                                                                                                                                                 |[0x800033a8]:addi a1, a0, 820<br> [0x800033ac]:sd a1, 1640(ra)<br>   |
| 480|[0x80006f18]<br>0xFFFFFFFF4AFB1335|- rs1_val==-3037000498 and imm_val==1639<br>                                                                                                                                                |[0x800033c0]:addi a1, a0, 1639<br> [0x800033c4]:sd a1, 1648(ra)<br>  |
| 481|[0x80006f20]<br>0xFFFFFFFF4AFB0CA2|- rs1_val==-3037000498 and imm_val==-44<br>                                                                                                                                                 |[0x800033d8]:addi a1, a0, 4052<br> [0x800033dc]:sd a1, 1656(ra)<br>  |
| 482|[0x80006f28]<br>0xFFFFFFFF4AFB0CFC|- rs1_val==-3037000498 and imm_val==46<br>                                                                                                                                                  |[0x800033f0]:addi a1, a0, 46<br> [0x800033f4]:sd a1, 1664(ra)<br>    |
| 483|[0x80006f30]<br>0x00000000B504F337|- rs1_val==3037000500 and imm_val==3<br>                                                                                                                                                    |[0x80003408]:addi a1, a0, 3<br> [0x8000340c]:sd a1, 1672(ra)<br>     |
| 484|[0x80006f38]<br>0x00000000B504F889|- rs1_val==3037000500 and imm_val==1365<br>                                                                                                                                                 |[0x80003420]:addi a1, a0, 1365<br> [0x80003424]:sd a1, 1680(ra)<br>  |
| 485|[0x80006f40]<br>0x00000000B504EDDE|- rs1_val==3037000500 and imm_val==-1366<br>                                                                                                                                                |[0x80003438]:addi a1, a0, 2730<br> [0x8000343c]:sd a1, 1688(ra)<br>  |
| 486|[0x80006f48]<br>0x00000000B504F339|- rs1_val==3037000500 and imm_val==5<br>                                                                                                                                                    |[0x80003450]:addi a1, a0, 5<br> [0x80003454]:sd a1, 1696(ra)<br>     |
| 487|[0x80006f50]<br>0x00000000B504F667|- rs1_val==3037000500 and imm_val==819<br>                                                                                                                                                  |[0x80003468]:addi a1, a0, 819<br> [0x8000346c]:sd a1, 1704(ra)<br>   |
| 488|[0x80006f58]<br>0x00000000B504F99A|- rs1_val==3037000500 and imm_val==1638<br>                                                                                                                                                 |[0x80003480]:addi a1, a0, 1638<br> [0x80003484]:sd a1, 1712(ra)<br>  |
| 489|[0x80006f60]<br>0x00000000B504F307|- rs1_val==3037000500 and imm_val==-45<br>                                                                                                                                                  |[0x80003498]:addi a1, a0, 4051<br> [0x8000349c]:sd a1, 1720(ra)<br>  |
| 490|[0x80006f68]<br>0x00000000B504F361|- rs1_val==3037000500 and imm_val==45<br>                                                                                                                                                   |[0x800034b0]:addi a1, a0, 45<br> [0x800034b4]:sd a1, 1728(ra)<br>    |
| 491|[0x80006f70]<br>0x00000000B504F336|- rs1_val==3037000500 and imm_val==2<br>                                                                                                                                                    |[0x800034c8]:addi a1, a0, 2<br> [0x800034cc]:sd a1, 1736(ra)<br>     |
| 492|[0x80006f78]<br>0x00000000B504F888|- rs1_val==3037000500 and imm_val==1364<br>                                                                                                                                                 |[0x800034e0]:addi a1, a0, 1364<br> [0x800034e4]:sd a1, 1744(ra)<br>  |
| 493|[0x80006f80]<br>0x00000000B504F334|- rs1_val==3037000500 and imm_val==0<br>                                                                                                                                                    |[0x800034f8]:addi a1, a0, 0<br> [0x800034fc]:sd a1, 1752(ra)<br>     |
| 494|[0x80006f88]<br>0x00000000B504F338|- rs1_val==3037000500 and imm_val==4<br>                                                                                                                                                    |[0x80003510]:addi a1, a0, 4<br> [0x80003514]:sd a1, 1760(ra)<br>     |
| 495|[0x80006f90]<br>0x00000000B504F666|- rs1_val==3037000500 and imm_val==818<br>                                                                                                                                                  |[0x80003528]:addi a1, a0, 818<br> [0x8000352c]:sd a1, 1768(ra)<br>   |
| 496|[0x80006f98]<br>0x00000000B504F999|- rs1_val==3037000500 and imm_val==1637<br>                                                                                                                                                 |[0x80003540]:addi a1, a0, 1637<br> [0x80003544]:sd a1, 1776(ra)<br>  |
| 497|[0x80006fa0]<br>0x00000000B504F360|- rs1_val==3037000500 and imm_val==44<br>                                                                                                                                                   |[0x80003558]:addi a1, a0, 44<br> [0x8000355c]:sd a1, 1784(ra)<br>    |
| 498|[0x80006fa8]<br>0x00000000B504F88A|- rs1_val==3037000500 and imm_val==1366<br>                                                                                                                                                 |[0x80003570]:addi a1, a0, 1366<br> [0x80003574]:sd a1, 1792(ra)<br>  |
| 499|[0x80006fb0]<br>0x00000000B504EDDF|- rs1_val==3037000500 and imm_val==-1365<br>                                                                                                                                                |[0x80003588]:addi a1, a0, 2731<br> [0x8000358c]:sd a1, 1800(ra)<br>  |
| 500|[0x80006fb8]<br>0x00000000B504F33A|- rs1_val==3037000500 and imm_val==6<br>                                                                                                                                                    |[0x800035a0]:addi a1, a0, 6<br> [0x800035a4]:sd a1, 1808(ra)<br>     |
| 501|[0x80006fc0]<br>0x00000000B504F668|- rs1_val==3037000500 and imm_val==820<br>                                                                                                                                                  |[0x800035b8]:addi a1, a0, 820<br> [0x800035bc]:sd a1, 1816(ra)<br>   |
| 502|[0x80006fc8]<br>0x00000000B504F99B|- rs1_val==3037000500 and imm_val==1639<br>                                                                                                                                                 |[0x800035d0]:addi a1, a0, 1639<br> [0x800035d4]:sd a1, 1824(ra)<br>  |
| 503|[0x80006fd0]<br>0x00000000B504F308|- rs1_val==3037000500 and imm_val==-44<br>                                                                                                                                                  |[0x800035e8]:addi a1, a0, 4052<br> [0x800035ec]:sd a1, 1832(ra)<br>  |
| 504|[0x80006fd8]<br>0x00000000B504F362|- rs1_val==3037000500 and imm_val==46<br>                                                                                                                                                   |[0x80003600]:addi a1, a0, 46<br> [0x80003604]:sd a1, 1840(ra)<br>    |
| 505|[0x80006fe0]<br>0x000000000000002D|- rs1_val==0 and imm_val==45<br>                                                                                                                                                            |[0x8000360c]:addi a1, a0, 45<br> [0x80003610]:sd a1, 1848(ra)<br>    |
| 506|[0x80006ff0]<br>0x0000000000000554|- rs1_val==0 and imm_val==1364<br>                                                                                                                                                          |[0x80003624]:addi a1, a0, 1364<br> [0x80003628]:sd a1, 1864(ra)<br>  |
| 507|[0x80007008]<br>0x0000000000000332|- rs1_val==0 and imm_val==818<br>                                                                                                                                                           |[0x80003648]:addi a1, a0, 818<br> [0x8000364c]:sd a1, 1888(ra)<br>   |
| 508|[0x80007010]<br>0x0000000000000665|- rs1_val==0 and imm_val==1637<br>                                                                                                                                                          |[0x80003654]:addi a1, a0, 1637<br> [0x80003658]:sd a1, 1896(ra)<br>  |
| 509|[0x80007018]<br>0x000000000000002C|- rs1_val==0 and imm_val==44<br>                                                                                                                                                            |[0x80003660]:addi a1, a0, 44<br> [0x80003664]:sd a1, 1904(ra)<br>    |
| 510|[0x80007020]<br>0xFFFFFFFFFFFFFAAB|- rs1_val==0 and imm_val==-1365<br>                                                                                                                                                         |[0x8000366c]:addi a1, a0, 2731<br> [0x80003670]:sd a1, 1912(ra)<br>  |
| 511|[0x80007030]<br>0x0000000000000334|- rs1_val==0 and imm_val==820<br>                                                                                                                                                           |[0x80003684]:addi a1, a0, 820<br> [0x80003688]:sd a1, 1928(ra)<br>   |
| 512|[0x80007038]<br>0x0000000000000667|- rs1_val==0 and imm_val==1639<br>                                                                                                                                                          |[0x80003690]:addi a1, a0, 1639<br> [0x80003694]:sd a1, 1936(ra)<br>  |
| 513|[0x80007040]<br>0xFFFFFFFFFFFFFFD4|- rs1_val==0 and imm_val==-44<br>                                                                                                                                                           |[0x8000369c]:addi a1, a0, 4052<br> [0x800036a0]:sd a1, 1944(ra)<br>  |
| 514|[0x80007048]<br>0x000000000000002E|- rs1_val==0 and imm_val==46<br>                                                                                                                                                            |[0x800036a8]:addi a1, a0, 46<br> [0x800036ac]:sd a1, 1952(ra)<br>    |
| 515|[0x80007050]<br>0x0000000000000007|- rs1_val==4 and imm_val==3<br>                                                                                                                                                             |[0x800036b4]:addi a1, a0, 3<br> [0x800036b8]:sd a1, 1960(ra)<br>     |
| 516|[0x80007058]<br>0x0000000000000559|- rs1_val==4 and imm_val==1365<br>                                                                                                                                                          |[0x800036c0]:addi a1, a0, 1365<br> [0x800036c4]:sd a1, 1968(ra)<br>  |
| 517|[0x80007060]<br>0x0000000000000009|- rs1_val==4 and imm_val==5<br>                                                                                                                                                             |[0x800036cc]:addi a1, a0, 5<br> [0x800036d0]:sd a1, 1976(ra)<br>     |
| 518|[0x80007068]<br>0x0000000000000337|- rs1_val==4 and imm_val==819<br>                                                                                                                                                           |[0x800036d8]:addi a1, a0, 819<br> [0x800036dc]:sd a1, 1984(ra)<br>   |
| 519|[0x80007070]<br>0x000000000000066A|- rs1_val==4 and imm_val==1638<br>                                                                                                                                                          |[0x800036e4]:addi a1, a0, 1638<br> [0x800036e8]:sd a1, 1992(ra)<br>  |
| 520|[0x80007078]<br>0xFFFFFFFFFFFFFFD7|- rs1_val==4 and imm_val==-45<br>                                                                                                                                                           |[0x800036f0]:addi a1, a0, 4051<br> [0x800036f4]:sd a1, 2000(ra)<br>  |
| 521|[0x80007080]<br>0x0000000000000031|- rs1_val==4 and imm_val==45<br>                                                                                                                                                            |[0x800036fc]:addi a1, a0, 45<br> [0x80003700]:sd a1, 2008(ra)<br>    |
| 522|[0x80007088]<br>0x0000000000000006|- rs1_val==4 and imm_val==2<br>                                                                                                                                                             |[0x80003708]:addi a1, a0, 2<br> [0x8000370c]:sd a1, 2016(ra)<br>     |
| 523|[0x80007090]<br>0x0000000000000558|- rs1_val==4 and imm_val==1364<br>                                                                                                                                                          |[0x80003714]:addi a1, a0, 1364<br> [0x80003718]:sd a1, 2024(ra)<br>  |
| 524|[0x80007098]<br>0x0000000000000004|- rs1_val==4 and imm_val==0<br>                                                                                                                                                             |[0x80003720]:addi a1, a0, 0<br> [0x80003724]:sd a1, 2032(ra)<br>     |
| 525|[0x800070a0]<br>0x0000000000000008|- rs1_val==4 and imm_val==4<br>                                                                                                                                                             |[0x8000372c]:addi a1, a0, 4<br> [0x80003730]:sd a1, 2040(ra)<br>     |
| 526|[0x800070a8]<br>0x0000000000000336|- rs1_val==4 and imm_val==818<br>                                                                                                                                                           |[0x80003740]:addi a1, a0, 818<br> [0x80003744]:sd a1, 0(ra)<br>      |
| 527|[0x800070b0]<br>0x0000000000000669|- rs1_val==4 and imm_val==1637<br>                                                                                                                                                          |[0x8000374c]:addi a1, a0, 1637<br> [0x80003750]:sd a1, 8(ra)<br>     |
| 528|[0x800070b8]<br>0x0000000000000030|- rs1_val==4 and imm_val==44<br>                                                                                                                                                            |[0x80003758]:addi a1, a0, 44<br> [0x8000375c]:sd a1, 16(ra)<br>      |
| 529|[0x800070c0]<br>0x000000000000055A|- rs1_val==4 and imm_val==1366<br>                                                                                                                                                          |[0x80003764]:addi a1, a0, 1366<br> [0x80003768]:sd a1, 24(ra)<br>    |
| 530|[0x800070c8]<br>0xFFFFFFFFFFFFFAAF|- rs1_val==4 and imm_val==-1365<br>                                                                                                                                                         |[0x80003770]:addi a1, a0, 2731<br> [0x80003774]:sd a1, 32(ra)<br>    |
| 531|[0x800070d0]<br>0x000000000000000A|- rs1_val==4 and imm_val==6<br>                                                                                                                                                             |[0x8000377c]:addi a1, a0, 6<br> [0x80003780]:sd a1, 40(ra)<br>       |
| 532|[0x800070d8]<br>0x0000000000000338|- rs1_val==4 and imm_val==820<br>                                                                                                                                                           |[0x80003788]:addi a1, a0, 820<br> [0x8000378c]:sd a1, 48(ra)<br>     |
| 533|[0x800070e0]<br>0x000000000000066B|- rs1_val==4 and imm_val==1639<br>                                                                                                                                                          |[0x80003794]:addi a1, a0, 1639<br> [0x80003798]:sd a1, 56(ra)<br>    |
| 534|[0x800070e8]<br>0xFFFFFFFFFFFFFFD8|- rs1_val==4 and imm_val==-44<br>                                                                                                                                                           |[0x800037a0]:addi a1, a0, 4052<br> [0x800037a4]:sd a1, 64(ra)<br>    |
| 535|[0x800070f0]<br>0x0000000000000032|- rs1_val==4 and imm_val==46<br>                                                                                                                                                            |[0x800037ac]:addi a1, a0, 46<br> [0x800037b0]:sd a1, 72(ra)<br>      |
| 536|[0x800070f8]<br>0x3333333333333335|- rs1_val==3689348814741910322 and imm_val==3<br>                                                                                                                                           |[0x800037d4]:addi a1, a0, 3<br> [0x800037d8]:sd a1, 80(ra)<br>       |
| 537|[0x80007100]<br>0x3333333333333887|- rs1_val==3689348814741910322 and imm_val==1365<br>                                                                                                                                        |[0x800037fc]:addi a1, a0, 1365<br> [0x80003800]:sd a1, 88(ra)<br>    |
| 538|[0x80007108]<br>0x3333333333332DDC|- rs1_val==3689348814741910322 and imm_val==-1366<br>                                                                                                                                       |[0x80003824]:addi a1, a0, 2730<br> [0x80003828]:sd a1, 96(ra)<br>    |
| 539|[0x80007110]<br>0x3333333333333337|- rs1_val==3689348814741910322 and imm_val==5<br>                                                                                                                                           |[0x8000384c]:addi a1, a0, 5<br> [0x80003850]:sd a1, 104(ra)<br>      |
| 540|[0x80007118]<br>0x3333333333333665|- rs1_val==3689348814741910322 and imm_val==819<br>                                                                                                                                         |[0x80003874]:addi a1, a0, 819<br> [0x80003878]:sd a1, 112(ra)<br>    |
| 541|[0x80007120]<br>0x3333333333333998|- rs1_val==3689348814741910322 and imm_val==1638<br>                                                                                                                                        |[0x8000389c]:addi a1, a0, 1638<br> [0x800038a0]:sd a1, 120(ra)<br>   |
| 542|[0x80007128]<br>0x3333333333333305|- rs1_val==3689348814741910322 and imm_val==-45<br>                                                                                                                                         |[0x800038c4]:addi a1, a0, 4051<br> [0x800038c8]:sd a1, 128(ra)<br>   |
| 543|[0x80007130]<br>0x333333333333335F|- rs1_val==3689348814741910322 and imm_val==45<br>                                                                                                                                          |[0x800038ec]:addi a1, a0, 45<br> [0x800038f0]:sd a1, 136(ra)<br>     |
| 544|[0x80007138]<br>0x3333333333333334|- rs1_val==3689348814741910322 and imm_val==2<br>                                                                                                                                           |[0x80003914]:addi a1, a0, 2<br> [0x80003918]:sd a1, 144(ra)<br>      |
| 545|[0x80007140]<br>0x3333333333333886|- rs1_val==3689348814741910322 and imm_val==1364<br>                                                                                                                                        |[0x8000393c]:addi a1, a0, 1364<br> [0x80003940]:sd a1, 152(ra)<br>   |
| 546|[0x80007148]<br>0x3333333333333332|- rs1_val==3689348814741910322 and imm_val==0<br>                                                                                                                                           |[0x80003964]:addi a1, a0, 0<br> [0x80003968]:sd a1, 160(ra)<br>      |
| 547|[0x80007150]<br>0x3333333333333336|- rs1_val==3689348814741910322 and imm_val==4<br>                                                                                                                                           |[0x8000398c]:addi a1, a0, 4<br> [0x80003990]:sd a1, 168(ra)<br>      |
| 548|[0x80007158]<br>0x3333333333333664|- rs1_val==3689348814741910322 and imm_val==818<br>                                                                                                                                         |[0x800039b4]:addi a1, a0, 818<br> [0x800039b8]:sd a1, 176(ra)<br>    |
| 549|[0x80007160]<br>0x3333333333333997|- rs1_val==3689348814741910322 and imm_val==1637<br>                                                                                                                                        |[0x800039dc]:addi a1, a0, 1637<br> [0x800039e0]:sd a1, 184(ra)<br>   |
| 550|[0x80007168]<br>0x333333333333335E|- rs1_val==3689348814741910322 and imm_val==44<br>                                                                                                                                          |[0x80003a04]:addi a1, a0, 44<br> [0x80003a08]:sd a1, 192(ra)<br>     |
| 551|[0x80007170]<br>0x3333333333333888|- rs1_val==3689348814741910322 and imm_val==1366<br>                                                                                                                                        |[0x80003a2c]:addi a1, a0, 1366<br> [0x80003a30]:sd a1, 200(ra)<br>   |
| 552|[0x80007178]<br>0x3333333333332DDD|- rs1_val==3689348814741910322 and imm_val==-1365<br>                                                                                                                                       |[0x80003a54]:addi a1, a0, 2731<br> [0x80003a58]:sd a1, 208(ra)<br>   |
| 553|[0x80007180]<br>0x3333333333333338|- rs1_val==3689348814741910322 and imm_val==6<br>                                                                                                                                           |[0x80003a7c]:addi a1, a0, 6<br> [0x80003a80]:sd a1, 216(ra)<br>      |
| 554|[0x80007188]<br>0x3333333333333666|- rs1_val==3689348814741910322 and imm_val==820<br>                                                                                                                                         |[0x80003aa4]:addi a1, a0, 820<br> [0x80003aa8]:sd a1, 224(ra)<br>    |
| 555|[0x80007190]<br>0x3333333333333999|- rs1_val==3689348814741910322 and imm_val==1639<br>                                                                                                                                        |[0x80003acc]:addi a1, a0, 1639<br> [0x80003ad0]:sd a1, 232(ra)<br>   |
| 556|[0x80007198]<br>0x3333333333333306|- rs1_val==3689348814741910322 and imm_val==-44<br>                                                                                                                                         |[0x80003af4]:addi a1, a0, 4052<br> [0x80003af8]:sd a1, 240(ra)<br>   |
| 557|[0x800071a0]<br>0x3333333333333360|- rs1_val==3689348814741910322 and imm_val==46<br>                                                                                                                                          |[0x80003b1c]:addi a1, a0, 46<br> [0x80003b20]:sd a1, 248(ra)<br>     |
| 558|[0x800071a8]<br>0x6666666666666668|- rs1_val==7378697629483820645 and imm_val==3<br>                                                                                                                                           |[0x80003b44]:addi a1, a0, 3<br> [0x80003b48]:sd a1, 256(ra)<br>      |
| 559|[0x800071b0]<br>0x6666666666666BBA|- rs1_val==7378697629483820645 and imm_val==1365<br>                                                                                                                                        |[0x80003b6c]:addi a1, a0, 1365<br> [0x80003b70]:sd a1, 264(ra)<br>   |
| 560|[0x800071b8]<br>0x666666666666610F|- rs1_val==7378697629483820645 and imm_val==-1366<br>                                                                                                                                       |[0x80003b94]:addi a1, a0, 2730<br> [0x80003b98]:sd a1, 272(ra)<br>   |
| 561|[0x800071c0]<br>0x666666666666666A|- rs1_val==7378697629483820645 and imm_val==5<br>                                                                                                                                           |[0x80003bbc]:addi a1, a0, 5<br> [0x80003bc0]:sd a1, 280(ra)<br>      |
| 562|[0x800071c8]<br>0x6666666666666998|- rs1_val==7378697629483820645 and imm_val==819<br>                                                                                                                                         |[0x80003be4]:addi a1, a0, 819<br> [0x80003be8]:sd a1, 288(ra)<br>    |
| 563|[0x800071d0]<br>0x6666666666666CCB|- rs1_val==7378697629483820645 and imm_val==1638<br>                                                                                                                                        |[0x80003c0c]:addi a1, a0, 1638<br> [0x80003c10]:sd a1, 296(ra)<br>   |
| 564|[0x800071d8]<br>0x6666666666666638|- rs1_val==7378697629483820645 and imm_val==-45<br>                                                                                                                                         |[0x80003c34]:addi a1, a0, 4051<br> [0x80003c38]:sd a1, 304(ra)<br>   |
| 565|[0x800071e0]<br>0x6666666666666692|- rs1_val==7378697629483820645 and imm_val==45<br>                                                                                                                                          |[0x80003c5c]:addi a1, a0, 45<br> [0x80003c60]:sd a1, 312(ra)<br>     |
| 566|[0x800071e8]<br>0x6666666666666667|- rs1_val==7378697629483820645 and imm_val==2<br>                                                                                                                                           |[0x80003c84]:addi a1, a0, 2<br> [0x80003c88]:sd a1, 320(ra)<br>      |
| 567|[0x800071f0]<br>0x6666666666666BB9|- rs1_val==7378697629483820645 and imm_val==1364<br>                                                                                                                                        |[0x80003cac]:addi a1, a0, 1364<br> [0x80003cb0]:sd a1, 328(ra)<br>   |
| 568|[0x800071f8]<br>0x6666666666666665|- rs1_val==7378697629483820645 and imm_val==0<br>                                                                                                                                           |[0x80003cd4]:addi a1, a0, 0<br> [0x80003cd8]:sd a1, 336(ra)<br>      |
| 569|[0x80007200]<br>0x6666666666666669|- rs1_val==7378697629483820645 and imm_val==4<br>                                                                                                                                           |[0x80003cfc]:addi a1, a0, 4<br> [0x80003d00]:sd a1, 344(ra)<br>      |
| 570|[0x80007208]<br>0x6666666666666997|- rs1_val==7378697629483820645 and imm_val==818<br>                                                                                                                                         |[0x80003d24]:addi a1, a0, 818<br> [0x80003d28]:sd a1, 352(ra)<br>    |
| 571|[0x80007210]<br>0x6666666666666CCA|- rs1_val==7378697629483820645 and imm_val==1637<br>                                                                                                                                        |[0x80003d4c]:addi a1, a0, 1637<br> [0x80003d50]:sd a1, 360(ra)<br>   |
| 572|[0x80007218]<br>0x6666666666666691|- rs1_val==7378697629483820645 and imm_val==44<br>                                                                                                                                          |[0x80003d74]:addi a1, a0, 44<br> [0x80003d78]:sd a1, 368(ra)<br>     |
| 573|[0x80007220]<br>0x6666666666666BBB|- rs1_val==7378697629483820645 and imm_val==1366<br>                                                                                                                                        |[0x80003d9c]:addi a1, a0, 1366<br> [0x80003da0]:sd a1, 376(ra)<br>   |
| 574|[0x80007228]<br>0x6666666666666110|- rs1_val==7378697629483820645 and imm_val==-1365<br>                                                                                                                                       |[0x80003dc4]:addi a1, a0, 2731<br> [0x80003dc8]:sd a1, 384(ra)<br>   |
| 575|[0x80007230]<br>0x666666666666666B|- rs1_val==7378697629483820645 and imm_val==6<br>                                                                                                                                           |[0x80003dec]:addi a1, a0, 6<br> [0x80003df0]:sd a1, 392(ra)<br>      |
| 576|[0x80007238]<br>0x6666666666666999|- rs1_val==7378697629483820645 and imm_val==820<br>                                                                                                                                         |[0x80003e14]:addi a1, a0, 820<br> [0x80003e18]:sd a1, 400(ra)<br>    |
| 577|[0x80007240]<br>0x6666666666666CCC|- rs1_val==7378697629483820645 and imm_val==1639<br>                                                                                                                                        |[0x80003e3c]:addi a1, a0, 1639<br> [0x80003e40]:sd a1, 408(ra)<br>   |
| 578|[0x80007248]<br>0x6666666666666639|- rs1_val==7378697629483820645 and imm_val==-44<br>                                                                                                                                         |[0x80003e64]:addi a1, a0, 4052<br> [0x80003e68]:sd a1, 416(ra)<br>   |
| 579|[0x80007250]<br>0x6666666666666693|- rs1_val==7378697629483820645 and imm_val==46<br>                                                                                                                                          |[0x80003e8c]:addi a1, a0, 46<br> [0x80003e90]:sd a1, 424(ra)<br>     |
| 580|[0x80007258]<br>0x00000000B504F335|- rs1_val==3037000498 and imm_val==3<br>                                                                                                                                                    |[0x80003ea4]:addi a1, a0, 3<br> [0x80003ea8]:sd a1, 432(ra)<br>      |
| 581|[0x80007260]<br>0x00000000B504F887|- rs1_val==3037000498 and imm_val==1365<br>                                                                                                                                                 |[0x80003ebc]:addi a1, a0, 1365<br> [0x80003ec0]:sd a1, 440(ra)<br>   |
| 582|[0x80007268]<br>0x00000000B504EDDC|- rs1_val==3037000498 and imm_val==-1366<br>                                                                                                                                                |[0x80003ed4]:addi a1, a0, 2730<br> [0x80003ed8]:sd a1, 448(ra)<br>   |
| 583|[0x80007270]<br>0x00000000B504F337|- rs1_val==3037000498 and imm_val==5<br>                                                                                                                                                    |[0x80003eec]:addi a1, a0, 5<br> [0x80003ef0]:sd a1, 456(ra)<br>      |
| 584|[0x80007278]<br>0x00000000B504F665|- rs1_val==3037000498 and imm_val==819<br>                                                                                                                                                  |[0x80003f04]:addi a1, a0, 819<br> [0x80003f08]:sd a1, 464(ra)<br>    |
| 585|[0x80007280]<br>0x00000000B504F998|- rs1_val==3037000498 and imm_val==1638<br>                                                                                                                                                 |[0x80003f1c]:addi a1, a0, 1638<br> [0x80003f20]:sd a1, 472(ra)<br>   |
| 586|[0x80007288]<br>0x00000000B504F305|- rs1_val==3037000498 and imm_val==-45<br>                                                                                                                                                  |[0x80003f34]:addi a1, a0, 4051<br> [0x80003f38]:sd a1, 480(ra)<br>   |
| 587|[0x80007290]<br>0x00000000B504F35F|- rs1_val==3037000498 and imm_val==45<br>                                                                                                                                                   |[0x80003f4c]:addi a1, a0, 45<br> [0x80003f50]:sd a1, 488(ra)<br>     |
| 588|[0x80007298]<br>0x00000000B504F334|- rs1_val==3037000498 and imm_val==2<br>                                                                                                                                                    |[0x80003f64]:addi a1, a0, 2<br> [0x80003f68]:sd a1, 496(ra)<br>      |
| 589|[0x800072a0]<br>0x00000000B504F886|- rs1_val==3037000498 and imm_val==1364<br>                                                                                                                                                 |[0x80003f7c]:addi a1, a0, 1364<br> [0x80003f80]:sd a1, 504(ra)<br>   |
| 590|[0x800072a8]<br>0x00000000B504F332|- rs1_val==3037000498 and imm_val==0<br>                                                                                                                                                    |[0x80003f94]:addi a1, a0, 0<br> [0x80003f98]:sd a1, 512(ra)<br>      |
| 591|[0x800072b0]<br>0x00000000B504F336|- rs1_val==3037000498 and imm_val==4<br>                                                                                                                                                    |[0x80003fac]:addi a1, a0, 4<br> [0x80003fb0]:sd a1, 520(ra)<br>      |
| 592|[0x800072b8]<br>0x00000000B504F664|- rs1_val==3037000498 and imm_val==818<br>                                                                                                                                                  |[0x80003fc4]:addi a1, a0, 818<br> [0x80003fc8]:sd a1, 528(ra)<br>    |
| 593|[0x800072c0]<br>0x00000000B504F997|- rs1_val==3037000498 and imm_val==1637<br>                                                                                                                                                 |[0x80003fdc]:addi a1, a0, 1637<br> [0x80003fe0]:sd a1, 536(ra)<br>   |
| 594|[0x800072c8]<br>0x00000000B504F35E|- rs1_val==3037000498 and imm_val==44<br>                                                                                                                                                   |[0x80003ff4]:addi a1, a0, 44<br> [0x80003ff8]:sd a1, 544(ra)<br>     |
| 595|[0x800072d0]<br>0x00000000B504F888|- rs1_val==3037000498 and imm_val==1366<br>                                                                                                                                                 |[0x8000400c]:addi a1, a0, 1366<br> [0x80004010]:sd a1, 552(ra)<br>   |
| 596|[0x800072d8]<br>0x00000000B504EDDD|- rs1_val==3037000498 and imm_val==-1365<br>                                                                                                                                                |[0x80004024]:addi a1, a0, 2731<br> [0x80004028]:sd a1, 560(ra)<br>   |
| 597|[0x800072e0]<br>0x00000000B504F338|- rs1_val==3037000498 and imm_val==6<br>                                                                                                                                                    |[0x8000403c]:addi a1, a0, 6<br> [0x80004040]:sd a1, 568(ra)<br>      |
| 598|[0x800072e8]<br>0x00000000B504F666|- rs1_val==3037000498 and imm_val==820<br>                                                                                                                                                  |[0x80004054]:addi a1, a0, 820<br> [0x80004058]:sd a1, 576(ra)<br>    |
| 599|[0x800072f0]<br>0x00000000B504F999|- rs1_val==3037000498 and imm_val==1639<br>                                                                                                                                                 |[0x8000406c]:addi a1, a0, 1639<br> [0x80004070]:sd a1, 584(ra)<br>   |
| 600|[0x800072f8]<br>0x00000000B504F306|- rs1_val==3037000498 and imm_val==-44<br>                                                                                                                                                  |[0x80004084]:addi a1, a0, 4052<br> [0x80004088]:sd a1, 592(ra)<br>   |
| 601|[0x80007300]<br>0x00000000B504F360|- rs1_val==3037000498 and imm_val==46<br>                                                                                                                                                   |[0x8000409c]:addi a1, a0, 46<br> [0x800040a0]:sd a1, 600(ra)<br>     |
| 602|[0x80007308]<br>0x5555555555555559|- rs1_val==6148914691236517206 and imm_val==3<br>                                                                                                                                           |[0x800040c4]:addi a1, a0, 3<br> [0x800040c8]:sd a1, 608(ra)<br>      |
| 603|[0x80007310]<br>0x5555555555555AAB|- rs1_val==6148914691236517206 and imm_val==1365<br>                                                                                                                                        |[0x800040ec]:addi a1, a0, 1365<br> [0x800040f0]:sd a1, 616(ra)<br>   |
| 604|[0x80007318]<br>0x5555555555555000|- rs1_val==6148914691236517206 and imm_val==-1366<br>                                                                                                                                       |[0x80004114]:addi a1, a0, 2730<br> [0x80004118]:sd a1, 624(ra)<br>   |
| 605|[0x80007320]<br>0x555555555555555B|- rs1_val==6148914691236517206 and imm_val==5<br>                                                                                                                                           |[0x8000413c]:addi a1, a0, 5<br> [0x80004140]:sd a1, 632(ra)<br>      |
| 606|[0x80007328]<br>0x5555555555555889|- rs1_val==6148914691236517206 and imm_val==819<br>                                                                                                                                         |[0x80004164]:addi a1, a0, 819<br> [0x80004168]:sd a1, 640(ra)<br>    |
| 607|[0x80007330]<br>0x5555555555555BBC|- rs1_val==6148914691236517206 and imm_val==1638<br>                                                                                                                                        |[0x8000418c]:addi a1, a0, 1638<br> [0x80004190]:sd a1, 648(ra)<br>   |
| 608|[0x80007338]<br>0x5555555555555529|- rs1_val==6148914691236517206 and imm_val==-45<br>                                                                                                                                         |[0x800041b4]:addi a1, a0, 4051<br> [0x800041b8]:sd a1, 656(ra)<br>   |
| 609|[0x80007340]<br>0x5555555555555583|- rs1_val==6148914691236517206 and imm_val==45<br>                                                                                                                                          |[0x800041dc]:addi a1, a0, 45<br> [0x800041e0]:sd a1, 664(ra)<br>     |
| 610|[0x80007348]<br>0x5555555555555558|- rs1_val==6148914691236517206 and imm_val==2<br>                                                                                                                                           |[0x80004204]:addi a1, a0, 2<br> [0x80004208]:sd a1, 672(ra)<br>      |
| 611|[0x80007350]<br>0x5555555555555AAA|- rs1_val==6148914691236517206 and imm_val==1364<br>                                                                                                                                        |[0x8000422c]:addi a1, a0, 1364<br> [0x80004230]:sd a1, 680(ra)<br>   |
| 612|[0x80007358]<br>0x5555555555555556|- rs1_val==6148914691236517206 and imm_val==0<br>                                                                                                                                           |[0x80004254]:addi a1, a0, 0<br> [0x80004258]:sd a1, 688(ra)<br>      |
| 613|[0x80007360]<br>0x555555555555555A|- rs1_val==6148914691236517206 and imm_val==4<br>                                                                                                                                           |[0x8000427c]:addi a1, a0, 4<br> [0x80004280]:sd a1, 696(ra)<br>      |
| 614|[0x80007368]<br>0x5555555555555888|- rs1_val==6148914691236517206 and imm_val==818<br>                                                                                                                                         |[0x800042a4]:addi a1, a0, 818<br> [0x800042a8]:sd a1, 704(ra)<br>    |
| 615|[0x80007370]<br>0x5555555555555BBB|- rs1_val==6148914691236517206 and imm_val==1637<br>                                                                                                                                        |[0x800042cc]:addi a1, a0, 1637<br> [0x800042d0]:sd a1, 712(ra)<br>   |
| 616|[0x80007378]<br>0xFF000000000000FF|- rs1_val == -72057594037927937<br>                                                                                                                                                         |[0x800042e0]:addi a1, a0, 256<br> [0x800042e4]:sd a1, 720(ra)<br>    |
