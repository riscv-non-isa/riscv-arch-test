
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001970')]      |
| SIG_REGION                | [('0x80003210', '0x80003aa0', '274 dwords')]      |
| COV_LABELS                | uksub32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/uksub32-01.S    |
| Total Number of coverpoints| 384     |
| Total Coverpoints Hit     | 378      |
| Total Signature Updates   | 274      |
| STAT1                     | 135      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 137     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001578]:UKSUB32 t6, t5, t4
      [0x8000157c]:sd t6, 1456(gp)
 -- Signature Address: 0x80003900 Data: 0x0000000000FFFFFD
 -- Redundant Coverpoints hit by the op
      - opcode : uksub32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0
      - rs1_w1_val == 0
      - rs1_w0_val == 16777216




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001938]:UKSUB32 t6, t5, t4
      [0x8000193c]:sd t6, 1840(gp)
 -- Signature Address: 0x80003a80 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : uksub32
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w0_val == 0
      - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0
      - rs2_w1_val == 2147483648
      - rs2_w0_val == 4261412863
      - rs1_w1_val == 32






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : uksub32', 'rs1 : x1', 'rs2 : x1', 'rd : x0', 'rs1 == rs2 != rd', 'rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 2147483648', 'rs2_w0_val == 4261412863', 'rs1_w1_val == 2147483648', 'rs1_w0_val == 4261412863']
Last Code Sequence : 
	-[0x800003c0]:UKSUB32 zero, ra, ra
	-[0x800003c4]:sd zero, 0(s2)
Current Store : [0x800003c8] : sd ra, 8(s2) -- Store: [0x80003218]:0x80000000FDFFFFFF




Last Coverpoint : ['rs1 : x14', 'rs2 : x14', 'rd : x14', 'rs1 == rs2 == rd', 'rs2_w0_val == 4294967295', 'rs1_w0_val == 4294967295']
Last Code Sequence : 
	-[0x800003e4]:UKSUB32 a4, a4, a4
	-[0x800003e8]:sd a4, 16(s2)
Current Store : [0x800003ec] : sd a4, 24(s2) -- Store: [0x80003228]:0x0000000000000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x6', 'rd : x23', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs2_w1_val == 1048576', 'rs1_w1_val == 4294959103']
Last Code Sequence : 
	-[0x8000040c]:UKSUB32 s7, t3, t1
	-[0x80000410]:sd s7, 32(s2)
Current Store : [0x80000414] : sd t3, 40(s2) -- Store: [0x80003238]:0xFFFFDFFFFFFFFFFF




Last Coverpoint : ['rs1 : x19', 'rs2 : x10', 'rd : x19', 'rs1 == rd != rs2', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 2863311530', 'rs2_w0_val == 4294967167', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000434]:UKSUB32 s3, s3, a0
	-[0x80000438]:sd s3, 48(s2)
Current Store : [0x8000043c] : sd s3, 56(s2) -- Store: [0x80003248]:0x0000000000000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x20', 'rd : x20', 'rs2 == rd != rs1', 'rs1_w0_val == 0', 'rs2_w1_val == 1431655765', 'rs2_w0_val == 4294966271', 'rs1_w1_val == 0']
Last Code Sequence : 
	-[0x80000460]:UKSUB32 s4, zero, s4
	-[0x80000464]:sd s4, 64(s2)
Current Store : [0x80000468] : sd zero, 72(s2) -- Store: [0x80003258]:0x0000000000000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x31', 'rd : x27', 'rs2_w1_val == 2147483647', 'rs2_w0_val == 67108864', 'rs1_w1_val == 4294967231', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000488]:UKSUB32 s11, a0, t6
	-[0x8000048c]:sd s11, 80(s2)
Current Store : [0x80000490] : sd a0, 88(s2) -- Store: [0x80003268]:0xFFFFFFBF00000004




Last Coverpoint : ['rs1 : x15', 'rs2 : x5', 'rd : x7', 'rs2_w1_val == 3221225471', 'rs2_w0_val == 4286578687', 'rs1_w1_val == 8388608', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x800004b8]:UKSUB32 t2, a5, t0
	-[0x800004bc]:sd t2, 96(s2)
Current Store : [0x800004c0] : sd a5, 104(s2) -- Store: [0x80003278]:0x0080000000002000




Last Coverpoint : ['rs1 : x3', 'rs2 : x15', 'rd : x22', 'rs2_w1_val == 3758096383', 'rs2_w0_val == 8192', 'rs1_w1_val == 4294443007']
Last Code Sequence : 
	-[0x800004e8]:UKSUB32 s6, gp, a5
	-[0x800004ec]:sd s6, 112(s2)
Current Store : [0x800004f0] : sd gp, 120(s2) -- Store: [0x80003288]:0xFFF7FFFF00000003




Last Coverpoint : ['rs1 : x26', 'rs2 : x7', 'rd : x5', 'rs2_w1_val == 4026531839', 'rs2_w0_val == 2147483647', 'rs1_w1_val == 4294967295', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x8000050c]:UKSUB32 t0, s10, t2
	-[0x80000510]:sd t0, 128(s2)
Current Store : [0x80000514] : sd s10, 136(s2) -- Store: [0x80003298]:0xFFFFFFFF20000000




Last Coverpoint : ['rs1 : x2', 'rs2 : x22', 'rd : x13', 'rs2_w1_val == 4160749567', 'rs2_w0_val == 4278190079', 'rs1_w0_val == 4294967293']
Last Code Sequence : 
	-[0x80000538]:UKSUB32 a3, sp, s6
	-[0x8000053c]:sd a3, 144(s2)
Current Store : [0x80000540] : sd sp, 152(s2) -- Store: [0x800032a8]:0x0000000CFFFFFFFD




Last Coverpoint : ['rs1 : x21', 'rs2 : x23', 'rd : x3', 'rs2_w1_val == 4227858431', 'rs2_w0_val == 4096', 'rs1_w1_val == 4294967039', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000564]:UKSUB32 gp, s5, s7
	-[0x80000568]:sd gp, 160(s2)
Current Store : [0x8000056c] : sd s5, 168(s2) -- Store: [0x800032b8]:0xFFFFFEFF00020000




Last Coverpoint : ['rs1 : x5', 'rs2 : x21', 'rd : x10', 'rs2_w1_val == 4261412863', 'rs2_w0_val == 4294967287']
Last Code Sequence : 
	-[0x80000588]:UKSUB32 a0, t0, s5
	-[0x8000058c]:sd a0, 176(s2)
Current Store : [0x80000590] : sd t0, 184(s2) -- Store: [0x800032c8]:0xFFFFFEFF0000000C




Last Coverpoint : ['rs1 : x13', 'rs2 : x9', 'rd : x6', 'rs2_w1_val == 4278190079', 'rs2_w0_val == 536870912']
Last Code Sequence : 
	-[0x800005ac]:UKSUB32 t1, a3, s1
	-[0x800005b0]:sd t1, 192(s2)
Current Store : [0x800005b4] : sd a3, 200(s2) -- Store: [0x800032d8]:0xFFFFFFFF0000000B




Last Coverpoint : ['rs1 : x16', 'rs2 : x26', 'rd : x12', 'rs2_w1_val == 4286578687', 'rs2_w0_val == 2048', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x800005dc]:UKSUB32 a2, a6, s10
	-[0x800005e0]:sd a2, 208(s2)
Current Store : [0x800005e4] : sd a6, 216(s2) -- Store: [0x800032e8]:0x0000000300000400




Last Coverpoint : ['rs1 : x11', 'rs2 : x4', 'rd : x21', 'rs2_w1_val == 4290772991', 'rs2_w0_val == 2097152', 'rs1_w1_val == 536870912', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000608]:UKSUB32 s5, a1, tp
	-[0x8000060c]:sd s5, 224(s2)
Current Store : [0x80000610] : sd a1, 232(s2) -- Store: [0x800032f8]:0x2000000000080000




Last Coverpoint : ['rs1 : x25', 'rs2 : x12', 'rd : x9', 'rs2_w1_val == 4292870143', 'rs2_w0_val == 16384', 'rs1_w1_val == 4294967291']
Last Code Sequence : 
	-[0x80000630]:UKSUB32 s1, s9, a2
	-[0x80000634]:sd s1, 240(s2)
Current Store : [0x80000638] : sd s9, 248(s2) -- Store: [0x80003308]:0xFFFFFFFB00000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x0', 'rd : x2', 'rs2_w1_val == 0', 'rs2_w0_val == 0', 'rs1_w1_val == 32']
Last Code Sequence : 
	-[0x8000065c]:UKSUB32 sp, s4, zero
	-[0x80000660]:sd sp, 256(s2)
Current Store : [0x80000664] : sd s4, 264(s2) -- Store: [0x80003318]:0x0000002000020000




Last Coverpoint : ['rs1 : x8', 'rs2 : x19', 'rd : x11', 'rs2_w1_val == 4294443007', 'rs2_w0_val == 4294963199', 'rs1_w1_val == 4294966783', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x8000068c]:UKSUB32 a1, fp, s3
	-[0x80000690]:sd a1, 272(s2)
Current Store : [0x80000694] : sd fp, 280(s2) -- Store: [0x80003328]:0xFFFFFDFF00000800




Last Coverpoint : ['rs1 : x23', 'rs2 : x3', 'rd : x28', 'rs2_w1_val == 4294705151', 'rs2_w0_val == 4294966783', 'rs1_w1_val == 4', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x800006b0]:UKSUB32 t3, s7, gp
	-[0x800006b4]:sd t3, 288(s2)
Current Store : [0x800006b8] : sd s7, 296(s2) -- Store: [0x80003338]:0x0000000400400000




Last Coverpoint : ['rs1 : x17', 'rs2 : x27', 'rd : x29', 'rs2_w1_val == 4294836223', 'rs1_w1_val == 2147483647', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x800006e8]:UKSUB32 t4, a7, s11
	-[0x800006ec]:sd t4, 304(s2)
Current Store : [0x800006f0] : sd a7, 312(s2) -- Store: [0x80003348]:0x7FFFFFFF55555555




Last Coverpoint : ['rs1 : x4', 'rs2 : x29', 'rd : x15', 'rs2_w1_val == 4294901759', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x80000710]:UKSUB32 a5, tp, t4
	-[0x80000714]:sd a5, 0(gp)
Current Store : [0x80000718] : sd tp, 8(gp) -- Store: [0x80003358]:0x0000000408000000




Last Coverpoint : ['rs1 : x22', 'rs2 : x30', 'rd : x31', 'rs2_w1_val == 4294934527', 'rs2_w0_val == 524288']
Last Code Sequence : 
	-[0x80000738]:UKSUB32 t6, s6, t5
	-[0x8000073c]:sd t6, 16(gp)
Current Store : [0x80000740] : sd s6, 24(gp) -- Store: [0x80003368]:0x00000020FDFFFFFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x16', 'rd : x4', 'rs2_w1_val == 4294950911', 'rs1_w1_val == 4261412863']
Last Code Sequence : 
	-[0x80000764]:UKSUB32 tp, s2, a6
	-[0x80000768]:sd tp, 32(gp)
Current Store : [0x8000076c] : sd s2, 40(gp) -- Store: [0x80003378]:0xFDFFFFFF00000009




Last Coverpoint : ['rs1 : x12', 'rs2 : x25', 'rd : x30', 'rs2_w1_val == 4294959103', 'rs2_w0_val == 4294967279', 'rs1_w1_val == 16', 'rs1_w0_val == 4294967291']
Last Code Sequence : 
	-[0x80000788]:UKSUB32 t5, a2, s9
	-[0x8000078c]:sd t5, 48(gp)
Current Store : [0x80000790] : sd a2, 56(gp) -- Store: [0x80003388]:0x00000010FFFFFFFB




Last Coverpoint : ['rs1 : x30', 'rs2 : x11', 'rd : x26', 'rs2_w1_val == 4294963199', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x800007b0]:UKSUB32 s10, t5, a1
	-[0x800007b4]:sd s10, 64(gp)
Current Store : [0x800007b8] : sd t5, 72(gp) -- Store: [0x80003398]:0x0000001000200000




Last Coverpoint : ['rs1 : x27', 'rs2 : x28', 'rd : x1', 'rs2_w1_val == 4294965247', 'rs2_w0_val == 4290772991', 'rs1_w1_val == 1', 'rs1_w0_val == 2863311530']
Last Code Sequence : 
	-[0x800007dc]:UKSUB32 ra, s11, t3
	-[0x800007e0]:sd ra, 80(gp)
Current Store : [0x800007e4] : sd s11, 88(gp) -- Store: [0x800033a8]:0x00000001AAAAAAAA




Last Coverpoint : ['rs1 : x6', 'rs2 : x17', 'rd : x24', 'rs2_w1_val == 4294966271', 'rs2_w0_val == 3758096383', 'rs1_w0_val == 4294959103']
Last Code Sequence : 
	-[0x80000800]:UKSUB32 s8, t1, a7
	-[0x80000804]:sd s8, 96(gp)
Current Store : [0x80000808] : sd t1, 104(gp) -- Store: [0x800033b8]:0xFFFFFFFFFFFFDFFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x13', 'rd : x16', 'rs2_w1_val == 4294966783', 'rs1_w1_val == 512']
Last Code Sequence : 
	-[0x80000820]:UKSUB32 a6, s8, a3
	-[0x80000824]:sd a6, 112(gp)
Current Store : [0x80000828] : sd s8, 120(gp) -- Store: [0x800033c8]:0x0000020000000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x24', 'rd : x17', 'rs2_w1_val == 4294967039', 'rs2_w0_val == 65536', 'rs1_w1_val == 4294836223', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000844]:UKSUB32 a7, t4, s8
	-[0x80000848]:sd a7, 128(gp)
Current Store : [0x8000084c] : sd t4, 136(gp) -- Store: [0x800033d8]:0xFFFDFFFF00800000




Last Coverpoint : ['rs1 : x7', 'rs2 : x2', 'rd : x18', 'rs2_w1_val == 4294967167']
Last Code Sequence : 
	-[0x80000868]:UKSUB32 s2, t2, sp
	-[0x8000086c]:sd s2, 144(gp)
Current Store : [0x80000870] : sd t2, 152(gp) -- Store: [0x800033e8]:0x0000000F00000009




Last Coverpoint : ['rs1 : x31', 'rs2 : x8', 'rd : x25', 'rs2_w1_val == 4294967231', 'rs1_w1_val == 128']
Last Code Sequence : 
	-[0x8000088c]:UKSUB32 s9, t6, fp
	-[0x80000890]:sd s9, 160(gp)
Current Store : [0x80000894] : sd t6, 168(gp) -- Store: [0x800033f8]:0x0000008000000011




Last Coverpoint : ['rs1 : x9', 'rs2 : x18', 'rd : x8', 'rs2_w1_val == 4294967263', 'rs2_w0_val == 268435456', 'rs1_w1_val == 4294705151', 'rs1_w0_val == 4286578687']
Last Code Sequence : 
	-[0x800008b0]:UKSUB32 fp, s1, s2
	-[0x800008b4]:sd fp, 176(gp)
Current Store : [0x800008b8] : sd s1, 184(gp) -- Store: [0x80003408]:0xFFFBFFFFFF7FFFFF




Last Coverpoint : ['rs2_w1_val == 4294967279', 'rs2_w0_val == 16777216', 'rs1_w0_val == 4294443007']
Last Code Sequence : 
	-[0x800008d8]:UKSUB32 t6, t5, t4
	-[0x800008dc]:sd t6, 192(gp)
Current Store : [0x800008e0] : sd t5, 200(gp) -- Store: [0x80003418]:0xFFFFFFBFFFF7FFFF




Last Coverpoint : ['rs2_w1_val == 4294967287', 'rs2_w0_val == 134217728', 'rs1_w0_val == 4294965247']
Last Code Sequence : 
	-[0x800008fc]:UKSUB32 t6, t5, t4
	-[0x80000900]:sd t6, 208(gp)
Current Store : [0x80000904] : sd t5, 216(gp) -- Store: [0x80003428]:0x00000004FFFFF7FF




Last Coverpoint : ['rs2_w1_val == 4294967291', 'rs1_w1_val == 4294901759', 'rs1_w0_val == 3758096383']
Last Code Sequence : 
	-[0x80000924]:UKSUB32 t6, t5, t4
	-[0x80000928]:sd t6, 224(gp)
Current Store : [0x8000092c] : sd t5, 232(gp) -- Store: [0x80003438]:0xFFFEFFFFDFFFFFFF




Last Coverpoint : ['rs2_w1_val == 4294967293', 'rs2_w0_val == 1431655765', 'rs1_w0_val == 4290772991']
Last Code Sequence : 
	-[0x80000950]:UKSUB32 t6, t5, t4
	-[0x80000954]:sd t6, 240(gp)
Current Store : [0x80000958] : sd t5, 248(gp) -- Store: [0x80003448]:0x0000000BFFBFFFFF




Last Coverpoint : ['rs2_w1_val == 4294967294']
Last Code Sequence : 
	-[0x80000974]:UKSUB32 t6, t5, t4
	-[0x80000978]:sd t6, 256(gp)
Current Store : [0x8000097c] : sd t5, 264(gp) -- Store: [0x80003458]:0x0000000AFFFFFFFF




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs2_w0_val == 4294967231', 'rs1_w1_val == 4294967263']
Last Code Sequence : 
	-[0x800009a0]:UKSUB32 t6, t5, t4
	-[0x800009a4]:sd t6, 272(gp)
Current Store : [0x800009a8] : sd t5, 280(gp) -- Store: [0x80003468]:0xFFFFFFDFFF7FFFFF




Last Coverpoint : ['rs2_w1_val == 536870912', 'rs1_w1_val == 4294934527']
Last Code Sequence : 
	-[0x800009c4]:UKSUB32 t6, t5, t4
	-[0x800009c8]:sd t6, 288(gp)
Current Store : [0x800009cc] : sd t5, 296(gp) -- Store: [0x80003478]:0xFFFF7FFF00400000




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x800009f0]:UKSUB32 t6, t5, t4
	-[0x800009f4]:sd t6, 304(gp)
Current Store : [0x800009f8] : sd t5, 312(gp) -- Store: [0x80003488]:0xFFF7FFFF00100000




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs2_w0_val == 4227858431', 'rs1_w1_val == 3758096383']
Last Code Sequence : 
	-[0x80000a20]:UKSUB32 t6, t5, t4
	-[0x80000a24]:sd t6, 320(gp)
Current Store : [0x80000a28] : sd t5, 328(gp) -- Store: [0x80003498]:0xDFFFFFFF00000011




Last Coverpoint : ['rs2_w1_val == 67108864', 'rs2_w0_val == 4294967294', 'rs1_w1_val == 4026531839']
Last Code Sequence : 
	-[0x80000a50]:UKSUB32 t6, t5, t4
	-[0x80000a54]:sd t6, 336(gp)
Current Store : [0x80000a58] : sd t5, 344(gp) -- Store: [0x800034a8]:0xEFFFFFFFDFFFFFFF




Last Coverpoint : ['rs2_w1_val == 33554432']
Last Code Sequence : 
	-[0x80000a80]:UKSUB32 t6, t5, t4
	-[0x80000a84]:sd t6, 352(gp)
Current Store : [0x80000a88] : sd t5, 360(gp) -- Store: [0x800034b8]:0xFFF7FFFFAAAAAAAA




Last Coverpoint : ['rs2_w1_val == 16777216']
Last Code Sequence : 
	-[0x80000aac]:UKSUB32 t6, t5, t4
	-[0x80000ab0]:sd t6, 368(gp)
Current Store : [0x80000ab4] : sd t5, 376(gp) -- Store: [0x800034c8]:0x0000000400000800




Last Coverpoint : ['rs2_w1_val == 8388608', 'rs1_w1_val == 65536', 'rs1_w0_val == 4294901759']
Last Code Sequence : 
	-[0x80000adc]:UKSUB32 t6, t5, t4
	-[0x80000ae0]:sd t6, 384(gp)
Current Store : [0x80000ae4] : sd t5, 392(gp) -- Store: [0x800034d8]:0x00010000FFFEFFFF




Last Coverpoint : ['rs2_w1_val == 4194304', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000b04]:UKSUB32 t6, t5, t4
	-[0x80000b08]:sd t6, 400(gp)
Current Store : [0x80000b0c] : sd t5, 408(gp) -- Store: [0x800034e8]:0x0000000900000080




Last Coverpoint : ['rs2_w1_val == 2097152', 'rs2_w0_val == 4294967291']
Last Code Sequence : 
	-[0x80000b30]:UKSUB32 t6, t5, t4
	-[0x80000b34]:sd t6, 416(gp)
Current Store : [0x80000b38] : sd t5, 424(gp) -- Store: [0x800034f8]:0x20000000FFFFFFFF




Last Coverpoint : ['rs2_w1_val == 524288', 'rs2_w0_val == 4194304', 'rs1_w1_val == 2863311530', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000b5c]:UKSUB32 t6, t5, t4
	-[0x80000b60]:sd t6, 432(gp)
Current Store : [0x80000b64] : sd t5, 440(gp) -- Store: [0x80003508]:0xAAAAAAAA40000000




Last Coverpoint : ['rs2_w1_val == 262144', 'rs2_w0_val == 4292870143', 'rs1_w1_val == 131072']
Last Code Sequence : 
	-[0x80000b88]:UKSUB32 t6, t5, t4
	-[0x80000b8c]:sd t6, 448(gp)
Current Store : [0x80000b90] : sd t5, 456(gp) -- Store: [0x80003518]:0x00020000FFFFFFFF




Last Coverpoint : ['rs2_w1_val == 131072']
Last Code Sequence : 
	-[0x80000bb0]:UKSUB32 t6, t5, t4
	-[0x80000bb4]:sd t6, 464(gp)
Current Store : [0x80000bb8] : sd t5, 472(gp) -- Store: [0x80003528]:0xFFFEFFFFFFFFFFFB




Last Coverpoint : ['rs2_w1_val == 65536']
Last Code Sequence : 
	-[0x80000bdc]:UKSUB32 t6, t5, t4
	-[0x80000be0]:sd t6, 480(gp)
Current Store : [0x80000be4] : sd t5, 488(gp) -- Store: [0x80003538]:0xFFFDFFFF0000000E




Last Coverpoint : ['rs2_w1_val == 32768', 'rs2_w0_val == 4294443007', 'rs1_w1_val == 268435456', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000c08]:UKSUB32 t6, t5, t4
	-[0x80000c0c]:sd t6, 496(gp)
Current Store : [0x80000c10] : sd t5, 504(gp) -- Store: [0x80003548]:0x1000000000008000




Last Coverpoint : ['rs2_w1_val == 16384', 'rs2_w0_val == 131072', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000c34]:UKSUB32 t6, t5, t4
	-[0x80000c38]:sd t6, 512(gp)
Current Store : [0x80000c3c] : sd t5, 520(gp) -- Store: [0x80003558]:0xFFFFDFFF00001000




Last Coverpoint : ['rs1_w1_val == 4290772991', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000c68]:UKSUB32 t6, t5, t4
	-[0x80000c6c]:sd t6, 528(gp)
Current Store : [0x80000c70] : sd t5, 536(gp) -- Store: [0x80003568]:0xFFBFFFFF00040000




Last Coverpoint : ['rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000c94]:UKSUB32 t6, t5, t4
	-[0x80000c98]:sd t6, 544(gp)
Current Store : [0x80000c9c] : sd t5, 552(gp) -- Store: [0x80003578]:0xEFFFFFFF00010000




Last Coverpoint : ['rs1_w1_val == 4294967167', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000cc0]:UKSUB32 t6, t5, t4
	-[0x80000cc4]:sd t6, 560(gp)
Current Store : [0x80000cc8] : sd t5, 568(gp) -- Store: [0x80003588]:0xFFFFFF7F00004000




Last Coverpoint : ['rs2_w1_val == 8', 'rs2_w0_val == 4294965247', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000ce8]:UKSUB32 t6, t5, t4
	-[0x80000cec]:sd t6, 576(gp)
Current Store : [0x80000cf0] : sd t5, 584(gp) -- Store: [0x80003598]:0xFFFFFEFF00000200




Last Coverpoint : ['rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000d10]:UKSUB32 t6, t5, t4
	-[0x80000d14]:sd t6, 592(gp)
Current Store : [0x80000d18] : sd t5, 600(gp) -- Store: [0x800035a8]:0xFDFFFFFF00000100




Last Coverpoint : ['rs2_w0_val == 32', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000d34]:UKSUB32 t6, t5, t4
	-[0x80000d38]:sd t6, 608(gp)
Current Store : [0x80000d3c] : sd t5, 616(gp) -- Store: [0x800035b8]:0xFFFFFFFF00000040




Last Coverpoint : ['rs2_w1_val == 1', 'rs2_w0_val == 2147483648', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000d54]:UKSUB32 t6, t5, t4
	-[0x80000d58]:sd t6, 624(gp)
Current Store : [0x80000d5c] : sd t5, 632(gp) -- Store: [0x800035c8]:0x2000000000000010




Last Coverpoint : ['rs2_w0_val == 4294950911', 'rs1_w1_val == 1073741824', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000d7c]:UKSUB32 t6, t5, t4
	-[0x80000d80]:sd t6, 640(gp)
Current Store : [0x80000d84] : sd t5, 648(gp) -- Store: [0x800035d8]:0x4000000000000008




Last Coverpoint : ['rs2_w0_val == 4026531839', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000da8]:UKSUB32 t6, t5, t4
	-[0x80000dac]:sd t6, 656(gp)
Current Store : [0x80000db0] : sd t5, 664(gp) -- Store: [0x800035e8]:0xFFFBFFFF00000002




Last Coverpoint : ['rs2_w0_val == 1024', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000dd0]:UKSUB32 t6, t5, t4
	-[0x80000dd4]:sd t6, 672(gp)
Current Store : [0x80000dd8] : sd t5, 680(gp) -- Store: [0x800035f8]:0x1000000000000001




Last Coverpoint : ['rs2_w1_val == 8192', 'rs1_w0_val == 4294967294']
Last Code Sequence : 
	-[0x80000df8]:UKSUB32 t6, t5, t4
	-[0x80000dfc]:sd t6, 688(gp)
Current Store : [0x80000e00] : sd t5, 696(gp) -- Store: [0x80003608]:0x00800000FFFFFFFE




Last Coverpoint : ['rs2_w1_val == 4096', 'rs1_w1_val == 4286578687']
Last Code Sequence : 
	-[0x80000e24]:UKSUB32 t6, t5, t4
	-[0x80000e28]:sd t6, 704(gp)
Current Store : [0x80000e2c] : sd t5, 712(gp) -- Store: [0x80003618]:0xFF7FFFFFFFFFDFFF




Last Coverpoint : ['rs2_w1_val == 2048', 'rs2_w0_val == 4294934527']
Last Code Sequence : 
	-[0x80000e54]:UKSUB32 t6, t5, t4
	-[0x80000e58]:sd t6, 720(gp)
Current Store : [0x80000e5c] : sd t5, 728(gp) -- Store: [0x80003628]:0x1000000000000800




Last Coverpoint : ['rs2_w1_val == 1024', 'rs2_w0_val == 4']
Last Code Sequence : 
	-[0x80000e78]:UKSUB32 t6, t5, t4
	-[0x80000e7c]:sd t6, 736(gp)
Current Store : [0x80000e80] : sd t5, 744(gp) -- Store: [0x80003638]:0xFFFFFDFF00800000




Last Coverpoint : ['rs2_w1_val == 512', 'rs2_w0_val == 8', 'rs1_w0_val == 4294967279']
Last Code Sequence : 
	-[0x80000e9c]:UKSUB32 t6, t5, t4
	-[0x80000ea0]:sd t6, 752(gp)
Current Store : [0x80000ea4] : sd t5, 760(gp) -- Store: [0x80003648]:0xDFFFFFFFFFFFFFEF




Last Coverpoint : ['rs2_w1_val == 256', 'rs1_w1_val == 262144', 'rs1_w0_val == 4294963199']
Last Code Sequence : 
	-[0x80000ecc]:UKSUB32 t6, t5, t4
	-[0x80000ed0]:sd t6, 768(gp)
Current Store : [0x80000ed4] : sd t5, 776(gp) -- Store: [0x80003658]:0x00040000FFFFEFFF




Last Coverpoint : ['rs2_w1_val == 128']
Last Code Sequence : 
	-[0x80000eec]:UKSUB32 t6, t5, t4
	-[0x80000ef0]:sd t6, 784(gp)
Current Store : [0x80000ef4] : sd t5, 792(gp) -- Store: [0x80003668]:0xFFFFFF7F0000000B




Last Coverpoint : ['rs2_w1_val == 64', 'rs1_w1_val == 4294963199']
Last Code Sequence : 
	-[0x80000f14]:UKSUB32 t6, t5, t4
	-[0x80000f18]:sd t6, 800(gp)
Current Store : [0x80000f1c] : sd t5, 808(gp) -- Store: [0x80003678]:0xFFFFEFFF00004000




Last Coverpoint : ['rs2_w1_val == 32', 'rs1_w0_val == 4294934527']
Last Code Sequence : 
	-[0x80000f3c]:UKSUB32 t6, t5, t4
	-[0x80000f40]:sd t6, 816(gp)
Current Store : [0x80000f44] : sd t5, 824(gp) -- Store: [0x80003688]:0xFFF7FFFFFFFF7FFF




Last Coverpoint : ['rs2_w1_val == 16', 'rs2_w0_val == 32768']
Last Code Sequence : 
	-[0x80000f64]:UKSUB32 t6, t5, t4
	-[0x80000f68]:sd t6, 832(gp)
Current Store : [0x80000f6c] : sd t5, 840(gp) -- Store: [0x80003698]:0xEFFFFFFF00000100




Last Coverpoint : ['rs2_w1_val == 4', 'rs2_w0_val == 4294959103', 'rs1_w1_val == 4293918719']
Last Code Sequence : 
	-[0x80000f90]:UKSUB32 t6, t5, t4
	-[0x80000f94]:sd t6, 848(gp)
Current Store : [0x80000f98] : sd t5, 856(gp) -- Store: [0x800036a8]:0xFFEFFFFF00000009




Last Coverpoint : ['rs2_w1_val == 2', 'rs2_w0_val == 4294836223', 'rs1_w0_val == 4227858431']
Last Code Sequence : 
	-[0x80000fbc]:UKSUB32 t6, t5, t4
	-[0x80000fc0]:sd t6, 864(gp)
Current Store : [0x80000fc4] : sd t5, 872(gp) -- Store: [0x800036b8]:0xFFFFEFFFFBFFFFFF




Last Coverpoint : ['rs2_w1_val == 4294967295', 'rs2_w0_val == 4293918719']
Last Code Sequence : 
	-[0x80000fdc]:UKSUB32 t6, t5, t4
	-[0x80000fe0]:sd t6, 880(gp)
Current Store : [0x80000fe4] : sd t5, 888(gp) -- Store: [0x800036c8]:0x0000000300000040




Last Coverpoint : ['rs1_w0_val == 4294705151']
Last Code Sequence : 
	-[0x80000ffc]:UKSUB32 t6, t5, t4
	-[0x80001000]:sd t6, 896(gp)
Current Store : [0x80001004] : sd t5, 904(gp) -- Store: [0x800036d8]:0x00000020FFFBFFFF




Last Coverpoint : ['rs2_w0_val == 2863311530', 'rs1_w1_val == 64', 'rs1_w0_val == 4294967263']
Last Code Sequence : 
	-[0x80001024]:UKSUB32 t6, t5, t4
	-[0x80001028]:sd t6, 912(gp)
Current Store : [0x8000102c] : sd t5, 920(gp) -- Store: [0x800036e8]:0x00000040FFFFFFDF




Last Coverpoint : ['rs2_w0_val == 3221225471']
Last Code Sequence : 
	-[0x80001050]:UKSUB32 t6, t5, t4
	-[0x80001054]:sd t6, 928(gp)
Current Store : [0x80001058] : sd t5, 936(gp) -- Store: [0x800036f8]:0x0002000000001000




Last Coverpoint : ['rs2_w0_val == 4160749567', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80001074]:UKSUB32 t6, t5, t4
	-[0x80001078]:sd t6, 944(gp)
Current Store : [0x8000107c] : sd t5, 952(gp) -- Store: [0x80003708]:0xDFFFFFFF00000020




Last Coverpoint : ['rs2_w0_val == 4294705151']
Last Code Sequence : 
	-[0x8000109c]:UKSUB32 t6, t5, t4
	-[0x800010a0]:sd t6, 960(gp)
Current Store : [0x800010a4] : sd t5, 968(gp) -- Store: [0x80003718]:0x2000000000000007




Last Coverpoint : ['rs2_w0_val == 4294901759']
Last Code Sequence : 
	-[0x800010c4]:UKSUB32 t6, t5, t4
	-[0x800010c8]:sd t6, 976(gp)
Current Store : [0x800010cc] : sd t5, 984(gp) -- Store: [0x80003728]:0x0000000E00000004




Last Coverpoint : ['rs2_w0_val == 4294967039', 'rs1_w1_val == 1048576', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x800010e8]:UKSUB32 t6, t5, t4
	-[0x800010ec]:sd t6, 992(gp)
Current Store : [0x800010f0] : sd t5, 1000(gp) -- Store: [0x80003738]:0x0010000001000000




Last Coverpoint : ['rs2_w0_val == 4294967263', 'rs1_w0_val == 4294967287']
Last Code Sequence : 
	-[0x80001114]:UKSUB32 t6, t5, t4
	-[0x80001118]:sd t6, 1008(gp)
Current Store : [0x8000111c] : sd t5, 1016(gp) -- Store: [0x80003748]:0x20000000FFFFFFF7




Last Coverpoint : ['rs2_w0_val == 512']
Last Code Sequence : 
	-[0x8000113c]:UKSUB32 t6, t5, t4
	-[0x80001140]:sd t6, 1024(gp)
Current Store : [0x80001144] : sd t5, 1032(gp) -- Store: [0x80003758]:0xFFFFFF7FAAAAAAAA




Last Coverpoint : ['rs2_w0_val == 256']
Last Code Sequence : 
	-[0x80001160]:UKSUB32 t6, t5, t4
	-[0x80001164]:sd t6, 1040(gp)
Current Store : [0x80001168] : sd t5, 1048(gp) -- Store: [0x80003768]:0x0000001100000012




Last Coverpoint : ['rs2_w0_val == 128', 'rs1_w0_val == 4160749567']
Last Code Sequence : 
	-[0x80001190]:UKSUB32 t6, t5, t4
	-[0x80001194]:sd t6, 1056(gp)
Current Store : [0x80001198] : sd t5, 1064(gp) -- Store: [0x80003778]:0x80000000F7FFFFFF




Last Coverpoint : ['rs2_w0_val == 64']
Last Code Sequence : 
	-[0x800011b8]:UKSUB32 t6, t5, t4
	-[0x800011bc]:sd t6, 1072(gp)
Current Store : [0x800011c0] : sd t5, 1080(gp) -- Store: [0x80003788]:0x00040000FFFFFFFD




Last Coverpoint : ['rs2_w0_val == 16', 'rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x800011e0]:UKSUB32 t6, t5, t4
	-[0x800011e4]:sd t6, 1088(gp)
Current Store : [0x800011e8] : sd t5, 1096(gp) -- Store: [0x80003798]:0x00004000FFFFFFFE




Last Coverpoint : ['rs2_w0_val == 2', 'rs1_w1_val == 2']
Last Code Sequence : 
	-[0x80001208]:UKSUB32 t6, t5, t4
	-[0x8000120c]:sd t6, 1104(gp)
Current Store : [0x80001210] : sd t5, 1112(gp) -- Store: [0x800037a8]:0x0000000200100000




Last Coverpoint : ['rs2_w0_val == 1', 'rs1_w1_val == 4292870143']
Last Code Sequence : 
	-[0x80001230]:UKSUB32 t6, t5, t4
	-[0x80001234]:sd t6, 1120(gp)
Current Store : [0x80001238] : sd t5, 1128(gp) -- Store: [0x800037b8]:0xFFDFFFFF0000000B




Last Coverpoint : ['rs1_w1_val == 33554432']
Last Code Sequence : 
	-[0x80001254]:UKSUB32 t6, t5, t4
	-[0x80001258]:sd t6, 1136(gp)
Current Store : [0x8000125c] : sd t5, 1144(gp) -- Store: [0x800037c8]:0x0200000008000000




Last Coverpoint : ['rs2_w0_val == 33554432', 'rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x8000127c]:UKSUB32 t6, t5, t4
	-[0x80001280]:sd t6, 1152(gp)
Current Store : [0x80001284] : sd t5, 1160(gp) -- Store: [0x800037d8]:0x555555550000000E




Last Coverpoint : ['rs1_w1_val == 3221225471', 'rs1_w0_val == 4294966783']
Last Code Sequence : 
	-[0x800012a0]:UKSUB32 t6, t5, t4
	-[0x800012a4]:sd t6, 1168(gp)
Current Store : [0x800012a8] : sd t5, 1176(gp) -- Store: [0x800037e8]:0xBFFFFFFFFFFFFDFF




Last Coverpoint : ['rs1_w1_val == 4160749567']
Last Code Sequence : 
	-[0x800012c8]:UKSUB32 t6, t5, t4
	-[0x800012cc]:sd t6, 1184(gp)
Current Store : [0x800012d0] : sd t5, 1192(gp) -- Store: [0x800037f8]:0xF7FFFFFFFFFFFFFB




Last Coverpoint : ['rs1_w1_val == 4227858431']
Last Code Sequence : 
	-[0x800012f4]:UKSUB32 t6, t5, t4
	-[0x800012f8]:sd t6, 1200(gp)
Current Store : [0x800012fc] : sd t5, 1208(gp) -- Store: [0x80003808]:0xFBFFFFFF00000080




Last Coverpoint : ['rs1_w1_val == 4278190079']
Last Code Sequence : 
	-[0x80001320]:UKSUB32 t6, t5, t4
	-[0x80001324]:sd t6, 1216(gp)
Current Store : [0x80001328] : sd t5, 1224(gp) -- Store: [0x80003818]:0xFEFFFFFF00000006




Last Coverpoint : ['rs1_w1_val == 4294950911']
Last Code Sequence : 
	-[0x8000134c]:UKSUB32 t6, t5, t4
	-[0x80001350]:sd t6, 1232(gp)
Current Store : [0x80001354] : sd t5, 1240(gp) -- Store: [0x80003828]:0xFFFFBFFFFFF7FFFF




Last Coverpoint : ['rs1_w1_val == 4294965247']
Last Code Sequence : 
	-[0x8000137c]:UKSUB32 t6, t5, t4
	-[0x80001380]:sd t6, 1248(gp)
Current Store : [0x80001384] : sd t5, 1256(gp) -- Store: [0x80003838]:0xFFFFF7FF00100000




Last Coverpoint : ['rs1_w1_val == 4294966271']
Last Code Sequence : 
	-[0x800013a0]:UKSUB32 t6, t5, t4
	-[0x800013a4]:sd t6, 1264(gp)
Current Store : [0x800013a8] : sd t5, 1272(gp) -- Store: [0x80003848]:0xFFFFFBFF00000100




Last Coverpoint : ['rs1_w1_val == 4294967279']
Last Code Sequence : 
	-[0x800013c4]:UKSUB32 t6, t5, t4
	-[0x800013c8]:sd t6, 1280(gp)
Current Store : [0x800013cc] : sd t5, 1288(gp) -- Store: [0x80003858]:0xFFFFFFEFFFFFFFDF




Last Coverpoint : ['rs1_w1_val == 4294967287', 'rs1_w0_val == 3221225471']
Last Code Sequence : 
	-[0x800013e8]:UKSUB32 t6, t5, t4
	-[0x800013ec]:sd t6, 1296(gp)
Current Store : [0x800013f0] : sd t5, 1304(gp) -- Store: [0x80003868]:0xFFFFFFF7BFFFFFFF




Last Coverpoint : ['rs2_w0_val == 4294967293', 'rs1_w1_val == 4294967293']
Last Code Sequence : 
	-[0x80001410]:UKSUB32 t6, t5, t4
	-[0x80001414]:sd t6, 1312(gp)
Current Store : [0x80001418] : sd t5, 1320(gp) -- Store: [0x80003878]:0xFFFFFFFDFFFFFFFF




Last Coverpoint : ['rs1_w1_val == 4294967294']
Last Code Sequence : 
	-[0x80001438]:UKSUB32 t6, t5, t4
	-[0x8000143c]:sd t6, 1328(gp)
Current Store : [0x80001440] : sd t5, 1336(gp) -- Store: [0x80003888]:0xFFFFFFFE00000100




Last Coverpoint : ['rs1_w1_val == 134217728']
Last Code Sequence : 
	-[0x80001464]:UKSUB32 t6, t5, t4
	-[0x80001468]:sd t6, 1344(gp)
Current Store : [0x8000146c] : sd t5, 1352(gp) -- Store: [0x80003898]:0x08000000FFFFFFF7




Last Coverpoint : ['rs1_w1_val == 8192', 'rs1_w0_val == 4278190079']
Last Code Sequence : 
	-[0x80001490]:UKSUB32 t6, t5, t4
	-[0x80001494]:sd t6, 1360(gp)
Current Store : [0x80001498] : sd t5, 1368(gp) -- Store: [0x800038a8]:0x00002000FEFFFFFF




Last Coverpoint : ['rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x800014c0]:UKSUB32 t6, t5, t4
	-[0x800014c4]:sd t6, 1376(gp)
Current Store : [0x800014c8] : sd t5, 1384(gp) -- Store: [0x800038b8]:0x00001000AAAAAAAA




Last Coverpoint : ['rs1_w1_val == 2048']
Last Code Sequence : 
	-[0x800014e4]:UKSUB32 t6, t5, t4
	-[0x800014e8]:sd t6, 1392(gp)
Current Store : [0x800014ec] : sd t5, 1400(gp) -- Store: [0x800038c8]:0x00000800FEFFFFFF




Last Coverpoint : ['rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x8000150c]:UKSUB32 t6, t5, t4
	-[0x80001510]:sd t6, 1408(gp)
Current Store : [0x80001514] : sd t5, 1416(gp) -- Store: [0x800038d8]:0x0000040000000011




Last Coverpoint : ['rs1_w1_val == 256']
Last Code Sequence : 
	-[0x80001530]:UKSUB32 t6, t5, t4
	-[0x80001534]:sd t6, 1424(gp)
Current Store : [0x80001538] : sd t5, 1432(gp) -- Store: [0x800038e8]:0x00000100FFFFFFFE




Last Coverpoint : ['rs1_w1_val == 8']
Last Code Sequence : 
	-[0x8000155c]:UKSUB32 t6, t5, t4
	-[0x80001560]:sd t6, 1440(gp)
Current Store : [0x80001564] : sd t5, 1448(gp) -- Store: [0x800038f8]:0x00000008FFFFDFFF




Last Coverpoint : ['opcode : uksub32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs1_w1_val == 0', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80001578]:UKSUB32 t6, t5, t4
	-[0x8000157c]:sd t6, 1456(gp)
Current Store : [0x80001580] : sd t5, 1464(gp) -- Store: [0x80003908]:0x0000000001000000




Last Coverpoint : ['rs1_w0_val == 4026531839']
Last Code Sequence : 
	-[0x800015a4]:UKSUB32 t6, t5, t4
	-[0x800015a8]:sd t6, 1472(gp)
Current Store : [0x800015ac] : sd t5, 1480(gp) -- Store: [0x80003918]:0xBFFFFFFFEFFFFFFF




Last Coverpoint : ['rs2_w0_val == 262144']
Last Code Sequence : 
	-[0x800015cc]:UKSUB32 t6, t5, t4
	-[0x800015d0]:sd t6, 1488(gp)
Current Store : [0x800015d4] : sd t5, 1496(gp) -- Store: [0x80003928]:0xFFFFFFDF0000000C




Last Coverpoint : ['rs1_w0_val == 4292870143']
Last Code Sequence : 
	-[0x800015f8]:UKSUB32 t6, t5, t4
	-[0x800015fc]:sd t6, 1504(gp)
Current Store : [0x80001600] : sd t5, 1512(gp) -- Store: [0x80003938]:0x00000001FFDFFFFF




Last Coverpoint : ['rs1_w0_val == 4293918719']
Last Code Sequence : 
	-[0x80001624]:UKSUB32 t6, t5, t4
	-[0x80001628]:sd t6, 1520(gp)
Current Store : [0x8000162c] : sd t5, 1528(gp) -- Store: [0x80003948]:0xFFEFFFFFFFEFFFFF




Last Coverpoint : ['rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x80001654]:UKSUB32 t6, t5, t4
	-[0x80001658]:sd t6, 1536(gp)
Current Store : [0x8000165c] : sd t5, 1544(gp) -- Store: [0x80003958]:0x00400000FFFFF7FF




Last Coverpoint : ['rs1_w0_val == 4294836223']
Last Code Sequence : 
	-[0x80001680]:UKSUB32 t6, t5, t4
	-[0x80001684]:sd t6, 1552(gp)
Current Store : [0x80001688] : sd t5, 1560(gp) -- Store: [0x80003968]:0xFFFFFBFFFFFDFFFF




Last Coverpoint : ['rs1_w1_val == 2097152']
Last Code Sequence : 
	-[0x800016a4]:UKSUB32 t6, t5, t4
	-[0x800016a8]:sd t6, 1568(gp)
Current Store : [0x800016ac] : sd t5, 1576(gp) -- Store: [0x80003978]:0x0020000040000000




Last Coverpoint : ['rs1_w0_val == 4294950911']
Last Code Sequence : 
	-[0x800016cc]:UKSUB32 t6, t5, t4
	-[0x800016d0]:sd t6, 1584(gp)
Current Store : [0x800016d4] : sd t5, 1592(gp) -- Store: [0x80003988]:0x00000011FFFFBFFF




Last Coverpoint : ['rs1_w0_val == 4294966271']
Last Code Sequence : 
	-[0x800016f0]:UKSUB32 t6, t5, t4
	-[0x800016f4]:sd t6, 1600(gp)
Current Store : [0x800016f8] : sd t5, 1608(gp) -- Store: [0x80003998]:0xFFFFFEFFFFFFFBFF




Last Coverpoint : ['rs1_w0_val == 4294967039']
Last Code Sequence : 
	-[0x8000171c]:UKSUB32 t6, t5, t4
	-[0x80001720]:sd t6, 1616(gp)
Current Store : [0x80001724] : sd t5, 1624(gp) -- Store: [0x800039a8]:0x00001000FFFFFEFF




Last Coverpoint : ['rs1_w0_val == 4294967167']
Last Code Sequence : 
	-[0x80001740]:UKSUB32 t6, t5, t4
	-[0x80001744]:sd t6, 1632(gp)
Current Store : [0x80001748] : sd t5, 1640(gp) -- Store: [0x800039b8]:0xFFF7FFFFFFFFFF7F




Last Coverpoint : ['rs2_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80001764]:UKSUB32 t6, t5, t4
	-[0x80001768]:sd t6, 1648(gp)
Current Store : [0x8000176c] : sd t5, 1656(gp) -- Store: [0x800039c8]:0xFFFFFFFF0000000B




Last Coverpoint : ['rs1_w0_val == 4294967231']
Last Code Sequence : 
	-[0x8000178c]:UKSUB32 t6, t5, t4
	-[0x80001790]:sd t6, 1664(gp)
Current Store : [0x80001794] : sd t5, 1672(gp) -- Store: [0x800039d8]:0x0000000AFFFFFFBF




Last Coverpoint : ['rs2_w0_val == 8388608']
Last Code Sequence : 
	-[0x800017b0]:UKSUB32 t6, t5, t4
	-[0x800017b4]:sd t6, 1680(gp)
Current Store : [0x800017b8] : sd t5, 1688(gp) -- Store: [0x800039e8]:0x0000001200000004




Last Coverpoint : ['rs1_w0_val == 2147483648']
Last Code Sequence : 
	-[0x800017d4]:UKSUB32 t6, t5, t4
	-[0x800017d8]:sd t6, 1696(gp)
Current Store : [0x800017dc] : sd t5, 1704(gp) -- Store: [0x800039f8]:0x0000100080000000




Last Coverpoint : ['rs1_w1_val == 67108864']
Last Code Sequence : 
	-[0x80001800]:UKSUB32 t6, t5, t4
	-[0x80001804]:sd t6, 1712(gp)
Current Store : [0x80001808] : sd t5, 1720(gp) -- Store: [0x80003a08]:0x04000000FFFFFFFE




Last Coverpoint : ['rs1_w1_val == 16777216']
Last Code Sequence : 
	-[0x80001824]:UKSUB32 t6, t5, t4
	-[0x80001828]:sd t6, 1728(gp)
Current Store : [0x8000182c] : sd t5, 1736(gp) -- Store: [0x80003a18]:0x0100000000000009




Last Coverpoint : ['rs2_w0_val == 1048576']
Last Code Sequence : 
	-[0x80001850]:UKSUB32 t6, t5, t4
	-[0x80001854]:sd t6, 1744(gp)
Current Store : [0x80001858] : sd t5, 1752(gp) -- Store: [0x80003a28]:0x00000005FFFEFFFF




Last Coverpoint : ['rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80001870]:UKSUB32 t6, t5, t4
	-[0x80001874]:sd t6, 1760(gp)
Current Store : [0x80001878] : sd t5, 1768(gp) -- Store: [0x80003a38]:0xFFFFFFFD10000000




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80001898]:UKSUB32 t6, t5, t4
	-[0x8000189c]:sd t6, 1776(gp)
Current Store : [0x800018a0] : sd t5, 1784(gp) -- Store: [0x80003a48]:0xAAAAAAAA04000000




Last Coverpoint : ['rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x800018b8]:UKSUB32 t6, t5, t4
	-[0x800018bc]:sd t6, 1792(gp)
Current Store : [0x800018c0] : sd t5, 1800(gp) -- Store: [0x80003a58]:0xFFFFFFFF02000000




Last Coverpoint : ['rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x800018e0]:UKSUB32 t6, t5, t4
	-[0x800018e4]:sd t6, 1808(gp)
Current Store : [0x800018e8] : sd t5, 1816(gp) -- Store: [0x80003a68]:0x00080000FFBFFFFF




Last Coverpoint : ['rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x80001910]:UKSUB32 t6, t5, t4
	-[0x80001914]:sd t6, 1824(gp)
Current Store : [0x80001918] : sd t5, 1832(gp) -- Store: [0x80003a78]:0x0000800000000800




Last Coverpoint : ['opcode : uksub32', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w0_val == 0', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs2_w1_val == 2147483648', 'rs2_w0_val == 4261412863', 'rs1_w1_val == 32']
Last Code Sequence : 
	-[0x80001938]:UKSUB32 t6, t5, t4
	-[0x8000193c]:sd t6, 1840(gp)
Current Store : [0x80001940] : sd t5, 1848(gp) -- Store: [0x80003a88]:0x0000002000000000




Last Coverpoint : ['rs2_w1_val == 4293918719']
Last Code Sequence : 
	-[0x80001964]:UKSUB32 t6, t5, t4
	-[0x80001968]:sd t6, 1856(gp)
Current Store : [0x8000196c] : sd t5, 1864(gp) -- Store: [0x80003a98]:0x0000002000020000





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

|s.no|            signature             |                                                                                                                                                                          coverpoints                                                                                                                                                                           |                                 code                                 |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000000|- opcode : uksub32<br> - rs1 : x1<br> - rs2 : x1<br> - rd : x0<br> - rs1 == rs2 != rd<br> - rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == 2147483648<br> - rs2_w0_val == 4261412863<br> - rs1_w1_val == 2147483648<br> - rs1_w0_val == 4261412863<br> |[0x800003c0]:UKSUB32 zero, ra, ra<br> [0x800003c4]:sd zero, 0(s2)<br> |
|   2|[0x80003220]<br>0x0000000000000000|- rs1 : x14<br> - rs2 : x14<br> - rd : x14<br> - rs1 == rs2 == rd<br> - rs2_w0_val == 4294967295<br> - rs1_w0_val == 4294967295<br>                                                                                                                                                                                                                             |[0x800003e4]:UKSUB32 a4, a4, a4<br> [0x800003e8]:sd a4, 16(s2)<br>    |
|   3|[0x80003230]<br>0xFFEFDFFF00000000|- rs1 : x28<br> - rs2 : x6<br> - rd : x23<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs2_w1_val == 1048576<br> - rs1_w1_val == 4294959103<br>                                                                                                                                     |[0x8000040c]:UKSUB32 s7, t3, t1<br> [0x80000410]:sd s7, 32(s2)<br>    |
|   4|[0x80003240]<br>0x0000000000000000|- rs1 : x19<br> - rs2 : x10<br> - rd : x19<br> - rs1 == rd != rs2<br> - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == 2863311530<br> - rs2_w0_val == 4294967167<br> - rs1_w0_val == 2147483647<br>                                                                                                                         |[0x80000434]:UKSUB32 s3, s3, a0<br> [0x80000438]:sd s3, 48(s2)<br>    |
|   5|[0x80003250]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x20<br> - rd : x20<br> - rs2 == rd != rs1<br> - rs1_w0_val == 0<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == 4294966271<br> - rs1_w1_val == 0<br>                                                                                                                                                                                  |[0x80000460]:UKSUB32 s4, zero, s4<br> [0x80000464]:sd s4, 64(s2)<br>  |
|   6|[0x80003260]<br>0x7FFFFFC000000000|- rs1 : x10<br> - rs2 : x31<br> - rd : x27<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == 67108864<br> - rs1_w1_val == 4294967231<br> - rs1_w0_val == 4<br>                                                                                                                                                                                                 |[0x80000488]:UKSUB32 s11, a0, t6<br> [0x8000048c]:sd s11, 80(s2)<br>  |
|   7|[0x80003270]<br>0x0000000000000000|- rs1 : x15<br> - rs2 : x5<br> - rd : x7<br> - rs2_w1_val == 3221225471<br> - rs2_w0_val == 4286578687<br> - rs1_w1_val == 8388608<br> - rs1_w0_val == 8192<br>                                                                                                                                                                                                 |[0x800004b8]:UKSUB32 t2, a5, t0<br> [0x800004bc]:sd t2, 96(s2)<br>    |
|   8|[0x80003280]<br>0x1FF8000000000000|- rs1 : x3<br> - rs2 : x15<br> - rd : x22<br> - rs2_w1_val == 3758096383<br> - rs2_w0_val == 8192<br> - rs1_w1_val == 4294443007<br>                                                                                                                                                                                                                            |[0x800004e8]:UKSUB32 s6, gp, a5<br> [0x800004ec]:sd s6, 112(s2)<br>   |
|   9|[0x80003290]<br>0x1000000000000000|- rs1 : x26<br> - rs2 : x7<br> - rd : x5<br> - rs2_w1_val == 4026531839<br> - rs2_w0_val == 2147483647<br> - rs1_w1_val == 4294967295<br> - rs1_w0_val == 536870912<br>                                                                                                                                                                                         |[0x8000050c]:UKSUB32 t0, s10, t2<br> [0x80000510]:sd t0, 128(s2)<br>  |
|  10|[0x800032a0]<br>0x0000000000FFFFFE|- rs1 : x2<br> - rs2 : x22<br> - rd : x13<br> - rs2_w1_val == 4160749567<br> - rs2_w0_val == 4278190079<br> - rs1_w0_val == 4294967293<br>                                                                                                                                                                                                                      |[0x80000538]:UKSUB32 a3, sp, s6<br> [0x8000053c]:sd a3, 144(s2)<br>   |
|  11|[0x800032b0]<br>0x03FFFF000001F000|- rs1 : x21<br> - rs2 : x23<br> - rd : x3<br> - rs2_w1_val == 4227858431<br> - rs2_w0_val == 4096<br> - rs1_w1_val == 4294967039<br> - rs1_w0_val == 131072<br>                                                                                                                                                                                                 |[0x80000564]:UKSUB32 gp, s5, s7<br> [0x80000568]:sd gp, 160(s2)<br>   |
|  12|[0x800032c0]<br>0x01FFFF0000000000|- rs1 : x5<br> - rs2 : x21<br> - rd : x10<br> - rs2_w1_val == 4261412863<br> - rs2_w0_val == 4294967287<br>                                                                                                                                                                                                                                                     |[0x80000588]:UKSUB32 a0, t0, s5<br> [0x8000058c]:sd a0, 176(s2)<br>   |
|  13|[0x800032d0]<br>0x0100000000000000|- rs1 : x13<br> - rs2 : x9<br> - rd : x6<br> - rs2_w1_val == 4278190079<br> - rs2_w0_val == 536870912<br>                                                                                                                                                                                                                                                       |[0x800005ac]:UKSUB32 t1, a3, s1<br> [0x800005b0]:sd t1, 192(s2)<br>   |
|  14|[0x800032e0]<br>0x0000000000000000|- rs1 : x16<br> - rs2 : x26<br> - rd : x12<br> - rs2_w1_val == 4286578687<br> - rs2_w0_val == 2048<br> - rs1_w0_val == 1024<br>                                                                                                                                                                                                                                 |[0x800005dc]:UKSUB32 a2, a6, s10<br> [0x800005e0]:sd a2, 208(s2)<br>  |
|  15|[0x800032f0]<br>0x0000000000000000|- rs1 : x11<br> - rs2 : x4<br> - rd : x21<br> - rs2_w1_val == 4290772991<br> - rs2_w0_val == 2097152<br> - rs1_w1_val == 536870912<br> - rs1_w0_val == 524288<br>                                                                                                                                                                                               |[0x80000608]:UKSUB32 s5, a1, tp<br> [0x8000060c]:sd s5, 224(s2)<br>   |
|  16|[0x80003300]<br>0x001FFFFC00000000|- rs1 : x25<br> - rs2 : x12<br> - rd : x9<br> - rs2_w1_val == 4292870143<br> - rs2_w0_val == 16384<br> - rs1_w1_val == 4294967291<br>                                                                                                                                                                                                                           |[0x80000630]:UKSUB32 s1, s9, a2<br> [0x80000634]:sd s1, 240(s2)<br>   |
|  17|[0x80003310]<br>0x0000002000020000|- rs1 : x20<br> - rs2 : x0<br> - rd : x2<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == 32<br>                                                                                                                                                                                                                                                 |[0x8000065c]:UKSUB32 sp, s4, zero<br> [0x80000660]:sd sp, 256(s2)<br> |
|  18|[0x80003320]<br>0x0007FE0000000000|- rs1 : x8<br> - rs2 : x19<br> - rd : x11<br> - rs2_w1_val == 4294443007<br> - rs2_w0_val == 4294963199<br> - rs1_w1_val == 4294966783<br> - rs1_w0_val == 2048<br>                                                                                                                                                                                             |[0x8000068c]:UKSUB32 a1, fp, s3<br> [0x80000690]:sd a1, 272(s2)<br>   |
|  19|[0x80003330]<br>0x0000000000000000|- rs1 : x23<br> - rs2 : x3<br> - rd : x28<br> - rs2_w1_val == 4294705151<br> - rs2_w0_val == 4294966783<br> - rs1_w1_val == 4<br> - rs1_w0_val == 4194304<br>                                                                                                                                                                                                   |[0x800006b0]:UKSUB32 t3, s7, gp<br> [0x800006b4]:sd t3, 288(s2)<br>   |
|  20|[0x80003340]<br>0x0000000055555547|- rs1 : x17<br> - rs2 : x27<br> - rd : x29<br> - rs2_w1_val == 4294836223<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == 1431655765<br>                                                                                                                                                                                                                     |[0x800006e8]:UKSUB32 t4, a7, s11<br> [0x800006ec]:sd t4, 304(s2)<br>  |
|  21|[0x80003350]<br>0x0000000000000000|- rs1 : x4<br> - rs2 : x29<br> - rd : x15<br> - rs2_w1_val == 4294901759<br> - rs1_w0_val == 134217728<br>                                                                                                                                                                                                                                                      |[0x80000710]:UKSUB32 a5, tp, t4<br> [0x80000714]:sd a5, 0(gp)<br>     |
|  22|[0x80003360]<br>0x00000000FDF7FFFF|- rs1 : x22<br> - rs2 : x30<br> - rd : x31<br> - rs2_w1_val == 4294934527<br> - rs2_w0_val == 524288<br>                                                                                                                                                                                                                                                        |[0x80000738]:UKSUB32 t6, s6, t5<br> [0x8000073c]:sd t6, 16(gp)<br>    |
|  23|[0x80003370]<br>0x0000000000000000|- rs1 : x18<br> - rs2 : x16<br> - rd : x4<br> - rs2_w1_val == 4294950911<br> - rs1_w1_val == 4261412863<br>                                                                                                                                                                                                                                                     |[0x80000764]:UKSUB32 tp, s2, a6<br> [0x80000768]:sd tp, 32(gp)<br>    |
|  24|[0x80003380]<br>0x000000000000000C|- rs1 : x12<br> - rs2 : x25<br> - rd : x30<br> - rs2_w1_val == 4294959103<br> - rs2_w0_val == 4294967279<br> - rs1_w1_val == 16<br> - rs1_w0_val == 4294967291<br>                                                                                                                                                                                              |[0x80000788]:UKSUB32 t5, a2, s9<br> [0x8000078c]:sd t5, 48(gp)<br>    |
|  25|[0x80003390]<br>0x00000000001FFFFA|- rs1 : x30<br> - rs2 : x11<br> - rd : x26<br> - rs2_w1_val == 4294963199<br> - rs1_w0_val == 2097152<br>                                                                                                                                                                                                                                                       |[0x800007b0]:UKSUB32 s10, t5, a1<br> [0x800007b4]:sd s10, 64(gp)<br>  |
|  26|[0x800033a0]<br>0x0000000000000000|- rs1 : x27<br> - rs2 : x28<br> - rd : x1<br> - rs2_w1_val == 4294965247<br> - rs2_w0_val == 4290772991<br> - rs1_w1_val == 1<br> - rs1_w0_val == 2863311530<br>                                                                                                                                                                                                |[0x800007dc]:UKSUB32 ra, s11, t3<br> [0x800007e0]:sd ra, 80(gp)<br>   |
|  27|[0x800033b0]<br>0x000004001FFFE000|- rs1 : x6<br> - rs2 : x17<br> - rd : x24<br> - rs2_w1_val == 4294966271<br> - rs2_w0_val == 3758096383<br> - rs1_w0_val == 4294959103<br>                                                                                                                                                                                                                      |[0x80000800]:UKSUB32 s8, t1, a7<br> [0x80000804]:sd s8, 96(gp)<br>    |
|  28|[0x800033c0]<br>0x0000000000000000|- rs1 : x24<br> - rs2 : x13<br> - rd : x16<br> - rs2_w1_val == 4294966783<br> - rs1_w1_val == 512<br>                                                                                                                                                                                                                                                           |[0x80000820]:UKSUB32 a6, s8, a3<br> [0x80000824]:sd a6, 112(gp)<br>   |
|  29|[0x800033d0]<br>0x00000000007F0000|- rs1 : x29<br> - rs2 : x24<br> - rd : x17<br> - rs2_w1_val == 4294967039<br> - rs2_w0_val == 65536<br> - rs1_w1_val == 4294836223<br> - rs1_w0_val == 8388608<br>                                                                                                                                                                                              |[0x80000844]:UKSUB32 a7, t4, s8<br> [0x80000848]:sd a7, 128(gp)<br>   |
|  30|[0x800033e0]<br>0x0000000000000000|- rs1 : x7<br> - rs2 : x2<br> - rd : x18<br> - rs2_w1_val == 4294967167<br>                                                                                                                                                                                                                                                                                     |[0x80000868]:UKSUB32 s2, t2, sp<br> [0x8000086c]:sd s2, 144(gp)<br>   |
|  31|[0x800033f0]<br>0x0000000000000000|- rs1 : x31<br> - rs2 : x8<br> - rd : x25<br> - rs2_w1_val == 4294967231<br> - rs1_w1_val == 128<br>                                                                                                                                                                                                                                                            |[0x8000088c]:UKSUB32 s9, t6, fp<br> [0x80000890]:sd s9, 160(gp)<br>   |
|  32|[0x80003400]<br>0x00000000EF7FFFFF|- rs1 : x9<br> - rs2 : x18<br> - rd : x8<br> - rs2_w1_val == 4294967263<br> - rs2_w0_val == 268435456<br> - rs1_w1_val == 4294705151<br> - rs1_w0_val == 4286578687<br>                                                                                                                                                                                         |[0x800008b0]:UKSUB32 fp, s1, s2<br> [0x800008b4]:sd fp, 176(gp)<br>   |
|  33|[0x80003410]<br>0x00000000FEF7FFFF|- rs2_w1_val == 4294967279<br> - rs2_w0_val == 16777216<br> - rs1_w0_val == 4294443007<br>                                                                                                                                                                                                                                                                      |[0x800008d8]:UKSUB32 t6, t5, t4<br> [0x800008dc]:sd t6, 192(gp)<br>   |
|  34|[0x80003420]<br>0x00000000F7FFF7FF|- rs2_w1_val == 4294967287<br> - rs2_w0_val == 134217728<br> - rs1_w0_val == 4294965247<br>                                                                                                                                                                                                                                                                     |[0x800008fc]:UKSUB32 t6, t5, t4<br> [0x80000900]:sd t6, 208(gp)<br>   |
|  35|[0x80003430]<br>0x00000000DFFFFFF4|- rs2_w1_val == 4294967291<br> - rs1_w1_val == 4294901759<br> - rs1_w0_val == 3758096383<br>                                                                                                                                                                                                                                                                    |[0x80000924]:UKSUB32 t6, t5, t4<br> [0x80000928]:sd t6, 224(gp)<br>   |
|  36|[0x80003440]<br>0x00000000AA6AAAAA|- rs2_w1_val == 4294967293<br> - rs2_w0_val == 1431655765<br> - rs1_w0_val == 4290772991<br>                                                                                                                                                                                                                                                                    |[0x80000950]:UKSUB32 t6, t5, t4<br> [0x80000954]:sd t6, 240(gp)<br>   |
|  37|[0x80003450]<br>0x0000000000000080|- rs2_w1_val == 4294967294<br>                                                                                                                                                                                                                                                                                                                                  |[0x80000974]:UKSUB32 t6, t5, t4<br> [0x80000978]:sd t6, 256(gp)<br>   |
|  38|[0x80003460]<br>0xBFFFFFDF00000000|- rs2_w1_val == 1073741824<br> - rs2_w0_val == 4294967231<br> - rs1_w1_val == 4294967263<br>                                                                                                                                                                                                                                                                    |[0x800009a0]:UKSUB32 t6, t5, t4<br> [0x800009a4]:sd t6, 272(gp)<br>   |
|  39|[0x80003470]<br>0xDFFF7FFF003FFFF9|- rs2_w1_val == 536870912<br> - rs1_w1_val == 4294934527<br>                                                                                                                                                                                                                                                                                                    |[0x800009c4]:UKSUB32 t6, t5, t4<br> [0x800009c8]:sd t6, 288(gp)<br>   |
|  40|[0x80003480]<br>0xEFF7FFFF000FFFF2|- rs2_w1_val == 268435456<br> - rs1_w0_val == 1048576<br>                                                                                                                                                                                                                                                                                                       |[0x800009f0]:UKSUB32 t6, t5, t4<br> [0x800009f4]:sd t6, 304(gp)<br>   |
|  41|[0x80003490]<br>0xD7FFFFFF00000000|- rs2_w1_val == 134217728<br> - rs2_w0_val == 4227858431<br> - rs1_w1_val == 3758096383<br>                                                                                                                                                                                                                                                                     |[0x80000a20]:UKSUB32 t6, t5, t4<br> [0x80000a24]:sd t6, 320(gp)<br>   |
|  42|[0x800034a0]<br>0xEBFFFFFF00000000|- rs2_w1_val == 67108864<br> - rs2_w0_val == 4294967294<br> - rs1_w1_val == 4026531839<br>                                                                                                                                                                                                                                                                      |[0x80000a50]:UKSUB32 t6, t5, t4<br> [0x80000a54]:sd t6, 336(gp)<br>   |
|  43|[0x800034b0]<br>0xFDF7FFFFAAAAAA9C|- rs2_w1_val == 33554432<br>                                                                                                                                                                                                                                                                                                                                    |[0x80000a80]:UKSUB32 t6, t5, t4<br> [0x80000a84]:sd t6, 352(gp)<br>   |
|  44|[0x800034c0]<br>0x0000000000000000|- rs2_w1_val == 16777216<br>                                                                                                                                                                                                                                                                                                                                    |[0x80000aac]:UKSUB32 t6, t5, t4<br> [0x80000ab0]:sd t6, 368(gp)<br>   |
|  45|[0x800034d0]<br>0x00000000FFFEFFEC|- rs2_w1_val == 8388608<br> - rs1_w1_val == 65536<br> - rs1_w0_val == 4294901759<br>                                                                                                                                                                                                                                                                            |[0x80000adc]:UKSUB32 t6, t5, t4<br> [0x80000ae0]:sd t6, 384(gp)<br>   |
|  46|[0x800034e0]<br>0x0000000000000000|- rs2_w1_val == 4194304<br> - rs1_w0_val == 128<br>                                                                                                                                                                                                                                                                                                             |[0x80000b04]:UKSUB32 t6, t5, t4<br> [0x80000b08]:sd t6, 400(gp)<br>   |
|  47|[0x800034f0]<br>0x1FE0000000000004|- rs2_w1_val == 2097152<br> - rs2_w0_val == 4294967291<br>                                                                                                                                                                                                                                                                                                      |[0x80000b30]:UKSUB32 t6, t5, t4<br> [0x80000b34]:sd t6, 416(gp)<br>   |
|  48|[0x80003500]<br>0xAAA2AAAA3FC00000|- rs2_w1_val == 524288<br> - rs2_w0_val == 4194304<br> - rs1_w1_val == 2863311530<br> - rs1_w0_val == 1073741824<br>                                                                                                                                                                                                                                            |[0x80000b5c]:UKSUB32 t6, t5, t4<br> [0x80000b60]:sd t6, 432(gp)<br>   |
|  49|[0x80003510]<br>0x0000000000200000|- rs2_w1_val == 262144<br> - rs2_w0_val == 4292870143<br> - rs1_w1_val == 131072<br>                                                                                                                                                                                                                                                                            |[0x80000b88]:UKSUB32 t6, t5, t4<br> [0x80000b8c]:sd t6, 448(gp)<br>   |
|  50|[0x80003520]<br>0xFFFCFFFF000003FC|- rs2_w1_val == 131072<br>                                                                                                                                                                                                                                                                                                                                      |[0x80000bb0]:UKSUB32 t6, t5, t4<br> [0x80000bb4]:sd t6, 464(gp)<br>   |
|  51|[0x80003530]<br>0xFFFCFFFF00000000|- rs2_w1_val == 65536<br>                                                                                                                                                                                                                                                                                                                                       |[0x80000bdc]:UKSUB32 t6, t5, t4<br> [0x80000be0]:sd t6, 480(gp)<br>   |
|  52|[0x80003540]<br>0x0FFF800000000000|- rs2_w1_val == 32768<br> - rs2_w0_val == 4294443007<br> - rs1_w1_val == 268435456<br> - rs1_w0_val == 32768<br>                                                                                                                                                                                                                                                |[0x80000c08]:UKSUB32 t6, t5, t4<br> [0x80000c0c]:sd t6, 496(gp)<br>   |
|  53|[0x80003550]<br>0xFFFF9FFF00000000|- rs2_w1_val == 16384<br> - rs2_w0_val == 131072<br> - rs1_w0_val == 4096<br>                                                                                                                                                                                                                                                                                   |[0x80000c34]:UKSUB32 t6, t5, t4<br> [0x80000c38]:sd t6, 512(gp)<br>   |
|  54|[0x80003560]<br>0xAA6AAAAA00000000|- rs1_w1_val == 4290772991<br> - rs1_w0_val == 262144<br>                                                                                                                                                                                                                                                                                                       |[0x80000c68]:UKSUB32 t6, t5, t4<br> [0x80000c6c]:sd t6, 528(gp)<br>   |
|  55|[0x80003570]<br>0xEFFFFFED0000FFF7|- rs1_w0_val == 65536<br>                                                                                                                                                                                                                                                                                                                                       |[0x80000c94]:UKSUB32 t6, t5, t4<br> [0x80000c98]:sd t6, 544(gp)<br>   |
|  56|[0x80003580]<br>0x555554D500000000|- rs1_w1_val == 4294967167<br> - rs1_w0_val == 16384<br>                                                                                                                                                                                                                                                                                                        |[0x80000cc0]:UKSUB32 t6, t5, t4<br> [0x80000cc4]:sd t6, 560(gp)<br>   |
|  57|[0x80003590]<br>0xFFFFFEF700000000|- rs2_w1_val == 8<br> - rs2_w0_val == 4294965247<br> - rs1_w0_val == 512<br>                                                                                                                                                                                                                                                                                    |[0x80000ce8]:UKSUB32 t6, t5, t4<br> [0x80000cec]:sd t6, 576(gp)<br>   |
|  58|[0x800035a0]<br>0xFBFFFFFF000000F1|- rs1_w0_val == 256<br>                                                                                                                                                                                                                                                                                                                                         |[0x80000d10]:UKSUB32 t6, t5, t4<br> [0x80000d14]:sd t6, 592(gp)<br>   |
|  59|[0x800035b0]<br>0xFFFF7FFF00000020|- rs2_w0_val == 32<br> - rs1_w0_val == 64<br>                                                                                                                                                                                                                                                                                                                   |[0x80000d34]:UKSUB32 t6, t5, t4<br> [0x80000d38]:sd t6, 608(gp)<br>   |
|  60|[0x800035c0]<br>0x1FFFFFFF00000000|- rs2_w1_val == 1<br> - rs2_w0_val == 2147483648<br> - rs1_w0_val == 16<br>                                                                                                                                                                                                                                                                                     |[0x80000d54]:UKSUB32 t6, t5, t4<br> [0x80000d58]:sd t6, 624(gp)<br>   |
|  61|[0x800035d0]<br>0x3FFFFFF500000000|- rs2_w0_val == 4294950911<br> - rs1_w1_val == 1073741824<br> - rs1_w0_val == 8<br>                                                                                                                                                                                                                                                                             |[0x80000d7c]:UKSUB32 t6, t5, t4<br> [0x80000d80]:sd t6, 640(gp)<br>   |
|  62|[0x800035e0]<br>0xFFF9FFFF00000000|- rs2_w0_val == 4026531839<br> - rs1_w0_val == 2<br>                                                                                                                                                                                                                                                                                                            |[0x80000da8]:UKSUB32 t6, t5, t4<br> [0x80000dac]:sd t6, 656(gp)<br>   |
|  63|[0x800035f0]<br>0x0000000000000000|- rs2_w0_val == 1024<br> - rs1_w0_val == 1<br>                                                                                                                                                                                                                                                                                                                  |[0x80000dd0]:UKSUB32 t6, t5, t4<br> [0x80000dd4]:sd t6, 672(gp)<br>   |
|  64|[0x80003600]<br>0x007FE000FFFFFFDE|- rs2_w1_val == 8192<br> - rs1_w0_val == 4294967294<br>                                                                                                                                                                                                                                                                                                         |[0x80000df8]:UKSUB32 t6, t5, t4<br> [0x80000dfc]:sd t6, 688(gp)<br>   |
|  65|[0x80003610]<br>0xFF7FEFFFFFFFDFF8|- rs2_w1_val == 4096<br> - rs1_w1_val == 4286578687<br>                                                                                                                                                                                                                                                                                                         |[0x80000e24]:UKSUB32 t6, t5, t4<br> [0x80000e28]:sd t6, 704(gp)<br>   |
|  66|[0x80003620]<br>0x0FFFF80000000000|- rs2_w1_val == 2048<br> - rs2_w0_val == 4294934527<br>                                                                                                                                                                                                                                                                                                         |[0x80000e54]:UKSUB32 t6, t5, t4<br> [0x80000e58]:sd t6, 720(gp)<br>   |
|  67|[0x80003630]<br>0xFFFFF9FF007FFFFC|- rs2_w1_val == 1024<br> - rs2_w0_val == 4<br>                                                                                                                                                                                                                                                                                                                  |[0x80000e78]:UKSUB32 t6, t5, t4<br> [0x80000e7c]:sd t6, 736(gp)<br>   |
|  68|[0x80003640]<br>0xDFFFFDFFFFFFFFE7|- rs2_w1_val == 512<br> - rs2_w0_val == 8<br> - rs1_w0_val == 4294967279<br>                                                                                                                                                                                                                                                                                    |[0x80000e9c]:UKSUB32 t6, t5, t4<br> [0x80000ea0]:sd t6, 752(gp)<br>   |
|  69|[0x80003650]<br>0x0003FF0000000000|- rs2_w1_val == 256<br> - rs1_w1_val == 262144<br> - rs1_w0_val == 4294963199<br>                                                                                                                                                                                                                                                                               |[0x80000ecc]:UKSUB32 t6, t5, t4<br> [0x80000ed0]:sd t6, 768(gp)<br>   |
|  70|[0x80003660]<br>0xFFFFFEFF00000000|- rs2_w1_val == 128<br>                                                                                                                                                                                                                                                                                                                                         |[0x80000eec]:UKSUB32 t6, t5, t4<br> [0x80000ef0]:sd t6, 784(gp)<br>   |
|  71|[0x80003670]<br>0xFFFFEFBF00000000|- rs2_w1_val == 64<br> - rs1_w1_val == 4294963199<br>                                                                                                                                                                                                                                                                                                           |[0x80000f14]:UKSUB32 t6, t5, t4<br> [0x80000f18]:sd t6, 800(gp)<br>   |
|  72|[0x80003680]<br>0xFFF7FFDF7FFF7FFF|- rs2_w1_val == 32<br> - rs1_w0_val == 4294934527<br>                                                                                                                                                                                                                                                                                                           |[0x80000f3c]:UKSUB32 t6, t5, t4<br> [0x80000f40]:sd t6, 816(gp)<br>   |
|  73|[0x80003690]<br>0xEFFFFFEF00000000|- rs2_w1_val == 16<br> - rs2_w0_val == 32768<br>                                                                                                                                                                                                                                                                                                                |[0x80000f64]:UKSUB32 t6, t5, t4<br> [0x80000f68]:sd t6, 832(gp)<br>   |
|  74|[0x800036a0]<br>0xFFEFFFFB00000000|- rs2_w1_val == 4<br> - rs2_w0_val == 4294959103<br> - rs1_w1_val == 4293918719<br>                                                                                                                                                                                                                                                                             |[0x80000f90]:UKSUB32 t6, t5, t4<br> [0x80000f94]:sd t6, 848(gp)<br>   |
|  75|[0x800036b0]<br>0xFFFFEFFD00000000|- rs2_w1_val == 2<br> - rs2_w0_val == 4294836223<br> - rs1_w0_val == 4227858431<br>                                                                                                                                                                                                                                                                             |[0x80000fbc]:UKSUB32 t6, t5, t4<br> [0x80000fc0]:sd t6, 864(gp)<br>   |
|  76|[0x800036c0]<br>0x0000000000000000|- rs2_w1_val == 4294967295<br> - rs2_w0_val == 4293918719<br>                                                                                                                                                                                                                                                                                                   |[0x80000fdc]:UKSUB32 t6, t5, t4<br> [0x80000fe0]:sd t6, 880(gp)<br>   |
|  77|[0x800036d0]<br>0x00000020FFFBEFFF|- rs1_w0_val == 4294705151<br>                                                                                                                                                                                                                                                                                                                                  |[0x80000ffc]:UKSUB32 t6, t5, t4<br> [0x80001000]:sd t6, 896(gp)<br>   |
|  78|[0x800036e0]<br>0x0000000055555535|- rs2_w0_val == 2863311530<br> - rs1_w1_val == 64<br> - rs1_w0_val == 4294967263<br>                                                                                                                                                                                                                                                                            |[0x80001024]:UKSUB32 t6, t5, t4<br> [0x80001028]:sd t6, 912(gp)<br>   |
|  79|[0x800036f0]<br>0x0001E00000000000|- rs2_w0_val == 3221225471<br>                                                                                                                                                                                                                                                                                                                                  |[0x80001050]:UKSUB32 t6, t5, t4<br> [0x80001054]:sd t6, 928(gp)<br>   |
|  80|[0x80003700]<br>0x0000000000000000|- rs2_w0_val == 4160749567<br> - rs1_w0_val == 32<br>                                                                                                                                                                                                                                                                                                           |[0x80001074]:UKSUB32 t6, t5, t4<br> [0x80001078]:sd t6, 944(gp)<br>   |
|  81|[0x80003710]<br>0x0000000000000000|- rs2_w0_val == 4294705151<br>                                                                                                                                                                                                                                                                                                                                  |[0x8000109c]:UKSUB32 t6, t5, t4<br> [0x800010a0]:sd t6, 960(gp)<br>   |
|  82|[0x80003720]<br>0x0000000000000000|- rs2_w0_val == 4294901759<br>                                                                                                                                                                                                                                                                                                                                  |[0x800010c4]:UKSUB32 t6, t5, t4<br> [0x800010c8]:sd t6, 976(gp)<br>   |
|  83|[0x80003730]<br>0x000FFFFE00000000|- rs2_w0_val == 4294967039<br> - rs1_w1_val == 1048576<br> - rs1_w0_val == 16777216<br>                                                                                                                                                                                                                                                                         |[0x800010e8]:UKSUB32 t6, t5, t4<br> [0x800010ec]:sd t6, 992(gp)<br>   |
|  84|[0x80003740]<br>0x0000000000000018|- rs2_w0_val == 4294967263<br> - rs1_w0_val == 4294967287<br>                                                                                                                                                                                                                                                                                                   |[0x80001114]:UKSUB32 t6, t5, t4<br> [0x80001118]:sd t6, 1008(gp)<br>  |
|  85|[0x80003750]<br>0xFFFFFB7FAAAAA8AA|- rs2_w0_val == 512<br>                                                                                                                                                                                                                                                                                                                                         |[0x8000113c]:UKSUB32 t6, t5, t4<br> [0x80001140]:sd t6, 1024(gp)<br>  |
|  86|[0x80003760]<br>0x0000001000000000|- rs2_w0_val == 256<br>                                                                                                                                                                                                                                                                                                                                         |[0x80001160]:UKSUB32 t6, t5, t4<br> [0x80001164]:sd t6, 1040(gp)<br>  |
|  87|[0x80003770]<br>0x00000000F7FFFF7F|- rs2_w0_val == 128<br> - rs1_w0_val == 4160749567<br>                                                                                                                                                                                                                                                                                                          |[0x80001190]:UKSUB32 t6, t5, t4<br> [0x80001194]:sd t6, 1056(gp)<br>  |
|  88|[0x80003780]<br>0x0003FFE0FFFFFFBD|- rs2_w0_val == 64<br>                                                                                                                                                                                                                                                                                                                                          |[0x800011b8]:UKSUB32 t6, t5, t4<br> [0x800011bc]:sd t6, 1072(gp)<br>  |
|  89|[0x80003790]<br>0x00000000FFFFFFEE|- rs2_w0_val == 16<br> - rs1_w1_val == 16384<br>                                                                                                                                                                                                                                                                                                                |[0x800011e0]:UKSUB32 t6, t5, t4<br> [0x800011e4]:sd t6, 1088(gp)<br>  |
|  90|[0x800037a0]<br>0x00000000000FFFFE|- rs2_w0_val == 2<br> - rs1_w1_val == 2<br>                                                                                                                                                                                                                                                                                                                     |[0x80001208]:UKSUB32 t6, t5, t4<br> [0x8000120c]:sd t6, 1104(gp)<br>  |
|  91|[0x800037b0]<br>0xFF5FFFFF0000000A|- rs2_w0_val == 1<br> - rs1_w1_val == 4292870143<br>                                                                                                                                                                                                                                                                                                            |[0x80001230]:UKSUB32 t6, t5, t4<br> [0x80001234]:sd t6, 1120(gp)<br>  |
|  92|[0x800037c0]<br>0x0000000008000000|- rs1_w1_val == 33554432<br>                                                                                                                                                                                                                                                                                                                                    |[0x80001254]:UKSUB32 t6, t5, t4<br> [0x80001258]:sd t6, 1136(gp)<br>  |
|  93|[0x800037d0]<br>0x0000000000000000|- rs2_w0_val == 33554432<br> - rs1_w1_val == 1431655765<br>                                                                                                                                                                                                                                                                                                     |[0x8000127c]:UKSUB32 t6, t5, t4<br> [0x80001280]:sd t6, 1152(gp)<br>  |
|  94|[0x800037e0]<br>0xBFFFFFF3FFFFFDFB|- rs1_w1_val == 3221225471<br> - rs1_w0_val == 4294966783<br>                                                                                                                                                                                                                                                                                                   |[0x800012a0]:UKSUB32 t6, t5, t4<br> [0x800012a4]:sd t6, 1168(gp)<br>  |
|  95|[0x800037f0]<br>0xF7FFFFDF0000FFFC|- rs1_w1_val == 4160749567<br>                                                                                                                                                                                                                                                                                                                                  |[0x800012c8]:UKSUB32 t6, t5, t4<br> [0x800012cc]:sd t6, 1184(gp)<br>  |
|  96|[0x80003800]<br>0xFBFFFBFF00000000|- rs1_w1_val == 4227858431<br>                                                                                                                                                                                                                                                                                                                                  |[0x800012f4]:UKSUB32 t6, t5, t4<br> [0x800012f8]:sd t6, 1200(gp)<br>  |
|  97|[0x80003810]<br>0x0000000000000000|- rs1_w1_val == 4278190079<br>                                                                                                                                                                                                                                                                                                                                  |[0x80001320]:UKSUB32 t6, t5, t4<br> [0x80001324]:sd t6, 1216(gp)<br>  |
|  98|[0x80003820]<br>0x0003C000FFF7FFF5|- rs1_w1_val == 4294950911<br>                                                                                                                                                                                                                                                                                                                                  |[0x8000134c]:UKSUB32 t6, t5, t4<br> [0x80001350]:sd t6, 1232(gp)<br>  |
|  99|[0x80003830]<br>0xEFFFF7FF00000000|- rs1_w1_val == 4294965247<br>                                                                                                                                                                                                                                                                                                                                  |[0x8000137c]:UKSUB32 t6, t5, t4<br> [0x80001380]:sd t6, 1248(gp)<br>  |
| 100|[0x80003840]<br>0xFFFFFBF0000000FB|- rs1_w1_val == 4294966271<br>                                                                                                                                                                                                                                                                                                                                  |[0x800013a0]:UKSUB32 t6, t5, t4<br> [0x800013a4]:sd t6, 1264(gp)<br>  |
| 101|[0x80003850]<br>0x0000000000000000|- rs1_w1_val == 4294967279<br>                                                                                                                                                                                                                                                                                                                                  |[0x800013c4]:UKSUB32 t6, t5, t4<br> [0x800013c8]:sd t6, 1280(gp)<br>  |
| 102|[0x80003860]<br>0x00FFFFF800000000|- rs1_w1_val == 4294967287<br> - rs1_w0_val == 3221225471<br>                                                                                                                                                                                                                                                                                                   |[0x800013e8]:UKSUB32 t6, t5, t4<br> [0x800013ec]:sd t6, 1296(gp)<br>  |
| 103|[0x80003870]<br>0xFFFFEFFD00000002|- rs2_w0_val == 4294967293<br> - rs1_w1_val == 4294967293<br>                                                                                                                                                                                                                                                                                                   |[0x80001410]:UKSUB32 t6, t5, t4<br> [0x80001414]:sd t6, 1312(gp)<br>  |
| 104|[0x80003880]<br>0xFFF7FFFE00000000|- rs1_w1_val == 4294967294<br>                                                                                                                                                                                                                                                                                                                                  |[0x80001438]:UKSUB32 t6, t5, t4<br> [0x8000143c]:sd t6, 1328(gp)<br>  |
| 105|[0x80003890]<br>0x07F0000000000008|- rs1_w1_val == 134217728<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001464]:UKSUB32 t6, t5, t4<br> [0x80001468]:sd t6, 1344(gp)<br>  |
| 106|[0x800038a0]<br>0x00000000FEFEFFFF|- rs1_w1_val == 8192<br> - rs1_w0_val == 4278190079<br>                                                                                                                                                                                                                                                                                                         |[0x80001490]:UKSUB32 t6, t5, t4<br> [0x80001494]:sd t6, 1360(gp)<br>  |
| 107|[0x800038b0]<br>0x000000008AAAAAAA|- rs1_w1_val == 4096<br>                                                                                                                                                                                                                                                                                                                                        |[0x800014c0]:UKSUB32 t6, t5, t4<br> [0x800014c4]:sd t6, 1376(gp)<br>  |
| 108|[0x800038c0]<br>0x000000007EFFFFFF|- rs1_w1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                        |[0x800014e4]:UKSUB32 t6, t5, t4<br> [0x800014e8]:sd t6, 1392(gp)<br>  |
| 109|[0x800038d0]<br>0x0000000000000000|- rs1_w1_val == 1024<br>                                                                                                                                                                                                                                                                                                                                        |[0x8000150c]:UKSUB32 t6, t5, t4<br> [0x80001510]:sd t6, 1408(gp)<br>  |
| 110|[0x800038e0]<br>0x000000000000007F|- rs1_w1_val == 256<br>                                                                                                                                                                                                                                                                                                                                         |[0x80001530]:UKSUB32 t6, t5, t4<br> [0x80001534]:sd t6, 1424(gp)<br>  |
| 111|[0x800038f0]<br>0x000000010003E000|- rs1_w1_val == 8<br>                                                                                                                                                                                                                                                                                                                                           |[0x8000155c]:UKSUB32 t6, t5, t4<br> [0x80001560]:sd t6, 1440(gp)<br>  |
| 112|[0x80003910]<br>0xBFFFFFBF00000000|- rs1_w0_val == 4026531839<br>                                                                                                                                                                                                                                                                                                                                  |[0x800015a4]:UKSUB32 t6, t5, t4<br> [0x800015a8]:sd t6, 1472(gp)<br>  |
| 113|[0x80003920]<br>0xFFBFFFDF00000000|- rs2_w0_val == 262144<br>                                                                                                                                                                                                                                                                                                                                      |[0x800015cc]:UKSUB32 t6, t5, t4<br> [0x800015d0]:sd t6, 1488(gp)<br>  |
| 114|[0x80003930]<br>0x0000000000600000|- rs1_w0_val == 4292870143<br>                                                                                                                                                                                                                                                                                                                                  |[0x800015f8]:UKSUB32 t6, t5, t4<br> [0x800015fc]:sd t6, 1504(gp)<br>  |
| 115|[0x80003940]<br>0xFFEFEFFFFFEFFFEE|- rs1_w0_val == 4293918719<br>                                                                                                                                                                                                                                                                                                                                  |[0x80001624]:UKSUB32 t6, t5, t4<br> [0x80001628]:sd t6, 1520(gp)<br>  |
| 116|[0x80003950]<br>0x0000000000000000|- rs1_w1_val == 4194304<br>                                                                                                                                                                                                                                                                                                                                     |[0x80001654]:UKSUB32 t6, t5, t4<br> [0x80001658]:sd t6, 1536(gp)<br>  |
| 117|[0x80003960]<br>0xAAAAA6AAFFFDFFFD|- rs1_w0_val == 4294836223<br>                                                                                                                                                                                                                                                                                                                                  |[0x80001680]:UKSUB32 t6, t5, t4<br> [0x80001684]:sd t6, 1552(gp)<br>  |
| 118|[0x80003970]<br>0x001FFFF73FFF0000|- rs1_w1_val == 2097152<br>                                                                                                                                                                                                                                                                                                                                     |[0x800016a4]:UKSUB32 t6, t5, t4<br> [0x800016a8]:sd t6, 1568(gp)<br>  |
| 119|[0x80003980]<br>0x0000000000000000|- rs1_w0_val == 4294950911<br>                                                                                                                                                                                                                                                                                                                                  |[0x800016cc]:UKSUB32 t6, t5, t4<br> [0x800016d0]:sd t6, 1584(gp)<br>  |
| 120|[0x80003990]<br>0x7FFFFF0000000000|- rs1_w0_val == 4294966271<br>                                                                                                                                                                                                                                                                                                                                  |[0x800016f0]:UKSUB32 t6, t5, t4<br> [0x800016f4]:sd t6, 1600(gp)<br>  |
| 121|[0x800039a0]<br>0x00000000FFFFFEFB|- rs1_w0_val == 4294967039<br>                                                                                                                                                                                                                                                                                                                                  |[0x8000171c]:UKSUB32 t6, t5, t4<br> [0x80001720]:sd t6, 1616(gp)<br>  |
| 122|[0x800039b0]<br>0xFFF7FFF6FFFFFD7F|- rs1_w0_val == 4294967167<br>                                                                                                                                                                                                                                                                                                                                  |[0x80001740]:UKSUB32 t6, t5, t4<br> [0x80001744]:sd t6, 1632(gp)<br>  |
| 123|[0x800039c0]<br>0xFFBFFFFF00000000|- rs2_w0_val == 1073741824<br>                                                                                                                                                                                                                                                                                                                                  |[0x80001764]:UKSUB32 t6, t5, t4<br> [0x80001768]:sd t6, 1648(gp)<br>  |
| 124|[0x800039d0]<br>0x00000000FFFFFFB6|- rs1_w0_val == 4294967231<br>                                                                                                                                                                                                                                                                                                                                  |[0x8000178c]:UKSUB32 t6, t5, t4<br> [0x80001790]:sd t6, 1664(gp)<br>  |
| 125|[0x800039e0]<br>0x0000000000000000|- rs2_w0_val == 8388608<br>                                                                                                                                                                                                                                                                                                                                     |[0x800017b0]:UKSUB32 t6, t5, t4<br> [0x800017b4]:sd t6, 1680(gp)<br>  |
| 126|[0x800039f0]<br>0x00000FF900000000|- rs1_w0_val == 2147483648<br>                                                                                                                                                                                                                                                                                                                                  |[0x800017d4]:UKSUB32 t6, t5, t4<br> [0x800017d8]:sd t6, 1696(gp)<br>  |
| 127|[0x80003a00]<br>0x00000000FFFFFFF8|- rs1_w1_val == 67108864<br>                                                                                                                                                                                                                                                                                                                                    |[0x80001800]:UKSUB32 t6, t5, t4<br> [0x80001804]:sd t6, 1712(gp)<br>  |
| 128|[0x80003a10]<br>0x00FFFFFE00000000|- rs1_w1_val == 16777216<br>                                                                                                                                                                                                                                                                                                                                    |[0x80001824]:UKSUB32 t6, t5, t4<br> [0x80001828]:sd t6, 1728(gp)<br>  |
| 129|[0x80003a20]<br>0x00000000FFEEFFFF|- rs2_w0_val == 1048576<br>                                                                                                                                                                                                                                                                                                                                     |[0x80001850]:UKSUB32 t6, t5, t4<br> [0x80001854]:sd t6, 1744(gp)<br>  |
| 130|[0x80003a30]<br>0xFFFFFFEB0FFFFFF6|- rs1_w0_val == 268435456<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001870]:UKSUB32 t6, t5, t4<br> [0x80001874]:sd t6, 1760(gp)<br>  |
| 131|[0x80003a40]<br>0x0000000000000000|- rs1_w0_val == 67108864<br>                                                                                                                                                                                                                                                                                                                                    |[0x80001898]:UKSUB32 t6, t5, t4<br> [0x8000189c]:sd t6, 1776(gp)<br>  |
| 132|[0x80003a50]<br>0xDFFFFFFF01FFFE00|- rs1_w0_val == 33554432<br>                                                                                                                                                                                                                                                                                                                                    |[0x800018b8]:UKSUB32 t6, t5, t4<br> [0x800018bc]:sd t6, 1792(gp)<br>  |
| 133|[0x80003a60]<br>0x00000000FFBFFF7F|- rs1_w1_val == 524288<br>                                                                                                                                                                                                                                                                                                                                      |[0x800018e0]:UKSUB32 t6, t5, t4<br> [0x800018e4]:sd t6, 1808(gp)<br>  |
| 134|[0x80003a70]<br>0x00007FF300000000|- rs1_w1_val == 32768<br>                                                                                                                                                                                                                                                                                                                                       |[0x80001910]:UKSUB32 t6, t5, t4<br> [0x80001914]:sd t6, 1824(gp)<br>  |
| 135|[0x80003a90]<br>0x0000000000000000|- rs2_w1_val == 4293918719<br>                                                                                                                                                                                                                                                                                                                                  |[0x80001964]:UKSUB32 t6, t5, t4<br> [0x80001968]:sd t6, 1856(gp)<br>  |
