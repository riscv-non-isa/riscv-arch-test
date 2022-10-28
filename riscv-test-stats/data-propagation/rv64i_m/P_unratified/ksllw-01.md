
# Data Propagation Report

- **STAT1** : Number of instructions that hit unique coverpoints and update the signature.
- **STAT2** : Number of instructions that hit covepoints which are not unique but still update the signature
- **STAT3** : Number of instructions that hit a unique coverpoint but do not update signature
- **STAT4** : Number of multiple signature updates for the same coverpoint
- **STAT5** : Number of times the signature was overwritten

| Param                     | Value    |
|---------------------------|----------|
| XLEN                      | 64      |
| TEST_REGION               | [('0x80000390', '0x80000f70')]      |
| SIG_REGION                | [('0x80002210', '0x80002820', '194 dwords')]      |
| COV_LABELS                | ksllw      |
| TEST_NAME                 | /scratch/git-repo/riscof/riscof_run/riscv-arch-test/riscv-test-suite/rv64i_m/P_unratified/src/ksllw-01.S    |
| Total Number of coverpoints| 256     |
| Total Coverpoints Hit     | 250      |
| Total Signature Updates   | 194      |
| STAT1                     | 96      |
| STAT2                     | 1      |
| STAT3                     | 0     |
| STAT4                     | 97     |
| STAT5                     | 0     |

## Details for STAT2:

```
Op without unique coverpoint updates Signature
 -- Code Sequence:
      [0x80000f64]:KSLLW t6, t5, t4
      [0x80000f68]:sd t6, 1024(ra)
 -- Signature Address: 0x80002810 Data: 0xFFFFFFFF80000000
 -- Redundant Coverpoints hit by the op
      - opcode : ksllw
      - rs1 : x30
      - rs2 : x29
      - rd : x31
      - rs1 != rs2  and rs1 != rd and rs2 != rd
      - rs1_w1_val == -65537
      - rs1_w0_val == -8388609






```

## Details of STAT3

```


```

## Details of STAT4:

```
Last Coverpoint : ['opcode : ksllw', 'rs1 : x15', 'rs2 : x15', 'rd : x22', 'rs1 == rs2 != rd', 'rs2_val == 21', 'rs1_w1_val == 0']
Last Code Sequence : 
	-[0x800003c0]:KSLLW s6, a5, a5
	-[0x800003c4]:sd s6, 0(gp)
Current Store : [0x800003c8] : sd a5, 8(gp) -- Store: [0x80002218]:0x0000000000000015




Last Coverpoint : ['rs1 : x28', 'rs2 : x28', 'rd : x28', 'rs1 == rs2 == rd', 'rs2_val == 15']
Last Code Sequence : 
	-[0x800003d8]:KSLLW t3, t3, t3
	-[0x800003dc]:sd t3, 16(gp)
Current Store : [0x800003e0] : sd t3, 24(gp) -- Store: [0x80002228]:0x0000000000078000




Last Coverpoint : ['rs1 : x9', 'rs2 : x12', 'rd : x24', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs2_val == 23', 'rs1_w1_val == 2048', 'rs1_w0_val == -65537']
Last Code Sequence : 
	-[0x800003f8]:KSLLW s8, s1, a2
	-[0x800003fc]:sd s8, 32(gp)
Current Store : [0x80000400] : sd s1, 40(gp) -- Store: [0x80002238]:0x00000800FFFEFFFF




Last Coverpoint : ['rs1 : x10', 'rs2 : x31', 'rd : x10', 'rs1 == rd != rs2', 'rs2_val == 27', 'rs1_w1_val == -65', 'rs1_w0_val == -1073741825']
Last Code Sequence : 
	-[0x80000414]:KSLLW a0, a0, t6
	-[0x80000418]:sd a0, 48(gp)
Current Store : [0x8000041c] : sd a0, 56(gp) -- Store: [0x80002248]:0xFFFFFFFF80000000




Last Coverpoint : ['rs1 : x20', 'rs2 : x4', 'rd : x4', 'rs2 == rd != rs1', 'rs2_val == 29', 'rs1_w1_val == -4194305', 'rs1_w0_val == -1025']
Last Code Sequence : 
	-[0x80000430]:KSLLW tp, s4, tp
	-[0x80000434]:sd tp, 64(gp)
Current Store : [0x80000438] : sd s4, 72(gp) -- Store: [0x80002258]:0xFFBFFFFFFFFFFBFF




Last Coverpoint : ['rs1 : x21', 'rs2 : x2', 'rd : x31', 'rs2_val == 30', 'rs1_w1_val == 131072', 'rs1_w0_val == 16384']
Last Code Sequence : 
	-[0x80000450]:KSLLW t6, s5, sp
	-[0x80000454]:sd t6, 80(gp)
Current Store : [0x80000458] : sd s5, 88(gp) -- Store: [0x80002268]:0x0002000000004000




Last Coverpoint : ['rs1 : x6', 'rs2 : x20', 'rd : x23', 'rs2_val == 16', 'rs1_w1_val == 536870912', 'rs1_w0_val == 33554432']
Last Code Sequence : 
	-[0x80000470]:KSLLW s7, t1, s4
	-[0x80000474]:sd s7, 96(gp)
Current Store : [0x80000478] : sd t1, 104(gp) -- Store: [0x80002278]:0x2000000002000000




Last Coverpoint : ['rs1 : x30', 'rs2 : x26', 'rd : x6', 'rs2_val == 8', 'rs1_w1_val == 16777216', 'rs1_w0_val == -9']
Last Code Sequence : 
	-[0x80000490]:KSLLW t1, t5, s10
	-[0x80000494]:sd t1, 112(gp)
Current Store : [0x80000498] : sd t5, 120(gp) -- Store: [0x80002288]:0x01000000FFFFFFF7




Last Coverpoint : ['rs1 : x25', 'rs2 : x6', 'rd : x5', 'rs2_val == 4', 'rs1_w1_val == -2097153']
Last Code Sequence : 
	-[0x800004b0]:KSLLW t0, s9, t1
	-[0x800004b4]:sd t0, 128(gp)
Current Store : [0x800004b8] : sd s9, 136(gp) -- Store: [0x80002298]:0xFFDFFFFF00000009




Last Coverpoint : ['rs1 : x14', 'rs2 : x19', 'rd : x8', 'rs2_val == 2', 'rs1_w1_val == -8388609', 'rs1_w0_val == -32769']
Last Code Sequence : 
	-[0x800004d4]:KSLLW fp, a4, s3
	-[0x800004d8]:sd fp, 144(gp)
Current Store : [0x800004dc] : sd a4, 152(gp) -- Store: [0x800022a8]:0xFF7FFFFFFFFF7FFF




Last Coverpoint : ['rs1 : x2', 'rs2 : x13', 'rd : x12', 'rs2_val == 1', 'rs1_w1_val == 32768', 'rs1_w0_val == -1']
Last Code Sequence : 
	-[0x800004f4]:KSLLW a2, sp, a3
	-[0x800004f8]:sd a2, 160(gp)
Current Store : [0x800004fc] : sd sp, 168(gp) -- Store: [0x800022b8]:0x00008000FFFFFFFF




Last Coverpoint : ['rs1 : x18', 'rs2 : x22', 'rd : x13', 'rs1_w1_val == -1431655766', 'rs1_w0_val == -4194305']
Last Code Sequence : 
	-[0x8000051c]:KSLLW a3, s2, s6
	-[0x80000520]:sd a3, 176(gp)
Current Store : [0x80000524] : sd s2, 184(gp) -- Store: [0x800022c8]:0xAAAAAAAAFFBFFFFF




Last Coverpoint : ['rs1 : x0', 'rs2 : x9', 'rd : x11', 'rs1_w0_val == 0']
Last Code Sequence : 
	-[0x8000053c]:KSLLW a1, zero, s1
	-[0x80000540]:sd a1, 192(gp)
Current Store : [0x80000544] : sd zero, 200(gp) -- Store: [0x800022d8]:0x0000000000000000




Last Coverpoint : ['rs1 : x29', 'rs2 : x5', 'rd : x1', 'rs1_w1_val == 2147483647']
Last Code Sequence : 
	-[0x80000560]:KSLLW ra, t4, t0
	-[0x80000564]:sd ra, 208(gp)
Current Store : [0x80000568] : sd t4, 216(gp) -- Store: [0x800022e8]:0x7FFFFFFFFFFEFFFF




Last Coverpoint : ['rs1 : x27', 'rs2 : x10', 'rd : x20', 'rs1_w1_val == -1073741825', 'rs1_w0_val == 65536']
Last Code Sequence : 
	-[0x80000584]:KSLLW s4, s11, a0
	-[0x80000588]:sd s4, 224(gp)
Current Store : [0x8000058c] : sd s11, 232(gp) -- Store: [0x800022f8]:0xBFFFFFFF00010000




Last Coverpoint : ['rs1 : x7', 'rs2 : x29', 'rd : x25', 'rs1_w1_val == -536870913', 'rs1_w0_val == 1048576']
Last Code Sequence : 
	-[0x800005b0]:KSLLW s9, t2, t4
	-[0x800005b4]:sd s9, 0(t1)
Current Store : [0x800005b8] : sd t2, 8(t1) -- Store: [0x80002308]:0xDFFFFFFF00100000




Last Coverpoint : ['rs1 : x11', 'rs2 : x1', 'rd : x0', 'rs1_w1_val == -268435457', 'rs1_w0_val == 134217728']
Last Code Sequence : 
	-[0x800005d0]:KSLLW zero, a1, ra
	-[0x800005d4]:sd zero, 16(t1)
Current Store : [0x800005d8] : sd a1, 24(t1) -- Store: [0x80002318]:0xEFFFFFFF08000000




Last Coverpoint : ['rs1 : x4', 'rs2 : x21', 'rd : x15', 'rs1_w1_val == -134217729', 'rs1_w0_val == 67108864']
Last Code Sequence : 
	-[0x800005f0]:KSLLW a5, tp, s5
	-[0x800005f4]:sd a5, 32(t1)
Current Store : [0x800005f8] : sd tp, 40(t1) -- Store: [0x80002328]:0xF7FFFFFF04000000




Last Coverpoint : ['rs1 : x23', 'rs2 : x11', 'rd : x19', 'rs1_w1_val == -67108865']
Last Code Sequence : 
	-[0x80000614]:KSLLW s3, s7, a1
	-[0x80000618]:sd s3, 48(t1)
Current Store : [0x8000061c] : sd s7, 56(t1) -- Store: [0x80002338]:0xFBFFFFFFFFFEFFFF




Last Coverpoint : ['rs1 : x5', 'rs2 : x7', 'rd : x30', 'rs1_w1_val == -33554433', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80000638]:KSLLW t5, t0, t2
	-[0x8000063c]:sd t5, 64(t1)
Current Store : [0x80000640] : sd t0, 72(t1) -- Store: [0x80002348]:0xFDFFFFFFFF7FFFFF




Last Coverpoint : ['rs1 : x19', 'rs2 : x8', 'rd : x17', 'rs1_w1_val == -16777217', 'rs1_w0_val == 32768']
Last Code Sequence : 
	-[0x8000065c]:KSLLW a7, s3, fp
	-[0x80000660]:sd a7, 80(t1)
Current Store : [0x80000664] : sd s3, 88(t1) -- Store: [0x80002358]:0xFEFFFFFF00008000




Last Coverpoint : ['rs1 : x26', 'rs2 : x24', 'rd : x18', 'rs1_w1_val == -1048577', 'rs1_w0_val == 2147483647']
Last Code Sequence : 
	-[0x8000067c]:KSLLW s2, s10, s8
	-[0x80000680]:sd s2, 96(t1)
Current Store : [0x80000684] : sd s10, 104(t1) -- Store: [0x80002368]:0xFFEFFFFF7FFFFFFF




Last Coverpoint : ['rs1 : x31', 'rs2 : x30', 'rd : x26', 'rs1_w1_val == -524289', 'rs1_w0_val == -16385']
Last Code Sequence : 
	-[0x800006a0]:KSLLW s10, t6, t5
	-[0x800006a4]:sd s10, 112(t1)
Current Store : [0x800006a8] : sd t6, 120(t1) -- Store: [0x80002378]:0xFFF7FFFFFFFFBFFF




Last Coverpoint : ['rs1 : x16', 'rs2 : x25', 'rd : x3', 'rs1_w1_val == -262145', 'rs1_w0_val == -2097153']
Last Code Sequence : 
	-[0x800006c0]:KSLLW gp, a6, s9
	-[0x800006c4]:sd gp, 128(t1)
Current Store : [0x800006c8] : sd a6, 136(t1) -- Store: [0x80002388]:0xFFFBFFFFFFDFFFFF




Last Coverpoint : ['rs1 : x22', 'rs2 : x18', 'rd : x29', 'rs1_w1_val == -131073', 'rs1_w0_val == 2048']
Last Code Sequence : 
	-[0x800006e8]:KSLLW t4, s6, s2
	-[0x800006ec]:sd t4, 144(t1)
Current Store : [0x800006f0] : sd s6, 152(t1) -- Store: [0x80002398]:0xFFFDFFFF00000800




Last Coverpoint : ['rs1 : x17', 'rs2 : x0', 'rd : x16', 'rs1_w1_val == -65537']
Last Code Sequence : 
	-[0x80000708]:KSLLW a6, a7, zero
	-[0x8000070c]:sd a6, 160(t1)
Current Store : [0x80000710] : sd a7, 168(t1) -- Store: [0x800023a8]:0xFFFEFFFFFF7FFFFF




Last Coverpoint : ['rs1 : x8', 'rs2 : x27', 'rd : x14', 'rs1_w1_val == -32769']
Last Code Sequence : 
	-[0x8000072c]:KSLLW a4, fp, s11
	-[0x80000730]:sd a4, 176(t1)
Current Store : [0x80000734] : sd fp, 184(t1) -- Store: [0x800023b8]:0xFFFF7FFF00004000




Last Coverpoint : ['rs1 : x3', 'rs2 : x14', 'rd : x7', 'rs1_w1_val == -16385', 'rs1_w0_val == 536870912']
Last Code Sequence : 
	-[0x80000748]:KSLLW t2, gp, a4
	-[0x8000074c]:sd t2, 192(t1)
Current Store : [0x80000750] : sd gp, 200(t1) -- Store: [0x800023c8]:0xFFFFBFFF20000000




Last Coverpoint : ['rs1 : x12', 'rs2 : x3', 'rd : x21', 'rs1_w1_val == -8193', 'rs1_w0_val == -17', 'rs2_val == 10']
Last Code Sequence : 
	-[0x80000764]:KSLLW s5, a2, gp
	-[0x80000768]:sd s5, 208(t1)
Current Store : [0x8000076c] : sd a2, 216(t1) -- Store: [0x800023d8]:0xFFFFDFFFFFFFFFEF




Last Coverpoint : ['rs1 : x24', 'rs2 : x23', 'rd : x9', 'rs1_w1_val == -4097', 'rs1_w0_val == -67108865']
Last Code Sequence : 
	-[0x80000784]:KSLLW s1, s8, s7
	-[0x80000788]:sd s1, 224(t1)
Current Store : [0x8000078c] : sd s8, 232(t1) -- Store: [0x800023e8]:0xFFFFEFFFFBFFFFFF




Last Coverpoint : ['rs1 : x13', 'rs2 : x17', 'rd : x27', 'rs1_w1_val == -2049']
Last Code Sequence : 
	-[0x800007a4]:KSLLW s11, a3, a7
	-[0x800007a8]:sd s11, 240(t1)
Current Store : [0x800007ac] : sd a3, 248(t1) -- Store: [0x800023f8]:0xFFFFF7FFFFFF7FFF




Last Coverpoint : ['rs1 : x1', 'rs2 : x16', 'rd : x2', 'rs1_w1_val == -1025']
Last Code Sequence : 
	-[0x800007c4]:KSLLW sp, ra, a6
	-[0x800007c8]:sd sp, 256(t1)
Current Store : [0x800007cc] : sd ra, 264(t1) -- Store: [0x80002408]:0xFFFFFBFF00000800




Last Coverpoint : ['rs1_w1_val == -513', 'rs1_w0_val == -5']
Last Code Sequence : 
	-[0x800007e8]:KSLLW t6, t5, t4
	-[0x800007ec]:sd t6, 0(ra)
Current Store : [0x800007f0] : sd t5, 8(ra) -- Store: [0x80002418]:0xFFFFFDFFFFFFFFFB




Last Coverpoint : ['rs1_w1_val == -257']
Last Code Sequence : 
	-[0x80000804]:KSLLW t6, t5, t4
	-[0x80000808]:sd t6, 16(ra)
Current Store : [0x8000080c] : sd t5, 24(ra) -- Store: [0x80002428]:0xFFFFFEFF08000000




Last Coverpoint : ['rs1_w1_val == -129', 'rs1_w0_val == 16777216']
Last Code Sequence : 
	-[0x80000820]:KSLLW t6, t5, t4
	-[0x80000824]:sd t6, 32(ra)
Current Store : [0x80000828] : sd t5, 40(ra) -- Store: [0x80002438]:0xFFFFFF7F01000000




Last Coverpoint : ['rs1_w1_val == -33', 'rs1_w0_val == -33554433']
Last Code Sequence : 
	-[0x80000840]:KSLLW t6, t5, t4
	-[0x80000844]:sd t6, 48(ra)
Current Store : [0x80000848] : sd t5, 56(ra) -- Store: [0x80002448]:0xFFFFFFDFFDFFFFFF




Last Coverpoint : ['rs1_w1_val == -17', 'rs1_w0_val == 32']
Last Code Sequence : 
	-[0x8000085c]:KSLLW t6, t5, t4
	-[0x80000860]:sd t6, 64(ra)
Current Store : [0x80000864] : sd t5, 72(ra) -- Store: [0x80002458]:0xFFFFFFEF00000020




Last Coverpoint : ['rs1_w1_val == -9', 'rs1_w0_val == -257']
Last Code Sequence : 
	-[0x80000878]:KSLLW t6, t5, t4
	-[0x8000087c]:sd t6, 80(ra)
Current Store : [0x80000880] : sd t5, 88(ra) -- Store: [0x80002468]:0xFFFFFFF7FFFFFEFF




Last Coverpoint : ['rs1_w1_val == -5']
Last Code Sequence : 
	-[0x80000894]:KSLLW t6, t5, t4
	-[0x80000898]:sd t6, 96(ra)
Current Store : [0x8000089c] : sd t5, 104(ra) -- Store: [0x80002478]:0xFFFFFFFB00008000




Last Coverpoint : ['rs1_w1_val == -3', 'rs1_w0_val == -134217729']
Last Code Sequence : 
	-[0x800008b0]:KSLLW t6, t5, t4
	-[0x800008b4]:sd t6, 112(ra)
Current Store : [0x800008b8] : sd t5, 120(ra) -- Store: [0x80002488]:0xFFFFFFFDF7FFFFFF




Last Coverpoint : ['rs1_w1_val == -2', 'rs1_w0_val == 4']
Last Code Sequence : 
	-[0x800008cc]:KSLLW t6, t5, t4
	-[0x800008d0]:sd t6, 128(ra)
Current Store : [0x800008d4] : sd t5, 136(ra) -- Store: [0x80002498]:0xFFFFFFFE00000004




Last Coverpoint : ['rs1_w1_val == -2147483648']
Last Code Sequence : 
	-[0x800008e8]:KSLLW t6, t5, t4
	-[0x800008ec]:sd t6, 144(ra)
Current Store : [0x800008f0] : sd t5, 152(ra) -- Store: [0x800024a8]:0x8000000000000020




Last Coverpoint : ['rs1_w0_val == 8192']
Last Code Sequence : 
	-[0x8000090c]:KSLLW t6, t5, t4
	-[0x80000910]:sd t6, 160(ra)
Current Store : [0x80000914] : sd t5, 168(ra) -- Store: [0x800024b8]:0xAAAAAAAA00002000




Last Coverpoint : ['rs1_w0_val == 4096']
Last Code Sequence : 
	-[0x80000928]:KSLLW t6, t5, t4
	-[0x8000092c]:sd t6, 176(ra)
Current Store : [0x80000930] : sd t5, 184(ra) -- Store: [0x800024c8]:0xFFFFFFFA00001000




Last Coverpoint : ['rs1_w0_val == 1024']
Last Code Sequence : 
	-[0x80000948]:KSLLW t6, t5, t4
	-[0x8000094c]:sd t6, 192(ra)
Current Store : [0x80000950] : sd t5, 200(ra) -- Store: [0x800024d8]:0xDFFFFFFF00000400




Last Coverpoint : ['rs1_w0_val == 512']
Last Code Sequence : 
	-[0x80000964]:KSLLW t6, t5, t4
	-[0x80000968]:sd t6, 208(ra)
Current Store : [0x8000096c] : sd t5, 216(ra) -- Store: [0x800024e8]:0x0000000900000200




Last Coverpoint : ['rs1_w0_val == 256']
Last Code Sequence : 
	-[0x80000980]:KSLLW t6, t5, t4
	-[0x80000984]:sd t6, 224(ra)
Current Store : [0x80000988] : sd t5, 232(ra) -- Store: [0x800024f8]:0xFFFFFDFF00000100




Last Coverpoint : ['rs1_w1_val == 32', 'rs1_w0_val == 128']
Last Code Sequence : 
	-[0x8000099c]:KSLLW t6, t5, t4
	-[0x800009a0]:sd t6, 240(ra)
Current Store : [0x800009a4] : sd t5, 248(ra) -- Store: [0x80002508]:0x0000002000000080




Last Coverpoint : ['rs1_w0_val == 64']
Last Code Sequence : 
	-[0x800009bc]:KSLLW t6, t5, t4
	-[0x800009c0]:sd t6, 256(ra)
Current Store : [0x800009c4] : sd t5, 264(ra) -- Store: [0x80002518]:0xFFFFF7FF00000040




Last Coverpoint : ['rs1_w0_val == 16']
Last Code Sequence : 
	-[0x800009d8]:KSLLW t6, t5, t4
	-[0x800009dc]:sd t6, 272(ra)
Current Store : [0x800009e0] : sd t5, 280(ra) -- Store: [0x80002528]:0x0000000900000010




Last Coverpoint : ['rs1_w1_val == 1048576', 'rs1_w0_val == 8']
Last Code Sequence : 
	-[0x800009f4]:KSLLW t6, t5, t4
	-[0x800009f8]:sd t6, 288(ra)
Current Store : [0x800009fc] : sd t5, 296(ra) -- Store: [0x80002538]:0x0010000000000008




Last Coverpoint : ['rs1_w1_val == 2097152', 'rs1_w0_val == 2']
Last Code Sequence : 
	-[0x80000a10]:KSLLW t6, t5, t4
	-[0x80000a14]:sd t6, 304(ra)
Current Store : [0x80000a18] : sd t5, 312(ra) -- Store: [0x80002548]:0x0020000000000002




Last Coverpoint : ['rs1_w0_val == 1']
Last Code Sequence : 
	-[0x80000a2c]:KSLLW t6, t5, t4
	-[0x80000a30]:sd t6, 320(ra)
Current Store : [0x80000a34] : sd t5, 328(ra) -- Store: [0x80002558]:0xFFFFFFF800000001




Last Coverpoint : ['rs1_w1_val == 1431655765']
Last Code Sequence : 
	-[0x80000a48]:KSLLW t6, t5, t4
	-[0x80000a4c]:sd t6, 336(ra)
Current Store : [0x80000a50] : sd t5, 344(ra) -- Store: [0x80002568]:0x5555555500000000




Last Coverpoint : ['rs1_w1_val == 1073741824']
Last Code Sequence : 
	-[0x80000a60]:KSLLW t6, t5, t4
	-[0x80000a64]:sd t6, 352(ra)
Current Store : [0x80000a68] : sd t5, 360(ra) -- Store: [0x80002578]:0x4000000000000000




Last Coverpoint : ['rs1_w1_val == 268435456']
Last Code Sequence : 
	-[0x80000a7c]:KSLLW t6, t5, t4
	-[0x80000a80]:sd t6, 368(ra)
Current Store : [0x80000a84] : sd t5, 376(ra) -- Store: [0x80002588]:0x1000000000000020




Last Coverpoint : ['rs1_w1_val == 134217728', 'rs1_w0_val == -2']
Last Code Sequence : 
	-[0x80000a9c]:KSLLW t6, t5, t4
	-[0x80000aa0]:sd t6, 384(ra)
Current Store : [0x80000aa4] : sd t5, 392(ra) -- Store: [0x80002598]:0x08000000FFFFFFFE




Last Coverpoint : ['rs1_w1_val == 67108864']
Last Code Sequence : 
	-[0x80000abc]:KSLLW t6, t5, t4
	-[0x80000ac0]:sd t6, 400(ra)
Current Store : [0x80000ac4] : sd t5, 408(ra) -- Store: [0x800025a8]:0x04000000FFFFFFFE




Last Coverpoint : ['rs1_w1_val == 33554432']
Last Code Sequence : 
	-[0x80000adc]:KSLLW t6, t5, t4
	-[0x80000ae0]:sd t6, 416(ra)
Current Store : [0x80000ae4] : sd t5, 424(ra) -- Store: [0x800025b8]:0x0200000002000000




Last Coverpoint : ['rs1_w1_val == 8388608', 'rs1_w0_val == 4194304']
Last Code Sequence : 
	-[0x80000afc]:KSLLW t6, t5, t4
	-[0x80000b00]:sd t6, 432(ra)
Current Store : [0x80000b04] : sd t5, 440(ra) -- Store: [0x800025c8]:0x0080000000400000




Last Coverpoint : ['rs1_w1_val == 4194304']
Last Code Sequence : 
	-[0x80000b1c]:KSLLW t6, t5, t4
	-[0x80000b20]:sd t6, 448(ra)
Current Store : [0x80000b24] : sd t5, 456(ra) -- Store: [0x800025d8]:0x0040000000002000




Last Coverpoint : ['rs1_w1_val == 262144']
Last Code Sequence : 
	-[0x80000b3c]:KSLLW t6, t5, t4
	-[0x80000b40]:sd t6, 464(ra)
Current Store : [0x80000b44] : sd t5, 472(ra) -- Store: [0x800025e8]:0x0004000000008000




Last Coverpoint : ['rs1_w1_val == 65536']
Last Code Sequence : 
	-[0x80000b58]:KSLLW t6, t5, t4
	-[0x80000b5c]:sd t6, 480(ra)
Current Store : [0x80000b60] : sd t5, 488(ra) -- Store: [0x800025f8]:0x0001000000000008




Last Coverpoint : ['rs1_w1_val == 16384']
Last Code Sequence : 
	-[0x80000b78]:KSLLW t6, t5, t4
	-[0x80000b7c]:sd t6, 496(ra)
Current Store : [0x80000b80] : sd t5, 504(ra) -- Store: [0x80002608]:0x00004000FDFFFFFF




Last Coverpoint : ['rs1_w1_val == 8192']
Last Code Sequence : 
	-[0x80000b98]:KSLLW t6, t5, t4
	-[0x80000b9c]:sd t6, 512(ra)
Current Store : [0x80000ba0] : sd t5, 520(ra) -- Store: [0x80002618]:0x00002000FFFFFFFA




Last Coverpoint : ['rs1_w1_val == 4096']
Last Code Sequence : 
	-[0x80000bb4]:KSLLW t6, t5, t4
	-[0x80000bb8]:sd t6, 528(ra)
Current Store : [0x80000bbc] : sd t5, 536(ra) -- Store: [0x80002628]:0x0000100000000010




Last Coverpoint : ['rs1_w1_val == 1024', 'rs1_w0_val == -131073']
Last Code Sequence : 
	-[0x80000bd4]:KSLLW t6, t5, t4
	-[0x80000bd8]:sd t6, 544(ra)
Current Store : [0x80000bdc] : sd t5, 552(ra) -- Store: [0x80002638]:0x00000400FFFDFFFF




Last Coverpoint : ['rs1_w1_val == 512', 'rs1_w0_val == -2147483648']
Last Code Sequence : 
	-[0x80000bec]:KSLLW t6, t5, t4
	-[0x80000bf0]:sd t6, 560(ra)
Current Store : [0x80000bf4] : sd t5, 568(ra) -- Store: [0x80002648]:0x0000020080000000




Last Coverpoint : ['rs1_w1_val == 256']
Last Code Sequence : 
	-[0x80000c0c]:KSLLW t6, t5, t4
	-[0x80000c10]:sd t6, 576(ra)
Current Store : [0x80000c14] : sd t5, 584(ra) -- Store: [0x80002658]:0x00000100FFFFBFFF




Last Coverpoint : ['rs1_w1_val == 128', 'rs1_w0_val == 2097152']
Last Code Sequence : 
	-[0x80000c28]:KSLLW t6, t5, t4
	-[0x80000c2c]:sd t6, 592(ra)
Current Store : [0x80000c30] : sd t5, 600(ra) -- Store: [0x80002668]:0x0000008000200000




Last Coverpoint : ['rs1_w1_val == 64']
Last Code Sequence : 
	-[0x80000c44]:KSLLW t6, t5, t4
	-[0x80000c48]:sd t6, 608(ra)
Current Store : [0x80000c4c] : sd t5, 616(ra) -- Store: [0x80002678]:0x0000004000002000




Last Coverpoint : ['rs1_w1_val == 16', 'rs1_w0_val == 8388608']
Last Code Sequence : 
	-[0x80000c60]:KSLLW t6, t5, t4
	-[0x80000c64]:sd t6, 624(ra)
Current Store : [0x80000c68] : sd t5, 632(ra) -- Store: [0x80002688]:0x0000001000800000




Last Coverpoint : ['rs1_w1_val == 8']
Last Code Sequence : 
	-[0x80000c7c]:KSLLW t6, t5, t4
	-[0x80000c80]:sd t6, 640(ra)
Current Store : [0x80000c84] : sd t5, 648(ra) -- Store: [0x80002698]:0x00000008BFFFFFFF




Last Coverpoint : ['rs1_w1_val == 2', 'rs1_w0_val == -65']
Last Code Sequence : 
	-[0x80000c98]:KSLLW t6, t5, t4
	-[0x80000c9c]:sd t6, 656(ra)
Current Store : [0x80000ca0] : sd t5, 664(ra) -- Store: [0x800026a8]:0x00000002FFFFFFBF




Last Coverpoint : ['rs1_w1_val == 1']
Last Code Sequence : 
	-[0x80000cb4]:KSLLW t6, t5, t4
	-[0x80000cb8]:sd t6, 672(ra)
Current Store : [0x80000cbc] : sd t5, 680(ra) -- Store: [0x800026b8]:0x00000001FFFFFBFF




Last Coverpoint : ['rs1_w0_val == 131072']
Last Code Sequence : 
	-[0x80000cc8]:KSLLW t6, t5, t4
	-[0x80000ccc]:sd t6, 688(ra)
Current Store : [0x80000cd0] : sd t5, 696(ra) -- Store: [0x800026c8]:0x0000000000020000




Last Coverpoint : ['rs1_w1_val == -1', 'rs1_w0_val == -129']
Last Code Sequence : 
	-[0x80000cdc]:KSLLW t6, t5, t4
	-[0x80000ce0]:sd t6, 704(ra)
Current Store : [0x80000ce4] : sd t5, 712(ra) -- Store: [0x800026d8]:0xFFFFFFFFFFFFFF7F




Last Coverpoint : ['rs1_w0_val == -1431655766']
Last Code Sequence : 
	-[0x80000cfc]:KSLLW t6, t5, t4
	-[0x80000d00]:sd t6, 720(ra)
Current Store : [0x80000d04] : sd t5, 728(ra) -- Store: [0x800026e8]:0x00000003AAAAAAAA




Last Coverpoint : ['rs1_w0_val == 1431655765']
Last Code Sequence : 
	-[0x80000d1c]:KSLLW t6, t5, t4
	-[0x80000d20]:sd t6, 736(ra)
Current Store : [0x80000d24] : sd t5, 744(ra) -- Store: [0x800026f8]:0x0000020055555555




Last Coverpoint : ['rs1_w0_val == -8193']
Last Code Sequence : 
	-[0x80000d40]:KSLLW t6, t5, t4
	-[0x80000d44]:sd t6, 752(ra)
Current Store : [0x80000d48] : sd t5, 760(ra) -- Store: [0x80002708]:0xFBFFFFFFFFFFDFFF




Last Coverpoint : ['rs1_w0_val == -4097']
Last Code Sequence : 
	-[0x80000d68]:KSLLW t6, t5, t4
	-[0x80000d6c]:sd t6, 768(ra)
Current Store : [0x80000d70] : sd t5, 776(ra) -- Store: [0x80002718]:0x00400000FFFFEFFF




Last Coverpoint : ['rs1_w0_val == -2049']
Last Code Sequence : 
	-[0x80000d8c]:KSLLW t6, t5, t4
	-[0x80000d90]:sd t6, 784(ra)
Current Store : [0x80000d94] : sd t5, 792(ra) -- Store: [0x80002728]:0xFF7FFFFFFFFFF7FF




Last Coverpoint : ['rs1_w0_val == -513']
Last Code Sequence : 
	-[0x80000dac]:KSLLW t6, t5, t4
	-[0x80000db0]:sd t6, 800(ra)
Current Store : [0x80000db4] : sd t5, 808(ra) -- Store: [0x80002738]:0x08000000FFFFFDFF




Last Coverpoint : ['rs1_w0_val == -33']
Last Code Sequence : 
	-[0x80000dc8]:KSLLW t6, t5, t4
	-[0x80000dcc]:sd t6, 816(ra)
Current Store : [0x80000dd0] : sd t5, 824(ra) -- Store: [0x80002748]:0x00000200FFFFFFDF




Last Coverpoint : ['rs1_w0_val == -3']
Last Code Sequence : 
	-[0x80000de4]:KSLLW t6, t5, t4
	-[0x80000de8]:sd t6, 832(ra)
Current Store : [0x80000dec] : sd t5, 840(ra) -- Store: [0x80002758]:0x00000100FFFFFFFD




Last Coverpoint : ['rs1_w0_val == -536870913']
Last Code Sequence : 
	-[0x80000e04]:KSLLW t6, t5, t4
	-[0x80000e08]:sd t6, 848(ra)
Current Store : [0x80000e0c] : sd t5, 856(ra) -- Store: [0x80002768]:0xFDFFFFFFDFFFFFFF




Last Coverpoint : ['rs1_w0_val == -268435457']
Last Code Sequence : 
	-[0x80000e24]:KSLLW t6, t5, t4
	-[0x80000e28]:sd t6, 864(ra)
Current Store : [0x80000e2c] : sd t5, 872(ra) -- Store: [0x80002778]:0x00020000EFFFFFFF




Last Coverpoint : ['rs1_w0_val == 268435456']
Last Code Sequence : 
	-[0x80000e44]:KSLLW t6, t5, t4
	-[0x80000e48]:sd t6, 880(ra)
Current Store : [0x80000e4c] : sd t5, 888(ra) -- Store: [0x80002788]:0xEFFFFFFF10000000




Last Coverpoint : ['rs1_w0_val == -524289']
Last Code Sequence : 
	-[0x80000e6c]:KSLLW t6, t5, t4
	-[0x80000e70]:sd t6, 896(ra)
Current Store : [0x80000e74] : sd t5, 904(ra) -- Store: [0x80002798]:0x00040000FFF7FFFF




Last Coverpoint : ['rs1_w0_val == -16777217']
Last Code Sequence : 
	-[0x80000e8c]:KSLLW t6, t5, t4
	-[0x80000e90]:sd t6, 912(ra)
Current Store : [0x80000e94] : sd t5, 920(ra) -- Store: [0x800027a8]:0xFFFBFFFFFEFFFFFF




Last Coverpoint : ['rs1_w0_val == -262145']
Last Code Sequence : 
	-[0x80000eac]:KSLLW t6, t5, t4
	-[0x80000eb0]:sd t6, 928(ra)
Current Store : [0x80000eb4] : sd t5, 936(ra) -- Store: [0x800027b8]:0xFFFFFFFCFFFBFFFF




Last Coverpoint : ['rs1_w0_val == -1048577']
Last Code Sequence : 
	-[0x80000ecc]:KSLLW t6, t5, t4
	-[0x80000ed0]:sd t6, 944(ra)
Current Store : [0x80000ed4] : sd t5, 952(ra) -- Store: [0x800027c8]:0xFFFFEFFFFFEFFFFF




Last Coverpoint : ['rs1_w0_val == 524288']
Last Code Sequence : 
	-[0x80000ee8]:KSLLW t6, t5, t4
	-[0x80000eec]:sd t6, 960(ra)
Current Store : [0x80000ef0] : sd t5, 968(ra) -- Store: [0x800027d8]:0xFFFFFFFF00080000




Last Coverpoint : ['rs1_w0_val == 262144']
Last Code Sequence : 
	-[0x80000f04]:KSLLW t6, t5, t4
	-[0x80000f08]:sd t6, 976(ra)
Current Store : [0x80000f0c] : sd t5, 984(ra) -- Store: [0x800027e8]:0xFFFFFF7F00040000




Last Coverpoint : ['rs1_w1_val == 524288']
Last Code Sequence : 
	-[0x80000f2c]:KSLLW t6, t5, t4
	-[0x80000f30]:sd t6, 992(ra)
Current Store : [0x80000f34] : sd t5, 1000(ra) -- Store: [0x800027f8]:0x00080000FFFF7FFF




Last Coverpoint : ['rs1_w1_val == 4', 'rs1_w0_val == 1073741824']
Last Code Sequence : 
	-[0x80000f44]:KSLLW t6, t5, t4
	-[0x80000f48]:sd t6, 1008(ra)
Current Store : [0x80000f4c] : sd t5, 1016(ra) -- Store: [0x80002808]:0x0000000440000000




Last Coverpoint : ['opcode : ksllw', 'rs1 : x30', 'rs2 : x29', 'rd : x31', 'rs1 != rs2  and rs1 != rd and rs2 != rd', 'rs1_w1_val == -65537', 'rs1_w0_val == -8388609']
Last Code Sequence : 
	-[0x80000f64]:KSLLW t6, t5, t4
	-[0x80000f68]:sd t6, 1024(ra)
Current Store : [0x80000f6c] : sd t5, 1032(ra) -- Store: [0x80002818]:0xFFFEFFFFFF7FFFFF





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

|s.no|            signature             |                                                                            coverpoints                                                                             |                                code                                 |
|---:|----------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------|---------------------------------------------------------------------|
|   1|[0x80002210]<br>0x0000000002A00000|- opcode : ksllw<br> - rs1 : x15<br> - rs2 : x15<br> - rd : x22<br> - rs1 == rs2 != rd<br> - rs2_val == 21<br> - rs1_w1_val == 0<br>                                |[0x800003c0]:KSLLW s6, a5, a5<br> [0x800003c4]:sd s6, 0(gp)<br>      |
|   2|[0x80002220]<br>0x0000000000078000|- rs1 : x28<br> - rs2 : x28<br> - rd : x28<br> - rs1 == rs2 == rd<br> - rs2_val == 15<br>                                                                           |[0x800003d8]:KSLLW t3, t3, t3<br> [0x800003dc]:sd t3, 16(gp)<br>     |
|   3|[0x80002230]<br>0xFFFFFFFF80000000|- rs1 : x9<br> - rs2 : x12<br> - rd : x24<br> - rs1 != rs2  and rs1 != rd and rs2 != rd<br> - rs2_val == 23<br> - rs1_w1_val == 2048<br> - rs1_w0_val == -65537<br> |[0x800003f8]:KSLLW s8, s1, a2<br> [0x800003fc]:sd s8, 32(gp)<br>     |
|   4|[0x80002240]<br>0xFFFFFFFF80000000|- rs1 : x10<br> - rs2 : x31<br> - rd : x10<br> - rs1 == rd != rs2<br> - rs2_val == 27<br> - rs1_w1_val == -65<br> - rs1_w0_val == -1073741825<br>                   |[0x80000414]:KSLLW a0, a0, t6<br> [0x80000418]:sd a0, 48(gp)<br>     |
|   5|[0x80002250]<br>0xFFFFFFFF80000000|- rs1 : x20<br> - rs2 : x4<br> - rd : x4<br> - rs2 == rd != rs1<br> - rs2_val == 29<br> - rs1_w1_val == -4194305<br> - rs1_w0_val == -1025<br>                      |[0x80000430]:KSLLW tp, s4, tp<br> [0x80000434]:sd tp, 64(gp)<br>     |
|   6|[0x80002260]<br>0x000000007FFFFFFF|- rs1 : x21<br> - rs2 : x2<br> - rd : x31<br> - rs2_val == 30<br> - rs1_w1_val == 131072<br> - rs1_w0_val == 16384<br>                                              |[0x80000450]:KSLLW t6, s5, sp<br> [0x80000454]:sd t6, 80(gp)<br>     |
|   7|[0x80002270]<br>0x000000007FFFFFFF|- rs1 : x6<br> - rs2 : x20<br> - rd : x23<br> - rs2_val == 16<br> - rs1_w1_val == 536870912<br> - rs1_w0_val == 33554432<br>                                        |[0x80000470]:KSLLW s7, t1, s4<br> [0x80000474]:sd s7, 96(gp)<br>     |
|   8|[0x80002280]<br>0xFFFFFFFFFFFFF700|- rs1 : x30<br> - rs2 : x26<br> - rd : x6<br> - rs2_val == 8<br> - rs1_w1_val == 16777216<br> - rs1_w0_val == -9<br>                                                |[0x80000490]:KSLLW t1, t5, s10<br> [0x80000494]:sd t1, 112(gp)<br>   |
|   9|[0x80002290]<br>0x0000000000000090|- rs1 : x25<br> - rs2 : x6<br> - rd : x5<br> - rs2_val == 4<br> - rs1_w1_val == -2097153<br>                                                                        |[0x800004b0]:KSLLW t0, s9, t1<br> [0x800004b4]:sd t0, 128(gp)<br>    |
|  10|[0x800022a0]<br>0xFFFFFFFFFFFDFFFC|- rs1 : x14<br> - rs2 : x19<br> - rd : x8<br> - rs2_val == 2<br> - rs1_w1_val == -8388609<br> - rs1_w0_val == -32769<br>                                            |[0x800004d4]:KSLLW fp, a4, s3<br> [0x800004d8]:sd fp, 144(gp)<br>    |
|  11|[0x800022b0]<br>0xFFFFFFFFFFFFFFFE|- rs1 : x2<br> - rs2 : x13<br> - rd : x12<br> - rs2_val == 1<br> - rs1_w1_val == 32768<br> - rs1_w0_val == -1<br>                                                   |[0x800004f4]:KSLLW a2, sp, a3<br> [0x800004f8]:sd a2, 160(gp)<br>    |
|  12|[0x800022c0]<br>0xFFFFFFFF80000000|- rs1 : x18<br> - rs2 : x22<br> - rd : x13<br> - rs1_w1_val == -1431655766<br> - rs1_w0_val == -4194305<br>                                                         |[0x8000051c]:KSLLW a3, s2, s6<br> [0x80000520]:sd a3, 176(gp)<br>    |
|  13|[0x800022d0]<br>0x0000000000000000|- rs1 : x0<br> - rs2 : x9<br> - rd : x11<br> - rs1_w0_val == 0<br>                                                                                                  |[0x8000053c]:KSLLW a1, zero, s1<br> [0x80000540]:sd a1, 192(gp)<br>  |
|  14|[0x800022e0]<br>0xFFFFFFFFFEFFFF00|- rs1 : x29<br> - rs2 : x5<br> - rd : x1<br> - rs1_w1_val == 2147483647<br>                                                                                         |[0x80000560]:KSLLW ra, t4, t0<br> [0x80000564]:sd ra, 208(gp)<br>    |
|  15|[0x800022f0]<br>0x0000000000200000|- rs1 : x27<br> - rs2 : x10<br> - rd : x20<br> - rs1_w1_val == -1073741825<br> - rs1_w0_val == 65536<br>                                                            |[0x80000584]:KSLLW s4, s11, a0<br> [0x80000588]:sd s4, 224(gp)<br>   |
|  16|[0x80002300]<br>0x000000007FFFFFFF|- rs1 : x7<br> - rs2 : x29<br> - rd : x25<br> - rs1_w1_val == -536870913<br> - rs1_w0_val == 1048576<br>                                                            |[0x800005b0]:KSLLW s9, t2, t4<br> [0x800005b4]:sd s9, 0(t1)<br>      |
|  17|[0x80002310]<br>0x0000000000000000|- rs1 : x11<br> - rs2 : x1<br> - rd : x0<br> - rs1_w1_val == -268435457<br> - rs1_w0_val == 134217728<br>                                                           |[0x800005d0]:KSLLW zero, a1, ra<br> [0x800005d4]:sd zero, 16(t1)<br> |
|  18|[0x80002320]<br>0x000000007FFFFFFF|- rs1 : x4<br> - rs2 : x21<br> - rd : x15<br> - rs1_w1_val == -134217729<br> - rs1_w0_val == 67108864<br>                                                           |[0x800005f0]:KSLLW a5, tp, s5<br> [0x800005f4]:sd a5, 32(t1)<br>     |
|  19|[0x80002330]<br>0xFFFFFFFFBFFFC000|- rs1 : x23<br> - rs2 : x11<br> - rd : x19<br> - rs1_w1_val == -67108865<br>                                                                                        |[0x80000614]:KSLLW s3, s7, a1<br> [0x80000618]:sd s3, 48(t1)<br>     |
|  20|[0x80002340]<br>0xFFFFFFFFFF7FFFFF|- rs1 : x5<br> - rs2 : x7<br> - rd : x30<br> - rs1_w1_val == -33554433<br> - rs1_w0_val == -8388609<br>                                                             |[0x80000638]:KSLLW t5, t0, t2<br> [0x8000063c]:sd t5, 64(t1)<br>     |
|  21|[0x80002350]<br>0x0000000000100000|- rs1 : x19<br> - rs2 : x8<br> - rd : x17<br> - rs1_w1_val == -16777217<br> - rs1_w0_val == 32768<br>                                                               |[0x8000065c]:KSLLW a7, s3, fp<br> [0x80000660]:sd a7, 80(t1)<br>     |
|  22|[0x80002360]<br>0x000000007FFFFFFF|- rs1 : x26<br> - rs2 : x24<br> - rd : x18<br> - rs1_w1_val == -1048577<br> - rs1_w0_val == 2147483647<br>                                                          |[0x8000067c]:KSLLW s2, s10, s8<br> [0x80000680]:sd s2, 96(t1)<br>    |
|  23|[0x80002370]<br>0xFFFFFFFFFFFFBFFF|- rs1 : x31<br> - rs2 : x30<br> - rd : x26<br> - rs1_w1_val == -524289<br> - rs1_w0_val == -16385<br>                                                               |[0x800006a0]:KSLLW s10, t6, t5<br> [0x800006a4]:sd s10, 112(t1)<br>  |
|  24|[0x80002380]<br>0xFFFFFFFFBFFFFE00|- rs1 : x16<br> - rs2 : x25<br> - rd : x3<br> - rs1_w1_val == -262145<br> - rs1_w0_val == -2097153<br>                                                              |[0x800006c0]:KSLLW gp, a6, s9<br> [0x800006c4]:sd gp, 128(t1)<br>    |
|  25|[0x80002390]<br>0x0000000000100000|- rs1 : x22<br> - rs2 : x18<br> - rd : x29<br> - rs1_w1_val == -131073<br> - rs1_w0_val == 2048<br>                                                                 |[0x800006e8]:KSLLW t4, s6, s2<br> [0x800006ec]:sd t4, 144(t1)<br>    |
|  26|[0x800023a0]<br>0xFFFFFFFFFF7FFFFF|- rs1 : x17<br> - rs2 : x0<br> - rd : x16<br> - rs1_w1_val == -65537<br>                                                                                            |[0x80000708]:KSLLW a6, a7, zero<br> [0x8000070c]:sd a6, 160(t1)<br>  |
|  27|[0x800023b0]<br>0x000000007FFFFFFF|- rs1 : x8<br> - rs2 : x27<br> - rd : x14<br> - rs1_w1_val == -32769<br>                                                                                            |[0x8000072c]:KSLLW a4, fp, s11<br> [0x80000730]:sd a4, 176(t1)<br>   |
|  28|[0x800023c0]<br>0x000000007FFFFFFF|- rs1 : x3<br> - rs2 : x14<br> - rd : x7<br> - rs1_w1_val == -16385<br> - rs1_w0_val == 536870912<br>                                                               |[0x80000748]:KSLLW t2, gp, a4<br> [0x8000074c]:sd t2, 192(t1)<br>    |
|  29|[0x800023d0]<br>0xFFFFFFFFFFFFBC00|- rs1 : x12<br> - rs2 : x3<br> - rd : x21<br> - rs1_w1_val == -8193<br> - rs1_w0_val == -17<br> - rs2_val == 10<br>                                                 |[0x80000764]:KSLLW s5, a2, gp<br> [0x80000768]:sd s5, 208(t1)<br>    |
|  30|[0x800023e0]<br>0xFFFFFFFFFBFFFFFF|- rs1 : x24<br> - rs2 : x23<br> - rd : x9<br> - rs1_w1_val == -4097<br> - rs1_w0_val == -67108865<br>                                                               |[0x80000784]:KSLLW s1, s8, s7<br> [0x80000788]:sd s1, 224(t1)<br>    |
|  31|[0x800023f0]<br>0xFFFFFFFFFFFEFFFE|- rs1 : x13<br> - rs2 : x17<br> - rd : x27<br> - rs1_w1_val == -2049<br>                                                                                            |[0x800007a4]:KSLLW s11, a3, a7<br> [0x800007a8]:sd s11, 240(t1)<br>  |
|  32|[0x80002400]<br>0x0000000001000000|- rs1 : x1<br> - rs2 : x16<br> - rd : x2<br> - rs1_w1_val == -1025<br>                                                                                              |[0x800007c4]:KSLLW sp, ra, a6<br> [0x800007c8]:sd sp, 256(t1)<br>    |
|  33|[0x80002410]<br>0xFFFFFFFF80000000|- rs1_w1_val == -513<br> - rs1_w0_val == -5<br>                                                                                                                     |[0x800007e8]:KSLLW t6, t5, t4<br> [0x800007ec]:sd t6, 0(ra)<br>      |
|  34|[0x80002420]<br>0x000000007FFFFFFF|- rs1_w1_val == -257<br>                                                                                                                                            |[0x80000804]:KSLLW t6, t5, t4<br> [0x80000808]:sd t6, 16(ra)<br>     |
|  35|[0x80002430]<br>0x0000000040000000|- rs1_w1_val == -129<br> - rs1_w0_val == 16777216<br>                                                                                                               |[0x80000820]:KSLLW t6, t5, t4<br> [0x80000824]:sd t6, 32(ra)<br>     |
|  36|[0x80002440]<br>0xFFFFFFFF80000000|- rs1_w1_val == -33<br> - rs1_w0_val == -33554433<br>                                                                                                               |[0x80000840]:KSLLW t6, t5, t4<br> [0x80000844]:sd t6, 48(ra)<br>     |
|  37|[0x80002450]<br>0x0000000000000020|- rs1_w1_val == -17<br> - rs1_w0_val == 32<br>                                                                                                                      |[0x8000085c]:KSLLW t6, t5, t4<br> [0x80000860]:sd t6, 64(ra)<br>     |
|  38|[0x80002460]<br>0xFFFFFFFFFFEFF000|- rs1_w1_val == -9<br> - rs1_w0_val == -257<br>                                                                                                                     |[0x80000878]:KSLLW t6, t5, t4<br> [0x8000087c]:sd t6, 80(ra)<br>     |
|  39|[0x80002470]<br>0x0000000040000000|- rs1_w1_val == -5<br>                                                                                                                                              |[0x80000894]:KSLLW t6, t5, t4<br> [0x80000898]:sd t6, 96(ra)<br>     |
|  40|[0x80002480]<br>0xFFFFFFFF80000000|- rs1_w1_val == -3<br> - rs1_w0_val == -134217729<br>                                                                                                               |[0x800008b0]:KSLLW t6, t5, t4<br> [0x800008b4]:sd t6, 112(ra)<br>    |
|  41|[0x80002490]<br>0x0000000000040000|- rs1_w1_val == -2<br> - rs1_w0_val == 4<br>                                                                                                                        |[0x800008cc]:KSLLW t6, t5, t4<br> [0x800008d0]:sd t6, 128(ra)<br>    |
|  42|[0x800024a0]<br>0x0000000000040000|- rs1_w1_val == -2147483648<br>                                                                                                                                     |[0x800008e8]:KSLLW t6, t5, t4<br> [0x800008ec]:sd t6, 144(ra)<br>    |
|  43|[0x800024b0]<br>0x0000000001000000|- rs1_w0_val == 8192<br>                                                                                                                                            |[0x8000090c]:KSLLW t6, t5, t4<br> [0x80000910]:sd t6, 160(ra)<br>    |
|  44|[0x800024c0]<br>0x0000000001000000|- rs1_w0_val == 4096<br>                                                                                                                                            |[0x80000928]:KSLLW t6, t5, t4<br> [0x8000092c]:sd t6, 176(ra)<br>    |
|  45|[0x800024d0]<br>0x0000000000001000|- rs1_w0_val == 1024<br>                                                                                                                                            |[0x80000948]:KSLLW t6, t5, t4<br> [0x8000094c]:sd t6, 192(ra)<br>    |
|  46|[0x800024e0]<br>0x0000000000080000|- rs1_w0_val == 512<br>                                                                                                                                             |[0x80000964]:KSLLW t6, t5, t4<br> [0x80000968]:sd t6, 208(ra)<br>    |
|  47|[0x800024f0]<br>0x0000000000008000|- rs1_w0_val == 256<br>                                                                                                                                             |[0x80000980]:KSLLW t6, t5, t4<br> [0x80000984]:sd t6, 224(ra)<br>    |
|  48|[0x80002500]<br>0x0000000000020000|- rs1_w1_val == 32<br> - rs1_w0_val == 128<br>                                                                                                                      |[0x8000099c]:KSLLW t6, t5, t4<br> [0x800009a0]:sd t6, 240(ra)<br>    |
|  49|[0x80002510]<br>0x0000000000000080|- rs1_w0_val == 64<br>                                                                                                                                              |[0x800009bc]:KSLLW t6, t5, t4<br> [0x800009c0]:sd t6, 256(ra)<br>    |
|  50|[0x80002520]<br>0x000000007FFFFFFF|- rs1_w0_val == 16<br>                                                                                                                                              |[0x800009d8]:KSLLW t6, t5, t4<br> [0x800009dc]:sd t6, 272(ra)<br>    |
|  51|[0x80002530]<br>0x0000000000000040|- rs1_w1_val == 1048576<br> - rs1_w0_val == 8<br>                                                                                                                   |[0x800009f4]:KSLLW t6, t5, t4<br> [0x800009f8]:sd t6, 288(ra)<br>    |
|  52|[0x80002540]<br>0x000000007FFFFFFF|- rs1_w1_val == 2097152<br> - rs1_w0_val == 2<br>                                                                                                                   |[0x80000a10]:KSLLW t6, t5, t4<br> [0x80000a14]:sd t6, 304(ra)<br>    |
|  53|[0x80002550]<br>0x0000000020000000|- rs1_w0_val == 1<br>                                                                                                                                               |[0x80000a2c]:KSLLW t6, t5, t4<br> [0x80000a30]:sd t6, 320(ra)<br>    |
|  54|[0x80002560]<br>0x0000000000000000|- rs1_w1_val == 1431655765<br>                                                                                                                                      |[0x80000a48]:KSLLW t6, t5, t4<br> [0x80000a4c]:sd t6, 336(ra)<br>    |
|  55|[0x80002570]<br>0x0000000000000000|- rs1_w1_val == 1073741824<br>                                                                                                                                      |[0x80000a60]:KSLLW t6, t5, t4<br> [0x80000a64]:sd t6, 352(ra)<br>    |
|  56|[0x80002580]<br>0x0000000004000000|- rs1_w1_val == 268435456<br>                                                                                                                                       |[0x80000a7c]:KSLLW t6, t5, t4<br> [0x80000a80]:sd t6, 368(ra)<br>    |
|  57|[0x80002590]<br>0xFFFFFFFFFFFFE000|- rs1_w1_val == 134217728<br> - rs1_w0_val == -2<br>                                                                                                                |[0x80000a9c]:KSLLW t6, t5, t4<br> [0x80000aa0]:sd t6, 384(ra)<br>    |
|  58|[0x800025a0]<br>0xFFFFFFFFFFFFFC00|- rs1_w1_val == 67108864<br>                                                                                                                                        |[0x80000abc]:KSLLW t6, t5, t4<br> [0x80000ac0]:sd t6, 400(ra)<br>    |
|  59|[0x800025b0]<br>0x000000007FFFFFFF|- rs1_w1_val == 33554432<br>                                                                                                                                        |[0x80000adc]:KSLLW t6, t5, t4<br> [0x80000ae0]:sd t6, 416(ra)<br>    |
|  60|[0x800025c0]<br>0x000000007FFFFFFF|- rs1_w1_val == 8388608<br> - rs1_w0_val == 4194304<br>                                                                                                             |[0x80000afc]:KSLLW t6, t5, t4<br> [0x80000b00]:sd t6, 432(ra)<br>    |
|  61|[0x800025d0]<br>0x0000000020000000|- rs1_w1_val == 4194304<br>                                                                                                                                         |[0x80000b1c]:KSLLW t6, t5, t4<br> [0x80000b20]:sd t6, 448(ra)<br>    |
|  62|[0x800025e0]<br>0x000000007FFFFFFF|- rs1_w1_val == 262144<br>                                                                                                                                          |[0x80000b3c]:KSLLW t6, t5, t4<br> [0x80000b40]:sd t6, 464(ra)<br>    |
|  63|[0x800025f0]<br>0x0000000000400000|- rs1_w1_val == 65536<br>                                                                                                                                           |[0x80000b58]:KSLLW t6, t5, t4<br> [0x80000b5c]:sd t6, 480(ra)<br>    |
|  64|[0x80002600]<br>0xFFFFFFFF80000000|- rs1_w1_val == 16384<br>                                                                                                                                           |[0x80000b78]:KSLLW t6, t5, t4<br> [0x80000b7c]:sd t6, 496(ra)<br>    |
|  65|[0x80002610]<br>0xFFFFFFFFFFFFFE80|- rs1_w1_val == 8192<br>                                                                                                                                            |[0x80000b98]:KSLLW t6, t5, t4<br> [0x80000b9c]:sd t6, 512(ra)<br>    |
|  66|[0x80002620]<br>0x000000007FFFFFFF|- rs1_w1_val == 4096<br>                                                                                                                                            |[0x80000bb4]:KSLLW t6, t5, t4<br> [0x80000bb8]:sd t6, 528(ra)<br>    |
|  67|[0x80002630]<br>0xFFFFFFFFBFFFE000|- rs1_w1_val == 1024<br> - rs1_w0_val == -131073<br>                                                                                                                |[0x80000bd4]:KSLLW t6, t5, t4<br> [0x80000bd8]:sd t6, 544(ra)<br>    |
|  68|[0x80002640]<br>0xFFFFFFFF80000000|- rs1_w1_val == 512<br> - rs1_w0_val == -2147483648<br>                                                                                                             |[0x80000bec]:KSLLW t6, t5, t4<br> [0x80000bf0]:sd t6, 560(ra)<br>    |
|  69|[0x80002650]<br>0xFFFFFFFF80000000|- rs1_w1_val == 256<br>                                                                                                                                             |[0x80000c0c]:KSLLW t6, t5, t4<br> [0x80000c10]:sd t6, 576(ra)<br>    |
|  70|[0x80002660]<br>0x000000007FFFFFFF|- rs1_w1_val == 128<br> - rs1_w0_val == 2097152<br>                                                                                                                 |[0x80000c28]:KSLLW t6, t5, t4<br> [0x80000c2c]:sd t6, 592(ra)<br>    |
|  71|[0x80002670]<br>0x000000007FFFFFFF|- rs1_w1_val == 64<br>                                                                                                                                              |[0x80000c44]:KSLLW t6, t5, t4<br> [0x80000c48]:sd t6, 608(ra)<br>    |
|  72|[0x80002680]<br>0x000000007FFFFFFF|- rs1_w1_val == 16<br> - rs1_w0_val == 8388608<br>                                                                                                                  |[0x80000c60]:KSLLW t6, t5, t4<br> [0x80000c64]:sd t6, 624(ra)<br>    |
|  73|[0x80002690]<br>0xFFFFFFFF80000000|- rs1_w1_val == 8<br>                                                                                                                                               |[0x80000c7c]:KSLLW t6, t5, t4<br> [0x80000c80]:sd t6, 640(ra)<br>    |
|  74|[0x800026a0]<br>0xFFFFFFFFFFBF0000|- rs1_w1_val == 2<br> - rs1_w0_val == -65<br>                                                                                                                       |[0x80000c98]:KSLLW t6, t5, t4<br> [0x80000c9c]:sd t6, 656(ra)<br>    |
|  75|[0x800026b0]<br>0xFFFFFFFFDFF80000|- rs1_w1_val == 1<br>                                                                                                                                               |[0x80000cb4]:KSLLW t6, t5, t4<br> [0x80000cb8]:sd t6, 672(ra)<br>    |
|  76|[0x800026c0]<br>0x0000000020000000|- rs1_w0_val == 131072<br>                                                                                                                                          |[0x80000cc8]:KSLLW t6, t5, t4<br> [0x80000ccc]:sd t6, 688(ra)<br>    |
|  77|[0x800026d0]<br>0xFFFFFFFFFFBF8000|- rs1_w1_val == -1<br> - rs1_w0_val == -129<br>                                                                                                                     |[0x80000cdc]:KSLLW t6, t5, t4<br> [0x80000ce0]:sd t6, 704(ra)<br>    |
|  78|[0x800026e0]<br>0xFFFFFFFF80000000|- rs1_w0_val == -1431655766<br>                                                                                                                                     |[0x80000cfc]:KSLLW t6, t5, t4<br> [0x80000d00]:sd t6, 720(ra)<br>    |
|  79|[0x800026f0]<br>0x000000007FFFFFFF|- rs1_w0_val == 1431655765<br>                                                                                                                                      |[0x80000d1c]:KSLLW t6, t5, t4<br> [0x80000d20]:sd t6, 736(ra)<br>    |
|  80|[0x80002700]<br>0xFFFFFFFFFFF7FFC0|- rs1_w0_val == -8193<br>                                                                                                                                           |[0x80000d40]:KSLLW t6, t5, t4<br> [0x80000d44]:sd t6, 752(ra)<br>    |
|  81|[0x80002710]<br>0xFFFFFFFF80000000|- rs1_w0_val == -4097<br>                                                                                                                                           |[0x80000d68]:KSLLW t6, t5, t4<br> [0x80000d6c]:sd t6, 768(ra)<br>    |
|  82|[0x80002720]<br>0xFFFFFFFF80000000|- rs1_w0_val == -2049<br>                                                                                                                                           |[0x80000d8c]:KSLLW t6, t5, t4<br> [0x80000d90]:sd t6, 784(ra)<br>    |
|  83|[0x80002730]<br>0xFFFFFFFFFFFFFDFF|- rs1_w0_val == -513<br>                                                                                                                                            |[0x80000dac]:KSLLW t6, t5, t4<br> [0x80000db0]:sd t6, 800(ra)<br>    |
|  84|[0x80002740]<br>0xFFFFFFFFFFFFFEF8|- rs1_w0_val == -33<br>                                                                                                                                             |[0x80000dc8]:KSLLW t6, t5, t4<br> [0x80000dcc]:sd t6, 816(ra)<br>    |
|  85|[0x80002750]<br>0xFFFFFFFFFFFE8000|- rs1_w0_val == -3<br>                                                                                                                                              |[0x80000de4]:KSLLW t6, t5, t4<br> [0x80000de8]:sd t6, 832(ra)<br>    |
|  86|[0x80002760]<br>0xFFFFFFFF80000000|- rs1_w0_val == -536870913<br>                                                                                                                                      |[0x80000e04]:KSLLW t6, t5, t4<br> [0x80000e08]:sd t6, 848(ra)<br>    |
|  87|[0x80002770]<br>0xFFFFFFFF80000000|- rs1_w0_val == -268435457<br>                                                                                                                                      |[0x80000e24]:KSLLW t6, t5, t4<br> [0x80000e28]:sd t6, 864(ra)<br>    |
|  88|[0x80002780]<br>0x000000007FFFFFFF|- rs1_w0_val == 268435456<br>                                                                                                                                       |[0x80000e44]:KSLLW t6, t5, t4<br> [0x80000e48]:sd t6, 880(ra)<br>    |
|  89|[0x80002790]<br>0xFFFFFFFFFF7FFFF0|- rs1_w0_val == -524289<br>                                                                                                                                         |[0x80000e6c]:KSLLW t6, t5, t4<br> [0x80000e70]:sd t6, 896(ra)<br>    |
|  90|[0x800027a0]<br>0xFFFFFFFF80000000|- rs1_w0_val == -16777217<br>                                                                                                                                       |[0x80000e8c]:KSLLW t6, t5, t4<br> [0x80000e90]:sd t6, 912(ra)<br>    |
|  91|[0x800027b0]<br>0xFFFFFFFFFFBFFFF0|- rs1_w0_val == -262145<br>                                                                                                                                         |[0x80000eac]:KSLLW t6, t5, t4<br> [0x80000eb0]:sd t6, 928(ra)<br>    |
|  92|[0x800027c0]<br>0xFFFFFFFFDFFFFE00|- rs1_w0_val == -1048577<br>                                                                                                                                        |[0x80000ecc]:KSLLW t6, t5, t4<br> [0x80000ed0]:sd t6, 944(ra)<br>    |
|  93|[0x800027d0]<br>0x000000007FFFFFFF|- rs1_w0_val == 524288<br>                                                                                                                                          |[0x80000ee8]:KSLLW t6, t5, t4<br> [0x80000eec]:sd t6, 960(ra)<br>    |
|  94|[0x800027e0]<br>0x0000000000040000|- rs1_w0_val == 262144<br>                                                                                                                                          |[0x80000f04]:KSLLW t6, t5, t4<br> [0x80000f08]:sd t6, 976(ra)<br>    |
|  95|[0x800027f0]<br>0xFFFFFFFF80000000|- rs1_w1_val == 524288<br>                                                                                                                                          |[0x80000f2c]:KSLLW t6, t5, t4<br> [0x80000f30]:sd t6, 992(ra)<br>    |
|  96|[0x80002800]<br>0x000000007FFFFFFF|- rs1_w1_val == 4<br> - rs1_w0_val == 1073741824<br>                                                                                                                |[0x80000f44]:KSLLW t6, t5, t4<br> [0x80000f48]:sd t6, 1008(ra)<br>   |
