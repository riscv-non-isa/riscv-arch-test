
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001890')]      |
| SIG_REGION                | [('0x80003210', '0x80003e90', '400 dwords')]      |
| COV_LABELS                | ukmsr64      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/ukmsr64-01.S    |
| Total Number of coverpoints| 367     |
| Total Coverpoints Hit     | 361      |
| Total Signature Updates   | 266      |
| STAT1                     | 131      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 133     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001860]:UKMSR64 t6, t5, t4
      [0x80001864]:sd t6, 672(t0)
 -- Signature Address: 0x80003e58 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : ukmsr64
      - rs1 : x30
      - rs2 : x29
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == 4294901759
      - rs2_w0_val == 134217728
      - rs1_w1_val == 4294901759
      - rs1_w0_val == 4292870143




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80001884]:UKMSR64 t6, t5, t4
      [0x80001888]:sd t6, 696(t0)
 -- Signature Address: 0x80003e70 Data: 0x0000000000000000
 -- Redundant Coverpoints hit by the op
      - opcode : ukmsr64
      - rs1 : x30
      - rs2 : x29
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w1_val == 4294967279
      - rs2_w0_val == 3221225471
      - rs1_w1_val == 512






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ukmsr64', 'rs1 : x4', 'rs2 : x4', 'rd : x28', 'rs1 == rs2 != rd', 'rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 4294967293', 'rs2_w0_val == 4026531839', 'rs1_w1_val == 4294967293', 'rs1_w0_val == 4026531839']
Last Code Sequence : 
	-[0x800003b8]:UKMSR64 t3, tp, tp
	-[0x800003bc]:sd t3, 0(a1)
Current Store : [0x800003c0] : sd tp, 8(a1) -- Store: [0x80003218]:0xFFFFFFFDEFFFFFFF




Last Coverpoint : ['rs1 : x24', 'rs2 : x24', 'rd : x24', 'rs1 == rs2 == rd', 'rs2_w1_val == 4294901759', 'rs2_w0_val == 134217728', 'rs1_w1_val == 4294901759', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x800003e0]:UKMSR64 s8, s8, s8
	-[0x800003e4]:sd s8, 24(a1)
Current Store : [0x800003e8] : sd s8, 32(a1) -- Store: [0x80003230]:0x0000000000000000




Last Coverpoint : ['rs1 : x21', 'rs2 : x5', 'rd : x2', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs2_w0_val == 4294967167', 'rs1_w0_val == 4294967167']
Last Code Sequence : 
	-[0x80000404]:UKMSR64 sp, s5, t0
	-[0x80000408]:sd sp, 48(a1)
Current Store : [0x8000040c] : sd s5, 56(a1) -- Store: [0x80003248]:0x0000000BFFFFFF7F




Last Coverpoint : ['rs1 : x8', 'rs2 : x26', 'rd : x8', 'rs1 == rd != rs2', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 2863311530', 'rs2_w0_val == 524288', 'rs1_w1_val == 2', 'rs1_w0_val == 4294967287']
Last Code Sequence : 
	-[0x80000430]:UKMSR64 fp, fp, s10
	-[0x80000434]:sd fp, 72(a1)
Current Store : [0x80000438] : sd fp, 80(a1) -- Store: [0x80003260]:0x0000000000000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x22', 'rd : x22', 'rs2 == rd != rs1', 'rs2_w1_val == 1431655765', 'rs2_w0_val == 4294966271', 'rs1_w1_val == 4194304', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x8000045c]:UKMSR64 s6, s7, s6
	-[0x80000460]:sd s6, 96(a1)
Current Store : [0x80000464] : sd s7, 104(a1) -- Store: [0x80003278]:0x0040000000004000




Last Coverpoint : ['rs1 : x7', 'rs2 : x28', 'rd : x16', 'rs2_w1_val == 2147483647', 'rs2_w0_val == 4293918719', 'rs1_w1_val == 524288', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000494]:UKMSR64 a6, t2, t3
	-[0x80000498]:sd a6, 120(a1)
Current Store : [0x8000049c] : sd t2, 128(a1) -- Store: [0x80003290]:0x0008000055555555




Last Coverpoint : ['rs1 : x6', 'rs2 : x25', 'rd : x12', 'rs2_w1_val == 3221225471', 'rs2_w0_val == 33554432', 'rs1_w1_val == 64', 'rs1_w0_val == 4290772991']
Last Code Sequence : 
	-[0x800004c0]:UKMSR64 a2, t1, s9
	-[0x800004c4]:sd a2, 144(a1)
Current Store : [0x800004c8] : sd t1, 152(a1) -- Store: [0x800032a8]:0x00000040FFBFFFFF




Last Coverpoint : ['rs1 : x28', 'rs2 : x8', 'rd : x30', 'rs2_w1_val == 3758096383', 'rs2_w0_val == 4294967263', 'rs1_w1_val == 4294959103', 'rs1_w0_val == 4294705151']
Last Code Sequence : 
	-[0x800004e8]:UKMSR64 t5, t3, fp
	-[0x800004ec]:sd t5, 168(a1)
Current Store : [0x800004f0] : sd t3, 176(a1) -- Store: [0x800032c0]:0xFFFFDFFFFFFBFFFF




Last Coverpoint : ['rs1 : x16', 'rs2 : x17', 'rd : x14', 'rs2_w1_val == 4026531839', 'rs2_w0_val == 4278190079']
Last Code Sequence : 
	-[0x80000514]:UKMSR64 a4, a6, a7
	-[0x80000518]:sd a4, 192(a1)
Current Store : [0x8000051c] : sd a6, 200(a1) -- Store: [0x800032d8]:0x000000070000000C




Last Coverpoint : ['rs1 : x12', 'rs2 : x15', 'rd : x10', 'rs2_w1_val == 4160749567', 'rs2_w0_val == 4294967295', 'rs1_w1_val == 4227858431']
Last Code Sequence : 
	-[0x8000053c]:UKMSR64 a0, a2, a5
	-[0x80000540]:sd a0, 216(a1)
Current Store : [0x80000544] : sd a2, 224(a1) -- Store: [0x800032f0]:0xFBFFFFFF00000006




Last Coverpoint : ['rs1 : x26', 'rs2 : x23', 'rd : x6', 'rs2_w1_val == 4227858431', 'rs1_w1_val == 4294967291', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000564]:UKMSR64 t1, s10, s7
	-[0x80000568]:sd t1, 240(a1)
Current Store : [0x8000056c] : sd s10, 248(a1) -- Store: [0x80003308]:0xFFFFFFFB00000002




Last Coverpoint : ['rs1 : x17', 'rs2 : x7', 'rd : x18', 'rs2_w1_val == 4261412863', 'rs2_w0_val == 4294967279', 'rs1_w1_val == 4294967279', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000588]:UKMSR64 s2, a7, t2
	-[0x8000058c]:sd s2, 264(a1)
Current Store : [0x80000590] : sd a7, 272(a1) -- Store: [0x80003320]:0xFFFFFFEF00080000




Last Coverpoint : ['rs1 : x25', 'rs2 : x0', 'rd : x4', 'rs2_w1_val == 0', 'rs2_w0_val == 0', 'rs1_w1_val == 32']
Last Code Sequence : 
	-[0x800005b0]:UKMSR64 tp, s9, zero
	-[0x800005b4]:sd tp, 288(a1)
Current Store : [0x800005b8] : sd s9, 296(a1) -- Store: [0x80003338]:0x000000200000000B




Last Coverpoint : ['rs1 : x20', 'rs2 : x9', 'rd : x26', 'rs2_w1_val == 4286578687', 'rs2_w0_val == 536870912', 'rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x800005d4]:UKMSR64 s10, s4, s1
	-[0x800005d8]:sd s10, 312(a1)
Current Store : [0x800005dc] : sd s4, 320(a1) -- Store: [0x80003350]:0x0000400000000012




Last Coverpoint : ['rs1 : x18', 'rs2 : x13', 'rd : x20', 'rs2_w1_val == 4290772991', 'rs1_w1_val == 4292870143']
Last Code Sequence : 
	-[0x800005fc]:UKMSR64 s4, s2, a3
	-[0x80000600]:sd s4, 336(a1)
Current Store : [0x80000604] : sd s2, 344(a1) -- Store: [0x80003368]:0xFFDFFFFF00000007




Last Coverpoint : ['rs1 : x5', 'rs2 : x3', 'rs2_w1_val == 4292870143', 'rs2_w0_val == 4294934527', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000628]:UKMSR64 s7, t0, gp
	-[0x8000062c]:sd s7, 360(a1)
Current Store : [0x80000630] : sd t0, 368(a1) -- Store: [0x80003380]:0xFFFFFFEF00200000




Last Coverpoint : ['rs1 : x1', 'rs2 : x29', 'rs2_w1_val == 4293918719', 'rs2_w0_val == 67108864', 'rs1_w1_val == 2097152']
Last Code Sequence : 
	-[0x8000064c]:UKMSR64 a3, ra, t4
	-[0x80000650]:sd a3, 384(a1)
Current Store : [0x80000654] : sd ra, 392(a1) -- Store: [0x80003398]:0x0020000000000009




Last Coverpoint : ['rs1 : x2', 'rs2 : x11', 'rs2_w1_val == 4294443007', 'rs2_w0_val == 4290772991', 'rs1_w1_val == 4294966271', 'rs1_w0_val == 4294967279']
Last Code Sequence : 
	-[0x8000067c]:UKMSR64 s2, sp, a1
	-[0x80000680]:sd s2, 0(t0)
Current Store : [0x80000684] : sd sp, 8(t0) -- Store: [0x800033b0]:0xFFFFFBFFFFFFFFEF




Last Coverpoint : ['rs1 : x27', 'rs2 : x31', 'rs2_w1_val == 4294705151', 'rs2_w0_val == 4294967291', 'rs1_w1_val == 4261412863', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x800006a8]:UKMSR64 s7, s11, t6
	-[0x800006ac]:sd s7, 24(t0)
Current Store : [0x800006b0] : sd s11, 32(t0) -- Store: [0x800033c8]:0xFDFFFFFF00040000




Last Coverpoint : ['rs1 : x15', 'rs2 : x16', 'rs1_w0_val == 0', 'rs2_w1_val == 4294836223', 'rs1_w1_val == 67108864']
Last Code Sequence : 
	-[0x800006cc]:UKMSR64 a3, a5, a6
	-[0x800006d0]:sd a3, 48(t0)
Current Store : [0x800006d4] : sd a5, 56(t0) -- Store: [0x800033e0]:0x0400000000000000




Last Coverpoint : ['rs1 : x10', 'rs2 : x2', 'rs2_w1_val == 4294934527', 'rs2_w0_val == 2863311530', 'rs1_w1_val == 4293918719']
Last Code Sequence : 
	-[0x800006fc]:UKMSR64 a3, a0, sp
	-[0x80000700]:sd a3, 72(t0)
Current Store : [0x80000704] : sd a0, 80(t0) -- Store: [0x800033f8]:0xFFEFFFFF08000000




Last Coverpoint : ['rs1 : x13', 'rs2 : x19', 'rs2_w1_val == 4294950911', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x80000724]:UKMSR64 s10, a3, s3
	-[0x80000728]:sd s10, 96(t0)
Current Store : [0x8000072c] : sd a3, 104(t0) -- Store: [0x80003410]:0xFFEFFFFF04000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x1', 'rs2_w1_val == 4294959103', 'rs1_w1_val == 4294705151', 'rs1_w0_val == 4261412863']
Last Code Sequence : 
	-[0x8000074c]:UKMSR64 s10, t4, ra
	-[0x80000750]:sd s10, 120(t0)
Current Store : [0x80000754] : sd t4, 128(t0) -- Store: [0x80003428]:0xFFFBFFFFFDFFFFFF




Last Coverpoint : ['rs1 : x30', 'rs2 : x14', 'rs2_w1_val == 4294963199', 'rs2_w0_val == 2', 'rs1_w1_val == 8', 'rs1_w0_val == 4294934527']
Last Code Sequence : 
	-[0x80000778]:UKMSR64 a7, t5, a4
	-[0x8000077c]:sd a7, 144(t0)
Current Store : [0x80000780] : sd t5, 152(t0) -- Store: [0x80003440]:0x00000008FFFF7FFF




Last Coverpoint : ['rs1 : x14', 'rs2 : x20', 'rs2_w1_val == 4294965247', 'rs1_w1_val == 4294967039', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x800007a0]:UKMSR64 a6, a4, s4
	-[0x800007a4]:sd a6, 168(t0)
Current Store : [0x800007a8] : sd a4, 176(t0) -- Store: [0x80003458]:0xFFFFFEFF00000001




Last Coverpoint : ['rs1 : x22', 'rs2 : x12', 'rs2_w1_val == 4294966271', 'rs2_w0_val == 2147483648', 'rs1_w1_val == 2147483647', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x800007c8]:UKMSR64 a1, s6, a2
	-[0x800007cc]:sd a1, 192(t0)
Current Store : [0x800007d0] : sd s6, 200(t0) -- Store: [0x80003470]:0x7FFFFFFF00000100




Last Coverpoint : ['rs1 : x31', 'rs2 : x21', 'rs2_w1_val == 4294966783', 'rs1_w1_val == 262144']
Last Code Sequence : 
	-[0x800007ec]:UKMSR64 s3, t6, s5
	-[0x800007f0]:sd s3, 216(t0)
Current Store : [0x800007f4] : sd t6, 224(t0) -- Store: [0x80003488]:0x000400000000000F




Last Coverpoint : ['rs1 : x11', 'rs2 : x10', 'rs2_w1_val == 4294967039', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000810]:UKMSR64 tp, a1, a0
	-[0x80000814]:sd tp, 240(t0)
Current Store : [0x80000818] : sd a1, 248(t0) -- Store: [0x800034a0]:0x0008000002000000




Last Coverpoint : ['rs1 : x9', 'rs2 : x6', 'rs2_w1_val == 4294967167', 'rs2_w0_val == 4294967287', 'rs1_w1_val == 4294934527', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x8000083c]:UKMSR64 t2, s1, t1
	-[0x80000840]:sd t2, 264(t0)
Current Store : [0x80000844] : sd s1, 272(t0) -- Store: [0x800034b8]:0xFFFF7FFF00008000




Last Coverpoint : ['rs1 : x19', 'rs2 : x30', 'rs2_w1_val == 4294967231', 'rs2_w0_val == 128', 'rs1_w1_val == 2048']
Last Code Sequence : 
	-[0x80000860]:UKMSR64 t1, s3, t5
	-[0x80000864]:sd t1, 288(t0)
Current Store : [0x80000868] : sd s3, 296(t0) -- Store: [0x800034d0]:0x0000080000000013




Last Coverpoint : ['rs1 : x3', 'rs2 : x18', 'rs2_w1_val == 4294967263', 'rs2_w0_val == 8', 'rs1_w1_val == 4286578687', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000888]:UKMSR64 s5, gp, s2
	-[0x8000088c]:sd s5, 312(t0)
Current Store : [0x80000890] : sd gp, 320(t0) -- Store: [0x800034e8]:0xFF7FFFFF00000004




Last Coverpoint : ['rs1 : x0', 'rs2 : x27', 'rs2_w1_val == 4294967279', 'rs2_w0_val == 3221225471', 'rs1_w1_val == 0']
Last Code Sequence : 
	-[0x800008ac]:UKMSR64 t5, zero, s11
	-[0x800008b0]:sd t5, 336(t0)
Current Store : [0x800008b4] : sd zero, 344(t0) -- Store: [0x80003500]:0x0000000000000000




Last Coverpoint : ['rs2_w1_val == 4294967287', 'rs1_w1_val == 1048576', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x800008d4]:UKMSR64 t6, t5, t4
	-[0x800008d8]:sd t6, 360(t0)
Current Store : [0x800008dc] : sd t5, 368(t0) -- Store: [0x80003518]:0x0010000000000400




Last Coverpoint : ['rs2_w1_val == 4294967291', 'rs2_w0_val == 262144', 'rs1_w1_val == 4294963199']
Last Code Sequence : 
	-[0x800008fc]:UKMSR64 t6, t5, t4
	-[0x80000900]:sd t6, 384(t0)
Current Store : [0x80000904] : sd t5, 392(t0) -- Store: [0x80003530]:0xFFFFEFFF0000000D




Last Coverpoint : ['rs2_w1_val == 4294967294', 'rs1_w0_val == 4294443007']
Last Code Sequence : 
	-[0x80000928]:UKMSR64 t6, t5, t4
	-[0x8000092c]:sd t6, 408(t0)
Current Store : [0x80000930] : sd t5, 416(t0) -- Store: [0x80003548]:0x0000000BFFF7FFFF




Last Coverpoint : ['rs2_w1_val == 2147483648', 'rs1_w1_val == 4294967287']
Last Code Sequence : 
	-[0x80000954]:UKMSR64 t6, t5, t4
	-[0x80000958]:sd t6, 432(t0)
Current Store : [0x8000095c] : sd t5, 440(t0) -- Store: [0x80003560]:0xFFFFFFF7FFBFFFFF




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs2_w0_val == 4', 'rs1_w0_val == 4292870143']
Last Code Sequence : 
	-[0x8000097c]:UKMSR64 t6, t5, t4
	-[0x80000980]:sd t6, 456(t0)
Current Store : [0x80000984] : sd t5, 464(t0) -- Store: [0x80003578]:0xFFFEFFFFFFDFFFFF




Last Coverpoint : ['rs2_w1_val == 536870912']
Last Code Sequence : 
	-[0x800009a0]:UKMSR64 t6, t5, t4
	-[0x800009a4]:sd t6, 480(t0)
Current Store : [0x800009a8] : sd t5, 488(t0) -- Store: [0x80003590]:0x0000000800000007




Last Coverpoint : ['rs2_w1_val == 268435456', 'rs1_w1_val == 2863311530', 'rs1_w0_val == 4294966271']
Last Code Sequence : 
	-[0x800009d4]:UKMSR64 t6, t5, t4
	-[0x800009d8]:sd t6, 504(t0)
Current Store : [0x800009dc] : sd t5, 512(t0) -- Store: [0x800035a8]:0xAAAAAAAAFFFFFBFF




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs2_w0_val == 2147483647', 'rs1_w0_val == 4294967231']
Last Code Sequence : 
	-[0x800009fc]:UKMSR64 t6, t5, t4
	-[0x80000a00]:sd t6, 528(t0)
Current Store : [0x80000a04] : sd t5, 536(t0) -- Store: [0x800035c0]:0x00000008FFFFFFBF




Last Coverpoint : ['rs2_w1_val == 67108864', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000a20]:UKMSR64 t6, t5, t4
	-[0x80000a24]:sd t6, 552(t0)
Current Store : [0x80000a28] : sd t5, 560(t0) -- Store: [0x800035d8]:0x0000000900400000




Last Coverpoint : ['rs2_w1_val == 33554432', 'rs2_w0_val == 4261412863', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000a4c]:UKMSR64 t6, t5, t4
	-[0x80000a50]:sd t6, 576(t0)
Current Store : [0x80000a54] : sd t5, 584(t0) -- Store: [0x800035f0]:0x0000000A00000040




Last Coverpoint : ['rs2_w1_val == 16777216']
Last Code Sequence : 
	-[0x80000a74]:UKMSR64 t6, t5, t4
	-[0x80000a78]:sd t6, 600(t0)
Current Store : [0x80000a7c] : sd t5, 608(t0) -- Store: [0x80003608]:0x7FFFFFFF0000000A




Last Coverpoint : ['rs2_w1_val == 8388608', 'rs1_w1_val == 4294950911']
Last Code Sequence : 
	-[0x80000aa0]:UKMSR64 t6, t5, t4
	-[0x80000aa4]:sd t6, 624(t0)
Current Store : [0x80000aa8] : sd t5, 632(t0) -- Store: [0x80003620]:0xFFFFBFFF00400000




Last Coverpoint : ['rs2_w1_val == 4194304', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000ac8]:UKMSR64 t6, t5, t4
	-[0x80000acc]:sd t6, 648(t0)
Current Store : [0x80000ad0] : sd t5, 656(t0) -- Store: [0x80003638]:0xFFDFFFFF10000000




Last Coverpoint : ['rs2_w1_val == 2097152', 'rs1_w1_val == 256']
Last Code Sequence : 
	-[0x80000aec]:UKMSR64 t6, t5, t4
	-[0x80000af0]:sd t6, 672(t0)
Current Store : [0x80000af4] : sd t5, 680(t0) -- Store: [0x80003650]:0x00000100FFFFFFF7




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs2_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000b10]:UKMSR64 t6, t5, t4
	-[0x80000b14]:sd t6, 696(t0)
Current Store : [0x80000b18] : sd t5, 704(t0) -- Store: [0x80003668]:0x0000001200000003




Last Coverpoint : ['rs2_w1_val == 524288']
Last Code Sequence : 
	-[0x80000b34]:UKMSR64 t6, t5, t4
	-[0x80000b38]:sd t6, 720(t0)
Current Store : [0x80000b3c] : sd t5, 728(t0) -- Store: [0x80003680]:0x0000002000004000




Last Coverpoint : ['rs2_w1_val == 262144', 'rs1_w1_val == 3758096383']
Last Code Sequence : 
	-[0x80000b58]:UKMSR64 t6, t5, t4
	-[0x80000b5c]:sd t6, 744(t0)
Current Store : [0x80000b60] : sd t5, 752(t0) -- Store: [0x80003698]:0xDFFFFFFFFFFFFFEF




Last Coverpoint : ['rs2_w1_val == 131072', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000b78]:UKMSR64 t6, t5, t4
	-[0x80000b7c]:sd t6, 768(t0)
Current Store : [0x80000b80] : sd t5, 776(t0) -- Store: [0x800036b0]:0xFFFFFEFF40000000




Last Coverpoint : ['rs2_w1_val == 65536']
Last Code Sequence : 
	-[0x80000b94]:UKMSR64 t6, t5, t4
	-[0x80000b98]:sd t6, 792(t0)
Current Store : [0x80000b9c] : sd t5, 800(t0) -- Store: [0x800036c8]:0x0000000F10000000




Last Coverpoint : ['rs2_w1_val == 32768', 'rs1_w0_val == 4286578687']
Last Code Sequence : 
	-[0x80000bb8]:UKMSR64 t6, t5, t4
	-[0x80000bbc]:sd t6, 816(t0)
Current Store : [0x80000bc0] : sd t5, 824(t0) -- Store: [0x800036e0]:0x00000003FF7FFFFF




Last Coverpoint : ['rs2_w1_val == 16384', 'rs1_w1_val == 8192', 'rs1_w0_val == 4278190079']
Last Code Sequence : 
	-[0x80000be4]:UKMSR64 t6, t5, t4
	-[0x80000be8]:sd t6, 840(t0)
Current Store : [0x80000bec] : sd t5, 848(t0) -- Store: [0x800036f8]:0x00002000FEFFFFFF




Last Coverpoint : ['rs2_w0_val == 4096', 'rs1_w1_val == 128', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000c0c]:UKMSR64 t6, t5, t4
	-[0x80000c10]:sd t6, 864(t0)
Current Store : [0x80000c14] : sd t5, 872(t0) -- Store: [0x80003710]:0x0000008000020000




Last Coverpoint : ['rs2_w0_val == 4294959103', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000c38]:UKMSR64 t6, t5, t4
	-[0x80000c3c]:sd t6, 888(t0)
Current Store : [0x80000c40] : sd t5, 896(t0) -- Store: [0x80003728]:0x0400000000010000




Last Coverpoint : ['rs2_w0_val == 4294965247', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000c60]:UKMSR64 t6, t5, t4
	-[0x80000c64]:sd t6, 912(t0)
Current Store : [0x80000c68] : sd t5, 920(t0) -- Store: [0x80003740]:0x0000000600002000




Last Coverpoint : ['rs2_w0_val == 16777216', 'rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000c88]:UKMSR64 t6, t5, t4
	-[0x80000c8c]:sd t6, 936(t0)
Current Store : [0x80000c90] : sd t5, 944(t0) -- Store: [0x80003758]:0x0040000000001000




Last Coverpoint : ['rs2_w1_val == 32', 'rs1_w1_val == 33554432', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000cb4]:UKMSR64 t6, t5, t4
	-[0x80000cb8]:sd t6, 960(t0)
Current Store : [0x80000cbc] : sd t5, 968(t0) -- Store: [0x80003770]:0x0200000000000800




Last Coverpoint : ['rs2_w1_val == 4278190079', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000ce0]:UKMSR64 t6, t5, t4
	-[0x80000ce4]:sd t6, 984(t0)
Current Store : [0x80000ce8] : sd t5, 992(t0) -- Store: [0x80003788]:0x0000004000000200




Last Coverpoint : ['rs1_w0_val == 128']
Last Code Sequence : 
	-[0x80000d08]:UKMSR64 t6, t5, t4
	-[0x80000d0c]:sd t6, 1008(t0)
Current Store : [0x80000d10] : sd t5, 1016(t0) -- Store: [0x800037a0]:0x0000004000000080




Last Coverpoint : ['rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000d34]:UKMSR64 t6, t5, t4
	-[0x80000d38]:sd t6, 1032(t0)
Current Store : [0x80000d3c] : sd t5, 1040(t0) -- Store: [0x800037b8]:0xFFFF7FFF00000020




Last Coverpoint : ['rs1_w1_val == 4294965247', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000d60]:UKMSR64 t6, t5, t4
	-[0x80000d64]:sd t6, 1056(t0)
Current Store : [0x80000d68] : sd t5, 1064(t0) -- Store: [0x800037d0]:0xFFFFF7FF00000010




Last Coverpoint : ['rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000d8c]:UKMSR64 t6, t5, t4
	-[0x80000d90]:sd t6, 1080(t0)
Current Store : [0x80000d94] : sd t5, 1088(t0) -- Store: [0x800037e8]:0xFDFFFFFF00000008




Last Coverpoint : ['rs2_w0_val == 16384', 'rs1_w0_val == 4294967295']
Last Code Sequence : 
	-[0x80000db8]:UKMSR64 t6, t5, t4
	-[0x80000dbc]:sd t6, 1104(t0)
Current Store : [0x80000dc0] : sd t5, 1112(t0) -- Store: [0x80003800]:0x00000008FFFFFFFF




Last Coverpoint : ['rs2_w1_val == 8192', 'rs2_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000ddc]:UKMSR64 t6, t5, t4
	-[0x80000de0]:sd t6, 1128(t0)
Current Store : [0x80000de4] : sd t5, 1136(t0) -- Store: [0x80003818]:0xFFFEFFFFFFFFFFFF




Last Coverpoint : ['rs2_w1_val == 4096', 'rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x80000e00]:UKMSR64 t6, t5, t4
	-[0x80000e04]:sd t6, 1152(t0)
Current Store : [0x80000e08] : sd t5, 1160(t0) -- Store: [0x80003830]:0x000100000000000F




Last Coverpoint : ['rs2_w1_val == 2048']
Last Code Sequence : 
	-[0x80000e24]:UKMSR64 t6, t5, t4
	-[0x80000e28]:sd t6, 1176(t0)
Current Store : [0x80000e2c] : sd t5, 1184(t0) -- Store: [0x80003848]:0x00000100FFFFFBFF




Last Coverpoint : ['rs2_w1_val == 1024', 'rs1_w1_val == 512']
Last Code Sequence : 
	-[0x80000e48]:UKMSR64 t6, t5, t4
	-[0x80000e4c]:sd t6, 1200(t0)
Current Store : [0x80000e50] : sd t5, 1208(t0) -- Store: [0x80003860]:0x0000020000000007




Last Coverpoint : ['rs2_w1_val == 512', 'rs2_w0_val == 65536']
Last Code Sequence : 
	-[0x80000e6c]:UKMSR64 t6, t5, t4
	-[0x80000e70]:sd t6, 1224(t0)
Current Store : [0x80000e74] : sd t5, 1232(t0) -- Store: [0x80003878]:0x0000000800000400




Last Coverpoint : ['rs2_w1_val == 256', 'rs2_w0_val == 4160749567']
Last Code Sequence : 
	-[0x80000e94]:UKMSR64 t6, t5, t4
	-[0x80000e98]:sd t6, 1248(t0)
Current Store : [0x80000e9c] : sd t5, 1256(t0) -- Store: [0x80003890]:0x0000001200000008




Last Coverpoint : ['rs2_w1_val == 128', 'rs2_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000eb8]:UKMSR64 t6, t5, t4
	-[0x80000ebc]:sd t6, 1272(t0)
Current Store : [0x80000ec0] : sd t5, 1280(t0) -- Store: [0x800038a8]:0x000000060000000A




Last Coverpoint : ['rs2_w1_val == 64', 'rs2_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000ee4]:UKMSR64 t6, t5, t4
	-[0x80000ee8]:sd t6, 1296(t0)
Current Store : [0x80000eec] : sd t5, 1304(t0) -- Store: [0x800038c0]:0x0000001155555555




Last Coverpoint : ['rs2_w1_val == 16']
Last Code Sequence : 
	-[0x80000f08]:UKMSR64 t6, t5, t4
	-[0x80000f0c]:sd t6, 1320(t0)
Current Store : [0x80000f10] : sd t5, 1328(t0) -- Store: [0x800038d8]:0xFFFFFFFB00010000




Last Coverpoint : ['rs2_w1_val == 8', 'rs1_w0_val == 4294965247']
Last Code Sequence : 
	-[0x80000f30]:UKMSR64 t6, t5, t4
	-[0x80000f34]:sd t6, 1344(t0)
Current Store : [0x80000f38] : sd t5, 1352(t0) -- Store: [0x800038f0]:0x00000002FFFFF7FF




Last Coverpoint : ['rs2_w1_val == 4', 'rs1_w1_val == 131072']
Last Code Sequence : 
	-[0x80000f50]:UKMSR64 t6, t5, t4
	-[0x80000f54]:sd t6, 1368(t0)
Current Store : [0x80000f58] : sd t5, 1376(t0) -- Store: [0x80003908]:0x0002000000000012




Last Coverpoint : ['rs2_w1_val == 2', 'rs2_w0_val == 4294836223', 'rs1_w1_val == 4096', 'rs1_w0_val == 4294967263']
Last Code Sequence : 
	-[0x80000f7c]:UKMSR64 t6, t5, t4
	-[0x80000f80]:sd t6, 1392(t0)
Current Store : [0x80000f84] : sd t5, 1400(t0) -- Store: [0x80003920]:0x00001000FFFFFFDF




Last Coverpoint : ['rs2_w1_val == 1', 'rs1_w1_val == 1']
Last Code Sequence : 
	-[0x80000fa0]:UKMSR64 t6, t5, t4
	-[0x80000fa4]:sd t6, 1416(t0)
Current Store : [0x80000fa8] : sd t5, 1424(t0) -- Store: [0x80003938]:0x000000010000000C




Last Coverpoint : ['rs2_w1_val == 4294967295']
Last Code Sequence : 
	-[0x80000fc0]:UKMSR64 t6, t5, t4
	-[0x80000fc4]:sd t6, 1440(t0)
Current Store : [0x80000fc8] : sd t5, 1448(t0) -- Store: [0x80003950]:0x0000000200000010




Last Coverpoint : ['rs2_w0_val == 3758096383']
Last Code Sequence : 
	-[0x80000fe8]:UKMSR64 t6, t5, t4
	-[0x80000fec]:sd t6, 1464(t0)
Current Store : [0x80000ff0] : sd t5, 1472(t0) -- Store: [0x80003968]:0xFF7FFFFFFFFFFFDF




Last Coverpoint : ['rs2_w0_val == 4286578687', 'rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x80001010]:UKMSR64 t6, t5, t4
	-[0x80001014]:sd t6, 1488(t0)
Current Store : [0x80001018] : sd t5, 1496(t0) -- Store: [0x80003980]:0x0000800000002000




Last Coverpoint : ['rs2_w0_val == 4292870143']
Last Code Sequence : 
	-[0x80001038]:UKMSR64 t6, t5, t4
	-[0x8000103c]:sd t6, 1512(t0)
Current Store : [0x80001040] : sd t5, 1520(t0) -- Store: [0x80003998]:0x00000001FFFFFFFF




Last Coverpoint : ['rs2_w0_val == 4294443007', 'rs1_w0_val == 2863311530']
Last Code Sequence : 
	-[0x80001064]:UKMSR64 t6, t5, t4
	-[0x80001068]:sd t6, 1536(t0)
Current Store : [0x8000106c] : sd t5, 1544(t0) -- Store: [0x800039b0]:0x00000008AAAAAAAA




Last Coverpoint : ['rs2_w0_val == 4294705151']
Last Code Sequence : 
	-[0x80001094]:UKMSR64 t6, t5, t4
	-[0x80001098]:sd t6, 1560(t0)
Current Store : [0x8000109c] : sd t5, 1568(t0) -- Store: [0x800039c8]:0x00000001EFFFFFFF




Last Coverpoint : ['rs2_w0_val == 4294901759', 'rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x800010c4]:UKMSR64 t6, t5, t4
	-[0x800010c8]:sd t6, 1584(t0)
Current Store : [0x800010cc] : sd t5, 1592(t0) -- Store: [0x800039e0]:0x5555555500002000




Last Coverpoint : ['rs2_w0_val == 4294950911', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x800010e8]:UKMSR64 t6, t5, t4
	-[0x800010ec]:sd t6, 1608(t0)
Current Store : [0x800010f0] : sd t5, 1616(t0) -- Store: [0x800039f8]:0x0000000A20000000




Last Coverpoint : ['rs2_w0_val == 4294963199', 'rs1_w1_val == 16777216']
Last Code Sequence : 
	-[0x80001114]:UKMSR64 t6, t5, t4
	-[0x80001118]:sd t6, 1632(t0)
Current Store : [0x8000111c] : sd t5, 1640(t0) -- Store: [0x80003a10]:0x0100000000008000




Last Coverpoint : ['rs2_w0_val == 4294966783', 'rs1_w1_val == 134217728']
Last Code Sequence : 
	-[0x80001138]:UKMSR64 t6, t5, t4
	-[0x8000113c]:sd t6, 1656(t0)
Current Store : [0x80001140] : sd t5, 1664(t0) -- Store: [0x80003a28]:0x080000000000000F




Last Coverpoint : ['rs2_w0_val == 1024']
Last Code Sequence : 
	-[0x8000115c]:UKMSR64 t6, t5, t4
	-[0x80001160]:sd t6, 1680(t0)
Current Store : [0x80001164] : sd t5, 1688(t0) -- Store: [0x80003a40]:0x0000000D0000000C




Last Coverpoint : ['rs2_w0_val == 512', 'rs1_w1_val == 8388608', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80001184]:UKMSR64 t6, t5, t4
	-[0x80001188]:sd t6, 1704(t0)
Current Store : [0x8000118c] : sd t5, 1712(t0) -- Store: [0x80003a58]:0x008000007FFFFFFF




Last Coverpoint : ['rs2_w0_val == 256']
Last Code Sequence : 
	-[0x800011ac]:UKMSR64 t6, t5, t4
	-[0x800011b0]:sd t6, 1728(t0)
Current Store : [0x800011b4] : sd t5, 1736(t0) -- Store: [0x80003a70]:0x00000800FFFFFBFF




Last Coverpoint : ['rs2_w0_val == 64', 'rs1_w0_val == 4294967293']
Last Code Sequence : 
	-[0x800011d0]:UKMSR64 t6, t5, t4
	-[0x800011d4]:sd t6, 1752(t0)
Current Store : [0x800011d8] : sd t5, 1760(t0) -- Store: [0x80003a88]:0x00000006FFFFFFFD




Last Coverpoint : ['rs2_w0_val == 32']
Last Code Sequence : 
	-[0x800011f4]:UKMSR64 t6, t5, t4
	-[0x800011f8]:sd t6, 1776(t0)
Current Store : [0x800011fc] : sd t5, 1784(t0) -- Store: [0x80003aa0]:0x0000000100080000




Last Coverpoint : ['rs2_w0_val == 16', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x8000121c]:UKMSR64 t6, t5, t4
	-[0x80001220]:sd t6, 1800(t0)
Current Store : [0x80001224] : sd t5, 1808(t0) -- Store: [0x80003ab8]:0x0400000000100000




Last Coverpoint : ['rs2_w0_val == 1', 'rs1_w0_val == 4294836223']
Last Code Sequence : 
	-[0x80001244]:UKMSR64 t6, t5, t4
	-[0x80001248]:sd t6, 1824(t0)
Current Store : [0x8000124c] : sd t5, 1832(t0) -- Store: [0x80003ad0]:0xFFFFFEFFFFFDFFFF




Last Coverpoint : ['rs1_w1_val == 3221225471']
Last Code Sequence : 
	-[0x80001270]:UKMSR64 t6, t5, t4
	-[0x80001274]:sd t6, 1848(t0)
Current Store : [0x80001278] : sd t5, 1856(t0) -- Store: [0x80003ae8]:0xBFFFFFFFFFDFFFFF




Last Coverpoint : ['rs1_w1_val == 4026531839']
Last Code Sequence : 
	-[0x80001298]:UKMSR64 t6, t5, t4
	-[0x8000129c]:sd t6, 1872(t0)
Current Store : [0x800012a0] : sd t5, 1880(t0) -- Store: [0x80003b00]:0xEFFFFFFF0000000F




Last Coverpoint : ['rs1_w1_val == 4160749567']
Last Code Sequence : 
	-[0x800012c0]:UKMSR64 t6, t5, t4
	-[0x800012c4]:sd t6, 1896(t0)
Current Store : [0x800012c8] : sd t5, 1904(t0) -- Store: [0x80003b18]:0xF7FFFFFF00000004




Last Coverpoint : ['rs1_w1_val == 4278190079', 'rs1_w0_val == 4294967291']
Last Code Sequence : 
	-[0x800012ec]:UKMSR64 t6, t5, t4
	-[0x800012f0]:sd t6, 1920(t0)
Current Store : [0x800012f4] : sd t5, 1928(t0) -- Store: [0x80003b30]:0xFEFFFFFFFFFFFFFB




Last Coverpoint : ['rs2_w0_val == 2097152', 'rs1_w1_val == 4290772991']
Last Code Sequence : 
	-[0x80001314]:UKMSR64 t6, t5, t4
	-[0x80001318]:sd t6, 1944(t0)
Current Store : [0x8000131c] : sd t5, 1952(t0) -- Store: [0x80003b48]:0xFFBFFFFF7FFFFFFF




Last Coverpoint : ['rs1_w1_val == 4294443007']
Last Code Sequence : 
	-[0x8000133c]:UKMSR64 t6, t5, t4
	-[0x80001340]:sd t6, 1968(t0)
Current Store : [0x80001344] : sd t5, 1976(t0) -- Store: [0x80003b60]:0xFFF7FFFF00000007




Last Coverpoint : ['rs1_w1_val == 4294836223']
Last Code Sequence : 
	-[0x80001368]:UKMSR64 t6, t5, t4
	-[0x8000136c]:sd t6, 1992(t0)
Current Store : [0x80001370] : sd t5, 2000(t0) -- Store: [0x80003b78]:0xFFFDFFFF00010000




Last Coverpoint : ['rs1_w1_val == 4294966783']
Last Code Sequence : 
	-[0x8000138c]:UKMSR64 t6, t5, t4
	-[0x80001390]:sd t6, 2016(t0)
Current Store : [0x80001394] : sd t5, 2024(t0) -- Store: [0x80003b90]:0xFFFFFDFF0000000B




Last Coverpoint : ['rs1_w1_val == 4294967167']
Last Code Sequence : 
	-[0x800013b8]:UKMSR64 t6, t5, t4
	-[0x800013bc]:sd t6, 0(t0)
Current Store : [0x800013c0] : sd t5, 8(t0) -- Store: [0x80003ba8]:0xFFFFFF7FFFFFFFFD




Last Coverpoint : ['rs1_w1_val == 4294967231', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x800013ec]:UKMSR64 t6, t5, t4
	-[0x800013f0]:sd t6, 0(t0)
Current Store : [0x800013f4] : sd t5, 8(t0) -- Store: [0x80003bc0]:0xFFFFFFBF01000000




Last Coverpoint : ['rs1_w1_val == 4294967263']
Last Code Sequence : 
	-[0x80001414]:UKMSR64 t6, t5, t4
	-[0x80001418]:sd t6, 24(t0)
Current Store : [0x8000141c] : sd t5, 32(t0) -- Store: [0x80003bd8]:0xFFFFFFDF55555555




Last Coverpoint : ['rs1_w0_val == 4294963199']
Last Code Sequence : 
	-[0x8000143c]:UKMSR64 t6, t5, t4
	-[0x80001440]:sd t6, 48(t0)
Current Store : [0x80001444] : sd t5, 56(t0) -- Store: [0x80003bf0]:0xFFFFFFFDFFFFEFFF




Last Coverpoint : ['rs1_w1_val == 4294967294']
Last Code Sequence : 
	-[0x80001460]:UKMSR64 t6, t5, t4
	-[0x80001464]:sd t6, 72(t0)
Current Store : [0x80001468] : sd t5, 80(t0) -- Store: [0x80003c08]:0xFFFFFFFEFFFFFFF7




Last Coverpoint : ['rs1_w1_val == 2147483648']
Last Code Sequence : 
	-[0x80001480]:UKMSR64 t6, t5, t4
	-[0x80001484]:sd t6, 96(t0)
Current Store : [0x80001488] : sd t5, 104(t0) -- Store: [0x80003c20]:0x8000000000000007




Last Coverpoint : ['rs2_w0_val == 32768', 'rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x800014b0]:UKMSR64 t6, t5, t4
	-[0x800014b4]:sd t6, 120(t0)
Current Store : [0x800014b8] : sd t5, 128(t0) -- Store: [0x80003c38]:0x0000040000000800




Last Coverpoint : ['rs1_w1_val == 16']
Last Code Sequence : 
	-[0x800014d4]:UKMSR64 t6, t5, t4
	-[0x800014d8]:sd t6, 144(t0)
Current Store : [0x800014dc] : sd t5, 152(t0) -- Store: [0x80003c50]:0x0000001000000010




Last Coverpoint : ['rs2_w0_val == 4294967293', 'rs1_w1_val == 4', 'rs1_w0_val == 4227858431']
Last Code Sequence : 
	-[0x800014fc]:UKMSR64 t6, t5, t4
	-[0x80001500]:sd t6, 168(t0)
Current Store : [0x80001504] : sd t5, 176(t0) -- Store: [0x80003c68]:0x00000004FBFFFFFF




Last Coverpoint : ['rs2_w0_val == 1048576', 'rs1_w1_val == 4294967295']
Last Code Sequence : 
	-[0x8000151c]:UKMSR64 t6, t5, t4
	-[0x80001520]:sd t6, 192(t0)
Current Store : [0x80001524] : sd t5, 200(t0) -- Store: [0x80003c80]:0xFFFFFFFFFDFFFFFF




Last Coverpoint : ['rs2_w0_val == 8192']
Last Code Sequence : 
	-[0x80001548]:UKMSR64 t6, t5, t4
	-[0x8000154c]:sd t6, 216(t0)
Current Store : [0x80001550] : sd t5, 224(t0) -- Store: [0x80003c98]:0x00000000FFDFFFFF




Last Coverpoint : ['rs1_w0_val == 3221225471']
Last Code Sequence : 
	-[0x80001574]:UKMSR64 t6, t5, t4
	-[0x80001578]:sd t6, 240(t0)
Current Store : [0x8000157c] : sd t5, 248(t0) -- Store: [0x80003cb0]:0x55555555BFFFFFFF




Last Coverpoint : ['rs1_w0_val == 3758096383']
Last Code Sequence : 
	-[0x800015a0]:UKMSR64 t6, t5, t4
	-[0x800015a4]:sd t6, 264(t0)
Current Store : [0x800015a8] : sd t5, 272(t0) -- Store: [0x80003cc8]:0x00100000DFFFFFFF




Last Coverpoint : ['rs1_w0_val == 4160749567']
Last Code Sequence : 
	-[0x800015c4]:UKMSR64 t6, t5, t4
	-[0x800015c8]:sd t6, 288(t0)
Current Store : [0x800015cc] : sd t5, 296(t0) -- Store: [0x80003ce0]:0x00000012F7FFFFFF




Last Coverpoint : ['rs1_w0_val == 4293918719']
Last Code Sequence : 
	-[0x800015f4]:UKMSR64 t6, t5, t4
	-[0x800015f8]:sd t6, 312(t0)
Current Store : [0x800015fc] : sd t5, 320(t0) -- Store: [0x80003cf8]:0x01000000FFEFFFFF




Last Coverpoint : ['rs2_w0_val == 4294967039']
Last Code Sequence : 
	-[0x80001618]:UKMSR64 t6, t5, t4
	-[0x8000161c]:sd t6, 336(t0)
Current Store : [0x80001620] : sd t5, 344(t0) -- Store: [0x80003d10]:0xFFFFFFFD00000080




Last Coverpoint : ['rs2_w0_val == 4294967294', 'rs1_w0_val == 4294901759']
Last Code Sequence : 
	-[0x8000164c]:UKMSR64 t6, t5, t4
	-[0x80001650]:sd t6, 360(t0)
Current Store : [0x80001654] : sd t5, 368(t0) -- Store: [0x80003d28]:0x00200000FFFEFFFF




Last Coverpoint : ['rs2_w0_val == 4294967231', 'rs1_w1_val == 536870912']
Last Code Sequence : 
	-[0x80001674]:UKMSR64 t6, t5, t4
	-[0x80001678]:sd t6, 384(t0)
Current Store : [0x8000167c] : sd t5, 392(t0) -- Store: [0x80003d40]:0x2000000000000020




Last Coverpoint : ['rs1_w0_val == 4294950911']
Last Code Sequence : 
	-[0x800016a0]:UKMSR64 t6, t5, t4
	-[0x800016a4]:sd t6, 408(t0)
Current Store : [0x800016a8] : sd t5, 416(t0) -- Store: [0x80003d58]:0x00000013FFFFBFFF




Last Coverpoint : ['rs1_w0_val == 4294959103']
Last Code Sequence : 
	-[0x800016d0]:UKMSR64 t6, t5, t4
	-[0x800016d4]:sd t6, 432(t0)
Current Store : [0x800016d8] : sd t5, 440(t0) -- Store: [0x80003d70]:0x00000003FFFFDFFF




Last Coverpoint : ['rs1_w0_val == 4294966783']
Last Code Sequence : 
	-[0x800016f4]:UKMSR64 t6, t5, t4
	-[0x800016f8]:sd t6, 456(t0)
Current Store : [0x800016fc] : sd t5, 464(t0) -- Store: [0x80003d88]:0xFFFFFDFFFFFFFDFF




Last Coverpoint : ['rs1_w0_val == 4294967039']
Last Code Sequence : 
	-[0x8000171c]:UKMSR64 t6, t5, t4
	-[0x80001720]:sd t6, 480(t0)
Current Store : [0x80001724] : sd t5, 488(t0) -- Store: [0x80003da0]:0x00000006FFFFFEFF




Last Coverpoint : ['rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x80001748]:UKMSR64 t6, t5, t4
	-[0x8000174c]:sd t6, 504(t0)
Current Store : [0x80001750] : sd t5, 512(t0) -- Store: [0x80003db8]:0x40000000BFFFFFFF




Last Coverpoint : ['rs2_w0_val == 4227858431', 'rs1_w1_val == 268435456', 'rs1_w0_val == 4294967294']
Last Code Sequence : 
	-[0x80001770]:UKMSR64 t6, t5, t4
	-[0x80001774]:sd t6, 528(t0)
Current Store : [0x80001778] : sd t5, 536(t0) -- Store: [0x80003dd0]:0x10000000FFFFFFFE




Last Coverpoint : ['rs1_w0_val == 2147483648']
Last Code Sequence : 
	-[0x80001790]:UKMSR64 t6, t5, t4
	-[0x80001794]:sd t6, 552(t0)
Current Store : [0x80001798] : sd t5, 560(t0) -- Store: [0x80003de8]:0x0000000A80000000




Last Coverpoint : ['rs2_w0_val == 131072']
Last Code Sequence : 
	-[0x800017bc]:UKMSR64 t6, t5, t4
	-[0x800017c0]:sd t6, 576(t0)
Current Store : [0x800017c4] : sd t5, 584(t0) -- Store: [0x80003e00]:0x7FFFFFFF00004000




Last Coverpoint : ['rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x800017e0]:UKMSR64 t6, t5, t4
	-[0x800017e4]:sd t6, 600(t0)
Current Store : [0x800017e8] : sd t5, 608(t0) -- Store: [0x80003e18]:0x1000000000800000




Last Coverpoint : ['rs2_w0_val == 4194304']
Last Code Sequence : 
	-[0x8000180c]:UKMSR64 t6, t5, t4
	-[0x80001810]:sd t6, 624(t0)
Current Store : [0x80001814] : sd t5, 632(t0) -- Store: [0x80003e30]:0x0000020055555555




Last Coverpoint : ['rs2_w0_val == 2048']
Last Code Sequence : 
	-[0x80001838]:UKMSR64 t6, t5, t4
	-[0x8000183c]:sd t6, 648(t0)
Current Store : [0x80001840] : sd t5, 656(t0) -- Store: [0x80003e48]:0xF7FFFFFFFFFFFDFF




Last Coverpoint : ['opcode : ukmsr64', 'rs1 : x30', 'rs2 : x29', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 4294901759', 'rs2_w0_val == 134217728', 'rs1_w1_val == 4294901759', 'rs1_w0_val == 4292870143']
Last Code Sequence : 
	-[0x80001860]:UKMSR64 t6, t5, t4
	-[0x80001864]:sd t6, 672(t0)
Current Store : [0x80001868] : sd t5, 680(t0) -- Store: [0x80003e60]:0xFFFEFFFFFFDFFFFF




Last Coverpoint : ['opcode : ukmsr64', 'rs1 : x30', 'rs2 : x29', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == 4294967279', 'rs2_w0_val == 3221225471', 'rs1_w1_val == 512']
Last Code Sequence : 
	-[0x80001884]:UKMSR64 t6, t5, t4
	-[0x80001888]:sd t6, 696(t0)
Current Store : [0x8000188c] : sd t5, 704(t0) -- Store: [0x80003e78]:0x000002000000000D





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

|s.no|            signature             |                                                                                                                                                                           coverpoints                                                                                                                                                                           |                                 code                                  |
|---:|----------------------------------|-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000000|- opcode : ukmsr64<br> - rs1 : x4<br> - rs2 : x4<br> - rd : x28<br> - rs1 == rs2 != rd<br> - rs1_w1_val == rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs1_w0_val == rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == 4294967293<br> - rs2_w0_val == 4026531839<br> - rs1_w1_val == 4294967293<br> - rs1_w0_val == 4026531839<br> |[0x800003b8]:UKMSR64 t3, tp, tp<br> [0x800003bc]:sd t3, 0(a1)<br>      |
|   2|[0x80003228]<br>0x0000000000000000|- rs1 : x24<br> - rs2 : x24<br> - rd : x24<br> - rs1 == rs2 == rd<br> - rs2_w1_val == 4294901759<br> - rs2_w0_val == 134217728<br> - rs1_w1_val == 4294901759<br> - rs1_w0_val == 134217728<br>                                                                                                                                                                  |[0x800003e0]:UKMSR64 s8, s8, s8<br> [0x800003e4]:sd s8, 24(a1)<br>     |
|   3|[0x80003240]<br>0x0000000000000000|- rs1 : x21<br> - rs2 : x5<br> - rd : x2<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w1_val != rs2_w1_val and rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs2_w0_val == 4294967167<br> - rs1_w0_val == 4294967167<br>                                                                                                                                    |[0x80000404]:UKMSR64 sp, s5, t0<br> [0x80000408]:sd sp, 48(a1)<br>     |
|   4|[0x80003258]<br>0x0000000000000000|- rs1 : x8<br> - rs2 : x26<br> - rd : x8<br> - rs1 == rd != rs2<br> - rs1_w0_val != rs2_w0_val and rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == 2863311530<br> - rs2_w0_val == 524288<br> - rs1_w1_val == 2<br> - rs1_w0_val == 4294967287<br>                                                                                                          |[0x80000430]:UKMSR64 fp, fp, s10<br> [0x80000434]:sd fp, 72(a1)<br>    |
|   5|[0x80003270]<br>0x553FC000ABC03BFF|- rs1 : x23<br> - rs2 : x22<br> - rd : x22<br> - rs2 == rd != rs1<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == 4294966271<br> - rs1_w1_val == 4194304<br> - rs1_w0_val == 16384<br>                                                                                                                                                                        |[0x8000045c]:UKMSR64 s6, s7, s6<br> [0x80000460]:sd s6, 96(a1)<br>     |
|   6|[0x80003288]<br>0x2807FDDC28095330|- rs1 : x7<br> - rs2 : x28<br> - rd : x16<br> - rs2_w1_val == 2147483647<br> - rs2_w0_val == 4293918719<br> - rs1_w1_val == 524288<br> - rs1_w0_val == 1431655765<br>                                                                                                                                                                                            |[0x80000494]:UKMSR64 a6, t2, t3<br> [0x80000498]:sd a6, 120(a1)<br>    |
|   7|[0x800032a0]<br>0xD3C05D87D7BFDDF7|- rs1 : x6<br> - rs2 : x25<br> - rd : x12<br> - rs2_w1_val == 3221225471<br> - rs2_w0_val == 33554432<br> - rs1_w1_val == 64<br> - rs1_w0_val == 4290772991<br>                                                                                                                                                                                                  |[0x800004c0]:UKMSR64 a2, t1, s9<br> [0x800004c4]:sd a2, 144(a1)<br>    |
|   8|[0x800032b8]<br>0x0000000000000000|- rs1 : x28<br> - rs2 : x8<br> - rd : x30<br> - rs2_w1_val == 3758096383<br> - rs2_w0_val == 4294967263<br> - rs1_w1_val == 4294959103<br> - rs1_w0_val == 4294705151<br>                                                                                                                                                                                        |[0x800004e8]:UKMSR64 t5, t3, fp<br> [0x800004ec]:sd t5, 168(a1)<br>    |
|   9|[0x800032d0]<br>0xF56FF75B716FF780|- rs1 : x16<br> - rs2 : x17<br> - rd : x14<br> - rs2_w1_val == 4026531839<br> - rs2_w0_val == 4278190079<br>                                                                                                                                                                                                                                                     |[0x80000514]:UKMSR64 a4, a6, a7<br> [0x80000518]:sd a4, 192(a1)<br>    |
|  10|[0x800032e8]<br>0x0000000000000000|- rs1 : x12<br> - rs2 : x15<br> - rd : x10<br> - rs2_w1_val == 4160749567<br> - rs2_w0_val == 4294967295<br> - rs1_w1_val == 4227858431<br>                                                                                                                                                                                                                      |[0x8000053c]:UKMSR64 a0, a2, a5<br> [0x80000540]:sd a0, 216(a1)<br>    |
|  11|[0x80003300]<br>0x0000000000000000|- rs1 : x26<br> - rs2 : x23<br> - rd : x6<br> - rs2_w1_val == 4227858431<br> - rs1_w1_val == 4294967291<br> - rs1_w0_val == 2<br>                                                                                                                                                                                                                                |[0x80000564]:UKMSR64 t1, s10, s7<br> [0x80000568]:sd t1, 240(a1)<br>   |
|  12|[0x80003318]<br>0x0000000000000000|- rs1 : x17<br> - rs2 : x7<br> - rd : x18<br> - rs2_w1_val == 4261412863<br> - rs2_w0_val == 4294967279<br> - rs1_w1_val == 4294967279<br> - rs1_w0_val == 524288<br>                                                                                                                                                                                            |[0x80000588]:UKMSR64 s2, a7, t2<br> [0x8000058c]:sd s2, 264(a1)<br>    |
|  13|[0x80003330]<br>0xFFFFFFFDEFFFFFFF|- rs1 : x25<br> - rs2 : x0<br> - rd : x4<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w1_val == 32<br>                                                                                                                                                                                                                                                  |[0x800005b0]:UKMSR64 tp, s9, zero<br> [0x800005b4]:sd tp, 288(a1)<br>  |
|  14|[0x80003348]<br>0xFFFFC018C0004002|- rs1 : x20<br> - rs2 : x9<br> - rd : x26<br> - rs2_w1_val == 4286578687<br> - rs2_w0_val == 536870912<br> - rs1_w1_val == 16384<br>                                                                                                                                                                                                                             |[0x800005d4]:UKMSR64 s10, s4, s1<br> [0x800005d8]:sd s10, 312(a1)<br>  |
|  15|[0x80003360]<br>0x0000000000000000|- rs1 : x18<br> - rs2 : x13<br> - rd : x20<br> - rs2_w1_val == 4290772991<br> - rs1_w1_val == 4292870143<br>                                                                                                                                                                                                                                                     |[0x800005fc]:UKMSR64 s4, s2, a3<br> [0x80000600]:sd s4, 336(a1)<br>    |
|  16|[0x80003378]<br>0x0000000000000000|- rs1 : x5<br> - rs2 : x3<br> - rs2_w1_val == 4292870143<br> - rs2_w0_val == 4294934527<br> - rs1_w0_val == 2097152<br>                                                                                                                                                                                                                                          |[0x80000628]:UKMSR64 s7, t0, gp<br> [0x8000062c]:sd s7, 360(a1)<br>    |
|  17|[0x80003390]<br>0xFFA001FFDC1FFFFF|- rs1 : x1<br> - rs2 : x29<br> - rs2_w1_val == 4293918719<br> - rs2_w0_val == 67108864<br> - rs1_w1_val == 2097152<br>                                                                                                                                                                                                                                           |[0x8000064c]:UKMSR64 a3, ra, t4<br> [0x80000650]:sd a3, 384(a1)<br>    |
|  18|[0x800033a8]<br>0x0000000000000000|- rs1 : x2<br> - rs2 : x11<br> - rs2_w1_val == 4294443007<br> - rs2_w0_val == 4290772991<br> - rs1_w1_val == 4294966271<br> - rs1_w0_val == 4294967279<br>                                                                                                                                                                                                       |[0x8000067c]:UKMSR64 s2, sp, a1<br> [0x80000680]:sd s2, 0(t0)<br>      |
|  19|[0x800033c0]<br>0x0000000000000000|- rs1 : x27<br> - rs2 : x31<br> - rs2_w1_val == 4294705151<br> - rs2_w0_val == 4294967291<br> - rs1_w1_val == 4261412863<br> - rs1_w0_val == 262144<br>                                                                                                                                                                                                          |[0x800006a8]:UKMSR64 s7, s11, t6<br> [0x800006ac]:sd s7, 24(t0)<br>    |
|  20|[0x800033d8]<br>0xFBA009FFE01FFFFF|- rs1 : x15<br> - rs2 : x16<br> - rs1_w0_val == 0<br> - rs2_w1_val == 4294836223<br> - rs1_w1_val == 67108864<br>                                                                                                                                                                                                                                                |[0x800006cc]:UKMSR64 a3, a5, a6<br> [0x800006d0]:sd a3, 48(t0)<br>     |
|  21|[0x800033f0]<br>0x0000000000000000|- rs1 : x10<br> - rs2 : x2<br> - rs2_w1_val == 4294934527<br> - rs2_w0_val == 2863311530<br> - rs1_w1_val == 4293918719<br>                                                                                                                                                                                                                                      |[0x800006fc]:UKMSR64 a3, a0, sp<br> [0x80000700]:sd a3, 72(t0)<br>     |
|  22|[0x80003408]<br>0x00100016B3F00001|- rs1 : x13<br> - rs2 : x19<br> - rs2_w1_val == 4294950911<br> - rs1_w0_val == 67108864<br>                                                                                                                                                                                                                                                                      |[0x80000724]:UKMSR64 s10, a3, s3<br> [0x80000728]:sd s10, 96(t0)<br>   |
|  23|[0x80003420]<br>0x0000000000000000|- rs1 : x29<br> - rs2 : x1<br> - rs2_w1_val == 4294959103<br> - rs1_w1_val == 4294705151<br> - rs1_w0_val == 4261412863<br>                                                                                                                                                                                                                                      |[0x8000074c]:UKMSR64 s10, t4, ra<br> [0x80000750]:sd s10, 120(t0)<br>  |
|  24|[0x80003438]<br>0xFFFFFFE50009800A|- rs1 : x30<br> - rs2 : x14<br> - rs2_w1_val == 4294963199<br> - rs2_w0_val == 2<br> - rs1_w1_val == 8<br> - rs1_w0_val == 4294934527<br>                                                                                                                                                                                                                        |[0x80000778]:UKMSR64 a7, t5, a4<br> [0x8000077c]:sd a7, 144(t0)<br>    |
|  25|[0x80003450]<br>0x0000000000000000|- rs1 : x14<br> - rs2 : x20<br> - rs2_w1_val == 4294965247<br> - rs1_w1_val == 4294967039<br> - rs1_w0_val == 1<br>                                                                                                                                                                                                                                              |[0x800007a0]:UKMSR64 a6, a4, s4<br> [0x800007a4]:sd a6, 168(t0)<br>    |
|  26|[0x80003468]<br>0x7FF801817FBFFBFE|- rs1 : x22<br> - rs2 : x12<br> - rs2_w1_val == 4294966271<br> - rs2_w0_val == 2147483648<br> - rs1_w1_val == 2147483647<br> - rs1_w0_val == 256<br>                                                                                                                                                                                                             |[0x800007c8]:UKMSR64 a1, s6, a2<br> [0x800007cc]:sd a1, 192(t0)<br>    |
|  27|[0x80003480]<br>0xFFFBBFFECC040003|- rs1 : x31<br> - rs2 : x21<br> - rs2_w1_val == 4294966783<br> - rs1_w1_val == 262144<br>                                                                                                                                                                                                                                                                        |[0x800007ec]:UKMSR64 s3, t6, s5<br> [0x800007f0]:sd s3, 216(t0)<br>    |
|  28|[0x80003498]<br>0xFFF7EFFDF807FFFF|- rs1 : x11<br> - rs2 : x10<br> - rs2_w1_val == 4294967039<br> - rs1_w0_val == 33554432<br>                                                                                                                                                                                                                                                                      |[0x80000810]:UKMSR64 tp, a1, a0<br> [0x80000814]:sd tp, 240(t0)<br>    |
|  29|[0x800034b0]<br>0x0000000000000000|- rs1 : x9<br> - rs2 : x6<br> - rs2_w1_val == 4294967167<br> - rs2_w0_val == 4294967287<br> - rs1_w1_val == 4294934527<br> - rs1_w0_val == 32768<br>                                                                                                                                                                                                             |[0x8000083c]:UKMSR64 t2, s1, t1<br> [0x80000840]:sd t2, 264(t0)<br>    |
|  30|[0x800034c8]<br>0xFFFFF7800001FE77|- rs1 : x19<br> - rs2 : x30<br> - rs2_w1_val == 4294967231<br> - rs2_w0_val == 128<br> - rs1_w1_val == 2048<br>                                                                                                                                                                                                                                                  |[0x80000860]:UKMSR64 t1, s3, t5<br> [0x80000864]:sd t1, 288(t0)<br>    |
|  31|[0x800034e0]<br>0x007FFE20F37FFFBF|- rs1 : x3<br> - rs2 : x18<br> - rs2_w1_val == 4294967263<br> - rs2_w0_val == 8<br> - rs1_w1_val == 4286578687<br> - rs1_w0_val == 4<br>                                                                                                                                                                                                                         |[0x80000888]:UKMSR64 s5, gp, s2<br> [0x8000088c]:sd s5, 312(t0)<br>    |
|  32|[0x800034f8]<br>0xFFFFFFBF00000080|- rs1 : x0<br> - rs2 : x27<br> - rs2_w1_val == 4294967279<br> - rs2_w0_val == 3221225471<br> - rs1_w1_val == 0<br>                                                                                                                                                                                                                                               |[0x800008ac]:UKMSR64 t5, zero, s11<br> [0x800008b0]:sd t5, 336(t0)<br> |
|  33|[0x80003510]<br>0x0000000000000000|- rs2_w1_val == 4294967287<br> - rs1_w1_val == 1048576<br> - rs1_w0_val == 1024<br>                                                                                                                                                                                                                                                                              |[0x800008d4]:UKMSR64 t6, t5, t4<br> [0x800008d8]:sd t6, 360(t0)<br>    |
|  34|[0x80003528]<br>0x0000000000000000|- rs2_w1_val == 4294967291<br> - rs2_w0_val == 262144<br> - rs1_w1_val == 4294963199<br>                                                                                                                                                                                                                                                                         |[0x800008fc]:UKMSR64 t6, t5, t4<br> [0x80000900]:sd t6, 384(t0)<br>    |
|  35|[0x80003540]<br>0x0000000000000000|- rs2_w1_val == 4294967294<br> - rs1_w0_val == 4294443007<br>                                                                                                                                                                                                                                                                                                    |[0x80000928]:UKMSR64 t6, t5, t4<br> [0x8000092c]:sd t6, 408(t0)<br>    |
|  36|[0x80003558]<br>0x0000000000000000|- rs2_w1_val == 2147483648<br> - rs1_w1_val == 4294967287<br>                                                                                                                                                                                                                                                                                                    |[0x80000954]:UKMSR64 t6, t5, t4<br> [0x80000958]:sd t6, 432(t0)<br>    |
|  37|[0x80003570]<br>0x0000000000000000|- rs2_w1_val == 1073741824<br> - rs2_w0_val == 4<br> - rs1_w0_val == 4292870143<br>                                                                                                                                                                                                                                                                              |[0x8000097c]:UKMSR64 t6, t5, t4<br> [0x80000980]:sd t6, 456(t0)<br>    |
|  38|[0x80003588]<br>0x0000000000000000|- rs2_w1_val == 536870912<br>                                                                                                                                                                                                                                                                                                                                    |[0x800009a0]:UKMSR64 t6, t5, t4<br> [0x800009a4]:sd t6, 480(t0)<br>    |
|  39|[0x800035a0]<br>0x0000000000000000|- rs2_w1_val == 268435456<br> - rs1_w1_val == 2863311530<br> - rs1_w0_val == 4294966271<br>                                                                                                                                                                                                                                                                      |[0x800009d4]:UKMSR64 t6, t5, t4<br> [0x800009d8]:sd t6, 504(t0)<br>    |
|  40|[0x800035b8]<br>0x0000000000000000|- rs2_w1_val == 134217728<br> - rs2_w0_val == 2147483647<br> - rs1_w0_val == 4294967231<br>                                                                                                                                                                                                                                                                      |[0x800009fc]:UKMSR64 t6, t5, t4<br> [0x80000a00]:sd t6, 528(t0)<br>    |
|  41|[0x800035d0]<br>0x0000000000000000|- rs2_w1_val == 67108864<br> - rs1_w0_val == 4194304<br>                                                                                                                                                                                                                                                                                                         |[0x80000a20]:UKMSR64 t6, t5, t4<br> [0x80000a24]:sd t6, 552(t0)<br>    |
|  42|[0x800035e8]<br>0x0000000000000000|- rs2_w1_val == 33554432<br> - rs2_w0_val == 4261412863<br> - rs1_w0_val == 64<br>                                                                                                                                                                                                                                                                               |[0x80000a4c]:UKMSR64 t6, t5, t4<br> [0x80000a50]:sd t6, 576(t0)<br>    |
|  43|[0x80003600]<br>0x0000000000000000|- rs2_w1_val == 16777216<br>                                                                                                                                                                                                                                                                                                                                     |[0x80000a74]:UKMSR64 t6, t5, t4<br> [0x80000a78]:sd t6, 600(t0)<br>    |
|  44|[0x80003618]<br>0x0000000000000000|- rs2_w1_val == 8388608<br> - rs1_w1_val == 4294950911<br>                                                                                                                                                                                                                                                                                                       |[0x80000aa0]:UKMSR64 t6, t5, t4<br> [0x80000aa4]:sd t6, 624(t0)<br>    |
|  45|[0x80003630]<br>0x0000000000000000|- rs2_w1_val == 4194304<br> - rs1_w0_val == 268435456<br>                                                                                                                                                                                                                                                                                                        |[0x80000ac8]:UKMSR64 t6, t5, t4<br> [0x80000acc]:sd t6, 648(t0)<br>    |
|  46|[0x80003648]<br>0x0000000000000000|- rs2_w1_val == 2097152<br> - rs1_w1_val == 256<br>                                                                                                                                                                                                                                                                                                              |[0x80000aec]:UKMSR64 t6, t5, t4<br> [0x80000af0]:sd t6, 672(t0)<br>    |
|  47|[0x80003660]<br>0x0000000000000000|- rs2_w1_val == 1048576<br> - rs2_w0_val == 1073741824<br>                                                                                                                                                                                                                                                                                                       |[0x80000b10]:UKMSR64 t6, t5, t4<br> [0x80000b14]:sd t6, 696(t0)<br>    |
|  48|[0x80003678]<br>0x0000000000000000|- rs2_w1_val == 524288<br>                                                                                                                                                                                                                                                                                                                                       |[0x80000b34]:UKMSR64 t6, t5, t4<br> [0x80000b38]:sd t6, 720(t0)<br>    |
|  49|[0x80003690]<br>0x0000000000000000|- rs2_w1_val == 262144<br> - rs1_w1_val == 3758096383<br>                                                                                                                                                                                                                                                                                                        |[0x80000b58]:UKMSR64 t6, t5, t4<br> [0x80000b5c]:sd t6, 744(t0)<br>    |
|  50|[0x800036a8]<br>0x0000000000000000|- rs2_w1_val == 131072<br> - rs1_w0_val == 1073741824<br>                                                                                                                                                                                                                                                                                                        |[0x80000b78]:UKMSR64 t6, t5, t4<br> [0x80000b7c]:sd t6, 768(t0)<br>    |
|  51|[0x800036c0]<br>0x0000000000000000|- rs2_w1_val == 65536<br>                                                                                                                                                                                                                                                                                                                                        |[0x80000b94]:UKMSR64 t6, t5, t4<br> [0x80000b98]:sd t6, 792(t0)<br>    |
|  52|[0x800036d8]<br>0x0000000000000000|- rs2_w1_val == 32768<br> - rs1_w0_val == 4286578687<br>                                                                                                                                                                                                                                                                                                         |[0x80000bb8]:UKMSR64 t6, t5, t4<br> [0x80000bbc]:sd t6, 816(t0)<br>    |
|  53|[0x800036f0]<br>0x0000000000000000|- rs2_w1_val == 16384<br> - rs1_w1_val == 8192<br> - rs1_w0_val == 4278190079<br>                                                                                                                                                                                                                                                                                |[0x80000be4]:UKMSR64 t6, t5, t4<br> [0x80000be8]:sd t6, 840(t0)<br>    |
|  54|[0x80003708]<br>0x0000000000000000|- rs2_w0_val == 4096<br> - rs1_w1_val == 128<br> - rs1_w0_val == 131072<br>                                                                                                                                                                                                                                                                                      |[0x80000c0c]:UKMSR64 t6, t5, t4<br> [0x80000c10]:sd t6, 864(t0)<br>    |
|  55|[0x80003720]<br>0x0000000000000000|- rs2_w0_val == 4294959103<br> - rs1_w0_val == 65536<br>                                                                                                                                                                                                                                                                                                         |[0x80000c38]:UKMSR64 t6, t5, t4<br> [0x80000c3c]:sd t6, 888(t0)<br>    |
|  56|[0x80003738]<br>0x0000000000000000|- rs2_w0_val == 4294965247<br> - rs1_w0_val == 8192<br>                                                                                                                                                                                                                                                                                                          |[0x80000c60]:UKMSR64 t6, t5, t4<br> [0x80000c64]:sd t6, 912(t0)<br>    |
|  57|[0x80003750]<br>0x0000000000000000|- rs2_w0_val == 16777216<br> - rs1_w0_val == 4096<br>                                                                                                                                                                                                                                                                                                            |[0x80000c88]:UKMSR64 t6, t5, t4<br> [0x80000c8c]:sd t6, 936(t0)<br>    |
|  58|[0x80003768]<br>0x0000000000000000|- rs2_w1_val == 32<br> - rs1_w1_val == 33554432<br> - rs1_w0_val == 2048<br>                                                                                                                                                                                                                                                                                     |[0x80000cb4]:UKMSR64 t6, t5, t4<br> [0x80000cb8]:sd t6, 960(t0)<br>    |
|  59|[0x80003780]<br>0x0000000000000000|- rs2_w1_val == 4278190079<br> - rs1_w0_val == 512<br>                                                                                                                                                                                                                                                                                                           |[0x80000ce0]:UKMSR64 t6, t5, t4<br> [0x80000ce4]:sd t6, 984(t0)<br>    |
|  60|[0x80003798]<br>0x0000000000000000|- rs1_w0_val == 128<br>                                                                                                                                                                                                                                                                                                                                          |[0x80000d08]:UKMSR64 t6, t5, t4<br> [0x80000d0c]:sd t6, 1008(t0)<br>   |
|  61|[0x800037b0]<br>0x0000000000000000|- rs1_w0_val == 32<br>                                                                                                                                                                                                                                                                                                                                           |[0x80000d34]:UKMSR64 t6, t5, t4<br> [0x80000d38]:sd t6, 1032(t0)<br>   |
|  62|[0x800037c8]<br>0x0000000000000000|- rs1_w1_val == 4294965247<br> - rs1_w0_val == 16<br>                                                                                                                                                                                                                                                                                                            |[0x80000d60]:UKMSR64 t6, t5, t4<br> [0x80000d64]:sd t6, 1056(t0)<br>   |
|  63|[0x800037e0]<br>0x0000000000000000|- rs1_w0_val == 8<br>                                                                                                                                                                                                                                                                                                                                            |[0x80000d8c]:UKMSR64 t6, t5, t4<br> [0x80000d90]:sd t6, 1080(t0)<br>   |
|  64|[0x800037f8]<br>0x0000000000000000|- rs2_w0_val == 16384<br> - rs1_w0_val == 4294967295<br>                                                                                                                                                                                                                                                                                                         |[0x80000db8]:UKMSR64 t6, t5, t4<br> [0x80000dbc]:sd t6, 1104(t0)<br>   |
|  65|[0x80003810]<br>0x0000000000000000|- rs2_w1_val == 8192<br> - rs2_w0_val == 268435456<br>                                                                                                                                                                                                                                                                                                           |[0x80000ddc]:UKMSR64 t6, t5, t4<br> [0x80000de0]:sd t6, 1128(t0)<br>   |
|  66|[0x80003828]<br>0x0000000000000000|- rs2_w1_val == 4096<br> - rs1_w1_val == 65536<br>                                                                                                                                                                                                                                                                                                               |[0x80000e00]:UKMSR64 t6, t5, t4<br> [0x80000e04]:sd t6, 1152(t0)<br>   |
|  67|[0x80003840]<br>0x0000000000000000|- rs2_w1_val == 2048<br>                                                                                                                                                                                                                                                                                                                                         |[0x80000e24]:UKMSR64 t6, t5, t4<br> [0x80000e28]:sd t6, 1176(t0)<br>   |
|  68|[0x80003858]<br>0x0000000000000000|- rs2_w1_val == 1024<br> - rs1_w1_val == 512<br>                                                                                                                                                                                                                                                                                                                 |[0x80000e48]:UKMSR64 t6, t5, t4<br> [0x80000e4c]:sd t6, 1200(t0)<br>   |
|  69|[0x80003870]<br>0x0000000000000000|- rs2_w1_val == 512<br> - rs2_w0_val == 65536<br>                                                                                                                                                                                                                                                                                                                |[0x80000e6c]:UKMSR64 t6, t5, t4<br> [0x80000e70]:sd t6, 1224(t0)<br>   |
|  70|[0x80003888]<br>0x0000000000000000|- rs2_w1_val == 256<br> - rs2_w0_val == 4160749567<br>                                                                                                                                                                                                                                                                                                           |[0x80000e94]:UKMSR64 t6, t5, t4<br> [0x80000e98]:sd t6, 1248(t0)<br>   |
|  71|[0x800038a0]<br>0x0000000000000000|- rs2_w1_val == 128<br> - rs2_w0_val == 8388608<br>                                                                                                                                                                                                                                                                                                              |[0x80000eb8]:UKMSR64 t6, t5, t4<br> [0x80000ebc]:sd t6, 1272(t0)<br>   |
|  72|[0x800038b8]<br>0x0000000000000000|- rs2_w1_val == 64<br> - rs2_w0_val == 1431655765<br>                                                                                                                                                                                                                                                                                                            |[0x80000ee4]:UKMSR64 t6, t5, t4<br> [0x80000ee8]:sd t6, 1296(t0)<br>   |
|  73|[0x800038d0]<br>0x0000000000000000|- rs2_w1_val == 16<br>                                                                                                                                                                                                                                                                                                                                           |[0x80000f08]:UKMSR64 t6, t5, t4<br> [0x80000f0c]:sd t6, 1320(t0)<br>   |
|  74|[0x800038e8]<br>0x0000000000000000|- rs2_w1_val == 8<br> - rs1_w0_val == 4294965247<br>                                                                                                                                                                                                                                                                                                             |[0x80000f30]:UKMSR64 t6, t5, t4<br> [0x80000f34]:sd t6, 1344(t0)<br>   |
|  75|[0x80003900]<br>0x0000000000000000|- rs2_w1_val == 4<br> - rs1_w1_val == 131072<br>                                                                                                                                                                                                                                                                                                                 |[0x80000f50]:UKMSR64 t6, t5, t4<br> [0x80000f54]:sd t6, 1368(t0)<br>   |
|  76|[0x80003918]<br>0x0000000000000000|- rs2_w1_val == 2<br> - rs2_w0_val == 4294836223<br> - rs1_w1_val == 4096<br> - rs1_w0_val == 4294967263<br>                                                                                                                                                                                                                                                     |[0x80000f7c]:UKMSR64 t6, t5, t4<br> [0x80000f80]:sd t6, 1392(t0)<br>   |
|  77|[0x80003930]<br>0x0000000000000000|- rs2_w1_val == 1<br> - rs1_w1_val == 1<br>                                                                                                                                                                                                                                                                                                                      |[0x80000fa0]:UKMSR64 t6, t5, t4<br> [0x80000fa4]:sd t6, 1416(t0)<br>   |
|  78|[0x80003948]<br>0x0000000000000000|- rs2_w1_val == 4294967295<br>                                                                                                                                                                                                                                                                                                                                   |[0x80000fc0]:UKMSR64 t6, t5, t4<br> [0x80000fc4]:sd t6, 1440(t0)<br>   |
|  79|[0x80003960]<br>0x0000000000000000|- rs2_w0_val == 3758096383<br>                                                                                                                                                                                                                                                                                                                                   |[0x80000fe8]:UKMSR64 t6, t5, t4<br> [0x80000fec]:sd t6, 1464(t0)<br>   |
|  80|[0x80003978]<br>0x0000000000000000|- rs2_w0_val == 4286578687<br> - rs1_w1_val == 32768<br>                                                                                                                                                                                                                                                                                                         |[0x80001010]:UKMSR64 t6, t5, t4<br> [0x80001014]:sd t6, 1488(t0)<br>   |
|  81|[0x80003990]<br>0x0000000000000000|- rs2_w0_val == 4292870143<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001038]:UKMSR64 t6, t5, t4<br> [0x8000103c]:sd t6, 1512(t0)<br>   |
|  82|[0x800039a8]<br>0x0000000000000000|- rs2_w0_val == 4294443007<br> - rs1_w0_val == 2863311530<br>                                                                                                                                                                                                                                                                                                    |[0x80001064]:UKMSR64 t6, t5, t4<br> [0x80001068]:sd t6, 1536(t0)<br>   |
|  83|[0x800039c0]<br>0x0000000000000000|- rs2_w0_val == 4294705151<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001094]:UKMSR64 t6, t5, t4<br> [0x80001098]:sd t6, 1560(t0)<br>   |
|  84|[0x800039d8]<br>0x0000000000000000|- rs2_w0_val == 4294901759<br> - rs1_w1_val == 1431655765<br>                                                                                                                                                                                                                                                                                                    |[0x800010c4]:UKMSR64 t6, t5, t4<br> [0x800010c8]:sd t6, 1584(t0)<br>   |
|  85|[0x800039f0]<br>0x0000000000000000|- rs2_w0_val == 4294950911<br> - rs1_w0_val == 536870912<br>                                                                                                                                                                                                                                                                                                     |[0x800010e8]:UKMSR64 t6, t5, t4<br> [0x800010ec]:sd t6, 1608(t0)<br>   |
|  86|[0x80003a08]<br>0x0000000000000000|- rs2_w0_val == 4294963199<br> - rs1_w1_val == 16777216<br>                                                                                                                                                                                                                                                                                                      |[0x80001114]:UKMSR64 t6, t5, t4<br> [0x80001118]:sd t6, 1632(t0)<br>   |
|  87|[0x80003a20]<br>0x0000000000000000|- rs2_w0_val == 4294966783<br> - rs1_w1_val == 134217728<br>                                                                                                                                                                                                                                                                                                     |[0x80001138]:UKMSR64 t6, t5, t4<br> [0x8000113c]:sd t6, 1656(t0)<br>   |
|  88|[0x80003a38]<br>0x0000000000000000|- rs2_w0_val == 1024<br>                                                                                                                                                                                                                                                                                                                                         |[0x8000115c]:UKMSR64 t6, t5, t4<br> [0x80001160]:sd t6, 1680(t0)<br>   |
|  89|[0x80003a50]<br>0x0000000000000000|- rs2_w0_val == 512<br> - rs1_w1_val == 8388608<br> - rs1_w0_val == 2147483647<br>                                                                                                                                                                                                                                                                               |[0x80001184]:UKMSR64 t6, t5, t4<br> [0x80001188]:sd t6, 1704(t0)<br>   |
|  90|[0x80003a68]<br>0x0000000000000000|- rs2_w0_val == 256<br>                                                                                                                                                                                                                                                                                                                                          |[0x800011ac]:UKMSR64 t6, t5, t4<br> [0x800011b0]:sd t6, 1728(t0)<br>   |
|  91|[0x80003a80]<br>0x0000000000000000|- rs2_w0_val == 64<br> - rs1_w0_val == 4294967293<br>                                                                                                                                                                                                                                                                                                            |[0x800011d0]:UKMSR64 t6, t5, t4<br> [0x800011d4]:sd t6, 1752(t0)<br>   |
|  92|[0x80003a98]<br>0x0000000000000000|- rs2_w0_val == 32<br>                                                                                                                                                                                                                                                                                                                                           |[0x800011f4]:UKMSR64 t6, t5, t4<br> [0x800011f8]:sd t6, 1776(t0)<br>   |
|  93|[0x80003ab0]<br>0x0000000000000000|- rs2_w0_val == 16<br> - rs1_w0_val == 1048576<br>                                                                                                                                                                                                                                                                                                               |[0x8000121c]:UKMSR64 t6, t5, t4<br> [0x80001220]:sd t6, 1800(t0)<br>   |
|  94|[0x80003ac8]<br>0x0000000000000000|- rs2_w0_val == 1<br> - rs1_w0_val == 4294836223<br>                                                                                                                                                                                                                                                                                                             |[0x80001244]:UKMSR64 t6, t5, t4<br> [0x80001248]:sd t6, 1824(t0)<br>   |
|  95|[0x80003ae0]<br>0x0000000000000000|- rs1_w1_val == 3221225471<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001270]:UKMSR64 t6, t5, t4<br> [0x80001274]:sd t6, 1848(t0)<br>   |
|  96|[0x80003af8]<br>0x0000000000000000|- rs1_w1_val == 4026531839<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001298]:UKMSR64 t6, t5, t4<br> [0x8000129c]:sd t6, 1872(t0)<br>   |
|  97|[0x80003b10]<br>0x0000000000000000|- rs1_w1_val == 4160749567<br>                                                                                                                                                                                                                                                                                                                                   |[0x800012c0]:UKMSR64 t6, t5, t4<br> [0x800012c4]:sd t6, 1896(t0)<br>   |
|  98|[0x80003b28]<br>0x0000000000000000|- rs1_w1_val == 4278190079<br> - rs1_w0_val == 4294967291<br>                                                                                                                                                                                                                                                                                                    |[0x800012ec]:UKMSR64 t6, t5, t4<br> [0x800012f0]:sd t6, 1920(t0)<br>   |
|  99|[0x80003b40]<br>0x0000000000000000|- rs2_w0_val == 2097152<br> - rs1_w1_val == 4290772991<br>                                                                                                                                                                                                                                                                                                       |[0x80001314]:UKMSR64 t6, t5, t4<br> [0x80001318]:sd t6, 1944(t0)<br>   |
| 100|[0x80003b58]<br>0x0000000000000000|- rs1_w1_val == 4294443007<br>                                                                                                                                                                                                                                                                                                                                   |[0x8000133c]:UKMSR64 t6, t5, t4<br> [0x80001340]:sd t6, 1968(t0)<br>   |
| 101|[0x80003b70]<br>0x0000000000000000|- rs1_w1_val == 4294836223<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001368]:UKMSR64 t6, t5, t4<br> [0x8000136c]:sd t6, 1992(t0)<br>   |
| 102|[0x80003b88]<br>0x0000000000000000|- rs1_w1_val == 4294966783<br>                                                                                                                                                                                                                                                                                                                                   |[0x8000138c]:UKMSR64 t6, t5, t4<br> [0x80001390]:sd t6, 2016(t0)<br>   |
| 103|[0x80003ba0]<br>0x0000000000000000|- rs1_w1_val == 4294967167<br>                                                                                                                                                                                                                                                                                                                                   |[0x800013b8]:UKMSR64 t6, t5, t4<br> [0x800013bc]:sd t6, 0(t0)<br>      |
| 104|[0x80003bb8]<br>0x0000000000000000|- rs1_w1_val == 4294967231<br> - rs1_w0_val == 16777216<br>                                                                                                                                                                                                                                                                                                      |[0x800013ec]:UKMSR64 t6, t5, t4<br> [0x800013f0]:sd t6, 0(t0)<br>      |
| 105|[0x80003bd0]<br>0x0000000000000000|- rs1_w1_val == 4294967263<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001414]:UKMSR64 t6, t5, t4<br> [0x80001418]:sd t6, 24(t0)<br>     |
| 106|[0x80003be8]<br>0x0000000000000000|- rs1_w0_val == 4294963199<br>                                                                                                                                                                                                                                                                                                                                   |[0x8000143c]:UKMSR64 t6, t5, t4<br> [0x80001440]:sd t6, 48(t0)<br>     |
| 107|[0x80003c00]<br>0x0000000000000000|- rs1_w1_val == 4294967294<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001460]:UKMSR64 t6, t5, t4<br> [0x80001464]:sd t6, 72(t0)<br>     |
| 108|[0x80003c18]<br>0x0000000000000000|- rs1_w1_val == 2147483648<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001480]:UKMSR64 t6, t5, t4<br> [0x80001484]:sd t6, 96(t0)<br>     |
| 109|[0x80003c30]<br>0x0000000000000000|- rs2_w0_val == 32768<br> - rs1_w1_val == 1024<br>                                                                                                                                                                                                                                                                                                               |[0x800014b0]:UKMSR64 t6, t5, t4<br> [0x800014b4]:sd t6, 120(t0)<br>    |
| 110|[0x80003c48]<br>0x0000000000000000|- rs1_w1_val == 16<br>                                                                                                                                                                                                                                                                                                                                           |[0x800014d4]:UKMSR64 t6, t5, t4<br> [0x800014d8]:sd t6, 144(t0)<br>    |
| 111|[0x80003c60]<br>0x0000000000000000|- rs2_w0_val == 4294967293<br> - rs1_w1_val == 4<br> - rs1_w0_val == 4227858431<br>                                                                                                                                                                                                                                                                              |[0x800014fc]:UKMSR64 t6, t5, t4<br> [0x80001500]:sd t6, 168(t0)<br>    |
| 112|[0x80003c78]<br>0x0000000000000000|- rs2_w0_val == 1048576<br> - rs1_w1_val == 4294967295<br>                                                                                                                                                                                                                                                                                                       |[0x8000151c]:UKMSR64 t6, t5, t4<br> [0x80001520]:sd t6, 192(t0)<br>    |
| 113|[0x80003c90]<br>0x0000000000000000|- rs2_w0_val == 8192<br>                                                                                                                                                                                                                                                                                                                                         |[0x80001548]:UKMSR64 t6, t5, t4<br> [0x8000154c]:sd t6, 216(t0)<br>    |
| 114|[0x80003ca8]<br>0x0000000000000000|- rs1_w0_val == 3221225471<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001574]:UKMSR64 t6, t5, t4<br> [0x80001578]:sd t6, 240(t0)<br>    |
| 115|[0x80003cc0]<br>0x0000000000000000|- rs1_w0_val == 3758096383<br>                                                                                                                                                                                                                                                                                                                                   |[0x800015a0]:UKMSR64 t6, t5, t4<br> [0x800015a4]:sd t6, 264(t0)<br>    |
| 116|[0x80003cd8]<br>0x0000000000000000|- rs1_w0_val == 4160749567<br>                                                                                                                                                                                                                                                                                                                                   |[0x800015c4]:UKMSR64 t6, t5, t4<br> [0x800015c8]:sd t6, 288(t0)<br>    |
| 117|[0x80003cf0]<br>0x0000000000000000|- rs1_w0_val == 4293918719<br>                                                                                                                                                                                                                                                                                                                                   |[0x800015f4]:UKMSR64 t6, t5, t4<br> [0x800015f8]:sd t6, 312(t0)<br>    |
| 118|[0x80003d08]<br>0x0000000000000000|- rs2_w0_val == 4294967039<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001618]:UKMSR64 t6, t5, t4<br> [0x8000161c]:sd t6, 336(t0)<br>    |
| 119|[0x80003d20]<br>0x0000000000000000|- rs2_w0_val == 4294967294<br> - rs1_w0_val == 4294901759<br>                                                                                                                                                                                                                                                                                                    |[0x8000164c]:UKMSR64 t6, t5, t4<br> [0x80001650]:sd t6, 360(t0)<br>    |
| 120|[0x80003d38]<br>0x0000000000000000|- rs2_w0_val == 4294967231<br> - rs1_w1_val == 536870912<br>                                                                                                                                                                                                                                                                                                     |[0x80001674]:UKMSR64 t6, t5, t4<br> [0x80001678]:sd t6, 384(t0)<br>    |
| 121|[0x80003d50]<br>0x0000000000000000|- rs1_w0_val == 4294950911<br>                                                                                                                                                                                                                                                                                                                                   |[0x800016a0]:UKMSR64 t6, t5, t4<br> [0x800016a4]:sd t6, 408(t0)<br>    |
| 122|[0x80003d68]<br>0x0000000000000000|- rs1_w0_val == 4294959103<br>                                                                                                                                                                                                                                                                                                                                   |[0x800016d0]:UKMSR64 t6, t5, t4<br> [0x800016d4]:sd t6, 432(t0)<br>    |
| 123|[0x80003d80]<br>0x0000000000000000|- rs1_w0_val == 4294966783<br>                                                                                                                                                                                                                                                                                                                                   |[0x800016f4]:UKMSR64 t6, t5, t4<br> [0x800016f8]:sd t6, 456(t0)<br>    |
| 124|[0x80003d98]<br>0x0000000000000000|- rs1_w0_val == 4294967039<br>                                                                                                                                                                                                                                                                                                                                   |[0x8000171c]:UKMSR64 t6, t5, t4<br> [0x80001720]:sd t6, 480(t0)<br>    |
| 125|[0x80003db0]<br>0x0000000000000000|- rs1_w1_val == 1073741824<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001748]:UKMSR64 t6, t5, t4<br> [0x8000174c]:sd t6, 504(t0)<br>    |
| 126|[0x80003dc8]<br>0x0000000000000000|- rs2_w0_val == 4227858431<br> - rs1_w1_val == 268435456<br> - rs1_w0_val == 4294967294<br>                                                                                                                                                                                                                                                                      |[0x80001770]:UKMSR64 t6, t5, t4<br> [0x80001774]:sd t6, 528(t0)<br>    |
| 127|[0x80003de0]<br>0x0000000000000000|- rs1_w0_val == 2147483648<br>                                                                                                                                                                                                                                                                                                                                   |[0x80001790]:UKMSR64 t6, t5, t4<br> [0x80001794]:sd t6, 552(t0)<br>    |
| 128|[0x80003df8]<br>0x0000000000000000|- rs2_w0_val == 131072<br>                                                                                                                                                                                                                                                                                                                                       |[0x800017bc]:UKMSR64 t6, t5, t4<br> [0x800017c0]:sd t6, 576(t0)<br>    |
| 129|[0x80003e10]<br>0x0000000000000000|- rs1_w0_val == 8388608<br>                                                                                                                                                                                                                                                                                                                                      |[0x800017e0]:UKMSR64 t6, t5, t4<br> [0x800017e4]:sd t6, 600(t0)<br>    |
| 130|[0x80003e28]<br>0x0000000000000000|- rs2_w0_val == 4194304<br>                                                                                                                                                                                                                                                                                                                                      |[0x8000180c]:UKMSR64 t6, t5, t4<br> [0x80001810]:sd t6, 624(t0)<br>    |
| 131|[0x80003e40]<br>0x0000000000000000|- rs2_w0_val == 2048<br>                                                                                                                                                                                                                                                                                                                                         |[0x80001838]:UKMSR64 t6, t5, t4<br> [0x8000183c]:sd t6, 648(t0)<br>    |
