
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001910')]      |
| SIG_REGION                | [('0x80003210', '0x80003a60', '266 dwords')]      |
| COV_LABELS                | ukcrsa32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/ukcrsa32-01.S    |
| Total Number of coverpoints| 384     |
| Total Coverpoints Hit     | 378      |
| Total Signature Updates   | 266      |
| STAT1                     | 130      |
| STAT2                     | 3      |
| STAT3                     | 0     |
| STAT4                     | 133     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800011b4]:UKCRSA32 t6, t5, t4
      [0x800011b8]:sd t6, 864(ra)
 -- Signature Address: 0x80003780 Data: 0x55555555FFFFFF8E
 -- Redundant Coverpoints hit by the op
      - opcode : ukcrsa32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0
      - rs2_w1_val == 4294967167
      - rs2_w0_val == 0
      - rs1_w1_val == 1431655765




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800018b0]:UKCRSA32 t6, t5, t4
      [0x800018b4]:sd t6, 1552(ra)
 -- Signature Address: 0x80003a30 Data: 0x0000000000000007
 -- Redundant Coverpoints hit by the op
      - opcode : ukcrsa32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == 0
      - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800018d4]:UKCRSA32 t6, t5, t4
      [0x800018d8]:sd t6, 1568(ra)
 -- Signature Address: 0x80003a40 Data: 0x0000000F02000010
 -- Redundant Coverpoints hit by the op
      - opcode : ukcrsa32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == 16
      - rs2_w0_val == 1
      - rs1_w1_val == 16
      - rs1_w0_val == 33554432






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ukcrsa32', 'rs1 : x20', 'rs2 : x20', 'rd : x3', 'rs1 == rs2 != rd', 'rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0']
Last Code Sequence : 
	-[0x800003b8]:UKCRSA32 gp, s4, s4
	-[0x800003bc]:sd gp, 0(ra)
Current Store : [0x800003c0] : sd s4, 8(ra) -- Store: [0x80003218]:0x000000070000000E




Last Coverpoint : ['rs1 : x29', 'rs2 : x29', 'rd : x29', 'rs1 == rs2 == rd', 'rs2_w1_val == 16', 'rs2_w0_val == 1', 'rs1_w1_val == 16', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x800003dc]:UKCRSA32 t4, t4, t4
	-[0x800003e0]:sd t4, 16(ra)
Current Store : [0x800003e4] : sd t4, 24(ra) -- Store: [0x80003228]:0x0000000F00000011




Last Coverpoint : ['rs1 : x12', 'rs2 : x23', 'rd : x20', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs2_w0_val == 4261412863', 'rs1_w1_val == 131072', 'rs1_w0_val == 4261412863']
Last Code Sequence : 
	-[0x80000404]:UKCRSA32 s4, a2, s7
	-[0x80000408]:sd s4, 32(ra)
Current Store : [0x8000040c] : sd a2, 40(ra) -- Store: [0x80003238]:0x00020000FDFFFFFF




Last Coverpoint : ['rs1 : x31', 'rs2 : x14', 'rd : x31', 'rs1 == rd != rs2', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 2863311530', 'rs1_w1_val == 268435456', 'rs1_w0_val == 4160749567']
Last Code Sequence : 
	-[0x80000434]:UKCRSA32 t6, t6, a4
	-[0x80000438]:sd t6, 48(ra)
Current Store : [0x8000043c] : sd t6, 56(ra) -- Store: [0x80003248]:0x0FFFFFEEFFFFFFFF




Last Coverpoint : ['rs1 : x26', 'rs2 : x18', 'rd : x18', 'rs2 == rd != rs1', 'rs2_w1_val == 1431655765', 'rs2_w0_val == 262144', 'rs1_w1_val == 4294836223', 'rs1_w0_val == 4294967279']
Last Code Sequence : 
	-[0x80000460]:UKCRSA32 s2, s10, s2
	-[0x80000464]:sd s2, 64(ra)
Current Store : [0x80000468] : sd s10, 72(ra) -- Store: [0x80003258]:0xFFFDFFFFFFFFFFEF




Last Coverpoint : ['rs1 : x24', 'rs2 : x17', 'rd : x30', 'rs2_w1_val == 2147483647', 'rs2_w0_val == 32768', 'rs1_w1_val == 536870912', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000490]:UKCRSA32 t5, s8, a7
	-[0x80000494]:sd t5, 80(ra)
Current Store : [0x80000498] : sd s8, 88(ra) -- Store: [0x80003268]:0x2000000004000000




Last Coverpoint : ['rs1 : x25', 'rs2 : x6', 'rd : x13', 'rs2_w1_val == 3221225471', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x800004b8]:UKCRSA32 a3, s9, t1
	-[0x800004bc]:sd a3, 96(ra)
Current Store : [0x800004c0] : sd s9, 104(ra) -- Store: [0x80003278]:0x0000000A00200000




Last Coverpoint : ['rs1 : x15', 'rs2 : x21', 'rd : x16', 'rs2_w1_val == 3758096383', 'rs2_w0_val == 4293918719', 'rs1_w1_val == 4278190079', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x800004e8]:UKCRSA32 a6, a5, s5
	-[0x800004ec]:sd a6, 112(ra)
Current Store : [0x800004f0] : sd a5, 120(ra) -- Store: [0x80003288]:0xFEFFFFFF00800000




Last Coverpoint : ['rs1 : x18', 'rs2 : x16', 'rd : x5', 'rs2_w1_val == 4026531839', 'rs2_w0_val == 4294967039', 'rs1_w1_val == 0', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000504]:UKCRSA32 t0, s2, a6
	-[0x80000508]:sd t0, 128(ra)
Current Store : [0x8000050c] : sd s2, 136(ra) -- Store: [0x80003298]:0x0000000000000020




Last Coverpoint : ['rs1 : x3', 'rs2 : x4', 'rd : x23', 'rs2_w1_val == 4160749567', 'rs2_w0_val == 2863311530', 'rs1_w1_val == 2097152', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000538]:UKCRSA32 s7, gp, tp
	-[0x8000053c]:sd s7, 144(ra)
Current Store : [0x80000540] : sd gp, 152(ra) -- Store: [0x800032a8]:0x0020000000000400




Last Coverpoint : ['rs1 : x0', 'rs2 : x25', 'rd : x10', 'rs1_w0_val == 0', 'rs2_w1_val == 4227858431', 'rs2_w0_val == 4294443007']
Last Code Sequence : 
	-[0x80000560]:UKCRSA32 a0, zero, s9
	-[0x80000564]:sd a0, 160(ra)
Current Store : [0x80000568] : sd zero, 168(ra) -- Store: [0x800032b8]:0x0000000000000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x10', 'rd : x25', 'rs2_w1_val == 4261412863', 'rs2_w0_val == 67108864', 'rs1_w1_val == 4294950911', 'rs1_w0_val == 4286578687']
Last Code Sequence : 
	-[0x8000058c]:UKCRSA32 s9, s5, a0
	-[0x80000590]:sd s9, 176(ra)
Current Store : [0x80000594] : sd s5, 184(ra) -- Store: [0x800032c8]:0xFFFFBFFFFF7FFFFF




Last Coverpoint : ['rs1 : x7', 'rs2 : x22', 'rd : x21', 'rs2_w1_val == 4278190079', 'rs1_w1_val == 2048', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x800005b4]:UKCRSA32 s5, t2, s6
	-[0x800005b8]:sd s5, 192(ra)
Current Store : [0x800005bc] : sd t2, 200(ra) -- Store: [0x800032d8]:0x0000080000000200




Last Coverpoint : ['rs1 : x9', 'rs2 : x2', 'rd : x15', 'rs2_w1_val == 4286578687']
Last Code Sequence : 
	-[0x800005e8]:UKCRSA32 a5, s1, sp
	-[0x800005ec]:sd a5, 208(ra)
Current Store : [0x800005f0] : sd s1, 216(ra) -- Store: [0x800032e8]:0x0000000D0000000D




Last Coverpoint : ['rs1 : x8', 'rs2 : x9', 'rd : x11', 'rs2_w1_val == 4290772991', 'rs2_w0_val == 4294950911', 'rs1_w1_val == 4294967291', 'rs1_w0_val == 2863311530']
Last Code Sequence : 
	-[0x80000618]:UKCRSA32 a1, fp, s1
	-[0x8000061c]:sd a1, 224(ra)
Current Store : [0x80000620] : sd fp, 232(ra) -- Store: [0x800032f8]:0xFFFFFFFBAAAAAAAA




Last Coverpoint : ['rs1 : x1', 'rs2 : x13', 'rd : x0', 'rs2_w1_val == 4292870143', 'rs2_w0_val == 4294967295']
Last Code Sequence : 
	-[0x80000644]:UKCRSA32 zero, ra, a3
	-[0x80000648]:sd zero, 0(s2)
Current Store : [0x8000064c] : sd ra, 8(s2) -- Store: [0x80003308]:0x0000000F0000000A




Last Coverpoint : ['rs1 : x11', 'rs2 : x12', 'rd : x24', 'rs2_w1_val == 4293918719']
Last Code Sequence : 
	-[0x80000668]:UKCRSA32 s8, a1, a2
	-[0x8000066c]:sd s8, 16(s2)
Current Store : [0x80000670] : sd a1, 24(s2) -- Store: [0x80003318]:0x0000000900200000




Last Coverpoint : ['rs1 : x13', 'rs2 : x31', 'rd : x6', 'rs2_w1_val == 4294443007', 'rs1_w1_val == 512', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x8000068c]:UKCRSA32 t1, a3, t6
	-[0x80000690]:sd t1, 32(s2)
Current Store : [0x80000694] : sd a3, 40(s2) -- Store: [0x80003328]:0x0000020001000000




Last Coverpoint : ['rs1 : x14', 'rs2 : x26', 'rd : x7', 'rs2_w1_val == 4294705151', 'rs2_w0_val == 4294966271', 'rs1_w0_val == 4294967039']
Last Code Sequence : 
	-[0x800006b4]:UKCRSA32 t2, a4, s10
	-[0x800006b8]:sd t2, 48(s2)
Current Store : [0x800006bc] : sd a4, 56(s2) -- Store: [0x80003338]:0x10000000FFFFFEFF




Last Coverpoint : ['rs1 : x30', 'rs2 : x28', 'rd : x27', 'rs2_w1_val == 4294836223', 'rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x800006e4]:UKCRSA32 s11, t5, t3
	-[0x800006e8]:sd s11, 64(s2)
Current Store : [0x800006ec] : sd t5, 72(s2) -- Store: [0x80003348]:0x00001000AAAAAAAA




Last Coverpoint : ['rs1 : x27', 'rs2 : x1', 'rd : x14', 'rs2_w1_val == 4294901759', 'rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x80000718]:UKCRSA32 a4, s11, ra
	-[0x8000071c]:sd a4, 80(s2)
Current Store : [0x80000720] : sd s11, 88(s2) -- Store: [0x80003358]:0x55555555F7FFFFFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x0', 'rd : x9', 'rs2_w1_val == 0', 'rs2_w0_val == 0']
Last Code Sequence : 
	-[0x80000740]:UKCRSA32 s1, tp, zero
	-[0x80000744]:sd s1, 96(s2)
Current Store : [0x80000748] : sd tp, 104(s2) -- Store: [0x80003368]:0x0000000E0000000B




Last Coverpoint : ['rs1 : x17', 'rs2 : x8', 'rd : x2', 'rs2_w1_val == 4294950911', 'rs2_w0_val == 2097152', 'rs1_w1_val == 4290772991', 'rs1_w0_val == 4294967167']
Last Code Sequence : 
	-[0x80000764]:UKCRSA32 sp, a7, fp
	-[0x80000768]:sd sp, 112(s2)
Current Store : [0x8000076c] : sd a7, 120(s2) -- Store: [0x80003378]:0xFFBFFFFFFFFFFF7F




Last Coverpoint : ['rs1 : x2', 'rs2 : x11', 'rd : x8', 'rs2_w1_val == 4294959103', 'rs1_w1_val == 4294959103']
Last Code Sequence : 
	-[0x8000078c]:UKCRSA32 fp, sp, a1
	-[0x80000790]:sd fp, 128(s2)
Current Store : [0x80000794] : sd sp, 136(s2) -- Store: [0x80003388]:0xFFFFDFFF00000400




Last Coverpoint : ['rs1 : x22', 'rs2 : x30', 'rd : x28', 'rs2_w1_val == 4294963199', 'rs2_w0_val == 4286578687', 'rs1_w1_val == 4294967039', 'rs1_w0_val == 4294966271']
Last Code Sequence : 
	-[0x800007b4]:UKCRSA32 t3, s6, t5
	-[0x800007b8]:sd t3, 144(s2)
Current Store : [0x800007bc] : sd s6, 152(s2) -- Store: [0x80003398]:0xFFFFFEFFFFFFFBFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x24', 'rd : x12', 'rs2_w1_val == 4294965247', 'rs2_w0_val == 2147483648', 'rs1_w1_val == 4261412863', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x800007dc]:UKCRSA32 a2, t3, s8
	-[0x800007e0]:sd a2, 160(s2)
Current Store : [0x800007e4] : sd t3, 168(s2) -- Store: [0x800033a8]:0xFDFFFFFF00000100




Last Coverpoint : ['rs1 : x10', 'rs2 : x27', 'rd : x26', 'rs2_w1_val == 4294966271', 'rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x80000804]:UKCRSA32 s10, a0, s11
	-[0x80000808]:sd s10, 176(s2)
Current Store : [0x8000080c] : sd a0, 184(s2) -- Store: [0x800033b8]:0x4000000000000001




Last Coverpoint : ['rs1 : x6', 'rs2 : x15', 'rd : x4', 'rs2_w1_val == 4294966783', 'rs1_w1_val == 4194304', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000828]:UKCRSA32 tp, t1, a5
	-[0x8000082c]:sd tp, 192(s2)
Current Store : [0x80000830] : sd t1, 200(s2) -- Store: [0x800033c8]:0x0040000008000000




Last Coverpoint : ['rs1 : x16', 'rs2 : x3', 'rd : x19', 'rs2_w1_val == 4294967039', 'rs1_w1_val == 4227858431']
Last Code Sequence : 
	-[0x8000084c]:UKCRSA32 s3, a6, gp
	-[0x80000850]:sd s3, 208(s2)
Current Store : [0x80000854] : sd a6, 216(s2) -- Store: [0x800033d8]:0xFBFFFFFF00000200




Last Coverpoint : ['rs1 : x5', 'rs2 : x7', 'rd : x22', 'rs2_w1_val == 4294967167', 'rs2_w0_val == 1431655765', 'rs1_w1_val == 524288', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000874]:UKCRSA32 s6, t0, t2
	-[0x80000878]:sd s6, 224(s2)
Current Store : [0x8000087c] : sd t0, 232(s2) -- Store: [0x800033e8]:0x0008000002000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x19', 'rd : x17', 'rs2_w1_val == 4294967231', 'rs2_w0_val == 4227858431', 'rs1_w1_val == 2']
Last Code Sequence : 
	-[0x8000089c]:UKCRSA32 a7, s7, s3
	-[0x800008a0]:sd a7, 240(s2)
Current Store : [0x800008a4] : sd s7, 248(s2) -- Store: [0x800033f8]:0x0000000200000007




Last Coverpoint : ['rs1 : x19', 'rs2 : x5', 'rd : x1', 'rs2_w1_val == 4294967263', 'rs2_w0_val == 268435456', 'rs1_w1_val == 4294443007', 'rs1_w0_val == 4294967263']
Last Code Sequence : 
	-[0x800008bc]:UKCRSA32 ra, s3, t0
	-[0x800008c0]:sd ra, 256(s2)
Current Store : [0x800008c4] : sd s3, 264(s2) -- Store: [0x80003408]:0xFFF7FFFFFFFFFFDF




Last Coverpoint : ['rs2_w1_val == 4294967279', 'rs2_w0_val == 8192']
Last Code Sequence : 
	-[0x800008e4]:UKCRSA32 t6, t5, t4
	-[0x800008e8]:sd t6, 272(s2)
Current Store : [0x800008ec] : sd t5, 280(s2) -- Store: [0x80003418]:0x0000000CAAAAAAAA




Last Coverpoint : ['rs2_w1_val == 4294967287', 'rs2_w0_val == 2147483647', 'rs1_w1_val == 4286578687', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000914]:UKCRSA32 t6, t5, t4
	-[0x80000918]:sd t6, 0(ra)
Current Store : [0x8000091c] : sd t5, 8(ra) -- Store: [0x80003428]:0xFF7FFFFF7FFFFFFF




Last Coverpoint : ['rs2_w1_val == 4294967291', 'rs2_w0_val == 8388608', 'rs1_w1_val == 32', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000938]:UKCRSA32 t6, t5, t4
	-[0x8000093c]:sd t6, 16(ra)
Current Store : [0x80000940] : sd t5, 24(ra) -- Store: [0x80003438]:0x0000002000001000




Last Coverpoint : ['rs2_w1_val == 4294967293', 'rs1_w1_val == 8', 'rs1_w0_val == 4294959103']
Last Code Sequence : 
	-[0x80000960]:UKCRSA32 t6, t5, t4
	-[0x80000964]:sd t6, 32(ra)
Current Store : [0x80000968] : sd t5, 40(ra) -- Store: [0x80003448]:0x00000008FFFFDFFF




Last Coverpoint : ['rs2_w1_val == 4294967294', 'rs2_w0_val == 4278190079', 'rs1_w1_val == 33554432']
Last Code Sequence : 
	-[0x80000988]:UKCRSA32 t6, t5, t4
	-[0x8000098c]:sd t6, 48(ra)
Current Store : [0x80000990] : sd t5, 56(ra) -- Store: [0x80003458]:0x0200000001000000




Last Coverpoint : ['rs2_w1_val == 2147483648', 'rs2_w0_val == 4290772991', 'rs1_w1_val == 3758096383']
Last Code Sequence : 
	-[0x800009bc]:UKCRSA32 t6, t5, t4
	-[0x800009c0]:sd t6, 64(ra)
Current Store : [0x800009c4] : sd t5, 72(ra) -- Store: [0x80003468]:0xDFFFFFFF00001000




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs2_w0_val == 4160749567', 'rs1_w1_val == 4294967167', 'rs1_w0_val == 4294966783']
Last Code Sequence : 
	-[0x800009e8]:UKCRSA32 t6, t5, t4
	-[0x800009ec]:sd t6, 80(ra)
Current Store : [0x800009f0] : sd t5, 88(ra) -- Store: [0x80003478]:0xFFFFFF7FFFFFFDFF




Last Coverpoint : ['rs2_w1_val == 536870912', 'rs2_w0_val == 4294959103', 'rs1_w1_val == 4292870143', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000a24]:UKCRSA32 t6, t5, t4
	-[0x80000a28]:sd t6, 96(ra)
Current Store : [0x80000a2c] : sd t5, 104(ra) -- Store: [0x80003488]:0xFFDFFFFF55555555




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs1_w1_val == 256']
Last Code Sequence : 
	-[0x80000a48]:UKCRSA32 t6, t5, t4
	-[0x80000a4c]:sd t6, 112(ra)
Current Store : [0x80000a50] : sd t5, 120(ra) -- Store: [0x80003498]:0x000001000000000A




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs2_w0_val == 4294963199', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000a7c]:UKCRSA32 t6, t5, t4
	-[0x80000a80]:sd t6, 128(ra)
Current Store : [0x80000a84] : sd t5, 136(ra) -- Store: [0x800034a8]:0x0000000800000800




Last Coverpoint : ['rs2_w1_val == 67108864', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000aac]:UKCRSA32 t6, t5, t4
	-[0x80000ab0]:sd t6, 144(ra)
Current Store : [0x80000ab4] : sd t5, 152(ra) -- Store: [0x800034b8]:0x4000000000000080




Last Coverpoint : ['rs2_w1_val == 33554432', 'rs1_w1_val == 16777216']
Last Code Sequence : 
	-[0x80000ad0]:UKCRSA32 t6, t5, t4
	-[0x80000ad4]:sd t6, 160(ra)
Current Store : [0x80000ad8] : sd t5, 168(ra) -- Store: [0x800034c8]:0x010000000000000F




Last Coverpoint : ['rs2_w1_val == 16777216', 'rs1_w1_val == 2863311530', 'rs1_w0_val == 4294443007']
Last Code Sequence : 
	-[0x80000b08]:UKCRSA32 t6, t5, t4
	-[0x80000b0c]:sd t6, 176(ra)
Current Store : [0x80000b10] : sd t5, 184(ra) -- Store: [0x800034d8]:0xAAAAAAAAFFF7FFFF




Last Coverpoint : ['rs2_w1_val == 8388608', 'rs1_w1_val == 1', 'rs1_w0_val == 4294934527']
Last Code Sequence : 
	-[0x80000b34]:UKCRSA32 t6, t5, t4
	-[0x80000b38]:sd t6, 192(ra)
Current Store : [0x80000b3c] : sd t5, 200(ra) -- Store: [0x800034e8]:0x00000001FFFF7FFF




Last Coverpoint : ['rs2_w1_val == 4194304', 'rs2_w0_val == 2048']
Last Code Sequence : 
	-[0x80000b60]:UKCRSA32 t6, t5, t4
	-[0x80000b64]:sd t6, 208(ra)
Current Store : [0x80000b68] : sd t5, 216(ra) -- Store: [0x800034f8]:0x0000000A00000020




Last Coverpoint : ['rs2_w1_val == 2097152']
Last Code Sequence : 
	-[0x80000b88]:UKCRSA32 t6, t5, t4
	-[0x80000b8c]:sd t6, 224(ra)
Current Store : [0x80000b90] : sd t5, 232(ra) -- Store: [0x80003508]:0x002000000000000A




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs2_w0_val == 512', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000bac]:UKCRSA32 t6, t5, t4
	-[0x80000bb0]:sd t6, 240(ra)
Current Store : [0x80000bb4] : sd t5, 248(ra) -- Store: [0x80003518]:0x0000000900020000




Last Coverpoint : ['rs2_w1_val == 524288', 'rs1_w1_val == 4294966271']
Last Code Sequence : 
	-[0x80000bdc]:UKCRSA32 t6, t5, t4
	-[0x80000be0]:sd t6, 256(ra)
Current Store : [0x80000be4] : sd t5, 264(ra) -- Store: [0x80003528]:0xFFFFFBFF00000012




Last Coverpoint : ['rs2_w1_val == 262144', 'rs2_w0_val == 65536', 'rs1_w0_val == 4290772991']
Last Code Sequence : 
	-[0x80000c10]:UKCRSA32 t6, t5, t4
	-[0x80000c14]:sd t6, 272(ra)
Current Store : [0x80000c18] : sd t5, 280(ra) -- Store: [0x80003538]:0x55555555FFBFFFFF




Last Coverpoint : ['rs2_w1_val == 131072', 'rs2_w0_val == 256', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000c34]:UKCRSA32 t6, t5, t4
	-[0x80000c38]:sd t6, 288(ra)
Current Store : [0x80000c3c] : sd t5, 296(ra) -- Store: [0x80003548]:0x0000001100400000




Last Coverpoint : ['rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000c60]:UKCRSA32 t6, t5, t4
	-[0x80000c64]:sd t6, 304(ra)
Current Store : [0x80000c68] : sd t5, 312(ra) -- Store: [0x80003558]:0xFF7FFFFF00040000




Last Coverpoint : ['rs2_w0_val == 33554432', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000c78]:UKCRSA32 t6, t5, t4
	-[0x80000c7c]:sd t6, 320(ra)
Current Store : [0x80000c80] : sd t5, 328(ra) -- Store: [0x80003568]:0x0000000000010000




Last Coverpoint : ['rs2_w0_val == 1024', 'rs1_w1_val == 67108864', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000ca0]:UKCRSA32 t6, t5, t4
	-[0x80000ca4]:sd t6, 336(ra)
Current Store : [0x80000ca8] : sd t5, 344(ra) -- Store: [0x80003578]:0x0400000000008000




Last Coverpoint : ['rs2_w0_val == 2', 'rs1_w1_val == 65536', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000ccc]:UKCRSA32 t6, t5, t4
	-[0x80000cd0]:sd t6, 352(ra)
Current Store : [0x80000cd4] : sd t5, 360(ra) -- Store: [0x80003588]:0x0001000000004000




Last Coverpoint : ['rs2_w0_val == 1048576', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000cf8]:UKCRSA32 t6, t5, t4
	-[0x80000cfc]:sd t6, 368(ra)
Current Store : [0x80000d00] : sd t5, 376(ra) -- Store: [0x80003598]:0x0000000200002000




Last Coverpoint : ['rs2_w1_val == 4096', 'rs2_w0_val == 524288', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000d1c]:UKCRSA32 t6, t5, t4
	-[0x80000d20]:sd t6, 384(ra)
Current Store : [0x80000d24] : sd t5, 392(ra) -- Store: [0x800035a8]:0x0000000C00000040




Last Coverpoint : ['rs2_w0_val == 4292870143', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000d44]:UKCRSA32 t6, t5, t4
	-[0x80000d48]:sd t6, 400(ra)
Current Store : [0x80000d4c] : sd t5, 408(ra) -- Store: [0x800035b8]:0x0008000000000010




Last Coverpoint : ['rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000d68]:UKCRSA32 t6, t5, t4
	-[0x80000d6c]:sd t6, 416(ra)
Current Store : [0x80000d70] : sd t5, 424(ra) -- Store: [0x800035c8]:0xFFFFFEFF00000008




Last Coverpoint : ['rs1_w1_val == 4294901759', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000d94]:UKCRSA32 t6, t5, t4
	-[0x80000d98]:sd t6, 432(ra)
Current Store : [0x80000d9c] : sd t5, 440(ra) -- Store: [0x800035d8]:0xFFFEFFFF00000004




Last Coverpoint : ['rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000dbc]:UKCRSA32 t6, t5, t4
	-[0x80000dc0]:sd t6, 448(ra)
Current Store : [0x80000dc4] : sd t5, 456(ra) -- Store: [0x800035e8]:0x0000000700000002




Last Coverpoint : ['rs2_w1_val == 32', 'rs1_w0_val == 4294967295']
Last Code Sequence : 
	-[0x80000de8]:UKCRSA32 t6, t5, t4
	-[0x80000dec]:sd t6, 464(ra)
Current Store : [0x80000df0] : sd t5, 472(ra) -- Store: [0x800035f8]:0xAAAAAAAAFFFFFFFF




Last Coverpoint : ['rs2_w1_val == 65536', 'rs2_w0_val == 64']
Last Code Sequence : 
	-[0x80000e14]:UKCRSA32 t6, t5, t4
	-[0x80000e18]:sd t6, 480(ra)
Current Store : [0x80000e1c] : sd t5, 488(ra) -- Store: [0x80003608]:0xFFFEFFFFFFFFDFFF




Last Coverpoint : ['rs2_w1_val == 32768', 'rs1_w0_val == 4294901759']
Last Code Sequence : 
	-[0x80000e3c]:UKCRSA32 t6, t5, t4
	-[0x80000e40]:sd t6, 496(ra)
Current Store : [0x80000e44] : sd t5, 504(ra) -- Store: [0x80003618]:0x00001000FFFEFFFF




Last Coverpoint : ['rs2_w1_val == 16384', 'rs2_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000e64]:UKCRSA32 t6, t5, t4
	-[0x80000e68]:sd t6, 512(ra)
Current Store : [0x80000e6c] : sd t5, 520(ra) -- Store: [0x80003628]:0xFFFEFFFF00000013




Last Coverpoint : ['rs2_w1_val == 8192', 'rs2_w0_val == 4294967291', 'rs1_w1_val == 4294967295', 'rs1_w0_val == 4294705151']
Last Code Sequence : 
	-[0x80000e88]:UKCRSA32 t6, t5, t4
	-[0x80000e8c]:sd t6, 528(ra)
Current Store : [0x80000e90] : sd t5, 536(ra) -- Store: [0x80003638]:0xFFFFFFFFFFFBFFFF




Last Coverpoint : ['rs2_w1_val == 2048']
Last Code Sequence : 
	-[0x80000eb0]:UKCRSA32 t6, t5, t4
	-[0x80000eb4]:sd t6, 544(ra)
Current Store : [0x80000eb8] : sd t5, 552(ra) -- Store: [0x80003648]:0x00000006FFFEFFFF




Last Coverpoint : ['rs2_w1_val == 1024', 'rs2_w0_val == 4294967279', 'rs1_w1_val == 64']
Last Code Sequence : 
	-[0x80000ed4]:UKCRSA32 t6, t5, t4
	-[0x80000ed8]:sd t6, 560(ra)
Current Store : [0x80000edc] : sd t5, 568(ra) -- Store: [0x80003658]:0x0000004001000000




Last Coverpoint : ['rs2_w1_val == 512', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000ef8]:UKCRSA32 t6, t5, t4
	-[0x80000efc]:sd t6, 576(ra)
Current Store : [0x80000f00] : sd t5, 584(ra) -- Store: [0x80003668]:0x0100000020000000




Last Coverpoint : ['rs2_w1_val == 256', 'rs1_w1_val == 8388608']
Last Code Sequence : 
	-[0x80000f1c]:UKCRSA32 t6, t5, t4
	-[0x80000f20]:sd t6, 592(ra)
Current Store : [0x80000f24] : sd t5, 600(ra) -- Store: [0x80003678]:0x0080000000000080




Last Coverpoint : ['rs2_w1_val == 128', 'rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x80000f40]:UKCRSA32 t6, t5, t4
	-[0x80000f44]:sd t6, 608(ra)
Current Store : [0x80000f48] : sd t5, 616(ra) -- Store: [0x80003688]:0x0000800001000000




Last Coverpoint : ['rs2_w1_val == 64', 'rs1_w1_val == 4294934527', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000f64]:UKCRSA32 t6, t5, t4
	-[0x80000f68]:sd t6, 624(ra)
Current Store : [0x80000f6c] : sd t5, 632(ra) -- Store: [0x80003698]:0xFFFF7FFF10000000




Last Coverpoint : ['rs2_w1_val == 8', 'rs2_w0_val == 16384']
Last Code Sequence : 
	-[0x80000f8c]:UKCRSA32 t6, t5, t4
	-[0x80000f90]:sd t6, 640(ra)
Current Store : [0x80000f94] : sd t5, 648(ra) -- Store: [0x800036a8]:0xFFFFFBFFFFFBFFFF




Last Coverpoint : ['rs2_w1_val == 4', 'rs1_w1_val == 4294965247']
Last Code Sequence : 
	-[0x80000fb0]:UKCRSA32 t6, t5, t4
	-[0x80000fb4]:sd t6, 656(ra)
Current Store : [0x80000fb8] : sd t5, 664(ra) -- Store: [0x800036b8]:0xFFFFF7FF00010000




Last Coverpoint : ['rs2_w1_val == 2', 'rs1_w0_val == 4294967231']
Last Code Sequence : 
	-[0x80000fdc]:UKCRSA32 t6, t5, t4
	-[0x80000fe0]:sd t6, 672(ra)
Current Store : [0x80000fe4] : sd t5, 680(ra) -- Store: [0x800036c8]:0x02000000FFFFFFBF




Last Coverpoint : ['rs2_w1_val == 1']
Last Code Sequence : 
	-[0x80000ffc]:UKCRSA32 t6, t5, t4
	-[0x80001000]:sd t6, 688(ra)
Current Store : [0x80001004] : sd t5, 696(ra) -- Store: [0x800036d8]:0x0000000F04000000




Last Coverpoint : ['rs2_w1_val == 4294967295']
Last Code Sequence : 
	-[0x8000102c]:UKCRSA32 t6, t5, t4
	-[0x80001030]:sd t6, 704(ra)
Current Store : [0x80001034] : sd t5, 712(ra) -- Store: [0x800036e8]:0x00800000AAAAAAAA




Last Coverpoint : ['rs1_w1_val == 1048576', 'rs1_w0_val == 4227858431']
Last Code Sequence : 
	-[0x80001054]:UKCRSA32 t6, t5, t4
	-[0x80001058]:sd t6, 720(ra)
Current Store : [0x8000105c] : sd t5, 728(ra) -- Store: [0x800036f8]:0x00100000FBFFFFFF




Last Coverpoint : ['rs2_w0_val == 3221225471', 'rs1_w1_val == 4294963199']
Last Code Sequence : 
	-[0x80001080]:UKCRSA32 t6, t5, t4
	-[0x80001084]:sd t6, 736(ra)
Current Store : [0x80001088] : sd t5, 744(ra) -- Store: [0x80003708]:0xFFFFEFFF00000009




Last Coverpoint : ['rs2_w0_val == 3758096383', 'rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x800010a8]:UKCRSA32 t6, t5, t4
	-[0x800010ac]:sd t6, 752(ra)
Current Store : [0x800010b0] : sd t5, 760(ra) -- Store: [0x80003718]:0x000004000000000E




Last Coverpoint : ['rs2_w0_val == 4026531839']
Last Code Sequence : 
	-[0x800010d0]:UKCRSA32 t6, t5, t4
	-[0x800010d4]:sd t6, 768(ra)
Current Store : [0x800010d8] : sd t5, 776(ra) -- Store: [0x80003728]:0x0000000600000012




Last Coverpoint : ['rs2_w0_val == 128']
Last Code Sequence : 
	-[0x800010f4]:UKCRSA32 t6, t5, t4
	-[0x800010f8]:sd t6, 784(ra)
Current Store : [0x800010fc] : sd t5, 792(ra) -- Store: [0x80003738]:0xFFFFFBFF00000005




Last Coverpoint : ['rs2_w0_val == 32']
Last Code Sequence : 
	-[0x8000111c]:UKCRSA32 t6, t5, t4
	-[0x80001120]:sd t6, 800(ra)
Current Store : [0x80001124] : sd t5, 808(ra) -- Store: [0x80003748]:0x00080000FFFFFBFF




Last Coverpoint : ['rs2_w0_val == 16']
Last Code Sequence : 
	-[0x80001144]:UKCRSA32 t6, t5, t4
	-[0x80001148]:sd t6, 816(ra)
Current Store : [0x8000114c] : sd t5, 824(ra) -- Store: [0x80003758]:0xFDFFFFFF20000000




Last Coverpoint : ['rs2_w0_val == 8', 'rs1_w0_val == 3758096383']
Last Code Sequence : 
	-[0x8000116c]:UKCRSA32 t6, t5, t4
	-[0x80001170]:sd t6, 832(ra)
Current Store : [0x80001174] : sd t5, 840(ra) -- Store: [0x80003768]:0xFFFFDFFFDFFFFFFF




Last Coverpoint : ['rs2_w0_val == 4']
Last Code Sequence : 
	-[0x80001190]:UKCRSA32 t6, t5, t4
	-[0x80001194]:sd t6, 848(ra)
Current Store : [0x80001198] : sd t5, 856(ra) -- Store: [0x80003778]:0x0000100000000400




Last Coverpoint : ['opcode : ukcrsa32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs2_w1_val == 4294967167', 'rs2_w0_val == 0', 'rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x800011b4]:UKCRSA32 t6, t5, t4
	-[0x800011b8]:sd t6, 864(ra)
Current Store : [0x800011bc] : sd t5, 872(ra) -- Store: [0x80003788]:0x555555550000000F




Last Coverpoint : ['rs1_w1_val == 2147483647']
Last Code Sequence : 
	-[0x800011e4]:UKCRSA32 t6, t5, t4
	-[0x800011e8]:sd t6, 880(ra)
Current Store : [0x800011ec] : sd t5, 888(ra) -- Store: [0x80003798]:0x7FFFFFFF00000800




Last Coverpoint : ['rs1_w1_val == 3221225471']
Last Code Sequence : 
	-[0x80001210]:UKCRSA32 t6, t5, t4
	-[0x80001214]:sd t6, 896(ra)
Current Store : [0x80001218] : sd t5, 904(ra) -- Store: [0x800037a8]:0xBFFFFFFF00000010




Last Coverpoint : ['rs1_w1_val == 4026531839']
Last Code Sequence : 
	-[0x8000123c]:UKCRSA32 t6, t5, t4
	-[0x80001240]:sd t6, 912(ra)
Current Store : [0x80001244] : sd t5, 920(ra) -- Store: [0x800037b8]:0xEFFFFFFFFFF7FFFF




Last Coverpoint : ['rs1_w1_val == 4160749567']
Last Code Sequence : 
	-[0x80001264]:UKCRSA32 t6, t5, t4
	-[0x80001268]:sd t6, 928(ra)
Current Store : [0x8000126c] : sd t5, 936(ra) -- Store: [0x800037c8]:0xF7FFFFFF00000040




Last Coverpoint : ['rs1_w1_val == 4293918719']
Last Code Sequence : 
	-[0x80001294]:UKCRSA32 t6, t5, t4
	-[0x80001298]:sd t6, 944(ra)
Current Store : [0x8000129c] : sd t5, 952(ra) -- Store: [0x800037d8]:0xFFEFFFFF0000000F




Last Coverpoint : ['rs1_w1_val == 4294705151', 'rs1_w0_val == 4026531839']
Last Code Sequence : 
	-[0x800012c4]:UKCRSA32 t6, t5, t4
	-[0x800012c8]:sd t6, 960(ra)
Current Store : [0x800012cc] : sd t5, 968(ra) -- Store: [0x800037e8]:0xFFFBFFFFEFFFFFFF




Last Coverpoint : ['rs1_w1_val == 4294966783']
Last Code Sequence : 
	-[0x800012e8]:UKCRSA32 t6, t5, t4
	-[0x800012ec]:sd t6, 976(ra)
Current Store : [0x800012f0] : sd t5, 984(ra) -- Store: [0x800037f8]:0xFFFFFDFF00008000




Last Coverpoint : ['rs1_w1_val == 4294967231']
Last Code Sequence : 
	-[0x80001308]:UKCRSA32 t6, t5, t4
	-[0x8000130c]:sd t6, 992(ra)
Current Store : [0x80001310] : sd t5, 1000(ra) -- Store: [0x80003808]:0xFFFFFFBF20000000




Last Coverpoint : ['rs1_w1_val == 4294967263', 'rs1_w0_val == 2147483648']
Last Code Sequence : 
	-[0x80001328]:UKCRSA32 t6, t5, t4
	-[0x8000132c]:sd t6, 1008(ra)
Current Store : [0x80001330] : sd t5, 1016(ra) -- Store: [0x80003818]:0xFFFFFFDF80000000




Last Coverpoint : ['rs1_w1_val == 4294967279', 'rs1_w0_val == 4294965247']
Last Code Sequence : 
	-[0x80001354]:UKCRSA32 t6, t5, t4
	-[0x80001358]:sd t6, 1024(ra)
Current Store : [0x8000135c] : sd t5, 1032(ra) -- Store: [0x80003828]:0xFFFFFFEFFFFFF7FF




Last Coverpoint : ['rs1_w1_val == 4294967287']
Last Code Sequence : 
	-[0x80001384]:UKCRSA32 t6, t5, t4
	-[0x80001388]:sd t6, 1040(ra)
Current Store : [0x8000138c] : sd t5, 1048(ra) -- Store: [0x80003838]:0xFFFFFFF7FFBFFFFF




Last Coverpoint : ['rs2_w0_val == 4294967287', 'rs1_w1_val == 4294967293', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800013a8]:UKCRSA32 t6, t5, t4
	-[0x800013ac]:sd t6, 1056(ra)
Current Store : [0x800013b0] : sd t5, 1064(ra) -- Store: [0x80003848]:0xFFFFFFFD40000000




Last Coverpoint : ['rs1_w1_val == 4294967294', 'rs1_w0_val == 4294963199']
Last Code Sequence : 
	-[0x800013d8]:UKCRSA32 t6, t5, t4
	-[0x800013dc]:sd t6, 1072(ra)
Current Store : [0x800013e0] : sd t5, 1080(ra) -- Store: [0x80003858]:0xFFFFFFFEFFFFEFFF




Last Coverpoint : ['rs2_w0_val == 4294967231', 'rs1_w1_val == 2147483648']
Last Code Sequence : 
	-[0x80001400]:UKCRSA32 t6, t5, t4
	-[0x80001404]:sd t6, 1088(ra)
Current Store : [0x80001408] : sd t5, 1096(ra) -- Store: [0x80003868]:0x8000000008000000




Last Coverpoint : ['rs1_w1_val == 134217728', 'rs1_w0_val == 4292870143']
Last Code Sequence : 
	-[0x8000142c]:UKCRSA32 t6, t5, t4
	-[0x80001430]:sd t6, 1104(ra)
Current Store : [0x80001434] : sd t5, 1112(ra) -- Store: [0x80003878]:0x08000000FFDFFFFF




Last Coverpoint : ['rs1_w1_val == 262144']
Last Code Sequence : 
	-[0x8000145c]:UKCRSA32 t6, t5, t4
	-[0x80001460]:sd t6, 1120(ra)
Current Store : [0x80001464] : sd t5, 1128(ra) -- Store: [0x80003888]:0x0004000000010000




Last Coverpoint : ['rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x80001488]:UKCRSA32 t6, t5, t4
	-[0x8000148c]:sd t6, 1136(ra)
Current Store : [0x80001490] : sd t5, 1144(ra) -- Store: [0x80003898]:0x000040007FFFFFFF




Last Coverpoint : ['rs2_w0_val == 4294934527', 'rs1_w1_val == 8192']
Last Code Sequence : 
	-[0x800014b8]:UKCRSA32 t6, t5, t4
	-[0x800014bc]:sd t6, 1152(ra)
Current Store : [0x800014c0] : sd t5, 1160(ra) -- Store: [0x800038a8]:0x000020000000000B




Last Coverpoint : ['rs1_w1_val == 128']
Last Code Sequence : 
	-[0x800014e0]:UKCRSA32 t6, t5, t4
	-[0x800014e4]:sd t6, 1168(ra)
Current Store : [0x800014e8] : sd t5, 1176(ra) -- Store: [0x800038b8]:0x0000008080000000




Last Coverpoint : ['rs1_w1_val == 4']
Last Code Sequence : 
	-[0x80001514]:UKCRSA32 t6, t5, t4
	-[0x80001518]:sd t6, 1184(ra)
Current Store : [0x8000151c] : sd t5, 1192(ra) -- Store: [0x800038c8]:0x00000004FFDFFFFF




Last Coverpoint : ['rs1_w0_val == 3221225471']
Last Code Sequence : 
	-[0x80001540]:UKCRSA32 t6, t5, t4
	-[0x80001544]:sd t6, 1200(ra)
Current Store : [0x80001548] : sd t5, 1208(ra) -- Store: [0x800038d8]:0xFFFDFFFFBFFFFFFF




Last Coverpoint : ['rs2_w0_val == 4294705151']
Last Code Sequence : 
	-[0x80001568]:UKCRSA32 t6, t5, t4
	-[0x8000156c]:sd t6, 1216(ra)
Current Store : [0x80001570] : sd t5, 1224(ra) -- Store: [0x800038e8]:0xFFFFFFFF00000100




Last Coverpoint : ['rs2_w0_val == 4294836223']
Last Code Sequence : 
	-[0x8000159c]:UKCRSA32 t6, t5, t4
	-[0x800015a0]:sd t6, 1232(ra)
Current Store : [0x800015a4] : sd t5, 1240(ra) -- Store: [0x800038f8]:0x0004000000010000




Last Coverpoint : ['rs2_w0_val == 4294901759', 'rs1_w0_val == 4294836223']
Last Code Sequence : 
	-[0x800015d0]:UKCRSA32 t6, t5, t4
	-[0x800015d4]:sd t6, 1248(ra)
Current Store : [0x800015d8] : sd t5, 1256(ra) -- Store: [0x80003908]:0x08000000FFFDFFFF




Last Coverpoint : ['rs1_w0_val == 4278190079']
Last Code Sequence : 
	-[0x800015f4]:UKCRSA32 t6, t5, t4
	-[0x800015f8]:sd t6, 1264(ra)
Current Store : [0x800015fc] : sd t5, 1272(ra) -- Store: [0x80003918]:0x00000009FEFFFFFF




Last Coverpoint : ['rs1_w0_val == 4293918719']
Last Code Sequence : 
	-[0x8000161c]:UKCRSA32 t6, t5, t4
	-[0x80001620]:sd t6, 1280(ra)
Current Store : [0x80001624] : sd t5, 1288(ra) -- Store: [0x80003928]:0x00000040FFEFFFFF




Last Coverpoint : ['rs2_w0_val == 4294965247']
Last Code Sequence : 
	-[0x80001648]:UKCRSA32 t6, t5, t4
	-[0x8000164c]:sd t6, 1296(ra)
Current Store : [0x80001650] : sd t5, 1304(ra) -- Store: [0x80003938]:0x2000000000000400




Last Coverpoint : ['rs2_w0_val == 4294966783']
Last Code Sequence : 
	-[0x80001670]:UKCRSA32 t6, t5, t4
	-[0x80001674]:sd t6, 1312(ra)
Current Store : [0x80001678] : sd t5, 1320(ra) -- Store: [0x80003948]:0x0000002055555555




Last Coverpoint : ['rs2_w0_val == 4294967167', 'rs1_w0_val == 4294967287']
Last Code Sequence : 
	-[0x80001694]:UKCRSA32 t6, t5, t4
	-[0x80001698]:sd t6, 1328(ra)
Current Store : [0x8000169c] : sd t5, 1336(ra) -- Store: [0x80003958]:0x00000004FFFFFFF7




Last Coverpoint : ['rs1_w0_val == 4294950911']
Last Code Sequence : 
	-[0x800016bc]:UKCRSA32 t6, t5, t4
	-[0x800016c0]:sd t6, 1344(ra)
Current Store : [0x800016c4] : sd t5, 1352(ra) -- Store: [0x80003968]:0x00000001FFFFBFFF




Last Coverpoint : ['rs2_w0_val == 4294967263']
Last Code Sequence : 
	-[0x800016e8]:UKCRSA32 t6, t5, t4
	-[0x800016ec]:sd t6, 1360(ra)
Current Store : [0x800016f0] : sd t5, 1368(ra) -- Store: [0x80003978]:0x40000000FBFFFFFF




Last Coverpoint : ['rs2_w0_val == 4294967293']
Last Code Sequence : 
	-[0x80001710]:UKCRSA32 t6, t5, t4
	-[0x80001714]:sd t6, 1376(ra)
Current Store : [0x80001718] : sd t5, 1384(ra) -- Store: [0x80003988]:0x0000000200000003




Last Coverpoint : ['rs2_w0_val == 4294967294', 'rs1_w0_val == 4294967291']
Last Code Sequence : 
	-[0x80001734]:UKCRSA32 t6, t5, t4
	-[0x80001738]:sd t6, 1392(ra)
Current Store : [0x8000173c] : sd t5, 1400(ra) -- Store: [0x80003998]:0x00000002FFFFFFFB




Last Coverpoint : ['rs2_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80001754]:UKCRSA32 t6, t5, t4
	-[0x80001758]:sd t6, 1408(ra)
Current Store : [0x8000175c] : sd t5, 1416(ra) -- Store: [0x800039a8]:0x00000012FFFFFF7F




Last Coverpoint : ['rs2_w0_val == 536870912']
Last Code Sequence : 
	-[0x80001778]:UKCRSA32 t6, t5, t4
	-[0x8000177c]:sd t6, 1424(ra)
Current Store : [0x80001780] : sd t5, 1432(ra) -- Store: [0x800039b8]:0x00000012FFFFFFDF




Last Coverpoint : ['rs2_w0_val == 4096', 'rs1_w0_val == 4294967293']
Last Code Sequence : 
	-[0x800017a4]:UKCRSA32 t6, t5, t4
	-[0x800017a8]:sd t6, 1440(ra)
Current Store : [0x800017ac] : sd t5, 1448(ra) -- Store: [0x800039c8]:0x7FFFFFFFFFFFFFFD




Last Coverpoint : ['rs2_w0_val == 16777216']
Last Code Sequence : 
	-[0x800017d0]:UKCRSA32 t6, t5, t4
	-[0x800017d4]:sd t6, 1456(ra)
Current Store : [0x800017d8] : sd t5, 1464(ra) -- Store: [0x800039d8]:0xFFFFF7FFFFBFFFFF




Last Coverpoint : ['rs1_w0_val == 4294967294']
Last Code Sequence : 
	-[0x800017f4]:UKCRSA32 t6, t5, t4
	-[0x800017f8]:sd t6, 1472(ra)
Current Store : [0x800017fc] : sd t5, 1480(ra) -- Store: [0x800039e8]:0xFFFFFEFFFFFFFFFE




Last Coverpoint : ['rs2_w0_val == 131072']
Last Code Sequence : 
	-[0x8000181c]:UKCRSA32 t6, t5, t4
	-[0x80001820]:sd t6, 1488(ra)
Current Store : [0x80001824] : sd t5, 1496(ra) -- Store: [0x800039f8]:0x00001000FFFFFFFD




Last Coverpoint : ['rs2_w0_val == 4194304']
Last Code Sequence : 
	-[0x80001844]:UKCRSA32 t6, t5, t4
	-[0x80001848]:sd t6, 1504(ra)
Current Store : [0x8000184c] : sd t5, 1512(ra) -- Store: [0x80003a08]:0xFFFFFBFFFDFFFFFF




Last Coverpoint : ['rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x8000186c]:UKCRSA32 t6, t5, t4
	-[0x80001870]:sd t6, 1520(ra)
Current Store : [0x80001874] : sd t5, 1528(ra) -- Store: [0x80003a18]:0x0000000D00100000




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80001890]:UKCRSA32 t6, t5, t4
	-[0x80001894]:sd t6, 1536(ra)
Current Store : [0x80001898] : sd t5, 1544(ra) -- Store: [0x80003a28]:0x0000002000080000




Last Coverpoint : ['opcode : ukcrsa32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == 0', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0']
Last Code Sequence : 
	-[0x800018b0]:UKCRSA32 t6, t5, t4
	-[0x800018b4]:sd t6, 1552(ra)
Current Store : [0x800018b8] : sd t5, 1560(ra) -- Store: [0x80003a38]:0x0000000D00000000




Last Coverpoint : ['opcode : ukcrsa32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 16', 'rs2_w0_val == 1', 'rs1_w1_val == 16', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x800018d4]:UKCRSA32 t6, t5, t4
	-[0x800018d8]:sd t6, 1568(ra)
Current Store : [0x800018dc] : sd t5, 1576(ra) -- Store: [0x80003a48]:0x0000001002000000




Last Coverpoint : ['rs2_w1_val == 4294934527']
Last Code Sequence : 
	-[0x800018fc]:UKCRSA32 t6, t5, t4
	-[0x80001900]:sd t6, 1584(ra)
Current Store : [0x80001904] : sd t5, 1592(ra) -- Store: [0x80003a58]:0x0000000E0000000B





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

|s.no|            signature             |                                                                                                                        coverpoints                                                                                                                        |                                  code                                  |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000015|- opcode : ukcrsa32<br> - rs1 : x20<br> - rs2 : x20<br> - rd : x3<br> - rs1 == rs2 != rd<br> - rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br>                     |[0x800003b8]:UKCRSA32 gp, s4, s4<br> [0x800003bc]:sd gp, 0(ra)<br>      |
|   2|[0x80003220]<br>0x0000000F00000011|- rs1 : x29<br> - rs2 : x29<br> - rd : x29<br> - rs1 == rs2 == rd<br> - rs2_w1_val == 16<br> - rs2_w0_val == 1<br> - rs1_w1_val == 16<br> - rs1_w0_val == 1<br>                                                                                            |[0x800003dc]:UKCRSA32 t4, t4, t4<br> [0x800003e0]:sd t4, 16(ra)<br>     |
|   3|[0x80003230]<br>0x00000000FE00000E|- rs1 : x12<br> - rs2 : x23<br> - rd : x20<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs2_w0_val == 4261412863<br> - rs1_w1_val == 131072<br> - rs1_w0_val == 4261412863<br> |[0x80000404]:UKCRSA32 s4, a2, s7<br> [0x80000408]:sd s4, 32(ra)<br>     |
|   4|[0x80003240]<br>0x0FFFFFEEFFFFFFFF|- rs1 : x31<br> - rs2 : x14<br> - rd : x31<br> - rs1 == rd != rs2<br> - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == 2863311530<br> - rs1_w1_val == 268435456<br> - rs1_w0_val == 4160749567<br>                     |[0x80000434]:UKCRSA32 t6, t6, a4<br> [0x80000438]:sd t6, 48(ra)<br>     |
|   5|[0x80003250]<br>0xFFF9FFFFFFFFFFFF|- rs1 : x26<br> - rs2 : x18<br> - rd : x18<br> - rs2 == rd != rs1<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == 262144<br> - rs1_w1_val == 4294836223<br> - rs1_w0_val == 4294967279<br>                                                              |[0x80000460]:UKCRSA32 s2, s10, s2<br> [0x80000464]:sd s2, 64(ra)<br>    |
|   6|[0x80003260]<br>0x1FFF800083FFFFFF|- rs1 : x24<br> - rs2 : x17<br> - rd : x30<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == 32768<br> - rs1_w1_val == 536870912<br> - rs1_w0_val == 67108864<br>                                                                                         |[0x80000490]:UKCRSA32 t5, s8, a7<br> [0x80000494]:sd t5, 80(ra)<br>     |
|   7|[0x80003270]<br>0x00000005C01FFFFF|- rs1 : x25<br> - rs2 : x6<br> - rd : x13<br> - rs2_w1_val == 3221225471<br> - rs1_w0_val == 2097152<br>                                                                                                                                                   |[0x800004b8]:UKCRSA32 a3, s9, t1<br> [0x800004bc]:sd a3, 96(ra)<br>     |
|   8|[0x80003280]<br>0x00000000E07FFFFF|- rs1 : x15<br> - rs2 : x21<br> - rd : x16<br> - rs2_w1_val == 3758096383<br> - rs2_w0_val == 4293918719<br> - rs1_w1_val == 4278190079<br> - rs1_w0_val == 8388608<br>                                                                                    |[0x800004e8]:UKCRSA32 a6, a5, s5<br> [0x800004ec]:sd a6, 112(ra)<br>    |
|   9|[0x80003290]<br>0x00000000F000001F|- rs1 : x18<br> - rs2 : x16<br> - rd : x5<br> - rs2_w1_val == 4026531839<br> - rs2_w0_val == 4294967039<br> - rs1_w1_val == 0<br> - rs1_w0_val == 32<br>                                                                                                   |[0x80000504]:UKCRSA32 t0, s2, a6<br> [0x80000508]:sd t0, 128(ra)<br>    |
|  10|[0x800032a0]<br>0x00000000F80003FF|- rs1 : x3<br> - rs2 : x4<br> - rd : x23<br> - rs2_w1_val == 4160749567<br> - rs2_w0_val == 2863311530<br> - rs1_w1_val == 2097152<br> - rs1_w0_val == 1024<br>                                                                                            |[0x80000538]:UKCRSA32 s7, gp, tp<br> [0x8000053c]:sd s7, 144(ra)<br>    |
|  11|[0x800032b0]<br>0x00000000FBFFFFFF|- rs1 : x0<br> - rs2 : x25<br> - rd : x10<br> - rs1_w0_val == 0<br> - rs2_w1_val == 4227858431<br> - rs2_w0_val == 4294443007<br>                                                                                                                          |[0x80000560]:UKCRSA32 a0, zero, s9<br> [0x80000564]:sd a0, 160(ra)<br>  |
|  12|[0x800032c0]<br>0xFBFFBFFFFFFFFFFF|- rs1 : x21<br> - rs2 : x10<br> - rd : x25<br> - rs2_w1_val == 4261412863<br> - rs2_w0_val == 67108864<br> - rs1_w1_val == 4294950911<br> - rs1_w0_val == 4286578687<br>                                                                                   |[0x8000058c]:UKCRSA32 s9, s5, a0<br> [0x80000590]:sd s9, 176(ra)<br>    |
|  13|[0x800032d0]<br>0x000007F1FF0001FF|- rs1 : x7<br> - rs2 : x22<br> - rd : x21<br> - rs2_w1_val == 4278190079<br> - rs1_w1_val == 2048<br> - rs1_w0_val == 512<br>                                                                                                                              |[0x800005b4]:UKCRSA32 s5, t2, s6<br> [0x800005b8]:sd s5, 192(ra)<br>    |
|  14|[0x800032e0]<br>0x00000000FF80000C|- rs1 : x9<br> - rs2 : x2<br> - rd : x15<br> - rs2_w1_val == 4286578687<br>                                                                                                                                                                                |[0x800005e8]:UKCRSA32 a5, s1, sp<br> [0x800005ec]:sd a5, 208(ra)<br>    |
|  15|[0x800032f0]<br>0x00003FFCFFFFFFFF|- rs1 : x8<br> - rs2 : x9<br> - rd : x11<br> - rs2_w1_val == 4290772991<br> - rs2_w0_val == 4294950911<br> - rs1_w1_val == 4294967291<br> - rs1_w0_val == 2863311530<br>                                                                                   |[0x80000618]:UKCRSA32 a1, fp, s1<br> [0x8000061c]:sd a1, 224(ra)<br>    |
|  16|[0x80003300]<br>0x0000000000000000|- rs1 : x1<br> - rs2 : x13<br> - rd : x0<br> - rs2_w1_val == 4292870143<br> - rs2_w0_val == 4294967295<br>                                                                                                                                                 |[0x80000644]:UKCRSA32 zero, ra, a3<br> [0x80000648]:sd zero, 0(s2)<br>  |
|  17|[0x80003310]<br>0x00000000FFFFFFFF|- rs1 : x11<br> - rs2 : x12<br> - rd : x24<br> - rs2_w1_val == 4293918719<br>                                                                                                                                                                              |[0x80000668]:UKCRSA32 s8, a1, a2<br> [0x8000066c]:sd s8, 16(s2)<br>     |
|  18|[0x80003320]<br>0x00000000FFFFFFFF|- rs1 : x13<br> - rs2 : x31<br> - rd : x6<br> - rs2_w1_val == 4294443007<br> - rs1_w1_val == 512<br> - rs1_w0_val == 16777216<br>                                                                                                                          |[0x8000068c]:UKCRSA32 t1, a3, t6<br> [0x80000690]:sd t1, 32(s2)<br>     |
|  19|[0x80003330]<br>0x00000000FFFFFFFF|- rs1 : x14<br> - rs2 : x26<br> - rd : x7<br> - rs2_w1_val == 4294705151<br> - rs2_w0_val == 4294966271<br> - rs1_w0_val == 4294967039<br>                                                                                                                 |[0x800006b4]:UKCRSA32 t2, a4, s10<br> [0x800006b8]:sd t2, 48(s2)<br>    |
|  20|[0x80003340]<br>0x00000000FFFFFFFF|- rs1 : x30<br> - rs2 : x28<br> - rd : x27<br> - rs2_w1_val == 4294836223<br> - rs1_w1_val == 4096<br>                                                                                                                                                     |[0x800006e4]:UKCRSA32 s11, t5, t3<br> [0x800006e8]:sd s11, 64(s2)<br>   |
|  21|[0x80003350]<br>0x5555554AFFFFFFFF|- rs1 : x27<br> - rs2 : x1<br> - rd : x14<br> - rs2_w1_val == 4294901759<br> - rs1_w1_val == 1431655765<br>                                                                                                                                                |[0x80000718]:UKCRSA32 a4, s11, ra<br> [0x8000071c]:sd a4, 80(s2)<br>    |
|  22|[0x80003360]<br>0x0000000E0000000B|- rs1 : x4<br> - rs2 : x0<br> - rd : x9<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br>                                                                                                                                                                    |[0x80000740]:UKCRSA32 s1, tp, zero<br> [0x80000744]:sd s1, 96(s2)<br>   |
|  23|[0x80003370]<br>0xFF9FFFFFFFFFFFFF|- rs1 : x17<br> - rs2 : x8<br> - rd : x2<br> - rs2_w1_val == 4294950911<br> - rs2_w0_val == 2097152<br> - rs1_w1_val == 4290772991<br> - rs1_w0_val == 4294967167<br>                                                                                      |[0x80000764]:UKCRSA32 sp, a7, fp<br> [0x80000768]:sd sp, 112(s2)<br>    |
|  24|[0x80003380]<br>0xFFDFDFFFFFFFE3FF|- rs1 : x2<br> - rs2 : x11<br> - rd : x8<br> - rs2_w1_val == 4294959103<br> - rs1_w1_val == 4294959103<br>                                                                                                                                                 |[0x8000078c]:UKCRSA32 fp, sp, a1<br> [0x80000790]:sd fp, 128(s2)<br>    |
|  25|[0x80003390]<br>0x007FFF00FFFFFFFF|- rs1 : x22<br> - rs2 : x30<br> - rd : x28<br> - rs2_w1_val == 4294963199<br> - rs2_w0_val == 4286578687<br> - rs1_w1_val == 4294967039<br> - rs1_w0_val == 4294966271<br>                                                                                 |[0x800007b4]:UKCRSA32 t3, s6, t5<br> [0x800007b8]:sd t3, 144(s2)<br>    |
|  26|[0x800033a0]<br>0x7DFFFFFFFFFFF8FF|- rs1 : x28<br> - rs2 : x24<br> - rd : x12<br> - rs2_w1_val == 4294965247<br> - rs2_w0_val == 2147483648<br> - rs1_w1_val == 4261412863<br> - rs1_w0_val == 256<br>                                                                                        |[0x800007dc]:UKCRSA32 a2, t3, s8<br> [0x800007e0]:sd a2, 160(s2)<br>    |
|  27|[0x800033b0]<br>0x00000000FFFFFC00|- rs1 : x10<br> - rs2 : x27<br> - rd : x26<br> - rs2_w1_val == 4294966271<br> - rs1_w1_val == 1073741824<br>                                                                                                                                               |[0x80000804]:UKCRSA32 s10, a0, s11<br> [0x80000808]:sd s10, 176(s2)<br> |
|  28|[0x800033c0]<br>0x00000000FFFFFFFF|- rs1 : x6<br> - rs2 : x15<br> - rd : x4<br> - rs2_w1_val == 4294966783<br> - rs1_w1_val == 4194304<br> - rs1_w0_val == 134217728<br>                                                                                                                      |[0x80000828]:UKCRSA32 tp, t1, a5<br> [0x8000082c]:sd tp, 192(s2)<br>    |
|  29|[0x800033d0]<br>0x7BFFFFFFFFFFFFFF|- rs1 : x16<br> - rs2 : x3<br> - rd : x19<br> - rs2_w1_val == 4294967039<br> - rs1_w1_val == 4227858431<br>                                                                                                                                                |[0x8000084c]:UKCRSA32 s3, a6, gp<br> [0x80000850]:sd s3, 208(s2)<br>    |
|  30|[0x800033e0]<br>0x00000000FFFFFFFF|- rs1 : x5<br> - rs2 : x7<br> - rd : x22<br> - rs2_w1_val == 4294967167<br> - rs2_w0_val == 1431655765<br> - rs1_w1_val == 524288<br> - rs1_w0_val == 33554432<br>                                                                                         |[0x80000874]:UKCRSA32 s6, t0, t2<br> [0x80000878]:sd s6, 224(s2)<br>    |
|  31|[0x800033f0]<br>0x00000000FFFFFFC6|- rs1 : x23<br> - rs2 : x19<br> - rd : x17<br> - rs2_w1_val == 4294967231<br> - rs2_w0_val == 4227858431<br> - rs1_w1_val == 2<br>                                                                                                                         |[0x8000089c]:UKCRSA32 a7, s7, s3<br> [0x800008a0]:sd a7, 240(s2)<br>    |
|  32|[0x80003400]<br>0xEFF7FFFFFFFFFFFF|- rs1 : x19<br> - rs2 : x5<br> - rd : x1<br> - rs2_w1_val == 4294967263<br> - rs2_w0_val == 268435456<br> - rs1_w1_val == 4294443007<br> - rs1_w0_val == 4294967263<br>                                                                                    |[0x800008bc]:UKCRSA32 ra, s3, t0<br> [0x800008c0]:sd ra, 256(s2)<br>    |
|  33|[0x80003410]<br>0x00000000FFFFFFFF|- rs2_w1_val == 4294967279<br> - rs2_w0_val == 8192<br>                                                                                                                                                                                                    |[0x800008e4]:UKCRSA32 t6, t5, t4<br> [0x800008e8]:sd t6, 272(s2)<br>    |
|  34|[0x80003420]<br>0x7F800000FFFFFFFF|- rs2_w1_val == 4294967287<br> - rs2_w0_val == 2147483647<br> - rs1_w1_val == 4286578687<br> - rs1_w0_val == 2147483647<br>                                                                                                                                |[0x80000914]:UKCRSA32 t6, t5, t4<br> [0x80000918]:sd t6, 0(ra)<br>      |
|  35|[0x80003430]<br>0x00000000FFFFFFFF|- rs2_w1_val == 4294967291<br> - rs2_w0_val == 8388608<br> - rs1_w1_val == 32<br> - rs1_w0_val == 4096<br>                                                                                                                                                 |[0x80000938]:UKCRSA32 t6, t5, t4<br> [0x8000093c]:sd t6, 16(ra)<br>     |
|  36|[0x80003440]<br>0x00000001FFFFFFFF|- rs2_w1_val == 4294967293<br> - rs1_w1_val == 8<br> - rs1_w0_val == 4294959103<br>                                                                                                                                                                        |[0x80000960]:UKCRSA32 t6, t5, t4<br> [0x80000964]:sd t6, 32(ra)<br>     |
|  37|[0x80003450]<br>0x00000000FFFFFFFF|- rs2_w1_val == 4294967294<br> - rs2_w0_val == 4278190079<br> - rs1_w1_val == 33554432<br>                                                                                                                                                                 |[0x80000988]:UKCRSA32 t6, t5, t4<br> [0x8000098c]:sd t6, 48(ra)<br>     |
|  38|[0x80003460]<br>0x0000000080001000|- rs2_w1_val == 2147483648<br> - rs2_w0_val == 4290772991<br> - rs1_w1_val == 3758096383<br>                                                                                                                                                               |[0x800009bc]:UKCRSA32 t6, t5, t4<br> [0x800009c0]:sd t6, 64(ra)<br>     |
|  39|[0x80003470]<br>0x07FFFF80FFFFFFFF|- rs2_w1_val == 1073741824<br> - rs2_w0_val == 4160749567<br> - rs1_w1_val == 4294967167<br> - rs1_w0_val == 4294966783<br>                                                                                                                                |[0x800009e8]:UKCRSA32 t6, t5, t4<br> [0x800009ec]:sd t6, 80(ra)<br>     |
|  40|[0x80003480]<br>0x0000000075555555|- rs2_w1_val == 536870912<br> - rs2_w0_val == 4294959103<br> - rs1_w1_val == 4292870143<br> - rs1_w0_val == 1431655765<br>                                                                                                                                 |[0x80000a24]:UKCRSA32 t6, t5, t4<br> [0x80000a28]:sd t6, 96(ra)<br>     |
|  41|[0x80003490]<br>0x000000FF1000000A|- rs2_w1_val == 268435456<br> - rs1_w1_val == 256<br>                                                                                                                                                                                                      |[0x80000a48]:UKCRSA32 t6, t5, t4<br> [0x80000a4c]:sd t6, 112(ra)<br>    |
|  42|[0x800034a0]<br>0x0000000008000800|- rs2_w1_val == 134217728<br> - rs2_w0_val == 4294963199<br> - rs1_w0_val == 2048<br>                                                                                                                                                                      |[0x80000a7c]:UKCRSA32 t6, t5, t4<br> [0x80000a80]:sd t6, 128(ra)<br>    |
|  43|[0x800034b0]<br>0x0000000004000080|- rs2_w1_val == 67108864<br> - rs1_w0_val == 128<br>                                                                                                                                                                                                       |[0x80000aac]:UKCRSA32 t6, t5, t4<br> [0x80000ab0]:sd t6, 144(ra)<br>    |
|  44|[0x800034c0]<br>0x00FFFFF20200000F|- rs2_w1_val == 33554432<br> - rs1_w1_val == 16777216<br>                                                                                                                                                                                                  |[0x80000ad0]:UKCRSA32 t6, t5, t4<br> [0x80000ad4]:sd t6, 160(ra)<br>    |
|  45|[0x800034d0]<br>0x00000000FFFFFFFF|- rs2_w1_val == 16777216<br> - rs1_w1_val == 2863311530<br> - rs1_w0_val == 4294443007<br>                                                                                                                                                                 |[0x80000b08]:UKCRSA32 t6, t5, t4<br> [0x80000b0c]:sd t6, 176(ra)<br>    |
|  46|[0x800034e0]<br>0x00000000FFFFFFFF|- rs2_w1_val == 8388608<br> - rs1_w1_val == 1<br> - rs1_w0_val == 4294934527<br>                                                                                                                                                                           |[0x80000b34]:UKCRSA32 t6, t5, t4<br> [0x80000b38]:sd t6, 192(ra)<br>    |
|  47|[0x800034f0]<br>0x0000000000400020|- rs2_w1_val == 4194304<br> - rs2_w0_val == 2048<br>                                                                                                                                                                                                       |[0x80000b60]:UKCRSA32 t6, t5, t4<br> [0x80000b64]:sd t6, 208(ra)<br>    |
|  48|[0x80003500]<br>0x000000000020000A|- rs2_w1_val == 2097152<br>                                                                                                                                                                                                                                |[0x80000b88]:UKCRSA32 t6, t5, t4<br> [0x80000b8c]:sd t6, 224(ra)<br>    |
|  49|[0x80003510]<br>0x0000000000120000|- rs2_w1_val == 1048576<br> - rs2_w0_val == 512<br> - rs1_w0_val == 131072<br>                                                                                                                                                                             |[0x80000bac]:UKCRSA32 t6, t5, t4<br> [0x80000bb0]:sd t6, 240(ra)<br>    |
|  50|[0x80003520]<br>0x0007FC0000080012|- rs2_w1_val == 524288<br> - rs1_w1_val == 4294966271<br>                                                                                                                                                                                                  |[0x80000bdc]:UKCRSA32 t6, t5, t4<br> [0x80000be0]:sd t6, 256(ra)<br>    |
|  51|[0x80003530]<br>0x55545555FFC3FFFF|- rs2_w1_val == 262144<br> - rs2_w0_val == 65536<br> - rs1_w0_val == 4290772991<br>                                                                                                                                                                        |[0x80000c10]:UKCRSA32 t6, t5, t4<br> [0x80000c14]:sd t6, 272(ra)<br>    |
|  52|[0x80003540]<br>0x0000000000420000|- rs2_w1_val == 131072<br> - rs2_w0_val == 256<br> - rs1_w0_val == 4194304<br>                                                                                                                                                                             |[0x80000c34]:UKCRSA32 t6, t5, t4<br> [0x80000c38]:sd t6, 288(ra)<br>    |
|  53|[0x80003550]<br>0xFF7FFFF540040000|- rs1_w0_val == 262144<br>                                                                                                                                                                                                                                 |[0x80000c60]:UKCRSA32 t6, t5, t4<br> [0x80000c64]:sd t6, 304(ra)<br>    |
|  54|[0x80003560]<br>0x0000000000010003|- rs2_w0_val == 33554432<br> - rs1_w0_val == 65536<br>                                                                                                                                                                                                     |[0x80000c78]:UKCRSA32 t6, t5, t4<br> [0x80000c7c]:sd t6, 320(ra)<br>    |
|  55|[0x80003570]<br>0x03FFFC0000048000|- rs2_w0_val == 1024<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == 32768<br>                                                                                                                                                                            |[0x80000ca0]:UKCRSA32 t6, t5, t4<br> [0x80000ca4]:sd t6, 336(ra)<br>    |
|  56|[0x80003580]<br>0x0000FFFEFFFFFFFF|- rs2_w0_val == 2<br> - rs1_w1_val == 65536<br> - rs1_w0_val == 16384<br>                                                                                                                                                                                  |[0x80000ccc]:UKCRSA32 t6, t5, t4<br> [0x80000cd0]:sd t6, 352(ra)<br>    |
|  57|[0x80003590]<br>0x0000000055557555|- rs2_w0_val == 1048576<br> - rs1_w0_val == 8192<br>                                                                                                                                                                                                       |[0x80000cf8]:UKCRSA32 t6, t5, t4<br> [0x80000cfc]:sd t6, 368(ra)<br>    |
|  58|[0x800035a0]<br>0x0000000000001040|- rs2_w1_val == 4096<br> - rs2_w0_val == 524288<br> - rs1_w0_val == 64<br>                                                                                                                                                                                 |[0x80000d1c]:UKCRSA32 t6, t5, t4<br> [0x80000d20]:sd t6, 384(ra)<br>    |
|  59|[0x800035b0]<br>0x00000000FFFE000F|- rs2_w0_val == 4292870143<br> - rs1_w0_val == 16<br>                                                                                                                                                                                                      |[0x80000d44]:UKCRSA32 t6, t5, t4<br> [0x80000d48]:sd t6, 400(ra)<br>    |
|  60|[0x800035c0]<br>0x7FFFFEFFFFFFC007|- rs1_w0_val == 8<br>                                                                                                                                                                                                                                      |[0x80000d68]:UKCRSA32 t6, t5, t4<br> [0x80000d6c]:sd t6, 416(ra)<br>    |
|  61|[0x800035d0]<br>0xFFFEFDFFFFFFE003|- rs1_w1_val == 4294901759<br> - rs1_w0_val == 4<br>                                                                                                                                                                                                       |[0x80000d94]:UKCRSA32 t6, t5, t4<br> [0x80000d98]:sd t6, 432(ra)<br>    |
|  62|[0x800035e0]<br>0x00000000FFFF0001|- rs1_w0_val == 2<br>                                                                                                                                                                                                                                      |[0x80000dbc]:UKCRSA32 t6, t5, t4<br> [0x80000dc0]:sd t6, 448(ra)<br>    |
|  63|[0x800035f0]<br>0x00000000FFFFFFFF|- rs2_w1_val == 32<br> - rs1_w0_val == 4294967295<br>                                                                                                                                                                                                      |[0x80000de8]:UKCRSA32 t6, t5, t4<br> [0x80000dec]:sd t6, 464(ra)<br>    |
|  64|[0x80003600]<br>0xFFFEFFBFFFFFFFFF|- rs2_w1_val == 65536<br> - rs2_w0_val == 64<br>                                                                                                                                                                                                           |[0x80000e14]:UKCRSA32 t6, t5, t4<br> [0x80000e18]:sd t6, 480(ra)<br>    |
|  65|[0x80003610]<br>0x00000E00FFFF7FFF|- rs2_w1_val == 32768<br> - rs1_w0_val == 4294901759<br>                                                                                                                                                                                                   |[0x80000e3c]:UKCRSA32 t6, t5, t4<br> [0x80000e40]:sd t6, 496(ra)<br>    |
|  66|[0x80003620]<br>0xF7FEFFFF00004013|- rs2_w1_val == 16384<br> - rs2_w0_val == 134217728<br>                                                                                                                                                                                                    |[0x80000e64]:UKCRSA32 t6, t5, t4<br> [0x80000e68]:sd t6, 512(ra)<br>    |
|  67|[0x80003630]<br>0x00000004FFFC1FFF|- rs2_w1_val == 8192<br> - rs2_w0_val == 4294967291<br> - rs1_w1_val == 4294967295<br> - rs1_w0_val == 4294705151<br>                                                                                                                                      |[0x80000e88]:UKCRSA32 t6, t5, t4<br> [0x80000e8c]:sd t6, 528(ra)<br>    |
|  68|[0x80003640]<br>0x00000005FFFF07FF|- rs2_w1_val == 2048<br>                                                                                                                                                                                                                                   |[0x80000eb0]:UKCRSA32 t6, t5, t4<br> [0x80000eb4]:sd t6, 544(ra)<br>    |
|  69|[0x80003650]<br>0x0000000001000400|- rs2_w1_val == 1024<br> - rs2_w0_val == 4294967279<br> - rs1_w1_val == 64<br>                                                                                                                                                                             |[0x80000ed4]:UKCRSA32 t6, t5, t4<br> [0x80000ed8]:sd t6, 560(ra)<br>    |
|  70|[0x80003660]<br>0x0000000020000200|- rs2_w1_val == 512<br> - rs1_w0_val == 536870912<br>                                                                                                                                                                                                      |[0x80000ef8]:UKCRSA32 t6, t5, t4<br> [0x80000efc]:sd t6, 576(ra)<br>    |
|  71|[0x80003670]<br>0x007FFFFA00000180|- rs2_w1_val == 256<br> - rs1_w1_val == 8388608<br>                                                                                                                                                                                                        |[0x80000f1c]:UKCRSA32 t6, t5, t4<br> [0x80000f20]:sd t6, 592(ra)<br>    |
|  72|[0x80003680]<br>0x00007FEF01000080|- rs2_w1_val == 128<br> - rs1_w1_val == 32768<br>                                                                                                                                                                                                          |[0x80000f40]:UKCRSA32 t6, t5, t4<br> [0x80000f44]:sd t6, 608(ra)<br>    |
|  73|[0x80003690]<br>0xFFFF7FF210000040|- rs2_w1_val == 64<br> - rs1_w1_val == 4294934527<br> - rs1_w0_val == 268435456<br>                                                                                                                                                                        |[0x80000f64]:UKCRSA32 t6, t5, t4<br> [0x80000f68]:sd t6, 624(ra)<br>    |
|  74|[0x800036a0]<br>0xFFFFBBFFFFFC0007|- rs2_w1_val == 8<br> - rs2_w0_val == 16384<br>                                                                                                                                                                                                            |[0x80000f8c]:UKCRSA32 t6, t5, t4<br> [0x80000f90]:sd t6, 640(ra)<br>    |
|  75|[0x800036b0]<br>0xFFFFF7FA00010004|- rs2_w1_val == 4<br> - rs1_w1_val == 4294965247<br>                                                                                                                                                                                                       |[0x80000fb0]:UKCRSA32 t6, t5, t4<br> [0x80000fb4]:sd t6, 656(ra)<br>    |
|  76|[0x800036c0]<br>0x00000000FFFFFFC1|- rs2_w1_val == 2<br> - rs1_w0_val == 4294967231<br>                                                                                                                                                                                                       |[0x80000fdc]:UKCRSA32 t6, t5, t4<br> [0x80000fe0]:sd t6, 672(ra)<br>    |
|  77|[0x800036d0]<br>0x0000000004000001|- rs2_w1_val == 1<br>                                                                                                                                                                                                                                      |[0x80000ffc]:UKCRSA32 t6, t5, t4<br> [0x80001000]:sd t6, 688(ra)<br>    |
|  78|[0x800036e0]<br>0x00000000FFFFFFFF|- rs2_w1_val == 4294967295<br>                                                                                                                                                                                                                             |[0x8000102c]:UKCRSA32 t6, t5, t4<br> [0x80001030]:sd t6, 704(ra)<br>    |
|  79|[0x800036f0]<br>0x00000000FBFFFFFF|- rs1_w1_val == 1048576<br> - rs1_w0_val == 4227858431<br>                                                                                                                                                                                                 |[0x80001054]:UKCRSA32 t6, t5, t4<br> [0x80001058]:sd t6, 720(ra)<br>    |
|  80|[0x80003700]<br>0x3FFFF000FFFE0008|- rs2_w0_val == 3221225471<br> - rs1_w1_val == 4294963199<br>                                                                                                                                                                                              |[0x80001080]:UKCRSA32 t6, t5, t4<br> [0x80001084]:sd t6, 736(ra)<br>    |
|  81|[0x80003710]<br>0x000000000000100E|- rs2_w0_val == 3758096383<br> - rs1_w1_val == 1024<br>                                                                                                                                                                                                    |[0x800010a8]:UKCRSA32 t6, t5, t4<br> [0x800010ac]:sd t6, 752(ra)<br>    |
|  82|[0x80003720]<br>0x0000000000100012|- rs2_w0_val == 4026531839<br>                                                                                                                                                                                                                             |[0x800010d0]:UKCRSA32 t6, t5, t4<br> [0x800010d4]:sd t6, 768(ra)<br>    |
|  83|[0x80003730]<br>0xFFFFFB7F0000000B|- rs2_w0_val == 128<br>                                                                                                                                                                                                                                    |[0x800010f4]:UKCRSA32 t6, t5, t4<br> [0x800010f8]:sd t6, 784(ra)<br>    |
|  84|[0x80003740]<br>0x0007FFE0FFFFFFFF|- rs2_w0_val == 32<br>                                                                                                                                                                                                                                     |[0x8000111c]:UKCRSA32 t6, t5, t4<br> [0x80001120]:sd t6, 800(ra)<br>    |
|  85|[0x80003750]<br>0xFDFFFFEFDFFFFFFF|- rs2_w0_val == 16<br>                                                                                                                                                                                                                                     |[0x80001144]:UKCRSA32 t6, t5, t4<br> [0x80001148]:sd t6, 816(ra)<br>    |
|  86|[0x80003760]<br>0xFFFFDFF7EFFFFFFF|- rs2_w0_val == 8<br> - rs1_w0_val == 3758096383<br>                                                                                                                                                                                                       |[0x8000116c]:UKCRSA32 t6, t5, t4<br> [0x80001170]:sd t6, 832(ra)<br>    |
|  87|[0x80003770]<br>0x00000FFC0000040D|- rs2_w0_val == 4<br>                                                                                                                                                                                                                                      |[0x80001190]:UKCRSA32 t6, t5, t4<br> [0x80001194]:sd t6, 848(ra)<br>    |
|  88|[0x80003790]<br>0x7FFFFEFF00000804|- rs1_w1_val == 2147483647<br>                                                                                                                                                                                                                             |[0x800011e4]:UKCRSA32 t6, t5, t4<br> [0x800011e8]:sd t6, 880(ra)<br>    |
|  89|[0x800037a0]<br>0xBFFFFFEDFE00000F|- rs1_w1_val == 3221225471<br>                                                                                                                                                                                                                             |[0x80001210]:UKCRSA32 t6, t5, t4<br> [0x80001214]:sd t6, 896(ra)<br>    |
|  90|[0x800037b0]<br>0xEFFFFDFFFFFFFFFF|- rs1_w1_val == 4026531839<br>                                                                                                                                                                                                                             |[0x8000123c]:UKCRSA32 t6, t5, t4<br> [0x80001240]:sd t6, 912(ra)<br>    |
|  91|[0x800037c0]<br>0x00000000000000C0|- rs1_w1_val == 4160749567<br>                                                                                                                                                                                                                             |[0x80001264]:UKCRSA32 t6, t5, t4<br> [0x80001268]:sd t6, 928(ra)<br>    |
|  92|[0x800037d0]<br>0xFFEF7FFFAAAAAAB9|- rs1_w1_val == 4293918719<br>                                                                                                                                                                                                                             |[0x80001294]:UKCRSA32 t6, t5, t4<br> [0x80001298]:sd t6, 944(ra)<br>    |
|  93|[0x800037e0]<br>0x00040000FFFFFFFF|- rs1_w1_val == 4294705151<br> - rs1_w0_val == 4026531839<br>                                                                                                                                                                                              |[0x800012c4]:UKCRSA32 t6, t5, t4<br> [0x800012c8]:sd t6, 960(ra)<br>    |
|  94|[0x800037f0]<br>0xFBFFFDFFFF807FFF|- rs1_w1_val == 4294966783<br>                                                                                                                                                                                                                             |[0x800012e8]:UKCRSA32 t6, t5, t4<br> [0x800012ec]:sd t6, 976(ra)<br>    |
|  95|[0x80003800]<br>0x7FFFFFBF20400000|- rs1_w1_val == 4294967231<br>                                                                                                                                                                                                                             |[0x80001308]:UKCRSA32 t6, t5, t4<br> [0x8000130c]:sd t6, 992(ra)<br>    |
|  96|[0x80003810]<br>0x000000E080000080|- rs1_w1_val == 4294967263<br> - rs1_w0_val == 2147483648<br>                                                                                                                                                                                              |[0x80001328]:UKCRSA32 t6, t5, t4<br> [0x8000132c]:sd t6, 1008(ra)<br>   |
|  97|[0x80003820]<br>0xAAAAAA9AFFFFFFFF|- rs1_w1_val == 4294967279<br> - rs1_w0_val == 4294965247<br>                                                                                                                                                                                              |[0x80001354]:UKCRSA32 t6, t5, t4<br> [0x80001358]:sd t6, 1024(ra)<br>   |
|  98|[0x80003830]<br>0x01FFFFF8FFFFFFFF|- rs1_w1_val == 4294967287<br>                                                                                                                                                                                                                             |[0x80001384]:UKCRSA32 t6, t5, t4<br> [0x80001388]:sd t6, 1040(ra)<br>   |
|  99|[0x80003840]<br>0x0000000640100000|- rs2_w0_val == 4294967287<br> - rs1_w1_val == 4294967293<br> - rs1_w0_val == 1073741824<br>                                                                                                                                                               |[0x800013a8]:UKCRSA32 t6, t5, t4<br> [0x800013ac]:sd t6, 1056(ra)<br>   |
| 100|[0x80003850]<br>0x00000FFFFFFFFFFF|- rs1_w1_val == 4294967294<br> - rs1_w0_val == 4294963199<br>                                                                                                                                                                                              |[0x800013d8]:UKCRSA32 t6, t5, t4<br> [0x800013dc]:sd t6, 1072(ra)<br>   |
| 101|[0x80003860]<br>0x000000000800000C|- rs2_w0_val == 4294967231<br> - rs1_w1_val == 2147483648<br>                                                                                                                                                                                              |[0x80001400]:UKCRSA32 t6, t5, t4<br> [0x80001404]:sd t6, 1088(ra)<br>   |
| 102|[0x80003870]<br>0x07E00000FFFFFFFF|- rs1_w1_val == 134217728<br> - rs1_w0_val == 4292870143<br>                                                                                                                                                                                               |[0x8000142c]:UKCRSA32 t6, t5, t4<br> [0x80001430]:sd t6, 1104(ra)<br>   |
| 103|[0x80003880]<br>0x00030000FF80FFFF|- rs1_w1_val == 262144<br>                                                                                                                                                                                                                                 |[0x8000145c]:UKCRSA32 t6, t5, t4<br> [0x80001460]:sd t6, 1120(ra)<br>   |
| 104|[0x80003890]<br>0x00000000FFFFFFFF|- rs1_w1_val == 16384<br>                                                                                                                                                                                                                                  |[0x80001488]:UKCRSA32 t6, t5, t4<br> [0x8000148c]:sd t6, 1136(ra)<br>   |
| 105|[0x800038a0]<br>0x000000000040000B|- rs2_w0_val == 4294934527<br> - rs1_w1_val == 8192<br>                                                                                                                                                                                                    |[0x800014b8]:UKCRSA32 t6, t5, t4<br> [0x800014bc]:sd t6, 1152(ra)<br>   |
| 106|[0x800038b0]<br>0x00000000FFFFFFFF|- rs1_w1_val == 128<br>                                                                                                                                                                                                                                    |[0x800014e0]:UKCRSA32 t6, t5, t4<br> [0x800014e4]:sd t6, 1168(ra)<br>   |
| 107|[0x800038c0]<br>0x00000000FFFFFFFF|- rs1_w1_val == 4<br>                                                                                                                                                                                                                                      |[0x80001514]:UKCRSA32 t6, t5, t4<br> [0x80001518]:sd t6, 1184(ra)<br>   |
| 108|[0x800038d0]<br>0x7FFE0000FFFFFFFF|- rs1_w0_val == 3221225471<br>                                                                                                                                                                                                                             |[0x80001540]:UKCRSA32 t6, t5, t4<br> [0x80001544]:sd t6, 1200(ra)<br>   |
| 109|[0x800038e0]<br>0x0004000000000101|- rs2_w0_val == 4294705151<br>                                                                                                                                                                                                                             |[0x80001568]:UKCRSA32 t6, t5, t4<br> [0x8000156c]:sd t6, 1216(ra)<br>   |
| 110|[0x800038f0]<br>0x00000000AAABAAAA|- rs2_w0_val == 4294836223<br>                                                                                                                                                                                                                             |[0x8000159c]:UKCRSA32 t6, t5, t4<br> [0x800015a0]:sd t6, 1232(ra)<br>   |
| 111|[0x80003900]<br>0x00000000FFFE0010|- rs2_w0_val == 4294901759<br> - rs1_w0_val == 4294836223<br>                                                                                                                                                                                              |[0x800015d0]:UKCRSA32 t6, t5, t4<br> [0x800015d4]:sd t6, 1248(ra)<br>   |
| 112|[0x80003910]<br>0x00000000FF00000B|- rs1_w0_val == 4278190079<br>                                                                                                                                                                                                                             |[0x800015f4]:UKCRSA32 t6, t5, t4<br> [0x800015f8]:sd t6, 1264(ra)<br>   |
| 113|[0x80003920]<br>0x00000000FFFFFFFF|- rs1_w0_val == 4293918719<br>                                                                                                                                                                                                                             |[0x8000161c]:UKCRSA32 t6, t5, t4<br> [0x80001620]:sd t6, 1280(ra)<br>   |
| 114|[0x80003930]<br>0x00000000FFE003FF|- rs2_w0_val == 4294965247<br>                                                                                                                                                                                                                             |[0x80001648]:UKCRSA32 t6, t5, t4<br> [0x8000164c]:sd t6, 1296(ra)<br>   |
| 115|[0x80003940]<br>0x0000000055555566|- rs2_w0_val == 4294966783<br>                                                                                                                                                                                                                             |[0x80001670]:UKCRSA32 t6, t5, t4<br> [0x80001674]:sd t6, 1312(ra)<br>   |
| 116|[0x80003950]<br>0x00000000FFFFFFFF|- rs2_w0_val == 4294967167<br> - rs1_w0_val == 4294967287<br>                                                                                                                                                                                              |[0x80001694]:UKCRSA32 t6, t5, t4<br> [0x80001698]:sd t6, 1328(ra)<br>   |
| 117|[0x80003960]<br>0x00000000FFFFC002|- rs1_w0_val == 4294950911<br>                                                                                                                                                                                                                             |[0x800016bc]:UKCRSA32 t6, t5, t4<br> [0x800016c0]:sd t6, 1344(ra)<br>   |
| 118|[0x80003970]<br>0x00000000FFFFFFFF|- rs2_w0_val == 4294967263<br>                                                                                                                                                                                                                             |[0x800016e8]:UKCRSA32 t6, t5, t4<br> [0x800016ec]:sd t6, 1360(ra)<br>   |
| 119|[0x80003980]<br>0x0000000000002003|- rs2_w0_val == 4294967293<br>                                                                                                                                                                                                                             |[0x80001710]:UKCRSA32 t6, t5, t4<br> [0x80001714]:sd t6, 1376(ra)<br>   |
| 120|[0x80003990]<br>0x00000000FFFFFFFF|- rs2_w0_val == 4294967294<br> - rs1_w0_val == 4294967291<br>                                                                                                                                                                                              |[0x80001734]:UKCRSA32 t6, t5, t4<br> [0x80001738]:sd t6, 1392(ra)<br>   |
| 121|[0x800039a0]<br>0x00000000FFFFFFFF|- rs2_w0_val == 1073741824<br>                                                                                                                                                                                                                             |[0x80001754]:UKCRSA32 t6, t5, t4<br> [0x80001758]:sd t6, 1408(ra)<br>   |
| 122|[0x800039b0]<br>0x00000000FFFFFFFF|- rs2_w0_val == 536870912<br>                                                                                                                                                                                                                              |[0x80001778]:UKCRSA32 t6, t5, t4<br> [0x8000177c]:sd t6, 1424(ra)<br>   |
| 123|[0x800039c0]<br>0x7FFFEFFFFFFFFFFF|- rs2_w0_val == 4096<br> - rs1_w0_val == 4294967293<br>                                                                                                                                                                                                    |[0x800017a4]:UKCRSA32 t6, t5, t4<br> [0x800017a8]:sd t6, 1440(ra)<br>   |
| 124|[0x800039d0]<br>0xFEFFF7FFFFFFFFFF|- rs2_w0_val == 16777216<br>                                                                                                                                                                                                                               |[0x800017d0]:UKCRSA32 t6, t5, t4<br> [0x800017d4]:sd t6, 1456(ra)<br>   |
| 125|[0x800039e0]<br>0xFFFFFEF9FFFFFFFF|- rs1_w0_val == 4294967294<br>                                                                                                                                                                                                                             |[0x800017f4]:UKCRSA32 t6, t5, t4<br> [0x800017f8]:sd t6, 1472(ra)<br>   |
| 126|[0x800039f0]<br>0x00000000FFFFFFFF|- rs2_w0_val == 131072<br>                                                                                                                                                                                                                                 |[0x8000181c]:UKCRSA32 t6, t5, t4<br> [0x80001820]:sd t6, 1488(ra)<br>   |
| 127|[0x80003a00]<br>0xFFBFFBFFFE0007FF|- rs2_w0_val == 4194304<br>                                                                                                                                                                                                                                |[0x80001844]:UKCRSA32 t6, t5, t4<br> [0x80001848]:sd t6, 1504(ra)<br>   |
| 128|[0x80003a10]<br>0x0000000000100007|- rs1_w0_val == 1048576<br>                                                                                                                                                                                                                                |[0x8000186c]:UKCRSA32 t6, t5, t4<br> [0x80001870]:sd t6, 1520(ra)<br>   |
| 129|[0x80003a20]<br>0x0000000000080001|- rs1_w0_val == 524288<br>                                                                                                                                                                                                                                 |[0x80001890]:UKCRSA32 t6, t5, t4<br> [0x80001894]:sd t6, 1536(ra)<br>   |
| 130|[0x80003a50]<br>0x00000000FFFF800A|- rs2_w1_val == 4294934527<br>                                                                                                                                                                                                                             |[0x800018fc]:UKCRSA32 t6, t5, t4<br> [0x80001900]:sd t6, 1584(ra)<br>   |
