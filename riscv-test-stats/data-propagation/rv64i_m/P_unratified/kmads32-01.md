
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001940')]      |
| SIG_REGION                | [('0x80003210', '0x80003a70', '268 dwords')]      |
| COV_LABELS                | kmads32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmads32-01.S    |
| Total Number of coverpoints| 392     |
| Total Coverpoints Hit     | 386      |
| Total Signature Updates   | 268      |
| STAT1                     | 131      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 134     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001084]:KMADS32 t6, t5, t4
      [0x80001088]:sd t6, 976(sp)
 -- Signature Address: 0x80003710 Data: 0x04042E4D469271CF
 -- Redundant Coverpoints hit by the op
      - opcode : kmads32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == 0
      - rs2_w0_val == 33554432
      - rs1_w1_val == -134217729
      - rs1_w0_val == 2




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800018e8]:KMADS32 t6, t5, t4
      [0x800018ec]:sd t6, 1792(sp)
 -- Signature Address: 0x80003a40 Data: 0xF9FBF0396AA21FE8
 -- Redundant Coverpoints hit by the op
      - opcode : kmads32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val == rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val < 0 and rs2_w0_val < 0
      - rs2_w1_val == 16777216
      - rs2_w0_val == -1025
      - rs1_w1_val == 16777216
      - rs1_w0_val == -2097153




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000190c]:KMADS32 t6, t5, t4
      [0x80001910]:sd t6, 1808(sp)
 -- Signature Address: 0x80003a50 Data: 0xF9FBF0356AA21DA8
 -- Redundant Coverpoints hit by the op
      - opcode : kmads32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == -9
      - rs2_w0_val == 512
      - rs1_w1_val == 64
      - rs1_w0_val == 33554432






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmads32', 'rs1 : x18', 'rs2 : x18', 'rd : x4', 'rs1 == rs2 != rd', 'rs1_w1_val == rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val == rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w1_val == 2048', 'rs2_w0_val == -536870913', 'rs1_w1_val == 2048', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x800003c4]:KMADS32 tp, s2, s2
	-[0x800003c8]:sd tp, 0(gp)
Current Store : [0x800003cc] : sd s2, 8(gp) -- Store: [0x80003218]:0x00000800DFFFFFFF




Last Coverpoint : ['rs1 : x2', 'rs2 : x2', 'rd : x2', 'rs1 == rs2 == rd', 'rs2_w1_val == 16777216', 'rs2_w0_val == -1025', 'rs1_w1_val == 16777216', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x800003f4]:KMADS32 sp, sp, sp
	-[0x800003f8]:sd sp, 16(gp)
Current Store : [0x800003fc] : sd sp, 24(gp) -- Store: [0x80003228]:0x01010000FFEFF3FE




Last Coverpoint : ['rs1 : x25', 'rs2 : x26', 'rd : x10', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w0_val == 4', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x8000041c]:KMADS32 a0, s9, s10
	-[0x80000420]:sd a0, 32(gp)
Current Store : [0x80000424] : sd s9, 40(gp) -- Store: [0x80003238]:0xFFFFFFFCAAAAAAAA




Last Coverpoint : ['rs1 : x27', 'rs2 : x21', 'rd : x27', 'rs1 == rd != rs2', 'rs1_w1_val < 0 and rs2_w1_val < 0', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == -3', 'rs2_w0_val == 512', 'rs1_w1_val == -1', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000440]:KMADS32 s11, s11, s5
	-[0x80000444]:sd s11, 48(gp)
Current Store : [0x80000448] : sd s11, 56(gp) -- Store: [0x80003248]:0xFFFFFFFEFE010003




Last Coverpoint : ['rs1 : x0', 'rs2 : x29', 'rd : x29', 'rs2 == rd != rs1', 'rs2_w1_val == -9', 'rs1_w1_val == 0', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000464]:KMADS32 t4, zero, t4
	-[0x80000468]:sd t4, 64(gp)
Current Store : [0x8000046c] : sd zero, 72(gp) -- Store: [0x80003258]:0x0000000000000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x28', 'rd : x22', 'rs2_w0_val == -2097153', 'rs1_w1_val == -33', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000494]:KMADS32 s6, a4, t3
	-[0x80000498]:sd s6, 80(gp)
Current Store : [0x8000049c] : sd a4, 88(gp) -- Store: [0x80003268]:0xFFFFFFDFFFDFFFFF




Last Coverpoint : ['rs1 : x11', 'rs2 : x20', 'rd : x8', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w1_val == -4097', 'rs1_w1_val == -513', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x800004b8]:KMADS32 fp, a1, s4
	-[0x800004bc]:sd fp, 96(gp)
Current Store : [0x800004c0] : sd a1, 104(gp) -- Store: [0x80003278]:0xFFFFFDFF02000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x31', 'rd : x25', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs2_w1_val == -1431655766', 'rs2_w0_val == -2049', 'rs1_w1_val == 33554432', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x800004e8]:KMADS32 s9, t3, t6
	-[0x800004ec]:sd s9, 112(gp)
Current Store : [0x800004f0] : sd t3, 120(gp) -- Store: [0x80003288]:0x0200000008000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x25', 'rd : x16', 'rs2_w1_val == 1431655765', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000510]:KMADS32 a6, a5, s9
	-[0x80000514]:sd a6, 128(gp)
Current Store : [0x80000518] : sd a5, 136(gp) -- Store: [0x80003298]:0xFFFFFFDF00000008




Last Coverpoint : ['rs1 : x30', 'rs2 : x4', 'rd : x0', 'rs2_w1_val == 2147483647', 'rs2_w0_val == 1048576', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x8000053c]:KMADS32 zero, t5, tp
	-[0x80000540]:sd zero, 144(gp)
Current Store : [0x80000544] : sd t5, 152(gp) -- Store: [0x800032a8]:0x0200000000000010




Last Coverpoint : ['rs1 : x13', 'rs2 : x15', 'rd : x6', 'rs2_w1_val == -1073741825', 'rs1_w1_val == 4096', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x8000056c]:KMADS32 t1, a3, a5
	-[0x80000570]:sd t1, 160(gp)
Current Store : [0x80000574] : sd a3, 168(gp) -- Store: [0x800032b8]:0x00001000FFEFFFFF




Last Coverpoint : ['rs1 : x29', 'rs2 : x22', 'rd : x5', 'rs2_w1_val == -536870913', 'rs2_w0_val == 16777216', 'rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x80000594]:KMADS32 t0, t4, s6
	-[0x80000598]:sd t0, 176(gp)
Current Store : [0x8000059c] : sd t4, 184(gp) -- Store: [0x800032c8]:0x2000000000000009




Last Coverpoint : ['rs1 : x31', 'rs2 : x6', 'rd : x15', 'rs2_w1_val == -268435457', 'rs2_w0_val == -129', 'rs1_w1_val == 134217728', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x800005bc]:KMADS32 a5, t6, t1
	-[0x800005c0]:sd a5, 192(gp)
Current Store : [0x800005c4] : sd t6, 200(gp) -- Store: [0x800032d8]:0x0800000000080000




Last Coverpoint : ['rs1 : x6', 'rs2 : x19', 'rd : x28', 'rs2_w1_val == -134217729', 'rs1_w1_val == 32768', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x800005e8]:KMADS32 t3, t1, s3
	-[0x800005ec]:sd t3, 208(gp)
Current Store : [0x800005f0] : sd t1, 216(gp) -- Store: [0x800032e8]:0x0000800000000200




Last Coverpoint : ['rs1 : x10', 'rs2 : x5', 'rd : x31', 'rs2_w1_val == -67108865', 'rs2_w0_val == 16384', 'rs1_w1_val == 8', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000614]:KMADS32 t6, a0, t0
	-[0x80000618]:sd t6, 224(gp)
Current Store : [0x8000061c] : sd a0, 232(gp) -- Store: [0x800032f8]:0x0000000800000001




Last Coverpoint : ['rs1 : x19', 'rs2 : x0', 'rd : x18', 'rs2_w1_val == 0', 'rs2_w0_val == 0', 'rs1_w1_val == -129']
Last Code Sequence : 
	-[0x8000063c]:KMADS32 s2, s3, zero
	-[0x80000640]:sd s2, 240(gp)
Current Store : [0x80000644] : sd s3, 248(gp) -- Store: [0x80003308]:0xFFFFFF7F02000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x9', 'rd : x26', 'rs2_w1_val == -16777217', 'rs2_w0_val == -2', 'rs1_w1_val == -4097', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000664]:KMADS32 s10, s6, s1
	-[0x80000668]:sd s10, 256(gp)
Current Store : [0x8000066c] : sd s6, 264(gp) -- Store: [0x80003318]:0xFFFFEFFF00000004




Last Coverpoint : ['rs1 : x12', 'rs2 : x16', 'rd : x1', 'rs2_w1_val == -8388609', 'rs2_w0_val == -2147483648']
Last Code Sequence : 
	-[0x80000688]:KMADS32 ra, a2, a6
	-[0x8000068c]:sd ra, 272(gp)
Current Store : [0x80000690] : sd a2, 280(gp) -- Store: [0x80003328]:0xFFFFFFF800000005




Last Coverpoint : ['rs1 : x7', 'rs2 : x1', 'rd : x21', 'rs2_w1_val == -4194305', 'rs2_w0_val == -1', 'rs1_w1_val == -2097153', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800006b0]:KMADS32 s5, t2, ra
	-[0x800006b4]:sd s5, 288(gp)
Current Store : [0x800006b8] : sd t2, 296(gp) -- Store: [0x80003338]:0xFFDFFFFFF7FFFFFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x3', 'rd : x30', 'rs2_w1_val == -2097153', 'rs2_w0_val == -3', 'rs1_w1_val == -5', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x800006dc]:KMADS32 t5, s10, gp
	-[0x800006e0]:sd t5, 0(sp)
Current Store : [0x800006e4] : sd s10, 8(sp) -- Store: [0x80003348]:0xFFFFFFFBFFFFFFFE




Last Coverpoint : ['rs1 : x3', 'rs2 : x17', 'rd : x11', 'rs2_w1_val == -1048577', 'rs1_w1_val == 4', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000708]:KMADS32 a1, gp, a7
	-[0x8000070c]:sd a1, 16(sp)
Current Store : [0x80000710] : sd gp, 24(sp) -- Store: [0x80003358]:0x0000000400100000




Last Coverpoint : ['rs1 : x21', 'rs2 : x10', 'rd : x13', 'rs2_w1_val == -524289', 'rs2_w0_val == -32769', 'rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80000734]:KMADS32 a3, s5, a0
	-[0x80000738]:sd a3, 32(sp)
Current Store : [0x8000073c] : sd s5, 40(sp) -- Store: [0x80003368]:0x00000000FFFFFFFD




Last Coverpoint : ['rs1 : x9', 'rs2 : x30', 'rd : x23', 'rs2_w1_val == -262145', 'rs2_w0_val == 32', 'rs1_w1_val == -262145', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x8000075c]:KMADS32 s7, s1, t5
	-[0x80000760]:sd s7, 48(sp)
Current Store : [0x80000764] : sd s1, 56(sp) -- Store: [0x80003378]:0xFFFBFFFFFFFFFDFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x13', 'rd : x14', 'rs2_w1_val == -131073', 'rs1_w1_val == 8388608']
Last Code Sequence : 
	-[0x80000784]:KMADS32 a4, s8, a3
	-[0x80000788]:sd a4, 64(sp)
Current Store : [0x8000078c] : sd s8, 72(sp) -- Store: [0x80003388]:0x0080000000000003




Last Coverpoint : ['rs1 : x8', 'rs2 : x7', 'rd : x24', 'rs2_w1_val == -65537', 'rs2_w0_val == -4097', 'rs1_w1_val == -2049', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x800007b0]:KMADS32 s8, fp, t2
	-[0x800007b4]:sd s8, 80(sp)
Current Store : [0x800007b8] : sd fp, 88(sp) -- Store: [0x80003398]:0xFFFFF7FFFFFFFFBF




Last Coverpoint : ['rs1 : x23', 'rs2 : x11', 'rd : x7', 'rs2_w1_val == -32769', 'rs2_w0_val == -33', 'rs1_w1_val == -1048577']
Last Code Sequence : 
	-[0x800007d8]:KMADS32 t2, s7, a1
	-[0x800007dc]:sd t2, 96(sp)
Current Store : [0x800007e0] : sd s7, 104(sp) -- Store: [0x800033a8]:0xFFEFFFFFDFFFFFFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x8', 'rd : x3', 'rs2_w1_val == -16385', 'rs2_w0_val == -1073741825', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000800]:KMADS32 gp, tp, fp
	-[0x80000804]:sd gp, 112(sp)
Current Store : [0x80000808] : sd tp, 120(sp) -- Store: [0x800033b8]:0x0000000700020000




Last Coverpoint : ['rs1 : x5', 'rs2 : x14', 'rd : x17', 'rs2_w1_val == -8193', 'rs1_w1_val == 67108864']
Last Code Sequence : 
	-[0x8000082c]:KMADS32 a7, t0, a4
	-[0x80000830]:sd a7, 128(sp)
Current Store : [0x80000834] : sd t0, 136(sp) -- Store: [0x800033c8]:0x04000000FFFFFBFF




Last Coverpoint : ['rs1 : x1', 'rs2 : x27', 'rd : x9', 'rs2_w1_val == -2049', 'rs2_w0_val == -67108865']
Last Code Sequence : 
	-[0x80000854]:KMADS32 s1, ra, s11
	-[0x80000858]:sd s1, 144(sp)
Current Store : [0x8000085c] : sd ra, 152(sp) -- Store: [0x800033d8]:0x00000007FFFFFFFA




Last Coverpoint : ['rs1 : x16', 'rs2 : x24', 'rd : x12', 'rs2_w1_val == -1025', 'rs1_w1_val == 1073741824', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x8000087c]:KMADS32 a2, a6, s8
	-[0x80000880]:sd a2, 160(sp)
Current Store : [0x80000884] : sd a6, 168(sp) -- Store: [0x800033e8]:0x4000000000008000




Last Coverpoint : ['rs1 : x17', 'rs2 : x23', 'rd : x19', 'rs2_w1_val == -513']
Last Code Sequence : 
	-[0x800008a0]:KMADS32 s3, a7, s7
	-[0x800008a4]:sd s3, 176(sp)
Current Store : [0x800008a8] : sd a7, 184(sp) -- Store: [0x800033f8]:0xFFEFFFFF08000000




Last Coverpoint : ['rs1 : x20', 'rs2_w1_val == -257', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x800008c4]:KMADS32 t6, s4, a0
	-[0x800008c8]:sd t6, 192(sp)
Current Store : [0x800008cc] : sd s4, 200(sp) -- Store: [0x80003408]:0xFFFFF7FF00400000




Last Coverpoint : ['rs2 : x12', 'rs2_w1_val == -129', 'rs2_w0_val == -16385', 'rs1_w1_val == 131072', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x800008f0]:KMADS32 s8, s10, a2
	-[0x800008f4]:sd s8, 208(sp)
Current Store : [0x800008f8] : sd s10, 216(sp) -- Store: [0x80003418]:0x00020000FFFFFFFB




Last Coverpoint : ['rd : x20', 'rs2_w1_val == -65', 'rs1_w1_val == 8192', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000920]:KMADS32 s4, s2, ra
	-[0x80000924]:sd s4, 224(sp)
Current Store : [0x80000928] : sd s2, 232(sp) -- Store: [0x80003428]:0x0000200055555555




Last Coverpoint : ['rs2_w1_val == -33', 'rs2_w0_val == -33554433', 'rs1_w1_val == 262144']
Last Code Sequence : 
	-[0x8000094c]:KMADS32 t6, t5, t4
	-[0x80000950]:sd t6, 240(sp)
Current Store : [0x80000954] : sd t5, 248(sp) -- Store: [0x80003438]:0x0004000000020000




Last Coverpoint : ['rs2_w1_val == -17', 'rs2_w0_val == 8192', 'rs1_w1_val == -131073']
Last Code Sequence : 
	-[0x80000970]:KMADS32 t6, t5, t4
	-[0x80000974]:sd t6, 256(sp)
Current Store : [0x80000978] : sd t5, 264(sp) -- Store: [0x80003448]:0xFFFDFFFFFFFFFFFB




Last Coverpoint : ['rs2_w1_val == -5', 'rs1_w1_val == -524289', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000998]:KMADS32 t6, t5, t4
	-[0x8000099c]:sd t6, 272(sp)
Current Store : [0x800009a0] : sd t5, 280(sp) -- Store: [0x80003458]:0xFFF7FFFF7FFFFFFF




Last Coverpoint : ['rs2_w1_val == -2', 'rs2_w0_val == -131073', 'rs1_w1_val == 2147483647']
Last Code Sequence : 
	-[0x800009c4]:KMADS32 t6, t5, t4
	-[0x800009c8]:sd t6, 288(sp)
Current Store : [0x800009cc] : sd t5, 296(sp) -- Store: [0x80003468]:0x7FFFFFFFC0000000




Last Coverpoint : ['rs2_w1_val == -2147483648', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x800009f0]:KMADS32 t6, t5, t4
	-[0x800009f4]:sd t6, 304(sp)
Current Store : [0x800009f8] : sd t5, 312(sp) -- Store: [0x80003478]:0x00000800FFFFFF7F




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs2_w0_val == -17', 'rs1_w1_val == -2']
Last Code Sequence : 
	-[0x80000a1c]:KMADS32 t6, t5, t4
	-[0x80000a20]:sd t6, 320(sp)
Current Store : [0x80000a24] : sd t5, 328(sp) -- Store: [0x80003488]:0xFFFFFFFE55555555




Last Coverpoint : ['rs2_w1_val == 536870912', 'rs2_w0_val == -9', 'rs1_w1_val == 256', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x80000a48]:KMADS32 t6, t5, t4
	-[0x80000a4c]:sd t6, 336(sp)
Current Store : [0x80000a50] : sd t5, 344(sp) -- Store: [0x80003498]:0x00000100EFFFFFFF




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs2_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000a74]:KMADS32 t6, t5, t4
	-[0x80000a78]:sd t6, 352(sp)
Current Store : [0x80000a7c] : sd t5, 360(sp) -- Store: [0x800034a8]:0x00002000FFFFFF7F




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000aa0]:KMADS32 t6, t5, t4
	-[0x80000aa4]:sd t6, 368(sp)
Current Store : [0x80000aa8] : sd t5, 376(sp) -- Store: [0x800034b8]:0xFFFFFDFFFEFFFFFF




Last Coverpoint : ['rs2_w1_val == 67108864', 'rs1_w1_val == -16777217']
Last Code Sequence : 
	-[0x80000ad4]:KMADS32 t6, t5, t4
	-[0x80000ad8]:sd t6, 384(sp)
Current Store : [0x80000adc] : sd t5, 392(sp) -- Store: [0x800034c8]:0xFEFFFFFF02000000




Last Coverpoint : ['rs2_w1_val == 33554432', 'rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x80000afc]:KMADS32 t6, t5, t4
	-[0x80000b00]:sd t6, 400(sp)
Current Store : [0x80000b04] : sd t5, 408(sp) -- Store: [0x800034d8]:0x00004000FFFFFFFC




Last Coverpoint : ['rs2_w1_val == 8388608', 'rs2_w0_val == 536870912', 'rs1_w1_val == -134217729', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000b28]:KMADS32 t6, t5, t4
	-[0x80000b2c]:sd t6, 416(sp)
Current Store : [0x80000b30] : sd t5, 424(sp) -- Store: [0x800034e8]:0xF7FFFFFF00004000




Last Coverpoint : ['rs2_w1_val == 4194304']
Last Code Sequence : 
	-[0x80000b50]:KMADS32 t6, t5, t4
	-[0x80000b54]:sd t6, 432(sp)
Current Store : [0x80000b58] : sd t5, 440(sp) -- Store: [0x800034f8]:0xFFFFFDFFFFEFFFFF




Last Coverpoint : ['rs2_w1_val == 2097152', 'rs2_w0_val == 1024', 'rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x80000b7c]:KMADS32 t6, t5, t4
	-[0x80000b80]:sd t6, 448(sp)
Current Store : [0x80000b84] : sd t5, 456(sp) -- Store: [0x80003508]:0x5555555500004000




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs1_w1_val == 1048576', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000ba4]:KMADS32 t6, t5, t4
	-[0x80000ba8]:sd t6, 464(sp)
Current Store : [0x80000bac] : sd t5, 472(sp) -- Store: [0x80003518]:0x0010000000001000




Last Coverpoint : ['rs2_w1_val == 524288']
Last Code Sequence : 
	-[0x80000bc8]:KMADS32 t6, t5, t4
	-[0x80000bcc]:sd t6, 480(sp)
Current Store : [0x80000bd0] : sd t5, 488(sp) -- Store: [0x80003528]:0x00000003FFFFFDFF




Last Coverpoint : ['rs2_w0_val == 2048', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000bf8]:KMADS32 t6, t5, t4
	-[0x80000bfc]:sd t6, 496(sp)
Current Store : [0x80000c00] : sd t5, 504(sp) -- Store: [0x80003538]:0x4000000001000000




Last Coverpoint : ['rs2_w0_val == 65536', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000c20]:KMADS32 t6, t5, t4
	-[0x80000c24]:sd t6, 512(sp)
Current Store : [0x80000c28] : sd t5, 520(sp) -- Store: [0x80003548]:0xC000000000800000




Last Coverpoint : ['rs2_w0_val == 1431655765', 'rs1_w1_val == 65536', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000c50]:KMADS32 t6, t5, t4
	-[0x80000c54]:sd t6, 528(sp)
Current Store : [0x80000c58] : sd t5, 536(sp) -- Store: [0x80003558]:0x0001000000200000




Last Coverpoint : ['rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000c78]:KMADS32 t6, t5, t4
	-[0x80000c7c]:sd t6, 544(sp)
Current Store : [0x80000c80] : sd t5, 552(sp) -- Store: [0x80003568]:0xFFFFFFF800040000




Last Coverpoint : ['rs2_w0_val == 134217728', 'rs1_w1_val == 64', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000c98]:KMADS32 t6, t5, t4
	-[0x80000c9c]:sd t6, 560(sp)
Current Store : [0x80000ca0] : sd t5, 568(sp) -- Store: [0x80003578]:0x0000004000002000




Last Coverpoint : ['rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000cc0]:KMADS32 t6, t5, t4
	-[0x80000cc4]:sd t6, 576(sp)
Current Store : [0x80000cc8] : sd t5, 584(sp) -- Store: [0x80003588]:0xFFFFFDFF00000800




Last Coverpoint : ['rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000cec]:KMADS32 t6, t5, t4
	-[0x80000cf0]:sd t6, 592(sp)
Current Store : [0x80000cf4] : sd t5, 600(sp) -- Store: [0x80003598]:0x0100000000000400




Last Coverpoint : ['rs2_w1_val == 16384', 'rs2_w0_val == 2', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000d10]:KMADS32 t6, t5, t4
	-[0x80000d14]:sd t6, 608(sp)
Current Store : [0x80000d18] : sd t5, 616(sp) -- Store: [0x800035a8]:0xFFFFFFF600000100




Last Coverpoint : ['rs2_w0_val == 2147483647', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000d34]:KMADS32 t6, t5, t4
	-[0x80000d38]:sd t6, 624(sp)
Current Store : [0x80000d3c] : sd t5, 632(sp) -- Store: [0x800035b8]:0xFFFFFFF600000080




Last Coverpoint : ['rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000d5c]:KMADS32 t6, t5, t4
	-[0x80000d60]:sd t6, 640(sp)
Current Store : [0x80000d64] : sd t5, 648(sp) -- Store: [0x800035c8]:0xFFFFFFFE00000040




Last Coverpoint : ['rs2_w0_val == -8388609', 'rs1_w1_val == 16', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000d88]:KMADS32 t6, t5, t4
	-[0x80000d8c]:sd t6, 656(sp)
Current Store : [0x80000d90] : sd t5, 664(sp) -- Store: [0x800035d8]:0x0000001000000020




Last Coverpoint : ['rs2_w1_val == 512', 'rs1_w1_val == -67108865', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000db4]:KMADS32 t6, t5, t4
	-[0x80000db8]:sd t6, 672(sp)
Current Store : [0x80000dbc] : sd t5, 680(sp) -- Store: [0x800035e8]:0xFBFFFFFF00000002




Last Coverpoint : ['rs2_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000dd4]:KMADS32 t6, t5, t4
	-[0x80000dd8]:sd t6, 688(sp)
Current Store : [0x80000ddc] : sd t5, 696(sp) -- Store: [0x800035f8]:0x0100000000000000




Last Coverpoint : ['rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000df8]:KMADS32 t6, t5, t4
	-[0x80000dfc]:sd t6, 704(sp)
Current Store : [0x80000e00] : sd t5, 712(sp) -- Store: [0x80003608]:0xFFFFF7FFFFFFFFFF




Last Coverpoint : ['rs2_w1_val == 262144', 'rs2_w0_val == 8388608', 'rs1_w1_val == 268435456']
Last Code Sequence : 
	-[0x80000e20]:KMADS32 t6, t5, t4
	-[0x80000e24]:sd t6, 720(sp)
Current Store : [0x80000e28] : sd t5, 728(sp) -- Store: [0x80003618]:0x10000000FFFFFBFF




Last Coverpoint : ['rs2_w1_val == 131072']
Last Code Sequence : 
	-[0x80000e48]:KMADS32 t6, t5, t4
	-[0x80000e4c]:sd t6, 736(sp)
Current Store : [0x80000e50] : sd t5, 744(sp) -- Store: [0x80003628]:0xFFEFFFFFFFFFFFFD




Last Coverpoint : ['rs2_w1_val == 65536', 'rs2_w0_val == 2097152', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000e70]:KMADS32 t6, t5, t4
	-[0x80000e74]:sd t6, 752(sp)
Current Store : [0x80000e78] : sd t5, 760(sp) -- Store: [0x80003638]:0xFFFFFF7FFFFFF7FF




Last Coverpoint : ['rs2_w1_val == 32768']
Last Code Sequence : 
	-[0x80000e94]:KMADS32 t6, t5, t4
	-[0x80000e98]:sd t6, 768(sp)
Current Store : [0x80000e9c] : sd t5, 776(sp) -- Store: [0x80003648]:0x0000000600400000




Last Coverpoint : ['rs2_w1_val == 8192', 'rs1_w1_val == 128']
Last Code Sequence : 
	-[0x80000ec0]:KMADS32 t6, t5, t4
	-[0x80000ec4]:sd t6, 784(sp)
Current Store : [0x80000ec8] : sd t5, 792(sp) -- Store: [0x80003658]:0x00000080FEFFFFFF




Last Coverpoint : ['rs2_w1_val == 4096', 'rs2_w0_val == -134217729', 'rs1_w1_val == 512', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80000eec]:KMADS32 t6, t5, t4
	-[0x80000ef0]:sd t6, 800(sp)
Current Store : [0x80000ef4] : sd t5, 808(sp) -- Store: [0x80003668]:0x00000200FF7FFFFF




Last Coverpoint : ['rs2_w1_val == 1024', 'rs2_w0_val == 128']
Last Code Sequence : 
	-[0x80000f1c]:KMADS32 t6, t5, t4
	-[0x80000f20]:sd t6, 816(sp)
Current Store : [0x80000f24] : sd t5, 824(sp) -- Store: [0x80003678]:0xFFF7FFFFAAAAAAAA




Last Coverpoint : ['rs2_w1_val == 256', 'rs2_w0_val == 1073741824', 'rs1_w1_val == -4194305', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000f3c]:KMADS32 t6, t5, t4
	-[0x80000f40]:sd t6, 832(sp)
Current Store : [0x80000f44] : sd t5, 840(sp) -- Store: [0x80003688]:0xFFBFFFFF10000000




Last Coverpoint : ['rs2_w1_val == 128']
Last Code Sequence : 
	-[0x80000f60]:KMADS32 t6, t5, t4
	-[0x80000f64]:sd t6, 848(sp)
Current Store : [0x80000f68] : sd t5, 856(sp) -- Store: [0x80003698]:0x0000100000020000




Last Coverpoint : ['rs2_w1_val == 64', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000f84]:KMADS32 t6, t5, t4
	-[0x80000f88]:sd t6, 864(sp)
Current Store : [0x80000f8c] : sd t5, 872(sp) -- Store: [0x800036a8]:0xFFFDFFFFFFFFFFF7




Last Coverpoint : ['rs2_w1_val == 32', 'rs2_w0_val == 262144']
Last Code Sequence : 
	-[0x80000fa8]:KMADS32 t6, t5, t4
	-[0x80000fac]:sd t6, 880(sp)
Current Store : [0x80000fb0] : sd t5, 888(sp) -- Store: [0x800036b8]:0x0000200000000200




Last Coverpoint : ['rs2_w1_val == 16']
Last Code Sequence : 
	-[0x80000fd4]:KMADS32 t6, t5, t4
	-[0x80000fd8]:sd t6, 896(sp)
Current Store : [0x80000fdc] : sd t5, 904(sp) -- Store: [0x800036c8]:0x5555555500040000




Last Coverpoint : ['rs2_w1_val == 8', 'rs2_w0_val == 8', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80000ffc]:KMADS32 t6, t5, t4
	-[0x80001000]:sd t6, 912(sp)
Current Store : [0x80001004] : sd t5, 920(sp) -- Store: [0x800036d8]:0x20000000FFFFFEFF




Last Coverpoint : ['rs2_w1_val == 4', 'rs1_w1_val == -257', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80001020]:KMADS32 t6, t5, t4
	-[0x80001024]:sd t6, 928(sp)
Current Store : [0x80001028] : sd t5, 936(sp) -- Store: [0x800036e8]:0xFFFFFEFFFFFFBFFF




Last Coverpoint : ['rs2_w1_val == 2']
Last Code Sequence : 
	-[0x80001040]:KMADS32 t6, t5, t4
	-[0x80001044]:sd t6, 944(sp)
Current Store : [0x80001048] : sd t5, 952(sp) -- Store: [0x800036f8]:0x4000000000000040




Last Coverpoint : ['rs2_w1_val == 1']
Last Code Sequence : 
	-[0x80001064]:KMADS32 t6, t5, t4
	-[0x80001068]:sd t6, 960(sp)
Current Store : [0x8000106c] : sd t5, 968(sp) -- Store: [0x80003708]:0x0001000000000100




Last Coverpoint : ['opcode : kmads32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 0', 'rs2_w0_val == 33554432', 'rs1_w1_val == -134217729', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80001084]:KMADS32 t6, t5, t4
	-[0x80001088]:sd t6, 976(sp)
Current Store : [0x8000108c] : sd t5, 984(sp) -- Store: [0x80003718]:0xF7FFFFFF00000002




Last Coverpoint : ['rs2_w0_val == 131072', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x800010ac]:KMADS32 t6, t5, t4
	-[0x800010b0]:sd t6, 992(sp)
Current Store : [0x800010b4] : sd t5, 1000(sp) -- Store: [0x80003728]:0x00000080FFFF7FFF




Last Coverpoint : ['rs2_w0_val == 32768']
Last Code Sequence : 
	-[0x800010d4]:KMADS32 t6, t5, t4
	-[0x800010d8]:sd t6, 1008(sp)
Current Store : [0x800010dc] : sd t5, 1016(sp) -- Store: [0x80003738]:0xFFFFFFDFFFDFFFFF




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x800010f8]:KMADS32 t6, t5, t4
	-[0x800010fc]:sd t6, 1024(sp)
Current Store : [0x80001100] : sd t5, 1032(sp) -- Store: [0x80003748]:0x0000001004000000




Last Coverpoint : ['rs2_w0_val == 4096']
Last Code Sequence : 
	-[0x80001124]:KMADS32 t6, t5, t4
	-[0x80001128]:sd t6, 1040(sp)
Current Store : [0x8000112c] : sd t5, 1048(sp) -- Store: [0x80003758]:0x0000000800000040




Last Coverpoint : ['rs2_w0_val == 256', 'rs1_w1_val == -65537']
Last Code Sequence : 
	-[0x8000114c]:KMADS32 t6, t5, t4
	-[0x80001150]:sd t6, 1056(sp)
Current Store : [0x80001154] : sd t5, 1064(sp) -- Store: [0x80003768]:0xFFFEFFFF00000200




Last Coverpoint : ['rs2_w0_val == 16']
Last Code Sequence : 
	-[0x80001170]:KMADS32 t6, t5, t4
	-[0x80001174]:sd t6, 1072(sp)
Current Store : [0x80001178] : sd t5, 1080(sp) -- Store: [0x80003778]:0x1000000000000080




Last Coverpoint : ['rs2_w0_val == 1']
Last Code Sequence : 
	-[0x800011a0]:KMADS32 t6, t5, t4
	-[0x800011a4]:sd t6, 1088(sp)
Current Store : [0x800011a8] : sd t5, 1096(sp) -- Store: [0x80003788]:0x02000000FFEFFFFF




Last Coverpoint : ['rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800011cc]:KMADS32 t6, t5, t4
	-[0x800011d0]:sd t6, 1104(sp)
Current Store : [0x800011d4] : sd t5, 1112(sp) -- Store: [0x80003798]:0xFEFFFFFFFFFEFFFF




Last Coverpoint : ['rs1_w1_val == -1431655766']
Last Code Sequence : 
	-[0x800011fc]:KMADS32 t6, t5, t4
	-[0x80001200]:sd t6, 1120(sp)
Current Store : [0x80001204] : sd t5, 1128(sp) -- Store: [0x800037a8]:0xAAAAAAAA3FFFFFFF




Last Coverpoint : ['rs1_w1_val == -1073741825']
Last Code Sequence : 
	-[0x80001228]:KMADS32 t6, t5, t4
	-[0x8000122c]:sd t6, 1136(sp)
Current Store : [0x80001230] : sd t5, 1144(sp) -- Store: [0x800037b8]:0xBFFFFFFFFFEFFFFF




Last Coverpoint : ['rs2_w0_val == 4194304', 'rs1_w1_val == -536870913', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x8000124c]:KMADS32 t6, t5, t4
	-[0x80001250]:sd t6, 1152(sp)
Current Store : [0x80001254] : sd t5, 1160(sp) -- Store: [0x800037c8]:0xDFFFFFFFFFFFFFEF




Last Coverpoint : ['rs1_w1_val == -268435457']
Last Code Sequence : 
	-[0x80001274]:KMADS32 t6, t5, t4
	-[0x80001278]:sd t6, 1168(sp)
Current Store : [0x8000127c] : sd t5, 1176(sp) -- Store: [0x800037d8]:0xEFFFFFFFFFFFFBFF




Last Coverpoint : ['rs2_w0_val == -1431655766', 'rs1_w1_val == -33554433']
Last Code Sequence : 
	-[0x800012a0]:KMADS32 t6, t5, t4
	-[0x800012a4]:sd t6, 1184(sp)
Current Store : [0x800012a8] : sd t5, 1192(sp) -- Store: [0x800037e8]:0xFDFFFFFF00000002




Last Coverpoint : ['rs1_w1_val == -8388609']
Last Code Sequence : 
	-[0x800012c8]:KMADS32 t6, t5, t4
	-[0x800012cc]:sd t6, 1200(sp)
Current Store : [0x800012d0] : sd t5, 1208(sp) -- Store: [0x800037f8]:0xFF7FFFFF7FFFFFFF




Last Coverpoint : ['rs1_w1_val == -32769']
Last Code Sequence : 
	-[0x800012f4]:KMADS32 t6, t5, t4
	-[0x800012f8]:sd t6, 1216(sp)
Current Store : [0x800012fc] : sd t5, 1224(sp) -- Store: [0x80003808]:0xFFFF7FFFFFFEFFFF




Last Coverpoint : ['rs2_w1_val == -33554433', 'rs2_w0_val == -257', 'rs1_w1_val == -16385']
Last Code Sequence : 
	-[0x8000131c]:KMADS32 t6, t5, t4
	-[0x80001320]:sd t6, 1232(sp)
Current Store : [0x80001324] : sd t5, 1240(sp) -- Store: [0x80003818]:0xFFFFBFFF00000010




Last Coverpoint : ['rs1_w1_val == -8193']
Last Code Sequence : 
	-[0x80001348]:KMADS32 t6, t5, t4
	-[0x8000134c]:sd t6, 1248(sp)
Current Store : [0x80001350] : sd t5, 1256(sp) -- Store: [0x80003828]:0xFFFFDFFFFFFFF7FF




Last Coverpoint : ['rs1_w1_val == -1025']
Last Code Sequence : 
	-[0x8000136c]:KMADS32 t6, t5, t4
	-[0x80001370]:sd t6, 1264(sp)
Current Store : [0x80001374] : sd t5, 1272(sp) -- Store: [0x80003838]:0xFFFFFBFF00020000




Last Coverpoint : ['rs1_w1_val == -65']
Last Code Sequence : 
	-[0x80001390]:KMADS32 t6, t5, t4
	-[0x80001394]:sd t6, 1280(sp)
Current Store : [0x80001398] : sd t5, 1288(sp) -- Store: [0x80003848]:0xFFFFFFBF00004000




Last Coverpoint : ['rs2_w0_val == -65537', 'rs1_w1_val == -17']
Last Code Sequence : 
	-[0x800013bc]:KMADS32 t6, t5, t4
	-[0x800013c0]:sd t6, 1296(sp)
Current Store : [0x800013c4] : sd t5, 1304(sp) -- Store: [0x80003858]:0xFFFFFFEF00000009




Last Coverpoint : ['rs1_w1_val == -9']
Last Code Sequence : 
	-[0x800013e0]:KMADS32 t6, t5, t4
	-[0x800013e4]:sd t6, 1312(sp)
Current Store : [0x800013e8] : sd t5, 1320(sp) -- Store: [0x80003868]:0xFFFFFFF700000006




Last Coverpoint : ['rs1_w1_val == -3']
Last Code Sequence : 
	-[0x80001408]:KMADS32 t6, t5, t4
	-[0x8000140c]:sd t6, 1328(sp)
Current Store : [0x80001410] : sd t5, 1336(sp) -- Store: [0x80003878]:0xFFFFFFFD00000020




Last Coverpoint : ['rs1_w1_val == -2147483648', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80001440]:KMADS32 t6, t5, t4
	-[0x80001444]:sd t6, 1344(sp)
Current Store : [0x80001448] : sd t5, 1352(sp) -- Store: [0x80003888]:0x80000000FFFFDFFF




Last Coverpoint : ['rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x80001470]:KMADS32 t6, t5, t4
	-[0x80001474]:sd t6, 1360(sp)
Current Store : [0x80001478] : sd t5, 1368(sp) -- Store: [0x80003898]:0x00400000FFFFBFFF




Last Coverpoint : ['rs1_w1_val == 2097152']
Last Code Sequence : 
	-[0x8000149c]:KMADS32 t6, t5, t4
	-[0x800014a0]:sd t6, 1376(sp)
Current Store : [0x800014a4] : sd t5, 1384(sp) -- Store: [0x800038a8]:0x00200000FFFFFFFB




Last Coverpoint : ['rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x800014c0]:KMADS32 t6, t5, t4
	-[0x800014c4]:sd t6, 1392(sp)
Current Store : [0x800014c8] : sd t5, 1400(sp) -- Store: [0x800038b8]:0x0008000000000040




Last Coverpoint : ['rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x800014e8]:KMADS32 t6, t5, t4
	-[0x800014ec]:sd t6, 1408(sp)
Current Store : [0x800014f0] : sd t5, 1416(sp) -- Store: [0x800038c8]:0x0000040000000100




Last Coverpoint : ['rs2_w1_val == -1', 'rs2_w0_val == 524288']
Last Code Sequence : 
	-[0x8000150c]:KMADS32 t6, t5, t4
	-[0x80001510]:sd t6, 1424(sp)
Current Store : [0x80001514] : sd t5, 1432(sp) -- Store: [0x800038d8]:0x0400000000000020




Last Coverpoint : ['rs1_w1_val == 32']
Last Code Sequence : 
	-[0x80001540]:KMADS32 t6, t5, t4
	-[0x80001544]:sd t6, 1440(sp)
Current Store : [0x80001548] : sd t5, 1448(sp) -- Store: [0x800038e8]:0x00000020FFFFDFFF




Last Coverpoint : ['rs1_w1_val == 2']
Last Code Sequence : 
	-[0x80001560]:KMADS32 t6, t5, t4
	-[0x80001564]:sd t6, 1456(sp)
Current Store : [0x80001568] : sd t5, 1464(sp) -- Store: [0x800038f8]:0x0000000201000000




Last Coverpoint : ['rs2_w0_val == -268435457']
Last Code Sequence : 
	-[0x80001584]:KMADS32 t6, t5, t4
	-[0x80001588]:sd t6, 1472(sp)
Current Store : [0x8000158c] : sd t5, 1480(sp) -- Store: [0x80003908]:0xFF7FFFFFFFFFFFFF




Last Coverpoint : ['rs1_w1_val == 1']
Last Code Sequence : 
	-[0x800015a4]:KMADS32 t6, t5, t4
	-[0x800015a8]:sd t6, 1488(sp)
Current Store : [0x800015ac] : sd t5, 1496(sp) -- Store: [0x80003918]:0x0000000100800000




Last Coverpoint : ['rs2_w0_val == -16777217', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x800015d0]:KMADS32 t6, t5, t4
	-[0x800015d4]:sd t6, 1504(sp)
Current Store : [0x800015d8] : sd t5, 1512(sp) -- Store: [0x80003928]:0x00004000FFFBFFFF




Last Coverpoint : ['rs2_w0_val == -4194305', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80001604]:KMADS32 t6, t5, t4
	-[0x80001608]:sd t6, 1520(sp)
Current Store : [0x8000160c] : sd t5, 1528(sp) -- Store: [0x80003938]:0xEFFFFFFFFFFFEFFF




Last Coverpoint : ['rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80001630]:KMADS32 t6, t5, t4
	-[0x80001634]:sd t6, 1536(sp)
Current Store : [0x80001638] : sd t5, 1544(sp) -- Store: [0x80003948]:0x00400000BFFFFFFF




Last Coverpoint : ['rs2_w0_val == -1048577']
Last Code Sequence : 
	-[0x80001664]:KMADS32 t6, t5, t4
	-[0x80001668]:sd t6, 1552(sp)
Current Store : [0x8000166c] : sd t5, 1560(sp) -- Store: [0x80003958]:0xFDFFFFFFFFFFEFFF




Last Coverpoint : ['rs2_w0_val == -262145']
Last Code Sequence : 
	-[0x8000168c]:KMADS32 t6, t5, t4
	-[0x80001690]:sd t6, 1568(sp)
Current Store : [0x80001694] : sd t5, 1576(sp) -- Store: [0x80003968]:0x0000000500100000




Last Coverpoint : ['rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x800016bc]:KMADS32 t6, t5, t4
	-[0x800016c0]:sd t6, 1584(sp)
Current Store : [0x800016c4] : sd t5, 1592(sp) -- Store: [0x80003978]:0x01000000FBFFFFFF




Last Coverpoint : ['rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x800016e4]:KMADS32 t6, t5, t4
	-[0x800016e8]:sd t6, 1600(sp)
Current Store : [0x800016ec] : sd t5, 1608(sp) -- Store: [0x80003988]:0x08000000FDFFFFFF




Last Coverpoint : ['rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80001710]:KMADS32 t6, t5, t4
	-[0x80001714]:sd t6, 1616(sp)
Current Store : [0x80001718] : sd t5, 1624(sp) -- Store: [0x80003998]:0xFDFFFFFFFFBFFFFF




Last Coverpoint : ['rs2_w0_val == -8193', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80001734]:KMADS32 t6, t5, t4
	-[0x80001738]:sd t6, 1632(sp)
Current Store : [0x8000173c] : sd t5, 1640(sp) -- Store: [0x800039a8]:0x0000000320000000




Last Coverpoint : ['rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80001764]:KMADS32 t6, t5, t4
	-[0x80001768]:sd t6, 1648(sp)
Current Store : [0x8000176c] : sd t5, 1656(sp) -- Store: [0x800039b8]:0x01000000FFF7FFFF




Last Coverpoint : ['rs2_w0_val == -513']
Last Code Sequence : 
	-[0x80001798]:KMADS32 t6, t5, t4
	-[0x8000179c]:sd t6, 1664(sp)
Current Store : [0x800017a0] : sd t5, 1672(sp) -- Store: [0x800039c8]:0xF7FFFFFF55555555




Last Coverpoint : ['rs2_w0_val == -5']
Last Code Sequence : 
	-[0x800017c0]:KMADS32 t6, t5, t4
	-[0x800017c4]:sd t6, 1680(sp)
Current Store : [0x800017c8] : sd t5, 1688(sp) -- Store: [0x800039d8]:0x00040000FFEFFFFF




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x800017e8]:KMADS32 t6, t5, t4
	-[0x800017ec]:sd t6, 1696(sp)
Current Store : [0x800017f0] : sd t5, 1704(sp) -- Store: [0x800039e8]:0x00040000FFFFFFDF




Last Coverpoint : ['rs2_w0_val == 67108864']
Last Code Sequence : 
	-[0x80001810]:KMADS32 t6, t5, t4
	-[0x80001814]:sd t6, 1712(sp)
Current Store : [0x80001818] : sd t5, 1720(sp) -- Store: [0x800039f8]:0x04000000FDFFFFFF




Last Coverpoint : ['rs2_w0_val == -65', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80001838]:KMADS32 t6, t5, t4
	-[0x8000183c]:sd t6, 1728(sp)
Current Store : [0x80001840] : sd t5, 1736(sp) -- Store: [0x80003a08]:0x00000008FFFDFFFF




Last Coverpoint : ['rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80001858]:KMADS32 t6, t5, t4
	-[0x8000185c]:sd t6, 1744(sp)
Current Store : [0x80001860] : sd t5, 1752(sp) -- Store: [0x80003a18]:0xFFFFFF7F40000000




Last Coverpoint : ['rs2_w0_val == -524289']
Last Code Sequence : 
	-[0x8000188c]:KMADS32 t6, t5, t4
	-[0x80001890]:sd t6, 1760(sp)
Current Store : [0x80001894] : sd t5, 1768(sp) -- Store: [0x80003a28]:0xFFFFFBFFFFFFEFFF




Last Coverpoint : ['rs1_w0_val == -2147483648']
Last Code Sequence : 
	-[0x800018b8]:KMADS32 t6, t5, t4
	-[0x800018bc]:sd t6, 1776(sp)
Current Store : [0x800018c0] : sd t5, 1784(sp) -- Store: [0x80003a38]:0x4000000080000000




Last Coverpoint : ['opcode : kmads32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val == rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w1_val == 16777216', 'rs2_w0_val == -1025', 'rs1_w1_val == 16777216', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x800018e8]:KMADS32 t6, t5, t4
	-[0x800018ec]:sd t6, 1792(sp)
Current Store : [0x800018f0] : sd t5, 1800(sp) -- Store: [0x80003a48]:0x01000000FFDFFFFF




Last Coverpoint : ['opcode : kmads32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == -9', 'rs2_w0_val == 512', 'rs1_w1_val == 64', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x8000190c]:KMADS32 t6, t5, t4
	-[0x80001910]:sd t6, 1808(sp)
Current Store : [0x80001914] : sd t5, 1816(sp) -- Store: [0x80003a58]:0x0000004002000000




Last Coverpoint : ['rs2_w0_val == 64']
Last Code Sequence : 
	-[0x80001934]:KMADS32 t6, t5, t4
	-[0x80001938]:sd t6, 1824(sp)
Current Store : [0x8000193c] : sd t5, 1832(sp) -- Store: [0x80003a68]:0xFFFFFF7F02000000





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

|s.no|            signature             |                                                                                                                                                                       coverpoints                                                                                                                                                                        |                                  code                                  |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80003210]<br>0xBBDDB7D5801DB7D4|- opcode : kmads32<br> - rs1 : x18<br> - rs2 : x18<br> - rd : x4<br> - rs1 == rs2 != rd<br> - rs1_w1_val == rs2_w1_val<br> - rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs1_w0_val == rs2_w0_val<br> - rs1_w0_val < 0 and rs2_w0_val < 0<br> - rs2_w1_val == 2048<br> - rs2_w0_val == -536870913<br> - rs1_w1_val == 2048<br> - rs1_w0_val == -536870913<br> |[0x800003c4]:KMADS32 tp, s2, s2<br> [0x800003c8]:sd tp, 0(gp)<br>       |
|   2|[0x80003220]<br>0x01010000FFEFF3FE|- rs1 : x2<br> - rs2 : x2<br> - rd : x2<br> - rs1 == rs2 == rd<br> - rs2_w1_val == 16777216<br> - rs2_w0_val == -1025<br> - rs1_w1_val == 16777216<br> - rs1_w0_val == -1025<br>                                                                                                                                                                          |[0x800003f4]:KMADS32 sp, sp, sp<br> [0x800003f8]:sd sp, 16(gp)<br>      |
|   3|[0x80003230]<br>0x000000015555573C|- rs1 : x25<br> - rs2 : x26<br> - rd : x10<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w1_val != rs2_w1_val<br> - rs1_w1_val < 0 and rs2_w1_val > 0<br> - rs1_w0_val != rs2_w0_val<br> - rs1_w0_val < 0 and rs2_w0_val > 0<br> - rs2_w0_val == 4<br> - rs1_w0_val == -1431655766<br>                                                          |[0x8000041c]:KMADS32 a0, s9, s10<br> [0x80000420]:sd a0, 32(gp)<br>     |
|   4|[0x80003240]<br>0xFFFFFFFEFE010003|- rs1 : x27<br> - rs2 : x21<br> - rd : x27<br> - rs1 == rd != rs2<br> - rs1_w1_val < 0 and rs2_w1_val < 0<br> - rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == -3<br> - rs2_w0_val == 512<br> - rs1_w1_val == -1<br> - rs1_w0_val == 65536<br>                                                                                                     |[0x80000440]:KMADS32 s11, s11, s5<br> [0x80000444]:sd s11, 48(gp)<br>   |
|   5|[0x80003250]<br>0xFFFFFFF700000200|- rs1 : x0<br> - rs2 : x29<br> - rd : x29<br> - rs2 == rd != rs1<br> - rs2_w1_val == -9<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                                                                                                                                                                                                   |[0x80000464]:KMADS32 t4, zero, t4<br> [0x80000468]:sd t4, 64(gp)<br>    |
|   6|[0x80003260]<br>0x6DF56BFFADB56FF6|- rs1 : x14<br> - rs2 : x28<br> - rd : x22<br> - rs2_w0_val == -2097153<br> - rs1_w1_val == -33<br> - rs1_w0_val == -2097153<br>                                                                                                                                                                                                                          |[0x80000494]:KMADS32 s6, a4, t3<br> [0x80000498]:sd s6, 80(gp)<br>      |
|   7|[0x80003270]<br>0x5BFDDB7D6C1DED7E|- rs1 : x11<br> - rs2 : x20<br> - rd : x8<br> - rs1_w0_val > 0 and rs2_w0_val < 0<br> - rs2_w1_val == -4097<br> - rs1_w1_val == -513<br> - rs1_w0_val == 33554432<br>                                                                                                                                                                                     |[0x800004b8]:KMADS32 fp, a1, s4<br> [0x800004bc]:sd fp, 96(gp)<br>      |
|   8|[0x80003280]<br>0xFF55559206AAAAAA|- rs1 : x28<br> - rs2 : x31<br> - rd : x25<br> - rs1_w1_val > 0 and rs2_w1_val < 0<br> - rs2_w1_val == -1431655766<br> - rs2_w0_val == -2049<br> - rs1_w1_val == 33554432<br> - rs1_w0_val == 134217728<br>                                                                                                                                               |[0x800004e8]:KMADS32 s9, t3, t6<br> [0x800004ec]:sd s9, 112(gp)<br>     |
|   9|[0x80003290]<br>0x7D5BFDD07D5BFD9E|- rs1 : x15<br> - rs2 : x25<br> - rd : x16<br> - rs2_w1_val == 1431655765<br> - rs1_w0_val == 8<br>                                                                                                                                                                                                                                                       |[0x80000510]:KMADS32 a6, a5, s9<br> [0x80000514]:sd a6, 128(gp)<br>     |
|  10|[0x800032a0]<br>0x0000000000000000|- rs1 : x30<br> - rs2 : x4<br> - rd : x0<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == 1048576<br> - rs1_w0_val == 16<br>                                                                                                                                                                                                                            |[0x8000053c]:KMADS32 zero, t5, tp<br> [0x80000540]:sd zero, 144(gp)<br> |
|  11|[0x800032b0]<br>0xFFFFFBFFFFF017FF|- rs1 : x13<br> - rs2 : x15<br> - rd : x6<br> - rs2_w1_val == -1073741825<br> - rs1_w1_val == 4096<br> - rs1_w0_val == -1048577<br>                                                                                                                                                                                                                       |[0x8000056c]:KMADS32 t1, a3, a5<br> [0x80000570]:sd t1, 160(gp)<br>     |
|  12|[0x800032c0]<br>0xFC00000057000390|- rs1 : x29<br> - rs2 : x22<br> - rd : x5<br> - rs2_w1_val == -536870913<br> - rs2_w0_val == 16777216<br> - rs1_w1_val == 536870912<br>                                                                                                                                                                                                                   |[0x80000594]:KMADS32 t0, t4, s6<br> [0x80000598]:sd t0, 176(gp)<br>     |
|  13|[0x800032d0]<br>0xBF7FFFFFFC07F7FF|- rs1 : x31<br> - rs2 : x6<br> - rd : x15<br> - rs2_w1_val == -268435457<br> - rs2_w0_val == -129<br> - rs1_w1_val == 134217728<br> - rs1_w0_val == 524288<br>                                                                                                                                                                                            |[0x800005bc]:KMADS32 a5, t6, t1<br> [0x800005c0]:sd a5, 192(gp)<br>     |
|  14|[0x800032e0]<br>0x01FFFBFFE7FF8000|- rs1 : x6<br> - rs2 : x19<br> - rd : x28<br> - rs2_w1_val == -134217729<br> - rs1_w1_val == 32768<br> - rs1_w0_val == 512<br>                                                                                                                                                                                                                            |[0x800005e8]:KMADS32 t3, t1, s3<br> [0x800005ec]:sd t3, 208(gp)<br>     |
|  15|[0x800032f0]<br>0x07FFFFFFE007BFF8|- rs1 : x10<br> - rs2 : x5<br> - rd : x31<br> - rs2_w1_val == -67108865<br> - rs2_w0_val == 16384<br> - rs1_w1_val == 8<br> - rs1_w0_val == 1<br>                                                                                                                                                                                                         |[0x80000614]:KMADS32 t6, a0, t0<br> [0x80000618]:sd t6, 224(gp)<br>     |
|  16|[0x80003300]<br>0x00000800DFFFFFFF|- rs1 : x19<br> - rs2 : x0<br> - rd : x18<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == -129<br>                                                                                                                                                                                                                                        |[0x8000063c]:KMADS32 s2, s3, zero<br> [0x80000640]:sd s2, 240(gp)<br>   |
|  17|[0x80003310]<br>0x000000170100100D|- rs1 : x22<br> - rs2 : x9<br> - rd : x26<br> - rs2_w1_val == -16777217<br> - rs2_w0_val == -2<br> - rs1_w1_val == -4097<br> - rs1_w0_val == 4<br>                                                                                                                                                                                                        |[0x80000664]:KMADS32 s10, s6, s1<br> [0x80000668]:sd s10, 256(gp)<br>   |
|  18|[0x80003320]<br>0xFEEDBEB082EDBEB5|- rs1 : x12<br> - rs2 : x16<br> - rd : x1<br> - rs2_w1_val == -8388609<br> - rs2_w0_val == -2147483648<br>                                                                                                                                                                                                                                                |[0x80000688]:KMADS32 ra, a2, a6<br> [0x8000068c]:sd ra, 272(gp)<br>     |
|  19|[0x80003330]<br>0x000007FCF8600200|- rs1 : x7<br> - rs2 : x1<br> - rd : x21<br> - rs2_w1_val == -4194305<br> - rs2_w0_val == -1<br> - rs1_w1_val == -2097153<br> - rs1_w0_val == -134217729<br>                                                                                                                                                                                              |[0x800006b0]:KMADS32 s5, t2, ra<br> [0x800006b4]:sd s5, 288(gp)<br>     |
|  20|[0x80003340]<br>0x0200000000A0000F|- rs1 : x26<br> - rs2 : x3<br> - rd : x30<br> - rs2_w1_val == -2097153<br> - rs2_w0_val == -3<br> - rs1_w1_val == -5<br> - rs1_w0_val == -2<br>                                                                                                                                                                                                           |[0x800006dc]:KMADS32 t5, s10, gp<br> [0x800006e0]:sd t5, 0(sp)<br>      |
|  21|[0x80003350]<br>0xFFFFFCFF01BFFFFC|- rs1 : x3<br> - rs2 : x17<br> - rd : x11<br> - rs2_w1_val == -1048577<br> - rs1_w1_val == 4<br> - rs1_w0_val == 1048576<br>                                                                                                                                                                                                                              |[0x80000708]:KMADS32 a1, gp, a7<br> [0x8000070c]:sd a1, 16(sp)<br>      |
|  22|[0x80003360]<br>0x00001000FFEE7FFC|- rs1 : x21<br> - rs2 : x10<br> - rd : x13<br> - rs2_w1_val == -524289<br> - rs2_w0_val == -32769<br> - rs1_w0_val == -3<br>                                                                                                                                                                                                                              |[0x80000734]:KMADS32 a3, s5, a0<br> [0x80000738]:sd a3, 32(sp)<br>      |
|  23|[0x80003370]<br>0xB6FAB80BB702F81C|- rs1 : x9<br> - rs2 : x30<br> - rd : x23<br> - rs2_w1_val == -262145<br> - rs2_w0_val == 32<br> - rs1_w1_val == -262145<br> - rs1_w0_val == -513<br>                                                                                                                                                                                                     |[0x8000075c]:KMADS32 s7, s1, t5<br> [0x80000760]:sd s7, 48(sp)<br>      |
|  24|[0x80003380]<br>0xFFFFFEDF3F600002|- rs1 : x24<br> - rs2 : x13<br> - rd : x14<br> - rs2_w1_val == -131073<br> - rs1_w1_val == 8388608<br>                                                                                                                                                                                                                                                    |[0x80000784]:KMADS32 a4, s8, a3<br> [0x80000788]:sd a4, 64(sp)<br>      |
|  25|[0x80003390]<br>0x0080000007FCF7C3|- rs1 : x8<br> - rs2 : x7<br> - rd : x24<br> - rs2_w1_val == -65537<br> - rs2_w0_val == -4097<br> - rs1_w1_val == -2049<br> - rs1_w0_val == -65<br>                                                                                                                                                                                                       |[0x800007b0]:KMADS32 s8, fp, t2<br> [0x800007b4]:sd s8, 80(sp)<br>      |
|  26|[0x800033a0]<br>0xFFFF0003E0106FDF|- rs1 : x23<br> - rs2 : x11<br> - rd : x7<br> - rs2_w1_val == -32769<br> - rs2_w0_val == -33<br> - rs1_w1_val == -1048577<br>                                                                                                                                                                                                                             |[0x800007d8]:KMADS32 t2, s7, a1<br> [0x800007dc]:sd t2, 96(sp)<br>      |
|  27|[0x800033b0]<br>0x0000800400103FF9|- rs1 : x4<br> - rs2 : x8<br> - rd : x3<br> - rs2_w1_val == -16385<br> - rs2_w0_val == -1073741825<br> - rs1_w0_val == 131072<br>                                                                                                                                                                                                                         |[0x80000800]:KMADS32 gp, tp, fp<br> [0x80000804]:sd gp, 112(sp)<br>     |
|  28|[0x800033c0]<br>0xFFEFFF7EFC101405|- rs1 : x5<br> - rs2 : x14<br> - rd : x17<br> - rs2_w1_val == -8193<br> - rs1_w1_val == 67108864<br>                                                                                                                                                                                                                                                      |[0x8000082c]:KMADS32 a7, t0, a4<br> [0x80000830]:sd a7, 128(sp)<br>     |
|  29|[0x800033d0]<br>0xFFFBFFFFE7FFC5F2|- rs1 : x1<br> - rs2 : x27<br> - rd : x9<br> - rs2_w1_val == -2049<br> - rs2_w0_val == -67108865<br>                                                                                                                                                                                                                                                      |[0x80000854]:KMADS32 s1, ra, s11<br> [0x80000858]:sd s1, 144(sp)<br>    |
|  30|[0x800033e0]<br>0xFFFFFEF7C0020005|- rs1 : x16<br> - rs2 : x24<br> - rd : x12<br> - rs2_w1_val == -1025<br> - rs1_w1_val == 1073741824<br> - rs1_w0_val == 32768<br>                                                                                                                                                                                                                         |[0x8000087c]:KMADS32 a2, a6, s8<br> [0x80000880]:sd a2, 160(sp)<br>     |
|  31|[0x800033f0]<br>0xFFFFFD7F22100201|- rs1 : x17<br> - rs2 : x23<br> - rd : x19<br> - rs2_w1_val == -513<br>                                                                                                                                                                                                                                                                                   |[0x800008a0]:KMADS32 s3, a7, s7<br> [0x800008a4]:sd s3, 176(sp)<br>     |
|  32|[0x80003400]<br>0x07FFFFFF600FC8F9|- rs1 : x20<br> - rs2_w1_val == -257<br> - rs1_w0_val == 4194304<br>                                                                                                                                                                                                                                                                                      |[0x800008c4]:KMADS32 t6, s4, a0<br> [0x800008c8]:sd t6, 192(sp)<br>     |
|  33|[0x80003410]<br>0xFFFFFBFFFEFCBFF7|- rs2 : x12<br> - rs2_w1_val == -129<br> - rs2_w0_val == -16385<br> - rs1_w1_val == 131072<br> - rs1_w0_val == -5<br>                                                                                                                                                                                                                                     |[0x800008f0]:KMADS32 s8, s10, a2<br> [0x800008f4]:sd s8, 208(sp)<br>    |
|  34|[0x80003420]<br>0xFFFFF954AAE28955|- rd : x20<br> - rs2_w1_val == -65<br> - rs1_w1_val == 8192<br> - rs1_w0_val == 1431655765<br>                                                                                                                                                                                                                                                            |[0x80000920]:KMADS32 s4, s2, ra<br> [0x80000924]:sd s4, 224(sp)<br>     |
|  35|[0x80003430]<br>0x080003FF5F8DC8F9|- rs2_w1_val == -33<br> - rs2_w0_val == -33554433<br> - rs1_w1_val == 262144<br>                                                                                                                                                                                                                                                                          |[0x8000094c]:KMADS32 t6, t5, t4<br> [0x80000950]:sd t6, 240(sp)<br>     |
|  36|[0x80003440]<br>0x080003FF5FB0690A|- rs2_w1_val == -17<br> - rs2_w0_val == 8192<br> - rs1_w1_val == -131073<br>                                                                                                                                                                                                                                                                              |[0x80000970]:KMADS32 t6, t5, t4<br> [0x80000974]:sd t6, 256(sp)<br>     |
|  37|[0x80003450]<br>0x080003FDDFD86912|- rs2_w1_val == -5<br> - rs1_w1_val == -524289<br> - rs1_w0_val == 2147483647<br>                                                                                                                                                                                                                                                                         |[0x80000998]:KMADS32 t6, t5, t4<br> [0x8000099c]:sd t6, 272(sp)<br>     |
|  38|[0x80003460]<br>0x07FF83FC9FD86914|- rs2_w1_val == -2<br> - rs2_w0_val == -131073<br> - rs1_w1_val == 2147483647<br>                                                                                                                                                                                                                                                                         |[0x800009c4]:KMADS32 t6, t5, t4<br> [0x800009c8]:sd t6, 288(sp)<br>     |
|  39|[0x80003470]<br>0x07FF7FFC9FD86791|- rs2_w1_val == -2147483648<br> - rs1_w0_val == -129<br>                                                                                                                                                                                                                                                                                                  |[0x800009f0]:KMADS32 t6, t5, t4<br> [0x800009f4]:sd t6, 304(sp)<br>     |
|  40|[0x80003480]<br>0x07FF8001CA831236|- rs2_w1_val == 1073741824<br> - rs2_w0_val == -17<br> - rs1_w1_val == -2<br>                                                                                                                                                                                                                                                                             |[0x80000a1c]:KMADS32 t6, t5, t4<br> [0x80000a20]:sd t6, 320(sp)<br>     |
|  41|[0x80003490]<br>0x07FF80213A83122D|- rs2_w1_val == 536870912<br> - rs2_w0_val == -9<br> - rs1_w1_val == 256<br> - rs1_w0_val == -268435457<br>                                                                                                                                                                                                                                               |[0x80000a48]:KMADS32 t6, t5, t4<br> [0x80000a4c]:sd t6, 336(sp)<br>     |
|  42|[0x800034a0]<br>0x07FF82223C83122D|- rs2_w1_val == 268435456<br> - rs2_w0_val == 33554432<br>                                                                                                                                                                                                                                                                                                |[0x80000a74]:KMADS32 t6, t5, t4<br> [0x80000a78]:sd t6, 352(sp)<br>     |
|  43|[0x800034b0]<br>0x07FF82123383122C|- rs2_w1_val == 134217728<br> - rs1_w0_val == -16777217<br>                                                                                                                                                                                                                                                                                               |[0x80000aa0]:KMADS32 t6, t5, t4<br> [0x80000aa4]:sd t6, 368(sp)<br>     |
|  44|[0x800034c0]<br>0x07FB82323183122C|- rs2_w1_val == 67108864<br> - rs1_w1_val == -16777217<br>                                                                                                                                                                                                                                                                                                |[0x80000ad4]:KMADS32 t6, t5, t4<br> [0x80000ad8]:sd t6, 384(sp)<br>     |
|  45|[0x800034d0]<br>0x07FB82B231831248|- rs2_w1_val == 33554432<br> - rs1_w1_val == 16384<br>                                                                                                                                                                                                                                                                                                    |[0x80000afc]:KMADS32 t6, t5, t4<br> [0x80000b00]:sd t6, 400(sp)<br>     |
|  46|[0x800034e0]<br>0x07F77AB231031248|- rs2_w1_val == 8388608<br> - rs2_w0_val == 536870912<br> - rs1_w1_val == -134217729<br> - rs1_w0_val == 16384<br>                                                                                                                                                                                                                                        |[0x80000b28]:KMADS32 t6, t5, t4<br> [0x80000b2c]:sd t6, 416(sp)<br>     |
|  47|[0x800034f0]<br>0x07F77AB1B133124F|- rs2_w1_val == 4194304<br>                                                                                                                                                                                                                                                                                                                               |[0x80000b50]:KMADS32 t6, t5, t4<br> [0x80000b54]:sd t6, 432(sp)<br>     |
|  48|[0x80003500]<br>0x0802255C5AD3124F|- rs2_w1_val == 2097152<br> - rs2_w0_val == 1024<br> - rs1_w1_val == 1431655765<br>                                                                                                                                                                                                                                                                       |[0x80000b7c]:KMADS32 t6, t5, t4<br> [0x80000b80]:sd t6, 448(sp)<br>     |
|  49|[0x80003510]<br>0x0802245C5AD3124F|- rs2_w1_val == 1048576<br> - rs1_w1_val == 1048576<br> - rs1_w0_val == 4096<br>                                                                                                                                                                                                                                                                          |[0x80000ba4]:KMADS32 t6, t5, t4<br> [0x80000ba8]:sd t6, 464(sp)<br>     |
|  50|[0x80003520]<br>0x0802249C7AEB124F|- rs2_w1_val == 524288<br>                                                                                                                                                                                                                                                                                                                                |[0x80000bc8]:KMADS32 t6, t5, t4<br> [0x80000bcc]:sd t6, 480(sp)<br>     |
|  51|[0x80003530]<br>0x080226947AEB124F|- rs2_w0_val == 2048<br> - rs1_w0_val == 16777216<br>                                                                                                                                                                                                                                                                                                     |[0x80000bf8]:KMADS32 t6, t5, t4<br> [0x80000bfc]:sd t6, 496(sp)<br>     |
|  52|[0x80003540]<br>0x08022634BAEB124F|- rs2_w0_val == 65536<br> - rs1_w0_val == 8388608<br>                                                                                                                                                                                                                                                                                                     |[0x80000c20]:KMADS32 t6, t5, t4<br> [0x80000c24]:sd t6, 512(sp)<br>     |
|  53|[0x80003550]<br>0x07F77B8A084A124F|- rs2_w0_val == 1431655765<br> - rs1_w1_val == 65536<br> - rs1_w0_val == 2097152<br>                                                                                                                                                                                                                                                                      |[0x80000c50]:KMADS32 t6, t5, t4<br> [0x80000c54]:sd t6, 528(sp)<br>     |
|  54|[0x80003560]<br>0x07F77B92084F1257|- rs1_w0_val == 262144<br>                                                                                                                                                                                                                                                                                                                                |[0x80000c78]:KMADS32 t6, t5, t4<br> [0x80000c7c]:sd t6, 544(sp)<br>     |
|  55|[0x80003570]<br>0x07F77A92084F0A17|- rs2_w0_val == 134217728<br> - rs1_w1_val == 64<br> - rs1_w0_val == 8192<br>                                                                                                                                                                                                                                                                             |[0x80000c98]:KMADS32 t6, t5, t4<br> [0x80000c9c]:sd t6, 560(sp)<br>     |
|  56|[0x80003580]<br>0x07F77A92085F9C18|- rs1_w0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                  |[0x80000cc0]:KMADS32 t6, t5, t4<br> [0x80000cc4]:sd t6, 576(sp)<br>     |
|  57|[0x80003590]<br>0x07F7FA92083F9C18|- rs1_w0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                  |[0x80000cec]:KMADS32 t6, t5, t4<br> [0x80000cf0]:sd t6, 592(sp)<br>     |
|  58|[0x800035a0]<br>0x07F7FA92083D1A18|- rs2_w1_val == 16384<br> - rs2_w0_val == 2<br> - rs1_w0_val == 256<br>                                                                                                                                                                                                                                                                                   |[0x80000d10]:KMADS32 t6, t5, t4<br> [0x80000d14]:sd t6, 608(sp)<br>     |
|  59|[0x800035b0]<br>0x07F7FA52083D1A7A|- rs2_w0_val == 2147483647<br> - rs1_w0_val == 128<br>                                                                                                                                                                                                                                                                                                    |[0x80000d34]:KMADS32 t6, t5, t4<br> [0x80000d38]:sd t6, 624(sp)<br>     |
|  60|[0x800035c0]<br>0x07F7FA42183D1ABC|- rs1_w0_val == 64<br>                                                                                                                                                                                                                                                                                                                                    |[0x80000d5c]:KMADS32 t6, t5, t4<br> [0x80000d60]:sd t6, 640(sp)<br>     |
|  61|[0x800035d0]<br>0x07F7FA41E83D1ACC|- rs2_w0_val == -8388609<br> - rs1_w1_val == 16<br> - rs1_w0_val == 32<br>                                                                                                                                                                                                                                                                                |[0x80000d88]:KMADS32 t6, t5, t4<br> [0x80000d8c]:sd t6, 656(sp)<br>     |
|  62|[0x800035e0]<br>0x07F7FA39E83D28CE|- rs2_w1_val == 512<br> - rs1_w1_val == -67108865<br> - rs1_w0_val == 2<br>                                                                                                                                                                                                                                                                               |[0x80000db4]:KMADS32 t6, t5, t4<br> [0x80000db8]:sd t6, 672(sp)<br>     |
|  63|[0x800035f0]<br>0x07F7FA39673D28CE|- rs2_w0_val == 268435456<br>                                                                                                                                                                                                                                                                                                                             |[0x80000dd4]:KMADS32 t6, t5, t4<br> [0x80000dd8]:sd t6, 688(sp)<br>     |
|  64|[0x80003600]<br>0x07F7FA39673D78D5|- rs1_w0_val == -1<br>                                                                                                                                                                                                                                                                                                                                    |[0x80000df8]:KMADS32 t6, t5, t4<br> [0x80000dfc]:sd t6, 704(sp)<br>     |
|  65|[0x80003610]<br>0x07F83A3B67BD78D5|- rs2_w1_val == 262144<br> - rs2_w0_val == 8388608<br> - rs1_w1_val == 268435456<br>                                                                                                                                                                                                                                                                      |[0x80000e20]:KMADS32 t6, t5, t4<br> [0x80000e24]:sd t6, 720(sp)<br>     |
|  66|[0x80003620]<br>0x07F83A1B67BB78C0|- rs2_w1_val == 131072<br>                                                                                                                                                                                                                                                                                                                                |[0x80000e48]:KMADS32 t6, t5, t4<br> [0x80000e4c]:sd t6, 736(sp)<br>     |
|  67|[0x80003630]<br>0x07F83A1C675A78C0|- rs2_w1_val == 65536<br> - rs2_w0_val == 2097152<br> - rs1_w0_val == -2049<br>                                                                                                                                                                                                                                                                           |[0x80000e70]:KMADS32 t6, t5, t4<br> [0x80000e74]:sd t6, 752(sp)<br>     |
|  68|[0x80003640]<br>0x08083A1C675D78C0|- rs2_w1_val == 32768<br>                                                                                                                                                                                                                                                                                                                                 |[0x80000e94]:KMADS32 t6, t5, t4<br> [0x80000e98]:sd t6, 768(sp)<br>     |
|  69|[0x80003650]<br>0x08083A1C636D78BC|- rs2_w1_val == 8192<br> - rs1_w1_val == 128<br>                                                                                                                                                                                                                                                                                                          |[0x80000ec0]:KMADS32 t6, t5, t4<br> [0x80000ec4]:sd t6, 784(sp)<br>     |
|  70|[0x80003660]<br>0x08043A1C5B0D78BB|- rs2_w1_val == 4096<br> - rs2_w0_val == -134217729<br> - rs1_w1_val == 512<br> - rs1_w0_val == -8388609<br>                                                                                                                                                                                                                                              |[0x80000eec]:KMADS32 t6, t5, t4<br> [0x80000ef0]:sd t6, 800(sp)<br>     |
|  71|[0x80003670]<br>0x08043A46E5B81FBB|- rs2_w1_val == 1024<br> - rs2_w0_val == 128<br>                                                                                                                                                                                                                                                                                                          |[0x80000f1c]:KMADS32 t6, t5, t4<br> [0x80000f20]:sd t6, 816(sp)<br>     |
|  72|[0x80003680]<br>0x04043A46A5B81EBB|- rs2_w1_val == 256<br> - rs2_w0_val == 1073741824<br> - rs1_w1_val == -4194305<br> - rs1_w0_val == 268435456<br>                                                                                                                                                                                                                                         |[0x80000f3c]:KMADS32 t6, t5, t4<br> [0x80000f40]:sd t6, 832(sp)<br>     |
|  73|[0x80003690]<br>0x04042A46A5C01EBB|- rs2_w1_val == 128<br>                                                                                                                                                                                                                                                                                                                                   |[0x80000f60]:KMADS32 t6, t5, t4<br> [0x80000f64]:sd t6, 848(sp)<br>     |
|  74|[0x800036a0]<br>0x04042A46ED401E7B|- rs2_w1_val == 64<br> - rs1_w0_val == -9<br>                                                                                                                                                                                                                                                                                                             |[0x80000f84]:KMADS32 t6, t5, t4<br> [0x80000f88]:sd t6, 864(sp)<br>     |
|  75|[0x800036b0]<br>0x04042A46E5441E7B|- rs2_w1_val == 32<br> - rs2_w0_val == 262144<br>                                                                                                                                                                                                                                                                                                         |[0x80000fa8]:KMADS32 t6, t5, t4<br> [0x80000fac]:sd t6, 880(sp)<br>     |
|  76|[0x800036c0]<br>0x04042A4C3A9173CB|- rs2_w1_val == 16<br>                                                                                                                                                                                                                                                                                                                                    |[0x80000fd4]:KMADS32 t6, t5, t4<br> [0x80000fd8]:sd t6, 896(sp)<br>     |
|  77|[0x800036d0]<br>0x04042A4D3A917BD3|- rs2_w1_val == 8<br> - rs2_w0_val == 8<br> - rs1_w0_val == -257<br>                                                                                                                                                                                                                                                                                      |[0x80000ffc]:KMADS32 t6, t5, t4<br> [0x80001000]:sd t6, 912(sp)<br>     |
|  78|[0x800036e0]<br>0x04042E4D4A9177CF|- rs2_w1_val == 4<br> - rs1_w1_val == -257<br> - rs1_w0_val == -16385<br>                                                                                                                                                                                                                                                                                 |[0x80001020]:KMADS32 t6, t5, t4<br> [0x80001024]:sd t6, 928(sp)<br>     |
|  79|[0x800036f0]<br>0x04042E4D4A9177CF|- rs2_w1_val == 2<br>                                                                                                                                                                                                                                                                                                                                     |[0x80001040]:KMADS32 t6, t5, t4<br> [0x80001044]:sd t6, 944(sp)<br>     |
|  80|[0x80003700]<br>0x04042E4D4A9271CF|- rs2_w1_val == 1<br>                                                                                                                                                                                                                                                                                                                                     |[0x80001064]:KMADS32 t6, t5, t4<br> [0x80001068]:sd t6, 960(sp)<br>     |
|  81|[0x80003720]<br>0x04042E4E469871CF|- rs2_w0_val == 131072<br> - rs1_w0_val == -32769<br>                                                                                                                                                                                                                                                                                                     |[0x800010ac]:KMADS32 t6, t5, t4<br> [0x800010b0]:sd t6, 992(sp)<br>     |
|  82|[0x80003730]<br>0x04042E5E46986DCF|- rs2_w0_val == 32768<br>                                                                                                                                                                                                                                                                                                                                 |[0x800010d4]:KMADS32 t6, t5, t4<br> [0x800010d8]:sd t6, 1008(sp)<br>    |
|  83|[0x80003740]<br>0x02042E5E48986DBF|- rs1_w0_val == 67108864<br>                                                                                                                                                                                                                                                                                                                              |[0x800010f8]:KMADS32 t6, t5, t4<br> [0x800010fc]:sd t6, 1024(sp)<br>    |
|  84|[0x80003750]<br>0x02042E6248946DB7|- rs2_w0_val == 4096<br>                                                                                                                                                                                                                                                                                                                                  |[0x80001124]:KMADS32 t6, t5, t4<br> [0x80001128]:sd t6, 1040(sp)<br>    |
|  85|[0x80003760]<br>0x02042DE248126DB7|- rs2_w0_val == 256<br> - rs1_w1_val == -65537<br>                                                                                                                                                                                                                                                                                                        |[0x8000114c]:KMADS32 t6, t5, t4<br> [0x80001150]:sd t6, 1056(sp)<br>    |
|  86|[0x80003770]<br>0x02042E02481265B7|- rs2_w0_val == 16<br>                                                                                                                                                                                                                                                                                                                                    |[0x80001170]:KMADS32 t6, t5, t4<br> [0x80001174]:sd t6, 1072(sp)<br>    |
|  87|[0x80003780]<br>0x02042E02382265B8|- rs2_w0_val == 1<br>                                                                                                                                                                                                                                                                                                                                     |[0x800011a0]:KMADS32 t6, t5, t4<br> [0x800011a4]:sd t6, 1088(sp)<br>    |
|  88|[0x80003790]<br>0x02042E22392285B9|- rs1_w0_val == -65537<br>                                                                                                                                                                                                                                                                                                                                |[0x800011cc]:KMADS32 t6, t5, t4<br> [0x800011d0]:sd t6, 1104(sp)<br>    |
|  89|[0x800037a0]<br>0x0182D8CCE5CA85B9|- rs1_w1_val == -1431655766<br>                                                                                                                                                                                                                                                                                                                           |[0x800011fc]:KMADS32 t6, t5, t4<br> [0x80001200]:sd t6, 1120(sp)<br>    |
|  90|[0x800037b0]<br>0x018AD8CC25BA85B3|- rs1_w1_val == -1073741825<br>                                                                                                                                                                                                                                                                                                                           |[0x80001228]:KMADS32 t6, t5, t4<br> [0x8000122c]:sd t6, 1136(sp)<br>    |
|  91|[0x800037c0]<br>0x018AD8C829FA8593|- rs2_w0_val == 4194304<br> - rs1_w1_val == -536870913<br> - rs1_w0_val == -17<br>                                                                                                                                                                                                                                                                        |[0x8000124c]:KMADS32 t6, t5, t4<br> [0x80001250]:sd t6, 1152(sp)<br>    |
|  92|[0x800037d0]<br>0x018AD8882A1A8993|- rs1_w1_val == -268435457<br>                                                                                                                                                                                                                                                                                                                            |[0x80001274]:KMADS32 t6, t5, t4<br> [0x80001278]:sd t6, 1168(sp)<br>    |
|  93|[0x800037e0]<br>0x018AD888C4C53437|- rs2_w0_val == -1431655766<br> - rs1_w1_val == -33554433<br>                                                                                                                                                                                                                                                                                             |[0x800012a0]:KMADS32 t6, t5, t4<br> [0x800012a4]:sd t6, 1184(sp)<br>    |
|  94|[0x800037f0]<br>0x017AD848C4E4B437|- rs1_w1_val == -8388609<br>                                                                                                                                                                                                                                                                                                                              |[0x800012c8]:KMADS32 t6, t5, t4<br> [0x800012cc]:sd t6, 1200(sp)<br>    |
|  95|[0x80003800]<br>0x017AD848C5E7B53D|- rs1_w1_val == -32769<br>                                                                                                                                                                                                                                                                                                                                |[0x800012f4]:KMADS32 t6, t5, t4<br> [0x800012f8]:sd t6, 1216(sp)<br>    |
|  96|[0x80003810]<br>0x017AD8C8C7E8054E|- rs2_w1_val == -33554433<br> - rs2_w0_val == -257<br> - rs1_w1_val == -16385<br>                                                                                                                                                                                                                                                                         |[0x8000131c]:KMADS32 t6, t5, t4<br> [0x80001320]:sd t6, 1232(sp)<br>    |
|  97|[0x80003820]<br>0x017AD8CAC826E545|- rs1_w1_val == -8193<br>                                                                                                                                                                                                                                                                                                                                 |[0x80001348]:KMADS32 t6, t5, t4<br> [0x8000134c]:sd t6, 1248(sp)<br>    |
|  98|[0x80003830]<br>0x017AD8CA4827E986|- rs1_w1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                 |[0x8000136c]:KMADS32 t6, t5, t4<br> [0x80001370]:sd t6, 1264(sp)<br>    |
|  99|[0x80003840]<br>0x017AD8C248286BC7|- rs1_w1_val == -65<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001390]:KMADS32 t6, t5, t4<br> [0x80001394]:sd t6, 1280(sp)<br>    |
| 100|[0x80003850]<br>0x017AD8C248756BE1|- rs2_w0_val == -65537<br> - rs1_w1_val == -17<br>                                                                                                                                                                                                                                                                                                        |[0x800013bc]:KMADS32 t6, t5, t4<br> [0x800013c0]:sd t6, 1296(sp)<br>    |
| 101|[0x80003860]<br>0x017AD8C248756BED|- rs1_w1_val == -9<br>                                                                                                                                                                                                                                                                                                                                    |[0x800013e0]:KMADS32 t6, t5, t4<br> [0x800013e4]:sd t6, 1312(sp)<br>    |
| 102|[0x80003870]<br>0x017AD8C148756AEE|- rs1_w1_val == -3<br>                                                                                                                                                                                                                                                                                                                                    |[0x80001408]:KMADS32 t6, t5, t4<br> [0x8000140c]:sd t6, 1328(sp)<br>    |
| 103|[0x80003880]<br>0x018AD8C3C8856AEE|- rs1_w1_val == -2147483648<br> - rs1_w0_val == -8193<br>                                                                                                                                                                                                                                                                                                 |[0x80001440]:KMADS32 t6, t5, t4<br> [0x80001444]:sd t6, 1344(sp)<br>    |
| 104|[0x80003890]<br>0x018AD8C2C84D6B0E|- rs1_w1_val == 4194304<br>                                                                                                                                                                                                                                                                                                                               |[0x80001470]:KMADS32 t6, t5, t4<br> [0x80001474]:sd t6, 1360(sp)<br>    |
| 105|[0x800038a0]<br>0x018AD8C2082D6B09|- rs1_w1_val == 2097152<br>                                                                                                                                                                                                                                                                                                                               |[0x8000149c]:KMADS32 t6, t5, t4<br> [0x800014a0]:sd t6, 1376(sp)<br>    |
| 106|[0x800038b0]<br>0x018AD8B208056B49|- rs1_w1_val == 524288<br>                                                                                                                                                                                                                                                                                                                                |[0x800014c0]:KMADS32 t6, t5, t4<br> [0x800014c4]:sd t6, 1392(sp)<br>    |
| 107|[0x800038c0]<br>0x018AD8B20A036849|- rs1_w1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                  |[0x800014e8]:KMADS32 t6, t5, t4<br> [0x800014ec]:sd t6, 1408(sp)<br>    |
| 108|[0x800038d0]<br>0x018AD8B205036849|- rs2_w1_val == -1<br> - rs2_w0_val == 524288<br>                                                                                                                                                                                                                                                                                                         |[0x8000150c]:KMADS32 t6, t5, t4<br> [0x80001510]:sd t6, 1424(sp)<br>    |
| 109|[0x800038e0]<br>0x018AE35D05235D9E|- rs1_w1_val == 32<br>                                                                                                                                                                                                                                                                                                                                    |[0x80001540]:KMADS32 t6, t5, t4<br> [0x80001544]:sd t6, 1440(sp)<br>    |
| 110|[0x800038f0]<br>0x018AE35CFC235D9C|- rs1_w1_val == 2<br>                                                                                                                                                                                                                                                                                                                                     |[0x80001560]:KMADS32 t6, t5, t4<br> [0x80001564]:sd t6, 1456(sp)<br>    |
| 111|[0x80003900]<br>0x018AE35CEF235DA1|- rs2_w0_val == -268435457<br>                                                                                                                                                                                                                                                                                                                            |[0x80001584]:KMADS32 t6, t5, t4<br> [0x80001588]:sd t6, 1472(sp)<br>    |
| 112|[0x80003910]<br>0x016AE35CEF225DA0|- rs1_w1_val == 1<br>                                                                                                                                                                                                                                                                                                                                     |[0x800015a4]:KMADS32 t6, t5, t4<br> [0x800015a8]:sd t6, 1488(sp)<br>    |
| 113|[0x80003920]<br>0x016ADF5D6E1E5D9F|- rs2_w0_val == -16777217<br> - rs1_w0_val == -262145<br>                                                                                                                                                                                                                                                                                                 |[0x800015d0]:KMADS32 t6, t5, t4<br> [0x800015d4]:sd t6, 1504(sp)<br>    |
| 114|[0x80003930]<br>0x096ADF59EDDE4D9E|- rs2_w0_val == -4194305<br> - rs1_w0_val == -4097<br>                                                                                                                                                                                                                                                                                                    |[0x80001604]:KMADS32 t6, t5, t4<br> [0x80001608]:sd t6, 1520(sp)<br>    |
| 115|[0x80003940]<br>0x0962DF5C2D9E4DA7|- rs1_w0_val == -1073741825<br>                                                                                                                                                                                                                                                                                                                           |[0x80001630]:KMADS32 t6, t5, t4<br> [0x80001634]:sd t6, 1536(sp)<br>    |
| 116|[0x80003950]<br>0x09A2DF5B4F8E3DA7|- rs2_w0_val == -1048577<br>                                                                                                                                                                                                                                                                                                                              |[0x80001664]:KMADS32 t6, t5, t4<br> [0x80001668]:sd t6, 1552(sp)<br>    |
| 117|[0x80003960]<br>0x09A2DF9B4F9E33A2|- rs2_w0_val == -262145<br>                                                                                                                                                                                                                                                                                                                               |[0x8000168c]:KMADS32 t6, t5, t4<br> [0x80001690]:sd t6, 1568(sp)<br>    |
| 118|[0x80003970]<br>0x09E2E79B4EA033A2|- rs1_w0_val == -67108865<br>                                                                                                                                                                                                                                                                                                                             |[0x800016bc]:KMADS32 t6, t5, t4<br> [0x800016c0]:sd t6, 1584(sp)<br>    |
| 119|[0x80003980]<br>0x09F2E79B1EA033A2|- rs1_w0_val == -33554433<br>                                                                                                                                                                                                                                                                                                                             |[0x800016e4]:KMADS32 t6, t5, t4<br> [0x800016e8]:sd t6, 1600(sp)<br>    |
| 120|[0x80003990]<br>0x09F2E79BA0A034C3|- rs1_w0_val == -4194305<br>                                                                                                                                                                                                                                                                                                                              |[0x80001710]:KMADS32 t6, t5, t4<br> [0x80001714]:sd t6, 1616(sp)<br>    |
| 121|[0x800039a0]<br>0x09F2EB9BC0A034BD|- rs2_w0_val == -8193<br> - rs1_w0_val == 536870912<br>                                                                                                                                                                                                                                                                                                   |[0x80001734]:KMADS32 t6, t5, t4<br> [0x80001738]:sd t6, 1632(sp)<br>    |
| 122|[0x800039b0]<br>0x09F2EB8BBF8834BA|- rs1_w0_val == -524289<br>                                                                                                                                                                                                                                                                                                                               |[0x80001764]:KMADS32 t6, t5, t4<br> [0x80001768]:sd t6, 1648(sp)<br>    |
| 123|[0x800039c0]<br>0x09F2EC38C7883450|- rs2_w0_val == -513<br>                                                                                                                                                                                                                                                                                                                                  |[0x80001798]:KMADS32 t6, t5, t4<br> [0x8000179c]:sd t6, 1664(sp)<br>    |
| 124|[0x800039d0]<br>0x09F2EC38C730344B|- rs2_w0_val == -5<br>                                                                                                                                                                                                                                                                                                                                    |[0x800017c0]:KMADS32 t6, t5, t4<br> [0x800017c4]:sd t6, 1680(sp)<br>    |
| 125|[0x800039e0]<br>0x09F2EC38C32C23AA|- rs1_w0_val == -33<br>                                                                                                                                                                                                                                                                                                                                   |[0x800017e8]:KMADS32 t6, t5, t4<br> [0x800017ec]:sd t6, 1696(sp)<br>    |
| 126|[0x800039f0]<br>0x09FAEC38DB2C23AA|- rs2_w0_val == 67108864<br>                                                                                                                                                                                                                                                                                                                              |[0x80001810]:KMADS32 t6, t5, t4<br> [0x80001814]:sd t6, 1712(sp)<br>    |
| 127|[0x80003a00]<br>0x09FAEC38DAAA3369|- rs2_w0_val == -65<br> - rs1_w0_val == -131073<br>                                                                                                                                                                                                                                                                                                       |[0x80001838]:KMADS32 t6, t5, t4<br> [0x8000183c]:sd t6, 1728(sp)<br>    |
| 128|[0x80003a10]<br>0x09FAEC3A6ACA33EA|- rs1_w0_val == 1073741824<br>                                                                                                                                                                                                                                                                                                                            |[0x80001858]:KMADS32 t6, t5, t4<br> [0x8000185c]:sd t6, 1744(sp)<br>    |
| 129|[0x80003a20]<br>0x09FAEE3A6AC223E9|- rs2_w0_val == -524289<br>                                                                                                                                                                                                                                                                                                                               |[0x8000188c]:KMADS32 t6, t5, t4<br> [0x80001890]:sd t6, 1760(sp)<br>    |
| 130|[0x80003a30]<br>0xF9FAF039EAC223E9|- rs1_w0_val == -2147483648<br>                                                                                                                                                                                                                                                                                                                           |[0x800018b8]:KMADS32 t6, t5, t4<br> [0x800018bc]:sd t6, 1776(sp)<br>    |
| 131|[0x80003a60]<br>0xF9FBF035ECA21E29|- rs2_w0_val == 64<br>                                                                                                                                                                                                                                                                                                                                    |[0x80001934]:KMADS32 t6, t5, t4<br> [0x80001938]:sd t6, 1824(sp)<br>    |
