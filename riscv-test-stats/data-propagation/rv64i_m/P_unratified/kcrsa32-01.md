
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001960')]      |
| SIG_REGION                | [('0x80003210', '0x80003a70', '268 dwords')]      |
| COV_LABELS                | kcrsa32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kcrsa32-01.S    |
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
      [0x80001018]:KCRSA32 t6, t5, t4
      [0x8000101c]:sd t6, 688(ra)
 -- Signature Address: 0x800036d0 Data: 0xFDFFFFFB00000006
 -- Redundant Coverpoints hit by the op
      - opcode : kcrsa32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == 0
      - rs2_w0_val == 4
      - rs1_w1_val == -33554433




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000189c]:KCRSA32 t6, t5, t4
      [0x800018a0]:sd t6, 1536(ra)
 -- Signature Address: 0x80003a20 Data: 0x003FFFE080400000
 -- Redundant Coverpoints hit by the op
      - opcode : kcrsa32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == -2147483648
      - rs1_w1_val == rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val < 0 and rs2_w0_val > 0
      - rs2_w1_val == 4194304
      - rs2_w0_val == 32
      - rs1_w1_val == 4194304




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x8000194c]:KCRSA32 t6, t5, t4
      [0x80001950]:sd t6, 1600(ra)
 -- Signature Address: 0x80003a60 Data: 0xAAAAAAEB00000F7F
 -- Redundant Coverpoints hit by the op
      - opcode : kcrsa32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == -129
      - rs2_w0_val == 1431655765
      - rs1_w1_val == 64
      - rs1_w0_val == 4096






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kcrsa32', 'rs1 : x27', 'rs2 : x27', 'rd : x23', 'rs1 == rs2 != rd', 'rs1_w1_val == rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val == rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 4194304', 'rs2_w0_val == 32', 'rs1_w1_val == 4194304', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x800003bc]:KCRSA32 s7, s11, s11
	-[0x800003c0]:sd s7, 0(sp)
Current Store : [0x800003c4] : sd s11, 8(sp) -- Store: [0x80003218]:0x0040000000000020




Last Coverpoint : ['rs1 : x13', 'rs2 : x13', 'rd : x13', 'rs1 == rs2 == rd', 'rs1_w1_val < 0 and rs2_w1_val < 0', 'rs2_w1_val == -33554433', 'rs2_w0_val == 134217728', 'rs1_w1_val == -33554433', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x800003e8]:KCRSA32 a3, a3, a3
	-[0x800003ec]:sd a3, 16(sp)
Current Store : [0x800003f0] : sd a3, 24(sp) -- Store: [0x80003228]:0xF5FFFFFF05FFFFFF




Last Coverpoint : ['rs1 : x11', 'rs2 : x21', 'rd : x10', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == 4096', 'rs2_w0_val == 33554432', 'rs1_w1_val == -67108865', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000414]:KCRSA32 a0, a1, s5
	-[0x80000418]:sd a0, 32(sp)
Current Store : [0x8000041c] : sd a1, 40(sp) -- Store: [0x80003238]:0xFBFFFFFFFFFBFFFF




Last Coverpoint : ['rs1 : x15', 'rs2 : x26', 'rd : x15', 'rs1 == rd != rs2', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs2_w1_val == -131073', 'rs2_w0_val == 256', 'rs1_w1_val == 134217728', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000440]:KCRSA32 a5, a5, s10
	-[0x80000444]:sd a5, 48(sp)
Current Store : [0x80000448] : sd a5, 56(sp) -- Store: [0x80003248]:0x07FFFF00007DFFFF




Last Coverpoint : ['rs1 : x9', 'rs2 : x14', 'rd : x14', 'rs2 == rd != rs1', 'rs2_w1_val == -16777217', 'rs1_w1_val == 8']
Last Code Sequence : 
	-[0x80000468]:KCRSA32 a4, s1, a4
	-[0x8000046c]:sd a4, 64(sp)
Current Store : [0x80000470] : sd s1, 72(sp) -- Store: [0x80003258]:0x0000000800000005




Last Coverpoint : ['rs1 : x14', 'rs2 : x3', 'rd : x29', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w0_val == -65537', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000494]:KCRSA32 t4, a4, gp
	-[0x80000498]:sd t4, 80(sp)
Current Store : [0x8000049c] : sd a4, 88(sp) -- Store: [0x80003268]:0xC0000000FFFFFFFF




Last Coverpoint : ['rs1 : x16', 'rs2 : x11', 'rd : x22', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w1_val == -524289', 'rs1_w1_val == -536870913', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x800004c0]:KCRSA32 s6, a6, a1
	-[0x800004c4]:sd s6, 96(sp)
Current Store : [0x800004c8] : sd a6, 104(sp) -- Store: [0x80003278]:0xDFFFFFFF00020000




Last Coverpoint : ['rs1 : x31', 'rs2 : x17', 'rd : x1', 'rs2_w1_val == -1431655766', 'rs1_w1_val == 33554432', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x800004ec]:KCRSA32 ra, t6, a7
	-[0x800004f0]:sd ra, 112(sp)
Current Store : [0x800004f4] : sd t6, 120(sp) -- Store: [0x80003288]:0x02000000FFFFFBFF




Last Coverpoint : ['rs1 : x29', 'rs2 : x5', 'rd : x11', 'rs2_w1_val == 1431655765', 'rs2_w0_val == 1073741824', 'rs1_w1_val == -131073', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000518]:KCRSA32 a1, t4, t0
	-[0x8000051c]:sd a1, 128(sp)
Current Store : [0x80000520] : sd t4, 136(sp) -- Store: [0x80003298]:0xFFFDFFFF02000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x12', 'rd : x24', 'rs2_w1_val == 2147483647', 'rs2_w0_val == -9', 'rs1_w1_val == -134217729', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000544]:KCRSA32 s8, t5, a2
	-[0x80000548]:sd s8, 144(sp)
Current Store : [0x8000054c] : sd t5, 152(sp) -- Store: [0x800032a8]:0xF7FFFFFFFEFFFFFF




Last Coverpoint : ['rs1 : x20', 'rs2 : x25', 'rd : x8', 'rs2_w1_val == -1073741825', 'rs1_w1_val == -513']
Last Code Sequence : 
	-[0x8000056c]:KCRSA32 fp, s4, s9
	-[0x80000570]:sd fp, 160(sp)
Current Store : [0x80000574] : sd s4, 168(sp) -- Store: [0x800032b8]:0xFFFFFDFF00000005




Last Coverpoint : ['rs1 : x3', 'rs2 : x29', 'rd : x28', 'rs2_w1_val == -536870913', 'rs2_w0_val == -17', 'rs1_w1_val == -32769', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000594]:KCRSA32 t3, gp, t4
	-[0x80000598]:sd t3, 176(sp)
Current Store : [0x8000059c] : sd gp, 184(sp) -- Store: [0x800032c8]:0xFFFF7FFF00000200




Last Coverpoint : ['rs1 : x10', 'rs2 : x0', 'rd : x18', 'rs2_w1_val == 0', 'rs2_w0_val == 0', 'rs1_w1_val == 2097152', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x800005cc]:KCRSA32 s2, a0, zero
	-[0x800005d0]:sd s2, 192(sp)
Current Store : [0x800005d4] : sd a0, 200(sp) -- Store: [0x800032d8]:0x00200000FF7FFFFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x19', 'rd : x27', 'rs2_w1_val == -134217729', 'rs2_w0_val == -262145', 'rs1_w1_val == 0']
Last Code Sequence : 
	-[0x800005f0]:KCRSA32 s11, s8, s3
	-[0x800005f4]:sd s11, 208(sp)
Current Store : [0x800005f8] : sd s8, 216(sp) -- Store: [0x800032e8]:0x0000000000000200




Last Coverpoint : ['rs1 : x2', 'rs2 : x28', 'rd : x20', 'rs2_w1_val == -67108865', 'rs2_w0_val == 1024', 'rs1_w1_val == -2']
Last Code Sequence : 
	-[0x80000620]:KCRSA32 s4, sp, t3
	-[0x80000624]:sd s4, 0(a1)
Current Store : [0x80000628] : sd sp, 8(a1) -- Store: [0x800032f8]:0xFFFFFFFEFFFFFFF9




Last Coverpoint : ['rs1 : x7', 'rs2 : x10', 'rd : x19', 'rs2_w1_val == -8388609', 'rs1_w1_val == -262145']
Last Code Sequence : 
	-[0x80000644]:KCRSA32 s3, t2, a0
	-[0x80000648]:sd s3, 16(a1)
Current Store : [0x8000064c] : sd t2, 24(a1) -- Store: [0x80003308]:0xFFFBFFFF08000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x4', 'rd : x26', 'rs2_w1_val == -4194305', 'rs2_w0_val == 268435456', 'rs1_w1_val == -16777217']
Last Code Sequence : 
	-[0x8000066c]:KCRSA32 s10, s7, tp
	-[0x80000670]:sd s10, 32(a1)
Current Store : [0x80000674] : sd s7, 40(a1) -- Store: [0x80003318]:0xFEFFFFFF00000003




Last Coverpoint : ['rs1 : x0', 'rs2 : x23', 'rd : x17', 'rs2_w1_val == -2097153', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000690]:KCRSA32 a7, zero, s7
	-[0x80000694]:sd a7, 48(a1)
Current Store : [0x80000698] : sd zero, 56(a1) -- Store: [0x80003328]:0x0000000000000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x7', 'rd : x16', 'rs2_w1_val == -1048577', 'rs2_w0_val == 4096', 'rs1_w1_val == 2']
Last Code Sequence : 
	-[0x800006bc]:KCRSA32 a6, ra, t2
	-[0x800006c0]:sd a6, 64(a1)
Current Store : [0x800006c4] : sd ra, 72(a1) -- Store: [0x80003338]:0x0000000200000007




Last Coverpoint : ['rs1 : x22', 'rs2 : x16', 'rd : x30', 'rs1_w0_val == -2147483648', 'rs2_w1_val == -262145', 'rs2_w0_val == -67108865', 'rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x800006e4]:KCRSA32 t5, s6, a6
	-[0x800006e8]:sd t5, 80(a1)
Current Store : [0x800006ec] : sd s6, 88(a1) -- Store: [0x80003348]:0x0000400080000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x18', 'rd : x3', 'rs2_w1_val == -65537', 'rs2_w0_val == 16384', 'rs1_w1_val == -1431655766', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x8000071c]:KCRSA32 gp, a7, s2
	-[0x80000720]:sd gp, 96(a1)
Current Store : [0x80000724] : sd a7, 104(a1) -- Store: [0x80003358]:0xAAAAAAAAFFFFBFFF




Last Coverpoint : ['rs1 : x6', 'rs2 : x30', 'rd : x25', 'rs2_w1_val == -32769', 'rs1_w1_val == 131072', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x8000074c]:KCRSA32 s9, t1, t5
	-[0x80000750]:sd s9, 112(a1)
Current Store : [0x80000754] : sd t1, 120(a1) -- Store: [0x80003368]:0x00020000FFFF7FFF




Last Coverpoint : ['rs1 : x21', 'rs2 : x2', 'rd : x4', 'rs2_w1_val == -16385', 'rs2_w0_val == -5', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000774]:KCRSA32 tp, s5, sp
	-[0x80000778]:sd tp, 128(a1)
Current Store : [0x8000077c] : sd s5, 136(a1) -- Store: [0x80003378]:0x0040000000001000




Last Coverpoint : ['rs1 : x4', 'rs2 : x1', 'rd : x6', 'rs2_w1_val == -8193', 'rs2_w0_val == -4194305', 'rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x800007a4]:KCRSA32 t1, tp, ra
	-[0x800007a8]:sd t1, 144(a1)
Current Store : [0x800007ac] : sd tp, 152(a1) -- Store: [0x80003388]:0x20000000FEFFFFFF




Last Coverpoint : ['rs1 : x25', 'rs2 : x6', 'rd : x9', 'rs2_w1_val == -4097', 'rs2_w0_val == 32768']
Last Code Sequence : 
	-[0x800007c8]:KCRSA32 s1, s9, t1
	-[0x800007cc]:sd s1, 160(a1)
Current Store : [0x800007d0] : sd s9, 168(a1) -- Store: [0x80003398]:0xFDFFFFFF00000000




Last Coverpoint : ['rs1 : x19', 'rs2 : x15', 'rd : x12', 'rs2_w1_val == -2049', 'rs2_w0_val == -2147483648', 'rs1_w1_val == -33']
Last Code Sequence : 
	-[0x800007e8]:KCRSA32 a2, s3, a5
	-[0x800007ec]:sd a2, 176(a1)
Current Store : [0x800007f0] : sd s3, 184(a1) -- Store: [0x800033a8]:0xFFFFFFDF08000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x22', 'rd : x7', 'rs2_w1_val == -1025', 'rs2_w0_val == -33', 'rs1_w0_val == -33']
Last Code Sequence : 
	-[0x8000080c]:KCRSA32 t2, a2, s6
	-[0x80000810]:sd t2, 192(a1)
Current Store : [0x80000814] : sd a2, 200(a1) -- Store: [0x800033b8]:0xFDFFFFFFFFFFFFDF




Last Coverpoint : ['rs1 : x5', 'rs2 : x8', 'rd : x21', 'rs2_w1_val == -513', 'rs2_w0_val == 67108864', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000834]:KCRSA32 s5, t0, fp
	-[0x80000838]:sd s5, 208(a1)
Current Store : [0x8000083c] : sd t0, 216(a1) -- Store: [0x800033c8]:0xAAAAAAAA00000400




Last Coverpoint : ['rs1 : x8', 'rs2 : x31', 'rd : x2', 'rs2_w1_val == -257', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x8000085c]:KCRSA32 sp, fp, t6
	-[0x80000860]:sd sp, 224(a1)
Current Store : [0x80000864] : sd fp, 232(a1) -- Store: [0x800033d8]:0xFFFFFFDF00000004




Last Coverpoint : ['rs1 : x26', 'rs2 : x24', 'rd : x0', 'rs2_w1_val == -129', 'rs2_w0_val == 1431655765', 'rs1_w1_val == 64']
Last Code Sequence : 
	-[0x80000884]:KCRSA32 zero, s10, s8
	-[0x80000888]:sd zero, 240(a1)
Current Store : [0x8000088c] : sd s10, 248(a1) -- Store: [0x800033e8]:0x0000004000001000




Last Coverpoint : ['rs1 : x18', 'rs2 : x9', 'rd : x31', 'rs2_w1_val == -65', 'rs2_w0_val == -33554433', 'rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x800008b0]:KCRSA32 t6, s2, s1
	-[0x800008b4]:sd t6, 256(a1)
Current Store : [0x800008b8] : sd s2, 264(a1) -- Store: [0x800033f8]:0x00000400FF7FFFFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x20', 'rd : x5', 'rs2_w1_val == -33', 'rs1_w1_val == -129', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x800008d4]:KCRSA32 t0, t3, s4
	-[0x800008d8]:sd t0, 272(a1)
Current Store : [0x800008dc] : sd t3, 280(a1) -- Store: [0x80003408]:0xFFFFFF7F00040000




Last Coverpoint : ['rs2_w1_val == -17']
Last Code Sequence : 
	-[0x800008fc]:KCRSA32 t6, t5, t4
	-[0x80000900]:sd t6, 288(a1)
Current Store : [0x80000904] : sd t5, 296(a1) -- Store: [0x80003418]:0x080000003FFFFFFF




Last Coverpoint : ['rs2_w1_val == -9', 'rs1_w1_val == 8388608']
Last Code Sequence : 
	-[0x8000092c]:KCRSA32 t6, t5, t4
	-[0x80000930]:sd t6, 0(ra)
Current Store : [0x80000934] : sd t5, 8(ra) -- Store: [0x80003428]:0x00800000FF7FFFFF




Last Coverpoint : ['rs2_w1_val == -5', 'rs2_w0_val == 512', 'rs1_w1_val == -16385']
Last Code Sequence : 
	-[0x80000954]:KCRSA32 t6, t5, t4
	-[0x80000958]:sd t6, 16(ra)
Current Store : [0x8000095c] : sd t5, 24(ra) -- Store: [0x80003438]:0xFFFFBFFF00000020




Last Coverpoint : ['rs2_w1_val == -3', 'rs2_w0_val == 128']
Last Code Sequence : 
	-[0x80000978]:KCRSA32 t6, t5, t4
	-[0x8000097c]:sd t6, 32(ra)
Current Store : [0x80000980] : sd t5, 40(ra) -- Store: [0x80003448]:0xFFFBFFFFFFFFFFDF




Last Coverpoint : ['rs2_w1_val == -2', 'rs2_w0_val == -524289', 'rs1_w1_val == 262144']
Last Code Sequence : 
	-[0x800009a4]:KCRSA32 t6, t5, t4
	-[0x800009a8]:sd t6, 48(ra)
Current Store : [0x800009ac] : sd t5, 56(ra) -- Store: [0x80003458]:0x0004000000040000




Last Coverpoint : ['rs2_w1_val == -2147483648', 'rs2_w0_val == -2', 'rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x800009d0]:KCRSA32 t6, t5, t4
	-[0x800009d4]:sd t6, 64(ra)
Current Store : [0x800009d8] : sd t5, 72(ra) -- Store: [0x80003468]:0x00001000FFFFFFF9




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs2_w0_val == 8192', 'rs1_w1_val == -2097153', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x800009f8]:KCRSA32 t6, t5, t4
	-[0x800009fc]:sd t6, 80(ra)
Current Store : [0x80000a00] : sd t5, 88(ra) -- Store: [0x80003478]:0xFFDFFFFF01000000




Last Coverpoint : ['rs2_w1_val == 536870912', 'rs2_w0_val == -16385', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000a28]:KCRSA32 t6, t5, t4
	-[0x80000a2c]:sd t6, 96(ra)
Current Store : [0x80000a30] : sd t5, 104(ra) -- Store: [0x80003488]:0xFFFFFFFC00080000




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs2_w0_val == -268435457', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000a5c]:KCRSA32 t6, t5, t4
	-[0x80000a60]:sd t6, 112(ra)
Current Store : [0x80000a64] : sd t5, 120(ra) -- Store: [0x80003498]:0xFBFFFFFFFFBFFFFF




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80000a88]:KCRSA32 t6, t5, t4
	-[0x80000a8c]:sd t6, 128(ra)
Current Store : [0x80000a90] : sd t5, 136(ra) -- Store: [0x800034a8]:0xFDFFFFFFFFFEFFFF




Last Coverpoint : ['rs2_w1_val == 67108864', 'rs2_w0_val == 64', 'rs1_w1_val == 16', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x80000aac]:KCRSA32 t6, t5, t4
	-[0x80000ab0]:sd t6, 144(ra)
Current Store : [0x80000ab4] : sd t5, 152(ra) -- Store: [0x800034b8]:0x00000010F7FFFFFF




Last Coverpoint : ['rs2_w1_val == 33554432', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80000adc]:KCRSA32 t6, t5, t4
	-[0x80000ae0]:sd t6, 160(ra)
Current Store : [0x80000ae4] : sd t5, 168(ra) -- Store: [0x800034c8]:0xDFFFFFFFFFF7FFFF




Last Coverpoint : ['rs2_w1_val == 16777216']
Last Code Sequence : 
	-[0x80000b04]:KCRSA32 t6, t5, t4
	-[0x80000b08]:sd t6, 176(ra)
Current Store : [0x80000b0c] : sd t5, 184(ra) -- Store: [0x800034d8]:0x0200000000000400




Last Coverpoint : ['rs2_w1_val == 8388608', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000b2c]:KCRSA32 t6, t5, t4
	-[0x80000b30]:sd t6, 192(ra)
Current Store : [0x80000b34] : sd t5, 200(ra) -- Store: [0x800034e8]:0x0000040010000000




Last Coverpoint : ['rs2_w1_val == 2097152', 'rs2_w0_val == -1025']
Last Code Sequence : 
	-[0x80000b54]:KCRSA32 t6, t5, t4
	-[0x80000b58]:sd t6, 208(ra)
Current Store : [0x80000b5c] : sd t5, 216(ra) -- Store: [0x800034f8]:0xFFFFFFFAF7FFFFFF




Last Coverpoint : ['rs2_w1_val == 1048576']
Last Code Sequence : 
	-[0x80000b7c]:KCRSA32 t6, t5, t4
	-[0x80000b80]:sd t6, 224(ra)
Current Store : [0x80000b84] : sd t5, 232(ra) -- Store: [0x80003508]:0x0000000300000006




Last Coverpoint : ['rs2_w1_val == 524288', 'rs2_w0_val == 524288']
Last Code Sequence : 
	-[0x80000ba4]:KCRSA32 t6, t5, t4
	-[0x80000ba8]:sd t6, 240(ra)
Current Store : [0x80000bac] : sd t5, 248(ra) -- Store: [0x80003518]:0xFFFFFFF6F7FFFFFF




Last Coverpoint : ['rs2_w1_val == 262144', 'rs1_w1_val == 8192']
Last Code Sequence : 
	-[0x80000bcc]:KCRSA32 t6, t5, t4
	-[0x80000bd0]:sd t6, 256(ra)
Current Store : [0x80000bd4] : sd t5, 264(ra) -- Store: [0x80003528]:0x0000200000080000




Last Coverpoint : ['rs2_w1_val == 131072', 'rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x80000bf4]:KCRSA32 t6, t5, t4
	-[0x80000bf8]:sd t6, 272(ra)
Current Store : [0x80000bfc] : sd t5, 280(ra) -- Store: [0x80003538]:0x00080000F7FFFFFF




Last Coverpoint : ['rs2_w1_val == 65536', 'rs2_w0_val == -2049', 'rs1_w1_val == -257']
Last Code Sequence : 
	-[0x80000c24]:KCRSA32 t6, t5, t4
	-[0x80000c28]:sd t6, 288(ra)
Current Store : [0x80000c2c] : sd t5, 296(ra) -- Store: [0x80003548]:0xFFFFFEFF00020000




Last Coverpoint : ['rs1_w1_val == 32768', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000c48]:KCRSA32 t6, t5, t4
	-[0x80000c4c]:sd t6, 304(ra)
Current Store : [0x80000c50] : sd t5, 312(ra) -- Store: [0x80003558]:0x0000800000400000




Last Coverpoint : ['rs2_w0_val == 131072', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000c74]:KCRSA32 t6, t5, t4
	-[0x80000c78]:sd t6, 320(ra)
Current Store : [0x80000c7c] : sd t5, 328(ra) -- Store: [0x80003568]:0xFBFFFFFF00100000




Last Coverpoint : ['rs1_w1_val == 1431655765', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000ca0]:KCRSA32 t6, t5, t4
	-[0x80000ca4]:sd t6, 336(ra)
Current Store : [0x80000ca8] : sd t5, 344(ra) -- Store: [0x80003578]:0x5555555500010000




Last Coverpoint : ['rs2_w0_val == 2147483647', 'rs1_w1_val == 4', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000cc8]:KCRSA32 t6, t5, t4
	-[0x80000ccc]:sd t6, 352(ra)
Current Store : [0x80000cd0] : sd t5, 360(ra) -- Store: [0x80003588]:0x0000000400008000




Last Coverpoint : ['rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000cf4]:KCRSA32 t6, t5, t4
	-[0x80000cf8]:sd t6, 368(ra)
Current Store : [0x80000cfc] : sd t5, 376(ra) -- Store: [0x80003598]:0xC000000000004000




Last Coverpoint : ['rs2_w1_val == 32', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000d18]:KCRSA32 t6, t5, t4
	-[0x80000d1c]:sd t6, 384(ra)
Current Store : [0x80000d20] : sd t5, 392(ra) -- Store: [0x800035a8]:0xFFFFFFF900002000




Last Coverpoint : ['rs1_w1_val == 1048576', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000d44]:KCRSA32 t6, t5, t4
	-[0x80000d48]:sd t6, 400(ra)
Current Store : [0x80000d4c] : sd t5, 408(ra) -- Store: [0x800035b8]:0x0010000000000800




Last Coverpoint : ['rs2_w1_val == 1', 'rs2_w0_val == -129', 'rs1_w1_val == -8193', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000d6c]:KCRSA32 t6, t5, t4
	-[0x80000d70]:sd t6, 416(ra)
Current Store : [0x80000d74] : sd t5, 424(ra) -- Store: [0x800035c8]:0xFFFFDFFF00000100




Last Coverpoint : ['rs2_w1_val == 32768', 'rs2_w0_val == 4', 'rs1_w1_val == -4097', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000d94]:KCRSA32 t6, t5, t4
	-[0x80000d98]:sd t6, 432(ra)
Current Store : [0x80000d9c] : sd t5, 440(ra) -- Store: [0x800035d8]:0xFFFFEFFF00000080




Last Coverpoint : ['rs2_w1_val == 512', 'rs2_w0_val == 8', 'rs1_w1_val == 2147483647', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000dbc]:KCRSA32 t6, t5, t4
	-[0x80000dc0]:sd t6, 448(ra)
Current Store : [0x80000dc4] : sd t5, 456(ra) -- Store: [0x800035e8]:0x7FFFFFFF00000040




Last Coverpoint : ['rs2_w0_val == -536870913', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000de4]:KCRSA32 t6, t5, t4
	-[0x80000de8]:sd t6, 464(ra)
Current Store : [0x80000dec] : sd t5, 472(ra) -- Store: [0x800035f8]:0x0040000000000010




Last Coverpoint : ['rs2_w1_val == 1024', 'rs2_w0_val == -3', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000e08]:KCRSA32 t6, t5, t4
	-[0x80000e0c]:sd t6, 480(ra)
Current Store : [0x80000e10] : sd t5, 488(ra) -- Store: [0x80003608]:0x0020000000000008




Last Coverpoint : ['rs1_w1_val == -8388609', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000e34]:KCRSA32 t6, t5, t4
	-[0x80000e38]:sd t6, 496(ra)
Current Store : [0x80000e3c] : sd t5, 504(ra) -- Store: [0x80003618]:0xFF7FFFFF00000002




Last Coverpoint : ['rs1_w1_val == -524289', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000e60]:KCRSA32 t6, t5, t4
	-[0x80000e64]:sd t6, 512(ra)
Current Store : [0x80000e68] : sd t5, 520(ra) -- Store: [0x80003628]:0xFFF7FFFF00000001




Last Coverpoint : ['rs2_w1_val == 16384', 'rs2_w0_val == -2097153', 'rs1_w1_val == 67108864', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000e88]:KCRSA32 t6, t5, t4
	-[0x80000e8c]:sd t6, 528(ra)
Current Store : [0x80000e90] : sd t5, 536(ra) -- Store: [0x80003638]:0x0400000040000000




Last Coverpoint : ['rs2_w1_val == 8192', 'rs2_w0_val == -8193', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80000eb8]:KCRSA32 t6, t5, t4
	-[0x80000ebc]:sd t6, 544(ra)
Current Store : [0x80000ec0] : sd t5, 552(ra) -- Store: [0x80003648]:0x00000002FDFFFFFF




Last Coverpoint : ['rs2_w1_val == 2048', 'rs1_w1_val == -3']
Last Code Sequence : 
	-[0x80000edc]:KCRSA32 t6, t5, t4
	-[0x80000ee0]:sd t6, 560(ra)
Current Store : [0x80000ee4] : sd t5, 568(ra) -- Store: [0x80003658]:0xFFFFFFFDFFFFFFFC




Last Coverpoint : ['rs2_w1_val == 256', 'rs1_w1_val == 32']
Last Code Sequence : 
	-[0x80000f00]:KCRSA32 t6, t5, t4
	-[0x80000f04]:sd t6, 576(ra)
Current Store : [0x80000f08] : sd t5, 584(ra) -- Store: [0x80003668]:0x0000002000010000




Last Coverpoint : ['rs2_w1_val == 128', 'rs2_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000f28]:KCRSA32 t6, t5, t4
	-[0x80000f2c]:sd t6, 592(ra)
Current Store : [0x80000f30] : sd t5, 600(ra) -- Store: [0x80003678]:0x0008000000004000




Last Coverpoint : ['rs2_w1_val == 64', 'rs2_w0_val == -1048577', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80000f5c]:KCRSA32 t6, t5, t4
	-[0x80000f60]:sd t6, 608(ra)
Current Store : [0x80000f64] : sd t5, 616(ra) -- Store: [0x80003688]:0xC0000000FFFDFFFF




Last Coverpoint : ['rs2_w1_val == 16', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80000f80]:KCRSA32 t6, t5, t4
	-[0x80000f84]:sd t6, 624(ra)
Current Store : [0x80000f88] : sd t5, 632(ra) -- Store: [0x80003698]:0xDFFFFFFFFFFFFEFF




Last Coverpoint : ['rs2_w1_val == 8', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80000fb0]:KCRSA32 t6, t5, t4
	-[0x80000fb4]:sd t6, 640(ra)
Current Store : [0x80000fb8] : sd t5, 648(ra) -- Store: [0x800036a8]:0xAAAAAAAAFFFFDFFF




Last Coverpoint : ['rs2_w1_val == 4', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000fd4]:KCRSA32 t6, t5, t4
	-[0x80000fd8]:sd t6, 656(ra)
Current Store : [0x80000fdc] : sd t5, 664(ra) -- Store: [0x800036b8]:0xFFFFFFFEFFFFFDFF




Last Coverpoint : ['rs2_w1_val == 2', 'rs1_w1_val == -65']
Last Code Sequence : 
	-[0x80000ff8]:KCRSA32 t6, t5, t4
	-[0x80000ffc]:sd t6, 672(ra)
Current Store : [0x80001000] : sd t5, 680(ra) -- Store: [0x800036c8]:0xFFFFFFBFFFFFFFF9




Last Coverpoint : ['opcode : kcrsa32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 0', 'rs2_w0_val == 4', 'rs1_w1_val == -33554433']
Last Code Sequence : 
	-[0x80001018]:KCRSA32 t6, t5, t4
	-[0x8000101c]:sd t6, 688(ra)
Current Store : [0x80001020] : sd t5, 696(ra) -- Store: [0x800036d8]:0xFDFFFFFF00000006




Last Coverpoint : ['rs2_w0_val == 262144']
Last Code Sequence : 
	-[0x8000103c]:KCRSA32 t6, t5, t4
	-[0x80001040]:sd t6, 704(ra)
Current Store : [0x80001044] : sd t5, 712(ra) -- Store: [0x800036e8]:0x00000040FFFFFFDF




Last Coverpoint : ['rs2_w0_val == 65536']
Last Code Sequence : 
	-[0x80001068]:KCRSA32 t6, t5, t4
	-[0x8000106c]:sd t6, 720(ra)
Current Store : [0x80001070] : sd t5, 728(ra) -- Store: [0x800036f8]:0x0000000600000009




Last Coverpoint : ['rs2_w0_val == 2048']
Last Code Sequence : 
	-[0x80001094]:KCRSA32 t6, t5, t4
	-[0x80001098]:sd t6, 736(ra)
Current Store : [0x8000109c] : sd t5, 744(ra) -- Store: [0x80003708]:0x0000100000000004




Last Coverpoint : ['rs2_w0_val == 16', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x800010b8]:KCRSA32 t6, t5, t4
	-[0x800010bc]:sd t6, 752(ra)
Current Store : [0x800010c0] : sd t5, 760(ra) -- Store: [0x80003718]:0x00000010FBFFFFFF




Last Coverpoint : ['rs2_w0_val == 2']
Last Code Sequence : 
	-[0x800010dc]:KCRSA32 t6, t5, t4
	-[0x800010e0]:sd t6, 768(ra)
Current Store : [0x800010e4] : sd t5, 776(ra) -- Store: [0x80003728]:0xFFFFFFFC00000006




Last Coverpoint : ['rs2_w0_val == 1']
Last Code Sequence : 
	-[0x80001104]:KCRSA32 t6, t5, t4
	-[0x80001108]:sd t6, 784(ra)
Current Store : [0x8000110c] : sd t5, 792(ra) -- Store: [0x80003738]:0xFFFFFEFF00000009




Last Coverpoint : ['rs2_w0_val == -1', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80001128]:KCRSA32 t6, t5, t4
	-[0x8000112c]:sd t6, 800(ra)
Current Store : [0x80001130] : sd t5, 808(ra) -- Store: [0x80003748]:0xFFFFBFFF20000000




Last Coverpoint : ['rs1_w1_val == -1073741825']
Last Code Sequence : 
	-[0x80001160]:KCRSA32 t6, t5, t4
	-[0x80001164]:sd t6, 816(ra)
Current Store : [0x80001168] : sd t5, 824(ra) -- Store: [0x80003758]:0xBFFFFFFF00100000




Last Coverpoint : ['rs1_w1_val == -268435457', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80001184]:KCRSA32 t6, t5, t4
	-[0x80001188]:sd t6, 832(ra)
Current Store : [0x8000118c] : sd t5, 840(ra) -- Store: [0x80003768]:0xEFFFFFFFFFFFFFEF




Last Coverpoint : ['rs1_w1_val == -4194305']
Last Code Sequence : 
	-[0x800011ac]:KCRSA32 t6, t5, t4
	-[0x800011b0]:sd t6, 848(ra)
Current Store : [0x800011b4] : sd t5, 856(ra) -- Store: [0x80003778]:0xFFBFFFFF00000009




Last Coverpoint : ['rs2_w0_val == -16777217', 'rs1_w1_val == -1048577']
Last Code Sequence : 
	-[0x800011d4]:KCRSA32 t6, t5, t4
	-[0x800011d8]:sd t6, 864(ra)
Current Store : [0x800011dc] : sd t5, 872(ra) -- Store: [0x80003788]:0xFFEFFFFFFF7FFFFF




Last Coverpoint : ['rs1_w1_val == -65537']
Last Code Sequence : 
	-[0x800011f8]:KCRSA32 t6, t5, t4
	-[0x800011fc]:sd t6, 880(ra)
Current Store : [0x80001200] : sd t5, 888(ra) -- Store: [0x80003798]:0xFFFEFFFF00000000




Last Coverpoint : ['rs1_w1_val == -2049', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x80001228]:KCRSA32 t6, t5, t4
	-[0x8000122c]:sd t6, 896(ra)
Current Store : [0x80001230] : sd t5, 904(ra) -- Store: [0x800037a8]:0xFFFFF7FFDFFFFFFF




Last Coverpoint : ['rs1_w1_val == -1025']
Last Code Sequence : 
	-[0x80001254]:KCRSA32 t6, t5, t4
	-[0x80001258]:sd t6, 912(ra)
Current Store : [0x8000125c] : sd t5, 920(ra) -- Store: [0x800037b8]:0xFFFFFBFFFFFF7FFF




Last Coverpoint : ['rs1_w1_val == -17']
Last Code Sequence : 
	-[0x80001284]:KCRSA32 t6, t5, t4
	-[0x80001288]:sd t6, 928(ra)
Current Store : [0x8000128c] : sd t5, 936(ra) -- Store: [0x800037c8]:0xFFFFFFEFFBFFFFFF




Last Coverpoint : ['rs1_w1_val == -9']
Last Code Sequence : 
	-[0x800012a8]:KCRSA32 t6, t5, t4
	-[0x800012ac]:sd t6, 944(ra)
Current Store : [0x800012b0] : sd t5, 952(ra) -- Store: [0x800037d8]:0xFFFFFFF7FFFFFEFF




Last Coverpoint : ['rs1_w1_val == -5']
Last Code Sequence : 
	-[0x800012d0]:KCRSA32 t6, t5, t4
	-[0x800012d4]:sd t6, 960(ra)
Current Store : [0x800012d8] : sd t5, 968(ra) -- Store: [0x800037e8]:0xFFFFFFFBFEFFFFFF




Last Coverpoint : ['rs1_w1_val == 1073741824', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x800012f8]:KCRSA32 t6, t5, t4
	-[0x800012fc]:sd t6, 976(ra)
Current Store : [0x80001300] : sd t5, 984(ra) -- Store: [0x800037f8]:0x40000000EFFFFFFF




Last Coverpoint : ['rs1_w1_val == 268435456', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80001320]:KCRSA32 t6, t5, t4
	-[0x80001324]:sd t6, 992(ra)
Current Store : [0x80001328] : sd t5, 1000(ra) -- Store: [0x80003808]:0x10000000FFFFFFBF




Last Coverpoint : ['rs1_w1_val == 16777216']
Last Code Sequence : 
	-[0x80001348]:KCRSA32 t6, t5, t4
	-[0x8000134c]:sd t6, 1008(ra)
Current Store : [0x80001350] : sd t5, 1016(ra) -- Store: [0x80003818]:0x0100000000008000




Last Coverpoint : ['rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x80001378]:KCRSA32 t6, t5, t4
	-[0x8000137c]:sd t6, 1024(ra)
Current Store : [0x80001380] : sd t5, 1032(ra) -- Store: [0x80003828]:0x00010000FFFEFFFF




Last Coverpoint : ['rs1_w1_val == 2048']
Last Code Sequence : 
	-[0x800013a0]:KCRSA32 t6, t5, t4
	-[0x800013a4]:sd t6, 1040(ra)
Current Store : [0x800013a8] : sd t5, 1048(ra) -- Store: [0x80003838]:0x00000800FFFFFFBF




Last Coverpoint : ['rs1_w1_val == 512']
Last Code Sequence : 
	-[0x800013c8]:KCRSA32 t6, t5, t4
	-[0x800013cc]:sd t6, 1056(ra)
Current Store : [0x800013d0] : sd t5, 1064(ra) -- Store: [0x80003848]:0x00000200FFFFFFF6




Last Coverpoint : ['rs1_w1_val == 256']
Last Code Sequence : 
	-[0x800013f0]:KCRSA32 t6, t5, t4
	-[0x800013f4]:sd t6, 1072(ra)
Current Store : [0x800013f8] : sd t5, 1080(ra) -- Store: [0x80003858]:0x0000010000000001




Last Coverpoint : ['rs1_w1_val == 128']
Last Code Sequence : 
	-[0x80001414]:KCRSA32 t6, t5, t4
	-[0x80001418]:sd t6, 1088(ra)
Current Store : [0x8000141c] : sd t5, 1096(ra) -- Store: [0x80003868]:0x0000008000000008




Last Coverpoint : ['rs2_w1_val == -1']
Last Code Sequence : 
	-[0x80001434]:KCRSA32 t6, t5, t4
	-[0x80001438]:sd t6, 1104(ra)
Current Store : [0x8000143c] : sd t5, 1112(ra) -- Store: [0x80003878]:0xFFFFEFFF20000000




Last Coverpoint : ['rs2_w0_val == -1073741825']
Last Code Sequence : 
	-[0x8000145c]:KCRSA32 t6, t5, t4
	-[0x80001460]:sd t6, 1120(ra)
Current Store : [0x80001464] : sd t5, 1128(ra) -- Store: [0x80003888]:0x00020000F7FFFFFF




Last Coverpoint : ['rs2_w0_val == -4097', 'rs1_w1_val == 1']
Last Code Sequence : 
	-[0x8000148c]:KCRSA32 t6, t5, t4
	-[0x80001490]:sd t6, 1136(ra)
Current Store : [0x80001494] : sd t5, 1144(ra) -- Store: [0x80003898]:0x0000000100100000




Last Coverpoint : ['rs2_w0_val == -134217729']
Last Code Sequence : 
	-[0x800014b8]:KCRSA32 t6, t5, t4
	-[0x800014bc]:sd t6, 1152(ra)
Current Store : [0x800014c0] : sd t5, 1160(ra) -- Store: [0x800038a8]:0xFFFFFDFFFFF7FFFF




Last Coverpoint : ['rs1_w1_val == -1']
Last Code Sequence : 
	-[0x800014d4]:KCRSA32 t6, t5, t4
	-[0x800014d8]:sd t6, 1168(ra)
Current Store : [0x800014dc] : sd t5, 1176(ra) -- Store: [0x800038b8]:0xFFFFFFFFFFFFFFFF




Last Coverpoint : ['rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x8000150c]:KCRSA32 t6, t5, t4
	-[0x80001510]:sd t6, 1184(ra)
Current Store : [0x80001514] : sd t5, 1192(ra) -- Store: [0x800038c8]:0x02000000AAAAAAAA




Last Coverpoint : ['rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80001538]:KCRSA32 t6, t5, t4
	-[0x8000153c]:sd t6, 1200(ra)
Current Store : [0x80001540] : sd t5, 1208(ra) -- Store: [0x800038d8]:0xFFFFFFEF55555555




Last Coverpoint : ['rs2_w0_val == -8388609']
Last Code Sequence : 
	-[0x80001564]:KCRSA32 t6, t5, t4
	-[0x80001568]:sd t6, 1216(ra)
Current Store : [0x8000156c] : sd t5, 1224(ra) -- Store: [0x800038e8]:0xFFFFFFFEFFFBFFFF




Last Coverpoint : ['rs2_w0_val == -65', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x8000158c]:KCRSA32 t6, t5, t4
	-[0x80001590]:sd t6, 1232(ra)
Current Store : [0x80001594] : sd t5, 1240(ra) -- Store: [0x800038f8]:0xFFEFFFFF7FFFFFFF




Last Coverpoint : ['rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x800015b4]:KCRSA32 t6, t5, t4
	-[0x800015b8]:sd t6, 1248(ra)
Current Store : [0x800015bc] : sd t5, 1256(ra) -- Store: [0x80003908]:0x00000800BFFFFFFF




Last Coverpoint : ['rs2_w0_val == -131073']
Last Code Sequence : 
	-[0x800015e0]:KCRSA32 t6, t5, t4
	-[0x800015e4]:sd t6, 1264(ra)
Current Store : [0x800015e8] : sd t5, 1272(ra) -- Store: [0x80003918]:0xFFFFFFFD00080000




Last Coverpoint : ['rs2_w0_val == -32769', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80001614]:KCRSA32 t6, t5, t4
	-[0x80001618]:sd t6, 1280(ra)
Current Store : [0x8000161c] : sd t5, 1288(ra) -- Store: [0x80003928]:0xFDFFFFFFFFFFEFFF




Last Coverpoint : ['rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x8000163c]:KCRSA32 t6, t5, t4
	-[0x80001640]:sd t6, 1296(ra)
Current Store : [0x80001644] : sd t5, 1304(ra) -- Store: [0x80003938]:0x00000004FFDFFFFF




Last Coverpoint : ['rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80001668]:KCRSA32 t6, t5, t4
	-[0x8000166c]:sd t6, 1312(ra)
Current Store : [0x80001670] : sd t5, 1320(ra) -- Store: [0x80003948]:0xFFFFFFBFFFEFFFFF




Last Coverpoint : ['rs2_w0_val == -513']
Last Code Sequence : 
	-[0x8000169c]:KCRSA32 t6, t5, t4
	-[0x800016a0]:sd t6, 1328(ra)
Current Store : [0x800016a4] : sd t5, 1336(ra) -- Store: [0x80003958]:0xC0000000FFFF7FFF




Last Coverpoint : ['rs2_w0_val == -257']
Last Code Sequence : 
	-[0x800016c4]:KCRSA32 t6, t5, t4
	-[0x800016c8]:sd t6, 1344(ra)
Current Store : [0x800016cc] : sd t5, 1352(ra) -- Store: [0x80003968]:0x7FFFFFFF00000100




Last Coverpoint : ['rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x800016f4]:KCRSA32 t6, t5, t4
	-[0x800016f8]:sd t6, 1360(ra)
Current Store : [0x800016fc] : sd t5, 1368(ra) -- Store: [0x80003978]:0xC0000000FFFFF7FF




Last Coverpoint : ['rs1_w0_val == -129']
Last Code Sequence : 
	-[0x8000171c]:KCRSA32 t6, t5, t4
	-[0x80001720]:sd t6, 1376(ra)
Current Store : [0x80001724] : sd t5, 1384(ra) -- Store: [0x80003988]:0xFFFFFDFFFFFFFF7F




Last Coverpoint : ['rs2_w0_val == 536870912']
Last Code Sequence : 
	-[0x80001744]:KCRSA32 t6, t5, t4
	-[0x80001748]:sd t6, 1392(ra)
Current Store : [0x8000174c] : sd t5, 1400(ra) -- Store: [0x80003998]:0x00000007FFBFFFFF




Last Coverpoint : ['rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80001770]:KCRSA32 t6, t5, t4
	-[0x80001774]:sd t6, 1408(ra)
Current Store : [0x80001778] : sd t5, 1416(ra) -- Store: [0x800039a8]:0x00001000FFFFFFF7




Last Coverpoint : ['rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80001798]:KCRSA32 t6, t5, t4
	-[0x8000179c]:sd t6, 1424(ra)
Current Store : [0x800017a0] : sd t5, 1432(ra) -- Store: [0x800039b8]:0xFFFDFFFFFFFFFFFB




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x800017c0]:KCRSA32 t6, t5, t4
	-[0x800017c4]:sd t6, 1440(ra)
Current Store : [0x800017c8] : sd t5, 1448(ra) -- Store: [0x800039c8]:0x00000006FFFFFFFD




Last Coverpoint : ['rs2_w0_val == 4194304', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x800017e8]:KCRSA32 t6, t5, t4
	-[0x800017ec]:sd t6, 1456(ra)
Current Store : [0x800017f0] : sd t5, 1464(ra) -- Store: [0x800039d8]:0x00000000FFFFFFFE




Last Coverpoint : ['rs2_w0_val == 8388608']
Last Code Sequence : 
	-[0x80001808]:KCRSA32 t6, t5, t4
	-[0x8000180c]:sd t6, 1472(ra)
Current Store : [0x80001810] : sd t5, 1480(ra) -- Store: [0x800039e8]:0x1000000000000006




Last Coverpoint : ['rs2_w0_val == 2097152']
Last Code Sequence : 
	-[0x80001834]:KCRSA32 t6, t5, t4
	-[0x80001838]:sd t6, 1488(ra)
Current Store : [0x8000183c] : sd t5, 1496(ra) -- Store: [0x800039f8]:0xFFFFEFFF00000002




Last Coverpoint : ['rs2_w0_val == 1048576']
Last Code Sequence : 
	-[0x80001858]:KCRSA32 t6, t5, t4
	-[0x8000185c]:sd t6, 1504(ra)
Current Store : [0x80001860] : sd t5, 1512(ra) -- Store: [0x80003a08]:0xFDFFFFFF08000000




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80001878]:KCRSA32 t6, t5, t4
	-[0x8000187c]:sd t6, 1520(ra)
Current Store : [0x80001880] : sd t5, 1528(ra) -- Store: [0x80003a18]:0x0000000704000000




Last Coverpoint : ['opcode : kcrsa32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == -2147483648', 'rs1_w1_val == rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == 4194304', 'rs2_w0_val == 32', 'rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x8000189c]:KCRSA32 t6, t5, t4
	-[0x800018a0]:sd t6, 1536(ra)
Current Store : [0x800018a4] : sd t5, 1544(ra) -- Store: [0x80003a28]:0x0040000080000000




Last Coverpoint : ['rs1_w1_val == -2147483648']
Last Code Sequence : 
	-[0x800018c8]:KCRSA32 t6, t5, t4
	-[0x800018cc]:sd t6, 1552(ra)
Current Store : [0x800018d0] : sd t5, 1560(ra) -- Store: [0x80003a38]:0x800000003FFFFFFF




Last Coverpoint : ['rs2_w1_val == -268435457', 'rs2_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80001900]:KCRSA32 t6, t5, t4
	-[0x80001904]:sd t6, 1568(ra)
Current Store : [0x80001908] : sd t5, 1576(ra) -- Store: [0x80003a48]:0x00200000FF7FFFFF




Last Coverpoint : ['rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80001924]:KCRSA32 t6, t5, t4
	-[0x80001928]:sd t6, 1584(ra)
Current Store : [0x8000192c] : sd t5, 1592(ra) -- Store: [0x80003a58]:0xFFFBFFFF00200000




Last Coverpoint : ['opcode : kcrsa32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == -129', 'rs2_w0_val == 1431655765', 'rs1_w1_val == 64', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x8000194c]:KCRSA32 t6, t5, t4
	-[0x80001950]:sd t6, 1600(ra)
Current Store : [0x80001954] : sd t5, 1608(ra) -- Store: [0x80003a68]:0x0000004000001000





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

|s.no|            signature             |                                                                                                                                                                        coverpoints                                                                                                                                                                        |                                  code                                   |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x003FFFE000400020|- opcode : kcrsa32<br> - rs1 : x27<br> - rs2 : x27<br> - rd : x23<br> - rs1 == rs2 != rd<br> - rs1_w1_val == rs2_w1_val<br> - rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs1_w0_val == rs2_w0_val<br> - rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == 4194304<br> - rs2_w0_val == 32<br> - rs1_w1_val == 4194304<br> - rs1_w0_val == 32<br>           |[0x800003bc]:KCRSA32 s7, s11, s11<br> [0x800003c0]:sd s7, 0(sp)<br>      |
|   2|[0x80003220]<br>0xF5FFFFFF05FFFFFF|- rs1 : x13<br> - rs2 : x13<br> - rd : x13<br> - rs1 == rs2 == rd<br> - rs1_w1_val < 0 and rs2_w1_val < 0<br> - rs2_w1_val == -33554433<br> - rs2_w0_val == 134217728<br> - rs1_w1_val == -33554433<br> - rs1_w0_val == 134217728<br>                                                                                                                      |[0x800003e8]:KCRSA32 a3, a3, a3<br> [0x800003ec]:sd a3, 16(sp)<br>       |
|   3|[0x80003230]<br>0xF9FFFFFFFFFC0FFF|- rs1 : x11<br> - rs2 : x21<br> - rd : x10<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w1_val != rs2_w1_val<br> - rs1_w1_val < 0 and rs2_w1_val > 0<br> - rs1_w0_val != rs2_w0_val<br> - rs1_w0_val < 0 and rs2_w0_val > 0<br> - rs2_w1_val == 4096<br> - rs2_w0_val == 33554432<br> - rs1_w1_val == -67108865<br> - rs1_w0_val == -262145<br> |[0x80000414]:KCRSA32 a0, a1, s5<br> [0x80000418]:sd a0, 32(sp)<br>       |
|   4|[0x80003240]<br>0x07FFFF00007DFFFF|- rs1 : x15<br> - rs2 : x26<br> - rd : x15<br> - rs1 == rd != rs2<br> - rs1_w1_val > 0 and rs2_w1_val < 0<br> - rs2_w1_val == -131073<br> - rs2_w0_val == 256<br> - rs1_w1_val == 134217728<br> - rs1_w0_val == 8388608<br>                                                                                                                                |[0x80000440]:KCRSA32 a5, a5, s10<br> [0x80000444]:sd a5, 48(sp)<br>      |
|   5|[0x80003250]<br>0x00000003FF000004|- rs1 : x9<br> - rs2 : x14<br> - rd : x14<br> - rs2 == rd != rs1<br> - rs2_w1_val == -16777217<br> - rs1_w1_val == 8<br>                                                                                                                                                                                                                                   |[0x80000468]:KCRSA32 a4, s1, a4<br> [0x8000046c]:sd a4, 64(sp)<br>       |
|   6|[0x80003260]<br>0xC001000100000006|- rs1 : x14<br> - rs2 : x3<br> - rd : x29<br> - rs1_w0_val < 0 and rs2_w0_val < 0<br> - rs2_w0_val == -65537<br> - rs1_w0_val == -1<br>                                                                                                                                                                                                                    |[0x80000494]:KCRSA32 t4, a4, gp<br> [0x80000498]:sd t4, 80(sp)<br>       |
|   7|[0x80003270]<br>0xE0000003FFF9FFFF|- rs1 : x16<br> - rs2 : x11<br> - rd : x22<br> - rs1_w0_val > 0 and rs2_w0_val < 0<br> - rs2_w1_val == -524289<br> - rs1_w1_val == -536870913<br> - rs1_w0_val == 131072<br>                                                                                                                                                                               |[0x800004c0]:KCRSA32 s6, a6, a1<br> [0x800004c4]:sd s6, 96(sp)<br>       |
|   8|[0x80003280]<br>0x02000004AAAAA6A9|- rs1 : x31<br> - rs2 : x17<br> - rd : x1<br> - rs2_w1_val == -1431655766<br> - rs1_w1_val == 33554432<br> - rs1_w0_val == -1025<br>                                                                                                                                                                                                                       |[0x800004ec]:KCRSA32 ra, t6, a7<br> [0x800004f0]:sd ra, 112(sp)<br>      |
|   9|[0x80003290]<br>0xBFFDFFFF57555555|- rs1 : x29<br> - rs2 : x5<br> - rd : x11<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == 1073741824<br> - rs1_w1_val == -131073<br> - rs1_w0_val == 33554432<br>                                                                                                                                                                                       |[0x80000518]:KCRSA32 a1, t4, t0<br> [0x8000051c]:sd a1, 128(sp)<br>      |
|  10|[0x800032a0]<br>0xF80000087EFFFFFE|- rs1 : x30<br> - rs2 : x12<br> - rd : x24<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == -9<br> - rs1_w1_val == -134217729<br> - rs1_w0_val == -16777217<br>                                                                                                                                                                                          |[0x80000544]:KCRSA32 s8, t5, a2<br> [0x80000548]:sd s8, 144(sp)<br>      |
|  11|[0x800032b0]<br>0xF7FFFDFFC0000004|- rs1 : x20<br> - rs2 : x25<br> - rd : x8<br> - rs2_w1_val == -1073741825<br> - rs1_w1_val == -513<br>                                                                                                                                                                                                                                                     |[0x8000056c]:KCRSA32 fp, s4, s9<br> [0x80000570]:sd fp, 160(sp)<br>      |
|  12|[0x800032c0]<br>0xFFFF8010E00001FF|- rs1 : x3<br> - rs2 : x29<br> - rd : x28<br> - rs2_w1_val == -536870913<br> - rs2_w0_val == -17<br> - rs1_w1_val == -32769<br> - rs1_w0_val == 512<br>                                                                                                                                                                                                    |[0x80000594]:KCRSA32 t3, gp, t4<br> [0x80000598]:sd t3, 176(sp)<br>      |
|  13|[0x800032d0]<br>0x00200000FF7FFFFF|- rs1 : x10<br> - rs2 : x0<br> - rd : x18<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == 2097152<br> - rs1_w0_val == -8388609<br>                                                                                                                                                                                                         |[0x800005cc]:KCRSA32 s2, a0, zero<br> [0x800005d0]:sd s2, 192(sp)<br>    |
|  14|[0x800032e0]<br>0x00040001F80001FF|- rs1 : x24<br> - rs2 : x19<br> - rd : x27<br> - rs2_w1_val == -134217729<br> - rs2_w0_val == -262145<br> - rs1_w1_val == 0<br>                                                                                                                                                                                                                            |[0x800005f0]:KCRSA32 s11, s8, s3<br> [0x800005f4]:sd s11, 208(sp)<br>    |
|  15|[0x800032f0]<br>0xFFFFFBFEFBFFFFF8|- rs1 : x2<br> - rs2 : x28<br> - rd : x20<br> - rs2_w1_val == -67108865<br> - rs2_w0_val == 1024<br> - rs1_w1_val == -2<br>                                                                                                                                                                                                                                |[0x80000620]:KCRSA32 s4, sp, t3<br> [0x80000624]:sd s4, 0(a1)<br>        |
|  16|[0x80003300]<br>0xFFFC0008077FFFFF|- rs1 : x7<br> - rs2 : x10<br> - rd : x19<br> - rs2_w1_val == -8388609<br> - rs1_w1_val == -262145<br>                                                                                                                                                                                                                                                     |[0x80000644]:KCRSA32 s3, t2, a0<br> [0x80000648]:sd s3, 16(a1)<br>       |
|  17|[0x80003310]<br>0xEEFFFFFFFFC00002|- rs1 : x23<br> - rs2 : x4<br> - rd : x26<br> - rs2_w1_val == -4194305<br> - rs2_w0_val == 268435456<br> - rs1_w1_val == -16777217<br>                                                                                                                                                                                                                     |[0x8000066c]:KCRSA32 s10, s7, tp<br> [0x80000670]:sd s10, 32(a1)<br>     |
|  18|[0x80003320]<br>0xF0000000FFDFFFFF|- rs1 : x0<br> - rs2 : x23<br> - rd : x17<br> - rs2_w1_val == -2097153<br> - rs1_w0_val == 0<br>                                                                                                                                                                                                                                                           |[0x80000690]:KCRSA32 a7, zero, s7<br> [0x80000694]:sd a7, 48(a1)<br>     |
|  19|[0x80003330]<br>0xFFFFF002FFF00006|- rs1 : x1<br> - rs2 : x7<br> - rd : x16<br> - rs2_w1_val == -1048577<br> - rs2_w0_val == 4096<br> - rs1_w1_val == 2<br>                                                                                                                                                                                                                                   |[0x800006bc]:KCRSA32 a6, ra, t2<br> [0x800006c0]:sd a6, 64(a1)<br>       |
|  20|[0x80003340]<br>0x0400400180000000|- rs1 : x22<br> - rs2 : x16<br> - rd : x30<br> - rs1_w0_val == -2147483648<br> - rs2_w1_val == -262145<br> - rs2_w0_val == -67108865<br> - rs1_w1_val == 16384<br>                                                                                                                                                                                         |[0x800006e4]:KCRSA32 t5, s6, a6<br> [0x800006e8]:sd t5, 80(a1)<br>       |
|  21|[0x80003350]<br>0xAAAA6AAAFFFEBFFE|- rs1 : x17<br> - rs2 : x18<br> - rd : x3<br> - rs2_w1_val == -65537<br> - rs2_w0_val == 16384<br> - rs1_w1_val == -1431655766<br> - rs1_w0_val == -16385<br>                                                                                                                                                                                              |[0x8000071c]:KCRSA32 gp, a7, s2<br> [0x80000720]:sd gp, 96(a1)<br>       |
|  22|[0x80003360]<br>0xF0020000FFFEFFFE|- rs1 : x6<br> - rs2 : x30<br> - rd : x25<br> - rs2_w1_val == -32769<br> - rs1_w1_val == 131072<br> - rs1_w0_val == -32769<br>                                                                                                                                                                                                                             |[0x8000074c]:KCRSA32 s9, t1, t5<br> [0x80000750]:sd s9, 112(a1)<br>      |
|  23|[0x80003370]<br>0x00400005FFFFCFFF|- rs1 : x21<br> - rs2 : x2<br> - rd : x4<br> - rs2_w1_val == -16385<br> - rs2_w0_val == -5<br> - rs1_w0_val == 4096<br>                                                                                                                                                                                                                                    |[0x80000774]:KCRSA32 tp, s5, sp<br> [0x80000778]:sd tp, 128(a1)<br>      |
|  24|[0x80003380]<br>0x20400001FEFFDFFE|- rs1 : x4<br> - rs2 : x1<br> - rd : x6<br> - rs2_w1_val == -8193<br> - rs2_w0_val == -4194305<br> - rs1_w1_val == 536870912<br>                                                                                                                                                                                                                           |[0x800007a4]:KCRSA32 t1, tp, ra<br> [0x800007a8]:sd t1, 144(a1)<br>      |
|  25|[0x80003390]<br>0xFDFF7FFFFFFFEFFF|- rs1 : x25<br> - rs2 : x6<br> - rd : x9<br> - rs2_w1_val == -4097<br> - rs2_w0_val == 32768<br>                                                                                                                                                                                                                                                           |[0x800007c8]:KCRSA32 s1, s9, t1<br> [0x800007cc]:sd s1, 160(a1)<br>      |
|  26|[0x800033a0]<br>0x7FFFFFDF07FFF7FF|- rs1 : x19<br> - rs2 : x15<br> - rd : x12<br> - rs2_w1_val == -2049<br> - rs2_w0_val == -2147483648<br> - rs1_w1_val == -33<br>                                                                                                                                                                                                                           |[0x800007e8]:KCRSA32 a2, s3, a5<br> [0x800007ec]:sd a2, 176(a1)<br>      |
|  27|[0x800033b0]<br>0xFE000020FFFFFBDE|- rs1 : x12<br> - rs2 : x22<br> - rd : x7<br> - rs2_w1_val == -1025<br> - rs2_w0_val == -33<br> - rs1_w0_val == -33<br>                                                                                                                                                                                                                                    |[0x8000080c]:KCRSA32 t2, a2, s6<br> [0x80000810]:sd t2, 192(a1)<br>      |
|  28|[0x800033c0]<br>0xA6AAAAAA000001FF|- rs1 : x5<br> - rs2 : x8<br> - rd : x21<br> - rs2_w1_val == -513<br> - rs2_w0_val == 67108864<br> - rs1_w0_val == 1024<br>                                                                                                                                                                                                                                |[0x80000834]:KCRSA32 s5, t0, fp<br> [0x80000838]:sd s5, 208(a1)<br>      |
|  29|[0x800033d0]<br>0x03FFFFE0FFFFFF03|- rs1 : x8<br> - rs2 : x31<br> - rd : x2<br> - rs2_w1_val == -257<br> - rs1_w0_val == 4<br>                                                                                                                                                                                                                                                                |[0x8000085c]:KCRSA32 sp, fp, t6<br> [0x80000860]:sd sp, 224(a1)<br>      |
|  30|[0x800033e0]<br>0x0000000000000000|- rs1 : x26<br> - rs2 : x24<br> - rd : x0<br> - rs2_w1_val == -129<br> - rs2_w0_val == 1431655765<br> - rs1_w1_val == 64<br>                                                                                                                                                                                                                               |[0x80000884]:KCRSA32 zero, s10, s8<br> [0x80000888]:sd zero, 240(a1)<br> |
|  31|[0x800033f0]<br>0x02000401FF7FFFBE|- rs1 : x18<br> - rs2 : x9<br> - rd : x31<br> - rs2_w1_val == -65<br> - rs2_w0_val == -33554433<br> - rs1_w1_val == 1024<br>                                                                                                                                                                                                                               |[0x800008b0]:KCRSA32 t6, s2, s1<br> [0x800008b4]:sd t6, 256(a1)<br>      |
|  32|[0x80003400]<br>0xFFFFFF5F0003FFDF|- rs1 : x28<br> - rs2 : x20<br> - rd : x5<br> - rs2_w1_val == -33<br> - rs1_w1_val == -129<br> - rs1_w0_val == 262144<br>                                                                                                                                                                                                                                  |[0x800008d4]:KCRSA32 t0, t3, s4<br> [0x800008d8]:sd t0, 272(a1)<br>      |
|  33|[0x80003410]<br>0x080000043FFFFFEE|- rs2_w1_val == -17<br>                                                                                                                                                                                                                                                                                                                                    |[0x800008fc]:KCRSA32 t6, t5, t4<br> [0x80000900]:sd t6, 288(a1)<br>      |
|  34|[0x80003420]<br>0xFC800000FF7FFFF6|- rs2_w1_val == -9<br> - rs1_w1_val == 8388608<br>                                                                                                                                                                                                                                                                                                         |[0x8000092c]:KCRSA32 t6, t5, t4<br> [0x80000930]:sd t6, 0(ra)<br>        |
|  35|[0x80003430]<br>0xFFFFBDFF0000001B|- rs2_w1_val == -5<br> - rs2_w0_val == 512<br> - rs1_w1_val == -16385<br>                                                                                                                                                                                                                                                                                  |[0x80000954]:KCRSA32 t6, t5, t4<br> [0x80000958]:sd t6, 16(ra)<br>       |
|  36|[0x80003440]<br>0xFFFBFF7FFFFFFFDC|- rs2_w1_val == -3<br> - rs2_w0_val == 128<br>                                                                                                                                                                                                                                                                                                             |[0x80000978]:KCRSA32 t6, t5, t4<br> [0x8000097c]:sd t6, 32(ra)<br>       |
|  37|[0x80003450]<br>0x000C00010003FFFE|- rs2_w1_val == -2<br> - rs2_w0_val == -524289<br> - rs1_w1_val == 262144<br>                                                                                                                                                                                                                                                                              |[0x800009a4]:KCRSA32 t6, t5, t4<br> [0x800009a8]:sd t6, 48(ra)<br>       |
|  38|[0x80003460]<br>0x0000100280000000|- rs2_w1_val == -2147483648<br> - rs2_w0_val == -2<br> - rs1_w1_val == 4096<br>                                                                                                                                                                                                                                                                            |[0x800009d0]:KCRSA32 t6, t5, t4<br> [0x800009d4]:sd t6, 64(ra)<br>       |
|  39|[0x80003470]<br>0xFFDFDFFF41000000|- rs2_w1_val == 1073741824<br> - rs2_w0_val == 8192<br> - rs1_w1_val == -2097153<br> - rs1_w0_val == 16777216<br>                                                                                                                                                                                                                                          |[0x800009f8]:KCRSA32 t6, t5, t4<br> [0x800009fc]:sd t6, 80(ra)<br>       |
|  40|[0x80003480]<br>0x00003FFD20080000|- rs2_w1_val == 536870912<br> - rs2_w0_val == -16385<br> - rs1_w0_val == 524288<br>                                                                                                                                                                                                                                                                        |[0x80000a28]:KCRSA32 t6, t5, t4<br> [0x80000a2c]:sd t6, 96(ra)<br>       |
|  41|[0x80003490]<br>0x0C0000000FBFFFFF|- rs2_w1_val == 268435456<br> - rs2_w0_val == -268435457<br> - rs1_w0_val == -4194305<br>                                                                                                                                                                                                                                                                  |[0x80000a5c]:KCRSA32 t6, t5, t4<br> [0x80000a60]:sd t6, 112(ra)<br>      |
|  42|[0x800034a0]<br>0x3DFFFFFF07FEFFFF|- rs2_w1_val == 134217728<br> - rs1_w0_val == -65537<br>                                                                                                                                                                                                                                                                                                   |[0x80000a88]:KCRSA32 t6, t5, t4<br> [0x80000a8c]:sd t6, 128(ra)<br>      |
|  43|[0x800034b0]<br>0xFFFFFFD0FBFFFFFF|- rs2_w1_val == 67108864<br> - rs2_w0_val == 64<br> - rs1_w1_val == 16<br> - rs1_w0_val == -134217729<br>                                                                                                                                                                                                                                                  |[0x80000aac]:KCRSA32 t6, t5, t4<br> [0x80000ab0]:sd t6, 144(ra)<br>      |
|  44|[0x800034c0]<br>0xE000000301F7FFFF|- rs2_w1_val == 33554432<br> - rs1_w0_val == -524289<br>                                                                                                                                                                                                                                                                                                   |[0x80000adc]:KCRSA32 t6, t5, t4<br> [0x80000ae0]:sd t6, 160(ra)<br>      |
|  45|[0x800034d0]<br>0x0000000001000400|- rs2_w1_val == 16777216<br>                                                                                                                                                                                                                                                                                                                               |[0x80000b04]:KCRSA32 t6, t5, t4<br> [0x80000b08]:sd t6, 176(ra)<br>      |
|  46|[0x800034e0]<br>0x0000040A10800000|- rs2_w1_val == 8388608<br> - rs1_w0_val == 268435456<br>                                                                                                                                                                                                                                                                                                  |[0x80000b2c]:KCRSA32 t6, t5, t4<br> [0x80000b30]:sd t6, 192(ra)<br>      |
|  47|[0x800034f0]<br>0x000003FBF81FFFFF|- rs2_w1_val == 2097152<br> - rs2_w0_val == -1025<br>                                                                                                                                                                                                                                                                                                      |[0x80000b54]:KCRSA32 t6, t5, t4<br> [0x80000b58]:sd t6, 208(ra)<br>      |
|  48|[0x80003500]<br>0x0200000400100006|- rs2_w1_val == 1048576<br>                                                                                                                                                                                                                                                                                                                                |[0x80000b7c]:KCRSA32 t6, t5, t4<br> [0x80000b80]:sd t6, 224(ra)<br>      |
|  49|[0x80003510]<br>0xFFF7FFF6F807FFFF|- rs2_w1_val == 524288<br> - rs2_w0_val == 524288<br>                                                                                                                                                                                                                                                                                                      |[0x80000ba4]:KCRSA32 t6, t5, t4<br> [0x80000ba8]:sd t6, 240(ra)<br>      |
|  50|[0x80003520]<br>0x0000200A000C0000|- rs2_w1_val == 262144<br> - rs1_w1_val == 8192<br>                                                                                                                                                                                                                                                                                                        |[0x80000bcc]:KCRSA32 t6, t5, t4<br> [0x80000bd0]:sd t6, 256(ra)<br>      |
|  51|[0x80003530]<br>0x7FFFFFFFF801FFFF|- rs2_w1_val == 131072<br> - rs1_w1_val == 524288<br>                                                                                                                                                                                                                                                                                                      |[0x80000bf4]:KCRSA32 t6, t5, t4<br> [0x80000bf8]:sd t6, 272(ra)<br>      |
|  52|[0x80003540]<br>0x0000070000030000|- rs2_w1_val == 65536<br> - rs2_w0_val == -2049<br> - rs1_w1_val == -257<br>                                                                                                                                                                                                                                                                               |[0x80000c24]:KCRSA32 t6, t5, t4<br> [0x80000c28]:sd t6, 288(ra)<br>      |
|  53|[0x80003550]<br>0x00008000003FEFFF|- rs1_w1_val == 32768<br> - rs1_w0_val == 4194304<br>                                                                                                                                                                                                                                                                                                      |[0x80000c48]:KCRSA32 t6, t5, t4<br> [0x80000c4c]:sd t6, 304(ra)<br>      |
|  54|[0x80003560]<br>0xFBFDFFFF000FFEFF|- rs2_w0_val == 131072<br> - rs1_w0_val == 1048576<br>                                                                                                                                                                                                                                                                                                     |[0x80000c74]:KCRSA32 t6, t5, t4<br> [0x80000c78]:sd t6, 320(ra)<br>      |
|  55|[0x80003570]<br>0x5555554F00410000|- rs1_w1_val == 1431655765<br> - rs1_w0_val == 65536<br>                                                                                                                                                                                                                                                                                                   |[0x80000ca0]:KCRSA32 t6, t5, t4<br> [0x80000ca4]:sd t6, 336(ra)<br>      |
|  56|[0x80003580]<br>0x80000005FF007FFF|- rs2_w0_val == 2147483647<br> - rs1_w1_val == 4<br> - rs1_w0_val == 32768<br>                                                                                                                                                                                                                                                                             |[0x80000cc8]:KCRSA32 t6, t5, t4<br> [0x80000ccc]:sd t6, 352(ra)<br>      |
|  57|[0x80003590]<br>0xBFFFFFF955559555|- rs1_w0_val == 16384<br>                                                                                                                                                                                                                                                                                                                                  |[0x80000cf4]:KCRSA32 t6, t5, t4<br> [0x80000cf8]:sd t6, 368(ra)<br>      |
|  58|[0x800035a0]<br>0x0FFFFFFA00002020|- rs2_w1_val == 32<br> - rs1_w0_val == 8192<br>                                                                                                                                                                                                                                                                                                            |[0x80000d18]:KCRSA32 t6, t5, t4<br> [0x80000d1c]:sd t6, 384(ra)<br>      |
|  59|[0x800035b0]<br>0x00100007000007DF|- rs1_w1_val == 1048576<br> - rs1_w0_val == 2048<br>                                                                                                                                                                                                                                                                                                       |[0x80000d44]:KCRSA32 t6, t5, t4<br> [0x80000d48]:sd t6, 400(ra)<br>      |
|  60|[0x800035c0]<br>0xFFFFE08000000101|- rs2_w1_val == 1<br> - rs2_w0_val == -129<br> - rs1_w1_val == -8193<br> - rs1_w0_val == 256<br>                                                                                                                                                                                                                                                           |[0x80000d6c]:KCRSA32 t6, t5, t4<br> [0x80000d70]:sd t6, 416(ra)<br>      |
|  61|[0x800035d0]<br>0xFFFFEFFB00008080|- rs2_w1_val == 32768<br> - rs2_w0_val == 4<br> - rs1_w1_val == -4097<br> - rs1_w0_val == 128<br>                                                                                                                                                                                                                                                          |[0x80000d94]:KCRSA32 t6, t5, t4<br> [0x80000d98]:sd t6, 432(ra)<br>      |
|  62|[0x800035e0]<br>0x7FFFFFF700000240|- rs2_w1_val == 512<br> - rs2_w0_val == 8<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == 64<br>                                                                                                                                                                                                                                                        |[0x80000dbc]:KCRSA32 t6, t5, t4<br> [0x80000dc0]:sd t6, 448(ra)<br>      |
|  63|[0x800035f0]<br>0x20400001FFF0000F|- rs2_w0_val == -536870913<br> - rs1_w0_val == 16<br>                                                                                                                                                                                                                                                                                                      |[0x80000de4]:KCRSA32 t6, t5, t4<br> [0x80000de8]:sd t6, 464(ra)<br>      |
|  64|[0x80003600]<br>0x0020000300000408|- rs2_w1_val == 1024<br> - rs2_w0_val == -3<br> - rs1_w0_val == 8<br>                                                                                                                                                                                                                                                                                      |[0x80000e08]:KCRSA32 t6, t5, t4<br> [0x80000e0c]:sd t6, 480(ra)<br>      |
|  65|[0x80003610]<br>0xFB7FFFFFE0000001|- rs1_w1_val == -8388609<br> - rs1_w0_val == 2<br>                                                                                                                                                                                                                                                                                                         |[0x80000e34]:KCRSA32 t6, t5, t4<br> [0x80000e38]:sd t6, 496(ra)<br>      |
|  66|[0x80003620]<br>0xAAA2AAAAFFFFFFF7|- rs1_w1_val == -524289<br> - rs1_w0_val == 1<br>                                                                                                                                                                                                                                                                                                          |[0x80000e60]:KCRSA32 t6, t5, t4<br> [0x80000e64]:sd t6, 512(ra)<br>      |
|  67|[0x80003630]<br>0x0420000140004000|- rs2_w1_val == 16384<br> - rs2_w0_val == -2097153<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == 1073741824<br>                                                                                                                                                                                                                                         |[0x80000e88]:KCRSA32 t6, t5, t4<br> [0x80000e8c]:sd t6, 528(ra)<br>      |
|  68|[0x80003640]<br>0x00002003FE001FFF|- rs2_w1_val == 8192<br> - rs2_w0_val == -8193<br> - rs1_w0_val == -33554433<br>                                                                                                                                                                                                                                                                           |[0x80000eb8]:KCRSA32 t6, t5, t4<br> [0x80000ebc]:sd t6, 544(ra)<br>      |
|  69|[0x80003650]<br>0xFFFFDFFD000007FC|- rs2_w1_val == 2048<br> - rs1_w1_val == -3<br>                                                                                                                                                                                                                                                                                                            |[0x80000edc]:KCRSA32 t6, t5, t4<br> [0x80000ee0]:sd t6, 560(ra)<br>      |
|  70|[0x80003660]<br>0x000000A100010100|- rs2_w1_val == 256<br> - rs1_w1_val == 32<br>                                                                                                                                                                                                                                                                                                             |[0x80000f00]:KCRSA32 t6, t5, t4<br> [0x80000f04]:sd t6, 576(ra)<br>      |
|  71|[0x80003670]<br>0xFF08000000004080|- rs2_w1_val == 128<br> - rs2_w0_val == 16777216<br>                                                                                                                                                                                                                                                                                                       |[0x80000f28]:KCRSA32 t6, t5, t4<br> [0x80000f2c]:sd t6, 592(ra)<br>      |
|  72|[0x80003680]<br>0xC0100001FFFE003F|- rs2_w1_val == 64<br> - rs2_w0_val == -1048577<br> - rs1_w0_val == -131073<br>                                                                                                                                                                                                                                                                            |[0x80000f5c]:KCRSA32 t6, t5, t4<br> [0x80000f60]:sd t6, 608(ra)<br>      |
|  73|[0x80003690]<br>0xDDFFFFFFFFFFFF0F|- rs2_w1_val == 16<br> - rs1_w0_val == -257<br>                                                                                                                                                                                                                                                                                                            |[0x80000f80]:KCRSA32 t6, t5, t4<br> [0x80000f84]:sd t6, 624(ra)<br>      |
|  74|[0x800036a0]<br>0xCAAAAAABFFFFE007|- rs2_w1_val == 8<br> - rs1_w0_val == -8193<br>                                                                                                                                                                                                                                                                                                            |[0x80000fb0]:KCRSA32 t6, t5, t4<br> [0x80000fb4]:sd t6, 640(ra)<br>      |
|  75|[0x800036b0]<br>0xFFFFFF7EFFFFFE03|- rs2_w1_val == 4<br> - rs1_w0_val == -513<br>                                                                                                                                                                                                                                                                                                             |[0x80000fd4]:KCRSA32 t6, t5, t4<br> [0x80000fd8]:sd t6, 656(ra)<br>      |
|  76|[0x800036c0]<br>0xFFFFFFC7FFFFFFFB|- rs2_w1_val == 2<br> - rs1_w1_val == -65<br>                                                                                                                                                                                                                                                                                                              |[0x80000ff8]:KCRSA32 t6, t5, t4<br> [0x80000ffc]:sd t6, 672(ra)<br>      |
|  77|[0x800036e0]<br>0xFFFC004000007FDF|- rs2_w0_val == 262144<br>                                                                                                                                                                                                                                                                                                                                 |[0x8000103c]:KCRSA32 t6, t5, t4<br> [0x80001040]:sd t6, 704(ra)<br>      |
|  78|[0x800036f0]<br>0xFFFF0006F8000008|- rs2_w0_val == 65536<br>                                                                                                                                                                                                                                                                                                                                  |[0x80001068]:KCRSA32 t6, t5, t4<br> [0x8000106c]:sd t6, 720(ra)<br>      |
|  79|[0x80003700]<br>0x0000080000040004|- rs2_w0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001094]:KCRSA32 t6, t5, t4<br> [0x80001098]:sd t6, 736(ra)<br>      |
|  80|[0x80003710]<br>0x00000000FC000006|- rs2_w0_val == 16<br> - rs1_w0_val == -67108865<br>                                                                                                                                                                                                                                                                                                       |[0x800010b8]:KCRSA32 t6, t5, t4<br> [0x800010bc]:sd t6, 752(ra)<br>      |
|  81|[0x80003720]<br>0xFFFFFFFAFFFFFFFE|- rs2_w0_val == 2<br>                                                                                                                                                                                                                                                                                                                                      |[0x800010dc]:KCRSA32 t6, t5, t4<br> [0x800010e0]:sd t6, 768(ra)<br>      |
|  82|[0x80003730]<br>0xFFFFFEFEFFFF8008|- rs2_w0_val == 1<br>                                                                                                                                                                                                                                                                                                                                      |[0x80001104]:KCRSA32 t6, t5, t4<br> [0x80001108]:sd t6, 784(ra)<br>      |
|  83|[0x80003740]<br>0xFFFFC0001FFFF7FF|- rs2_w0_val == -1<br> - rs1_w0_val == 536870912<br>                                                                                                                                                                                                                                                                                                       |[0x80001128]:KCRSA32 t6, t5, t4<br> [0x8000112c]:sd t6, 800(ra)<br>      |
|  84|[0x80003750]<br>0xC004000055655555|- rs1_w1_val == -1073741825<br>                                                                                                                                                                                                                                                                                                                            |[0x80001160]:KCRSA32 t6, t5, t4<br> [0x80001164]:sd t6, 816(ra)<br>      |
|  85|[0x80003760]<br>0xF0000010FFFFFFDE|- rs1_w1_val == -268435457<br> - rs1_w0_val == -17<br>                                                                                                                                                                                                                                                                                                     |[0x80001184]:KCRSA32 t6, t5, t4<br> [0x80001188]:sd t6, 832(ra)<br>      |
|  86|[0x80003770]<br>0xFFBFFFFB00000002|- rs1_w1_val == -4194305<br>                                                                                                                                                                                                                                                                                                                               |[0x800011ac]:KCRSA32 t6, t5, t4<br> [0x800011b0]:sd t6, 848(ra)<br>      |
|  87|[0x80003780]<br>0x00F00000FF800005|- rs2_w0_val == -16777217<br> - rs1_w1_val == -1048577<br>                                                                                                                                                                                                                                                                                                 |[0x800011d4]:KCRSA32 t6, t5, t4<br> [0x800011d8]:sd t6, 864(ra)<br>      |
|  88|[0x80003790]<br>0xFFFEFFF601000000|- rs1_w1_val == -65537<br>                                                                                                                                                                                                                                                                                                                                 |[0x800011f8]:KCRSA32 t6, t5, t4<br> [0x800011fc]:sd t6, 880(ra)<br>      |
|  89|[0x800037a0]<br>0xFFFFD7FFDF7FFFFE|- rs1_w1_val == -2049<br> - rs1_w0_val == -536870913<br>                                                                                                                                                                                                                                                                                                   |[0x80001228]:KCRSA32 t6, t5, t4<br> [0x8000122c]:sd t6, 896(ra)<br>      |
|  90|[0x800037b0]<br>0x000FFC00FFFF7FFA|- rs1_w1_val == -1025<br>                                                                                                                                                                                                                                                                                                                                  |[0x80001254]:KCRSA32 t6, t5, t4<br> [0x80001258]:sd t6, 912(ra)<br>      |
|  91|[0x800037c0]<br>0x000007F0FC1FFFFF|- rs1_w1_val == -17<br>                                                                                                                                                                                                                                                                                                                                    |[0x80001284]:KCRSA32 t6, t5, t4<br> [0x80001288]:sd t6, 928(ra)<br>      |
|  92|[0x800037d0]<br>0xFFFFFDF7FFFFFEF5|- rs1_w1_val == -9<br>                                                                                                                                                                                                                                                                                                                                     |[0x800012a8]:KCRSA32 t6, t5, t4<br> [0x800012ac]:sd t6, 944(ra)<br>      |
|  93|[0x800037e0]<br>0xFFFFFFFD02FFFFFF|- rs1_w1_val == -5<br>                                                                                                                                                                                                                                                                                                                                     |[0x800012d0]:KCRSA32 t6, t5, t4<br> [0x800012d4]:sd t6, 960(ra)<br>      |
|  94|[0x800037f0]<br>0x3E000000F0000003|- rs1_w1_val == 1073741824<br> - rs1_w0_val == -268435457<br>                                                                                                                                                                                                                                                                                              |[0x800012f8]:KCRSA32 t6, t5, t4<br> [0x800012fc]:sd t6, 976(ra)<br>      |
|  95|[0x80003800]<br>0x1000000A000001BF|- rs1_w1_val == 268435456<br> - rs1_w0_val == -65<br>                                                                                                                                                                                                                                                                                                      |[0x80001320]:KCRSA32 t6, t5, t4<br> [0x80001324]:sd t6, 992(ra)<br>      |
|  96|[0x80003810]<br>0x00FFFFFF00007FF8|- rs1_w1_val == 16777216<br>                                                                                                                                                                                                                                                                                                                               |[0x80001348]:KCRSA32 t6, t5, t4<br> [0x8000134c]:sd t6, 1008(ra)<br>     |
|  97|[0x80003820]<br>0x0000FFFD007EFFFF|- rs1_w1_val == 65536<br>                                                                                                                                                                                                                                                                                                                                  |[0x80001378]:KCRSA32 t6, t5, t4<br> [0x8000137c]:sd t6, 1024(ra)<br>     |
|  98|[0x80003830]<br>0x000007FC1FFFFFBF|- rs1_w1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                   |[0x800013a0]:KCRSA32 t6, t5, t4<br> [0x800013a4]:sd t6, 1040(ra)<br>     |
|  99|[0x80003840]<br>0x04000201001FFFF6|- rs1_w1_val == 512<br>                                                                                                                                                                                                                                                                                                                                    |[0x800013c8]:KCRSA32 t6, t5, t4<br> [0x800013cc]:sd t6, 1056(ra)<br>     |
| 100|[0x80003850]<br>0x000000F0FF800000|- rs1_w1_val == 256<br>                                                                                                                                                                                                                                                                                                                                    |[0x800013f0]:KCRSA32 t6, t5, t4<br> [0x800013f4]:sd t6, 1072(ra)<br>     |
| 101|[0x80003860]<br>0x0000007E00100008|- rs1_w1_val == 128<br>                                                                                                                                                                                                                                                                                                                                    |[0x80001414]:KCRSA32 t6, t5, t4<br> [0x80001418]:sd t6, 1088(ra)<br>     |
| 102|[0x80003870]<br>0x00FFF0001FFFFFFF|- rs2_w1_val == -1<br>                                                                                                                                                                                                                                                                                                                                     |[0x80001434]:KCRSA32 t6, t5, t4<br> [0x80001438]:sd t6, 1104(ra)<br>     |
| 103|[0x80003880]<br>0x40020001F8000001|- rs2_w0_val == -1073741825<br>                                                                                                                                                                                                                                                                                                                            |[0x8000145c]:KCRSA32 t6, t5, t4<br> [0x80001460]:sd t6, 1120(ra)<br>     |
| 104|[0x80003890]<br>0x0000100240100000|- rs2_w0_val == -4097<br> - rs1_w1_val == 1<br>                                                                                                                                                                                                                                                                                                            |[0x8000148c]:KCRSA32 t6, t5, t4<br> [0x80001490]:sd t6, 1136(ra)<br>     |
| 105|[0x800038a0]<br>0x07FFFE00FFF80FFF|- rs2_w0_val == -134217729<br>                                                                                                                                                                                                                                                                                                                             |[0x800014b8]:KCRSA32 t6, t5, t4<br> [0x800014bc]:sd t6, 1152(ra)<br>     |
| 106|[0x800038b0]<br>0x00000006FFFFF7FE|- rs1_w1_val == -1<br>                                                                                                                                                                                                                                                                                                                                     |[0x800014d4]:KCRSA32 t6, t5, t4<br> [0x800014d8]:sd t6, 1168(ra)<br>     |
| 107|[0x800038c0]<br>0x01FFFFF7AA6AAAA9|- rs1_w0_val == -1431655766<br>                                                                                                                                                                                                                                                                                                                            |[0x8000150c]:KCRSA32 t6, t5, t4<br> [0x80001510]:sd t6, 1184(ra)<br>     |
| 108|[0x800038d0]<br>0xFFFFEFEF55595555|- rs1_w0_val == 1431655765<br>                                                                                                                                                                                                                                                                                                                             |[0x80001538]:KCRSA32 t6, t5, t4<br> [0x8000153c]:sd t6, 1200(ra)<br>     |
| 109|[0x800038e0]<br>0x007FFFFFFFFBFFFA|- rs2_w0_val == -8388609<br>                                                                                                                                                                                                                                                                                                                               |[0x80001564]:KCRSA32 t6, t5, t4<br> [0x80001568]:sd t6, 1216(ra)<br>     |
| 110|[0x800038f0]<br>0xFFF000407FDFFFFE|- rs2_w0_val == -65<br> - rs1_w0_val == 2147483647<br>                                                                                                                                                                                                                                                                                                     |[0x8000158c]:KCRSA32 t6, t5, t4<br> [0x80001590]:sd t6, 1232(ra)<br>     |
| 111|[0x80003900]<br>0xFFFF0800C000000F|- rs1_w0_val == -1073741825<br>                                                                                                                                                                                                                                                                                                                            |[0x800015b4]:KCRSA32 t6, t5, t4<br> [0x800015b8]:sd t6, 1248(ra)<br>     |
| 112|[0x80003910]<br>0x0001FFFE7FFFFFFF|- rs2_w0_val == -131073<br>                                                                                                                                                                                                                                                                                                                                |[0x800015e0]:KCRSA32 t6, t5, t4<br> [0x800015e4]:sd t6, 1264(ra)<br>     |
| 113|[0x80003920]<br>0xFE008000FEFFEFFE|- rs2_w0_val == -32769<br> - rs1_w0_val == -4097<br>                                                                                                                                                                                                                                                                                                       |[0x80001614]:KCRSA32 t6, t5, t4<br> [0x80001618]:sd t6, 1280(ra)<br>     |
| 114|[0x80003930]<br>0xFC000004FEDFFFFE|- rs1_w0_val == -2097153<br>                                                                                                                                                                                                                                                                                                                               |[0x8000163c]:KCRSA32 t6, t5, t4<br> [0x80001640]:sd t6, 1296(ra)<br>     |
| 115|[0x80003940]<br>0xFFFFFF7FDFEFFFFE|- rs1_w0_val == -1048577<br>                                                                                                                                                                                                                                                                                                                               |[0x80001668]:KCRSA32 t6, t5, t4<br> [0x8000166c]:sd t6, 1312(ra)<br>     |
| 116|[0x80003950]<br>0xC000020100017FFF|- rs2_w0_val == -513<br>                                                                                                                                                                                                                                                                                                                                   |[0x8000169c]:KCRSA32 t6, t5, t4<br> [0x800016a0]:sd t6, 1328(ra)<br>     |
| 117|[0x80003960]<br>0x7FFFFFFF00000107|- rs2_w0_val == -257<br>                                                                                                                                                                                                                                                                                                                                   |[0x800016c4]:KCRSA32 t6, t5, t4<br> [0x800016c8]:sd t6, 1344(ra)<br>     |
| 118|[0x80003970]<br>0xBFFFFF0000FFF7FF|- rs1_w0_val == -2049<br>                                                                                                                                                                                                                                                                                                                                  |[0x800016f4]:KCRSA32 t6, t5, t4<br> [0x800016f8]:sd t6, 1360(ra)<br>     |
| 119|[0x80003980]<br>0xFFFFFDF6FF7FFF7E|- rs1_w0_val == -129<br>                                                                                                                                                                                                                                                                                                                                   |[0x8000171c]:KCRSA32 t6, t5, t4<br> [0x80001720]:sd t6, 1376(ra)<br>     |
| 120|[0x80003990]<br>0xE0000007FF9FFFFE|- rs2_w0_val == 536870912<br>                                                                                                                                                                                                                                                                                                                              |[0x80001744]:KCRSA32 t6, t5, t4<br> [0x80001748]:sd t6, 1392(ra)<br>     |
| 121|[0x800039a0]<br>0x00000FFCFFEFFFF6|- rs1_w0_val == -9<br>                                                                                                                                                                                                                                                                                                                                     |[0x80001770]:KCRSA32 t6, t5, t4<br> [0x80001774]:sd t6, 1408(ra)<br>     |
| 122|[0x800039b0]<br>0xFFFDEFFF00FFFFFB|- rs1_w0_val == -5<br>                                                                                                                                                                                                                                                                                                                                     |[0x80001798]:KCRSA32 t6, t5, t4<br> [0x8000179c]:sd t6, 1424(ra)<br>     |
| 123|[0x800039c0]<br>0x4000000703FFFFFD|- rs1_w0_val == -3<br>                                                                                                                                                                                                                                                                                                                                     |[0x800017c0]:KCRSA32 t6, t5, t4<br> [0x800017c4]:sd t6, 1440(ra)<br>     |
| 124|[0x800039d0]<br>0xFFC00000FDFFFFFD|- rs2_w0_val == 4194304<br> - rs1_w0_val == -2<br>                                                                                                                                                                                                                                                                                                         |[0x800017e8]:KCRSA32 t6, t5, t4<br> [0x800017ec]:sd t6, 1456(ra)<br>     |
| 125|[0x800039e0]<br>0x0F80000000000009|- rs2_w0_val == 8388608<br>                                                                                                                                                                                                                                                                                                                                |[0x80001808]:KCRSA32 t6, t5, t4<br> [0x8000180c]:sd t6, 1472(ra)<br>     |
| 126|[0x800039f0]<br>0xFFDFEFFF01000002|- rs2_w0_val == 2097152<br>                                                                                                                                                                                                                                                                                                                                |[0x80001834]:KCRSA32 t6, t5, t4<br> [0x80001838]:sd t6, 1488(ra)<br>     |
| 127|[0x80003a00]<br>0xFDEFFFFF07FFDFFF|- rs2_w0_val == 1048576<br>                                                                                                                                                                                                                                                                                                                                |[0x80001858]:KCRSA32 t6, t5, t4<br> [0x8000185c]:sd t6, 1504(ra)<br>     |
| 128|[0x80003a10]<br>0x0000010803FFFFFD|- rs1_w0_val == 67108864<br>                                                                                                                                                                                                                                                                                                                               |[0x80001878]:KCRSA32 t6, t5, t4<br> [0x8000187c]:sd t6, 1520(ra)<br>     |
| 129|[0x80003a30]<br>0x800000003DFFFFFE|- rs1_w1_val == -2147483648<br>                                                                                                                                                                                                                                                                                                                            |[0x800018c8]:KCRSA32 t6, t5, t4<br> [0x800018cc]:sd t6, 1552(ra)<br>     |
| 130|[0x80003a40]<br>0x55755556EF7FFFFE|- rs2_w1_val == -268435457<br> - rs2_w0_val == -1431655766<br>                                                                                                                                                                                                                                                                                             |[0x80001900]:KCRSA32 t6, t5, t4<br> [0x80001904]:sd t6, 1568(ra)<br>     |
| 131|[0x80003a50]<br>0xEFFBFFFFFFFFFFFF|- rs1_w0_val == 2097152<br>                                                                                                                                                                                                                                                                                                                                |[0x80001924]:KCRSA32 t6, t5, t4<br> [0x80001928]:sd t6, 1584(ra)<br>     |
