
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001a90')]      |
| SIG_REGION                | [('0x80003210', '0x80003870', '204 dwords')]      |
| COV_LABELS                | kdmbb      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kdmbb-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 204      |
| STAT1                     | 101      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 102     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a38]:KDMBB t6, t5, t4
      [0x80001a3c]:sd t6, 1328(gp)
 -- Signature Address: 0x80003850 Data: 0xFFFFFFFFFFF70000
 -- Redundant Coverpoints hit by the op
      - opcode : kdmbb
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == -32768
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h3_val == -33
      - rs2_h1_val == 512
      - rs1_h3_val == -513
      - rs1_h2_val == 32767






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kdmbb', 'rs1 : x4', 'rs2 : x4', 'rd : x29', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h3_val == -33', 'rs2_h1_val == 512', 'rs1_h3_val == -33', 'rs1_h1_val == 512']
Last Code Sequence : 
	-[0x800003c4]:KDMBB t4, tp, tp
	-[0x800003c8]:sd t4, 0(a6)
Current Store : [0x800003cc] : sd tp, 8(a6) -- Store: [0x80003218]:0xFFDF000902000009




Last Coverpoint : ['rs1 : x0', 'rs2 : x0', 'rd : x0', 'rs1 == rs2 == rd', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h3_val == 0', 'rs1_h2_val == 0', 'rs1_h1_val == 0', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x80000408]:KDMBB zero, zero, zero
	-[0x8000040c]:sd zero, 16(a6)
Current Store : [0x80000410] : sd zero, 24(a6) -- Store: [0x80003228]:0x0000000000000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x21', 'rd : x27', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == 128', 'rs2_h2_val == -9', 'rs2_h1_val == 2048', 'rs2_h0_val == -1025', 'rs1_h3_val == -16385', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000444]:KDMBB s11, s1, s5
	-[0x80000448]:sd s11, 32(a6)
Current Store : [0x8000044c] : sd s1, 40(a6) -- Store: [0x80003238]:0xBFFF000300200005




Last Coverpoint : ['rs1 : x20', 'rs2 : x6', 'rd : x20', 'rs1 == rd != rs2', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs2_h1_val == -8193', 'rs2_h0_val == -16385', 'rs1_h3_val == 1', 'rs1_h1_val == 2048']
Last Code Sequence : 
	-[0x80000474]:KDMBB s4, s4, t1
	-[0x80000478]:sd s4, 48(a6)
Current Store : [0x8000047c] : sd s4, 56(a6) -- Store: [0x80003248]:0x0000000000000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x13', 'rd : x13', 'rs2 == rd != rs1', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == 16', 'rs2_h2_val == 8', 'rs2_h1_val == 8192', 'rs1_h3_val == 16384', 'rs1_h2_val == -513', 'rs1_h1_val == 4']
Last Code Sequence : 
	-[0x800004b0]:KDMBB a3, s9, a3
	-[0x800004b4]:sd a3, 64(a6)
Current Store : [0x800004b8] : sd s9, 72(a6) -- Store: [0x80003258]:0x4000FDFF0004FFF8




Last Coverpoint : ['rs1 : x11', 'rs2 : x30', 'rd : x6', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs2_h3_val == 8', 'rs2_h2_val == 64', 'rs2_h0_val == -33', 'rs1_h3_val == 2', 'rs1_h2_val == 64', 'rs1_h1_val == -1', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x800004ec]:KDMBB t1, a1, t5
	-[0x800004f0]:sd t1, 80(a6)
Current Store : [0x800004f4] : sd a1, 88(a6) -- Store: [0x80003268]:0x00020040FFFF0020




Last Coverpoint : ['rs1 : x28', 'rs2 : x3', 'rd : x30', 'rs2_h2_val == 4', 'rs2_h1_val == -1', 'rs2_h0_val == 512', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000528]:KDMBB t5, t3, gp
	-[0x8000052c]:sd t5, 96(a6)
Current Store : [0x80000530] : sd t3, 104(a6) -- Store: [0x80003278]:0x0003FFF6FFFF0008




Last Coverpoint : ['rs1 : x13', 'rs2 : x14', 'rd : x7', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == -21846', 'rs2_h2_val == 16384', 'rs2_h1_val == -3', 'rs2_h0_val == 1', 'rs1_h2_val == -4097', 'rs1_h1_val == -4097', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000564]:KDMBB t2, a3, a4
	-[0x80000568]:sd t2, 112(a6)
Current Store : [0x8000056c] : sd a3, 120(a6) -- Store: [0x80003288]:0x0001EFFFEFFFF7FF




Last Coverpoint : ['rs1 : x6', 'rs2 : x8', 'rd : x3', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs2_h3_val == 21845', 'rs2_h2_val == -17', 'rs2_h1_val == 16384', 'rs2_h0_val == -129', 'rs1_h3_val == -257', 'rs1_h2_val == -257', 'rs1_h1_val == -2049', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x800005a8]:KDMBB gp, t1, fp
	-[0x800005ac]:sd gp, 128(a6)
Current Store : [0x800005b0] : sd t1, 136(a6) -- Store: [0x80003298]:0xFEFFFEFFF7FF0040




Last Coverpoint : ['rs1 : x7', 'rs2 : x28', 'rd : x10', 'rs2_h3_val == 32767', 'rs2_h2_val == 16', 'rs2_h1_val == -2049', 'rs2_h0_val == -17', 'rs1_h3_val == -32768', 'rs1_h2_val == -5', 'rs1_h1_val == 2', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x800005e4]:KDMBB a0, t2, t3
	-[0x800005e8]:sd a0, 144(a6)
Current Store : [0x800005ec] : sd t2, 152(a6) -- Store: [0x800032a8]:0x8000FFFB0002FFFF




Last Coverpoint : ['rs1 : x14', 'rs2 : x5', 'rd : x4', 'rs2_h3_val == -8193', 'rs1_h3_val == 8192', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000620]:KDMBB tp, a4, t0
	-[0x80000624]:sd tp, 160(a6)
Current Store : [0x80000628] : sd a4, 168(a6) -- Store: [0x800032b8]:0x20000006FFF6FFFB




Last Coverpoint : ['rs1 : x12', 'rs2 : x29', 'rd : x26', 'rs2_h3_val == -4097', 'rs2_h1_val == -2', 'rs2_h0_val == 21845', 'rs1_h3_val == -1025', 'rs1_h2_val == -9', 'rs1_h1_val == -65', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x8000065c]:KDMBB s10, a2, t4
	-[0x80000660]:sd s10, 176(a6)
Current Store : [0x80000664] : sd a2, 184(a6) -- Store: [0x800032c8]:0xFBFFFFF7FFBF0001




Last Coverpoint : ['rs1 : x29', 'rs2 : x10', 'rd : x9', 'rs2_h3_val == -2049', 'rs2_h2_val == -2', 'rs1_h2_val == 8', 'rs1_h1_val == -2', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000698]:KDMBB s1, t4, a0
	-[0x8000069c]:sd s1, 192(a6)
Current Store : [0x800006a0] : sd t4, 200(a6) -- Store: [0x800032d8]:0x00030008FFFE5555




Last Coverpoint : ['rs1 : x15', 'rs2 : x11', 'rd : x5', 'rs2_h3_val == -1025', 'rs2_h1_val == 16', 'rs1_h2_val == -129', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x800006d4]:KDMBB t0, a5, a1
	-[0x800006d8]:sd t0, 208(a6)
Current Store : [0x800006dc] : sd a5, 216(a6) -- Store: [0x800032e8]:0x2000FF7F00080001




Last Coverpoint : ['rs1 : x31', 'rs2 : x2', 'rd : x1', 'rs2_h3_val == -513', 'rs2_h2_val == 8192', 'rs2_h0_val == 256', 'rs1_h1_val == 128', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000710]:KDMBB ra, t6, sp
	-[0x80000714]:sd ra, 224(a6)
Current Store : [0x80000718] : sd t6, 232(a6) -- Store: [0x800032f8]:0xFFF9FF7F0080FF7F




Last Coverpoint : ['rs1 : x19', 'rs2 : x20', 'rd : x11', 'rs2_h3_val == -257', 'rs1_h3_val == -513', 'rs1_h2_val == 16']
Last Code Sequence : 
	-[0x8000073c]:KDMBB a1, s3, s4
	-[0x80000740]:sd a1, 240(a6)
Current Store : [0x80000744] : sd s3, 248(a6) -- Store: [0x80003308]:0xFDFF0010F7FFFFFF




Last Coverpoint : ['rs1 : x3', 'rs2 : x18', 'rd : x17', 'rs2_h3_val == -129', 'rs2_h2_val == -16385', 'rs2_h0_val == -2049', 'rs1_h3_val == -21846', 'rs1_h2_val == -33', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x80000780]:KDMBB a7, gp, s2
	-[0x80000784]:sd a7, 256(a6)
Current Store : [0x80000788] : sd gp, 264(a6) -- Store: [0x80003318]:0xAAAAFFDF40005555




Last Coverpoint : ['rs1 : x10', 'rs2 : x12', 'rd : x21', 'rs2_h3_val == -65', 'rs2_h1_val == -9', 'rs2_h0_val == -4097', 'rs1_h2_val == -2049']
Last Code Sequence : 
	-[0x800007c4]:KDMBB s5, a0, a2
	-[0x800007c8]:sd s5, 0(gp)
Current Store : [0x800007cc] : sd a0, 8(gp) -- Store: [0x80003328]:0x0007F7FFF7FF0001




Last Coverpoint : ['rs1 : x2', 'rs2 : x9', 'rd : x23', 'rs2_h3_val == -17', 'rs2_h2_val == 128', 'rs2_h1_val == -513', 'rs1_h3_val == 32']
Last Code Sequence : 
	-[0x800007f8]:KDMBB s7, sp, s1
	-[0x800007fc]:sd s7, 16(gp)
Current Store : [0x80000800] : sd sp, 24(gp) -- Store: [0x80003338]:0x0020FFF600080001




Last Coverpoint : ['rs1 : x18', 'rs2 : x19', 'rd : x2', 'rs2_h3_val == -9', 'rs2_h1_val == -16385', 'rs1_h3_val == 64', 'rs1_h2_val == 1024', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x8000082c]:KDMBB sp, s2, s3
	-[0x80000830]:sd sp, 32(gp)
Current Store : [0x80000834] : sd s2, 40(gp) -- Store: [0x80003348]:0x0040040000010007




Last Coverpoint : ['rs1 : x24', 'rs2 : x31', 'rd : x18', 'rs2_h3_val == -5', 'rs2_h1_val == 4', 'rs2_h0_val == 128']
Last Code Sequence : 
	-[0x80000860]:KDMBB s2, s8, t6
	-[0x80000864]:sd s2, 48(gp)
Current Store : [0x80000868] : sd s8, 56(gp) -- Store: [0x80003358]:0x0001C0000080C000




Last Coverpoint : ['rs1 : x23', 'rs2 : x22', 'rd : x25', 'rs2_h3_val == -3', 'rs2_h2_val == -1025', 'rs1_h3_val == -4097', 'rs1_h2_val == 2048', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000898]:KDMBB s9, s7, s6
	-[0x8000089c]:sd s9, 64(gp)
Current Store : [0x800008a0] : sd s7, 72(gp) -- Store: [0x80003368]:0xEFFF08000001FBFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x1', 'rd : x16', 'rs2_h3_val == -2', 'rs1_h2_val == 32767']
Last Code Sequence : 
	-[0x800008d0]:KDMBB a6, s10, ra
	-[0x800008d4]:sd a6, 80(gp)
Current Store : [0x800008d8] : sd s10, 88(gp) -- Store: [0x80003378]:0xFFF87FFF0020F7FF




Last Coverpoint : ['rs1 : x5', 'rs2 : x24', 'rd : x14', 'rs2_h3_val == -32768', 'rs2_h1_val == -257', 'rs2_h0_val == -8193', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x80000908]:KDMBB a4, t0, s8
	-[0x8000090c]:sd a4, 96(gp)
Current Store : [0x80000910] : sd t0, 104(gp) -- Store: [0x80003388]:0xFFF8FFFBFFDFFFFB




Last Coverpoint : ['rs1 : x30', 'rs2 : x25', 'rd : x28', 'rs1_h0_val == -32768', 'rs2_h3_val == 16384', 'rs2_h2_val == -1', 'rs2_h1_val == 4096', 'rs1_h3_val == -2049', 'rs1_h2_val == 32', 'rs1_h1_val == -257']
Last Code Sequence : 
	-[0x80000948]:KDMBB t3, t5, s9
	-[0x8000094c]:sd t3, 112(gp)
Current Store : [0x80000950] : sd t5, 120(gp) -- Store: [0x80003398]:0xF7FF0020FEFF8000




Last Coverpoint : ['rs1 : x22', 'rs2 : x16', 'rd : x19', 'rs2_h3_val == 8192', 'rs1_h3_val == -3', 'rs1_h2_val == 8192']
Last Code Sequence : 
	-[0x8000097c]:KDMBB s3, s6, a6
	-[0x80000980]:sd s3, 128(gp)
Current Store : [0x80000984] : sd s6, 136(gp) -- Store: [0x800033a8]:0xFFFD200008000040




Last Coverpoint : ['rs1 : x16', 'rs2 : x15', 'rd : x8', 'rs2_h3_val == 4096']
Last Code Sequence : 
	-[0x800009a8]:KDMBB fp, a6, a5
	-[0x800009ac]:sd fp, 144(gp)
Current Store : [0x800009b0] : sd a6, 152(gp) -- Store: [0x800033b8]:0xFFDF7FFF00800000




Last Coverpoint : ['rs1 : x8', 'rs2 : x23', 'rd : x24', 'rs2_h3_val == 2048', 'rs2_h2_val == -4097', 'rs2_h0_val == 16', 'rs1_h3_val == -65', 'rs1_h2_val == 4096', 'rs1_h1_val == -32768', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x800009e4]:KDMBB s8, fp, s7
	-[0x800009e8]:sd s8, 160(gp)
Current Store : [0x800009ec] : sd fp, 168(gp) -- Store: [0x800033c8]:0xFFBF10008000FFBF




Last Coverpoint : ['rs1 : x27', 'rs2 : x26', 'rd : x22', 'rs2_h3_val == 1024', 'rs2_h1_val == -32768', 'rs2_h0_val == -513']
Last Code Sequence : 
	-[0x80000a20]:KDMBB s6, s11, s10
	-[0x80000a24]:sd s6, 176(gp)
Current Store : [0x80000a28] : sd s11, 184(gp) -- Store: [0x800033d8]:0x0040080000060006




Last Coverpoint : ['rs1 : x17', 'rs2 : x7', 'rd : x31', 'rs2_h3_val == 512', 'rs2_h2_val == 256', 'rs2_h1_val == -1025', 'rs1_h2_val == -21846', 'rs1_h1_val == 1024', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000a5c]:KDMBB t6, a7, t2
	-[0x80000a60]:sd t6, 192(gp)
Current Store : [0x80000a64] : sd a7, 200(gp) -- Store: [0x800033e8]:0xFFFDAAAA0400FFFE




Last Coverpoint : ['rs1 : x1', 'rs2 : x27', 'rd : x15', 'rs2_h3_val == 256', 'rs2_h2_val == -257', 'rs1_h2_val == 16384']
Last Code Sequence : 
	-[0x80000a94]:KDMBB a5, ra, s11
	-[0x80000a98]:sd a5, 208(gp)
Current Store : [0x80000a9c] : sd ra, 216(gp) -- Store: [0x800033f8]:0xFEFF400000080006




Last Coverpoint : ['rs1 : x21', 'rs2 : x17', 'rd : x12', 'rs2_h3_val == 64', 'rs2_h2_val == -5', 'rs2_h0_val == 2048', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x80000ad0]:KDMBB a2, s5, a7
	-[0x80000ad4]:sd a2, 224(gp)
Current Store : [0x80000ad8] : sd s5, 232(gp) -- Store: [0x80003408]:0xAAAA08000100FFFC




Last Coverpoint : ['rs2_h3_val == 32', 'rs2_h2_val == 1024', 'rs2_h1_val == 32', 'rs2_h0_val == 8192', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000b08]:KDMBB t6, t5, t4
	-[0x80000b0c]:sd t6, 240(gp)
Current Store : [0x80000b10] : sd t5, 248(gp) -- Store: [0x80003418]:0xF7FF20000400FFFD




Last Coverpoint : ['rs2_h3_val == 4', 'rs1_h3_val == -1', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000b30]:KDMBB t6, t5, t4
	-[0x80000b34]:sd t6, 256(gp)
Current Store : [0x80000b38] : sd t5, 264(gp) -- Store: [0x80003428]:0xFFFFFFFA40004000




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h1_val == -65', 'rs1_h1_val == 16']
Last Code Sequence : 
	-[0x80000b68]:KDMBB t6, t5, t4
	-[0x80000b6c]:sd t6, 272(gp)
Current Store : [0x80000b70] : sd t5, 280(gp) -- Store: [0x80003438]:0x8000FFF900103FFF




Last Coverpoint : ['rs2_h2_val == 21845', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x80000ba4]:KDMBB t6, t5, t4
	-[0x80000ba8]:sd t6, 288(gp)
Current Store : [0x80000bac] : sd t5, 296(gp) -- Store: [0x80003448]:0x0020AAAAFFFB0006




Last Coverpoint : ['rs2_h2_val == 512', 'rs2_h0_val == 64', 'rs1_h2_val == -65', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x80000be0]:KDMBB t6, t5, t4
	-[0x80000be4]:sd t6, 304(gp)
Current Store : [0x80000be8] : sd t5, 312(gp) -- Store: [0x80003458]:0x4000FFBFFFFDFFFD




Last Coverpoint : ['rs2_h2_val == -33', 'rs2_h0_val == 32767', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000c20]:KDMBB t6, t5, t4
	-[0x80000c24]:sd t6, 320(gp)
Current Store : [0x80000c28] : sd t5, 328(gp) -- Store: [0x80003468]:0xC00000052000FFF8




Last Coverpoint : ['rs1_h2_val == -1', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000c5c]:KDMBB t6, t5, t4
	-[0x80000c60]:sd t6, 336(gp)
Current Store : [0x80000c64] : sd t5, 344(gp) -- Store: [0x80003478]:0xFFF9FFFF10003FFF




Last Coverpoint : ['rs2_h2_val == -129']
Last Code Sequence : 
	-[0x80000c98]:KDMBB t6, t5, t4
	-[0x80000c9c]:sd t6, 352(gp)
Current Store : [0x80000ca0] : sd t5, 360(gp) -- Store: [0x80003488]:0xEFFFFEFF0200FFFE




Last Coverpoint : ['rs1_h1_val == 64']
Last Code Sequence : 
	-[0x80000ccc]:KDMBB t6, t5, t4
	-[0x80000cd0]:sd t6, 368(gp)
Current Store : [0x80000cd4] : sd t5, 376(gp) -- Store: [0x80003498]:0xFFFA00200040C000




Last Coverpoint : ['rs2_h1_val == 8', 'rs2_h0_val == -32768', 'rs1_h3_val == 4']
Last Code Sequence : 
	-[0x80000cfc]:KDMBB t6, t5, t4
	-[0x80000d00]:sd t6, 384(gp)
Current Store : [0x80000d04] : sd t5, 392(gp) -- Store: [0x800034a8]:0x0004FFF900000005




Last Coverpoint : ['rs2_h1_val == -129', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000d30]:KDMBB t6, t5, t4
	-[0x80000d34]:sd t6, 400(gp)
Current Store : [0x80000d38] : sd t5, 408(gp) -- Store: [0x800034b8]:0x000600060100AAAA




Last Coverpoint : ['rs1_h2_val == -16385', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000d68]:KDMBB t6, t5, t4
	-[0x80000d6c]:sd t6, 416(gp)
Current Store : [0x80000d70] : sd t5, 424(gp) -- Store: [0x800034c8]:0x0040BFFFFFFD7FFF




Last Coverpoint : ['rs1_h3_val == -2', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000da4]:KDMBB t6, t5, t4
	-[0x80000da8]:sd t6, 432(gp)
Current Store : [0x80000dac] : sd t5, 440(gp) -- Store: [0x800034d8]:0xFFFE00050000DFFF




Last Coverpoint : ['rs2_h0_val == -65', 'rs1_h1_val == -9', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000de0]:KDMBB t6, t5, t4
	-[0x80000de4]:sd t6, 448(gp)
Current Store : [0x80000de8] : sd t5, 456(gp) -- Store: [0x800034e8]:0xFFFF0007FFF7EFFF




Last Coverpoint : ['rs2_h1_val == 256', 'rs1_h3_val == 128', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000e18]:KDMBB t6, t5, t4
	-[0x80000e1c]:sd t6, 464(gp)
Current Store : [0x80000e20] : sd t5, 472(gp) -- Store: [0x800034f8]:0x0080F7FFFFF7FDFF




Last Coverpoint : ['rs2_h2_val == -513', 'rs2_h1_val == 128', 'rs1_h3_val == -17', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000e54]:KDMBB t6, t5, t4
	-[0x80000e58]:sd t6, 480(gp)
Current Store : [0x80000e5c] : sd t5, 488(gp) -- Store: [0x80003508]:0xFFEF1000FFFCFEFF




Last Coverpoint : ['rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000e88]:KDMBB t6, t5, t4
	-[0x80000e8c]:sd t6, 496(gp)
Current Store : [0x80000e90] : sd t5, 504(gp) -- Store: [0x80003518]:0xFFF61000FFFCFFDF




Last Coverpoint : ['rs2_h2_val == 2048', 'rs2_h0_val == -3', 'rs1_h2_val == 256', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000ec4]:KDMBB t6, t5, t4
	-[0x80000ec8]:sd t6, 512(gp)
Current Store : [0x80000ecc] : sd t5, 520(gp) -- Store: [0x80003528]:0x002001000009FFEF




Last Coverpoint : ['rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000ef8]:KDMBB t6, t5, t4
	-[0x80000efc]:sd t6, 528(gp)
Current Store : [0x80000f00] : sd t5, 536(gp) -- Store: [0x80003538]:0xAAAA0000FFF6FFF7




Last Coverpoint : ['rs1_h3_val == -129', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x80000f30]:KDMBB t6, t5, t4
	-[0x80000f34]:sd t6, 544(gp)
Current Store : [0x80000f38] : sd t5, 552(gp) -- Store: [0x80003548]:0xFF7F004004002000




Last Coverpoint : ['rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000f70]:KDMBB t6, t5, t4
	-[0x80000f74]:sd t6, 560(gp)
Current Store : [0x80000f78] : sd t5, 568(gp) -- Store: [0x80003558]:0xEFFF0020EFFF1000




Last Coverpoint : ['rs1_h2_val == -1025', 'rs1_h1_val == -21846', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000fb0]:KDMBB t6, t5, t4
	-[0x80000fb4]:sd t6, 576(gp)
Current Store : [0x80000fb8] : sd t5, 584(gp) -- Store: [0x80003568]:0x2000FBFFAAAA0800




Last Coverpoint : ['rs1_h1_val == -16385', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000ff4]:KDMBB t6, t5, t4
	-[0x80000ff8]:sd t6, 592(gp)
Current Store : [0x80000ffc] : sd t5, 600(gp) -- Store: [0x80003578]:0x4000BFFFBFFF0400




Last Coverpoint : ['rs2_h3_val == -16385', 'rs2_h2_val == -2049', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80001038]:KDMBB t6, t5, t4
	-[0x8000103c]:sd t6, 608(gp)
Current Store : [0x80001040] : sd t5, 616(gp) -- Store: [0x80003588]:0x00800006FEFF0200




Last Coverpoint : ['rs2_h1_val == 2', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80001074]:KDMBB t6, t5, t4
	-[0x80001078]:sd t6, 624(gp)
Current Store : [0x8000107c] : sd t5, 632(gp) -- Store: [0x80003598]:0x3FFF004000010100




Last Coverpoint : ['rs1_h0_val == 128']
Last Code Sequence : 
	-[0x800010a8]:KDMBB t6, t5, t4
	-[0x800010ac]:sd t6, 640(gp)
Current Store : [0x800010b0] : sd t5, 648(gp) -- Store: [0x800035a8]:0x0080FEFF00000080




Last Coverpoint : ['rs2_h2_val == 2', 'rs2_h1_val == -4097', 'rs1_h3_val == 2048', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x800010e0]:KDMBB t6, t5, t4
	-[0x800010e4]:sd t6, 656(gp)
Current Store : [0x800010e8] : sd t5, 664(gp) -- Store: [0x800035b8]:0x0800FFBFFFF70010




Last Coverpoint : ['rs2_h1_val == 1', 'rs1_h2_val == 4', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x8000111c]:KDMBB t6, t5, t4
	-[0x80001120]:sd t6, 672(gp)
Current Store : [0x80001124] : sd t5, 680(gp) -- Store: [0x800035c8]:0xFFFD000400030004




Last Coverpoint : ['rs1_h1_val == 21845', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x80001158]:KDMBB t6, t5, t4
	-[0x8000115c]:sd t6, 688(gp)
Current Store : [0x80001160] : sd t5, 696(gp) -- Store: [0x800035d8]:0xFFFA100055550002




Last Coverpoint : ['rs2_h0_val == -257', 'rs1_h2_val == -32768']
Last Code Sequence : 
	-[0x80001194]:KDMBB t6, t5, t4
	-[0x80001198]:sd t6, 704(gp)
Current Store : [0x8000119c] : sd t5, 712(gp) -- Store: [0x800035e8]:0x00098000FEFF0040




Last Coverpoint : ['rs2_h0_val == -21846']
Last Code Sequence : 
	-[0x800011c8]:KDMBB t6, t5, t4
	-[0x800011cc]:sd t6, 720(gp)
Current Store : [0x800011d0] : sd t5, 728(gp) -- Store: [0x800035f8]:0xFDFF001000000009




Last Coverpoint : ['rs2_h1_val == 32767', 'rs2_h0_val == -9', 'rs1_h3_val == 32767']
Last Code Sequence : 
	-[0x80001204]:KDMBB t6, t5, t4
	-[0x80001208]:sd t6, 736(gp)
Current Store : [0x8000120c] : sd t5, 744(gp) -- Store: [0x80003608]:0x7FFF000001005555




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h1_val == 64', 'rs2_h0_val == -5']
Last Code Sequence : 
	-[0x80001234]:KDMBB t6, t5, t4
	-[0x80001238]:sd t6, 752(gp)
Current Store : [0x8000123c] : sd t5, 760(gp) -- Store: [0x80003618]:0x0002FBFFFFFAC000




Last Coverpoint : ['rs2_h0_val == -2']
Last Code Sequence : 
	-[0x80001270]:KDMBB t6, t5, t4
	-[0x80001274]:sd t6, 768(gp)
Current Store : [0x80001278] : sd t5, 776(gp) -- Store: [0x80003628]:0xFEFF002000070005




Last Coverpoint : ['rs2_h0_val == 16384', 'rs1_h2_val == 512']
Last Code Sequence : 
	-[0x800012a4]:KDMBB t6, t5, t4
	-[0x800012a8]:sd t6, 784(gp)
Current Store : [0x800012ac] : sd t5, 792(gp) -- Store: [0x80003638]:0xFEFF020000040400




Last Coverpoint : ['rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x800012dc]:KDMBB t6, t5, t4
	-[0x800012e0]:sd t6, 800(gp)
Current Store : [0x800012e4] : sd t5, 808(gp) -- Store: [0x80003648]:0xFFDFFFFC0005FFBF




Last Coverpoint : ['rs2_h2_val == 32767', 'rs2_h0_val == 1024']
Last Code Sequence : 
	-[0x8000130c]:KDMBB t6, t5, t4
	-[0x80001310]:sd t6, 816(gp)
Current Store : [0x80001314] : sd t5, 824(gp) -- Store: [0x80003658]:0x00000003FFF6FEFF




Last Coverpoint : ['rs2_h0_val == 32']
Last Code Sequence : 
	-[0x80001338]:KDMBB t6, t5, t4
	-[0x8000133c]:sd t6, 832(gp)
Current Store : [0x80001340] : sd t5, 840(gp) -- Store: [0x80003668]:0xFFFFFFFFFFDFFFDF




Last Coverpoint : ['rs2_h0_val == 8', 'rs1_h2_val == 21845']
Last Code Sequence : 
	-[0x80001370]:KDMBB t6, t5, t4
	-[0x80001374]:sd t6, 848(gp)
Current Store : [0x80001378] : sd t5, 856(gp) -- Store: [0x80003678]:0x000355550040C000




Last Coverpoint : ['rs2_h0_val == 4']
Last Code Sequence : 
	-[0x800013ac]:KDMBB t6, t5, t4
	-[0x800013b0]:sd t6, 864(gp)
Current Store : [0x800013b4] : sd t5, 872(gp) -- Store: [0x80003688]:0xFFF67FFF00097FFF




Last Coverpoint : ['rs2_h0_val == 2']
Last Code Sequence : 
	-[0x800013e8]:KDMBB t6, t5, t4
	-[0x800013ec]:sd t6, 880(gp)
Current Store : [0x800013f0] : sd t5, 888(gp) -- Store: [0x80003698]:0x0009FFFC00060007




Last Coverpoint : ['rs2_h0_val == -1']
Last Code Sequence : 
	-[0x80001420]:KDMBB t6, t5, t4
	-[0x80001424]:sd t6, 896(gp)
Current Store : [0x80001428] : sd t5, 904(gp) -- Store: [0x800036a8]:0x3FFFFDFF00050000




Last Coverpoint : ['rs2_h2_val == 4096', 'rs1_h3_val == 21845', 'rs1_h2_val == 128']
Last Code Sequence : 
	-[0x80001454]:KDMBB t6, t5, t4
	-[0x80001458]:sd t6, 912(gp)
Current Store : [0x8000145c] : sd t5, 920(gp) -- Store: [0x800036b8]:0x5555008000000100




Last Coverpoint : ['rs1_h3_val == -8193', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x80001490]:KDMBB t6, t5, t4
	-[0x80001494]:sd t6, 928(gp)
Current Store : [0x80001498] : sd t5, 936(gp) -- Store: [0x800036c8]:0xDFFF2000FFEF0020




Last Coverpoint : ['rs1_h3_val == -9']
Last Code Sequence : 
	-[0x800014cc]:KDMBB t6, t5, t4
	-[0x800014d0]:sd t6, 944(gp)
Current Store : [0x800014d4] : sd t5, 952(gp) -- Store: [0x800036d8]:0xFFF70000FFFEFFF8




Last Coverpoint : ['rs1_h3_val == -5']
Last Code Sequence : 
	-[0x800014fc]:KDMBB t6, t5, t4
	-[0x80001500]:sd t6, 960(gp)
Current Store : [0x80001504] : sd t5, 968(gp) -- Store: [0x800036e8]:0xFFFB10003FFFFFF7




Last Coverpoint : ['rs1_h3_val == 1024']
Last Code Sequence : 
	-[0x8000153c]:KDMBB t6, t5, t4
	-[0x80001540]:sd t6, 976(gp)
Current Store : [0x80001544] : sd t5, 984(gp) -- Store: [0x800036f8]:0x0400400008002000




Last Coverpoint : ['rs1_h3_val == 512']
Last Code Sequence : 
	-[0x80001570]:KDMBB t6, t5, t4
	-[0x80001574]:sd t6, 992(gp)
Current Store : [0x80001578] : sd t5, 1000(gp) -- Store: [0x80003708]:0x0200000002000007




Last Coverpoint : ['rs1_h3_val == 256']
Last Code Sequence : 
	-[0x800015b0]:KDMBB t6, t5, t4
	-[0x800015b4]:sd t6, 1008(gp)
Current Store : [0x800015b8] : sd t5, 1016(gp) -- Store: [0x80003718]:0x0100400000100400




Last Coverpoint : ['rs2_h2_val == 32', 'rs1_h3_val == 16', 'rs1_h2_val == 1']
Last Code Sequence : 
	-[0x800015ec]:KDMBB t6, t5, t4
	-[0x800015f0]:sd t6, 1024(gp)
Current Store : [0x800015f4] : sd t5, 1032(gp) -- Store: [0x80003728]:0x001000010800FFDF




Last Coverpoint : ['rs2_h1_val == -21846', 'rs1_h3_val == 8']
Last Code Sequence : 
	-[0x8000161c]:KDMBB t6, t5, t4
	-[0x80001620]:sd t6, 1040(gp)
Current Store : [0x80001624] : sd t5, 1048(gp) -- Store: [0x80003738]:0x00083FFFEFFFFEFF




Last Coverpoint : ['rs2_h2_val == -65']
Last Code Sequence : 
	-[0x80001658]:KDMBB t6, t5, t4
	-[0x8000165c]:sd t6, 1056(gp)
Current Store : [0x80001660] : sd t5, 1064(gp) -- Store: [0x80003748]:0x0003000800030001




Last Coverpoint : ['rs2_h2_val == -3']
Last Code Sequence : 
	-[0x80001694]:KDMBB t6, t5, t4
	-[0x80001698]:sd t6, 1072(gp)
Current Store : [0x8000169c] : sd t5, 1080(gp) -- Store: [0x80003758]:0xC0000004FEFF0002




Last Coverpoint : ['rs2_h2_val == -32768', 'rs2_h1_val == 1024']
Last Code Sequence : 
	-[0x800016d4]:KDMBB t6, t5, t4
	-[0x800016d8]:sd t6, 1088(gp)
Current Store : [0x800016dc] : sd t5, 1096(gp) -- Store: [0x80003768]:0x0040FFFAFFBFFFF9




Last Coverpoint : ['rs1_h3_val == 4096', 'rs1_h2_val == -8193']
Last Code Sequence : 
	-[0x80001710]:KDMBB t6, t5, t4
	-[0x80001714]:sd t6, 1104(gp)
Current Store : [0x80001718] : sd t5, 1112(gp) -- Store: [0x80003778]:0x1000DFFF3FFF0040




Last Coverpoint : ['rs1_h2_val == -17']
Last Code Sequence : 
	-[0x80001748]:KDMBB t6, t5, t4
	-[0x8000174c]:sd t6, 1120(gp)
Current Store : [0x80001750] : sd t5, 1128(gp) -- Store: [0x80003788]:0xFFDFFFEF00402000




Last Coverpoint : ['rs1_h2_val == -3']
Last Code Sequence : 
	-[0x80001784]:KDMBB t6, t5, t4
	-[0x80001788]:sd t6, 1136(gp)
Current Store : [0x8000178c] : sd t5, 1144(gp) -- Store: [0x80003798]:0x0400FFFD4000AAAA




Last Coverpoint : ['rs2_h1_val == 21845', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x800017c8]:KDMBB t6, t5, t4
	-[0x800017cc]:sd t6, 1152(gp)
Current Store : [0x800017d0] : sd t5, 1160(gp) -- Store: [0x800037a8]:0xC000FFBFDFFF0002




Last Coverpoint : ['rs2_h2_val == -8193', 'rs2_h1_val == -33']
Last Code Sequence : 
	-[0x80001800]:KDMBB t6, t5, t4
	-[0x80001804]:sd t6, 1168(gp)
Current Store : [0x80001808] : sd t5, 1176(gp) -- Store: [0x800037b8]:0xFDFFFFFC00800400




Last Coverpoint : ['rs2_h2_val == -21846', 'rs1_h2_val == 2']
Last Code Sequence : 
	-[0x80001838]:KDMBB t6, t5, t4
	-[0x8000183c]:sd t6, 1184(gp)
Current Store : [0x80001840] : sd t5, 1192(gp) -- Store: [0x800037c8]:0x000200020008FEFF




Last Coverpoint : ['rs2_h1_val == -17']
Last Code Sequence : 
	-[0x80001874]:KDMBB t6, t5, t4
	-[0x80001878]:sd t6, 1200(gp)
Current Store : [0x8000187c] : sd t5, 1208(gp) -- Store: [0x800037d8]:0x000300050007F7FF




Last Coverpoint : ['rs2_h1_val == -5']
Last Code Sequence : 
	-[0x800018a8]:KDMBB t6, t5, t4
	-[0x800018ac]:sd t6, 1216(gp)
Current Store : [0x800018b0] : sd t5, 1224(gp) -- Store: [0x800037e8]:0x00050002FFDF1000




Last Coverpoint : ['rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x800018e4]:KDMBB t6, t5, t4
	-[0x800018e8]:sd t6, 1232(gp)
Current Store : [0x800018ec] : sd t5, 1240(gp) -- Store: [0x800037f8]:0x010000027FFF0004




Last Coverpoint : ['rs2_h3_val == -1', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x80001920]:KDMBB t6, t5, t4
	-[0x80001924]:sd t6, 1248(gp)
Current Store : [0x80001928] : sd t5, 1256(gp) -- Store: [0x80003808]:0xFFF9FFFFFBFF3FFF




Last Coverpoint : ['rs1_h1_val == -513']
Last Code Sequence : 
	-[0x80001954]:KDMBB t6, t5, t4
	-[0x80001958]:sd t6, 1264(gp)
Current Store : [0x8000195c] : sd t5, 1272(gp) -- Store: [0x80003818]:0x0006BFFFFDFF0000




Last Coverpoint : ['rs2_h2_val == 1']
Last Code Sequence : 
	-[0x80001998]:KDMBB t6, t5, t4
	-[0x8000199c]:sd t6, 1280(gp)
Current Store : [0x800019a0] : sd t5, 1288(gp) -- Store: [0x80003828]:0xC000FEFFAAAAFFF6




Last Coverpoint : ['rs1_h1_val == -129']
Last Code Sequence : 
	-[0x800019d4]:KDMBB t6, t5, t4
	-[0x800019d8]:sd t6, 1296(gp)
Current Store : [0x800019dc] : sd t5, 1304(gp) -- Store: [0x80003838]:0x0100FBFFFF7F0008




Last Coverpoint : ['rs1_h2_val == -2']
Last Code Sequence : 
	-[0x80001a0c]:KDMBB t6, t5, t4
	-[0x80001a10]:sd t6, 1312(gp)
Current Store : [0x80001a14] : sd t5, 1320(gp) -- Store: [0x80003848]:0x3FFFFFFE08005555




Last Coverpoint : ['opcode : kdmbb', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val == -32768', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == -33', 'rs2_h1_val == 512', 'rs1_h3_val == -513', 'rs1_h2_val == 32767']
Last Code Sequence : 
	-[0x80001a38]:KDMBB t6, t5, t4
	-[0x80001a3c]:sd t6, 1328(gp)
Current Store : [0x80001a40] : sd t5, 1336(gp) -- Store: [0x80003858]:0xFDFF7FFFFFFC8000




Last Coverpoint : ['rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x80001a7c]:KDMBB t6, t5, t4
	-[0x80001a80]:sd t6, 1344(gp)
Current Store : [0x80001a84] : sd t5, 1352(gp) -- Store: [0x80003868]:0xBFFFBFFFFFF6BFFF





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

|s.no|            signature             |                                                                                                                                                                                                                                            coverpoints                                                                                                                                                                                                                                             |                                  code                                   |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000000000000A2|- opcode : kdmbb<br> - rs1 : x4<br> - rs2 : x4<br> - rd : x29<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h3_val == -33<br> - rs2_h1_val == 512<br> - rs1_h3_val == -33<br> - rs1_h1_val == 512<br>                |[0x800003c4]:KDMBB t4, tp, tp<br> [0x800003c8]:sd t4, 0(a6)<br>          |
|   2|[0x80003220]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x0<br> - rd : x0<br> - rs1 == rs2 == rd<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                  |[0x80000408]:KDMBB zero, zero, zero<br> [0x8000040c]:sd zero, 16(a6)<br> |
|   3|[0x80003230]<br>0xFFFFFFFFFFFFD7F6|- rs1 : x9<br> - rs2 : x21<br> - rd : x27<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h3_val == 128<br> - rs2_h2_val == -9<br> - rs2_h1_val == 2048<br> - rs2_h0_val == -1025<br> - rs1_h3_val == -16385<br> - rs1_h1_val == 32<br> |[0x80000444]:KDMBB s11, s1, s5<br> [0x80000448]:sd s11, 32(a6)<br>       |
|   4|[0x80003240]<br>0x0000000000000000|- rs1 : x20<br> - rs2 : x6<br> - rd : x20<br> - rs1 == rd != rs2<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs2_h1_val == -8193<br> - rs2_h0_val == -16385<br> - rs1_h3_val == 1<br> - rs1_h1_val == 2048<br>                                                                                                                                                                                                                                            |[0x80000474]:KDMBB s4, s4, t1<br> [0x80000478]:sd s4, 48(a6)<br>         |
|   5|[0x80003250]<br>0x0000000000000080|- rs1 : x25<br> - rs2 : x13<br> - rd : x13<br> - rs2 == rd != rs1<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h3_val == 16<br> - rs2_h2_val == 8<br> - rs2_h1_val == 8192<br> - rs1_h3_val == 16384<br> - rs1_h2_val == -513<br> - rs1_h1_val == 4<br>                                                                                                                                                        |[0x800004b0]:KDMBB a3, s9, a3<br> [0x800004b4]:sd a3, 64(a6)<br>         |
|   6|[0x80003260]<br>0xFFFFFFFFFFFFF7C0|- rs1 : x11<br> - rs2 : x30<br> - rd : x6<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs2_h3_val == 8<br> - rs2_h2_val == 64<br> - rs2_h0_val == -33<br> - rs1_h3_val == 2<br> - rs1_h2_val == 64<br> - rs1_h1_val == -1<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                               |[0x800004ec]:KDMBB t1, a1, t5<br> [0x800004f0]:sd t1, 80(a6)<br>         |
|   7|[0x80003270]<br>0x0000000000002000|- rs1 : x28<br> - rs2 : x3<br> - rd : x30<br> - rs2_h2_val == 4<br> - rs2_h1_val == -1<br> - rs2_h0_val == 512<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                                                                            |[0x80000528]:KDMBB t5, t3, gp<br> [0x8000052c]:sd t5, 96(a6)<br>         |
|   8|[0x80003280]<br>0xFFFFFFFFFFFFEFFE|- rs1 : x13<br> - rs2 : x14<br> - rd : x7<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h3_val == -21846<br> - rs2_h2_val == 16384<br> - rs2_h1_val == -3<br> - rs2_h0_val == 1<br> - rs1_h2_val == -4097<br> - rs1_h1_val == -4097<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                               |[0x80000564]:KDMBB t2, a3, a4<br> [0x80000568]:sd t2, 112(a6)<br>        |
|   9|[0x80003290]<br>0xFFFFFFFFFFFFBF80|- rs1 : x6<br> - rs2 : x8<br> - rd : x3<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h3_val == 21845<br> - rs2_h2_val == -17<br> - rs2_h1_val == 16384<br> - rs2_h0_val == -129<br> - rs1_h3_val == -257<br> - rs1_h2_val == -257<br> - rs1_h1_val == -2049<br> - rs1_h0_val == 64<br>                                                                                                                                                                 |[0x800005a8]:KDMBB gp, t1, fp<br> [0x800005ac]:sd gp, 128(a6)<br>        |
|  10|[0x800032a0]<br>0x0000000000000022|- rs1 : x7<br> - rs2 : x28<br> - rd : x10<br> - rs2_h3_val == 32767<br> - rs2_h2_val == 16<br> - rs2_h1_val == -2049<br> - rs2_h0_val == -17<br> - rs1_h3_val == -32768<br> - rs1_h2_val == -5<br> - rs1_h1_val == 2<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                     |[0x800005e4]:KDMBB a0, t2, t3<br> [0x800005e8]:sd a0, 144(a6)<br>        |
|  11|[0x800032b0]<br>0x000000000000014A|- rs1 : x14<br> - rs2 : x5<br> - rd : x4<br> - rs2_h3_val == -8193<br> - rs1_h3_val == 8192<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                              |[0x80000620]:KDMBB tp, a4, t0<br> [0x80000624]:sd tp, 160(a6)<br>        |
|  12|[0x800032c0]<br>0x000000000000AAAA|- rs1 : x12<br> - rs2 : x29<br> - rd : x26<br> - rs2_h3_val == -4097<br> - rs2_h1_val == -2<br> - rs2_h0_val == 21845<br> - rs1_h3_val == -1025<br> - rs1_h2_val == -9<br> - rs1_h1_val == -65<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                            |[0x8000065c]:KDMBB s10, a2, t4<br> [0x80000660]:sd s10, 176(a6)<br>      |
|  13|[0x800032d0]<br>0xFFFFFFFFFFF9555C|- rs1 : x29<br> - rs2 : x10<br> - rd : x9<br> - rs2_h3_val == -2049<br> - rs2_h2_val == -2<br> - rs1_h2_val == 8<br> - rs1_h1_val == -2<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                               |[0x80000698]:KDMBB s1, t4, a0<br> [0x8000069c]:sd s1, 192(a6)<br>        |
|  14|[0x800032e0]<br>0x000000000000AAAA|- rs1 : x15<br> - rs2 : x11<br> - rd : x5<br> - rs2_h3_val == -1025<br> - rs2_h1_val == 16<br> - rs1_h2_val == -129<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                       |[0x800006d4]:KDMBB t0, a5, a1<br> [0x800006d8]:sd t0, 208(a6)<br>        |
|  15|[0x800032f0]<br>0xFFFFFFFFFFFEFE00|- rs1 : x31<br> - rs2 : x2<br> - rd : x1<br> - rs2_h3_val == -513<br> - rs2_h2_val == 8192<br> - rs2_h0_val == 256<br> - rs1_h1_val == 128<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                             |[0x80000710]:KDMBB ra, t6, sp<br> [0x80000714]:sd ra, 224(a6)<br>        |
|  16|[0x80003300]<br>0xFFFFFFFFFFFFFFEE|- rs1 : x19<br> - rs2 : x20<br> - rd : x11<br> - rs2_h3_val == -257<br> - rs1_h3_val == -513<br> - rs1_h2_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                             |[0x8000073c]:KDMBB a1, s3, s4<br> [0x80000740]:sd a1, 240(a6)<br>        |
|  17|[0x80003310]<br>0xFFFFFFFFFAAA0556|- rs1 : x3<br> - rs2 : x18<br> - rd : x17<br> - rs2_h3_val == -129<br> - rs2_h2_val == -16385<br> - rs2_h0_val == -2049<br> - rs1_h3_val == -21846<br> - rs1_h2_val == -33<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                            |[0x80000780]:KDMBB a7, gp, s2<br> [0x80000784]:sd a7, 256(a6)<br>        |
|  18|[0x80003320]<br>0xFFFFFFFFFFFFDFFE|- rs1 : x10<br> - rs2 : x12<br> - rd : x21<br> - rs2_h3_val == -65<br> - rs2_h1_val == -9<br> - rs2_h0_val == -4097<br> - rs1_h2_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                   |[0x800007c4]:KDMBB s5, a0, a2<br> [0x800007c8]:sd s5, 0(gp)<br>          |
|  19|[0x80003330]<br>0xFFFFFFFFFFFFFEFE|- rs1 : x2<br> - rs2 : x9<br> - rd : x23<br> - rs2_h3_val == -17<br> - rs2_h2_val == 128<br> - rs2_h1_val == -513<br> - rs1_h3_val == 32<br>                                                                                                                                                                                                                                                                                                                                                        |[0x800007f8]:KDMBB s7, sp, s1<br> [0x800007fc]:sd s7, 16(gp)<br>         |
|  20|[0x80003340]<br>0xFFFFFFFFFFFFF8F2|- rs1 : x18<br> - rs2 : x19<br> - rd : x2<br> - rs2_h3_val == -9<br> - rs2_h1_val == -16385<br> - rs1_h3_val == 64<br> - rs1_h2_val == 1024<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                               |[0x8000082c]:KDMBB sp, s2, s3<br> [0x80000830]:sd sp, 32(gp)<br>         |
|  21|[0x80003350]<br>0xFFFFFFFFFFC00000|- rs1 : x24<br> - rs2 : x31<br> - rd : x18<br> - rs2_h3_val == -5<br> - rs2_h1_val == 4<br> - rs2_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000860]:KDMBB s2, s8, t6<br> [0x80000864]:sd s2, 48(gp)<br>         |
|  22|[0x80003360]<br>0x0000000000040902|- rs1 : x23<br> - rs2 : x22<br> - rd : x25<br> - rs2_h3_val == -3<br> - rs2_h2_val == -1025<br> - rs1_h3_val == -4097<br> - rs1_h2_val == 2048<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                        |[0x80000898]:KDMBB s9, s7, s6<br> [0x8000089c]:sd s9, 64(gp)<br>         |
|  23|[0x80003370]<br>0x0000000000000000|- rs1 : x26<br> - rs2 : x1<br> - rd : x16<br> - rs2_h3_val == -2<br> - rs1_h2_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800008d0]:KDMBB a6, s10, ra<br> [0x800008d4]:sd a6, 80(gp)<br>        |
|  24|[0x80003380]<br>0x000000000001400A|- rs1 : x5<br> - rs2 : x24<br> - rd : x14<br> - rs2_h3_val == -32768<br> - rs2_h1_val == -257<br> - rs2_h0_val == -8193<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                 |[0x80000908]:KDMBB a4, t0, s8<br> [0x8000090c]:sd a4, 96(gp)<br>         |
|  25|[0x80003390]<br>0x0000000010010000|- rs1 : x30<br> - rs2 : x25<br> - rd : x28<br> - rs1_h0_val == -32768<br> - rs2_h3_val == 16384<br> - rs2_h2_val == -1<br> - rs2_h1_val == 4096<br> - rs1_h3_val == -2049<br> - rs1_h2_val == 32<br> - rs1_h1_val == -257<br>                                                                                                                                                                                                                                                                       |[0x80000948]:KDMBB t3, t5, s9<br> [0x8000094c]:sd t3, 112(gp)<br>        |
|  26|[0x800033a0]<br>0xFFFFFFFFFFEFFF80|- rs1 : x22<br> - rs2 : x16<br> - rd : x19<br> - rs2_h3_val == 8192<br> - rs1_h3_val == -3<br> - rs1_h2_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                             |[0x8000097c]:KDMBB s3, s6, a6<br> [0x80000980]:sd s3, 128(gp)<br>        |
|  27|[0x800033b0]<br>0x0000000000000000|- rs1 : x16<br> - rs2 : x15<br> - rd : x8<br> - rs2_h3_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800009a8]:KDMBB fp, a6, a5<br> [0x800009ac]:sd fp, 144(gp)<br>        |
|  28|[0x800033c0]<br>0xFFFFFFFFFFFFF7E0|- rs1 : x8<br> - rs2 : x23<br> - rd : x24<br> - rs2_h3_val == 2048<br> - rs2_h2_val == -4097<br> - rs2_h0_val == 16<br> - rs1_h3_val == -65<br> - rs1_h2_val == 4096<br> - rs1_h1_val == -32768<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                         |[0x800009e4]:KDMBB s8, fp, s7<br> [0x800009e8]:sd s8, 160(gp)<br>        |
|  29|[0x800033d0]<br>0xFFFFFFFFFFFFE7F4|- rs1 : x27<br> - rs2 : x26<br> - rd : x22<br> - rs2_h3_val == 1024<br> - rs2_h1_val == -32768<br> - rs2_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                         |[0x80000a20]:KDMBB s6, s11, s10<br> [0x80000a24]:sd s6, 176(gp)<br>      |
|  30|[0x800033e0]<br>0xFFFFFFFFFFFFFFE8|- rs1 : x17<br> - rs2 : x7<br> - rd : x31<br> - rs2_h3_val == 512<br> - rs2_h2_val == 256<br> - rs2_h1_val == -1025<br> - rs1_h2_val == -21846<br> - rs1_h1_val == 1024<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                  |[0x80000a5c]:KDMBB t6, a7, t2<br> [0x80000a60]:sd t6, 192(gp)<br>        |
|  31|[0x800033f0]<br>0xFFFFFFFFFFFFFF34|- rs1 : x1<br> - rs2 : x27<br> - rd : x15<br> - rs2_h3_val == 256<br> - rs2_h2_val == -257<br> - rs1_h2_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                            |[0x80000a94]:KDMBB a5, ra, s11<br> [0x80000a98]:sd a5, 208(gp)<br>       |
|  32|[0x80003400]<br>0xFFFFFFFFFFFFC000|- rs1 : x21<br> - rs2 : x17<br> - rd : x12<br> - rs2_h3_val == 64<br> - rs2_h2_val == -5<br> - rs2_h0_val == 2048<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                       |[0x80000ad0]:KDMBB a2, s5, a7<br> [0x80000ad4]:sd a2, 224(gp)<br>        |
|  33|[0x80003410]<br>0xFFFFFFFFFFFF4000|- rs2_h3_val == 32<br> - rs2_h2_val == 1024<br> - rs2_h1_val == 32<br> - rs2_h0_val == 8192<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                              |[0x80000b08]:KDMBB t6, t5, t4<br> [0x80000b0c]:sd t6, 240(gp)<br>        |
|  34|[0x80003420]<br>0x0000000000028000|- rs2_h3_val == 4<br> - rs1_h3_val == -1<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000b30]:KDMBB t6, t5, t4<br> [0x80000b34]:sd t6, 256(gp)<br>        |
|  35|[0x80003430]<br>0xFFFFFFFFE0008000|- rs2_h3_val == 2<br> - rs2_h1_val == -65<br> - rs1_h1_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000b68]:KDMBB t6, t5, t4<br> [0x80000b6c]:sd t6, 272(gp)<br>        |
|  36|[0x80003440]<br>0x000000000000006C|- rs2_h2_val == 21845<br> - rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000ba4]:KDMBB t6, t5, t4<br> [0x80000ba8]:sd t6, 288(gp)<br>        |
|  37|[0x80003450]<br>0xFFFFFFFFFFFFFE80|- rs2_h2_val == 512<br> - rs2_h0_val == 64<br> - rs1_h2_val == -65<br> - rs1_h1_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000be0]:KDMBB t6, t5, t4<br> [0x80000be4]:sd t6, 304(gp)<br>        |
|  38|[0x80003460]<br>0xFFFFFFFFFFF80010|- rs2_h2_val == -33<br> - rs2_h0_val == 32767<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000c20]:KDMBB t6, t5, t4<br> [0x80000c24]:sd t6, 320(gp)<br>        |
|  39|[0x80003470]<br>0x0000000000FFFC00|- rs1_h2_val == -1<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000c5c]:KDMBB t6, t5, t4<br> [0x80000c60]:sd t6, 336(gp)<br>        |
|  40|[0x80003480]<br>0xFFFFFFFFFFFFFC00|- rs2_h2_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000c98]:KDMBB t6, t5, t4<br> [0x80000c9c]:sd t6, 352(gp)<br>        |
|  41|[0x80003490]<br>0x0000000020000000|- rs1_h1_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000ccc]:KDMBB t6, t5, t4<br> [0x80000cd0]:sd t6, 368(gp)<br>        |
|  42|[0x800034a0]<br>0xFFFFFFFFFFFB0000|- rs2_h1_val == 8<br> - rs2_h0_val == -32768<br> - rs1_h3_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000cfc]:KDMBB t6, t5, t4<br> [0x80000d00]:sd t6, 384(gp)<br>        |
|  43|[0x800034b0]<br>0x000000000004AAB4|- rs2_h1_val == -129<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000d30]:KDMBB t6, t5, t4<br> [0x80000d34]:sd t6, 400(gp)<br>        |
|  44|[0x800034c0]<br>0xFFFFFFFFBFFF8002|- rs1_h2_val == -16385<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000d68]:KDMBB t6, t5, t4<br> [0x80000d6c]:sd t6, 416(gp)<br>        |
|  45|[0x800034d0]<br>0x0000000000204102|- rs1_h3_val == -2<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000da4]:KDMBB t6, t5, t4<br> [0x80000da8]:sd t6, 432(gp)<br>        |
|  46|[0x800034e0]<br>0x0000000000082082|- rs2_h0_val == -65<br> - rs1_h1_val == -9<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000de0]:KDMBB t6, t5, t4<br> [0x80000de4]:sd t6, 448(gp)<br>        |
|  47|[0x800034f0]<br>0x0000000000080802|- rs2_h1_val == 256<br> - rs1_h3_val == 128<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000e18]:KDMBB t6, t5, t4<br> [0x80000e1c]:sd t6, 464(gp)<br>        |
|  48|[0x80003500]<br>0x0000000000001010|- rs2_h2_val == -513<br> - rs2_h1_val == 128<br> - rs1_h3_val == -17<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000e54]:KDMBB t6, t5, t4<br> [0x80000e58]:sd t6, 480(gp)<br>        |
|  49|[0x80003510]<br>0x0000000000000462|- rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000e88]:KDMBB t6, t5, t4<br> [0x80000e8c]:sd t6, 496(gp)<br>        |
|  50|[0x80003520]<br>0x0000000000000066|- rs2_h2_val == 2048<br> - rs2_h0_val == -3<br> - rs1_h2_val == 256<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000ec4]:KDMBB t6, t5, t4<br> [0x80000ec8]:sd t6, 512(gp)<br>        |
|  51|[0x80003530]<br>0xFFFFFFFFFFFFFF94|- rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000ef8]:KDMBB t6, t5, t4<br> [0x80000efc]:sd t6, 528(gp)<br>        |
|  52|[0x80003540]<br>0xFFFFFFFFFFF7C000|- rs1_h3_val == -129<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000f30]:KDMBB t6, t5, t4<br> [0x80000f34]:sd t6, 544(gp)<br>        |
|  53|[0x80003550]<br>0xFFFFFFFFFFEFE000|- rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000f70]:KDMBB t6, t5, t4<br> [0x80000f74]:sd t6, 560(gp)<br>        |
|  54|[0x80003560]<br>0xFFFFFFFFFF7FF000|- rs1_h2_val == -1025<br> - rs1_h1_val == -21846<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000fb0]:KDMBB t6, t5, t4<br> [0x80000fb4]:sd t6, 576(gp)<br>        |
|  55|[0x80003570]<br>0x0000000000020000|- rs1_h1_val == -16385<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000ff4]:KDMBB t6, t5, t4<br> [0x80000ff8]:sd t6, 592(gp)<br>        |
|  56|[0x80003580]<br>0x0000000000200000|- rs2_h3_val == -16385<br> - rs2_h2_val == -2049<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001038]:KDMBB t6, t5, t4<br> [0x8000103c]:sd t6, 608(gp)<br>        |
|  57|[0x80003590]<br>0xFFFFFFFFFFFEFE00|- rs2_h1_val == 2<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001074]:KDMBB t6, t5, t4<br> [0x80001078]:sd t6, 624(gp)<br>        |
|  58|[0x800035a0]<br>0xFFFFFFFFFFEFFF00|- rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800010a8]:KDMBB t6, t5, t4<br> [0x800010ac]:sd t6, 640(gp)<br>        |
|  59|[0x800035b0]<br>0x0000000000040000|- rs2_h2_val == 2<br> - rs2_h1_val == -4097<br> - rs1_h3_val == 2048<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800010e0]:KDMBB t6, t5, t4<br> [0x800010e4]:sd t6, 656(gp)<br>        |
|  60|[0x800035c0]<br>0xFFFFFFFFFFFFBFF8|- rs2_h1_val == 1<br> - rs1_h2_val == 4<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x8000111c]:KDMBB t6, t5, t4<br> [0x80001120]:sd t6, 672(gp)<br>        |
|  61|[0x800035d0]<br>0x0000000000000004|- rs1_h1_val == 21845<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001158]:KDMBB t6, t5, t4<br> [0x8000115c]:sd t6, 688(gp)<br>        |
|  62|[0x800035e0]<br>0xFFFFFFFFFFFF7F80|- rs2_h0_val == -257<br> - rs1_h2_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001194]:KDMBB t6, t5, t4<br> [0x80001198]:sd t6, 704(gp)<br>        |
|  63|[0x800035f0]<br>0xFFFFFFFFFFF9FFF4|- rs2_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x800011c8]:KDMBB t6, t5, t4<br> [0x800011cc]:sd t6, 720(gp)<br>        |
|  64|[0x80003600]<br>0xFFFFFFFFFFFA0006|- rs2_h1_val == 32767<br> - rs2_h0_val == -9<br> - rs1_h3_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001204]:KDMBB t6, t5, t4<br> [0x80001208]:sd t6, 736(gp)<br>        |
|  65|[0x80003610]<br>0x0000000000028000|- rs2_h3_val == 1<br> - rs2_h1_val == 64<br> - rs2_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001234]:KDMBB t6, t5, t4<br> [0x80001238]:sd t6, 752(gp)<br>        |
|  66|[0x80003620]<br>0xFFFFFFFFFFFFFFEC|- rs2_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001270]:KDMBB t6, t5, t4<br> [0x80001274]:sd t6, 768(gp)<br>        |
|  67|[0x80003630]<br>0x0000000002000000|- rs2_h0_val == 16384<br> - rs1_h2_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x800012a4]:KDMBB t6, t5, t4<br> [0x800012a8]:sd t6, 784(gp)<br>        |
|  68|[0x80003640]<br>0xFFFFFFFFFFF7E000|- rs2_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800012dc]:KDMBB t6, t5, t4<br> [0x800012e0]:sd t6, 800(gp)<br>        |
|  69|[0x80003650]<br>0xFFFFFFFFFFF7F800|- rs2_h2_val == 32767<br> - rs2_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x8000130c]:KDMBB t6, t5, t4<br> [0x80001310]:sd t6, 816(gp)<br>        |
|  70|[0x80003660]<br>0xFFFFFFFFFFFFF7C0|- rs2_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001338]:KDMBB t6, t5, t4<br> [0x8000133c]:sd t6, 832(gp)<br>        |
|  71|[0x80003670]<br>0xFFFFFFFFFFFC0000|- rs2_h0_val == 8<br> - rs1_h2_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001370]:KDMBB t6, t5, t4<br> [0x80001374]:sd t6, 848(gp)<br>        |
|  72|[0x80003680]<br>0x000000000003FFF8|- rs2_h0_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800013ac]:KDMBB t6, t5, t4<br> [0x800013b0]:sd t6, 864(gp)<br>        |
|  73|[0x80003690]<br>0x000000000000001C|- rs2_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800013e8]:KDMBB t6, t5, t4<br> [0x800013ec]:sd t6, 880(gp)<br>        |
|  74|[0x800036a0]<br>0x0000000000000000|- rs2_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001420]:KDMBB t6, t5, t4<br> [0x80001424]:sd t6, 896(gp)<br>        |
|  75|[0x800036b0]<br>0xFFFFFFFFFF555400|- rs2_h2_val == 4096<br> - rs1_h3_val == 21845<br> - rs1_h2_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001454]:KDMBB t6, t5, t4<br> [0x80001458]:sd t6, 912(gp)<br>        |
|  76|[0x800036c0]<br>0xFFFFFFFFFFFBFFC0|- rs1_h3_val == -8193<br> - rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001490]:KDMBB t6, t5, t4<br> [0x80001494]:sd t6, 928(gp)<br>        |
|  77|[0x800036d0]<br>0xFFFFFFFFFFFF8000|- rs1_h3_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800014cc]:KDMBB t6, t5, t4<br> [0x800014d0]:sd t6, 944(gp)<br>        |
|  78|[0x800036e0]<br>0xFFFFFFFFFFFDC000|- rs1_h3_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800014fc]:KDMBB t6, t5, t4<br> [0x80001500]:sd t6, 960(gp)<br>        |
|  79|[0x800036f0]<br>0xFFFFFFFFFFFF4000|- rs1_h3_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x8000153c]:KDMBB t6, t5, t4<br> [0x80001540]:sd t6, 976(gp)<br>        |
|  80|[0x80003700]<br>0x0000000000000380|- rs1_h3_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001570]:KDMBB t6, t5, t4<br> [0x80001574]:sd t6, 992(gp)<br>        |
|  81|[0x80003710]<br>0x0000000000003800|- rs1_h3_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800015b0]:KDMBB t6, t5, t4<br> [0x800015b4]:sd t6, 1008(gp)<br>       |
|  82|[0x80003720]<br>0x0000000000000252|- rs2_h2_val == 32<br> - rs1_h3_val == 16<br> - rs1_h2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800015ec]:KDMBB t6, t5, t4<br> [0x800015f0]:sd t6, 1024(gp)<br>       |
|  83|[0x80003730]<br>0x0000000000808000|- rs2_h1_val == -21846<br> - rs1_h3_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000161c]:KDMBB t6, t5, t4<br> [0x80001620]:sd t6, 1040(gp)<br>       |
|  84|[0x80003740]<br>0xFFFFFFFFFFFF5554|- rs2_h2_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001658]:KDMBB t6, t5, t4<br> [0x8000165c]:sd t6, 1056(gp)<br>       |
|  85|[0x80003750]<br>0x0000000000002000|- rs2_h2_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001694]:KDMBB t6, t5, t4<br> [0x80001698]:sd t6, 1072(gp)<br>       |
|  86|[0x80003760]<br>0x0000000000038000|- rs2_h2_val == -32768<br> - rs2_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800016d4]:KDMBB t6, t5, t4<br> [0x800016d8]:sd t6, 1088(gp)<br>       |
|  87|[0x80003770]<br>0xFFFFFFFFFFFFFF80|- rs1_h3_val == 4096<br> - rs1_h2_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001710]:KDMBB t6, t5, t4<br> [0x80001714]:sd t6, 1104(gp)<br>       |
|  88|[0x80003780]<br>0xFFFFFFFFFFDFC000|- rs1_h2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001748]:KDMBB t6, t5, t4<br> [0x8000174c]:sd t6, 1120(gp)<br>       |
|  89|[0x80003790]<br>0xFFFFFFFFFFFAAAA0|- rs1_h2_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001784]:KDMBB t6, t5, t4<br> [0x80001788]:sd t6, 1136(gp)<br>       |
|  90|[0x800037a0]<br>0x0000000000000400|- rs2_h1_val == 21845<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800017c8]:KDMBB t6, t5, t4<br> [0x800017cc]:sd t6, 1152(gp)<br>       |
|  91|[0x800037b0]<br>0xFFFFFFFFFFFEF800|- rs2_h2_val == -8193<br> - rs2_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80001800]:KDMBB t6, t5, t4<br> [0x80001804]:sd t6, 1168(gp)<br>       |
|  92|[0x800037c0]<br>0xFFFFFFFFFFDFE000|- rs2_h2_val == -21846<br> - rs1_h2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001838]:KDMBB t6, t5, t4<br> [0x8000183c]:sd t6, 1184(gp)<br>       |
|  93|[0x800037d0]<br>0xFFFFFFFFFFFF8FF2|- rs2_h1_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80001874]:KDMBB t6, t5, t4<br> [0x80001878]:sd t6, 1200(gp)<br>       |
|  94|[0x800037e0]<br>0xFFFFFFFFF8000000|- rs2_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800018a8]:KDMBB t6, t5, t4<br> [0x800018ac]:sd t6, 1216(gp)<br>       |
|  95|[0x800037f0]<br>0xFFFFFFFFFFFFFFC0|- rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x800018e4]:KDMBB t6, t5, t4<br> [0x800018e8]:sd t6, 1232(gp)<br>       |
|  96|[0x80003800]<br>0xFFFFFFFFFEFF8402|- rs2_h3_val == -1<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80001920]:KDMBB t6, t5, t4<br> [0x80001924]:sd t6, 1248(gp)<br>       |
|  97|[0x80003810]<br>0x0000000000000000|- rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001954]:KDMBB t6, t5, t4<br> [0x80001958]:sd t6, 1264(gp)<br>       |
|  98|[0x80003820]<br>0x00000000000000C8|- rs2_h2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001998]:KDMBB t6, t5, t4<br> [0x8000199c]:sd t6, 1280(gp)<br>       |
|  99|[0x80003830]<br>0x000000000003FFF0|- rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x800019d4]:KDMBB t6, t5, t4<br> [0x800019d8]:sd t6, 1296(gp)<br>       |
| 100|[0x80003840]<br>0xFFFFFFFFFF54AB56|- rs1_h2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001a0c]:KDMBB t6, t5, t4<br> [0x80001a10]:sd t6, 1312(gp)<br>       |
| 101|[0x80003860]<br>0xFFFFFFFFBFFF8002|- rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001a7c]:KDMBB t6, t5, t4<br> [0x80001a80]:sd t6, 1344(gp)<br>       |
