
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001b40')]      |
| SIG_REGION                | [('0x80003210', '0x800038b0', '212 dwords')]      |
| COV_LABELS                | kstas16      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kstas16-01.S    |
| Total Number of coverpoints| 420     |
| Total Coverpoints Hit     | 414      |
| Total Signature Updates   | 212      |
| STAT1                     | 105      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 106     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001af8]:KSTAS16 t6, t5, t4
      [0x80001afc]:sd t6, 1408(ra)
 -- Signature Address: 0x80003890 Data: 0xFFEEFF7DE0068000
 -- Redundant Coverpoints hit by the op
      - opcode : kstas16
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h0_val == -32768
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val < 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val < 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val > 0
      - rs2_h2_val == 2
      - rs2_h0_val == 8
      - rs1_h2_val == -129
      - rs1_h1_val == -8193






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kstas16', 'rs1 : x10', 'rs2 : x10', 'rd : x31', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h2_val == 2', 'rs2_h0_val == 8', 'rs1_h2_val == 2', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x800003d0]:KSTAS16 t6, a0, a0
	-[0x800003d4]:sd t6, 0(fp)
Current Store : [0x800003d8] : sd a0, 8(fp) -- Store: [0x80003218]:0xFFF6000200070008




Last Coverpoint : ['rs1 : x21', 'rs2 : x21', 'rd : x21', 'rs1 == rs2 == rd', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h0_val < 0 and rs2_h0_val < 0']
Last Code Sequence : 
	-[0x80000400]:KSTAS16 s5, s5, s5
	-[0x80000404]:sd s5, 16(fp)
Current Store : [0x80000408] : sd s5, 24(fp) -- Store: [0x80003228]:0x000E00007FFE0000




Last Coverpoint : ['rs1 : x5', 'rs2 : x1', 'rd : x14', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h3_val == 128', 'rs2_h2_val == -32768', 'rs1_h3_val == -1025', 'rs1_h2_val == -129', 'rs1_h1_val == 256', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x8000043c]:KSTAS16 a4, t0, ra
	-[0x80000440]:sd a4, 32(fp)
Current Store : [0x80000444] : sd t0, 40(fp) -- Store: [0x80003238]:0xFBFFFF7F0100FBFF




Last Coverpoint : ['rs1 : x9', 'rs2 : x20', 'rd : x9', 'rs1 == rd != rs2', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs2_h2_val == 64', 'rs1_h3_val == 16', 'rs1_h2_val == 512', 'rs1_h1_val == 2048', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000478]:KSTAS16 s1, s1, s4
	-[0x8000047c]:sd s1, 48(fp)
Current Store : [0x80000480] : sd s1, 56(fp) -- Store: [0x80003248]:0x000601C00806FDF6




Last Coverpoint : ['rs1 : x6', 'rs2 : x2', 'rd : x2', 'rs2 == rd != rs1', 'rs2_h2_val == -8193', 'rs2_h1_val == 8', 'rs1_h3_val == 2048', 'rs1_h2_val == -8193', 'rs1_h1_val == 32767', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x800004a8]:KSTAS16 sp, t1, sp
	-[0x800004ac]:sd sp, 64(fp)
Current Store : [0x800004b0] : sd t1, 72(fp) -- Store: [0x80003258]:0x0800DFFF7FFF0000




Last Coverpoint : ['rs1 : x25', 'rs2 : x27', 'rd : x12', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs2_h2_val == -16385', 'rs2_h1_val == -2', 'rs2_h0_val == 16', 'rs1_h3_val == -513', 'rs1_h2_val == 1', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x800004e0]:KSTAS16 a2, s9, s11
	-[0x800004e4]:sd a2, 80(fp)
Current Store : [0x800004e8] : sd s9, 88(fp) -- Store: [0x80003268]:0xFDFF0001FFEF0003




Last Coverpoint : ['rs1 : x24', 'rs2 : x26', 'rd : x5', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h0_val == -1', 'rs1_h3_val == 256', 'rs1_h2_val == -32768', 'rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80000518]:KSTAS16 t0, s8, s10
	-[0x8000051c]:sd t0, 96(fp)
Current Store : [0x80000520] : sd s8, 104(fp) -- Store: [0x80003278]:0x0100800000050001




Last Coverpoint : ['rs1 : x22', 'rs2 : x29', 'rd : x24', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs2_h3_val == -32768', 'rs2_h2_val == 16', 'rs2_h1_val == 1', 'rs2_h0_val == 4', 'rs1_h3_val == 1024', 'rs1_h2_val == -3', 'rs1_h1_val == -4097', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x80000554]:KSTAS16 s8, s6, t4
	-[0x80000558]:sd s8, 112(fp)
Current Store : [0x8000055c] : sd s6, 120(fp) -- Store: [0x80003288]:0x0400FFFDEFFF0004




Last Coverpoint : ['rs1 : x17', 'rs2 : x28', 'rd : x18', 'rs2_h3_val == -257', 'rs2_h1_val == -257', 'rs2_h0_val == -129', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x8000058c]:KSTAS16 s2, a7, t3
	-[0x80000590]:sd s2, 128(fp)
Current Store : [0x80000594] : sd a7, 136(fp) -- Store: [0x80003298]:0xFDFFFFFDFFF8FFDF




Last Coverpoint : ['rs1 : x16', 'rs2 : x6', 'rd : x28', 'rs2_h3_val == -21846', 'rs2_h2_val == -2', 'rs2_h1_val == 16', 'rs1_h3_val == 32', 'rs1_h2_val == 256', 'rs1_h1_val == 16384']
Last Code Sequence : 
	-[0x800005c8]:KSTAS16 t3, a6, t1
	-[0x800005cc]:sd t3, 144(fp)
Current Store : [0x800005d0] : sd a6, 152(fp) -- Store: [0x800032a8]:0x002001004000FBFF




Last Coverpoint : ['rs1 : x12', 'rs2 : x9', 'rd : x23', 'rs2_h3_val == 21845', 'rs2_h2_val == 4', 'rs2_h1_val == -4097', 'rs2_h0_val == 32767', 'rs1_h3_val == -65', 'rs1_h1_val == 16', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x8000060c]:KSTAS16 s7, a2, s1
	-[0x80000610]:sd s7, 160(fp)
Current Store : [0x80000614] : sd a2, 168(fp) -- Store: [0x800032b8]:0xFFBF01000010BFFF




Last Coverpoint : ['rs1 : x1', 'rs2 : x3', 'rd : x6', 'rs2_h3_val == 32767', 'rs2_h2_val == 256', 'rs1_h3_val == 64', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x80000648]:KSTAS16 t1, ra, gp
	-[0x8000064c]:sd t1, 176(fp)
Current Store : [0x80000650] : sd ra, 184(fp) -- Store: [0x800032c8]:0x0040C000FFFC0020




Last Coverpoint : ['rs1 : x2', 'rs2 : x16', 'rd : x25', 'rs2_h3_val == -16385', 'rs2_h1_val == -16385', 'rs1_h3_val == -16385', 'rs1_h2_val == -21846', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x80000688]:KSTAS16 s9, sp, a6
	-[0x8000068c]:sd s9, 192(fp)
Current Store : [0x80000690] : sd sp, 200(fp) -- Store: [0x800032d8]:0xBFFFAAAAFFFB0001




Last Coverpoint : ['rs1 : x27', 'rs2 : x17', 'rd : x7', 'rs2_h3_val == -8193', 'rs2_h2_val == 32767', 'rs2_h0_val == 256', 'rs1_h3_val == 32767', 'rs1_h2_val == -17']
Last Code Sequence : 
	-[0x800006c8]:KSTAS16 t2, s11, a7
	-[0x800006cc]:sd t2, 208(fp)
Current Store : [0x800006d0] : sd s11, 216(fp) -- Store: [0x800032e8]:0x7FFFFFEFEFFF3FFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x13', 'rd : x17', 'rs2_h3_val == -4097', 'rs2_h2_val == 1024', 'rs1_h2_val == -4097', 'rs1_h1_val == 1', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x80000704]:KSTAS16 a7, tp, a3
	-[0x80000708]:sd a7, 224(fp)
Current Store : [0x8000070c] : sd tp, 232(fp) -- Store: [0x800032f8]:0x0400EFFF0001FEFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x19', 'rd : x1', 'rs2_h3_val == -2049', 'rs1_h3_val == -1', 'rs1_h2_val == -9', 'rs1_h1_val == 128']
Last Code Sequence : 
	-[0x80000738]:KSTAS16 ra, t3, s3
	-[0x8000073c]:sd ra, 240(fp)
Current Store : [0x80000740] : sd t3, 248(fp) -- Store: [0x80003308]:0xFFFFFFF700800007




Last Coverpoint : ['rs1 : x13', 'rs2 : x4', 'rd : x20', 'rs2_h3_val == -1025', 'rs2_h2_val == 8192', 'rs2_h1_val == -129', 'rs2_h0_val == 2', 'rs1_h3_val == 128', 'rs1_h1_val == -9']
Last Code Sequence : 
	-[0x8000077c]:KSTAS16 s4, a3, tp
	-[0x80000780]:sd s4, 0(ra)
Current Store : [0x80000784] : sd a3, 8(ra) -- Store: [0x80003318]:0x0080FFF6FFF7FDFF




Last Coverpoint : ['rs1 : x3', 'rs2 : x24', 'rd : x16', 'rs2_h3_val == -513', 'rs2_h2_val == -2049', 'rs2_h1_val == -17', 'rs1_h3_val == 21845', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x800007c0]:KSTAS16 a6, gp, s8
	-[0x800007c4]:sd a6, 16(ra)
Current Store : [0x800007c8] : sd gp, 24(ra) -- Store: [0x80003328]:0x5555FFEFDFFF0007




Last Coverpoint : ['rs1 : x20', 'rs2 : x14', 'rd : x29', 'rs2_h3_val == -129', 'rs1_h3_val == 4096']
Last Code Sequence : 
	-[0x800007fc]:KSTAS16 t4, s4, a4
	-[0x80000800]:sd t4, 32(ra)
Current Store : [0x80000804] : sd s4, 40(ra) -- Store: [0x80003338]:0x100000054000FFF9




Last Coverpoint : ['rs1 : x29', 'rs2 : x15', 'rd : x11', 'rs2_h3_val == -65', 'rs2_h2_val == -3', 'rs2_h1_val == -65', 'rs1_h3_val == -17', 'rs1_h2_val == -2049', 'rs1_h1_val == 512', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000830]:KSTAS16 a1, t4, a5
	-[0x80000834]:sd a1, 48(ra)
Current Store : [0x80000838] : sd t4, 56(ra) -- Store: [0x80003348]:0xFFEFF7FF02000010




Last Coverpoint : ['rs1 : x0', 'rs2 : x22', 'rd : x15', 'rs2_h3_val == -33', 'rs2_h2_val == -17', 'rs1_h3_val == 0', 'rs1_h2_val == 0', 'rs1_h1_val == 0']
Last Code Sequence : 
	-[0x80000868]:KSTAS16 a5, zero, s6
	-[0x8000086c]:sd a5, 64(ra)
Current Store : [0x80000870] : sd zero, 72(ra) -- Store: [0x80003358]:0x0000000000000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x30', 'rd : x22', 'rs2_h3_val == -17', 'rs2_h1_val == -513', 'rs1_h3_val == -8193', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x800008a0]:KSTAS16 s6, a4, t5
	-[0x800008a4]:sd s6, 80(ra)
Current Store : [0x800008a8] : sd a4, 88(ra) -- Store: [0x80003368]:0xDFFFFFF9FFF8FFFD




Last Coverpoint : ['rs1 : x19', 'rs2 : x23', 'rd : x13', 'rs2_h3_val == -9', 'rs2_h1_val == 8192', 'rs2_h0_val == -3', 'rs1_h3_val == -257', 'rs1_h2_val == 16']
Last Code Sequence : 
	-[0x800008dc]:KSTAS16 a3, s3, s7
	-[0x800008e0]:sd a3, 96(ra)
Current Store : [0x800008e4] : sd s3, 104(ra) -- Store: [0x80003378]:0xFEFF001000090020




Last Coverpoint : ['rs1 : x7', 'rs2 : x8', 'rd : x30', 'rs2_h3_val == -5', 'rs2_h0_val == 64', 'rs1_h3_val == -5', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x80000918]:KSTAS16 t5, t2, fp
	-[0x8000091c]:sd t5, 112(ra)
Current Store : [0x80000920] : sd t2, 120(ra) -- Store: [0x80003388]:0xFFFBFFFDFFFAFFF7




Last Coverpoint : ['rs1 : x8', 'rs2 : x0', 'rd : x27', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_h2_val == -1', 'rs1_h1_val == -513']
Last Code Sequence : 
	-[0x80000950]:KSTAS16 s11, fp, zero
	-[0x80000954]:sd s11, 128(ra)
Current Store : [0x80000958] : sd fp, 136(ra) -- Store: [0x80003398]:0x0400FFFFFDFF3FFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x31', 'rd : x10', 'rs2_h3_val == -2', 'rs1_h1_val == 1024']
Last Code Sequence : 
	-[0x80000984]:KSTAS16 a0, s2, t6
	-[0x80000988]:sd a0, 144(ra)
Current Store : [0x8000098c] : sd s2, 152(ra) -- Store: [0x800033a8]:0x0003FFF804000004




Last Coverpoint : ['rs1 : x11', 'rs2 : x18', 'rd : x3', 'rs2_h3_val == 16384', 'rs1_h3_val == -9']
Last Code Sequence : 
	-[0x800009bc]:KSTAS16 gp, a1, s2
	-[0x800009c0]:sd gp, 160(ra)
Current Store : [0x800009c4] : sd a1, 168(ra) -- Store: [0x800033b8]:0xFFF7AAAAEFFFFFFA




Last Coverpoint : ['rs1 : x26', 'rs2 : x25', 'rd : x19', 'rs2_h3_val == 8192', 'rs2_h0_val == 1024', 'rs1_h2_val == -1025', 'rs1_h1_val == -257', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x800009f8]:KSTAS16 s3, s10, s9
	-[0x800009fc]:sd s3, 176(ra)
Current Store : [0x80000a00] : sd s10, 184(ra) -- Store: [0x800033c8]:0xFFFAFBFFFEFFEFFF




Last Coverpoint : ['rs1 : x23', 'rs2 : x11', 'rd : x0', 'rs2_h3_val == 4096', 'rs2_h2_val == -5', 'rs1_h3_val == -21846']
Last Code Sequence : 
	-[0x80000a3c]:KSTAS16 zero, s7, a1
	-[0x80000a40]:sd zero, 192(ra)
Current Store : [0x80000a44] : sd s7, 200(ra) -- Store: [0x800033d8]:0xAAAA0001FDFFBFFF




Last Coverpoint : ['rs1 : x31', 'rs2 : x12', 'rd : x8', 'rs2_h3_val == 2048', 'rs2_h2_val == -33', 'rs2_h1_val == 1024', 'rs1_h1_val == 2']
Last Code Sequence : 
	-[0x80000a78]:KSTAS16 fp, t6, a2
	-[0x80000a7c]:sd fp, 208(ra)
Current Store : [0x80000a80] : sd t6, 216(ra) -- Store: [0x800033e8]:0xFFFCFFFA00020005




Last Coverpoint : ['rs1 : x30', 'rs2 : x7', 'rd : x26', 'rs2_h3_val == 1024', 'rs2_h2_val == 1', 'rs2_h0_val == -33', 'rs1_h1_val == 32']
Last Code Sequence : 
	-[0x80000ab4]:KSTAS16 s10, t5, t2
	-[0x80000ab8]:sd s10, 224(ra)
Current Store : [0x80000abc] : sd t5, 232(ra) -- Store: [0x800033f8]:0x3FFFFFFD0020EFFF




Last Coverpoint : ['rs1 : x15', 'rs2 : x5', 'rd : x4', 'rs2_h3_val == 512', 'rs2_h2_val == 8', 'rs2_h1_val == -3', 'rs1_h2_val == 32767', 'rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x80000ae8]:KSTAS16 tp, a5, t0
	-[0x80000aec]:sd tp, 240(ra)
Current Store : [0x80000af0] : sd a5, 248(ra) -- Store: [0x80003408]:0xFFFA7FFFBFFFFFDF




Last Coverpoint : ['rs2_h3_val == 256', 'rs2_h0_val == 512', 'rs1_h2_val == 2048', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000b1c]:KSTAS16 t6, t5, t4
	-[0x80000b20]:sd t6, 256(ra)
Current Store : [0x80000b24] : sd t5, 264(ra) -- Store: [0x80003418]:0x000008002000FEFF




Last Coverpoint : ['rs2_h3_val == 64', 'rs2_h2_val == 2048', 'rs2_h1_val == -2049', 'rs2_h0_val == -2049', 'rs1_h2_val == -5', 'rs1_h1_val == 21845']
Last Code Sequence : 
	-[0x80000b58]:KSTAS16 t6, t5, t4
	-[0x80000b5c]:sd t6, 272(ra)
Current Store : [0x80000b60] : sd t5, 280(ra) -- Store: [0x80003428]:0x0010FFFB55553FFF




Last Coverpoint : ['rs2_h3_val == 32', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000b94]:KSTAS16 t6, t5, t4
	-[0x80000b98]:sd t6, 288(ra)
Current Store : [0x80000b9c] : sd t5, 296(ra) -- Store: [0x80003438]:0x7FFFFFFA0080DFFF




Last Coverpoint : ['rs2_h3_val == 16', 'rs2_h2_val == 4096', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000bd0]:KSTAS16 t6, t5, t4
	-[0x80000bd4]:sd t6, 304(ra)
Current Store : [0x80000bd8] : sd t5, 312(ra) -- Store: [0x80003448]:0x0800FFF700050040




Last Coverpoint : ['rs2_h2_val == -1', 'rs1_h3_val == 8192', 'rs1_h2_val == -65', 'rs1_h1_val == -3', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000c08]:KSTAS16 t6, t5, t4
	-[0x80000c0c]:sd t6, 320(ra)
Current Store : [0x80000c10] : sd t5, 328(ra) -- Store: [0x80003458]:0x2000FFBFFFFDFF7F




Last Coverpoint : ['rs2_h1_val == 2', 'rs2_h0_val == 4096', 'rs1_h1_val == -2', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000c3c]:KSTAS16 t6, t5, t4
	-[0x80000c40]:sd t6, 336(ra)
Current Store : [0x80000c44] : sd t5, 344(ra) -- Store: [0x80003468]:0xFFFCEFFFFFFEFFFB




Last Coverpoint : ['rs2_h2_val == -1025', 'rs1_h3_val == 8', 'rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x80000c78]:KSTAS16 t6, t5, t4
	-[0x80000c7c]:sd t6, 352(ra)
Current Store : [0x80000c80] : sd t5, 360(ra) -- Store: [0x80003478]:0x000800028000FFF8




Last Coverpoint : ['rs2_h1_val == 21845', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000ca4]:KSTAS16 t6, t5, t4
	-[0x80000ca8]:sd t6, 368(ra)
Current Store : [0x80000cac] : sd t5, 376(ra) -- Store: [0x80003488]:0xFFBF000210000000




Last Coverpoint : ['rs2_h1_val == 2048', 'rs1_h1_val == 64', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x80000cdc]:KSTAS16 t6, t5, t4
	-[0x80000ce0]:sd t6, 384(ra)
Current Store : [0x80000ce4] : sd t5, 392(ra) -- Store: [0x80003498]:0xFFFCFFFC0040FFFE




Last Coverpoint : ['rs2_h2_val == 16384', 'rs2_h1_val == 64', 'rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000d14]:KSTAS16 t6, t5, t4
	-[0x80000d18]:sd t6, 400(ra)
Current Store : [0x80000d1c] : sd t5, 408(ra) -- Store: [0x800034a8]:0x0010000100080004




Last Coverpoint : ['rs1_h1_val == 4', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000d50]:KSTAS16 t6, t5, t4
	-[0x80000d54]:sd t6, 416(ra)
Current Store : [0x80000d58] : sd t5, 424(ra) -- Store: [0x800034b8]:0xFDFF000700040800




Last Coverpoint : ['rs1_h2_val == 8', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000d88]:KSTAS16 t6, t5, t4
	-[0x80000d8c]:sd t6, 432(ra)
Current Store : [0x80000d90] : sd t5, 440(ra) -- Store: [0x800034c8]:0xFFF8000800004000




Last Coverpoint : ['rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000dbc]:KSTAS16 t6, t5, t4
	-[0x80000dc0]:sd t6, 448(ra)
Current Store : [0x80000dc4] : sd t5, 456(ra) -- Store: [0x800034d8]:0x01000008FFFFFFF8




Last Coverpoint : ['rs2_h0_val == -17', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000df8]:KSTAS16 t6, t5, t4
	-[0x80000dfc]:sd t6, 464(ra)
Current Store : [0x80000e00] : sd t5, 472(ra) -- Store: [0x800034e8]:0xFFFF3FFF0800AAAA




Last Coverpoint : ['rs2_h1_val == 4', 'rs1_h3_val == 2', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000e30]:KSTAS16 t6, t5, t4
	-[0x80000e34]:sd t6, 480(ra)
Current Store : [0x80000e38] : sd t5, 488(ra) -- Store: [0x800034f8]:0x0002FFF7FFFF5555




Last Coverpoint : ['rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x80000e74]:KSTAS16 t6, t5, t4
	-[0x80000e78]:sd t6, 496(ra)
Current Store : [0x80000e7c] : sd t5, 504(ra) -- Store: [0x80003508]:0xDFFFFBFFC0007FFF




Last Coverpoint : ['rs2_h1_val == -1', 'rs1_h2_val == -257', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000eb0]:KSTAS16 t6, t5, t4
	-[0x80000eb4]:sd t6, 512(ra)
Current Store : [0x80000eb8] : sd t5, 520(ra) -- Store: [0x80003518]:0x2000FEFFBFFFF7FF




Last Coverpoint : ['rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000eec]:KSTAS16 t6, t5, t4
	-[0x80000ef0]:sd t6, 528(ra)
Current Store : [0x80000ef4] : sd t5, 536(ra) -- Store: [0x80003528]:0xBFFF08002000FFBF




Last Coverpoint : ['rs2_h1_val == -21846', 'rs2_h0_val == 16384', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x80000f24]:KSTAS16 t6, t5, t4
	-[0x80000f28]:sd t6, 544(ra)
Current Store : [0x80000f2c] : sd t5, 552(ra) -- Store: [0x80003538]:0x01000100FFFEFFEF




Last Coverpoint : ['rs2_h2_val == -21846', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000f5c]:KSTAS16 t6, t5, t4
	-[0x80000f60]:sd t6, 560(ra)
Current Store : [0x80000f64] : sd t5, 568(ra) -- Store: [0x80003548]:0xFFFAFFFC00071000




Last Coverpoint : ['rs2_h2_val == -9', 'rs1_h3_val == 16384', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000f94]:KSTAS16 t6, t5, t4
	-[0x80000f98]:sd t6, 576(ra)
Current Store : [0x80000f9c] : sd t5, 584(ra) -- Store: [0x80003558]:0x4000000202000400




Last Coverpoint : ['rs2_h1_val == 128', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000fd0]:KSTAS16 t6, t5, t4
	-[0x80000fd4]:sd t6, 592(ra)
Current Store : [0x80000fd8] : sd t5, 600(ra) -- Store: [0x80003568]:0xFFFBFFFF55550200




Last Coverpoint : ['rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80001008]:KSTAS16 t6, t5, t4
	-[0x8000100c]:sd t6, 608(ra)
Current Store : [0x80001010] : sd t5, 616(ra) -- Store: [0x80003578]:0x0040010000060100




Last Coverpoint : ['rs1_h1_val == -1025', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80001040]:KSTAS16 t6, t5, t4
	-[0x80001044]:sd t6, 624(ra)
Current Store : [0x80001048] : sd t5, 632(ra) -- Store: [0x80003588]:0xFFF97FFFFBFF0080




Last Coverpoint : ['rs2_h1_val == -32768', 'rs2_h0_val == 32', 'rs1_h3_val == -2']
Last Code Sequence : 
	-[0x80001070]:KSTAS16 t6, t5, t4
	-[0x80001074]:sd t6, 640(ra)
Current Store : [0x80001078] : sd t5, 648(ra) -- Store: [0x80003598]:0xFFFEFF7F00010008




Last Coverpoint : ['rs2_h1_val == 4096', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x800010ac]:KSTAS16 t6, t5, t4
	-[0x800010b0]:sd t6, 656(ra)
Current Store : [0x800010b4] : sd t5, 664(ra) -- Store: [0x800035a8]:0xDFFFFFFD00080002




Last Coverpoint : ['rs2_h3_val == 8', 'rs1_h3_val == -129']
Last Code Sequence : 
	-[0x800010e8]:KSTAS16 t6, t5, t4
	-[0x800010ec]:sd t6, 672(ra)
Current Store : [0x800010f0] : sd t5, 680(ra) -- Store: [0x800035b8]:0xFF7FEFFF04005555




Last Coverpoint : ['rs2_h1_val == -33', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80001118]:KSTAS16 t6, t5, t4
	-[0x8000111c]:sd t6, 688(ra)
Current Store : [0x80001120] : sd t5, 696(ra) -- Store: [0x800035c8]:0xFFFB3FFF7FFFFFFF




Last Coverpoint : ['rs2_h3_val == 4']
Last Code Sequence : 
	-[0x80001154]:KSTAS16 t6, t5, t4
	-[0x80001158]:sd t6, 704(ra)
Current Store : [0x8000115c] : sd t5, 712(ra) -- Store: [0x800035d8]:0xAAAA0008FFFA0800




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h1_val == 512', 'rs1_h2_val == 4']
Last Code Sequence : 
	-[0x80001184]:KSTAS16 t6, t5, t4
	-[0x80001188]:sd t6, 720(ra)
Current Store : [0x8000118c] : sd t5, 728(ra) -- Store: [0x800035e8]:0x55550004FBFFFFFF




Last Coverpoint : ['rs2_h3_val == 1', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x800011b8]:KSTAS16 t6, t5, t4
	-[0x800011bc]:sd t6, 736(ra)
Current Store : [0x800011c0] : sd t5, 744(ra) -- Store: [0x800035f8]:0x0000FFFDFFDFFFBF




Last Coverpoint : ['rs2_h0_val == -21846', 'rs1_h2_val == 8192', 'rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x800011f0]:KSTAS16 t6, t5, t4
	-[0x800011f4]:sd t6, 752(ra)
Current Store : [0x800011f8] : sd t5, 760(ra) -- Store: [0x80003608]:0xFEFF2000F7FFFFF8




Last Coverpoint : ['rs2_h0_val == 21845', 'rs1_h3_val == -32768']
Last Code Sequence : 
	-[0x80001234]:KSTAS16 t6, t5, t4
	-[0x80001238]:sd t6, 768(ra)
Current Store : [0x8000123c] : sd t5, 776(ra) -- Store: [0x80003618]:0x8000FFF88000AAAA




Last Coverpoint : ['rs2_h0_val == -16385', 'rs1_h2_val == 21845']
Last Code Sequence : 
	-[0x80001270]:KSTAS16 t6, t5, t4
	-[0x80001274]:sd t6, 784(ra)
Current Store : [0x80001278] : sd t5, 792(ra) -- Store: [0x80003628]:0x0020555500400009




Last Coverpoint : ['rs2_h0_val == -8193', 'rs1_h3_val == 4']
Last Code Sequence : 
	-[0x800012ac]:KSTAS16 t6, t5, t4
	-[0x800012b0]:sd t6, 800(ra)
Current Store : [0x800012b4] : sd t5, 808(ra) -- Store: [0x80003638]:0x00040010FDFF0020




Last Coverpoint : ['rs2_h0_val == -4097', 'rs1_h3_val == -3']
Last Code Sequence : 
	-[0x800012e0]:KSTAS16 t6, t5, t4
	-[0x800012e4]:sd t6, 816(ra)
Current Store : [0x800012e8] : sd t5, 824(ra) -- Store: [0x80003648]:0xFFFDC00001000005




Last Coverpoint : ['rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x80001318]:KSTAS16 t6, t5, t4
	-[0x8000131c]:sd t6, 832(ra)
Current Store : [0x80001320] : sd t5, 840(ra) -- Store: [0x80003658]:0xFFEFFFF800080000




Last Coverpoint : ['rs2_h0_val == -513']
Last Code Sequence : 
	-[0x80001348]:KSTAS16 t6, t5, t4
	-[0x8000134c]:sd t6, 848(ra)
Current Store : [0x80001350] : sd t5, 856(ra) -- Store: [0x80003668]:0xDFFF3FFFFFFE1000




Last Coverpoint : ['rs2_h2_val == -257', 'rs2_h0_val == -257', 'rs1_h2_val == 16384', 'rs1_h1_val == -129']
Last Code Sequence : 
	-[0x80001384]:KSTAS16 t6, t5, t4
	-[0x80001388]:sd t6, 864(ra)
Current Store : [0x8000138c] : sd t5, 872(ra) -- Store: [0x80003678]:0x20004000FF7FFBFF




Last Coverpoint : ['rs2_h0_val == -65']
Last Code Sequence : 
	-[0x800013bc]:KSTAS16 t6, t5, t4
	-[0x800013c0]:sd t6, 880(ra)
Current Store : [0x800013c4] : sd t5, 888(ra) -- Store: [0x80003688]:0x1000FFBF00040003




Last Coverpoint : ['rs2_h0_val == -9', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800013f0]:KSTAS16 t6, t5, t4
	-[0x800013f4]:sd t6, 896(ra)
Current Store : [0x800013f8] : sd t5, 904(ra) -- Store: [0x80003698]:0xFFFDDFFFFFFB2000




Last Coverpoint : ['rs2_h2_val == 128', 'rs2_h0_val == -5']
Last Code Sequence : 
	-[0x8000142c]:KSTAS16 t6, t5, t4
	-[0x80001430]:sd t6, 912(ra)
Current Store : [0x80001434] : sd t5, 920(ra) -- Store: [0x800036a8]:0x0003555500090002




Last Coverpoint : ['rs2_h0_val == -2']
Last Code Sequence : 
	-[0x80001460]:KSTAS16 t6, t5, t4
	-[0x80001464]:sd t6, 928(ra)
Current Store : [0x80001468] : sd t5, 936(ra) -- Store: [0x800036b8]:0x0000555500800006




Last Coverpoint : ['rs2_h0_val == -32768', 'rs1_h2_val == 4096']
Last Code Sequence : 
	-[0x80001494]:KSTAS16 t6, t5, t4
	-[0x80001498]:sd t6, 944(ra)
Current Store : [0x8000149c] : sd t5, 952(ra) -- Store: [0x800036c8]:0xFFEF100000070004




Last Coverpoint : ['rs1_h0_val == -32768', 'rs2_h1_val == -9', 'rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x800014c8]:KSTAS16 t6, t5, t4
	-[0x800014cc]:sd t6, 960(ra)
Current Store : [0x800014d0] : sd t5, 968(ra) -- Store: [0x800036d8]:0x00400004FFFF8000




Last Coverpoint : ['rs2_h0_val == 2048']
Last Code Sequence : 
	-[0x80001500]:KSTAS16 t6, t5, t4
	-[0x80001504]:sd t6, 976(ra)
Current Store : [0x80001508] : sd t5, 984(ra) -- Store: [0x800036e8]:0xFFFD200000060002




Last Coverpoint : ['rs2_h0_val == 128', 'rs1_h2_val == -33']
Last Code Sequence : 
	-[0x8000153c]:KSTAS16 t6, t5, t4
	-[0x80001540]:sd t6, 992(ra)
Current Store : [0x80001544] : sd t5, 1000(ra) -- Store: [0x800036f8]:0xFFF6FFDF00015555




Last Coverpoint : ['rs1_h3_val == 512']
Last Code Sequence : 
	-[0x8000156c]:KSTAS16 t6, t5, t4
	-[0x80001570]:sd t6, 1008(ra)
Current Store : [0x80001574] : sd t5, 1016(ra) -- Store: [0x80003708]:0x0200FFF900000003




Last Coverpoint : ['rs2_h2_val == -4097']
Last Code Sequence : 
	-[0x800015a8]:KSTAS16 t6, t5, t4
	-[0x800015ac]:sd t6, 1024(ra)
Current Store : [0x800015b0] : sd t5, 1032(ra) -- Store: [0x80003718]:0x0005DFFF1000FFFE




Last Coverpoint : ['rs2_h2_val == -513']
Last Code Sequence : 
	-[0x800015e4]:KSTAS16 t6, t5, t4
	-[0x800015e8]:sd t6, 1040(ra)
Current Store : [0x800015ec] : sd t5, 1048(ra) -- Store: [0x80003728]:0xFFFDFFFD55550200




Last Coverpoint : ['rs2_h2_val == -129', 'rs1_h2_val == 128']
Last Code Sequence : 
	-[0x8000161c]:KSTAS16 t6, t5, t4
	-[0x80001620]:sd t6, 1056(ra)
Current Store : [0x80001624] : sd t5, 1064(ra) -- Store: [0x80003738]:0xFFFB008055558000




Last Coverpoint : ['rs2_h2_val == -65']
Last Code Sequence : 
	-[0x80001650]:KSTAS16 t6, t5, t4
	-[0x80001654]:sd t6, 1072(ra)
Current Store : [0x80001658] : sd t5, 1080(ra) -- Store: [0x80003748]:0x7FFF0080FFF9FFDF




Last Coverpoint : ['rs1_h3_val == 1']
Last Code Sequence : 
	-[0x8000168c]:KSTAS16 t6, t5, t4
	-[0x80001690]:sd t6, 1088(ra)
Current Store : [0x80001694] : sd t5, 1096(ra) -- Store: [0x80003758]:0x0001000180005555




Last Coverpoint : ['rs1_h2_val == -16385']
Last Code Sequence : 
	-[0x800016d0]:KSTAS16 t6, t5, t4
	-[0x800016d4]:sd t6, 1104(ra)
Current Store : [0x800016d8] : sd t5, 1112(ra) -- Store: [0x80003768]:0x8000BFFFFFDF0004




Last Coverpoint : ['rs2_h2_val == 512']
Last Code Sequence : 
	-[0x80001708]:KSTAS16 t6, t5, t4
	-[0x8000170c]:sd t6, 1120(ra)
Current Store : [0x80001710] : sd t5, 1128(ra) -- Store: [0x80003778]:0xFFBF00103FFF1000




Last Coverpoint : ['rs1_h2_val == -513']
Last Code Sequence : 
	-[0x80001730]:KSTAS16 t6, t5, t4
	-[0x80001734]:sd t6, 1136(ra)
Current Store : [0x80001738] : sd t5, 1144(ra) -- Store: [0x80003788]:0xFFF8FDFF20000000




Last Coverpoint : ['rs2_h2_val == 32', 'rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x80001768]:KSTAS16 t6, t5, t4
	-[0x8000176c]:sd t6, 1152(ra)
Current Store : [0x80001770] : sd t5, 1160(ra) -- Store: [0x80003798]:0xFFFDFFBFAAAA2000




Last Coverpoint : ['rs1_h2_val == -2']
Last Code Sequence : 
	-[0x800017a4]:KSTAS16 t6, t5, t4
	-[0x800017a8]:sd t6, 1168(ra)
Current Store : [0x800017ac] : sd t5, 1176(ra) -- Store: [0x800037a8]:0x0400FFFE1000EFFF




Last Coverpoint : ['rs2_h1_val == 32767']
Last Code Sequence : 
	-[0x800017e0]:KSTAS16 t6, t5, t4
	-[0x800017e4]:sd t6, 1184(ra)
Current Store : [0x800017e8] : sd t5, 1192(ra) -- Store: [0x800037b8]:0xFFFEFFEFFFFB0020




Last Coverpoint : ['rs1_h2_val == 1024']
Last Code Sequence : 
	-[0x80001814]:KSTAS16 t6, t5, t4
	-[0x80001818]:sd t6, 1200(ra)
Current Store : [0x8000181c] : sd t5, 1208(ra) -- Store: [0x800037c8]:0x000904002000FEFF




Last Coverpoint : ['rs2_h1_val == -8193']
Last Code Sequence : 
	-[0x8000184c]:KSTAS16 t6, t5, t4
	-[0x80001850]:sd t6, 1216(ra)
Current Store : [0x80001854] : sd t5, 1224(ra) -- Store: [0x800037d8]:0x0006FFFC00107FFF




Last Coverpoint : ['rs2_h0_val == 1']
Last Code Sequence : 
	-[0x80001880]:KSTAS16 t6, t5, t4
	-[0x80001884]:sd t6, 1232(ra)
Current Store : [0x80001888] : sd t5, 1240(ra) -- Store: [0x800037e8]:0x2000F7FFFEFF0005




Last Coverpoint : ['rs2_h1_val == -1025']
Last Code Sequence : 
	-[0x800018bc]:KSTAS16 t6, t5, t4
	-[0x800018c0]:sd t6, 1248(ra)
Current Store : [0x800018c4] : sd t5, 1256(ra) -- Store: [0x800037f8]:0x04000000FF7F1000




Last Coverpoint : ['rs1_h2_val == 64']
Last Code Sequence : 
	-[0x800018f4]:KSTAS16 t6, t5, t4
	-[0x800018f8]:sd t6, 1264(ra)
Current Store : [0x800018fc] : sd t5, 1272(ra) -- Store: [0x80003808]:0x04000040FFDFEFFF




Last Coverpoint : ['rs1_h2_val == 32']
Last Code Sequence : 
	-[0x80001930]:KSTAS16 t6, t5, t4
	-[0x80001934]:sd t6, 1280(ra)
Current Store : [0x80001938] : sd t5, 1288(ra) -- Store: [0x80003818]:0x00060020FFFA3FFF




Last Coverpoint : ['rs2_h2_val == 21845', 'rs1_h3_val == -4097', 'rs1_h1_val == -65']
Last Code Sequence : 
	-[0x8000196c]:KSTAS16 t6, t5, t4
	-[0x80001970]:sd t6, 1296(ra)
Current Store : [0x80001974] : sd t5, 1304(ra) -- Store: [0x80003828]:0xEFFFFFFBFFBFFEFF




Last Coverpoint : ['rs1_h3_val == -2049']
Last Code Sequence : 
	-[0x800019a8]:KSTAS16 t6, t5, t4
	-[0x800019ac]:sd t6, 1312(ra)
Current Store : [0x800019b0] : sd t5, 1320(ra) -- Store: [0x80003838]:0xF7FF0007FF7F0200




Last Coverpoint : ['rs2_h3_val == -1', 'rs2_h1_val == -5']
Last Code Sequence : 
	-[0x800019dc]:KSTAS16 t6, t5, t4
	-[0x800019e0]:sd t6, 1328(ra)
Current Store : [0x800019e4] : sd t5, 1336(ra) -- Store: [0x80003848]:0x7FFF0005FFFF0009




Last Coverpoint : ['rs2_h1_val == 256']
Last Code Sequence : 
	-[0x80001a18]:KSTAS16 t6, t5, t4
	-[0x80001a1c]:sd t6, 1344(ra)
Current Store : [0x80001a20] : sd t5, 1352(ra) -- Store: [0x80003858]:0xAAAA0003FFEFBFFF




Last Coverpoint : ['rs2_h1_val == 16384']
Last Code Sequence : 
	-[0x80001a48]:KSTAS16 t6, t5, t4
	-[0x80001a4c]:sd t6, 1360(ra)
Current Store : [0x80001a50] : sd t5, 1368(ra) -- Store: [0x80003868]:0x08000040FFFA8000




Last Coverpoint : ['rs2_h1_val == 32']
Last Code Sequence : 
	-[0x80001a8c]:KSTAS16 t6, t5, t4
	-[0x80001a90]:sd t6, 1376(ra)
Current Store : [0x80001a94] : sd t5, 1384(ra) -- Store: [0x80003878]:0x8000F7FFC000F7FF




Last Coverpoint : ['rs1_h3_val == -33']
Last Code Sequence : 
	-[0x80001ac0]:KSTAS16 t6, t5, t4
	-[0x80001ac4]:sd t6, 1392(ra)
Current Store : [0x80001ac8] : sd t5, 1400(ra) -- Store: [0x80003888]:0xFFDFFFFE20000008




Last Coverpoint : ['opcode : kstas16', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h0_val == -32768', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h2_val == 2', 'rs2_h0_val == 8', 'rs1_h2_val == -129', 'rs1_h1_val == -8193']
Last Code Sequence : 
	-[0x80001af8]:KSTAS16 t6, t5, t4
	-[0x80001afc]:sd t6, 1408(ra)
Current Store : [0x80001b00] : sd t5, 1416(ra) -- Store: [0x80003898]:0xFFF8FF7FDFFF8000




Last Coverpoint : ['rs2_h3_val == -3']
Last Code Sequence : 
	-[0x80001b30]:KSTAS16 t6, t5, t4
	-[0x80001b34]:sd t6, 1424(ra)
Current Store : [0x80001b38] : sd t5, 1432(ra) -- Store: [0x800038a8]:0x0400FFFFFDFF3FFF





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

|s.no|            signature             |                                                                                                                                                                                                                                                                  coverpoints                                                                                                                                                                                                                                                                  |                                  code                                  |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80003210]<br>0xFFEC0000000E0000|- opcode : kstas16<br> - rs1 : x10<br> - rs2 : x10<br> - rd : x31<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h2_val == 2<br> - rs2_h0_val == 8<br> - rs1_h2_val == 2<br> - rs1_h0_val == 8<br>                                                               |[0x800003d0]:KSTAS16 t6, a0, a0<br> [0x800003d4]:sd t6, 0(fp)<br>       |
|   2|[0x80003220]<br>0x000E00007FFE0000|- rs1 : x21<br> - rs2 : x21<br> - rd : x21<br> - rs1 == rs2 == rd<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br>                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000400]:KSTAS16 s5, s5, s5<br> [0x80000404]:sd s5, 16(fp)<br>      |
|   3|[0x80003230]<br>0xFC7F7F7F00FAFBF9|- rs1 : x5<br> - rs2 : x1<br> - rd : x14<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h3_val == 128<br> - rs2_h2_val == -32768<br> - rs1_h3_val == -1025<br> - rs1_h2_val == -129<br> - rs1_h1_val == 256<br> - rs1_h0_val == -1025<br> |[0x8000043c]:KSTAS16 a4, t0, ra<br> [0x80000440]:sd a4, 32(fp)<br>      |
|   4|[0x80003240]<br>0x000601C00806FDF6|- rs1 : x9<br> - rs2 : x20<br> - rd : x9<br> - rs1 == rd != rs2<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs2_h2_val == 64<br> - rs1_h3_val == 16<br> - rs1_h2_val == 512<br> - rs1_h1_val == 2048<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                            |[0x80000478]:KSTAS16 s1, s1, s4<br> [0x8000047c]:sd s1, 48(fp)<br>      |
|   5|[0x80003250]<br>0x080300007FFFFFFD|- rs1 : x6<br> - rs2 : x2<br> - rd : x2<br> - rs2 == rd != rs1<br> - rs2_h2_val == -8193<br> - rs2_h1_val == 8<br> - rs1_h3_val == 2048<br> - rs1_h2_val == -8193<br> - rs1_h1_val == 32767<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                                                                                          |[0x800004a8]:KSTAS16 sp, t1, sp<br> [0x800004ac]:sd sp, 64(fp)<br>      |
|   6|[0x80003260]<br>0xFE054002FFEDFFF3|- rs1 : x25<br> - rs2 : x27<br> - rd : x12<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs2_h2_val == -16385<br> - rs2_h1_val == -2<br> - rs2_h0_val == 16<br> - rs1_h3_val == -513<br> - rs1_h2_val == 1<br> - rs1_h1_val == -17<br>                                                                                                                                                                                                                                                                 |[0x800004e0]:KSTAS16 a2, s9, s11<br> [0x800004e4]:sd a2, 80(fp)<br>     |
|   7|[0x80003270]<br>0x00FA8000000A0002|- rs1 : x24<br> - rs2 : x26<br> - rd : x5<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h0_val == -1<br> - rs1_h3_val == 256<br> - rs1_h2_val == -32768<br> - rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                  |[0x80000518]:KSTAS16 t0, s8, s10<br> [0x8000051c]:sd t0, 96(fp)<br>     |
|   8|[0x80003280]<br>0x8400FFEDF0000000|- rs1 : x22<br> - rs2 : x29<br> - rd : x24<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs2_h3_val == -32768<br> - rs2_h2_val == 16<br> - rs2_h1_val == 1<br> - rs2_h0_val == 4<br> - rs1_h3_val == 1024<br> - rs1_h2_val == -3<br> - rs1_h1_val == -4097<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                                           |[0x80000554]:KSTAS16 s8, s6, t4<br> [0x80000558]:sd s8, 112(fp)<br>     |
|   9|[0x80003290]<br>0xFCFE3FFDFEF70060|- rs1 : x17<br> - rs2 : x28<br> - rd : x18<br> - rs2_h3_val == -257<br> - rs2_h1_val == -257<br> - rs2_h0_val == -129<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000058c]:KSTAS16 s2, a7, t3<br> [0x80000590]:sd s2, 128(fp)<br>     |
|  10|[0x800032a0]<br>0xAACA01024010FBFC|- rs1 : x16<br> - rs2 : x6<br> - rd : x28<br> - rs2_h3_val == -21846<br> - rs2_h2_val == -2<br> - rs2_h1_val == 16<br> - rs1_h3_val == 32<br> - rs1_h2_val == 256<br> - rs1_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                |[0x800005c8]:KSTAS16 t3, a6, t1<br> [0x800005cc]:sd t3, 144(fp)<br>     |
|  11|[0x800032b0]<br>0x551400FCF00F8000|- rs1 : x12<br> - rs2 : x9<br> - rd : x23<br> - rs2_h3_val == 21845<br> - rs2_h2_val == 4<br> - rs2_h1_val == -4097<br> - rs2_h0_val == 32767<br> - rs1_h3_val == -65<br> - rs1_h1_val == 16<br> - rs1_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                    |[0x8000060c]:KSTAS16 s7, a2, s1<br> [0x80000610]:sd s7, 160(fp)<br>     |
|  12|[0x800032c0]<br>0x7FFFBF000002C021|- rs1 : x1<br> - rs2 : x3<br> - rd : x6<br> - rs2_h3_val == 32767<br> - rs2_h2_val == 256<br> - rs1_h3_val == 64<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000648]:KSTAS16 t1, ra, gp<br> [0x8000064c]:sd t1, 176(fp)<br>     |
|  13|[0x800032d0]<br>0x8000AAA7BFFA4001|- rs1 : x2<br> - rs2 : x16<br> - rd : x25<br> - rs2_h3_val == -16385<br> - rs2_h1_val == -16385<br> - rs1_h3_val == -16385<br> - rs1_h2_val == -21846<br> - rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                               |[0x80000688]:KSTAS16 s9, sp, a6<br> [0x8000068c]:sd s9, 192(fp)<br>     |
|  14|[0x800032e0]<br>0x5FFE8000F0083EFF|- rs1 : x27<br> - rs2 : x17<br> - rd : x7<br> - rs2_h3_val == -8193<br> - rs2_h2_val == 32767<br> - rs2_h0_val == 256<br> - rs1_h3_val == 32767<br> - rs1_h2_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                    |[0x800006c8]:KSTAS16 t2, s11, a7<br> [0x800006cc]:sd t2, 208(fp)<br>    |
|  15|[0x800032f0]<br>0xF3FFEBFFFFF9FEFB|- rs1 : x4<br> - rs2 : x13<br> - rd : x17<br> - rs2_h3_val == -4097<br> - rs2_h2_val == 1024<br> - rs1_h2_val == -4097<br> - rs1_h1_val == 1<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                                                                      |[0x80000704]:KSTAS16 a7, tp, a3<br> [0x80000708]:sd a7, 224(fp)<br>     |
|  16|[0x80003300]<br>0xF7FE8000C080000D|- rs1 : x28<br> - rs2 : x19<br> - rd : x1<br> - rs2_h3_val == -2049<br> - rs1_h3_val == -1<br> - rs1_h2_val == -9<br> - rs1_h1_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000738]:KSTAS16 ra, t3, s3<br> [0x8000073c]:sd ra, 240(fp)<br>     |
|  17|[0x80003310]<br>0xFC7FDFF6FF76FDFD|- rs1 : x13<br> - rs2 : x4<br> - rd : x20<br> - rs2_h3_val == -1025<br> - rs2_h2_val == 8192<br> - rs2_h1_val == -129<br> - rs2_h0_val == 2<br> - rs1_h3_val == 128<br> - rs1_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                 |[0x8000077c]:KSTAS16 s4, a3, tp<br> [0x80000780]:sd s4, 0(ra)<br>       |
|  18|[0x80003320]<br>0x535407F0DFEE000E|- rs1 : x3<br> - rs2 : x24<br> - rd : x16<br> - rs2_h3_val == -513<br> - rs2_h2_val == -2049<br> - rs2_h1_val == -17<br> - rs1_h3_val == 21845<br> - rs1_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                   |[0x800007c0]:KSTAS16 a6, gp, s8<br> [0x800007c4]:sd a6, 16(ra)<br>      |
|  19|[0x80003330]<br>0x0F7F00013FF9FFFF|- rs1 : x20<br> - rs2 : x14<br> - rd : x29<br> - rs2_h3_val == -129<br> - rs1_h3_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800007fc]:KSTAS16 t4, s4, a4<br> [0x80000800]:sd t4, 32(ra)<br>      |
|  20|[0x80003340]<br>0xFFAEF80201BF0007|- rs1 : x29<br> - rs2 : x15<br> - rd : x11<br> - rs2_h3_val == -65<br> - rs2_h2_val == -3<br> - rs2_h1_val == -65<br> - rs1_h3_val == -17<br> - rs1_h2_val == -2049<br> - rs1_h1_val == 512<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                         |[0x80000830]:KSTAS16 a1, t4, a5<br> [0x80000834]:sd a1, 48(ra)<br>      |
|  21|[0x80003350]<br>0xFFDF0011EFFFFFFC|- rs1 : x0<br> - rs2 : x22<br> - rd : x15<br> - rs2_h3_val == -33<br> - rs2_h2_val == -17<br> - rs1_h3_val == 0<br> - rs1_h2_val == 0<br> - rs1_h1_val == 0<br>                                                                                                                                                                                                                                                                                                                                                                                |[0x80000868]:KSTAS16 a5, zero, s6<br> [0x8000086c]:sd a5, 64(ra)<br>    |
|  22|[0x80003360]<br>0xDFEEFFFBFDF73FFD|- rs1 : x14<br> - rs2 : x30<br> - rd : x22<br> - rs2_h3_val == -17<br> - rs2_h1_val == -513<br> - rs1_h3_val == -8193<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                               |[0x800008a0]:KSTAS16 s6, a4, t5<br> [0x800008a4]:sd s6, 80(ra)<br>      |
|  23|[0x80003370]<br>0xFEF6002120090023|- rs1 : x19<br> - rs2 : x23<br> - rd : x13<br> - rs2_h3_val == -9<br> - rs2_h1_val == 8192<br> - rs2_h0_val == -3<br> - rs1_h3_val == -257<br> - rs1_h2_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                          |[0x800008dc]:KSTAS16 a3, s3, s7<br> [0x800008e0]:sd a3, 96(ra)<br>      |
|  24|[0x80003380]<br>0xFFF6DFFDFFB9FFB7|- rs1 : x7<br> - rs2 : x8<br> - rd : x30<br> - rs2_h3_val == -5<br> - rs2_h0_val == 64<br> - rs1_h3_val == -5<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000918]:KSTAS16 t5, t2, fp<br> [0x8000091c]:sd t5, 112(ra)<br>     |
|  25|[0x80003390]<br>0x0400FFFFFDFF3FFF|- rs1 : x8<br> - rs2 : x0<br> - rd : x27<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_h2_val == -1<br> - rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                                                           |[0x80000950]:KSTAS16 s11, fp, zero<br> [0x80000954]:sd s11, 128(ra)<br> |
|  26|[0x800033a0]<br>0x0001FFEF04070001|- rs1 : x18<br> - rs2 : x31<br> - rd : x10<br> - rs2_h3_val == -2<br> - rs1_h1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000984]:KSTAS16 a0, s2, t6<br> [0x80000988]:sd a0, 144(ra)<br>     |
|  27|[0x800033b0]<br>0x3FF7AAA6AFFEFFF4|- rs1 : x11<br> - rs2 : x18<br> - rd : x3<br> - rs2_h3_val == 16384<br> - rs1_h3_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800009bc]:KSTAS16 gp, a1, s2<br> [0x800009c0]:sd gp, 160(ra)<br>     |
|  28|[0x800033c0]<br>0x1FFAFC07FE7EEBFF|- rs1 : x26<br> - rs2 : x25<br> - rd : x19<br> - rs2_h3_val == 8192<br> - rs2_h0_val == 1024<br> - rs1_h2_val == -1025<br> - rs1_h1_val == -257<br> - rs1_h0_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                  |[0x800009f8]:KSTAS16 s3, s10, s9<br> [0x800009fc]:sd s3, 176(ra)<br>    |
|  29|[0x800033d0]<br>0x0000000000000000|- rs1 : x23<br> - rs2 : x11<br> - rd : x0<br> - rs2_h3_val == 4096<br> - rs2_h2_val == -5<br> - rs1_h3_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000a3c]:KSTAS16 zero, s7, a1<br> [0x80000a40]:sd zero, 192(ra)<br> |
|  30|[0x800033e0]<br>0x07FC001B0402000D|- rs1 : x31<br> - rs2 : x12<br> - rd : x8<br> - rs2_h3_val == 2048<br> - rs2_h2_val == -33<br> - rs2_h1_val == 1024<br> - rs1_h1_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000a78]:KSTAS16 fp, t6, a2<br> [0x80000a7c]:sd fp, 208(ra)<br>     |
|  31|[0x800033f0]<br>0x43FFFFFC0020F020|- rs1 : x30<br> - rs2 : x7<br> - rd : x26<br> - rs2_h3_val == 1024<br> - rs2_h2_val == 1<br> - rs2_h0_val == -33<br> - rs1_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                    |[0x80000ab4]:KSTAS16 s10, t5, t2<br> [0x80000ab8]:sd s10, 224(ra)<br>   |
|  32|[0x80003400]<br>0x01FA7FF7BFFCFFCF|- rs1 : x15<br> - rs2 : x5<br> - rd : x4<br> - rs2_h3_val == 512<br> - rs2_h2_val == 8<br> - rs2_h1_val == -3<br> - rs1_h2_val == 32767<br> - rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                         |[0x80000ae8]:KSTAS16 tp, a5, t0<br> [0x80000aec]:sd tp, 240(ra)<br>     |
|  33|[0x80003410]<br>0x010008051EFFFCFF|- rs2_h3_val == 256<br> - rs2_h0_val == 512<br> - rs1_h2_val == 2048<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80000b1c]:KSTAS16 t6, t5, t4<br> [0x80000b20]:sd t6, 256(ra)<br>     |
|  34|[0x80003420]<br>0x0050F7FB4D544800|- rs2_h3_val == 64<br> - rs2_h2_val == 2048<br> - rs2_h1_val == -2049<br> - rs2_h0_val == -2049<br> - rs1_h2_val == -5<br> - rs1_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000b58]:KSTAS16 t6, t5, t4<br> [0x80000b5c]:sd t6, 272(ra)<br>     |
|  35|[0x80003430]<br>0x7FFFFFF30480E002|- rs2_h3_val == 32<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80000b94]:KSTAS16 t6, t5, t4<br> [0x80000b98]:sd t6, 288(ra)<br>     |
|  36|[0x80003440]<br>0x0810EFF7FFF40039|- rs2_h3_val == 16<br> - rs2_h2_val == 4096<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000bd0]:KSTAS16 t6, t5, t4<br> [0x80000bd4]:sd t6, 304(ra)<br>     |
|  37|[0x80003450]<br>0x2007FFC0FFF6FFA0|- rs2_h2_val == -1<br> - rs1_h3_val == 8192<br> - rs1_h2_val == -65<br> - rs1_h1_val == -3<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000c08]:KSTAS16 t6, t5, t4<br> [0x80000c0c]:sd t6, 320(ra)<br>     |
|  38|[0x80003460]<br>0x0FFCEEFF0000EFFB|- rs2_h1_val == 2<br> - rs2_h0_val == 4096<br> - rs1_h1_val == -2<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000c3c]:KSTAS16 t6, t5, t4<br> [0x80000c40]:sd t6, 336(ra)<br>     |
|  39|[0x80003470]<br>0x0001040380028000|- rs2_h2_val == -1025<br> - rs1_h3_val == 8<br> - rs1_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000c78]:KSTAS16 t6, t5, t4<br> [0x80000c7c]:sd t6, 352(ra)<br>     |
|  40|[0x80003480]<br>0xFFC2000065554000|- rs2_h1_val == 21845<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000ca4]:KSTAS16 t6, t5, t4<br> [0x80000ca8]:sd t6, 368(ra)<br>     |
|  41|[0x80003490]<br>0xFFF5FFFE0840EFFE|- rs2_h1_val == 2048<br> - rs1_h1_val == 64<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000cdc]:KSTAS16 t6, t5, t4<br> [0x80000ce0]:sd t6, 384(ra)<br>     |
|  42|[0x800034a0]<br>0x000CC0010048000C|- rs2_h2_val == 16384<br> - rs2_h1_val == 64<br> - rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000d14]:KSTAS16 t6, t5, t4<br> [0x80000d18]:sd t6, 400(ra)<br>     |
|  43|[0x800034b0]<br>0xFDF8E0070001080A|- rs1_h1_val == 4<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80000d50]:KSTAS16 t6, t5, t4<br> [0x80000d54]:sd t6, 416(ra)<br>     |
|  44|[0x800034c0]<br>0xFFF2200900064081|- rs1_h2_val == 8<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000d88]:KSTAS16 t6, t5, t4<br> [0x80000d8c]:sd t6, 432(ra)<br>     |
|  45|[0x800034d0]<br>0xC0FF20090004FFFC|- rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000dbc]:KSTAS16 t6, t5, t4<br> [0x80000dc0]:sd t6, 448(ra)<br>     |
|  46|[0x800034e0]<br>0xFFBE3FF607F8AABB|- rs2_h0_val == -17<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000df8]:KSTAS16 t6, t5, t4<br> [0x80000dfc]:sd t6, 464(ra)<br>     |
|  47|[0x800034f0]<br>0x0005EFF70003554E|- rs2_h1_val == 4<br> - rs1_h3_val == 2<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000e30]:KSTAS16 t6, t5, t4<br> [0x80000e34]:sd t6, 480(ra)<br>     |
|  48|[0x80003500]<br>0xE0FFFC00C0057FFC|- rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000e74]:KSTAS16 t6, t5, t4<br> [0x80000e78]:sd t6, 496(ra)<br>     |
|  49|[0x80003510]<br>0x7FFFFEFBBFFEF803|- rs2_h1_val == -1<br> - rs1_h2_val == -257<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000eb0]:KSTAS16 t6, t5, t4<br> [0x80000eb4]:sd t6, 512(ra)<br>     |
|  50|[0x80003520]<br>0xBFFDC8001F7F0040|- rs1_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80000eec]:KSTAS16 t6, t5, t4<br> [0x80000ef0]:sd t6, 528(ra)<br>     |
|  51|[0x80003530]<br>0x00FC4100AAA8BFEF|- rs2_h1_val == -21846<br> - rs2_h0_val == 16384<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                   |[0x80000f24]:KSTAS16 t6, t5, t4<br> [0x80000f28]:sd t6, 544(ra)<br>     |
|  52|[0x80003540]<br>0xFF79555200470FFC|- rs2_h2_val == -21846<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000f5c]:KSTAS16 t6, t5, t4<br> [0x80000f60]:sd t6, 560(ra)<br>     |
|  53|[0x80003550]<br>0x3FF9000BC1FF03F7|- rs2_h2_val == -9<br> - rs1_h3_val == 16384<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000f94]:KSTAS16 t6, t5, t4<br> [0x80000f98]:sd t6, 576(ra)<br>     |
|  54|[0x80003560]<br>0xFFFB000455D50A01|- rs2_h1_val == 128<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000fd0]:KSTAS16 t6, t5, t4<br> [0x80000fd4]:sd t6, 592(ra)<br>     |
|  55|[0x80003570]<br>0xFFFF210108064100|- rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001008]:KSTAS16 t6, t5, t4<br> [0x8000100c]:sd t6, 608(ra)<br>     |
|  56|[0x80003580]<br>0xFFFC7FFDFB7E0040|- rs1_h1_val == -1025<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001040]:KSTAS16 t6, t5, t4<br> [0x80001044]:sd t6, 624(ra)<br>     |
|  57|[0x80003590]<br>0xFFFEFF7C8001FFE8|- rs2_h1_val == -32768<br> - rs2_h0_val == 32<br> - rs1_h3_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001070]:KSTAS16 t6, t5, t4<br> [0x80001074]:sd t6, 640(ra)<br>     |
|  58|[0x800035a0]<br>0xDFDEFFED10080083|- rs2_h1_val == 4096<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800010ac]:KSTAS16 t6, t5, t4<br> [0x800010b0]:sd t6, 656(ra)<br>     |
|  59|[0x800035b0]<br>0xFF87F005F3FF5545|- rs2_h3_val == 8<br> - rs1_h3_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800010e8]:KSTAS16 t6, t5, t4<br> [0x800010ec]:sd t6, 672(ra)<br>     |
|  60|[0x800035c0]<br>0xBFFA3FFC7FDEFFFF|- rs2_h1_val == -33<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001118]:KSTAS16 t6, t5, t4<br> [0x8000111c]:sd t6, 688(ra)<br>     |
|  61|[0x800035d0]<br>0xAAAE0006FFF30801|- rs2_h3_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001154]:KSTAS16 t6, t5, t4<br> [0x80001158]:sd t6, 704(ra)<br>     |
|  62|[0x800035e0]<br>0x55574005FDFFFFFF|- rs2_h3_val == 2<br> - rs2_h1_val == 512<br> - rs1_h2_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001184]:KSTAS16 t6, t5, t4<br> [0x80001188]:sd t6, 720(ra)<br>     |
|  63|[0x800035f0]<br>0x0001F7FDFFDDFFAF|- rs2_h3_val == 1<br> - rs1_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800011b8]:KSTAS16 t6, t5, t4<br> [0x800011bc]:sd t6, 736(ra)<br>     |
|  64|[0x80003600]<br>0xDEFE2006F9FF554E|- rs2_h0_val == -21846<br> - rs1_h2_val == 8192<br> - rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800011f0]:KSTAS16 t6, t5, t4<br> [0x800011f4]:sd t6, 752(ra)<br>     |
|  65|[0x80003610]<br>0x8040FFF8BFFF8000|- rs2_h0_val == 21845<br> - rs1_h3_val == -32768<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001234]:KSTAS16 t6, t5, t4<br> [0x80001238]:sd t6, 768(ra)<br>     |
|  66|[0x80003620]<br>0xFC1F55520043400A|- rs2_h0_val == -16385<br> - rs1_h2_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001270]:KSTAS16 t6, t5, t4<br> [0x80001274]:sd t6, 784(ra)<br>     |
|  67|[0x80003630]<br>0xFFE3FFD0FDFF2021|- rs2_h0_val == -8193<br> - rs1_h3_val == 4<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800012ac]:KSTAS16 t6, t5, t4<br> [0x800012b0]:sd t6, 800(ra)<br>     |
|  68|[0x80003640]<br>0x0FFDC00801041006|- rs2_h0_val == -4097<br> - rs1_h3_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x800012e0]:KSTAS16 t6, t5, t4<br> [0x800012e4]:sd t6, 816(ra)<br>     |
|  69|[0x80003650]<br>0x8000FFF900480401|- rs2_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001318]:KSTAS16 t6, t5, t4<br> [0x8000131c]:sd t6, 832(ra)<br>     |
|  70|[0x80003660]<br>0xDFF6FFFFFEFD1201|- rs2_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001348]:KSTAS16 t6, t5, t4<br> [0x8000134c]:sd t6, 848(ra)<br>     |
|  71|[0x80003670]<br>0x7FFF4101FFBFFD00|- rs2_h2_val == -257<br> - rs2_h0_val == -257<br> - rs1_h2_val == 16384<br> - rs1_h1_val == -129<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80001384]:KSTAS16 t6, t5, t4<br> [0x80001388]:sd t6, 864(ra)<br>     |
|  72|[0x80003680]<br>0x100200C000000044|- rs2_h0_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800013bc]:KSTAS16 t6, t5, t4<br> [0x800013c0]:sd t6, 880(ra)<br>     |
|  73|[0x80003690]<br>0xFFF9DFF9FFFC2009|- rs2_h0_val == -9<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800013f0]:KSTAS16 t6, t5, t4<br> [0x800013f4]:sd t6, 896(ra)<br>     |
|  74|[0x800036a0]<br>0xFF8254D5000A0007|- rs2_h2_val == 128<br> - rs2_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000142c]:KSTAS16 t6, t5, t4<br> [0x80001430]:sd t6, 912(ra)<br>     |
|  75|[0x800036b0]<br>0xC000455500850008|- rs2_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001460]:KSTAS16 t6, t5, t4<br> [0x80001464]:sd t6, 928(ra)<br>     |
|  76|[0x800036c0]<br>0xEFEE1008FF867FFF|- rs2_h0_val == -32768<br> - rs1_h2_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001494]:KSTAS16 t6, t5, t4<br> [0x80001498]:sd t6, 944(ra)<br>     |
|  77|[0x800036d0]<br>0x003B0003FFF68000|- rs1_h0_val == -32768<br> - rs2_h1_val == -9<br> - rs2_h0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800014c8]:KSTAS16 t6, t5, t4<br> [0x800014cc]:sd t6, 960(ra)<br>     |
|  78|[0x800036e0]<br>0xFFEC2021FFFCF802|- rs2_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001500]:KSTAS16 t6, t5, t4<br> [0x80001504]:sd t6, 976(ra)<br>     |
|  79|[0x800036f0]<br>0x00F6FFE1400054D5|- rs2_h0_val == 128<br> - rs1_h2_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000153c]:KSTAS16 t6, t5, t4<br> [0x80001540]:sd t6, 992(ra)<br>     |
|  80|[0x80003700]<br>0x01FB00FAFFDFFFE3|- rs1_h3_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x8000156c]:KSTAS16 t6, t5, t4<br> [0x80001570]:sd t6, 1008(ra)<br>    |
|  81|[0x80003710]<br>0x4004F000CFFF000F|- rs2_h2_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800015a8]:KSTAS16 t6, t5, t4<br> [0x800015ac]:sd t6, 1024(ra)<br>    |
|  82|[0x80003720]<br>0xFDFC01FE535401FA|- rs2_h2_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x800015e4]:KSTAS16 t6, t5, t4<br> [0x800015e8]:sd t6, 1040(ra)<br>    |
|  83|[0x80003730]<br>0x7FFA0101554F8201|- rs2_h2_val == -129<br> - rs1_h2_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000161c]:KSTAS16 t6, t5, t4<br> [0x80001620]:sd t6, 1056(ra)<br>    |
|  84|[0x80003740]<br>0x7FF600C101F9FFCF|- rs2_h2_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001650]:KSTAS16 t6, t5, t4<br> [0x80001654]:sd t6, 1072(ra)<br>    |
|  85|[0x80003750]<br>0xC000C00280005551|- rs1_h3_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x8000168c]:KSTAS16 t6, t5, t4<br> [0x80001690]:sd t6, 1088(ra)<br>    |
|  86|[0x80003760]<br>0x9000E000AA890009|- rs1_h2_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800016d0]:KSTAS16 t6, t5, t4<br> [0x800016d4]:sd t6, 1104(ra)<br>    |
|  87|[0x80003770]<br>0xFFAEFE105FFF1801|- rs2_h2_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001708]:KSTAS16 t6, t5, t4<br> [0x8000170c]:sd t6, 1120(ra)<br>    |
|  88|[0x80003780]<br>0xFFD7FE031EFF0008|- rs1_h2_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001730]:KSTAS16 t6, t5, t4<br> [0x80001734]:sd t6, 1136(ra)<br>    |
|  89|[0x80003790]<br>0x07FDFF9FAAB32081|- rs2_h2_val == 32<br> - rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001768]:KSTAS16 t6, t5, t4<br> [0x8000176c]:sd t6, 1152(ra)<br>    |
|  90|[0x800037a0]<br>0x0C00FFF81040F007|- rs1_h2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800017a4]:KSTAS16 t6, t5, t4<br> [0x800017a8]:sd t6, 1168(ra)<br>    |
|  91|[0x800037b0]<br>0xFFF8FBEF7FFA0019|- rs2_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800017e0]:KSTAS16 t6, t5, t4<br> [0x800017e4]:sd t6, 1184(ra)<br>    |
|  92|[0x800037c0]<br>0x000108011FBF0000|- rs1_h2_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                       |[0x80001814]:KSTAS16 t6, t5, t4<br> [0x80001818]:sd t6, 1200(ra)<br>    |
|  93|[0x800037d0]<br>0xFFFCBFFDE00F7FFF|- rs2_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x8000184c]:KSTAS16 t6, t5, t4<br> [0x80001850]:sd t6, 1216(ra)<br>    |
|  94|[0x800037e0]<br>0x2001F7FA00FF0004|- rs2_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80001880]:KSTAS16 t6, t5, t4<br> [0x80001884]:sd t6, 1232(ra)<br>    |
|  95|[0x800037f0]<br>0xFBFF0009FB7E0F80|- rs2_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800018bc]:KSTAS16 t6, t5, t4<br> [0x800018c0]:sd t6, 1248(ra)<br>    |
|  96|[0x80003800]<br>0x0401FF40DFDECFFF|- rs1_h2_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x800018f4]:KSTAS16 t6, t5, t4<br> [0x800018f8]:sd t6, 1264(ra)<br>    |
|  97|[0x80003810]<br>0xFFE500A100010000|- rs1_h2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001930]:KSTAS16 t6, t5, t4<br> [0x80001934]:sd t6, 1280(ra)<br>    |
|  98|[0x80003820]<br>0xDFFEAAA6FFCF0300|- rs2_h2_val == 21845<br> - rs1_h3_val == -4097<br> - rs1_h1_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |[0x8000196c]:KSTAS16 t6, t5, t4<br> [0x80001970]:sd t6, 1296(ra)<br>    |
|  99|[0x80003830]<br>0xEFFE0008FF8801C0|- rs1_h3_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x800019a8]:KSTAS16 t6, t5, t4<br> [0x800019ac]:sd t6, 1312(ra)<br>    |
| 100|[0x80003840]<br>0x7FFE0009FFFA000E|- rs2_h3_val == -1<br> - rs2_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x800019dc]:KSTAS16 t6, t5, t4<br> [0x800019e0]:sd t6, 1328(ra)<br>    |
| 101|[0x80003850]<br>0x8000FFFC00EFBBFF|- rs2_h1_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001a18]:KSTAS16 t6, t5, t4<br> [0x80001a1c]:sd t6, 1344(ra)<br>    |
| 102|[0x80003860]<br>0x07DFAAEB3FFA8000|- rs2_h1_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |[0x80001a48]:KSTAS16 t6, t5, t4<br> [0x80001a4c]:sd t6, 1360(ra)<br>    |
| 103|[0x80003870]<br>0x8000FA00C020F804|- rs2_h1_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001a8c]:KSTAS16 t6, t5, t4<br> [0x80001a90]:sd t6, 1376(ra)<br>    |
| 104|[0x80003880]<br>0xBFDEFFF81FEFFFE8|- rs1_h3_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001ac0]:KSTAS16 t6, t5, t4<br> [0x80001ac4]:sd t6, 1392(ra)<br>    |
| 105|[0x800038a0]<br>0x03FD0009FDFE4010|- rs2_h3_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001b30]:KSTAS16 t6, t5, t4<br> [0x80001b34]:sd t6, 1424(ra)<br>    |
