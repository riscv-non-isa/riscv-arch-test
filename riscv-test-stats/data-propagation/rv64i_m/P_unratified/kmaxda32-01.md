
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001a40')]      |
| SIG_REGION                | [('0x80003210', '0x80003ac0', '278 dwords')]      |
| COV_LABELS                | kmaxda32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmaxda32-01.S    |
| Total Number of coverpoints| 392     |
| Total Coverpoints Hit     | 386      |
| Total Signature Updates   | 278      |
| STAT1                     | 135      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 139     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001558]:KMAXDA32 t6, t5, t4
      [0x8000155c]:sd t6, 1200(ra)
 -- Signature Address: 0x800038c0 Data: 0xFD118945192CED5D
 -- Redundant Coverpoints hit by the op
      - opcode : kmaxda32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == 0
      - rs1_w1_val == -1431655766
      - rs1_w0_val == 32768




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000160c]:KMAXDA32 t6, t5, t4
      [0x80001610]:sd t6, 1280(ra)
 -- Signature Address: 0x80003910 Data: 0x0D0F8937C73CEB78
 -- Redundant Coverpoints hit by the op
      - opcode : kmaxda32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val < 0 and rs2_w0_val > 0
      - rs2_w1_val == 33554432
      - rs2_w0_val == 4194304
      - rs1_w1_val == 0
      - rs1_w0_val == -129




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800019b8]:KMAXDA32 t6, t5, t4
      [0x800019bc]:sd t6, 1648(ra)
 -- Signature Address: 0x80003a80 Data: 0xBBCE382E8830EDEF
 -- Redundant Coverpoints hit by the op
      - opcode : kmaxda32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == -2147483648
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val < 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val < 0 and rs2_w0_val < 0
      - rs2_w0_val == -262145
      - rs1_w1_val == -3




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a34]:KMAXDA32 t6, t5, t4
      [0x80001a38]:sd t6, 1696(ra)
 -- Signature Address: 0x80003ab0 Data: 0xBCCE382EC78CCBE2
 -- Redundant Coverpoints hit by the op
      - opcode : kmaxda32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val < 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs2_w1_val == -32769
      - rs2_w0_val == 0
      - rs1_w1_val == -4097
      - rs1_w0_val == 8






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmaxda32', 'rs1 : x12', 'rs2 : x12', 'rd : x0', 'rs1 == rs2 != rd', 'rs1_w1_val == rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val < 0', 'rs1_w0_val == rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w0_val == -262145', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x800003bc]:KMAXDA32 zero, a2, a2
	-[0x800003c0]:sd zero, 0(sp)
Current Store : [0x800003c4] : sd a2, 8(sp) -- Store: [0x80003218]:0xFFFFFFF8FFFBFFFF




Last Coverpoint : ['rs1 : x17', 'rs2 : x17', 'rd : x17', 'rs1 == rs2 == rd', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 2048', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x800003e4]:KMAXDA32 a7, a7, a7
	-[0x800003e8]:sd a7, 16(sp)
Current Store : [0x800003ec] : sd a7, 24(sp) -- Store: [0x80003228]:0xFFFFFFFBFFFFC800




Last Coverpoint : ['rs1 : x0', 'rs2 : x8', 'rd : x10', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w0_val != rs2_w0_val', 'rs2_w0_val == -67108865', 'rs1_w1_val == 0', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000410]:KMAXDA32 a0, zero, fp
	-[0x80000414]:sd a0, 32(sp)
Current Store : [0x80000418] : sd zero, 40(sp) -- Store: [0x80003238]:0x0000000000000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x7', 'rd : x25', 'rs1 == rd != rs2', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs2_w0_val == -2147483648', 'rs1_w1_val == 32']
Last Code Sequence : 
	-[0x80000430]:KMAXDA32 s9, s9, t2
	-[0x80000434]:sd s9, 48(sp)
Current Store : [0x80000438] : sd s9, 56(sp) -- Store: [0x80003248]:0x0000001100000046




Last Coverpoint : ['rs1 : x16', 'rs2 : x26', 'rd : x26', 'rs2 == rd != rs1', 'rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == 32', 'rs2_w0_val == 32', 'rs1_w1_val == 4096', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80000458]:KMAXDA32 s10, a6, s10
	-[0x8000045c]:sd s10, 64(sp)
Current Store : [0x80000460] : sd a6, 72(sp) -- Store: [0x80003258]:0x00001000FFFFFFBF




Last Coverpoint : ['rs1 : x26', 'rs2 : x20', 'rd : x5', 'rs1_w1_val < 0 and rs2_w1_val > 0', 'rs2_w1_val == 2048', 'rs2_w0_val == -16777217', 'rs1_w1_val == -65537', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000484]:KMAXDA32 t0, s10, s4
	-[0x80000488]:sd t0, 80(sp)
Current Store : [0x8000048c] : sd s10, 88(sp) -- Store: [0x80003268]:0xFFFEFFFFFEFFFFFF




Last Coverpoint : ['rs1 : x21', 'rs2 : x13', 'rd : x31', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w1_val == -2147483648', 'rs1_w1_val == -33554433', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x800004b4]:KMAXDA32 t6, s5, a3
	-[0x800004b8]:sd t6, 96(sp)
Current Store : [0x800004bc] : sd s5, 104(sp) -- Store: [0x80003278]:0xFDFFFFFF00080000




Last Coverpoint : ['rs1 : x4', 'rs2 : x3', 'rd : x24', 'rs2_w1_val == -1431655766', 'rs2_w0_val == -5', 'rs1_w1_val == 1024', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800004e0]:KMAXDA32 s8, tp, gp
	-[0x800004e4]:sd s8, 112(sp)
Current Store : [0x800004e8] : sd tp, 120(sp) -- Store: [0x80003288]:0x00000400FFFEFFFF




Last Coverpoint : ['rs1 : x13', 'rs2 : x31', 'rd : x1', 'rs2_w1_val == 1431655765', 'rs2_w0_val == -134217729', 'rs1_w1_val == 8']
Last Code Sequence : 
	-[0x80000510]:KMAXDA32 ra, a3, t6
	-[0x80000514]:sd ra, 128(sp)
Current Store : [0x80000518] : sd a3, 136(sp) -- Store: [0x80003298]:0x000000083FFFFFFF




Last Coverpoint : ['rs1 : x8', 'rs2 : x21', 'rd : x22', 'rs2_w1_val == 2147483647', 'rs2_w0_val == -65', 'rs1_w1_val == -131073']
Last Code Sequence : 
	-[0x80000534]:KMAXDA32 s6, fp, s5
	-[0x80000538]:sd s6, 144(sp)
Current Store : [0x8000053c] : sd fp, 152(sp) -- Store: [0x800032a8]:0xFFFDFFFF00000000




Last Coverpoint : ['rs1 : x24', 'rs2 : x22', 'rd : x28', 'rs2_w1_val == -1073741825', 'rs2_w0_val == 2', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x8000055c]:KMAXDA32 t3, s8, s6
	-[0x80000560]:sd t3, 160(sp)
Current Store : [0x80000564] : sd s8, 168(sp) -- Store: [0x800032b8]:0xFFFFFFFC00000010




Last Coverpoint : ['rs1 : x11', 'rs2 : x14', 'rd : x23', 'rs2_w1_val == -536870913', 'rs2_w0_val == -33554433', 'rs1_w1_val == 524288', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x8000058c]:KMAXDA32 s7, a1, a4
	-[0x80000590]:sd s7, 176(sp)
Current Store : [0x80000594] : sd a1, 184(sp) -- Store: [0x800032c8]:0x00080000FFFFFBFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x15', 'rd : x29', 'rs2_w1_val == -268435457', 'rs2_w0_val == -1431655766', 'rs1_w1_val == 2', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x800005c4]:KMAXDA32 t4, t0, a5
	-[0x800005c8]:sd t4, 192(sp)
Current Store : [0x800005cc] : sd t0, 200(sp) -- Store: [0x800032d8]:0x00000002FFFDFFFF




Last Coverpoint : ['rs1 : x15', 'rs2 : x29', 'rd : x7', 'rs2_w1_val == -134217729', 'rs2_w0_val == 4096', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x800005f0]:KMAXDA32 t2, a5, t4
	-[0x800005f4]:sd t2, 208(sp)
Current Store : [0x800005f8] : sd a5, 216(sp) -- Store: [0x800032e8]:0xFDFFFFFFFFFFFEFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x16', 'rd : x11', 'rs2_w1_val == -67108865', 'rs2_w0_val == -513', 'rs1_w1_val == 16777216', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000618]:KMAXDA32 a1, t3, a6
	-[0x8000061c]:sd a1, 224(sp)
Current Store : [0x80000620] : sd t3, 232(sp) -- Store: [0x800032f8]:0x0100000000004000




Last Coverpoint : ['rs1 : x1', 'rs2 : x23', 'rd : x16', 'rs2_w1_val == -33554433', 'rs1_w1_val == -2147483648', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000640]:KMAXDA32 a6, ra, s7
	-[0x80000644]:sd a6, 240(sp)
Current Store : [0x80000648] : sd ra, 248(sp) -- Store: [0x80003308]:0x80000000FFFFFFF7




Last Coverpoint : ['rs1 : x20', 'rs2 : x1', 'rd : x27', 'rs2_w1_val == -16777217', 'rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80000664]:KMAXDA32 s11, s4, ra
	-[0x80000668]:sd s11, 256(sp)
Current Store : [0x8000066c] : sd s4, 264(sp) -- Store: [0x80003318]:0x00000002FFFFFFDF




Last Coverpoint : ['rs1 : x14', 'rs2 : x18', 'rd : x4', 'rs2_w1_val == -8388609', 'rs2_w0_val == -8388609', 'rs1_w1_val == -16385', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80000690]:KMAXDA32 tp, a4, s2
	-[0x80000694]:sd tp, 272(sp)
Current Store : [0x80000698] : sd a4, 280(sp) -- Store: [0x80003328]:0xFFFFBFFFFFFFFF7F




Last Coverpoint : ['rs1 : x27', 'rs2 : x9', 'rd : x3', 'rs2_w1_val == -4194305', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x800006bc]:KMAXDA32 gp, s11, s1
	-[0x800006c0]:sd gp, 288(sp)
Current Store : [0x800006c4] : sd s11, 296(sp) -- Store: [0x80003338]:0xFFFFFFFAFFBFFFFF




Last Coverpoint : ['rs1 : x3', 'rs2 : x5', 'rd : x21', 'rs2_w1_val == -2097153', 'rs2_w0_val == 2147483647', 'rs1_w1_val == 1']
Last Code Sequence : 
	-[0x800006ec]:KMAXDA32 s5, gp, t0
	-[0x800006f0]:sd s5, 0(ra)
Current Store : [0x800006f4] : sd gp, 8(ra) -- Store: [0x80003348]:0x0000000100000006




Last Coverpoint : ['rs1 : x7', 'rs2 : x2', 'rd : x9', 'rs2_w1_val == -1048577', 'rs2_w0_val == 128', 'rs1_w1_val == -1025', 'rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80000714]:KMAXDA32 s1, t2, sp
	-[0x80000718]:sd s1, 16(ra)
Current Store : [0x8000071c] : sd t2, 24(ra) -- Store: [0x80003358]:0xFFFFFBFFFFFFFFFD




Last Coverpoint : ['rs1 : x18', 'rs2 : x27', 'rd : x2', 'rs2_w1_val == -524289', 'rs2_w0_val == 16777216', 'rs1_w1_val == -129', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000738]:KMAXDA32 sp, s2, s11
	-[0x8000073c]:sd sp, 32(ra)
Current Store : [0x80000740] : sd s2, 40(ra) -- Store: [0x80003368]:0xFFFFFF7F08000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x10', 'rd : x12', 'rs2_w1_val == -262145', 'rs1_w1_val == -16777217']
Last Code Sequence : 
	-[0x8000075c]:KMAXDA32 a2, t4, a0
	-[0x80000760]:sd a2, 48(ra)
Current Store : [0x80000764] : sd t4, 56(ra) -- Store: [0x80003378]:0xFEFFFFFFFFFFFFFA




Last Coverpoint : ['rs1 : x6', 'rs2 : x28', 'rd : x8', 'rs2_w1_val == -131073', 'rs2_w0_val == 1431655765', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x8000078c]:KMAXDA32 fp, t1, t3
	-[0x80000790]:sd fp, 64(ra)
Current Store : [0x80000794] : sd t1, 72(ra) -- Store: [0x80003388]:0xFFFFFFFA00000020




Last Coverpoint : ['rs1 : x9', 'rs2 : x19', 'rd : x15', 'rs2_w1_val == -65537', 'rs2_w0_val == 4194304']
Last Code Sequence : 
	-[0x800007b4]:KMAXDA32 a5, s1, s3
	-[0x800007b8]:sd a5, 80(ra)
Current Store : [0x800007bc] : sd s1, 88(ra) -- Store: [0x80003398]:0x00000007FFFEFFFF




Last Coverpoint : ['rs1 : x2', 'rs2 : x0', 'rd : x6', 'rs2_w1_val == 0', 'rs2_w0_val == 0', 'rs1_w1_val == -4097', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x800007dc]:KMAXDA32 t1, sp, zero
	-[0x800007e0]:sd t1, 96(ra)
Current Store : [0x800007e4] : sd sp, 104(ra) -- Store: [0x800033a8]:0xFFFFEFFF00000008




Last Coverpoint : ['rs1 : x10', 'rs2 : x30', 'rd : x20', 'rs2_w1_val == -16385']
Last Code Sequence : 
	-[0x80000808]:KMAXDA32 s4, a0, t5
	-[0x8000080c]:sd s4, 112(ra)
Current Store : [0x80000810] : sd a0, 120(ra) -- Store: [0x800033b8]:0x00001000FFBFFFFF




Last Coverpoint : ['rs1 : x19', 'rs2 : x4', 'rd : x14', 'rs2_w1_val == -8193', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x80000830]:KMAXDA32 a4, s3, tp
	-[0x80000834]:sd a4, 128(ra)
Current Store : [0x80000838] : sd s3, 136(ra) -- Store: [0x800033c8]:0xFFFFFF7FDFFFFFFF




Last Coverpoint : ['rs1 : x31', 'rs2 : x25', 'rd : x13', 'rs2_w1_val == -4097', 'rs1_w1_val == -5']
Last Code Sequence : 
	-[0x80000854]:KMAXDA32 a3, t6, s9
	-[0x80000858]:sd a3, 144(ra)
Current Store : [0x8000085c] : sd t6, 152(ra) -- Store: [0x800033d8]:0xFFFFFFFB00000009




Last Coverpoint : ['rs1 : x30', 'rs2 : x11', 'rd : x18', 'rs2_w1_val == -2049', 'rs2_w0_val == 8388608']
Last Code Sequence : 
	-[0x8000087c]:KMAXDA32 s2, t5, a1
	-[0x80000880]:sd s2, 160(ra)
Current Store : [0x80000884] : sd t5, 168(ra) -- Store: [0x800033e8]:0x0008000000080000




Last Coverpoint : ['rs1 : x22', 'rs2 : x24', 'rd : x19', 'rs2_w1_val == -1025', 'rs2_w0_val == -131073', 'rs1_w1_val == -2049', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x800008a4]:KMAXDA32 s3, s6, s8
	-[0x800008a8]:sd s3, 176(ra)
Current Store : [0x800008ac] : sd s6, 184(ra) -- Store: [0x800033f8]:0xFFFFF7FFFFFFFFFB




Last Coverpoint : ['rs1 : x23', 'rs2 : x6', 'rd : x30', 'rs2_w1_val == -513', 'rs1_w1_val == -1073741825', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x800008d0]:KMAXDA32 t5, s7, t1
	-[0x800008d4]:sd t5, 192(ra)
Current Store : [0x800008d8] : sd s7, 200(ra) -- Store: [0x80003408]:0xBFFFFFFF04000000




Last Coverpoint : ['rs2_w1_val == -257']
Last Code Sequence : 
	-[0x800008fc]:KMAXDA32 t6, t5, t4
	-[0x80000900]:sd t6, 0(ra)
Current Store : [0x80000904] : sd t5, 8(ra) -- Store: [0x80003418]:0xFFFFFF7FFFFFFFF9




Last Coverpoint : ['rs2_w1_val == -129', 'rs1_w1_val == -67108865']
Last Code Sequence : 
	-[0x80000924]:KMAXDA32 t6, t5, t4
	-[0x80000928]:sd t6, 16(ra)
Current Store : [0x8000092c] : sd t5, 24(ra) -- Store: [0x80003428]:0xFBFFFFFF04000000




Last Coverpoint : ['rs2_w1_val == -65', 'rs2_w0_val == -65537', 'rs1_w1_val == -4194305']
Last Code Sequence : 
	-[0x8000094c]:KMAXDA32 t6, t5, t4
	-[0x80000950]:sd t6, 32(ra)
Current Store : [0x80000954] : sd t5, 40(ra) -- Store: [0x80003438]:0xFFBFFFFFC0000000




Last Coverpoint : ['rs2_w1_val == -33', 'rs2_w0_val == -1073741825', 'rs1_w1_val == -9']
Last Code Sequence : 
	-[0x80000970]:KMAXDA32 t6, t5, t4
	-[0x80000974]:sd t6, 48(ra)
Current Store : [0x80000978] : sd t5, 56(ra) -- Store: [0x80003448]:0xFFFFFFF7DFFFFFFF




Last Coverpoint : ['rs2_w1_val == -17', 'rs1_w1_val == -536870913', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000998]:KMAXDA32 t6, t5, t4
	-[0x8000099c]:sd t6, 64(ra)
Current Store : [0x800009a0] : sd t5, 72(ra) -- Store: [0x80003458]:0xDFFFFFFF00000400




Last Coverpoint : ['rs2_w1_val == -9', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x800009c4]:KMAXDA32 t6, t5, t4
	-[0x800009c8]:sd t6, 80(ra)
Current Store : [0x800009cc] : sd t5, 88(ra) -- Store: [0x80003468]:0xFFFFFF7FFFFF7FFF




Last Coverpoint : ['rs2_w1_val == -5']
Last Code Sequence : 
	-[0x800009e8]:KMAXDA32 t6, t5, t4
	-[0x800009ec]:sd t6, 96(ra)
Current Store : [0x800009f0] : sd t5, 104(ra) -- Store: [0x80003478]:0xFFFFFFFCFFFFFFBF




Last Coverpoint : ['rs2_w1_val == -3', 'rs2_w0_val == 67108864', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000a08]:KMAXDA32 t6, t5, t4
	-[0x80000a0c]:sd t6, 112(ra)
Current Store : [0x80000a10] : sd t5, 120(ra) -- Store: [0x80003488]:0xFFFFFFF9FFFFFFFF




Last Coverpoint : ['rs2_w1_val == -2', 'rs1_w1_val == 2097152']
Last Code Sequence : 
	-[0x80000a2c]:KMAXDA32 t6, t5, t4
	-[0x80000a30]:sd t6, 128(ra)
Current Store : [0x80000a34] : sd t5, 136(ra) -- Store: [0x80003498]:0x0020000000000008




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs1_w1_val == -3', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80000a54]:KMAXDA32 t6, t5, t4
	-[0x80000a58]:sd t6, 144(ra)
Current Store : [0x80000a5c] : sd t5, 152(ra) -- Store: [0x800034a8]:0xFFFFFFFDFDFFFFFF




Last Coverpoint : ['rs2_w1_val == 536870912', 'rs2_w0_val == -268435457', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80000a84]:KMAXDA32 t6, t5, t4
	-[0x80000a88]:sd t6, 160(ra)
Current Store : [0x80000a8c] : sd t5, 168(ra) -- Store: [0x800034b8]:0xFFFFFBFFFFFFEFFF




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs1_w1_val == -513', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000aac]:KMAXDA32 t6, t5, t4
	-[0x80000ab0]:sd t6, 176(ra)
Current Store : [0x80000ab4] : sd t5, 184(ra) -- Store: [0x800034c8]:0xFFFFFDFF00001000




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs2_w0_val == -17', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000ad4]:KMAXDA32 t6, t5, t4
	-[0x80000ad8]:sd t6, 192(ra)
Current Store : [0x80000adc] : sd t5, 200(ra) -- Store: [0x800034d8]:0x0000040000800000




Last Coverpoint : ['rs2_w1_val == 67108864', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80000afc]:KMAXDA32 t6, t5, t4
	-[0x80000b00]:sd t6, 208(ra)
Current Store : [0x80000b04] : sd t5, 216(ra) -- Store: [0x800034e8]:0xFFFFBFFFFFFFFFEF




Last Coverpoint : ['rs2_w1_val == 33554432', 'rs2_w0_val == -1']
Last Code Sequence : 
	-[0x80000b24]:KMAXDA32 t6, t5, t4
	-[0x80000b28]:sd t6, 224(ra)
Current Store : [0x80000b2c] : sd t5, 232(ra) -- Store: [0x800034f8]:0xFFFFFF7F00000400




Last Coverpoint : ['rs2_w1_val == 16777216', 'rs2_w0_val == 1', 'rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x80000b54]:KMAXDA32 t6, t5, t4
	-[0x80000b58]:sd t6, 240(ra)
Current Store : [0x80000b5c] : sd t5, 248(ra) -- Store: [0x80003508]:0x20000000FFFBFFFF




Last Coverpoint : ['rs2_w1_val == 8388608', 'rs2_w0_val == -1048577', 'rs1_w1_val == -2097153']
Last Code Sequence : 
	-[0x80000b84]:KMAXDA32 t6, t5, t4
	-[0x80000b88]:sd t6, 256(ra)
Current Store : [0x80000b8c] : sd t5, 264(ra) -- Store: [0x80003518]:0xFFDFFFFFFFFFFFF6




Last Coverpoint : ['rs2_w1_val == 4194304', 'rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x80000bb0]:KMAXDA32 t6, t5, t4
	-[0x80000bb4]:sd t6, 272(ra)
Current Store : [0x80000bb8] : sd t5, 280(ra) -- Store: [0x80003528]:0x0000800000001000




Last Coverpoint : ['rs2_w1_val == 2097152', 'rs2_w0_val == 65536']
Last Code Sequence : 
	-[0x80000bd8]:KMAXDA32 t6, t5, t4
	-[0x80000bdc]:sd t6, 288(ra)
Current Store : [0x80000be0] : sd t5, 296(ra) -- Store: [0x80003538]:0xFEFFFFFFFFFFFFBF




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs2_w0_val == -257', 'rs1_w1_val == 131072']
Last Code Sequence : 
	-[0x80000c0c]:KMAXDA32 t6, t5, t4
	-[0x80000c10]:sd t6, 304(ra)
Current Store : [0x80000c14] : sd t5, 312(ra) -- Store: [0x80003548]:0x00020000FFFBFFFF




Last Coverpoint : ['rs2_w1_val == 524288', 'rs1_w1_val == 134217728']
Last Code Sequence : 
	-[0x80000c34]:KMAXDA32 t6, t5, t4
	-[0x80000c38]:sd t6, 320(ra)
Current Store : [0x80000c3c] : sd t5, 328(ra) -- Store: [0x80003558]:0x0800000000000008




Last Coverpoint : ['rs1_w1_val == -262145', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000c60]:KMAXDA32 t6, t5, t4
	-[0x80000c64]:sd t6, 336(ra)
Current Store : [0x80000c68] : sd t5, 344(ra) -- Store: [0x80003568]:0xFFFBFFFF02000000




Last Coverpoint : ['rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000c88]:KMAXDA32 t6, t5, t4
	-[0x80000c8c]:sd t6, 352(ra)
Current Store : [0x80000c90] : sd t5, 360(ra) -- Store: [0x80003578]:0x0000800001000000




Last Coverpoint : ['rs2_w0_val == 1024', 'rs1_w1_val == -1431655766', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000cb4]:KMAXDA32 t6, t5, t4
	-[0x80000cb8]:sd t6, 368(ra)
Current Store : [0x80000cbc] : sd t5, 376(ra) -- Store: [0x80003588]:0xAAAAAAAA00400000




Last Coverpoint : ['rs2_w0_val == -32769', 'rs1_w1_val == -8388609', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000ce8]:KMAXDA32 t6, t5, t4
	-[0x80000cec]:sd t6, 384(ra)
Current Store : [0x80000cf0] : sd t5, 392(ra) -- Store: [0x80003598]:0xFF7FFFFF00200000




Last Coverpoint : ['rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000d10]:KMAXDA32 t6, t5, t4
	-[0x80000d14]:sd t6, 400(ra)
Current Store : [0x80000d18] : sd t5, 408(ra) -- Store: [0x800035a8]:0xFFFFBFFF00100000




Last Coverpoint : ['rs2_w1_val == 4', 'rs1_w1_val == -1', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000d34]:KMAXDA32 t6, t5, t4
	-[0x80000d38]:sd t6, 416(ra)
Current Store : [0x80000d3c] : sd t5, 424(ra) -- Store: [0x800035b8]:0xFFFFFFFF00040000




Last Coverpoint : ['rs2_w0_val == -16385', 'rs1_w1_val == -32769', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000d5c]:KMAXDA32 t6, t5, t4
	-[0x80000d60]:sd t6, 432(ra)
Current Store : [0x80000d64] : sd t5, 440(ra) -- Store: [0x800035c8]:0xFFFF7FFF00020000




Last Coverpoint : ['rs1_w1_val == -134217729', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000d8c]:KMAXDA32 t6, t5, t4
	-[0x80000d90]:sd t6, 448(ra)
Current Store : [0x80000d94] : sd t5, 456(ra) -- Store: [0x800035d8]:0xF7FFFFFF00010000




Last Coverpoint : ['rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000db8]:KMAXDA32 t6, t5, t4
	-[0x80000dbc]:sd t6, 464(ra)
Current Store : [0x80000dc0] : sd t5, 472(ra) -- Store: [0x800035e8]:0xFFFDFFFF00008000




Last Coverpoint : ['rs2_w0_val == 131072', 'rs1_w1_val == -257', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000ddc]:KMAXDA32 t6, t5, t4
	-[0x80000de0]:sd t6, 480(ra)
Current Store : [0x80000de4] : sd t5, 488(ra) -- Store: [0x800035f8]:0xFFFFFEFF00002000




Last Coverpoint : ['rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x80000e08]:KMAXDA32 t6, t5, t4
	-[0x80000e0c]:sd t6, 496(ra)
Current Store : [0x80000e10] : sd t5, 504(ra) -- Store: [0x80003608]:0x0001000000000800




Last Coverpoint : ['rs2_w1_val == 1024', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000e2c]:KMAXDA32 t6, t5, t4
	-[0x80000e30]:sd t6, 512(ra)
Current Store : [0x80000e34] : sd t5, 520(ra) -- Store: [0x80003618]:0x0000000200000200




Last Coverpoint : ['rs2_w0_val == -2097153', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000e5c]:KMAXDA32 t6, t5, t4
	-[0x80000e60]:sd t6, 528(ra)
Current Store : [0x80000e64] : sd t5, 536(ra) -- Store: [0x80003628]:0xFFFFEFFF00000100




Last Coverpoint : ['rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000e80]:KMAXDA32 t6, t5, t4
	-[0x80000e84]:sd t6, 544(ra)
Current Store : [0x80000e88] : sd t5, 552(ra) -- Store: [0x80003638]:0x0800000000000040




Last Coverpoint : ['rs2_w0_val == -4097', 'rs1_w1_val == 4', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000eac]:KMAXDA32 t6, t5, t4
	-[0x80000eb0]:sd t6, 560(ra)
Current Store : [0x80000eb4] : sd t5, 568(ra) -- Store: [0x80003648]:0x0000000400000004




Last Coverpoint : ['rs2_w0_val == 32768', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000ed4]:KMAXDA32 t6, t5, t4
	-[0x80000ed8]:sd t6, 576(ra)
Current Store : [0x80000edc] : sd t5, 584(ra) -- Store: [0x80003658]:0x0000000500000002




Last Coverpoint : ['rs1_w1_val == 4194304', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000f08]:KMAXDA32 t6, t5, t4
	-[0x80000f0c]:sd t6, 592(ra)
Current Store : [0x80000f10] : sd t5, 600(ra) -- Store: [0x80003668]:0x0040000000000001




Last Coverpoint : ['rs2_w1_val == 262144', 'rs2_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000f2c]:KMAXDA32 t6, t5, t4
	-[0x80000f30]:sd t6, 608(ra)
Current Store : [0x80000f34] : sd t5, 616(ra) -- Store: [0x80003678]:0x0000800000000006




Last Coverpoint : ['rs2_w1_val == 131072', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000f70]:KMAXDA32 t6, t5, t4
	-[0x80000f74]:sd t6, 624(ra)
Current Store : [0x80000f78] : sd t5, 632(ra) -- Store: [0x80003688]:0xAAAAAAAA55555555




Last Coverpoint : ['rs2_w1_val == 65536', 'rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x80000f94]:KMAXDA32 t6, t5, t4
	-[0x80000f98]:sd t6, 640(ra)
Current Store : [0x80000f9c] : sd t5, 648(ra) -- Store: [0x80003698]:0x0000400000800000




Last Coverpoint : ['rs2_w1_val == 32768', 'rs2_w0_val == 536870912', 'rs1_w1_val == 512']
Last Code Sequence : 
	-[0x80000fbc]:KMAXDA32 t6, t5, t4
	-[0x80000fc0]:sd t6, 656(ra)
Current Store : [0x80000fc4] : sd t5, 664(ra) -- Store: [0x800036a8]:0x00000200FFFF7FFF




Last Coverpoint : ['rs2_w1_val == 16384']
Last Code Sequence : 
	-[0x80000fe4]:KMAXDA32 t6, t5, t4
	-[0x80000fe8]:sd t6, 672(ra)
Current Store : [0x80000fec] : sd t5, 680(ra) -- Store: [0x800036b8]:0xFFDFFFFF00000200




Last Coverpoint : ['rs2_w1_val == 8192', 'rs1_w1_val == 2048']
Last Code Sequence : 
	-[0x80001018]:KMAXDA32 t6, t5, t4
	-[0x8000101c]:sd t6, 688(ra)
Current Store : [0x80001020] : sd t5, 696(ra) -- Store: [0x800036c8]:0x0000080055555555




Last Coverpoint : ['rs2_w1_val == 4096']
Last Code Sequence : 
	-[0x80001044]:KMAXDA32 t6, t5, t4
	-[0x80001048]:sd t6, 704(ra)
Current Store : [0x8000104c] : sd t5, 712(ra) -- Store: [0x800036d8]:0x3FFFFFFF00004000




Last Coverpoint : ['rs2_w1_val == 512', 'rs2_w0_val == 4']
Last Code Sequence : 
	-[0x80001068]:KMAXDA32 t6, t5, t4
	-[0x8000106c]:sd t6, 720(ra)
Current Store : [0x80001070] : sd t5, 728(ra) -- Store: [0x800036e8]:0xFFFFFBFF00000005




Last Coverpoint : ['rs2_w1_val == 256', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x8000108c]:KMAXDA32 t6, t5, t4
	-[0x80001090]:sd t6, 736(ra)
Current Store : [0x80001094] : sd t5, 744(ra) -- Store: [0x800036f8]:0xFFFFBFFFFFFFFDFF




Last Coverpoint : ['rs2_w1_val == 128', 'rs1_w1_val == 268435456']
Last Code Sequence : 
	-[0x800010bc]:KMAXDA32 t6, t5, t4
	-[0x800010c0]:sd t6, 752(ra)
Current Store : [0x800010c4] : sd t5, 760(ra) -- Store: [0x80003708]:0x10000000FFFDFFFF




Last Coverpoint : ['rs2_w1_val == 64', 'rs1_w1_val == 33554432']
Last Code Sequence : 
	-[0x800010e4]:KMAXDA32 t6, t5, t4
	-[0x800010e8]:sd t6, 768(ra)
Current Store : [0x800010ec] : sd t5, 776(ra) -- Store: [0x80003718]:0x0200000000800000




Last Coverpoint : ['rs2_w1_val == 16', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80001108]:KMAXDA32 t6, t5, t4
	-[0x8000110c]:sd t6, 784(ra)
Current Store : [0x80001110] : sd t5, 792(ra) -- Store: [0x80003728]:0x0200000020000000




Last Coverpoint : ['rs2_w1_val == 8', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x8000112c]:KMAXDA32 t6, t5, t4
	-[0x80001130]:sd t6, 800(ra)
Current Store : [0x80001134] : sd t5, 808(ra) -- Store: [0x80003738]:0x00000001F7FFFFFF




Last Coverpoint : ['rs2_w1_val == 2', 'rs2_w0_val == 8']
Last Code Sequence : 
	-[0x80001154]:KMAXDA32 t6, t5, t4
	-[0x80001158]:sd t6, 816(ra)
Current Store : [0x8000115c] : sd t5, 824(ra) -- Store: [0x80003748]:0x80000000FFFFFFF8




Last Coverpoint : ['rs2_w0_val == 262144', 'rs1_w1_val == -17']
Last Code Sequence : 
	-[0x80001184]:KMAXDA32 t6, t5, t4
	-[0x80001188]:sd t6, 832(ra)
Current Store : [0x8000118c] : sd t5, 840(ra) -- Store: [0x80003758]:0xFFFFFFEF55555555




Last Coverpoint : ['rs2_w0_val == 16384']
Last Code Sequence : 
	-[0x800011b0]:KMAXDA32 t6, t5, t4
	-[0x800011b4]:sd t6, 848(ra)
Current Store : [0x800011b8] : sd t5, 856(ra) -- Store: [0x80003768]:0xFEFFFFFF04000000




Last Coverpoint : ['rs2_w0_val == 8192', 'rs1_w1_val == 8192']
Last Code Sequence : 
	-[0x800011dc]:KMAXDA32 t6, t5, t4
	-[0x800011e0]:sd t6, 864(ra)
Current Store : [0x800011e4] : sd t5, 872(ra) -- Store: [0x80003778]:0x0000200000000009




Last Coverpoint : ['rs2_w0_val == 512', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x80001204]:KMAXDA32 t6, t5, t4
	-[0x80001208]:sd t6, 880(ra)
Current Store : [0x8000120c] : sd t5, 888(ra) -- Store: [0x80003788]:0xFFBFFFFFEFFFFFFF




Last Coverpoint : ['rs2_w0_val == 256']
Last Code Sequence : 
	-[0x80001234]:KMAXDA32 t6, t5, t4
	-[0x80001238]:sd t6, 896(ra)
Current Store : [0x8000123c] : sd t5, 904(ra) -- Store: [0x80003798]:0x08000000FFFF7FFF




Last Coverpoint : ['rs2_w0_val == 64']
Last Code Sequence : 
	-[0x80001258]:KMAXDA32 t6, t5, t4
	-[0x8000125c]:sd t6, 912(ra)
Current Store : [0x80001260] : sd t5, 920(ra) -- Store: [0x800037a8]:0xFFFFFFF700000040




Last Coverpoint : ['rs2_w0_val == 16']
Last Code Sequence : 
	-[0x80001280]:KMAXDA32 t6, t5, t4
	-[0x80001284]:sd t6, 928(ra)
Current Store : [0x80001288] : sd t5, 936(ra) -- Store: [0x800037b8]:0x00000007FFFFFDFF




Last Coverpoint : ['rs1_w1_val == 1431655765', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800012b0]:KMAXDA32 t6, t5, t4
	-[0x800012b4]:sd t6, 944(ra)
Current Store : [0x800012b8] : sd t5, 952(ra) -- Store: [0x800037c8]:0x5555555510000000




Last Coverpoint : ['rs1_w1_val == 2147483647']
Last Code Sequence : 
	-[0x800012d8]:KMAXDA32 t6, t5, t4
	-[0x800012dc]:sd t6, 960(ra)
Current Store : [0x800012e0] : sd t5, 968(ra) -- Store: [0x800037d8]:0x7FFFFFFF00000005




Last Coverpoint : ['rs1_w1_val == -268435457']
Last Code Sequence : 
	-[0x80001304]:KMAXDA32 t6, t5, t4
	-[0x80001308]:sd t6, 976(ra)
Current Store : [0x8000130c] : sd t5, 984(ra) -- Store: [0x800037e8]:0xEFFFFFFF08000000




Last Coverpoint : ['rs1_w1_val == -1048577']
Last Code Sequence : 
	-[0x80001330]:KMAXDA32 t6, t5, t4
	-[0x80001334]:sd t6, 992(ra)
Current Store : [0x80001338] : sd t5, 1000(ra) -- Store: [0x800037f8]:0xFFEFFFFF00080000




Last Coverpoint : ['rs2_w0_val == -1025', 'rs1_w1_val == -524289']
Last Code Sequence : 
	-[0x80001358]:KMAXDA32 t6, t5, t4
	-[0x8000135c]:sd t6, 1008(ra)
Current Store : [0x80001360] : sd t5, 1016(ra) -- Store: [0x80003808]:0xFFF7FFFFFFBFFFFF




Last Coverpoint : ['rs1_w1_val == -8193', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80001380]:KMAXDA32 t6, t5, t4
	-[0x80001384]:sd t6, 1024(ra)
Current Store : [0x80001388] : sd t5, 1032(ra) -- Store: [0x80003818]:0xFFFFDFFFBFFFFFFF




Last Coverpoint : ['rs1_w1_val == -65']
Last Code Sequence : 
	-[0x800013a4]:KMAXDA32 t6, t5, t4
	-[0x800013a8]:sd t6, 1040(ra)
Current Store : [0x800013ac] : sd t5, 1048(ra) -- Store: [0x80003828]:0xFFFFFFBFFFFFFBFF




Last Coverpoint : ['rs1_w1_val == -33']
Last Code Sequence : 
	-[0x800013cc]:KMAXDA32 t6, t5, t4
	-[0x800013d0]:sd t6, 1056(ra)
Current Store : [0x800013d4] : sd t5, 1064(ra) -- Store: [0x80003838]:0xFFFFFFDFFFFFFFDF




Last Coverpoint : ['rs1_w1_val == -2', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80001400]:KMAXDA32 t6, t5, t4
	-[0x80001404]:sd t6, 1072(ra)
Current Store : [0x80001408] : sd t5, 1080(ra) -- Store: [0x80003848]:0xFFFFFFFEFFFFBFFF




Last Coverpoint : ['rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x80001424]:KMAXDA32 t6, t5, t4
	-[0x80001428]:sd t6, 1088(ra)
Current Store : [0x8000142c] : sd t5, 1096(ra) -- Store: [0x80003858]:0x4000000000000010




Last Coverpoint : ['rs1_w1_val == 67108864']
Last Code Sequence : 
	-[0x80001448]:KMAXDA32 t6, t5, t4
	-[0x8000144c]:sd t6, 1104(ra)
Current Store : [0x80001450] : sd t5, 1112(ra) -- Store: [0x80003868]:0x0400000000000020




Last Coverpoint : ['rs1_w1_val == 8388608']
Last Code Sequence : 
	-[0x80001480]:KMAXDA32 t6, t5, t4
	-[0x80001484]:sd t6, 1120(ra)
Current Store : [0x80001488] : sd t5, 1128(ra) -- Store: [0x80003878]:0x00800000FFFFEFFF




Last Coverpoint : ['rs2_w0_val == 2097152', 'rs1_w1_val == 1048576']
Last Code Sequence : 
	-[0x800014b0]:KMAXDA32 t6, t5, t4
	-[0x800014b4]:sd t6, 1136(ra)
Current Store : [0x800014b8] : sd t5, 1144(ra) -- Store: [0x80003888]:0x00100000FFFBFFFF




Last Coverpoint : ['rs1_w1_val == 262144', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x800014e0]:KMAXDA32 t6, t5, t4
	-[0x800014e4]:sd t6, 1152(ra)
Current Store : [0x800014e8] : sd t5, 1160(ra) -- Store: [0x80003898]:0x00040000FFFFF7FF




Last Coverpoint : ['rs2_w1_val == 1']
Last Code Sequence : 
	-[0x8000150c]:KMAXDA32 t6, t5, t4
	-[0x80001510]:sd t6, 1168(ra)
Current Store : [0x80001514] : sd t5, 1176(ra) -- Store: [0x800038a8]:0xBFFFFFFFFDFFFFFF




Last Coverpoint : ['rs1_w1_val == 256']
Last Code Sequence : 
	-[0x80001534]:KMAXDA32 t6, t5, t4
	-[0x80001538]:sd t6, 1184(ra)
Current Store : [0x8000153c] : sd t5, 1192(ra) -- Store: [0x800038b8]:0x0000010000000003




Last Coverpoint : ['opcode : kmaxda32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 0', 'rs1_w1_val == -1431655766', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80001558]:KMAXDA32 t6, t5, t4
	-[0x8000155c]:sd t6, 1200(ra)
Current Store : [0x80001560] : sd t5, 1208(ra) -- Store: [0x800038c8]:0xAAAAAAAA00008000




Last Coverpoint : ['rs2_w0_val == -536870913', 'rs1_w1_val == 128']
Last Code Sequence : 
	-[0x8000157c]:KMAXDA32 t6, t5, t4
	-[0x80001580]:sd t6, 1216(ra)
Current Store : [0x80001584] : sd t5, 1224(ra) -- Store: [0x800038d8]:0x00000080C0000000




Last Coverpoint : ['rs2_w1_val == -1']
Last Code Sequence : 
	-[0x800015a4]:KMAXDA32 t6, t5, t4
	-[0x800015a8]:sd t6, 1232(ra)
Current Store : [0x800015ac] : sd t5, 1240(ra) -- Store: [0x800038e8]:0x3FFFFFFF00000100




Last Coverpoint : ['rs2_w0_val == 268435456', 'rs1_w1_val == 64']
Last Code Sequence : 
	-[0x800015c0]:KMAXDA32 t6, t5, t4
	-[0x800015c4]:sd t6, 1248(ra)
Current Store : [0x800015c8] : sd t5, 1256(ra) -- Store: [0x800038f8]:0x0000004010000000




Last Coverpoint : ['rs1_w1_val == 16']
Last Code Sequence : 
	-[0x800015e4]:KMAXDA32 t6, t5, t4
	-[0x800015e8]:sd t6, 1264(ra)
Current Store : [0x800015ec] : sd t5, 1272(ra) -- Store: [0x80003908]:0x0000001000000006




Last Coverpoint : ['opcode : kmaxda32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == 33554432', 'rs2_w0_val == 4194304', 'rs1_w1_val == 0', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x8000160c]:KMAXDA32 t6, t5, t4
	-[0x80001610]:sd t6, 1280(ra)
Current Store : [0x80001614] : sd t5, 1288(ra) -- Store: [0x80003918]:0x00000000FFFFFF7F




Last Coverpoint : ['rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80001634]:KMAXDA32 t6, t5, t4
	-[0x80001638]:sd t6, 1296(ra)
Current Store : [0x8000163c] : sd t5, 1304(ra) -- Store: [0x80003928]:0x00000003AAAAAAAA




Last Coverpoint : ['rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80001660]:KMAXDA32 t6, t5, t4
	-[0x80001664]:sd t6, 1312(ra)
Current Store : [0x80001668] : sd t5, 1320(ra) -- Store: [0x80003938]:0xFFFFDFFF7FFFFFFF




Last Coverpoint : ['rs2_w0_val == -4194305']
Last Code Sequence : 
	-[0x80001688]:KMAXDA32 t6, t5, t4
	-[0x8000168c]:sd t6, 1328(ra)
Current Store : [0x80001690] : sd t5, 1336(ra) -- Store: [0x80003948]:0xFFFFFFF900000040




Last Coverpoint : ['rs2_w1_val == -32769', 'rs2_w0_val == -524289']
Last Code Sequence : 
	-[0x800016b4]:KMAXDA32 t6, t5, t4
	-[0x800016b8]:sd t6, 1344(ra)
Current Store : [0x800016bc] : sd t5, 1352(ra) -- Store: [0x80003958]:0x00400000FFFFFFF7




Last Coverpoint : ['rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x800016e4]:KMAXDA32 t6, t5, t4
	-[0x800016e8]:sd t6, 1360(ra)
Current Store : [0x800016ec] : sd t5, 1368(ra) -- Store: [0x80003968]:0xBFFFFFFFFBFFFFFF




Last Coverpoint : ['rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x8000170c]:KMAXDA32 t6, t5, t4
	-[0x80001710]:sd t6, 1376(ra)
Current Store : [0x80001714] : sd t5, 1384(ra) -- Store: [0x80003978]:0xFFFFFFDFFF7FFFFF




Last Coverpoint : ['rs1_w0_val == -2147483648', 'rs2_w0_val == -8193']
Last Code Sequence : 
	-[0x8000173c]:KMAXDA32 t6, t5, t4
	-[0x80001740]:sd t6, 1392(ra)
Current Store : [0x80001744] : sd t5, 1400(ra) -- Store: [0x80003988]:0x8000000080000000




Last Coverpoint : ['rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80001770]:KMAXDA32 t6, t5, t4
	-[0x80001774]:sd t6, 1408(ra)
Current Store : [0x80001778] : sd t5, 1416(ra) -- Store: [0x80003998]:0x02000000FFEFFFFF




Last Coverpoint : ['rs2_w0_val == -2049']
Last Code Sequence : 
	-[0x8000179c]:KMAXDA32 t6, t5, t4
	-[0x800017a0]:sd t6, 1424(ra)
Current Store : [0x800017a4] : sd t5, 1432(ra) -- Store: [0x800039a8]:0xFFFFFBFFFFFFFFF9




Last Coverpoint : ['rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x800017c4]:KMAXDA32 t6, t5, t4
	-[0x800017c8]:sd t6, 1440(ra)
Current Store : [0x800017cc] : sd t5, 1448(ra) -- Store: [0x800039b8]:0x00000040FFF7FFFF




Last Coverpoint : ['rs2_w0_val == -129']
Last Code Sequence : 
	-[0x800017e8]:KMAXDA32 t6, t5, t4
	-[0x800017ec]:sd t6, 1456(ra)
Current Store : [0x800017f0] : sd t5, 1464(ra) -- Store: [0x800039c8]:0xFF7FFFFFFFFFFFBF




Last Coverpoint : ['rs2_w0_val == -33']
Last Code Sequence : 
	-[0x80001808]:KMAXDA32 t6, t5, t4
	-[0x8000180c]:sd t6, 1472(ra)
Current Store : [0x80001810] : sd t5, 1480(ra) -- Store: [0x800039d8]:0x0000000710000000




Last Coverpoint : ['rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80001838]:KMAXDA32 t6, t5, t4
	-[0x8000183c]:sd t6, 1488(ra)
Current Store : [0x80001840] : sd t5, 1496(ra) -- Store: [0x800039e8]:0x00100000FFFFDFFF




Last Coverpoint : ['rs2_w0_val == -9']
Last Code Sequence : 
	-[0x80001860]:KMAXDA32 t6, t5, t4
	-[0x80001864]:sd t6, 1504(ra)
Current Store : [0x80001868] : sd t5, 1512(ra) -- Store: [0x800039f8]:0xFFFFFFFAFFBFFFFF




Last Coverpoint : ['rs2_w0_val == -3']
Last Code Sequence : 
	-[0x80001884]:KMAXDA32 t6, t5, t4
	-[0x80001888]:sd t6, 1520(ra)
Current Store : [0x8000188c] : sd t5, 1528(ra) -- Store: [0x80003a08]:0xFFFFFF7F80000000




Last Coverpoint : ['rs2_w0_val == -2']
Last Code Sequence : 
	-[0x800018a8]:KMAXDA32 t6, t5, t4
	-[0x800018ac]:sd t6, 1536(ra)
Current Store : [0x800018b0] : sd t5, 1544(ra) -- Store: [0x80003a18]:0x0001000000400000




Last Coverpoint : ['rs2_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800018cc]:KMAXDA32 t6, t5, t4
	-[0x800018d0]:sd t6, 1552(ra)
Current Store : [0x800018d4] : sd t5, 1560(ra) -- Store: [0x80003a28]:0x00000001BFFFFFFF




Last Coverpoint : ['rs2_w0_val == 134217728']
Last Code Sequence : 
	-[0x800018ec]:KMAXDA32 t6, t5, t4
	-[0x800018f0]:sd t6, 1568(ra)
Current Store : [0x800018f4] : sd t5, 1576(ra) -- Store: [0x80003a38]:0xFFFFDFFF00400000




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x8000191c]:KMAXDA32 t6, t5, t4
	-[0x80001920]:sd t6, 1584(ra)
Current Store : [0x80001924] : sd t5, 1592(ra) -- Store: [0x80003a48]:0x00000800FFFFFFFE




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80001948]:KMAXDA32 t6, t5, t4
	-[0x8000194c]:sd t6, 1600(ra)
Current Store : [0x80001950] : sd t5, 1608(ra) -- Store: [0x80003a58]:0xAAAAAAAA40000000




Last Coverpoint : ['rs2_w0_val == 1048576']
Last Code Sequence : 
	-[0x80001974]:KMAXDA32 t6, t5, t4
	-[0x80001978]:sd t6, 1616(ra)
Current Store : [0x8000197c] : sd t5, 1624(ra) -- Store: [0x80003a68]:0x00000800FFFFFFFF




Last Coverpoint : ['rs2_w0_val == 524288']
Last Code Sequence : 
	-[0x80001994]:KMAXDA32 t6, t5, t4
	-[0x80001998]:sd t6, 1632(ra)
Current Store : [0x8000199c] : sd t5, 1640(ra) -- Store: [0x80003a78]:0xFFFFFFFFFFEFFFFF




Last Coverpoint : ['opcode : kmaxda32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == -2147483648', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w0_val == -262145', 'rs1_w1_val == -3']
Last Code Sequence : 
	-[0x800019b8]:KMAXDA32 t6, t5, t4
	-[0x800019bc]:sd t6, 1648(ra)
Current Store : [0x800019c0] : sd t5, 1656(ra) -- Store: [0x80003a88]:0xFFFFFFFD80000000




Last Coverpoint : ['rs1_w0_val == 128']
Last Code Sequence : 
	-[0x800019e0]:KMAXDA32 t6, t5, t4
	-[0x800019e4]:sd t6, 1664(ra)
Current Store : [0x800019e8] : sd t5, 1672(ra) -- Store: [0x80003a98]:0xFFFFFFFC00000080




Last Coverpoint : ['rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80001a0c]:KMAXDA32 t6, t5, t4
	-[0x80001a10]:sd t6, 1680(ra)
Current Store : [0x80001a14] : sd t5, 1688(ra) -- Store: [0x80003aa8]:0xC0000000FFDFFFFF




Last Coverpoint : ['opcode : kmaxda32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs2_w1_val == -32769', 'rs2_w0_val == 0', 'rs1_w1_val == -4097', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80001a34]:KMAXDA32 t6, t5, t4
	-[0x80001a38]:sd t6, 1696(ra)
Current Store : [0x80001a3c] : sd t5, 1704(ra) -- Store: [0x80003ab8]:0xFFFFEFFF00000008





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

|s.no|            signature             |                                                                                                                                            coverpoints                                                                                                                                            |                                 code                                  |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000000|- opcode : kmaxda32<br> - rs1 : x12<br> - rs2 : x12<br> - rd : x0<br> - rs1 == rs2 != rd<br> - rs1_w1_val == rs2_w1_val<br> - rs1_w1_val < 0 and rs2_w1_val < 0<br> - rs1_w0_val == rs2_w0_val<br> - rs1_w0_val < 0 and rs2_w0_val < 0<br> - rs2_w0_val == -262145<br> - rs1_w0_val == -262145<br> |[0x800003bc]:KMAXDA32 zero, a2, a2<br> [0x800003c0]:sd zero, 0(sp)<br> |
|   2|[0x80003220]<br>0xFFFFFFFBFFFFC800|- rs1 : x17<br> - rs2 : x17<br> - rd : x17<br> - rs1 == rs2 == rd<br> - rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w0_val == 2048<br> - rs1_w0_val == 2048<br>                                                                                                                                    |[0x800003e4]:KMAXDA32 a7, a7, a7<br> [0x800003e8]:sd a7, 16(sp)<br>    |
|   3|[0x80003230]<br>0x0000000000000200|- rs1 : x0<br> - rs2 : x8<br> - rd : x10<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w1_val != rs2_w1_val<br> - rs1_w0_val != rs2_w0_val<br> - rs2_w0_val == -67108865<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                                                 |[0x80000410]:KMAXDA32 a0, zero, fp<br> [0x80000414]:sd a0, 32(sp)<br>  |
|   4|[0x80003240]<br>0x0000001100000046|- rs1 : x25<br> - rs2 : x7<br> - rd : x25<br> - rs1 == rd != rs2<br> - rs1_w1_val > 0 and rs2_w1_val < 0<br> - rs2_w0_val == -2147483648<br> - rs1_w1_val == 32<br>                                                                                                                                |[0x80000430]:KMAXDA32 s9, s9, t2<br> [0x80000434]:sd s9, 48(sp)<br>    |
|   5|[0x80003250]<br>0x000000200001F800|- rs1 : x16<br> - rs2 : x26<br> - rd : x26<br> - rs2 == rd != rs1<br> - rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs1_w0_val < 0 and rs2_w0_val > 0<br> - rs2_w1_val == 32<br> - rs2_w0_val == 32<br> - rs1_w1_val == 4096<br> - rs1_w0_val == -65<br>                                               |[0x80000458]:KMAXDA32 s10, a6, s10<br> [0x8000045c]:sd s10, 64(sp)<br> |
|   6|[0x80003260]<br>0x000000F88100FB91|- rs1 : x26<br> - rs2 : x20<br> - rd : x5<br> - rs1_w1_val < 0 and rs2_w1_val > 0<br> - rs2_w1_val == 2048<br> - rs2_w0_val == -16777217<br> - rs1_w1_val == -65537<br> - rs1_w0_val == -16777217<br>                                                                                              |[0x80000484]:KMAXDA32 t0, s10, s4<br> [0x80000488]:sd t0, 80(sp)<br>   |
|   7|[0x80003270]<br>0xFBB2FAB80FB6FAC1|- rs1 : x21<br> - rs2 : x13<br> - rd : x31<br> - rs1_w0_val > 0 and rs2_w0_val < 0<br> - rs2_w1_val == -2147483648<br> - rs1_w1_val == -33554433<br> - rs1_w0_val == 524288<br>                                                                                                                    |[0x800004b4]:KMAXDA32 t6, s5, a3<br> [0x800004b8]:sd t6, 96(sp)<br>    |
|   8|[0x80003280]<br>0xDB7DB15386289D53|- rs1 : x4<br> - rs2 : x3<br> - rd : x24<br> - rs2_w1_val == -1431655766<br> - rs2_w0_val == -5<br> - rs1_w1_val == 1024<br> - rs1_w0_val == -65537<br>                                                                                                                                            |[0x800004e0]:KMAXDA32 s8, tp, gp<br> [0x800004e4]:sd s8, 112(sp)<br>   |
|   9|[0x80003290]<br>0x14431402A9986950|- rs1 : x13<br> - rs2 : x31<br> - rd : x1<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == -134217729<br> - rs1_w1_val == 8<br>                                                                                                                                                                  |[0x80000510]:KMAXDA32 ra, a3, t6<br> [0x80000514]:sd ra, 128(sp)<br>   |
|  10|[0x800032a0]<br>0x6DF56FF76E777038|- rs1 : x8<br> - rs2 : x21<br> - rd : x22<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == -65<br> - rs1_w1_val == -131073<br>                                                                                                                                                                   |[0x80000534]:KMAXDA32 s6, fp, s5<br> [0x80000538]:sd s6, 144(sp)<br>   |
|  11|[0x800032b0]<br>0xDDB7D5BBDDB7D5A7|- rs1 : x24<br> - rs2 : x22<br> - rd : x28<br> - rs2_w1_val == -1073741825<br> - rs2_w0_val == 2<br> - rs1_w0_val == 16<br>                                                                                                                                                                        |[0x8000055c]:KMAXDA32 t3, s8, s6<br> [0x80000560]:sd t3, 160(sp)<br>   |
|  12|[0x800032c0]<br>0xB6FAA87BD6F2BBFC|- rs1 : x11<br> - rs2 : x14<br> - rd : x23<br> - rs2_w1_val == -536870913<br> - rs2_w0_val == -33554433<br> - rs1_w1_val == 524288<br> - rs1_w0_val == -1025<br>                                                                                                                                   |[0x8000058c]:KMAXDA32 s7, a1, a4<br> [0x80000590]:sd s7, 176(sp)<br>   |
|  13|[0x800032d0]<br>0xEEDC0ADF54334034|- rs1 : x5<br> - rs2 : x15<br> - rd : x29<br> - rs2_w1_val == -268435457<br> - rs2_w0_val == -1431655766<br> - rs1_w1_val == 2<br> - rs1_w0_val == -131073<br>                                                                                                                                     |[0x800005c4]:KMAXDA32 t4, t0, a5<br> [0x800005c8]:sd t4, 192(sp)<br>   |
|  14|[0x800032e0]<br>0xFFFFFFE087FFF101|- rs1 : x15<br> - rs2 : x29<br> - rd : x7<br> - rs2_w1_val == -134217729<br> - rs2_w0_val == 4096<br> - rs1_w0_val == -257<br>                                                                                                                                                                     |[0x800005f0]:KMAXDA32 t2, a5, t4<br> [0x800005f4]:sd t2, 208(sp)<br>   |
|  15|[0x800032f0]<br>0x0007FEFEFEFFBBFF|- rs1 : x28<br> - rs2 : x16<br> - rd : x11<br> - rs2_w1_val == -67108865<br> - rs2_w0_val == -513<br> - rs1_w1_val == 16777216<br> - rs1_w0_val == 16384<br>                                                                                                                                       |[0x80000618]:KMAXDA32 a1, t3, a6<br> [0x8000061c]:sd a1, 224(sp)<br>   |
|  16|[0x80003300]<br>0xFC00000311FFFE08|- rs1 : x1<br> - rs2 : x23<br> - rd : x16<br> - rs2_w1_val == -33554433<br> - rs1_w1_val == -2147483648<br> - rs1_w0_val == -9<br>                                                                                                                                                                 |[0x80000640]:KMAXDA32 a6, ra, s7<br> [0x80000644]:sd a6, 240(sp)<br>   |
|  17|[0x80003310]<br>0xBB6FAB7FDC6FAB1E|- rs1 : x20<br> - rs2 : x1<br> - rd : x27<br> - rs2_w1_val == -16777217<br> - rs1_w0_val == -33<br>                                                                                                                                                                                                |[0x80000664]:KMAXDA32 s11, s4, ra<br> [0x80000668]:sd s11, 256(sp)<br> |
|  18|[0x80003320]<br>0x0000042140FF4081|- rs1 : x14<br> - rs2 : x18<br> - rd : x4<br> - rs2_w1_val == -8388609<br> - rs2_w0_val == -8388609<br> - rs1_w1_val == -16385<br> - rs1_w0_val == -129<br>                                                                                                                                        |[0x80000690]:KMAXDA32 tp, a4, s2<br> [0x80000694]:sd tp, 272(sp)<br>   |
|  19|[0x80003330]<br>0xAAAABAAB007FFFEA|- rs1 : x27<br> - rs2 : x9<br> - rd : x3<br> - rs2_w1_val == -4194305<br> - rs1_w0_val == -4194305<br>                                                                                                                                                                                             |[0x800006bc]:KMAXDA32 gp, s11, s1<br> [0x800006c0]:sd gp, 288(sp)<br>  |
|  20|[0x80003340]<br>0x7FFFFFFFFFFFFFFF|- rs1 : x3<br> - rs2 : x5<br> - rd : x21<br> - rs2_w1_val == -2097153<br> - rs2_w0_val == 2147483647<br> - rs1_w1_val == 1<br>                                                                                                                                                                     |[0x800006ec]:KMAXDA32 s5, gp, t0<br> [0x800006f0]:sd s5, 0(ra)<br>     |
|  21|[0x80003350]<br>0xFFBFFFFF002DFF86|- rs1 : x7<br> - rs2 : x2<br> - rd : x9<br> - rs2_w1_val == -1048577<br> - rs2_w0_val == 128<br> - rs1_w1_val == -1025<br> - rs1_w0_val == -3<br>                                                                                                                                                  |[0x80000714]:KMAXDA32 s1, t2, sp<br> [0x80000718]:sd s1, 16(ra)<br>    |
|  22|[0x80003360]<br>0xFFEFBFFE77000080|- rs1 : x18<br> - rs2 : x27<br> - rd : x2<br> - rs2_w1_val == -524289<br> - rs2_w0_val == 16777216<br> - rs1_w1_val == -129<br> - rs1_w0_val == 134217728<br>                                                                                                                                      |[0x80000738]:KMAXDA32 sp, s2, s11<br> [0x8000073c]:sd sp, 32(ra)<br>   |
|  23|[0x80003370]<br>0xFFFFFFF90614000B|- rs1 : x29<br> - rs2 : x10<br> - rd : x12<br> - rs2_w1_val == -262145<br> - rs1_w1_val == -16777217<br>                                                                                                                                                                                           |[0x8000075c]:KMAXDA32 a2, t4, a0<br> [0x80000760]:sd a2, 48(ra)<br>    |
|  24|[0x80003380]<br>0xFFFDFFFCFFBFFFE2|- rs1 : x6<br> - rs2 : x28<br> - rd : x8<br> - rs2_w1_val == -131073<br> - rs2_w0_val == 1431655765<br> - rs1_w0_val == 32<br>                                                                                                                                                                     |[0x8000078c]:KMAXDA32 fp, t1, t3<br> [0x80000790]:sd fp, 64(ra)<br>    |
|  25|[0x80003390]<br>0xFE00000101C1FF00|- rs1 : x9<br> - rs2 : x19<br> - rd : x15<br> - rs2_w1_val == -65537<br> - rs2_w0_val == 4194304<br>                                                                                                                                                                                               |[0x800007b4]:KMAXDA32 a5, s1, s3<br> [0x800007b8]:sd a5, 80(ra)<br>    |
|  26|[0x800033a0]<br>0xFFFFFFFA00000020|- rs1 : x2<br> - rs2 : x0<br> - rd : x6<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == -4097<br> - rs1_w0_val == 8<br>                                                                                                                                                            |[0x800007dc]:KMAXDA32 t1, sp, zero<br> [0x800007e0]:sd t1, 96(ra)<br>  |
|  27|[0x800033b0]<br>0x0000001300408FE0|- rs1 : x10<br> - rs2 : x30<br> - rd : x20<br> - rs2_w1_val == -16385<br>                                                                                                                                                                                                                          |[0x80000808]:KMAXDA32 s4, a0, t5<br> [0x8000080c]:sd s4, 112(ra)<br>   |
|  28|[0x800033c0]<br>0xFFFFC40020000F60|- rs1 : x19<br> - rs2 : x4<br> - rd : x14<br> - rs2_w1_val == -8193<br> - rs1_w0_val == -536870913<br>                                                                                                                                                                                             |[0x80000830]:KMAXDA32 a4, s3, tp<br> [0x80000834]:sd a4, 128(ra)<br>   |
|  29|[0x800033d0]<br>0x000000083FFF700A|- rs1 : x31<br> - rs2 : x25<br> - rd : x13<br> - rs2_w1_val == -4097<br> - rs1_w1_val == -5<br>                                                                                                                                                                                                    |[0x80000854]:KMAXDA32 a3, t6, s9<br> [0x80000858]:sd a3, 144(ra)<br>   |
|  30|[0x800033e0]<br>0x0000037EC7F80000|- rs1 : x30<br> - rs2 : x11<br> - rd : x18<br> - rs2_w1_val == -2049<br> - rs2_w0_val == 8388608<br>                                                                                                                                                                                               |[0x8000087c]:KMAXDA32 s2, t5, a1<br> [0x80000880]:sd s2, 160(ra)<br>   |
|  31|[0x800033f0]<br>0xFFFFFF7FF0021C05|- rs1 : x22<br> - rs2 : x24<br> - rd : x19<br> - rs2_w1_val == -1025<br> - rs2_w0_val == -131073<br> - rs1_w1_val == -2049<br> - rs1_w0_val == -5<br>                                                                                                                                              |[0x800008a4]:KMAXDA32 s3, s6, s8<br> [0x800008a8]:sd s3, 176(ra)<br>   |
|  32|[0x80003400]<br>0x0027FFF83C880001|- rs1 : x23<br> - rs2 : x6<br> - rd : x30<br> - rs2_w1_val == -513<br> - rs1_w1_val == -1073741825<br> - rs1_w0_val == 67108864<br>                                                                                                                                                                |[0x800008d0]:KMAXDA32 t5, s7, t1<br> [0x800008d4]:sd t5, 192(ra)<br>   |
|  33|[0x80003410]<br>0xFFFFFFFB00000389|- rs2_w1_val == -257<br>                                                                                                                                                                                                                                                                           |[0x800008fc]:KMAXDA32 t6, t5, t4<br> [0x80000900]:sd t6, 0(ra)<br>     |
|  34|[0x80003420]<br>0xFFFFFFF8F4000387|- rs2_w1_val == -129<br> - rs1_w1_val == -67108865<br>                                                                                                                                                                                                                                             |[0x80000924]:KMAXDA32 t6, t5, t4<br> [0x80000928]:sd t6, 16(ra)<br>    |
|  35|[0x80003430]<br>0x0000004934410388|- rs2_w1_val == -65<br> - rs2_w0_val == -65537<br> - rs1_w1_val == -4194305<br>                                                                                                                                                                                                                    |[0x8000094c]:KMAXDA32 t6, t5, t4<br> [0x80000950]:sd t6, 32(ra)<br>    |
|  36|[0x80003440]<br>0x0000004F944103B2|- rs2_w1_val == -33<br> - rs2_w0_val == -1073741825<br> - rs1_w1_val == -9<br>                                                                                                                                                                                                                     |[0x80000970]:KMAXDA32 t6, t5, t4<br> [0x80000974]:sd t6, 48(ra)<br>    |
|  37|[0x80003450]<br>0xF800004F7440BFB3|- rs2_w1_val == -17<br> - rs1_w1_val == -536870913<br> - rs1_w0_val == 1024<br>                                                                                                                                                                                                                    |[0x80000998]:KMAXDA32 t6, t5, t4<br> [0x8000099c]:sd t6, 64(ra)<br>    |
|  38|[0x80003460]<br>0xF800004FF545403D|- rs2_w1_val == -9<br> - rs1_w0_val == -32769<br>                                                                                                                                                                                                                                                  |[0x800009c4]:KMAXDA32 t6, t5, t4<br> [0x800009c8]:sd t6, 80(ra)<br>    |
|  39|[0x80003470]<br>0xF800004FFD454186|- rs2_w1_val == -5<br>                                                                                                                                                                                                                                                                             |[0x800009e8]:KMAXDA32 t6, t5, t4<br> [0x800009ec]:sd t6, 96(ra)<br>    |
|  40|[0x80003480]<br>0xF800004FE1454189|- rs2_w1_val == -3<br> - rs2_w0_val == 67108864<br> - rs1_w0_val == -1<br>                                                                                                                                                                                                                         |[0x80000a08]:KMAXDA32 t6, t5, t4<br> [0x80000a0c]:sd t6, 112(ra)<br>   |
|  41|[0x80003490]<br>0xF7FF804FE1254179|- rs2_w1_val == -2<br> - rs1_w1_val == 2097152<br>                                                                                                                                                                                                                                                 |[0x80000a2c]:KMAXDA32 t6, t5, t4<br> [0x80000a30]:sd t6, 128(ra)<br>   |
|  42|[0x800034a0]<br>0xF77F804F9FA54179|- rs2_w1_val == 1073741824<br> - rs1_w1_val == -3<br> - rs1_w0_val == -33554433<br>                                                                                                                                                                                                                |[0x80000a54]:KMAXDA32 t6, t5, t4<br> [0x80000a58]:sd t6, 144(ra)<br>   |
|  43|[0x800034b0]<br>0xF77F7E8F8FA5457A|- rs2_w1_val == 536870912<br> - rs2_w0_val == -268435457<br> - rs1_w0_val == -4097<br>                                                                                                                                                                                                             |[0x80000a84]:KMAXDA32 t6, t5, t4<br> [0x80000a88]:sd t6, 160(ra)<br>   |
|  44|[0x800034c0]<br>0xF77F7F8D8EA5457A|- rs2_w1_val == 268435456<br> - rs1_w1_val == -513<br> - rs1_w0_val == 4096<br>                                                                                                                                                                                                                    |[0x80000aac]:KMAXDA32 t6, t5, t4<br> [0x80000ab0]:sd t6, 176(ra)<br>   |
|  45|[0x800034d0]<br>0xF7837F8D8EA5017A|- rs2_w1_val == 134217728<br> - rs2_w0_val == -17<br> - rs1_w0_val == 8388608<br>                                                                                                                                                                                                                  |[0x80000ad4]:KMAXDA32 t6, t5, t4<br> [0x80000ad8]:sd t6, 192(ra)<br>   |
|  46|[0x800034e0]<br>0xF7837F8D4AA78184|- rs2_w1_val == 67108864<br> - rs1_w0_val == -17<br>                                                                                                                                                                                                                                               |[0x80000afc]:KMAXDA32 t6, t5, t4<br> [0x80000b00]:sd t6, 208(ra)<br>   |
|  47|[0x800034f0]<br>0xF7837F954AA78205|- rs2_w1_val == 33554432<br> - rs2_w0_val == -1<br>                                                                                                                                                                                                                                                |[0x80000b24]:KMAXDA32 t6, t5, t4<br> [0x80000b28]:sd t6, 224(ra)<br>   |
|  48|[0x80003500]<br>0xF7837B9569A78205|- rs2_w1_val == 16777216<br> - rs2_w0_val == 1<br> - rs1_w1_val == 536870912<br>                                                                                                                                                                                                                   |[0x80000b54]:KMAXDA32 t6, t5, t4<br> [0x80000b58]:sd t6, 240(ra)<br>   |
|  49|[0x80003510]<br>0xF7837D9564D78206|- rs2_w1_val == 8388608<br> - rs2_w0_val == -1048577<br> - rs1_w1_val == -2097153<br>                                                                                                                                                                                                              |[0x80000b84]:KMAXDA32 t6, t5, t4<br> [0x80000b88]:sd t6, 256(ra)<br>   |
|  50|[0x80003520]<br>0xF7837D996CD78206|- rs2_w1_val == 4194304<br> - rs1_w1_val == 32768<br>                                                                                                                                                                                                                                              |[0x80000bb0]:KMAXDA32 t6, t5, t4<br> [0x80000bb4]:sd t6, 272(ra)<br>   |
|  51|[0x80003530]<br>0xF7837C9964B68206|- rs2_w1_val == 2097152<br> - rs2_w0_val == 65536<br>                                                                                                                                                                                                                                              |[0x80000bd8]:KMAXDA32 t6, t5, t4<br> [0x80000bdc]:sd t6, 288(ra)<br>   |
|  52|[0x80003540]<br>0xF7837C5962A48206|- rs2_w1_val == 1048576<br> - rs2_w0_val == -257<br> - rs1_w1_val == 131072<br>                                                                                                                                                                                                                    |[0x80000c0c]:KMAXDA32 t6, t5, t4<br> [0x80000c10]:sd t6, 304(ra)<br>   |
|  53|[0x80003550]<br>0xF5837C595AE48206|- rs2_w1_val == 524288<br> - rs1_w1_val == 134217728<br>                                                                                                                                                                                                                                           |[0x80000c34]:KMAXDA32 t6, t5, t4<br> [0x80000c38]:sd t6, 320(ra)<br>   |
|  54|[0x80003560]<br>0xF58784595CE88207|- rs1_w1_val == -262145<br> - rs1_w0_val == 33554432<br>                                                                                                                                                                                                                                           |[0x80000c60]:KMAXDA32 t6, t5, t4<br> [0x80000c64]:sd t6, 336(ra)<br>   |
|  55|[0x80003570]<br>0xF59784595CC80207|- rs1_w0_val == 16777216<br>                                                                                                                                                                                                                                                                       |[0x80000c88]:KMAXDA32 t6, t5, t4<br> [0x80000c8c]:sd t6, 352(ra)<br>   |
|  56|[0x80003580]<br>0xF59783040332AA07|- rs2_w0_val == 1024<br> - rs1_w1_val == -1431655766<br> - rs1_w0_val == 4194304<br>                                                                                                                                                                                                               |[0x80000cb4]:KMAXDA32 t6, t5, t4<br> [0x80000cb8]:sd t6, 368(ra)<br>   |
|  57|[0x80003590]<br>0xF58F834403B32A08|- rs2_w0_val == -32769<br> - rs1_w1_val == -8388609<br> - rs1_w0_val == 2097152<br>                                                                                                                                                                                                                |[0x80000ce8]:KMAXDA32 t6, t5, t4<br> [0x80000cec]:sd t6, 384(ra)<br>   |
|  58|[0x800035a0]<br>0xF58F81C405A36A09|- rs1_w0_val == 1048576<br>                                                                                                                                                                                                                                                                        |[0x80000d10]:KMAXDA32 t6, t5, t4<br> [0x80000d14]:sd t6, 400(ra)<br>   |
|  59|[0x800035b0]<br>0xF58F81C415B36A0A|- rs2_w1_val == 4<br> - rs1_w1_val == -1<br> - rs1_w0_val == 262144<br>                                                                                                                                                                                                                            |[0x80000d34]:KMAXDA32 t6, t5, t4<br> [0x80000d38]:sd t6, 416(ra)<br>   |
|  60|[0x800035c0]<br>0xF58F81C435922A0B|- rs2_w0_val == -16385<br> - rs1_w1_val == -32769<br> - rs1_w0_val == 131072<br>                                                                                                                                                                                                                   |[0x80000d5c]:KMAXDA32 t6, t5, t4<br> [0x80000d60]:sd t6, 432(ra)<br>   |
|  61|[0x800035d0]<br>0xF58D81A435512A0B|- rs1_w1_val == -134217729<br> - rs1_w0_val == 65536<br>                                                                                                                                                                                                                                           |[0x80000d8c]:KMAXDA32 t6, t5, t4<br> [0x80000d90]:sd t6, 448(ra)<br>   |
|  62|[0x800035e0]<br>0xF58D81A4355D2A12|- rs1_w0_val == 32768<br>                                                                                                                                                                                                                                                                          |[0x80000db8]:KMAXDA32 t6, t5, t4<br> [0x80000dbc]:sd t6, 464(ra)<br>   |
|  63|[0x800035f0]<br>0xF58D81A4335BEA12|- rs2_w0_val == 131072<br> - rs1_w1_val == -257<br> - rs1_w0_val == 8192<br>                                                                                                                                                                                                                       |[0x80000ddc]:KMAXDA32 t6, t5, t4<br> [0x80000de0]:sd t6, 480(ra)<br>   |
|  64|[0x80003600]<br>0xF58D81A4375C0212|- rs1_w1_val == 65536<br>                                                                                                                                                                                                                                                                          |[0x80000e08]:KMAXDA32 t6, t5, t4<br> [0x80000e0c]:sd t6, 496(ra)<br>   |
|  65|[0x80003610]<br>0xF58D81A437642212|- rs2_w1_val == 1024<br> - rs1_w0_val == 512<br>                                                                                                                                                                                                                                                   |[0x80000e2c]:KMAXDA32 t6, t5, t4<br> [0x80000e30]:sd t6, 512(ra)<br>   |
|  66|[0x80003620]<br>0xF58D81A837843213|- rs2_w0_val == -2097153<br> - rs1_w0_val == 256<br>                                                                                                                                                                                                                                               |[0x80000e5c]:KMAXDA32 t6, t5, t4<br> [0x80000e60]:sd t6, 528(ra)<br>   |
|  67|[0x80003630]<br>0xF58D81C8378429D3|- rs1_w0_val == 64<br>                                                                                                                                                                                                                                                                             |[0x80000e80]:KMAXDA32 t6, t5, t4<br> [0x80000e84]:sd t6, 544(ra)<br>   |
|  68|[0x80003640]<br>0xF58D81C83583E9CB|- rs2_w0_val == -4097<br> - rs1_w1_val == 4<br> - rs1_w0_val == 4<br>                                                                                                                                                                                                                              |[0x80000eac]:KMAXDA32 t6, t5, t4<br> [0x80000eb0]:sd t6, 560(ra)<br>   |
|  69|[0x80003650]<br>0xF58D81C8359669CB|- rs2_w0_val == 32768<br> - rs1_w0_val == 2<br>                                                                                                                                                                                                                                                    |[0x80000ed4]:KMAXDA32 t6, t5, t4<br> [0x80000ed8]:sd t6, 576(ra)<br>   |
|  70|[0x80003660]<br>0xF5782C72C01669CA|- rs1_w1_val == 4194304<br> - rs1_w0_val == 1<br>                                                                                                                                                                                                                                                  |[0x80000f08]:KMAXDA32 t6, t5, t4<br> [0x80000f0c]:sd t6, 592(ra)<br>   |
|  71|[0x80003670]<br>0xF5782D72C02E69CA|- rs2_w1_val == 262144<br> - rs2_w0_val == 33554432<br>                                                                                                                                                                                                                                            |[0x80000f2c]:KMAXDA32 t6, t5, t4<br> [0x80000f30]:sd t6, 608(ra)<br>   |
|  72|[0x80003680]<br>0xF578ED7315833F20|- rs2_w1_val == 131072<br> - rs1_w0_val == 1431655765<br>                                                                                                                                                                                                                                          |[0x80000f70]:KMAXDA32 t6, t5, t4<br> [0x80000f74]:sd t6, 624(ra)<br>   |
|  73|[0x80003690]<br>0xF578EE3315833F20|- rs2_w1_val == 65536<br> - rs1_w1_val == 16384<br>                                                                                                                                                                                                                                                |[0x80000f94]:KMAXDA32 t6, t5, t4<br> [0x80000f98]:sd t6, 640(ra)<br>   |
|  74|[0x800036a0]<br>0xF578EE72D582BF20|- rs2_w1_val == 32768<br> - rs2_w0_val == 536870912<br> - rs1_w1_val == 512<br>                                                                                                                                                                                                                    |[0x80000fbc]:KMAXDA32 t6, t5, t4<br> [0x80000fc0]:sd t6, 656(ra)<br>   |
|  75|[0x800036b0]<br>0xF578EE72D4E2BF17|- rs2_w1_val == 16384<br>                                                                                                                                                                                                                                                                          |[0x80000fe4]:KMAXDA32 t6, t5, t4<br> [0x80000fe8]:sd t6, 672(ra)<br>   |
|  76|[0x800036c0]<br>0xF578F9157F8D5717|- rs2_w1_val == 8192<br> - rs1_w1_val == 2048<br>                                                                                                                                                                                                                                                  |[0x80001018]:KMAXDA32 t6, t5, t4<br> [0x8000101c]:sd t6, 688(ra)<br>   |
|  77|[0x800036d0]<br>0xE578F915C38D5717|- rs2_w1_val == 4096<br>                                                                                                                                                                                                                                                                           |[0x80001044]:KMAXDA32 t6, t5, t4<br> [0x80001048]:sd t6, 704(ra)<br>   |
|  78|[0x800036e0]<br>0xE578F915C38D5113|- rs2_w1_val == 512<br> - rs2_w0_val == 4<br>                                                                                                                                                                                                                                                      |[0x80001068]:KMAXDA32 t6, t5, t4<br> [0x8000106c]:sd t6, 720(ra)<br>   |
|  79|[0x800036f0]<br>0xE578F915C3CB9114|- rs2_w1_val == 256<br> - rs1_w0_val == -513<br>                                                                                                                                                                                                                                                   |[0x8000108c]:KMAXDA32 t6, t5, t4<br> [0x80001090]:sd t6, 736(ra)<br>   |
|  80|[0x80003700]<br>0xE978F915B2CB9094|- rs2_w1_val == 128<br> - rs1_w1_val == 268435456<br>                                                                                                                                                                                                                                              |[0x800010bc]:KMAXDA32 t6, t5, t4<br> [0x800010c0]:sd t6, 752(ra)<br>   |
|  81|[0x80003710]<br>0xE978F935D2CB9094|- rs2_w1_val == 64<br> - rs1_w1_val == 33554432<br>                                                                                                                                                                                                                                                |[0x800010e4]:KMAXDA32 t6, t5, t4<br> [0x800010e8]:sd t6, 768(ra)<br>   |
|  82|[0x80003720]<br>0xE978F93750CB9094|- rs2_w1_val == 16<br> - rs1_w0_val == 536870912<br>                                                                                                                                                                                                                                               |[0x80001108]:KMAXDA32 t6, t5, t4<br> [0x8000110c]:sd t6, 784(ra)<br>   |
|  83|[0x80003730]<br>0xE978F93710CB9085|- rs2_w1_val == 8<br> - rs1_w0_val == -134217729<br>                                                                                                                                                                                                                                               |[0x8000112c]:KMAXDA32 t6, t5, t4<br> [0x80001130]:sd t6, 800(ra)<br>   |
|  84|[0x80003740]<br>0xE978F93310CB9075|- rs2_w1_val == 2<br> - rs2_w0_val == 8<br>                                                                                                                                                                                                                                                        |[0x80001154]:KMAXDA32 t6, t5, t4<br> [0x80001158]:sd t6, 816(ra)<br>   |
|  85|[0x80003750]<br>0x05EAC04F496B1EAE|- rs2_w0_val == 262144<br> - rs1_w1_val == -17<br>                                                                                                                                                                                                                                                 |[0x80001184]:KMAXDA32 t6, t5, t4<br> [0x80001188]:sd t6, 832(ra)<br>   |
|  86|[0x80003760]<br>0x04956AB9F16ADEAE|- rs2_w0_val == 16384<br>                                                                                                                                                                                                                                                                          |[0x800011b0]:KMAXDA32 t6, t5, t4<br> [0x800011b4]:sd t6, 848(ra)<br>   |
|  87|[0x80003770]<br>0x04956AB9F32ADEA5|- rs2_w0_val == 8192<br> - rs1_w1_val == 8192<br>                                                                                                                                                                                                                                                  |[0x800011dc]:KMAXDA32 t6, t5, t4<br> [0x800011e0]:sd t6, 864(ra)<br>   |
|  88|[0x80003780]<br>0x04916AB972EADCA5|- rs2_w0_val == 512<br> - rs1_w0_val == -268435457<br>                                                                                                                                                                                                                                             |[0x80001204]:KMAXDA32 t6, t5, t4<br> [0x80001208]:sd t6, 880(ra)<br>   |
|  89|[0x80003790]<br>0x04916AC172EC5CA8|- rs2_w0_val == 256<br>                                                                                                                                                                                                                                                                            |[0x80001234]:KMAXDA32 t6, t5, t4<br> [0x80001238]:sd t6, 896(ra)<br>   |
|  90|[0x800037a0]<br>0x04916AC172EC58E8|- rs2_w0_val == 64<br>                                                                                                                                                                                                                                                                             |[0x80001258]:KMAXDA32 t6, t5, t4<br> [0x8000125c]:sd t6, 912(ra)<br>   |
|  91|[0x800037b0]<br>0x04916AC574EC5B59|- rs2_w0_val == 16<br>                                                                                                                                                                                                                                                                             |[0x80001280]:KMAXDA32 t6, t5, t4<br> [0x80001284]:sd t6, 928(ra)<br>   |
|  92|[0x800037c0]<br>0xFF3C156E6A41B0B0|- rs1_w1_val == 1431655765<br> - rs1_w0_val == 268435456<br>                                                                                                                                                                                                                                       |[0x800012b0]:KMAXDA32 t6, t5, t4<br> [0x800012b4]:sd t6, 944(ra)<br>   |
|  93|[0x800037d0]<br>0xFF3C556E6A4130BA|- rs1_w1_val == 2147483647<br>                                                                                                                                                                                                                                                                     |[0x800012d8]:KMAXDA32 t6, t5, t4<br> [0x800012dc]:sd t6, 960(ra)<br>   |
|  94|[0x800037e0]<br>0xFC91AAC32A4130B1|- rs1_w1_val == -268435457<br>                                                                                                                                                                                                                                                                     |[0x80001304]:KMAXDA32 t6, t5, t4<br> [0x80001308]:sd t6, 976(ra)<br>   |
|  95|[0x800037f0]<br>0xFC91AAC12A8910B1|- rs1_w1_val == -1048577<br>                                                                                                                                                                                                                                                                       |[0x80001330]:KMAXDA32 t6, t5, t4<br> [0x80001334]:sd t6, 992(ra)<br>   |
|  96|[0x80003800]<br>0xFC91AAC1485114A9|- rs2_w0_val == -1025<br> - rs1_w1_val == -524289<br>                                                                                                                                                                                                                                              |[0x80001358]:KMAXDA32 t6, t5, t4<br> [0x8000135c]:sd t6, 1008(ra)<br>  |
|  97|[0x80003810]<br>0xFD11AAC18A5194AE|- rs1_w1_val == -8193<br> - rs1_w0_val == -1073741825<br>                                                                                                                                                                                                                                          |[0x80001380]:KMAXDA32 t6, t5, t4<br> [0x80001384]:sd t6, 1024(ra)<br>  |
|  98|[0x80003820]<br>0xFD11AAC17A4D8C8E|- rs1_w1_val == -65<br>                                                                                                                                                                                                                                                                            |[0x800013a4]:KMAXDA32 t6, t5, t4<br> [0x800013a8]:sd t6, 1040(ra)<br>  |
|  99|[0x80003830]<br>0xFD11AAB67A4D8C36|- rs1_w1_val == -33<br>                                                                                                                                                                                                                                                                            |[0x800013cc]:KMAXDA32 t6, t5, t4<br> [0x800013d0]:sd t6, 1056(ra)<br>  |
| 100|[0x80003840]<br>0xFD11AAB65A4D2C38|- rs1_w1_val == -2<br> - rs1_w0_val == -16385<br>                                                                                                                                                                                                                                                  |[0x80001400]:KMAXDA32 t6, t5, t4<br> [0x80001404]:sd t6, 1072(ra)<br>  |
| 101|[0x80003850]<br>0xFD11AB369A4D2C38|- rs1_w1_val == 1073741824<br>                                                                                                                                                                                                                                                                     |[0x80001424]:KMAXDA32 t6, t5, t4<br> [0x80001428]:sd t6, 1088(ra)<br>  |
| 102|[0x80003860]<br>0xFD11AF369A4D2D58|- rs1_w1_val == 67108864<br>                                                                                                                                                                                                                                                                       |[0x80001448]:KMAXDA32 t6, t5, t4<br> [0x8000144c]:sd t6, 1104(ra)<br>  |
| 103|[0x80003870]<br>0xFD11A7461A4D3D59|- rs1_w1_val == 8388608<br>                                                                                                                                                                                                                                                                        |[0x80001480]:KMAXDA32 t6, t5, t4<br> [0x80001484]:sd t6, 1120(ra)<br>  |
| 104|[0x80003880]<br>0xFD11A9461B513D9A|- rs2_w0_val == 2097152<br> - rs1_w1_val == 1048576<br>                                                                                                                                                                                                                                            |[0x800014b0]:KMAXDA32 t6, t5, t4<br> [0x800014b4]:sd t6, 1136(ra)<br>  |
| 105|[0x80003890]<br>0xFD11A9461B3D6DA0|- rs1_w1_val == 262144<br> - rs1_w0_val == -2049<br>                                                                                                                                                                                                                                               |[0x800014e0]:KMAXDA32 t6, t5, t4<br> [0x800014e4]:sd t6, 1152(ra)<br>  |
| 106|[0x800038a0]<br>0xFD118946193CED9F|- rs2_w1_val == 1<br>                                                                                                                                                                                                                                                                              |[0x8000150c]:KMAXDA32 t6, t5, t4<br> [0x80001510]:sd t6, 1168(ra)<br>  |
| 107|[0x800038b0]<br>0xFD118946192CED5F|- rs1_w1_val == 256<br>                                                                                                                                                                                                                                                                            |[0x80001534]:KMAXDA32 t6, t5, t4<br> [0x80001538]:sd t6, 1184(ra)<br>  |
| 108|[0x800038d0]<br>0xFD0F8935192CECDD|- rs2_w0_val == -536870913<br> - rs1_w1_val == 128<br>                                                                                                                                                                                                                                             |[0x8000157c]:KMAXDA32 t6, t5, t4<br> [0x80001580]:sd t6, 1216(ra)<br>  |
| 109|[0x800038e0]<br>0x0D0F8934992CEBDE|- rs2_w1_val == -1<br>                                                                                                                                                                                                                                                                             |[0x800015a4]:KMAXDA32 t6, t5, t4<br> [0x800015a8]:sd t6, 1232(ra)<br>  |
| 110|[0x800038f0]<br>0x0D0F8938C92CEBDE|- rs2_w0_val == 268435456<br> - rs1_w1_val == 64<br>                                                                                                                                                                                                                                               |[0x800015c0]:KMAXDA32 t6, t5, t4<br> [0x800015c4]:sd t6, 1248(ra)<br>  |
| 111|[0x80003900]<br>0x0D0F8938C93CEB78|- rs1_w1_val == 16<br>                                                                                                                                                                                                                                                                             |[0x800015e4]:KMAXDA32 t6, t5, t4<br> [0x800015e8]:sd t6, 1264(ra)<br>  |
| 112|[0x80003920]<br>0x0BBA33E26F3CEB7E|- rs1_w0_val == -1431655766<br>                                                                                                                                                                                                                                                                    |[0x80001634]:KMAXDA32 t6, t5, t4<br> [0x80001638]:sd t6, 1296(ra)<br>  |
| 113|[0x80003930]<br>0xFBBA33E20EBCE77F|- rs1_w0_val == 2147483647<br>                                                                                                                                                                                                                                                                     |[0x80001660]:KMAXDA32 t6, t5, t4<br> [0x80001664]:sd t6, 1312(ra)<br>  |
| 114|[0x80003940]<br>0xFBBA33E210FCE786|- rs2_w0_val == -4194305<br>                                                                                                                                                                                                                                                                       |[0x80001688]:KMAXDA32 t6, t5, t4<br> [0x8000168c]:sd t6, 1328(ra)<br>  |
| 115|[0x80003950]<br>0xFBBA31E210C1678F|- rs2_w1_val == -32769<br> - rs2_w0_val == -524289<br>                                                                                                                                                                                                                                             |[0x800016b4]:KMAXDA32 t6, t5, t4<br> [0x800016b8]:sd t6, 1344(ra)<br>  |
| 116|[0x80003960]<br>0xFBCA21E250FD6790|- rs1_w0_val == -67108865<br>                                                                                                                                                                                                                                                                      |[0x800016e4]:KMAXDA32 t6, t5, t4<br> [0x800016e8]:sd t6, 1360(ra)<br>  |
| 117|[0x80003970]<br>0xFBCA21EB117D68B2|- rs1_w0_val == -8388609<br>                                                                                                                                                                                                                                                                       |[0x8000170c]:KMAXDA32 t6, t5, t4<br> [0x80001710]:sd t6, 1376(ra)<br>  |
| 118|[0x80003980]<br>0xFBCE31EC117D68B2|- rs1_w0_val == -2147483648<br> - rs2_w0_val == -8193<br>                                                                                                                                                                                                                                          |[0x8000173c]:KMAXDA32 t6, t5, t4<br> [0x80001740]:sd t6, 1392(ra)<br>  |
| 119|[0x80003990]<br>0xFBCE30EC178D6933|- rs1_w0_val == -1048577<br>                                                                                                                                                                                                                                                                       |[0x80001770]:KMAXDA32 t6, t5, t4<br> [0x80001774]:sd t6, 1408(ra)<br>  |
| 120|[0x800039a0]<br>0xFBCE30EC17B0F53B|- rs2_w0_val == -2049<br>                                                                                                                                                                                                                                                                          |[0x8000179c]:KMAXDA32 t6, t5, t4<br> [0x800017a0]:sd t6, 1424(ra)<br>  |
| 121|[0x800039b0]<br>0xFBCE30EC18007505|- rs1_w0_val == -524289<br>                                                                                                                                                                                                                                                                        |[0x800017c4]:KMAXDA32 t6, t5, t4<br> [0x800017c8]:sd t6, 1440(ra)<br>  |
| 122|[0x800039c0]<br>0xFBCE30EC5A8875C7|- rs2_w0_val == -129<br>                                                                                                                                                                                                                                                                           |[0x800017e8]:KMAXDA32 t6, t5, t4<br> [0x800017ec]:sd t6, 1456(ra)<br>  |
| 123|[0x800039d0]<br>0xFBCE30FC5A8874E0|- rs2_w0_val == -33<br>                                                                                                                                                                                                                                                                            |[0x80001808]:KMAXDA32 t6, t5, t4<br> [0x8000180c]:sd t6, 1472(ra)<br>  |
| 124|[0x800039e0]<br>0xFBCE30EC620874E0|- rs1_w0_val == -8193<br>                                                                                                                                                                                                                                                                          |[0x80001838]:KMAXDA32 t6, t5, t4<br> [0x8000183c]:sd t6, 1488(ra)<br>  |
| 125|[0x800039f0]<br>0xFBCE312C62497517|- rs2_w0_val == -9<br>                                                                                                                                                                                                                                                                             |[0x80001860]:KMAXDA32 t6, t5, t4<br> [0x80001864]:sd t6, 1504(ra)<br>  |
| 126|[0x80003a00]<br>0xDBCE312C6249769A|- rs2_w0_val == -3<br>                                                                                                                                                                                                                                                                             |[0x80001884]:KMAXDA32 t6, t5, t4<br> [0x80001888]:sd t6, 1520(ra)<br>  |
| 127|[0x80003a10]<br>0xDBCE312C5FC7769A|- rs2_w0_val == -2<br>                                                                                                                                                                                                                                                                             |[0x800018a8]:KMAXDA32 t6, t5, t4<br> [0x800018ac]:sd t6, 1536(ra)<br>  |
| 128|[0x80003a20]<br>0xDBCE392CDFC7969B|- rs2_w0_val == 1073741824<br>                                                                                                                                                                                                                                                                     |[0x800018cc]:KMAXDA32 t6, t5, t4<br> [0x800018d0]:sd t6, 1552(ra)<br>  |
| 129|[0x80003a30]<br>0xDBCE382CD687969B|- rs2_w0_val == 134217728<br>                                                                                                                                                                                                                                                                      |[0x800018ec]:KMAXDA32 t6, t5, t4<br> [0x800018f0]:sd t6, 1568(ra)<br>  |
| 130|[0x80003a40]<br>0xDBCE382C96C7969B|- rs1_w0_val == -2<br>                                                                                                                                                                                                                                                                             |[0x8000191c]:KMAXDA32 t6, t5, t4<br> [0x80001920]:sd t6, 1584(ra)<br>  |
| 131|[0x80003a50]<br>0xBBCE3829EC1CEBEB|- rs1_w0_val == 1073741824<br>                                                                                                                                                                                                                                                                     |[0x80001948]:KMAXDA32 t6, t5, t4<br> [0x8000194c]:sd t6, 1600(ra)<br>  |
| 132|[0x80003a60]<br>0xBBCE382A681CEBEB|- rs2_w0_val == 1048576<br>                                                                                                                                                                                                                                                                        |[0x80001974]:KMAXDA32 t6, t5, t4<br> [0x80001978]:sd t6, 1616(ra)<br>  |
| 133|[0x80003a70]<br>0xBBCE382A8824EDEC|- rs2_w0_val == 524288<br>                                                                                                                                                                                                                                                                         |[0x80001994]:KMAXDA32 t6, t5, t4<br> [0x80001998]:sd t6, 1632(ra)<br>  |
| 134|[0x80003a90]<br>0xBBCE382E8830CBEF|- rs1_w0_val == 128<br>                                                                                                                                                                                                                                                                            |[0x800019e0]:KMAXDA32 t6, t5, t4<br> [0x800019e4]:sd t6, 1664(ra)<br>  |
| 135|[0x80003aa0]<br>0xBCCE382EC790CBEA|- rs1_w0_val == -2097153<br>                                                                                                                                                                                                                                                                       |[0x80001a0c]:KMAXDA32 t6, t5, t4<br> [0x80001a10]:sd t6, 1680(ra)<br>  |
