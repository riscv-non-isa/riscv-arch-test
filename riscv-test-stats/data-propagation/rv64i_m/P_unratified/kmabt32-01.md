
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
| SIG_REGION                | [('0x80003210', '0x80003ad0', '280 dwords')]      |
| COV_LABELS                | kmabt32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmabt32-01.S    |
| Total Number of coverpoints| 392     |
| Total Coverpoints Hit     | 386      |
| Total Signature Updates   | 280      |
| STAT1                     | 136      |
| STAT2                     | 4      |
| STAT3                     | 0     |
| STAT4                     | 140     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001214]:KMABT32 t6, t5, t4
      [0x80001218]:sd t6, 1152(ra)
 -- Signature Address: 0x800037a0 Data: 0x01FFC10673E2F569
 -- Redundant Coverpoints hit by the op
      - opcode : kmabt32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val < 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val
      - rs2_w1_val == 1024
      - rs2_w0_val == 0
      - rs1_w1_val == -32769
      - rs1_w0_val == -5




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800015ac]:KMABT32 t6, t5, t4
      [0x800015b0]:sd t6, 1504(ra)
 -- Signature Address: 0x80003900 Data: 0x1754D67C1F7221EA
 -- Redundant Coverpoints hit by the op
      - opcode : kmabt32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == 0
      - rs2_w0_val == 4
      - rs1_w1_val == -2097153
      - rs1_w0_val == 64




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800019d4]:KMABT32 t6, t5, t4
      [0x800019d8]:sd t6, 1920(ra)
 -- Signature Address: 0x80003aa0 Data: 0x1B4CCA00801CC85D
 -- Redundant Coverpoints hit by the op
      - opcode : kmabt32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val < 0 and rs2_w0_val > 0
      - rs2_w1_val == -8193
      - rs2_w0_val == 524288
      - rs1_w1_val == 32
      - rs1_w0_val == -8388609




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001a00]:KMABT32 t6, t5, t4
      [0x80001a04]:sd t6, 1936(ra)
 -- Signature Address: 0x80003ab0 Data: 0x1B8CCA00801CC85D
 -- Redundant Coverpoints hit by the op
      - opcode : kmabt32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val < 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val > 0 and rs2_w0_val < 0
      - rs2_w1_val == 33554432
      - rs2_w0_val == -8193
      - rs1_w1_val == -65
      - rs1_w0_val == 536870912






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmabt32', 'rs1 : x30', 'rs2 : x30', 'rd : x28', 'rs1 == rs2 != rd', 'rs1_w1_val == rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val == rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val < 0']
Last Code Sequence : 
	-[0x800003b8]:KMABT32 t3, t5, t5
	-[0x800003bc]:sd t3, 0(t0)
Current Store : [0x800003c0] : sd t5, 8(t0) -- Store: [0x80003218]:0x00000005FFFFFFF8




Last Coverpoint : ['rs1 : x25', 'rs2 : x25', 'rd : x25', 'rs1 == rs2 == rd', 'rs1_w1_val < 0 and rs2_w1_val < 0', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 2097152', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x800003dc]:KMABT32 s9, s9, s9
	-[0x800003e0]:sd s9, 16(t0)
Current Store : [0x800003e4] : sd s9, 24(t0) -- Store: [0x80003228]:0xFFFFFFF8FF400000




Last Coverpoint : ['rs1 : x3', 'rs2 : x7', 'rd : x6', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val', 'rs2_w1_val == 65536', 'rs2_w0_val == 128', 'rs1_w1_val == -8388609', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000400]:KMABT32 t1, gp, t2
	-[0x80000404]:sd t1, 32(t0)
Current Store : [0x80000408] : sd gp, 40(t0) -- Store: [0x80003238]:0xFF7FFFFF40000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x10', 'rd : x13', 'rs1 == rd != rs2', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs2_w0_val == 256', 'rs1_w1_val == 1048576', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000424]:KMABT32 a3, a3, a0
	-[0x80000428]:sd a3, 48(t0)
Current Store : [0x8000042c] : sd a3, 56(t0) -- Store: [0x80003248]:0x000FFFFFFB800000




Last Coverpoint : ['rs1 : x0', 'rs2 : x20', 'rd : x20', 'rs2 == rd != rs1', 'rs2_w1_val == -8193', 'rs2_w0_val == 524288', 'rs1_w1_val == 0', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x8000044c]:KMABT32 s4, zero, s4
	-[0x80000450]:sd s4, 64(t0)
Current Store : [0x80000454] : sd zero, 72(t0) -- Store: [0x80003258]:0x0000000000000000




Last Coverpoint : ['rs1 : x1', 'rs2 : x21', 'rd : x0', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w1_val == 33554432', 'rs2_w0_val == -8193', 'rs1_w1_val == -65', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000478]:KMABT32 zero, ra, s5
	-[0x8000047c]:sd zero, 80(t0)
Current Store : [0x80000480] : sd ra, 88(t0) -- Store: [0x80003268]:0xFFFFFFBF20000000




Last Coverpoint : ['rs1 : x17', 'rs2 : x9', 'rd : x8', 'rs2_w1_val == -1431655766', 'rs2_w0_val == -513', 'rs1_w1_val == 32', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x800004a0]:KMABT32 fp, a7, s1
	-[0x800004a4]:sd fp, 96(t0)
Current Store : [0x800004a8] : sd a7, 104(t0) -- Store: [0x80003278]:0x00000020EFFFFFFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x26', 'rd : x22', 'rs2_w1_val == 1431655765', 'rs2_w0_val == -67108865', 'rs1_w1_val == 512', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x800004d0]:KMABT32 s6, a0, s10
	-[0x800004d4]:sd s6, 112(t0)
Current Store : [0x800004d8] : sd a0, 120(t0) -- Store: [0x80003288]:0x0000020000000080




Last Coverpoint : ['rs1 : x26', 'rs2 : x24', 'rd : x19', 'rs2_w1_val == 2147483647', 'rs2_w0_val == -536870913', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80000504]:KMABT32 s3, s10, s8
	-[0x80000508]:sd s3, 128(t0)
Current Store : [0x8000050c] : sd s10, 136(t0) -- Store: [0x80003298]:0x3FFFFFFFFFFEFFFF




Last Coverpoint : ['rs1 : x23', 'rs2 : x2', 'rd : x24', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == -1073741825', 'rs2_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000530]:KMABT32 s8, s7, sp
	-[0x80000534]:sd s8, 144(t0)
Current Store : [0x80000538] : sd s7, 152(t0) -- Store: [0x800032a8]:0xC0000000FFFFFFFC




Last Coverpoint : ['rs1 : x28', 'rs2 : x12', 'rd : x14', 'rs2_w1_val == -536870913', 'rs1_w1_val == -134217729', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000560]:KMABT32 a4, t3, a2
	-[0x80000564]:sd a4, 160(t0)
Current Store : [0x80000568] : sd t3, 168(t0) -- Store: [0x800032b8]:0xF7FFFFFF10000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x3', 'rd : x31', 'rs2_w1_val == -268435457', 'rs2_w0_val == -4194305', 'rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x8000058c]:KMABT32 t6, a4, gp
	-[0x80000590]:sd t6, 176(t0)
Current Store : [0x80000594] : sd a4, 184(t0) -- Store: [0x800032c8]:0x2000000000000009




Last Coverpoint : ['rs1 : x24', 'rs2 : x22', 'rd : x17', 'rs2_w1_val == -134217729', 'rs2_w0_val == -2147483648', 'rs1_w1_val == 1431655765', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x800005bc]:KMABT32 a7, s8, s6
	-[0x800005c0]:sd a7, 192(t0)
Current Store : [0x800005c4] : sd s8, 200(t0) -- Store: [0x800032d8]:0x55555555DFFFFFFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x31', 'rd : x4', 'rs2_w1_val == -67108865', 'rs1_w1_val == -262145', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x800005e8]:KMABT32 tp, s2, t6
	-[0x800005ec]:sd tp, 208(t0)
Current Store : [0x800005f0] : sd s2, 216(t0) -- Store: [0x800032e8]:0xFFFBFFFFBFFFFFFF




Last Coverpoint : ['rs1 : x27', 'rs2 : x4', 'rd : x1', 'rs2_w1_val == -33554433', 'rs1_w1_val == -33554433']
Last Code Sequence : 
	-[0x8000060c]:KMABT32 ra, s11, tp
	-[0x80000610]:sd ra, 224(t0)
Current Store : [0x80000614] : sd s11, 232(t0) -- Store: [0x800032f8]:0xFDFFFFFF10000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x1', 'rd : x26', 'rs2_w1_val == -16777217', 'rs1_w1_val == -5', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000634]:KMABT32 s10, s4, ra
	-[0x80000638]:sd s10, 240(t0)
Current Store : [0x8000063c] : sd s4, 248(t0) -- Store: [0x80003308]:0xFFFFFFFB00000010




Last Coverpoint : ['rs1 : x2', 'rs2 : x11', 'rd : x23', 'rs2_w1_val == -8388609', 'rs2_w0_val == -33554433', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80000660]:KMABT32 s7, sp, a1
	-[0x80000664]:sd s7, 256(t0)
Current Store : [0x80000668] : sd sp, 264(t0) -- Store: [0x80003318]:0x00000005FFEFFFFF




Last Coverpoint : ['rs1 : x29', 'rs2 : x8', 'rd : x9', 'rs2_w1_val == -4194305', 'rs2_w0_val == -8388609', 'rs1_w1_val == -65537', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x8000069c]:KMABT32 s1, t4, fp
	-[0x800006a0]:sd s1, 0(ra)
Current Store : [0x800006a4] : sd t4, 8(ra) -- Store: [0x80003328]:0xFFFEFFFFFFFFEFFF




Last Coverpoint : ['rs1 : x8', 'rs2 : x15', 'rd : x5', 'rs2_w1_val == -2097153', 'rs2_w0_val == 64', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x800006c4]:KMABT32 t0, fp, a5
	-[0x800006c8]:sd t0, 16(ra)
Current Store : [0x800006cc] : sd fp, 24(ra) -- Store: [0x80003338]:0xFFFEFFFFFFFFFF7F




Last Coverpoint : ['rs1 : x6', 'rs2 : x17', 'rd : x7', 'rs2_w1_val == -1048577', 'rs2_w0_val == -1025', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x800006ec]:KMABT32 t2, t1, a7
	-[0x800006f0]:sd t2, 32(ra)
Current Store : [0x800006f4] : sd t1, 40(ra) -- Store: [0x80003348]:0x00000009FF7FFFFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x13', 'rd : x12', 'rs2_w1_val == -524289', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000710]:KMABT32 a2, t0, a3
	-[0x80000714]:sd a2, 48(ra)
Current Store : [0x80000718] : sd t0, 56(ra) -- Store: [0x80003358]:0x0000000600400000




Last Coverpoint : ['rs1 : x16', 'rs2 : x28', 'rd : x18', 'rs2_w1_val == -262145', 'rs2_w0_val == -2049', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80000740]:KMABT32 s2, a6, t3
	-[0x80000744]:sd s2, 64(ra)
Current Store : [0x80000748] : sd a6, 72(ra) -- Store: [0x80003368]:0x20000000FFFFFFEF




Last Coverpoint : ['rs1 : x31', 'rs2 : x0', 'rd : x3', 'rs2_w1_val == 0', 'rs2_w0_val == 0', 'rs1_w1_val == -17', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000764]:KMABT32 gp, t6, zero
	-[0x80000768]:sd gp, 80(ra)
Current Store : [0x8000076c] : sd t6, 88(ra) -- Store: [0x80003378]:0xFFFFFFEF00002000




Last Coverpoint : ['rs1 : x7', 'rs2 : x14', 'rd : x30', 'rs2_w1_val == -65537', 'rs1_w1_val == 32768', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80000794]:KMABT32 t5, t2, a4
	-[0x80000798]:sd t5, 96(ra)
Current Store : [0x8000079c] : sd t2, 104(ra) -- Store: [0x80003388]:0x00008000FFFFFFFE




Last Coverpoint : ['rs1 : x19', 'rs2 : x16', 'rd : x15', 'rs2_w1_val == -32769', 'rs2_w0_val == 4194304', 'rs1_w1_val == -4097']
Last Code Sequence : 
	-[0x800007b8]:KMABT32 a5, s3, a6
	-[0x800007bc]:sd a5, 112(ra)
Current Store : [0x800007c0] : sd s3, 120(ra) -- Store: [0x80003398]:0xFFFFEFFF00000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x19', 'rd : x16', 'rs2_w1_val == -16385', 'rs2_w0_val == 2', 'rs1_w1_val == 2048', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x800007e0]:KMABT32 a6, a5, s3
	-[0x800007e4]:sd a6, 128(ra)
Current Store : [0x800007e8] : sd a5, 136(ra) -- Store: [0x800033a8]:0x0000080000000004




Last Coverpoint : ['rs1 : x12', 'rs2 : x29', 'rd : x21', 'rs2_w1_val == -4097', 'rs2_w0_val == 1431655765', 'rs1_w1_val == 256', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000810]:KMABT32 s5, a2, t4
	-[0x80000814]:sd s5, 144(ra)
Current Store : [0x80000818] : sd a2, 152(ra) -- Store: [0x800033b8]:0x00000100FFFFFFF7




Last Coverpoint : ['rs1 : x11', 'rs2 : x27', 'rd : x29', 'rs2_w1_val == -2049', 'rs2_w0_val == -65', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000838]:KMABT32 t4, a1, s11
	-[0x8000083c]:sd t4, 160(ra)
Current Store : [0x80000840] : sd a1, 168(ra) -- Store: [0x800033c8]:0xFFFFFFF855555555




Last Coverpoint : ['rs1 : x22', 'rs2 : x18', 'rd : x27', 'rs1_w0_val == -2147483648', 'rs2_w1_val == -1025', 'rs2_w0_val == 16384']
Last Code Sequence : 
	-[0x80000858]:KMABT32 s11, s6, s2
	-[0x8000085c]:sd s11, 176(ra)
Current Store : [0x80000860] : sd s6, 184(ra) -- Store: [0x800033d8]:0xFFFFFFBF80000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x6', 'rd : x11', 'rs2_w1_val == -513', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x8000087c]:KMABT32 a1, s1, t1
	-[0x80000880]:sd a1, 192(ra)
Current Store : [0x80000884] : sd s1, 200(ra) -- Store: [0x800033e8]:0x00000003FFFFFFFB




Last Coverpoint : ['rs1 : x21', 'rs2 : x5', 'rd : x10', 'rs2_w1_val == -257', 'rs2_w0_val == -32769', 'rs1_w1_val == -16777217']
Last Code Sequence : 
	-[0x800008ac]:KMABT32 a0, s5, t0
	-[0x800008b0]:sd a0, 208(ra)
Current Store : [0x800008b4] : sd s5, 216(ra) -- Store: [0x800033f8]:0xFEFFFFFF00002000




Last Coverpoint : ['rs1 : x4', 'rs2 : x23', 'rd : x2', 'rs2_w1_val == -129', 'rs1_w1_val == -67108865', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x800008d8]:KMABT32 sp, tp, s7
	-[0x800008dc]:sd sp, 224(ra)
Current Store : [0x800008e0] : sd tp, 232(ra) -- Store: [0x80003408]:0xFBFFFFFF00000001




Last Coverpoint : ['rs2_w1_val == -65', 'rs1_w1_val == 16', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80000900]:KMABT32 t6, t5, t4
	-[0x80000904]:sd t6, 240(ra)
Current Store : [0x80000908] : sd t5, 248(ra) -- Store: [0x80003418]:0x00000010FFFDFFFF




Last Coverpoint : ['rs2_w1_val == -33', 'rs1_w1_val == 8192', 'rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80000934]:KMABT32 t6, t5, t4
	-[0x80000938]:sd t6, 256(ra)
Current Store : [0x8000093c] : sd t5, 264(ra) -- Store: [0x80003428]:0x00002000AAAAAAAA




Last Coverpoint : ['rs2_w1_val == -17', 'rs1_w1_val == -524289', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x8000095c]:KMABT32 t6, t5, t4
	-[0x80000960]:sd t6, 272(ra)
Current Store : [0x80000964] : sd t5, 280(ra) -- Store: [0x80003438]:0xFFF7FFFFFFDFFFFF




Last Coverpoint : ['rs2_w1_val == -9', 'rs2_w0_val == -1', 'rs1_w1_val == -2147483648']
Last Code Sequence : 
	-[0x80000984]:KMABT32 t6, t5, t4
	-[0x80000988]:sd t6, 288(ra)
Current Store : [0x8000098c] : sd t5, 296(ra) -- Store: [0x80003448]:0x80000000FFFFFFFB




Last Coverpoint : ['rs2_w1_val == -5']
Last Code Sequence : 
	-[0x800009b0]:KMABT32 t6, t5, t4
	-[0x800009b4]:sd t6, 304(ra)
Current Store : [0x800009b8] : sd t5, 312(ra) -- Store: [0x80003458]:0xFFFEFFFFBFFFFFFF




Last Coverpoint : ['rs2_w1_val == -3', 'rs2_w0_val == 1', 'rs1_w1_val == 2097152', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x800009d4]:KMABT32 t6, t5, t4
	-[0x800009d8]:sd t6, 320(ra)
Current Store : [0x800009dc] : sd t5, 328(ra) -- Store: [0x80003468]:0x0020000000000002




Last Coverpoint : ['rs2_w1_val == -2', 'rs2_w0_val == -33', 'rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x800009fc]:KMABT32 t6, t5, t4
	-[0x80000a00]:sd t6, 336(ra)
Current Store : [0x80000a04] : sd t5, 344(ra) -- Store: [0x80003478]:0x00000010FFFFDFFF




Last Coverpoint : ['rs2_w1_val == -2147483648']
Last Code Sequence : 
	-[0x80000a28]:KMABT32 t6, t5, t4
	-[0x80000a2c]:sd t6, 352(ra)
Current Store : [0x80000a30] : sd t5, 360(ra) -- Store: [0x80003488]:0xFDFFFFFFFFFFFFFE




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs1_w1_val == 8']
Last Code Sequence : 
	-[0x80000a4c]:KMABT32 t6, t5, t4
	-[0x80000a50]:sd t6, 368(ra)
Current Store : [0x80000a54] : sd t5, 376(ra) -- Store: [0x80003498]:0x0000000810000000




Last Coverpoint : ['rs2_w1_val == 536870912', 'rs2_w0_val == 16777216', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000a7c]:KMABT32 t6, t5, t4
	-[0x80000a80]:sd t6, 384(ra)
Current Store : [0x80000a84] : sd t5, 392(ra) -- Store: [0x800034a8]:0x0020000000000800




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80000aa8]:KMABT32 t6, t5, t4
	-[0x80000aac]:sd t6, 400(ra)
Current Store : [0x80000ab0] : sd t5, 408(ra) -- Store: [0x800034b8]:0xFFFFFFFCFFFFBFFF




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs2_w0_val == -17']
Last Code Sequence : 
	-[0x80000ad0]:KMABT32 t6, t5, t4
	-[0x80000ad4]:sd t6, 416(ra)
Current Store : [0x80000ad8] : sd t5, 424(ra) -- Store: [0x800034c8]:0xFFFFFFF9BFFFFFFF




Last Coverpoint : ['rs2_w1_val == 67108864', 'rs2_w0_val == -9', 'rs1_w1_val == -129']
Last Code Sequence : 
	-[0x80000af8]:KMABT32 t6, t5, t4
	-[0x80000afc]:sd t6, 432(ra)
Current Store : [0x80000b00] : sd t5, 440(ra) -- Store: [0x800034d8]:0xFFFFFF7F00800000




Last Coverpoint : ['rs2_w1_val == 16777216', 'rs1_w1_val == -1048577']
Last Code Sequence : 
	-[0x80000b20]:KMABT32 t6, t5, t4
	-[0x80000b24]:sd t6, 448(ra)
Current Store : [0x80000b28] : sd t5, 456(ra) -- Store: [0x800034e8]:0xFFEFFFFFFFFFFFF7




Last Coverpoint : ['rs2_w1_val == 8388608', 'rs1_w1_val == -9']
Last Code Sequence : 
	-[0x80000b48]:KMABT32 t6, t5, t4
	-[0x80000b4c]:sd t6, 464(ra)
Current Store : [0x80000b50] : sd t5, 472(ra) -- Store: [0x800034f8]:0xFFFFFFF700000002




Last Coverpoint : ['rs2_w1_val == 4194304']
Last Code Sequence : 
	-[0x80000b6c]:KMABT32 t6, t5, t4
	-[0x80000b70]:sd t6, 480(ra)
Current Store : [0x80000b74] : sd t5, 488(ra) -- Store: [0x80003508]:0xFFFFFFEF00000003




Last Coverpoint : ['rs2_w1_val == 2097152', 'rs2_w0_val == -5', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000b94]:KMABT32 t6, t5, t4
	-[0x80000b98]:sd t6, 496(ra)
Current Store : [0x80000b9c] : sd t5, 504(ra) -- Store: [0x80003518]:0x0000010000020000




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs2_w0_val == -134217729', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000bb4]:KMABT32 t6, t5, t4
	-[0x80000bb8]:sd t6, 512(ra)
Current Store : [0x80000bbc] : sd t5, 520(ra) -- Store: [0x80003528]:0x0000000004000000




Last Coverpoint : ['rs2_w1_val == 524288', 'rs2_w0_val == 16', 'rs1_w1_val == 2']
Last Code Sequence : 
	-[0x80000bd8]:KMABT32 t6, t5, t4
	-[0x80000bdc]:sd t6, 528(ra)
Current Store : [0x80000be0] : sd t5, 536(ra) -- Store: [0x80003538]:0x0000000200020000




Last Coverpoint : ['rs2_w1_val == 262144', 'rs1_w1_val == -1073741825']
Last Code Sequence : 
	-[0x80000c04]:KMABT32 t6, t5, t4
	-[0x80000c08]:sd t6, 544(ra)
Current Store : [0x80000c0c] : sd t5, 552(ra) -- Store: [0x80003548]:0xBFFFFFFF40000000




Last Coverpoint : ['rs2_w0_val == 65536', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000c34]:KMABT32 t6, t5, t4
	-[0x80000c38]:sd t6, 560(ra)
Current Store : [0x80000c3c] : sd t5, 568(ra) -- Store: [0x80003558]:0x2000000002000000




Last Coverpoint : ['rs2_w0_val == 32', 'rs1_w1_val == 1', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000c58]:KMABT32 t6, t5, t4
	-[0x80000c5c]:sd t6, 576(ra)
Current Store : [0x80000c60] : sd t5, 584(ra) -- Store: [0x80003568]:0x0000000101000000




Last Coverpoint : ['rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000c7c]:KMABT32 t6, t5, t4
	-[0x80000c80]:sd t6, 592(ra)
Current Store : [0x80000c84] : sd t5, 600(ra) -- Store: [0x80003578]:0xFFFFFFF900100000




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000ca4]:KMABT32 t6, t5, t4
	-[0x80000ca8]:sd t6, 608(ra)
Current Store : [0x80000cac] : sd t5, 616(ra) -- Store: [0x80003588]:0x0000000900080000




Last Coverpoint : ['rs1_w1_val == 268435456', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000ccc]:KMABT32 t6, t5, t4
	-[0x80000cd0]:sd t6, 624(ra)
Current Store : [0x80000cd4] : sd t5, 632(ra) -- Store: [0x80003598]:0x1000000000040000




Last Coverpoint : ['rs2_w0_val == -1431655766', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000cfc]:KMABT32 t6, t5, t4
	-[0x80000d00]:sd t6, 640(ra)
Current Store : [0x80000d04] : sd t5, 648(ra) -- Store: [0x800035a8]:0xFFFFFFF600010000




Last Coverpoint : ['rs2_w0_val == 131072', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000d20]:KMABT32 t6, t5, t4
	-[0x80000d24]:sd t6, 656(ra)
Current Store : [0x80000d28] : sd t5, 664(ra) -- Store: [0x800035b8]:0xFFFFFFEF00008000




Last Coverpoint : ['rs2_w0_val == -2097153', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000d50]:KMABT32 t6, t5, t4
	-[0x80000d54]:sd t6, 672(ra)
Current Store : [0x80000d58] : sd t5, 680(ra) -- Store: [0x800035c8]:0x0010000000004000




Last Coverpoint : ['rs1_w1_val == 4096', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000d78]:KMABT32 t6, t5, t4
	-[0x80000d7c]:sd t6, 688(ra)
Current Store : [0x80000d80] : sd t5, 696(ra) -- Store: [0x800035d8]:0x0000100000001000




Last Coverpoint : ['rs1_w1_val == 65536', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000d9c]:KMABT32 t6, t5, t4
	-[0x80000da0]:sd t6, 704(ra)
Current Store : [0x80000da4] : sd t5, 712(ra) -- Store: [0x800035e8]:0x0001000000000400




Last Coverpoint : ['rs2_w1_val == 2048', 'rs1_w1_val == -32769', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000dc4]:KMABT32 t6, t5, t4
	-[0x80000dc8]:sd t6, 720(ra)
Current Store : [0x80000dcc] : sd t5, 728(ra) -- Store: [0x800035f8]:0xFFFF7FFF00000200




Last Coverpoint : ['rs2_w0_val == 1048576', 'rs1_w1_val == -2097153', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000dec]:KMABT32 t6, t5, t4
	-[0x80000df0]:sd t6, 736(ra)
Current Store : [0x80000df4] : sd t5, 744(ra) -- Store: [0x80003608]:0xFFDFFFFF00000100




Last Coverpoint : ['rs2_w0_val == 262144', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000e10]:KMABT32 t6, t5, t4
	-[0x80000e14]:sd t6, 752(ra)
Current Store : [0x80000e18] : sd t5, 760(ra) -- Store: [0x80003618]:0x0000000100000040




Last Coverpoint : ['rs2_w0_val == -16777217', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000e38]:KMABT32 t6, t5, t4
	-[0x80000e3c]:sd t6, 768(ra)
Current Store : [0x80000e40] : sd t5, 776(ra) -- Store: [0x80003628]:0xFFFFFFF600000020




Last Coverpoint : ['rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000e60]:KMABT32 t6, t5, t4
	-[0x80000e64]:sd t6, 784(ra)
Current Store : [0x80000e68] : sd t5, 792(ra) -- Store: [0x80003638]:0xFDFFFFFF00000008




Last Coverpoint : ['rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000e8c]:KMABT32 t6, t5, t4
	-[0x80000e90]:sd t6, 800(ra)
Current Store : [0x80000e94] : sd t5, 808(ra) -- Store: [0x80003648]:0xFFFFFFBFFFFFFFFF




Last Coverpoint : ['rs2_w1_val == 131072', 'rs2_w0_val == 512', 'rs1_w1_val == 64']
Last Code Sequence : 
	-[0x80000eb0]:KMABT32 t6, t5, t4
	-[0x80000eb4]:sd t6, 816(ra)
Current Store : [0x80000eb8] : sd t5, 824(ra) -- Store: [0x80003658]:0x0000004000200000




Last Coverpoint : ['rs2_w1_val == 32768', 'rs2_w0_val == -16385']
Last Code Sequence : 
	-[0x80000ee0]:KMABT32 t6, t5, t4
	-[0x80000ee4]:sd t6, 832(ra)
Current Store : [0x80000ee8] : sd t5, 840(ra) -- Store: [0x80003668]:0xC000000000000040




Last Coverpoint : ['rs2_w1_val == 16384']
Last Code Sequence : 
	-[0x80000f0c]:KMABT32 t6, t5, t4
	-[0x80000f10]:sd t6, 848(ra)
Current Store : [0x80000f14] : sd t5, 856(ra) -- Store: [0x80003678]:0xFFFFFFF6FF7FFFFF




Last Coverpoint : ['rs2_w1_val == 8192', 'rs2_w0_val == -1073741825', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000f34]:KMABT32 t6, t5, t4
	-[0x80000f38]:sd t6, 864(ra)
Current Store : [0x80000f3c] : sd t5, 872(ra) -- Store: [0x80003688]:0xFFFFFFF9FFFFFBFF




Last Coverpoint : ['rs2_w1_val == 4096', 'rs1_w1_val == -2']
Last Code Sequence : 
	-[0x80000f5c]:KMABT32 t6, t5, t4
	-[0x80000f60]:sd t6, 880(ra)
Current Store : [0x80000f64] : sd t5, 888(ra) -- Store: [0x80003698]:0xFFFFFFFE00004000




Last Coverpoint : ['rs2_w1_val == 1024', 'rs2_w0_val == 4']
Last Code Sequence : 
	-[0x80000f7c]:KMABT32 t6, t5, t4
	-[0x80000f80]:sd t6, 896(ra)
Current Store : [0x80000f84] : sd t5, 904(ra) -- Store: [0x800036a8]:0xFFFFFFFCC0000000




Last Coverpoint : ['rs2_w1_val == 512']
Last Code Sequence : 
	-[0x80000fa4]:KMABT32 t6, t5, t4
	-[0x80000fa8]:sd t6, 912(ra)
Current Store : [0x80000fac] : sd t5, 920(ra) -- Store: [0x800036b8]:0x00000007FFFFFFFC




Last Coverpoint : ['rs2_w1_val == 256', 'rs2_w0_val == -65537', 'rs1_w1_val == -4194305']
Last Code Sequence : 
	-[0x80000fcc]:KMABT32 t6, t5, t4
	-[0x80000fd0]:sd t6, 928(ra)
Current Store : [0x80000fd4] : sd t5, 936(ra) -- Store: [0x800036c8]:0xFFBFFFFF40000000




Last Coverpoint : ['rs2_w1_val == 128']
Last Code Sequence : 
	-[0x80000ff0]:KMABT32 t6, t5, t4
	-[0x80000ff4]:sd t6, 944(ra)
Current Store : [0x80000ff8] : sd t5, 952(ra) -- Store: [0x800036d8]:0x0000010000000009




Last Coverpoint : ['rs2_w1_val == 64']
Last Code Sequence : 
	-[0x80001024]:KMABT32 t6, t5, t4
	-[0x80001028]:sd t6, 960(ra)
Current Store : [0x8000102c] : sd t5, 968(ra) -- Store: [0x800036e8]:0x00000800AAAAAAAA




Last Coverpoint : ['rs2_w1_val == 32', 'rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80001048]:KMABT32 t6, t5, t4
	-[0x8000104c]:sd t6, 976(ra)
Current Store : [0x80001050] : sd t5, 984(ra) -- Store: [0x800036f8]:0xFF7FFFFFFFFFFFFD




Last Coverpoint : ['rs2_w1_val == 16', 'rs2_w0_val == -262145', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80001078]:KMABT32 t6, t5, t4
	-[0x8000107c]:sd t6, 992(ra)
Current Store : [0x80001080] : sd t5, 1000(ra) -- Store: [0x80003708]:0xFDFFFFFFFFFF7FFF




Last Coverpoint : ['rs2_w1_val == 8', 'rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x8000109c]:KMABT32 t6, t5, t4
	-[0x800010a0]:sd t6, 1008(ra)
Current Store : [0x800010a4] : sd t5, 1016(ra) -- Store: [0x80003718]:0x0040000000080000




Last Coverpoint : ['rs2_w1_val == 4', 'rs2_w0_val == -1048577', 'rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x800010c8]:KMABT32 t6, t5, t4
	-[0x800010cc]:sd t6, 1024(ra)
Current Store : [0x800010d0] : sd t5, 1032(ra) -- Store: [0x80003728]:0x40000000FFFFFFEF




Last Coverpoint : ['rs2_w1_val == 2', 'rs2_w0_val == 1024']
Last Code Sequence : 
	-[0x800010f0]:KMABT32 t6, t5, t4
	-[0x800010f4]:sd t6, 1040(ra)
Current Store : [0x800010f8] : sd t5, 1048(ra) -- Store: [0x80003738]:0x00000040FFEFFFFF




Last Coverpoint : ['rs2_w1_val == 1']
Last Code Sequence : 
	-[0x80001110]:KMABT32 t6, t5, t4
	-[0x80001114]:sd t6, 1056(ra)
Current Store : [0x80001118] : sd t5, 1064(ra) -- Store: [0x80003748]:0x0000000501000000




Last Coverpoint : ['rs2_w0_val == 32768']
Last Code Sequence : 
	-[0x80001138]:KMABT32 t6, t5, t4
	-[0x8000113c]:sd t6, 1072(ra)
Current Store : [0x80001140] : sd t5, 1080(ra) -- Store: [0x80003758]:0x0000200000000100




Last Coverpoint : ['rs2_w0_val == 8192']
Last Code Sequence : 
	-[0x80001164]:KMABT32 t6, t5, t4
	-[0x80001168]:sd t6, 1088(ra)
Current Store : [0x8000116c] : sd t5, 1096(ra) -- Store: [0x80003768]:0xFBFFFFFF00000008




Last Coverpoint : ['rs2_w0_val == 4096']
Last Code Sequence : 
	-[0x8000119c]:KMABT32 t6, t5, t4
	-[0x800011a0]:sd t6, 1104(ra)
Current Store : [0x800011a4] : sd t5, 1112(ra) -- Store: [0x80003778]:0xC0000000FFFFEFFF




Last Coverpoint : ['rs2_w0_val == 2048', 'rs1_w1_val == -268435457']
Last Code Sequence : 
	-[0x800011cc]:KMABT32 t6, t5, t4
	-[0x800011d0]:sd t6, 1120(ra)
Current Store : [0x800011d4] : sd t5, 1128(ra) -- Store: [0x80003788]:0xEFFFFFFFFFFFBFFF




Last Coverpoint : ['rs2_w0_val == 8', 'rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x800011f4]:KMABT32 t6, t5, t4
	-[0x800011f8]:sd t6, 1136(ra)
Current Store : [0x800011fc] : sd t5, 1144(ra) -- Store: [0x80003798]:0x00004000FFFFFFEF




Last Coverpoint : ['opcode : kmabt32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val', 'rs2_w1_val == 1024', 'rs2_w0_val == 0', 'rs1_w1_val == -32769', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80001214]:KMABT32 t6, t5, t4
	-[0x80001218]:sd t6, 1152(ra)
Current Store : [0x8000121c] : sd t5, 1160(ra) -- Store: [0x800037a8]:0xFFFF7FFFFFFFFFFB




Last Coverpoint : ['rs2_w0_val == 67108864', 'rs1_w1_val == -1431655766']
Last Code Sequence : 
	-[0x8000124c]:KMABT32 t6, t5, t4
	-[0x80001250]:sd t6, 1168(ra)
Current Store : [0x80001254] : sd t5, 1176(ra) -- Store: [0x800037b8]:0xAAAAAAAAFFFF7FFF




Last Coverpoint : ['rs1_w1_val == 2147483647']
Last Code Sequence : 
	-[0x80001278]:KMABT32 t6, t5, t4
	-[0x8000127c]:sd t6, 1184(ra)
Current Store : [0x80001280] : sd t5, 1192(ra) -- Store: [0x800037c8]:0x7FFFFFFF3FFFFFFF




Last Coverpoint : ['rs1_w1_val == -536870913']
Last Code Sequence : 
	-[0x800012ac]:KMABT32 t6, t5, t4
	-[0x800012b0]:sd t6, 1200(ra)
Current Store : [0x800012b4] : sd t5, 1208(ra) -- Store: [0x800037d8]:0xDFFFFFFF40000000




Last Coverpoint : ['rs1_w1_val == -131073']
Last Code Sequence : 
	-[0x800012d4]:KMABT32 t6, t5, t4
	-[0x800012d8]:sd t6, 1216(ra)
Current Store : [0x800012dc] : sd t5, 1224(ra) -- Store: [0x800037e8]:0xFFFDFFFFFFDFFFFF




Last Coverpoint : ['rs1_w1_val == -16385']
Last Code Sequence : 
	-[0x800012fc]:KMABT32 t6, t5, t4
	-[0x80001300]:sd t6, 1232(ra)
Current Store : [0x80001304] : sd t5, 1240(ra) -- Store: [0x800037f8]:0xFFFFBFFFFFFFFBFF




Last Coverpoint : ['rs1_w1_val == -8193']
Last Code Sequence : 
	-[0x8000132c]:KMABT32 t6, t5, t4
	-[0x80001330]:sd t6, 1248(ra)
Current Store : [0x80001334] : sd t5, 1256(ra) -- Store: [0x80003808]:0xFFFFDFFFFFEFFFFF




Last Coverpoint : ['rs1_w1_val == -2049', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80001350]:KMABT32 t6, t5, t4
	-[0x80001354]:sd t6, 1264(ra)
Current Store : [0x80001358] : sd t5, 1272(ra) -- Store: [0x80003818]:0xFFFFF7FFFFFFFFBF




Last Coverpoint : ['rs1_w1_val == -1025']
Last Code Sequence : 
	-[0x80001378]:KMABT32 t6, t5, t4
	-[0x8000137c]:sd t6, 1280(ra)
Current Store : [0x80001380] : sd t5, 1288(ra) -- Store: [0x80003828]:0xFFFFFBFFFFFFFFFF




Last Coverpoint : ['rs1_w1_val == -513']
Last Code Sequence : 
	-[0x8000139c]:KMABT32 t6, t5, t4
	-[0x800013a0]:sd t6, 1296(ra)
Current Store : [0x800013a4] : sd t5, 1304(ra) -- Store: [0x80003838]:0xFFFFFDFF00000002




Last Coverpoint : ['rs1_w1_val == -257', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x800013c4]:KMABT32 t6, t5, t4
	-[0x800013c8]:sd t6, 1312(ra)
Current Store : [0x800013cc] : sd t5, 1320(ra) -- Store: [0x80003848]:0xFFFFFEFFFDFFFFFF




Last Coverpoint : ['rs1_w1_val == -33']
Last Code Sequence : 
	-[0x800013ec]:KMABT32 t6, t5, t4
	-[0x800013f0]:sd t6, 1328(ra)
Current Store : [0x800013f4] : sd t5, 1336(ra) -- Store: [0x80003858]:0xFFFFFFDFFFFF7FFF




Last Coverpoint : ['rs1_w1_val == -3']
Last Code Sequence : 
	-[0x80001414]:KMABT32 t6, t5, t4
	-[0x80001418]:sd t6, 1344(ra)
Current Store : [0x8000141c] : sd t5, 1352(ra) -- Store: [0x80003868]:0xFFFFFFFD00200000




Last Coverpoint : ['rs1_w1_val == 134217728']
Last Code Sequence : 
	-[0x80001438]:KMABT32 t6, t5, t4
	-[0x8000143c]:sd t6, 1360(ra)
Current Store : [0x80001440] : sd t5, 1368(ra) -- Store: [0x80003878]:0x0800000080000000




Last Coverpoint : ['rs1_w1_val == 67108864', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80001464]:KMABT32 t6, t5, t4
	-[0x80001468]:sd t6, 1376(ra)
Current Store : [0x8000146c] : sd t5, 1384(ra) -- Store: [0x80003888]:0x04000000FFFFFDFF




Last Coverpoint : ['rs1_w1_val == 33554432']
Last Code Sequence : 
	-[0x80001484]:KMABT32 t6, t5, t4
	-[0x80001488]:sd t6, 1392(ra)
Current Store : [0x8000148c] : sd t5, 1400(ra) -- Store: [0x80003898]:0x0200000000000000




Last Coverpoint : ['rs1_w1_val == 16777216']
Last Code Sequence : 
	-[0x800014b0]:KMABT32 t6, t5, t4
	-[0x800014b4]:sd t6, 1408(ra)
Current Store : [0x800014b8] : sd t5, 1416(ra) -- Store: [0x800038a8]:0x01000000FFFFFFFC




Last Coverpoint : ['rs1_w1_val == 8388608']
Last Code Sequence : 
	-[0x800014dc]:KMABT32 t6, t5, t4
	-[0x800014e0]:sd t6, 1424(ra)
Current Store : [0x800014e4] : sd t5, 1432(ra) -- Store: [0x800038b8]:0x00800000FFFFFBFF




Last Coverpoint : ['rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x80001504]:KMABT32 t6, t5, t4
	-[0x80001508]:sd t6, 1440(ra)
Current Store : [0x8000150c] : sd t5, 1448(ra) -- Store: [0x800038c8]:0x00080000FFFFFFFC




Last Coverpoint : ['rs1_w1_val == 262144']
Last Code Sequence : 
	-[0x80001528]:KMABT32 t6, t5, t4
	-[0x8000152c]:sd t6, 1456(ra)
Current Store : [0x80001530] : sd t5, 1464(ra) -- Store: [0x800038d8]:0x0004000000000004




Last Coverpoint : ['rs2_w0_val == -268435457', 'rs1_w1_val == 131072']
Last Code Sequence : 
	-[0x8000155c]:KMABT32 t6, t5, t4
	-[0x80001560]:sd t6, 1472(ra)
Current Store : [0x80001564] : sd t5, 1480(ra) -- Store: [0x800038e8]:0x00020000FFFFFBFF




Last Coverpoint : ['rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x8000158c]:KMABT32 t6, t5, t4
	-[0x80001590]:sd t6, 1488(ra)
Current Store : [0x80001594] : sd t5, 1496(ra) -- Store: [0x800038f8]:0x00000400FFFEFFFF




Last Coverpoint : ['opcode : kmabt32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 0', 'rs2_w0_val == 4', 'rs1_w1_val == -2097153', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x800015ac]:KMABT32 t6, t5, t4
	-[0x800015b0]:sd t6, 1504(ra)
Current Store : [0x800015b4] : sd t5, 1512(ra) -- Store: [0x80003908]:0xFFDFFFFF00000040




Last Coverpoint : ['rs1_w1_val == 128']
Last Code Sequence : 
	-[0x800015d4]:KMABT32 t6, t5, t4
	-[0x800015d8]:sd t6, 1520(ra)
Current Store : [0x800015dc] : sd t5, 1528(ra) -- Store: [0x80003918]:0x0000008000000800




Last Coverpoint : ['rs2_w1_val == -1']
Last Code Sequence : 
	-[0x800015f4]:KMABT32 t6, t5, t4
	-[0x800015f8]:sd t6, 1536(ra)
Current Store : [0x800015fc] : sd t5, 1544(ra) -- Store: [0x80003928]:0x0000010000000800




Last Coverpoint : ['rs2_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80001624]:KMABT32 t6, t5, t4
	-[0x80001628]:sd t6, 1552(ra)
Current Store : [0x8000162c] : sd t5, 1560(ra) -- Store: [0x80003938]:0x0000400000000002




Last Coverpoint : ['rs1_w1_val == 4']
Last Code Sequence : 
	-[0x80001648]:KMABT32 t6, t5, t4
	-[0x8000164c]:sd t6, 1568(ra)
Current Store : [0x80001650] : sd t5, 1576(ra) -- Store: [0x80003948]:0x00000004BFFFFFFF




Last Coverpoint : ['rs1_w1_val == -1']
Last Code Sequence : 
	-[0x80001664]:KMABT32 t6, t5, t4
	-[0x80001668]:sd t6, 1584(ra)
Current Store : [0x8000166c] : sd t5, 1592(ra) -- Store: [0x80003958]:0xFFFFFFFFFFFFFFFC




Last Coverpoint : ['rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x8000168c]:KMABT32 t6, t5, t4
	-[0x80001690]:sd t6, 1600(ra)
Current Store : [0x80001694] : sd t5, 1608(ra) -- Store: [0x80003968]:0x000010007FFFFFFF




Last Coverpoint : ['rs2_w0_val == -524289']
Last Code Sequence : 
	-[0x800016b4]:KMABT32 t6, t5, t4
	-[0x800016b8]:sd t6, 1616(ra)
Current Store : [0x800016bc] : sd t5, 1624(ra) -- Store: [0x80003978]:0x0002000020000000




Last Coverpoint : ['rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800016dc]:KMABT32 t6, t5, t4
	-[0x800016e0]:sd t6, 1632(ra)
Current Store : [0x800016e4] : sd t5, 1640(ra) -- Store: [0x80003988]:0xFFFFFF7FF7FFFFFF




Last Coverpoint : ['rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x80001704]:KMABT32 t6, t5, t4
	-[0x80001708]:sd t6, 1648(ra)
Current Store : [0x8000170c] : sd t5, 1656(ra) -- Store: [0x80003998]:0x00000100FBFFFFFF




Last Coverpoint : ['rs2_w0_val == -131073']
Last Code Sequence : 
	-[0x8000173c]:KMABT32 t6, t5, t4
	-[0x80001740]:sd t6, 1664(ra)
Current Store : [0x80001744] : sd t5, 1672(ra) -- Store: [0x800039a8]:0xFFFEFFFFFFFEFFFF




Last Coverpoint : ['rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80001768]:KMABT32 t6, t5, t4
	-[0x8000176c]:sd t6, 1680(ra)
Current Store : [0x80001770] : sd t5, 1688(ra) -- Store: [0x800039b8]:0xFBFFFFFFFEFFFFFF




Last Coverpoint : ['rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x80001794]:KMABT32 t6, t5, t4
	-[0x80001798]:sd t6, 1696(ra)
Current Store : [0x8000179c] : sd t5, 1704(ra) -- Store: [0x800039c8]:0x7FFFFFFFFFBFFFFF




Last Coverpoint : ['rs2_w0_val == -4097']
Last Code Sequence : 
	-[0x800017b4]:KMABT32 t6, t5, t4
	-[0x800017b8]:sd t6, 1712(ra)
Current Store : [0x800017bc] : sd t5, 1720(ra) -- Store: [0x800039d8]:0xFFFFFFF600000002




Last Coverpoint : ['rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x800017e4]:KMABT32 t6, t5, t4
	-[0x800017e8]:sd t6, 1728(ra)
Current Store : [0x800017ec] : sd t5, 1736(ra) -- Store: [0x800039e8]:0x01000000FFF7FFFF




Last Coverpoint : ['rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80001810]:KMABT32 t6, t5, t4
	-[0x80001814]:sd t6, 1744(ra)
Current Store : [0x80001818] : sd t5, 1752(ra) -- Store: [0x800039f8]:0x00100000FFFBFFFF




Last Coverpoint : ['rs2_w0_val == -129']
Last Code Sequence : 
	-[0x8000183c]:KMABT32 t6, t5, t4
	-[0x80001840]:sd t6, 1760(ra)
Current Store : [0x80001844] : sd t5, 1768(ra) -- Store: [0x80003a08]:0xFFEFFFFFFF7FFFFF




Last Coverpoint : ['rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80001870]:KMABT32 t6, t5, t4
	-[0x80001874]:sd t6, 1776(ra)
Current Store : [0x80001878] : sd t5, 1784(ra) -- Store: [0x80003a18]:0xFFFFFFF9FFFFF7FF




Last Coverpoint : ['rs2_w0_val == -3']
Last Code Sequence : 
	-[0x80001894]:KMABT32 t6, t5, t4
	-[0x80001898]:sd t6, 1792(ra)
Current Store : [0x8000189c] : sd t5, 1800(ra) -- Store: [0x80003a28]:0xFFFFF7FF00080000




Last Coverpoint : ['rs2_w0_val == -2', 'rs1_w0_val == -33']
Last Code Sequence : 
	-[0x800018c0]:KMABT32 t6, t5, t4
	-[0x800018c4]:sd t6, 1808(ra)
Current Store : [0x800018c8] : sd t5, 1816(ra) -- Store: [0x80003a38]:0x00004000FFFFFFDF




Last Coverpoint : ['rs1_w0_val == -257']
Last Code Sequence : 
	-[0x800018f4]:KMABT32 t6, t5, t4
	-[0x800018f8]:sd t6, 1824(ra)
Current Store : [0x800018fc] : sd t5, 1832(ra) -- Store: [0x80003a48]:0x04000000FFFFFEFF




Last Coverpoint : ['rs2_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80001920]:KMABT32 t6, t5, t4
	-[0x80001924]:sd t6, 1840(ra)
Current Store : [0x80001928] : sd t5, 1848(ra) -- Store: [0x80003a58]:0xF7FFFFFFFFFFEFFF




Last Coverpoint : ['rs2_w0_val == 536870912']
Last Code Sequence : 
	-[0x80001940]:KMABT32 t6, t5, t4
	-[0x80001944]:sd t6, 1856(ra)
Current Store : [0x80001948] : sd t5, 1864(ra) -- Store: [0x80003a68]:0xFFFFFDFF00800000




Last Coverpoint : ['rs2_w0_val == 33554432']
Last Code Sequence : 
	-[0x80001960]:KMABT32 t6, t5, t4
	-[0x80001964]:sd t6, 1872(ra)
Current Store : [0x80001968] : sd t5, 1880(ra) -- Store: [0x80003a78]:0x00000400C0000000




Last Coverpoint : ['rs2_w0_val == 8388608']
Last Code Sequence : 
	-[0x80001988]:KMABT32 t6, t5, t4
	-[0x8000198c]:sd t6, 1888(ra)
Current Store : [0x80001990] : sd t5, 1896(ra) -- Store: [0x80003a88]:0x000010003FFFFFFF




Last Coverpoint : ['rs2_w0_val == 268435456', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x800019ac]:KMABT32 t6, t5, t4
	-[0x800019b0]:sd t6, 1904(ra)
Current Store : [0x800019b4] : sd t5, 1912(ra) -- Store: [0x80003a98]:0x0000400008000000




Last Coverpoint : ['opcode : kmabt32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == -8193', 'rs2_w0_val == 524288', 'rs1_w1_val == 32', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x800019d4]:KMABT32 t6, t5, t4
	-[0x800019d8]:sd t6, 1920(ra)
Current Store : [0x800019dc] : sd t5, 1928(ra) -- Store: [0x80003aa8]:0x00000020FF7FFFFF




Last Coverpoint : ['opcode : kmabt32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w1_val == 33554432', 'rs2_w0_val == -8193', 'rs1_w1_val == -65', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80001a00]:KMABT32 t6, t5, t4
	-[0x80001a04]:sd t6, 1936(ra)
Current Store : [0x80001a08] : sd t5, 1944(ra) -- Store: [0x80003ab8]:0xFFFFFFBF20000000




Last Coverpoint : ['rs2_w1_val == -131073', 'rs2_w0_val == -257']
Last Code Sequence : 
	-[0x80001a24]:KMABT32 t6, t5, t4
	-[0x80001a28]:sd t6, 1952(ra)
Current Store : [0x80001a2c] : sd t5, 1960(ra) -- Store: [0x80003ac8]:0xFFFFFFEF00002000





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

|s.no|            signature             |                                                                                                                                                 coverpoints                                                                                                                                                  |                                 code                                  |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80003210]<br>0xDDB7D5BFDDB7D597|- opcode : kmabt32<br> - rs1 : x30<br> - rs2 : x30<br> - rd : x28<br> - rs1 == rs2 != rd<br> - rs1_w1_val == rs2_w1_val<br> - rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs1_w0_val == rs2_w0_val<br> - rs1_w0_val < 0 and rs2_w0_val < 0<br>                                                                    |[0x800003b8]:KMABT32 t3, t5, t5<br> [0x800003bc]:sd t3, 0(t0)<br>      |
|   2|[0x80003220]<br>0xFFFFFFF8FF400000|- rs1 : x25<br> - rs2 : x25<br> - rd : x25<br> - rs1 == rs2 == rd<br> - rs1_w1_val < 0 and rs2_w1_val < 0<br> - rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w0_val == 2097152<br> - rs1_w0_val == 2097152<br>                                                                                                 |[0x800003dc]:KMABT32 s9, s9, s9<br> [0x800003e0]:sd s9, 16(t0)<br>     |
|   3|[0x80003230]<br>0x0000400080003000|- rs1 : x3<br> - rs2 : x7<br> - rd : x6<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w1_val != rs2_w1_val<br> - rs1_w1_val < 0 and rs2_w1_val > 0<br> - rs1_w0_val != rs2_w0_val<br> - rs2_w1_val == 65536<br> - rs2_w0_val == 128<br> - rs1_w1_val == -8388609<br> - rs1_w0_val == 1073741824<br> |[0x80000400]:KMABT32 t1, gp, t2<br> [0x80000404]:sd t1, 32(t0)<br>     |
|   4|[0x80003240]<br>0x000FFFFFFB800000|- rs1 : x13<br> - rs2 : x10<br> - rd : x13<br> - rs1 == rd != rs2<br> - rs1_w1_val > 0 and rs2_w1_val < 0<br> - rs2_w0_val == 256<br> - rs1_w1_val == 1048576<br> - rs1_w0_val == 8388608<br>                                                                                                                 |[0x80000424]:KMABT32 a3, a3, a0<br> [0x80000428]:sd a3, 48(t0)<br>     |
|   5|[0x80003250]<br>0xFFFFDFFF00080000|- rs1 : x0<br> - rs2 : x20<br> - rd : x20<br> - rs2 == rd != rs1<br> - rs2_w1_val == -8193<br> - rs2_w0_val == 524288<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                                                                                                                         |[0x8000044c]:KMABT32 s4, zero, s4<br> [0x80000450]:sd s4, 64(t0)<br>   |
|   6|[0x80003260]<br>0x0000000000000000|- rs1 : x1<br> - rs2 : x21<br> - rd : x0<br> - rs1_w0_val > 0 and rs2_w0_val < 0<br> - rs2_w1_val == 33554432<br> - rs2_w0_val == -8193<br> - rs1_w1_val == -65<br> - rs1_w0_val == 536870912<br>                                                                                                             |[0x80000478]:KMABT32 zero, ra, s5<br> [0x8000047c]:sd zero, 80(t0)<br> |
|   7|[0x80003270]<br>0x615330D3115330D3|- rs1 : x17<br> - rs2 : x9<br> - rd : x8<br> - rs2_w1_val == -1431655766<br> - rs2_w0_val == -513<br> - rs1_w1_val == 32<br> - rs1_w0_val == -268435457<br>                                                                                                                                                   |[0x800004a0]:KMABT32 fp, a7, s1<br> [0x800004a4]:sd fp, 96(t0)<br>     |
|   8|[0x80003280]<br>0x6DF5702218A01A77|- rs1 : x10<br> - rs2 : x26<br> - rd : x22<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == -67108865<br> - rs1_w1_val == 512<br> - rs1_w0_val == 128<br>                                                                                                                                                   |[0x800004d0]:KMABT32 s6, a0, s10<br> [0x800004d4]:sd s6, 112(t0)<br>   |
|   9|[0x80003290]<br>0x6FAAFFBAEFAC7FBC|- rs1 : x26<br> - rs2 : x24<br> - rd : x19<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == -536870913<br> - rs1_w0_val == -65537<br>                                                                                                                                                                       |[0x80000504]:KMABT32 s3, s10, s8<br> [0x80000508]:sd s3, 128(t0)<br>   |
|  10|[0x800032a0]<br>0x7FFFFFFFFFFFFFFF|- rs1 : x23<br> - rs2 : x2<br> - rd : x24<br> - rs1_w0_val < 0 and rs2_w0_val > 0<br> - rs2_w1_val == -1073741825<br> - rs2_w0_val == 134217728<br>                                                                                                                                                           |[0x80000530]:KMABT32 s8, s7, sp<br> [0x80000534]:sd s8, 144(t0)<br>    |
|  11|[0x800032b0]<br>0xF36FF76DE56FF76D|- rs1 : x28<br> - rs2 : x12<br> - rd : x14<br> - rs2_w1_val == -536870913<br> - rs1_w1_val == -134217729<br> - rs1_w0_val == 268435456<br>                                                                                                                                                                    |[0x80000560]:KMABT32 a4, t3, a2<br> [0x80000564]:sd a4, 160(t0)<br>    |
|  12|[0x800032c0]<br>0xFBB6FAB76BB6FAAE|- rs1 : x14<br> - rs2 : x3<br> - rd : x31<br> - rs2_w1_val == -268435457<br> - rs2_w0_val == -4194305<br> - rs1_w1_val == 536870912<br>                                                                                                                                                                       |[0x8000058c]:KMABT32 t6, a4, gp<br> [0x80000590]:sd t6, 176(t0)<br>    |
|  13|[0x800032d0]<br>0x0100002118000000|- rs1 : x24<br> - rs2 : x22<br> - rd : x17<br> - rs2_w1_val == -134217729<br> - rs2_w0_val == -2147483648<br> - rs1_w1_val == 1431655765<br> - rs1_w0_val == -536870913<br>                                                                                                                                   |[0x800005bc]:KMABT32 a7, s8, s6<br> [0x800005c0]:sd a7, 192(t0)<br>    |
|  14|[0x800032e0]<br>0xC0DDB7D603DDB7D6|- rs1 : x18<br> - rs2 : x31<br> - rd : x4<br> - rs2_w1_val == -67108865<br> - rs1_w1_val == -262145<br> - rs1_w0_val == -1073741825<br>                                                                                                                                                                       |[0x800005e8]:KMABT32 tp, s2, t6<br> [0x800005ec]:sd tp, 208(t0)<br>    |
|  15|[0x800032f0]<br>0xFFDFFFBF10000000|- rs1 : x27<br> - rs2 : x4<br> - rd : x1<br> - rs2_w1_val == -33554433<br> - rs1_w1_val == -33554433<br>                                                                                                                                                                                                      |[0x8000060c]:KMABT32 ra, s11, tp<br> [0x80000610]:sd ra, 224(t0)<br>   |
|  16|[0x80003300]<br>0x3FFFFFFFEFFEFFEF|- rs1 : x20<br> - rs2 : x1<br> - rd : x26<br> - rs2_w1_val == -16777217<br> - rs1_w1_val == -5<br> - rs1_w0_val == 16<br>                                                                                                                                                                                     |[0x80000634]:KMABT32 s10, s4, ra<br> [0x80000638]:sd s10, 240(t0)<br>  |
|  17|[0x80003310]<br>0xC0000801008FFFFD|- rs1 : x2<br> - rs2 : x11<br> - rd : x23<br> - rs2_w1_val == -8388609<br> - rs2_w0_val == -33554433<br> - rs1_w0_val == -1048577<br>                                                                                                                                                                         |[0x80000660]:KMABT32 s7, sp, a1<br> [0x80000664]:sd s7, 256(t0)<br>    |
|  18|[0x80003320]<br>0xAAAAAAAF00400E00|- rs1 : x29<br> - rs2 : x8<br> - rd : x9<br> - rs2_w1_val == -4194305<br> - rs2_w0_val == -8388609<br> - rs1_w1_val == -65537<br> - rs1_w0_val == -4097<br>                                                                                                                                                   |[0x8000069c]:KMABT32 s1, t4, fp<br> [0x800006a0]:sd s1, 0(ra)<br>      |
|  19|[0x80003330]<br>0x0000000090203291|- rs1 : x8<br> - rs2 : x15<br> - rd : x5<br> - rs2_w1_val == -2097153<br> - rs2_w0_val == 64<br> - rs1_w0_val == -129<br>                                                                                                                                                                                     |[0x800006c4]:KMABT32 t0, fp, a5<br> [0x800006c8]:sd t0, 16(ra)<br>     |
|  20|[0x80003340]<br>0x0001080000900081|- rs1 : x6<br> - rs2 : x17<br> - rd : x7<br> - rs2_w1_val == -1048577<br> - rs2_w0_val == -1025<br> - rs1_w0_val == -8388609<br>                                                                                                                                                                              |[0x800006ec]:KMABT32 t2, t1, a7<br> [0x800006f0]:sd t2, 32(ra)<br>     |
|  21|[0x80003350]<br>0xDFFFFDFFFBBFFFFF|- rs1 : x5<br> - rs2 : x13<br> - rd : x12<br> - rs2_w1_val == -524289<br> - rs1_w0_val == 4194304<br>                                                                                                                                                                                                         |[0x80000710]:KMABT32 a2, t0, a3<br> [0x80000714]:sd a2, 48(ra)<br>     |
|  22|[0x80003360]<br>0xFFFBFFFFC0440010|- rs1 : x16<br> - rs2 : x28<br> - rd : x18<br> - rs2_w1_val == -262145<br> - rs2_w0_val == -2049<br> - rs1_w0_val == -17<br>                                                                                                                                                                                  |[0x80000740]:KMABT32 s2, a6, t3<br> [0x80000744]:sd s2, 64(ra)<br>     |
|  23|[0x80003370]<br>0xEFFFFFFFFFBFFFFF|- rs1 : x31<br> - rs2 : x0<br> - rd : x3<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == -17<br> - rs1_w0_val == 8192<br>                                                                                                                                                                     |[0x80000764]:KMABT32 gp, t6, zero<br> [0x80000768]:sd gp, 80(ra)<br>   |
|  24|[0x80003380]<br>0x000000060001FFFA|- rs1 : x7<br> - rs2 : x14<br> - rd : x30<br> - rs2_w1_val == -65537<br> - rs1_w1_val == 32768<br> - rs1_w0_val == -2<br>                                                                                                                                                                                     |[0x80000794]:KMABT32 t5, t2, a4<br> [0x80000798]:sd t5, 96(ra)<br>     |
|  25|[0x80003390]<br>0xFFDFFFFF00000040|- rs1 : x19<br> - rs2 : x16<br> - rd : x15<br> - rs2_w1_val == -32769<br> - rs2_w0_val == 4194304<br> - rs1_w1_val == -4097<br>                                                                                                                                                                               |[0x800007b8]:KMABT32 a5, s3, a6<br> [0x800007bc]:sd a5, 112(ra)<br>    |
|  26|[0x800033a0]<br>0xFFFF7FFF003EFFFC|- rs1 : x15<br> - rs2 : x19<br> - rd : x16<br> - rs2_w1_val == -16385<br> - rs2_w0_val == 2<br> - rs1_w1_val == 2048<br> - rs1_w0_val == 4<br>                                                                                                                                                                |[0x800007e0]:KMABT32 a6, a5, s3<br> [0x800007e4]:sd a6, 128(ra)<br>    |
|  27|[0x800033b0]<br>0x0200000100007008|- rs1 : x12<br> - rs2 : x29<br> - rd : x21<br> - rs2_w1_val == -4097<br> - rs2_w0_val == 1431655765<br> - rs1_w1_val == 256<br> - rs1_w0_val == -9<br>                                                                                                                                                        |[0x80000810]:KMABT32 s5, a2, t4<br> [0x80000814]:sd s5, 144(ra)<br>    |
|  28|[0x800033c0]<br>0xFFFFED5455555800|- rs1 : x11<br> - rs2 : x27<br> - rd : x29<br> - rs2_w1_val == -2049<br> - rs2_w0_val == -65<br> - rs1_w0_val == 1431655765<br>                                                                                                                                                                               |[0x80000838]:KMABT32 t4, a1, s11<br> [0x8000083c]:sd t4, 160(ra)<br>   |
|  29|[0x800033d0]<br>0xFFFFFA007FFFFFBF|- rs1 : x22<br> - rs2 : x18<br> - rd : x27<br> - rs1_w0_val == -2147483648<br> - rs2_w1_val == -1025<br> - rs2_w0_val == 16384<br>                                                                                                                                                                            |[0x80000858]:KMABT32 s11, s6, s2<br> [0x8000085c]:sd s11, 176(ra)<br>  |
|  30|[0x800033e0]<br>0xFFFFFFF855555F5A|- rs1 : x9<br> - rs2 : x6<br> - rd : x11<br> - rs2_w1_val == -513<br> - rs1_w0_val == -5<br>                                                                                                                                                                                                                  |[0x8000087c]:KMABT32 a1, s1, t1<br> [0x80000880]:sd a1, 192(ra)<br>    |
|  31|[0x800033f0]<br>0x000001FFFFDFE080|- rs1 : x21<br> - rs2 : x5<br> - rd : x10<br> - rs2_w1_val == -257<br> - rs2_w0_val == -32769<br> - rs1_w1_val == -16777217<br>                                                                                                                                                                               |[0x800008ac]:KMABT32 a0, s5, t0<br> [0x800008b0]:sd a0, 208(ra)<br>    |
|  32|[0x80003400]<br>0x00000005FFEFFF7E|- rs1 : x4<br> - rs2 : x23<br> - rd : x2<br> - rs2_w1_val == -129<br> - rs1_w1_val == -67108865<br> - rs1_w0_val == 1<br>                                                                                                                                                                                     |[0x800008d8]:KMABT32 sp, tp, s7<br> [0x800008dc]:sd sp, 224(ra)<br>    |
|  33|[0x80003410]<br>0xFFFFFFEF00822041|- rs2_w1_val == -65<br> - rs1_w1_val == 16<br> - rs1_w0_val == -131073<br>                                                                                                                                                                                                                                    |[0x80000900]:KMABT32 t6, t5, t4<br> [0x80000904]:sd t6, 240(ra)<br>    |
|  34|[0x80003420]<br>0xFFFFFFFA00822057|- rs2_w1_val == -33<br> - rs1_w1_val == 8192<br> - rs1_w0_val == -1431655766<br>                                                                                                                                                                                                                              |[0x80000934]:KMABT32 t6, t5, t4<br> [0x80000938]:sd t6, 256(ra)<br>    |
|  35|[0x80003430]<br>0xFFFFFFFA02A22068|- rs2_w1_val == -17<br> - rs1_w1_val == -524289<br> - rs1_w0_val == -2097153<br>                                                                                                                                                                                                                              |[0x8000095c]:KMABT32 t6, t5, t4<br> [0x80000960]:sd t6, 272(ra)<br>    |
|  36|[0x80003440]<br>0xFFFFFFFA02A22095|- rs2_w1_val == -9<br> - rs2_w0_val == -1<br> - rs1_w1_val == -2147483648<br>                                                                                                                                                                                                                                 |[0x80000984]:KMABT32 t6, t5, t4<br> [0x80000988]:sd t6, 288(ra)<br>    |
|  37|[0x80003450]<br>0xFFFFFFFB42A2209A|- rs2_w1_val == -5<br>                                                                                                                                                                                                                                                                                        |[0x800009b0]:KMABT32 t6, t5, t4<br> [0x800009b4]:sd t6, 304(ra)<br>    |
|  38|[0x80003460]<br>0xFFFFFFFB42A22094|- rs2_w1_val == -3<br> - rs2_w0_val == 1<br> - rs1_w1_val == 2097152<br> - rs1_w0_val == 2<br>                                                                                                                                                                                                                |[0x800009d4]:KMABT32 t6, t5, t4<br> [0x800009d8]:sd t6, 320(ra)<br>    |
|  39|[0x80003470]<br>0xFFFFFFFB42A26096|- rs2_w1_val == -2<br> - rs2_w0_val == -33<br> - rs1_w0_val == -8193<br>                                                                                                                                                                                                                                      |[0x800009fc]:KMABT32 t6, t5, t4<br> [0x80000a00]:sd t6, 336(ra)<br>    |
|  40|[0x80003480]<br>0xFFFFFFFC42A26096|- rs2_w1_val == -2147483648<br>                                                                                                                                                                                                                                                                               |[0x80000a28]:KMABT32 t6, t5, t4<br> [0x80000a2c]:sd t6, 352(ra)<br>    |
|  41|[0x80003490]<br>0x03FFFFFC42A26096|- rs2_w1_val == 1073741824<br> - rs1_w1_val == 8<br>                                                                                                                                                                                                                                                          |[0x80000a4c]:KMABT32 t6, t5, t4<br> [0x80000a50]:sd t6, 368(ra)<br>    |
|  42|[0x800034a0]<br>0x040000FC42A26096|- rs2_w1_val == 536870912<br> - rs2_w0_val == 16777216<br> - rs1_w0_val == 2048<br>                                                                                                                                                                                                                           |[0x80000a7c]:KMABT32 t6, t5, t4<br> [0x80000a80]:sd t6, 384(ra)<br>    |
|  43|[0x800034b0]<br>0x03FFFCFC32A26096|- rs2_w1_val == 268435456<br> - rs1_w0_val == -16385<br>                                                                                                                                                                                                                                                      |[0x80000aa8]:KMABT32 t6, t5, t4<br> [0x80000aac]:sd t6, 400(ra)<br>    |
|  44|[0x800034c0]<br>0x01FFFCFC2AA26096|- rs2_w1_val == 134217728<br> - rs2_w0_val == -17<br>                                                                                                                                                                                                                                                         |[0x80000ad0]:KMABT32 t6, t5, t4<br> [0x80000ad4]:sd t6, 416(ra)<br>    |
|  45|[0x800034d0]<br>0x0201FCFC2AA26096|- rs2_w1_val == 67108864<br> - rs2_w0_val == -9<br> - rs1_w1_val == -129<br>                                                                                                                                                                                                                                  |[0x80000af8]:KMABT32 t6, t5, t4<br> [0x80000afc]:sd t6, 432(ra)<br>    |
|  46|[0x800034e0]<br>0x0201FCFC21A26096|- rs2_w1_val == 16777216<br> - rs1_w1_val == -1048577<br>                                                                                                                                                                                                                                                     |[0x80000b20]:KMABT32 t6, t5, t4<br> [0x80000b24]:sd t6, 448(ra)<br>    |
|  47|[0x800034f0]<br>0x0201FCFC22A26096|- rs2_w1_val == 8388608<br> - rs1_w1_val == -9<br>                                                                                                                                                                                                                                                            |[0x80000b48]:KMABT32 t6, t5, t4<br> [0x80000b4c]:sd t6, 464(ra)<br>    |
|  48|[0x80003500]<br>0x0201FCFC23626096|- rs2_w1_val == 4194304<br>                                                                                                                                                                                                                                                                                   |[0x80000b6c]:KMABT32 t6, t5, t4<br> [0x80000b70]:sd t6, 480(ra)<br>    |
|  49|[0x80003510]<br>0x0201FD3C23626096|- rs2_w1_val == 2097152<br> - rs2_w0_val == -5<br> - rs1_w0_val == 131072<br>                                                                                                                                                                                                                                 |[0x80000b94]:KMABT32 t6, t5, t4<br> [0x80000b98]:sd t6, 496(ra)<br>    |
|  50|[0x80003520]<br>0x02023D3C23626096|- rs2_w1_val == 1048576<br> - rs2_w0_val == -134217729<br> - rs1_w0_val == 67108864<br>                                                                                                                                                                                                                       |[0x80000bb4]:KMABT32 t6, t5, t4<br> [0x80000bb8]:sd t6, 512(ra)<br>    |
|  51|[0x80003530]<br>0x02023D4C23626096|- rs2_w1_val == 524288<br> - rs2_w0_val == 16<br> - rs1_w1_val == 2<br>                                                                                                                                                                                                                                       |[0x80000bd8]:KMABT32 t6, t5, t4<br> [0x80000bdc]:sd t6, 528(ra)<br>    |
|  52|[0x80003540]<br>0x02033D4C23626096|- rs2_w1_val == 262144<br> - rs1_w1_val == -1073741825<br>                                                                                                                                                                                                                                                    |[0x80000c04]:KMABT32 t6, t5, t4<br> [0x80000c08]:sd t6, 544(ra)<br>    |
|  53|[0x80003550]<br>0x02023D4C21626096|- rs2_w0_val == 65536<br> - rs1_w0_val == 33554432<br>                                                                                                                                                                                                                                                        |[0x80000c34]:KMABT32 t6, t5, t4<br> [0x80000c38]:sd t6, 560(ra)<br>    |
|  54|[0x80003560]<br>0x0201BD4C20626096|- rs2_w0_val == 32<br> - rs1_w1_val == 1<br> - rs1_w0_val == 16777216<br>                                                                                                                                                                                                                                     |[0x80000c58]:KMABT32 t6, t5, t4<br> [0x80000c5c]:sd t6, 576(ra)<br>    |
|  55|[0x80003570]<br>0x0201BD4820526096|- rs1_w0_val == 1048576<br>                                                                                                                                                                                                                                                                                   |[0x80000c7c]:KMABT32 t6, t5, t4<br> [0x80000c80]:sd t6, 592(ra)<br>    |
|  56|[0x80003580]<br>0x01FFBD48204A6096|- rs1_w0_val == 524288<br>                                                                                                                                                                                                                                                                                    |[0x80000ca4]:KMABT32 t6, t5, t4<br> [0x80000ca8]:sd t6, 608(ra)<br>    |
|  57|[0x80003590]<br>0x01FFBD4820626096|- rs1_w1_val == 268435456<br> - rs1_w0_val == 262144<br>                                                                                                                                                                                                                                                      |[0x80000ccc]:KMABT32 t6, t5, t4<br> [0x80000cd0]:sd t6, 624(ra)<br>    |
|  58|[0x800035a0]<br>0x01FFBD2820616096|- rs2_w0_val == -1431655766<br> - rs1_w0_val == 65536<br>                                                                                                                                                                                                                                                     |[0x80000cfc]:KMABT32 t6, t5, t4<br> [0x80000d00]:sd t6, 640(ra)<br>    |
|  59|[0x800035b0]<br>0x01FFBD28205DE096|- rs2_w0_val == 131072<br> - rs1_w0_val == 32768<br>                                                                                                                                                                                                                                                          |[0x80000d20]:KMABT32 t6, t5, t4<br> [0x80000d24]:sd t6, 656(ra)<br>    |
|  60|[0x800035c0]<br>0x01FFBCA8205DA096|- rs2_w0_val == -2097153<br> - rs1_w0_val == 16384<br>                                                                                                                                                                                                                                                        |[0x80000d50]:KMABT32 t6, t5, t4<br> [0x80000d54]:sd t6, 672(ra)<br>    |
|  61|[0x800035d0]<br>0x01FFBCA6205D9096|- rs1_w1_val == 4096<br> - rs1_w0_val == 4096<br>                                                                                                                                                                                                                                                             |[0x80000d78]:KMABT32 t6, t5, t4<br> [0x80000d7c]:sd t6, 688(ra)<br>    |
|  62|[0x800035e0]<br>0x01FFBCA6205DAC96|- rs1_w1_val == 65536<br> - rs1_w0_val == 1024<br>                                                                                                                                                                                                                                                            |[0x80000d9c]:KMABT32 t6, t5, t4<br> [0x80000da0]:sd t6, 704(ra)<br>    |
|  63|[0x800035f0]<br>0x01FFBCA6206DAC96|- rs2_w1_val == 2048<br> - rs1_w1_val == -32769<br> - rs1_w0_val == 512<br>                                                                                                                                                                                                                                   |[0x80000dc4]:KMABT32 t6, t5, t4<br> [0x80000dc8]:sd t6, 720(ra)<br>    |
|  64|[0x80003600]<br>0x01FFBCA61F6DAB96|- rs2_w0_val == 1048576<br> - rs1_w1_val == -2097153<br> - rs1_w0_val == 256<br>                                                                                                                                                                                                                              |[0x80000dec]:KMABT32 t6, t5, t4<br> [0x80000df0]:sd t6, 736(ra)<br>    |
|  65|[0x80003610]<br>0x01FFBCA61F2DAB56|- rs2_w0_val == 262144<br> - rs1_w0_val == 64<br>                                                                                                                                                                                                                                                             |[0x80000e10]:KMABT32 t6, t5, t4<br> [0x80000e14]:sd t6, 752(ra)<br>    |
|  66|[0x80003620]<br>0x01FFBCA6172DAB36|- rs2_w0_val == -16777217<br> - rs1_w0_val == 32<br>                                                                                                                                                                                                                                                          |[0x80000e38]:KMABT32 t6, t5, t4<br> [0x80000e3c]:sd t6, 768(ra)<br>    |
|  67|[0x80003630]<br>0x01FFBCA6192DAB36|- rs1_w0_val == 8<br>                                                                                                                                                                                                                                                                                         |[0x80000e60]:KMABT32 t6, t5, t4<br> [0x80000e64]:sd t6, 784(ra)<br>    |
|  68|[0x80003640]<br>0x01FFBCA619ADAB37|- rs1_w0_val == -1<br>                                                                                                                                                                                                                                                                                        |[0x80000e8c]:KMABT32 t6, t5, t4<br> [0x80000e90]:sd t6, 800(ra)<br>    |
|  69|[0x80003650]<br>0x01FFBCE619ADAB37|- rs2_w1_val == 131072<br> - rs2_w0_val == 512<br> - rs1_w1_val == 64<br>                                                                                                                                                                                                                                     |[0x80000eb0]:KMABT32 t6, t5, t4<br> [0x80000eb4]:sd t6, 816(ra)<br>    |
|  70|[0x80003660]<br>0x01FFBCE619CDAB37|- rs2_w1_val == 32768<br> - rs2_w0_val == -16385<br>                                                                                                                                                                                                                                                          |[0x80000ee0]:KMABT32 t6, t5, t4<br> [0x80000ee4]:sd t6, 832(ra)<br>    |
|  71|[0x80003670]<br>0x01FFBCC619CD6B37|- rs2_w1_val == 16384<br>                                                                                                                                                                                                                                                                                     |[0x80000f0c]:KMABT32 t6, t5, t4<br> [0x80000f10]:sd t6, 848(ra)<br>    |
|  72|[0x80003680]<br>0x01FFBCC6194D4B37|- rs2_w1_val == 8192<br> - rs2_w0_val == -1073741825<br> - rs1_w0_val == -1025<br>                                                                                                                                                                                                                            |[0x80000f34]:KMABT32 t6, t5, t4<br> [0x80000f38]:sd t6, 864(ra)<br>    |
|  73|[0x80003690]<br>0x01FFBCC61D4D4B37|- rs2_w1_val == 4096<br> - rs1_w1_val == -2<br>                                                                                                                                                                                                                                                               |[0x80000f5c]:KMABT32 t6, t5, t4<br> [0x80000f60]:sd t6, 880(ra)<br>    |
|  74|[0x800036a0]<br>0x01FFBBC61D4D4B37|- rs2_w1_val == 1024<br> - rs2_w0_val == 4<br>                                                                                                                                                                                                                                                                |[0x80000f7c]:KMABT32 t6, t5, t4<br> [0x80000f80]:sd t6, 896(ra)<br>    |
|  75|[0x800036b0]<br>0x01FFBBC61D4D4337|- rs2_w1_val == 512<br>                                                                                                                                                                                                                                                                                       |[0x80000fa4]:KMABT32 t6, t5, t4<br> [0x80000fa8]:sd t6, 912(ra)<br>    |
|  76|[0x800036c0]<br>0x01FFBC061D4D4337|- rs2_w1_val == 256<br> - rs2_w0_val == -65537<br> - rs1_w1_val == -4194305<br>                                                                                                                                                                                                                               |[0x80000fcc]:KMABT32 t6, t5, t4<br> [0x80000fd0]:sd t6, 928(ra)<br>    |
|  77|[0x800036d0]<br>0x01FFBC061D4D47B7|- rs2_w1_val == 128<br>                                                                                                                                                                                                                                                                                       |[0x80000ff0]:KMABT32 t6, t5, t4<br> [0x80000ff4]:sd t6, 944(ra)<br>    |
|  78|[0x800036e0]<br>0x01FFBBF0C7F7F237|- rs2_w1_val == 64<br>                                                                                                                                                                                                                                                                                        |[0x80001024]:KMABT32 t6, t5, t4<br> [0x80001028]:sd t6, 960(ra)<br>    |
|  79|[0x800036f0]<br>0x01FFBBF0C7F7F1D7|- rs2_w1_val == 32<br> - rs1_w0_val == -3<br>                                                                                                                                                                                                                                                                 |[0x80001048]:KMABT32 t6, t5, t4<br> [0x8000104c]:sd t6, 976(ra)<br>    |
|  80|[0x80003700]<br>0x01FFBBF0C7EFF1C7|- rs2_w1_val == 16<br> - rs2_w0_val == -262145<br> - rs1_w0_val == -32769<br>                                                                                                                                                                                                                                 |[0x80001078]:KMABT32 t6, t5, t4<br> [0x8000107c]:sd t6, 992(ra)<br>    |
|  81|[0x80003710]<br>0x01FFBBF0C82FF1C7|- rs2_w1_val == 8<br> - rs1_w1_val == 4194304<br>                                                                                                                                                                                                                                                             |[0x8000109c]:KMABT32 t6, t5, t4<br> [0x800010a0]:sd t6, 1008(ra)<br>   |
|  82|[0x80003720]<br>0x01FFBBF0C82FF183|- rs2_w1_val == 4<br> - rs2_w0_val == -1048577<br> - rs1_w1_val == 1073741824<br>                                                                                                                                                                                                                             |[0x800010c8]:KMABT32 t6, t5, t4<br> [0x800010cc]:sd t6, 1024(ra)<br>   |
|  83|[0x80003730]<br>0x01FFBBF0C80FF181|- rs2_w1_val == 2<br> - rs2_w0_val == 1024<br>                                                                                                                                                                                                                                                                |[0x800010f0]:KMABT32 t6, t5, t4<br> [0x800010f4]:sd t6, 1040(ra)<br>   |
|  84|[0x80003740]<br>0x01FFBBF0C90FF181|- rs2_w1_val == 1<br>                                                                                                                                                                                                                                                                                         |[0x80001110]:KMABT32 t6, t5, t4<br> [0x80001114]:sd t6, 1056(ra)<br>   |
|  85|[0x80003750]<br>0x01FFBBB0C90FF181|- rs2_w0_val == 32768<br>                                                                                                                                                                                                                                                                                     |[0x80001138]:KMABT32 t6, t5, t4<br> [0x8000113c]:sd t6, 1072(ra)<br>   |
|  86|[0x80003760]<br>0x01FFBBB0C917F181|- rs2_w0_val == 8192<br>                                                                                                                                                                                                                                                                                      |[0x80001164]:KMABT32 t6, t5, t4<br> [0x80001168]:sd t6, 1088(ra)<br>   |
|  87|[0x80003770]<br>0x01FFC10673C2A6D7|- rs2_w0_val == 4096<br>                                                                                                                                                                                                                                                                                      |[0x8000119c]:KMABT32 t6, t5, t4<br> [0x800011a0]:sd t6, 1104(ra)<br>   |
|  88|[0x80003780]<br>0x01FFC10673E2E758|- rs2_w0_val == 2048<br> - rs1_w1_val == -268435457<br>                                                                                                                                                                                                                                                       |[0x800011cc]:KMABT32 t6, t5, t4<br> [0x800011d0]:sd t6, 1120(ra)<br>   |
|  89|[0x80003790]<br>0x01FFC10673E30969|- rs2_w0_val == 8<br> - rs1_w1_val == 16384<br>                                                                                                                                                                                                                                                               |[0x800011f4]:KMABT32 t6, t5, t4<br> [0x800011f8]:sd t6, 1136(ra)<br>   |
|  90|[0x800037b0]<br>0x01FF965B73E32014|- rs2_w0_val == 67108864<br> - rs1_w1_val == -1431655766<br>                                                                                                                                                                                                                                                  |[0x8000124c]:KMABT32 t6, t5, t4<br> [0x80001250]:sd t6, 1168(ra)<br>   |
|  91|[0x800037c0]<br>0x01FF965BF3E32012|- rs1_w1_val == 2147483647<br>                                                                                                                                                                                                                                                                                |[0x80001278]:KMABT32 t6, t5, t4<br> [0x8000127c]:sd t6, 1184(ra)<br>   |
|  92|[0x800037d0]<br>0x1754EBB133E32012|- rs1_w1_val == -536870913<br>                                                                                                                                                                                                                                                                                |[0x800012ac]:KMABT32 t6, t5, t4<br> [0x800012b0]:sd t6, 1200(ra)<br>   |
|  93|[0x800037e0]<br>0x1754EBB12BE31FD2|- rs1_w1_val == -131073<br>                                                                                                                                                                                                                                                                                   |[0x800012d4]:KMABT32 t6, t5, t4<br> [0x800012d8]:sd t6, 1216(ra)<br>   |
|  94|[0x800037f0]<br>0x1754EBB12BE317D0|- rs1_w1_val == -16385<br>                                                                                                                                                                                                                                                                                    |[0x800012fc]:KMABT32 t6, t5, t4<br> [0x80001300]:sd t6, 1232(ra)<br>   |
|  95|[0x80003800]<br>0x1754EFB12C3317D1|- rs1_w1_val == -8193<br>                                                                                                                                                                                                                                                                                     |[0x8000132c]:KMABT32 t6, t5, t4<br> [0x80001330]:sd t6, 1248(ra)<br>   |
|  96|[0x80003810]<br>0x1754EFB12C330FB1|- rs1_w1_val == -2049<br> - rs1_w0_val == -65<br>                                                                                                                                                                                                                                                             |[0x80001350]:KMABT32 t6, t5, t4<br> [0x80001354]:sd t6, 1264(ra)<br>   |
|  97|[0x80003820]<br>0x1754EFB12C338FB2|- rs1_w1_val == -1025<br>                                                                                                                                                                                                                                                                                     |[0x80001378]:KMABT32 t6, t5, t4<br> [0x8000137c]:sd t6, 1280(ra)<br>   |
|  98|[0x80003830]<br>0x1754EFB12C33AFB2|- rs1_w1_val == -513<br>                                                                                                                                                                                                                                                                                      |[0x8000139c]:KMABT32 t6, t5, t4<br> [0x800013a0]:sd t6, 1296(ra)<br>   |
|  99|[0x80003840]<br>0x1754AFB12C13AFB2|- rs1_w1_val == -257<br> - rs1_w0_val == -33554433<br>                                                                                                                                                                                                                                                        |[0x800013c4]:KMABT32 t6, t5, t4<br> [0x800013c8]:sd t6, 1312(ra)<br>   |
| 100|[0x80003850]<br>0x1754AFB12C1C2FC3|- rs1_w1_val == -33<br>                                                                                                                                                                                                                                                                                       |[0x800013ec]:KMABT32 t6, t5, t4<br> [0x800013f0]:sd t6, 1328(ra)<br>   |
| 101|[0x80003860]<br>0x1754AFD12C1C2FC3|- rs1_w1_val == -3<br>                                                                                                                                                                                                                                                                                        |[0x80001414]:KMABT32 t6, t5, t4<br> [0x80001418]:sd t6, 1344(ra)<br>   |
| 102|[0x80003870]<br>0x1754B7D1AC1C2FC3|- rs1_w1_val == 134217728<br>                                                                                                                                                                                                                                                                                 |[0x80001438]:KMABT32 t6, t5, t4<br> [0x8000143c]:sd t6, 1360(ra)<br>   |
| 103|[0x80003880]<br>0x1754B7D1AA1B2FC3|- rs1_w1_val == 67108864<br> - rs1_w0_val == -513<br>                                                                                                                                                                                                                                                         |[0x80001464]:KMABT32 t6, t5, t4<br> [0x80001468]:sd t6, 1376(ra)<br>   |
| 104|[0x80003890]<br>0x1754B7D1AA1B2FC3|- rs1_w1_val == 33554432<br>                                                                                                                                                                                                                                                                                  |[0x80001484]:KMABT32 t6, t5, t4<br> [0x80001488]:sd t6, 1392(ra)<br>   |
| 105|[0x800038a0]<br>0x1754B7D1AA1BAFC7|- rs1_w1_val == 16777216<br>                                                                                                                                                                                                                                                                                  |[0x800014b0]:KMABT32 t6, t5, t4<br> [0x800014b4]:sd t6, 1408(ra)<br>   |
| 106|[0x800038b0]<br>0x1754B7D1AA1B8BBE|- rs1_w1_val == 8388608<br>                                                                                                                                                                                                                                                                                   |[0x800014dc]:KMABT32 t6, t5, t4<br> [0x800014e0]:sd t6, 1424(ra)<br>   |
| 107|[0x800038c0]<br>0x1754B7D1AA1BCBC2|- rs1_w1_val == 524288<br>                                                                                                                                                                                                                                                                                    |[0x80001504]:KMABT32 t6, t5, t4<br> [0x80001508]:sd t6, 1440(ra)<br>   |
| 108|[0x800038d0]<br>0x1754B7D1AA1BCB3E|- rs1_w1_val == 262144<br>                                                                                                                                                                                                                                                                                    |[0x80001528]:KMABT32 t6, t5, t4<br> [0x8000152c]:sd t6, 1456(ra)<br>   |
| 109|[0x800038e0]<br>0x1754B67BFF7121E9|- rs2_w0_val == -268435457<br> - rs1_w1_val == 131072<br>                                                                                                                                                                                                                                                     |[0x8000155c]:KMABT32 t6, t5, t4<br> [0x80001560]:sd t6, 1472(ra)<br>   |
| 110|[0x800038f0]<br>0x1754D67C1F7221EA|- rs1_w1_val == 1024<br>                                                                                                                                                                                                                                                                                      |[0x8000158c]:KMABT32 t6, t5, t4<br> [0x80001590]:sd t6, 1488(ra)<br>   |
| 111|[0x80003910]<br>0x1754D67C1F6A19EA|- rs1_w1_val == 128<br>                                                                                                                                                                                                                                                                                       |[0x800015d4]:KMABT32 t6, t5, t4<br> [0x800015d8]:sd t6, 1520(ra)<br>   |
| 112|[0x80003920]<br>0x1754D67C1F6A11EA|- rs2_w1_val == -1<br>                                                                                                                                                                                                                                                                                        |[0x800015f4]:KMABT32 t6, t5, t4<br> [0x800015f8]:sd t6, 1536(ra)<br>   |
| 113|[0x80003930]<br>0x1754D67B74BF673E|- rs2_w0_val == 2147483647<br>                                                                                                                                                                                                                                                                                |[0x80001624]:KMABT32 t6, t5, t4<br> [0x80001628]:sd t6, 1552(ra)<br>   |
| 114|[0x80003940]<br>0x1B54D67BC4BF673F|- rs1_w1_val == 4<br>                                                                                                                                                                                                                                                                                         |[0x80001648]:KMABT32 t6, t5, t4<br> [0x8000164c]:sd t6, 1568(ra)<br>   |
| 115|[0x80003950]<br>0x1B54D67BC4BF6843|- rs1_w1_val == -1<br>                                                                                                                                                                                                                                                                                        |[0x80001664]:KMABT32 t6, t5, t4<br> [0x80001668]:sd t6, 1584(ra)<br>   |
| 116|[0x80003960]<br>0x1B50D67B44C76844|- rs1_w0_val == 2147483647<br>                                                                                                                                                                                                                                                                                |[0x8000168c]:KMABT32 t6, t5, t4<br> [0x80001690]:sd t6, 1600(ra)<br>   |
| 117|[0x80003970]<br>0x1B50D67BA4C76844|- rs2_w0_val == -524289<br>                                                                                                                                                                                                                                                                                   |[0x800016b4]:KMABT32 t6, t5, t4<br> [0x800016b8]:sd t6, 1616(ra)<br>   |
| 118|[0x80003980]<br>0x1B50D67C2CC76855|- rs1_w0_val == -134217729<br>                                                                                                                                                                                                                                                                                |[0x800016dc]:KMABT32 t6, t5, t4<br> [0x800016e0]:sd t6, 1632(ra)<br>   |
| 119|[0x80003990]<br>0x1B50D67C18C76850|- rs1_w0_val == -67108865<br>                                                                                                                                                                                                                                                                                 |[0x80001704]:KMABT32 t6, t5, t4<br> [0x80001708]:sd t6, 1648(ra)<br>   |
| 120|[0x800039a0]<br>0x1B50D67418BF6850|- rs2_w0_val == -131073<br>                                                                                                                                                                                                                                                                                   |[0x8000173c]:KMABT32 t6, t5, t4<br> [0x80001740]:sd t6, 1664(ra)<br>   |
| 121|[0x800039b0]<br>0x1B50D6741EBF6856|- rs1_w0_val == -16777217<br>                                                                                                                                                                                                                                                                                 |[0x80001768]:KMABT32 t6, t5, t4<br> [0x8000176c]:sd t6, 1680(ra)<br>   |
| 122|[0x800039c0]<br>0x1B50D5F41EBD6856|- rs1_w0_val == -4194305<br>                                                                                                                                                                                                                                                                                  |[0x80001794]:KMABT32 t6, t5, t4<br> [0x80001798]:sd t6, 1696(ra)<br>   |
| 123|[0x800039d0]<br>0x1B50D5F41EBD6854|- rs2_w0_val == -4097<br>                                                                                                                                                                                                                                                                                     |[0x800017b4]:KMABT32 t6, t5, t4<br> [0x800017b8]:sd t6, 1712(ra)<br>   |
| 124|[0x800039e0]<br>0x1B50D5F422C568D5|- rs1_w0_val == -524289<br>                                                                                                                                                                                                                                                                                   |[0x800017e4]:KMABT32 t6, t5, t4<br> [0x800017e8]:sd t6, 1728(ra)<br>   |
| 125|[0x800039f0]<br>0x1B50D5F420C56855|- rs1_w0_val == -262145<br>                                                                                                                                                                                                                                                                                   |[0x80001810]:KMABT32 t6, t5, t4<br> [0x80001814]:sd t6, 1744(ra)<br>   |
| 126|[0x80003a00]<br>0x1B4CD5F418C56855|- rs2_w0_val == -129<br>                                                                                                                                                                                                                                                                                      |[0x8000183c]:KMABT32 t6, t5, t4<br> [0x80001840]:sd t6, 1760(ra)<br>   |
| 127|[0x80003a10]<br>0x1B4CD5F3D8BD6855|- rs1_w0_val == -2049<br>                                                                                                                                                                                                                                                                                     |[0x80001870]:KMABT32 t6, t5, t4<br> [0x80001874]:sd t6, 1776(ra)<br>   |
| 128|[0x80003a20]<br>0x1B4CD1F3D8B56855|- rs2_w0_val == -3<br>                                                                                                                                                                                                                                                                                        |[0x80001894]:KMABT32 t6, t5, t4<br> [0x80001898]:sd t6, 1792(ra)<br>   |
| 129|[0x80003a30]<br>0x1B4CD1F3D8AD2855|- rs2_w0_val == -2<br> - rs1_w0_val == -33<br>                                                                                                                                                                                                                                                                |[0x800018c0]:KMABT32 t6, t5, t4<br> [0x800018c4]:sd t6, 1808(ra)<br>   |
| 130|[0x80003a40]<br>0x1B4CD1F3D82CA855|- rs1_w0_val == -257<br>                                                                                                                                                                                                                                                                                      |[0x800018f4]:KMABT32 t6, t5, t4<br> [0x800018f8]:sd t6, 1824(ra)<br>   |
| 131|[0x80003a50]<br>0x1B4CD1F2D81CA855|- rs2_w0_val == 1073741824<br>                                                                                                                                                                                                                                                                                |[0x80001920]:KMABT32 t6, t5, t4<br> [0x80001924]:sd t6, 1840(ra)<br>   |
| 132|[0x80003a60]<br>0x1B4CD1F2C79CA855|- rs2_w0_val == 536870912<br>                                                                                                                                                                                                                                                                                 |[0x80001940]:KMABT32 t6, t5, t4<br> [0x80001944]:sd t6, 1856(ra)<br>   |
| 133|[0x80003a70]<br>0x1B4CD1F2479CA855|- rs2_w0_val == 33554432<br>                                                                                                                                                                                                                                                                                  |[0x80001960]:KMABT32 t6, t5, t4<br> [0x80001964]:sd t6, 1872(ra)<br>   |
| 134|[0x80003a80]<br>0x1B4CD1F0879CA85C|- rs2_w0_val == 8388608<br>                                                                                                                                                                                                                                                                                   |[0x80001988]:KMABT32 t6, t5, t4<br> [0x8000198c]:sd t6, 1888(ra)<br>   |
| 135|[0x80003a90]<br>0x1B4CC9F07F9CA85C|- rs2_w0_val == 268435456<br> - rs1_w0_val == 134217728<br>                                                                                                                                                                                                                                                   |[0x800019ac]:KMABT32 t6, t5, t4<br> [0x800019b0]:sd t6, 1904(ra)<br>   |
| 136|[0x80003ac0]<br>0x1B8CCA00401CA85D|- rs2_w1_val == -131073<br> - rs2_w0_val == -257<br>                                                                                                                                                                                                                                                          |[0x80001a24]:KMABT32 t6, t5, t4<br> [0x80001a28]:sd t6, 1952(ra)<br>   |
