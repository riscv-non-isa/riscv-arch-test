
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001ae0')]      |
| SIG_REGION                | [('0x80003210', '0x80003890', '208 dwords')]      |
| COV_LABELS                | kmabt      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmabt-01.S    |
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
      [0x800019d8]:KMABT t6, t5, t4
      [0x800019dc]:sd t6, 1152(ra)
 -- Signature Address: 0x80003840 Data: 0xCCF5F4AFFB5E2AB9
 -- Redundant Coverpoints hit by the op
      - opcode : kmabt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h3_val == 32767
      - rs2_h2_val == 0
      - rs1_h2_val == -32768
      - rs1_h1_val == 2048
      - rs1_h0_val == -1025




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a58]:KMABT t6, t5, t4
      [0x80001a5c]:sd t6, 1184(ra)
 -- Signature Address: 0x80003860 Data: 0xCCF4F2AFFB5ACABB
 -- Redundant Coverpoints hit by the op
      - opcode : kmabt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val == rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val > 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val > 0 and rs2_h2_val < 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val < 0
      - rs1_h0_val == rs2_h0_val
      - rs1_h0_val < 0 and rs2_h0_val < 0
      - rs2_h3_val == 512
      - rs2_h2_val == -2049
      - rs2_h1_val == -2
      - rs2_h0_val == -4097
      - rs1_h3_val == 512
      - rs1_h1_val == 256
      - rs1_h0_val == -4097




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a94]:KMABT t6, t5, t4
      [0x80001a98]:sd t6, 1200(ra)
 -- Signature Address: 0x80003870 Data: 0xCCF8F2AFFB5AD2BB
 -- Redundant Coverpoints hit by the op
      - opcode : kmabt
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_h3_val != rs2_h3_val
      - rs1_h3_val > 0 and rs2_h3_val < 0
      - rs1_h2_val != rs2_h2_val
      - rs1_h2_val < 0 and rs2_h2_val > 0
      - rs1_h1_val != rs2_h1_val
      - rs1_h1_val > 0 and rs2_h1_val > 0
      - rs1_h0_val != rs2_h0_val
      - rs1_h0_val > 0 and rs2_h0_val < 0
      - rs2_h3_val == -32768
      - rs2_h2_val == 512
      - rs2_h1_val == 2
      - rs2_h0_val == -129
      - rs1_h3_val == 2048
      - rs1_h0_val == 1024






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmabt', 'rs1 : x28', 'rs2 : x28', 'rd : x10', 'rs1 == rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val < 0', 'rs1_h2_val == rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val < 0', 'rs1_h1_val == rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == -33', 'rs2_h2_val == -33', 'rs1_h3_val == -33', 'rs1_h2_val == -33']
Last Code Sequence : 
	-[0x800003d8]:KMABT a0, t3, t3
	-[0x800003dc]:sd a0, 0(sp)
Current Store : [0x800003e0] : sd t3, 8(sp) -- Store: [0x80003218]:0xFFDFFFDF0007FFF6




Last Coverpoint : ['rs1 : x12', 'rs2 : x12', 'rd : x12', 'rs1 == rs2 == rd', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h1_val < 0 and rs2_h1_val < 0', 'rs2_h3_val == 512', 'rs2_h2_val == -2049', 'rs2_h1_val == -2', 'rs2_h0_val == -4097', 'rs1_h3_val == 512', 'rs1_h2_val == -2049', 'rs1_h1_val == -2', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80000418]:KMABT a2, a2, a2
	-[0x8000041c]:sd a2, 16(sp)
Current Store : [0x80000420] : sd a2, 24(sp) -- Store: [0x80003228]:0x01F0F5FFFFFF1001




Last Coverpoint : ['rs1 : x15', 'rs2 : x3', 'rd : x26', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val < 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h0_val == -65', 'rs1_h1_val == -33']
Last Code Sequence : 
	-[0x80000454]:KMABT s10, a5, gp
	-[0x80000458]:sd s10, 32(sp)
Current Store : [0x8000045c] : sd a5, 40(sp) -- Store: [0x80003238]:0xC0000003FFDF3FFF




Last Coverpoint : ['rs1 : x11', 'rs2 : x19', 'rd : x11', 'rs1 == rd != rs2', 'rs2_h1_val == 0', 'rs2_h0_val == -3', 'rs1_h3_val == -5', 'rs1_h2_val == -17', 'rs1_h1_val == -9', 'rs1_h0_val == 64']
Last Code Sequence : 
	-[0x80000490]:KMABT a1, a1, s3
	-[0x80000494]:sd a1, 48(sp)
Current Store : [0x80000498] : sd a1, 56(sp) -- Store: [0x80003248]:0xFFFC0066FFF70040




Last Coverpoint : ['rs1 : x5', 'rs2 : x31', 'rd : x31', 'rs2 == rd != rs1', 'rs1_h2_val > 0 and rs2_h2_val > 0', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val < 0 and rs2_h0_val > 0', 'rs2_h2_val == 8192', 'rs2_h1_val == -1', 'rs2_h0_val == 2', 'rs1_h3_val == -65', 'rs1_h2_val == 8192', 'rs1_h1_val == 128', 'rs1_h0_val == -16385']
Last Code Sequence : 
	-[0x800004c8]:KMABT t6, t0, t6
	-[0x800004cc]:sd t6, 64(sp)
Current Store : [0x800004d0] : sd t0, 72(sp) -- Store: [0x80003258]:0xFFBF20000080BFFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x13', 'rd : x6', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs2_h3_val == 256', 'rs2_h2_val == 32767', 'rs2_h1_val == 128', 'rs1_h2_val == -3', 'rs1_h1_val == 64', 'rs1_h0_val == -21846']
Last Code Sequence : 
	-[0x80000500]:KMABT t1, a0, a3
	-[0x80000504]:sd t1, 80(sp)
Current Store : [0x80000508] : sd a0, 88(sp) -- Store: [0x80003268]:0xFFBFFFFD0040AAAA




Last Coverpoint : ['rs1 : x27', 'rs2 : x4', 'rd : x9', 'rs1_h3_val == -513', 'rs1_h2_val == 4096']
Last Code Sequence : 
	-[0x8000053c]:KMABT s1, s11, tp
	-[0x80000540]:sd s1, 96(sp)
Current Store : [0x80000544] : sd s11, 104(sp) -- Store: [0x80003278]:0xFDFF10000009FFFA




Last Coverpoint : ['rs1 : x21', 'rs2 : x6', 'rd : x17', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h1_val < 0 and rs2_h1_val > 0', 'rs1_h0_val > 0 and rs2_h0_val > 0', 'rs2_h2_val == 64', 'rs1_h3_val == 32767', 'rs1_h2_val == -32768', 'rs1_h1_val == -3']
Last Code Sequence : 
	-[0x8000057c]:KMABT a7, s5, t1
	-[0x80000580]:sd a7, 112(sp)
Current Store : [0x80000584] : sd s5, 120(sp) -- Store: [0x80003288]:0x7FFF8000FFFD3FFF




Last Coverpoint : ['rs1 : x30', 'rs2 : x10', 'rd : x8', 'rs2_h3_val == -21846', 'rs2_h2_val == -1025', 'rs2_h1_val == 16', 'rs2_h0_val == -17', 'rs1_h3_val == 256', 'rs1_h2_val == -9', 'rs1_h1_val == -17']
Last Code Sequence : 
	-[0x800005b8]:KMABT fp, t5, a0
	-[0x800005bc]:sd fp, 128(sp)
Current Store : [0x800005c0] : sd t5, 136(sp) -- Store: [0x80003298]:0x0100FFF7FFEF0006




Last Coverpoint : ['rs1 : x6', 'rs2 : x9', 'rd : x25', 'rs2_h3_val == 21845', 'rs2_h2_val == -129', 'rs2_h1_val == 32', 'rs1_h3_val == -8193', 'rs1_h2_val == 21845', 'rs1_h1_val == -8193', 'rs1_h0_val == 0']
Last Code Sequence : 
	-[0x800005f8]:KMABT s9, t1, s1
	-[0x800005fc]:sd s9, 144(sp)
Current Store : [0x80000600] : sd t1, 152(sp) -- Store: [0x800032a8]:0xDFFF5555DFFF0000




Last Coverpoint : ['rs1 : x22', 'rs2 : x29', 'rd : x18', 'rs2_h3_val == 32767', 'rs2_h2_val == -9', 'rs2_h1_val == 4', 'rs2_h0_val == -8193', 'rs1_h3_val == -1', 'rs1_h2_val == 4', 'rs1_h1_val == 16384', 'rs1_h0_val == 4']
Last Code Sequence : 
	-[0x8000062c]:KMABT s2, s6, t4
	-[0x80000630]:sd s2, 160(sp)
Current Store : [0x80000634] : sd s6, 168(sp) -- Store: [0x800032b8]:0xFFFF000440000004




Last Coverpoint : ['rs1 : x16', 'rs2 : x7', 'rd : x1', 'rs2_h3_val == -16385', 'rs2_h2_val == -32768', 'rs2_h1_val == -513', 'rs1_h3_val == -4097', 'rs1_h0_val == 8']
Last Code Sequence : 
	-[0x80000668]:KMABT ra, a6, t2
	-[0x8000066c]:sd ra, 176(sp)
Current Store : [0x80000670] : sd a6, 184(sp) -- Store: [0x800032c8]:0xEFFFFFFAFFFE0008




Last Coverpoint : ['rs1 : x4', 'rs2 : x24', 'rd : x5', 'rs2_h3_val == -8193', 'rs1_h3_val == 1024', 'rs1_h1_val == -16385']
Last Code Sequence : 
	-[0x800006a4]:KMABT t0, tp, s8
	-[0x800006a8]:sd t0, 192(sp)
Current Store : [0x800006ac] : sd tp, 200(sp) -- Store: [0x800032d8]:0x0400F7FFBFFF0006




Last Coverpoint : ['rs1 : x31', 'rs2 : x11', 'rd : x21', 'rs2_h3_val == -4097', 'rs2_h2_val == 16']
Last Code Sequence : 
	-[0x800006e8]:KMABT s5, t6, a1
	-[0x800006ec]:sd s5, 0(t1)
Current Store : [0x800006f0] : sd t6, 8(t1) -- Store: [0x800032e8]:0x00030009FFFEFFFA




Last Coverpoint : ['rs1 : x9', 'rs2 : x2', 'rd : x22', 'rs2_h3_val == -2049', 'rs2_h2_val == -16385', 'rs2_h1_val == 256', 'rs2_h0_val == -21846', 'rs1_h1_val == 256']
Last Code Sequence : 
	-[0x8000072c]:KMABT s6, s1, sp
	-[0x80000730]:sd s6, 16(t1)
Current Store : [0x80000734] : sd s1, 24(t1) -- Store: [0x800032f8]:0xFFF8FFF80100EFFF




Last Coverpoint : ['rs1 : x3', 'rs2 : x17', 'rd : x20', 'rs2_h3_val == -1025', 'rs2_h1_val == 16384', 'rs2_h0_val == 2048', 'rs1_h3_val == 2048', 'rs1_h2_val == 0', 'rs1_h1_val == -129', 'rs1_h0_val == -65']
Last Code Sequence : 
	-[0x80000764]:KMABT s4, gp, a7
	-[0x80000768]:sd s4, 32(t1)
Current Store : [0x8000076c] : sd gp, 40(t1) -- Store: [0x80003308]:0x08000000FF7FFFBF




Last Coverpoint : ['rs1 : x17', 'rs2 : x15', 'rd : x24', 'rs2_h3_val == -513', 'rs2_h2_val == -1', 'rs2_h0_val == 4', 'rs1_h3_val == -2049', 'rs1_h2_val == 2', 'rs1_h1_val == 1024', 'rs1_h0_val == 8192']
Last Code Sequence : 
	-[0x800007a4]:KMABT s8, a7, a5
	-[0x800007a8]:sd s8, 48(t1)
Current Store : [0x800007ac] : sd a7, 56(t1) -- Store: [0x80003318]:0xF7FF000204002000




Last Coverpoint : ['rs1 : x1', 'rs2 : x26', 'rd : x3', 'rs2_h3_val == -257', 'rs2_h2_val == 1', 'rs2_h1_val == -257', 'rs1_h0_val == -17']
Last Code Sequence : 
	-[0x800007dc]:KMABT gp, ra, s10
	-[0x800007e0]:sd gp, 64(t1)
Current Store : [0x800007e4] : sd ra, 72(t1) -- Store: [0x80003328]:0xFDFF5555FFF6FFEF




Last Coverpoint : ['rs1 : x25', 'rs2 : x5', 'rd : x14', 'rs2_h3_val == -129', 'rs2_h0_val == 1024', 'rs1_h2_val == 64', 'rs1_h0_val == -5']
Last Code Sequence : 
	-[0x80000810]:KMABT a4, s9, t0
	-[0x80000814]:sd a4, 80(t1)
Current Store : [0x80000818] : sd s9, 88(t1) -- Store: [0x80003338]:0xFFFA0040FFEFFFFB




Last Coverpoint : ['rs1 : x8', 'rs2 : x14', 'rd : x28', 'rs2_h3_val == -65', 'rs1_h1_val == 4', 'rs1_h0_val == -9']
Last Code Sequence : 
	-[0x8000084c]:KMABT t3, fp, a4
	-[0x80000850]:sd t3, 96(t1)
Current Store : [0x80000854] : sd fp, 104(t1) -- Store: [0x80003348]:0x7FFFFFFC0004FFF7




Last Coverpoint : ['rs1 : x19', 'rs2 : x0', 'rd : x15', 'rs2_h3_val == 0', 'rs2_h2_val == 0', 'rs2_h0_val == 0', 'rs1_h3_val == -1025', 'rs1_h2_val == -1']
Last Code Sequence : 
	-[0x80000880]:KMABT a5, s3, zero
	-[0x80000884]:sd a5, 112(t1)
Current Store : [0x80000888] : sd s3, 120(t1) -- Store: [0x80003358]:0xFBFFFFFFFFDFC000




Last Coverpoint : ['rs1 : x29', 'rs2 : x8', 'rd : x4', 'rs2_h3_val == -9', 'rs2_h1_val == 1', 'rs2_h0_val == 128', 'rs1_h2_val == -129', 'rs1_h0_val == -257']
Last Code Sequence : 
	-[0x800008bc]:KMABT tp, t4, fp
	-[0x800008c0]:sd tp, 128(t1)
Current Store : [0x800008c4] : sd t4, 136(t1) -- Store: [0x80003368]:0x3FFFFF7FFFFCFEFF




Last Coverpoint : ['rs1 : x20', 'rs2 : x1', 'rd : x16', 'rs2_h3_val == -5', 'rs2_h2_val == -513', 'rs1_h1_val == 32', 'rs1_h0_val == -2']
Last Code Sequence : 
	-[0x800008f0]:KMABT a6, s4, ra
	-[0x800008f4]:sd a6, 144(t1)
Current Store : [0x800008f8] : sd s4, 152(t1) -- Store: [0x80003378]:0x010000030020FFFE




Last Coverpoint : ['rs1 : x18', 'rs2 : x21', 'rd : x13', 'rs2_h3_val == -3', 'rs1_h3_val == -32768', 'rs1_h2_val == -65', 'rs1_h0_val == 32']
Last Code Sequence : 
	-[0x8000092c]:KMABT a3, s2, s5
	-[0x80000930]:sd a3, 160(t1)
Current Store : [0x80000934] : sd s2, 168(t1) -- Store: [0x80003388]:0x8000FFBFFFFA0020




Last Coverpoint : ['rs1 : x14', 'rs2 : x22', 'rd : x30', 'rs2_h3_val == -2', 'rs2_h0_val == -1', 'rs1_h2_val == 16', 'rs1_h1_val == -32768']
Last Code Sequence : 
	-[0x80000958]:KMABT t5, a4, s6
	-[0x8000095c]:sd t5, 176(t1)
Current Store : [0x80000960] : sd a4, 184(t1) -- Store: [0x80003398]:0x0400001080000005




Last Coverpoint : ['rs1 : x23', 'rs2 : x30', 'rd : x0', 'rs2_h3_val == -32768', 'rs2_h2_val == 512', 'rs2_h1_val == 2', 'rs2_h0_val == -129', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80000994]:KMABT zero, s7, t5
	-[0x80000998]:sd zero, 192(t1)
Current Store : [0x8000099c] : sd s7, 200(t1) -- Store: [0x800033a8]:0x0800FFF800050400




Last Coverpoint : ['rs1 : x2', 'rs2 : x16', 'rd : x7', 'rs2_h3_val == 16384', 'rs2_h1_val == -1025', 'rs2_h0_val == 8192', 'rs1_h1_val == 0', 'rs1_h0_val == 32767']
Last Code Sequence : 
	-[0x800009d0]:KMABT t2, sp, a6
	-[0x800009d4]:sd t2, 208(t1)
Current Store : [0x800009d8] : sd sp, 216(t1) -- Store: [0x800033b8]:0x3FFFC00000007FFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x23', 'rd : x29', 'rs2_h3_val == 8192', 'rs2_h2_val == 1024', 'rs2_h1_val == 4096', 'rs1_h3_val == 16384', 'rs1_h2_val == -257', 'rs1_h0_val == -129']
Last Code Sequence : 
	-[0x80000a14]:KMABT t4, s10, s7
	-[0x80000a18]:sd t4, 0(ra)
Current Store : [0x80000a1c] : sd s10, 8(ra) -- Store: [0x800033c8]:0x4000FEFFFFFEFF7F




Last Coverpoint : ['rs1 : x24', 'rs2 : x20', 'rd : x27', 'rs2_h3_val == 4096', 'rs1_h3_val == -21846', 'rs1_h1_val == -21846']
Last Code Sequence : 
	-[0x80000a54]:KMABT s11, s8, s4
	-[0x80000a58]:sd s11, 16(ra)
Current Store : [0x80000a5c] : sd s8, 24(ra) -- Store: [0x800033d8]:0xAAAA5555AAAAC000




Last Coverpoint : ['rs1 : x13', 'rs2 : x18', 'rd : x23', 'rs2_h3_val == 2048']
Last Code Sequence : 
	-[0x80000a90]:KMABT s7, a3, s2
	-[0x80000a94]:sd s7, 32(ra)
Current Store : [0x80000a98] : sd a3, 40(ra) -- Store: [0x800033e8]:0xAAAAFFF7FFFE0009




Last Coverpoint : ['rs1 : x0', 'rs2 : x27', 'rd : x2', 'rs2_h3_val == 1024', 'rs2_h1_val == 512', 'rs2_h0_val == 32', 'rs1_h3_val == 0']
Last Code Sequence : 
	-[0x80000acc]:KMABT sp, zero, s11
	-[0x80000ad0]:sd sp, 48(ra)
Current Store : [0x80000ad4] : sd zero, 56(ra) -- Store: [0x800033f8]:0x0000000000000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x25', 'rd : x19', 'rs2_h3_val == 128', 'rs1_h3_val == 1', 'rs1_h2_val == -1025']
Last Code Sequence : 
	-[0x80000b00]:KMABT s3, t2, s9
	-[0x80000b04]:sd s3, 64(ra)
Current Store : [0x80000b08] : sd t2, 72(ra) -- Store: [0x80003408]:0x0001FBFFFFF9C000




Last Coverpoint : ['rs2_h3_val == 64', 'rs2_h1_val == 1024', 'rs2_h0_val == -257', 'rs1_h3_val == 8', 'rs1_h0_val == 4096']
Last Code Sequence : 
	-[0x80000b34]:KMABT t6, t5, t4
	-[0x80000b38]:sd t6, 80(ra)
Current Store : [0x80000b3c] : sd t5, 88(ra) -- Store: [0x80003418]:0x0008800000071000




Last Coverpoint : ['rs2_h3_val == 32', 'rs2_h2_val == -2', 'rs2_h1_val == -21846', 'rs1_h1_val == 8192']
Last Code Sequence : 
	-[0x80000b78]:KMABT t6, t5, t4
	-[0x80000b7c]:sd t6, 96(ra)
Current Store : [0x80000b80] : sd t5, 104(ra) -- Store: [0x80003428]:0xC000FBFF2000FF7F




Last Coverpoint : ['rs2_h3_val == 16', 'rs2_h0_val == 32767', 'rs1_h3_val == -9', 'rs1_h1_val == -1025']
Last Code Sequence : 
	-[0x80000bac]:KMABT t6, t5, t4
	-[0x80000bb0]:sd t6, 112(ra)
Current Store : [0x80000bb4] : sd t5, 120(ra) -- Store: [0x80003438]:0xFFF7FEFFFBFFFFFA




Last Coverpoint : ['rs2_h3_val == 8']
Last Code Sequence : 
	-[0x80000be0]:KMABT t6, t5, t4
	-[0x80000be4]:sd t6, 128(ra)
Current Store : [0x80000be8] : sd t5, 136(ra) -- Store: [0x80003448]:0x00060004FF7FFFFA




Last Coverpoint : ['rs2_h0_val == 8', 'rs1_h1_val == -5']
Last Code Sequence : 
	-[0x80000c14]:KMABT t6, t5, t4
	-[0x80000c18]:sd t6, 144(ra)
Current Store : [0x80000c1c] : sd t5, 152(ra) -- Store: [0x80003458]:0xF7FF5555FFFB0005




Last Coverpoint : ['rs2_h2_val == 2048', 'rs2_h0_val == 256', 'rs1_h3_val == -2', 'rs1_h2_val == 32767', 'rs1_h1_val == 4096']
Last Code Sequence : 
	-[0x80000c48]:KMABT t6, t5, t4
	-[0x80000c4c]:sd t6, 160(ra)
Current Store : [0x80000c50] : sd t5, 168(ra) -- Store: [0x80003468]:0xFFFE7FFF1000FFBF




Last Coverpoint : ['rs2_h2_val == -8193', 'rs2_h1_val == 64', 'rs1_h1_val == 2048', 'rs1_h0_val == 256']
Last Code Sequence : 
	-[0x80000c7c]:KMABT t6, t5, t4
	-[0x80000c80]:sd t6, 176(ra)
Current Store : [0x80000c84] : sd t5, 184(ra) -- Store: [0x80003478]:0x7FFFFFBF08000100




Last Coverpoint : ['rs2_h1_val == -129', 'rs1_h1_val == 512', 'rs1_h0_val == -3']
Last Code Sequence : 
	-[0x80000cb0]:KMABT t6, t5, t4
	-[0x80000cb4]:sd t6, 192(ra)
Current Store : [0x80000cb8] : sd t5, 200(ra) -- Store: [0x80003488]:0xFFFF80000200FFFD




Last Coverpoint : ['rs2_h3_val == 4', 'rs2_h2_val == -3', 'rs2_h0_val == -5', 'rs1_h1_val == 16', 'rs1_h0_val == -33']
Last Code Sequence : 
	-[0x80000cec]:KMABT t6, t5, t4
	-[0x80000cf0]:sd t6, 208(ra)
Current Store : [0x80000cf4] : sd t5, 216(ra) -- Store: [0x80003498]:0x000600070010FFDF




Last Coverpoint : ['rs1_h1_val == 8']
Last Code Sequence : 
	-[0x80000d28]:KMABT t6, t5, t4
	-[0x80000d2c]:sd t6, 224(ra)
Current Store : [0x80000d30] : sd t5, 232(ra) -- Store: [0x800034a8]:0x7FFFFFBF0008FFFB




Last Coverpoint : ['rs2_h2_val == -21846', 'rs1_h3_val == 4', 'rs1_h1_val == 2', 'rs1_h0_val == -2049']
Last Code Sequence : 
	-[0x80000d64]:KMABT t6, t5, t4
	-[0x80000d68]:sd t6, 240(ra)
Current Store : [0x80000d6c] : sd t5, 248(ra) -- Store: [0x800034b8]:0x00047FFF0002F7FF




Last Coverpoint : ['rs2_h1_val == -65', 'rs1_h1_val == 1']
Last Code Sequence : 
	-[0x80000da0]:KMABT t6, t5, t4
	-[0x80000da4]:sd t6, 256(ra)
Current Store : [0x80000da8] : sd t5, 264(ra) -- Store: [0x800034c8]:0xFFF6004000010007




Last Coverpoint : ['rs2_h2_val == 128', 'rs1_h3_val == -3', 'rs1_h1_val == -1']
Last Code Sequence : 
	-[0x80000ddc]:KMABT t6, t5, t4
	-[0x80000de0]:sd t6, 272(ra)
Current Store : [0x80000de4] : sd t5, 280(ra) -- Store: [0x800034d8]:0xFFFDC000FFFFEFFF




Last Coverpoint : ['rs2_h3_val == 1', 'rs2_h2_val == 4096', 'rs2_h1_val == -4097', 'rs1_h1_val == -4097', 'rs1_h0_val == 21845']
Last Code Sequence : 
	-[0x80000e10]:KMABT t6, t5, t4
	-[0x80000e14]:sd t6, 288(ra)
Current Store : [0x80000e18] : sd t5, 296(ra) -- Store: [0x800034e8]:0xFBFFFFDFEFFF5555




Last Coverpoint : ['rs2_h1_val == -5', 'rs1_h2_val == 8', 'rs1_h1_val == -65', 'rs1_h0_val == -8193']
Last Code Sequence : 
	-[0x80000e48]:KMABT t6, t5, t4
	-[0x80000e4c]:sd t6, 304(ra)
Current Store : [0x80000e50] : sd t5, 312(ra) -- Store: [0x800034f8]:0x08000008FFBFDFFF




Last Coverpoint : ['rs2_h2_val == -17', 'rs2_h1_val == 8', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x80000e84]:KMABT t6, t5, t4
	-[0x80000e88]:sd t6, 320(ra)
Current Store : [0x80000e8c] : sd t5, 328(ra) -- Store: [0x80003508]:0xFFF9FF7F0040FBFF




Last Coverpoint : ['rs2_h1_val == -32768', 'rs1_h1_val == 21845', 'rs1_h0_val == -513']
Last Code Sequence : 
	-[0x80000ec8]:KMABT t6, t5, t4
	-[0x80000ecc]:sd t6, 336(ra)
Current Store : [0x80000ed0] : sd t5, 344(ra) -- Store: [0x80003518]:0xDFFFC0005555FDFF




Last Coverpoint : ['rs2_h2_val == 21845', 'rs2_h1_val == -3', 'rs1_h0_val == 16384']
Last Code Sequence : 
	-[0x80000f04]:KMABT t6, t5, t4
	-[0x80000f08]:sd t6, 352(ra)
Current Store : [0x80000f0c] : sd t5, 360(ra) -- Store: [0x80003528]:0x4000000704004000




Last Coverpoint : ['rs2_h2_val == 16384', 'rs1_h3_val == -129', 'rs1_h0_val == 2048']
Last Code Sequence : 
	-[0x80000f3c]:KMABT t6, t5, t4
	-[0x80000f40]:sd t6, 368(ra)
Current Store : [0x80000f44] : sd t5, 376(ra) -- Store: [0x80003538]:0xFF7F100008000800




Last Coverpoint : ['rs1_h3_val == -257', 'rs1_h2_val == 128', 'rs1_h1_val == -257', 'rs1_h0_val == 512']
Last Code Sequence : 
	-[0x80000f80]:KMABT t6, t5, t4
	-[0x80000f84]:sd t6, 384(ra)
Current Store : [0x80000f88] : sd t5, 392(ra) -- Store: [0x80003548]:0xFEFF0080FEFF0200




Last Coverpoint : ['rs1_h2_val == -16385', 'rs1_h0_val == 128']
Last Code Sequence : 
	-[0x80000fbc]:KMABT t6, t5, t4
	-[0x80000fc0]:sd t6, 400(ra)
Current Store : [0x80000fc4] : sd t5, 408(ra) -- Store: [0x80003558]:0x4000BFFF00800080




Last Coverpoint : ['rs2_h3_val == 2', 'rs1_h0_val == 16']
Last Code Sequence : 
	-[0x80000ff0]:KMABT t6, t5, t4
	-[0x80000ff4]:sd t6, 416(ra)
Current Store : [0x80000ff8] : sd t5, 424(ra) -- Store: [0x80003568]:0xFEFFFFFD80000010




Last Coverpoint : ['rs2_h0_val == -9', 'rs1_h0_val == 2']
Last Code Sequence : 
	-[0x8000101c]:KMABT t6, t5, t4
	-[0x80001020]:sd t6, 432(ra)
Current Store : [0x80001024] : sd t5, 440(ra) -- Store: [0x80003578]:0x0001004001000002




Last Coverpoint : ['rs1_h0_val == 1']
Last Code Sequence : 
	-[0x80001054]:KMABT t6, t5, t4
	-[0x80001058]:sd t6, 448(ra)
Current Store : [0x8000105c] : sd t5, 456(ra) -- Store: [0x80003588]:0xFFF7FFFA00080001




Last Coverpoint : ['rs2_h0_val == 21845', 'rs1_h2_val == -513']
Last Code Sequence : 
	-[0x80001088]:KMABT t6, t5, t4
	-[0x8000108c]:sd t6, 464(ra)
Current Store : [0x80001090] : sd t5, 472(ra) -- Store: [0x80003598]:0x0005FDFF00800008




Last Coverpoint : ['rs2_h0_val == -16385']
Last Code Sequence : 
	-[0x800010bc]:KMABT t6, t5, t4
	-[0x800010c0]:sd t6, 480(ra)
Current Store : [0x800010c4] : sd t5, 488(ra) -- Store: [0x800035a8]:0x0400FFEFFEFF4000




Last Coverpoint : ['rs2_h2_val == -257', 'rs2_h0_val == -2049']
Last Code Sequence : 
	-[0x800010f4]:KMABT t6, t5, t4
	-[0x800010f8]:sd t6, 496(ra)
Current Store : [0x800010fc] : sd t5, 504(ra) -- Store: [0x800035b8]:0xDFFFFFFD00060040




Last Coverpoint : ['rs2_h0_val == -1025']
Last Code Sequence : 
	-[0x80001130]:KMABT t6, t5, t4
	-[0x80001134]:sd t6, 512(ra)
Current Store : [0x80001138] : sd t5, 520(ra) -- Store: [0x800035c8]:0x000700020200FFFA




Last Coverpoint : ['rs2_h0_val == -513']
Last Code Sequence : 
	-[0x80001170]:KMABT t6, t5, t4
	-[0x80001174]:sd t6, 528(ra)
Current Store : [0x80001178] : sd t5, 536(ra) -- Store: [0x800035d8]:0x3FFF000020001000




Last Coverpoint : ['rs2_h2_val == 8', 'rs2_h1_val == -2049', 'rs2_h0_val == -33']
Last Code Sequence : 
	-[0x800011a0]:KMABT t6, t5, t4
	-[0x800011a4]:sd t6, 544(ra)
Current Store : [0x800011a8] : sd t5, 552(ra) -- Store: [0x800035e8]:0xAAAAFFF9FFFEFFFD




Last Coverpoint : ['rs2_h0_val == -2']
Last Code Sequence : 
	-[0x800011d8]:KMABT t6, t5, t4
	-[0x800011dc]:sd t6, 560(ra)
Current Store : [0x800011e0] : sd t5, 568(ra) -- Store: [0x800035f8]:0xFDFFFFFFFFF87FFF




Last Coverpoint : ['rs2_h2_val == 256', 'rs2_h1_val == -17', 'rs2_h0_val == -32768', 'rs1_h2_val == -21846']
Last Code Sequence : 
	-[0x8000120c]:KMABT t6, t5, t4
	-[0x80001210]:sd t6, 576(ra)
Current Store : [0x80001214] : sd t5, 584(ra) -- Store: [0x80003608]:0x0004AAAA0001C000




Last Coverpoint : ['rs2_h1_val == -16385', 'rs2_h0_val == 16384', 'rs1_h0_val == -1']
Last Code Sequence : 
	-[0x80001248]:KMABT t6, t5, t4
	-[0x8000124c]:sd t6, 592(ra)
Current Store : [0x80001250] : sd t5, 600(ra) -- Store: [0x80003618]:0xEFFF0007FF7FFFFF




Last Coverpoint : ['rs2_h0_val == 4096']
Last Code Sequence : 
	-[0x80001280]:KMABT t6, t5, t4
	-[0x80001284]:sd t6, 608(ra)
Current Store : [0x80001288] : sd t5, 616(ra) -- Store: [0x80003628]:0xFBFFFFDF4000FFFF




Last Coverpoint : ['rs1_h0_val == -32768', 'rs2_h0_val == 512']
Last Code Sequence : 
	-[0x800012b0]:KMABT t6, t5, t4
	-[0x800012b4]:sd t6, 624(ra)
Current Store : [0x800012b8] : sd t5, 632(ra) -- Store: [0x80003638]:0x04000005BFFF8000




Last Coverpoint : ['rs2_h0_val == 64']
Last Code Sequence : 
	-[0x800012ec]:KMABT t6, t5, t4
	-[0x800012f0]:sd t6, 640(ra)
Current Store : [0x800012f4] : sd t5, 648(ra) -- Store: [0x80003648]:0x0000FFFFC000FF7F




Last Coverpoint : ['rs2_h0_val == 16']
Last Code Sequence : 
	-[0x80001320]:KMABT t6, t5, t4
	-[0x80001324]:sd t6, 656(ra)
Current Store : [0x80001328] : sd t5, 664(ra) -- Store: [0x80003658]:0xC000FFFC00000800




Last Coverpoint : ['rs2_h0_val == 1', 'rs1_h3_val == 16', 'rs1_h1_val == 32767']
Last Code Sequence : 
	-[0x80001354]:KMABT t6, t5, t4
	-[0x80001358]:sd t6, 672(ra)
Current Store : [0x8000135c] : sd t5, 680(ra) -- Store: [0x80003668]:0x0010FFF77FFF1000




Last Coverpoint : ['rs2_h2_val == -4097']
Last Code Sequence : 
	-[0x80001388]:KMABT t6, t5, t4
	-[0x8000138c]:sd t6, 688(ra)
Current Store : [0x80001390] : sd t5, 696(ra) -- Store: [0x80003678]:0x0009FFF73FFF2000




Last Coverpoint : ['rs1_h3_val == 21845']
Last Code Sequence : 
	-[0x800013c0]:KMABT t6, t5, t4
	-[0x800013c4]:sd t6, 704(ra)
Current Store : [0x800013c8] : sd t5, 712(ra) -- Store: [0x80003688]:0x5555FFBFFEFF4000




Last Coverpoint : ['rs1_h3_val == -16385']
Last Code Sequence : 
	-[0x800013f4]:KMABT t6, t5, t4
	-[0x800013f8]:sd t6, 720(ra)
Current Store : [0x800013fc] : sd t5, 728(ra) -- Store: [0x80003698]:0xBFFF10000008EFFF




Last Coverpoint : ['rs2_h1_val == -9']
Last Code Sequence : 
	-[0x80001430]:KMABT t6, t5, t4
	-[0x80001434]:sd t6, 736(ra)
Current Store : [0x80001438] : sd t5, 744(ra) -- Store: [0x800036a8]:0xFFDF2000FFEFDFFF




Last Coverpoint : ['rs1_h3_val == 128']
Last Code Sequence : 
	-[0x8000146c]:KMABT t6, t5, t4
	-[0x80001470]:sd t6, 752(ra)
Current Store : [0x80001474] : sd t5, 760(ra) -- Store: [0x800036b8]:0x0080F7FF0400FFEF




Last Coverpoint : ['rs1_h3_val == 64']
Last Code Sequence : 
	-[0x800014a8]:KMABT t6, t5, t4
	-[0x800014ac]:sd t6, 768(ra)
Current Store : [0x800014b0] : sd t5, 776(ra) -- Store: [0x800036c8]:0x004000800010FFF7




Last Coverpoint : ['rs1_h3_val == 32', 'rs1_h2_val == 1024']
Last Code Sequence : 
	-[0x800014e4]:KMABT t6, t5, t4
	-[0x800014e8]:sd t6, 784(ra)
Current Store : [0x800014ec] : sd t5, 792(ra) -- Store: [0x800036d8]:0x0020040000020800




Last Coverpoint : ['rs2_h2_val == -65']
Last Code Sequence : 
	-[0x80001520]:KMABT t6, t5, t4
	-[0x80001524]:sd t6, 800(ra)
Current Store : [0x80001528] : sd t5, 808(ra) -- Store: [0x800036e8]:0x0080FFF90002FFF9




Last Coverpoint : ['rs2_h1_val == 32767', 'rs1_h3_val == 2']
Last Code Sequence : 
	-[0x80001554]:KMABT t6, t5, t4
	-[0x80001558]:sd t6, 816(ra)
Current Store : [0x8000155c] : sd t5, 824(ra) -- Store: [0x800036f8]:0x00020005FF7FFFF9




Last Coverpoint : ['rs2_h2_val == -5']
Last Code Sequence : 
	-[0x80001590]:KMABT t6, t5, t4
	-[0x80001594]:sd t6, 832(ra)
Current Store : [0x80001598] : sd t5, 840(ra) -- Store: [0x80003708]:0x3FFFFFBF0003FFFA




Last Coverpoint : ['rs1_h2_val == -8193']
Last Code Sequence : 
	-[0x800015bc]:KMABT t6, t5, t4
	-[0x800015c0]:sd t6, 848(ra)
Current Store : [0x800015c4] : sd t5, 856(ra) -- Store: [0x80003718]:0x0002DFFFFFFFFFF8




Last Coverpoint : ['rs2_h1_val == 2048', 'rs1_h2_val == 32']
Last Code Sequence : 
	-[0x800015f0]:KMABT t6, t5, t4
	-[0x800015f4]:sd t6, 864(ra)
Current Store : [0x800015f8] : sd t5, 872(ra) -- Store: [0x80003728]:0x00200020AAAA0080




Last Coverpoint : ['rs2_h2_val == 32']
Last Code Sequence : 
	-[0x80001624]:KMABT t6, t5, t4
	-[0x80001628]:sd t6, 880(ra)
Current Store : [0x8000162c] : sd t5, 888(ra) -- Store: [0x80003738]:0xFFF60006FFFBFDFF




Last Coverpoint : ['rs2_h2_val == 4', 'rs1_h3_val == 4096']
Last Code Sequence : 
	-[0x80001668]:KMABT t6, t5, t4
	-[0x8000166c]:sd t6, 896(ra)
Current Store : [0x80001670] : sd t5, 904(ra) -- Store: [0x80003748]:0x1000F7FF0800FFDF




Last Coverpoint : ['rs1_h2_val == -5']
Last Code Sequence : 
	-[0x800016a4]:KMABT t6, t5, t4
	-[0x800016a8]:sd t6, 912(ra)
Current Store : [0x800016ac] : sd t5, 920(ra) -- Store: [0x80003758]:0x0200FFFB0010DFFF




Last Coverpoint : ['rs1_h2_val == 16384']
Last Code Sequence : 
	-[0x800016dc]:KMABT t6, t5, t4
	-[0x800016e0]:sd t6, 928(ra)
Current Store : [0x800016e4] : sd t5, 936(ra) -- Store: [0x80003768]:0xEFFF400008000007




Last Coverpoint : ['rs2_h1_val == 21845']
Last Code Sequence : 
	-[0x80001710]:KMABT t6, t5, t4
	-[0x80001714]:sd t6, 944(ra)
Current Store : [0x80001718] : sd t5, 952(ra) -- Store: [0x80003778]:0xFFF6AAAA10001000




Last Coverpoint : ['rs2_h1_val == -8193']
Last Code Sequence : 
	-[0x8000174c]:KMABT t6, t5, t4
	-[0x80001750]:sd t6, 960(ra)
Current Store : [0x80001754] : sd t5, 968(ra) -- Store: [0x80003788]:0x7FFFFFF8FFEFFFFA




Last Coverpoint : ['rs1_h2_val == 512']
Last Code Sequence : 
	-[0x80001780]:KMABT t6, t5, t4
	-[0x80001784]:sd t6, 976(ra)
Current Store : [0x80001788] : sd t5, 984(ra) -- Store: [0x80003798]:0xFFBF0200FF7FFFFD




Last Coverpoint : ['rs1_h2_val == 256']
Last Code Sequence : 
	-[0x800017b4]:KMABT t6, t5, t4
	-[0x800017b8]:sd t6, 992(ra)
Current Store : [0x800017bc] : sd t5, 1000(ra) -- Store: [0x800037a8]:0xFFF90100DFFFFBFF




Last Coverpoint : ['rs2_h3_val == -17', 'rs2_h1_val == -33']
Last Code Sequence : 
	-[0x800017ec]:KMABT t6, t5, t4
	-[0x800017f0]:sd t6, 1008(ra)
Current Store : [0x800017f4] : sd t5, 1016(ra) -- Store: [0x800037b8]:0xEFFFFFFDDFFFFFDF




Last Coverpoint : ['rs1_h2_val == 1']
Last Code Sequence : 
	-[0x80001820]:KMABT t6, t5, t4
	-[0x80001824]:sd t6, 1024(ra)
Current Store : [0x80001828] : sd t5, 1032(ra) -- Store: [0x800037c8]:0x555500010020F7FF




Last Coverpoint : ['rs2_h1_val == 8192']
Last Code Sequence : 
	-[0x8000185c]:KMABT t6, t5, t4
	-[0x80001860]:sd t6, 1040(ra)
Current Store : [0x80001864] : sd t5, 1048(ra) -- Store: [0x800037d8]:0xAAAA00040400FFFD




Last Coverpoint : ['rs1_h3_val == -17']
Last Code Sequence : 
	-[0x80001898]:KMABT t6, t5, t4
	-[0x8000189c]:sd t6, 1056(ra)
Current Store : [0x800018a0] : sd t5, 1064(ra) -- Store: [0x800037e8]:0xFFEFBFFFBFFF0100




Last Coverpoint : ['rs1_h1_val == -2049']
Last Code Sequence : 
	-[0x800018cc]:KMABT t6, t5, t4
	-[0x800018d0]:sd t6, 1072(ra)
Current Store : [0x800018d4] : sd t5, 1080(ra) -- Store: [0x800037f8]:0x7FFFFFFAF7FFFFFA




Last Coverpoint : ['rs1_h2_val == -4097', 'rs1_h1_val == -513']
Last Code Sequence : 
	-[0x80001904]:KMABT t6, t5, t4
	-[0x80001908]:sd t6, 1088(ra)
Current Store : [0x8000190c] : sd t5, 1096(ra) -- Store: [0x80003808]:0xDFFFEFFFFDFF0400




Last Coverpoint : ['rs2_h3_val == -1']
Last Code Sequence : 
	-[0x80001930]:KMABT t6, t5, t4
	-[0x80001934]:sd t6, 1104(ra)
Current Store : [0x80001938] : sd t5, 1112(ra) -- Store: [0x80003818]:0xFFFF000480000002




Last Coverpoint : ['rs2_h2_val == 2']
Last Code Sequence : 
	-[0x8000196c]:KMABT t6, t5, t4
	-[0x80001970]:sd t6, 1120(ra)
Current Store : [0x80001974] : sd t5, 1128(ra) -- Store: [0x80003828]:0xFFF7FFFD0020FDFF




Last Coverpoint : ['rs1_h2_val == -2']
Last Code Sequence : 
	-[0x8000199c]:KMABT t6, t5, t4
	-[0x800019a0]:sd t6, 1136(ra)
Current Store : [0x800019a4] : sd t5, 1144(ra) -- Store: [0x80003838]:0xFDFFFFFEC0000006




Last Coverpoint : ['opcode : kmabt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == 32767', 'rs2_h2_val == 0', 'rs1_h2_val == -32768', 'rs1_h1_val == 2048', 'rs1_h0_val == -1025']
Last Code Sequence : 
	-[0x800019d8]:KMABT t6, t5, t4
	-[0x800019dc]:sd t6, 1152(ra)
Current Store : [0x800019e0] : sd t5, 1160(ra) -- Store: [0x80003848]:0x000780000800FBFF




Last Coverpoint : ['rs1_h2_val == 2048']
Last Code Sequence : 
	-[0x80001a18]:KMABT t6, t5, t4
	-[0x80001a1c]:sd t6, 1168(ra)
Current Store : [0x80001a20] : sd t5, 1176(ra) -- Store: [0x80003858]:0x7FFF0800BFFF8000




Last Coverpoint : ['opcode : kmabt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val == rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val > 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val > 0 and rs2_h2_val < 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val < 0', 'rs1_h0_val == rs2_h0_val', 'rs1_h0_val < 0 and rs2_h0_val < 0', 'rs2_h3_val == 512', 'rs2_h2_val == -2049', 'rs2_h1_val == -2', 'rs2_h0_val == -4097', 'rs1_h3_val == 512', 'rs1_h1_val == 256', 'rs1_h0_val == -4097']
Last Code Sequence : 
	-[0x80001a58]:KMABT t6, t5, t4
	-[0x80001a5c]:sd t6, 1184(ra)
Current Store : [0x80001a60] : sd t5, 1192(ra) -- Store: [0x80003868]:0x020000030100EFFF




Last Coverpoint : ['opcode : kmabt', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_h3_val != rs2_h3_val', 'rs1_h3_val > 0 and rs2_h3_val < 0', 'rs1_h2_val != rs2_h2_val', 'rs1_h2_val < 0 and rs2_h2_val > 0', 'rs1_h1_val != rs2_h1_val', 'rs1_h1_val > 0 and rs2_h1_val > 0', 'rs1_h0_val != rs2_h0_val', 'rs1_h0_val > 0 and rs2_h0_val < 0', 'rs2_h3_val == -32768', 'rs2_h2_val == 512', 'rs2_h1_val == 2', 'rs2_h0_val == -129', 'rs1_h3_val == 2048', 'rs1_h0_val == 1024']
Last Code Sequence : 
	-[0x80001a94]:KMABT t6, t5, t4
	-[0x80001a98]:sd t6, 1200(ra)
Current Store : [0x80001a9c] : sd t5, 1208(ra) -- Store: [0x80003878]:0x0800FFF800050400




Last Coverpoint : ['rs1_h3_val == 8192']
Last Code Sequence : 
	-[0x80001ad0]:KMABT t6, t5, t4
	-[0x80001ad4]:sd t6, 1216(ra)
Current Store : [0x80001ad8] : sd t5, 1224(ra) -- Store: [0x80003888]:0x2000EFFF00090009





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

|s.no|            signature             |                                                                                                                                                                                                                                      coverpoints                                                                                                                                                                                                                                      |                                 code                                 |
|---:|----------------------------------|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x00000441000001BA|- opcode : kmabt<br> - rs1 : x28<br> - rs2 : x28<br> - rd : x10<br> - rs1 == rs2 != rd<br> - rs1_h3_val == rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val < 0<br> - rs1_h2_val == rs2_h2_val<br> - rs1_h2_val < 0 and rs2_h2_val < 0<br> - rs1_h1_val == rs2_h1_val<br> - rs1_h1_val > 0 and rs2_h1_val > 0<br> - rs1_h0_val == rs2_h0_val<br> - rs1_h0_val < 0 and rs2_h0_val < 0<br> - rs2_h3_val == -33<br> - rs2_h2_val == -33<br> - rs1_h3_val == -33<br> - rs1_h2_val == -33<br> |[0x800003d8]:KMABT a0, t3, t3<br> [0x800003dc]:sd a0, 0(sp)<br>       |
|   2|[0x80003220]<br>0x01F0F5FFFFFF1001|- rs1 : x12<br> - rs2 : x12<br> - rd : x12<br> - rs1 == rs2 == rd<br> - rs1_h3_val > 0 and rs2_h3_val > 0<br> - rs1_h1_val < 0 and rs2_h1_val < 0<br> - rs2_h3_val == 512<br> - rs2_h2_val == -2049<br> - rs2_h1_val == -2<br> - rs2_h0_val == -4097<br> - rs1_h3_val == 512<br> - rs1_h2_val == -2049<br> - rs1_h1_val == -2<br> - rs1_h0_val == -4097<br>                                                                                                                            |[0x80000418]:KMABT a2, a2, a2<br> [0x8000041c]:sd a2, 16(sp)<br>      |
|   3|[0x80003230]<br>0x76DF570876DE5703|- rs1 : x15<br> - rs2 : x3<br> - rd : x26<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_h3_val != rs2_h3_val<br> - rs1_h3_val < 0 and rs2_h3_val > 0<br> - rs1_h2_val != rs2_h2_val<br> - rs1_h2_val > 0 and rs2_h2_val < 0<br> - rs1_h1_val != rs2_h1_val<br> - rs1_h0_val != rs2_h0_val<br> - rs1_h0_val > 0 and rs2_h0_val < 0<br> - rs2_h0_val == -65<br> - rs1_h1_val == -33<br>                                                                                        |[0x80000454]:KMABT s10, a5, gp<br> [0x80000458]:sd s10, 32(sp)<br>    |
|   4|[0x80003240]<br>0xFFFC0066FFF70040|- rs1 : x11<br> - rs2 : x19<br> - rd : x11<br> - rs1 == rd != rs2<br> - rs2_h1_val == 0<br> - rs2_h0_val == -3<br> - rs1_h3_val == -5<br> - rs1_h2_val == -17<br> - rs1_h1_val == -9<br> - rs1_h0_val == 64<br>                                                                                                                                                                                                                                                                        |[0x80000490]:KMABT a1, a1, s3<br> [0x80000494]:sd a1, 48(sp)<br>      |
|   5|[0x80003250]<br>0x000A4000FFFF4003|- rs1 : x5<br> - rs2 : x31<br> - rd : x31<br> - rs2 == rd != rs1<br> - rs1_h2_val > 0 and rs2_h2_val > 0<br> - rs1_h1_val > 0 and rs2_h1_val < 0<br> - rs1_h0_val < 0 and rs2_h0_val > 0<br> - rs2_h2_val == 8192<br> - rs2_h1_val == -1<br> - rs2_h0_val == 2<br> - rs1_h3_val == -65<br> - rs1_h2_val == 8192<br> - rs1_h1_val == 128<br> - rs1_h0_val == -16385<br>                                                                                                                 |[0x800004c8]:KMABT t6, t0, t6<br> [0x800004cc]:sd t6, 64(sp)<br>      |
|   6|[0x80003260]<br>0xFFFFFD0080000000|- rs1 : x10<br> - rs2 : x13<br> - rd : x6<br> - rs1_h2_val < 0 and rs2_h2_val > 0<br> - rs2_h3_val == 256<br> - rs2_h2_val == 32767<br> - rs2_h1_val == 128<br> - rs1_h2_val == -3<br> - rs1_h1_val == 64<br> - rs1_h0_val == -21846<br>                                                                                                                                                                                                                                               |[0x80000500]:KMABT t1, a0, a3<br> [0x80000504]:sd t1, 80(sp)<br>      |
|   7|[0x80003270]<br>0xADFE7DBEADFEED88|- rs1 : x27<br> - rs2 : x4<br> - rd : x9<br> - rs1_h3_val == -513<br> - rs1_h2_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x8000053c]:KMABT s1, s11, tp<br> [0x80000540]:sd s1, 96(sp)<br>     |
|   8|[0x80003280]<br>0xDEADFEEDCEAD7EEE|- rs1 : x21<br> - rs2 : x6<br> - rd : x17<br> - rs1_h3_val > 0 and rs2_h3_val < 0<br> - rs1_h1_val < 0 and rs2_h1_val > 0<br> - rs1_h0_val > 0 and rs2_h0_val > 0<br> - rs2_h2_val == 64<br> - rs1_h3_val == 32767<br> - rs1_h2_val == -32768<br> - rs1_h1_val == -3<br>                                                                                                                                                                                                               |[0x8000057c]:KMABT a7, s5, t1<br> [0x80000580]:sd a7, 112(sp)<br>     |
|   9|[0x80003290]<br>0x5C00DB835BFDDBDD|- rs1 : x30<br> - rs2 : x10<br> - rd : x8<br> - rs2_h3_val == -21846<br> - rs2_h2_val == -1025<br> - rs2_h1_val == 16<br> - rs2_h0_val == -17<br> - rs1_h3_val == 256<br> - rs1_h2_val == -9<br> - rs1_h1_val == -17<br>                                                                                                                                                                                                                                                               |[0x800005b8]:KMABT fp, t5, a0<br> [0x800005bc]:sd fp, 128(sp)<br>     |
|  10|[0x800032a0]<br>0x0A303C37EDBEADFE|- rs1 : x6<br> - rs2 : x9<br> - rd : x25<br> - rs2_h3_val == 21845<br> - rs2_h2_val == -129<br> - rs2_h1_val == 32<br> - rs1_h3_val == -8193<br> - rs1_h2_val == 21845<br> - rs1_h1_val == -8193<br> - rs1_h0_val == 0<br>                                                                                                                                                                                                                                                             |[0x800005f8]:KMABT s9, t1, s1<br> [0x800005fc]:sd s9, 144(sp)<br>     |
|  11|[0x800032b0]<br>0xDF58FF72DF56FF86|- rs1 : x22<br> - rs2 : x29<br> - rd : x18<br> - rs2_h3_val == 32767<br> - rs2_h2_val == -9<br> - rs2_h1_val == 4<br> - rs2_h0_val == -8193<br> - rs1_h3_val == -1<br> - rs1_h2_val == 4<br> - rs1_h1_val == 16384<br> - rs1_h0_val == 4<br>                                                                                                                                                                                                                                           |[0x8000062c]:KMABT s2, s6, t4<br> [0x80000630]:sd s2, 160(sp)<br>     |
|  12|[0x800032c0]<br>0xFEEF3EB3FEEDAEA5|- rs1 : x16<br> - rs2 : x7<br> - rd : x1<br> - rs2_h3_val == -16385<br> - rs2_h2_val == -32768<br> - rs2_h1_val == -513<br> - rs1_h3_val == -4097<br> - rs1_h0_val == 8<br>                                                                                                                                                                                                                                                                                                            |[0x80000668]:KMABT ra, a6, t2<br> [0x8000066c]:sd ra, 176(sp)<br>     |
|  13|[0x800032d0]<br>0x00BF48010080BFFF|- rs1 : x4<br> - rs2 : x24<br> - rd : x5<br> - rs2_h3_val == -8193<br> - rs1_h3_val == 1024<br> - rs1_h1_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                             |[0x800006a4]:KMABT t0, tp, s8<br> [0x800006a8]:sd t0, 192(sp)<br>     |
|  14|[0x800032e0]<br>0x7FFEEFF7FFFD400B|- rs1 : x31<br> - rs2 : x11<br> - rd : x21<br> - rs2_h3_val == -4097<br> - rs2_h2_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                        |[0x800006e8]:KMABT s5, t6, a1<br> [0x800006ec]:sd s5, 0(t1)<br>       |
|  15|[0x800032f0]<br>0xFFFF400C3FEFFF04|- rs1 : x9<br> - rs2 : x2<br> - rd : x22<br> - rs2_h3_val == -2049<br> - rs2_h2_val == -16385<br> - rs2_h1_val == 256<br> - rs2_h0_val == -21846<br> - rs1_h1_val == 256<br>                                                                                                                                                                                                                                                                                                           |[0x8000072c]:KMABT s6, s1, sp<br> [0x80000730]:sd s6, 16(t1)<br>      |
|  16|[0x80003300]<br>0xB7D5BFDDB7C57FDD|- rs1 : x3<br> - rs2 : x17<br> - rd : x20<br> - rs2_h3_val == -1025<br> - rs2_h1_val == 16384<br> - rs2_h0_val == 2048<br> - rs1_h3_val == 2048<br> - rs1_h2_val == 0<br> - rs1_h1_val == -129<br> - rs1_h0_val == -65<br>                                                                                                                                                                                                                                                             |[0x80000764]:KMABT s4, gp, a7<br> [0x80000768]:sd s4, 32(t1)<br>      |
|  17|[0x80003310]<br>0xDFFF7BFD0800DFFD|- rs1 : x17<br> - rs2 : x15<br> - rd : x24<br> - rs2_h3_val == -513<br> - rs2_h2_val == -1<br> - rs2_h0_val == 4<br> - rs1_h3_val == -2049<br> - rs1_h2_val == 2<br> - rs1_h1_val == 1024<br> - rs1_h0_val == 8192<br>                                                                                                                                                                                                                                                                 |[0x800007a4]:KMABT s8, a7, a5<br> [0x800007a8]:sd s8, 48(t1)<br>      |
|  18|[0x80003320]<br>0x07AA55ABFF8010D0|- rs1 : x1<br> - rs2 : x26<br> - rd : x3<br> - rs2_h3_val == -257<br> - rs2_h2_val == 1<br> - rs2_h1_val == -257<br> - rs1_h0_val == -17<br>                                                                                                                                                                                                                                                                                                                                           |[0x800007dc]:KMABT gp, ra, s10<br> [0x800007e0]:sd gp, 64(t1)<br>     |
|  19|[0x80003330]<br>0xF56FD72DF56FF74F|- rs1 : x25<br> - rs2 : x5<br> - rd : x14<br> - rs2_h3_val == -129<br> - rs2_h0_val == 1024<br> - rs1_h2_val == 64<br> - rs1_h0_val == -5<br>                                                                                                                                                                                                                                                                                                                                          |[0x80000810]:KMABT a4, s9, t0<br> [0x80000814]:sd a4, 80(t1)<br>      |
|  20|[0x80003340]<br>0xFFE000E300080035|- rs1 : x8<br> - rs2 : x14<br> - rd : x28<br> - rs2_h3_val == -65<br> - rs1_h1_val == 4<br> - rs1_h0_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                     |[0x8000084c]:KMABT t3, fp, a4<br> [0x80000850]:sd t3, 96(t1)<br>      |
|  21|[0x80003350]<br>0xFDFFFFFF3FFF0004|- rs1 : x19<br> - rs2 : x0<br> - rd : x15<br> - rs2_h3_val == 0<br> - rs2_h2_val == 0<br> - rs2_h0_val == 0<br> - rs1_h3_val == -1025<br> - rs1_h2_val == -1<br>                                                                                                                                                                                                                                                                                                                       |[0x80000880]:KMABT a5, s3, zero<br> [0x80000884]:sd a5, 112(t1)<br>   |
|  22|[0x80003360]<br>0x0400FC88BFFEFF05|- rs1 : x29<br> - rs2 : x8<br> - rd : x4<br> - rs2_h3_val == -9<br> - rs2_h1_val == 1<br> - rs2_h0_val == 128<br> - rs1_h2_val == -129<br> - rs1_h0_val == -257<br>                                                                                                                                                                                                                                                                                                                    |[0x800008bc]:KMABT tp, t4, fp<br> [0x800008c0]:sd tp, 128(t1)<br>     |
|  23|[0x80003370]<br>0xEFFFFFEBFFFDFF08|- rs1 : x20<br> - rs2 : x1<br> - rd : x16<br> - rs2_h3_val == -5<br> - rs2_h2_val == -513<br> - rs1_h1_val == 32<br> - rs1_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                            |[0x800008f0]:KMABT a6, s4, ra<br> [0x800008f4]:sd a6, 144(t1)<br>     |
|  24|[0x80003380]<br>0x010080C2007FFFE3|- rs1 : x18<br> - rs2 : x21<br> - rd : x13<br> - rs2_h3_val == -3<br> - rs1_h3_val == -32768<br> - rs1_h2_val == -65<br> - rs1_h0_val == 32<br>                                                                                                                                                                                                                                                                                                                                        |[0x8000092c]:KMABT a3, s2, s5<br> [0x80000930]:sd a3, 160(t1)<br>     |
|  25|[0x80003390]<br>0x0100FFD7FFEF0015|- rs1 : x14<br> - rs2 : x22<br> - rd : x30<br> - rs2_h3_val == -2<br> - rs2_h0_val == -1<br> - rs1_h2_val == 16<br> - rs1_h1_val == -32768<br>                                                                                                                                                                                                                                                                                                                                         |[0x80000958]:KMABT t5, a4, s6<br> [0x8000095c]:sd t5, 176(t1)<br>     |
|  26|[0x800033a0]<br>0x0000000000000000|- rs1 : x23<br> - rs2 : x30<br> - rd : x0<br> - rs2_h3_val == -32768<br> - rs2_h2_val == 512<br> - rs2_h1_val == 2<br> - rs2_h0_val == -129<br> - rs1_h0_val == 1024<br>                                                                                                                                                                                                                                                                                                               |[0x80000994]:KMABT zero, s7, t5<br> [0x80000998]:sd zero, 192(t1)<br> |
|  27|[0x800033b0]<br>0xAFFF8000FBFE840A|- rs1 : x2<br> - rs2 : x16<br> - rd : x7<br> - rs2_h3_val == 16384<br> - rs2_h1_val == -1025<br> - rs2_h0_val == 8192<br> - rs1_h1_val == 0<br> - rs1_h0_val == 32767<br>                                                                                                                                                                                                                                                                                                              |[0x800009d0]:KMABT t2, sp, a6<br> [0x800009d4]:sd t2, 208(t1)<br>     |
|  28|[0x800033c0]<br>0x3FDFDF7FFFF4EEFF|- rs1 : x26<br> - rs2 : x23<br> - rd : x29<br> - rs2_h3_val == 8192<br> - rs2_h2_val == 1024<br> - rs2_h1_val == 4096<br> - rs1_h3_val == 16384<br> - rs1_h2_val == -257<br> - rs1_h0_val == -129<br>                                                                                                                                                                                                                                                                                  |[0x80000a14]:KMABT t4, s10, s7<br> [0x80000a18]:sd t4, 0(ra)<br>      |
|  29|[0x800033d0]<br>0x035460000001FFFA|- rs1 : x24<br> - rs2 : x20<br> - rd : x27<br> - rs2_h3_val == 4096<br> - rs1_h3_val == -21846<br> - rs1_h1_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                          |[0x80000a54]:KMABT s11, s8, s4<br> [0x80000a58]:sd s11, 16(ra)<br>    |
|  30|[0x800033e0]<br>0x1FFFBC0010024077|- rs1 : x13<br> - rs2 : x18<br> - rd : x23<br> - rs2_h3_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000a90]:KMABT s7, a3, s2<br> [0x80000a94]:sd s7, 32(ra)<br>      |
|  31|[0x800033f0]<br>0x3FFFC00000007FFF|- rs1 : x0<br> - rs2 : x27<br> - rd : x2<br> - rs2_h3_val == 1024<br> - rs2_h1_val == 512<br> - rs2_h0_val == 32<br> - rs1_h3_val == 0<br>                                                                                                                                                                                                                                                                                                                                             |[0x80000acc]:KMABT sp, zero, s11<br> [0x80000ad0]:sd sp, 48(ra)<br>   |
|  32|[0x80003400]<br>0xFBFDFF7FFF5FC000|- rs1 : x7<br> - rs2 : x25<br> - rd : x19<br> - rs2_h3_val == 128<br> - rs1_h3_val == 1<br> - rs1_h2_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                  |[0x80000b00]:KMABT s3, t2, s9<br> [0x80000b04]:sd s3, 64(ra)<br>      |
|  33|[0x80003410]<br>0xFFE30009003EFFFA|- rs2_h3_val == 64<br> - rs2_h1_val == 1024<br> - rs2_h0_val == -257<br> - rs1_h3_val == 8<br> - rs1_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                |[0x80000b34]:KMABT t6, t5, t4<br> [0x80000b38]:sd t6, 80(ra)<br>      |
|  34|[0x80003420]<br>0xFFE27FE9006A0050|- rs2_h3_val == 32<br> - rs2_h2_val == -2<br> - rs2_h1_val == -21846<br> - rs1_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000b78]:KMABT t6, t5, t4<br> [0x80000b7c]:sd t6, 96(ra)<br>      |
|  35|[0x80003430]<br>0xFFE26FD9006A0056|- rs2_h3_val == 16<br> - rs2_h0_val == 32767<br> - rs1_h3_val == -9<br> - rs1_h1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000bac]:KMABT t6, t5, t4<br> [0x80000bb0]:sd t6, 112(ra)<br>     |
|  36|[0x80003440]<br>0xFFE26FF9006A0C5C|- rs2_h3_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000be0]:KMABT t6, t5, t4<br> [0x80000be4]:sd t6, 128(ra)<br>     |
|  37|[0x80003450]<br>0xFFE4C54C006A165C|- rs2_h0_val == 8<br> - rs1_h1_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000c14]:KMABT t6, t5, t4<br> [0x80000c18]:sd t6, 144(ra)<br>     |
|  38|[0x80003460]<br>0xFEE4474D0066065C|- rs2_h2_val == 2048<br> - rs2_h0_val == 256<br> - rs1_h3_val == -2<br> - rs1_h2_val == 32767<br> - rs1_h1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                             |[0x80000c48]:KMABT t6, t5, t4<br> [0x80000c4c]:sd t6, 160(ra)<br>     |
|  39|[0x80003470]<br>0xFEE4474D0066465C|- rs2_h2_val == -8193<br> - rs2_h1_val == 64<br> - rs1_h1_val == 2048<br> - rs1_h0_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000c7c]:KMABT t6, t5, t4<br> [0x80000c80]:sd t6, 176(ra)<br>     |
|  40|[0x80003480]<br>0xFEDC474D006647DF|- rs2_h1_val == -129<br> - rs1_h1_val == 512<br> - rs1_h0_val == -3<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000cb0]:KMABT t6, t5, t4<br> [0x80000cb4]:sd t6, 192(ra)<br>     |
|  41|[0x80003490]<br>0xFEDC476900664719|- rs2_h3_val == 4<br> - rs2_h2_val == -3<br> - rs2_h0_val == -5<br> - rs1_h1_val == 16<br> - rs1_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                     |[0x80000cec]:KMABT t6, t5, t4<br> [0x80000cf0]:sd t6, 208(ra)<br>     |
|  42|[0x800034a0]<br>0xFEBBC7AA00664737|- rs1_h1_val == 8<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000d28]:KMABT t6, t5, t4<br> [0x80000d2c]:sd t6, 224(ra)<br>     |
|  43|[0x800034b0]<br>0xFEBFC7A200669741|- rs2_h2_val == -21846<br> - rs1_h3_val == 4<br> - rs1_h1_val == 2<br> - rs1_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                       |[0x80000d64]:KMABT t6, t5, t4<br> [0x80000d68]:sd t6, 240(ra)<br>     |
|  44|[0x800034c0]<br>0xFEAFC7620066957A|- rs2_h1_val == -65<br> - rs1_h1_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000da0]:KMABT t6, t5, t4<br> [0x80000da4]:sd t6, 256(ra)<br>     |
|  45|[0x800034d0]<br>0xFEAEC7620466D57A|- rs2_h2_val == 128<br> - rs1_h3_val == -3<br> - rs1_h1_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80000ddc]:KMABT t6, t5, t4<br> [0x80000de0]:sd t6, 272(ra)<br>     |
|  46|[0x800034e0]<br>0xFEAEC741FF113025|- rs2_h3_val == 1<br> - rs2_h2_val == 4096<br> - rs2_h1_val == -4097<br> - rs1_h1_val == -4097<br> - rs1_h0_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                           |[0x80000e10]:KMABT t6, t5, t4<br> [0x80000e14]:sd t6, 288(ra)<br>     |
|  47|[0x800034f0]<br>0xFEAEC539FF11D02A|- rs2_h1_val == -5<br> - rs1_h2_val == 8<br> - rs1_h1_val == -65<br> - rs1_h0_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                         |[0x80000e48]:KMABT t6, t5, t4<br> [0x80000e4c]:sd t6, 304(ra)<br>     |
|  48|[0x80003500]<br>0xFEAED5DAFF11B022|- rs2_h2_val == -17<br> - rs2_h1_val == 8<br> - rs1_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80000e84]:KMABT t6, t5, t4<br> [0x80000e88]:sd t6, 320(ra)<br>     |
|  49|[0x80003510]<br>0xFECF15DA00123022|- rs2_h1_val == -32768<br> - rs1_h1_val == 21845<br> - rs1_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                          |[0x80000ec8]:KMABT t6, t5, t4<br> [0x80000ecc]:sd t6, 336(ra)<br>     |
|  50|[0x80003520]<br>0xFED0D5DA00117022|- rs2_h2_val == 21845<br> - rs2_h1_val == -3<br> - rs1_h0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                             |[0x80000f04]:KMABT t6, t5, t4<br> [0x80000f08]:sd t6, 352(ra)<br>     |
|  51|[0x80003530]<br>0xFED125DA02116822|- rs2_h2_val == 16384<br> - rs1_h3_val == -129<br> - rs1_h0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80000f3c]:KMABT t6, t5, t4<br> [0x80000f40]:sd t6, 368(ra)<br>     |
|  52|[0x80003540]<br>0xFEFBD05A02316822|- rs1_h3_val == -257<br> - rs1_h2_val == 128<br> - rs1_h1_val == -257<br> - rs1_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                      |[0x80000f80]:KMABT t6, t5, t4<br> [0x80000f84]:sd t6, 384(ra)<br>     |
|  53|[0x80003550]<br>0x0EFC105A02316722|- rs1_h2_val == -16385<br> - rs1_h0_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80000fbc]:KMABT t6, t5, t4<br> [0x80000fc0]:sd t6, 400(ra)<br>     |
|  54|[0x80003560]<br>0x0EFC105402316772|- rs2_h3_val == 2<br> - rs1_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x80000ff0]:KMABT t6, t5, t4<br> [0x80000ff4]:sd t6, 416(ra)<br>     |
|  55|[0x80003570]<br>0x0EFC145402316570|- rs2_h0_val == -9<br> - rs1_h0_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                           |[0x8000101c]:KMABT t6, t5, t4<br> [0x80001020]:sd t6, 432(ra)<br>     |
|  56|[0x80003580]<br>0x0EFC0E540231652F|- rs1_h0_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001054]:KMABT t6, t5, t4<br> [0x80001058]:sd t6, 448(ra)<br>     |
|  57|[0x80003590]<br>0x0EFC024E02316517|- rs2_h0_val == 21845<br> - rs1_h2_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001088]:KMABT t6, t5, t4<br> [0x8000108c]:sd t6, 464(ra)<br>     |
|  58|[0x800035a0]<br>0x0EFC021B02356517|- rs2_h0_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800010bc]:KMABT t6, t5, t4<br> [0x800010c0]:sd t6, 480(ra)<br>     |
|  59|[0x800035b0]<br>0x0EFC020602356397|- rs2_h2_val == -257<br> - rs2_h0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800010f4]:KMABT t6, t5, t4<br> [0x800010f8]:sd t6, 496(ra)<br>     |
|  60|[0x800035c0]<br>0x0EFB575A0235669D|- rs2_h0_val == -1025<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001130]:KMABT t6, t5, t4<br> [0x80001134]:sd t6, 512(ra)<br>     |
|  61|[0x800035d0]<br>0x0EFB575A0275669D|- rs2_h0_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001170]:KMABT t6, t5, t4<br> [0x80001174]:sd t6, 528(ra)<br>     |
|  62|[0x800035e0]<br>0x0EFB575A02757EA0|- rs2_h2_val == 8<br> - rs2_h1_val == -2049<br> - rs2_h0_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800011a0]:KMABT t6, t5, t4<br> [0x800011a4]:sd t6, 544(ra)<br>     |
|  63|[0x800035f0]<br>0x0EFB575602727EA6|- rs2_h0_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800011d8]:KMABT t6, t5, t4<br> [0x800011dc]:sd t6, 560(ra)<br>     |
|  64|[0x80003600]<br>0x0EFAACAA0276BEA6|- rs2_h2_val == 256<br> - rs2_h1_val == -17<br> - rs2_h0_val == -32768<br> - rs1_h2_val == -21846<br>                                                                                                                                                                                                                                                                                                                                                                                  |[0x8000120c]:KMABT t6, t5, t4<br> [0x80001210]:sd t6, 576(ra)<br>     |
|  65|[0x80003610]<br>0x0EFE2CA30276FEA7|- rs2_h1_val == -16385<br> - rs2_h0_val == 16384<br> - rs1_h0_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                            |[0x80001248]:KMABT t6, t5, t4<br> [0x8000124c]:sd t6, 592(ra)<br>     |
|  66|[0x80003620]<br>0x0EFE3D440276EEA7|- rs2_h0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001280]:KMABT t6, t5, t4<br> [0x80001284]:sd t6, 608(ra)<br>     |
|  67|[0x80003630]<br>0x0EFE3D17FA76EEA7|- rs1_h0_val == -32768<br> - rs2_h0_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x800012b0]:KMABT t6, t5, t4<br> [0x800012b4]:sd t6, 624(ra)<br>     |
|  68|[0x80003640]<br>0x0EFE3D07FA770F68|- rs2_h0_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800012ec]:KMABT t6, t5, t4<br> [0x800012f0]:sd t6, 640(ra)<br>     |
|  69|[0x80003650]<br>0x0EFE3D23FA778F68|- rs2_h0_val == 16<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001320]:KMABT t6, t5, t4<br> [0x80001324]:sd t6, 656(ra)<br>     |
|  70|[0x80003660]<br>0x0EFE3D6BFA77AF68|- rs2_h0_val == 1<br> - rs1_h3_val == 16<br> - rs1_h1_val == 32767<br>                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001354]:KMABT t6, t5, t4<br> [0x80001358]:sd t6, 672(ra)<br>     |
|  71|[0x80003670]<br>0x0EFE3D59FA788F68|- rs2_h2_val == -4097<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001388]:KMABT t6, t5, t4<br> [0x8000138c]:sd t6, 688(ra)<br>     |
|  72|[0x80003680]<br>0x0EFF419AFA79CF68|- rs1_h3_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800013c0]:KMABT t6, t5, t4<br> [0x800013c4]:sd t6, 704(ra)<br>     |
|  73|[0x80003690]<br>0x0EFEE19AF6799F69|- rs1_h3_val == -16385<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                             |[0x800013f4]:KMABT t6, t5, t4<br> [0x800013f8]:sd t6, 720(ra)<br>     |
|  74|[0x800036a0]<br>0x0F0EE19AF67ABF72|- rs2_h1_val == -9<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001430]:KMABT t6, t5, t4<br> [0x80001434]:sd t6, 736(ra)<br>     |
|  75|[0x800036b0]<br>0x0F0CE15AF67ABFB6|- rs1_h3_val == 128<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x8000146c]:KMABT t6, t5, t4<br> [0x80001470]:sd t6, 752(ra)<br>     |
|  76|[0x800036c0]<br>0x0F0CE1DAF67CFFBF|- rs1_h3_val == 64<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800014a8]:KMABT t6, t5, t4<br> [0x800014ac]:sd t6, 768(ra)<br>     |
|  77|[0x800036d0]<br>0x0E8CDDDAF678F7BF|- rs1_h3_val == 32<br> - rs1_h2_val == 1024<br>                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800014e4]:KMABT t6, t5, t4<br> [0x800014e8]:sd t6, 784(ra)<br>     |
|  78|[0x800036e0]<br>0x0E8CEBE1F678FEC6|- rs2_h2_val == -65<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001520]:KMABT t6, t5, t4<br> [0x80001524]:sd t6, 800(ra)<br>     |
|  79|[0x800036f0]<br>0x0E8CD7DCF6757ECD|- rs2_h1_val == 32767<br> - rs1_h3_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x80001554]:KMABT t6, t5, t4<br> [0x80001558]:sd t6, 816(ra)<br>     |
|  80|[0x80003700]<br>0x0E9D17DCF6757EA3|- rs2_h2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001590]:KMABT t6, t5, t4<br> [0x80001594]:sd t6, 832(ra)<br>     |
|  81|[0x80003710]<br>0x0E9D57DEF6757CA3|- rs1_h2_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800015bc]:KMABT t6, t5, t4<br> [0x800015c0]:sd t6, 848(ra)<br>     |
|  82|[0x80003720]<br>0x0E9D585EF6797CA3|- rs2_h1_val == 2048<br> - rs1_h2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800015f0]:KMABT t6, t5, t4<br> [0x800015f4]:sd t6, 864(ra)<br>     |
|  83|[0x80003730]<br>0x0E9B585AF6797CA3|- rs2_h2_val == 32<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001624]:KMABT t6, t5, t4<br> [0x80001628]:sd t6, 880(ra)<br>     |
|  84|[0x80003740]<br>0x0C9B185AF6797DCC|- rs2_h2_val == 4<br> - rs1_h3_val == 4096<br>                                                                                                                                                                                                                                                                                                                                                                                                                                         |[0x80001668]:KMABT t6, t5, t4<br> [0x8000166c]:sd t6, 896(ra)<br>     |
|  85|[0x80003750]<br>0x0C9B1869F6787DC4|- rs1_h2_val == -5<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x800016a4]:KMABT t6, t5, t4<br> [0x800016a8]:sd t6, 912(ra)<br>     |
|  86|[0x80003760]<br>0x0C7AD869F6787D93|- rs1_h2_val == 16384<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800016dc]:KMABT t6, t5, t4<br> [0x800016e0]:sd t6, 928(ra)<br>     |
|  87|[0x80003770]<br>0x0C6582E9FBCDCD93|- rs2_h1_val == 21845<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x80001710]:KMABT t6, t5, t4<br> [0x80001714]:sd t6, 944(ra)<br>     |
|  88|[0x80003780]<br>0x0C657AE9FBCE8D99|- rs2_h1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x8000174c]:KMABT t6, t5, t4<br> [0x80001750]:sd t6, 960(ra)<br>     |
|  89|[0x80003790]<br>0x0C6566E9FBCDCD9C|- rs1_h2_val == 512<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001780]:KMABT t6, t5, t4<br> [0x80001784]:sd t6, 976(ra)<br>     |
|  90|[0x800037a0]<br>0x0C65A6E9FBCED1DD|- rs1_h2_val == 256<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x800017b4]:KMABT t6, t5, t4<br> [0x800017b8]:sd t6, 992(ra)<br>     |
|  91|[0x800037b0]<br>0x0C65A71CFBCED61E|- rs2_h3_val == -17<br> - rs2_h1_val == -33<br>                                                                                                                                                                                                                                                                                                                                                                                                                                        |[0x800017ec]:KMABT t6, t5, t4<br> [0x800017f0]:sd t6, 1008(ra)<br>    |
|  92|[0x800037c0]<br>0x0C65A715FBEEE21F|- rs1_h2_val == 1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x80001820]:KMABT t6, t5, t4<br> [0x80001824]:sd t6, 1024(ra)<br>    |
|  93|[0x800037d0]<br>0x0C65A511FBEE821F|- rs2_h1_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x8000185c]:KMABT t6, t5, t4<br> [0x80001860]:sd t6, 1040(ra)<br>    |
|  94|[0x800037e0]<br>0x0CE5E712FBEE891F|- rs1_h3_val == -17<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                |[0x80001898]:KMABT t6, t5, t4<br> [0x8000189c]:sd t6, 1056(ra)<br>    |
|  95|[0x800037f0]<br>0x0CE5E6B2FBEE8901|- rs1_h1_val == -2049<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                              |[0x800018cc]:KMABT t6, t5, t4<br> [0x800018d0]:sd t6, 1072(ra)<br>    |
|  96|[0x80003800]<br>0x0CF5F7B3FBDE8501|- rs1_h2_val == -4097<br> - rs1_h1_val == -513<br>                                                                                                                                                                                                                                                                                                                                                                                                                                     |[0x80001904]:KMABT t6, t5, t4<br> [0x80001908]:sd t6, 1088(ra)<br>    |
|  97|[0x80003810]<br>0x0CF5F7AFFBDE84F5|- rs2_h3_val == -1<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x80001930]:KMABT t6, t5, t4<br> [0x80001934]:sd t6, 1104(ra)<br>    |
|  98|[0x80003820]<br>0x0CF5F4AFFB5E46F6|- rs2_h2_val == 2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |[0x8000196c]:KMABT t6, t5, t4<br> [0x80001970]:sd t6, 1120(ra)<br>    |
|  99|[0x80003830]<br>0x0CF574AFFB5E46C0|- rs1_h2_val == -2<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                                 |[0x8000199c]:KMABT t6, t5, t4<br> [0x800019a0]:sd t6, 1136(ra)<br>    |
| 100|[0x80003850]<br>0xCCF4ECAFFB5AAAB9|- rs1_h2_val == 2048<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001a18]:KMABT t6, t5, t4<br> [0x80001a1c]:sd t6, 1168(ra)<br>    |
| 101|[0x80003880]<br>0xCCB8EEAFFB5AE4BB|- rs1_h3_val == 8192<br>                                                                                                                                                                                                                                                                                                                                                                                                                                                               |[0x80001ad0]:KMABT t6, t5, t4<br> [0x80001ad4]:sd t6, 1216(ra)<br>    |
