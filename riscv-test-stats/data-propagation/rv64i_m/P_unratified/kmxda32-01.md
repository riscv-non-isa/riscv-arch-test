
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001b20')]      |
| SIG_REGION                | [('0x80003210', '0x80003b20', '290 dwords')]      |
| COV_LABELS                | kmxda32      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kmxda32-01.S    |
| Total Number of coverpoints| 392     |
| Total Coverpoints Hit     | 386      |
| Total Signature Updates   | 288      |
| STAT1                     | 144      |
| STAT2                     | 0      |
| STAT3                     | 0     |
| STAT4                     | 144     |
| STAT5                     | 0     |

## Details for STAT2:

```


```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kmxda32', 'rs1 : x2', 'rs2 : x2', 'rd : x25', 'rs1 == rs2 != rd', 'rs1_w1_val == rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val < 0', 'rs1_w0_val == rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w1_val == -17', 'rs2_w0_val == -268435457', 'rs1_w1_val == -17', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x800003bc]:KMXDA32 s9, sp, sp
	-[0x800003c0]:sd s9, 0(a5)
Current Store : [0x800003c4] : sd sp, 8(a5) -- Store: [0x80003218]:0xFFFFFFEFEFFFFFFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x5', 'rd : x5', 'rs1 == rs2 == rd', 'rs2_w1_val == -4097', 'rs2_w0_val == -33', 'rs1_w1_val == -4097', 'rs1_w0_val == -33']
Last Code Sequence : 
	-[0x800003e4]:KMXDA32 t0, t0, t0
	-[0x800003e8]:sd t0, 16(a5)
Current Store : [0x800003ec] : sd t0, 24(a5) -- Store: [0x80003228]:0x0000000000042042




Last Coverpoint : ['rs1 : x16', 'rs2 : x24', 'rd : x9', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 4', 'rs2_w0_val == 67108864', 'rs1_w1_val == -268435457', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x8000040c]:KMXDA32 s1, a6, s8
	-[0x80000410]:sd s1, 32(a5)
Current Store : [0x80000414] : sd a6, 40(a5) -- Store: [0x80003238]:0xEFFFFFFF00004000




Last Coverpoint : ['rs1 : x10', 'rs2 : x7', 'rd : x10', 'rs1 == rd != rs2', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w1_val == -8193', 'rs2_w0_val == -16385', 'rs1_w1_val == 262144', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000438]:KMXDA32 a0, a0, t2
	-[0x8000043c]:sd a0, 48(a5)
Current Store : [0x80000440] : sd a0, 56(a5) -- Store: [0x80003248]:0xFFFFFFF6FFBC0000




Last Coverpoint : ['rs1 : x7', 'rs2 : x20', 'rd : x20', 'rs2 == rd != rs1', 'rs1_w1_val > 0 and rs2_w1_val > 0', 'rs2_w1_val == 128', 'rs2_w0_val == 4096', 'rs1_w1_val == 32', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000458]:KMXDA32 s4, t2, s4
	-[0x8000045c]:sd s4, 64(a5)
Current Store : [0x80000460] : sd t2, 72(a5) -- Store: [0x80003258]:0x0000002020000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x6', 'rd : x16', 'rs2_w0_val == -262145', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000484]:KMXDA32 a6, s5, t1
	-[0x80000488]:sd a6, 80(a5)
Current Store : [0x8000048c] : sd s5, 88(a5) -- Store: [0x80003268]:0x00000007FFFBFFFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x16', 'rd : x14', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == 134217728', 'rs2_w0_val == 512', 'rs1_w1_val == 128', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x800004ac]:KMXDA32 a4, s8, a6
	-[0x800004b0]:sd a4, 96(a5)
Current Store : [0x800004b4] : sd s8, 104(a5) -- Store: [0x80003278]:0x00000080FFFDFFFF




Last Coverpoint : ['rs1 : x14', 'rs2 : x21', 'rd : x4', 'rs2_w1_val == -1431655766', 'rs2_w0_val == -3', 'rs1_w1_val == 65536', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x800004d8]:KMXDA32 tp, a4, s5
	-[0x800004dc]:sd tp, 112(a5)
Current Store : [0x800004e0] : sd a4, 120(a5) -- Store: [0x80003288]:0x00010000FFF7FFFF




Last Coverpoint : ['rs1 : x23', 'rs2 : x10', 'rd : x1', 'rs2_w1_val == 1431655765', 'rs1_w1_val == -1431655766', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000508]:KMXDA32 ra, s7, a0
	-[0x8000050c]:sd ra, 128(a5)
Current Store : [0x80000510] : sd s7, 136(a5) -- Store: [0x80003298]:0xAAAAAAAA00010000




Last Coverpoint : ['rs1 : x27', 'rs2 : x18', 'rd : x7', 'rs2_w1_val == 2147483647', 'rs1_w1_val == 16777216', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80000540]:KMXDA32 t2, s11, s2
	-[0x80000544]:sd t2, 144(a5)
Current Store : [0x80000548] : sd s11, 152(a5) -- Store: [0x800032a8]:0x01000000FFFFEFFF




Last Coverpoint : ['rs1 : x22', 'rs2 : x28', 'rd : x12', 'rs2_w1_val == -1073741825', 'rs2_w0_val == 128', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x8000056c]:KMXDA32 a2, s6, t3
	-[0x80000570]:sd a2, 160(a5)
Current Store : [0x80000574] : sd s6, 168(a5) -- Store: [0x800032b8]:0xC0000000FFFFFEFF




Last Coverpoint : ['rs1 : x20', 'rs2 : x27', 'rd : x2', 'rs2_w1_val == -536870913', 'rs2_w0_val == 2147483647', 'rs1_w1_val == -4194305', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x80000594]:KMXDA32 sp, s4, s11
	-[0x80000598]:sd sp, 176(a5)
Current Store : [0x8000059c] : sd s4, 184(a5) -- Store: [0x800032c8]:0xFFBFFFFFFFFFFFFB




Last Coverpoint : ['rs1 : x9', 'rs2 : x0', 'rd : x3', 'rs2_w1_val == 0', 'rs2_w0_val == 0', 'rs1_w1_val == -2049']
Last Code Sequence : 
	-[0x800005c0]:KMXDA32 gp, s1, zero
	-[0x800005c4]:sd gp, 192(a5)
Current Store : [0x800005c8] : sd s1, 200(a5) -- Store: [0x800032d8]:0xFFFFF7FF00000006




Last Coverpoint : ['rs1 : x3', 'rs2 : x29', 'rd : x22', 'rs2_w1_val == -134217729', 'rs2_w0_val == -131073', 'rs1_w1_val == -513']
Last Code Sequence : 
	-[0x800005ec]:KMXDA32 s6, gp, t4
	-[0x800005f0]:sd s6, 208(a5)
Current Store : [0x800005f4] : sd gp, 216(a5) -- Store: [0x800032e8]:0xFFFFFDFFFFFFFFFA




Last Coverpoint : ['rs1 : x26', 'rs2 : x1', 'rd : x31', 'rs2_w1_val == -67108865', 'rs2_w0_val == 262144']
Last Code Sequence : 
	-[0x80000618]:KMXDA32 t6, s10, ra
	-[0x8000061c]:sd t6, 224(a5)
Current Store : [0x80000620] : sd s10, 232(a5) -- Store: [0x800032f8]:0x0000000300010000




Last Coverpoint : ['rs1 : x25', 'rs2 : x11', 'rd : x26', 'rs2_w1_val == -33554433', 'rs2_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000640]:KMXDA32 s10, s9, a1
	-[0x80000644]:sd s10, 240(a5)
Current Store : [0x80000648] : sd s9, 248(a5) -- Store: [0x80003308]:0xFFFFFDFF00000009




Last Coverpoint : ['rs1 : x8', 'rs2 : x31', 'rd : x13', 'rs2_w1_val == -16777217', 'rs2_w0_val == -17', 'rs1_w1_val == -16777217', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x8000066c]:KMXDA32 a3, fp, t6
	-[0x80000670]:sd a3, 256(a5)
Current Store : [0x80000674] : sd fp, 264(a5) -- Store: [0x80003318]:0xFEFFFFFFFFDFFFFF




Last Coverpoint : ['rs1 : x0', 'rs2 : x25', 'rd : x11', 'rs2_w1_val == -8388609', 'rs1_w1_val == 0', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000698]:KMXDA32 a1, zero, s9
	-[0x8000069c]:sd a1, 0(sp)
Current Store : [0x800006a0] : sd zero, 8(sp) -- Store: [0x80003328]:0x0000000000000000




Last Coverpoint : ['rs1 : x15', 'rs2 : x17', 'rd : x21', 'rs2_w1_val == -4194305', 'rs2_w0_val == -2097153', 'rs1_w1_val == -32769']
Last Code Sequence : 
	-[0x800006c8]:KMXDA32 s5, a5, a7
	-[0x800006cc]:sd s5, 16(sp)
Current Store : [0x800006d0] : sd a5, 24(sp) -- Store: [0x80003338]:0xFFFF7FFFEFFFFFFF




Last Coverpoint : ['rs1 : x1', 'rs2 : x8', 'rd : x17', 'rs2_w1_val == -2097153', 'rs2_w0_val == 256', 'rs1_w1_val == 1048576']
Last Code Sequence : 
	-[0x800006f0]:KMXDA32 a7, ra, fp
	-[0x800006f4]:sd a7, 32(sp)
Current Store : [0x800006f8] : sd ra, 40(sp) -- Store: [0x80003348]:0x00100000C0000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x14', 'rd : x19', 'rs2_w1_val == -1048577', 'rs2_w0_val == 134217728', 'rs1_w1_val == 256']
Last Code Sequence : 
	-[0x80000714]:KMXDA32 s3, tp, a4
	-[0x80000718]:sd s3, 48(sp)
Current Store : [0x8000071c] : sd tp, 56(sp) -- Store: [0x80003358]:0x000001003FFFFFFF




Last Coverpoint : ['rs1 : x13', 'rs2 : x30', 'rd : x23', 'rs2_w1_val == -524289', 'rs2_w0_val == 32', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000740]:KMXDA32 s7, a3, t5
	-[0x80000744]:sd s7, 64(sp)
Current Store : [0x80000748] : sd a3, 72(sp) -- Store: [0x80003368]:0xFFFFFFFCFFFFF7FF




Last Coverpoint : ['rs1 : x11', 'rs2 : x15', 'rd : x24', 'rs2_w1_val == -262145', 'rs2_w0_val == -2049', 'rs1_w1_val == 33554432', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x8000076c]:KMXDA32 s8, a1, a5
	-[0x80000770]:sd s8, 80(sp)
Current Store : [0x80000774] : sd a1, 88(sp) -- Store: [0x80003378]:0x0200000000000200




Last Coverpoint : ['rs1 : x19', 'rs2 : x26', 'rd : x18', 'rs2_w1_val == -131073']
Last Code Sequence : 
	-[0x80000798]:KMXDA32 s2, s3, s10
	-[0x8000079c]:sd s2, 96(sp)
Current Store : [0x800007a0] : sd s3, 104(sp) -- Store: [0x80003388]:0xFFFFFFEF00400000




Last Coverpoint : ['rs1 : x30', 'rs2 : x9', 'rd : x28', 'rs2_w1_val == -65537', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x800007c8]:KMXDA32 t3, t5, s1
	-[0x800007cc]:sd t3, 112(sp)
Current Store : [0x800007d0] : sd t5, 120(sp) -- Store: [0x80003398]:0xFFFFEFFF55555555




Last Coverpoint : ['rs1 : x18', 'rs2 : x13', 'rd : x0', 'rs2_w1_val == -32769', 'rs1_w1_val == -536870913', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x800007f8]:KMXDA32 zero, s2, a3
	-[0x800007fc]:sd zero, 128(sp)
Current Store : [0x80000800] : sd s2, 136(sp) -- Store: [0x800033a8]:0xDFFFFFFF08000000




Last Coverpoint : ['rs1 : x28', 'rs2 : x4', 'rd : x15', 'rs2_w1_val == -16385', 'rs2_w0_val == 4', 'rs1_w1_val == -129']
Last Code Sequence : 
	-[0x80000820]:KMXDA32 a5, t3, tp
	-[0x80000824]:sd a5, 144(sp)
Current Store : [0x80000828] : sd t3, 152(sp) -- Store: [0x800033b8]:0xFFFFFF7FFFFFFFF6




Last Coverpoint : ['rs1 : x29', 'rs2 : x22', 'rd : x30', 'rs2_w1_val == -2049', 'rs2_w0_val == -1025', 'rs1_w1_val == 2097152']
Last Code Sequence : 
	-[0x80000848]:KMXDA32 t5, t4, s6
	-[0x8000084c]:sd t5, 160(sp)
Current Store : [0x80000850] : sd t4, 168(sp) -- Store: [0x800033c8]:0x0020000000010000




Last Coverpoint : ['rs1 : x6', 'rs2 : x19', 'rd : x29', 'rs2_w1_val == -1025', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x8000086c]:KMXDA32 t4, t1, s3
	-[0x80000870]:sd t4, 176(sp)
Current Store : [0x80000874] : sd t1, 184(sp) -- Store: [0x800033d8]:0x0000002000040000




Last Coverpoint : ['rs1 : x31', 'rs2 : x3', 'rd : x8', 'rs2_w1_val == -513', 'rs2_w0_val == -33554433', 'rs1_w1_val == -33', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000894]:KMXDA32 fp, t6, gp
	-[0x80000898]:sd fp, 192(sp)
Current Store : [0x8000089c] : sd t6, 200(sp) -- Store: [0x800033e8]:0xFFFFFFDF00008000




Last Coverpoint : ['rs1 : x17', 'rs2 : x23', 'rd : x6', 'rs2_w1_val == -257']
Last Code Sequence : 
	-[0x800008b4]:KMXDA32 t1, a7, s7
	-[0x800008b8]:sd t1, 208(sp)
Current Store : [0x800008bc] : sd a7, 216(sp) -- Store: [0x800033f8]:0xFFFFFFFC20000000




Last Coverpoint : ['rs1 : x12', 'rs2_w1_val == -129', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x800008dc]:KMXDA32 a6, a2, t4
	-[0x800008e0]:sd a6, 224(sp)
Current Store : [0x800008e4] : sd a2, 232(sp) -- Store: [0x80003408]:0xFFFF7FFF00000002




Last Coverpoint : ['rs2 : x12', 'rs2_w1_val == -65', 'rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x80000900]:KMXDA32 s5, t4, a2
	-[0x80000904]:sd s5, 240(sp)
Current Store : [0x80000908] : sd t4, 248(sp) -- Store: [0x80003418]:0x0000800008000000




Last Coverpoint : ['rd : x27', 'rs2_w1_val == -33', 'rs1_w1_val == -8388609', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000924]:KMXDA32 s11, s3, a6
	-[0x80000928]:sd s11, 256(sp)
Current Store : [0x8000092c] : sd s3, 264(sp) -- Store: [0x80003428]:0xFF7FFFFFFFFFFBFF




Last Coverpoint : ['rs2_w1_val == -9', 'rs2_w0_val == -2147483648', 'rs1_w1_val == -65537']
Last Code Sequence : 
	-[0x80000948]:KMXDA32 t6, t5, t4
	-[0x8000094c]:sd t6, 272(sp)
Current Store : [0x80000950] : sd t5, 280(sp) -- Store: [0x80003438]:0xFFFEFFFFFFFBFFFF




Last Coverpoint : ['rs2_w1_val == -5', 'rs2_w0_val == -65537', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000970]:KMXDA32 t6, t5, t4
	-[0x80000974]:sd t6, 288(sp)
Current Store : [0x80000978] : sd t5, 296(sp) -- Store: [0x80003448]:0xFFFFFFF900000004




Last Coverpoint : ['rs2_w1_val == -3', 'rs2_w0_val == 64']
Last Code Sequence : 
	-[0x80000994]:KMXDA32 t6, t5, t4
	-[0x80000998]:sd t6, 304(sp)
Current Store : [0x8000099c] : sd t5, 312(sp) -- Store: [0x80003458]:0xFFFFFFF6FFFFFFF6




Last Coverpoint : ['rs2_w1_val == -2', 'rs2_w0_val == 2048']
Last Code Sequence : 
	-[0x800009bc]:KMXDA32 t6, t5, t4
	-[0x800009c0]:sd t6, 320(sp)
Current Store : [0x800009c4] : sd t5, 328(sp) -- Store: [0x80003468]:0xFFFFEFFF00004000




Last Coverpoint : ['rs2_w1_val == -2147483648', 'rs2_w0_val == -67108865', 'rs1_w1_val == 131072', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x800009ec]:KMXDA32 t6, t5, t4
	-[0x800009f0]:sd t6, 336(sp)
Current Store : [0x800009f4] : sd t5, 344(sp) -- Store: [0x80003478]:0x00020000FFFFFFEF




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x80000a1c]:KMXDA32 t6, t5, t4
	-[0x80000a20]:sd t6, 352(sp)
Current Store : [0x80000a24] : sd t5, 360(sp) -- Store: [0x80003488]:0x00400000FFFBFFFF




Last Coverpoint : ['rs2_w1_val == 536870912', 'rs2_w0_val == -8388609', 'rs1_w1_val == -262145', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000a4c]:KMXDA32 t6, t5, t4
	-[0x80000a50]:sd t6, 368(sp)
Current Store : [0x80000a54] : sd t5, 376(sp) -- Store: [0x80003498]:0xFFFBFFFF00000400




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs1_w1_val == 512']
Last Code Sequence : 
	-[0x80000a70]:KMXDA32 t6, t5, t4
	-[0x80000a74]:sd t6, 384(sp)
Current Store : [0x80000a78] : sd t5, 392(sp) -- Store: [0x800034a8]:0x0000020000000200




Last Coverpoint : ['rs2_w1_val == 67108864', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000aa0]:KMXDA32 t6, t5, t4
	-[0x80000aa4]:sd t6, 400(sp)
Current Store : [0x80000aa8] : sd t5, 408(sp) -- Store: [0x800034b8]:0x0000002000000040




Last Coverpoint : ['rs2_w1_val == 33554432']
Last Code Sequence : 
	-[0x80000acc]:KMXDA32 t6, t5, t4
	-[0x80000ad0]:sd t6, 416(sp)
Current Store : [0x80000ad4] : sd t5, 424(sp) -- Store: [0x800034c8]:0xFFFBFFFF00040000




Last Coverpoint : ['rs2_w1_val == 16777216']
Last Code Sequence : 
	-[0x80000af4]:KMXDA32 t6, t5, t4
	-[0x80000af8]:sd t6, 432(sp)
Current Store : [0x80000afc] : sd t5, 440(sp) -- Store: [0x800034d8]:0xFFFBFFFFEFFFFFFF




Last Coverpoint : ['rs2_w1_val == 8388608', 'rs1_w1_val == 8388608', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000b28]:KMXDA32 t6, t5, t4
	-[0x80000b2c]:sd t6, 448(sp)
Current Store : [0x80000b30] : sd t5, 456(sp) -- Store: [0x800034e8]:0x00800000FFFFFFF7




Last Coverpoint : ['rs2_w1_val == 4194304', 'rs2_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000b50]:KMXDA32 t6, t5, t4
	-[0x80000b54]:sd t6, 464(sp)
Current Store : [0x80000b58] : sd t5, 472(sp) -- Store: [0x800034f8]:0xAAAAAAAA00000200




Last Coverpoint : ['rs2_w1_val == 2097152']
Last Code Sequence : 
	-[0x80000b80]:KMXDA32 t6, t5, t4
	-[0x80000b84]:sd t6, 480(sp)
Current Store : [0x80000b88] : sd t5, 488(sp) -- Store: [0x80003508]:0xFFFFEFFF55555555




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs2_w0_val == -8193']
Last Code Sequence : 
	-[0x80000bb0]:KMXDA32 t6, t5, t4
	-[0x80000bb4]:sd t6, 496(sp)
Current Store : [0x80000bb8] : sd t5, 504(sp) -- Store: [0x80003518]:0x0000020000000006




Last Coverpoint : ['rs2_w1_val == 524288', 'rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x80000bd4]:KMXDA32 t6, t5, t4
	-[0x80000bd8]:sd t6, 512(sp)
Current Store : [0x80000bdc] : sd t5, 520(sp) -- Store: [0x80003528]:0x0008000000000400




Last Coverpoint : ['rs2_w1_val == 262144', 'rs1_w1_val == -8193']
Last Code Sequence : 
	-[0x80000c04]:KMXDA32 t6, t5, t4
	-[0x80000c08]:sd t6, 528(sp)
Current Store : [0x80000c0c] : sd t5, 536(sp) -- Store: [0x80003538]:0xFFFFDFFF20000000




Last Coverpoint : ['rs2_w1_val == 131072', 'rs1_w1_val == 67108864', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000c28]:KMXDA32 t6, t5, t4
	-[0x80000c2c]:sd t6, 544(sp)
Current Store : [0x80000c30] : sd t5, 552(sp) -- Store: [0x80003548]:0x0400000010000000




Last Coverpoint : ['rs2_w1_val == 65536', 'rs2_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000c4c]:KMXDA32 t6, t5, t4
	-[0x80000c50]:sd t6, 560(sp)
Current Store : [0x80000c54] : sd t5, 568(sp) -- Store: [0x80003558]:0xFFFFFFFC00000002




Last Coverpoint : ['rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000c74]:KMXDA32 t6, t5, t4
	-[0x80000c78]:sd t6, 576(sp)
Current Store : [0x80000c7c] : sd t5, 584(sp) -- Store: [0x80003568]:0x0010000002000000




Last Coverpoint : ['rs1_w1_val == 1431655765', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000c9c]:KMXDA32 t6, t5, t4
	-[0x80000ca0]:sd t6, 592(sp)
Current Store : [0x80000ca4] : sd t5, 600(sp) -- Store: [0x80003578]:0x5555555501000000




Last Coverpoint : ['rs2_w0_val == -1', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000cc4]:KMXDA32 t6, t5, t4
	-[0x80000cc8]:sd t6, 608(sp)
Current Store : [0x80000ccc] : sd t5, 616(sp) -- Store: [0x80003588]:0x0100000000800000




Last Coverpoint : ['rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000cec]:KMXDA32 t6, t5, t4
	-[0x80000cf0]:sd t6, 624(sp)
Current Store : [0x80000cf4] : sd t5, 632(sp) -- Store: [0x80003598]:0x3FFFFFFF00200000




Last Coverpoint : ['rs1_w1_val == -1073741825', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000d18]:KMXDA32 t6, t5, t4
	-[0x80000d1c]:sd t6, 640(sp)
Current Store : [0x80000d20] : sd t5, 648(sp) -- Store: [0x800035a8]:0xBFFFFFFF00100000




Last Coverpoint : ['rs1_w1_val == -2147483648', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000d3c]:KMXDA32 t6, t5, t4
	-[0x80000d40]:sd t6, 656(sp)
Current Store : [0x80000d44] : sd t5, 664(sp) -- Store: [0x800035b8]:0x8000000000080000




Last Coverpoint : ['rs2_w0_val == 524288', 'rs1_w1_val == 536870912', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000d64]:KMXDA32 t6, t5, t4
	-[0x80000d68]:sd t6, 672(sp)
Current Store : [0x80000d6c] : sd t5, 680(sp) -- Store: [0x800035c8]:0x2000000000020000




Last Coverpoint : ['rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000d90]:KMXDA32 t6, t5, t4
	-[0x80000d94]:sd t6, 688(sp)
Current Store : [0x80000d98] : sd t5, 696(sp) -- Store: [0x800035d8]:0x0200000000002000




Last Coverpoint : ['rs1_w1_val == 8192', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000dc0]:KMXDA32 t6, t5, t4
	-[0x80000dc4]:sd t6, 704(sp)
Current Store : [0x80000dc8] : sd t5, 712(sp) -- Store: [0x800035e8]:0x0000200000001000




Last Coverpoint : ['rs2_w1_val == 1', 'rs1_w1_val == -3', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000de8]:KMXDA32 t6, t5, t4
	-[0x80000dec]:sd t6, 720(sp)
Current Store : [0x80000df0] : sd t5, 728(sp) -- Store: [0x800035f8]:0xFFFFFFFD00000800




Last Coverpoint : ['rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000e14]:KMXDA32 t6, t5, t4
	-[0x80000e18]:sd t6, 736(sp)
Current Store : [0x80000e1c] : sd t5, 744(sp) -- Store: [0x80003608]:0x3FFFFFFF00000080




Last Coverpoint : ['rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000e40]:KMXDA32 t6, t5, t4
	-[0x80000e44]:sd t6, 752(sp)
Current Store : [0x80000e48] : sd t5, 760(sp) -- Store: [0x80003618]:0xFFFBFFFF00000020




Last Coverpoint : ['rs2_w0_val == -5', 'rs1_w1_val == -16385', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000e6c]:KMXDA32 t6, t5, t4
	-[0x80000e70]:sd t6, 768(sp)
Current Store : [0x80000e74] : sd t5, 776(sp) -- Store: [0x80003628]:0xFFFFBFFF00000010




Last Coverpoint : ['rs1_w1_val == 16', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000e94]:KMXDA32 t6, t5, t4
	-[0x80000e98]:sd t6, 784(sp)
Current Store : [0x80000e9c] : sd t5, 792(sp) -- Store: [0x80003638]:0x0000001000000008




Last Coverpoint : ['rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000eb8]:KMXDA32 t6, t5, t4
	-[0x80000ebc]:sd t6, 800(sp)
Current Store : [0x80000ec0] : sd t5, 808(sp) -- Store: [0x80003648]:0xFFFFFFFA00000001




Last Coverpoint : ['rs2_w1_val == -268435457', 'rs1_w1_val == -5']
Last Code Sequence : 
	-[0x80000ed8]:KMXDA32 t6, t5, t4
	-[0x80000edc]:sd t6, 816(sp)
Current Store : [0x80000ee0] : sd t5, 824(sp) -- Store: [0x80003658]:0xFFFFFFFB00000000




Last Coverpoint : ['rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000ef8]:KMXDA32 t6, t5, t4
	-[0x80000efc]:sd t6, 832(sp)
Current Store : [0x80000f00] : sd t5, 840(sp) -- Store: [0x80003668]:0x00000010FFFFFFFF




Last Coverpoint : ['rs2_w1_val == 32768']
Last Code Sequence : 
	-[0x80000f20]:KMXDA32 t6, t5, t4
	-[0x80000f24]:sd t6, 848(sp)
Current Store : [0x80000f28] : sd t5, 856(sp) -- Store: [0x80003678]:0xFFFBFFFF20000000




Last Coverpoint : ['rs2_w1_val == 16384', 'rs2_w0_val == -4194305']
Last Code Sequence : 
	-[0x80000f48]:KMXDA32 t6, t5, t4
	-[0x80000f4c]:sd t6, 864(sp)
Current Store : [0x80000f50] : sd t5, 872(sp) -- Store: [0x80003688]:0x00000010FFFFFFF6




Last Coverpoint : ['rs2_w1_val == 8192']
Last Code Sequence : 
	-[0x80000f68]:KMXDA32 t6, t5, t4
	-[0x80000f6c]:sd t6, 880(sp)
Current Store : [0x80000f70] : sd t5, 888(sp) -- Store: [0x80003698]:0x0000000000000001




Last Coverpoint : ['rs2_w1_val == 4096']
Last Code Sequence : 
	-[0x80000f90]:KMXDA32 t6, t5, t4
	-[0x80000f94]:sd t6, 896(sp)
Current Store : [0x80000f98] : sd t5, 904(sp) -- Store: [0x800036a8]:0xFFFEFFFFFFFFFFFF




Last Coverpoint : ['rs2_w1_val == 2048', 'rs2_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000fb4]:KMXDA32 t6, t5, t4
	-[0x80000fb8]:sd t6, 912(sp)
Current Store : [0x80000fbc] : sd t5, 920(sp) -- Store: [0x800036b8]:0xFFFFFFFA00000010




Last Coverpoint : ['rs2_w1_val == 1024', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x80000fe4]:KMXDA32 t6, t5, t4
	-[0x80000fe8]:sd t6, 928(sp)
Current Store : [0x80000fec] : sd t5, 936(sp) -- Store: [0x800036c8]:0xFEFFFFFFFFFEFFFF




Last Coverpoint : ['rs2_w1_val == 512']
Last Code Sequence : 
	-[0x8000100c]:KMXDA32 t6, t5, t4
	-[0x80001010]:sd t6, 944(sp)
Current Store : [0x80001014] : sd t5, 952(sp) -- Store: [0x800036d8]:0x8000000000001000




Last Coverpoint : ['rs2_w1_val == 256', 'rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80001030]:KMXDA32 t6, t5, t4
	-[0x80001034]:sd t6, 960(sp)
Current Store : [0x80001038] : sd t5, 968(sp) -- Store: [0x800036e8]:0xFFFFFFF8FFFFFDFF




Last Coverpoint : ['rs2_w1_val == 64']
Last Code Sequence : 
	-[0x8000105c]:KMXDA32 t6, t5, t4
	-[0x80001060]:sd t6, 976(sp)
Current Store : [0x80001064] : sd t5, 984(sp) -- Store: [0x800036f8]:0xFFFF7FFF00010000




Last Coverpoint : ['rs2_w1_val == 32', 'rs2_w0_val == -513', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x80001080]:KMXDA32 t6, t5, t4
	-[0x80001084]:sd t6, 992(sp)
Current Store : [0x80001088] : sd t5, 1000(sp) -- Store: [0x80003708]:0x00000000DFFFFFFF




Last Coverpoint : ['rs2_w1_val == 16', 'rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x800010a4]:KMXDA32 t6, t5, t4
	-[0x800010a8]:sd t6, 1008(sp)
Current Store : [0x800010ac] : sd t5, 1016(sp) -- Store: [0x80003718]:0x0000400000000008




Last Coverpoint : ['rs2_w1_val == 8']
Last Code Sequence : 
	-[0x800010c8]:KMXDA32 t6, t5, t4
	-[0x800010cc]:sd t6, 1024(sp)
Current Store : [0x800010d0] : sd t5, 1032(sp) -- Store: [0x80003728]:0x00000080FFFFFFFF




Last Coverpoint : ['rs2_w1_val == 2']
Last Code Sequence : 
	-[0x800010f0]:KMXDA32 t6, t5, t4
	-[0x800010f4]:sd t6, 1040(sp)
Current Store : [0x800010f8] : sd t5, 1048(sp) -- Store: [0x80003738]:0xEFFFFFFF00000200




Last Coverpoint : ['rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80001118]:KMXDA32 t6, t5, t4
	-[0x8000111c]:sd t6, 1056(sp)
Current Store : [0x80001120] : sd t5, 1064(sp) -- Store: [0x80003748]:0x00200000FFEFFFFF




Last Coverpoint : ['rs2_w1_val == -1']
Last Code Sequence : 
	-[0x80001134]:KMXDA32 t6, t5, t4
	-[0x80001138]:sd t6, 1072(sp)
Current Store : [0x8000113c] : sd t5, 1080(sp) -- Store: [0x80003758]:0xFFFFFFFBFFFFFFF9




Last Coverpoint : ['rs2_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80001160]:KMXDA32 t6, t5, t4
	-[0x80001164]:sd t6, 1088(sp)
Current Store : [0x80001168] : sd t5, 1096(sp) -- Store: [0x80003768]:0xFEFFFFFF00000007




Last Coverpoint : ['rs2_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80001188]:KMXDA32 t6, t5, t4
	-[0x8000118c]:sd t6, 1104(sp)
Current Store : [0x80001190] : sd t5, 1112(sp) -- Store: [0x80003778]:0xFFFFFFEFFFFFFFDF




Last Coverpoint : ['rs2_w0_val == -1073741825']
Last Code Sequence : 
	-[0x800011bc]:KMXDA32 t6, t5, t4
	-[0x800011c0]:sd t6, 1120(sp)
Current Store : [0x800011c4] : sd t5, 1128(sp) -- Store: [0x80003788]:0x00200000FFFEFFFF




Last Coverpoint : ['rs2_w0_val == -536870913', 'rs1_w1_val == -1025']
Last Code Sequence : 
	-[0x800011e8]:KMXDA32 t6, t5, t4
	-[0x800011ec]:sd t6, 1136(sp)
Current Store : [0x800011f0] : sd t5, 1144(sp) -- Store: [0x80003798]:0xFFFFFBFFFFFFFFDF




Last Coverpoint : ['rs2_w0_val == -134217729']
Last Code Sequence : 
	-[0x80001210]:KMXDA32 t6, t5, t4
	-[0x80001214]:sd t6, 1152(sp)
Current Store : [0x80001218] : sd t5, 1160(sp) -- Store: [0x800037a8]:0x0000010000000020




Last Coverpoint : ['rs2_w0_val == -16777217']
Last Code Sequence : 
	-[0x80001238]:KMXDA32 t6, t5, t4
	-[0x8000123c]:sd t6, 1168(sp)
Current Store : [0x80001240] : sd t5, 1176(sp) -- Store: [0x800037b8]:0x0000000700000004




Last Coverpoint : ['rs2_w0_val == -1048577']
Last Code Sequence : 
	-[0x80001260]:KMXDA32 t6, t5, t4
	-[0x80001264]:sd t6, 1184(sp)
Current Store : [0x80001268] : sd t5, 1192(sp) -- Store: [0x800037c8]:0x0000800000000400




Last Coverpoint : ['rs2_w0_val == 131072', 'rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80001290]:KMXDA32 t6, t5, t4
	-[0x80001294]:sd t6, 1200(sp)
Current Store : [0x80001298] : sd t5, 1208(sp) -- Store: [0x800037d8]:0x00020000FFFFFFFD




Last Coverpoint : ['rs2_w0_val == 65536', 'rs1_w1_val == -2097153']
Last Code Sequence : 
	-[0x800012bc]:KMXDA32 t6, t5, t4
	-[0x800012c0]:sd t6, 1216(sp)
Current Store : [0x800012c4] : sd t5, 1224(sp) -- Store: [0x800037e8]:0xFFDFFFFF10000000




Last Coverpoint : ['rs2_w0_val == 32768']
Last Code Sequence : 
	-[0x800012e4]:KMXDA32 t6, t5, t4
	-[0x800012e8]:sd t6, 1232(sp)
Current Store : [0x800012ec] : sd t5, 1240(sp) -- Store: [0x800037f8]:0xFFFEFFFF20000000




Last Coverpoint : ['rs2_w0_val == 16384']
Last Code Sequence : 
	-[0x80001310]:KMXDA32 t6, t5, t4
	-[0x80001314]:sd t6, 1248(sp)
Current Store : [0x80001318] : sd t5, 1256(sp) -- Store: [0x80003808]:0x0000008000040000




Last Coverpoint : ['rs2_w0_val == 8192']
Last Code Sequence : 
	-[0x80001334]:KMXDA32 t6, t5, t4
	-[0x80001338]:sd t6, 1264(sp)
Current Store : [0x8000133c] : sd t5, 1272(sp) -- Store: [0x80003818]:0x00000200FFFFFFDF




Last Coverpoint : ['rs2_w0_val == 1024', 'rs1_w1_val == 2048']
Last Code Sequence : 
	-[0x8000135c]:KMXDA32 t6, t5, t4
	-[0x80001360]:sd t6, 1280(sp)
Current Store : [0x80001364] : sd t5, 1288(sp) -- Store: [0x80003828]:0x00000800FFFFFFFB




Last Coverpoint : ['rs2_w0_val == 16']
Last Code Sequence : 
	-[0x80001388]:KMXDA32 t6, t5, t4
	-[0x8000138c]:sd t6, 1296(sp)
Current Store : [0x80001390] : sd t5, 1304(sp) -- Store: [0x80003838]:0xFFFFF7FF00000006




Last Coverpoint : ['rs2_w0_val == 8', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x800013ac]:KMXDA32 t6, t5, t4
	-[0x800013b0]:sd t6, 1312(sp)
Current Store : [0x800013b4] : sd t5, 1320(sp) -- Store: [0x80003848]:0xFFFFFFEFFBFFFFFF




Last Coverpoint : ['rs2_w0_val == 1', 'rs1_w1_val == 134217728', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x800013d8]:KMXDA32 t6, t5, t4
	-[0x800013dc]:sd t6, 1328(sp)
Current Store : [0x800013e0] : sd t5, 1336(sp) -- Store: [0x80003858]:0x08000000FFBFFFFF




Last Coverpoint : ['rs1_w1_val == 2147483647', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80001404]:KMXDA32 t6, t5, t4
	-[0x80001408]:sd t6, 1344(sp)
Current Store : [0x8000140c] : sd t5, 1352(sp) -- Store: [0x80003868]:0x7FFFFFFF7FFFFFFF




Last Coverpoint : ['rs1_w1_val == -134217729']
Last Code Sequence : 
	-[0x80001430]:KMXDA32 t6, t5, t4
	-[0x80001434]:sd t6, 1360(sp)
Current Store : [0x80001438] : sd t5, 1368(sp) -- Store: [0x80003878]:0xF7FFFFFFFFDFFFFF




Last Coverpoint : ['rs1_w1_val == -67108865']
Last Code Sequence : 
	-[0x80001454]:KMXDA32 t6, t5, t4
	-[0x80001458]:sd t6, 1376(sp)
Current Store : [0x8000145c] : sd t5, 1384(sp) -- Store: [0x80003888]:0xFBFFFFFFFFFFFFF8




Last Coverpoint : ['rs1_w1_val == -33554433', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80001480]:KMXDA32 t6, t5, t4
	-[0x80001484]:sd t6, 1392(sp)
Current Store : [0x80001488] : sd t5, 1400(sp) -- Store: [0x80003898]:0xFDFFFFFF00000100




Last Coverpoint : ['rs1_w1_val == -1048577', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800014a8]:KMXDA32 t6, t5, t4
	-[0x800014ac]:sd t6, 1408(sp)
Current Store : [0x800014b0] : sd t5, 1416(sp) -- Store: [0x800038a8]:0xFFEFFFFF40000000




Last Coverpoint : ['rs1_w1_val == -524289']
Last Code Sequence : 
	-[0x800014d0]:KMXDA32 t6, t5, t4
	-[0x800014d4]:sd t6, 1424(sp)
Current Store : [0x800014d8] : sd t5, 1432(sp) -- Store: [0x800038b8]:0xFFF7FFFF00000010




Last Coverpoint : ['rs1_w1_val == -131073']
Last Code Sequence : 
	-[0x800014fc]:KMXDA32 t6, t5, t4
	-[0x80001500]:sd t6, 1440(sp)
Current Store : [0x80001504] : sd t5, 1448(sp) -- Store: [0x800038c8]:0xFFFDFFFFFFFDFFFF




Last Coverpoint : ['rs2_w0_val == 1073741824', 'rs1_w1_val == -257']
Last Code Sequence : 
	-[0x80001524]:KMXDA32 t6, t5, t4
	-[0x80001528]:sd t6, 1456(sp)
Current Store : [0x8000152c] : sd t5, 1464(sp) -- Store: [0x800038d8]:0xFFFFFEFFFFFFFFFA




Last Coverpoint : ['rs1_w1_val == -65']
Last Code Sequence : 
	-[0x8000154c]:KMXDA32 t6, t5, t4
	-[0x80001550]:sd t6, 1472(sp)
Current Store : [0x80001554] : sd t5, 1480(sp) -- Store: [0x800038e8]:0xFFFFFFBF00002000




Last Coverpoint : ['rs1_w1_val == -9']
Last Code Sequence : 
	-[0x80001578]:KMXDA32 t6, t5, t4
	-[0x8000157c]:sd t6, 1488(sp)
Current Store : [0x80001580] : sd t5, 1496(sp) -- Store: [0x800038f8]:0xFFFFFFF700000008




Last Coverpoint : ['rs1_w1_val == -2']
Last Code Sequence : 
	-[0x8000159c]:KMXDA32 t6, t5, t4
	-[0x800015a0]:sd t6, 1504(sp)
Current Store : [0x800015a4] : sd t5, 1512(sp) -- Store: [0x80003908]:0xFFFFFFFE00000020




Last Coverpoint : ['rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x800015cc]:KMXDA32 t6, t5, t4
	-[0x800015d0]:sd t6, 1520(sp)
Current Store : [0x800015d4] : sd t5, 1528(sp) -- Store: [0x80003918]:0x4000000000000009




Last Coverpoint : ['rs1_w1_val == 268435456', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x800015f8]:KMXDA32 t6, t5, t4
	-[0x800015fc]:sd t6, 1536(sp)
Current Store : [0x80001600] : sd t5, 1544(sp) -- Store: [0x80003928]:0x10000000FF7FFFFF




Last Coverpoint : ['rs2_w0_val == 2', 'rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x80001620]:KMXDA32 t6, t5, t4
	-[0x80001624]:sd t6, 1552(sp)
Current Store : [0x80001628] : sd t5, 1560(sp) -- Store: [0x80003938]:0x00001000FFDFFFFF




Last Coverpoint : ['rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x80001644]:KMXDA32 t6, t5, t4
	-[0x80001648]:sd t6, 1568(sp)
Current Store : [0x8000164c] : sd t5, 1576(sp) -- Store: [0x80003948]:0x0000040000004000




Last Coverpoint : ['rs1_w1_val == 64', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80001670]:KMXDA32 t6, t5, t4
	-[0x80001674]:sd t6, 1584(sp)
Current Store : [0x80001678] : sd t5, 1592(sp) -- Store: [0x80003958]:0x00000040FFFF7FFF




Last Coverpoint : ['rs1_w1_val == 8']
Last Code Sequence : 
	-[0x80001698]:KMXDA32 t6, t5, t4
	-[0x8000169c]:sd t6, 1600(sp)
Current Store : [0x800016a0] : sd t5, 1608(sp) -- Store: [0x80003968]:0x00000008FFFFFFDF




Last Coverpoint : ['rs2_w0_val == -2', 'rs1_w1_val == 4']
Last Code Sequence : 
	-[0x800016c4]:KMXDA32 t6, t5, t4
	-[0x800016c8]:sd t6, 1616(sp)
Current Store : [0x800016cc] : sd t5, 1624(sp) -- Store: [0x80003978]:0x00000004FFFEFFFF




Last Coverpoint : ['rs1_w1_val == 2']
Last Code Sequence : 
	-[0x800016e8]:KMXDA32 t6, t5, t4
	-[0x800016ec]:sd t6, 1632(sp)
Current Store : [0x800016f0] : sd t5, 1640(sp) -- Store: [0x80003988]:0x0000000200000005




Last Coverpoint : ['rs1_w1_val == -1']
Last Code Sequence : 
	-[0x8000170c]:KMXDA32 t6, t5, t4
	-[0x80001710]:sd t6, 1648(sp)
Current Store : [0x80001714] : sd t5, 1656(sp) -- Store: [0x80003998]:0xFFFFFFFF00000400




Last Coverpoint : ['rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80001734]:KMXDA32 t6, t5, t4
	-[0x80001738]:sd t6, 1664(sp)
Current Store : [0x8000173c] : sd t5, 1672(sp) -- Store: [0x800039a8]:0x00000010AAAAAAAA




Last Coverpoint : ['rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x8000175c]:KMXDA32 t6, t5, t4
	-[0x80001760]:sd t6, 1680(sp)
Current Store : [0x80001764] : sd t5, 1688(sp) -- Store: [0x800039b8]:0x08000000BFFFFFFF




Last Coverpoint : ['rs2_w0_val == -524289']
Last Code Sequence : 
	-[0x8000178c]:KMXDA32 t6, t5, t4
	-[0x80001790]:sd t6, 1696(sp)
Current Store : [0x80001794] : sd t5, 1704(sp) -- Store: [0x800039c8]:0x10000000FFFFFFFC




Last Coverpoint : ['rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800017c4]:KMXDA32 t6, t5, t4
	-[0x800017c8]:sd t6, 1712(sp)
Current Store : [0x800017cc] : sd t5, 1720(sp) -- Store: [0x800039d8]:0xFBFFFFFFF7FFFFFF




Last Coverpoint : ['rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x800017f0]:KMXDA32 t6, t5, t4
	-[0x800017f4]:sd t6, 1728(sp)
Current Store : [0x800017f8] : sd t5, 1736(sp) -- Store: [0x800039e8]:0x00004000FDFFFFFF




Last Coverpoint : ['rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80001810]:KMXDA32 t6, t5, t4
	-[0x80001814]:sd t6, 1744(sp)
Current Store : [0x80001818] : sd t5, 1752(sp) -- Store: [0x800039f8]:0xFFFFFFFFFEFFFFFF




Last Coverpoint : ['rs2_w0_val == -32769']
Last Code Sequence : 
	-[0x8000183c]:KMXDA32 t6, t5, t4
	-[0x80001840]:sd t6, 1760(sp)
Current Store : [0x80001844] : sd t5, 1768(sp) -- Store: [0x80003a08]:0x0000800000001000




Last Coverpoint : ['rs2_w0_val == -4097']
Last Code Sequence : 
	-[0x8000186c]:KMXDA32 t6, t5, t4
	-[0x80001870]:sd t6, 1776(sp)
Current Store : [0x80001874] : sd t5, 1784(sp) -- Store: [0x80003a18]:0xEFFFFFFF00000008




Last Coverpoint : ['rs1_w0_val == -2147483648', 'rs2_w0_val == -257']
Last Code Sequence : 
	-[0x80001898]:KMXDA32 t6, t5, t4
	-[0x8000189c]:sd t6, 1792(sp)
Current Store : [0x800018a0] : sd t5, 1800(sp) -- Store: [0x80003a28]:0x4000000080000000




Last Coverpoint : ['rs2_w0_val == -129']
Last Code Sequence : 
	-[0x800018b4]:KMXDA32 t6, t5, t4
	-[0x800018b8]:sd t6, 1808(sp)
Current Store : [0x800018bc] : sd t5, 1816(sp) -- Store: [0x80003a38]:0xFFFEFFFFFFFFFFF9




Last Coverpoint : ['rs2_w0_val == -65']
Last Code Sequence : 
	-[0x800018d8]:KMXDA32 t6, t5, t4
	-[0x800018dc]:sd t6, 1824(sp)
Current Store : [0x800018e0] : sd t5, 1832(sp) -- Store: [0x80003a48]:0xFF7FFFFFFFFFFFFD




Last Coverpoint : ['rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80001900]:KMXDA32 t6, t5, t4
	-[0x80001904]:sd t6, 1840(sp)
Current Store : [0x80001908] : sd t5, 1848(sp) -- Store: [0x80003a58]:0x00000002FFFFBFFF




Last Coverpoint : ['rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80001930]:KMXDA32 t6, t5, t4
	-[0x80001934]:sd t6, 1856(sp)
Current Store : [0x80001938] : sd t5, 1864(sp) -- Store: [0x80003a68]:0xF7FFFFFFFFFFDFFF




Last Coverpoint : ['rs2_w0_val == -9']
Last Code Sequence : 
	-[0x80001958]:KMXDA32 t6, t5, t4
	-[0x8000195c]:sd t6, 1872(sp)
Current Store : [0x80001960] : sd t5, 1880(sp) -- Store: [0x80003a78]:0xFFDFFFFFFF7FFFFF




Last Coverpoint : ['rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80001984]:KMXDA32 t6, t5, t4
	-[0x80001988]:sd t6, 1888(sp)
Current Store : [0x8000198c] : sd t5, 1896(sp) -- Store: [0x80003a88]:0x01000000FFFFFF7F




Last Coverpoint : ['rs1_w0_val == -65']
Last Code Sequence : 
	-[0x800019b0]:KMXDA32 t6, t5, t4
	-[0x800019b4]:sd t6, 1904(sp)
Current Store : [0x800019b8] : sd t5, 1912(sp) -- Store: [0x80003a98]:0x00000400FFFFFFBF




Last Coverpoint : ['rs2_w0_val == 33554432']
Last Code Sequence : 
	-[0x800019d8]:KMXDA32 t6, t5, t4
	-[0x800019dc]:sd t6, 1920(sp)
Current Store : [0x800019e0] : sd t5, 1928(sp) -- Store: [0x80003aa8]:0x00010000FF7FFFFF




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x800019fc]:KMXDA32 t6, t5, t4
	-[0x80001a00]:sd t6, 1936(sp)
Current Store : [0x80001a04] : sd t5, 1944(sp) -- Store: [0x80003ab8]:0x00000007FFFFFFFE




Last Coverpoint : ['rs2_w0_val == 8388608']
Last Code Sequence : 
	-[0x80001a24]:KMXDA32 t6, t5, t4
	-[0x80001a28]:sd t6, 1952(sp)
Current Store : [0x80001a2c] : sd t5, 1960(sp) -- Store: [0x80003ac8]:0x00020000FBFFFFFF




Last Coverpoint : ['rs2_w0_val == 2097152']
Last Code Sequence : 
	-[0x80001a58]:KMXDA32 t6, t5, t4
	-[0x80001a5c]:sd t6, 1968(sp)
Current Store : [0x80001a60] : sd t5, 1976(sp) -- Store: [0x80003ad8]:0xAAAAAAAAFFFDFFFF




Last Coverpoint : ['rs2_w0_val == 1048576']
Last Code Sequence : 
	-[0x80001a88]:KMXDA32 t6, t5, t4
	-[0x80001a8c]:sd t6, 1984(sp)
Current Store : [0x80001a90] : sd t5, 1992(sp) -- Store: [0x80003ae8]:0xFDFFFFFF00040000




Last Coverpoint : ['rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80001ab0]:KMXDA32 t6, t5, t4
	-[0x80001ab4]:sd t6, 2000(sp)
Current Store : [0x80001ab8] : sd t5, 2008(sp) -- Store: [0x80003af8]:0xF7FFFFFF04000000




Last Coverpoint : ['rs1_w1_val == 1']
Last Code Sequence : 
	-[0x80001ad4]:KMXDA32 t6, t5, t4
	-[0x80001ad8]:sd t6, 2016(sp)
Current Store : [0x80001adc] : sd t5, 2024(sp) -- Store: [0x80003b08]:0x0000000100000007





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

|s.no|            signature             |                                                                                                                                                                      coverpoints                                                                                                                                                                      |                                  code                                  |
|---:|----------------------------------|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000220000022|- opcode : kmxda32<br> - rs1 : x2<br> - rs2 : x2<br> - rd : x25<br> - rs1 == rs2 != rd<br> - rs1_w1_val == rs2_w1_val<br> - rs1_w1_val < 0 and rs2_w1_val < 0<br> - rs1_w0_val == rs2_w0_val<br> - rs1_w0_val < 0 and rs2_w0_val < 0<br> - rs2_w1_val == -17<br> - rs2_w0_val == -268435457<br> - rs1_w1_val == -17<br> - rs1_w0_val == -268435457<br> |[0x800003bc]:KMXDA32 s9, sp, sp<br> [0x800003c0]:sd s9, 0(a5)<br>       |
|   2|[0x80003220]<br>0x0000000000042042|- rs1 : x5<br> - rs2 : x5<br> - rd : x5<br> - rs1 == rs2 == rd<br> - rs2_w1_val == -4097<br> - rs2_w0_val == -33<br> - rs1_w1_val == -4097<br> - rs1_w0_val == -33<br>                                                                                                                                                                                 |[0x800003e4]:KMXDA32 t0, t0, t0<br> [0x800003e8]:sd t0, 16(a5)<br>      |
|   3|[0x80003230]<br>0xFFBFFFFFFC010000|- rs1 : x16<br> - rs2 : x24<br> - rd : x9<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w1_val != rs2_w1_val<br> - rs1_w1_val < 0 and rs2_w1_val > 0<br> - rs1_w0_val != rs2_w0_val<br> - rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == 4<br> - rs2_w0_val == 67108864<br> - rs1_w1_val == -268435457<br> - rs1_w0_val == 16384<br>  |[0x8000040c]:KMXDA32 s1, a6, s8<br> [0x80000410]:sd s1, 32(a5)<br>      |
|   4|[0x80003240]<br>0xFFFFFFF6FFBC0000|- rs1 : x10<br> - rs2 : x7<br> - rd : x10<br> - rs1 == rd != rs2<br> - rs1_w1_val > 0 and rs2_w1_val < 0<br> - rs1_w0_val > 0 and rs2_w0_val < 0<br> - rs2_w1_val == -8193<br> - rs2_w0_val == -16385<br> - rs1_w1_val == 262144<br> - rs1_w0_val == 4194304<br>                                                                                       |[0x80000438]:KMXDA32 a0, a0, t2<br> [0x8000043c]:sd a0, 48(a5)<br>      |
|   5|[0x80003250]<br>0x0000001000020000|- rs1 : x7<br> - rs2 : x20<br> - rd : x20<br> - rs2 == rd != rs1<br> - rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs2_w1_val == 128<br> - rs2_w0_val == 4096<br> - rs1_w1_val == 32<br> - rs1_w0_val == 536870912<br>                                                                                                                                     |[0x80000458]:KMXDA32 s4, t2, s4<br> [0x8000045c]:sd s4, 64(a5)<br>      |
|   6|[0x80003260]<br>0x000000003FE80FFA|- rs1 : x21<br> - rs2 : x6<br> - rd : x16<br> - rs2_w0_val == -262145<br> - rs1_w0_val == -262145<br>                                                                                                                                                                                                                                                  |[0x80000484]:KMXDA32 a6, s5, t1<br> [0x80000488]:sd a6, 80(a5)<br>      |
|   7|[0x80003270]<br>0xFFFFEFFFF8010000|- rs1 : x24<br> - rs2 : x16<br> - rd : x14<br> - rs1_w0_val < 0 and rs2_w0_val > 0<br> - rs2_w1_val == 134217728<br> - rs2_w0_val == 512<br> - rs1_w1_val == 128<br> - rs1_w0_val == -131073<br>                                                                                                                                                       |[0x800004ac]:KMXDA32 a4, s8, a6<br> [0x800004b0]:sd a4, 96(a5)<br>      |
|   8|[0x80003280]<br>0x0002AAAB00025556|- rs1 : x14<br> - rs2 : x21<br> - rd : x4<br> - rs2_w1_val == -1431655766<br> - rs2_w0_val == -3<br> - rs1_w1_val == 65536<br> - rs1_w0_val == -524289<br>                                                                                                                                                                                             |[0x800004d8]:KMXDA32 tp, a4, s5<br> [0x800004dc]:sd tp, 112(a5)<br>     |
|   9|[0x80003290]<br>0x00005552FFFFAAA6|- rs1 : x23<br> - rs2 : x10<br> - rd : x1<br> - rs2_w1_val == 1431655765<br> - rs1_w1_val == -1431655766<br> - rs1_w0_val == 65536<br>                                                                                                                                                                                                                 |[0x80000508]:KMXDA32 ra, s7, a0<br> [0x8000050c]:sd ra, 128(a5)<br>     |
|  10|[0x800032a0]<br>0xFFFFF80F80001001|- rs1 : x27<br> - rs2 : x18<br> - rd : x7<br> - rs2_w1_val == 2147483647<br> - rs1_w1_val == 16777216<br> - rs1_w0_val == -4097<br>                                                                                                                                                                                                                    |[0x80000540]:KMXDA32 t2, s11, s2<br> [0x80000544]:sd t2, 144(a5)<br>    |
|  11|[0x800032b0]<br>0x0000002040000101|- rs1 : x22<br> - rs2 : x28<br> - rd : x12<br> - rs2_w1_val == -1073741825<br> - rs2_w0_val == 128<br> - rs1_w0_val == -257<br>                                                                                                                                                                                                                        |[0x8000056c]:KMXDA32 a2, s6, t3<br> [0x80000570]:sd a2, 160(a5)<br>     |
|  12|[0x800032c0]<br>0xFFE0000020400006|- rs1 : x20<br> - rs2 : x27<br> - rd : x2<br> - rs2_w1_val == -536870913<br> - rs2_w0_val == 2147483647<br> - rs1_w1_val == -4194305<br> - rs1_w0_val == -5<br>                                                                                                                                                                                        |[0x80000594]:KMXDA32 sp, s4, s11<br> [0x80000598]:sd sp, 176(a5)<br>    |
|  13|[0x800032d0]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : x0<br> - rd : x3<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == -2049<br>                                                                                                                                                                                                                                      |[0x800005c0]:KMXDA32 gp, s1, zero<br> [0x800005c4]:sd gp, 192(a5)<br>   |
|  14|[0x800032e0]<br>0x0000000034020207|- rs1 : x3<br> - rs2 : x29<br> - rd : x22<br> - rs2_w1_val == -134217729<br> - rs2_w0_val == -131073<br> - rs1_w1_val == -513<br>                                                                                                                                                                                                                      |[0x800005ec]:KMXDA32 s6, gp, t4<br> [0x800005f0]:sd s6, 208(a5)<br>     |
|  15|[0x800032f0]<br>0xFFFFFC00000B0000|- rs1 : x26<br> - rs2 : x1<br> - rd : x31<br> - rs2_w1_val == -67108865<br> - rs2_w0_val == 262144<br>                                                                                                                                                                                                                                                 |[0x80000618]:KMXDA32 t6, s10, ra<br> [0x8000061c]:sd t6, 224(a5)<br>    |
|  16|[0x80003300]<br>0xFFFFFFFDECFFFFF7|- rs1 : x25<br> - rs2 : x11<br> - rd : x26<br> - rs2_w1_val == -33554433<br> - rs2_w0_val == 16777216<br>                                                                                                                                                                                                                                              |[0x80000640]:KMXDA32 s10, s9, a1<br> [0x80000644]:sd s10, 240(a5)<br>   |
|  17|[0x80003310]<br>0x0000200012200012|- rs1 : x8<br> - rs2 : x31<br> - rd : x13<br> - rs2_w1_val == -16777217<br> - rs2_w0_val == -17<br> - rs1_w1_val == -16777217<br> - rs1_w0_val == -2097153<br>                                                                                                                                                                                         |[0x8000066c]:KMXDA32 a3, fp, t6<br> [0x80000670]:sd a3, 256(a5)<br>     |
|  18|[0x80003320]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x25<br> - rd : x11<br> - rs2_w1_val == -8388609<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                                                                                                                                                                                                                 |[0x80000698]:KMXDA32 a1, zero, s9<br> [0x8000069c]:sd a1, 0(sp)<br>     |
|  19|[0x80003330]<br>0x0004001010608002|- rs1 : x15<br> - rs2 : x17<br> - rd : x21<br> - rs2_w1_val == -4194305<br> - rs2_w0_val == -2097153<br> - rs1_w1_val == -32769<br>                                                                                                                                                                                                                    |[0x800006c8]:KMXDA32 s5, a5, a7<br> [0x800006cc]:sd s5, 16(sp)<br>      |
|  20|[0x80003340]<br>0x0008000050000000|- rs1 : x1<br> - rs2 : x8<br> - rd : x17<br> - rs2_w1_val == -2097153<br> - rs2_w0_val == 256<br> - rs1_w1_val == 1048576<br>                                                                                                                                                                                                                          |[0x800006f0]:KMXDA32 a7, ra, fp<br> [0x800006f4]:sd a7, 32(sp)<br>      |
|  21|[0x80003350]<br>0xFFFC0007C0100001|- rs1 : x4<br> - rs2 : x14<br> - rd : x19<br> - rs2_w1_val == -1048577<br> - rs2_w0_val == 134217728<br> - rs1_w1_val == 256<br>                                                                                                                                                                                                                       |[0x80000714]:KMXDA32 s3, tp, a4<br> [0x80000718]:sd s3, 48(sp)<br>      |
|  22|[0x80003360]<br>0x0000000040080781|- rs1 : x13<br> - rs2 : x30<br> - rd : x23<br> - rs2_w1_val == -524289<br> - rs2_w0_val == 32<br> - rs1_w0_val == -2049<br>                                                                                                                                                                                                                            |[0x80000740]:KMXDA32 s7, a3, t5<br> [0x80000744]:sd s7, 64(sp)<br>      |
|  23|[0x80003370]<br>0xFFFFFFEFF5FFFE00|- rs1 : x11<br> - rs2 : x15<br> - rd : x24<br> - rs2_w1_val == -262145<br> - rs2_w0_val == -2049<br> - rs1_w1_val == 33554432<br> - rs1_w0_val == 512<br>                                                                                                                                                                                              |[0x8000076c]:KMXDA32 s8, a1, a5<br> [0x80000770]:sd s8, 80(sp)<br>      |
|  24|[0x80003380]<br>0xFFFFFF7FFFC44011|- rs1 : x19<br> - rs2 : x26<br> - rd : x18<br> - rs2_w1_val == -131073<br>                                                                                                                                                                                                                                                                             |[0x80000798]:KMXDA32 s2, s3, s10<br> [0x8000079c]:sd s2, 96(sp)<br>     |
|  25|[0x80003390]<br>0xFFFFAAAA5555AAAB|- rs1 : x30<br> - rs2 : x9<br> - rd : x28<br> - rs2_w1_val == -65537<br> - rs1_w0_val == 1431655765<br>                                                                                                                                                                                                                                                |[0x800007c8]:KMXDA32 t3, t5, s1<br> [0x800007cc]:sd t3, 112(sp)<br>     |
|  26|[0x800033a0]<br>0x0000000000000000|- rs1 : x18<br> - rs2 : x13<br> - rd : x0<br> - rs2_w1_val == -32769<br> - rs1_w1_val == -536870913<br> - rs1_w0_val == 134217728<br>                                                                                                                                                                                                                  |[0x800007f8]:KMXDA32 zero, s2, a3<br> [0x800007fc]:sd zero, 128(sp)<br> |
|  27|[0x800033b0]<br>0x0000000000027E06|- rs1 : x28<br> - rs2 : x4<br> - rd : x15<br> - rs2_w1_val == -16385<br> - rs2_w0_val == 4<br> - rs1_w1_val == -129<br>                                                                                                                                                                                                                                |[0x80000820]:KMXDA32 a5, t3, tp<br> [0x80000824]:sd a5, 144(sp)<br>     |
|  28|[0x800033c0]<br>0xFFFFFFFF77DF0000|- rs1 : x29<br> - rs2 : x22<br> - rd : x30<br> - rs2_w1_val == -2049<br> - rs2_w0_val == -1025<br> - rs1_w1_val == 2097152<br>                                                                                                                                                                                                                         |[0x80000848]:KMXDA32 t5, t4, s6<br> [0x8000084c]:sd t5, 160(sp)<br>     |
|  29|[0x800033d0]<br>0xFFFFFFFFEFFBFDE0|- rs1 : x6<br> - rs2 : x19<br> - rd : x29<br> - rs2_w1_val == -1025<br> - rs1_w0_val == 262144<br>                                                                                                                                                                                                                                                     |[0x8000086c]:KMXDA32 t4, t1, s3<br> [0x80000870]:sd t4, 176(sp)<br>     |
|  30|[0x800033e0]<br>0x0000000040FF8021|- rs1 : x31<br> - rs2 : x3<br> - rd : x8<br> - rs2_w1_val == -513<br> - rs2_w0_val == -33554433<br> - rs1_w1_val == -33<br> - rs1_w0_val == 32768<br>                                                                                                                                                                                                  |[0x80000894]:KMXDA32 fp, t6, gp<br> [0x80000898]:sd fp, 192(sp)<br>     |
|  31|[0x800033f0]<br>0xFFFFFFDFDFFFFFF0|- rs1 : x17<br> - rs2 : x23<br> - rd : x6<br> - rs2_w1_val == -257<br>                                                                                                                                                                                                                                                                                 |[0x800008b4]:KMXDA32 t1, a7, s7<br> [0x800008b8]:sd t1, 208(sp)<br>     |
|  32|[0x80003400]<br>0x000000000003FF06|- rs1 : x12<br> - rs2_w1_val == -129<br> - rs1_w0_val == 2<br>                                                                                                                                                                                                                                                                                         |[0x800008dc]:KMXDA32 a6, a2, t4<br> [0x800008e0]:sd a6, 224(sp)<br>     |
|  33|[0x80003410]<br>0xFFFFFFFDF8018000|- rs2 : x12<br> - rs2_w1_val == -65<br> - rs1_w1_val == 32768<br>                                                                                                                                                                                                                                                                                      |[0x80000900]:KMXDA32 s5, t4, a2<br> [0x80000904]:sd s5, 240(sp)<br>     |
|  34|[0x80003420]<br>0x0000000003008427|- rd : x27<br> - rs2_w1_val == -33<br> - rs1_w1_val == -8388609<br> - rs1_w0_val == -1025<br>                                                                                                                                                                                                                                                          |[0x80000924]:KMXDA32 s11, s3, a6<br> [0x80000928]:sd s11, 256(sp)<br>   |
|  35|[0x80003430]<br>0x0000800080240009|- rs2_w1_val == -9<br> - rs2_w0_val == -2147483648<br> - rs1_w1_val == -65537<br>                                                                                                                                                                                                                                                                      |[0x80000948]:KMXDA32 t6, t5, t4<br> [0x8000094c]:sd t6, 272(sp)<br>     |
|  36|[0x80003440]<br>0x000000000006FFF3|- rs2_w1_val == -5<br> - rs2_w0_val == -65537<br> - rs1_w0_val == 4<br>                                                                                                                                                                                                                                                                                |[0x80000970]:KMXDA32 t6, t5, t4<br> [0x80000974]:sd t6, 288(sp)<br>     |
|  37|[0x80003450]<br>0xFFFFFFFFFFFFFD9E|- rs2_w1_val == -3<br> - rs2_w0_val == 64<br>                                                                                                                                                                                                                                                                                                          |[0x80000994]:KMXDA32 t6, t5, t4<br> [0x80000998]:sd t6, 304(sp)<br>     |
|  38|[0x80003460]<br>0xFFFFFFFFFF7F7800|- rs2_w1_val == -2<br> - rs2_w0_val == 2048<br>                                                                                                                                                                                                                                                                                                        |[0x800009bc]:KMXDA32 t6, t5, t4<br> [0x800009c0]:sd t6, 320(sp)<br>     |
|  39|[0x80003470]<br>0xFFFFF8087FFE0000|- rs2_w1_val == -2147483648<br> - rs2_w0_val == -67108865<br> - rs1_w1_val == 131072<br> - rs1_w0_val == -17<br>                                                                                                                                                                                                                                       |[0x800009ec]:KMXDA32 t6, t5, t4<br> [0x800009f0]:sd t6, 336(sp)<br>     |
|  40|[0x80003480]<br>0xFFFEFFFFC8000000|- rs2_w1_val == 1073741824<br> - rs1_w1_val == 4194304<br>                                                                                                                                                                                                                                                                                             |[0x80000a1c]:KMXDA32 t6, t5, t4<br> [0x80000a20]:sd t6, 352(sp)<br>     |
|  41|[0x80003490]<br>0x0000028000840001|- rs2_w1_val == 536870912<br> - rs2_w0_val == -8388609<br> - rs1_w1_val == -262145<br> - rs1_w0_val == 1024<br>                                                                                                                                                                                                                                        |[0x80000a4c]:KMXDA32 t6, t5, t4<br> [0x80000a50]:sd t6, 368(sp)<br>     |
|  42|[0x800034a0]<br>0xFFFFFF2000000000|- rs2_w1_val == 268435456<br> - rs1_w1_val == 512<br>                                                                                                                                                                                                                                                                                                  |[0x80000a70]:KMXDA32 t6, t5, t4<br> [0x80000a74]:sd t6, 384(sp)<br>     |
|  43|[0x800034b0]<br>0x00000000FF7FFFE0|- rs2_w1_val == 67108864<br> - rs1_w0_val == 64<br>                                                                                                                                                                                                                                                                                                    |[0x80000aa0]:KMXDA32 t6, t5, t4<br> [0x80000aa4]:sd t6, 400(sp)<br>     |
|  44|[0x800034c0]<br>0xFFFFE7FFF8000000|- rs2_w1_val == 33554432<br>                                                                                                                                                                                                                                                                                                                           |[0x80000acc]:KMXDA32 t6, t5, t4<br> [0x80000ad0]:sd t6, 416(sp)<br>     |
|  45|[0x800034d0]<br>0xFFF100003F000000|- rs2_w1_val == 16777216<br>                                                                                                                                                                                                                                                                                                                           |[0x80000af4]:KMXDA32 t6, t5, t4<br> [0x80000af8]:sd t6, 432(sp)<br>     |
|  46|[0x800034e0]<br>0xFFFFFFFBFB000000|- rs2_w1_val == 8388608<br> - rs1_w1_val == 8388608<br> - rs1_w0_val == -9<br>                                                                                                                                                                                                                                                                         |[0x80000b28]:KMXDA32 t6, t5, t4<br> [0x80000b2c]:sd t6, 448(sp)<br>     |
|  47|[0x800034f0]<br>0xF5555555C0000000|- rs2_w1_val == 4194304<br> - rs2_w0_val == 536870912<br>                                                                                                                                                                                                                                                                                              |[0x80000b50]:KMXDA32 t6, t5, t4<br> [0x80000b54]:sd t6, 464(sp)<br>     |
|  48|[0x80003500]<br>0x000AAAAAAA9FCFFD|- rs2_w1_val == 2097152<br>                                                                                                                                                                                                                                                                                                                            |[0x80000b80]:KMXDA32 t6, t5, t4<br> [0x80000b84]:sd t6, 480(sp)<br>     |
|  49|[0x80003510]<br>0x00000000001FFE00|- rs2_w1_val == 1048576<br> - rs2_w0_val == -8193<br>                                                                                                                                                                                                                                                                                                  |[0x80000bb0]:KMXDA32 t6, t5, t4<br> [0x80000bb4]:sd t6, 496(sp)<br>     |
|  50|[0x80003520]<br>0x0000000020380000|- rs2_w1_val == 524288<br> - rs1_w1_val == 524288<br>                                                                                                                                                                                                                                                                                                  |[0x80000bd4]:KMXDA32 t6, t5, t4<br> [0x80000bd8]:sd t6, 512(sp)<br>     |
|  51|[0x80003530]<br>0x0000800008006001|- rs2_w1_val == 262144<br> - rs1_w1_val == -8193<br>                                                                                                                                                                                                                                                                                                   |[0x80000c04]:KMXDA32 t6, t5, t4<br> [0x80000c08]:sd t6, 528(sp)<br>     |
|  52|[0x80003540]<br>0x0000200100000000|- rs2_w1_val == 131072<br> - rs1_w1_val == 67108864<br> - rs1_w0_val == 268435456<br>                                                                                                                                                                                                                                                                  |[0x80000c28]:KMXDA32 t6, t5, t4<br> [0x80000c2c]:sd t6, 544(sp)<br>     |
|  53|[0x80003550]<br>0xFFFFFFFFC0020000|- rs2_w1_val == 65536<br> - rs2_w0_val == 268435456<br>                                                                                                                                                                                                                                                                                                |[0x80000c4c]:KMXDA32 t6, t5, t4<br> [0x80000c50]:sd t6, 560(sp)<br>     |
|  54|[0x80003560]<br>0xFFFEFFDFFDF00000|- rs1_w0_val == 33554432<br>                                                                                                                                                                                                                                                                                                                           |[0x80000c74]:KMXDA32 t6, t5, t4<br> [0x80000c78]:sd t6, 576(sp)<br>     |
|  55|[0x80003570]<br>0xD555555577000000|- rs1_w1_val == 1431655765<br> - rs1_w0_val == 16777216<br>                                                                                                                                                                                                                                                                                            |[0x80000c9c]:KMXDA32 t6, t5, t4<br> [0x80000ca0]:sd t6, 592(sp)<br>     |
|  56|[0x80003580]<br>0xFFFFDFFFFE800000|- rs2_w0_val == -1<br> - rs1_w0_val == 8388608<br>                                                                                                                                                                                                                                                                                                     |[0x80000cc4]:KMXDA32 t6, t5, t4<br> [0x80000cc8]:sd t6, 608(sp)<br>     |
|  57|[0x80003590]<br>0x000000823FFFFFF7|- rs1_w0_val == 2097152<br>                                                                                                                                                                                                                                                                                                                            |[0x80000cec]:KMXDA32 t6, t5, t4<br> [0x80000cf0]:sd t6, 624(sp)<br>     |
|  58|[0x800035a0]<br>0x0000000FFFFFFFC0|- rs1_w1_val == -1073741825<br> - rs1_w0_val == 1048576<br>                                                                                                                                                                                                                                                                                            |[0x80000d18]:KMXDA32 t6, t5, t4<br> [0x80000d1c]:sd t6, 640(sp)<br>     |
|  59|[0x800035b0]<br>0x3FFFFFFFFFF00000|- rs1_w1_val == -2147483648<br> - rs1_w0_val == 524288<br>                                                                                                                                                                                                                                                                                             |[0x80000d3c]:KMXDA32 t6, t5, t4<br> [0x80000d40]:sd t6, 656(sp)<br>     |
|  60|[0x800035c0]<br>0x0000FFFFFFDE0000|- rs2_w0_val == 524288<br> - rs1_w1_val == 536870912<br> - rs1_w0_val == 131072<br>                                                                                                                                                                                                                                                                    |[0x80000d64]:KMXDA32 t6, t5, t4<br> [0x80000d68]:sd t6, 672(sp)<br>     |
|  61|[0x800035d0]<br>0xFFFFFFBFFDFF8000|- rs1_w0_val == 8192<br>                                                                                                                                                                                                                                                                                                                               |[0x80000d90]:KMXDA32 t6, t5, t4<br> [0x80000d94]:sd t6, 688(sp)<br>     |
|  62|[0x800035e0]<br>0x00000000BFFFF000|- rs1_w1_val == 8192<br> - rs1_w0_val == 4096<br>                                                                                                                                                                                                                                                                                                      |[0x80000dc0]:KMXDA32 t6, t5, t4<br> [0x80000dc4]:sd t6, 704(sp)<br>     |
|  63|[0x800035f0]<br>0x0000000000000815|- rs2_w1_val == 1<br> - rs1_w1_val == -3<br> - rs1_w0_val == 2048<br>                                                                                                                                                                                                                                                                                  |[0x80000de8]:KMXDA32 t6, t5, t4<br> [0x80000dec]:sd t6, 720(sp)<br>     |
|  64|[0x80003600]<br>0xFF7FFFFFC1BFFF81|- rs1_w0_val == 128<br>                                                                                                                                                                                                                                                                                                                                |[0x80000e14]:KMXDA32 t6, t5, t4<br> [0x80000e18]:sd t6, 736(sp)<br>     |
|  65|[0x80003610]<br>0xFFFFF0007C000000|- rs1_w0_val == 32<br>                                                                                                                                                                                                                                                                                                                                 |[0x80000e40]:KMXDA32 t6, t5, t4<br> [0x80000e44]:sd t6, 752(sp)<br>     |
|  66|[0x80003620]<br>0x0000000008014005|- rs2_w0_val == -5<br> - rs1_w1_val == -16385<br> - rs1_w0_val == 16<br>                                                                                                                                                                                                                                                                               |[0x80000e6c]:KMXDA32 t6, t5, t4<br> [0x80000e70]:sd t6, 768(sp)<br>     |
|  67|[0x80003630]<br>0xFFFFFFFFFFBFFEE8|- rs1_w1_val == 16<br> - rs1_w0_val == 8<br>                                                                                                                                                                                                                                                                                                           |[0x80000e94]:KMXDA32 t6, t5, t4<br> [0x80000e98]:sd t6, 784(sp)<br>     |
|  68|[0x80003640]<br>0x0000000018000007|- rs1_w0_val == 1<br>                                                                                                                                                                                                                                                                                                                                  |[0x80000eb8]:KMXDA32 t6, t5, t4<br> [0x80000ebc]:sd t6, 800(sp)<br>     |
|  69|[0x80003650]<br>0x0000000000000000|- rs2_w1_val == -268435457<br> - rs1_w1_val == -5<br>                                                                                                                                                                                                                                                                                                  |[0x80000ed8]:KMXDA32 t6, t5, t4<br> [0x80000edc]:sd t6, 816(sp)<br>     |
|  70|[0x80003660]<br>0xFFFFFFFBFFFFFFFF|- rs1_w0_val == -1<br>                                                                                                                                                                                                                                                                                                                                 |[0x80000ef8]:KMXDA32 t6, t5, t4<br> [0x80000efc]:sd t6, 832(sp)<br>     |
|  71|[0x80003670]<br>0x00001000000C0003|- rs2_w1_val == 32768<br>                                                                                                                                                                                                                                                                                                                              |[0x80000f20]:KMXDA32 t6, t5, t4<br> [0x80000f24]:sd t6, 848(sp)<br>     |
|  72|[0x80003680]<br>0xFFFFFFFFFBFD7FF0|- rs2_w1_val == 16384<br> - rs2_w0_val == -4194305<br>                                                                                                                                                                                                                                                                                                 |[0x80000f48]:KMXDA32 t6, t5, t4<br> [0x80000f4c]:sd t6, 864(sp)<br>     |
|  73|[0x80003690]<br>0x0000000000002000|- rs2_w1_val == 8192<br>                                                                                                                                                                                                                                                                                                                               |[0x80000f68]:KMXDA32 t6, t5, t4<br> [0x80000f6c]:sd t6, 880(sp)<br>     |
|  74|[0x800036a0]<br>0x000000000002F003|- rs2_w1_val == 4096<br>                                                                                                                                                                                                                                                                                                                               |[0x80000f90]:KMXDA32 t6, t5, t4<br> [0x80000f94]:sd t6, 896(sp)<br>     |
|  75|[0x800036b0]<br>0xFFFFFFFFFE808000|- rs2_w1_val == 2048<br> - rs2_w0_val == 4194304<br>                                                                                                                                                                                                                                                                                                   |[0x80000fb4]:KMXDA32 t6, t5, t4<br> [0x80000fb8]:sd t6, 912(sp)<br>     |
|  76|[0x800036c0]<br>0xFFFFFFF7FBFFF400|- rs2_w1_val == 1024<br> - rs1_w0_val == -65537<br>                                                                                                                                                                                                                                                                                                    |[0x80000fe4]:KMXDA32 t6, t5, t4<br> [0x80000fe8]:sd t6, 928(sp)<br>     |
|  77|[0x800036d0]<br>0xC000000080200000|- rs2_w1_val == 512<br>                                                                                                                                                                                                                                                                                                                                |[0x8000100c]:KMXDA32 t6, t5, t4<br> [0x80001010]:sd t6, 944(sp)<br>     |
|  78|[0x800036e0]<br>0xFFFFFFFFFFFDFF40|- rs2_w1_val == 256<br> - rs1_w0_val == -513<br>                                                                                                                                                                                                                                                                                                       |[0x80001030]:KMXDA32 t6, t5, t4<br> [0x80001034]:sd t6, 960(sp)<br>     |
|  79|[0x800036f0]<br>0xFFFFFFFFFF3FFE00|- rs2_w1_val == 64<br>                                                                                                                                                                                                                                                                                                                                 |[0x8000105c]:KMXDA32 t6, t5, t4<br> [0x80001060]:sd t6, 976(sp)<br>     |
|  80|[0x80003700]<br>0xFFFFFFFBFFFFFFE0|- rs2_w1_val == 32<br> - rs2_w0_val == -513<br> - rs1_w0_val == -536870913<br>                                                                                                                                                                                                                                                                         |[0x80001080]:KMXDA32 t6, t5, t4<br> [0x80001084]:sd t6, 992(sp)<br>     |
|  81|[0x80003710]<br>0x00001FFFFFFFC080|- rs2_w1_val == 16<br> - rs1_w1_val == 16384<br>                                                                                                                                                                                                                                                                                                       |[0x800010a4]:KMXDA32 t6, t5, t4<br> [0x800010a8]:sd t6, 1008(sp)<br>    |
|  82|[0x80003720]<br>0x0000001FFFFFFF78|- rs2_w1_val == 8<br>                                                                                                                                                                                                                                                                                                                                  |[0x800010c8]:KMXDA32 t6, t5, t4<br> [0x800010cc]:sd t6, 1024(sp)<br>    |
|  83|[0x80003730]<br>0x0020000012000401|- rs2_w1_val == 2<br>                                                                                                                                                                                                                                                                                                                                  |[0x800010f0]:KMXDA32 t6, t5, t4<br> [0x800010f4]:sd t6, 1040(sp)<br>    |
|  84|[0x80003740]<br>0x0000000000C00000|- rs1_w0_val == -1048577<br>                                                                                                                                                                                                                                                                                                                           |[0x80001118]:KMXDA32 t6, t5, t4<br> [0x8000111c]:sd t6, 1056(sp)<br>    |
|  85|[0x80003750]<br>0x00000000000000AC|- rs2_w1_val == -1<br>                                                                                                                                                                                                                                                                                                                                 |[0x80001134]:KMXDA32 t6, t5, t4<br> [0x80001138]:sd t6, 1072(sp)<br>    |
|  86|[0x80003760]<br>0x00555555AB5554DF|- rs2_w0_val == -1431655766<br>                                                                                                                                                                                                                                                                                                                        |[0x80001160]:KMXDA32 t6, t5, t4<br> [0x80001164]:sd t6, 1088(sp)<br>    |
|  87|[0x80003770]<br>0xFFFFFFFA5555767C|- rs2_w0_val == 1431655765<br>                                                                                                                                                                                                                                                                                                                         |[0x80001188]:KMXDA32 t6, t5, t4<br> [0x8000118c]:sd t6, 1104(sp)<br>    |
|  88|[0x80003780]<br>0xFFF7FFFEFFDF0000|- rs2_w0_val == -1073741825<br>                                                                                                                                                                                                                                                                                                                        |[0x800011bc]:KMXDA32 t6, t5, t4<br> [0x800011c0]:sd t6, 1120(sp)<br>    |
|  89|[0x80003790]<br>0x0000007C00000401|- rs2_w0_val == -536870913<br> - rs1_w1_val == -1025<br>                                                                                                                                                                                                                                                                                               |[0x800011e8]:KMXDA32 t6, t5, t4<br> [0x800011ec]:sd t6, 1136(sp)<br>    |
|  90|[0x800037a0]<br>0xFFFFFFF800FFFF00|- rs2_w0_val == -134217729<br>                                                                                                                                                                                                                                                                                                                         |[0x80001210]:KMXDA32 t6, t5, t4<br> [0x80001214]:sd t6, 1152(sp)<br>    |
|  91|[0x800037b0]<br>0xFFFFFFFFF8BFFFF5|- rs2_w0_val == -16777217<br>                                                                                                                                                                                                                                                                                                                          |[0x80001238]:KMXDA32 t6, t5, t4<br> [0x8000123c]:sd t6, 1168(sp)<br>    |
|  92|[0x800037c0]<br>0xFFFFFFF7FFFD7C00|- rs2_w0_val == -1048577<br>                                                                                                                                                                                                                                                                                                                           |[0x80001260]:KMXDA32 t6, t5, t4<br> [0x80001264]:sd t6, 1184(sp)<br>    |
|  93|[0x800037d0]<br>0x0000000418000003|- rs2_w0_val == 131072<br> - rs1_w0_val == -3<br>                                                                                                                                                                                                                                                                                                      |[0x80001290]:KMXDA32 t6, t5, t4<br> [0x80001294]:sd t6, 1200(sp)<br>    |
|  94|[0x800037e0]<br>0xFF7FFFDFEFFF0000|- rs2_w0_val == 65536<br> - rs1_w1_val == -2097153<br>                                                                                                                                                                                                                                                                                                 |[0x800012bc]:KMXDA32 t6, t5, t4<br> [0x800012c0]:sd t6, 1216(sp)<br>    |
|  95|[0x800037f0]<br>0xEFFFFFFF7FFF8000|- rs2_w0_val == 32768<br>                                                                                                                                                                                                                                                                                                                              |[0x800012e4]:KMXDA32 t6, t5, t4<br> [0x800012e8]:sd t6, 1232(sp)<br>    |
|  96|[0x80003800]<br>0xFFFF8000001C0000|- rs2_w0_val == 16384<br>                                                                                                                                                                                                                                                                                                                              |[0x80001310]:KMXDA32 t6, t5, t4<br> [0x80001314]:sd t6, 1248(sp)<br>    |
|  97|[0x80003810]<br>0x00000000004000E7|- rs2_w0_val == 8192<br>                                                                                                                                                                                                                                                                                                                               |[0x80001334]:KMXDA32 t6, t5, t4<br> [0x80001338]:sd t6, 1264(sp)<br>    |
|  98|[0x80003820]<br>0x00000000001FFFE7|- rs2_w0_val == 1024<br> - rs1_w1_val == 2048<br>                                                                                                                                                                                                                                                                                                      |[0x8000135c]:KMXDA32 t6, t5, t4<br> [0x80001360]:sd t6, 1280(sp)<br>    |
|  99|[0x80003830]<br>0xFFFFFFFFFFE77FEA|- rs2_w0_val == 16<br>                                                                                                                                                                                                                                                                                                                                 |[0x80001388]:KMXDA32 t6, t5, t4<br> [0x8000138c]:sd t6, 1296(sp)<br>    |
| 100|[0x80003840]<br>0xFFFFFFFFF3FFFF75|- rs2_w0_val == 8<br> - rs1_w0_val == -67108865<br>                                                                                                                                                                                                                                                                                                    |[0x800013ac]:KMXDA32 t6, t5, t4<br> [0x800013b0]:sd t6, 1312(sp)<br>    |
| 101|[0x80003850]<br>0x0000000008800002|- rs2_w0_val == 1<br> - rs1_w1_val == 134217728<br> - rs1_w0_val == -4194305<br>                                                                                                                                                                                                                                                                       |[0x800013d8]:KMXDA32 t6, t5, t4<br> [0x800013dc]:sd t6, 1328(sp)<br>    |
| 102|[0x80003860]<br>0xFFBFFEFF00800202|- rs1_w1_val == 2147483647<br> - rs1_w0_val == 2147483647<br>                                                                                                                                                                                                                                                                                          |[0x80001404]:KMXDA32 t6, t5, t4<br> [0x80001408]:sd t6, 1344(sp)<br>    |
| 103|[0x80003870]<br>0xFFF7FFFFF0200007|- rs1_w1_val == -134217729<br>                                                                                                                                                                                                                                                                                                                         |[0x80001430]:KMXDA32 t6, t5, t4<br> [0x80001434]:sd t6, 1360(sp)<br>    |
| 104|[0x80003880]<br>0xFFFFDFFFFFF80050|- rs1_w1_val == -67108865<br>                                                                                                                                                                                                                                                                                                                          |[0x80001454]:KMXDA32 t6, t5, t4<br> [0x80001458]:sd t6, 1376(sp)<br>    |
| 105|[0x80003890]<br>0xFFFFFF0FFFFF8000|- rs1_w1_val == -33554433<br> - rs1_w0_val == 256<br>                                                                                                                                                                                                                                                                                                  |[0x80001480]:KMXDA32 t6, t5, t4<br> [0x80001484]:sd t6, 1392(sp)<br>    |
| 106|[0x800038a0]<br>0xF7FFFFFFB7FFFF80|- rs1_w1_val == -1048577<br> - rs1_w0_val == 1073741824<br>                                                                                                                                                                                                                                                                                            |[0x800014a8]:KMXDA32 t6, t5, t4<br> [0x800014ac]:sd t6, 1408(sp)<br>    |
| 107|[0x800038b0]<br>0x0000000000300106|- rs1_w1_val == -524289<br>                                                                                                                                                                                                                                                                                                                            |[0x800014d0]:KMXDA32 t6, t5, t4<br> [0x800014d4]:sd t6, 1424(sp)<br>    |
| 108|[0x800038c0]<br>0xFFFFFFFBFFF5FFFC|- rs1_w1_val == -131073<br>                                                                                                                                                                                                                                                                                                                            |[0x800014fc]:KMXDA32 t6, t5, t4<br> [0x80001500]:sd t6, 1440(sp)<br>    |
| 109|[0x800038d0]<br>0xFFFFFFBCC0000006|- rs2_w0_val == 1073741824<br> - rs1_w1_val == -257<br>                                                                                                                                                                                                                                                                                                |[0x80001524]:KMXDA32 t6, t5, t4<br> [0x80001528]:sd t6, 1456(sp)<br>    |
| 110|[0x800038e0]<br>0x0000000042000041|- rs1_w1_val == -65<br>                                                                                                                                                                                                                                                                                                                                |[0x8000154c]:KMXDA32 t6, t5, t4<br> [0x80001550]:sd t6, 1472(sp)<br>    |
| 111|[0x800038f0]<br>0xFFFFFFFFFFC04801|- rs1_w1_val == -9<br>                                                                                                                                                                                                                                                                                                                                 |[0x80001578]:KMXDA32 t6, t5, t4<br> [0x8000157c]:sd t6, 1488(sp)<br>    |
| 112|[0x80003900]<br>0xFFFFFFFFFFFFFFD2|- rs1_w1_val == -2<br>                                                                                                                                                                                                                                                                                                                                 |[0x8000159c]:KMXDA32 t6, t5, t4<br> [0x800015a0]:sd t6, 1504(sp)<br>    |
| 113|[0x80003910]<br>0xFFFFBFFFC0900000|- rs1_w1_val == 1073741824<br>                                                                                                                                                                                                                                                                                                                         |[0x800015cc]:KMXDA32 t6, t5, t4<br> [0x800015d0]:sd t6, 1520(sp)<br>    |
| 114|[0x80003920]<br>0xFF7FFFFFF1800003|- rs1_w1_val == 268435456<br> - rs1_w0_val == -8388609<br>                                                                                                                                                                                                                                                                                             |[0x800015f8]:KMXDA32 t6, t5, t4<br> [0x800015fc]:sd t6, 1536(sp)<br>    |
| 115|[0x80003930]<br>0xFFFFFFFC00000000|- rs2_w0_val == 2<br> - rs1_w1_val == 4096<br>                                                                                                                                                                                                                                                                                                         |[0x80001620]:KMXDA32 t6, t5, t4<br> [0x80001624]:sd t6, 1552(sp)<br>    |
| 116|[0x80003940]<br>0xFFFFFFFFEFFFA400|- rs1_w1_val == 1024<br>                                                                                                                                                                                                                                                                                                                               |[0x80001644]:KMXDA32 t6, t5, t4<br> [0x80001648]:sd t6, 1568(sp)<br>    |
| 117|[0x80003950]<br>0x0000000000028001|- rs1_w1_val == 64<br> - rs1_w0_val == -32769<br>                                                                                                                                                                                                                                                                                                      |[0x80001670]:KMXDA32 t6, t5, t4<br> [0x80001674]:sd t6, 1584(sp)<br>    |
| 118|[0x80003960]<br>0xFFFFFFFFFF0000BE|- rs1_w1_val == 8<br>                                                                                                                                                                                                                                                                                                                                  |[0x80001698]:KMXDA32 t6, t5, t4<br> [0x8000169c]:sd t6, 1600(sp)<br>    |
| 119|[0x80003970]<br>0xFFFFFFF7FFF7FFF8|- rs2_w0_val == -2<br> - rs1_w1_val == 4<br>                                                                                                                                                                                                                                                                                                           |[0x800016c4]:KMXDA32 t6, t5, t4<br> [0x800016c8]:sd t6, 1616(sp)<br>    |
| 120|[0x80003980]<br>0x0000000000002C00|- rs1_w1_val == 2<br>                                                                                                                                                                                                                                                                                                                                  |[0x800016e8]:KMXDA32 t6, t5, t4<br> [0x800016ec]:sd t6, 1632(sp)<br>    |
| 121|[0x80003990]<br>0xFFFFFFFFFFFBFC11|- rs1_w1_val == -1<br>                                                                                                                                                                                                                                                                                                                                 |[0x8000170c]:KMXDA32 t6, t5, t4<br> [0x80001710]:sd t6, 1648(sp)<br>    |
| 122|[0x800039a0]<br>0x00002AAB00005556|- rs1_w0_val == -1431655766<br>                                                                                                                                                                                                                                                                                                                        |[0x80001734]:KMXDA32 t6, t5, t4<br> [0x80001738]:sd t6, 1664(sp)<br>    |
| 123|[0x800039b0]<br>0x0202000040080001|- rs1_w0_val == -1073741825<br>                                                                                                                                                                                                                                                                                                                        |[0x8000175c]:KMXDA32 t6, t5, t4<br> [0x80001760]:sd t6, 1680(sp)<br>    |
| 124|[0x800039c0]<br>0xFFFF800070000004|- rs2_w0_val == -524289<br>                                                                                                                                                                                                                                                                                                                            |[0x8000178c]:KMXDA32 t6, t5, t4<br> [0x80001790]:sd t6, 1696(sp)<br>    |
| 125|[0x800039d0]<br>0xFEAA8AAA56A6AAAB|- rs1_w0_val == -134217729<br>                                                                                                                                                                                                                                                                                                                         |[0x800017c4]:KMXDA32 t6, t5, t4<br> [0x800017c8]:sd t6, 1712(sp)<br>    |
| 126|[0x800039e0]<br>0x0000000002000001|- rs1_w0_val == -33554433<br>                                                                                                                                                                                                                                                                                                                          |[0x800017f0]:KMXDA32 t6, t5, t4<br> [0x800017f4]:sd t6, 1728(sp)<br>    |
| 127|[0x800039f0]<br>0xFFFFFFBFFFF7C000|- rs1_w0_val == -16777217<br>                                                                                                                                                                                                                                                                                                                          |[0x80001810]:KMXDA32 t6, t5, t4<br> [0x80001814]:sd t6, 1744(sp)<br>    |
| 128|[0x80003a00]<br>0xFFFFFFFFBDFF7000|- rs2_w0_val == -32769<br>                                                                                                                                                                                                                                                                                                                             |[0x8000183c]:KMXDA32 t6, t5, t4<br> [0x80001840]:sd t6, 1760(sp)<br>    |
| 129|[0x80003a10]<br>0x000001000FF80FF9|- rs2_w0_val == -4097<br>                                                                                                                                                                                                                                                                                                                              |[0x8000186c]:KMXDA32 t6, t5, t4<br> [0x80001870]:sd t6, 1776(sp)<br>    |
| 130|[0x80003a20]<br>0xDFFFFFBFC0000000|- rs1_w0_val == -2147483648<br> - rs2_w0_val == -257<br>                                                                                                                                                                                                                                                                                               |[0x80001898]:KMXDA32 t6, t5, t4<br> [0x8000189c]:sd t6, 1792(sp)<br>    |
| 131|[0x80003a30]<br>0x0000000000810088|- rs2_w0_val == -129<br>                                                                                                                                                                                                                                                                                                                               |[0x800018b4]:KMXDA32 t6, t5, t4<br> [0x800018b8]:sd t6, 1808(sp)<br>    |
| 132|[0x80003a40]<br>0x0000000020803044|- rs2_w0_val == -65<br>                                                                                                                                                                                                                                                                                                                                |[0x800018d8]:KMXDA32 t6, t5, t4<br> [0x800018dc]:sd t6, 1824(sp)<br>    |
| 133|[0x80003a50]<br>0x0000000000020007|- rs1_w0_val == -16385<br>                                                                                                                                                                                                                                                                                                                             |[0x80001900]:KMXDA32 t6, t5, t4<br> [0x80001904]:sd t6, 1840(sp)<br>    |
| 134|[0x80003a60]<br>0x0000000047FE0011|- rs1_w0_val == -8193<br>                                                                                                                                                                                                                                                                                                                              |[0x80001930]:KMXDA32 t6, t5, t4<br> [0x80001934]:sd t6, 1856(sp)<br>    |
| 135|[0x80003a70]<br>0x0000000001200009|- rs2_w0_val == -9<br>                                                                                                                                                                                                                                                                                                                                 |[0x80001958]:KMXDA32 t6, t5, t4<br> [0x8000195c]:sd t6, 1872(sp)<br>    |
| 136|[0x80003a80]<br>0x0000000009080081|- rs1_w0_val == -129<br>                                                                                                                                                                                                                                                                                                                               |[0x80001984]:KMXDA32 t6, t5, t4<br> [0x80001988]:sd t6, 1888(sp)<br>    |
| 137|[0x80003a90]<br>0xFFFFFFFFA07FFC41|- rs1_w0_val == -65<br>                                                                                                                                                                                                                                                                                                                                |[0x800019b0]:KMXDA32 t6, t5, t4<br> [0x800019b4]:sd t6, 1904(sp)<br>    |
| 138|[0x80003aa0]<br>0x000001FFF7FFFFF0|- rs2_w0_val == 33554432<br>                                                                                                                                                                                                                                                                                                                           |[0x800019d8]:KMXDA32 t6, t5, t4<br> [0x800019dc]:sd t6, 1920(sp)<br>    |
| 139|[0x80003ab0]<br>0x0000000000000031|- rs1_w0_val == -2<br>                                                                                                                                                                                                                                                                                                                                 |[0x800019fc]:KMXDA32 t6, t5, t4<br> [0x80001a00]:sd t6, 1936(sp)<br>    |
| 140|[0x80003ac0]<br>0x000000FFEBFFFFFB|- rs2_w0_val == 8388608<br>                                                                                                                                                                                                                                                                                                                            |[0x80001a24]:KMXDA32 t6, t5, t4<br> [0x80001a28]:sd t6, 1952(sp)<br>    |
| 141|[0x80003ad0]<br>0xFFF5575556420001|- rs2_w0_val == 2097152<br>                                                                                                                                                                                                                                                                                                                            |[0x80001a58]:KMXDA32 t6, t5, t4<br> [0x80001a5c]:sd t6, 1968(sp)<br>    |
| 142|[0x80003ae0]<br>0xFFFFE3FFFFF00000|- rs2_w0_val == 1048576<br>                                                                                                                                                                                                                                                                                                                            |[0x80001a88]:KMXDA32 t6, t5, t4<br> [0x80001a8c]:sd t6, 1984(sp)<br>    |
| 143|[0x80003af0]<br>0xFFFBFFDFFB800000|- rs1_w0_val == 67108864<br>                                                                                                                                                                                                                                                                                                                           |[0x80001ab0]:KMXDA32 t6, t5, t4<br> [0x80001ab4]:sd t6, 2000(sp)<br>    |
| 144|[0x80003b00]<br>0xFFFFFFFFFC7FFFF6|- rs1_w1_val == 1<br>                                                                                                                                                                                                                                                                                                                                  |[0x80001ad4]:KMXDA32 t6, t5, t4<br> [0x80001ad8]:sd t6, 2016(sp)<br>    |
