
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001a30')]      |
| SIG_REGION                | [('0x80003210', '0x80003860', '202 dwords')]      |
| COV_LABELS                | khmtt16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/khmtt16-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 202      |
| STAT1                     | 97      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 101     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001970]:KHMTT16 t6, t5, t4
      [0x80001974]:sd t6, 1072(ra)
 -- Signature Address: 0x80003820 Data: 0xFFFFFFFF00000100
 -- Redundant Coverpoints hit by the op
      - opcode : khmtt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h3_val == -1025
      - rs2_h2_val == 0
      - rs2_h1_val == 512
      - rs1_h1_val == 16384
      - rs1_h0_val == 2048




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800019a4]:KHMTT16 t6, t5, t4
      [0x800019a8]:sd t6, 1088(ra)
 -- Signature Address: 0x80003830 Data: 0x00002AAAFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : khmtt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == -32768
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h3_val == 21845
      - rs2_h2_val == -1
      - rs2_h1_val == -2
      - rs1_h3_val == 16384
      - rs1_h2_val == 256
      - rs1_h1_val == 512




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800019e0]:KHMTT16 t6, t5, t4
      [0x800019e4]:sd t6, 1104(ra)
 -- Signature Address: 0x80003840 Data: 0x00000200FFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : khmtt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h3_val == 2048
      - rs2_h1_val == 2048
      - rs2_h0_val == 8
      - rs1_h3_val == 8192
      - rs1_h1_val == -9
      - rs1_h0_val == -5




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a18]:KHMTT16 t6, t5, t4
      [0x80001a1c]:sd t6, 1120(ra)
 -- Signature Address: 0x80003850 Data: 0xFFFFFFFFFFFFFF80
 -- Redundant Coverpoints hit by the op
      - opcode : khmtt16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h3_val == 16
      - rs2_h2_val == 64
      - rs2_h1_val == 256
      - rs1_h3_val == -1
      - rs1_h2_val == 256
      - rs1_h0_val == -4097






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : khmtt16', 'rs1 : x30', 'rs2 : x30', 'rd : x6', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == 21845', 'rs2_h2_val == -1', 'rs2_h1_val == -2', 'rs1_h3_val == 21845', 'rs1_h2_val == -1', 'rs1_h1_val == -2']
Last Code Sequence : 
	-[0x800003cc]:KHMTT16 t1, t5, t5
	-[0x800003d0]:sd t1, 0(a1)
Current Store : [0x800003d4] : sd t5, 8(a1) -- Store: [0x80003218]:0x5555FFFFFFFEC000




Last Coverpoint : ['rs1 : x23', 'rs2 : x23', 'rd : x23', 'rs1 == rs2 == rd', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs2_h3_val == 32767', 'rs2_h2_val == -17', 'rs2_h1_val == 1024', 'rs2_h0_val == -513', 'rs1_h3_val == 32767', 'rs1_h2_val == -17', 'rs1_h1_val == 1024', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000404]:KHMTT16 s7, s7, s7
	-[0x80000408]:sd s7, 16(a1)
Current Store : [0x8000040c] : sd s7, 24(a1) -- Store: [0x80003228]:0x00007FFE00000020




Last Coverpoint : ['rs1 : x7', 'rs2 : x5', 'rd : x2', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs2_h3_val == 64', 'rs2_h0_val == -5', 'rs1_h3_val == -8193', 'rs1_h2_val == -9']
Last Code Sequence : 
	-[0x80000440]:KHMTT16 sp, t2, t0
	-[0x80000444]:sd sp, 32(a1)
Current Store : [0x80000448] : sd t2, 40(a1) -- Store: [0x80003238]:0xDFFFFFF70009FFF8




Last Coverpoint : ['rs1 : x21', 'rs2 : x27', 'rd : x21', 'rs1 == rd != rs2', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs2_h1_val == 4', 'rs1_h3_val == -9', 'rs1_h2_val == -2049', 'rs1_h1_val == 2', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000478]:KHMTT16 s5, s5, s11
	-[0x8000047c]:sd s5, 48(a1)
Current Store : [0x80000480] : sd s5, 56(a1) -- Store: [0x80003248]:0x0000000000000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x12', 'rd : x12', 'rs2 == rd != rs1', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == -2', 'rs2_h2_val == -65', 'rs1_h3_val == 8', 'rs1_h1_val == 32767', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x800004a8]:KHMTT16 a2, a7, a2
	-[0x800004ac]:sd a2, 64(a1)
Current Store : [0x800004b0] : sd a7, 72(a1) -- Store: [0x80003258]:0x0008FFFC7FFFFFFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x15', 'rd : x31', 'rs1_h3_val == 0', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x800004dc]:KHMTT16 t6, s2, a5
	-[0x800004e0]:sd t6, 80(a1)
Current Store : [0x800004e4] : sd s2, 88(a1) -- Store: [0x80003268]:0x0000FFEF5555FFFF




Last Coverpoint : ['rs1 : x27', 'rs2 : x31', 'rd : x7', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs2_h3_val == 8', 'rs2_h2_val == 16384', 'rs1_h2_val == 64', 'rs1_h1_val == 512', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000514]:KHMTT16 t2, s11, t6
	-[0x80000518]:sd t2, 96(a1)
Current Store : [0x8000051c] : sd s11, 104(a1) -- Store: [0x80003278]:0xFFFA00400200FFFB




Last Coverpoint : ['rs1 : x15', 'rs2 : x17', 'rd : x25', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == -2049', 'rs2_h1_val == 21845', 'rs1_h3_val == -257', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x8000055c]:KHMTT16 s9, a5, a7
	-[0x80000560]:sd s9, 112(a1)
Current Store : [0x80000564] : sd a5, 120(a1) -- Store: [0x80003288]:0xFEFFF7FF55555555




Last Coverpoint : ['rs1 : x16', 'rs2 : x6', 'rd : x18', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs2_h3_val == -16385', 'rs2_h0_val == 8192', 'rs1_h3_val == -65', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000594]:KHMTT16 s2, a6, t1
	-[0x80000598]:sd s2, 128(a1)
Current Store : [0x8000059c] : sd a6, 136(a1) -- Store: [0x80003298]:0xFFBF0005FFF60010




Last Coverpoint : ['rs1 : x0', 'rs2 : x7', 'rd : x3', 'rs2_h3_val == -33', 'rs2_h2_val == 32', 'rs2_h1_val == -257', 'rs2_h0_val == 64', 'rs1_h2_val == 0', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x800005d0]:KHMTT16 gp, zero, t2
	-[0x800005d4]:sd gp, 144(a1)
Current Store : [0x800005d8] : sd zero, 152(a1) -- Store: [0x800032a8]:0x0000000000000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x8', 'rd : x29', 'rs2_h3_val == -8193', 'rs1_h3_val == -1025', 'rs1_h2_val == 128', 'rs1_h1_val == -513']
Last Code Sequence : 
	-[0x80000610]:KHMTT16 t4, s1, fp
	-[0x80000614]:sd t4, 160(a1)
Current Store : [0x80000618] : sd s1, 168(a1) -- Store: [0x800032b8]:0xFBFF0080FDFFFFFC




Last Coverpoint : ['rs1 : x20', 'rs2 : x2', 'rd : x1', 'rs2_h3_val == -21846', 'rs2_h1_val == 16384', 'rs2_h0_val == 4096', 'rs1_h2_val == -33', 'rs1_h1_val == -257', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000650]:KHMTT16 ra, s4, sp
	-[0x80000654]:sd ra, 176(a1)
Current Store : [0x80000658] : sd s4, 184(a1) -- Store: [0x800032c8]:0x0006FFDFFEFF0400




Last Coverpoint : ['rs1 : x26', 'rs2 : x19', 'rd : x22', 'rs2_h3_val == -4097', 'rs2_h2_val == 4096', 'rs2_h1_val == 8', 'rs2_h0_val == 8', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x8000068c]:KHMTT16 s6, s10, s3
	-[0x80000690]:sd s6, 192(a1)
Current Store : [0x80000694] : sd s10, 200(a1) -- Store: [0x800032d8]:0x0000FFF7FDFF7FFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x29', 'rd : x15', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == -1025', 'rs2_h2_val == 21845', 'rs2_h0_val == -65', 'rs1_h2_val == -1025', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x800006c4]:KHMTT16 a5, tp, t4
	-[0x800006c8]:sd a5, 208(a1)
Current Store : [0x800006cc] : sd tp, 216(a1) -- Store: [0x800032e8]:0x0005FBFFC0004000




Last Coverpoint : ['rs1 : x13', 'rs2 : x18', 'rd : x10', 'rs2_h3_val == -513', 'rs2_h2_val == -21846', 'rs2_h1_val == 2', 'rs2_h0_val == -1025', 'rs1_h2_val == -257']
Last Code Sequence : 
	-[0x80000700]:KHMTT16 a0, a3, s2
	-[0x80000704]:sd a0, 224(a1)
Current Store : [0x80000708] : sd a3, 232(a1) -- Store: [0x800032f8]:0x0003FEFF0400FFFA




Last Coverpoint : ['rs1 : x2', 'rs2 : x0', 'rd : x26', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x8000074c]:KHMTT16 s10, sp, zero
	-[0x80000750]:sd s10, 0(t2)
Current Store : [0x80000754] : sd sp, 8(t2) -- Store: [0x80003308]:0x555500067FFFF7FF




Last Coverpoint : ['rs1 : x12', 'rs2 : x4', 'rd : x14', 'rs2_h3_val == -129', 'rs2_h2_val == 256', 'rs2_h1_val == 64', 'rs2_h0_val == -21846', 'rs1_h3_val == -32768', 'rs1_h2_val == -16385', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x80000788]:KHMTT16 a4, a2, tp
	-[0x8000078c]:sd a4, 16(t2)
Current Store : [0x80000790] : sd a2, 24(t2) -- Store: [0x80003318]:0x8000BFFF00040005




Last Coverpoint : ['rs1 : x25', 'rs2 : x1', 'rd : x24', 'rs2_h3_val == -65', 'rs2_h0_val == 21845', 'rs1_h3_val == -1', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x800007bc]:KHMTT16 s8, s9, ra
	-[0x800007c0]:sd s8, 32(t2)
Current Store : [0x800007c4] : sd s9, 40(t2) -- Store: [0x80003328]:0xFFFF3FFF0009FBFF




Last Coverpoint : ['rs1 : x14', 'rs2 : x25', 'rd : x11', 'rs2_h3_val == -17', 'rs2_h2_val == -513', 'rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x800007f4]:KHMTT16 a1, a4, s9
	-[0x800007f8]:sd a1, 48(t2)
Current Store : [0x800007fc] : sd a4, 56(t2) -- Store: [0x80003338]:0xC000FFFA0400FFF8




Last Coverpoint : ['rs1 : x31', 'rs2 : x26', 'rd : x13', 'rs2_h3_val == -9', 'rs2_h2_val == -16385', 'rs2_h0_val == 4', 'rs1_h3_val == -3', 'rs1_h1_val == -4097', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000820]:KHMTT16 a3, t6, s10
	-[0x80000824]:sd a3, 64(t2)
Current Store : [0x80000828] : sd t6, 72(t2) -- Store: [0x80003348]:0xFFFDF7FFEFFFFFFD




Last Coverpoint : ['rs1 : x8', 'rs2 : x11', 'rd : x5', 'rs2_h3_val == -5', 'rs2_h2_val == -3', 'rs2_h1_val == -1025', 'rs2_h0_val == -32768', 'rs1_h3_val == 512', 'rs1_h2_val == -65', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x80000858]:KHMTT16 t0, fp, a1
	-[0x8000085c]:sd t0, 80(t2)
Current Store : [0x80000860] : sd fp, 88(t2) -- Store: [0x80003358]:0x0200FFBFDFFF7FFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x21', 'rd : x4', 'rs2_h3_val == -3', 'rs2_h2_val == -9', 'rs2_h1_val == 32', 'rs2_h0_val == -3', 'rs1_h3_val == -33', 'rs1_h2_val == -2']
Last Code Sequence : 
	-[0x80000894]:KHMTT16 tp, t0, s5
	-[0x80000898]:sd tp, 96(t2)
Current Store : [0x8000089c] : sd t0, 104(t2) -- Store: [0x80003368]:0xFFDFFFFEFFFA3FFF




Last Coverpoint : ['rs1 : x11', 'rs2 : x9', 'rd : x30', 'rs2_h3_val == -32768', 'rs2_h1_val == -17', 'rs2_h0_val == -2', 'rs1_h2_val == 16384']
Last Code Sequence : 
	-[0x800008d0]:KHMTT16 t5, a1, s1
	-[0x800008d4]:sd t5, 112(t2)
Current Store : [0x800008d8] : sd a1, 120(t2) -- Store: [0x80003378]:0xDFFF40000007FBFF




Last Coverpoint : ['rs1 : x22', 'rs2 : x16', 'rd : x20', 'rs2_h3_val == 16384', 'rs1_h3_val == -21846', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x8000090c]:KHMTT16 s4, s6, a6
	-[0x80000910]:sd s4, 128(t2)
Current Store : [0x80000914] : sd s6, 136(t2) -- Store: [0x80003388]:0xAAAAFFFF0005FFF7




Last Coverpoint : ['rs1 : x3', 'rs2 : x10', 'rd : x8', 'rs2_h3_val == 8192', 'rs1_h1_val == -65']
Last Code Sequence : 
	-[0x8000093c]:KHMTT16 fp, gp, a0
	-[0x80000940]:sd fp, 144(t2)
Current Store : [0x80000944] : sd gp, 152(t2) -- Store: [0x80003398]:0xFFF80007FFBFFFF7




Last Coverpoint : ['rs1 : x6', 'rs2 : x22', 'rd : x27', 'rs2_h3_val == 4096', 'rs2_h2_val == -4097', 'rs2_h1_val == -3']
Last Code Sequence : 
	-[0x80000970]:KHMTT16 s11, t1, s6
	-[0x80000974]:sd s11, 160(t2)
Current Store : [0x80000978] : sd t1, 168(t2) -- Store: [0x800033a8]:0xFFF900000000FFFD




Last Coverpoint : ['rs1 : x1', 'rs2 : x20', 'rd : x0', 'rs2_h3_val == 2048', 'rs2_h1_val == 2048', 'rs1_h3_val == 8192', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x800009ac]:KHMTT16 zero, ra, s4
	-[0x800009b0]:sd zero, 176(t2)
Current Store : [0x800009b4] : sd ra, 184(t2) -- Store: [0x800033b8]:0x20003FFFFFF7FFFB




Last Coverpoint : ['rs1 : x19', 'rs2 : x28', 'rd : x16', 'rs2_h3_val == 1024', 'rs2_h2_val == 128', 'rs2_h0_val == -2049', 'rs1_h2_val == -21846']
Last Code Sequence : 
	-[0x800009e8]:KHMTT16 a6, s3, t3
	-[0x800009ec]:sd a6, 192(t2)
Current Store : [0x800009f0] : sd s3, 200(t2) -- Store: [0x800033c8]:0xFFF7AAAAFFFE3FFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x3', 'rd : x9', 'rs1_h0_val == -32768', 'rs2_h3_val == 512', 'rs2_h0_val == 2048', 'rs1_h3_val == 4', 'rs1_h2_val == -5', 'rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000a20]:KHMTT16 s1, t3, gp
	-[0x80000a24]:sd s1, 208(t2)
Current Store : [0x80000a28] : sd t3, 216(t2) -- Store: [0x800033d8]:0x0004FFFB00408000




Last Coverpoint : ['rs1 : x29', 'rs2 : x13', 'rd : x17', 'rs2_h3_val == 256', 'rs2_h1_val == -5', 'rs2_h0_val == -9', 'rs1_h3_val == 16384', 'rs1_h2_val == 4', 'rs1_h1_val == 16384', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000a5c]:KHMTT16 a7, t4, a3
	-[0x80000a60]:sd a7, 224(t2)
Current Store : [0x80000a64] : sd t4, 232(t2) -- Store: [0x800033e8]:0x4000000440001000




Last Coverpoint : ['rs1 : x10', 'rs2 : x14', 'rd : x19', 'rs2_h3_val == 128', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000aa0]:KHMTT16 s3, a0, a4
	-[0x80000aa4]:sd s3, 0(ra)
Current Store : [0x80000aa8] : sd a0, 8(ra) -- Store: [0x800033f8]:0xFFF6FFF608007FFF




Last Coverpoint : ['rs1 : x24', 'rs2_h3_val == 32', 'rs2_h2_val == -5', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000adc]:KHMTT16 s9, s8, s4
	-[0x80000ae0]:sd s9, 16(ra)
Current Store : [0x80000ae4] : sd s8, 24(ra) -- Store: [0x80003408]:0x2000FFFF0008FFFC




Last Coverpoint : ['rs2 : x24', 'rs2_h3_val == 16', 'rs2_h2_val == 64', 'rs2_h1_val == 256', 'rs1_h2_val == 256', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000b14]:KHMTT16 zero, a2, s8
	-[0x80000b18]:sd zero, 32(ra)
Current Store : [0x80000b1c] : sd a2, 40(ra) -- Store: [0x80003418]:0xFFFF0100C000EFFF




Last Coverpoint : ['rd : x28', 'rs2_h3_val == 4', 'rs1_h1_val == -5', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80000b4c]:KHMTT16 t3, t5, s10
	-[0x80000b50]:sd t3, 48(ra)
Current Store : [0x80000b54] : sd t5, 56(ra) -- Store: [0x80003428]:0xFFFF4000FFFB0002




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h1_val == -32768', 'rs1_h3_val == -2', 'rs1_h2_val == -8193', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000b80]:KHMTT16 t6, t5, t4
	-[0x80000b84]:sd t6, 64(ra)
Current Store : [0x80000b88] : sd t5, 72(ra) -- Store: [0x80003438]:0xFFFEDFFF0004FF7F




Last Coverpoint : ['rs2_h3_val == 1', 'rs1_h3_val == 2048', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000bb4]:KHMTT16 t6, t5, t4
	-[0x80000bb8]:sd t6, 80(ra)
Current Store : [0x80000bbc] : sd t5, 88(ra) -- Store: [0x80003448]:0x0800FFFF00040800




Last Coverpoint : ['rs2_h1_val == -65', 'rs1_h1_val == -3', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000bec]:KHMTT16 t6, t5, t4
	-[0x80000bf0]:sd t6, 96(ra)
Current Store : [0x80000bf4] : sd t5, 104(ra) -- Store: [0x80003458]:0x00090003FFFD0100




Last Coverpoint : ['rs1_h2_val == 1024', 'rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x80000c18]:KHMTT16 t6, t5, t4
	-[0x80000c1c]:sd t6, 112(ra)
Current Store : [0x80000c20] : sd t5, 120(ra) -- Store: [0x80003468]:0xC000040080000009




Last Coverpoint : ['rs2_h0_val == -129', 'rs1_h3_val == 2', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000c4c]:KHMTT16 t6, t5, t4
	-[0x80000c50]:sd t6, 128(ra)
Current Store : [0x80000c54] : sd t5, 136(ra) -- Store: [0x80003478]:0x000200072000FBFF




Last Coverpoint : ['rs1_h3_val == 64', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000c84]:KHMTT16 t6, t5, t4
	-[0x80000c88]:sd t6, 144(ra)
Current Store : [0x80000c8c] : sd t5, 152(ra) -- Store: [0x80003488]:0x0040FFF810008000




Last Coverpoint : ['rs1_h2_val == 32767', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000cb4]:KHMTT16 t6, t5, t4
	-[0x80000cb8]:sd t6, 160(ra)
Current Store : [0x80000cbc] : sd t5, 168(ra) -- Store: [0x80003498]:0x00037FFF0100FFF8




Last Coverpoint : ['rs2_h2_val == 1024', 'rs1_h1_val == 128']
Last Code Sequence : 
	-[0x80000ce4]:KHMTT16 t6, t5, t4
	-[0x80000ce8]:sd t6, 176(ra)
Current Store : [0x80000cec] : sd t5, 184(ra) -- Store: [0x800034a8]:0xFFFAFFF900800400




Last Coverpoint : ['rs2_h2_val == 4', 'rs1_h2_val == 21845', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000d20]:KHMTT16 t6, t5, t4
	-[0x80000d24]:sd t6, 192(ra)
Current Store : [0x80000d28] : sd t5, 200(ra) -- Store: [0x800034b8]:0x080055550020F7FF




Last Coverpoint : ['rs2_h2_val == 8', 'rs2_h0_val == -33', 'rs1_h3_val == 128', 'rs1_h1_val == 16', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000d50]:KHMTT16 t6, t5, t4
	-[0x80000d54]:sd t6, 208(ra)
Current Store : [0x80000d58] : sd t5, 216(ra) -- Store: [0x800034c8]:0x0080C00000100080




Last Coverpoint : ['rs2_h0_val == -1', 'rs1_h2_val == -129', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000d8c]:KHMTT16 t6, t5, t4
	-[0x80000d90]:sd t6, 224(ra)
Current Store : [0x80000d94] : sd t5, 232(ra) -- Store: [0x800034d8]:0x7FFFFF7F0001FBFF




Last Coverpoint : ['rs2_h3_val == -257', 'rs2_h2_val == 512', 'rs2_h1_val == -9', 'rs1_h2_val == 4096', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000dc8]:KHMTT16 t6, t5, t4
	-[0x80000dcc]:sd t6, 240(ra)
Current Store : [0x80000dd0] : sd t5, 248(ra) -- Store: [0x800034e8]:0x02001000FFFF0080




Last Coverpoint : ['rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000dfc]:KHMTT16 t6, t5, t4
	-[0x80000e00]:sd t6, 256(ra)
Current Store : [0x80000e04] : sd t5, 264(ra) -- Store: [0x800034f8]:0xFFF800400400AAAA




Last Coverpoint : ['rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000e38]:KHMTT16 t6, t5, t4
	-[0x80000e3c]:sd t6, 272(ra)
Current Store : [0x80000e40] : sd t5, 280(ra) -- Store: [0x80003508]:0x0800C0002000DFFF




Last Coverpoint : ['rs2_h2_val == -2049', 'rs2_h1_val == -4097', 'rs1_h2_val == 8192', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x80000e6c]:KHMTT16 t6, t5, t4
	-[0x80000e70]:sd t6, 288(ra)
Current Store : [0x80000e74] : sd t5, 296(ra) -- Store: [0x80003518]:0x08002000FBFFFDFF




Last Coverpoint : ['rs2_h0_val == 2', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000ea8]:KHMTT16 t6, t5, t4
	-[0x80000eac]:sd t6, 304(ra)
Current Store : [0x80000eb0] : sd t5, 312(ra) -- Store: [0x80003528]:0x0000FBFF8000FEFF




Last Coverpoint : ['rs1_h3_val == 16', 'rs1_h2_val == -513', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000ee4]:KHMTT16 t6, t5, t4
	-[0x80000ee8]:sd t6, 320(ra)
Current Store : [0x80000eec] : sd t5, 328(ra) -- Store: [0x80003538]:0x0010FDFFFFF9FFBF




Last Coverpoint : ['rs2_h2_val == -33', 'rs2_h1_val == -2049', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000f20]:KHMTT16 t6, t5, t4
	-[0x80000f24]:sd t6, 336(ra)
Current Store : [0x80000f28] : sd t5, 344(ra) -- Store: [0x80003548]:0x000200040010FFDF




Last Coverpoint : ['rs2_h2_val == -32768', 'rs1_h3_val == -513', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000f54]:KHMTT16 t6, t5, t4
	-[0x80000f58]:sd t6, 352(ra)
Current Store : [0x80000f5c] : sd t5, 360(ra) -- Store: [0x80003558]:0xFDFFFFF60020FFEF




Last Coverpoint : ['rs2_h2_val == -8193', 'rs2_h0_val == 1024', 'rs1_h1_val == -2049', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000f88]:KHMTT16 t6, t5, t4
	-[0x80000f8c]:sd t6, 368(ra)
Current Store : [0x80000f90] : sd t5, 376(ra) -- Store: [0x80003568]:0x0040C000F7FFFFFE




Last Coverpoint : ['rs2_h1_val == 8192', 'rs1_h3_val == -5', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000fc0]:KHMTT16 t6, t5, t4
	-[0x80000fc4]:sd t6, 384(ra)
Current Store : [0x80000fc8] : sd t5, 392(ra) -- Store: [0x80003578]:0xFFFBAAAAFFFF2000




Last Coverpoint : ['rs2_h2_val == -257', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80001004]:KHMTT16 t6, t5, t4
	-[0x80001008]:sd t6, 400(ra)
Current Store : [0x8000100c] : sd t5, 408(ra) -- Store: [0x80003588]:0xAAAAF7FFF7FF0200




Last Coverpoint : ['rs1_h3_val == -2049', 'rs1_h2_val == 8', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80001038]:KHMTT16 t6, t5, t4
	-[0x8000103c]:sd t6, 416(ra)
Current Store : [0x80001040] : sd t5, 424(ra) -- Store: [0x80003598]:0xF7FF000840000040




Last Coverpoint : ['rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80001070]:KHMTT16 t6, t5, t4
	-[0x80001074]:sd t6, 432(ra)
Current Store : [0x80001078] : sd t5, 440(ra) -- Store: [0x800035a8]:0xFFF7FFBF55550020




Last Coverpoint : ['rs2_h1_val == -33', 'rs1_h1_val == -16385', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x800010a8]:KHMTT16 t6, t5, t4
	-[0x800010ac]:sd t6, 448(ra)
Current Store : [0x800010b0] : sd t5, 456(ra) -- Store: [0x800035b8]:0x0005FFF9BFFF0008




Last Coverpoint : ['rs2_h2_val == 32767', 'rs2_h1_val == 1']
Last Code Sequence : 
	-[0x800010e4]:KHMTT16 t6, t5, t4
	-[0x800010e8]:sd t6, 464(ra)
Current Store : [0x800010ec] : sd t5, 472(ra) -- Store: [0x800035c8]:0xFFDFDFFF0008FFF9




Last Coverpoint : ['rs2_h1_val == -1', 'rs2_h0_val == -8193']
Last Code Sequence : 
	-[0x80001120]:KHMTT16 t6, t5, t4
	-[0x80001124]:sd t6, 480(ra)
Current Store : [0x80001128] : sd t5, 488(ra) -- Store: [0x800035d8]:0xFFF7FFFFF7FF0040




Last Coverpoint : ['rs2_h2_val == 8192', 'rs2_h1_val == 32767', 'rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x80001158]:KHMTT16 t6, t5, t4
	-[0x8000115c]:sd t6, 496(ra)
Current Store : [0x80001160] : sd t5, 504(ra) -- Store: [0x800035e8]:0xFFFE04000005FFFE




Last Coverpoint : ['rs2_h1_val == 512', 'rs2_h0_val == -16385', 'rs1_h3_val == 32', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80001190]:KHMTT16 t6, t5, t4
	-[0x80001194]:sd t6, 512(ra)
Current Store : [0x80001198] : sd t5, 520(ra) -- Store: [0x800035f8]:0x0020FFFB40000001




Last Coverpoint : ['rs2_h1_val == 128', 'rs2_h0_val == -4097', 'rs1_h2_val == -3']
Last Code Sequence : 
	-[0x800011cc]:KHMTT16 t6, t5, t4
	-[0x800011d0]:sd t6, 528(ra)
Current Store : [0x800011d4] : sd t5, 536(ra) -- Store: [0x80003608]:0xFFBFFFFDFEFFEFFF




Last Coverpoint : ['rs2_h0_val == -257']
Last Code Sequence : 
	-[0x80001208]:KHMTT16 t6, t5, t4
	-[0x8000120c]:sd t6, 544(ra)
Current Store : [0x80001210] : sd t5, 552(ra) -- Store: [0x80003618]:0x00035555FFFAFFFA




Last Coverpoint : ['rs2_h2_val == 16', 'rs2_h0_val == -17', 'rs1_h3_val == -4097']
Last Code Sequence : 
	-[0x80001244]:KHMTT16 t6, t5, t4
	-[0x80001248]:sd t6, 560(ra)
Current Store : [0x8000124c] : sd t5, 568(ra) -- Store: [0x80003628]:0xEFFFFBFFFFFE0040




Last Coverpoint : ['rs2_h0_val == 512']
Last Code Sequence : 
	-[0x80001280]:KHMTT16 t6, t5, t4
	-[0x80001284]:sd t6, 576(ra)
Current Store : [0x80001288] : sd t5, 584(ra) -- Store: [0x80003638]:0xFBFF0004FFBF0002




Last Coverpoint : ['rs2_h1_val == -16385', 'rs2_h0_val == 256']
Last Code Sequence : 
	-[0x800012c8]:KHMTT16 t6, t5, t4
	-[0x800012cc]:sd t6, 592(ra)
Current Store : [0x800012d0] : sd t5, 600(ra) -- Store: [0x80003648]:0x200000035555FFFB




Last Coverpoint : ['rs2_h0_val == 128']
Last Code Sequence : 
	-[0x80001304]:KHMTT16 t6, t5, t4
	-[0x80001308]:sd t6, 608(ra)
Current Store : [0x8000130c] : sd t5, 616(ra) -- Store: [0x80003658]:0xFFF800050020FBFF




Last Coverpoint : ['rs2_h0_val == 32', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80001338]:KHMTT16 t6, t5, t4
	-[0x8000133c]:sd t6, 624(ra)
Current Store : [0x80001340] : sd t5, 632(ra) -- Store: [0x80003668]:0x00031000FF7FFF7F




Last Coverpoint : ['rs2_h0_val == 16']
Last Code Sequence : 
	-[0x80001370]:KHMTT16 t6, t5, t4
	-[0x80001374]:sd t6, 640(ra)
Current Store : [0x80001378] : sd t5, 648(ra) -- Store: [0x80003678]:0x8000FF7FFF7FFFFB




Last Coverpoint : ['rs2_h1_val == 4096', 'rs2_h0_val == 1']
Last Code Sequence : 
	-[0x800013a4]:KHMTT16 t6, t5, t4
	-[0x800013a8]:sd t6, 656(ra)
Current Store : [0x800013ac] : sd t5, 664(ra) -- Store: [0x80003688]:0xFFFAFFFDFFBF3FFF




Last Coverpoint : ['rs1_h3_val == -16385']
Last Code Sequence : 
	-[0x800013e4]:KHMTT16 t6, t5, t4
	-[0x800013e8]:sd t6, 672(ra)
Current Store : [0x800013ec] : sd t5, 680(ra) -- Store: [0x80003698]:0xBFFF00031000FFFA




Last Coverpoint : ['rs1_h3_val == 4096', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80001420]:KHMTT16 t6, t5, t4
	-[0x80001424]:sd t6, 688(ra)
Current Store : [0x80001428] : sd t5, 696(ra) -- Store: [0x800036a8]:0x1000FFFFFBFF0004




Last Coverpoint : ['rs1_h3_val == 1024']
Last Code Sequence : 
	-[0x80001450]:KHMTT16 t6, t5, t4
	-[0x80001454]:sd t6, 704(ra)
Current Store : [0x80001458] : sd t5, 712(ra) -- Store: [0x800036b8]:0x0400FFFC02000040




Last Coverpoint : ['rs1_h3_val == 256', 'rs1_h2_val == 2048']
Last Code Sequence : 
	-[0x80001484]:KHMTT16 t6, t5, t4
	-[0x80001488]:sd t6, 720(ra)
Current Store : [0x8000148c] : sd t5, 728(ra) -- Store: [0x800036c8]:0x0100080000050020




Last Coverpoint : ['rs2_h2_val == -1025']
Last Code Sequence : 
	-[0x800014c4]:KHMTT16 t6, t5, t4
	-[0x800014c8]:sd t6, 736(ra)
Current Store : [0x800014cc] : sd t5, 744(ra) -- Store: [0x800036d8]:0xFDFF7FFFFFF90080




Last Coverpoint : ['rs2_h2_val == -129']
Last Code Sequence : 
	-[0x80001500]:KHMTT16 t6, t5, t4
	-[0x80001504]:sd t6, 752(ra)
Current Store : [0x80001508] : sd t5, 760(ra) -- Store: [0x800036e8]:0x0002AAAA0400FFFD




Last Coverpoint : ['rs1_h3_val == 1', 'rs1_h2_val == 32']
Last Code Sequence : 
	-[0x80001534]:KHMTT16 t6, t5, t4
	-[0x80001538]:sd t6, 768(ra)
Current Store : [0x8000153c] : sd t5, 776(ra) -- Store: [0x800036f8]:0x0001002080000020




Last Coverpoint : ['rs2_h2_val == -2', 'rs2_h1_val == -129', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80001568]:KHMTT16 t6, t5, t4
	-[0x8000156c]:sd t6, 784(ra)
Current Store : [0x80001570] : sd t5, 792(ra) -- Store: [0x80003708]:0x0004FFF60004BFFF




Last Coverpoint : ['rs1_h2_val == -4097']
Last Code Sequence : 
	-[0x800015a8]:KHMTT16 t6, t5, t4
	-[0x800015ac]:sd t6, 800(ra)
Current Store : [0x800015b0] : sd t5, 808(ra) -- Store: [0x80003718]:0x0000EFFFFFBFF7FF




Last Coverpoint : ['rs2_h2_val == 2048', 'rs1_h3_val == -17', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x800015e4]:KHMTT16 t6, t5, t4
	-[0x800015e8]:sd t6, 816(ra)
Current Store : [0x800015ec] : sd t5, 824(ra) -- Store: [0x80003728]:0xFFEFFFFBFFDF0004




Last Coverpoint : ['rs2_h2_val == 2']
Last Code Sequence : 
	-[0x80001620]:KHMTT16 t6, t5, t4
	-[0x80001624]:sd t6, 832(ra)
Current Store : [0x80001628] : sd t5, 840(ra) -- Store: [0x80003738]:0x0040FF7FFFFF0004




Last Coverpoint : ['rs2_h1_val == -21846']
Last Code Sequence : 
	-[0x80001650]:KHMTT16 t6, t5, t4
	-[0x80001654]:sd t6, 848(ra)
Current Store : [0x80001658] : sd t5, 856(ra) -- Store: [0x80003748]:0x00003FFF00020000




Last Coverpoint : ['rs2_h1_val == -8193']
Last Code Sequence : 
	-[0x8000168c]:KHMTT16 t6, t5, t4
	-[0x80001690]:sd t6, 864(ra)
Current Store : [0x80001694] : sd t5, 872(ra) -- Store: [0x80003758]:0x00080006FBFF0800




Last Coverpoint : ['rs1_h2_val == -32768']
Last Code Sequence : 
	-[0x800016c4]:KHMTT16 t6, t5, t4
	-[0x800016c8]:sd t6, 880(ra)
Current Store : [0x800016cc] : sd t5, 888(ra) -- Store: [0x80003768]:0xEFFF8000FFF90800




Last Coverpoint : ['rs1_h2_val == 512']
Last Code Sequence : 
	-[0x80001700]:KHMTT16 t6, t5, t4
	-[0x80001704]:sd t6, 896(ra)
Current Store : [0x80001708] : sd t5, 904(ra) -- Store: [0x80003778]:0xFFFD0200DFFF0010




Last Coverpoint : ['rs2_h1_val == -513']
Last Code Sequence : 
	-[0x8000173c]:KHMTT16 t6, t5, t4
	-[0x80001740]:sd t6, 912(ra)
Current Store : [0x80001744] : sd t5, 920(ra) -- Store: [0x80003788]:0x0001DFFF0009FF7F




Last Coverpoint : ['rs1_h2_val == 16']
Last Code Sequence : 
	-[0x80001770]:KHMTT16 t6, t5, t4
	-[0x80001774]:sd t6, 928(ra)
Current Store : [0x80001778] : sd t5, 936(ra) -- Store: [0x80003798]:0xFBFF00100006FFFD




Last Coverpoint : ['rs1_h2_val == 2']
Last Code Sequence : 
	-[0x800017a8]:KHMTT16 t6, t5, t4
	-[0x800017ac]:sd t6, 944(ra)
Current Store : [0x800017b0] : sd t5, 952(ra) -- Store: [0x800037a8]:0x00080002FFFE0800




Last Coverpoint : ['rs1_h2_val == 1']
Last Code Sequence : 
	-[0x800017e4]:KHMTT16 t6, t5, t4
	-[0x800017e8]:sd t6, 960(ra)
Current Store : [0x800017ec] : sd t5, 968(ra) -- Store: [0x800037b8]:0x5555000100090200




Last Coverpoint : ['rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x8000181c]:KHMTT16 t6, t5, t4
	-[0x80001820]:sd t6, 976(ra)
Current Store : [0x80001824] : sd t5, 984(ra) -- Store: [0x800037c8]:0x3FFFFFFFAAAAAAAA




Last Coverpoint : ['rs1_h3_val == -129']
Last Code Sequence : 
	-[0x80001850]:KHMTT16 t6, t5, t4
	-[0x80001854]:sd t6, 992(ra)
Current Store : [0x80001858] : sd t5, 1000(ra) -- Store: [0x800037d8]:0xFF7FAAAA00040004




Last Coverpoint : ['rs1_h1_val == -17']
Last Code Sequence : 
	-[0x8000188c]:KHMTT16 t6, t5, t4
	-[0x80001890]:sd t6, 1008(ra)
Current Store : [0x80001894] : sd t5, 1016(ra) -- Store: [0x800037e8]:0x0040FFFDFFEF5555




Last Coverpoint : ['rs2_h2_val == 1']
Last Code Sequence : 
	-[0x800018c8]:KHMTT16 t6, t5, t4
	-[0x800018cc]:sd t6, 1024(ra)
Current Store : [0x800018d0] : sd t5, 1032(ra) -- Store: [0x800037f8]:0x0004AAAA3FFF7FFF




Last Coverpoint : ['rs2_h3_val == -1']
Last Code Sequence : 
	-[0x800018f8]:KHMTT16 t6, t5, t4
	-[0x800018fc]:sd t6, 1040(ra)
Current Store : [0x80001900] : sd t5, 1048(ra) -- Store: [0x80003808]:0x0007400055550000




Last Coverpoint : ['rs2_h1_val == 16']
Last Code Sequence : 
	-[0x80001934]:KHMTT16 t6, t5, t4
	-[0x80001938]:sd t6, 1056(ra)
Current Store : [0x8000193c] : sd t5, 1064(ra) -- Store: [0x80003818]:0xFFFBFFFC0006FFF9




Last Coverpoint : ['opcode : khmtt16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == -1025', 'rs2_h2_val == 0', 'rs2_h1_val == 512', 'rs1_h1_val == 16384', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80001970]:KHMTT16 t6, t5, t4
	-[0x80001974]:sd t6, 1072(ra)
Current Store : [0x80001978] : sd t5, 1080(ra) -- Store: [0x80003828]:0x0007000540000800




Last Coverpoint : ['opcode : khmtt16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val == -32768', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == 21845', 'rs2_h2_val == -1', 'rs2_h1_val == -2', 'rs1_h3_val == 16384', 'rs1_h2_val == 256', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x800019a4]:KHMTT16 t6, t5, t4
	-[0x800019a8]:sd t6, 1088(ra)
Current Store : [0x800019ac] : sd t5, 1096(ra) -- Store: [0x80003838]:0x4000010002008000




Last Coverpoint : ['opcode : khmtt16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == 2048', 'rs2_h1_val == 2048', 'rs2_h0_val == 8', 'rs1_h3_val == 8192', 'rs1_h1_val == -9', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x800019e0]:KHMTT16 t6, t5, t4
	-[0x800019e4]:sd t6, 1104(ra)
Current Store : [0x800019e8] : sd t5, 1112(ra) -- Store: [0x80003848]:0x20003FFFFFF7FFFB




Last Coverpoint : ['opcode : khmtt16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == 16', 'rs2_h2_val == 64', 'rs2_h1_val == 256', 'rs1_h3_val == -1', 'rs1_h2_val == 256', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80001a18]:KHMTT16 t6, t5, t4
	-[0x80001a1c]:sd t6, 1120(ra)
Current Store : [0x80001a20] : sd t5, 1128(ra) -- Store: [0x80003858]:0xFFFF0100C000EFFF





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

|s.no|            signature             |                                                                                                                                                                                                                                                              coverpoints                                                                                                                                                                                                                                                               |                                  code                                  |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x000038E300000000|- opcode : khmtt16<br> - rs1 : x30<br> - rs2 : x30<br> - rd : x6<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h3_val == 21845<br> - rs2_h2_val == -1<br> - rs2_h1_val == -2<br> - rs1_h3_val == 21845<br> - rs1_h2_val == -1<br> - rs1_h1_val == -2<br> |[0x800003cc]:KHMTT16 t1, t5, t5<br> [0x800003d0]:sd t1, 0(a1)<br>       |
|   2|[0x80003220]<br>0x00007FFE00000020|- rs1 : x23<br> - rs2 : x23<br> - rd : x23<br> - rs1 == rs2 == rd<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs2_h3_val == 32767<br> - rs2_h2_val == -17<br> - rs2_h1_val == 1024<br> - rs2_h0_val == -513<br> - rs1_h3_val == 32767<br> - rs1_h2_val == -17<br> - rs1_h1_val == 1024<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                   |[0x80000404]:KHMTT16 s7, s7, s7<br> [0x80000408]:sd s7, 16(a1)<br>      |
|   3|[0x80003230]<br>0xFFFFFFEF00000000|- rs1 : x7<br> - rs2 : x5<br> - rd : x2<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h0_val != rs2_h0_val<br> - rs2_h3_val == 64<br> - rs2_h0_val == -5<br> - rs1_h3_val == -8193<br> - rs1_h2_val == -9<br>                                                                                                                                    |[0x80000440]:KHMTT16 sp, t2, t0<br> [0x80000444]:sd sp, 32(a1)<br>      |
|   4|[0x80003240]<br>0x0000000000000000|- rs1 : x21<br> - rs2 : x27<br> - rd : x21<br> - rs1 == rd != rs2<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs2_h1_val == 4<br> - rs1_h3_val == -9<br> - rs1_h2_val == -2049<br> - rs1_h1_val == 2<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                                                        |[0x80000478]:KHMTT16 s5, s5, s11<br> [0x8000047c]:sd s5, 48(a1)<br>     |
|   5|[0x80003250]<br>0xFFFFFFFFFFFFFFFA|- rs1 : x17<br> - rs2 : x12<br> - rd : x12<br> - rs2 == rd != rs1<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h3_val == -2<br> - rs2_h2_val == -65<br> - rs1_h3_val == 8<br> - rs1_h1_val == 32767<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                     |[0x800004a8]:KHMTT16 a2, a7, a2<br> [0x800004ac]:sd a2, 64(a1)<br>      |
|   6|[0x80003260]<br>0x00000000FFFFFFF9|- rs1 : x18<br> - rs2 : x15<br> - rd : x31<br> - rs1_h3_val == 0<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800004dc]:KHMTT16 t6, s2, a5<br> [0x800004e0]:sd t6, 80(a1)<br>      |
|   7|[0x80003270]<br>0xFFFFFFFF00000000|- rs1 : x27<br> - rs2 : x31<br> - rd : x7<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs2_h3_val == 8<br> - rs2_h2_val == 16384<br> - rs1_h2_val == 64<br> - rs1_h1_val == 512<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                             |[0x80000514]:KHMTT16 t2, s11, t6<br> [0x80000518]:sd t2, 96(a1)<br>     |
|   8|[0x80003280]<br>0x00000010000038E3|- rs1 : x15<br> - rs2 : x17<br> - rd : x25<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == -2049<br> - rs2_h1_val == 21845<br> - rs1_h3_val == -257<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                           |[0x8000055c]:KHMTT16 s9, a5, a7<br> [0x80000560]:sd s9, 112(a1)<br>     |
|   9|[0x80003290]<br>0x00000020FFFFFFFF|- rs1 : x16<br> - rs2 : x6<br> - rd : x18<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h3_val == -16385<br> - rs2_h0_val == 8192<br> - rs1_h3_val == -65<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                        |[0x80000594]:KHMTT16 s2, a6, t1<br> [0x80000598]:sd s2, 128(a1)<br>     |
|  10|[0x800032a0]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x7<br> - rd : x3<br> - rs2_h3_val == -33<br> - rs2_h2_val == 32<br> - rs2_h1_val == -257<br> - rs2_h0_val == 64<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br>                                                                                                                                                                                                                                                                                                                                                  |[0x800005d0]:KHMTT16 gp, zero, t2<br> [0x800005d4]:sd gp, 144(a1)<br>   |
|  11|[0x800032b0]<br>0x0000010000000100|- rs1 : x9<br> - rs2 : x8<br> - rd : x29<br> - rs2_h3_val == -8193<br> - rs1_h3_val == -1025<br> - rs1_h2_val == 128<br> - rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000610]:KHMTT16 t4, s1, fp<br> [0x80000614]:sd t4, 160(a1)<br>     |
|  12|[0x800032c0]<br>0xFFFFFFFBFFFFFF7F|- rs1 : x20<br> - rs2 : x2<br> - rd : x1<br> - rs2_h3_val == -21846<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 4096<br> - rs1_h2_val == -33<br> - rs1_h1_val == -257<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                    |[0x80000650]:KHMTT16 ra, s4, sp<br> [0x80000654]:sd ra, 176(a1)<br>     |
|  13|[0x800032d0]<br>0x00000000FFFFFFFF|- rs1 : x26<br> - rs2 : x19<br> - rd : x22<br> - rs2_h3_val == -4097<br> - rs2_h2_val == 4096<br> - rs2_h1_val == 8<br> - rs2_h0_val == 8<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                 |[0x8000068c]:KHMTT16 s6, s10, s3<br> [0x80000690]:sd s6, 192(a1)<br>    |
|  14|[0x800032e0]<br>0xFFFFFFFF00000004|- rs1 : x4<br> - rs2 : x29<br> - rd : x15<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h3_val == -1025<br> - rs2_h2_val == 21845<br> - rs2_h0_val == -65<br> - rs1_h2_val == -1025<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                   |[0x800006c4]:KHMTT16 a5, tp, t4<br> [0x800006c8]:sd a5, 208(a1)<br>     |
|  15|[0x800032f0]<br>0xFFFFFFFF00000000|- rs1 : x13<br> - rs2 : x18<br> - rd : x10<br> - rs2_h3_val == -513<br> - rs2_h2_val == -21846<br> - rs2_h1_val == 2<br> - rs2_h0_val == -1025<br> - rs1_h2_val == -257<br>                                                                                                                                                                                                                                                                                                                                                             |[0x80000700]:KHMTT16 a0, a3, s2<br> [0x80000704]:sd a0, 224(a1)<br>     |
|  16|[0x80003300]<br>0x0000000000000000|- rs1 : x2<br> - rs2 : x0<br> - rd : x26<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                          |[0x8000074c]:KHMTT16 s10, sp, zero<br> [0x80000750]:sd s10, 0(t2)<br>   |
|  17|[0x80003310]<br>0x0000008100000000|- rs1 : x12<br> - rs2 : x4<br> - rd : x14<br> - rs2_h3_val == -129<br> - rs2_h2_val == 256<br> - rs2_h1_val == 64<br> - rs2_h0_val == -21846<br> - rs1_h3_val == -32768<br> - rs1_h2_val == -16385<br> - rs1_h1_val == 4<br>                                                                                                                                                                                                                                                                                                            |[0x80000788]:KHMTT16 a4, a2, tp<br> [0x8000078c]:sd a4, 16(t2)<br>      |
|  18|[0x80003320]<br>0x0000000000000000|- rs1 : x25<br> - rs2 : x1<br> - rd : x24<br> - rs2_h3_val == -65<br> - rs2_h0_val == 21845<br> - rs1_h3_val == -1<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                        |[0x800007bc]:KHMTT16 s8, s9, ra<br> [0x800007c0]:sd s8, 32(t2)<br>      |
|  19|[0x80003330]<br>0x00000008FFFFFFFF|- rs1 : x14<br> - rs2 : x25<br> - rd : x11<br> - rs2_h3_val == -17<br> - rs2_h2_val == -513<br> - rs2_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800007f4]:KHMTT16 a1, a4, s9<br> [0x800007f8]:sd a1, 48(t2)<br>      |
|  20|[0x80003340]<br>0x00000000FFFFFFF7|- rs1 : x31<br> - rs2 : x26<br> - rd : x13<br> - rs2_h3_val == -9<br> - rs2_h2_val == -16385<br> - rs2_h0_val == 4<br> - rs1_h3_val == -3<br> - rs1_h1_val == -4097<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                          |[0x80000820]:KHMTT16 a3, t6, s10<br> [0x80000824]:sd a3, 64(t2)<br>     |
|  21|[0x80003350]<br>0xFFFFFFFF00000100|- rs1 : x8<br> - rs2 : x11<br> - rd : x5<br> - rs2_h3_val == -5<br> - rs2_h2_val == -3<br> - rs2_h1_val == -1025<br> - rs2_h0_val == -32768<br> - rs1_h3_val == 512<br> - rs1_h2_val == -65<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                               |[0x80000858]:KHMTT16 t0, fp, a1<br> [0x8000085c]:sd t0, 80(t2)<br>      |
|  22|[0x80003360]<br>0x00000000FFFFFFFF|- rs1 : x5<br> - rs2 : x21<br> - rd : x4<br> - rs2_h3_val == -3<br> - rs2_h2_val == -9<br> - rs2_h1_val == 32<br> - rs2_h0_val == -3<br> - rs1_h3_val == -33<br> - rs1_h2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                 |[0x80000894]:KHMTT16 tp, t0, s5<br> [0x80000898]:sd tp, 96(t2)<br>      |
|  23|[0x80003370]<br>0x00002001FFFFFFFF|- rs1 : x11<br> - rs2 : x9<br> - rd : x30<br> - rs2_h3_val == -32768<br> - rs2_h1_val == -17<br> - rs2_h0_val == -2<br> - rs1_h2_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                       |[0x800008d0]:KHMTT16 t5, a1, s1<br> [0x800008d4]:sd t5, 112(t2)<br>     |
|  24|[0x80003380]<br>0xFFFFD555FFFFFFFF|- rs1 : x22<br> - rs2 : x16<br> - rd : x20<br> - rs2_h3_val == 16384<br> - rs1_h3_val == -21846<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000090c]:KHMTT16 s4, s6, a6<br> [0x80000910]:sd s4, 128(t2)<br>     |
|  25|[0x80003390]<br>0xFFFFFFFEFFFFFFFF|- rs1 : x3<br> - rs2 : x10<br> - rd : x8<br> - rs2_h3_val == 8192<br> - rs1_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x8000093c]:KHMTT16 fp, gp, a0<br> [0x80000940]:sd fp, 144(t2)<br>     |
|  26|[0x800033a0]<br>0xFFFFFFFF00000000|- rs1 : x6<br> - rs2 : x22<br> - rd : x27<br> - rs2_h3_val == 4096<br> - rs2_h2_val == -4097<br> - rs2_h1_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000970]:KHMTT16 s11, t1, s6<br> [0x80000974]:sd s11, 160(t2)<br>   |
|  27|[0x800033b0]<br>0x0000000000000000|- rs1 : x1<br> - rs2 : x20<br> - rd : x0<br> - rs2_h3_val == 2048<br> - rs2_h1_val == 2048<br> - rs1_h3_val == 8192<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                          |[0x800009ac]:KHMTT16 zero, ra, s4<br> [0x800009b0]:sd zero, 176(t2)<br> |
|  28|[0x800033c0]<br>0xFFFFFFFF00000000|- rs1 : x19<br> - rs2 : x28<br> - rd : x16<br> - rs2_h3_val == 1024<br> - rs2_h2_val == 128<br> - rs2_h0_val == -2049<br> - rs1_h2_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                    |[0x800009e8]:KHMTT16 a6, s3, t3<br> [0x800009ec]:sd a6, 192(t2)<br>     |
|  29|[0x800033d0]<br>0x0000000000000000|- rs1 : x28<br> - rs2 : x3<br> - rd : x9<br> - rs1_h0_val == -32768<br> - rs2_h3_val == 512<br> - rs2_h0_val == 2048<br> - rs1_h3_val == 4<br> - rs1_h2_val == -5<br> - rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                                            |[0x80000a20]:KHMTT16 s1, t3, gp<br> [0x80000a24]:sd s1, 208(t2)<br>     |
|  30|[0x800033e0]<br>0x00000080FFFFFFFD|- rs1 : x29<br> - rs2 : x13<br> - rd : x17<br> - rs2_h3_val == 256<br> - rs2_h1_val == -5<br> - rs2_h0_val == -9<br> - rs1_h3_val == 16384<br> - rs1_h2_val == 4<br> - rs1_h1_val == 16384<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                 |[0x80000a5c]:KHMTT16 a7, t4, a3<br> [0x80000a60]:sd a7, 224(t2)<br>     |
|  31|[0x800033f0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x10<br> - rs2 : x14<br> - rd : x19<br> - rs2_h3_val == 128<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000aa0]:KHMTT16 s3, a0, a4<br> [0x80000aa4]:sd s3, 0(ra)<br>       |
|  32|[0x80003400]<br>0x00000008FFFFFFFF|- rs1 : x24<br> - rs2_h3_val == 32<br> - rs2_h2_val == -5<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000adc]:KHMTT16 s9, s8, s4<br> [0x80000ae0]:sd s9, 16(ra)<br>      |
|  33|[0x80003410]<br>0x0000000000000000|- rs2 : x24<br> - rs2_h3_val == 16<br> - rs2_h2_val == 64<br> - rs2_h1_val == 256<br> - rs1_h2_val == 256<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000b14]:KHMTT16 zero, a2, s8<br> [0x80000b18]:sd zero, 32(ra)<br>  |
|  34|[0x80003420]<br>0xFFFFFFFFFFFFFFFD|- rd : x28<br> - rs2_h3_val == 4<br> - rs1_h1_val == -5<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000b4c]:KHMTT16 t3, t5, s10<br> [0x80000b50]:sd t3, 48(ra)<br>     |
|  35|[0x80003430]<br>0xFFFFFFFFFFFFFFFC|- rs2_h3_val == 2<br> - rs2_h1_val == -32768<br> - rs1_h3_val == -2<br> - rs1_h2_val == -8193<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000b80]:KHMTT16 t6, t5, t4<br> [0x80000b84]:sd t6, 64(ra)<br>      |
|  36|[0x80003440]<br>0x00000000FFFFFFFF|- rs2_h3_val == 1<br> - rs1_h3_val == 2048<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000bb4]:KHMTT16 t6, t5, t4<br> [0x80000bb8]:sd t6, 80(ra)<br>      |
|  37|[0x80003450]<br>0x0000000000000000|- rs2_h1_val == -65<br> - rs1_h1_val == -3<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000bec]:KHMTT16 t6, t5, t4<br> [0x80000bf0]:sd t6, 96(ra)<br>      |
|  38|[0x80003460]<br>0xFFFFFFFC00000041|- rs1_h2_val == 1024<br> - rs1_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000c18]:KHMTT16 t6, t5, t4<br> [0x80000c1c]:sd t6, 112(ra)<br>     |
|  39|[0x80003470]<br>0xFFFFFFFF00000FFF|- rs2_h0_val == -129<br> - rs1_h3_val == 2<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000c4c]:KHMTT16 t6, t5, t4<br> [0x80000c50]:sd t6, 128(ra)<br>     |
|  40|[0x80003480]<br>0xFFFFFFEF00000001|- rs1_h3_val == 64<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000c84]:KHMTT16 t6, t5, t4<br> [0x80000c88]:sd t6, 144(ra)<br>     |
|  41|[0x80003490]<br>0xFFFFFFFF00000080|- rs1_h2_val == 32767<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000cb4]:KHMTT16 t6, t5, t4<br> [0x80000cb8]:sd t6, 160(ra)<br>     |
|  42|[0x800034a0]<br>0xFFFFFFFF00000000|- rs2_h2_val == 1024<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000ce4]:KHMTT16 t6, t5, t4<br> [0x80000ce8]:sd t6, 176(ra)<br>     |
|  43|[0x800034b0]<br>0x00000008FFFFFFFF|- rs2_h2_val == 4<br> - rs1_h2_val == 21845<br> - rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000d20]:KHMTT16 t6, t5, t4<br> [0x80000d24]:sd t6, 192(ra)<br>     |
|  44|[0x800034c0]<br>0xFFFFFFFFFFFFFFFF|- rs2_h2_val == 8<br> - rs2_h0_val == -33<br> - rs1_h3_val == 128<br> - rs1_h1_val == 16<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000d50]:KHMTT16 t6, t5, t4<br> [0x80000d54]:sd t6, 208(ra)<br>     |
|  45|[0x800034d0]<br>0x00000008FFFFFFFF|- rs2_h0_val == -1<br> - rs1_h2_val == -129<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000d8c]:KHMTT16 t6, t5, t4<br> [0x80000d90]:sd t6, 224(ra)<br>     |
|  46|[0x800034e0]<br>0xFFFFFFFB00000000|- rs2_h3_val == -257<br> - rs2_h2_val == 512<br> - rs2_h1_val == -9<br> - rs1_h2_val == 4096<br> - rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000dc8]:KHMTT16 t6, t5, t4<br> [0x80000dcc]:sd t6, 240(ra)<br>     |
|  47|[0x800034f0]<br>0x00000000FFFFFFDF|- rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000dfc]:KHMTT16 t6, t5, t4<br> [0x80000e00]:sd t6, 256(ra)<br>     |
|  48|[0x80003500]<br>0x0000000200000001|- rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000e38]:KHMTT16 t6, t5, t4<br> [0x80000e3c]:sd t6, 272(ra)<br>     |
|  49|[0x80003510]<br>0xFFFFFFFE00000080|- rs2_h2_val == -2049<br> - rs2_h1_val == -4097<br> - rs1_h2_val == 8192<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000e6c]:KHMTT16 t6, t5, t4<br> [0x80000e70]:sd t6, 288(ra)<br>     |
|  50|[0x80003520]<br>0x0000000000000041|- rs2_h0_val == 2<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000ea8]:KHMTT16 t6, t5, t4<br> [0x80000eac]:sd t6, 304(ra)<br>     |
|  51|[0x80003530]<br>0x00000007FFFFFFFF|- rs1_h3_val == 16<br> - rs1_h2_val == -513<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000ee4]:KHMTT16 t6, t5, t4<br> [0x80000ee8]:sd t6, 320(ra)<br>     |
|  52|[0x80003540]<br>0x00000000FFFFFFFE|- rs2_h2_val == -33<br> - rs2_h1_val == -2049<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000f20]:KHMTT16 t6, t5, t4<br> [0x80000f24]:sd t6, 336(ra)<br>     |
|  53|[0x80003550]<br>0x00000000FFFFFFFB|- rs2_h2_val == -32768<br> - rs1_h3_val == -513<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000f54]:KHMTT16 t6, t5, t4<br> [0x80000f58]:sd t6, 352(ra)<br>     |
|  54|[0x80003560]<br>0x00000000FFFFFFFF|- rs2_h2_val == -8193<br> - rs2_h0_val == 1024<br> - rs1_h1_val == -2049<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000f88]:KHMTT16 t6, t5, t4<br> [0x80000f8c]:sd t6, 368(ra)<br>     |
|  55|[0x80003570]<br>0x00000003FFFFFFFF|- rs2_h1_val == 8192<br> - rs1_h3_val == -5<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000fc0]:KHMTT16 t6, t5, t4<br> [0x80000fc4]:sd t6, 384(ra)<br>     |
|  56|[0x80003580]<br>0x0000002BFFFFFFFD|- rs2_h2_val == -257<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001004]:KHMTT16 t6, t5, t4<br> [0x80001008]:sd t6, 400(ra)<br>     |
|  57|[0x80003590]<br>0x0000000000000200|- rs1_h3_val == -2049<br> - rs1_h2_val == 8<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001038]:KHMTT16 t6, t5, t4<br> [0x8000103c]:sd t6, 416(ra)<br>     |
|  58|[0x800035a0]<br>0xFFFFFFFF00000000|- rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001070]:KHMTT16 t6, t5, t4<br> [0x80001074]:sd t6, 432(ra)<br>     |
|  59|[0x800035b0]<br>0xFFFFFFFF00000010|- rs2_h1_val == -33<br> - rs1_h1_val == -16385<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800010a8]:KHMTT16 t6, t5, t4<br> [0x800010ac]:sd t6, 448(ra)<br>     |
|  60|[0x800035c0]<br>0xFFFFFFFF00000000|- rs2_h2_val == 32767<br> - rs2_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800010e4]:KHMTT16 t6, t5, t4<br> [0x800010e8]:sd t6, 464(ra)<br>     |
|  61|[0x800035d0]<br>0xFFFFFFFF00000000|- rs2_h1_val == -1<br> - rs2_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001120]:KHMTT16 t6, t5, t4<br> [0x80001124]:sd t6, 480(ra)<br>     |
|  62|[0x800035e0]<br>0x0000000000000004|- rs2_h2_val == 8192<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001158]:KHMTT16 t6, t5, t4<br> [0x8000115c]:sd t6, 496(ra)<br>     |
|  63|[0x800035f0]<br>0x0000000F00000100|- rs2_h1_val == 512<br> - rs2_h0_val == -16385<br> - rs1_h3_val == 32<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001190]:KHMTT16 t6, t5, t4<br> [0x80001194]:sd t6, 512(ra)<br>     |
|  64|[0x80003600]<br>0x00000000FFFFFFFE|- rs2_h1_val == 128<br> - rs2_h0_val == -4097<br> - rs1_h2_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800011cc]:KHMTT16 t6, t5, t4<br> [0x800011d0]:sd t6, 528(ra)<br>     |
|  65|[0x80003610]<br>0x00000000FFFFFFFF|- rs2_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001208]:KHMTT16 t6, t5, t4<br> [0x8000120c]:sd t6, 544(ra)<br>     |
|  66|[0x80003620]<br>0x00000200FFFFFFFF|- rs2_h2_val == 16<br> - rs2_h0_val == -17<br> - rs1_h3_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001244]:KHMTT16 t6, t5, t4<br> [0x80001248]:sd t6, 560(ra)<br>     |
|  67|[0x80003630]<br>0xFFFFFF7FFFFFFFEF|- rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001280]:KHMTT16 t6, t5, t4<br> [0x80001284]:sd t6, 576(ra)<br>     |
|  68|[0x80003640]<br>0xFFFFEAAAFFFFD554|- rs2_h1_val == -16385<br> - rs2_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800012c8]:KHMTT16 t6, t5, t4<br> [0x800012cc]:sd t6, 592(ra)<br>     |
|  69|[0x80003650]<br>0x00000000FFFFFFFF|- rs2_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001304]:KHMTT16 t6, t5, t4<br> [0x80001308]:sd t6, 608(ra)<br>     |
|  70|[0x80003660]<br>0xFFFFFFFF00000000|- rs2_h0_val == 32<br> - rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001338]:KHMTT16 t6, t5, t4<br> [0x8000133c]:sd t6, 624(ra)<br>     |
|  71|[0x80003670]<br>0x0000000600000000|- rs2_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001370]:KHMTT16 t6, t5, t4<br> [0x80001374]:sd t6, 640(ra)<br>     |
|  72|[0x80003680]<br>0xFFFFFFFFFFFFFFF7|- rs2_h1_val == 4096<br> - rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800013a4]:KHMTT16 t6, t5, t4<br> [0x800013a8]:sd t6, 656(ra)<br>     |
|  73|[0x80003690]<br>0x0000080000000004|- rs1_h3_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800013e4]:KHMTT16 t6, t5, t4<br> [0x800013e8]:sd t6, 672(ra)<br>     |
|  74|[0x800036a0]<br>0x00000800FFFFFF7F|- rs1_h3_val == 4096<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001420]:KHMTT16 t6, t5, t4<br> [0x80001424]:sd t6, 688(ra)<br>     |
|  75|[0x800036b0]<br>0x00000000FFFFFFDF|- rs1_h3_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001450]:KHMTT16 t6, t5, t4<br> [0x80001454]:sd t6, 704(ra)<br>     |
|  76|[0x800036c0]<br>0xFFFFFFFD00000000|- rs1_h3_val == 256<br> - rs1_h2_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001484]:KHMTT16 t6, t5, t4<br> [0x80001488]:sd t6, 720(ra)<br>     |
|  77|[0x800036d0]<br>0xFFFFFFDF00000000|- rs2_h2_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800014c4]:KHMTT16 t6, t5, t4<br> [0x800014c8]:sd t6, 736(ra)<br>     |
|  78|[0x800036e0]<br>0x00000000FFFFFFFF|- rs2_h2_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001500]:KHMTT16 t6, t5, t4<br> [0x80001504]:sd t6, 752(ra)<br>     |
|  79|[0x800036f0]<br>0xFFFFFFFFFFFFFE00|- rs1_h3_val == 1<br> - rs1_h2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001534]:KHMTT16 t6, t5, t4<br> [0x80001538]:sd t6, 768(ra)<br>     |
|  80|[0x80003700]<br>0x00000000FFFFFFFF|- rs2_h2_val == -2<br> - rs2_h1_val == -129<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001568]:KHMTT16 t6, t5, t4<br> [0x8000156c]:sd t6, 784(ra)<br>     |
|  81|[0x80003710]<br>0x00000000FFFFFFDF|- rs1_h2_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800015a8]:KHMTT16 t6, t5, t4<br> [0x800015ac]:sd t6, 800(ra)<br>     |
|  82|[0x80003720]<br>0xFFFFFFEFFFFFFFFF|- rs2_h2_val == 2048<br> - rs1_h3_val == -17<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800015e4]:KHMTT16 t6, t5, t4<br> [0x800015e8]:sd t6, 816(ra)<br>     |
|  83|[0x80003730]<br>0xFFFFFFFF00000000|- rs2_h2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001620]:KHMTT16 t6, t5, t4<br> [0x80001624]:sd t6, 832(ra)<br>     |
|  84|[0x80003740]<br>0x00000000FFFFFFFE|- rs2_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001650]:KHMTT16 t6, t5, t4<br> [0x80001654]:sd t6, 848(ra)<br>     |
|  85|[0x80003750]<br>0xFFFFFFFF00000100|- rs2_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000168c]:KHMTT16 t6, t5, t4<br> [0x80001690]:sd t6, 864(ra)<br>     |
|  86|[0x80003760]<br>0x00000100FFFFFFFF|- rs1_h2_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800016c4]:KHMTT16 t6, t5, t4<br> [0x800016c8]:sd t6, 880(ra)<br>     |
|  87|[0x80003770]<br>0xFFFFFFFFFFFFFFDF|- rs1_h2_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001700]:KHMTT16 t6, t5, t4<br> [0x80001704]:sd t6, 896(ra)<br>     |
|  88|[0x80003780]<br>0xFFFFFFFFFFFFFFFF|- rs2_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000173c]:KHMTT16 t6, t5, t4<br> [0x80001740]:sd t6, 912(ra)<br>     |
|  89|[0x80003790]<br>0xFFFFFFFFFFFFFFFF|- rs1_h2_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001770]:KHMTT16 t6, t5, t4<br> [0x80001774]:sd t6, 928(ra)<br>     |
|  90|[0x800037a0]<br>0xFFFFFFFF00000000|- rs1_h2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800017a8]:KHMTT16 t6, t5, t4<br> [0x800017ac]:sd t6, 944(ra)<br>     |
|  91|[0x800037b0]<br>0x000038E3FFFFFFFF|- rs1_h2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800017e4]:KHMTT16 t6, t5, t4<br> [0x800017e8]:sd t6, 960(ra)<br>     |
|  92|[0x800037c0]<br>0x000000070000002B|- rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000181c]:KHMTT16 t6, t5, t4<br> [0x80001820]:sd t6, 976(ra)<br>     |
|  93|[0x800037d0]<br>0xFFFFFFF7FFFFFFFF|- rs1_h3_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001850]:KHMTT16 t6, t5, t4<br> [0x80001854]:sd t6, 992(ra)<br>     |
|  94|[0x800037e0]<br>0x0000002000000000|- rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000188c]:KHMTT16 t6, t5, t4<br> [0x80001890]:sd t6, 1008(ra)<br>    |
|  95|[0x800037f0]<br>0xFFFFFFFEFFFFFFFB|- rs2_h2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800018c8]:KHMTT16 t6, t5, t4<br> [0x800018cc]:sd t6, 1024(ra)<br>    |
|  96|[0x80003800]<br>0xFFFFFFFFFFFFC71C|- rs2_h3_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800018f8]:KHMTT16 t6, t5, t4<br> [0x800018fc]:sd t6, 1040(ra)<br>    |
|  97|[0x80003810]<br>0xFFFFFFFE00000000|- rs2_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001934]:KHMTT16 t6, t5, t4<br> [0x80001938]:sd t6, 1056(ra)<br>    |
