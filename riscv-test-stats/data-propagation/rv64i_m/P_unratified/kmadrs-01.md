
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001ab0')]      |
| SIG_REGION                | [('0x80003210', '0x80003890', '208 dwords')]      |
| COV_LABELS                | kmadrs      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmadrs-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 208      |
| STAT1                     | 101      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 104     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001098]:KMADRS t6, t5, t4
      [0x8000109c]:sd t6, 592(t0)
 -- Signature Address: 0x800035a0 Data: 0x282937AC15348B98
 -- Redundant Coverpoints hit by the op
      - opcode : kmadrs
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h3_val == 64
      - rs2_h1_val == 0
      - rs2_h0_val == 32
      - rs1_h3_val == 16
      - rs1_h0_val == -8193




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800019e4]:KMADRS t6, t5, t4
      [0x800019e8]:sd t6, 1280(t0)
 -- Signature Address: 0x80003850 Data: 0x1BA6B4B1FDE1E76C
 -- Redundant Coverpoints hit by the op
      - opcode : kmadrs
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val > 0
      - rs2_h3_val == 8192
      - rs2_h2_val == 0
      - rs2_h1_val == -129
      - rs2_h0_val == 1024
      - rs1_h2_val == 64
      - rs1_h1_val == 1024
      - rs1_h0_val == 128




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a98]:KMADRS t6, t5, t4
      [0x80001a9c]:sd t6, 1328(t0)
 -- Signature Address: 0x80003880 Data: 0xEB88FEB4FD22294D
 -- Redundant Coverpoints hit by the op
      - opcode : kmadrs
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h3_val == 32767
      - rs2_h2_val == -3
      - rs2_h1_val == -257
      - rs2_h0_val == -65
      - rs1_h3_val == 16384
      - rs1_h2_val == -1025
      - rs1_h1_val == 512
      - rs1_h0_val == 2048






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmadrs', 'rs1 : x0', 'rs2 : x0', 'rd : x17', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h2_val == rs2_h2_val', 'rs1_h1_val == rs2_h1_val', 'rs1_h0_val == rs2_h0_val', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h3_val == 0', 'rs1_h2_val == 0', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x800003d0]:KMADRS a7, zero, zero
	-[0x800003d4]:sd a7, 0(sp)
Current Store : [0x800003d8] : sd zero, 8(sp) -- Store: [0x80003218]:0x0000000000000000




Last Coverpoint : ['rs1 : x27', 'rs2 : x27', 'rd : x27', 'rs1 == rs2 == rd', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 16384', 'rs2_h2_val == -1', 'rs2_h1_val == 2', 'rs1_h3_val == 16384', 'rs1_h2_val == -1', 'rs1_h1_val == 2']
Last Code Sequence : 
	-[0x8000040c]:KMADRS s11, s11, s11
	-[0x80000410]:sd s11, 16(sp)
Current Store : [0x80000414] : sd s11, 24(sp) -- Store: [0x80003228]:0x300100001001BFFC




Last Coverpoint : ['rs1 : x14', 'rs2 : x12', 'rd : x5', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h2_val == -257', 'rs2_h1_val == -21846', 'rs2_h0_val == -513', 'rs1_h3_val == -8193', 'rs1_h1_val == -3', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000450]:KMADRS t0, a4, a2
	-[0x80000454]:sd t0, 32(sp)
Current Store : [0x80000458] : sd a4, 40(sp) -- Store: [0x80003238]:0xDFFFFFF8FFFDFFBF




Last Coverpoint : ['rs1 : x11', 'rs2 : x23', 'rd : x11', 'rs1 == rd != rs2', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == -129', 'rs2_h2_val == -2049', 'rs2_h1_val == 32767', 'rs2_h0_val == 512', 'rs1_h3_val == -5', 'rs1_h2_val == 2', 'rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x8000048c]:KMADRS a1, a1, s7
	-[0x80000490]:sd a1, 48(sp)
Current Store : [0x80000494] : sd a1, 56(sp) -- Store: [0x80003248]:0xFFFAED7BC0006FF8




Last Coverpoint : ['rs1 : x21', 'rs2 : x1', 'rd : x1', 'rs2 == rd != rs1', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs2_h3_val == -8193', 'rs2_h1_val == -1025', 'rs2_h0_val == 4096', 'rs1_h2_val == -17', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x800004c0]:KMADRS ra, s5, ra
	-[0x800004c4]:sd ra, 64(sp)
Current Store : [0x800004c8] : sd s5, 72(sp) -- Store: [0x80003258]:0x0003FFEFFFF7FFF6




Last Coverpoint : ['rs1 : x3', 'rs2 : x26', 'rd : x25', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs2_h2_val == 21845', 'rs2_h0_val == -3', 'rs1_h3_val == -9', 'rs1_h2_val == 21845', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x800004f4]:KMADRS s9, gp, s10
	-[0x800004f8]:sd s9, 80(sp)
Current Store : [0x800004fc] : sd gp, 88(sp) -- Store: [0x80003268]:0xFFF75555FEFFFFF8




Last Coverpoint : ['rs1 : x31', 'rs2 : x22', 'rd : x15', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs2_h2_val == 128', 'rs2_h0_val == 21845', 'rs1_h2_val == -1025', 'rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x80000534]:KMADRS a5, t6, s6
	-[0x80000538]:sd a5, 96(sp)
Current Store : [0x8000053c] : sd t6, 104(sp) -- Store: [0x80003278]:0x4000FBFFAAAAC000




Last Coverpoint : ['rs1 : x26', 'rs2 : x18', 'rd : x22', 'rs2_h3_val == -2', 'rs1_h3_val == 4', 'rs1_h2_val == 32', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x80000564]:KMADRS s6, s10, s2
	-[0x80000568]:sd s6, 112(sp)
Current Store : [0x8000056c] : sd s10, 120(sp) -- Store: [0x80003288]:0x000400207FFFC000




Last Coverpoint : ['rs1 : x5', 'rs2 : x31', 'rd : x12', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs2_h2_val == -8193', 'rs1_h3_val == 2', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x8000059c]:KMADRS a2, t0, t6
	-[0x800005a0]:sd a2, 128(sp)
Current Store : [0x800005a4] : sd t0, 136(sp) -- Store: [0x80003298]:0x0002FFF80800FFF8




Last Coverpoint : ['rs1 : x17', 'rs2 : x6', 'rd : x3', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h2_val == -3', 'rs2_h0_val == -32768', 'rs1_h3_val == -2', 'rs1_h2_val == 256', 'rs1_h1_val == 16384', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800005d0]:KMADRS gp, a7, t1
	-[0x800005d4]:sd gp, 144(sp)
Current Store : [0x800005d8] : sd a7, 152(sp) -- Store: [0x800032a8]:0xFFFE010040002000




Last Coverpoint : ['rs1 : x16', 'rs2 : x21', 'rd : x18', 'rs2_h3_val == 1', 'rs2_h2_val == -32768', 'rs2_h1_val == 21845', 'rs2_h0_val == 4', 'rs1_h3_val == 8', 'rs1_h2_val == 4', 'rs1_h1_val == 32', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000604]:KMADRS s2, a6, s5
	-[0x80000608]:sd s2, 160(sp)
Current Store : [0x8000060c] : sd a6, 168(sp) -- Store: [0x800032b8]:0x0008000400200008




Last Coverpoint : ['rs1 : x7', 'rs2 : x14', 'rd : x20', 'rs1_h0_val == -32768', 'rs2_h3_val == -21846', 'rs2_h2_val == 4096', 'rs1_h3_val == -32768']
Last Code Sequence : 
	-[0x80000644]:KMADRS s4, t2, a4
	-[0x80000648]:sd s4, 176(sp)
Current Store : [0x8000064c] : sd t2, 184(sp) -- Store: [0x800032c8]:0x8000FFF6FFF68000




Last Coverpoint : ['rs1 : x12', 'rs2 : x8', 'rd : x14', 'rs2_h3_val == 21845', 'rs2_h2_val == 2', 'rs2_h0_val == -5', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000680]:KMADRS a4, a2, fp
	-[0x80000684]:sd a4, 192(sp)
Current Store : [0x80000688] : sd a2, 200(sp) -- Store: [0x800032d8]:0x000800040100FFF6




Last Coverpoint : ['rs1 : x20', 'rs2 : x5', 'rd : x0', 'rs2_h3_val == 32767', 'rs2_h1_val == -257', 'rs2_h0_val == -65', 'rs1_h1_val == 512', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x800006c0]:KMADRS zero, s4, t0
	-[0x800006c4]:sd zero, 208(sp)
Current Store : [0x800006c8] : sd s4, 216(sp) -- Store: [0x800032e8]:0x4000FBFF02000800




Last Coverpoint : ['rs1 : x19', 'rs2 : x13', 'rd : x7', 'rs2_h3_val == -16385', 'rs2_h1_val == -3', 'rs2_h0_val == 32', 'rs1_h2_val == 16', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800006f8]:KMADRS t2, s3, a3
	-[0x800006fc]:sd t2, 224(sp)
Current Store : [0x80000700] : sd s3, 232(sp) -- Store: [0x800032f8]:0x8000001008000080




Last Coverpoint : ['rs1 : x10', 'rs2 : x25', 'rd : x13', 'rs2_h3_val == -4097', 'rs2_h2_val == -16385', 'rs2_h1_val == 4096', 'rs1_h3_val == 1024', 'rs1_h2_val == 16384', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x8000073c]:KMADRS a3, a0, s9
	-[0x80000740]:sd a3, 240(sp)
Current Store : [0x80000744] : sd a0, 248(sp) -- Store: [0x80003308]:0x04004000FFF7FBFF




Last Coverpoint : ['rs1 : x22', 'rs2 : x10', 'rd : x21', 'rs2_h3_val == -2049', 'rs2_h2_val == 8192', 'rs1_h3_val == -1', 'rs1_h1_val == 8192', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000770]:KMADRS s5, s6, a0
	-[0x80000774]:sd s5, 256(sp)
Current Store : [0x80000778] : sd s6, 264(sp) -- Store: [0x80003318]:0xFFFFFFFF20005555




Last Coverpoint : ['rs1 : x25', 'rs2 : x11', 'rd : x28', 'rs2_h3_val == -1025', 'rs2_h2_val == -9', 'rs1_h2_val == 1', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x800007ac]:KMADRS t3, s9, a1
	-[0x800007b0]:sd t3, 272(sp)
Current Store : [0x800007b4] : sd s9, 280(sp) -- Store: [0x80003328]:0x0005000100090002




Last Coverpoint : ['rs1 : x28', 'rs2 : x24', 'rd : x31', 'rs2_h3_val == -513', 'rs2_h1_val == -1', 'rs1_h2_val == -21846', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x800007e8]:KMADRS t6, t3, s8
	-[0x800007ec]:sd t6, 288(sp)
Current Store : [0x800007f0] : sd t3, 296(sp) -- Store: [0x80003338]:0xC000AAAA0100FFFF




Last Coverpoint : ['rs1 : x29', 'rs2 : x30', 'rd : x26', 'rs2_h3_val == -257', 'rs2_h2_val == 16384', 'rs2_h1_val == 16', 'rs2_h0_val == -4097', 'rs1_h1_val == 128', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000818]:KMADRS s10, t4, t5
	-[0x8000081c]:sd s10, 304(sp)
Current Store : [0x80000820] : sd t4, 312(sp) -- Store: [0x80003348]:0x0007400000800200




Last Coverpoint : ['rs1 : x13', 'rs2 : x29', 'rd : x6', 'rs2_h3_val == -65', 'rs1_h3_val == 512', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x8000085c]:KMADRS t1, a3, t4
	-[0x80000860]:sd t1, 0(t0)
Current Store : [0x80000864] : sd a3, 8(t0) -- Store: [0x80003358]:0x0200001000030010




Last Coverpoint : ['rs1 : x30', 'rs2 : x17', 'rd : x4', 'rs2_h3_val == -33', 'rs1_h3_val == -2049', 'rs1_h2_val == -8193', 'rs1_h1_val == 4', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x8000088c]:KMADRS tp, t5, a7
	-[0x80000890]:sd tp, 16(t0)
Current Store : [0x80000894] : sd t5, 24(t0) -- Store: [0x80003368]:0xF7FFDFFF00041000




Last Coverpoint : ['rs1 : x6', 'rs2 : x4', 'rd : x23', 'rs2_h3_val == -17', 'rs2_h1_val == 32', 'rs1_h3_val == 16', 'rs1_h2_val == -129', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x800008c4]:KMADRS s7, t1, tp
	-[0x800008c8]:sd s7, 32(t0)
Current Store : [0x800008cc] : sd t1, 40(t0) -- Store: [0x80003378]:0x0010FF7FFEFF0001




Last Coverpoint : ['rs1 : x15', 'rs2 : x19', 'rd : x16', 'rs2_h3_val == -9', 'rs2_h2_val == -33', 'rs2_h0_val == 8192', 'rs1_h3_val == -16385', 'rs1_h2_val == -257', 'rs1_h1_val == -4097', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000904]:KMADRS a6, a5, s3
	-[0x80000908]:sd a6, 48(t0)
Current Store : [0x8000090c] : sd a5, 56(t0) -- Store: [0x80003388]:0xBFFFFEFFEFFFDFFF




Last Coverpoint : ['rs1 : x9', 'rs2 : x3', 'rd : x2', 'rs2_h3_val == -5', 'rs2_h2_val == 2048', 'rs2_h1_val == 4', 'rs2_h0_val == 1', 'rs1_h2_val == -16385', 'rs1_h1_val == 1024', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x8000093c]:KMADRS sp, s1, gp
	-[0x80000940]:sd sp, 64(t0)
Current Store : [0x80000944] : sd s1, 72(t0) -- Store: [0x80003398]:0x0200BFFF0400FFFB




Last Coverpoint : ['rs1 : x2', 'rs2 : x28', 'rd : x8', 'rs2_h3_val == -3', 'rs2_h1_val == 256']
Last Code Sequence : 
	-[0x80000970]:KMADRS fp, sp, t3
	-[0x80000974]:sd fp, 80(t0)
Current Store : [0x80000978] : sd sp, 88(t0) -- Store: [0x800033a8]:0xFFFF000000040003




Last Coverpoint : ['rs1 : x1', 'rs2 : x15', 'rd : x24', 'rs2_h3_val == -32768', 'rs2_h2_val == -5', 'rs2_h1_val == 512', 'rs2_h0_val == 8']
Last Code Sequence : 
	-[0x800009a8]:KMADRS s8, ra, a5
	-[0x800009ac]:sd s8, 96(t0)
Current Store : [0x800009b0] : sd ra, 104(t0) -- Store: [0x800033b8]:0x000200090200C000




Last Coverpoint : ['rs1 : x18', 'rs2 : x2', 'rd : x30', 'rs2_h3_val == 8192', 'rs1_h3_val == -17', 'rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x800009e4]:KMADRS t5, s2, sp
	-[0x800009e8]:sd t5, 112(t0)
Current Store : [0x800009ec] : sd s2, 120(t0) -- Store: [0x800033c8]:0xFFEF0003BFFF0800




Last Coverpoint : ['rs1 : x24', 'rs2 : x20', 'rd : x10', 'rs2_h3_val == 2048', 'rs2_h1_val == -2049', 'rs2_h0_val == 128', 'rs1_h1_val == -17', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000a28]:KMADRS a0, s8, s4
	-[0x80000a2c]:sd a0, 128(t0)
Current Store : [0x80000a30] : sd s8, 136(t0) -- Store: [0x800033d8]:0xFFF7AAAAFFEFFDFF




Last Coverpoint : ['rs1 : x23', 'rs2 : x7', 'rd : x29', 'rs2_h3_val == 1024', 'rs1_h3_val == -4097', 'rs1_h2_val == -2049', 'rs1_h1_val == 8', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80000a64]:KMADRS t4, s7, t2
	-[0x80000a68]:sd t4, 144(t0)
Current Store : [0x80000a6c] : sd s7, 152(t0) -- Store: [0x800033e8]:0xEFFFF7FF0008BFFF




Last Coverpoint : ['rs1 : x8', 'rs2 : x16', 'rd : x19', 'rs2_h3_val == 512', 'rs2_h2_val == -21846', 'rs1_h2_val == 8192']
Last Code Sequence : 
	-[0x80000a94]:KMADRS s3, fp, a6
	-[0x80000a98]:sd s3, 160(t0)
Current Store : [0x80000a9c] : sd fp, 168(t0) -- Store: [0x800033f8]:0x00072000EFFFFFFC




Last Coverpoint : ['rs1 : x4', 'rs2_h3_val == 256', 'rs2_h0_val == -1', 'rs1_h3_val == -3', 'rs1_h2_val == -3', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000ad0]:KMADRS t4, tp, a6
	-[0x80000ad4]:sd t4, 176(t0)
Current Store : [0x80000ad8] : sd tp, 184(t0) -- Store: [0x80003408]:0xFFFDFFFDAAAAFFFE




Last Coverpoint : ['rs2 : x9', 'rs2_h3_val == 128']
Last Code Sequence : 
	-[0x80000b08]:KMADRS a2, tp, s1
	-[0x80000b0c]:sd a2, 192(t0)
Current Store : [0x80000b10] : sd tp, 200(t0) -- Store: [0x80003418]:0x0005BFFF4000FFFE




Last Coverpoint : ['rd : x9', 'rs2_h3_val == 64', 'rs2_h1_val == -9']
Last Code Sequence : 
	-[0x80000b44]:KMADRS s1, s7, s9
	-[0x80000b48]:sd s1, 208(t0)
Current Store : [0x80000b4c] : sd s7, 216(t0) -- Store: [0x80003428]:0xDFFF00040004FFFA




Last Coverpoint : ['rs2_h3_val == 32', 'rs2_h2_val == 256', 'rs1_h3_val == 128', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000b78]:KMADRS t6, t5, t4
	-[0x80000b7c]:sd t6, 224(t0)
Current Store : [0x80000b80] : sd t5, 232(t0) -- Store: [0x80003438]:0x0080FFEF3FFFFF7F




Last Coverpoint : ['rs2_h3_val == 16', 'rs2_h2_val == -17']
Last Code Sequence : 
	-[0x80000bb4]:KMADRS t6, t5, t4
	-[0x80000bb8]:sd t6, 240(t0)
Current Store : [0x80000bbc] : sd t5, 248(t0) -- Store: [0x80003448]:0xC0003FFF0009FDFF




Last Coverpoint : ['rs2_h1_val == -65', 'rs1_h2_val == -513', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x80000bec]:KMADRS t6, t5, t4
	-[0x80000bf0]:sd t6, 256(t0)
Current Store : [0x80000bf4] : sd t5, 264(t0) -- Store: [0x80003458]:0xFFF7FDFFFFFBFFFC




Last Coverpoint : ['rs2_h0_val == 1024', 'rs1_h1_val == -2']
Last Code Sequence : 
	-[0x80000c28]:KMADRS t6, t5, t4
	-[0x80000c2c]:sd t6, 272(t0)
Current Store : [0x80000c30] : sd t5, 280(t0) -- Store: [0x80003468]:0x8000DFFFFFFEFFF9




Last Coverpoint : ['rs2_h2_val == 32', 'rs2_h1_val == -8193', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000c68]:KMADRS t6, t5, t4
	-[0x80000c6c]:sd t6, 288(t0)
Current Store : [0x80000c70] : sd t5, 296(t0) -- Store: [0x80003478]:0xEFFF000410000800




Last Coverpoint : ['rs2_h2_val == 8', 'rs1_h2_val == 8', 'rs1_h1_val == 64', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000ca0]:KMADRS t6, t5, t4
	-[0x80000ca4]:sd t6, 304(t0)
Current Store : [0x80000ca8] : sd t5, 312(t0) -- Store: [0x80003488]:0x400000080040EFFF




Last Coverpoint : ['rs2_h2_val == 1']
Last Code Sequence : 
	-[0x80000cdc]:KMADRS t6, t5, t4
	-[0x80000ce0]:sd t6, 320(t0)
Current Store : [0x80000ce4] : sd t5, 328(t0) -- Store: [0x80003498]:0xFFEF00070002FFBF




Last Coverpoint : ['rs1_h3_val == -21846', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000d0c]:KMADRS t6, t5, t4
	-[0x80000d10]:sd t6, 336(t0)
Current Store : [0x80000d14] : sd t5, 344(t0) -- Store: [0x800034a8]:0xAAAA200000010000




Last Coverpoint : ['rs2_h3_val == -1', 'rs2_h0_val == -2049', 'rs1_h3_val == 64', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000d40]:KMADRS t6, t5, t4
	-[0x80000d44]:sd t6, 352(t0)
Current Store : [0x80000d48] : sd t5, 360(t0) -- Store: [0x800034b8]:0x0040002000000040




Last Coverpoint : ['rs2_h0_val == -2', 'rs1_h2_val == -65', 'rs1_h1_val == -1', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000d7c]:KMADRS t6, t5, t4
	-[0x80000d80]:sd t6, 368(t0)
Current Store : [0x80000d84] : sd t5, 376(t0) -- Store: [0x800034c8]:0x3FFFFFBFFFFFF7FF




Last Coverpoint : ['rs2_h2_val == -513', 'rs2_h1_val == 1', 'rs1_h3_val == 8192', 'rs1_h2_val == 4096', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000db4]:KMADRS t6, t5, t4
	-[0x80000db8]:sd t6, 384(t0)
Current Store : [0x80000dbc] : sd t5, 392(t0) -- Store: [0x800034d8]:0x200010000008AAAA




Last Coverpoint : ['rs2_h1_val == 16384', 'rs2_h0_val == -8193', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000df0]:KMADRS t6, t5, t4
	-[0x80000df4]:sd t6, 400(t0)
Current Store : [0x80000df8] : sd t5, 408(t0) -- Store: [0x800034e8]:0x00094000FFFF7FFF




Last Coverpoint : ['rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000e2c]:KMADRS t6, t5, t4
	-[0x80000e30]:sd t6, 416(t0)
Current Store : [0x80000e34] : sd t5, 424(t0) -- Store: [0x800034f8]:0x40000010FFF6FEFF




Last Coverpoint : ['rs2_h3_val == 4096', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000e68]:KMADRS t6, t5, t4
	-[0x80000e6c]:sd t6, 432(t0)
Current Store : [0x80000e70] : sd t5, 440(t0) -- Store: [0x80003508]:0x0003FEFF0400FFDF




Last Coverpoint : ['rs1_h3_val == -129', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000ea4]:KMADRS t6, t5, t4
	-[0x80000ea8]:sd t6, 448(t0)
Current Store : [0x80000eac] : sd t5, 456(t0) -- Store: [0x80003518]:0xFF7F01000000FFEF




Last Coverpoint : ['rs2_h1_val == 128', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000ed4]:KMADRS t6, t5, t4
	-[0x80000ed8]:sd t6, 464(t0)
Current Store : [0x80000edc] : sd t5, 472(t0) -- Store: [0x80003528]:0xFFEF0000BFFFFFF7




Last Coverpoint : ['rs2_h1_val == 8192', 'rs2_h0_val == 256', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000f0c]:KMADRS t6, t5, t4
	-[0x80000f10]:sd t6, 480(t0)
Current Store : [0x80000f14] : sd t5, 488(t0) -- Store: [0x80003538]:0x0400FBFF0009FFFD




Last Coverpoint : ['rs2_h2_val == 64', 'rs2_h1_val == -2', 'rs1_h2_val == -4097', 'rs1_h1_val == -2049', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000f44]:KMADRS t6, t5, t4
	-[0x80000f48]:sd t6, 496(t0)
Current Store : [0x80000f4c] : sd t5, 504(t0) -- Store: [0x80003548]:0xFFFAEFFFF7FF4000




Last Coverpoint : ['rs2_h0_val == -16385', 'rs1_h3_val == 2048', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000f80]:KMADRS t6, t5, t4
	-[0x80000f84]:sd t6, 512(t0)
Current Store : [0x80000f88] : sd t5, 520(t0) -- Store: [0x80003558]:0x0800FBFFFEFF0400




Last Coverpoint : ['rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000fbc]:KMADRS t6, t5, t4
	-[0x80000fc0]:sd t6, 528(t0)
Current Store : [0x80000fc4] : sd t5, 536(t0) -- Store: [0x80003568]:0x0010FFFAFFF60100




Last Coverpoint : ['rs2_h0_val == -33', 'rs1_h2_val == 2048', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80001000]:KMADRS t6, t5, t4
	-[0x80001004]:sd t6, 544(t0)
Current Store : [0x80001008] : sd t5, 552(t0) -- Store: [0x80003578]:0xDFFF0800FFFA0020




Last Coverpoint : ['rs2_h1_val == -32768', 'rs1_h1_val == 21845', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80001030]:KMADRS t6, t5, t4
	-[0x80001034]:sd t6, 560(t0)
Current Store : [0x80001038] : sd t5, 568(t0) -- Store: [0x80003588]:0x0000FFFC55550004




Last Coverpoint : ['rs2_h3_val == 8']
Last Code Sequence : 
	-[0x80001064]:KMADRS t6, t5, t4
	-[0x80001068]:sd t6, 576(t0)
Current Store : [0x8000106c] : sd t5, 584(t0) -- Store: [0x80003598]:0xFFFA3FFFFFF80003




Last Coverpoint : ['opcode : kmadrs', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == 64', 'rs2_h1_val == 0', 'rs2_h0_val == 32', 'rs1_h3_val == 16', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80001098]:KMADRS t6, t5, t4
	-[0x8000109c]:sd t6, 592(t0)
Current Store : [0x800010a0] : sd t5, 600(t0) -- Store: [0x800035a8]:0x0010FFF60006DFFF




Last Coverpoint : ['rs2_h2_val == 32767', 'rs2_h1_val == -5', 'rs2_h0_val == -21846']
Last Code Sequence : 
	-[0x800010d4]:KMADRS t6, t5, t4
	-[0x800010d8]:sd t6, 608(t0)
Current Store : [0x800010dc] : sd t5, 616(t0) -- Store: [0x800035b8]:0x8000000600080200




Last Coverpoint : ['rs2_h0_val == 32767']
Last Code Sequence : 
	-[0x80001110]:KMADRS t6, t5, t4
	-[0x80001114]:sd t6, 624(t0)
Current Store : [0x80001118] : sd t5, 632(t0) -- Store: [0x800035c8]:0x00800100FFFD0004




Last Coverpoint : ['rs2_h1_val == -33', 'rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x8000114c]:KMADRS t6, t5, t4
	-[0x80001150]:sd t6, 640(t0)
Current Store : [0x80001154] : sd t5, 648(t0) -- Store: [0x800035d8]:0x3FFFFFF9FFFD3FFF




Last Coverpoint : ['rs2_h0_val == -257']
Last Code Sequence : 
	-[0x80001188]:KMADRS t6, t5, t4
	-[0x8000118c]:sd t6, 656(t0)
Current Store : [0x80001190] : sd t5, 664(t0) -- Store: [0x800035e8]:0xAAAAFFFDFEFFBFFF




Last Coverpoint : ['rs2_h0_val == -17', 'rs1_h3_val == 1']
Last Code Sequence : 
	-[0x800011c0]:KMADRS t6, t5, t4
	-[0x800011c4]:sd t6, 672(t0)
Current Store : [0x800011c8] : sd t5, 680(t0) -- Store: [0x800035f8]:0x0001000500057FFF




Last Coverpoint : ['rs2_h0_val == -9', 'rs1_h3_val == 4096']
Last Code Sequence : 
	-[0x80001204]:KMADRS t6, t5, t4
	-[0x80001208]:sd t6, 688(t0)
Current Store : [0x8000120c] : sd t5, 696(t0) -- Store: [0x80003608]:0x1000FFF62000EFFF




Last Coverpoint : ['rs2_h0_val == 16384']
Last Code Sequence : 
	-[0x80001238]:KMADRS t6, t5, t4
	-[0x8000123c]:sd t6, 704(t0)
Current Store : [0x80001240] : sd t5, 712(t0) -- Store: [0x80003618]:0x000400030008EFFF




Last Coverpoint : ['rs2_h2_val == -65', 'rs2_h1_val == -16385', 'rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x80001270]:KMADRS t6, t5, t4
	-[0x80001274]:sd t6, 720(t0)
Current Store : [0x80001278] : sd t5, 728(t0) -- Store: [0x80003628]:0x0002FFFCF7FF8000




Last Coverpoint : ['rs2_h0_val == 64', 'rs1_h2_val == -33']
Last Code Sequence : 
	-[0x800012a4]:KMADRS t6, t5, t4
	-[0x800012a8]:sd t6, 736(t0)
Current Store : [0x800012ac] : sd t5, 744(t0) -- Store: [0x80003638]:0x0400FFDF7FFFFFF7




Last Coverpoint : ['rs2_h0_val == 16']
Last Code Sequence : 
	-[0x800012d8]:KMADRS t6, t5, t4
	-[0x800012dc]:sd t6, 752(t0)
Current Store : [0x800012e0] : sd t5, 760(t0) -- Store: [0x80003648]:0x0009100004000001




Last Coverpoint : ['rs2_h0_val == 2', 'rs1_h2_val == 64', 'rs1_h1_val == -65']
Last Code Sequence : 
	-[0x80001304]:KMADRS t6, t5, t4
	-[0x80001308]:sd t6, 768(t0)
Current Store : [0x8000130c] : sd t5, 776(t0) -- Store: [0x80003658]:0x00060040FFBFFF7F




Last Coverpoint : ['rs1_h3_val == 21845']
Last Code Sequence : 
	-[0x80001340]:KMADRS t6, t5, t4
	-[0x80001344]:sd t6, 784(t0)
Current Store : [0x80001348] : sd t5, 792(t0) -- Store: [0x80003668]:0x55555555FFFEFFFE




Last Coverpoint : ['rs1_h3_val == 32767']
Last Code Sequence : 
	-[0x80001378]:KMADRS t6, t5, t4
	-[0x8000137c]:sd t6, 800(t0)
Current Store : [0x80001380] : sd t5, 808(t0) -- Store: [0x80003678]:0x7FFFFFFCAAAADFFF




Last Coverpoint : ['rs1_h3_val == -1025', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x800013b4]:KMADRS t6, t5, t4
	-[0x800013b8]:sd t6, 816(t0)
Current Store : [0x800013bc] : sd t5, 824(t0) -- Store: [0x80003688]:0xFBFF00040010DFFF




Last Coverpoint : ['rs1_h3_val == -513']
Last Code Sequence : 
	-[0x800013ec]:KMADRS t6, t5, t4
	-[0x800013f0]:sd t6, 832(t0)
Current Store : [0x800013f4] : sd t5, 840(t0) -- Store: [0x80003698]:0xFDFFDFFFFFF90040




Last Coverpoint : ['rs2_h1_val == 64', 'rs1_h3_val == -257']
Last Code Sequence : 
	-[0x80001428]:KMADRS t6, t5, t4
	-[0x8000142c]:sd t6, 848(t0)
Current Store : [0x80001430] : sd t5, 856(t0) -- Store: [0x800036a8]:0xFEFFFEFF7FFFDFFF




Last Coverpoint : ['rs1_h3_val == -65']
Last Code Sequence : 
	-[0x8000145c]:KMADRS t6, t5, t4
	-[0x80001460]:sd t6, 864(t0)
Current Store : [0x80001464] : sd t5, 872(t0) -- Store: [0x800036b8]:0xFFBFC000FEFFFFF6




Last Coverpoint : ['rs1_h3_val == -33', 'rs1_h2_val == -32768']
Last Code Sequence : 
	-[0x8000148c]:KMADRS t6, t5, t4
	-[0x80001490]:sd t6, 880(t0)
Current Store : [0x80001494] : sd t5, 888(t0) -- Store: [0x800036c8]:0xFFDF800020000004




Last Coverpoint : ['rs2_h3_val == 4', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x800014c0]:KMADRS t6, t5, t4
	-[0x800014c4]:sd t6, 896(t0)
Current Store : [0x800014c8] : sd t5, 904(t0) -- Store: [0x800036d8]:0x00090001FBFF1000




Last Coverpoint : ['rs2_h2_val == -4097']
Last Code Sequence : 
	-[0x800014fc]:KMADRS t6, t5, t4
	-[0x80001500]:sd t6, 912(t0)
Current Store : [0x80001504] : sd t5, 920(t0) -- Store: [0x800036e8]:0xDFFFEFFFFEFF0009




Last Coverpoint : ['rs1_h3_val == 256', 'rs1_h2_val == 1024']
Last Code Sequence : 
	-[0x80001534]:KMADRS t6, t5, t4
	-[0x80001538]:sd t6, 928(t0)
Current Store : [0x8000153c] : sd t5, 936(t0) -- Store: [0x800036f8]:0x01000400FFF62000




Last Coverpoint : ['rs2_h2_val == -1025', 'rs1_h2_val == 128']
Last Code Sequence : 
	-[0x80001570]:KMADRS t6, t5, t4
	-[0x80001574]:sd t6, 944(t0)
Current Store : [0x80001578] : sd t5, 952(t0) -- Store: [0x80003708]:0xC000008000400800




Last Coverpoint : ['rs1_h3_val == 32']
Last Code Sequence : 
	-[0x800015a8]:KMADRS t6, t5, t4
	-[0x800015ac]:sd t6, 960(t0)
Current Store : [0x800015b0] : sd t5, 968(t0) -- Store: [0x80003718]:0x0020000900034000




Last Coverpoint : ['rs2_h2_val == -129']
Last Code Sequence : 
	-[0x800015e4]:KMADRS t6, t5, t4
	-[0x800015e8]:sd t6, 976(t0)
Current Store : [0x800015ec] : sd t5, 984(t0) -- Store: [0x80003728]:0x0400FFBFFFFA5555




Last Coverpoint : ['rs2_h2_val == -2']
Last Code Sequence : 
	-[0x8000161c]:KMADRS t6, t5, t4
	-[0x80001620]:sd t6, 992(t0)
Current Store : [0x80001624] : sd t5, 1000(t0) -- Store: [0x80003738]:0x5555F7FF00050001




Last Coverpoint : ['rs1_h2_val == 32767']
Last Code Sequence : 
	-[0x80001658]:KMADRS t6, t5, t4
	-[0x8000165c]:sd t6, 1008(t0)
Current Store : [0x80001660] : sd t5, 1016(t0) -- Store: [0x80003748]:0xF7FF7FFFFEFF0020




Last Coverpoint : ['rs2_h2_val == 1024', 'rs2_h1_val == -17']
Last Code Sequence : 
	-[0x8000168c]:KMADRS t6, t5, t4
	-[0x80001690]:sd t6, 1024(t0)
Current Store : [0x80001694] : sd t5, 1032(t0) -- Store: [0x80003758]:0xFFFFBFFFFFFBFFFA




Last Coverpoint : ['rs2_h2_val == 512']
Last Code Sequence : 
	-[0x800016bc]:KMADRS t6, t5, t4
	-[0x800016c0]:sd t6, 1040(t0)
Current Store : [0x800016c4] : sd t5, 1048(t0) -- Store: [0x80003768]:0x0003000210008000




Last Coverpoint : ['rs2_h2_val == 16', 'rs1_h2_val == -9']
Last Code Sequence : 
	-[0x800016f0]:KMADRS t6, t5, t4
	-[0x800016f4]:sd t6, 1056(t0)
Current Store : [0x800016f8] : sd t5, 1064(t0) -- Store: [0x80003778]:0xC000FFF700400100




Last Coverpoint : ['rs2_h2_val == 4', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80001728]:KMADRS t6, t5, t4
	-[0x8000172c]:sd t6, 1072(t0)
Current Store : [0x80001730] : sd t5, 1080(t0) -- Store: [0x80003788]:0x80000400FF7FFFBF




Last Coverpoint : ['rs2_h1_val == -4097']
Last Code Sequence : 
	-[0x80001764]:KMADRS t6, t5, t4
	-[0x80001768]:sd t6, 1088(t0)
Current Store : [0x8000176c] : sd t5, 1096(t0) -- Store: [0x80003798]:0x4000F7FF02005555




Last Coverpoint : ['rs1_h1_val == -513']
Last Code Sequence : 
	-[0x80001790]:KMADRS t6, t5, t4
	-[0x80001794]:sd t6, 1104(t0)
Current Store : [0x80001798] : sd t5, 1112(t0) -- Store: [0x800037a8]:0xFFF80010FDFFFFFC




Last Coverpoint : ['rs2_h1_val == -513']
Last Code Sequence : 
	-[0x800017c0]:KMADRS t6, t5, t4
	-[0x800017c4]:sd t6, 1120(t0)
Current Store : [0x800017c8] : sd t5, 1128(t0) -- Store: [0x800037b8]:0x0001FFFF04000009




Last Coverpoint : ['rs2_h1_val == -129']
Last Code Sequence : 
	-[0x800017f4]:KMADRS t6, t5, t4
	-[0x800017f8]:sd t6, 1136(t0)
Current Store : [0x800017fc] : sd t5, 1144(t0) -- Store: [0x800037c8]:0xFFF940000080FFF8




Last Coverpoint : ['rs2_h1_val == 8']
Last Code Sequence : 
	-[0x80001830]:KMADRS t6, t5, t4
	-[0x80001834]:sd t6, 1152(t0)
Current Store : [0x80001838] : sd t5, 1160(t0) -- Store: [0x800037d8]:0xFEFFDFFF00040200




Last Coverpoint : ['rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x80001864]:KMADRS t6, t5, t4
	-[0x80001868]:sd t6, 1168(t0)
Current Store : [0x8000186c] : sd t5, 1176(t0) -- Store: [0x800037e8]:0x00000020DFFFBFFF




Last Coverpoint : ['rs2_h1_val == 2048']
Last Code Sequence : 
	-[0x800018a8]:KMADRS t6, t5, t4
	-[0x800018ac]:sd t6, 1184(t0)
Current Store : [0x800018b0] : sd t5, 1192(t0) -- Store: [0x800037f8]:0xFF7FF7FF0007FBFF




Last Coverpoint : ['rs2_h1_val == 1024']
Last Code Sequence : 
	-[0x800018d8]:KMADRS t6, t5, t4
	-[0x800018dc]:sd t6, 1200(t0)
Current Store : [0x800018e0] : sd t5, 1208(t0) -- Store: [0x80003808]:0xFF7FFFFDFF7FC000




Last Coverpoint : ['rs2_h3_val == 2']
Last Code Sequence : 
	-[0x80001910]:KMADRS t6, t5, t4
	-[0x80001914]:sd t6, 1216(t0)
Current Store : [0x80001918] : sd t5, 1224(t0) -- Store: [0x80003818]:0xFFF7DFFF0007EFFF




Last Coverpoint : ['rs1_h2_val == -5']
Last Code Sequence : 
	-[0x80001948]:KMADRS t6, t5, t4
	-[0x8000194c]:sd t6, 1232(t0)
Current Store : [0x80001950] : sd t5, 1240(t0) -- Store: [0x80003828]:0xEFFFFFFB02005555




Last Coverpoint : ['rs1_h1_val == -33']
Last Code Sequence : 
	-[0x8000197c]:KMADRS t6, t5, t4
	-[0x80001980]:sd t6, 1248(t0)
Current Store : [0x80001984] : sd t5, 1256(t0) -- Store: [0x80003838]:0x00010009FFDFFDFF




Last Coverpoint : ['rs1_h2_val == -2']
Last Code Sequence : 
	-[0x800019b0]:KMADRS t6, t5, t4
	-[0x800019b4]:sd t6, 1264(t0)
Current Store : [0x800019b8] : sd t5, 1272(t0) -- Store: [0x80003848]:0x2000FFFEFDFFFF7F




Last Coverpoint : ['opcode : kmadrs', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == 8192', 'rs2_h2_val == 0', 'rs2_h1_val == -129', 'rs2_h0_val == 1024', 'rs1_h2_val == 64', 'rs1_h1_val == 1024', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800019e4]:KMADRS t6, t5, t4
	-[0x800019e8]:sd t6, 1280(t0)
Current Store : [0x800019ec] : sd t5, 1288(t0) -- Store: [0x80003858]:0x0005004004000080




Last Coverpoint : ['rs2_h0_val == -129']
Last Code Sequence : 
	-[0x80001a1c]:KMADRS t6, t5, t4
	-[0x80001a20]:sd t6, 1296(t0)
Current Store : [0x80001a24] : sd t5, 1304(t0) -- Store: [0x80003868]:0x0200FFFC00808000




Last Coverpoint : ['rs1_h2_val == 512']
Last Code Sequence : 
	-[0x80001a58]:KMADRS t6, t5, t4
	-[0x80001a5c]:sd t6, 1312(t0)
Current Store : [0x80001a60] : sd t5, 1320(t0) -- Store: [0x80003878]:0x400002000010FBFF




Last Coverpoint : ['opcode : kmadrs', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == 32767', 'rs2_h2_val == -3', 'rs2_h1_val == -257', 'rs2_h0_val == -65', 'rs1_h3_val == 16384', 'rs1_h2_val == -1025', 'rs1_h1_val == 512', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80001a98]:KMADRS t6, t5, t4
	-[0x80001a9c]:sd t6, 1328(t0)
Current Store : [0x80001aa0] : sd t5, 1336(t0) -- Store: [0x80003888]:0x4000FBFF02000800





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

|s.no|            signature             |                                                                                                                                                                                                                                             coverpoints                                                                                                                                                                                                                                              |                                 code                                  |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80003210]<br>0xBEADFEEDBEADFEED|- opcode : kmadrs<br> - rs1 : x0<br> - rs2 : x0<br> - rd : x17<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h0_val == rs2_h0_val<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                 |[0x800003d0]:KMADRS a7, zero, zero<br> [0x800003d4]:sd a7, 0(sp)<br>   |
|   2|[0x80003220]<br>0x300100001001BFFC|- rs1 : x27<br> - rs2 : x27<br> - rd : x27<br> - rs1 == rs2 == rd<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == 16384<br> - rs2_h2_val == -1<br> - rs2_h1_val == 2<br> - rs1_h3_val == 16384<br> - rs1_h2_val == -1<br> - rs1_h1_val == 2<br>                                                                                                                   |[0x8000040c]:KMADRS s11, s11, s11<br> [0x80000410]:sd s11, 16(sp)<br>  |
|   3|[0x80003230]<br>0x0800280780000000|- rs1 : x14<br> - rs2 : x12<br> - rd : x5<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h2_val == -257<br> - rs2_h1_val == -21846<br> - rs2_h0_val == -513<br> - rs1_h3_val == -8193<br> - rs1_h1_val == -3<br> - rs1_h0_val == -65<br> |[0x80000450]:KMADRS t0, a4, a2<br> [0x80000454]:sd t0, 32(sp)<br>      |
|   4|[0x80003240]<br>0xFFFAED7BC0006FF8|- rs1 : x11<br> - rs2 : x23<br> - rd : x11<br> - rs1 == rd != rs2<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h3_val == -129<br> - rs2_h2_val == -2049<br> - rs2_h1_val == 32767<br> - rs2_h0_val == 512<br> - rs1_h3_val == -5<br> - rs1_h2_val == 2<br> - rs1_h1_val == -32768<br>                                                                                    |[0x8000048c]:KMADRS a1, a1, s7<br> [0x80000490]:sd a1, 48(sp)<br>      |
|   5|[0x80003250]<br>0xE0006063FBFE4BF7|- rs1 : x21<br> - rs2 : x1<br> - rd : x1<br> - rs2 == rd != rs1<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs2_h3_val == -8193<br> - rs2_h1_val == -1025<br> - rs2_h0_val == 4096<br> - rs1_h2_val == -17<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                                               |[0x800004c0]:KMADRS ra, s5, ra<br> [0x800004c4]:sd ra, 64(sp)<br>      |
|   6|[0x80003260]<br>0x0A303BEFEDBEA810|- rs1 : x3<br> - rs2 : x26<br> - rd : x25<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs2_h2_val == 21845<br> - rs2_h0_val == -3<br> - rs1_h3_val == -9<br> - rs1_h2_val == 21845<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                                      |[0x800004f4]:KMADRS s9, gp, s10<br> [0x800004f8]:sd s9, 80(sp)<br>     |
|   7|[0x80003270]<br>0xFAB7BB36E560BBB2|- rs1 : x31<br> - rs2 : x22<br> - rd : x15<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs2_h2_val == 128<br> - rs2_h0_val == 21845<br> - rs1_h2_val == -1025<br> - rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                         |[0x80000534]:KMADRS a5, t6, s6<br> [0x80000538]:sd a5, 96(sp)<br>      |
|   8|[0x80003280]<br>0xFFF90068BFFCD554|- rs1 : x26<br> - rs2 : x18<br> - rd : x22<br> - rs2_h3_val == -2<br> - rs1_h3_val == 4<br> - rs1_h2_val == 32<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                          |[0x80000564]:KMADRS s6, s10, s2<br> [0x80000568]:sd s6, 112(sp)<br>    |
|   9|[0x80003290]<br>0x4000FF0FAAAB2E3F|- rs1 : x5<br> - rs2 : x31<br> - rd : x12<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h2_val == -8193<br> - rs1_h3_val == 2<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                        |[0x8000059c]:KMADRS a2, t0, t6<br> [0x800005a0]:sd a2, 128(sp)<br>     |
|  10|[0x800032a0]<br>0xFFF7D255EEFF7FF8|- rs1 : x17<br> - rs2 : x6<br> - rd : x3<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h2_val == -3<br> - rs2_h0_val == -32768<br> - rs1_h3_val == -2<br> - rs1_h2_val == 256<br> - rs1_h1_val == 16384<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                              |[0x800005d0]:KMADRS gp, a7, t1<br> [0x800005d4]:sd gp, 144(sp)<br>     |
|  11|[0x800032b0]<br>0xFFFCFFF77FF5557A|- rs1 : x16<br> - rs2 : x21<br> - rd : x18<br> - rs2_h3_val == 1<br> - rs2_h2_val == -32768<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 4<br> - rs1_h3_val == 8<br> - rs1_h2_val == 4<br> - rs1_h1_val == 32<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                              |[0x80000604]:KMADRS s2, a6, s5<br> [0x80000608]:sd s2, 160(sp)<br>     |
|  12|[0x800032c0]<br>0x8D2A1FDD8D2B17D3|- rs1 : x7<br> - rs2 : x14<br> - rd : x20<br> - rs1_h0_val == -32768<br> - rs2_h3_val == -21846<br> - rs2_h2_val == 4096<br> - rs1_h3_val == -32768<br>                                                                                                                                                                                                                                                                                                                                               |[0x80000644]:KMADRS s4, t2, a4<br> [0x80000648]:sd s4, 176(sp)<br>     |
|  13|[0x800032d0]<br>0xAAA76560FBFF5287|- rs1 : x12<br> - rs2 : x8<br> - rd : x14<br> - rs2_h3_val == 21845<br> - rs2_h2_val == 2<br> - rs2_h0_val == -5<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                          |[0x80000680]:KMADRS a4, a2, fp<br> [0x80000684]:sd a4, 192(sp)<br>     |
|  14|[0x800032e0]<br>0x0000000000000000|- rs1 : x20<br> - rs2 : x5<br> - rd : x0<br> - rs2_h3_val == 32767<br> - rs2_h1_val == -257<br> - rs2_h0_val == -65<br> - rs1_h1_val == 512<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                              |[0x800006c0]:KMADRS zero, s4, t0<br> [0x800006c4]:sd zero, 208(sp)<br> |
|  15|[0x800032f0]<br>0x80000000FFF6A800|- rs1 : x19<br> - rs2 : x13<br> - rd : x7<br> - rs2_h3_val == -16385<br> - rs2_h1_val == -3<br> - rs2_h0_val == 32<br> - rs1_h2_val == 16<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                 |[0x800006f8]:KMADRS t2, s3, a3<br> [0x800006fc]:sd t2, 224(sp)<br>     |
|  16|[0x80003300]<br>0xB03EC406FFFDB82A|- rs1 : x10<br> - rs2 : x25<br> - rd : x13<br> - rs2_h3_val == -4097<br> - rs2_h2_val == -16385<br> - rs2_h1_val == 4096<br> - rs1_h3_val == 1024<br> - rs1_h2_val == 16384<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                             |[0x8000073c]:KMADRS a3, a0, s9<br> [0x80000740]:sd a3, 240(sp)<br>     |
|  17|[0x80003310]<br>0x000157FF4D572002|- rs1 : x22<br> - rs2 : x10<br> - rd : x21<br> - rs2_h3_val == -2049<br> - rs2_h2_val == 8192<br> - rs1_h3_val == -1<br> - rs1_h1_val == 8192<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                           |[0x80000770]:KMADRS s5, s6, a0<br> [0x80000774]:sd s5, 256(sp)<br>     |
|  18|[0x80003320]<br>0xDDB7E9BBDDB88057|- rs1 : x25<br> - rs2 : x11<br> - rd : x28<br> - rs2_h3_val == -1025<br> - rs2_h2_val == -9<br> - rs1_h2_val == 1<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                           |[0x800007ac]:KMADRS t3, s9, a1<br> [0x800007b0]:sd t3, 272(sp)<br>     |
|  19|[0x80003330]<br>0x2A279FFFFFFAC0F9|- rs1 : x28<br> - rs2 : x24<br> - rd : x31<br> - rs2_h3_val == -513<br> - rs2_h1_val == -1<br> - rs1_h2_val == -21846<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                      |[0x800007e8]:KMADRS t6, t3, s8<br> [0x800007ec]:sd t6, 288(sp)<br>     |
|  20|[0x80003340]<br>0x100407277FDFB600|- rs1 : x29<br> - rs2 : x30<br> - rd : x26<br> - rs2_h3_val == -257<br> - rs2_h2_val == 16384<br> - rs2_h1_val == 16<br> - rs2_h0_val == -4097<br> - rs1_h1_val == 128<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                    |[0x80000818]:KMADRS s10, t4, t5<br> [0x8000081c]:sd s10, 304(sp)<br>   |
|  21|[0x80003350]<br>0x4001825D00028079|- rs1 : x13<br> - rs2 : x29<br> - rd : x6<br> - rs2_h3_val == -65<br> - rs1_h3_val == 512<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                  |[0x8000085c]:KMADRS t1, a3, t4<br> [0x80000860]:sd t1, 0(t0)<br>       |
|  22|[0x80003360]<br>0xBFDC4FB1BFDD67D9|- rs1 : x30<br> - rs2 : x17<br> - rd : x4<br> - rs2_h3_val == -33<br> - rs1_h3_val == -2049<br> - rs1_h2_val == -8193<br> - rs1_h1_val == 4<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                              |[0x8000088c]:KMADRS tp, t5, a7<br> [0x80000890]:sd tp, 16(t0)<br>      |
|  23|[0x80003370]<br>0xFF7FFC967FFEE220|- rs1 : x6<br> - rs2 : x4<br> - rd : x23<br> - rs2_h3_val == -17<br> - rs2_h1_val == 32<br> - rs1_h3_val == 16<br> - rs1_h2_val == -129<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                     |[0x800008c4]:KMADRS s7, t1, tp<br> [0x800008c8]:sd s7, 32(t0)<br>      |
|  24|[0x80003380]<br>0x0005E11CF6CA2AB2|- rs1 : x15<br> - rs2 : x19<br> - rd : x16<br> - rs2_h3_val == -9<br> - rs2_h2_val == -33<br> - rs2_h0_val == 8192<br> - rs1_h3_val == -16385<br> - rs1_h2_val == -257<br> - rs1_h1_val == -4097<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                        |[0x80000904]:KMADRS a6, a5, s3<br> [0x80000908]:sd a6, 48(t0)<br>      |
|  25|[0x80003390]<br>0xFE0002008000220B|- rs1 : x9<br> - rs2 : x3<br> - rd : x2<br> - rs2_h3_val == -5<br> - rs2_h2_val == 2048<br> - rs2_h1_val == 4<br> - rs2_h0_val == 1<br> - rs1_h2_val == -16385<br> - rs1_h1_val == 1024<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                    |[0x8000093c]:KMADRS sp, s1, gp<br> [0x80000940]:sd sp, 64(t0)<br>      |
|  26|[0x800033a0]<br>0x5554FFFF0003F5F8|- rs1 : x2<br> - rs2 : x28<br> - rd : x8<br> - rs2_h3_val == -3<br> - rs2_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000970]:KMADRS fp, sp, t3<br> [0x80000974]:sd fp, 80(t0)<br>      |
|  27|[0x800033b0]<br>0xFE007FD3FFF93FFF|- rs1 : x1<br> - rs2 : x15<br> - rd : x24<br> - rs2_h3_val == -32768<br> - rs2_h2_val == -5<br> - rs2_h1_val == 512<br> - rs2_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                         |[0x800009a8]:KMADRS s8, ra, a5<br> [0x800009ac]:sd s8, 96(t0)<br>      |
|  28|[0x800033c0]<br>0xF802BFFC0005B007|- rs1 : x18<br> - rs2 : x2<br> - rd : x30<br> - rs2_h3_val == 8192<br> - rs1_h3_val == -17<br> - rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                             |[0x800009e4]:KMADRS t5, s2, sp<br> [0x800009e8]:sd t5, 112(t0)<br>     |
|  29|[0x800033d0]<br>0xDB8D84723FFD7775|- rs1 : x24<br> - rs2 : x20<br> - rd : x10<br> - rs2_h3_val == 2048<br> - rs2_h1_val == -2049<br> - rs2_h0_val == 128<br> - rs1_h1_val == -17<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                            |[0x80000a28]:KMADRS a0, s8, s4<br> [0x80000a2c]:sd a0, 128(t0)<br>     |
|  30|[0x800033e0]<br>0x00070D07FFDCFF6F|- rs1 : x23<br> - rs2 : x7<br> - rd : x29<br> - rs2_h3_val == 1024<br> - rs1_h3_val == -4097<br> - rs1_h2_val == -2049<br> - rs1_h1_val == 8<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                           |[0x80000a64]:KMADRS t4, s7, t2<br> [0x80000a68]:sd t4, 144(t0)<br>     |
|  31|[0x800033f0]<br>0xF54D31DFAAA91FF8|- rs1 : x8<br> - rs2 : x16<br> - rd : x19<br> - rs2_h3_val == 512<br> - rs2_h2_val == -21846<br> - rs1_h2_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                             |[0x80000a94]:KMADRS s3, fp, a6<br> [0x80000a98]:sd s3, 160(t0)<br>     |
|  32|[0x80003400]<br>0x00065007FFDA54C1|- rs1 : x4<br> - rs2_h3_val == 256<br> - rs2_h0_val == -1<br> - rs1_h3_val == -3<br> - rs1_h2_val == -3<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                    |[0x80000ad0]:KMADRS t4, tp, a6<br> [0x80000ad4]:sd t4, 176(t0)<br>     |
|  33|[0x80003410]<br>0xF007FD850102000A|- rs2 : x9<br> - rs2_h3_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000b08]:KMADRS a2, tp, s1<br> [0x80000b0c]:sd a2, 192(t0)<br>     |
|  34|[0x80003420]<br>0x0088803FFFFD0056|- rd : x9<br> - rs2_h3_val == 64<br> - rs2_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000b44]:KMADRS s1, s7, s9<br> [0x80000b48]:sd s1, 208(t0)<br>     |
|  35|[0x80003430]<br>0x2A277EFFFFFC8479|- rs2_h3_val == 32<br> - rs2_h2_val == 256<br> - rs1_h3_val == 128<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000b78]:KMADRS t6, t5, t4<br> [0x80000b7c]:sd t6, 224(t0)<br>     |
|  36|[0x80003440]<br>0x2A273F10FFFC94B7|- rs2_h3_val == 16<br> - rs2_h2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000bb4]:KMADRS t6, t5, t4<br> [0x80000bb8]:sd t6, 240(t0)<br>     |
|  37|[0x80003450]<br>0x2A276172FFFC935E|- rs2_h1_val == -65<br> - rs1_h2_val == -513<br> - rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000bec]:KMADRS t6, t5, t4<br> [0x80000bf0]:sd t6, 256(t0)<br>     |
|  38|[0x80003460]<br>0x3225C173FFFD2208|- rs2_h0_val == 1024<br> - rs1_h1_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000c28]:KMADRS t6, t5, t4<br> [0x80000c2c]:sd t6, 272(t0)<br>     |
|  39|[0x80003470]<br>0x2A2541F301FCF208|- rs2_h2_val == 32<br> - rs2_h1_val == -8193<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000c68]:KMADRS t6, t5, t4<br> [0x80000c6c]:sd t6, 288(t0)<br>     |
|  40|[0x80003480]<br>0x2C25823305FD2E08|- rs2_h2_val == 8<br> - rs1_h2_val == 8<br> - rs1_h1_val == 64<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000ca0]:KMADRS t6, t5, t4<br> [0x80000ca4]:sd t6, 304(t0)<br>     |
|  41|[0x80003490]<br>0x2C258ABA05FD2D10|- rs2_h2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000cdc]:KMADRS t6, t5, t4<br> [0x80000ce0]:sd t6, 320(t0)<br>     |
|  42|[0x800034a0]<br>0x2C07156805FD2D16|- rs1_h3_val == -21846<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000d0c]:KMADRS t6, t5, t4<br> [0x80000d10]:sd t6, 336(t0)<br>     |
|  43|[0x800034b0]<br>0x2C07160805FB2CD6|- rs2_h3_val == -1<br> - rs2_h0_val == -2049<br> - rs1_h3_val == 64<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000d40]:KMADRS t6, t5, t4<br> [0x80000d44]:sd t6, 352(t0)<br>     |
|  44|[0x800034c0]<br>0x2BE6D58805FB3CD4|- rs2_h0_val == -2<br> - rs1_h2_val == -65<br> - rs1_h1_val == -1<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000d7c]:KMADRS t6, t5, t4<br> [0x80000d80]:sd t6, 368(t0)<br>     |
|  45|[0x800034d0]<br>0x2BC72588FB507CCC|- rs2_h2_val == -513<br> - rs2_h1_val == 1<br> - rs1_h3_val == 8192<br> - rs1_h2_val == 4096<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                           |[0x80000db4]:KMADRS t6, t5, t4<br> [0x80000db8]:sd t6, 384(t0)<br>     |
|  46|[0x800034e0]<br>0x2BC94991EB505CCD|- rs2_h1_val == 16384<br> - rs2_h0_val == -8193<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000df0]:KMADRS t6, t5, t4<br> [0x80000df4]:sd t6, 400(t0)<br>     |
|  47|[0x800034f0]<br>0x2FC98911EB509E18|- rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000e2c]:KMADRS t6, t5, t4<br> [0x80000e30]:sd t6, 416(t0)<br>     |
|  48|[0x80003500]<br>0x301F0467EB500E18|- rs2_h3_val == 4096<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000e68]:KMADRS t6, t5, t4<br> [0x80000e6c]:sd t6, 432(t0)<br>     |
|  49|[0x80003510]<br>0x2FC92CE6EB500E7E|- rs1_h3_val == -129<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000ea4]:KMADRS t6, t5, t4<br> [0x80000ea8]:sd t6, 448(t0)<br>     |
|  50|[0x80003520]<br>0x2FC92C3CEB700F2B|- rs2_h1_val == 128<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000ed4]:KMADRS t6, t5, t4<br> [0x80000ed8]:sd t6, 464(t0)<br>     |
|  51|[0x80003530]<br>0x30C9343DEB6EEC2B|- rs2_h1_val == 8192<br> - rs2_h0_val == 256<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000f0c]:KMADRS t6, t5, t4<br> [0x80000f10]:sd t6, 480(t0)<br>     |
|  52|[0x80003540]<br>0x30C5345DEB6D9C29|- rs2_h2_val == 64<br> - rs2_h1_val == -2<br> - rs1_h2_val == -4097<br> - rs1_h1_val == -2049<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                           |[0x80000f44]:KMADRS t6, t5, t4<br> [0x80000f48]:sd t6, 496(t0)<br>     |
|  53|[0x80003550]<br>0x30A42C5DEA8DB829|- rs2_h0_val == -16385<br> - rs1_h3_val == 2048<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000f80]:KMADRS t6, t5, t4<br> [0x80000f84]:sd t6, 512(t0)<br>     |
|  54|[0x80003560]<br>0x30A951BDEA8DB00B|- rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000fbc]:KMADRS t6, t5, t4<br> [0x80000fc0]:sd t6, 528(t0)<br>     |
|  55|[0x80003570]<br>0x28A8F9BDEA8E6BEB|- rs2_h0_val == -33<br> - rs1_h2_val == 2048<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001000]:KMADRS t6, t5, t4<br> [0x80001004]:sd t6, 544(t0)<br>     |
|  56|[0x80003580]<br>0x28A979C11538EBEB|- rs2_h1_val == -32768<br> - rs1_h1_val == 21845<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001030]:KMADRS t6, t5, t4<br> [0x80001034]:sd t6, 560(t0)<br>     |
|  57|[0x80003590]<br>0x28293BF215388BB8|- rs2_h3_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001064]:KMADRS t6, t5, t4<br> [0x80001068]:sd t6, 576(t0)<br>     |
|  58|[0x800035b0]<br>0x262BB7A61489DFC0|- rs2_h2_val == 32767<br> - rs2_h1_val == -5<br> - rs2_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800010d4]:KMADRS t6, t5, t4<br> [0x800010d8]:sd t6, 608(t0)<br>     |
|  59|[0x800035c0]<br>0x25D65DA6148BE01C|- rs2_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001110]:KMADRS t6, t5, t4<br> [0x80001114]:sd t6, 624(t0)<br>     |
|  60|[0x800035d0]<br>0x45D5DD6E138BA3BA|- rs2_h1_val == -33<br> - rs2_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x8000114c]:KMADRS t6, t5, t4<br> [0x80001150]:sd t6, 640(t0)<br>     |
|  61|[0x800035e0]<br>0x45D432C013CBE1B8|- rs2_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001188]:KMADRS t6, t5, t4<br> [0x8000118c]:sd t6, 656(t0)<br>     |
|  62|[0x800035f0]<br>0x45D2F2C313C36129|- rs2_h0_val == -17<br> - rs1_h3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800011c0]:KMADRS t6, t5, t4<br> [0x800011c4]:sd t6, 672(t0)<br>     |
|  63|[0x80003600]<br>0x45D242C30BC3F132|- rs2_h0_val == -9<br> - rs1_h3_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001204]:KMADRS t6, t5, t4<br> [0x80001208]:sd t6, 688(t0)<br>     |
|  64|[0x80003610]<br>0x45D245D307C3B12A|- rs2_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001238]:KMADRS t6, t5, t4<br> [0x8000123c]:sd t6, 704(t0)<br>     |
|  65|[0x80003620]<br>0x45D246DD01C36929|- rs2_h2_val == -65<br> - rs2_h1_val == -16385<br> - rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001270]:KMADRS t6, t5, t4<br> [0x80001274]:sd t6, 720(t0)<br>     |
|  66|[0x80003630]<br>0x45CE47A301C766E1|- rs2_h0_val == 64<br> - rs1_h2_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800012a4]:KMADRS t6, t5, t4<br> [0x800012a8]:sd t6, 736(t0)<br>     |
|  67|[0x80003640]<br>0x4B234FA301C86AF1|- rs2_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800012d8]:KMADRS t6, t5, t4<br> [0x800012dc]:sd t6, 752(t0)<br>     |
|  68|[0x80003650]<br>0x4B234EE901C8692C|- rs2_h0_val == 2<br> - rs1_h2_val == 64<br> - rs1_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001304]:KMADRS t6, t5, t4<br> [0x80001308]:sd t6, 768(t0)<br>     |
|  69|[0x80003660]<br>0x35230F9401C8695C|- rs1_h3_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001340]:KMADRS t6, t5, t4<br> [0x80001344]:sd t6, 784(t0)<br>     |
|  70|[0x80003670]<br>0x35238F7F0C720953|- rs1_h3_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001378]:KMADRS t6, t5, t4<br> [0x8000137c]:sd t6, 800(t0)<br>     |
|  71|[0x80003680]<br>0x34E37B3A0C7A29C4|- rs1_h3_val == -1025<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800013b4]:KMADRS t6, t5, t4<br> [0x800013b8]:sd t6, 816(t0)<br>     |
|  72|[0x80003690]<br>0x2CE331350C7A2A4B|- rs1_h3_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800013ec]:KMADRS t6, t5, t4<br> [0x800013f0]:sd t6, 832(t0)<br>     |
|  73|[0x800036a0]<br>0x2CE2B4B90C5A8A8E|- rs2_h1_val == 64<br> - rs1_h3_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001428]:KMADRS t6, t5, t4<br> [0x8000142c]:sd t6, 848(t0)<br>     |
|  74|[0x800036b0]<br>0x2CE0B0680C580997|- rs1_h3_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000145c]:KMADRS t6, t5, t4<br> [0x80001460]:sd t6, 864(t0)<br>     |
|  75|[0x800036c0]<br>0x2CE131700C586993|- rs1_h3_val == -33<br> - rs1_h2_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000148c]:KMADRS t6, t5, t4<br> [0x80001490]:sd t6, 880(t0)<br>     |
|  76|[0x800036d0]<br>0x2CE1310B1058498B|- rs2_h3_val == 4<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800014c0]:KMADRS t6, t5, t4<br> [0x800014c4]:sd t6, 896(t0)<br>     |
|  77|[0x800036e0]<br>0x2FE1610C1058C9D5|- rs2_h2_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800014fc]:KMADRS t6, t5, t4<br> [0x80001500]:sd t6, 912(t0)<br>     |
|  78|[0x800036f0]<br>0x2DE1E20C105969AD|- rs1_h3_val == 256<br> - rs1_h2_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001534]:KMADRS t6, t5, t4<br> [0x80001538]:sd t6, 928(t0)<br>     |
|  79|[0x80003700]<br>0x2DDDE18C0E5960ED|- rs2_h2_val == -1025<br> - rs1_h2_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001570]:KMADRS t6, t5, t4<br> [0x80001574]:sd t6, 944(t0)<br>     |
|  80|[0x80003710]<br>0x2DDDBF430E5820E1|- rs1_h3_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800015a8]:KMADRS t6, t5, t4<br> [0x800015ac]:sd t6, 960(t0)<br>     |
|  81|[0x80003720]<br>0x2C888C040E57761F|- rs2_h2_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800015e4]:KMADRS t6, t5, t4<br> [0x800015e8]:sd t6, 976(t0)<br>     |
|  82|[0x80003730]<br>0x2F33995B0E579615|- rs2_h2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000161c]:KMADRS t6, t5, t4<br> [0x80001620]:sd t6, 992(t0)<br>     |
|  83|[0x80003740]<br>0x2F1301990E5758D4|- rs1_h2_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001658]:KMADRS t6, t5, t4<br> [0x8000165c]:sd t6, 1008(t0)<br>    |
|  84|[0x80003750]<br>0x2E12A8430E55D885|- rs2_h2_val == 1024<br> - rs2_h1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000168c]:KMADRS t6, t5, t4<br> [0x80001690]:sd t6, 1024(t0)<br>    |
|  85|[0x80003760]<br>0x2E12AC5E0DD3D885|- rs2_h2_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800016bc]:KMADRS t6, t5, t4<br> [0x800016c0]:sd t6, 1040(t0)<br>    |
|  86|[0x80003770]<br>0x2E12ABCE0DD4D7C5|- rs2_h2_val == 16<br> - rs1_h2_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800016f0]:KMADRS t6, t5, t4<br> [0x800016f4]:sd t6, 1056(t0)<br>    |
|  87|[0x80003780]<br>0x2E173BCE0DCCBF44|- rs2_h2_val == 4<br> - rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001728]:KMADRS t6, t5, t4<br> [0x8000172c]:sd t6, 1072(t0)<br>    |
|  88|[0x80003790]<br>0x2D1763D30DEBC145|- rs2_h1_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001764]:KMADRS t6, t5, t4<br> [0x80001768]:sd t6, 1088(t0)<br>    |
|  89|[0x800037a0]<br>0x2D1763CB0E6BFF58|- rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001790]:KMADRS t6, t5, t4<br> [0x80001794]:sd t6, 1104(t0)<br>    |
|  90|[0x800037b0]<br>0x2D17A3D10E740358|- rs2_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800017c0]:KMADRS t6, t5, t4<br> [0x800017c4]:sd t6, 1120(t0)<br>    |
|  91|[0x800037c0]<br>0x1D1764020E73C3D8|- rs2_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800017f4]:KMADRS t6, t5, t4<br> [0x800017f8]:sd t6, 1136(t0)<br>    |
|  92|[0x800037d0]<br>0x1D578E0B0E7443B8|- rs2_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001830]:KMADRS t6, t5, t4<br> [0x80001834]:sd t6, 1152(t0)<br>    |
|  93|[0x800037e0]<br>0x1D578DCB05F401B8|- rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001864]:KMADRS t6, t5, t4<br> [0x80001868]:sd t6, 1168(t0)<br>    |
|  94|[0x800037f0]<br>0x1B824DA005F40DC9|- rs2_h1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800018a8]:KMADRS t6, t5, t4<br> [0x800018ac]:sd t6, 1184(t0)<br>    |
|  95|[0x80003800]<br>0x1B82362105F411C9|- rs2_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800018d8]:KMADRS t6, t5, t4<br> [0x800018dc]:sd t6, 1200(t0)<br>    |
|  96|[0x80003810]<br>0x1B623533FDF39ACA|- rs2_h3_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001910]:KMADRS t6, t5, t4<br> [0x80001914]:sd t6, 1216(t0)<br>    |
|  97|[0x80003820]<br>0x1B6434B3FD9E454A|- rs1_h2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001948]:KMADRS t6, t5, t4<br> [0x8000194c]:sd t6, 1232(t0)<br>    |
|  98|[0x80003830]<br>0x1B6734ADFD9DC5F1|- rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000197c]:KMADRS t6, t5, t4<br> [0x80001980]:sd t6, 1248(t0)<br>    |
|  99|[0x80003840]<br>0x1BA754B1FDDDE36C|- rs1_h2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800019b0]:KMADRS t6, t5, t4<br> [0x800019b4]:sd t6, 1264(t0)<br>    |
| 100|[0x80003860]<br>0x1B88B4B1FE226B6C|- rs2_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001a1c]:KMADRS t6, t5, t4<br> [0x80001a20]:sd t6, 1296(t0)<br>    |
| 101|[0x80003870]<br>0x0B88B2B1FD222F4D|- rs1_h2_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001a58]:KMADRS t6, t5, t4<br> [0x80001a5c]:sd t6, 1312(t0)<br>    |
