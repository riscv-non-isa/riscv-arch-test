
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
| SIG_REGION                | [('0x80003210', '0x80003af0', '284 dwords')]      |
| COV_LABELS                | ukaddw      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/ukaddw-01.S    |
| Total Number of coverpoints| 384     |
| Total Coverpoints Hit     | 378      |
| Total Signature Updates   | 284      |
| STAT1                     | 141      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 142     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x800019f8]:UKADDW t6, t5, t4
      [0x800019fc]:sd t6, 1984(gp)
 -- Signature Address: 0x80003ad0 Data: 0xFFFFFFFFFFFFFFFF
 -- Redundant Coverpoints hit by the op
      - opcode : ukaddw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == 4294705151
      - rs2_w0_val == 3221225471
      - rs1_w1_val == 4294836223
      - rs1_w0_val == 4293918719






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ukaddw', 'rs1 : x25', 'rs2 : x25', 'rd : x12', 'rs1 == rs2 != rd', 'rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 67108864', 'rs1_w1_val == 67108864']
Last Code Sequence : 
	-[0x800003bc]:UKADDW a2, s9, s9
	-[0x800003c0]:sd a2, 0(a4)
Current Store : [0x800003c4] : sd s9, 8(a4) -- Store: [0x80003218]:0x0400000000000005




Last Coverpoint : ['rs1 : x24', 'rs2 : x24', 'rd : x24', 'rs1 == rs2 == rd']
Last Code Sequence : 
	-[0x800003e4]:UKADDW s8, s8, s8
	-[0x800003e8]:sd s8, 16(a4)
Current Store : [0x800003ec] : sd s8, 24(a4) -- Store: [0x80003228]:0x000000000000001C




Last Coverpoint : ['rs1 : x23', 'rs2 : x6', 'rd : x10', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs2_w1_val == 3221225471']
Last Code Sequence : 
	-[0x8000040c]:UKADDW a0, s7, t1
	-[0x80000410]:sd a0, 32(a4)
Current Store : [0x80000414] : sd s7, 40(a4) -- Store: [0x80003238]:0x0000000A00000011




Last Coverpoint : ['rs1 : x5', 'rs2 : x1', 'rd : x5', 'rs1 == rd != rs2', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 2863311530', 'rs2_w0_val == 4293918719', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x8000043c]:UKADDW t0, t0, ra
	-[0x80000440]:sd t0, 48(a4)
Current Store : [0x80000444] : sd t0, 56(a4) -- Store: [0x80003248]:0xFFFFFFFFFFF0007F




Last Coverpoint : ['rs1 : x31', 'rs2 : x17', 'rd : x17', 'rs2 == rd != rs1', 'rs2_w1_val == 1431655765', 'rs2_w0_val == 1431655765', 'rs1_w0_val == 3221225471']
Last Code Sequence : 
	-[0x80000478]:UKADDW a7, t6, a7
	-[0x8000047c]:sd a7, 64(a4)
Current Store : [0x80000480] : sd t6, 72(a4) -- Store: [0x80003258]:0x04000000BFFFFFFF




Last Coverpoint : ['rs1 : x27', 'rs2 : x20', 'rd : x4', 'rs2_w1_val == 2147483647', 'rs2_w0_val == 8', 'rs1_w0_val == 4294934527']
Last Code Sequence : 
	-[0x800004a4]:UKADDW tp, s11, s4
	-[0x800004a8]:sd tp, 80(a4)
Current Store : [0x800004ac] : sd s11, 88(a4) -- Store: [0x80003268]:0x00000009FFFF7FFF




Last Coverpoint : ['rs1 : x13', 'rs2 : x3', 'rd : x20', 'rs2_w1_val == 3758096383', 'rs2_w0_val == 4294967287', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x800004c8]:UKADDW s4, a3, gp
	-[0x800004cc]:sd s4, 96(a4)
Current Store : [0x800004d0] : sd a3, 104(a4) -- Store: [0x80003278]:0x0000000300001000




Last Coverpoint : ['rs1 : x20', 'rs2 : x11', 'rd : x26', 'rs2_w1_val == 4026531839', 'rs2_w0_val == 2097152', 'rs1_w1_val == 4294967291', 'rs1_w0_val == 4278190079']
Last Code Sequence : 
	-[0x800004f0]:UKADDW s10, s4, a1
	-[0x800004f4]:sd s10, 112(a4)
Current Store : [0x800004f8] : sd s4, 120(a4) -- Store: [0x80003288]:0xFFFFFFFBFEFFFFFF




Last Coverpoint : ['rs1 : x4', 'rs2 : x16', 'rd : x22', 'rs2_w1_val == 4160749567', 'rs2_w0_val == 65536', 'rs1_w1_val == 4096', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x8000051c]:UKADDW s6, tp, a6
	-[0x80000520]:sd s6, 128(a4)
Current Store : [0x80000524] : sd tp, 136(a4) -- Store: [0x80003298]:0x0000100000000040




Last Coverpoint : ['rs1 : x26', 'rs2 : x8', 'rd : x7', 'rs2_w1_val == 4227858431', 'rs2_w0_val == 67108864', 'rs1_w1_val == 128', 'rs1_w0_val == 4294967287']
Last Code Sequence : 
	-[0x80000544]:UKADDW t2, s10, fp
	-[0x80000548]:sd t2, 144(a4)
Current Store : [0x8000054c] : sd s10, 152(a4) -- Store: [0x800032a8]:0x00000080FFFFFFF7




Last Coverpoint : ['rs1 : x28', 'rs2 : x31', 'rd : x18', 'rs2_w1_val == 4261412863', 'rs1_w0_val == 4292870143']
Last Code Sequence : 
	-[0x80000570]:UKADDW s2, t3, t6
	-[0x80000574]:sd s2, 160(a4)
Current Store : [0x80000578] : sd t3, 168(a4) -- Store: [0x800032b8]:0x00000006FFDFFFFF




Last Coverpoint : ['rs1 : x11', 'rs2 : x27', 'rd : x29', 'rs2_w1_val == 4278190079', 'rs2_w0_val == 32768', 'rs1_w1_val == 8', 'rs1_w0_val == 2147483648']
Last Code Sequence : 
	-[0x80000598]:UKADDW t4, a1, s11
	-[0x8000059c]:sd t4, 176(a4)
Current Store : [0x800005a0] : sd a1, 184(a4) -- Store: [0x800032c8]:0x0000000880000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x26', 'rd : x3', 'rs2_w1_val == 4286578687', 'rs2_w0_val == 4294967291', 'rs1_w1_val == 4294967293']
Last Code Sequence : 
	-[0x800005bc]:UKADDW gp, t4, s10
	-[0x800005c0]:sd gp, 192(a4)
Current Store : [0x800005c4] : sd t4, 200(a4) -- Store: [0x800032d8]:0xFFFFFFFDFEFFFFFF




Last Coverpoint : ['rs1 : x3', 'rs2 : x9', 'rd : x8', 'rs2_w1_val == 4290772991', 'rs2_w0_val == 4294934527', 'rs1_w1_val == 4294967279', 'rs1_w0_val == 4294967263']
Last Code Sequence : 
	-[0x800005e8]:UKADDW fp, gp, s1
	-[0x800005ec]:sd fp, 208(a4)
Current Store : [0x800005f0] : sd gp, 216(a4) -- Store: [0x800032e8]:0xFFFFFFEFFFFFFFDF




Last Coverpoint : ['rs1 : x2', 'rs2 : x5', 'rd : x1', 'rs2_w1_val == 4292870143', 'rs2_w0_val == 4294963199', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000614]:UKADDW ra, sp, t0
	-[0x80000618]:sd ra, 224(a4)
Current Store : [0x8000061c] : sd sp, 232(a4) -- Store: [0x800032f8]:0xFFFFFFFB00000008




Last Coverpoint : ['rs1 : x9', 'rs2 : x13', 'rd : x30', 'rs2_w1_val == 4293918719', 'rs2_w0_val == 8192', 'rs1_w1_val == 2097152', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000644]:UKADDW t5, s1, a3
	-[0x80000648]:sd t5, 240(a4)
Current Store : [0x8000064c] : sd s1, 248(a4) -- Store: [0x80003308]:0x0020000000008000




Last Coverpoint : ['rs1 : x15', 'rs2 : x23', 'rd : x28', 'rs2_w1_val == 4294443007', 'rs1_w1_val == 4194304', 'rs1_w0_val == 4294967231']
Last Code Sequence : 
	-[0x8000067c]:UKADDW t3, a5, s7
	-[0x80000680]:sd t3, 0(gp)
Current Store : [0x80000684] : sd a5, 8(gp) -- Store: [0x80003318]:0x00400000FFFFFFBF




Last Coverpoint : ['rs1 : x12', 'rs2 : x30', 'rd : x0', 'rs2_w1_val == 4294705151', 'rs2_w0_val == 3221225471', 'rs1_w1_val == 4294836223', 'rs1_w0_val == 4293918719']
Last Code Sequence : 
	-[0x800006a8]:UKADDW zero, a2, t5
	-[0x800006ac]:sd zero, 16(gp)
Current Store : [0x800006b0] : sd a2, 24(gp) -- Store: [0x80003328]:0xFFFDFFFFFFEFFFFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x7', 'rd : x31', 'rs2_w1_val == 4294836223', 'rs2_w0_val == 4', 'rs1_w1_val == 4294705151']
Last Code Sequence : 
	-[0x800006d4]:UKADDW t6, s2, t2
	-[0x800006d8]:sd t6, 32(gp)
Current Store : [0x800006dc] : sd s2, 40(gp) -- Store: [0x80003338]:0xFFFBFFFF00000008




Last Coverpoint : ['rs1 : x10', 'rs2 : x28', 'rd : x16', 'rs2_w1_val == 4294901759', 'rs2_w0_val == 4294965247', 'rs1_w1_val == 4227858431', 'rs1_w0_val == 4294966271']
Last Code Sequence : 
	-[0x80000700]:UKADDW a6, a0, t3
	-[0x80000704]:sd a6, 48(gp)
Current Store : [0x80000708] : sd a0, 56(gp) -- Store: [0x80003348]:0xFBFFFFFFFFFFFBFF




Last Coverpoint : ['rs1 : x22', 'rs2 : x4', 'rd : x27', 'rs2_w1_val == 4294934527', 'rs2_w0_val == 2863311530', 'rs1_w1_val == 2147483648', 'rs1_w0_val == 4294705151']
Last Code Sequence : 
	-[0x8000073c]:UKADDW s11, s6, tp
	-[0x80000740]:sd s11, 64(gp)
Current Store : [0x80000744] : sd s6, 72(gp) -- Store: [0x80003358]:0x80000000FFFBFFFF




Last Coverpoint : ['rs1 : x21', 'rs2 : x19', 'rd : x14', 'rs2_w1_val == 4294950911', 'rs2_w0_val == 1024', 'rs1_w1_val == 268435456']
Last Code Sequence : 
	-[0x80000764]:UKADDW a4, s5, s3
	-[0x80000768]:sd a4, 80(gp)
Current Store : [0x8000076c] : sd s5, 88(gp) -- Store: [0x80003368]:0x100000000000000B




Last Coverpoint : ['rs1 : x14', 'rs2 : x10', 'rd : x15', 'rs2_w1_val == 4294959103', 'rs1_w1_val == 1', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000794]:UKADDW a5, a4, a0
	-[0x80000798]:sd a5, 96(gp)
Current Store : [0x8000079c] : sd a4, 104(gp) -- Store: [0x80003378]:0x0000000100010000




Last Coverpoint : ['rs1 : x17', 'rs2 : x22', 'rd : x6', 'rs2_w1_val == 4294963199', 'rs2_w0_val == 2147483648', 'rs1_w1_val == 8192', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x800007b8]:UKADDW t1, a7, s6
	-[0x800007bc]:sd t1, 112(gp)
Current Store : [0x800007c0] : sd a7, 120(gp) -- Store: [0x80003388]:0x0000200008000000




Last Coverpoint : ['rs1 : x0', 'rs2 : x12', 'rd : x9', 'rs1_w0_val == 0', 'rs2_w1_val == 4294965247', 'rs2_w0_val == 4261412863', 'rs1_w1_val == 0']
Last Code Sequence : 
	-[0x800007dc]:UKADDW s1, zero, a2
	-[0x800007e0]:sd s1, 128(gp)
Current Store : [0x800007e4] : sd zero, 136(gp) -- Store: [0x80003398]:0x0000000000000000




Last Coverpoint : ['rs1 : x7', 'rs2 : x29', 'rd : x19', 'rs2_w1_val == 4294966271']
Last Code Sequence : 
	-[0x80000804]:UKADDW s3, t2, t4
	-[0x80000808]:sd s3, 144(gp)
Current Store : [0x8000080c] : sd t2, 152(gp) -- Store: [0x800033a8]:0x002000000000000B




Last Coverpoint : ['rs1 : x19', 'rs2 : x18', 'rd : x2', 'rs2_w1_val == 4294966783', 'rs1_w1_val == 16']
Last Code Sequence : 
	-[0x80000824]:UKADDW sp, s3, s2
	-[0x80000828]:sd sp, 160(gp)
Current Store : [0x8000082c] : sd s3, 168(gp) -- Store: [0x800033b8]:0x0000001008000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x2', 'rd : x25', 'rs2_w1_val == 4294967039', 'rs2_w0_val == 32']
Last Code Sequence : 
	-[0x80000840]:UKADDW s9, t5, sp
	-[0x80000844]:sd s9, 176(gp)
Current Store : [0x80000848] : sd t5, 184(gp) -- Store: [0x800033c8]:0x0000000000000013




Last Coverpoint : ['rs1 : x16', 'rs2 : x0', 'rd : x21', 'rs2_w1_val == 0', 'rs2_w0_val == 0', 'rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x80000864]:UKADDW s5, a6, zero
	-[0x80000868]:sd s5, 192(gp)
Current Store : [0x8000086c] : sd a6, 200(gp) -- Store: [0x800033d8]:0x0008000000000005




Last Coverpoint : ['rs1 : x1', 'rs2 : x14', 'rd : x11', 'rs2_w1_val == 4294967231', 'rs2_w0_val == 4290772991', 'rs1_w0_val == 4294443007']
Last Code Sequence : 
	-[0x80000890]:UKADDW a1, ra, a4
	-[0x80000894]:sd a1, 208(gp)
Current Store : [0x80000898] : sd ra, 216(gp) -- Store: [0x800033e8]:0x00000007FFF7FFFF




Last Coverpoint : ['rs1 : x6', 'rs2 : x15', 'rd : x13', 'rs2_w1_val == 4294967263', 'rs1_w0_val == 4286578687']
Last Code Sequence : 
	-[0x800008b8]:UKADDW a3, t1, a5
	-[0x800008bc]:sd a3, 224(gp)
Current Store : [0x800008c0] : sd t1, 232(gp) -- Store: [0x800033f8]:0xFFFFFFEFFF7FFFFF




Last Coverpoint : ['rs1 : x8', 'rs2 : x21', 'rd : x23', 'rs2_w1_val == 4294967279', 'rs2_w0_val == 256', 'rs1_w1_val == 4294966783']
Last Code Sequence : 
	-[0x800008dc]:UKADDW s7, fp, s5
	-[0x800008e0]:sd s7, 240(gp)
Current Store : [0x800008e4] : sd fp, 248(gp) -- Store: [0x80003408]:0xFFFFFDFF0000000B




Last Coverpoint : ['rs2_w1_val == 4294967287']
Last Code Sequence : 
	-[0x80000900]:UKADDW t6, t5, t4
	-[0x80000904]:sd t6, 256(gp)
Current Store : [0x80000908] : sd t5, 264(gp) -- Store: [0x80003418]:0xFFFFFFEF00010000




Last Coverpoint : ['rs2_w1_val == 4294967291', 'rs2_w0_val == 512', 'rs1_w1_val == 4294963199']
Last Code Sequence : 
	-[0x80000924]:UKADDW t6, t5, t4
	-[0x80000928]:sd t6, 272(gp)
Current Store : [0x8000092c] : sd t5, 280(gp) -- Store: [0x80003428]:0xFFFFEFFF08000000




Last Coverpoint : ['rs2_w1_val == 4294967293', 'rs2_w0_val == 3758096383', 'rs1_w1_val == 4294934527']
Last Code Sequence : 
	-[0x8000094c]:UKADDW t6, t5, t4
	-[0x80000950]:sd t6, 288(gp)
Current Store : [0x80000954] : sd t5, 296(gp) -- Store: [0x80003438]:0xFFFF7FFFFF7FFFFF




Last Coverpoint : ['rs2_w1_val == 4294967294', 'rs2_w0_val == 4294967294', 'rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x80000974]:UKADDW t6, t5, t4
	-[0x80000978]:sd t6, 304(gp)
Current Store : [0x8000097c] : sd t5, 312(gp) -- Store: [0x80003448]:0x00004000FFFFFBFF




Last Coverpoint : ['rs2_w1_val == 2147483648', 'rs2_w0_val == 262144', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x8000099c]:UKADDW t6, t5, t4
	-[0x800009a0]:sd t6, 320(gp)
Current Store : [0x800009a4] : sd t5, 328(gp) -- Store: [0x80003458]:0x0000200040000000




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs2_w0_val == 4294950911', 'rs1_w1_val == 4294443007', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x800009d0]:UKADDW t6, t5, t4
	-[0x800009d4]:sd t6, 336(gp)
Current Store : [0x800009d8] : sd t5, 344(gp) -- Store: [0x80003468]:0xFFF7FFFF00000002




Last Coverpoint : ['rs2_w1_val == 536870912', 'rs2_w0_val == 4292870143', 'rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x800009fc]:UKADDW t6, t5, t4
	-[0x80000a00]:sd t6, 352(gp)
Current Store : [0x80000a04] : sd t5, 360(gp) -- Store: [0x80003478]:0x0000800000000008




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000a20]:UKADDW t6, t5, t4
	-[0x80000a24]:sd t6, 368(gp)
Current Store : [0x80000a28] : sd t5, 376(gp) -- Store: [0x80003488]:0xFFFBFFFF00800000




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs1_w1_val == 64']
Last Code Sequence : 
	-[0x80000a40]:UKADDW t6, t5, t4
	-[0x80000a44]:sd t6, 384(gp)
Current Store : [0x80000a48] : sd t5, 392(gp) -- Store: [0x80003498]:0x0000004040000000




Last Coverpoint : ['rs2_w1_val == 33554432', 'rs1_w1_val == 4294967287']
Last Code Sequence : 
	-[0x80000a68]:UKADDW t6, t5, t4
	-[0x80000a6c]:sd t6, 400(gp)
Current Store : [0x80000a70] : sd t5, 408(gp) -- Store: [0x800034a8]:0xFFFFFFF7FFDFFFFF




Last Coverpoint : ['rs2_w1_val == 16777216', 'rs1_w1_val == 4026531839', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000a94]:UKADDW t6, t5, t4
	-[0x80000a98]:sd t6, 416(gp)
Current Store : [0x80000a9c] : sd t5, 424(gp) -- Store: [0x800034b8]:0xEFFFFFFF00000020




Last Coverpoint : ['rs2_w1_val == 8388608', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000ac4]:UKADDW t6, t5, t4
	-[0x80000ac8]:sd t6, 432(gp)
Current Store : [0x80000acc] : sd t5, 440(gp) -- Store: [0x800034c8]:0xFFFFFFFD00000800




Last Coverpoint : ['rs2_w1_val == 4194304', 'rs1_w1_val == 4294966271', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000ae4]:UKADDW t6, t5, t4
	-[0x80000ae8]:sd t6, 448(gp)
Current Store : [0x80000aec] : sd t5, 456(gp) -- Store: [0x800034d8]:0xFFFFFBFF00040000




Last Coverpoint : ['rs2_w1_val == 2097152', 'rs1_w1_val == 16777216']
Last Code Sequence : 
	-[0x80000b0c]:UKADDW t6, t5, t4
	-[0x80000b10]:sd t6, 464(gp)
Current Store : [0x80000b14] : sd t5, 472(gp) -- Store: [0x800034e8]:0x0100000000000007




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000b34]:UKADDW t6, t5, t4
	-[0x80000b38]:sd t6, 480(gp)
Current Store : [0x80000b3c] : sd t5, 488(gp) -- Store: [0x800034f8]:0xFFFFFFF700020000




Last Coverpoint : ['rs2_w1_val == 524288', 'rs2_w0_val == 131072', 'rs1_w1_val == 4160749567']
Last Code Sequence : 
	-[0x80000b5c]:UKADDW t6, t5, t4
	-[0x80000b60]:sd t6, 496(gp)
Current Store : [0x80000b64] : sd t5, 504(gp) -- Store: [0x80003508]:0xF7FFFFFFFFFFFFDF




Last Coverpoint : ['rs2_w1_val == 262144', 'rs2_w0_val == 4294966783', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000b84]:UKADDW t6, t5, t4
	-[0x80000b88]:sd t6, 512(gp)
Current Store : [0x80000b8c] : sd t5, 520(gp) -- Store: [0x80003518]:0xFFFF7FFF04000000




Last Coverpoint : ['rs2_w1_val == 131072', 'rs1_w1_val == 4290772991']
Last Code Sequence : 
	-[0x80000bac]:UKADDW t6, t5, t4
	-[0x80000bb0]:sd t6, 528(gp)
Current Store : [0x80000bb4] : sd t5, 536(gp) -- Store: [0x80003528]:0xFFBFFFFF0000000E




Last Coverpoint : ['rs2_w1_val == 65536', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000bcc]:UKADDW t6, t5, t4
	-[0x80000bd0]:sd t6, 544(gp)
Current Store : [0x80000bd4] : sd t5, 552(gp) -- Store: [0x80003538]:0x0000001320000000




Last Coverpoint : ['rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000bf4]:UKADDW t6, t5, t4
	-[0x80000bf8]:sd t6, 560(gp)
Current Store : [0x80000bfc] : sd t5, 568(gp) -- Store: [0x80003548]:0x0000000E00004000




Last Coverpoint : ['rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000c20]:UKADDW t6, t5, t4
	-[0x80000c24]:sd t6, 576(gp)
Current Store : [0x80000c28] : sd t5, 584(gp) -- Store: [0x80003558]:0xFFFDFFFF00002000




Last Coverpoint : ['rs1_w1_val == 32', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000c50]:UKADDW t6, t5, t4
	-[0x80000c54]:sd t6, 592(gp)
Current Store : [0x80000c58] : sd t5, 600(gp) -- Store: [0x80003568]:0x0000002000000400




Last Coverpoint : ['rs1_w1_val == 3221225471', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000c78]:UKADDW t6, t5, t4
	-[0x80000c7c]:sd t6, 608(gp)
Current Store : [0x80000c80] : sd t5, 616(gp) -- Store: [0x80003578]:0xBFFFFFFF00000200




Last Coverpoint : ['rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000ca0]:UKADDW t6, t5, t4
	-[0x80000ca4]:sd t6, 624(gp)
Current Store : [0x80000ca8] : sd t5, 632(gp) -- Store: [0x80003588]:0xFFFFEFFF00000100




Last Coverpoint : ['rs2_w0_val == 4294966271', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000cc4]:UKADDW t6, t5, t4
	-[0x80000cc8]:sd t6, 640(gp)
Current Store : [0x80000ccc] : sd t5, 648(gp) -- Store: [0x80003598]:0x0000000B00000010




Last Coverpoint : ['rs2_w0_val == 536870912', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000cf0]:UKADDW t6, t5, t4
	-[0x80000cf4]:sd t6, 656(gp)
Current Store : [0x80000cf8] : sd t5, 664(gp) -- Store: [0x800035a8]:0xFFFDFFFF00000004




Last Coverpoint : ['rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000d14]:UKADDW t6, t5, t4
	-[0x80000d18]:sd t6, 672(gp)
Current Store : [0x80000d1c] : sd t5, 680(gp) -- Store: [0x800035b8]:0xFFFFFFFB00000001




Last Coverpoint : ['rs2_w0_val == 4294443007', 'rs1_w1_val == 2147483647', 'rs1_w0_val == 4294967295']
Last Code Sequence : 
	-[0x80000d3c]:UKADDW t6, t5, t4
	-[0x80000d40]:sd t6, 688(gp)
Current Store : [0x80000d44] : sd t5, 696(gp) -- Store: [0x800035c8]:0x7FFFFFFFFFFFFFFF




Last Coverpoint : ['rs2_w1_val == 32768', 'rs1_w0_val == 4294965247']
Last Code Sequence : 
	-[0x80000d68]:UKADDW t6, t5, t4
	-[0x80000d6c]:sd t6, 704(gp)
Current Store : [0x80000d70] : sd t5, 712(gp) -- Store: [0x800035d8]:0xFBFFFFFFFFFFF7FF




Last Coverpoint : ['rs2_w1_val == 16384', 'rs2_w0_val == 1']
Last Code Sequence : 
	-[0x80000d88]:UKADDW t6, t5, t4
	-[0x80000d8c]:sd t6, 720(gp)
Current Store : [0x80000d90] : sd t5, 728(gp) -- Store: [0x800035e8]:0xFFFFFDFF00000000




Last Coverpoint : ['rs2_w1_val == 8192', 'rs2_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000dac]:UKADDW t6, t5, t4
	-[0x80000db0]:sd t6, 736(gp)
Current Store : [0x80000db4] : sd t5, 744(gp) -- Store: [0x800035f8]:0xFFFFFFEFFFFFFBFF




Last Coverpoint : ['rs2_w1_val == 4096', 'rs2_w0_val == 524288']
Last Code Sequence : 
	-[0x80000ddc]:UKADDW t6, t5, t4
	-[0x80000de0]:sd t6, 752(gp)
Current Store : [0x80000de4] : sd t5, 760(gp) -- Store: [0x80003608]:0x00080000FFFFF7FF




Last Coverpoint : ['rs2_w1_val == 2048', 'rs1_w0_val == 4261412863']
Last Code Sequence : 
	-[0x80000e0c]:UKADDW t6, t5, t4
	-[0x80000e10]:sd t6, 768(gp)
Current Store : [0x80000e14] : sd t5, 776(gp) -- Store: [0x80003618]:0xF7FFFFFFFDFFFFFF




Last Coverpoint : ['rs2_w1_val == 1024', 'rs2_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000e34]:UKADDW t6, t5, t4
	-[0x80000e38]:sd t6, 784(gp)
Current Store : [0x80000e3c] : sd t5, 792(gp) -- Store: [0x80003628]:0xFFFFFBFF00000800




Last Coverpoint : ['rs2_w1_val == 512']
Last Code Sequence : 
	-[0x80000e58]:UKADDW t6, t5, t4
	-[0x80000e5c]:sd t6, 800(gp)
Current Store : [0x80000e60] : sd t5, 808(gp) -- Store: [0x80003638]:0xFFFFFFF70000000A




Last Coverpoint : ['rs2_w1_val == 256', 'rs2_w0_val == 16']
Last Code Sequence : 
	-[0x80000e80]:UKADDW t6, t5, t4
	-[0x80000e84]:sd t6, 816(gp)
Current Store : [0x80000e88] : sd t5, 824(gp) -- Store: [0x80003648]:0xFFFBFFFF00000080




Last Coverpoint : ['rs2_w1_val == 128']
Last Code Sequence : 
	-[0x80000ea0]:UKADDW t6, t5, t4
	-[0x80000ea4]:sd t6, 832(gp)
Current Store : [0x80000ea8] : sd t5, 840(gp) -- Store: [0x80003658]:0x0000000F80000000




Last Coverpoint : ['rs2_w1_val == 64', 'rs2_w0_val == 2048', 'rs1_w0_val == 4026531839']
Last Code Sequence : 
	-[0x80000ec8]:UKADDW t6, t5, t4
	-[0x80000ecc]:sd t6, 848(gp)
Current Store : [0x80000ed0] : sd t5, 856(gp) -- Store: [0x80003668]:0x00000040EFFFFFFF




Last Coverpoint : ['rs2_w1_val == 32', 'rs2_w0_val == 4227858431', 'rs1_w0_val == 4227858431']
Last Code Sequence : 
	-[0x80000ef0]:UKADDW t6, t5, t4
	-[0x80000ef4]:sd t6, 864(gp)
Current Store : [0x80000ef8] : sd t5, 872(gp) -- Store: [0x80003678]:0x00000005FBFFFFFF




Last Coverpoint : ['rs2_w1_val == 16']
Last Code Sequence : 
	-[0x80000f14]:UKADDW t6, t5, t4
	-[0x80000f18]:sd t6, 880(gp)
Current Store : [0x80000f1c] : sd t5, 888(gp) -- Store: [0x80003688]:0x0000000D00000004




Last Coverpoint : ['rs2_w1_val == 8', 'rs1_w1_val == 134217728', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000f3c]:UKADDW t6, t5, t4
	-[0x80000f40]:sd t6, 896(gp)
Current Store : [0x80000f44] : sd t5, 904(gp) -- Store: [0x80003698]:0x0800000000100000




Last Coverpoint : ['rs2_w1_val == 4', 'rs1_w1_val == 4294967167', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000f60]:UKADDW t6, t5, t4
	-[0x80000f64]:sd t6, 912(gp)
Current Store : [0x80000f68] : sd t5, 920(gp) -- Store: [0x800036a8]:0xFFFFFF7F00200000




Last Coverpoint : ['rs2_w1_val == 2', 'rs1_w0_val == 4294950911']
Last Code Sequence : 
	-[0x80000f84]:UKADDW t6, t5, t4
	-[0x80000f88]:sd t6, 928(gp)
Current Store : [0x80000f8c] : sd t5, 936(gp) -- Store: [0x800036b8]:0x0000000AFFFFBFFF




Last Coverpoint : ['rs2_w1_val == 1', 'rs2_w0_val == 4294967231', 'rs1_w1_val == 4294967263']
Last Code Sequence : 
	-[0x80000fa8]:UKADDW t6, t5, t4
	-[0x80000fac]:sd t6, 944(gp)
Current Store : [0x80000fb0] : sd t5, 952(gp) -- Store: [0x800036c8]:0xFFFFFFDF00000009




Last Coverpoint : ['rs2_w1_val == 4294967295', 'rs2_w0_val == 128', 'rs1_w1_val == 4293918719']
Last Code Sequence : 
	-[0x80000fd0]:UKADDW t6, t5, t4
	-[0x80000fd4]:sd t6, 960(gp)
Current Store : [0x80000fd8] : sd t5, 968(gp) -- Store: [0x800036d8]:0xFFEFFFFF00000007




Last Coverpoint : ['rs1_w1_val == 2863311530']
Last Code Sequence : 
	-[0x80000ff8]:UKADDW t6, t5, t4
	-[0x80000ffc]:sd t6, 976(gp)
Current Store : [0x80001000] : sd t5, 984(gp) -- Store: [0x800036e8]:0xAAAAAAAA00000012




Last Coverpoint : ['rs2_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80001024]:UKADDW t6, t5, t4
	-[0x80001028]:sd t6, 992(gp)
Current Store : [0x8000102c] : sd t5, 1000(gp) -- Store: [0x800036f8]:0x0000001000100000




Last Coverpoint : ['rs2_w0_val == 4026531839', 'rs1_w1_val == 131072']
Last Code Sequence : 
	-[0x80001048]:UKADDW t6, t5, t4
	-[0x8000104c]:sd t6, 1008(gp)
Current Store : [0x80001050] : sd t5, 1016(gp) -- Store: [0x80003708]:0x000200000000000D




Last Coverpoint : ['rs2_w0_val == 4160749567']
Last Code Sequence : 
	-[0x8000106c]:UKADDW t6, t5, t4
	-[0x80001070]:sd t6, 1024(gp)
Current Store : [0x80001074] : sd t5, 1032(gp) -- Store: [0x80003718]:0x0000001100000002




Last Coverpoint : ['rs2_w0_val == 4278190079', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x8000108c]:UKADDW t6, t5, t4
	-[0x80001090]:sd t6, 1040(gp)
Current Store : [0x80001094] : sd t5, 1048(gp) -- Store: [0x80003728]:0x0000000055555555




Last Coverpoint : ['rs2_w0_val == 4286578687']
Last Code Sequence : 
	-[0x800010bc]:UKADDW t6, t5, t4
	-[0x800010c0]:sd t6, 1056(gp)
Current Store : [0x800010c4] : sd t5, 1064(gp) -- Store: [0x80003738]:0x0000002000000010




Last Coverpoint : ['rs2_w0_val == 4294705151', 'rs1_w1_val == 256']
Last Code Sequence : 
	-[0x800010e4]:UKADDW t6, t5, t4
	-[0x800010e8]:sd t6, 1072(gp)
Current Store : [0x800010ec] : sd t5, 1080(gp) -- Store: [0x80003748]:0x000001000000000C




Last Coverpoint : ['rs2_w0_val == 4294836223', 'rs1_w1_val == 33554432', 'rs1_w0_val == 4290772991']
Last Code Sequence : 
	-[0x80001114]:UKADDW t6, t5, t4
	-[0x80001118]:sd t6, 1088(gp)
Current Store : [0x8000111c] : sd t5, 1096(gp) -- Store: [0x80003758]:0x02000000FFBFFFFF




Last Coverpoint : ['rs2_w0_val == 64', 'rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x80001140]:UKADDW t6, t5, t4
	-[0x80001144]:sd t6, 1104(gp)
Current Store : [0x80001148] : sd t5, 1112(gp) -- Store: [0x80003768]:0x00000400FFFBFFFF




Last Coverpoint : ['rs2_w0_val == 2']
Last Code Sequence : 
	-[0x80001168]:UKADDW t6, t5, t4
	-[0x8000116c]:sd t6, 1120(gp)
Current Store : [0x80001170] : sd t5, 1128(gp) -- Store: [0x80003778]:0x02000000FFFFFFDF




Last Coverpoint : ['rs2_w0_val == 4294967295']
Last Code Sequence : 
	-[0x8000118c]:UKADDW t6, t5, t4
	-[0x80001190]:sd t6, 1136(gp)
Current Store : [0x80001194] : sd t5, 1144(gp) -- Store: [0x80003788]:0x0000001000000200




Last Coverpoint : ['rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x800011b4]:UKADDW t6, t5, t4
	-[0x800011b8]:sd t6, 1152(gp)
Current Store : [0x800011bc] : sd t5, 1160(gp) -- Store: [0x80003798]:0x5555555500000008




Last Coverpoint : ['rs1_w1_val == 3758096383']
Last Code Sequence : 
	-[0x800011e0]:UKADDW t6, t5, t4
	-[0x800011e4]:sd t6, 1168(gp)
Current Store : [0x800011e8] : sd t5, 1176(gp) -- Store: [0x800037a8]:0xDFFFFFFFFFFBFFFF




Last Coverpoint : ['rs1_w1_val == 4261412863']
Last Code Sequence : 
	-[0x8000120c]:UKADDW t6, t5, t4
	-[0x80001210]:sd t6, 1184(gp)
Current Store : [0x80001214] : sd t5, 1192(gp) -- Store: [0x800037b8]:0xFDFFFFFFFFF7FFFF




Last Coverpoint : ['rs1_w1_val == 4286578687', 'rs1_w0_val == 4294967167']
Last Code Sequence : 
	-[0x80001230]:UKADDW t6, t5, t4
	-[0x80001234]:sd t6, 1200(gp)
Current Store : [0x80001238] : sd t5, 1208(gp) -- Store: [0x800037c8]:0xFF7FFFFFFFFFFF7F




Last Coverpoint : ['rs1_w1_val == 4292870143', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80001260]:UKADDW t6, t5, t4
	-[0x80001264]:sd t6, 1216(gp)
Current Store : [0x80001268] : sd t5, 1224(gp) -- Store: [0x800037d8]:0xFFDFFFFF00080000




Last Coverpoint : ['rs1_w1_val == 4294901759']
Last Code Sequence : 
	-[0x8000128c]:UKADDW t6, t5, t4
	-[0x80001290]:sd t6, 1232(gp)
Current Store : [0x80001294] : sd t5, 1240(gp) -- Store: [0x800037e8]:0xFFFEFFFF00000001




Last Coverpoint : ['rs2_w0_val == 4294967263', 'rs1_w1_val == 4294950911']
Last Code Sequence : 
	-[0x800012b8]:UKADDW t6, t5, t4
	-[0x800012bc]:sd t6, 1248(gp)
Current Store : [0x800012c0] : sd t5, 1256(gp) -- Store: [0x800037f8]:0xFFFFBFFF00004000




Last Coverpoint : ['rs2_w0_val == 1073741824', 'rs1_w1_val == 4294959103']
Last Code Sequence : 
	-[0x800012dc]:UKADDW t6, t5, t4
	-[0x800012e0]:sd t6, 1264(gp)
Current Store : [0x800012e4] : sd t5, 1272(gp) -- Store: [0x80003808]:0xFFFFDFFFFFFFFFBF




Last Coverpoint : ['rs1_w1_val == 4294965247']
Last Code Sequence : 
	-[0x8000130c]:UKADDW t6, t5, t4
	-[0x80001310]:sd t6, 1280(gp)
Current Store : [0x80001314] : sd t5, 1288(gp) -- Store: [0x80003818]:0xFFFFF7FF80000000




Last Coverpoint : ['rs1_w1_val == 4294967039', 'rs1_w0_val == 3758096383']
Last Code Sequence : 
	-[0x80001334]:UKADDW t6, t5, t4
	-[0x80001338]:sd t6, 1296(gp)
Current Store : [0x8000133c] : sd t5, 1304(gp) -- Store: [0x80003828]:0xFFFFFEFFDFFFFFFF




Last Coverpoint : ['rs1_w1_val == 4294967231', 'rs1_w0_val == 4294836223']
Last Code Sequence : 
	-[0x80001360]:UKADDW t6, t5, t4
	-[0x80001364]:sd t6, 1312(gp)
Current Store : [0x80001368] : sd t5, 1320(gp) -- Store: [0x80003838]:0xFFFFFFBFFFFDFFFF




Last Coverpoint : ['rs1_w1_val == 4294967294']
Last Code Sequence : 
	-[0x80001384]:UKADDW t6, t5, t4
	-[0x80001388]:sd t6, 1328(gp)
Current Store : [0x8000138c] : sd t5, 1336(gp) -- Store: [0x80003848]:0xFFFFFFFE04000000




Last Coverpoint : ['rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x800013ac]:UKADDW t6, t5, t4
	-[0x800013b0]:sd t6, 1344(gp)
Current Store : [0x800013b4] : sd t5, 1352(gp) -- Store: [0x80003858]:0x40000000FFFFFF7F




Last Coverpoint : ['rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x800013d8]:UKADDW t6, t5, t4
	-[0x800013dc]:sd t6, 1360(gp)
Current Store : [0x800013e0] : sd t5, 1368(gp) -- Store: [0x80003868]:0x200000000000000D




Last Coverpoint : ['rs1_w1_val == 8388608']
Last Code Sequence : 
	-[0x800013fc]:UKADDW t6, t5, t4
	-[0x80001400]:sd t6, 1376(gp)
Current Store : [0x80001404] : sd t5, 1384(gp) -- Store: [0x80003878]:0x0080000040000000




Last Coverpoint : ['rs1_w1_val == 1048576']
Last Code Sequence : 
	-[0x80001428]:UKADDW t6, t5, t4
	-[0x8000142c]:sd t6, 1392(gp)
Current Store : [0x80001430] : sd t5, 1400(gp) -- Store: [0x80003888]:0x0010000000080000




Last Coverpoint : ['rs1_w1_val == 262144']
Last Code Sequence : 
	-[0x80001450]:UKADDW t6, t5, t4
	-[0x80001454]:sd t6, 1408(gp)
Current Store : [0x80001458] : sd t5, 1416(gp) -- Store: [0x80003898]:0x00040000BFFFFFFF




Last Coverpoint : ['rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x80001478]:UKADDW t6, t5, t4
	-[0x8000147c]:sd t6, 1424(gp)
Current Store : [0x80001480] : sd t5, 1432(gp) -- Store: [0x800038a8]:0x0001000000004000




Last Coverpoint : ['rs1_w1_val == 2048']
Last Code Sequence : 
	-[0x8000149c]:UKADDW t6, t5, t4
	-[0x800014a0]:sd t6, 1440(gp)
Current Store : [0x800014a4] : sd t5, 1448(gp) -- Store: [0x800038b8]:0x000008000000000C




Last Coverpoint : ['rs1_w1_val == 512']
Last Code Sequence : 
	-[0x800014cc]:UKADDW t6, t5, t4
	-[0x800014d0]:sd t6, 1456(gp)
Current Store : [0x800014d4] : sd t5, 1464(gp) -- Store: [0x800038c8]:0x000002000000000B




Last Coverpoint : ['rs1_w1_val == 4']
Last Code Sequence : 
	-[0x800014f4]:UKADDW t6, t5, t4
	-[0x800014f8]:sd t6, 1472(gp)
Current Store : [0x800014fc] : sd t5, 1480(gp) -- Store: [0x800038d8]:0x0000000400000005




Last Coverpoint : ['rs1_w1_val == 2']
Last Code Sequence : 
	-[0x8000151c]:UKADDW t6, t5, t4
	-[0x80001520]:sd t6, 1488(gp)
Current Store : [0x80001524] : sd t5, 1496(gp) -- Store: [0x800038e8]:0x000000020000000A




Last Coverpoint : ['rs1_w1_val == 4294967295']
Last Code Sequence : 
	-[0x80001540]:UKADDW t6, t5, t4
	-[0x80001544]:sd t6, 1504(gp)
Current Store : [0x80001548] : sd t5, 1512(gp) -- Store: [0x800038f8]:0xFFFFFFFF00000020




Last Coverpoint : ['rs2_w0_val == 4096', 'rs1_w0_val == 2863311530']
Last Code Sequence : 
	-[0x80001574]:UKADDW t6, t5, t4
	-[0x80001578]:sd t6, 1520(gp)
Current Store : [0x8000157c] : sd t5, 1528(gp) -- Store: [0x80003908]:0xFBFFFFFFAAAAAAAA




Last Coverpoint : ['rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x800015a0]:UKADDW t6, t5, t4
	-[0x800015a4]:sd t6, 1536(gp)
Current Store : [0x800015a8] : sd t5, 1544(gp) -- Store: [0x80003918]:0xFFFBFFFF7FFFFFFF




Last Coverpoint : ['rs1_w0_val == 4160749567']
Last Code Sequence : 
	-[0x800015d4]:UKADDW t6, t5, t4
	-[0x800015d8]:sd t6, 1552(gp)
Current Store : [0x800015dc] : sd t5, 1560(gp) -- Store: [0x80003928]:0x00400000F7FFFFFF




Last Coverpoint : ['rs2_w0_val == 4294901759']
Last Code Sequence : 
	-[0x800015fc]:UKADDW t6, t5, t4
	-[0x80001600]:sd t6, 1568(gp)
Current Store : [0x80001604] : sd t5, 1576(gp) -- Store: [0x80003938]:0xFFFFFEFF00000009




Last Coverpoint : ['rs2_w0_val == 4294959103']
Last Code Sequence : 
	-[0x80001630]:UKADDW t6, t5, t4
	-[0x80001634]:sd t6, 1584(gp)
Current Store : [0x80001638] : sd t5, 1592(gp) -- Store: [0x80003948]:0x10000000FFFF7FFF




Last Coverpoint : ['rs2_w0_val == 4294967039']
Last Code Sequence : 
	-[0x80001658]:UKADDW t6, t5, t4
	-[0x8000165c]:sd t6, 1600(gp)
Current Store : [0x80001660] : sd t5, 1608(gp) -- Store: [0x80003958]:0xFFFFF7FFFBFFFFFF




Last Coverpoint : ['rs1_w0_val == 4294901759']
Last Code Sequence : 
	-[0x80001680]:UKADDW t6, t5, t4
	-[0x80001684]:sd t6, 1616(gp)
Current Store : [0x80001688] : sd t5, 1624(gp) -- Store: [0x80003968]:0xFFFFDFFFFFFEFFFF




Last Coverpoint : ['rs2_w0_val == 4294967167']
Last Code Sequence : 
	-[0x800016a4]:UKADDW t6, t5, t4
	-[0x800016a8]:sd t6, 1632(gp)
Current Store : [0x800016ac] : sd t5, 1640(gp) -- Store: [0x80003978]:0x00000005FFFFFFDF




Last Coverpoint : ['rs1_w0_val == 4294959103']
Last Code Sequence : 
	-[0x800016d4]:UKADDW t6, t5, t4
	-[0x800016d8]:sd t6, 1648(gp)
Current Store : [0x800016dc] : sd t5, 1656(gp) -- Store: [0x80003988]:0x00000400FFFFDFFF




Last Coverpoint : ['rs2_w0_val == 4294967279']
Last Code Sequence : 
	-[0x80001700]:UKADDW t6, t5, t4
	-[0x80001704]:sd t6, 1664(gp)
Current Store : [0x80001708] : sd t5, 1672(gp) -- Store: [0x80003998]:0xFF7FFFFF00000002




Last Coverpoint : ['rs1_w0_val == 4294963199']
Last Code Sequence : 
	-[0x8000172c]:UKADDW t6, t5, t4
	-[0x80001730]:sd t6, 1680(gp)
Current Store : [0x80001734] : sd t5, 1688(gp) -- Store: [0x800039a8]:0xFFFFBFFFFFFFEFFF




Last Coverpoint : ['rs2_w0_val == 4294967293']
Last Code Sequence : 
	-[0x80001754]:UKADDW t6, t5, t4
	-[0x80001758]:sd t6, 1696(gp)
Current Store : [0x8000175c] : sd t5, 1704(gp) -- Store: [0x800039b8]:0x00004000FFFFFFFF




Last Coverpoint : ['rs1_w0_val == 4294966783']
Last Code Sequence : 
	-[0x8000177c]:UKADDW t6, t5, t4
	-[0x80001780]:sd t6, 1712(gp)
Current Store : [0x80001784] : sd t5, 1720(gp) -- Store: [0x800039c8]:0x00000001FFFFFDFF




Last Coverpoint : ['rs1_w0_val == 4294967039']
Last Code Sequence : 
	-[0x800017a8]:UKADDW t6, t5, t4
	-[0x800017ac]:sd t6, 1728(gp)
Current Store : [0x800017b0] : sd t5, 1736(gp) -- Store: [0x800039d8]:0x55555555FFFFFEFF




Last Coverpoint : ['rs2_w0_val == 268435456']
Last Code Sequence : 
	-[0x800017d0]:UKADDW t6, t5, t4
	-[0x800017d4]:sd t6, 1744(gp)
Current Store : [0x800017d8] : sd t5, 1752(gp) -- Store: [0x800039e8]:0x7FFFFFFFFFFFF7FF




Last Coverpoint : ['rs1_w0_val == 4294967279']
Last Code Sequence : 
	-[0x800017f4]:UKADDW t6, t5, t4
	-[0x800017f8]:sd t6, 1760(gp)
Current Store : [0x800017fc] : sd t5, 1768(gp) -- Store: [0x800039f8]:0x00000009FFFFFFEF




Last Coverpoint : ['rs2_w0_val == 134217728']
Last Code Sequence : 
	-[0x8000180c]:UKADDW t6, t5, t4
	-[0x80001810]:sd t6, 1776(gp)
Current Store : [0x80001814] : sd t5, 1784(gp) -- Store: [0x80003a08]:0x0000000000000004




Last Coverpoint : ['rs1_w0_val == 4294967291']
Last Code Sequence : 
	-[0x80001830]:UKADDW t6, t5, t4
	-[0x80001834]:sd t6, 1792(gp)
Current Store : [0x80001838] : sd t5, 1800(gp) -- Store: [0x80003a18]:0xFFFFFFEFFFFFFFFB




Last Coverpoint : ['rs1_w0_val == 4294967293']
Last Code Sequence : 
	-[0x8000185c]:UKADDW t6, t5, t4
	-[0x80001860]:sd t6, 1808(gp)
Current Store : [0x80001864] : sd t5, 1816(gp) -- Store: [0x80003a28]:0xFBFFFFFFFFFFFFFD




Last Coverpoint : ['rs2_w0_val == 16384']
Last Code Sequence : 
	-[0x80001880]:UKADDW t6, t5, t4
	-[0x80001884]:sd t6, 1824(gp)
Current Store : [0x80001888] : sd t5, 1832(gp) -- Store: [0x80003a38]:0xFFFFFF7F00000400




Last Coverpoint : ['rs1_w0_val == 4294967294']
Last Code Sequence : 
	-[0x800018a8]:UKADDW t6, t5, t4
	-[0x800018ac]:sd t6, 1840(gp)
Current Store : [0x800018b0] : sd t5, 1848(gp) -- Store: [0x80003a48]:0x00000100FFFFFFFE




Last Coverpoint : ['rs2_w0_val == 8388608']
Last Code Sequence : 
	-[0x800018d0]:UKADDW t6, t5, t4
	-[0x800018d4]:sd t6, 1856(gp)
Current Store : [0x800018d8] : sd t5, 1864(gp) -- Store: [0x80003a58]:0xFFBFFFFFFFFFFFFB




Last Coverpoint : ['rs2_w0_val == 4194304']
Last Code Sequence : 
	-[0x800018f4]:UKADDW t6, t5, t4
	-[0x800018f8]:sd t6, 1872(gp)
Current Store : [0x800018fc] : sd t5, 1880(gp) -- Store: [0x80003a68]:0x00000100FFFFFFBF




Last Coverpoint : ['rs2_w0_val == 1048576']
Last Code Sequence : 
	-[0x80001918]:UKADDW t6, t5, t4
	-[0x8000191c]:sd t6, 1888(gp)
Current Store : [0x80001920] : sd t5, 1896(gp) -- Store: [0x80003a78]:0x0000000600000008




Last Coverpoint : ['rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80001940]:UKADDW t6, t5, t4
	-[0x80001944]:sd t6, 1904(gp)
Current Store : [0x80001948] : sd t5, 1912(gp) -- Store: [0x80003a88]:0x0000001102000000




Last Coverpoint : ['rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80001964]:UKADDW t6, t5, t4
	-[0x80001968]:sd t6, 1920(gp)
Current Store : [0x8000196c] : sd t5, 1928(gp) -- Store: [0x80003a98]:0xFFEFFFFF01000000




Last Coverpoint : ['rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80001988]:UKADDW t6, t5, t4
	-[0x8000198c]:sd t6, 1936(gp)
Current Store : [0x80001990] : sd t5, 1944(gp) -- Store: [0x80003aa8]:0x0000000600400000




Last Coverpoint : ['rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800019a8]:UKADDW t6, t5, t4
	-[0x800019ac]:sd t6, 1952(gp)
Current Store : [0x800019b0] : sd t5, 1960(gp) -- Store: [0x80003ab8]:0x0000000010000000




Last Coverpoint : ['rs1_w1_val == 4278190079']
Last Code Sequence : 
	-[0x800019cc]:UKADDW t6, t5, t4
	-[0x800019d0]:sd t6, 1968(gp)
Current Store : [0x800019d4] : sd t5, 1976(gp) -- Store: [0x80003ac8]:0xFEFFFFFF00000000




Last Coverpoint : ['opcode : ukaddw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 4294705151', 'rs2_w0_val == 3221225471', 'rs1_w1_val == 4294836223', 'rs1_w0_val == 4293918719']
Last Code Sequence : 
	-[0x800019f8]:UKADDW t6, t5, t4
	-[0x800019fc]:sd t6, 1984(gp)
Current Store : [0x80001a00] : sd t5, 1992(gp) -- Store: [0x80003ad8]:0xFFFDFFFFFFEFFFFF




Last Coverpoint : ['rs2_w1_val == 4294967167']
Last Code Sequence : 
	-[0x80001a1c]:UKADDW t6, t5, t4
	-[0x80001a20]:sd t6, 2000(gp)
Current Store : [0x80001a24] : sd t5, 2008(gp) -- Store: [0x80003ae8]:0x0008000000000005





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

|s.no|            signature             |                                                                                                                                          coverpoints                                                                                                                                           |                                 code                                 |
|---:|----------------------------------|------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x000000000000000A|- opcode : ukaddw<br> - rs1 : x25<br> - rs2 : x25<br> - rd : x12<br> - rs1 == rs2 != rd<br> - rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == 67108864<br> - rs1_w1_val == 67108864<br> |[0x800003bc]:UKADDW a2, s9, s9<br> [0x800003c0]:sd a2, 0(a4)<br>      |
|   2|[0x80003220]<br>0x000000000000001C|- rs1 : x24<br> - rs2 : x24<br> - rd : x24<br> - rs1 == rs2 == rd<br>                                                                                                                                                                                                                           |[0x800003e4]:UKADDW s8, s8, s8<br> [0x800003e8]:sd s8, 16(a4)<br>     |
|   3|[0x80003230]<br>0x0000000000000022|- rs1 : x23<br> - rs2 : x6<br> - rd : x10<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs2_w1_val == 3221225471<br>                                                                                                 |[0x8000040c]:UKADDW a0, s7, t1<br> [0x80000410]:sd a0, 32(a4)<br>     |
|   4|[0x80003240]<br>0xFFFFFFFFFFF0007F|- rs1 : x5<br> - rs2 : x1<br> - rd : x5<br> - rs1 == rd != rs2<br> - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == 2863311530<br> - rs2_w0_val == 4293918719<br> - rs1_w0_val == 128<br>                                                                   |[0x8000043c]:UKADDW t0, t0, ra<br> [0x80000440]:sd t0, 48(a4)<br>     |
|   5|[0x80003250]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x31<br> - rs2 : x17<br> - rd : x17<br> - rs2 == rd != rs1<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == 1431655765<br> - rs1_w0_val == 3221225471<br>                                                                                                                              |[0x80000478]:UKADDW a7, t6, a7<br> [0x8000047c]:sd a7, 64(a4)<br>     |
|   6|[0x80003260]<br>0xFFFFFFFFFFFF8007|- rs1 : x27<br> - rs2 : x20<br> - rd : x4<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == 8<br> - rs1_w0_val == 4294934527<br>                                                                                                                                                               |[0x800004a4]:UKADDW tp, s11, s4<br> [0x800004a8]:sd tp, 80(a4)<br>    |
|   7|[0x80003270]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x13<br> - rs2 : x3<br> - rd : x20<br> - rs2_w1_val == 3758096383<br> - rs2_w0_val == 4294967287<br> - rs1_w0_val == 4096<br>                                                                                                                                                            |[0x800004c8]:UKADDW s4, a3, gp<br> [0x800004cc]:sd s4, 96(a4)<br>     |
|   8|[0x80003280]<br>0xFFFFFFFFFF1FFFFF|- rs1 : x20<br> - rs2 : x11<br> - rd : x26<br> - rs2_w1_val == 4026531839<br> - rs2_w0_val == 2097152<br> - rs1_w1_val == 4294967291<br> - rs1_w0_val == 4278190079<br>                                                                                                                         |[0x800004f0]:UKADDW s10, s4, a1<br> [0x800004f4]:sd s10, 112(a4)<br>  |
|   9|[0x80003290]<br>0x0000000000010040|- rs1 : x4<br> - rs2 : x16<br> - rd : x22<br> - rs2_w1_val == 4160749567<br> - rs2_w0_val == 65536<br> - rs1_w1_val == 4096<br> - rs1_w0_val == 64<br>                                                                                                                                          |[0x8000051c]:UKADDW s6, tp, a6<br> [0x80000520]:sd s6, 128(a4)<br>    |
|  10|[0x800032a0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x26<br> - rs2 : x8<br> - rd : x7<br> - rs2_w1_val == 4227858431<br> - rs2_w0_val == 67108864<br> - rs1_w1_val == 128<br> - rs1_w0_val == 4294967287<br>                                                                                                                                 |[0x80000544]:UKADDW t2, s10, fp<br> [0x80000548]:sd t2, 144(a4)<br>   |
|  11|[0x800032b0]<br>0xFFFFFFFFFFE00007|- rs1 : x28<br> - rs2 : x31<br> - rd : x18<br> - rs2_w1_val == 4261412863<br> - rs1_w0_val == 4292870143<br>                                                                                                                                                                                    |[0x80000570]:UKADDW s2, t3, t6<br> [0x80000574]:sd s2, 160(a4)<br>    |
|  12|[0x800032c0]<br>0xFFFFFFFF80008000|- rs1 : x11<br> - rs2 : x27<br> - rd : x29<br> - rs2_w1_val == 4278190079<br> - rs2_w0_val == 32768<br> - rs1_w1_val == 8<br> - rs1_w0_val == 2147483648<br>                                                                                                                                    |[0x80000598]:UKADDW t4, a1, s11<br> [0x8000059c]:sd t4, 176(a4)<br>   |
|  13|[0x800032d0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x29<br> - rs2 : x26<br> - rd : x3<br> - rs2_w1_val == 4286578687<br> - rs2_w0_val == 4294967291<br> - rs1_w1_val == 4294967293<br>                                                                                                                                                      |[0x800005bc]:UKADDW gp, t4, s10<br> [0x800005c0]:sd gp, 192(a4)<br>   |
|  14|[0x800032e0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x3<br> - rs2 : x9<br> - rd : x8<br> - rs2_w1_val == 4290772991<br> - rs2_w0_val == 4294934527<br> - rs1_w1_val == 4294967279<br> - rs1_w0_val == 4294967263<br>                                                                                                                         |[0x800005e8]:UKADDW fp, gp, s1<br> [0x800005ec]:sd fp, 208(a4)<br>    |
|  15|[0x800032f0]<br>0xFFFFFFFFFFFFF007|- rs1 : x2<br> - rs2 : x5<br> - rd : x1<br> - rs2_w1_val == 4292870143<br> - rs2_w0_val == 4294963199<br> - rs1_w0_val == 8<br>                                                                                                                                                                 |[0x80000614]:UKADDW ra, sp, t0<br> [0x80000618]:sd ra, 224(a4)<br>    |
|  16|[0x80003300]<br>0x000000000000A000|- rs1 : x9<br> - rs2 : x13<br> - rd : x30<br> - rs2_w1_val == 4293918719<br> - rs2_w0_val == 8192<br> - rs1_w1_val == 2097152<br> - rs1_w0_val == 32768<br>                                                                                                                                     |[0x80000644]:UKADDW t5, s1, a3<br> [0x80000648]:sd t5, 240(a4)<br>    |
|  17|[0x80003310]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x15<br> - rs2 : x23<br> - rd : x28<br> - rs2_w1_val == 4294443007<br> - rs1_w1_val == 4194304<br> - rs1_w0_val == 4294967231<br>                                                                                                                                                        |[0x8000067c]:UKADDW t3, a5, s7<br> [0x80000680]:sd t3, 0(gp)<br>      |
|  18|[0x80003320]<br>0x0000000000000000|- rs1 : x12<br> - rs2 : x30<br> - rd : x0<br> - rs2_w1_val == 4294705151<br> - rs2_w0_val == 3221225471<br> - rs1_w1_val == 4294836223<br> - rs1_w0_val == 4293918719<br>                                                                                                                       |[0x800006a8]:UKADDW zero, a2, t5<br> [0x800006ac]:sd zero, 16(gp)<br> |
|  19|[0x80003330]<br>0x000000000000000C|- rs1 : x18<br> - rs2 : x7<br> - rd : x31<br> - rs2_w1_val == 4294836223<br> - rs2_w0_val == 4<br> - rs1_w1_val == 4294705151<br>                                                                                                                                                               |[0x800006d4]:UKADDW t6, s2, t2<br> [0x800006d8]:sd t6, 32(gp)<br>     |
|  20|[0x80003340]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x10<br> - rs2 : x28<br> - rd : x16<br> - rs2_w1_val == 4294901759<br> - rs2_w0_val == 4294965247<br> - rs1_w1_val == 4227858431<br> - rs1_w0_val == 4294966271<br>                                                                                                                      |[0x80000700]:UKADDW a6, a0, t3<br> [0x80000704]:sd a6, 48(gp)<br>     |
|  21|[0x80003350]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x22<br> - rs2 : x4<br> - rd : x27<br> - rs2_w1_val == 4294934527<br> - rs2_w0_val == 2863311530<br> - rs1_w1_val == 2147483648<br> - rs1_w0_val == 4294705151<br>                                                                                                                       |[0x8000073c]:UKADDW s11, s6, tp<br> [0x80000740]:sd s11, 64(gp)<br>   |
|  22|[0x80003360]<br>0x000000000000040B|- rs1 : x21<br> - rs2 : x19<br> - rd : x14<br> - rs2_w1_val == 4294950911<br> - rs2_w0_val == 1024<br> - rs1_w1_val == 268435456<br>                                                                                                                                                            |[0x80000764]:UKADDW a4, s5, s3<br> [0x80000768]:sd a4, 80(gp)<br>     |
|  23|[0x80003370]<br>0x0000000055565555|- rs1 : x14<br> - rs2 : x10<br> - rd : x15<br> - rs2_w1_val == 4294959103<br> - rs1_w1_val == 1<br> - rs1_w0_val == 65536<br>                                                                                                                                                                   |[0x80000794]:UKADDW a5, a4, a0<br> [0x80000798]:sd a5, 96(gp)<br>     |
|  24|[0x80003380]<br>0xFFFFFFFF88000000|- rs1 : x17<br> - rs2 : x22<br> - rd : x6<br> - rs2_w1_val == 4294963199<br> - rs2_w0_val == 2147483648<br> - rs1_w1_val == 8192<br> - rs1_w0_val == 134217728<br>                                                                                                                              |[0x800007b8]:UKADDW t1, a7, s6<br> [0x800007bc]:sd t1, 112(gp)<br>    |
|  25|[0x80003390]<br>0xFFFFFFFFFDFFFFFF|- rs1 : x0<br> - rs2 : x12<br> - rd : x9<br> - rs1_w0_val == 0<br> - rs2_w1_val == 4294965247<br> - rs2_w0_val == 4261412863<br> - rs1_w1_val == 0<br>                                                                                                                                          |[0x800007dc]:UKADDW s1, zero, a2<br> [0x800007e0]:sd s1, 128(gp)<br>  |
|  26|[0x800033a0]<br>0xFFFFFFFFFFF0000A|- rs1 : x7<br> - rs2 : x29<br> - rd : x19<br> - rs2_w1_val == 4294966271<br>                                                                                                                                                                                                                    |[0x80000804]:UKADDW s3, t2, t4<br> [0x80000808]:sd s3, 144(gp)<br>    |
|  27|[0x800033b0]<br>0x0000000008010000|- rs1 : x19<br> - rs2 : x18<br> - rd : x2<br> - rs2_w1_val == 4294966783<br> - rs1_w1_val == 16<br>                                                                                                                                                                                             |[0x80000824]:UKADDW sp, s3, s2<br> [0x80000828]:sd sp, 160(gp)<br>    |
|  28|[0x800033c0]<br>0x0000000000000033|- rs1 : x30<br> - rs2 : x2<br> - rd : x25<br> - rs2_w1_val == 4294967039<br> - rs2_w0_val == 32<br>                                                                                                                                                                                             |[0x80000840]:UKADDW s9, t5, sp<br> [0x80000844]:sd s9, 176(gp)<br>    |
|  29|[0x800033d0]<br>0x0000000000000005|- rs1 : x16<br> - rs2 : x0<br> - rd : x21<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == 524288<br>                                                                                                                                                                            |[0x80000864]:UKADDW s5, a6, zero<br> [0x80000868]:sd s5, 192(gp)<br>  |
|  30|[0x800033e0]<br>0xFFFFFFFFFFFFFFFF|- rs1 : x1<br> - rs2 : x14<br> - rd : x11<br> - rs2_w1_val == 4294967231<br> - rs2_w0_val == 4290772991<br> - rs1_w0_val == 4294443007<br>                                                                                                                                                      |[0x80000890]:UKADDW a1, ra, a4<br> [0x80000894]:sd a1, 208(gp)<br>    |
|  31|[0x800033f0]<br>0xFFFFFFFFFF800009|- rs1 : x6<br> - rs2 : x15<br> - rd : x13<br> - rs2_w1_val == 4294967263<br> - rs1_w0_val == 4286578687<br>                                                                                                                                                                                     |[0x800008b8]:UKADDW a3, t1, a5<br> [0x800008bc]:sd a3, 224(gp)<br>    |
|  32|[0x80003400]<br>0x000000000000010B|- rs1 : x8<br> - rs2 : x21<br> - rd : x23<br> - rs2_w1_val == 4294967279<br> - rs2_w0_val == 256<br> - rs1_w1_val == 4294966783<br>                                                                                                                                                             |[0x800008dc]:UKADDW s7, fp, s5<br> [0x800008e0]:sd s7, 240(gp)<br>    |
|  33|[0x80003410]<br>0x000000000001000E|- rs2_w1_val == 4294967287<br>                                                                                                                                                                                                                                                                  |[0x80000900]:UKADDW t6, t5, t4<br> [0x80000904]:sd t6, 256(gp)<br>    |
|  34|[0x80003420]<br>0x0000000008000200|- rs2_w1_val == 4294967291<br> - rs2_w0_val == 512<br> - rs1_w1_val == 4294963199<br>                                                                                                                                                                                                           |[0x80000924]:UKADDW t6, t5, t4<br> [0x80000928]:sd t6, 272(gp)<br>    |
|  35|[0x80003430]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 4294967293<br> - rs2_w0_val == 3758096383<br> - rs1_w1_val == 4294934527<br>                                                                                                                                                                                                    |[0x8000094c]:UKADDW t6, t5, t4<br> [0x80000950]:sd t6, 288(gp)<br>    |
|  36|[0x80003440]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 4294967294<br> - rs2_w0_val == 4294967294<br> - rs1_w1_val == 16384<br>                                                                                                                                                                                                         |[0x80000974]:UKADDW t6, t5, t4<br> [0x80000978]:sd t6, 304(gp)<br>    |
|  37|[0x80003450]<br>0x0000000040040000|- rs2_w1_val == 2147483648<br> - rs2_w0_val == 262144<br> - rs1_w0_val == 1073741824<br>                                                                                                                                                                                                        |[0x8000099c]:UKADDW t6, t5, t4<br> [0x800009a0]:sd t6, 320(gp)<br>    |
|  38|[0x80003460]<br>0xFFFFFFFFFFFFC001|- rs2_w1_val == 1073741824<br> - rs2_w0_val == 4294950911<br> - rs1_w1_val == 4294443007<br> - rs1_w0_val == 2<br>                                                                                                                                                                              |[0x800009d0]:UKADDW t6, t5, t4<br> [0x800009d4]:sd t6, 336(gp)<br>    |
|  39|[0x80003470]<br>0xFFFFFFFFFFE00007|- rs2_w1_val == 536870912<br> - rs2_w0_val == 4292870143<br> - rs1_w1_val == 32768<br>                                                                                                                                                                                                          |[0x800009fc]:UKADDW t6, t5, t4<br> [0x80000a00]:sd t6, 352(gp)<br>    |
|  40|[0x80003480]<br>0x0000000000800003|- rs2_w1_val == 268435456<br> - rs1_w0_val == 8388608<br>                                                                                                                                                                                                                                       |[0x80000a20]:UKADDW t6, t5, t4<br> [0x80000a24]:sd t6, 368(gp)<br>    |
|  41|[0x80003490]<br>0x0000000040000400|- rs2_w1_val == 134217728<br> - rs1_w1_val == 64<br>                                                                                                                                                                                                                                            |[0x80000a40]:UKADDW t6, t5, t4<br> [0x80000a44]:sd t6, 384(gp)<br>    |
|  42|[0x800034a0]<br>0xFFFFFFFFFFE0000E|- rs2_w1_val == 33554432<br> - rs1_w1_val == 4294967287<br>                                                                                                                                                                                                                                     |[0x80000a68]:UKADDW t6, t5, t4<br> [0x80000a6c]:sd t6, 400(gp)<br>    |
|  43|[0x800034b0]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 16777216<br> - rs1_w1_val == 4026531839<br> - rs1_w0_val == 32<br>                                                                                                                                                                                                              |[0x80000a94]:UKADDW t6, t5, t4<br> [0x80000a98]:sd t6, 416(gp)<br>    |
|  44|[0x800034c0]<br>0xFFFFFFFFFFC007FF|- rs2_w1_val == 8388608<br> - rs1_w0_val == 2048<br>                                                                                                                                                                                                                                            |[0x80000ac4]:UKADDW t6, t5, t4<br> [0x80000ac8]:sd t6, 432(gp)<br>    |
|  45|[0x800034d0]<br>0x0000000000040000|- rs2_w1_val == 4194304<br> - rs1_w1_val == 4294966271<br> - rs1_w0_val == 262144<br>                                                                                                                                                                                                           |[0x80000ae4]:UKADDW t6, t5, t4<br> [0x80000ae8]:sd t6, 448(gp)<br>    |
|  46|[0x800034e0]<br>0xFFFFFFFFFE000006|- rs2_w1_val == 2097152<br> - rs1_w1_val == 16777216<br>                                                                                                                                                                                                                                        |[0x80000b0c]:UKADDW t6, t5, t4<br> [0x80000b10]:sd t6, 464(gp)<br>    |
|  47|[0x800034f0]<br>0x0000000000028000|- rs2_w1_val == 1048576<br> - rs1_w0_val == 131072<br>                                                                                                                                                                                                                                          |[0x80000b34]:UKADDW t6, t5, t4<br> [0x80000b38]:sd t6, 480(gp)<br>    |
|  48|[0x80003500]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 524288<br> - rs2_w0_val == 131072<br> - rs1_w1_val == 4160749567<br>                                                                                                                                                                                                            |[0x80000b5c]:UKADDW t6, t5, t4<br> [0x80000b60]:sd t6, 496(gp)<br>    |
|  49|[0x80003510]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 262144<br> - rs2_w0_val == 4294966783<br> - rs1_w0_val == 67108864<br>                                                                                                                                                                                                          |[0x80000b84]:UKADDW t6, t5, t4<br> [0x80000b88]:sd t6, 512(gp)<br>    |
|  50|[0x80003520]<br>0x000000000000001A|- rs2_w1_val == 131072<br> - rs1_w1_val == 4290772991<br>                                                                                                                                                                                                                                       |[0x80000bac]:UKADDW t6, t5, t4<br> [0x80000bb0]:sd t6, 528(gp)<br>    |
|  51|[0x80003530]<br>0x0000000020000011|- rs2_w1_val == 65536<br> - rs1_w0_val == 536870912<br>                                                                                                                                                                                                                                         |[0x80000bcc]:UKADDW t6, t5, t4<br> [0x80000bd0]:sd t6, 544(gp)<br>    |
|  52|[0x80003540]<br>0x0000000000006000|- rs1_w0_val == 16384<br>                                                                                                                                                                                                                                                                       |[0x80000bf4]:UKADDW t6, t5, t4<br> [0x80000bf8]:sd t6, 560(gp)<br>    |
|  53|[0x80003550]<br>0x0000000000002006|- rs1_w0_val == 8192<br>                                                                                                                                                                                                                                                                        |[0x80000c20]:UKADDW t6, t5, t4<br> [0x80000c24]:sd t6, 576(gp)<br>    |
|  54|[0x80003560]<br>0xFFFFFFFFFE0003FF|- rs1_w1_val == 32<br> - rs1_w0_val == 1024<br>                                                                                                                                                                                                                                                 |[0x80000c50]:UKADDW t6, t5, t4<br> [0x80000c54]:sd t6, 592(gp)<br>    |
|  55|[0x80003570]<br>0x0000000000000209|- rs1_w1_val == 3221225471<br> - rs1_w0_val == 512<br>                                                                                                                                                                                                                                          |[0x80000c78]:UKADDW t6, t5, t4<br> [0x80000c7c]:sd t6, 608(gp)<br>    |
|  56|[0x80003580]<br>0x0000000000200100|- rs1_w0_val == 256<br>                                                                                                                                                                                                                                                                         |[0x80000ca0]:UKADDW t6, t5, t4<br> [0x80000ca4]:sd t6, 624(gp)<br>    |
|  57|[0x80003590]<br>0xFFFFFFFFFFFFFC0F|- rs2_w0_val == 4294966271<br> - rs1_w0_val == 16<br>                                                                                                                                                                                                                                           |[0x80000cc4]:UKADDW t6, t5, t4<br> [0x80000cc8]:sd t6, 640(gp)<br>    |
|  58|[0x800035a0]<br>0x0000000020000004|- rs2_w0_val == 536870912<br> - rs1_w0_val == 4<br>                                                                                                                                                                                                                                             |[0x80000cf0]:UKADDW t6, t5, t4<br> [0x80000cf4]:sd t6, 656(gp)<br>    |
|  59|[0x800035b0]<br>0x0000000000000001|- rs1_w0_val == 1<br>                                                                                                                                                                                                                                                                           |[0x80000d14]:UKADDW t6, t5, t4<br> [0x80000d18]:sd t6, 672(gp)<br>    |
|  60|[0x800035c0]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4294443007<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == 4294967295<br>                                                                                                                                                                                                    |[0x80000d3c]:UKADDW t6, t5, t4<br> [0x80000d40]:sd t6, 688(gp)<br>    |
|  61|[0x800035d0]<br>0xFFFFFFFFFFFFF808|- rs2_w1_val == 32768<br> - rs1_w0_val == 4294965247<br>                                                                                                                                                                                                                                        |[0x80000d68]:UKADDW t6, t5, t4<br> [0x80000d6c]:sd t6, 704(gp)<br>    |
|  62|[0x800035e0]<br>0x0000000000000001|- rs2_w1_val == 16384<br> - rs2_w0_val == 1<br>                                                                                                                                                                                                                                                 |[0x80000d88]:UKADDW t6, t5, t4<br> [0x80000d8c]:sd t6, 720(gp)<br>    |
|  63|[0x800035f0]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 8192<br> - rs2_w0_val == 16777216<br>                                                                                                                                                                                                                                           |[0x80000dac]:UKADDW t6, t5, t4<br> [0x80000db0]:sd t6, 736(gp)<br>    |
|  64|[0x80003600]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 4096<br> - rs2_w0_val == 524288<br>                                                                                                                                                                                                                                             |[0x80000ddc]:UKADDW t6, t5, t4<br> [0x80000de0]:sd t6, 752(gp)<br>    |
|  65|[0x80003610]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 2048<br> - rs1_w0_val == 4261412863<br>                                                                                                                                                                                                                                         |[0x80000e0c]:UKADDW t6, t5, t4<br> [0x80000e10]:sd t6, 768(gp)<br>    |
|  66|[0x80003620]<br>0x0000000002000800|- rs2_w1_val == 1024<br> - rs2_w0_val == 33554432<br>                                                                                                                                                                                                                                           |[0x80000e34]:UKADDW t6, t5, t4<br> [0x80000e38]:sd t6, 784(gp)<br>    |
|  67|[0x80003630]<br>0x0000000000000017|- rs2_w1_val == 512<br>                                                                                                                                                                                                                                                                         |[0x80000e58]:UKADDW t6, t5, t4<br> [0x80000e5c]:sd t6, 800(gp)<br>    |
|  68|[0x80003640]<br>0x0000000000000090|- rs2_w1_val == 256<br> - rs2_w0_val == 16<br>                                                                                                                                                                                                                                                  |[0x80000e80]:UKADDW t6, t5, t4<br> [0x80000e84]:sd t6, 816(gp)<br>    |
|  69|[0x80003650]<br>0xFFFFFFFF80000009|- rs2_w1_val == 128<br>                                                                                                                                                                                                                                                                         |[0x80000ea0]:UKADDW t6, t5, t4<br> [0x80000ea4]:sd t6, 832(gp)<br>    |
|  70|[0x80003660]<br>0xFFFFFFFFF00007FF|- rs2_w1_val == 64<br> - rs2_w0_val == 2048<br> - rs1_w0_val == 4026531839<br>                                                                                                                                                                                                                  |[0x80000ec8]:UKADDW t6, t5, t4<br> [0x80000ecc]:sd t6, 848(gp)<br>    |
|  71|[0x80003670]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 32<br> - rs2_w0_val == 4227858431<br> - rs1_w0_val == 4227858431<br>                                                                                                                                                                                                            |[0x80000ef0]:UKADDW t6, t5, t4<br> [0x80000ef4]:sd t6, 864(gp)<br>    |
|  72|[0x80003680]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 16<br>                                                                                                                                                                                                                                                                          |[0x80000f14]:UKADDW t6, t5, t4<br> [0x80000f18]:sd t6, 880(gp)<br>    |
|  73|[0x80003690]<br>0x0000000000180000|- rs2_w1_val == 8<br> - rs1_w1_val == 134217728<br> - rs1_w0_val == 1048576<br>                                                                                                                                                                                                                 |[0x80000f3c]:UKADDW t6, t5, t4<br> [0x80000f40]:sd t6, 896(gp)<br>    |
|  74|[0x800036a0]<br>0x0000000000200001|- rs2_w1_val == 4<br> - rs1_w1_val == 4294967167<br> - rs1_w0_val == 2097152<br>                                                                                                                                                                                                                |[0x80000f60]:UKADDW t6, t5, t4<br> [0x80000f64]:sd t6, 912(gp)<br>    |
|  75|[0x800036b0]<br>0xFFFFFFFFFFFFFFFF|- rs2_w1_val == 2<br> - rs1_w0_val == 4294950911<br>                                                                                                                                                                                                                                            |[0x80000f84]:UKADDW t6, t5, t4<br> [0x80000f88]:sd t6, 928(gp)<br>    |
|  76|[0x800036c0]<br>0xFFFFFFFFFFFFFFC8|- rs2_w1_val == 1<br> - rs2_w0_val == 4294967231<br> - rs1_w1_val == 4294967263<br>                                                                                                                                                                                                             |[0x80000fa8]:UKADDW t6, t5, t4<br> [0x80000fac]:sd t6, 944(gp)<br>    |
|  77|[0x800036d0]<br>0x0000000000000087|- rs2_w1_val == 4294967295<br> - rs2_w0_val == 128<br> - rs1_w1_val == 4293918719<br>                                                                                                                                                                                                           |[0x80000fd0]:UKADDW t6, t5, t4<br> [0x80000fd4]:sd t6, 960(gp)<br>    |
|  78|[0x800036e0]<br>0xFFFFFFFFC0000011|- rs1_w1_val == 2863311530<br>                                                                                                                                                                                                                                                                  |[0x80000ff8]:UKADDW t6, t5, t4<br> [0x80000ffc]:sd t6, 976(gp)<br>    |
|  79|[0x800036f0]<br>0xFFFFFFFF800FFFFF|- rs2_w0_val == 2147483647<br>                                                                                                                                                                                                                                                                  |[0x80001024]:UKADDW t6, t5, t4<br> [0x80001028]:sd t6, 992(gp)<br>    |
|  80|[0x80003700]<br>0xFFFFFFFFF000000C|- rs2_w0_val == 4026531839<br> - rs1_w1_val == 131072<br>                                                                                                                                                                                                                                       |[0x80001048]:UKADDW t6, t5, t4<br> [0x8000104c]:sd t6, 1008(gp)<br>   |
|  81|[0x80003710]<br>0xFFFFFFFFF8000001|- rs2_w0_val == 4160749567<br>                                                                                                                                                                                                                                                                  |[0x8000106c]:UKADDW t6, t5, t4<br> [0x80001070]:sd t6, 1024(gp)<br>   |
|  82|[0x80003720]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4278190079<br> - rs1_w0_val == 1431655765<br>                                                                                                                                                                                                                                   |[0x8000108c]:UKADDW t6, t5, t4<br> [0x80001090]:sd t6, 1040(gp)<br>   |
|  83|[0x80003730]<br>0xFFFFFFFFFF80000F|- rs2_w0_val == 4286578687<br>                                                                                                                                                                                                                                                                  |[0x800010bc]:UKADDW t6, t5, t4<br> [0x800010c0]:sd t6, 1056(gp)<br>   |
|  84|[0x80003740]<br>0xFFFFFFFFFFFC000B|- rs2_w0_val == 4294705151<br> - rs1_w1_val == 256<br>                                                                                                                                                                                                                                          |[0x800010e4]:UKADDW t6, t5, t4<br> [0x800010e8]:sd t6, 1072(gp)<br>   |
|  85|[0x80003750]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4294836223<br> - rs1_w1_val == 33554432<br> - rs1_w0_val == 4290772991<br>                                                                                                                                                                                                      |[0x80001114]:UKADDW t6, t5, t4<br> [0x80001118]:sd t6, 1088(gp)<br>   |
|  86|[0x80003760]<br>0xFFFFFFFFFFFC003F|- rs2_w0_val == 64<br> - rs1_w1_val == 1024<br>                                                                                                                                                                                                                                                 |[0x80001140]:UKADDW t6, t5, t4<br> [0x80001144]:sd t6, 1104(gp)<br>   |
|  87|[0x80003770]<br>0xFFFFFFFFFFFFFFE1|- rs2_w0_val == 2<br>                                                                                                                                                                                                                                                                           |[0x80001168]:UKADDW t6, t5, t4<br> [0x8000116c]:sd t6, 1120(gp)<br>   |
|  88|[0x80003780]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4294967295<br>                                                                                                                                                                                                                                                                  |[0x8000118c]:UKADDW t6, t5, t4<br> [0x80001190]:sd t6, 1136(gp)<br>   |
|  89|[0x80003790]<br>0x0000000000000009|- rs1_w1_val == 1431655765<br>                                                                                                                                                                                                                                                                  |[0x800011b4]:UKADDW t6, t5, t4<br> [0x800011b8]:sd t6, 1152(gp)<br>   |
|  90|[0x800037a0]<br>0xFFFFFFFFFFFC01FF|- rs1_w1_val == 3758096383<br>                                                                                                                                                                                                                                                                  |[0x800011e0]:UKADDW t6, t5, t4<br> [0x800011e4]:sd t6, 1168(gp)<br>   |
|  91|[0x800037b0]<br>0xFFFFFFFFFFF81FFF|- rs1_w1_val == 4261412863<br>                                                                                                                                                                                                                                                                  |[0x8000120c]:UKADDW t6, t5, t4<br> [0x80001210]:sd t6, 1184(gp)<br>   |
|  92|[0x800037c0]<br>0xFFFFFFFFFFFFFF91|- rs1_w1_val == 4286578687<br> - rs1_w0_val == 4294967167<br>                                                                                                                                                                                                                                   |[0x80001230]:UKADDW t6, t5, t4<br> [0x80001234]:sd t6, 1200(gp)<br>   |
|  93|[0x800037d0]<br>0x00000000555D5555|- rs1_w1_val == 4292870143<br> - rs1_w0_val == 524288<br>                                                                                                                                                                                                                                       |[0x80001260]:UKADDW t6, t5, t4<br> [0x80001264]:sd t6, 1216(gp)<br>   |
|  94|[0x800037e0]<br>0xFFFFFFFFFF800000|- rs1_w1_val == 4294901759<br>                                                                                                                                                                                                                                                                  |[0x8000128c]:UKADDW t6, t5, t4<br> [0x80001290]:sd t6, 1232(gp)<br>   |
|  95|[0x800037f0]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4294967263<br> - rs1_w1_val == 4294950911<br>                                                                                                                                                                                                                                   |[0x800012b8]:UKADDW t6, t5, t4<br> [0x800012bc]:sd t6, 1248(gp)<br>   |
|  96|[0x80003800]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 1073741824<br> - rs1_w1_val == 4294959103<br>                                                                                                                                                                                                                                   |[0x800012dc]:UKADDW t6, t5, t4<br> [0x800012e0]:sd t6, 1264(gp)<br>   |
|  97|[0x80003810]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 4294965247<br>                                                                                                                                                                                                                                                                  |[0x8000130c]:UKADDW t6, t5, t4<br> [0x80001310]:sd t6, 1280(gp)<br>   |
|  98|[0x80003820]<br>0xFFFFFFFFE0000002|- rs1_w1_val == 4294967039<br> - rs1_w0_val == 3758096383<br>                                                                                                                                                                                                                                   |[0x80001334]:UKADDW t6, t5, t4<br> [0x80001338]:sd t6, 1296(gp)<br>   |
|  99|[0x80003830]<br>0xFFFFFFFFFFFFFFFF|- rs1_w1_val == 4294967231<br> - rs1_w0_val == 4294836223<br>                                                                                                                                                                                                                                   |[0x80001360]:UKADDW t6, t5, t4<br> [0x80001364]:sd t6, 1312(gp)<br>   |
| 100|[0x80003840]<br>0x0000000004000012|- rs1_w1_val == 4294967294<br>                                                                                                                                                                                                                                                                  |[0x80001384]:UKADDW t6, t5, t4<br> [0x80001388]:sd t6, 1328(gp)<br>   |
| 101|[0x80003850]<br>0xFFFFFFFFFFFFFF86|- rs1_w1_val == 1073741824<br>                                                                                                                                                                                                                                                                  |[0x800013ac]:UKADDW t6, t5, t4<br> [0x800013b0]:sd t6, 1344(gp)<br>   |
| 102|[0x80003860]<br>0xFFFFFFFF8000000C|- rs1_w1_val == 536870912<br>                                                                                                                                                                                                                                                                   |[0x800013d8]:UKADDW t6, t5, t4<br> [0x800013dc]:sd t6, 1360(gp)<br>   |
| 103|[0x80003870]<br>0x000000004000000E|- rs1_w1_val == 8388608<br>                                                                                                                                                                                                                                                                     |[0x800013fc]:UKADDW t6, t5, t4<br> [0x80001400]:sd t6, 1376(gp)<br>   |
| 104|[0x80003880]<br>0x0000000000080007|- rs1_w1_val == 1048576<br>                                                                                                                                                                                                                                                                     |[0x80001428]:UKADDW t6, t5, t4<br> [0x8000142c]:sd t6, 1392(gp)<br>   |
| 105|[0x80003890]<br>0xFFFFFFFFC1FFFFFF|- rs1_w1_val == 262144<br>                                                                                                                                                                                                                                                                      |[0x80001450]:UKADDW t6, t5, t4<br> [0x80001454]:sd t6, 1408(gp)<br>   |
| 106|[0x800038a0]<br>0x0000000000004009|- rs1_w1_val == 65536<br>                                                                                                                                                                                                                                                                       |[0x80001478]:UKADDW t6, t5, t4<br> [0x8000147c]:sd t6, 1424(gp)<br>   |
| 107|[0x800038b0]<br>0x000000000000008C|- rs1_w1_val == 2048<br>                                                                                                                                                                                                                                                                        |[0x8000149c]:UKADDW t6, t5, t4<br> [0x800014a0]:sd t6, 1440(gp)<br>   |
| 108|[0x800038c0]<br>0x0000000055555560|- rs1_w1_val == 512<br>                                                                                                                                                                                                                                                                         |[0x800014cc]:UKADDW t6, t5, t4<br> [0x800014d0]:sd t6, 1456(gp)<br>   |
| 109|[0x800038d0]<br>0x000000000000000F|- rs1_w1_val == 4<br>                                                                                                                                                                                                                                                                           |[0x800014f4]:UKADDW t6, t5, t4<br> [0x800014f8]:sd t6, 1472(gp)<br>   |
| 110|[0x800038e0]<br>0xFFFFFFFFFFE00009|- rs1_w1_val == 2<br>                                                                                                                                                                                                                                                                           |[0x8000151c]:UKADDW t6, t5, t4<br> [0x80001520]:sd t6, 1488(gp)<br>   |
| 111|[0x800038f0]<br>0x0000000000000029|- rs1_w1_val == 4294967295<br>                                                                                                                                                                                                                                                                  |[0x80001540]:UKADDW t6, t5, t4<br> [0x80001544]:sd t6, 1504(gp)<br>   |
| 112|[0x80003900]<br>0xFFFFFFFFAAAABAAA|- rs2_w0_val == 4096<br> - rs1_w0_val == 2863311530<br>                                                                                                                                                                                                                                         |[0x80001574]:UKADDW t6, t5, t4<br> [0x80001578]:sd t6, 1520(gp)<br>   |
| 113|[0x80003910]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 2147483647<br>                                                                                                                                                                                                                                                                  |[0x800015a0]:UKADDW t6, t5, t4<br> [0x800015a4]:sd t6, 1536(gp)<br>   |
| 114|[0x80003920]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 4160749567<br>                                                                                                                                                                                                                                                                  |[0x800015d4]:UKADDW t6, t5, t4<br> [0x800015d8]:sd t6, 1552(gp)<br>   |
| 115|[0x80003930]<br>0xFFFFFFFFFFFF0008|- rs2_w0_val == 4294901759<br>                                                                                                                                                                                                                                                                  |[0x800015fc]:UKADDW t6, t5, t4<br> [0x80001600]:sd t6, 1568(gp)<br>   |
| 116|[0x80003940]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4294959103<br>                                                                                                                                                                                                                                                                  |[0x80001630]:UKADDW t6, t5, t4<br> [0x80001634]:sd t6, 1584(gp)<br>   |
| 117|[0x80003950]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4294967039<br>                                                                                                                                                                                                                                                                  |[0x80001658]:UKADDW t6, t5, t4<br> [0x8000165c]:sd t6, 1600(gp)<br>   |
| 118|[0x80003960]<br>0xFFFFFFFFFFFF0002|- rs1_w0_val == 4294901759<br>                                                                                                                                                                                                                                                                  |[0x80001680]:UKADDW t6, t5, t4<br> [0x80001684]:sd t6, 1616(gp)<br>   |
| 119|[0x80003970]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4294967167<br>                                                                                                                                                                                                                                                                  |[0x800016a4]:UKADDW t6, t5, t4<br> [0x800016a8]:sd t6, 1632(gp)<br>   |
| 120|[0x80003980]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 4294959103<br>                                                                                                                                                                                                                                                                  |[0x800016d4]:UKADDW t6, t5, t4<br> [0x800016d8]:sd t6, 1648(gp)<br>   |
| 121|[0x80003990]<br>0xFFFFFFFFFFFFFFF1|- rs2_w0_val == 4294967279<br>                                                                                                                                                                                                                                                                  |[0x80001700]:UKADDW t6, t5, t4<br> [0x80001704]:sd t6, 1664(gp)<br>   |
| 122|[0x800039a0]<br>0xFFFFFFFFFFFFF011|- rs1_w0_val == 4294963199<br>                                                                                                                                                                                                                                                                  |[0x8000172c]:UKADDW t6, t5, t4<br> [0x80001730]:sd t6, 1680(gp)<br>   |
| 123|[0x800039b0]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4294967293<br>                                                                                                                                                                                                                                                                  |[0x80001754]:UKADDW t6, t5, t4<br> [0x80001758]:sd t6, 1696(gp)<br>   |
| 124|[0x800039c0]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 4294966783<br>                                                                                                                                                                                                                                                                  |[0x8000177c]:UKADDW t6, t5, t4<br> [0x80001780]:sd t6, 1712(gp)<br>   |
| 125|[0x800039d0]<br>0xFFFFFFFFFFFFFF07|- rs1_w0_val == 4294967039<br>                                                                                                                                                                                                                                                                  |[0x800017a8]:UKADDW t6, t5, t4<br> [0x800017ac]:sd t6, 1728(gp)<br>   |
| 126|[0x800039e0]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 268435456<br>                                                                                                                                                                                                                                                                   |[0x800017d0]:UKADDW t6, t5, t4<br> [0x800017d4]:sd t6, 1744(gp)<br>   |
| 127|[0x800039f0]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 4294967279<br>                                                                                                                                                                                                                                                                  |[0x800017f4]:UKADDW t6, t5, t4<br> [0x800017f8]:sd t6, 1760(gp)<br>   |
| 128|[0x80003a00]<br>0x0000000008000004|- rs2_w0_val == 134217728<br>                                                                                                                                                                                                                                                                   |[0x8000180c]:UKADDW t6, t5, t4<br> [0x80001810]:sd t6, 1776(gp)<br>   |
| 129|[0x80003a10]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 4294967291<br>                                                                                                                                                                                                                                                                  |[0x80001830]:UKADDW t6, t5, t4<br> [0x80001834]:sd t6, 1792(gp)<br>   |
| 130|[0x80003a20]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 4294967293<br>                                                                                                                                                                                                                                                                  |[0x8000185c]:UKADDW t6, t5, t4<br> [0x80001860]:sd t6, 1808(gp)<br>   |
| 131|[0x80003a30]<br>0x0000000000004400|- rs2_w0_val == 16384<br>                                                                                                                                                                                                                                                                       |[0x80001880]:UKADDW t6, t5, t4<br> [0x80001884]:sd t6, 1824(gp)<br>   |
| 132|[0x80003a40]<br>0xFFFFFFFFFFFFFFFF|- rs1_w0_val == 4294967294<br>                                                                                                                                                                                                                                                                  |[0x800018a8]:UKADDW t6, t5, t4<br> [0x800018ac]:sd t6, 1840(gp)<br>   |
| 133|[0x80003a50]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 8388608<br>                                                                                                                                                                                                                                                                     |[0x800018d0]:UKADDW t6, t5, t4<br> [0x800018d4]:sd t6, 1856(gp)<br>   |
| 134|[0x80003a60]<br>0xFFFFFFFFFFFFFFFF|- rs2_w0_val == 4194304<br>                                                                                                                                                                                                                                                                     |[0x800018f4]:UKADDW t6, t5, t4<br> [0x800018f8]:sd t6, 1872(gp)<br>   |
| 135|[0x80003a70]<br>0x0000000000100008|- rs2_w0_val == 1048576<br>                                                                                                                                                                                                                                                                     |[0x80001918]:UKADDW t6, t5, t4<br> [0x8000191c]:sd t6, 1888(gp)<br>   |
| 136|[0x80003a80]<br>0x0000000002000010|- rs1_w0_val == 33554432<br>                                                                                                                                                                                                                                                                    |[0x80001940]:UKADDW t6, t5, t4<br> [0x80001944]:sd t6, 1904(gp)<br>   |
| 137|[0x80003a90]<br>0x0000000009000000|- rs1_w0_val == 16777216<br>                                                                                                                                                                                                                                                                    |[0x80001964]:UKADDW t6, t5, t4<br> [0x80001968]:sd t6, 1920(gp)<br>   |
| 138|[0x80003aa0]<br>0x0000000040400000|- rs1_w0_val == 4194304<br>                                                                                                                                                                                                                                                                     |[0x80001988]:UKADDW t6, t5, t4<br> [0x8000198c]:sd t6, 1936(gp)<br>   |
| 139|[0x80003ab0]<br>0x000000001000000D|- rs1_w0_val == 268435456<br>                                                                                                                                                                                                                                                                   |[0x800019a8]:UKADDW t6, t5, t4<br> [0x800019ac]:sd t6, 1952(gp)<br>   |
| 140|[0x80003ac0]<br>0x0000000000000005|- rs1_w1_val == 4278190079<br>                                                                                                                                                                                                                                                                  |[0x800019cc]:UKADDW t6, t5, t4<br> [0x800019d0]:sd t6, 1968(gp)<br>   |
| 141|[0x80003ae0]<br>0xFFFFFFFFFFFFFFFC|- rs2_w1_val == 4294967167<br>                                                                                                                                                                                                                                                                  |[0x80001a1c]:UKADDW t6, t5, t4<br> [0x80001a20]:sd t6, 2000(gp)<br>   |
