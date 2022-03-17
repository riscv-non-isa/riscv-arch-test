
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80001930')]      |
| SIG_REGION                | [('0x80003210', '0x80003a80', '270 dwords')]      |
| COV_LABELS                | kaddw      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/kaddw-01.S    |
| Total Number of coverpoints| 392     |
| Total Coverpoints Hit     | 386      |
| Total Signature Updates   | 270      |
| STAT1                     | 133      |
| STAT2                     | 2      |
| STAT3                     | 0     |
| STAT4                     | 135     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000d20]:KADDW t6, t5, t4
      [0x80000d24]:sd t6, 656(ra)
 -- Signature Address: 0x800035b0 Data: 0x0000000000050000
 -- Redundant Coverpoints hit by the op
      - opcode : kaddw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val < 0 and rs2_w1_val > 0
      - rs1_w0_val != rs2_w0_val
      - rs1_w0_val > 0 and rs2_w0_val > 0
      - rs2_w0_val == 65536
      - rs1_w1_val == -1431655766
      - rs1_w0_val == 262144




Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000eb0]:KADDW t6, t5, t4
      [0x80000eb4]:sd t6, 816(ra)
 -- Signature Address: 0x80003650 Data: 0xFFFFFFFFFFFFFFFE
 -- Redundant Coverpoints hit by the op
      - opcode : kaddw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val != rs2_w1_val
      - rs1_w1_val > 0 and rs2_w1_val < 0
      - rs1_w0_val != rs2_w0_val
      - rs2_w1_val == -67108865
      - rs2_w0_val == -2
      - rs1_w0_val == 0






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : kaddw', 'rs1 : x6', 'rs2 : x6', 'rd : x0', 'rs1 == rs2 != rd', 'rs1_w1_val == rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val < 0', 'rs1_w0_val == rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w1_val == -257', 'rs2_w0_val == 262144', 'rs1_w1_val == -257', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x800003bc]:KADDW zero, t1, t1
	-[0x800003c0]:sd zero, 0(t2)
Current Store : [0x800003c4] : sd t1, 8(t2) -- Store: [0x80003218]:0xFFFFFEFF00040000




Last Coverpoint : ['rs1 : x9', 'rs2 : x9', 'rd : x9', 'rs1 == rs2 == rd', 'rs1_w1_val > 0 and rs2_w1_val > 0', 'rs2_w0_val == 536870912', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x800003dc]:KADDW s1, s1, s1
	-[0x800003e0]:sd s1, 16(t2)
Current Store : [0x800003e4] : sd s1, 24(t2) -- Store: [0x80003228]:0x0000000040000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x16', 'rd : x26', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val < 0 and rs2_w0_val < 0', 'rs2_w0_val == -32769', 'rs1_w1_val == -1025', 'rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000408]:KADDW s10, s7, a6
	-[0x8000040c]:sd s10, 32(t2)
Current Store : [0x80000410] : sd s7, 40(t2) -- Store: [0x80003238]:0xFFFFFBFFFFFFF7FF




Last Coverpoint : ['rs1 : x24', 'rs2 : x19', 'rd : x24', 'rs1 == rd != rs2', 'rs2_w1_val == -33554433', 'rs2_w0_val == 2048', 'rs1_w1_val == -268435457']
Last Code Sequence : 
	-[0x8000043c]:KADDW s8, s8, s3
	-[0x80000440]:sd s8, 48(t2)
Current Store : [0x80000444] : sd s8, 56(t2) -- Store: [0x80003248]:0x0000000020000800




Last Coverpoint : ['rs1 : x28', 'rs2 : x2', 'rd : x2', 'rs2 == rd != rs1', 'rs2_w0_val == -129', 'rs1_w1_val == -134217729', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80000460]:KADDW sp, t3, sp
	-[0x80000464]:sd sp, 64(t2)
Current Store : [0x80000468] : sd t3, 72(t2) -- Store: [0x80003258]:0xF7FFFFFFFFFFFF7F




Last Coverpoint : ['rs1 : x0', 'rs2 : x12', 'rd : x28', 'rs2_w1_val == 16', 'rs2_w0_val == -5', 'rs1_w1_val == 0', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x8000048c]:KADDW t3, zero, a2
	-[0x80000490]:sd t3, 80(t2)
Current Store : [0x80000494] : sd zero, 88(t2) -- Store: [0x80003268]:0x0000000000000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x22', 'rd : x3', 'rs2_w1_val == -1431655766', 'rs1_w1_val == -129', 'rs1_w0_val == 256']
Last Code Sequence : 
	-[0x800004b4]:KADDW gp, t5, s6
	-[0x800004b8]:sd gp, 96(t2)
Current Store : [0x800004bc] : sd t5, 104(t2) -- Store: [0x80003278]:0xFFFFFF7F00000100




Last Coverpoint : ['rs1 : x5', 'rs2 : x14', 'rd : x22', 'rs2_w1_val == 1431655765', 'rs2_w0_val == -1', 'rs1_w1_val == -513']
Last Code Sequence : 
	-[0x800004dc]:KADDW s6, t0, a4
	-[0x800004e0]:sd s6, 112(t2)
Current Store : [0x800004e4] : sd t0, 120(t2) -- Store: [0x80003288]:0xFFFFFDFFFFFFFFFA




Last Coverpoint : ['rs1 : x22', 'rs2 : x24', 'rd : x17', 'rs1_w0_val > 0 and rs2_w0_val < 0', 'rs2_w1_val == 2147483647', 'rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x800004f8]:KADDW a7, s6, s8
	-[0x800004fc]:sd a7, 128(t2)
Current Store : [0x80000500] : sd s6, 136(t2) -- Store: [0x80003298]:0x0000000000020000




Last Coverpoint : ['rs1 : x26', 'rs2 : x1', 'rd : x23', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs1_w0_val < 0 and rs2_w0_val > 0', 'rs2_w1_val == -1073741825', 'rs2_w0_val == 8388608', 'rs1_w1_val == 16384', 'rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000524]:KADDW s7, s10, ra
	-[0x80000528]:sd s7, 144(t2)
Current Store : [0x8000052c] : sd s10, 152(t2) -- Store: [0x800032a8]:0x00004000FEFFFFFF




Last Coverpoint : ['rs1 : x1', 'rs2 : x28', 'rd : x30', 'rs2_w1_val == -536870913', 'rs2_w0_val == -65', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x80000548]:KADDW t5, ra, t3
	-[0x8000054c]:sd t5, 160(t2)
Current Store : [0x80000550] : sd ra, 168(t2) -- Store: [0x800032b8]:0x0000000900000008




Last Coverpoint : ['rs1 : x27', 'rs2 : x5', 'rd : x14', 'rs2_w1_val == -268435457', 'rs2_w0_val == 134217728', 'rs1_w1_val == -65']
Last Code Sequence : 
	-[0x80000570]:KADDW a4, s11, t0
	-[0x80000574]:sd a4, 176(t2)
Current Store : [0x80000578] : sd s11, 184(t2) -- Store: [0x800032c8]:0xFFFFFFBF00000009




Last Coverpoint : ['rs1 : x4', 'rs2 : x20', 'rd : x8', 'rs2_w1_val == -134217729', 'rs1_w0_val == 64']
Last Code Sequence : 
	-[0x80000598]:KADDW fp, tp, s4
	-[0x8000059c]:sd fp, 192(t2)
Current Store : [0x800005a0] : sd tp, 200(t2) -- Store: [0x800032d8]:0xC000000000000040




Last Coverpoint : ['rs1 : x25', 'rs2 : x21', 'rd : x27', 'rs2_w1_val == -67108865', 'rs1_w1_val == -2147483648', 'rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x800005c4]:KADDW s11, s9, s5
	-[0x800005c8]:sd s11, 208(t2)
Current Store : [0x800005cc] : sd s9, 216(t2) -- Store: [0x800032e8]:0x8000000010000000




Last Coverpoint : ['rs1 : x18', 'rs2 : x10', 'rd : x1', 'rs2_w1_val == -16777217', 'rs1_w1_val == -5', 'rs1_w0_val == 512']
Last Code Sequence : 
	-[0x800005f0]:KADDW ra, s2, a0
	-[0x800005f4]:sd ra, 224(t2)
Current Store : [0x800005f8] : sd s2, 232(t2) -- Store: [0x800032f8]:0xFFFFFFFB00000200




Last Coverpoint : ['rs1 : x31', 'rs2 : x30', 'rd : x16', 'rs2_w1_val == -8388609', 'rs1_w1_val == -524289', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x8000061c]:KADDW a6, t6, t5
	-[0x80000620]:sd a6, 240(t2)
Current Store : [0x80000624] : sd t6, 248(t2) -- Store: [0x80003308]:0xFFF7FFFF08000000




Last Coverpoint : ['rs1 : x3', 'rs2 : x25', 'rd : x11', 'rs2_w1_val == -4194305', 'rs2_w0_val == -2', 'rs1_w1_val == -33', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x80000640]:KADDW a1, gp, s9
	-[0x80000644]:sd a1, 256(t2)
Current Store : [0x80000648] : sd gp, 264(t2) -- Store: [0x80003318]:0xFFFFFFDFFFFFFFFF




Last Coverpoint : ['rs1 : x19', 'rs2 : x15', 'rd : x12', 'rs2_w1_val == -2097153', 'rs2_w0_val == 65536', 'rs1_w1_val == -131073', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x80000678]:KADDW a2, s3, a5
	-[0x8000067c]:sd a2, 0(ra)
Current Store : [0x80000680] : sd s3, 8(ra) -- Store: [0x80003328]:0xFFFDFFFF7FFFFFFF




Last Coverpoint : ['rs1 : x13', 'rs2 : x29', 'rd : x10', 'rs2_w1_val == -1048577', 'rs2_w0_val == -1025', 'rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x800006a0]:KADDW a0, a3, t4
	-[0x800006a4]:sd a0, 16(ra)
Current Store : [0x800006a8] : sd a3, 24(ra) -- Store: [0x80003338]:0x0000000355555555




Last Coverpoint : ['rs1 : x15', 'rs2 : x7', 'rd : x29', 'rs2_w1_val == -524289', 'rs2_w0_val == 1', 'rs1_w1_val == -8193', 'rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x800006cc]:KADDW t4, a5, t2
	-[0x800006d0]:sd t4, 32(ra)
Current Store : [0x800006d4] : sd a5, 40(ra) -- Store: [0x80003348]:0xFFFFDFFFEFFFFFFF




Last Coverpoint : ['rs1 : x17', 'rs2 : x18', 'rd : x21', 'rs2_w1_val == -262145', 'rs2_w0_val == 8']
Last Code Sequence : 
	-[0x800006f8]:KADDW s5, a7, s2
	-[0x800006fc]:sd s5, 48(ra)
Current Store : [0x80000700] : sd a7, 56(ra) -- Store: [0x80003358]:0xEFFFFFFF08000000




Last Coverpoint : ['rs1 : x8', 'rs2 : x27', 'rd : x31', 'rs2_w1_val == -131073', 'rs2_w0_val == 8192', 'rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000724]:KADDW t6, fp, s11
	-[0x80000728]:sd t6, 64(ra)
Current Store : [0x8000072c] : sd fp, 72(ra) -- Store: [0x80003368]:0x0000000600000400




Last Coverpoint : ['rs1 : x21', 'rs2 : x23', 'rd : x25', 'rs2_w1_val == -65537', 'rs2_w0_val == 1024', 'rs1_w1_val == -67108865']
Last Code Sequence : 
	-[0x8000074c]:KADDW s9, s5, s7
	-[0x80000750]:sd s9, 80(ra)
Current Store : [0x80000754] : sd s5, 88(ra) -- Store: [0x80003378]:0xFBFFFFFFFFFFFFFA




Last Coverpoint : ['rs1 : x16', 'rs2 : x11', 'rd : x4', 'rs2_w1_val == -32769', 'rs2_w0_val == -4097', 'rs1_w1_val == -1431655766', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x8000077c]:KADDW tp, a6, a1
	-[0x80000780]:sd tp, 96(ra)
Current Store : [0x80000784] : sd a6, 104(ra) -- Store: [0x80003388]:0xAAAAAAAA00000080




Last Coverpoint : ['rs1 : x12', 'rs2 : x26', 'rd : x15', 'rs2_w1_val == -16385', 'rs2_w0_val == 33554432', 'rs1_w1_val == 262144', 'rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x800007a4]:KADDW a5, a2, s10
	-[0x800007a8]:sd a5, 112(ra)
Current Store : [0x800007ac] : sd a2, 120(ra) -- Store: [0x80003398]:0x00040000DFFFFFFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x13', 'rd : x5', 'rs2_w1_val == -8193', 'rs2_w0_val == -4194305', 'rs1_w1_val == 131072']
Last Code Sequence : 
	-[0x800007d0]:KADDW t0, a0, a3
	-[0x800007d4]:sd t0, 128(ra)
Current Store : [0x800007d8] : sd a0, 136(ra) -- Store: [0x800033a8]:0x00020000FFFFFFF8




Last Coverpoint : ['rs1 : x14', 'rs2 : x4', 'rd : x6', 'rs2_w1_val == -4097', 'rs2_w0_val == -131073', 'rs1_w1_val == -2049', 'rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x800007fc]:KADDW t1, a4, tp
	-[0x80000800]:sd t1, 144(ra)
Current Store : [0x80000804] : sd a4, 152(ra) -- Store: [0x800033b8]:0xFFFFF7FFFFEFFFFF




Last Coverpoint : ['rs1 : x20', 'rs2 : x31', 'rd : x13', 'rs2_w1_val == -2049', 'rs1_w1_val == 1048576']
Last Code Sequence : 
	-[0x80000820]:KADDW a3, s4, t6
	-[0x80000824]:sd a3, 160(ra)
Current Store : [0x80000828] : sd s4, 168(ra) -- Store: [0x800033c8]:0x0010000000000080




Last Coverpoint : ['rs1 : x11', 'rs2 : x8', 'rd : x18', 'rs2_w1_val == -1025', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x80000848]:KADDW s2, a1, fp
	-[0x8000084c]:sd s2, 176(ra)
Current Store : [0x80000850] : sd a1, 184(ra) -- Store: [0x800033d8]:0x00000007FFDFFFFF




Last Coverpoint : ['rs1 : x2', 'rs2 : x17', 'rd : x20', 'rs2_w1_val == -513', 'rs2_w0_val == 32768']
Last Code Sequence : 
	-[0x8000086c]:KADDW s4, sp, a7
	-[0x80000870]:sd s4, 192(ra)
Current Store : [0x80000874] : sd sp, 200(ra) -- Store: [0x800033e8]:0xFFFFFFF6FFFFFFFF




Last Coverpoint : ['rs1 : x7', 'rs2 : x0', 'rd : x19', 'rs2_w1_val == 0', 'rs2_w0_val == 0', 'rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x80000894]:KADDW s3, t2, zero
	-[0x80000898]:sd s3, 208(ra)
Current Store : [0x8000089c] : sd t2, 216(ra) -- Store: [0x800033f8]:0x0000400000002000




Last Coverpoint : ['rs1 : x29', 'rs2 : x3', 'rd : x7', 'rs2_w1_val == -65']
Last Code Sequence : 
	-[0x800008b8]:KADDW t2, t4, gp
	-[0x800008bc]:sd t2, 224(ra)
Current Store : [0x800008c0] : sd t4, 232(ra) -- Store: [0x80003408]:0xFFFFFFDF00000006




Last Coverpoint : ['rs2_w1_val == -33', 'rs2_w0_val == -65537', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x800008e8]:KADDW t6, t5, t4
	-[0x800008ec]:sd t6, 240(ra)
Current Store : [0x800008f0] : sd t5, 248(ra) -- Store: [0x80003418]:0x3FFFFFFFFBFFFFFF




Last Coverpoint : ['rs2_w1_val == -17', 'rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x8000090c]:KADDW t6, t5, t4
	-[0x80000910]:sd t6, 256(ra)
Current Store : [0x80000914] : sd t5, 264(ra) -- Store: [0x80003428]:0x0000100000000009




Last Coverpoint : ['rs2_w1_val == -9', 'rs2_w0_val == 131072', 'rs1_w1_val == -536870913']
Last Code Sequence : 
	-[0x80000934]:KADDW t6, t5, t4
	-[0x80000938]:sd t6, 272(ra)
Current Store : [0x8000093c] : sd t5, 280(ra) -- Store: [0x80003438]:0xDFFFFFFF20000000




Last Coverpoint : ['rs2_w1_val == -5', 'rs2_w0_val == -67108865']
Last Code Sequence : 
	-[0x8000095c]:KADDW t6, t5, t4
	-[0x80000960]:sd t6, 288(ra)
Current Store : [0x80000964] : sd t5, 296(ra) -- Store: [0x80003448]:0xC0000000FFFFFFF9




Last Coverpoint : ['rs2_w1_val == -3', 'rs2_w0_val == 524288', 'rs1_w1_val == 32', 'rs1_w0_val == -17']
Last Code Sequence : 
	-[0x80000980]:KADDW t6, t5, t4
	-[0x80000984]:sd t6, 304(ra)
Current Store : [0x80000988] : sd t5, 312(ra) -- Store: [0x80003458]:0x00000020FFFFFFEF




Last Coverpoint : ['rs2_w1_val == -2', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x800009a8]:KADDW t6, t5, t4
	-[0x800009ac]:sd t6, 320(ra)
Current Store : [0x800009b0] : sd t5, 328(ra) -- Store: [0x80003468]:0x80000000FFFFFFFB




Last Coverpoint : ['rs2_w1_val == -2147483648', 'rs2_w0_val == -134217729', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x800009d8]:KADDW t6, t5, t4
	-[0x800009dc]:sd t6, 336(ra)
Current Store : [0x800009e0] : sd t5, 344(ra) -- Store: [0x80003478]:0xFFFFFFFBFFBFFFFF




Last Coverpoint : ['rs2_w1_val == 1073741824', 'rs1_w1_val == 256', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x800009fc]:KADDW t6, t5, t4
	-[0x80000a00]:sd t6, 352(ra)
Current Store : [0x80000a04] : sd t5, 360(ra) -- Store: [0x80003488]:0x00000100FFFFFFBF




Last Coverpoint : ['rs2_w1_val == 536870912', 'rs1_w1_val == -32769']
Last Code Sequence : 
	-[0x80000a38]:KADDW t6, t5, t4
	-[0x80000a3c]:sd t6, 368(ra)
Current Store : [0x80000a40] : sd t5, 376(ra) -- Store: [0x80003498]:0xFFFF7FFF55555555




Last Coverpoint : ['rs2_w1_val == 268435456']
Last Code Sequence : 
	-[0x80000a60]:KADDW t6, t5, t4
	-[0x80000a64]:sd t6, 384(ra)
Current Store : [0x80000a68] : sd t5, 392(ra) -- Store: [0x800034a8]:0xFFFFFFBFFFFFFF7F




Last Coverpoint : ['rs2_w1_val == 134217728', 'rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x80000a8c]:KADDW t6, t5, t4
	-[0x80000a90]:sd t6, 400(ra)
Current Store : [0x80000a94] : sd t5, 408(ra) -- Store: [0x800034b8]:0x0001000010000000




Last Coverpoint : ['rs2_w1_val == 67108864', 'rs2_w0_val == 4194304', 'rs1_w1_val == -1073741825', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x80000ab8]:KADDW t6, t5, t4
	-[0x80000abc]:sd t6, 416(ra)
Current Store : [0x80000ac0] : sd t5, 424(ra) -- Store: [0x800034c8]:0xBFFFFFFF00000020




Last Coverpoint : ['rs2_w1_val == 33554432', 'rs2_w0_val == -3', 'rs1_w1_val == 128', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x80000ae4]:KADDW t6, t5, t4
	-[0x80000ae8]:sd t6, 432(ra)
Current Store : [0x80000aec] : sd t5, 440(ra) -- Store: [0x800034d8]:0x00000080F7FFFFFF




Last Coverpoint : ['rs2_w1_val == 16777216', 'rs1_w1_val == -9']
Last Code Sequence : 
	-[0x80000b0c]:KADDW t6, t5, t4
	-[0x80000b10]:sd t6, 448(ra)
Current Store : [0x80000b14] : sd t5, 456(ra) -- Store: [0x800034e8]:0xFFFFFFF7FFFFFFBF




Last Coverpoint : ['rs2_w1_val == 8388608', 'rs2_w0_val == 16', 'rs1_w1_val == 32768']
Last Code Sequence : 
	-[0x80000b30]:KADDW t6, t5, t4
	-[0x80000b34]:sd t6, 464(ra)
Current Store : [0x80000b38] : sd t5, 472(ra) -- Store: [0x800034f8]:0x0000800000000080




Last Coverpoint : ['rs2_w1_val == 4194304', 'rs2_w0_val == -16385']
Last Code Sequence : 
	-[0x80000b60]:KADDW t6, t5, t4
	-[0x80000b64]:sd t6, 480(ra)
Current Store : [0x80000b68] : sd t5, 488(ra) -- Store: [0x80003508]:0xFFFFFFFA00002000




Last Coverpoint : ['rs2_w1_val == 2097152', 'rs2_w0_val == -17', 'rs1_w1_val == 4194304', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80000b94]:KADDW t6, t5, t4
	-[0x80000b98]:sd t6, 496(ra)
Current Store : [0x80000b9c] : sd t5, 504(ra) -- Store: [0x80003518]:0x00400000FFFDFFFF




Last Coverpoint : ['rs2_w1_val == 1048576', 'rs2_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000bc4]:KADDW t6, t5, t4
	-[0x80000bc8]:sd t6, 512(ra)
Current Store : [0x80000bcc] : sd t5, 520(ra) -- Store: [0x80003528]:0xFFFFFFF8EFFFFFFF




Last Coverpoint : ['rs2_w1_val == 524288', 'rs1_w1_val == 4']
Last Code Sequence : 
	-[0x80000bec]:KADDW t6, t5, t4
	-[0x80000bf0]:sd t6, 528(ra)
Current Store : [0x80000bf4] : sd t5, 536(ra) -- Store: [0x80003538]:0x0000000400000200




Last Coverpoint : ['rs2_w1_val == 262144', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000c0c]:KADDW t6, t5, t4
	-[0x80000c10]:sd t6, 544(ra)
Current Store : [0x80000c14] : sd t5, 552(ra) -- Store: [0x80003548]:0x0000000502000000




Last Coverpoint : ['rs2_w0_val == -8388609', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000c34]:KADDW t6, t5, t4
	-[0x80000c38]:sd t6, 560(ra)
Current Store : [0x80000c3c] : sd t5, 568(ra) -- Store: [0x80003558]:0x0004000001000000




Last Coverpoint : ['rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000c58]:KADDW t6, t5, t4
	-[0x80000c5c]:sd t6, 576(ra)
Current Store : [0x80000c60] : sd t5, 584(ra) -- Store: [0x80003568]:0xFFFDFFFF00800000




Last Coverpoint : ['rs1_w1_val == -262145', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000c7c]:KADDW t6, t5, t4
	-[0x80000c80]:sd t6, 592(ra)
Current Store : [0x80000c84] : sd t5, 600(ra) -- Store: [0x80003578]:0xFFFBFFFF00400000




Last Coverpoint : ['rs1_w1_val == 536870912', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000ca8]:KADDW t6, t5, t4
	-[0x80000cac]:sd t6, 608(ra)
Current Store : [0x80000cb0] : sd t5, 616(ra) -- Store: [0x80003588]:0x2000000000200000




Last Coverpoint : ['rs1_w1_val == -1', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x80000ccc]:KADDW t6, t5, t4
	-[0x80000cd0]:sd t6, 624(ra)
Current Store : [0x80000cd4] : sd t5, 632(ra) -- Store: [0x80003598]:0xFFFFFFFF00100000




Last Coverpoint : ['rs2_w1_val == 32768', 'rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000cf4]:KADDW t6, t5, t4
	-[0x80000cf8]:sd t6, 640(ra)
Current Store : [0x80000cfc] : sd t5, 648(ra) -- Store: [0x800035a8]:0x2000000000080000




Last Coverpoint : ['opcode : kaddw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val < 0 and rs2_w1_val > 0', 'rs1_w0_val != rs2_w0_val', 'rs1_w0_val > 0 and rs2_w0_val > 0', 'rs2_w0_val == 65536', 'rs1_w1_val == -1431655766', 'rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000d20]:KADDW t6, t5, t4
	-[0x80000d24]:sd t6, 656(ra)
Current Store : [0x80000d28] : sd t5, 664(ra) -- Store: [0x800035b8]:0xAAAAAAAA00040000




Last Coverpoint : ['rs2_w1_val == 4', 'rs1_w1_val == 512', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000d44]:KADDW t6, t5, t4
	-[0x80000d48]:sd t6, 672(ra)
Current Store : [0x80000d4c] : sd t5, 680(ra) -- Store: [0x800035c8]:0x0000020000010000




Last Coverpoint : ['rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x80000d74]:KADDW t6, t5, t4
	-[0x80000d78]:sd t6, 688(ra)
Current Store : [0x80000d7c] : sd t5, 696(ra) -- Store: [0x800035d8]:0xBFFFFFFF00008000




Last Coverpoint : ['rs1_w1_val == 268435456', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000da4]:KADDW t6, t5, t4
	-[0x80000da8]:sd t6, 704(ra)
Current Store : [0x80000dac] : sd t5, 712(ra) -- Store: [0x800035e8]:0x1000000000004000




Last Coverpoint : ['rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000dd4]:KADDW t6, t5, t4
	-[0x80000dd8]:sd t6, 720(ra)
Current Store : [0x80000ddc] : sd t5, 728(ra) -- Store: [0x800035f8]:0xFFFFFDFF00001000




Last Coverpoint : ['rs2_w1_val == 256', 'rs1_w1_val == 134217728', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x80000e00]:KADDW t6, t5, t4
	-[0x80000e04]:sd t6, 736(ra)
Current Store : [0x80000e08] : sd t5, 744(ra) -- Store: [0x80003608]:0x0800000000000800




Last Coverpoint : ['rs2_w1_val == 32', 'rs2_w0_val == 268435456', 'rs1_w1_val == 2', 'rs1_w0_val == 16']
Last Code Sequence : 
	-[0x80000e20]:KADDW t6, t5, t4
	-[0x80000e24]:sd t6, 752(ra)
Current Store : [0x80000e28] : sd t5, 760(ra) -- Store: [0x80003618]:0x0000000200000010




Last Coverpoint : ['rs1_w0_val == 4']
Last Code Sequence : 
	-[0x80000e44]:KADDW t6, t5, t4
	-[0x80000e48]:sd t6, 768(ra)
Current Store : [0x80000e4c] : sd t5, 776(ra) -- Store: [0x80003628]:0x0000000200000004




Last Coverpoint : ['rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000e6c]:KADDW t6, t5, t4
	-[0x80000e70]:sd t6, 784(ra)
Current Store : [0x80000e74] : sd t5, 792(ra) -- Store: [0x80003638]:0xDFFFFFFF00000002




Last Coverpoint : ['rs1_w1_val == -16385', 'rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000e90]:KADDW t6, t5, t4
	-[0x80000e94]:sd t6, 800(ra)
Current Store : [0x80000e98] : sd t5, 808(ra) -- Store: [0x80003648]:0xFFFFBFFF00000001




Last Coverpoint : ['opcode : kaddw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val != rs2_w1_val', 'rs1_w1_val > 0 and rs2_w1_val < 0', 'rs1_w0_val != rs2_w0_val', 'rs2_w1_val == -67108865', 'rs2_w0_val == -2', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x80000eb0]:KADDW t6, t5, t4
	-[0x80000eb4]:sd t6, 816(ra)
Current Store : [0x80000eb8] : sd t5, 824(ra) -- Store: [0x80003658]:0x0000000900000000




Last Coverpoint : ['rs2_w1_val == 131072', 'rs2_w0_val == -536870913']
Last Code Sequence : 
	-[0x80000edc]:KADDW t6, t5, t4
	-[0x80000ee0]:sd t6, 832(ra)
Current Store : [0x80000ee4] : sd t5, 840(ra) -- Store: [0x80003668]:0x0800000010000000




Last Coverpoint : ['rs2_w1_val == 65536', 'rs2_w0_val == -16777217', 'rs1_w1_val == -4097']
Last Code Sequence : 
	-[0x80000f04]:KADDW t6, t5, t4
	-[0x80000f08]:sd t6, 848(ra)
Current Store : [0x80000f0c] : sd t5, 856(ra) -- Store: [0x80003678]:0xFFFFEFFF00020000




Last Coverpoint : ['rs2_w1_val == 16384', 'rs2_w0_val == -262145']
Last Code Sequence : 
	-[0x80000f2c]:KADDW t6, t5, t4
	-[0x80000f30]:sd t6, 864(ra)
Current Store : [0x80000f34] : sd t5, 872(ra) -- Store: [0x80003688]:0x00000007F7FFFFFF




Last Coverpoint : ['rs2_w1_val == 8192', 'rs2_w0_val == -33', 'rs1_w1_val == -65537']
Last Code Sequence : 
	-[0x80000f58]:KADDW t6, t5, t4
	-[0x80000f5c]:sd t6, 880(ra)
Current Store : [0x80000f60] : sd t5, 888(ra) -- Store: [0x80003698]:0xFFFEFFFFFEFFFFFF




Last Coverpoint : ['rs2_w1_val == 4096', 'rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80000f80]:KADDW t6, t5, t4
	-[0x80000f84]:sd t6, 896(ra)
Current Store : [0x80000f88] : sd t5, 904(ra) -- Store: [0x800036a8]:0xFFFFFFF8FFFFEFFF




Last Coverpoint : ['rs2_w1_val == 2048', 'rs1_w1_val == -33554433']
Last Code Sequence : 
	-[0x80000fa8]:KADDW t6, t5, t4
	-[0x80000fac]:sd t6, 912(ra)
Current Store : [0x80000fb0] : sd t5, 920(ra) -- Store: [0x800036b8]:0xFDFFFFFF3FFFFFFF




Last Coverpoint : ['rs2_w1_val == 1024']
Last Code Sequence : 
	-[0x80000fcc]:KADDW t6, t5, t4
	-[0x80000fd0]:sd t6, 928(ra)
Current Store : [0x80000fd4] : sd t5, 936(ra) -- Store: [0x800036c8]:0x0000000700000001




Last Coverpoint : ['rs2_w1_val == 512', 'rs2_w0_val == -1073741825', 'rs1_w1_val == -3']
Last Code Sequence : 
	-[0x80000ff8]:KADDW t6, t5, t4
	-[0x80000ffc]:sd t6, 944(ra)
Current Store : [0x80001000] : sd t5, 952(ra) -- Store: [0x800036d8]:0xFFFFFFFDFFFFEFFF




Last Coverpoint : ['rs2_w1_val == 128']
Last Code Sequence : 
	-[0x8000101c]:KADDW t6, t5, t4
	-[0x80001020]:sd t6, 960(ra)
Current Store : [0x80001024] : sd t5, 968(ra) -- Store: [0x800036e8]:0x0000020000010000




Last Coverpoint : ['rs2_w1_val == 64']
Last Code Sequence : 
	-[0x80001044]:KADDW t6, t5, t4
	-[0x80001048]:sd t6, 976(ra)
Current Store : [0x8000104c] : sd t5, 984(ra) -- Store: [0x800036f8]:0xFFFFFFBF00040000




Last Coverpoint : ['rs2_w1_val == 8']
Last Code Sequence : 
	-[0x8000106c]:KADDW t6, t5, t4
	-[0x80001070]:sd t6, 992(ra)
Current Store : [0x80001074] : sd t5, 1000(ra) -- Store: [0x80003708]:0x00000009FFFDFFFF




Last Coverpoint : ['rs2_w1_val == 2']
Last Code Sequence : 
	-[0x80001090]:KADDW t6, t5, t4
	-[0x80001094]:sd t6, 1008(ra)
Current Store : [0x80001098] : sd t5, 1016(ra) -- Store: [0x80003718]:0x00000000FFEFFFFF




Last Coverpoint : ['rs2_w1_val == 1']
Last Code Sequence : 
	-[0x800010b8]:KADDW t6, t5, t4
	-[0x800010bc]:sd t6, 1024(ra)
Current Store : [0x800010c0] : sd t5, 1032(ra) -- Store: [0x80003728]:0x3FFFFFFF00200000




Last Coverpoint : ['rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x800010e4]:KADDW t6, t5, t4
	-[0x800010e8]:sd t6, 1040(ra)
Current Store : [0x800010ec] : sd t5, 1048(ra) -- Store: [0x80003738]:0x5555555500000004




Last Coverpoint : ['rs2_w1_val == -1', 'rs1_w1_val == 64']
Last Code Sequence : 
	-[0x80001100]:KADDW t6, t5, t4
	-[0x80001104]:sd t6, 1056(ra)
Current Store : [0x80001108] : sd t5, 1064(ra) -- Store: [0x80003748]:0x0000004000000010




Last Coverpoint : ['rs2_w0_val == -1431655766', 'rs1_w1_val == 16']
Last Code Sequence : 
	-[0x80001128]:KADDW t6, t5, t4
	-[0x8000112c]:sd t6, 1072(ra)
Current Store : [0x80001130] : sd t5, 1080(ra) -- Store: [0x80003758]:0x00000010FFFFFFF9




Last Coverpoint : ['rs2_w0_val == 2147483647', 'rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x80001150]:KADDW t6, t5, t4
	-[0x80001154]:sd t6, 1088(ra)
Current Store : [0x80001158] : sd t5, 1096(ra) -- Store: [0x80003768]:0x00080000DFFFFFFF




Last Coverpoint : ['rs2_w0_val == -268435457']
Last Code Sequence : 
	-[0x80001174]:KADDW t6, t5, t4
	-[0x80001178]:sd t6, 1104(ra)
Current Store : [0x8000117c] : sd t5, 1112(ra) -- Store: [0x80003778]:0x0004000000000040




Last Coverpoint : ['rs2_w0_val == 16384']
Last Code Sequence : 
	-[0x8000119c]:KADDW t6, t5, t4
	-[0x800011a0]:sd t6, 1120(ra)
Current Store : [0x800011a4] : sd t5, 1128(ra) -- Store: [0x80003788]:0xFFFFFFFBFFFFFFFC




Last Coverpoint : ['rs2_w0_val == 4096', 'rs1_w1_val == -17']
Last Code Sequence : 
	-[0x800011c0]:KADDW t6, t5, t4
	-[0x800011c4]:sd t6, 1136(ra)
Current Store : [0x800011c8] : sd t5, 1144(ra) -- Store: [0x80003798]:0xFFFFFFEFFFFFFFFC




Last Coverpoint : ['rs2_w0_val == 512', 'rs1_w1_val == -1048577', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x800011e8]:KADDW t6, t5, t4
	-[0x800011ec]:sd t6, 1152(ra)
Current Store : [0x800011f0] : sd t5, 1160(ra) -- Store: [0x800037a8]:0xFFEFFFFF04000000




Last Coverpoint : ['rs2_w0_val == 256']
Last Code Sequence : 
	-[0x8000120c]:KADDW t6, t5, t4
	-[0x80001210]:sd t6, 1168(ra)
Current Store : [0x80001214] : sd t5, 1176(ra) -- Store: [0x800037b8]:0x0008000000000100




Last Coverpoint : ['rs2_w0_val == 128', 'rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x8000123c]:KADDW t6, t5, t4
	-[0x80001240]:sd t6, 1184(ra)
Current Store : [0x80001244] : sd t5, 1192(ra) -- Store: [0x800037c8]:0xFDFFFFFFFFFBFFFF




Last Coverpoint : ['rs2_w0_val == 64']
Last Code Sequence : 
	-[0x80001260]:KADDW t6, t5, t4
	-[0x80001264]:sd t6, 1200(ra)
Current Store : [0x80001268] : sd t5, 1208(ra) -- Store: [0x800037d8]:0xFFFFFFEF00040000




Last Coverpoint : ['rs2_w0_val == 32']
Last Code Sequence : 
	-[0x8000128c]:KADDW t6, t5, t4
	-[0x80001290]:sd t6, 1216(ra)
Current Store : [0x80001294] : sd t5, 1224(ra) -- Store: [0x800037e8]:0xFFF7FFFF00000001




Last Coverpoint : ['rs2_w0_val == 4']
Last Code Sequence : 
	-[0x800012b4]:KADDW t6, t5, t4
	-[0x800012b8]:sd t6, 1232(ra)
Current Store : [0x800012bc] : sd t5, 1240(ra) -- Store: [0x800037f8]:0xF7FFFFFF00000400




Last Coverpoint : ['rs2_w0_val == 2', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x800012dc]:KADDW t6, t5, t4
	-[0x800012e0]:sd t6, 1248(ra)
Current Store : [0x800012e4] : sd t5, 1256(ra) -- Store: [0x80003808]:0xC000000040000000




Last Coverpoint : ['rs2_w0_val == 16777216', 'rs1_w1_val == 2147483647']
Last Code Sequence : 
	-[0x80001304]:KADDW t6, t5, t4
	-[0x80001308]:sd t6, 1264(ra)
Current Store : [0x8000130c] : sd t5, 1272(ra) -- Store: [0x80003818]:0x7FFFFFFF01000000




Last Coverpoint : ['rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80001328]:KADDW t6, t5, t4
	-[0x8000132c]:sd t6, 1280(ra)
Current Store : [0x80001330] : sd t5, 1288(ra) -- Store: [0x80003828]:0x7FFFFFFFFFFFFFFE




Last Coverpoint : ['rs1_w1_val == -16777217']
Last Code Sequence : 
	-[0x80001350]:KADDW t6, t5, t4
	-[0x80001354]:sd t6, 1296(ra)
Current Store : [0x80001358] : sd t5, 1304(ra) -- Store: [0x80003838]:0xFEFFFFFF3FFFFFFF




Last Coverpoint : ['rs1_w1_val == -8388609', 'rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80001378]:KADDW t6, t5, t4
	-[0x8000137c]:sd t6, 1312(ra)
Current Store : [0x80001380] : sd t5, 1320(ra) -- Store: [0x80003848]:0xFF7FFFFFFFFFFFDF




Last Coverpoint : ['rs2_w0_val == -1048577', 'rs1_w1_val == -4194305']
Last Code Sequence : 
	-[0x800013a4]:KADDW t6, t5, t4
	-[0x800013a8]:sd t6, 1328(ra)
Current Store : [0x800013ac] : sd t5, 1336(ra) -- Store: [0x80003858]:0xFFBFFFFF00000100




Last Coverpoint : ['rs2_w0_val == -2049', 'rs1_w1_val == -2097153', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800013d4]:KADDW t6, t5, t4
	-[0x800013d8]:sd t6, 1344(ra)
Current Store : [0x800013dc] : sd t5, 1352(ra) -- Store: [0x80003868]:0xFFDFFFFFFFFEFFFF




Last Coverpoint : ['rs2_w0_val == -9', 'rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x800013fc]:KADDW t6, t5, t4
	-[0x80001400]:sd t6, 1360(ra)
Current Store : [0x80001404] : sd t5, 1368(ra) -- Store: [0x80003878]:0xFFFFFEFFFFF7FFFF




Last Coverpoint : ['rs1_w1_val == -2']
Last Code Sequence : 
	-[0x80001420]:KADDW t6, t5, t4
	-[0x80001424]:sd t6, 1376(ra)
Current Store : [0x80001428] : sd t5, 1384(ra) -- Store: [0x80003888]:0xFFFFFFFE01000000




Last Coverpoint : ['rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x80001444]:KADDW t6, t5, t4
	-[0x80001448]:sd t6, 1392(ra)
Current Store : [0x8000144c] : sd t5, 1400(ra) -- Store: [0x80003898]:0x4000000000000200




Last Coverpoint : ['rs1_w1_val == 67108864']
Last Code Sequence : 
	-[0x8000146c]:KADDW t6, t5, t4
	-[0x80001470]:sd t6, 1408(ra)
Current Store : [0x80001474] : sd t5, 1416(ra) -- Store: [0x800038a8]:0x04000000FFFFFFBF




Last Coverpoint : ['rs1_w1_val == 33554432', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x8000149c]:KADDW t6, t5, t4
	-[0x800014a0]:sd t6, 1424(ra)
Current Store : [0x800014a4] : sd t5, 1432(ra) -- Store: [0x800038b8]:0x02000000BFFFFFFF




Last Coverpoint : ['rs1_w1_val == 2097152']
Last Code Sequence : 
	-[0x800014c4]:KADDW t6, t5, t4
	-[0x800014c8]:sd t6, 1440(ra)
Current Store : [0x800014cc] : sd t5, 1448(ra) -- Store: [0x800038c8]:0x00200000FFFFFFFA




Last Coverpoint : ['rs1_w1_val == 8192']
Last Code Sequence : 
	-[0x800014e8]:KADDW t6, t5, t4
	-[0x800014ec]:sd t6, 1456(ra)
Current Store : [0x800014f0] : sd t5, 1464(ra) -- Store: [0x800038d8]:0x0000200000000009




Last Coverpoint : ['rs1_w1_val == 2048']
Last Code Sequence : 
	-[0x8000150c]:KADDW t6, t5, t4
	-[0x80001510]:sd t6, 1472(ra)
Current Store : [0x80001514] : sd t5, 1480(ra) -- Store: [0x800038e8]:0x0000080000000400




Last Coverpoint : ['rs1_w1_val == 1024']
Last Code Sequence : 
	-[0x80001530]:KADDW t6, t5, t4
	-[0x80001534]:sd t6, 1488(ra)
Current Store : [0x80001538] : sd t5, 1496(ra) -- Store: [0x800038f8]:0x0000040000000004




Last Coverpoint : ['rs1_w0_val == -2147483648', 'rs2_w0_val == 1073741824', 'rs1_w1_val == 8']
Last Code Sequence : 
	-[0x80001550]:KADDW t6, t5, t4
	-[0x80001554]:sd t6, 1504(ra)
Current Store : [0x80001558] : sd t5, 1512(ra) -- Store: [0x80003908]:0x0000000880000000




Last Coverpoint : ['rs1_w1_val == 1']
Last Code Sequence : 
	-[0x80001570]:KADDW t6, t5, t4
	-[0x80001574]:sd t6, 1520(ra)
Current Store : [0x80001578] : sd t5, 1528(ra) -- Store: [0x80003918]:0x00000001EFFFFFFF




Last Coverpoint : ['rs2_w0_val == -33554433']
Last Code Sequence : 
	-[0x8000159c]:KADDW t6, t5, t4
	-[0x800015a0]:sd t6, 1536(ra)
Current Store : [0x800015a4] : sd t5, 1544(ra) -- Store: [0x80003928]:0xFFFDFFFFFFBFFFFF




Last Coverpoint : ['rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x800015d4]:KADDW t6, t5, t4
	-[0x800015d8]:sd t6, 1552(ra)
Current Store : [0x800015dc] : sd t5, 1560(ra) -- Store: [0x80003938]:0x00080000AAAAAAAA




Last Coverpoint : ['rs2_w0_val == -2097153']
Last Code Sequence : 
	-[0x80001600]:KADDW t6, t5, t4
	-[0x80001604]:sd t6, 1568(ra)
Current Store : [0x80001608] : sd t5, 1576(ra) -- Store: [0x80003948]:0xFDFFFFFF00000004




Last Coverpoint : ['rs2_w1_val == -129', 'rs2_w0_val == -524289']
Last Code Sequence : 
	-[0x8000162c]:KADDW t6, t5, t4
	-[0x80001630]:sd t6, 1584(ra)
Current Store : [0x80001634] : sd t5, 1592(ra) -- Store: [0x80003958]:0xFFFFFBFFF7FFFFFF




Last Coverpoint : ['rs2_w0_val == 2097152', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80001654]:KADDW t6, t5, t4
	-[0x80001658]:sd t6, 1600(ra)
Current Store : [0x8000165c] : sd t5, 1608(ra) -- Store: [0x80003968]:0xFFFF7FFFFDFFFFFF




Last Coverpoint : ['rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80001680]:KADDW t6, t5, t4
	-[0x80001684]:sd t6, 1616(ra)
Current Store : [0x80001688] : sd t5, 1624(ra) -- Store: [0x80003978]:0xF7FFFFFFFF7FFFFF




Last Coverpoint : ['rs2_w0_val == -8193']
Last Code Sequence : 
	-[0x800016a8]:KADDW t6, t5, t4
	-[0x800016ac]:sd t6, 1632(ra)
Current Store : [0x800016b0] : sd t5, 1640(ra) -- Store: [0x80003988]:0xFFFFFFFE00000009




Last Coverpoint : ['rs2_w0_val == -513']
Last Code Sequence : 
	-[0x800016c8]:KADDW t6, t5, t4
	-[0x800016cc]:sd t6, 1648(ra)
Current Store : [0x800016d0] : sd t5, 1656(ra) -- Store: [0x80003998]:0x0000001020000000




Last Coverpoint : ['rs2_w0_val == -257']
Last Code Sequence : 
	-[0x800016ec]:KADDW t6, t5, t4
	-[0x800016f0]:sd t6, 1664(ra)
Current Store : [0x800016f4] : sd t5, 1672(ra) -- Store: [0x800039a8]:0xFFFFFFF8FFFFFFFB




Last Coverpoint : ['rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x80001720]:KADDW t6, t5, t4
	-[0x80001724]:sd t6, 1680(ra)
Current Store : [0x80001728] : sd t5, 1688(ra) -- Store: [0x800039b8]:0x80000000FFFF7FFF




Last Coverpoint : ['rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x80001748]:KADDW t6, t5, t4
	-[0x8000174c]:sd t6, 1696(ra)
Current Store : [0x80001750] : sd t5, 1704(ra) -- Store: [0x800039c8]:0xFFFFFFF9FFFFBFFF




Last Coverpoint : ['rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80001778]:KADDW t6, t5, t4
	-[0x8000177c]:sd t6, 1712(ra)
Current Store : [0x80001780] : sd t5, 1720(ra) -- Store: [0x800039d8]:0xFFFFDFFFFFFFDFFF




Last Coverpoint : ['rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x8000179c]:KADDW t6, t5, t4
	-[0x800017a0]:sd t6, 1728(ra)
Current Store : [0x800017a4] : sd t5, 1736(ra) -- Store: [0x800039e8]:0xFFFFFFF8FFFFFBFF




Last Coverpoint : ['rs1_w0_val == -513']
Last Code Sequence : 
	-[0x800017cc]:KADDW t6, t5, t4
	-[0x800017d0]:sd t6, 1744(ra)
Current Store : [0x800017d4] : sd t5, 1752(ra) -- Store: [0x800039f8]:0xFFBFFFFFFFFFFDFF




Last Coverpoint : ['rs1_w0_val == -257']
Last Code Sequence : 
	-[0x800017f8]:KADDW t6, t5, t4
	-[0x800017fc]:sd t6, 1760(ra)
Current Store : [0x80001800] : sd t5, 1768(ra) -- Store: [0x80003a08]:0x00200000FFFFFEFF




Last Coverpoint : ['rs2_w0_val == -2147483648']
Last Code Sequence : 
	-[0x80001820]:KADDW t6, t5, t4
	-[0x80001824]:sd t6, 1776(ra)
Current Store : [0x80001828] : sd t5, 1784(ra) -- Store: [0x80003a18]:0x5555555500000005




Last Coverpoint : ['rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80001848]:KADDW t6, t5, t4
	-[0x8000184c]:sd t6, 1792(ra)
Current Store : [0x80001850] : sd t5, 1800(ra) -- Store: [0x80003a28]:0x00000400FFFFFFF7




Last Coverpoint : ['rs2_w0_val == 67108864']
Last Code Sequence : 
	-[0x8000186c]:KADDW t6, t5, t4
	-[0x80001870]:sd t6, 1808(ra)
Current Store : [0x80001874] : sd t5, 1816(ra) -- Store: [0x80003a38]:0xFFFFFFFC00000001




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80001898]:KADDW t6, t5, t4
	-[0x8000189c]:sd t6, 1824(ra)
Current Store : [0x800018a0] : sd t5, 1832(ra) -- Store: [0x80003a48]:0x08000000FFFFFFFD




Last Coverpoint : ['rs1_w1_val == 16777216']
Last Code Sequence : 
	-[0x800018c0]:KADDW t6, t5, t4
	-[0x800018c4]:sd t6, 1840(ra)
Current Store : [0x800018c8] : sd t5, 1848(ra) -- Store: [0x80003a58]:0x0100000000200000




Last Coverpoint : ['rs2_w0_val == 1048576']
Last Code Sequence : 
	-[0x800018e8]:KADDW t6, t5, t4
	-[0x800018ec]:sd t6, 1856(ra)
Current Store : [0x800018f0] : sd t5, 1864(ra) -- Store: [0x80003a68]:0x00000100FEFFFFFF




Last Coverpoint : ['rs1_w1_val == 8388608']
Last Code Sequence : 
	-[0x8000191c]:KADDW t6, t5, t4
	-[0x80001920]:sd t6, 1872(ra)
Current Store : [0x80001924] : sd t5, 1880(ra) -- Store: [0x80003a78]:0x00800000FFFFFFFB





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

|s.no|            signature             |                                                                                                                                                                 coverpoints                                                                                                                                                                  |                                code                                |
|---:|----------------------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------|
|   1|[0x80003210]<br>0x0000000000000000|- opcode : kaddw<br> - rs1 : x6<br> - rs2 : x6<br> - rd : x0<br> - rs1 == rs2 != rd<br> - rs1_w1_val == rs2_w1_val<br> - rs1_w1_val < 0 and rs2_w1_val < 0<br> - rs1_w0_val == rs2_w0_val<br> - rs1_w0_val > 0 and rs2_w0_val > 0<br> - rs2_w1_val == -257<br> - rs2_w0_val == 262144<br> - rs1_w1_val == -257<br> - rs1_w0_val == 262144<br> |[0x800003bc]:KADDW zero, t1, t1<br> [0x800003c0]:sd zero, 0(t2)<br> |
|   2|[0x80003220]<br>0x0000000040000000|- rs1 : x9<br> - rs2 : x9<br> - rd : x9<br> - rs1 == rs2 == rd<br> - rs1_w1_val > 0 and rs2_w1_val > 0<br> - rs2_w0_val == 536870912<br> - rs1_w0_val == 536870912<br>                                                                                                                                                                        |[0x800003dc]:KADDW s1, s1, s1<br> [0x800003e0]:sd s1, 16(t2)<br>    |
|   3|[0x80003230]<br>0xFFFFFFFFFFFF77FE|- rs1 : x23<br> - rs2 : x16<br> - rd : x26<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs1_w1_val != rs2_w1_val<br> - rs1_w1_val < 0 and rs2_w1_val > 0<br> - rs1_w0_val != rs2_w0_val<br> - rs1_w0_val < 0 and rs2_w0_val < 0<br> - rs2_w0_val == -32769<br> - rs1_w1_val == -1025<br> - rs1_w0_val == -2049<br>                     |[0x80000408]:KADDW s10, s7, a6<br> [0x8000040c]:sd s10, 32(t2)<br>  |
|   4|[0x80003240]<br>0x0000000020000800|- rs1 : x24<br> - rs2 : x19<br> - rd : x24<br> - rs1 == rd != rs2<br> - rs2_w1_val == -33554433<br> - rs2_w0_val == 2048<br> - rs1_w1_val == -268435457<br>                                                                                                                                                                                   |[0x8000043c]:KADDW s8, s8, s3<br> [0x80000440]:sd s8, 48(t2)<br>    |
|   5|[0x80003250]<br>0xFFFFFFFFFFFFFEFE|- rs1 : x28<br> - rs2 : x2<br> - rd : x2<br> - rs2 == rd != rs1<br> - rs2_w0_val == -129<br> - rs1_w1_val == -134217729<br> - rs1_w0_val == -129<br>                                                                                                                                                                                          |[0x80000460]:KADDW sp, t3, sp<br> [0x80000464]:sd sp, 64(t2)<br>    |
|   6|[0x80003260]<br>0xFFFFFFFFFFFFFFFB|- rs1 : x0<br> - rs2 : x12<br> - rd : x28<br> - rs2_w1_val == 16<br> - rs2_w0_val == -5<br> - rs1_w1_val == 0<br> - rs1_w0_val == 0<br>                                                                                                                                                                                                       |[0x8000048c]:KADDW t3, zero, a2<br> [0x80000490]:sd t3, 80(t2)<br>  |
|   7|[0x80003270]<br>0x0000000000000107|- rs1 : x30<br> - rs2 : x22<br> - rd : x3<br> - rs2_w1_val == -1431655766<br> - rs1_w1_val == -129<br> - rs1_w0_val == 256<br>                                                                                                                                                                                                                |[0x800004b4]:KADDW gp, t5, s6<br> [0x800004b8]:sd gp, 96(t2)<br>    |
|   8|[0x80003280]<br>0xFFFFFFFFFFFFFFF9|- rs1 : x5<br> - rs2 : x14<br> - rd : x22<br> - rs2_w1_val == 1431655765<br> - rs2_w0_val == -1<br> - rs1_w1_val == -513<br>                                                                                                                                                                                                                  |[0x800004dc]:KADDW s6, t0, a4<br> [0x800004e0]:sd s6, 112(t2)<br>   |
|   9|[0x80003290]<br>0x000000000001FFFC|- rs1 : x22<br> - rs2 : x24<br> - rd : x17<br> - rs1_w0_val > 0 and rs2_w0_val < 0<br> - rs2_w1_val == 2147483647<br> - rs1_w0_val == 131072<br>                                                                                                                                                                                              |[0x800004f8]:KADDW a7, s6, s8<br> [0x800004fc]:sd a7, 128(t2)<br>   |
|  10|[0x800032a0]<br>0xFFFFFFFFFF7FFFFF|- rs1 : x26<br> - rs2 : x1<br> - rd : x23<br> - rs1_w1_val > 0 and rs2_w1_val < 0<br> - rs1_w0_val < 0 and rs2_w0_val > 0<br> - rs2_w1_val == -1073741825<br> - rs2_w0_val == 8388608<br> - rs1_w1_val == 16384<br> - rs1_w0_val == -16777217<br>                                                                                             |[0x80000524]:KADDW s7, s10, ra<br> [0x80000528]:sd s7, 144(t2)<br>  |
|  11|[0x800032b0]<br>0xFFFFFFFFFFFFFFC7|- rs1 : x1<br> - rs2 : x28<br> - rd : x30<br> - rs2_w1_val == -536870913<br> - rs2_w0_val == -65<br> - rs1_w0_val == 8<br>                                                                                                                                                                                                                    |[0x80000548]:KADDW t5, ra, t3<br> [0x8000054c]:sd t5, 160(t2)<br>   |
|  12|[0x800032c0]<br>0x0000000008000009|- rs1 : x27<br> - rs2 : x5<br> - rd : x14<br> - rs2_w1_val == -268435457<br> - rs2_w0_val == 134217728<br> - rs1_w1_val == -65<br>                                                                                                                                                                                                            |[0x80000570]:KADDW a4, s11, t0<br> [0x80000574]:sd a4, 176(t2)<br>  |
|  13|[0x800032d0]<br>0x0000000008000040|- rs1 : x4<br> - rs2 : x20<br> - rd : x8<br> - rs2_w1_val == -134217729<br> - rs1_w0_val == 64<br>                                                                                                                                                                                                                                            |[0x80000598]:KADDW fp, tp, s4<br> [0x8000059c]:sd fp, 192(t2)<br>   |
|  14|[0x800032e0]<br>0x0000000010000005|- rs1 : x25<br> - rs2 : x21<br> - rd : x27<br> - rs2_w1_val == -67108865<br> - rs1_w1_val == -2147483648<br> - rs1_w0_val == 268435456<br>                                                                                                                                                                                                    |[0x800005c4]:KADDW s11, s9, s5<br> [0x800005c8]:sd s11, 208(t2)<br> |
|  15|[0x800032f0]<br>0xFFFFFFFFFFFF81FF|- rs1 : x18<br> - rs2 : x10<br> - rd : x1<br> - rs2_w1_val == -16777217<br> - rs1_w1_val == -5<br> - rs1_w0_val == 512<br>                                                                                                                                                                                                                    |[0x800005f0]:KADDW ra, s2, a0<br> [0x800005f4]:sd ra, 224(t2)<br>   |
|  16|[0x80003300]<br>0x0000000008040000|- rs1 : x31<br> - rs2 : x30<br> - rd : x16<br> - rs2_w1_val == -8388609<br> - rs1_w1_val == -524289<br> - rs1_w0_val == 134217728<br>                                                                                                                                                                                                         |[0x8000061c]:KADDW a6, t6, t5<br> [0x80000620]:sd a6, 240(t2)<br>   |
|  17|[0x80003310]<br>0xFFFFFFFFFFFFFFFD|- rs1 : x3<br> - rs2 : x25<br> - rd : x11<br> - rs2_w1_val == -4194305<br> - rs2_w0_val == -2<br> - rs1_w1_val == -33<br> - rs1_w0_val == -1<br>                                                                                                                                                                                              |[0x80000640]:KADDW a1, gp, s9<br> [0x80000644]:sd a1, 256(t2)<br>   |
|  18|[0x80003320]<br>0x000000007FFFFFFF|- rs1 : x19<br> - rs2 : x15<br> - rd : x12<br> - rs2_w1_val == -2097153<br> - rs2_w0_val == 65536<br> - rs1_w1_val == -131073<br> - rs1_w0_val == 2147483647<br>                                                                                                                                                                              |[0x80000678]:KADDW a2, s3, a5<br> [0x8000067c]:sd a2, 0(ra)<br>     |
|  19|[0x80003330]<br>0x0000000055555154|- rs1 : x13<br> - rs2 : x29<br> - rd : x10<br> - rs2_w1_val == -1048577<br> - rs2_w0_val == -1025<br> - rs1_w0_val == 1431655765<br>                                                                                                                                                                                                          |[0x800006a0]:KADDW a0, a3, t4<br> [0x800006a4]:sd a0, 16(ra)<br>    |
|  20|[0x80003340]<br>0xFFFFFFFFF0000000|- rs1 : x15<br> - rs2 : x7<br> - rd : x29<br> - rs2_w1_val == -524289<br> - rs2_w0_val == 1<br> - rs1_w1_val == -8193<br> - rs1_w0_val == -268435457<br>                                                                                                                                                                                      |[0x800006cc]:KADDW t4, a5, t2<br> [0x800006d0]:sd t4, 32(ra)<br>    |
|  21|[0x80003350]<br>0x0000000008000008|- rs1 : x17<br> - rs2 : x18<br> - rd : x21<br> - rs2_w1_val == -262145<br> - rs2_w0_val == 8<br>                                                                                                                                                                                                                                              |[0x800006f8]:KADDW s5, a7, s2<br> [0x800006fc]:sd s5, 48(ra)<br>    |
|  22|[0x80003360]<br>0x0000000000002400|- rs1 : x8<br> - rs2 : x27<br> - rd : x31<br> - rs2_w1_val == -131073<br> - rs2_w0_val == 8192<br> - rs1_w0_val == 1024<br>                                                                                                                                                                                                                   |[0x80000724]:KADDW t6, fp, s11<br> [0x80000728]:sd t6, 64(ra)<br>   |
|  23|[0x80003370]<br>0x00000000000003FA|- rs1 : x21<br> - rs2 : x23<br> - rd : x25<br> - rs2_w1_val == -65537<br> - rs2_w0_val == 1024<br> - rs1_w1_val == -67108865<br>                                                                                                                                                                                                              |[0x8000074c]:KADDW s9, s5, s7<br> [0x80000750]:sd s9, 80(ra)<br>    |
|  24|[0x80003380]<br>0xFFFFFFFFFFFFF07F|- rs1 : x16<br> - rs2 : x11<br> - rd : x4<br> - rs2_w1_val == -32769<br> - rs2_w0_val == -4097<br> - rs1_w1_val == -1431655766<br> - rs1_w0_val == 128<br>                                                                                                                                                                                    |[0x8000077c]:KADDW tp, a6, a1<br> [0x80000780]:sd tp, 96(ra)<br>    |
|  25|[0x80003390]<br>0xFFFFFFFFE1FFFFFF|- rs1 : x12<br> - rs2 : x26<br> - rd : x15<br> - rs2_w1_val == -16385<br> - rs2_w0_val == 33554432<br> - rs1_w1_val == 262144<br> - rs1_w0_val == -536870913<br>                                                                                                                                                                              |[0x800007a4]:KADDW a5, a2, s10<br> [0x800007a8]:sd a5, 112(ra)<br>  |
|  26|[0x800033a0]<br>0xFFFFFFFFFFBFFFF7|- rs1 : x10<br> - rs2 : x13<br> - rd : x5<br> - rs2_w1_val == -8193<br> - rs2_w0_val == -4194305<br> - rs1_w1_val == 131072<br>                                                                                                                                                                                                               |[0x800007d0]:KADDW t0, a0, a3<br> [0x800007d4]:sd t0, 128(ra)<br>   |
|  27|[0x800033b0]<br>0xFFFFFFFFFFEDFFFE|- rs1 : x14<br> - rs2 : x4<br> - rd : x6<br> - rs2_w1_val == -4097<br> - rs2_w0_val == -131073<br> - rs1_w1_val == -2049<br> - rs1_w0_val == -1048577<br>                                                                                                                                                                                     |[0x800007fc]:KADDW t1, a4, tp<br> [0x80000800]:sd t1, 144(ra)<br>   |
|  28|[0x800033c0]<br>0xFFFFFFFFFFFFFC7F|- rs1 : x20<br> - rs2 : x31<br> - rd : x13<br> - rs2_w1_val == -2049<br> - rs1_w1_val == 1048576<br>                                                                                                                                                                                                                                          |[0x80000820]:KADDW a3, s4, t6<br> [0x80000824]:sd a3, 160(ra)<br>   |
|  29|[0x800033d0]<br>0xFFFFFFFFBFDFFFFF|- rs1 : x11<br> - rs2 : x8<br> - rd : x18<br> - rs2_w1_val == -1025<br> - rs1_w0_val == -2097153<br>                                                                                                                                                                                                                                          |[0x80000848]:KADDW s2, a1, fp<br> [0x8000084c]:sd s2, 176(ra)<br>   |
|  30|[0x800033e0]<br>0x0000000000007FFF|- rs1 : x2<br> - rs2 : x17<br> - rd : x20<br> - rs2_w1_val == -513<br> - rs2_w0_val == 32768<br>                                                                                                                                                                                                                                              |[0x8000086c]:KADDW s4, sp, a7<br> [0x80000870]:sd s4, 192(ra)<br>   |
|  31|[0x800033f0]<br>0x0000000000002000|- rs1 : x7<br> - rs2 : x0<br> - rd : x19<br> - rs2_w1_val == 0<br> - rs2_w0_val == 0<br> - rs1_w0_val == 8192<br>                                                                                                                                                                                                                             |[0x80000894]:KADDW s3, t2, zero<br> [0x80000898]:sd s3, 208(ra)<br> |
|  32|[0x80003400]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x29<br> - rs2 : x3<br> - rd : x7<br> - rs2_w1_val == -65<br>                                                                                                                                                                                                                                                                          |[0x800008b8]:KADDW t2, t4, gp<br> [0x800008bc]:sd t2, 224(ra)<br>   |
|  33|[0x80003410]<br>0xFFFFFFFFFBFEFFFE|- rs2_w1_val == -33<br> - rs2_w0_val == -65537<br> - rs1_w0_val == -67108865<br>                                                                                                                                                                                                                                                              |[0x800008e8]:KADDW t6, t5, t4<br> [0x800008ec]:sd t6, 240(ra)<br>   |
|  34|[0x80003420]<br>0x0000000000800009|- rs2_w1_val == -17<br> - rs1_w1_val == 4096<br>                                                                                                                                                                                                                                                                                              |[0x8000090c]:KADDW t6, t5, t4<br> [0x80000910]:sd t6, 256(ra)<br>   |
|  35|[0x80003430]<br>0x0000000020020000|- rs2_w1_val == -9<br> - rs2_w0_val == 131072<br> - rs1_w1_val == -536870913<br>                                                                                                                                                                                                                                                              |[0x80000934]:KADDW t6, t5, t4<br> [0x80000938]:sd t6, 272(ra)<br>   |
|  36|[0x80003440]<br>0xFFFFFFFFFBFFFFF8|- rs2_w1_val == -5<br> - rs2_w0_val == -67108865<br>                                                                                                                                                                                                                                                                                          |[0x8000095c]:KADDW t6, t5, t4<br> [0x80000960]:sd t6, 288(ra)<br>   |
|  37|[0x80003450]<br>0x000000000007FFEF|- rs2_w1_val == -3<br> - rs2_w0_val == 524288<br> - rs1_w1_val == 32<br> - rs1_w0_val == -17<br>                                                                                                                                                                                                                                              |[0x80000980]:KADDW t6, t5, t4<br> [0x80000984]:sd t6, 304(ra)<br>   |
|  38|[0x80003460]<br>0xFFFFFFFFFFFFFFF3|- rs2_w1_val == -2<br> - rs1_w0_val == -5<br>                                                                                                                                                                                                                                                                                                 |[0x800009a8]:KADDW t6, t5, t4<br> [0x800009ac]:sd t6, 320(ra)<br>   |
|  39|[0x80003470]<br>0xFFFFFFFFF7BFFFFE|- rs2_w1_val == -2147483648<br> - rs2_w0_val == -134217729<br> - rs1_w0_val == -4194305<br>                                                                                                                                                                                                                                                   |[0x800009d8]:KADDW t6, t5, t4<br> [0x800009dc]:sd t6, 336(ra)<br>   |
|  40|[0x80003480]<br>0xFFFFFFFFFFFFFFC8|- rs2_w1_val == 1073741824<br> - rs1_w1_val == 256<br> - rs1_w0_val == -65<br>                                                                                                                                                                                                                                                                |[0x800009fc]:KADDW t6, t5, t4<br> [0x80000a00]:sd t6, 352(ra)<br>   |
|  41|[0x80003490]<br>0x0000000055535554|- rs2_w1_val == 536870912<br> - rs1_w1_val == -32769<br>                                                                                                                                                                                                                                                                                      |[0x80000a38]:KADDW t6, t5, t4<br> [0x80000a3c]:sd t6, 368(ra)<br>   |
|  42|[0x800034a0]<br>0x0000000000007F7F|- rs2_w1_val == 268435456<br>                                                                                                                                                                                                                                                                                                                 |[0x80000a60]:KADDW t6, t5, t4<br> [0x80000a64]:sd t6, 384(ra)<br>   |
|  43|[0x800034b0]<br>0x0000000007FFFFFF|- rs2_w1_val == 134217728<br> - rs1_w1_val == 65536<br>                                                                                                                                                                                                                                                                                       |[0x80000a8c]:KADDW t6, t5, t4<br> [0x80000a90]:sd t6, 400(ra)<br>   |
|  44|[0x800034c0]<br>0x0000000000400020|- rs2_w1_val == 67108864<br> - rs2_w0_val == 4194304<br> - rs1_w1_val == -1073741825<br> - rs1_w0_val == 32<br>                                                                                                                                                                                                                               |[0x80000ab8]:KADDW t6, t5, t4<br> [0x80000abc]:sd t6, 416(ra)<br>   |
|  45|[0x800034d0]<br>0xFFFFFFFFF7FFFFFC|- rs2_w1_val == 33554432<br> - rs2_w0_val == -3<br> - rs1_w1_val == 128<br> - rs1_w0_val == -134217729<br>                                                                                                                                                                                                                                    |[0x80000ae4]:KADDW t6, t5, t4<br> [0x80000ae8]:sd t6, 432(ra)<br>   |
|  46|[0x800034e0]<br>0x0000000001FFFFBF|- rs2_w1_val == 16777216<br> - rs1_w1_val == -9<br>                                                                                                                                                                                                                                                                                           |[0x80000b0c]:KADDW t6, t5, t4<br> [0x80000b10]:sd t6, 448(ra)<br>   |
|  47|[0x800034f0]<br>0x0000000000000090|- rs2_w1_val == 8388608<br> - rs2_w0_val == 16<br> - rs1_w1_val == 32768<br>                                                                                                                                                                                                                                                                  |[0x80000b30]:KADDW t6, t5, t4<br> [0x80000b34]:sd t6, 464(ra)<br>   |
|  48|[0x80003500]<br>0xFFFFFFFFFFFFDFFF|- rs2_w1_val == 4194304<br> - rs2_w0_val == -16385<br>                                                                                                                                                                                                                                                                                        |[0x80000b60]:KADDW t6, t5, t4<br> [0x80000b64]:sd t6, 480(ra)<br>   |
|  49|[0x80003510]<br>0xFFFFFFFFFFFDFFEE|- rs2_w1_val == 2097152<br> - rs2_w0_val == -17<br> - rs1_w1_val == 4194304<br> - rs1_w0_val == -131073<br>                                                                                                                                                                                                                                   |[0x80000b94]:KADDW t6, t5, t4<br> [0x80000b98]:sd t6, 496(ra)<br>   |
|  50|[0x80003520]<br>0x0000000045555554|- rs2_w1_val == 1048576<br> - rs2_w0_val == 1431655765<br>                                                                                                                                                                                                                                                                                    |[0x80000bc4]:KADDW t6, t5, t4<br> [0x80000bc8]:sd t6, 512(ra)<br>   |
|  51|[0x80003530]<br>0x00000000000001FE|- rs2_w1_val == 524288<br> - rs1_w1_val == 4<br>                                                                                                                                                                                                                                                                                              |[0x80000bec]:KADDW t6, t5, t4<br> [0x80000bf0]:sd t6, 528(ra)<br>   |
|  52|[0x80003540]<br>0x0000000002000005|- rs2_w1_val == 262144<br> - rs1_w0_val == 33554432<br>                                                                                                                                                                                                                                                                                       |[0x80000c0c]:KADDW t6, t5, t4<br> [0x80000c10]:sd t6, 544(ra)<br>   |
|  53|[0x80003550]<br>0x00000000007FFFFF|- rs2_w0_val == -8388609<br> - rs1_w0_val == 16777216<br>                                                                                                                                                                                                                                                                                     |[0x80000c34]:KADDW t6, t5, t4<br> [0x80000c38]:sd t6, 560(ra)<br>   |
|  54|[0x80003560]<br>0x0000000008800000|- rs1_w0_val == 8388608<br>                                                                                                                                                                                                                                                                                                                   |[0x80000c58]:KADDW t6, t5, t4<br> [0x80000c5c]:sd t6, 576(ra)<br>   |
|  55|[0x80003570]<br>0x00000000003FFFFE|- rs1_w1_val == -262145<br> - rs1_w0_val == 4194304<br>                                                                                                                                                                                                                                                                                       |[0x80000c7c]:KADDW t6, t5, t4<br> [0x80000c80]:sd t6, 592(ra)<br>   |
|  56|[0x80003580]<br>0xFFFFFFFFFFDFFFFF|- rs1_w1_val == 536870912<br> - rs1_w0_val == 2097152<br>                                                                                                                                                                                                                                                                                     |[0x80000ca8]:KADDW t6, t5, t4<br> [0x80000cac]:sd t6, 608(ra)<br>   |
|  57|[0x80003590]<br>0x0000000000108000|- rs1_w1_val == -1<br> - rs1_w0_val == 1048576<br>                                                                                                                                                                                                                                                                                            |[0x80000ccc]:KADDW t6, t5, t4<br> [0x80000cd0]:sd t6, 624(ra)<br>   |
|  58|[0x800035a0]<br>0x0000000000080003|- rs2_w1_val == 32768<br> - rs1_w0_val == 524288<br>                                                                                                                                                                                                                                                                                          |[0x80000cf4]:KADDW t6, t5, t4<br> [0x80000cf8]:sd t6, 640(ra)<br>   |
|  59|[0x800035c0]<br>0x0000000000030000|- rs2_w1_val == 4<br> - rs1_w1_val == 512<br> - rs1_w0_val == 65536<br>                                                                                                                                                                                                                                                                       |[0x80000d44]:KADDW t6, t5, t4<br> [0x80000d48]:sd t6, 672(ra)<br>   |
|  60|[0x800035d0]<br>0x0000000000018000|- rs1_w0_val == 32768<br>                                                                                                                                                                                                                                                                                                                     |[0x80000d74]:KADDW t6, t5, t4<br> [0x80000d78]:sd t6, 688(ra)<br>   |
|  61|[0x800035e0]<br>0x0000000040003FFF|- rs1_w1_val == 268435456<br> - rs1_w0_val == 16384<br>                                                                                                                                                                                                                                                                                       |[0x80000da4]:KADDW t6, t5, t4<br> [0x80000da8]:sd t6, 704(ra)<br>   |
|  62|[0x800035f0]<br>0xFFFFFFFFFFFF0FFF|- rs1_w0_val == 4096<br>                                                                                                                                                                                                                                                                                                                      |[0x80000dd4]:KADDW t6, t5, t4<br> [0x80000dd8]:sd t6, 720(ra)<br>   |
|  63|[0x80003600]<br>0x00000000000007FE|- rs2_w1_val == 256<br> - rs1_w1_val == 134217728<br> - rs1_w0_val == 2048<br>                                                                                                                                                                                                                                                                |[0x80000e00]:KADDW t6, t5, t4<br> [0x80000e04]:sd t6, 736(ra)<br>   |
|  64|[0x80003610]<br>0x0000000010000010|- rs2_w1_val == 32<br> - rs2_w0_val == 268435456<br> - rs1_w1_val == 2<br> - rs1_w0_val == 16<br>                                                                                                                                                                                                                                             |[0x80000e20]:KADDW t6, t5, t4<br> [0x80000e24]:sd t6, 752(ra)<br>   |
|  65|[0x80003620]<br>0x0000000000020004|- rs1_w0_val == 4<br>                                                                                                                                                                                                                                                                                                                         |[0x80000e44]:KADDW t6, t5, t4<br> [0x80000e48]:sd t6, 768(ra)<br>   |
|  66|[0x80003630]<br>0x0000000000800002|- rs1_w0_val == 2<br>                                                                                                                                                                                                                                                                                                                         |[0x80000e6c]:KADDW t6, t5, t4<br> [0x80000e70]:sd t6, 784(ra)<br>   |
|  67|[0x80003640]<br>0x0000000010000001|- rs1_w1_val == -16385<br> - rs1_w0_val == 1<br>                                                                                                                                                                                                                                                                                              |[0x80000e90]:KADDW t6, t5, t4<br> [0x80000e94]:sd t6, 800(ra)<br>   |
|  68|[0x80003660]<br>0xFFFFFFFFEFFFFFFF|- rs2_w1_val == 131072<br> - rs2_w0_val == -536870913<br>                                                                                                                                                                                                                                                                                     |[0x80000edc]:KADDW t6, t5, t4<br> [0x80000ee0]:sd t6, 832(ra)<br>   |
|  69|[0x80003670]<br>0xFFFFFFFFFF01FFFF|- rs2_w1_val == 65536<br> - rs2_w0_val == -16777217<br> - rs1_w1_val == -4097<br>                                                                                                                                                                                                                                                             |[0x80000f04]:KADDW t6, t5, t4<br> [0x80000f08]:sd t6, 848(ra)<br>   |
|  70|[0x80003680]<br>0xFFFFFFFFF7FBFFFE|- rs2_w1_val == 16384<br> - rs2_w0_val == -262145<br>                                                                                                                                                                                                                                                                                         |[0x80000f2c]:KADDW t6, t5, t4<br> [0x80000f30]:sd t6, 864(ra)<br>   |
|  71|[0x80003690]<br>0xFFFFFFFFFEFFFFDE|- rs2_w1_val == 8192<br> - rs2_w0_val == -33<br> - rs1_w1_val == -65537<br>                                                                                                                                                                                                                                                                   |[0x80000f58]:KADDW t6, t5, t4<br> [0x80000f5c]:sd t6, 880(ra)<br>   |
|  72|[0x800036a0]<br>0xFFFFFFFFFFFFF006|- rs2_w1_val == 4096<br> - rs1_w0_val == -4097<br>                                                                                                                                                                                                                                                                                            |[0x80000f80]:KADDW t6, t5, t4<br> [0x80000f84]:sd t6, 896(ra)<br>   |
|  73|[0x800036b0]<br>0x0000000040000005|- rs2_w1_val == 2048<br> - rs1_w1_val == -33554433<br>                                                                                                                                                                                                                                                                                        |[0x80000fa8]:KADDW t6, t5, t4<br> [0x80000fac]:sd t6, 912(ra)<br>   |
|  74|[0x800036c0]<br>0xFFFFFFFFFFFFFFF9|- rs2_w1_val == 1024<br>                                                                                                                                                                                                                                                                                                                      |[0x80000fcc]:KADDW t6, t5, t4<br> [0x80000fd0]:sd t6, 928(ra)<br>   |
|  75|[0x800036d0]<br>0xFFFFFFFFBFFFEFFE|- rs2_w1_val == 512<br> - rs2_w0_val == -1073741825<br> - rs1_w1_val == -3<br>                                                                                                                                                                                                                                                                |[0x80000ff8]:KADDW t6, t5, t4<br> [0x80000ffc]:sd t6, 944(ra)<br>   |
|  76|[0x800036e0]<br>0xFFFFFFFFE000FFFF|- rs2_w1_val == 128<br>                                                                                                                                                                                                                                                                                                                       |[0x8000101c]:KADDW t6, t5, t4<br> [0x80001020]:sd t6, 960(ra)<br>   |
|  77|[0x800036f0]<br>0xFFFFFFFFFF83FFFF|- rs2_w1_val == 64<br>                                                                                                                                                                                                                                                                                                                        |[0x80001044]:KADDW t6, t5, t4<br> [0x80001048]:sd t6, 976(ra)<br>   |
|  78|[0x80003700]<br>0xFFFFFFFFFFFDFFF7|- rs2_w1_val == 8<br>                                                                                                                                                                                                                                                                                                                         |[0x8000106c]:KADDW t6, t5, t4<br> [0x80001070]:sd t6, 992(ra)<br>   |
|  79|[0x80003710]<br>0xFFFFFFFFFFEFFFFF|- rs2_w1_val == 2<br>                                                                                                                                                                                                                                                                                                                         |[0x80001090]:KADDW t6, t5, t4<br> [0x80001094]:sd t6, 1008(ra)<br>  |
|  80|[0x80003720]<br>0x0000000000208000|- rs2_w1_val == 1<br>                                                                                                                                                                                                                                                                                                                         |[0x800010b8]:KADDW t6, t5, t4<br> [0x800010bc]:sd t6, 1024(ra)<br>  |
|  81|[0x80003730]<br>0xFFFFFFFFFFFF0003|- rs1_w1_val == 1431655765<br>                                                                                                                                                                                                                                                                                                                |[0x800010e4]:KADDW t6, t5, t4<br> [0x800010e8]:sd t6, 1040(ra)<br>  |
|  82|[0x80003740]<br>0xFFFFFFFFFFFFFF8F|- rs2_w1_val == -1<br> - rs1_w1_val == 64<br>                                                                                                                                                                                                                                                                                                 |[0x80001100]:KADDW t6, t5, t4<br> [0x80001104]:sd t6, 1056(ra)<br>  |
|  83|[0x80003750]<br>0xFFFFFFFFAAAAAAA3|- rs2_w0_val == -1431655766<br> - rs1_w1_val == 16<br>                                                                                                                                                                                                                                                                                        |[0x80001128]:KADDW t6, t5, t4<br> [0x8000112c]:sd t6, 1072(ra)<br>  |
|  84|[0x80003760]<br>0x000000005FFFFFFE|- rs2_w0_val == 2147483647<br> - rs1_w1_val == 524288<br>                                                                                                                                                                                                                                                                                     |[0x80001150]:KADDW t6, t5, t4<br> [0x80001154]:sd t6, 1088(ra)<br>  |
|  85|[0x80003770]<br>0xFFFFFFFFF000003F|- rs2_w0_val == -268435457<br>                                                                                                                                                                                                                                                                                                                |[0x80001174]:KADDW t6, t5, t4<br> [0x80001178]:sd t6, 1104(ra)<br>  |
|  86|[0x80003780]<br>0x0000000000003FFC|- rs2_w0_val == 16384<br>                                                                                                                                                                                                                                                                                                                     |[0x8000119c]:KADDW t6, t5, t4<br> [0x800011a0]:sd t6, 1120(ra)<br>  |
|  87|[0x80003790]<br>0x0000000000000FFC|- rs2_w0_val == 4096<br> - rs1_w1_val == -17<br>                                                                                                                                                                                                                                                                                              |[0x800011c0]:KADDW t6, t5, t4<br> [0x800011c4]:sd t6, 1136(ra)<br>  |
|  88|[0x800037a0]<br>0x0000000004000200|- rs2_w0_val == 512<br> - rs1_w1_val == -1048577<br> - rs1_w0_val == 67108864<br>                                                                                                                                                                                                                                                             |[0x800011e8]:KADDW t6, t5, t4<br> [0x800011ec]:sd t6, 1152(ra)<br>  |
|  89|[0x800037b0]<br>0x0000000000000200|- rs2_w0_val == 256<br>                                                                                                                                                                                                                                                                                                                       |[0x8000120c]:KADDW t6, t5, t4<br> [0x80001210]:sd t6, 1168(ra)<br>  |
|  90|[0x800037c0]<br>0xFFFFFFFFFFFC007F|- rs2_w0_val == 128<br> - rs1_w0_val == -262145<br>                                                                                                                                                                                                                                                                                           |[0x8000123c]:KADDW t6, t5, t4<br> [0x80001240]:sd t6, 1184(ra)<br>  |
|  91|[0x800037d0]<br>0x0000000000040040|- rs2_w0_val == 64<br>                                                                                                                                                                                                                                                                                                                        |[0x80001260]:KADDW t6, t5, t4<br> [0x80001264]:sd t6, 1200(ra)<br>  |
|  92|[0x800037e0]<br>0x0000000000000021|- rs2_w0_val == 32<br>                                                                                                                                                                                                                                                                                                                        |[0x8000128c]:KADDW t6, t5, t4<br> [0x80001290]:sd t6, 1216(ra)<br>  |
|  93|[0x800037f0]<br>0x0000000000000404|- rs2_w0_val == 4<br>                                                                                                                                                                                                                                                                                                                         |[0x800012b4]:KADDW t6, t5, t4<br> [0x800012b8]:sd t6, 1232(ra)<br>  |
|  94|[0x80003800]<br>0x0000000040000002|- rs2_w0_val == 2<br> - rs1_w0_val == 1073741824<br>                                                                                                                                                                                                                                                                                          |[0x800012dc]:KADDW t6, t5, t4<br> [0x800012e0]:sd t6, 1248(ra)<br>  |
|  95|[0x80003810]<br>0x0000000002000000|- rs2_w0_val == 16777216<br> - rs1_w1_val == 2147483647<br>                                                                                                                                                                                                                                                                                   |[0x80001304]:KADDW t6, t5, t4<br> [0x80001308]:sd t6, 1264(ra)<br>  |
|  96|[0x80003820]<br>0xFFFFFFFFFFFFFFF9|- rs1_w0_val == -2<br>                                                                                                                                                                                                                                                                                                                        |[0x80001328]:KADDW t6, t5, t4<br> [0x8000132c]:sd t6, 1280(ra)<br>  |
|  97|[0x80003830]<br>0x000000003FFFFFEE|- rs1_w1_val == -16777217<br>                                                                                                                                                                                                                                                                                                                 |[0x80001350]:KADDW t6, t5, t4<br> [0x80001354]:sd t6, 1296(ra)<br>  |
|  98|[0x80003840]<br>0x000000000000FFDF|- rs1_w1_val == -8388609<br> - rs1_w0_val == -33<br>                                                                                                                                                                                                                                                                                          |[0x80001378]:KADDW t6, t5, t4<br> [0x8000137c]:sd t6, 1312(ra)<br>  |
|  99|[0x80003850]<br>0xFFFFFFFFFFF000FF|- rs2_w0_val == -1048577<br> - rs1_w1_val == -4194305<br>                                                                                                                                                                                                                                                                                     |[0x800013a4]:KADDW t6, t5, t4<br> [0x800013a8]:sd t6, 1328(ra)<br>  |
| 100|[0x80003860]<br>0xFFFFFFFFFFFEF7FE|- rs2_w0_val == -2049<br> - rs1_w1_val == -2097153<br> - rs1_w0_val == -65537<br>                                                                                                                                                                                                                                                             |[0x800013d4]:KADDW t6, t5, t4<br> [0x800013d8]:sd t6, 1344(ra)<br>  |
| 101|[0x80003870]<br>0xFFFFFFFFFFF7FFF6|- rs2_w0_val == -9<br> - rs1_w0_val == -524289<br>                                                                                                                                                                                                                                                                                            |[0x800013fc]:KADDW t6, t5, t4<br> [0x80001400]:sd t6, 1360(ra)<br>  |
| 102|[0x80003880]<br>0x0000000000FFBFFF|- rs1_w1_val == -2<br>                                                                                                                                                                                                                                                                                                                        |[0x80001420]:KADDW t6, t5, t4<br> [0x80001424]:sd t6, 1376(ra)<br>  |
| 103|[0x80003890]<br>0x0000000020000200|- rs1_w1_val == 1073741824<br>                                                                                                                                                                                                                                                                                                                |[0x80001444]:KADDW t6, t5, t4<br> [0x80001448]:sd t6, 1392(ra)<br>  |
| 104|[0x800038a0]<br>0xFFFFFFFFFBFFFFBE|- rs1_w1_val == 67108864<br>                                                                                                                                                                                                                                                                                                                  |[0x8000146c]:KADDW t6, t5, t4<br> [0x80001470]:sd t6, 1408(ra)<br>  |
| 105|[0x800038b0]<br>0xFFFFFFFFBFFFF7FE|- rs1_w1_val == 33554432<br> - rs1_w0_val == -1073741825<br>                                                                                                                                                                                                                                                                                  |[0x8000149c]:KADDW t6, t5, t4<br> [0x800014a0]:sd t6, 1424(ra)<br>  |
| 106|[0x800038c0]<br>0xFFFFFFFFFFFFFBF9|- rs1_w1_val == 2097152<br>                                                                                                                                                                                                                                                                                                                   |[0x800014c4]:KADDW t6, t5, t4<br> [0x800014c8]:sd t6, 1440(ra)<br>  |
| 107|[0x800038d0]<br>0x0000000000000409|- rs1_w1_val == 8192<br>                                                                                                                                                                                                                                                                                                                      |[0x800014e8]:KADDW t6, t5, t4<br> [0x800014ec]:sd t6, 1456(ra)<br>  |
| 108|[0x800038e0]<br>0x0000000000000404|- rs1_w1_val == 2048<br>                                                                                                                                                                                                                                                                                                                      |[0x8000150c]:KADDW t6, t5, t4<br> [0x80001510]:sd t6, 1472(ra)<br>  |
| 109|[0x800038f0]<br>0x0000000000000104|- rs1_w1_val == 1024<br>                                                                                                                                                                                                                                                                                                                      |[0x80001530]:KADDW t6, t5, t4<br> [0x80001534]:sd t6, 1488(ra)<br>  |
| 110|[0x80003900]<br>0xFFFFFFFFC0000000|- rs1_w0_val == -2147483648<br> - rs2_w0_val == 1073741824<br> - rs1_w1_val == 8<br>                                                                                                                                                                                                                                                          |[0x80001550]:KADDW t6, t5, t4<br> [0x80001554]:sd t6, 1504(ra)<br>  |
| 111|[0x80003910]<br>0xFFFFFFFFEFFFFFFF|- rs1_w1_val == 1<br>                                                                                                                                                                                                                                                                                                                         |[0x80001570]:KADDW t6, t5, t4<br> [0x80001574]:sd t6, 1520(ra)<br>  |
| 112|[0x80003920]<br>0xFFFFFFFFFDBFFFFE|- rs2_w0_val == -33554433<br>                                                                                                                                                                                                                                                                                                                 |[0x8000159c]:KADDW t6, t5, t4<br> [0x800015a0]:sd t6, 1536(ra)<br>  |
| 113|[0x80003930]<br>0xFFFFFFFFAAAABAAA|- rs1_w0_val == -1431655766<br>                                                                                                                                                                                                                                                                                                               |[0x800015d4]:KADDW t6, t5, t4<br> [0x800015d8]:sd t6, 1552(ra)<br>  |
| 114|[0x80003940]<br>0xFFFFFFFFFFE00003|- rs2_w0_val == -2097153<br>                                                                                                                                                                                                                                                                                                                  |[0x80001600]:KADDW t6, t5, t4<br> [0x80001604]:sd t6, 1568(ra)<br>  |
| 115|[0x80003950]<br>0xFFFFFFFFF7F7FFFE|- rs2_w1_val == -129<br> - rs2_w0_val == -524289<br>                                                                                                                                                                                                                                                                                          |[0x8000162c]:KADDW t6, t5, t4<br> [0x80001630]:sd t6, 1584(ra)<br>  |
| 116|[0x80003960]<br>0xFFFFFFFFFE1FFFFF|- rs2_w0_val == 2097152<br> - rs1_w0_val == -33554433<br>                                                                                                                                                                                                                                                                                     |[0x80001654]:KADDW t6, t5, t4<br> [0x80001658]:sd t6, 1600(ra)<br>  |
| 117|[0x80003970]<br>0xFFFFFFFFFF80000F|- rs1_w0_val == -8388609<br>                                                                                                                                                                                                                                                                                                                  |[0x80001680]:KADDW t6, t5, t4<br> [0x80001684]:sd t6, 1616(ra)<br>  |
| 118|[0x80003980]<br>0xFFFFFFFFFFFFE008|- rs2_w0_val == -8193<br>                                                                                                                                                                                                                                                                                                                     |[0x800016a8]:KADDW t6, t5, t4<br> [0x800016ac]:sd t6, 1632(ra)<br>  |
| 119|[0x80003990]<br>0x000000001FFFFDFF|- rs2_w0_val == -513<br>                                                                                                                                                                                                                                                                                                                      |[0x800016c8]:KADDW t6, t5, t4<br> [0x800016cc]:sd t6, 1648(ra)<br>  |
| 120|[0x800039a0]<br>0xFFFFFFFFFFFFFEFA|- rs2_w0_val == -257<br>                                                                                                                                                                                                                                                                                                                      |[0x800016ec]:KADDW t6, t5, t4<br> [0x800016f0]:sd t6, 1664(ra)<br>  |
| 121|[0x800039b0]<br>0xFFFFFFFFFFFF7FFC|- rs1_w0_val == -32769<br>                                                                                                                                                                                                                                                                                                                    |[0x80001720]:KADDW t6, t5, t4<br> [0x80001724]:sd t6, 1680(ra)<br>  |
| 122|[0x800039c0]<br>0xFFFFFFFFFFFFBFFF|- rs1_w0_val == -16385<br>                                                                                                                                                                                                                                                                                                                    |[0x80001748]:KADDW t6, t5, t4<br> [0x8000174c]:sd t6, 1696(ra)<br>  |
| 123|[0x800039d0]<br>0xFFFFFFFFFFFFDFFA|- rs1_w0_val == -8193<br>                                                                                                                                                                                                                                                                                                                     |[0x80001778]:KADDW t6, t5, t4<br> [0x8000177c]:sd t6, 1712(ra)<br>  |
| 124|[0x800039e0]<br>0x000000000FFFFBFF|- rs1_w0_val == -1025<br>                                                                                                                                                                                                                                                                                                                     |[0x8000179c]:KADDW t6, t5, t4<br> [0x800017a0]:sd t6, 1728(ra)<br>  |
| 125|[0x800039f0]<br>0xFFFFFFFFF7FFFDFE|- rs1_w0_val == -513<br>                                                                                                                                                                                                                                                                                                                      |[0x800017cc]:KADDW t6, t5, t4<br> [0x800017d0]:sd t6, 1744(ra)<br>  |
| 126|[0x80003a00]<br>0x000000000001FEFF|- rs1_w0_val == -257<br>                                                                                                                                                                                                                                                                                                                      |[0x800017f8]:KADDW t6, t5, t4<br> [0x800017fc]:sd t6, 1760(ra)<br>  |
| 127|[0x80003a10]<br>0xFFFFFFFF80000005|- rs2_w0_val == -2147483648<br>                                                                                                                                                                                                                                                                                                               |[0x80001820]:KADDW t6, t5, t4<br> [0x80001824]:sd t6, 1776(ra)<br>  |
| 128|[0x80003a20]<br>0xFFFFFFFFFFF7FFF6|- rs1_w0_val == -9<br>                                                                                                                                                                                                                                                                                                                        |[0x80001848]:KADDW t6, t5, t4<br> [0x8000184c]:sd t6, 1792(ra)<br>  |
| 129|[0x80003a30]<br>0x0000000004000001|- rs2_w0_val == 67108864<br>                                                                                                                                                                                                                                                                                                                  |[0x8000186c]:KADDW t6, t5, t4<br> [0x80001870]:sd t6, 1808(ra)<br>  |
| 130|[0x80003a40]<br>0x00000000007FFFFD|- rs1_w0_val == -3<br>                                                                                                                                                                                                                                                                                                                        |[0x80001898]:KADDW t6, t5, t4<br> [0x8000189c]:sd t6, 1824(ra)<br>  |
| 131|[0x80003a50]<br>0x00000000401FFFFF|- rs1_w1_val == 16777216<br>                                                                                                                                                                                                                                                                                                                  |[0x800018c0]:KADDW t6, t5, t4<br> [0x800018c4]:sd t6, 1840(ra)<br>  |
| 132|[0x80003a60]<br>0xFFFFFFFFFF0FFFFF|- rs2_w0_val == 1048576<br>                                                                                                                                                                                                                                                                                                                   |[0x800018e8]:KADDW t6, t5, t4<br> [0x800018ec]:sd t6, 1856(ra)<br>  |
| 133|[0x80003a70]<br>0xFFFFFFFFAAAAAAA5|- rs1_w1_val == 8388608<br>                                                                                                                                                                                                                                                                                                                   |[0x8000191c]:KADDW t6, t5, t4<br> [0x80001920]:sd t6, 1872(ra)<br>  |
