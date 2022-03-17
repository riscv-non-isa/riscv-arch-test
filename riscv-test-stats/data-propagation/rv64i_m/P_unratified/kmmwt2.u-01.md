
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001b70')]      |
| SIG_REGION                | [('0x80003210', '0x800039e0', '250 dwords')]      |
| COV_LABELS                | kmmwt2.u      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmmwt2.u-01.S    |
| Total Number of coverpoints| 388     |
| Total Coverpoints Hit     | 382      |
| Total Signature Updates   | 250      |
| STAT1                     | 123      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 125     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001664]:KMMWT2_U t6, t5, t4
      [0x80001668]:sd t6, 1104(ra)
 -- Signature Address: 0x80003830 Data: 0x0000000000100000
 -- Redundant Coverpoints hit by the op
      - opcode : kmmwt2.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h2_val == -1025
      - rs2_h1_val == 32
      - rs2_h0_val == 8
      - rs1_w1_val == 0
      - rs1_w0_val == 1073741824




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001b58]:KMMWT2_U t6, t5, t4
      [0x80001b5c]:sd t6, 1520(ra)
 -- Signature Address: 0x800039d0 Data: 0xFFFFFFFE00000000
 -- Redundant Coverpoints hit by the op
      - opcode : kmmwt2.u
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs2_h3_val == 8192
      - rs2_h2_val == 32
      - rs2_h1_val == 2
      - rs2_h0_val == -32768
      - rs1_w0_val == -1






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmmwt2.u', 'rs1 : x27', 'rs2 : x27', 'rd : x16', 'rs1 == rs2 != rd', 'rs2_h3_val == -9', 'rs2_h1_val == -513']
Last Code Sequence : 
	-[0x800003c0]:KMMWT2_U a6, s11, s11
	-[0x800003c4]:sd a6, 0(gp)
Current Store : [0x800003c8] : sd s11, 8(gp) -- Store: [0x80003218]:0xFFF7C000FDFFFFF8




Last Coverpoint : ['rs1 : x23', 'rs2 : x23', 'rd : x23', 'rs1 == rs2 == rd', 'rs2_h3_val == -21846', 'rs2_h1_val == -32768']
Last Code Sequence : 
	-[0x800003f0]:KMMWT2_U s7, s7, s7
	-[0x800003f4]:sd s7, 16(gp)
Current Store : [0x800003f8] : sd s7, 24(gp) -- Store: [0x80003228]:0x38E4471E7FFFFFFA




Last Coverpoint : ['rs1 : x1', 'rs2 : x10', 'rd : x29', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == 21845', 'rs2_h1_val == -2', 'rs2_h0_val == -2049', 'rs1_w1_val == 32768', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x80000424]:KMMWT2_U t4, ra, a0
	-[0x80000428]:sd t4, 32(gp)
Current Store : [0x8000042c] : sd ra, 40(gp) -- Store: [0x80003238]:0x00008000F7FFFFFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x24', 'rd : x18', 'rs1 == rd != rs2', 'rs2_h3_val == 32767', 'rs2_h2_val == 256', 'rs2_h1_val == -2049', 'rs2_h0_val == -1', 'rs1_w1_val == -32769', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000454]:KMMWT2_U s2, s2, s8
	-[0x80000458]:sd s2, 48(gp)
Current Store : [0x8000045c] : sd s2, 56(gp) -- Store: [0x80003248]:0xFFFF8000FFFFDFFC




Last Coverpoint : ['rs1 : x2', 'rs2 : x9', 'rd : x9', 'rs2 == rd != rs1', 'rs2_h3_val == -16385', 'rs2_h2_val == 4096', 'rs1_w1_val == -1048577', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000488]:KMMWT2_U s1, sp, s1
	-[0x8000048c]:sd s1, 64(gp)
Current Store : [0x80000490] : sd sp, 72(gp) -- Store: [0x80003258]:0xFFEFFFFFFFBFFFFF




Last Coverpoint : ['rs1 : x8', 'rs2 : x0', 'rd : x26', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h1_val == 0', 'rs2_h0_val == 0', 'rs1_w1_val == -8388609', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x800004b0]:KMMWT2_U s10, fp, zero
	-[0x800004b4]:sd s10, 80(gp)
Current Store : [0x800004b8] : sd fp, 88(gp) -- Store: [0x80003268]:0xFF7FFFFF04000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x6', 'rd : x14', 'rs2_h3_val == -4097', 'rs2_h2_val == -8193', 'rs2_h1_val == -33', 'rs2_h0_val == -5', 'rs1_w1_val == 1', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x800004dc]:KMMWT2_U a4, a3, t1
	-[0x800004e0]:sd a4, 96(gp)
Current Store : [0x800004e4] : sd a3, 104(gp) -- Store: [0x80003278]:0x0000000101000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x28', 'rd : x7', 'rs2_h3_val == -2049', 'rs2_h1_val == -8193', 'rs2_h0_val == 2', 'rs1_w1_val == -257']
Last Code Sequence : 
	-[0x8000050c]:KMMWT2_U t2, s6, t3
	-[0x80000510]:sd t2, 112(gp)
Current Store : [0x80000514] : sd s6, 120(gp) -- Store: [0x80003288]:0xFFFFFEFFFFFFFFF9




Last Coverpoint : ['rs1 : x26', 'rs2 : x30', 'rd : x8', 'rs2_h3_val == -1025', 'rs2_h1_val == 21845', 'rs2_h0_val == 32', 'rs1_w1_val == 8', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000538]:KMMWT2_U fp, s10, t5
	-[0x8000053c]:sd fp, 128(gp)
Current Store : [0x80000540] : sd s10, 136(gp) -- Store: [0x80003298]:0x0000000840000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x18', 'rd : x22', 'rs2_h3_val == -513', 'rs2_h2_val == 4', 'rs2_h0_val == -4097', 'rs1_w1_val == -8193']
Last Code Sequence : 
	-[0x8000056c]:KMMWT2_U s6, t4, s2
	-[0x80000570]:sd s6, 144(gp)
Current Store : [0x80000574] : sd t4, 152(gp) -- Store: [0x800032a8]:0xFFFFDFFF00000005




Last Coverpoint : ['rs1 : x11', 'rs2 : x31', 'rd : x12', 'rs2_h3_val == -257', 'rs2_h2_val == 16384', 'rs2_h0_val == -16385', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000598]:KMMWT2_U a2, a1, t6
	-[0x8000059c]:sd a2, 160(gp)
Current Store : [0x800005a0] : sd a1, 168(gp) -- Store: [0x800032b8]:0x0000000100100000




Last Coverpoint : ['rs1 : x15', 'rs2 : x21', 'rd : x25', 'rs2_h3_val == -129', 'rs2_h2_val == 32767', 'rs1_w1_val == 1048576', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x800005cc]:KMMWT2_U s9, a5, s5
	-[0x800005d0]:sd s9, 176(gp)
Current Store : [0x800005d4] : sd a5, 184(gp) -- Store: [0x800032c8]:0x0010000000080000




Last Coverpoint : ['rs1 : x4', 'rs2 : x26', 'rd : x5', 'rs2_h3_val == -65', 'rs2_h2_val == 64', 'rs2_h1_val == 1024', 'rs2_h0_val == 1024', 'rs1_w1_val == -65537', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x800005f8]:KMMWT2_U t0, tp, s10
	-[0x800005fc]:sd t0, 192(gp)
Current Store : [0x80000600] : sd tp, 200(gp) -- Store: [0x800032d8]:0xFFFEFFFF00000100




Last Coverpoint : ['rs1 : x5', 'rs2 : x2', 'rd : x21', 'rs2_h3_val == -33', 'rs2_h2_val == -33', 'rs2_h1_val == 128', 'rs2_h0_val == 128', 'rs1_w1_val == -4097', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000628]:KMMWT2_U s5, t0, sp
	-[0x8000062c]:sd s5, 0(s1)
Current Store : [0x80000630] : sd t0, 8(s1) -- Store: [0x800032e8]:0xFFFFEFFFFFFFFBFF




Last Coverpoint : ['rs1 : x25', 'rs2 : x17', 'rd : x11', 'rs2_h3_val == -17', 'rs2_h0_val == -17', 'rs1_w1_val == 4096', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80000664]:KMMWT2_U a1, s9, a7
	-[0x80000668]:sd a1, 16(s1)
Current Store : [0x8000066c] : sd s9, 24(s1) -- Store: [0x800032f8]:0x00001000FFFFEFFF




Last Coverpoint : ['rs1 : x0', 'rs2 : x16', 'rd : x3', 'rs2_h3_val == -5', 'rs2_h2_val == -5', 'rs2_h0_val == 64', 'rs1_w1_val == 0', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000694]:KMMWT2_U gp, zero, a6
	-[0x80000698]:sd gp, 32(s1)
Current Store : [0x8000069c] : sd zero, 40(s1) -- Store: [0x80003308]:0x0000000000000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x22', 'rd : x30', 'rs2_h3_val == -3', 'rs2_h2_val == -1025', 'rs2_h0_val == -1025', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x800006c4]:KMMWT2_U t5, a2, s6
	-[0x800006c8]:sd t5, 48(s1)
Current Store : [0x800006cc] : sd a2, 56(s1) -- Store: [0x80003318]:0xFFFFDFFF00008000




Last Coverpoint : ['rs1 : x17', 'rs2 : x12', 'rd : x20', 'rs2_h3_val == -2', 'rs2_h1_val == 32767', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x800006f4]:KMMWT2_U s4, a7, a2
	-[0x800006f8]:sd s4, 64(s1)
Current Store : [0x800006fc] : sd a7, 72(s1) -- Store: [0x80003328]:0x00000009DFFFFFFF




Last Coverpoint : ['rs1 : x20', 'rs2 : x29', 'rd : x4', 'rs2_h3_val == -32768', 'rs2_h0_val == -2', 'rs1_w1_val == 16', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x8000072c]:KMMWT2_U tp, s4, t4
	-[0x80000730]:sd tp, 80(s1)
Current Store : [0x80000734] : sd s4, 88(s1) -- Store: [0x80003338]:0x0000001000400000




Last Coverpoint : ['rs1 : x24', 'rs2 : x14', 'rd : x28', 'rs2_h3_val == 16384', 'rs2_h1_val == -17', 'rs1_w1_val == -536870913']
Last Code Sequence : 
	-[0x80000760]:KMMWT2_U t3, s8, a4
	-[0x80000764]:sd t3, 96(s1)
Current Store : [0x80000768] : sd s8, 104(s1) -- Store: [0x80003348]:0xDFFFFFFF00000009




Last Coverpoint : ['rs1 : x10', 'rs2 : x1', 'rd : x0', 'rs2_h3_val == 8192', 'rs2_h2_val == 32', 'rs2_h1_val == 2', 'rs2_h0_val == -32768', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x8000078c]:KMMWT2_U zero, a0, ra
	-[0x80000790]:sd zero, 112(s1)
Current Store : [0x80000794] : sd a0, 120(s1) -- Store: [0x80003358]:0xFFFFFFF8FFFFFFFF




Last Coverpoint : ['rs1 : x31', 'rs2 : x15', 'rd : x13', 'rs2_h3_val == 4096', 'rs2_h1_val == -257', 'rs1_w1_val == 262144', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x800007c8]:KMMWT2_U a3, t6, a5
	-[0x800007cc]:sd a3, 128(s1)
Current Store : [0x800007d0] : sd t6, 136(s1) -- Store: [0x80003368]:0x00040000FFFFFFBF




Last Coverpoint : ['rs1 : x7', 'rs2 : x4', 'rd : x10', 'rs2_h3_val == 2048', 'rs2_h2_val == -3', 'rs2_h0_val == -3', 'rs1_w0_val == -3']
Last Code Sequence : 
	-[0x800007fc]:KMMWT2_U a0, t2, tp
	-[0x80000800]:sd a0, 144(s1)
Current Store : [0x80000804] : sd t2, 152(s1) -- Store: [0x80003378]:0x00100000FFFFFFFD




Last Coverpoint : ['rs1 : x30', 'rs2 : x3', 'rd : x1', 'rs2_h3_val == 1024', 'rs2_h1_val == -21846', 'rs1_w1_val == 1431655765', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000830]:KMMWT2_U ra, t5, gp
	-[0x80000834]:sd ra, 160(s1)
Current Store : [0x80000838] : sd t5, 168(s1) -- Store: [0x80003388]:0x55555555FFFFFFF7




Last Coverpoint : ['rs1 : x3', 'rs2 : x8', 'rd : x24', 'rs2_h3_val == 512', 'rs2_h0_val == 1', 'rs1_w1_val == -524289']
Last Code Sequence : 
	-[0x80000864]:KMMWT2_U s8, gp, fp
	-[0x80000868]:sd s8, 176(s1)
Current Store : [0x8000086c] : sd gp, 184(s1) -- Store: [0x80003398]:0xFFF7FFFF00000005




Last Coverpoint : ['rs1 : x21', 'rs2 : x11', 'rd : x2', 'rs2_h3_val == 256', 'rs2_h2_val == -9', 'rs1_w1_val == -2147483648', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80000898]:KMMWT2_U sp, s5, a1
	-[0x8000089c]:sd sp, 192(s1)
Current Store : [0x800008a0] : sd s5, 200(s1) -- Store: [0x800033a8]:0x80000000FFEFFFFF




Last Coverpoint : ['rs1 : x14', 'rs2 : x19', 'rd : x17', 'rs2_h3_val == 128', 'rs2_h2_val == -129']
Last Code Sequence : 
	-[0x800008c8]:KMMWT2_U a7, a4, s3
	-[0x800008cc]:sd a7, 208(s1)
Current Store : [0x800008d0] : sd a4, 216(s1) -- Store: [0x800033b8]:0x00000006FFFFFFF8




Last Coverpoint : ['rs1 : x28', 'rs2 : x5', 'rd : x27', 'rs2_h3_val == 64', 'rs2_h2_val == 1024', 'rs2_h1_val == -5', 'rs1_w1_val == -513']
Last Code Sequence : 
	-[0x800008f8]:KMMWT2_U s11, t3, t0
	-[0x800008fc]:sd s11, 224(s1)
Current Store : [0x80000900] : sd t3, 232(s1) -- Store: [0x800033c8]:0xFFFFFDFFFFFFFFF8




Last Coverpoint : ['rs1 : x6', 'rs2 : x25', 'rd : x31', 'rs2_h3_val == 32', 'rs2_h0_val == -257', 'rs1_w1_val == -17', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000928]:KMMWT2_U t6, t1, s9
	-[0x8000092c]:sd t6, 240(s1)
Current Store : [0x80000930] : sd t1, 248(s1) -- Store: [0x800033d8]:0xFFFFFFEF00002000




Last Coverpoint : ['rs1 : x16', 'rs2 : x13', 'rd : x6', 'rs2_h3_val == 16', 'rs1_w1_val == 8388608', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000964]:KMMWT2_U t1, a6, a3
	-[0x80000968]:sd t1, 0(ra)
Current Store : [0x8000096c] : sd a6, 8(ra) -- Store: [0x800033e8]:0x00800000FFFFF7FF




Last Coverpoint : ['rs1 : x9', 'rs2 : x7', 'rd : x19', 'rs2_h3_val == 8', 'rs2_h2_val == -257']
Last Code Sequence : 
	-[0x80000994]:KMMWT2_U s3, s1, t2
	-[0x80000998]:sd s3, 16(ra)
Current Store : [0x8000099c] : sd s1, 24(ra) -- Store: [0x800033f8]:0xFFFF7FFFFFFFFFF6




Last Coverpoint : ['rs1 : x19', 'rs2 : x20', 'rd : x15', 'rs2_h3_val == 4', 'rs2_h1_val == 8', 'rs2_h0_val == 512', 'rs1_w1_val == 32']
Last Code Sequence : 
	-[0x800009c4]:KMMWT2_U a5, s3, s4
	-[0x800009c8]:sd a5, 32(ra)
Current Store : [0x800009cc] : sd s3, 40(ra) -- Store: [0x80003408]:0x0000002000100000




Last Coverpoint : ['rs2_h3_val == 2', 'rs2_h2_val == 16', 'rs1_w1_val == 268435456']
Last Code Sequence : 
	-[0x800009f0]:KMMWT2_U t6, t5, t4
	-[0x800009f4]:sd t6, 48(ra)
Current Store : [0x800009f8] : sd t5, 56(ra) -- Store: [0x80003418]:0x1000000000000009




Last Coverpoint : ['rs2_h3_val == 1', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000a20]:KMMWT2_U t6, t5, t4
	-[0x80000a24]:sd t6, 64(ra)
Current Store : [0x80000a28] : sd t5, 72(ra) -- Store: [0x80003428]:0xFFFFFFF800000400




Last Coverpoint : ['rs2_h0_val == -129', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000a4c]:KMMWT2_U t6, t5, t4
	-[0x80000a50]:sd t6, 80(ra)
Current Store : [0x80000a54] : sd t5, 88(ra) -- Store: [0x80003438]:0xFFFFFFFA00000800




Last Coverpoint : ['rs2_h3_val == -1', 'rs2_h0_val == -33', 'rs1_w1_val == 33554432', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000a8c]:KMMWT2_U t6, t5, t4
	-[0x80000a90]:sd t6, 96(ra)
Current Store : [0x80000a94] : sd t5, 104(ra) -- Store: [0x80003448]:0x0200000055555555




Last Coverpoint : ['rs2_h2_val == -21846']
Last Code Sequence : 
	-[0x80000abc]:KMMWT2_U t6, t5, t4
	-[0x80000ac0]:sd t6, 112(ra)
Current Store : [0x80000ac4] : sd t5, 120(ra) -- Store: [0x80003458]:0xFFFFFFF8F7FFFFFF




Last Coverpoint : ['rs2_h2_val == 21845']
Last Code Sequence : 
	-[0x80000aec]:KMMWT2_U t6, t5, t4
	-[0x80000af0]:sd t6, 128(ra)
Current Store : [0x80000af4] : sd t5, 136(ra) -- Store: [0x80003468]:0x0010000000000100




Last Coverpoint : ['rs2_h2_val == -16385', 'rs2_h1_val == 1', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000b1c]:KMMWT2_U t6, t5, t4
	-[0x80000b20]:sd t6, 144(ra)
Current Store : [0x80000b24] : sd t5, 152(ra) -- Store: [0x80003478]:0x000000067FFFFFFF




Last Coverpoint : ['rs2_h2_val == -4097', 'rs2_h0_val == 4096', 'rs1_w1_val == -33']
Last Code Sequence : 
	-[0x80000b50]:KMMWT2_U t6, t5, t4
	-[0x80000b54]:sd t6, 160(ra)
Current Store : [0x80000b58] : sd t5, 168(ra) -- Store: [0x80003488]:0xFFFFFFDFDFFFFFFF




Last Coverpoint : ['rs2_h2_val == -2049', 'rs1_w1_val == 67108864', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80000b88]:KMMWT2_U t6, t5, t4
	-[0x80000b8c]:sd t6, 176(ra)
Current Store : [0x80000b90] : sd t5, 184(ra) -- Store: [0x80003498]:0x04000000FDFFFFFF




Last Coverpoint : ['rs2_h2_val == -513', 'rs2_h1_val == 4096', 'rs1_w1_val == 134217728', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80000bbc]:KMMWT2_U t6, t5, t4
	-[0x80000bc0]:sd t6, 192(ra)
Current Store : [0x80000bc4] : sd t5, 200(ra) -- Store: [0x800034a8]:0x08000000BFFFFFFF




Last Coverpoint : ['rs2_h1_val == -3', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000bf0]:KMMWT2_U t6, t5, t4
	-[0x80000bf4]:sd t6, 208(ra)
Current Store : [0x80000bf8] : sd t5, 216(ra) -- Store: [0x800034b8]:0x3FFFFFFF00200000




Last Coverpoint : ['rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000c20]:KMMWT2_U t6, t5, t4
	-[0x80000c24]:sd t6, 224(ra)
Current Store : [0x80000c28] : sd t5, 232(ra) -- Store: [0x800034c8]:0x0000000900040000




Last Coverpoint : ['rs2_h0_val == 32767', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000c50]:KMMWT2_U t6, t5, t4
	-[0x80000c54]:sd t6, 240(ra)
Current Store : [0x80000c58] : sd t5, 248(ra) -- Store: [0x800034d8]:0x0000000800010000




Last Coverpoint : ['rs2_h1_val == 64', 'rs1_w1_val == -67108865', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000c80]:KMMWT2_U t6, t5, t4
	-[0x80000c84]:sd t6, 256(ra)
Current Store : [0x80000c88] : sd t5, 264(ra) -- Store: [0x800034e8]:0xFBFFFFFF00004000




Last Coverpoint : ['rs2_h2_val == -32768', 'rs2_h1_val == 32', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000cb0]:KMMWT2_U t6, t5, t4
	-[0x80000cb4]:sd t6, 272(ra)
Current Store : [0x80000cb8] : sd t5, 280(ra) -- Store: [0x800034f8]:0x0010000000001000




Last Coverpoint : ['rs2_h2_val == 512', 'rs2_h1_val == 256', 'rs2_h0_val == 8', 'rs1_w1_val == 128', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000ce0]:KMMWT2_U t6, t5, t4
	-[0x80000ce4]:sd t6, 288(ra)
Current Store : [0x80000ce8] : sd t5, 296(ra) -- Store: [0x80003508]:0x0000008000000200




Last Coverpoint : ['rs1_w1_val == 8192', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000d0c]:KMMWT2_U t6, t5, t4
	-[0x80000d10]:sd t6, 304(ra)
Current Store : [0x80000d14] : sd t5, 312(ra) -- Store: [0x80003518]:0x0000200000000080




Last Coverpoint : ['rs2_h0_val == -65', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000d3c]:KMMWT2_U t6, t5, t4
	-[0x80000d40]:sd t6, 320(ra)
Current Store : [0x80000d44] : sd t5, 328(ra) -- Store: [0x80003528]:0x1000000000000040




Last Coverpoint : ['rs2_h0_val == 256', 'rs1_w1_val == 16384', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000d6c]:KMMWT2_U t6, t5, t4
	-[0x80000d70]:sd t6, 336(ra)
Current Store : [0x80000d74] : sd t5, 344(ra) -- Store: [0x80003538]:0x0000400000000020




Last Coverpoint : ['rs2_h2_val == -65', 'rs1_w1_val == -33554433', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000da0]:KMMWT2_U t6, t5, t4
	-[0x80000da4]:sd t6, 352(ra)
Current Store : [0x80000da8] : sd t5, 360(ra) -- Store: [0x80003548]:0xFDFFFFFF00000010




Last Coverpoint : ['rs2_h2_val == 8192', 'rs2_h1_val == -65', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000dcc]:KMMWT2_U t6, t5, t4
	-[0x80000dd0]:sd t6, 368(ra)
Current Store : [0x80000dd4] : sd t5, 376(ra) -- Store: [0x80003558]:0xFFFFDFFF00000008




Last Coverpoint : ['rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000e00]:KMMWT2_U t6, t5, t4
	-[0x80000e04]:sd t6, 384(ra)
Current Store : [0x80000e08] : sd t5, 392(ra) -- Store: [0x80003568]:0xFFFF7FFF00000004




Last Coverpoint : ['rs1_w1_val == -5', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000e30]:KMMWT2_U t6, t5, t4
	-[0x80000e34]:sd t6, 400(ra)
Current Store : [0x80000e38] : sd t5, 408(ra) -- Store: [0x80003578]:0xFFFFFFFB00000002




Last Coverpoint : ['rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000e60]:KMMWT2_U t6, t5, t4
	-[0x80000e64]:sd t6, 416(ra)
Current Store : [0x80000e68] : sd t5, 424(ra) -- Store: [0x80003588]:0x0000000600000001




Last Coverpoint : ['rs2_h2_val == 2048']
Last Code Sequence : 
	-[0x80000e84]:KMMWT2_U t6, t5, t4
	-[0x80000e88]:sd t6, 432(ra)
Current Store : [0x80000e8c] : sd t5, 440(ra) -- Store: [0x80003598]:0x8000000000000000




Last Coverpoint : ['rs2_h2_val == -17']
Last Code Sequence : 
	-[0x80000eb4]:KMMWT2_U t6, t5, t4
	-[0x80000eb8]:sd t6, 448(ra)
Current Store : [0x80000ebc] : sd t5, 456(ra) -- Store: [0x800035a8]:0xFFFFFFFB00000004




Last Coverpoint : ['rs2_h2_val == -2']
Last Code Sequence : 
	-[0x80000ee4]:KMMWT2_U t6, t5, t4
	-[0x80000ee8]:sd t6, 464(ra)
Current Store : [0x80000eec] : sd t5, 472(ra) -- Store: [0x800035b8]:0xC000000000000040




Last Coverpoint : ['rs2_h2_val == 128', 'rs2_h0_val == -9']
Last Code Sequence : 
	-[0x80000f0c]:KMMWT2_U t6, t5, t4
	-[0x80000f10]:sd t6, 480(ra)
Current Store : [0x80000f14] : sd t5, 488(ra) -- Store: [0x800035c8]:0x0000002000004000




Last Coverpoint : ['rs2_h2_val == 8']
Last Code Sequence : 
	-[0x80000f38]:KMMWT2_U t6, t5, t4
	-[0x80000f3c]:sd t6, 496(ra)
Current Store : [0x80000f40] : sd t5, 504(ra) -- Store: [0x800035d8]:0xFFFFFDFF00000002




Last Coverpoint : ['rs2_h2_val == 2', 'rs2_h1_val == -1025', 'rs2_h0_val == -21846', 'rs1_w1_val == 2097152']
Last Code Sequence : 
	-[0x80000f6c]:KMMWT2_U t6, t5, t4
	-[0x80000f70]:sd t6, 512(ra)
Current Store : [0x80000f74] : sd t5, 520(ra) -- Store: [0x800035e8]:0x00200000F7FFFFFF




Last Coverpoint : ['rs2_h3_val == -8193', 'rs2_h2_val == 1', 'rs1_w1_val == 2', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000f98]:KMMWT2_U t6, t5, t4
	-[0x80000f9c]:sd t6, 528(ra)
Current Store : [0x80000fa0] : sd t5, 536(ra) -- Store: [0x800035f8]:0x00000002FFDFFFFF




Last Coverpoint : ['rs2_h2_val == -1', 'rs1_w1_val == 256']
Last Code Sequence : 
	-[0x80000fc4]:KMMWT2_U t6, t5, t4
	-[0x80000fc8]:sd t6, 544(ra)
Current Store : [0x80000fcc] : sd t5, 552(ra) -- Store: [0x80003608]:0x0000010000000003




Last Coverpoint : ['rs2_h1_val == -16385']
Last Code Sequence : 
	-[0x80000ff4]:KMMWT2_U t6, t5, t4
	-[0x80000ff8]:sd t6, 560(ra)
Current Store : [0x80000ffc] : sd t5, 568(ra) -- Store: [0x80003618]:0x00800000FFBFFFFF




Last Coverpoint : ['rs2_h1_val == -4097']
Last Code Sequence : 
	-[0x8000101c]:KMMWT2_U t6, t5, t4
	-[0x80001020]:sd t6, 576(ra)
Current Store : [0x80001024] : sd t5, 584(ra) -- Store: [0x80003628]:0xFFFFEFFF00020000




Last Coverpoint : ['rs2_h1_val == -129']
Last Code Sequence : 
	-[0x80001054]:KMMWT2_U t6, t5, t4
	-[0x80001058]:sd t6, 592(ra)
Current Store : [0x8000105c] : sd t5, 600(ra) -- Store: [0x80003638]:0x3FFFFFFFDFFFFFFF




Last Coverpoint : ['rs2_h1_val == -9', 'rs1_w1_val == -9']
Last Code Sequence : 
	-[0x8000107c]:KMMWT2_U t6, t5, t4
	-[0x80001080]:sd t6, 608(ra)
Current Store : [0x80001084] : sd t5, 616(ra) -- Store: [0x80003648]:0xFFFFFFF7FFFFFFF7




Last Coverpoint : ['rs2_h1_val == 16384', 'rs1_w1_val == -2097153']
Last Code Sequence : 
	-[0x800010a8]:KMMWT2_U t6, t5, t4
	-[0x800010ac]:sd t6, 624(ra)
Current Store : [0x800010b0] : sd t5, 632(ra) -- Store: [0x80003658]:0xFFDFFFFF00000100




Last Coverpoint : ['rs2_h1_val == 8192', 'rs1_w1_val == 2048']
Last Code Sequence : 
	-[0x800010d4]:KMMWT2_U t6, t5, t4
	-[0x800010d8]:sd t6, 640(ra)
Current Store : [0x800010dc] : sd t5, 648(ra) -- Store: [0x80003668]:0x00000800F7FFFFFF




Last Coverpoint : ['rs2_h1_val == 2048', 'rs2_h0_val == -513']
Last Code Sequence : 
	-[0x80001104]:KMMWT2_U t6, t5, t4
	-[0x80001108]:sd t6, 656(ra)
Current Store : [0x8000110c] : sd t5, 664(ra) -- Store: [0x80003678]:0x0000200000010000




Last Coverpoint : ['rs2_h1_val == 512', 'rs1_w1_val == -2']
Last Code Sequence : 
	-[0x8000112c]:KMMWT2_U t6, t5, t4
	-[0x80001130]:sd t6, 672(ra)
Current Store : [0x80001134] : sd t5, 680(ra) -- Store: [0x80003688]:0xFFFFFFFEFFFFFFF6




Last Coverpoint : ['rs2_h0_val == 16384', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x8000115c]:KMMWT2_U t6, t5, t4
	-[0x80001160]:sd t6, 688(ra)
Current Store : [0x80001164] : sd t5, 696(ra) -- Store: [0x80003698]:0x00000001FFFFBFFF




Last Coverpoint : ['rs2_h0_val == 8192']
Last Code Sequence : 
	-[0x8000118c]:KMMWT2_U t6, t5, t4
	-[0x80001190]:sd t6, 704(ra)
Current Store : [0x80001194] : sd t5, 712(ra) -- Store: [0x800036a8]:0xFBFFFFFF00000004




Last Coverpoint : ['rs2_h0_val == 2048', 'rs1_w1_val == 16777216']
Last Code Sequence : 
	-[0x800011c4]:KMMWT2_U t6, t5, t4
	-[0x800011c8]:sd t6, 720(ra)
Current Store : [0x800011cc] : sd t5, 728(ra) -- Store: [0x800036b8]:0x0100000000000080




Last Coverpoint : ['rs2_h0_val == 16', 'rs1_w1_val == 131072']
Last Code Sequence : 
	-[0x800011f4]:KMMWT2_U t6, t5, t4
	-[0x800011f8]:sd t6, 736(ra)
Current Store : [0x800011fc] : sd t5, 744(ra) -- Store: [0x800036c8]:0x0002000000000400




Last Coverpoint : ['rs2_h0_val == 4', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80001224]:KMMWT2_U t6, t5, t4
	-[0x80001228]:sd t6, 752(ra)
Current Store : [0x8000122c] : sd t5, 760(ra) -- Store: [0x800036d8]:0x3FFFFFFFFFF7FFFF




Last Coverpoint : ['rs1_w1_val == -1431655766']
Last Code Sequence : 
	-[0x80001260]:KMMWT2_U t6, t5, t4
	-[0x80001264]:sd t6, 768(ra)
Current Store : [0x80001268] : sd t5, 776(ra) -- Store: [0x800036e8]:0xAAAAAAAA55555555




Last Coverpoint : ['rs1_w1_val == 2147483647']
Last Code Sequence : 
	-[0x80001298]:KMMWT2_U t6, t5, t4
	-[0x8000129c]:sd t6, 784(ra)
Current Store : [0x800012a0] : sd t5, 792(ra) -- Store: [0x800036f8]:0x7FFFFFFFFFBFFFFF




Last Coverpoint : ['rs1_w1_val == -1073741825']
Last Code Sequence : 
	-[0x800012c4]:KMMWT2_U t6, t5, t4
	-[0x800012c8]:sd t6, 800(ra)
Current Store : [0x800012cc] : sd t5, 808(ra) -- Store: [0x80003708]:0xBFFFFFFF00200000




Last Coverpoint : ['rs1_w1_val == -268435457']
Last Code Sequence : 
	-[0x800012f8]:KMMWT2_U t6, t5, t4
	-[0x800012fc]:sd t6, 816(ra)
Current Store : [0x80001300] : sd t5, 824(ra) -- Store: [0x80003718]:0xEFFFFFFFBFFFFFFF




Last Coverpoint : ['rs1_w1_val == -134217729', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80001328]:KMMWT2_U t6, t5, t4
	-[0x8000132c]:sd t6, 832(ra)
Current Store : [0x80001330] : sd t5, 840(ra) -- Store: [0x80003728]:0xF7FFFFFF20000000




Last Coverpoint : ['rs1_w1_val == -16777217', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80001358]:KMMWT2_U t6, t5, t4
	-[0x8000135c]:sd t6, 848(ra)
Current Store : [0x80001360] : sd t5, 856(ra) -- Store: [0x80003738]:0xFEFFFFFFFFFFFF7F




Last Coverpoint : ['rs2_h1_val == 16', 'rs1_w1_val == -4194305']
Last Code Sequence : 
	-[0x80001390]:KMMWT2_U t6, t5, t4
	-[0x80001394]:sd t6, 864(ra)
Current Store : [0x80001398] : sd t5, 872(ra) -- Store: [0x80003748]:0xFFBFFFFFFFEFFFFF




Last Coverpoint : ['rs1_w1_val == -262145']
Last Code Sequence : 
	-[0x800013c4]:KMMWT2_U t6, t5, t4
	-[0x800013c8]:sd t6, 880(ra)
Current Store : [0x800013cc] : sd t5, 888(ra) -- Store: [0x80003758]:0xFFFBFFFF00000008




Last Coverpoint : ['rs1_w1_val == -131073']
Last Code Sequence : 
	-[0x800013f8]:KMMWT2_U t6, t5, t4
	-[0x800013fc]:sd t6, 896(ra)
Current Store : [0x80001400] : sd t5, 904(ra) -- Store: [0x80003768]:0xFFFDFFFF00000010




Last Coverpoint : ['rs1_w1_val == -16385']
Last Code Sequence : 
	-[0x80001424]:KMMWT2_U t6, t5, t4
	-[0x80001428]:sd t6, 912(ra)
Current Store : [0x8000142c] : sd t5, 920(ra) -- Store: [0x80003778]:0xFFFFBFFFF7FFFFFF




Last Coverpoint : ['rs1_w1_val == -2049']
Last Code Sequence : 
	-[0x80001454]:KMMWT2_U t6, t5, t4
	-[0x80001458]:sd t6, 928(ra)
Current Store : [0x8000145c] : sd t5, 936(ra) -- Store: [0x80003788]:0xFFFFF7FF01000000




Last Coverpoint : ['rs1_w1_val == -1025']
Last Code Sequence : 
	-[0x80001488]:KMMWT2_U t6, t5, t4
	-[0x8000148c]:sd t6, 944(ra)
Current Store : [0x80001490] : sd t5, 952(ra) -- Store: [0x80003798]:0xFFFFFBFF00000000




Last Coverpoint : ['rs1_w1_val == -129', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x800014bc]:KMMWT2_U t6, t5, t4
	-[0x800014c0]:sd t6, 960(ra)
Current Store : [0x800014c4] : sd t5, 968(ra) -- Store: [0x800037a8]:0xFFFFFF7FEFFFFFFF




Last Coverpoint : ['rs1_w1_val == -65']
Last Code Sequence : 
	-[0x800014e8]:KMMWT2_U t6, t5, t4
	-[0x800014ec]:sd t6, 976(ra)
Current Store : [0x800014f0] : sd t5, 984(ra) -- Store: [0x800037b8]:0xFFFFFFBF00004000




Last Coverpoint : ['rs1_w1_val == -3']
Last Code Sequence : 
	-[0x80001510]:KMMWT2_U t6, t5, t4
	-[0x80001514]:sd t6, 992(ra)
Current Store : [0x80001518] : sd t5, 1000(ra) -- Store: [0x800037c8]:0xFFFFFFFD00000000




Last Coverpoint : ['rs1_w0_val == -2147483648', 'rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x80001544]:KMMWT2_U t6, t5, t4
	-[0x80001548]:sd t6, 1008(ra)
Current Store : [0x8000154c] : sd t5, 1016(ra) -- Store: [0x800037d8]:0x4000000080000000




Last Coverpoint : ['rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x8000157c]:KMMWT2_U t6, t5, t4
	-[0x80001580]:sd t6, 1024(ra)
Current Store : [0x80001584] : sd t5, 1032(ra) -- Store: [0x800037e8]:0x20000000F7FFFFFF




Last Coverpoint : ['rs1_w1_val == 65536', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x800015a8]:KMMWT2_U t6, t5, t4
	-[0x800015ac]:sd t6, 1040(ra)
Current Store : [0x800015b0] : sd t5, 1048(ra) -- Store: [0x800037f8]:0x00010000FBFFFFFF




Last Coverpoint : ['rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x800015e4]:KMMWT2_U t6, t5, t4
	-[0x800015e8]:sd t6, 1056(ra)
Current Store : [0x800015ec] : sd t5, 1064(ra) -- Store: [0x80003808]:0x00000400FFDFFFFF




Last Coverpoint : ['rs1_w1_val == 512']
Last Code Sequence : 
	-[0x80001610]:KMMWT2_U t6, t5, t4
	-[0x80001614]:sd t6, 1072(ra)
Current Store : [0x80001618] : sd t5, 1080(ra) -- Store: [0x80003818]:0x0000020000200000




Last Coverpoint : ['rs1_w1_val == 4']
Last Code Sequence : 
	-[0x80001644]:KMMWT2_U t6, t5, t4
	-[0x80001648]:sd t6, 1088(ra)
Current Store : [0x8000164c] : sd t5, 1096(ra) -- Store: [0x80003828]:0x00000004FFF7FFFF




Last Coverpoint : ['opcode : kmmwt2.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h2_val == -1025', 'rs2_h1_val == 32', 'rs2_h0_val == 8', 'rs1_w1_val == 0', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80001664]:KMMWT2_U t6, t5, t4
	-[0x80001668]:sd t6, 1104(ra)
Current Store : [0x8000166c] : sd t5, 1112(ra) -- Store: [0x80003838]:0x0000000040000000




Last Coverpoint : ['rs1_w1_val == -1']
Last Code Sequence : 
	-[0x80001694]:KMMWT2_U t6, t5, t4
	-[0x80001698]:sd t6, 1120(ra)
Current Store : [0x8000169c] : sd t5, 1128(ra) -- Store: [0x80003848]:0xFFFFFFFF00000001




Last Coverpoint : ['rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x800016d0]:KMMWT2_U t6, t5, t4
	-[0x800016d4]:sd t6, 1136(ra)
Current Store : [0x800016d8] : sd t5, 1144(ra) -- Store: [0x80003858]:0x20000000AAAAAAAA




Last Coverpoint : ['rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80001700]:KMMWT2_U t6, t5, t4
	-[0x80001704]:sd t6, 1152(ra)
Current Store : [0x80001708] : sd t5, 1160(ra) -- Store: [0x80003868]:0xFFFFEFFFFEFFFFFF




Last Coverpoint : ['rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80001734]:KMMWT2_U t6, t5, t4
	-[0x80001738]:sd t6, 1168(ra)
Current Store : [0x8000173c] : sd t5, 1176(ra) -- Store: [0x80003878]:0xFEFFFFFFFF7FFFFF




Last Coverpoint : ['rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80001768]:KMMWT2_U t6, t5, t4
	-[0x8000176c]:sd t6, 1184(ra)
Current Store : [0x80001770] : sd t5, 1192(ra) -- Store: [0x80003888]:0x01000000FFFBFFFF




Last Coverpoint : ['rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x8000179c]:KMMWT2_U t6, t5, t4
	-[0x800017a0]:sd t6, 1200(ra)
Current Store : [0x800017a4] : sd t5, 1208(ra) -- Store: [0x80003898]:0x00800000FFFDFFFF




Last Coverpoint : ['rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800017d0]:KMMWT2_U t6, t5, t4
	-[0x800017d4]:sd t6, 1216(ra)
Current Store : [0x800017d8] : sd t5, 1224(ra) -- Store: [0x800038a8]:0x00000000FFFEFFFF




Last Coverpoint : ['rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80001808]:KMMWT2_U t6, t5, t4
	-[0x8000180c]:sd t6, 1232(ra)
Current Store : [0x80001810] : sd t5, 1240(ra) -- Store: [0x800038b8]:0xF7FFFFFFFFFF7FFF




Last Coverpoint : ['rs2_h1_val == 4']
Last Code Sequence : 
	-[0x8000183c]:KMMWT2_U t6, t5, t4
	-[0x80001840]:sd t6, 1248(ra)
Current Store : [0x80001844] : sd t5, 1256(ra) -- Store: [0x800038c8]:0xAAAAAAAAFFFFFFBF




Last Coverpoint : ['rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80001874]:KMMWT2_U t6, t5, t4
	-[0x80001878]:sd t6, 1264(ra)
Current Store : [0x8000187c] : sd t5, 1272(ra) -- Store: [0x800038d8]:0xFFFEFFFFFFFFDFFF




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x8000189c]:KMMWT2_U t6, t5, t4
	-[0x800018a0]:sd t6, 1280(ra)
Current Store : [0x800018a4] : sd t5, 1288(ra) -- Store: [0x800038e8]:0xFFFFFFF9FFFFFFDF




Last Coverpoint : ['rs1_w0_val == -513']
Last Code Sequence : 
	-[0x800018cc]:KMMWT2_U t6, t5, t4
	-[0x800018d0]:sd t6, 1296(ra)
Current Store : [0x800018d4] : sd t5, 1304(ra) -- Store: [0x800038f8]:0xFFFFFFDFFFFFFDFF




Last Coverpoint : ['rs2_h0_val == 21845']
Last Code Sequence : 
	-[0x80001900]:KMMWT2_U t6, t5, t4
	-[0x80001904]:sd t6, 1312(ra)
Current Store : [0x80001908] : sd t5, 1320(ra) -- Store: [0x80003908]:0xFFFFEFFF00000020




Last Coverpoint : ['rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80001930]:KMMWT2_U t6, t5, t4
	-[0x80001934]:sd t6, 1328(ra)
Current Store : [0x80001938] : sd t5, 1336(ra) -- Store: [0x80003918]:0x00000008FFFFFEFF




Last Coverpoint : ['rs2_h0_val == -8193']
Last Code Sequence : 
	-[0x80001968]:KMMWT2_U t6, t5, t4
	-[0x8000196c]:sd t6, 1344(ra)
Current Store : [0x80001970] : sd t5, 1352(ra) -- Store: [0x80003928]:0xFFFFFFF9FFFFFF7F




Last Coverpoint : ['rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80001998]:KMMWT2_U t6, t5, t4
	-[0x8000199c]:sd t6, 1360(ra)
Current Store : [0x800019a0] : sd t5, 1368(ra) -- Store: [0x80003938]:0xFFFFFFFEFFFFFFEF




Last Coverpoint : ['rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x800019cc]:KMMWT2_U t6, t5, t4
	-[0x800019d0]:sd t6, 1376(ra)
Current Store : [0x800019d4] : sd t5, 1384(ra) -- Store: [0x80003948]:0x00400000FFFFFBFF




Last Coverpoint : ['rs1_w0_val == -5']
Last Code Sequence : 
	-[0x800019f8]:KMMWT2_U t6, t5, t4
	-[0x800019fc]:sd t6, 1392(ra)
Current Store : [0x80001a00] : sd t5, 1400(ra) -- Store: [0x80003958]:0xFFFFFFFAFFFFFFFB




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80001a20]:KMMWT2_U t6, t5, t4
	-[0x80001a24]:sd t6, 1408(ra)
Current Store : [0x80001a28] : sd t5, 1416(ra) -- Store: [0x80003968]:0xEFFFFFFFFFFFFFFE




Last Coverpoint : ['rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80001a50]:KMMWT2_U t6, t5, t4
	-[0x80001a54]:sd t6, 1424(ra)
Current Store : [0x80001a58] : sd t5, 1432(ra) -- Store: [0x80003978]:0x0002000010000000




Last Coverpoint : ['rs1_w1_val == 64', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80001a7c]:KMMWT2_U t6, t5, t4
	-[0x80001a80]:sd t6, 1440(ra)
Current Store : [0x80001a84] : sd t5, 1448(ra) -- Store: [0x80003988]:0x0000004008000000




Last Coverpoint : ['rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80001aa4]:KMMWT2_U t6, t5, t4
	-[0x80001aa8]:sd t6, 1456(ra)
Current Store : [0x80001aac] : sd t5, 1464(ra) -- Store: [0x80003998]:0xFFFFFF7F02000000




Last Coverpoint : ['rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80001ad4]:KMMWT2_U t6, t5, t4
	-[0x80001ad8]:sd t6, 1472(ra)
Current Store : [0x80001adc] : sd t5, 1480(ra) -- Store: [0x800039a8]:0xFFFDFFFF00800000




Last Coverpoint : ['rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x80001b04]:KMMWT2_U t6, t5, t4
	-[0x80001b08]:sd t6, 1488(ra)
Current Store : [0x80001b0c] : sd t5, 1496(ra) -- Store: [0x800039b8]:0x0008000000200000




Last Coverpoint : ['rs2_h1_val == -1']
Last Code Sequence : 
	-[0x80001b2c]:KMMWT2_U t6, t5, t4
	-[0x80001b30]:sd t6, 1504(ra)
Current Store : [0x80001b34] : sd t5, 1512(ra) -- Store: [0x800039c8]:0xFF7FFFFF04000000




Last Coverpoint : ['opcode : kmmwt2.u', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_h3_val == 8192', 'rs2_h2_val == 32', 'rs2_h1_val == 2', 'rs2_h0_val == -32768', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80001b58]:KMMWT2_U t6, t5, t4
	-[0x80001b5c]:sd t6, 1520(ra)
Current Store : [0x80001b60] : sd t5, 1528(ra) -- Store: [0x800039d8]:0xFFFFFFF8FFFFFFFF





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

|s.no|            signature             |                                                                                                          coverpoints                                                                                                           |                                  code                                   |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000009500080400|- opcode : kmmwt2.u<br> - rs1 : x27<br> - rs2 : x27<br> - rd : x16<br> - rs1 == rs2 != rd<br> - rs2_h3_val == -9<br> - rs2_h1_val == -513<br>                                                                                   |[0x800003c0]:KMMWT2_U a6, s11, s11<br> [0x800003c4]:sd a6, 0(gp)<br>     |
|   2|[0x80003220]<br>0x38E4471E7FFFFFFA|- rs1 : x23<br> - rs2 : x23<br> - rd : x23<br> - rs1 == rs2 == rd<br> - rs2_h3_val == -21846<br> - rs2_h1_val == -32768<br>                                                                                                     |[0x800003f0]:KMMWT2_U s7, s7, s7<br> [0x800003f4]:sd s7, 16(gp)<br>      |
|   3|[0x80003230]<br>0x0000555500002000|- rs1 : x1<br> - rs2 : x10<br> - rd : x29<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_h3_val == 21845<br> - rs2_h1_val == -2<br> - rs2_h0_val == -2049<br> - rs1_w1_val == 32768<br> - rs1_w0_val == -134217729<br> |[0x80000424]:KMMWT2_U t4, ra, a0<br> [0x80000428]:sd t4, 32(gp)<br>      |
|   4|[0x80003240]<br>0xFFFF8000FFFFDFFC|- rs1 : x18<br> - rs2 : x24<br> - rd : x18<br> - rs1 == rd != rs2<br> - rs2_h3_val == 32767<br> - rs2_h2_val == 256<br> - rs2_h1_val == -2049<br> - rs2_h0_val == -1<br> - rs1_w1_val == -32769<br> - rs1_w0_val == 131072<br>  |[0x80000454]:KMMWT2_U s2, s2, s8<br> [0x80000458]:sd s2, 48(gp)<br>      |
|   5|[0x80003250]<br>0x00080021FFFFFE80|- rs1 : x2<br> - rs2 : x9<br> - rd : x9<br> - rs2 == rd != rs1<br> - rs2_h3_val == -16385<br> - rs2_h2_val == 4096<br> - rs1_w1_val == -1048577<br> - rs1_w0_val == -4194305<br>                                                |[0x80000488]:KMMWT2_U s1, sp, s1<br> [0x8000048c]:sd s1, 64(gp)<br>      |
|   6|[0x80003260]<br>0x0000000000000000|- rs1 : x8<br> - rs2 : x0<br> - rd : x26<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h1_val == 0<br> - rs2_h0_val == 0<br> - rs1_w1_val == -8388609<br> - rs1_w0_val == 67108864<br>                                  |[0x800004b0]:KMMWT2_U s10, fp, zero<br> [0x800004b4]:sd s10, 80(gp)<br>  |
|   7|[0x80003270]<br>0x00000000FFFFBE00|- rs1 : x13<br> - rs2 : x6<br> - rd : x14<br> - rs2_h3_val == -4097<br> - rs2_h2_val == -8193<br> - rs2_h1_val == -33<br> - rs2_h0_val == -5<br> - rs1_w1_val == 1<br> - rs1_w0_val == 16777216<br>                             |[0x800004dc]:KMMWT2_U a4, a3, t1<br> [0x800004e0]:sd a4, 96(gp)<br>      |
|   8|[0x80003280]<br>0x0000001000000002|- rs1 : x22<br> - rs2 : x28<br> - rd : x7<br> - rs2_h3_val == -2049<br> - rs2_h1_val == -8193<br> - rs2_h0_val == 2<br> - rs1_w1_val == -257<br>                                                                                |[0x8000050c]:KMMWT2_U t2, s6, t3<br> [0x80000510]:sd t2, 112(gp)<br>     |
|   9|[0x80003290]<br>0x000000002AAA8000|- rs1 : x26<br> - rs2 : x30<br> - rd : x8<br> - rs2_h3_val == -1025<br> - rs2_h1_val == 21845<br> - rs2_h0_val == 32<br> - rs1_w1_val == 8<br> - rs1_w0_val == 1073741824<br>                                                   |[0x80000538]:KMMWT2_U fp, s10, t5<br> [0x8000053c]:sd fp, 128(gp)<br>    |
|  10|[0x800032a0]<br>0x0000008000000000|- rs1 : x29<br> - rs2 : x18<br> - rd : x22<br> - rs2_h3_val == -513<br> - rs2_h2_val == 4<br> - rs2_h0_val == -4097<br> - rs1_w1_val == -8193<br>                                                                               |[0x8000056c]:KMMWT2_U s6, t4, s2<br> [0x80000570]:sd s6, 144(gp)<br>     |
|  11|[0x800032b0]<br>0x00000000000000A0|- rs1 : x11<br> - rs2 : x31<br> - rd : x12<br> - rs2_h3_val == -257<br> - rs2_h2_val == 16384<br> - rs2_h0_val == -16385<br> - rs1_w0_val == 1048576<br>                                                                        |[0x80000598]:KMMWT2_U a2, a1, t6<br> [0x8000059c]:sd a2, 160(gp)<br>     |
|  12|[0x800032c0]<br>0xFFFFEFE000000050|- rs1 : x15<br> - rs2 : x21<br> - rd : x25<br> - rs2_h3_val == -129<br> - rs2_h2_val == 32767<br> - rs1_w1_val == 1048576<br> - rs1_w0_val == 524288<br>                                                                        |[0x800005cc]:KMMWT2_U s9, a5, s5<br> [0x800005d0]:sd s9, 176(gp)<br>     |
|  13|[0x800032d0]<br>0x0000008200000008|- rs1 : x4<br> - rs2 : x26<br> - rd : x5<br> - rs2_h3_val == -65<br> - rs2_h2_val == 64<br> - rs2_h1_val == 1024<br> - rs2_h0_val == 1024<br> - rs1_w1_val == -65537<br> - rs1_w0_val == 256<br>                                |[0x800005f8]:KMMWT2_U t0, tp, s10<br> [0x800005fc]:sd t0, 192(gp)<br>    |
|  14|[0x800032e0]<br>0x00000004FFFFFFFC|- rs1 : x5<br> - rs2 : x2<br> - rd : x21<br> - rs2_h3_val == -33<br> - rs2_h2_val == -33<br> - rs2_h1_val == 128<br> - rs2_h0_val == 128<br> - rs1_w1_val == -4097<br> - rs1_w0_val == -1025<br>                                |[0x80000628]:KMMWT2_U s5, t0, sp<br> [0x8000062c]:sd s5, 0(s1)<br>       |
|  15|[0x800032f0]<br>0xFFFFFFFE00000001|- rs1 : x25<br> - rs2 : x17<br> - rd : x11<br> - rs2_h3_val == -17<br> - rs2_h0_val == -17<br> - rs1_w1_val == 4096<br> - rs1_w0_val == -4097<br>                                                                               |[0x80000664]:KMMWT2_U a1, s9, a7<br> [0x80000668]:sd a1, 16(s1)<br>      |
|  16|[0x80003300]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x16<br> - rd : x3<br> - rs2_h3_val == -5<br> - rs2_h2_val == -5<br> - rs2_h0_val == 64<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                                                   |[0x80000694]:KMMWT2_U gp, zero, a6<br> [0x80000698]:sd gp, 32(s1)<br>    |
|  17|[0x80003310]<br>0x0000000100000006|- rs1 : x12<br> - rs2 : x22<br> - rd : x30<br> - rs2_h3_val == -3<br> - rs2_h2_val == -1025<br> - rs2_h0_val == -1025<br> - rs1_w0_val == 32768<br>                                                                             |[0x800006c4]:KMMWT2_U t5, a2, s6<br> [0x800006c8]:sd t5, 48(s1)<br>      |
|  18|[0x80003320]<br>0x00000000E0003FFF|- rs1 : x17<br> - rs2 : x12<br> - rd : x20<br> - rs2_h3_val == -2<br> - rs2_h1_val == 32767<br> - rs1_w0_val == -536870913<br>                                                                                                  |[0x800006f4]:KMMWT2_U s4, a7, a2<br> [0x800006f8]:sd s4, 64(s1)<br>      |
|  19|[0x80003330]<br>0xFFFFFFF0FFC00000|- rs1 : x20<br> - rs2 : x29<br> - rd : x4<br> - rs2_h3_val == -32768<br> - rs2_h0_val == -2<br> - rs1_w1_val == 16<br> - rs1_w0_val == 4194304<br>                                                                              |[0x8000072c]:KMMWT2_U tp, s4, t4<br> [0x80000730]:sd tp, 80(s1)<br>      |
|  20|[0x80003340]<br>0xF000000000000000|- rs1 : x24<br> - rs2 : x14<br> - rd : x28<br> - rs2_h3_val == 16384<br> - rs2_h1_val == -17<br> - rs1_w1_val == -536870913<br>                                                                                                 |[0x80000760]:KMMWT2_U t3, s8, a4<br> [0x80000764]:sd t3, 96(s1)<br>      |
|  21|[0x80003350]<br>0x0000000000000000|- rs1 : x10<br> - rs2 : x1<br> - rd : x0<br> - rs2_h3_val == 8192<br> - rs2_h2_val == 32<br> - rs2_h1_val == 2<br> - rs2_h0_val == -32768<br> - rs1_w0_val == -1<br>                                                            |[0x8000078c]:KMMWT2_U zero, a0, ra<br> [0x80000790]:sd zero, 112(s1)<br> |
|  22|[0x80003360]<br>0x0000800000000001|- rs1 : x31<br> - rs2 : x15<br> - rd : x13<br> - rs2_h3_val == 4096<br> - rs2_h1_val == -257<br> - rs1_w1_val == 262144<br> - rs1_w0_val == -65<br>                                                                             |[0x800007c8]:KMMWT2_U a3, t6, a5<br> [0x800007cc]:sd a3, 128(s1)<br>     |
|  23|[0x80003370]<br>0x0001000000000000|- rs1 : x7<br> - rs2 : x4<br> - rd : x10<br> - rs2_h3_val == 2048<br> - rs2_h2_val == -3<br> - rs2_h0_val == -3<br> - rs1_w0_val == -3<br>                                                                                      |[0x800007fc]:KMMWT2_U a0, t2, tp<br> [0x80000800]:sd a0, 144(s1)<br>     |
|  24|[0x80003380]<br>0x02AAAAAB00000006|- rs1 : x30<br> - rs2 : x3<br> - rd : x1<br> - rs2_h3_val == 1024<br> - rs2_h1_val == -21846<br> - rs1_w1_val == 1431655765<br> - rs1_w0_val == -9<br>                                                                          |[0x80000830]:KMMWT2_U ra, t5, gp<br> [0x80000834]:sd ra, 160(s1)<br>     |
|  25|[0x80003390]<br>0xFFFFE00000000000|- rs1 : x3<br> - rs2 : x8<br> - rd : x24<br> - rs2_h3_val == 512<br> - rs2_h0_val == 1<br> - rs1_w1_val == -524289<br>                                                                                                          |[0x80000864]:KMMWT2_U s8, gp, fp<br> [0x80000868]:sd s8, 176(s1)<br>     |
|  26|[0x800033a0]<br>0xFF00000000080001|- rs1 : x21<br> - rs2 : x11<br> - rd : x2<br> - rs2_h3_val == 256<br> - rs2_h2_val == -9<br> - rs1_w1_val == -2147483648<br> - rs1_w0_val == -1048577<br>                                                                       |[0x80000898]:KMMWT2_U sp, s5, a1<br> [0x8000089c]:sd sp, 192(s1)<br>     |
|  27|[0x800033b0]<br>0x0000000000000000|- rs1 : x14<br> - rs2 : x19<br> - rd : x17<br> - rs2_h3_val == 128<br> - rs2_h2_val == -129<br>                                                                                                                                 |[0x800008c8]:KMMWT2_U a7, a4, s3<br> [0x800008cc]:sd a7, 208(s1)<br>     |
|  28|[0x800033c0]<br>0xFFFFFFFF00000000|- rs1 : x28<br> - rs2 : x5<br> - rd : x27<br> - rs2_h3_val == 64<br> - rs2_h2_val == 1024<br> - rs2_h1_val == -5<br> - rs1_w1_val == -513<br>                                                                                   |[0x800008f8]:KMMWT2_U s11, t3, t0<br> [0x800008fc]:sd s11, 224(s1)<br>   |
|  29|[0x800033d0]<br>0x0000000000000002|- rs1 : x6<br> - rs2 : x25<br> - rd : x31<br> - rs2_h3_val == 32<br> - rs2_h0_val == -257<br> - rs1_w1_val == -17<br> - rs1_w0_val == 8192<br>                                                                                  |[0x80000928]:KMMWT2_U t6, t1, s9<br> [0x8000092c]:sd t6, 240(s1)<br>     |
|  30|[0x800033e0]<br>0x0000100000000010|- rs1 : x16<br> - rs2 : x13<br> - rd : x6<br> - rs2_h3_val == 16<br> - rs1_w1_val == 8388608<br> - rs1_w0_val == -2049<br>                                                                                                      |[0x80000964]:KMMWT2_U t1, a6, a3<br> [0x80000968]:sd t1, 0(ra)<br>       |
|  31|[0x800033f0]<br>0xFFFFFFF800000000|- rs1 : x9<br> - rs2 : x7<br> - rd : x19<br> - rs2_h3_val == 8<br> - rs2_h2_val == -257<br>                                                                                                                                     |[0x80000994]:KMMWT2_U s3, s1, t2<br> [0x80000998]:sd s3, 16(ra)<br>      |
|  32|[0x80003400]<br>0x0000000000000100|- rs1 : x19<br> - rs2 : x20<br> - rd : x15<br> - rs2_h3_val == 4<br> - rs2_h1_val == 8<br> - rs2_h0_val == 512<br> - rs1_w1_val == 32<br>                                                                                       |[0x800009c4]:KMMWT2_U a5, s3, s4<br> [0x800009c8]:sd a5, 32(ra)<br>      |
|  33|[0x80003410]<br>0x00004000FFFFFFFC|- rs2_h3_val == 2<br> - rs2_h2_val == 16<br> - rs1_w1_val == 268435456<br>                                                                                                                                                      |[0x800009f0]:KMMWT2_U t6, t5, t4<br> [0x800009f4]:sd t6, 48(ra)<br>      |
|  34|[0x80003420]<br>0x0000000000000000|- rs2_h3_val == 1<br> - rs1_w0_val == 1024<br>                                                                                                                                                                                  |[0x80000a20]:KMMWT2_U t6, t5, t4<br> [0x80000a24]:sd t6, 64(ra)<br>      |
|  35|[0x80003430]<br>0x0000000000000001|- rs2_h0_val == -129<br> - rs1_w0_val == 2048<br>                                                                                                                                                                               |[0x80000a4c]:KMMWT2_U t6, t5, t4<br> [0x80000a50]:sd t6, 80(ra)<br>      |
|  36|[0x80003440]<br>0xFFFFFC00FFFC0000|- rs2_h3_val == -1<br> - rs2_h0_val == -33<br> - rs1_w1_val == 33554432<br> - rs1_w0_val == 1431655765<br>                                                                                                                      |[0x80000a8c]:KMMWT2_U t6, t5, t4<br> [0x80000a90]:sd t6, 96(ra)<br>      |
|  37|[0x80003450]<br>0x00000000FFFFA000|- rs2_h2_val == -21846<br>                                                                                                                                                                                                      |[0x80000abc]:KMMWT2_U t6, t5, t4<br> [0x80000ac0]:sd t6, 112(ra)<br>     |
|  38|[0x80003460]<br>0x0001000000000008|- rs2_h2_val == 21845<br>                                                                                                                                                                                                       |[0x80000aec]:KMMWT2_U t6, t5, t4<br> [0x80000af0]:sd t6, 128(ra)<br>     |
|  39|[0x80003470]<br>0x0000000000010000|- rs2_h2_val == -16385<br> - rs2_h1_val == 1<br> - rs1_w0_val == 2147483647<br>                                                                                                                                                 |[0x80000b1c]:KMMWT2_U t6, t5, t4<br> [0x80000b20]:sd t6, 144(ra)<br>     |
|  40|[0x80003480]<br>0xFFFFFFF8FF000000|- rs2_h2_val == -4097<br> - rs2_h0_val == 4096<br> - rs1_w1_val == -33<br>                                                                                                                                                      |[0x80000b50]:KMMWT2_U t6, t5, t4<br> [0x80000b54]:sd t6, 160(ra)<br>     |
|  41|[0x80003490]<br>0xFFFFC800FFFE0000|- rs2_h2_val == -2049<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == -33554433<br>                                                                                                                                            |[0x80000b88]:KMMWT2_U t6, t5, t4<br> [0x80000b8c]:sd t6, 176(ra)<br>     |
|  42|[0x800034a0]<br>0x05555000F8000000|- rs2_h2_val == -513<br> - rs2_h1_val == 4096<br> - rs1_w1_val == 134217728<br> - rs1_w0_val == -1073741825<br>                                                                                                                 |[0x80000bbc]:KMMWT2_U t6, t5, t4<br> [0x80000bc0]:sd t6, 192(ra)<br>     |
|  43|[0x800034b0]<br>0x02000000FFFFFF40|- rs2_h1_val == -3<br> - rs1_w0_val == 2097152<br>                                                                                                                                                                              |[0x80000bf0]:KMMWT2_U t6, t5, t4<br> [0x80000bf4]:sd t6, 208(ra)<br>     |
|  44|[0x800034c0]<br>0x00000000FFFFFFF0|- rs1_w0_val == 262144<br>                                                                                                                                                                                                      |[0x80000c20]:KMMWT2_U t6, t5, t4<br> [0x80000c24]:sd t6, 224(ra)<br>     |
|  45|[0x800034d0]<br>0x00000000FFFFFFF4|- rs2_h0_val == 32767<br> - rs1_w0_val == 65536<br>                                                                                                                                                                             |[0x80000c50]:KMMWT2_U t6, t5, t4<br> [0x80000c54]:sd t6, 240(ra)<br>     |
|  46|[0x800034e0]<br>0xFFFFC80000000020|- rs2_h1_val == 64<br> - rs1_w1_val == -67108865<br> - rs1_w0_val == 16384<br>                                                                                                                                                  |[0x80000c80]:KMMWT2_U t6, t5, t4<br> [0x80000c84]:sd t6, 256(ra)<br>     |
|  47|[0x800034f0]<br>0x0000000000000004|- rs2_h2_val == -32768<br> - rs2_h1_val == 32<br> - rs1_w0_val == 4096<br>                                                                                                                                                      |[0x80000cb0]:KMMWT2_U t6, t5, t4<br> [0x80000cb4]:sd t6, 272(ra)<br>     |
|  48|[0x80003500]<br>0x0000005500000004|- rs2_h2_val == 512<br> - rs2_h1_val == 256<br> - rs2_h0_val == 8<br> - rs1_w1_val == 128<br> - rs1_w0_val == 512<br>                                                                                                           |[0x80000ce0]:KMMWT2_U t6, t5, t4<br> [0x80000ce4]:sd t6, 288(ra)<br>     |
|  49|[0x80003510]<br>0x00000001FFFFFFFE|- rs1_w1_val == 8192<br> - rs1_w0_val == 128<br>                                                                                                                                                                                |[0x80000d0c]:KMMWT2_U t6, t5, t4<br> [0x80000d10]:sd t6, 304(ra)<br>     |
|  50|[0x80003520]<br>0xFFBFE000FFFFFFE0|- rs2_h0_val == -65<br> - rs1_w0_val == 64<br>                                                                                                                                                                                  |[0x80000d3c]:KMMWT2_U t6, t5, t4<br> [0x80000d40]:sd t6, 320(ra)<br>     |
|  51|[0x80003530]<br>0x0000200000000004|- rs2_h0_val == 256<br> - rs1_w1_val == 16384<br> - rs1_w0_val == 32<br>                                                                                                                                                        |[0x80000d6c]:KMMWT2_U t6, t5, t4<br> [0x80000d70]:sd t6, 336(ra)<br>     |
|  52|[0x80003540]<br>0x0100040100000000|- rs2_h2_val == -65<br> - rs1_w1_val == -33554433<br> - rs1_w0_val == 16<br>                                                                                                                                                    |[0x80000da0]:KMMWT2_U t6, t5, t4<br> [0x80000da4]:sd t6, 352(ra)<br>     |
|  53|[0x80003550]<br>0x0000000100000000|- rs2_h2_val == 8192<br> - rs2_h1_val == -65<br> - rs1_w0_val == 8<br>                                                                                                                                                          |[0x80000dcc]:KMMWT2_U t6, t5, t4<br> [0x80000dd0]:sd t6, 368(ra)<br>     |
|  54|[0x80003560]<br>0xFFFFF00000000000|- rs1_w0_val == 4<br>                                                                                                                                                                                                           |[0x80000e00]:KMMWT2_U t6, t5, t4<br> [0x80000e04]:sd t6, 384(ra)<br>     |
|  55|[0x80003570]<br>0xFFFFFFFF00000000|- rs1_w1_val == -5<br> - rs1_w0_val == 2<br>                                                                                                                                                                                    |[0x80000e30]:KMMWT2_U t6, t5, t4<br> [0x80000e34]:sd t6, 400(ra)<br>     |
|  56|[0x80003580]<br>0x0000000000000000|- rs1_w0_val == 1<br>                                                                                                                                                                                                           |[0x80000e60]:KMMWT2_U t6, t5, t4<br> [0x80000e64]:sd t6, 416(ra)<br>     |
|  57|[0x80003590]<br>0xFFFC000000000000|- rs2_h2_val == 2048<br>                                                                                                                                                                                                        |[0x80000e84]:KMMWT2_U t6, t5, t4<br> [0x80000e88]:sd t6, 432(ra)<br>     |
|  58|[0x800035a0]<br>0x0000000000000000|- rs2_h2_val == -17<br>                                                                                                                                                                                                         |[0x80000eb4]:KMMWT2_U t6, t5, t4<br> [0x80000eb8]:sd t6, 448(ra)<br>     |
|  59|[0x800035b0]<br>0x00010000FFFFFFD5|- rs2_h2_val == -2<br>                                                                                                                                                                                                          |[0x80000ee4]:KMMWT2_U t6, t5, t4<br> [0x80000ee8]:sd t6, 464(ra)<br>     |
|  60|[0x800035c0]<br>0x0000000000004000|- rs2_h2_val == 128<br> - rs2_h0_val == -9<br>                                                                                                                                                                                  |[0x80000f0c]:KMMWT2_U t6, t5, t4<br> [0x80000f10]:sd t6, 480(ra)<br>     |
|  61|[0x800035d0]<br>0x0000000000000000|- rs2_h2_val == 8<br>                                                                                                                                                                                                           |[0x80000f38]:KMMWT2_U t6, t5, t4<br> [0x80000f3c]:sd t6, 496(ra)<br>     |
|  62|[0x800035e0]<br>0xFFFFFE0000401000|- rs2_h2_val == 2<br> - rs2_h1_val == -1025<br> - rs2_h0_val == -21846<br> - rs1_w1_val == 2097152<br>                                                                                                                          |[0x80000f6c]:KMMWT2_U t6, t5, t4<br> [0x80000f70]:sd t6, 512(ra)<br>     |
|  63|[0x800035f0]<br>0xFFFFFFFF00200001|- rs2_h3_val == -8193<br> - rs2_h2_val == 1<br> - rs1_w1_val == 2<br> - rs1_w0_val == -2097153<br>                                                                                                                              |[0x80000f98]:KMMWT2_U t6, t5, t4<br> [0x80000f9c]:sd t6, 528(ra)<br>     |
|  64|[0x80003600]<br>0x0000000000000000|- rs2_h2_val == -1<br> - rs1_w1_val == 256<br>                                                                                                                                                                                  |[0x80000fc4]:KMMWT2_U t6, t5, t4<br> [0x80000fc8]:sd t6, 544(ra)<br>     |
|  65|[0x80003610]<br>0x0000020000200081|- rs2_h1_val == -16385<br>                                                                                                                                                                                                      |[0x80000ff4]:KMMWT2_U t6, t5, t4<br> [0x80000ff8]:sd t6, 560(ra)<br>     |
|  66|[0x80003620]<br>0xFFFFFFF8FFFFBFFC|- rs2_h1_val == -4097<br>                                                                                                                                                                                                       |[0x8000101c]:KMMWT2_U t6, t5, t4<br> [0x80001020]:sd t6, 576(ra)<br>     |
|  67|[0x80003630]<br>0xFEFF800000204000|- rs2_h1_val == -129<br>                                                                                                                                                                                                        |[0x80001054]:KMMWT2_U t6, t5, t4<br> [0x80001058]:sd t6, 592(ra)<br>     |
|  68|[0x80003640]<br>0x0000000000000000|- rs2_h1_val == -9<br> - rs1_w1_val == -9<br>                                                                                                                                                                                   |[0x8000107c]:KMMWT2_U t6, t5, t4<br> [0x80001080]:sd t6, 608(ra)<br>     |
|  69|[0x80003650]<br>0xFFFF000000000080|- rs2_h1_val == 16384<br> - rs1_w1_val == -2097153<br>                                                                                                                                                                          |[0x800010a8]:KMMWT2_U t6, t5, t4<br> [0x800010ac]:sd t6, 624(ra)<br>     |
|  70|[0x80003660]<br>0x00000008FE000000|- rs2_h1_val == 8192<br> - rs1_w1_val == 2048<br>                                                                                                                                                                               |[0x800010d4]:KMMWT2_U t6, t5, t4<br> [0x800010d8]:sd t6, 640(ra)<br>     |
|  71|[0x80003670]<br>0x0000000400001000|- rs2_h1_val == 2048<br> - rs2_h0_val == -513<br>                                                                                                                                                                               |[0x80001104]:KMMWT2_U t6, t5, t4<br> [0x80001108]:sd t6, 656(ra)<br>     |
|  72|[0x80003680]<br>0x0000000000000000|- rs2_h1_val == 512<br> - rs1_w1_val == -2<br>                                                                                                                                                                                  |[0x8000112c]:KMMWT2_U t6, t5, t4<br> [0x80001130]:sd t6, 672(ra)<br>     |
|  73|[0x80003690]<br>0x00000000FFFFC000|- rs2_h0_val == 16384<br> - rs1_w0_val == -16385<br>                                                                                                                                                                            |[0x8000115c]:KMMWT2_U t6, t5, t4<br> [0x80001160]:sd t6, 688(ra)<br>     |
|  74|[0x800036a0]<br>0xFFFF800000000000|- rs2_h0_val == 8192<br>                                                                                                                                                                                                        |[0x8000118c]:KMMWT2_U t6, t5, t4<br> [0x80001190]:sd t6, 704(ra)<br>     |
|  75|[0x800036b0]<br>0x007FFE0000000004|- rs2_h0_val == 2048<br> - rs1_w1_val == 16777216<br>                                                                                                                                                                           |[0x800011c4]:KMMWT2_U t6, t5, t4<br> [0x800011c8]:sd t6, 720(ra)<br>     |
|  76|[0x800036c0]<br>0xFFFE000000000200|- rs2_h0_val == 16<br> - rs1_w1_val == 131072<br>                                                                                                                                                                               |[0x800011f4]:KMMWT2_U t6, t5, t4<br> [0x800011f8]:sd t6, 736(ra)<br>     |
|  77|[0x800036d0]<br>0x00018000FFFFFF80|- rs2_h0_val == 4<br> - rs1_w0_val == -524289<br>                                                                                                                                                                               |[0x80001224]:KMMWT2_U t6, t5, t4<br> [0x80001228]:sd t6, 752(ra)<br>     |
|  78|[0x800036e0]<br>0x0005555505555555|- rs1_w1_val == -1431655766<br>                                                                                                                                                                                                 |[0x80001260]:KMMWT2_U t6, t5, t4<br> [0x80001264]:sd t6, 768(ra)<br>     |
|  79|[0x800036f0]<br>0xFFFB000000000400|- rs1_w1_val == 2147483647<br>                                                                                                                                                                                                  |[0x80001298]:KMMWT2_U t6, t5, t4<br> [0x8000129c]:sd t6, 784(ra)<br>     |
|  80|[0x80003700]<br>0xFFFF0000000FFFC0|- rs1_w1_val == -1073741825<br>                                                                                                                                                                                                 |[0x800012c4]:KMMWT2_U t6, t5, t4<br> [0x800012c8]:sd t6, 800(ra)<br>     |
|  81|[0x80003710]<br>0x1000000100038000|- rs1_w1_val == -268435457<br>                                                                                                                                                                                                  |[0x800012f8]:KMMWT2_U t6, t5, t4<br> [0x800012fc]:sd t6, 816(ra)<br>     |
|  82|[0x80003720]<br>0xFE00000000020000|- rs1_w1_val == -134217729<br> - rs1_w0_val == 536870912<br>                                                                                                                                                                    |[0x80001328]:KMMWT2_U t6, t5, t4<br> [0x8000132c]:sd t6, 832(ra)<br>     |
|  83|[0x80003730]<br>0x00000E0000000000|- rs1_w1_val == -16777217<br> - rs1_w0_val == -129<br>                                                                                                                                                                          |[0x80001358]:KMMWT2_U t6, t5, t4<br> [0x8000135c]:sd t6, 848(ra)<br>     |
|  84|[0x80003740]<br>0xFFF80000FFFFFE00|- rs2_h1_val == 16<br> - rs1_w1_val == -4194305<br>                                                                                                                                                                             |[0x80001390]:KMMWT2_U t6, t5, t4<br> [0x80001394]:sd t6, 864(ra)<br>     |
|  85|[0x80003750]<br>0xFFFFFFF800000000|- rs1_w1_val == -262145<br>                                                                                                                                                                                                     |[0x800013c4]:KMMWT2_U t6, t5, t4<br> [0x800013c8]:sd t6, 880(ra)<br>     |
|  86|[0x80003760]<br>0x0000040400000000|- rs1_w1_val == -131073<br>                                                                                                                                                                                                     |[0x800013f8]:KMMWT2_U t6, t5, t4<br> [0x800013fc]:sd t6, 896(ra)<br>     |
|  87|[0x80003770]<br>0x00000000FAAAAFFF|- rs1_w1_val == -16385<br>                                                                                                                                                                                                      |[0x80001424]:KMMWT2_U t6, t5, t4<br> [0x80001428]:sd t6, 912(ra)<br>     |
|  88|[0x80003780]<br>0x0000000100001200|- rs1_w1_val == -2049<br>                                                                                                                                                                                                       |[0x80001454]:KMMWT2_U t6, t5, t4<br> [0x80001458]:sd t6, 928(ra)<br>     |
|  89|[0x80003790]<br>0x0000040100000000|- rs1_w1_val == -1025<br>                                                                                                                                                                                                       |[0x80001488]:KMMWT2_U t6, t5, t4<br> [0x8000148c]:sd t6, 944(ra)<br>     |
|  90|[0x800037a0]<br>0x0000000000012000|- rs1_w1_val == -129<br> - rs1_w0_val == -268435457<br>                                                                                                                                                                         |[0x800014bc]:KMMWT2_U t6, t5, t4<br> [0x800014c0]:sd t6, 960(ra)<br>     |
|  91|[0x800037b0]<br>0x0000000000000002|- rs1_w1_val == -65<br>                                                                                                                                                                                                         |[0x800014e8]:KMMWT2_U t6, t5, t4<br> [0x800014ec]:sd t6, 976(ra)<br>     |
|  92|[0x800037c0]<br>0x0000000000000000|- rs1_w1_val == -3<br>                                                                                                                                                                                                          |[0x80001510]:KMMWT2_U t6, t5, t4<br> [0x80001514]:sd t6, 992(ra)<br>     |
|  93|[0x800037d0]<br>0x0020000000060000|- rs1_w0_val == -2147483648<br> - rs1_w1_val == 1073741824<br>                                                                                                                                                                  |[0x80001544]:KMMWT2_U t6, t5, t4<br> [0x80001548]:sd t6, 1008(ra)<br>    |
|  94|[0x800037e0]<br>0x0001800000101000|- rs1_w1_val == 536870912<br>                                                                                                                                                                                                   |[0x8000157c]:KMMWT2_U t6, t5, t4<br> [0x80001580]:sd t6, 1024(ra)<br>    |
|  95|[0x800037f0]<br>0xFFFFFFF4FFE00000|- rs1_w1_val == 65536<br> - rs1_w0_val == -67108865<br>                                                                                                                                                                         |[0x800015a8]:KMMWT2_U t6, t5, t4<br> [0x800015ac]:sd t6, 1040(ra)<br>    |
|  96|[0x80003800]<br>0x00000040FFEAAABF|- rs1_w1_val == 1024<br>                                                                                                                                                                                                        |[0x800015e4]:KMMWT2_U t6, t5, t4<br> [0x800015e8]:sd t6, 1056(ra)<br>    |
|  97|[0x80003810]<br>0xFFFFFFF800000240|- rs1_w1_val == 512<br>                                                                                                                                                                                                         |[0x80001610]:KMMWT2_U t6, t5, t4<br> [0x80001614]:sd t6, 1072(ra)<br>    |
|  98|[0x80003820]<br>0xFFFFFFFDFFFFFF90|- rs1_w1_val == 4<br>                                                                                                                                                                                                           |[0x80001644]:KMMWT2_U t6, t5, t4<br> [0x80001648]:sd t6, 1088(ra)<br>    |
|  99|[0x80003840]<br>0x0000000000000000|- rs1_w1_val == -1<br>                                                                                                                                                                                                          |[0x80001694]:KMMWT2_U t6, t5, t4<br> [0x80001698]:sd t6, 1120(ra)<br>    |
| 100|[0x80003850]<br>0xFFBFC000FD555555|- rs1_w0_val == -1431655766<br>                                                                                                                                                                                                 |[0x800016d0]:KMMWT2_U t6, t5, t4<br> [0x800016d4]:sd t6, 1136(ra)<br>    |
| 101|[0x80003860]<br>0xFFFFFE0000001000|- rs1_w0_val == -16777217<br>                                                                                                                                                                                                   |[0x80001700]:KMMWT2_U t6, t5, t4<br> [0x80001704]:sd t6, 1152(ra)<br>    |
| 102|[0x80003870]<br>0xFFFFFE0000000600|- rs1_w0_val == -8388609<br>                                                                                                                                                                                                    |[0x80001734]:KMMWT2_U t6, t5, t4<br> [0x80001738]:sd t6, 1168(ra)<br>    |
| 103|[0x80003880]<br>0xFFFFF40000001008|- rs1_w0_val == -262145<br>                                                                                                                                                                                                     |[0x80001768]:KMMWT2_U t6, t5, t4<br> [0x8000176c]:sd t6, 1184(ra)<br>    |
| 104|[0x80003890]<br>0x0000000000000008|- rs1_w0_val == -131073<br>                                                                                                                                                                                                     |[0x8000179c]:KMMWT2_U t6, t5, t4<br> [0x800017a0]:sd t6, 1200(ra)<br>    |
| 105|[0x800038a0]<br>0x0000000000000082|- rs1_w0_val == -65537<br>                                                                                                                                                                                                      |[0x800017d0]:KMMWT2_U t6, t5, t4<br> [0x800017d4]:sd t6, 1216(ra)<br>    |
| 106|[0x800038b0]<br>0xFE00000000000002|- rs1_w0_val == -32769<br>                                                                                                                                                                                                      |[0x80001808]:KMMWT2_U t6, t5, t4<br> [0x8000180c]:sd t6, 1232(ra)<br>    |
| 107|[0x800038c0]<br>0xFFFE000000000000|- rs2_h1_val == 4<br>                                                                                                                                                                                                           |[0x8000183c]:KMMWT2_U t6, t5, t4<br> [0x80001840]:sd t6, 1248(ra)<br>    |
| 108|[0x800038d0]<br>0xFFFFF000FFFFFFFF|- rs1_w0_val == -8193<br>                                                                                                                                                                                                       |[0x80001874]:KMMWT2_U t6, t5, t4<br> [0x80001878]:sd t6, 1264(ra)<br>    |
| 109|[0x800038e0]<br>0x0000000000000000|- rs1_w0_val == -33<br>                                                                                                                                                                                                         |[0x8000189c]:KMMWT2_U t6, t5, t4<br> [0x800018a0]:sd t6, 1280(ra)<br>    |
| 110|[0x800038f0]<br>0x0000000000000000|- rs1_w0_val == -513<br>                                                                                                                                                                                                        |[0x800018cc]:KMMWT2_U t6, t5, t4<br> [0x800018d0]:sd t6, 1296(ra)<br>    |
| 111|[0x80003900]<br>0x0000000800000000|- rs2_h0_val == 21845<br>                                                                                                                                                                                                       |[0x80001900]:KMMWT2_U t6, t5, t4<br> [0x80001904]:sd t6, 1312(ra)<br>    |
| 112|[0x80003910]<br>0x0000000000000008|- rs1_w0_val == -257<br>                                                                                                                                                                                                        |[0x80001930]:KMMWT2_U t6, t5, t4<br> [0x80001934]:sd t6, 1328(ra)<br>    |
| 113|[0x80003920]<br>0x00000000FFFFFFFF|- rs2_h0_val == -8193<br>                                                                                                                                                                                                       |[0x80001968]:KMMWT2_U t6, t5, t4<br> [0x8000196c]:sd t6, 1344(ra)<br>    |
| 114|[0x80003930]<br>0x0000000000000000|- rs1_w0_val == -17<br>                                                                                                                                                                                                         |[0x80001998]:KMMWT2_U t6, t5, t4<br> [0x8000199c]:sd t6, 1360(ra)<br>    |
| 115|[0x80003940]<br>0x0000100000000000|- rs1_w1_val == 4194304<br>                                                                                                                                                                                                     |[0x800019cc]:KMMWT2_U t6, t5, t4<br> [0x800019d0]:sd t6, 1376(ra)<br>    |
| 116|[0x80003950]<br>0xFFFFFFFD00000003|- rs1_w0_val == -5<br>                                                                                                                                                                                                          |[0x800019f8]:KMMWT2_U t6, t5, t4<br> [0x800019fc]:sd t6, 1392(ra)<br>    |
| 117|[0x80003960]<br>0xFFFFC00000000000|- rs1_w0_val == -2<br>                                                                                                                                                                                                          |[0x80001a20]:KMMWT2_U t6, t5, t4<br> [0x80001a24]:sd t6, 1408(ra)<br>    |
| 118|[0x80003970]<br>0x00002000F0000000|- rs1_w0_val == 268435456<br>                                                                                                                                                                                                   |[0x80001a50]:KMMWT2_U t6, t5, t4<br> [0x80001a54]:sd t6, 1424(ra)<br>    |
| 119|[0x80003980]<br>0x00000000FFFFA000|- rs1_w1_val == 64<br> - rs1_w0_val == 134217728<br>                                                                                                                                                                            |[0x80001a7c]:KMMWT2_U t6, t5, t4<br> [0x80001a80]:sd t6, 1440(ra)<br>    |
| 120|[0x80003990]<br>0x00000000FFFEFC00|- rs1_w0_val == 33554432<br>                                                                                                                                                                                                    |[0x80001aa4]:KMMWT2_U t6, t5, t4<br> [0x80001aa8]:sd t6, 1456(ra)<br>    |
| 121|[0x800039a0]<br>0x0001555900020000|- rs1_w0_val == 8388608<br>                                                                                                                                                                                                     |[0x80001ad4]:KMMWT2_U t6, t5, t4<br> [0x80001ad8]:sd t6, 1472(ra)<br>    |
| 122|[0x800039b0]<br>0x0000008000000200|- rs1_w1_val == 524288<br>                                                                                                                                                                                                      |[0x80001b04]:KMMWT2_U t6, t5, t4<br> [0x80001b08]:sd t6, 1488(ra)<br>    |
| 123|[0x800039c0]<br>0x00200100FFFFF800|- rs2_h1_val == -1<br>                                                                                                                                                                                                          |[0x80001b2c]:KMMWT2_U t6, t5, t4<br> [0x80001b30]:sd t6, 1504(ra)<br>    |
